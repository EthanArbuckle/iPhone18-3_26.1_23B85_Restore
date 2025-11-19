uint64_t sub_1AC4AF5DC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 64);

  v4 = *(v0 + 88);

  v5 = *(v0 + 104);

  v6 = *(v0 + 120);

  v7 = *(v0 + 136);

  v8 = *(v0 + 152);

  v9 = *(v0 + 168);

  v10 = *(v0 + 184);

  v11 = *(v0 + 220);
  v12 = *(v0 + 216);
  sub_1AC485714(*(v0 + 192), *(v0 + 200), *(v0 + 208));
  v13 = *(v0 + 224);

  return v0;
}

uint64_t sub_1AC4AF664()
{
  v0 = sub_1AC4AF5DC();

  return MEMORY[0x1EEE6BDC0](v0, 232, 7);
}

void sub_1AC4AF6EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a5 + 16);
  while (1)
  {
    v11 = v10(a4, a5);
    if (v5 || (v12 & 1) != 0)
    {
      break;
    }

    switch(v11)
    {
      case 1:
        sub_1AC4AFA30();
        break;
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
      case 12:
      case 13:
      case 14:
      case 15:
      case 19:
      case 21:
      case 22:
      case 24:
      case 25:
      case 26:
      case 28:
      case 29:
      case 30:
      case 32:
      case 33:
      case 34:
      case 35:
      case 38:
      case 42:
      case 43:
      case 46:
      case 47:
      case 48:
      case 49:
        goto LABEL_8;
      case 8:
        sub_1AC4AFAA4(a2, a1, a4, a5);
        break;
      case 9:
        sub_1AC4AFB38(a2, a1, a4, a5);
        break;
      case 10:
        sub_1AC4AFBE4(a2, a1, a4, a5);
        break;
      case 11:
        sub_1AC4AFC78(a2, a1, a4, a5);
        break;
      case 16:
        sub_1AC4AFD0C(a2, a1, a4, a5);
        break;
      case 17:
        sub_1AC4AFDA0(a2, a1, a4, a5);
        break;
      case 18:
        sub_1AC4AFE34(a2, a1, a4, a5);
        break;
      case 20:
        sub_1AC4AFEC8(a2, a1, a4, a5);
        break;
      case 23:
        sub_1AC4AFF5C(a2, a1, a4, a5);
        break;
      case 27:
        sub_1AC4AFFF0(a2, a1, a4, a5);
        break;
      case 31:
        sub_1AC4B0084(a2, a1, a4, a5);
        break;
      case 36:
        sub_1AC4B0118(a2, a1, a4, a5);
        break;
      case 37:
        sub_1AC4B01AC(a2, a1, a4, a5);
        break;
      case 39:
        sub_1AC4B0240(a2, a1, a4, a5);
        break;
      case 40:
        sub_1AC4B02D4(a2, a1, a4, a5);
        break;
      case 41:
        sub_1AC4B0368(a2, a1, a4, a5);
        break;
      case 44:
        sub_1AC4B03FC(a2, a1, a4, a5);
        break;
      case 45:
        sub_1AC4B0490(a2, a1, a4, a5);
        break;
      case 50:
        sub_1AC4B0524(a2, a1, a4, a5);
        break;
      default:
        if (v11 == 999)
        {
          sub_1AC4B05D0(a2, a1, a4, a5);
        }

        else
        {
LABEL_8:
          if ((v11 - 1000) <= 0x1FFFFC17)
          {
            sub_1AC4B4724();
          }
        }

        break;
    }
  }
}

uint64_t sub_1AC4AFA30()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_321();
  v1 = *(v0 + 344);
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_36_0();
  v2();
  return swift_endAccess();
}

uint64_t sub_1AC4AFAA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  (*(a4 + 344))(a2 + 32, a3, a4);
  return swift_endAccess();
}

uint64_t sub_1AC4AFB38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v7 = *(a4 + 392);
  v8 = sub_1AC4C6A6C();
  v7(a2 + 51, &type metadata for Google_Protobuf_FileOptions.OptimizeMode, v8, a3, a4);
  return swift_endAccess();
}

uint64_t sub_1AC4AFBE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  (*(a4 + 320))(a2 + 48, a3, a4);
  return swift_endAccess();
}

uint64_t sub_1AC4AFC78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  (*(a4 + 344))(a2 + 56, a3, a4);
  return swift_endAccess();
}

uint64_t sub_1AC4AFD0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  (*(a4 + 320))(a2 + 72, a3, a4);
  return swift_endAccess();
}

uint64_t sub_1AC4AFDA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  (*(a4 + 320))(a2 + 73, a3, a4);
  return swift_endAccess();
}

uint64_t sub_1AC4AFE34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  (*(a4 + 320))(a2 + 74, a3, a4);
  return swift_endAccess();
}

uint64_t sub_1AC4AFEC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  (*(a4 + 320))(a2 + 49, a3, a4);
  return swift_endAccess();
}

uint64_t sub_1AC4AFF5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  (*(a4 + 320))(a2 + 75, a3, a4);
  return swift_endAccess();
}

uint64_t sub_1AC4AFFF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  (*(a4 + 320))(a2 + 50, a3, a4);
  return swift_endAccess();
}

uint64_t sub_1AC4B0084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  (*(a4 + 320))(a2 + 76, a3, a4);
  return swift_endAccess();
}

uint64_t sub_1AC4B0118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  (*(a4 + 344))(a2 + 80, a3, a4);
  return swift_endAccess();
}

uint64_t sub_1AC4B01AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  (*(a4 + 344))(a2 + 96, a3, a4);
  return swift_endAccess();
}

uint64_t sub_1AC4B0240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  (*(a4 + 344))(a2 + 112, a3, a4);
  return swift_endAccess();
}

uint64_t sub_1AC4B02D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  (*(a4 + 344))(a2 + 128, a3, a4);
  return swift_endAccess();
}

uint64_t sub_1AC4B0368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  (*(a4 + 344))(a2 + 144, a3, a4);
  return swift_endAccess();
}

uint64_t sub_1AC4B03FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  (*(a4 + 344))(a2 + 160, a3, a4);
  return swift_endAccess();
}

uint64_t sub_1AC4B0490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  (*(a4 + 344))(a2 + 176, a3, a4);
  return swift_endAccess();
}

uint64_t sub_1AC4B0524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v7 = *(a4 + 408);
  v8 = sub_1AC4C1928();
  v7(a2 + 192, &type metadata for Google_Protobuf_FeatureSet, v8, a3, a4);
  return swift_endAccess();
}

uint64_t sub_1AC4B05D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v7 = *(a4 + 416);
  v8 = sub_1AC4BFBE8();
  v7(a2 + 224, &type metadata for Google_Protobuf_UninterpretedOption, v8, a3, a4);
  return swift_endAccess();
}

void sub_1AC4B06D4()
{
  OUTLINED_FUNCTION_60();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  if (*(v7 + 24))
  {
    v8 = *(v7 + 16);
    MEMORY[0x1AC5B48A0](1);

    OUTLINED_FUNCTION_152();
  }

  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  if (*(v7 + 40))
  {
    v9 = *(v7 + 32);
    MEMORY[0x1AC5B48A0](8);

    OUTLINED_FUNCTION_152();
  }

  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  v10 = *(v7 + 51);
  if (v10 != 3)
  {
    MEMORY[0x1AC5B48A0](9);
    MEMORY[0x1AC5B48A0](v10 + 1);
  }

  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  if (*(v7 + 48) != 2)
  {
    MEMORY[0x1AC5B48A0](10);
    sub_1AC51F488();
  }

  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  if (*(v7 + 64))
  {
    v11 = *(v7 + 56);
    MEMORY[0x1AC5B48A0](11);

    OUTLINED_FUNCTION_152();
  }

  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  if (*(v7 + 72) != 2)
  {
    MEMORY[0x1AC5B48A0](16);
    sub_1AC51F488();
  }

  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  if (*(v7 + 73) != 2)
  {
    MEMORY[0x1AC5B48A0](17);
    sub_1AC51F488();
  }

  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  if (*(v7 + 74) != 2)
  {
    MEMORY[0x1AC5B48A0](18);
    sub_1AC51F488();
  }

  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  if (*(v7 + 49) != 2)
  {
    MEMORY[0x1AC5B48A0](20);
    sub_1AC51F488();
  }

  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  if (*(v7 + 75) != 2)
  {
    MEMORY[0x1AC5B48A0](23);
    sub_1AC51F488();
  }

  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  if (*(v7 + 50) != 2)
  {
    MEMORY[0x1AC5B48A0](27);
    sub_1AC51F488();
  }

  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  if (*(v7 + 76) != 2)
  {
    MEMORY[0x1AC5B48A0](31);
    sub_1AC51F488();
  }

  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  if (*(v7 + 88))
  {
    v12 = *(v7 + 80);
    MEMORY[0x1AC5B48A0](36);

    OUTLINED_FUNCTION_152();
  }

  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  if (*(v7 + 104))
  {
    v13 = *(v7 + 96);
    MEMORY[0x1AC5B48A0](37);

    OUTLINED_FUNCTION_152();
  }

  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  if (*(v7 + 120))
  {
    v14 = *(v7 + 112);
    MEMORY[0x1AC5B48A0](39);

    OUTLINED_FUNCTION_152();
  }

  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  if (*(v7 + 136))
  {
    v15 = *(v7 + 128);
    MEMORY[0x1AC5B48A0](40);

    OUTLINED_FUNCTION_152();
  }

  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  if (*(v7 + 152))
  {
    v16 = *(v7 + 144);
    MEMORY[0x1AC5B48A0](41);

    OUTLINED_FUNCTION_152();
  }

  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  if (*(v7 + 168))
  {
    v17 = *(v7 + 160);
    MEMORY[0x1AC5B48A0](44);

    OUTLINED_FUNCTION_152();
  }

  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  if (*(v7 + 184))
  {
    v18 = *(v7 + 176);
    MEMORY[0x1AC5B48A0](45);

    OUTLINED_FUNCTION_152();
  }

  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  v19 = *(v7 + 208);
  if (v19)
  {
    v20 = *(v7 + 192);
    v21 = *(v7 + 200);
    v22 = *(v7 + 216) | (*(v7 + 220) << 32);
    MEMORY[0x1AC5B48A0](50);
    memcpy(v30, v5, sizeof(v30));
    v23 = OUTLINED_FUNCTION_93_0();
    sub_1AC4578F4(v23, v24);

    sub_1AC4BBFB4();
    if (v0)
    {
      MEMORY[0x1AC5B4BA0](v0);
      v1 = 0;
    }

    v25 = OUTLINED_FUNCTION_93_0();
    sub_1AC485714(v25, v26, v19);
    memcpy(v5, v30, 0x48uLL);
  }

  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  if (!*(*(v7 + 224) + 16) || (, sub_1AC50D0A4(), , !v1))
  {
    v27 = OUTLINED_FUNCTION_82_1();
    sub_1AC5175D4(v27, v28, v29, v3);
  }

  OUTLINED_FUNCTION_61();
}

uint64_t sub_1AC4B0BCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = sub_1AC4B0EBC();
  if (!v8)
  {
    sub_1AC4B0F58(a1, a2, a7, a8);
    sub_1AC4B100C(a1, a2, a7, a8);
    sub_1AC4B10B8(a1, a2, a7, a8);
    sub_1AC4B1150(a1, a2, a7, a8);
    sub_1AC4B1204(a1, a2, a7, a8);
    sub_1AC4B129C(a1, a2, a7, a8);
    sub_1AC4B1334(a1, a2, a7, a8);
    sub_1AC4B13CC(a1, a2, a7, a8);
    sub_1AC4B1464(a1, a2, a7, a8);
    sub_1AC4B14FC(a1, a2, a7, a8);
    sub_1AC4B1594(a1, a2, a7, a8);
    sub_1AC4B162C(a1, a2, a7, a8);
    sub_1AC4B16E0(a1, a2, a7, a8);
    sub_1AC4B1794(a1, a2, a7, a8);
    sub_1AC4B1848(a1, a2, a7, a8);
    sub_1AC4B18FC(a1, a2, a7, a8);
    sub_1AC4B19B0(a1, a2, a7, a8);
    sub_1AC4B1A64(a1, a2, a7, a8);
    sub_1AC4B1B18(a1, a2, a7, a8);
    swift_beginAccess();
    if (*(*(a1 + 224) + 16))
    {
      v15 = *(a8 + 280);
      v16 = sub_1AC4BFBE8();

      v15(v17, 999, &type metadata for Google_Protobuf_UninterpretedOption, v16, a7, a8);
    }

    v19 = a5;
    v18 = *(a8 + 432);

    v18(&v19, 1000, 0x20000000, a7, a8);
  }

  return result;
}

uint64_t sub_1AC4B0EBC()
{
  OUTLINED_FUNCTION_120();
  v3 = v2;
  OUTLINED_FUNCTION_22_5();
  result = swift_beginAccess();
  v5 = *(v3 + 24);
  if (v5)
  {
    v6 = *(v3 + 16);
    v7 = *(v0 + 112);

    v7(v6, v5, 1, v1, v0);
    OUTLINED_FUNCTION_209();
  }

  return result;
}

uint64_t sub_1AC4B0F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  v8 = *(a1 + 40);
  if (v8)
  {
    v9 = *(a1 + 32);
    v10 = *(a4 + 112);

    v10(v9, v8, 8, a3, a4);
  }

  return result;
}

uint64_t sub_1AC4B100C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 51) != 3)
  {
    v10 = *(a1 + 51);
    v8 = *(a4 + 128);
    v9 = sub_1AC4C6A6C();
    return v8(&v10, 9, &type metadata for Google_Protobuf_FileOptions.OptimizeMode, v9, a3, a4);
  }

  return result;
}

uint64_t sub_1AC4B10B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  v8 = *(a1 + 48);
  if (v8 != 2)
  {
    return (*(a4 + 104))(v8 & 1, 10, a3, a4);
  }

  return result;
}

uint64_t sub_1AC4B1150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  v8 = *(a1 + 64);
  if (v8)
  {
    v9 = *(a1 + 56);
    v10 = *(a4 + 112);

    v10(v9, v8, 11, a3, a4);
  }

  return result;
}

uint64_t sub_1AC4B1204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  v8 = *(a1 + 72);
  if (v8 != 2)
  {
    return (*(a4 + 104))(v8 & 1, 16, a3, a4);
  }

  return result;
}

uint64_t sub_1AC4B129C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  v8 = *(a1 + 73);
  if (v8 != 2)
  {
    return (*(a4 + 104))(v8 & 1, 17, a3, a4);
  }

  return result;
}

uint64_t sub_1AC4B1334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  v8 = *(a1 + 74);
  if (v8 != 2)
  {
    return (*(a4 + 104))(v8 & 1, 18, a3, a4);
  }

  return result;
}

uint64_t sub_1AC4B13CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  v8 = *(a1 + 49);
  if (v8 != 2)
  {
    return (*(a4 + 104))(v8 & 1, 20, a3, a4);
  }

  return result;
}

uint64_t sub_1AC4B1464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  v8 = *(a1 + 75);
  if (v8 != 2)
  {
    return (*(a4 + 104))(v8 & 1, 23, a3, a4);
  }

  return result;
}

uint64_t sub_1AC4B14FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  v8 = *(a1 + 50);
  if (v8 != 2)
  {
    return (*(a4 + 104))(v8 & 1, 27, a3, a4);
  }

  return result;
}

uint64_t sub_1AC4B1594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  v8 = *(a1 + 76);
  if (v8 != 2)
  {
    return (*(a4 + 104))(v8 & 1, 31, a3, a4);
  }

  return result;
}

uint64_t sub_1AC4B162C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  v8 = *(a1 + 88);
  if (v8)
  {
    v9 = *(a1 + 80);
    v10 = *(a4 + 112);

    v10(v9, v8, 36, a3, a4);
  }

  return result;
}

uint64_t sub_1AC4B16E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  v8 = *(a1 + 104);
  if (v8)
  {
    v9 = *(a1 + 96);
    v10 = *(a4 + 112);

    v10(v9, v8, 37, a3, a4);
  }

  return result;
}

uint64_t sub_1AC4B1794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  v8 = *(a1 + 120);
  if (v8)
  {
    v9 = *(a1 + 112);
    v10 = *(a4 + 112);

    v10(v9, v8, 39, a3, a4);
  }

  return result;
}

uint64_t sub_1AC4B1848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  v8 = *(a1 + 136);
  if (v8)
  {
    v9 = *(a1 + 128);
    v10 = *(a4 + 112);

    v10(v9, v8, 40, a3, a4);
  }

  return result;
}

uint64_t sub_1AC4B18FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  v8 = *(a1 + 152);
  if (v8)
  {
    v9 = *(a1 + 144);
    v10 = *(a4 + 112);

    v10(v9, v8, 41, a3, a4);
  }

  return result;
}

uint64_t sub_1AC4B19B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  v8 = *(a1 + 168);
  if (v8)
  {
    v9 = *(a1 + 160);
    v10 = *(a4 + 112);

    v10(v9, v8, 44, a3, a4);
  }

  return result;
}

uint64_t sub_1AC4B1A64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  v8 = *(a1 + 184);
  if (v8)
  {
    v9 = *(a1 + 176);
    v10 = *(a4 + 112);

    v10(v9, v8, 45, a3, a4);
  }

  return result;
}

uint64_t sub_1AC4B1B18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  v8 = *(a1 + 208);
  if (v8)
  {
    v9 = *(a1 + 220);
    v10 = *(a1 + 216);
    v16 = *(a1 + 192);
    v17 = v8;
    v18 = v10;
    v11.i64[0] = 0xFFFFFFFFFFFFLL;
    v11.i64[1] = 0xFFFFFFFFFFFFLL;
    v12 = vandq_s8(vdupq_n_s64(v10 | (v9 << 32)), v11);
    v13 = vshlq_u64(v12, xmmword_1AC520DE0);
    *v12.i8 = vmovn_s64(vshlq_u64(v12, xmmword_1AC520DF0));
    *v13.i8 = vmovn_s64(v13);
    v13.i16[1] = v13.i16[2];
    v13.i16[2] = v12.i16[0];
    v13.i16[3] = v12.i16[2];
    v19 = vmovn_s16(v13).u32[0];
    v20 = BYTE1(v9);
    v14 = *(a4 + 136);
    v15 = sub_1AC4C1928();
    return v14(&v16, 50, &type metadata for Google_Protobuf_FeatureSet, v15, a3, a4);
  }

  return result;
}

uint64_t sub_1AC4B1C40(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_beginAccess();
  v6 = *(a2 + 24);
  if (v5)
  {
    if (!v6)
    {
      goto LABEL_147;
    }

    v7 = v4 == *(a2 + 16) && v5 == v6;
    if (!v7 && (sub_1AC51F3D8() & 1) == 0)
    {
      goto LABEL_147;
    }
  }

  else if (v6)
  {
    goto LABEL_147;
  }

  swift_beginAccess();
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  swift_beginAccess();
  v10 = *(a2 + 40);
  if (v9)
  {
    if (!v10)
    {
      goto LABEL_147;
    }

    v11 = v8 == *(a2 + 32) && v9 == v10;
    if (!v11 && (sub_1AC51F3D8() & 1) == 0)
    {
      goto LABEL_147;
    }
  }

  else if (v10)
  {
    goto LABEL_147;
  }

  swift_beginAccess();
  v12 = *(a1 + 48);
  swift_beginAccess();
  v13 = *(a2 + 48);
  if (v12 == 2)
  {
    if (v13 != 2)
    {
      goto LABEL_147;
    }
  }

  else if (v13 == 2 || ((v12 ^ v13) & 1) != 0)
  {
    goto LABEL_147;
  }

  swift_beginAccess();
  v14 = *(a1 + 49);
  swift_beginAccess();
  v15 = *(a2 + 49);
  if (v14 == 2)
  {
    if (v15 != 2)
    {
      goto LABEL_147;
    }
  }

  else if (v15 == 2 || ((v14 ^ v15) & 1) != 0)
  {
    goto LABEL_147;
  }

  swift_beginAccess();
  v16 = *(a1 + 50);
  swift_beginAccess();
  v17 = *(a2 + 50);
  if (v16 == 2)
  {
    if (v17 != 2)
    {
      goto LABEL_147;
    }
  }

  else if (v17 == 2 || ((v16 ^ v17) & 1) != 0)
  {
    goto LABEL_147;
  }

  swift_beginAccess();
  v18 = *(a1 + 51);
  swift_beginAccess();
  v19 = *(a2 + 51);
  if (v18 == 3)
  {
    if (v19 != 3)
    {
      goto LABEL_147;
    }
  }

  else if (v19 == 3 || v18 != v19)
  {
    goto LABEL_147;
  }

  swift_beginAccess();
  v21 = *(a1 + 56);
  v22 = *(a1 + 64);
  swift_beginAccess();
  v23 = *(a2 + 64);
  if (v22)
  {
    if (!v23)
    {
      goto LABEL_147;
    }

    v24 = v21 == *(a2 + 56) && v22 == v23;
    if (!v24 && (sub_1AC51F3D8() & 1) == 0)
    {
      goto LABEL_147;
    }
  }

  else if (v23)
  {
    goto LABEL_147;
  }

  swift_beginAccess();
  v25 = *(a1 + 72);
  swift_beginAccess();
  v26 = *(a2 + 72);
  if (v25 == 2)
  {
    if (v26 != 2)
    {
      goto LABEL_147;
    }
  }

  else if (v26 == 2 || ((v25 ^ v26) & 1) != 0)
  {
    goto LABEL_147;
  }

  swift_beginAccess();
  v27 = *(a1 + 73);
  swift_beginAccess();
  v28 = *(a2 + 73);
  if (v27 == 2)
  {
    if (v28 != 2)
    {
      goto LABEL_147;
    }
  }

  else if (v28 == 2 || ((v27 ^ v28) & 1) != 0)
  {
    goto LABEL_147;
  }

  swift_beginAccess();
  v29 = *(a1 + 74);
  swift_beginAccess();
  v30 = *(a2 + 74);
  if (v29 == 2)
  {
    if (v30 != 2)
    {
      goto LABEL_147;
    }
  }

  else if (v30 == 2 || ((v29 ^ v30) & 1) != 0)
  {
    goto LABEL_147;
  }

  swift_beginAccess();
  v31 = *(a1 + 75);
  swift_beginAccess();
  v32 = *(a2 + 75);
  if (v31 == 2)
  {
    if (v32 != 2)
    {
      goto LABEL_147;
    }
  }

  else if (v32 == 2 || ((v31 ^ v32) & 1) != 0)
  {
    goto LABEL_147;
  }

  swift_beginAccess();
  v33 = *(a1 + 76);
  swift_beginAccess();
  v34 = *(a2 + 76);
  if (v33 == 2)
  {
    if (v34 != 2)
    {
      goto LABEL_147;
    }
  }

  else if (v34 == 2 || ((v33 ^ v34) & 1) != 0)
  {
    goto LABEL_147;
  }

  swift_beginAccess();
  v35 = *(a1 + 80);
  v36 = *(a1 + 88);
  swift_beginAccess();
  v37 = *(a2 + 88);
  if (v36)
  {
    if (!v37)
    {
      goto LABEL_147;
    }

    v38 = v35 == *(a2 + 80) && v36 == v37;
    if (!v38 && (sub_1AC51F3D8() & 1) == 0)
    {
      goto LABEL_147;
    }
  }

  else if (v37)
  {
    goto LABEL_147;
  }

  swift_beginAccess();
  v39 = *(a1 + 96);
  v40 = *(a1 + 104);
  swift_beginAccess();
  v41 = *(a2 + 104);
  if (v40)
  {
    if (!v41)
    {
      goto LABEL_147;
    }

    v42 = v39 == *(a2 + 96) && v40 == v41;
    if (!v42 && (sub_1AC51F3D8() & 1) == 0)
    {
      goto LABEL_147;
    }
  }

  else if (v41)
  {
    goto LABEL_147;
  }

  swift_beginAccess();
  v43 = *(a1 + 112);
  v44 = *(a1 + 120);
  swift_beginAccess();
  v45 = *(a2 + 120);
  if (v44)
  {
    if (!v45)
    {
      goto LABEL_147;
    }

    v46 = v43 == *(a2 + 112) && v44 == v45;
    if (!v46 && (sub_1AC51F3D8() & 1) == 0)
    {
      goto LABEL_147;
    }
  }

  else if (v45)
  {
    goto LABEL_147;
  }

  swift_beginAccess();
  v47 = *(a1 + 128);
  v48 = *(a1 + 136);
  swift_beginAccess();
  v49 = *(a2 + 136);
  if (v48)
  {
    if (!v49)
    {
      goto LABEL_147;
    }

    v50 = v47 == *(a2 + 128) && v48 == v49;
    if (!v50 && (sub_1AC51F3D8() & 1) == 0)
    {
      goto LABEL_147;
    }
  }

  else if (v49)
  {
    goto LABEL_147;
  }

  swift_beginAccess();
  v51 = *(a1 + 144);
  v52 = *(a1 + 152);
  swift_beginAccess();
  v53 = *(a2 + 152);
  if (v52)
  {
    if (!v53)
    {
      goto LABEL_147;
    }

    v54 = v51 == *(a2 + 144) && v52 == v53;
    if (!v54 && (sub_1AC51F3D8() & 1) == 0)
    {
      goto LABEL_147;
    }
  }

  else if (v53)
  {
    goto LABEL_147;
  }

  swift_beginAccess();
  v55 = *(a1 + 160);
  v56 = *(a1 + 168);
  swift_beginAccess();
  v57 = *(a2 + 168);
  if (v56)
  {
    if (!v57)
    {
      goto LABEL_147;
    }

    v58 = v55 == *(a2 + 160) && v56 == v57;
    if (!v58 && (sub_1AC51F3D8() & 1) == 0)
    {
      goto LABEL_147;
    }
  }

  else if (v57)
  {
    goto LABEL_147;
  }

  swift_beginAccess();
  v59 = *(a1 + 176);
  v60 = *(a1 + 184);
  swift_beginAccess();
  v61 = *(a2 + 184);
  if (v60)
  {
    if (!v61)
    {
      goto LABEL_147;
    }

    v62 = v59 == *(a2 + 176) && v60 == v61;
    if (!v62 && (sub_1AC51F3D8() & 1) == 0)
    {
      goto LABEL_147;
    }

LABEL_139:
    swift_beginAccess();
    v64 = *(a1 + 192);
    v63 = *(a1 + 200);
    v65 = *(a1 + 208);
    v66 = *(a1 + 216) | (*(a1 + 220) << 32);
    swift_beginAccess();
    v68 = *(a2 + 192);
    v67 = *(a2 + 200);
    v69 = *(a2 + 208);
    v70 = *(a2 + 216) | (*(a2 + 220) << 32);
    if (v65)
    {
      *v79 = v64;
      *&v79[8] = v63;
      *&v79[16] = v65;
      *&v79[24] = v66;
      *&v79[28] = WORD2(v66);
      if (v69)
      {
        *v76 = v68;
        *&v76[8] = v67;
        *&v76[16] = v69;
        *&v76[28] = WORD2(v70);
        *&v76[24] = v70;

        sub_1AC485860(v64, v63, v65);
        sub_1AC485860(v68, v67, v69);
        sub_1AC485860(v64, v63, v65);
        v71 = static Google_Protobuf_FeatureSet.== infix(_:_:)(v79, v76);
        v77[0] = *v76;
        *(v77 + 14) = *&v76[14];
        sub_1AC4AEF78(v77);
        *v78 = *v79;
        *&v78[14] = *&v79[14];
        sub_1AC4AEF78(v78);
        sub_1AC485714(v64, v63, v65);
        if ((v71 & 1) == 0)
        {

          goto LABEL_147;
        }

LABEL_150:
        swift_beginAccess();
        v74 = *(a1 + 224);
        swift_beginAccess();
        v75 = *(a2 + 224);

        v72 = sub_1AC47DB68(v74, v75);

        return v72 & 1;
      }

      sub_1AC485860(v64, v63, v65);
      sub_1AC485860(v68, v67, 0);
      sub_1AC485860(v64, v63, v65);
      *v78 = *v79;
      *&v78[14] = *&v79[14];
      sub_1AC4AEF78(v78);
    }

    else
    {
      if (!v69)
      {

        sub_1AC485860(v64, v63, 0);
        sub_1AC485860(v68, v67, 0);
        sub_1AC485714(v64, v63, 0);
        goto LABEL_150;
      }

      sub_1AC485860(v64, v63, 0);
      sub_1AC485860(v68, v67, v69);
    }

    sub_1AC485714(v64, v63, v65);
    sub_1AC485714(v68, v67, v69);
    goto LABEL_147;
  }

  if (!v61)
  {
    goto LABEL_139;
  }

LABEL_147:
  v72 = 0;
  return v72 & 1;
}

uint64_t static Google_Protobuf_FileOptions.OptimizeMode._protobuf_nameMap.getter()
{
  if (qword_1EB557DB8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB558560);
}

uint64_t static Google_Protobuf_MessageOptions._protobuf_nameMap.getter()
{
  if (qword_1EB557DC0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB558580);
}

void Google_Protobuf_MessageOptions.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_13_4();
  OUTLINED_FUNCTION_153(v4, v5, v6);
  while (1)
  {
    v7 = OUTLINED_FUNCTION_98();
    v8 = v2(v7);
    if (v0 || (v9 & 1) != 0)
    {
      break;
    }

    switch(v8)
    {
      case 1:
        OUTLINED_FUNCTION_299();
        goto LABEL_15;
      case 2:
        v12 = *(v1 + 320);
        goto LABEL_15;
      case 3:
        v10 = *(v1 + 320);
        goto LABEL_15;
      case 4:
      case 5:
      case 6:
      case 8:
      case 9:
      case 10:
        goto LABEL_8;
      case 7:
        v11 = *(v1 + 320);
        goto LABEL_15;
      case 11:
        v13 = *(v1 + 320);
LABEL_15:
        OUTLINED_FUNCTION_36_0();
        v14();
        break;
      case 12:
        OUTLINED_FUNCTION_7();
        sub_1AC4BA02C();
        break;
      default:
        if (v8 == 999)
        {
          OUTLINED_FUNCTION_7();
          sub_1AC4BA08C();
        }

        else
        {
LABEL_8:
          if (v8 - 1000 <= v3)
          {
            OUTLINED_FUNCTION_37_1();
            sub_1AC4BA0EC();
          }
        }

        break;
    }
  }

  OUTLINED_FUNCTION_61();
}

void sub_1AC4B292C()
{
  OUTLINED_FUNCTION_149();
  if (!v2)
  {
    MEMORY[0x1AC5B48A0](1);
    sub_1AC51F488();
  }

  if (*(v0 + 33) != 2)
  {
    MEMORY[0x1AC5B48A0](2);
    sub_1AC51F488();
  }

  if (*(v0 + 34) != 2)
  {
    MEMORY[0x1AC5B48A0](3);
    sub_1AC51F488();
  }

  if (*(v0 + 35) != 2)
  {
    MEMORY[0x1AC5B48A0](7);
    sub_1AC51F488();
  }

  if (*(v0 + 36) != 2)
  {
    MEMORY[0x1AC5B48A0](11);
    sub_1AC51F488();
  }

  v3 = OUTLINED_FUNCTION_44();
  sub_1AC4BA38C(v3);
  if (!v1)
  {
    OUTLINED_FUNCTION_335();
    if (v4)
    {
      sub_1AC50D0A4();
    }

    v5 = *(v0 + 24);
    v6 = OUTLINED_FUNCTION_82_1();
    sub_1AC5175D4(v6, v7, v8, v9);
    OUTLINED_FUNCTION_390();
  }
}

uint64_t Google_Protobuf_MessageOptions.hashValue.getter()
{
  v1 = OUTLINED_FUNCTION_300();
  memcpy(v1, v2, 0x46uLL);
  v3 = OUTLINED_FUNCTION_250();
  v11 = OUTLINED_FUNCTION_130(v3, v4, v5, v6, v7, v8, v9, v10, v28, v31, v34, v36, v38, v40, v42, v44, v46, v48, v50);
  OUTLINED_FUNCTION_145(v11, v12, v13, v14, v15, v16, v17, v18, v29, v32);
  sub_1AC4B292C();
  if (v0)
  {
    v19 = MEMORY[0x1AC5B4BA0](v0);
  }

  OUTLINED_FUNCTION_132(v19, v20, v21, v22, v23, v24, v25, v26, v30, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51);
  return sub_1AC51F4C8();
}

uint64_t sub_1AC4B2FF4()
{
  memcpy(__dst, v0, sizeof(__dst));
  sub_1AC51F468();
  memcpy(v2, __src, sizeof(v2));
  sub_1AC4B292C();
  memcpy(__src, v2, sizeof(__src));
  return sub_1AC51F4C8();
}

uint64_t static Google_Protobuf_FieldOptions._protobuf_nameMap.getter()
{
  if (qword_1EB557DC8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB5585A0);
}

uint64_t sub_1AC4B3174(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t (*a4)(void), uint64_t *a5)
{
  a2(0);
  swift_allocObject();
  result = a4();
  *a5 = result;
  return result;
}

uint64_t sub_1AC4B31CC(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (a3)
  {
    sub_1AC4578F4(result, a2);
  }

  return result;
}

uint64_t sub_1AC4B3218(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (a3)
  {
    sub_1AC4513F8(result, a2);
  }

  return result;
}

uint64_t sub_1AC4B3394(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8) + 16);
  v6 = OUTLINED_FUNCTION_44();
  v7(v6);
  return a2;
}

double sub_1AC4B34A8()
{
  *(v0 + 16) = 515;
  *(v0 + 18) = 3;
  *(v0 + 19) = 33686018;
  *(v0 + 23) = 770;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 32) = MEMORY[0x1E69E7CC0];
  *(v0 + 40) = v1;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  *(v0 + 48) = 0;
  *(v0 + 70) = 0;
  result = 0.0;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 1;
  *(v0 + 120) = 0;
  *(v0 + 128) = v1;
  return result;
}

uint64_t sub_1AC4B3500(uint64_t a1)
{
  *(v1 + 16) = 515;
  *(v1 + 18) = 3;
  *(v1 + 23) = 770;
  *(v1 + 19) = 33686018;
  v3 = MEMORY[0x1E69E7CC0];
  *(v1 + 32) = MEMORY[0x1E69E7CC0];
  *(v1 + 40) = v3;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  *(v1 + 48) = 0;
  *(v1 + 70) = 0;
  *(v1 + 96) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 112) = 1;
  *(v1 + 120) = 0;
  *(v1 + 128) = v3;
  swift_beginAccess();
  v4 = *(a1 + 16);
  swift_beginAccess();
  *(v1 + 16) = v4;
  swift_beginAccess();
  v5 = *(a1 + 17);
  swift_beginAccess();
  *(v1 + 17) = v5;
  swift_beginAccess();
  v6 = *(a1 + 18);
  swift_beginAccess();
  *(v1 + 18) = v6;
  swift_beginAccess();
  v7 = *(a1 + 19);
  swift_beginAccess();
  *(v1 + 19) = v7;
  swift_beginAccess();
  v8 = *(a1 + 20);
  swift_beginAccess();
  *(v1 + 20) = v8;
  swift_beginAccess();
  v9 = *(a1 + 21);
  swift_beginAccess();
  *(v1 + 21) = v9;
  swift_beginAccess();
  v10 = *(a1 + 22);
  swift_beginAccess();
  *(v1 + 22) = v10;
  swift_beginAccess();
  v11 = *(a1 + 23);
  swift_beginAccess();
  *(v1 + 23) = v11;
  swift_beginAccess();
  v12 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 24) = v12;
  swift_beginAccess();
  v13 = *(a1 + 32);
  swift_beginAccess();
  *(v1 + 32) = v13;
  swift_beginAccess();
  v14 = *(a1 + 40);
  swift_beginAccess();
  *(v1 + 40) = v14;

  swift_beginAccess();
  v15 = *(a1 + 48);
  v16 = *(a1 + 56);
  v17 = *(a1 + 64);
  v18 = *(a1 + 76);
  v19 = *(a1 + 72);
  swift_beginAccess();
  v20 = *(v1 + 48);
  v21 = *(v1 + 56);
  v35 = *(v1 + 64);
  v22 = *(v1 + 72) | (*(v1 + 76) << 32);
  *(v1 + 48) = v15;
  *(v1 + 56) = v16;
  *(v1 + 64) = v17;
  *(v1 + 72) = v19;
  *(v1 + 76) = v18;
  sub_1AC485860(v15, v16, v17);
  sub_1AC485714(v20, v21, v35);
  swift_beginAccess();
  v23 = *(a1 + 80);
  v24 = *(a1 + 88);
  v25 = *(a1 + 96);
  v26 = *(a1 + 104);
  v27 = *(a1 + 112);
  LOBYTE(v18) = *(a1 + 120);
  swift_beginAccess();
  v28 = *(v1 + 88);
  v36 = *(v1 + 96);
  v37 = *(v1 + 80);
  v33 = *(v1 + 112);
  v34 = *(v1 + 104);
  *(v1 + 80) = v23;
  *(v1 + 88) = v24;
  *(v1 + 96) = v25;
  *(v1 + 104) = v26;
  *(v1 + 112) = v27;
  v29 = *(v1 + 120);
  *(v1 + 120) = v18;
  sub_1AC4B3968(v23, v24, v25, v26, v27);
  sub_1AC4B39AC(v37, v28, v36, v34, v33);
  swift_beginAccess();
  v30 = *(a1 + 128);

  swift_beginAccess();
  v31 = *(v1 + 128);
  *(v1 + 128) = v30;

  return v1;
}

uint64_t sub_1AC4B3968(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5 != 1)
  {
    sub_1AC4578F4(result, a2);
  }

  return result;
}

uint64_t sub_1AC4B39AC(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5 != 1)
  {
    sub_1AC4513F8(result, a2);
  }

  return result;
}

uint64_t sub_1AC4B39F0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1AC4578F4(a1, a2);
  }

  return a1;
}

unint64_t sub_1AC4B3A04()
{
  result = qword_1EB5589C8;
  if (!qword_1EB5589C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5589C8);
  }

  return result;
}

uint64_t sub_1AC4B3A58()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = *(v0 + 76);
  v4 = *(v0 + 72);
  sub_1AC485714(*(v0 + 48), *(v0 + 56), *(v0 + 64));
  v5 = *(v0 + 120);
  sub_1AC4B39AC(*(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112));
  v6 = *(v0 + 128);

  return v0;
}

uint64_t sub_1AC4B3AB4()
{
  v0 = sub_1AC4B3A58();

  return MEMORY[0x1EEE6BDC0](v0, 136, 7);
}

void sub_1AC4B3B3C()
{
  OUTLINED_FUNCTION_60();
  v11 = v1;
  v3 = v2;
  v5 = v4;
  v6 = v0;
  v7 = *(v0 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5(0);
    swift_allocObject();
    v10 = OUTLINED_FUNCTION_0_1();
    *(v6 + 24) = v3(v10);
  }

  OUTLINED_FUNCTION_129();
  v11();

  OUTLINED_FUNCTION_61();
}

void sub_1AC4B3BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a5 + 16);
  while (1)
  {
    v11 = v10(a4, a5);
    if (v5 || (v12 & 1) != 0)
    {
      break;
    }

    switch(v11)
    {
      case 1:
        sub_1AC4B3EB4(a2, a1, a4, a5);
        break;
      case 2:
        sub_1AC4B3F60(a2, a1, a4, a5);
        break;
      case 3:
        sub_1AC4B3FF4(a2, a1, a4, a5);
        break;
      case 4:
      case 7:
      case 8:
      case 9:
      case 11:
      case 12:
      case 13:
      case 14:
      case 18:
        goto LABEL_8;
      case 5:
        sub_1AC4B4088(a2, a1, a4, a5);
        break;
      case 6:
        sub_1AC4B411C(a2, a1, a4, a5);
        break;
      case 10:
        sub_1AC4B41C8(a2, a1, a4, a5);
        break;
      case 15:
        sub_1AC4B425C(a2, a1, a4, a5);
        break;
      case 16:
        sub_1AC4B42F0(a2, a1, a4, a5);
        break;
      case 17:
        sub_1AC4B4384(a2, a1, a4, a5);
        break;
      case 19:
        sub_1AC4B4430(a2, a1, a4, a5);
        break;
      case 20:
        sub_1AC4B44DC();
        break;
      case 21:
        sub_1AC4B4554(a2, a1, a4, a5);
        break;
      case 22:
        sub_1AC4B4600();
        break;
      default:
        if (v11 == 999)
        {
          sub_1AC4B4678(a2, a1, a4, a5);
        }

        else
        {
LABEL_8:
          if ((v11 - 1000) <= 0x1FFFFC17)
          {
            sub_1AC4B4724();
          }
        }

        break;
    }
  }
}

uint64_t sub_1AC4B3EB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v7 = *(a4 + 392);
  v8 = sub_1AC4C6A18();
  v7(a2 + 16, &type metadata for Google_Protobuf_FieldOptions.CType, v8, a3, a4);
  return swift_endAccess();
}

uint64_t sub_1AC4B3F60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  (*(a4 + 320))(a2 + 17, a3, a4);
  return swift_endAccess();
}

uint64_t sub_1AC4B3FF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  (*(a4 + 320))(a2 + 21, a3, a4);
  return swift_endAccess();
}

uint64_t sub_1AC4B4088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  (*(a4 + 320))(a2 + 19, a3, a4);
  return swift_endAccess();
}

uint64_t sub_1AC4B411C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v7 = *(a4 + 392);
  v8 = sub_1AC4C69C4();
  v7(a2 + 18, &type metadata for Google_Protobuf_FieldOptions.JSType, v8, a3, a4);
  return swift_endAccess();
}

uint64_t sub_1AC4B41C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  (*(a4 + 320))(a2 + 22, a3, a4);
  return swift_endAccess();
}

uint64_t sub_1AC4B425C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  (*(a4 + 320))(a2 + 20, a3, a4);
  return swift_endAccess();
}

uint64_t sub_1AC4B42F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  (*(a4 + 320))(a2 + 23, a3, a4);
  return swift_endAccess();
}

uint64_t sub_1AC4B4384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v7 = *(a4 + 392);
  v8 = sub_1AC4C6970();
  v7(a2 + 24, &type metadata for Google_Protobuf_FieldOptions.OptionRetention, v8, a3, a4);
  return swift_endAccess();
}

uint64_t sub_1AC4B4430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v7 = *(a4 + 400);
  v8 = sub_1AC4C691C();
  v7(a2 + 32, &type metadata for Google_Protobuf_FieldOptions.OptionTargetType, v8, a3, a4);
  return swift_endAccess();
}

void sub_1AC4B44DC()
{
  OUTLINED_FUNCTION_363();
  OUTLINED_FUNCTION_222();
  v2 = OUTLINED_FUNCTION_321();
  v3 = *(v1 + 416);
  v0(v2);
  OUTLINED_FUNCTION_278();
  v3();
  swift_endAccess();
  OUTLINED_FUNCTION_284();
}

uint64_t sub_1AC4B4554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v7 = *(a4 + 408);
  v8 = sub_1AC4C1928();
  v7(a2 + 48, &type metadata for Google_Protobuf_FeatureSet, v8, a3, a4);
  return swift_endAccess();
}

void sub_1AC4B4600()
{
  OUTLINED_FUNCTION_363();
  OUTLINED_FUNCTION_222();
  v2 = OUTLINED_FUNCTION_321();
  v3 = *(v1 + 408);
  v0(v2);
  OUTLINED_FUNCTION_278();
  v3();
  swift_endAccess();
  OUTLINED_FUNCTION_284();
}

uint64_t sub_1AC4B4678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v7 = *(a4 + 416);
  v8 = sub_1AC4BFBE8();
  v7(a2 + 128, &type metadata for Google_Protobuf_UninterpretedOption, v8, a3, a4);
  return swift_endAccess();
}

void sub_1AC4B4724()
{
  OUTLINED_FUNCTION_326();
  OUTLINED_FUNCTION_224();
  v1();
  v2 = *(v0 + 464);
  OUTLINED_FUNCTION_260();
  v3();
  OUTLINED_FUNCTION_327();
}

void sub_1AC4B47A8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t, unint64_t, uint64_t))
{
  a6(a5, a1, a2, a3, a4);
  if (!v6)
  {
    v8 = OUTLINED_FUNCTION_32();
    sub_1AC4937B8(v8, v9, a3);
  }
}

uint64_t sub_1AC4B4838()
{
  OUTLINED_FUNCTION_31_2();
  v6 = *v0;
  v5 = v0[1];
  result = v7(v0[3], v4, *v0, v5, v0[2], v0[3], v3, v2);
  if (!v1)
  {
    v9 = OUTLINED_FUNCTION_12_0();
    sub_1AC4578F4(v9, v10);
    v11 = OUTLINED_FUNCTION_48_2();
    return OUTLINED_FUNCTION_385(v11, v12, v13, v14, v15, v16, v17, v18, v6, v5);
  }

  return result;
}

void sub_1AC4B48C8()
{
  OUTLINED_FUNCTION_60();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  v8 = *(v7 + 16);
  if (v8 != 3)
  {
    MEMORY[0x1AC5B48A0](1);
    MEMORY[0x1AC5B48A0](v8);
  }

  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  if (*(v7 + 17) != 2)
  {
    MEMORY[0x1AC5B48A0](2);
    sub_1AC51F488();
  }

  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  if (*(v7 + 21) != 2)
  {
    MEMORY[0x1AC5B48A0](3);
    sub_1AC51F488();
  }

  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  if (*(v7 + 19) != 2)
  {
    MEMORY[0x1AC5B48A0](5);
    sub_1AC51F488();
  }

  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  v9 = *(v7 + 18);
  if (v9 != 3)
  {
    MEMORY[0x1AC5B48A0](6);
    MEMORY[0x1AC5B48A0](v9);
  }

  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  if (*(v7 + 22) != 2)
  {
    MEMORY[0x1AC5B48A0](10);
    sub_1AC51F488();
  }

  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  if (*(v7 + 20) != 2)
  {
    MEMORY[0x1AC5B48A0](15);
    sub_1AC51F488();
  }

  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  if (*(v7 + 23) != 2)
  {
    MEMORY[0x1AC5B48A0](16);
    sub_1AC51F488();
  }

  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  v10 = *(v7 + 24);
  if (v10 != 3)
  {
    MEMORY[0x1AC5B48A0](17);
    MEMORY[0x1AC5B48A0](v10);
  }

  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  if (*(*(v7 + 32) + 16))
  {
    MEMORY[0x1AC5B48A0](19);
    v11 = OUTLINED_FUNCTION_98();
    sub_1AC51AB2C(v11, v12);
  }

  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  if (!*(*(v7 + 40) + 16) || (v13 = *(v7 + 40), , sub_1AC50D840(), , !v0))
  {
    OUTLINED_FUNCTION_3();
    swift_beginAccess();
    v14 = *(v7 + 64);
    if (v14)
    {
      v16 = *(v7 + 48);
      v15 = *(v7 + 56);
      v17 = *(v7 + 72) | (*(v7 + 76) << 32);
      MEMORY[0x1AC5B48A0](21);
      memcpy(__dst, v5, sizeof(__dst));
      sub_1AC4578F4(v16, v15);

      OUTLINED_FUNCTION_239();
      sub_1AC4BBFB4();
      if (v0)
      {
        MEMORY[0x1AC5B4BA0](v0);
        v1 = 0;
      }

      sub_1AC485714(v16, v15, v14);
      memcpy(v5, __dst, 0x48uLL);
    }

    OUTLINED_FUNCTION_3();
    swift_beginAccess();
    v18 = *(v7 + 112);
    if (v18 != 1)
    {
      v45 = v3;
      v20 = *(v7 + 88);
      v22 = *(v7 + 96);
      v21 = *(v7 + 104);
      v23 = *(v7 + 120);
      v39 = *(v7 + 80);
      v19 = v39;
      v40 = v20;
      v41 = v22;
      v42 = v21;
      v43 = v18;
      HIDWORD(v36) = v23;
      v44 = v23;
      MEMORY[0x1AC5B48A0](22);
      memcpy(__src, v5, sizeof(__src));
      sub_1AC4578F4(v19, v20);

      OUTLINED_FUNCTION_186(v24, v25, v26, v27, v28, v29, v30, v31, v36, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __src[0]);
      sub_1AC4B7050();
      v1 = v0;
      if (v0)
      {
        MEMORY[0x1AC5B4BA0](v0);
        v1 = 0;
      }

      sub_1AC4B39AC(v19, v20, v22, v21, v18);
      memcpy(v5, __src, 0x48uLL);
      v3 = v45;
    }

    OUTLINED_FUNCTION_3();
    swift_beginAccess();
    if (!*(*(v7 + 128) + 16) || (v32 = *(v7 + 128), , sub_1AC50D0A4(), , !v1))
    {
      OUTLINED_FUNCTION_154();
      sub_1AC5175D4(v33, v34, v35, v3);
    }
  }

  OUTLINED_FUNCTION_61();
}

uint64_t sub_1AC4B4CFC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  result = sub_1AC4B5044(a1, a2, a7, a8);
  if (!v8)
  {
    sub_1AC4B50F0(a1, a2, a7, a8);
    sub_1AC4B5188(a1, a2, a7, a8);
    sub_1AC4B5220(a1, a2, a7, a8);
    sub_1AC4B52B8(a1, a2, a7, a8);
    sub_1AC4B5364(a1, a2, a7, a8);
    sub_1AC4B53FC(a1, a2, a7, a8);
    sub_1AC4B5494(a1, a2, a7, a8);
    sub_1AC4B552C(a1, a2, a7, a8);
    swift_beginAccess();
    if (*(a1[4] + 16))
    {
      v15 = a8[34];
      v16 = sub_1AC4C691C();

      v15(v17, 19, &type metadata for Google_Protobuf_FieldOptions.OptionTargetType, v16, a7, a8);
    }

    swift_beginAccess();
    if (*(a1[5] + 16))
    {
      v18 = a8[35];
      v19 = sub_1AC4C33B8();

      v18(v20, 20, &type metadata for Google_Protobuf_FieldOptions.EditionDefault, v19, a7, a8);
    }

    sub_1AC4B55D8(a1, a2, a7, a8);
    sub_1AC4B56E8(a1, a2, a7, a8);
    swift_beginAccess();
    if (*(a1[16] + 16))
    {
      v21 = a8[35];
      v22 = sub_1AC4BFBE8();

      v21(v23, 999, &type metadata for Google_Protobuf_UninterpretedOption, v22, a7, a8);
    }

    v25 = a5;
    v24 = a8[54];

    v24(&v25, 1000, 0x20000000, a7, a8);
  }

  return result;
}

uint64_t sub_1AC4B5044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 16) != 3)
  {
    v10 = *(a1 + 16);
    v8 = *(a4 + 128);
    v9 = sub_1AC4C6A18();
    return v8(&v10, 1, &type metadata for Google_Protobuf_FieldOptions.CType, v9, a3, a4);
  }

  return result;
}

uint64_t sub_1AC4B50F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  v8 = *(a1 + 17);
  if (v8 != 2)
  {
    return (*(a4 + 104))(v8 & 1, 2, a3, a4);
  }

  return result;
}

uint64_t sub_1AC4B5188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  v8 = *(a1 + 21);
  if (v8 != 2)
  {
    return (*(a4 + 104))(v8 & 1, 3, a3, a4);
  }

  return result;
}

uint64_t sub_1AC4B5220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  v8 = *(a1 + 19);
  if (v8 != 2)
  {
    return (*(a4 + 104))(v8 & 1, 5, a3, a4);
  }

  return result;
}

uint64_t sub_1AC4B52B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 18) != 3)
  {
    v10 = *(a1 + 18);
    v8 = *(a4 + 128);
    v9 = sub_1AC4C69C4();
    return v8(&v10, 6, &type metadata for Google_Protobuf_FieldOptions.JSType, v9, a3, a4);
  }

  return result;
}

uint64_t sub_1AC4B5364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  v8 = *(a1 + 22);
  if (v8 != 2)
  {
    return (*(a4 + 104))(v8 & 1, 10, a3, a4);
  }

  return result;
}

uint64_t sub_1AC4B53FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  v8 = *(a1 + 20);
  if (v8 != 2)
  {
    return (*(a4 + 104))(v8 & 1, 15, a3, a4);
  }

  return result;
}

uint64_t sub_1AC4B5494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  v8 = *(a1 + 23);
  if (v8 != 2)
  {
    return (*(a4 + 104))(v8 & 1, 16, a3, a4);
  }

  return result;
}

uint64_t sub_1AC4B552C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 24) != 3)
  {
    v10 = *(a1 + 24);
    v8 = *(a4 + 128);
    v9 = sub_1AC4C6970();
    return v8(&v10, 17, &type metadata for Google_Protobuf_FieldOptions.OptionRetention, v9, a3, a4);
  }

  return result;
}

uint64_t sub_1AC4B55D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  v8 = *(a1 + 64);
  if (v8)
  {
    v9 = *(a1 + 76);
    v10 = *(a1 + 72);
    v16 = *(a1 + 48);
    v17 = v8;
    v18 = v10;
    v11.i64[0] = 0xFFFFFFFFFFFFLL;
    v11.i64[1] = 0xFFFFFFFFFFFFLL;
    v12 = vandq_s8(vdupq_n_s64(v10 | (v9 << 32)), v11);
    v13 = vshlq_u64(v12, xmmword_1AC520DE0);
    *v12.i8 = vmovn_s64(vshlq_u64(v12, xmmword_1AC520DF0));
    *v13.i8 = vmovn_s64(v13);
    v13.i16[1] = v13.i16[2];
    v13.i16[2] = v12.i16[0];
    v13.i16[3] = v12.i16[2];
    v19 = vmovn_s16(v13).u32[0];
    v20 = BYTE1(v9);
    v14 = *(a4 + 136);
    v15 = sub_1AC4C1928();
    return v14(&v16, 21, &type metadata for Google_Protobuf_FeatureSet, v15, a3, a4);
  }

  return result;
}

uint64_t sub_1AC4B56E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  v8 = *(a1 + 112);
  if (v8 != 1)
  {
    v9 = *(a1 + 120);
    v11 = *(a1 + 96);
    v10 = *(a1 + 104);
    v14 = *(a1 + 80);
    v15 = v11;
    v16 = v10;
    v17 = v8;
    v18 = v9;
    v12 = *(a4 + 136);
    v13 = sub_1AC4C3560();
    return v12(&v14, 22, &type metadata for Google_Protobuf_FieldOptions.FeatureSupport, v13, a3, a4);
  }

  return result;
}

void sub_1AC4B57CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_213();
  a21 = v22;
  a22 = v25;
  v26 = *v23;
  v27 = v23[1];
  v28 = v23[2];
  v29 = v23[3];
  v31 = *v30;
  v32 = v30[1];
  v33 = v30[2];
  v34 = v30[3];
  if (v29 == v34 || (v35 = v24, v36 = v23[3], , , LOBYTE(v35) = v35(v29, v34), , , (v35 & 1) != 0))
  {
    v37 = OUTLINED_FUNCTION_10_1();
    sub_1AC4578F4(v37, v38);
    v39 = OUTLINED_FUNCTION_19();
    sub_1AC4578F4(v39, v40);
    OUTLINED_FUNCTION_10_1();
    OUTLINED_FUNCTION_351();
    v41 = MEMORY[0x1AC5B4070]();
    v42 = OUTLINED_FUNCTION_19();
    sub_1AC4513F8(v42, v43);
    v44 = OUTLINED_FUNCTION_10_1();
    sub_1AC4513F8(v44, v45);
    if (v41)
    {
      a9 = v33;
      a10 = v28;

      static ExtensionFieldValueSet.== infix(_:_:)(&a10, &a9);
    }
  }

  OUTLINED_FUNCTION_212();
}

uint64_t sub_1AC4B58C0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  swift_beginAccess();
  v5 = *(a2 + 16);
  if (v4 == 3)
  {
    if (v5 != 3)
    {
      goto LABEL_73;
    }
  }

  else if (v5 == 3 || v4 != v5)
  {
    goto LABEL_73;
  }

  swift_beginAccess();
  v7 = *(a1 + 17);
  swift_beginAccess();
  v8 = *(a2 + 17);
  if (v7 == 2)
  {
    if (v8 != 2)
    {
      goto LABEL_73;
    }
  }

  else if (v8 == 2 || ((v7 ^ v8) & 1) != 0)
  {
    goto LABEL_73;
  }

  swift_beginAccess();
  v9 = *(a1 + 18);
  swift_beginAccess();
  v10 = *(a2 + 18);
  if (v9 == 3)
  {
    if (v10 != 3)
    {
      goto LABEL_73;
    }
  }

  else if (v10 == 3 || v9 != v10)
  {
    goto LABEL_73;
  }

  swift_beginAccess();
  v12 = *(a1 + 19);
  swift_beginAccess();
  v13 = *(a2 + 19);
  if (v12 == 2)
  {
    if (v13 != 2)
    {
      goto LABEL_73;
    }
  }

  else if (v13 == 2 || ((v12 ^ v13) & 1) != 0)
  {
    goto LABEL_73;
  }

  swift_beginAccess();
  v14 = *(a1 + 20);
  swift_beginAccess();
  v15 = *(a2 + 20);
  if (v14 == 2)
  {
    if (v15 != 2)
    {
      goto LABEL_73;
    }
  }

  else if (v15 == 2 || ((v14 ^ v15) & 1) != 0)
  {
    goto LABEL_73;
  }

  swift_beginAccess();
  v16 = *(a1 + 21);
  swift_beginAccess();
  v17 = *(a2 + 21);
  if (v16 == 2)
  {
    if (v17 != 2)
    {
      goto LABEL_73;
    }
  }

  else if (v17 == 2 || ((v16 ^ v17) & 1) != 0)
  {
    goto LABEL_73;
  }

  swift_beginAccess();
  v18 = *(a1 + 22);
  swift_beginAccess();
  v19 = *(a2 + 22);
  if (v18 == 2)
  {
    if (v19 != 2)
    {
      goto LABEL_73;
    }
  }

  else if (v19 == 2 || ((v18 ^ v19) & 1) != 0)
  {
    goto LABEL_73;
  }

  swift_beginAccess();
  v20 = *(a1 + 23);
  swift_beginAccess();
  v21 = *(a2 + 23);
  if (v20 == 2)
  {
    if (v21 != 2)
    {
      goto LABEL_73;
    }
  }

  else if (v21 == 2 || ((v20 ^ v21) & 1) != 0)
  {
    goto LABEL_73;
  }

  swift_beginAccess();
  v22 = *(a1 + 24);
  swift_beginAccess();
  v23 = *(a2 + 24);
  if (v22 == 3)
  {
    if (v23 != 3)
    {
      goto LABEL_73;
    }
  }

  else if (v23 == 3 || v22 != v23)
  {
    goto LABEL_73;
  }

  swift_beginAccess();
  v25 = *(a1 + 32);
  swift_beginAccess();
  if (sub_1AC486118(v25, *(a2 + 32)))
  {
    swift_beginAccess();
    v26 = *(a1 + 40);
    swift_beginAccess();
    v27 = *(a2 + 40);

    v28 = sub_1AC47F864(v26, v27);

    if ((v28 & 1) == 0)
    {
LABEL_60:

      goto LABEL_73;
    }

    swift_beginAccess();
    v30 = *(a1 + 48);
    v29 = *(a1 + 56);
    v31 = *(a1 + 64);
    v32 = *(a1 + 72) | (*(a1 + 76) << 32);
    swift_beginAccess();
    v34 = *(a2 + 48);
    v33 = *(a2 + 56);
    v35 = *(a2 + 64);
    v36 = *(a2 + 72) | (*(a2 + 76) << 32);
    if (v31)
    {
      *v60 = v30;
      *&v60[8] = v29;
      *&v60[16] = v31;
      *&v60[24] = v32;
      *&v60[28] = WORD2(v32);
      if (v35)
      {
        *v55 = v34;
        *&v55[8] = v33;
        *&v55[16] = v35;
        *&v55[28] = WORD2(v36);
        *&v55[24] = v36;
        sub_1AC485860(v30, v29, v31);
        sub_1AC485860(v34, v33, v35);
        sub_1AC485860(v30, v29, v31);
        v37 = static Google_Protobuf_FeatureSet.== infix(_:_:)(v60, v55);
        v56[0] = *v55;
        *(v56 + 14) = *&v55[14];
        sub_1AC4AEF78(v56);
        *v57 = *v60;
        *&v57[14] = *&v60[14];
        sub_1AC4AEF78(v57);
        sub_1AC485714(v30, v29, v31);
        if ((v37 & 1) == 0)
        {
          goto LABEL_60;
        }

LABEL_66:
        swift_beginAccess();
        v39 = *(a1 + 80);
        v38 = *(a1 + 88);
        v41 = *(a1 + 96);
        v40 = *(a1 + 104);
        v42 = *(a1 + 112);
        v54 = *(a1 + 120);
        swift_beginAccess();
        v53 = *(a2 + 80);
        v43 = *(a2 + 96);
        v50 = *(a2 + 104);
        v52 = *(a2 + 112);
        v51 = *(a2 + 120);
        if (v42 == 1)
        {
          sub_1AC4B3968(v39, v38, v41, v40, 1);
          if (v52 == 1)
          {
            sub_1AC4B3968(v53, *(&v53 + 1), v43, v50, 1);
            sub_1AC4B39AC(v39, v38, v41, v40, 1);
            goto LABEL_76;
          }

          sub_1AC4B3968(v53, *(&v53 + 1), v43, v50, v52);
        }

        else
        {
          *v60 = v39;
          *&v60[8] = v38;
          *&v60[16] = v41;
          *&v60[24] = v40;
          v61 = v42;
          v62 = v54;
          if (v52 != 1)
          {
            *v57 = v53;
            *&v57[16] = v43;
            *&v57[24] = v50;
            v58 = v52;
            v59 = v51;
            sub_1AC4B3968(v39, v38, v41, v40, v42);
            sub_1AC4B3968(v53, *(&v53 + 1), v43, v50, v52);
            sub_1AC4B3968(v39, v38, v41, v40, v42);
            static Google_Protobuf_FieldOptions.FeatureSupport.== infix(_:_:)();
            v47 = v46;
            sub_1AC4513F8(v53, *(&v53 + 1));

            sub_1AC4513F8(v39, v38);

            sub_1AC4B39AC(v39, v38, v41, v40, v42);
            if ((v47 & 1) == 0)
            {
              goto LABEL_60;
            }

LABEL_76:
            swift_beginAccess();
            v48 = *(a1 + 128);
            swift_beginAccess();
            v49 = *(a2 + 128);

            v44 = sub_1AC47DB68(v48, v49);

            return v44 & 1;
          }

          sub_1AC4B3968(v39, v38, v41, v40, v42);
          sub_1AC4B3968(v53, *(&v53 + 1), v43, v50, 1);
          sub_1AC4B3968(v39, v38, v41, v40, v42);
          sub_1AC4B3968(v53, *(&v53 + 1), v43, v50, 1);
          sub_1AC4B3968(v39, v38, v41, v40, v42);

          sub_1AC4B39AC(v53, *(&v53 + 1), v43, v50, 1);
          sub_1AC4B39AC(v39, v38, v41, v40, v42);
          sub_1AC4513F8(v39, v38);
        }

        sub_1AC4B39AC(v39, v38, v41, v40, v42);
        sub_1AC4B39AC(v53, *(&v53 + 1), v43, v50, v52);
        goto LABEL_73;
      }

      sub_1AC485860(v30, v29, v31);
      sub_1AC485860(v34, v33, 0);
      sub_1AC485860(v30, v29, v31);
      sub_1AC485860(v34, v33, 0);
      sub_1AC485860(v30, v29, v31);

      sub_1AC485714(v34, v33, 0);
      sub_1AC485714(v30, v29, v31);
      *v57 = *v60;
      *&v57[14] = *&v60[14];
      sub_1AC4AEF78(v57);
    }

    else
    {
      sub_1AC485860(v30, v29, 0);
      if (!v35)
      {
        sub_1AC485860(v34, v33, 0);
        sub_1AC485714(v30, v29, 0);
        goto LABEL_66;
      }

      sub_1AC485860(v34, v33, v35);
    }

    sub_1AC485714(v30, v29, v31);
    sub_1AC485714(v34, v33, v35);
  }

LABEL_73:
  v44 = 0;
  return v44 & 1;
}

uint64_t sub_1AC4B62B0(uint64_t (*a1)(uint64_t, char *, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = OUTLINED_FUNCTION_232();
  OUTLINED_FUNCTION_109(v7, v8, v9, v10, v11, v12, v13, v14, v34, v37, v40[0], v41, v42, v43, v44, v45, v46, v47, v48, v49);
  v15 = a1(v5, v40, v3, v4, v6, v5);
  v23 = OUTLINED_FUNCTION_243(v15, v16, v17, v18, v19, v20, v21, v22, v35, v38, v40[0]);
  sub_1AC4937B8(v23, v24, v4);
  OUTLINED_FUNCTION_108(v25, v26, v27, v28, v29, v30, v31, v32, v36, v39, v40[0], v41, v42, v43, v44, v45, v46, v47, v48, v49);
  return sub_1AC51F4C8();
}

uint64_t sub_1AC4B63D4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, unint64_t, uint64_t))
{
  v6 = *v4;
  v7 = v4[1];
  v9 = v4[2];
  v8 = v4[3];
  v10 = sub_1AC51F468();
  OUTLINED_FUNCTION_109(v10, v11, v12, v13, v14, v15, v16, v17, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52);
  OUTLINED_FUNCTION_113_0();
  sub_1AC4B47A8(v18, v19, v20, v9, v8, a4);
  OUTLINED_FUNCTION_108(v21, v22, v23, v24, v25, v26, v27, v28, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53);
  return sub_1AC51F4C8();
}

uint64_t static Google_Protobuf_FieldOptions.CType._protobuf_nameMap.getter()
{
  if (qword_1EB557DD8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB5585C8);
}

uint64_t static Google_Protobuf_FieldOptions.JSType._protobuf_nameMap.getter()
{
  if (qword_1EB557DE0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB5585E8);
}

uint64_t static Google_Protobuf_FieldOptions.OptionRetention._protobuf_nameMap.getter()
{
  if (qword_1EB557DE8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB558608);
}

uint64_t static Google_Protobuf_FieldOptions.OptionTargetType._protobuf_nameMap.getter()
{
  if (qword_1EB557DF0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB558628);
}

uint64_t static Google_Protobuf_FieldOptions.EditionDefault._protobuf_nameMap.getter()
{
  if (qword_1EB557E00 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB558658);
}

void Google_Protobuf_FieldOptions.EditionDefault.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_326();
  OUTLINED_FUNCTION_21(v2, v3, v4);
  while (1)
  {
    v5 = OUTLINED_FUNCTION_98();
    v6 = v1(v5);
    if (v0 || (v7 & 1) != 0)
    {
      break;
    }

    if (v6 == 3)
    {
      v9 = OUTLINED_FUNCTION_7();
      sub_1AC4B6848(v9, v10, v11, v12);
    }

    else if (v6 == 2)
    {
      OUTLINED_FUNCTION_257();
      OUTLINED_FUNCTION_36_0();
      v8();
    }
  }

  OUTLINED_FUNCTION_327();
}

uint64_t sub_1AC4B6848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 392);
  v8 = sub_1AC4C667C();
  return v7(a2 + 16, &type metadata for Google_Protobuf_Edition, v8, a3, a4);
}

void sub_1AC4B68C8()
{
  OUTLINED_FUNCTION_49();
  if (*(v0 + 32))
  {
    v1 = *(v0 + 24);
    MEMORY[0x1AC5B48A0](2);
    OUTLINED_FUNCTION_35_1();
    sub_1AC51EEB8();
  }

  v2 = *(v0 + 16);
  if (v2 != 12)
  {
    MEMORY[0x1AC5B48A0](3);
    MEMORY[0x1AC5B48A0](qword_1AC526968[v2]);
  }

  OUTLINED_FUNCTION_259();
  switch(v5)
  {
    case 1:
      OUTLINED_FUNCTION_73();
      goto LABEL_10;
    case 2:
      v6 = *(v3 + 16);
      v7 = *(v3 + 24);
LABEL_10:
      if (v6 != v7)
      {
        goto LABEL_11;
      }

      return;
    case 3:
      return;
    default:
      if ((v4 & 0xFF000000000000) == 0)
      {
        return;
      }

LABEL_11:
      sub_1AC51EC58();
      return;
  }
}

void Google_Protobuf_FieldOptions.EditionDefault.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_15_0();
  v31 = *v1;
  v32 = *(v1 + 16);
  if (*(v1 + 32))
  {
    OUTLINED_FUNCTION_103();
    OUTLINED_FUNCTION_27();
    v3();
    v0 = v2;
  }

  if (!v0)
  {
    OUTLINED_FUNCTION_12_6();
    v8 = sub_1AC4B6A20(v4, v5, v6, v7);
    if (!v2)
    {
      OUTLINED_FUNCTION_74_1(v31, v8, v9, v10, v11, v12, v13, v14, v15, v25, v27, v16);
      v17 = OUTLINED_FUNCTION_28_2();
      OUTLINED_FUNCTION_218(v17, v18, v19, v20, v21, v22, v23, v24, v26, v28, v29, v30);
    }
  }
}

uint64_t sub_1AC4B6A20(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(result + 16) != 12)
  {
    v8 = *(result + 16);
    v6 = *(a4 + 128);
    v7 = sub_1AC4C667C();
    return v6(&v8, 3, &type metadata for Google_Protobuf_Edition, v7, a3, a4);
  }

  return result;
}

uint64_t static Google_Protobuf_FieldOptions.EditionDefault.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 16);
  v7 = a1[3];
  v8 = a1[4];
  v9 = *a2;
  v10 = a2[1];
  v11 = *(a2 + 16);
  v12 = a2[4];
  if (v6 == 12)
  {
    if (v11 != 12)
    {
      return 0;
    }
  }

  else if (v11 == 12 || qword_1AC526968[v6] != qword_1AC526968[v11])
  {
    return 0;
  }

  if (v8)
  {
    if (!v12)
    {
      return 0;
    }

    v13 = v7 == a2[3] && v8 == v12;
    if (!v13 && (sub_1AC51F3D8() & 1) == 0)
    {
      return 0;
    }

LABEL_13:
    v14 = OUTLINED_FUNCTION_44();
    sub_1AC4578F4(v14, v15);
    v16 = OUTLINED_FUNCTION_10_1();
    sub_1AC4578F4(v16, v17);
    OUTLINED_FUNCTION_44();
    OUTLINED_FUNCTION_125();
    v18 = MEMORY[0x1AC5B4070]();
    v19 = OUTLINED_FUNCTION_10_1();
    sub_1AC4513F8(v19, v20);
    v21 = OUTLINED_FUNCTION_44();
    sub_1AC4513F8(v21, v22);
    return v18 & 1;
  }

  if (!v12)
  {
    goto LABEL_13;
  }

  return 0;
}

uint64_t Google_Protobuf_FieldOptions.EditionDefault.hashValue.getter()
{
  OUTLINED_FUNCTION_276();
  v54 = *(v0 + 32);
  v2 = OUTLINED_FUNCTION_232();
  v10 = OUTLINED_FUNCTION_109(v2, v3, v4, v5, v6, v7, v8, v9, v27, v30, v33, v36, v38, v40, v42, v44, v46, v48, v50, v52);
  OUTLINED_FUNCTION_272(v10, v11, v12, v13, v14, v15, v16, v17, v28, v31, v34);
  sub_1AC4B68C8();
  if (v1)
  {
    v18 = MEMORY[0x1AC5B4BA0](v1);
  }

  OUTLINED_FUNCTION_108(v18, v19, v20, v21, v22, v23, v24, v25, v29, v32, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53);
  return sub_1AC51F4C8();
}

uint64_t sub_1AC4B6C3C()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  return sub_1AC51B3A4();
}

uint64_t sub_1AC4B6C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *v5;
  v8 = v5[1];
  v9 = *(v5 + 4);
  return sub_1AC48276C(a1, a2, a3, a4, a5);
}

uint64_t sub_1AC4B6CB8()
{
  v1 = v0[1];
  v5 = *v0;
  v6 = v1;
  v7 = *(v0 + 4);
  sub_1AC51F468();
  memcpy(__dst, __src, sizeof(__dst));
  sub_1AC4B68C8();
  memcpy(__src, __dst, sizeof(__src));
  return sub_1AC51F4C8();
}

void sub_1AC4B6D78(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  OUTLINED_FUNCTION_370();
  *a4 = v7;
  *a5 = v8;
}

uint64_t static Google_Protobuf_FieldOptions.FeatureSupport._protobuf_nameMap.getter()
{
  if (qword_1EB557E10 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB558688);
}

void Google_Protobuf_FieldOptions.FeatureSupport.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_326();
  OUTLINED_FUNCTION_21(v2, v3, v4);
  while (1)
  {
    v5 = OUTLINED_FUNCTION_98();
    v6 = v1(v5);
    if (v0 || (v7 & 1) != 0)
    {
      break;
    }

    switch(v6)
    {
      case 1:
        v8 = OUTLINED_FUNCTION_7();
        sub_1AC4B6848(v8, v9, v10, v11);
        break;
      case 2:
        v17 = OUTLINED_FUNCTION_7();
        sub_1AC4B6F50(v17, v18, v19, v20);
        break;
      case 3:
        OUTLINED_FUNCTION_257();
        OUTLINED_FUNCTION_36_0();
        v12();
        break;
      case 4:
        v13 = OUTLINED_FUNCTION_7();
        sub_1AC4B6FD0(v13, v14, v15, v16);
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_327();
}

uint64_t sub_1AC4B6F50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 392);
  v8 = sub_1AC4C667C();
  return v7(a2 + 17, &type metadata for Google_Protobuf_Edition, v8, a3, a4);
}

uint64_t sub_1AC4B6FD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 392);
  v8 = sub_1AC4C667C();
  return v7(a2 + 40, &type metadata for Google_Protobuf_Edition, v8, a3, a4);
}

void sub_1AC4B7050()
{
  OUTLINED_FUNCTION_49();
  v1 = *(v0 + 16);
  if (v1 != 12)
  {
    MEMORY[0x1AC5B48A0](1);
    MEMORY[0x1AC5B48A0](qword_1AC526968[v1]);
  }

  v2 = *(v0 + 17);
  if (v2 != 12)
  {
    MEMORY[0x1AC5B48A0](2);
    MEMORY[0x1AC5B48A0](qword_1AC526968[v2]);
  }

  if (*(v0 + 32))
  {
    v3 = *(v0 + 24);
    MEMORY[0x1AC5B48A0](3);
    OUTLINED_FUNCTION_35_1();
    sub_1AC51EEB8();
  }

  v4 = *(v0 + 40);
  if (v4 != 12)
  {
    MEMORY[0x1AC5B48A0](4);
    MEMORY[0x1AC5B48A0](qword_1AC526968[v4]);
  }

  OUTLINED_FUNCTION_259();
  switch(v7)
  {
    case 1:
      OUTLINED_FUNCTION_73();
      goto LABEL_14;
    case 2:
      v8 = *(v5 + 16);
      v9 = *(v5 + 24);
LABEL_14:
      if (v8 != v9)
      {
        goto LABEL_15;
      }

      return;
    case 3:
      return;
    default:
      if ((v6 & 0xFF000000000000) == 0)
      {
        return;
      }

LABEL_15:
      sub_1AC51EC58();
      return;
  }
}

uint64_t Google_Protobuf_FieldOptions.FeatureSupport.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_31_2();
  v39 = *v0;
  v40 = v0[1];
  v41 = *(v0 + 25);
  OUTLINED_FUNCTION_26_3();
  result = sub_1AC4B7210(v2, v3, v4, v5);
  if (!v1)
  {
    OUTLINED_FUNCTION_12_6();
    sub_1AC4B72A4(v7, v8, v9, v10);
    if (*(&v41 + 7))
    {
      OUTLINED_FUNCTION_103();
      OUTLINED_FUNCTION_27();
      v11();
    }

    OUTLINED_FUNCTION_12_6();
    v16 = sub_1AC4B7338(v12, v13, v14, v15);
    OUTLINED_FUNCTION_74_1(v39, v16, v17, v18, v19, v20, v21, v22, v23, v33, v35, v24);
    v25 = OUTLINED_FUNCTION_28_2();
    return OUTLINED_FUNCTION_218(v25, v26, v27, v28, v29, v30, v31, v32, v34, v36, v37, v38);
  }

  return result;
}

uint64_t sub_1AC4B7210(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(result + 16) != 12)
  {
    v8 = *(result + 16);
    v6 = *(a4 + 128);
    v7 = sub_1AC4C667C();
    return v6(&v8, 1, &type metadata for Google_Protobuf_Edition, v7, a3, a4);
  }

  return result;
}

uint64_t sub_1AC4B72A4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(result + 17) != 12)
  {
    v8 = *(result + 17);
    v6 = *(a4 + 128);
    v7 = sub_1AC4C667C();
    return v6(&v8, 2, &type metadata for Google_Protobuf_Edition, v7, a3, a4);
  }

  return result;
}

uint64_t sub_1AC4B7338(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(result + 40) != 12)
  {
    v8 = *(result + 40);
    v6 = *(a4 + 128);
    v7 = sub_1AC4C667C();
    return v6(&v8, 4, &type metadata for Google_Protobuf_Edition, v7, a3, a4);
  }

  return result;
}

void static Google_Protobuf_FieldOptions.FeatureSupport.== infix(_:_:)()
{
  OUTLINED_FUNCTION_392();
  v1 = v0;
  v3 = v2;
  v4 = *v2;
  v5 = v2[1];
  v6 = *(v2 + 16);
  v7 = *(v2 + 17);
  v8 = v2[3];
  v9 = v3[4];
  v10 = *(v3 + 40);
  v11 = *v1;
  v12 = v1[1];
  v13 = *(v1 + 16);
  v14 = *(v1 + 17);
  v15 = v1[4];
  v16 = *(v1 + 40);
  if (v6 == 12)
  {
    if (v13 != 12)
    {
      goto LABEL_26;
    }
  }

  else if (v13 == 12 || qword_1AC526968[v6] != qword_1AC526968[v13])
  {
    goto LABEL_26;
  }

  if (v7 == 12)
  {
    if (v14 != 12)
    {
      goto LABEL_26;
    }
  }

  else if (v14 == 12 || qword_1AC526968[v7] != qword_1AC526968[v14])
  {
    goto LABEL_26;
  }

  if (!v9)
  {
    if (v15)
    {
      goto LABEL_26;
    }

LABEL_20:
    if (v10 == 12)
    {
      if (v16 != 12)
      {
        goto LABEL_26;
      }
    }

    else if (v16 == 12 || qword_1AC526968[v10] != qword_1AC526968[v16])
    {
      goto LABEL_26;
    }

    v18 = OUTLINED_FUNCTION_44();
    sub_1AC4578F4(v18, v19);
    v20 = OUTLINED_FUNCTION_10_1();
    sub_1AC4578F4(v20, v21);
    OUTLINED_FUNCTION_44();
    OUTLINED_FUNCTION_125();
    MEMORY[0x1AC5B4070]();
    v22 = OUTLINED_FUNCTION_10_1();
    sub_1AC4513F8(v22, v23);
    v24 = OUTLINED_FUNCTION_44();
    sub_1AC4513F8(v24, v25);
    goto LABEL_26;
  }

  if (v15)
  {
    v17 = v8 == v1[3] && v9 == v15;
    if (v17 || (sub_1AC51F3D8() & 1) != 0)
    {
      goto LABEL_20;
    }
  }

LABEL_26:
  OUTLINED_FUNCTION_378();
}

uint64_t Google_Protobuf_FieldOptions.FeatureSupport.hashValue.getter()
{
  OUTLINED_FUNCTION_276();
  *(v2 + 25) = *(v0 + 25);
  v3 = OUTLINED_FUNCTION_232();
  v11 = OUTLINED_FUNCTION_109(v3, v4, v5, v6, v7, v8, v9, v10, v28, v31, v34, v37, v39, v41, v43, v45, v47, v49, v51, v53);
  OUTLINED_FUNCTION_272(v11, v12, v13, v14, v15, v16, v17, v18, v29, v32, v35);
  sub_1AC4B7050();
  if (v1)
  {
    v19 = MEMORY[0x1AC5B4BA0](v1);
  }

  OUTLINED_FUNCTION_108(v19, v20, v21, v22, v23, v24, v25, v26, v30, v33, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54);
  return sub_1AC51F4C8();
}

uint64_t sub_1AC4B75C0()
{
  v2 = *v0;
  *v3 = v0[1];
  *&v3[9] = *(v0 + 25);
  return sub_1AC51B3E4();
}

void *sub_1AC4B7600(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v10 = *v8;
  *v11 = v8[1];
  *&v11[9] = *(v8 + 25);
  return sub_1AC481BEC(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1AC4B763C()
{
  v1 = v0[1];
  v5 = *v0;
  v6[0] = v1;
  *(v6 + 9) = *(v0 + 25);
  sub_1AC51F468();
  memcpy(__dst, __src, sizeof(__dst));
  sub_1AC4B7050();
  memcpy(__src, __dst, sizeof(__src));
  return sub_1AC51F4C8();
}

uint64_t static Google_Protobuf_OneofOptions._protobuf_nameMap.getter()
{
  if (qword_1EB557E18 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB5586A8);
}

void Google_Protobuf_OneofOptions.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_326();
  OUTLINED_FUNCTION_21(v2, v3, v4);
  while (1)
  {
    v5 = OUTLINED_FUNCTION_98();
    v1(v5);
    if (v0 || (v6 & 1) != 0)
    {
      break;
    }

    OUTLINED_FUNCTION_331();
    if (v8)
    {
      v13 = OUTLINED_FUNCTION_7();
      sub_1AC4A89C4(v13, v14, v15, v16);
    }

    else if (v7 == 1)
    {
      v9 = OUTLINED_FUNCTION_7();
      sub_1AC4B7818(v9, v10, v11, v12);
    }

    else if ((v7 - 1000) <= 0x1FFFFC17)
    {
      v17 = OUTLINED_FUNCTION_37_1();
      sub_1AC4B7898(v17, v18, v19, v20, v21);
    }
  }

  OUTLINED_FUNCTION_327();
}

uint64_t sub_1AC4B7818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 408);
  v8 = sub_1AC4C1928();
  return v7(a2 + 32, &type metadata for Google_Protobuf_FeatureSet, v8, a3, a4);
}

uint64_t Google_Protobuf_OneofOptions.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_31_2();
  OUTLINED_FUNCTION_191();
  v37 = *(v0 + 46);
  OUTLINED_FUNCTION_26_3();
  result = sub_1AC4B79F8(v3, v4, v5, v6);
  if (!v1)
  {
    if (*(v34 + 16))
    {
      OUTLINED_FUNCTION_138();
      sub_1AC4BFBE8();
      OUTLINED_FUNCTION_28();
      v2();
    }

    OUTLINED_FUNCTION_53_2(v36, v25, v28, v31);
    OUTLINED_FUNCTION_154();
    OUTLINED_FUNCTION_27();
    v2();
    v8 = OUTLINED_FUNCTION_306();
    OUTLINED_FUNCTION_69_1(v35, v8, v9, v10, v11, v12, v13, v14, v15, v26, v29, v16);
    v17 = OUTLINED_FUNCTION_28_2();
    return OUTLINED_FUNCTION_218(v17, v18, v19, v20, v21, v22, v23, v24, v27, v30, v32, v33);
  }

  return result;
}

uint64_t sub_1AC4B79F8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 48);
  if (v4)
  {
    v9 = *(result + 32);
    v11 = *(result + 56);
    v12 = *(result + 60);
    v10 = v4;
    v7 = *(a4 + 136);
    v8 = sub_1AC4C1928();
    return v7(&v9, 1, &type metadata for Google_Protobuf_FeatureSet, v8, a3, a4);
  }

  return result;
}

uint64_t Google_Protobuf_OneofOptions.hashValue.getter()
{
  v1 = v0[1];
  v4 = *v0;
  v5 = v1;
  v6[0] = v0[2];
  *(v6 + 14) = *(v0 + 46);
  sub_1AC51F468();
  sub_1AC4825D4(v3);
  return sub_1AC51F4C8();
}

uint64_t sub_1AC4B7D64()
{
  v2 = *v0;
  v3 = v0[1];
  *v4 = v0[2];
  *&v4[14] = *(v0 + 46);
  return sub_1AC51B424();
}

void *sub_1AC4B7DAC(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  *v5 = v1[2];
  *&v5[14] = *(v1 + 46);
  return sub_1AC4825D4(a1);
}

uint64_t sub_1AC4B7DF0()
{
  v1 = v0[1];
  v4 = *v0;
  v5 = v1;
  v6[0] = v0[2];
  *(v6 + 14) = *(v0 + 46);
  sub_1AC51F468();
  sub_1AC4825D4(v3);
  return sub_1AC51F4C8();
}

uint64_t static Google_Protobuf_EnumOptions._protobuf_nameMap.getter()
{
  if (qword_1EB557E20 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB5586C8);
}

void Google_Protobuf_EnumOptions.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_13_4();
  OUTLINED_FUNCTION_153(v4, v5, v6);
  while (1)
  {
    v7 = OUTLINED_FUNCTION_98();
    v8 = v2(v7);
    if (v0 || (v9 & 1) != 0)
    {
      break;
    }

    switch(v8)
    {
      case 2:
        OUTLINED_FUNCTION_299();
        goto LABEL_13;
      case 3:
        v11 = *(v1 + 320);
        goto LABEL_13;
      case 4:
      case 5:
        goto LABEL_8;
      case 6:
        v10 = *(v1 + 320);
LABEL_13:
        OUTLINED_FUNCTION_36_0();
        v12();
        break;
      case 7:
        OUTLINED_FUNCTION_7();
        sub_1AC4BA02C();
        break;
      default:
        if (v8 == 999)
        {
          OUTLINED_FUNCTION_7();
          sub_1AC4BA08C();
        }

        else
        {
LABEL_8:
          if (v8 - 1000 <= v3)
          {
            OUTLINED_FUNCTION_37_1();
            sub_1AC4BA0EC();
          }
        }

        break;
    }
  }

  OUTLINED_FUNCTION_61();
}

void sub_1AC4B8010()
{
  OUTLINED_FUNCTION_149();
  if (!v2)
  {
    MEMORY[0x1AC5B48A0](2);
    sub_1AC51F488();
  }

  if (*(v0 + 33) != 2)
  {
    MEMORY[0x1AC5B48A0](3);
    sub_1AC51F488();
  }

  if (*(v0 + 34) != 2)
  {
    MEMORY[0x1AC5B48A0](6);
    sub_1AC51F488();
  }

  v3 = OUTLINED_FUNCTION_44();
  sub_1AC4BA38C(v3);
  if (!v1)
  {
    OUTLINED_FUNCTION_335();
    if (v4)
    {
      sub_1AC50D0A4();
    }

    v5 = *(v0 + 24);
    v6 = OUTLINED_FUNCTION_82_1();
    sub_1AC5175D4(v6, v7, v8, v9);
    OUTLINED_FUNCTION_390();
  }
}

uint64_t Google_Protobuf_EnumOptions.hashValue.getter()
{
  v1 = OUTLINED_FUNCTION_300();
  memcpy(v1, v2, 0x46uLL);
  v3 = OUTLINED_FUNCTION_250();
  v11 = OUTLINED_FUNCTION_130(v3, v4, v5, v6, v7, v8, v9, v10, v28, v31, v34, v36, v38, v40, v42, v44, v46, v48, v50);
  OUTLINED_FUNCTION_145(v11, v12, v13, v14, v15, v16, v17, v18, v29, v32);
  sub_1AC4B8010();
  if (v0)
  {
    v19 = MEMORY[0x1AC5B4BA0](v0);
  }

  OUTLINED_FUNCTION_132(v19, v20, v21, v22, v23, v24, v25, v26, v30, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51);
  return sub_1AC51F4C8();
}

uint64_t sub_1AC4B860C()
{
  memcpy(__dst, v0, sizeof(__dst));
  sub_1AC51F468();
  memcpy(v2, __src, sizeof(v2));
  sub_1AC4B8010();
  memcpy(__src, v2, sizeof(__src));
  return sub_1AC51F4C8();
}

uint64_t static Google_Protobuf_EnumValueOptions._protobuf_nameMap.getter()
{
  if (qword_1EB557E28 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB5586E8);
}

void Google_Protobuf_EnumValueOptions.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_21(v3, v4, v5);
  while (1)
  {
    v6 = OUTLINED_FUNCTION_98();
    v7 = v2(v6);
    if (v0 || (v8 & 1) != 0)
    {
      break;
    }

    switch(v7)
    {
      case 1:
        OUTLINED_FUNCTION_299();
        goto LABEL_11;
      case 2:
        v24 = OUTLINED_FUNCTION_7();
        sub_1AC4A8944(v24, v25, v26, v27);
        break;
      case 3:
        v18 = *(v1 + 320);
LABEL_11:
        OUTLINED_FUNCTION_36_0();
        v19();
        break;
      case 4:
        v20 = OUTLINED_FUNCTION_7();
        sub_1AC4B8850(v20, v21, v22, v23);
        break;
      default:
        if (v7 == 999)
        {
          v9 = OUTLINED_FUNCTION_7();
          sub_1AC4A89C4(v9, v10, v11, v12);
        }

        else if ((v7 - 1000) <= 0x1FFFFC17)
        {
          v13 = OUTLINED_FUNCTION_37_1();
          sub_1AC4B88D0(v13, v14, v15, v16, v17);
        }

        break;
    }
  }

  OUTLINED_FUNCTION_379();
}

uint64_t sub_1AC4B8850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 408);
  v8 = sub_1AC4C3560();
  return v7(a2 + 72, &type metadata for Google_Protobuf_FieldOptions.FeatureSupport, v8, a3, a4);
}

void sub_1AC4B8950()
{
  OUTLINED_FUNCTION_49();
  if (*(v2 + 32) != 2)
  {
    MEMORY[0x1AC5B48A0](1);
    sub_1AC51F488();
  }

  v3 = OUTLINED_FUNCTION_150();
  sub_1AC4B8B84(v3);
  if (!v1)
  {
    if (*(v2 + 70) != 2)
    {
      MEMORY[0x1AC5B48A0](3);
      sub_1AC51F488();
    }

    v4 = OUTLINED_FUNCTION_150();
    sub_1AC4B8CB8(v4, v5);
    if (*(*v2 + 16))
    {
      sub_1AC50D0A4();
    }

    v6 = *(v2 + 24);
    v7 = OUTLINED_FUNCTION_82_1();
    sub_1AC5175D4(v7, v8, v9, v10);
    sub_1AC4937B8(v0, *(v2 + 8), *(v2 + 16));
  }
}

void Google_Protobuf_EnumValueOptions.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_3_8();
  memcpy(v4, v5, 0x71uLL);
  OUTLINED_FUNCTION_359();
  if (!v15)
  {
    OUTLINED_FUNCTION_42_1(v14);
    OUTLINED_FUNCTION_10();
    v6 = v16();
    v0 = v1;
  }

  if (!v0)
  {
    v17 = OUTLINED_FUNCTION_2_5(v6, v7, v8, v9, v10, v11, v12, v13, v52, v53, v54, *(&v54 + 1), v55, v56);
    v21 = sub_1AC4B8C10(v17, v18, v19, v20);
    if (!v1)
    {
      if (v59 != 2)
      {
        OUTLINED_FUNCTION_42_1(v59);
        OUTLINED_FUNCTION_10();
        v21 = v29();
      }

      v30 = OUTLINED_FUNCTION_2_5(v21, v22, v23, v24, v25, v26, v27, v28, v52, v53, v54, *(&v54 + 1), v55, v56);
      v34 = sub_1AC4B8DB0(v30, v31, v32, v33);
      OUTLINED_FUNCTION_211(v34, v35, v36, v37, v38, v39, v40, v41, v52, v53, v54, *(&v54 + 1), v55, v56);
      if (v42)
      {
        OUTLINED_FUNCTION_138();
        sub_1AC4BFBE8();
        OUTLINED_FUNCTION_28();
        v3();
      }

      v61 = v58;
      *&v54 = v58;
      v43 = *(v2 + 432);
      sub_1AC4BFC3C(&v61, &v52);
      OUTLINED_FUNCTION_154();
      OUTLINED_FUNCTION_27();
      v43();
      OUTLINED_FUNCTION_306();
      v60 = v57;
      v54 = v57;
      sub_1AC4848F4(&v60, &v52);
      v44 = OUTLINED_FUNCTION_28_2();
      OUTLINED_FUNCTION_218(v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, *(&v54 + 1));
    }
  }
}

void *sub_1AC4B8B84(void *result)
{
  if (result[7])
  {
    OUTLINED_FUNCTION_146(result);
    v2 = MEMORY[0x1AC5B48A0](2);
    OUTLINED_FUNCTION_215(v2, v3, v4, v5, v6, v7, v8, v9, v23, v25);
    v10 = OUTLINED_FUNCTION_19();
    sub_1AC4578F4(v10, v11);

    OUTLINED_FUNCTION_94_1();
    if (v1)
    {
      MEMORY[0x1AC5B4BA0](v1);
    }

    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_239();
    v15 = sub_1AC485714(v12, v13, v14);
    return OUTLINED_FUNCTION_216(v15, v16, v17, v18, v19, v20, v21, v22, v24, v26);
  }

  return result;
}

uint64_t sub_1AC4B8C10(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 56);
  if (v4)
  {
    v9 = *(result + 40);
    v11 = *(result + 64);
    v12 = *(result + 68);
    v10 = v4;
    v7 = *(a4 + 136);
    v8 = sub_1AC4C1928();
    return v7(&v9, 2, &type metadata for Google_Protobuf_FeatureSet, v8, a3, a4);
  }

  return result;
}

void *sub_1AC4B8CB8(void *result, void *a2)
{
  v3 = result[13];
  if (v3 != 1)
  {
    v5 = result[10];
    v6 = result[11];
    v7 = result[12];
    v8 = *(result + 112);
    v14 = result[9];
    v15 = v5;
    v16 = v6;
    v17 = v7;
    v18 = v3;
    v19 = v8;
    MEMORY[0x1AC5B48A0](4);
    memcpy(__dst, a2, sizeof(__dst));
    v9 = OUTLINED_FUNCTION_93_0();
    sub_1AC4578F4(v9, v10);

    sub_1AC4B7050();
    if (v2)
    {
      MEMORY[0x1AC5B4BA0](v2);
    }

    v11 = OUTLINED_FUNCTION_93_0();
    sub_1AC4B39AC(v11, v12, v6, v7, v3);
    return memcpy(a2, __dst, 0x48uLL);
  }

  return result;
}

uint64_t sub_1AC4B8DB0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 104);
  if (v4 != 1)
  {
    v7 = *(result + 112);
    v8 = *(result + 88);
    v11[0] = *(result + 72);
    v11[1] = v8;
    v12 = v4;
    v13 = v7;
    v9 = *(a4 + 136);
    v10 = sub_1AC4C3560();
    return v9(v11, 4, &type metadata for Google_Protobuf_FieldOptions.FeatureSupport, v10, a3, a4);
  }

  return result;
}

uint64_t static Google_Protobuf_EnumValueOptions.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v8 = *(a1 + 40);
  v7 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = *(a1 + 68);
  v11 = *(a1 + 64);
  v142 = *(a1 + 70);
  v13 = *(a1 + 72);
  v12 = *(a1 + 80);
  v15 = *(a1 + 88);
  v14 = *(a1 + 96);
  v16 = *(a1 + 104);
  v17 = *(a1 + 112);
  v18 = *(a2 + 8);
  v138 = *a2;
  v20 = *(a2 + 16);
  v19 = *(a2 + 24);
  v21 = *(a2 + 32);
  v23 = *(a2 + 40);
  v22 = *(a2 + 48);
  v24 = *(a2 + 56);
  v25 = *(a2 + 68);
  v26 = *(a2 + 64);
  v27 = *(a2 + 70);
  v140 = *(a2 + 72);
  v139 = *(a2 + 88);
  v143 = *(a2 + 96);
  v141 = *(a2 + 104);
  v28 = *(a2 + 112);
  if (v6 == 2)
  {
    if (v21 != 2)
    {
      goto LABEL_14;
    }
  }

  else if (v21 == 2 || ((v6 ^ v21) & 1) != 0)
  {
    goto LABEL_14;
  }

  v130 = v3;
  v131 = *(a2 + 80);
  v136 = v12;
  v137 = v15;
  if (!v9)
  {
    v132 = v16;
    v134 = v13;
    v126 = *(a2 + 16);
    v127 = *(a2 + 8);
    v128 = v14;
    v124 = *(a2 + 24);
    v125 = v4;
    v129 = v17;
    v42 = OUTLINED_FUNCTION_355();
    sub_1AC485860(v42, v43, v44);
    if (!v24)
    {
      OUTLINED_FUNCTION_88_1();
      sub_1AC485860(v65, v66, v67);
      v68 = OUTLINED_FUNCTION_355();
      sub_1AC485714(v68, v69, v70);
      goto LABEL_17;
    }

    OUTLINED_FUNCTION_151();
    sub_1AC485860(v45, v46, v47);
LABEL_13:
    v57 = OUTLINED_FUNCTION_57_1();
    sub_1AC485714(v57, v58, v59);
    OUTLINED_FUNCTION_151();
    sub_1AC485714(v60, v61, v62);
    goto LABEL_14;
  }

  v151 = v8;
  v152 = v7;
  v153 = v9;
  LODWORD(v154) = v11;
  WORD2(v154) = (v11 | (v10 << 32)) >> 32;
  if (!v24)
  {
    OUTLINED_FUNCTION_343();
    v48 = OUTLINED_FUNCTION_57_1();
    sub_1AC485860(v48, v49, v50);
    OUTLINED_FUNCTION_88_1();
    sub_1AC485860(v51, v52, v53);
    v54 = OUTLINED_FUNCTION_57_1();
    sub_1AC485860(v54, v55, v56);
    sub_1AC4AEF78(v146);
    goto LABEL_13;
  }

  v132 = v16;
  v134 = v13;
  v128 = v14;
  v124 = v19;
  v125 = v4;
  v129 = v17;
  *v144 = v23;
  *&v144[8] = v22;
  *&v144[16] = v24;
  *&v144[28] = (v26 | (v25 << 32)) >> 32;
  *&v144[24] = v26;
  v29 = OUTLINED_FUNCTION_57_1();
  sub_1AC485860(v29, v30, v31);
  OUTLINED_FUNCTION_151();
  sub_1AC485860(v32, v33, v34);
  v35 = OUTLINED_FUNCTION_57_1();
  sub_1AC485860(v35, v36, v37);
  v38 = static Google_Protobuf_FeatureSet.== infix(_:_:)(&v151, v144);
  v145[0] = *v144;
  *(v145 + 14) = *&v144[14];
  sub_1AC4AEF78(v145);
  OUTLINED_FUNCTION_343();
  sub_1AC4AEF78(v146);
  v39 = OUTLINED_FUNCTION_57_1();
  sub_1AC485714(v39, v40, v41);
  if ((v38 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_17:
  if (v142 == 2)
  {
    v72 = v136;
    v71 = v137;
    v73 = v134;
    v74 = v143;
    if (v27 != 2)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v72 = v136;
    v71 = v137;
    v73 = v134;
    v74 = v143;
    if (v27 == 2 || ((v142 ^ v27) & 1) != 0)
    {
      goto LABEL_14;
    }
  }

  if (v132 != 1)
  {
    v151 = v73;
    v152 = v72;
    v76 = v128;
    v153 = v71;
    v154 = v128;
    v155 = v132;
    v156 = v129;
    v27 = v140;
    v9 = v141;
    if (v141 != 1)
    {
      v146[0] = v140;
      v146[1] = v131;
      v147 = v139;
      v148 = v143;
      v149 = v141;
      v150 = v28;
      OUTLINED_FUNCTION_36_0();
      v133 = v103;
      v135 = v102;
      sub_1AC4B3968(v102, v104, v105, v128, v103);
      sub_1AC4B3968(v140, v131, v139, v143, v141);
      OUTLINED_FUNCTION_36_0();
      sub_1AC4B3968(v106, v107, v108, v128, v133);
      static Google_Protobuf_FieldOptions.FeatureSupport.== infix(_:_:)();
      v110 = v109;
      sub_1AC4513F8(v140, v131);

      sub_1AC4513F8(v135, v72);

      OUTLINED_FUNCTION_36_0();
      sub_1AC4B39AC(v111, v112, v113, v128, v133);
      if ((v110 & 1) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_30;
    }

    OUTLINED_FUNCTION_36_0();
    v85 = v84;
    v75 = v86;
    sub_1AC4B3968(v84, v87, v88, v128, v86);
    OUTLINED_FUNCTION_341();
    v74 = v143;
    sub_1AC4B3968(v89, v90, v91, v143, 1);
    OUTLINED_FUNCTION_36_0();
    sub_1AC4B3968(v92, v93, v94, v128, v75);
    sub_1AC4513F8(v85, v72);

LABEL_28:
    OUTLINED_FUNCTION_36_0();
    sub_1AC4B39AC(v99, v100, v101, v76, v75);
    sub_1AC4B39AC(v140, v27, v9, v74, v141);
    goto LABEL_14;
  }

  v75 = 1;
  OUTLINED_FUNCTION_36_0();
  v76 = v128;
  sub_1AC4B3968(v77, v78, v79, v128, v80);
  if (v141 != 1)
  {
    OUTLINED_FUNCTION_341();
    sub_1AC4B3968(v95, v96, v97, v74, v98);
    goto LABEL_28;
  }

  sub_1AC4B3968(v140, v131, v139, v74, 1);
  OUTLINED_FUNCTION_36_0();
  sub_1AC4B39AC(v81, v82, v83, v128, 1);
LABEL_30:
  if (sub_1AC47DB68(v130, v138))
  {
    v114 = OUTLINED_FUNCTION_52();
    sub_1AC4578F4(v114, v115);
    v116 = OUTLINED_FUNCTION_18();
    sub_1AC4578F4(v116, v117);
    v118 = OUTLINED_FUNCTION_17_5();
    v119 = MEMORY[0x1AC5B4070](v118);
    v120 = OUTLINED_FUNCTION_18();
    sub_1AC4513F8(v120, v121);
    v122 = OUTLINED_FUNCTION_52();
    sub_1AC4513F8(v122, v123);
    if (v119)
    {
      v151 = v125;
      v146[0] = v124;

      v63 = static ExtensionFieldValueSet.== infix(_:_:)(&v151, v146);

      return v63 & 1;
    }
  }

LABEL_14:
  v63 = 0;
  return v63 & 1;
}

uint64_t Google_Protobuf_EnumValueOptions.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = OUTLINED_FUNCTION_301(a1, a2, a3, a4, a5, a6, a7, a8, v36, v40, v44, v47, v50, v53, v56, v59, v62, v65, v68, v71, v72, v73, v74, v75, v76, v77, v78, v79);
  memcpy(v9, v10, 0x71uLL);
  v11 = OUTLINED_FUNCTION_250();
  v19 = OUTLINED_FUNCTION_130(v11, v12, v13, v14, v15, v16, v17, v18, v37, v41, v45, v48, v51, v54, v57, v60, v63, v66, v69);
  OUTLINED_FUNCTION_144(v19, v20, v21, v22, v23, v24, v25, v26, v38, v42);
  sub_1AC4B8950();
  if (v8)
  {
    v27 = MEMORY[0x1AC5B4BA0](v8);
  }

  OUTLINED_FUNCTION_132(v27, v28, v29, v30, v31, v32, v33, v34, v39, v43, v46, v49, v52, v55, v58, v61, v64, v67, v70);
  return sub_1AC51F4C8();
}

uint64_t sub_1AC4B9490()
{
  memcpy(__dst, v0, sizeof(__dst));
  sub_1AC51F468();
  memcpy(v2, __src, sizeof(v2));
  sub_1AC4B8950();
  memcpy(__src, v2, sizeof(__src));
  return sub_1AC51F4C8();
}

uint64_t static Google_Protobuf_ServiceOptions._protobuf_nameMap.getter()
{
  if (qword_1EB557E30 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB558708);
}

void Google_Protobuf_ServiceOptions.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_21(v3, v4, v5);
  while (1)
  {
    v6 = OUTLINED_FUNCTION_98();
    v2(v6);
    if (v0 || (v7 & 1) != 0)
    {
      break;
    }

    OUTLINED_FUNCTION_331();
    if (v9)
    {
      v16 = OUTLINED_FUNCTION_7();
      sub_1AC4A89C4(v16, v17, v18, v19);
    }

    else if (v8 == 34)
    {
      v12 = OUTLINED_FUNCTION_7();
      sub_1AC4B7818(v12, v13, v14, v15);
    }

    else if (v8 == 33)
    {
      v10 = *(v1 + 320);
      OUTLINED_FUNCTION_36_0();
      v11();
    }

    else if ((v8 - 1000) <= 0x1FFFFC17)
    {
      v20 = OUTLINED_FUNCTION_37_1();
      sub_1AC4B9690(v20, v21, v22, v23, v24);
    }
  }

  OUTLINED_FUNCTION_379();
}

void sub_1AC4B9710()
{
  if (*(v0 + 62) != 2)
  {
    MEMORY[0x1AC5B48A0](33);
    sub_1AC51F488();
  }

  v2 = OUTLINED_FUNCTION_44();
  sub_1AC4B98A4(v2);
  if (!v1)
  {
    OUTLINED_FUNCTION_335();
    if (v3)
    {
      sub_1AC50D0A4();
    }

    v4 = *(v0 + 24);
    v5 = OUTLINED_FUNCTION_82_1();
    sub_1AC5175D4(v5, v6, v7, v8);
    OUTLINED_FUNCTION_390();
  }
}

void Google_Protobuf_ServiceOptions.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_15_0();
  v38 = *(v1 + 47);
  OUTLINED_FUNCTION_191();
  if (HIBYTE(v38) != 2)
  {
    OUTLINED_FUNCTION_42_1(SHIBYTE(v38));
    OUTLINED_FUNCTION_10();
    v4();
    v0 = v2;
  }

  if (!v0)
  {
    OUTLINED_FUNCTION_12_6();
    sub_1AC4B9940(v5, v6, v7, v8);
    if (!v2)
    {
      if (*(v35 + 16))
      {
        OUTLINED_FUNCTION_138();
        sub_1AC4BFBE8();
        OUTLINED_FUNCTION_28();
        v3();
      }

      OUTLINED_FUNCTION_53_2(v37, v26, v29, v32);
      OUTLINED_FUNCTION_154();
      OUTLINED_FUNCTION_27();
      v3();
      v9 = OUTLINED_FUNCTION_306();
      OUTLINED_FUNCTION_69_1(v36, v9, v10, v11, v12, v13, v14, v15, v16, v27, v30, v17);
      v18 = OUTLINED_FUNCTION_28_2();
      OUTLINED_FUNCTION_218(v18, v19, v20, v21, v22, v23, v24, v25, v28, v31, v33, v34);
    }
  }
}

void *sub_1AC4B98A4(void *result)
{
  if (result[6])
  {
    v2 = result[4];
    v3 = result[5];
    v4 = *(result + 14) | (*(result + 30) << 32);
    v5 = MEMORY[0x1AC5B48A0](34);
    OUTLINED_FUNCTION_215(v5, v6, v7, v8, v9, v10, v11, v12, v26, v28);
    v13 = OUTLINED_FUNCTION_19();
    sub_1AC4578F4(v13, v14);

    OUTLINED_FUNCTION_94_1();
    if (v1)
    {
      MEMORY[0x1AC5B4BA0](v1);
    }

    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_239();
    v18 = sub_1AC485714(v15, v16, v17);
    return OUTLINED_FUNCTION_216(v18, v19, v20, v21, v22, v23, v24, v25, v27, v29);
  }

  return result;
}

uint64_t sub_1AC4B9940(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 48);
  if (v4)
  {
    v9 = *(result + 32);
    v11 = *(result + 56);
    v12 = *(result + 60);
    v10 = v4;
    v7 = *(a4 + 136);
    v8 = sub_1AC4C1928();
    return v7(&v9, 34, &type metadata for Google_Protobuf_FeatureSet, v8, a3, a4);
  }

  return result;
}

uint64_t static Google_Protobuf_ServiceOptions.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56) | (*(a1 + 60) << 32);
  v9 = *(a1 + 62);
  v11 = *a2;
  v10 = *(a2 + 8);
  v13 = *(a2 + 16);
  v12 = *(a2 + 24);
  v15 = *(a2 + 32);
  v14 = *(a2 + 40);
  v16 = *(a2 + 48);
  v17 = *(a2 + 56) | (*(a2 + 60) << 32);
  v18 = *(a2 + 62);
  if (v7)
  {
    v80[0] = *(a1 + 32);
    v80[1] = v6;
    v80[2] = v7;
    v81 = v8;
    v82 = WORD2(v8);
    if (v16)
    {
      v75 = v9;
      v74 = v11;
      OUTLINED_FUNCTION_349();
      v76[0] = v15;
      v76[1] = v14;
      v76[2] = v16;
      v78 = WORD2(v17);
      v77 = v17;
      v19 = OUTLINED_FUNCTION_54_1();
      sub_1AC485860(v19, v20, v21);
      v22 = OUTLINED_FUNCTION_190();
      sub_1AC485860(v22, v23, v24);
      v25 = OUTLINED_FUNCTION_54_1();
      sub_1AC485860(v25, v26, v27);
      v28 = static Google_Protobuf_FeatureSet.== infix(_:_:)(v80, v76);
      OUTLINED_FUNCTION_282(v28);
      OUTLINED_FUNCTION_122();
      sub_1AC4AEF78(v79);
      v29 = OUTLINED_FUNCTION_54_1();
      sub_1AC485714(v29, v30, v31);
      if ((v17 & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_12;
    }

    OUTLINED_FUNCTION_122();
    v38 = OUTLINED_FUNCTION_54_1();
    sub_1AC485860(v38, v39, v40);
    OUTLINED_FUNCTION_88_1();
    sub_1AC485860(v41, v42, v43);
    v44 = OUTLINED_FUNCTION_54_1();
    sub_1AC485860(v44, v45, v46);
    sub_1AC4AEF78(v79);
LABEL_8:
    v47 = OUTLINED_FUNCTION_54_1();
    sub_1AC485714(v47, v48, v49);
    v50 = OUTLINED_FUNCTION_190();
    sub_1AC485714(v50, v51, v52);
    goto LABEL_9;
  }

  v75 = *(a1 + 62);
  v73 = *(a1 + 8);
  v74 = *a2;
  OUTLINED_FUNCTION_349();
  v32 = OUTLINED_FUNCTION_348();
  sub_1AC485860(v32, v33, v34);
  if (v16)
  {
    v35 = OUTLINED_FUNCTION_190();
    sub_1AC485860(v35, v36, v37);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_88_1();
  sub_1AC485860(v55, v56, v57);
  v58 = OUTLINED_FUNCTION_348();
  sub_1AC485714(v58, v59, v60);
LABEL_12:
  if (v75 == 2)
  {
    if (v18 != 2)
    {
      goto LABEL_9;
    }
  }

  else if (v18 == 2 || ((v75 ^ v18) & 1) != 0)
  {
    goto LABEL_9;
  }

  if (sub_1AC47DB68(v3, v74))
  {
    v61 = OUTLINED_FUNCTION_52();
    sub_1AC4578F4(v61, v62);
    v63 = OUTLINED_FUNCTION_18();
    sub_1AC4578F4(v63, v64);
    v65 = OUTLINED_FUNCTION_17_5();
    v66 = MEMORY[0x1AC5B4070](v65);
    v67 = OUTLINED_FUNCTION_18();
    sub_1AC4513F8(v67, v68);
    v69 = OUTLINED_FUNCTION_52();
    sub_1AC4513F8(v69, v70);
    if (v66)
    {
      v80[0] = v72;
      v79[0] = v71;

      v53 = static ExtensionFieldValueSet.== infix(_:_:)(v80, v79);

      return v53 & 1;
    }
  }

LABEL_9:
  v53 = 0;
  return v53 & 1;
}

uint64_t Google_Protobuf_ServiceOptions.hashValue.getter()
{
  OUTLINED_FUNCTION_148();
  *(v2 + 47) = *(v0 + 47);
  v3 = OUTLINED_FUNCTION_232();
  v11 = OUTLINED_FUNCTION_109(v3, v4, v5, v6, v7, v8, v9, v10, v28, v31, v34, v37, v39, v41, v43, v45, v47, v49, v51, v53);
  OUTLINED_FUNCTION_273(v11, v12, v13, v14, v15, v16, v17, v18, v29, v32, v35);
  sub_1AC4B9710();
  if (v1)
  {
    v19 = MEMORY[0x1AC5B4BA0](v1);
  }

  OUTLINED_FUNCTION_108(v19, v20, v21, v22, v23, v24, v25, v26, v30, v33, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54);
  return sub_1AC51F4C8();
}

uint64_t sub_1AC4B9CE4()
{
  v2 = *v0;
  v3 = v0[1];
  *v4 = v0[2];
  *&v4[15] = *(v0 + 47);
  return sub_1AC51B4C0();
}

void *sub_1AC4B9D2C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v10 = *v8;
  v11 = v8[1];
  *v12 = v8[2];
  *&v12[15] = *(v8 + 47);
  return sub_1AC482330(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1AC4B9D70()
{
  v1 = v0[1];
  v5 = *v0;
  v6 = v1;
  v7[0] = v0[2];
  *(v7 + 15) = *(v0 + 47);
  sub_1AC51F468();
  memcpy(__dst, __src, sizeof(__dst));
  sub_1AC4B9710();
  memcpy(__src, __dst, sizeof(__src));
  return sub_1AC51F4C8();
}

uint64_t static Google_Protobuf_MethodOptions._protobuf_nameMap.getter()
{
  if (qword_1EB557E38 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB558728);
}

void Google_Protobuf_MethodOptions.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_13_4();
  OUTLINED_FUNCTION_153(v3, v4, v5);
  while (1)
  {
    v6 = OUTLINED_FUNCTION_98();
    v1(v6);
    if (v0 || (v7 & 1) != 0)
    {
      break;
    }

    OUTLINED_FUNCTION_331();
    if (v9)
    {
      OUTLINED_FUNCTION_7();
      sub_1AC4BA08C();
    }

    else
    {
      switch(v8)
      {
        case '""':
          v11 = OUTLINED_FUNCTION_7();
          sub_1AC4B9FAC(v11, v12, v13, v14);
          break;
        case '#':
          OUTLINED_FUNCTION_7();
          sub_1AC4BA02C();
          break;
        case '!':
          OUTLINED_FUNCTION_299();
          OUTLINED_FUNCTION_36_0();
          v10();
          break;
        default:
          if (v8 - 1000 <= v2)
          {
            OUTLINED_FUNCTION_37_1();
            sub_1AC4BA0EC();
          }

          break;
      }
    }
  }

  OUTLINED_FUNCTION_61();
}

uint64_t sub_1AC4B9FAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 392);
  v8 = sub_1AC4C68C8();
  return v7(a2 + 33, &type metadata for Google_Protobuf_MethodOptions.IdempotencyLevel, v8, a3, a4);
}

void sub_1AC4BA02C()
{
  OUTLINED_FUNCTION_326();
  OUTLINED_FUNCTION_120();
  v1 = *(v0 + 408);
  sub_1AC4C1928();
  OUTLINED_FUNCTION_27();
  v1();
  OUTLINED_FUNCTION_327();
}

void sub_1AC4BA08C()
{
  OUTLINED_FUNCTION_326();
  OUTLINED_FUNCTION_120();
  v1 = *(v0 + 416);
  sub_1AC4BFBE8();
  OUTLINED_FUNCTION_27();
  v1();
  OUTLINED_FUNCTION_327();
}

void sub_1AC4BA0EC()
{
  OUTLINED_FUNCTION_326();
  OUTLINED_FUNCTION_224();
  v1();
  v2 = *(v0 + 464);
  OUTLINED_FUNCTION_260();
  v3();
  OUTLINED_FUNCTION_327();
}

void sub_1AC4BA144()
{
  OUTLINED_FUNCTION_149();
  if (!v2)
  {
    MEMORY[0x1AC5B48A0](33);
    sub_1AC51F488();
  }

  v3 = *(v0 + 33);
  if (v3 != 3)
  {
    MEMORY[0x1AC5B48A0](34);
    MEMORY[0x1AC5B48A0](v3);
  }

  v4 = OUTLINED_FUNCTION_44();
  sub_1AC4BA38C(v4);
  if (!v1)
  {
    OUTLINED_FUNCTION_335();
    if (v5)
    {
      sub_1AC50D0A4();
    }

    v6 = *(v0 + 24);
    v7 = OUTLINED_FUNCTION_82_1();
    sub_1AC5175D4(v7, v8, v9, v10);
    OUTLINED_FUNCTION_390();
  }
}

uint64_t sub_1AC4BA2DC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(result + 33) != 3)
  {
    v8 = *(result + 33);
    v6 = *(a4 + 128);
    v7 = sub_1AC4C68C8();
    return v6(&v8, 34, &type metadata for Google_Protobuf_MethodOptions.IdempotencyLevel, v7, a3, a4);
  }

  return result;
}

void *sub_1AC4BA38C(void *result)
{
  if (result[7])
  {
    OUTLINED_FUNCTION_146(result);
    v3 = MEMORY[0x1AC5B48A0](v2);
    OUTLINED_FUNCTION_215(v3, v4, v5, v6, v7, v8, v9, v10, v24, v26);
    v11 = OUTLINED_FUNCTION_19();
    sub_1AC4578F4(v11, v12);

    OUTLINED_FUNCTION_94_1();
    if (v1)
    {
      MEMORY[0x1AC5B4BA0](v1);
    }

    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_239();
    v16 = sub_1AC485714(v13, v14, v15);
    return OUTLINED_FUNCTION_216(v16, v17, v18, v19, v20, v21, v22, v23, v25, v27);
  }

  return result;
}

uint64_t sub_1AC4BA418(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(result + 56))
  {
    v9 = *(result + 40);
    v11 = *(result + 64);
    v12 = *(result + 68);
    v10 = *(result + 56);
    v4 = *(a4 + 136);
    sub_1AC4C1928();
    OUTLINED_FUNCTION_28();
    return v4(v5, v6, v7, v8);
  }

  return result;
}

uint64_t static Google_Protobuf_MethodOptions.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 33);
  v9 = *(a1 + 40);
  v8 = *(a1 + 48);
  v10 = *(a1 + 56);
  v11 = *(a1 + 68);
  v12 = *(a1 + 64);
  v13 = *a2;
  v14 = *(a2 + 8);
  v16 = *(a2 + 16);
  v15 = *(a2 + 24);
  v17 = *(a2 + 32);
  v18 = *(a2 + 33);
  v20 = *(a2 + 40);
  v19 = *(a2 + 48);
  v21 = *(a2 + 56);
  if (v6 == 2)
  {
    if (v17 != 2)
    {
      goto LABEL_26;
    }
  }

  else if (v17 == 2 || ((v6 ^ v17) & 1) != 0)
  {
    goto LABEL_26;
  }

  if (v7 == 3)
  {
    if (v18 != 3)
    {
      goto LABEL_26;
    }
  }

  else if (v18 == 3 || v7 != v18)
  {
    goto LABEL_26;
  }

  v23 = v12 | (v11 << 32);
  v73 = *(a2 + 64) | (*(a2 + 68) << 32);
  if (!v10)
  {
    v71 = *(a2 + 24);
    v72 = v5;
    v37 = OUTLINED_FUNCTION_12();
    sub_1AC485860(v37, v38, 0);
    if (!v21)
    {
      v56 = OUTLINED_FUNCTION_24();
      sub_1AC485860(v56, v57, 0);
      v58 = OUTLINED_FUNCTION_12();
      sub_1AC485714(v58, v59, 0);
      goto LABEL_23;
    }

    v39 = OUTLINED_FUNCTION_111_0();
    sub_1AC485860(v39, v40, v41);
LABEL_21:
    v50 = OUTLINED_FUNCTION_39_1();
    sub_1AC485714(v50, v51, v52);
    v53 = OUTLINED_FUNCTION_111_0();
    sub_1AC485714(v53, v54, v55);
LABEL_26:
    v69 = 0;
    return v69 & 1;
  }

  v78[0] = v9;
  v78[1] = v8;
  v78[2] = v10;
  v79 = v23;
  v80 = WORD2(v23);
  if (!v21)
  {
    OUTLINED_FUNCTION_122();
    v42 = OUTLINED_FUNCTION_39_1();
    sub_1AC485860(v42, v43, v44);
    v45 = OUTLINED_FUNCTION_24();
    sub_1AC485860(v45, v46, 0);
    v47 = OUTLINED_FUNCTION_39_1();
    sub_1AC485860(v47, v48, v49);
    sub_1AC4AEF78(v77);
    goto LABEL_21;
  }

  v71 = v15;
  v72 = v5;
  v74[0] = v20;
  v74[1] = v19;
  v74[2] = v21;
  v76 = WORD2(v73);
  v75 = v73;
  v24 = OUTLINED_FUNCTION_39_1();
  sub_1AC485860(v24, v25, v26);
  v27 = OUTLINED_FUNCTION_111_0();
  sub_1AC485860(v27, v28, v29);
  v30 = OUTLINED_FUNCTION_39_1();
  sub_1AC485860(v30, v31, v32);
  v33 = static Google_Protobuf_FeatureSet.== infix(_:_:)(v78, v74);
  OUTLINED_FUNCTION_282(v33);
  OUTLINED_FUNCTION_122();
  sub_1AC4AEF78(v77);
  v34 = OUTLINED_FUNCTION_39_1();
  sub_1AC485714(v34, v35, v36);
  if ((v19 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_23:
  if ((sub_1AC47DB68(v3, v13) & 1) == 0)
  {
    goto LABEL_26;
  }

  v60 = OUTLINED_FUNCTION_52();
  sub_1AC4578F4(v60, v61);
  v62 = OUTLINED_FUNCTION_93_0();
  sub_1AC4578F4(v62, v63);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_95();
  v64 = MEMORY[0x1AC5B4070]();
  v65 = OUTLINED_FUNCTION_93_0();
  sub_1AC4513F8(v65, v66);
  v67 = OUTLINED_FUNCTION_52();
  sub_1AC4513F8(v67, v68);
  if ((v64 & 1) == 0)
  {
    goto LABEL_26;
  }

  v78[0] = v72;
  v77[0] = v71;

  v69 = static ExtensionFieldValueSet.== infix(_:_:)(v78, v77);

  return v69 & 1;
}

uint64_t Google_Protobuf_MethodOptions.hashValue.getter()
{
  v1 = OUTLINED_FUNCTION_300();
  memcpy(v1, v2, 0x46uLL);
  v3 = OUTLINED_FUNCTION_250();
  v11 = OUTLINED_FUNCTION_130(v3, v4, v5, v6, v7, v8, v9, v10, v28, v31, v34, v36, v38, v40, v42, v44, v46, v48, v50);
  OUTLINED_FUNCTION_145(v11, v12, v13, v14, v15, v16, v17, v18, v29, v32);
  sub_1AC4BA144();
  if (v0)
  {
    v19 = MEMORY[0x1AC5B4BA0](v0);
  }

  OUTLINED_FUNCTION_132(v19, v20, v21, v22, v23, v24, v25, v26, v30, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51);
  return sub_1AC51F4C8();
}

uint64_t sub_1AC4BA8B0()
{
  memcpy(__dst, v0, sizeof(__dst));
  sub_1AC51F468();
  memcpy(v2, __src, sizeof(v2));
  sub_1AC4BA144();
  memcpy(__src, v2, sizeof(__src));
  return sub_1AC51F4C8();
}

uint64_t static Google_Protobuf_MethodOptions.IdempotencyLevel._protobuf_nameMap.getter()
{
  if (qword_1EB557E40 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB558748);
}

uint64_t static Google_Protobuf_UninterpretedOption._protobuf_nameMap.getter()
{
  if (qword_1EB557E48 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB558768);
}

uint64_t Google_Protobuf_UninterpretedOption.isInitialized.getter()
{
  v1 = sub_1AC4A33A4(*v0);
  static Internal.areAllInitialized(_:)(v1);
  OUTLINED_FUNCTION_234();
  return v0 & 1;
}

void Google_Protobuf_UninterpretedOption.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_21(a1, a2, a3);
  while (1)
  {
    v6 = OUTLINED_FUNCTION_98();
    v7 = v5(v6);
    if (v3 || (v8 & 1) != 0)
    {
      break;
    }

    switch(v7)
    {
      case 2:
        v9 = OUTLINED_FUNCTION_7();
        sub_1AC4BAC14(v9, v10, v11, v12);
        break;
      case 3:
        OUTLINED_FUNCTION_257();
        goto LABEL_12;
      case 4:
        v15 = v4[19];
        OUTLINED_FUNCTION_36_0();
        v16();
        break;
      case 5:
        v17 = v4[13];
        OUTLINED_FUNCTION_36_0();
        v18();
        break;
      case 6:
        v13 = v4[7];
        OUTLINED_FUNCTION_36_0();
        v14();
        break;
      case 7:
        v19 = v4[46];
        OUTLINED_FUNCTION_36_0();
        v20();
        break;
      case 8:
        v21 = v4[43];
LABEL_12:
        OUTLINED_FUNCTION_36_0();
        v22();
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_364();
}

uint64_t sub_1AC4BAC14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 416);
  v8 = sub_1AC4BFD94();
  return v7(a2, &type metadata for Google_Protobuf_UninterpretedOption.NamePart, v8, a3, a4);
}

void sub_1AC4BAC94()
{
  OUTLINED_FUNCTION_49();
  if (!*(*v1 + 16) || (sub_1AC50D4C4(), !v0))
  {
    if (*(v1 + 32))
    {
      v2 = *(v1 + 24);
      MEMORY[0x1AC5B48A0](3);
      OUTLINED_FUNCTION_35_1();
      sub_1AC51EEB8();
    }

    if ((*(v1 + 48) & 1) == 0)
    {
      v3 = *(v1 + 40);
      MEMORY[0x1AC5B48A0](4);
      MEMORY[0x1AC5B48D0](v3);
    }

    if ((*(v1 + 64) & 1) == 0)
    {
      v4 = *(v1 + 56);
      MEMORY[0x1AC5B48A0](5);
      MEMORY[0x1AC5B48D0](v4);
    }

    if ((*(v1 + 80) & 1) != 0 || (sub_1AC4DF9DC(*(v1 + 72)), !v0))
    {
      if (*(v1 + 96) >> 60 != 15)
      {
        v5 = *(v1 + 88);
        MEMORY[0x1AC5B48A0](7);
        v6 = OUTLINED_FUNCTION_12();
        sub_1AC4578F4(v6, v7);
        OUTLINED_FUNCTION_35_1();
        sub_1AC51EC58();
        v8 = OUTLINED_FUNCTION_12();
        sub_1AC45AC74(v8, v9);
      }

      if (*(v1 + 112))
      {
        v10 = *(v1 + 104);
        MEMORY[0x1AC5B48A0](8);
        OUTLINED_FUNCTION_35_1();
        sub_1AC51EEB8();
      }

      v11 = *(v1 + 8);
      v12 = *(v1 + 16);
      switch(v12 >> 62)
      {
        case 1uLL:
          OUTLINED_FUNCTION_73();
          goto LABEL_20;
        case 2uLL:
          v13 = *(v11 + 16);
          v14 = *(v11 + 24);
LABEL_20:
          if (v13 != v14)
          {
            goto LABEL_21;
          }

          return;
        case 3uLL:
          return;
        default:
          if ((v12 & 0xFF000000000000) == 0)
          {
            return;
          }

LABEL_21:
          sub_1AC51EC58();
          break;
      }
    }
  }
}

void Google_Protobuf_UninterpretedOption.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_3_8();
  v6 = memcpy(v4, v5, 0x78uLL);
  OUTLINED_FUNCTION_211(v6, v7, v8, v9, v10, v11, v12, v13, v52, v56, v60, v63, v66, v68);
  if (!v21 || (OUTLINED_FUNCTION_138(), sub_1AC4BFD94(), OUTLINED_FUNCTION_28(), v14 = v3(), (v0 = v1) == 0))
  {
    v22 = v71;
    if (v71)
    {
      OUTLINED_FUNCTION_103();
      OUTLINED_FUNCTION_27();
      v14 = v23();
      v0 = v1;
    }

    if (!v0)
    {
      if ((v72 & 1) != 0 || (v24 = v2[6], OUTLINED_FUNCTION_10(), v14 = v25(), !v1))
      {
        if ((v73 & 1) != 0 || (v26 = v2[4], OUTLINED_FUNCTION_10(), v14 = v27(), !v1))
        {
          if ((v74 & 1) != 0 || (v28 = v2[2], OUTLINED_FUNCTION_37(), OUTLINED_FUNCTION_36_0(), v14 = v29(), !v1))
          {
            v30 = OUTLINED_FUNCTION_2_5(v14, v22, v15, v16, v17, v18, v19, v20, v53, v57, v61, v64, v67, v69);
            v34 = sub_1AC4BAF94(v30, v31, v32, v33);
            if (!v1)
            {
              v42 = v75;
              if (v75)
              {
                OUTLINED_FUNCTION_103();
                OUTLINED_FUNCTION_27();
                v34 = v43();
              }

              OUTLINED_FUNCTION_69_1(v70, v34, v42, v35, v36, v37, v38, v39, v40, v54, v58, v41);
              v44 = OUTLINED_FUNCTION_28_2();
              OUTLINED_FUNCTION_218(v44, v45, v46, v47, v48, v49, v50, v51, v55, v59, v62, v65);
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1AC4BAF94(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 96);
  if (v4 >> 60 != 15)
  {
    v7 = *(result + 88);
    v8 = *(a4 + 120);
    sub_1AC4578F4(v7, v4);
    v8(v7, v4, 7, a3, a4);
    return sub_1AC45AC74(v7, v4);
  }

  return result;
}

uint64_t static Google_Protobuf_UninterpretedOption.== infix(_:_:)(uint64_t a1, double *a2)
{
  v2 = *(a1 + 24);
  v56 = *(a1 + 16);
  v57 = *(a1 + 8);
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(a1 + 48);
  v67 = *(a1 + 56);
  v6 = *(a1 + 72);
  v68 = *(a1 + 80);
  v69 = *(a1 + 64);
  v64 = *(a1 + 88);
  v65 = *(a1 + 96);
  v59 = *(a1 + 104);
  v7 = *a2;
  v55 = *(a2 + 1);
  v8 = *(a2 + 3);
  v54 = *(a2 + 2);
  v9 = *(a2 + 4);
  v10 = *(a2 + 5);
  v11 = *(a2 + 48);
  v12 = *(a2 + 7);
  v13 = *(a2 + 64);
  v14 = a2[9];
  v66 = *(a2 + 80);
  v61 = *(a1 + 112);
  v62 = *(a2 + 11);
  v63 = *(a2 + 12);
  v58 = *(a2 + 13);
  v60 = *(a2 + 14);
  v15 = OUTLINED_FUNCTION_263(*a1);
  if ((sub_1AC47BF2C(v15) & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if (!v9)
    {
      return 0;
    }

    if (v2 != v8 || v4 != v9)
    {
      OUTLINED_FUNCTION_121();
      if ((sub_1AC51F3D8() & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (v5)
  {
    if (!v11)
    {
      return 0;
    }
  }

  else
  {
    if (v3 == v10)
    {
      v17 = v11;
    }

    else
    {
      v17 = 1;
    }

    if (v17)
    {
      return 0;
    }
  }

  if (v69)
  {
    if (!v13)
    {
      return 0;
    }
  }

  else
  {
    if (v67 == v12)
    {
      v18 = v13;
    }

    else
    {
      v18 = 1;
    }

    if (v18)
    {
      return 0;
    }
  }

  if (v68)
  {
    if (!v66)
    {
      return 0;
    }
  }

  else
  {
    v19 = v66;
    if (v6 != v14)
    {
      v19 = 1;
    }

    if (v19)
    {
      return 0;
    }
  }

  if (v65 >> 60 == 15)
  {
    if (v63 >> 60 == 15)
    {
      v20 = OUTLINED_FUNCTION_76();
      sub_1AC4B39F0(v20, v21);
      sub_1AC4B39F0(v62, v63);
      v22 = OUTLINED_FUNCTION_76();
      sub_1AC45AC74(v22, v23);
      goto LABEL_38;
    }

LABEL_35:
    v24 = OUTLINED_FUNCTION_76();
    sub_1AC4B39F0(v24, v25);
    v26 = OUTLINED_FUNCTION_10_1();
    sub_1AC4B39F0(v26, v27);
    v28 = OUTLINED_FUNCTION_76();
    sub_1AC45AC74(v28, v29);
    v30 = OUTLINED_FUNCTION_10_1();
    sub_1AC45AC74(v30, v31);
    return 0;
  }

  if (v63 >> 60 == 15)
  {
    goto LABEL_35;
  }

  v33 = OUTLINED_FUNCTION_76();
  sub_1AC4B39F0(v33, v34);
  v35 = OUTLINED_FUNCTION_98();
  sub_1AC4B39F0(v35, v36);
  v37 = OUTLINED_FUNCTION_7();
  v38 = MEMORY[0x1AC5B4070](v37);
  v39 = OUTLINED_FUNCTION_98();
  sub_1AC45AC74(v39, v40);
  v41 = OUTLINED_FUNCTION_76();
  sub_1AC45AC74(v41, v42);
  if ((v38 & 1) == 0)
  {
    return 0;
  }

LABEL_38:
  if (!v61)
  {
    if (!v60)
    {
      goto LABEL_47;
    }

    return 0;
  }

  if (!v60)
  {
    return 0;
  }

  v43 = v59 == v58 && v61 == v60;
  if (!v43 && (sub_1AC51F3D8() & 1) == 0)
  {
    return 0;
  }

LABEL_47:
  v44 = OUTLINED_FUNCTION_52();
  sub_1AC4578F4(v44, v45);
  v46 = OUTLINED_FUNCTION_18();
  sub_1AC4578F4(v46, v47);
  v48 = OUTLINED_FUNCTION_17_5();
  v49 = MEMORY[0x1AC5B4070](v48);
  v50 = OUTLINED_FUNCTION_18();
  sub_1AC4513F8(v50, v51);
  v52 = OUTLINED_FUNCTION_52();
  sub_1AC4513F8(v52, v53);
  return v49 & 1;
}

uint64_t Google_Protobuf_UninterpretedOption.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = OUTLINED_FUNCTION_301(a1, a2, a3, a4, a5, a6, a7, a8, v36, v40, v44, v47, v50, v53, v56, v59, v62, v65, v68, v71, v72, v73, v74, v75, v76, v77, v78, v79);
  memcpy(v9, v10, 0x78uLL);
  v11 = OUTLINED_FUNCTION_250();
  v19 = OUTLINED_FUNCTION_130(v11, v12, v13, v14, v15, v16, v17, v18, v37, v41, v45, v48, v51, v54, v57, v60, v63, v66, v69);
  OUTLINED_FUNCTION_144(v19, v20, v21, v22, v23, v24, v25, v26, v38, v42);
  sub_1AC4BAC94();
  if (v8)
  {
    v27 = MEMORY[0x1AC5B4BA0](v8);
  }

  OUTLINED_FUNCTION_132(v27, v28, v29, v30, v31, v32, v33, v34, v39, v43, v46, v49, v52, v55, v58, v61, v64, v67, v70);
  return sub_1AC51F4C8();
}

uint64_t sub_1AC4BB42C()
{
  memcpy(__dst, v0, sizeof(__dst));
  sub_1AC51F468();
  memcpy(v2, __src, sizeof(v2));
  sub_1AC4BAC94();
  memcpy(__src, v2, sizeof(__src));
  return sub_1AC51F4C8();
}

uint64_t sub_1AC4BB4C0()
{
  result = MEMORY[0x1AC5B4340](0x726150656D614E2ELL, 0xE900000000000074);
  qword_1EB558788 = 0xD000000000000023;
  unk_1EB558790 = 0x80000001AC52E470;
  return result;
}

uint64_t static Google_Protobuf_UninterpretedOption.NamePart._protobuf_nameMap.getter()
{
  if (qword_1EB557E58 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB558798);
}

BOOL Google_Protobuf_UninterpretedOption.NamePart.isInitialized.getter()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 32) == 2;
  }

  else
  {
    v1 = 1;
  }

  return !v1;
}

void Google_Protobuf_UninterpretedOption.NamePart.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_21(v2, v3, v4);
  OUTLINED_FUNCTION_357();
  while (1)
  {
    v5 = OUTLINED_FUNCTION_98();
    v6 = v1(v5);
    if (v0 || (v7 & 1) != 0)
    {
      break;
    }

    if (v6 == 2)
    {
      OUTLINED_FUNCTION_299();
      OUTLINED_FUNCTION_36_0();
      v9();
    }

    else if (v6 == 1)
    {
      OUTLINED_FUNCTION_298();
      OUTLINED_FUNCTION_36_0();
      v8();
    }
  }

  OUTLINED_FUNCTION_379();
}

void sub_1AC4BB698()
{
  OUTLINED_FUNCTION_49();
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);
    MEMORY[0x1AC5B48A0](1);
    OUTLINED_FUNCTION_35_1();
    sub_1AC51EEB8();
  }

  if (*(v0 + 32) != 2)
  {
    MEMORY[0x1AC5B48A0](2);
    sub_1AC51F488();
  }

  OUTLINED_FUNCTION_259();
  switch(v4)
  {
    case 1:
      OUTLINED_FUNCTION_73();
      goto LABEL_10;
    case 2:
      v5 = *(v2 + 16);
      v6 = *(v2 + 24);
LABEL_10:
      if (v5 != v6)
      {
        goto LABEL_11;
      }

      return;
    case 3:
      return;
    default:
      if ((v3 & 0xFF000000000000) == 0)
      {
        return;
      }

LABEL_11:
      sub_1AC51EC58();
      return;
  }
}

void Google_Protobuf_UninterpretedOption.NamePart.traverse<A>(visitor:)()
{
  v3 = v1;
  OUTLINED_FUNCTION_31_2();
  v11 = *(v0 + 24);
  v12 = *(v0 + 32);
  if (v11)
  {
    v13 = *(v0 + 16);
    OUTLINED_FUNCTION_9_6();
    v4 = v14();
    v3 = v1;
  }

  if (!v3)
  {
    if (v12 == 2 || (v15 = *(v2 + 104), OUTLINED_FUNCTION_10(), v4 = v16(), !v1))
    {
      OUTLINED_FUNCTION_322(v4, v11, v5, v6, v7, v8, v9, v10, v25, v27, v29, v32);
      v17 = OUTLINED_FUNCTION_28_2();
      OUTLINED_FUNCTION_218(v17, v18, v19, v20, v21, v22, v23, v24, v26, v28, v30, v31);
    }
  }
}

uint64_t static Google_Protobuf_UninterpretedOption.NamePart.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = *a2;
  v8 = a2[1];
  v9 = a2[3];
  v10 = *(a2 + 32);
  if (v5)
  {
    if (!v9)
    {
      return 0;
    }

    v11 = a1[2] == a2[2] && v5 == v9;
    if (!v11 && (sub_1AC51F3D8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (v6 != 2)
  {
    if (v10 != 2 && ((v6 ^ v10) & 1) == 0)
    {
      goto LABEL_16;
    }

    return 0;
  }

  if (v10 != 2)
  {
    return 0;
  }

LABEL_16:
  v13 = OUTLINED_FUNCTION_44();
  sub_1AC4578F4(v13, v14);
  v15 = OUTLINED_FUNCTION_10_1();
  sub_1AC4578F4(v15, v16);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_125();
  v17 = MEMORY[0x1AC5B4070]();
  v18 = OUTLINED_FUNCTION_10_1();
  sub_1AC4513F8(v18, v19);
  v20 = OUTLINED_FUNCTION_44();
  sub_1AC4513F8(v20, v21);
  return v17 & 1;
}

uint64_t Google_Protobuf_UninterpretedOption.NamePart.hashValue.getter()
{
  OUTLINED_FUNCTION_276();
  v54 = *(v0 + 32);
  v2 = OUTLINED_FUNCTION_232();
  v10 = OUTLINED_FUNCTION_109(v2, v3, v4, v5, v6, v7, v8, v9, v27, v30, v33, v36, v38, v40, v42, v44, v46, v48, v50, v52);
  OUTLINED_FUNCTION_272(v10, v11, v12, v13, v14, v15, v16, v17, v28, v31, v34);
  sub_1AC4BB698();
  if (v1)
  {
    v18 = MEMORY[0x1AC5B4BA0](v1);
  }

  OUTLINED_FUNCTION_108(v18, v19, v20, v21, v22, v23, v24, v25, v29, v32, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53);
  return sub_1AC51F4C8();
}

uint64_t sub_1AC4BB980()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 32);
  return sub_1AC51B538();
}

uint64_t sub_1AC4BB9C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *v5;
  v8 = v5[1];
  v9 = *(v5 + 32);
  return sub_1AC481B2C(a1, a2, a3, a4, a5);
}

uint64_t sub_1AC4BB9FC()
{
  v1 = v0[1];
  v5 = *v0;
  v6 = v1;
  v7 = *(v0 + 32);
  sub_1AC51F468();
  memcpy(__dst, __src, sizeof(__dst));
  sub_1AC4BB698();
  memcpy(__src, __dst, sizeof(__src));
  return sub_1AC51F4C8();
}

uint64_t static Google_Protobuf_FeatureSet._protobuf_nameMap.getter()
{
  if (qword_1EB557E60 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB5587B8);
}

void Google_Protobuf_FeatureSet.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_326();
  OUTLINED_FUNCTION_21(v2, v3, v4);
  while (1)
  {
    v5 = OUTLINED_FUNCTION_98();
    v6 = v1(v5);
    if (v0 || (v7 & 1) != 0)
    {
      break;
    }

    switch(v6)
    {
      case 1:
        v8 = OUTLINED_FUNCTION_7();
        sub_1AC4BBC34(v8, v9, v10, v11);
        break;
      case 2:
        v24 = OUTLINED_FUNCTION_7();
        sub_1AC4BBCB4(v24, v25, v26, v27);
        break;
      case 3:
        v16 = OUTLINED_FUNCTION_7();
        sub_1AC4BBD34(v16, v17, v18, v19);
        break;
      case 4:
        v20 = OUTLINED_FUNCTION_7();
        sub_1AC4BBDB4(v20, v21, v22, v23);
        break;
      case 5:
        v12 = OUTLINED_FUNCTION_7();
        sub_1AC4BBE34(v12, v13, v14, v15);
        break;
      case 6:
        v28 = OUTLINED_FUNCTION_7();
        sub_1AC4BBEB4(v28, v29, v30, v31);
        break;
      default:
        if ((v6 - 1000) <= 0x2328)
        {
          v32 = OUTLINED_FUNCTION_37_1();
          sub_1AC4BBF34(v32, v33, v34, v35, v36);
        }

        break;
    }
  }

  OUTLINED_FUNCTION_327();
}

uint64_t sub_1AC4BBC34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 392);
  v8 = sub_1AC4C6874();
  return v7(a2 + 24, &type metadata for Google_Protobuf_FeatureSet.FieldPresence, v8, a3, a4);
}

uint64_t sub_1AC4BBCB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 392);
  v8 = sub_1AC4C6820();
  return v7(a2 + 25, &type metadata for Google_Protobuf_FeatureSet.EnumType, v8, a3, a4);
}

uint64_t sub_1AC4BBD34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 392);
  v8 = sub_1AC4C67CC();
  return v7(a2 + 26, &type metadata for Google_Protobuf_FeatureSet.RepeatedFieldEncoding, v8, a3, a4);
}

uint64_t sub_1AC4BBDB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 392);
  v8 = sub_1AC4C6778();
  return v7(a2 + 27, &type metadata for Google_Protobuf_FeatureSet.Utf8Validation, v8, a3, a4);
}

uint64_t sub_1AC4BBE34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 392);
  v8 = sub_1AC4C6724();
  return v7(a2 + 28, &type metadata for Google_Protobuf_FeatureSet.MessageEncoding, v8, a3, a4);
}

uint64_t sub_1AC4BBEB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 392);
  v8 = sub_1AC4C66D0();
  return v7(a2 + 29, &type metadata for Google_Protobuf_FeatureSet.JsonFormat, v8, a3, a4);
}

void sub_1AC4BBFB4()
{
  OUTLINED_FUNCTION_326();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = v1;
  if (v1 != 4)
  {
    MEMORY[0x1AC5B48A0](1);
    MEMORY[0x1AC5B48A0](v9);
  }

  if ((v2 & 0xFF00) != 0x300)
  {
    MEMORY[0x1AC5B48A0](2);
    MEMORY[0x1AC5B48A0](BYTE1(v2));
  }

  if ((v2 & 0xFF0000) != 0x30000)
  {
    MEMORY[0x1AC5B48A0](3);
    MEMORY[0x1AC5B48A0](BYTE2(v2));
  }

  if ((v2 & 0xFF000000) != 0x3000000)
  {
    MEMORY[0x1AC5B48A0](4);
    MEMORY[0x1AC5B48A0](qword_1AC526950[v2 >> 24]);
  }

  if ((v2 & 0xFF00000000) != 0x300000000)
  {
    MEMORY[0x1AC5B48A0](5);
    MEMORY[0x1AC5B48A0](BYTE4(v2));
  }

  if ((v2 & 0xFF0000000000) != 0x30000000000)
  {
    MEMORY[0x1AC5B48A0](6);
    MEMORY[0x1AC5B48A0](BYTE5(v2));
  }

  sub_1AC5175D4(v8, 1000, 10001, v4);
  if (!v0)
  {
    v10 = OUTLINED_FUNCTION_261();
    sub_1AC4937B8(v10, v11, v6);
  }

  OUTLINED_FUNCTION_327();
}

void Google_Protobuf_FeatureSet.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_31_2();
  v3 = *v0;
  v4 = *(v0 + 8);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24) | (*(v0 + 28) << 32) | (*(v0 + 29) << 40);
  v7 = OUTLINED_FUNCTION_19_3();
  sub_1AC4BC210(v7, v8, v9, v10, v11, v12, v13);
  if (!v1)
  {
    v14 = OUTLINED_FUNCTION_19_3();
    sub_1AC4BC2A4(v14, v15, v16, v17, v18, v19, v20);
    v21 = OUTLINED_FUNCTION_19_3();
    sub_1AC4BC33C(v21, v22, v23, v24, v25, v26, v27);
    v28 = OUTLINED_FUNCTION_19_3();
    sub_1AC4BC3D4(v28, v29, v30, v31, v32, v33, v34);
    v35 = OUTLINED_FUNCTION_19_3();
    sub_1AC4BC46C(v35, v36, v37, v38, v39, v40, v41);
    v42 = OUTLINED_FUNCTION_19_3();
    sub_1AC4BC504(v42, v43, v44, v45, v46, v47, v48);
    v49 = *(v2 + 432);

    OUTLINED_FUNCTION_27();
    v49(v50);

    v51 = OUTLINED_FUNCTION_93_0();
    sub_1AC4578F4(v51, v52);
    v53 = OUTLINED_FUNCTION_48_2();
    OUTLINED_FUNCTION_385(v53, v54, v55, v56, v57, v58, v59, v60, v3, v4);
  }

  OUTLINED_FUNCTION_364();
}

void sub_1AC4BC210(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a4 != 4)
  {
    v11 = a4;
    v9 = *(a7 + 128);
    v10 = sub_1AC4C6874();
    v9(&v11, 1, &type metadata for Google_Protobuf_FeatureSet.FieldPresence, v10, a6, a7);
  }
}

void sub_1AC4BC2A4(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (HIBYTE(a4) != 3)
  {
    v11 = HIBYTE(a4);
    v9 = *(a7 + 128);
    v10 = sub_1AC4C6820();
    v9(&v11, 2, &type metadata for Google_Protobuf_FeatureSet.EnumType, v10, a6, a7);
  }
}

void sub_1AC4BC33C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (BYTE2(a4) != 3)
  {
    v11 = BYTE2(a4);
    v9 = *(a7 + 128);
    v10 = sub_1AC4C67CC();
    v9(&v11, 3, &type metadata for Google_Protobuf_FeatureSet.RepeatedFieldEncoding, v10, a6, a7);
  }
}

void sub_1AC4BC3D4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (HIBYTE(a4) != 3)
  {
    v11 = HIBYTE(a4);
    v9 = *(a7 + 128);
    v10 = sub_1AC4C6778();
    v9(&v11, 4, &type metadata for Google_Protobuf_FeatureSet.Utf8Validation, v10, a6, a7);
  }
}

void sub_1AC4BC46C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (BYTE4(a4) != 3)
  {
    v11 = BYTE4(a4);
    v9 = *(a7 + 128);
    v10 = sub_1AC4C6724();
    v9(&v11, 5, &type metadata for Google_Protobuf_FeatureSet.MessageEncoding, v10, a6, a7);
  }
}

void sub_1AC4BC504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (BYTE5(a4) != 3)
  {
    v11 = BYTE5(a4);
    v9 = *(a7 + 128);
    v10 = sub_1AC4C66D0();
    v9(&v11, 6, &type metadata for Google_Protobuf_FeatureSet.JsonFormat, v10, a6, a7);
  }
}

uint64_t static Google_Protobuf_FeatureSet.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 24);
  v6 = *(a1 + 25);
  v7 = *(a1 + 26);
  v8 = *(a1 + 27);
  v9 = *(a1 + 28);
  v10 = *(a1 + 29);
  v11 = *a2;
  v12 = a2[1];
  v13 = a2[2];
  v14 = *(a2 + 24);
  v15 = *(a2 + 25);
  v16 = *(a2 + 26);
  v17 = *(a2 + 27);
  v18 = *(a2 + 28);
  v19 = *(a2 + 29);
  if (v5 == 4)
  {
    if (v14 != 4)
    {
      goto LABEL_44;
    }
  }

  else if (v5 != v14)
  {
    goto LABEL_44;
  }

  if (v6 == 3)
  {
    if (v15 != 3)
    {
      goto LABEL_44;
    }
  }

  else if (v15 == 3 || v6 != v15)
  {
    goto LABEL_44;
  }

  if (v7 == 3)
  {
    if (v16 != 3)
    {
      goto LABEL_44;
    }
  }

  else if (v16 == 3 || v7 != v16)
  {
    goto LABEL_44;
  }

  if (v8 == 3)
  {
    if (v17 != 3)
    {
      goto LABEL_44;
    }
  }

  else if (v17 == 3 || qword_1AC526950[v8] != qword_1AC526950[v17])
  {
    goto LABEL_44;
  }

  if (v9 == 3)
  {
    if (v18 != 3)
    {
      goto LABEL_44;
    }
  }

  else if (v18 == 3 || v9 != v18)
  {
    goto LABEL_44;
  }

  if (v10 == 3)
  {
    if (v19 != 3)
    {
      goto LABEL_44;
    }
  }

  else if (v19 == 3 || v10 != v19)
  {
    goto LABEL_44;
  }

  v24 = OUTLINED_FUNCTION_10_1();
  sub_1AC4578F4(v24, v25);
  v26 = OUTLINED_FUNCTION_19();
  sub_1AC4578F4(v26, v27);
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_351();
  v28 = MEMORY[0x1AC5B4070]();
  v29 = OUTLINED_FUNCTION_19();
  sub_1AC4513F8(v29, v30);
  v31 = OUTLINED_FUNCTION_10_1();
  sub_1AC4513F8(v31, v32);
  if ((v28 & 1) == 0)
  {
LABEL_44:
    v33 = 0;
    return v33 & 1;
  }

  v35 = v13;
  v36 = v4;

  v33 = static ExtensionFieldValueSet.== infix(_:_:)(&v36, &v35);

  return v33 & 1;
}

uint64_t Google_Protobuf_FeatureSet.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 6);
  v5 = *(v0 + 28);
  v6 = *(v0 + 29);
  v7 = OUTLINED_FUNCTION_232();
  v15 = OUTLINED_FUNCTION_109(v7, v8, v9, v10, v11, v12, v13, v14, v31, v34, v37, v40, v42, v44, v46, v48, v50, v52, v54, v56);
  OUTLINED_FUNCTION_243(v15, v16, v17, v18, v4 | (v5 << 32) | (v6 << 40), v19, v20, v21, v32, v35, v38);
  OUTLINED_FUNCTION_125();
  sub_1AC4BBFB4();
  OUTLINED_FUNCTION_108(v22, v23, v24, v25, v26, v27, v28, v29, v33, v36, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57);
  return sub_1AC51F4C8();
}

uint64_t sub_1AC4BC884()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 6);
  v5 = *(v0 + 28);
  v6 = *(v0 + 29);
  sub_1AC51F468();
  memcpy(__dst, __src, sizeof(__dst));
  sub_1AC4BBFB4();
  memcpy(__src, __dst, sizeof(__src));
  return sub_1AC51F4C8();
}

uint64_t static Google_Protobuf_FeatureSet.FieldPresence._protobuf_nameMap.getter()
{
  if (qword_1EB557E68 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB5587D8);
}

uint64_t static Google_Protobuf_FeatureSet.EnumType._protobuf_nameMap.getter()
{
  if (qword_1EB557E70 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB5587F8);
}

uint64_t static Google_Protobuf_FeatureSet.RepeatedFieldEncoding._protobuf_nameMap.getter()
{
  if (qword_1EB557E78 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB558818);
}

uint64_t static Google_Protobuf_FeatureSet.Utf8Validation._protobuf_nameMap.getter()
{
  if (qword_1EB557E80 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB558838);
}

uint64_t static Google_Protobuf_FeatureSet.MessageEncoding._protobuf_nameMap.getter()
{
  if (qword_1EB557E88 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB558858);
}

uint64_t static Google_Protobuf_FeatureSet.JsonFormat._protobuf_nameMap.getter()
{
  if (qword_1EB557E90 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB558878);
}

uint64_t static Google_Protobuf_FeatureSetDefaults._protobuf_nameMap.getter()
{
  if (qword_1EB557E98 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB558898);
}

uint64_t Google_Protobuf_FeatureSetDefaults.isInitialized.getter()
{
  v1 = sub_1AC4A3ABC(*v0);
  static Internal.areAllInitialized(_:)(v1);
  OUTLINED_FUNCTION_234();
  return v0 & 1;
}

uint64_t Google_Protobuf_FeatureSetDefaults.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_21(a1, a2, a3);
  while (1)
  {
    v5 = OUTLINED_FUNCTION_98();
    result = v4(v5);
    if (v3 || (v7 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 5:
        v16 = OUTLINED_FUNCTION_7();
        sub_1AC4BCF60(v16, v17, v18, v19);
        break;
      case 4:
        v12 = OUTLINED_FUNCTION_7();
        sub_1AC4BCEE0(v12, v13, v14, v15);
        break;
      case 1:
        v8 = OUTLINED_FUNCTION_7();
        sub_1AC4BCE60(v8, v9, v10, v11);
        break;
    }
  }

  return result;
}

uint64_t sub_1AC4BCE60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 416);
  v8 = sub_1AC4BFDE8();
  return v7(a2, &type metadata for Google_Protobuf_FeatureSetDefaults.FeatureSetEditionDefault, v8, a3, a4);
}

uint64_t sub_1AC4BCEE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 392);
  v8 = sub_1AC4C667C();
  return v7(a2 + 24, &type metadata for Google_Protobuf_Edition, v8, a3, a4);
}

uint64_t sub_1AC4BCF60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 392);
  v8 = sub_1AC4C667C();
  return v7(a2 + 25, &type metadata for Google_Protobuf_Edition, v8, a3, a4);
}

void sub_1AC4BCFE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  OUTLINED_FUNCTION_332(a1, a2);
  if (!v9 || (sub_1AC510320(), !v5))
  {
    if (a5 != 12)
    {
      MEMORY[0x1AC5B48A0](4);
      MEMORY[0x1AC5B48A0](qword_1AC526968[a5]);
    }

    if (HIBYTE(a5) != 12)
    {
      MEMORY[0x1AC5B48A0](5);
      MEMORY[0x1AC5B48A0](qword_1AC526968[SHIBYTE(a5)]);
    }

    switch(v6 >> 62)
    {
      case 1uLL:
        v10 = v7;
        v11 = v7 >> 32;
        goto LABEL_12;
      case 2uLL:
        v10 = *(v7 + 16);
        v11 = *(v7 + 24);
LABEL_12:
        if (v10 != v11)
        {
          goto LABEL_13;
        }

        return;
      case 3uLL:
        return;
      default:
        if ((v6 & 0xFF000000000000) == 0)
        {
          return;
        }

LABEL_13:
        OUTLINED_FUNCTION_36_0();
        sub_1AC51EC58();
        break;
    }
  }
}

void Google_Protobuf_FeatureSetDefaults.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_15_0();
  v6 = *v1;
  v5 = v1[1];
  v37 = v1[2];
  v7 = *(v1 + 24);
  v8 = *(v1 + 25);
  if (!*(*v1 + 16) || (v36 = v1[1], v9 = *(v3 + 280), v10 = sub_1AC4BFDE8(), v2 = v0, v9(v6, 1, &type metadata for Google_Protobuf_FeatureSetDefaults.FeatureSetEditionDefault, v10, v4, v3), !v0))
  {
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_44_1();
    sub_1AC4BD1D0(v11, v12, v13, v14, v15, v16, v17);
    if (!v2)
    {
      OUTLINED_FUNCTION_187();
      OUTLINED_FUNCTION_44_1();
      sub_1AC4BD264(v18, v19, v20, v21, v22, v23, v24);
      v25 = OUTLINED_FUNCTION_12_0();
      sub_1AC4578F4(v25, v26);
      v27 = OUTLINED_FUNCTION_28_2();
      OUTLINED_FUNCTION_218(v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v5, v37);
    }
  }

  OUTLINED_FUNCTION_284();
}

void sub_1AC4BD1D0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a4 != 12)
  {
    v11 = a4;
    v9 = *(a7 + 128);
    v10 = sub_1AC4C667C();
    v9(&v11, 4, &type metadata for Google_Protobuf_Edition, v10, a6, a7);
  }
}

void sub_1AC4BD264(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (HIBYTE(a4) != 12)
  {
    v11 = HIBYTE(a4);
    v9 = *(a7 + 128);
    v10 = sub_1AC4C667C();
    v9(&v11, 5, &type metadata for Google_Protobuf_Edition, v10, a6, a7);
  }
}

void static Google_Protobuf_FeatureSetDefaults.== infix(_:_:)()
{
  OUTLINED_FUNCTION_392();
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 25);
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[2];
  v9 = *(v5 + 24);
  v10 = *(v5 + 25);
  v11 = OUTLINED_FUNCTION_263(*v0);
  if (sub_1AC47D834(v11, v12))
  {
    if (v3 == 12)
    {
      if (v9 != 12)
      {
        goto LABEL_13;
      }
    }

    else if (v9 == 12 || qword_1AC526968[v3] != qword_1AC526968[v9])
    {
      goto LABEL_13;
    }

    if (v4 == 12)
    {
      if (v10 != 12)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    if (v10 != 12 && qword_1AC526968[v4] == qword_1AC526968[v10])
    {
LABEL_12:
      v13 = OUTLINED_FUNCTION_44();
      sub_1AC4578F4(v13, v14);
      v15 = OUTLINED_FUNCTION_10_1();
      sub_1AC4578F4(v15, v16);
      OUTLINED_FUNCTION_44();
      OUTLINED_FUNCTION_125();
      MEMORY[0x1AC5B4070]();
      v17 = OUTLINED_FUNCTION_10_1();
      sub_1AC4513F8(v17, v18);
      v19 = OUTLINED_FUNCTION_44();
      sub_1AC4513F8(v19, v20);
    }
  }

LABEL_13:
  OUTLINED_FUNCTION_378();
}

uint64_t Google_Protobuf_FeatureSetDefaults.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 12);
  v5 = OUTLINED_FUNCTION_232();
  v13 = OUTLINED_FUNCTION_109(v5, v6, v7, v8, v9, v10, v11, v12, v34, v37, v40, v43, v45, v47, v49, v51, v53, v55, v57, v59);
  OUTLINED_FUNCTION_243(v13, v14, v15, v16, v17, v18, v19, v20, v35, v38, v41);
  OUTLINED_FUNCTION_125();
  sub_1AC4BCFE0(v21, v22, v23, v24, v4);
  OUTLINED_FUNCTION_108(v25, v26, v27, v28, v29, v30, v31, v32, v36, v39, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60);
  return sub_1AC51F4C8();
}

uint64_t sub_1AC4BD4C0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 12);
  return sub_1AC51B594();
}

uint64_t sub_1AC4BD4E4()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  sub_1AC51F468();
  memcpy(__dst, __src, sizeof(__dst));
  sub_1AC4BCFE0(__dst, v1, v2, v3, v4);
  memcpy(__src, __dst, sizeof(__src));
  return sub_1AC51F4C8();
}

uint64_t sub_1AC4BD578()
{
  result = MEMORY[0x1AC5B4340](0xD000000000000019, 0x80000001AC52E960);
  qword_1EB5588B8 = 0xD000000000000022;
  unk_1EB5588C0 = 0x80000001AC52E4C0;
  return result;
}

uint64_t static Google_Protobuf_FeatureSetDefaults.FeatureSetEditionDefault._protobuf_nameMap.getter()
{
  if (qword_1EB557EA8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB5588C8);
}

uint64_t Google_Protobuf_FeatureSetDefaults.FeatureSetEditionDefault.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_21(a1, a2, a3);
  while (1)
  {
    v5 = OUTLINED_FUNCTION_98();
    result = v4(v5);
    if (v3 || (v7 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 5:
        v16 = OUTLINED_FUNCTION_7();
        sub_1AC4BD80C(v16, v17, v18, v19);
        break;
      case 4:
        v12 = OUTLINED_FUNCTION_7();
        sub_1AC4BD78C(v12, v13, v14, v15);
        break;
      case 3:
        v8 = OUTLINED_FUNCTION_7();
        sub_1AC4B6848(v8, v9, v10, v11);
        break;
    }
  }

  return result;
}

uint64_t sub_1AC4BD78C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 408);
  v8 = sub_1AC4C1928();
  return v7(a2 + 24, &type metadata for Google_Protobuf_FeatureSet, v8, a3, a4);
}

uint64_t sub_1AC4BD80C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 408);
  v8 = sub_1AC4C1928();
  return v7(a2 + 56, &type metadata for Google_Protobuf_FeatureSet, v8, a3, a4);
}

void sub_1AC4BD88C()
{
  OUTLINED_FUNCTION_49();
  v3 = *(v2 + 16);
  if (v3 != 12)
  {
    MEMORY[0x1AC5B48A0](3);
    MEMORY[0x1AC5B48A0](qword_1AC526968[v3]);
  }

  if (*(v2 + 40))
  {
    v4 = *(v2 + 24);
    v5 = *(v2 + 32);
    v6 = *(v2 + 48) | (*(v2 + 52) << 32);
    MEMORY[0x1AC5B48A0](4);
    memcpy(v25, v1, sizeof(v25));
    v7 = OUTLINED_FUNCTION_100();
    sub_1AC4578F4(v7, v8);

    OUTLINED_FUNCTION_175();
    sub_1AC4BBFB4();
    if (v0)
    {
      MEMORY[0x1AC5B4BA0](v0);
      v0 = 0;
    }

    OUTLINED_FUNCTION_100();
    OUTLINED_FUNCTION_297();
    sub_1AC485714(v9, v10, v11);
    memcpy(v1, v25, 0x48uLL);
  }

  if (*(v2 + 72))
  {
    v12 = *(v2 + 56);
    v13 = *(v2 + 64);
    v14 = *(v2 + 80) | (*(v2 + 84) << 32);
    MEMORY[0x1AC5B48A0](5);
    memcpy(__dst, v1, sizeof(__dst));
    v15 = OUTLINED_FUNCTION_100();
    sub_1AC4578F4(v15, v16);

    OUTLINED_FUNCTION_175();
    sub_1AC4BBFB4();
    if (v0)
    {
      MEMORY[0x1AC5B4BA0](v0);
    }

    OUTLINED_FUNCTION_100();
    OUTLINED_FUNCTION_297();
    sub_1AC485714(v17, v18, v19);
    memcpy(v1, __dst, 0x48uLL);
  }

  OUTLINED_FUNCTION_259();
  switch(v22)
  {
    case 1:
      OUTLINED_FUNCTION_73();
      goto LABEL_16;
    case 2:
      v23 = *(v20 + 16);
      v24 = *(v20 + 24);
LABEL_16:
      if (v23 != v24)
      {
        goto LABEL_17;
      }

      return;
    case 3:
      return;
    default:
      if ((v21 & 0xFF000000000000) == 0)
      {
        return;
      }

LABEL_17:
      sub_1AC51EC58();
      return;
  }
}

uint64_t Google_Protobuf_FeatureSetDefaults.FeatureSetEditionDefault.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_3_8();
  v3 = memcpy(v1, v2, 0x56uLL);
  v11 = OUTLINED_FUNCTION_2_5(v3, v4, v5, v6, v7, v8, v9, v10, v56, v61, v66, v70, v74, v77.n128_i8[0]);
  result = sub_1AC4B6A20(v11, v12, v13, v14);
  if (!v0)
  {
    v23 = OUTLINED_FUNCTION_2_5(result, v16, v17, v18, v19, v20, v21, v22, v57, v62, v67, v71, v75, v77.n128_i8[0]);
    v27 = sub_1AC4BDAD4(v23, v24, v25, v26);
    v35 = OUTLINED_FUNCTION_2_5(v27, v28, v29, v30, v31, v32, v33, v34, v58, v63, v68, v72, v76, v77.n128_i8[0]);
    v39 = sub_1AC4BDB7C(v35, v36, v37, v38);
    OUTLINED_FUNCTION_74_1(v77, v39, v40, v41, v42, v43, v44, v45, v46, v59, v64, v47);
    v48 = OUTLINED_FUNCTION_28_2();
    return OUTLINED_FUNCTION_218(v48, v49, v50, v51, v52, v53, v54, v55, v60, v65, v69, v73);
  }

  return result;
}

uint64_t sub_1AC4BDAD4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 40);
  if (v4)
  {
    v9 = *(result + 24);
    v11 = *(result + 48);
    v12 = *(result + 52);
    v10 = v4;
    v7 = *(a4 + 136);
    v8 = sub_1AC4C1928();
    return v7(&v9, 4, &type metadata for Google_Protobuf_FeatureSet, v8, a3, a4);
  }

  return result;
}

uint64_t sub_1AC4BDB7C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 72);
  if (v4)
  {
    v9 = *(result + 56);
    v11 = *(result + 80);
    v12 = *(result + 84);
    v10 = v4;
    v7 = *(a4 + 136);
    v8 = sub_1AC4C1928();
    return v7(&v9, 5, &type metadata for Google_Protobuf_FeatureSet, v8, a3, a4);
  }

  return result;
}

uint64_t static Google_Protobuf_FeatureSetDefaults.FeatureSetEditionDefault.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v6 = a1[3];
  v5 = a1[4];
  v7 = a1[5];
  v8 = *(a1 + 26);
  v9 = *(a1 + 12);
  v10 = a1[7];
  v11 = a1[8];
  v12 = a1[9];
  v13 = *(a1 + 42);
  v14 = *(a1 + 20);
  v15 = *a2;
  v16 = a2[1];
  v17 = *(a2 + 16);
  v19 = a2[3];
  v18 = a2[4];
  v20 = a2[5];
  v21 = *(a2 + 26);
  v22 = *(a2 + 12);
  v23 = *(a2 + 20);
  if (v4 == 12)
  {
    if (v17 != 12)
    {
      goto LABEL_24;
    }
  }

  else if (v17 == 12 || qword_1AC526968[v4] != qword_1AC526968[v17])
  {
    goto LABEL_24;
  }

  v107 = *(a2 + 42);
  v108 = v14;
  v109 = a2[9];
  v110 = a2[7];
  v111 = a2[8];
  v112 = v12;
  v113 = v10;
  v114 = v11;
  v24 = v9 | (v8 << 32);
  v25 = v22 | (v21 << 32);
  if (!v7)
  {
    v106 = v13;
    v104 = a2[1];
    v105 = *a2;
    v39 = OUTLINED_FUNCTION_76();
    sub_1AC485860(v39, v40, 0);
    if (!v20)
    {
      OUTLINED_FUNCTION_88_1();
      sub_1AC485860(v54, v55, v56);
      v57 = OUTLINED_FUNCTION_76();
      sub_1AC485714(v57, v58, 0);
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_121();
    OUTLINED_FUNCTION_258();
    sub_1AC485860(v41, v42, v43);
LABEL_13:
    v121 = v6;
    v122 = v5;
    v123 = v7;
    v124 = v24;
    v125 = WORD2(v24);
    v126 = v19;
    v127 = v18;
    v128 = v20;
    v129 = v25;
    v53 = HIDWORD(v25);
LABEL_23:
    v130 = v53;
    sub_1AC4575D8(&v121, &qword_1EB558A58, &qword_1AC520E68);
    goto LABEL_24;
  }

  v121 = v6;
  v122 = v5;
  v123 = v7;
  v124 = v9;
  v125 = (v9 | (v8 << 32)) >> 32;
  if (!v20)
  {
    OUTLINED_FUNCTION_118();
    v44 = OUTLINED_FUNCTION_72_1();
    sub_1AC485860(v44, v45, v46);
    OUTLINED_FUNCTION_88_1();
    sub_1AC485860(v47, v48, v49);
    v50 = OUTLINED_FUNCTION_72_1();
    sub_1AC485860(v50, v51, v52);
    sub_1AC4AEF78(v120);
    goto LABEL_13;
  }

  v106 = v13;
  v115 = v19;
  v116 = v18;
  v117 = v20;
  v119 = (v22 | (v21 << 32)) >> 32;
  v118 = v22;
  v26 = OUTLINED_FUNCTION_72_1();
  sub_1AC485860(v26, v27, v28);
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_258();
  sub_1AC485860(v29, v30, v31);
  v32 = OUTLINED_FUNCTION_72_1();
  sub_1AC485860(v32, v33, v34);
  v35 = static Google_Protobuf_FeatureSet.== infix(_:_:)(&v121, &v115);
  OUTLINED_FUNCTION_309();
  OUTLINED_FUNCTION_118();
  sub_1AC4AEF78(v120);
  v36 = OUTLINED_FUNCTION_72_1();
  sub_1AC485714(v36, v37, v38);
  if ((v35 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_15:
  v59 = v14 | (v106 << 32);
  if (!v112)
  {
    v61 = v113;
    v60 = v114;
    v77 = OUTLINED_FUNCTION_98();
    sub_1AC485860(v77, v78, 0);
    v63 = v110;
    v62 = v111;
    v64 = v109;
    if (!v109)
    {
      v91 = OUTLINED_FUNCTION_12_0();
      sub_1AC485860(v91, v92, 0);
      v93 = OUTLINED_FUNCTION_98();
      sub_1AC485714(v93, v94, 0);
LABEL_27:
      v95 = OUTLINED_FUNCTION_52();
      sub_1AC4578F4(v95, v96);
      v97 = OUTLINED_FUNCTION_18();
      sub_1AC4578F4(v97, v98);
      v99 = OUTLINED_FUNCTION_17_5();
      v89 = MEMORY[0x1AC5B4070](v99);
      v100 = OUTLINED_FUNCTION_18();
      sub_1AC4513F8(v100, v101);
      v102 = OUTLINED_FUNCTION_52();
      sub_1AC4513F8(v102, v103);
      return v89 & 1;
    }

    v79 = OUTLINED_FUNCTION_12_0();
    sub_1AC485860(v79, v80, v109);
    goto LABEL_22;
  }

  v61 = v113;
  v60 = v114;
  v121 = v113;
  v122 = v114;
  v123 = v112;
  v124 = v108;
  v125 = WORD2(v59);
  v63 = v110;
  v62 = v111;
  v64 = v109;
  if (!v109)
  {
    OUTLINED_FUNCTION_118();
    v81 = OUTLINED_FUNCTION_70_1();
    sub_1AC485860(v81, v82, v83);
    v84 = OUTLINED_FUNCTION_12_0();
    sub_1AC485860(v84, v85, 0);
    v86 = OUTLINED_FUNCTION_70_1();
    sub_1AC485860(v86, v87, v88);
    sub_1AC4AEF78(v120);
LABEL_22:
    v121 = v61;
    v122 = v60;
    v123 = v112;
    v124 = v108;
    v125 = WORD2(v59);
    v126 = v63;
    v127 = v62;
    v128 = v64;
    v129 = v23;
    v53 = (v23 | (v107 << 32)) >> 32;
    goto LABEL_23;
  }

  v115 = v110;
  v116 = v111;
  v117 = v109;
  v119 = (v23 | (v107 << 32)) >> 32;
  v118 = v23;
  v65 = OUTLINED_FUNCTION_70_1();
  sub_1AC485860(v65, v66, v67);
  v68 = OUTLINED_FUNCTION_12_0();
  sub_1AC485860(v68, v69, v109);
  v70 = OUTLINED_FUNCTION_70_1();
  sub_1AC485860(v70, v71, v72);
  v73 = static Google_Protobuf_FeatureSet.== infix(_:_:)(&v121, &v115);
  OUTLINED_FUNCTION_309();
  OUTLINED_FUNCTION_118();
  sub_1AC4AEF78(v120);
  v74 = OUTLINED_FUNCTION_70_1();
  sub_1AC485714(v74, v75, v76);
  if (v73)
  {
    goto LABEL_27;
  }

LABEL_24:
  v89 = 0;
  return v89 & 1;
}

uint64_t Google_Protobuf_FeatureSetDefaults.FeatureSetEditionDefault.hashValue.getter()
{
  memcpy(__dst, v0, sizeof(__dst));
  v1 = OUTLINED_FUNCTION_250();
  OUTLINED_FUNCTION_130(v1, v2, v3, v4, v5, v6, v7, v8, v18, v20, v22, v24, v26, v28, v30, v32, v34, v36, v38);
  sub_1AC4BD88C();
  OUTLINED_FUNCTION_132(v9, v10, v11, v12, v13, v14, v15, v16, v19, v21, v23, v25, v27, v29, v31, v33, v35, v37, v39);
  return sub_1AC51F4C8();
}

uint64_t sub_1AC4BE100()
{
  memcpy(__dst, v0, sizeof(__dst));
  sub_1AC51F468();
  memcpy(v2, __src, sizeof(v2));
  sub_1AC4BD88C();
  memcpy(__src, v2, sizeof(__src));
  return sub_1AC51F4C8();
}

uint64_t static Google_Protobuf_SourceCodeInfo._protobuf_nameMap.getter()
{
  if (qword_1EB557EB0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB5588E8);
}

void sub_1AC4BE260()
{
  OUTLINED_FUNCTION_377();
  v2 = v1;
  v4 = v3;
  v5 = *(v1 + 16);
  while (1)
  {
    v6 = v5(v4, v2);
    if (v0 || (v7 & 1) != 0)
    {
      break;
    }

    if (v6 == 1)
    {
      OUTLINED_FUNCTION_48();
      sub_1AC4BED70();
    }
  }

  OUTLINED_FUNCTION_379();
}

uint64_t sub_1AC4BE36C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = OUTLINED_FUNCTION_232();
  OUTLINED_FUNCTION_109(v4, v5, v6, v7, v8, v9, v10, v11, v23, v25, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45);
  OUTLINED_FUNCTION_113_0();
  sub_1AC4BEE0C(v12, v13);
  OUTLINED_FUNCTION_108(v14, v15, v16, v17, v18, v19, v20, v21, v24, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46);
  return sub_1AC51F4C8();
}

uint64_t sub_1AC4BE464()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = sub_1AC51F468();
  OUTLINED_FUNCTION_109(v4, v5, v6, v7, v8, v9, v10, v11, v23, v25, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45);
  OUTLINED_FUNCTION_113_0();
  sub_1AC4BEE0C(v12, v13);
  OUTLINED_FUNCTION_108(v14, v15, v16, v17, v18, v19, v20, v21, v24, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46);
  return sub_1AC51F4C8();
}

uint64_t sub_1AC4BE4DC()
{
  result = MEMORY[0x1AC5B4340](0x6F697461636F4C2ELL, 0xE90000000000006ELL);
  qword_1EB558908 = 0xD00000000000001ELL;
  unk_1EB558910 = 0x80000001AC52E4F0;
  return result;
}

uint64_t static Google_Protobuf_SourceCodeInfo.Location._protobuf_nameMap.getter()
{
  if (qword_1EB557EC0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB558918);
}

void Google_Protobuf_SourceCodeInfo.Location.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_21(v3, v4, v5);
  while (1)
  {
    v6 = OUTLINED_FUNCTION_98();
    v7 = v2(v6);
    if (v0 || (v8 & 1) != 0)
    {
      break;
    }

    switch(v7)
    {
      case 1:
        v9 = v1[11];
        goto LABEL_9;
      case 2:
        v14 = v1[11];
        goto LABEL_9;
      case 3:
        OUTLINED_FUNCTION_352();
        goto LABEL_9;
      case 4:
        v12 = v1[43];
LABEL_9:
        OUTLINED_FUNCTION_36_0();
        v13();
        break;
      case 6:
        v10 = v1[44];
        OUTLINED_FUNCTION_36_0();
        v11();
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_61();
}

void sub_1AC4BE6F8()
{
  OUTLINED_FUNCTION_49();
  if (*(*v0 + 16))
  {
    MEMORY[0x1AC5B48A0](1);
    v1 = OUTLINED_FUNCTION_48();
    sub_1AC51ACF0(v1);
  }

  if (*(v0[1] + 16))
  {
    MEMORY[0x1AC5B48A0](2);
    v2 = OUTLINED_FUNCTION_48();
    sub_1AC51ACF0(v2);
  }

  if (v0[6])
  {
    v3 = v0[5];
    MEMORY[0x1AC5B48A0](3);
    OUTLINED_FUNCTION_35_1();
    sub_1AC51EEB8();
  }

  if (v0[8])
  {
    v4 = v0[7];
    MEMORY[0x1AC5B48A0](4);
    OUTLINED_FUNCTION_35_1();
    sub_1AC51EEB8();
  }

  if (*(v0[2] + 16))
  {
    MEMORY[0x1AC5B48A0](6);
    v5 = OUTLINED_FUNCTION_48();
    sub_1AC51AAC4(v5, v6);
  }

  v7 = v0[3];
  v8 = v0[4];
  switch(v8 >> 62)
  {
    case 1uLL:
      OUTLINED_FUNCTION_73();
      goto LABEL_16;
    case 2uLL:
      v9 = *(v7 + 16);
      v10 = *(v7 + 24);
LABEL_16:
      if (v9 != v10)
      {
        goto LABEL_17;
      }

      return;
    case 3uLL:
      return;
    default:
      if ((v8 & 0xFF000000000000) == 0)
      {
        return;
      }

LABEL_17:
      sub_1AC51EC58();
      return;
  }
}

uint64_t Google_Protobuf_SourceCodeInfo.Location.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_296();
  result = *v1;
  v6 = v1[1];
  v22 = v1[2];
  v7 = v1[5];
  v8 = v1[6];
  v17 = v1[7];
  v18 = v1[8];
  if (!*(result + 16) || (v9 = *(v3 + 312), OUTLINED_FUNCTION_37(), OUTLINED_FUNCTION_356(), result = v10(), (v0 = v2) == 0))
  {
    if (!*(v6 + 16) || (v11 = *(v3 + 312), OUTLINED_FUNCTION_37(), OUTLINED_FUNCTION_356(), result = v12(), (v0 = v2) == 0))
    {
      if (v8)
      {
        OUTLINED_FUNCTION_103();
        OUTLINED_FUNCTION_37();
        OUTLINED_FUNCTION_279();
        result = v13();
        v0 = v2;
      }

      if (!v0)
      {
        if (!v18 || (OUTLINED_FUNCTION_103(), OUTLINED_FUNCTION_27(), result = v14(), !v2))
        {
          if (!*(v22 + 16) || (v15 = *(v3 + 256), OUTLINED_FUNCTION_10(), result = v16(), !v2))
          {
            v20 = *(v4 + 24);
            v21 = v20;
            sub_1AC4848F4(&v21, v19);
            OUTLINED_FUNCTION_48_2();
            return sub_1AC4513F8(v20, *(&v20 + 1));
          }
        }
      }
    }
  }

  return result;
}

void static Google_Protobuf_SourceCodeInfo.Location.== infix(_:_:)()
{
  OUTLINED_FUNCTION_366();
  v1 = v0[1];
  v33 = v0[2];
  v2 = v0[5];
  v30 = v0[4];
  v31 = v0[3];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[8];
  v7 = *v6;
  v8 = v6[1];
  v32 = v6[2];
  v29 = v6[3];
  v9 = v6[5];
  v28 = v6[4];
  v10 = v6[6];
  v11 = v6[7];
  v12 = v6[8];
  v13 = OUTLINED_FUNCTION_263(*v0);
  if ((sub_1AC47C690(v13, v14) & 1) == 0)
  {
    goto LABEL_23;
  }

  v15 = OUTLINED_FUNCTION_19();
  if ((sub_1AC47C690(v15, v16) & 1) == 0)
  {
    goto LABEL_23;
  }

  if (!v3)
  {
    if (v10)
    {
      goto LABEL_23;
    }

LABEL_12:
    if (v5)
    {
      if (!v12)
      {
        goto LABEL_23;
      }

      if (v4 != v11 || v5 != v12)
      {
        OUTLINED_FUNCTION_12_0();
        if ((sub_1AC51F3D8() & 1) == 0)
        {
          goto LABEL_23;
        }
      }
    }

    else if (v12)
    {
      goto LABEL_23;
    }

    if (sub_1AC47808C(v33, v32))
    {
      v19 = OUTLINED_FUNCTION_52();
      sub_1AC4578F4(v19, v20);
      v21 = OUTLINED_FUNCTION_18();
      sub_1AC4578F4(v21, v22);
      v23 = OUTLINED_FUNCTION_17_5();
      MEMORY[0x1AC5B4070](v23);
      v24 = OUTLINED_FUNCTION_18();
      sub_1AC4513F8(v24, v25);
      v26 = OUTLINED_FUNCTION_52();
      sub_1AC4513F8(v26, v27);
    }

    goto LABEL_23;
  }

  if (v10)
  {
    if (v2 == v9 && v3 == v10)
    {
      goto LABEL_12;
    }

    OUTLINED_FUNCTION_76();
    if (sub_1AC51F3D8())
    {
      goto LABEL_12;
    }
  }

LABEL_23:
  OUTLINED_FUNCTION_365();
}

uint64_t Google_Protobuf_SourceCodeInfo.Location.hashValue.getter()
{
  v1 = OUTLINED_FUNCTION_300();
  memcpy(v1, v2, 0x48uLL);
  v3 = OUTLINED_FUNCTION_250();
  v11 = OUTLINED_FUNCTION_130(v3, v4, v5, v6, v7, v8, v9, v10, v28, v31, v34, v36, v38, v40, v42, v44, v46, v48, v50);
  OUTLINED_FUNCTION_145(v11, v12, v13, v14, v15, v16, v17, v18, v29, v32);
  sub_1AC4BE6F8();
  if (v0)
  {
    v19 = MEMORY[0x1AC5B4BA0](v0);
  }

  OUTLINED_FUNCTION_132(v19, v20, v21, v22, v23, v24, v25, v26, v30, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51);
  return sub_1AC51F4C8();
}

uint64_t sub_1AC4BEC04()
{
  memcpy(__dst, v0, sizeof(__dst));
  sub_1AC51F468();
  memcpy(v2, __src, sizeof(v2));
  sub_1AC4BE6F8();
  memcpy(__src, v2, sizeof(__src));
  return sub_1AC51F4C8();
}

uint64_t static Google_Protobuf_GeneratedCodeInfo._protobuf_nameMap.getter()
{
  if (qword_1EB557EC8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB558938);
}

void sub_1AC4BED70()
{
  OUTLINED_FUNCTION_377();
  v1 = *(v0 + 416);
  v2();
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_278();
  v1();
  OUTLINED_FUNCTION_379();
}

void sub_1AC4BEE0C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_332(a1, a2);
  if (!v7 || (v6(v5, 1), !v2))
  {
    switch(v3 >> 62)
    {
      case 1uLL:
        v8 = v4;
        v9 = v4 >> 32;
        goto LABEL_8;
      case 2uLL:
        v8 = *(v4 + 16);
        v9 = *(v4 + 24);
LABEL_8:
        if (v8 != v9)
        {
          goto LABEL_9;
        }

        return;
      case 3uLL:
        return;
      default:
        if ((v3 & 0xFF000000000000) == 0)
        {
          return;
        }

LABEL_9:
        OUTLINED_FUNCTION_36_0();
        sub_1AC51EC58();
        break;
    }
  }
}

uint64_t sub_1AC4BEF90(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  v7 = OUTLINED_FUNCTION_263(*a1);
  if ((v8(v7) & 1) == 0)
  {
    return 0;
  }

  v9 = OUTLINED_FUNCTION_44();
  sub_1AC4578F4(v9, v10);
  v11 = OUTLINED_FUNCTION_10_1();
  sub_1AC4578F4(v11, v12);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_125();
  v13 = MEMORY[0x1AC5B4070]();
  v14 = OUTLINED_FUNCTION_10_1();
  sub_1AC4513F8(v14, v15);
  v16 = OUTLINED_FUNCTION_44();
  sub_1AC4513F8(v16, v17);
  return v13 & 1;
}

uint64_t sub_1AC4BF0BC()
{
  result = MEMORY[0x1AC5B4340](0x7461746F6E6E412ELL, 0xEB000000006E6F69);
  qword_1EB558958 = 0xD000000000000021;
  unk_1EB558960 = 0x80000001AC52E510;
  return result;
}

uint64_t sub_1AC4BF150(void *a1, uint64_t *a2, uint64_t *a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = *a2;
  v6 = *a3;

  return OUTLINED_FUNCTION_76();
}

uint64_t static Google_Protobuf_GeneratedCodeInfo.Annotation._protobuf_nameMap.getter()
{
  if (qword_1EB557ED8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB558968);
}

void Google_Protobuf_GeneratedCodeInfo.Annotation.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_21(v3, v4, v5);
  while (1)
  {
    v6 = OUTLINED_FUNCTION_98();
    v7 = v2(v6);
    if (v0 || (v8 & 1) != 0)
    {
      break;
    }

    switch(v7)
    {
      case 1:
        v9 = *(v1 + 88);
        OUTLINED_FUNCTION_36_0();
        v10();
        break;
      case 2:
        OUTLINED_FUNCTION_257();
        OUTLINED_FUNCTION_36_0();
        v18();
        break;
      case 3:
        v15 = *(v1 + 80);
        goto LABEL_9;
      case 4:
        v16 = *(v1 + 80);
LABEL_9:
        OUTLINED_FUNCTION_36_0();
        v17();
        break;
      case 5:
        v11 = OUTLINED_FUNCTION_7();
        sub_1AC4BF330(v11, v12, v13, v14);
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_61();
}

uint64_t sub_1AC4BF330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 392);
  v8 = sub_1AC4C6628();
  return v7(a2 + 53, &type metadata for Google_Protobuf_GeneratedCodeInfo.Annotation.Semantic, v8, a3, a4);
}

void sub_1AC4BF3B0()
{
  OUTLINED_FUNCTION_49();
  if (*(*v0 + 16))
  {
    MEMORY[0x1AC5B48A0](1);
    v1 = OUTLINED_FUNCTION_48();
    sub_1AC51ACF0(v1);
  }

  if (*(v0 + 32))
  {
    v2 = *(v0 + 24);
    MEMORY[0x1AC5B48A0](2);
    OUTLINED_FUNCTION_35_1();
    sub_1AC51EEB8();
  }

  if ((*(v0 + 44) & 1) == 0)
  {
    v3 = *(v0 + 40);
    MEMORY[0x1AC5B48A0](3);
    MEMORY[0x1AC5B48D0](v3);
  }

  if ((*(v0 + 52) & 1) == 0)
  {
    v4 = *(v0 + 48);
    MEMORY[0x1AC5B48A0](4);
    MEMORY[0x1AC5B48D0](v4);
  }

  v5 = *(v0 + 53);
  if (v5 != 3)
  {
    MEMORY[0x1AC5B48A0](5);
    MEMORY[0x1AC5B48A0](v5);
  }

  v6 = *(v0 + 8);
  v7 = *(v0 + 16);
  switch(v7 >> 62)
  {
    case 1uLL:
      OUTLINED_FUNCTION_73();
      goto LABEL_16;
    case 2uLL:
      v8 = *(v6 + 16);
      v9 = *(v6 + 24);
LABEL_16:
      if (v8 != v9)
      {
        goto LABEL_17;
      }

      return;
    case 3uLL:
      return;
    default:
      if ((v7 & 0xFF000000000000) == 0)
      {
        return;
      }

LABEL_17:
      sub_1AC51EC58();
      return;
  }
}

uint64_t Google_Protobuf_GeneratedCodeInfo.Annotation.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_191();
  v40 = *(v1 + 46);
  result = v36;
  if (!*(v36 + 16) || (v5 = *(v3 + 312), OUTLINED_FUNCTION_10(), result = v6(), (v0 = v2) == 0))
  {
    if (v38)
    {
      OUTLINED_FUNCTION_103();
      OUTLINED_FUNCTION_27();
      result = v7();
      v0 = v2;
    }

    if (!v0)
    {
      if ((v39 & 1) != 0 || (OUTLINED_FUNCTION_171(), OUTLINED_FUNCTION_10(), result = v8(), !v2))
      {
        if ((v40 & 0x1000000000000) != 0 || (OUTLINED_FUNCTION_171(), OUTLINED_FUNCTION_10(), result = v9(), !v2))
        {
          OUTLINED_FUNCTION_12_6();
          result = sub_1AC4BF5E4(v10, v11, v12, v13);
          if (!v2)
          {
            OUTLINED_FUNCTION_74_1(v37, result, v14, v15, v16, v17, v18, v19, v20, v30, v32, v21);
            v22 = OUTLINED_FUNCTION_28_2();
            return OUTLINED_FUNCTION_218(v22, v23, v24, v25, v26, v27, v28, v29, v31, v33, v34, v35);
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1AC4BF5E4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(result + 53) != 3)
  {
    v8 = *(result + 53);
    v6 = *(a4 + 128);
    v7 = sub_1AC4C6628();
    return v6(&v8, 5, &type metadata for Google_Protobuf_GeneratedCodeInfo.Annotation.Semantic, v7, a3, a4);
  }

  return result;
}

void static Google_Protobuf_GeneratedCodeInfo.Annotation.== infix(_:_:)()
{
  OUTLINED_FUNCTION_366();
  v1 = *(v0 + 24);
  v29 = *(v0 + 16);
  v30 = *(v0 + 8);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 44);
  v33 = *(v0 + 53);
  v34[0] = *(v0 + 52);
  v6 = *v5;
  v28 = v5[1];
  v7 = v5[3];
  v27 = v5[2];
  v8 = v5[4];
  v9 = *(v5 + 10);
  v10 = *(v5 + 44);
  v11 = *(v5 + 12);
  v12 = *(v5 + 52);
  v31 = *(v0 + 48);
  v32 = *(v5 + 53);
  v13 = OUTLINED_FUNCTION_263(*v0);
  if ((sub_1AC47C690(v13, v14) & 1) == 0)
  {
    goto LABEL_32;
  }

  if (!v2)
  {
    if (v8)
    {
      goto LABEL_32;
    }

LABEL_11:
    if (v4)
    {
      if (!v10)
      {
        goto LABEL_32;
      }
    }

    else
    {
      if (v3 == v9)
      {
        v16 = v10;
      }

      else
      {
        v16 = 1;
      }

      if (v16)
      {
        goto LABEL_32;
      }
    }

    if (v34[0])
    {
      if (!v12)
      {
        goto LABEL_32;
      }
    }

    else
    {
      if (v31 == v11)
      {
        v17 = v12;
      }

      else
      {
        v17 = 1;
      }

      if (v17)
      {
        goto LABEL_32;
      }
    }

    if (v33 == 3)
    {
      if (v32 != 3)
      {
        goto LABEL_32;
      }
    }

    else if (v32 == 3 || v33 != v32)
    {
      goto LABEL_32;
    }

    v18 = OUTLINED_FUNCTION_44();
    sub_1AC4578F4(v18, v19);
    v20 = OUTLINED_FUNCTION_10_1();
    sub_1AC4578F4(v20, v21);
    OUTLINED_FUNCTION_44();
    OUTLINED_FUNCTION_125();
    MEMORY[0x1AC5B4070]();
    v22 = OUTLINED_FUNCTION_10_1();
    sub_1AC4513F8(v22, v23);
    v24 = OUTLINED_FUNCTION_44();
    sub_1AC4513F8(v24, v25);
    goto LABEL_32;
  }

  if (v8)
  {
    if (v1 == v7 && v2 == v8)
    {
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_12();
    if (sub_1AC51F3D8())
    {
      goto LABEL_11;
    }
  }

LABEL_32:
  OUTLINED_FUNCTION_365();
}

uint64_t Google_Protobuf_GeneratedCodeInfo.Annotation.hashValue.getter()
{
  OUTLINED_FUNCTION_148();
  *(v2 + 46) = *(v0 + 46);
  v3 = OUTLINED_FUNCTION_232();
  v11 = OUTLINED_FUNCTION_109(v3, v4, v5, v6, v7, v8, v9, v10, v28, v31, v34, v37, v39, v41, v43, v45, v47, v49, v51, v53);
  OUTLINED_FUNCTION_273(v11, v12, v13, v14, v15, v16, v17, v18, v29, v32, v35);
  sub_1AC4BF3B0();
  if (v1)
  {
    v19 = MEMORY[0x1AC5B4BA0](v1);
  }

  OUTLINED_FUNCTION_108(v19, v20, v21, v22, v23, v24, v25, v26, v30, v33, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54);
  return sub_1AC51F4C8();
}

uint64_t sub_1AC4BF880()
{
  v2 = *v0;
  v3 = v0[1];
  *v4 = v0[2];
  *&v4[14] = *(v0 + 46);
  return sub_1AC51B68C();
}

void *sub_1AC4BF8C8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v10 = *v8;
  v11 = v8[1];
  *v12 = v8[2];
  *&v12[14] = *(v8 + 46);
  return sub_1AC482D3C(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1AC4BF90C()
{
  v1 = v0[1];
  v5 = *v0;
  v6 = v1;
  v7[0] = v0[2];
  *(v7 + 14) = *(v0 + 46);
  sub_1AC51F468();
  memcpy(__dst, __src, sizeof(__dst));
  sub_1AC4BF3B0();
  memcpy(__src, __dst, sizeof(__src));
  return sub_1AC51F4C8();
}

uint64_t static Google_Protobuf_GeneratedCodeInfo.Annotation.Semantic._protobuf_nameMap.getter()
{
  if (qword_1EB557EE0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB558988);
}

unint64_t sub_1AC4BFA44()
{
  result = qword_1EB5589D0;
  if (!qword_1EB5589D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5589D0);
  }

  return result;
}

unint64_t sub_1AC4BFA98()
{
  result = qword_1EB5589D8;
  if (!qword_1EB5589D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5589D8);
  }

  return result;
}

unint64_t sub_1AC4BFAEC()
{
  result = qword_1EB5589E0;
  if (!qword_1EB5589E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5589E0);
  }

  return result;
}

unint64_t sub_1AC4BFB40()
{
  result = qword_1EB5589E8;
  if (!qword_1EB5589E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5589E8);
  }

  return result;
}

unint64_t sub_1AC4BFB94()
{
  result = qword_1EB5589F8;
  if (!qword_1EB5589F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5589F8);
  }

  return result;
}

unint64_t sub_1AC4BFBE8()
{
  result = qword_1EB558A00;
  if (!qword_1EB558A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558A00);
  }

  return result;
}

unint64_t sub_1AC4BFC98()
{
  result = qword_1EB558A10;
  if (!qword_1EB558A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558A10);
  }

  return result;
}

unint64_t sub_1AC4BFCEC()
{
  result = qword_1EB558A18;
  if (!qword_1EB558A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558A18);
  }

  return result;
}

unint64_t sub_1AC4BFD40()
{
  result = qword_1EB558A30;
  if (!qword_1EB558A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558A30);
  }

  return result;
}

unint64_t sub_1AC4BFD94()
{
  result = qword_1EB558A48;
  if (!qword_1EB558A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558A48);
  }

  return result;
}

unint64_t sub_1AC4BFDE8()
{
  result = qword_1EB558A50;
  if (!qword_1EB558A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558A50);
  }

  return result;
}

unint64_t sub_1AC4BFE3C()
{
  result = qword_1EB558A60;
  if (!qword_1EB558A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558A60);
  }

  return result;
}

unint64_t sub_1AC4BFE90()
{
  result = qword_1EB558A68;
  if (!qword_1EB558A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558A68);
  }

  return result;
}

unint64_t sub_1AC4BFEE8()
{
  result = qword_1EB558A70;
  if (!qword_1EB558A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558A70);
  }

  return result;
}

unint64_t sub_1AC4BFF68()
{
  result = qword_1EB558A78;
  if (!qword_1EB558A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558A78);
  }

  return result;
}

unint64_t sub_1AC4BFFBC()
{
  result = qword_1EB558A80;
  if (!qword_1EB558A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558A80);
  }

  return result;
}

unint64_t sub_1AC4C0044()
{
  result = qword_1EB558A98;
  if (!qword_1EB558A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558A98);
  }

  return result;
}

unint64_t sub_1AC4C00C4()
{
  result = qword_1EB558AA0;
  if (!qword_1EB558AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558AA0);
  }

  return result;
}

unint64_t sub_1AC4C0118()
{
  result = qword_1EB558AA8;
  if (!qword_1EB558AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558AA8);
  }

  return result;
}

unint64_t sub_1AC4C019C(uint64_t a1)
{
  result = sub_1AC4C01C4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC4C01C4()
{
  result = qword_1EB558AC0;
  if (!qword_1EB558AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558AC0);
  }

  return result;
}

unint64_t sub_1AC4C021C()
{
  result = qword_1EB558AC8;
  if (!qword_1EB558AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558AC8);
  }

  return result;
}

unint64_t sub_1AC4C029C()
{
  result = qword_1EB558AD0;
  if (!qword_1EB558AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558AD0);
  }

  return result;
}

unint64_t sub_1AC4C02F0()
{
  result = qword_1EB558AD8;
  if (!qword_1EB558AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558AD8);
  }

  return result;
}

unint64_t sub_1AC4C0378()
{
  result = qword_1EB558AF0;
  if (!qword_1EB558AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558AF0);
  }

  return result;
}

unint64_t sub_1AC4C03F8()
{
  result = qword_1EB558AF8;
  if (!qword_1EB558AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558AF8);
  }

  return result;
}

unint64_t sub_1AC4C044C()
{
  result = qword_1EB558B00;
  if (!qword_1EB558B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558B00);
  }

  return result;
}

unint64_t sub_1AC4C04D4()
{
  result = qword_1EB558B18;
  if (!qword_1EB558B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558B18);
  }

  return result;
}

unint64_t sub_1AC4C0554()
{
  result = qword_1EB558B20;
  if (!qword_1EB558B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558B20);
  }

  return result;
}

unint64_t sub_1AC4C05A8()
{
  result = qword_1EB558B28;
  if (!qword_1EB558B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558B28);
  }

  return result;
}

unint64_t sub_1AC4C062C(uint64_t a1)
{
  result = sub_1AC4C0654();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC4C0654()
{
  result = qword_1EB558B40;
  if (!qword_1EB558B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558B40);
  }

  return result;
}

unint64_t sub_1AC4C06A8(uint64_t a1)
{
  result = sub_1AC4C06D0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC4C06D0()
{
  result = qword_1EB558B48;
  if (!qword_1EB558B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558B48);
  }

  return result;
}

unint64_t sub_1AC4C0728()
{
  result = qword_1EB558B50;
  if (!qword_1EB558B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558B50);
  }

  return result;
}

unint64_t sub_1AC4C07A8()
{
  result = qword_1EB558B58;
  if (!qword_1EB558B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558B58);
  }

  return result;
}

unint64_t sub_1AC4C07FC()
{
  result = qword_1EB558B60;
  if (!qword_1EB558B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558B60);
  }

  return result;
}

unint64_t sub_1AC4C0884()
{
  result = qword_1EB558B78;
  if (!qword_1EB558B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558B78);
  }

  return result;
}

unint64_t sub_1AC4C0904()
{
  result = qword_1EB558B80;
  if (!qword_1EB558B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558B80);
  }

  return result;
}

unint64_t sub_1AC4C0958()
{
  result = qword_1EB558B88;
  if (!qword_1EB558B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558B88);
  }

  return result;
}

unint64_t sub_1AC4C09E0()
{
  result = qword_1EB558BA0;
  if (!qword_1EB558BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558BA0);
  }

  return result;
}

unint64_t sub_1AC4C0A60()
{
  result = qword_1EB558BA8;
  if (!qword_1EB558BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558BA8);
  }

  return result;
}

unint64_t sub_1AC4C0AB4()
{
  result = qword_1EB558BB0;
  if (!qword_1EB558BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558BB0);
  }

  return result;
}

unint64_t sub_1AC4C0B3C()
{
  result = qword_1EB558BC8;
  if (!qword_1EB558BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558BC8);
  }

  return result;
}

unint64_t sub_1AC4C0BBC()
{
  result = qword_1EB558BD0;
  if (!qword_1EB558BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558BD0);
  }

  return result;
}

unint64_t sub_1AC4C0C10()
{
  result = qword_1EB558BD8;
  if (!qword_1EB558BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558BD8);
  }

  return result;
}

unint64_t sub_1AC4C0C94(uint64_t a1)
{
  result = sub_1AC4C0CBC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC4C0CBC()
{
  result = qword_1EB558BF0;
  if (!qword_1EB558BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558BF0);
  }

  return result;
}

unint64_t sub_1AC4C0D10(uint64_t a1)
{
  result = sub_1AC4C0D38();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC4C0D38()
{
  result = qword_1EB558BF8;
  if (!qword_1EB558BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558BF8);
  }

  return result;
}

unint64_t sub_1AC4C0D8C(uint64_t a1)
{
  result = sub_1AC4C0DB4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC4C0DB4()
{
  result = qword_1EB558C00;
  if (!qword_1EB558C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558C00);
  }

  return result;
}

unint64_t sub_1AC4C0E08(uint64_t a1)
{
  result = sub_1AC4C0E30();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC4C0E30()
{
  result = qword_1EB558C08;
  if (!qword_1EB558C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558C08);
  }

  return result;
}

unint64_t sub_1AC4C0E84(uint64_t a1)
{
  result = sub_1AC4C0EAC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC4C0EAC()
{
  result = qword_1EB558C10;
  if (!qword_1EB558C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558C10);
  }

  return result;
}

unint64_t sub_1AC4C0F04()
{
  result = qword_1EB558C18;
  if (!qword_1EB558C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558C18);
  }

  return result;
}

unint64_t sub_1AC4C0F84()
{
  result = qword_1EB558C20;
  if (!qword_1EB558C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558C20);
  }

  return result;
}

unint64_t sub_1AC4C0FD8()
{
  result = qword_1EB558C28;
  if (!qword_1EB558C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558C28);
  }

  return result;
}

unint64_t sub_1AC4C105C(uint64_t a1)
{
  result = sub_1AC4C1084();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC4C1084()
{
  result = qword_1EB558C40;
  if (!qword_1EB558C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558C40);
  }

  return result;
}

unint64_t sub_1AC4C10DC()
{
  result = qword_1EB558C48;
  if (!qword_1EB558C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558C48);
  }

  return result;
}

unint64_t sub_1AC4C115C()
{
  result = qword_1EB558C50;
  if (!qword_1EB558C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558C50);
  }

  return result;
}

unint64_t sub_1AC4C11B0()
{
  result = qword_1EB558C58;
  if (!qword_1EB558C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558C58);
  }

  return result;
}

unint64_t sub_1AC4C1238()
{
  result = qword_1EB558C70;
  if (!qword_1EB558C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558C70);
  }

  return result;
}

unint64_t sub_1AC4C12B8()
{
  result = qword_1EB558C78;
  if (!qword_1EB558C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558C78);
  }

  return result;
}

unint64_t sub_1AC4C130C()
{
  result = qword_1EB558C80;
  if (!qword_1EB558C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558C80);
  }

  return result;
}

unint64_t sub_1AC4C1394()
{
  result = qword_1EB558C98;
  if (!qword_1EB558C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558C98);
  }

  return result;
}

unint64_t sub_1AC4C1414()
{
  result = qword_1EB558CA0;
  if (!qword_1EB558CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558CA0);
  }

  return result;
}

unint64_t sub_1AC4C1468()
{
  result = qword_1EB558CA8;
  if (!qword_1EB558CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558CA8);
  }

  return result;
}

unint64_t sub_1AC4C14F0()
{
  result = qword_1EB558CC0;
  if (!qword_1EB558CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558CC0);
  }

  return result;
}

unint64_t sub_1AC4C1570()
{
  result = qword_1EB558CC8;
  if (!qword_1EB558CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558CC8);
  }

  return result;
}

unint64_t sub_1AC4C15C4()
{
  result = qword_1EB558CD0;
  if (!qword_1EB558CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558CD0);
  }

  return result;
}

unint64_t sub_1AC4C164C()
{
  result = qword_1EB558CE8;
  if (!qword_1EB558CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558CE8);
  }

  return result;
}

unint64_t sub_1AC4C16CC()
{
  result = qword_1EB558CF0;
  if (!qword_1EB558CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558CF0);
  }

  return result;
}

unint64_t sub_1AC4C1720()
{
  result = qword_1EB558CF8;
  if (!qword_1EB558CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558CF8);
  }

  return result;
}

unint64_t sub_1AC4C17A8()
{
  result = qword_1EB558D10;
  if (!qword_1EB558D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558D10);
  }

  return result;
}

unint64_t sub_1AC4C1828()
{
  result = qword_1EB558D18;
  if (!qword_1EB558D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558D18);
  }

  return result;
}

unint64_t sub_1AC4C187C()
{
  result = qword_1EB558D20;
  if (!qword_1EB558D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558D20);
  }

  return result;
}

unint64_t sub_1AC4C1900(uint64_t a1)
{
  result = sub_1AC4C1928();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC4C1928()
{
  result = qword_1EB558D38;
  if (!qword_1EB558D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558D38);
  }

  return result;
}

unint64_t sub_1AC4C1980()
{
  result = qword_1EB558D40;
  if (!qword_1EB558D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558D40);
  }

  return result;
}

unint64_t sub_1AC4C1A00()
{
  result = qword_1EB558D48;
  if (!qword_1EB558D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558D48);
  }

  return result;
}

unint64_t sub_1AC4C1A54()
{
  result = qword_1EB558D50;
  if (!qword_1EB558D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558D50);
  }

  return result;
}

uint64_t sub_1AC4C1AD8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AC4C1B2C(uint64_t a1)
{
  result = sub_1AC4C1B54();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC4C1B54()
{
  result = qword_1EB558D68;
  if (!qword_1EB558D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558D68);
  }

  return result;
}

unint64_t sub_1AC4C1BD4()
{
  result = qword_1EB558D70;
  if (!qword_1EB558D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558D70);
  }

  return result;
}

unint64_t sub_1AC4C1C28()
{
  result = qword_1EB558D78;
  if (!qword_1EB558D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558D78);
  }

  return result;
}

unint64_t sub_1AC4C1C80()
{
  result = qword_1EB558D80;
  if (!qword_1EB558D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558D80);
  }

  return result;
}

unint64_t sub_1AC4C1CD4(uint64_t a1)
{
  result = sub_1AC4C1CFC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC4C1CFC()
{
  result = qword_1EB558D88;
  if (!qword_1EB558D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558D88);
  }

  return result;
}

unint64_t sub_1AC4C1D7C()
{
  result = qword_1EB558D90;
  if (!qword_1EB558D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558D90);
  }

  return result;
}

unint64_t sub_1AC4C1DD4()
{
  result = qword_1EB558D98;
  if (!qword_1EB558D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558D98);
  }

  return result;
}

unint64_t sub_1AC4C1E28(uint64_t a1)
{
  result = sub_1AC4C1E50();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC4C1E50()
{
  result = qword_1EB558DA0;
  if (!qword_1EB558DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558DA0);
  }

  return result;
}

unint64_t sub_1AC4C1ED0()
{
  result = qword_1EB558DA8;
  if (!qword_1EB558DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558DA8);
  }

  return result;
}

unint64_t sub_1AC4C1F28()
{
  result = qword_1EB558DB0;
  if (!qword_1EB558DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558DB0);
  }

  return result;
}

unint64_t sub_1AC4C1F7C(uint64_t a1)
{
  result = sub_1AC4C1FA4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC4C1FA4()
{
  result = qword_1EB558DB8;
  if (!qword_1EB558DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558DB8);
  }

  return result;
}

unint64_t sub_1AC4C2024()
{
  result = qword_1EB558DC0;
  if (!qword_1EB558DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558DC0);
  }

  return result;
}

unint64_t sub_1AC4C2078()
{
  result = qword_1EB558DC8;
  if (!qword_1EB558DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558DC8);
  }

  return result;
}

unint64_t sub_1AC4C20D0()
{
  result = qword_1EB558DD0;
  if (!qword_1EB558DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558DD0);
  }

  return result;
}

unint64_t sub_1AC4C2124(uint64_t a1)
{
  result = sub_1AC4C214C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC4C214C()
{
  result = qword_1EB558DD8;
  if (!qword_1EB558DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558DD8);
  }

  return result;
}

unint64_t sub_1AC4C21CC()
{
  result = qword_1EB558DE0;
  if (!qword_1EB558DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558DE0);
  }

  return result;
}

unint64_t sub_1AC4C2220()
{
  result = qword_1EB558DE8;
  if (!qword_1EB558DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558DE8);
  }

  return result;
}

unint64_t sub_1AC4C2278()
{
  result = qword_1EB558DF0;
  if (!qword_1EB558DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558DF0);
  }

  return result;
}

unint64_t sub_1AC4C22CC(uint64_t a1)
{
  result = sub_1AC4C22F4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC4C22F4()
{
  result = qword_1EB558DF8;
  if (!qword_1EB558DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558DF8);
  }

  return result;
}

unint64_t sub_1AC4C2374()
{
  result = qword_1EB558E00;
  if (!qword_1EB558E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558E00);
  }

  return result;
}

unint64_t sub_1AC4C23CC()
{
  result = qword_1EB558E08;
  if (!qword_1EB558E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558E08);
  }

  return result;
}

unint64_t sub_1AC4C2420(uint64_t a1)
{
  result = sub_1AC4C2448();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC4C2448()
{
  result = qword_1EB558E10;
  if (!qword_1EB558E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558E10);
  }

  return result;
}

unint64_t sub_1AC4C24C8()
{
  result = qword_1EB558E18;
  if (!qword_1EB558E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558E18);
  }

  return result;
}

unint64_t sub_1AC4C2520()
{
  result = qword_1EB558E20;
  if (!qword_1EB558E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558E20);
  }

  return result;
}

unint64_t sub_1AC4C2574(uint64_t a1)
{
  result = sub_1AC4C259C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC4C259C()
{
  result = qword_1EB558E28;
  if (!qword_1EB558E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558E28);
  }

  return result;
}

unint64_t sub_1AC4C261C()
{
  result = qword_1EB558E30;
  if (!qword_1EB558E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558E30);
  }

  return result;
}

unint64_t sub_1AC4C2674()
{
  result = qword_1EB558E38;
  if (!qword_1EB558E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558E38);
  }

  return result;
}

unint64_t sub_1AC4C26C8(uint64_t a1)
{
  result = sub_1AC4C26F0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC4C26F0()
{
  result = qword_1EB558E40;
  if (!qword_1EB558E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558E40);
  }

  return result;
}

unint64_t sub_1AC4C2770()
{
  result = qword_1EB558E48;
  if (!qword_1EB558E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558E48);
  }

  return result;
}

unint64_t sub_1AC4C27C4()
{
  result = qword_1EB558E50;
  if (!qword_1EB558E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558E50);
  }

  return result;
}

unint64_t sub_1AC4C281C()
{
  result = qword_1EB558E58;
  if (!qword_1EB558E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558E58);
  }

  return result;
}

unint64_t sub_1AC4C2870(uint64_t a1)
{
  result = sub_1AC4C2898();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC4C2898()
{
  result = qword_1EB558E60;
  if (!qword_1EB558E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558E60);
  }

  return result;
}

unint64_t sub_1AC4C2918()
{
  result = qword_1EB558E68;
  if (!qword_1EB558E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558E68);
  }

  return result;
}

unint64_t sub_1AC4C2970()
{
  result = qword_1EB558E70;
  if (!qword_1EB558E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558E70);
  }

  return result;
}

unint64_t sub_1AC4C29C4(uint64_t a1)
{
  result = sub_1AC4C29EC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC4C29EC()
{
  result = qword_1EB558E78;
  if (!qword_1EB558E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558E78);
  }

  return result;
}

unint64_t sub_1AC4C2A6C()
{
  result = qword_1EB558E80;
  if (!qword_1EB558E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558E80);
  }

  return result;
}

unint64_t sub_1AC4C2AC4()
{
  result = qword_1EB558E88;
  if (!qword_1EB558E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558E88);
  }

  return result;
}

unint64_t sub_1AC4C2B18(uint64_t a1)
{
  result = sub_1AC4C2B40();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC4C2B40()
{
  result = qword_1EB558E90;
  if (!qword_1EB558E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558E90);
  }

  return result;
}

unint64_t sub_1AC4C2BC0()
{
  result = qword_1EB558E98;
  if (!qword_1EB558E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558E98);
  }

  return result;
}

unint64_t sub_1AC4C2C18()
{
  result = qword_1EB558EA0;
  if (!qword_1EB558EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558EA0);
  }

  return result;
}

unint64_t sub_1AC4C2C6C(uint64_t a1)
{
  result = sub_1AC4C2C94();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC4C2C94()
{
  result = qword_1EB558EA8;
  if (!qword_1EB558EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558EA8);
  }

  return result;
}

unint64_t sub_1AC4C2D14()
{
  result = qword_1EB558EB0;
  if (!qword_1EB558EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558EB0);
  }

  return result;
}

unint64_t sub_1AC4C2D6C()
{
  result = qword_1EB558EB8;
  if (!qword_1EB558EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558EB8);
  }

  return result;
}

unint64_t sub_1AC4C2DC0(uint64_t a1)
{
  result = sub_1AC4C2DE8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC4C2DE8()
{
  result = qword_1EB558EC0;
  if (!qword_1EB558EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558EC0);
  }

  return result;
}

unint64_t sub_1AC4C2E68()
{
  result = qword_1EB558EC8;
  if (!qword_1EB558EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558EC8);
  }

  return result;
}

unint64_t sub_1AC4C2EC0()
{
  result = qword_1EB558ED0;
  if (!qword_1EB558ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558ED0);
  }

  return result;
}

unint64_t sub_1AC4C2F14(uint64_t a1)
{
  result = sub_1AC4C2F3C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC4C2F3C()
{
  result = qword_1EB558ED8;
  if (!qword_1EB558ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558ED8);
  }

  return result;
}

unint64_t sub_1AC4C2FBC()
{
  result = qword_1EB558EE0;
  if (!qword_1EB558EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558EE0);
  }

  return result;
}

unint64_t sub_1AC4C3014()
{
  result = qword_1EB558EE8;
  if (!qword_1EB558EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558EE8);
  }

  return result;
}

unint64_t sub_1AC4C3068(uint64_t a1)
{
  result = sub_1AC4C3090();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC4C3090()
{
  result = qword_1EB558EF0;
  if (!qword_1EB558EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558EF0);
  }

  return result;
}

unint64_t sub_1AC4C3110()
{
  result = qword_1EB558EF8;
  if (!qword_1EB558EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558EF8);
  }

  return result;
}

unint64_t sub_1AC4C3168()
{
  result = qword_1EB558F00;
  if (!qword_1EB558F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558F00);
  }

  return result;
}

unint64_t sub_1AC4C31BC(uint64_t a1)
{
  result = sub_1AC4C31E4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC4C31E4()
{
  result = qword_1EB558F08;
  if (!qword_1EB558F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558F08);
  }

  return result;
}

unint64_t sub_1AC4C3264()
{
  result = qword_1EB558F10;
  if (!qword_1EB558F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558F10);
  }

  return result;
}

unint64_t sub_1AC4C32BC()
{
  result = qword_1EB558F18;
  if (!qword_1EB558F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558F18);
  }

  return result;
}

unint64_t sub_1AC4C3310(uint64_t a1)
{
  result = sub_1AC4C3338();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC4C3338()
{
  result = qword_1EB558F20;
  if (!qword_1EB558F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558F20);
  }

  return result;
}

unint64_t sub_1AC4C33B8()
{
  result = qword_1EB558F28;
  if (!qword_1EB558F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558F28);
  }

  return result;
}

unint64_t sub_1AC4C340C()
{
  result = qword_1EB558F30;
  if (!qword_1EB558F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558F30);
  }

  return result;
}

unint64_t sub_1AC4C3464()
{
  result = qword_1EB558F38;
  if (!qword_1EB558F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558F38);
  }

  return result;
}

unint64_t sub_1AC4C34B8(uint64_t a1)
{
  result = sub_1AC4C34E0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC4C34E0()
{
  result = qword_1EB558F40;
  if (!qword_1EB558F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558F40);
  }

  return result;
}

unint64_t sub_1AC4C3560()
{
  result = qword_1EB558F48;
  if (!qword_1EB558F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558F48);
  }

  return result;
}

unint64_t sub_1AC4C35B4()
{
  result = qword_1EB558F50;
  if (!qword_1EB558F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558F50);
  }

  return result;
}

unint64_t sub_1AC4C360C()
{
  result = qword_1EB558F58;
  if (!qword_1EB558F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558F58);
  }

  return result;
}

unint64_t sub_1AC4C3660(uint64_t a1)
{
  result = sub_1AC4C3688();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC4C3688()
{
  result = qword_1EB558F60;
  if (!qword_1EB558F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558F60);
  }

  return result;
}

unint64_t sub_1AC4C3708()
{
  result = qword_1EB558F68;
  if (!qword_1EB558F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558F68);
  }

  return result;
}

unint64_t sub_1AC4C3760()
{
  result = qword_1EB558F70;
  if (!qword_1EB558F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558F70);
  }

  return result;
}

unint64_t sub_1AC4C37B4(uint64_t a1)
{
  result = sub_1AC4C37DC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC4C37DC()
{
  result = qword_1EB558F78;
  if (!qword_1EB558F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558F78);
  }

  return result;
}

unint64_t sub_1AC4C385C()
{
  result = qword_1EB558F80;
  if (!qword_1EB558F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558F80);
  }

  return result;
}

unint64_t sub_1AC4C38B4()
{
  result = qword_1EB558F88;
  if (!qword_1EB558F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558F88);
  }

  return result;
}

unint64_t sub_1AC4C3908(uint64_t a1)
{
  result = sub_1AC4C3930();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC4C3930()
{
  result = qword_1EB558F90;
  if (!qword_1EB558F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558F90);
  }

  return result;
}

unint64_t sub_1AC4C39B0()
{
  result = qword_1EB558F98;
  if (!qword_1EB558F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558F98);
  }

  return result;
}

unint64_t sub_1AC4C3A08()
{
  result = qword_1EB558FA0;
  if (!qword_1EB558FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558FA0);
  }

  return result;
}

unint64_t sub_1AC4C3A5C(uint64_t a1)
{
  result = sub_1AC4C3A84();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC4C3A84()
{
  result = qword_1EB558FA8;
  if (!qword_1EB558FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558FA8);
  }

  return result;
}

unint64_t sub_1AC4C3B04()
{
  result = qword_1EB558FB0;
  if (!qword_1EB558FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558FB0);
  }

  return result;
}

unint64_t sub_1AC4C3B5C()
{
  result = qword_1EB558FB8;
  if (!qword_1EB558FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558FB8);
  }

  return result;
}

unint64_t sub_1AC4C3BB0(uint64_t a1)
{
  result = sub_1AC4C3BD8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC4C3BD8()
{
  result = qword_1EB558FC0;
  if (!qword_1EB558FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558FC0);
  }

  return result;
}

unint64_t sub_1AC4C3C58()
{
  result = qword_1EB558FC8;
  if (!qword_1EB558FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558FC8);
  }

  return result;
}

unint64_t sub_1AC4C3CB0()
{
  result = qword_1EB558FD0;
  if (!qword_1EB558FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558FD0);
  }

  return result;
}

unint64_t sub_1AC4C3D04(uint64_t a1)
{
  result = sub_1AC4C3D2C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC4C3D2C()
{
  result = qword_1EB558FD8;
  if (!qword_1EB558FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558FD8);
  }

  return result;
}