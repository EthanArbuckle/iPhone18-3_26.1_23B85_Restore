uint64_t sub_1AE766534(uint64_t a1)
{
  v1 = **(a1 + 8);
  if (!v1)
  {
    return 1;
  }

  v2 = *(v1 + 5);
  if (!*(v1 + 5))
  {
    return 1;
  }

  v3 = *(v1 + 7);
  v4 = *(v1 + 6);
  v5 = *(v1 + 20);
  v7 = *(v1 + 24);
  v6 = *(v1 + 32);
  if (v6)
  {
    result = sub_1AE77B498(v6, 1u, *(v1 + 6));
  }

  else
  {
    result = 1;
  }

  if (v7)
  {
    v9 = v5 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9 && result != 0)
  {
    if (v3)
    {
      v11 = 0;
      v12 = 0xFFFFFFFFFFFFFFFFLL >> -v3;
      v13 = 1;
      while (1)
      {
        v15 = ((v11 + 24) >> 3) + v7;
        v16 = v15 & 0xFFFFFFFFFFFFFFF8;
        v17 = v11 & 7 | (8 * (v15 & 7));
        v18 = *(v15 & 0xFFFFFFFFFFFFFFF8) >> v17;
        if ((v17 + v3) >= 0x41)
        {
          v18 |= *(v16 + 8) << -v17;
        }

        if ((v18 & v12) != 0)
        {
          result = sub_1AE77B498(v18 & v12, v2, v4);
          if (!result)
          {
            return result;
          }
        }

        else
        {
          result = 1;
        }

        v11 += v3 + 24;
        if (v13++ >= v5)
        {
          return result;
        }
      }
    }

    return 1;
  }

  return result;
}

uint64_t sub_1AE766654(uint64_t result, float a2)
{
  v2 = **(result + 8);
  if (v2)
  {
    v4 = *(v2 + 5);
    v5 = *(v2 + 7);
    v6 = *(v2 + 6);
    v7 = *(v2 + 20);
    v8 = *(v2 + 24);
    result = *(v2 + 32);
    if (result)
    {
      result = sub_1AE778FFC(result, 1u, *(v2 + 6), result + 4, a2);
    }

    if (v8)
    {
      v9 = v7 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (!v9 && v5 != 0)
    {
      v11 = 0;
      v12 = 0xFFFFFFFFFFFFFFFFLL >> -v5;
      do
      {
        v13 = ((v11 + 24) >> 3) + v8;
        v14 = v13 & 0xFFFFFFFFFFFFFFF8;
        v15 = v11 & 7 | (8 * (v13 & 7));
        v16 = *(v13 & 0xFFFFFFFFFFFFFFF8) >> v15;
        if ((v15 + v5) >= 0x41)
        {
          v16 |= *(v14 + 8) << -v15;
        }

        result = v16 & v12;
        if ((v16 & v12) != 0)
        {
          result = sub_1AE778FFC(result, v4, v6, result + ((6 * v4 + 4) >> 3) + 3, a2);
        }

        v11 += v5 + 24;
        --v7;
      }

      while (v7);
    }
  }

  return result;
}

uint64_t sub_1AE766778(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = sub_1AE766808(*(a1 + 16), a4);
  v8 = 0;
  v9 = *(a1 + 8);
  v10 = *(*v9 + 5);
  if (v10 >= a3)
  {
    v10 = a3;
  }

  v11 = (a2 + 4 * a3);
  v12 = v10 + 1;
  do
  {
    result = sub_1AE776928(*v9, v11--, v8++, v7, -1.0);
  }

  while (v12 != v8);
  return result;
}

uint64_t sub_1AE766808(uint64_t a1, uint64_t a2)
{
  v86 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v5 = a2 + 64;
    v6 = *(a2 + 87);
    if (v6 < 0)
    {
      if (*(a2 + 72) != 10)
      {
        return 1;
      }

      v5 = *v5;
    }

    else if (v6 != 10)
    {
      return 1;
    }

    v12 = 0x73656C6653656E64;
    v13 = bswap64(*v5);
    if (v13 == 0x73656C6653656E64 && (v13 = bswap32(*(v5 + 8)) >> 16, v12 = 25970, v13 == 25970))
    {
      v14 = 0;
    }

    else if (v13 < v12)
    {
      v14 = -1;
    }

    else
    {
      v14 = 1;
    }

    return v14 != 0;
  }

  v4 = *(a2 + 32);
  if (v4)
  {
    if (*(v4 + 47) < 0)
    {
      sub_1AE5DBF1C(v60, *(v4 + 24), *(v4 + 32));
    }

    else
    {
      *v60 = *(v4 + 24);
      v61 = *(v4 + 40);
    }
  }

  else
  {
    HIBYTE(v61) = 0;
    LOBYTE(v60[0]) = 0;
  }

  v7 = *(a2 + 24);
  if (v7)
  {
    goto LABEL_11;
  }

  if ((*(a2 + 23) & 0x80000000) == 0)
  {
    if (*(a2 + 23))
    {
      *__dst = *a2;
      v67 = *(a2 + 16);
      goto LABEL_44;
    }

LABEL_111:
    v7 = 0;
    goto LABEL_11;
  }

  v24 = *(a2 + 8);
  if (!v24)
  {
    goto LABEL_111;
  }

  sub_1AE5DBF1C(__dst, *a2, v24);
LABEL_44:
  if (v67 >= 0)
  {
    v25 = (__dst + HIBYTE(v67));
  }

  else
  {
    v25 = (__dst[0] + __dst[1]);
  }

  if (v67 >= 0)
  {
    v26 = __dst;
  }

  else
  {
    v26 = __dst[0];
  }

  for (; v26 != v25; v26 = (v26 + 1))
  {
    *v26 = __tolower(*v26);
  }

  HIBYTE(v68[2]) = 19;
  strcpy(v68, "com.apple.mobilesms");
  v70 = 18;
  strcpy(__p, "com.apple.messages");
  v72 = 12;
  strcpy(v71, "com.facebook");
  v74 = 11;
  strcpy(v73, "com.twitter");
  v76 = 13;
  strcpy(v75, "com.instagram");
  v78 = 12;
  strcpy(v77, "com.snapchat");
  v80 = 13;
  strcpy(v79, "com.pinterest");
  v82 = 8;
  strcpy(v81, "com.vine");
  strcpy(v84, "\ncom.whatsapp");
  strcpy(v83, "com.tumblr");
  v85 = 12;
  sub_1AE6EA0C0(&v64, v68, 0xAuLL);
  if (v85 < 0)
  {
    operator delete(*&v84[1]);
    if ((v84[0] & 0x80000000) == 0)
    {
LABEL_54:
      if ((v82 & 0x80000000) == 0)
      {
        goto LABEL_55;
      }

      goto LABEL_114;
    }
  }

  else if ((v84[0] & 0x80000000) == 0)
  {
    goto LABEL_54;
  }

  operator delete(v83[0]);
  if ((v82 & 0x80000000) == 0)
  {
LABEL_55:
    if ((v80 & 0x80000000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_115;
  }

LABEL_114:
  operator delete(v81[0]);
  if ((v80 & 0x80000000) == 0)
  {
LABEL_56:
    if ((v78 & 0x80000000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_116;
  }

LABEL_115:
  operator delete(v79[0]);
  if ((v78 & 0x80000000) == 0)
  {
LABEL_57:
    if ((v76 & 0x80000000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_117;
  }

LABEL_116:
  operator delete(v77[0]);
  if ((v76 & 0x80000000) == 0)
  {
LABEL_58:
    if ((v74 & 0x80000000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_118;
  }

LABEL_117:
  operator delete(v75[0]);
  if ((v74 & 0x80000000) == 0)
  {
LABEL_59:
    if ((v72 & 0x80000000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_119;
  }

LABEL_118:
  operator delete(v73[0]);
  if ((v72 & 0x80000000) == 0)
  {
LABEL_60:
    if ((v70 & 0x80000000) == 0)
    {
      goto LABEL_61;
    }

LABEL_120:
    operator delete(*__p);
    if ((SHIBYTE(v68[2]) & 0x80000000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_121;
  }

LABEL_119:
  operator delete(v71[0]);
  if (v70 < 0)
  {
    goto LABEL_120;
  }

LABEL_61:
  if ((SHIBYTE(v68[2]) & 0x80000000) == 0)
  {
    goto LABEL_62;
  }

LABEL_121:
  operator delete(v68[0]);
LABEL_62:
  HIBYTE(v68[2]) = 20;
  strcpy(v68, "com.apple.mobilemail");
  v70 = 14;
  strcpy(__p, "com.apple.mail");
  sub_1AE6EA0C0(&v62, v68, 2uLL);
  if (v70 < 0)
  {
    operator delete(*__p);
  }

  if (SHIBYTE(v68[2]) < 0)
  {
    operator delete(v68[0]);
  }

  v27 = v62;
  v28 = v63;
  if (v62 != v63)
  {
    if (v67 >= 0)
    {
      v29 = HIBYTE(v67);
    }

    else
    {
      v29 = __dst[1];
    }

    if (v67 >= 0)
    {
      v30 = __dst;
    }

    else
    {
      v30 = __dst[0];
    }

    v31 = v62;
    while (1)
    {
      v32 = *(v31 + 23);
      v33 = v32 >= 0 ? *(v31 + 23) : v31[1];
      v34 = v32 >= 0 ? v31 : *v31;
      v35 = (v33 >= v29 ? v29 : v33);
      v36 = memcmp(v30, v34, v35);
      if (v33 == v29 && v36 == 0)
      {
        break;
      }

      v31 += 3;
      if (v31 == v28)
      {
        goto LABEL_88;
      }
    }

    v7 = 2;
    if (!v27)
    {
      goto LABEL_140;
    }

    goto LABEL_133;
  }

LABEL_88:
  v38 = v64;
  v39 = v65;
  if (v64 != v65)
  {
    if (v67 >= 0)
    {
      v40 = HIBYTE(v67);
    }

    else
    {
      v40 = __dst[1];
    }

    if (v67 >= 0)
    {
      v41 = __dst;
    }

    else
    {
      v41 = __dst[0];
    }

    while (1)
    {
      v42 = *(v38 + 23);
      v43 = v42 >= 0 ? *(v38 + 23) : v38[1];
      v44 = v42 >= 0 ? v38 : *v38;
      v45 = (v43 >= v40 ? v40 : v43);
      v46 = memcmp(v41, v44, v45);
      if (v43 == v40 && v46 == 0)
      {
        break;
      }

      v38 += 3;
      if (v38 == v39)
      {
        goto LABEL_109;
      }
    }

    v7 = 1;
    if (!v27)
    {
      goto LABEL_140;
    }

    goto LABEL_133;
  }

LABEL_109:
  v7 = 0;
  if (v27)
  {
LABEL_133:
    v54 = v27;
    if (v27 != v28)
    {
      do
      {
        v55 = *(v28 - 1);
        v28 -= 3;
        if (v55 < 0)
        {
          operator delete(*v28);
        }
      }

      while (v28 != v27);
      v54 = v62;
    }

    v63 = v27;
    operator delete(v54);
  }

LABEL_140:
  v56 = v64;
  if (v64)
  {
    v57 = v65;
    v58 = v64;
    if (v65 != v64)
    {
      do
      {
        v59 = *(v57 - 1);
        v57 -= 3;
        if (v59 < 0)
        {
          operator delete(*v57);
        }
      }

      while (v57 != v56);
      v58 = v64;
    }

    v65 = v56;
    operator delete(v58);
  }

  if (SHIBYTE(v67) < 0)
  {
    operator delete(__dst[0]);
  }

LABEL_11:
  if (SHIBYTE(v61) < 0)
  {
    if (!v60[1])
    {
      goto LABEL_36;
    }

LABEL_18:
    v8 = *(a1 + 8);
    if (!v8)
    {
      goto LABEL_36;
    }

    v9 = sub_1AE63148C(*(a1 + 8), v60);
    if ((v8 + 8) == v9)
    {
      v16 = *(v8 + 40);
      if (!v16)
      {
        goto LABEL_36;
      }

      v17 = *(v8 + 32);
      v10 = v17[4];
      v19 = *v17;
      v18 = *(v17 + 1);
      *(v19 + 8) = v18;
      *v18 = v19;
      *(v8 + 40) = v16 - 1;
      operator delete(v17);
      v68[0] = v60;
      *(sub_1AE6B5CC0(v8, v60) + 14) = v10;
      v11 = *(a2 + 63);
      if ((v11 & 0x80000000) == 0)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v10 = *(v9 + 14);
      v11 = *(a2 + 63);
      if ((v11 & 0x80000000) == 0)
      {
        goto LABEL_37;
      }
    }

LABEL_21:
    if (!*(a2 + 48))
    {
      goto LABEL_126;
    }

    goto LABEL_38;
  }

  if (HIBYTE(v61))
  {
    goto LABEL_18;
  }

LABEL_36:
  v10 = 0;
  v11 = *(a2 + 63);
  if (v11 < 0)
  {
    goto LABEL_21;
  }

LABEL_37:
  if (!v11)
  {
    goto LABEL_126;
  }

LABEL_38:
  if (*(a1 + 24) == 8)
  {
    goto LABEL_126;
  }

  v20 = *(a1 + 16);
  if (!v20)
  {
    goto LABEL_126;
  }

  v21 = (a2 + 40);
  v22 = sub_1AE63148C(*(a1 + 16), v21);
  if ((v20 + 8) == v22)
  {
    v48 = *(v20 + 40);
    if (v48)
    {
      v49 = *(v20 + 32);
      v23 = v49[4];
      v51 = *v49;
      v50 = *(v49 + 1);
      *(v51 + 8) = v50;
      *v50 = v51;
      *(v20 + 40) = v48 - 1;
      operator delete(v49);
      v68[0] = v21;
      *(sub_1AE6B5CC0(v20, v21) + 14) = v23;
      goto LABEL_127;
    }

LABEL_126:
    v23 = 0;
    goto LABEL_127;
  }

  v23 = *(v22 + 14);
LABEL_127:
  v52 = *(a1 + 24);
  if (SHIBYTE(v61) < 0)
  {
    operator delete(v60[0]);
  }

  v53 = v10 << 6;
  if (v52 != 16)
  {
    v53 = v10;
  }

  return (v53 + v23 + (v7 << (v52 - 2)));
}

void sub_1AE766FA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1AE767110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if ((a24 & 0x80000000) == 0)
  {
    JUMPOUT(0x1AE767070);
  }

  JUMPOUT(0x1AE767068);
}

uint64_t sub_1AE767120(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, float a5)
{
  v9 = sub_1AE766808(*(a1 + 16), a4);
  v10 = 0;
  v11 = *(a1 + 8);
  v12 = *(*v11 + 5);
  if (v12 >= a3)
  {
    v12 = a3;
  }

  v13 = (a2 + 4 * a3);
  v14 = v12 + 1;
  do
  {
    result = sub_1AE776928(*v11, v13--, v10++, v9, a5);
  }

  while (v14 != v10);
  return result;
}

void sub_1AE7671BC()
{
  v0[22] = *MEMORY[0x1E69E9840];
  v0[0] = 0;
  v0[1] = v0;
  v0[2] = 0x4002000000;
  v0[3] = sub_1AE767514;
  v0[4] = sub_1AE767538;
  memset(&v0[5], 0, 24);
  operator new();
}

void sub_1AE7674C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  sub_1AE7676D8(v16);
  sub_1AE7676D8(v17 - 104);
  _Block_object_dispose(&a10, 8);
  if (__p)
  {
    a16 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_1AE767514(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void sub_1AE767538(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

void sub_1AE767550(uint64_t a1, int a2, int a3, float a4)
{
  v5 = *(a1 + 72);
  v20 = a3;
  v21 = v5;
  v6 = *(a1 + 64);
  if (!v6)
  {
    sub_1AE60819C();
  }

  (*(*v6 + 48))(v6, &v21, &v20);
  v10 = *(*(a1 + 32) + 8);
  v11 = v10[6];
  v12 = v10[7];
  if (v11 >= v12)
  {
    v14 = v10[5];
    v15 = 0xAAAAAAAAAAAAAAABLL * ((v11 - v14) >> 2) + 1;
    if (v15 > 0x1555555555555555)
    {
      sub_1AE5CBB70();
    }

    v16 = 0xAAAAAAAAAAAAAAABLL * ((v12 - v14) >> 2);
    if (2 * v16 > v15)
    {
      v15 = 2 * v16;
    }

    if (v16 >= 0xAAAAAAAAAAAAAAALL)
    {
      v17 = 0x1555555555555555;
    }

    else
    {
      v17 = v15;
    }

    if (v17)
    {
      if (v17 <= 0x1555555555555555)
      {
        operator new();
      }

      sub_1AE5CB09C();
    }

    v18 = 4 * ((v11 - v14) >> 2);
    *v18 = a2;
    *(v18 + 4) = v9;
    *(v18 + 8) = a4;
    v13 = v18 + 12;
    v19 = (v18 - (v11 - v14));
    memcpy(v19, v14, v11 - v14);
    v10[5] = v19;
    v10[6] = v13;
    v10[7] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v11 = a2;
    v13 = v11 + 12;
    *(v11 + 4) = v9;
    *(v11 + 8) = a4;
  }

  v10[6] = v13;
}

uint64_t sub_1AE7676D8(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_1AE767758(uint64_t a1)
{
  v1 = a1 + 40;
  result = *(a1 + 64);
  if (result == v1)
  {
    return (*(*result + 32))();
  }

  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

uint64_t sub_1AE7677B8(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 64);
  if (result)
  {
    if (result == a2 + 40)
    {
      *(a1 + 64) = a1 + 40;
      v4 = *(**(a2 + 64) + 24);

      return v4();
    }

    else
    {
      result = (*(*result + 16))(result);
      *(a1 + 64) = result;
    }
  }

  else
  {
    *(a1 + 64) = 0;
  }

  return result;
}

uint64_t sub_1AE767874(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "NSt3__16__bindIMN2LM10ParametersEKFfjjEJPKS2_RKNS_12placeholders4__phILi1EEERKNS8_ILi2EEEEEE")
  {
    return a1 + 8;
  }

  if (((v2 & "NSt3__16__bindIMN2LM10ParametersEKFfjjEJPKS2_RKNS_12placeholders4__phILi1EEERKNS8_ILi2EEEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__16__bindIMN2LM10ParametersEKFfjjEJPKS2_RKNS_12placeholders4__phILi1EEERKNS8_ILi2EEEEEE"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__16__bindIMN2LM10ParametersEKFfjjEJPKS2_RKNS_12placeholders4__phILi1EEERKNS8_ILi2EEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_1AE7678E0(void *a1, unsigned int *a2, unsigned int *a3)
{
  v3 = a1[2];
  v4 = a1[1];
  v5 = (a1[3] + (v3 >> 1));
  if (v3)
  {
    v4 = *(*v5 + v4);
  }

  return v4(v5, *a2, *a3);
}

__n128 sub_1AE767918(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2431798;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_1AE7679C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  sub_1AE766808(*(a1 + 16), a4);
  if (a5 && a5 != 2 && a5 != 1)
  {
    __assert_rtn("weightFunction", "LMNgramPoolFacadeImpl.cpp", 248, "false");
  }

  operator new();
}

void sub_1AE767D08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_1AE7676D8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE767D1C(uint64_t a1, unsigned int a2, float a3)
{
  v4 = 0;
  sub_1AE773918(**(a1 + 8), a2, &v4, a3);
  return v4;
}

uint64_t sub_1AE767D50(uint64_t a1, unsigned int a2)
{
  v3 = 0;
  sub_1AE773918(**(a1 + 8), a2, &v3, 0.0);
  return v3;
}

float sub_1AE767D88(uint64_t a1, int *a2, unsigned int a3, __n128 a4)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  v4 = *(a1 + 8);
  v7[0] = MEMORY[0x1E69E9820];
  a4.n128_u64[0] = 0x40000000;
  v7[1] = 0x40000000;
  v7[2] = sub_1AE767E50;
  v7[3] = &unk_1E7A2FE90;
  v7[4] = &v8;
  sub_1AE774B40(v4, a2, a3, v7, a4);
  v5 = v9[6];
  _Block_object_dispose(&v8, 8);
  return v5;
}

void sub_1AE767E38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

float sub_1AE767E50(uint64_t a1, float a2)
{
  v2 = *(*(a1 + 32) + 8);
  result = *(v2 + 24) + a2;
  *(v2 + 24) = result;
  return result;
}

uint64_t sub_1AE767E68(uint64_t a1, uint64_t a2)
{
  v3 = sub_1AE766808(*(a1 + 16), a2);
  if (*(a1 + 16))
  {
    return v3 >> (*(a1 + 372) - 2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AE767EAC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && (v2 = *(v1 + 8)) != 0)
  {
    return *(v2 + 16);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AE767ECC(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  v3 = *v2;
  if (!*v2)
  {
    return 0;
  }

  v4 = *(v3 + 24);
  if (!v4 || *(v3 + 16) == 0)
  {
    return 0;
  }

  v8 = *(v3 + 20);
  v9 = *(v3 + 7);
  if (!*(v3 + 40))
  {
    v10 = malloc_type_malloc(0x30uLL, 0x100004052888210uLL);
    *(v3 + 40) = v10;
    if (v10)
    {
      *&v11 = -1;
      *(&v11 + 1) = -1;
      v10[1] = v11;
      v10[2] = v11;
      *v10 = v11;
    }
  }

  v12 = *(*v2 + 40);

  return sub_1AE77538C(v4, v8, v9, v12, a2, 0, 0);
}

float sub_1AE767FA0(uint64_t a1, __n128 a2)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  v2 = *(a1 + 8);
  v8[0] = MEMORY[0x1E69E9820];
  a2.n128_u64[0] = 0x40000000;
  v8[1] = 0x40000000;
  v8[2] = sub_1AE767E50;
  v8[3] = &unk_1E7A2FE90;
  v8[4] = &v9;
  v3 = *v2;
  v4 = 0.0;
  if (*v2)
  {
    v5 = *(v3 + 32);
    if (v5)
    {
      v6 = *(v3 + 6);
      v13 = 0;
      sub_1AE774C98(v5, 1u, v6, &v13, 1, v5 + 4, v8, a2);
      v4 = v10[6];
    }
  }

  _Block_object_dispose(&v9, 8);
  return v4;
}

void sub_1AE76807C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double sub_1AE7680CC(uint64_t a1, void *a2)
{
  if ((a1 + 24) == a2)
  {
    return result;
  }

  v4 = a1 + 112;
  if (a2 + 11 != v4)
  {
    v5 = *(a2 + 111);
    if (*(a1 + 135) < 0)
    {
      if (v5 >= 0)
      {
        v7 = a2 + 11;
      }

      else
      {
        v7 = a2[11];
      }

      if (v5 >= 0)
      {
        v8 = *(a2 + 111);
      }

      else
      {
        v8 = a2[12];
      }

      sub_1AE621B84(v4, v7, v8);
    }

    else if ((*(a2 + 111) & 0x80) != 0)
    {
      sub_1AE621AB4(v4, a2[11], a2[12]);
    }

    else
    {
      v6 = *(a2 + 11);
      *(v4 + 16) = a2[13];
      *v4 = v6;
    }

    *(a1 + 136) = *(a2 + 28);
    if (a2[15])
    {
      operator new();
    }

    v9 = *(a2 + 151);
    if (*(a1 + 175) < 0)
    {
      if (v9 >= 0)
      {
        v11 = a2 + 16;
      }

      else
      {
        v11 = a2[16];
      }

      if (v9 >= 0)
      {
        v12 = *(a2 + 151);
      }

      else
      {
        v12 = a2[17];
      }

      sub_1AE621B84(a1 + 152, v11, v12);
    }

    else if ((*(a2 + 151) & 0x80) != 0)
    {
      sub_1AE621AB4((a1 + 152), a2[16], a2[17]);
    }

    else
    {
      v10 = *(a2 + 8);
      *(a1 + 168) = a2[18];
      *(a1 + 152) = v10;
    }

    v13 = *(a2 + 175);
    if ((*(a1 + 199) & 0x80000000) == 0)
    {
      if ((*(a2 + 175) & 0x80) != 0)
      {
        sub_1AE621AB4((a1 + 176), a2[19], a2[20]);
        v15 = a2[22];
        if (!v15)
        {
          goto LABEL_43;
        }
      }

      else
      {
        v14 = *(a2 + 19);
        *(a1 + 192) = a2[21];
        *(a1 + 176) = v14;
        v15 = a2[22];
        if (!v15)
        {
          goto LABEL_43;
        }
      }

LABEL_39:
      if (*(a1 + 200) != v15)
      {
        CFRetain(v15);
        v18 = *(a1 + 200);
        if (v18)
        {
          CFRelease(v18);
        }

        *(a1 + 200) = v15;
      }

      goto LABEL_43;
    }

    if (v13 >= 0)
    {
      v16 = a2 + 19;
    }

    else
    {
      v16 = a2[19];
    }

    if (v13 >= 0)
    {
      v17 = *(a2 + 175);
    }

    else
    {
      v17 = a2[20];
    }

    sub_1AE621B84(a1 + 176, v16, v17);
  }

  v15 = a2[22];
  if (v15)
  {
    goto LABEL_39;
  }

LABEL_43:
  if (a2[23])
  {
    operator new();
  }

  *(a1 + 216) = *(a2 + 192);
  *(a1 + 220) = *(a2 + 196);
  *(a1 + 228) = *(a2 + 204);
  *(a1 + 244) = *(a2 + 220);
  *(a1 + 260) = *(a2 + 236);
  *(a1 + 268) = *(a2 + 61);
  v19 = a2[31];
  *(a1 + 280) = *(a2 + 64);
  *(a1 + 272) = v19;
  sub_1AE6A4FB0((a1 + 288), a2[33], a2[34], (a2[34] - a2[33]) >> 2);
  *(a1 + 312) = a2[36];
  v20 = a2[37];
  *(a1 + 328) = *(a2 + 76);
  *(a1 + 320) = v20;
  *(a1 + 332) = *(a2 + 77);
  *(a1 + 336) = *(a2 + 78);
  *(a1 + 340) = *(a2 + 79);
  *(a1 + 344) = *(a2 + 80);
  *(a1 + 348) = *(a2 + 324);
  *(a1 + 364) = *(a2 + 85);
  *(a1 + 368) = *(a2 + 344);
  *(a1 + 372) = *(a2 + 87);
  *(a1 + 376) = *(a2 + 88);
  *(a1 + 424) = *(a2 + 400);
  *(a1 + 380) = *(a2 + 356);
  *(a1 + 388) = *(a2 + 182);
  *(a1 + 392) = *(a2 + 23);
  *(a1 + 408) = *(a2 + 96);
  *(a1 + 412) = *(a2 + 97);
  *(a1 + 416) = *(a2 + 98);
  *(a1 + 425) = *(a2 + 401);
  *(a1 + 420) = *(a2 + 99);
  *(a1 + 440) = *(a2 + 104);
  *(a1 + 452) = *(a2 + 214);
  *(a1 + 480) = *(a2 + 114);
  v21 = (a1 + 456);
  v22 = *(a2 + 455);
  if (*(a1 + 479) < 0)
  {
    if (v22 >= 0)
    {
      v24 = a2 + 54;
    }

    else
    {
      v24 = a2[54];
    }

    if (v22 >= 0)
    {
      v25 = *(a2 + 455);
    }

    else
    {
      v25 = a2[55];
    }

    sub_1AE621B84(v21, v24, v25);
  }

  else if ((*(a2 + 455) & 0x80) != 0)
  {
    sub_1AE621AB4(v21, a2[54], a2[55]);
  }

  else
  {
    v23 = *(a2 + 27);
    *(a1 + 472) = a2[56];
    *v21 = v23;
  }

  result = *(a2 + 58);
  *(a1 + 488) = result;
  return result;
}

void sub_1AE7684D4(uint64_t a1)
{
  *a1 = &unk_1F2431628;
  sub_1AE6318C4((a1 + 24));
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    v3 = sub_1AE719A24(v2);
    MEMORY[0x1B2706400](v3, 0x1060C4064AC95D2);
  }

  v4 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v4)
  {
    if (*v4)
    {
      sub_1AE774A30(v4);
      if (*v4)
      {
        MEMORY[0x1B2706400](*v4, 0x1010C4006136809);
      }
    }

    MEMORY[0x1B2706400](v4, 0x20C4093837F09);
  }

  JUMPOUT(0x1B2706400);
}

uint64_t sub_1AE7685AC(uint64_t a1)
{
  *a1 = &unk_1F2431628;
  sub_1AE6318C4((a1 + 24));
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    v3 = sub_1AE719A24(v2);
    MEMORY[0x1B2706400](v3, 0x1060C4064AC95D2);
  }

  v4 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v4)
  {
    if (*v4)
    {
      sub_1AE774A30(v4);
      if (*v4)
      {
        MEMORY[0x1B2706400](*v4, 0x1010C4006136809);
      }
    }

    MEMORY[0x1B2706400](v4, 0x20C4093837F09);
  }

  return a1;
}

uint64_t sub_1AE7686D0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, std::string *a4@<X3>, void **a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  sub_1AE69EF8C(v46, *a2);
  v10 = *a2;
  v11 = a2[1];
  if (v10 == v11)
  {
    return sub_1AE69F1DC(v46);
  }

  v12 = 0;
  do
  {
    if ((v12 & 1) != 0 && *(v10 + 264) < v48)
    {
      goto LABEL_4;
    }

    if ((sub_1AE768DCC(a1, v10, a3, 0) & 1) != 0 || *(v10 + 264) >= 2uLL && sub_1AE768DCC(a1, v10, a3, 1))
    {
      if ((v12 & 1) == 0 || *(v10 + 264) > v48 || *(v10 + 24) > v47)
      {
        sub_1AE6A4B38(v46, v10);
      }

LABEL_4:
      v12 = 1;
    }

    v10 += 304;
  }

  while (v10 != v11);
  if ((v12 & 1) == 0)
  {
    return sub_1AE69F1DC(v46);
  }

  if (!sub_1AE768DCC(a1, v46, a3, 0))
  {
    if (qword_1EB5E0A08 != -1)
    {
      dispatch_once(&qword_1EB5E0A08, &unk_1F24318A8);
    }

    v21 = *(a1 + 72);
    v14 = *(a1 + 80);
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_1AE72B244(&__p, v46, v21);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    sub_1AE693A80("Found final hypothesis satisfying secondary policy  = [%s]", &v49, p_p);
    if (v51 >= 0)
    {
      v23 = &v49;
    }

    else
    {
      v23 = v49;
    }

    if (v51 >= 0)
    {
      v24 = HIBYTE(v51);
    }

    else
    {
      v24 = v50;
    }

    std::string::append(a4, v23, v24);
    v25 = SHIBYTE(a4->__r_.__value_.__r.__words[2]);
    if (v25 < 0)
    {
      size = a4->__r_.__value_.__l.__size_;
      if (size)
      {
        v27 = a4->__r_.__value_.__r.__words[0];
        if (!*(a4->__r_.__value_.__r.__words[0] + size - 1))
        {
          v26 = size - 1;
          a4->__r_.__value_.__l.__size_ = v26;
          goto LABEL_63;
        }
      }
    }

    else if (*(&a4->__r_.__value_.__s + 23) && !a4->__r_.__value_.__s.__data_[v25 - 1])
    {
      v26 = v25 - 1;
      *(&a4->__r_.__value_.__s + 23) = v25 - 1;
      v27 = a4;
LABEL_63:
      v27->__r_.__value_.__s.__data_[v26] = 0;
    }

    std::string::push_back(a4, 10);
    if ((SHIBYTE(v51) & 0x80000000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_65;
  }

  if (qword_1EB5E0A08 != -1)
  {
    dispatch_once(&qword_1EB5E0A08, &unk_1F24318A8);
  }

  v13 = *(a1 + 72);
  v14 = *(a1 + 80);
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1AE72B244(&__p, v46, v13);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = &__p;
  }

  else
  {
    v15 = __p.__r_.__value_.__r.__words[0];
  }

  sub_1AE693A80("Found final hypothesis satisfying primary policy  = [%s]", &v49, v15);
  if (v51 >= 0)
  {
    v16 = &v49;
  }

  else
  {
    v16 = v49;
  }

  if (v51 >= 0)
  {
    v17 = HIBYTE(v51);
  }

  else
  {
    v17 = v50;
  }

  std::string::append(a4, v16, v17);
  v18 = SHIBYTE(a4->__r_.__value_.__r.__words[2]);
  if (v18 < 0)
  {
    v28 = a4->__r_.__value_.__l.__size_;
    if (v28)
    {
      v20 = a4->__r_.__value_.__r.__words[0];
      if (!*(a4->__r_.__value_.__r.__words[0] + v28 - 1))
      {
        v19 = v28 - 1;
        a4->__r_.__value_.__l.__size_ = v19;
LABEL_55:
        v20->__r_.__value_.__s.__data_[v19] = 0;
      }
    }
  }

  else if (*(&a4->__r_.__value_.__s + 23) && !a4->__r_.__value_.__s.__data_[v18 - 1])
  {
    v19 = v18 - 1;
    *(&a4->__r_.__value_.__s + 23) = v18 - 1;
    v20 = a4;
    goto LABEL_55;
  }

  std::string::push_back(a4, 10);
  if ((SHIBYTE(v51) & 0x80000000) == 0)
  {
LABEL_57:
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_58;
    }

LABEL_66:
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v14)
    {
      goto LABEL_67;
    }

    goto LABEL_69;
  }

LABEL_65:
  operator delete(v49);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_66;
  }

LABEL_58:
  if (v14)
  {
LABEL_67:
    if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v14->__on_zero_shared)(v14);
      std::__shared_weak_count::__release_weak(v14);
    }
  }

LABEL_69:
  v31 = a5[1];
  v30 = a5[2];
  if (v31 >= v30)
  {
    v33 = 0x86BCA1AF286BCA1BLL * ((v31 - *a5) >> 4);
    if (v33 + 1 > 0xD79435E50D7943)
    {
      sub_1AE5CBB70();
    }

    v34 = 0x86BCA1AF286BCA1BLL * ((v30 - *a5) >> 4);
    v35 = 2 * v34;
    if (2 * v34 <= v33 + 1)
    {
      v35 = v33 + 1;
    }

    if (v34 >= 0x6BCA1AF286BCA1)
    {
      v36 = 0xD79435E50D7943;
    }

    else
    {
      v36 = v35;
    }

    v53 = a5;
    if (v36)
    {
      if (v36 <= 0xD79435E50D7943)
      {
        operator new();
      }

      sub_1AE5CB09C();
    }

    v49 = 0;
    v50 = 304 * v33;
    v51 = 304 * v33;
    v52 = 0;
    sub_1AE69EF8C(304 * v33, v46);
    v32 = v51 + 304;
    v37 = *a5;
    v38 = a5[1];
    v39 = v50 + *a5 - v38;
    if (v38 != *a5)
    {
      v40 = *a5;
      v41 = v50 + *a5 - v38;
      do
      {
        *v41 = 0;
        *(v41 + 8) = 0;
        *(v41 + 16) = 0;
        *v41 = *v40;
        *(v41 + 16) = *(v40 + 2);
        *v40 = 0;
        *(v40 + 1) = 0;
        *(v40 + 2) = 0;
        *(v41 + 24) = *(v40 + 3);
        v42 = *(v40 + 2);
        *(v41 + 48) = *(v40 + 6);
        *(v41 + 32) = v42;
        *(v40 + 5) = 0;
        *(v40 + 6) = 0;
        *(v40 + 4) = 0;
        *(v41 + 56) = 0;
        *(v41 + 64) = 0;
        *(v41 + 72) = 0;
        *(v41 + 56) = *(v40 + 56);
        *(v41 + 72) = *(v40 + 9);
        *(v40 + 7) = 0;
        *(v40 + 8) = 0;
        *(v40 + 9) = 0;
        *(v41 + 80) = 0;
        *(v41 + 88) = 0;
        *(v41 + 96) = 0;
        *(v41 + 80) = *(v40 + 5);
        *(v41 + 96) = *(v40 + 12);
        *(v40 + 10) = 0;
        *(v40 + 11) = 0;
        *(v40 + 12) = 0;
        *(v41 + 104) = 0;
        *(v41 + 112) = 0;
        *(v41 + 120) = 0;
        *(v41 + 104) = *(v40 + 104);
        *(v41 + 120) = *(v40 + 15);
        *(v40 + 13) = 0;
        *(v40 + 14) = 0;
        *(v40 + 15) = 0;
        *(v41 + 128) = 0;
        *(v41 + 136) = 0;
        *(v41 + 144) = 0;
        *(v41 + 128) = *(v40 + 8);
        *(v41 + 144) = *(v40 + 18);
        *(v40 + 16) = 0;
        *(v40 + 17) = 0;
        *(v40 + 18) = 0;
        *(v41 + 152) = 0;
        *(v41 + 160) = 0;
        *(v41 + 168) = 0;
        *(v41 + 152) = *(v40 + 152);
        *(v41 + 168) = *(v40 + 21);
        *(v40 + 20) = 0;
        *(v40 + 21) = 0;
        *(v40 + 19) = 0;
        *(v41 + 176) = *(v40 + 11);
        *(v41 + 200) = 0;
        *(v41 + 208) = 0;
        *(v41 + 192) = 0;
        *(v41 + 192) = *(v40 + 12);
        *(v41 + 208) = *(v40 + 26);
        *(v40 + 24) = 0;
        *(v40 + 25) = 0;
        *(v40 + 26) = 0;
        *(v41 + 216) = 0;
        *(v41 + 224) = 0;
        *(v41 + 232) = 0;
        *(v41 + 216) = *(v40 + 216);
        *(v41 + 232) = *(v40 + 29);
        *(v40 + 27) = 0;
        *(v40 + 28) = 0;
        *(v40 + 29) = 0;
        *(v41 + 240) = 0;
        *(v41 + 248) = 0;
        *(v41 + 256) = 0;
        *(v41 + 240) = *(v40 + 15);
        *(v41 + 256) = *(v40 + 32);
        *(v40 + 30) = 0;
        *(v40 + 31) = 0;
        *(v40 + 32) = 0;
        v43 = *(v40 + 33);
        *(v41 + 272) = *(v40 + 68);
        *(v41 + 264) = v43;
        *(v41 + 288) = 0;
        *(v41 + 296) = 0;
        *(v41 + 280) = 0;
        *(v41 + 280) = *(v40 + 35);
        *(v41 + 288) = *(v40 + 18);
        *(v40 + 35) = 0;
        *(v40 + 36) = 0;
        *(v40 + 37) = 0;
        v40 += 304;
        v41 += 304;
      }

      while (v40 != v38);
      do
      {
        v37 = (sub_1AE69F1DC(v37) + 304);
      }

      while (v37 != v38);
      v37 = *a5;
    }

    *a5 = v39;
    a5[1] = v32;
    a5[2] = v52;
    if (v37)
    {
      operator delete(v37);
    }
  }

  else
  {
    sub_1AE69EF8C(a5[1], v46);
    v32 = (v31 + 304);
  }

  a5[1] = v32;
  return sub_1AE69F1DC(v46);
}

void sub_1AE768D34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  sub_1AE6A58C8(v20 - 120);
  sub_1AE69F1DC(&a19);
  sub_1AE6A25B8(v19);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE768DCC(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  if (a2[33])
  {
    if (*(a3 + 23) >= 0)
    {
      v5 = *(a3 + 23);
    }

    else
    {
      v5 = *(a3 + 8);
    }

    sub_1AE72F020((a1 + 72), v5, 1uLL, a4);
    if ((a2[36] - a2[35]) >= 0)
    {
      operator new();
    }

    sub_1AE5CBB70();
  }

  return 1;
}

os_log_t sub_1AE768F44()
{
  result = os_log_create("com.apple.LanguageModeling", "InlineCompletionHypothesis");
  qword_1EB5E0A18 = result;
  return result;
}

void sub_1AE768F74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v14 = *MEMORY[0x1E69E9840];
  v7 = *a3;
  if (0xD37A6F4DE9BD37A7 * ((*(a3 + 8) - v7) >> 3) >= 2)
  {
    __assert_rtn("_completions", "MultiWordBeamSearchPredictorV2.cpp", 262, "stems.size()<2");
  }

  if (byte_1EB5E05C9 == 1)
  {
    sub_1AE72F578((a1 + 72), (a1 + 208), v7, a4);
    if (v9 > 0.0001)
    {
      __assert_rtn("_completions", "MultiWordBeamSearchPredictorV2.cpp", 268, "prefixProbabilityFirstWord<=1e-4");
    }
  }

  if (a7)
  {
    if (qword_1EB5E0A08 != -1)
    {
      dispatch_once(&qword_1EB5E0A08, &unk_1F24318A8);
    }

    v10 = qword_1EB5E0A18;
    if (os_log_type_enabled(qword_1EB5E0A18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v11 = "Starting Inline Completions Beam Search in Lexicon Constrained Prediction Mode";
LABEL_13:
      _os_log_impl(&dword_1AE5C8000, v10, OS_LOG_TYPE_DEFAULT, v11, buf, 2u);
    }
  }

  else
  {
    if (qword_1EB5E0A08 != -1)
    {
      dispatch_once(&qword_1EB5E0A08, &unk_1F24318A8);
    }

    v10 = qword_1EB5E0A18;
    if (os_log_type_enabled(qword_1EB5E0A18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v11 = "Starting Inline Completions Beam Search in Open Ended Prediction Mode";
      goto LABEL_13;
    }
  }

  operator new();
}

void sub_1AE76B7E8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_1AE6090F0(a1);
}

void sub_1AE76B92C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34)
{
  sub_1AE622290(&STACK[0x3D0]);
  v34 = STACK[0x538];
  if (STACK[0x538])
  {
    STACK[0x540] = v34;
    operator delete(v34);
  }

  if (a34)
  {
    operator delete(a34);
  }

  sub_1AE69F1DC(&STACK[0x550]);
  JUMPOUT(0x1AE76BEE0);
}

void sub_1AE76BB34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52)
{
  if (SLOBYTE(STACK[0x3E7]) < 0)
  {
    operator delete(STACK[0x3D0]);
  }

  if (SLOBYTE(STACK[0x2B7]) < 0)
  {
    operator delete(STACK[0x2A0]);
  }

  sub_1AE622290(&a52);
  JUMPOUT(0x1AE76BB60);
}

void sub_1AE76BC40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48, void *__p, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, int a54, __int16 a55, char a56, char a57)
{
  sub_1AE622290(&STACK[0x3D0]);
  if (a46)
  {
    (*(*a46 + 8))(a46);
  }

  sub_1AE69F404(&__p);
  if (SLOBYTE(STACK[0x29F]) < 0)
  {
    operator delete(STACK[0x288]);
  }

  if (a57 < 0)
  {
    operator delete(a52);
  }

  v57 = STACK[0x2A0];
  if (STACK[0x2A0])
  {
    STACK[0x2A8] = v57;
    operator delete(v57);
    if (SLOBYTE(STACK[0x51F]) < 0)
    {
LABEL_9:
      operator delete(STACK[0x508]);
      if (STACK[0x520])
      {
        operator delete(STACK[0x520]);
        if (!STACK[0x538])
        {
          JUMPOUT(0x1AE76BECCLL);
        }

        JUMPOUT(0x1AE76BEC4);
      }

      JUMPOUT(0x1AE76BEBCLL);
    }
  }

  else if (SLOBYTE(STACK[0x51F]) < 0)
  {
    goto LABEL_9;
  }

  JUMPOUT(0x1AE76BEB4);
}

void sub_1AE76BE18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34)
{
  v34 = STACK[0x288];
  if (STACK[0x288])
  {
    v35 = STACK[0x290];
    if (STACK[0x290] != v34)
    {
      do
      {
        v36 = *(v35 - 16);
        if (v36 && !atomic_fetch_add(&v36->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v36->__on_zero_shared)(v36);
          std::__shared_weak_count::__release_weak(v36);
        }

        v35 -= 24;
      }

      while (v35 != v34);
      v34 = STACK[0x288];
    }

    operator delete(v34);
  }

  sub_1AE69F1DC(&STACK[0x2A0]);
  sub_1AE69F1DC(&STACK[0x3D0]);
  if (SLOBYTE(STACK[0x51F]) < 0)
  {
    operator delete(STACK[0x508]);
    v37 = STACK[0x520];
    if (!STACK[0x520])
    {
LABEL_12:
      v38 = STACK[0x538];
      if (!STACK[0x538])
      {
        goto LABEL_17;
      }

LABEL_16:
      STACK[0x540] = v38;
      operator delete(v38);
LABEL_17:
      if (a34)
      {
        operator delete(a34);
      }

      sub_1AE69F1DC(&STACK[0x550]);
      JUMPOUT(0x1AE76BEE0);
    }
  }

  else
  {
    v37 = STACK[0x520];
    if (!STACK[0x520])
    {
      goto LABEL_12;
    }
  }

  operator delete(v37);
  v38 = STACK[0x538];
  if (!STACK[0x538])
  {
    goto LABEL_17;
  }

  goto LABEL_16;
}

float *sub_1AE76BF08(float *result, float *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = v7;
  while (1)
  {
    v7 = v8;
    v9 = (a2 - v8) >> 3;
    if (v9 > 2)
    {
      break;
    }

    if (v9 < 2)
    {
      return result;
    }

    if (v9 == 2)
    {
      v82 = *(a2 - 1);
      v83 = v8[1];
      if (v82 > v83)
      {
        v84 = *v8;
        *v8 = *(a2 - 2);
        *(a2 - 2) = v84;
        v8[1] = v82;
        *(a2 - 1) = v83;
      }

      return result;
    }

LABEL_10:
    if (v9 <= 23)
    {
      v95 = v8 + 2;
      v97 = v8 == a2 || v95 == a2;
      if (a4)
      {
        if (!v97)
        {
          v98 = 0;
          v99 = v8;
          do
          {
            v101 = v99[3];
            v102 = v99[1];
            v99 = v95;
            if (v101 > v102)
            {
              v103 = *v95;
              v104 = v98;
              do
              {
                v105 = (v8 + v104);
                v105[2] = *(v8 + v104);
                v105[3] = *(v8 + v104 + 4);
                if (!v104)
                {
                  v100 = v8;
                  goto LABEL_127;
                }

                v104 -= 8;
              }

              while (v101 > *(v105 - 1));
              v100 = v8 + v104 + 8;
LABEL_127:
              *v100 = v103;
              *(v100 + 4) = v101;
            }

            v95 = v99 + 2;
            v98 += 8;
          }

          while (v99 + 2 != a2);
        }
      }

      else if (!v97)
      {
        v142 = v8 + 1;
        do
        {
          v143 = v7[3];
          v144 = v7[1];
          v7 = v95;
          if (v143 > v144)
          {
            v145 = *v95;
            v146 = v142;
            do
            {
              v146[1] = *(v146 - 1);
              v146[2] = *v146;
              v147 = *(v146 - 2);
              v146 -= 2;
            }

            while (v143 > v147);
            v146[1] = v145;
            v146[2] = v143;
          }

          v95 = v7 + 2;
          v142 += 2;
        }

        while (v7 + 2 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v8 == a2)
      {
        return result;
      }

      v106 = (v9 - 2) >> 1;
      v107 = v106;
      do
      {
        if (v106 >= v107)
        {
          v109 = (2 * (v107 & 0x1FFFFFFFFFFFFFFFLL)) | 1;
          v110 = &v8[2 * v109];
          if (2 * (v107 & 0x1FFFFFFFFFFFFFFFLL) + 2 < v9 && v110[1] > v110[3])
          {
            v110 += 2;
            v109 = 2 * (v107 & 0x1FFFFFFFFFFFFFFFLL) + 2;
          }

          v111 = &v8[2 * v107];
          v112 = v110[1];
          v113 = v111[1];
          if (v112 <= v113)
          {
            v114 = *v111;
            do
            {
              v115 = v111;
              v111 = v110;
              *v115 = *v110;
              v115[1] = v112;
              if (v106 < v109)
              {
                break;
              }

              v116 = 2 * v109;
              v109 = (2 * (v109 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
              v110 = &v8[2 * v109];
              v117 = v116 + 2;
              if (v117 < v9 && v110[1] > v110[3])
              {
                v110 += 2;
                v109 = v117;
              }

              v112 = v110[1];
            }

            while (v112 <= v113);
            *v111 = v114;
            v111[1] = v113;
          }
        }

        v108 = v107-- <= 0;
      }

      while (!v108);
      while (2)
      {
        v118 = 0;
        v119 = *v8;
        v120 = v8[1];
        v121 = v8;
        do
        {
          v126 = &v121[2 * v118];
          v125 = v126 + 2;
          v127 = (2 * v118) | 1;
          v118 = 2 * v118 + 2;
          if (v118 < v9)
          {
            v122 = v126[3];
            v123 = v126[5];
            v124 = v126 + 4;
            if (v122 <= v123)
            {
              v118 = v127;
            }

            else
            {
              v125 = v124;
            }
          }

          else
          {
            v118 = v127;
          }

          *v121 = *v125;
          v121[1] = v125[1];
          v121 = v125;
        }

        while (v118 <= ((v9 - 2) >> 1));
        if (v125 != a2 - 2)
        {
          *v125 = *(a2 - 2);
          v125[1] = *(a2 - 1);
          *(a2 - 2) = v119;
          *(a2 - 1) = v120;
          v128 = (v125 - v8 + 8) >> 3;
          v108 = v128 < 2;
          v129 = v128 - 2;
          if (!v108)
          {
            v130 = v129 >> 1;
            v131 = &v8[2 * v130];
            v132 = v131[1];
            v120 = v125[1];
            if (v132 > v120)
            {
              v133 = *v125;
              do
              {
                v134 = v125;
                v125 = v131;
                *v134 = *v131;
                v134[1] = v132;
                if (!v130)
                {
                  break;
                }

                v130 = (v130 - 1) >> 1;
                v131 = &v8[2 * v130];
                v132 = v131[1];
              }

              while (v132 > v120);
              *v125 = v133;
LABEL_150:
              v125[1] = v120;
            }
          }

          a2 -= 2;
          v108 = v9-- <= 2;
          if (v108)
          {
            return result;
          }

          continue;
        }

        break;
      }

      *v125 = v119;
      goto LABEL_150;
    }

    v10 = &v8[2 * (v9 >> 1)];
    v11 = *(a2 - 1);
    if (v9 < 0x81)
    {
      v15 = v8[1];
      v16 = v10[1];
      if (v15 > v16)
      {
        v17 = *v10;
        if (v11 > v15)
        {
          *v10 = *(a2 - 2);
          *(a2 - 2) = v17;
          v10[1] = v11;
          goto LABEL_37;
        }

        *v10 = *v8;
        *v8 = v17;
        v10[1] = v15;
        v8[1] = v16;
        v36 = *(a2 - 1);
        if (v36 > v16)
        {
          *v8 = *(a2 - 2);
          *(a2 - 2) = v17;
          v8[1] = v36;
LABEL_37:
          *(a2 - 1) = v16;
        }

LABEL_38:
        --a3;
        if ((a4 & 1) == 0)
        {
          goto LABEL_63;
        }

        goto LABEL_39;
      }

      if (v11 <= v15)
      {
        goto LABEL_38;
      }

      v22 = *v8;
      *v8 = *(a2 - 2);
      *(a2 - 2) = v22;
      v8[1] = v11;
      *(a2 - 1) = v15;
      v23 = v8[1];
      v24 = v10[1];
      if (v23 <= v24)
      {
        goto LABEL_38;
      }

      v25 = *v10;
      *v10 = *v8;
      *v8 = v25;
      v10[1] = v23;
      v8[1] = v24;
      --a3;
      if ((a4 & 1) == 0)
      {
        goto LABEL_63;
      }

LABEL_39:
      v37 = *v8;
      v38 = v8[1];
LABEL_64:
      v58 = v8;
      do
      {
        v59 = v58;
        v58 += 2;
      }

      while (v59[3] > v38);
      v60 = a2;
      if (v59 == v8)
      {
        v63 = a2;
        while (v58 < v63)
        {
          v61 = v63 - 2;
          v64 = *(v63 - 1);
          v63 -= 2;
          if (v64 > v38)
          {
            goto LABEL_74;
          }
        }

        v61 = v63;
      }

      else
      {
        do
        {
          v61 = v60 - 2;
          v62 = *(v60 - 1);
          v60 -= 2;
        }

        while (v62 <= v38);
      }

LABEL_74:
      v8 = v58;
      if (v58 < v61)
      {
        v65 = v61;
        do
        {
          v66 = *v8;
          *v8 = *v65;
          *v65 = v66;
          v67 = *(v8 + 1);
          v8[1] = v65[1];
          *(v65 + 1) = v67;
          do
          {
            v68 = v8[3];
            v8 += 2;
          }

          while (v68 > v38);
          do
          {
            v69 = *(v65 - 1);
            v65 -= 2;
          }

          while (v69 <= v38);
        }

        while (v8 < v65);
      }

      if (v8 - 2 != v7)
      {
        *v7 = *(v8 - 2);
        v7[1] = *(v8 - 1);
      }

      *(v8 - 2) = v37;
      *(v8 - 1) = v38;
      if (v58 < v61)
      {
        goto LABEL_85;
      }

      v70 = sub_1AE76CCC0(v7, v8 - 2);
      result = sub_1AE76CCC0(v8, a2);
      if (result)
      {
        a2 = v8 - 2;
        if (v70)
        {
          return result;
        }

        goto LABEL_2;
      }

      if (!v70)
      {
LABEL_85:
        result = sub_1AE76BF08(v7, v8 - 2, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v12 = v10[1];
      v13 = v8[1];
      if (v12 <= v13)
      {
        if (v11 > v12)
        {
          v18 = *v10;
          *v10 = *(a2 - 2);
          *(a2 - 2) = v18;
          v10[1] = v11;
          *(a2 - 1) = v12;
          v19 = v10[1];
          v20 = v8[1];
          if (v19 > v20)
          {
            v21 = *v8;
            *v8 = *v10;
            *v10 = v21;
            v8[1] = v19;
            v10[1] = v20;
          }
        }
      }

      else
      {
        v14 = *v8;
        if (v11 <= v12)
        {
          *v8 = *v10;
          *v10 = v14;
          v8[1] = v12;
          v10[1] = v13;
          v26 = *(a2 - 1);
          if (v26 <= v13)
          {
            goto LABEL_29;
          }

          *v10 = *(a2 - 2);
          *(a2 - 2) = v14;
          v10[1] = v26;
        }

        else
        {
          *v8 = *(a2 - 2);
          *(a2 - 2) = v14;
          v8[1] = v11;
        }

        *(a2 - 1) = v13;
      }

LABEL_29:
      v27 = v10 - 2;
      v28 = *(v10 - 1);
      v29 = v8[3];
      v30 = *(a2 - 3);
      if (v28 <= v29)
      {
        if (v30 > v28)
        {
          v32 = *v27;
          *v27 = *(a2 - 4);
          *(a2 - 4) = v32;
          *(v10 - 1) = v30;
          *(a2 - 3) = v28;
          v33 = *(v10 - 1);
          v34 = v8[3];
          if (v33 > v34)
          {
            v35 = *(v8 + 2);
            v8[2] = *v27;
            *v27 = v35;
            v8[3] = v33;
            *(v10 - 1) = v34;
          }
        }
      }

      else
      {
        v31 = *(v8 + 2);
        if (v30 <= v28)
        {
          v8[2] = *v27;
          *v27 = v31;
          v8[3] = v28;
          *(v10 - 1) = v29;
          v39 = *(a2 - 3);
          if (v39 <= v29)
          {
            goto LABEL_43;
          }

          *v27 = *(a2 - 4);
          *(a2 - 4) = v31;
          *(v10 - 1) = v39;
        }

        else
        {
          v8[2] = *(a2 - 4);
          *(a2 - 4) = v31;
          v8[3] = v30;
        }

        *(a2 - 3) = v29;
      }

LABEL_43:
      v40 = v10 + 2;
      v41 = v10[3];
      v42 = v8[5];
      v43 = *(a2 - 5);
      if (v41 <= v42)
      {
        if (v43 > v41)
        {
          v45 = *v40;
          *v40 = *(a2 - 6);
          *(a2 - 6) = v45;
          v10[3] = v43;
          *(a2 - 5) = v41;
          v46 = v10[3];
          v47 = v8[5];
          if (v46 > v47)
          {
            v48 = *(v8 + 4);
            v8[4] = *v40;
            *v40 = v48;
            v8[5] = v46;
            v10[3] = v47;
          }
        }
      }

      else
      {
        v44 = *(v8 + 4);
        if (v43 <= v41)
        {
          v8[4] = *v40;
          *v40 = v44;
          v8[5] = v41;
          v10[3] = v42;
          v49 = *(a2 - 5);
          if (v49 <= v42)
          {
            goto LABEL_52;
          }

          *v40 = *(a2 - 6);
          *(a2 - 6) = v44;
          v10[3] = v49;
        }

        else
        {
          v8[4] = *(a2 - 6);
          *(a2 - 6) = v44;
          v8[5] = v43;
        }

        *(a2 - 5) = v42;
      }

LABEL_52:
      v50 = v10[1];
      v51 = *(v10 - 1);
      v52 = v10[3];
      if (v50 <= v51)
      {
        v53 = *v10;
        if (v52 <= v50)
        {
          v51 = v10[1];
        }

        else
        {
          v54 = *v40;
          *v10 = *v40;
          *v40 = v53;
          v10[1] = v52;
          v10[3] = v50;
          if (v52 <= v51)
          {
            v51 = v52;
            v53 = v54;
          }

          else
          {
            v53 = *v27;
            *v27 = v54;
            *v10 = v53;
            *(v10 - 1) = v52;
            v10[1] = v51;
          }
        }
      }

      else
      {
        v53 = *v27;
        if (v52 <= v50)
        {
          *v27 = *v10;
          *v10 = v53;
          *(v10 - 1) = v50;
          v10[1] = v51;
          if (v52 > v51)
          {
            v55 = *v40;
            *v10 = *v40;
            *v40 = v53;
            v10[1] = v52;
            v10[3] = v51;
            v51 = v52;
            v53 = v55;
          }
        }

        else
        {
          *v27 = *v40;
          *v40 = v53;
          *(v10 - 1) = v52;
          v10[3] = v51;
          v53 = *v10;
          v51 = v50;
        }
      }

      v56 = *v8;
      *v8 = v53;
      *v10 = v56;
      v57 = *(v8 + 1);
      v8[1] = v51;
      *(v10 + 1) = v57;
      --a3;
      if (a4)
      {
        goto LABEL_39;
      }

LABEL_63:
      v38 = v8[1];
      v37 = *v8;
      if (*(v8 - 1) > v38)
      {
        goto LABEL_64;
      }

      if (v38 <= *(a2 - 1))
      {
        v73 = v8 + 2;
        do
        {
          v8 = v73;
          if (v73 >= a2)
          {
            break;
          }

          v74 = v73[1];
          v73 += 2;
        }

        while (v38 <= v74);
      }

      else
      {
        v71 = v8;
        do
        {
          v8 = v71 + 2;
          v72 = v71[3];
          v71 += 2;
        }

        while (v38 <= v72);
      }

      v75 = a2;
      if (v8 < a2)
      {
        v76 = a2;
        do
        {
          v75 = v76 - 2;
          v77 = *(v76 - 1);
          v76 -= 2;
        }

        while (v38 > v77);
      }

      while (v8 < v75)
      {
        v78 = *v8;
        *v8 = *v75;
        *v75 = v78;
        v79 = *(v8 + 1);
        v8[1] = v75[1];
        *(v75 + 1) = v79;
        do
        {
          v80 = v8[3];
          v8 += 2;
        }

        while (v38 <= v80);
        do
        {
          v81 = *(v75 - 1);
          v75 -= 2;
        }

        while (v38 > v81);
      }

      if (v8 - 2 != v7)
      {
        *v7 = *(v8 - 2);
        v7[1] = *(v8 - 1);
      }

      a4 = 0;
      *(v8 - 2) = v37;
      *(v8 - 1) = v38;
    }
  }

  if (v9 != 3)
  {
    if (v9 == 4)
    {
      v89 = v8 + 3;
      v90 = v8[3];
      v91 = v8 + 1;
      v92 = v8[1];
      v93 = v8[5];
      if (v90 <= v92)
      {
        if (v93 > v90)
        {
          v139 = *(v8 + 2);
          v140 = *(v8 + 4);
          *(v8 + 2) = v140;
          *(v8 + 4) = v139;
          v8[3] = v93;
          v8[5] = v90;
          if (v93 > v92)
          {
            v141 = *v8;
            *v8 = v140;
            v8[2] = v141;
            goto LABEL_185;
          }

LABEL_186:
          v93 = v90;
        }
      }

      else
      {
        v94 = *v8;
        if (v93 > v90)
        {
          *v8 = v8[4];
          v8[4] = v94;
          goto LABEL_184;
        }

        *v8 = v8[2];
        v8[2] = v94;
        v8[1] = v90;
        v8[3] = v92;
        if (v93 > v92)
        {
          v8[2] = v8[4];
          v8[4] = v94;
          v91 = v8 + 3;
LABEL_184:
          v89 = v8 + 5;
          v90 = v92;
LABEL_185:
          *v91 = v93;
          *v89 = v92;
          goto LABEL_186;
        }
      }

      v149 = *(a2 - 1);
      if (v149 <= v93)
      {
        return result;
      }

      v150 = *(v8 + 4);
      v8[4] = *(a2 - 2);
      *(a2 - 2) = v150;
      v8[5] = v149;
      *(a2 - 1) = v93;
      v136 = v8[5];
      v151 = v8[3];
      if (v136 <= v151)
      {
        return result;
      }

      v152 = *(v8 + 2);
      v153 = *(v8 + 4);
      *(v8 + 2) = v153;
      *(v8 + 4) = v152;
      v8[3] = v136;
      v8[5] = v151;
      v137 = v8[1];
      if (v136 <= v137)
      {
        return result;
      }

      v154 = *v8;
      *v8 = v153;
      v8[2] = v154;
LABEL_191:
      v8[1] = v136;
      v8[3] = v137;
      return result;
    }

    if (v9 == 5)
    {

      return sub_1AE76CAE4(v8, v8 + 2, v8 + 4, v8 + 6, a2 - 2);
    }

    goto LABEL_10;
  }

  v85 = v8[3];
  v86 = v8[1];
  v87 = *(a2 - 1);
  if (v85 <= v86)
  {
    if (v87 <= v85)
    {
      return result;
    }

    v135 = *(v8 + 2);
    v8[2] = *(a2 - 2);
    *(a2 - 2) = v135;
    v8[3] = v87;
    *(a2 - 1) = v85;
    v136 = v8[3];
    v137 = v8[1];
    if (v136 <= v137)
    {
      return result;
    }

    v138 = *v8;
    *v8 = v8[2];
    v8[2] = v138;
    goto LABEL_191;
  }

  v88 = *v8;
  if (v87 <= v85)
  {
    *v8 = v8[2];
    v8[2] = v88;
    v8[1] = v85;
    v8[3] = v86;
    v148 = *(a2 - 1);
    if (v148 <= v86)
    {
      return result;
    }

    v8[2] = *(a2 - 2);
    *(a2 - 2) = v88;
    v8[3] = v148;
  }

  else
  {
    *v8 = *(a2 - 2);
    *(a2 - 2) = v88;
    v8[1] = v87;
  }

  *(a2 - 1) = v86;
  return result;
}

float *sub_1AE76CAE4(float *result, float *a2, float *a3, float *a4, float *a5)
{
  v5 = a2[1];
  v6 = result[1];
  v7 = a3[1];
  if (v5 <= v6)
  {
    if (v7 <= v5)
    {
      v5 = a3[1];
    }

    else
    {
      v9 = *a2;
      *a2 = *a3;
      *a3 = v9;
      a2[1] = v7;
      a3[1] = v5;
      v10 = a2[1];
      v11 = result[1];
      if (v10 > v11)
      {
        v12 = *result;
        *result = *a2;
        *a2 = v12;
        result[1] = v10;
        a2[1] = v11;
        v5 = a3[1];
      }
    }
  }

  else
  {
    v8 = *result;
    if (v7 > v5)
    {
      *result = *a3;
      *a3 = v8;
      result[1] = v7;
LABEL_9:
      a3[1] = v6;
      v5 = v6;
      goto LABEL_11;
    }

    *result = *a2;
    *a2 = v8;
    result[1] = v5;
    a2[1] = v6;
    v5 = a3[1];
    if (v5 > v6)
    {
      *a2 = *a3;
      *a3 = v8;
      a2[1] = v5;
      goto LABEL_9;
    }
  }

LABEL_11:
  v13 = a4[1];
  if (v13 > v5)
  {
    v14 = *a3;
    *a3 = *a4;
    *a4 = v14;
    a3[1] = v13;
    a4[1] = v5;
    v15 = a3[1];
    v16 = a2[1];
    if (v15 > v16)
    {
      v17 = *a2;
      *a2 = *a3;
      *a3 = v17;
      a2[1] = v15;
      a3[1] = v16;
      v18 = a2[1];
      v19 = result[1];
      if (v18 > v19)
      {
        v20 = *result;
        *result = *a2;
        *a2 = v20;
        result[1] = v18;
        a2[1] = v19;
      }
    }
  }

  v21 = a5[1];
  v22 = a4[1];
  if (v21 > v22)
  {
    v23 = *a4;
    *a4 = *a5;
    *a5 = v23;
    a4[1] = v21;
    a5[1] = v22;
    v24 = a4[1];
    v25 = a3[1];
    if (v24 > v25)
    {
      v26 = *a3;
      *a3 = *a4;
      *a4 = v26;
      a3[1] = v24;
      a4[1] = v25;
      v27 = a3[1];
      v28 = a2[1];
      if (v27 > v28)
      {
        v29 = *a2;
        *a2 = *a3;
        *a3 = v29;
        a2[1] = v27;
        a3[1] = v28;
        v30 = a2[1];
        v31 = result[1];
        if (v30 > v31)
        {
          v32 = *result;
          *result = *a2;
          *a2 = v32;
          result[1] = v30;
          a2[1] = v31;
        }
      }
    }
  }

  return result;
}

BOOL sub_1AE76CCC0(float *a1, float *a2)
{
  v2 = (a2 - a1) >> 3;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v6 = a1[3];
      v7 = a1[1];
      v8 = *(a2 - 1);
      if (v6 > v7)
      {
        v9 = *a1;
        if (v8 <= v6)
        {
          *a1 = a1[2];
          a1[2] = v9;
          a1[1] = v6;
          a1[3] = v7;
          v32 = *(a2 - 1);
          if (v32 > v7)
          {
            a1[2] = *(a2 - 2);
            *(a2 - 2) = v9;
            a1[3] = v32;
            *(a2 - 1) = v7;
          }
        }

        else
        {
          *a1 = *(a2 - 2);
          *(a2 - 2) = v9;
          a1[1] = v8;
          *(a2 - 1) = v7;
        }

        return 1;
      }

      if (v8 <= v6)
      {
        return 1;
      }

      v22 = *(a1 + 2);
      a1[2] = *(a2 - 2);
      *(a2 - 2) = v22;
      a1[3] = v8;
      *(a2 - 1) = v6;
      v23 = a1[3];
      v24 = a1[1];
      if (v23 <= v24)
      {
        return 1;
      }

      v25 = *a1;
      *a1 = a1[2];
      *(a1 + 2) = v25;
LABEL_52:
      a1[1] = v23;
      a1[3] = v24;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_13;
      }

      sub_1AE76CAE4(a1, a1 + 2, a1 + 4, a1 + 6, a2 - 2);
      return 1;
    }

    v16 = a1 + 3;
    v17 = a1[3];
    v18 = a1 + 1;
    v19 = a1[1];
    v20 = a1[5];
    if (v17 <= v19)
    {
      if (v20 <= v17)
      {
        goto LABEL_48;
      }

      v29 = *(a1 + 2);
      v30 = *(a1 + 4);
      *(a1 + 2) = v30;
      *(a1 + 4) = v29;
      a1[3] = v20;
      a1[5] = v17;
      if (v20 <= v19)
      {
        goto LABEL_47;
      }

      v31 = *a1;
      *a1 = v30;
      a1[2] = v31;
    }

    else
    {
      v21 = *a1;
      if (v20 <= v17)
      {
        *a1 = a1[2];
        a1[2] = v21;
        a1[1] = v17;
        a1[3] = v19;
        if (v20 <= v19)
        {
          goto LABEL_48;
        }

        a1[2] = a1[4];
        a1[4] = v21;
        v18 = a1 + 3;
      }

      else
      {
        *a1 = a1[4];
        a1[4] = v21;
      }

      v16 = a1 + 5;
      v17 = v19;
    }

    *v18 = v20;
    *v16 = v19;
LABEL_47:
    v20 = v17;
LABEL_48:
    v42 = *(a2 - 1);
    if (v42 <= v20)
    {
      return 1;
    }

    v43 = *(a1 + 4);
    a1[4] = *(a2 - 2);
    *(a2 - 2) = v43;
    a1[5] = v42;
    *(a2 - 1) = v20;
    v23 = a1[5];
    v44 = a1[3];
    if (v23 <= v44)
    {
      return 1;
    }

    v45 = *(a1 + 2);
    v46 = *(a1 + 4);
    *(a1 + 2) = v46;
    *(a1 + 4) = v45;
    a1[3] = v23;
    a1[5] = v44;
    v24 = a1[1];
    if (v23 <= v24)
    {
      return 1;
    }

    v47 = *a1;
    *a1 = v46;
    a1[2] = v47;
    goto LABEL_52;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v3 = *(a2 - 1);
    v4 = a1[1];
    if (v3 > v4)
    {
      v5 = *a1;
      *a1 = *(a2 - 2);
      *(a2 - 2) = v5;
      a1[1] = v3;
      *(a2 - 1) = v4;
    }

    return 1;
  }

LABEL_13:
  v10 = a1[3];
  v11 = a1 + 1;
  v12 = a1[1];
  v13 = a1 + 5;
  v14 = a1[5];
  if (v10 > v12)
  {
    v15 = *a1;
    if (v14 <= v10)
    {
      *a1 = a1[2];
      a1[2] = v15;
      a1[1] = v10;
      a1[3] = v12;
      if (v14 <= v12)
      {
        goto LABEL_33;
      }

      a1[2] = a1[4];
      a1[4] = v15;
      v11 = a1 + 3;
    }

    else
    {
      *a1 = a1[4];
      a1[4] = v15;
    }

    goto LABEL_32;
  }

  if (v14 > v10)
  {
    v26 = *(a1 + 2);
    v27 = *(a1 + 4);
    *(a1 + 2) = v27;
    *(a1 + 4) = v26;
    a1[3] = v14;
    a1[5] = v10;
    if (v14 > v12)
    {
      v28 = *a1;
      *a1 = v27;
      a1[2] = v28;
      v13 = a1 + 3;
LABEL_32:
      *v11 = v14;
      *v13 = v12;
    }
  }

LABEL_33:
  v33 = a1 + 6;
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v34 = 0;
  v35 = 0;
  v36 = a1 + 4;
  while (1)
  {
    v38 = v33[1];
    if (v38 > v36[1])
    {
      v39 = *v33;
      v40 = v34;
      do
      {
        v41 = (a1 + v40);
        v41[6] = *(a1 + v40 + 16);
        v41[7] = *(a1 + v40 + 20);
        if (v40 == -16)
        {
          v37 = a1;
          goto LABEL_36;
        }

        v40 -= 8;
      }

      while (v38 > v41[3]);
      v37 = a1 + v40 + 24;
LABEL_36:
      *v37 = v39;
      *(v37 + 4) = v38;
      if (++v35 == 8)
      {
        return v33 + 2 == a2;
      }
    }

    v36 = v33;
    v34 += 8;
    v33 += 2;
    if (v33 == a2)
    {
      return 1;
    }
  }
}

void sub_1AE76D080(void *a1)
{
  sub_1AE6A87B0(a1);

  JUMPOUT(0x1B2706400);
}

__CFDictionary *sub_1AE76D0BC(uint64_t a1)
{
  alloc = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v291 = Mutable;
  v3 = strlen(language_modeling::v1::kLocaleIdentifierOptionKey);
  if (v3 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_622;
  }

  v4 = v3;
  if (v3 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v3;
  if (v3)
  {
    memmove(&__dst, language_modeling::v1::kLocaleIdentifierOptionKey, v3);
  }

  __dst.__r_.__value_.__s.__data_[v4] = 0;
  v5 = sub_1AE63148C(a1, &__dst.__r_.__value_.__l.__data_);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  v6 = (a1 + 8);
  if ((a1 + 8) != v5)
  {
    if (*(v5 + 20) != 1)
    {
      goto LABEL_623;
    }

    if (*(v5 + 79) < 0)
    {
      sub_1AE5DBF1C(&__dst, v5[7], v5[8]);
    }

    else
    {
      __dst = *(v5 + 7);
    }

    v7 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      p_dst = __dst.__r_.__value_.__r.__words[0];
      if (__dst.__r_.__value_.__l.__size_ >= 3)
      {
        size = 3;
      }

      else
      {
        size = __dst.__r_.__value_.__l.__size_;
      }
    }

    else
    {
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) >= 3)
      {
        size = 3;
      }

      else
      {
        size = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
      }

      p_dst = &__dst;
    }

    v6 = (a1 + 8);
    v10 = memcmp(p_dst, "ars", size);
    if (size >= 3 && !v10)
    {
      std::string::replace(&__dst, 0, 3uLL, "ar", 2uLL);
      v7 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
    }

    v11 = kLMLanguageModelLocaleKey;
    if ((v7 & 0x80u) == 0)
    {
      v12 = &__dst;
    }

    else
    {
      v12 = __dst.__r_.__value_.__r.__words[0];
    }

    if (v12)
    {
      if ((v7 & 0x80u) == 0)
      {
        v13 = v7;
      }

      else
      {
        v13 = __dst.__r_.__value_.__l.__size_;
      }

      v14 = CFStringCreateWithBytes(0, v12, v13, 0x8000100u, 0);
      cf[0] = v14;
      if (!v14)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x1B2705EB0](exception, "Could not construct");
        __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }
    }

    else
    {
      v14 = 0;
      cf[0] = 0;
    }

    CFDictionaryAddValue(Mutable, v11, v14);
    if (cf[0])
    {
      CFRelease(cf[0]);
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }
  }

  v16 = strlen(language_modeling::v1::kLanguageLocalesOptionKey);
  if (v16 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_622;
  }

  v17 = v16;
  if (v16 >= 0x17)
  {
    operator new();
  }

  v293 = v16;
  if (v16)
  {
    memmove(&v292, language_modeling::v1::kLanguageLocalesOptionKey, v16);
  }

  *(&v292 + v17) = 0;
  v18 = kLMLanguageLocalesKey;
  v19 = sub_1AE63148C(a1, &v292);
  if (v6 != v19)
  {
    if (*(v19 + 20) != 1)
    {
      sub_1AE631594();
    }

    if (*(v19 + 79) < 0)
    {
      sub_1AE5DBF1C(cf, v19[7], v19[8]);
    }

    else
    {
      *cf = *(v19 + 7);
      v296 = v19[9];
    }

    *(&__p.__r_.__value_.__s + 23) = 1;
    LOWORD(__p.__r_.__value_.__l.__data_) = 44;
    sub_1AE69448C(&__dst.__r_.__value_.__l.__data_, cf, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v296) < 0)
    {
      operator delete(cf[0]);
    }

    cf[0] = 0;
    cf[1] = 0;
    v296 = 0;
    v21 = __dst.__r_.__value_.__l.__size_;
    v20 = __dst.__r_.__value_.__r.__words[0];
    if (__dst.__r_.__value_.__r.__words[0] != __dst.__r_.__value_.__l.__size_)
    {
      v22 = 0;
      do
      {
        if (*(v20 + 23) < 0)
        {
          sub_1AE5DBF1C(&__p, *v20, *(v20 + 8));
        }

        else
        {
          v23 = *v20;
          __p.__r_.__value_.__r.__words[2] = *(v20 + 16);
          *&__p.__r_.__value_.__l.__data_ = v23;
        }

        v24 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          p_p = __p.__r_.__value_.__r.__words[0];
          if (__p.__r_.__value_.__l.__size_ >= 3)
          {
            v25 = 3;
          }

          else
          {
            v25 = __p.__r_.__value_.__l.__size_;
          }
        }

        else
        {
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) >= 3)
          {
            v25 = 3;
          }

          else
          {
            v25 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          p_p = &__p;
        }

        v27 = memcmp(p_p, "ars", v25);
        v28 = v25 >= 3 && v27 == 0;
        if (v28)
        {
          std::string::replace(&__p, 0, 3uLL, "ar", 2uLL);
          v24 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        if ((v24 & 0x80u) == 0)
        {
          v29 = &__p;
        }

        else
        {
          v29 = __p.__r_.__value_.__r.__words[0];
        }

        if (v29)
        {
          if ((v24 & 0x80u) == 0)
          {
            v30 = v24;
          }

          else
          {
            v30 = __p.__r_.__value_.__l.__size_;
          }

          v31 = CFStringCreateWithBytes(0, v29, v30, 0x8000100u, 0);
          v297 = v31;
          if (!v31)
          {
            v285 = __cxa_allocate_exception(0x10uLL);
            MEMORY[0x1B2705EB0](v285, "Could not construct");
            __cxa_throw(v285, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
          }
        }

        else
        {
          v31 = 0;
          v297 = 0;
        }

        if (v22 >= v296)
        {
          v22 = sub_1AE70C960(cf, &v297);
          cf[1] = v22;
          if (v297)
          {
            CFRelease(v297);
          }
        }

        else
        {
          *v22++ = v31;
          cf[1] = v22;
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v20 += 24;
      }

      while (v20 != v21);
      if (v22 != cf[0])
      {
        if (((v22 - cf[0]) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1AE5CBB70();
      }

      v6 = (a1 + 8);
    }

    v32 = CFArrayCreate(0, 0, 0, MEMORY[0x1E695E9C0]);
    if (!v32)
    {
      v287 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x1B2705EB0](v287, "Could not construct");
      __cxa_throw(v287, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    __p.__r_.__value_.__r.__words[0] = v32;
    CFDictionarySetValue(Mutable, v18, v32);
    CFRelease(v32);
    v33 = cf[0];
    if (cf[0])
    {
      for (i = cf[1]; i != v33; i -= 8)
      {
        v36 = *(i - 1);
        v35 = v36;
        if (v36)
        {
          CFRelease(v35);
        }
      }

      operator delete(v33);
    }

    v37 = __dst.__r_.__value_.__r.__words[0];
    if (__dst.__r_.__value_.__r.__words[0])
    {
      v38 = __dst.__r_.__value_.__l.__size_;
      v39 = __dst.__r_.__value_.__r.__words[0];
      if (__dst.__r_.__value_.__l.__size_ != __dst.__r_.__value_.__r.__words[0])
      {
        do
        {
          v40 = *(v38 - 1);
          v38 -= 3;
          if (v40 < 0)
          {
            operator delete(*v38);
          }
        }

        while (v38 != v37);
        v39 = __dst.__r_.__value_.__r.__words[0];
      }

      __dst.__r_.__value_.__l.__size_ = v37;
      operator delete(v39);
    }
  }

  if (v293 < 0)
  {
    operator delete(v292);
  }

  v41 = strlen(language_modeling::v1::kEnableMultilingualDynamicOptionKey);
  if (v41 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_1AE5DB4F0();
  }

  v42 = v41;
  if (v41 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v41;
  if (v41)
  {
    memmove(&__dst, language_modeling::v1::kEnableMultilingualDynamicOptionKey, v41);
  }

  __dst.__r_.__value_.__s.__data_[v42] = 0;
  v43 = kLMEnableMultilingualDynamicKey;
  v44 = sub_1AE63148C(a1, &__dst.__r_.__value_.__l.__data_);
  v45 = MEMORY[0x1E695E4C0];
  if (v6 != v44)
  {
    if (*(v44 + 20))
    {
      sub_1AE631594();
    }

    v46 = MEMORY[0x1E695E4D0];
    if ((v44[7] & 1) == 0)
    {
      v46 = MEMORY[0x1E695E4C0];
    }

    v47 = *v46;
    cf[0] = v47;
    CFDictionaryAddValue(v291, v43, v47);
    if (v47)
    {
      CFRelease(v47);
    }
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  v48 = strlen(language_modeling::v1::kMultilingualDynamicSeparateLexiconPerLocaleOptionKey);
  if (v48 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_1AE5DB4F0();
  }

  v49 = v48;
  if (v48 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v48;
  if (v48)
  {
    memmove(&__dst, language_modeling::v1::kMultilingualDynamicSeparateLexiconPerLocaleOptionKey, v48);
  }

  __dst.__r_.__value_.__s.__data_[v49] = 0;
  v50 = kLMMultilingualDynamicSeparateLexiconPerLocaleKey;
  v51 = sub_1AE63148C(a1, &__dst.__r_.__value_.__l.__data_);
  if (v6 != v51)
  {
    if (*(v51 + 20))
    {
      sub_1AE631594();
    }

    v52 = MEMORY[0x1E695E4D0];
    if ((v51[7] & 1) == 0)
    {
      v52 = v45;
    }

    v53 = *v52;
    cf[0] = v53;
    CFDictionaryAddValue(v291, v50, v53);
    if (v53)
    {
      CFRelease(v53);
    }
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  v54 = strlen(language_modeling::v1::kIsMultilingualModelOptionKey);
  if (v54 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_1AE5DB4F0();
  }

  v55 = v54;
  if (v54 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v54;
  if (v54)
  {
    memmove(&__dst, language_modeling::v1::kIsMultilingualModelOptionKey, v54);
  }

  __dst.__r_.__value_.__s.__data_[v55] = 0;
  v56 = kLMLanguageModelIsMultilingualModelKey;
  v57 = sub_1AE63148C(a1, &__dst.__r_.__value_.__l.__data_);
  if (v6 != v57)
  {
    if (*(v57 + 20))
    {
      sub_1AE631594();
    }

    v58 = MEMORY[0x1E695E4D0];
    if ((v57[7] & 1) == 0)
    {
      v58 = v45;
    }

    v59 = *v58;
    cf[0] = v59;
    CFDictionaryAddValue(v291, v56, v59);
    if (v59)
    {
      CFRelease(v59);
    }
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  v60 = strlen(language_modeling::v1::kIsSiriModelOptionKey);
  if (v60 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_1AE5DB4F0();
  }

  v61 = v60;
  if (v60 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v60;
  if (v60)
  {
    memmove(&__dst, language_modeling::v1::kIsSiriModelOptionKey, v60);
  }

  __dst.__r_.__value_.__s.__data_[v61] = 0;
  v62 = kLMLanguageModelIsSiriModelKey;
  v63 = sub_1AE63148C(a1, &__dst.__r_.__value_.__l.__data_);
  if (v6 != v63)
  {
    if (*(v63 + 20))
    {
      sub_1AE631594();
    }

    v64 = MEMORY[0x1E695E4D0];
    if ((v63[7] & 1) == 0)
    {
      v64 = v45;
    }

    v65 = *v64;
    cf[0] = v65;
    CFDictionaryAddValue(v291, v62, v65);
    if (v65)
    {
      CFRelease(v65);
    }
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  v66 = strlen(language_modeling::v1::kEnableAdaptationOptionKey);
  if (v66 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_1AE5DB4F0();
  }

  v67 = v66;
  if (v66 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v66;
  if (v66)
  {
    memmove(&__dst, language_modeling::v1::kEnableAdaptationOptionKey, v66);
  }

  __dst.__r_.__value_.__s.__data_[v67] = 0;
  v68 = kLMLanguageModelAdaptationEnabledKey;
  v69 = sub_1AE63148C(a1, &__dst.__r_.__value_.__l.__data_);
  if (v6 != v69)
  {
    if (*(v69 + 20))
    {
      sub_1AE631594();
    }

    v70 = MEMORY[0x1E695E4D0];
    if ((v69[7] & 1) == 0)
    {
      v70 = v45;
    }

    v71 = *v70;
    cf[0] = v71;
    CFDictionaryAddValue(v291, v68, v71);
    if (v71)
    {
      CFRelease(v71);
    }
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  v72 = strlen(language_modeling::v1::kEnableNeuralLanguageModelOptionKey);
  if (v72 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_1AE5DB4F0();
  }

  v73 = v72;
  if (v72 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v72;
  if (v72)
  {
    memmove(&__dst, language_modeling::v1::kEnableNeuralLanguageModelOptionKey, v72);
  }

  __dst.__r_.__value_.__s.__data_[v73] = 0;
  v74 = kLMLanguageModelUseMontrealKey;
  v75 = sub_1AE63148C(a1, &__dst.__r_.__value_.__l.__data_);
  if (v6 != v75)
  {
    if (*(v75 + 20))
    {
      sub_1AE631594();
    }

    v76 = MEMORY[0x1E695E4D0];
    if ((v75[7] & 1) == 0)
    {
      v76 = v45;
    }

    v77 = *v76;
    cf[0] = v77;
    CFDictionaryAddValue(v291, v74, v77);
    if (v77)
    {
      CFRelease(v77);
    }
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  v78 = strlen(language_modeling::v1::kDynamicLexiconNameOptionKey);
  if (v78 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_1AE5DB4F0();
  }

  v79 = v78;
  if (v78 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v78;
  if (v78)
  {
    memmove(&__dst, language_modeling::v1::kDynamicLexiconNameOptionKey, v78);
  }

  __dst.__r_.__value_.__s.__data_[v79] = 0;
  v80 = kLMLanguageModelDynamicLexiconNameKey;
  v81 = sub_1AE63148C(a1, &__dst.__r_.__value_.__l.__data_);
  if (v6 != v81)
  {
    if (*(v81 + 20) != 1)
    {
      sub_1AE631594();
    }

    v84 = v81[7];
    v82 = v81 + 7;
    v83 = v84;
    v85 = *(v82 + 23);
    if (v85 >= 0)
    {
      v86 = v82;
    }

    else
    {
      v86 = v83;
    }

    if (v86)
    {
      if (v85 >= 0)
      {
        v87 = *(v82 + 23);
      }

      else
      {
        v87 = v82[1];
      }

      v88 = CFStringCreateWithBytes(0, v86, v87, 0x8000100u, 0);
      cf[0] = v88;
      if (!v88)
      {
        v89 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x1B2705EB0](v89, "Could not construct");
        __cxa_throw(v89, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }
    }

    else
    {
      v88 = 0;
      cf[0] = 0;
    }

    CFDictionaryAddValue(v291, v80, v88);
    if (cf[0])
    {
      CFRelease(cf[0]);
    }
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  v90 = strlen(language_modeling::v1::kMultilingualDynamicLexiconNameOptionKey);
  if (v90 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_1AE5DB4F0();
  }

  v91 = v90;
  if (v90 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v90;
  if (v90)
  {
    memmove(&__dst, language_modeling::v1::kMultilingualDynamicLexiconNameOptionKey, v90);
  }

  __dst.__r_.__value_.__s.__data_[v91] = 0;
  v92 = kLMLanguageModelMultilingualDynamicLexiconNameKey;
  v93 = sub_1AE63148C(a1, &__dst.__r_.__value_.__l.__data_);
  if (v6 != v93)
  {
    if (*(v93 + 20) != 1)
    {
      sub_1AE631594();
    }

    v96 = v93[7];
    v94 = v93 + 7;
    v95 = v96;
    v97 = *(v94 + 23);
    if (v97 >= 0)
    {
      v98 = v94;
    }

    else
    {
      v98 = v95;
    }

    if (v98)
    {
      if (v97 >= 0)
      {
        v99 = *(v94 + 23);
      }

      else
      {
        v99 = v94[1];
      }

      v100 = CFStringCreateWithBytes(0, v98, v99, 0x8000100u, 0);
      cf[0] = v100;
      if (!v100)
      {
        v101 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x1B2705EB0](v101, "Could not construct");
        __cxa_throw(v101, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }
    }

    else
    {
      v100 = 0;
      cf[0] = 0;
    }

    CFDictionaryAddValue(v291, v92, v100);
    if (cf[0])
    {
      CFRelease(cf[0]);
    }
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  v102 = strlen(language_modeling::v1::kCustomResourceDirectoryPathOptionKey);
  if (v102 > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_622:
    sub_1AE5DB4F0();
  }

  v103 = v102;
  if (v102 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v102;
  if (v102)
  {
    memmove(&__dst, language_modeling::v1::kCustomResourceDirectoryPathOptionKey, v102);
  }

  __dst.__r_.__value_.__s.__data_[v103] = 0;
  v104 = sub_1AE63148C(a1, &__dst.__r_.__value_.__l.__data_);
  v105 = v104;
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
    if (v6 == v105)
    {
      goto LABEL_291;
    }
  }

  else if (v6 == v104)
  {
    goto LABEL_291;
  }

  if (*(v105 + 20) != 1)
  {
LABEL_623:
    sub_1AE631594();
  }

  v108 = v105[7];
  v107 = v105 + 7;
  v106 = v108;
  v109 = *(v107 + 23);
  if (v109 >= 0)
  {
    v110 = v107;
  }

  else
  {
    v110 = v106;
  }

  if (v110)
  {
    if (v109 >= 0)
    {
      v111 = *(v107 + 23);
    }

    else
    {
      v111 = v107[1];
    }

    v110 = CFStringCreateWithBytes(0, v110, v111, 0x8000100u, 0);
    cf[0] = v110;
    if (!v110)
    {
      v112 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x1B2705EB0](v112, "Could not construct");
      __cxa_throw(v112, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  else
  {
    cf[0] = 0;
  }

  ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(alloc, v110, @",");
  __p.__r_.__value_.__r.__words[0] = ArrayBySeparatingStrings;
  if (ArrayBySeparatingStrings)
  {
    v114 = CFGetTypeID(ArrayBySeparatingStrings);
    if (v114 != CFArrayGetTypeID())
    {
      v289 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x1B2705EB0](v289, "Could not construct");
      __cxa_throw(v289, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v115 = __p.__r_.__value_.__r.__words[0];
    memset(&__dst, 0, sizeof(__dst));
    if (__p.__r_.__value_.__r.__words[0])
    {
      Count = CFArrayGetCount(__p.__r_.__value_.__l.__data_);
      v117 = Count;
      v118 = __p.__r_.__value_.__r.__words[0];
      if (__p.__r_.__value_.__r.__words[0])
      {
        v119 = CFArrayGetCount(__p.__r_.__value_.__l.__data_);
        if (v117)
        {
LABEL_266:
          v28 = v115 == v118;
          v120 = v45;
          v121 = 0;
          if (!v28)
          {
            v282 = 0;
            while (1)
            {
              sub_1AE746D80(&v292, v115, v282);
              v283 = MEMORY[0x1B27059C0](0, v292, 0, 1, 0);
              v284 = v283;
              v297 = v283;
              if (!v283)
              {
                break;
              }

              if (v121 >= __dst.__r_.__value_.__r.__words[2])
              {
                v121 = sub_1AE7622C0(&__dst, &v297);
              }

              else
              {
                CFRetain(v283);
                *v121++ = v284;
              }

              v45 = v120;
              __dst.__r_.__value_.__l.__size_ = v121;
              if (v297)
              {
                CFRelease(v297);
              }

              if (v292)
              {
                CFRelease(v292);
              }

              if (v117 == ++v282)
              {
                goto LABEL_282;
              }
            }

LABEL_621:
            v286 = __cxa_allocate_exception(0x10uLL);
            MEMORY[0x1B2705EB0](v286, "Could not construct");
            __cxa_throw(v286, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
          }

          v122 = 0;
          do
          {
            if (v119 == v122)
            {
              break;
            }

            sub_1AE746D80(&v292, v115, v122);
            v123 = MEMORY[0x1B27059C0](0, v292, 0, 1, 0);
            v124 = v123;
            v297 = v123;
            if (!v123)
            {
              goto LABEL_621;
            }

            if (v121 >= __dst.__r_.__value_.__r.__words[2])
            {
              v121 = sub_1AE7622C0(&__dst, &v297);
            }

            else
            {
              CFRetain(v123);
              *v121++ = v124;
            }

            v45 = v120;
            __dst.__r_.__value_.__l.__size_ = v121;
            if (v297)
            {
              CFRelease(v297);
            }

            if (v292)
            {
              CFRelease(v292);
            }

            ++v122;
          }

          while (v117 != v122);
          goto LABEL_282;
        }
      }

      else
      {
        v119 = 0;
        if (Count)
        {
          goto LABEL_266;
        }
      }
    }

    v121 = 0;
  }

  else
  {
    v121 = 0;
    memset(&__dst, 0, sizeof(__dst));
  }

LABEL_282:
  v125 = kLMLanguageModelCustomResourceDirectoryKey;
  v126 = sub_1AE5D28BC(&__dst);
  v292 = v126;
  CFDictionarySetValue(v291, v125, v126);
  v6 = (a1 + 8);
  CFRelease(v126);
  v127 = __dst.__r_.__value_.__r.__words[0];
  if (__dst.__r_.__value_.__r.__words[0])
  {
    while (v121 != v127)
    {
      v129 = *--v121;
      v128 = v129;
      if (v129)
      {
        CFRelease(v128);
      }
    }

    operator delete(v127);
  }

  if (__p.__r_.__value_.__r.__words[0])
  {
    CFRelease(__p.__r_.__value_.__l.__data_);
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
  }

LABEL_291:
  v130 = strlen(language_modeling::v1::kAddSystemResourcesOptionKey);
  if (v130 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_1AE5DB4F0();
  }

  v131 = v130;
  if (v130 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v130;
  if (v130)
  {
    memmove(&__dst, language_modeling::v1::kAddSystemResourcesOptionKey, v130);
  }

  __dst.__r_.__value_.__s.__data_[v131] = 0;
  v132 = kLMLanguageModelAddSystemToCustomResourcesKey;
  v133 = sub_1AE63148C(a1, &__dst.__r_.__value_.__l.__data_);
  if (v6 != v133)
  {
    if (*(v133 + 20))
    {
      sub_1AE631594();
    }

    v134 = MEMORY[0x1E695E4D0];
    if ((v133[7] & 1) == 0)
    {
      v134 = v45;
    }

    v135 = *v134;
    cf[0] = v135;
    CFDictionaryAddValue(v291, v132, v135);
    if (v135)
    {
      CFRelease(v135);
    }
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  v136 = strlen(language_modeling::v1::kIgnoreSystemLanguageModelsOptionKey);
  if (v136 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_1AE5DB4F0();
  }

  v137 = v136;
  if (v136 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v136;
  if (v136)
  {
    memmove(&__dst, language_modeling::v1::kIgnoreSystemLanguageModelsOptionKey, v136);
  }

  __dst.__r_.__value_.__s.__data_[v137] = 0;
  v138 = kLMLanguageModelIgnoreSystemLanguageModelsKey;
  v139 = sub_1AE63148C(a1, &__dst.__r_.__value_.__l.__data_);
  if (v6 != v139)
  {
    if (*(v139 + 20))
    {
      sub_1AE631594();
    }

    v140 = MEMORY[0x1E695E4D0];
    if ((v139[7] & 1) == 0)
    {
      v140 = v45;
    }

    v141 = *v140;
    cf[0] = v141;
    CFDictionaryAddValue(v291, v138, v141);
    if (v141)
    {
      CFRelease(v141);
    }
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  v142 = strlen(language_modeling::v1::kCustomDynamicResourceDirectoryPathOptionKey);
  if (v142 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_1AE5DB4F0();
  }

  v143 = v142;
  if (v142 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v142;
  if (v142)
  {
    memmove(&__dst, language_modeling::v1::kCustomDynamicResourceDirectoryPathOptionKey, v142);
  }

  __dst.__r_.__value_.__s.__data_[v143] = 0;
  v144 = kLMLanguageModelCustomDynamicResourceDirectoryKey;
  v145 = sub_1AE63148C(a1, &__dst.__r_.__value_.__l.__data_);
  if (v6 != v145)
  {
    if (*(v145 + 20) != 1)
    {
      sub_1AE631594();
    }

    v148 = v145[7];
    v146 = v145 + 7;
    v147 = v148;
    v149 = *(v146 + 23);
    if (v149 >= 0)
    {
      v150 = v146;
    }

    else
    {
      v150 = v147;
    }

    if (v149 >= 0)
    {
      v151 = *(v146 + 23);
    }

    else
    {
      v151 = v146[1];
    }

    v152 = MEMORY[0x1B2705990](0, v150, v151, 1, 0);
    cf[0] = v152;
    if (!v152)
    {
      v288 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x1B2705EB0](v288, "Could not construct");
      __cxa_throw(v288, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    CFDictionaryAddValue(v291, v144, v152);
    if (cf[0])
    {
      CFRelease(cf[0]);
    }
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  v153 = strlen(language_modeling::v1::kPreheatFSTOptionKey);
  if (v153 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_1AE5DB4F0();
  }

  v154 = v153;
  if (v153 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v153;
  if (v153)
  {
    memmove(&__dst, language_modeling::v1::kPreheatFSTOptionKey, v153);
  }

  __dst.__r_.__value_.__s.__data_[v154] = 0;
  v155 = kLMLanguageModelGenerateFstPrimingTokenKey;
  v156 = sub_1AE63148C(a1, &__dst.__r_.__value_.__l.__data_);
  if (v6 != v156)
  {
    if (*(v156 + 20))
    {
      sub_1AE631594();
    }

    v157 = MEMORY[0x1E695E4D0];
    if ((v156[7] & 1) == 0)
    {
      v157 = v45;
    }

    v158 = *v157;
    cf[0] = v158;
    CFDictionaryAddValue(v291, v155, v158);
    if (v158)
    {
      CFRelease(v158);
    }
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  v159 = strlen(language_modeling::v1::kExcludeMobileAssetsKey);
  if (v159 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_1AE5DB4F0();
  }

  v160 = v159;
  if (v159 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v159;
  if (v159)
  {
    memmove(&__dst, language_modeling::v1::kExcludeMobileAssetsKey, v159);
  }

  __dst.__r_.__value_.__s.__data_[v160] = 0;
  v161 = kLMLanguageModelShouldExcludeMobileAssetsKey;
  v162 = sub_1AE63148C(a1, &__dst.__r_.__value_.__l.__data_);
  if (v6 != v162)
  {
    if (*(v162 + 20))
    {
      sub_1AE631594();
    }

    v163 = MEMORY[0x1E695E4D0];
    if ((v162[7] & 1) == 0)
    {
      v163 = v45;
    }

    v164 = *v163;
    cf[0] = v164;
    CFDictionaryAddValue(v291, v161, v164);
    if (v164)
    {
      CFRelease(v164);
    }
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  v165 = strlen(language_modeling::v1::kDisableDynamicLanguageModelsKey);
  if (v165 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_1AE5DB4F0();
  }

  v166 = v165;
  if (v165 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v165;
  if (v165)
  {
    memmove(&__dst, language_modeling::v1::kDisableDynamicLanguageModelsKey, v165);
  }

  __dst.__r_.__value_.__s.__data_[v166] = 0;
  v167 = kLMLanguageModelDisableDynamicLanguageModelsKey;
  v168 = sub_1AE63148C(a1, &__dst.__r_.__value_.__l.__data_);
  if (v6 != v168)
  {
    if (*(v168 + 20))
    {
      sub_1AE631594();
    }

    v169 = MEMORY[0x1E695E4D0];
    if ((v168[7] & 1) == 0)
    {
      v169 = v45;
    }

    v170 = *v169;
    cf[0] = v170;
    CFDictionaryAddValue(v291, v167, v170);
    if (v170)
    {
      CFRelease(v170);
    }
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  v171 = strlen(language_modeling::v1::kCacheStaticPredictionsForEmptyContextKey);
  if (v171 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_1AE5DB4F0();
  }

  v172 = v171;
  if (v171 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v171;
  if (v171)
  {
    memmove(&__dst, language_modeling::v1::kCacheStaticPredictionsForEmptyContextKey, v171);
  }

  __dst.__r_.__value_.__s.__data_[v172] = 0;
  v173 = language_modeling::v1::kCacheStaticPredictionsForEmptyContextKey;
  v174 = strlen(language_modeling::v1::kCacheStaticPredictionsForEmptyContextKey);
  if (language_modeling::v1::kCacheStaticPredictionsForEmptyContextKey)
  {
    v173 = CFStringCreateWithBytes(0, language_modeling::v1::kCacheStaticPredictionsForEmptyContextKey, v174, 0x8000100u, 0);
    __p.__r_.__value_.__r.__words[0] = v173;
    if (!v173)
    {
      v175 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x1B2705EB0](v175, "Could not construct");
      __cxa_throw(v175, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  else
  {
    __p.__r_.__value_.__r.__words[0] = 0;
  }

  v176 = sub_1AE63148C(a1, &__dst.__r_.__value_.__l.__data_);
  if (v6 != v176)
  {
    if (*(v176 + 20))
    {
      sub_1AE631594();
    }

    v177 = MEMORY[0x1E695E4D0];
    if ((v176[7] & 1) == 0)
    {
      v177 = v45;
    }

    v178 = *v177;
    cf[0] = v178;
    CFDictionaryAddValue(v291, v173, v178);
    if (v178)
    {
      CFRelease(v178);
    }

    v173 = __p.__r_.__value_.__r.__words[0];
  }

  if (v173)
  {
    CFRelease(v173);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  v179 = strlen(language_modeling::v1::kLanguageModelForCompletionsAndPredictionsKey);
  if (v179 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_1AE5DB4F0();
  }

  v180 = v179;
  if (v179 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v179;
  if (v179)
  {
    memmove(&__dst, language_modeling::v1::kLanguageModelForCompletionsAndPredictionsKey, v179);
  }

  __dst.__r_.__value_.__s.__data_[v180] = 0;
  v181 = language_modeling::v1::kLanguageModelForCompletionsAndPredictionsKey;
  v182 = strlen(language_modeling::v1::kLanguageModelForCompletionsAndPredictionsKey);
  if (language_modeling::v1::kLanguageModelForCompletionsAndPredictionsKey)
  {
    v181 = CFStringCreateWithBytes(0, language_modeling::v1::kLanguageModelForCompletionsAndPredictionsKey, v182, 0x8000100u, 0);
    __p.__r_.__value_.__r.__words[0] = v181;
    if (!v181)
    {
      v183 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x1B2705EB0](v183, "Could not construct");
      __cxa_throw(v183, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  else
  {
    __p.__r_.__value_.__r.__words[0] = 0;
  }

  v184 = sub_1AE63148C(a1, &__dst.__r_.__value_.__l.__data_);
  if (v6 != v184)
  {
    if (*(v184 + 20) != 1)
    {
      sub_1AE631594();
    }

    v187 = v184[7];
    v185 = v184 + 7;
    v186 = v187;
    v188 = *(v185 + 23);
    if (v188 >= 0)
    {
      v189 = v185;
    }

    else
    {
      v189 = v186;
    }

    if (v189)
    {
      if (v188 >= 0)
      {
        v190 = *(v185 + 23);
      }

      else
      {
        v190 = v185[1];
      }

      v191 = CFStringCreateWithBytes(0, v189, v190, 0x8000100u, 0);
      cf[0] = v191;
      if (!v191)
      {
        v192 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x1B2705EB0](v192, "Could not construct");
        __cxa_throw(v192, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }
    }

    else
    {
      v191 = 0;
      cf[0] = 0;
    }

    CFDictionaryAddValue(v291, v181, v191);
    if (cf[0])
    {
      CFRelease(cf[0]);
    }

    v181 = __p.__r_.__value_.__r.__words[0];
  }

  if (v181)
  {
    CFRelease(v181);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  v193 = strlen(language_modeling::v1::kLanguageModelForConditionalProbabilityKey);
  if (v193 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_1AE5DB4F0();
  }

  v194 = v193;
  if (v193 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v193;
  if (v193)
  {
    memmove(&__dst, language_modeling::v1::kLanguageModelForConditionalProbabilityKey, v193);
  }

  __dst.__r_.__value_.__s.__data_[v194] = 0;
  v195 = language_modeling::v1::kLanguageModelForConditionalProbabilityKey;
  v196 = strlen(language_modeling::v1::kLanguageModelForConditionalProbabilityKey);
  if (language_modeling::v1::kLanguageModelForConditionalProbabilityKey)
  {
    v195 = CFStringCreateWithBytes(0, language_modeling::v1::kLanguageModelForConditionalProbabilityKey, v196, 0x8000100u, 0);
    __p.__r_.__value_.__r.__words[0] = v195;
    if (!v195)
    {
      v197 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x1B2705EB0](v197, "Could not construct");
      __cxa_throw(v197, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  else
  {
    __p.__r_.__value_.__r.__words[0] = 0;
  }

  v198 = sub_1AE63148C(a1, &__dst.__r_.__value_.__l.__data_);
  if (v6 != v198)
  {
    if (*(v198 + 20) != 1)
    {
      sub_1AE631594();
    }

    v201 = v198[7];
    v199 = v198 + 7;
    v200 = v201;
    v202 = *(v199 + 23);
    if (v202 >= 0)
    {
      v203 = v199;
    }

    else
    {
      v203 = v200;
    }

    if (v203)
    {
      if (v202 >= 0)
      {
        v204 = *(v199 + 23);
      }

      else
      {
        v204 = v199[1];
      }

      v205 = CFStringCreateWithBytes(0, v203, v204, 0x8000100u, 0);
      cf[0] = v205;
      if (!v205)
      {
        v206 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x1B2705EB0](v206, "Could not construct");
        __cxa_throw(v206, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }
    }

    else
    {
      v205 = 0;
      cf[0] = 0;
    }

    CFDictionaryAddValue(v291, v195, v205);
    if (cf[0])
    {
      CFRelease(cf[0]);
    }

    v195 = __p.__r_.__value_.__r.__words[0];
  }

  if (v195)
  {
    CFRelease(v195);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  v207 = strlen(language_modeling::v1::kLanguageModelForConditionalProbabilityUserSettingKey);
  if (v207 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_1AE5DB4F0();
  }

  v208 = v207;
  if (v207 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v207;
  if (v207)
  {
    memmove(&__dst, language_modeling::v1::kLanguageModelForConditionalProbabilityUserSettingKey, v207);
  }

  __dst.__r_.__value_.__s.__data_[v208] = 0;
  v209 = language_modeling::v1::kLanguageModelForConditionalProbabilityUserSettingKey;
  v210 = strlen(language_modeling::v1::kLanguageModelForConditionalProbabilityUserSettingKey);
  if (language_modeling::v1::kLanguageModelForConditionalProbabilityUserSettingKey)
  {
    v209 = CFStringCreateWithBytes(0, language_modeling::v1::kLanguageModelForConditionalProbabilityUserSettingKey, v210, 0x8000100u, 0);
    __p.__r_.__value_.__r.__words[0] = v209;
    if (!v209)
    {
      v211 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x1B2705EB0](v211, "Could not construct");
      __cxa_throw(v211, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  else
  {
    __p.__r_.__value_.__r.__words[0] = 0;
  }

  v212 = sub_1AE63148C(a1, &__dst.__r_.__value_.__l.__data_);
  if (v6 != v212)
  {
    if (*(v212 + 20) != 1)
    {
      sub_1AE631594();
    }

    v215 = v212[7];
    v213 = v212 + 7;
    v214 = v215;
    v216 = *(v213 + 23);
    if (v216 >= 0)
    {
      v217 = v213;
    }

    else
    {
      v217 = v214;
    }

    if (v217)
    {
      if (v216 >= 0)
      {
        v218 = *(v213 + 23);
      }

      else
      {
        v218 = v213[1];
      }

      v219 = CFStringCreateWithBytes(0, v217, v218, 0x8000100u, 0);
      cf[0] = v219;
      if (!v219)
      {
        v220 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x1B2705EB0](v220, "Could not construct");
        __cxa_throw(v220, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }
    }

    else
    {
      v219 = 0;
      cf[0] = 0;
    }

    CFDictionaryAddValue(v291, v209, v219);
    if (cf[0])
    {
      CFRelease(cf[0]);
    }

    v209 = __p.__r_.__value_.__r.__words[0];
  }

  if (v209)
  {
    CFRelease(v209);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  v221 = strlen(language_modeling::v1::kCustomStaticPhraseLexiconPathKey);
  if (v221 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_1AE5DB4F0();
  }

  v222 = v221;
  if (v221 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v221;
  if (v221)
  {
    memmove(&__dst, language_modeling::v1::kCustomStaticPhraseLexiconPathKey, v221);
  }

  __dst.__r_.__value_.__s.__data_[v222] = 0;
  v223 = kLMLanguageModelCustomStaticPhraseLexiconPathKey;
  v224 = sub_1AE63148C(a1, &__dst.__r_.__value_.__l.__data_);
  if (v6 != v224)
  {
    if (*(v224 + 20) != 1)
    {
      sub_1AE631594();
    }

    v227 = v224[7];
    v225 = v224 + 7;
    v226 = v227;
    v228 = *(v225 + 23);
    if (v228 >= 0)
    {
      v229 = v225;
    }

    else
    {
      v229 = v226;
    }

    if (v229)
    {
      if (v228 >= 0)
      {
        v230 = *(v225 + 23);
      }

      else
      {
        v230 = v225[1];
      }

      v231 = CFStringCreateWithBytes(0, v229, v230, 0x8000100u, 0);
      cf[0] = v231;
      if (!v231)
      {
        v232 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x1B2705EB0](v232, "Could not construct");
        __cxa_throw(v232, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }
    }

    else
    {
      v231 = 0;
      cf[0] = 0;
    }

    CFDictionaryAddValue(v291, v223, v231);
    if (cf[0])
    {
      CFRelease(cf[0]);
    }
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  v233 = strlen(language_modeling::v1::kUseBeamSearchV1);
  if (v233 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_1AE5DB4F0();
  }

  v234 = v233;
  if (v233 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v233;
  if (v233)
  {
    memmove(&__dst, language_modeling::v1::kUseBeamSearchV1, v233);
  }

  __dst.__r_.__value_.__s.__data_[v234] = 0;
  v235 = language_modeling::v1::kUseBeamSearchV1;
  v236 = strlen(language_modeling::v1::kUseBeamSearchV1);
  if (language_modeling::v1::kUseBeamSearchV1)
  {
    v235 = CFStringCreateWithBytes(0, language_modeling::v1::kUseBeamSearchV1, v236, 0x8000100u, 0);
    __p.__r_.__value_.__r.__words[0] = v235;
    if (!v235)
    {
      v237 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x1B2705EB0](v237, "Could not construct");
      __cxa_throw(v237, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  else
  {
    __p.__r_.__value_.__r.__words[0] = 0;
  }

  v238 = sub_1AE63148C(a1, &__dst.__r_.__value_.__l.__data_);
  if (v6 != v238)
  {
    if (*(v238 + 20))
    {
      sub_1AE631594();
    }

    v239 = MEMORY[0x1E695E4D0];
    if ((v238[7] & 1) == 0)
    {
      v239 = v45;
    }

    v240 = *v239;
    cf[0] = v240;
    CFDictionaryAddValue(v291, v235, v240);
    if (v240)
    {
      CFRelease(v240);
    }

    v235 = __p.__r_.__value_.__r.__words[0];
  }

  if (v235)
  {
    CFRelease(v235);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  v241 = strlen(language_modeling::v1::kLanguageModelMontrealFullCacheSizeCategoryKey);
  if (v241 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_1AE5DB4F0();
  }

  v242 = v241;
  if (v241 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v241;
  if (v241)
  {
    memmove(&__dst, language_modeling::v1::kLanguageModelMontrealFullCacheSizeCategoryKey, v241);
  }

  __dst.__r_.__value_.__s.__data_[v242] = 0;
  v243 = language_modeling::v1::kLanguageModelMontrealFullCacheSizeCategoryKey;
  v244 = strlen(language_modeling::v1::kLanguageModelMontrealFullCacheSizeCategoryKey);
  if (language_modeling::v1::kLanguageModelMontrealFullCacheSizeCategoryKey)
  {
    v243 = CFStringCreateWithBytes(0, language_modeling::v1::kLanguageModelMontrealFullCacheSizeCategoryKey, v244, 0x8000100u, 0);
    __p.__r_.__value_.__r.__words[0] = v243;
    if (!v243)
    {
      v245 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x1B2705EB0](v245, "Could not construct");
      __cxa_throw(v245, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  else
  {
    __p.__r_.__value_.__r.__words[0] = 0;
  }

  v246 = sub_1AE63148C(a1, &__dst.__r_.__value_.__l.__data_);
  if (v6 != v246)
  {
    if (*(v246 + 20) != 1)
    {
      sub_1AE631594();
    }

    v249 = v246[7];
    v247 = v246 + 7;
    v248 = v249;
    v250 = *(v247 + 23);
    if (v250 >= 0)
    {
      v251 = v247;
    }

    else
    {
      v251 = v248;
    }

    if (v251)
    {
      if (v250 >= 0)
      {
        v252 = *(v247 + 23);
      }

      else
      {
        v252 = v247[1];
      }

      v253 = CFStringCreateWithBytes(0, v251, v252, 0x8000100u, 0);
      cf[0] = v253;
      if (!v253)
      {
        v254 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x1B2705EB0](v254, "Could not construct");
        __cxa_throw(v254, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }
    }

    else
    {
      v253 = 0;
      cf[0] = 0;
    }

    CFDictionaryAddValue(v291, v243, v253);
    if (cf[0])
    {
      CFRelease(cf[0]);
    }

    v243 = __p.__r_.__value_.__r.__words[0];
  }

  if (v243)
  {
    CFRelease(v243);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  v255 = strlen(language_modeling::v1::kLanguageModelInlineCompletionPrecisionOperatingPointKey);
  if (v255 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_1AE5DB4F0();
  }

  v256 = v255;
  if (v255 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v255;
  if (v255)
  {
    memmove(&__dst, language_modeling::v1::kLanguageModelInlineCompletionPrecisionOperatingPointKey, v255);
  }

  __dst.__r_.__value_.__s.__data_[v256] = 0;
  v257 = language_modeling::v1::kLanguageModelInlineCompletionPrecisionOperatingPointKey;
  v258 = strlen(language_modeling::v1::kLanguageModelInlineCompletionPrecisionOperatingPointKey);
  if (language_modeling::v1::kLanguageModelInlineCompletionPrecisionOperatingPointKey)
  {
    v257 = CFStringCreateWithBytes(0, language_modeling::v1::kLanguageModelInlineCompletionPrecisionOperatingPointKey, v258, 0x8000100u, 0);
    __p.__r_.__value_.__r.__words[0] = v257;
    if (!v257)
    {
      v259 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x1B2705EB0](v259, "Could not construct");
      __cxa_throw(v259, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  else
  {
    __p.__r_.__value_.__r.__words[0] = 0;
  }

  v260 = sub_1AE63148C(a1, &__dst.__r_.__value_.__l.__data_);
  if (v6 != v260)
  {
    if (*(v260 + 20) != 1)
    {
      sub_1AE631594();
    }

    v263 = v260[7];
    v261 = v260 + 7;
    v262 = v263;
    v264 = *(v261 + 23);
    if (v264 >= 0)
    {
      v265 = v261;
    }

    else
    {
      v265 = v262;
    }

    if (v265)
    {
      if (v264 >= 0)
      {
        v266 = *(v261 + 23);
      }

      else
      {
        v266 = v261[1];
      }

      v267 = CFStringCreateWithBytes(0, v265, v266, 0x8000100u, 0);
      cf[0] = v267;
      if (!v267)
      {
        v268 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x1B2705EB0](v268, "Could not construct");
        __cxa_throw(v268, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }
    }

    else
    {
      v267 = 0;
      cf[0] = 0;
    }

    CFDictionaryAddValue(v291, v257, v267);
    if (cf[0])
    {
      CFRelease(cf[0]);
    }

    v257 = __p.__r_.__value_.__r.__words[0];
  }

  if (v257)
  {
    CFRelease(v257);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  v269 = strlen(language_modeling::v1::kCustomInlineCompletionParametersPath);
  if (v269 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_1AE5DB4F0();
  }

  v270 = v269;
  if (v269 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v269;
  if (v269)
  {
    memmove(&__dst, language_modeling::v1::kCustomInlineCompletionParametersPath, v269);
  }

  __dst.__r_.__value_.__s.__data_[v270] = 0;
  v271 = kLMCustomInlineCompletionParametersPathKey;
  v272 = sub_1AE63148C(a1, &__dst.__r_.__value_.__l.__data_);
  if (v6 != v272)
  {
    if (*(v272 + 20) != 1)
    {
      sub_1AE631594();
    }

    v275 = v272[7];
    v273 = v272 + 7;
    v274 = v275;
    v276 = *(v273 + 23);
    if (v276 >= 0)
    {
      v277 = v273;
    }

    else
    {
      v277 = v274;
    }

    if (v277)
    {
      if (v276 >= 0)
      {
        v278 = *(v273 + 23);
      }

      else
      {
        v278 = v273[1];
      }

      v279 = CFStringCreateWithBytes(0, v277, v278, 0x8000100u, 0);
      cf[0] = v279;
      if (!v279)
      {
        v280 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x1B2705EB0](v280, "Could not construct");
        __cxa_throw(v280, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }
    }

    else
    {
      v279 = 0;
      cf[0] = 0;
    }

    CFDictionaryAddValue(v291, v271, v279);
    if (cf[0])
    {
      CFRelease(cf[0]);
    }
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  return v291;
}

void sub_1AE76FAF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, uint64_t a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, char a33)
{
  sub_1AE621E54(&a27);
  if (*(v33 - 89) < 0)
  {
    operator delete(*(v33 - 112));
  }

  sub_1AE622220(&a13);
  _Unwind_Resume(a1);
}

const void **sub_1AE770074(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_1AE7700A8(_BYTE *a1, CFStringRef a2)
{
  data_high = SHIBYTE(a2->data);
  if ((data_high & 0x8000000000000000) == 0)
  {
    if (HIBYTE(a2->data))
    {
      v4 = *MEMORY[0x1E695E480];
      goto LABEL_6;
    }

LABEL_15:
    __assert_rtn("wordSeparatorForLocale", "AdapterUtils.cpp", 154, "!localeIdentifier.empty()");
  }

  data_high = a2->info;
  if (!data_high)
  {
    goto LABEL_15;
  }

  v4 = *MEMORY[0x1E695E480];
  a2 = a2->isa;
  if (!a2)
  {
    cf = 0;
    goto LABEL_7;
  }

LABEL_6:
  a2 = CFStringCreateWithBytes(0, a2, data_high, 0x8000100u, 0);
  cf = a2;
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x1B2705EB0](exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

LABEL_7:
  v5 = CFLocaleCreate(v4, a2);
  if (cf)
  {
    CFRelease(cf);
  }

  Value = CFLocaleGetValue(v5, *MEMORY[0x1E695E6F0]);
  v7 = CFStringCompare(Value, @"th", 0);
  v8 = v7 != kCFCompareEqualTo;
  a1[23] = v8;
  if (v7)
  {
    memcpy(a1, " ", v8);
  }

  a1[v8] = 0;
  if (v5)
  {
    CFRelease(v5);
  }
}

void sub_1AE770248(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AE622258(va);
  _Unwind_Resume(a1);
}

const void *sub_1AE77025C(const void *result)
{
  if (result)
  {
    v1 = result;
    CFRetain(result);
    return v1;
  }

  return result;
}

void *sub_1AE77028C(void *a1, CFTypeRef cf)
{
  *a1 = cf;
  if (cf)
  {
    v3 = CFGetTypeID(cf);
    if (v3 != CFURLGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x1B2705EB0](exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  return a1;
}

void sub_1AE770314(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  sub_1AE68C38C(v1);
  _Unwind_Resume(a1);
}

void *sub_1AE77033C(void *result, void *a2)
{
  *result = a2;
  if (!*a2)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_1AE6FCCD0();
  }

  return result;
}

const void *sub_1AE7703A8(void *a1, CFURLRef anURL)
{
  result = CFURLCopyPath(anURL);
  *a1 = result;
  if (result)
  {
    v4 = CFGetTypeID(result);
    result = CFStringGetTypeID();
    if (v4 != result)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x1B2705EB0](exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  return result;
}

void sub_1AE770430(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  sub_1AE621E54(v1);
  _Unwind_Resume(a1);
}

void *sub_1AE770458(void *result, void *a2)
{
  *result = a2;
  if (!*a2)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_1AE6FCCD0();
  }

  return result;
}

unint64_t sub_1AE7704C4(_BYTE *a1, const __CFString *a2)
{
  if (!a2 || (TypeID = CFStringGetTypeID(), TypeID != CFGetTypeID(a2)))
  {
    __cxa_allocate_exception(0x10uLL);
    sub_1AE66D320();
  }

  return sub_1AE5CAD24(a1, a2);
}

uint64_t sub_1AE770568(uint64_t a1, unsigned int a2, unsigned int *a3, void *a4)
{
  if (a2 <= 0x1F3)
  {
    if (!a3)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  if (*(a1 + 180) <= a2 && *(a1 + 184) >= a2)
  {
    if (a3)
    {
      *a3 = 0;
    }

    goto LABEL_35;
  }

  v4 = *(a1 + 188);
  if (v4 == 1)
  {
    v5 = *(a1 + 40);
    if (*(a1 + 192) == 1)
    {
      v6 = a2 >= *v5 && *(*(a1 + 48) - 8) >= a2;
      if (!v6)
      {
        goto LABEL_31;
      }

      v5 += 2 * (a2 - *v5);
    }

    else
    {
      v9 = *(a1 + 48);
      if (v9 == v5)
      {
        v5 = *(a1 + 48);
        if (*v9 != a2)
        {
          goto LABEL_31;
        }
      }

      else
      {
        v10 = (v9 - v5) >> 3;
        do
        {
          v11 = v10 >> 1;
          v12 = &v5[2 * (v10 >> 1)];
          v14 = *v12;
          v13 = v12 + 2;
          v10 += ~(v10 >> 1);
          if (v14 < a2)
          {
            v5 = v13;
          }

          else
          {
            v10 = v11;
          }
        }

        while (v10);
        if (*v5 != a2)
        {
LABEL_31:
          if (!a3)
          {
LABEL_35:
            if (a4)
            {
              *a4 = 0;
            }

            return 1;
          }

          if (v4 == 1)
          {
LABEL_34:
            *a3 = a2;
            goto LABEL_35;
          }

LABEL_33:
          a2 = *(a1 + 176);
          goto LABEL_34;
        }
      }
    }

    v8 = v5 + 1;
  }

  else
  {
    v7 = *(a1 + 16);
    if (a2 >= ((*(a1 + 24) - v7) >> 2))
    {
      if (!a3)
      {
        goto LABEL_35;
      }

      goto LABEL_33;
    }

    v8 = (v7 + 4 * a2);
  }

  v15 = *v8;
  if (!(v15 >> 28))
  {
    goto LABEL_31;
  }

  v17 = v15 >> 28;
  v18 = (*(a1 + 64) + (v15 & 0xFFFFFFF));
  if (a4)
  {
    v19 = **(a1 + 80);
    if (a3)
    {
      v20 = *(a1 + 128);
      *a3 = *(v20 + 4 * *v18);
      *a4 = *(v19 + 8 * v18[1]);
      v21 = v17 - 1;
      v6 = v17 - 1 >= 7;
      v22 = 7;
      if (!v6)
      {
        v22 = v21;
      }

      if (!v21)
      {
        return v22 + 1;
      }

      a3[1] = *(v20 + 4 * v18[2]);
      a4[1] = *(v19 + 8 * v18[3]);
      if (v21 == 1)
      {
        return v22 + 1;
      }

      a3[2] = *(v20 + 4 * v18[4]);
      a4[2] = *(v19 + 8 * v18[5]);
      if (v21 == 2)
      {
        return v22 + 1;
      }

      a3[3] = *(v20 + 4 * v18[6]);
      a4[3] = *(v19 + 8 * v18[7]);
      if (v21 == 3)
      {
        return v22 + 1;
      }

      a3[4] = *(v20 + 4 * v18[8]);
      a4[4] = *(v19 + 8 * v18[9]);
      if (v21 == 4)
      {
        return v22 + 1;
      }

      a3[5] = *(v20 + 4 * v18[10]);
      a4[5] = *(v19 + 8 * v18[11]);
      if (v21 == 5)
      {
        return v22 + 1;
      }

      a3[6] = *(v20 + 4 * v18[12]);
      a4[6] = *(v19 + 8 * v18[13]);
      if (v21 == 6)
      {
        return v22 + 1;
      }

      a3[7] = *(v20 + 4 * v18[14]);
    }

    else
    {
      *a4 = *(v19 + 8 * v18[1]);
      v25 = v17 - 1;
      v6 = v17 - 1 >= 7;
      v22 = 7;
      if (!v6)
      {
        v22 = v25;
      }

      if (!v25)
      {
        return v22 + 1;
      }

      a4[1] = *(v19 + 8 * v18[3]);
      if (v25 == 1)
      {
        return v22 + 1;
      }

      a4[2] = *(v19 + 8 * v18[5]);
      if (v25 == 2)
      {
        return v22 + 1;
      }

      a4[3] = *(v19 + 8 * v18[7]);
      if (v25 == 3)
      {
        return v22 + 1;
      }

      a4[4] = *(v19 + 8 * v18[9]);
      if (v25 == 4)
      {
        return v22 + 1;
      }

      a4[5] = *(v19 + 8 * v18[11]);
      if (v25 == 5)
      {
        return v22 + 1;
      }

      a4[6] = *(v19 + 8 * v18[13]);
      if (v25 == 6)
      {
        return v22 + 1;
      }
    }

    a4[7] = *(v19 + 8 * v18[15]);
    return v22 + 1;
  }

  if (a3)
  {
    v23 = *(a1 + 128);
    *a3 = *(v23 + 4 * *v18);
    v24 = v17 - 1;
    v6 = v17 - 1 >= 7;
    v22 = 7;
    if (!v6)
    {
      v22 = v24;
    }

    if (v24)
    {
      a3[1] = *(v23 + 4 * v18[2]);
      if (v24 != 1)
      {
        a3[2] = *(v23 + 4 * v18[4]);
        if (v24 != 2)
        {
          a3[3] = *(v23 + 4 * v18[6]);
          if (v24 != 3)
          {
            a3[4] = *(v23 + 4 * v18[8]);
            if (v24 != 4)
            {
              a3[5] = *(v23 + 4 * v18[10]);
              if (v24 != 5)
              {
                a3[6] = *(v23 + 4 * v18[12]);
                if (v24 != 6)
                {
                  a3[7] = *(v23 + 4 * v18[14]);
                  return v22 + 1;
                }
              }
            }
          }
        }
      }
    }

    return v22 + 1;
  }

  v26 = v17 - 1;
  if (v26 >= 7)
  {
    v26 = 7;
  }

  return v26 + 1;
}

void sub_1AE77091C(uint64_t a1, CFTypeRef *a2)
{
  if (*a2)
  {
    CFRelease(*a2);
  }

  *a2 = 0;
}

void sub_1AE770958(void *a1@<X8>)
{
  RootCursor = LXLexiconCreateRootCursor();
  if (LXCursorCreateByAdvancing())
  {
    operator new();
  }

  *a1 = 0;
  if (RootCursor)
  {
    CFRelease(RootCursor);
  }
}

void sub_1AE770AB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  if (a2)
  {
    sub_1AE6090F0(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1AE770B20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK2LM23LexiconFrameworkAdaptor19makeTokenEnumeratorEPK10__CFStringE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK2LM23LexiconFrameworkAdaptor19makeTokenEnumeratorEPK10__CFStringE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK2LM23LexiconFrameworkAdaptor19makeTokenEnumeratorEPK10__CFStringE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK2LM23LexiconFrameworkAdaptor19makeTokenEnumeratorEPK10__CFStringE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_1AE770C1C()
{
  v0 = LXLexiconCopyEntryForTokenID();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = LXEntryCopyString();
  CFRelease(v1);
  return v2;
}

void sub_1AE770C74(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AE67C310(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE770C9C()
{
  v2 = 0;
  v3 = &v2;
  v5 = 0;
  v4 = 0x2000000000;
  LXCursorEnumerateEntries();
  v0 = *(v3 + 6);
  _Block_object_dispose(&v2, 8);
  return v0;
}

void sub_1AE770D40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE770D58(uint64_t result, uint64_t a2, _BYTE *a3)
{
  v4 = result;
  if (a2)
  {
    result = LXEntryGetTokenID();
    if (result)
    {
      v5 = result;
    }

    else
    {
      v5 = 500;
    }
  }

  else
  {
    v5 = 0;
  }

  *(*(*(v4 + 32) + 8) + 24) = v5;
  *a3 = 1;
  return result;
}

void sub_1AE770E8C(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v6 = LXEntryCopyString();
  v17 = v6;
  if (a2)
  {
    TokenID = LXEntryGetTokenID();
    if (TokenID)
    {
      v8 = TokenID;
    }

    else
    {
      v8 = 500;
    }
  }

  else
  {
    v8 = 0;
  }

  sub_1AE5CC874(v6, __p);
  LXEntryGetPartialProbability();
  v10 = __exp10(v9);
  MetaFlags = LXEntryGetMetaFlags();
  v12 = LXEntryGetMetaFlags();
  v14 = 0;
  if (v16 >= 0)
  {
    v13 = __p;
  }

  else
  {
    v13 = __p[0];
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), v8, v13, MetaFlags & 0x86, v12 & 0x200021, &v14, v10);
  if (v14 == 1)
  {
    *a3 = v14;
    if (v16 < 0)
    {
      goto LABEL_11;
    }

LABEL_14:
    if (!v6)
    {
      return;
    }

    goto LABEL_15;
  }

  if ((v16 & 0x80000000) == 0)
  {
    goto LABEL_14;
  }

LABEL_11:
  operator delete(__p[0]);
  if (v6)
  {
LABEL_15:
    CFRelease(v6);
  }
}

uint64_t sub_1AE770FFC(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (*a2)
  {
    return LXCursorHasEntries() != 0;
  }

  return result;
}

uint64_t sub_1AE771028(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (*a2)
  {
    return LXCursorIsRoot() != 0;
  }

  return result;
}

BOOL sub_1AE771054(uint64_t a1, void *a2)
{
  if (!*a2)
  {
    return 0;
  }

  if (LXCursorHasEntries())
  {
    return 1;
  }

  return LXCursorHasChildren() != 0;
}

void sub_1AE7710A4(int a1, int a2, CFTypeRef *a3, UniChar *chars, CFIndex numChars)
{
  v6 = CFStringCreateWithCharactersNoCopy(0, chars, numChars, *MEMORY[0x1E695E498]);
  v7 = LXCursorCreateByAdvancing();
  v8 = v7;
  *a3 = 0;
  if (v7)
  {
    v9 = CFRetain(v7);
    if (*a3)
    {
      CFRelease(*a3);
    }

    *a3 = v9;
  }

  LXCursorConditionalProbability();
  v11 = v10;
  if (v8)
  {
    CFRelease(v8);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  __exp10(v11);
}

void sub_1AE771178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_1AE720AD0(v10);
  sub_1AE720AD0(&a9);
  sub_1AE636D70(&a10);
  _Unwind_Resume(a1);
}

void sub_1AE7711AC(uint64_t a1, CFTypeRef *a2)
{
  RootCursor = LXLexiconCreateRootCursor();
  *a2 = 0;
  if (RootCursor)
  {
    v4 = RootCursor;
    v5 = CFRetain(RootCursor);
    if (*a2)
    {
      CFRelease(*a2);
    }

    *a2 = v5;
    CFRelease(v4);
  }
}

void sub_1AE77121C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AE720AD0(v2);
  sub_1AE720AD0(va);
  _Unwind_Resume(a1);
}

void sub_1AE771238(void *a1)
{
  *a1 = &unk_1F2431970;
  v2 = a1[1];
  if (v2)
  {
    CFRelease(v2);
  }

  a1[1] = 0;

  JUMPOUT(0x1B2706400);
}

void *sub_1AE7712AC(void *a1)
{
  *a1 = &unk_1F2431970;
  v2 = a1[1];
  if (v2)
  {
    CFRelease(v2);
  }

  a1[1] = 0;
  return a1;
}

uint64_t sub_1AE771344(uint64_t a1, uint64_t a2, int8x16_t *a3, unint64_t a4)
{
  v4 = a2;
  if (!a2)
  {
    return v4;
  }

  v6 = 0;
  v7 = 0;
  while (*(v4 + 8))
  {
    v8 = *(v4 + 16);
    if (HIWORD(v8))
    {
      v13 = v8 & 0x3FF | 0xDC00;
      if (v6 >= v7)
      {
        v14 = v6;
        v15 = v6 >> 1;
        if (v6 >> 1 <= -2)
        {
          sub_1AE5CBB70();
        }

        if (v7 <= v15 + 1)
        {
          v16 = v15 + 1;
        }

        else
        {
          v16 = v7;
        }

        if (v7 >= 0x7FFFFFFFFFFFFFFELL)
        {
          v17 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v17 = v16;
        }

        if (v17)
        {
          if ((v17 & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_1AE5CB09C();
        }

        v7 = 0;
        *(2 * v15) = v13;
        v6 = 2 * v15 + 2;
        memcpy(0, 0, v14);
      }

      else
      {
        *v6 = v13;
        v6 += 2;
      }

      v8 = (*(v4 + 16) >> 10) - 10304;
      if (v6 >= v7)
      {
        v9 = v6;
        v10 = v6 >> 1;
        if (v10 <= -2)
        {
          sub_1AE5CBB70();
        }

        if (v7 <= v10 + 1)
        {
          v18 = v10 + 1;
        }

        else
        {
          v18 = v7;
        }

        if (v7 >= 0x7FFFFFFFFFFFFFFELL)
        {
          v12 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = v18;
        }

        if (v12)
        {
          if ((v12 & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_1AE5CB09C();
        }

        goto LABEL_41;
      }

LABEL_3:
      *v6 = v8;
      v6 += 2;
      v4 = *(v4 + 8);
      if (!v4)
      {
        break;
      }
    }

    else
    {
      if (v6 < v7)
      {
        goto LABEL_3;
      }

      v9 = v6;
      v10 = v6 >> 1;
      if (v10 <= -2)
      {
        sub_1AE5CBB70();
      }

      if (v7 <= v10 + 1)
      {
        v11 = v10 + 1;
      }

      else
      {
        v11 = v7;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFELL)
      {
        v12 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v12 = v11;
      }

      if (v12)
      {
        if ((v12 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1AE5CB09C();
      }

LABEL_41:
      v19 = (2 * v10);
      v7 = 2 * v12;
      *v19 = v8;
      v6 = (v19 + 1);
      memcpy(0, 0, v9);
      v4 = *(v4 + 8);
      if (!v4)
      {
        break;
      }
    }
  }

  v4 = v6 >> 1;
  if (v6 >> 1 <= a4)
  {
    if (!v6)
    {
      return v4;
    }

    v23 = v6 - 2;
    if ((v6 - 2) < 6 || v6 > a3 && &a3->i8[v6])
    {
      goto LABEL_75;
    }

    v24 = (v23 >> 1) + 1;
    if (v23 >= 0x1E)
    {
      v25 = v24 & 0xFFFFFFFFFFFFFFF0;
      v28 = (v6 - 16);
      v29 = a3 + 1;
      v30 = v24 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v31 = vrev64q_s16(*v28);
        v32 = vrev64q_s16(v28[-1]);
        v29[-1] = vextq_s8(v31, v31, 8uLL);
        *v29 = vextq_s8(v32, v32, 8uLL);
        v28 -= 2;
        v29 += 2;
        v30 -= 16;
      }

      while (v30);
      if (v24 == v25)
      {
        return v4;
      }

      if ((v24 & 0xC) == 0)
      {
        v6 -= 2 * v25;
        a3 = (a3 + 2 * v25);
        goto LABEL_75;
      }
    }

    else
    {
      v25 = 0;
    }

    v33 = v25 - (v24 & 0xFFFFFFFFFFFFFFFCLL);
    v34 = 2 * v25;
    v35 = (v6 - 2 * v25 - 8);
    v36 = &a3->i8[v34];
    do
    {
      v37 = *v35--;
      *v36++ = vrev64_s16(v37);
      v33 += 4;
    }

    while (v33);
    if (v24 == (v24 & 0xFFFFFFFFFFFFFFFCLL))
    {
      return v4;
    }

    a3 = (a3 + 2 * (v24 & 0xFFFFFFFFFFFFFFFCLL));
    v6 -= 2 * (v24 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
LABEL_75:
      v48 = *(v6 - 2);
      v6 -= 2;
      a3->i16[0] = v48;
      a3 = (a3 + 2);
    }

    while (v6);
    return v4;
  }

  if (!a4)
  {
    return v4;
  }

  v20 = (a4 - 1) & 0x7FFFFFFFFFFFFFFFLL;
  if (v20 >= 3 && (v6 <= a3 || v6 - 2 * a4 >= a3 + 2 * a4))
  {
    v26 = v20 + 1;
    if (v20 >= 0xF)
    {
      v27 = v26 & 0xFFFFFFFFFFFFFFF0;
      v38 = (v6 - 16);
      v39 = a3 + 1;
      v40 = v26 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v41 = vrev64q_s16(*v38);
        v42 = vrev64q_s16(v38[-1]);
        v39[-1] = vextq_s8(v41, v41, 8uLL);
        *v39 = vextq_s8(v42, v42, 8uLL);
        v38 -= 2;
        v39 += 2;
        v40 -= 16;
      }

      while (v40);
      if (v26 == v27)
      {
        return v4;
      }

      if ((v26 & 0xC) == 0)
      {
        v50 = 2 * v27;
        v21 = v6 - v50;
        a3 = (a3 + v50);
        goto LABEL_48;
      }
    }

    else
    {
      v27 = 0;
    }

    v43 = v27 - (v26 & 0xFFFFFFFFFFFFFFFCLL);
    v44 = 2 * v27;
    v45 = (v6 - 2 * v27 - 8);
    v46 = &a3->i8[v44];
    do
    {
      v47 = *v45--;
      *v46++ = vrev64_s16(v47);
      v43 += 4;
    }

    while (v43);
    if (v26 != (v26 & 0xFFFFFFFFFFFFFFFCLL))
    {
      a3 = (a3 + 2 * (v26 & 0xFFFFFFFFFFFFFFFCLL));
      v21 = v6 - 2 * (v26 & 0xFFFFFFFFFFFFFFFCLL);
      goto LABEL_48;
    }
  }

  else
  {
    v21 = v6;
    do
    {
LABEL_48:
      v22 = *(v21 - 2);
      v21 -= 2;
      a3->i16[0] = v22;
      a3 = (a3 + 2);
    }

    while (v21 != v6 - 2 * a4);
  }

  return v4;
}

void sub_1AE7717AC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1AE771800(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 56))(a2);
  if (result)
  {
    v4 = *(*a2 + 48);

    return v4(a2);
  }

  return result;
}

uint64_t sub_1AE771904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = (*(*a2 + 56))(a2);
  if (result)
  {
    v9 = 0;
    v8 = (*(*a2 + 48))(a2);
    return (*(a5 + 16))(a5, v8, 0, 0, 0, &v9, 0.0);
  }

  return result;
}

double sub_1AE771A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = (*(*a2 + 16))(a2, a4, a5);
  if (!v7)
  {
    v10 = 0;
    v7 = (*(*a2 + 16))(a2, &v10, 1);
  }

  *a3 = &unk_1F2431B68;
  v8 = *(v7 + 8);
  *(a3 + 16) = *(v7 + 16);
  *a3 = &unk_1F2431B10;
  *(a3 + 8) = v8;
  *(a3 + 24) = *(v7 + 24);
  *(a3 + 32) = *(v7 + 32);
  *(a3 + 40) = *(v7 + 40);
  *(a3 + 48) = *(v7 + 48);
  return 0.0;
}

void *sub_1AE771B20(void *result, uint64_t a2)
{
  v3 = result[1];
  v4 = **(v3 + 16);
  if (v4)
  {
    if (qword_1EB5E0C40 != -1)
    {
      v8 = **(v3 + 16);
      dispatch_once(&qword_1EB5E0C40, &unk_1F242B740);
      v4 = v8;
    }

    result = (*(**(qword_1EB5E0C48 + 8 * (*v4 & 3)) + 32))(v9);
    v5 = v9[0];
    v6 = v9[1];
    v7 = v10;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v5 = 0;
  }

  *(a2 + 16) = 0;
  *a2 = &unk_1F2431B10;
  *(a2 + 8) = 0;
  *(a2 + 24) = v3;
  *(a2 + 32) = v5;
  *(a2 + 40) = v6;
  *(a2 + 48) = v7;
  return result;
}

void sub_1AE771C1C(void *a1)
{
  *a1 = &unk_1F2431A20;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(a1[1]);
    v1 = vars8;
  }

  JUMPOUT(0x1B2706400);
}

void *sub_1AE771CAC(void *result)
{
  *result = &unk_1F2431A20;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(result[1]);
    return v2;
  }

  return result;
}

void *sub_1AE771D20(void *a1, const void *a2, const void *a3)
{
  *a1 = &unk_1F2431970;
  a1[1] = 0;
  v6 = (a1 + 1);
  v7 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v15 = Mutable;
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E69ABFC8], a2);
  if (a3)
  {
    v9 = CFArrayCreateMutable(v7, 0, MEMORY[0x1E695E9C0]);
    v13[0] = v9;
    CFArrayAppendValue(v9, a3);
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E69ABFD0], v9);
    if (v9)
    {
      CFRelease(v9);
    }
  }

  CFDictionaryAddValue(Mutable, *MEMORY[0x1E69ABFD8], *MEMORY[0x1E695E4D0]);
  err = 0;
  v10 = LXLexiconCreate();
  if (*v6)
  {
    CFRelease(*v6);
  }

  *v6 = v10;
  if (!v10)
  {
    if (err)
    {
      v13[3] = err;
      exception = __cxa_allocate_exception(0x20uLL);
      sub_1AE5CC990(v13, "Failed to create the lexicon framework adapter");
      sub_1AE6F1000(exception, v13, err);
      __cxa_throw(exception, &unk_1F2432910, sub_1AE64FC40);
    }

    __assert_rtn("LexiconFrameworkAdaptor", "LMLexiconAdaptor.cpp", 59, "error");
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return a1;
}

void sub_1AE771EF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, const void *a15, uint64_t a16, const void *a17)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v19 & 1) == 0)
    {
LABEL_6:
      sub_1AE69A434(&a15);
      sub_1AE622220(&a17);
      sub_1AE7321C0(v17);
      _Unwind_Resume(a1);
    }
  }

  else if (!v19)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v18);
  goto LABEL_6;
}

BOOL sub_1AE771F78(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  if (!a3)
  {
    return 1;
  }

  if (a3 == 1 && *a2 == 3)
  {
    return 0;
  }

  return *sub_1AE6FCCDC(a1 + 8, a2, a3) > 0xFA0u;
}

uint64_t sub_1AE771FCC(uint64_t a1, unsigned int *a2, unsigned int *a3, char **a4)
{
  if (a3)
  {
    v6 = *(a1 + 208);
    v7 = *(a1 + 216);
    if (a3 == 1 && *a2 == 3)
    {
      *v6 = 4;
      v8 = 1;
LABEL_21:
      sub_1AE6EC330(a4, v6, &v6[4 * v8], v8);
      return 1;
    }

    v9 = sub_1AE6FCCDC(a1 + 8, a2, a3);
    v10 = v9[1];
    v11 = (v10 + *v9);
    if (v10 < v11)
    {
      v12 = 0;
      v13 = (16 * v10) | 8;
      while (1)
      {
        v15 = v12;
        if ((v7 - v6) >> 2 <= v12)
        {
          return 0;
        }

        if (v10 >= *(a1 + 56))
        {
          goto LABEL_23;
        }

        v16 = *(a1 + 104);
        if (v12)
        {
          v14 = *(v16 + v13);
          if (*&v6[4 * v12 - 4] == v14)
          {
            goto LABEL_9;
          }
        }

        else
        {
          v14 = *(v16 + v13);
        }

        ++v12;
        *&v6[4 * v15] = v14;
LABEL_9:
        ++v10;
        v13 += 16;
        if (v11 == v10)
        {
          goto LABEL_16;
        }
      }
    }

    v12 = 0;
LABEL_16:
    v17 = v9[2];
    if (*(a1 + 56) <= v17)
    {
LABEL_23:
      __assert_rtn("getEdge", "Network.h", 203, "edgeIdx < getNrOfEdges()");
    }

    if (*(*(a1 + 104) + 16 * v17 + 12))
    {
      *&v6[4 * v12++] = 4;
    }

    if (v12)
    {
      v8 = v12;
      v6 = *(a1 + 208);
      goto LABEL_21;
    }
  }

  return 0;
}

uint64_t sub_1AE772120(uint64_t a1, unsigned int a2, int32x4_t *a3, unint64_t a4)
{
  if (a4 < *(a1 + 80))
  {
    __assert_rtn("findSinglePathForOutputId", "LMFSTNetwork.cpp", 43, "nnTokenIDs.size() >= maxMontrealTokensForLMTokenID()");
  }

  if (!a4)
  {
    return 0;
  }

  if (a2 - 1 <= 1)
  {
    a3->i32[0] = a2;
    return 1;
  }

  if (*(a1 + 68) <= a2)
  {
    goto LABEL_8;
  }

  v5 = *(*(a1 + 120) + 4 * a2);
  if (v5 == -1)
  {
    return 0;
  }

  if (v5 == *(a1 + 76))
  {
LABEL_8:
    a3->i64[0] = 0x400000003;
    return 2;
  }

  if (*(a1 + 56) <= v5)
  {
LABEL_42:
    __assert_rtn("getEdge", "Network.h", 203, "edgeIdx < getNrOfEdges()");
  }

  v6 = *(a1 + 104);
  a3->i32[0] = 4;
  a3->i32[1] = *(v6 + 16 * v5 + 8);
  v7 = *(v6 + 16 * v5);
  if (*(a1 + 52) <= v7)
  {
LABEL_18:
    __assert_rtn("isInitial", "Network.h", 223, "n < getNrOfNodes()");
  }

  v8 = 2;
  if (a4 <= 2)
  {
    v9 = 2;
  }

  else
  {
    v9 = a4;
  }

  while (*(a1 + 48) != v7)
  {
    if (v9 == v8)
    {
      return 0;
    }

    v10 = *(*(a1 + 88) + 12 * v7 + 8);
    if (*(a1 + 56) <= v10)
    {
      goto LABEL_42;
    }

    v11 = (v6 + 16 * v10);
    a3->i32[v8++] = v11[2];
    v7 = *v11;
    if (*(a1 + 52) <= v7)
    {
      goto LABEL_18;
    }
  }

  result = v8;
  v12 = (a3 + 4 * v8);
  v13 = &v12[-1].i32[3];
  if ((&v12[-1].u64[1] + 4) > a3)
  {
    v14 = &v12[-1].i32[2];
    if (&v12[-1].u64[1] <= (a3->i64 + 4))
    {
      v14 = &a3->i32[1];
    }

    v15 = (v14 - 1);
    if (v15 == a3)
    {
      v16 = a3;
    }

    else
    {
      v16 = &a3->i8[1];
    }

    v17 = v15 == a3;
    v18 = v15 != a3;
    v19 = (v15 - v16) >> 3;
    if (!v17)
    {
      ++v19;
    }

    if (v19 < 0x13 || a3 < v12 && v12 - 4 * v19 - 4 < a3->i64 + 4 * v19 + 4)
    {
      goto LABEL_37;
    }

    v20 = (v19 + 1) & 0x7FFFFFFFFFFFFFF8;
    v21 = a3 + 4 * v8 - 8;
    if (v21 <= a3->u64 + 4)
    {
      v21 = a3->u64 + 4;
    }

    v22 = (v18 + ((v21 - v16 - 4) >> 3) + 1) & 0x3FFFFFFFFFFFFFF8;
    v23 = a3 + 1;
    v24 = v12 - 1;
    do
    {
      v25 = v23[-1];
      v26 = *v23;
      v27 = vrev64q_s32(*v24);
      v28 = vrev64q_s32(v24[-1]);
      v23[-1] = vextq_s8(v27, v27, 8uLL);
      *v23 = vextq_s8(v28, v28, 8uLL);
      v29 = vrev64q_s32(v25);
      v30 = vrev64q_s32(v26);
      v24[-1] = vextq_s8(v30, v30, 8uLL);
      *v24 = vextq_s8(v29, v29, 8uLL);
      v23 += 2;
      v24 -= 2;
      v22 -= 8;
    }

    while (v22);
    if (v19 + 1 != v20)
    {
      v13 -= v20;
      a3 = (a3 + 4 * v20);
LABEL_37:
      v31 = &a3->i32[1];
      do
      {
        v32 = *(v31 - 1);
        *(v31 - 1) = *v13;
        *v13-- = v32;
      }

      while (v31++ < v13);
    }
  }

  return result;
}

void sub_1AE7723C0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 64);
  if ((*(*a2 + 64))(a2) - 1 == v3)
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      if (v4 < 0x666666666666667)
      {
        operator new();
      }

      sub_1AE5CBB70();
    }

    __assert_rtn("PriorityQueue", "PriorityQueue.hpp", 21, "m_maxPredictionCount > 0");
  }

  __assert_rtn("predictions", "Network.cpp", 372, "largestInputId() == neuralModel.outputLayerSize() - 1");
}

void sub_1AE773414(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36)
{
  if (__p)
  {
    operator delete(__p);
  }

  v38 = *(v36 - 152);
  if (v38)
  {
    v39 = *(v36 - 144);
    v40 = *(v36 - 152);
    if (v39 != v38)
    {
      do
      {
        v41 = *(v39 - 24);
        if (v41)
        {
          *(v39 - 16) = v41;
          operator delete(v41);
        }

        v39 -= 40;
      }

      while (v39 != v38);
      v40 = *(v36 - 152);
    }

    *(v36 - 144) = v38;
    operator delete(v40);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AE7735A8(void *a1)
{
  *a1 = &unk_1F2431C50;
  v2 = a1[26];
  if (v2)
  {
    a1[27] = v2;
    operator delete(v2);
  }

  v3 = a1[23];
  if (v3)
  {
    a1[24] = v3;
    operator delete(v3);
  }

  v4 = a1[20];
  if (v4)
  {
    a1[21] = v4;
    operator delete(v4);
  }

  v5 = a1[17];
  if (v5)
  {
    a1[18] = v5;
    operator delete(v5);
  }

  v6 = a1[1];
  if (v6)
  {
    munmap(v6, a1[2]);
  }

  a1[2] = 0;

  JUMPOUT(0x1B2706400);
}

void *sub_1AE773660(void *a1)
{
  *a1 = &unk_1F2431C50;
  v2 = a1[26];
  if (v2)
  {
    a1[27] = v2;
    operator delete(v2);
  }

  v3 = a1[23];
  if (v3)
  {
    a1[24] = v3;
    operator delete(v3);
  }

  v4 = a1[20];
  if (v4)
  {
    a1[21] = v4;
    operator delete(v4);
  }

  v5 = a1[17];
  if (v5)
  {
    a1[18] = v5;
    operator delete(v5);
  }

  v6 = a1[1];
  if (v6)
  {
    munmap(v6, a1[2]);
  }

  a1[2] = 0;
  return a1;
}

uint64_t sub_1AE7736F8(uint64_t a1)
{
  v2 = *(a1 + 176);
  if (v2)
  {
    *(a1 + 184) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 152);
  if (v3)
  {
    *(a1 + 160) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 128);
  if (v4)
  {
    *(a1 + 136) = v4;
    operator delete(v4);
  }

  if (*a1)
  {
    munmap(*a1, *(a1 + 8));
  }

  *(a1 + 8) = 0;
  return a1;
}

uint64_t sub_1AE773764(uint64_t a1, unsigned int a2, int a3, unsigned int a4, uint64_t a5, unsigned int a6)
{
  v6 = a1 + 3;
  v7 = 6 * a4;
  while (a6)
  {
    if (a4)
    {
      v8 = 24;
    }

    else
    {
      v8 = 0;
    }

    if (++a4 >= a2)
    {
      v12 = 0;
    }

    else
    {
      v9 = ((v7 + 3) >> 3) + v6;
      v10 = (v7 + 3) & 7 | (8 * (v9 & 3));
      v11 = *(v9 & 0xFFFFFFFFFFFFFFFCLL) >> v10;
      if (v10 >= 0x1E)
      {
        v11 |= *((v9 & 0xFFFFFFFFFFFFFFFCLL) + 4) << -v10;
      }

      v12 = 4 * (v11 & 7);
    }

    v13 = 4 * (*(((v7 >> 3) + v6) & 0xFFFFFFFFFFFFFFFCLL) >> (v7 & 6 | (8 * (((v7 >> 3) + v6) & 3))));
    v14 = (v13 & 0x1C) + v8;
    v15 = ((v13 & 0x1C) + v8 + v12 + 7) & 0xF8;
    v16 = v15 * (a6 - 1);
    if ((v13 & 0x1C) != 0)
    {
      v17 = ((v16 + v8) >> 3) + a5;
      v18 = v17 & 0xFFFFFFFFFFFFFFFCLL;
      v19 = 8 * (v17 & 3);
      v20 = *(v17 & 0xFFFFFFFFFFFFFFFCLL) >> v19;
      if (v19 + (v13 & 0x1C) >= 0x21)
      {
        v20 |= *(v18 + 4) << -v19;
      }

      v21 = v20 & (0xFFFFFFFF >> -(v13 & 0x1C));
    }

    else
    {
      v21 = 0;
    }

    result = a5 + ((v21 * ((a3 + 31) & 0xFFFFFFF8)) >> 3) + ((v15 * a6) >> 3);
    if (a4 < a2 && v12)
    {
      v23 = ((v16 + v14) >> 3) + a5;
      v24 = v23 & 0xFFFFFFFFFFFFFFFCLL;
      v25 = v13 & 4 | (8 * (v23 & 3));
      v26 = *(v23 & 0xFFFFFFFFFFFFFFFCLL) >> v25;
      if (v25 + v12 >= 0x21)
      {
        v26 |= *(v24 + 4) << -v25;
      }

      v7 += 6;
      a5 = result;
      a6 = v26 & (0xFFFFFFFF >> -v12);
      if (a6)
      {
        continue;
      }
    }

    return result;
  }

  return a5;
}

uint64_t sub_1AE773918(uint64_t result, unsigned int a2, _DWORD *a3, float a4)
{
  v25 = 0;
  if (result)
  {
    v22 = *(result + 6);
    if (a2)
    {
      v6 = *(result + 7);
      v7 = *(result + 5);
      v8 = *(result + 24);
      v9 = *(result + 20);
      if (v7 >= a2 && v8 != 0 && *(result + 16) != 0 && v9 != 0 && v6 != 0)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0xFFFFFFFFFFFFFFFFLL >> -v6;
        do
        {
          v17 = ((v14 + 24) >> 3) + v8;
          v18 = v17 & 0xFFFFFFFFFFFFFFF8;
          v19 = v14 & 7 | (8 * (v17 & 7));
          v20 = *(v17 & 0xFFFFFFFFFFFFFFF8) >> v19;
          if ((v19 + v6) >= 0x41)
          {
            v20 |= *(v18 + 8) << -v19;
          }

          result = v20 & v16;
          if ((v20 & v16) != 0)
          {
            v23 = 0;
            v24 = 0;
            result = sub_1AE773A98(result, v7, v22, a2, result + ((6 * v7 + 4) >> 3) + 3, &v24, &v23, a4);
            v15 += v24;
            v25 = v15;
          }

          v14 += v6 + 24;
          --v9;
        }

        while (v9);
      }
    }

    else
    {
      result = *(result + 32);
      if (result)
      {
        result = sub_1AE773A98(result, 1u, v22, 1u, result + 4, &v25, &v24, a4);
      }
    }
  }

  if (a3)
  {
    *a3 = v25;
  }

  return result;
}

uint64_t sub_1AE773A98(uint64_t a1, unsigned int a2, int a3, unsigned int a4, uint64_t a5, int *a6, unsigned int *a7, float a8)
{
  v8 = a1 + 3;
  v9 = (a3 + 31) & 0xFFFFFFF8;
  v10 = 1;
  v11 = 3;
  result = 24;
  for (i = 1; ; i = v34)
  {
    v14 = v10 == 1 ? 0 : 24;
    v15 = *((((v11 - 3) >> 3) + v8) & 0xFFFFFFFFFFFFFFFCLL) >> ((v11 - 3) & 6 | (8 * ((((v11 - 3) >> 3) + v8) & 3)));
    if (v10 >= a2)
    {
      v20 = 0;
    }

    else
    {
      v16 = (v11 >> 3) + v8;
      v17 = v16 & 0xFFFFFFFFFFFFFFFCLL;
      v18 = v11 & 7 | (8 * (v16 & 3));
      v19 = *(v16 & 0xFFFFFFFFFFFFFFFCLL) >> v18;
      if (v18 >= 0x1E)
      {
        v19 |= *(v17 + 4) << -v18;
      }

      v20 = 4 * (v19 & 7);
    }

    v21 = 4 * v15;
    v22 = (4 * v15) & 0x1C;
    v23 = (((4 * v15) & 0x1C) + v14 + v20 + 7) & 0xF8;
    v24 = v23 * (i - 1);
    if (v22)
    {
      break;
    }

    v29 = 0;
    if (a4 == v10)
    {
      goto LABEL_23;
    }

LABEL_16:
    if (v10 >= a4 || v10 >= a2 || !v20)
    {
      return result;
    }

    v30 = ((v24 + v22 + v14) >> 3) + a5;
    v31 = v30 & 0xFFFFFFFFFFFFFFFCLL;
    v32 = v21 & 4 | (8 * (v30 & 3));
    v33 = *(v30 & 0xFFFFFFFFFFFFFFFCLL) >> v32;
    if (v32 + v20 >= 0x21)
    {
      v33 |= *(v31 + 4) << -v32;
    }

    v34 = v33 & (0xFFFFFFFF >> -v20);
    if (!v34)
    {
      return result;
    }

    a5 += ((v29 * v9) >> 3) + ((v23 * i) >> 3);
    ++v10;
    v11 += 6;
  }

  v25 = ((v24 + v14) >> 3) + a5;
  v26 = v25 & 0xFFFFFFFFFFFFFFFCLL;
  v27 = 8 * (v25 & 3);
  v28 = *(v25 & 0xFFFFFFFFFFFFFFFCLL) >> v27;
  if (v27 + v22 >= 0x21)
  {
    v28 |= *(v26 + 4) << -v27;
  }

  v29 = v28 & (0xFFFFFFFF >> -v22);
  if (a4 != v10)
  {
    goto LABEL_16;
  }

LABEL_23:
  if (a8 <= 0.0)
  {
    v35 = i;
    goto LABEL_51;
  }

  if (v22)
  {
    v35 = 0;
    v29 = 0;
    v36 = 0;
    result = 0xFFFFFFFF >> -v22;
    do
    {
      v37 = ((v36 * v23 + v14) >> 3) + a5;
      v38 = v37 & 0xFFFFFFFFFFFFFFFCLL;
      v39 = 8 * (v37 & 3);
      v40 = *(v37 & 0xFFFFFFFFFFFFFFFCLL) >> v39;
      if ((v39 + v22) >= 0x21)
      {
        v40 |= *(v38 + 4) << -v39;
      }

      if (v36)
      {
        v41 = (((v36 - 1) * v23 + v14) >> 3) + a5;
        v42 = v41 & 0xFFFFFFFFFFFFFFFCLL;
        v43 = 8 * (v41 & 3);
        v44 = *(v41 & 0xFFFFFFFFFFFFFFFCLL) >> v43;
        if ((v43 + v22) >= 0x21)
        {
          v44 |= *(v42 + 4) << -v43;
        }

        v45 = v44 & result;
      }

      else
      {
        v45 = 0;
      }

      v46 = v40 & result;
      v47 = 0.0;
      v48 = v46 >= v45;
      v49 = v46 - v45;
      if (v49 != 0 && v48)
      {
        v50 = a3 + ((a3 + 31) & 0xFFFFFFF8) * v45;
        do
        {
          v56 = (v50 >> 3) + a5 + ((v23 * i) >> 3);
          v57 = v56 & 0xFFFFFFFFFFFFFFFCLL;
          v58 = a3 & 7 | (8 * (v56 & 3));
          v59 = *(v56 & 0xFFFFFFFFFFFFFFFCLL) >> v58;
          if (v58 >= 9)
          {
            v59 |= *(v57 + 4) << -v58;
          }

          v51 = (v59 & 0x3FFFFF);
          v52 = (v59 >> 22) & 3;
          v53 = v51 * 0.0078125;
          if (v52 != 2)
          {
            v53 = v51;
          }

          v54 = v51 * 0.00000095367;
          v55 = v51 * 0.000061035;
          if (!v52)
          {
            v55 = v54;
          }

          if (v52 > 1)
          {
            v55 = v53;
          }

          v47 = v55 + v47;
          if (v55 >= a8)
          {
            ++v29;
          }

          v50 += v9;
          --v49;
        }

        while (v49);
      }

      if (v47 >= a8)
      {
        ++v35;
      }

      ++v36;
    }

    while (v36 != i);
LABEL_51:
    if (a6)
    {
LABEL_52:
      *a6 = v35;
    }
  }

  else
  {
    v29 = 0;
    v35 = 0;
    if (a6)
    {
      goto LABEL_52;
    }
  }

  if (a7)
  {
    *a7 = v29;
  }

  return result;
}

void *sub_1AE773E18(uint64_t a1, int a2, unsigned int a3, unsigned int a4, unsigned int a5, unsigned int *a6)
{
  v11 = 2 * a2;
  v12 = malloc_type_calloc(((((a5 + 24) * 2 * a2 + 7) >> 3) & 0x1FFFFFF8) + 8, 1uLL, 0x100004077774924uLL);
  if (v12)
  {
    if (!a3 || !a4)
    {
      goto LABEL_17;
    }

    v13 = 0;
    v14 = a4 + 24;
    v15 = a4;
    v16 = 0xFFFFFFFFFFFFFFFFLL >> -a4;
    do
    {
      while (1)
      {
        v19 = ((v13 * v14 + 24) >> 3) + a1;
        v20 = v19 & 0xFFFFFFFFFFFFFFF8;
        v21 = (v13 * v14) & 7 | (8 * (v19 & 7));
        v22 = *(v19 & 0xFFFFFFFFFFFFFFF8) >> v21;
        if ((v21 + v15) >= 0x41)
        {
          v22 |= *(v20 + 8) << -v21;
        }

        v23 = v22 & v16;
        if ((v22 & v16) != 0)
        {
          break;
        }

        if (++v13 >= a3)
        {
          goto LABEL_17;
        }
      }

      v24 = ((v13 * v14) >> 3) + a1;
      v25 = v24 & 0xFFFFFFFFFFFFFFFCLL;
      v26 = (v13 * v14) & 7 | (8 * (v24 & 3));
      v27 = *(v24 & 0xFFFFFFFFFFFFFFFCLL) >> v26;
      if (v26 >= 9)
      {
        v27 |= *(v25 + 4) << -v26;
      }

      v17 = sub_1AE773F9C(v12, v11, a5, v27 & 0xFFFFFF, v23);
      ++v13;
      if (v17)
      {
        v18 = v13 >= a3;
      }

      else
      {
        v18 = 1;
      }
    }

    while (!v18);
    if ((v17 & 1) == 0)
    {
      free(v12);
      return 0;
    }

    else
    {
LABEL_17:
      if (a6)
      {
        *a6 = v11;
      }
    }
  }

  return v12;
}

uint64_t sub_1AE773F9C(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4, unint64_t a5)
{
  v5 = a3 + 24;
  v6 = -1640531573 * a4 % a2;
  if (a3)
  {
    v7 = -1640531573 * a4 % a2;
    while (1)
    {
      v8 = v7 * v5;
      v9 = (v7 * v5 + 24) >> 3;
      v10 = (v7 * v5) & 7;
      v11 = ((v9 + a1) & 0xFFFFFFFFFFFFFFF8);
      v12 = (v7 * v5) & 7 | (8 * ((v9 + a1) & 7));
      v13 = *v11 >> v12;
      if (v12 + a3 >= 0x41)
      {
        v13 |= v11[1] << -v12;
      }

      if ((v13 & (0xFFFFFFFFFFFFFFFFLL >> -a3)) == 0)
      {
        break;
      }

      if (v7 + 1 == a2)
      {
        v7 = 0;
      }

      else
      {
        ++v7;
      }

      if (v7 == v6)
      {
        return 0;
      }
    }
  }

  else
  {
    v10 = 0;
    v8 = v6 * v5;
    v9 = (v6 * v5 + 24) >> 3;
  }

  v15 = v8 >> 3;
  *(a1 + v15) = *(a1 + v15) & ~(0xFFu >> v10 << v10) | (((0xFFu >> v10) & a4) << v10);
  v16 = v10 | 0x10;
  v17 = v15 + 1;
  do
  {
    if (v16 >= 8)
    {
      v18 = 8;
    }

    else
    {
      v18 = v16;
    }

    *(a1 + v17) = (-256 >> (8 - v18)) & *(a1 + v17) | (0xFFu >> (8 - v18)) & (a4 >> (24 - v16));
    ++v17;
    v16 -= v18;
  }

  while (v16);
  if (a3)
  {
    v19 = v10 + a3 <= 8 ? a3 : 8 - v10;
    *(a1 + v9) = *(a1 + v9) & ~(0xFFu >> (8 - v19) << v10) | (((0xFFu >> (8 - v19)) & a5) << v10);
    v20 = a3 - v19;
    if (a3 != v19)
    {
      v21 = v9 + 1;
      do
      {
        if (v20 >= 8)
        {
          v22 = 8;
        }

        else
        {
          v22 = v20;
        }

        *(a1 + v21) = (0xFFu >> (8 - v22)) & (a5 >> (a3 - v20)) | (-256 >> (8 - v22)) & *(a1 + v21);
        ++v21;
        v20 -= v22;
      }

      while (v20);
    }
  }

  return 1;
}

void sub_1AE77497C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
    if ((v29 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v29)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v28);
  goto LABEL_6;
}

void sub_1AE774A30(uint64_t *a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = *(v1 + 7);
    v4 = *(v1 + 20);
    v6 = *(v1 + 24);
    v5 = *(v1 + 32);
    if (v5)
    {
      free(v5);
      v1 = *a1;
    }

    v7 = *(v1 + 40);
    if (v7)
    {
      free(v7);
    }

    if (v6)
    {
      if (v4)
      {
        v8 = v3 == 0;
      }

      else
      {
        v8 = 1;
      }

      if (!v8)
      {
        v10 = 0;
        v11 = 0xFFFFFFFFFFFFFFFFLL >> -v3;
        do
        {
          v12 = &v6[(v10 + 24) >> 3];
          v13 = v12 & 0xFFFFFFFFFFFFFFF8;
          v14 = v10 & 7 | (8 * (v12 & 7));
          v15 = *(v12 & 0xFFFFFFFFFFFFFFF8) >> v14;
          if ((v14 + v3) >= 0x41)
          {
            v15 |= *(v13 + 8) << -v14;
          }

          if ((v15 & v11) != 0)
          {
            free((v15 & v11));
          }

          v10 += v3 + 24;
          --v4;
        }

        while (v4);
      }

      free(v6);
    }

    v9 = *a1;
    *(v9 + 7) = 64;
    *(v9 + 20) = 0;
    *(v9 + 12) = 24;
    *(v9 + 32) = 0;
    *(v9 + 40) = 0;
    *(v9 + 24) = 0;
  }
}

unint64_t sub_1AE774B40(unint64_t result, int *a2, unsigned int a3, uint64_t a4, __n128 a5)
{
  v5 = *result;
  if (*result)
  {
    v6 = *(v5 + 5);
    if (v6 >= a3)
    {
      v7 = *(v5 + 6);
      if (!a3)
      {
        result = *(v5 + 32);
        if (!result)
        {
          return result;
        }

        v27 = 0;
        v25 = a4;
        v23 = &v27;
        v20 = result + 4;
        v21 = 1;
        v22 = v7;
        v24 = 1;
        return sub_1AE774C98(result, v21, v22, v23, v24, v20, v25, a5);
      }

      v8 = *(v5 + 24);
      if (v8)
      {
        v9 = *(v5 + 16) == 0;
      }

      else
      {
        v9 = 1;
      }

      if (!v9)
      {
        v12 = *(v5 + 7);
        v13 = *(v5 + 20);
        v26 = 0;
        if (!*(v5 + 40))
        {
          v14 = result;
          v15 = a2;
          v16 = malloc_type_malloc(0x30uLL, 0x100004052888210uLL);
          a2 = v15;
          v17 = v16;
          result = v14;
          *(v5 + 40) = v17;
          if (v17)
          {
            *&v18 = -1;
            *(&v18 + 1) = -1;
            v17[1] = v18;
            v17[2] = v18;
            *v17 = v18;
          }
        }

        v19 = a2;
        result = sub_1AE77538C(v8, v13, v12, *(*result + 40), *a2, 0, &v26);
        if (result)
        {
          result = v26;
          v20 = v26 + ((6 * v6 + 4) >> 3) + 3;
          v21 = v6;
          v22 = v7;
          v23 = v19;
          v24 = a3;
          v25 = a4;
          return sub_1AE774C98(result, v21, v22, v23, v24, v20, v25, a5);
        }
      }
    }
  }

  return result;
}

uint64_t sub_1AE774C98(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, __n128 a8)
{
  v10 = 0;
  v11 = 0;
  v12 = a1 + 3;
  v13 = (a3 + 31) & 0xFFFFFFF8;
  v14 = (a5 - 1);
  v15 = 1;
  v16 = 1;
  while (1)
  {
    if (v10)
    {
      result = 24;
    }

    else
    {
      result = 0;
    }

    v18 = (((3 * v10) >> 2) & 0x1FFFFFFF) + v12;
    v19 = *(v18 & 0xFFFFFFFFFFFFFFFCLL) >> ((6 * v10) & 6 | (8 * (v18 & 3)));
    v20 = v10 + 1;
    if (v10 + 1 >= a2)
    {
      v25 = 0;
    }

    else
    {
      v21 = 6 * v10 + 3;
      v22 = (v21 >> 3) + v12;
      v23 = v21 & 7 | (8 * (v22 & 3));
      v24 = *(v22 & 0xFFFFFFFFFFFFFFFCLL) >> v23;
      if (v23 >= 0x1E)
      {
        v24 |= *((v22 & 0xFFFFFFFFFFFFFFFCLL) + 4) << -v23;
      }

      v25 = 4 * (v24 & 7);
    }

    v26 = 4 * v19;
    v27 = v26 & 0x1C;
    v28 = (v26 & 0x1C) + result;
    v29 = ((v26 & 0x1C) + result + v25 + 7) & 0xF8;
    if (!v10)
    {
      if ((v26 & 0x1C) == 0)
      {
        if (!v25)
        {
          return result;
        }

        v11 = 0;
        v38 = 0;
        v45 = 0;
        v46 = 0;
        v47 = 1;
        v37 = 1;
        if (v15)
        {
          goto LABEL_61;
        }

        goto LABEL_66;
      }

      v11 = 0;
      v38 = 0;
      v37 = 1;
      if (v15)
      {
        goto LABEL_42;
      }

      goto LABEL_56;
    }

    v30 = ((v29 * v11) >> 3) + a6;
    v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL);
    v32 = 8 * (v30 & 3);
    v33 = *v31 >> v32;
    if (v32 >= 9)
    {
      v33 |= v31[1] << -v32;
    }

    v34 = *(a4 + 4 * v10);
    v35 = v15 - 1;
    v36 = v33 & 0xFFFFFF;
    if (v36 > v34)
    {
      v37 = 0;
      if ((v26 & 0x1C) != 0)
      {
        goto LABEL_38;
      }

      goto LABEL_68;
    }

    if (v36 == v34)
    {
      v39 = v11;
      v40 = *(a4 + 4 * v10);
      v35 = v11;
    }

    else
    {
      v41 = ((v29 * v35) >> 3) + a6;
      v42 = v41 & 0xFFFFFFFFFFFFFFFCLL;
      v43 = 8 * (v41 & 3);
      v44 = *(v41 & 0xFFFFFFFFFFFFFFFCLL) >> v43;
      if (v43 >= 9)
      {
        v44 |= *(v42 + 4) << -v43;
      }

      v40 = v44 & 0xFFFFFF;
      if ((v44 & 0xFFFFFFu) < v34)
      {
        v37 = 0;
        v11 = v15;
        if ((v26 & 0x1C) != 0)
        {
          goto LABEL_38;
        }

        goto LABEL_68;
      }

      if (v40 == v34)
      {
        v39 = v15 - 1;
      }

      else
      {
        v39 = v11;
      }
    }

    if (v39 + 1 >= v35)
    {
      v11 = v35;
LABEL_35:
      v48 = v40 == v34;
      v37 = v40 == v34;
      if (!v48)
      {
        v11 = v35;
      }

      if ((v26 & 0x1C) != 0)
      {
        goto LABEL_38;
      }

LABEL_68:
      v38 = 0;
      v45 = 0;
      v47 = 1;
      if (!v25)
      {
        goto LABEL_69;
      }

LABEL_57:
      if (v11)
      {
        v61 = ((v28 + (v11 - 1) * v29) >> 3) + a6;
        v62 = v61 & 0xFFFFFFFFFFFFFFFCLL;
        v63 = v26 & 4 | (8 * (v61 & 3));
        v64 = *(v61 & 0xFFFFFFFFFFFFFFFCLL) >> v63;
        if (v63 + v25 >= 0x21)
        {
          v64 |= *(v62 + 4) << -v63;
        }

        v46 = v64 & (0xFFFFFFFF >> -v25);
        if (v11 < v15)
        {
LABEL_61:
          v65 = ((v28 + v11 * v29) >> 3) + a6;
          v66 = v26 & 4 | (8 * (v65 & 3));
          v67 = *(v65 & 0xFFFFFFFFFFFFFFFCLL) >> v66;
          if (v66 + v25 >= 0x21)
          {
            v67 |= *((v65 & 0xFFFFFFFFFFFFFFFCLL) + 4) << -v66;
          }

          if (v37)
          {
            v68 = 0;
            v15 = v67 & (0xFFFFFFFF >> -v25);
            v11 = v46;
            goto LABEL_71;
          }

          return result;
        }
      }

      else
      {
        v46 = 0;
        if (v15)
        {
          goto LABEL_61;
        }
      }

LABEL_66:
      v68 = 0;
      goto LABEL_70;
    }

    while (1)
    {
      v11 = (v39 + v35) >> 1;
      v57 = ((v11 * v29) >> 3) + a6;
      v58 = v57 & 0xFFFFFFFFFFFFFFFCLL;
      v59 = 8 * (v57 & 3);
      v60 = *(v57 & 0xFFFFFFFFFFFFFFFCLL) >> v59;
      if (v59 >= 9)
      {
        v60 |= *(v58 + 4) << -v59;
      }

      v40 = v60 & 0xFFFFFF;
      if (v40 <= v34)
      {
        break;
      }

      v35 = (v39 + v35) >> 1;
LABEL_47:
      if (v39 + 1 >= v35)
      {
        goto LABEL_35;
      }
    }

    if (v40 != v34)
    {
      if (v40 < v34)
      {
        v39 = (v39 + v35) >> 1;
      }

      goto LABEL_47;
    }

    v37 = 1;
    if ((v26 & 0x1C) == 0)
    {
      goto LABEL_68;
    }

LABEL_38:
    if (!v11)
    {
      v38 = 0;
      if (v15)
      {
        goto LABEL_42;
      }

LABEL_56:
      v47 = 0;
      v45 = v38;
      if (!v25)
      {
        goto LABEL_69;
      }

      goto LABEL_57;
    }

    v49 = ((result + (v11 - 1) * v29) >> 3) + a6;
    v50 = v49 & 0xFFFFFFFFFFFFFFFCLL;
    v51 = 8 * (v49 & 3);
    v52 = *(v49 & 0xFFFFFFFFFFFFFFFCLL) >> v51;
    if (v51 + (v26 & 0x1C) >= 0x21)
    {
      v52 |= *(v50 + 4) << -v51;
    }

    v38 = v52 & (0xFFFFFFFF >> -v27);
    if (v11 >= v15)
    {
      goto LABEL_56;
    }

LABEL_42:
    v53 = ((result + v11 * v29) >> 3) + a6;
    v54 = (v53 & 0xFFFFFFFFFFFFFFFCLL);
    v55 = 8 * (v53 & 3);
    v56 = *v54 >> v55;
    if (v55 + (v26 & 0x1C) >= 0x21)
    {
      v56 |= v54[1] << -v55;
    }

    v47 = 0;
    v45 = v56 & (0xFFFFFFFF >> -v27);
    if (v25)
    {
      goto LABEL_57;
    }

LABEL_69:
    v46 = 0;
    v68 = 1;
LABEL_70:
    v15 = v46;
    v11 = v46;
    if (!v37)
    {
      return result;
    }

LABEL_71:
    v69 = a6 + ((v29 * v16) >> 3);
    if (v10 == v14)
    {
      v76 = v45 - v38;
      if (v45 > v38)
      {
        if (a3)
        {
          v77 = 8 * ((a3 + 31) >> 3) * v38;
          do
          {
            v82 = (v77 >> 3) + v69;
            v83 = v82 & 0xFFFFFFFFFFFFFFFCLL;
            v84 = 8 * (v82 & 3);
            v85 = *(v82 & 0xFFFFFFFFFFFFFFFCLL) >> v84;
            if (v84 + a3 >= 0x21)
            {
              v85 |= *(v83 + 4) << -v84;
            }

            v86 = ((a3 + v77) >> 3) + v69;
            v87 = v86 & 0xFFFFFFFFFFFFFFFCLL;
            v88 = a3 & 7 | (8 * (v86 & 3));
            v89 = *(v86 & 0xFFFFFFFFFFFFFFFCLL) >> v88;
            if (v88 >= 9)
            {
              v89 |= *(v87 + 4) << -v88;
            }

            v78 = (v89 >> 22) & 3;
            v79 = (v89 & 0x3FFFFF);
            v80 = v79 * 0.0078125;
            if (v78 != 2)
            {
              v80 = (v89 & 0x3FFFFF);
            }

            v81 = v79 * 0.00000095367;
            a8.n128_f32[0] = v79 * 0.000061035;
            if (!v78)
            {
              a8.n128_f32[0] = v81;
            }

            if (((v89 >> 22) & 3) > 1)
            {
              a8.n128_f32[0] = v80;
            }

            result = (*(a7 + 16))(a7, v85 & (0xFFFFFFFF >> -a3), a8);
            v77 += v13;
            --v76;
          }

          while (v76);
        }

        else
        {
          v90 = 24 * v38;
          do
          {
            v92 = (v90 >> 3) + v69;
            v93 = v92 & 0xFFFFFFFFFFFFFFFCLL;
            v94 = 8 * (v92 & 3);
            v95 = *(v92 & 0xFFFFFFFFFFFFFFFCLL) >> v94;
            if (v94 >= 9)
            {
              v95 |= *(v93 + 4) << -v94;
            }

            v96 = (v95 >> 22) & 3;
            a8.n128_f32[0] = (v95 & 0x3FFFFF);
            if (v96 <= 1)
            {
              v91 = a8.n128_f32[0] * 0.00000095367;
              a8.n128_f32[0] = a8.n128_f32[0] * 0.000061035;
              if (!v96)
              {
                a8.n128_f32[0] = v91;
              }
            }

            else if (v96 != 3)
            {
              a8.n128_f32[0] = a8.n128_f32[0] * 0.0078125;
            }

            result = (*(a7 + 16))(a7, 0, a8);
            v90 += 24;
            --v76;
          }

          while (v76);
        }
      }

      return result;
    }

    if (v11 >= v15)
    {
      return result;
    }

    v70 = v29 * (v16 - 1);
    if ((v47 & 1) == 0)
    {
      break;
    }

    v71 = 0;
    if (v68)
    {
      return result;
    }

LABEL_79:
    v74 = ((v70 + v28) >> 3) + a6;
    v75 = v26 & 4 | (8 * (v74 & 3));
    result = (*(v74 & 0xFFFFFFFFFFFFFFFCLL) >> v75);
    if (v75 + v25 >= 0x21)
    {
      result = (*((v74 & 0xFFFFFFFFFFFFFFFCLL) + 4) << -v75) | result;
    }

    a6 = v69 + ((v71 * v13) >> 3);
    v10 = v20;
    v16 = result & (0xFFFFFFFF >> -v25);
    if (!v16)
    {
      return result;
    }
  }

  v72 = ((v70 + result) >> 3) + a6;
  result = 8 * (v72 & 3);
  v73 = *(v72 & 0xFFFFFFFFFFFFFFFCLL) >> result;
  if (result + (v26 & 0x1C) >= 0x21)
  {
    result = -8 * (v72 & 3);
    v73 |= *((v72 & 0xFFFFFFFFFFFFFFFCLL) + 4) << (-8 * (v72 & 3));
  }

  v71 = v73 & (0xFFFFFFFF >> -v27);
  if ((v68 & 1) == 0)
  {
    goto LABEL_79;
  }

  return result;
}

uint64_t sub_1AE77538C(uint64_t a1, unsigned int a2, unsigned int a3, _DWORD *a4, int a5, unsigned int *a6, unint64_t *a7)
{
  v7 = a3 + 24;
  if (a4)
  {
    if (*a4 == a5)
    {
      v8 = 1;
      goto LABEL_14;
    }

    if (a4[2] == a5)
    {
      v8 = 3;
      goto LABEL_14;
    }

    if (a4[4] == a5)
    {
      v8 = 5;
      goto LABEL_14;
    }

    if (a4[6] == a5)
    {
      v8 = 7;
      goto LABEL_14;
    }

    if (a4[8] == a5)
    {
      v8 = 9;
      goto LABEL_14;
    }

    if (a4[10] == a5)
    {
      v8 = 11;
LABEL_14:
      v9 = a4[v8];
      if (v9 == -1 || !a3)
      {
        return 0;
      }

      v10 = v9 * v7;
      v11 = v10 & 7;
      v12 = ((v10 + 24) >> 3) + a1;
      v13 = v12 & 0xFFFFFFFFFFFFFFF8;
      v14 = v11 & 0xFFFFFFFFFFFFFFC7 | (8 * (v12 & 7));
      v15 = *(v12 & 0xFFFFFFFFFFFFFFF8) >> v14;
      if (v14 + a3 >= 0x41)
      {
        v15 |= *(v13 + 8) << -v14;
      }

      v16 = v15 & (0xFFFFFFFFFFFFFFFFLL >> -a3);
      if (!v16)
      {
        return 0;
      }

      if (a6)
      {
        *a6 = v9;
      }

      if (a7)
      {
        *a7 = v16;
      }

      return 1;
    }
  }

  v18 = -1640531573 * a5 % a2;
  if (a3)
  {
    v19 = -1640531573 * a5 % a2;
    while (1)
    {
      v20 = ((v19 * v7 + 24) >> 3) + a1;
      v21 = v20 & 0xFFFFFFFFFFFFFFF8;
      v22 = (v19 * v7) & 7 | (8 * (v20 & 7));
      v23 = *(v20 & 0xFFFFFFFFFFFFFFF8) >> v22;
      if (v22 + a3 >= 0x41)
      {
        v23 |= *(v21 + 8) << -v22;
      }

      v24 = v23 & (0xFFFFFFFFFFFFFFFFLL >> -a3);
      if (!v24)
      {
        result = 0;
        v18 = v19;
        if (a4)
        {
          goto LABEL_38;
        }

        return result;
      }

      v25 = ((v19 * v7) >> 3) + a1;
      v26 = v25 & 0xFFFFFFFFFFFFFFFCLL;
      v27 = (v19 * v7) & 7 | (8 * (v25 & 3));
      v28 = *(v25 & 0xFFFFFFFFFFFFFFFCLL) >> v27;
      if (v27 >= 9)
      {
        v28 |= *(v26 + 4) << -v27;
      }

      if ((v28 & 0xFFFFFF) == a5)
      {
        break;
      }

      if (v19 + 1 == a2)
      {
        v19 = 0;
      }

      else
      {
        ++v19;
      }

      if (v19 == v18)
      {
        goto LABEL_37;
      }
    }

    if (a6)
    {
      *a6 = v19;
    }

    if (a7)
    {
      *a7 = v24;
    }

    result = 1;
    v18 = v19;
    if (a4)
    {
      goto LABEL_38;
    }
  }

  else
  {
LABEL_37:
    result = 0;
    if (a4)
    {
LABEL_38:
      v29 = *(a4 + 1);
      *(a4 + 2) = *a4;
      v30 = *(a4 + 4);
      *(a4 + 6) = v29;
      *(a4 + 5) = v30;
      if (result)
      {
        v31 = v18;
      }

      else
      {
        v31 = -1;
      }

      *a4 = a5;
      a4[1] = v31;
    }
  }

  return result;
}

void sub_1AE7755B8(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4, int a5, unsigned int a6, uint64_t a7, int a8, __n128 a9, unsigned int a10, unsigned int a11, int a12, uint64_t a13, float *a14, float *a15)
{
  if (!a8)
  {
    return;
  }

  v15 = a10;
  if (a10 >= a11)
  {
    return;
  }

  if (a6)
  {
    v16 = 24;
  }

  else
  {
    v16 = 0;
  }

  v17 = (((3 * a6) >> 2) & 0x1FFFFFFF) + a1 + 3;
  LODWORD(v17) = *(v17 & 0xFFFFFFFFFFFFFFFCLL) >> ((6 * a6) & 6 | (8 * (v17 & 3)));
  v18 = 4 * v17;
  v19 = (4 * v17) & 0x1C;
  v118 = a6 + 1;
  if (a6 + 1 >= a2)
  {
    v25 = 0;
  }

  else
  {
    v20 = 6 * a6 + 3;
    v21 = (v20 >> 3) + a1 + 3;
    v22 = v21 & 0xFFFFFFFFFFFFFFFCLL;
    v23 = v20 & 7 | (8 * (v21 & 3));
    v24 = *(v21 & 0xFFFFFFFFFFFFFFFCLL) >> v23;
    if (v23 >= 0x1E)
    {
      v24 |= *(v22 + 4) << -v23;
    }

    v25 = 4 * (v24 & 7);
  }

  v26 = v19 + v16;
  v27 = (v19 + v16 + v25 + 7) & 0xF8;
  if (!a6)
  {
    if (!v19)
    {
      if (!v25)
      {
        return;
      }

      v15 = 0;
      v36 = 0;
      v43 = 0;
      v44 = 0;
      v35 = 1;
      if (a11)
      {
        goto LABEL_61;
      }

      goto LABEL_70;
    }

    v15 = 0;
    v36 = 0;
    v35 = 1;
    if (a11)
    {
      goto LABEL_42;
    }

LABEL_56:
    v43 = v36;
    if (!v25)
    {
      goto LABEL_69;
    }

    goto LABEL_57;
  }

  v28 = *(a4 + 4 * a6);
  v29 = ((v27 * a10) >> 3) + a7;
  v30 = v29 & 0xFFFFFFFFFFFFFFFCLL;
  v31 = 8 * (v29 & 3);
  v32 = *(v29 & 0xFFFFFFFFFFFFFFFCLL) >> v31;
  if (v31 >= 9)
  {
    v32 |= *(v30 + 4) << -v31;
  }

  v33 = v32 & 0xFFFFFF;
  v34 = v33 == v28;
  if (v33 > v28)
  {
    v35 = 0;
    if (v19)
    {
      goto LABEL_38;
    }

    goto LABEL_68;
  }

  v37 = *(a4 + 4 * a6);
  v38 = a10;
  if (!v34)
  {
    v39 = ((v27 * (a11 - 1)) >> 3) + a7;
    v40 = v39 & 0xFFFFFFFFFFFFFFFCLL;
    v41 = 8 * (v39 & 3);
    v42 = *(v39 & 0xFFFFFFFFFFFFFFFCLL) >> v41;
    if (v41 >= 9)
    {
      v42 |= *(v40 + 4) << -v41;
    }

    v37 = v42 & 0xFFFFFF;
    if ((v42 & 0xFFFFFFu) < v28)
    {
      v35 = 0;
      v15 = a11;
      if (v19)
      {
        goto LABEL_38;
      }

      goto LABEL_68;
    }

    if (v37 == v28)
    {
      v15 = a11 - 1;
    }

    v38 = a11 - 1;
  }

  if (v15 + 1 >= v38)
  {
    v45 = v38;
LABEL_34:
    v34 = v37 == v28;
    v35 = v37 == v28;
    if (v34)
    {
      v15 = v45;
    }

    else
    {
      v15 = v38;
    }

    if (v19)
    {
      goto LABEL_38;
    }

LABEL_68:
    v36 = 0;
    v43 = 0;
    if (!v25)
    {
      goto LABEL_69;
    }

    goto LABEL_57;
  }

  while (1)
  {
    v45 = (v15 + v38) >> 1;
    v54 = ((v45 * v27) >> 3) + a7;
    v55 = v54 & 0xFFFFFFFFFFFFFFFCLL;
    v56 = 8 * (v54 & 3);
    v57 = *(v54 & 0xFFFFFFFFFFFFFFFCLL) >> v56;
    if (v56 >= 9)
    {
      v57 |= *(v55 + 4) << -v56;
    }

    v37 = v57 & 0xFFFFFF;
    if (v37 <= v28)
    {
      break;
    }

    v38 = (v15 + v38) >> 1;
LABEL_47:
    if (v15 + 1 >= v38)
    {
      goto LABEL_34;
    }
  }

  if (v37 != v28)
  {
    if (v37 < v28)
    {
      v15 = (v15 + v38) >> 1;
    }

    goto LABEL_47;
  }

  v35 = 1;
  v15 = (v15 + v38) >> 1;
  if (!v19)
  {
    goto LABEL_68;
  }

LABEL_38:
  if (!v15)
  {
    v36 = 0;
    if (a11)
    {
      goto LABEL_42;
    }

    goto LABEL_56;
  }

  v46 = ((v16 + (v15 - 1) * v27) >> 3) + a7;
  v47 = v46 & 0xFFFFFFFFFFFFFFFCLL;
  v48 = 8 * (v46 & 3);
  v49 = *(v46 & 0xFFFFFFFFFFFFFFFCLL) >> v48;
  if (v48 + v19 >= 0x21)
  {
    v49 |= *(v47 + 4) << -v48;
  }

  v36 = v49 & (0xFFFFFFFF >> -v19);
  if (v15 >= a11)
  {
    goto LABEL_56;
  }

LABEL_42:
  v50 = ((v16 + v15 * v27) >> 3) + a7;
  v51 = v50 & 0xFFFFFFFFFFFFFFFCLL;
  v52 = 8 * (v50 & 3);
  v53 = *(v50 & 0xFFFFFFFFFFFFFFFCLL) >> v52;
  if (v52 + v19 >= 0x21)
  {
    v53 |= *(v51 + 4) << -v52;
  }

  v43 = v53 & (0xFFFFFFFF >> -v19);
  if (!v25)
  {
LABEL_69:
    v44 = 0;
    goto LABEL_70;
  }

LABEL_57:
  if (!v15)
  {
    v44 = 0;
    if (a11)
    {
      goto LABEL_61;
    }

LABEL_70:
    v66 = v44;
    if (v35)
    {
      goto LABEL_71;
    }

    return;
  }

  v58 = ((v26 + (v15 - 1) * v27) >> 3) + a7;
  v59 = v58 & 0xFFFFFFFFFFFFFFFCLL;
  v60 = v18 & 4 | (8 * (v58 & 3));
  v61 = *(v58 & 0xFFFFFFFFFFFFFFFCLL) >> v60;
  if (v60 + v25 >= 0x21)
  {
    v61 |= *(v59 + 4) << -v60;
  }

  v44 = v61 & (0xFFFFFFFF >> -v25);
  if (v15 >= a11)
  {
    goto LABEL_70;
  }

LABEL_61:
  v62 = ((v26 + v15 * v27) >> 3) + a7;
  v63 = v62 & 0xFFFFFFFFFFFFFFFCLL;
  v64 = v18 & 4 | (8 * (v62 & 3));
  v65 = *(v62 & 0xFFFFFFFFFFFFFFFCLL) >> v64;
  if (v64 + v25 >= 0x21)
  {
    v65 |= *(v63 + 4) << -v64;
  }

  if (v35)
  {
    v66 = v65 & (0xFFFFFFFF >> -v25);
LABEL_71:
    v110 = v66;
    v116 = v43;
    v117 = v36;
    v111 = v44;
    v114 = a3 + 31;
    v67 = (a3 + 31) & 0xFFFFFFF8;
    v68 = a7 + ((v27 * a8) >> 3);
    v69 = a3;
    if (a6 + 2 == a5)
    {
      if (a15)
      {
        v70 = v116 - v36;
        if (v116 > v36)
        {
          v71 = a3;
          v72 = 0xFFFFFFFF >> -a3;
          v73 = a3 & 7;
          v74 = 8 * v36 * (v114 >> 3);
          while (1)
          {
            if (a3)
            {
              v75 = (v74 >> 3) + v68;
              v76 = v75 & 0xFFFFFFFFFFFFFFFCLL;
              v77 = 8 * (v75 & 3);
              v78 = *(v75 & 0xFFFFFFFFFFFFFFFCLL) >> v77;
              if ((v77 + v71) >= 0x21)
              {
                v78 |= *(v76 + 4) << -v77;
              }

              v79 = v78 & v72;
            }

            else
            {
              v79 = 0;
            }

            v80 = ((a3 + v74) >> 3) + v68;
            v81 = v80 & 0xFFFFFFFFFFFFFFFCLL;
            v82 = v73 & 0xFFFFFFFFFFFFFFE7 | (8 * (v80 & 3));
            v83 = *(v80 & 0xFFFFFFFFFFFFFFFCLL) >> v82;
            if (v82 >= 9)
            {
              v83 |= *(v81 + 4) << -v82;
            }

            v84 = (v83 >> 22) & 3;
            v85 = (v83 & 0x3FFFFF);
            v86 = v85 * 0.0078125;
            if (v84 != 2)
            {
              v86 = (v83 & 0x3FFFFF);
            }

            v87 = v85 * 0.00000095367;
            a9.n128_f32[0] = v85 * 0.000061035;
            if (!v84)
            {
              a9.n128_f32[0] = v87;
            }

            v88 = ((v83 >> 22) & 3) <= 1 ? a9.n128_f32[0] : v86;
            v119 = v79;
            v120[0] = a12;
            v89 = *(a13 + 24);
            if (!v89)
            {
              break;
            }

            *a15 = *a15 + ((*(*v89 + 48))(v89, v120, &v119, a9) * v88);
            v74 += v67;
            --v70;
            a3 = v69;
            if (!v70)
            {
              goto LABEL_91;
            }
          }

LABEL_115:
          sub_1AE60819C();
        }
      }
    }

LABEL_91:
    if (v118 == a5)
    {
      if (a14)
      {
        v90 = v116 - v117;
        if (v116 > v117)
        {
          v91 = a3;
          v92 = 0xFFFFFFFF >> -a3;
          v93 = a3 & 7;
          v94 = 8 * v117 * (v114 >> 3);
          while (1)
          {
            if (a3)
            {
              v95 = (v94 >> 3) + v68;
              v96 = v95 & 0xFFFFFFFFFFFFFFFCLL;
              v97 = 8 * (v95 & 3);
              v98 = *(v95 & 0xFFFFFFFFFFFFFFFCLL) >> v97;
              if ((v97 + v91) >= 0x21)
              {
                v98 |= *(v96 + 4) << -v97;
              }

              v99 = v98 & v92;
            }

            else
            {
              v99 = 0;
            }

            v100 = ((a3 + v94) >> 3) + v68;
            v101 = v100 & 0xFFFFFFFFFFFFFFFCLL;
            v102 = v93 & 0xFFFFFFFFFFFFFFE7 | (8 * (v100 & 3));
            v103 = *(v100 & 0xFFFFFFFFFFFFFFFCLL) >> v102;
            if (v102 >= 9)
            {
              v103 |= *(v101 + 4) << -v102;
            }

            v104 = (v103 >> 22) & 3;
            v105 = (v103 & 0x3FFFFF);
            v106 = v105 * 0.0078125;
            if (v104 != 2)
            {
              v106 = (v103 & 0x3FFFFF);
            }

            v107 = v105 * 0.00000095367;
            a9.n128_f32[0] = v105 * 0.000061035;
            if (!v104)
            {
              a9.n128_f32[0] = v107;
            }

            v108 = ((v103 >> 22) & 3) <= 1 ? a9.n128_f32[0] : v106;
            v119 = v99;
            v120[0] = a12;
            v109 = *(a13 + 24);
            if (!v109)
            {
              break;
            }

            *a14 = *a14 + ((*(*v109 + 48))(v109, v120, &v119, a9) * v108);
            v94 += v67;
            --v90;
            a3 = v69;
            if (!v90)
            {
              return;
            }
          }

          goto LABEL_115;
        }
      }
    }

    else if (v111 < v110)
    {
      sub_1AE7755B8(a1, a2);
    }
  }
}

uint64_t sub_1AE775E40(uint64_t result, int *a2, unsigned int a3, uint64_t a4, __n128 a5)
{
  v5 = *result;
  if (*result)
  {
    v6 = *(v5 + 5);
    if (a3 + 1 <= v6)
    {
      v9 = *(v5 + 7);
      v30 = *(v5 + 6);
      v10 = *(v5 + 16);
      v11 = *(v5 + 20);
      v32 = 0;
      v12 = *(v5 + 24);
      if (a3)
      {
        if (v12)
        {
          v13 = v10 == 0;
        }

        else
        {
          v13 = 1;
        }

        if (!v13)
        {
          v31 = 0;
          if (!*(v5 + 40))
          {
            v15 = result;
            v16 = malloc_type_malloc(0x30uLL, 0x100004052888210uLL);
            result = v15;
            *(v5 + 40) = v16;
            if (v16)
            {
              *&v17 = -1;
              *(&v17 + 1) = -1;
              v16[1] = v17;
              v16[2] = v17;
              *v16 = v17;
            }
          }

          result = sub_1AE77538C(v12, v11, v9, *(*result + 40), *a2, &v32, &v31);
          if (result)
          {
            return sub_1AE776054(v31, v6, v30, *a2, a2, a3, v31 + ((6 * v6 + 4) >> 3) + 3, a4, v18);
          }
        }
      }

      else
      {
        if (v11)
        {
          v19 = v9 == 0;
        }

        else
        {
          v19 = 1;
        }

        if (!v19)
        {
          v20 = 0;
          v21 = 0xFFFFFFFFFFFFFFFFLL >> -v9;
          do
          {
            v22 = ((v20 + 24) >> 3) + v12;
            v23 = v22 & 0xFFFFFFFFFFFFFFF8;
            v24 = v20 & 7 | (8 * (v22 & 7));
            v25 = *(v22 & 0xFFFFFFFFFFFFFFF8) >> v24;
            if ((v24 + v9) >= 0x41)
            {
              v25 |= *(v23 + 8) << -v24;
            }

            result = v25 & v21;
            if ((v25 & v21) != 0)
            {
              v26 = (v20 >> 3) + v12;
              v27 = v26 & 0xFFFFFFFFFFFFFFFCLL;
              v28 = v20 & 7 | (8 * (v26 & 3));
              v29 = *(v26 & 0xFFFFFFFFFFFFFFFCLL) >> v28;
              if (v28 >= 9)
              {
                v29 |= *(v27 + 4) << -v28;
              }

              result = sub_1AE776054(result, v6, v30, v29 & 0xFFFFFF, a2, 0, result + ((6 * v6 + 4) >> 3) + 3, a4, a5);
            }

            v20 += v9 + 24;
            --v11;
          }

          while (v11);
        }
      }
    }
  }

  return result;
}

uint64_t sub_1AE776054(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8, __n128 a9)
{
  v11 = 0;
  v12 = 0;
  v13 = a1 + 3;
  v14 = a3 + 31;
  v131 = (a3 + 31) & 0xFFFFFFF8;
  v15 = 1;
  v16 = 1;
  v17 = a6;
  while (1)
  {
    if (v11 >= v17)
    {
      result = 0;
    }

    else
    {
      result = *(a5 + 4 * v11);
    }

    if (v11)
    {
      v19 = 24;
    }

    else
    {
      v19 = 0;
    }

    v20 = (((3 * v11) >> 2) & 0x1FFFFFFF) + v13;
    v21 = *(v20 & 0xFFFFFFFFFFFFFFFCLL) >> ((6 * v11) & 6 | (8 * (v20 & 3)));
    if (v11 + 1 >= a2)
    {
      v26 = 0;
    }

    else
    {
      v22 = 6 * v11 + 3;
      v23 = (v22 >> 3) + v13;
      v24 = v22 & 7 | (8 * (v23 & 3));
      v25 = *(v23 & 0xFFFFFFFFFFFFFFFCLL) >> v24;
      if (v24 >= 0x1E)
      {
        v25 |= *((v23 & 0xFFFFFFFFFFFFFFFCLL) + 4) << -v24;
      }

      v26 = 4 * (v25 & 7);
    }

    v27 = 4 * v21;
    v28 = (4 * v21) & 0x1C;
    v29 = v28 + v19;
    v30 = ((v27 & 0x1C) + v19 + v26 + 7) & 0xF8;
    v31 = v30 * (v16 - 1);
    v128 = v19;
    if (v28)
    {
      v32 = ((v31 + v19) >> 3) + a7;
      v33 = v32 & 0xFFFFFFFFFFFFFFFCLL;
      v34 = 8 * (v32 & 3);
      v35 = *(v32 & 0xFFFFFFFFFFFFFFFCLL) >> v34;
      if (v34 + v28 >= 0x21)
      {
        v35 |= *(v33 + 4) << -v34;
      }

      v36 = v35 & (0xFFFFFFFF >> -v28);
    }

    else
    {
      v36 = 0;
    }

    v37 = a7 + ((v30 * v16) >> 3);
    if (v11 == v17)
    {
      if (!v11)
      {
        if (v36)
        {
          if (a3)
          {
            v105 = 0;
            do
            {
              v110 = (v105 >> 3) + v37;
              v111 = v110 & 0xFFFFFFFFFFFFFFFCLL;
              v112 = 8 * (v110 & 3);
              v113 = *(v110 & 0xFFFFFFFFFFFFFFFCLL) >> v112;
              if (v112 + a3 >= 0x21)
              {
                v113 |= *(v111 + 4) << -v112;
              }

              v114 = ((a3 + v105) >> 3) + v37;
              v115 = v114 & 0xFFFFFFFFFFFFFFFCLL;
              v116 = a3 & 7 | (8 * (v114 & 3));
              v117 = *(v114 & 0xFFFFFFFFFFFFFFFCLL) >> v116;
              if (v116 >= 9)
              {
                v117 |= *(v115 + 4) << -v116;
              }

              v106 = (v117 >> 22) & 3;
              v107 = (v117 & 0x3FFFFF);
              v108 = v107 * 0.0078125;
              if (v106 != 2)
              {
                v108 = (v117 & 0x3FFFFF);
              }

              v109 = v107 * 0.00000095367;
              a9.n128_f32[0] = v107 * 0.000061035;
              if (!v106)
              {
                a9.n128_f32[0] = v109;
              }

              if (((v117 >> 22) & 3) > 1)
              {
                a9.n128_f32[0] = v108;
              }

              result = (*(a8 + 16))(a8, a4, v113 & (0xFFFFFFFF >> -a3), a9);
              v105 += v131;
              --v36;
            }

            while (v36);
          }

          else
          {
            v118 = 0;
            do
            {
              v120 = (v118 >> 3) + v37;
              v121 = v120 & 0xFFFFFFFFFFFFFFFCLL;
              v122 = 8 * (v120 & 3);
              v123 = *(v120 & 0xFFFFFFFFFFFFFFFCLL) >> v122;
              if (v122 >= 9)
              {
                v123 |= *(v121 + 4) << -v122;
              }

              v124 = (v123 >> 22) & 3;
              a9.n128_f32[0] = (v123 & 0x3FFFFF);
              if (v124 <= 1)
              {
                v119 = a9.n128_f32[0] * 0.00000095367;
                a9.n128_f32[0] = a9.n128_f32[0] * 0.000061035;
                if (!v124)
                {
                  a9.n128_f32[0] = v119;
                }
              }

              else if (v124 != 3)
              {
                a9.n128_f32[0] = a9.n128_f32[0] * 0.0078125;
              }

              result = (*(a8 + 16))(a8, a4, 0, a9);
              v118 += 24;
              --v36;
            }

            while (v36);
          }
        }

        return result;
      }

      if (v12 >= v15)
      {
        return result;
      }

      v126 = v15;
      v127 = 0xFFFFFFFF >> -v28;
      v125 = v14 & 0xFFFFFFF8;
      while (1)
      {
        v70 = ((v12 * v30) >> 3) + a7;
        v71 = (v70 & 0xFFFFFFFFFFFFFFFCLL);
        v72 = 8 * (v70 & 3);
        v73 = *v71 >> v72;
        if (v72 >= 9)
        {
          v73 |= v71[1] << -v72;
        }

        if (v28)
        {
          v74 = ((v12 * v30 + v128) >> 3) + a7;
          v75 = v74 & 0xFFFFFFFFFFFFFFFCLL;
          v76 = 8 * (v74 & 3);
          v77 = *(v74 & 0xFFFFFFFFFFFFFFFCLL) >> v76;
          if ((v76 + v28) >= 0x21)
          {
            v77 |= *(v75 + 4) << -v76;
          }

          v78 = v77 & v127;
          if (!v12)
          {
            goto LABEL_85;
          }
        }

        else
        {
          v78 = 0;
          if (!v12)
          {
            goto LABEL_85;
          }
        }

        if (v28)
        {
          v79 = ((v128 + (v12 - 1) * v30) >> 3) + a7;
          v80 = v79 & 0xFFFFFFFFFFFFFFFCLL;
          v81 = 8 * (v79 & 3);
          v82 = *(v79 & 0xFFFFFFFFFFFFFFFCLL) >> v81;
          if ((v81 + v28) >= 0x21)
          {
            v82 |= *(v80 + 4) << -v81;
          }

          v83 = v82 & v127;
          v84 = v78 - v83;
          if (v78 <= v83)
          {
            goto LABEL_71;
          }

LABEL_86:
          if (a3)
          {
            v85 = v125 * v83;
            do
            {
              v90 = (v85 >> 3) + v37;
              v91 = v90 & 0xFFFFFFFFFFFFFFFCLL;
              v92 = 8 * (v90 & 3);
              v93 = *(v90 & 0xFFFFFFFFFFFFFFFCLL) >> v92;
              if (v92 + a3 >= 0x21)
              {
                v93 |= *(v91 + 4) << -v92;
              }

              v94 = ((a3 + v85) >> 3) + v37;
              v95 = v94 & 0xFFFFFFFFFFFFFFFCLL;
              v96 = a3 & 7 | (8 * (v94 & 3));
              v97 = *(v94 & 0xFFFFFFFFFFFFFFFCLL) >> v96;
              if (v96 >= 9)
              {
                v97 |= *(v95 + 4) << -v96;
              }

              v86 = (v97 >> 22) & 3;
              v87 = (v97 & 0x3FFFFF);
              v88 = v87 * 0.0078125;
              if (v86 != 2)
              {
                v88 = (v97 & 0x3FFFFF);
              }

              v89 = v87 * 0.00000095367;
              a9.n128_f32[0] = v87 * 0.000061035;
              if (!v86)
              {
                a9.n128_f32[0] = v89;
              }

              if (((v97 >> 22) & 3) > 1)
              {
                a9.n128_f32[0] = v88;
              }

              result = (*(a8 + 16))(a8, v73 & 0xFFFFFF, v93 & (0xFFFFFFFF >> -a3), a9);
              v85 += v131;
              --v84;
            }

            while (v84);
          }

          else
          {
            v98 = 24 * v83;
            do
            {
              v100 = (v98 >> 3) + v37;
              v101 = v100 & 0xFFFFFFFFFFFFFFFCLL;
              v102 = 8 * (v100 & 3);
              v103 = *(v100 & 0xFFFFFFFFFFFFFFFCLL) >> v102;
              if (v102 >= 9)
              {
                v103 |= *(v101 + 4) << -v102;
              }

              v104 = (v103 >> 22) & 3;
              a9.n128_f32[0] = (v103 & 0x3FFFFF);
              if (v104 <= 1)
              {
                v99 = a9.n128_f32[0] * 0.00000095367;
                a9.n128_f32[0] = a9.n128_f32[0] * 0.000061035;
                if (!v104)
                {
                  a9.n128_f32[0] = v99;
                }
              }

              else if (v104 != 3)
              {
                a9.n128_f32[0] = a9.n128_f32[0] * 0.0078125;
              }

              result = (*(a8 + 16))(a8, v73 & 0xFFFFFF, 0, a9);
              v98 += 24;
              --v84;
            }

            while (v84);
          }

          goto LABEL_71;
        }

LABEL_85:
        v83 = 0;
        v84 = v78;
        if (v78)
        {
          goto LABEL_86;
        }

LABEL_71:
        if (++v12 == v126)
        {
          return result;
        }
      }
    }

    if (!v11)
    {
      if (!v26)
      {
        return result;
      }

      v44 = 0;
      v12 = 0;
      result = 1;
      if (!v15)
      {
        return result;
      }

      goto LABEL_58;
    }

    v38 = ((v30 * v12) >> 3) + a7;
    v39 = v38 & 0xFFFFFFFFFFFFFFFCLL;
    v40 = 8 * (v38 & 3);
    v41 = *(v38 & 0xFFFFFFFFFFFFFFFCLL) >> v40;
    if (v40 >= 9)
    {
      v41 |= *(v39 + 4) << -v40;
    }

    v42 = v15 - 1;
    v43 = v41 & 0xFFFFFF;
    if (v43 > result)
    {
      result = 0;
      v44 = v12;
      if (!v26)
      {
        return result;
      }

      goto LABEL_43;
    }

    if (v43 == result)
    {
      v45 = result;
      v42 = v12;
    }

    else
    {
      v46 = ((v42 * v30) >> 3) + a7;
      v47 = v46 & 0xFFFFFFFFFFFFFFFCLL;
      v48 = 8 * (v46 & 3);
      v49 = *(v46 & 0xFFFFFFFFFFFFFFFCLL) >> v48;
      if (v48 >= 9)
      {
        v49 |= *(v47 + 4) << -v48;
      }

      v45 = v49 & 0xFFFFFF;
      if ((v49 & 0xFFFFFFu) < result)
      {
        result = 0;
        v44 = v15;
        if (!v26)
        {
          return result;
        }

        goto LABEL_43;
      }

      if (v45 == result)
      {
        v12 = v15 - 1;
      }
    }

    if (v12 + 1 >= v42)
    {
      break;
    }

    while (1)
    {
      v44 = (v12 + v42) >> 1;
      v55 = ((v44 * v30) >> 3) + a7;
      v56 = v55 & 0xFFFFFFFFFFFFFFFCLL;
      v57 = 8 * (v55 & 3);
      v58 = *(v55 & 0xFFFFFFFFFFFFFFFCLL) >> v57;
      if (v57 >= 9)
      {
        v58 |= *(v56 + 4) << -v57;
      }

      v45 = v58 & 0xFFFFFF;
      if (v45 <= result)
      {
        break;
      }

      v42 = (v12 + v42) >> 1;
LABEL_49:
      if (v12 + 1 >= v42)
      {
        goto LABEL_40;
      }
    }

    if (v45 != result)
    {
      if (v45 < result)
      {
        v12 = (v12 + v42) >> 1;
      }

      goto LABEL_49;
    }

    result = 1;
    if (!v26)
    {
      return result;
    }

LABEL_43:
    if (v44)
    {
      v51 = ((v29 + (v44 - 1) * v30) >> 3) + a7;
      v52 = v51 & 0xFFFFFFFFFFFFFFFCLL;
      v53 = v27 & 4 | (8 * (v51 & 3));
      v54 = *(v51 & 0xFFFFFFFFFFFFFFFCLL) >> v53;
      if (v53 + v26 >= 0x21)
      {
        v54 |= *(v52 + 4) << -v53;
      }

      v12 = v54 & (0xFFFFFFFF >> -v26);
      if (v44 >= v15)
      {
        return result;
      }
    }

    else
    {
      v12 = 0;
      if (!v15)
      {
        return result;
      }
    }

LABEL_58:
    v59 = ((v29 + v44 * v30) >> 3) + a7;
    v60 = v59 & 0xFFFFFFFFFFFFFFFCLL;
    v61 = v27 & 4;
    v62 = v61 & 0xFFFFFFFFFFFFFFE7 | (8 * (v59 & 3));
    v63 = *(v59 & 0xFFFFFFFFFFFFFFFCLL) >> v62;
    v64 = v26;
    if (v62 + v26 >= 0x21)
    {
      v63 |= *(v60 + 4) << -v62;
    }

    v65 = 0xFFFFFFFF >> -v26;
    v15 = v63 & v65;
    if (v12 < (v63 & v65))
    {
      result = result;
    }

    else
    {
      result = 0;
    }

    if (result == 1)
    {
      v66 = ((v31 + v29) >> 3) + a7;
      v67 = v66 & 0xFFFFFFFFFFFFFFFCLL;
      v68 = v61 & 0xFFFFFFFFFFFFFFE7 | (8 * (v66 & 3));
      v69 = *(v66 & 0xFFFFFFFFFFFFFFFCLL) >> v68;
      result = v68 + v64;
      if (v68 + v64 >= 0x21)
      {
        v69 |= *(v67 + 4) << -v68;
      }

      a7 = v37 + ((v36 * v131) >> 3);
      ++v11;
      v16 = v69 & v65;
      if ((v69 & v65) != 0)
      {
        continue;
      }
    }

    return result;
  }

  v44 = v42;
LABEL_40:
  v50 = v45 == result;
  result = v45 == result;
  if (!v50)
  {
    v44 = v42;
  }

  if (v26)
  {
    goto LABEL_43;
  }

  return result;
}