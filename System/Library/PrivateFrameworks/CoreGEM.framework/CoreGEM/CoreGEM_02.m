void sub_2453B3B14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

_DWORD *sub_2453B3B2C(_DWORD *result, uint64_t a2)
{
  v2 = result[17];
  if (v2)
  {
    *a2 = result[2];
    if ((v2 & 2) == 0)
    {
LABEL_3:
      if ((v2 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_3;
  }

  *(a2 + 1) = result[3];
  if ((v2 & 4) == 0)
  {
LABEL_4:
    if ((v2 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(a2 + 2) = result[4];
  if ((v2 & 8) == 0)
  {
LABEL_5:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(a2 + 4) = result[5];
  v2 = result[17];
  if ((v2 & 0x10) == 0)
  {
LABEL_6:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(a2 + 8) = result[6];
  v2 = result[17];
  if ((v2 & 0x20) == 0)
  {
LABEL_7:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(a2 + 12) = result[7];
  if ((v2 & 0x40) == 0)
  {
LABEL_8:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(a2 + 13) = result[8];
  if ((v2 & 0x80) == 0)
  {
LABEL_9:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(a2 + 14) = result[9];
  if ((v2 & 0x100) == 0)
  {
LABEL_10:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(a2 + 15) = result[10];
  if ((v2 & 0x200) == 0)
  {
LABEL_11:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(a2 + 16) = result[11];
  if ((v2 & 0x400) == 0)
  {
LABEL_12:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(a2 + 17) = result[12];
  if ((v2 & 0x800) == 0)
  {
LABEL_13:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_30;
  }

LABEL_27:
  v3 = result[13] - 2;
  if (v3 >= 4)
  {
    v3 = -1;
  }

  *(a2 + 20) = v3;
  if ((v2 & 0x1000) == 0)
  {
LABEL_14:
    if ((v2 & 0x2000) == 0)
    {
      return result;
    }

LABEL_33:
    *(a2 + 28) = result[15];
    return result;
  }

LABEL_30:
  v4 = result[14] - 2;
  if (v4 >= 5)
  {
    v4 = -1;
  }

  *(a2 + 24) = v4;
  if ((v2 & 0x2000) != 0)
  {
    goto LABEL_33;
  }

  return result;
}

_DWORD *sub_2453B3C34(_DWORD *result, uint64_t a2)
{
  v2 = result[37];
  if (v2)
  {
    *a2 = result[2];
    v2 = result[37];
    if ((v2 & 2) == 0)
    {
LABEL_3:
      if ((v2 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_38;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_3;
  }

  *(a2 + 4) = result[3];
  v2 = result[37];
  if ((v2 & 4) == 0)
  {
LABEL_4:
    if ((v2 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_39;
  }

LABEL_38:
  *(a2 + 8) = result[4];
  v2 = result[37];
  if ((v2 & 8) == 0)
  {
LABEL_5:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_40;
  }

LABEL_39:
  *(a2 + 12) = result[5];
  v2 = result[37];
  if ((v2 & 0x10) == 0)
  {
LABEL_6:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_41;
  }

LABEL_40:
  *(a2 + 16) = result[6];
  v2 = result[37];
  if ((v2 & 0x20) == 0)
  {
LABEL_7:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_42;
  }

LABEL_41:
  *(a2 + 20) = result[7];
  v2 = result[37];
  if ((v2 & 0x40) == 0)
  {
LABEL_8:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_43;
  }

LABEL_42:
  *(a2 + 24) = result[8];
  v2 = result[37];
  if ((v2 & 0x80) == 0)
  {
LABEL_9:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_44;
  }

LABEL_43:
  *(a2 + 28) = result[9];
  v2 = result[37];
  if ((v2 & 0x100) == 0)
  {
LABEL_10:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_45;
  }

LABEL_44:
  *(a2 + 32) = result[10];
  if ((v2 & 0x200) == 0)
  {
LABEL_11:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_46;
  }

LABEL_45:
  *(a2 + 34) = result[11];
  if ((v2 & 0x400) == 0)
  {
LABEL_12:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_47;
  }

LABEL_46:
  *(a2 + 36) = result[12];
  if ((v2 & 0x800) == 0)
  {
LABEL_13:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_48;
  }

LABEL_47:
  *(a2 + 38) = result[13];
  if ((v2 & 0x1000) == 0)
  {
LABEL_14:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_49;
  }

LABEL_48:
  *(a2 + 40) = result[14];
  if ((v2 & 0x2000) == 0)
  {
LABEL_15:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_50;
  }

LABEL_49:
  *(a2 + 42) = result[15];
  if ((v2 & 0x4000) == 0)
  {
LABEL_16:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_51;
  }

LABEL_50:
  *(a2 + 44) = result[16];
  if ((v2 & 0x8000) == 0)
  {
LABEL_17:
    if ((v2 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_52;
  }

LABEL_51:
  *(a2 + 46) = result[17];
  if ((v2 & 0x10000) == 0)
  {
LABEL_18:
    if ((v2 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_53;
  }

LABEL_52:
  *(a2 + 48) = result[18];
  if ((v2 & 0x20000) == 0)
  {
LABEL_19:
    if ((v2 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_54;
  }

LABEL_53:
  *(a2 + 50) = result[19];
  if ((v2 & 0x40000) == 0)
  {
LABEL_20:
    if ((v2 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_55;
  }

LABEL_54:
  *(a2 + 52) = result[20];
  if ((v2 & 0x80000) == 0)
  {
LABEL_21:
    if ((v2 & 0x100000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_56;
  }

LABEL_55:
  *(a2 + 54) = result[21];
  if ((v2 & 0x100000) == 0)
  {
LABEL_22:
    if ((v2 & 0x200000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_57;
  }

LABEL_56:
  *(a2 + 56) = result[22];
  if ((v2 & 0x200000) == 0)
  {
LABEL_23:
    if ((v2 & 0x400000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_58;
  }

LABEL_57:
  *(a2 + 57) = result[23];
  if ((v2 & 0x400000) == 0)
  {
LABEL_24:
    if ((v2 & 0x800000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_59;
  }

LABEL_58:
  *(a2 + 58) = result[24];
  if ((v2 & 0x800000) == 0)
  {
LABEL_25:
    if ((v2 & 0x1000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_60;
  }

LABEL_59:
  *(a2 + 59) = result[25];
  if ((v2 & 0x1000000) == 0)
  {
LABEL_26:
    if ((v2 & 0x2000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_61;
  }

LABEL_60:
  *(a2 + 60) = result[26];
  if ((v2 & 0x2000000) == 0)
  {
LABEL_27:
    if ((v2 & 0x4000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_62;
  }

LABEL_61:
  *(a2 + 61) = result[27];
  if ((v2 & 0x4000000) == 0)
  {
LABEL_28:
    if ((v2 & 0x8000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_63;
  }

LABEL_62:
  *(a2 + 64) = result[28];
  v2 = result[37];
  if ((v2 & 0x8000000) == 0)
  {
LABEL_29:
    if ((v2 & 0x10000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_64;
  }

LABEL_63:
  *(a2 + 68) = result[29];
  if ((v2 & 0x10000000) == 0)
  {
LABEL_30:
    if ((v2 & 0x20000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_65;
  }

LABEL_64:
  *(a2 + 72) = result[30];
  v2 = result[37];
  if ((v2 & 0x20000000) == 0)
  {
LABEL_31:
    if ((v2 & 0x40000000) == 0)
    {
      goto LABEL_32;
    }

LABEL_66:
    *(a2 + 80) = result[32];
    if ((result[37] & 0x80000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_67;
  }

LABEL_65:
  *(a2 + 76) = result[31];
  if ((v2 & 0x40000000) != 0)
  {
    goto LABEL_66;
  }

LABEL_32:
  if ((v2 & 0x80000000) == 0)
  {
    goto LABEL_33;
  }

LABEL_67:
  *(a2 + 84) = result[33];
LABEL_33:
  v3 = result[38];
  if ((v3 & 1) == 0)
  {
    if ((v3 & 2) == 0)
    {
      return result;
    }

LABEL_69:
    *(a2 + 92) = result[35];
    return result;
  }

  *(a2 + 88) = result[34];
  if ((result[38] & 2) != 0)
  {
    goto LABEL_69;
  }

  return result;
}

_DWORD *sub_2453B3E90(_DWORD *result, uint64_t a2)
{
  v3 = result;
  v4 = result[13];
  if (v4)
  {
    *a2 = result[8];
  }

  v5 = result[4];
  if (v5 >= 1)
  {
    v6 = 0;
    if (v5 >= 0x10)
    {
      v7 = 16;
    }

    else
    {
      v7 = v5;
    }

    v8 = a2 + 4;
    do
    {
      if (v6 >= v3[4])
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
      }

      result = sub_2453B3C34(*(*(v3 + 1) + 8 * v6++), v8);
      v8 += 96;
    }

    while (v7 != v6);
    v4 = v3[13];
  }

  if ((v4 & 4) != 0)
  {
    v9 = v3[9] - 2;
    if (v9 >= 4)
    {
      v9 = -1;
    }

    *(a2 + 1540) = v9;
    if ((v4 & 8) == 0)
    {
LABEL_14:
      if ((v4 & 0x10) == 0)
      {
        return result;
      }

      goto LABEL_15;
    }
  }

  else if ((v4 & 8) == 0)
  {
    goto LABEL_14;
  }

  v10 = v3[10] - 2;
  if (v10 >= 5)
  {
    v10 = -1;
  }

  *(a2 + 1544) = v10;
  if ((v4 & 0x10) != 0)
  {
LABEL_15:
    *(a2 + 1548) = v3[11];
  }

  return result;
}

void sub_2453B3FC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453B3FD8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 28))
  {
    v4 = *(a1 + 8);
    if (!v4)
    {
      sub_2453EB7EC();
      v4 = *(qword_2813CEF80 + 8);
    }

    v5 = *(v4 + 24);
    if (v5)
    {
      *a2 = *(v4 + 16);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_7;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(a2 + 1) = *(v4 + 17);
    if ((v5 & 4) != 0)
    {
LABEL_7:
      *(a2 + 8) = *(v4 + 8);
    }
  }

LABEL_8:
  if ((*(a1 + 28) & 2) != 0)
  {
    v6 = *(a1 + 16);
    if (!v6)
    {
      sub_2453EB7EC();
      v6 = *(qword_2813CEF80 + 16);
    }

    sub_2453B4090(v6, (a2 + 16));
  }
}

uint64_t sub_2453B4090(uint64_t result, _BYTE *a2)
{
  v2 = *(result + 16);
  if (v2)
  {
    *a2 = *(result + 8);
    if ((v2 & 2) == 0)
    {
LABEL_3:
      if ((v2 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_3;
  }

  a2[1] = *(result + 9);
  if ((v2 & 4) == 0)
  {
LABEL_4:
    if ((v2 & 8) == 0)
    {
      return result;
    }

LABEL_9:
    a2[3] = *(result + 11);
    return result;
  }

LABEL_8:
  a2[2] = *(result + 10);
  if ((v2 & 8) != 0)
  {
    goto LABEL_9;
  }

  return result;
}

_BYTE *sub_2453B40D8(_BYTE *a1, int a2)
{
  if (a2 <= 24)
  {
    if (!a2)
    {
      v2 = "NotSet";
      return sub_2453B414C(a1, v2);
    }

    if (a2 == 10)
    {
      v2 = "VeryLow";
      return sub_2453B414C(a1, v2);
    }

LABEL_13:
    v2 = "notset";
    return sub_2453B414C(a1, v2);
  }

  if (a2 == 25)
  {
    v2 = "Low";
    return sub_2453B414C(a1, v2);
  }

  if (a2 == 50)
  {
    v2 = "Medium";
    return sub_2453B414C(a1, v2);
  }

  if (a2 != 75)
  {
    goto LABEL_13;
  }

  v2 = "High";
  return sub_2453B414C(a1, v2);
}

_BYTE *sub_2453B414C(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_2453A59DC();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

_BYTE *sub_2453B4204(_BYTE *a1, unsigned int a2)
{
  if (a2 > 3)
  {
    v2 = "notset";
  }

  else
  {
    v2 = off_278E36CB8[a2];
  }

  return sub_2453B414C(a1, v2);
}

void sub_2453B4228(uint64_t a1, uint64_t a2)
{
  v70 = *MEMORY[0x277D85DE8];
  v4 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
  {
    sub_2453B4204(v36, *(a1 + 136));
    if (v37 >= 0)
    {
      v6 = v36;
    }

    else
    {
      v6 = v36[0];
    }

    v29 = v6;
    v7 = *(a1 + 144);
    v8 = *(a1 + 8);
    v9 = *(a1 + 16);
    v11 = *(a1 + 24);
    v10 = *(a1 + 32);
    v12 = *(a1 + 40);
    sub_2453B40D8(v34, *(a1 + 56));
    v24 = v7;
    v25 = v8;
    v26 = v11;
    v27 = v10;
    v28 = v12;
    if (v35 >= 0)
    {
      v13 = v34;
    }

    else
    {
      v13 = v34[0];
    }

    v23 = v13;
    sub_2453B4204(v32, *(a1 + 152));
    v14 = v33;
    v15 = v32[0];
    v16 = *(a1 + 160);
    v18 = *(a1 + 88);
    v17 = *(a1 + 96);
    sub_2453B40D8(__p, *(a1 + 104));
    v19 = v32;
    if (v14 < 0)
    {
      v19 = v15;
    }

    if (v31 >= 0)
    {
      v20 = __p;
    }

    else
    {
      v20 = __p[0];
    }

    v21 = *(a1 + 60);
    v22 = *(a1 + 64);
    *buf = 136318979;
    v39 = a2;
    v40 = 2080;
    v41 = v29;
    v42 = 2048;
    v43 = v24;
    v44 = 2053;
    v45 = v25;
    v46 = 2053;
    v47 = v9;
    v48 = 2049;
    v49 = v26;
    v50 = 2049;
    v51 = v27;
    v52 = 2049;
    v53 = v28;
    v54 = 2081;
    v55 = v23;
    v56 = 2081;
    v57 = v19;
    v58 = 2048;
    v59 = v16;
    v60 = 2053;
    v61 = v18;
    v62 = 2049;
    v63 = v17;
    v64 = 2081;
    v65 = v20;
    v66 = 1025;
    v67 = v21;
    v68 = 1025;
    v69 = v22;
    _os_log_debug_impl(&dword_245396000, v4, OS_LOG_TYPE_DEBUG, "#heloOutputFix,%s,xy.source,%s,xy.ts,%llu,lat,%{sensitive}.8f,lon,%{sensitive}.8f,hunc,%{private}.2f,smj,%{private}.2f,smn,%{private}.2f,hrel,%{private}s,z.source,%{private}s,z.ts,%llu,alt,%{sensitive}.2f,vunc,%{private}.2f,vrel,%{private}s,week,%{private}u,tow,%{private}u", buf, 0x9Au);
    if (v31 < 0)
    {
      operator delete(__p[0]);
    }

    if (v33 < 0)
    {
      operator delete(v32[0]);
    }

    if (v35 < 0)
    {
      operator delete(v34[0]);
    }

    if (v37 < 0)
    {
      operator delete(v36[0]);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

void sub_2453B4488(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2453B44DC(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 32) = 0;
  *(a1 + 64) = 0;
  *(a1 + 96) = 0;
  *(a1 + 128) = 0;
  *(a1 + 160) = 0;
  *(a1 + 192) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  *a1 = dispatch_queue_create("com.gnss.cplaneq", v2);
  return a1;
}

uint64_t sub_2453B4548()
{
  v9 = *MEMORY[0x277D85DE8];
  if (qword_2813CE7E0 != -1)
  {
    dispatch_once(&qword_2813CE7E0, &unk_2858529C8);
  }

  result = qword_2813CE7D8;
  if (!qword_2813CE7D8)
  {
    v2 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      v3 = 136315138;
      v4 = "GetInstance";
      _os_log_error_impl(&dword_245396000, v2, OS_LOG_TYPE_ERROR, "Memory allocation failure,%s", &v3, 0xCu);
      v2 = qword_2813CF018;
    }

    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = 136446722;
      v4 = "/Library/Caches/com.apple.xbs/Sources/CoreGEM/Sources/Emergency/CplaneBridge.mm";
      v5 = 1026;
      v6 = 38;
      v7 = 2082;
      v8 = "GetInstance";
      _os_log_error_impl(&dword_245396000, v2, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: assertion failure in %{public}s", &v3, 0x1Cu);
    }

    __assert_rtn("GetInstance", "CplaneBridge.mm", 38, "false && Memory allocation failure,%s");
  }

  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2453B46B4()
{
  result = operator new(0xF8uLL, MEMORY[0x277D826F0]);
  if (result)
  {
    result = sub_2453B44DC(result);
  }

  qword_2813CE7D8 = result;
  return result;
}

void sub_2453B46E8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = qword_2813CF020;
  if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_245396000, v6, OS_LOG_TYPE_DEFAULT, "#gem,#lpp,#cplane,handleDlLppMsg", buf, 2u);
  }

  *(a1 + 240) = a2;
  v8 = 0;
  v9 = 0;
  __p = 0;
  sub_2453AE4E0(&__p, *a3, a3[1], a3[1] - *a3);
  sub_24547A8DC(a2, &__p);
  if (__p)
  {
    v8 = __p;
    operator delete(__p);
  }
}

void sub_2453B4798(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2453B47B4(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 240) + 1;
  *(a1 + 240) = v3;
  v5 = 0;
  v6 = 0;
  __p = 0;
  sub_2453AE4E0(&__p, *a2, a2[1], a2[1] - *a2);
  sub_2453B4840(a1 + 8, v3);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_2453B4824(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2453B4840(uint64_t a1, char a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_2453A5EE4();
  }

  return (*(*v2 + 48))(v2, &v4);
}

void *sub_2453B4894(void *a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  sub_2453B5380(v5, a2);
  sub_2453B5418(v5, a1);
  sub_2453AB6D8(v5);
  v3 = *MEMORY[0x277D85DE8];
  return a1;
}

void *sub_2453B4908(void *a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  sub_2453B567C(v5, a2);
  sub_2453B5714(v5, a1);
  sub_2453AB3D8(v5);
  v3 = *MEMORY[0x277D85DE8];
  return a1;
}

void *sub_2453B497C(void *a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  sub_2453B5978(v5, a2);
  sub_2453B5A10(v5, a1);
  sub_2453AB458(v5);
  v3 = *MEMORY[0x277D85DE8];
  return a1;
}

void *sub_2453B49F0(void *a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  sub_2453B5C74(v5, a2);
  sub_2453B5D0C(v5, a1);
  sub_2453AB4D8(v5);
  v3 = *MEMORY[0x277D85DE8];
  return a1;
}

void *sub_2453B4A64(void *a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  sub_2453B5F70(v5, a2);
  sub_2453B6008(v5, a1);
  sub_2453AB558(v5);
  v3 = *MEMORY[0x277D85DE8];
  return a1;
}

void *sub_2453B4AD8(void *a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  sub_2453B626C(v5, a2);
  sub_2453B6304(v5, a1);
  sub_2453AB5D8(v5);
  v3 = *MEMORY[0x277D85DE8];
  return a1;
}

void *sub_2453B4B4C(void *a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  sub_2453B6568(v5, a2);
  sub_2453B6600(v5, a1);
  sub_2453AB658(v5);
  v3 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t sub_2453B4BC0(uint64_t a1, uint64_t a2)
{
  v4 = qword_2813CF020;
  if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_245396000, v4, OS_LOG_TYPE_DEFAULT, "#gem,#lpp,#cplane,startPosRequest", v7, 2u);
  }

  v5 = *(a1 + 96);
  if (!v5)
  {
    sub_2453A5EE4();
  }

  return (*(*v5 + 48))(v5, a2);
}

void sub_2453B4C68(NSObject **a1, _DWORD *a2)
{
  v7 = qword_2813CF020;
  if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_245396000, v7, OS_LOG_TYPE_DEFAULT, "#gem,#lpp,#cplane,handleEmergencyPositionReport", buf, 2u);
  }

  v8 = a2[7];
  if (!v8)
  {
    v25 = 0;
    goto LABEL_7;
  }

  if (v8 == 1)
  {
    v9 = *(a2 + 50);
    v15 = v9 >> 15;
    v16 = v9 & 0x7FFF;
    v17 = *(a2 + 105);
    v25 = 1;
LABEL_7:
    v10 = a2[23];
    v23 = a2[24];
    v24 = a2[16];
    v18 = (v10 >> 23) & 1;
    v19 = v10 & 0x7FFFFF;
    v20 = *(a2 + 102);
    v21 = *(a2 + 103);
    v22 = *(a2 + 104);
    v2 = *(a2 + 106);
    goto LABEL_9;
  }

  v25 = -1;
LABEL_9:
  v11 = a2[5];
  v12 = *(a2 + 26);
  if (a2[8])
  {
    v3 = a2[9];
    v4 = *(a2 + 20);
    LOBYTE(v7) = *(a2 + 42);
  }

  if (*a2)
  {
    v13 = 5;
  }

  else
  {
    v13 = 0;
  }

  v14 = *a1;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2453B4E98;
  block[3] = &unk_278E36CF8;
  memcpy(v27, a2, sizeof(v27));
  v28 = v13;
  v29 = v11;
  v30 = v12;
  v31 = v25;
  v32 = v24;
  v33 = v18;
  v34 = v19;
  v35 = v23;
  v36 = v20;
  v37 = v21;
  v38 = v22;
  v39 = v15;
  v40 = v16;
  v41 = v17;
  v42 = v2;
  v43 = 0xFFFFFFFFLL;
  v44 = -1;
  v45 = 0xFF00000000;
  v46 = -1;
  v47 = 0;
  v48 = -1;
  v49 = v3;
  v50 = v4;
  v51 = v7;
  v52 = 1;
  v53 = 1;
  v54 = 1;
  dispatch_async(v14, block);
}

void sub_2453B4E98(uint64_t a1)
{
  if (*(a1 + 44) == 2)
  {
    v1 = *(a1 + 48);
    v2 = *(a1 + 424);
    v6[4] = *(a1 + 408);
    v6[5] = v2;
    v6[6] = *(a1 + 440);
    v7 = *(a1 + 456);
    v3 = *(a1 + 360);
    v6[0] = *(a1 + 344);
    v6[1] = v3;
    v4 = *(a1 + 392);
    v6[2] = *(a1 + 376);
    v6[3] = v4;
    sub_24547AC9C(v1, 0, v6);
  }

  else
  {
    v5 = qword_2813CF020;
    if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v6[0]) = 0;
      _os_log_error_impl(&dword_245396000, v5, OS_LOG_TYPE_ERROR, "#gpsd,#cplane,#out,Invalid posProtocol in Pos Response", v6, 2u);
    }
  }
}

void sub_2453B4F50(uint64_t a1, int a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
  {
    v5[0] = 67109120;
    v5[1] = a2;
    _os_log_debug_impl(&dword_245396000, v3, OS_LOG_TYPE_DEBUG, "#gem,#cplane, ratType,%d", v5, 8u);
  }

  sub_24547B014(a2);
  v4 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2453B4FFC(uint64_t a1, uint64_t a2)
{
  LOBYTE(v4) = 0;
  if (*a2 == 3)
  {
    v4 = 0;
    LOBYTE(v5) = *(a2 + 24) != 0;
    HIBYTE(v5) = *(a2 + 25) != 0;
  }

  else if (!*a2)
  {
    LOBYTE(v4) = 1;
    BYTE1(v4) = *(a2 + 21) != 0;
    BYTE2(v4) = *(a2 + 22) != 0;
    HIBYTE(v4) = *(a2 + 23) != 0;
    v5 = 0;
  }

  v6 = *(a2 + 12);
  v2 = *(a1 + 64);
  if (!v2)
  {
    sub_2453A5EE4();
  }

  return (*(*v2 + 48))(v2, &v4);
}

void sub_2453B50CC(uint64_t a1, uint64_t a2)
{
  v4[0] = *a2;
  *(v4 + 9) = *(a2 + 9);
  v6 = 0;
  v7 = 0;
  __p = 0;
  sub_2453AADE8(&__p, *(a2 + 32), *(a2 + 40), 0xF0F0F0F0F0F0F0F1 * ((*(a2 + 40) - *(a2 + 32)) >> 3));
  v3 = *(a2 + 61);
  v8[0] = *(a2 + 56);
  *(v8 + 5) = v3;
  memset(v9, 0, 24);
  sub_2453AAF00(v9, *(a2 + 72), *(a2 + 80), 0xF0F0F0F0F0F0F0F1 * ((*(a2 + 80) - *(a2 + 72)) >> 3));
  sub_24547B0EC(v4);
  v10 = v9;
  sub_2453AB2A4(&v10);
  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }
}

void sub_2453B51C0(uint64_t a1, int a2)
{
  v3 = qword_2813CF020;
  if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_debug_impl(&dword_245396000, v3, OS_LOG_TYPE_DEBUG, "#gem,#lpp,#cplane,sendEcidMeasError, no response from BB for ECID request", v4, 2u);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:
    sub_24547AF64();
    return;
  }

  sub_24547BE20();
}

uint64_t sub_2453B523C(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_2453A5EE4();
  }

  return (*(*v3 + 48))(v3, a2, &v5);
}

void sub_2453B5290(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = qword_2813CF020;
  if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v9) = 0;
    _os_log_impl(&dword_245396000, v2, OS_LOG_TYPE_DEFAULT, "handleEmergencyAidRequest, additional data request", &v9, 2u);
  }

  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  v5 = *(v3 + 56);
  v6 = *(v3 + 16);
  v7 = *(v3 + 20);
  v9 = 0x8000000080000000;
  v10 = 0x7FFFFFFF;
  v11 = v7;
  v12 = v4;
  v13 = 0;
  v14 = v5;
  v15 = -1;
  v16 = -1;
  v17 = -1;
  v18 = 0u;
  v19 = 0u;
  sub_245479C1C(v6, &v9, 0);
  v8 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2453B5380(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *sub_2453B5418(void *result, void *a2)
{
  v6[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v6);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v6[0] + 24))(v6, a2);
        result = (*(v6[0] + 32))(v6);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2453B5670(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_2453A3640(a1);
}

uint64_t sub_2453B567C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *sub_2453B5714(void *result, void *a2)
{
  v6[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v6);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v6[0] + 24))(v6, a2);
        result = (*(v6[0] + 32))(v6);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2453B596C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_2453A3640(a1);
}

uint64_t sub_2453B5978(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *sub_2453B5A10(void *result, void *a2)
{
  v6[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v6);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v6[0] + 24))(v6, a2);
        result = (*(v6[0] + 32))(v6);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2453B5C68(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_2453A3640(a1);
}

uint64_t sub_2453B5C74(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *sub_2453B5D0C(void *result, void *a2)
{
  v6[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v6);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v6[0] + 24))(v6, a2);
        result = (*(v6[0] + 32))(v6);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2453B5F64(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_2453A3640(a1);
}

uint64_t sub_2453B5F70(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *sub_2453B6008(void *result, void *a2)
{
  v6[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v6);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v6[0] + 24))(v6, a2);
        result = (*(v6[0] + 32))(v6);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2453B6260(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_2453A3640(a1);
}

uint64_t sub_2453B626C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *sub_2453B6304(void *result, void *a2)
{
  v6[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v6);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v6[0] + 24))(v6, a2);
        result = (*(v6[0] + 32))(v6);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2453B655C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_2453A3640(a1);
}

uint64_t sub_2453B6568(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *sub_2453B6600(void *result, void *a2)
{
  v6[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v6);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v6[0] + 24))(v6, a2);
        result = (*(v6[0] + 32))(v6);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2453B6858(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_2453A3640(a1);
}

uint64_t sub_2453B6864()
{
  if (qword_2813CEFC8)
  {
    (*(*qword_2813CEFC8 + 8))(qword_2813CEFC8);
  }

  if (qword_2813CE7E8)
  {
    (*(*qword_2813CE7E8 + 8))(qword_2813CE7E8);
  }

  if (qword_2813CE7F0)
  {
    (*(*qword_2813CE7F0 + 8))(qword_2813CE7F0);
  }

  if (qword_2813CEFD0)
  {
    (*(*qword_2813CEFD0 + 8))(qword_2813CEFD0);
  }

  if (qword_2813CE7F8)
  {
    (*(*qword_2813CE7F8 + 8))(qword_2813CE7F8);
  }

  if (qword_2813CEFE0)
  {
    (*(*qword_2813CEFE0 + 8))(qword_2813CEFE0);
  }

  if (qword_2813CE800)
  {
    (*(*qword_2813CE800 + 8))(qword_2813CE800);
  }

  if (qword_2813CE808)
  {
    (*(*qword_2813CE808 + 8))(qword_2813CE808);
  }

  if (qword_2813CE810)
  {
    (*(*qword_2813CE810 + 8))(qword_2813CE810);
  }

  if (qword_2813CEFE8)
  {
    (*(*qword_2813CEFE8 + 8))(qword_2813CEFE8);
  }

  if (qword_2813CEFF0)
  {
    (*(*qword_2813CEFF0 + 8))(qword_2813CEFF0);
  }

  result = qword_2813CEFD8;
  if (qword_2813CEFD8)
  {
    v1 = *(*qword_2813CEFD8 + 8);

    return v1();
  }

  return result;
}

void sub_2453B6ACC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  wireless_diagnostics::google::protobuf::internal::VerifyVersion(0x1E9808, 2005000, "/Library/Caches/com.apple.xbs/Sources/CoreGEM/Sources/Protobuf/Generated/GnssTypes.pb.cc", a4);
  sub_2453BD76C();
  operator new();
}

void sub_2453B6ED0(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v17);
  }

  v4 = *(a2 + 96);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v10 = *(a2 + 8);
    *(a1 + 96) |= 1u;
    *(a1 + 8) = v10;
    v4 = *(a2 + 96);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_27;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  v11 = *(a2 + 16);
  *(a1 + 96) |= 2u;
  *(a1 + 16) = v11;
  v4 = *(a2 + 96);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_27:
  v12 = *(a2 + 24);
  *(a1 + 96) |= 4u;
  *(a1 + 24) = v12;
  v4 = *(a2 + 96);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_28:
  v13 = *(a2 + 32);
  *(a1 + 96) |= 8u;
  *(a1 + 32) = v13;
  v4 = *(a2 + 96);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_30:
    v15 = *(a2 + 48);
    *(a1 + 96) |= 0x20u;
    *(a1 + 48) = v15;
    v4 = *(a2 + 96);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_31;
  }

LABEL_29:
  v14 = *(a2 + 40);
  *(a1 + 96) |= 0x10u;
  *(a1 + 40) = v14;
  v4 = *(a2 + 96);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_30;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_31:
  v16 = *(a2 + 56);
  *(a1 + 96) |= 0x40u;
  *(a1 + 56) = v16;
  v4 = *(a2 + 96);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 64);
    *(a1 + 96) |= 0x80u;
    *(a1 + 64) = v5;
    v4 = *(a2 + 96);
  }

LABEL_13:
  if ((v4 & 0xFF00) != 0)
  {
    if ((v4 & 0x100) != 0)
    {
      v6 = *(a2 + 72);
      *(a1 + 96) |= 0x100u;
      *(a1 + 72) = v6;
      v4 = *(a2 + 96);
    }

    if ((v4 & 0x200) != 0)
    {
      v7 = *(a2 + 76);
      if (!sub_24539CC50(v7))
      {
        __assert_rtn("set_reliability", "GnssTypes.pb.h", 1976, "::CoreGem::proto::gnss::Reliability_IsValid(value)");
      }

      *(a1 + 96) |= 0x200u;
      *(a1 + 76) = v7;
      v4 = *(a2 + 96);
    }

    if ((v4 & 0x400) != 0)
    {
      v8 = *(a2 + 80);
      *(a1 + 96) |= 0x400u;
      *(a1 + 80) = v8;
      v4 = *(a2 + 96);
    }

    if ((v4 & 0x800) != 0)
    {
      v9 = *(a2 + 88);
      if (v9 >= 6)
      {
        __assert_rtn("set_gnss_content_in_fix", "GnssTypes.pb.h", 2021, "::CoreGem::proto::gnss::GnssContent_IsValid(value)");
      }

      *(a1 + 96) |= 0x800u;
      *(a1 + 88) = v9;
    }
  }
}

void sub_2453B711C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2453B719C(uint64_t result)
{
  v1 = *(result + 96);
  if (v1)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(result + 72) = 0;
    *(result + 80) = 0;
    *(result + 88) = 0;
  }

  *(result + 96) = 0;
  return result;
}

uint64_t sub_2453B71D4(uint64_t result, uint64_t a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 96);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(result + 8), a3);
    v6 = *(v5 + 96);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 96);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 24), a3);
  v6 = *(v5 + 96);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 32), a3);
  v6 = *(v5 + 96);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v5 + 40), a3);
  v6 = *(v5 + 96);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v5 + 48), a3);
  v6 = *(v5 + 96);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(7, a2, *(v5 + 56), a3);
  v6 = *(v5 + 96);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(8, a2, *(v5 + 64), a3);
  v6 = *(v5 + 96);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, *(v5 + 72), a2, a4);
  v6 = *(v5 + 96);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

LABEL_24:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0xB, *(v5 + 80), a2, a4);
    if ((*(v5 + 96) & 0x800) == 0)
    {
      return result;
    }

    goto LABEL_25;
  }

LABEL_23:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xA, *(v5 + 76), a2, a4);
  v6 = *(v5 + 96);
  if ((v6 & 0x400) != 0)
  {
    goto LABEL_24;
  }

LABEL_12:
  if ((v6 & 0x800) == 0)
  {
    return result;
  }

LABEL_25:
  v7 = *(v5 + 88);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xC, v7, a2, a4);
}

uint64_t sub_2453B735C(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2)
  {
    v3 = (v2 << 31 >> 31) & 9;
    if ((v2 & 2) != 0)
    {
      v3 += 9;
    }

    if ((v2 & 4) != 0)
    {
      v3 += 9;
    }

    if ((v2 & 8) != 0)
    {
      v3 += 9;
    }

    if ((v2 & 0x10) != 0)
    {
      v3 += 9;
    }

    if ((v2 & 0x20) != 0)
    {
      v3 += 9;
    }

    if ((v2 & 0x40) != 0)
    {
      v3 += 9;
    }

    if ((v2 & 0x80) != 0)
    {
      v4 = v3 + 9;
    }

    else
    {
      v4 = v3;
    }
  }

  else
  {
    v4 = 0;
  }

  if ((v2 & 0xFF00) != 0)
  {
    if ((v2 & 0x100) != 0)
    {
      v5 = *(a1 + 72);
      if (v5 >= 0x80)
      {
        v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
        v2 = *(a1 + 96);
      }

      else
      {
        v6 = 2;
      }

      v4 = (v6 + v4);
      if ((v2 & 0x200) == 0)
      {
LABEL_21:
        if ((v2 & 0x400) == 0)
        {
          goto LABEL_22;
        }

        goto LABEL_34;
      }
    }

    else if ((v2 & 0x200) == 0)
    {
      goto LABEL_21;
    }

    v7 = *(a1 + 76);
    if ((v7 & 0x80000000) != 0)
    {
      v8 = 11;
    }

    else if (v7 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
      v2 = *(a1 + 96);
    }

    else
    {
      v8 = 2;
    }

    v4 = (v8 + v4);
    if ((v2 & 0x400) == 0)
    {
LABEL_22:
      if ((v2 & 0x800) == 0)
      {
        goto LABEL_41;
      }

LABEL_35:
      v9 = *(a1 + 88);
      if ((v9 & 0x80000000) != 0)
      {
        v10 = 11;
      }

      else if (v9 >= 0x80)
      {
        v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9) + 1;
      }

      else
      {
        v10 = 2;
      }

      v4 = (v10 + v4);
      goto LABEL_41;
    }

LABEL_34:
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 80)) + 1;
    if ((*(a1 + 96) & 0x800) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_35;
  }

LABEL_41:
  *(a1 + 92) = v4;
  return v4;
}

void sub_2453B74B4(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285852F88, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_2453B6ED0(a1, lpsrc);
}

double sub_2453B7570(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v6);
  }

  LOBYTE(v5) = *(a2 + 60);
  if (v5)
  {
    if (*(a2 + 60))
    {
      result = *(a2 + 8);
      *(a1 + 60) |= 1u;
      *(a1 + 8) = result;
      v5 = *(a2 + 60);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_14;
      }
    }

    else if ((*(a2 + 60) & 2) == 0)
    {
      goto LABEL_6;
    }

    result = *(a2 + 16);
    *(a1 + 60) |= 2u;
    *(a1 + 16) = result;
    v5 = *(a2 + 60);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_15;
    }

LABEL_14:
    result = *(a2 + 24);
    *(a1 + 60) |= 4u;
    *(a1 + 24) = result;
    v5 = *(a2 + 60);
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_16;
    }

LABEL_15:
    result = *(a2 + 32);
    *(a1 + 60) |= 8u;
    *(a1 + 32) = result;
    v5 = *(a2 + 60);
    if ((v5 & 0x10) == 0)
    {
LABEL_9:
      if ((v5 & 0x20) == 0)
      {
        return result;
      }

      goto LABEL_10;
    }

LABEL_16:
    result = *(a2 + 40);
    *(a1 + 60) |= 0x10u;
    *(a1 + 40) = result;
    if ((*(a2 + 60) & 0x20) == 0)
    {
      return result;
    }

LABEL_10:
    result = *(a2 + 48);
    *(a1 + 60) |= 0x20u;
    *(a1 + 48) = result;
  }

  return result;
}

void sub_2453B76A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2453B771C(uint64_t result)
{
  if (*(result + 60))
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
  }

  *(result + 60) = 0;
  return result;
}

uint64_t sub_2453B773C(uint64_t result, uint64_t a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = result;
  v5 = *(result + 60);
  if (v5)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(result + 8), a3);
    v5 = *(v4 + 60);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v4 + 16), a3);
  v5 = *(v4 + 60);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v4 + 24), a3);
  v5 = *(v4 + 60);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v4 + 40), a3);
    if ((*(v4 + 60) & 0x20) == 0)
    {
      return result;
    }

    goto LABEL_13;
  }

LABEL_11:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v4 + 32), a3);
  v5 = *(v4 + 60);
  if ((v5 & 0x10) != 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((v5 & 0x20) == 0)
  {
    return result;
  }

LABEL_13:
  v6 = *(v4 + 48);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, v6, a3);
}

uint64_t sub_2453B781C(uint64_t a1)
{
  v1 = *(a1 + 60);
  if (*(a1 + 60))
  {
    v2 = ((v1 << 31) >> 31) & 9;
    if ((v1 & 2) != 0)
    {
      v2 += 9;
    }

    if ((v1 & 4) != 0)
    {
      v2 += 9;
    }

    if ((v1 & 8) != 0)
    {
      v2 += 9;
    }

    if ((v1 & 0x10) != 0)
    {
      v2 += 9;
    }

    if ((v1 & 0x20) != 0)
    {
      v1 = v2 + 9;
    }

    else
    {
      v1 = v2;
    }
  }

  *(a1 + 56) = v1;
  return v1;
}

double sub_2453B7878(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285852FA0, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return sub_2453B7570(a1, lpsrc);
}

void sub_2453B7934(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v14);
  }

  v4 = *(a2 + 72);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v7 = *(a2 + 8);
    *(a1 + 72) |= 1u;
    *(a1 + 8) = v7;
    v4 = *(a2 + 72);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_18;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(a2 + 16);
  *(a1 + 72) |= 2u;
  *(a1 + 16) = v8;
  v4 = *(a2 + 72);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  v9 = *(a2 + 20);
  *(a1 + 72) |= 4u;
  *(a1 + 20) = v9;
  v4 = *(a2 + 72);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  v10 = *(a2 + 64);
  *(a1 + 72) |= 8u;
  *(a1 + 64) = v10;
  v4 = *(a2 + 72);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_21:
    v12 = *(a2 + 32);
    *(a1 + 72) |= 0x20u;
    *(a1 + 32) = v12;
    v4 = *(a2 + 72);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_22;
  }

LABEL_20:
  v11 = *(a2 + 24);
  *(a1 + 72) |= 0x10u;
  *(a1 + 24) = v11;
  v4 = *(a2 + 72);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_21;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_22:
  v13 = *(a2 + 40);
  *(a1 + 72) |= 0x40u;
  *(a1 + 40) = v13;
  v4 = *(a2 + 72);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 48);
    *(a1 + 72) |= 0x80u;
    *(a1 + 48) = v5;
    v4 = *(a2 + 72);
  }

LABEL_13:
  if ((v4 & 0x100) != 0)
  {
    v6 = *(a2 + 56);
    *(a1 + 72) |= 0x100u;
    *(a1 + 56) = v6;
  }
}

void sub_2453B7AC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2453B7B48(uint64_t result)
{
  v1 = *(result + 72);
  if (v1)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 20) = 0;
    *(result + 64) = 0;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(result + 56) = 0;
  }

  *(result + 72) = 0;
  return result;
}

uint64_t sub_2453B7B84(uint64_t result, uint64_t a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 72);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(result + 8), a2, a4);
    v6 = *(v5 + 72);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 72);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 20), a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(4, *(v5 + 64), a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(5, *(v5 + 24), a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v5 + 32), a3);
  v6 = *(v5 + 72);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

LABEL_18:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(8, *(v5 + 48), a2, a4);
    if ((*(v5 + 72) & 0x100) == 0)
    {
      return result;
    }

    goto LABEL_19;
  }

LABEL_17:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(7, a2, *(v5 + 40), a3);
  v6 = *(v5 + 72);
  if ((v6 & 0x80) != 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  if ((v6 & 0x100) == 0)
  {
    return result;
  }

LABEL_19:
  v7 = *(v5 + 56);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(9, v7, a2, a4);
}

uint64_t sub_2453B7CB8(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    if (v2)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 8)) + 1;
      v2 = *(a1 + 72);
    }

    else
    {
      v3 = 0;
    }

    if ((v2 & 2) != 0)
    {
      v3 += 5;
    }

    v5 = v3 + ((v2 >> 1) & 2);
    if ((v2 & 8) != 0)
    {
      v6 = *(a1 + 64);
      if ((v6 & 0x80000000) != 0)
      {
        v7 = 11;
      }

      else if (v6 >= 0x80)
      {
        v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
        v2 = *(a1 + 72);
      }

      else
      {
        v7 = 2;
      }

      v5 += v7;
    }

    if ((v2 & 0x10) != 0)
    {
      v5 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 24)) + 1;
      v2 = *(a1 + 72);
    }

    v8 = v5 + 9;
    if ((v2 & 0x20) == 0)
    {
      v8 = v5;
    }

    if ((v2 & 0x40) != 0)
    {
      v4 = v8 + 9;
    }

    else
    {
      v4 = v8;
    }

    if ((v2 & 0x80) != 0)
    {
      v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 48)) + 1;
      v2 = *(a1 + 72);
    }
  }

  else
  {
    v4 = 0;
  }

  if ((v2 & 0x100) != 0)
  {
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 56)) + 1;
  }

  *(a1 + 68) = v4;
  return v4;
}

void sub_2453B7DB8(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285852FB8, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_2453B7934(a1, lpsrc);
}

void sub_2453B7E74(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v13);
  }

  LOBYTE(v4) = *(a2 + 48);
  if (v4)
  {
    if (*(a2 + 48))
    {
      *(a1 + 48) |= 1u;
      v5 = *(a1 + 8);
      if (!v5)
      {
        operator new();
      }

      v6 = *(a2 + 8);
      if (!v6)
      {
        sub_24539DF20();
        v6 = *(qword_2813CEFD0 + 8);
      }

      sub_2453B7934(v5, v6);
      v4 = *(a2 + 48);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_20;
      }
    }

    else if ((*(a2 + 48) & 2) == 0)
    {
      goto LABEL_6;
    }

    *(a1 + 48) |= 2u;
    v7 = *(a1 + 16);
    if (!v7)
    {
      operator new();
    }

    v8 = *(a2 + 16);
    if (!v8)
    {
      sub_24539DF20();
      v8 = *(qword_2813CEFD0 + 16);
    }

    sub_2453B6ED0(v7, v8);
    v4 = *(a2 + 48);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_25;
    }

LABEL_20:
    *(a1 + 48) |= 4u;
    v9 = *(a1 + 24);
    if (!v9)
    {
      operator new();
    }

    v10 = *(a2 + 24);
    if (!v10)
    {
      sub_24539DF20();
      v10 = *(qword_2813CEFD0 + 24);
    }

    sub_2453B7570(v9, v10);
    v4 = *(a2 + 48);
    if ((v4 & 8) == 0)
    {
LABEL_8:
      if ((v4 & 0x10) == 0)
      {
        return;
      }

LABEL_26:
      v12 = *(a2 + 40);
      if (v12 >= 5)
      {
        __assert_rtn("set_estimation_technology", "GnssTypes.pb.h", 2534, "::CoreGem::proto::gnss::EstimationTechnology_IsValid(value)");
      }

      *(a1 + 48) |= 0x10u;
      *(a1 + 40) = v12;
      return;
    }

LABEL_25:
    v11 = *(a2 + 32);
    *(a1 + 48) |= 8u;
    *(a1 + 32) = v11;
    if ((*(a2 + 48) & 0x10) == 0)
    {
      return;
    }

    goto LABEL_26;
  }
}

void sub_2453B8118(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2453B818C(uint64_t result)
{
  LOBYTE(v1) = *(result + 48);
  if (v1)
  {
    if (*(result + 48))
    {
      v2 = *(result + 8);
      if (v2)
      {
        v3 = *(v2 + 72);
        if (v3)
        {
          *(v2 + 8) = 0;
          *(v2 + 16) = 0;
          *(v2 + 20) = 0;
          *(v2 + 64) = 0;
          *(v2 + 24) = 0u;
          *(v2 + 40) = 0u;
        }

        if ((v3 & 0xFF00) != 0)
        {
          *(v2 + 56) = 0;
        }

        *(v2 + 72) = 0;
        v1 = *(result + 48);
      }
    }

    if ((v1 & 2) != 0)
    {
      v4 = *(result + 16);
      if (v4)
      {
        v5 = *(v4 + 96);
        if (v5)
        {
          *(v4 + 56) = 0u;
          *(v4 + 40) = 0u;
          *(v4 + 24) = 0u;
          *(v4 + 8) = 0u;
        }

        if ((v5 & 0xFF00) != 0)
        {
          *(v4 + 72) = 0;
          *(v4 + 80) = 0;
          *(v4 + 88) = 0;
        }

        *(v4 + 96) = 0;
        v1 = *(result + 48);
      }
    }

    if ((v1 & 4) != 0)
    {
      v6 = *(result + 24);
      if (v6)
      {
        if (*(v6 + 60))
        {
          *(v6 + 40) = 0u;
          *(v6 + 24) = 0u;
          *(v6 + 8) = 0u;
        }

        *(v6 + 60) = 0;
      }
    }

    *(result + 32) = 0;
    *(result + 40) = 0;
  }

  *(result + 48) = 0;
  return result;
}

uint64_t sub_2453B8258(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 48);
  if (v6)
  {
    v7 = *(result + 8);
    if (!v7)
    {
      sub_24539DF20();
      v7 = *(qword_2813CEFD0 + 8);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 48);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(v5 + 16);
  if (!v8)
  {
    sub_24539DF20();
    v8 = *(qword_2813CEFD0 + 16);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v8, a2, a4);
  v6 = *(v5 + 48);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_16:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(4, *(v5 + 32), a2, a4);
    if ((*(v5 + 48) & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_17;
  }

LABEL_13:
  v9 = *(v5 + 24);
  if (!v9)
  {
    sub_24539DF20();
    v9 = *(qword_2813CEFD0 + 24);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v9, a2, a4);
  v6 = *(v5 + 48);
  if ((v6 & 8) != 0)
  {
    goto LABEL_16;
  }

LABEL_5:
  if ((v6 & 0x10) == 0)
  {
    return result;
  }

LABEL_17:
  v10 = *(v5 + 40);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(5, v10, a2, a4);
}

uint64_t sub_2453B8358(uint64_t a1)
{
  LOBYTE(v2) = *(a1 + 48);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_32;
  }

  if ((*(a1 + 48) & 1) == 0)
  {
    v3 = 0;
    if ((*(a1 + 48) & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v4 = *(a1 + 8);
  if (!v4)
  {
    sub_24539DF20();
    v4 = *(qword_2813CEFD0 + 8);
  }

  v5 = sub_2453B7CB8(v4);
  v6 = v5;
  if (v5 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5);
  }

  else
  {
    v7 = 1;
  }

  v3 = (v6 + v7 + 1);
  v2 = *(a1 + 48);
  if ((v2 & 2) != 0)
  {
LABEL_12:
    v8 = *(a1 + 16);
    if (!v8)
    {
      sub_24539DF20();
      v8 = *(qword_2813CEFD0 + 16);
    }

    v9 = sub_2453B735C(v8);
    v10 = v9;
    if (v9 >= 0x80)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9);
    }

    else
    {
      v11 = 1;
    }

    v3 = (v3 + v10 + v11 + 1);
    v2 = *(a1 + 48);
  }

LABEL_18:
  if ((v2 & 4) == 0)
  {
    if ((v2 & 8) == 0)
    {
      goto LABEL_20;
    }

LABEL_25:
    v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 32)) + 1;
    if ((*(a1 + 48) & 0x10) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_26;
  }

  v12 = *(a1 + 24);
  if (!v12)
  {
    sub_24539DF20();
    v12 = *(qword_2813CEFD0 + 24);
  }

  v3 = v3 + sub_2453B781C(v12) + 2;
  v2 = *(a1 + 48);
  if ((v2 & 8) != 0)
  {
    goto LABEL_25;
  }

LABEL_20:
  if ((v2 & 0x10) == 0)
  {
    goto LABEL_32;
  }

LABEL_26:
  v13 = *(a1 + 40);
  if ((v13 & 0x80000000) != 0)
  {
    v14 = 11;
  }

  else if (v13 >= 0x80)
  {
    v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13) + 1;
  }

  else
  {
    v14 = 2;
  }

  v3 = (v14 + v3);
LABEL_32:
  *(a1 + 44) = v3;
  return v3;
}

void sub_2453B84B8(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285852FD0, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_2453B7E74(a1, lpsrc);
}

void sub_2453B8574(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v12);
  }

  LOBYTE(v4) = *(a2 + 48);
  if (!v4)
  {
    return;
  }

  if (*(a2 + 48))
  {
    v6 = *(a2 + 16);
    *(a1 + 48) |= 1u;
    *(a1 + 16) = v6;
    v4 = *(a2 + 48);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_18;
    }
  }

  else if ((*(a2 + 48) & 2) == 0)
  {
    goto LABEL_6;
  }

  *(a1 + 48) |= 2u;
  v7 = *(a1 + 8);
  if (!v7)
  {
    operator new();
  }

  v8 = *(a2 + 8);
  if (!v8)
  {
    sub_24539DF20();
    v8 = *(qword_2813CE7F8 + 8);
  }

  sub_2453B7934(v7, v8);
  v4 = *(a2 + 48);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

LABEL_20:
    v10 = *(a2 + 40);
    *(a1 + 48) |= 8u;
    *(a1 + 40) = v10;
    v4 = *(a2 + 48);
    if ((v4 & 0x10) == 0)
    {
LABEL_9:
      if ((v4 & 0x20) == 0)
      {
        return;
      }

      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_18:
  v9 = *(a2 + 20);
  if (v9 >= 7)
  {
    __assert_rtn("set_quality", "GnssTypes.pb.h", 2625, "::CoreGem::proto::gnss::TimeQuality_IsValid(value)");
  }

  *(a1 + 48) |= 4u;
  *(a1 + 20) = v9;
  v4 = *(a2 + 48);
  if ((v4 & 8) != 0)
  {
    goto LABEL_20;
  }

LABEL_8:
  if ((v4 & 0x10) == 0)
  {
    goto LABEL_9;
  }

LABEL_21:
  v11 = *(a2 + 24);
  *(a1 + 48) |= 0x10u;
  *(a1 + 24) = v11;
  if ((*(a2 + 48) & 0x20) != 0)
  {
LABEL_10:
    v5 = *(a2 + 32);
    *(a1 + 48) |= 0x20u;
    *(a1 + 32) = v5;
  }
}

void sub_2453B8750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453B8768(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285852BD8;
  sub_24539DF20();
  if (qword_2813CE7F8 != a1)
  {
    v2 = *(a1 + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453B8800(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453B8768(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453B8890(uint64_t result)
{
  v1 = *(result + 48);
  if (v1)
  {
    *(result + 16) = 0;
    if ((v1 & 2) != 0)
    {
      v2 = *(result + 8);
      if (v2)
      {
        v3 = *(v2 + 72);
        if (v3)
        {
          *(v2 + 8) = 0;
          *(v2 + 16) = 0;
          *(v2 + 20) = 0;
          *(v2 + 64) = 0;
          *(v2 + 24) = 0u;
          *(v2 + 40) = 0u;
        }

        if ((v3 & 0xFF00) != 0)
        {
          *(v2 + 56) = 0;
        }

        *(v2 + 72) = 0;
      }
    }

    *(result + 28) = 0;
    *(result + 20) = 0;
    *(result + 36) = 0;
  }

  *(result + 48) = 0;
  return result;
}

uint64_t sub_2453B88F4(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v4 = *(this + 1);
        if (v4 >= *(this + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
          *(this + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(this + 8) = TagFallback;
          *(this + 1) = v4 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v6 = TagFallback >> 3;
        v7 = TagFallback & 7;
        if (TagFallback >> 3 > 3)
        {
          if (v6 == 4)
          {
            if ((TagFallback & 7) == 0)
            {
              v16 = *(this + 1);
              v10 = *(this + 2);
              goto LABEL_59;
            }
          }

          else if (v6 == 5)
          {
            if ((TagFallback & 7) == 0)
            {
              v18 = *(this + 1);
              v10 = *(this + 2);
              goto LABEL_67;
            }
          }

          else if (v6 == 6 && (TagFallback & 7) == 0)
          {
            v11 = *(this + 1);
            v10 = *(this + 2);
            goto LABEL_75;
          }

          goto LABEL_26;
        }

        if (v6 != 1)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_26;
        }

        v37 = 0;
        v13 = *(this + 1);
        v12 = *(this + 2);
        if (v13 >= v12 || (v14 = *v13, (v14 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v37);
          if (!result)
          {
            return result;
          }

          v14 = v37;
          v15 = *(this + 1);
          v12 = *(this + 2);
        }

        else
        {
          v15 = v13 + 1;
          *(this + 1) = v15;
        }

        *(a1 + 16) = v14 != 0;
        v17 = *(a1 + 48) | 1;
        *(a1 + 48) = v17;
        if (v15 < v12 && *v15 == 18)
        {
          *(this + 1) = v15 + 1;
          goto LABEL_35;
        }
      }

      if (v6 == 2)
      {
        break;
      }

      if (v6 == 3 && (TagFallback & 7) == 0)
      {
        v9 = *(this + 1);
        v8 = *(this + 2);
        goto LABEL_49;
      }

LABEL_26:
      if (v7 == 4)
      {
        return 1;
      }

      if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback) & 1) == 0)
      {
        return 0;
      }
    }

    if (v7 != 2)
    {
      goto LABEL_26;
    }

    v17 = *(a1 + 48);
LABEL_35:
    *(a1 + 48) = v17 | 2;
    v20 = *(a1 + 8);
    if (!v20)
    {
      operator new();
    }

    v38 = 0;
    v21 = *(this + 1);
    if (v21 >= *(this + 2) || *v21 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v38))
      {
        return 0;
      }
    }

    else
    {
      v38 = *v21;
      *(this + 1) = v21 + 1;
    }

    v22 = *(this + 14);
    v23 = *(this + 15);
    *(this + 14) = v22 + 1;
    if (v22 >= v23)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
    if (!sub_2453A06A0(v20, this) || *(this + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
    v24 = *(this + 14);
    v25 = __OFSUB__(v24, 1);
    v26 = v24 - 1;
    if (v26 < 0 == v25)
    {
      *(this + 14) = v26;
    }

    v27 = *(this + 1);
    v8 = *(this + 2);
    if (v27 < v8 && *v27 == 24)
    {
      v9 = v27 + 1;
      *(this + 1) = v9;
LABEL_49:
      v36 = 0;
      if (v9 >= v8 || (v28 = *v9, (v28 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v36);
        if (!result)
        {
          return result;
        }

        v28 = v36;
      }

      else
      {
        *(this + 1) = v9 + 1;
      }

      if (v28 <= 6)
      {
        *(a1 + 48) |= 4u;
        *(a1 + 20) = v28;
      }

      v29 = *(this + 1);
      v10 = *(this + 2);
      if (v29 < v10 && *v29 == 32)
      {
        v16 = v29 + 1;
        *(this + 1) = v16;
LABEL_59:
        if (v16 >= v10 || (v30 = *v16, v30 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 40));
          if (!result)
          {
            return result;
          }

          v31 = *(this + 1);
          v10 = *(this + 2);
        }

        else
        {
          *(a1 + 40) = v30;
          v31 = v16 + 1;
          *(this + 1) = v31;
        }

        *(a1 + 48) |= 8u;
        if (v31 < v10 && *v31 == 40)
        {
          v18 = v31 + 1;
          *(this + 1) = v18;
LABEL_67:
          if (v18 >= v10 || (v32 = *v18, v32 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 24));
            if (!result)
            {
              return result;
            }

            v33 = *(this + 1);
            v10 = *(this + 2);
          }

          else
          {
            *(a1 + 24) = v32;
            v33 = v18 + 1;
            *(this + 1) = v33;
          }

          *(a1 + 48) |= 0x10u;
          if (v33 < v10 && *v33 == 48)
          {
            v11 = v33 + 1;
            *(this + 1) = v11;
LABEL_75:
            if (v11 >= v10 || (v34 = *v11, v34 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 32));
              if (!result)
              {
                return result;
              }

              v35 = *(this + 1);
              v10 = *(this + 2);
            }

            else
            {
              *(a1 + 32) = v34;
              v35 = v11 + 1;
              *(this + 1) = v35;
            }

            *(a1 + 48) |= 0x20u;
            if (v35 == v10 && (*(this + 11) || *(this + 6) == *(this + 10)))
            {
              *(this + 8) = 0;
              result = 1;
              *(this + 36) = 1;
              return result;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_2453B8D38(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 48);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(1, *(result + 16), a2, a4);
    v6 = *(v5 + 48);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(v5 + 8);
  if (!v7)
  {
    sub_24539DF20();
    v7 = *(qword_2813CE7F8 + 8);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v7, a2, a4);
  v6 = *(v5 + 48);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, *(v5 + 20), a2, a4);
  v6 = *(v5 + 48);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

LABEL_14:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(5, *(v5 + 24), a2, a4);
    if ((*(v5 + 48) & 0x20) == 0)
    {
      return result;
    }

    goto LABEL_15;
  }

LABEL_13:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 40), a2, a4);
  v6 = *(v5 + 48);
  if ((v6 & 0x10) != 0)
  {
    goto LABEL_14;
  }

LABEL_6:
  if ((v6 & 0x20) == 0)
  {
    return result;
  }

LABEL_15:
  v8 = *(v5 + 32);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(6, v8, a2, a4);
}

uint64_t sub_2453B8E2C(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_27;
  }

  v3 = 2 * (v2 & 1u);
  if ((v2 & 2) != 0)
  {
    v4 = *(a1 + 8);
    if (!v4)
    {
      sub_24539DF20();
      v4 = *(qword_2813CE7F8 + 8);
    }

    v5 = sub_2453B7CB8(v4);
    v6 = v5;
    if (v5 >= 0x80)
    {
      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5);
    }

    else
    {
      v7 = 1;
    }

    v3 = (v6 + v3 + v7 + 1);
    v2 = *(a1 + 48);
    if ((v2 & 4) == 0)
    {
LABEL_4:
      if ((v2 & 8) == 0)
      {
        goto LABEL_5;
      }

LABEL_21:
      v10 = *(a1 + 40);
      if (v10 >= 0x80)
      {
        v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10) + 1;
        v2 = *(a1 + 48);
      }

      else
      {
        v11 = 2;
      }

      v3 = (v11 + v3);
      if ((v2 & 0x10) == 0)
      {
LABEL_6:
        if ((v2 & 0x20) == 0)
        {
          goto LABEL_27;
        }

        goto LABEL_26;
      }

      goto LABEL_25;
    }
  }

  else if ((v2 & 4) == 0)
  {
    goto LABEL_4;
  }

  v8 = *(a1 + 20);
  if ((v8 & 0x80000000) != 0)
  {
    v9 = 11;
  }

  else if (v8 >= 0x80)
  {
    v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8) + 1;
    v2 = *(a1 + 48);
  }

  else
  {
    v9 = 2;
  }

  v3 = (v9 + v3);
  if ((v2 & 8) != 0)
  {
    goto LABEL_21;
  }

LABEL_5:
  if ((v2 & 0x10) == 0)
  {
    goto LABEL_6;
  }

LABEL_25:
  v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 24)) + 1;
  if ((*(a1 + 48) & 0x20) != 0)
  {
LABEL_26:
    v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 32)) + 1;
  }

LABEL_27:
  *(a1 + 44) = v3;
  return v3;
}

void sub_2453B8F5C(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285852FE8, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_2453B8574(a1, lpsrc);
}

void sub_2453B9018(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
  }

  LOBYTE(v4) = *(a2 + 52);
  if (v4)
  {
    if (*(a2 + 52))
    {
      *(a1 + 52) |= 1u;
      v6 = *(a1 + 8);
      if (!v6)
      {
        operator new();
      }

      v7 = *(a2 + 8);
      if (!v7)
      {
        sub_24539DF20();
        v7 = *(qword_2813CEFE0 + 8);
      }

      sub_2453B8574(v6, v7);
      v4 = *(a2 + 52);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_17;
      }
    }

    else if ((*(a2 + 52) & 2) == 0)
    {
      goto LABEL_6;
    }

    v8 = *(a2 + 16);
    *(a1 + 52) |= 2u;
    *(a1 + 16) = v8;
    v4 = *(a2 + 52);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_18;
    }

LABEL_17:
    v9 = *(a2 + 24);
    *(a1 + 52) |= 4u;
    *(a1 + 24) = v9;
    v4 = *(a2 + 52);
    if ((v4 & 8) == 0)
    {
LABEL_8:
      if ((v4 & 0x10) == 0)
      {
        return;
      }

      goto LABEL_9;
    }

LABEL_18:
    v10 = *(a2 + 32);
    *(a1 + 52) |= 8u;
    *(a1 + 32) = v10;
    if ((*(a2 + 52) & 0x10) == 0)
    {
      return;
    }

LABEL_9:
    v5 = *(a2 + 40);
    *(a1 + 52) |= 0x10u;
    *(a1 + 40) = v5;
  }
}

void sub_2453B91A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453B91B8(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285852C50;
  sub_24539DF20();
  if (qword_2813CEFE0 != a1)
  {
    v2 = *(a1 + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453B9250(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453B91B8(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453B92E0(uint64_t result)
{
  v1 = result;
  if (*(result + 52))
  {
    if (*(result + 52))
    {
      result = *(result + 8);
      if (result)
      {
        result = sub_2453B8890(result);
      }
    }

    *(v1 + 16) = 0u;
    *(v1 + 32) = 0u;
  }

  *(v1 + 52) = 0;
  return result;
}

uint64_t sub_2453B9324(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
{
  while (1)
  {
    while (1)
    {
      v4 = *(this + 1);
      if (v4 >= *(this + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
        *(this + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(this + 8) = TagFallback;
        *(this + 1) = v4 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      v6 = TagFallback >> 3;
      v7 = TagFallback & 7;
      if (TagFallback >> 3 <= 2)
      {
        break;
      }

      if (v6 == 3)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_21;
        }

        v11 = *(this + 1);
        v8 = *(this + 2);
        goto LABEL_46;
      }

      if (v6 == 4)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_21;
        }

        v12 = *(this + 1);
        v8 = *(this + 2);
LABEL_54:
        if (v12 >= v8 || (v26 = *v12, v26 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 32));
          if (!result)
          {
            return result;
          }

          v27 = *(this + 1);
          v8 = *(this + 2);
        }

        else
        {
          *(a1 + 32) = v26;
          v27 = v12 + 1;
          *(this + 1) = v27;
        }

        *(a1 + 52) |= 8u;
        if (v27 < v8 && *v27 == 40)
        {
          v9 = v27 + 1;
          *(this + 1) = v9;
LABEL_62:
          if (v9 >= v8 || (v28 = *v9, v28 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 40));
            if (!result)
            {
              return result;
            }

            v29 = *(this + 1);
            v8 = *(this + 2);
          }

          else
          {
            *(a1 + 40) = v28;
            v29 = v9 + 1;
            *(this + 1) = v29;
          }

          *(a1 + 52) |= 0x10u;
          if (v29 == v8 && (*(this + 11) || *(this + 6) == *(this + 10)))
          {
            *(this + 8) = 0;
            result = 1;
            *(this + 36) = 1;
            return result;
          }
        }
      }

      else
      {
        if (v6 == 5 && (TagFallback & 7) == 0)
        {
          v9 = *(this + 1);
          v8 = *(this + 2);
          goto LABEL_62;
        }

LABEL_21:
        if (v7 == 4)
        {
          return 1;
        }

        if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback) & 1) == 0)
        {
          return 0;
        }
      }
    }

    if (v6 != 1)
    {
      if (v6 != 2 || (TagFallback & 7) != 0)
      {
        goto LABEL_21;
      }

      v10 = *(this + 1);
      v8 = *(this + 2);
      goto LABEL_38;
    }

    if (v7 != 2)
    {
      goto LABEL_21;
    }

    *(a1 + 52) |= 1u;
    v13 = *(a1 + 8);
    if (!v13)
    {
      operator new();
    }

    v30 = 0;
    v14 = *(this + 1);
    if (v14 >= *(this + 2) || *v14 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v30))
      {
        return 0;
      }
    }

    else
    {
      v30 = *v14;
      *(this + 1) = v14 + 1;
    }

    v15 = *(this + 14);
    v16 = *(this + 15);
    *(this + 14) = v15 + 1;
    if (v15 >= v16)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
    if (!sub_2453B88F4(v13, this) || *(this + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
    v17 = *(this + 14);
    v18 = __OFSUB__(v17, 1);
    v19 = v17 - 1;
    if (v19 < 0 == v18)
    {
      *(this + 14) = v19;
    }

    v20 = *(this + 1);
    v8 = *(this + 2);
    if (v20 < v8 && *v20 == 16)
    {
      v10 = v20 + 1;
      *(this + 1) = v10;
LABEL_38:
      if (v10 >= v8 || (v21 = *v10, v21 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 16));
        if (!result)
        {
          return result;
        }

        v22 = *(this + 1);
        v8 = *(this + 2);
      }

      else
      {
        *(a1 + 16) = v21;
        v22 = v10 + 1;
        *(this + 1) = v22;
      }

      *(a1 + 52) |= 2u;
      if (v22 < v8 && *v22 == 24)
      {
        v11 = v22 + 1;
        *(this + 1) = v11;
LABEL_46:
        if (v11 >= v8 || (v24 = *v11, v24 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 24));
          if (!result)
          {
            return result;
          }

          v25 = *(this + 1);
          v8 = *(this + 2);
        }

        else
        {
          *(a1 + 24) = v24;
          v25 = v11 + 1;
          *(this + 1) = v25;
        }

        *(a1 + 52) |= 4u;
        if (v25 < v8 && *v25 == 32)
        {
          v12 = v25 + 1;
          *(this + 1) = v12;
          goto LABEL_54;
        }
      }
    }
  }
}

uint64_t sub_2453B96CC(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 52);
  if (v6)
  {
    v7 = *(result + 8);
    if (!v7)
    {
      sub_24539DF20();
      v7 = *(qword_2813CEFE0 + 8);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 52);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 52);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_12:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(4, *(v5 + 32), a2, a4);
    if ((*(v5 + 52) & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_13;
  }

LABEL_11:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, *(v5 + 24), a2, a4);
  v6 = *(v5 + 52);
  if ((v6 & 8) != 0)
  {
    goto LABEL_12;
  }

LABEL_5:
  if ((v6 & 0x10) == 0)
  {
    return result;
  }

LABEL_13:
  v8 = *(v5 + 40);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(5, v8, a2, a4);
}

uint64_t sub_2453B97A4(uint64_t a1)
{
  LOBYTE(v2) = *(a1 + 52);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_17;
  }

  if ((*(a1 + 52) & 1) == 0)
  {
    v3 = 0;
    if ((*(a1 + 52) & 2) == 0)
    {
      goto LABEL_13;
    }

LABEL_12:
    v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 16)) + 1;
    v2 = *(a1 + 52);
    goto LABEL_13;
  }

  v4 = *(a1 + 8);
  if (!v4)
  {
    sub_24539DF20();
    v4 = *(qword_2813CEFE0 + 8);
  }

  v5 = sub_2453B8E2C(v4);
  v6 = v5;
  if (v5 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5);
  }

  else
  {
    v7 = 1;
  }

  v3 = (v6 + v7 + 1);
  v2 = *(a1 + 52);
  if ((v2 & 2) != 0)
  {
    goto LABEL_12;
  }

LABEL_13:
  if ((v2 & 4) == 0)
  {
    if ((v2 & 8) == 0)
    {
      goto LABEL_15;
    }

LABEL_19:
    v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 32)) + 1;
    if ((*(a1 + 52) & 0x10) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 24)) + 1;
  v2 = *(a1 + 52);
  if ((v2 & 8) != 0)
  {
    goto LABEL_19;
  }

LABEL_15:
  if ((v2 & 0x10) != 0)
  {
LABEL_16:
    v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 40)) + 1;
  }

LABEL_17:
  *(a1 + 48) = v3;
  return v3;
}

void sub_2453B9898(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285853000, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_2453B9018(a1, lpsrc);
}

float sub_2453B9954(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v5) = *(a2 + 24);
  if (v5)
  {
    if (*(a2 + 24))
    {
      v6 = *(a2 + 8);
      *(a1 + 24) |= 1u;
      *(a1 + 8) = v6;
      v5 = *(a2 + 24);
    }

    if ((v5 & 2) != 0)
    {
      result = *(a2 + 16);
      *(a1 + 24) |= 2u;
      *(a1 + 16) = result;
    }
  }

  return result;
}

void sub_2453B9A00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453B9A18(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285852CC8;
  sub_24539DF20();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453B9A74(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453B9A18(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453B9AFC(uint64_t result)
{
  if (*(result + 24))
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
  }

  *(result + 24) = 0;
  return result;
}

uint64_t sub_2453B9B14(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
{
  do
  {
    while (1)
    {
      v4 = *(this + 1);
      if (v4 >= *(this + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
        *(this + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(this + 8) = TagFallback;
        *(this + 1) = v4 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      v6 = TagFallback & 7;
      if (TagFallback >> 3 == 2)
      {
        break;
      }

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_13;
      }

      v8 = *(this + 1);
      v7 = *(this + 2);
      if (v8 >= v7 || (v9 = *v8, v9 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 8));
        if (!result)
        {
          return result;
        }

        v10 = *(this + 1);
        v7 = *(this + 2);
      }

      else
      {
        *(a1 + 8) = v9;
        v10 = v8 + 1;
        *(this + 1) = v10;
      }

      *(a1 + 24) |= 1u;
      if (v10 < v7 && *v10 == 21)
      {
        *(this + 1) = v10 + 1;
LABEL_21:
        v12 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v12) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 16) = v12;
        *(a1 + 24) |= 2u;
        if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }
    }

    if (v6 == 5)
    {
      goto LABEL_21;
    }

LABEL_13:
    if (v6 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback) & 1) != 0);
  return 0;
}

uint64_t sub_2453B9C80(uint64_t result, uint64_t a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 24);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(result + 8), a2, a4);
    v6 = *(v5 + 24);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 16);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(2, a2, v7, a3);
  }

  return result;
}

uint64_t sub_2453B9CEC(uint64_t a1)
{
  LOBYTE(v2) = *(a1 + 24);
  if (v2)
  {
    if (*(a1 + 24))
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 8)) + 1;
      v2 = *(a1 + 24);
    }

    else
    {
      v3 = 0;
    }

    if ((v2 & 2) != 0)
    {
      result = v3 + 5;
    }

    else
    {
      result = v3;
    }
  }

  else
  {
    result = 0;
  }

  *(a1 + 20) = result;
  return result;
}

float sub_2453B9D48(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285853018, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return sub_2453B9954(a1, lpsrc);
}

float sub_2453B9E04(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v5) = *(a2 + 32);
  if (v5)
  {
    if (*(a2 + 32))
    {
      v6 = *(a2 + 8);
      *(a1 + 32) |= 1u;
      *(a1 + 8) = v6;
      v5 = *(a2 + 32);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_12;
      }
    }

    else if ((*(a2 + 32) & 2) == 0)
    {
      goto LABEL_6;
    }

    result = *(a2 + 16);
    *(a1 + 32) |= 2u;
    *(a1 + 16) = result;
    v5 = *(a2 + 32);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        return result;
      }

      goto LABEL_8;
    }

LABEL_12:
    result = *(a2 + 20);
    *(a1 + 32) |= 4u;
    *(a1 + 20) = result;
    if ((*(a2 + 32) & 8) == 0)
    {
      return result;
    }

LABEL_8:
    result = *(a2 + 24);
    *(a1 + 32) |= 8u;
    *(a1 + 24) = result;
  }

  return result;
}

void sub_2453B9EF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453B9F10(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285852D40;
  sub_24539DF20();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453B9F6C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453B9F10(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453B9FF4(uint64_t result)
{
  if (*(result + 32))
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = 0;
  return result;
}

uint64_t sub_2453BA00C(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
{
  do
  {
    while (1)
    {
      while (1)
      {
        v4 = *(this + 1);
        if (v4 >= *(this + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
          *(this + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(this + 8) = TagFallback;
          *(this + 1) = v4 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v6 = TagFallback >> 3;
        v7 = TagFallback & 7;
        if (TagFallback >> 3 <= 2)
        {
          break;
        }

        if (v6 == 3)
        {
          if (v7 != 5)
          {
            goto LABEL_20;
          }

LABEL_32:
          v16 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v16) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 20) = v16;
          *(a1 + 32) |= 4u;
          v14 = *(this + 1);
          if (v14 < *(this + 2) && *v14 == 37)
          {
            *(this + 1) = v14 + 1;
            goto LABEL_36;
          }
        }

        else
        {
          if (v6 != 4 || v7 != 5)
          {
            goto LABEL_20;
          }

LABEL_36:
          v15 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v15) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 24) = v15;
          *(a1 + 32) |= 8u;
          if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
          {
            *(this + 8) = 0;
            result = 1;
            *(this + 36) = 1;
            return result;
          }
        }
      }

      if (v6 != 1)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_20;
      }

      v9 = *(this + 1);
      v8 = *(this + 2);
      if (v9 >= v8 || (v10 = *v9, v10 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 8));
        if (!result)
        {
          return result;
        }

        v11 = *(this + 1);
        v8 = *(this + 2);
      }

      else
      {
        *(a1 + 8) = v10;
        v11 = v9 + 1;
        *(this + 1) = v11;
      }

      *(a1 + 32) |= 1u;
      if (v11 < v8 && *v11 == 21)
      {
        *(this + 1) = v11 + 1;
LABEL_28:
        v17 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v17) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 16) = v17;
        *(a1 + 32) |= 2u;
        v13 = *(this + 1);
        if (v13 < *(this + 2) && *v13 == 29)
        {
          *(this + 1) = v13 + 1;
          goto LABEL_32;
        }
      }
    }

    if (v6 == 2 && v7 == 5)
    {
      goto LABEL_28;
    }

LABEL_20:
    if (v7 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback) & 1) != 0);
  return 0;
}

uint64_t sub_2453BA238(uint64_t result, uint64_t a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 32);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(result + 8), a2, a4);
    v6 = *(v5 + 32);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(3, a2, *(v5 + 20), a3);
      if ((*(v5 + 32) & 8) == 0)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 32);
  if ((v6 & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v6 & 8) == 0)
  {
    return result;
  }

LABEL_9:
  v7 = *(v5 + 24);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(4, a2, v7, a3);
}

uint64_t sub_2453BA2E0(uint64_t a1)
{
  LOBYTE(v2) = *(a1 + 32);
  if (v2)
  {
    if (*(a1 + 32))
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 8)) + 1;
      v2 = *(a1 + 32);
    }

    else
    {
      v3 = 0;
    }

    if ((v2 & 2) != 0)
    {
      v3 += 5;
    }

    if ((v2 & 4) != 0)
    {
      v3 += 5;
    }

    if ((v2 & 8) != 0)
    {
      result = v3 + 5;
    }

    else
    {
      result = v3;
    }
  }

  else
  {
    result = 0;
  }

  *(a1 + 28) = result;
  return result;
}

float sub_2453BA354(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285853030, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return sub_2453B9E04(a1, lpsrc);
}

void sub_2453BA410(_DWORD *a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  LOBYTE(v4) = *(a2 + 32);
  if (v4)
  {
    if (*(a2 + 32))
    {
      v6 = *(a2 + 8);
      a1[8] |= 1u;
      a1[2] = v6;
      v4 = *(a2 + 32);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_13;
      }
    }

    else if ((*(a2 + 32) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 12);
    a1[8] |= 2u;
    a1[3] = v7;
    v4 = *(a2 + 32);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_14;
    }

LABEL_13:
    v8 = *(a2 + 16);
    a1[8] |= 4u;
    a1[4] = v8;
    v4 = *(a2 + 32);
    if ((v4 & 8) == 0)
    {
LABEL_8:
      if ((v4 & 0x10) == 0)
      {
        return;
      }

      goto LABEL_9;
    }

LABEL_14:
    v9 = *(a2 + 20);
    a1[8] |= 8u;
    a1[5] = v9;
    if ((*(a2 + 32) & 0x10) == 0)
    {
      return;
    }

LABEL_9:
    v5 = *(a2 + 24);
    a1[8] |= 0x10u;
    a1[6] = v5;
  }
}

void sub_2453BA524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453BA53C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285852DB8;
  sub_24539DF20();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453BA598(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453BA53C(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453BA620(uint64_t result)
{
  if (*(result + 32))
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = 0;
  return result;
}

uint64_t sub_2453BA638(unsigned int *a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v4 = *(this + 1);
        if (v4 >= *(this + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
          *(this + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(this + 8) = TagFallback;
          *(this + 1) = v4 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v6 = TagFallback >> 3;
        if (TagFallback >> 3 > 2)
        {
          break;
        }

        if (v6 != 1)
        {
          if (v6 != 2 || (TagFallback & 7) != 0)
          {
            goto LABEL_21;
          }

          v9 = *(this + 1);
          v7 = *(this + 2);
          goto LABEL_32;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_21;
        }

        v12 = *(this + 1);
        v7 = *(this + 2);
        if (v12 >= v7 || (v13 = *v12, (v13 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 2);
          if (!result)
          {
            return result;
          }

          v14 = *(this + 1);
          v7 = *(this + 2);
        }

        else
        {
          a1[2] = v13;
          v14 = v12 + 1;
          *(this + 1) = v14;
        }

        a1[8] |= 1u;
        if (v14 < v7 && *v14 == 16)
        {
          v9 = v14 + 1;
          *(this + 1) = v9;
LABEL_32:
          v24 = 0;
          if (v9 >= v7 || (v15 = *v9, (v15 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v24);
            if (!result)
            {
              return result;
            }

            v15 = v24;
            v16 = *(this + 1);
            v7 = *(this + 2);
          }

          else
          {
            v16 = v9 + 1;
            *(this + 1) = v16;
          }

          a1[3] = v15;
          a1[8] |= 2u;
          if (v16 < v7 && *v16 == 24)
          {
            v10 = v16 + 1;
            *(this + 1) = v10;
LABEL_40:
            if (v10 >= v7 || (v17 = *v10, (v17 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 4);
              if (!result)
              {
                return result;
              }

              v18 = *(this + 1);
              v7 = *(this + 2);
            }

            else
            {
              a1[4] = v17;
              v18 = v10 + 1;
              *(this + 1) = v18;
            }

            a1[8] |= 4u;
            if (v18 < v7 && *v18 == 32)
            {
              v11 = v18 + 1;
              *(this + 1) = v11;
              goto LABEL_48;
            }
          }
        }
      }

      if (v6 == 3)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_21;
        }

        v10 = *(this + 1);
        v7 = *(this + 2);
        goto LABEL_40;
      }

      if (v6 != 4)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_21;
      }

      v11 = *(this + 1);
      v7 = *(this + 2);
LABEL_48:
      if (v11 >= v7 || (v19 = *v11, (v19 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 5);
        if (!result)
        {
          return result;
        }

        v20 = *(this + 1);
        v7 = *(this + 2);
      }

      else
      {
        a1[5] = v19;
        v20 = v11 + 1;
        *(this + 1) = v20;
      }

      a1[8] |= 8u;
      if (v20 < v7 && *v20 == 40)
      {
        v8 = v20 + 1;
        *(this + 1) = v20 + 1;
LABEL_56:
        v25 = 0;
        if (v8 >= v7 || (v21 = *v8, (v21 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v25);
          if (!result)
          {
            return result;
          }

          v21 = v25;
          v22 = *(this + 1);
          v7 = *(this + 2);
        }

        else
        {
          v22 = v8 + 1;
          *(this + 1) = v22;
        }

        a1[6] = -(v21 & 1) ^ (v21 >> 1);
        a1[8] |= 0x10u;
        if (v22 == v7 && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }
    }

    if (v6 == 5 && (TagFallback & 7) == 0)
    {
      v8 = *(this + 1);
      v7 = *(this + 2);
      goto LABEL_56;
    }

LABEL_21:
    if ((TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

unsigned int *sub_2453BA930(unsigned int *result, uint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = result[8];
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, result[2], a2, a4);
    v6 = v5[8];
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(2, v5[3], a2, a4);
  v6 = v5[8];
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, v5[5], a2, a4);
    if ((v5[8] & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_11;
  }

LABEL_9:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v5[4], a2, a4);
  v6 = v5[8];
  if ((v6 & 8) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v6 & 0x10) == 0)
  {
    return result;
  }

LABEL_11:
  v7 = v5[6];

  return MEMORY[0x2821F9CB0](5, v7, a2);
}

uint64_t sub_2453BA9F4(uint64_t a1)
{
  LOBYTE(v2) = *(a1 + 32);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_32;
  }

  if (*(a1 + 32))
  {
    v4 = *(a1 + 8);
    if (v4 >= 0x80)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
      v2 = *(a1 + 32);
      if ((v2 & 2) == 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v3 = 2;
      if ((v2 & 2) == 0)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
    v3 = 0;
    if ((*(a1 + 32) & 2) == 0)
    {
      goto LABEL_16;
    }
  }

  v5 = *(a1 + 12);
  if ((v5 & 0x80000000) != 0)
  {
    v6 = 11;
  }

  else if (v5 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v2 = *(a1 + 32);
  }

  else
  {
    v6 = 2;
  }

  v3 = (v6 + v3);
LABEL_16:
  if ((v2 & 4) != 0)
  {
    v7 = *(a1 + 16);
    if (v7 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
      v2 = *(a1 + 32);
    }

    else
    {
      v8 = 2;
    }

    v3 = (v8 + v3);
    if ((v2 & 8) == 0)
    {
LABEL_18:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_28;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_18;
  }

  v9 = *(a1 + 20);
  if (v9 >= 0x80)
  {
    v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9) + 1;
    v2 = *(a1 + 32);
  }

  else
  {
    v10 = 2;
  }

  v3 = (v10 + v3);
  if ((v2 & 0x10) != 0)
  {
LABEL_28:
    v11 = ((2 * *(a1 + 24)) ^ (*(a1 + 24) >> 31));
    if (v11 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
    }

    else
    {
      v12 = 2;
    }

    v3 = (v12 + v3);
  }

LABEL_32:
  *(a1 + 28) = v3;
  return v3;
}

void sub_2453BAB1C(_DWORD *a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285853048, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_2453BA410(a1, lpsrc);
}

void sub_2453BABD8(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  LOBYTE(v4) = *(a2 + 48);
  if (v4)
  {
    if (*(a2 + 48))
    {
      v5 = *(a2 + 8);
      *(a1 + 48) |= 1u;
      *(a1 + 8) = v5;
      v4 = *(a2 + 48);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_12;
      }
    }

    else if ((*(a2 + 48) & 2) == 0)
    {
      goto LABEL_6;
    }

    v6 = *(a2 + 16);
    *(a1 + 48) |= 2u;
    *(a1 + 16) = v6;
    v4 = *(a2 + 48);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_12:
    v7 = *(a2 + 24);
    *(a1 + 48) |= 4u;
    *(a1 + 24) = v7;
    v4 = *(a2 + 48);
    if ((v4 & 8) == 0)
    {
LABEL_8:
      if ((v4 & 0x10) == 0)
      {
        return;
      }

LABEL_14:
      v9 = *(a2 + 40);
      if (v9 >= 2)
      {
        __assert_rtn("set_status", "GnssTypes.pb.h", 3194, "::CoreGem::proto::gnss::PwrMeasurement_PowerLoggingStatus_IsValid(value)");
      }

      *(a1 + 48) |= 0x10u;
      *(a1 + 40) = v9;
      return;
    }

LABEL_13:
    v8 = *(a2 + 32);
    *(a1 + 48) |= 8u;
    *(a1 + 32) = v8;
    if ((*(a2 + 48) & 0x10) == 0)
    {
      return;
    }

    goto LABEL_14;
  }
}

void sub_2453BAD14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453BAD2C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285852E30;
  sub_24539DF20();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453BAD88(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453BAD2C(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453BAE18(uint64_t result)
{
  if (*(result + 48))
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
  }

  *(result + 48) = 0;
  return result;
}

uint64_t sub_2453BAE38(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
{
  do
  {
    while (1)
    {
      while (1)
      {
        v4 = *(this + 1);
        if (v4 >= *(this + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
          *(this + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(this + 8) = TagFallback;
          *(this + 1) = v4 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v6 = TagFallback >> 3;
        v7 = TagFallback & 7;
        if (TagFallback >> 3 > 2)
        {
          break;
        }

        if (v6 != 1)
        {
          if (v6 != 2 || v7 != 1)
          {
            goto LABEL_21;
          }

          goto LABEL_28;
        }

        if (v7 != 1)
        {
          goto LABEL_21;
        }

        *v16 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v16) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 8) = *v16;
        *(a1 + 48) |= 1u;
        v10 = *(this + 1);
        if (v10 < *(this + 2) && *v10 == 17)
        {
          *(this + 1) = v10 + 1;
LABEL_28:
          *v16 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v16) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 16) = *v16;
          *(a1 + 48) |= 2u;
          v11 = *(this + 1);
          if (v11 < *(this + 2) && *v11 == 25)
          {
            *(this + 1) = v11 + 1;
LABEL_32:
            *v16 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v16) & 1) == 0)
            {
              return 0;
            }

            *(a1 + 24) = *v16;
            *(a1 + 48) |= 4u;
            v12 = *(this + 1);
            if (v12 < *(this + 2) && *v12 == 33)
            {
              *(this + 1) = v12 + 1;
              goto LABEL_36;
            }
          }
        }
      }

      if (v6 == 3)
      {
        if (v7 != 1)
        {
          goto LABEL_21;
        }

        goto LABEL_32;
      }

      if (v6 != 4)
      {
        break;
      }

      if (v7 != 1)
      {
        goto LABEL_21;
      }

LABEL_36:
      *v16 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v16) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 32) = *v16;
      *(a1 + 48) |= 8u;
      v13 = *(this + 1);
      v8 = *(this + 2);
      if (v13 < v8 && *v13 == 40)
      {
        v9 = v13 + 1;
        *(this + 1) = v9;
LABEL_40:
        v16[0] = 0;
        if (v9 >= v8 || (v14 = *v9, (v14 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v16);
          if (!result)
          {
            return result;
          }

          v14 = v16[0];
        }

        else
        {
          *(this + 1) = v9 + 1;
        }

        if (v14 <= 1)
        {
          *(a1 + 48) |= 0x10u;
          *(a1 + 40) = v14;
        }

        if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }
    }

    if (v6 == 5 && (TagFallback & 7) == 0)
    {
      v9 = *(this + 1);
      v8 = *(this + 2);
      goto LABEL_40;
    }

LABEL_21:
    if (v7 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback) & 1) != 0);
  return 0;
}

uint64_t sub_2453BB0D4(uint64_t result, uint64_t a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 48);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(result + 8), a3);
    v6 = *(v5 + 48);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 48);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 32), a3);
    if ((*(v5 + 48) & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_11;
  }

LABEL_9:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 24), a3);
  v6 = *(v5 + 48);
  if ((v6 & 8) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v6 & 0x10) == 0)
  {
    return result;
  }

LABEL_11:
  v7 = *(v5 + 40);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(5, v7, a2, a4);
}

uint64_t sub_2453BB198(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (*(a1 + 48))
  {
    v3 = (v2 << 31 >> 31) & 9;
    if ((v2 & 2) != 0)
    {
      v3 += 9;
    }

    if ((v2 & 4) != 0)
    {
      v3 += 9;
    }

    if ((v2 & 8) != 0)
    {
      v4 = v3 + 9;
    }

    else
    {
      v4 = v3;
    }

    if ((v2 & 0x10) != 0)
    {
      v5 = *(a1 + 40);
      if ((v5 & 0x80000000) != 0)
      {
        v6 = 11;
      }

      else if (v5 >= 0x80)
      {
        v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
      }

      else
      {
        v6 = 2;
      }

      v4 = (v6 + v4);
    }
  }

  else
  {
    v4 = 0;
  }

  *(a1 + 44) = v4;
  return v4;
}

void sub_2453BB230(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285853060, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_2453BABD8(a1, lpsrc);
}

void sub_2453BB2EC(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v4) = *(a2 + 24);
  if (v4)
  {
    if (*(a2 + 24))
    {
      v5 = *(a2 + 8);
      *(a1 + 24) |= 1u;
      *(a1 + 8) = v5;
      v4 = *(a2 + 24);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 16);
      *(a1 + 24) |= 2u;
      *(a1 + 16) = v6;
    }
  }
}

void sub_2453BB398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453BB3B0(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285852EA8;
  sub_24539DF20();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453BB40C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453BB3B0(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453BB494(uint64_t result)
{
  if (*(result + 24))
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
  }

  *(result + 24) = 0;
  return result;
}

uint64_t sub_2453BB4AC(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
{
  while (1)
  {
    while (1)
    {
      v4 = *(this + 1);
      if (v4 >= *(this + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
        *(this + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(this + 8) = TagFallback;
        *(this + 1) = v4 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      if (TagFallback >> 3 == 2)
      {
        break;
      }

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_13;
      }

      v7 = *(this + 1);
      v6 = *(this + 2);
      if (v7 >= v6 || (v8 = *v7, v8 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 8));
        if (!result)
        {
          return result;
        }

        v9 = *(this + 1);
        v6 = *(this + 2);
      }

      else
      {
        *(a1 + 8) = v8;
        v9 = v7 + 1;
        *(this + 1) = v9;
      }

      *(a1 + 24) |= 1u;
      if (v9 < v6 && *v9 == 16)
      {
        v10 = v9 + 1;
        *(this + 1) = v10;
LABEL_22:
        v14 = 0;
        if (v10 >= v6 || (v11 = *v10, (v11 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v14);
          if (!result)
          {
            return result;
          }

          v11 = v14;
          v12 = *(this + 1);
          v6 = *(this + 2);
        }

        else
        {
          v12 = v10 + 1;
          *(this + 1) = v12;
        }

        *(a1 + 16) = v11 != 0;
        *(a1 + 24) |= 2u;
        if (v12 == v6 && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }
    }

    if ((TagFallback & 7) == 0)
    {
      v10 = *(this + 1);
      v6 = *(this + 2);
      goto LABEL_22;
    }

LABEL_13:
    if ((TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_2453BB640(uint64_t result, uint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 24);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(result + 8), a2, a4);
    v6 = *(v5 + 24);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 16);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, v7, a2, a4);
  }

  return result;
}

uint64_t sub_2453BB6AC(uint64_t a1)
{
  LOBYTE(v2) = *(a1 + 24);
  if (v2)
  {
    if (*(a1 + 24))
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 8)) + 1;
      v2 = *(a1 + 24);
    }

    else
    {
      v3 = 0;
    }

    result = (v2 & 2u) + v3;
  }

  else
  {
    result = 0;
  }

  *(a1 + 20) = result;
  return result;
}

void sub_2453BB704(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285853078, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_2453BB2EC(a1, lpsrc);
}

void sub_2453BB7C0(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  LOBYTE(v4) = *(a2 + 36);
  if (v4)
  {
    if (*(a2 + 36))
    {
      v5 = *(a2 + 8);
      *(a1 + 36) |= 1u;
      *(a1 + 8) = v5;
      v4 = *(a2 + 36);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_11;
      }
    }

    else if ((*(a2 + 36) & 2) == 0)
    {
      goto LABEL_6;
    }

    v6 = *(a2 + 24);
    *(a1 + 36) |= 2u;
    *(a1 + 24) = v6;
    v4 = *(a2 + 36);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        return;
      }

LABEL_12:
      v8 = *(a2 + 28);
      if (v8 >= 7)
      {
        __assert_rtn("set_assistance_file_type", "GnssTypes.pb.h", 3335, "::CoreGem::CLP::LogEntry::PrivateData::SvPositionSource_IsValid(value)");
      }

      *(a1 + 36) |= 8u;
      *(a1 + 28) = v8;
      return;
    }

LABEL_11:
    v7 = *(a2 + 16);
    *(a1 + 36) |= 4u;
    *(a1 + 16) = v7;
    if ((*(a2 + 36) & 8) == 0)
    {
      return;
    }

    goto LABEL_12;
  }
}

void sub_2453BB8DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453BB8F4(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285852F20;
  sub_24539DF20();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453BB950(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453BB8F4(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453BB9E0(uint64_t result)
{
  if (*(result + 36))
  {
    *(result + 28) = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 36) = 0;
  return result;
}

uint64_t sub_2453BB9FC(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
{
  while (1)
  {
    while (1)
    {
      v4 = *(this + 1);
      if (v4 >= *(this + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
        *(this + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(this + 8) = TagFallback;
        *(this + 1) = v4 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      v6 = TagFallback >> 3;
      if (TagFallback >> 3 > 2)
      {
        if (v6 == 3)
        {
          if ((TagFallback & 7) == 0)
          {
            v13 = *(this + 1);
            v7 = *(this + 2);
            goto LABEL_37;
          }
        }

        else if (v6 == 4 && (TagFallback & 7) == 0)
        {
          v9 = *(this + 1);
          v7 = *(this + 2);
          goto LABEL_45;
        }

        goto LABEL_20;
      }

      if (v6 != 1)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_20;
      }

      v10 = *(this + 1);
      v7 = *(this + 2);
      if (v10 >= v7 || (v11 = *v10, v11 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 8));
        if (!result)
        {
          return result;
        }

        v12 = *(this + 1);
        v7 = *(this + 2);
      }

      else
      {
        *(a1 + 8) = v11;
        v12 = v10 + 1;
        *(this + 1) = v12;
      }

      *(a1 + 36) |= 1u;
      if (v12 < v7 && *v12 == 16)
      {
        v8 = v12 + 1;
        *(this + 1) = v8;
LABEL_29:
        v21 = 0;
        if (v8 >= v7 || (v14 = *v8, (v14 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v21);
          if (!result)
          {
            return result;
          }

          v14 = v21;
          v15 = *(this + 1);
          v7 = *(this + 2);
        }

        else
        {
          v15 = v8 + 1;
          *(this + 1) = v15;
        }

        *(a1 + 24) = v14 != 0;
        *(a1 + 36) |= 2u;
        if (v15 < v7 && *v15 == 24)
        {
          v13 = v15 + 1;
          *(this + 1) = v13;
LABEL_37:
          if (v13 >= v7 || (v16 = *v13, v16 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 16));
            if (!result)
            {
              return result;
            }

            v17 = *(this + 1);
            v7 = *(this + 2);
          }

          else
          {
            *(a1 + 16) = v16;
            v17 = v13 + 1;
            *(this + 1) = v17;
          }

          *(a1 + 36) |= 4u;
          if (v17 < v7 && *v17 == 32)
          {
            v9 = v17 + 1;
            *(this + 1) = v9;
LABEL_45:
            v20 = 0;
            if (v9 >= v7 || (v18 = *v9, (v18 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v20);
              if (!result)
              {
                return result;
              }

              v18 = v20;
            }

            else
            {
              *(this + 1) = v9 + 1;
            }

            if (v18 <= 6)
            {
              *(a1 + 36) |= 8u;
              *(a1 + 28) = v18;
            }

            if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
            {
              *(this + 8) = 0;
              result = 1;
              *(this + 36) = 1;
              return result;
            }
          }
        }
      }
    }

    if (v6 == 2 && (TagFallback & 7) == 0)
    {
      v8 = *(this + 1);
      v7 = *(this + 2);
      goto LABEL_29;
    }

LABEL_20:
    if ((TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_2453BBC88(uint64_t result, uint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 36);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(result + 8), a2, a4);
    v6 = *(v5 + 36);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, *(v5 + 16), a2, a4);
      if ((*(v5 + 36) & 8) == 0)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, *(v5 + 24), a2, a4);
  v6 = *(v5 + 36);
  if ((v6 & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v6 & 8) == 0)
  {
    return result;
  }

LABEL_9:
  v7 = *(v5 + 28);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(4, v7, a2, a4);
}

uint64_t sub_2453BBD30(uint64_t a1)
{
  LOBYTE(v2) = *(a1 + 36);
  if (v2)
  {
    if (*(a1 + 36))
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 8)) + 1;
      v2 = *(a1 + 36);
    }

    else
    {
      v3 = 0;
    }

    v4 = (v2 & 2u) + v3;
    if ((v2 & 4) != 0)
    {
      v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 16)) + 1;
      v2 = *(a1 + 36);
    }

    if ((v2 & 8) != 0)
    {
      v5 = *(a1 + 28);
      if ((v5 & 0x80000000) != 0)
      {
        v6 = 11;
      }

      else if (v5 >= 0x80)
      {
        v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
      }

      else
      {
        v6 = 2;
      }

      v4 = (v6 + v4);
    }
  }

  else
  {
    v4 = 0;
  }

  *(a1 + 32) = v4;
  return v4;
}

void sub_2453BBDD4(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285853090, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_2453BB7C0(a1, lpsrc);
}

uint64_t sub_2453BBEF0()
{
  if (qword_2813CE818)
  {
    (*(*qword_2813CE818 + 8))(qword_2813CE818);
  }

  if (qword_2813CE820)
  {
    (*(*qword_2813CE820 + 8))(qword_2813CE820);
  }

  if (qword_2813CE828)
  {
    (*(*qword_2813CE828 + 8))(qword_2813CE828);
  }

  if (qword_2813CE830)
  {
    (*(*qword_2813CE830 + 8))(qword_2813CE830);
  }

  if (qword_2813CE838)
  {
    (*(*qword_2813CE838 + 8))(qword_2813CE838);
  }

  if (qword_2813CE840)
  {
    (*(*qword_2813CE840 + 8))(qword_2813CE840);
  }

  if (qword_2813CE848)
  {
    (*(*qword_2813CE848 + 8))(qword_2813CE848);
  }

  if (qword_2813CE850)
  {
    (*(*qword_2813CE850 + 8))(qword_2813CE850);
  }

  if (qword_2813CE858)
  {
    (*(*qword_2813CE858 + 8))(qword_2813CE858);
  }

  if (qword_2813CE860)
  {
    (*(*qword_2813CE860 + 8))(qword_2813CE860);
  }

  if (qword_2813CE868)
  {
    (*(*qword_2813CE868 + 8))(qword_2813CE868);
  }

  if (qword_2813CE870)
  {
    (*(*qword_2813CE870 + 8))(qword_2813CE870);
  }

  if (qword_2813CE878)
  {
    (*(*qword_2813CE878 + 8))(qword_2813CE878);
  }

  if (qword_2813CE880)
  {
    (*(*qword_2813CE880 + 8))(qword_2813CE880);
  }

  if (qword_2813CE888)
  {
    (*(*qword_2813CE888 + 8))(qword_2813CE888);
  }

  if (qword_2813CE890)
  {
    (*(*qword_2813CE890 + 8))(qword_2813CE890);
  }

  if (qword_2813CE898)
  {
    (*(*qword_2813CE898 + 8))(qword_2813CE898);
  }

  if (qword_2813CE8A0)
  {
    (*(*qword_2813CE8A0 + 8))(qword_2813CE8A0);
  }

  if (qword_2813CE8A8)
  {
    (*(*qword_2813CE8A8 + 8))(qword_2813CE8A8);
  }

  if (qword_2813CE8B0)
  {
    (*(*qword_2813CE8B0 + 8))(qword_2813CE8B0);
  }

  if (qword_2813CE8B8)
  {
    (*(*qword_2813CE8B8 + 8))(qword_2813CE8B8);
  }

  if (qword_2813CE8C0)
  {
    (*(*qword_2813CE8C0 + 8))(qword_2813CE8C0);
  }

  if (qword_2813CE8C8)
  {
    (*(*qword_2813CE8C8 + 8))(qword_2813CE8C8);
  }

  if (qword_2813CE8D0)
  {
    (*(*qword_2813CE8D0 + 8))(qword_2813CE8D0);
  }

  if (qword_2813CE8D8)
  {
    (*(*qword_2813CE8D8 + 8))(qword_2813CE8D8);
  }

  if (qword_2813CE8E0)
  {
    (*(*qword_2813CE8E0 + 8))(qword_2813CE8E0);
  }

  if (qword_2813CE8E8)
  {
    (*(*qword_2813CE8E8 + 8))(qword_2813CE8E8);
  }

  if (qword_2813CE8F0)
  {
    (*(*qword_2813CE8F0 + 8))(qword_2813CE8F0);
  }

  if (qword_2813CE8F8)
  {
    (*(*qword_2813CE8F8 + 8))(qword_2813CE8F8);
  }

  if (qword_2813CE900)
  {
    (*(*qword_2813CE900 + 8))(qword_2813CE900);
  }

  if (qword_2813CE908)
  {
    (*(*qword_2813CE908 + 8))(qword_2813CE908);
  }

  if (qword_2813CE910)
  {
    (*(*qword_2813CE910 + 8))(qword_2813CE910);
  }

  if (qword_2813CE918)
  {
    (*(*qword_2813CE918 + 8))(qword_2813CE918);
  }

  if (qword_2813CE920)
  {
    (*(*qword_2813CE920 + 8))(qword_2813CE920);
  }

  if (qword_2813CE928)
  {
    (*(*qword_2813CE928 + 8))(qword_2813CE928);
  }

  if (qword_2813CE930)
  {
    (*(*qword_2813CE930 + 8))(qword_2813CE930);
  }

  if (qword_2813CE938)
  {
    (*(*qword_2813CE938 + 8))(qword_2813CE938);
  }

  if (qword_2813CE940)
  {
    (*(*qword_2813CE940 + 8))(qword_2813CE940);
  }

  if (qword_2813CE948)
  {
    (*(*qword_2813CE948 + 8))(qword_2813CE948);
  }

  if (qword_2813CE950)
  {
    (*(*qword_2813CE950 + 8))(qword_2813CE950);
  }

  if (qword_2813CE958)
  {
    (*(*qword_2813CE958 + 8))(qword_2813CE958);
  }

  if (qword_2813CE960)
  {
    (*(*qword_2813CE960 + 8))(qword_2813CE960);
  }

  if (qword_2813CE968)
  {
    (*(*qword_2813CE968 + 8))(qword_2813CE968);
  }

  if (qword_2813CE970)
  {
    (*(*qword_2813CE970 + 8))(qword_2813CE970);
  }

  if (qword_2813CE978)
  {
    (*(*qword_2813CE978 + 8))(qword_2813CE978);
  }

  if (qword_2813CE980)
  {
    (*(*qword_2813CE980 + 8))(qword_2813CE980);
  }

  if (qword_2813CE988)
  {
    (*(*qword_2813CE988 + 8))(qword_2813CE988);
  }

  if (qword_2813CE990)
  {
    (*(*qword_2813CE990 + 8))(qword_2813CE990);
  }

  if (qword_2813CE998)
  {
    (*(*qword_2813CE998 + 8))(qword_2813CE998);
  }

  result = qword_2813CEFF8;
  if (qword_2813CEFF8)
  {
    v1 = *(*qword_2813CEFF8 + 8);

    return v1();
  }

  return result;
}

void sub_2453BD76C()
{
  v0 = qword_2813CE6E0;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v1[0] = MEMORY[0x277D82C40] + 16;
    v1[1] = sub_2453BC878;
    v2 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v1);
  }
}

void sub_2453BD7F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void sub_2453BD804(_DWORD *a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v4) = *(a2 + 20);
  if (v4)
  {
    if (*(a2 + 20))
    {
      v5 = *(a2 + 8);
      a1[5] |= 1u;
      a1[2] = v5;
      v4 = *(a2 + 20);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 12);
      if (v6 >= 5)
      {
        __assert_rtn("set_slot_source", "CLPGnssMeasApi.pb.h", 6607, "::CoreGem::CLP::LogEntry::PrivateData::GlonassSlotSource_IsValid(value)");
      }

      a1[5] |= 2u;
      a1[3] = v6;
    }
  }
}

void sub_2453BD8D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453BD8F0(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_2858530B8;
  sub_2453BD76C();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453BD94C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453BD8F0(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453BD9D0(uint64_t result)
{
  if (*(result + 20))
  {
    *(result + 8) = 0;
  }

  *(result + 20) = 0;
  return result;
}

uint64_t sub_2453BD9E4(unsigned int *a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
{
  while (1)
  {
    while (1)
    {
      v4 = *(this + 1);
      if (v4 >= *(this + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
        *(this + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(this + 8) = TagFallback;
        *(this + 1) = v4 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      if (TagFallback >> 3 == 2)
      {
        break;
      }

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_13;
      }

      v7 = *(this + 1);
      v6 = *(this + 2);
      if (v7 >= v6 || (v8 = *v7, (v8 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 2);
        if (!result)
        {
          return result;
        }

        v9 = *(this + 1);
        v6 = *(this + 2);
      }

      else
      {
        a1[2] = v8;
        v9 = v7 + 1;
        *(this + 1) = v9;
      }

      a1[5] |= 1u;
      if (v9 < v6 && *v9 == 16)
      {
        v10 = v9 + 1;
        *(this + 1) = v10;
LABEL_22:
        v13 = 0;
        if (v10 >= v6 || (v11 = *v10, (v11 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v13);
          if (!result)
          {
            return result;
          }

          v11 = v13;
        }

        else
        {
          *(this + 1) = v10 + 1;
        }

        if (v11 <= 4)
        {
          a1[5] |= 2u;
          a1[3] = v11;
        }

        if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }
    }

    if ((TagFallback & 7) == 0)
    {
      v10 = *(this + 1);
      v6 = *(this + 2);
      goto LABEL_22;
    }

LABEL_13:
    if ((TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_2453BDB78(uint64_t result, uint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 20);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(result + 8), a2, a4);
    v6 = *(v5 + 20);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 12);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, v7, a2, a4);
  }

  return result;
}

uint64_t sub_2453BDBE4(uint64_t a1)
{
  v2 = *(a1 + 20);
  if (v2)
  {
    if (*(a1 + 20))
    {
      v4 = *(a1 + 8);
      if (v4 >= 0x80)
      {
        v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
        if ((*(a1 + 20) & 2) == 0)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v3 = 2;
        if ((v2 & 2) == 0)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
      v3 = 0;
      if ((*(a1 + 20) & 2) == 0)
      {
        goto LABEL_16;
      }
    }

    v5 = *(a1 + 12);
    if ((v5 & 0x80000000) != 0)
    {
      v6 = 11;
    }

    else if (v5 >= 0x80)
    {
      v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    }

    else
    {
      v6 = 2;
    }

    v3 = (v6 + v3);
  }

  else
  {
    v3 = 0;
  }

LABEL_16:
  *(a1 + 16) = v3;
  return v3;
}

void sub_2453BDC80(_DWORD *a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285854818, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_2453BD804(a1, lpsrc);
}

void sub_2453BDD3C(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  LOBYTE(v4) = *(a2 + 24);
  if (v4)
  {
    if (*(a2 + 24))
    {
      v5 = *(a2 + 16);
      *(a1 + 24) |= 1u;
      *(a1 + 16) = v5;
      v4 = *(a2 + 24);
    }

    if ((v4 & 2) != 0)
    {
      *(a1 + 24) |= 2u;
      v6 = *(a1 + 8);
      if (!v6)
      {
        operator new();
      }

      v7 = *(a2 + 8);
      if (!v7)
      {
        sub_2453BD76C();
        v7 = *(qword_2813CE820 + 8);
      }

      sub_2453BD804(v6, v7);
    }
  }
}

void sub_2453BDE50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453BDE68(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285853130;
  sub_2453BD76C();
  if (qword_2813CE820 != a1)
  {
    v2 = *(a1 + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453BDF00(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453BDE68(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453BDF88(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    *(result + 16) = 0;
    if ((v1 & 2) != 0)
    {
      v2 = *(result + 8);
      if (v2)
      {
        if (*(v2 + 20))
        {
          *(v2 + 8) = 0;
        }

        *(v2 + 20) = 0;
      }
    }
  }

  *(result + 24) = 0;
  return result;
}

uint64_t sub_2453BDFB8(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
{
  while (1)
  {
    do
    {
      while (1)
      {
        v4 = *(this + 1);
        if (v4 >= *(this + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
          *(this + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(this + 8) = TagFallback;
          *(this + 1) = v4 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v6 = TagFallback & 7;
        if (TagFallback >> 3 != 2)
        {
          break;
        }

        if (v6 == 2)
        {
          v11 = *(a1 + 24);
          goto LABEL_22;
        }

LABEL_13:
        if (v6 == 4)
        {
          return 1;
        }

        if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback) & 1) == 0)
        {
          return 0;
        }
      }

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_13;
      }

      v20 = 0;
      v8 = *(this + 1);
      v7 = *(this + 2);
      if (v8 >= v7 || (v9 = *v8, (v9 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v20);
        if (!result)
        {
          return result;
        }

        v9 = v20;
        v10 = *(this + 1);
        v7 = *(this + 2);
      }

      else
      {
        v10 = v8 + 1;
        *(this + 1) = v10;
      }

      *(a1 + 16) = v9;
      v11 = *(a1 + 24) | 1;
      *(a1 + 24) = v11;
    }

    while (v10 >= v7 || *v10 != 18);
    *(this + 1) = v10 + 1;
LABEL_22:
    *(a1 + 24) = v11 | 2;
    v13 = *(a1 + 8);
    if (!v13)
    {
      operator new();
    }

    v21 = 0;
    v14 = *(this + 1);
    if (v14 >= *(this + 2) || *v14 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v21))
      {
        return 0;
      }
    }

    else
    {
      v21 = *v14;
      *(this + 1) = v14 + 1;
    }

    v15 = *(this + 14);
    v16 = *(this + 15);
    *(this + 14) = v15 + 1;
    if (v15 >= v16)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
    if (!sub_2453BD9E4(v13, this) || *(this + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
    v17 = *(this + 14);
    v18 = __OFSUB__(v17, 1);
    v19 = v17 - 1;
    if (v19 < 0 == v18)
    {
      *(this + 14) = v19;
    }

    if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
    {
      *(this + 8) = 0;
      result = 1;
      *(this + 36) = 1;
      return result;
    }
  }
}

uint64_t sub_2453BE204(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 24);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(1, *(result + 16), a2, a4);
    v6 = *(v5 + 24);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 8);
    if (!v7)
    {
      sub_2453BD76C();
      v7 = *(qword_2813CE820 + 8);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v7, a2, a4);
  }

  return result;
}

uint64_t sub_2453BE284(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    if (*(a1 + 24))
    {
      v4 = *(a1 + 16);
      if ((v4 & 0x80000000) != 0)
      {
        v3 = 11;
        if ((v2 & 2) == 0)
        {
          goto LABEL_19;
        }
      }

      else if (v4 >= 0x80)
      {
        v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
        if ((*(a1 + 24) & 2) == 0)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v3 = 2;
        if ((v2 & 2) == 0)
        {
          goto LABEL_19;
        }
      }
    }

    else
    {
      v3 = 0;
      if ((*(a1 + 24) & 2) == 0)
      {
        goto LABEL_19;
      }
    }

    v5 = *(a1 + 8);
    if (!v5)
    {
      sub_2453BD76C();
      v5 = *(qword_2813CE820 + 8);
    }

    v6 = sub_2453BDBE4(v5);
    v7 = v6;
    if (v6 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6);
    }

    else
    {
      v8 = 1;
    }

    v3 = (v3 + v7 + v8 + 1);
  }

  else
  {
    v3 = 0;
  }

LABEL_19:
  *(a1 + 20) = v3;
  return v3;
}

void sub_2453BE350(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285854830, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_2453BDD3C(a1, lpsrc);
}

void sub_2453BE40C(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v13);
  }

  LOBYTE(v4) = *(a2 + 44);
  if (v4)
  {
    if (*(a2 + 44))
    {
      v6 = *(a2 + 16);
      *(a1 + 44) |= 1u;
      *(a1 + 16) = v6;
      v4 = *(a2 + 44);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_19;
      }
    }

    else if ((*(a2 + 44) & 2) == 0)
    {
      goto LABEL_6;
    }

    *(a1 + 44) |= 2u;
    v7 = *(a1 + 8);
    if (!v7)
    {
      operator new();
    }

    v8 = *(a2 + 8);
    if (!v8)
    {
      sub_2453BD76C();
      v8 = *(qword_2813CE828 + 8);
    }

    sub_2453BDD3C(v7, v8);
    v4 = *(a2 + 44);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_20;
    }

LABEL_19:
    v9 = *(a2 + 20);
    *(a1 + 44) |= 4u;
    *(a1 + 20) = v9;
    v4 = *(a2 + 44);
    if ((v4 & 8) == 0)
    {
LABEL_8:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_21;
    }

LABEL_20:
    v10 = *(a2 + 24);
    *(a1 + 44) |= 8u;
    *(a1 + 24) = v10;
    v4 = *(a2 + 44);
    if ((v4 & 0x10) == 0)
    {
LABEL_9:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_22;
    }

LABEL_21:
    v11 = *(a2 + 28);
    *(a1 + 44) |= 0x10u;
    *(a1 + 28) = v11;
    v4 = *(a2 + 44);
    if ((v4 & 0x20) == 0)
    {
LABEL_10:
      if ((v4 & 0x40) == 0)
      {
        return;
      }

      goto LABEL_11;
    }

LABEL_22:
    v12 = *(a2 + 32);
    *(a1 + 44) |= 0x20u;
    *(a1 + 32) = v12;
    if ((*(a2 + 44) & 0x40) == 0)
    {
      return;
    }

LABEL_11:
    v5 = *(a2 + 36);
    *(a1 + 44) |= 0x40u;
    *(a1 + 36) = v5;
  }
}

void sub_2453BE5CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453BE5E4(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_2858531A8;
  sub_2453BD76C();
  if (qword_2813CE828 != a1)
  {
    v2 = *(a1 + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453BE67C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453BE5E4(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453BE70C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 44);
  if (v2)
  {
    *(result + 16) = 0;
    if ((v2 & 2) != 0)
    {
      result = *(result + 8);
      if (result)
      {
        result = sub_2453BDF88(result);
      }
    }

    *(v1 + 28) = 0;
    *(v1 + 20) = 0;
    *(v1 + 36) = 0;
  }

  *(v1 + 44) = 0;
  return result;
}

uint64_t sub_2453BE758(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v4 = *(this + 1);
        if (v4 >= *(this + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
          *(this + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(this + 8) = TagFallback;
          *(this + 1) = v4 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v6 = TagFallback >> 3;
        v7 = TagFallback & 7;
        if (TagFallback >> 3 <= 3)
        {
          break;
        }

        if (TagFallback >> 3 > 5)
        {
          if (v6 == 6)
          {
            if ((TagFallback & 7) == 0)
            {
              v17 = *(this + 1);
              v8 = *(this + 2);
              goto LABEL_77;
            }
          }

          else if (v6 == 7 && (TagFallback & 7) == 0)
          {
            v11 = *(this + 1);
            v8 = *(this + 2);
            goto LABEL_85;
          }

          goto LABEL_30;
        }

        if (v6 == 4)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_30;
          }

          v16 = *(this + 1);
          v8 = *(this + 2);
LABEL_61:
          if (v16 >= v8 || (v30 = *v16, v30 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 24));
            if (!result)
            {
              return result;
            }

            v31 = *(this + 1);
            v8 = *(this + 2);
          }

          else
          {
            *(a1 + 24) = v30;
            v31 = v16 + 1;
            *(this + 1) = v31;
          }

          *(a1 + 44) |= 8u;
          if (v31 < v8 && *v31 == 40)
          {
            v9 = v31 + 1;
            *(this + 1) = v9;
LABEL_69:
            if (v9 >= v8 || (v32 = *v9, v32 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 28));
              if (!result)
              {
                return result;
              }

              v33 = *(this + 1);
              v8 = *(this + 2);
            }

            else
            {
              *(a1 + 28) = v32;
              v33 = v9 + 1;
              *(this + 1) = v33;
            }

            *(a1 + 44) |= 0x10u;
            if (v33 < v8 && *v33 == 48)
            {
              v17 = v33 + 1;
              *(this + 1) = v17;
LABEL_77:
              if (v17 >= v8 || (v34 = *v17, v34 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 32));
                if (!result)
                {
                  return result;
                }

                v35 = *(this + 1);
                v8 = *(this + 2);
              }

              else
              {
                *(a1 + 32) = v34;
                v35 = v17 + 1;
                *(this + 1) = v35;
              }

              *(a1 + 44) |= 0x20u;
              if (v35 < v8 && *v35 == 56)
              {
                v11 = v35 + 1;
                *(this + 1) = v11;
LABEL_85:
                if (v11 >= v8 || (v36 = *v11, v36 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 36));
                  if (!result)
                  {
                    return result;
                  }

                  v37 = *(this + 1);
                  v8 = *(this + 2);
                }

                else
                {
                  *(a1 + 36) = v36;
                  v37 = v11 + 1;
                  *(this + 1) = v37;
                }

                *(a1 + 44) |= 0x40u;
                if (v37 == v8 && (*(this + 11) || *(this + 6) == *(this + 10)))
                {
                  *(this + 8) = 0;
                  result = 1;
                  *(this + 36) = 1;
                  return result;
                }
              }
            }
          }
        }

        else
        {
          if (v6 == 5 && (TagFallback & 7) == 0)
          {
            v9 = *(this + 1);
            v8 = *(this + 2);
            goto LABEL_69;
          }

LABEL_30:
          if (v7 == 4)
          {
            return 1;
          }

          if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback) & 1) == 0)
          {
            return 0;
          }
        }
      }

      if (v6 != 1)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_30;
      }

      v13 = *(this + 1);
      v12 = *(this + 2);
      if (v13 >= v12 || (v14 = *v13, v14 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 16));
        if (!result)
        {
          return result;
        }

        v15 = *(this + 1);
        v12 = *(this + 2);
      }

      else
      {
        *(a1 + 16) = v14;
        v15 = v13 + 1;
        *(this + 1) = v15;
      }

      v18 = *(a1 + 44) | 1;
      *(a1 + 44) = v18;
      if (v15 < v12 && *v15 == 18)
      {
        *(this + 1) = v15 + 1;
        goto LABEL_39;
      }
    }

    if (v6 != 2)
    {
      if (v6 != 3 || (TagFallback & 7) != 0)
      {
        goto LABEL_30;
      }

      v10 = *(this + 1);
      v8 = *(this + 2);
      goto LABEL_53;
    }

    if (v7 != 2)
    {
      goto LABEL_30;
    }

    v18 = *(a1 + 44);
LABEL_39:
    *(a1 + 44) = v18 | 2;
    v20 = *(a1 + 8);
    if (!v20)
    {
      operator new();
    }

    v38 = 0;
    v21 = *(this + 1);
    if (v21 >= *(this + 2) || *v21 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v38))
      {
        return 0;
      }
    }

    else
    {
      v38 = *v21;
      *(this + 1) = v21 + 1;
    }

    v22 = *(this + 14);
    v23 = *(this + 15);
    *(this + 14) = v22 + 1;
    if (v22 >= v23)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
    if (!sub_2453BDFB8(v20, this) || *(this + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
    v24 = *(this + 14);
    v25 = __OFSUB__(v24, 1);
    v26 = v24 - 1;
    if (v26 < 0 == v25)
    {
      *(this + 14) = v26;
    }

    v27 = *(this + 1);
    v8 = *(this + 2);
    if (v27 < v8 && *v27 == 24)
    {
      v10 = v27 + 1;
      *(this + 1) = v10;
LABEL_53:
      if (v10 >= v8 || (v28 = *v10, v28 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 20));
        if (!result)
        {
          return result;
        }

        v29 = *(this + 1);
        v8 = *(this + 2);
      }

      else
      {
        *(a1 + 20) = v28;
        v29 = v10 + 1;
        *(this + 1) = v29;
      }

      *(a1 + 44) |= 4u;
      if (v29 < v8 && *v29 == 32)
      {
        v16 = v29 + 1;
        *(this + 1) = v16;
        goto LABEL_61;
      }
    }
  }
}

uint64_t sub_2453BEBE0(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 44);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(result + 16), a2, a4);
    v6 = *(v5 + 44);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(v5 + 8);
  if (!v7)
  {
    sub_2453BD76C();
    v7 = *(qword_2813CE828 + 8);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v7, a2, a4);
  v6 = *(v5 + 44);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 20), a2, a4);
  v6 = *(v5 + 44);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 24), a2, a4);
  v6 = *(v5 + 44);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

LABEL_16:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 32), a2, a4);
    if ((*(v5 + 44) & 0x40) == 0)
    {
      return result;
    }

    goto LABEL_17;
  }

LABEL_15:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 28), a2, a4);
  v6 = *(v5 + 44);
  if ((v6 & 0x20) != 0)
  {
    goto LABEL_16;
  }

LABEL_7:
  if ((v6 & 0x40) == 0)
  {
    return result;
  }

LABEL_17:
  v8 = *(v5 + 36);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, v8, a2, a4);
}

uint64_t sub_2453BECF0(uint64_t a1)
{
  LOBYTE(v2) = *(a1 + 44);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_42;
  }

  if (*(a1 + 44))
  {
    v4 = *(a1 + 16);
    if (v4 >= 0x80)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
      v2 = *(a1 + 44);
      if ((v2 & 2) == 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v3 = 2;
      if ((v2 & 2) == 0)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
    v3 = 0;
    if ((*(a1 + 44) & 2) == 0)
    {
      goto LABEL_16;
    }
  }

  v5 = *(a1 + 8);
  if (!v5)
  {
    sub_2453BD76C();
    v5 = *(qword_2813CE828 + 8);
  }

  v6 = sub_2453BE284(v5);
  v7 = v6;
  if (v6 >= 0x80)
  {
    v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6);
  }

  else
  {
    v8 = 1;
  }

  v3 = (v3 + v7 + v8 + 1);
  v2 = *(a1 + 44);
LABEL_16:
  if ((v2 & 4) != 0)
  {
    v9 = *(a1 + 20);
    if (v9 >= 0x80)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9) + 1;
      v2 = *(a1 + 44);
    }

    else
    {
      v10 = 2;
    }

    v3 = (v10 + v3);
    if ((v2 & 8) == 0)
    {
LABEL_18:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_30;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_18;
  }

  v11 = *(a1 + 24);
  if (v11 >= 0x80)
  {
    v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
    v2 = *(a1 + 44);
  }

  else
  {
    v12 = 2;
  }

  v3 = (v12 + v3);
  if ((v2 & 0x10) == 0)
  {
LABEL_19:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_34;
  }

LABEL_30:
  v13 = *(a1 + 28);
  if (v13 >= 0x80)
  {
    v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13) + 1;
    v2 = *(a1 + 44);
  }

  else
  {
    v14 = 2;
  }

  v3 = (v14 + v3);
  if ((v2 & 0x20) == 0)
  {
LABEL_20:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_38;
  }

LABEL_34:
  v15 = *(a1 + 32);
  if (v15 >= 0x80)
  {
    v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15) + 1;
    v2 = *(a1 + 44);
  }

  else
  {
    v16 = 2;
  }

  v3 = (v16 + v3);
  if ((v2 & 0x40) != 0)
  {
LABEL_38:
    v17 = *(a1 + 36);
    if (v17 >= 0x80)
    {
      v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17) + 1;
    }

    else
    {
      v18 = 2;
    }

    v3 = (v18 + v3);
  }

LABEL_42:
  *(a1 + 40) = v3;
  return v3;
}

void sub_2453BEE88(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285854848, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_2453BE40C(a1, lpsrc);
}

void sub_2453BEF44(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  LOBYTE(v4) = *(a2 + 24);
  if (v4)
  {
    if (*(a2 + 24))
    {
      v5 = *(a2 + 16);
      *(a1 + 24) |= 1u;
      *(a1 + 16) = v5;
      v4 = *(a2 + 24);
    }

    if ((v4 & 2) != 0)
    {
      *(a1 + 24) |= 2u;
      v6 = *(a1 + 8);
      if (!v6)
      {
        operator new();
      }

      v7 = *(a2 + 8);
      if (!v7)
      {
        sub_2453BD76C();
        v7 = *(qword_2813CE830 + 8);
      }

      sub_2453BE40C(v6, v7);
    }
  }
}

void sub_2453BF064(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453BF07C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285853220;
  sub_2453BD76C();
  if (qword_2813CE830 != a1)
  {
    v2 = *(a1 + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453BF114(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453BF07C(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453BF19C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2)
  {
    *(result + 16) = 0;
    if ((v2 & 2) != 0)
    {
      result = *(result + 8);
      if (result)
      {
        result = sub_2453BE70C(result);
      }
    }
  }

  *(v1 + 24) = 0;
  return result;
}

uint64_t sub_2453BF1DC(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
{
  while (1)
  {
    do
    {
      while (1)
      {
        v4 = *(this + 1);
        if (v4 >= *(this + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
          *(this + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(this + 8) = TagFallback;
          *(this + 1) = v4 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v6 = TagFallback & 7;
        if (TagFallback >> 3 != 2)
        {
          break;
        }

        if (v6 == 2)
        {
          v11 = *(a1 + 24);
          goto LABEL_22;
        }

LABEL_13:
        if (v6 == 4)
        {
          return 1;
        }

        if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback) & 1) == 0)
        {
          return 0;
        }
      }

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_13;
      }

      v8 = *(this + 1);
      v7 = *(this + 2);
      if (v8 >= v7 || (v9 = *v8, v9 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 16));
        if (!result)
        {
          return result;
        }

        v10 = *(this + 1);
        v7 = *(this + 2);
      }

      else
      {
        *(a1 + 16) = v9;
        v10 = v8 + 1;
        *(this + 1) = v10;
      }

      v11 = *(a1 + 24) | 1;
      *(a1 + 24) = v11;
    }

    while (v10 >= v7 || *v10 != 18);
    *(this + 1) = v10 + 1;
LABEL_22:
    *(a1 + 24) = v11 | 2;
    v13 = *(a1 + 8);
    if (!v13)
    {
      operator new();
    }

    v20 = 0;
    v14 = *(this + 1);
    if (v14 >= *(this + 2) || *v14 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v20))
      {
        return 0;
      }
    }

    else
    {
      v20 = *v14;
      *(this + 1) = v14 + 1;
    }

    v15 = *(this + 14);
    v16 = *(this + 15);
    *(this + 14) = v15 + 1;
    if (v15 >= v16)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
    if (!sub_2453BE758(v13, this) || *(this + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
    v17 = *(this + 14);
    v18 = __OFSUB__(v17, 1);
    v19 = v17 - 1;
    if (v19 < 0 == v18)
    {
      *(this + 14) = v19;
    }

    if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
    {
      *(this + 8) = 0;
      result = 1;
      *(this + 36) = 1;
      return result;
    }
  }
}

uint64_t sub_2453BF42C(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 24);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(result + 16), a2, a4);
    v6 = *(v5 + 24);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 8);
    if (!v7)
    {
      sub_2453BD76C();
      v7 = *(qword_2813CE830 + 8);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v7, a2, a4);
  }

  return result;
}

uint64_t sub_2453BF4AC(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    if (*(a1 + 24))
    {
      v4 = *(a1 + 16);
      if (v4 >= 0x80)
      {
        v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
        if ((*(a1 + 24) & 2) == 0)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v3 = 2;
        if ((v2 & 2) == 0)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
      v3 = 0;
      if ((*(a1 + 24) & 2) == 0)
      {
        goto LABEL_16;
      }
    }

    v5 = *(a1 + 8);
    if (!v5)
    {
      sub_2453BD76C();
      v5 = *(qword_2813CE830 + 8);
    }

    v6 = sub_2453BECF0(v5);
    v7 = v6;
    if (v6 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6);
    }

    else
    {
      v8 = 1;
    }

    v3 = (v3 + v7 + v8 + 1);
  }

  else
  {
    v3 = 0;
  }

LABEL_16:
  *(a1 + 20) = v3;
  return v3;
}

void sub_2453BF568(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, MEMORY[0x277D82C38], &unk_285854860, 0))
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  sub_2453BEF44(a1, lpsrc);
}

void sub_2453BF624(uint64_t a1, _BYTE *a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  LOBYTE(v4) = a2[16];
  if (v4)
  {
    if (a2[16])
    {
      v6 = a2[8];
      *(a1 + 16) |= 1u;
      *(a1 + 8) = v6;
      v4 = *(a2 + 4);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_12;
      }
    }

    else if ((a2[16] & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = a2[9];
    *(a1 + 16) |= 2u;
    *(a1 + 9) = v7;
    v4 = *(a2 + 4);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        return;
      }

      goto LABEL_8;
    }

LABEL_12:
    v8 = a2[10];
    *(a1 + 16) |= 4u;
    *(a1 + 10) = v8;
    if ((*(a2 + 4) & 8) == 0)
    {
      return;
    }

LABEL_8:
    v5 = a2[11];
    *(a1 + 16) |= 8u;
    *(a1 + 11) = v5;
  }
}

void sub_2453BF718(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453BF730(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = &unk_285853298;
  sub_2453BD76C();

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_2453BF78C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_2453BF730(a1);

  JUMPOUT(0x245D6A0D0);
}

uint64_t sub_2453BF810(uint64_t result)
{
  if (*(result + 16))
  {
    *(result + 8) = 0;
  }

  *(result + 16) = 0;
  return result;
}

uint64_t sub_2453BF824(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this)
{
  while (1)
  {
    while (1)
    {
      v4 = *(this + 1);
      if (v4 >= *(this + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
        *(this + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(this + 8) = TagFallback;
        *(this + 1) = v4 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      v6 = TagFallback >> 3;
      if (TagFallback >> 3 > 2)
      {
        if (v6 == 3)
        {
          if ((TagFallback & 7) == 0)
          {
            v13 = *(this + 1);
            v7 = *(this + 2);
            goto LABEL_37;
          }
        }

        else if (v6 == 4 && (TagFallback & 7) == 0)
        {
          v9 = *(this + 1);
          v7 = *(this + 2);
          goto LABEL_45;
        }

        goto LABEL_20;
      }

      if (v6 != 1)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_20;
      }

      v21 = 0;
      v10 = *(this + 1);
      v7 = *(this + 2);
      if (v10 >= v7 || (v11 = *v10, (v11 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v21);
        if (!result)
        {
          return result;
        }

        v11 = v21;
        v12 = *(this + 1);
        v7 = *(this + 2);
      }

      else
      {
        v12 = v10 + 1;
        *(this + 1) = v12;
      }

      *(a1 + 8) = v11 != 0;
      *(a1 + 16) |= 1u;
      if (v12 < v7 && *v12 == 16)
      {
        v8 = v12 + 1;
        *(this + 1) = v8;
LABEL_29:
        v21 = 0;
        if (v8 >= v7 || (v14 = *v8, (v14 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v21);
          if (!result)
          {
            return result;
          }

          v14 = v21;
          v15 = *(this + 1);
          v7 = *(this + 2);
        }

        else
        {
          v15 = v8 + 1;
          *(this + 1) = v15;
        }

        *(a1 + 9) = v14 != 0;
        *(a1 + 16) |= 2u;
        if (v15 < v7 && *v15 == 24)
        {
          v13 = v15 + 1;
          *(this + 1) = v13;
LABEL_37:
          v21 = 0;
          if (v13 >= v7 || (v16 = *v13, (v16 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v21);
            if (!result)
            {
              return result;
            }

            v16 = v21;
            v17 = *(this + 1);
            v7 = *(this + 2);
          }

          else
          {
            v17 = v13 + 1;
            *(this + 1) = v17;
          }

          *(a1 + 10) = v16 != 0;
          *(a1 + 16) |= 4u;
          if (v17 < v7 && *v17 == 32)
          {
            v9 = v17 + 1;
            *(this + 1) = v9;
LABEL_45:
            v21 = 0;
            if (v9 >= v7 || (v18 = *v9, (v18 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v21);
              if (!result)
              {
                return result;
              }

              v18 = v21;
              v19 = *(this + 1);
              v7 = *(this + 2);
            }

            else
            {
              v19 = v9 + 1;
              *(this + 1) = v19;
            }

            *(a1 + 11) = v18 != 0;
            *(a1 + 16) |= 8u;
            if (v19 == v7 && (*(this + 11) || *(this + 6) == *(this + 10)))
            {
              *(this + 8) = 0;
              result = 1;
              *(this + 36) = 1;
              return result;
            }
          }
        }
      }
    }

    if (v6 == 2 && (TagFallback & 7) == 0)
    {
      v8 = *(this + 1);
      v7 = *(this + 2);
      goto LABEL_29;
    }

LABEL_20:
    if ((TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_2453BFAD0(uint64_t result, uint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 16);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(1, *(result + 8), a2, a4);
    v6 = *(v5 + 16);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 10), a2, a4);
      if ((*(v5 + 16) & 8) == 0)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, *(v5 + 9), a2, a4);
  v6 = *(v5 + 16);
  if ((v6 & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v6 & 8) == 0)
  {
    return result;
  }

LABEL_9:
  v7 = *(v5 + 11);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, v7, a2, a4);
}