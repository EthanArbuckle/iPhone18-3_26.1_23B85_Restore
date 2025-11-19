uint64_t sub_233423224(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_233423234(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_233423280()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2334232B8()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_233423304()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_233423354()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23342338C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2334233CC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23342340C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_233423474()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2334234C4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_233423514()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_23342355C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_233423594()
{
  _Block_release(*(v0 + 16));
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2334235D8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23342364C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

_OWORD *sub_233423688(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_2334236D0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_2334245F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a43, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_233424EA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_233425724(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  objc_sync_exit(v24);
  _Block_object_dispose(&a24, 8);
  objc_destroyWeak((v25 + 40));
  _Unwind_Resume(a1);
}

void sub_233425E6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v9 + 40));
  _Unwind_Resume(a1);
}

void sub_2334276A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *indicatorToString(unsigned int a1)
{
  if (a1 > 0x13)
  {
    return @"unknown";
  }

  else
  {
    return off_2789D3E38[a1];
  }
}

__CFString *wirelessAccessTechnologyToString(unsigned int a1)
{
  if (a1 > 0xA)
  {
    return @"unknown";
  }

  else
  {
    return off_2789D3ED8[a1];
  }
}

__CFString *dataBearerTechnologyToString(int a1)
{
  if ((a1 - 1) > 5)
  {
    return @"unknown";
  }

  else
  {
    return off_2789D3F30[a1 - 1];
  }
}

__CFString *ctReasonToString(int a1)
{
  if ((a1 - 1) > 0xA)
  {
    return @"Unknown";
  }

  else
  {
    return off_2789D3F60[a1 - 1];
  }
}

void sub_23342E7D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23343195C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_233431AE4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void sub_2334346A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23343530C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t AWDNetworkPerformanceMetricReadFrom(uint64_t a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v177 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v177 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v177 & 0x7F) << v6;
      if ((v177 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    switch((v13 >> 3))
    {
      case 1u:
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 1684) |= 1u;
        while (1)
        {
          v177 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v177 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v177 & 0x7F) << v14;
          if ((v177 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v12 = v15++ >= 9;
          if (v12)
          {
            v20 = 0;
LABEL_505:
            *(a1 + 8) = v20;
            goto LABEL_441;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

        goto LABEL_505;
      case 2u:
        v34 = PBReaderReadString();
        v35 = 16;
        goto LABEL_440;
      case 3u:
        v34 = PBReaderReadString();
        v35 = 24;
        goto LABEL_440;
      case 4u:
        v34 = PBReaderReadString();
        v35 = 32;
        goto LABEL_440;
      case 5u:
        v21 = 0;
        v22 = 0;
        v23 = 0;
        *(a1 + 1684) |= 4u;
        while (1)
        {
          v177 = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v177 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v177 & 0x7F) << v21;
          if ((v177 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v12 = v22++ >= 9;
          if (v12)
          {
            LOBYTE(v27) = 0;
            goto LABEL_463;
          }
        }

        v27 = (v23 != 0) & ~[a2 hasError];
LABEL_463:
        v176 = 1657;
        goto LABEL_516;
      case 6u:
        v34 = PBReaderReadString();
        v35 = 40;
        goto LABEL_440;
      case 7u:
        v34 = PBReaderReadString();
        v35 = 48;
        goto LABEL_440;
      case 8u:
        v34 = PBReaderReadString();
        v35 = 56;
        goto LABEL_440;
      case 9u:
        v34 = PBReaderReadString();
        v35 = 64;
        goto LABEL_440;
      case 0xBu:
        v34 = PBReaderReadString();
        v35 = 72;
        goto LABEL_440;
      case 0xCu:
        v28 = 0;
        v29 = 0;
        v30 = 0;
        *(a1 + 1684) |= 8u;
        while (1)
        {
          v177 = 0;
          v31 = [a2 position] + 1;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:&v177 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v177 & 0x7F) << v28;
          if ((v177 & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v12 = v29++ >= 9;
          if (v12)
          {
            LOBYTE(v27) = 0;
            goto LABEL_465;
          }
        }

        v27 = (v30 != 0) & ~[a2 hasError];
LABEL_465:
        v176 = 1658;
        goto LABEL_516;
      case 0xDu:
        v150 = 0;
        v151 = 0;
        v152 = 0;
        *(a1 + 1684) |= 0x10u;
        while (1)
        {
          v177 = 0;
          v153 = [a2 position] + 1;
          if (v153 >= [a2 position] && (v154 = objc_msgSend(a2, "position") + 1, v154 <= objc_msgSend(a2, "length")))
          {
            v155 = [a2 data];
            [v155 getBytes:&v177 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v152 |= (v177 & 0x7F) << v150;
          if ((v177 & 0x80) == 0)
          {
            break;
          }

          v150 += 7;
          v12 = v151++ >= 9;
          if (v12)
          {
            LOBYTE(v27) = 0;
            goto LABEL_509;
          }
        }

        v27 = (v152 != 0) & ~[a2 hasError];
LABEL_509:
        v176 = 1659;
        goto LABEL_516;
      case 0xEu:
        v163 = 0;
        v164 = 0;
        v165 = 0;
        *(a1 + 1684) |= 0x20u;
        while (1)
        {
          v177 = 0;
          v166 = [a2 position] + 1;
          if (v166 >= [a2 position] && (v167 = objc_msgSend(a2, "position") + 1, v167 <= objc_msgSend(a2, "length")))
          {
            v168 = [a2 data];
            [v168 getBytes:&v177 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v165 |= (v177 & 0x7F) << v163;
          if ((v177 & 0x80) == 0)
          {
            break;
          }

          v163 += 7;
          v12 = v164++ >= 9;
          if (v12)
          {
            LOBYTE(v27) = 0;
            goto LABEL_513;
          }
        }

        v27 = (v165 != 0) & ~[a2 hasError];
LABEL_513:
        v176 = 1660;
        goto LABEL_516;
      case 0xFu:
        v169 = 0;
        v170 = 0;
        v171 = 0;
        *(a1 + 1684) |= 0x40u;
        while (1)
        {
          v177 = 0;
          v172 = [a2 position] + 1;
          if (v172 >= [a2 position] && (v173 = objc_msgSend(a2, "position") + 1, v173 <= objc_msgSend(a2, "length")))
          {
            v174 = [a2 data];
            [v174 getBytes:&v177 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v171 |= (v177 & 0x7F) << v169;
          if ((v177 & 0x80) == 0)
          {
            break;
          }

          v169 += 7;
          v12 = v170++ >= 9;
          if (v12)
          {
            LOBYTE(v27) = 0;
            goto LABEL_515;
          }
        }

        v27 = (v171 != 0) & ~[a2 hasError];
LABEL_515:
        v176 = 1661;
        goto LABEL_516;
      case 0x10u:
        v34 = PBReaderReadString();
        v35 = 80;
        goto LABEL_440;
      case 0x11u:
        v34 = PBReaderReadString();
        v35 = 88;
        goto LABEL_440;
      case 0x12u:
        v102 = 0;
        v103 = 0;
        v104 = 0;
        *(a1 + 1684) |= 0x80u;
        while (1)
        {
          v177 = 0;
          v105 = [a2 position] + 1;
          if (v105 >= [a2 position] && (v106 = objc_msgSend(a2, "position") + 1, v106 <= objc_msgSend(a2, "length")))
          {
            v107 = [a2 data];
            [v107 getBytes:&v177 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v104 |= (v177 & 0x7F) << v102;
          if ((v177 & 0x80) == 0)
          {
            break;
          }

          v102 += 7;
          v12 = v103++ >= 9;
          if (v12)
          {
            LOBYTE(v27) = 0;
            goto LABEL_489;
          }
        }

        v27 = (v104 != 0) & ~[a2 hasError];
LABEL_489:
        v176 = 1662;
        goto LABEL_516;
      case 0x13u:
        v34 = PBReaderReadString();
        v35 = 112;
        goto LABEL_440;
      case 0x14u:
        v34 = PBReaderReadString();
        v35 = 120;
        goto LABEL_440;
      case 0x15u:
        v34 = PBReaderReadString();
        v35 = 128;
        goto LABEL_440;
      case 0x16u:
        v34 = PBReaderReadString();
        v35 = 136;
        goto LABEL_440;
      case 0x17u:
        v34 = PBReaderReadString();
        v35 = 152;
        goto LABEL_440;
      case 0x18u:
        v34 = PBReaderReadString();
        v35 = 160;
        goto LABEL_440;
      case 0x19u:
        v34 = PBReaderReadString();
        v35 = 168;
        goto LABEL_440;
      case 0x1Au:
        v34 = PBReaderReadString();
        v35 = 176;
        goto LABEL_440;
      case 0x1Bu:
        v34 = PBReaderReadString();
        v35 = 184;
        goto LABEL_440;
      case 0x1Cu:
        v34 = PBReaderReadString();
        v35 = 192;
        goto LABEL_440;
      case 0x1Du:
        v34 = PBReaderReadString();
        v35 = 200;
        goto LABEL_440;
      case 0x1Eu:
        v34 = PBReaderReadString();
        v35 = 208;
        goto LABEL_440;
      case 0x1Fu:
        v34 = PBReaderReadString();
        v35 = 232;
        goto LABEL_440;
      case 0x20u:
        v34 = PBReaderReadString();
        v35 = 240;
        goto LABEL_440;
      case 0x21u:
        v34 = PBReaderReadString();
        v35 = 296;
        goto LABEL_440;
      case 0x22u:
        v34 = PBReaderReadString();
        v35 = 304;
        goto LABEL_440;
      case 0x23u:
        v34 = PBReaderReadString();
        v35 = 312;
        goto LABEL_440;
      case 0x24u:
        v34 = PBReaderReadString();
        v35 = 320;
        goto LABEL_440;
      case 0x25u:
        v34 = PBReaderReadString();
        v35 = 328;
        goto LABEL_440;
      case 0x26u:
        v34 = PBReaderReadString();
        v35 = 336;
        goto LABEL_440;
      case 0x27u:
        v34 = PBReaderReadString();
        v35 = 344;
        goto LABEL_440;
      case 0x28u:
        v34 = PBReaderReadString();
        v35 = 352;
        goto LABEL_440;
      case 0x29u:
        v34 = PBReaderReadString();
        v35 = 360;
        goto LABEL_440;
      case 0x2Au:
        v34 = PBReaderReadString();
        v35 = 368;
        goto LABEL_440;
      case 0x2Bu:
        v34 = PBReaderReadString();
        v35 = 376;
        goto LABEL_440;
      case 0x2Cu:
        v34 = PBReaderReadString();
        v35 = 384;
        goto LABEL_440;
      case 0x2Du:
        v34 = PBReaderReadString();
        v35 = 392;
        goto LABEL_440;
      case 0x2Eu:
        v34 = PBReaderReadString();
        v35 = 400;
        goto LABEL_440;
      case 0x2Fu:
        v34 = PBReaderReadString();
        v35 = 408;
        goto LABEL_440;
      case 0x30u:
        v34 = PBReaderReadString();
        v35 = 424;
        goto LABEL_440;
      case 0x31u:
        v34 = PBReaderReadString();
        v35 = 440;
        goto LABEL_440;
      case 0x32u:
        v34 = PBReaderReadString();
        v35 = 448;
        goto LABEL_440;
      case 0x33u:
        v34 = PBReaderReadString();
        v35 = 456;
        goto LABEL_440;
      case 0x34u:
        v34 = PBReaderReadString();
        v35 = 488;
        goto LABEL_440;
      case 0x35u:
        v34 = PBReaderReadString();
        v35 = 496;
        goto LABEL_440;
      case 0x36u:
        v34 = PBReaderReadString();
        v35 = 504;
        goto LABEL_440;
      case 0x37u:
        v34 = PBReaderReadString();
        v35 = 512;
        goto LABEL_440;
      case 0x38u:
        v34 = PBReaderReadString();
        v35 = 520;
        goto LABEL_440;
      case 0x39u:
        v34 = PBReaderReadString();
        v35 = 528;
        goto LABEL_440;
      case 0x3Au:
        v34 = PBReaderReadString();
        v35 = 536;
        goto LABEL_440;
      case 0x3Bu:
        v34 = PBReaderReadString();
        v35 = 552;
        goto LABEL_440;
      case 0x3Cu:
        v34 = PBReaderReadString();
        v35 = 568;
        goto LABEL_440;
      case 0x3Du:
        v34 = PBReaderReadString();
        v35 = 576;
        goto LABEL_440;
      case 0x3Eu:
        v34 = PBReaderReadString();
        v35 = 584;
        goto LABEL_440;
      case 0x3Fu:
        v34 = PBReaderReadString();
        v35 = 592;
        goto LABEL_440;
      case 0x40u:
        v34 = PBReaderReadString();
        v35 = 600;
        goto LABEL_440;
      case 0x41u:
        v34 = PBReaderReadString();
        v35 = 616;
        goto LABEL_440;
      case 0x42u:
        v34 = PBReaderReadString();
        v35 = 624;
        goto LABEL_440;
      case 0x43u:
        v34 = PBReaderReadString();
        v35 = 640;
        goto LABEL_440;
      case 0x44u:
        v34 = PBReaderReadString();
        v35 = 672;
        goto LABEL_440;
      case 0x45u:
        v34 = PBReaderReadString();
        v35 = 680;
        goto LABEL_440;
      case 0x46u:
        v34 = PBReaderReadString();
        v35 = 688;
        goto LABEL_440;
      case 0x47u:
        v78 = 0;
        v79 = 0;
        v80 = 0;
        *(a1 + 1684) |= 0x200u;
        while (1)
        {
          v177 = 0;
          v81 = [a2 position] + 1;
          if (v81 >= [a2 position] && (v82 = objc_msgSend(a2, "position") + 1, v82 <= objc_msgSend(a2, "length")))
          {
            v83 = [a2 data];
            [v83 getBytes:&v177 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v80 |= (v177 & 0x7F) << v78;
          if ((v177 & 0x80) == 0)
          {
            break;
          }

          v78 += 7;
          v12 = v79++ >= 9;
          if (v12)
          {
            LOBYTE(v27) = 0;
            goto LABEL_481;
          }
        }

        v27 = (v80 != 0) & ~[a2 hasError];
LABEL_481:
        v176 = 1664;
        goto LABEL_516;
      case 0x48u:
        v42 = 0;
        v43 = 0;
        v44 = 0;
        *(a1 + 1684) |= 0x400u;
        while (1)
        {
          v177 = 0;
          v45 = [a2 position] + 1;
          if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
          {
            v47 = [a2 data];
            [v47 getBytes:&v177 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v44 |= (v177 & 0x7F) << v42;
          if ((v177 & 0x80) == 0)
          {
            break;
          }

          v42 += 7;
          v12 = v43++ >= 9;
          if (v12)
          {
            LOBYTE(v27) = 0;
            goto LABEL_469;
          }
        }

        v27 = (v44 != 0) & ~[a2 hasError];
LABEL_469:
        v176 = 1665;
        goto LABEL_516;
      case 0x49u:
        v54 = 0;
        v55 = 0;
        v56 = 0;
        *(a1 + 1684) |= 0x800u;
        while (1)
        {
          v177 = 0;
          v57 = [a2 position] + 1;
          if (v57 >= [a2 position] && (v58 = objc_msgSend(a2, "position") + 1, v58 <= objc_msgSend(a2, "length")))
          {
            v59 = [a2 data];
            [v59 getBytes:&v177 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v56 |= (v177 & 0x7F) << v54;
          if ((v177 & 0x80) == 0)
          {
            break;
          }

          v54 += 7;
          v12 = v55++ >= 9;
          if (v12)
          {
            LOBYTE(v27) = 0;
            goto LABEL_473;
          }
        }

        v27 = (v56 != 0) & ~[a2 hasError];
LABEL_473:
        v176 = 1666;
        goto LABEL_516;
      case 0x4Au:
        v156 = 0;
        v157 = 0;
        v158 = 0;
        *(a1 + 1684) |= 0x1000u;
        while (1)
        {
          v177 = 0;
          v159 = [a2 position] + 1;
          if (v159 >= [a2 position] && (v160 = objc_msgSend(a2, "position") + 1, v160 <= objc_msgSend(a2, "length")))
          {
            v161 = [a2 data];
            [v161 getBytes:&v177 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v158 |= (v177 & 0x7F) << v156;
          if ((v177 & 0x80) == 0)
          {
            break;
          }

          v156 += 7;
          v12 = v157++ >= 9;
          if (v12)
          {
            LOBYTE(v27) = 0;
            goto LABEL_511;
          }
        }

        v27 = (v158 != 0) & ~[a2 hasError];
LABEL_511:
        v176 = 1667;
        goto LABEL_516;
      case 0x4Bu:
        v36 = 0;
        v37 = 0;
        v38 = 0;
        *(a1 + 1684) |= 0x2000u;
        while (1)
        {
          v177 = 0;
          v39 = [a2 position] + 1;
          if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
          {
            v41 = [a2 data];
            [v41 getBytes:&v177 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v38 |= (v177 & 0x7F) << v36;
          if ((v177 & 0x80) == 0)
          {
            break;
          }

          v36 += 7;
          v12 = v37++ >= 9;
          if (v12)
          {
            LOBYTE(v27) = 0;
            goto LABEL_467;
          }
        }

        v27 = (v38 != 0) & ~[a2 hasError];
LABEL_467:
        v176 = 1668;
        goto LABEL_516;
      case 0x4Cu:
        v60 = 0;
        v61 = 0;
        v62 = 0;
        *(a1 + 1684) |= 0x4000u;
        while (1)
        {
          v177 = 0;
          v63 = [a2 position] + 1;
          if (v63 >= [a2 position] && (v64 = objc_msgSend(a2, "position") + 1, v64 <= objc_msgSend(a2, "length")))
          {
            v65 = [a2 data];
            [v65 getBytes:&v177 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v62 |= (v177 & 0x7F) << v60;
          if ((v177 & 0x80) == 0)
          {
            break;
          }

          v60 += 7;
          v12 = v61++ >= 9;
          if (v12)
          {
            LOBYTE(v27) = 0;
            goto LABEL_475;
          }
        }

        v27 = (v62 != 0) & ~[a2 hasError];
LABEL_475:
        v176 = 1669;
        goto LABEL_516;
      case 0x4Du:
        v34 = PBReaderReadString();
        v35 = 704;
        goto LABEL_440;
      case 0x4Eu:
        v34 = PBReaderReadString();
        v35 = 712;
        goto LABEL_440;
      case 0x4Fu:
        v34 = PBReaderReadString();
        v35 = 720;
        goto LABEL_440;
      case 0x50u:
        v34 = PBReaderReadString();
        v35 = 728;
        goto LABEL_440;
      case 0x51u:
        v34 = PBReaderReadString();
        v35 = 736;
        goto LABEL_440;
      case 0x52u:
        v34 = PBReaderReadString();
        v35 = 744;
        goto LABEL_440;
      case 0x53u:
        v34 = PBReaderReadString();
        v35 = 752;
        goto LABEL_440;
      case 0x54u:
        v34 = PBReaderReadString();
        v35 = 760;
        goto LABEL_440;
      case 0x55u:
        v34 = PBReaderReadString();
        v35 = 792;
        goto LABEL_440;
      case 0x56u:
        v34 = PBReaderReadString();
        v35 = 800;
        goto LABEL_440;
      case 0x57u:
        v34 = PBReaderReadString();
        v35 = 808;
        goto LABEL_440;
      case 0x58u:
        v34 = PBReaderReadString();
        v35 = 832;
        goto LABEL_440;
      case 0x59u:
        v34 = PBReaderReadString();
        v35 = 848;
        goto LABEL_440;
      case 0x5Au:
        v34 = PBReaderReadString();
        v35 = 856;
        goto LABEL_440;
      case 0x5Bu:
        v34 = PBReaderReadString();
        v35 = 872;
        goto LABEL_440;
      case 0x5Cu:
        v144 = 0;
        v145 = 0;
        v146 = 0;
        *(a1 + 1684) |= 0x8000u;
        while (1)
        {
          v177 = 0;
          v147 = [a2 position] + 1;
          if (v147 >= [a2 position] && (v148 = objc_msgSend(a2, "position") + 1, v148 <= objc_msgSend(a2, "length")))
          {
            v149 = [a2 data];
            [v149 getBytes:&v177 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v146 |= (v177 & 0x7F) << v144;
          if ((v177 & 0x80) == 0)
          {
            break;
          }

          v144 += 7;
          v12 = v145++ >= 9;
          if (v12)
          {
            LOBYTE(v27) = 0;
            goto LABEL_507;
          }
        }

        v27 = (v146 != 0) & ~[a2 hasError];
LABEL_507:
        v176 = 1670;
        goto LABEL_516;
      case 0x5Du:
        v34 = PBReaderReadString();
        v35 = 880;
        goto LABEL_440;
      case 0x5Eu:
        v34 = PBReaderReadString();
        v35 = 888;
        goto LABEL_440;
      case 0x60u:
        v34 = PBReaderReadString();
        v35 = 968;
        goto LABEL_440;
      case 0x61u:
        v34 = PBReaderReadString();
        v35 = 976;
        goto LABEL_440;
      case 0x62u:
        v34 = PBReaderReadString();
        v35 = 984;
        goto LABEL_440;
      case 0x63u:
        v34 = PBReaderReadString();
        v35 = 1016;
        goto LABEL_440;
      case 0x64u:
        v34 = PBReaderReadString();
        v35 = 1024;
        goto LABEL_440;
      case 0x65u:
        v34 = PBReaderReadString();
        v35 = 1032;
        goto LABEL_440;
      case 0x66u:
        v34 = PBReaderReadString();
        v35 = 1040;
        goto LABEL_440;
      case 0x67u:
        v34 = PBReaderReadString();
        v35 = 1048;
        goto LABEL_440;
      case 0x68u:
        v34 = PBReaderReadString();
        v35 = 1056;
        goto LABEL_440;
      case 0x69u:
        v34 = PBReaderReadString();
        v35 = 1064;
        goto LABEL_440;
      case 0x6Au:
        v34 = PBReaderReadString();
        v35 = 1072;
        goto LABEL_440;
      case 0x6Bu:
        v34 = PBReaderReadString();
        v35 = 1080;
        goto LABEL_440;
      case 0x6Cu:
        v34 = PBReaderReadString();
        v35 = 1088;
        goto LABEL_440;
      case 0x6Du:
        v34 = PBReaderReadString();
        v35 = 1096;
        goto LABEL_440;
      case 0x6Eu:
        v34 = PBReaderReadString();
        v35 = 1104;
        goto LABEL_440;
      case 0x6Fu:
        v34 = PBReaderReadString();
        v35 = 1112;
        goto LABEL_440;
      case 0x70u:
        v90 = 0;
        v91 = 0;
        v92 = 0;
        *(a1 + 1684) |= 0x10000u;
        while (1)
        {
          v177 = 0;
          v93 = [a2 position] + 1;
          if (v93 >= [a2 position] && (v94 = objc_msgSend(a2, "position") + 1, v94 <= objc_msgSend(a2, "length")))
          {
            v95 = [a2 data];
            [v95 getBytes:&v177 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v92 |= (v177 & 0x7F) << v90;
          if ((v177 & 0x80) == 0)
          {
            break;
          }

          v90 += 7;
          v12 = v91++ >= 9;
          if (v12)
          {
            LOBYTE(v27) = 0;
            goto LABEL_485;
          }
        }

        v27 = (v92 != 0) & ~[a2 hasError];
LABEL_485:
        v176 = 1671;
        goto LABEL_516;
      case 0x71u:
        v34 = PBReaderReadString();
        v35 = 1120;
        goto LABEL_440;
      case 0x72u:
        v34 = PBReaderReadString();
        v35 = 1128;
        goto LABEL_440;
      case 0x73u:
        v34 = PBReaderReadString();
        v35 = 1136;
        goto LABEL_440;
      case 0x74u:
        v84 = 0;
        v85 = 0;
        v86 = 0;
        *(a1 + 1684) |= 0x20000u;
        while (1)
        {
          v177 = 0;
          v87 = [a2 position] + 1;
          if (v87 >= [a2 position] && (v88 = objc_msgSend(a2, "position") + 1, v88 <= objc_msgSend(a2, "length")))
          {
            v89 = [a2 data];
            [v89 getBytes:&v177 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v86 |= (v177 & 0x7F) << v84;
          if ((v177 & 0x80) == 0)
          {
            break;
          }

          v84 += 7;
          v12 = v85++ >= 9;
          if (v12)
          {
            LOBYTE(v27) = 0;
            goto LABEL_483;
          }
        }

        v27 = (v86 != 0) & ~[a2 hasError];
LABEL_483:
        v176 = 1672;
        goto LABEL_516;
      case 0x75u:
        v34 = PBReaderReadString();
        v35 = 1144;
        goto LABEL_440;
      case 0x76u:
        v34 = PBReaderReadString();
        v35 = 1152;
        goto LABEL_440;
      case 0x77u:
        v34 = PBReaderReadString();
        v35 = 1160;
        goto LABEL_440;
      case 0x78u:
        v34 = PBReaderReadString();
        v35 = 1168;
        goto LABEL_440;
      case 0x79u:
        v34 = PBReaderReadString();
        v35 = 1176;
        goto LABEL_440;
      case 0x7Au:
        v34 = PBReaderReadString();
        v35 = 1184;
        goto LABEL_440;
      case 0x7Bu:
        v34 = PBReaderReadString();
        v35 = 1200;
        goto LABEL_440;
      case 0x7Cu:
        v34 = PBReaderReadString();
        v35 = 1208;
        goto LABEL_440;
      case 0x7Du:
        v34 = PBReaderReadString();
        v35 = 1224;
        goto LABEL_440;
      case 0x7Eu:
        v34 = PBReaderReadString();
        v35 = 1256;
        goto LABEL_440;
      case 0x7Fu:
        v34 = PBReaderReadString();
        v35 = 1264;
        goto LABEL_440;
      case 0x80u:
        v34 = PBReaderReadString();
        v35 = 1272;
        goto LABEL_440;
      case 0x81u:
        v114 = 0;
        v115 = 0;
        v116 = 0;
        *(a1 + 1684) |= 0x40000u;
        while (1)
        {
          v177 = 0;
          v117 = [a2 position] + 1;
          if (v117 >= [a2 position] && (v118 = objc_msgSend(a2, "position") + 1, v118 <= objc_msgSend(a2, "length")))
          {
            v119 = [a2 data];
            [v119 getBytes:&v177 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v116 |= (v177 & 0x7F) << v114;
          if ((v177 & 0x80) == 0)
          {
            break;
          }

          v114 += 7;
          v12 = v115++ >= 9;
          if (v12)
          {
            LOBYTE(v27) = 0;
            goto LABEL_493;
          }
        }

        v27 = (v116 != 0) & ~[a2 hasError];
LABEL_493:
        v176 = 1673;
        goto LABEL_516;
      case 0x82u:
        v120 = 0;
        v121 = 0;
        v122 = 0;
        *(a1 + 1684) |= 0x80000u;
        while (1)
        {
          v177 = 0;
          v123 = [a2 position] + 1;
          if (v123 >= [a2 position] && (v124 = objc_msgSend(a2, "position") + 1, v124 <= objc_msgSend(a2, "length")))
          {
            v125 = [a2 data];
            [v125 getBytes:&v177 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v122 |= (v177 & 0x7F) << v120;
          if ((v177 & 0x80) == 0)
          {
            break;
          }

          v120 += 7;
          v12 = v121++ >= 9;
          if (v12)
          {
            LOBYTE(v27) = 0;
            goto LABEL_495;
          }
        }

        v27 = (v122 != 0) & ~[a2 hasError];
LABEL_495:
        v176 = 1674;
        goto LABEL_516;
      case 0x83u:
        v72 = 0;
        v73 = 0;
        v74 = 0;
        *(a1 + 1684) |= 0x100000u;
        while (1)
        {
          v177 = 0;
          v75 = [a2 position] + 1;
          if (v75 >= [a2 position] && (v76 = objc_msgSend(a2, "position") + 1, v76 <= objc_msgSend(a2, "length")))
          {
            v77 = [a2 data];
            [v77 getBytes:&v177 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v74 |= (v177 & 0x7F) << v72;
          if ((v177 & 0x80) == 0)
          {
            break;
          }

          v72 += 7;
          v12 = v73++ >= 9;
          if (v12)
          {
            LOBYTE(v27) = 0;
            goto LABEL_479;
          }
        }

        v27 = (v74 != 0) & ~[a2 hasError];
LABEL_479:
        v176 = 1675;
        goto LABEL_516;
      case 0x84u:
        v126 = 0;
        v127 = 0;
        v128 = 0;
        *(a1 + 1684) |= 0x200000u;
        while (1)
        {
          v177 = 0;
          v129 = [a2 position] + 1;
          if (v129 >= [a2 position] && (v130 = objc_msgSend(a2, "position") + 1, v130 <= objc_msgSend(a2, "length")))
          {
            v131 = [a2 data];
            [v131 getBytes:&v177 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v128 |= (v177 & 0x7F) << v126;
          if ((v177 & 0x80) == 0)
          {
            break;
          }

          v126 += 7;
          v12 = v127++ >= 9;
          if (v12)
          {
            LOBYTE(v27) = 0;
            goto LABEL_497;
          }
        }

        v27 = (v128 != 0) & ~[a2 hasError];
LABEL_497:
        v176 = 1676;
        goto LABEL_516;
      case 0x85u:
        v132 = 0;
        v133 = 0;
        v134 = 0;
        *(a1 + 1684) |= 0x400000u;
        while (1)
        {
          v177 = 0;
          v135 = [a2 position] + 1;
          if (v135 >= [a2 position] && (v136 = objc_msgSend(a2, "position") + 1, v136 <= objc_msgSend(a2, "length")))
          {
            v137 = [a2 data];
            [v137 getBytes:&v177 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v134 |= (v177 & 0x7F) << v132;
          if ((v177 & 0x80) == 0)
          {
            break;
          }

          v132 += 7;
          v12 = v133++ >= 9;
          if (v12)
          {
            LOBYTE(v27) = 0;
            goto LABEL_499;
          }
        }

        v27 = (v134 != 0) & ~[a2 hasError];
LABEL_499:
        v176 = 1677;
        goto LABEL_516;
      case 0x86u:
        v138 = 0;
        v139 = 0;
        v140 = 0;
        *(a1 + 1684) |= 0x800000u;
        while (1)
        {
          v177 = 0;
          v141 = [a2 position] + 1;
          if (v141 >= [a2 position] && (v142 = objc_msgSend(a2, "position") + 1, v142 <= objc_msgSend(a2, "length")))
          {
            v143 = [a2 data];
            [v143 getBytes:&v177 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v140 |= (v177 & 0x7F) << v138;
          if ((v177 & 0x80) == 0)
          {
            break;
          }

          v138 += 7;
          v12 = v139++ >= 9;
          if (v12)
          {
            LOBYTE(v27) = 0;
            goto LABEL_501;
          }
        }

        v27 = (v140 != 0) & ~[a2 hasError];
LABEL_501:
        v176 = 1678;
        goto LABEL_516;
      case 0x87u:
        v34 = PBReaderReadString();
        v35 = 1288;
        goto LABEL_440;
      case 0x88u:
        v34 = PBReaderReadString();
        v35 = 1296;
        goto LABEL_440;
      case 0x89u:
        v34 = PBReaderReadString();
        v35 = 1304;
        goto LABEL_440;
      case 0x8Au:
        v34 = PBReaderReadString();
        v35 = 1312;
        goto LABEL_440;
      case 0x8Bu:
        v34 = PBReaderReadString();
        v35 = 1320;
        goto LABEL_440;
      case 0x8Cu:
        v34 = PBReaderReadString();
        v35 = 1328;
        goto LABEL_440;
      case 0x8Du:
        v34 = PBReaderReadString();
        v35 = 1336;
        goto LABEL_440;
      case 0x8Eu:
        v34 = PBReaderReadString();
        v35 = 1344;
        goto LABEL_440;
      case 0x8Fu:
        v34 = PBReaderReadString();
        v35 = 1376;
        goto LABEL_440;
      case 0x90u:
        v34 = PBReaderReadString();
        v35 = 1384;
        goto LABEL_440;
      case 0x91u:
        v34 = PBReaderReadString();
        v35 = 1392;
        goto LABEL_440;
      case 0x92u:
        v34 = PBReaderReadString();
        v35 = 1416;
        goto LABEL_440;
      case 0x93u:
        v34 = PBReaderReadString();
        v35 = 1432;
        goto LABEL_440;
      case 0x94u:
        v34 = PBReaderReadString();
        v35 = 1440;
        goto LABEL_440;
      case 0x95u:
        v34 = PBReaderReadString();
        v35 = 1456;
        goto LABEL_440;
      case 0x96u:
        v48 = 0;
        v49 = 0;
        v50 = 0;
        *(a1 + 1684) |= 0x1000000u;
        while (1)
        {
          v177 = 0;
          v51 = [a2 position] + 1;
          if (v51 >= [a2 position] && (v52 = objc_msgSend(a2, "position") + 1, v52 <= objc_msgSend(a2, "length")))
          {
            v53 = [a2 data];
            [v53 getBytes:&v177 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v50 |= (v177 & 0x7F) << v48;
          if ((v177 & 0x80) == 0)
          {
            break;
          }

          v48 += 7;
          v12 = v49++ >= 9;
          if (v12)
          {
            LOBYTE(v27) = 0;
            goto LABEL_471;
          }
        }

        v27 = (v50 != 0) & ~[a2 hasError];
LABEL_471:
        v176 = 1679;
        goto LABEL_516;
      case 0x97u:
        v34 = PBReaderReadString();
        v35 = 1472;
        goto LABEL_440;
      case 0x98u:
        v34 = PBReaderReadString();
        v35 = 1480;
        goto LABEL_440;
      case 0x99u:
        v34 = PBReaderReadString();
        v35 = 1488;
        goto LABEL_440;
      case 0x9Au:
        v34 = PBReaderReadString();
        v35 = 1496;
        goto LABEL_440;
      case 0x9Bu:
        v34 = PBReaderReadString();
        v35 = 1504;
        goto LABEL_440;
      case 0x9Cu:
        v34 = PBReaderReadString();
        v35 = 1512;
        goto LABEL_440;
      case 0x9Du:
        v34 = PBReaderReadString();
        v35 = 1520;
        goto LABEL_440;
      case 0x9Fu:
        v34 = PBReaderReadString();
        v35 = 1544;
        goto LABEL_440;
      case 0xA0u:
        v34 = PBReaderReadString();
        v35 = 1552;
        goto LABEL_440;
      case 0xA1u:
        v34 = PBReaderReadString();
        v35 = 1560;
        goto LABEL_440;
      case 0xA2u:
        v34 = PBReaderReadString();
        v35 = 1568;
        goto LABEL_440;
      case 0xA3u:
        v34 = PBReaderReadString();
        v35 = 1576;
        goto LABEL_440;
      case 0xA4u:
        v66 = 0;
        v67 = 0;
        v68 = 0;
        *(a1 + 1684) |= 0x2000000u;
        while (1)
        {
          v177 = 0;
          v69 = [a2 position] + 1;
          if (v69 >= [a2 position] && (v70 = objc_msgSend(a2, "position") + 1, v70 <= objc_msgSend(a2, "length")))
          {
            v71 = [a2 data];
            [v71 getBytes:&v177 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v68 |= (v177 & 0x7F) << v66;
          if ((v177 & 0x80) == 0)
          {
            break;
          }

          v66 += 7;
          v12 = v67++ >= 9;
          if (v12)
          {
            LOBYTE(v27) = 0;
            goto LABEL_477;
          }
        }

        v27 = (v68 != 0) & ~[a2 hasError];
LABEL_477:
        v176 = 1680;
        goto LABEL_516;
      case 0xA5u:
        v34 = PBReaderReadString();
        v35 = 1584;
        goto LABEL_440;
      case 0xA6u:
        v34 = PBReaderReadString();
        v35 = 1592;
        goto LABEL_440;
      case 0xA7u:
        v34 = PBReaderReadString();
        v35 = 1600;
        goto LABEL_440;
      case 0xA8u:
        v34 = PBReaderReadString();
        v35 = 1608;
        goto LABEL_440;
      case 0xA9u:
        v34 = PBReaderReadString();
        v35 = 1616;
        goto LABEL_440;
      case 0xAAu:
        v34 = PBReaderReadString();
        v35 = 1624;
        goto LABEL_440;
      case 0xABu:
        v34 = PBReaderReadString();
        v35 = 1632;
        goto LABEL_440;
      case 0xACu:
        v34 = PBReaderReadString();
        v35 = 1640;
        goto LABEL_440;
      case 0xADu:
        v34 = PBReaderReadString();
        v35 = 1648;
        goto LABEL_440;
      case 0xAEu:
        v34 = PBReaderReadString();
        v35 = 144;
        goto LABEL_440;
      case 0xAFu:
        v108 = 0;
        v109 = 0;
        v110 = 0;
        *(a1 + 1684) |= 2u;
        while (1)
        {
          v177 = 0;
          v111 = [a2 position] + 1;
          if (v111 >= [a2 position] && (v112 = objc_msgSend(a2, "position") + 1, v112 <= objc_msgSend(a2, "length")))
          {
            v113 = [a2 data];
            [v113 getBytes:&v177 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v110 |= (v177 & 0x7F) << v108;
          if ((v177 & 0x80) == 0)
          {
            break;
          }

          v108 += 7;
          v12 = v109++ >= 9;
          if (v12)
          {
            LOBYTE(v27) = 0;
            goto LABEL_491;
          }
        }

        v27 = (v110 != 0) & ~[a2 hasError];
LABEL_491:
        v176 = 1656;
        goto LABEL_516;
      case 0xB0u:
        v34 = PBReaderReadString();
        v35 = 952;
        goto LABEL_440;
      case 0xB1u:
        v34 = PBReaderReadString();
        v35 = 96;
        goto LABEL_440;
      case 0xB2u:
        v34 = PBReaderReadString();
        v35 = 104;
        goto LABEL_440;
      case 0xB3u:
        v34 = PBReaderReadString();
        v35 = 216;
        goto LABEL_440;
      case 0xB4u:
        v34 = PBReaderReadString();
        v35 = 224;
        goto LABEL_440;
      case 0xB5u:
        v34 = PBReaderReadString();
        v35 = 248;
        goto LABEL_440;
      case 0xB6u:
        v34 = PBReaderReadString();
        v35 = 256;
        goto LABEL_440;
      case 0xB7u:
        v34 = PBReaderReadString();
        v35 = 264;
        goto LABEL_440;
      case 0xB8u:
        v34 = PBReaderReadString();
        v35 = 272;
        goto LABEL_440;
      case 0xB9u:
        v34 = PBReaderReadString();
        v35 = 280;
        goto LABEL_440;
      case 0xBAu:
        v34 = PBReaderReadString();
        v35 = 288;
        goto LABEL_440;
      case 0xBBu:
        v34 = PBReaderReadString();
        v35 = 416;
        goto LABEL_440;
      case 0xBCu:
        v34 = PBReaderReadString();
        v35 = 432;
        goto LABEL_440;
      case 0xBDu:
        v34 = PBReaderReadString();
        v35 = 464;
        goto LABEL_440;
      case 0xBEu:
        v34 = PBReaderReadString();
        v35 = 544;
        goto LABEL_440;
      case 0xBFu:
        v34 = PBReaderReadString();
        v35 = 560;
        goto LABEL_440;
      case 0xC0u:
        v34 = PBReaderReadString();
        v35 = 864;
        goto LABEL_440;
      case 0xC1u:
        v34 = PBReaderReadString();
        v35 = 632;
        goto LABEL_440;
      case 0xC2u:
        v34 = PBReaderReadString();
        v35 = 896;
        goto LABEL_440;
      case 0xC3u:
        v34 = PBReaderReadString();
        v35 = 904;
        goto LABEL_440;
      case 0xC4u:
        v34 = PBReaderReadString();
        v35 = 1448;
        goto LABEL_440;
      case 0xC5u:
        v34 = PBReaderReadString();
        v35 = 1216;
        goto LABEL_440;
      case 0xC6u:
        v34 = PBReaderReadString();
        v35 = 648;
        goto LABEL_440;
      case 0xC7u:
        v34 = PBReaderReadString();
        v35 = 920;
        goto LABEL_440;
      case 0xC8u:
        v34 = PBReaderReadString();
        v35 = 912;
        goto LABEL_440;
      case 0xC9u:
        v34 = PBReaderReadString();
        v35 = 960;
        goto LABEL_440;
      case 0xCAu:
        v34 = PBReaderReadString();
        v35 = 944;
        goto LABEL_440;
      case 0xCBu:
        v34 = PBReaderReadString();
        v35 = 1464;
        goto LABEL_440;
      case 0xCCu:
        v34 = PBReaderReadString();
        v35 = 1232;
        goto LABEL_440;
      case 0xCDu:
        v34 = PBReaderReadString();
        v35 = 1248;
        goto LABEL_440;
      case 0xCEu:
        v34 = PBReaderReadString();
        v35 = 1240;
        goto LABEL_440;
      case 0xCFu:
        v34 = PBReaderReadString();
        v35 = 664;
        goto LABEL_440;
      case 0xD0u:
        v34 = PBReaderReadString();
        v35 = 656;
        goto LABEL_440;
      case 0xD1u:
        v34 = PBReaderReadString();
        v35 = 992;
        goto LABEL_440;
      case 0xD2u:
        v34 = PBReaderReadString();
        v35 = 1008;
        goto LABEL_440;
      case 0xD3u:
        v34 = PBReaderReadString();
        v35 = 1000;
        goto LABEL_440;
      case 0xD4u:
        v34 = PBReaderReadString();
        v35 = 936;
        goto LABEL_440;
      case 0xD5u:
        v34 = PBReaderReadString();
        v35 = 928;
        goto LABEL_440;
      case 0xD6u:
        v34 = PBReaderReadString();
        v35 = 472;
        goto LABEL_440;
      case 0xD7u:
        v34 = PBReaderReadString();
        v35 = 480;
        goto LABEL_440;
      case 0xD8u:
        v96 = 0;
        v97 = 0;
        v98 = 0;
        *(a1 + 1684) |= 0x100u;
        break;
      case 0xD9u:
        v34 = PBReaderReadString();
        v35 = 840;
        goto LABEL_440;
      case 0xDAu:
        v34 = PBReaderReadString();
        v35 = 608;
        goto LABEL_440;
      case 0xDBu:
        v34 = PBReaderReadString();
        v35 = 696;
        goto LABEL_440;
      case 0xDCu:
        v34 = PBReaderReadString();
        v35 = 1424;
        goto LABEL_440;
      case 0xDDu:
        v34 = PBReaderReadString();
        v35 = 1192;
        goto LABEL_440;
      case 0xDEu:
        v34 = PBReaderReadString();
        v35 = 1280;
        goto LABEL_440;
      case 0xDFu:
        v34 = PBReaderReadString();
        v35 = 768;
        goto LABEL_440;
      case 0xE0u:
        v34 = PBReaderReadString();
        v35 = 776;
        goto LABEL_440;
      case 0xE1u:
        v34 = PBReaderReadString();
        v35 = 784;
        goto LABEL_440;
      case 0xE2u:
        v34 = PBReaderReadString();
        v35 = 816;
        goto LABEL_440;
      case 0xE3u:
        v34 = PBReaderReadString();
        v35 = 824;
        goto LABEL_440;
      case 0xE4u:
        v34 = PBReaderReadString();
        v35 = 1352;
        goto LABEL_440;
      case 0xE5u:
        v34 = PBReaderReadString();
        v35 = 1360;
        goto LABEL_440;
      case 0xE6u:
        v34 = PBReaderReadString();
        v35 = 1368;
        goto LABEL_440;
      case 0xE7u:
        v34 = PBReaderReadString();
        v35 = 1400;
        goto LABEL_440;
      case 0xE8u:
        v34 = PBReaderReadString();
        v35 = 1408;
        goto LABEL_440;
      case 0xE9u:
        v34 = PBReaderReadString();
        v35 = 1528;
        goto LABEL_440;
      case 0xEAu:
        v34 = PBReaderReadString();
        v35 = 1536;
LABEL_440:
        v162 = *(a1 + v35);
        *(a1 + v35) = v34;

        continue;
      default:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        continue;
    }

    while (1)
    {
      v177 = 0;
      v99 = [a2 position] + 1;
      if (v99 >= [a2 position] && (v100 = objc_msgSend(a2, "position") + 1, v100 <= objc_msgSend(a2, "length")))
      {
        v101 = [a2 data];
        [v101 getBytes:&v177 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v98 |= (v177 & 0x7F) << v96;
      if ((v177 & 0x80) == 0)
      {
        break;
      }

      v96 += 7;
      v12 = v97++ >= 9;
      if (v12)
      {
        LOBYTE(v27) = 0;
        goto LABEL_487;
      }
    }

    v27 = (v98 != 0) & ~[a2 hasError];
LABEL_487:
    v176 = 1663;
LABEL_516:
    *(a1 + v176) = v27;
LABEL_441:
    ;
  }

  return [a2 hasError] ^ 1;
}

void sub_2334520E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t SocketReadCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a5;
  if (v7)
  {
    v10 = v7;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v10 socket];
      if (a2 == 1 && v8 == a1)
      {
        [v10 readData];
      }
    }
  }

  return MEMORY[0x2821F96F8]();
}

uint64_t HostResolveCallback(uint64_t a1, int a2, void *a3, void *a4)
{
  v7 = a4;
  if (v7)
  {
    v15 = v7;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v15 host];
      if (!a2 && v8 == a1)
      {
        v9 = [v15 timeoutTimer];
        if (v9)
        {
          v10 = v9;
          v11 = [v15 timeoutTimer];
          v12 = dispatch_source_testcancel(v11);

          if (!v12)
          {
            v13 = [v15 timeoutTimer];
            dispatch_source_cancel(v13);
          }
        }

        if (a3 && *a3)
        {
          [v15 didFailWithHostStreamError:{*a3, a3[1]}];
        }

        else
        {
          [v15 hostResolutionDone];
        }
      }
    }
  }

  return MEMORY[0x2821F96F8]();
}

void sub_23345669C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak(&a15);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2334590DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, id location, char a58)
{
  objc_destroyWeak(&a56);
  objc_destroyWeak(&location);
  _Block_object_dispose(&a58, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23345A3C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23345F268(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_23345F930()
{
  type metadata accessor for NPTDRapportManager();
  swift_allocObject();
  result = sub_233460408();
  qword_27DE0D7E0 = result;
  return result;
}

uint64_t NPTDRapportManager.devices.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
}

uint64_t sub_23345F9A4@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)(uint64_t *a1, uint64_t *a2, uint64_t *a3)@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 40);
  v5 = *(v3 + 48);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_2334643FC;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_233423224(v4);
}

uint64_t sub_23345FA38(uint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(uint64_t, uint64_t, uint64_t (*)(uint64_t, uint64_t, uint64_t), uint64_t))
{
  v5 = *a1;
  v6 = *a2;
  v8 = *a3;
  v7 = a3[1];
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v7;

  a4(v5, v6, sub_233465940, v9);
}

uint64_t sub_23345FAE0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_2334643C0;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 40);
  v9 = *(v7 + 48);
  *(v7 + 40) = v6;
  *(v7 + 48) = v5;
  sub_233423224(v3);
  return sub_233423234(v8);
}

uint64_t sub_23345FB9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, uint64_t *, void *))
{
  v11 = a2;
  v12 = a1;
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  v10[0] = sub_233465948;
  v10[1] = v8;

  a5(&v12, &v11, v10);
}

uint64_t NPTDRapportManager.requestHandler.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  sub_233423224(v1);
  return v1;
}

uint64_t NPTDRapportManager.requestHandler.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 40);
  v6 = *(v2 + 48);
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return sub_233423234(v5);
}

uint64_t sub_23345FD3C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 56);
  v5 = *(v3 + 64);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_2334643BC;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_233423224(v4);
}

uint64_t sub_23345FDD0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_2334643B8;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 56);
  v9 = *(v7 + 64);
  *(v7 + 56) = v6;
  *(v7 + 64) = v5;
  sub_233423224(v3);
  return sub_233423234(v8);
}

uint64_t NPTDRapportManager.responseHandler.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  sub_233423224(v1);
  return v1;
}

uint64_t NPTDRapportManager.responseHandler.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 56);
  v6 = *(v2 + 64);
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return sub_233423234(v5);
}

uint64_t sub_23345FF80@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 72);
  v5 = *(v3 + 80);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_23346593C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_233423224(v4);
}

uint64_t sub_233460014(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_233465988;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 72);
  v9 = *(v7 + 80);
  *(v7 + 72) = v6;
  *(v7 + 80) = v5;
  sub_233423224(v3);
  return sub_233423234(v8);
}

uint64_t NPTDRapportManager.deviceFoundHandler.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  sub_233423224(v1);
  return v1;
}

uint64_t NPTDRapportManager.deviceFoundHandler.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 72);
  v6 = *(v2 + 80);
  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return sub_233423234(v5);
}

uint64_t sub_2334601C4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 88);
  v5 = *(v3 + 96);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_2334643B0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_233423224(v4);
}

uint64_t sub_233460258(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_2334643A8;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 88);
  v9 = *(v7 + 96);
  *(v7 + 88) = v6;
  *(v7 + 96) = v5;
  sub_233423224(v3);
  return sub_233423234(v8);
}

uint64_t NPTDRapportManager.deviceLostHandler.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  sub_233423224(v1);
  return v1;
}

uint64_t NPTDRapportManager.deviceLostHandler.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 88);
  v6 = *(v2 + 96);
  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return sub_233423234(v5);
}

uint64_t sub_233460408()
{
  v1 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D810, &qword_233476B08) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v3 = &aBlock - v2;
  v4 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_233470DF4())
  {
    sub_2334655B8(MEMORY[0x277D84F90]);
  }

  else
  {
    v5 = MEMORY[0x277D84FA0];
  }

  *(v0 + 24) = v5;
  *(v0 + 32) = v4;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  v6 = [objc_allocWithZone(MEMORY[0x277D44158]) init];
  *(v0 + 16) = v6;
  [v6 setControlFlags_];
  v7 = *(v0 + 16);
  v8 = sub_233470C24();
  [v7 setServiceType_];

  v9 = *(v0 + 16);
  v10 = swift_allocObject();
  swift_weakInit();
  v32 = sub_2334654E4;
  v33 = v10;
  aBlock = MEMORY[0x277D85DD0];
  v29 = 1107296256;
  v30 = sub_233469D74;
  v31 = &block_descriptor_87;
  v11 = _Block_copy(&aBlock);
  v12 = v9;

  [v12 setDeviceFoundHandler_];
  _Block_release(v11);

  v13 = *(v0 + 16);
  v14 = swift_allocObject();
  swift_weakInit();
  v32 = sub_2334654EC;
  v33 = v14;
  aBlock = MEMORY[0x277D85DD0];
  v29 = 1107296256;
  v30 = sub_233469D74;
  v31 = &block_descriptor_91;
  v15 = _Block_copy(&aBlock);
  v16 = v13;

  [v16 setDeviceLostHandler_];
  _Block_release(v15);

  v17 = *(v0 + 16);
  v18 = swift_allocObject();
  swift_weakInit();
  v32 = sub_2334654F4;
  v33 = v18;
  aBlock = MEMORY[0x277D85DD0];
  v29 = 1107296256;
  v30 = sub_233460E08;
  v31 = &block_descriptor_95;
  v19 = _Block_copy(&aBlock);
  v20 = v17;

  [v20 setDeviceChangedHandler_];
  _Block_release(v19);

  v21 = *(v0 + 16);
  v22 = sub_233470C24();
  v23 = swift_allocObject();
  swift_weakInit();

  v32 = sub_2334654FC;
  v33 = v23;
  aBlock = MEMORY[0x277D85DD0];
  v29 = 1107296256;
  v30 = sub_23346107C;
  v31 = &block_descriptor_99;
  v24 = _Block_copy(&aBlock);

  [v21 registerRequestID:v22 options:0 handler:v24];
  _Block_release(v24);

  v25 = sub_233470D04();
  (*(*(v25 - 8) + 56))(v3, 1, 1, v25);
  v26 = swift_allocObject();
  v26[2] = 0;
  v26[3] = 0;
  v26[4] = v0;

  sub_233461824(0, 0, v3, &unk_233476BF8, v26);

  return v0;
}

uint64_t sub_2334608FC(void *a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    if (qword_27DE0D7F0 != -1)
    {
      swift_once();
    }

    v4 = sub_233470BE4();
    __swift_project_value_buffer(v4, qword_27DE0DAD0);
    v5 = a1;
    v6 = sub_233470BC4();
    v7 = sub_233470D64();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      *(v8 + 4) = v5;
      *v9 = v5;
      v10 = v5;
      _os_log_impl(&dword_233421000, v6, v7, "Rapport client Found device %@", v8, 0xCu);
      sub_2334644B8(v9, &qword_27DE0D808, &qword_233476B00);
      MEMORY[0x23839F8C0](v9, -1, -1);
      MEMORY[0x23839F8C0](v8, -1, -1);
    }

    v11 = [*(v3 + 16) activeDevices];
    sub_2334658C8(0, &qword_27DE0D840, 0x277D44168);
    v12 = sub_233470C94();

    swift_beginAccess();
    v13 = *(v3 + 32);
    *(v3 + 32) = v12;

    swift_beginAccess();
    v14 = *(v3 + 72);
    if (v14)
    {
      v15 = *(v3 + 80);

      v14(v5);
      sub_233423234(v14);
    }
  }

  return result;
}

uint64_t sub_233460B1C(void *a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    if (qword_27DE0D7F0 != -1)
    {
      swift_once();
    }

    v4 = sub_233470BE4();
    __swift_project_value_buffer(v4, qword_27DE0DAD0);
    v5 = a1;
    v6 = sub_233470BC4();
    v7 = sub_233470D64();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      *(v8 + 4) = v5;
      *v9 = v5;
      v10 = v5;
      _os_log_impl(&dword_233421000, v6, v7, "Rapport client Lost device %@", v8, 0xCu);
      sub_2334644B8(v9, &qword_27DE0D808, &qword_233476B00);
      MEMORY[0x23839F8C0](v9, -1, -1);
      MEMORY[0x23839F8C0](v8, -1, -1);
    }

    v11 = [*(v3 + 16) activeDevices];
    sub_2334658C8(0, &qword_27DE0D840, 0x277D44168);
    v12 = sub_233470C94();

    swift_beginAccess();
    v13 = *(v3 + 32);
    *(v3 + 32) = v12;

    swift_beginAccess();
    v14 = *(v3 + 88);
    if (v14)
    {
      v15 = *(v3 + 96);

      v14(v5);
      sub_233423234(v14);
    }
  }

  return result;
}

uint64_t sub_233460D3C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = [*(result + 16) activeDevices];
    sub_2334658C8(0, &qword_27DE0D840, 0x277D44168);
    v3 = sub_233470C94();

    swift_beginAccess();
    v4 = *(v1 + 32);
    *(v1 + 32) = v3;
  }

  return result;
}

void sub_233460E08(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_233460E7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    if (qword_27DE0D7F0 != -1)
    {
      swift_once();
    }

    v10 = sub_233470BE4();
    __swift_project_value_buffer(v10, qword_27DE0DAD0);

    v11 = sub_233470BC4();
    v12 = sub_233470D64();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      v15 = sub_233470BF4();
      *(v13 + 4) = v15;
      *v14 = v15;
      _os_log_impl(&dword_233421000, v11, v12, "Rapport received request %@", v13, 0xCu);
      sub_2334644B8(v14, &qword_27DE0D808, &qword_233476B00);
      MEMORY[0x23839F8C0](v14, -1, -1);
      MEMORY[0x23839F8C0](v13, -1, -1);
    }

    swift_beginAccess();
    v16 = *(v9 + 40);
    if (v16)
    {
      v17 = *(v9 + 48);

      v16(a1, a2, a3, a4);
      sub_233423234(v16);
    }
  }

  return result;
}

uint64_t sub_23346107C(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = sub_233470C04();
  if (a3)
  {
    a3 = sub_233470C04();
  }

  v9 = _Block_copy(a4);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;

  v7(v8, a3, sub_2334658C0, v10);
}

void sub_233461188(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  if (a1)
  {
    v7 = sub_233470BF4();
    if (!v6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = 0;
  if (a2)
  {
LABEL_3:
    v6 = sub_233470BF4();
  }

LABEL_4:
  if (a3)
  {
    v8 = sub_233470B94();
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  (*(a4 + 16))(a4, v7, v6);
}

uint64_t sub_233461290()
{
  v1 = *(v0[18] + 16);
  v0[2] = v0;
  v0[3] = sub_2334613A8;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D800, &qword_233476AF8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_233461778;
  v0[13] = &block_descriptor_106;
  v0[14] = v2;
  [v1 activateWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2334613A8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 152) = v2;
  if (v2)
  {
    v3 = sub_2334615CC;
  }

  else
  {
    v3 = sub_2334614B8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2334614B8()
{
  if (qword_27DE0D7F0 != -1)
  {
    swift_once();
  }

  v1 = sub_233470BE4();
  __swift_project_value_buffer(v1, qword_27DE0DAD0);
  v2 = sub_233470BC4();
  v3 = sub_233470D34();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_233421000, v2, v3, "Rapport client activated", v4, 2u);
    MEMORY[0x23839F8C0](v4, -1, -1);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_2334615CC()
{
  v1 = *(v0 + 152);
  swift_willThrow();
  if (qword_27DE0D7F0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 152);
  v3 = sub_233470BE4();
  __swift_project_value_buffer(v3, qword_27DE0DAD0);
  v4 = v2;
  v5 = sub_233470BC4();
  v6 = sub_233470D34();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 152);
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_233421000, v5, v6, "Rapport client activated with error: %@", v9, 0xCu);
    sub_2334644B8(v10, &qword_27DE0D808, &qword_233476B00);
    MEMORY[0x23839F8C0](v10, -1, -1);
    MEMORY[0x23839F8C0](v9, -1, -1);
  }

  else
  {
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_233461778(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D838, &qword_233476BE8);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x282200950](v8);
  }
}

uint64_t sub_233461824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D810, &qword_233476B08) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = v26 - v10;
  sub_233464448(a3, v26 - v10);
  v12 = sub_233470D04();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_2334644B8(v11, &qword_27DE0D810, &qword_233476B08);
  }

  else
  {
    sub_233470CF4();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_233470CC4();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_233470C44() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_2334644B8(a3, &qword_27DE0D810, &qword_233476B08);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2334644B8(a3, &qword_27DE0D810, &qword_233476B08);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

void *NPTDRapportManager.fetchDevice(withName:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 32);
  if (v5 >> 62)
  {
    goto LABEL_24;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_233470DF4())
  {

    if (!i)
    {
      break;
    }

    v7 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x23839EB30](v7, v5);
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v8 = *(v5 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v11 = [v8 name];
      if (v11)
      {
        v12 = v11;
        v13 = a2;
        v14 = sub_233470C34();
        v16 = v15;

        if (v14 == a1 && v16 == v13)
        {

LABEL_20:

          return v9;
        }

        a2 = v13;
        v18 = sub_233470F04();

        if (v18)
        {
          goto LABEL_20;
        }
      }

      ++v7;
      if (v10 == i)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    ;
  }

LABEL_18:

  return 0;
}

uint64_t NPTDRapportManager.sendRequest(toDevice:device:)(uint64_t a1, uint64_t a2)
{
  v3[22] = a2;
  v3[23] = v2;
  v3[21] = a1;
  return MEMORY[0x2822009F8](sub_233461CD8, 0, 0);
}

uint64_t sub_233461CD8()
{
  v31 = v0;
  if (qword_27DE0D7F0 != -1)
  {
    swift_once();
  }

  v2 = v0[22];
  v1 = v0[23];
  v3 = sub_233470BE4();
  v0[24] = __swift_project_value_buffer(v3, qword_27DE0DAD0);
  swift_retain_n();
  v4 = v2;
  v5 = sub_233470BC4();
  v6 = sub_233470D64();

  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[22];
  v8 = v0[23];
  if (v7)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412546;
    *(v10 + 4) = v9;
    *v11 = v9;
    *(v10 + 12) = 2048;
    swift_beginAccess();
    v12 = *(v8 + 32);
    if (v12 >> 62)
    {
      if (v12 < 0)
      {
        v28 = *(v8 + 32);
      }

      v13 = sub_233470DF4();
    }

    else
    {
      v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v14 = v0[23];
    v15 = v0[22];

    *(v10 + 14) = v13;

    _os_log_impl(&dword_233421000, v5, v6, "Will send request to %@, device count %ld", v10, 0x16u);
    sub_2334644B8(v11, &qword_27DE0D808, &qword_233476B00);
    MEMORY[0x23839F8C0](v11, -1, -1);
    MEMORY[0x23839F8C0](v10, -1, -1);
  }

  else
  {
    v16 = v0[23];
  }

  v0[25] = v9;
  v18 = v0[22];
  v17 = v0[23];
  v19 = [objc_allocWithZone(MEMORY[0x277D44158]) init];
  v0[26] = v19;
  [v19 setDestinationDevice_];
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  *(v21 + 24) = v19;
  v0[14] = sub_233463D98;
  v0[15] = v21;
  v22 = MEMORY[0x277D85DD0];
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_233462600;
  v0[13] = &block_descriptor;
  v23 = _Block_copy(v0 + 10);
  v24 = v0[15];
  v25 = v19;

  [v25 setInvalidationHandler_];
  _Block_release(v23);
  swift_beginAccess();
  v26 = v25;
  sub_233463DEC(&v30, v26);
  swift_endAccess();

  v0[2] = v0;
  v0[3] = sub_2334620B8;
  v27 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D800, &qword_233476AF8);
  v0[10] = v22;
  v0[11] = 1107296256;
  v0[12] = sub_233461778;
  v0[13] = &block_descriptor_10;
  v0[14] = v27;
  [v26 activateWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2334620B8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 216) = v2;
  if (v2)
  {
    v3 = sub_233462450;
  }

  else
  {
    v3 = sub_2334621C8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2334621C8()
{
  v1 = v0[24];
  v2 = v0[22];
  v3 = sub_233470BC4();
  v4 = sub_233470D44();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[25];
    v6 = v0[22];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v5;
    v9 = v6;
    _os_log_impl(&dword_233421000, v3, v4, "Activated send client to %@", v7, 0xCu);
    sub_2334644B8(v8, &qword_27DE0D808, &qword_233476B00);
    MEMORY[0x23839F8C0](v8, -1, -1);
    MEMORY[0x23839F8C0](v7, -1, -1);
  }

  v10 = v0[26];
  v12 = v0[22];
  v11 = v0[23];
  v13 = v0[21];

  v14 = sub_233470C24();
  v15 = sub_233470BF4();
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = v12;
  v17[4] = v10;
  v0[14] = sub_233464114;
  v0[15] = v17;
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_23346295C;
  v0[13] = &block_descriptor_17;
  v18 = _Block_copy(v0 + 10);
  v19 = v0[15];
  v20 = v12;
  v21 = v10;

  [v21 sendRequestID:v14 request:v15 options:0 responseHandler:v18];

  _Block_release(v18);
  v22 = v0[1];

  return v22();
}

uint64_t sub_233462450()
{
  v1 = v0[27];
  v2 = v0[24];
  v3 = v0[22];
  swift_willThrow();
  v4 = v3;
  v5 = v1;
  v6 = sub_233470BC4();
  v7 = sub_233470D44();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[27];
    v9 = v0[25];
    v10 = v0[22];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412546;
    *(v11 + 4) = v10;
    *v12 = v9;
    *(v11 + 12) = 2112;
    v13 = v10;
    v14 = v8;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v15;
    v12[1] = v15;
    _os_log_impl(&dword_233421000, v6, v7, "Activated send client to %@ with error %@", v11, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D808, &qword_233476B00);
    swift_arrayDestroy();
    MEMORY[0x23839F8C0](v12, -1, -1);
    MEMORY[0x23839F8C0](v11, -1, -1);
  }

  v17 = v0[26];
  v16 = v0[27];

  [v17 invalidate];
  v18 = v0[1];

  return v18();
}

uint64_t sub_233462600(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_233462644(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    if (qword_27DE0D7F0 != -1)
    {
      swift_once();
    }

    v13 = sub_233470BE4();
    __swift_project_value_buffer(v13, qword_27DE0DAD0);
    v14 = a5;
    v15 = sub_233470BC4();
    v16 = sub_233470D44();

    if (os_log_type_enabled(v15, v16))
    {
      v34 = a6;
      v17 = a1;
      v18 = a2;
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      *(v19 + 4) = v14;
      *v20 = v14;
      v21 = v14;
      _os_log_impl(&dword_233421000, v15, v16, "Received response from %@", v19, 0xCu);
      sub_2334644B8(v20, &qword_27DE0D808, &qword_233476B00);
      MEMORY[0x23839F8C0](v20, -1, -1);
      v22 = v19;
      a2 = v18;
      a1 = v17;
      a6 = v34;
      MEMORY[0x23839F8C0](v22, -1, -1);
    }

    if (a3)
    {
      v23 = v14;
      v24 = a3;
      v25 = sub_233470BC4();
      v26 = sub_233470D44();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        *v27 = 138412546;
        *(v27 + 4) = v23;
        *v28 = v23;
        *(v27 + 12) = 2112;
        v29 = v23;
        v30 = a3;
        v31 = _swift_stdlib_bridgeErrorToNSError();
        *(v27 + 14) = v31;
        v28[1] = v31;
        _os_log_impl(&dword_233421000, v25, v26, "Response from %@ contains error %@", v27, 0x16u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D808, &qword_233476B00);
        swift_arrayDestroy();
        MEMORY[0x23839F8C0](v28, -1, -1);
        MEMORY[0x23839F8C0](v27, -1, -1);
      }

      else
      {
      }
    }

    swift_beginAccess();
    v32 = *(v12 + 56);
    if (v32)
    {
      v33 = *(v12 + 64);

      v32(a1, a2, a3);
      sub_233423234(v32);
    }

    [a6 invalidate];
  }

  return result;
}

uint64_t sub_23346295C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (a2)
  {
    v8 = sub_233470C04();
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = 0;
  if (a3)
  {
LABEL_3:
    v5 = sub_233470C04();
  }

LABEL_4:

  v9 = a4;
  v7(v8, v5, a4);
}

uint64_t NPTDRapportManager.sendEvent(toDevice:device:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D810, &qword_233476B08) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v8 = &v30[-v7];
  if (qword_27DE0D7F0 != -1)
  {
    swift_once();
  }

  v9 = sub_233470BE4();
  __swift_project_value_buffer(v9, qword_27DE0DAD0);
  swift_retain_n();
  v10 = a2;

  v11 = sub_233470BC4();
  v12 = sub_233470D64();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412802;
    *(v13 + 4) = v10;
    *v14 = v10;
    *(v13 + 12) = 2048;
    swift_beginAccess();
    v15 = *(v3 + 32);
    if (v15 >> 62)
    {
      if (v15 < 0)
      {
        v29 = *(v3 + 32);
      }

      v16 = sub_233470DF4();
    }

    else
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v17 = v10;

    *(v13 + 14) = v16;

    *(v13 + 22) = 2112;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D818, &qword_233476B20);
    v18 = sub_233470BF4();
    *(v13 + 24) = v18;
    v14[1] = v18;
    _os_log_impl(&dword_233421000, v11, v12, "Will send event to %@, device count %ld, event %@", v13, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D808, &qword_233476B00);
    swift_arrayDestroy();
    MEMORY[0x23839F8C0](v14, -1, -1);
    MEMORY[0x23839F8C0](v13, -1, -1);
  }

  else
  {
  }

  v19 = [objc_allocWithZone(MEMORY[0x277D44158]) init];
  [v19 setDestinationDevice_];
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  *(v21 + 24) = v19;
  aBlock[4] = sub_23346595C;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_233462600;
  aBlock[3] = &block_descriptor_24;
  v22 = _Block_copy(aBlock);
  v23 = v19;

  [v23 setInvalidationHandler_];
  _Block_release(v22);
  swift_beginAccess();
  v24 = v23;
  sub_233463DEC(&v31, v24);
  swift_endAccess();

  v25 = sub_233470D04();
  (*(*(v25 - 8) + 56))(v8, 1, 1, v25);
  v26 = swift_allocObject();
  v26[2] = 0;
  v26[3] = 0;
  v26[4] = v24;
  v26[5] = v10;
  v26[6] = a1;
  v27 = v10;

  sub_233461824(0, 0, v8, &unk_233476B18, v26);
}

void sub_233462E98(uint64_t a1, void *a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_beginAccess();
    v3 = sub_233465000(a2);
    swift_endAccess();
  }
}

uint64_t sub_233462F28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[19] = a5;
  v6[20] = a6;
  v6[18] = a4;
  return MEMORY[0x2822009F8](sub_233462F4C, 0, 0);
}

uint64_t sub_233462F4C()
{
  v1 = v0[18];
  v0[2] = v0;
  v0[3] = sub_233463060;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D800, &qword_233476AF8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_233461778;
  v0[13] = &block_descriptor_77;
  v0[14] = v2;
  [v1 activateWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_233463060()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 168) = v2;
  if (v2)
  {
    v3 = sub_233463410;
  }

  else
  {
    v3 = sub_233463170;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_233463170()
{
  if (qword_27DE0D7F0 != -1)
  {
    swift_once();
  }

  v1 = v0[19];
  v2 = sub_233470BE4();
  __swift_project_value_buffer(v2, qword_27DE0DAD0);
  v3 = v1;
  v4 = sub_233470BC4();
  v5 = sub_233470D44();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[19];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_233421000, v4, v5, "Activated send client to %@", v7, 0xCu);
    sub_2334644B8(v8, &qword_27DE0D808, &qword_233476B00);
    MEMORY[0x23839F8C0](v8, -1, -1);
    MEMORY[0x23839F8C0](v7, -1, -1);
  }

  v11 = v0[19];
  v10 = v0[20];
  v12 = v0[18];

  v13 = sub_233470C24();
  sub_233469DDC(v10);
  v14 = sub_233470BF4();

  v15 = swift_allocObject();
  *(v15 + 16) = v11;
  *(v15 + 24) = v12;
  v0[14] = sub_233464688;
  v0[15] = v15;
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_23346387C;
  v0[13] = &block_descriptor_83;
  v16 = _Block_copy(v0 + 10);
  v17 = v0[15];
  v18 = v11;
  v19 = v12;

  [v19 sendEventID:v13 event:v14 options:0 completion:v16];
  _Block_release(v16);

  v20 = v0[1];

  return v20();
}

uint64_t sub_233463410()
{
  v1 = v0[21];
  swift_willThrow();
  if (qword_27DE0D7F0 != -1)
  {
    swift_once();
  }

  v2 = v0[21];
  v3 = v0[19];
  v4 = sub_233470BE4();
  __swift_project_value_buffer(v4, qword_27DE0DAD0);
  v5 = v3;
  v6 = v2;
  v7 = sub_233470BC4();
  v8 = sub_233470D44();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[21];
    v10 = v0[19];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412546;
    *(v11 + 4) = v10;
    *v12 = v10;
    *(v11 + 12) = 2112;
    v13 = v10;
    v14 = v9;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v15;
    v12[1] = v15;
    _os_log_impl(&dword_233421000, v7, v8, "Activated send client to %@ with error %@", v11, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D808, &qword_233476B00);
    swift_arrayDestroy();
    MEMORY[0x23839F8C0](v12, -1, -1);
    MEMORY[0x23839F8C0](v11, -1, -1);
  }

  v16 = v0[21];
  v17 = v0[18];

  [v17 invalidate];
  v18 = v0[1];

  return v18();
}

id sub_233463600(void *a1, void *a2, void *a3)
{
  if (qword_27DE0D7F0 != -1)
  {
    swift_once();
  }

  v6 = sub_233470BE4();
  __swift_project_value_buffer(v6, qword_27DE0DAD0);
  v7 = a2;
  v8 = sub_233470BC4();
  v9 = sub_233470D44();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    *(v10 + 4) = v7;
    *v11 = v7;
    v12 = v7;
    _os_log_impl(&dword_233421000, v8, v9, "Event sent to %@", v10, 0xCu);
    sub_2334644B8(v11, &qword_27DE0D808, &qword_233476B00);
    MEMORY[0x23839F8C0](v11, -1, -1);
    MEMORY[0x23839F8C0](v10, -1, -1);
  }

  if (a1)
  {
    v13 = v7;
    v14 = a1;
    v15 = sub_233470BC4();
    v16 = sub_233470D44();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412546;
      *(v17 + 4) = v13;
      *v18 = v13;
      *(v17 + 12) = 2112;
      v19 = v13;
      v20 = a1;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 14) = v21;
      v18[1] = v21;
      _os_log_impl(&dword_233421000, v15, v16, "Event Response from %@ contains error %@", v17, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D808, &qword_233476B00);
      swift_arrayDestroy();
      MEMORY[0x23839F8C0](v18, -1, -1);
      MEMORY[0x23839F8C0](v17, -1, -1);
    }

    else
    {
    }
  }

  return [a3 invalidate];
}

void sub_23346387C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t NPTDRapportManager.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 48);
  sub_233423234(*(v0 + 40));
  v4 = *(v0 + 64);
  sub_233423234(*(v0 + 56));
  v5 = *(v0 + 80);
  sub_233423234(*(v0 + 72));
  v6 = *(v0 + 96);
  sub_233423234(*(v0 + 88));
  return v0;
}

uint64_t NPTDRapportManager.__deallocating_deinit()
{
  NPTDRapportManager.deinit();

  return MEMORY[0x2821FE8D8](v0, 104, 7);
}

uint64_t sub_233463970()
{
  if (qword_27DE0D7D8 != -1)
  {
    swift_once();
  }
}

BOOL sub_2334639E0(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_233463A38(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_233463A84(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_233463B7C;

  return v7(a1);
}

uint64_t sub_233463B7C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_233463C74(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

_BYTE **sub_233463CAC(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_233463CBC(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_233463D30@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *sub_233463DCC(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_233463DEC(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_233470E04();

    if (v9)
    {

      sub_2334658C8(0, &qword_27DE0D828, 0x277D44158);
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = sub_233470DF4();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v21 = sub_233464690(v7, result + 1);
    v22 = *(v21 + 16);
    if (*(v21 + 24) <= v22)
    {
      sub_233464880(v22 + 1);
    }

    v20 = v8;
    sub_233464AA8(v20, v21);

    *v3 = v21;
    goto LABEL_16;
  }

  sub_2334658C8(0, &qword_27DE0D828, 0x277D44158);
  v11 = *(v6 + 40);
  v12 = sub_233470D94();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    v20 = a2;
    sub_233464B2C(v20, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v26;
LABEL_16:
    *a1 = v20;
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v6 + 48) + 8 * v14);
    v17 = sub_233470DA4();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v23 = *(*(v6 + 48) + 8 * v14);
  *a1 = v23;
  v24 = v23;
  return 0;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_23346406C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t objectdestroy_6Tm()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_233464160(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_233464228;

  return sub_233462F28(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_233464228()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void type metadata accessor for _NPTTestType()
{
  if (!qword_27DE0D820)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27DE0D820);
    }
  }
}

uint64_t sub_2334643C8(void *a1, void *a2, void *a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  return v4(*a1, *a2, *a3);
}

uint64_t sub_233464404(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v8 = a2;
  v9 = a1;
  v7 = a3;
  return v4(&v9, &v8, &v7);
}

uint64_t sub_233464448(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D810, &qword_233476B08);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2334644B8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_233464518(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_233465950;

  return sub_233463A84(a1, v5);
}

uint64_t sub_2334645D0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_233464228;

  return sub_233463A84(a1, v5);
}

uint64_t sub_233464690(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D830, &qword_233476BE0);
    v2 = sub_233470E84();
    v16 = v2;
    sub_233470DE4();
    if (sub_233470E14())
    {
      sub_2334658C8(0, &qword_27DE0D828, 0x277D44158);
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_233464880(v10 + 1);
        }

        v2 = v16;
        v3 = *(v16 + 40);
        result = sub_233470D94();
        v5 = v16 + 56;
        v6 = -1 << *(v16 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v8 == v12;
            if (v8 == v12)
            {
              v8 = 0;
            }

            v11 |= v13;
            v14 = *(v5 + 8 * v8);
          }

          while (v14 == -1);
          v9 = __clz(__rbit64(~v14)) + (v8 << 6);
        }

        *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v16 + 48) + 8 * v9) = v15;
        ++*(v16 + 16);
      }

      while (sub_233470E14());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_233464880(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D830, &qword_233476BE0);
  result = sub_233470E74();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      result = sub_233470D94();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_233464AA8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_233470D94();
  v5 = -1 << *(a2 + 32);
  result = sub_233470DD4();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_233464B2C(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_233464880(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_233464C9C();
      goto LABEL_12;
    }

    sub_233464DEC(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  v10 = sub_233470D94();
  v11 = -1 << *(v8 + 32);
  a2 = v10 & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    sub_2334658C8(0, &qword_27DE0D828, 0x277D44158);
    do
    {
      v13 = *(*(v8 + 48) + 8 * a2);
      v14 = sub_233470DA4();

      if (v14)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v15 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v15 + 48) + 8 * a2) = a1;
  v16 = *(v15 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v15 + 16) = v18;
    return;
  }

  __break(1u);
LABEL_15:
  sub_233470F24();
  __break(1u);
}

id sub_233464C9C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D830, &qword_233476BE0);
  v2 = *v0;
  v3 = sub_233470E64();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_233464DEC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D830, &qword_233476BE0);
  result = sub_233470E74();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(v6 + 40);
      v18 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      result = sub_233470D94();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v18;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_233465000(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    v5 = *v1;

    v6 = a1;
    v7 = sub_233470E24();

    if (v7)
    {
      v8 = sub_233465198();

      return v8;
    }

    return 0;
  }

  v10 = v1;
  sub_2334658C8(0, &qword_27DE0D828, 0x277D44158);
  v11 = *(v3 + 40);
  v12 = sub_233470D94();
  v13 = -1 << *(v3 + 32);
  v14 = v12 & ~v13;
  if (((*(v3 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
    return 0;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v3 + 48) + 8 * v14);
    v17 = sub_233470DA4();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v3 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      return 0;
    }
  }

  v18 = *v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v10;
  v22 = *v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_233464C9C();
    v20 = v22;
  }

  v21 = *(*(v20 + 48) + 8 * v14);
  sub_233465300(v14);
  result = v21;
  *v10 = v22;
  return result;
}

uint64_t sub_233465198()
{
  v1 = v0;
  v2 = *v0;

  v3 = sub_233470DF4();
  v4 = swift_unknownObjectRetain();
  v5 = sub_233464690(v4, v3);
  v15 = v5;
  v6 = *(v5 + 40);

  v7 = sub_233470D94();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    sub_2334658C8(0, &qword_27DE0D828, 0x277D44158);
    while (1)
    {
      v11 = *(*(v5 + 48) + 8 * v9);
      v12 = sub_233470DA4();

      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v13 = *(*(v5 + 48) + 8 * v9);
  sub_233465300(v9);
  result = sub_233470DA4();
  if (result)
  {
    *v1 = v15;
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_233465300(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_233470DC4();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 8 * v6);
        v13 = sub_233470D94();

        v14 = v13 & v7;
        if (v2 >= v10)
        {
          if (v14 >= v10 && v2 >= v14)
          {
LABEL_16:
            v17 = *(v3 + 48);
            v18 = (v17 + 8 * v2);
            v19 = (v17 + 8 * v6);
            if (v2 != v6 || v18 >= v19 + 1)
            {
              *v18 = *v19;
              v2 = v6;
            }
          }
        }

        else if (v14 >= v10 || v2 >= v14)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_233465504(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_233465950;

  return sub_233461270(a1, v4, v5, v6);
}

void sub_2334655B8(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_233470DF4())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D830, &qword_233476BE0);
      v3 = sub_233470E94();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_233470DF4();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v40 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v38 = v1;
    while (1)
    {
      v8 = MEMORY[0x23839EB30](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = *(v3 + 40);
      v12 = sub_233470D94();
      v13 = -1 << *(v3 + 32);
      v14 = v12 & ~v13;
      v15 = v14 >> 6;
      v16 = *(v6 + 8 * (v14 >> 6));
      v17 = 1 << v14;
      if (((1 << v14) & v16) != 0)
      {
        v18 = ~v13;
        sub_2334658C8(0, &qword_27DE0D828, 0x277D44158);
        while (1)
        {
          v19 = *(*(v3 + 48) + 8 * v14);
          v20 = sub_233470DA4();

          if (v20)
          {
            break;
          }

          v14 = (v14 + 1) & v18;
          v15 = v14 >> 6;
          v16 = *(v6 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            v1 = v38;
            v5 = v40;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v38;
        v5 = v40;
        if (v7 == v40)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v15) = v17 | v16;
        *(*(v3 + 48) + 8 * v14) = v10;
        v21 = *(v3 + 16);
        v9 = __OFADD__(v21, 1);
        v22 = v21 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        *(v3 + 16) = v22;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v23 = 0;
    v37 = v1 + 32;
    v39 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v23 != v39)
    {
      v24 = *(v3 + 40);
      v25 = *(v37 + 8 * v23);
      v26 = sub_233470D94();
      v27 = -1 << *(v3 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      v30 = *(v6 + 8 * (v28 >> 6));
      v31 = 1 << v28;
      if (((1 << v28) & v30) != 0)
      {
        v32 = ~v27;
        sub_2334658C8(0, &qword_27DE0D828, 0x277D44158);
        do
        {
          v33 = *(*(v3 + 48) + 8 * v28);
          v34 = sub_233470DA4();

          if (v34)
          {

            v5 = v40;
            goto LABEL_23;
          }

          v28 = (v28 + 1) & v32;
          v29 = v28 >> 6;
          v30 = *(v6 + 8 * (v28 >> 6));
          v31 = 1 << v28;
        }

        while (((1 << v28) & v30) != 0);
        v5 = v40;
      }

      *(v6 + 8 * v29) = v31 | v30;
      *(*(v3 + 48) + 8 * v28) = v25;
      v35 = *(v3 + 16);
      v9 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      *(v3 + 16) = v36;
LABEL_23:
      if (++v23 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

uint64_t sub_2334658C8(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

NPTKit::NPTDRequestType_optional __swiftcall NPTDRequestType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 8;
  if (rawValue < 8)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_233465A74()
{
  result = qword_27DE0D848;
  if (!qword_27DE0D848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE0D848);
  }

  return result;
}

uint64_t sub_233465AC8()
{
  v1 = *v0;
  sub_233470F44();
  MEMORY[0x23839EBD0](v1);
  return sub_233470F64();
}

uint64_t sub_233465B3C()
{
  v1 = *v0;
  sub_233470F44();
  MEMORY[0x23839EBD0](v1);
  return sub_233470F64();
}

uint64_t getEnumTagSinglePayload for NPTDRemoteConstants(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for NPTDRemoteConstants(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NPTDRequestType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NPTDRequestType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_233465DF0()
{
  v0 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v1 = sub_233470C24();
  v2 = [v0 initWithMachServiceName:v1 options:0];

  type metadata accessor for NetworkPerformanceTesterDClient();
  swift_allocObject();
  v3 = sub_2334698B4();

  qword_27DE0D850 = v3;
}

uint64_t static NetworkPerformanceTesterDClient.shared.getter()
{
  if (qword_27DE0D7E8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_233465F0C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D870, &qword_233476E88);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_233476D10;
  *(v2 + 56) = MEMORY[0x277D837D0];
  *(v2 + 32) = a1;
  *(v2 + 40) = 0xEB00000000646574;
  sub_233470F34();
}

void sub_233465FA0()
{
  v0 = sub_233470B94();
  if (qword_27DE0D7F8 != -1)
  {
    swift_once();
  }

  v1 = sub_233470BE4();
  __swift_project_value_buffer(v1, qword_27DE0DAE8);
  v18 = v0;
  oslog = sub_233470BC4();
  v2 = sub_233470D54();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v19 = v4;
    *v3 = 136315394;
    v5 = [v18 localizedDescription];
    v6 = sub_233470C34();
    v8 = v7;

    v9 = sub_23346E54C(v6, v8, &v19);

    *(v3 + 4) = v9;
    *(v3 + 12) = 2080;
    v10 = [v18 localizedFailureReason];
    if (v10)
    {
      v11 = v10;
      v12 = sub_233470C34();
      v14 = v13;
    }

    else
    {
      v12 = 0;
      v14 = 0xE000000000000000;
    }

    v16 = sub_23346E54C(v12, v14, &v19);

    *(v3 + 14) = v16;
    _os_log_impl(&dword_233421000, oslog, v2, "Error on remote object proxy: %s %s", v3, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23839F8C0](v4, -1, -1);
    MEMORY[0x23839F8C0](v3, -1, -1);

    v15 = v18;
  }

  else
  {

    v15 = oslog;
  }
}

void sub_2334661BC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t NetworkPerformanceTesterDClient.testService(withArguments:)(uint64_t a1)
{
  *(v2 + 168) = a1;
  *(v2 + 176) = v1;
  return MEMORY[0x2822009F8](sub_233466244, 0, 0);
}

uint64_t sub_233466244()
{
  v1 = v0[21];
  v2 = *(v0[22] + 24);
  v3 = sub_233470C84();
  v0[23] = v3;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_233466388;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D858, &qword_233476D48);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2334664E4;
  v0[13] = &block_descriptor_0;
  v0[14] = v4;
  [v2 testServiceWithArguments:v3 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_233466388()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_233466468, 0, 0);
}

uint64_t sub_233466468()
{
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v3 = *(v0 + 160);

  v4 = *(v0 + 8);

  return v4(v2, v1, v3);
}

uint64_t sub_2334664E4(uint64_t a1, uint64_t a2)
{
  v3 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v4 = sub_233470C34();
  v5 = *(*(v3 + 64) + 40);
  *v5 = a2;
  v5[1] = v4;
  v5[2] = v6;

  return MEMORY[0x282200948](v3);
}

uint64_t sub_233466700(int a1, void *aBlock, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v4 = sub_233470C94();
  v3[4] = v4;

  v5 = swift_task_alloc();
  v3[5] = v5;
  *v5 = v3;
  v5[1] = sub_2334667D8;

  return NetworkPerformanceTesterDClient.testService(withArguments:)(v4);
}

uint64_t sub_2334667D8(uint64_t a1)
{
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 16);
  v10 = *v1;

  v7 = sub_233470C24();
  (v5)[2](v5, a1, v7);

  _Block_release(v5);

  v8 = *(v10 + 8);

  return v8();
}

uint64_t NetworkPerformanceTesterDClient.getPrivilegedFileHandle(forPath:)(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  return MEMORY[0x2822009F8](sub_233466994, 0, 0);
}

uint64_t sub_233466994()
{
  v1 = v0[20];
  v2 = v0[19];
  v3 = *(v0[21] + 24);
  v4 = sub_233470C24();
  v0[22] = v4;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_233466AD0;
  v5 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D860, &qword_233476D58);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_233466CBC;
  v0[13] = &block_descriptor_3;
  v0[14] = v5;
  [v3 getPrivilegedFileHandleForPath:v4 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_233466AD0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 184) = v2;
  if (v2)
  {
    v3 = sub_233466C4C;
  }

  else
  {
    v3 = sub_233466BE0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_233466BE0()
{
  v1 = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_233466C4C()
{
  v1 = v0[22];
  v2 = v0[23];
  swift_willThrow();

  v3 = v0[1];
  v4 = v0[23];

  return v3();
}

uint64_t sub_233466CBC(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D838, &qword_233476BE8);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x282200958](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_233466F20(int a1, void *aBlock, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v4 = sub_233470C34();
  v6 = v5;
  v3[4] = v5;

  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_233466FF4;

  return NetworkPerformanceTesterDClient.getPrivilegedFileHandle(forPath:)(v4, v6);
}

uint64_t sub_233466FF4(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = *(*v2 + 32);
  v8 = *(*v2 + 16);
  v9 = *v2;

  v10 = *(v5 + 24);
  if (v3)
  {
    v11 = sub_233470B94();

    (v10)[2](v10, 0, v11);
    _Block_release(v10);
  }

  else
  {
    (v10)[2](*(v5 + 24), a1, 0);
    _Block_release(v10);
  }

  v12 = *(v9 + 8);

  return v12();
}

uint64_t sub_2334671D4()
{
  v1 = *(v0[19] + 24);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_2334672F4;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D860, &qword_233476D58);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_233466CBC;
  v0[13] = &block_descriptor_7;
  v0[14] = v2;
  [v1 getPrivilegedFileHandleForPacketCaptureWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2334672F4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 160) = v2;
  if (v2)
  {
    v3 = sub_233467420;
  }

  else
  {
    v3 = sub_233467404;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_233467420()
{
  v1 = *(v0 + 160);
  swift_willThrow();
  v2 = *(v0 + 8);
  v3 = *(v0 + 160);

  return v2();
}

uint64_t sub_233467604(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_2334676AC;

  return NetworkPerformanceTesterDClient.getPrivilegedFileHandleForPacketCapture()();
}

uint64_t sub_2334676AC(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 32);
  v7 = *(*v2 + 16);
  v8 = *v2;

  v9 = *(v5 + 24);
  if (v3)
  {
    v10 = sub_233470B94();

    (v9)[2](v9, 0, v10);
    _Block_release(v9);
  }

  else
  {
    (v9)[2](v9, a1, 0);
    _Block_release(v9);
  }

  v11 = *(v8 + 8);

  return v11();
}

void NetworkPerformanceTesterDClient.startLocalPerformanceTest(with:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 24);
  v7[4] = a2;
  v7[5] = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_233467918;
  v7[3] = &block_descriptor_11;
  v6 = _Block_copy(v7);

  [v5 startLocalPerformanceTestWith:a1 completionHandler:v6];
  _Block_release(v6);
}

uint64_t sub_233467918(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a3;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D838, &qword_233476BE8);
    v3 = sub_233470C94();
  }

  v7 = a2;
  v6(a2, v3);
}

void sub_233467AE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D838, &qword_233476BE8);
    v5 = sub_233470C84();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

void NetworkPerformanceTesterDClient.stopLocalPerformanceTest(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  v5[4] = a1;
  v5[5] = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_233467C30;
  v5[3] = &block_descriptor_14;
  v4 = _Block_copy(v5);

  [v3 stopLocalPerformanceTest_];
  _Block_release(v4);
}

void sub_233467C30(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t NetworkPerformanceTesterDClient.deinit()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t NetworkPerformanceTesterDClient.__deallocating_deinit()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t static NetworkPerformanceTesterDClient.sharedInstance()()
{
  if (qword_27DE0D7E8 != -1)
  {
    swift_once();
  }
}

uint64_t NetworkPerformanceTesterDClient.testService(withArguments:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D810, &qword_233476B08) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v10 = &v14 - v9;
  v11 = sub_233470D04();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v4;
  v12[5] = a1;
  v12[6] = a2;
  v12[7] = a3;

  sub_233461824(0, 0, v10, &unk_233476D78, v12);
}

uint64_t sub_233467FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[23] = a6;
  v7[24] = a7;
  v7[21] = a4;
  v7[22] = a5;
  return MEMORY[0x2822009F8](sub_233467FC8, 0, 0);
}

uint64_t sub_233467FC8()
{
  v1 = v0[22];
  v2 = *(v0[21] + 24);
  v3 = sub_233470C84();
  v0[25] = v3;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_23346810C;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D858, &qword_233476D48);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2334664E4;
  v0[13] = &block_descriptor_100;
  v0[14] = v4;
  [v2 testServiceWithArguments:v3 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_23346810C()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2334681EC, 0, 0);
}

uint64_t sub_2334681EC()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 184);
  v3 = *(v0 + 144);
  v4 = *(v0 + 152);
  v5 = *(v0 + 160);

  v2(v3, v4, v5);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_233468284(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_233464228;

  return sub_233467FA4(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t NetworkPerformanceTesterDClient.getPrivilegedFileHandle(forPath:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D810, &qword_233476B08) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v12 = &v16 - v11;
  v13 = sub_233470D04();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v5;
  v14[5] = a1;
  v14[6] = a2;
  v14[7] = a3;
  v14[8] = a4;

  sub_233461824(0, 0, v12, &unk_233476D88, v14);
}

uint64_t sub_23346849C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a7;
  v8[3] = a8;
  v11 = swift_task_alloc();
  v8[4] = v11;
  *v11 = v8;
  v11[1] = sub_23346854C;

  return NetworkPerformanceTesterDClient.getPrivilegedFileHandle(forPath:)(a5, a6);
}

uint64_t sub_23346854C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v7 = sub_2334686FC;
  }

  else
  {
    *(v4 + 48) = a1;
    v7 = sub_233468674;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_233468674()
{
  v1 = v0[6];
  v3 = v0[2];
  v2 = v0[3];
  v4 = v1;
  v3(v1, 0);

  v5 = v0[1];

  return v5();
}

uint64_t sub_2334686FC()
{
  v1 = v0[5];
  v3 = v0[2];
  v2 = v0[3];
  v4 = v1;
  v3(0, v1);

  v5 = v0[1];

  return v5();
}

uint64_t sub_23346878C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_233465950;

  return sub_23346849C(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t NetworkPerformanceTesterDClient.getPrivilegedFileHandle(forPacketCapture:)(uint64_t a1, uint64_t a2)
{
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D810, &qword_233476B08) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v11 - v6;
  v8 = sub_233470D04();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v2;
  v9[5] = a1;
  v9[6] = a2;

  sub_233461824(0, 0, v7, &unk_233476D98, v9);
}

uint64_t sub_23346898C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[20] = a5;
  v6[21] = a6;
  v6[19] = a4;
  return MEMORY[0x2822009F8](sub_2334689B0, 0, 0);
}

uint64_t sub_2334689B0()
{
  v1 = *(v0[19] + 24);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_233468AD0;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D860, &qword_233476D58);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_233466CBC;
  v0[13] = &block_descriptor_96;
  v0[14] = v2;
  [v1 getPrivilegedFileHandleForPacketCaptureWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_233468AD0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 176) = v2;
  if (v2)
  {
    v3 = sub_233468C68;
  }

  else
  {
    v3 = sub_233468BE0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_233468BE0()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[18];
  v4 = v3;
  v2(v3, 0);

  v5 = v0[1];

  return v5();
}

uint64_t sub_233468C68()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];
  swift_willThrow();
  v4 = v1;
  v3(0, v1);

  v5 = v0[1];

  return v5();
}

uint64_t sub_233468D08(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_233465950;

  return sub_23346898C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_233468E28()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_233465950;

  return sub_233467604(v2, v3);
}

uint64_t sub_233468ED4(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_233465950;

  return v7();
}

uint64_t sub_233468FBC()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_233465950;

  return sub_233468ED4(v2, v3, v5);
}

uint64_t sub_23346907C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_233464228;

  return v8();
}

uint64_t sub_233469164(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_233465950;

  return sub_23346907C(a1, v4, v5, v7);
}

uint64_t sub_233469230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D810, &qword_233476B08) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = v24 - v10;
  sub_233464448(a3, v24 - v10);
  v12 = sub_233470D04();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_2334694EC(v11);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_233470CF4();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v14 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v15 = sub_233470CC4();
  v17 = v16;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v18 = sub_233470C44() + 32;
    v19 = swift_allocObject();
    *(v19 + 16) = a4;
    *(v19 + 24) = a5;

    if (v17 | v15)
    {
      v25[0] = 0;
      v25[1] = 0;
      v20 = v25;
      v25[2] = v15;
      v25[3] = v17;
    }

    else
    {
      v20 = 0;
    }

    v24[1] = 7;
    v24[2] = v20;
    v24[3] = v18;
    v22 = swift_task_create();

    sub_2334694EC(a3);

    return v22;
  }

LABEL_8:
  sub_2334694EC(a3);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_2334694EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D810, &qword_233476B08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_233469554(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_233465950;

  return sub_233463A84(a1, v5);
}

uint64_t sub_23346960C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_233464228;

  return sub_233463A84(a1, v5);
}

uint64_t sub_2334696C4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_233465950;

  return sub_233466F20(v2, v3, v4);
}

uint64_t objectdestroy_65Tm()
{
  _Block_release(*(v0 + 24));
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2334697C0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_233465950;

  return sub_233466700(v2, v3, v4);
}

uint64_t objectdestroy_44Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2334698B4()
{
  [objc_opt_self() interfaceWithProtocol_];
  sub_2334658C8(0, &qword_27DE0D868, 0x277CBEB98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D870, &qword_233476E88);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_233476D20;
  v1 = sub_2334658C8(0, &qword_27DE0D878, off_2789D3938);
  *(v0 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D880, &qword_233476E90);
  *(v0 + 32) = v1;
  v2 = sub_2334658C8(0, &qword_27DE0D888, 0x277CBEA60);
  *(v0 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D890, &qword_233476E98);
  *(v0 + 64) = v2;
  v3 = sub_2334658C8(0, &qword_27DE0D898, 0x277CCA9B8);
  *(v0 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D8A0, &qword_233476EA0);
  *(v0 + 96) = v3;
  MEMORY[0x23839EA00](v0);
  result = sub_233470D24();
  __break(1u);
  return result;
}

uint64_t block_copy_helper_101(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_233469D74(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_233469DDC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D8D8, &qword_233476FB8);
    v2 = sub_233470EE4();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_23346406C(*(a1 + 56) + 32 * v13, v36);
    *&v35 = v16;
    *(&v35 + 1) = v15;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];

    swift_dynamicCast();
    sub_233423688(v34, v33);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D818, &qword_233476B20);
    swift_dynamicCast();
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_233423688(&v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_233423688(v32, v33);
    v17 = *(v2 + 40);
    result = sub_233470E34();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v25;
    *(v11 + 16) = v26;
    *(v11 + 32) = v27;
    result = sub_233423688(v33, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_23346A0D8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D8E8, &qword_233476FC8);
    v2 = sub_233470EE4();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = v14 | (v13 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        v24 = *(*(a1 + 56) + 8 * v15);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D818, &qword_233476B20);
        swift_dynamicCast();
        sub_233423688(&v25, v27);
        sub_233423688(v27, v28);
        sub_233423688(v28, &v26);
        result = sub_23346EB38(v18, v17);
        if (v19)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_0(v12);
          result = sub_233423688(&v26, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v20 = (v2[6] + 16 * result);
          *v20 = v18;
          v20[1] = v17;
          result = sub_233423688(&v26, (v2[7] + 32 * result));
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_21;
          }

          v2[2] = v23;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_23346A32C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_23346FCC4;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_233423224(v4);
}

uint64_t sub_23346A3C0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_23346FC90;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 32);
  v9 = *(v7 + 40);
  *(v7 + 32) = v6;
  *(v7 + 40) = v5;
  sub_233423224(v3);
  return sub_233423234(v8);
}

uint64_t NetworkPerformanceTesterDRemoteClient.destinationDeviceDiscoveredHandler.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_233423224(v1);
  return v1;
}

uint64_t NetworkPerformanceTesterDRemoteClient.destinationDeviceDiscoveredHandler.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return sub_233423234(v5);
}

uint64_t sub_23346A570@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 48);
  v5 = *(v3 + 56);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_23346F354;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_233423224(v4);
}

uint64_t sub_23346A604(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_23346F31C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 48);
  v9 = *(v7 + 56);
  *(v7 + 48) = v6;
  *(v7 + 56) = v5;
  sub_233423224(v3);
  return sub_233423234(v8);
}

uint64_t NetworkPerformanceTesterDRemoteClient.destinationDeviceLostHandler.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  sub_233423224(v1);
  return v1;
}

uint64_t NetworkPerformanceTesterDRemoteClient.destinationDeviceLostHandler.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 48);
  v6 = *(v2 + 56);
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return sub_233423234(v5);
}

uint64_t sub_23346A7B4@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 64);
  v5 = *(v3 + 72);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_23346F2F4;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_233423224(v4);
}

uint64_t sub_23346A848(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_23346F2CC;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 64);
  v9 = *(v7 + 72);
  *(v7 + 64) = v6;
  *(v7 + 72) = v5;
  sub_233423224(v3);
  return sub_233423234(v8);
}

uint64_t NetworkPerformanceTesterDRemoteClient.destinationDeviceDisconnected.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  sub_233423224(v1);
  return v1;
}

uint64_t NetworkPerformanceTesterDRemoteClient.destinationDeviceDisconnected.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 64);
  v6 = *(v2 + 72);
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return sub_233423234(v5);
}

uint64_t NetworkPerformanceTesterDRemoteClient.__allocating_init(remoteDevice:)(void *a1)
{
  swift_allocObject();
  v2 = sub_23346EE84(a1);

  return v2;
}

uint64_t NetworkPerformanceTesterDRemoteClient.init(remoteDevice:)(void *a1)
{
  v2 = sub_23346EE84(a1);

  return v2;
}

uint64_t sub_23346AA70(void *a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    if (qword_27DE0D7F8 != -1)
    {
      swift_once();
    }

    v4 = sub_233470BE4();
    __swift_project_value_buffer(v4, qword_27DE0DAE8);
    v5 = a1;
    v6 = sub_233470BC4();
    v7 = sub_233470D64();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      *(v8 + 4) = v5;
      *v9 = v5;
      v10 = v5;
      _os_log_impl(&dword_233421000, v6, v7, "NetworkPerformanceTesterDRemoteClient lost device %@", v8, 0xCu);
      sub_2334644B8(v9, &qword_27DE0D808, &qword_233476B00);
      MEMORY[0x23839F8C0](v9, -1, -1);
      MEMORY[0x23839F8C0](v8, -1, -1);
    }

    swift_beginAccess();
    v11 = *(v3 + 48);
    if (v11)
    {
      v12 = *(v3 + 56);

      v11(v5);

      return sub_233423234(v11);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_23346AC34()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    if (qword_27DE0D7F8 != -1)
    {
      swift_once();
    }

    v2 = sub_233470BE4();
    __swift_project_value_buffer(v2, qword_27DE0DAE8);
    v3 = sub_233470BC4();
    v4 = sub_233470D54();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_233421000, v3, v4, "NetworkPerformanceTesterDRemoteClient disconnected from remote", v5, 2u);
      MEMORY[0x23839F8C0](v5, -1, -1);
    }

    swift_beginAccess();
    v6 = *(v1 + 64);
    if (v6)
    {
      v7 = *(v1 + 72);

      v6(v8);

      return sub_233423234(v6);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_23346AD8C(void *a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    if (qword_27DE0D7F8 != -1)
    {
      swift_once();
    }

    v4 = sub_233470BE4();
    __swift_project_value_buffer(v4, qword_27DE0DAE8);
    v5 = a1;
    v6 = sub_233470BC4();
    v7 = sub_233470D64();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      *(v8 + 4) = v5;
      *v9 = v5;
      v10 = v5;
      _os_log_impl(&dword_233421000, v6, v7, "NetworkPerformanceTesterDRemoteClient found device %@", v8, 0xCu);
      sub_2334644B8(v9, &qword_27DE0D808, &qword_233476B00);
      MEMORY[0x23839F8C0](v9, -1, -1);
      MEMORY[0x23839F8C0](v8, -1, -1);
    }

    swift_beginAccess();
    v11 = *(v3 + 32);
    if (v11)
    {
      v12 = *(v3 + 40);

      v11(v5);

      return sub_233423234(v11);
    }

    else
    {
    }
  }

  return result;
}

void sub_23346AF50()
{
  v1 = *(v0 + 24);
  v2 = sub_233470C24();
  v3 = swift_allocObject();
  swift_weakInit();
  v5[4] = sub_23346FC74;
  v5[5] = v3;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_23346C488;
  v5[3] = &block_descriptor_80;
  v4 = _Block_copy(v5);

  [v1 registerEventID:v2 options:0 handler:v4];
  _Block_release(v4);
}

void sub_23346B05C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_23;
  }

  if (!a2)
  {

    v96 = 0u;
    v97 = 0u;
    goto LABEL_22;
  }

  v5 = Strong;
  sub_233470E54();
  if (!*(a2 + 16) || (v6 = sub_23346EAF4(v95), (v7 & 1) == 0))
  {
    sub_23346F768(v95);
    v96 = 0u;
    v97 = 0u;
    goto LABEL_20;
  }

  sub_23346406C(*(a2 + 56) + 32 * v6, &v96);
  sub_23346F768(v95);
  if (!*(&v97 + 1))
  {
LABEL_20:

LABEL_22:
    sub_2334644B8(&v96, &qword_27DE0D920, &qword_233477000);
    goto LABEL_23;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_30:

    goto LABEL_23;
  }

  v9 = v95[0];
  v8 = v95[1];
  sub_233470E54();
  if (*(a1 + 16))
  {
    v10 = sub_23346EAF4(v95);
    if (v11)
    {
      sub_23346406C(*(a1 + 56) + 32 * v10, &v96);
      sub_23346F768(v95);
      if (swift_dynamicCast())
      {
        if (qword_27DE0D7F8 != -1)
        {
          swift_once();
        }

        v12 = sub_233470BE4();
        __swift_project_value_buffer(v12, qword_27DE0DAE8);

        v13 = sub_233470BC4();
        v14 = sub_233470D64();

        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          v16 = swift_slowAlloc();
          v95[0] = v16;
          *v15 = 136315138;
          *(v15 + 4) = sub_23346E54C(v9, v8, v95);
          _os_log_impl(&dword_233421000, v13, v14, "eventHandler triggered in NPTDRemoteClient for sender event from %s", v15, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v16);
          MEMORY[0x23839F8C0](v16, -1, -1);
          MEMORY[0x23839F8C0](v15, -1, -1);
        }

        v17 = v5[2];
        if (v17 && (v18 = [v17 idsDeviceIdentifier]) != 0)
        {
          v19 = v18;
          v20 = sub_233470C34();
          v22 = v21;

          if (v20 == v9 && v22 == v8)
          {

            goto LABEL_37;
          }

          v33 = sub_233470F04();

          if (v33)
          {
LABEL_37:

            v34 = sub_233470BC4();
            v35 = sub_233470D64();

            if (os_log_type_enabled(v34, v35))
            {
              v36 = swift_slowAlloc();
              v37 = swift_slowAlloc();
              *v36 = 138412290;
              v38 = objc_allocWithZone(MEMORY[0x277CBEAC0]);
              v39 = sub_233470BF4();
              v40 = [v38 initWithDictionary_];

              *(v36 + 4) = v40;
              *v37 = v40;
              _os_log_impl(&dword_233421000, v34, v35, "eventHandler triggered in NPTDRemoteClient for event %@", v36, 0xCu);
              sub_2334644B8(v37, &qword_27DE0D808, &qword_233476B00);
              MEMORY[0x23839F8C0](v37, -1, -1);
              MEMORY[0x23839F8C0](v36, -1, -1);
            }

            NPTDRequestType.init(rawValue:)(0x5474736575716552);
            if (v94 <= 5u)
            {
              if (v94 != 4)
              {
                if (v94 == 5)
                {
                  *&v96 = 0x746C75736552;
                  *(&v96 + 1) = 0xE600000000000000;
                  sub_233470E54();
                  if (*(a1 + 16) && (v41 = sub_23346EAF4(v95), (v42 & 1) != 0))
                  {
                    sub_23346406C(*(a1 + 56) + 32 * v41, &v96);
                    sub_23346F768(v95);
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D938, &unk_233477010);
                    if (swift_dynamicCast())
                    {
                      v43 = 0x5474736575716552;
                    }

                    else
                    {
                      v43 = 0;
                    }
                  }

                  else
                  {
                    sub_23346F768(v95);
                    v43 = 0;
                  }

                  sub_233470E54();
                  if (*(a1 + 16) && (v63 = sub_23346EAF4(v95), (v64 & 1) != 0))
                  {
                    sub_23346406C(*(a1 + 56) + 32 * v63, &v96);
                    sub_23346F768(v95);
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D930, &qword_233477008);
                    if (swift_dynamicCast())
                    {
                      v91 = v43;
                      v65 = MEMORY[0x277D84F90];
                      v95[0] = MEMORY[0x277D84F90];
                      v66 = MEMORY[0x73726F727255];
                      if (MEMORY[0x73726F727255])
                      {
                        sub_2334658C8(0, &qword_27DE0D928, 0x277CCAAC8);
                        sub_2334658C8(0, &qword_27DE0D898, 0x277CCA9B8);
                        v67 = 0x73726F72726DLL;
                        do
                        {
                          v69 = *(v67 - 8);
                          v68 = *v67;
                          sub_23346F9DC(v69, *v67);
                          v70 = sub_233470D74();
                          if (v70)
                          {
                            v71 = v70;
                            MEMORY[0x23839E8F0]();
                            if (*((v95[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v95[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                            {
                              sub_233470CA4();
                            }

                            sub_233470CB4();
                            sub_23346FBA0(v69, v68);

                            v65 = v95[0];
                          }

                          else
                          {
                            sub_23346FBA0(v69, v68);
                          }

                          v67 += 16;
                          --v66;
                        }

                        while (v66);
                      }

                      v72 = v5;
                      v43 = v91;
                      v73 = v5[16];
                      if (!v73)
                      {
                        goto LABEL_110;
                      }

LABEL_88:
                      v74 = v72[17];
                      if (v65 >> 62)
                      {
                        v75 = sub_233470DF4();
                      }

                      else
                      {
                        v75 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
                      }

                      if (v75)
                      {
                        v75 = sub_23346C310(v65);
                      }

                      v73(v43, v75);

LABEL_93:

                      sub_233423234(v73);
                      return;
                    }
                  }

                  else
                  {
                    sub_23346F768(v95);
                  }

                  v65 = MEMORY[0x277D84F90];
                  v95[0] = MEMORY[0x277D84F90];
                  v72 = v5;
                  v73 = v5[16];
                  if (!v73)
                  {
LABEL_110:

                    return;
                  }

                  goto LABEL_88;
                }

                goto LABEL_58;
              }

              sub_233470E54();
              if (*(a1 + 16))
              {
                v53 = sub_23346EAF4(v95);
                if (v54)
                {
                  sub_23346406C(*(a1 + 56) + 32 * v53, &v96);
                  sub_23346F768(v95);
                  if (swift_dynamicCast())
                  {
                    sub_2334658C8(0, &qword_27DE0D928, 0x277CCAAC8);
                    sub_2334658C8(0, &qword_27DE0D940, off_2789D38F8);
                    v55 = sub_233470D74();
                    v82 = v55;
                    if (v55)
                    {
                      sub_233470E54();
                      if (*(a1 + 16) && (v83 = sub_23346EAF4(v95), (v84 & 1) != 0))
                      {
                        sub_23346406C(*(a1 + 56) + 32 * v83, &v96);
                        sub_23346F768(v95);
                        if (swift_dynamicCast())
                        {
                          sub_2334658C8(0, &qword_27DE0D898, 0x277CCA9B8);
                          sub_23346F9DC(0x726F727245, 0xE500000000000000);
                          v85 = 0x726F727245;
                          v93 = 0xE500000000000000;
                          v90 = sub_233470D74();
                          sub_23346FBA0(0x726F727245, 0xE500000000000000);
                          v86 = v5[14];
                          if (!v86)
                          {
                            goto LABEL_123;
                          }

                          goto LABEL_118;
                        }
                      }

                      else
                      {
                        sub_23346F768(v95);
                      }

                      v90 = 0;
                      v85 = 0;
                      v93 = 0xF000000000000000;
                      v86 = v5[14];
                      if (!v86)
                      {
LABEL_123:
                        sub_23346FBA0(0x746C75736552, 0xE600000000000000);
                        sub_23346FC7C(v85, v93);

                        return;
                      }

LABEL_118:
                      v87 = v5[15];
                      sub_233423224(v86);
                      v88 = v82;
                      v89 = v90;
                      v86(v82, v90);
                      sub_23346FBA0(0x746C75736552, 0xE600000000000000);
                      sub_23346FC7C(v85, v93);

                      sub_233423234(v86);
                      return;
                    }

                    goto LABEL_101;
                  }

LABEL_73:

                  return;
                }
              }

LABEL_72:
              sub_23346F768(v95);
              goto LABEL_73;
            }

            if (v94 != 7)
            {
              if (v94 != 6)
              {
LABEL_58:
                v29 = sub_233470BC4();
                v51 = sub_233470D54();
                if (!os_log_type_enabled(v29, v51))
                {
                  goto LABEL_35;
                }

                v52 = swift_slowAlloc();
                *v52 = 134217984;
                *(v52 + 4) = 0x5474736575716552;
                _os_log_impl(&dword_233421000, v29, v51, "eventHandler dropping requestType %ld", v52, 0xCu);
                v32 = v52;
                goto LABEL_34;
              }

              sub_233470E54();
              if (!*(a1 + 16))
              {
                goto LABEL_72;
              }

              v44 = sub_23346EAF4(v95);
              if ((v45 & 1) == 0)
              {
                goto LABEL_72;
              }

              sub_23346406C(*(a1 + 56) + 32 * v44, &v96);
              sub_23346F768(v95);
              if ((swift_dynamicCast() & 1) == 0)
              {
                goto LABEL_73;
              }

              sub_233470E54();
              if (*(a1 + 16) && (v46 = sub_23346EAF4(v95), (v47 & 1) != 0))
              {
                sub_23346406C(*(a1 + 56) + 32 * v46, &v96);
                sub_23346F768(v95);
                if (swift_dynamicCast())
                {
                  sub_2334658C8(0, &qword_27DE0D928, 0x277CCAAC8);
                  sub_2334658C8(0, &qword_27DE0D948, off_2789D3940);
                  v29 = sub_233470D74();
                  if (v29)
                  {
                    v48 = v5[10];
                    if (v48)
                    {
                      v49 = v5[11];
                      sub_233423224(v5[10]);
                      v50 = v29;
                      v48(v29, 1953719636);
                      sub_23346FBA0(0x746C75736552, 0xE600000000000000);

                      sub_233423234(v48);
                      return;
                    }

                    sub_23346FBA0(0x746C75736552, 0xE600000000000000);
                    goto LABEL_35;
                  }
                }
              }

              else
              {
                sub_23346F768(v95);
              }

LABEL_101:
              sub_23346FBA0(0x746C75736552, 0xE600000000000000);
              goto LABEL_73;
            }

            sub_233470E54();
            if (!*(a1 + 16))
            {
              goto LABEL_72;
            }

            v56 = sub_23346EAF4(v95);
            if ((v57 & 1) == 0)
            {
              goto LABEL_72;
            }

            sub_23346406C(*(a1 + 56) + 32 * v56, &v96);
            sub_23346F768(v95);
            if ((swift_dynamicCast() & 1) == 0)
            {
              goto LABEL_73;
            }

            sub_2334658C8(0, &qword_27DE0D928, 0x277CCAAC8);
            sub_2334658C8(0, &qword_27DE0D878, off_2789D3938);
            v92 = sub_233470D74();
            sub_233470E54();
            if (*(a1 + 16) && (v58 = sub_23346EAF4(v95), (v59 & 1) != 0))
            {
              sub_23346406C(*(a1 + 56) + 32 * v58, &v96);
              sub_23346F768(v95);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D930, &qword_233477008);
              if (swift_dynamicCast())
              {
                v60 = MEMORY[0x277D84F90];
                v95[0] = MEMORY[0x277D84F90];
                v61 = MEMORY[0x73726F727255];
                if (MEMORY[0x73726F727255])
                {
                  sub_2334658C8(0, &qword_27DE0D898, 0x277CCA9B8);
                  v62 = 0x73726F72726DLL;
                  do
                  {
                    v76 = *(v62 - 8);
                    v77 = *v62;
                    sub_23346F9DC(v76, *v62);
                    v78 = sub_233470D74();
                    if (v78)
                    {
                      v79 = v78;
                      MEMORY[0x23839E8F0]();
                      if (*((v95[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v95[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                      {
                        sub_233470CA4();
                      }

                      sub_233470CB4();
                      sub_23346FBA0(v76, v77);

                      v60 = v95[0];
                    }

                    else
                    {
                      sub_23346FBA0(v76, v77);
                    }

                    v62 += 16;
                    --v61;
                  }

                  while (v61);
                }

                v73 = v5[12];
                if (!v73)
                {
                  goto LABEL_120;
                }

                goto LABEL_104;
              }
            }

            else
            {
              sub_23346F768(v95);
            }

            v60 = MEMORY[0x277D84F90];
            v95[0] = MEMORY[0x277D84F90];
            v73 = v5[12];
            if (!v73)
            {
LABEL_120:

              sub_23346FBA0(0x746C75736552, 0xE600000000000000);

              return;
            }

LABEL_104:
            v80 = v5[13];
            if (v60 >> 62)
            {
              v81 = sub_233470DF4();
            }

            else
            {
              v81 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            if (v81)
            {
              v81 = sub_23346C310(v60);
            }

            v73(v92, v81);

            sub_23346FBA0(0x746C75736552, 0xE600000000000000);

            goto LABEL_93;
          }
        }

        else
        {
        }

        v29 = sub_233470BC4();
        v30 = sub_233470D34();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          *v31 = 0;
          _os_log_impl(&dword_233421000, v29, v30, "Identifier received does not match remote device identifier for this object", v31, 2u);
          v32 = v31;
LABEL_34:
          MEMORY[0x23839F8C0](v32, -1, -1);
        }

LABEL_35:

        return;
      }

      goto LABEL_30;
    }
  }

  sub_23346F768(v95);

LABEL_23:
  if (qword_27DE0D7F8 != -1)
  {
    swift_once();
  }

  v23 = sub_233470BE4();
  __swift_project_value_buffer(v23, qword_27DE0DAE8);

  v24 = sub_233470BC4();
  v25 = sub_233470D64();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v26 = 138412290;
    v28 = sub_233470BF4();
    *(v26 + 4) = v28;
    *v27 = v28;
    _os_log_impl(&dword_233421000, v24, v25, "eventHandler dropping event %@", v26, 0xCu);
    sub_2334644B8(v27, &qword_27DE0D808, &qword_233476B00);
    MEMORY[0x23839F8C0](v27, -1, -1);
    MEMORY[0x23839F8C0](v26, -1, -1);
  }
}

void *sub_23346C310(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_233470DF4();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v16 = MEMORY[0x277D84F90];
  result = sub_23346ED30(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v16;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        v6 = MEMORY[0x23839EB30](i, a1);
        v8 = *(v16 + 16);
        v7 = *(v16 + 24);
        if (v8 >= v7 >> 1)
        {
          v9 = v6;
          sub_23346ED30((v7 > 1), v8 + 1, 1);
          v6 = v9;
        }

        *(v16 + 16) = v8 + 1;
        *(v16 + 8 * v8 + 32) = v6;
      }
    }

    else
    {
      v10 = (a1 + 32);
      do
      {
        v11 = *(v16 + 16);
        v12 = *(v16 + 24);
        v13 = *v10;
        if (v11 >= v12 >> 1)
        {
          v14 = v12 > 1;
          v15 = v13;
          sub_23346ED30(v14, v11 + 1, 1);
          v13 = v15;
        }

        *(v16 + 16) = v11 + 1;
        *(v16 + 8 * v11 + 32) = v13;
        ++v10;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_23346C488(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = sub_233470C04();
  if (a3)
  {
    a3 = sub_233470C04();
  }

  v5(v6, a3);
}

uint64_t sub_23346C568()
{
  v1 = *(v0[18] + 24);
  v0[2] = v0;
  v0[3] = sub_23346C680;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D800, &qword_233476AF8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_233461778;
  v0[13] = &block_descriptor_1;
  v0[14] = v2;
  [v1 activateWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_23346C680()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 152) = v2;
  if (v2)
  {
    v3 = sub_23346C790;
  }

  else
  {
    v3 = sub_23346FCAC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23346C790()
{
  v1 = *(v0 + 152);
  swift_willThrow();
  if (qword_27DE0D7F8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 152);
  v3 = sub_233470BE4();
  __swift_project_value_buffer(v3, qword_27DE0DAE8);
  v4 = v2;
  v5 = sub_233470BC4();
  v6 = sub_233470D54();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 152);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_233421000, v5, v6, "NetworkPerformanceTesterDRemoteClient activated with error: %@", v8, 0xCu);
    sub_2334644B8(v9, &qword_27DE0D808, &qword_233476B00);
    MEMORY[0x23839F8C0](v9, -1, -1);
    MEMORY[0x23839F8C0](v8, -1, -1);
  }

  v12 = *(v0 + 152);

  swift_willThrow();
  v13 = *(v0 + 8);
  v14 = *(v0 + 152);

  return v13();
}

void sub_23346C930(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_27DE0D7F8 != -1)
  {
    swift_once();
  }

  v8 = sub_233470BE4();
  __swift_project_value_buffer(v8, qword_27DE0DAE8);
  swift_retain_n();

  v9 = sub_233470BC4();
  v10 = sub_233470D64();

  if (os_log_type_enabled(v9, v10))
  {
    v28 = a2;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    aBlock[0] = v13;
    *v11 = 136315650;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D818, &qword_233476B20);
    v14 = sub_233470C14();
    v16 = sub_23346E54C(v14, v15, aBlock);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2112;
    v17 = *(v4 + 16);
    v18 = *(v4 + 24);
    *(v11 + 14) = v17;
    *v12 = v17;
    *(v11 + 22) = 2048;
    v19 = v17;
    v20 = [v18 activeDevices];
    sub_2334658C8(0, &qword_27DE0D840, 0x277D44168);
    v21 = sub_233470C94();

    if (v21 >> 62)
    {
      v22 = sub_233470DF4();
    }

    else
    {
      v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v11 + 24) = v22;

    _os_log_impl(&dword_233421000, v9, v10, "Sending request %s to %@, device count %ld", v11, 0x20u);
    sub_2334644B8(v12, &qword_27DE0D808, &qword_233476B00);
    MEMORY[0x23839F8C0](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x23839F8C0](v13, -1, -1);
    MEMORY[0x23839F8C0](v11, -1, -1);

    a2 = v28;
  }

  else
  {
  }

  v23 = *(v4 + 24);
  v24 = sub_233470C24();
  sub_233469DDC(a1);
  v25 = sub_233470BF4();

  v26 = swift_allocObject();
  *(v26 + 16) = a2;
  *(v26 + 24) = a3;
  aBlock[4] = sub_23346F6E8;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23346295C;
  aBlock[3] = &block_descriptor_40;
  v27 = _Block_copy(aBlock);

  [v23 sendRequestID:v24 request:v25 options:0 responseHandler:v27];
  _Block_release(v27);
}

void sub_23346CCF0(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void, void, void))
{
  if (qword_27DE0D7F8 != -1)
  {
    swift_once();
  }

  v8 = sub_233470BE4();
  __swift_project_value_buffer(v8, qword_27DE0DAE8);

  v9 = sub_233470BC4();
  v10 = sub_233470D34();

  if (os_log_type_enabled(v9, v10))
  {
    v25 = a1;
    v26 = a4;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v27 = v12;
    *v11 = 136315138;
    if (!a2)
    {
      sub_23346F380(MEMORY[0x277D84F90]);
    }

    v13 = sub_233470C14();
    v15 = v14;

    v16 = sub_23346E54C(v13, v15, &v27);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_233421000, v9, v10, "Received response from %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x23839F8C0](v12, -1, -1);
    MEMORY[0x23839F8C0](v11, -1, -1);

    a4 = v26;
    a1 = v25;
    if (a3)
    {
      goto LABEL_7;
    }

LABEL_13:
    a4(a1, a2, 0);
    return;
  }

  if (!a3)
  {
    goto LABEL_13;
  }

LABEL_7:
  v17 = a3;
  v18 = sub_233470BC4();
  v19 = sub_233470D54();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v20 = 138412290;
    v22 = a3;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v20 + 4) = v23;
    *v21 = v23;
    _os_log_impl(&dword_233421000, v18, v19, "Received response error: %@", v20, 0xCu);
    sub_2334644B8(v21, &qword_27DE0D808, &qword_233476B00);
    MEMORY[0x23839F8C0](v21, -1, -1);
    MEMORY[0x23839F8C0](v20, -1, -1);
  }

  v24 = a3;
  a4(0, 0, a3);
}

uint64_t NetworkPerformanceTesterDRemoteClient.startPerformanceTest(with:updateHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  return MEMORY[0x2822009F8](sub_23346D034, 0, 0);
}

uint64_t sub_23346D034()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v0[8] = v5;
  v5[2] = v4;
  v5[3] = v1;
  v5[4] = v3;
  v5[5] = v2;
  v6 = *(MEMORY[0x277D859E0] + 4);
  v7 = swift_task_alloc();
  v0[9] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D8B0, &qword_233476EE0);
  *v7 = v0;
  v7[1] = sub_23346D14C;

  return MEMORY[0x2822007B8](v0 + 2, 0, 0, 0xD000000000000029, 0x800000023347AE80, sub_23346F1DC, v5, v8);
}

uint64_t sub_23346D14C()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_23346D264, 0, 0);
}

uint64_t sub_23346D27C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v45 = a1;
  v46[2] = *MEMORY[0x277D85DE8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D908, &qword_233476FE8);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20]();
  v13 = &v39 - v12;
  v14 = objc_opt_self();
  v46[0] = 0;
  v15 = [v14 archivedDataWithRootObject:a2 requiringSecureCoding:1 error:v46];
  v16 = v46[0];
  if (v15)
  {
    v44 = sub_233470BB4();
    v43 = v17;

    v18 = swift_allocObject();
    *(v18 + 16) = 0;
    v41 = v11;
    v19 = a3[10];
    v20 = a3[11];
    a3[10] = a4;
    a3[11] = a5;
    sub_233423224(a4);
    sub_233423234(v19);
    v42 = *(v10 + 16);
    v42(v13, v45, v9);
    v21 = *(v10 + 80);
    v39 = (v21 + 24) & ~v21;
    v22 = swift_allocObject();
    *(v22 + 16) = v18;
    v40 = *(v10 + 32);
    v40(v22 + ((v21 + 24) & ~v21), v13, v9);
    v23 = a3[12];
    v24 = a3[13];
    a3[12] = sub_23346F918;
    a3[13] = v22;

    sub_233423234(v23);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D910, &qword_233476FF0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_233476EC0;
    *(inited + 32) = 0x5474736575716552;
    *(inited + 72) = MEMORY[0x277D83B88];
    strcpy((inited + 80), "Configuration");
    v26 = MEMORY[0x277CC9318];
    *(inited + 40) = 0xEB00000000657079;
    *(inited + 48) = 0;
    *(inited + 120) = v26;
    *(inited + 94) = -4864;
    v27 = v44;
    v28 = v43;
    *(inited + 96) = v44;
    *(inited + 104) = v28;
    sub_23346F9DC(v27, v28);
    v29 = sub_23346F4BC(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D918, &qword_233476FF8);
    swift_arrayDestroy();
    v30 = v13;
    v31 = v9;
    v42(v13, v45, v9);
    v32 = v39;
    v33 = swift_allocObject();
    *(v33 + 16) = v18;
    v40(v33 + v32, v30, v31);

    sub_23346C930(v29, sub_23346FAF0, v33);
    sub_23346FBA0(v44, v43);
  }

  else
  {
    v35 = v16;
    v36 = sub_233470BA4();

    swift_willThrow();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D900, &qword_233476FE0);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_233476D10;
    *(v37 + 32) = v36;
    v46[0] = 0;
    v46[1] = v37;
    result = sub_233470CE4();
  }

  v38 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23346D6DC(void *a1, uint64_t a2, uint64_t a3)
{
  result = swift_beginAccess();
  if ((*(a3 + 16) & 1) == 0)
  {
    swift_beginAccess();
    *(a3 + 16) = 1;

    v6 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D908, &qword_233476FE8);
    return sub_233470CE4();
  }

  return result;
}

uint64_t sub_23346D7A8()
{
  v1 = *(MEMORY[0x277D85A40] + 4);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_23346D87C;
  v3 = *(v0 + 16);

  return MEMORY[0x2822008A0]();
}

uint64_t sub_23346D87C()
{
  v2 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 32) = v0;

  if (v0)
  {
    v3 = sub_23346D9A8;
  }

  else
  {
    v3 = sub_23346D990;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t NetworkPerformanceTesterDRemoteClient.startMetadataCollection(updateHandler:)(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return MEMORY[0x2822009F8](sub_23346D9E4, 0, 0);
}

uint64_t sub_23346D9E4()
{
  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  v3 = *(v0 + 32);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  v4 = *(MEMORY[0x277D859E0] + 4);
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D8B8, &qword_233476EF8);
  *v5 = v0;
  v5[1] = sub_23346DAF4;

  return MEMORY[0x2822007B8](v0 + 16, 0, 0, 0xD000000000000027, 0x800000023347AED0, sub_23346F22C, v2, v6);
}

uint64_t sub_23346DAF4()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_23346FCA8, 0, 0);
}

uint64_t sub_23346DC0C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v25 = a4;
  v30 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D8F8, &qword_233476FD8);
  v26 = v8;
  v9 = *(v8 - 8);
  v28 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - v10;
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  v13 = a2[14];
  v14 = a2[15];
  a2[14] = a3;
  a2[15] = a4;
  sub_233423234(v13);
  v29 = *(v9 + 16);
  v29(v11, a1, v8);
  v15 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v12;
  v27 = *(v9 + 32);
  v27(v16 + v15, v11, v8);
  v17 = a2[16];
  v18 = a2[17];
  a2[16] = sub_23346F7BC;
  a2[17] = v16;

  sub_233423234(v17);
  v19 = sub_23346F5EC(&unk_2848BBBE8);
  sub_2334644B8(&unk_2848BBC08, &qword_27DE0D8C8, &unk_233476FA0);
  v20 = sub_23346A0D8(v19);

  v21 = v11;
  v22 = v26;
  v29(v11, v30, v26);
  v23 = swift_allocObject();
  *(v23 + 16) = v12;
  v27(v23 + v15, v21, v22);

  sub_23346C930(v20, sub_23346F7E4, v23);
}

uint64_t sub_23346DE98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_beginAccess();
  if ((*(a3 + 16) & 1) == 0)
  {
    swift_beginAccess();
    *(a3 + 16) = 1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D8F8, &qword_233476FD8);
    return sub_233470CE4();
  }

  return result;
}

void sub_23346DF48(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  if (a3)
  {
    swift_beginAccess();
    if ((*(a4 + 16) & 1) == 0)
    {
      swift_beginAccess();
      *(a4 + 16) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D900, &qword_233476FE0);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_233476D10;
      *(v11 + 32) = a3;
      v12 = a3;
      __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
      sub_233470CE4();
    }
  }
}

uint64_t sub_23346E044()
{
  v1 = *(MEMORY[0x277D85A40] + 4);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_23346E118;
  v3 = *(v0 + 16);

  return MEMORY[0x2822008A0]();
}

uint64_t sub_23346E118()
{
  v2 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 32) = v0;

  if (v0)
  {
    v3 = sub_23346FCC0;
  }

  else
  {
    v3 = sub_23346FCAC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23346E22C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D8C0, &qword_233476F98);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20]();
  v14 = &v20 - v13;
  v15 = sub_23346F5EC(a3);
  sub_2334644B8(a4, &qword_27DE0D8C8, &unk_233476FA0);
  v16 = sub_23346A0D8(v15);

  (*(v11 + 16))(v14, a1, v10);
  v17 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v18 = swift_allocObject();
  (*(v11 + 32))(v18 + v17, v14, v10);
  sub_23346C930(v16, a6, v18);
}

uint64_t sub_23346E3BC(int a1, int a2, id a3)
{
  if (a3)
  {
    v3 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D8C0, &qword_233476F98);
    return sub_233470CD4();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D8C0, &qword_233476F98);
    return sub_233470CE4();
  }
}

uint64_t NetworkPerformanceTesterDRemoteClient.deinit()
{
  v1 = *(v0 + 40);
  sub_233423234(*(v0 + 32));
  v2 = *(v0 + 56);
  sub_233423234(*(v0 + 48));
  v3 = *(v0 + 72);
  sub_233423234(*(v0 + 64));
  v4 = *(v0 + 88);
  sub_233423234(*(v0 + 80));
  v5 = *(v0 + 104);
  sub_233423234(*(v0 + 96));
  v6 = *(v0 + 120);
  sub_233423234(*(v0 + 112));
  v7 = *(v0 + 136);
  sub_233423234(*(v0 + 128));
  return v0;
}

uint64_t NetworkPerformanceTesterDRemoteClient.__deallocating_deinit()
{
  NetworkPerformanceTesterDRemoteClient.deinit();

  return MEMORY[0x2821FE8D8](v0, 144, 7);
}

uint64_t sub_23346E4F0(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_23346E54C(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_23346E54C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_23346E618(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_23346406C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_23346E618(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_23346E724(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_233470EC4();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_23346E724(uint64_t a1, unint64_t a2)
{
  v4 = sub_23346E770(a1, a2);
  sub_23346E8A0(&unk_2848BBB88);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_23346E770(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_23346E98C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_233470EC4();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_233470C64();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_23346E98C(v10, 0);
        result = sub_233470EA4();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_23346E8A0(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_23346EA00(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_23346E98C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D8D0, &qword_233476FB0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_23346EA00(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D8D0, &qword_233476FB0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_23346EAF4(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_233470E34();

  return sub_23346EBB0(a1, v5);
}

unint64_t sub_23346EB38(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_233470F44();
  sub_233470C54();
  v6 = sub_233470F64();

  return sub_23346EC78(a1, a2, v6);
}

unint64_t sub_23346EBB0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_23346F70C(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x23839EAC0](v9, a1);
      sub_23346F768(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_23346EC78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_233470F04())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void *sub_23346ED30(void *a1, int64_t a2, char a3)
{
  result = sub_23346ED50(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_23346ED50(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D900, &qword_233476FE0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D838, &qword_233476BE8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_23346EE84(void *a1)
{
  *(v1 + 112) = 0u;
  *(v1 + 128) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 16) = a1;
  v3 = objc_allocWithZone(MEMORY[0x277D44158]);
  v4 = a1;
  v5 = [v3 init];
  *(v1 + 24) = v5;
  [v5 setControlFlags_];
  [*(v1 + 24) setDestinationDevice_];
  v6 = *(v1 + 24);
  v7 = sub_233470C24();
  [v6 setServiceType_];

  v8 = *(v1 + 24);
  v9 = swift_allocObject();
  swift_weakInit();
  v25 = sub_23346FC5C;
  v26 = v9;
  v21 = MEMORY[0x277D85DD0];
  v22 = 1107296256;
  v23 = sub_233469D74;
  v24 = &block_descriptor_68;
  v10 = _Block_copy(&v21);
  v11 = v8;

  [v11 setDeviceLostHandler_];
  _Block_release(v10);

  v12 = *(v1 + 24);
  v13 = swift_allocObject();
  swift_weakInit();
  v25 = sub_23346FC64;
  v26 = v13;
  v21 = MEMORY[0x277D85DD0];
  v22 = 1107296256;
  v23 = sub_233462600;
  v24 = &block_descriptor_72;
  v14 = _Block_copy(&v21);
  v15 = v12;

  [v15 setDisconnectHandler_];
  _Block_release(v14);

  v16 = *(v1 + 24);
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = v16;

  v25 = sub_23346FC6C;
  v26 = v17;
  v21 = MEMORY[0x277D85DD0];
  v22 = 1107296256;
  v23 = sub_233469D74;
  v24 = &block_descriptor_76;
  v19 = _Block_copy(&v21);

  [v18 setDeviceFoundHandler_];
  _Block_release(v19);

  sub_23346AF50();
  return v1;
}

uint64_t sub_23346F2CC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_23346F2F4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_23346F31C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

uint64_t sub_23346F354(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

unint64_t sub_23346F380(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D8D8, &qword_233476FB8);
    v3 = sub_233470EE4();
    v4 = a1 + 32;

    while (1)
    {
      sub_23346FBF4(v4, v13, &qword_27DE0D8E0, &qword_233476FC0);
      result = sub_23346EAF4(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_233423688(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_23346F4BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D8E8, &qword_233476FC8);
    v3 = sub_233470EE4();
    v4 = a1 + 32;

    while (1)
    {
      sub_23346FBF4(v4, &v13, &qword_27DE0D918, &qword_233476FF8);
      v5 = v13;
      v6 = v14;
      result = sub_23346EB38(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_233423688(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_23346F5EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D8F0, &qword_233476FD0);
    v3 = sub_233470EE4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_23346EB38(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t block_copy_helper_38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_33Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D8C0, &qword_233476F98);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_23346F940(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = *(v5 + 16);
  v10 = v5 + ((*(v8 + 80) + 24) & ~*(v8 + 80));

  return a5(a1, a2, v9, v10);
}

uint64_t sub_23346F9DC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t objectdestroy_46Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 24) & ~v5;
  v7 = *(v4 + 64);
  v8 = *(v2 + 16);

  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t sub_23346FBA0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_23346FBF4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_23346FC7C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_23346FBA0(a1, a2);
  }

  return a1;
}

uint64_t sub_23346FCFC(uint64_t a1, uint64_t *a2)
{
  v3 = sub_233470BE4();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_233470BD4();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}