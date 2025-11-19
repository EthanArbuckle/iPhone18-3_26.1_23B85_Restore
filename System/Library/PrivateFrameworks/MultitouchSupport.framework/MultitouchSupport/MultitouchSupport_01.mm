uint64_t alg_InitZephyrPlatformSpecifics(uint64_t result)
{
  v1 = *(result + 24);
  if (v1 <= 86)
  {
    if (v1 > 24)
    {
      if ((v1 - 80) < 5)
      {
        *(result + 32) = "Recognized";
        *(result + 457) = 1;
        *(result + 40) = 0x1D4C00001388;
        *(result + 48) = 36;
        *(result + 52) = 7;
        *(result + 56) = 56;
        v6 = 11;
LABEL_76:
        *(result + 60) = v6;
        return result;
      }

      if (v1 == 25)
      {
        *(result + 32) = "Recognized";
        *(result + 40) = 0x4CCA00003998;
        *(result + 48) = 41298;
        v6 = 10000;
        *(result + 52) = 10000;
        v24 = 41196;
        goto LABEL_75;
      }

      if (v1 == 26)
      {
        *(result + 32) = "Recognized";
        *(result + 40) = 0x3E6600002ECCLL;
        *(result + 48) = 40320;
        v6 = 10000;
        *(result + 52) = 10000;
        v24 = 40450;
        goto LABEL_75;
      }

LABEL_45:
      *(result + 457) = 1;
      *(result + 40) = 0x1D4C00001388;
      *(result + 48) = 36;
      *(result + 52) = 7;
      *(result + 56) = 56;
      *(result + 60) = 11;
      *(result + 32) = "Recognized";
      return result;
    }

    if (v1 <= 19)
    {
      switch(v1)
      {
        case 17:
          *(result + 32) = "Recognized";
          *(result + 40) = 0x399900004CCCLL;
          break;
        case 18:
          *(result + 32) = "Recognized";
          v21 = *(result + 5) - 1 + (((*(result + 5) - 1) & 0x8000u) >> 15);
          v22 = *(result + 2) - 1;
          *(result + 40) = 0x69780000A7F8;
          *(result + 72) = ((v22 + ((v22 & 0x8000) >> 15)) >> 1);
          *(result + 76) = (v21 >> 1);
          break;
        case 19:
          *(result + 32) = "Recognized";
          v14 = 0x4CCC00003999;
          goto LABEL_58;
        default:
          goto LABEL_45;
      }

      *(result + 48) = 139;
      *(result + 52) = 28;
      *(result + 56) = 104;
      v6 = 21;
      goto LABEL_76;
    }

    if (v1 == 20)
    {
      *(result + 32) = "Recognized";
      *(result + 40) = 0x3E6600002ECCLL;
      *(result + 48) = 126;
      *(result + 52) = 25;
      *(result + 56) = 91;
      v6 = 18;
      goto LABEL_76;
    }

    if (v1 != 21)
    {
      if (v1 == 23)
      {
        *(result + 32) = "Recognized";
        *(result + 40) = 0x667300004CCCLL;
        *(result + 48) = 4127;
        v6 = 1000;
        *(result + 52) = 1000;
        v24 = 4121;
        goto LABEL_75;
      }

      goto LABEL_45;
    }

    *(result + 32) = "Recognized";
    v14 = 0x4CC900003999;
LABEL_58:
    *(result + 40) = v14;
    *(result + 48) = 104;
    *(result + 52) = 21;
    *(result + 56) = 139;
    v6 = 28;
    goto LABEL_76;
  }

  v2 = (v1 - 87);
  if (v2 > 0x2A)
  {
LABEL_44:
    if (v1 == 160)
    {
      goto LABEL_4;
    }

    goto LABEL_45;
  }

  if (((1 << (v1 - 87)) & 0x6000001FE00) != 0)
  {
LABEL_4:
    *(result + 32) = "Recognized";
    v3 = (v1 - 96) < 8 || v1 == 160;
    *(result + 457) = v3;
    *(result + 458) = 1;
    if (v1 <= 101)
    {
      v4 = 7600;
      if (v1 > 99)
      {
        if (v1 == 100)
        {
          *(result + 40) = 0x186A00002904;
          v18 = ((*(result + 5) - 1 + (((*(result + 5) - 1) & 0x8000u) >> 15)) >> 1);
          *(result + 72) = 0;
          *(result + 76) = v18;
          v25 = 10;
          v26 = 57;
          goto LABEL_73;
        }
      }

      else if ((v1 - 98) >= 2)
      {
        if (v1 == 97)
        {
          v5 = 0x12DE00002742;
LABEL_50:
          *(result + 40) = v5;
          v20 = ((*(result + 5) - 1 + (((*(result + 5) - 1) & 0x8000u) >> 15)) >> 1);
          *(result + 72) = 0;
          *(result + 76) = v20;
          goto LABEL_51;
        }

LABEL_63:
        v4 = 6300;
      }

      *(result + 40) = 10500;
      *(result + 44) = v4;
      v23 = ((*(result + 5) - 1 + (((*(result + 5) - 1) & 0x8000u) >> 15)) >> 1);
      *(result + 72) = 0;
      *(result + 76) = v23;
      if (v1 > 101)
      {
LABEL_51:
        *(result + 48) = 242;
        *(result + 52) = 47;
        if (v1 > 128)
        {
          if (v1 == 129)
          {
            v6 = 100;
            v24 = 513;
            goto LABEL_75;
          }

          goto LABEL_70;
        }

        if ((v1 - 99) >= 2)
        {
LABEL_70:
          v6 = 41;
          v24 = 212;
          goto LABEL_75;
        }

LABEL_74:
        v6 = 100;
        v24 = 501;
        goto LABEL_75;
      }

      if (v1 != 99)
      {
        if (v1 != 101)
        {
          goto LABEL_51;
        }

LABEL_69:
        *(result + 48) = 60;
        *(result + 52) = 10;
        goto LABEL_70;
      }

      v25 = 8;
      v26 = 47;
LABEL_73:
      *(result + 48) = v26;
      *(result + 52) = v25;
      goto LABEL_74;
    }

    if (v1 <= 127)
    {
      if (v1 != 102)
      {
        if (v1 == 103)
        {
          *(result + 40) = 0x1DB000002904;
          v16 = ((*(result + 5) - 1 + (((*(result + 5) - 1) & 0x8000u) >> 15)) >> 1);
          *(result + 72) = 0;
          *(result + 76) = v16;
          goto LABEL_69;
        }

        goto LABEL_63;
      }

      *(result + 40) = 0x1A7F00002BA2;
      v19 = ((*(result + 5) - 1 + (((*(result + 5) - 1) & 0x8000u) >> 15)) >> 1);
      *(result + 72) = 0;
      *(result + 76) = v19;
      *(result + 48) = 539;
      *(result + 52) = 100;
      v6 = 100;
      v24 = 493;
    }

    else
    {
      if (v1 == 128)
      {
        v5 = 0x2AF8000032C8;
        goto LABEL_50;
      }

      if (v1 == 129)
      {
        v5 = 0x2B2000003CF0;
        goto LABEL_50;
      }

      if (v1 != 160)
      {
        goto LABEL_63;
      }

      *(result + 40) = 0xE3800000D84;
      v15 = ((*(result + 5) - 1 + (((*(result + 5) - 1) & 0x8000u) >> 15)) >> 1);
      *(result + 72) = 0;
      *(result + 76) = v15;
      *(result + 48) = 44;
      *(result + 52) = 10;
      v6 = 10;
      v24 = 49;
    }

LABEL_75:
    *(result + 56) = v24;
    goto LABEL_76;
  }

  if (((1 << (v1 - 87)) & 0x3F) == 0)
  {
    if (v2 == 25)
    {
      *(result + 32) = "Recognized";
      *(result + 457) = 257;
      *(result + 40) = 0x236000001420;
      v17 = *(result + 5) - 1;
      *(result + 72) = 0;
      *(result + 76) = ((v17 + ((v17 & 0x8000) >> 15)) >> 1);
      *(result + 48) = 242;
      *(result + 52) = 47;
      *(result + 56) = 212;
      v6 = 41;
      goto LABEL_76;
    }

    goto LABEL_44;
  }

  *(result + 32) = "Recognized";
  *(result + 457) = 1;
  v7 = v1 - 89;
  if ((v1 - 89) > 3)
  {
    v13 = 150;
    v12 = 749;
    LOWORD(v11) = 92;
    v10 = 409;
    v9 = 8900;
    v8 = 5000;
  }

  else
  {
    v8 = dword_25AD794E0[v7];
    v9 = dword_25AD794F0[v7];
    v10 = dword_25AD79500[v7];
    v11 = 0xA0064000A0064uLL >> (16 * v7);
    v12 = dword_25AD79510[v7];
    v13 = 25;
  }

  *(result + 40) = v8;
  *(result + 44) = v9;
  *(result + 48) = v10;
  *(result + 52) = v11;
  *(result + 56) = v12;
  *(result + 60) = v13;
  return result;
}

uint64_t alg_InitGridPitchAndEdgeOptions(uint64_t a1)
{
  *(a1 + 368) = 413;
  v1 = *(a1 + 24);
  if ((v1 - 19) > 7)
  {
    v2 = 9;
  }

  else
  {
    v2 = word_25AD79520[v1 - 19];
  }

  *(a1 + 370) = v2;
  *(a1 + 455) = *(a1 + 458);
  *(a1 + 454) = v1 == 112;
  *(a1 + 456) = ((v1 - 87) < 0x1A) & (0x200003Fu >> (v1 - 87));
  *(a1 + 453) = (v1 - 87) < 6;
  *(a1 + 452) = ((v1 - 27) < 0xFFFFFFFC) & (*(a1 + 457) ^ 1);
  return alg_InitRowColXYConvert(a1);
}

uint64_t alg_InitPathTrackingParams(uint64_t result, int a2, int a3)
{
  v3 = a2 & 0xFFFFFFFE;
  if ((a2 & 0xFFFFFFFE) == 0x80)
  {
    v4 = 64;
  }

  else
  {
    v4 = 23;
  }

  if (v3 == 128)
  {
    v5 = 38;
  }

  else
  {
    v5 = 12;
  }

  *result = v4;
  *(result + 2) = v5;
  *(result + 4) = 0x1E007900790099;
  *(result + 12) = 40;
  if (a2 == 112)
  {
    v6 = 9;
  }

  else
  {
    v6 = 12;
  }

  *(result + 16) = v6;
  if (a2 == 112)
  {
    v7 = 399;
  }

  else
  {
    v7 = 1536;
  }

  *(result + 20) = v7;
  *(result + 24) = 179;
  *(result + 28) = 1;
  if (a3)
  {
    *(result + 16) = 12;
    *(result + 20) = 563;
  }

  if (a2 == 128)
  {
    *(result + 32) = 0x258000F00000082;
    *(result + 40) = 430;
    *(result + 43) = 0;
    *(result + 6) = 217;
    return result;
  }

  *(result + 32) = 0x258000F00000066;
  *(result + 40) = 430;
  v8 = a2 - 23;
  if ((a2 - 23) > 3)
  {
    *(result + 43) = 0;
    if (a2 == 112)
    {
      *(result + 4) = 12058841;
      *(result + 40) = 440;
      *(result + 36) = 40632420;
      return result;
    }
  }

  else
  {
    *(result + 43) = 1;
  }

  if ((a2 - 128) <= 0x20 && ((1 << (a2 + 0x80)) & 0x100000003) != 0)
  {
    if (a2 == 129)
    {
      v9 = 140;
    }

    else
    {
      v9 = 217;
    }

    if (a2 == 160)
    {
      v9 = 102;
    }

    *(result + 6) = v9;
LABEL_29:
    if (v8 >= 4)
    {
      return result;
    }

    goto LABEL_30;
  }

  if (v3 == 20)
  {
    *(result + 38) = 28181065;
    goto LABEL_29;
  }

  if (v8 > 3)
  {
    return result;
  }

LABEL_30:
  *(result + 4) = 184;
  *(result + 38) = 26214900;
  return result;
}

uint64_t alg_InitSurfaceGrid(uint64_t a1, int a2, int *a3, int *a4, int *a5, __int16 a6)
{
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 24) = a2;
  if (a3)
  {
    v7 = *a3;
    *(a1 + 3) = *(a3 + 3);
    *a1 = v7;
  }

  if (a4)
  {
    v8 = *a4;
    *(a1 + 10) = *(a4 + 3);
    *(a1 + 7) = v8;
  }

  if (a5)
  {
    v9 = *a5;
    *(a1 + 17) = *(a5 + 3);
    *(a1 + 14) = v9;
  }

  *(a1 + 386) = a6;
  *(a1 + 392) = a6;
  *(a1 + 398) = a6;
  *(a1 + 404) = a6;
  *(a1 + 380) = a6;
  alg_InitZephyrPlatformSpecifics(a1);
  alg_InitGridPitchAndEdgeOptions(a1);
  v10 = *(a1 + 24);
  v11 = *(a1 + 458);

  return alg_InitPathTrackingParams(a1 + 408, v10, v11);
}

uint64_t MTDeviceGetReport(uint64_t a1, int a2, void *a3, unsigned int a4, _DWORD *a5)
{
  if (!a1)
  {
    return 3758097090;
  }

  if (*(a1 + 212))
  {
    return mt_DeviceGetReportViaDriver(a1, a2, a3, a4, a5);
  }

  return mt_DeviceGetReportViaDriverLegacyUSB(a1, a2, a3, a4, a5);
}

uint64_t MTDeviceGetCriticalErrors(uint64_t a1, _DWORD *a2)
{
  Report = 3758097090;
  if (a1)
  {
    if (a2)
    {
      v6 = 0;
      Report = MTDeviceGetReport(a1, 127, &v6 + 4, 4u, &v6);
      if (!Report && v6 == 4)
      {
        *a2 = MTSwapInt32DeviceToHost(a1, HIDWORD(v6));
      }
    }
  }

  return Report;
}

uint64_t MTDeviceGetOpenRows(uint64_t a1, void *a2)
{
  v2 = 3758097095;
  if (!a2)
  {
    return 3758097090;
  }

  if (MTDeviceHasExpectedVersion(a1))
  {
    v7 = -1431655766;
    if (!mt_DeviceGetInt32Property(a1, @"OpenRowsReportID", &v7))
    {
      v6 = 0;
      *a2 = 0;
      return MTDeviceGetReport(a1, v7, a2, 8u, &v6);
    }
  }

  return v2;
}

uint64_t MTActuatorGetReport(uint64_t a1, char a2, void *a3, int a4, _DWORD *a5)
{
  if (a1)
  {
    return mt_ActuatorGetReportViaDriver(a1, a2, a3, a4, a5);
  }

  else
  {
    return 3758097090;
  }
}

uint64_t MTActuatorSetReport(uint64_t a1, char a2, uint64_t a3, signed int a4)
{
  result = 3758097090;
  if (a1)
  {
    if (a4 <= 512)
    {
      return mt_ActuatorSetReportViaDriver(a1, a2, a3, a4);
    }

    else
    {
      return 3758097095;
    }
  }

  return result;
}

uint64_t MTActuatorSetWaveform(uint64_t a1, char a2, uint64_t a3, signed int a4)
{
  v8 = 3758097090;
  kdebug_trace();
  if (!a1)
  {
    return v8;
  }

  if (a4 > 512)
  {
    return 3758097095;
  }

  return mt_ActuatorSetWaveformViaDriver(a1, a2, a3, a4);
}

uint64_t MTDeviceGetHostOperationState(uint64_t a1)
{
  v4 = -86;
  Report = MTDeviceGetReport(a1, 113, &v4, 1u, 0);
  v2 = v4;
  if (Report)
  {
    return 0;
  }

  return v2;
}

uint64_t MTDeviceSendExternalMessage(uint64_t a1, const void *a2, __int16 a3, size_t a4, size_t a5)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v9 = a4 + 6;
  if (!a5)
  {
    MEMORY[0x28223BE20]();
    v12 = (v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    if (!v9)
    {
      v10 = 0;
      goto LABEL_9;
    }

    v10 = v9;
LABEL_7:
    memset(v12, 170, v10);
LABEL_9:
    *v12 = 595;
    v12[1] = a4;
    v12[2] = a3;
    memcpy(v12 + 3, a2, a4);
    bzero(v12 + v9, v10 - v9);
    result = MTDeviceSetReport(a1, 98, v12, v10);
    goto LABEL_10;
  }

  v10 = a5;
  if (v9 <= a5)
  {
    MEMORY[0x28223BE20]();
    v12 = (v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    goto LABEL_7;
  }

  result = 3758097121;
LABEL_10:
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

void mt_StopDequeueOfMultitouchDataFromDevice(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 2088);
    if (v2)
    {
      memset(&v8, 0, sizeof(v8));
      CFMachPortGetContext(v2, &v8);
      CFMachPortInvalidate(*(a1 + 2088));
      info = v8.info;
      if (v8.info)
      {
        Port = CFMachPortGetPort(*(a1 + 2088));
        v5 = info[3];
        v6 = MEMORY[0x277D85F48];
        if (v5)
        {
          MEMORY[0x25F855340](*(a1 + 20), 0, *MEMORY[0x277D85F48]);
        }

        if (Port)
        {
          mach_port_mod_refs(*v6, Port, 1u, -1);
        }

        v7 = *(a1 + 136);
        if (v7)
        {
          free(v7);
          *(a1 + 136) = 0;
        }

        CFRelease(*(a1 + 2088));
        *(a1 + 2088) = 0;
        free(v8.info);
      }
    }
  }
}

uint64_t mt_DeviceGetReportViaDriverLegacyUSB(uint64_t a1, int a2, void *a3, int a4, _DWORD *a5)
{
  v18 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    *&v16[15] = -1431655766;
    outputStructCnt = 520;
    outputStruct = a2;
    *v16 = 0u;
    memset(v15, 0, sizeof(v15));
    v17 = 0;
    v9 = IOConnectCallStructMethod(*(a1 + 20), 9u, &outputStruct, 0x208uLL, &outputStruct, &outputStructCnt);
    v10 = v9;
    if (v9)
    {
      printf("Error 0x%08X getting report 0x%02X with length %d\n", v9, a2, a4);
    }

    else
    {
      if (a5)
      {
        *a5 = v17;
      }

      memmove(a3, v15, a4);
    }
  }

  else
  {
    v10 = 3758097101;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t mt_DeviceSetReportViaDriverLegacyUSB(uint64_t a1, int a2, uint64_t a3, unsigned int a4)
{
  v46 = *MEMORY[0x277D85DE8];
  v4 = 3758097101;
  if (a1)
  {
    *&v44[15] = -1431655766;
    outputStructCnt = 520;
    outputStruct = a2;
    if (a4 > 0x200)
    {
      puts("Too many bytes for the report to be set");
      v4 = 3758097128;
    }

    else
    {
      v45 = a4;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      *v44 = 0u;
      v13 = 0u;
      v14 = 0u;
      v15 = 0u;
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      __memmove_chk();
      v8 = IOConnectCallStructMethod(*(a1 + 20), 0xAu, &outputStruct, 0x208uLL, &outputStruct, &outputStructCnt);
      v4 = v8;
      if (v8)
      {
        printf("Error 0x%08X setting report 0x%02X with length %d\n", v8, a2, a4);
      }
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t mt_DeviceGetReportViaDriver(uint64_t a1, int a2, void *a3, unsigned int a4, _DWORD *a5)
{
  *&__len[1] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    *&v22[15] = -1431655766;
    outputStructCnt = 520;
    outputStruct = a2;
    *v22 = 0u;
    memset(v21, 0, sizeof(v21));
    __len[0] = 0;
    v9 = *(a1 + 20);
    connect = v9;
    if (v9)
    {
      LODWORD(v10) = IOConnectCallStructMethod(v9, 1u, &outputStruct, 0x208uLL, &outputStruct, &outputStructCnt);
    }

    else
    {
      v11 = *(a1 + 16);
      waitTime = 5;
      if (IOServiceWaitQuiet(v11, &waitTime) == -536870186)
      {
        printf("MT Error: service still busy after %d seconds\n", waitTime.tv_sec);
      }

      v12 = IOServiceOpen(v11, *MEMORY[0x277D85F48], 0, &connect);
      LODWORD(v10) = -536870212;
      if (!v12)
      {
        LODWORD(v10) = IOConnectCallStructMethod(connect, 1u, &outputStruct, 0x208uLL, &outputStruct, &outputStructCnt);
      }

      IOServiceClose(connect);
    }

    v13 = __len[0];
    v14 = -536870181;
    if (__len[0] <= a4)
    {
      v14 = 0;
    }

    if (v10)
    {
      v10 = v10;
    }

    else
    {
      v10 = v14;
    }

    if (v10)
    {
      if ((gMT_BE_LESS_VERBOSE & 1) == 0)
      {
        printf("Error 0x%08X getting report 0x%02X with length %d\n", v10, a2, a4);
      }
    }

    else
    {
      if (a5)
      {
        *a5 = __len[0];
      }

      memmove(a3, v21, v13);
    }
  }

  else
  {
    v10 = 3758097101;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t mt_ActuatorGetReportViaDriver(uint64_t a1, char a2, void *a3, int a4, _DWORD *a5)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = 3758097084;
  if (!a1)
  {
    v5 = 3758097090;
    goto LABEL_14;
  }

  *&v18[15] = -1431655766;
  outputStructCnt = 520;
  outputStruct = a2;
  *v18 = 0u;
  memset(v17, 0, sizeof(v17));
  v19 = 0;
  v9 = *(a1 + 20);
  connect = v9;
  if (v9)
  {
    v5 = IOConnectCallStructMethod(v9, 1u, &outputStruct, 0x208uLL, &outputStruct, &outputStructCnt);
    if (v5)
    {
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  v10 = *(a1 + 16);
  waitTime = 5;
  if (IOServiceWaitQuiet(v10, &waitTime) == -536870186)
  {
    printf("MTActuator Error: service still busy after %d seconds\n", waitTime.tv_sec);
  }

  if (!IOServiceOpen(v10, *MEMORY[0x277D85F48], 0, &connect))
  {
    v5 = IOConnectCallStructMethod(connect, 1u, &outputStruct, 0x208uLL, &outputStruct, &outputStructCnt);
  }

  IOServiceClose(connect);
  if (!v5)
  {
LABEL_11:
    if (a5)
    {
      *a5 = v19;
    }

    memmove(a3, v17, a4);
  }

LABEL_14:
  v11 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t mt_ActuatorSetReportViaDriver(uint64_t a1, char a2, uint64_t a3, unsigned int a4)
{
  v47 = *MEMORY[0x277D85DE8];
  v4 = 3758097084;
  if (a1)
  {
    *&v45[15] = -1431655766;
    outputStructCnt = 520;
    outputStruct = a2;
    if (a4 > 0x200)
    {
      v4 = 3758097128;
    }

    else
    {
      v46 = a4;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      *v45 = 0u;
      v14 = 0u;
      v15 = 0u;
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      __memmove_chk();
      v6 = *(a1 + 20);
      connect = v6;
      if (v6)
      {
        v4 = IOConnectCallStructMethod(v6, 2u, &outputStruct, 0x208uLL, &outputStruct, &outputStructCnt);
      }

      else
      {
        v7 = *(a1 + 16);
        waitTime = 5;
        if (IOServiceWaitQuiet(v7, &waitTime) == -536870186)
        {
          printf("MTActuator Error: service still busy after %d seconds\n", waitTime.tv_sec);
        }

        if (!IOServiceOpen(v7, *MEMORY[0x277D85F48], 0, &connect))
        {
          v4 = IOConnectCallStructMethod(connect, 2u, &outputStruct, 0x208uLL, &outputStruct, &outputStructCnt);
        }

        IOServiceClose(connect);
      }
    }
  }

  else
  {
    v4 = 3758097090;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t mt_ActuatorSetWaveformViaDriver(uint64_t a1, char a2, uint64_t a3, unsigned int a4)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = 3758097090;
  if (a1)
  {
    v5 = *(a1 + 20);
    if (v5)
    {
      bzero(v10, 0x204uLL);
      if (a4 <= 0x200)
      {
        v10[0] = a2;
        v11 = a4;
        __memcpy_chk();
        v4 = IOConnectCallStructMethod(v5, 6u, v10, 0x208uLL, 0, 0);
      }

      else
      {
        v4 = 3758097128;
      }
    }

    else
    {
      v4 = 3758097101;
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t MTDeviceInjectFrame(uint64_t a1, void *__src, int a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = 3758097084;
  if (!*(a1 + 20))
  {
    v4 = 3758097101;
    goto LABEL_24;
  }

  if (*(a1 + 212) != 4)
  {
    v4 = 3758097095;
    goto LABEL_24;
  }

  v7 = *(a1 + 2272);
  if (!v7)
  {
    v24 = -1;
    v25 = -1;
    v8 = *MEMORY[0x277D85F48];
    v9 = MEMORY[0x25F855310]();
    if (v9)
    {
      v10 = v9;
LABEL_13:
      if (*(a1 + 133) == 1)
      {
        mt_CachePropertiesForDevice(a1);
      }

      v11 = MTLoggingFramework();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = *(a1 + 64);
        *buf = 67109376;
        *v27 = v10;
        *&v27[4] = 2048;
        *&v27[6] = v12;
        _os_log_impl(&dword_25AD59000, v11, OS_LOG_TYPE_ERROR, "Inject frame kernel operation failed with error %x (deviceID 0x%llX)", buf, 0x12u);
      }

      goto LABEL_24;
    }

    v13 = v24;
    *(a1 + 2272) = v25;
    *(a1 + 2280) = v13;
    if (v13 != *(a1 + 384))
    {
      if (*(a1 + 133) == 1)
      {
        mt_CachePropertiesForDevice(a1);
      }

      v14 = MTLoggingFramework();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = *(a1 + 384);
        v16 = *(a1 + 2280);
        v17 = *(a1 + 64);
        *buf = 134218496;
        *v27 = v15;
        *&v27[8] = 2048;
        *&v27[10] = v16;
        v28 = 2048;
        v29 = v17;
        _os_log_impl(&dword_25AD59000, v14, OS_LOG_TYPE_ERROR, "Expecting %lu frame injection size, but driver allocated %lu (deviceID 0x%llX)", buf, 0x20u);
      }
    }

    v7 = *(a1 + 2272);
    if (!v7)
    {
      v4 = 3758097085;
      goto LABEL_24;
    }
  }

  if (!__src)
  {
    v4 = 3758097090;
    goto LABEL_24;
  }

  if (*(a1 + 2280) >= a3)
  {
    memcpy(v7, __src, a3);
    input = a3;
    outputCnt = 0;
    v10 = IOConnectCallScalarMethod(*(a1 + 20), 0xBu, &input, 1u, 0, &outputCnt);
    if (!v10)
    {
      v4 = 0;
      goto LABEL_28;
    }

    goto LABEL_13;
  }

  v4 = 3758097115;
LABEL_24:
  if (*(a1 + 133) == 1)
  {
    mt_CachePropertiesForDevice(a1);
  }

  v18 = MTLoggingFramework();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v19 = *(a1 + 64);
    *buf = 67109376;
    *v27 = v4;
    *&v27[4] = 2048;
    *&v27[6] = v19;
    _os_log_impl(&dword_25AD59000, v18, OS_LOG_TYPE_ERROR, "Inject frame failed with error %x (deviceID 0x%llX)", buf, 0x12u);
  }

LABEL_28:
  v20 = *MEMORY[0x277D85DE8];
  return v4;
}

os_log_t __MTLoggingFramework_block_invoke()
{
  result = os_log_create("com.apple.Multitouch", "Framework");
  MTLoggingFramework___logObj = result;
  return result;
}

uint64_t mt_PostNotificationEvent(uint64_t result, uint64_t a2)
{
  if (*(result + 1224))
  {
    v3 = result;
    for (i = 0; i != 32; i += 8)
    {
      v5 = *(v3 + i + 1192);
      if (v5)
      {
        result = v5(v3, a2, *(v3 + i + 1232));
      }
    }
  }

  return result;
}

uint64_t mt_PostNotificationEventToDriver(io_service_t *a1, char a2)
{
  v41 = *MEMORY[0x277D85DE8];
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v39 = v4;
  v40 = v4;
  v37 = v4;
  v38 = v4;
  v35 = v4;
  v36 = v4;
  v33 = v4;
  v34 = v4;
  v31 = v4;
  v32 = v4;
  v29 = v4;
  v30 = v4;
  v27 = v4;
  v28 = v4;
  v25 = v4;
  v26 = v4;
  v24 = v4;
  v23 = v4;
  v22 = v4;
  v21 = v4;
  v20 = v4;
  v19 = v4;
  v18 = v4;
  v17 = v4;
  v16 = v4;
  v15 = v4;
  v14 = v4;
  v13 = v4;
  v12 = v4;
  v11 = v4;
  v10 = v4;
  v9 = v4;
  memset(v7, 170, sizeof(v7));
  inputStruct = 8;
  LOBYTE(v9) = a2;
  result = MTDeviceIssueDriverRequest(a1, &inputStruct, v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL mt_IsExternalMessage(unsigned __int8 *a1, int a2)
{
  v2 = a1[5727];
  if (!a1[5727])
  {
    return 0;
  }

  if (a1[5720] == a2)
  {
    return 1;
  }

  v4 = a1 + 5721;
  v5 = 1;
  do
  {
    v6 = v5;
    if (v2 == v5)
    {
      break;
    }

    v7 = *v4++;
    ++v5;
  }

  while (v7 != a2);
  return v6 < v2;
}

uint64_t mt_PostWorkIntervalEvent(uint64_t result, uint64_t a2)
{
  if (*(result + 1872))
  {
    v3 = result;
    for (i = 0; i != 32; i += 8)
    {
      v5 = *(v3 + i + 1840);
      if (v5)
      {
        result = v5(v3, a2, *(v3 + i + 1880));
      }
    }
  }

  return result;
}

double MTProcessedFrameInit(uint64_t a1)
{
  *(a1 + 2312) = 0;
  *(a1 + 2320) = 0;
  *(a1 + 2328) = 0;
  *(a1 + 2356) = 0;
  *(a1 + 2332) = 0;
  *(a1 + 2340) = 0u;
  bzero((a1 + 2368), 0xC00uLL);
  result = 0.0;
  *(a1 + 5704) = 0u;
  *(a1 + 2360) = 0;
  *(a1 + 5440) = 0;
  return result;
}

uint64_t mt_PostExternalMessage(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(result + 5704) = a2;
  *(result + 5712) = a4;
  *(result + 5716) = a3;
  *(result + 2312) |= 0x10u;
  if (*(result + 1584))
  {
    v7 = result;
    for (i = 0; i != 32; i += 8)
    {
      v9 = *(v7 + i + 1552);
      if (v9)
      {
        result = v9(v7, a2, a3, a4, *(v7 + i + 1592));
      }
    }
  }

  return result;
}

uint64_t mt_FlushInternalStateForDevice(uint64_t a1)
{
  MTAlg_IssueInputDetectionStateCallback(a1, 0, 0, 0);
  mt_PostButtonStateCallbacks(a1, 0);

  return mt_PostOffTableHeightCallbacks(a1, 0, 0, 0xFFFFFFFFLL);
}

uint64_t mt_PostFrameProcessingEntryExitEvent(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(result + 1080))
  {
    v5 = result;
    for (i = 0; i != 32; i += 8)
    {
      v7 = *(v5 + i + 1048);
      if (v7)
      {
        result = v7(v5, *(v5 + 168), a2, a3, *(v5 + i + 1088));
      }
    }
  }

  return result;
}

uint64_t mt_PostProcessedFrameCallbacks(uint64_t result)
{
  v1 = *(result + 1768);
  if (v1)
  {
    if ((*(result + 2076) & *(result + 2312)) != 0)
    {
      return v1(result, result + 2312, *(result + 1808));
    }
  }

  return result;
}

uint64_t MTRegisterFrameProcessingEntryExitCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = 0;
  for (i = (a1 + 1048); *i; ++i)
  {
    if (++v3 == 4)
    {
      return 0;
    }
  }

  *i = a2;
  i[5] = a3;
  v5 = 1;
  *(a1 + 1080) |= 1 << v3;
  return v5;
}

uint64_t MTUnregisterFrameProcessingEntryExitCallback(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = 0;
  v3 = a1 + 1048;
  while (*(v3 + 8 * v2) != a2)
  {
    if (++v2 == 4)
    {
      return 0;
    }
  }

  *(v3 + 8 * v2) = 0;
  v4 = 1;
  *(a1 + 1080) &= ~(1 << v2);
  return v4;
}

uint64_t MTRegisterFullFrameCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = 0;
  for (i = (a1 + 1120); *i; ++i)
  {
    if (++v3 == 4)
    {
      return 0;
    }
  }

  *i = a2;
  i[5] = a3;
  v5 = 1;
  *(a1 + 1152) |= 1 << v3;
  return v5;
}

uint64_t MTUnregisterFullFrameCallback(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = 0;
  v3 = a1 + 1120;
  while (*(v3 + 8 * v2) != a2)
  {
    if (++v2 == 4)
    {
      return 0;
    }
  }

  *(v3 + 8 * v2) = 0;
  v4 = 1;
  *(a1 + 1152) &= ~(1 << v2);
  return v4;
}

uint64_t MTRegisterNotificationEventCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = 0;
  for (i = (a1 + 1192); *i; ++i)
  {
    if (++v3 == 4)
    {
      return 0;
    }
  }

  *i = a2;
  i[5] = a3;
  v5 = 1;
  *(a1 + 1224) |= 1 << v3;
  return v5;
}

uint64_t MTUnregisterNotificationEventCallback(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = 0;
  v3 = a1 + 1192;
  while (*(v3 + 8 * v2) != a2)
  {
    if (++v2 == 4)
    {
      return 0;
    }
  }

  *(v3 + 8 * v2) = 0;
  v4 = 1;
  *(a1 + 1224) &= ~(1 << v2);
  return v4;
}

uint64_t MTRegisterWorkIntervalCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = 0;
  for (i = (a1 + 1840); *i; ++i)
  {
    if (++v3 == 4)
    {
      return 0;
    }
  }

  *i = a2;
  i[5] = a3;
  v5 = 1;
  *(a1 + 1872) |= 1 << v3;
  return v5;
}

uint64_t MTUnregisterWorkIntervalCallback(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = 0;
  for (i = (a1 + 1840); *i != a2; ++i)
  {
    if (++v2 == 4)
    {
      return 0;
    }
  }

  *i = 0;
  i[5] = 0;
  v4 = 1;
  *(a1 + 1872) &= ~(1 << v2);
  return v4;
}

uint64_t MTRegisterFrameHeaderCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = 0;
  for (i = (a1 + 1264); *i; ++i)
  {
    if (++v3 == 4)
    {
      return 0;
    }
  }

  *i = a2;
  i[5] = a3;
  v5 = 1;
  *(a1 + 1296) |= 1 << v3;
  return v5;
}

uint64_t MTUnregisterFrameHeaderCallback(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = 0;
  for (i = (a1 + 1264); *i != a2; ++i)
  {
    if (++v2 == 4)
    {
      return 0;
    }
  }

  *i = 0;
  i[5] = 0;
  v4 = 1;
  *(a1 + 1296) &= ~(1 << v2);
  return v4;
}

uint64_t MTRegisterExternalMessageCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = 0;
  for (i = (a1 + 1552); *i; ++i)
  {
    if (++v3 == 4)
    {
      return 0;
    }
  }

  *i = a2;
  i[5] = a3;
  v5 = 1;
  *(a1 + 1584) |= 1 << v3;
  return v5;
}

uint64_t MTUnregisterExternalMessageCallback(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = 0;
  for (i = (a1 + 1552); *i != a2; ++i)
  {
    if (++v2 == 4)
    {
      return 0;
    }
  }

  *i = 0;
  i[5] = 0;
  v4 = 1;
  *(a1 + 1584) &= ~(1 << v2);
  return v4;
}

uint64_t MTRegisterProcessedFrameCallback(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  if (!a2 || *(a1 + 1768))
  {
    return 0;
  }

  *(a1 + 1768) = a2;
  *(a1 + 1808) = a5;
  *(a1 + 2076) = a3;
  *(a1 + 2084) = a4;
  return 1;
}

uint64_t MTUnregisterProcessedFrameCallback(uint64_t a1)
{
  *(a1 + 1768) = 0;
  *(a1 + 1808) = 0;
  *(a1 + 2084) = 0;
  *(a1 + 2076) = 0;
  return 1;
}

double MTParse_CompactBinaryFrameHeader(unsigned __int8 *a1, int a2, MTParsedMultitouchFrameRep_t *a3, __MTDevice *a4)
{
  v4 = a1;
  if (a1)
  {
    v5 = a2 <= 3;
  }

  else
  {
    v5 = 1;
  }

  v6 = !v5;
  if (v6 == 1)
  {
    *(a3 + 10) = 0;
    v7 = *v4;
    *(a3 + 80) = *v4;
    v8 = *(v4 + 1);
    *(a3 + 81) = v8;
    v9 = *(v4 + 2);
    *(a3 + 82) = v9;
    v10 = *(v4 + 3);
    *(a3 + 83) = v10;
    LODWORD(v4) = *(v4 + 4);
    v11 = bswap32(v4);
    if (a4->var21 == 1)
    {
      v4 = v4;
    }

    else
    {
      v4 = v11;
    }

    *(a3 + 21) = v4;
    *(a3 + 8) = v7;
    *(a3 + 72) = v9;
    *(a3 + 52) = v8;
    *(a3 + 54) = v10;
    *a3 = v4;
    *(a3 + 9) = 1;
    *(a3 + 15) = 1;
    *(a3 + 16) = a4->var45 + 1;
    *(a3 + 37) = 1;
    *(a3 + 39) = 0;
    *(a3 + 31) = 0;
    *(a3 + 33) = 0;
    *(a3 + 17) = 0;
    result = -1.55737508e-207;
    *(a3 + 73) = -1795162112;
  }

  return result;
}

uint64_t MTCompactBinaryContactUnpack(uint64_t a1, unsigned __int8 *a2, unsigned int a3)
{
  v3 = 0;
  if (a1 && a2 && a3 >= 0xC)
  {
    v4 = a2[1];
    v5 = a2[3];
    v6 = (4 * a2[2]) | (v5 << 10) | (v4 >> 6);
    v7 = a2[7];
    v8 = a2[6] | ((v7 & 0xF) << 8);
    v9 = a2[4];
    v10 = a2[5];
    v11 = (v7 >> 4) | (16 * a2[8]);
    v12 = a2[9];
    v13 = a2[10];
    v14 = *a2 << 18;
    v15 = a2[11];
    *(a1 + 8) = v8;
    *(a1 + 10) = v11;
    *(a1 + 15) = v15;
    *a1 = (v14 | (v4 << 26)) >> 18;
    *(a1 + 2) = (4 * v6) >> 2;
    *(a1 + 4) = ((4 * v5) & 0x3C0 | (v9 << 10)) >> 4;
    *(a1 + 6) = (v9 & 0xC0 | (v10 << 8)) >> 4;
    *(a1 + 12) = (v12 << 6) & 0x3000 | (v13 << 14) | (32 * (v12 & 0x3F));
    *(a1 + 14) = v13 & 0xFC;
    return 12;
  }

  return v3;
}

void MTParse_CompactBinaryPath(unsigned __int8 *a1, int a2, uint64_t a3, __MTDevice *a4)
{
  v6 = a2;
  MTParse_CompactBinaryFrameHeader(a1, a2, a3, a4);
  if (v8)
  {
    v9 = v6 - 8;
    if (v6 != 8)
    {
      v10 = *(a3 + 82);
      if (*(a3 + 82))
      {
        var55 = a4->var55;
        v12 = v9 / v10;
        if (var55 == 6 || var55 == 3)
        {
          v13 = v12 >= 0xC ? 12 : v12;
          if (*(a3 + 8) == 37)
          {
            v12 = v13;
          }
        }

        v14 = 0;
        v15 = (a1 + 18);
        v16 = (a3 + 144);
        v17 = v12;
        do
        {
          v18 = (v15 - 5);
          *&v30 = 0xAAAAAAAAAAAAAAAALL;
          *(&v30 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v19 = *(a3 + 8);
          if (v19 == 37 && v17 >= 0xC)
          {
            MTCompactBinaryContactUnpack(&v30, v18, v17);
            v24 = WORD6(v30);
            v25 = HIBYTE(v30);
            LOWORD(v21) = v30;
            v22 = *(&v30 + 2);
            LOWORD(v23) = WORD5(v30);
            v26 = BYTE14(v30);
          }

          else
          {
            if (v19 == 36)
            {
              if (v17 < 0x10)
              {
                goto LABEL_25;
              }
            }

            else if (v19 != 38 || v17 <= 0xF)
            {
LABEL_25:
              v26 = 170;
              v22 = 0xAAAAAAAAAAAAAAAALL;
              LOWORD(v23) = -21846;
              LOWORD(v21) = -21846;
              v25 = 170;
              v24 = 43690;
              goto LABEL_28;
            }

            v21 = *v18;
            if (a4->var21 == 1)
            {
              LOWORD(v30) = *v18;
              v22 = *(v15 - 4);
              *(&v30 + 2) = v22;
              LOWORD(v23) = *v15;
            }

            else
            {
              LOWORD(v21) = __rev16(v21);
              LOWORD(v30) = v21;
              v22 = vrev16_s8(*(v15 - 4));
              *(&v30 + 2) = v22;
              v23 = bswap32(*v15) >> 16;
            }

            WORD5(v30) = v23;
            v24 = *(v15 + 2) | ((*(v15 + 3) & 0xF) << 8) & 0xFFF | (*(v15 + 3) >> 4 << 12);
            WORD6(v30) = *(v15 + 2) | ((*(v15 + 3) & 0xF) << 8) & 0xFFF | (*(v15 + 3) >> 4 << 12);
            v26 = *(v15 + 4);
            BYTE14(v30) = *(v15 + 4);
            v25 = *(v15 + 5);
            HIBYTE(v30) = *(v15 + 5);
          }

LABEL_28:
          *(v16 - 28) = v24 >> 12;
          *(v16 - 27) = v25 & 0xF;
          *(v16 - 26) = v25 >> 4;
          *(v16 - 25) = 1;
          *(v16 - 12) = v21;
          *(v16 - 11) = v22;
          *(v16 - 7) = v23;
          *(v16 - 6) = v26 << 8;
          *(v16 - 5) = v24 & 0xFFF;
          if (v19 == 38)
          {
            v28 = bswap32(v15[3]) >> 16;
            if (a4->var21 == 1)
            {
              v29 = v15[3];
            }

            else
            {
              v29 = v28;
            }

            *(v16 - 4) = v29;
          }

          else
          {
            v29 = mtalg_ComputeContactDensityFromRadii(a4, v24 & 0xFFF, v22.i16[3], v23);
            *(v16 - 4) = v29;
            v10 = *(a3 + 82);
          }

          *(v16 - 3) = v29;
          *(v16 - 1) = 0;
          *v16 = 0;
          v16 += 15;
          ++v14;
          v15 = (v15 + v17);
        }

        while (v14 < v10);
      }
    }

    *(a3 + 8) = 36;
  }
}

uint64_t MTCompactV3HeaderUnpack(uint64_t a1, _BYTE *a2, unsigned int a3)
{
  v3 = 0;
  if (a1 && a2 && a3 >= 6)
  {
    *a1 = *a2;
    *(a1 + 1) = a2[1];
    *(a1 + 2) = a2[2];
    *(a1 + 3) = a2[3] & 3;
    *(a1 + 4) = (a2[3] >> 2) | (a2[4] << 6) | (a2[5] << 14);
    return 8;
  }

  return v3;
}

uint64_t MTCompactV5HeaderUnpack(uint64_t a1, _BYTE *a2, unsigned int a3)
{
  v3 = 0;
  if (a1 && a2 && a3 >= 6)
  {
    *a1 = *a2;
    v4 = a2[3] & 0xC;
    v5 = a2[1] | (((v4 >> 2) & 3) << 8);
    *(a1 + 2) = a2[1] | (((v4 >> 2) & 3) << 8);
    v6 = a2[3] & 0x30;
    v7 = a2[2] | (((v6 >> 4) & 3) << 8);
    *(a1 + 4) = a2[2] | (((v6 >> 4) & 3) << 8);
    if (v4 >= 8)
    {
      *(a1 + 2) = v5 | 0xFC00;
    }

    if (v6 >= 0x20)
    {
      *(a1 + 4) = v7 | 0xFC00;
    }

    *(a1 + 6) = a2[3] & 3;
    *(a1 + 8) = (a2[3] >> 6) | (4 * a2[4]) | (a2[5] << 10);
    return 12;
  }

  return v3;
}

uint64_t MTCompactV3orV5BinaryContactUnpack(uint64_t a1, unsigned __int8 *a2, int a3)
{
  v3 = 0;
  if (a1 && a2 && a3 == 8)
  {
    v4 = *a2 | ((a2[1] & 0xF) << 8);
    *a1 = v4;
    v5 = (a2[1] >> 4) | (16 * a2[2]);
    *(a1 + 2) = (a2[1] >> 4) | (16 * a2[2]);
    LODWORD(v6) = a2[3];
    LODWORD(v7) = a2[4];
    v8 = a2[5] & 0x3F;
    *(a1 + 8) = v8;
    *(a1 + 10) = (a2[5] >> 6) & 0xF3 | (4 * (a2[6] & 3));
    *(a1 + 12) = (a2[6] & 0xFC) << 7;
    *(a1 + 15) = (a2[7] >> 4) & 7;
    *(a1 + 14) = a2[7] & 0xF;
    *(a1 + 16) = a2[7] >> 7;
    *a1 = (16 * v4) >> 3;
    *(a1 + 2) = ((16 * v5) >> 3) + 4095;
    *(a1 + 8) = 32 * v8;
    if (v6)
    {
      if (v6 > 0x31)
      {
        if (v6 > 0xA9)
        {
          v6 = (((((v6 << 10) - 169984) * ((v6 << 10) - 169984)) >> 12) + 958464) >> 10;
        }

        else
        {
          LODWORD(v6) = ((v6 << 21) + 629145600) >> 20;
        }
      }

      else
      {
        LODWORD(v6) = (((0xFFFFFFFD8 * ((((v6 << 10) - 76800) * ((v6 << 10) - 76800)) >> 10)) >> 10) + 742400) >> 10;
      }
    }

    *(a1 + 4) = v6;
    if (v7)
    {
      if (v7 > 0x31)
      {
        if (v7 > 0x95)
        {
          v7 = (((87 * ((((v7 << 10) - 141552) * ((v7 << 10) - 141552)) >> 10)) >> 10) + 807152) >> 10;
        }

        else
        {
          LODWORD(v7) = ((v7 << 21) + 524288000) >> 20;
        }
      }

      else
      {
        LODWORD(v7) = (((0xFFFFFFFD8 * ((((v7 << 10) - 76800) * ((v7 << 10) - 76800)) >> 10)) >> 10) + 640000) >> 10;
      }
    }

    *(a1 + 6) = v7;
    return 8;
  }

  return v3;
}

double MTParse_CompactV3BinaryFrameHeader(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 8) = *a1;
  *(a2 + 52) = *(a1 + 3);
  *(a2 + 54) = 0;
  v3 = *(a1 + 4) & 0x3FFFFF;
  v4 = *(a3 + 180);
  v5 = v4 & 0x3FFFFF;
  v6 = v4 & 0xFFC00000 | v3;
  v7 = v6 + 0x400000;
  if (v3 >= v5)
  {
    v7 = v6;
  }

  *a2 = v7;
  *(a1 + 4) = v7;
  *(a2 + 9) = 1;
  *(a2 + 15) = 3;
  *(a2 + 16) = *(a3 + 176) + 1;
  *(a2 + 37) = 1;
  *(a2 + 39) = 0;
  *(a2 + 62) = 0;
  *(a2 + 66) = 0;
  *(a2 + 68) = 0;
  result = -1.55737508e-207;
  *(a2 + 73) = -1795162112;
  return result;
}

double MTParse_CompactV5BinaryFrameHeader(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 8) = *a1;
  *(a2 + 52) = *(a1 + 6);
  *(a2 + 54) = 0;
  v3 = *(a1 + 8) & 0x3FFFF;
  v4 = *(a3 + 180);
  v5 = v4 & 0x3FFFF;
  v6 = v4 & 0xFFFC0000 | v3;
  v7 = v6 + 0x40000;
  if (v3 >= v5)
  {
    v7 = v6;
  }

  *a2 = v7;
  *(a1 + 8) = v7;
  *(a2 + 9) = 1;
  *(a2 + 15) = 5;
  *(a2 + 16) = *(a3 + 176) + 1;
  *(a2 + 37) = 1;
  *(a2 + 39) = 0;
  *(a2 + 62) = 0;
  *(a2 + 66) = 0;
  *(a2 + 68) = 0;
  result = -1.55737508e-207;
  *(a2 + 73) = -1795162112;
  return result;
}

uint64_t MTParse_CompactV3orV5BinaryPath(_BYTE *a1, signed int a2, uint64_t a3, uint64_t a4)
{
  v8 = *a1;
  if (v8 == 39)
  {
    if (MTCompactV3HeaderUnpack(a3 + 80, a1, a2))
    {
      MTParse_CompactV3BinaryFrameHeader(a3 + 80, a3, a4);
      goto LABEL_8;
    }

    v8 = *a1;
  }

  if (v8 != 41)
  {
    return 0;
  }

  result = MTCompactV5HeaderUnpack(a3 + 80, a1, a2);
  if (!result)
  {
    return result;
  }

  MTParse_CompactV5BinaryFrameHeader(a3 + 80, a3, a4);
LABEL_8:
  v10 = a2 - 6;
  if (a2 < 6)
  {
    v10 = a2 + 1;
  }

  v11 = v10 >> 3;
  *(a3 + 72) = v11;
  result = 1;
  *(a3 + 10) = 1;
  v12 = v11;
  if (v11)
  {
    v13 = 0;
    v14 = a3 + 116;
    v15 = a1 + 6;
    do
    {
      memset(v20, 170, 18);
      if (MTCompactV3orV5BinaryContactUnpack(v20, v15, 8))
      {
        *v14 = BYTE2(v20[1]);
        *(v14 + 1) = HIBYTE(v20[1]);
        *(v14 + 2) = BYTE6(v20[1]);
        *(v14 + 3) = 1;
        *(v14 + 4) = v20[0];
        if (LOBYTE(v20[2]))
        {
          *(v14 + 8) = -1;
        }

        v16 = SWORD2(v20[0]);
        *(v14 + 12) = WORD2(v20[0]);
        v17 = SHIWORD(v20[0]);
        *(v14 + 14) = HIWORD(v20[0]);
        *(v14 + 16) = WORD2(v20[1]);
        v18 = SLOWORD(v20[1]);
        *(v14 + 18) = v20[1];
        v19 = mtalg_ComputeContactDensityFromRadii(a4, v18, v16, v17);
        *(v14 + 20) = v19;
        *(v14 + 22) = v19;
        *(v14 + 24) = 0;
        *(v14 + 28) = 0;
        v12 = *(a3 + 72);
      }

      ++v13;
      v15 += 8;
      v14 += 30;
    }

    while (v13 < v12);
    return 1;
  }

  return result;
}

uint64_t MTCompactV4HeaderUnpack(uint64_t a1, _BYTE *a2, unsigned int a3)
{
  v3 = 0;
  if (a1 && a2 && a3 >= 4)
  {
    *a1 = *a2;
    *(a1 + 1) = a2[1] & 1;
    *(a1 + 2) = (a2[1] & 2) != 0;
    *(a1 + 4) = (a2[1] >> 2) | (a2[2] << 6) | (a2[3] << 14);
    return 8;
  }

  return v3;
}

uint64_t MTCompactV4BinaryContactUnpack(uint64_t a1, unsigned __int8 *a2, int a3)
{
  v3 = 0;
  if (a1 && a2 && a3 == 9)
  {
    v4 = *a2 | ((a2[1] & 0x1F) << 8);
    *a1 = v4;
    v5 = (8 * a2[2]) & 0xE7FF | ((a2[3] & 3) << 11) | (a2[1] >> 5);
    *(a1 + 2) = v5;
    v6 = a2[3] >> 2;
    *(a1 + 18) = v6;
    LODWORD(v7) = a2[4];
    LODWORD(v8) = a2[5];
    v9 = a2[6] & 0x3F;
    *(a1 + 8) = v9;
    *(a1 + 10) = (a2[6] >> 6) & 0xF3 | (4 * (a2[7] & 3));
    *(a1 + 12) = (a2[7] & 0xFC) << 7;
    *(a1 + 15) = (a2[8] >> 4) & 7;
    *(a1 + 14) = a2[8] & 0xF;
    *(a1 + 16) = a2[8] >> 7;
    *a1 = (8 * v4) >> 2;
    *(a1 + 2) = ((8 * v5) >> 2) + 5000;
    *(a1 + 18) = 8 * v6;
    *(a1 + 8) = 32 * v9;
    if (v7)
    {
      if (v7 > 0x31)
      {
        if (v7 > 0xA9)
        {
          v7 = (((((v7 << 10) - 169984) * ((v7 << 10) - 169984)) >> 12) + 958464) >> 10;
        }

        else
        {
          LODWORD(v7) = ((v7 << 21) + 629145600) >> 20;
        }
      }

      else
      {
        LODWORD(v7) = (((0xFFFFFFFD8 * ((((v7 << 10) - 76800) * ((v7 << 10) - 76800)) >> 10)) >> 10) + 742400) >> 10;
      }
    }

    *(a1 + 4) = v7;
    if (v8)
    {
      if (v8 > 0x31)
      {
        if (v8 > 0x95)
        {
          v8 = (((87 * ((((v8 << 10) - 141552) * ((v8 << 10) - 141552)) >> 10)) >> 10) + 807152) >> 10;
        }

        else
        {
          LODWORD(v8) = ((v8 << 21) + 524288000) >> 20;
        }
      }

      else
      {
        LODWORD(v8) = (((0xFFFFFFFD8 * ((((v8 << 10) - 76800) * ((v8 << 10) - 76800)) >> 10)) >> 10) + 640000) >> 10;
      }
    }

    *(a1 + 6) = v8;
    return 8;
  }

  return v3;
}

double MTParse_CompactV4BinaryFrameHeader(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 8) = *a1;
  *(a2 + 52) = *(a1 + 1);
  *(a2 + 53) = *(a1 + 2) != 0;
  *(a2 + 54) = 0;
  v3 = *(a1 + 4) & 0x3FFFFF;
  v4 = *(a3 + 180);
  v5 = v4 & 0x3FFFFF;
  v6 = v4 & 0xFFC00000 | v3;
  v7 = v6 + 0x400000;
  if (v3 >= v5)
  {
    v7 = v6;
  }

  *a2 = v7;
  *(a1 + 4) = v7;
  *(a2 + 9) = 1;
  *(a2 + 15) = 4;
  *(a2 + 16) = *(a3 + 176) + 1;
  *(a2 + 37) = 1;
  *(a2 + 39) = 0;
  *(a2 + 62) = 0;
  *(a2 + 66) = 0;
  *(a2 + 68) = 0;
  result = -1.55737508e-207;
  *(a2 + 73) = -1795162112;
  return result;
}

BOOL MTParse_CompactV4BinaryPath(_BYTE *a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v8 = MTCompactV4HeaderUnpack(a3 + 80, a1, a2);
  if (v8)
  {
    MTParse_CompactV4BinaryFrameHeader(a3 + 80, a3, a4);
    v9 = ((a2 - 4) / 9);
    *(a3 + 72) = (a2 - 4) / 9;
    *(a3 + 10) = 1;
    if (((a2 - 4) / 9) && v9 != 0)
    {
      v11 = 0;
      v12 = a1 + 4;
      v13 = a3 + 116;
      do
      {
        memset(v19, 170, 20);
        if (MTCompactV4BinaryContactUnpack(v19, v12, 9))
        {
          *v13 = BYTE2(v19[1]);
          *(v13 + 1) = HIBYTE(v19[1]);
          *(v13 + 2) = BYTE6(v19[1]);
          *(v13 + 3) = 1;
          *(v13 + 4) = v19[0];
          if (LOBYTE(v19[2]))
          {
            *(v13 + 8) = -1;
          }

          v14 = SWORD2(v19[0]);
          *(v13 + 12) = WORD2(v19[0]);
          v15 = SHIWORD(v19[0]);
          *(v13 + 14) = HIWORD(v19[0]);
          *(v13 + 16) = WORD2(v19[1]);
          v16 = SLOWORD(v19[1]);
          *(v13 + 18) = v19[1];
          v17 = mtalg_ComputeContactDensityFromRadii(a4, v16, v14, v15);
          *(v13 + 20) = v17;
          *(v13 + 22) = v17;
          *(v13 + 24) = 0;
          *(v13 + 28) = 0;
          v9 = *(a3 + 72);
        }

        ++v11;
        v12 += 9;
        v13 += 30;
      }

      while (v11 < v9);
    }
  }

  return v8 != 0;
}

uint64_t MTCompactV7HeaderUnpack(uint64_t a1, _BYTE *a2, unsigned int a3)
{
  v3 = 0;
  if (a1 && a2 && a3 >= 4)
  {
    *a1 = *a2;
    *(a1 + 1) = a2[1] & 1;
    *(a1 + 2) = (a2[1] & 2) != 0;
    *(a1 + 3) = (a2[1] & 4) != 0;
    *(a1 + 4) = (a2[1] >> 3) | (32 * a2[2]) | (a2[3] << 13);
    return 8;
  }

  return v3;
}

uint64_t MTCompactV7BinaryContactUnpack(uint64_t a1, unsigned __int8 *a2, int a3)
{
  v3 = 0;
  if (a1 && a2 && a3 == 9)
  {
    v4 = *a2 | ((a2[1] & 0x1F) << 8);
    *a1 = v4;
    v5 = (8 * a2[2]) & 0xE7FF | ((a2[3] & 3) << 11) | (a2[1] >> 5);
    *(a1 + 2) = v5;
    v6 = (a2[3] >> 2) & 7;
    *(a1 + 14) = (a2[3] >> 2) & 7;
    *(a1 + 15) = a2[3] >> 5;
    LODWORD(v7) = a2[4];
    LODWORD(v8) = a2[5];
    LODWORD(v9) = a2[6];
    LODWORD(v10) = a2[7];
    *(a1 + 10) = a2[8] & 0xF;
    *(a1 + 16) = (a2[8] & 0x10) != 0;
    v11 = a2[8] >> 5;
    *(a1 + 12) = v11;
    *a1 = (8 * v4) >> 2;
    *(a1 + 2) = ((8 * v5) >> 2) + 5000;
    if (v6 == 7)
    {
      *(a1 + 14) = 12;
    }

    if (v7)
    {
      if (v7 > 0x31)
      {
        if (v7 > 0xA9)
        {
          v7 = (((((v7 << 10) - 169984) * ((v7 << 10) - 169984)) >> 12) + 958464) >> 10;
        }

        else
        {
          LODWORD(v7) = ((v7 << 21) + 629145600) >> 20;
        }
      }

      else
      {
        LODWORD(v7) = (((0xFFFFFFFD8 * ((((v7 << 10) - 76800) * ((v7 << 10) - 76800)) >> 10)) >> 10) + 742400) >> 10;
      }
    }

    *(a1 + 4) = v7;
    if (v8)
    {
      if (v8 > 0x31)
      {
        if (v8 > 0x95)
        {
          v8 = (((87 * ((((v8 << 10) - 141552) * ((v8 << 10) - 141552)) >> 10)) >> 10) + 807152) >> 10;
        }

        else
        {
          LODWORD(v8) = ((v8 << 21) + 524288000) >> 20;
        }
      }

      else
      {
        LODWORD(v8) = (((0xFFFFFFFD8 * ((((v8 << 10) - 76800) * ((v8 << 10) - 76800)) >> 10)) >> 10) + 640000) >> 10;
      }
    }

    *(a1 + 6) = v8;
    if (v9)
    {
      if (v9 > 0x95)
      {
        v9 = (((138 * ((((v9 << 10) - 114670) * ((v9 << 10) - 114670)) >> 10)) >> 10) + 1373544) >> 10;
      }

      else
      {
        LODWORD(v9) = (10485 * v9) >> 10;
      }
    }

    *(a1 + 8) = v9;
    if (v10)
    {
      if ((v10 & 0x80) != 0)
      {
        v10 = (((((v10 << 10) - 98939) * ((v10 << 10) - 98939)) >> 15) + 230011) >> 10;
      }

      else
      {
        LOWORD(v10) = 2 * (v10 & 0x7F);
      }
    }

    *(a1 + 18) = v10;
    *(a1 + 12) = v11 << 12;
    return 8;
  }

  return v3;
}

uint64_t MTParse_CompactV7BinaryFrameHeader(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(a2 + 8) = *result;
  *(a2 + 52) = *(result + 1);
  *(a2 + 53) = *(result + 2) != 0;
  *(a2 + 54) = 0;
  v3 = *(result + 4) & 0x1FFFFF;
  v4 = *(a3 + 180);
  v5 = v4 & 0x1FFFFF;
  v6 = v4 & 0xFFE00000 | v3;
  v7 = v6 + 0x200000;
  if (v3 >= v5)
  {
    v7 = v6;
  }

  *a2 = v7;
  *(result + 4) = v7;
  *(a2 + 9) = 1;
  *(a2 + 15) = 4;
  *(a2 + 16) = *(a3 + 176) + 1;
  *(a2 + 37) = 1;
  *(a2 + 39) = 0;
  *(a2 + 62) = 0;
  *(a2 + 66) = 0;
  *(a2 + 68) = 0;
  *(a2 + 73) = -1795162112;
  *(a2 + 55) = *(result + 3) != 0;
  return result;
}

uint64_t MTParse_CompactV7BinaryPath(_BYTE *a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  if (*a1 != 49 || !MTCompactV7HeaderUnpack(a3 + 80, a1, a2))
  {
    return 0;
  }

  MTParse_CompactV7BinaryFrameHeader(a3 + 80, a3, a4);
  v8 = (a2 - 4) / 9;
  *(a3 + 72) = v8;
  v9 = 1;
  *(a3 + 10) = 1;
  v10 = v8;
  if (v8)
  {
    v11 = 0;
    v12 = a1 + 4;
    v13 = a3 + 116;
    do
    {
      memset(v19, 170, 20);
      if (MTCompactV7BinaryContactUnpack(v19, v12, 9))
      {
        *v13 = BYTE2(v19[1]);
        *(v13 + 1) = HIBYTE(v19[1]);
        *(v13 + 2) = BYTE6(v19[1]);
        *(v13 + 3) = 1;
        *(v13 + 4) = v19[0];
        if (LOBYTE(v19[2]))
        {
          *(v13 + 8) = -1;
        }

        v14 = SWORD2(v19[0]);
        *(v13 + 12) = WORD2(v19[0]);
        v15 = SHIWORD(v19[0]);
        *(v13 + 14) = HIWORD(v19[0]);
        *(v13 + 16) = WORD2(v19[1]);
        v16 = SLOWORD(v19[1]);
        *(v13 + 18) = v19[1];
        v17 = mtalg_ComputeContactDensityFromRadii(a4, v16, v14, v15);
        *(v13 + 20) = v17;
        *(v13 + 22) = v17;
        *(v13 + 26) = WORD1(v19[2]);
        *(v13 + 28) = 0;
        v10 = *(a3 + 72);
      }

      ++v11;
      v12 += 9;
      v13 += 30;
    }

    while (v11 < v10);
    return 1;
  }

  return v9;
}

uint64_t MTCompactV9HeaderUnpack(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = 0;
  if (a1 && a2 && a3 >= 7)
  {
    *a1 = *a2;
    v4 = *(a2 + 1);
    *(a1 + 1) = *(a1 + 1) & 0xFC | v4 & 3;
    *(a1 + 1) = *(a2 + 1) & 0xFC | v4 & 3;
    *(a1 + 2) = *(a2 + 2);
    *(a1 + 6) = *(a2 + 6);
    return 7;
  }

  return v3;
}

uint64_t MTCompactV9BinaryContactUnpack(uint64_t a1, unsigned __int8 *a2, int a3)
{
  v3 = 0;
  if (a1 && a2 && a3 == 13)
  {
    v4 = a2[3] | ((a2[4] & 0xF) << 8);
    *a1 = v4;
    if (*a2 < 0)
    {
      *a1 = v4 | 0xF000;
    }

    v5 = (a2[4] >> 4) | (16 * a2[5]);
    *(a1 + 2) = (a2[4] >> 4) | (16 * a2[5]);
    if (a2[2] < 0)
    {
      *(a1 + 2) = v5 | 0xF000;
    }

    *(a1 + 4) = a2[6] | ((a2[7] & 0xF) << 8);
    *(a1 + 6) = (a2[7] >> 4) | (16 * a2[8]);
    *(a1 + 8) = a2[10] | ((a2[11] & 0xF) << 8);
    *(a1 + 10) = (a2[11] >> 4) | (16 * a2[12]);
    v6 = *a2 & 3;
    if (!v6)
    {
      v6 = 4;
    }

    *(a1 + 12) = v6;
    *(a1 + 14) = (23860930 * (a2[9] << 15)) >> 32;
    *(a1 + 16) = a2[1] & 0xF;
    *(a1 + 17) = (*a2 >> 2) & 7;
    *(a1 + 18) = 0;
    v7 = (*a2 >> 5) & 1;
    *(a1 + 18) = (*a2 & 0x20) != 0;
    if ((*a2 & 0x40) != 0)
    {
      *(a1 + 18) = v7 | 0x10;
    }

    *(a1 + 20) = (a2[1] >> 4) & 0xF | (16 * (a2[2] & 0x7F));
    return 7;
  }

  return v3;
}

double MTParse_CompactV9BinaryFrameHeader(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 8) = *a1;
  *(a2 + 72) = *(a1 + 1) & 3;
  *(a2 + 68) = *(a1 + 1) >> 2;
  *a2 = *(a1 + 2);
  *(a2 + 9) = 1;
  *(a2 + 15) = 9;
  *(a2 + 16) = *(a3 + 176) + 1;
  *(a2 + 37) = 1;
  *(a2 + 39) = 0;
  *(a2 + 62) = 0;
  *(a2 + 66) = 0;
  result = -6.68887507e-198;
  *(a2 + 73) = -1761607680;
  return result;
}

BOOL MTParse_CompactV9BinaryPath(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v7 = MTCompactV9HeaderUnpack(a3 + 80, a1, a2);
  if (v7)
  {
    MTParse_CompactV9BinaryFrameHeader(a3 + 80, a3, a4);
    *(a3 + 10) = 1;
    v8 = *(a3 + 72);
    if (*(a3 + 72))
    {
      v9 = (a1 + 7);
      v10 = a3 + 116;
      do
      {
        memset(v15, 170, 22);
        if (MTCompactV9BinaryContactUnpack(v15, v9, 13))
        {
          *v10 = BYTE4(v15[1]);
          *(v10 + 1) = BYTE1(v15[2]);
          *(v10 + 2) = v15[2];
          v11 = HIDWORD(v15[0]);
          *(v10 + 4) = v15[0];
          *(v10 + 3) = 0;
          *(v10 + 12) = v11;
          *(v10 + 16) = HIWORD(v15[1]);
          *(v10 + 18) = v15[1];
          v12 = WORD1(v15[1]);
          *(v10 + 20) = WORD1(v15[1]);
          *(v10 + 22) = v12;
          *(v10 + 24) = 0;
          HIDWORD(v13) = *(&v15[2] + 2);
          LODWORD(v13) = *(&v15[2] + 2);
          *(v10 + 26) = v13 >> 16;
        }

        v9 += 13;
        v10 += 30;
        --v8;
      }

      while (v8);
    }
  }

  return v7 != 0;
}

uint64_t MTCompactV8HeaderUnpack(uint64_t a1, _BYTE *a2, unsigned int a3)
{
  v3 = 0;
  if (a1 && a2 && a3 >= 4)
  {
    *a1 = *a2;
    *(a1 + 1) = a2[1] & 1;
    *(a1 + 4) = (a2[1] >> 1) | (a2[2] << 7);
    return 8;
  }

  return v3;
}

uint64_t MTCompactV8BinaryContactUnpack(uint64_t a1, unsigned __int8 *a2, int a3, unsigned int a4)
{
  v4 = 0;
  if (a1 && a2 && a3 == 7)
  {
    v5 = *a2 | ((a2[1] & 0xF) << 8);
    *a1 = v5;
    v6 = (a2[1] >> 4) | (16 * a2[2]);
    *(a1 + 2) = (a2[1] >> 4) | (16 * a2[2]);
    LODWORD(v7) = a2[3];
    LODWORD(v8) = a2[4];
    LODWORD(v9) = a2[5];
    if ((a2[6] & 8) != 0)
    {
      v10 = 1;
    }

    else
    {
      v10 = 2;
    }

    *(a1 + 10) = v10;
    v11 = a2[6] >> 5;
    *(a1 + 12) = v11;
    *(a1 + 15) = a2[6] & 7;
    *(a1 + 16) = (a2[6] & 0x10) != 0;
    *(a1 + 20) = (a4 >> 2) & 3;
    *a1 = ((16 * v5) >> 3) + 2000;
    *(a1 + 2) = ((16 * v6) >> 3) + 2000;
    if (v9)
    {
      if (v9 > 0x95)
      {
        v9 = (((138 * ((((v9 << 10) - 114670) * ((v9 << 10) - 114670)) >> 10)) >> 10) + 1373544) >> 10;
      }

      else
      {
        LODWORD(v9) = (10485 * v9) >> 10;
      }
    }

    *(a1 + 8) = v9;
    *(a1 + 12) = v11 << 12;
    if (v7)
    {
      if (v7 > 0x31)
      {
        if (v7 > 0xA9)
        {
          v7 = (((((v7 << 10) - 169984) * ((v7 << 10) - 169984)) >> 12) + 958464) >> 10;
        }

        else
        {
          LODWORD(v7) = ((v7 << 21) + 629145600) >> 20;
        }
      }

      else
      {
        LODWORD(v7) = (((0xFFFFFFFD8 * ((((v7 << 10) - 76800) * ((v7 << 10) - 76800)) >> 10)) >> 10) + 742400) >> 10;
      }
    }

    *(a1 + 4) = v7;
    if (v8)
    {
      if (v8 > 0x31)
      {
        if (v8 > 0x95)
        {
          v8 = (((87 * ((((v8 << 10) - 141552) * ((v8 << 10) - 141552)) >> 10)) >> 10) + 807152) >> 10;
        }

        else
        {
          LODWORD(v8) = ((v8 << 21) + 524288000) >> 20;
        }
      }

      else
      {
        LODWORD(v8) = (((0xFFFFFFFD8 * ((((v8 << 10) - 76800) * ((v8 << 10) - 76800)) >> 10)) >> 10) + 640000) >> 10;
      }
    }

    *(a1 + 6) = v8;
    v13 = 201720321;
    *(a1 + 14) = *(&v13 | a4 & 3);
    if (((a4 >> 2) & 3) >= 2)
    {
      *(a1 + 20) = (a4 >> 2) & 1 | 0x20;
    }

    return 8;
  }

  return v4;
}

double MTParse_CompactV8BinaryFrameHeader(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 8) = *a1;
  *(a2 + 52) = *(a1 + 1);
  *(a2 + 53) = 0;
  v3 = (*(a3 + 180) & 0xFFFF8000 | *(a1 + 4) & 0x7FFF) + 0x8000;
  if ((*(a1 + 4) & 0x7FFFu) >= (*(a3 + 180) & 0x7FFFu))
  {
    v3 = *(a3 + 180) & 0xFFFF8000 | *(a1 + 4) & 0x7FFF;
  }

  *a2 = v3;
  *(a1 + 4) = v3;
  *(a2 + 9) = 1;
  *(a2 + 15) = 8;
  *(a2 + 16) = *(a3 + 176) + 1;
  *(a2 + 37) = 1;
  *(a2 + 39) = 0;
  *(a2 + 62) = 0;
  *(a2 + 66) = 0;
  *(a2 + 68) = 0;
  result = -1.55737508e-207;
  *(a2 + 73) = -1795162112;
  return result;
}

uint64_t MTParse_CompactV8BinaryPath(_BYTE *a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v4 = a2 > 3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v21 = v5;
  if (v5 == 1)
  {
    *(a3 + 80) = *a1;
    *(a3 + 81) = a1[1] & 1;
    *(a3 + 84) = (a1[1] >> 1) | (a1[2] << 7);
    MTParse_CompactV8BinaryFrameHeader(a3 + 80, a3, a4);
    v10 = (a2 - 4) / 7;
    v11 = v10 <= 2u ? v10 : 2;
    *(a3 + 72) = v11;
    *(a3 + 10) = 1;
    if (v11)
    {
      v12 = 0;
      v13 = 0;
      v14 = a1 + 4;
      v15 = a3 + 116;
      do
      {
        memset(v22, 170, 22);
        if (MTCompactV8BinaryContactUnpack(v22, v14, 7, (a1[3] >> v12) & 0xF))
        {
          *v15 = BYTE2(v22[1]);
          *(v15 + 1) = HIBYTE(v22[1]);
          *(v15 + 2) = BYTE6(v22[1]);
          *(v15 + 3) = 1;
          *(v15 + 4) = v22[0];
          if (LOBYTE(v22[2]))
          {
            *(v15 + 8) = -1;
          }

          v16 = SWORD2(v22[0]);
          *(v15 + 12) = WORD2(v22[0]);
          v17 = SHIWORD(v22[0]);
          *(v15 + 14) = HIWORD(v22[0]);
          *(v15 + 16) = WORD2(v22[1]);
          v18 = SLOWORD(v22[1]);
          *(v15 + 18) = v22[1];
          v19 = mtalg_ComputeContactDensityFromRadii(a4, v18, v16, v17);
          *(v15 + 20) = v19;
          *(v15 + 22) = v19;
          *(v15 + 24) = 0;
          *(v15 + 28) = WORD2(v22[2]);
          v11 = *(a3 + 72);
        }

        ++v13;
        v12 += 4;
        v14 += 7;
        v15 += 30;
      }

      while (v13 < v11);
    }
  }

  return v21;
}

uint64_t MTCompactV10HeaderUnpack(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = 0;
  if (a1 && a2 && a3 >= 0x11)
  {
    *a1 = *a2;
    *(a1 + 1) = (*(a2 + 1) | (*(a2 + 3) << 16)) & 0xF0FFFFFF | ((*(a2 + 4) & 0xF) << 24);
    *(a1 + 5) = *(a2 + 5);
    v4 = *(a2 + 13);
    *(a1 + 13) = *(a1 + 13) & 0xF0 | v4 & 0xF;
    *(a1 + 13) = *(a2 + 13) & 0xF0 | v4 & 0xF;
    *(a1 + 14) = *(a2 + 14);
    *(a1 + 15) = *(a2 + 15);
    *(a1 + 16) = *(a2 + 16);
    return 17;
  }

  return v3;
}

uint64_t MTCompactV10BinaryContactUnpack(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = 0;
  if (a1 && a2 && a3 >= 0x13)
  {
    *a1 = *a2;
    *(a1 + 2) = *(a2 + 2);
    *(a1 + 4) = *(a2 + 4);
    *(a1 + 6) = *(a2 + 5) | (*(a2 + 7) << 8);
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 10) = *(a2 + 10);
    *(a1 + 12) = *(a2 + 12);
    *(a1 + 14) = *(a2 + 14);
    v4 = *(a2 + 16);
    *(a1 + 16) = *(a1 + 16) & 0xF0 | v4 & 0xF;
    *(a1 + 16) = *(a2 + 16) & 0xF0 | v4 & 0xF;
    *(a1 + 17) = *(a2 + 17);
    return 19;
  }

  return v3;
}

double MTParse_CompactV10BinaryFrameHeader(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 8) = *a1;
  *(a2 + 72) = *(a1 + 13) >> 4;
  *(a2 + 68) = 0;
  v3 = *(a3 + 180);
  v4 = ((3125 * *(a1 + 1) * 0x68DB8BAC710CCuLL) >> 64) + 83886080 * (v3 / 0x5000000);
  if (v4 >= v3)
  {
    v5 = ((3125 * *(a1 + 1) * 0x68DB8BAC710CCuLL) >> 64) + 83886080 * (v3 / 0x5000000);
  }

  else
  {
    LODWORD(v5) = v4 + 83886080;
  }

  *a2 = v5;
  *(a2 + 9) = 1;
  *(a2 + 15) = 10;
  *(a2 + 16) = *(a3 + 176) + 1;
  *&result = 268;
  *(a2 + 36) = 268;
  *(a2 + 62) = 0;
  *(a2 + 66) = 0;
  *(a2 + 73) = *(a1 + 14);
  *(a2 + 74) = 1536;
  *(a2 + 76) = -105;
  *(a2 + 64) = *(a1 + 16);
  *(a2 + 11) = (*(a1 + 13) & 2) != 0;
  *(a2 + 12) = (*(a1 + 13) & 4) != 0;
  return result;
}

uint64_t MTParse_CompactV10BinaryPath(uint64_t a1, unsigned int a2, uint64_t a3, __MTDevice *a4)
{
  result = MTCompactV10HeaderUnpack(a3 + 80, a1, a2);
  if (result)
  {
    MTParse_CompactV10BinaryFrameHeader(a3 + 80, a3, a4);
    *(a3 + 10) = 0;
    v8 = *(a3 + 93);
    v9 = v8 >> 4;
    *(a3 + 72) = *(a3 + 93) >> 4;
    if (v8 >= 0x10)
    {
      v10 = a1 + *(a3 + 95) + 17;
      v11 = (a3 + 144);
      do
      {
        memset(v14, 170, 19);
        if (MTCompactV10BinaryContactUnpack(v14, v10, 0x13u))
        {
          v12 = LOBYTE(v14[2]);
          *(v11 - 28) = v14[2] & 0xF;
          *(v11 - 27) = v12 >> 4;
          *(v11 - 13) = 2;
          *(v11 - 3) = v14[0];
          *(v11 - 4) = v14[1];
          *(v11 - 5) = WORD2(v14[1]);
          LOWORD(v12) = HIWORD(v14[1]);
          *(v11 - 4) = HIWORD(v14[1]);
          *(v11 - 3) = v12;
          *(v11 - 6) = 0;
          *(v11 - 1) = 0;
          *v11 = *(&v14[2] + 1);
        }

        v10 += 19;
        v11 += 15;
        --v9;
      }

      while (v9);
    }

    v13 = *(a3 + 85);
    if (v13)
    {
      v13 = v13 / 0x3E8 - *a3;
      if (*(a3 + 85) / 0x3E8uLL == *a3)
      {
        v13 = 1;
      }
    }

    a4->var47 = v13;
    if (*(a3 + 12) == 1)
    {
      return MTParse_BinaryImagePayload((a1 + 17), *(a3 + 95), a3, a4);
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t MTParse_BinaryImagePayload(unsigned __int8 *__src, int a2, MTParsedMultitouchFrameRep_t *a3, __MTDevice *a4)
{
  v4 = *(a3 + 12);
  v5 = *(a3 + 36);
  v6 = a4->var17 * a4->var18;
  if (v4 < vcvtps_u32_f32(vcvts_n_f32_u32(v6 * v5, 3uLL)))
  {
    v24 = *(a3 + 12);
    printf("Buffer(%u) too small to store compressed image(%u)!\n");
    return 0;
  }

  if (v4 < 2 * v6)
  {
    v25 = *(a3 + 12);
    printf("Buffer(%u) too small to store uncompressed image(%u)!\n");
    return 0;
  }

  v8 = __src;
  if (v5 != 12)
  {
    if (v5 == 8)
    {
      if (*(a3 + 38) != 1)
      {
        if (v6 != a2)
        {
          printf("Raw data only had %d 8-bit words! (expected %u)\n");
          return 0;
        }

        v9 = *(a3 + 5);
        v10 = a2;
        goto LABEL_39;
      }
    }

    else
    {
      v11 = 0;
      v12 = *(a3 + 14);
      if (a2 >= 1 && *(a3 + 14))
      {
        v8 = __src + 1;
        v11 = *__src != 0;
        --a2;
      }

      if (a2 > 1)
      {
        var21 = a4->var21;
        v14 = (a2 / 2);
        v15 = v8;
        do
        {
          v16 = *v15;
          v17 = bswap32(v16) >> 16;
          if (var21 != 1)
          {
            LOWORD(v16) = v17;
          }

          *v15 = v16;
          v15 += 2;
          --v14;
        }

        while (v14);
      }

      if (*(a3 + 38) != 1)
      {
        if ((v12 & v11) == 1)
        {
          if (mt_UncompressTouchpadCodecV1Image(*(a3 + 5), v4, v8, a2, *(a3 + 14), *(a3 + 15), (*(a3 + 75) >> 2) & 1))
          {
            printf("Failed to decompress touchpad codec v1 compressed image. Failed with error(0x%X)\n");
            return 0;
          }

          return 1;
        }

        if (a2 / 2 != v6)
        {
          printf("Raw data only had %d 16-bit words! (expected %u)\n");
          return 0;
        }

        v9 = *(a3 + 5);
        v10 = 2 * v6;
LABEL_39:
        memcpy(v9, v8, v10);
        return 1;
      }
    }

LABEL_23:
    puts("Unsupported format RLECompressed");
    return 0;
  }

  if (*(a3 + 38) == 1)
  {
    goto LABEL_23;
  }

  if (((v6 & 1) + ((3 * v6) >> 1)) < a2)
  {
    printf("Raw data only had %d bytes! (expected %u)\n");
    return 0;
  }

  if (!v6)
  {
    return 1;
  }

  v18 = 0;
  v19 = 0;
  v20 = *(a3 + 5);
  result = 1;
  do
  {
    v21 = v19;
    v22 = v8[v19];
    if (v18)
    {
      v23 = (v22 >> 4) | (16 * v8[v19 + 1]);
      v19 += 2;
    }

    else
    {
      ++v19;
      v23 = v22 & 0xFFFFF0FF | ((v8[v21 + 1] & 0xF) << 8);
    }

    if (v23 >= 0x800)
    {
      LOWORD(v23) = v23 | 0xF000;
    }

    *(v20 + 2 * v18++) = v23;
  }

  while (v6 != v18);
  return result;
}

BOOL MTParse_V3BinaryFrameHeader(unsigned __int8 *a1, int a2, MTParsedMultitouchFrameRep_t *a3, __MTDevice *a4)
{
  v4 = a1;
  if (a1)
  {
    v5 = a2 <= 7;
  }

  else
  {
    v5 = 1;
  }

  result = !v5;
  if (result)
  {
    *(a3 + 10) = 0;
    *(a3 + 11) = 0;
    *(a3 + 26) = 0;
    *(a3 + 12) = 0;
    v7 = *v4;
    *(a3 + 80) = *v4;
    v8 = v4[1];
    *(a3 + 81) = v8;
    v9 = v4[2];
    *(a3 + 82) = v9;
    v10 = v4[3];
    *(a3 + 83) = v10;
    var21 = a4->var21;
    LODWORD(v12) = *(v4 + 1);
    v13 = bswap32(v12);
    if (var21 == 1)
    {
      v12 = v12;
    }

    else
    {
      v12 = v13;
    }

    *(a3 + 21) = v12;
    if (v9 < 0x10)
    {
      v17 = 0;
      v21 = 0;
      v16 = 0;
      v18 = 0;
      LOWORD(v19) = 0;
      LOWORD(v20) = 0;
      v14 = 0;
    }

    else
    {
      *(a3 + 88) = v4[8];
      *(a3 + 89) = v4[9];
      v14 = v4[10];
      *(a3 + 90) = v14;
      *(a3 + 91) = v4[11];
      v15 = *(v4 + 6);
      if (var21 == 1)
      {
        *(a3 + 46) = v15;
        v16 = v4[14];
        *(a3 + 94) = v16;
        v17 = v4[15];
        *(a3 + 95) = v17;
        v18 = *(v4 + 4);
        *(a3 + 24) = v18;
        LOWORD(v19) = *(v4 + 10);
        *(a3 + 50) = v19;
        LOWORD(v20) = *(v4 + 11);
        *(a3 + 51) = v20;
        LOWORD(v4) = *(v4 + 12);
      }

      else
      {
        *(a3 + 46) = __rev16(v15);
        v16 = v4[14];
        *(a3 + 94) = v16;
        v17 = v4[15];
        *(a3 + 95) = v17;
        v18 = bswap32(*(v4 + 4));
        *(a3 + 24) = v18;
        v19 = bswap32(*(v4 + 10)) >> 16;
        *(a3 + 50) = v19;
        v20 = bswap32(*(v4 + 11)) >> 16;
        *(a3 + 51) = v20;
        LODWORD(v4) = bswap32(*(v4 + 12)) >> 16;
      }

      *(a3 + 52) = v4;
      v21 = *(a3 + 22);
    }

    *(a3 + 8) = v7;
    *(a3 + 9) = 0;
    *(a3 + 15) = v10;
    *(a3 + 16) = v8;
    *(a3 + 37) = (v14 & 4) != 0;
    *(a3 + 38) = (v14 & 8) != 0;
    *(a3 + 39) = v14 >> 7;
    *(a3 + 31) = v20;
    *(a3 + 33) = v19;
    *(a3 + 17) = v18;
    *(a3 + 72) = v16;
    *(a3 + 73) = v21;
    *(a3 + 55) = 1;
    *(a3 + 36) = 0x100C0806u >> (8 * (v14 & 3));
    *(a3 + 52) = v17;
    *(a3 + 54) = *(a3 + 88);
    *a3 = v12;
  }

  return result;
}

uint64_t MTParse_V3BinaryPathOrImage(unsigned __int8 *a1, int a2, uint64_t a3, __MTDevice *a4)
{
  result = MTParse_V3BinaryFrameHeader(a1, a2, a3, a4);
  if (result)
  {
    v9 = *(a3 + 94);
    v10 = *(a3 + 92);
    if (*(a3 + 94))
    {
      if (*(a3 + 92) && !(*(a3 + 92) % *(a3 + 94)))
      {
        v11 = 0;
        v12 = (*(a3 + 92) / *(a3 + 94));
        v13 = (a3 + 144);
        while (v12 > 0x13)
        {
          v14 = &a1[v11 * v12 + *(a3 + 82)];
          *(v13 - 28) = *v14;
          *(v13 - 27) = v14[1];
          *(v13 - 26) = v14[2];
          *(v13 - 25) = v14[3];
          var21 = a4->var21;
          v16 = *(v14 + 2);
          if (var21 == 1)
          {
            *(v13 - 12) = v16;
            *(v13 - 11) = *(v14 + 3);
            *(v13 - 10) = *(v14 + 4);
            *(v13 - 9) = *(v14 + 5);
            LOWORD(v16) = *(v14 + 6);
            *(v13 - 8) = v16;
            LOWORD(v17) = *(v14 + 7);
            *(v13 - 7) = v17;
            *(v13 - 6) = *(v14 + 8);
            LOWORD(v18) = *(v14 + 9);
            *(v13 - 5) = v18;
            if (v12 < 0x16)
            {
              goto LABEL_11;
            }

            LOWORD(v19) = *(v14 + 10);
          }

          else
          {
            *(v13 - 12) = __rev16(v16);
            *(v13 - 11) = bswap32(*(v14 + 3)) >> 16;
            *(v13 - 10) = bswap32(*(v14 + 4)) >> 16;
            *(v13 - 9) = bswap32(*(v14 + 5)) >> 16;
            v16 = bswap32(*(v14 + 6)) >> 16;
            *(v13 - 8) = v16;
            v17 = bswap32(*(v14 + 7)) >> 16;
            *(v13 - 7) = v17;
            *(v13 - 6) = bswap32(*(v14 + 8)) >> 16;
            v18 = bswap32(*(v14 + 9)) >> 16;
            *(v13 - 5) = v18;
            if (v12 <= 0x15)
            {
              goto LABEL_11;
            }

            v19 = bswap32(*(v14 + 10)) >> 16;
          }

          *(v13 - 4) = v19;
          if (v12 < 0x18)
          {
            goto LABEL_12;
          }

          v20 = *(v14 + 11);
          if (var21 == 1)
          {
            *(v13 - 3) = v20;
            if (v12 < 0x1A)
            {
              goto LABEL_13;
            }

            LOWORD(v21) = *(v14 + 12);
          }

          else
          {
            *(v13 - 3) = __rev16(v20);
            if (v12 <= 0x19)
            {
              goto LABEL_13;
            }

            v21 = bswap32(*(v14 + 12)) >> 16;
          }

          *(v13 - 2) = v21;
          if (v12 < 0x1C)
          {
            goto LABEL_14;
          }

          v22 = *(v14 + 13);
          if (var21 == 1)
          {
            *(v13 - 1) = v22;
            if (v12 < 0x1E)
            {
              goto LABEL_31;
            }

            LOWORD(v14) = *(v14 + 14);
          }

          else
          {
            *(v13 - 1) = __rev16(v22);
            if (v12 <= 0x1D)
            {
LABEL_31:
              LOWORD(v14) = 0;
              goto LABEL_15;
            }

            LODWORD(v14) = bswap32(*(v14 + 14)) >> 16;
          }

LABEL_15:
          *v13 = v14;
          v13 += 15;
          if (++v11 >= v9)
          {
            return 1;
          }
        }

        LOWORD(v18) = *(v13 - 5);
        LOWORD(v16) = *(v13 - 8);
        LOWORD(v17) = *(v13 - 7);
LABEL_11:
        LOWORD(v19) = mtalg_ComputeContactDensityFromRadii(a4, v18, v16, v17);
        *(v13 - 4) = v19;
        v9 = *(a3 + 94);
LABEL_12:
        *(v13 - 3) = v19;
LABEL_13:
        *(v13 - 2) = 0;
LABEL_14:
        LOWORD(v14) = 0;
        *(v13 - 1) = 0;
        goto LABEL_15;
      }

      return 1;
    }

    if (!*(a3 + 92))
    {
      return 1;
    }

    v23 = *(a3 + 82);
    if (v23 + v10 <= a2)
    {

      return MTParse_BinaryImagePayload(&a1[v23], v10, a3, a4);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL MTParse_V4BinaryFrameHeader(unsigned __int8 *a1, int a2, MTParsedMultitouchFrameRep_t *a3, __MTDevice *a4)
{
  v4 = a1;
  if (a1)
  {
    v5 = a2 <= 7;
  }

  else
  {
    v5 = 1;
  }

  result = !v5;
  if (result)
  {
    *(a3 + 5) = 0u;
    *(a3 + 6) = 0u;
    v7 = *v4;
    *(a3 + 80) = *v4;
    v8 = v4[1];
    *(a3 + 81) = v8;
    v9 = v4[2];
    *(a3 + 82) = v9;
    v10 = v4[3];
    *(a3 + 83) = v10;
    var21 = a4->var21;
    LODWORD(v12) = *(v4 + 1);
    v13 = bswap32(v12);
    if (var21 == 1)
    {
      v12 = v12;
    }

    else
    {
      v12 = v13;
    }

    *(a3 + 21) = v12;
    if (v9 < 0x10)
    {
      v17 = 0;
      LOBYTE(v15) = 0;
      v20 = 0;
      v16 = 0;
      v18 = 0;
      LOWORD(v19) = 0;
      LOWORD(v4) = 0;
      v14 = 0;
    }

    else
    {
      *(a3 + 88) = v4[8];
      *(a3 + 89) = v4[9];
      v14 = v4[10];
      *(a3 + 90) = v14;
      *(a3 + 91) = v4[11];
      v15 = *(v4 + 6);
      if (var21 == 1)
      {
        *(a3 + 46) = v15;
        *(a3 + 47) = *(v4 + 7);
        *(a3 + 48) = *(v4 + 8);
        *(a3 + 49) = *(v4 + 9);
        *(a3 + 50) = *(v4 + 10);
        v16 = v4[22];
        *(a3 + 102) = v16;
        v17 = v4[23];
        *(a3 + 103) = v17;
        v18 = *(v4 + 6);
        *(a3 + 26) = v18;
        LOWORD(v19) = *(v4 + 14);
        *(a3 + 54) = v19;
        LOWORD(v4) = *(v4 + 15);
      }

      else
      {
        LOWORD(v15) = __rev16(v15);
        *(a3 + 46) = v15;
        *(a3 + 47) = bswap32(*(v4 + 7)) >> 16;
        *(a3 + 48) = bswap32(*(v4 + 8)) >> 16;
        *(a3 + 49) = bswap32(*(v4 + 9)) >> 16;
        *(a3 + 50) = bswap32(*(v4 + 10)) >> 16;
        v16 = v4[22];
        *(a3 + 102) = v16;
        v17 = v4[23];
        *(a3 + 103) = v17;
        v18 = bswap32(*(v4 + 6));
        *(a3 + 26) = v18;
        v19 = bswap32(*(v4 + 14)) >> 16;
        *(a3 + 54) = v19;
        LODWORD(v4) = bswap32(*(v4 + 15)) >> 16;
      }

      *(a3 + 55) = v4;
      v20 = *(a3 + 22);
    }

    *(a3 + 8) = v7;
    *(a3 + 9) = 0;
    *(a3 + 15) = v10;
    *(a3 + 16) = v8;
    *(a3 + 37) = (v14 & 4) != 0;
    *(a3 + 38) = (v14 & 8) != 0;
    *(a3 + 39) = v14 >> 7;
    *(a3 + 31) = v4;
    *(a3 + 33) = v19;
    *(a3 + 17) = v18;
    *(a3 + 72) = v16;
    *(a3 + 73) = v20;
    *(a3 + 55) = v15 & 1;
    *(a3 + 12) = (v15 & 4) != 0;
    *(a3 + 11) = (v15 & 2) != 0;
    *(a3 + 14) = (v14 & 0x40) != 0;
    *(a3 + 36) = 0x100C0806u >> (8 * (v14 & 3));
    *(a3 + 52) = v17;
    *(a3 + 54) = *(a3 + 88);
    *a3 = v12;
  }

  return result;
}

BOOL MTParse_V4BinaryPathPayload(unsigned __int8 *a1, int a2, MTParsedMultitouchFrameRep_t *a3, __MTDevice *a4, unsigned int a5, int a6, unsigned int a7)
{
  if (!a7 || (*(a3 + 11) & 1) == 0 || a5 < 1 || (a7 + a6) > a2 || a7 % a5)
  {
    return a7 == 0;
  }

  v9 = 0;
  v10 = (a7 / a5);
  v11 = (a3 + 144);
  v12 = a5;
  v13 = &a1[a6];
  do
  {
    if (v10 <= 0x13)
    {
      LOWORD(v18) = *(v11 - 5);
      LOWORD(v16) = *(v11 - 8);
      LOWORD(v17) = *(v11 - 7);
LABEL_13:
      LOWORD(v19) = mtalg_ComputeContactDensityFromRadii(a4, v18, v16, v17);
      *(v11 - 4) = v19;
LABEL_14:
      *(v11 - 3) = v19;
LABEL_15:
      *(v11 - 2) = 0;
LABEL_16:
      LOWORD(v14) = 0;
      *(v11 - 1) = 0;
      goto LABEL_17;
    }

    v14 = &v13[v9 * v10];
    *(v11 - 28) = *v14;
    *(v11 - 27) = v14[1];
    *(v11 - 26) = v14[2];
    *(v11 - 25) = v14[3];
    var21 = a4->var21;
    v16 = *(v14 + 2);
    if (var21 == 1)
    {
      *(v11 - 12) = v16;
      *(v11 - 11) = *(v14 + 3);
      *(v11 - 10) = *(v14 + 4);
      *(v11 - 9) = *(v14 + 5);
      LOWORD(v16) = *(v14 + 6);
      *(v11 - 8) = v16;
      LOWORD(v17) = *(v14 + 7);
      *(v11 - 7) = v17;
      *(v11 - 6) = *(v14 + 8);
      LOWORD(v18) = *(v14 + 9);
      *(v11 - 5) = v18;
      if (v10 < 0x16)
      {
        goto LABEL_13;
      }

      LOWORD(v19) = *(v14 + 10);
    }

    else
    {
      *(v11 - 12) = __rev16(v16);
      *(v11 - 11) = bswap32(*(v14 + 3)) >> 16;
      *(v11 - 10) = bswap32(*(v14 + 4)) >> 16;
      *(v11 - 9) = bswap32(*(v14 + 5)) >> 16;
      v16 = bswap32(*(v14 + 6)) >> 16;
      *(v11 - 8) = v16;
      v17 = bswap32(*(v14 + 7)) >> 16;
      *(v11 - 7) = v17;
      *(v11 - 6) = bswap32(*(v14 + 8)) >> 16;
      v18 = bswap32(*(v14 + 9)) >> 16;
      *(v11 - 5) = v18;
      if (v10 <= 0x15)
      {
        goto LABEL_13;
      }

      v19 = bswap32(*(v14 + 10)) >> 16;
    }

    *(v11 - 4) = v19;
    if (v10 < 0x18)
    {
      goto LABEL_14;
    }

    v20 = *(v14 + 11);
    if (var21 == 1)
    {
      *(v11 - 3) = v20;
      if (v10 < 0x1A)
      {
        goto LABEL_15;
      }

      LOWORD(v21) = *(v14 + 12);
    }

    else
    {
      *(v11 - 3) = __rev16(v20);
      if (v10 <= 0x19)
      {
        goto LABEL_15;
      }

      v21 = bswap32(*(v14 + 12)) >> 16;
    }

    *(v11 - 2) = v21;
    if (v10 < 0x1C)
    {
      goto LABEL_16;
    }

    v22 = *(v14 + 13);
    if (var21 == 1)
    {
      *(v11 - 1) = v22;
      if (v10 >= 0x1E)
      {
        LOWORD(v14) = *(v14 + 14);
        goto LABEL_17;
      }
    }

    else
    {
      *(v11 - 1) = __rev16(v22);
      if (v10 > 0x1D)
      {
        LODWORD(v14) = bswap32(*(v14 + 14)) >> 16;
        goto LABEL_17;
      }
    }

    LOWORD(v14) = 0;
LABEL_17:
    *v11 = v14;
    v11 += 15;
    ++v9;
    --v12;
  }

  while (v12);
  return 1;
}

BOOL MTParse_GenerateRingCentroids(MTParsedMultitouchFrameRep_t *a1, __MTDevice *a2)
{
  v2 = *(a1 + 72);
  if (*(a1 + 72))
  {
    v3 = 0;
    v4 = 1;
    v5 = *(a1 + 72);
    v6 = (a1 + 116);
    v7 = *(a1 + 72);
    do
    {
      if (a2->var84)
      {
        v8 = v6;
      }

      else
      {
        *(a1 + 72) = v7 + 1;
        if ((v7 + 1) > 2u)
        {
          return v3;
        }

        v8 = a1 + 60 * v7 + 116;
        v10 = v6[1];
        v9 = v6[2];
        v11 = *v6;
        *(v8 + 44) = *(v6 + 44);
        *(v8 + 1) = v10;
        *(v8 + 2) = v9;
        *v8 = v11;
        *v8 = 1;
        ++v7;
      }

      ++v8[2];
      *(v8 + 4) = vadd_f32(*(v8 + 52), *(v8 + 4));
      *(v8 + 13) = 0;
      *(v8 + 14) = 0;
      v3 = v4 >= v2;
      v6 = (v6 + 60);
      ++v4;
      --v5;
    }

    while (v5);
  }

  v3 = 1;
  *(a1 + 10) = 1;
  return v3;
}

uint64_t MTParse_V4PrecisePathAndImage(unsigned __int8 *a1, int a2, uint64_t a3, __MTDevice *a4)
{
  result = MTParse_V4BinaryFrameHeader(a1, a2, a3, a4);
  if (!result)
  {
    return result;
  }

  v9 = *(a3 + 94);
  v10 = *(a3 + 96);
  v11 = *(a3 + 82);
  v12 = v11 + v9;
  if (*(a3 + 94))
  {
    if (v9 == 6 && v12 <= a2)
    {
      v15 = &a1[v11];
      v16 = *v15;
      if (a4->var21 == 1)
      {
        *(a3 + 56) = v16;
        *(a3 + 58) = *(v15 + 1);
        LOWORD(v15) = *(v15 + 2);
      }

      else
      {
        *(a3 + 56) = __rev16(v16);
        *(a3 + 58) = bswap32(*(v15 + 1)) >> 16;
        LODWORD(v15) = bswap32(*(v15 + 2)) >> 16;
      }

      *(a3 + 60) = v15;
      v14 = 1;
      *(a3 + 13) = 1;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 1;
  }

  v17 = *(a3 + 98);
  v18 = *(a3 + 80);
  if (v18 != 119)
  {
    if (v18 == 118)
    {
      RingCentroids = MTParse_PrecisePathPayload(a1, a2, a3, a4, *(a3 + 102), v12, v10, 0);
      goto LABEL_18;
    }

    if (v18 == 117)
    {
      RingCentroids = MTParse_V4BinaryPathPayload(a1, a2, a3, a4, *(a3 + 102), v12, v10);
LABEL_18:
      v20 = RingCentroids;
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  if (!MTParse_PrecisePathPayload(a1, a2, a3, a4, *(a3 + 102), v12, v10, 1))
  {
LABEL_22:
    v20 = 0;
    goto LABEL_23;
  }

  if (a4->var83)
  {
    RingCentroids = MTParse_GenerateRingCentroids(a3, a4);
    goto LABEL_18;
  }

  v20 = 1;
LABEL_23:
  if (*(a3 + 12) == 1 && v17 && v17 + (v10 + v12) <= a2)
  {
    v21 = MTParse_BinaryImagePayload(&a1[(v10 + v12)], v17, a3, a4);
  }

  else
  {
    v21 = v17 == 0;
  }

  if (v14)
  {
    return v20 & v21;
  }

  else
  {
    return 0;
  }
}

uint64_t MTParse_HostPathAndImage(_OWORD *a1, signed int a2, uint64_t a3)
{
  if (a2 < 0x1C)
  {
    return 0;
  }

  v3 = *(a1 + 12);
  *(a3 + 80) = *a1;
  *(a3 + 92) = v3;
  *(a3 + 8) = *(a3 + 80);
  *(a3 + 9) = 0;
  *(a3 + 15) = *(a3 + 83);
  *(a3 + 16) = *(a3 + 81);
  *(a3 + 62) = *(a3 + 102);
  *(a3 + 64) = *(a3 + 104);
  *(a3 + 66) = *(a3 + 98);
  *(a3 + 68) = *(a3 + 100);
  v4 = *(a3 + 96);
  v5 = *(a3 + 96) != 0;
  *(a3 + 72) = v4;
  v7 = *(a3 + 84);
  v6 = *(a3 + 88);
  *(a3 + 73) = v6;
  *(a3 + 36) = 272;
  *(a3 + 52) = 0;
  *(a3 + 54) = v6;
  *a3 = v7;
  *(a3 + 11) = v5;
  v8 = *(a3 + 94);
  *(a3 + 12) = *(a3 + 94) != 0;
  *(a3 + 113) = 1;
  if (v4)
  {
    v9 = 0;
    v10 = 60 * v4;
    v11 = 124;
    v12 = vdupq_n_s32(0x447A0000u);
    while (v11 <= a2)
    {
      v13 = a3 + v9;
      *(v13 + 116) = vuzp1_s8(vmovn_s32(*(a1 + v11 - 80)), *v12.f32).u32[0];
      *(v13 + 120) = vmulq_f32(*(a1 + v11 - 28), v12);
      *(v13 + 136) = vmul_f32(*(a1 + v11 - 36), *v12.f32);
      v14 = *(a1 + v11 - 44);
      v15 = *(a1 + v11 - 48);
      *(v13 + 144) = *(a1 + v11 - 40);
      *(v13 + 148) = v15;
      v16 = *(a1 + v11 - 8);
      *(v13 + 152) = *(a1 + v11 - 4);
      *(v13 + 156) = v14;
      *(v13 + 160) = *(a1 + v11 - 12);
      *(v13 + 164) = v16;
      *(v13 + 168) = 0;
      v9 += 60;
      v11 += 96;
      if (v10 == v9)
      {
        v17 = v11 - 96;
        goto LABEL_8;
      }
    }

    return 0;
  }

  v17 = 28;
LABEL_8:
  if (v17 + v8 > a2)
  {
    return 0;
  }

  memcpy(*(a3 + 40), a1 + v17, v8);
  return 1;
}

BOOL MTParse_SensorImageHeader(unsigned __int8 *a1, int a2, MTParsedMultitouchFrameRep_t *a3, __MTDevice *a4)
{
  if (a1)
  {
    v5 = a2 <= 7;
  }

  else
  {
    v5 = 1;
  }

  result = !v5;
  if (result)
  {
    *(a3 + 5) = 0u;
    *(a3 + 6) = 0u;
    v7 = *a1;
    *(a3 + 80) = *a1;
    v8 = a1[1];
    *(a3 + 81) = v8;
    v9 = a1[2];
    *(a3 + 82) = v9;
    v10 = a1[3];
    *(a3 + 83) = v10;
    var21 = a4->var21;
    LODWORD(v12) = *(a1 + 1);
    v13 = bswap32(v12);
    if (var21 == 1)
    {
      v12 = v12;
    }

    else
    {
      v12 = v13;
    }

    *(a3 + 21) = v12;
    if (v9 < 0x10)
    {
      v21 = 0;
      v14 = 0;
      LOWORD(v15) = 0;
      LOWORD(v16) = 0;
      LOWORD(v18) = 0;
      LOWORD(v17) = 0;
      v20 = 0;
      v19 = 0;
    }

    else
    {
      *(a3 + 88) = a1[8];
      *(a3 + 89) = a1[9];
      v14 = a1[10];
      *(a3 + 90) = v14;
      *(a3 + 91) = a1[11];
      v15 = *(a1 + 6);
      if (var21 == 1)
      {
        *(a3 + 46) = v15;
        LOWORD(v16) = *(a1 + 7);
        *(a3 + 47) = v16;
        LOWORD(v17) = *(a1 + 8);
        *(a3 + 48) = v17;
        *(a3 + 49) = *(a1 + 9);
        *(a3 + 50) = *(a1 + 10);
        LOWORD(v18) = *(a1 + 11);
        *(a3 + 51) = v18;
        v19 = *(a1 + 6);
        *(a3 + 26) = v19;
        v20 = *(a1 + 7);
      }

      else
      {
        LOWORD(v15) = __rev16(v15);
        *(a3 + 46) = v15;
        v16 = bswap32(*(a1 + 7)) >> 16;
        *(a3 + 47) = v16;
        v17 = bswap32(*(a1 + 8)) >> 16;
        *(a3 + 48) = v17;
        *(a3 + 49) = bswap32(*(a1 + 9)) >> 16;
        *(a3 + 50) = bswap32(*(a1 + 10)) >> 16;
        v18 = bswap32(*(a1 + 11)) >> 16;
        *(a3 + 51) = v18;
        v19 = bswap32(*(a1 + 6));
        *(a3 + 26) = v19;
        v20 = bswap32(*(a1 + 7));
      }

      *(a3 + 27) = v20;
      v21 = *(a3 + 22);
    }

    *(a3 + 8) = v7;
    *(a3 + 9) = 0;
    *(a3 + 15) = v10;
    *(a3 + 16) = v8;
    *(a3 + 5) = v19;
    *(a3 + 6) = v20;
    *(a3 + 17) = v17;
    *(a3 + 16) = v18;
    *(a3 + 15) = v16;
    *(a3 + 14) = v15;
    *(a3 + 37) = (v14 & 4) != 0;
    *(a3 + 38) = (v14 & 8) != 0;
    *(a3 + 39) = v14 >> 7;
    *(a3 + 73) = v21;
    *(a3 + 11) = 256;
    *(a3 + 36) = 0x100C0806u >> (8 * (v14 & 3));
    *(a3 + 54) = *(a3 + 88);
    *a3 = v12;
  }

  return result;
}

uint64_t MTParse_SensorImage(unsigned __int8 *a1, int a2, uint64_t a3, __MTDevice *a4)
{
  result = MTParse_SensorImageHeader(a1, a2, a3, a4);
  if (result)
  {
    v9 = *(a3 + 98);
    if (*(a3 + 12) != 1 || v9 == 0)
    {
      return v9 == 0;
    }

    v11 = *(a3 + 82);
    if (v11 + v9 > a2)
    {
      return v9 == 0;
    }

    else
    {

      return MTParse_BinaryImagePayload(&a1[v11], v9, a3, a4);
    }
  }

  return result;
}

BOOL MTParse_BinaryFrameHeader(unsigned __int8 *a1, int a2, MTParsedMultitouchFrameRep_t *a3, __MTDevice *a4)
{
  if (a1)
  {
    v5 = a2 <= 7;
  }

  else
  {
    v5 = 1;
  }

  result = !v5;
  if (result)
  {
    *(a3 + 10) = 0;
    *(a3 + 11) = 0;
    *(a3 + 26) = 0;
    *(a3 + 12) = 0;
    v7 = *a1;
    *(a3 + 80) = v7;
    v8 = a1[1];
    *(a3 + 81) = v8;
    v9 = a1[2];
    *(a3 + 82) = v9;
    v10 = a1[3];
    *(a3 + 83) = v10;
    var21 = a4->var21;
    LODWORD(v12) = *(a1 + 1);
    v13 = bswap32(v12);
    if (var21 == 1)
    {
      v12 = v12;
    }

    else
    {
      v12 = v13;
    }

    *(a3 + 21) = v12;
    if (v9 < 0x10)
    {
      v16 = 0;
      v17 = 0;
      LOWORD(v18) = 0;
      v19 = 0;
      v20 = 0;
      v14 = 0;
LABEL_31:
      *(a3 + 8) = v7;
      *(a3 + 9) = 0;
      *(a3 + 15) = v10;
      *(a3 + 16) = v8;
      *(a3 + 37) = (v14 & 4) != 0;
      *(a3 + 38) = (v14 & 8) != 0;
      *(a3 + 39) = v14 >> 7;
      *(a3 + 31) = v20;
      *(a3 + 64) = v19;
      *(a3 + 33) = v18;
      *(a3 + 17) = v17;
      *(a3 + 72) = v16;
      v22 = *(a3 + 22);
      *(a3 + 73) = v22;
      *(a3 + 36) = 0x100C0806u >> (8 * (v14 & 3));
      *(a3 + 52) = 0;
      *(a3 + 54) = v22;
      *a3 = v12;
      *(a3 + 12) = v7 == 69;
      *(a3 + 11) = v7 == 69;
      return result;
    }

    *(a3 + 88) = a1[8];
    *(a3 + 89) = a1[9];
    v14 = a1[10];
    *(a3 + 90) = v14;
    *(a3 + 91) = a1[11];
    v15 = *(a1 + 6);
    if (var21 == 1)
    {
      *(a3 + 46) = v15;
      LOWORD(v15) = *(a1 + 7);
    }

    else
    {
      *(a3 + 46) = __rev16(v15);
      v15 = bswap32(*(a1 + 7)) >> 16;
    }

    *(a3 + 47) = v15;
    if (v9 < 0x16)
    {
      v16 = 0;
      v17 = 0;
      LOWORD(v18) = 0;
LABEL_30:
      v19 = 0;
      v20 = 0;
      goto LABEL_31;
    }

    v16 = a1[16];
    *(a3 + 96) = v16;
    *(a3 + 97) = a1[17];
    v18 = *(a1 + 9);
    if (var21 == 1)
    {
      *(a3 + 49) = v18;
      if (v10 >= 2)
      {
        v17 = *(a1 + 10);
        goto LABEL_24;
      }
    }

    else
    {
      LOWORD(v18) = __rev16(v18);
      *(a3 + 49) = v18;
      if (v10 > 1)
      {
        v17 = bswap32(*(a1 + 10)) >> 16;
        goto LABEL_24;
      }
    }

    v17 = 0;
LABEL_24:
    *(a3 + 50) = v17;
    if (v9 >= 0x18)
    {
      v21 = bswap32(*(a1 + 11)) >> 16;
      if (var21 == 1)
      {
        v20 = *(a1 + 11);
      }

      else
      {
        v20 = v21;
      }

      *(a3 + 51) = v20;
      if (v9 == 24)
      {
        v19 = 0;
      }

      else
      {
        v19 = a1[24];
        *(a3 + 104) = v19;
      }

      goto LABEL_31;
    }

    goto LABEL_30;
  }

  return result;
}

uint64_t MTParse_BinaryPathOrImage(unsigned __int8 *a1, int a2, uint64_t a3, __MTDevice *a4)
{
  result = MTParse_BinaryFrameHeader(a1, a2, a3, a4);
  if (result)
  {
    v9 = *(a3 + 94);
    if (*(a3 + 94) && (v10 = *(a3 + 82), v10 + v9 <= a2))
    {
      result = MTParse_BinaryImagePayload(&a1[v10], v9, a3, a4);
      v9 = *(a3 + 94);
    }

    else
    {
      result = 0;
    }

    v11 = *(a3 + 97);
    if (v9 + *(a3 + 82) + *(a3 + 96) * v11 <= a2)
    {
      if (*(a3 + 96))
      {
        v12 = 0;
        for (i = (a3 + 144); ; i += 15)
        {
          v14 = &a1[*(a3 + 94) + *(a3 + 82) + v12 * v11];
          if (v11 <= 0x13)
          {
            break;
          }

          *(i - 28) = *v14;
          *(i - 27) = v14[1];
          *(i - 26) = v14[2];
          *(i - 25) = v14[3];
          v15 = *(v14 + 2);
          if (a4->var21 == 1)
          {
            *(i - 12) = v15;
            *(i - 11) = *(v14 + 3);
            *(i - 10) = *(v14 + 4);
            *(i - 9) = *(v14 + 5);
            LOWORD(v15) = *(v14 + 6);
            *(i - 8) = v15;
            LOWORD(v16) = *(v14 + 7);
            *(i - 7) = v16;
            *(i - 6) = *(v14 + 8);
            LOWORD(v17) = *(v14 + 9);
            *(i - 5) = v17;
            if (v11 < 0x16)
            {
              goto LABEL_14;
            }

            LOWORD(v18) = *(v14 + 10);
          }

          else
          {
            *(i - 12) = __rev16(v15);
            *(i - 11) = bswap32(*(v14 + 3)) >> 16;
            *(i - 10) = bswap32(*(v14 + 4)) >> 16;
            *(i - 9) = bswap32(*(v14 + 5)) >> 16;
            v15 = bswap32(*(v14 + 6)) >> 16;
            *(i - 8) = v15;
            v16 = bswap32(*(v14 + 7)) >> 16;
            *(i - 7) = v16;
            *(i - 6) = bswap32(*(v14 + 8)) >> 16;
            v17 = bswap32(*(v14 + 9)) >> 16;
            *(i - 5) = v17;
            if (v11 <= 0x15)
            {
              goto LABEL_14;
            }

            v18 = bswap32(*(v14 + 10)) >> 16;
          }

          *(i - 4) = v18;
LABEL_18:
          if (v11 < 0x18)
          {
            *(i - 3) = v18;
LABEL_23:
            *(i - 2) = 0;
LABEL_24:
            LOWORD(v22) = 0;
            *(i - 1) = 0;
            goto LABEL_25;
          }

          var21 = a4->var21;
          v20 = *(v14 + 11);
          if (var21 == 1)
          {
            *(i - 3) = v20;
            if (v11 < 0x1A)
            {
              goto LABEL_23;
            }

            LOWORD(v21) = *(v14 + 12);
          }

          else
          {
            *(i - 3) = __rev16(v20);
            if (v11 <= 0x19)
            {
              goto LABEL_23;
            }

            v21 = bswap32(*(v14 + 12)) >> 16;
          }

          *(i - 2) = v21;
          if (v11 < 0x1C)
          {
            goto LABEL_24;
          }

          v23 = *(v14 + 13);
          if (var21 == 1)
          {
            *(i - 1) = v23;
            if (v11 < 0x1E)
            {
              goto LABEL_35;
            }

            LOWORD(v22) = *(v14 + 14);
          }

          else
          {
            *(i - 1) = __rev16(v23);
            if (v11 <= 0x1D)
            {
LABEL_35:
              LOWORD(v22) = 0;
              goto LABEL_25;
            }

            v22 = bswap32(*(v14 + 14)) >> 16;
          }

LABEL_25:
          *i = v22;
          if (++v12 >= *(a3 + 96))
          {
            return 1;
          }
        }

        LOWORD(v17) = *(i - 5);
        LOWORD(v15) = *(i - 8);
        LOWORD(v16) = *(i - 7);
LABEL_14:
        LOWORD(v18) = mtalg_ComputeContactDensityFromRadii(a4, v17, v15, v16);
        *(i - 4) = v18;
        v11 = *(a3 + 97);
        goto LABEL_18;
      }

      return 1;
    }
  }

  return result;
}

uint64_t MTParse_TimestampSync(void *__src, size_t __n, uint64_t a3)
{
  if (__n > 0x14)
  {
    return 0;
  }

  __dst[5] = v3;
  __dst[6] = v4;
  memset(__dst, 0, 20);
  memcpy(__dst, __src, __n);
  if (BYTE1(__dst[0]) != 255)
  {
    return 0;
  }

  if (*(&__dst[1] + 4))
  {
    v7 = *(&__dst[1] + 4) - *(__dst + 4);
    if (*(&__dst[1] + 4) == *(__dst + 4))
    {
      v7 = 1;
    }

    *(a3 + 184) = v7;
  }

  else
  {
    *(a3 + 184) = 0;
  }

  return 1;
}

uint64_t MTParse_ExternalMessage(uint64_t a1, int a2, void *a3, _WORD *a4, _DWORD *a5)
{
  if ((*(a1 + 1) & 0xFE) != 2)
  {
    return 0;
  }

  v5 = *(a1 + 2);
  if (a2 - 6 < v5)
  {
    return 0;
  }

  v7 = *(a1 + 4);
  *a3 = a1 + 6;
  *a4 = v7;
  *a5 = v5;
  return 1;
}

uint64_t MTProcess_0xC5_Data(unsigned __int8 *a1, int a2, MTParsedMultitouchFrameRep_t *a3, __MTDevice *a4)
{
  v8 = *a1;
  *(a3 + 8) = v8;
  *(a3 + 16) = a1[1];
  if (v8 == 198)
  {
    var21 = a4->var21;
    v14 = bswap32(*(a1 + 4)) >> 16;
    v15 = var21 == 1;
    if (var21 == 1)
    {
      v16 = *(a1 + 4);
    }

    else
    {
      v16 = v14;
    }

    *(a3 + 37) = (v16 & 4) != 0;
    LODWORD(v17) = *(a1 + 1);
    v18 = bswap32(v17);
    if (v15)
    {
      v17 = v17;
    }

    else
    {
      v17 = v18;
    }

    if ((v16 & 2) != 0)
    {
      v19 = 16;
    }

    else
    {
      v19 = 8;
    }

    *(a3 + 36) = v19;
    *(a3 + 38) = v16 & 1;
    *(a3 + 39) = v16 < 0;
    *(a3 + 52) = a1[2];
    *(a3 + 54) = a1[3];
    *a3 = v17;
    v20 = a1[10];
  }

  else
  {
    if (v8 == 197)
    {
      *(a3 + 37) = (a1[2] & 4) != 0;
      if ((a1[2] & 2) != 0)
      {
        v9 = 16;
      }

      else
      {
        v9 = 8;
      }

      *(a3 + 36) = v9;
      *(a3 + 38) = a1[2] & 1;
      *(a3 + 39) = a1[2] >> 7;
      *(a3 + 52) = a1[3];
      *(a3 + 54) = a1[4];
      v10 = *(a1 + 6);
      v11 = bswap32(v10);
      if (a4->var21 == 1)
      {
        v12 = v10;
      }

      else
      {
        v12 = v11;
      }

      *a3 = v12;
    }

    else
    {
      printf("Unknown data format %x\n", v8);
    }

    v20 = 10;
  }

  return MTParse_BinaryImagePayload(&a1[v20], a2 - v20, a3, a4);
}

uint64_t MTProcess_0xCC_Data(unsigned __int8 *a1, int a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  if (!a1 || a2 < 10)
  {
    return v4;
  }

  *(a3 + 80) = 0;
  *(a3 + 88) = 0;
  *(a3 + 104) = 0;
  *(a3 + 96) = 0;
  v5 = 10;
  *(a3 + 82) = 10;
  v6 = *a1;
  *(a3 + 80) = v6;
  v7 = a1[1];
  *(a3 + 81) = v7;
  v8 = a1[2];
  v9 = a1[3];
  *(a3 + 96) = v9;
  if (v6 != 206)
  {
    LOBYTE(v10) = 0;
    goto LABEL_8;
  }

  v5 = a1[10];
  *(a3 + 82) = v5;
  v10 = a1[11];
  *(a3 + 83) = v10;
  if (v10 < 2)
  {
LABEL_8:
    v12 = *(a1 + 2);
    if (*(a4 + 100) == 1)
    {
      *(a3 + 102) = v12;
      v11 = *(a1 + 6);
    }

    else
    {
      LOWORD(v12) = __rev16(v12);
      *(a3 + 102) = v12;
      v11 = bswap32(*(a1 + 6));
    }

    *(a3 + 84) = v11;
    goto LABEL_14;
  }

  v11 = *(a1 + 1);
  if (*(a4 + 100) == 1)
  {
    *(a3 + 84) = v11;
    LOWORD(v12) = *(a1 + 4);
  }

  else
  {
    v11 = bswap32(v11);
    *(a3 + 84) = v11;
    v12 = bswap32(*(a1 + 4)) >> 16;
  }

  *(a3 + 102) = v12;
LABEL_14:
  *(a3 + 8) = v6;
  *(a3 + 9) = 0;
  *(a3 + 15) = v10;
  *(a3 + 16) = v7;
  *(a3 + 36) = 264;
  *(a3 + 52) = v8;
  *(a3 + 54) = 0;
  *a3 = v11;
  *(a3 + 62) = v12;
  *(a3 + 66) = 0;
  *(a3 + 68) = 0;
  *(a3 + 72) = v9;
  *(a3 + 73) = 0;
  if (v5 >= 0x14)
  {
    v13 = bswap32(*(a1 + 8)) >> 16;
    if (*(a4 + 100) == 1)
    {
      v14 = *(a1 + 8);
    }

    else
    {
      v14 = v13;
    }

    *(a3 + 98) = v14;
  }

  if (v5 + 32 * v9 > a2)
  {
    return 0;
  }

  if (v9)
  {
    v15 = 0;
    v16 = a3 + 116;
    v17 = *(a4 + 100);
    v18 = 32 * v9;
    v19 = &a1[v5];
    do
    {
      v20 = &v19[v15];
      *v16 = v19[v15];
      *(v16 + 1) = v19[v15 + 1];
      *(v16 + 2) = v19[v15 + 2];
      *(v16 + 3) = v19[v15 + 3];
      if (v6 == 204)
      {
        v21 = *(v20 + 1);
        if (v17 == 1)
        {
          *(v16 + 4) = v21 >> 8;
          v22 = *&v19[v15 + 12];
          *(v16 + 6) = *&v19[v15 + 8] >> 8;
          *(v16 + 8) = v22 >> 9;
          v23 = *&v19[v15 + 16];
        }

        else
        {
          *(v16 + 4) = bswap32(v21) >> 8;
          v25 = *&v19[v15 + 12];
          *(v16 + 6) = bswap32(*&v19[v15 + 8]) >> 8;
          *(v16 + 8) = bswap32(v25) >> 9;
          v23 = bswap32(*&v19[v15 + 16]);
        }

        LOWORD(v24) = 0;
        *(v16 + 10) = v23 >> 9;
        *(v16 + 24) = 0;
        v26 = 20;
      }

      else
      {
        v24 = *(v20 + 2);
        if (v17 == 1)
        {
          *(v16 + 4) = v24;
          *(v16 + 6) = *&v19[v15 + 6];
          *(v16 + 8) = *&v19[v15 + 8];
          *(v16 + 10) = *&v19[v15 + 10];
          *(v16 + 20) = *&v19[v15 + 16];
          LOWORD(v24) = *&v19[v15 + 18];
        }

        else
        {
          *(v16 + 4) = __rev16(v24);
          *(v16 + 6) = bswap32(*&v19[v15 + 6]) >> 16;
          *(v16 + 8) = bswap32(*&v19[v15 + 8]) >> 16;
          *(v16 + 10) = bswap32(*&v19[v15 + 10]) >> 16;
          *(v16 + 20) = bswap32(*&v19[v15 + 16]) >> 16;
          v24 = bswap32(*&v19[v15 + 18]) >> 16;
        }

        v26 = 24;
      }

      *(v16 + v26) = v24;
      v27 = &v19[v15];
      v28 = *&v19[v15 + 20];
      if (v17 == 1)
      {
        *(v16 + 18) = v28;
        *(v16 + 22) = *(v27 + 11);
        *(v16 + 26) = *(v27 + 12);
        *(v16 + 16) = *(v27 + 13);
        *(v16 + 12) = *(v27 + 14);
        LOWORD(v27) = *(v27 + 15);
      }

      else
      {
        *(v16 + 18) = __rev16(v28);
        *(v16 + 22) = bswap32(*(v27 + 11)) >> 16;
        *(v16 + 26) = bswap32(*(v27 + 12)) >> 16;
        *(v16 + 16) = bswap32(*(v27 + 13)) >> 16;
        *(v16 + 12) = bswap32(*(v27 + 14)) >> 16;
        LODWORD(v27) = bswap32(*(v27 + 15)) >> 16;
      }

      *(v16 + 14) = v27;
      *(v16 + 28) = 0;
      v15 += 32;
      v16 += 30;
    }

    while (v18 != v15);
  }

  return 1;
}

uint64_t MTParseSensorRegionsReport(unsigned __int8 *a1, int a2, char *a3, int a4)
{
  result = 0;
  if (a3)
  {
    if (a4 >= 1)
    {
      bzero(a3, 7 * a4);
      result = 0;
      if (a1)
      {
        if (a2 >= 1)
        {
          LODWORD(v9) = (a2 - 1) / 7u;
          result = 0;
          v9 = v9 >= *a1 ? *a1 : v9;
          if (v9)
          {
            v10 = (a1 + 3);
            do
            {
              v11 = *(v10 - 2);
              if (v11 < a4)
              {
                v12 = &a3[8 * v11 - v11];
                *v12 = v11;
                v12[1] = *(v10 - 1);
                v12[2] = *v10;
                v13 = v10[1];
                if (v13 <= 1)
                {
                  LOBYTE(v13) = 1;
                }

                v12[3] = v13;
                v12[4] = v10[2];
                v12[5] = v10[3];
                v12[6] = v10[4];
                result = (result + 1);
              }

              v10 += 7;
              --v9;
            }

            while (v9);
          }
        }
      }
    }
  }

  return result;
}

uint64_t MTParseSensorRegionParam(unsigned __int16 *a1, int a2, _WORD *a3, uint64_t a4)
{
  v4 = a1;
  if (a1)
  {
    v5 = a3 == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = !v5 && a2 == 6;
  result = v6;
  if (v6)
  {
    v8 = *v4;
    if (*(a4 + 100) == 1)
    {
      *a3 = v8;
      a3[1] = v4[1];
      LOWORD(v4) = v4[2];
    }

    else
    {
      *a3 = __rev16(v8);
      a3[1] = bswap32(v4[1]) >> 16;
      LODWORD(v4) = bswap32(v4[2]) >> 16;
    }

    a3[2] = v4;
  }

  return result;
}

uint64_t MTParseSensorSurfaceDescriptor(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v4 = a1;
  if (a1)
  {
    v5 = a3 == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = !v5 && a2 == 16;
  result = v6;
  if (v6)
  {
    v8 = *v4;
    if (*(a4 + 100) == 1)
    {
      *a3 = v8;
      *(a3 + 4) = *(v4 + 4);
      *(a3 + 8) = *(v4 + 8);
      *(a3 + 10) = *(v4 + 10);
      *(a3 + 12) = *(v4 + 12);
      LOWORD(v4) = *(v4 + 14);
    }

    else
    {
      *a3 = bswap32(v8);
      *(a3 + 4) = bswap32(*(v4 + 4));
      *(a3 + 8) = bswap32(*(v4 + 8)) >> 16;
      *(a3 + 10) = bswap32(*(v4 + 10)) >> 16;
      *(a3 + 12) = bswap32(*(v4 + 12)) >> 16;
      LODWORD(v4) = bswap32(*(v4 + 14)) >> 16;
    }

    *(a3 + 14) = v4;
  }

  return result;
}

uint64_t MTParse_HIDMouseReport(_BYTE *a1, int a2, _BYTE *a3)
{
  if (a1)
  {
    v4 = a3 == 0;
  }

  else
  {
    v4 = 1;
  }

  result = !v4 && a2 > 3;
  if (result == 1)
  {
    *a3 = *a1;
    a3[1] = a1[1];
    a3[2] = a1[2];
    a3[3] = a1[3];
    if (a2 < 5)
    {
      v7 = 0;
      a3[4] = 0;
    }

    else
    {
      a3[4] = a1[4];
      v7 = a1[5];
    }

    a3[5] = v7;
  }

  return result;
}

uint64_t MTParse_HIDRelativePointerReport(uint64_t a1, int a2, uint64_t a3)
{
  v3 = 0;
  if (a2 >= 24 && a1 && a3)
  {
    *a3 = *a1;
    v4 = *(a1 + 1);
    *(a3 + 1) = v4;
    if (v4 == 1)
    {
      v5 = *(a1 + 2);
      *(a3 + 2) = v5;
      *(a3 + 4) = *(a1 + 4);
      *(a3 + 8) = *(a1 + 8);
      *(a3 + 12) = *(a1 + 12);
      *(a3 + 16) = *(a1 + 16);
      *(a3 + 20) = *(a1 + 20);
      if (!v5)
      {
        *(a3 + 2) = 400;
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

uint64_t MTParse_HIDRelativePointerV2Report(uint64_t a1, int a2, uint64_t a3)
{
  v3 = 0;
  if (a2 >= 32 && a1 && a3)
  {
    *a3 = *a1;
    v4 = *(a1 + 1);
    *(a3 + 1) = v4;
    if (v4 == 1)
    {
      v5 = *(a1 + 2);
      *(a3 + 2) = v5;
      *(a3 + 4) = *(a1 + 4);
      *(a3 + 8) = *(a1 + 8);
      *(a3 + 12) = *(a1 + 12);
      *(a3 + 16) = *(a1 + 16);
      *(a3 + 20) = *(a1 + 20);
      *(a3 + 24) = *(a1 + 24);
      if (!v5)
      {
        *(a3 + 2) = 400;
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

uint64_t MTParse_HIDOffTableHeightReport(uint64_t a1, int a2, uint64_t a3)
{
  result = 0;
  if (a2 >= 8 && a1 && a3)
  {
    *a3 = *a1;
    v5 = *(a1 + 1);
    *(a3 + 1) = v5;
    if (v5 == 1)
    {
      *(a3 + 2) = *(a1 + 2);
      *(a3 + 4) = *(a1 + 4);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t MTConvert_V4HeaderToV2Header@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 24) = -1431655766;
  *a2 = *result;
  *(a2 + 8) = *(result + 8);
  *(a2 + 12) = 0;
  *(a2 + 14) = *(result + 18);
  v2 = *(result + 22);
  *(a2 + 16) = v2;
  if (v2)
  {
    v3 = *(result + 16) / v2;
  }

  else
  {
    LOBYTE(v3) = 96;
  }

  *(a2 + 17) = v3;
  *(a2 + 18) = *(result + 28);
  *(a2 + 20) = *(result + 24);
  *(a2 + 22) = *(result + 30);
  *(a2 + 24) = 0;
  return result;
}

uint64_t *MTConvert_V3HeaderToV2Header@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = 0;
  *(a2 + 24) = -1431655766;
  v3 = *result;
  *a2 = *result;
  *(a2 + 8) = *(result + 2);
  *(a2 + 12) = 0;
  if (v3 == 115)
  {
    v2 = *(result + 6);
  }

  *(a2 + 14) = v2;
  v4 = *(result + 14);
  *(a2 + 16) = v4;
  if (v4)
  {
    v5 = *(result + 6) / v4;
  }

  else
  {
    LOBYTE(v5) = 96;
  }

  *(a2 + 17) = v5;
  *(a2 + 18) = *(result + 10);
  *(a2 + 20) = *(result + 4);
  *(a2 + 22) = *(result + 11);
  *(a2 + 24) = 0;
  return result;
}

uint64_t MTConvert_CompactHeaderToV2Header@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 24) = -1431655766;
  *a2 = *result;
  *(a2 + 1) = 2048;
  *(a2 + 3) = 1;
  *(a2 + 4) = *(result + 4);
  *(a2 + 8) = *(result + 3);
  *(a2 + 9) = 0;
  *(a2 + 11) = 4;
  *(a2 + 12) = 0;
  *(a2 + 16) = *(result + 2);
  *(a2 + 17) = 16;
  *(a2 + 18) = 0;
  *(a2 + 21) = 0;
  return result;
}

double MTConvert_CompactV3HeaderToV2Header@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 24) = -1431655766;
  *a2 = *a1;
  *(a2 + 1) = 2048;
  *(a2 + 3) = 1;
  *(a2 + 4) = *(a1 + 4);
  result = 2.05226843e-289;
  *(a2 + 8) = 0x4000000;
  *(a2 + 12) = 0;
  *(a2 + 16) = 4608;
  *(a2 + 18) = 0;
  *(a2 + 21) = 0;
  return result;
}

double MTConvert_CompactV5HeaderToV2Header@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 24) = -1431655766;
  *a2 = *a1;
  *(a2 + 1) = 3072;
  *(a2 + 3) = 1;
  *(a2 + 4) = *(a1 + 8);
  result = 2.05226843e-289;
  *(a2 + 8) = 0x4000000;
  *(a2 + 12) = 0;
  *(a2 + 16) = 4608;
  *(a2 + 18) = 0;
  *(a2 + 21) = 0;
  return result;
}

double MTConvert_CompactV9HeaderToV2Header@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 24) = -1431655766;
  *a2 = *a1;
  *(a2 + 1) = 1792;
  *(a2 + 3) = 2;
  *(a2 + 4) = *(a1 + 2);
  result = 2.05226843e-289;
  *(a2 + 8) = 0x4000000;
  *(a2 + 12) = 0;
  v3 = *(a1 + 1);
  *(a2 + 16) = v3 & 3;
  *(a2 + 17) = 22;
  *(a2 + 18) = 0;
  *(a2 + 20) = v3 >> 2;
  *(a2 + 22) = 0;
  *(a2 + 24) = *(a1 + 6);
  return result;
}

uint64_t MTConvert_CompactV10HeaderToV2Header@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 24) = -1431655766;
  *a2 = *result;
  *(a2 + 1) = 4352;
  *(a2 + 3) = 2;
  *(a2 + 4) = (3125 * *(result + 1) * 0x68DB8BAC710CCuLL) >> 64;
  *(a2 + 8) = *(result + 14);
  *(a2 + 9) = 1536;
  *(a2 + 11) = 4;
  *(a2 + 12) = 0;
  *(a2 + 14) = *(result + 15);
  *(a2 + 16) = *(result + 13) >> 4;
  *(a2 + 17) = 19;
  *(a2 + 18) = 0;
  *(a2 + 22) = 0;
  *(a2 + 24) = *(result + 16);
  return result;
}

uint64_t MTParse_SABinary::$_1::__invoke(uint64_t *a1, uint64_t a2, unsigned __int8 *a3)
{
  v5 = *(a2 + 18);
  v3 = a2 + 18;
  v4 = v5;
  if (v5 == 12293)
  {
    return MTParse_SABinary_FireflyPaths(v3, a3, *a1, a1[1]);
  }

  if (v4 == 12288)
  {
    return MTParse_SABinary_Paths(v3, a3, *a1, a1[1]);
  }

  return 1;
}

uint64_t MTParse_SABinary_FireflyPaths(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v64 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 2);
  if (v4 < 4)
  {
    goto LABEL_4;
  }

  v6 = *a2;
  if (((v6 << 6) | 4uLL) > v4)
  {
    goto LABEL_4;
  }

  *(a3 + 96) = v6;
  v8 = *(a2 + 1);
  *(a3 + 100) = v8;
  *(a3 + 97) = 60;
  *(a3 + 72) = v6;
  *(a3 + 68) = v8;
  *(a3 + 11) = 1;
  if (*a2 - 3 >= 0xFFFFFFFE)
  {
    v12 = 0;
    v13 = (a3 + 172);
    v14 = a2 + 52;
    v15 = vdup_n_s32(0x42C80000u);
    do
    {
      v16 = *v14;
      v17 = *(v14 + 2);
      *v13 = v17;
      *(v13 - 1) = v16;
      v18 = bswap32(v16);
      if (*(a4 + 100) != 1)
      {
        LODWORD(v16) = v18;
      }

      *(v13 - 2) = v16;
      v19 = bswap32(*(v13 - 1));
      if (*(a4 + 100) == 1)
      {
        v20 = *(v13 - 1);
      }

      else
      {
        v20 = v19;
      }

      *(v13 - 1) = v20;
      v21 = bswap32(v17);
      if (*(a4 + 100) == 1)
      {
        v22 = v17;
      }

      else
      {
        v22 = v21;
      }

      *v13 = v22;
      v23 = *(v14 - 3);
      v24 = *(v14 - 2);
      *(v13 - 6) = *(v14 - 1);
      *(v13 - 10) = v24;
      *(v13 - 14) = v23;
      v25 = *(v13 - 12);
      v26 = bswap32(*(v13 - 13));
      if (*(a4 + 100) == 1)
      {
        v27 = *(v13 - 13);
      }

      else
      {
        v27 = v26;
      }

      *(v13 - 13) = v27;
      v28 = bswap32(v25);
      if (*(a4 + 100) == 1)
      {
        v29 = v25;
      }

      else
      {
        v29 = v28;
      }

      *(v13 - 12) = v29;
      v30 = *(v13 - 10);
      v31 = bswap32(*(v13 - 11));
      if (*(a4 + 100) == 1)
      {
        v32 = *(v13 - 11);
      }

      else
      {
        v32 = v31;
      }

      *(v13 - 11) = v32;
      v33 = bswap32(v30);
      if (*(a4 + 100) == 1)
      {
        v34 = v30;
      }

      else
      {
        v34 = v33;
      }

      *(v13 - 10) = v34;
      v35 = *(v13 - 8);
      v36 = bswap32(*(v13 - 9));
      if (*(a4 + 100) == 1)
      {
        v37 = *(v13 - 9);
      }

      else
      {
        v37 = *&v36;
      }

      *(v13 - 9) = v37;
      v38 = v37;
      v39 = bswap32(v35);
      if (*(a4 + 100) == 1)
      {
        v39 = v35;
      }

      *(v13 - 8) = v39;
      v40 = *(v13 - 6);
      v41 = bswap32(*(v13 - 7));
      if (*(a4 + 100) == 1)
      {
        v42 = *(v13 - 7);
      }

      else
      {
        v42 = v41;
      }

      *(v13 - 7) = v42;
      v43 = *(v13 - 5);
      v44 = bswap32(*(v13 - 4));
      if (*(a4 + 100) == 1)
      {
        v45 = *(v13 - 4);
      }

      else
      {
        v45 = v44;
      }

      *(v13 - 4) = v45;
      v46 = bswap32(v40);
      if (*(a4 + 100) == 1)
      {
        v47 = v40;
      }

      else
      {
        v47 = v46;
      }

      *(v13 - 6) = v47;
      v48 = bswap32(v43);
      if (*(a4 + 100) == 1)
      {
        v49 = v43;
      }

      else
      {
        v49 = v48;
      }

      *(v13 - 5) = v49;
      v50 = *(a4 + 100);
      _S1 = *(v14 + 3);
      __asm { FCVT            H1, S1 }

      v55 = bswap32(*(v13 - 6)) >> 16;
      v56 = __rev16(_S1);
      _ZF = v50 == 1;
      if (v50 == 1)
      {
        v58 = *(v13 - 6);
      }

      else
      {
        v58 = v55;
      }

      if (_ZF)
      {
        v59 = _S1;
      }

      else
      {
        v59 = v56;
      }

      *(v13 - 5) = v59;
      *(a3 + 113) = 1;
      *(v13 - 6) = v58 | 0x1000;
      if (*(v13 - 54) != 7 && *(a4 + 184))
      {
        if (*(a4 + 133) == 1)
        {
          mt_CachePropertiesForDevice(a4);
        }

        v60 = MTLoggingFramework();
        if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
        {
          v61 = *(a4 + 64);
          *buf = 134217984;
          v63 = v61;
          _os_log_impl(&dword_25AD59000, v60, OS_LOG_TYPE_DEFAULT, "Non tstamp-synced contact detected. Clearing device timestamp offset (deviceID 0x%llX)", buf, 0xCu);
        }

        *(a4 + 184) = 0;
        v38 = *(v13 - 9);
      }

      if (v38 == 0.0 || *(v13 - 8) == 0.0)
      {
        *(v13 - 9) = v15;
      }

      v13 += 15;
      ++v12;
      v14 += 64;
    }

    while (v12 < *a2);
    result = 1;
  }

  else
  {
LABEL_4:
    result = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t MTRegisterMultitouchImageCallback(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = 0;
  for (i = (a1 + 1336); *i; ++i)
  {
    if (++v2 == 4)
    {
      return 0;
    }
  }

  *i = a2;
  i[5] = 0;
  v4 = 1;
  *(a1 + 1368) |= 1 << v2;
  *(i + 604) = 0x1000000000002;
  return v4;
}

uint64_t MTRegisterImageCallback(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if (!a1)
  {
    return 0;
  }

  v4 = 0;
  for (i = a1 + 1336; *i; i += 8)
  {
    if (++v4 == 4)
    {
      return 0;
    }
  }

  *i = a2;
  *(i + 40) = 0;
  v6 = 1;
  *(a1 + 1368) |= 1 << v4;
  *(i + 604) = a3;
  *(i + 608) = a4;
  return v6;
}

uint64_t MTRegisterImageCallbackWithRefcon(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5)
{
  if (!a1)
  {
    return 0;
  }

  v5 = 0;
  for (i = a1 + 1336; *i; i += 8)
  {
    if (++v5 == 4)
    {
      return 0;
    }
  }

  *i = a2;
  *(i + 40) = a5;
  v7 = 1;
  *(a1 + 1368) |= 1 << v5;
  *(i + 604) = a3;
  *(i + 608) = a4;
  return v7;
}

uint64_t MTUnregisterImageCallback(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = 0;
    v3 = 0;
    do
    {
      v4 = a1 + 8 * v2;
      if (*(v4 + 1336) == a2)
      {
        *(v4 + 1336) = 0;
        v3 = 1;
        *(a1 + 1368) &= ~(1 << v2);
        *(v4 + 1940) = 0;
      }

      ++v2;
    }

    while (v2 != 4);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t MTAlg_IssueImageCallbacks(uint64_t result, const void *a2, __int128 *a3)
{
  if (result)
  {
    if (a2)
    {
      if (a3)
      {
        v5 = result;
        if (*(result + 1368) || (*(result + 2076) & 8) != 0)
        {
          result = mtalg_FillinValidPixelRange(result, a3);
          if ((*(v5 + 2076) & 8) != 0)
          {
            v9 = *(v5 + 2080);
            result = mt_ImageDescriptorMatchesFilter(a3, &v9);
            if (result)
            {
              v6 = MTImageInfoCreate(a3, *(v5 + 5448 + 8 * *(v5 + 5440)));
              *(v5 + 5448 + 8 * *(v5 + 5440)) = v6;
              *(v5 + 2312) |= 8u;
              result = memcpy(v6 + 20, a2, 2 * v6[9] * v6[8]);
              ++*(v5 + 5440);
            }
          }

          if (*(v5 + 1368))
          {
            for (i = 0; i != 32; i += 8)
            {
              v8 = *(v5 + i + 1336);
              if (v8)
              {
                result = mt_ImageDescriptorMatchesFilter(a3, (v5 + i + 1940));
                if (result)
                {
                  result = v8(v5, a2, a3, *(v5 + i + 1376));
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL mt_ImageDescriptorMatchesFilter(uint64_t a1, int *a2)
{
  v2 = *a2;
  v4 = *a2 == 2147483646 || v2 == 254;
  v5 = *(a1 + 20);
  v6 = v5 == 2147483646 || v2 == 2147483646;
  if (!v6 && v2 != 254)
  {
    return (v5 & v2) != 0 && (a2[1] & *(a1 + 24)) != 0;
  }

  return v5 == 2147483646 && v4;
}

__int16 *MTImageInfoCreate(__int128 *a1, __int16 *a2)
{
  if (!a1)
  {
    return 0;
  }

  if (!a2 || a2[9] * a2[8] < *(a1 + 9) * *(a1 + 8))
  {
    free(a2);
    a2 = malloc_type_malloc(2 * *(a1 + 8) * *(a1 + 9) + 40, 0x1000040F24650D8uLL);
    if (!a2)
    {
      return 0;
    }
  }

  v3 = *a1;
  v4 = a1[1];
  *(a2 + 4) = *(a1 + 4);
  *a2 = v3;
  *(a2 + 1) = v4;
  return a2;
}

double MTEasyInstallPrintCallbacks(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7)
{
  if (a4)
  {
    if (!a1)
    {
      goto LABEL_30;
    }

    v7 = 0;
    v8 = (a1 + 1336);
    while (*v8)
    {
      ++v7;
      ++v8;
      if (v7 == 4)
      {
        goto LABEL_6;
      }
    }

    *v8 = MTImagePrintCallback;
    v8[5] = 0;
    *(a1 + 1368) |= 1 << v7;
    *&result = 0x1000000002;
    *(v8 + 604) = 0x1000000002;
  }

  else
  {
LABEL_6:
    if (!a1)
    {
      goto LABEL_13;
    }
  }

  if (a3)
  {
    v9 = 0;
    v10 = (a1 + 1336);
    while (*v10)
    {
      ++v9;
      ++v10;
      if (v9 == 4)
      {
        goto LABEL_13;
      }
    }

    *v10 = MTImagePrintCallback;
    v10[5] = 0;
    *(a1 + 1368) |= 1 << v9;
    *&result = 0x27FFFFFFELL;
    *(v10 + 604) = 0x27FFFFFFELL;
  }

LABEL_13:
  if (a5)
  {
    if (!a1)
    {
      goto LABEL_30;
    }

    v12 = 0;
    v13 = (a1 + 1336);
    while (*v13)
    {
      ++v12;
      ++v13;
      if (v12 == 4)
      {
        goto LABEL_18;
      }
    }

    *v13 = MTImagePrintCallback;
    v13[5] = 0;
    *(a1 + 1368) |= 1 << v12;
    *&result = 0x1000000000002;
    *(v13 + 604) = 0x1000000000002;
  }

  else
  {
LABEL_18:
    if (!a1)
    {
      goto LABEL_25;
    }
  }

  if (a6)
  {
    v14 = 0;
    v15 = (a1 + 1336);
    while (*v15)
    {
      ++v14;
      ++v15;
      if (v14 == 4)
      {
        goto LABEL_25;
      }
    }

    *v15 = MTImagePrintCallback;
    v15[5] = 0;
    *(a1 + 1368) |= 1 << v14;
    result = 2.22507386e-308;
    *(v15 + 604) = 0x10000000000002;
  }

LABEL_25:
  if (!a1 || !a7)
  {
LABEL_30:
    if (!a2)
    {
      return result;
    }

LABEL_31:
    MTRegisterPathCallback(a1, MTPathPrintCallback);
    return result;
  }

  v16 = 0;
  v17 = (a1 + 1336);
  while (*v17)
  {
    ++v16;
    ++v17;
    if (v16 == 4)
    {
      goto LABEL_30;
    }
  }

  *v17 = MTImagePrintCallback;
  v17[5] = 0;
  *(a1 + 1368) |= 1 << v16;
  result = 2.84809454e-306;
  *(v17 + 604) = 0x80000000000002;
  if (a2)
  {
    goto LABEL_31;
  }

  return result;
}

uint64_t MTImagePrintCallback(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  v6 = MTGetImageRegionName(*(a3 + 5));
  v7 = MTGetImageProcessingStepName(*(a3 + 6));
  result = printf("\nImage #%lu '%s %s': %d X %d  Timestamp: %.3f s\n", v5, v6, v7, *(a3 + 8), *(a3 + 9), *(a3 + 1));
  if (*(a3 + 9) >= 1)
  {
    v9 = 0;
    do
    {
      v10 = *(a3 + 8);
      if (v10 >= 1)
      {
        v11 = 0;
        do
        {
          v12 = *(a2 + 2 * (v11 + v9 * v10));
          if ((*(a3 + 6) - 16) > 0x30)
          {
            printf("%3d ");
          }

          else
          {
            printf("%4x ");
          }

          v10 = *(a3 + 8);
          ++v11;
        }

        while (v11 < v10);
      }

      result = putchar(10);
      ++v9;
    }

    while (v9 < *(a3 + 9));
  }

  return result;
}

const char *MTGetImageRegionName(int a1)
{
  result = "AllRegions";
  if (a1 <= 511)
  {
    if (a1 <= 7)
    {
      if (a1 == 2)
      {
        return "Multitouch";
      }

      if (a1 == 4)
      {
        return "Force";
      }
    }

    else
    {
      switch(a1)
      {
        case 8:
          return "Optical";
        case 254:
          return result;
        case 256:
          return "CommonMode";
      }
    }

    return "Unknown";
  }

  if (a1 < 0x10000)
  {
    switch(a1)
    {
      case 0x200:
        return "NoiseSPA";
      case 0x1000:
        return "StylusX";
      case 0x2000:
        return "StylusY";
    }

    return "Unknown";
  }

  if (a1 == 0x10000)
  {
    return "OrbCore";
  }

  if (a1 == 0x40000)
  {
    return "OrbCrashpad";
  }

  if (a1 != 2147483646)
  {
    return "Unknown";
  }

  return result;
}

const char *MTGetImageProcessingStepName(int a1)
{
  if (a1 > 4095)
  {
    if (a1 >= 0x100000)
    {
      if (a1 == 0x100000)
      {
        return "Smoothed";
      }

      if (a1 == 0x800000)
      {
        return "Patches";
      }
    }

    else
    {
      if (a1 == 4096)
      {
        return "NoiseAdded";
      }

      if (a1 == 0x10000)
      {
        return "Clipped";
      }
    }
  }

  else if (a1 > 255)
  {
    if (a1 == 256)
    {
      return "Baselined";
    }

    if (a1 == 1024)
    {
      return "Scaled8bit";
    }
  }

  else
  {
    if (a1 == 16)
    {
      return "IsBaseline";
    }

    if (a1 == 64)
    {
      return "Unbaselined";
    }
  }

  return "? Step";
}

uint64_t MTPrintImageRegionDescriptors(uint64_t a1)
{
  v10 = 0;
  v9 = 0;
  result = MTAlg_DeviceGetSensorRegionArray(a1, &v9, &v10);
  if (!result)
  {
    printf("Raw Image Buffer %d X %d has sensor regions:\n", *(a1 + 84), *(a1 + 88));
    v3 = v10;
    if (v10)
    {
      v4 = 0;
      v5 = 0;
      do
      {
        v6 = v9;
        v7 = *(v9 + v4);
        if (*(v9 + v4))
        {
          v8 = MTGetImageRegionName(1 << v7);
          printf("\tType %d (%s): start_row=%d rows=%d row_skip=%d : start_col=%d cols=%d hardware_coloffset=%d\n", v7, v8, *(v6 + v4 + 1), *(v6 + v4 + 2), *(v6 + v4 + 3), *(v6 + v4 + 4), *(v6 + v4 + 5), *(v6 + v4 + 6));
          v3 = v10;
        }

        ++v5;
        v4 += 7;
      }

      while (v5 < v3);
    }

    return putchar(10);
  }

  return result;
}

uint64_t MTRegisterForceCentroidCallback(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = 0;
  for (i = (a1 + 1480); *i; ++i)
  {
    if (++v2 == 4)
    {
      return 0;
    }
  }

  *i = a2;
  i[5] = 0;
  v4 = 1;
  *(a1 + 1512) |= 1 << v2;
  return v4;
}

uint64_t MTRegisterForceCentroidCallbackWithRefcon(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return 0;
  }

  v3 = 0;
  for (i = (a1 + 1480); *i; ++i)
  {
    if (++v3 == 4)
    {
      return 0;
    }
  }

  *i = a2;
  i[5] = a3;
  v5 = 1;
  *(a1 + 1512) |= 1 << v3;
  return v5;
}

uint64_t MTUnregisterForceCentroidCallback(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = 0;
  v3 = a1 + 1480;
  while (*(v3 + 8 * v2) != a2)
  {
    if (++v2 == 4)
    {
      return 0;
    }
  }

  *(v3 + 8 * v2) = 0;
  v4 = 1;
  *(a1 + 1512) &= ~(1 << v2);
  return v4;
}

float MTContact_getCentroidPixel(uint64_t a1, float a2, float a3, float a4)
{
  result = a2 + (*(a1 + 32) * a4);
  v5 = a3 + (*(a1 + 36) * a4);
  return result;
}

float MTContact_getEllipseEccentricity(uint64_t a1)
{
  result = 1.0;
  if (a1)
  {
    v2 = *(a1 + 60);
    v3 = *(a1 + 64);
    if (v3 <= 6.0)
    {
      if (v2 > 6.0)
      {
        return v2 / 6.0;
      }
    }

    else
    {
      return v2 / v3;
    }
  }

  return result;
}

double MTContact_getEllipseOrientationDegrees(uint64_t a1)
{
  if (!a1)
  {
    return 0.0;
  }

  result = *(a1 + 56) * 180.0 / 3.14159265;
  *&result = result;
  return result;
}

double MTContact_getEllipseMeanRadius(uint64_t a1)
{
  if (!a1)
  {
    return 0.0;
  }

  *&result = sqrtf(*(a1 + 60) * *(a1 + 64));
  return result;
}

double MTContact_getEllipseMajorAxisRadius(uint64_t a1)
{
  if (!a1)
  {
    return 0.0;
  }

  LODWORD(result) = *(a1 + 60);
  return result;
}

double MTContact_getEllipseMajorAxisVector(uint64_t a1)
{
  if (!a1)
  {
    return 0.0;
  }

  v1 = *(a1 + 60);
  result = __sincos_stret(*(a1 + 56)).__cosval * v1;
  *&result = result;
  return result;
}

double MTContact_getEllipseMinorAxisRadius(uint64_t a1)
{
  if (!a1)
  {
    return 0.0;
  }

  LODWORD(result) = *(a1 + 64);
  return result;
}

double MTContact_getEllipseMinorAxisVector(uint64_t a1)
{
  if (!a1)
  {
    return 0.0;
  }

  v1 = *(a1 + 60);
  result = __sincos_stret(*(a1 + 56) + 1.57079633).__cosval * v1;
  *&result = result;
  return result;
}

uint64_t MTRegisterContactFrameCallback(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = 0;
  for (i = (a1 + 400); *i; ++i)
  {
    if (++v2 == 4)
    {
      return 0;
    }
  }

  *i = a2;
  i[5] = 0;
  v4 = 1;
  *(a1 + 432) |= 1 << v2;
  return v4;
}

uint64_t MTRegisterContactFrameCallbackWithRefcon(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return 0;
  }

  v3 = 0;
  for (i = (a1 + 400); *i; ++i)
  {
    if (++v3 == 4)
    {
      return 0;
    }
  }

  *i = a2;
  i[5] = a3;
  v5 = 1;
  *(a1 + 432) |= 1 << v3;
  return v5;
}

uint64_t MTUnregisterContactFrameCallback(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = 0;
  v3 = a1 + 400;
  while (*(v3 + 8 * v2) != a2)
  {
    if (++v2 == 4)
    {
      return 0;
    }
  }

  *(v3 + 8 * v2) = 0;
  v4 = 1;
  *(a1 + 432) &= ~(1 << v2);
  return v4;
}

uint64_t MTGetPathFrame(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    v2 = 0;
    for (i = 0; i != 32; ++i)
    {
      PathLifeCycle = mtalg_getPathLifeCycle(a1, i);
      if (PathLifeCycle && (*(PathLifeCycle + 56) > 0.0 || (*(PathLifeCycle + 28) - 1) <= 6))
      {
        v7 = (a2 + 96 * v2);
        v2 = (v2 + 1);
        v8 = *(PathLifeCycle + 24);
        *v7 = *(PathLifeCycle + 8);
        v7[1] = v8;
        v9 = *(PathLifeCycle + 40);
        v10 = *(PathLifeCycle + 56);
        v11 = *(PathLifeCycle + 88);
        v7[4] = *(PathLifeCycle + 72);
        v7[5] = v11;
        v7[2] = v9;
        v7[3] = v10;
      }
    }
  }

  return v2;
}

uint64_t MTRegisterPathCallback(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = 0;
  v3 = a1 + 472;
  while (*(v3 + 8 * v2))
  {
    if (++v2 == 4)
    {
      return 0;
    }
  }

  *(v3 + 8 * v2) = a2;
  v4 = 1;
  *(a1 + 504) |= 1 << v2;
  return v4;
}

uint64_t MTRegisterPathCallbackWithRefcon(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return 0;
  }

  v3 = 0;
  for (i = (a1 + 1624); *i; ++i)
  {
    if (++v3 == 4)
    {
      return 0;
    }
  }

  *i = a2;
  i[5] = a3;
  v5 = 1;
  *(a1 + 1656) |= 1 << v3;
  return v5;
}

uint64_t MTUnregisterPathCallback(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = 0;
  v3 = a1 + 472;
  while (*(v3 + 8 * v2) != a2)
  {
    if (++v2 == 4)
    {
      return 0;
    }
  }

  *(v3 + 8 * v2) = 0;
  v4 = 1;
  *(a1 + 504) &= ~(1 << v2);
  return v4;
}

uint64_t MTUnregisterPathCallbackWithRefcon(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = 0;
  v3 = a1 + 1624;
  while (*(v3 + 8 * v2) != a2)
  {
    if (++v2 == 4)
    {
      return 0;
    }
  }

  *(v3 + 8 * v2) = 0;
  v4 = 1;
  *(a1 + 1656) &= ~(1 << v2);
  return v4;
}

void MTPathPrintCallback(uint64_t a1, int a2, unsigned int a3, uint64_t a4)
{
  v4 = *(a4 + 24);
  if (v4 > 0xE)
  {
    return;
  }

  if (a3 <= 7)
  {
    v6 = mt_PathStageNames[a3];
  }

  else
  {
    v6 = "INVALID      ";
  }

  v7 = *(a4 + 60);
  v8 = *(a4 + 64);
  v9 = v7;
  v10 = v8;
  if (v8 <= 6.0)
  {
    v11 = 1.0;
    if (v7 <= 6.0)
    {
      goto LABEL_9;
    }

    v8 = 6.0;
  }

  v11 = v7 / v8;
LABEL_9:
  v12 = v11;
  v13 = *(a4 + 56) * 180.0 / 3.14159265;
  printf("F%3ld @%.3f P%d %s H%d F%d(%5.9fX, %5.9fY)mm(%5.9fX, %5.9fY) %3.2fZTot %3.2fZDen %3.0fg %5.2fMR/%5.2fmR=%4.2f %4.1fdeg %4.1fdeg flags:0x%04X(%5.2fvx, %5.2fvy)-> %5.2fmm/s\n", *a4, *(a4 + 8), a2, v6, *(a4 + 28), v4, *(a4 + 68), *(a4 + 72), *(a4 + 32), *(a4 + 36), *(a4 + 48), *(a4 + 92), *(a4 + 52), v9, v10, v12, v13, *(a4 + 88) * 180.0 / 3.14159265, *(a4 + 84), *(a4 + 76), *(a4 + 80), sqrt(((*(a4 + 80) * *(a4 + 80)) + (*(a4 + 76) * *(a4 + 76)))));
  if (!a3)
  {

    putchar(10);
  }
}

const char *MTGetPathStageName(unsigned int a1)
{
  if (a1 <= 7)
  {
    return mt_PathStageNames[a1];
  }

  else
  {
    return "INVALID      ";
  }
}

__n128 MTPath_getTouchdownContact@<Q0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  PathLifeCycle = mtalg_getPathLifeCycle(a1, a2);
  v5 = *(PathLifeCycle + 152);
  *(a3 + 32) = *(PathLifeCycle + 136);
  *(a3 + 48) = v5;
  v6 = *(PathLifeCycle + 184);
  *(a3 + 64) = *(PathLifeCycle + 168);
  *(a3 + 80) = v6;
  result = *(PathLifeCycle + 104);
  v8 = *(PathLifeCycle + 120);
  *a3 = result;
  *(a3 + 16) = v8;
  return result;
}

__n128 MTPath_getMakeContact@<Q0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  PathLifeCycle = mtalg_getPathLifeCycle(a1, a2);
  v5 = *(PathLifeCycle + 248);
  *(a3 + 32) = *(PathLifeCycle + 232);
  *(a3 + 48) = v5;
  v6 = *(PathLifeCycle + 216);
  *a3 = *(PathLifeCycle + 200);
  *(a3 + 16) = v6;
  result = *(PathLifeCycle + 264);
  v8 = *(PathLifeCycle + 280);
  *(a3 + 64) = result;
  *(a3 + 80) = v8;
  return result;
}

__n128 MTPath_getProximityPeakContact@<Q0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  PathLifeCycle = mtalg_getPathLifeCycle(a1, a2);
  v5 = *(PathLifeCycle + 344);
  *(a3 + 32) = *(PathLifeCycle + 328);
  *(a3 + 48) = v5;
  v6 = *(PathLifeCycle + 376);
  *(a3 + 64) = *(PathLifeCycle + 360);
  *(a3 + 80) = v6;
  result = *(PathLifeCycle + 296);
  v8 = *(PathLifeCycle + 312);
  *a3 = result;
  *(a3 + 16) = v8;
  return result;
}

__n128 MTPath_getBreakContact@<Q0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  PathLifeCycle = mtalg_getPathLifeCycle(a1, a2);
  v5 = *(PathLifeCycle + 440);
  *(a3 + 32) = *(PathLifeCycle + 424);
  *(a3 + 48) = v5;
  v6 = *(PathLifeCycle + 472);
  *(a3 + 64) = *(PathLifeCycle + 456);
  *(a3 + 80) = v6;
  result = *(PathLifeCycle + 392);
  v8 = *(PathLifeCycle + 408);
  *a3 = result;
  *(a3 + 16) = v8;
  return result;
}

__n128 MTPath_getLiftoffContact@<Q0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  PathLifeCycle = mtalg_getPathLifeCycle(a1, a2);
  v5 = *(PathLifeCycle + 536);
  *(a3 + 32) = *(PathLifeCycle + 520);
  *(a3 + 48) = v5;
  v6 = *(PathLifeCycle + 568);
  *(a3 + 64) = *(PathLifeCycle + 552);
  *(a3 + 80) = v6;
  result = *(PathLifeCycle + 488);
  v8 = *(PathLifeCycle + 504);
  *a3 = result;
  *(a3 + 16) = v8;
  return result;
}

double MTPath_getPositionBounds_mm(uint64_t a1, unsigned int a2)
{
  PathLifeCycle = mtalg_getPathLifeCycle(a1, a2);
  if (!PathLifeCycle)
  {
    return 0.0;
  }

  LODWORD(result) = *(PathLifeCycle + 584);
  v4 = *(PathLifeCycle + 592) - *&result;
  v5 = *(PathLifeCycle + 596) - *(PathLifeCycle + 588);
  return result;
}

double MTPath_getMaxSpeed_mm_s(uint64_t a1, unsigned int a2)
{
  PathLifeCycle = mtalg_getPathLifeCycle(a1, a2);
  if (!PathLifeCycle)
  {
    return 0.0;
  }

  LODWORD(result) = *(PathLifeCycle + 600);
  return result;
}

double MTPath_getMaxPressure(uint64_t a1, unsigned int a2)
{
  PathLifeCycle = mtalg_getPathLifeCycle(a1, a2);
  if (!PathLifeCycle)
  {
    return 0.0;
  }

  LODWORD(result) = *(PathLifeCycle + 604);
  return result;
}

double MTPath_getMaxProximity(uint64_t a1, unsigned int a2)
{
  PathLifeCycle = mtalg_getPathLifeCycle(a1, a2);
  if (!PathLifeCycle)
  {
    return 0.0;
  }

  LODWORD(result) = *(PathLifeCycle + 608);
  return result;
}

double MTPath_getMaxEccentricity(uint64_t a1, unsigned int a2)
{
  PathLifeCycle = mtalg_getPathLifeCycle(a1, a2);
  if (!PathLifeCycle)
  {
    return 0.0;
  }

  LODWORD(result) = *(PathLifeCycle + 612);
  return result;
}

uint64_t MTZephyrSetInputDetectionControl(uint64_t a1, int8x8_t *a2)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = vbsl_s8(vcltz_s16(vshl_n_s16(vdup_n_s16(*(a1 + 100) != 1), 0xFuLL)), vrev16_s8(*a2), *a2);
  result = MTDeviceSetReport(a1, 191, v4, 8);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t MTZephyrGetInputDetectionControl(uint64_t a1, int8x8_t *a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v7[0] = 0xAAAAAAAAAAAAAAAALL;
  v6 = -1431655766;
  result = MTDeviceGetReport(a1, 191, v7, 8u, &v6);
  if (!result && v6 == 8)
  {
    v7[0] = vbsl_s8(vcltz_s16(vshl_n_s16(vdup_n_s16(*(a1 + 100) != 1), 0xFuLL)), vrev16_s8(v7[0]), v7[0]);
    *a2 = v7[0];
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t MTZephyrSetNoiseThresholdAndRange(uint64_t a1, int a2, unsigned int a3, unsigned int a4, __int16 a5)
{
  v6 = -1431655766;
  if (*(a1 + 100) == 1)
  {
    LOWORD(v6) = a3;
    HIWORD(v6) = a4;
  }

  else
  {
    LOWORD(v6) = bswap32(a3) >> 16;
    HIWORD(v6) = bswap32(a4) >> 16;
    a5 = __rev16(a5);
  }

  v7 = a5;
  return MTDeviceSetReport(a1, a2, &v6, 6);
}

uint64_t MTZephyrSetAdditiveCompensationParams(uint64_t a1, _OWORD *a2)
{
  v2 = 0;
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v4 = vcltzq_s16(vshlq_n_s16(vmovl_u8(vdup_n_s8(*(a1 + 100) != 1)), 0xFuLL));
  do
  {
    v7[v2] = vbslq_s8(v4, vrev16q_s8(v7[v2]), v7[v2]);
    ++v2;
  }

  while (v2 != 2);
  result = MTDeviceSetReport(a1, 178, v7, 32);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t MTZephyrRequestBaselinedRLE8(uint64_t a1)
{
  MTDeviceSetZephyrParameter(a1, 163, 1);
  MTDeviceSetZephyrParameter(a1, 164, 0);

  return MTDeviceSetZephyrParameter(a1, 165, 1);
}

uint64_t MTZephyrRequestBaselined16(uint64_t a1, char a2)
{
  MTDeviceSetZephyrParameter(a1, 163, a2);
  MTDeviceSetZephyrParameter(a1, 164, 1);

  return MTDeviceSetZephyrParameter(a1, 165, 1);
}

uint64_t MTZephyrRequestUnBaselinedRaw16(uint64_t a1)
{
  MTDeviceSetZephyrParameter(a1, 163, 0);
  MTDeviceSetZephyrParameter(a1, 164, 1);

  return MTDeviceSetZephyrParameter(a1, 165, 0);
}

uint64_t MTZephyrSetRowCalibTable(uint64_t a1, int a2, const char *a3, unsigned __int8 *a4, int a5, int a6)
{
  v9 = 0;
  v27 = *MEMORY[0x277D85DE8];
  v26 = 0xAAAAAAAAAAAAAAAALL;
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v25[5] = v10;
  v25[6] = v10;
  v25[3] = v10;
  v25[4] = v10;
  v25[1] = v10;
  v25[2] = v10;
  v25[0] = v10;
  v24 = a6;
  v11 = v25;
  v12 = a4;
  do
  {
    if (a3)
    {
      printf("\nStoring freq%d %s: ", v9, a3);
    }

    if (a6 >= 1)
    {
      v13 = v24;
      v14 = v12;
      v15 = v11;
      do
      {
        v16 = a5;
        if (a4)
        {
          v16 = *v14;
        }

        *v15 = v16;
        if (a3)
        {
          printf("%2u ", v16);
        }

        ++v15;
        ++v14;
        --v13;
      }

      while (v13);
    }

    ++v9;
    v11 = (v11 + v24);
    v12 += 40;
  }

  while (v9 != 3);
  if (a3)
  {
    printf("\n ");
  }

  v17 = MTDeviceSetReport(a1, a2, v25, 3 * a6);
  v18 = v17;
  if (v17)
  {
    printf("(error 0x%x setting report)\n", v17);
  }

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

uint64_t MTZephyrGetRowCalibTable(uint64_t a1, int a2, const char *a3, _BYTE *a4, int a5)
{
  v23 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    printf("Querying %s table\n", a3);
  }

  v22 = 0xAAAAAAAAAAAAAAAALL;
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v21[5] = v10;
  v21[6] = v10;
  v21[3] = v10;
  v21[4] = v10;
  v21[1] = v10;
  v21[2] = v10;
  v21[0] = v10;
  Report = MTDeviceGetReport(a1, a2, v21, 3 * a5, 0);
  if (a5 <= 40 && a4 && !Report)
  {
    v11 = 0;
    v12 = v21;
    do
    {
      if (a3)
      {
        printf("\nFound freq%d %s: ", v11, a3);
      }

      if (a5 >= 1)
      {
        v13 = a5;
        v14 = a4;
        v15 = v12;
        do
        {
          v17 = *v15++;
          v16 = v17;
          *v14 = v17;
          if (a3)
          {
            printf("%2u ", v16);
          }

          ++v14;
          --v13;
        }

        while (v13);
      }

      ++v11;
      v12 += a5;
      a4 += 40;
    }

    while (v11 != 3);
  }

  v18 = *MEMORY[0x277D85DE8];
  return Report;
}

uint64_t MTZephyrGetPhantomACDMIDColumnSamples(uint64_t a1, int a2, _WORD *a3, int a4)
{
  v5 = a3;
  v12 = 0;
  MTDeviceGetReport(a1, a2, a3, 2 * a4, &v12);
  if (a4 >= 1)
  {
    v7 = *(a1 + 100);
    v8 = a4;
    do
    {
      v9 = *v5;
      v10 = bswap32(v9) >> 16;
      if (v7 != 1)
      {
        LOWORD(v9) = v10;
      }

      *v5++ = v9;
      --v8;
    }

    while (v8);
  }

  return 0;
}

uint64_t MTZephyrSetDemodTable(uint64_t a1, uint64_t a2, signed int a3)
{
  if (a3 > 512)
  {
    printf("Error:  table length (%d) cannot exceed %d!\n", a3, 512);
    return 0;
  }

  else
  {

    return MTDeviceSetReport(a1, 78, a2, a3);
  }
}

uint64_t MTZephyrGetDemodTable(uint64_t a1, void *a2, unsigned int *a3)
{
  v6 = 0;
  if (*a3 > 512)
  {
    printf("Error:  table length (%d) cannot exceed %d!\n", *a3, 512);
    v5 = 0;
    result = 0;
  }

  else
  {
    result = MTDeviceGetReport(a1, 78, a2, *a3, &v6);
    v5 = v6;
  }

  *a3 = v5;
  return result;
}

uint64_t MTZephyrRequestDemodulationStimCount()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v3 = v0;
  v23 = *MEMORY[0x277D85DE8];
  v22[8] = xmmword_25AD7A2A0;
  v22[9] = unk_25AD7A2B0;
  v22[10] = xmmword_25AD7A2C0;
  v22[4] = xmmword_25AD7A260;
  v22[5] = unk_25AD7A270;
  v22[6] = xmmword_25AD7A280;
  v22[7] = unk_25AD7A290;
  v22[0] = xmmword_25AD7A220;
  v22[1] = unk_25AD7A230;
  v22[2] = xmmword_25AD7A240;
  v22[3] = unk_25AD7A250;
  v21[9] = unk_25AD7A360;
  v21[10] = xmmword_25AD7A370;
  v21[11] = unk_25AD7A380;
  v21[12] = xmmword_25AD7A390;
  v21[5] = unk_25AD7A320;
  v21[6] = xmmword_25AD7A330;
  v21[7] = unk_25AD7A340;
  v21[8] = xmmword_25AD7A350;
  v21[1] = unk_25AD7A2E0;
  v21[2] = xmmword_25AD7A2F0;
  v21[3] = unk_25AD7A300;
  v21[4] = xmmword_25AD7A310;
  v20[12] = xmmword_25AD7A460;
  v20[13] = unk_25AD7A470;
  v20[14] = xmmword_25AD7A480;
  v21[0] = xmmword_25AD7A2D0;
  v20[8] = xmmword_25AD7A420;
  v20[9] = unk_25AD7A430;
  v20[10] = xmmword_25AD7A440;
  v20[11] = unk_25AD7A450;
  v20[4] = xmmword_25AD7A3E0;
  v20[5] = unk_25AD7A3F0;
  v20[6] = xmmword_25AD7A400;
  v20[7] = unk_25AD7A410;
  v20[0] = xmmword_25AD7A3A0;
  v20[1] = unk_25AD7A3B0;
  v20[2] = xmmword_25AD7A3C0;
  v20[3] = unk_25AD7A3D0;
  v19[12] = xmmword_25AD7A550;
  v19[13] = unk_25AD7A560;
  v19[14] = xmmword_25AD7A570;
  v19[15] = unk_25AD7A580;
  v19[8] = xmmword_25AD7A510;
  v19[9] = unk_25AD7A520;
  v19[10] = xmmword_25AD7A530;
  v19[11] = unk_25AD7A540;
  v19[4] = xmmword_25AD7A4D0;
  v19[5] = unk_25AD7A4E0;
  v19[6] = xmmword_25AD7A4F0;
  v19[7] = unk_25AD7A500;
  v19[0] = xmmword_25AD7A490;
  v19[1] = unk_25AD7A4A0;
  v19[2] = xmmword_25AD7A4B0;
  v19[3] = unk_25AD7A4C0;
  memcpy(__dst, &unk_25AD7A590, sizeof(__dst));
  memcpy(v17, &unk_25AD7A6A0, sizeof(v17));
  memcpy(v16, &unk_25AD7A7D0, sizeof(v16));
  memcpy(v15, &unk_25AD7A920, sizeof(v15));
  memcpy(v14, &unk_25AD7AA90, sizeof(v14));
  memcpy(v13, &unk_25AD7AC20, sizeof(v13));
  memcpy(v12, &unk_25AD7ADD0, sizeof(v12));
  memcpy(v11, &unk_25AD7AFA0, sizeof(v11));
  v4 = 496;
  v5 = v10;
  memcpy(v10, &unk_25AD7B180, sizeof(v10));
  if (v2 <= 31)
  {
    if (v2 == 31)
    {
      v5 = v11;
      v4 = 480;
    }

    else if (v2 <= 29)
    {
      if (v2 <= 27)
      {
        if (v2 <= 25)
        {
          if (v2 <= 23)
          {
            if (v2 <= 21)
            {
              if (v2 <= 19)
              {
                if (v2 <= 17)
                {
                  if (v2 == 17)
                  {
                    v5 = v19;
                    v4 = 256;
                  }

                  else if (v2 <= 15)
                  {
                    v6 = v2 <= 13;
                    if (v2 <= 13)
                    {
                      v2 = 12;
                    }

                    else
                    {
                      v2 = 14;
                    }

                    if (v6)
                    {
                      v4 = 176;
                    }

                    else
                    {
                      v4 = 208;
                    }

                    if (v6)
                    {
                      v5 = v22;
                    }

                    else
                    {
                      v5 = v21;
                    }
                  }

                  else
                  {
                    v5 = v20;
                    v4 = 240;
                    v2 = 16;
                  }
                }

                else
                {
                  v5 = __dst;
                  v4 = 272;
                  v2 = 18;
                }
              }

              else
              {
                v5 = v17;
                v4 = 304;
                v2 = 20;
              }
            }

            else
            {
              v5 = v16;
              v4 = 336;
              v2 = 22;
            }
          }

          else
          {
            v5 = v15;
            v4 = 368;
            v2 = 24;
          }
        }

        else
        {
          v5 = v14;
          v4 = 400;
          v2 = 26;
        }
      }

      else
      {
        v5 = v13;
        v4 = 432;
        v2 = 28;
      }
    }

    else
    {
      v5 = v12;
      v4 = 464;
      v2 = 30;
    }
  }

  else
  {
    v2 = 32;
  }

  MTZephyrSetDemodTable(v3, v5, v4);
  v9 = -86;
  MTDeviceSetReport(v3, 79, &v9, 1);
  v7 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t MTRegisterButtonStateCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  if (a1 && a2)
  {
    v4 = 0;
    for (i = (a1 + 616); *i; ++i)
    {
      if (++v4 == 4)
      {
        return 0;
      }
    }

    *i = a2;
    i[5] = a3;
    v3 = 1;
    *(a1 + 648) |= 1 << v4;
  }

  return v3;
}

uint64_t MTUnregisterButtonStateCallback(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    v3 = 0;
    v4 = a1 + 616;
    while (*(v4 + 8 * v3) != a2)
    {
      if (++v3 == 4)
      {
        return 0;
      }
    }

    *(v4 + 8 * v3) = 0;
    v2 = 1;
    *(a1 + 648) &= ~(1 << v3);
  }

  return v2;
}

uint64_t mt_PostTrackingCallbacks(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 | a2)
  {
    v4 = result;
    if (result)
    {
      if (*(result + 720))
      {
        for (i = 0; i != 32; i += 8)
        {
          v9 = *(v4 + i + 688);
          if (v9)
          {
            result = v9(v4, a2, a3, a4, *(v4 + i + 728));
          }
        }
      }
    }
  }

  return result;
}

uint64_t mt_PostRelativePointerCallbacks(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result)
  {
    v5 = result;
    if (*(result + 1728))
    {
      for (i = 0; i != 32; i += 8)
      {
        v11 = *(v5 + i + 1696);
        if (v11)
        {
          result = v11(v5, a2, a3, a4, a5, *(v5 + i + 1736));
        }
      }
    }
  }

  return result;
}

uint64_t MTRegisterRelativePointerCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  if (a1 && a2)
  {
    v4 = 0;
    for (i = (a1 + 1696); *i; ++i)
    {
      if (++v4 == 4)
      {
        return 0;
      }
    }

    *i = a2;
    i[5] = a3;
    v3 = 1;
    *(a1 + 1728) |= 1 << v4;
  }

  return v3;
}

uint64_t MTUnregisterRelativePointerCallback(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    v3 = 0;
    v4 = a1 + 1696;
    while (*(v4 + 8 * v3) != a2)
    {
      if (++v3 == 4)
      {
        return 0;
      }
    }

    *(v4 + 8 * v3) = 0;
    v2 = 1;
    *(a1 + 1728) &= ~(1 << v3);
  }

  return v2;
}

uint64_t MTRegisterTrackingCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  if (a1 && a2)
  {
    v4 = 0;
    for (i = (a1 + 688); *i; ++i)
    {
      if (++v4 == 4)
      {
        return 0;
      }
    }

    *i = a2;
    i[5] = a3;
    v3 = 1;
    *(a1 + 720) |= 1 << v4;
  }

  return v3;
}

uint64_t MTUnregisterTrackingCallback(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    v3 = 0;
    v4 = a1 + 688;
    while (*(v4 + 8 * v3) != a2)
    {
      if (++v3 == 4)
      {
        return 0;
      }
    }

    *(v4 + 8 * v3) = 0;
    v2 = 1;
    *(a1 + 720) &= ~(1 << v3);
  }

  return v2;
}

uint64_t mt_PostOffTableHeightCallbacks(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    v5 = result;
    if (*(result + 204) != a2)
    {
      if (*(result + 792))
      {
        for (i = 0; i != 32; i += 8)
        {
          v9 = *(v5 + i + 760);
          if (v9)
          {
            result = v9(v5, a2, a3, a4, *(v5 + i + 800));
          }
        }
      }

      *(v5 + 204) = a2;
    }
  }

  return result;
}

uint64_t MTRegisterOffTableHeightCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  if (a1 && a2)
  {
    v4 = 0;
    for (i = (a1 + 760); *i; ++i)
    {
      if (++v4 == 4)
      {
        return 0;
      }
    }

    *i = a2;
    i[5] = a3;
    v3 = 1;
    *(a1 + 792) |= 1 << v4;
  }

  return v3;
}

uint64_t MTUnregisterOffTableHeightCallback(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    v3 = 0;
    v4 = a1 + 760;
    while (*(v4 + 8 * v3) != a2)
    {
      if (++v3 == 4)
      {
        return 0;
      }
    }

    *(v4 + 8 * v3) = 0;
    v2 = 1;
    *(a1 + 792) &= ~(1 << v3);
  }

  return v2;
}

uint64_t MTRegisterOpticalProximityChangedCallback(uint64_t a1, uint64_t a2, __int16 a3)
{
  v3 = 0;
  if (a1 && a2)
  {
    v4 = 0;
    while (*(a1 + 1916 + 8 * v4 - 1084))
    {
      if (++v4 == 4)
      {
        return 0;
      }
    }

    *(a1 + 1916 + 8 * v4 - 1084) = a2;
    *(a1 + 1916 + 2 * v4) = a3;
    v3 = 1;
    *(a1 + 864) |= 1 << v4;
  }

  return v3;
}

uint64_t MTUnregisterOpticalProximityChangedCallback(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    v3 = 0;
    while (*(a1 + 1916 + 8 * v3 - 1084) != a2)
    {
      if (++v3 == 4)
      {
        return 0;
      }
    }

    *(a1 + 1916 + 8 * v3 - 1084) = 0;
    *(a1 + 1916 + 2 * v3) = 0;
    v2 = 1;
    *(a1 + 864) &= ~(1 << v3);
  }

  return v2;
}

uint64_t MTRegisterFarfieldProximityChangedCallback(uint64_t a1, uint64_t a2, __int16 a3)
{
  v3 = 0;
  if (a1 && a2)
  {
    v4 = 0;
    while (*(a1 + 1928 + 8 * v4 - 1024))
    {
      if (++v4 == 4)
      {
        return 0;
      }
    }

    *(a1 + 1928 + 8 * v4 - 1024) = a2;
    *(a1 + 1928 + 2 * v4) = a3;
    v3 = 1;
    *(a1 + 936) |= 1 << v4;
  }

  return v3;
}

uint64_t MTUnregisterFarfieldProximityChangedCallback(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    v3 = 0;
    while (*(a1 + 1928 + 8 * v3 - 1024) != a2)
    {
      if (++v3 == 4)
      {
        return 0;
      }
    }

    *(a1 + 1928 + 8 * v3 - 1024) = 0;
    *(a1 + 1928 + 2 * v3) = 0;
    v2 = 1;
    *(a1 + 936) &= ~(1 << v3);
  }

  return v2;
}

uint64_t MTRegisterInputDetectionCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  if (a1 && a2)
  {
    v4 = 0;
    for (i = (a1 + 976); *i; ++i)
    {
      if (++v4 == 4)
      {
        return 0;
      }
    }

    *i = a2;
    i[5] = a3;
    v3 = 1;
    *(a1 + 1008) |= 1 << v4;
  }

  return v3;
}

uint64_t MTUnregisterInputDetectionCallback(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    v3 = 0;
    v4 = a1 + 976;
    while (*(v4 + 8 * v3) != a2)
    {
      if (++v3 == 4)
      {
        return 0;
      }
    }

    *(v4 + 8 * v3) = 0;
    v2 = 1;
    *(a1 + 1008) &= ~(1 << v3);
  }

  return v2;
}

uint64_t MTDeviceSetInputDetectionCallbackTriggerMask(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 196) = a2;
  }

  return result;
}

uint64_t MTInputDetectionSetEnabled(uint64_t result, __int16 a2)
{
  if (result)
  {
    return mt_SetDetectableInputTypes(result, a2);
  }

  return result;
}

uint64_t MTSetDetectableAndSuppressingInputs(uint64_t a1, __int16 a2, __int16 a3, __int16 a4, __int16 a5)
{
  if (!a1)
  {
    return 3758097090;
  }

  v8 = -21846;
  v7 = -1431655766;
  if (*(a1 + 100) == 1)
  {
    LOWORD(v7) = a2;
    HIWORD(v7) = a3;
    v8 = a4;
  }

  else
  {
    LOWORD(v7) = __rev16(a2);
    HIWORD(v7) = __rev16(a3);
    v8 = __rev16(a4);
    a5 = __rev16(a5);
  }

  v9 = a5;
  if (*(a1 + 114))
  {
    v6 = 8;
  }

  else
  {
    v6 = 4;
  }

  return MTDeviceSetReport(a1, 191, &v7, v6);
}

uint64_t MTSetDetectableInputs(uint64_t a1, unsigned int a2)
{
  if (!a1)
  {
    return 3758097090;
  }

  v8 = 0xAAAAAAAAAAAAAAAALL;
  result = MTDeviceGetReport(a1, 191, &v8, 8u, 0);
  if (!result)
  {
    v5 = __rev16(a2);
    if (*(a1 + 100) == 1)
    {
      v6 = a2;
    }

    else
    {
      v6 = v5;
    }

    LOWORD(v8) = v6;
    if (*(a1 + 114))
    {
      v7 = 8;
    }

    else
    {
      v7 = 4;
    }

    return MTDeviceSetReport(a1, 191, &v8, v7);
  }

  return result;
}

uint64_t MTGetDetectableInputs(uint64_t a1)
{
  if (a1)
  {
    v5 = 0xAAAAAAAAAAAAAAAALL;
    if (MTDeviceGetReport(a1, 191, &v5, 8u, 0))
    {
      return 0;
    }

    else
    {
      v3 = bswap32(v5) >> 16;
      if (*(a1 + 100) == 1)
      {
        return v5;
      }

      else
      {
        return v3;
      }
    }
  }

  else
  {
    return 0;
  }
}

uint64_t MTSetInputsThatSuppressFingers(uint64_t a1, unsigned int a2)
{
  if (!a1)
  {
    return 3758097090;
  }

  v8 = 0xAAAAAAAAAAAAAAAALL;
  result = MTDeviceGetReport(a1, 191, &v8, 8u, 0);
  if (!result)
  {
    v5 = __rev16(a2);
    if (*(a1 + 100) == 1)
    {
      v6 = a2;
    }

    else
    {
      v6 = v5;
    }

    WORD1(v8) = v6;
    if (*(a1 + 114))
    {
      v7 = 8;
    }

    else
    {
      v7 = 4;
    }

    return MTDeviceSetReport(a1, 191, &v8, v7);
  }

  return result;
}

uint64_t MTGetInputsThatSuppressFingers(uint64_t a1)
{
  if (a1)
  {
    v5 = 0xAAAAAAAAAAAAAAAALL;
    if (MTDeviceGetReport(a1, 191, &v5, 8u, 0))
    {
      return 0;
    }

    else
    {
      v3 = bswap32(WORD1(v5)) >> 16;
      if (*(a1 + 100) == 1)
      {
        return WORD1(v5);
      }

      else
      {
        return v3;
      }
    }
  }

  else
  {
    return 0;
  }
}

uint64_t MTDeviceSetFaceDetectionModeEnabled(uint64_t a1, char a2)
{
  if (!a1 || (MTDeviceShouldSkipFaceDetectionMode(a1) & 1) != 0)
  {
    return 0;
  }

  return MTDeviceSetZephyrParameter(a1, 175, a2);
}

uint64_t MTDeviceSetInputDetectionModeForOrientation(uint64_t a1, int a2, int a3)
{
  if (!a1)
  {
    return 3758097090;
  }

  kdebug_trace();
  if (*(a1 + 114))
  {
    v6 = 4096;
  }

  else
  {
    v6 = 0;
  }

  v7 = 3758096385;
  if (a2 > 4)
  {
    if (a2 > 252)
    {
      if (a2 == 253)
      {
        v16 = a1;
        v17 = 4096;
      }

      else
      {
        if (a2 != 254)
        {
          if (a2 == 255)
          {
            mt_PostNotificationEvent(a1, 23);
            mt_PostNotificationEventToDriver(a1, 123);
            v7 = 0;
          }

          goto LABEL_58;
        }

        v16 = a1;
        v17 = 4097;
      }

      v7 = MTSetDetectableAndSuppressingInputs(v16, v17, 9, v6, 0);
      mt_PostNotificationEvent(a1, 31);
      mt_PostNotificationEventToDriver(a1, 131);
      goto LABEL_58;
    }

    if (a2 == 5)
    {
      if ((a3 - 3) >= 2)
      {
        v14 = 927;
      }

      else
      {
        v14 = 923;
      }

      v7 = MTSetDetectableAndSuppressingInputs(a1, v14, 523, v6, 0);
      v9 = 124;
      v10 = 24;
    }

    else
    {
      if (a2 != 6)
      {
        goto LABEL_58;
      }

      if ((a3 - 3) >= 2)
      {
        v12 = 2975;
      }

      else
      {
        v12 = 2971;
      }

      v7 = MTSetDetectableAndSuppressingInputs(a1, v12, 523, v6, 0);
      v9 = 125;
      v10 = 25;
    }

LABEL_48:
    mt_PostNotificationEvent(a1, v10);
    mt_PostNotificationEventToDriver(a1, v9);
    if (!v7)
    {
      v20 = a2 == 4 || (a2 - 1) < 2;
      v7 = MTDeviceSetFaceDetectionModeEnabled(a1, v20);
    }

    goto LABEL_58;
  }

  if (a2 > 1)
  {
    if (a2 == 2)
    {
      if ((a3 - 3) >= 2)
      {
        v15 = -32355;
      }

      else
      {
        v15 = -32359;
      }

      v7 = MTSetDetectableAndSuppressingInputs(a1, v15, 32777, v6, 0);
      v9 = 120;
      v10 = 20;
    }

    else if (a2 == 3)
    {
      if ((a3 - 3) >= 2)
      {
        v18 = 2461;
      }

      else
      {
        v18 = 2457;
      }

      v7 = MTSetDetectableAndSuppressingInputs(a1, v18, 9, v6, 0);
      v9 = 121;
      v10 = 21;
    }

    else
    {
      if ((a3 - 3) >= 2)
      {
        v8 = 2525;
      }

      else
      {
        v8 = 2521;
      }

      v7 = MTSetDetectableAndSuppressingInputs(a1, v8, 73, v6, 0);
      v9 = 122;
      v10 = 22;
    }

    goto LABEL_48;
  }

  if (!a2)
  {
    if ((a3 - 3) >= 2)
    {
      v13 = 413;
    }

    else
    {
      v13 = 409;
    }

    v10 = 9;
    v7 = MTSetDetectableAndSuppressingInputs(a1, v13, 9, v6, 0);
    v9 = 109;
    goto LABEL_48;
  }

  if (a2 == 1)
  {
    if ((a3 - 3) >= 2)
    {
      v11 = 477;
    }

    else
    {
      v11 = 473;
    }

    v7 = MTSetDetectableAndSuppressingInputs(a1, v11, 73, v6, 0);
    v9 = 110;
    v10 = 10;
    goto LABEL_48;
  }

LABEL_58:
  v22 = a2 == 253 || (a2 & 0xFFFE) == 254;
  MTDeviceUpdateUILockState(a1, v22);
  return v7;
}

uint64_t MTDeviceSetTouchMode(uint64_t a1, int a2, int a3)
{
  kdebug_trace();
  if (*(a1 + 114))
  {
    v6 = 4096;
  }

  else
  {
    v6 = 0;
  }

  v7 = 3758096385;
  if (a2 > 252)
  {
    if (a2 == 253)
    {
      v12 = a1;
      v13 = 4096;
    }

    else
    {
      if (a2 != 254)
      {
        if (a2 == 255)
        {
          mt_PostNotificationEvent(a1, 23);
          mt_PostNotificationEventToDriver(a1, 123);
          v7 = 0;
        }

        goto LABEL_29;
      }

      v12 = a1;
      v13 = 4097;
    }

    v7 = MTSetDetectableAndSuppressingInputs(v12, v13, 9, v6, 0);
    mt_PostNotificationEvent(a1, 31);
    mt_PostNotificationEventToDriver(a1, 131);
    goto LABEL_29;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      if ((a3 - 3) >= 2)
      {
        v14 = -31841;
      }

      else
      {
        v14 = -31845;
      }

      v7 = MTSetDetectableAndSuppressingInputs(a1, v14, 523, v6, 0);
      v10 = 25;
      v9 = 25;
    }

    else
    {
      if (a2 != 2)
      {
        goto LABEL_29;
      }

      if ((a3 - 3) >= 2)
      {
        v8 = -32355;
      }

      else
      {
        v8 = -32359;
      }

      v7 = MTSetDetectableAndSuppressingInputs(a1, v8, 32777, v6, 0);
      v9 = 110;
      v10 = 10;
    }
  }

  else
  {
    if ((a3 - 3) >= 2)
    {
      v11 = -32355;
    }

    else
    {
      v11 = -32359;
    }

    v7 = MTSetDetectableAndSuppressingInputs(a1, v11, 9, v6, 0);
    v10 = 21;
    v9 = 21;
  }

  mt_PostNotificationEvent(a1, v10);
  mt_PostNotificationEventToDriver(a1, v9);
  if (!v7)
  {
    v7 = MTDeviceSetFaceDetectionModeEnabled(a1, a2 == 2);
  }

LABEL_29:
  v16 = a2 == 253 || (a2 & 0xFFFE) == 254;
  MTDeviceUpdateUILockState(a1, v16);
  return v7;
}

uint64_t MTDeviceSetSurfaceOrientation(uint64_t a1, int a2)
{
  result = 3758097090;
  if (a1)
  {
    if (a2)
    {
      if (a2 != 2)
      {
        return 3758097095;
      }

      v5 = 2;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    result = MTDeviceSetReport(a1, 220, &v6, 1);
    if (!result)
    {
      mt_UpdateDeviceOrientation(a1, a2, 1);
      return 0;
    }
  }

  return result;
}

uint64_t MTDeviceSetSurfaceOrientationMode(uint64_t a1, int a2)
{
  v4 = 3758097090;
  if (a1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        return 3758097095;
      }

      v5 = 1;
    }

    else
    {
      v5 = 2;
    }

    v8 = v2;
    v9 = v3;
    v7 = v5;
    return MTDeviceSetReport(a1, 221, &v7, 1);
  }

  return v4;
}

uint64_t mt_PostStatisticsChannelEvent(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 1440))
    {
      for (i = 0; i != 32; i += 8)
      {
        v3 = *(v1 + i + 1408);
        if (v3)
        {
          result = v3(v1, 5, v1 + 1972, *(v1 + i + 1992), *(v1 + i + 1996));
        }
      }
    }
  }

  return result;
}

uint64_t mt_StatisticsChannelFrameProcessingEntryExitCallbackFunc(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if (result)
  {
    if ((a4 & 1) == 0)
    {
      return mt_PostStatisticsChannelEvent(result);
    }
  }

  return result;
}

uint64_t mt_InitializeStatisticsChannelState(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if ((*(result + 2072) & 1) == 0)
    {
      result = MTRegisterFrameProcessingEntryExitCallback(result, mt_StatisticsChannelFrameProcessingEntryExitCallbackFunc, 0);
      *(v1 + 2072) = 1;
    }
  }

  return result;
}

uint64_t MTRegisterStatisticsChannelCallback(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1 && a2)
  {
    if ((*(a1 + 2072) & 1) == 0)
    {
      MTRegisterFrameProcessingEntryExitCallback(a1, mt_StatisticsChannelFrameProcessingEntryExitCallbackFunc, 0);
      *(a1 + 2072) = 1;
    }

    v5 = 0;
    v6 = a1 + 1408;
    while (*(v6 + 8 * v5) != a2)
    {
      if (++v5 == 4)
      {
        return 0;
      }
    }

    *(v6 + 8 * v5) = 0;
    result = 1;
    *(a1 + 1440) |= 1 << v5;
  }

  return result;
}

uint64_t MTUnregisterStatisticsChannelCallback(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    v3 = 0;
    v4 = a1 + 1408;
    while (*(v4 + 8 * v3) != a2)
    {
      if (++v3 == 4)
      {
        return 0;
      }
    }

    *(v4 + 8 * v3) = 0;
    v2 = 1;
    *(a1 + 1440) &= ~(1 << v3);
  }

  return v2;
}

uint64_t MTStatisticsChannelGetValues(uint64_t result, unsigned int a2, uint64_t a3, uint64_t a4)
{
  if (result && a2)
  {
    v7 = result;
    if ((*(result + 2072) & 1) == 0)
    {
      result = MTRegisterFrameProcessingEntryExitCallback(result, mt_StatisticsChannelFrameProcessingEntryExitCallbackFunc, 0);
      *(v7 + 2072) = 1;
    }

    v8 = 0;
    if (a2 >= 5)
    {
      v9 = 5;
    }

    else
    {
      v9 = a2;
    }

    v10 = v7 + 1992;
    do
    {
      if (a3)
      {
        *(a3 + 4 * v8) = *(v10 + 4 * v8 - 20);
      }

      if (a4)
      {
        *(a4 + 8 * v8) = *(v10 + 8 * v8);
      }

      ++v8;
    }

    while (v9 != v8);
  }

  return result;
}

uint64_t MTStatisticsChannelGetName(uint64_t result, int a2)
{
  if (result)
  {
    v3 = result;
    if ((*(result + 2072) & 1) == 0)
    {
      MTRegisterFrameProcessingEntryExitCallback(result, mt_StatisticsChannelFrameProcessingEntryExitCallbackFunc, 0);
      *(v3 + 2072) = 1;
    }

    if ((a2 - 6) >= 0xFFFFFFFB)
    {
      return *(v3 + 8 * (a2 - 1) + 2032);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t lsqrt(unsigned int a1)
{
  v1 = 0;
  v2 = 0;
  v3 = 16;
  do
  {
    v1 *= 2;
    v4 = __PAIR64__(v2, a1) >> 30;
    a1 *= 4;
    v5 = v1 >= v4;
    if (v1 < v4)
    {
      v6 = ~v1;
    }

    else
    {
      v6 = 0;
    }

    v2 = v6 + v4;
    if (!v5)
    {
      v1 += 2;
    }

    --v3;
  }

  while (v3);
  return (v1 >> 1);
}

BOOL MTSetCallModeForFrameworkNotDevice(uint64_t a1, int a2)
{
  AlgLibStateRef = MTAlg_GetAlgLibStateRef(a1);
  if (AlgLibStateRef)
  {
    if (a2)
    {
      v4 = 989;
    }

    else
    {
      v4 = 413;
    }

    if (a2)
    {
      v5 = 73;
    }

    else
    {
      v5 = 9;
    }

    *(AlgLibStateRef + 392) = v4;
    *(AlgLibStateRef + 394) = v5;
  }

  return AlgLibStateRef != 0;
}

uint64_t mt_SetDetectableInputTypes(uint64_t result, __int16 a2)
{
  if (result)
  {
    result = MTAlg_GetAlgLibStateRef(result);
    if (result)
    {
      *(result + 392) = a2;
    }
  }

  return result;
}

uint64_t plalgs_GetDetectableInputTypes(uint64_t a1)
{
  result = MTAlg_GetAlgLibStateRef(a1);
  if (result)
  {
    return *(result + 392);
  }

  return result;
}

uint64_t mt_SetSuppressableInputTypes(uint64_t a1, __int16 a2)
{
  result = MTAlg_GetAlgLibStateRef(a1);
  if (result)
  {
    *(result + 394) = a2;
  }

  return result;
}

uint64_t mt_GetSuppressableInputTypes(uint64_t a1)
{
  result = MTAlg_GetAlgLibStateRef(a1);
  if (result)
  {
    return *(result + 394);
  }

  return result;
}

uint64_t _mthid_anyAvailableDeviceOfType(const __CFString *a1)
{
  v2 = _mthid_copyAvailableDevicesInfo();
  v3 = v2;
  if (!v2)
  {
    if (a1)
    {
      return 0;
    }

    v5 = 0;
LABEL_14:
    if (v3)
    {
      v10 = v5 <= 0;
    }

    else
    {
      v10 = 1;
    }

    v9 = !v10;
    if (!v3)
    {
      return v9;
    }

LABEL_21:
    CFRelease(v3);
    return v9;
  }

  Count = CFArrayGetCount(v2);
  v5 = Count;
  if (!a1)
  {
    goto LABEL_14;
  }

  if (Count < 1)
  {
    v9 = 0;
    goto LABEL_21;
  }

  v6 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v3, v6);
    Value = CFDictionaryGetValue(ValueAtIndex, @"Device Type");
    if (Value)
    {
      if (CFStringCompare(Value, a1, 0) == kCFCompareEqualTo)
      {
        break;
      }
    }

    if (v5 == ++v6)
    {
      v9 = 0;
      if (v3)
      {
        goto LABEL_21;
      }

      return v9;
    }
  }

  v9 = 1;
  if (v3)
  {
    goto LABEL_21;
  }

  return v9;
}

__CFArray *_mthid_copyAvailableDevicesInfo()
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 10, MEMORY[0x277CBF128]);
  v1 = Mutable;
  if (Mutable)
  {
    appendAvailableDevicesInfo(Mutable, "AppleUSBMultitouchDriver");
    appendAvailableDevicesInfo(v1, "AppleMultitouchDevice");
  }

  return v1;
}

void appendAvailableDevicesInfo(__CFArray *a1, char *name)
{
  if (name)
  {
    existing = 0;
    v3 = IOServiceMatching(name);
    if (v3)
    {
      v4 = v3;
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (Mutable)
      {
        v6 = Mutable;
        CFDictionarySetValue(Mutable, @"MTHIDDevice", *MEMORY[0x277CBED28]);
        CFDictionarySetValue(v4, @"IOPropertyMatch", v6);
        CFRelease(v6);
        if (!IOServiceGetMatchingServices(0, v4, &existing))
        {
          v7 = IOIteratorNext(existing);
          if (v7)
          {
            v8 = v7;
            do
            {
              v9 = MTDeviceCreateFromService(v8);
              if (v9)
              {
                v10 = v9;
                DeviceInfoForDevice = createDeviceInfoForDevice(v9);
                if (DeviceInfoForDevice)
                {
                  v12 = DeviceInfoForDevice;
                  CFArrayAppendValue(a1, DeviceInfoForDevice);
                  CFRelease(v12);
                }

                CFRelease(v10);
              }

              IOObjectRelease(v8);
              v8 = IOIteratorNext(existing);
            }

            while (v8);
          }

          IOObjectRelease(existing);
        }
      }

      else
      {
        CFRelease(v4);
      }
    }
  }
}

uint64_t _mthid_copyDeviceInfo(uint64_t a1)
{
  result = mt_DeviceCreateFromDeviceID(a1, 0);
  if (result)
  {
    v2 = result;
    DeviceInfoForDevice = createDeviceInfoForDevice(result);
    CFRelease(v2);
    return DeviceInfoForDevice;
  }

  return result;
}

__CFDictionary *createDeviceInfoForDevice(uint64_t a1)
{
  valuePtr = 0;
  v28 = -1431655766;
  v29 = -1431655766;
  ParserType = MTDeviceGetParserType(a1);
  IsBuiltIn = MTDeviceIsBuiltIn(a1);
  v4 = MTDeviceSupportsActuation(a1);
  v5 = MTDeviceSupportsForce(a1);
  v8 = ParserType > 0x3E7 && ParserType - 4000 < 0xFFFFFC18 || ParserType == 2;
  if (MTDeviceGetDeviceID(a1, &valuePtr) || MTDeviceGetSensorSurfaceDimensions(a1, &v29, &v28))
  {
    return 0;
  }

  Mutable = 0;
  if (valuePtr)
  {
    if (v29)
    {
      if (v28)
      {
        v11 = *MEMORY[0x277CBECE8];
        Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        if (Mutable)
        {
          v26 = v28 / 0x64;
          v27 = v29 / 0x64;
          v12 = CFNumberCreate(v11, kCFNumberSInt64Type, &valuePtr);
          if (v12)
          {
            v13 = v12;
            CFDictionarySetValue(Mutable, @"Device ID", v12);
            CFRelease(v13);
          }

          v14 = *MEMORY[0x277CBED28];
          v15 = *MEMORY[0x277CBED10];
          if (IsBuiltIn)
          {
            v16 = *MEMORY[0x277CBED28];
          }

          else
          {
            v16 = *MEMORY[0x277CBED10];
          }

          CFDictionarySetValue(Mutable, @"Built-in", v16);
          if (v8)
          {
            v17 = v14;
          }

          else
          {
            v17 = v15;
          }

          CFDictionarySetValue(Mutable, @"Opaque", v17);
          if (v4)
          {
            v18 = v14;
          }

          else
          {
            v18 = v15;
          }

          CFDictionarySetValue(Mutable, @"SupportsActuation", v18);
          if (v5)
          {
            v19 = v14;
          }

          else
          {
            v19 = v15;
          }

          CFDictionarySetValue(Mutable, @"SupportsForce", v19);
          v20 = CFNumberCreate(v11, kCFNumberSInt32Type, &v27);
          if (v20)
          {
            v21 = v20;
            CFDictionarySetValue(Mutable, @"Surface Width mm", v20);
            CFRelease(v21);
          }

          v22 = CFNumberCreate(v11, kCFNumberSInt32Type, &v26);
          if (v22)
          {
            v23 = v22;
            CFDictionarySetValue(Mutable, @"Surface Height mm", v22);
            CFRelease(v23);
          }

          if (ParserType - 2000 >= 0x3E8)
          {
            v24 = @"Simple";
          }

          else
          {
            v24 = @"Mouse";
          }

          if (ParserType - 1000 >= 0x3E8)
          {
            v25 = v24;
          }

          else
          {
            v25 = @"Trackpad";
          }

          CFDictionarySetValue(Mutable, @"Device Type", v25);
        }
      }
    }
  }

  return Mutable;
}

uint64_t _mthid_copyDeviceInfoForService(io_object_t a1)
{
  result = MTDeviceCreateFromService(a1);
  if (result)
  {
    v2 = result;
    DeviceInfoForDevice = createDeviceInfoForDevice(result);
    CFRelease(v2);
    return DeviceInfoForDevice;
  }

  return result;
}

uint64_t _mthid_getDeviceIDForService(io_registry_entry_t a1)
{
  valuePtr = 0;
  if (a1)
  {
    v2 = *MEMORY[0x277CBECE8];
    CFProperty = IORegistryEntryCreateCFProperty(a1, @"mt-device-id", *MEMORY[0x277CBECE8], 0);
    if (!CFProperty)
    {
      goto LABEL_6;
    }

    v4 = CFProperty;
    v5 = CFGetTypeID(CFProperty);
    if (v5 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v4, kCFNumberSInt64Type, &valuePtr);
    }

    CFRelease(v4);
    if (!valuePtr)
    {
LABEL_6:
      v6 = IORegistryEntryCreateCFProperty(a1, @"Multitouch ID", v2, 0);
      if (v6)
      {
        v7 = v6;
        v8 = CFGetTypeID(v6);
        if (v8 == CFNumberGetTypeID())
        {
          CFNumberGetValue(v7, kCFNumberSInt64Type, &valuePtr);
        }

        CFRelease(v7);
      }
    }
  }

  return valuePtr;
}

uint64_t _mthid_getDeviceIDForRegistryEntryID(uint64_t a1)
{
  v1 = IORegistryEntryIDMatching(a1);
  MatchingService = IOServiceGetMatchingService(0, v1);
  if (!MatchingService)
  {
    return 0;
  }

  v3 = MatchingService;
  DeviceIDForService = _mthid_getDeviceIDForService(MatchingService);
  IOObjectRelease(v3);
  return DeviceIDForService;
}

uint64_t _mthid_isPathCollection(uint64_t result)
{
  if (result)
  {
    if (IOHIDEventGetType() == 11)
    {
      result = IOHIDEventGetIntegerValue();
      if (result)
      {
        return _mthid_pathCollectionGetDeviceID() != 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

const __CFArray *_mthid_pathCollectionGetDeviceID()
{
  result = IOHIDEventGetChildren();
  if (result)
  {
    v1 = result;
    Count = CFArrayGetCount(result);
    if (Count >= 1)
    {
      v3 = (Count - 1);
      do
      {
        CFArrayGetValueAtIndex(v1, v3);
        if (IOHIDEventGetType() == 1)
        {
          IOHIDEventGetVendorDefinedData();
        }
      }

      while (v3-- > 0);
    }

    return 0;
  }

  return result;
}

const __CFArray *_mthid_pathCollectionCopyAllPaths()
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  if (Mutable)
  {
    Children = IOHIDEventGetChildren();
    if (Children)
    {
      v2 = Children;
      Count = CFArrayGetCount(Children);
      if (Count >= 1)
      {
        v4 = Count;
        for (i = 0; i != v4; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v2, i);
          if (_mthid_isPath(ValueAtIndex))
          {
            v7 = CFArrayGetCount(Mutable);
            CFArrayInsertValueAtIndex(Mutable, v7, ValueAtIndex);
          }
        }
      }
    }
  }

  return Mutable;
}

BOOL _mthid_isPath(_BOOL8 result)
{
  if (result)
  {
    return IOHIDEventGetType() == 11 && IOHIDEventGetIntegerValue() == 0;
  }

  return result;
}

const __CFArray *_mthid_pathCollectionCopyTouchingPaths()
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  if (Mutable)
  {
    Children = IOHIDEventGetChildren();
    if (Children)
    {
      v2 = Children;
      Count = CFArrayGetCount(Children);
      if (Count >= 1)
      {
        v4 = Count;
        for (i = 0; i != v4; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v2, i);
          if (_mthid_isPath(ValueAtIndex) && IOHIDEventGetIntegerValue() == 1)
          {
            v7 = CFArrayGetCount(Mutable);
            CFArrayInsertValueAtIndex(Mutable, v7, ValueAtIndex);
          }
        }
      }
    }
  }

  return Mutable;
}

double _mthid_pathCollectionGetPosition()
{
  IOHIDEventGetFloatValue();
  v1 = v0;
  IOHIDEventGetFloatValue();
  return v1;
}

double _mthid_pathGetPosition()
{
  IOHIDEventGetFloatValue();
  v1 = v0;
  IOHIDEventGetFloatValue();
  return v1;
}

double _mthid_pathGetVelocity()
{
  if (!IOHIDEventGetEvent())
  {
    return 0.0;
  }

  IOHIDEventGetFloatValue();
  v1 = v0;
  IOHIDEventGetFloatValue();
  return v1;
}

CFDictionaryRef _mthid_createGestureConfiguration()
{
  keys[2] = *MEMORY[0x277D85DE8];
  valuePtr = 1;
  v0 = *MEMORY[0x277CBECE8];
  v1 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberIntType, &valuePtr);
  Mutable = CFArrayCreateMutable(v0, 0, MEMORY[0x277CBF128]);
  v3 = Mutable;
  keys[0] = @"Version";
  keys[1] = @"Behaviors";
  values[0] = v1;
  values[1] = Mutable;
  if (v1)
  {
    v4 = Mutable == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v8 = CFDictionaryCreate(v0, keys, values, 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    goto LABEL_10;
  }

  v8 = 0;
  v5 = 0;
  if (v1)
  {
LABEL_10:
    CFRelease(v1);
    v5 = v8;
    if (!v3)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (Mutable)
  {
LABEL_8:
    CFRelease(v3);
  }

LABEL_9:
  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t _mthid_isGestureConfigurationValid(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    if (v2 != CFDictionaryGetTypeID())
    {
      return 0;
    }

    valuePtr = -1;
    Value = CFDictionaryGetValue(v1, @"Version");
    v4 = CFDictionaryGetValue(v1, @"Behaviors");
    if (!Value)
    {
      return 0;
    }

    v5 = v4;
    v6 = CFGetTypeID(Value);
    if (v6 != CFNumberGetTypeID())
    {
      return 0;
    }

    v7 = CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
    result = 0;
    if (v7)
    {
      if (v5)
      {
        v8 = CFGetTypeID(v5);
        TypeID = CFArrayGetTypeID();
        result = 0;
        if (v8 == TypeID && valuePtr == 1)
        {
          if (CFArrayGetCount(v5) < 1)
          {
            return 1;
          }

          v10 = 0;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v5, v10);
            v12 = CFGetTypeID(ValueAtIndex);
            if (v12 != CFDictionaryGetTypeID())
            {
              break;
            }

            result = CFDictionaryGetValue(ValueAtIndex, @"BehaviorID");
            if (!result)
            {
              return result;
            }

            v13 = CFGetTypeID(result);
            if (v13 != CFNumberGetTypeID())
            {
              break;
            }

            ++v10;
            Count = CFArrayGetCount(v5);
            result = 1;
            if (v10 >= Count)
            {
              return result;
            }
          }

          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t _mthid_appendBehaviorToGestureConfiguration(const __CFDictionary *a1, void *a2)
{
  keys[1] = *MEMORY[0x277D85DE8];
  isGestureConfigurationValid = _mthid_isGestureConfigurationValid(a1);
  result = 0;
  if (a2)
  {
    if (isGestureConfigurationValid)
    {
      values = a2;
      keys[0] = @"BehaviorID";
      result = CFDictionaryCreate(*MEMORY[0x277CBECE8], keys, &values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (result)
      {
        v6 = result;
        Value = CFDictionaryGetValue(a1, @"Behaviors");
        v11.length = CFArrayGetCount(Value);
        v11.location = 0;
        if (!CFArrayContainsValue(Value, v11, v6))
        {
          CFArrayAppendValue(Value, v6);
        }

        CFRelease(v6);
        result = 1;
      }
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

const __CFDictionary *_mthid_createAggregateGestureConfiguration(const __CFArray *a1)
{
  if (!a1)
  {
    return 0;
  }

  GestureConfiguration = _mthid_createGestureConfiguration();
  if (GestureConfiguration && CFArrayGetCount(a1) >= 1)
  {
    v3 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v3);
      if (_mthid_isGestureConfigurationValid(ValueAtIndex))
      {
        Value = CFDictionaryGetValue(ValueAtIndex, @"Behaviors");
        if (CFArrayGetCount(Value) >= 1)
        {
          v6 = 0;
          do
          {
            v7 = CFArrayGetValueAtIndex(Value, v6);
            v8 = CFDictionaryGetValue(v7, @"BehaviorID");
            _mthid_appendBehaviorToGestureConfiguration(GestureConfiguration, v8);
            ++v6;
          }

          while (v6 < CFArrayGetCount(Value));
        }
      }

      ++v3;
    }

    while (v3 < CFArrayGetCount(a1));
  }

  return GestureConfiguration;
}

CFDataRef _mthid_serializeGestureConfiguration(const void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  error = 0;
  v2 = 0;
  if (_mthid_isGestureConfigurationValid(a1))
  {
    v2 = CFPropertyListCreateData(*MEMORY[0x277CBECE8], a1, kCFPropertyListBinaryFormat_v1_0, 0, &error);
    if (error)
    {
      v3 = MTLoggingFramework();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        Code = CFErrorGetCode(error);
        *buf = 134217984;
        v9 = Code;
        _os_log_impl(&dword_25AD59000, v3, OS_LOG_TYPE_ERROR, "Error serializing gesture configuration. ErrorCode=%ld.", buf, 0xCu);
      }

      CFRelease(error);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return v2;
}

CFPropertyListRef _mthid_unserializeGestureConfiguration(CFDataRef data)
{
  v9 = *MEMORY[0x277D85DE8];
  if (!data)
  {
    goto LABEL_9;
  }

  error = 0;
  v1 = CFPropertyListCreateWithData(*MEMORY[0x277CBECE8], data, 0, 0, &error);
  if (error)
  {
    v2 = MTLoggingFramework();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      Code = CFErrorGetCode(error);
      *buf = 134217984;
      v8 = Code;
      _os_log_impl(&dword_25AD59000, v2, OS_LOG_TYPE_ERROR, "Error unserializing gesture configuration. ErrorCode=%ld.", buf, 0xCu);
    }

    CFRelease(error);
  }

  if (v1 && (_mthid_isGestureConfigurationValid(v1) & 1) == 0)
  {
    CFRelease(v1);
LABEL_9:
    v1 = 0;
  }

  v4 = *MEMORY[0x277D85DE8];
  return v1;
}

CFDataRef _mthid_serializePropertiesEvent(CFDataRef result)
{
  if (result)
  {
    result = IOCFSerialize(result, 1uLL);
    if (!result)
    {
      v1 = MTLoggingFramework();
      if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
      {
        *v2 = 0;
        _os_log_impl(&dword_25AD59000, v1, OS_LOG_TYPE_ERROR, "Error serializing properties dictionary", v2, 2u);
      }

      return 0;
    }
  }

  return result;
}

const __CFString *_mthid_unserializePropertiesEvent(const void *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (!a1 || (v2 = CFGetTypeID(a1), v2 != CFDataGetTypeID()))
  {
    v8 = MTLoggingFramework();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_25AD59000, v8, OS_LOG_TYPE_ERROR, "Error unserializing properties event: Invalid data provided", buf, 2u);
    }

    goto LABEL_10;
  }

  errorString = 0;
  BytePtr = CFDataGetBytePtr(a1);
  Length = CFDataGetLength(a1);
  v5 = IOCFUnserializeBinary(BytePtr, Length, *MEMORY[0x277CBECE8], 0, &errorString);
  if (errorString)
  {
    v6 = MTLoggingFramework();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v15 = errorString;
      _os_log_impl(&dword_25AD59000, v6, OS_LOG_TYPE_ERROR, "Error unserializing properties event vendor defined data Error: %{public}@", buf, 0xCu);
    }

    v7 = errorString;
    goto LABEL_7;
  }

  v9 = v5;
  if (v5)
  {
    v12 = CFGetTypeID(v5);
    if (v12 != CFDictionaryGetTypeID())
    {
      v7 = v9;
LABEL_7:
      CFRelease(v7);
LABEL_10:
      v9 = 0;
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t quantizeFrequencyToPeriodByte(float a1, float a2)
{
  LOBYTE(v2) = 0;
  if (a1 > 0.0 && a2 > 0.0)
  {
    v3 = (roundf(1.0 / (a1 * a2)) + -1.0);
    if (v3 >= 255)
    {
      v3 = 255;
    }

    return (v3 & ~(v3 >> 31));
  }

  return v2;
}

uint64_t quantizeDurationToByte(float a1, float a2)
{
  if (a2 <= 0.0)
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    v2 = llroundf(a1 / a2);
    if (v2 >= 255)
    {
      v2 = 255;
    }

    return (v2 & ~(v2 >> 31));
  }

  return v3;
}

uint64_t quantizeAmplitudeToByte(float a1)
{
  v1 = llroundf(a1 * 255.0);
  if (v1 >= 255)
  {
    v1 = 255;
  }

  return v1 & ~(v1 >> 31);
}

double MTActuationWaveformCreateWithBase@<D0>(int a1@<W0>, uint64_t a2@<X8>, float a3@<S0>, float a4@<S1>)
{
  *(a2 + 136) = 0;
  *(a2 + 120) = 0u;
  *(a2 + 104) = 0u;
  *(a2 + 88) = 0u;
  *(a2 + 72) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 40) = 0u;
  *a2 = a1;
  *(a2 + 4) = a3;
  *(a2 + 8) = a4;
  __asm { FMOV            V0.4S, #1.0 }

  *(a2 + 12) = _Q0;
  __asm { FMOV            V0.2S, #1.0 }

  *(a2 + 28) = result;
  *(a2 + 36) = 0;
  return result;
}

uint64_t MTActuationAppendToWaveform(uint64_t a1, int a2, float a3, float a4, float a5, float a6)
{
  if (!a1)
  {
    return 0;
  }

  v6 = *(a1 + 36);
  if (v6 > 4)
  {
    return 0;
  }

  v7 = a1 + 20 * v6;
  *(v7 + 40) = a2;
  *(v7 + 44) = a3;
  *(v7 + 48) = a4;
  *(v7 + 52) = a5;
  *(v7 + 56) = a6;
  v8 = (v6 + 1);
  *(a1 + 36) = v8;
  return v8;
}

BOOL MTActuationSetBaseMultipliers(float *a1, float a2, float a3, float a4)
{
  if (a1)
  {
    a1[3] = a2;
    a1[4] = a3;
    a1[5] = a4;
  }

  return a1 != 0;
}

BOOL MTActuationSetToneMultipliers(float *a1, float a2, float a3, float a4)
{
  if (a1)
  {
    a1[6] = a2;
    a1[7] = a3;
    a1[8] = a4;
  }

  return a1 != 0;
}

uint64_t MTActuationFillParametricBufferWithWaveform(uint64_t a1, _BYTE *a2, float a3, float a4, float a5, float a6)
{
  v6 = *(a1 + 4) * a4;
  v7 = 1.0;
  v8 = 1.0;
  if (v6 > 0.0)
  {
    v9 = fmin(v6, 70.0);
    if (v9 <= 14.0)
    {
      v9 = 14.0;
    }

    v10 = v9;
    v8 = (v10 / v6) * a4;
  }

  v11 = *(a1 + 8) * a6;
  if (v11 > 0.0)
  {
    v12 = fmin(v11, 8.0);
    if (v12 <= 4.0)
    {
      v12 = 4.0;
    }

    v13 = v12;
    v7 = (v13 / v11) * a6;
  }

  *a2 = *a1;
  a2[1] = llroundf(v8 * *(a1 + 4));
  if (a3 <= 0.0)
  {
    LOBYTE(v15) = 0;
  }

  else
  {
    v14 = llroundf((v7 * *(a1 + 8)) / a3);
    if (v14 >= 255)
    {
      v14 = 255;
    }

    v15 = v14 & ~(v14 >> 31);
  }

  a2[2] = v15;
  if (*(a1 + 36) < 1)
  {
    return 3;
  }

  v16 = (a1 + 56);
  v17 = 3;
  v18 = 1;
  do
  {
    v19 = &a2[v17];
    a2[v17] = *(v16 - 4);
    v20 = llroundf((*(v16 - 1) * a5) * 255.0);
    if (v20 >= 255)
    {
      v20 = 255;
    }

    v19[1] = v20 & ~(v20 >> 31);
    if (a3 <= 0.0)
    {
      LOBYTE(v24) = 0;
      *(v19 + 1) = 0;
    }

    else
    {
      v21 = llroundf((v7 * *(v16 - 3)) / a3);
      if (v21 >= 255)
      {
        v21 = 255;
      }

      v19[2] = v21 & ~(v21 >> 31);
      v22 = llroundf((v7 * *(v16 - 2)) / a3);
      if (v22 >= 255)
      {
        v22 = 255;
      }

      v19[3] = v22 & ~(v22 >> 31);
      if (*v16 <= 0.0)
      {
        LOBYTE(v24) = 0;
      }

      else
      {
        v23 = (roundf(1.0 / (*v16 * a3)) + -1.0);
        if (v23 >= 255)
        {
          v23 = 255;
        }

        v24 = v23 & ~(v23 >> 31);
      }
    }

    v25 = v17 + 5;
    a2[v17 + 4] = v24;
    if (v18 >= *(a1 + 36))
    {
      break;
    }

    ++v18;
    v16 += 5;
    v26 = v17 >= 0x33;
    v17 += 5;
  }

  while (!v26);
  return v25;
}

uint64_t MTActuationBaseWaveformGetTypeForKey(const char *a1)
{
  result = strncmp(a1, "None", 0x40uLL);
  if (result)
  {
    return strncmp(a1, "Gaussian", 0x40uLL) == 0;
  }

  return result;
}

uint64_t MTActuationToneWaveformGetTypeForKey(const char *a1)
{
  result = strncmp(a1, "None", 0x40uLL);
  if (result)
  {
    if (!strncmp(a1, "Sine", 0x40uLL))
    {
      return 1;
    }

    else if (!strncmp(a1, "Square", 0x40uLL))
    {
      return 2;
    }

    else if (!strncmp(a1, "Sawtooth", 0x40uLL))
    {
      return 3;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t mt_GetSurfaceScreenEdges(uint64_t a1)
{
  AlgLibStateRef = MTAlg_GetAlgLibStateRef(a1);
  if (AlgLibStateRef)
  {
    return AlgLibStateRef + 376;
  }

  else
  {
    return 0;
  }
}

__int16 *mtalg_getSurfaceBounds_mm(__int16 *result)
{
  if (result)
  {
    result = MTAlg_GetAlgLibStateRef(result);
    if (result)
    {
      v1 = (result[188] - result[189]) / 100.0;
      v2 = (result[190] - result[191]) / 100.0;
    }
  }

  return result;
}

uint64_t mtalg_IsOpaqueSurface(uint64_t a1)
{
  AlgLibStateRef = MTAlg_GetAlgLibStateRef(a1);
  if (AlgLibStateRef)
  {
    v2 = *(AlgLibStateRef + 482);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

float mtalg_ConvertBinaryForceCentroidToMTFC(uint64_t a1, uint64_t a2, float32x4_t *a3)
{
  if (a1)
  {
    v4 = a2;
    v5 = a2 << 16 >> 48;
    AlgLibStateRef = MTAlg_GetAlgLibStateRef(a1);
    v8 = (AlgLibStateRef + 376);
    if (!AlgLibStateRef)
    {
      v8 = 0;
    }

    v9 = v8[1];
    v10.f32[0] = (v4 - v9);
    v11 = v8[3];
    v10.f32[1] = ((v4 >> 16) - v11);
    v10.f32[2] = v4;
    v10.f32[3] = (v4 >> 16);
    v7.i32[0] = 1120403456;
    v12 = vdupq_lane_s32(v7, 0);
    v12.f32[0] = (*v8 - v9);
    v12.f32[1] = (v8[2] - v11);
    a3[1] = vdivq_f32(v10, v12);
    result = v5;
    a3[2].f32[0] = v5;
  }

  return result;
}

uint64_t mtalg_ComputeContactDensityFromRadii(uint64_t a1, int a2, int a3, int a4)
{
  result = MTAlg_GetAlgLibStateRef(a1);
  if (result)
  {
    LOWORD(result) = alg_ComputeContactDensityFromRadii(a2, a3, a4, *(result + 470), *(result + 472));
  }

  return result;
}

uint64_t mtalg_getPathLifeCycle(uint64_t a1, unsigned int a2)
{
  AlgLibStateRef = MTAlg_GetAlgLibStateRef(a1);
  v4 = AlgLibStateRef + 520 + 616 * a2;
  if (a2 - 1 > 0x1E)
  {
    v4 = AlgLibStateRef + 520;
  }

  if (AlgLibStateRef)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

void mt_InitPathLifeCycles(uint64_t a1)
{
  v2 = 0;
  v3 = (a1 + 520);
  v4 = (a1 + 520);
  do
  {
    if (a1)
    {
      if ((v2 - 1) >= 0x1F)
      {
        v5 = v3;
      }

      else
      {
        v5 = v4;
      }

      bzero(v5, 0x268uLL);
      *v5 = v2;
      *(v5 + 146) = xmmword_25AD7B390;
      *(v5 + 150) = 0u;
    }

    ++v2;
    v4 += 154;
  }

  while (v2 != 32);
}

uint64_t mt_CalculateMTBinaryContactVelocity(uint64_t result, uint64_t a2, double a3)
{
  if (result && a2)
  {
    if (*(a2 + 1) - 7 < 0xFFFFFFFD || *(a2 + 8) == -1 && *(a2 + 10) == -1)
    {
      *(a2 + 8) = 0;
    }

    else
    {
      v3.i32[0] = *(a2 + 4);
      v3.i32[1] = *(a2 + 6);
      v4 = vmovn_s64(vcvtq_s64_f64(vdivq_f64(vcvtq_f64_f32(vmul_f32(vsub_f32(vdiv_f32(vcvt_f32_s32(v3), vdup_n_s32(0x42C80000u)), *(result + 68)), 0x4100000041000000)), vdupq_lane_s64(COERCE__INT64(a3 - *(result + 8)), 0))));
      *(a2 + 8) = v4.i16[0];
      *(a2 + 10) = v4.i16[2];
      v5 = vceqz_s32(vand_s8(v4, 0xFFFF0000FFFFLL));
      if (v5.i32[0] & v5.i32[1])
      {
        *(a2 + 8) = 1;
      }
    }
  }

  return result;
}