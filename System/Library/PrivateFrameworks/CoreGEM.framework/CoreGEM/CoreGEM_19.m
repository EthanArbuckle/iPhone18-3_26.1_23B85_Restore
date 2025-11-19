uint64_t sub_2454699A8(uint64_t a1, void *a2)
{
  sub_245446614(a1, 8u, a2, 0);
  v3 = *(a1 + 16);
  if (*(a1 + 16))
  {
    sub_245445D98(*(a1 + 16), *(a1 + 8), *(a1 + 12), "asn1PD_Horandveruncert_verspeed");
  }

  return v3;
}

uint64_t sub_2454699FC(uint64_t a1, void *a2)
{
  sub_245446614(a1, 8u, a2, 0);
  v3 = *(a1 + 16);
  if (*(a1 + 16))
  {
    sub_245445D98(*(a1 + 16), *(a1 + 8), *(a1 + 12), "asn1PD_Horandveruncert_horuncertspeed");
  }

  return v3;
}

uint64_t sub_245469A50(uint64_t a1, void *a2)
{
  sub_245446614(a1, 8u, a2, 0);
  v3 = *(a1 + 16);
  if (*(a1 + 16))
  {
    sub_245445D98(*(a1 + 16), *(a1 + 8), *(a1 + 12), "asn1PD_Horandveruncert_veruncertspeed");
  }

  return v3;
}

uint64_t sub_245469AA4(uint64_t a1, void *a2)
{
  v4 = sub_245446038(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
LABEL_15:
    sub_245445D98(v8, v6, v7, "asn1PD_Horandveruncert");
    return v5;
  }

  v9 = v4;
  sub_245446614(a1, 1u, a2, 0);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    sub_245445D98(*(a1 + 16), *(a1 + 8), *(a1 + 12), "asn1PD_Horandveruncert_verdirect");
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = v5;
    goto LABEL_15;
  }

  sub_245446614(a1, 9u, a2 + 3, 0);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    sub_245445D98(*(a1 + 16), *(a1 + 8), *(a1 + 12), "asn1PD_Horandveruncert_bearing");
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = v5;
    goto LABEL_15;
  }

  sub_245446614(a1, 0x10u, a2 + 6, 0);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    sub_245445D98(*(a1 + 16), *(a1 + 8), *(a1 + 12), "asn1PD_Horandveruncert_horspeed");
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = v5;
    goto LABEL_15;
  }

  v8 = sub_2454699A8(a1, a2 + 9);
  if (v8)
  {
    v5 = v8;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_15;
  }

  v8 = sub_2454699FC(a1, a2 + 12);
  if (v8)
  {
    v5 = v8;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_15;
  }

  v8 = sub_245469A50(a1, a2 + 15);
  if (v8)
  {
    v5 = v8;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_15;
  }

  if (!v9)
  {
    return 0;
  }

  return sub_245446F9C(a1);
}

void sub_245469C88(uint64_t a1, uint64_t a2)
{
  v4 = sub_245446038(a1);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
LABEL_3:
    sub_245445D98(v7, v5, v6, "asn1PD_Velocity");
    return;
  }

  if (!v4)
  {
    v14 = 0;
    v7 = sub_245446218(a1, 0, 3u, &v14);
    if (v7)
    {
      v5 = *(a1 + 8);
      v6 = *(a1 + 12);
      goto LABEL_3;
    }

    v8 = v14;
    *a2 = v14;
    if (v8 <= 1)
    {
      if (v8)
      {
        v13 = sub_245469684(a1, (a2 + 56));
      }

      else
      {
        v13 = sub_24546945C(a1, (a2 + 8));
      }
    }

    else if (v8 == 2)
    {
      v13 = sub_2454698A8(a1, (a2 + 152));
    }

    else
    {
      if (v8 != 3)
      {
        if (v8 == 255)
        {
          v9 = 1;
          *(a1 + 16) = 1;
          v10 = *(a1 + 8);
          v11 = *(a1 + 12);
          v12 = 1;
        }

        else
        {
          v9 = 4;
          *(a1 + 16) = 4;
          v10 = *(a1 + 8);
          v11 = *(a1 + 12);
          v12 = 4;
        }

        sub_245445D98(v12, v10, v11, "asn1PD_Velocity");
        goto LABEL_24;
      }

      v13 = sub_245469AA4(a1, (a2 + 224));
    }

    v9 = v13;
    if (!v13)
    {
      return;
    }

LABEL_24:
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = v9;
    goto LABEL_3;
  }

  sub_245447070(a1);
}

uint64_t sub_245469E18(uint64_t a1, int *a2)
{
  sub_245445FB0(a1, 0);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(v7) = *(a1 + 16);
LABEL_7:
    sub_245445D98(v7, v5, v6, "asn1PE_Position");
    return v4;
  }

  sub_245445FB0(a1, *a2);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(v7) = *(a1 + 16);
    goto LABEL_7;
  }

  v7 = sub_245468878(a1, (a2 + 2));
  if (v7)
  {
    v4 = v7;
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    goto LABEL_7;
  }

  return sub_245468F98(a1, (a2 + 8));
}

uint64_t sub_245469EEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_245446038(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
LABEL_9:
    sub_245445D98(v8, v6, v7, "asn1PD_Position");
    return v5;
  }

  v9 = v4;
  *a2 = sub_245446038(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_9;
  }

  v8 = sub_2454688DC(a1, (a2 + 8));
  if (v8)
  {
    v5 = v8;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_9;
  }

  v8 = sub_245469188(a1, a2 + 32);
  if (v8)
  {
    v5 = v8;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_9;
  }

  if (*a2)
  {
    sub_245469C88(a1, a2 + 72);
    if (v8)
    {
      v5 = v8;
      v6 = *(a1 + 8);
      v7 = *(a1 + 12);
      goto LABEL_9;
    }
  }

  if (!v9)
  {
    return 0;
  }

  return sub_245446F9C(a1);
}

uint64_t sub_24546A020(uint64_t a1, uint64_t a2)
{
  v3 = sub_245446770(a1, 1, 0x2000, *(a2 + 8) - *a2, a2, 0, 0);
  v4 = v3;
  if (v3)
  {
    sub_245445D98(v3, *(a1 + 8), *(a1 + 12), "asn1PE_PosPayLoad_rrlpPayload");
  }

  return v4;
}

uint64_t sub_24546A088(uint64_t a1, void *a2)
{
  v6 = 0;
  sub_2454463A8(a1, 1, 0x2000u, &v6);
  sub_245446614(a1, 8 * v6, a2, 0);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    sub_245445D98(*(a1 + 16), *(a1 + 8), *(a1 + 12), "asn1PD_PosPayLoad_rrlpPayload");
  }

  return v4;
}

uint64_t sub_24546A104(uint64_t a1, unsigned __int16 *a2)
{
  sub_245445FB0(a1, *a2 > 3u);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(v7) = *(a1 + 16);
    goto LABEL_3;
  }

  v9 = *a2;
  if (v9 < 4)
  {
    v7 = sub_2454460B8(a1, 0, 2, v9 - 1);
    if (v7)
    {
      v4 = v7;
      v5 = *(a1 + 8);
      v6 = *(a1 + 12);
      goto LABEL_3;
    }

    v10 = *a2;
    if (v10 != 1)
    {
      if (v10 == 3)
      {
        v4 = sub_24546A020(a1, (a2 + 28));
        if (!v4)
        {
          return v4;
        }

        goto LABEL_19;
      }

      if (v10 != 2)
      {
        v4 = 4;
        *(a1 + 16) = 4;
        v5 = *(a1 + 8);
        v6 = *(a1 + 12);
        LODWORD(v7) = 4;
        goto LABEL_3;
      }
    }

    v4 = 1;
    *(a1 + 16) = 1;
    sub_245445D98(1u, *(a1 + 8), *(a1 + 12), "asn1PE_PosPayLoad");
LABEL_19:
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(v7) = v4;
    goto LABEL_3;
  }

  if (*(a2 + 10))
  {
    v7 = sub_24544443C(a1, a2);
    v4 = v7;
    if (!v7)
    {
      return v4;
    }

    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
  }

  else
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v4 = 1;
    LODWORD(v7) = 1;
  }

LABEL_3:
  sub_245445D98(v7, v5, v6, "asn1PE_PosPayLoad");
  return v4;
}

uint64_t sub_24546A288(uint64_t a1, uint64_t a2)
{
  v4 = sub_245446038(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_3;
  }

  if (!v4)
  {
    v11 = 0;
    v8 = sub_245446218(a1, 0, 2u, &v11);
    if (v8)
    {
      v5 = v8;
      v6 = *(a1 + 8);
      v7 = *(a1 + 12);
      goto LABEL_3;
    }

    v10 = v11;
    *a2 = v11 + 1;
    if (v10)
    {
      if (v10 == 2)
      {
        v5 = sub_24546A088(a1, (a2 + 56));
        if (!v5)
        {
          return v5;
        }

        goto LABEL_17;
      }

      if (v10 != 1)
      {
        v5 = 4;
        *(a1 + 16) = 4;
        v6 = *(a1 + 8);
        v7 = *(a1 + 12);
        LODWORD(v8) = 4;
        goto LABEL_3;
      }
    }

    v5 = 1;
    *(a1 + 16) = 1;
    sub_245445D98(1u, *(a1 + 8), *(a1 + 12), "asn1PD_PosPayLoad");
LABEL_17:
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = v5;
    goto LABEL_3;
  }

  v8 = sub_2454440D0(a1, a2);
  v5 = v8;
  if (!v8)
  {
    return v5;
  }

  v6 = *(a1 + 8);
  v7 = *(a1 + 12);
LABEL_3:
  sub_245445D98(v8, v6, v7, "asn1PD_PosPayLoad");
  return v5;
}

uint64_t sub_24546A3E0(uint64_t a1, uint64_t a2)
{
  sub_245445FB0(a1, 0);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
LABEL_5:
    sub_245445D98(v7, v5, v6, "asn1PE_SUPLPOS");
    return v4;
  }

  sub_245445FB0(a1, *a2);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_5;
  }

  return sub_24546A104(a1, (a2 + 8));
}

uint64_t sub_24546A48C(uint64_t a1, _DWORD *a2)
{
  v4 = sub_245446038(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
LABEL_7:
    sub_245445D98(v8, v6, v7, "asn1PD_SUPLPOS");
    return v5;
  }

  v9 = v4;
  *a2 = sub_245446038(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_7;
  }

  v8 = sub_24546A288(a1, (a2 + 2));
  if (v8)
  {
    v5 = v8;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_7;
  }

  if (*a2)
  {
    sub_245469C88(a1, (a2 + 36));
    if (v8)
    {
      v5 = v8;
      v6 = *(a1 + 8);
      v7 = *(a1 + 12);
      goto LABEL_7;
    }
  }

  if (!v9)
  {
    return 0;
  }

  v8 = sub_245446F9C(a1);
  v5 = v8;
  if (v8)
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_7;
  }

  return v5;
}

uint64_t sub_24546A59C(uint64_t result, int a2)
{
  *result = a2;
  if (*(result + 196))
  {
    v2 = result;
    v3 = *(result + 880);
    if (v3)
    {
      v4 = *(v2 + 944);
      if (v4 && (v5 = *v4) != 0 && (v6 = v5[2]) != 0)
      {
        v6(*v5, v2 + 880);
      }

      else
      {
        free(v3);
      }

      *(v2 + 880) = 0;
    }

    longjmp((v2 + 4), a2);
  }

  return result;
}

void sub_24546A610(uint64_t a1, int a2)
{
  if (!a1 || (*a1 = a2, !*(a1 + 196)))
  {
    exit(a2);
  }

  v4 = *(a1 + 880);
  if (v4)
  {
    v5 = *(a1 + 944);
    if (v5 && (v6 = *v5) != 0 && (v7 = v6[2]) != 0)
    {
      v7(*v6, a1 + 880);
    }

    else
    {
      free(v4);
    }

    *(a1 + 880) = 0;
  }

  longjmp((a1 + 4), a2);
}

uint64_t sub_24546A68C()
{
  v5 = *MEMORY[0x277D85DE8];
  if (qword_2813CED58 != -1)
  {
    dispatch_once(&qword_2813CED58, &unk_28585A610);
  }

  result = qword_2813CED50;
  if (!qword_2813CED50)
  {
    v2 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      v3 = 136315138;
      v4 = "GetInstance";
      _os_log_error_impl(&dword_245396000, v2, OS_LOG_TYPE_ERROR, "%s", &v3, 0xCu);
    }

    __assert_rtn("GetInstance", "SuplPosPayloadHandler.cpp", 56, "false && Memory allocation failure");
  }

  v1 = *MEMORY[0x277D85DE8];
  return result;
}

void *sub_24546A784()
{
  result = operator new(0x18uLL, MEMORY[0x277D826F0]);
  if (result)
  {
    *result = 0;
    result[1] = 0;
    result[2] = 0;
  }

  qword_2813CED50 = result;
  return result;
}

uint64_t sub_24546A7BC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v46 = *MEMORY[0x277D85DE8];
  if (a2 && a3)
  {
    __p = 0;
    v35 = 0;
    v37 = 0;
    v36 = 0;
    sub_24546B0B4(a1);
    v6 = *(a3 + 380) == 2;
    v38 = *(a3 + 376);
    v39 = v6;
    v7 = *(a2 + 8);
    v8 = qword_2813CF018;
    if (v7 != 4)
    {
      if (v7 != 3)
      {
        if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          *&buf[4] = 770;
          _os_log_error_impl(&dword_245396000, v8, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", buf, 8u);
          v8 = qword_2813CF018;
        }

        if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_33;
        }

        *buf = 0;
        v22 = v8;
        goto LABEL_84;
      }

      if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_245396000, v8, OS_LOG_TYPE_DEBUG, "#gpsd,#supl SuplPosPayloadHandler::ProcessPosPayload, payload type RRLP", buf, 2u);
      }

      v9 = sub_245479234();
      if (sub_245479750(v9, *(a3 + 596)))
      {
        v10 = qword_2813CF018;
        if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&dword_245396000, v10, OS_LOG_TYPE_DEBUG, "#gpsd,#supl SuplPosPayloadHandler::ProcessPosPayload, RRLP on LTE not supported", buf, 2u);
          v10 = qword_2813CF018;
        }

        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          *&buf[4] = 515;
          _os_log_error_impl(&dword_245396000, v10, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", buf, 8u);
          v10 = qword_2813CF018;
        }

        if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_33;
        }

        *buf = 0;
        goto LABEL_48;
      }

      v37 = 1;
      if (&__p == (a2 + 64))
      {
        v21 = 0;
        v20 = 0;
      }

      else
      {
        sub_2453ADF3C(&__p, *(a2 + 64), *(a2 + 72), *(a2 + 72) - *(a2 + 64));
        v20 = __p;
        v21 = v35;
      }

      sub_245444EFC(v20, v21 - v20);
      if (*(a2 + 8) == 4)
      {
        sub_245479B0C(&__p);
      }

      goto LABEL_70;
    }

    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_245396000, v8, OS_LOG_TYPE_DEBUG, "#gpsd,#supl SuplPosPayloadHandler::ProcessPosPayload, payload type LPP", buf, 2u);
    }

    if (!*(a2 + 88))
    {
      v19 = qword_2813CF018;
      if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_245396000, v19, OS_LOG_TYPE_DEBUG, "#gpsd,#supl SuplPosPayloadHandler::ProcessPosPayload, LPP payload not present", buf, 2u);
        v19 = qword_2813CF018;
      }

      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        *&buf[4] = 515;
        _os_log_error_impl(&dword_245396000, v19, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", buf, 8u);
        v19 = qword_2813CF018;
      }

      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_245396000, v19, OS_LOG_TYPE_DEBUG, "#gpsd,#supl Leaving SuplPosPayloadHandler::ProcessPosPayload", buf, 2u);
      }

      goto LABEL_66;
    }

    v13 = sub_245479234();
    if (!sub_245479750(v13, *(a3 + 596)))
    {
      v10 = qword_2813CF018;
      if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_245396000, v10, OS_LOG_TYPE_DEBUG, "#gpsd,#supl SuplPosPayloadHandler::ProcessPosPayload, LPP received in non-LTE", buf, 2u);
        v10 = qword_2813CF018;
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        *&buf[4] = 515;
        _os_log_error_impl(&dword_245396000, v10, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", buf, 8u);
        v10 = qword_2813CF018;
      }

      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_33;
      }

      *buf = 0;
LABEL_48:
      v22 = v10;
LABEL_84:
      _os_log_debug_impl(&dword_245396000, v22, OS_LOG_TYPE_DEBUG, "#gpsd,#supl Leaving SuplPosPayloadHandler::ProcessPosPayload", buf, 2u);
LABEL_33:
      v12 = -7;
      goto LABEL_71;
    }

    v37 = 3;
    v14 = operator new(0x38uLL, MEMORY[0x277D826F0]);
    if (v14)
    {
      v14[6] = 0;
      *(v14 + 1) = 0u;
      *(v14 + 2) = 0u;
      *v14 = 0u;
      *a1 = v14;
      v16 = *(a2 + 96);
      v15 = *(a2 + 104);
      if (v15 != v16)
      {
        v17 = 0;
        v18 = 0;
        do
        {
          if (*(v16 + v17) != *(v16 + v17 + 8))
          {
            ++*(a1 + 8);
            sub_2454447AC((*a1 + 8), (v16 + v17));
            sub_245444EFC(*(*(*a1 + 8) + v17), *(*(*a1 + 8) + v17 + 8) - *(*(*a1 + 8) + v17));
            v16 = *(a2 + 96);
            v15 = *(a2 + 104);
          }

          ++v18;
          v17 += 24;
        }

        while (v18 < 0xAAAAAAAAAAAAAAABLL * ((v15 - v16) >> 3));
      }
    }

    else
    {
      *a1 = 0;
      v23 = qword_2813CF018;
      if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_245396000, v23, OS_LOG_TYPE_DEBUG, "#gpsd,#supl SuplPosPayloadHandler::CopyLppPayLoad, mem allocation failed", buf, 2u);
        v23 = qword_2813CF018;
      }

      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        *&buf[4] = 1537;
        _os_log_error_impl(&dword_245396000, v23, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", buf, 8u);
      }
    }

    v24 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_245396000, v24, OS_LOG_TYPE_DEBUG, "#gpsd,#supl SuplPosPayloadHandler::ProcessPosPayload, calling ProcessLppPayload", buf, 2u);
    }

    if (*a1)
    {
      v25 = *(a3 + 376);
      v26 = *(sub_24546E30C() + 24);
      if (v26)
      {
        while (*v26 != v25)
        {
          v26 = *(v26 + 8);
          if (!v26)
          {
            goto LABEL_59;
          }
        }

        if (*(a1 + 8) >= 1)
        {
          v30 = 0;
          v31 = 0;
          while (1)
          {
            v32 = *a1;
            if (0xAAAAAAAAAAAAAAABLL * ((*(*a1 + 16) - *(*a1 + 8)) >> 3) <= v31)
            {
              break;
            }

            v44 = 0;
            v45 = 0;
            v43 = 0;
            v41 = 0;
            v42 = 0;
            *buf = 0;
            v33 = (*(v32 + 8) + v30);
            if (v33 != buf)
            {
              sub_2453ADF3C(buf, *v33, v33[1], v33[1] - *v33);
            }

            v43 = 3;
            v44 = v25;
            v45 = v6;
            sub_245479B0C(buf);
            if (*buf)
            {
              v41 = *buf;
              operator delete(*buf);
            }

            v12 = 0;
            ++v31;
            v30 += 24;
            if (v31 >= *(a1 + 8))
            {
              goto LABEL_71;
            }
          }
        }

LABEL_70:
        v12 = 0;
LABEL_71:
        if (__p)
        {
          v35 = __p;
          operator delete(__p);
        }

        goto LABEL_73;
      }

LABEL_59:
      v27 = qword_2813CF018;
      if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        *&buf[4] = v25;
        _os_log_error_impl(&dword_245396000, v27, OS_LOG_TYPE_ERROR, "#gpsd,#supl SuplPosPayloadHandler::ProcessLppPayload, session not found %d", buf, 8u);
        v27 = qword_2813CF018;
      }

      if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
LABEL_66:
        v12 = -1;
        goto LABEL_71;
      }

      *buf = 67109120;
      *&buf[4] = 513;
    }

    else
    {
      v27 = qword_2813CF018;
      if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_245396000, v27, OS_LOG_TYPE_ERROR, "#gpsd,#supl SuplPosPayloadHandler::ProcessLppPayload, m_lppReqParams NULL", buf, 2u);
        v27 = qword_2813CF018;
      }

      if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_66;
      }

      *buf = 67109120;
      *&buf[4] = 513;
    }

    _os_log_error_impl(&dword_245396000, v27, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", buf, 8u);
    goto LABEL_66;
  }

  v11 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_245396000, v11, OS_LOG_TYPE_ERROR, "#gpsd,#supl SuplPosPayloadHandler::ProcessPosPayload, suplpos or session NULL", buf, 2u);
    v11 = qword_2813CF018;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    *&buf[4] = 513;
    _os_log_error_impl(&dword_245396000, v11, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", buf, 8u);
  }

  v12 = -1;
LABEL_73:
  v28 = *MEMORY[0x277D85DE8];
  return v12;
}

void sub_24546B07C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a10)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24546B0B4(void *result)
{
  v1 = result;
  v2 = *result;
  if (*result)
  {
    v4 = (v2 + 32);
    sub_245467100(&v4);
    v4 = (v2 + 8);
    sub_245467100(&v4);
    result = MEMORY[0x245D6A0D0](v2, 0x1020C401E2BB44DLL);
  }

  *v1 = 0;
  v3 = v1[2];
  if (v3)
  {
    v4 = (v3 + 32);
    sub_245467100(&v4);
    v4 = (v3 + 8);
    sub_245467100(&v4);
    result = MEMORY[0x245D6A0D0](v3, 0x1020C401E2BB44DLL);
  }

  v1[2] = 0;
  *(v1 + 8) = 0;
  return result;
}

void sub_24546B168(uint64_t a1, char **a2, int a3, uint64_t a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = qword_2813CF018;
  if (a4)
  {
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v15[0]) = 0;
      _os_log_debug_impl(&dword_245396000, v4, OS_LOG_TYPE_DEBUG, "#gpsd,#supl SuplPosPayloadHandler::ProcessPosResponse, update state to Supl_Pos_Recd", v15, 2u);
    }

    v8 = sub_245471CCC(a4);
    sub_245473DF8(v8, 5, a4);
    v9 = sub_245471CCC(a4);
    v10 = v9;
    v11 = *a2;
    v12 = a2[1];
    if (*a2 != v12)
    {
      *(v9[5] + 8) = 3;
      v13 = (v9[5] + 64);
      if (v13 != a2)
      {
        sub_2453ADF3C(v13, v11, v12, v12 - v11);
      }
    }

    sub_24546DB20(v10, a3);
  }

  else
  {
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v15[0]) = 0;
      _os_log_error_impl(&dword_245396000, v4, OS_LOG_TYPE_ERROR, "#gpsd,#supl SuplPosPayloadHandler::ProcessPosResponse, session NULL", v15, 2u);
      v4 = qword_2813CF018;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v15[0] = 67109120;
      v15[1] = 513;
      _os_log_error_impl(&dword_245396000, v4, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", v15, 8u);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t sub_24546B308(uint64_t a1, int a2, char a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = *(sub_24546E30C() + 24);
  if (v5)
  {
    while (*v5 != a2)
    {
      v5 = *(v5 + 8);
      if (!v5)
      {
        goto LABEL_4;
      }
    }

    buf[0] = 0;
    v23 = 0;
    v24 = -1;
    v25 = 0;
    *v27 = 0;
    v26 = 0;
    *(&v27[1] + 1) = 0;
    *&v27[5] = 0;
    v27[7] = 0;
    v28 = -1;
    v29 = 0;
    v30 = 0;
    v31 = -1;
    v32 = 0;
    v33 = 0;
    v34[0] = 0;
    *(v34 + 6) = 0;
    memset(&v34[2], 0, 24);
    v35 = 1;
    v8 = *(sub_245479234() + 16);
    if (v8)
    {
      while (*v8 != *(v5 + 588))
      {
        v8 = *(v8 + 8);
        if (!v8)
        {
          goto LABEL_14;
        }
      }

      sub_245464DF4(buf, (v8 + 56));
    }

LABEL_14:
    v12 = *(v5 + 512);
    v13 = *(v5 + 520);
    v14 = 0;
    v15 = 0;
    v16 = 0;
    sub_2453AE4E0(&v14, *(v5 + 528), *(v5 + 536), *(v5 + 536) - *(v5 + 528));
    __p = 0;
    v18 = 0;
    v19 = 0;
    sub_2453AE4E0(&__p, *(v5 + 552), *(v5 + 560), *(v5 + 560) - *(v5 + 552));
    v20 = *(v5 + 576);
    v9 = *(v5 + 588);
    sub_24547A094(a2, a3, &v12);
    if (__p)
    {
      v18 = __p;
      operator delete(__p);
    }

    if (v14)
    {
      v15 = v14;
      operator delete(v14);
    }

    sub_245464AB8(buf);
    v7 = 0;
  }

  else
  {
LABEL_4:
    v6 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_245396000, v6, OS_LOG_TYPE_ERROR, "#gpsd,#supl SuplPosPayloadHandler::ProcessLppAdReq, session NULL", buf, 2u);
      v6 = qword_2813CF018;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v22 = 513;
      _os_log_error_impl(&dword_245396000, v6, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", buf, 8u);
    }

    v7 = -1;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v7;
}

void sub_24546B558(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  sub_24546BA2C(&a10);
  sub_245464AB8(&a19);
  _Unwind_Resume(a1);
}

void sub_24546B598(void *a1, uint64_t a2)
{
  v27[5] = *MEMORY[0x277D85DE8];
  v4 = sub_24546E30C();
  v5 = *(a2 + 28);
  v6 = *(v4 + 24);
  if (!v6)
  {
LABEL_4:
    v7 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v27[0]) = 67109120;
      HIDWORD(v27[0]) = v5;
      _os_log_error_impl(&dword_245396000, v7, OS_LOG_TYPE_ERROR, "#gpsd,#supl SuplPosPayloadHandler::HandleLppPosResponseFromStack, session not found %d", v27, 8u);
      v7 = qword_2813CF018;
    }

    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    v27[0] = 0x20104000100;
    goto LABEL_8;
  }

  while (*v6 != v5)
  {
    v6 = *(v6 + 8);
    if (!v6)
    {
      goto LABEL_4;
    }
  }

  v8 = v6 - 8;
  *(v6 + 416) = *(a2 + 32);
  v9 = *(a2 + 24);
  if (*(a2 + 24))
  {
    v10 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v27[0]) = 67109120;
      HIDWORD(v27[0]) = v9;
      _os_log_error_impl(&dword_245396000, v10, OS_LOG_TYPE_ERROR, "#gpsd,#supl SuplPosPayloadHandler::HandleLppPosResponseFromStack, lppstatus %d", v27, 8u);
      v10 = qword_2813CF018;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v27[0] = 0x20304000100;
      _os_log_error_impl(&dword_245396000, v10, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", v27, 8u);
    }

    v11 = sub_245471CCC(v8);
    sub_245473DF8(v11, 5, v8);
    v12 = sub_245471CCC(v8);
    sub_24546DFC0(v12, a1[2]);
    sub_24546DB20(v12, 1);
    sub_24546B0B4(a1);
    goto LABEL_15;
  }

  v14 = *(a2 + 8);
  if (*a2 == v14)
  {
LABEL_15:
    v13 = *MEMORY[0x277D85DE8];
    return;
  }

  sub_245444EFC(*a2, v14 - *a2);
  v15 = a1[2];
  if (!v15)
  {
    v16 = operator new(0x38uLL, MEMORY[0x277D826F0]);
    if (v16)
    {
      v15 = v16;
      v16[6] = 0;
      *(v16 + 1) = 0u;
      *(v16 + 2) = 0u;
      *v16 = 0u;
      a1[2] = v16;
      goto LABEL_20;
    }

    a1[2] = 0;
    v7 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v27[0]) = 0;
      _os_log_error_impl(&dword_245396000, v7, OS_LOG_TYPE_ERROR, "#gpsd,#supl SuplPosPayloadHandler::HandleLppPosResponseFromStack, rsp params mem allocation failure", v27, 2u);
      v7 = qword_2813CF018;
    }

    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    v27[0] = 0x60104000100;
LABEL_8:
    _os_log_error_impl(&dword_245396000, v7, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", v27, 8u);
    goto LABEL_15;
  }

LABEL_20:
  *v15 = 1;
  v17 = v15[1];
  v18 = v15[2];
  if (v18 == v17)
  {
    if (v15[3] == v18)
    {
      v27[4] = v15 + 1;
      operator new();
    }

    *v18 = 0;
    v18[1] = 0;
    v18[2] = 0;
    v15[2] = v18 + 3;
  }

  else if (0xAAAAAAAAAAAAAAABLL * (v18 - v17) >= 2)
  {
    v19 = v17 + 3;
    if (v18 != v17 + 3)
    {
      v20 = v15[2];
      do
      {
        v22 = *(v20 - 3);
        v20 -= 3;
        v21 = v22;
        if (v22)
        {
          *(v18 - 2) = v21;
          operator delete(v21);
        }

        v18 = v20;
      }

      while (v20 != v19);
    }

    v15[2] = v19;
  }

  v23 = *(a1[2] + 8);
  if (v23 != a2)
  {
    sub_2453ADF3C(v23, *a2, *(a2 + 8), *(a2 + 8) - *a2);
  }

  v24 = sub_245471CCC(v8);
  sub_245473DF8(v24, 5, v8);
  v25 = sub_245471CCC(v8);
  sub_24546DFC0(v25, a1[2]);
  sub_24546DB20(v25, 0);
  v26 = *MEMORY[0x277D85DE8];

  sub_24546B0B4(a1);
}

void *sub_24546BA2C(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    a1[3] = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_24546BA70(unsigned __int16 *a1, _DWORD *a2)
{
  __p[41] = *MEMORY[0x277D85DE8];
  sub_2453B414C(__p, "gps_set_gps_time");
  v4 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
  {
    if (SHIBYTE(__p[2]) >= 0)
    {
      v37 = __p;
    }

    else
    {
      v37 = __p[0];
    }

    *buf = 136315138;
    v42 = v37;
    _os_log_debug_impl(&dword_245396000, v4, OS_LOG_TYPE_DEBUG, "#gpsd,#supl,#posp Entered %s", buf, 0xCu);
  }

  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  for (i = 0; i != 64; i += 4)
  {
    v6 = &__src[i];
    *(v6 + 4) = -1;
    *(v6 + 10) = -1;
    *(v6 + 3) = -1;
    *(v6 + 20) = -1;
  }

  v7 = *(a1 + 1);
  __src[0] = v7;
  v8 = *a1;
  LOWORD(__src[1]) = *a1;
  LOBYTE(__src[66]) = *(a1 + 2);
  __src[67] = 1;
  __src[68] = 2 * (*a2 != 0);
  v39 = a2;
  __src[69] = a2[2];
  v9 = *(a1 + 8);
  BYTE2(__src[1]) = *(a1 + 8);
  HIBYTE(__src[1]) = *(a1 + 72);
  v10 = HIBYTE(__src[1]);
  if (HIBYTE(__src[1]))
  {
    v11 = 0;
    v12 = 16 * HIBYTE(__src[1]);
    v13 = a1 + 40;
    do
    {
      v14 = &__src[v11 / 4];
      *(v14 + 10) = *(v13 - 6);
      v15 = *(v13 - 1);
      v14[3] = *(v13 - 2);
      v14[4] = v15;
      *(v14 + 20) = *v13;
      *(v14 + 4) = *(v13 - 2);
      v11 += 16;
      v13 += 8;
    }

    while (v12 != v11);
  }

  v16 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
  {
    __p[0] = __PAIR64__(v7, 67109888);
    LOWORD(__p[1]) = 1024;
    *(&__p[1] + 2) = v9;
    HIWORD(__p[1]) = 1024;
    LODWORD(__p[2]) = v8;
    WORD2(__p[2]) = 1024;
    *(&__p[2] + 6) = v10;
    _os_log_debug_impl(&dword_245396000, v16, OS_LOG_TYPE_DEBUG, "#gpsd,#supl,#posp gpsTow,%u,GpsTowUncK,%u,GpsWeek,%u,,NumTowAssist,%u", __p, 0x1Au);
    if (!v10)
    {
      goto LABEL_15;
    }
  }

  else if (!v10)
  {
    goto LABEL_15;
  }

  v17 = 0;
  v18 = qword_2813CF018;
  v19 = &__src[2] + 2;
  do
  {
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v20 = *v19;
      v21 = *(v19 + 2);
      v22 = *(v19 + 6);
      v23 = v19[10];
      v24 = *(v19 - 1);
      LODWORD(__p[0]) = 134219264;
      *(__p + 4) = v17;
      WORD2(__p[1]) = 1024;
      *(&__p[1] + 6) = v20;
      WORD1(__p[2]) = 1024;
      HIDWORD(__p[2]) = v21;
      LOWORD(__p[3]) = 1024;
      *(&__p[3] + 2) = v22;
      HIWORD(__p[3]) = 1024;
      LODWORD(__p[4]) = v23;
      WORD2(__p[4]) = 1024;
      *(&__p[4] + 6) = v24;
      _os_log_impl(&dword_245396000, v18, OS_LOG_TYPE_DEFAULT, "Index,%zu,Satid,%u,antiSpoof,%u,Alert,%u,tlmRes,%u,tlmWord,%u", __p, 0x2Au);
      v18 = qword_2813CF018;
    }

    ++v17;
    v19 += 16;
  }

  while (v10 != v17);
LABEL_15:
  v25 = *(a1 + 26);
  if (v25)
  {
    MEMORY[0x245D6A0A0](v25, 0x1000C80737C248BLL);
  }

  *(a1 + 26) = 0;
  v26 = *(v39 + 4);
  v27 = qword_2813CF018;
  v28 = os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT);
  if (v26)
  {
    if (v28)
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&dword_245396000, v27, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl,#posp calling injectRefTime", __p, 2u);
    }

    v29 = sub_24547C334();
    memcpy(v29 + 18, __src, 0x118uLL);
    v30 = v29[12];
    __p[0] = MEMORY[0x277D85DD0];
    __p[1] = 3221225472;
    __p[2] = sub_245480708;
    __p[3] = &unk_278E80250;
    __p[4] = v29;
    memcpy(&__p[5], __src, 0x118uLL);
    dispatch_async(v30, __p);
  }

  else
  {
    if (v28)
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&dword_245396000, v27, OS_LOG_TYPE_DEFAULT, "#gpsd,#cplane,#posp calling injectRefTime", __p, 2u);
    }

    v31 = sub_2453B4548();
    memcpy(__p, __src, 0x118uLL);
    v32 = *(v31 + 160);
    if (!v32)
    {
      sub_2453A5EE4();
    }

    (*(*v32 + 48))(v32, __p);
  }

  v33 = v39[2];
  v34 = sub_24547C334();
  __p[1] = 0;
  __p[3] = 0;
  LODWORD(__p[0]) = v33;
  LOBYTE(__p[4]) = -1;
  __p[2] = 35;
  sub_24547D2BC(v34, __p);
  sub_2453B414C(__p, "gps_set_gps_time");
  v35 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
  {
    if (SHIBYTE(__p[2]) >= 0)
    {
      v38 = __p;
    }

    else
    {
      v38 = __p[0];
    }

    *buf = 136315138;
    v42 = v38;
    _os_log_debug_impl(&dword_245396000, v35, OS_LOG_TYPE_DEBUG, "#gpsd,#supl,#posp Leaving %s", buf, 0xCu);
  }

  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  v36 = *MEMORY[0x277D85DE8];
}

void sub_24546BF74(unsigned __int8 *a1, uint64_t a2)
{
  __p[199] = *MEMORY[0x277D85DE8];
  sub_2453B414C(__p, "gps_set_based_aid");
  v4 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
  {
    if (SHIBYTE(__p[2]) >= 0)
    {
      v72 = __p;
    }

    else
    {
      v72 = __p[0];
    }

    __src[0] = 136315138;
    *&__src[1] = v72;
    _os_log_debug_impl(&dword_245396000, v4, OS_LOG_TYPE_DEBUG, "#gpsd,#supl,#posp Entered %s", __src, 0xCu);
  }

  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  v5 = 0;
  LOBYTE(__src[0]) = -1;
  *&v6 = 0x8000000080000000;
  *(&v6 + 1) = 0x8000000080000000;
  do
  {
    v7 = &__src[v5];
    *(v7 + 1) = xmmword_245486E10;
    *(v7 + 5) = v6;
    *(v7 + 9) = xmmword_245486E20;
    *(v7 + 13) = 0x8000800080008000;
    v7[15] = 0x80000000;
    *(v7 + 32) = -1;
    v7[17] = -1;
    *(v7 + 72) = 127;
    v7[19] = -1;
    v5 += 24;
    *(v7 + 80) = -1;
  }

  while (v5 != 384);
  *&__src[385] = -1;
  __src[387] = -1;
  if (*a1)
  {
    v74 = a2;
    v8 = 0;
    v9 = 0;
    LOBYTE(__src[0]) = *a1;
    v10 = 96;
    do
    {
      v11 = a1;
      v12 = *(a1 + 1);
      v13 = v12 + v10;
      v14 = &__src[v8];
      *(v14 + 64) = *(v12 + v10 - 94);
      *(v14 + 60) = *(v12 + v10 - 96);
      *(v14 + 65) = *(v12 + v10 - 92);
      *(v14 + 61) = *(v12 + v10 - 91);
      v15 = *(v12 + v10 - 90);
      if (v15 >= 0x3F)
      {
        LOBYTE(v15) = 63;
      }

      *(v14 + 62) = v15;
      v14[17] = *(v13 - 86);
      *(v14 + 18) = *(v13 - 88);
      *(v14 + 19) = *(v13 - 66);
      *(v14 + 21) = *(v13 - 84);
      v16 = *(v13 - 68);
      *(v14 + 72) = *(v13 - 68);
      v17 = *(v13 - 64);
      *(v14 + 63) = v17;
      if (v16 >= 128)
      {
        v18 = qword_2813CF018;
        if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
        {
          LODWORD(__p[0]) = 67109120;
          HIDWORD(__p[0]) = v16;
          _os_log_error_impl(&dword_245396000, v18, OS_LOG_TYPE_ERROR, "#gpsd,#supl,#posp ephem_tgd,%d", __p, 8u);
          v12 = *(v11 + 1);
          v17 = *(v12 + v10 - 64);
        }
      }

      if (v17 > 127)
      {
        v19 = &qword_2813CF000;
        v20 = qword_2813CF018;
        if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
        {
          LODWORD(__p[0]) = 67109120;
          HIDWORD(__p[0]) = v17;
          _os_log_error_impl(&dword_245396000, v20, OS_LOG_TYPE_ERROR, "#gpsd,#supl,#posp ephem_af2,%d", __p, 8u);
          v12 = *(v11 + 1);
        }
      }

      else
      {
        *(v14 + 63) = v17;
        v19 = &qword_2813CF000;
      }

      v21 = (v12 + v10);
      v22 = *(v12 + v10 - 62);
      v23 = &__src[v8];
      *(v23 + 20) = v22;
      v14[1] = *(v21 - 15);
      *(v23 + 42) = *(v21 - 14);
      v23[2] = *(v21 - 13);
      *(v23 + 23) = *(v21 - 24);
      *(v23 + 24) = *(v21 - 20);
      v23[3] = *(v21 - 11);
      v23[4] = *(v21 - 9);
      *(v23 + 25) = *(v21 - 16);
      v23[19] = *(v21 - 30);
      *(v23 + 80) = *(v21 - 29);
      *(v23 + 26) = *(v21 - 14);
      *(v23 + 27) = *(v21 - 10);
      v23[5] = *(v21 - 6);
      v23[6] = *(v21 - 4);
      *(v23 + 29) = *v21;
      *(v23 + 28) = *(v21 - 6);
      *(v23 + 7) = *(v21 - 1);
      v24 = v19[3];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(__p[0]) = 0;
        _os_log_debug_impl(&dword_245396000, v24, OS_LOG_TYPE_DEBUG, "#gpsd,#supl,#posp NavModel", __p, 2u);
        v24 = v19[3];
      }

      a1 = v11;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = *(v14 + 65);
        v26 = *(v14 + 61);
        v27 = *(v14 + 62);
        v28 = v14[17];
        v29 = *(v14 + 18);
        v30 = *(v14 + 19);
        v31 = v14[21];
        v32 = v14[22];
        LODWORD(__p[0]) = 67111168;
        HIDWORD(__p[0]) = v9;
        LOWORD(__p[1]) = 1024;
        *(&__p[1] + 2) = v25;
        HIWORD(__p[1]) = 1024;
        LODWORD(__p[2]) = v26;
        WORD2(__p[2]) = 1024;
        *(&__p[2] + 6) = v27;
        WORD1(__p[3]) = 1024;
        HIDWORD(__p[3]) = v28;
        LOWORD(__p[4]) = 1024;
        *(&__p[4] + 2) = v29;
        HIWORD(__p[4]) = 1024;
        LODWORD(__p[5]) = v30;
        WORD2(__p[5]) = 1024;
        *(&__p[5] + 6) = v31;
        WORD1(__p[6]) = 1024;
        HIDWORD(__p[6]) = v32;
        _os_log_impl(&dword_245396000, v24, OS_LOG_TYPE_DEFAULT, "SatId,%u,EphemCodeOnL2,%u,EphemURA,%u,EphemSvHealth,%u,Epheml2pFlag,%u,EphemIodc,%u,EphemToc,%u,Reserved1,%u,Reserved2,%u", __p, 0x38u);
        v24 = v19[3];
      }

      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v33 = v14[23];
        v34 = v14[24];
        v35 = *(v14 + 72);
        v36 = *(v14 + 63);
        v37 = *(v23 + 20);
        v38 = v14[1];
        v39 = *(v23 + 21);
        v40 = *(v23 + 22);
        v41 = v23[2];
        v42 = *(v23 + 23);
        LODWORD(__p[0]) = 67111424;
        HIDWORD(__p[0]) = v33;
        LOWORD(__p[1]) = 1024;
        *(&__p[1] + 2) = v34;
        HIWORD(__p[1]) = 1024;
        LODWORD(__p[2]) = v35;
        WORD2(__p[2]) = 1024;
        *(&__p[2] + 6) = v36;
        WORD1(__p[3]) = 1024;
        HIDWORD(__p[3]) = v37;
        LOWORD(__p[4]) = 1024;
        *(&__p[4] + 2) = v38;
        HIWORD(__p[4]) = 1024;
        LODWORD(__p[5]) = v39;
        WORD2(__p[5]) = 1024;
        *(&__p[5] + 6) = v40;
        WORD1(__p[6]) = 1024;
        HIDWORD(__p[6]) = v41;
        LOWORD(__p[7]) = 1024;
        *(&__p[7] + 2) = v42;
        _os_log_impl(&dword_245396000, v24, OS_LOG_TYPE_DEFAULT, "Reserved3,%u,Reserved4,%u,EphemTgd,%d,EphemAf2,%d,EphemAf1,%d,EphemAf0,%d,EphemCrs,%d,EphemDeltaN,%d,EphemMo,%d,EphemCuc,%d", __p, 0x3Eu);
        v24 = v19[3];
      }

      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v43 = *(v23 + 24);
        v44 = v23[3];
        v45 = v23[4];
        v46 = *(v23 + 25);
        v47 = v23[19];
        v48 = *(v23 + 80);
        v49 = *(v23 + 26);
        v50 = *(v23 + 27);
        v51 = v23[5];
        v52 = v23[6];
        v53 = *(v23 + 29);
        v54 = *(v23 + 28);
        v55 = v23[7];
        v56 = v23[8];
        LODWORD(__p[0]) = 67112448;
        HIDWORD(__p[0]) = v43;
        LOWORD(__p[1]) = 1024;
        *(&__p[1] + 2) = v44;
        HIWORD(__p[1]) = 1024;
        LODWORD(__p[2]) = v45;
        WORD2(__p[2]) = 1024;
        *(&__p[2] + 6) = v46;
        WORD1(__p[3]) = 1024;
        HIDWORD(__p[3]) = v47;
        LOWORD(__p[4]) = 1024;
        *(&__p[4] + 2) = v48;
        HIWORD(__p[4]) = 1024;
        LODWORD(__p[5]) = v49;
        WORD2(__p[5]) = 1024;
        *(&__p[5] + 6) = v50;
        WORD1(__p[6]) = 1024;
        HIDWORD(__p[6]) = v51;
        LOWORD(__p[7]) = 1024;
        *(&__p[7] + 2) = v52;
        HIWORD(__p[7]) = 1024;
        LODWORD(__p[8]) = v53;
        WORD2(__p[8]) = 1024;
        *(&__p[8] + 6) = v54;
        WORD1(__p[9]) = 1024;
        HIDWORD(__p[9]) = v55;
        LOWORD(__p[10]) = 1024;
        *(&__p[10] + 2) = v56;
        _os_log_impl(&dword_245396000, v24, OS_LOG_TYPE_DEFAULT, "EphemCus,%d,Epheme,%u,EphemAPowerhalf,%u,EphemToe,%u,EphemFitFlag,%u,EphemAODO,%u,EphemCic,%d,EphemCis,%d,EphemOmegaA0,%d,EphemIo,%d,EphemIdot,%d,EphemCrc,%d,EphemW,%d,EphemOmegaAdot,%d", __p, 0x56u);
      }

      ++v9;
      v10 += 100;
      v8 += 24;
    }

    while (v9 < *v11);
    __src[385] = 1;
    __src[386] = 2 * (*v74 != 0);
    __src[387] = *(v74 + 8);
    v57 = *(v74 + 4);
    v58 = qword_2813CF018;
    v59 = os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT);
    if (v57)
    {
      if (v59)
      {
        LOWORD(__p[0]) = 0;
        _os_log_impl(&dword_245396000, v58, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl,#posp calling injectNavModel", __p, 2u);
      }

      v60 = sub_24547C334();
      v61 = v60[12];
      __p[0] = MEMORY[0x277D85DD0];
      __p[1] = 3221225472;
      __p[2] = sub_2454806BC;
      __p[3] = &unk_278E80230;
      __p[4] = v60;
      memcpy(&__p[5], __src, 0x610uLL);
      dispatch_async(v61, __p);
    }

    else
    {
      if (v59)
      {
        LOWORD(__p[0]) = 0;
        _os_log_impl(&dword_245396000, v58, OS_LOG_TYPE_DEFAULT, "#gpsd,#cplane,#posp calling injectNavModel", __p, 2u);
      }

      v66 = sub_2453B4548();
      memcpy(__p, __src, 0x610uLL);
      v67 = *(v66 + 128);
      if (!v67)
      {
        sub_2453A5EE4();
      }

      (*(*v67 + 48))(v67, __p);
    }

    v68 = *(v74 + 8);
    v69 = sub_24547C334();
    __p[1] = 0;
    __p[3] = 0;
    LODWORD(__p[0]) = v68;
    LOBYTE(__p[4]) = -1;
    __p[2] = 37;
    sub_24547D2BC(v69, __p);
    v70 = *(v11 + 1);
    if (v70)
    {
      MEMORY[0x245D6A0A0](v70, 0x1000C80A2FAA732);
    }

    *(v11 + 1) = 0;
    sub_2453B414C(__p, "gps_set_based_aid");
    v64 = qword_2813CF018;
    if (!os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_46;
    }

    if (SHIBYTE(__p[2]) >= 0)
    {
      v73 = __p;
    }

    else
    {
      v73 = __p[0];
    }

    *buf = 136315138;
    v76 = v73;
LABEL_57:
    _os_log_debug_impl(&dword_245396000, v64, OS_LOG_TYPE_DEBUG, "#gpsd,#supl,#posp Leaving %s", buf, 0xCu);
    goto LABEL_46;
  }

  v62 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
  {
    LOWORD(__p[0]) = 0;
    _os_log_error_impl(&dword_245396000, v62, OS_LOG_TYPE_ERROR, "#gpsd,#supl,#posp Zero Satellites", __p, 2u);
  }

  v63 = *(a1 + 1);
  if (v63)
  {
    MEMORY[0x245D6A0A0](v63, 0x1000C80A2FAA732);
  }

  *(a1 + 1) = 0;
  sub_2453B414C(__p, "gps_set_based_aid");
  v64 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
  {
    if (SHIBYTE(__p[2]) >= 0)
    {
      v65 = __p;
    }

    else
    {
      v65 = __p[0];
    }

    *buf = 136315138;
    v76 = v65;
    goto LABEL_57;
  }

LABEL_46:
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  v71 = *MEMORY[0x277D85DE8];
}

void sub_24546C8A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v56 = *MEMORY[0x277D85DE8];
  sub_2453B414C(&__p, "gps_set_gnss_ref_loc");
  v4 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
  {
    if ((SBYTE7(v48) & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    *buf = 136315138;
    v45 = p_p;
    _os_log_debug_impl(&dword_245396000, v4, OS_LOG_TYPE_DEBUG, "#gpsd,#supl,#posp Entered %s", buf, 0xCu);
  }

  if (SBYTE7(v48) < 0)
  {
    operator delete(__p);
  }

  v5 = *(a1 + 10);
  if (v5 == 9)
  {
    v6 = *(a1 + 16);
    v42 = *(a1 + 20);
    v7 = *(a1 + 12);
    v8 = *(a1 + 28);
    if (HIWORD(v8))
    {
      v13 = qword_2813CF018;
      if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
      {
        LODWORD(__p) = 67109120;
        HIDWORD(__p) = v8;
        _os_log_error_impl(&dword_245396000, v13, OS_LOG_TYPE_ERROR, "#gpsd,#supl,#posp altitude,%u", &__p, 8u);
        v8 = *(a1 + 28);
      }

      LOWORD(v9) = -1;
    }

    else
    {
      v9 = *(a1 + 28);
    }

    v41 = v9;
    v40 = *&v6 & 0x7FFFFFLL;
    if (*(a1 + 24) <= 0x45u)
    {
      v14 = 69;
    }

    else
    {
      v14 = *(a1 + 24);
    }

    if (*(a1 + 25) <= 0x45u)
    {
      v15 = 69;
    }

    else
    {
      v15 = *(a1 + 25);
    }

    v16 = *(a1 + 26);
    v17 = *(a1 + 32);
    v18 = *(a1 + 33);
    v19 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p) = 0;
      _os_log_impl(&dword_245396000, v19, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl,#posp Shape Type is Ellipsoid Point Uncertain Altitude", &__p, 2u);
      v19 = qword_2813CF018;
    }

    v20 = (v8 >> 15) & 1;
    v39 = v15;
    v21 = v7;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      __p = 0x904010B01;
      LOWORD(v47) = 1025;
      *(&v47 + 2) = v7 != 0;
      HIWORD(v47) = 1029;
      LODWORD(v48) = v40;
      WORD2(v48) = 1029;
      *(&v48 + 6) = v42;
      WORD5(v48) = 1029;
      HIDWORD(v48) = v41;
      LOWORD(v49) = 1025;
      v22 = v14;
      *(&v49 + 2) = v14;
      HIWORD(v49) = 1025;
      *v50 = v15;
      *&v50[4] = 1025;
      v23 = v16;
      *&v50[6] = v16;
      *&v50[10] = 1025;
      v51 = v20;
      v52 = 1025;
      v24 = v17;
      *v53 = v17;
      *&v53[4] = 1025;
      v25 = v18;
      v54 = v18;
      _os_log_impl(&dword_245396000, v19, OS_LOG_TYPE_DEFAULT, "v_ShapeType,%{private}u,v_SignOfLat,%{private}u,v_Latitude,%{sensitive}u,v_Longitude,%{sensitive}u,v_Altitude,%{sensitive}u,v_UncertSemiMajor,%{private}u,v_UncertSemiMinor,%{private}u,v_AxisBearing,%{private}u,v_DirectOfAlt,%{private}u,v_UncertAltitude,%{private}u,v_Confidence,%{private}u", &__p, 0x44u);
      v19 = qword_2813CF018;
    }

    else
    {
      v22 = v14;
      v23 = v16;
      v24 = v17;
      v25 = v18;
    }

    v26 = 2 * (*a3 != 0);
    v27 = *(a3 + 8);
    v28 = *(a3 + 4);
    v29 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
    if (v28)
    {
      if (v29)
      {
        LOWORD(__p) = 0;
        _os_log_impl(&dword_245396000, v19, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl,#posp calling injectRefLocation", &__p, 2u);
      }

      v30 = sub_24547C334();
      *(v30 + 112) = (v40 << 32) | (v41 << 16) | ((v21 != 0) << 8) | 9;
      *(v30 + 120) = v42;
      *(v30 + 124) = v20;
      *(v30 + 125) = v22;
      *(v30 + 126) = v39;
      *(v30 + 127) = v23;
      *(v30 + 128) = v24;
      *(v30 + 129) = v25;
      *(v30 + 132) = 1;
      *(v30 + 136) = v26;
      *(v30 + 140) = v27;
      v31 = *(v30 + 96);
      __p = MEMORY[0x277D85DD0];
      v47 = 3221225472;
      *&v48 = sub_245480754;
      *(&v48 + 1) = &unk_278E80270;
      v49 = v30;
      *v50 = (v40 << 32) | (v41 << 16) | ((v21 != 0) << 8) | 9;
      *&v50[8] = v42;
      LOBYTE(v51) = v20;
      BYTE1(v51) = v22;
      BYTE2(v51) = v39;
      HIBYTE(v51) = v23;
      LOBYTE(v52) = v24;
      HIBYTE(v52) = v25;
      *&v53[2] = 1;
      v54 = v26;
      v55 = v27;
      dispatch_async(v31, &__p);
    }

    else
    {
      if (v29)
      {
        LOWORD(__p) = 0;
        _os_log_impl(&dword_245396000, v19, OS_LOG_TYPE_DEFAULT, "#gpsd,#cplane,#posp calling injectRefLocation", &__p, 2u);
      }

      v32 = sub_2453B4548();
      __p = ((v40 << 32) | (v41 << 16) | ((v21 != 0) << 8) | 9);
      LODWORD(v47) = v42;
      BYTE4(v47) = v20;
      BYTE5(v47) = v22;
      BYTE6(v47) = v39;
      HIBYTE(v47) = v23;
      LOBYTE(v48) = v24;
      BYTE1(v48) = v25;
      DWORD1(v48) = 1;
      *(&v48 + 1) = __PAIR64__(v27, v26);
      v33 = *(v32 + 192);
      if (!v33)
      {
        sub_2453A5EE4();
      }

      (*(*v33 + 48))(v33, &__p);
    }

    v34 = *(a3 + 8);
    v35 = sub_24547C334();
    v47 = 0;
    LODWORD(__p) = v34;
    LOBYTE(v49) = -1;
    v48 = 0x24uLL;
    sub_24547D2BC(v35, &__p);
    sub_2453B414C(&__p, "gps_set_gnss_ref_loc");
    v11 = qword_2813CF018;
    if (!os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_37;
    }

    if ((SBYTE7(v48) & 0x80u) == 0)
    {
      v38 = &__p;
    }

    else
    {
      v38 = __p;
    }

    *buf = 136315138;
    v45 = v38;
LABEL_48:
    _os_log_debug_impl(&dword_245396000, v11, OS_LOG_TYPE_DEBUG, "#gpsd,#supl,#posp Leaving %s", buf, 0xCu);
    goto LABEL_37;
  }

  v10 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
  {
    LODWORD(__p) = 67109120;
    HIDWORD(__p) = v5;
    _os_log_error_impl(&dword_245396000, v10, OS_LOG_TYPE_ERROR, "#gpsd,#supl,#posp Shape,%u", &__p, 8u);
  }

  sub_2453B414C(&__p, "gps_set_gnss_ref_loc");
  v11 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
  {
    if ((SBYTE7(v48) & 0x80u) == 0)
    {
      v12 = &__p;
    }

    else
    {
      v12 = __p;
    }

    *buf = 136315138;
    v45 = v12;
    goto LABEL_48;
  }

LABEL_37:
  if (SBYTE7(v48) < 0)
  {
    operator delete(__p);
  }

  v36 = *MEMORY[0x277D85DE8];
}

uint64_t sub_24546CEC8(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  sub_2453B414C(__p, "gps_gnss_start_based_mode");
  v5 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
  {
    if (v12 >= 0)
    {
      v9 = __p;
    }

    else
    {
      v9 = __p[0];
    }

    *buf = 136315138;
    v14 = v9;
    _os_log_debug_impl(&dword_245396000, v5, OS_LOG_TYPE_DEBUG, "#gpsd,#supl,#posp Entered %s", buf, 0xCu);
  }

  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  sub_24546D048(a2, a3, 4);
  sub_2453B414C(__p, "gps_gnss_start_based_mode");
  v6 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
  {
    if (v12 >= 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    *buf = 136315138;
    v14 = v10;
    _os_log_debug_impl(&dword_245396000, v6, OS_LOG_TYPE_DEBUG, "#gpsd,#supl,#posp Leaving %s", buf, 0xCu);
  }

  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = *MEMORY[0x277D85DE8];
  return 4;
}

void sub_24546D048(unsigned __int16 *a1, uint64_t a2, int a3)
{
  v65 = *MEMORY[0x277D85DE8];
  sub_2453B414C(&__p, "sendPositionReq");
  v6 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
  {
    if (v49[7] >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    *buf = 136315138;
    v46 = p_p;
    _os_log_debug_impl(&dword_245396000, v6, OS_LOG_TYPE_DEBUG, "#gpsd,#supl,#posp Entered %s", buf, 0xCu);
  }

  if ((v49[7] & 0x80000000) != 0)
  {
    operator delete(__p);
  }

  v7 = *a1;
  if (a3 != 4)
  {
    if (a3 == 2)
    {
      v43 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v10 = 0;
      v8 = 0;
    }

    else
    {
      if (a3 == 1)
      {
        goto LABEL_7;
      }

      v43 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v10 = 0;
      v8 = -1;
    }

LABEL_31:
    v17 = qword_2813CF018;
    if (a1[26])
    {
      if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(__p) = 0;
        _os_log_impl(&dword_245396000, v17, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl,#posp AGPS constellation requested", &__p, 2u);
        v17 = qword_2813CF018;
      }

      v44 = 1;
    }

    else
    {
      v44 = 0;
    }

    v18 = *(a1 + 9);
    v19 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    if (v18 == 1)
    {
      if (v19)
      {
        LOWORD(__p) = 0;
        _os_log_impl(&dword_245396000, v17, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl,#posp UE can request for additional assistance data", &__p, 2u);
      }

      v40 = 1;
    }

    else
    {
      if (v19)
      {
        LOWORD(__p) = 0;
        _os_log_impl(&dword_245396000, v17, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl,#posp UE cannot request for additional assistance data", &__p, 2u);
      }

      v40 = 0;
    }

    v20 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(__p) = 67175169;
      HIDWORD(__p) = v8;
      LOWORD(v48) = 1025;
      *(&v48 + 2) = v43;
      HIWORD(v48) = 1025;
      *v49 = 255;
      _os_log_debug_impl(&dword_245396000, v20, OS_LOG_TYPE_DEBUG, "#gpsd,#supl,v_LocInfoType,%{private}u,v_LocShapeTypes,%{private}u,v_VelReqType,%{private}u", &__p, 0x14u);
      v20 = qword_2813CF018;
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      __p = 0x104010701;
      LOWORD(v48) = 1025;
      *(&v48 + 2) = v10;
      HIWORD(v48) = 1025;
      *v49 = v13;
      *&v49[4] = 1025;
      *&v49[6] = v12;
      *&v49[10] = 1025;
      *&v49[12] = v11;
      *&v49[16] = 1025;
      *&v49[18] = v7;
      *&v49[22] = 1025;
      v50 = v44;
      _os_log_impl(&dword_245396000, v20, OS_LOG_TYPE_DEFAULT, "ReportingAmount,%{private}u,HorAccuracy,%{private}u,HorAccConfidence,%{private}u,VertAccuracy,%{private}u,VertAccConfidence,%{private}u,RespTime,%{private}u,requestedGnss,%{private}u", &__p, 0x2Cu);
    }

    v41 = v11;
    v42 = v12;
    if (v8)
    {
      v21 = v8;
      if (v8 >= 3)
      {
        v25 = qword_2813CF018;
        v22 = v13;
        v23 = v7;
        if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
        {
          __p = -4227858176;
          _os_log_error_impl(&dword_245396000, v25, OS_LOG_TYPE_ERROR, "#gpsd,#supl,#posp LocInfoType,%u", &__p, 8u);
        }

        v24 = 0;
      }

      else
      {
        v22 = v13;
        v23 = v7;
        v24 = 29;
      }
    }

    else
    {
      v21 = 0;
      v22 = v13;
      v23 = v7;
      v24 = 32;
    }

    v26 = 2 * (*a2 != 0);
    v27 = *(a2 + 8);
    v28 = *(a2 + 4);
    v29 = qword_2813CF018;
    v30 = os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT);
    if (v28 == 1)
    {
      if (v30)
      {
        LOWORD(__p) = 0;
        _os_log_impl(&dword_245396000, v29, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl,#posp calling startPosRequest", &__p, 2u);
      }

      v31 = sub_24547C334();
      v32 = *(v31 + 96);
      __p = MEMORY[0x277D85DD0];
      v48 = 3221225472;
      *v49 = sub_245480790;
      *&v49[8] = &unk_278E80290;
      *&v49[16] = v31;
      LOWORD(v50) = 0;
      v51 = v21;
      v52 = v23;
      v53 = v10;
      v54 = -1;
      v55 = v22;
      v56 = v42;
      v57 = v41;
      v58 = -1;
      v59 = v40;
      v60 = v44;
      v61 = v43;
      v62 = 511;
      v63 = v26;
      v64 = v27;
      dispatch_async(v32, &__p);
    }

    else
    {
      if (v30)
      {
        LOWORD(__p) = 0;
        _os_log_impl(&dword_245396000, v29, OS_LOG_TYPE_DEFAULT, "#gpsd,#cplane,#posp calling startPosRequest", &__p, 2u);
      }

      v33 = sub_2453B4548();
      LOWORD(__p) = 0;
      HIDWORD(__p) = v21;
      LOWORD(v48) = v23;
      BYTE2(v48) = v10;
      HIDWORD(v48) = -1;
      v49[0] = v22;
      v49[1] = v42;
      v49[2] = v41;
      *&v49[4] = -1;
      *&v49[8] = v40;
      *&v49[12] = v44;
      v49[14] = v43;
      *&v49[15] = 511;
      *&v49[20] = v26;
      v50 = v27;
      sub_2453B4BC0(v33, &__p);
    }

    v34 = sub_24547C334();
    v48 = 0;
    *&v49[8] = 0;
    LODWORD(__p) = v27;
    v49[16] = v10;
    *v49 = v24;
    sub_24547D2BC(v34, &__p);
    sub_2453B414C(&__p, "sendPositionReq");
    v35 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
    {
      if (v49[7] >= 0)
      {
        v39 = &__p;
      }

      else
      {
        v39 = __p;
      }

      *buf = 136315138;
      v46 = v39;
      _os_log_debug_impl(&dword_245396000, v35, OS_LOG_TYPE_DEBUG, "#gpsd,#supl,#posp Leaving %s", buf, 0xCu);
    }

    if ((v49[7] & 0x80000000) != 0)
    {
      operator delete(__p);
    }

    goto LABEL_64;
  }

LABEL_7:
  if (a3 == 1)
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  v9 = *(a1 + 1);
  if (v9 + 1 >= 2)
  {
    v10 = (log(v9 / 10.0 + 1.0) * 10.5 + 0.5);
  }

  else
  {
    v10 = 0;
  }

  if (*(a1 + 20) == 255)
  {
    v13 = 0;
  }

  else
  {
    v13 = *(a1 + 20);
  }

  if (*(a1 + 6) == 1)
  {
    v14 = *(a1 + 7);
    if (v14 + 1 >= 2)
    {
      v12 = (log(v14 / 10.0 + 1.0) * 10.5 + 0.5);
    }

    else
    {
      v12 = 0;
    }

    if (*(a1 + 32) == 255)
    {
      v11 = 0;
    }

    else
    {
      v11 = *(a1 + 32);
    }
  }

  else
  {
    v11 = 0;
    v12 = 0;
  }

  v15 = 0;
  v16 = *(a1 + 48);
  if (!*(a1 + 48) || v16 == 255)
  {
    goto LABEL_30;
  }

  if ((v16 & 0xB7) != 0)
  {
    v15 = v16 & 0x37;
LABEL_30:
    v43 = v15;
    goto LABEL_31;
  }

  v37 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
  {
    LODWORD(__p) = 67109120;
    HIDWORD(__p) = v16;
    _os_log_error_impl(&dword_245396000, v37, OS_LOG_TYPE_ERROR, "#gpsd,#supl,#posp Shape,%u not supported", &__p, 8u);
  }

LABEL_64:
  v36 = *MEMORY[0x277D85DE8];
}

uint64_t sub_24546D760(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = sub_245473C70(a1);
  *v2 = &unk_28585A640;
  *(v2 + 360) = 1;
  *(v2 + 16) = 5;
  *(v2 + 32) = 5;
  v3 = operator new(0x200uLL, MEMORY[0x277D826F0]);
  if (v3)
  {
    *(v3 + 136) = 0u;
    *(v3 + 120) = 0u;
    *(v3 + 104) = 0u;
    *(v3 + 88) = 0u;
    *(v3 + 72) = 0u;
    *(v3 + 56) = 0u;
    *(v3 + 40) = 0u;
    *(v3 + 24) = 0u;
    *(v3 + 8) = 0u;
    v3[144] = -1;
    *(v3 + 168) = 0u;
    *(v3 + 184) = 0u;
    *(v3 + 200) = 0u;
    *(v3 + 216) = 0u;
    *(v3 + 232) = 0u;
    *(v3 + 248) = 0u;
    *(v3 + 63) = 0;
    *(v3 + 152) = 0u;
    *(v3 + 264) = 0u;
    *(v3 + 280) = 0u;
    *(v3 + 296) = 0u;
    *(v3 + 312) = 0u;
    *(v3 + 328) = 0u;
    *(v3 + 344) = 0u;
    *(v3 + 360) = 0u;
    *(v3 + 376) = 0u;
    *(v3 + 392) = 0u;
    *(v3 + 408) = 0u;
    *(v3 + 424) = 0u;
    *(v3 + 440) = 0u;
    *(v3 + 456) = 0u;
    *(v3 + 472) = 0u;
    *(v3 + 488) = 0u;
    *v3 = 0;
    *(a1 + 40) = v3;
    *(a1 + 20) = 0;
    *(a1 + 364) = 0;
  }

  else
  {
    *(a1 + 40) = 0;
    v4 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      v7[0] = 67109120;
      v7[1] = 1537;
      _os_log_error_impl(&dword_245396000, v4, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", v7, 8u);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t sub_24546D8E0(uint64_t a1)
{
  *a1 = &unk_28585A640;
  if (*(a1 + 32) == 5)
  {
    v2 = *(a1 + 40);
    if (v2)
    {
      sub_245454DA0(v2 + 152);
      v7 = (v2 + 120);
      sub_245467100(&v7);
      v7 = (v2 + 96);
      sub_245467100(&v7);
      v3 = *(v2 + 64);
      if (v3)
      {
        *(v2 + 72) = v3;
        operator delete(v3);
      }

      v4 = *(v2 + 40);
      if (v4)
      {
        *(v2 + 48) = v4;
        operator delete(v4);
      }

      v5 = *(v2 + 16);
      if (v5)
      {
        *(v2 + 24) = v5;
        operator delete(v5);
      }

      MEMORY[0x245D6A0D0](v2, 0x1030C40986846DALL);
    }

    *(a1 + 40) = 0;
  }

  return sub_245473D60(a1);
}

void sub_24546D9B8(uint64_t a1)
{
  sub_24546D8E0(a1);

  JUMPOUT(0x245D6A0D0);
}

void sub_24546D9F0(uint64_t a1, char a2)
{
  *(a1 + 20) = 1;
  (*(*a1 + 16))(a1);
  v4 = sub_245471CCC(*(a1 + 8));
  *(v4[5] + 456) = a2;
  *(v4[5] + 4) = 1;
  sub_2453A6258(__p, 3000);
  v5[0] = __p;
  v5[1] = 0;
  v6 = 0;
  (*(*v4 + 32))(v4, v5);
  sub_245454A88(v4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_24546DAD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24546DAF8(uint64_t a1)
{
  if (*(a1 + 364))
  {
    v1 = 6;
  }

  else
  {
    if (!*(a1 + 20))
    {
      return;
    }

    v1 = 7;
  }

  sub_245473DF8(a1, v1, *(a1 + 8));
}

void sub_24546DB20(uint64_t a1, int a2)
{
  v18 = *MEMORY[0x277D85DE8];
  *(a1 + 360) = 0;
  if (!a2)
  {
    sub_2453A6258(__p, 3000);
    v10[0] = __p;
    v10[1] = 0;
    v11 = 0;
    v4 = *(a1 + 8);
    if (v4)
    {
      sub_245454C74(a1 + 48, v4 + 64);
      v9[0] = v10;
      v9[1] = a1 + 24;
      if (!sub_245466354(v9))
      {
        v6 = sub_24547C334();
        v7 = *(*(a1 + 8) + 376);
        v15 = 0;
        v16[0] = 0;
        *buf = v7;
        v17 = -1;
        *&v16[1] = 5;
        v16[3] = 0;
        sub_24547D2BC(v6, buf);
        if (sub_24547463C(a1, v10) && *(*(a1 + 8) + 424) == 1)
        {
          *(a1 + 364) = 1;
          (*(*a1 + 16))(a1);
        }

        goto LABEL_16;
      }

      v5 = qword_2813CF018;
      if (!os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
      {
LABEL_16:
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        goto LABEL_18;
      }

      *buf = 67109120;
      v14 = 770;
    }

    else
    {
      v5 = qword_2813CF018;
      if (!os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_16;
      }

      *buf = 67109120;
      v14 = 513;
    }

    _os_log_error_impl(&dword_245396000, v5, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", buf, 8u);
    goto LABEL_16;
  }

  if (*(*(a1 + 8) + 424) != 1)
  {
LABEL_18:
    v8 = *MEMORY[0x277D85DE8];
    return;
  }

  v3 = *MEMORY[0x277D85DE8];

  sub_24546D9F0(a1, 4);
}

void sub_24546DD38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24546DD6C(uint64_t a1, uint64_t *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  sub_2454745A0(a1, a2);
  v4 = sub_24547473C();
  v5 = sub_245475B3C(v4, *(*(a1 + 8) + 72), *(a1 + 56));
  if (!v5)
  {
    v6 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      v21 = 67109120;
      v22 = 515;
      _os_log_error_impl(&dword_245396000, v6, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", &v21, 8u);
    }
  }

  v7 = *(a1 + 8);
  v8 = sub_24547473C();
  if (!sub_245475A68(v8, a1 + 248, v7 + 264))
  {
    v11 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      v21 = 67109120;
      v22 = 515;
      _os_log_error_impl(&dword_245396000, v11, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", &v21, 8u);
    }

    goto LABEL_11;
  }

  if (!v5)
  {
LABEL_11:
    sub_245454C74(*(a1 + 8) + 64, a1 + 48);
    v12 = a1;
    v13 = 12;
LABEL_12:
    sub_24546D9F0(v12, v13);
    goto LABEL_13;
  }

  v9 = *(a1 + 32);
  if (v9 == 5)
  {
    v16 = sub_24547C334();
    v17 = *(*(a1 + 8) + 376);
    v23 = 0;
    v24[0] = 0;
    v21 = v17;
    v25 = -1;
    *&v24[1] = 4;
    v24[3] = 0;
    sub_24547D2BC(v16, &v21);
    v18 = sub_24546A68C();
    v19 = sub_24546A7BC(v18, *(a1 + 40), *(a1 + 8));
    if (!v19)
    {
      goto LABEL_13;
    }

    v20 = v19;
    v12 = a1;
    if (v20 == 65529)
    {
      v13 = 8;
    }

    else
    {
      v13 = 0;
    }

    goto LABEL_12;
  }

  if (v9 != 6)
  {
    v12 = a1;
    v13 = 2;
    goto LABEL_12;
  }

  *(a1 + 20) = 1;
  (*(*a1 + 16))(a1);
  v10 = sub_245471CCC(*(a1 + 8));
  (*(*v10 + 40))(v10, a2);
LABEL_13:
  v14 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_24546DFC0(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v2 = *(a1 + 40);
    if (v2)
    {
      *(v2 + 8) = 4;
      *(*(a1 + 40) + 88) = 1;
      v3 = *(a1 + 40);
      v4 = (v3 + 12);
      if (v3 + 12 != (a2 + 8))
      {
        v6 = *(a2 + 8);
        v5 = *(a2 + 16);
        v7 = v5 - v6;
        v8 = v3[14];
        v9 = v3[12];
        if (v8 - v9 < (v5 - v6))
        {
          v10 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
          if (v9)
          {
            sub_245444754(v3 + 12);
            operator delete(*v4);
            v8 = 0;
            *v4 = 0;
            v3[13] = 0;
            v3[14] = 0;
          }

          if (v10 <= 0xAAAAAAAAAAAAAAALL)
          {
            v11 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3);
            v12 = 2 * v11;
            if (2 * v11 <= v10)
            {
              v12 = v10;
            }

            if (v11 >= 0x555555555555555)
            {
              v13 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v13 = v12;
            }

            if (v13 <= 0xAAAAAAAAAAAAAAALL)
            {
              sub_245444978((v3 + 12), v13);
            }
          }

          sub_2453A631C();
        }

        v15 = v3[13] - v9;
        if (v15 >= v7)
        {
          v16 = sub_24546E2A8(*(a2 + 8), *(a2 + 16), v9);
          v17 = v3[13];
          if (v17 != v16)
          {
            v18 = v3[13];
            do
            {
              v20 = *(v18 - 3);
              v18 -= 3;
              v19 = v20;
              if (v20)
              {
                *(v17 - 2) = v19;
                operator delete(v19);
              }

              v17 = v18;
            }

            while (v18 != v16);
          }

          v3[13] = v16;
        }

        else
        {
          sub_24546E2A8(v6, (v6 + v15), v9);
          v3[13] = sub_24546E1F8((v3 + 12), (v6 + v15), v5, v3[13]);
        }
      }
    }
  }

  else
  {
    v14 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      v22[0] = 67109120;
      v22[1] = 515;
      _os_log_error_impl(&dword_245396000, v14, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", v22, 8u);
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

void *sub_24546E1F8(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      sub_2453AE4E0(v4, *v6, v6[1], v6[1] - *v6);
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  sub_245444A8C(v8);
  return v4;
}

char **sub_24546E2A8(char **a1, char **a2, char **a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      if (v5 != a3)
      {
        sub_2453ADF3C(a3, *v5, v5[1], v5[1] - *v5);
      }

      v5 += 3;
      a3 += 3;
    }

    while (v5 != a2);
  }

  return a3;
}

uint64_t sub_24546E30C()
{
  v5 = *MEMORY[0x277D85DE8];
  if (qword_2813CED68 != -1)
  {
    dispatch_once(&qword_2813CED68, &unk_28585A688);
  }

  result = qword_2813CED60;
  if (!qword_2813CED60)
  {
    v2 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      v3 = 136315138;
      v4 = "GetInstance";
      _os_log_error_impl(&dword_245396000, v2, OS_LOG_TYPE_ERROR, "%s", &v3, 0xCu);
    }

    __assert_rtn("GetInstance", "SuplProvider.cpp", 60, "false && Memory allocation failure");
  }

  v1 = *MEMORY[0x277D85DE8];
  return result;
}

void *sub_24546E404()
{
  result = operator new(0x38uLL, MEMORY[0x277D826F0]);
  if (result)
  {
    *result = &unk_28585A6B8;
    result[1] = 0;
    *(result + 1) = 0u;
    *(result + 2) = 0u;
    result[6] = 0;
  }

  qword_2813CED60 = result;
  return result;
}

uint64_t sub_24546E45C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 24);
  if (v5)
  {
    while (*v5 != *(a3 + 4))
    {
      v5 = *(v5 + 8);
      if (!v5)
      {
        goto LABEL_4;
      }
    }

    sub_245472280(v5 - 8, a4);
  }

  else
  {
LABEL_4:
    v6 = sub_24547473C();
    sub_24547550C(v6, *(a3 + 4));
    v7 = sub_24546A68C();
    sub_245448DD0(off_27EE134B8, *(a3 + 4));
    sub_24546B0B4(v7);
    v8 = sub_24547C334();
    v9 = *(v8 + 80);
    if (v9)
    {
      dispatch_source_cancel(v9);
      *(v8 + 80) = 0;
    }

    v10 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      v13[0] = 67109120;
      v13[1] = 513;
      _os_log_error_impl(&dword_245396000, v10, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", v13, 8u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t sub_24546E578(uint64_t a1, int a2, int a3, uint64_t *a4, int a5)
{
  v20 = *MEMORY[0x277D85DE8];
  v10 = operator new(0x258uLL, MEMORY[0x277D826F0]);
  if (v10)
  {
    v11 = v10;
    sub_245471300(v10, a2, a3, a4);
    v12 = v11 + 8;
    v13 = *(a1 + 24);
    while (v13)
    {
      v14 = v13;
      v13 = *(v13 + 8);
      if (!v13)
      {
        *(v14 + 8) = v12;
        *(v11 + 16) = 0;
        if (!a5)
        {
          goto LABEL_12;
        }

        goto LABEL_11;
      }
    }

    *(v11 + 16) = *(a1 + 24);
    *(a1 + 24) = v12;
    if (!a5)
    {
      goto LABEL_12;
    }

LABEL_11:
    sub_2454715F0(v11);
    sub_245471650(v11);
LABEL_12:
    v16 = 0;
  }

  else
  {
    v15 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      v19[0] = 67109120;
      v19[1] = 1537;
      _os_log_error_impl(&dword_245396000, v15, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", v19, 8u);
    }

    v16 = -2;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

void sub_24546E6DC(uint64_t a1, int a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = *(a1 + 24);
    while (*v3 != a2)
    {
      v3 = *(v3 + 8);
      if (!v3)
      {
        goto LABEL_5;
      }
    }

    v6 = v3 - 8;
    while (*v2 != a2)
    {
      v2 = *(v2 + 8);
      if (!v2)
      {
        goto LABEL_13;
      }
    }

    sub_245479ABC(a1 + 8, v2);
LABEL_13:
    v7 = *(*v6 + 8);
    v8 = *MEMORY[0x277D85DE8];

    v7(v6);
  }

  else
  {
LABEL_5:
    v4 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      v9[0] = 67109120;
      v9[1] = 513;
      _os_log_error_impl(&dword_245396000, v4, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", v9, 8u);
    }

    v5 = *MEMORY[0x277D85DE8];
  }
}

void sub_24546E824(uint64_t a1, int a2, unsigned int a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 24);
  if (v3)
  {
    while (*v3 != a2)
    {
      v3 = *(v3 + 8);
      if (!v3)
      {
        goto LABEL_4;
      }
    }

    v6 = *MEMORY[0x277D85DE8];

    sub_245471B50(v3 - 8, a3);
  }

  else
  {
LABEL_4:
    v4 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      v7[0] = 67109120;
      v7[1] = 513;
      _os_log_error_impl(&dword_245396000, v4, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", v7, 8u);
    }

    v5 = *MEMORY[0x277D85DE8];
  }
}

void sub_24546E924(uint64_t a1, int a2, unsigned int a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 24);
  if (v3)
  {
    while (*v3 != a2)
    {
      v3 = *(v3 + 8);
      if (!v3)
      {
        goto LABEL_4;
      }
    }

    v6 = *MEMORY[0x277D85DE8];

    sub_245471E40(v3 - 8, a3);
  }

  else
  {
LABEL_4:
    v4 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      v7[0] = 67109120;
      v7[1] = 513;
      _os_log_error_impl(&dword_245396000, v4, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", v7, 8u);
    }

    v5 = *MEMORY[0x277D85DE8];
  }
}

void sub_24546EA24(uint64_t a1, int a2, char **a3)
{
  v60 = *MEMORY[0x277D85DE8];
  v6 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
  {
    v19 = a3[1] - *a3;
    *buf = 67109376;
    v35 = a2;
    v36 = 2048;
    v37 = v19;
    _os_log_debug_impl(&dword_245396000, v6, OS_LOG_TYPE_DEBUG, "#gpsd,#supl Data received Session id %d, size %lu", buf, 0x12u);
  }

  v7 = *(a1 + 24);
  if (!v7)
  {
LABEL_6:
    v8 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_245396000, v8, OS_LOG_TYPE_DEBUG, "#gpsd,#supl SuplProvider::ReceiveDataInd session not found", buf, 2u);
      v8 = qword_2813CF018;
    }

    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *buf = 67109120;
    v35 = 513;
    goto LABEL_28;
  }

  while (*v7 != a2)
  {
    v7 = *(v7 + 8);
    if (!v7)
    {
      goto LABEL_6;
    }
  }

  v10 = *a3;
  v11 = a3[1];
  if (*a3 == v11)
  {
    v8 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_245396000, v8, OS_LOG_TYPE_DEBUG, "#gpsd,#supl SuplProvider::ReceiveDataInd data empty", buf, 2u);
      v8 = qword_2813CF018;
    }

    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *buf = 67109120;
    v35 = 514;
LABEL_28:
    _os_log_error_impl(&dword_245396000, v8, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", buf, 8u);
    goto LABEL_9;
  }

  sub_24546FB28(a1 + 32, *(a1 + 40), *a3, v11, v11 - *a3);
  v12 = *(a1 + 40);
  v13 = *(a1 + 32);
  if ((v12 - v13) > 1)
  {
    v26 = 0;
    sub_24546EFB8(v13, v12, &v26);
    v16 = *(a1 + 32);
    v17 = *(a1 + 40);
    v18 = v17 - v16;
    if (v17 - v16 >= v26)
    {
      if (v18 < 0xBB9)
      {
        v30 = 0;
        v31 = 0;
        v32 = 0;
        sub_2453AE4E0(&v30, v16, v17, v18);
        sub_24546EFB8(v30, v31, &v33);
        v28[0] = &v30;
        v28[1] = 5;
        v29 = 0;
        sub_2454735D8(buf);
        if (sub_245473780(v28, buf))
        {
          v21 = qword_2813CF018;
          if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
          {
            *v27 = 0;
            _os_log_debug_impl(&dword_245396000, v21, OS_LOG_TYPE_DEBUG, "#gpsd,#supl, decoding of session ID failed", v27, 2u);
          }

          v22 = 0;
          v23 = 1;
        }

        else
        {
          v22 = v36;
          v23 = *buf == 0;
        }

        if (v58)
        {
          v59 = v58;
          operator delete(v58);
        }

        if (v56)
        {
          v57 = v56;
          operator delete(v56);
        }

        if (v54)
        {
          v55 = v54;
          operator delete(v54);
        }

        if (v52)
        {
          v53 = v52;
          operator delete(v52);
        }

        if (v50)
        {
          v51 = v50;
          operator delete(v50);
        }

        if (v48)
        {
          v49 = v48;
          operator delete(v48);
        }

        if (v46)
        {
          v47 = v46;
          operator delete(v46);
        }

        if (v44)
        {
          v45 = v44;
          operator delete(v44);
        }

        if (v42)
        {
          v43 = v42;
          operator delete(v42);
        }

        if (__p)
        {
          v41 = __p;
          operator delete(__p);
        }

        if (v38)
        {
          v39 = v38;
          operator delete(v38);
        }

        if (v30)
        {
          v31 = v30;
          operator delete(v30);
        }

        if (!v23)
        {
          v24 = *(a1 + 24);
          if (v24)
          {
            while (*v24 != v22)
            {
              v24 = *(v24 + 8);
              if (!v24)
              {
                goto LABEL_62;
              }
            }

            v7 = v24;
          }

          else
          {
LABEL_62:
            v25 = qword_2813CF018;
            if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
            {
              *buf = 67109120;
              v35 = 513;
              _os_log_error_impl(&dword_245396000, v25, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", buf, 8u);
            }
          }
        }

        sub_245471EE8(v7 - 8, (a1 + 32));
      }

      else
      {
        v20 = qword_2813CF018;
        if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&dword_245396000, v20, OS_LOG_TYPE_DEBUG, "#gpsd,#supl SuplProvider::ReceiveDataInd buffer size more than SUPL_ENCODE_BUFFER_SIZE", buf, 2u);
          v20 = qword_2813CF018;
        }

        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          v35 = 514;
          _os_log_error_impl(&dword_245396000, v20, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", buf, 8u);
        }
      }

      *(a1 + 40) = *(a1 + 32);
    }

    else
    {
      v14 = qword_2813CF018;
      if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        v15 = "#gpsd,#supl SuplProvider::ReceiveDataInd buffer size less than message length, waiting for other fragments";
        goto LABEL_21;
      }
    }
  }

  else
  {
    v14 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      v15 = "#gpsd,#supl SuplProvider::ReceiveDataInd buffer size < 2 bytes, wait for more messages";
LABEL_21:
      _os_log_debug_impl(&dword_245396000, v14, OS_LOG_TYPE_DEBUG, v15, buf, 2u);
    }
  }

LABEL_9:
  v9 = *MEMORY[0x277D85DE8];
}

void sub_24546EF80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  sub_24546FABC(&a19);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_24546EFB8(uint64_t a1, uint64_t a2, _WORD *a3)
{
  __p = 0;
  v9 = 0;
  v10 = 0;
  sub_2453AE4E0(&__p, a1, a2, a2 - a1);
  v6[0] = &__p;
  v6[1] = 0;
  v7 = 0;
  if (sub_245446218(v6, 0, 0xFFFFu, a3))
  {
    v4 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
    {
      *v5 = 0;
      _os_log_debug_impl(&dword_245396000, v4, OS_LOG_TYPE_DEBUG, "#gpsd,#supl, decoding of message length failed", v5, 2u);
    }
  }

  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }
}

void sub_24546F074(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24546F090(uint64_t a1, unsigned int a2)
{
  v10 = *MEMORY[0x277D85DE8];
  sub_245478884();
  if (a2 > 0xFFFE)
  {
    LOBYTE(v8) = 0;
    v9 = a2 - 0xFFFF;
    (**a1)(a1, 0, &v8, 1);
LABEL_8:
    v6 = *MEMORY[0x277D85DE8];
    return;
  }

  v4 = *(a1 + 24);
  if (!v4)
  {
LABEL_5:
    v5 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      v8 = 67109120;
      v9 = 513;
      _os_log_error_impl(&dword_245396000, v5, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", &v8, 8u);
    }

    goto LABEL_8;
  }

  while (*v4 != a2)
  {
    v4 = *(v4 + 8);
    if (!v4)
    {
      goto LABEL_5;
    }
  }

  v7 = *MEMORY[0x277D85DE8];

  sub_245471F6C(v4 - 8);
}

uint64_t sub_24546F1E8(void *a1, uint64_t a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a1[3];
  if (v4)
  {
    v5 = a1[3];
    while (*v5 != a2)
    {
      v5 = *(v5 + 8);
      if (!v5)
      {
        goto LABEL_5;
      }
    }

    v18[0] = 0;
    memset(&v19, 0, sizeof(v19));
    v20 = 7275;
    v7 = sub_245479234();
    if (sub_245479574(v7, v18, a2, *(v5 + 588)))
    {
      v8 = qword_2813CF018;
      if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v24 = 770;
        _os_log_error_impl(&dword_245396000, v8, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", buf, 8u);
      }

      v9 = a1[3];
      if (v9)
      {
        while (*v9 != a2)
        {
          v9 = *(v9 + 8);
          if (!v9)
          {
            goto LABEL_22;
          }
        }

        a1[5] = a1[4];
      }

LABEL_22:
      sub_24546E6DC(a1, a2);
      v10 = 0;
    }

    else
    {
      v27 = 0;
      v28 = 0;
      memset(&v25, 0, sizeof(v25));
      v26 = 0;
      if ((v18[0] - 1) >= 4u)
      {
        v12 = qword_2813CF018;
        if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
        {
          *v21 = 67109120;
          v22 = 515;
          _os_log_error_impl(&dword_245396000, v12, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", v21, 8u);
        }

        LOBYTE(v11) = 0;
      }

      else
      {
        v11 = 0x2030301u >> (8 * ((v18[0] - 1) & 0x1F));
      }

      buf[0] = v11;
      std::string::operator=(&v25, &v19);
      v26 = v20;
      v13 = *(v5 + 588);
      v27 = 0;
      v28 = v13;
      v14 = sub_24547C334();
      if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_24546FD48(&__p, v19.__r_.__value_.__l.__data_, v19.__r_.__value_.__l.__size_);
      }

      else
      {
        __p = v19;
      }

      sub_24547CB70(v14, &__p, v20, a2);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v25.__r_.__value_.__l.__data_);
      }

      v10 = 1;
    }

    if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v19.__r_.__value_.__l.__data_);
    }
  }

  else
  {
LABEL_5:
    v6 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v24 = 2305;
      _os_log_error_impl(&dword_245396000, v6, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", buf, 8u);
      v4 = a1[3];
    }

    while (v4)
    {
      if (*v4 == a2)
      {
        a1[5] = a1[4];
        break;
      }

      v4 = *(v4 + 8);
    }

    sub_24546E6DC(a1, a2);
    v10 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v10;
}

void sub_24546F4EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_24546F540(uint64_t a1, int a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 24);
  if (v2)
  {
    while (*v2 != a2)
    {
      v2 = *(v2 + 8);
      if (!v2)
      {
        goto LABEL_4;
      }
    }

    v6 = sub_24547C334();
    v7 = *(v6 + 80);
    if (v7)
    {
      dispatch_source_cancel(v7);
      *(v6 + 80) = 0;
    }

    sub_24546E6DC(a1, *(v2 + 368));
    v8 = *MEMORY[0x277D85DE8];

    sub_245445CA4();
  }

  else
  {
LABEL_4:
    v4 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      v9[0] = 67109120;
      v9[1] = 513;
      _os_log_error_impl(&dword_245396000, v4, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", v9, 8u);
    }

    v5 = *MEMORY[0x277D85DE8];
  }
}

BOOL sub_24546F66C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 24);
  if (v3)
  {
    while (*v3 != a2)
    {
      v3 = *(v3 + 8);
      if (!v3)
      {
        goto LABEL_4;
      }
    }

    v8 = sub_24547C334();
    sub_24547C960(v8, a2, a3);
    result = 1;
  }

  else
  {
LABEL_4:
    v6 = qword_2813CF018;
    result = os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR);
    if (result)
    {
      v10[0] = 67109120;
      v10[1] = 513;
      _os_log_error_impl(&dword_245396000, v6, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", v10, 8u);
      result = 0;
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_24546F74C(uint64_t a1, int a2, uint64_t a3)
{
  __p[4] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 24);
  if (v3)
  {
    while (*v3 != a2)
    {
      v3 = *(v3 + 8);
      if (!v3)
      {
        goto LABEL_4;
      }
    }

    memset(__p, 0, 25);
    v11 = 0u;
    *v10 = 0u;
    if (a3)
    {
      LOWORD(v9[0]) = *a3;
      v10[0] = *(a3 + 8);
      if (v9 != a3)
      {
        sub_2453ADF3C(&v10[1], *(a3 + 16), *(a3 + 24), *(a3 + 24) - *(a3 + 16));
        sub_2453ADF3C(__p, *(a3 + 40), *(a3 + 48), *(a3 + 48) - *(a3 + 40));
      }

      LOBYTE(__p[3]) = *(a3 + 64);
    }

    LOWORD(v9[0]) = 1;
    sub_245472204(v3 - 8, v9);
    sub_2454715F0(v3 - 8);
    sub_245471650(v3 - 8);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v10[1])
    {
      *&v11 = v10[1];
      operator delete(v10[1]);
    }

    v6 = 0;
  }

  else
  {
LABEL_4:
    v5 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      v9[0] = 67109120;
      v9[1] = 513;
      _os_log_error_impl(&dword_245396000, v5, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", v9, 8u);
    }

    v6 = -3;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

void sub_24546F8DC(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    v4 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      v9 = 67109120;
      v10 = 515;
      goto LABEL_13;
    }

LABEL_8:
    v5 = *MEMORY[0x277D85DE8];
    return;
  }

  v2 = *(a1 + 24);
  if (!v2)
  {
LABEL_5:
    v4 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      v9 = 67109120;
      v10 = 513;
LABEL_13:
      _os_log_error_impl(&dword_245396000, v4, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", &v9, 8u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  while (*v2 != *(a2 + 28))
  {
    v2 = *(v2 + 8);
    if (!v2)
    {
      goto LABEL_5;
    }
  }

  *(v2 + 416) = *(a2 + 32);
  v6 = sub_24546A68C();
  v7 = *(a2 + 24);
  v8 = *MEMORY[0x277D85DE8];

  sub_24546B168(v6, a2, v7, v2 - 8);
}

void sub_24546FA38(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    do
    {
      v3 = *(v1 + 8);
      v5[0] = 0;
      v6 = *(v1 + 368);
      (**a1)(a1, 0, v5, 0);
      v1 = v3;
    }

    while (v3);
  }

  v4 = sub_24547473C();
  sub_245476EF8(v4);
}

void *sub_24546FABC(void *a1)
{
  v2 = a1[36];
  if (v2)
  {
    a1[37] = v2;
    operator delete(v2);
  }

  v3 = a1[33];
  if (v3)
  {
    a1[34] = v3;
    operator delete(v3);
  }

  v4 = a1[30];
  if (v4)
  {
    a1[31] = v4;
    operator delete(v4);
  }

  v5 = a1[25];
  if (v5)
  {
    a1[26] = v5;
    operator delete(v5);
  }

  sub_245461640((a1 + 3));
  return a1;
}

char *sub_24546FB28(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v6 = a5;
  v7 = __src;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  if (v10 - v9 >= a5)
  {
    v15 = v9 - __dst;
    if (v9 - __dst >= a5)
    {
      v19 = &__dst[a5];
      v20 = &v9[-a5];
      v21 = *(a1 + 8);
      if (v9 >= a5)
      {
        do
        {
          v22 = *v20++;
          *v21++ = v22;
        }

        while (v20 != v9);
      }

      *(a1 + 8) = v21;
      if (v9 != v19)
      {
        memmove(&__dst[a5], __dst, v9 - v19);
      }

      v23 = v5;
      v24 = v7;
      v25 = v6;
    }

    else
    {
      v16 = &__src[v15];
      if (&__src[v15] == a4)
      {
        v17 = *(a1 + 8);
        v18 = v17;
      }

      else
      {
        v17 = (&v9[a4] - v16);
        v18 = *(a1 + 8);
        do
        {
          v34 = *v16++;
          *v18++ = v34;
        }

        while (v16 != a4);
      }

      *(a1 + 8) = v17;
      if (v15 < 1)
      {
        return v5;
      }

      v35 = &__dst[a5];
      v36 = &v17[-a5];
      v37 = v17;
      if (&v17[-a5] < v9)
      {
        do
        {
          v38 = *v36++;
          *v37++ = v38;
        }

        while (v36 != v9);
      }

      *(a1 + 8) = v37;
      if (v18 != v35)
      {
        memmove(&__dst[a5], __dst, v17 - v35);
      }

      v23 = v5;
      v24 = v7;
      v25 = v15;
    }

    memmove(v23, v24, v25);
    return v5;
  }

  v11 = *a1;
  v12 = &v9[a5 - *a1];
  if (v12 < 0)
  {
    sub_2453A631C();
  }

  v13 = v10 - v11;
  if (2 * v13 > v12)
  {
    v12 = 2 * v13;
  }

  if (v13 >= 0x3FFFFFFFFFFFFFFFLL)
  {
    v14 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v14 = v12;
  }

  if (v14)
  {
    operator new();
  }

  v26 = (__dst - v11);
  v27 = (__dst - v11 + a5);
  v28 = (__dst - v11);
  do
  {
    v29 = *v7++;
    *v28++ = v29;
    --v6;
  }

  while (v6);
  v30 = *(a1 + 8) - __dst;
  memcpy(v27, __dst, v30);
  v31 = &v27[v30];
  *(a1 + 8) = v5;
  v32 = *a1;
  v33 = &v26[*a1 - v5];
  memcpy(v33, *a1, &v5[-*a1]);
  *a1 = v33;
  *(a1 + 8) = v31;
  *(a1 + 16) = 0;
  if (v32)
  {
    operator delete(v32);
  }

  return v26;
}

void *sub_24546FD48(_BYTE *__dst, void *__src, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_2453A59DC();
  }

  __dst[23] = a3;
  v3 = a3 + 1;

  return memmove(__dst, __src, v3);
}

void sub_24546FDEC(_DWORD *a1, int a2, int a3, int a4, int a5)
{
  v18 = *MEMORY[0x277D85DE8];
  v10 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v13[0]) = 0;
    _os_log_impl(&dword_245396000, v10, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl, Entered SuplTimer::Init", v13, 2u);
  }

  *a1 = a2;
  a1[2] = a5;
  v11 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
  {
    v13[0] = 67109632;
    v13[1] = a2;
    v14 = 1024;
    v15 = a5;
    v16 = 1024;
    v17 = a3;
    _os_log_impl(&dword_245396000, v11, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl, requestID,%u,Timertype,%u,User Type,%u", v13, 0x14u);
    v11 = qword_2813CF018;
  }

  a1[3] = a4;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v13[0]) = 0;
    _os_log_impl(&dword_245396000, v11, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl, Leaving SuplTimer::Init", v13, 2u);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void sub_24546FF4C(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_245396000, v2, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl, Entered SuplTimer::Start", buf, 2u);
  }

  v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, -7);
  if (!v3)
  {
    v4 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_245396000, v4, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl, timer queueAttr", buf, 2u);
    }
  }

  v5 = dispatch_queue_create("TimerQueue", v3);
  *(a1 + 24) = v5;
  if (!v5)
  {
    v14 = qword_2813CF018;
    if (!os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    *buf = 0;
    v12 = "#gpsd,#supl, Queue creation failed";
LABEL_16:
    v13 = v14;
    goto LABEL_17;
  }

  v6 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v5);
  *(a1 + 16) = v6;
  if (!v6)
  {
    v14 = qword_2813CF018;
    if (!os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    *buf = 0;
    v12 = "#gpsd,#supl, fStopCompletedTimer NULL";
    goto LABEL_16;
  }

  v7 = v6;
  v8 = dispatch_time(0, 1000000000 * *(a1 + 12));
  dispatch_source_set_timer(v7, v8, 0xFFFFFFFFFFFFFFFFLL, 0x1DCD6500uLL);
  v9 = *(a1 + 16);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = sub_2454701F4;
  handler[3] = &unk_278E36C40;
  handler[4] = a1;
  dispatch_source_set_event_handler(v9, handler);
  *(a1 + 4) = 1;
  dispatch_resume(*(a1 + 16));
  v10 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 12);
    *buf = 67109120;
    v18 = v11;
    _os_log_impl(&dword_245396000, v10, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl, timer started for %d", buf, 8u);
    v10 = qword_2813CF018;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v12 = "#gpsd,#supl, Leaving SuplTimer::Start";
    v13 = v10;
LABEL_17:
    _os_log_impl(&dword_245396000, v13, OS_LOG_TYPE_DEFAULT, v12, buf, 2u);
  }

LABEL_18:
  v15 = *MEMORY[0x277D85DE8];
}

void sub_2454701F4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *v1;
  v3 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_245396000, v3, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl, Entered SuplTimer::OnTimer", buf, 2u);
    v3 = qword_2813CF018;
  }

  if (v1[1])
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_245396000, v3, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl, SuplTimer::OnTimer, timer running", v6, 2u);
    }

    v4 = sub_24546E30C();
    (*(*v4 + 48))(v4, v2);
    v3 = qword_2813CF018;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_245396000, v3, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl, Leaving SuplTimer::OnTimer", v5, 2u);
  }
}

void sub_245470314(uint64_t a1)
{
  v2 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_245396000, v2, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl, Entered SuplTimer::Stop", buf, 2u);
    v2 = qword_2813CF018;
  }

  if (*(a1 + 4))
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_245396000, v2, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl, timer running", v6, 2u);
    }

    v3 = *(a1 + 24);
    if (v3)
    {
      dispatch_release(v3);
      *(a1 + 24) = 0;
    }

    v4 = *(a1 + 16);
    if (v4)
    {
      dispatch_source_cancel(v4);

      *(a1 + 16) = 0;
    }

    *(a1 + 4) = 0;
    v2 = qword_2813CF018;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_245396000, v2, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl, Leaving SuplTimer::Stop", v5, 2u);
  }
}

void sub_245470430(uint64_t a1, int a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = a2;
    _os_log_impl(&dword_245396000, v4, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl, Entered SuplTimer::SetTimeout %d", v7, 8u);
  }

  if (*(a1 + 4))
  {
    sub_245470314(a1);
  }

  *(a1 + 12) = a2;
  v5 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v7[0]) = 0;
    _os_log_impl(&dword_245396000, v5, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl, Leaving SuplTimer::SetTimeout", v7, 2u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void sub_24547052C(uint64_t a1)
{
  v2 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_245396000, v2, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl, Entered SuplTimer::Release", buf, 2u);
  }

  if (*(a1 + 4))
  {
    sub_245470314(a1);
  }

  else
  {
    v3 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_245396000, v3, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl, timer not running", v6, 2u);
    }
  }

  v4 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_245396000, v4, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl, Leaving SuplTimer::Release", v5, 2u);
  }
}

uint64_t sub_245470628(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = sub_245473C70(a1);
  *v2 = &unk_28585A728;
  *(v2 + 360) = 0;
  *(v2 + 16) = 3;
  *(v2 + 32) = 4;
  v3 = operator new(0x518uLL, MEMORY[0x277D826F0]);
  if (!v3)
  {
    *(a1 + 40) = 0;
    v5 = qword_2813CF018;
    if (!os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v8 = 67109120;
    v9 = 1537;
LABEL_9:
    _os_log_error_impl(&dword_245396000, v5, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", &v8, 8u);
    goto LABEL_7;
  }

  *v3 = 0u;
  *(v3 + 1) = xmmword_24548B320;
  *(v3 + 4) = 1;
  *(v3 + 10) = 0;
  *(v3 + 60) = 0;
  *(v3 + 21) = 0;
  *(v3 + 68) = 0u;
  v3[44] = 2;
  *(v3 + 6) = 0;
  *(v3 + 14) = 0;
  *(v3 + 22) = 0;
  *(v3 + 88) = 0u;
  *(v3 + 104) = 0u;
  *(v3 + 120) = 0u;
  *(v3 + 136) = 0u;
  *(v3 + 152) = 0u;
  v3[168] = 0;
  *(v3 + 46) = -1;
  *(v3 + 204) = 0;
  *(v3 + 209) = 0;
  *(v3 + 188) = 0;
  *(v3 + 196) = 0;
  *(v3 + 28) = 0;
  *(v3 + 58) = 0;
  *(v3 + 236) = -1;
  *(v3 + 31) = 0;
  *(v3 + 128) = 0;
  *(v3 + 130) = -1;
  *(v3 + 34) = 0;
  *(v3 + 35) = 0;
  *(v3 + 286) = 0;
  *(v3 + 33) = 0;
  *(v3 + 38) = 0;
  *(v3 + 39) = 0;
  *(v3 + 37) = 0;
  v3[320] = 1;
  *(v3 + 42) = 0;
  *(v3 + 43) = 0;
  *(v3 + 22) = 0u;
  v3[372] = -1;
  *(v3 + 96) = 0;
  *(v3 + 47) = 0;
  v3[388] = -1;
  *(v3 + 195) = 0;
  v3[392] = 0;
  *(v3 + 92) = 0;
  *(v3 + 50) = 255;
  *(v3 + 408) = 0u;
  *(v3 + 424) = 0u;
  *(v3 + 440) = 0u;
  *(v3 + 456) = 0u;
  *(v3 + 472) = 0u;
  *(v3 + 488) = 0u;
  *(v3 + 504) = 0u;
  *(v3 + 520) = 0u;
  *(v3 + 536) = 0u;
  *(v3 + 552) = 0u;
  *(v3 + 568) = 0u;
  *(v3 + 584) = 0u;
  *(v3 + 600) = 0u;
  *(v3 + 616) = 0u;
  *(v3 + 632) = 0u;
  *(v3 + 648) = 0u;
  *(v3 + 664) = 0u;
  *(v3 + 680) = 0u;
  *(v3 + 696) = 0u;
  *(v3 + 712) = 0u;
  *(v3 + 728) = 0u;
  *(v3 + 744) = 0u;
  *(v3 + 95) = 0;
  *(v3 + 82) = 0;
  *(v3 + 888) = 0u;
  *(v3 + 904) = 0u;
  *(v3 + 776) = 0u;
  *(v3 + 792) = 0u;
  *(v3 + 808) = 0u;
  *(v3 + 824) = 0u;
  *(v3 + 840) = 0u;
  *(v3 + 856) = 0u;
  *(v3 + 872) = 0u;
  v3[912] = -1;
  *(v3 + 192) = 0;
  *(v3 + 920) = 0u;
  *(v3 + 936) = 0u;
  *(v3 + 952) = 0u;
  *(v3 + 968) = 0u;
  *(v3 + 984) = 0u;
  *(v3 + 1000) = 0u;
  *(v3 + 1016) = 0u;
  *(v3 + 1032) = 0u;
  *(v3 + 1048) = 0u;
  *(v3 + 1064) = 0u;
  *(v3 + 1080) = 0u;
  *(v3 + 1096) = 0u;
  *(v3 + 1112) = 0u;
  *(v3 + 1128) = 0u;
  *(v3 + 1144) = 0u;
  *(v3 + 1160) = 0u;
  *(v3 + 1176) = 0u;
  *(v3 + 1192) = 0u;
  *(v3 + 1208) = 0u;
  *(v3 + 1224) = 0u;
  *(v3 + 1240) = 0u;
  *(v3 + 1256) = 0u;
  *(v3 + 1272) = 0u;
  *(v3 + 1288) = 0u;
  *(a1 + 40) = v3;
  v4 = operator new(1uLL, MEMORY[0x277D826F0]);
  if (!v4)
  {
    *(a1 + 368) = 0;
    v5 = qword_2813CF018;
    if (!os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v8 = 67109120;
    v9 = 1537;
    goto LABEL_9;
  }

  *(a1 + 368) = v4;
LABEL_7:
  v6 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t sub_245470900(uint64_t a1)
{
  *a1 = &unk_28585A728;
  if (*(a1 + 32) == 4)
  {
    v2 = *(a1 + 40);
    if (v2)
    {
      v3 = *(v2 + 1280);
      if (v3)
      {
        *(v2 + 1288) = v3;
        operator delete(v3);
      }

      sub_245454DA0(v2 + 920);
      v11 = (v2 + 888);
      sub_245467100(&v11);
      v11 = (v2 + 864);
      sub_245467100(&v11);
      v4 = *(v2 + 832);
      if (v4)
      {
        *(v2 + 840) = v4;
        operator delete(v4);
      }

      v5 = *(v2 + 808);
      if (v5)
      {
        *(v2 + 816) = v5;
        operator delete(v5);
      }

      v6 = *(v2 + 784);
      if (v6)
      {
        *(v2 + 792) = v6;
        operator delete(v6);
      }

      sub_245454DA0(v2 + 408);
      v7 = *(v2 + 336);
      if (v7)
      {
        *(v2 + 344) = v7;
        operator delete(v7);
      }

      sub_245464AB8(v2 + 168);
      v8 = *(v2 + 144);
      if (v8)
      {
        *(v2 + 152) = v8;
        operator delete(v8);
      }

      MEMORY[0x245D6A0D0](v2, 0x1030C408837E473);
    }

    *(a1 + 40) = 0;
    v9 = *(a1 + 368);
    if (v9)
    {
      MEMORY[0x245D6A0D0](v9, 0xC400A2AC0F1);
    }

    *(a1 + 368) = 0;
  }

  return sub_245473D60(a1);
}

void sub_245470A34(uint64_t a1)
{
  sub_245470900(a1);

  JUMPOUT(0x245D6A0D0);
}

void sub_245470A6C(uint64_t a1)
{
  if (*(a1 + 360))
  {
    *(a1 + 360) = 0;
    v2 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
    {
      *v3 = 0;
      _os_log_debug_impl(&dword_245396000, v2, OS_LOG_TYPE_DEBUG, "#gpsd,#supl SuplResponseRecd::UpdateState, update state to Supl_PosInit_Sent", v3, 2u);
    }

    sub_245473DF8(a1, 4, *(a1 + 8));
  }
}

uint64_t sub_245470AF8(uint64_t a1)
{
  v113 = *MEMORY[0x277D85DE8];
  sub_2453A6258(v53, 3000);
  v51[0] = v53;
  v51[1] = 0;
  v52 = 0;
  v2 = *(a1 + 40);
  v3 = *(a1 + 8);
  if (v3)
  {
    *(v2 + 16) = *(v3 + 448);
    v4 = *(v3 + 464);
    v5 = *(v3 + 480);
    v6 = *(v3 + 496);
    *(v2 + 80) = *(v3 + 512);
    *(v2 + 48) = v5;
    *(v2 + 64) = v6;
    *(v2 + 32) = v4;
  }

  else
  {
    v16 = qword_2813CF018;
    if (!os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *buf = 67109120;
    *&buf[4] = 513;
    _os_log_error_impl(&dword_245396000, v16, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", buf, 8u);
  }

  v7 = *(a1 + 8);
  if (v7)
  {
    v54 = *(v7 + 520);
    v55 = *(v7 + 528);
    v56 = 0;
    v57 = 0;
    v58 = 0;
    sub_2453AE4E0(&v56, *(v7 + 536), *(v7 + 544), *(v7 + 544) - *(v7 + 536));
    v59 = 0;
    v60 = 0;
    v61 = 0;
    sub_2453AE4E0(&v59, *(v7 + 560), *(v7 + 568), *(v7 + 568) - *(v7 + 560));
    v8 = *(v7 + 584);
    v62 = v8;
    if (v54 == 1)
    {
      v9 = (v55 >> 6) & 1;
      v10 = (v55 >> 4) & 1;
      v11 = (v55 >> 3) & 1;
      v12 = (v55 >> 5) & 1;
      v13 = v55 & 1;
      v14 = (v55 >> 2) & 1;
      v15 = (v55 >> 1) & 1;
    }

    else
    {
      v15 = 0;
      v14 = 0;
      v13 = 0;
      v12 = 0;
      v11 = 0;
      v10 = 0;
      v9 = 0;
    }

    if ((v14 | v15 | v13 | v12 | v11 | v10 | v9) == 1)
    {
      *v2 = 1;
      *(v2 + 112) = v12;
      *(v2 + 116) = v9;
      *(v2 + 124) = v11;
      *(v2 + 108) = v10;
      *(v2 + 96) = v15;
      *(v2 + 100) = v14;
      *(v2 + 92) = v13;
      if (v11)
      {
        *(v2 + 88) = 1;
        goto LABEL_16;
      }
    }

    else if (v11)
    {
LABEL_16:
      *(v2 + 132) = WORD2(v55);
      *(v2 + 134) = BYTE6(v55);
      *(v2 + 136) = v8;
      v17 = HIBYTE(v55);
      *(v2 + 135) = HIBYTE(v55);
      if (v17)
      {
        v18 = 0;
        *(v2 + 128) = 1;
        v19 = *(v2 + 144);
        *(v2 + 152) = v19;
        do
        {
          v20 = *(v56 + v18);
          v21 = *(v59 + v18);
          v22 = *(v2 + 160);
          if (v19 >= v22)
          {
            v23 = *(v2 + 144);
            v24 = v19 - v23;
            v25 = (v19 - v23) >> 3;
            v26 = v25 + 1;
            if ((v25 + 1) >> 61)
            {
              sub_2453A631C();
            }

            v27 = v22 - v23;
            if (v27 >> 2 > v26)
            {
              v26 = v27 >> 2;
            }

            if (v27 >= 0x7FFFFFFFFFFFFFF8)
            {
              v28 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v28 = v26;
            }

            if (v28)
            {
              if (!(v28 >> 61))
              {
                operator new();
              }

              sub_2453AABB4();
            }

            v29 = v25;
            v30 = (8 * v25);
            v31 = v20 | (v21 << 32);
            v32 = &v30[-v29];
            *v30 = v31;
            v19 = (v30 + 1);
            memcpy(v32, v23, v24);
            *(v2 + 144) = v32;
            *(v2 + 152) = v19;
            *(v2 + 160) = 0;
            if (v23)
            {
              operator delete(v23);
            }
          }

          else
          {
            *v19 = v20 | (v21 << 32);
            v19 += 8;
          }

          *(v2 + 152) = v19;
          if (v18 > 0x1C)
          {
            break;
          }

          ++v18;
        }

        while (v18 < HIBYTE(v55));
      }
    }

    v33 = sub_245479234();
    if (sub_245479750(v33, *(*(a1 + 8) + 596)))
    {
      sub_245444754((v2 + 864));
      sub_245444D84(*(a1 + 368), a1 + 32);
      sub_245444BAC(*(a1 + 368), a1 + 32, *(a1 + 8));
    }

    v34 = *(a1 + 8);
    if (v34)
    {
      if ((*(v34 + 380) & 0xFE) != 2)
      {
        goto LABEL_49;
      }

      *(a1 + 48) = 1;
      *(a1 + 56) = *(v34 + 376);
      v35 = sub_24547473C();
      sub_245474B90(v35, a1 + 64, *(*(a1 + 8) + 596));
      v36 = sub_24547473C();
      sub_245474D04(v36, *(a1 + 40) + 168, *(*(a1 + 8) + 596));
      v37 = *(a1 + 8);
      v38 = sub_24547473C();
      v39 = sub_24547547C(v38, *(v37 + 376));
      v40 = v39;
      if (v39)
      {
        if (*(*(v39 + 48) + 8) == 1)
        {
          *buf = -254;
          LODWORD(v66) = 0;
          WORD2(v66) = 0;
          v67 = 0;
          LOWORD(v68) = 0;
          HIDWORD(v68) = 0;
          LOWORD(v69) = 0;
          v70 = 0;
          v71 = 0;
          v72 = 0;
          v73 = 0;
          v74 = 0;
          v75 = 0;
          v76 = 0;
          v77 = 0;
          v78 = 0;
          v79 = 0;
          v80 = 0;
          v81 = 0;
          v82 = 0;
          v83 = 0;
          v84 = 0;
          v85 = 0;
          v86 = 0;
          v87 = 0;
          v88 = 0;
          v89 = 0;
          v90 = 0;
          v91 = 0;
          v92 = 0;
          v93 = 0;
          v94 = 0;
          v95 = 0;
          v96 = 0;
          v97 = 0;
          *(v98 + 3) = 0;
          v98[0] = 0;
          v98[2] = 0;
          v99 = 0;
          v100 = 0;
          v101 = 0;
          v102 = 0;
          v103 = 0;
          v104 = 0;
          v105 = 0;
          v106 = 0;
          v107 = 0;
          v111 = 0;
          v112 = 0;
          v109 = 0;
          v110[0] = 0;
          *(v110 + 7) = 0;
          __p = 0;
          v41 = sub_24547473C();
          sub_245476890(v41, buf);
          v42 = sub_24547473C();
          if (sub_2454766B8(v42, *(v40 + 48) + 200, buf))
          {
            v43 = sub_24547473C();
            sub_2454761F8(v43, v2 + 328, buf);
            *(v2 + 4) = 1;
          }

          if (__p)
          {
            v109 = __p;
            operator delete(__p);
          }
        }

        if (sub_245460E5C(v40, v2 + 1280, *(*(a1 + 8) + 376), *(*(a1 + 8) + 596)))
        {
          v44 = qword_2813CF018;
          if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_debug_impl(&dword_245396000, v44, OS_LOG_TYPE_DEBUG, "#gpsd,#supl FillHash failed in PrepareSuplPosInit", buf, 2u);
            v44 = qword_2813CF018;
          }

          if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            *&buf[4] = 770;
            _os_log_error_impl(&dword_245396000, v44, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", buf, 8u);
          }
        }
      }

      *(v2 + 12) = 1;
      v34 = *(a1 + 8);
      if (v34)
      {
LABEL_49:
        sub_245454C74(a1 + 48, v34 + 64);
      }
    }

    *buf = v51;
    v66 = a1 + 24;
    if (sub_245466354(buf))
    {
      v45 = qword_2813CF018;
      if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
      {
        *v63 = 0;
        _os_log_debug_impl(&dword_245396000, v45, OS_LOG_TYPE_DEBUG, "#gpsd,#supl encoding failed in PrepareSuplPosInit", v63, 2u);
        v45 = qword_2813CF018;
      }

      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        *v63 = 67109120;
        v64 = 770;
        _os_log_error_impl(&dword_245396000, v45, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", v63, 8u);
      }
    }

    *(*(a1 + 8) + 424) = 1;
    if (v59)
    {
      v60 = v59;
      operator delete(v59);
    }

    if (v56)
    {
      v57 = v56;
      operator delete(v56);
    }

    goto LABEL_59;
  }

  v16 = qword_2813CF018;
LABEL_9:
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    *&buf[4] = 513;
    _os_log_error_impl(&dword_245396000, v16, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", buf, 8u);
  }

LABEL_59:
  v46 = sub_24547C334();
  v47 = *(*(a1 + 8) + 376);
  v66 = 0;
  v67 = 0;
  *buf = v47;
  LOBYTE(v70) = -1;
  v68 = 3;
  v69 = 0;
  sub_24547D2BC(v46, buf);
  if (sub_24547463C(a1, v51))
  {
    *(a1 + 360) = 1;
  }

  (*(*a1 + 16))(a1);
  v48 = *(a1 + 360);
  if (v53[0])
  {
    v53[1] = v53[0];
    operator delete(v53[0]);
  }

  v49 = *MEMORY[0x277D85DE8];
  return v48;
}

void sub_245471284(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52)
{
  sub_24546BA2C(&a16);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_245471300(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  *a1 = &unk_28585A780;
  *(a1 + 24) = 0u;
  v8 = a1 + 24;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  sub_2454735D8(a1 + 64);
  *(a1 + 380) = -1;
  *(a1 + 384) = -1;
  *(a1 + 388) = 0u;
  *(a1 + 404) = 0u;
  *(a1 + 420) = 0;
  *(a1 + 448) = xmmword_24548B320;
  *(a1 + 464) = 1;
  *(a1 + 472) = 0;
  *(a1 + 516) = 0;
  *(a1 + 500) = 0;
  *(a1 + 508) = 0;
  *(a1 + 492) = 0;
  *(a1 + 476) = 2;
  *(a1 + 480) = 0;
  *(a1 + 488) = 0;
  *(a1 + 584) = 0;
  *(a1 + 520) = 0u;
  *(a1 + 536) = 0u;
  *(a1 + 552) = 0u;
  *(a1 + 568) = 0u;
  *(a1 + 376) = a3;
  v9 = *a4;
  *(a1 + 388) = *(a4 + 2);
  *(a1 + 380) = v9;
  *(a1 + 432) = 0;
  *(a1 + 596) = a2;
  *(a1 + 24) = a1;
  sub_245445650(v8, a1 + 448, a2);
  *(a1 + 8) = a3;
  sub_2454457F4(v8, a2);
  *(a1 + 592) = 0;
  *(sub_24547473C() + 280) = a2;
  *(a1 + 440) = 0;
  return a1;
}

void sub_24547143C(_Unwind_Exception *exception_object)
{
  v1[3] = 0;
  v3 = v1[4];
  if (v3)
  {
    v1[5] = v3;
    operator delete(v3);
  }

  v1[2] = 0;
  _Unwind_Resume(exception_object);
}

uint64_t sub_245471478(uint64_t a1)
{
  *a1 = &unk_28585A780;
  v2 = sub_24547473C();
  if (v2)
  {
    sub_24547550C(v2, *(a1 + 376));
  }

  sub_24547052C(a1 + 392);
  v3 = *(a1 + 432);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  *(a1 + 432) = 0;
  v4 = *(a1 + 440);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  *(a1 + 440) = 0;
  v5 = *(a1 + 560);
  if (v5)
  {
    *(a1 + 568) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 536);
  if (v6)
  {
    *(a1 + 544) = v6;
    operator delete(v6);
  }

  v7 = *(a1 + 352);
  if (v7)
  {
    *(a1 + 360) = v7;
    operator delete(v7);
  }

  v8 = *(a1 + 328);
  if (v8)
  {
    *(a1 + 336) = v8;
    operator delete(v8);
  }

  v9 = *(a1 + 304);
  if (v9)
  {
    *(a1 + 312) = v9;
    operator delete(v9);
  }

  v10 = *(a1 + 264);
  if (v10)
  {
    *(a1 + 272) = v10;
    operator delete(v10);
  }

  sub_245461640(a1 + 88);
  *(a1 + 24) = 0;
  v11 = *(a1 + 32);
  if (v11)
  {
    *(a1 + 40) = v11;
    operator delete(v11);
  }

  *(a1 + 16) = 0;
  return a1;
}

void sub_2454715B8(uint64_t a1)
{
  sub_245471478(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2454715F0(uint64_t a1)
{
  if (*(a1 + 380) >= 2u)
  {
    v2 = *(a1 + 376);
    v3 = *(sub_24547473C() + 24);
    if (v3)
    {
      v4 = v3;
    }

    else
    {
      v4 = 11;
    }

    sub_24546FDEC((a1 + 392), v2, 0, v4, 0);
  }

  return 0;
}

void sub_245471650(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = sub_24547473C();
  if (!v2)
  {
    v7 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = 513;
      goto LABEL_11;
    }

LABEL_35:
    v20 = *MEMORY[0x277D85DE8];
    return;
  }

  v3 = *(a1 + 380);
  if (!*(a1 + 380))
  {
    v13 = *(a1 + 432);
    if (v13)
    {
      sub_245473DF8(v13, 7, a1);
      v14 = *(a1 + 432);
      *(v14[5] + 456) = 18;
      *(v14[5] + 4) = 1;
      sub_2453A6258(buf, 3000);
      v21[0] = buf;
      v21[1] = 0;
      v22 = 0;
      sub_245454D2C(v14);
      (*(*v14 + 32))(v14, v21);
      sub_245454A88(v14);
      if (*buf)
      {
        v24 = *buf;
        operator delete(*buf);
      }

      goto LABEL_35;
    }

    v7 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = 1028;
      goto LABEL_11;
    }

    goto LABEL_35;
  }

  if (v3 == 1)
  {
    v8 = *(a1 + 432);
    if (v8)
    {
      goto LABEL_16;
    }

    v9 = operator new(0x168uLL, MEMORY[0x277D826F0]);
    v10 = v9;
    if (v9)
    {
      sub_245473C70(v9);
      *v10 = &unk_28585A560;
    }

    sub_24547211C(a1, v10);
    v8 = *(a1 + 432);
    if (v8)
    {
LABEL_16:
      sub_245473DF8(v8, 7, a1);
      v11 = *(a1 + 432);
      v12 = *MEMORY[0x277D85DE8];

      sub_245454A88(v11);
      return;
    }

    v7 = qword_2813CF018;
    if (!os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_35;
    }

    *buf = 67109120;
    *&buf[4] = 1537;
LABEL_11:
    _os_log_error_impl(&dword_245396000, v7, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", buf, 8u);
    goto LABEL_35;
  }

  if (v3 == 3)
  {
    v4 = v2;
    v5 = sub_24547547C(v2, *(a1 + 376));
    if (v5 && !*(v5 + 20))
    {
      sub_245475F5C(v4, a1 + 448, *(*(v5 + 48) + 20), *(a1 + 596));
    }

    else
    {
      v6 = qword_2813CF018;
      if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        *&buf[4] = 513;
        _os_log_error_impl(&dword_245396000, v6, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", buf, 8u);
      }
    }

    v17 = operator new(0x168uLL, MEMORY[0x277D826F0]);
    v18 = v17;
    if (v17)
    {
      sub_245473C70(v17);
      *v18 = &unk_28585A560;
    }

    sub_24547211C(a1, v18);
    v19 = *(a1 + 432);
    if (v19)
    {
      sub_245473DF8(v19, 0, a1);
      goto LABEL_35;
    }

    v7 = qword_2813CF018;
    if (!os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_35;
    }

    *buf = 67109120;
    *&buf[4] = 1537;
    goto LABEL_11;
  }

  v15 = *(a1 + 432);
  v16 = *MEMORY[0x277D85DE8];

  sub_2454453E4((a1 + 24), (a1 + 380), v15, a1 + 448);
}

void sub_245471A98(uint64_t a1, int a2)
{
  if (a2 == 6)
  {
    if (*(a1 + 424) != 1)
    {
      return;
    }

    v3 = *(sub_24547473C() + 32);
    v4 = v3 == 0;
    v5 = 10;
    goto LABEL_7;
  }

  if (a2 == 4)
  {
    if (*(a1 + 424) != 1)
    {
      return;
    }

    v3 = *(sub_24547473C() + 28);
    v4 = v3 == 0;
    v5 = 11;
LABEL_7:
    if (v4)
    {
      v6 = v5;
    }

    else
    {
      v6 = v3;
    }

    sub_245470430(a1 + 392, v6);

    sub_24546FF4C(a1 + 392);
    return;
  }

  v7 = a1 + 392;

  sub_245470314(v7);
}

void sub_245471B50(uint64_t a1, unsigned int a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = sub_24547C334();
  v5 = *(a1 + 376);
  v14 = 0;
  v16 = 0;
  v13[0] = v5;
  v17 = -1;
  v15 = a2;
  sub_24547D2BC(v4, v13);
  if (a2 == 6)
  {
    v6 = *(*sub_245471CCC(a1) + 16);
    v7 = *MEMORY[0x277D85DE8];

    v6();
  }

  else
  {
    v8 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      v13[0] = 67109120;
      v13[1] = 514;
      _os_log_error_impl(&dword_245396000, v8, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", v13, 8u);
    }

    v9 = sub_24546E30C();
    *(v9 + 40) = *(v9 + 32);
    v10 = sub_24546A68C();
    sub_245448DD0(off_27EE134B8, *(a1 + 376));
    sub_24546B0B4(v10);
    v11 = sub_24546E30C();
    sub_24546F540(v11, *(a1 + 376));
    v12 = *MEMORY[0x277D85DE8];
  }
}

void *sub_245471CCC(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 432);
  if (!v1)
  {
    v3 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      v8 = 67109120;
      v9 = 513;
      _os_log_error_impl(&dword_245396000, v3, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", &v8, 8u);
    }

    v4 = operator new(0x168uLL, MEMORY[0x277D826F0]);
    v1 = v4;
    if (v4)
    {
      sub_245473C70(v4);
      *v1 = &unk_28585A560;
      *(a1 + 432) = v1;
    }

    else
    {
      *(a1 + 432) = 0;
      v5 = qword_2813CF018;
      if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
      {
        v8 = 67109120;
        v9 = 1537;
        _os_log_error_impl(&dword_245396000, v5, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", &v8, 8u);
        v1 = *(a1 + 432);
      }
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return v1;
}

void sub_245471E40(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 376);
  v5 = *(a1 + 432);
  if (v5 && *(v5 + 16) != 7)
  {
    sub_245473DF8(v5, 7, a1);
    sub_245454A88(*(a1 + 432));
  }

  v6 = sub_24547C334();
  v7 = *(a1 + 376);
  v10 = 0;
  v12 = 0;
  v9 = v7;
  v13 = -1;
  v11 = a2;
  sub_24547D2BC(v6, &v9);
  v8 = sub_24546E30C();

  sub_24546F540(v8, v4);
}

uint64_t sub_245471EE8(uint64_t result, void *a2)
{
  if (*a2 != a2[1])
  {
    v3 = result;
    sub_245470314(result + 392);
    *(sub_24547473C() + 280) = *(v3 + 596);
    v4 = *(*sub_245471CCC(v3) + 40);

    return v4();
  }

  return result;
}

void sub_245471F6C(uint64_t a1)
{
  __p[3] = *MEMORY[0x277D85DE8];
  if (*(a1 + 432))
  {
    if (*(a1 + 396) != 1)
    {
      v2 = qword_2813CF018;
      if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
      {
        __p[0] = 0x40404000100;
        _os_log_error_impl(&dword_245396000, v2, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", __p, 8u);
      }
    }

    *(a1 + 396) = 0;
    sub_2453A6258(__p, 3000);
    v5[0] = __p;
    v5[1] = 0;
    v6 = 0;
    sub_245473DF8(*(a1 + 432), 7, a1);
    (*(**(a1 + 432) + 32))(*(a1 + 432), v5);
    sub_245454A88(*(a1 + 432));
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    v3 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      __p[0] = 0x20104000100;
      _os_log_error_impl(&dword_245396000, v3, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", __p, 8u);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

void sub_24547211C(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v4 = *(a1 + 440);
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = *(a1 + 432);
    *(a1 + 432) = a2;
    *(a1 + 440) = v5;
  }

  else
  {
    v6 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      v8[0] = 67109120;
      v8[1] = 515;
      _os_log_error_impl(&dword_245396000, v6, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", v8, 8u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t sub_245472204(uint64_t a1, uint64_t a2)
{
  *(a1 + 520) = *a2;
  *(a1 + 528) = *(a2 + 8);
  if (a1 + 520 != a2)
  {
    sub_2453ADF3C((a1 + 536), *(a2 + 16), *(a2 + 24), *(a2 + 24) - *(a2 + 16));
    sub_2453ADF3C((a1 + 560), *(a2 + 40), *(a2 + 48), *(a2 + 48) - *(a2 + 40));
  }

  *(a1 + 584) = *(a2 + 64);

  return sub_245445734((a1 + 24));
}

void sub_245472280(uint64_t a1, int a2)
{
  __p[3] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 432);
  if (v4)
  {
    goto LABEL_5;
  }

  v5 = operator new(0x168uLL, MEMORY[0x277D826F0]);
  v6 = v5;
  if (v5)
  {
    sub_245473C70(v5);
    *v6 = &unk_28585A560;
  }

  sub_24547211C(a1, v6);
  v4 = *(a1 + 432);
  if (v4)
  {
LABEL_5:
    sub_245473DF8(v4, 7, a1);
    v7 = *(a1 + 432);
    if (!a2)
    {
      *(v7[5] + 456) = 18;
      *(v7[5] + 4) = 1;
      sub_2453A6258(__p, 3000);
      v12[0] = __p;
      v12[1] = 0;
      v13 = 0;
      sub_245454D2C(v7);
      (*(*v7 + 32))(v7, v12);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }
    }

    sub_245454A88(v7);
  }

  else
  {
    v9 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      __p[0] = 0x60104000100;
      _os_log_error_impl(&dword_245396000, v9, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", __p, 8u);
    }

    v10 = sub_24546A68C();
    sub_245448DD0(off_27EE134B8, *(a1 + 376));
    sub_24546B0B4(v10);
    v11 = sub_24546E30C();
    sub_24546F540(v11, *(a1 + 376));
  }

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t sub_245472494(uint64_t a1, unsigned __int8 *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = sub_2454460B8(a1, 0, 1, *a2 - 1);
  if (v4)
  {
    v5 = v4;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
LABEL_3:
    sub_245445D98(v4, v6, v7, "asn1PE_IPAddress");
    goto LABEL_4;
  }

  v10 = *a2;
  if (v10 == 2)
  {
    v5 = sub_245446770(a1, 0, 0, 16, a2 + 4, 1, 0);
    if (!v5)
    {
      goto LABEL_4;
    }

    v16 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
    {
      v19 = 67109120;
      v20 = v5;
      _os_log_debug_impl(&dword_245396000, v16, OS_LOG_TYPE_DEBUG, "#gpsd,#supl asn1PE_IPAddress_ipv6Address, encoding error %d", &v19, 8u);
    }

    v12 = *(a1 + 8);
    v13 = *(a1 + 12);
    v14 = "asn1PE_IPAddress_ipv6Address";
    v15 = v5;
LABEL_15:
    sub_245445D98(v15, v12, v13, v14);
    v17 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      v19 = 67109120;
      v20 = v5;
      _os_log_error_impl(&dword_245396000, v17, OS_LOG_TYPE_ERROR, "#gpsd,#supl asn1PE_IPAddress, encoding error %d", &v19, 8u);
    }

    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v4) = v5;
    goto LABEL_3;
  }

  if (v10 == 1)
  {
    v5 = sub_245446770(a1, 0, 0, 4, a2 + 1, 1, 0);
    if (!v5)
    {
      goto LABEL_4;
    }

    v11 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      v19 = 67109120;
      v20 = v5;
      _os_log_error_impl(&dword_245396000, v11, OS_LOG_TYPE_ERROR, "#gpsd,#supl asn1PE_IPAddress_ipv4Address, encoding error %d", &v19, 8u);
    }

    v12 = *(a1 + 8);
    v13 = *(a1 + 12);
    v14 = "asn1PE_IPAddress_ipv4Address";
    v15 = v5;
    goto LABEL_15;
  }

  v18 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v19) = 0;
    _os_log_error_impl(&dword_245396000, v18, OS_LOG_TYPE_ERROR, "#gpsd,#supl asn1PE_IPAddress, invalid IP addr type", &v19, 2u);
  }

  sub_245445D98(0, *(a1 + 8), *(a1 + 12), "asn1PE_IPAddress");
  v5 = 0;
LABEL_4:
  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t sub_245472728(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v20 = 0;
  v4 = sub_245446150(a1, 0, 1u, &v20);
  if (v4)
  {
    v5 = v4;
    v6 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v22 = v5;
      _os_log_error_impl(&dword_245396000, v6, OS_LOG_TYPE_ERROR, "#gpsd,#supl asn1PD_IPAddress, encoding error %d", buf, 8u);
    }

    v7 = *(a1 + 8);
    v8 = *(a1 + 12);
    v9 = v5;
    goto LABEL_5;
  }

  v12 = v20;
  *a2 = v20 + 1;
  if (v12 == 1)
  {
    sub_245446614(a1, 0x80u, (a2 + 32), 0);
    v5 = *(a1 + 16);
    if (!*(a1 + 16))
    {
      goto LABEL_6;
    }

    v18 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      v22 = v5;
      _os_log_debug_impl(&dword_245396000, v18, OS_LOG_TYPE_DEBUG, "#gpsd,#supl asn1PD_IPAddress_ipv6Address, decoing error %d", buf, 8u);
    }

    v14 = *(a1 + 8);
    v15 = *(a1 + 12);
    v16 = "asn1PD_IPAddress_ipv6Address";
    v17 = v5;
LABEL_17:
    sub_245445D98(v17, v14, v15, v16);
    v19 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v22 = v5;
      _os_log_error_impl(&dword_245396000, v19, OS_LOG_TYPE_ERROR, "#gpsd,#supl asn1PD_IPAddress, encoding error %d", buf, 8u);
    }

    v7 = *(a1 + 8);
    v8 = *(a1 + 12);
    v9 = v5;
    goto LABEL_5;
  }

  if (!v12)
  {
    sub_245446614(a1, 0x20u, (a2 + 8), 0);
    v5 = *(a1 + 16);
    if (!*(a1 + 16))
    {
      goto LABEL_6;
    }

    v13 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v22 = v5;
      _os_log_error_impl(&dword_245396000, v13, OS_LOG_TYPE_ERROR, "#gpsd,#supl asn1PD_IPAddress_ipv4Address, decoding error %d", buf, 8u);
    }

    v14 = *(a1 + 8);
    v15 = *(a1 + 12);
    v16 = "asn1PD_IPAddress_ipv4Address";
    v17 = v5;
    goto LABEL_17;
  }

  v7 = *(a1 + 8);
  v8 = *(a1 + 12);
  v5 = 4;
  v9 = 4;
LABEL_5:
  sub_245445D98(v9, v7, v8, "asn1PD_IPAddress");
LABEL_6:
  v10 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t sub_2454729B4(uint64_t a1, void *a2)
{
  v6 = 0;
  v3 = sub_245446A2C(a1, 1, 0xFFu, &v6, a2, 0x40u, "-.0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz", 0);
  v4 = v3;
  if (v3)
  {
    sub_245445D98(v3, *(a1 + 8), *(a1 + 12), "asn1PD_FQDN");
  }

  return v4;
}

uint64_t sub_245472A28(uint64_t a1, unsigned __int8 *a2)
{
  sub_245445FB0(a1, 0);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(v7) = *(a1 + 16);
  }

  else
  {
    v7 = sub_2454460B8(a1, 0, 1, *a2 - 1);
    if (!v7)
    {
      v9 = *a2;
      switch(v9)
      {
        case 1:
          v4 = sub_245472494(a1, a2 + 8);
          if (!v4)
          {
            return v4;
          }

          break;
        case 255:
          v5 = *(a1 + 8);
          v6 = *(a1 + 12);
          v4 = 1;
          LODWORD(v7) = 1;
          goto LABEL_5;
        case 2:
          v10 = sub_2454467FC(a1, 1, 0xFFu, *(a2 + 18) - *(a2 + 16), a2 + 8, 64, "-.0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz", 0);
          v4 = v10;
          if (!v10)
          {
            return v4;
          }

          sub_245445D98(v10, *(a1 + 8), *(a1 + 12), "asn1PE_FQDN");
          break;
        default:
          v5 = *(a1 + 8);
          v6 = *(a1 + 12);
          v4 = 4;
          LODWORD(v7) = 4;
          goto LABEL_5;
      }

      v5 = *(a1 + 8);
      v6 = *(a1 + 12);
      LODWORD(v7) = v4;
      goto LABEL_5;
    }

    v4 = v7;
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
  }

LABEL_5:
  sub_245445D98(v7, v5, v6, "asn1PE_SLPAddress");
  return v4;
}

uint64_t sub_245472B88(uint64_t a1, uint64_t a2)
{
  v4 = sub_245446038(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
  }

  else if (v4)
  {
    sub_245447070(a1);
    v5 = v8;
    if (!v8)
    {
      return v5;
    }

    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
  }

  else
  {
    v11 = 0;
    v8 = sub_245446150(a1, 0, 1u, &v11);
    if (v8)
    {
      v5 = v8;
      v6 = *(a1 + 8);
      v7 = *(a1 + 12);
    }

    else
    {
      v10 = v11;
      *a2 = v11 + 1;
      if (v10 != 254)
      {
        if (v10 == 1)
        {
          v8 = sub_2454729B4(a1, (a2 + 64));
        }

        else
        {
          if (v10)
          {
            v6 = *(a1 + 8);
            v7 = *(a1 + 12);
            v5 = 4;
            LODWORD(v8) = 4;
            goto LABEL_3;
          }

          v8 = sub_245472728(a1, a2 + 8);
        }

        v5 = v8;
        if (!v8)
        {
          return v5;
        }

        v6 = *(a1 + 8);
        v7 = *(a1 + 12);
        goto LABEL_3;
      }

      v6 = *(a1 + 8);
      v7 = *(a1 + 12);
      v5 = 1;
      LODWORD(v8) = 1;
    }
  }

LABEL_3:
  sub_245445D98(v8, v6, v7, "asn1PD_SLPAddress");
  return v5;
}

uint64_t sub_245472CD8(uint64_t a1, void *a2)
{
  v3 = sub_245446770(a1, 0, 0, 8, a2, 1, 1);
  v4 = v3;
  if (v3)
  {
    sub_245445D98(v3, *(a1 + 8), *(a1 + 12), "asn1PE_SETId_msisdn");
  }

  return v4;
}

uint64_t sub_245472D38(uint64_t a1, void *a2)
{
  sub_245446614(a1, 0x40u, a2, 1);
  v3 = *(a1 + 16);
  if (*(a1 + 16))
  {
    sub_245445D98(*(a1 + 16), *(a1 + 8), *(a1 + 12), "asn1PD_SETId_msisdn");
  }

  return v3;
}

uint64_t sub_245472D8C(uint64_t a1, void *a2)
{
  v3 = sub_245446770(a1, 0, 0, 8, a2, 1, 0);
  v4 = v3;
  if (v3)
  {
    sub_245445D98(v3, *(a1 + 8), *(a1 + 12), "asn1PE_SETId_mdn");
  }

  return v4;
}

uint64_t sub_245472DEC(uint64_t a1, void *a2)
{
  sub_245446614(a1, 0x40u, a2, 0);
  v3 = *(a1 + 16);
  if (*(a1 + 16))
  {
    sub_245445D98(*(a1 + 16), *(a1 + 8), *(a1 + 12), "asn1PD_SETId_mdn");
  }

  return v3;
}

uint64_t sub_245472E40(uint64_t a1, void *a2)
{
  v3 = sub_245446474(a1, 0, 0, 0x22u, a2, 1);
  v4 = v3;
  if (v3)
  {
    sub_245445D98(v3, *(a1 + 8), *(a1 + 12), "asn1PE_SETId_min");
  }

  return v4;
}

uint64_t sub_245472E9C(uint64_t a1, void *a2)
{
  sub_245446614(a1, 0x22u, a2, 0);
  v3 = *(a1 + 16);
  if (*(a1 + 16))
  {
    sub_245445D98(*(a1 + 16), *(a1 + 8), *(a1 + 12), "asn1PD_SETId_min");
  }

  return v3;
}

uint64_t sub_245472EF0(uint64_t a1, void *a2)
{
  v3 = sub_245446770(a1, 0, 0, 8, a2, 1, 1);
  v4 = v3;
  if (v3)
  {
    sub_245445D98(v3, *(a1 + 8), *(a1 + 12), "asn1PE_SETId_imsi");
  }

  return v4;
}

uint64_t sub_245472F50(uint64_t a1, void *a2)
{
  sub_245446614(a1, 0x40u, a2, 1);
  v3 = *(a1 + 16);
  if (*(a1 + 16))
  {
    sub_245445D98(*(a1 + 16), *(a1 + 8), *(a1 + 12), "asn1PD_SETId_imsi");
  }

  return v3;
}

uint64_t sub_245472FA4(uint64_t a1, unsigned __int8 *a2)
{
  sub_245445FB0(a1, 0);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(v7) = *(a1 + 16);
LABEL_24:
    sub_245445D98(v7, v5, v6, "asn1PE_SETId");
    return v4;
  }

  v7 = sub_2454460B8(a1, 0, 5, *a2 - 1);
  if (v7)
  {
    v4 = v7;
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    goto LABEL_24;
  }

  v8 = *a2;
  if (v8 <= 3)
  {
    switch(v8)
    {
      case 1u:
        v7 = sub_245472CD8(a1, a2 + 1);
        break;
      case 2u:
        v7 = sub_245472D8C(a1, a2 + 4);
        break;
      case 3u:
        v7 = sub_245472E40(a1, a2 + 7);
        break;
      default:
        goto LABEL_18;
    }
  }

  else if (*a2 > 5u)
  {
    if (v8 != 6)
    {
      if (v8 == 255)
      {
        v5 = *(a1 + 8);
        v6 = *(a1 + 12);
        v4 = 1;
        LODWORD(v7) = 1;
        goto LABEL_24;
      }

      goto LABEL_18;
    }

    v7 = sub_245472494(a1, a2 + 128);
  }

  else
  {
    if (v8 != 4)
    {
      if (v8 == 5)
      {
        v7 = sub_245446D18(a1, 1, 1000, *(a2 + 28) - *(a2 + 26), a2 + 13, 0);
        goto LABEL_22;
      }

LABEL_18:
      v5 = *(a1 + 8);
      v6 = *(a1 + 12);
      v4 = 4;
      LODWORD(v7) = 4;
      goto LABEL_24;
    }

    v7 = sub_245472EF0(a1, a2 + 10);
  }

LABEL_22:
  v4 = v7;
  if (v7)
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    goto LABEL_24;
  }

  return v4;
}

uint64_t sub_245473148(uint64_t a1, uint64_t a2)
{
  v4 = sub_245446038(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
  }

  else if (v4)
  {
    sub_245447070(a1);
    v5 = v8;
    if (!v8)
    {
      return v5;
    }

    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
  }

  else
  {
    v12 = 0;
    v8 = sub_245446218(a1, 0, 5u, &v12);
    if (!v8)
    {
      v10 = v12;
      *a2 = v12 + 1;
      if (v10 <= 2)
      {
        if (v10)
        {
          if (v10 == 1)
          {
            v8 = sub_245472DEC(a1, (a2 + 32));
          }

          else
          {
            v8 = sub_245472E9C(a1, (a2 + 56));
          }
        }

        else
        {
          v8 = sub_245472D38(a1, (a2 + 8));
        }
      }

      else if (v10 > 4)
      {
        if (v10 != 5)
        {
          v6 = *(a1 + 8);
          v7 = *(a1 + 12);
          if (v10 == 254)
          {
            v5 = 1;
            LODWORD(v8) = 1;
          }

          else
          {
            v5 = 4;
            LODWORD(v8) = 4;
          }

          goto LABEL_3;
        }

        v8 = sub_245472728(a1, a2 + 128);
      }

      else if (v10 == 3)
      {
        v8 = sub_245472F50(a1, (a2 + 80));
      }

      else
      {
        v11 = 0;
        v8 = sub_245446DA4(a1, 1, 0x3E8u, &v11, (a2 + 104), 0);
      }

      v5 = v8;
      if (!v8)
      {
        return v5;
      }

      v6 = *(a1 + 8);
      v7 = *(a1 + 12);
      goto LABEL_3;
    }

    v5 = v8;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
  }

LABEL_3:
  sub_245445D98(v8, v6, v7, "asn1PD_SETId");
  return v5;
}

uint64_t sub_24547331C(uint64_t a1, void *a2)
{
  v3 = sub_245446770(a1, 0, 0, 4, a2, 1, 0);
  v4 = v3;
  if (v3)
  {
    sub_245445D98(v3, *(a1 + 8), *(a1 + 12), "asn1PE_SlpSessionID_sessionID");
  }

  return v4;
}

uint64_t sub_24547337C(uint64_t a1, void *a2)
{
  sub_245446614(a1, 0x20u, a2, 0);
  v3 = *(a1 + 16);
  if (*(a1 + 16))
  {
    sub_245445D98(*(a1 + 16), *(a1 + 8), *(a1 + 12), "asn1PD_SlpSessionID_sessionID");
  }

  return v3;
}

uint64_t sub_2454733D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24547331C(a1, a2);
  if (v4)
  {
    v5 = v4;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
LABEL_5:
    sub_245445D98(v4, v6, v7, "asn1PE_SlpSessionID");
    return v5;
  }

  v4 = sub_245472A28(a1, (a2 + 24));
  v5 = v4;
  if (v4)
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_5;
  }

  return v5;
}

uint64_t sub_24547344C(uint64_t a1, void *a2)
{
  v4 = sub_24547337C(a1, a2);
  if (v4)
  {
    v5 = v4;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
LABEL_5:
    sub_245445D98(v4, v6, v7, "asn1PD_SlpSessionID");
    return v5;
  }

  v4 = sub_245472B88(a1, (a2 + 3));
  v5 = v4;
  if (v4)
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_5;
  }

  return v5;
}

uint64_t sub_2454734C8(uint64_t a1, unsigned __int8 *a2)
{
  v4 = sub_2454460B8(a1, 0, 0xFFFF, *a2);
  if (v4)
  {
    v5 = v4;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
LABEL_5:
    sub_245445D98(v4, v6, v7, "asn1PE_SetSessionID");
    return v5;
  }

  v4 = sub_245472FA4(a1, a2 + 8);
  v5 = v4;
  if (v4)
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_5;
  }

  return v5;
}

uint64_t sub_245473550(uint64_t a1, _WORD *a2)
{
  v4 = sub_245446218(a1, 0, 0xFFFFu, a2);
  if (v4)
  {
    v5 = v4;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
LABEL_5:
    sub_245445D98(v4, v6, v7, "asn1PD_SetSessionID");
    return v5;
  }

  v4 = sub_245473148(a1, (a2 + 4));
  v5 = v4;
  if (v4)
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_5;
  }

  return v5;
}

uint64_t sub_2454735D8(uint64_t a1)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 16) = -1;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 8) = 0;
  sub_2453A6258((a1 + 200), 4);
  *(a1 + 224) = 0u;
  *(a1 + 224) = -1;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0;
  *a1 = 0;
  return a1;
}

uint64_t sub_245473694(uint64_t a1, uint64_t a2)
{
  sub_245445FB0(a1, *a2);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(v7) = *(a1 + 16);
LABEL_5:
    sub_245445D98(v7, v5, v6, "asn1PE_SessionID");
    return v4;
  }

  sub_245445FB0(a1, *(a2 + 4));
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(v7) = *(a1 + 16);
    goto LABEL_5;
  }

  if (*a2)
  {
    v7 = sub_2454734C8(a1, (a2 + 8));
    if (v7)
    {
      v4 = v7;
      v5 = *(a1 + 8);
      v6 = *(a1 + 12);
      goto LABEL_5;
    }
  }

  if (!*(a2 + 4))
  {
    return 0;
  }

  return sub_2454733D0(a1, a2 + 200);
}

uint64_t sub_245473780(uint64_t a1, uint64_t a2)
{
  *a2 = sub_245446038(a1);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(v7) = *(a1 + 16);
LABEL_5:
    sub_245445D98(v7, v5, v6, "asn1PD_SessionID");
    return v4;
  }

  v8 = sub_245446038(a1);
  *(a2 + 4) = v8;
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(v7) = *(a1 + 16);
    goto LABEL_5;
  }

  if (*a2)
  {
    v7 = sub_245473550(a1, (a2 + 8));
    if (v7)
    {
      v4 = v7;
      v5 = *(a1 + 8);
      v6 = *(a1 + 12);
      goto LABEL_5;
    }

    v8 = *(a2 + 4);
  }

  if (!v8)
  {
    return 0;
  }

  return sub_24547344C(a1, (a2 + 200));
}

uint64_t sub_24547386C(uint64_t a1, int *a2)
{
  sub_245445FB0(a1, 0);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
  }

  else
  {
    sub_245445FB0(a1, *a2);
    v4 = *(a1 + 16);
    if (*(a1 + 16))
    {
      v5 = *(a1 + 8);
      v6 = *(a1 + 12);
      v7 = *(a1 + 16);
    }

    else
    {
      sub_245445FB0(a1, a2[1]);
      v4 = *(a1 + 16);
      if (*(a1 + 16))
      {
        v5 = *(a1 + 8);
        v6 = *(a1 + 12);
        v7 = *(a1 + 16);
      }

      else
      {
        sub_245445FB0(a1, a2[2]);
        v4 = *(a1 + 16);
        if (*(a1 + 16))
        {
          v5 = *(a1 + 8);
          v6 = *(a1 + 12);
          v7 = *(a1 + 16);
        }

        else
        {
          sub_245445FB0(a1, a2[3]);
          v4 = *(a1 + 16);
          if (*(a1 + 16))
          {
            v5 = *(a1 + 8);
            v6 = *(a1 + 12);
            v7 = *(a1 + 16);
          }

          else
          {
            sub_245445FB0(a1, a2[4]);
            v4 = *(a1 + 16);
            if (*(a1 + 16))
            {
              v5 = *(a1 + 8);
              v6 = *(a1 + 12);
              v7 = *(a1 + 16);
            }

            else
            {
              sub_245445FB0(a1, a2[5]);
              v4 = *(a1 + 16);
              if (!*(a1 + 16))
              {
                sub_245445FB0(a1, a2[6]);
                return *(a1 + 16);
              }

              v5 = *(a1 + 8);
              v6 = *(a1 + 12);
              v7 = *(a1 + 16);
            }
          }
        }
      }
    }
  }

  sub_245445D98(v7, v5, v6, "asn1PE_PosTechnology");
  return v4;
}

uint64_t sub_2454739E0(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *a2;
  if (v3 >= 3)
  {
    v4 = 4;
    *(a1 + 16) = 4;
    sub_245445D98(4u, *(a1 + 8), *(a1 + 12), "asn1PE_PrefMethod");
  }

  else
  {
    v4 = sub_2454460B8(a1, 0, 2, v3);
    if (!v4)
    {
      return v4;
    }
  }

  sub_245445D98(v4, *(a1 + 8), *(a1 + 12), "asn1PE_PrefMethod");
  return v4;
}

uint64_t sub_245473A64(uint64_t a1, uint64_t a2)
{
  sub_245445FB0(a1, vmaxv_u16(vmovn_s32(vtstq_s32(*(a2 + 12), *(a2 + 12)))) & 1);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(v7) = *(a1 + 16);
LABEL_9:
    sub_245445D98(v7, v5, v6, "asn1PE_PosProtocol");
    return v4;
  }

  sub_245445FB0(a1, *a2);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(v7) = *(a1 + 16);
    goto LABEL_9;
  }

  sub_245445FB0(a1, *(a2 + 4));
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(v7) = *(a1 + 16);
    goto LABEL_9;
  }

  sub_245445FB0(a1, *(a2 + 8));
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(v7) = *(a1 + 16);
    goto LABEL_9;
  }

  if ((vmaxv_u16(vmovn_s32(vtstq_s32(*(a2 + 12), *(a2 + 12)))) & 1) == 0)
  {
    return 0;
  }

  v7 = sub_245443C74(a1, a2);
  v4 = v7;
  if (v7)
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    goto LABEL_9;
  }

  return v4;
}

uint64_t sub_245473BA0(uint64_t a1, uint64_t a2)
{
  sub_245445FB0(a1, 0);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(v7) = *(a1 + 16);
LABEL_7:
    sub_245445D98(v7, v5, v6, "asn1PE_SETCapabilities");
    return v4;
  }

  v7 = sub_24547386C(a1, a2);
  if (v7)
  {
    v4 = v7;
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    goto LABEL_7;
  }

  v7 = sub_2454739E0(a1, (a2 + 28));
  if (v7)
  {
    v4 = v7;
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    goto LABEL_7;
  }

  return sub_245473A64(a1, a2 + 32);
}

uint64_t sub_245473C70(uint64_t a1)
{
  *a1 = &unk_28585A7D8;
  *(a1 + 8) = 0;
  *(a1 + 16) = -1;
  *(a1 + 36) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 68) = 0u;
  *(a1 + 84) = 0u;
  *(a1 + 100) = 0u;
  *(a1 + 116) = 0u;
  *(a1 + 132) = 0u;
  *(a1 + 148) = 0u;
  *(a1 + 164) = 0u;
  *(a1 + 180) = 0u;
  *(a1 + 196) = 0u;
  *(a1 + 212) = 0u;
  *(a1 + 228) = 0u;
  *(a1 + 244) = 0u;
  *(a1 + 356) = 0;
  *(a1 + 20) = 0u;
  *(a1 + 260) = 0u;
  *(a1 + 276) = 0u;
  *(a1 + 292) = 0u;
  *(a1 + 308) = 0u;
  *(a1 + 324) = 0u;
  *(a1 + 340) = 0u;
  v2 = sub_245445AC4();
  v3 = atomic_load((v2 + 1));
  v4 = v3 == 255;
  v5 = 1;
  if (v4)
  {
    v5 = 2;
  }

  v6 = atomic_load((v2 + v5));
  *(a1 + 32) = -1;
  *(a1 + 26) = v6;
  *(a1 + 27) = 0;
  *(a1 + 40) = 0;
  sub_2454735D8(a1 + 48);
  return a1;
}

uint64_t sub_245473D60(uint64_t a1)
{
  *a1 = &unk_28585A7D8;
  *(a1 + 8) = 0;
  v2 = *(a1 + 336);
  if (v2)
  {
    *(a1 + 344) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 312);
  if (v3)
  {
    *(a1 + 320) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 288);
  if (v4)
  {
    *(a1 + 296) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 248);
  if (v5)
  {
    *(a1 + 256) = v5;
    operator delete(v5);
  }

  sub_245461640(a1 + 72);
  sub_2454660B0((a1 + 32));
  return a1;
}

void sub_245473DF8(uint64_t a1, int a2, uint64_t a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = qword_2813CF018;
  if (!a3)
  {
    if (!os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    v25 = 67109120;
    v26 = 515;
    v20 = v3;
LABEL_32:
    _os_log_error_impl(&dword_245396000, v20, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", &v25, 8u);
    goto LABEL_9;
  }

  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 16);
    v25 = 67109376;
    v26 = v7;
    v27 = 1024;
    v28 = a2;
    _os_log_impl(&dword_245396000, v3, OS_LOG_TYPE_DEFAULT, "#gpsd,#supl Current State,%u -> New State,%u", &v25, 0xEu);
  }

  if (*(a1 + 16) == a2)
  {
    v8 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v25) = 0;
      v9 = "#gpsd,#supl Leaving SuplState::UpdateState, current state and new state same";
LABEL_7:
      _os_log_debug_impl(&dword_245396000, v8, OS_LOG_TYPE_DEBUG, v9, &v25, 2u);
      goto LABEL_9;
    }

    goto LABEL_9;
  }

  if (a2 > 4)
  {
    switch(a2)
    {
      case 5:
        v17 = operator new(0x170uLL, MEMORY[0x277D826F0]);
        if (v17)
        {
          v18 = v17;
          sub_24546D760(v17);
          sub_245470314(a3 + 392);
          sub_24547211C(a3, v18);
          v18[1] = a3;
          (*(*v18 + 24))(v18);
          goto LABEL_9;
        }

        v8 = qword_2813CF018;
        if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
        {
          v25 = 67109120;
          v26 = 1537;
          _os_log_error_impl(&dword_245396000, v8, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", &v25, 8u);
          v8 = qword_2813CF018;
        }

        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(v25) = 0;
          v9 = "#gpsd,#supl Leaving SuplState::UpdateState, memalloc failure";
          goto LABEL_7;
        }

        goto LABEL_9;
      case 6:
        v23 = operator new(0x170uLL, MEMORY[0x277D826F0]);
        if (v23)
        {
          v24 = v23;
          sub_245473C70(v23);
          *v24 = &unk_28585A5C0;
          *(v24 + 16) = 4;
          *(v24 + 360) = 0;
          sub_245471A98(a3, 6);
          sub_24547211C(a3, v24);
          *(v24 + 8) = a3;
          (*(*v24 + 24))(v24);
          goto LABEL_9;
        }

        v8 = qword_2813CF018;
        if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
        {
          v25 = 67109120;
          v26 = 1537;
          _os_log_error_impl(&dword_245396000, v8, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", &v25, 8u);
          v8 = qword_2813CF018;
        }

        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(v25) = 0;
          v9 = "#gpsd,#supl Leaving SuplState::UpdateState, memalloc failure";
          goto LABEL_7;
        }

        goto LABEL_9;
      case 7:
        v13 = operator new(0x190uLL, MEMORY[0x277D826F0]);
        if (v13)
        {
          v14 = v13;
          sub_2454543D8(v13);
          sub_245470314(a3 + 392);
          sub_24547211C(a3, v14);
          v14[1] = a3;
          (*(*v14 + 24))(v14);
          goto LABEL_9;
        }

        v8 = qword_2813CF018;
        if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
        {
          v25 = 67109120;
          v26 = 1537;
          _os_log_error_impl(&dword_245396000, v8, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", &v25, 8u);
          v8 = qword_2813CF018;
        }

        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(v25) = 0;
          v9 = "#gpsd,#supl Leaving SuplState::UpdateState, mem alloc failure";
          goto LABEL_7;
        }

        goto LABEL_9;
    }

    goto LABEL_25;
  }

  if (a2)
  {
    if (a2 == 2)
    {
      v21 = operator new(0x178uLL, MEMORY[0x277D826F0]);
      if (v21)
      {
        v22 = v21;
        sub_245470628(v21);
        sub_245470314(a3 + 392);
        sub_24547211C(a3, v22);
        v22[1] = a3;
        (*(*v22 + 24))(v22);
        goto LABEL_9;
      }

      v8 = qword_2813CF018;
      if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
      {
        v25 = 67109120;
        v26 = 1537;
        _os_log_error_impl(&dword_245396000, v8, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", &v25, 8u);
        v8 = qword_2813CF018;
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v25) = 0;
        v9 = "#gpsd,#supl Leaving SuplState::UpdateState, mem alloc failure";
        goto LABEL_7;
      }

      goto LABEL_9;
    }

    if (a2 == 4)
    {
      v11 = operator new(0x170uLL, MEMORY[0x277D826F0]);
      if (v11)
      {
        v12 = v11;
        sub_245473C70(v11);
        *v12 = &unk_28585A5C0;
        *(v12 + 16) = 4;
        *(v12 + 360) = 0;
        sub_245471A98(a3, 4);
        sub_24547211C(a3, v12);
        *(v12 + 8) = a3;
        (*(*v12 + 24))(v12);
        goto LABEL_9;
      }

      v8 = qword_2813CF018;
      if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
      {
        v25 = 67109120;
        v26 = 1537;
        _os_log_error_impl(&dword_245396000, v8, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", &v25, 8u);
        v8 = qword_2813CF018;
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v25) = 0;
        v9 = "#gpsd,#supl Leaving SuplState::UpdateState, mem alloc failure";
        goto LABEL_7;
      }

      goto LABEL_9;
    }

LABEL_25:
    v19 = qword_2813CF018;
    if (!os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    v25 = 67109120;
    v26 = 515;
    v20 = v19;
    goto LABEL_32;
  }

  v15 = operator new(0x168uLL, MEMORY[0x277D826F0]);
  if (v15)
  {
    v16 = v15;
    sub_245473C70(v15);
    *v16 = &unk_28585A560;
    sub_24547211C(a3, v16);
    v16[1] = a3;
    (*(*v16 + 24))(v16);
    goto LABEL_9;
  }

  v8 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
  {
    v25 = 67109120;
    v26 = 1537;
    _os_log_error_impl(&dword_245396000, v8, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", &v25, 8u);
    v8 = qword_2813CF018;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v25) = 0;
    v9 = "#gpsd,#supl Leaving SuplState::UpdateState, mem alloc failure";
    goto LABEL_7;
  }

LABEL_9:
  v10 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2454745A0(uint64_t a1, uint64_t *a2)
{
  __p = 0;
  v9 = 0;
  v10 = 0;
  sub_2453AE4E0(&__p, *a2, a2[1], a2[1] - *a2);
  v6[0] = &__p;
  v6[1] = 0;
  v7 = 0;
  v5[0] = v6;
  v5[1] = a1 + 24;
  v3 = sub_2454667D8(v5);
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  if (v3)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

void sub_245474620(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_24547463C(uint64_t a1, uint64_t *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  if (*(a1 + 8))
  {
    v4 = sub_24546E30C();
    v5 = *(*(a1 + 8) + 376);
    v6 = *a2;
    v7 = *MEMORY[0x277D85DE8];

    return sub_24546F66C(v4, v5, v6);
  }

  else
  {
    v9 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      v11[0] = 67109120;
      v11[1] = 513;
      _os_log_error_impl(&dword_245396000, v9, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", v11, 8u);
    }

    v10 = *MEMORY[0x277D85DE8];
    return 0;
  }
}

uint64_t sub_24547473C()
{
  v5 = *MEMORY[0x277D85DE8];
  if (qword_2813CED78 != -1)
  {
    dispatch_once(&qword_2813CED78, &unk_28585A818);
  }

  result = qword_2813CED70;
  if (!qword_2813CED70)
  {
    v2 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      v3 = 136315138;
      v4 = "GetInstance";
      _os_log_error_impl(&dword_245396000, v2, OS_LOG_TYPE_ERROR, "%s", &v3, 0xCu);
    }

    __assert_rtn("GetInstance", "SuplUtils.cpp", 63, "false && Memory allocation failure");
  }

  v1 = *MEMORY[0x277D85DE8];
  return result;
}

char *sub_245474834()
{
  result = operator new(0x130uLL, MEMORY[0x277D826F0]);
  if (result)
  {
    *(result + 17) = 0u;
    *(result + 18) = 0u;
    *(result + 16) = 0u;
    *(result + 13) = 0u;
    *(result + 14) = 0u;
    *(result + 11) = 0u;
    *(result + 12) = 0u;
    *(result + 9) = 0u;
    *(result + 10) = 0u;
    *(result + 7) = 0u;
    *(result + 8) = 0u;
    *(result + 5) = 0u;
    *(result + 6) = 0u;
    *(result + 3) = 0u;
    *(result + 4) = 0u;
    *(result + 1) = 0u;
    *(result + 2) = 0u;
    *result = 0u;
    *(result + 15) = 0u;
    *(result + 9) = 1;
    *(result + 24) = -254;
    *(result + 34) = 0;
    *(result + 42) = 0;
    *(result + 50) = 0;
    result[113] = 0;
    *(result + 64) = 0;
    *(result + 72) = 0;
    *(result + 80) = 0;
    *(result + 86) = 0;
    *(result + 94) = 0;
    *(result + 48) = 0;
    *(result + 195) = 0;
    *(result + 106) = 0;
    *(result + 114) = 0;
    *(result + 69) = 0;
    *(result + 30) = 0;
    *(result + 31) = 0;
    *(result + 32) = 0;
    *(result + 263) = 0;
    *(result + 36) = 0x100000001;
    *(result + 74) = 1;
  }

  qword_2813CED70 = result;
  return result;
}

uint64_t sub_2454748F8(uint64_t a1, int a2, uint64_t a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v16 = -1;
  v18 = 0;
  v19 = 0;
  __p = 0;
  if (*a3 != 1)
  {
    v7 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_245396000, v7, OS_LOG_TYPE_ERROR, "#gpsd,#supl SuplUtils::SetSETInfo, invalid SET ID type", buf, 2u);
      v7 = qword_2813CF018;
    }

    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    *buf = 67109120;
    v21 = 514;
    goto LABEL_27;
  }

  v5 = *(a3 + 16);
  v6 = *(a3 + 8);
  if ((v5 - v6) >= 9)
  {
    v7 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_245396000, v7, OS_LOG_TYPE_ERROR, "#gpsd,#supl SuplUtils::SetSETInfo, SET ID IMSI length > max limit", buf, 2u);
      v7 = qword_2813CF018;
    }

    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    *buf = 67109120;
    v21 = 514;
LABEL_27:
    _os_log_error_impl(&dword_245396000, v7, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", buf, 8u);
LABEL_10:
    v8 = -4;
    goto LABEL_25;
  }

  if (&v16 == a3)
  {
    v9 = 0;
    v10 = 0;
  }

  else
  {
    sub_2453ADF3C(&__p, v6, v5, v5 - v6);
    v9 = __p;
    v10 = v18;
  }

  buf[0] = -1;
  v11 = v10 - v9;
  if ((v10 - v9) > 7)
  {
    if (v11 != 8)
    {
      v18 = v9 + 8;
LABEL_20:
      v12 = 0;
      do
      {
        v9[v12] = (v9[v12] >> 4) | (16 * v9[v12]);
        ++v12;
        v9 = __p;
      }

      while (v12 < v18 - __p);
      goto LABEL_22;
    }
  }

  else
  {
    sub_2454770D4(&__p, 8 - v11, buf);
    v9 = __p;
    v10 = v18;
  }

  if (v10 != v9)
  {
    goto LABEL_20;
  }

LABEL_22:
  v16 = *a3;
  v13 = sub_245479234();
  sub_2454798BC(v13, a2, &v16);
  if (__p)
  {
    v18 = __p;
    operator delete(__p);
  }

  v8 = 0;
LABEL_25:
  v14 = *MEMORY[0x277D85DE8];
  return v8;
}

void sub_245474B70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_245474B90(uint64_t a1, uint64_t a2, int a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v10 = -1;
  v12 = 0;
  v13 = 0;
  __p = 0;
  v5 = sub_245479234();
  sub_245479944(v5, a3, &v10);
  if (v10 == 1)
  {
    *a2 = 4;
    if ((a2 + 80) != &__p)
    {
      sub_2453ADF3C((a2 + 80), __p, v12, v12 - __p);
    }

    buf[0] = -1;
    v6 = *(a2 + 80);
    v7 = *(a2 + 88) - v6;
    if (v7 > 7)
    {
      if (v7 != 8)
      {
        *(a2 + 88) = v6 + 8;
      }
    }

    else
    {
      sub_2454770D4((a2 + 80), 8 - v7, buf);
    }
  }

  else
  {
    v8 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v15 = 514;
      _os_log_error_impl(&dword_245396000, v8, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", buf, 8u);
    }
  }

  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void sub_245474CE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_245474D04(uint64_t a1, uint64_t a2, int a3)
{
  result = sub_245479234();
  v6 = *(result + 16);
  if (v6)
  {
    while (*v6 != a3)
    {
      v6 = *(v6 + 8);
      if (!v6)
      {
        return result;
      }
    }

    return sub_245464DF4(a2, (v6 + 56));
  }

  return result;
}

uint64_t sub_245474D6C(uint64_t a1, uint64_t a2, uint64_t *a3, unsigned int a4)
{
  v43 = *MEMORY[0x277D85DE8];
  v8 = operator new(0x218uLL, MEMORY[0x277D826F0]);
  if (v8)
  {
    v9 = v8;
    sub_245460B68(v8);
    if (sub_24546100C(v9, a2, a3))
    {
      v10 = qword_2813CF018;
      if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
      {
        v36 = 67109120;
        v37 = 770;
        _os_log_error_impl(&dword_245396000, v10, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", &v36, 8u);
      }

      v11 = sub_24547C334();
      v12 = sub_245475188(*(*(v9 + 48) + 20));
      v38 = 0;
      v39 = 0x200000000;
      v36 = a4;
      v42 = -1;
      v40 = v12;
      v41 = 0;
      sub_24547D2BC(v11, &v36);
      v13 = sub_245460D6C(v9);
      MEMORY[0x245D6A0D0](v13, 0x1030C40AE74B18ELL);
      v14 = -1;
    }

    else
    {
      v16 = *(v9 + 8);
      if (v16)
      {
        v17 = *v16;
        if (v17)
        {
          if (*(*(v17 + 16) + 108))
          {
            v18 = sub_24546E30C();
            sub_24546FA38(v18);
          }
        }
      }

      *v9 = a4;
      *(v9 + 4) = a2;
      *(v9 + 16) = 1;
      v19 = operator new(0x18uLL, MEMORY[0x277D826F0]);
      if (v19)
      {
        v19[1] = 0;
        v19[2] = v9;
        *v19 = a4;
        v20 = *(a1 + 16);
        while (v20)
        {
          v21 = v20;
          v20 = *(v20 + 8);
          if (!v20)
          {
            *(v21 + 8) = v19;
            v19[1] = 0;
            goto LABEL_24;
          }
        }

        v19[1] = *(a1 + 16);
        *(a1 + 16) = v19;
LABEL_24:
        v26 = sub_245478884();
        v27 = sub_2454789A8(v26, *v9);
        v28 = sub_24547473C();
        if (*(v28 + 44))
        {
          v29 = *(v28 + 44);
        }

        else
        {
          v29 = 260;
        }

        sub_24546FDEC((v9 + 504), v27, 0, v29, 1);
        sub_24546FF4C(v9 + 504);
        v30 = sub_24547C334();
        v31 = sub_245475188(*(*(v9 + 48) + 20));
        v38 = 0;
        v39 = 0x100000000;
        v36 = a4;
        v42 = -1;
        v40 = v31;
        v41 = 0;
        sub_24547D2BC(v30, &v36);
        v32 = *(sub_245479234() + 16);
        if (!v32)
        {
          goto LABEL_33;
        }

        while (*v32 != a2)
        {
          v32 = *(v32 + 8);
          if (!v32)
          {
            goto LABEL_33;
          }
        }

        if (sub_2454797A0(v32))
        {
          sub_2454752CC(a1);
        }

        else
        {
LABEL_33:
          v33 = sub_24547C334();
          sub_24547C27C(v33);
        }

        v14 = 0;
      }

      else
      {
        v22 = qword_2813CF018;
        if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
        {
          v36 = 67109120;
          v37 = 1537;
          _os_log_error_impl(&dword_245396000, v22, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", &v36, 8u);
          v22 = qword_2813CF018;
        }

        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v36 = 67109120;
          v37 = 1537;
          _os_log_error_impl(&dword_245396000, v22, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", &v36, 8u);
        }

        v23 = sub_24547C334();
        v24 = sub_245475188(*(*(v9 + 48) + 20));
        v38 = 0;
        v39 = 0x200000000;
        v36 = a4;
        v42 = -1;
        v40 = v24;
        v41 = 0;
        sub_24547D2BC(v23, &v36);
        v25 = sub_245460D6C(v9);
        MEMORY[0x245D6A0D0](v25, 0x1030C40AE74B18ELL);
        v14 = -2;
      }
    }
  }

  else
  {
    v15 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      v36 = 67109120;
      v37 = 513;
      _os_log_error_impl(&dword_245396000, v15, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", &v36, 8u);
    }

    v14 = -3;
  }

  v34 = *MEMORY[0x277D85DE8];
  return v14;
}

uint64_t sub_245475188(unsigned int a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if (a1 >= 0x11)
  {
    v2 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v6[0]) = 0;
      _os_log_error_impl(&dword_245396000, v2, OS_LOG_TYPE_ERROR, "Position Method", v6, 2u);
    }

    v1 = 0;
  }

  else
  {
    v1 = dword_24548B3B8[a1];
  }

  v3 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_INFO))
  {
    v6[0] = 67109120;
    v6[1] = v1;
    _os_log_impl(&dword_245396000, v3, OS_LOG_TYPE_INFO, "Position Method,%u", v6, 8u);
    v3 = qword_2813CF018;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v6[0]) = 0;
    _os_log_debug_impl(&dword_245396000, v3, OS_LOG_TYPE_DEBUG, "#gpsd,#supl Leaving SuplUtils::ConvertPosMethod", v6, 2u);
  }

  v4 = *MEMORY[0x277D85DE8];
  return v1;
}

void sub_2454752CC(uint64_t a1)
{
  for (i = *(a1 + 16); i; i = *(i + 8))
  {
    v3 = *(i + 16);
    if (v3)
    {
      if (*(v3 + 16) == 1)
      {
        *(v3 + 16) = 0;
        v4 = sub_24546E30C();
        if (v4)
        {
          v5 = v4;
          BYTE4(v14) = -1;
          v15 = 0;
          LOBYTE(v14) = 3;
          v6 = *(i + 16);
          v7 = *(v6 + 8);
          if (v7)
          {
            v8 = *v7;
            if (v8)
            {
              if (*(*(v8 + 16) + 108))
              {
                LOBYTE(v14) = 2;
              }
            }
          }

          v9 = qword_2813CF018;
          if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
          {
            v10 = 0;
            _os_log_debug_impl(&dword_245396000, v9, OS_LOG_TYPE_DEBUG, "#gpsd,#supl SuplUtils::ProcessWaitingSuplInits, calling InitSessionNode", &v10, 2u);
            v6 = *(i + 16);
          }

          sub_24546E578(v5, *(v6 + 4), *v6, &v14, 0);
          memset(__p, 0, 25);
          v12 = 0u;
          v11 = 0u;
          v10 = 1;
          LODWORD(v11) = 56;
          (*(*v5 + 8))(v5, **(i + 16), &v10);
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          if (*(&v11 + 1))
          {
            *&v12 = *(&v11 + 1);
            operator delete(*(&v11 + 1));
          }
        }
      }
    }

    if (!*(a1 + 16))
    {
      break;
    }
  }
}

uint64_t sub_24547547C(uint64_t a1, int a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    while (*v2 != a2)
    {
      v2 = *(v2 + 8);
      if (!v2)
      {
        goto LABEL_4;
      }
    }

    return *(v2 + 16);
  }

  else
  {
LABEL_4:
    v3 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
    {
      *v5 = 0;
      _os_log_debug_impl(&dword_245396000, v3, OS_LOG_TYPE_DEBUG, "#gpsd,#supl Leaving SuplUtils::GetSuplInitRecd, nullptr", v5, 2u);
    }

    return 0;
  }
}

void sub_24547550C(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = *(a1 + 16);
    do
    {
      if (*v4 == a2)
      {
        while (*v3 != a2)
        {
          v3 = *(v3 + 8);
          if (!v3)
          {
            goto LABEL_11;
          }
        }

        sub_245479ABC(a1, v3);
LABEL_11:
        v6 = *(v4 + 16);
        if (v6)
        {
          v7 = sub_245460D6C(v6);
          MEMORY[0x245D6A0D0](v7, 0x1030C40AE74B18ELL);
        }

        *(v4 + 8) = 0;
        *(v4 + 16) = 0;

        JUMPOUT(0x245D6A0D0);
      }

      v4 = *(v4 + 8);
    }

    while (v4);
  }

  v5 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
  {
    *v8 = 0;
    _os_log_debug_impl(&dword_245396000, v5, OS_LOG_TYPE_DEBUG, "#gpsd,#supl Leaving SuplUtils::DeleteSuplInitRecd, nullptr", v8, 2u);
  }
}

uint64_t sub_245475608(uint64_t a1, unsigned __int8 *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = *a3;
  if (v5 == *a2)
  {
    v6 = 1;
  }

  else
  {
    v7 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      v24 = 67109120;
      v25 = 515;
      _os_log_error_impl(&dword_245396000, v7, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", &v24, 8u);
      v7 = qword_2813CF018;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v24) = 0;
      _os_log_debug_impl(&dword_245396000, v7, OS_LOG_TYPE_DEBUG, "#gpsd,#supl Leaving SuplUtils::ValidateSlpId, SLP id type not matching", &v24, 2u);
    }

    v6 = 0;
    v5 = *a2;
  }

  if (v5 == 255)
  {
    v17 = qword_2813CF018;
    if (!os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_38;
    }

    v24 = 67109120;
    v25 = 515;
    goto LABEL_29;
  }

  if (v5 != 2)
  {
    if (v5 == 1)
    {
      v8 = a2[8];
      if (v8 == 2)
      {
        v18 = a3[5];
        v19 = a3[6] - v18;
        v20 = *(a2 + 5);
        if (v19 != *(a2 + 6) - v20 || memcmp(v18, v20, v19))
        {
          v12 = qword_2813CF018;
          if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
          {
            v24 = 67109120;
            v25 = 515;
            _os_log_error_impl(&dword_245396000, v12, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", &v24, 8u);
            v12 = qword_2813CF018;
          }

          if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_37;
          }

          LOWORD(v24) = 0;
          v13 = "#gpsd,#supl Leaving SuplUtils::ValidateSlpId, SLP id IPv6 not matching";
          goto LABEL_36;
        }
      }

      else if (v8 == 1)
      {
        v9 = a3[2];
        v10 = a3[3] - v9;
        v11 = *(a2 + 2);
        if (v10 != *(a2 + 3) - v11 || memcmp(v9, v11, v10))
        {
          v12 = qword_2813CF018;
          if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
          {
            v24 = 67109120;
            v25 = 515;
            _os_log_error_impl(&dword_245396000, v12, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", &v24, 8u);
            v12 = qword_2813CF018;
          }

          if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_37;
          }

          LOWORD(v24) = 0;
          v13 = "#gpsd,#supl Leaving SuplUtils::ValidateSlpId, SLP id IPv4 not matching";
LABEL_36:
          _os_log_debug_impl(&dword_245396000, v12, OS_LOG_TYPE_DEBUG, v13, &v24, 2u);
LABEL_37:
          v6 = 0;
          goto LABEL_38;
        }
      }

      else
      {
        v23 = qword_2813CF018;
        if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
        {
          v24 = 67109120;
          v25 = 514;
          _os_log_error_impl(&dword_245396000, v23, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", &v24, 8u);
          v23 = qword_2813CF018;
        }

        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(v24) = 0;
          _os_log_debug_impl(&dword_245396000, v23, OS_LOG_TYPE_DEBUG, "#gpsd,#supl SuplUtils::ValidateSlpId, SLP id IpAddr type out of range", &v24, 2u);
        }
      }

      goto LABEL_38;
    }

    v17 = qword_2813CF018;
    if (!os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_38;
    }

    v24 = 67109120;
    v25 = 514;
LABEL_29:
    _os_log_error_impl(&dword_245396000, v17, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", &v24, 8u);
    goto LABEL_38;
  }

  v14 = a3[8];
  v15 = a3[9] - v14;
  v16 = *(a2 + 8);
  if (v15 != *(a2 + 9) - v16 || memcmp(v14, v16, v15))
  {
    v12 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      v24 = 67109120;
      v25 = 515;
      _os_log_error_impl(&dword_245396000, v12, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", &v24, 8u);
      v12 = qword_2813CF018;
    }

    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_37;
    }

    LOWORD(v24) = 0;
    v13 = "#gpsd,#supl SuplUtils::ValidateSlpId, SLP id FQDN data not matching";
    goto LABEL_36;
  }

LABEL_38:
  v21 = *MEMORY[0x277D85DE8];
  return v6;
}

BOOL sub_245475A68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 8) - *a2;
  if (v4 == *(a3 + 8) - *a3 && !memcmp(*a2, *a3, v4))
  {
    result = 1;
  }

  else
  {
    v5 = qword_2813CF018;
    result = os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR);
    if (result)
    {
      v8[0] = 67109120;
      v8[1] = 515;
      _os_log_error_impl(&dword_245396000, v5, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", v8, 8u);
      result = 0;
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL sub_245475B3C(uint64_t a1, int a2, int a3)
{
  v7 = *MEMORY[0x277D85DE8];
  if (a2 == a3)
  {
    result = 1;
  }

  else
  {
    v4 = qword_2813CF018;
    result = os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR);
    if (result)
    {
      v6[0] = 67109120;
      v6[1] = 515;
      _os_log_error_impl(&dword_245396000, v4, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", v6, 8u);
      result = 0;
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL sub_245475BF4(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  if (v3 == *a3)
  {
    if (*a2 > 4u)
    {
      if (v3 != 5)
      {
        if (v3 == 6)
        {
          v14 = a2[128];
          if (v14 != a3[128])
          {
            v7 = qword_2813CF018;
            result = os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR);
            if (!result)
            {
              goto LABEL_19;
            }

            v15 = 67109120;
            v16 = 515;
            goto LABEL_12;
          }

          if (v14 != 2 && v14 != 1)
          {
            v7 = qword_2813CF018;
            result = os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR);
            if (!result)
            {
              goto LABEL_19;
            }

            v15 = 67109120;
            v16 = 515;
            goto LABEL_12;
          }

          goto LABEL_18;
        }

        if (v3 != 255)
        {
LABEL_20:
          v7 = qword_2813CF018;
          result = os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR);
          if (!result)
          {
            goto LABEL_19;
          }

          v15 = 67109120;
          v16 = 515;
          goto LABEL_12;
        }
      }
    }

    else if ((v3 - 2) >= 2)
    {
      if (v3 == 1)
      {
        v11 = *(a2 + 1);
        v12 = *(a2 + 2) - v11;
        v13 = *(a3 + 1);
        if (v12 != *(a3 + 2) - v13 || memcmp(v11, v13, v12))
        {
          v7 = qword_2813CF018;
          result = os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR);
          if (!result)
          {
            goto LABEL_19;
          }

          v15 = 67109120;
          v16 = 515;
          goto LABEL_12;
        }

        goto LABEL_18;
      }

      if (v3 == 4)
      {
        v4 = *(a2 + 10);
        v5 = *(a2 + 11) - v4;
        v6 = *(a3 + 10);
        if (v5 != *(a3 + 11) - v6 || memcmp(v4, v6, v5))
        {
          v7 = qword_2813CF018;
          result = os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR);
          if (result)
          {
            v15 = 67109120;
            v16 = 515;
LABEL_12:
            _os_log_error_impl(&dword_245396000, v7, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", &v15, 8u);
            result = 0;
            goto LABEL_19;
          }

          goto LABEL_19;
        }

LABEL_18:
        result = 1;
        goto LABEL_19;
      }

      goto LABEL_20;
    }

    v9 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      v15 = 67109120;
      v16 = 770;
      _os_log_error_impl(&dword_245396000, v9, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", &v15, 8u);
    }

    goto LABEL_18;
  }

  v7 = qword_2813CF018;
  result = os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v15 = 67109120;
    v16 = 515;
    goto LABEL_12;
  }

LABEL_19:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

double sub_245475EE8(uint64_t a1, uint64_t a2, int a3)
{
  v6 = sub_245479234();
  v7 = sub_245479750(v6, a3);
  v8 = 0;
  *(a2 + 36) = 0;
  if (!*(a1 + 296))
  {
    v8 = *(a1 + 284) == 1;
  }

  if (!v7)
  {
    v8 = 0;
  }

  *a2 = v8;
  result = *(a1 + 288);
  *(a2 + 4) = result;
  *(a2 + 40) = 0;
  *(a2 + 32) = 0;
  return result;
}

void sub_245475F5C(_DWORD *a1, uint64_t a2, int a3, int a4)
{
  sub_245475EE8(a1, a2, a4);
  if (a1[72] == 1)
  {
    *(a2 + 28) = 1;
  }

  if ((a3 & 0xFFFFFFFD) == 0 && !a1[74] && a1[71] == 1)
  {
    *(a2 + 28) = 0;
  }
}

void sub_245475FC4(int a1, uint64_t a2, uint64_t a3)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a3 + 224 != a2)
  {
    sub_2453ADF3C(a2, *(a3 + 224), *(a3 + 232), *(a3 + 232) - *(a3 + 224));
  }

  v5 = *(a3 + 248);
  *(a2 + 24) = v5;
  if (v5 == 255)
  {
    v12 = qword_2813CF018;
    if (!os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_26;
    }

    v15 = 67109120;
    v16 = 515;
    goto LABEL_25;
  }

  if (v5 == 2)
  {
    v7 = (a2 + 88);
    if (a2 + 88 != a3 + 312)
    {
      v8 = *(a3 + 312);
      v9 = *(a3 + 320);
      v10 = *MEMORY[0x277D85DE8];
      v11 = v9 - v8;

      goto LABEL_13;
    }

    goto LABEL_26;
  }

  if (v5 != 1)
  {
    v12 = qword_2813CF018;
    if (!os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_26;
    }

    v15 = 67109120;
    v16 = 514;
    goto LABEL_25;
  }

  v6 = *(a3 + 256);
  *(a2 + 32) = v6;
  if (v6 != 2)
  {
    if (v6 == 1)
    {
      v7 = (a2 + 40);
      if (a2 + 40 != a3 + 264)
      {
        v8 = *(a3 + 264);
        v9 = *(a3 + 272);
        goto LABEL_20;
      }

      goto LABEL_26;
    }

    v12 = qword_2813CF018;
    if (!os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_26;
    }

    v15 = 67109120;
    v16 = 514;
LABEL_25:
    _os_log_error_impl(&dword_245396000, v12, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", &v15, 8u);
    goto LABEL_26;
  }

  v7 = (a2 + 64);
  if (a2 + 64 != a3 + 288)
  {
    v8 = *(a3 + 288);
    v9 = *(a3 + 296);
LABEL_20:
    v13 = *MEMORY[0x277D85DE8];
    v11 = v9 - v8;

LABEL_13:
    sub_2453ADF3C(v7, v8, v9, v11);
    return;
  }

LABEL_26:
  v14 = *MEMORY[0x277D85DE8];
}

void sub_2454761F8(int a1, uint64_t a2, uint64_t a3)
{
  v20 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    v7 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      v18 = 67109120;
      v19 = 515;
      _os_log_error_impl(&dword_245396000, v7, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", &v18, 8u);
    }

    goto LABEL_32;
  }

  *a2 = 0;
  v4 = *(a3 + 1);
  if (v4 <= 0xA)
  {
    if (((1 << v4) & 0x523) != 0)
    {
      goto LABEL_4;
    }

    if (v4 == 3)
    {
      v13 = *(a3 + 32);
      *(a2 + 48) = v13;
      *(a2 + 52) = *(a3 + 40);
      *(a2 + 44) = (v13 & 0x800000) != 0;
      *(a2 + 40) = 0;
      *(a2 + 32) = 1;
      *(a2 + 58) = *(a3 + 64);
      *(a2 + 56) = *(a3 + 48);
      v11 = *(a3 + 56);
      v12 = 65;
LABEL_27:
      v15 = (a2 + 8);
      v14 = *(a2 + 8);
      *(a2 + 57) = v11;
      *(a2 + 36) = 1;
      *(a2 + 59) = *(a3 + v12);
      v16 = *(a2 + 16) - v14;
      if (v16 > 0xC)
      {
        if (v16 != 13)
        {
          *(a2 + 16) = v14 + 13;
        }
      }

      else
      {
        sub_2453A6334(v15, 13 - v16);
        v14 = *v15;
      }

      *v14 = (*(a3 + 216) / 0xAu - 10 * ((6554 * (*(a3 + 216) / 0xAu)) >> 16)) | 0x30;
      (*v15)[1] = (*(a3 + 216) % 0xAu) | 0x30;
      (*v15)[2] = (*(a3 + 218) / 0xAu - 10 * ((26 * (*(a3 + 218) / 0xAu)) >> 8)) | 0x30;
      (*v15)[3] = (*(a3 + 218) % 0xAu) | 0x30;
      (*v15)[4] = (*(a3 + 219) / 0xAu - 10 * ((26 * (*(a3 + 219) / 0xAu)) >> 8)) | 0x30;
      (*v15)[5] = (*(a3 + 219) % 0xAu) | 0x30;
      (*v15)[6] = (*(a3 + 220) / 0xAu - 10 * ((26 * (*(a3 + 220) / 0xAu)) >> 8)) | 0x30;
      (*v15)[7] = (*(a3 + 220) % 0xAu) | 0x30;
      (*v15)[8] = (*(a3 + 221) / 0xAu - 10 * ((26 * (*(a3 + 221) / 0xAu)) >> 8)) | 0x30;
      (*v15)[9] = (*(a3 + 221) % 0xAu) | 0x30;
      (*v15)[10] = (*(a3 + 222) / 0xAu - 10 * ((26 * (*(a3 + 222) / 0xAu)) >> 8)) | 0x30;
      (*v15)[11] = (*(a3 + 222) % 0xAu) | 0x30;
      (*v15)[12] = 90;
      goto LABEL_32;
    }

    if (v4 == 9)
    {
      *(a2 + 44) = (*(a2 + 48) & 0x800000) != 0;
      *(a2 + 48) = *(a3 + 68) & 0x7FFFFF;
      *(a2 + 52) = *(a3 + 76);
      v8 = *(a3 + 84);
      v9 = *(a3 + 108);
      if (v8 != 0xFFFF && v9 != 255)
      {
        *(a2 + 40) = 1;
      }

      *(a2 + 64) = v9;
      *(a2 + 60) = v8 >> 15;
      *(a2 + 62) = v8 & 0x7FFF;
      v10 = *(a3 + 92);
      v11 = *(a3 + 100);
      if (v10 != 255 && v11 != 255 && *(a3 + 116) != 255)
      {
        *(a2 + 32) = 1;
      }

      *(a2 + 58) = *(a3 + 116);
      *(a2 + 56) = v10;
      v12 = 117;
      goto LABEL_27;
    }
  }

  if (v4 == 255)
  {
LABEL_4:
    v5 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      v18 = 67109120;
      v19 = 770;
      _os_log_error_impl(&dword_245396000, v5, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", &v18, 8u);
      v5 = qword_2813CF018;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v18) = 0;
      v6 = "#gpsd,#supl Leaving SuplUtils::ConvertLocEstimatetoAsn1Position, invalid/unsupported shape type";
LABEL_8:
      _os_log_debug_impl(&dword_245396000, v5, OS_LOG_TYPE_DEBUG, v6, &v18, 2u);
      goto LABEL_32;
    }

    goto LABEL_32;
  }

  v5 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
  {
    v18 = 67109120;
    v19 = 515;
    _os_log_error_impl(&dword_245396000, v5, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", &v18, 8u);
    v5 = qword_2813CF018;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v18) = 0;
    v6 = "#gpsd,#supl Leaving SuplUtils::ConvertLocEstimatetoAsn1Position, invalid shape type";
    goto LABEL_8;
  }

LABEL_32:
  v17 = *MEMORY[0x277D85DE8];
}

BOOL sub_2454766B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a3 == 2)
  {
    v3 = qword_2813CF018;
    result = os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_INFO);
    if (!result)
    {
      return result;
    }

    v15 = 0;
    v5 = "Last know position fix is not valid";
    v6 = &v15;
    goto LABEL_10;
  }

  if (*(a3 + 1) != 9)
  {
    v3 = qword_2813CF018;
    result = os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_INFO);
    if (!result)
    {
      return result;
    }

    *buf = 0;
    v5 = "Last know position shape type is not valid";
    v6 = buf;
    goto LABEL_10;
  }

  if (*(a3 + 92) > *(a2 + 12))
  {
    v3 = qword_2813CF018;
    result = os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_INFO);
    if (!result)
    {
      return result;
    }

    v13 = 0;
    v5 = "stored semiminor axis is not valid";
    v6 = &v13;
    goto LABEL_10;
  }

  if (*a2 == 1 && *(a3 + 108) > *(a2 + 13))
  {
    v3 = qword_2813CF018;
    result = os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_INFO);
    if (result)
    {
      v12 = 0;
      v5 = "vertical accuracy is not valid";
      v6 = &v12;
LABEL_10:
      _os_log_impl(&dword_245396000, v3, OS_LOG_TYPE_INFO, v5, v6, 2u);
      return 0;
    }
  }

  else
  {
    if (*(a2 + 4) != 1)
    {
      return 1;
    }

    v9 = sub_24539D8D0();
    HIDWORD(v10) = 1041313291;
    LODWORD(v10) = *(a3 + 228);
    if (1000 * *(a2 + 16) >= -(v10 - v9 * 0.000000001 * 1000.0))
    {
      return 1;
    }

    v3 = qword_2813CF018;
    result = os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_INFO);
    if (result)
    {
      v11 = 0;
      v5 = "maxlocation age is not valid";
      v6 = &v11;
      goto LABEL_10;
    }
  }

  return result;
}

uint64_t sub_245476890(uint64_t a1, uint64_t a2)
{
  *a2 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 72);
  v6 = *(a1 + 88);
  *(a2 + 56) = *(a1 + 104);
  *(a2 + 40) = v6;
  *(a2 + 24) = v5;
  *(a2 + 8) = v4;
  v7 = *(a1 + 120);
  v8 = *(a1 + 136);
  v9 = *(a1 + 152);
  *(a2 + 120) = *(a1 + 168);
  *(a2 + 104) = v9;
  *(a2 + 88) = v8;
  *(a2 + 72) = v7;
  v10 = *(a1 + 184);
  v11 = *(a1 + 200);
  v12 = *(a1 + 216);
  *(a2 + 184) = *(a1 + 232);
  *(a2 + 168) = v12;
  *(a2 + 152) = v11;
  *(a2 + 136) = v10;
  if (a1 + 48 != a2)
  {
    sub_245476F84((a2 + 192), *(a1 + 240), *(a1 + 248), (*(a1 + 248) - *(a1 + 240)) >> 4);
  }

  *(a2 + 216) = *(a1 + 264);
  return 0;
}

unsigned __int8 *sub_24547694C(unsigned __int8 *result, char *__str)
{
  v2 = *result;
  if (v2 == 1)
  {
    v5 = result[8];
    if (v5 == 2)
    {
      *(__str + 64) = 2;
      v7 = *(result + 5);
      v20 = v7[14];
      v21 = v7[15];
      v18 = v7[12];
      v19 = v7[13];
      v16 = v7[10];
      v17 = v7[11];
      v14 = v7[8];
      v15 = v7[9];
      v12 = v7[6];
      v13 = v7[7];
      return snprintf(__str, 0x100uLL, "%d.%d.%d.%d.%d.%d.%d.%d.%d.%d.%d.%d.%d.%d.%d.%d", *v7, v7[1], v7[2], v7[3], v7[4], v7[5]);
    }

    else if (v5 == 1)
    {
      *(__str + 64) = 1;
      v6 = *(result + 2);
      v10 = v6[2];
      v11 = v6[3];
      v8 = *v6;
      v9 = v6[1];
      return snprintf(__str, 0x100uLL, "%d.%d.%d.%d");
    }
  }

  else if (v2 == 2)
  {
    *(__str + 64) = 3;
    v3 = *(result + 8);
    v4 = *(result + 9);
    if (v4 != v3)
    {

      return memmove(__str, v3, v4 - v3);
    }
  }

  else
  {
    *(__str + 64) = 0;
  }

  return result;
}

uint64_t sub_245476A78(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v55 = *MEMORY[0x277D85DE8];
  if (*a3 != a3[1])
  {
    LOWORD(buf) = 0;
    v6 = sub_245445AC4();
    v7 = atomic_load((v6 + 1));
    v8 = v7 == 255;
    v9 = 1;
    if (v8)
    {
      v9 = 2;
    }

    v10 = atomic_load((v6 + v9));
    BYTE2(buf) = v10;
    *(&buf + 3) = 0;
    v29 = -1;
    v30 = 0;
    sub_2454735D8(v31);
    __p = 0;
    v24 = 0;
    v25 = 0;
    sub_2453AE4E0(&__p, *a3, a3[1], a3[1] - *a3);
    v21[0] = &__p;
    v21[1] = 0;
    v22 = 0;
    v20[0] = v21;
    v20[1] = &buf;
    if (sub_2454667D8(v20) || v29 != 1)
    {
      v16 = qword_2813CF018;
      if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
      {
        *v26 = 67109120;
        v27 = 515;
        _os_log_error_impl(&dword_245396000, v16, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", v26, 8u);
      }

      v15 = -5;
      goto LABEL_43;
    }

    v11 = v30;
    *(a4 + 5) = *(v30 + 224) == 0;
    *(a4 + 6) = BYTE2(buf);
    *(a4 + 7) = *(&buf + 3);
    *(a4 + 12) = sub_245475188(*(v11 + 20));
    *(a4 + 272) = 0;
    if (v31[1] == 1)
    {
      sub_24547694C(v48, (a4 + 16));
    }

    *(a4 + 536) = 0;
    if (*(v11 + 292) == 1)
    {
      sub_24547694C((v11 + 592), (a4 + 280));
    }

    *(a4 + 800) = 0;
    if (*(v11 + 4) == 1)
    {
      sub_24547694C((v11 + 112), (a4 + 544));
    }

    *(a4 + 808) = *(v11 + 108) != 0;
    *(a4 + 812) = 0;
    if (*v11 == 1)
    {
      v12 = *(v11 + 44);
      if (v12 <= 4)
      {
        *(a4 + 812) = v12 + 1;
      }
    }

    *(a4 + 816) = 0;
    if (*(v11 + 304))
    {
      v13 = *(v11 + 792);
      if (v13 == 1)
      {
        *(a4 + 816) = 1;
      }

      else
      {
        LOBYTE(v13) = 0;
      }

      if (*(v11 + 796) == 1)
      {
        LOBYTE(v13) = v13 | 2;
        *(a4 + 816) = v13;
      }

      if (*(v11 + 800) == 1)
      {
        LOBYTE(v13) = v13 | 4;
        *(a4 + 816) = v13;
      }

      if (*(v11 + 804) == 1)
      {
        LOBYTE(v13) = v13 | 8;
        *(a4 + 816) = v13;
      }

      if (*(v11 + 808) == 1)
      {
        LOBYTE(v13) = v13 | 0x10;
        *(a4 + 816) = v13;
      }

      if (*(v11 + 812) == 1)
      {
        *(a4 + 816) = v13 | 0x20;
      }
    }

    *(a4 + 817) = 0;
    if (*(v11 + 8) == 1)
    {
      *(a4 + 817) = 1;
      *(a4 + 820) = *(v11 + 212);
      *(a4 + 824) = *(v11 + 216);
      *(a4 + 828) = *(v11 + 220);
    }

    *(a4 + 832) = 0;
    if (*(v11 + 288) == 1)
    {
      v17 = *(v11 + 584);
      if (v17 == 1)
      {
LABEL_41:
        *(a4 + 832) = v17;
        goto LABEL_42;
      }

      if (!*(v11 + 584))
      {
        v17 = 2;
        goto LABEL_41;
      }
    }

LABEL_42:
    v15 = 0;
    *(a4 + 4) = 1;
LABEL_43:
    if (__p)
    {
      v24 = __p;
      operator delete(__p);
    }

    if (v53)
    {
      v54 = v53;
      operator delete(v53);
    }

    if (v51)
    {
      v52 = v51;
      operator delete(v51);
    }

    if (v49)
    {
      v50 = v49;
      operator delete(v49);
    }

    if (v46)
    {
      v47 = v46;
      operator delete(v46);
    }

    if (v44)
    {
      v45 = v44;
      operator delete(v44);
    }

    if (v42)
    {
      v43 = v42;
      operator delete(v42);
    }

    if (v40)
    {
      v41 = v40;
      operator delete(v40);
    }

    if (v38)
    {
      v39 = v38;
      operator delete(v38);
    }

    if (v36)
    {
      v37 = v36;
      operator delete(v36);
    }

    if (v34)
    {
      v35 = v34;
      operator delete(v34);
    }

    if (v32)
    {
      v33 = v32;
      operator delete(v32);
    }

    sub_2454660B0(&v29);
    goto LABEL_68;
  }

  v14 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
  {
    buf = 0x20304000100;
    _os_log_error_impl(&dword_245396000, v14, OS_LOG_TYPE_ERROR, "#gpsd #supl Error code %d", &buf, 8u);
  }

  v15 = -5;
LABEL_68:
  v18 = *MEMORY[0x277D85DE8];
  return v15;
}

void sub_245476E98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_2454615CC(&a19);
  _Unwind_Resume(a1);
}

void sub_245476ED4(uint64_t a1, unsigned int a2, _DWORD *a3)
{
  if (a2 > 0x17)
  {
    v3 = 0;
  }

  else
  {
    v3 = dword_24548B3FC[a2];
  }

  *a3 = v3;
}

void sub_245476EF8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    do
    {
      v3 = *(v1 + 8);
      if (*(v1 + 16))
      {
        v4 = sub_24546E30C();
        sub_24546F540(v4, **(v1 + 16));
        v5 = sub_24546A68C();
        sub_245448DD0(off_27EE134B8, **(v1 + 16));
        sub_24546B0B4(v5);
        sub_24547550C(a1, **(v1 + 16));
      }

      v1 = v3;
    }

    while (v3);
  }
}

void *sub_245476F84(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 60))
    {
      v9 = v7 >> 3;
      if (v7 >> 3 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF0)
      {
        v10 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      if (!(v10 >> 60))
      {
        operator new();
      }
    }

    sub_2453A631C();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 4)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void sub_2454770D4(char **a1, size_t __len, unsigned __int8 *a3)
{
  v6 = a1[1];
  v5 = a1[2];
  if (v5 - v6 >= __len)
  {
    if (__len)
    {
      memset(a1[1], *a3, __len);
      v6 += __len;
    }

    a1[1] = v6;
  }

  else
  {
    v7 = *a1;
    v8 = (v6 - *a1);
    v9 = &v8[__len];
    if (&v8[__len] < 0)
    {
      sub_2453A631C();
    }

    v10 = v5 - v7;
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      operator new();
    }

    v12 = v6 - *a1;
    memset(v8, *a3, __len);
    memcpy(&v8[v7 - v6], v7, v12);
    *a1 = &v8[v7 - v6];
    a1[1] = &v8[__len];
    a1[2] = 0;
    if (v7)
    {

      operator delete(v7);
    }
  }
}

void sub_245477218(char **a1, unsigned int *a2, char **a3)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = v7 - *a1;
  if (((v8 + 9) & 0x3F) != 0)
  {
    v9 = ((v8 + 9) >> 6) + 1;
  }

  else
  {
    v9 = (v8 + 9) >> 6;
  }

  *a2 = v9;
  if (a3 != a1)
  {
    sub_2453ADF3C(a3, v6, v7, v8);
    v9 = *a2;
  }

  v10 = v9 << 6;
  v11 = *a3;
  v12 = a3[1] - *a3;
  if (v10 <= v12)
  {
    if (v10 < v12)
    {
      a3[1] = &v11[v10];
    }
  }

  else
  {
    sub_2453A6334(a3, v10 - v12);
    v11 = *a3;
  }

  v11[*(a1 + 2) - *a1] = 0x80;
  v13 = 8 * (a1[1] - *a1);
  if (v13)
  {
    v14 = *a2 << 6;
    if (v14)
    {
      v15 = v14 - 1;
      do
      {
        (*a3)[v15] = v13;
        v17 = v15-- != 0;
        if (v13 < 0x100)
        {
          break;
        }

        v13 >>= 8;
      }

      while (v17);
    }
  }
}

uint64_t *sub_2454772FC(uint64_t *result, void *a2)
{
  v3 = *result;
  v2 = result[1];
  if (v2 != *result)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = *(v3 + 4 * v4);
      if (v6)
      {
        v7 = (4 * v5) | 3;
        do
        {
          *(*a2 + v7) = v6;
          v9 = v7-- != 0;
          if (v6 < 0x100)
          {
            break;
          }

          v6 >>= 8;
        }

        while (v9);
        v3 = *result;
        v2 = result[1];
      }

      v4 = ++v5;
    }

    while (v5 < ((v2 - v3) >> 2));
  }

  return result;
}

void sub_24547735C()
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = xmmword_24548B470;
  LODWORD(v4) = -1009589776;
  v1 = 0;
  v2 = 0;
  v0 = 0;
  sub_2454782AC();
}

void sub_245477784()
{
  v5 = *MEMORY[0x277D85DE8];
  *__p = xmmword_24548B584;
  v4 = unk_24548B594;
  v1 = 0;
  v2 = 0;
  v0 = 0;
  sub_2454782AC();
}

uint64_t sub_245477B64(uint64_t **__src, char **a2)
{
  v3 = __src;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v4 = *(__src + 23);
  if ((v4 & 0x80) != 0)
  {
    v4 = __src[1];
    if (v4 - 1 < 0x100)
    {
      if (v4 <= 0x40)
      {
        v3 = *__src;
        goto LABEL_16;
      }

LABEL_7:
      sub_2453A6258(&v14, 20);
      v15 = 20;
      v5 = *(v3 + 23);
      if (v5 >= 0)
      {
        v6 = v3;
      }

      else
      {
        v6 = *v3;
      }

      if (v5 >= 0)
      {
        v7 = *(v3 + 23);
      }

      else
      {
        v7 = v3[1];
      }

      memset(__p, 0, sizeof(__p));
      sub_24547847C(__p, v6, v6 + v7, v7);
      sub_24547735C();
    }
  }

  else if (*(__src + 23))
  {
    if (v4 < 0x41)
    {
LABEL_16:
      sub_2454784F0(&v16, v3, v3 + v4, v4);
      v8 = v17 - v16;
      if ((v17 - v16) > 0x3F)
      {
        if (v8 != 64)
        {
          v17 = v16 + 64;
        }
      }

      else
      {
        sub_2453A6334(&v16, 64 - v8);
      }

      sub_2453A6258(v13, 64);
      for (i = 0; i != 64; ++i)
      {
        *(v13[0] + i) = v16[i] ^ 0x36;
      }

      sub_24546FB28(v13, v13[1], *a2, a2[1], a2[1] - *a2);
      sub_2453A6258(&v14, 20);
      v15 = 20;
      sub_2453A6258(&v12, 20);
      sub_24547735C();
    }

    goto LABEL_7;
  }

  return 0xFFFFFFFFLL;
}

void sub_245477E1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  v26 = *(v24 - 88);
  if (v26)
  {
    *(v24 - 80) = v26;
    operator delete(v26);
  }

  v27 = *(v24 - 56);
  if (v27)
  {
    *(v24 - 48) = v27;
    operator delete(v27);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_245477F08(uint64_t **__src, char **a2)
{
  v3 = __src;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v4 = *(__src + 23);
  if ((v4 & 0x80) != 0)
  {
    v4 = __src[1];
    if (v4 - 1 < 0x100)
    {
      if (v4 <= 0x40)
      {
        v3 = *__src;
        goto LABEL_16;
      }

LABEL_7:
      sub_2453A6258(&v14, 32);
      v15 = 32;
      v5 = *(v3 + 23);
      if (v5 >= 0)
      {
        v6 = v3;
      }

      else
      {
        v6 = *v3;
      }

      if (v5 >= 0)
      {
        v7 = *(v3 + 23);
      }

      else
      {
        v7 = v3[1];
      }

      memset(__p, 0, sizeof(__p));
      sub_24547847C(__p, v6, v6 + v7, v7);
      sub_245477784();
    }
  }

  else if (*(__src + 23))
  {
    if (v4 < 0x41)
    {
LABEL_16:
      sub_2454784F0(&v16, v3, v3 + v4, v4);
      v8 = v17 - v16;
      if ((v17 - v16) > 0x3F)
      {
        if (v8 != 64)
        {
          v17 = v16 + 64;
        }
      }

      else
      {
        sub_2453A6334(&v16, 64 - v8);
      }

      sub_2453A6258(v13, 64);
      for (i = 0; i != 64; ++i)
      {
        *(v13[0] + i) = v16[i] ^ 0x36;
      }

      sub_24546FB28(v13, v13[1], *a2, a2[1], a2[1] - *a2);
      sub_2453A6258(&v14, 32);
      v15 = 32;
      sub_2453A6258(&v12, 32);
      sub_245477784();
    }

    goto LABEL_7;
  }

  return 0xFFFFFFFFLL;
}

void sub_2454781C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  v26 = *(v24 - 88);
  if (v26)
  {
    *(v24 - 80) = v26;
    operator delete(v26);
  }

  v27 = *(v24 - 56);
  if (v27)
  {
    *(v24 - 48) = v27;
    operator delete(v27);
  }

  _Unwind_Resume(exception_object);
}

void sub_245478340(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_24547835C(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  operator new();
}

void sub_2454783D8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_245478460(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24547847C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_2453A62CC(result, a4);
  }

  return result;
}

void sub_2454784D4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2454784F0(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (v7 - *result < a4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    v9 = 2 * v7;
    if (2 * v7 <= a4)
    {
      v9 = a4;
    }

    if (v7 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    sub_2453A62CC(v6, v10);
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (v11 - v8 >= a4)
  {
    v18 = a3 - __src;
    if (v18)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v8[v18];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    v14 = v11;
    if (v13 != a3)
    {
      v14 = (&a3[v11] - v13);
      v15 = v11;
      do
      {
        v16 = *v13++;
        *v15++ = v16;
      }

      while (v13 != a3);
    }

    v17 = v14;
  }

  v6[1] = v17;
  return result;
}