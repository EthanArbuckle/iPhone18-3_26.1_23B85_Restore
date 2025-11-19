void sub_247386258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_247386554(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_3()
{
  v2 = *(v0 + 48);
  v3 = *(v0 + 32);

  return [v2 managedDeviceEquivalentTo:v3];
}

uint64_t OUTLINED_FUNCTION_5()
{
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);

  return [v2 managedDeviceEquivalentTo:v3];
}

uint64_t OUTLINED_FUNCTION_0_0(void *a1, const char *a2, uint64_t a3)
{

  return [a1 errorWithDomain:a3 code:-6727 userInfo:0];
}

uint64_t OUTLINED_FUNCTION_2_0()
{

  return LogPrintF();
}

uint64_t OUTLINED_FUNCTION_2_1()
{

  return _LogCategory_Initialize();
}

uint64_t OUTLINED_FUNCTION_3_0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);

  return [a4 countByEnumeratingWithState:va objects:va1 count:16];
}

uint64_t OUTLINED_FUNCTION_4_0(uint64_t a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);

  return [v2 countByEnumeratingWithState:va objects:va1 count:16];
}

uint64_t OUTLINED_FUNCTION_5_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{

  return [v18 countByEnumeratingWithState:&a9 objects:&a18 count:16];
}

uint64_t CoreRCCommandToHIDUsage(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v3 = a1 - 1;
  v4 = 0xC00000041;
  result = 1;
  switch(v3)
  {
    case 0:
      break;
    case 1:
      v4 = 0xC00000042;
      break;
    case 2:
      v4 = 0xC00000043;
      break;
    case 3:
      v4 = 0xC00000044;
      break;
    case 4:
      v4 = 0xC00000045;
      break;
    case 9:
      v4 = 0x100000085;
      break;
    case 10:
      v4 = 0xC0000019FLL;
      break;
    case 11:
      v4 = 0xC000001C0;
      break;
    case 12:
      v4 = 0xC0000022ALL;
      break;
    case 13:
      v4 = 0xC00000046;
      break;
    case 14:
      v4 = 0x100000086;
      break;
    case 15:
      v4 = 0x100000084;
      break;
    case 19:
      v4 = 0x700000062;
      break;
    case 20:
      v4 = 0x700000059;
      break;
    case 21:
      v4 = 0x70000005ALL;
      break;
    case 22:
      v4 = 0x70000005BLL;
      break;
    case 23:
      v4 = 0x70000005CLL;
      break;
    case 24:
      v4 = 0x70000005DLL;
      break;
    case 25:
      v4 = 0x70000005ELL;
      break;
    case 26:
      v4 = 0x70000005FLL;
      break;
    case 27:
      v4 = 0x700000060;
      break;
    case 28:
      v4 = 0x700000061;
      break;
    case 29:
      v4 = 0x700000037;
      break;
    case 30:
      v4 = 0x700000058;
      break;
    case 31:
      v4 = 0x70000009CLL;
      break;
    case 33:
      v4 = 0xC0000009CLL;
      break;
    case 34:
      v4 = 0xC0000009DLL;
      break;
    case 35:
      v4 = 0xC00000083;
      break;
    case 36:
      v4 = 0xC00000173;
      break;
    case 39:
      v4 = 0xC00000095;
      break;
    case 40:
      v4 = 0x70000004BLL;
      break;
    case 41:
      v4 = 0x70000004ELL;
      break;
    case 42:
      v4 = 0xC000000E9;
      break;
    case 43:
      v4 = 0xC000000EALL;
      break;
    case 44:
      v4 = 0xC000000E2;
      break;
    case 45:
      v4 = 0xC000000CDLL;
      break;
    case 46:
      v4 = 0xC000000B1;
      break;
    case 47:
      v4 = 0xC000000B4;
      break;
    case 48:
      v4 = 0xC000000B3;
      break;
    case 49:
      v4 = 0xC000000B8;
      break;
    case 50:
      v4 = 0xC000000C6;
      break;
    case 51:
      v4 = 0xC000000C7;
      break;
    case 54:
      v4 = 0xC00000061;
      break;
    case 55:
      v4 = 0xC00000064;
      break;
    case 56:
      v4 = 0xC000000E6;
      break;
    case 57:
      v4 = 0xC00000152;
      break;
    case 59:
      v4 = 0xC00000153;
      break;
    case 60:
      v4 = 0xC00000154;
      break;
    case 62:
      v4 = 0xC00000155;
      break;
    case 63:
      v4 = 0xFF0100000043;
      break;
    case 64:
      v4 = 0xC00000196;
      break;
    case 66:
      v4 = 0xC000000B0;
      break;
    case 67:
      v4 = 0xC00000066;
      break;
    case 69:
      v4 = 0xC000000B2;
      break;
    case 71:
      v4 = 0xC000000B7;
      break;
    case 72:
      v4 = 0xC00000030;
      break;
    case 73:
      v4 = 0x100000082;
      break;
    case 74:
      v4 = 0x100000083;
      break;
    case 75:
      v4 = 0xC0000006BLL;
      break;
    case 76:
      v4 = 0xC00000069;
      break;
    case 77:
      v4 = 0xC0000006ALL;
      break;
    case 78:
      v4 = 0xC0000006CLL;
      break;
    case 79:
      v7 = 0x700000037;
      goto LABEL_76;
    case 80:
      v7 = 0x100000082;
LABEL_76:
      v4 = v7 + 7;
      break;
    case 81:
      v4 = 0xC000000B6;
      break;
    case 82:
      v4 = 0xC000000B5;
      break;
    case 83:
      v4 = 0xC00000060;
      break;
    case 84:
      v4 = 0xFF0100000004;
      break;
    case 89:
      v4 = 0xC0000008DLL;
      break;
    case 90:
      v4 = 0xFF0100000044;
      break;
    case 91:
      v6 = 65;
      goto LABEL_100;
    case 92:
      v6 = 66;
      goto LABEL_100;
    case 93:
      v6 = 67;
      goto LABEL_100;
    case 94:
      v4 = 0xFF0100000048;
      break;
    case 95:
      v4 = 0xFF0100000049;
      break;
    case 96:
      v4 = 0xFF010000004ALL;
      break;
    case 97:
      v4 = 0xFF010000004BLL;
      break;
    case 98:
      v6 = 72;
      goto LABEL_100;
    case 99:
      v6 = 73;
      goto LABEL_100;
    case 100:
      v6 = 74;
      goto LABEL_100;
    case 101:
      v6 = 75;
      goto LABEL_100;
    case 102:
      v4 = 0xFF0100000050;
      break;
    case 103:
      v4 = 0xFF0100000051;
      break;
    case 104:
      v4 = 0xFF0100000052;
      break;
    case 105:
      v4 = 0xFF0100000053;
      break;
    case 106:
      v6 = 80;
      goto LABEL_100;
    case 107:
      v6 = 81;
      goto LABEL_100;
    case 108:
      v6 = 82;
      goto LABEL_100;
    case 109:
      v6 = 83;
      goto LABEL_100;
    case 110:
      v4 = 0xFF0100000058;
      break;
    case 111:
      v4 = 0xFF0100000059;
      break;
    case 112:
      v4 = 0xFF010000005ALL;
      break;
    case 113:
      v4 = 0xFF010000005BLL;
      break;
    case 114:
      v6 = 88;
      goto LABEL_100;
    case 115:
      v6 = 89;
      goto LABEL_100;
    case 116:
      v6 = 90;
      goto LABEL_100;
    case 117:
      v6 = 91;
LABEL_100:
      v4 = v6 | 0xFF0100000004;
      break;
    default:
      v4 = 0;
      result = 0;
      break;
  }

  *a2 = HIDWORD(v4);
  *a3 = v4;
  return result;
}

uint64_t CoreRCCommandFromHIDUsage(uint64_t *a1, uint64_t a2, unsigned int a3)
{
  v3 = 0;
  v4 = a3 | (a2 << 32);
  if (v4 <= 0xC000000B5)
  {
    if (v4 > 0xC00000041)
    {
      if (v4 > 0xC0000006BLL)
      {
        if (v4 > 0xC000000AFLL)
        {
          if (v4 > 0xC000000B2)
          {
            if (v4 == 0xC000000B3)
            {
              v5 = 49;
            }

            else if (v4 == 0xC000000B4)
            {
              v5 = 48;
            }

            else
            {
              v5 = 83;
            }
          }

          else if (v4 == 0xC000000B0)
          {
            v5 = 67;
          }

          else if (v4 == 0xC000000B1)
          {
            v5 = 47;
          }

          else
          {
            v5 = 70;
          }

          goto LABEL_170;
        }

        if (v4 > 0xC00000094)
        {
          switch(v4)
          {
            case 0xC00000095:
              v5 = 40;
              goto LABEL_170;
            case 0xC0000009CLL:
              v5 = 34;
              goto LABEL_170;
            case 0xC0000009DLL:
              v5 = 35;
              goto LABEL_170;
          }
        }

        else
        {
          switch(v4)
          {
            case 0xC0000006CLL:
              v5 = 79;
              goto LABEL_170;
            case 0xC00000083:
              v5 = 36;
              goto LABEL_170;
            case 0xC0000008DLL:
              v5 = 90;
              goto LABEL_170;
          }
        }
      }

      else if (v4 > 0xC00000060)
      {
        if (v4 > 0xC00000068)
        {
          if (v4 == 0xC00000069)
          {
            v5 = 77;
          }

          else if (v4 == 0xC0000006ALL)
          {
            v5 = 78;
          }

          else
          {
            v5 = 76;
          }

          goto LABEL_170;
        }

        switch(v4)
        {
          case 0xC00000061:
            v5 = 55;
            goto LABEL_170;
          case 0xC00000064:
            v5 = 56;
            goto LABEL_170;
          case 0xC00000066:
            v5 = 68;
            goto LABEL_170;
        }
      }

      else
      {
        if (v4 <= 0xC00000044)
        {
          if (v4 == 0xC00000042)
          {
            v5 = 2;
          }

          else if (v4 == 0xC00000043)
          {
            v5 = 3;
          }

          else
          {
            v5 = 4;
          }

          goto LABEL_170;
        }

        switch(v4)
        {
          case 0xC00000045:
            v5 = 5;
            goto LABEL_170;
          case 0xC00000046:
            v5 = 14;
            goto LABEL_170;
          case 0xC00000060:
            v5 = 84;
            goto LABEL_170;
        }
      }
    }

    else if (v4 <= 0x70000004ALL)
    {
      if (v4 > 0x100000085)
      {
        if (v4 > 0x700000036)
        {
          if (v4 == 0x700000037)
          {
            v5 = 30;
            goto LABEL_170;
          }

          if (v4 == 0x70000003ELL)
          {
            v5 = 80;
            goto LABEL_170;
          }
        }

        else
        {
          if (v4 == 0x100000086)
          {
            v5 = 15;
            goto LABEL_170;
          }

          if (v4 == 0x100000089)
          {
            v5 = 81;
            goto LABEL_170;
          }
        }
      }

      else
      {
        if (v4 > 0x100000083)
        {
          if (v4 == 0x100000084)
          {
            v5 = 16;
          }

          else
          {
            v5 = 10;
          }

          goto LABEL_170;
        }

        if (v4 == 0x100000082)
        {
          v5 = 74;
          goto LABEL_170;
        }

        if (v4 == 0x100000083)
        {
          v5 = 75;
          goto LABEL_170;
        }
      }
    }

    else if (v4 > 0x70000009BLL)
    {
      switch(v4)
      {
        case 0x70000009CLL:
          v5 = 32;
          goto LABEL_170;
        case 0xC00000030:
          v5 = 73;
          goto LABEL_170;
        case 0xC00000041:
          v5 = 1;
          goto LABEL_170;
      }
    }

    else
    {
      switch(v4)
      {
        case 0x70000004BLL:
          v5 = 41;
          goto LABEL_170;
        case 0x70000004ELL:
          v5 = 42;
          goto LABEL_170;
        case 0x700000058:
          v5 = 31;
          goto LABEL_170;
        case 0x700000059:
          v5 = 21;
          goto LABEL_170;
        case 0x70000005ALL:
          v5 = 22;
          goto LABEL_170;
        case 0x70000005BLL:
          v5 = 23;
          goto LABEL_170;
        case 0x70000005CLL:
          v5 = 24;
          goto LABEL_170;
        case 0x70000005DLL:
          v5 = 25;
          goto LABEL_170;
        case 0x70000005ELL:
          v5 = 26;
          goto LABEL_170;
        case 0x70000005FLL:
          v5 = 27;
          goto LABEL_170;
        case 0x700000060:
          v5 = 28;
          goto LABEL_170;
        case 0x700000061:
          v5 = 29;
          goto LABEL_170;
        case 0x700000062:
          v5 = 20;
          goto LABEL_170;
        default:
          return v3;
      }
    }
  }

  else
  {
    if (v4 > 0xC00000229)
    {
      switch(v4)
      {
        case 0xFF0100000043:
          v5 = 64;
          goto LABEL_170;
        case 0xFF0100000044:
          v5 = 91;
          goto LABEL_170;
        case 0xFF0100000045:
          v5 = 92;
          goto LABEL_170;
        case 0xFF0100000046:
          v5 = 93;
          goto LABEL_170;
        case 0xFF0100000047:
          v5 = 94;
          goto LABEL_170;
        case 0xFF0100000048:
          v5 = 95;
          goto LABEL_170;
        case 0xFF0100000049:
          v5 = 96;
          goto LABEL_170;
        case 0xFF010000004ALL:
          v5 = 97;
          goto LABEL_170;
        case 0xFF010000004BLL:
          v5 = 98;
          goto LABEL_170;
        case 0xFF010000004CLL:
          v5 = 99;
          goto LABEL_170;
        case 0xFF010000004DLL:
          v5 = 100;
          goto LABEL_170;
        case 0xFF010000004ELL:
          v5 = 101;
          goto LABEL_170;
        case 0xFF010000004FLL:
          v5 = 102;
          goto LABEL_170;
        case 0xFF0100000050:
          v5 = 103;
          goto LABEL_170;
        case 0xFF0100000051:
          v5 = 104;
          goto LABEL_170;
        case 0xFF0100000052:
          v5 = 105;
          goto LABEL_170;
        case 0xFF0100000053:
          v5 = 106;
          goto LABEL_170;
        case 0xFF0100000054:
          v5 = 107;
          goto LABEL_170;
        case 0xFF0100000055:
          v5 = 108;
          goto LABEL_170;
        case 0xFF0100000056:
          v5 = 109;
          goto LABEL_170;
        case 0xFF0100000057:
          v5 = 110;
          goto LABEL_170;
        case 0xFF0100000058:
          v5 = 111;
          goto LABEL_170;
        case 0xFF0100000059:
          v5 = 112;
          goto LABEL_170;
        case 0xFF010000005ALL:
          v5 = 113;
          goto LABEL_170;
        case 0xFF010000005BLL:
          v5 = 114;
          goto LABEL_170;
        case 0xFF010000005CLL:
          v5 = 115;
          goto LABEL_170;
        case 0xFF010000005DLL:
          v5 = 116;
          goto LABEL_170;
        case 0xFF010000005ELL:
          v5 = 117;
          goto LABEL_170;
        case 0xFF010000005FLL:
          v5 = 118;
          goto LABEL_170;
        default:
          if (v4 == 0xC0000022ALL)
          {
            v5 = 13;
          }

          else
          {
            if (v4 != 0xFF0100000004)
            {
              return v3;
            }

            v5 = 85;
          }

          break;
      }

      goto LABEL_170;
    }

    if (v4 > 0xC000000E9)
    {
      if (v4 <= 0xC00000154)
      {
        if (v4 > 0xC00000152)
        {
          if (v4 == 0xC00000153)
          {
            v5 = 60;
          }

          else
          {
            v5 = 61;
          }

          goto LABEL_170;
        }

        if (v4 == 0xC000000EALL)
        {
          v5 = 44;
          goto LABEL_170;
        }

        if (v4 == 0xC00000152)
        {
          v5 = 58;
          goto LABEL_170;
        }
      }

      else if (v4 <= 0xC00000195)
      {
        if (v4 == 0xC00000155)
        {
          v5 = 63;
          goto LABEL_170;
        }

        if (v4 == 0xC00000173)
        {
          v5 = 37;
          goto LABEL_170;
        }
      }

      else
      {
        switch(v4)
        {
          case 0xC00000196:
            v5 = 65;
            goto LABEL_170;
          case 0xC0000019FLL:
            v5 = 11;
            goto LABEL_170;
          case 0xC000001C0:
            v5 = 12;
            goto LABEL_170;
        }
      }
    }

    else if (v4 <= 0xC000000C6)
    {
      if (v4 <= 0xC000000B7)
      {
        if (v4 == 0xC000000B6)
        {
          v5 = 82;
        }

        else
        {
          v5 = 72;
        }

        goto LABEL_170;
      }

      if (v4 == 0xC000000B8)
      {
        v5 = 50;
        goto LABEL_170;
      }

      if (v4 == 0xC000000C6)
      {
        v5 = 51;
        goto LABEL_170;
      }
    }

    else if (v4 <= 0xC000000E1)
    {
      if (v4 == 0xC000000C7)
      {
        v5 = 52;
        goto LABEL_170;
      }

      if (v4 == 0xC000000CDLL)
      {
        v5 = 46;
        goto LABEL_170;
      }
    }

    else
    {
      switch(v4)
      {
        case 0xC000000E2:
          v5 = 45;
          goto LABEL_170;
        case 0xC000000E6:
          v5 = 57;
          goto LABEL_170;
        case 0xC000000E9:
          v5 = 43;
LABEL_170:
          *a1 = v5;
          return 1;
      }
    }
  }

  return v3;
}

uint64_t OUTLINED_FUNCTION_4_1(void *a1, const char *a2, uint64_t a3)
{

  return [a1 errorWithDomain:a3 code:-6773 userInfo:0];
}

void _IRDecoder_Initialize()
{
  v0 = 0;
  v1 = &unk_27EE50D68;
  do
  {
    v2 = &(&kIRProtocols)[v0];
    v3 = LOWORD((&kIRProtocols)[v0 + 2]);
    *(v2 + 10) = LOWORD((&kIRProtocols)[v0 + 2]) - (LOWORD((&kIRProtocols)[v0 + 2]) >> 1);
    *(v2 + 11) = v3 + (v3 >> 1);
    *(v2 + 14) = v3 - v3 / 5u;
    *(v2 + 15) = v3 + v3 / 5u;
    v4 = *(&kIRProtocols + 4 * v0 + 9);
    *(v2 + 12) = *(&kIRProtocols + 4 * v0 + 9) - (*(&kIRProtocols + 4 * v0 + 9) >> 1);
    *(v2 + 13) = v4 + (v4 >> 1);
    *(v2 + 16) = v4 - v4 / 5u;
    *(v2 + 17) = v4 + v4 / 5u;
    v5 = *(&kIRProtocols + 4 * v0 + 18);
    *(v2 + 20) = *(&kIRProtocols + 4 * v0 + 18) - (*(&kIRProtocols + 4 * v0 + 18) >> 1);
    *(v2 + 21) = v5 + (v5 >> 1);
    *(v2 + 24) = v5 - v5 / 5u;
    *(v2 + 25) = v5 + v5 / 5u;
    v6 = *(&kIRProtocols + 4 * v0 + 19);
    *(v2 + 22) = *(&kIRProtocols + 4 * v0 + 19) - (*(&kIRProtocols + 4 * v0 + 19) >> 1);
    *(v2 + 23) = v6 + (v6 >> 1);
    *(v2 + 26) = v6 - v6 / 5u;
    *(v2 + 27) = v6 + v6 / 5u;
    *(v1 - 1) = &(&kIRProtocols)[v0];
    *v1 = &qword_27EE50D50;
    if (!(v0 * 8))
    {
      if (gLogCategory_IRDecoder > 40)
      {
        goto LABEL_10;
      }

      if (gLogCategory_IRDecoder != -1 || _LogCategory_Initialize())
      {
        _IRDecoder_Initialize_cold_1();
      }
    }

    if (gLogCategory_IRDecoder <= 40 && (gLogCategory_IRDecoder != -1 || _LogCategory_Initialize()))
    {
      v22 = *(v2 + 26);
      v23 = *(v2 + 27);
      v20 = *(v2 + 22);
      v21 = *(v2 + 23);
      v18 = *(v2 + 24);
      v19 = *(v2 + 25);
      v16 = *(v2 + 20);
      v17 = *(v2 + 21);
      v14 = *(v2 + 16);
      v15 = *(v2 + 17);
      v12 = *(v2 + 12);
      v13 = *(v2 + 13);
      v10 = *(v2 + 14);
      v11 = *(v2 + 15);
      v8 = *(v2 + 10);
      v9 = *(v2 + 11);
      v7 = *v2;
      LogPrintF();
    }

LABEL_10:
    v0 += 9;
    v1 += 5;
  }

  while (v0 != 189);
  if (gLogCategory_IRDecoder <= 40 && (gLogCategory_IRDecoder != -1 || _LogCategory_Initialize()))
  {
    _IRDecoder_Initialize_cold_2();
  }
}

const char *OUTLINED_FUNCTION_4_2()
{

  return sel_getName(v0);
}

uint64_t OUTLINED_FUNCTION_1_3()
{

  return objc_opt_class();
}

uint64_t OUTLINED_FUNCTION_4_3()
{

  return objc_opt_class();
}

uint64_t CoreRCWaitForAsyncOperation(void *a1, uint64_t a2)
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3052000000;
  v15 = __Block_byref_object_copy__0;
  v16 = __Block_byref_object_dispose__0;
  v17 = 0;
  v4 = dispatch_semaphore_create(0);
  if (!v4)
  {
    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6728 userInfo:0];
LABEL_9:
    v13[5] = v6;
    goto LABEL_4;
  }

  v5 = v4;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __CoreRCWaitForAsyncOperation_block_invoke;
  v11[3] = &unk_278EA2ED8;
  v11[5] = &v18;
  v11[6] = &v12;
  v11[4] = v4;
  (*(a2 + 16))(a2, v11);
  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  dispatch_release(v5);
  v6 = v13[5];
  if ((v19[3] & 1) == 0 && !v6)
  {
    v10 = objc_alloc(MEMORY[0x277CCA9B8]);
    v6 = [v10 initWithDomain:*MEMORY[0x277CCA590] code:-6736 userInfo:0];
    goto LABEL_9;
  }

LABEL_4:
  v7 = v6;
  if (a1)
  {
    *a1 = v13[5];
  }

  v8 = *(v19 + 24);
  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v18, 8);
  return v8;
}

void sub_247397904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

intptr_t __CoreRCWaitForAsyncOperation_block_invoke(void *a1, void *a2)
{
  *(*(a1[5] + 8) + 24) = a2 == 0;
  if ((*(*(a1[5] + 8) + 24) & 1) == 0)
  {
    *(*(a1[6] + 8) + 40) = [a2 copy];
  }

  v3 = a1[4];

  return dispatch_semaphore_signal(v3);
}

uint64_t CECAddressPreferredForDevice(uint64_t a1, int a2, int a3)
{
  result = 14;
  switch(a3)
  {
    case 0:
      return result;
    case 1:
      result = 2;
      break;
    case 2:
      result = 9;
      break;
    case 3:
      result = 6;
      break;
    case 4:
      result = 8;
      break;
    case 5:
      result = 5;
      break;
    case 6:
      result = 7;
      break;
    case 7:
      result = 10;
      break;
    case 8:
      result = 11;
      break;
    case 9:
    case 10:
    case 11:
      result = 12;
      break;
    case 12:
      result = 13;
      break;
    case 13:
    case 14:
    case 15:
      if (a1 <= 2)
      {
        if (a1)
        {
          result = a1;
          if (a1 != 1)
          {
            goto LABEL_8;
          }
        }

        else if (a2)
        {
          result = 14;
        }

        else
        {
          result = 0;
        }
      }

      else if ((a1 - 3) >= 3)
      {
        if (a1 != 7)
        {
          goto LABEL_8;
        }
      }

      else
      {
        result = a1;
      }

      break;
    default:
LABEL_8:
      result = 15;
      break;
  }

  return result;
}

BOOL CECPhysicalAddressIsValid(unsigned int a1)
{
  if (!a1 || a1 >= 0x1000 && (a1 & 0xFFF) == 0)
  {
    return 1;
  }

  if (a1)
  {
    v2 = (a1 & 0xF0) == 0;
  }

  else
  {
    v2 = 0;
  }

  return !v2 && (a1 & 0xF00) != 0 && a1 > 0xFFF;
}

uint64_t CECPhysicalAddressStringWithAddress(unsigned int a1)
{
  v5 = *MEMORY[0x277D85DE8];
  *__str = 0;
  v1 = snprintf(__str, 8uLL, "%X.%X.%X.%X", a1 >> 12, (a1 >> 8) & 0xF, a1 >> 4, a1 & 0xF);
  if (v1 <= 0)
  {
    CECPhysicalAddressStringWithAddress_cold_2();
  }

  if (v1 >= 8)
  {
    CECPhysicalAddressStringWithAddress_cold_1();
  }

  result = *__str;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CECVendorIDStringWithID(int a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v5 = 0;
  *__str = 0;
  v1 = snprintf(__str, 9uLL, "%02X-%02X-%02X", BYTE2(a1), BYTE1(a1), a1);
  if (v1 <= 0)
  {
    CECVendorIDStringWithID_cold_2();
  }

  if (v1 >= 9)
  {
    CECVendorIDStringWithID_cold_1();
  }

  result = *__str;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

const char *CECDeviceTypeString(unsigned int a1)
{
  if (a1 > 7)
  {
    return "Unknown";
  }

  else
  {
    return CECDeviceTypeString_deviceTypes[a1];
  }
}

const char *CECPowerStatusString(unsigned int a1)
{
  if (a1 > 3)
  {
    return "Unknown";
  }

  else
  {
    return CECPowerStatusString_powerStatuses[a1];
  }
}

const char *CECVersionString(unsigned int a1)
{
  if (a1 > 6)
  {
    return "Unknown";
  }

  else
  {
    return off_278EA3048[a1];
  }
}

const char *CECAddressString(unsigned int a1, int a2)
{
  if (a1 <= 0xE)
  {
    return CECAddressString_names[a1];
  }

  v3 = "Broadcast";
  if (a2)
  {
    v3 = "Unregistered";
  }

  if (a1 == 15)
  {
    return v3;
  }

  else
  {
    return "Unknown";
  }
}

const char *CECAbortReasonString(unsigned int a1)
{
  if (a1 > 5)
  {
    return "Unknown";
  }

  else
  {
    return CECAbortReasonString_reasons[a1];
  }
}

const char *CECMessageTypeString(int a1)
{
  if (a1 <= 191)
  {
    switch(a1)
    {
      case 50:
        result = "<Set Menu Language>";
        break;
      case 51:
        result = "<Clear Analogue Timer>";
        break;
      case 52:
        result = "<Set Analogue Timer>";
        break;
      case 53:
        result = "<Timer Status>";
        break;
      case 54:
        result = "<Standby>";
        break;
      case 55:
      case 56:
      case 57:
      case 58:
      case 59:
      case 60:
      case 61:
      case 62:
      case 63:
      case 64:
      case 72:
      case 73:
      case 74:
      case 75:
      case 76:
      case 77:
      case 78:
      case 79:
      case 80:
      case 81:
      case 82:
      case 83:
      case 84:
      case 85:
      case 86:
      case 87:
      case 88:
      case 89:
      case 90:
      case 91:
      case 92:
      case 93:
      case 94:
      case 95:
      case 96:
      case 97:
      case 98:
      case 99:
      case 101:
      case 102:
      case 104:
      case 105:
      case 106:
      case 107:
      case 108:
      case 109:
      case 110:
      case 111:
      case 116:
      case 117:
      case 118:
      case 119:
      case 120:
      case 121:
      case 123:
      case 124:
      case 127:
      case 136:
      case 148:
      case 149:
      case 150:
      case 152:
      case 155:
      case 156:
        return "Unknown";
      case 65:
        result = "<Play>";
        break;
      case 66:
        result = "<Deck Control>";
        break;
      case 67:
        result = "<Timer Cleared Status>";
        break;
      case 68:
        result = "<User Control Pressed>";
        break;
      case 69:
        result = "<User Control Released>";
        break;
      case 70:
        result = "<Give OSD Name>";
        break;
      case 71:
        result = "<Set OSD Name>";
        break;
      case 100:
        result = "<Set OSD String>";
        break;
      case 103:
        result = "<Timer Program Title>";
        break;
      case 112:
        result = "<System Audio Mode Request>";
        break;
      case 113:
        result = "<Give Audio Status>";
        break;
      case 114:
        result = "<Set System Audio Mode>";
        break;
      case 115:
        result = "<Set Audio Volume Level>";
        break;
      case 122:
        result = "<Report Audio Status>";
        break;
      case 125:
        result = "<Give System Audio Mode Status>";
        break;
      case 126:
        result = "<System Audio Mode Status>";
        break;
      case 128:
        result = "<Routing Change>";
        break;
      case 129:
        result = "<Routing Information>";
        break;
      case 130:
        result = "<Active Source>";
        break;
      case 131:
        result = "<Give Physical Address>";
        break;
      case 132:
        result = "<Report Physical Address>";
        break;
      case 133:
        result = "<Request Active Source>";
        break;
      case 134:
        result = "<Set Stream Path>";
        break;
      case 135:
        result = "<Device Vendor ID>";
        break;
      case 137:
        result = "<Vendor Command>";
        break;
      case 138:
        result = "<Vendor Remote Button Down>";
        break;
      case 139:
        result = "<Vendor Remote Button Up>";
        break;
      case 140:
        result = "<Give Device Vendor ID>";
        break;
      case 141:
        result = "<Menu Request>";
        break;
      case 142:
        result = "<Menu Status>";
        break;
      case 143:
        result = "<Give Device Power Status>";
        break;
      case 144:
        result = "<Report Power Status>";
        break;
      case 145:
        result = "<Get Menu Language>";
        break;
      case 146:
        result = "<Select Analogue Service>";
        break;
      case 147:
        result = "<Select Digital Service>";
        break;
      case 151:
        result = "<Set Digital Timer>";
        break;
      case 153:
        result = "<Clear Digital Timer>";
        break;
      case 154:
        result = "<Set Audio Rate>";
        break;
      case 157:
        result = "<Inactive Source>";
        break;
      case 158:
        result = "<CEC Version>";
        break;
      case 159:
        result = "<Get CEC Version>";
        break;
      case 160:
        result = "<Vendor Command with ID>";
        break;
      case 161:
        result = "<Clear External Timer>";
        break;
      case 162:
        result = "<Set External Timer>";
        break;
      case 163:
        result = "<Report Short Audio Descriptor>";
        break;
      case 164:
        result = "<Request Short Audio Descriptor>";
        break;
      case 165:
        result = "<Give Features>";
        break;
      case 166:
        result = "<Report Features>";
        break;
      default:
        v2 = a1 + 1;
        result = "<Polling Message>";
        switch(v2)
        {
          case 0:
            return result;
          case 1:
            result = "<Feature Abort>";
            break;
          case 5:
            result = "<Image View On>";
            break;
          case 6:
            result = "<Tuner Step Increment>";
            break;
          case 7:
            result = "<Tuner Step Decrement>";
            break;
          case 8:
            result = "<Tuner Device Status>";
            break;
          case 9:
            result = "<Give Tuner Device Status>";
            break;
          case 10:
            result = "<Record On>";
            break;
          case 11:
            result = "<Record Status>";
            break;
          case 12:
            result = "<Record Off>";
            break;
          case 14:
            result = "<Text View On>";
            break;
          case 16:
            result = "<Record TV Screen>";
            break;
          case 27:
            result = "<Give Deck Status>";
            break;
          case 28:
            result = "<Deck Status>";
            break;
          default:
            return "Unknown";
        }

        break;
    }
  }

  else if (a1 > 195)
  {
    if (a1 > 247)
    {
      if (a1 == 248)
      {
        return "<CDC Message>";
      }

      if (a1 == 255)
      {
        return "<Abort>";
      }
    }

    else
    {
      if (a1 == 196)
      {
        return "<Request ARC Termination>";
      }

      if (a1 == 197)
      {
        return "<Terminate ARC>";
      }
    }

    return "Unknown";
  }

  else if (a1 > 193)
  {
    if (a1 == 194)
    {
      return "<Report ARC Terminated>";
    }

    else
    {
      return "<Request ARC Initiation>";
    }
  }

  else if (a1 == 192)
  {
    return "<Initiate ARC>";
  }

  else
  {
    return "<Report ARC Initiated>";
  }

  return result;
}

const char *CECUserControlString(uint64_t a1)
{
  v1 = BYTE4(a1);
  v2 = a1;
  result = "Select";
  switch(v2)
  {
    case 0:
      return result;
    case 1:
      result = "Up";
      break;
    case 2:
      result = "Down";
      break;
    case 3:
      result = "Left";
      break;
    case 4:
      result = "Right";
      break;
    case 5:
      result = "RightUp";
      break;
    case 6:
      result = "RightDown";
      break;
    case 7:
      result = "LeftUp";
      break;
    case 8:
      result = "LeftDown";
      break;
    case 9:
      result = "RootMenu";
      break;
    case 10:
      result = "SetupMenu";
      break;
    case 11:
      result = "ContentsMenu";
      break;
    case 12:
      result = "FavoriteMenu";
      break;
    case 13:
      result = "Exit";
      break;
    case 16:
      result = "MediaTopMenu";
      break;
    case 17:
      result = "MediaContextSensitiveMenu";
      break;
    case 29:
      result = "NumberEntryMode";
      break;
    case 30:
      result = "Number11";
      break;
    case 31:
      result = "Number12";
      break;
    case 32:
      result = "Number0or10";
      break;
    case 33:
      result = "Number1";
      break;
    case 34:
      result = "Number2";
      break;
    case 35:
      result = "Number3";
      break;
    case 36:
      result = "Number4";
      break;
    case 37:
      result = "Number5";
      break;
    case 38:
      result = "Number6";
      break;
    case 39:
      result = "Number7";
      break;
    case 40:
      result = "Number8";
      break;
    case 41:
      result = "Number9";
      break;
    case 42:
      result = "Dot";
      break;
    case 43:
      result = "Enter";
      break;
    case 44:
      result = "Clear";
      break;
    case 47:
      result = "NextFavorite";
      break;
    case 48:
      result = "ChannelUp";
      break;
    case 49:
      result = "ChannelDown";
      break;
    case 50:
      result = "PreviousChannel";
      break;
    case 51:
      result = "SoundSelect";
      break;
    case 52:
      result = "InputSelect";
      break;
    case 53:
      result = "DisplayInformation";
      break;
    case 54:
      result = "Help";
      break;
    case 55:
      result = "PageUp";
      break;
    case 56:
      result = "PageDown";
      break;
    case 64:
      result = "Power";
      break;
    case 65:
      result = "VolumeUp";
      break;
    case 66:
      result = "VolumeDown";
      break;
    case 67:
      result = "Mute";
      break;
    case 68:
      result = "Play";
      break;
    case 69:
      result = "Stop";
      break;
    case 70:
      result = "Pause";
      break;
    case 71:
      result = "Record";
      break;
    case 72:
      result = "Rewind";
      break;
    case 73:
      result = "FastForward";
      break;
    case 74:
      result = "Eject";
      break;
    case 75:
      result = "Forward";
      break;
    case 76:
      result = "Backward";
      break;
    case 77:
      result = "StopRecord";
      break;
    case 78:
      result = "PauseRecord";
      break;
    case 79:
      result = "Reserved";
      break;
    case 80:
      result = "Angle";
      break;
    case 81:
      result = "SubPicture";
      break;
    case 82:
      result = "VideoOnDemand";
      break;
    case 83:
      result = "ElectronicProgramGuide";
      break;
    case 84:
      result = "TimerProgramming";
      break;
    case 85:
      result = "InitialConfiguration";
      break;
    case 86:
      result = "SelectBroadcastType";
      break;
    case 87:
      result = "SelectSoundPresentation";
      break;
    case 96:
      if ((v1 - 5) >= 0x21u)
      {
        result = "PlayFunction[Unknown Operand]";
      }

      else
      {
        result = off_278EA3080[(v1 - 5)];
      }

      break;
    case 97:
      result = "PausePlayFunction";
      break;
    case 98:
      result = "RecordFunction";
      break;
    case 99:
      result = "PauseRecordFunction";
      break;
    case 100:
      result = "StopFunction";
      break;
    case 101:
      result = "MuteFunction";
      break;
    case 102:
      result = "RestoreVolumeFunction";
      break;
    case 103:
      result = "TuneFunction[Channel ID]";
      break;
    case 104:
      result = "SelectMediaFunction[Media Number]";
      break;
    case 105:
      result = "SelectAVInputFunction[A/V Input Number]";
      break;
    case 106:
      result = "SelectAudioInputFunction[Audio Input Number]";
      break;
    case 107:
      result = "PowerToggleFunction";
      break;
    case 108:
      result = "PowerOffFunction";
      break;
    case 109:
      result = "PowerOnFunction";
      break;
    case 113:
      result = "F1";
      break;
    case 114:
      result = "F2";
      break;
    case 115:
      result = "F3";
      break;
    case 116:
      result = "F4";
      break;
    case 117:
      result = "F5";
      break;
    case 118:
      result = "Data";
      break;
    default:
      result = "Unknown";
      break;
  }

  return result;
}

BOOL CECUserControlEquals(unint64_t a1, unint64_t a2)
{
  if (a2 != a1)
  {
    return 0;
  }

  if (a1 <= 0x66u)
  {
    v9 = a1 != 96 || (BYTE4(a2) ^ BYTE4(a1)) == 0;
    if (a1 == 87)
    {
      v9 = BYTE4(a2) == BYTE4(a1);
    }

    if (a1 == 86)
    {
      return (BYTE4(a2) ^ BYTE4(a1)) == 0;
    }

    else
    {
      return v9;
    }
  }

  else
  {
    v3 = (BYTE4(a2) ^ BYTE4(a1)) == 0;
    v4 = BYTE4(a2) == BYTE4(a1);
    if (a1 != 106)
    {
      v4 = 1;
    }

    if (a1 != 105)
    {
      v3 = v4;
    }

    v6 = ((HIDWORD(a2) ^ HIDWORD(a1)) & 0xFFC0) == 0 && (HIDWORD(a2) ^ HIDWORD(a1)) < 0x10000;
    v7 = ((BYTE4(a2) ^ BYTE4(a1)) & 0x3F) == 0 && v6;
    v8 = a1 != 104 || (BYTE4(a2) ^ BYTE4(a1)) == 0;
    if (a1 == 103)
    {
      v8 = v7;
    }

    if (a1 <= 0x68u)
    {
      return v8;
    }

    else
    {
      return v3;
    }
  }
}

const char *CECDeckControlModeString(char a1)
{
  if ((a1 - 1) > 3u)
  {
    return "Unknown";
  }

  else
  {
    return off_278EA3188[(a1 - 1)];
  }
}

const char *CECPlayModeString(int a1)
{
  if ((a1 - 5) > 0x20)
  {
    return "Unknown";
  }

  else
  {
    return off_278EA31A8[(a1 - 5)];
  }
}

uint64_t CECUserControlForCoreRCCommand(char *a1, uint64_t a2)
{
  result = 0;
  switch(a2)
  {
    case 1:
      *a1 = 0;
      goto LABEL_85;
    case 2:
      result = 1;
      *a1 = 1;
      return result;
    case 3:
      v4 = 2;
      goto LABEL_84;
    case 4:
      v4 = 3;
      goto LABEL_84;
    case 5:
      v4 = 4;
      goto LABEL_84;
    case 6:
      v4 = 5;
      goto LABEL_84;
    case 7:
      v4 = 6;
      goto LABEL_84;
    case 8:
      v4 = 7;
      goto LABEL_84;
    case 9:
      v4 = 8;
      goto LABEL_84;
    case 10:
      v4 = 9;
      goto LABEL_84;
    case 11:
      v4 = 10;
      goto LABEL_84;
    case 12:
      v4 = 11;
      goto LABEL_84;
    case 13:
      v4 = 12;
      goto LABEL_84;
    case 14:
      v4 = 13;
      goto LABEL_84;
    case 16:
      v4 = 17;
      goto LABEL_84;
    case 17:
      v4 = 29;
      goto LABEL_84;
    case 18:
      v4 = 30;
      goto LABEL_84;
    case 19:
      v4 = 31;
      goto LABEL_84;
    case 20:
      v4 = 32;
      goto LABEL_84;
    case 21:
      v4 = 33;
      goto LABEL_84;
    case 22:
      v4 = 34;
      goto LABEL_84;
    case 23:
      v4 = 35;
      goto LABEL_84;
    case 24:
      v4 = 36;
      goto LABEL_84;
    case 25:
      v4 = 37;
      goto LABEL_84;
    case 26:
      v4 = 38;
      goto LABEL_84;
    case 27:
      v4 = 39;
      goto LABEL_84;
    case 28:
      v4 = 40;
      goto LABEL_84;
    case 29:
      v4 = 41;
      goto LABEL_84;
    case 30:
      v4 = 42;
      goto LABEL_84;
    case 31:
      v4 = 43;
      goto LABEL_84;
    case 32:
      v4 = 44;
      goto LABEL_84;
    case 33:
      v4 = 47;
      goto LABEL_84;
    case 34:
      v4 = 48;
      goto LABEL_84;
    case 35:
      v4 = 49;
      goto LABEL_84;
    case 36:
      v4 = 50;
      goto LABEL_84;
    case 37:
      v4 = 51;
      goto LABEL_84;
    case 38:
      v4 = 52;
      goto LABEL_84;
    case 39:
      v4 = 53;
      goto LABEL_84;
    case 40:
      v4 = 54;
      goto LABEL_84;
    case 41:
      v4 = 55;
      goto LABEL_84;
    case 42:
      v4 = 56;
      goto LABEL_84;
    case 43:
      v4 = 65;
      goto LABEL_84;
    case 44:
      v4 = 66;
      goto LABEL_84;
    case 45:
      v4 = 67;
      goto LABEL_84;
    case 46:
      v4 = 68;
      goto LABEL_84;
    case 47:
      v4 = 70;
      goto LABEL_84;
    case 48:
      v4 = 72;
      goto LABEL_84;
    case 49:
      v4 = 73;
      goto LABEL_84;
    case 50:
      v4 = 74;
      goto LABEL_84;
    case 51:
      v4 = 75;
      goto LABEL_84;
    case 52:
      v4 = 76;
      goto LABEL_84;
    case 53:
      v4 = 77;
      goto LABEL_84;
    case 54:
      v4 = 80;
      goto LABEL_84;
    case 55:
      v4 = 81;
      goto LABEL_84;
    case 56:
      *a1 = 86;
      a1[4] = 0;
      goto LABEL_85;
    case 57:
      *a1 = 87;
      v5 = 0x80;
      goto LABEL_82;
    case 58:
      *a1 = 87;
      v5 = -79;
      goto LABEL_82;
    case 59:
      *a1 = 87;
      v5 = -78;
      goto LABEL_82;
    case 60:
      *a1 = 87;
      v5 = -77;
      goto LABEL_82;
    case 61:
      *a1 = 87;
      v5 = -63;
      goto LABEL_82;
    case 62:
      *a1 = 87;
      v5 = -62;
      goto LABEL_82;
    case 63:
      *a1 = 87;
      v5 = -61;
      goto LABEL_82;
    case 64:
      v4 = 88;
      goto LABEL_84;
    case 65:
      v4 = 89;
      goto LABEL_84;
    case 66:
      v4 = 90;
      goto LABEL_84;
    case 67:
      *a1 = 96;
      v5 = 36;
      goto LABEL_82;
    case 68:
      *a1 = 96;
      v5 = 37;
LABEL_82:
      a1[4] = v5;
      goto LABEL_85;
    case 69:
      v4 = 97;
      goto LABEL_84;
    case 70:
      v4 = 98;
      goto LABEL_84;
    case 71:
      v4 = 99;
      goto LABEL_84;
    case 72:
      v4 = 100;
      goto LABEL_84;
    case 73:
      v4 = 107;
      goto LABEL_84;
    case 74:
      v4 = 108;
      goto LABEL_84;
    case 75:
      v4 = 109;
      goto LABEL_84;
    case 76:
      v4 = 113;
      goto LABEL_84;
    case 77:
      v4 = 114;
      goto LABEL_84;
    case 78:
      v4 = 115;
      goto LABEL_84;
    case 79:
      v4 = 116;
      goto LABEL_84;
    case 80:
      v4 = 117;
      goto LABEL_84;
    case 84:
      v4 = 16;
      goto LABEL_84;
    case 90:
      v4 = 83;
LABEL_84:
      *a1 = v4;
LABEL_85:
      result = 1;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t CoreRCCommandForCECUserControl(uint64_t *a1, uint64_t a2)
{
  v2 = 0;
  v3 = 1;
  switch(a2)
  {
    case 0:
      goto LABEL_93;
    case 1:
      v3 = 2;
      goto LABEL_93;
    case 2:
      v3 = 3;
      goto LABEL_93;
    case 3:
      v3 = 4;
      goto LABEL_93;
    case 4:
      v3 = 5;
      goto LABEL_93;
    case 5:
      v3 = 6;
      goto LABEL_93;
    case 6:
      v3 = 7;
      goto LABEL_93;
    case 7:
      v3 = 8;
      goto LABEL_93;
    case 8:
      v3 = 9;
      goto LABEL_93;
    case 9:
      v3 = 10;
      goto LABEL_93;
    case 10:
      v3 = 11;
      goto LABEL_93;
    case 11:
      v3 = 12;
      goto LABEL_93;
    case 12:
      v3 = 13;
      goto LABEL_93;
    case 13:
      v3 = 14;
      goto LABEL_93;
    case 16:
      v3 = 84;
      goto LABEL_93;
    case 17:
      v3 = 16;
      goto LABEL_93;
    case 29:
      v3 = 17;
      goto LABEL_93;
    case 30:
      v3 = 18;
      goto LABEL_93;
    case 31:
      v3 = 19;
      goto LABEL_93;
    case 32:
      v3 = 20;
      goto LABEL_93;
    case 33:
      v3 = 21;
      goto LABEL_93;
    case 34:
      v3 = 22;
      goto LABEL_93;
    case 35:
      v3 = 23;
      goto LABEL_93;
    case 36:
      v3 = 24;
      goto LABEL_93;
    case 37:
      v3 = 25;
      goto LABEL_93;
    case 38:
      v3 = 26;
      goto LABEL_93;
    case 39:
      v3 = 27;
      goto LABEL_93;
    case 40:
      v3 = 28;
      goto LABEL_93;
    case 41:
      v3 = 29;
      goto LABEL_93;
    case 42:
      v3 = 30;
      goto LABEL_93;
    case 43:
      v3 = 31;
      goto LABEL_93;
    case 44:
      v3 = 32;
      goto LABEL_93;
    case 47:
      v3 = 33;
      goto LABEL_93;
    case 48:
      v3 = 34;
      goto LABEL_93;
    case 49:
      v3 = 35;
      goto LABEL_93;
    case 50:
      v3 = 36;
      goto LABEL_93;
    case 51:
      v3 = 37;
      goto LABEL_93;
    case 52:
      v3 = 38;
      goto LABEL_93;
    case 53:
      v3 = 39;
      goto LABEL_93;
    case 54:
      v3 = 40;
      goto LABEL_93;
    case 55:
      v3 = 41;
      goto LABEL_93;
    case 56:
      v3 = 42;
      goto LABEL_93;
    case 64:
    case 107:
      v3 = 73;
      goto LABEL_93;
    case 65:
      v3 = 43;
      goto LABEL_93;
    case 66:
      v3 = 44;
      goto LABEL_93;
    case 67:
      v3 = 45;
      goto LABEL_93;
    case 68:
      v3 = 46;
      goto LABEL_93;
    case 69:
    case 77:
    case 100:
      v3 = 72;
      goto LABEL_93;
    case 70:
      v3 = 47;
      goto LABEL_93;
    case 71:
    case 98:
      v3 = 70;
      goto LABEL_93;
    case 72:
      v3 = 48;
      goto LABEL_93;
    case 73:
      v3 = 49;
      goto LABEL_93;
    case 74:
      v3 = 50;
      goto LABEL_93;
    case 75:
      v3 = 51;
      goto LABEL_93;
    case 76:
      v3 = 52;
      goto LABEL_93;
    case 78:
      v3 = 71;
      goto LABEL_93;
    case 80:
      v3 = 54;
      goto LABEL_93;
    case 81:
      v3 = 55;
      goto LABEL_93;
    case 83:
      v3 = 90;
      goto LABEL_93;
    case 86:
      if ((a2 & 0xFF00000000) != 0)
      {
        return 0;
      }

      v3 = 56;
      goto LABEL_93;
    case 87:
      v2 = 0;
      if (BYTE4(a2) <= 0xB2u)
      {
        switch(BYTE4(a2))
        {
          case 0x80u:
            v3 = 57;
            break;
          case 0xB1u:
            v3 = 58;
            break;
          case 0xB2u:
            v3 = 59;
            break;
          default:
            return v2;
        }
      }

      else if (BYTE4(a2) > 0xC1u)
      {
        if (BYTE4(a2) == 194)
        {
          v3 = 62;
        }

        else
        {
          if (BYTE4(a2) != 195)
          {
            return v2;
          }

          v3 = 63;
        }
      }

      else if (BYTE4(a2) == 179)
      {
        v3 = 60;
      }

      else
      {
        if (BYTE4(a2) != 193)
        {
          return v2;
        }

        v3 = 61;
      }

      goto LABEL_93;
    case 88:
      v3 = 64;
      goto LABEL_93;
    case 89:
      v3 = 65;
      goto LABEL_93;
    case 90:
      v3 = 66;
      goto LABEL_93;
    case 96:
      if (BYTE4(a2) == 36)
      {
        v3 = 67;
      }

      else
      {
        if (BYTE4(a2) != 37)
        {
          return 0;
        }

        v3 = 68;
      }

LABEL_93:
      *a1 = v3;
      return 1;
    case 108:
      v3 = 74;
      goto LABEL_93;
    case 109:
      v3 = 75;
      goto LABEL_93;
    case 113:
      v3 = 76;
      goto LABEL_93;
    case 114:
      v3 = 77;
      goto LABEL_93;
    case 115:
      v3 = 78;
      goto LABEL_93;
    case 116:
      v3 = 79;
      goto LABEL_93;
    case 117:
      v3 = 80;
      goto LABEL_93;
    default:
      return v2;
  }
}

BOOL CoreRCCommandForCECDeckControlMode(void *a1, char a2)
{
  v2 = (a2 - 1);
  if (v2 <= 3)
  {
    *a1 = qword_2473D5468[(a2 - 1)];
  }

  return v2 < 4;
}

uint64_t CoreRCCommandForCECPlayMode(uint64_t *a1, int a2)
{
  if (a2 == 7)
  {
    v2 = 67;
    goto LABEL_5;
  }

  if (a2 == 9)
  {
    v2 = 68;
LABEL_5:
    *a1 = v2;
    return 1;
  }

  return 0;
}

uint64_t CoreRCCommandFromLegacyHIDUsage(uint64_t *a1, uint64_t a2, unsigned int a3)
{
  v3 = 0;
  v4 = a3 | (a2 << 32);
  if (v4 <= 0xC000000B0)
  {
    if (v4 <= 0x10000008ALL)
    {
      switch(v4)
      {
        case 0x100000086:
          v5 = 15;
          goto LABEL_35;
        case 0x100000089:
          v5 = 1;
          goto LABEL_35;
        case 0x10000008ALL:
          v5 = 5;
          goto LABEL_35;
      }
    }

    else
    {
      if (v4 <= 0x10000008CLL)
      {
        if (v4 == 0x10000008BLL)
        {
          v5 = 4;
        }

        else
        {
          v5 = 2;
        }

        goto LABEL_35;
      }

      if (v4 == 0x10000008DLL)
      {
        v5 = 3;
        goto LABEL_35;
      }

      if (v4 == 0xC000000B0)
      {
        v5 = 67;
        goto LABEL_35;
      }
    }
  }

  else if (v4 > 0xC000000B5)
  {
    if (v4 > 0xC000000C5)
    {
      if (v4 == 0xC000000C6)
      {
        v5 = 51;
        goto LABEL_35;
      }

      if (v4 == 0xC000000C7)
      {
        v5 = 52;
        goto LABEL_35;
      }
    }

    else
    {
      if (v4 == 0xC000000B6)
      {
        v5 = 82;
        goto LABEL_35;
      }

      if (v4 == 0xC000000B7)
      {
        v5 = 72;
        goto LABEL_35;
      }
    }
  }

  else
  {
    if (v4 > 0xC000000B3)
    {
      if (v4 == 0xC000000B4)
      {
        v5 = 48;
      }

      else
      {
        v5 = 83;
      }

      goto LABEL_35;
    }

    if (v4 == 0xC000000B1)
    {
      v5 = 47;
      goto LABEL_35;
    }

    if (v4 == 0xC000000B3)
    {
      v5 = 49;
LABEL_35:
      *a1 = v5;
      return 1;
    }
  }

  return v3;
}

void sub_24739A65C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_2_5(void *a1, const char *a2, uint64_t a3)
{

  return [a1 errorWithDomain:a3 code:-6700 userInfo:0];
}

uint64_t CoreCECAddressString(unsigned int a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = CECAddressString(a1, 1);

  return [v1 stringWithUTF8String:v2];
}

uint64_t CoreCECDeviceTypeString(uint64_t a1)
{
  v2 = +[CoreCECTypesInternal defaultTypes];

  return [v2 stringForDeviceType:a1];
}

__CFString *CoreCECVendorIDString(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if (a1 == -1)
  {
    result = @"Unknown";
  }

  else
  {
    v1 = MEMORY[0x277CCACA8];
    v5 = CECVendorIDStringWithID(a1);
    v6 = v2;
    result = [v1 stringWithUTF8String:&v5];
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

__CFString *CoreCECVersionString(uint64_t a1)
{
  if (a1 == -1)
  {
    return @"Unknown";
  }

  v2 = CECVersionString(a1);
  v3 = MEMORY[0x277CCACA8];
  if (v2 == "Unknown")
  {
    return [MEMORY[0x277CCACA8] stringWithFormat:@"Other (%u)", a1];
  }

  return [v3 stringWithUTF8String:?];
}

__CFString *CoreCECPowerStatusString(uint64_t a1)
{
  if ((a1 - 1) >= 4)
  {
    v1 = kCoreCECGenericStringUnknown;
  }

  else
  {
    v1 = &off_278EA3378[a1 - 1];
  }

  return *v1;
}

uint64_t CoreCECDeckInfoString(uint64_t a1)
{
  v2 = +[CoreCECTypesInternal defaultTypes];

  return [v2 stringForDeckInfo:a1];
}

uint64_t CoreCECDeckControlModeString(uint64_t a1)
{
  v2 = +[CoreCECTypesInternal defaultTypes];

  return [v2 stringForDeckControlMode:a1];
}

uint64_t CoreCECPlayModeString(uint64_t a1)
{
  v2 = +[CoreCECTypesInternal defaultTypes];

  return [v2 stringForPlayMode:a1];
}

uint64_t CoreCECStatusRequestTypeString(uint64_t a1)
{
  v2 = +[CoreCECTypesInternal defaultTypes];

  return [v2 stringForRequestType:a1];
}

uint64_t CoreCECSystemAudioModeStatusString(uint64_t a1)
{
  v2 = +[CoreCECTypesInternal defaultTypes];

  return [v2 stringForSystemAudioStatus:a1];
}

uint64_t CoreCECActivationStatusString(uint64_t a1)
{
  v2 = +[CoreCECTypesInternal defaultTypes];

  return [v2 stringForActivationStatus:a1];
}

__CFString *CoreCECRCProfileString(void *a1)
{
  v3 = 0;
  if (!a1)
  {
    return @"None";
  }

  if (CECRCProfileForCoreCECRCProfile(&v3, a1))
  {
    if (!v3)
    {
      return [MEMORY[0x277CCACA8] stringWithFormat:@"TV(%u)", HIBYTE(v3)];
    }

    if (v3 == 1)
    {
      return [MEMORY[0x277CCACA8] stringWithFormat:@"Source(0x%02X)", HIBYTE(v3)];
    }
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"<invalid profile: %@>", a1];
}

uint64_t CoreCECDeviceSourceRCProfileWithSupportedMenuCommands(uint64_t *a1, uint64_t a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  for (i = [MEMORY[0x277CBEB18] array]; a2; --a2)
  {
    v5 = *a1++;
    [i addObject:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", v5)}];
  }

  v8 = @"kCoreCECDeviceRCProfileKeySource";
  v9[0] = [MEMORY[0x277CBEB98] setWithArray:i];
  result = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CoreCECDeviceTVRCProfileWithID(uint64_t a1)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v3 = @"kCoreCECDeviceRCProfileKeyTV";
  v4[0] = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1];
  result = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:&v3 count:1];
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24739E784(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24739E9F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24739ECA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2473A23BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_1_6(void *a1, const char *a2, uint64_t a3)
{

  return [a1 errorWithDomain:a3 code:-6705 userInfo:0];
}

uint64_t OUTLINED_FUNCTION_2_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{

  return [v18 countByEnumeratingWithState:&a9 objects:&a18 count:16];
}

__CFString *CoreRCCommandString(unint64_t a1)
{
  if (a1 > 0x76)
  {
    return 0;
  }

  else
  {
    return off_278EA3CD0[a1];
  }
}

const char *CoreRCCommandForString(void *a1)
{
  result = [a1 UTF8String];
  if (result)
  {
    v2 = result;
    v3 = &CoreRCCommandForString_table;
    if (!strcasecmp("Select", result))
    {
      return *v3;
    }

    else
    {
      while (1)
      {
        result = v3[3];
        if (!result)
        {
          break;
        }

        v3 += 2;
        if (!strcasecmp(result, v2))
        {
          return *v3;
        }
      }
    }
  }

  return result;
}

void *CoreRCXPCServiceInterface()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_285949E68];
  v1 = MEMORY[0x277CBEB98];
  v2 = objc_opt_class();
  [v0 setClasses:objc_msgSend(v1 forSelector:"setWithObjects:" argumentIndex:v2 ofReply:{objc_opt_class(), 0), sel_queryBusesAsync_, 0, 1}];
  v3 = MEMORY[0x277CBEB98];
  v4 = objc_opt_class();
  [v0 setClasses:objc_msgSend(v3 forSelector:"setWithObjects:" argumentIndex:v4 ofReply:{objc_opt_class(), 0), sel_changeButtonCombinationAsync_delay_enabled_forDevice_reply_, 0, 0}];
  v5 = MEMORY[0x277CBEB98];
  v6 = objc_opt_class();
  [v0 setClasses:objc_msgSend(v5 forSelector:"setWithObjects:" argumentIndex:v6 ofReply:{objc_opt_class(), 0), sel_setCommandAsync_target_source_forButtonCombination_delay_reply_, 3, 0}];
  return v0;
}

uint64_t OUTLINED_FUNCTION_14(void *a1, const char *a2, uint64_t a3)
{

  return [a1 errorWithDomain:a3 code:-6709 userInfo:0];
}

uint64_t OUTLINED_FUNCTION_15(void *a1, const char *a2, uint64_t a3)
{

  return [a1 errorWithDomain:a3 code:-6761 userInfo:0];
}

BOOL CoreCECStatusRequestForCECStatusRequest(void *a1, int a2)
{
  if ((a2 - 1) <= 2)
  {
    *a1 = qword_2473D5560[(a2 - 1)];
  }

  return (a2 - 1) < 3u;
}

BOOL CECStatusRequestForCoreCECStatusRequest(_BYTE *a1, uint64_t a2)
{
  v2 = a2 - 1;
  if ((a2 - 1) <= 2)
  {
    *a1 = 0x30102u >> (8 * v2);
  }

  return v2 < 3;
}

uint64_t CoreCECSystemAudioModeStatusForCECSystemAudioModeStatus(uint64_t *a1, int a2)
{
  if (!a2)
  {
    v2 = 1;
    goto LABEL_5;
  }

  if (a2 == 1)
  {
    v2 = 2;
LABEL_5:
    *a1 = v2;
    return 1;
  }

  return 0;
}

uint64_t CECSystemAudioModeStatusForCoreCECSystemAudioModeStatus(char *a1, uint64_t a2)
{
  if (a2 == 1)
  {
    v3 = 0;
    goto LABEL_5;
  }

  v2 = 0;
  if (a2 == 2)
  {
    v3 = 1;
LABEL_5:
    *a1 = v3;
    return 1;
  }

  return v2;
}

BOOL CECDeckControlModeForCoreCECDeckControlMode(_BYTE *a1, uint64_t a2)
{
  v2 = a2 - 1;
  if ((a2 - 1) <= 3)
  {
    *a1 = 0x3020104u >> (8 * v2);
  }

  return v2 < 4;
}

BOOL CoreCECDeckControlModeForCECDeckControlMode(void *a1, char a2)
{
  v2 = (a2 - 1);
  if (v2 <= 3)
  {
    *a1 = qword_2473D5578[(a2 - 1)];
  }

  return v2 < 4;
}

BOOL CECDeckInfoForCoreCECDeckInfo(_BYTE *a1, uint64_t a2)
{
  v2 = a2 - 1;
  if ((a2 - 1) <= 0xE)
  {
    *a1 = byte_2473D5598[v2];
  }

  return v2 < 0xF;
}

BOOL CoreCECDeckInfoForCECDeckInfo(void *a1, int a2)
{
  if ((a2 - 17) <= 0xE)
  {
    *a1 = qword_2473D55A8[(a2 - 17)];
  }

  return (a2 - 17) < 0xFu;
}

BOOL CECPlayModeForCoreCECPlayMode(_BYTE *a1, uint64_t a2)
{
  v2 = a2 - 1;
  if ((a2 - 1) <= 0xE)
  {
    *a1 = byte_2473D5620[v2];
  }

  return v2 < 0xF;
}

uint64_t CoreCECPlayModeForCECPlayMode(void *a1, int a2)
{
  if ((a2 - 5) > 0x20 || ((0x188770077uLL >> (a2 - 5)) & 1) == 0)
  {
    return 0;
  }

  *a1 = qword_2473D5630[(a2 - 5)];
  return 1;
}

BOOL CECPowerStatusForCoreCECPowerStatus(_BYTE *a1, uint64_t a2)
{
  v2 = a2 - 1;
  if ((a2 - 1) <= 3)
  {
    *a1 = v2;
  }

  return v2 < 4;
}

BOOL CoreCECPowerStatusForCECPowerStatus(void *a1, unsigned int a2)
{
  if (a2 <= 3)
  {
    *a1 = (a2 + 1);
  }

  return a2 < 4;
}

BOOL CECDeviceTypeForCoreCECDeviceType(_BYTE *a1, uint64_t a2)
{
  v2 = a2 - 1;
  if ((a2 - 1) <= 7)
  {
    *a1 = 0x700030201060405uLL >> (8 * v2);
  }

  return v2 < 8;
}

BOOL CoreCECDeviceTypeForCECDeviceType(void *a1, unsigned int a2)
{
  if (a2 <= 7)
  {
    *a1 = qword_2473D5738[a2];
  }

  return a2 < 8;
}

uint64_t CoreCECDeviceTypesMaskForCECAllDeviceTypesMask(uint64_t *a1, unsigned int a2)
{
  if ((a2 & 0x80u) == 0)
  {
    v2 = a2 & 0x24 | (a2 >> 3) & 0xB;
  }

  else
  {
    v2 = a2 & 0x24 | (a2 >> 3) & 0xB | 0x40;
  }

  *a1 = v2;
  return 1;
}

uint64_t CECDeviceFeaturesMaskForCoreCECDeviceFeaturesMask(_BYTE *a1, unsigned int a2, uint64_t a3)
{
  if (a3 == 1)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if ((*&a2 & 0x10000) == 0)
  {
    v3 = 0;
  }

  v4 = v3 & 0xFFFFFFFE | (a2 >> 20) & 1;
  if ((a2 & 0x8248) != 0)
  {
    LOBYTE(v4) = (a2 >> 12) & 8 | (a2 >> 2) & 0x10 | (a2 >> 4) & 0x20 | (((a2 & 8) != 0) << 6) | v4;
  }

  *a1 = v4;
  return 1;
}

uint64_t CoreCECDeviceFeaturesMaskForCECDeviceFeaturesMask(void *a1, unsigned int a2)
{
  v2 = vdupq_n_s32(a2);
  v3 = vshlq_u32(v2, xmmword_2473D5530);
  v3.i32[3] = vshlq_u32(v2, xmmword_2473D5540).i32[3];
  v4 = vandq_s8(v3, xmmword_2473D5550);
  *v4.i8 = vorr_s8(*v4.i8, *&vextq_s8(v4, v4, 8uLL));
  *a1 = v4.i32[0] | ((a2 & 1) << 20) | v4.i32[1] | ((a2 << 15) | (a2 << 14)) & 0x10000;
  return 1;
}

uint64_t CoreCECRCProfileIDFromCECRCProfileID(void *a1, int a2)
{
  HIDWORD(v3) = a2;
  LODWORD(v3) = a2;
  v2 = v3 >> 1;
  if (v2 > 7 || ((0xABu >> v2) & 1) == 0)
  {
    return 0;
  }

  *a1 = qword_2473D5778[v2];
  return 1;
}

unint64_t CECRCProfileIDFromCoreCECRCProfileID(unint64_t a1)
{
  v1 = 0xE0A060200uLL >> (8 * a1);
  if (a1 >= 5)
  {
    LOBYTE(v1) = 0;
  }

  return v1 & 0xE;
}

uint64_t CECRCProfileForCoreCECRCProfile(_BYTE *a1, void *a2)
{
  v4 = [a2 valueForKey:@"kCoreCECDeviceRCProfileKeySource"];
  result = [a2 valueForKey:@"kCoreCECDeviceRCProfileKeyTV"];
  if (v4)
  {
    *a1 = 1;
    if ([v4 containsObject:&unk_28593C318])
    {
      a1[1] |= 1u;
    }

    if ([v4 containsObject:&unk_28593C330])
    {
      a1[1] |= 2u;
    }

    if ([v4 containsObject:&unk_28593C348])
    {
      a1[1] |= 4u;
    }

    if ([v4 containsObject:&unk_28593C360])
    {
      a1[1] |= 8u;
    }

    if (![v4 containsObject:&unk_28593C378])
    {
      return 1;
    }

    LOBYTE(v6) = a1[1] | 0x10;
  }

  else
  {
    if (!result)
    {
      return result;
    }

    *a1 = 0;
    v7 = [result unsignedIntValue];
    v6 = 0xE0A060200uLL >> (8 * v7);
    if (v7 >= 5)
    {
      LOBYTE(v6) = 0;
    }
  }

  a1[1] = v6;
  return 1;
}

uint64_t CoreCECRCProfileForCECRCProfile(void *a1, _BYTE *a2)
{
  v18[1] = *MEMORY[0x277D85DE8];
  *a1 = 0;
  if (!*a2)
  {
    HIDWORD(v12) = a2[1];
    LODWORD(v12) = HIDWORD(v12);
    v11 = v12 >> 1;
    if (v11 > 7 || ((0xABu >> v11) & 1) == 0)
    {
      result = 0;
      goto LABEL_16;
    }

    v13 = qword_2473D5778[v11];
    v15 = @"kCoreCECDeviceRCProfileKeyTV";
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v13];
    v7 = MEMORY[0x277CBEAC0];
    v8 = &v16;
    v9 = &v15;
    goto LABEL_10;
  }

  if (*a2 == 1)
  {
    v4 = [MEMORY[0x277CBEB58] set];
    v5 = v4;
    v6 = a2[1];
    if (v6)
    {
      [v4 addObject:&unk_28593C318];
      v6 = a2[1];
      if ((v6 & 2) == 0)
      {
LABEL_5:
        if ((v6 & 4) == 0)
        {
          goto LABEL_6;
        }

        goto LABEL_19;
      }
    }

    else if ((a2[1] & 2) == 0)
    {
      goto LABEL_5;
    }

    [v5 addObject:&unk_28593C330];
    v6 = a2[1];
    if ((v6 & 4) == 0)
    {
LABEL_6:
      if ((v6 & 8) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_20;
    }

LABEL_19:
    [v5 addObject:&unk_28593C348];
    v6 = a2[1];
    if ((v6 & 8) == 0)
    {
LABEL_7:
      if ((v6 & 0x10) == 0)
      {
LABEL_9:
        v17 = @"kCoreCECDeviceRCProfileKeySource";
        v18[0] = v5;
        v7 = MEMORY[0x277CBEAC0];
        v8 = v18;
        v9 = &v17;
LABEL_10:
        *a1 = [v7 dictionaryWithObjects:v8 forKeys:v9 count:1];
        goto LABEL_11;
      }

LABEL_8:
      [v5 addObject:&unk_28593C378];
      goto LABEL_9;
    }

LABEL_20:
    [v5 addObject:&unk_28593C360];
    if ((a2[1] & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_11:
  result = 1;
LABEL_16:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2473B7C08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_8_0(unsigned __int16 *a1)
{
  v2 = bswap32(*a1) >> 16;

  return CECPhysicalAddressStringWithAddress(v2);
}

uint64_t IRDecoder_Decode(uint64_t a1, int a2, _DWORD *a3, _BYTE *a4, void *a5, _BYTE *a6)
{
  if (_MergedGlobals[0] != -1)
  {
    dispatch_once_f(_MergedGlobals, 0, _IRDecoder_Initialize);
  }

  if (a2 <= 1)
  {
    if (gLogCategory_IRDecoder <= 40 && (gLogCategory_IRDecoder != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    return 4294960546;
  }

  v103 = a3;
  v102 = a4;
  v104 = a6;
  v12 = 0;
  v13 = 0;
  qword_27EE50D50 = a1;
  dword_27EE50D58 = a2;
  unk_27EE50D5C = a2 - (a2 >> 1);
  v106 = a2 - (a2 >> 1);
  v105 = 10 * unk_27EE50D5C;
  v14 = -1;
  do
  {
    v15 = &_MergedGlobals[5 * v12];
    v18 = v15[3];
    v17 = v15 + 3;
    v16 = v18;
    *(v17 + 4) = 0;
    *(v17 + 10) = 0;
    v17[3] = 0;
    *(v17 + 8) = 0;
    v19 = v17[1];
    v20 = *v19;
    v21 = **v19;
    v22 = *(v18 + 12);
    v23 = *(v18 + 14);
    v24 = 3 * v22;
    v25 = 3 * v23;
    if (v21 < 0x7D0)
    {
      v31 = 0;
      if (v22)
      {
        v32 = 0;
      }

      else
      {
        v32 = 500;
      }

      if (v23)
      {
        v30 = v32;
      }

      else
      {
        v30 = v32 + 500;
      }
    }

    else
    {
      v26 = v20[1];
      if (v21 <= v24 / 0xA + v22 && v21 >= v22 - v24 / 0xA)
      {
        v28 = 500;
      }

      else
      {
        v28 = 0;
      }

      if (v26 <= v25 / 0xA + v23 && v26 >= v23 - v25 / 0xA)
      {
        v30 = v28 + 500;
      }

      else
      {
        v30 = v28;
      }

      v31 = 2;
    }

    v33 = *(v19 + 8);
    v34 = *(v16 + 16);
    if ((v34 & 4) != 0)
    {
      if (v33 <= v31)
      {
        goto LABEL_98;
      }

      v48 = *(v16 + 8);
      v49 = *(v16 + 11);
      v50 = v49 - v48;
      v51 = v20[v31];
      if ((v34 & 0x10) == 0)
      {
        v36 = 0;
        v52 = 0;
        v53 = 0;
        v54 = 1;
        goto LABEL_101;
      }

      v36 = 1;
      if (v51 >= v48 - v50 && v51 <= v49)
      {
        v54 = 0;
        v53 = 1;
LABEL_100:
        *(v17 + 8) = 1;
        v52 = 10;
LABEL_101:
        v35 = 0;
        v37 = v52 - 10 * v36 + 640;
        do
        {
          if (v36 == 4)
          {
            if (*(v16 + 2) == 8)
            {
              v56 = 2;
            }

            else
            {
              v56 = 1;
            }
          }

          else
          {
            v56 = 1;
          }

          v57 = v31 + 1;
          if (v53)
          {
            if (v57 >= v33)
            {
              goto LABEL_149;
            }

            v31 += 2;
            v51 = v20[v57];
          }

          else
          {
            ++v31;
          }

          v58 = v56 * v48;
          v59 = v58 + v50;
          v60 = v51 < v58 - v50 || v51 > v59;
          if (v60 || (v52 += 10, v35 = v54 | (2 * v35), v17[3] = v35, ++v36, *(v17 + 8) = v36, v31 >= v33))
          {
LABEL_149:
            v37 = v52;
            if ((v34 & 0x100) != 0)
            {
              goto LABEL_126;
            }

            goto LABEL_127;
          }

          v51 = v20[v31];
          if (v51 < v58 - v50 || v51 > v59)
          {
            if (v51 <= v59)
            {
              goto LABEL_149;
            }

            v53 = 0;
            v54 = !v54;
            v51 -= v58;
          }

          else
          {
            v53 = 1;
          }
        }

        while (v36 != 64);
        v36 = 64;
LABEL_125:
        if ((v34 & 0x100) == 0)
        {
          goto LABEL_127;
        }

LABEL_126:
        v35 = ~((-1 << v36) | v35);
        v17[3] = v35;
        goto LABEL_127;
      }

      if (v51 > v49)
      {
        v53 = 0;
        v51 -= v48;
        v54 = 1;
        goto LABEL_100;
      }
    }

    else if (v31 < v33)
    {
      v35 = 0;
      v36 = 0;
      v37 = 0;
      v38 = v16[8] & 1;
      v39 = *(v16 + 10);
      v40 = v31 + 2;
      v41 = &v20[v31 + 1];
      while (1)
      {
        if (v40 - 1 >= v33)
        {
          v42 = 0;
        }

        else
        {
          v42 = *v41;
        }

        v43 = *(v41 - 1);
        v44 = 2 * v35;
        if ((v34 & 8) == 0)
        {
          if (v43 >= v39 && v43 <= *(v16 + 11))
          {
            if (v42 >= *(v16 + 12))
            {
              if (!(v42 | v38) || v42 <= *(v16 + 13))
              {
LABEL_65:
                v17[3] = v44;
                *(v17 + 8) = ++v36;
                if (v43 >= *(v16 + 14))
                {
                  if (v43 > *(v16 + 15))
                  {
                    v45 = 10;
                  }

                  else
                  {
                    v45 = 11;
                  }
                }

                else
                {
                  v45 = 10;
                }

                if (v42 >= *(v16 + 16))
                {
                  v46 = 34;
LABEL_79:
                  if (v42 <= *(v16 + v46))
                  {
                    ++v45;
                  }
                }

LABEL_81:
                v35 = v44;
                goto LABEL_82;
              }
            }

            else if (!(v42 | v38))
            {
              goto LABEL_65;
            }
          }

          if (v43 >= *(v16 + 20) && v43 <= *(v16 + 21))
          {
            if (v42 >= *(v16 + 22))
            {
              if (!(v42 | v38) || v42 <= *(v16 + 23))
              {
LABEL_67:
                v44 = (2 * v35) | 1;
                v17[3] = v44;
                *(v17 + 8) = ++v36;
                if (v43 >= *(v16 + 24))
                {
                  if (v43 > *(v16 + 25))
                  {
                    v45 = 10;
                  }

                  else
                  {
                    v45 = 11;
                  }
                }

                else
                {
                  v45 = 10;
                }

                if (v42 >= *(v16 + 26))
                {
                  v46 = 54;
                  goto LABEL_79;
                }

                goto LABEL_81;
              }
            }

            else if (!(v42 | v38))
            {
              goto LABEL_67;
            }
          }

          v45 = 0;
          goto LABEL_82;
        }

        if (v43 >= v39 && v43 <= *(v16 + 11))
        {
          v35 *= 2;
        }

        else
        {
          if (v43 < *(v16 + 20) || v43 > *(v16 + 21))
          {
            v45 = 0;
            goto LABEL_48;
          }

          v35 = (2 * v35) | 1;
        }

        v17[3] = v35;
        *(v17 + 8) = ++v36;
        v45 = 5;
LABEL_48:
        if (v42 >= *(v16 + 12) && v42 <= *(v16 + 13))
        {
          v35 *= 2;
          goto LABEL_54;
        }

        if (v42 >= *(v16 + 22) && v42 <= *(v16 + 23))
        {
          v35 = (2 * v35) | 1;
LABEL_54:
          v17[3] = v35;
          v45 += 5;
          *(v17 + 8) = ++v36;
        }

LABEL_82:
        v37 += v45;
        v47 = v36 > 63 || v40 >= v33;
        v40 += 2;
        v41 += 2;
        if (v47)
        {
          goto LABEL_125;
        }
      }
    }

LABEL_98:
    v36 = 0;
    v35 = 0;
    v37 = 0;
    if ((v34 & 0x100) != 0)
    {
      goto LABEL_126;
    }

LABEL_127:
    v62 = *(v16 + 2);
    if (v62 == 7)
    {
      v63 = -2049;
      goto LABEL_131;
    }

    if (v62 == 8)
    {
      v63 = -65537;
LABEL_131:
      v35 &= v63;
      v17[3] = v35;
    }

    v64 = v37 + v30;
    v65 = *(v16 + 56);
    if (!*(v16 + 56))
    {
      v71 = 0;
      goto LABEL_173;
    }

    v66 = 0;
    v67 = 0;
    v68 = *(v19 + 12);
    if (*v20 <= 0x7D0)
    {
      v69 = v36;
    }

    else
    {
      v69 = v36 + 1;
    }

    while (1)
    {
      v70 = *(v16 + v67 + 57);
      if ((v34 & 4) != 0)
      {
        if (v69 == v70)
        {
          goto LABEL_151;
        }

        goto LABEL_146;
      }

      if ((v34 & 8) == 0)
      {
        break;
      }

      if (v68 == v70)
      {
LABEL_151:
        v71 = 1000;
        goto LABEL_155;
      }

LABEL_146:
      if (v65 == ++v67)
      {
        v71 = 0;
        goto LABEL_156;
      }
    }

    if ((v34 & 0x40) != 0 && v68 > v70)
    {
      v66 = 1;
      *(v17 + 21) = 1;
    }

    if (v68 != v70)
    {
      goto LABEL_146;
    }

    if (v33 == 2 * v68 - 1)
    {
      v71 = 1000;
    }

    else
    {
      v71 = 500;
    }

LABEL_155:
    *(v17 + 20) = v67;
LABEL_156:
    v64 += v71;
    if (v66 && v30 == 1000 && (v37 >= 0x140 ? (v72 = (v35 & 0xFFF0000) == 132186112) : (v72 = 0), v72))
    {
      if (v36 >= 64)
      {
        v73 = 64;
      }

      else
      {
        v73 = v36;
      }

      if (v73 <= 32)
      {
        LOBYTE(v73) = 32;
      }

      v74 = v73 - 32;
      if (v36 <= 32)
      {
        v74 = 0;
      }

      v17[3] = v35 >> v74;
      v64 += 2000;
      if ((v34 & 0x80) != 0 && v71 != 1000)
      {
LABEL_176:
        v64 += 2000;
      }
    }

    else
    {
LABEL_173:
      if ((v34 & 0x80) != 0 && v71 != 1000)
      {
        if (v30 == 1000)
        {
          goto LABEL_176;
        }

        if (v33 < 2)
        {
          v76 = 0;
LABEL_194:
          *(v17 + 4) = v76;
        }

        else
        {
          v75 = 0;
          v76 = 0;
          v77 = v33 - 1;
          v78 = v24 / 0xA;
          v79 = v22 - v24 / 0xA;
          v80 = v78 + v22;
          v81 = v25 / 0xA;
          v82 = v23 - v25 / 0xA;
          v83 = v81 + v23;
          v84 = v20 + 1;
          while (1)
          {
            ++v76;
            v85 = *(v84 - 1);
            if (v85 >= 0x7D0)
            {
              v86 = *v84;
              v87 = v85 < v79 || v85 > v80;
              v88 = !v87 && v86 >= v82;
              if (v88 && v86 <= v83)
              {
                break;
              }
            }

            v84 += 2;
            v75 += 2;
            if (v77 <= v75)
            {
              goto LABEL_194;
            }
          }

          *(v17 + 4) = v76;
          v64 += 3000;
        }
      }
    }

    if (gLogCategory_IRDecoder <= 10)
    {
      if (gLogCategory_IRDecoder != -1)
      {
        goto LABEL_197;
      }

      if (_LogCategory_Initialize())
      {
        v16 = *v17;
        v90 = *(v17 + 8);
        v91 = v17[3];
LABEL_197:
        v100 = *v16;
        LogPrintF();
      }
    }

    if (v64 > v13)
    {
      v13 = v64;
      v14 = v12;
    }

    ++v12;
  }

  while (v12 != 21);
  if (v106 <= 3)
  {
    v92 = 2000;
  }

  else
  {
    v92 = v105 + 1960;
  }

  if (v13 >= v92)
  {
    if ((v14 & 0x80000000) != 0)
    {
      return 4294960548;
    }

    v93 = &_MergedGlobals[5 * v14];
    v96 = v93[3];
    v95 = v93 + 3;
    v94 = v96;
    v97 = (*(v96 + 64) >> 1) & 1;
    if (gLogCategory_IRDecoder > 40)
    {
      goto LABEL_220;
    }

    if (gLogCategory_IRDecoder == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_220;
      }

      v94 = *v95;
    }

    v98 = *v94;
    v101 = v95[3];
    LogPrintF();
LABEL_220:
    if (v103)
    {
      *v103 = *(*v95 + 8);
    }

    if (a5)
    {
      *a5 = v95[3];
    }

    if (v103)
    {
      *v102 = *(v95 + 20);
    }

    result = 0;
    if (v104)
    {
      *v104 = v97;
    }

    return result;
  }

  if (gLogCategory_IRDecoder <= 40 && (gLogCategory_IRDecoder != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return 4294960548;
}