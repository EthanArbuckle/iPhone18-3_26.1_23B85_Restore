void sub_1D0C389D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t raven::GnssSvDatabase::PopulateEphemFromAnchorPoints(uint64_t a1, uint64_t a2)
{
  v40 = *MEMORY[0x1E69E9840];
  if ((sub_1D0C39154(a2) & 1) == 0)
  {
    LOWORD(__p[0]) = 12;
    LOBYTE(v37[0]) = 4;
    cnprint::CNPrinter::Print(__p, v37, "#svdb,PopulateEphemFromAnchorPoints,Malformed sv_info", v3, v4, v5, v6, v7, v34);
  }

  if (*(a2 + 48))
  {
    v8 = *(a2 + 24);
    if (*(a2 + 32) - v8 == 128)
    {
      v10 = *v8;
      v9 = v8 + 4;
      v11 = v10;
      v12 = 1;
      while (1)
      {
        v13 = v11;
        v11 = *v9;
        if (fabs(*v9 - v13 + -1.0e10) > 2000000000.0)
        {
          break;
        }

        ++v12;
        v9 += 4;
        if (v12 == 4)
        {
          operator new();
        }
      }

      LOWORD(v37[0]) = 12;
      LOBYTE(v36) = 4;
      sub_1D0D49EE8(a2, __p);
      if (v39 >= 0)
      {
        v31 = __p;
      }

      else
      {
        LOBYTE(v31) = __p[0];
      }

      cnprint::CNPrinter::Print(v37, &v36, "#svdb,Anchor points are not spaced correctly,SV,%s,diff,%lf,anchors,%zu,%zu", v26, v27, v28, v29, v30, v31);
    }

    else
    {
      LOWORD(v37[0]) = 12;
      LOBYTE(v36) = 4;
      sub_1D0D49EE8(a2, __p);
      if (v39 >= 0)
      {
        v25 = __p;
      }

      else
      {
        LOBYTE(v25) = __p[0];
      }

      v35 = (*(a2 + 32) - *(a2 + 24)) >> 5;
      cnprint::CNPrinter::Print(v37, &v36, "#svdb,Unexpected number of anchor points,SV,%s,N,%zu", v20, v21, v22, v23, v24, v25);
    }
  }

  else
  {
    LOWORD(v37[0]) = 12;
    LOBYTE(v36) = 4;
    sub_1D0D49EE8(a2, __p);
    if (v39 >= 0)
    {
      v19 = __p;
    }

    else
    {
      LOBYTE(v19) = __p[0];
    }

    cnprint::CNPrinter::Print(v37, &v36, "#svdb,missing anchor points,SV,%s", v14, v15, v16, v17, v18, v19);
  }

  if (SHIBYTE(v39) < 0)
  {
    operator delete(__p[0]);
  }

  v32 = *MEMORY[0x1E69E9840];
  return 0;
}

void sub_1D0C3908C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a19)
  {
    operator delete(a19);
  }

  if (a22)
  {
    operator delete(a22);
  }

  operator delete(v30);
  _Unwind_Resume(a1);
}

uint64_t sub_1D0C39154(uint64_t a1)
{
  if (!sub_1D0C39448(a1) || (*(a1 + 8) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || !*(a1 + 16) || (*(a1 + 176) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*(a1 + 184) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*(a1 + 192) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*(a1 + 200) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*(a1 + 208) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    return 0;
  }

  if (*(a1 + 48) == 1)
  {
    v4 = *(a1 + 24);
    v5 = *(a1 + 32);
    if (v4 != v5)
    {
      while ((*v4 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (v4[1] & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (v4[2] & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (v4[3] & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        v4 += 4;
        if (v4 == v5)
        {
          goto LABEL_20;
        }
      }

      return 0;
    }

LABEL_20:
    v6 = *(a1 + 224);
    if (v6 == *(a1 + 232))
    {
      v2 = 1;
LABEL_47:
      sub_1D0B99218(0);
      return v2;
    }

    v7 = *v6;
    if (v7 > 6)
    {
      if (v7 - 7 < 2)
      {
        if (*a1 == 8)
        {
          goto LABEL_44;
        }
      }

      else if (v7 == 9)
      {
        if (*a1 == 32)
        {
          goto LABEL_44;
        }
      }

      else if (v7 != 10 || *a1 == 64)
      {
        goto LABEL_44;
      }
    }

    else if (*v6 > 3u)
    {
      if (*a1 == 4)
      {
        goto LABEL_44;
      }
    }

    else
    {
      if (v7 - 1 < 2)
      {
        if (*a1 != 1 && *a1 != 16)
        {
          goto LABEL_46;
        }

LABEL_44:
        operator new();
      }

      if (v7 == 3)
      {
        if (*a1 == 2)
        {
          goto LABEL_44;
        }
      }

      else if (*v6)
      {
        goto LABEL_44;
      }
    }

LABEL_46:
    v2 = 0;
    goto LABEL_47;
  }

  if (*(a1 + 168) == 1)
  {
    goto LABEL_20;
  }

  return 0;
}

BOOL sub_1D0C39448(int *a1)
{
  v1 = 0;
  v2 = *a1;
  if (*a1 <= 7)
  {
    switch(v2)
    {
      case 1:
        v3 = 32;
        break;
      case 2:
        v3 = 14;
        v4 = 7;
        v5 = 5;
        return v3 > (*(a1 + v5) + v4);
      case 4:
        v3 = 63;
        break;
      default:
        return v1;
    }

    goto LABEL_15;
  }

  if (v2 > 31)
  {
    if (v2 == 32)
    {
      v3 = 22;
      v4 = -120;
      goto LABEL_16;
    }

    if (v2 != 64)
    {
      return v1;
    }

    v3 = 14;
LABEL_15:
    v4 = -1;
    goto LABEL_16;
  }

  if (v2 == 8)
  {
    v3 = 36;
    goto LABEL_15;
  }

  if (v2 == 16)
  {
    v3 = 10;
    v4 = 63;
LABEL_16:
    v5 = 4;
    return v3 > (*(a1 + v5) + v4);
  }

  return v1;
}

uint64_t raven::GnssSvDatabase::ConvertCNTimeInGnssTimeBaseToTAI(cnnavigation::GNSSUTCParameters *this, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(this + 1);
  if (v11 > 3)
  {
    if (v11 == 4)
    {
      v24 = *a2;
      v25 = *a2 / 604800;
      LODWORD(v34) = v25;
      v26 = *(a2 + 8) + (v24 - 604800 * v25);
      v35 = v26;
      if (v26 < 0.0)
      {
        LODWORD(v34) = v25 - 1;
        v35 = v26 + 604800.0;
      }

      cnnavigation::TAITime::TAITime(&v36, &v34, this);
      goto LABEL_36;
    }

    if (v11 == 6)
    {
      v30 = *a2;
      v31 = *a2 / 604800;
      LODWORD(v34) = v31;
      v32 = *(a2 + 8) + (v30 - 604800 * v31);
      v35 = v32;
      if (v32 < 0.0)
      {
        LODWORD(v34) = v31 - 1;
        v35 = v32 + 604800.0;
      }

      cnnavigation::TAITime::TAITime(&v36, &v34, this);
      goto LABEL_36;
    }

    if (v11 != 5)
    {
      goto LABEL_29;
    }

LABEL_11:
    v15 = *(a2 + 8);
    v16 = *a2;
    v17 = fabs(v15 + v16);
    v18 = (*&v17 - 1) < 0xFFFFFFFFFFFFFLL;
    v19 = COERCE__INT64(v15 + v16) < 0 && (*&v17 - 0x10000000000000) >> 53 < 0x3FF;
    if (COERCE__INT64(v15 + v16) >= 0)
    {
      v18 = 0;
    }

    v20 = *&v17 <= 0x7FF0000000000000;
    v21 = v17 == INFINITY || v18;
    if (!v20)
    {
      v21 = 1;
    }

    if ((v21 | v19) == 1)
    {
      LOWORD(v36) = 5;
      LOBYTE(v34) = 4;
      v33 = v15 + v16;
      cnprint::CNPrinter::Print(&v36, &v34, "Invalid GPS time %.3lf constructed from CNTime", a4, a5, a6, a7, a8, SLOBYTE(v33));
      v15 = *(a2 + 8);
      v16 = *a2;
    }

    v22 = (v16 / 604800.0);
    LODWORD(v34) = v22;
    v23 = v15 + v16 + v22 * -604800.0;
    v35 = v23;
    if (v23 < 0.0)
    {
      LODWORD(v34) = v22 - 1;
      v35 = v23 + 604800.0;
    }

    cnnavigation::TAITime::TAITime(&v36, &v34, this);
    goto LABEL_36;
  }

  if (v11 == 1)
  {
    goto LABEL_11;
  }

  if (v11 == 2)
  {
    v28 = *a2 / 86400;
    v29 = *(a2 + 8) + (*a2 - 86400 * v28);
    v35 = v29;
    LODWORD(v34) = v28 + 1;
    if (v29 < 0.0)
    {
      LODWORD(v34) = v28;
      v35 = v29 + 86400.0;
    }

    cnnavigation::TAITime::TAITime(&v36, &v34, this);
    goto LABEL_36;
  }

  if (v11 != 3)
  {
LABEL_29:
    LOWORD(v36) = 12;
    LOBYTE(v34) = 4;
    cnprint::CNPrinter::Print(&v36, &v34, "#svdb,Unexpected constellation requested for Gnss to TAI conversion,%i", a4, a5, a6, a7, a8, v11);
    return 0;
  }

  v12 = *a2;
  v13 = *a2 / 604800;
  LODWORD(v34) = v13;
  v14 = *(a2 + 8) + (v12 - 604800 * v13);
  v35 = v14;
  if (v14 < 0.0)
  {
    LODWORD(v34) = v13 - 1;
    v35 = v14 + 604800.0;
  }

  cnnavigation::TAITime::TAITime(&v36, &v34, this);
LABEL_36:
  *a3 = v36;
  return 1;
}

void sub_1D0C3994C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_1D0C54BE8();
}

void sub_1D0C39994(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_1D0C3994C(a1, a2);
  }

  sub_1D0C5663C();
}

void sub_1D0C39A24(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t raven::GnssSvDatabase::FitAnchorPointsToPoly(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v5 = 0;
  v26 = 0x100000004;
  v25 = xmmword_1D0E7DCE0;
  v24 = &unk_1F4CDEBB8;
  v27 = v28;
  v21 = 0x400000004;
  v20 = xmmword_1D0E7DCD0;
  v6 = v23;
  v19 = &unk_1F4CDEB70;
  v22 = v23;
  v7 = *a3;
  v8 = *a2;
  do
  {
    v9 = 0;
    v28[v5] = *(v7 + 8 * v5);
    v10 = 1.0;
    do
    {
      *&v6[v9] = v10;
      v10 = v10 * *(v8 + 8 * v5);
      v9 += 32;
    }

    while (v9 != 128);
    ++v5;
    v6 += 8;
  }

  while (v5 != 4);
  v16 = 0x400000004;
  v14 = &unk_1F4CDEB70;
  v15 = xmmword_1D0E7DCD0;
  v17 = &v18;
  v36 = 0x100000004;
  v34 = &unk_1F4CDFDB8;
  v35 = xmmword_1D0E7DCE0;
  v37 = &v38;
  v31 = 0x100000010;
  v30 = xmmword_1D0E83CB0;
  v29 = &unk_1F4CDFE00;
  v32 = v33;
  sub_1D0B9F868(&v19, &v34, &v29, &v14);
  v31 = 0x100000004;
  v30 = xmmword_1D0E7DCE0;
  v29 = &unk_1F4CDEBB8;
  v32 = v33;
  result = sub_1D0B89390(&v14, &v24, &v29);
  v12 = 0;
  v13 = v32;
  do
  {
    *(a4 + v12) = *&v13[v12];
    v12 += 8;
  }

  while (v12 != 32);
  return result;
}

void *sub_1D0C39C54(void *result, char *__src, char *a3)
{
  v4 = result;
  v5 = result[2];
  v6 = *result;
  if ((v5 - *result) < 0x20)
  {
    if (v6)
    {
      result[1] = v6;
      operator delete(v6);
      v5 = 0;
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
    }

    v7 = v5 >> 2;
    if ((v5 >> 2) <= 4)
    {
      v7 = 4;
    }

    if (v5 >= 0x7FFFFFFFFFFFFFF8)
    {
      v8 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = v7;
    }

    sub_1D0C39994(v4, v8);
  }

  v9 = result[1];
  v10 = v9 - v6;
  if ((v9 - v6) > 0x1F)
  {
    v16 = a3 - __src;
    if (v16)
    {
      result = memmove(*result, __src, v16);
    }

    v15 = &v6[v16];
  }

  else
  {
    v11 = &__src[v10];
    if (v9 != v6)
    {
      result = memmove(*result, __src, v10);
      v9 = v4[1];
    }

    v12 = v9;
    if (v11 != a3)
    {
      v12 = v9;
      v13 = v9;
      do
      {
        v14 = *v11;
        v11 += 8;
        *v13 = v14;
        v13 += 8;
        v12 += 8;
      }

      while (v11 != a3);
    }

    v15 = v12;
  }

  v4[1] = v15;
  return result;
}

void *cnnavigation::TAITime::TAITime(void *a1, int *a2, cnnavigation::GNSSUTCParameters *this)
{
  *a1 = 0;
  a1[1] = 0;
  if (cnnavigation::GNSSUTCParameters::IsValid(this) && *(this + 1) == 2)
  {
    v8 = *a2;
    v6.i64[0] = *(a2 + 1);
    v7.i64[0] = 0xC0EA55FA1CAC0831;
    v9 = *v6.i64 + -53935.816;
    v22[0] = 0.0;
    v22[1] = 0.0;
    CNTimeSpan::SetTimeSpan(v22, 86400 * v8 - 86400, v6, v7);
    v10 = sub_1D0B7CF88(v22, this + 6);
    v13 = 40;
    if (v10)
    {
      v13 = 64;
    }

    v14 = *(this + v13);
    v15 = *(this + 1);
    v16 = *(this + 2);
    *v17.i64 = CNTimeSpan::operator-(v22, this + 3, v11, v12);
    *v19.i64 = v9 - (v15 + v16 * (v18 + *v17.i64));
    v21 = 0uLL;
    CNTimeSpan::SetTimeSpan(&v21, 86400 * v8 - 126316800 + v14 - 3, v19, v17);
    *a1 = v21;
  }

  else
  {
    a1[1] = 0x7FF8000000000000;
  }

  return a1;
}

void **sub_1D0C39E98(void **a1)
{
  sub_1D0C39ECC(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1D0C39ECC(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 16;
    v4 = *(v1 - 8);
    if (v4)
    {
      sub_1D0B7CAB8(v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 16;
    }
  }
}

uint64_t sub_1D0C39F20(uint64_t a1, unsigned __int8 a2, int a3)
{
  v3 = *sub_1D0C3A014(a1, &v5, a2, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *sub_1D0C3A014(uint64_t a1, void *a2, unsigned __int8 a3, int a4)
{
  v6 = *(a1 + 8);
  result = (a1 + 8);
  v5 = v6;
  if (v6)
  {
    do
    {
      while (1)
      {
        v7 = v5;
        v8 = *(v5 + 56);
        v9 = *(v7 + 15);
        v10 = v9 < a4;
        if (v8 != a3)
        {
          v10 = v8 < a3;
        }

        if (!v10)
        {
          break;
        }

        v5 = *v7;
        result = v7;
        if (!*v7)
        {
          goto LABEL_13;
        }
      }

      v11 = v9 > a4;
      v12 = v8 == a3;
      v13 = v8 > a3;
      if (v12)
      {
        v13 = v11;
      }

      if (!v13)
      {
        break;
      }

      result = v7 + 1;
      v5 = v7[1];
    }

    while (v5);
  }

  else
  {
    v7 = result;
  }

LABEL_13:
  *a2 = v7;
  return result;
}

uint64_t raven::GnssMeasurementPreprocessor::UpdateCurrentDayAndWeek(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  if (v2)
  {
    if (sub_1D0C35C1C(a2) && (v5 = *a2, sub_1D0C35C6C(*a2)) && *v5)
    {
      v6 = **a2;
    }

    else
    {
      if (!sub_1D0C35D78(a2))
      {
        LOBYTE(v6) = 0;
        goto LABEL_13;
      }

      v6 = *a2[3];
      if (!*a2[3])
      {
LABEL_13:
        a1[2208] = v6;
        if (sub_1D0C35D08(a2) && ((v12 = a2[1], *v12) && (v13 = v12[1], v13 < 0x5B5) || *(v12 + 1) && *v12 && (*(v12 + 2) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (v13 = v12[1], v13 <= 0x5B4)))
        {
          *(a1 + 555) = v13 + 1461 * *v12 - 1461;
          a1[2216] = 1;
        }

        else
        {
          a1[2216] = 0;
        }

        return v2;
      }

      v6 += 1024;
    }

    *(a1 + 553) = v6;
    LOBYTE(v6) = 1;
    goto LABEL_13;
  }

  if (cnprint::CNPrinter::GetLogLevel(a1) <= 1)
  {
    v17 = 12;
    v16 = 1;
    cnprint::CNPrinter::Print(&v17, &v16, "#gmp,UpdateCurrentDayAndWeek,not configured", v7, v8, v9, v10, v11, v15);
  }

  return v2;
}

uint64_t raven::GnssMeasurementPreprocessor::EstimateCoarseReceiverTaiTime(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, int8x16_t a10)
{
  v11 = a3;
  v160 = 0;
  v161 = 0u;
  v162 = 0u;
  v163 = 0;
  v164 = 0;
  v165 = 0;
  v166 = 0;
  v153 = 0;
  v154 = 0u;
  v155 = 0u;
  v156 = 0;
  v157 = 0;
  v158 = 0;
  v159 = 0;
  v146 = 0;
  v147 = 0u;
  v148 = 0u;
  v149 = 0;
  v150 = 0;
  v151 = 0;
  v152 = 0;
  v14 = raven::GnssSvDatabase::PopulateGnssUTCParametersWithGps((a1 + 984), &v160, 0.0, a10, a3, a4, a5, a6, a7, a8);
  v23 = raven::GnssSvDatabase::PopulateGnssUTCParametersWithGlonass((a1 + 984), &v153, v15, v16, v17, v18, v19, v20, v21, v22);
  v30 = raven::GnssSvDatabase::PopulateGnssUTCParametersWithGalileo((a1 + 984), &v146, v24, v25, v26, v27, v28, v29);
  v161 = 0uLL;
  v154 = 0uLL;
  __p = 0;
  v144 = 0;
  v145 = 0;
  v38 = *(a2 + 72);
  v37 = *(a2 + 80);
  if (v38 == v37)
  {
    v115 = 0;
    goto LABEL_114;
  }

  v130 = v30;
  v131 = 0;
  v132 = v11 + 8;
  do
  {
    v39 = *(v38 + 8);
    v40 = v39 > 9;
    v41 = (1 << v39) & 0x2BB;
    if (v40 || v41 == 0)
    {
      v68 = *(v38 + 197);
      if ((*(*(a1 + 8) + 3808) & 1) != 0 || !*(v38 + 197))
      {
        if (!*(v38 + 197))
        {
          goto LABEL_103;
        }
      }

      else if (*(v38 + 196) == 1)
      {
        goto LABEL_103;
      }
    }

    else if ((*(v38 + 197) & 1) == 0)
    {
      goto LABEL_103;
    }

    LODWORD(v142) = 0;
    WORD2(v142) = 32512;
    v141 = 0uLL;
    v140 = 0.0;
    v139 = 0;
    sub_1D0C3ABD8(v38, *(a1 + 2304), &v140, &v139);
    if ((*v38 == 16 || *v38 == 1) && *(v38 + 8) == 1 && *(v38 + 9) == 1 && *(v38 + 12) == 1 && sub_1D0C3ACF0(v38) && *(v38 + 40) >= 0.0 && *(v38 + 48) > 0.0)
    {
      ++v131;
      if (*(a1 + 2208) != 1)
      {
        LOWORD(v136[0]) = 12;
        LOBYTE(v167[0]) = 3;
        cnprint::CNPrinter::Print(v136, v167, "#gmp,EstimateCoarseReceiverTaiTime,GPS week number is not available", v43, v44, v45, v46, v47, v127);
        goto LABEL_103;
      }

      LODWORD(v168) = v139 + *(a1 + 2212);
      if ((v14 & 1) == 0)
      {
        LOWORD(v136[0]) = 12;
        LOBYTE(v167[0]) = 3;
        cnprint::CNPrinter::Print(v136, v167, "#gmp,EstimateCoarseReceiverTaiTime,GPS UTC info not available", v43, v44, v45, v46, v47, v127);
        goto LABEL_103;
      }

      v169[0] = v140;
      cnnavigation::TAITime::TAITime(v136, &v168, &v160);
      goto LABEL_39;
    }

    if (*v38 == 8 && *(v38 + 8) == 7 && *(v38 + 9) == 1 && *(v38 + 12) == 1 && sub_1D0C3ACF0(v38) && *(v38 + 40) >= 0.0 && *(v38 + 48) > 0.0)
    {
      ++v131;
      if (*(a1 + 2208) != 1)
      {
        LOWORD(v136[0]) = 12;
        LOBYTE(v167[0]) = 3;
        cnprint::CNPrinter::Print(v136, v167, "#gmp,EstimateCoarseReceiverTaiTime,Galileo week number is not available", v48, v49, v50, v51, v52, v127);
        goto LABEL_103;
      }

      LODWORD(v168) = *(a1 + 2212) + v139 - 1024;
      if ((v130 & 1) == 0)
      {
        LOWORD(v136[0]) = 12;
        LOBYTE(v167[0]) = 3;
        cnprint::CNPrinter::Print(v136, v167, "#gmp,EstimateCoarseReceiverTaiTime,Galileo UTC info not available", v48, v49, v50, v51, v52, v127);
        goto LABEL_103;
      }

      v169[0] = v140;
      cnnavigation::TAITime::TAITime(v136, &v168, &v146);
LABEL_39:
      v141 = *v136;
      v58 = *v38;
      WORD2(v142) = *(v38 + 4);
      LODWORD(v142) = v58;
      goto LABEL_40;
    }

    if (*v38 == 2 && *(v38 + 8) == 3 && *(v38 + 9) == 1 && *(v38 + 13) == 1 && sub_1D0C3ACF0(v38) && *(v38 + 40) >= 0.0 && *(v38 + 48) > 0.0)
    {
      ++v131;
      v169[0] = 0.0;
      if (*(a1 + 2216) != 1)
      {
        LOWORD(v136[0]) = 12;
        LOBYTE(v167[0]) = 3;
        cnprint::CNPrinter::Print(v136, v167, "#gmp,EstimateCoarseReceiverTaiTime,Glonass day number is not available", v53, v54, v55, v56, v57, v127);
        goto LABEL_103;
      }

      LODWORD(v168) = *(a1 + 2220);
      if (!v23)
      {
        LOWORD(v136[0]) = 12;
        LOBYTE(v167[0]) = 3;
        cnprint::CNPrinter::Print(v136, v167, "#gmp,EstimateCoarseReceiverTaiTime,GLONASS UTC info not available", v53, v54, v55, v56, v57, v127);
        goto LABEL_103;
      }

      v167[0] = 0;
      sub_1D0C3AE34(v38, *(a1 + 2304), v169, v167);
      LODWORD(v168) = v168 + v167[0];
      cnnavigation::TAITime::TAITime(v136, &v168, &v153);
      goto LABEL_39;
    }

LABEL_40:
    if (!sub_1D0C39448(&v142))
    {
      goto LABEL_103;
    }

    v137 = 0;
    LOBYTE(v136[0]) = 0;
    v138 = -1;
    if ((raven::GnssMeasurementPreprocessor::GetCNSatIDFromGnssId(a1, &v142, v136, v31, v32, v33, v34, v35) & 1) == 0)
    {
      LOWORD(v167[0]) = 12;
      LOBYTE(v135) = 3;
      sub_1D0D49EE8(&v142, &v168);
      if (v169[1] >= 0.0)
      {
        v74 = &vars0 + 56;
      }

      else
      {
        v74 = v168;
      }

      cnprint::CNPrinter::Print(v167, &v135, "#gmp,EstimateCoarseReceiverTaiTime,could not evaluate CNSatId,SV,%s", v69, v70, v71, v72, v73, v74);
      goto LABEL_58;
    }

    v59 = *(v38 + 8);
    v60 = 1575420000.0;
    if (v59 != 1)
    {
      v60 = 1575420000.0;
      if (v59 != 7)
      {
        if (v59 != 3)
        {
          LOWORD(v167[0]) = 12;
          LOBYTE(v135) = 4;
          sub_1D0D49EE8(&v142, &v168);
          if (v169[1] >= 0.0)
          {
            v82 = &v168;
          }

          else
          {
            LOBYTE(v82) = v168;
          }

          v128 = *(v38 + 8);
          cnprint::CNPrinter::Print(v167, &v135, "#gmp,EstimateCoarseReceiverTaiTime,unexpected band from SV with decoded time,SV,%s,band,%i", v77, v78, v79, v80, v81, v82);
          goto LABEL_67;
        }

        v61 = *(v38 + 5);
        if ((v61 - 7) < 0xFFFFFFF2)
        {
          LOWORD(v167[0]) = 12;
          LOBYTE(v135) = 4;
          sub_1D0D49EE8(&v142, &v168);
          if (v169[1] >= 0.0)
          {
            v67 = &v168;
          }

          else
          {
            LOBYTE(v67) = v168;
          }

          cnprint::CNPrinter::Print(v167, &v135, "#gmp,EstimateCoarseReceiverTaiTime,could not determine GLONASS center frequency,SV,%s", v62, v63, v64, v65, v66, v67);
LABEL_67:
          if (SHIBYTE(v169[1]) < 0)
          {
            operator delete(v168);
          }

          v75 = 0;
          v76 = 0;
          goto LABEL_98;
        }

        v60 = v61 * 562500.0 + 1602000000.0;
      }
    }

    v83 = sub_1D0C36A78(v11, v136);
    if (v132 == v83)
    {
      LOWORD(v167[0]) = 12;
      LOBYTE(v135) = 3;
      sub_1D0D49EE8(&v142, &v168);
      if (v169[1] >= 0.0)
      {
        v98 = &v168;
      }

      else
      {
        LOBYTE(v98) = v168;
      }

      cnprint::CNPrinter::Print(v167, &v135, "#gmp,EstimateCoarseReceiverTaiTime,could not use SV due to lack of sat data,SV,%s", v93, v94, v95, v96, v97, v98);
      if (SHIBYTE(v169[1]) < 0)
      {
        operator delete(v168);
      }

      v76 = 0;
      v75 = 1;
    }

    else
    {
      v84 = *(v83 + 64);
      v135 = 0.0;
      LOWORD(v168) = 0;
      memset(v169, 0, sizeof(v169));
      v170 = 0;
      v171 = 0;
      v172 = 0;
      v173 = 0;
      if ((*(*(v84 + 32) + 96))(v60))
      {
        LOWORD(v167[0]) = 12;
        v134 = 3;
        sub_1D0D49EE8(&v142, &v168);
        if (v169[1] >= 0.0)
        {
          v92 = &v168;
        }

        else
        {
          LOBYTE(v92) = v168;
        }

        cnprint::CNPrinter::Print(v167, &v134, "#gmp,EstimateCoarseReceiverTaiTime,could not use SV because clock offset could not be evaluated,SV,%s", v87, v88, v89, v90, v91, v92);
LABEL_58:
        if (SHIBYTE(v169[1]) < 0)
        {
          operator delete(v168);
        }

        v75 = 0;
        v76 = 1;
        goto LABEL_98;
      }

      v129 = v11;
      *v85.i64 = v135;
      v168 = 0;
      v169[0] = 0.0;
      *v99.i64 = CNTimeSpan::SetTimeSpan(&v168, 0, v85, v86);
      v101 = CNTimeSpan::operator-(&v141, &v168, v99, v100);
      v103 = v102;
      v104 = v144;
      if (v144 >= v145)
      {
        v106 = (v144 - __p) >> 4;
        v107 = v106 + 1;
        if ((v106 + 1) >> 60)
        {
          sub_1D0C5663C();
        }

        v108 = v145 - __p;
        if ((v145 - __p) >> 3 > v107)
        {
          v107 = v108 >> 3;
        }

        if (v108 >= 0x7FFFFFFFFFFFFFF0)
        {
          v109 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v109 = v107;
        }

        if (v109)
        {
          sub_1D0BC40DC(&__p, v109);
        }

        v110 = (16 * v106);
        *v110 = v101;
        v110[1] = v103;
        v105 = 16 * v106 + 16;
        v111 = v110 - (v144 - __p);
        memcpy(v111, __p, v144 - __p);
        v112 = __p;
        __p = v111;
        v144 = v105;
        v145 = 0;
        if (v112)
        {
          operator delete(v112);
        }
      }

      else
      {
        *v144 = v101;
        *(v104 + 1) = v102;
        v105 = (v104 + 16);
      }

      v76 = 0;
      v144 = v105;
      v75 = 1;
      v11 = v129;
    }

LABEL_98:
    if (v137 < 0)
    {
      operator delete(v136[0]);
      if (v75)
      {
        goto LABEL_103;
      }
    }

    else if (v75)
    {
      goto LABEL_103;
    }

    if (!v76)
    {
      goto LABEL_115;
    }

LABEL_103:
    v38 += 200;
  }

  while (v38 != v37);
  v113 = __p;
  v114 = v144;
  v115 = v131;
  if (__p != v144)
  {
    v168 = 0;
    v169[0] = 0.0;
    v116 = __p;
    do
    {
      v117 = *v116++;
      *v136 = v117;
      v118 = CNTimeSpan::operator+(&v168, v136, v117, v36);
      v168 = v118;
      v169[0] = v119;
    }

    while (v116 != v114);
    v121 = (v114 - v113) >> 4;
    *v36.i64 = v121;
    *v120.i64 = (v119 + (v118 % v121)) / v121;
    v133 = 0uLL;
    CNTimeSpan::SetTimeSpan(&v133, v118 / v121, v120, v36);
    v122 = v133;
    *a4 = v133;
    v136[0] = 0;
    v136[1] = 0x3FB2F1A9FBE76C8BLL;
    *a4 = CNTimeSpan::operator+(a4, v136, v122, v123);
    a4[1] = v124;
    v125 = 1;
    goto LABEL_116;
  }

LABEL_114:
  LOWORD(v168) = 12;
  LOBYTE(v136[0]) = 3;
  cnprint::CNPrinter::Print(&v168, v136, "#gmp,EstimateCoarseReceiverTaiTime,could not compute time because no SVs with pertinent information were available,svs-with-time,%i", v31, v32, v33, v34, v35, v115);
LABEL_115:
  v125 = 0;
LABEL_116:
  if (__p)
  {
    v144 = __p;
    operator delete(__p);
  }

  return v125;
}

void sub_1D0C3AB2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0C3ABD8(uint64_t result, unint64_t a2, double *a3, int *a4)
{
  v6 = result;
  if (!a2)
  {
    v12 = 0;
    v11 = *(result + 40) * 0.000000001;
    goto LABEL_15;
  }

  result = sub_1D0C3ACF0(result);
  if (result && (*(v6 + 80) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && *(v6 + 88) > 0.0)
  {
    v8 = *(v6 + 80) * 0.000000001;
  }

  else
  {
    result = sub_1D0C3ACF0(v6);
    v8 = 0.0;
    if (result)
    {
      v9 = *(v6 + 64) > 0.0 && (*(v6 + 56) & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
      v8 = 0.0;
      if (v9)
      {
        v8 = *(v6 + 56) * 0.000000001;
      }
    }
  }

  v10 = (*(v6 + 40) + a2 + a2 * v8) * 0.000000001;
  *a3 = v10;
  *a4 = 0;
  if (v10 >= 604800.0)
  {
    v11 = v10 + -604800.0;
    v12 = 1;
LABEL_15:
    *a3 = v11;
    *a4 = v12;
  }

  return result;
}

uint64_t sub_1D0C3ACF0(uint64_t a1)
{
  result = sub_1D0C39448(a1);
  if (result)
  {
    v3 = *(a1 + 8);
    if ((v3 - 1) > 9)
    {
      return 0;
    }

    v4 = *(a1 + 16);
    if (v4 == -1)
    {
      return 0;
    }

    v5 = *(a1 + 24);
    if (v5 == -1)
    {
      return 0;
    }

    result = 0;
    if (v4 <= v5 && *(a1 + 32) != -1)
    {
      if (*(a1 + 192) < 0.0)
      {
        return 0;
      }

      result = 0;
      v6 = *a1;
      if (*a1 <= 7)
      {
        if (v6 != 1)
        {
          if (v6 == 2)
          {
            if (v3 != 3)
            {
              return 0;
            }
          }

          else
          {
            if (v6 != 4)
            {
              return result;
            }

            if ((v3 - 4) >= 3)
            {
              return 0;
            }
          }

          goto LABEL_31;
        }
      }

      else
      {
        if (v6 > 31)
        {
          if (v6 == 32)
          {
            if (v3 != 9)
            {
              return 0;
            }
          }

          else
          {
            if (v6 != 64)
            {
              return result;
            }

            if (v3 != 10)
            {
              return 0;
            }
          }

          goto LABEL_31;
        }

        if (v6 == 8)
        {
          v7 = (v3 - 7);
LABEL_26:
          if (v7 >= 2)
          {
            return 0;
          }

LABEL_31:
          v8 = *(a1 + 184);
          if (!v8)
          {
            return 1;
          }

          return sub_1D0C42E1C(v8);
        }

        if (v6 != 16)
        {
          return result;
        }
      }

      v7 = (v3 - 1);
      goto LABEL_26;
    }
  }

  return result;
}

uint64_t sub_1D0C3AE34(uint64_t result, unint64_t a2, double *a3, int *a4)
{
  v6 = result;
  if (!a2)
  {
    v12 = 0;
    v11 = *(result + 40) * 0.000000001;
    goto LABEL_15;
  }

  result = sub_1D0C3ACF0(result);
  if (result && (*(v6 + 80) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && *(v6 + 88) > 0.0)
  {
    v8 = *(v6 + 80) * 0.000000001;
  }

  else
  {
    result = sub_1D0C3ACF0(v6);
    v8 = 0.0;
    if (result)
    {
      v9 = *(v6 + 64) > 0.0 && (*(v6 + 56) & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
      v8 = 0.0;
      if (v9)
      {
        v8 = *(v6 + 56) * 0.000000001;
      }
    }
  }

  v10 = (*(v6 + 40) + a2 + a2 * v8) * 0.000000001;
  *a3 = v10;
  *a4 = 0;
  if (v10 >= 86400.0)
  {
    v11 = v10 + -86400.0;
    v12 = 1;
LABEL_15:
    *a3 = v11;
    *a4 = v12;
  }

  return result;
}

BOOL raven::GnssMeasurementPreprocessor::DetermineNearestReceiverTaiTimeMillisecond(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, int8x16_t a10)
{
  v160 = *MEMORY[0x1E69E9840];
  *a5 = 0;
  if ((*a1 & 1) == 0)
  {
    if (cnprint::CNPrinter::GetLogLevel(a1) <= 1)
    {
      *__p = 12;
      LOBYTE(v143) = 1;
      cnprint::CNPrinter::Print(__p, &v143, "#gmp,DetermineNearestReceiverTaiTimeMillisecond,not configured", v12, v13, v14, v15, v16, v113);
    }

    goto LABEL_6;
  }

  v11 = *(a1 + 760) + *(a1 + 784);
  a10.i64[0] = 0x41E2A05F20000000;
  if (v11 > 2500000000.0)
  {
    *__p = 12;
    LOBYTE(v143) = 3;
    cnprint::CNPrinter::Print(__p, &v143, "#gmp,DetermineNearestReceiverTaiTimeMillisecond,Position uncertainty is too high,var,%.3lf", a4, a5, a6, a7, a8, SLOBYTE(v11));
LABEL_6:
    v17 = 0;
    goto LABEL_7;
  }

  v143 = 0;
  v144 = 0u;
  v145 = 0u;
  v146 = 0;
  v147 = 0;
  v148 = 0;
  v149 = 0;
  v136 = 0;
  v137 = 0u;
  v138 = 0u;
  v139 = 0;
  v140 = 0;
  v141 = 0;
  v142 = 0;
  v129 = 0;
  v130 = 0u;
  v131 = 0u;
  v132 = 0;
  v133 = 0;
  v134 = 0;
  v135 = 0;
  v114 = raven::GnssSvDatabase::PopulateGnssUTCParametersWithGps((a1 + 984), &v143, 0.0, a10, a3, a4, a5, a6, a7, a8);
  v115 = raven::GnssSvDatabase::PopulateGnssUTCParametersWithGlonass((a1 + 984), &v136, v23, v24, v25, v26, v27, v28, v29, v30);
  v116 = raven::GnssSvDatabase::PopulateGnssUTCParametersWithGalileo((a1 + 984), &v129, v31, v32, v33, v34, v35, v36);
  v144 = 0uLL;
  v137 = 0uLL;
  memset(v128, 0, sizeof(v128));
  v125 = 0;
  v126 = 0;
  v127 = 0;
  v38 = *(a2 + 72);
  v39 = *(a2 + 80);
  if (v38 != v39)
  {
    while (1)
    {
      v40 = *(v38 + 8);
      v41 = v40 > 9;
      v42 = (1 << v40) & 0x2BB;
      if (v41 || v42 == 0)
      {
        v77 = *(v38 + 197);
        if ((*(*(a1 + 8) + 3808) & 1) != 0 || !*(v38 + 197))
        {
          if (!*(v38 + 197))
          {
            goto LABEL_77;
          }
        }

        else if (*(v38 + 196) == 1)
        {
          goto LABEL_77;
        }
      }

      else if ((*(v38 + 197) & 1) == 0)
      {
        goto LABEL_77;
      }

      LODWORD(v124) = 0;
      WORD2(v124) = 32512;
      v123 = 0uLL;
      v44 = *(v38 + 192);
      if ((v44 & 0x7FFFFFFFu) > 0x7F7FFFFF)
      {
        goto LABEL_77;
      }

      v122 = 0;
      v121 = 0;
      sub_1D0C3ABD8(v38, *(a1 + 2304), &v122, &v121);
      if ((*v38 == 16 || *v38 == 1) && *(v38 + 8) == 1 && *(v38 + 9) == 1 && *(v38 + 12) == 1)
      {
        if (sub_1D0C3ACF0(v38))
        {
          if (*(v38 + 40) >= 0.0)
          {
            v94 = *(v38 + 48);
            if (v94 > 0.0 && v94 < 1955.03421)
            {
              break;
            }
          }
        }
      }

      if (*v38 == 8 && *(v38 + 8) == 7 && *(v38 + 9) == 1 && *(v38 + 12) == 1)
      {
        if (sub_1D0C3ACF0(v38))
        {
          if (*(v38 + 40) >= 0.0)
          {
            v84 = *(v38 + 48);
            if (v84 > 0.0 && v84 < 1955.03421)
            {
              if (*(v38 + 9) == 1)
              {
                if (*(v38 + 11) == 1)
                {
                  v55 = *(v38 + 12);
                }

                else
                {
                  v55 = 0;
                }

                if (*(v38 + 10) == 1)
                {
                  v55 |= *(v38 + 12);
                }
              }

              else
              {
                v55 = 0;
              }

              if (*(a1 + 2208) != 1)
              {
                LOWORD(v157) = 12;
                LOBYTE(v150[0]) = 3;
                cnprint::CNPrinter::Print(&v157, v150, "#gmp,DetermineNearestReceiverTaiTimeMillisecond,Galileo week number is not available", v50, v51, v52, v53, v54, v113);
                goto LABEL_77;
              }

              *__p = *(a1 + 2212) + v121 - 1024;
              if ((v116 & 1) == 0)
              {
                LOWORD(v157) = 12;
                LOBYTE(v150[0]) = 3;
                cnprint::CNPrinter::Print(&v157, v150, "#gmp,DetermineNearestReceiverTaiTimeMillisecond,Galileo UTC info not available", v50, v51, v52, v53, v54, v113);
                goto LABEL_77;
              }

              *&__p[8] = v122;
              cnnavigation::TAITime::TAITime(&v157, __p, &v129);
LABEL_100:
              v123 = v157;
              v103 = *v38;
              WORD2(v124) = *(v38 + 4);
              LODWORD(v124) = v103;
              v56 = 1575420000.0;
              goto LABEL_35;
            }
          }
        }
      }

      v55 = 0;
      v56 = 0.0;
      if (*v38 == 2 && *(v38 + 8) == 3)
      {
        if (*(v38 + 9) == 1 && *(v38 + 13) == 1 && sub_1D0C3ACF0(v38) && *(v38 + 40) >= 0.0)
        {
          v55 = 0;
          v85 = *(v38 + 48);
          if (v85 > 0.0 && v85 < 3913.89432)
          {
            if (*(v38 + 9) == 1 && *(v38 + 10) == 1 && *(v38 + 11) == 1)
            {
              v55 = *(v38 + 13);
            }

            else
            {
              v55 = 0;
            }

            *(&v157 + 1) = 0;
            if (*(a1 + 2216) != 1)
            {
              *__p = 12;
              LOBYTE(v150[0]) = 3;
              cnprint::CNPrinter::Print(__p, v150, "#gmp,DetermineNearestReceiverTaiTimeMillisecond,Glonass day number is not available", v57, v58, v59, v60, v61, v113);
              goto LABEL_77;
            }

            LODWORD(v157) = *(a1 + 2220);
            if (!v115)
            {
              *__p = 12;
              LOBYTE(v150[0]) = 3;
              cnprint::CNPrinter::Print(__p, v150, "#gmp,DetermineNearestReceiverTaiTimeMillisecond,GLONASS UTC info not available", v57, v58, v59, v60, v61, v113);
              goto LABEL_77;
            }

            LODWORD(v150[0]) = 0;
            sub_1D0C3AE34(v38, *(a1 + 2304), &v157 + 1, v150);
            LODWORD(v157) = v157 + LODWORD(v150[0]);
            cnnavigation::TAITime::TAITime(__p, &v157, &v136);
            v123 = *__p;
            v96 = *(v38 + 5);
            if ((v96 - 7) < 0xFFFFFFF2)
            {
              LOWORD(v118[0]) = 12;
              LOBYTE(v120) = 4;
              sub_1D0D49EE8(v38, __p);
              v102 = __p;
              if (__p[23] < 0)
              {
                LOBYTE(v102) = __p[0];
              }

              cnprint::CNPrinter::Print(v118, &v120, "#gmp,DetermineNearestReceiverTaiTimeMillisecond,could not determine GLONASS center frequency,SV,%s", v97, v98, v99, v100, v101, v102);
              if ((__p[23] & 0x80000000) == 0)
              {
                goto LABEL_77;
              }

              v95 = *__p;
              goto LABEL_76;
            }

            v56 = v96 * 562500.0 + 1602000000.0;
            v104 = *v38;
            WORD2(v124) = *(v38 + 4);
            LODWORD(v124) = v104;
          }
        }

        else
        {
          v55 = 0;
        }
      }

LABEL_35:
      if (!sub_1D0C39448(&v124))
      {
        goto LABEL_77;
      }

      v158 = 0;
      LOBYTE(v157) = 0;
      v159 = -1;
      if ((raven::GnssMeasurementPreprocessor::GetCNSatIDFromGnssId(a1, &v124, &v157, v62, v63, v64, v65, v66) & 1) == 0 || a3 + 8 == sub_1D0C36A78(a3, &v157))
      {
        goto LABEL_74;
      }

      v67 = *sub_1D0C3A014(a3, __p, HIBYTE(v158), v159);
      if (!v67)
      {
        sub_1D0C543A8("map::at:  key not found");
      }

      v120 = 0.0;
      if (raven::GnssMeasurementPreprocessor::CalculateApproximateTimeOfFlight(a1, &v123, *(v67 + 64), &v120))
      {
        v119 = 0.0;
        v68 = *(v67 + 64);
        *__p = 0;
        *&__p[8] = 0u;
        v152 = 0u;
        v153 = 0;
        v154 = 0;
        v155 = 0;
        v156 = 0;
        if (!(*(*(v68 + 32) + 96))(v56))
        {
          *v69.i64 = v119;
          v150[0] = 0;
          v150[1] = 0;
          *v86.i64 = CNTimeSpan::SetTimeSpan(v150, 0, v69, v70);
          *__p = CNTimeSpan::operator-(&v123, v150, v86, v87);
          *&__p[8] = v88;
          *v89.i64 = v120;
          v118[0] = 0;
          v118[1] = 0;
          *v91.i64 = CNTimeSpan::SetTimeSpan(v118, 0, v89, v90);
          *__p = CNTimeSpan::operator+(__p, v118, v91, v92);
          *&__p[8] = v93;
          *&__p[16] = v44;
          if (v55)
          {
            sub_1D0C3BF24(v128, __p);
          }

          else
          {
            sub_1D0C3BF24(&v125, __p);
          }

          goto LABEL_74;
        }

        LOWORD(v150[0]) = 12;
        LOBYTE(v118[0]) = 3;
        sub_1D0D49EE8(&v124, __p);
        v76 = __p;
        if (__p[23] < 0)
        {
          LOBYTE(v76) = __p[0];
        }

        cnprint::CNPrinter::Print(v150, v118, "#gmp,DetermineNearestReceiverTaiTimeMillisecond,could not eval clock offset,SV,%s", v71, v72, v73, v74, v75, v76);
      }

      else
      {
        LOWORD(v150[0]) = 12;
        LOBYTE(v118[0]) = 3;
        sub_1D0D49EE8(&v124, __p);
        v83 = __p;
        if (__p[23] < 0)
        {
          LOBYTE(v83) = __p[0];
        }

        cnprint::CNPrinter::Print(v150, v118, "#gmp,DetermineNearestReceiverTaiTimeMillisecond,could not calculate time of flight,SV,%s", v78, v79, v80, v81, v82, v83);
      }

      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

LABEL_74:
      if (v158 < 0)
      {
        v95 = v157;
LABEL_76:
        operator delete(v95);
      }

LABEL_77:
      v38 += 200;
      if (v38 == v39)
      {
        goto LABEL_106;
      }
    }

    if (*(v38 + 9) == 1 && *(v38 + 10) == 1)
    {
      v55 = *(v38 + 12);
    }

    else
    {
      v55 = 0;
    }

    if (*(a1 + 2208) != 1)
    {
      LOWORD(v157) = 12;
      LOBYTE(v150[0]) = 3;
      cnprint::CNPrinter::Print(&v157, v150, "#gmp,DetermineNearestReceiverTaiTimeMillisecond,GPS week number is not available", v45, v46, v47, v48, v49, v113);
      goto LABEL_77;
    }

    *__p = v121 + *(a1 + 2212);
    if ((v114 & 1) == 0)
    {
      LOWORD(v157) = 12;
      LOBYTE(v150[0]) = 3;
      cnprint::CNPrinter::Print(&v157, v150, "#gmp,DetermineNearestReceiverTaiTimeMillisecond,GPS UTC info not available", v45, v46, v47, v48, v49, v113);
      goto LABEL_77;
    }

    *&__p[8] = v122;
    cnnavigation::TAITime::TAITime(&v157, __p, &v143);
    goto LABEL_100;
  }

LABEL_106:
  raven::GnssMeasurementPreprocessor::GetTimeEstimateWithBitSync(v128, __p, v37);
  if (v152 == 1)
  {
    *a5 = __p[16];
    *a4 = *__p;
    v17 = 1;
    v110 = v125;
  }

  else
  {
    v110 = v125;
    v17 = v126 != v125;
    if (v126 == v125)
    {
      LOWORD(v150[0]) = 12;
      LOBYTE(v123) = 3;
      cnprint::CNPrinter::Print(v150, &v123, "#gmp,DetermineNearestReceiverTaiTimeMillisecond,could not compute time", v105, v106, v107, v108, v109, v113);
    }

    else
    {
      v111 = *v125;
      *&v157 = *(v125 + 1);
      *(&v157 + 7) = *(v125 + 1);
      v112 = *(&v157 + 7);
      *a5 = 0;
      *a4 = v111;
      *(a4 + 1) = v157;
      *(a4 + 8) = v112;
      LOWORD(v150[0]) = 12;
      LOBYTE(v123) = 2;
      cnprint::CNPrinter::Print(v150, &v123, "#gmp,DetermineNearestReceiverTaiTimeMillisecond,using receiver time without bit edge confirmation", v105, v106, v107, v108, v109, v113);
    }
  }

  if (v110)
  {
    operator delete(v110);
  }

  if (v128[0])
  {
    operator delete(v128[0]);
  }

LABEL_7:
  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

void sub_1D0C3B958(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, void *__p, uint64_t a60, int a61, __int16 a62, char a63)
{
  if (a64 < 0)
  {
    operator delete(__p);
  }

  if (a24)
  {
    operator delete(a24);
  }

  if (a27)
  {
    operator delete(a27);
  }

  _Unwind_Resume(a1);
}

BOOL raven::GnssMeasurementPreprocessor::CalculateApproximateTimeOfFlight(double *a1, uint64_t a2, uint64_t a3, double *a4)
{
  if (*a1)
  {
    v22 = 0;
    v23 = 0u;
    v24 = 0u;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v7 = (*(*(a3 + 32) + 56))(a3 + 32, a2, &v22, &v29, v33, v32);
    v8 = v7 == 0;
    if (v7)
    {
      v33[0] = 12;
      v32[0] = 3;
      v9 = sub_1D0BCFAB8(a3);
      cnprint::CNPrinter::Print(v33, v32, "#gmp,Could not position the satellite for approximiate time of flight,SV,%s", v10, v11, v12, v13, v14, v9);
    }

    else
    {
      *a4 = sqrt((v30 - a1[103]) * (v30 - a1[103]) + (v29 - a1[102]) * (v29 - a1[102]) + (v31 - a1[104]) * (v31 - a1[104])) / 299792458.0;
    }
  }

  else
  {
    if (cnprint::CNPrinter::GetLogLevel(a1) <= 1)
    {
      v22 = 12;
      LOBYTE(v33[0]) = 1;
      cnprint::CNPrinter::Print(&v22, v33, "#gmp,CalculateApproximateTimeOfFlight,not configured", v15, v16, v17, v18, v19, v21);
    }

    return 0;
  }

  return v8;
}

void sub_1D0C3BB74(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v8 = a1;
  v23 = a1;
  v9 = 1.0;
  if (a1 <= 0.0)
  {
    if (floor(a1) == a1)
    {
      sub_1D0C50B00(qword_1EC5FB3F0, "Evaluation of tgamma at a negative integer %1%.", &v23);
    }

    if (a1 <= -20.0)
    {
      v19 = sub_1D0C3BB74(-a1);
      v20 = fabs(v19 * sub_1D0D28EC0(v8));
      if (v20 < 1.0 && v20 * 1.79769313e308 < 3.14159265)
      {
        sub_1D0D28B48(qword_1EC5FB3F0, "Result of tgamma is too large to represent.");
      }

      return;
    }

    if (a1 < 0.0)
    {
      do
      {
        v9 = v9 / v8;
        v8 = v8 + 1.0;
      }

      while (v8 < 0.0);
    }

    v23 = v8;
  }

  v10 = floor(v8);
  if (v8 < 170.0 && v10 == v8)
  {
    if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      v24 = v8;
      sub_1D0D2921C("boost::math::trunc<%1%>(%1%)", "Value %1% can not be represented in the target integer type.", &v24);
    }

    v16 = ceil(v8);
    if (v8 < 0.0)
    {
      v10 = v16;
    }

    if (v10 > 2147483650.0 || v10 < -2147483650.0)
    {
      v24 = v8;
      sub_1D0D2921C("boost::math::itrunc<%1%>(%1%)", "Value %1% can not be represented in the target integer type.", &v24);
    }

    v18 = v9 * dbl_1D0E7EBC0[v10 - 1];
  }

  else
  {
    if (v8 >= 0.0000000149011612)
    {
      v22 = v9 * sub_1D0BEF9DC(dbl_1D0E7F168, dword_1D0E7F1D0, &v23, 0.0000000149011612, 170.0, a3, a4, a5, a6, a7, a8);
      v12 = v23;
      v13 = v23 + 6.02468004 + -0.5;
      v14 = v12 * log(v13);
      if (v14 <= 709.0)
      {
        pow(v13, v12 + -0.5);
        exp(v13);
        return;
      }

      if (v14 * 0.5 <= 709.0)
      {
        v21 = pow(v13, v12 * 0.5 + -0.25);
        if (1.79769313e308 / v21 >= v22 * (v21 / exp(v13)))
        {
          return;
        }

        v15 = qword_1EC5FB3F0;
      }

      else
      {
        v15 = qword_1EC5FB3F0;
      }

      sub_1D0D28B48(v15, "Result of tgamma is too large to represent.");
    }

    if (v8 < COERCE_DOUBLE(0x4000000000000))
    {
      sub_1D0D28B48(qword_1EC5FB3F0, "Overflow Error");
    }
  }
}

void sub_1D0C3BF24(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v7 = *a1;
    v8 = v4 - *a1;
    v9 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3) + 1;
    if (v9 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_1D0C5663C();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v7) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (v11 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_1D0C54BE8();
    }

    v12 = 8 * (v8 >> 3);
    *v12 = *a2;
    *(v12 + 16) = *(a2 + 2);
    v6 = v12 + 24;
    v13 = v12 - v8;
    memcpy((v12 - v8), v7, v8);
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    v5 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v5;
    v6 = v4 + 24;
  }

  *(a1 + 8) = v6;
}

uint64_t raven::GnssMeasurementPreprocessor::GetTimeEstimateWithBitSync@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, int8x16_t a3@<Q1>)
{
  v3 = *result;
  v4 = *(result + 8);
  v5 = *result;
  if (*result == v4)
  {
    *a2 = 0;
    *(a2 + 24) = 0;
    return result;
  }

  v37 = result;
  v6 = 0uLL;
  *__p = 0u;
  v42 = 0u;
  v43 = 1065353216;
  v7 = v5 + 3;
  v8 = v5;
  if (v5 + 3 != v4)
  {
    v8 = v5;
    do
    {
      v6.i32[0] = *(v8 + 4);
      a3.i32[0] = *(v7 + 4);
      if (*v6.i32 < *a3.i32)
      {
        v8 = v7;
      }

      v7 += 3;
    }

    while (v7 != v4);
  }

  do
  {
    v9 = CNTimeSpan::operator-(v5, v8, v6, a3);
    *v6.i64 = (v16 + v9) * 1000.0;
    *a3.i64 = fabs(*v6.i64);
    if (*a3.i64 > 10.0)
    {
      goto LABEL_26;
    }

    v17 = llround(*v6.i64);
    if (!__p[1])
    {
      goto LABEL_25;
    }

    *v6.i8 = vcnt_s8(__p[1]);
    v6.i16[0] = vaddlv_u8(*v6.i8);
    if (v6.u32[0] > 1uLL)
    {
      v18 = v17;
      if (__p[1] <= v17)
      {
        v18 = v17 % __p[1];
      }
    }

    else
    {
      v18 = (__p[1] - 1) & v17;
    }

    v19 = *(__p[0] + v18);
    if (!v19 || (v20 = *v19) == 0)
    {
LABEL_25:
      operator new();
    }

    v15 = __p[1] - 1;
    while (1)
    {
      v21 = v20[1];
      if (v21 == v17)
      {
        break;
      }

      if (v6.u32[0] > 1uLL)
      {
        if (v21 >= __p[1])
        {
          v21 %= __p[1];
        }
      }

      else
      {
        v21 &= v15;
      }

      if (v21 != v18)
      {
        goto LABEL_25;
      }

LABEL_24:
      v20 = *v20;
      if (!v20)
      {
        goto LABEL_25;
      }
    }

    if (*(v20 + 4) != v17)
    {
      goto LABEL_24;
    }

    ++v20[3];
LABEL_26:
    v5 += 3;
  }

  while (v5 != v4);
  if (!*(&v42 + 1))
  {
    LOWORD(v39[0]) = 12;
    v40 = 4;
    cnprint::CNPrinter::Print(v39, &v40, "#gmp,Unexpected empty ms_offset_map", v10, v11, v12, v13, v14, v36);
LABEL_48:
    v35 = 0;
    v33 = a2;
    *a2 = 0;
    goto LABEL_49;
  }

  v22 = v42;
  if (!v42)
  {
    LOWORD(v39[0]) = 12;
    v40 = 4;
    cnprint::CNPrinter::Print(v39, &v40, "#gmp,Unexpected empty opt_consensus", v10, v11, v12, v13, v14, v36);
    goto LABEL_48;
  }

  v23 = 0;
  v24 = 0;
  do
  {
    if (v23)
    {
      if (v22[3] > v15)
      {
        v24 = *(v22 + 4);
        v15 = v22[3];
      }
    }

    else
    {
      v24 = *(v22 + 4);
      v15 = v22[3];
    }

    v22 = *v22;
    v23 = 1;
  }

  while (v22);
  a3.i64[0] = 0x3F50624DD2F1A9FCLL;
  *v6.i64 = v24 * 0.001;
  v25 = 0xAAAAAAAAAAAAAAABLL * ((v37[1] - *v37) >> 3);
  v26 = 5 * v15 >= 0xAAAAAAAAAAAAAAACLL * ((v37[1] - *v37) >> 3);
  v28 = v25 > 2 && v15 > 2;
  if (v25 <= 4)
  {
    v29 = v28;
  }

  else
  {
    v29 = v26;
  }

  v39[0] = 0;
  v39[1] = 0;
  *v30.i64 = CNTimeSpan::SetTimeSpan(v39, 0, v6, a3);
  v32 = CNTimeSpan::operator+(v8, v39, v30, v31);
  v33 = a2;
  *a2 = v32;
  *(a2 + 8) = v34;
  *(a2 + 16) = v29;
  v35 = 1;
LABEL_49:
  *(v33 + 24) = v35;
  return sub_1D0BCB594(__p);
}

void sub_1D0C3C63C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1D0BCB594(va);
  _Unwind_Resume(a1);
}

uint64_t raven::GnssMeasurementPreprocessor::ComputeSvElevAzimLosSpeed(unsigned __int8 *a1, uint64_t **a2, uint64_t a3, int a4)
{
  v42 = *MEMORY[0x1E69E9840];
  v28 = *a1;
  if (v28)
  {
    v4 = *a2;
    v5 = a2[1];
    if (*a2 != v5)
    {
      do
      {
        v8 = *v4;
        if (*v4)
        {
          v32 = 0;
          v33 = 0u;
          v34 = 0u;
          v35 = 0;
          v36 = 0;
          v37 = 0;
          v38 = 0;
          if (!(*(*(v8 + 32) + 56))(v8 + 32, a3, &v32, v31, v30, &v40))
          {
            v40 = *(a1 + 51);
            v41 = *(a1 + 104);
            if (!cnnavigation::SatElAz(&v40, v31, 1, &v39, 0, &v32))
            {
              *(v8 + 264) = v39;
              if (*(v8 + 288) == 1)
              {
                *(v8 + 288) = 0;
              }

              if (a4)
              {
                v9 = 0;
                v10 = 0.0;
                v11 = 0.0;
                do
                {
                  v12 = *&v31[v9] - *(&v40 + v9);
                  v11 = v11 + v12 * *&v30[v9];
                  v10 = v10 + v12 * v12;
                  v9 += 8;
                }

                while (v9 != 24);
                if (fabs(v10) >= 2.22044605e-16)
                {
                  *(v8 + 280) = v11 / sqrt(v10);
                  *(v8 + 288) = 1;
                }

                else
                {
                  v32 = 12;
                  v29 = 4;
                  v13 = sub_1D0BCFAB8(v8);
                  cnprint::CNPrinter::Print(&v32, &v29, "#gmp,Computation of range to satellite %s unexpectedly resulted in zero", v14, v15, v16, v17, v18, v13);
                }
              }
            }
          }
        }

        v4 += 2;
      }

      while (v4 != v5);
    }
  }

  else if (cnprint::CNPrinter::GetLogLevel(a1) <= 1)
  {
    v32 = 12;
    LOBYTE(v40) = 1;
    cnprint::CNPrinter::Print(&v32, &v40, "#gmp,ComputeSvElevAzimLosSpeed,not configured", v19, v20, v21, v22, v23, v26);
  }

  v24 = *MEMORY[0x1E69E9840];
  return v28;
}

uint64_t cnnavigation::SatElAz(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6)
{
  v7 = a5;
  v84[3] = *MEMORY[0x1E69E9840];
  result = cnnavigation::ECEFToLLA(a1, a3, v84, a5 != 0, &v79);
  if (!result)
  {
    v12 = v84[1];
    v13 = __sincos_stret(v84[0]);
    v14 = __sincos_stret(v12);
    v15 = *a2 - *a1;
    v16 = *(a2 + 8) - *(a1 + 8);
    v17 = *(a2 + 16) - *(a1 + 16);
    v18 = sqrt(v16 * v16 + v15 * v15 + v17 * v17);
    if (v18 <= 0.0)
    {
      result = 0xFFFFFFFFLL;
      goto LABEL_16;
    }

    v19.f64[0] = v14.__cosval;
    v19.f64[1] = v14.__sinval;
    v20 = vmulq_n_f64(v19, v13.__cosval);
    v21 = v15 / v18;
    v22 = v16 / v18;
    v23 = v17 / v18;
    v24 = vmuld_lane_f64(v22, v20, 1) + v20.f64[0] * (v15 / v18) + v13.__sinval * (v17 / v18);
    if (vabdd_f64(1.0, fabs(v24)) <= 0.00000001)
    {
      _NF = v24 < 0.0;
      if (v24 <= 0.0)
      {
        v74 = -1.57079633;
        if (!_NF)
        {
          v74 = 0.0;
        }
      }

      else
      {
        v74 = 1.57079633;
      }

      *a4 = v74;
      *(a4 + 8) = 0;
      if (v7)
      {
        result = 0;
        *(a6 + 64) = 0u;
        *(a6 + 80) = 0u;
        *(a6 + 32) = 0u;
        *(a6 + 48) = 0u;
        *a6 = 0u;
        *(a6 + 16) = 0u;
        goto LABEL_16;
      }
    }

    else
    {
      v77 = v20;
      *&v78 = v18;
      v25 = v13.__sinval * v14.__sinval;
      v26 = v13.__sinval * v14.__cosval;
      v76 = v24;
      v27 = v14.__cosval * v22 + -v14.__sinval * v21 + v23 * 0.0;
      v28 = -(v13.__sinval * v14.__sinval * v22) - v13.__sinval * v14.__cosval * v21 + v13.__cosval * v23;
      *a4 = 1.57079633 - acos(v24);
      v29 = atan2(v27, v28);
      if (v29 < 0.0)
      {
        v29 = v29 + 6.28318531;
      }

      *(a4 + 8) = v29;
      if (v7)
      {
        result = 0;
        v30 = *a2 - *a1;
        _D18 = -(v30 * v26);
        v32 = -(v30 * v77.f64[1]);
        v33 = vsubq_f64(*(a2 + 8), *(a1 + 8));
        _D21 = -(v33.f64[0] * v25);
        v35 = vmulq_f64(v77, v33).f64[0];
        v36 = v79 * _D18 - v13.__cosval * v14.__cosval + v32 * v81 + _D21 * v79 + v35 * v81;
        _V5.D[1] = v80.f64[1];
        v38.f64[0] = v32 * v82 + _D18 * v80.f64[0] - v13.__cosval * v14.__sinval + _D21 * v80.f64[0] + v35 * v82;
        __asm
        {
          FMLA            D20, D18, V5.D[1]
          FMLA            D20, D21, V5.D[1]
        }

        v44 = _D20 + v35 * v83;
        v45 = -(v30 * v14.__cosval);
        v46 = -(v33.f64[0] * v14.__sinval);
        v47 = v14.__sinval + v45 * v81 + v46 * v81;
        v48 = v46 * v82 - (v14.__cosval - v45 * v82);
        v49 = v46 * v83 + v45 * v83;
        _D22 = -(v30 * v77.f64[0]);
        _D7 = -(v33.f64[0] * v77.f64[1]);
        v52 = -(v33.f64[0] * v26);
        v53 = v26 + _D22 * v79 + v25 * v30 * v81 + _D7 * v79 + v52 * v81;
        v54 = v25 * v30 * v82 + _D22 * v80.f64[0] + v13.__sinval * v14.__sinval + _D7 * v80.f64[0] + v52 * v82;
        __asm
        {
          FMLA            D23, D22, V5.D[1]
          FMLA            D23, D7, V5.D[1]
        }

        v57 = v30 / *&v78;
        v38.f64[1] = v44 - v13.__sinval;
        v58 = vmuld_lane_f64(v13.__cosval, v33, 1);
        v59 = v36 + v58 * v79;
        v60 = vmlaq_n_f64(v38, v80, v58);
        _D7 = -(v33.f64[1] * v13.__sinval);
        v62 = v53 + _D7 * v79;
        v63 = v54 + _D7 * v80.f64[0];
        __asm { FMLA            D4, D7, V5.D[1] }

        v65 = vdupq_lane_s64(v78, 0);
        v66 = vdivq_f64(v33, v65);
        v67 = v13.__sinval / *&v78 - vmuld_lane_f64(v76, v66, 1) / *&v78;
        v68 = v76 * v57 / *&v78 + v59 / *&v78;
        v69 = 1.0 / sqrt(1.0 - v76 * v76);
        *a6 = v69 * v68;
        *(a6 + 8) = vmulq_n_f64(vaddq_f64(vdivq_f64(vmulq_n_f64(v66, v76), v65), vdivq_f64(v60, v65)), v69);
        v70 = vdupq_lane_s64(*&v66.f64[0], 0);
        v70.f64[0] = v57;
        *(a6 + 24) = vmulq_n_f64(vaddq_f64(vdivq_f64(v77, v65), vdivq_f64(vmulq_n_f64(v70, -v76), v65)), v69);
        v60.f64[0] = v28 * v48 - v27 * v63;
        v71.f64[0] = v25 * v27 + v28 * v14.__cosval;
        v72 = 1.0 / (v28 * v28 + v27 * v27);
        *(a6 + 40) = v69 * v67;
        *(a6 + 48) = v72 * (v28 * v47 - v27 * v62) / *&v78;
        *(a6 + 56) = v72 * v60.f64[0] / *&v78;
        *(a6 + 64) = v72 * (v28 * v49 - v27 * _D4) / *&v78;
        *(a6 + 72) = (v26 * v27 + v28 * -v14.__sinval) * v72 / *&v78;
        v71.f64[1] = -(v27 * v13.__cosval);
        *(a6 + 80) = vdivq_f64(vmulq_n_f64(v71, v72), v65);
        goto LABEL_16;
      }
    }

    result = 0;
  }

LABEL_16:
  v75 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t raven::GnssMeasurementPreprocessor::PopulateGnssMeasurements(uint64_t a1, uint64_t *a2, double *a3, uint64_t a4, _OWORD *a5, uint64_t a6, char a7, _OWORD *a8, int8x16_t a9, int8x16_t a10)
{
  if ((*a1 & 1) == 0)
  {
    if (cnprint::CNPrinter::GetLogLevel(a1) > 1)
    {
      return 0;
    }

    LOWORD(__p[0]) = 12;
    LOBYTE(v135[0]) = 1;
    v32 = "#gmp,PopulateGnssMeasurements,not configured";
LABEL_7:
    cnprint::CNPrinter::Print(__p, v135, v32, v26, v27, v28, v29, v30, v122);
    return 0;
  }

  v17 = *a3;
  a10.i64[0] = 0x3F50624DD2F1A9FCLL;
  *a9.i64 = round(a3[1] / 0.001) * 0.001;
  __p[1] = 0;
  __p[0] = 0;
  CNTimeSpan::SetTimeSpan(__p, v17, a9, a10);
  v173 = *__p;
  v132 = a8;
  *a8 = *__p;
  LOWORD(__p[0]) = 0;
  memset(&__p[1], 0, 36);
  v138 = 0uLL;
  LODWORD(v139) = 0;
  v18 = cnnavigation::TAITime::ToGPSTime(a3, __p);
  LOWORD(__p[0]) = 0;
  memset(&__p[1], 0, 36);
  v138 = 0uLL;
  LODWORD(v139) = 0;
  v130 = cnnavigation::TAITime::ToGalileoTime(a3, __p);
  LOWORD(__p[0]) = 0;
  memset(&__p[1], 0, 36);
  v138 = 0uLL;
  LODWORD(v139) = 0;
  v131 = cnnavigation::TAITime::ToBeiDouTime(a3, __p);
  LOWORD(__p[0]) = 0;
  memset(&__p[1], 0, 36);
  v138 = 0uLL;
  LODWORD(v139) = 0;
  v129 = cnnavigation::TAITime::ToNavicTime(a3, __p);
  v166 = 0;
  v167 = 0u;
  v168 = 0u;
  v169 = 0;
  v170 = 0;
  v171 = 0;
  v172 = 0;
  v31 = raven::GnssSvDatabase::PopulateGnssUTCParametersWithGlonass((a1 + 984), &v166, v19, v20, v21, v22, v23, v24, 0.0, v25);
  v164 = 1;
  v165 = 0;
  if (v31)
  {
    v167 = 0uLL;
    if (cnnavigation::TAITime::ToGLONASSTime(a3, &v166, &v164))
    {
      LOWORD(__p[0]) = 12;
      LOBYTE(v135[0]) = 4;
      v32 = "#gmp,Cannot convert receiver time to glonass time";
      goto LABEL_7;
    }
  }

  v34 = *(a1 + 888);
  v128 = a7;
  v127 = v18;
  v126 = v31;
  if (v34 >= 2)
  {
    *(a1 + 976) = v34;
  }

  else
  {
    *(a1 + 888) = *(a1 + 976);
  }

  v36 = *a2;
  v35 = a2[1];
  v33 = 1;
  if (v36 != v35)
  {
    v125 = vdupq_n_s64(0x7FF8000000000000uLL);
    while (1)
    {
      v37 = *(v36 + 8);
      v38 = v37 > 9;
      v39 = (1 << v37) & 0x2BB;
      if (v38 || v39 == 0)
      {
        v54 = *(v36 + 197);
        if ((*(*(a1 + 8) + 3808) & 1) != 0 || !*(v36 + 197))
        {
          if (*(v36 + 197))
          {
LABEL_19:
            v162 = 0;
            LOBYTE(v161[0]) = 0;
            v163 = -1;
            if (raven::GnssMeasurementPreprocessor::GetCNSatIDFromGnssId(a1, v36, v161, v26, v27, v28, v29, v30))
            {
              if (HIBYTE(v162) == 4 && (v163 <= 0x3F && ((1 << v163) & 0xF80000000000003ELL) != 0 || v163 - 1 >= 0x3F))
              {
                LOWORD(v135[0]) = 12;
                v134.i8[0] = 3;
                sub_1D0D49EE8(v36, __p);
                v46 = __p;
                if (SHIBYTE(__p[2]) < 0)
                {
                  LOBYTE(v46) = __p[0];
                }

                cnprint::CNPrinter::Print(v135, &v134, "#gmp,Not forming measurement based on svid,SV,%s", v41, v42, v43, v44, v45, v46);
              }

              else
              {
                v55 = sub_1D0C36A78(a4, v161);
                if (a4 + 8 != v55)
                {
                  v56 = *(v55 + 64);
                  v160 = 0;
                  v159 = 0;
                  sub_1D0C3ABD8(v36, *(a1 + 2304), &v160, &v159);
                  v57 = sub_1D0C36A78(a1 + 984, v161);
                  if (a1 + 992 == v57)
                  {
                    LOWORD(v135[0]) = 12;
                    v134.i8[0] = 2;
                    sub_1D0D49EE8(v36, __p);
                    v74 = __p;
                    if (SHIBYTE(__p[2]) < 0)
                    {
                      LOBYTE(v74) = __p[0];
                    }

                    cnprint::CNPrinter::Print(v135, &v134, "#gmp,Not forming measurement because svinfo is not in db,SV,%s", v69, v70, v71, v72, v73, v74);
                    goto LABEL_86;
                  }

                  v58 = *(v36 + 8);
                  if (v58 <= 9 && ((1 << v58) & 0x2BB) != 0)
                  {
                    v59 = raven::GnssSvDatabase::AggregateHealthL1((v57 + 64));
                  }

                  else
                  {
                    v59 = raven::GnssSvDatabase::AggregateHealthL5((v57 + 64));
                  }

                  if (v59 != 1)
                  {
                    if (cnprint::CNPrinter::GetLogLevel(v59) > 1)
                    {
                      goto LABEL_88;
                    }

                    LOWORD(v135[0]) = 12;
                    v134.i8[0] = 1;
                    v75 = *(v36 + 8);
                    sub_1D0D49EE8(v36, __p);
                    cnprint::CNPrinter::Print(v135, &v134, "#gmp,Not forming measurement based on health,%d,%d,SV,%s", v76, v77, v78, v79, v80, v75);
                    goto LABEL_86;
                  }

                  if (v58 > 4)
                  {
                    if (v58 <= 6)
                    {
                      if (v58 != 5)
                      {
                        LODWORD(v135[0]) = v159 + v131;
                        v135[1] = v160;
                        *&v139 = 0;
                        v138 = 0u;
                        memset(__p, 0, sizeof(__p));
                        cnnavigation::TAITime::TAITime(&v134, v135, __p);
                        goto LABEL_79;
                      }

                      LODWORD(v135[0]) = v159 + v131;
                      v135[1] = v160;
                      *&v139 = 0;
                      v138 = 0u;
                      memset(__p, 0, sizeof(__p));
                      cnnavigation::TAITime::TAITime(&v134, v135, __p);
                    }

                    else
                    {
                      if (v58 != 7)
                      {
                        if (v58 != 8)
                        {
                          if (v58 == 10)
                          {
                            LODWORD(v135[0]) = v159 + v129;
                            v135[1] = v160;
                            *&v139 = 0;
                            v138 = 0u;
                            memset(__p, 0, sizeof(__p));
                            cnnavigation::TAITime::TAITime(&v134, v135, __p);
                            goto LABEL_79;
                          }

LABEL_88:
                          if (v162 < 0)
                          {
                            operator delete(v161[0]);
                          }

                          goto LABEL_90;
                        }

                        LODWORD(v135[0]) = v159 + v130;
                        v135[1] = v160;
                        *&v139 = 0;
                        v138 = 0u;
                        memset(__p, 0, sizeof(__p));
                        cnnavigation::TAITime::TAITime(&v134, v135, __p);
LABEL_79:
                        v81 = v134;
LABEL_80:
                        v158 = v81;
                        v82 = 1176450000.0;
LABEL_81:
                        v135[0] = 1;
                        v135[1] = 0x3FB99999999999A0;
                        __p[0] = CNTimeSpan::operator-(a3, v135, v81, v62);
                        __p[1] = v84;
                        if (!sub_1D0B7C8AC(__p, (v56 + 72)))
                        {
                          v157[0] = 0;
                          v157[1] = 0x3FC999999999999ALL;
                          v134.i64[0] = CNTimeSpan::operator+(a3, v157, v85, v86);
                          v134.i64[1] = v87;
                          if (!sub_1D0B7CF88(v134.i64, (v56 + 88)))
                          {
                            v95 = *(a1 + 8);
                            v96 = *(v36 + 8);
                            v97 = 0.0;
                            if (v96 <= 0xA && ((1 << v96) & 0x544) != 0)
                            {
                              v97 = *(v95 + 584);
                            }

                            if (*(v95 + 591))
                            {
                              v98 = *(v36 + 196);
                              v99 = *(v36 + 192);
                              if (v99 < v97 && (LODWORD(v99) & 0x7FFFFFFFu) < 0x7F800000)
                              {
                                v98 = 1;
                              }
                            }

                            else
                            {
                              v98 = 0;
                            }

                            v138 = 0u;
                            v139 = 0u;
                            memset(__p, 0, sizeof(__p));
                            v140 = 0;
                            v141 = 0x7FF8000000000000;
                            v142 = 0;
                            v143 = 0;
                            v144 = 0x7FF8000000000000;
                            v146 = v125;
                            v147 = v125;
                            v148 = v125;
                            v145 = 2143289344;
                            v149 = 2143289344;
                            v150 = 0;
                            v151 = 0;
                            v152 = 0;
                            v153 = 0;
                            v154 = 0;
                            v155 = 1;
                            v156 = v125;
                            if (raven::GnssMeasurementPreprocessor::FormPseudorange(a1, v36, v98, a3, &v173, &v158, v56, __p, v82, v128))
                            {
                              raven::GnssMeasurementPreprocessor::CheckObservableAndAddToVector(a1, __p, a5, v132, v56, v100, v101, v102);
                            }

                            else
                            {
                              v134.i16[0] = 12;
                              LOBYTE(v157[0]) = 2;
                              sub_1D0D49EE8(v36, v135);
                              v108 = v135;
                              if (v136 < 0)
                              {
                                LOBYTE(v108) = v135[0];
                              }

                              cnprint::CNPrinter::Print(&v134, v157, "#gmp,Could not form pseudorange,SV,%s", v103, v104, v105, v106, v107, v108);
                              if (v136 < 0)
                              {
                                operator delete(v135[0]);
                              }
                            }

                            raven::GnssMeasurementPreprocessor::FormInstantaneousDoppler(a1, v36, v98, v56, __p, v82);
                            raven::GnssMeasurementPreprocessor::FormAveragedDoppler(a1, v36, v98, a6, v56, v135, v82);
                            raven::GnssMeasurementPreprocessor::FormAveragedDopplerFromPhaseTracking(a1, v36, v161, v98, a6, v56, &v134, v82);
                            raven::GnssMeasurementPreprocessor::SelectAndPopulateDoppler(a1, v36, __p, v135, &v134, a5, v132, v56);
                            v109 = *(v56 + 328);
                            for (i = *(v56 + 336); v109 != i; v109 += 208)
                            {
                              v111 = a5[1];
                              *v109 = *a5;
                              *(v109 + 16) = v111;
                              v112 = a5[2];
                              v113 = a5[3];
                              v114 = a5[5];
                              *(v109 + 64) = a5[4];
                              *(v109 + 80) = v114;
                              *(v109 + 32) = v112;
                              *(v109 + 48) = v113;
                              *(v109 + 48) = *v132;
                              *(v109 + 40) = 1;
                            }

                            goto LABEL_88;
                          }
                        }

                        LOWORD(v135[0]) = 12;
                        v134.i8[0] = 3;
                        sub_1D0D49EE8(v36, __p);
                        v93 = __p;
                        if (SHIBYTE(__p[2]) < 0)
                        {
                          LOBYTE(v93) = __p[0];
                        }

                        v94 = a3[1] + *a3;
                        v123 = *(v56 + 80) + *(v56 + 72) - v94;
                        v124 = *(v56 + 96) + *(v56 + 88) - v94;
                        cnprint::CNPrinter::Print(v135, &v134, "#gmp,Satellite polynomial is outside of time range needed for this measurement,SV,%s,rx_time,%lf,poly_start_delta,%lf,poly_end_delta,%lf", v88, v89, v90, v91, v92, v93);
                        goto LABEL_86;
                      }

                      LODWORD(v135[0]) = v159 + v130;
                      v135[1] = v160;
                      *&v139 = 0;
                      v138 = 0u;
                      memset(__p, 0, sizeof(__p));
                      cnnavigation::TAITime::TAITime(&v134, v135, __p);
                    }

                    v81 = v134;
LABEL_77:
                    v158 = v81;
                    v82 = 1575420000.0;
                    goto LABEL_81;
                  }

                  if (v58 <= 2)
                  {
                    if (v58 != 1)
                    {
                      if (v58 != 2)
                      {
                        goto LABEL_88;
                      }

                      LODWORD(__p[0]) = v159 + v127;
                      v60.i64[0] = v160;
                      __p[1] = v160;
                      cnnavigation::TAITime::TAITime(v135, __p, v60, v61);
                      v81 = *v135;
                      goto LABEL_80;
                    }

                    LODWORD(__p[0]) = v159 + v127;
                    v60.i64[0] = v160;
                    __p[1] = v160;
                    cnnavigation::TAITime::TAITime(v135, __p, v60, v61);
                    v81 = *v135;
                    goto LABEL_77;
                  }

                  if (v58 != 3)
                  {
                    LODWORD(v135[0]) = v159 + v131;
                    v135[1] = v160;
                    *&v139 = 0;
                    v138 = 0u;
                    memset(__p, 0, sizeof(__p));
                    cnnavigation::TAITime::TAITime(&v134, v135, __p);
                    v81 = v134;
                    v158 = v134;
                    v82 = 1561098000.0;
                    goto LABEL_81;
                  }

                  if (v126)
                  {
                    v83 = *(v36 + 5);
                    if ((v83 - 7) <= 0xFFFFFFF1)
                    {
                      LOWORD(__p[0]) = 12;
                      LOBYTE(v135[0]) = 4;
                      cnprint::CNPrinter::Print(__p, v135, "#gmp,Could not form carrier frequency for GLONASS satellite,freq,%i", v26, v27, v28, v29, v30, v83);
                      goto LABEL_88;
                    }

                    v134.i32[0] = 0;
                    __p[1] = 0;
                    sub_1D0C3AE34(v36, *(a1 + 2304), &__p[1], v134.i32);
                    LODWORD(__p[0]) = v134.i32[0] + v164;
                    cnnavigation::TAITime::TAITime(v135, __p, &v166);
                    v82 = v83 * 562500.0 + 1602000000.0;
                    v81 = *v135;
                    v158 = *v135;
                    goto LABEL_81;
                  }

                  LOWORD(v135[0]) = 12;
                  v134.i8[0] = 3;
                  sub_1D0D49EE8(v36, __p);
                  v120 = __p;
                  if (SHIBYTE(__p[2]) < 0)
                  {
                    LOBYTE(v120) = __p[0];
                  }

                  cnprint::CNPrinter::Print(v135, &v134, "#gmp,GLONASS UTC information unavailable,cannot form measurement,SV,%s", v115, v116, v117, v118, v119, v120);
LABEL_86:
                  if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
                  {
                    goto LABEL_88;
                  }

LABEL_87:
                  operator delete(__p[0]);
                  goto LABEL_88;
                }

                LOWORD(v135[0]) = 12;
                v134.i8[0] = 3;
                sub_1D0D49EE8(v36, __p);
                v68 = __p;
                if (SHIBYTE(__p[2]) < 0)
                {
                  LOBYTE(v68) = __p[0];
                }

                cnprint::CNPrinter::Print(v135, &v134, "#gmp,Could not find the corresponding SV data for measurement,SV,%s", v63, v64, v65, v66, v67, v68);
              }
            }

            else
            {
              LOWORD(v135[0]) = 12;
              if (*v36 == 2)
              {
                v47 = 3;
              }

              else
              {
                v47 = 4;
              }

              v134.i8[0] = v47;
              sub_1D0D49EE8(v36, __p);
              v53 = __p;
              if (SHIBYTE(__p[2]) < 0)
              {
                LOBYTE(v53) = __p[0];
              }

              cnprint::CNPrinter::Print(v135, &v134, "#gmp,could not form sat id,SV,%s", v48, v49, v50, v51, v52, v53);
            }

            if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
            {
              goto LABEL_88;
            }

            goto LABEL_87;
          }
        }

        else if (*(v36 + 196) != 1)
        {
          goto LABEL_19;
        }
      }

      else if (*(v36 + 197))
      {
        goto LABEL_19;
      }

LABEL_90:
      v36 += 200;
      if (v36 == v35)
      {
        return 1;
      }
    }
  }

  return v33;
}

void sub_1D0C3D8F0(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x36F]) < 0)
  {
    operator delete(STACK[0x358]);
  }

  _Unwind_Resume(a1);
}

uint64_t cnnavigation::TAITime::ToNavicTime(cnnavigation::TAITime *this, const cnnavigation::GNSSUTCParameters *a2)
{
  v3 = *this / 604800;
  v4 = *(this + 1) + (*this - 604800 * v3) + 561548.816;
  v5 = vcvtmd_s64_f64(v4 / 604800.0);
  v6 = v4 - v5 * 604800.0;
  v7 = v3 + v5 + 18;
  if (cnnavigation::GNSSUTCParameters::IsValid(a2) && *(a2 + 1) == 6)
  {
    v17[0] = 0;
    v17[1] = 0;
    *v8.i64 = v6;
    *v10.i64 = CNTimeSpan::SetTimeSpan(v17, 604800 * v7, v8, v9);
    v11 = *(a2 + 1);
    v12 = *(a2 + 2);
    v14 = CNTimeSpan::operator-(v17, a2 + 3, v10, v13);
    v7 += vcvtmd_s64_f64((v6 + v11 + v12 * (v15 + v14)) / 604800.0);
  }

  return v7;
}

uint64_t cnnavigation::TAITime::ToBeiDouTime(cnnavigation::TAITime *this, const cnnavigation::GNSSUTCParameters *a2)
{
  v3 = *this / 604800;
  v4 = *(this + 1) + (*this - 604800 * v3) + 561534.816;
  v5 = vcvtmd_s64_f64(v4 / 604800.0);
  v6 = v4 - v5 * 604800.0;
  v7 = v3 + v5 - 314;
  if (cnnavigation::GNSSUTCParameters::IsValid(a2) && *(a2 + 1) == 4)
  {
    v17[0] = 0;
    v17[1] = 0;
    *v8.i64 = v6;
    *v10.i64 = CNTimeSpan::SetTimeSpan(v17, 604800 * v7, v8, v9);
    v11 = *(a2 + 1);
    v12 = *(a2 + 2);
    v14 = CNTimeSpan::operator-(v17, a2 + 3, v10, v13);
    v7 += vcvtmd_s64_f64((v6 + v11 + v12 * (v15 + v14)) / 604800.0);
  }

  return v7;
}

uint64_t raven::GnssSvDatabase::AggregateHealthL1(_BYTE *a1)
{
  v1 = 0;
  v3[0] = a1[220];
  v3[1] = a1[212];
  v3[2] = a1[214];
  v3[3] = a1[216];
  v3[4] = a1[218];
  while (1)
  {
    result = v3[v1];
    if ((result - 1) < 2)
    {
      break;
    }

    if (++v1 == 5)
    {
      return 0;
    }
  }

  return result;
}

void *cnnavigation::TAITime::TAITime(void *a1, double *a2, int8x16_t a3, int8x16_t a4)
{
  *a1 = 0;
  a1[1] = 0;
  v5 = 604800 * (*a2 - 1042);
  a4.i64[0] = 0xC1212319A1CAC083;
  *a3.i64 = a2[1] + -561548.816;
  v7 = 0uLL;
  CNTimeSpan::SetTimeSpan(&v7, v5, a3, a4);
  *a1 = v7;
  return a1;
}

{
  *a1 = 0;
  a1[1] = 0;
  v5 = 604800 * (*a2 - 1042);
  a4.i64[0] = 0xC1212319A1CAC083;
  *a3.i64 = a2[1] + -561548.816;
  v7 = 0uLL;
  CNTimeSpan::SetTimeSpan(&v7, v5, a3, a4);
  *a1 = v7;
  return a1;
}

uint64_t raven::GnssMeasurementPreprocessor::FormPseudorange(cnprint::CNPrinter *a1, uint64_t a2, char a3, uint64_t a4, void *a5, void *a6, uint64_t a7, uint64_t a8, double a9, char a10)
{
  v231[0] = a9;
  if ((*a1 & 1) == 0)
  {
    if (cnprint::CNPrinter::GetLogLevel(a1) > 1)
    {
      return 0;
    }

    LOWORD(__p[0]) = 12;
    LOBYTE(v225) = 1;
    v39 = "#gmp,FormPseudorange,not configured";
    goto LABEL_11;
  }

  v19 = *(a7 + 248);
  LogLevel = cnprint::CNPrinter::GetLogLevel(a1);
  if (v19 > 200.0)
  {
    if (LogLevel <= 1)
    {
      LOWORD(v221[0]) = 12;
      LOBYTE(v220) = 1;
      v26 = *(a7 + 248);
      sub_1D0D49EE8(a2, __p);
      v32 = *(a2 + 8);
      v226 = 0;
      v227 = 0;
      v225 = 0;
      if (v32 <= 4)
      {
        if (v32 <= 1)
        {
          HIBYTE(v227) = 4;
          if (v32)
          {
            v33 = 1094922572;
          }

          else
          {
            v33 = 543911509;
          }
        }

        else if (v32 == 2)
        {
          HIBYTE(v227) = 4;
          v33 = 538981708;
        }

        else
        {
          HIBYTE(v227) = 4;
          if (v32 == 3)
          {
            v33 = 543568204;
          }

          else
          {
            v33 = 541667650;
          }
        }
      }

      else if (v32 > 7)
      {
        if (v32 == 8)
        {
          HIBYTE(v227) = 4;
          v33 = 543241541;
        }

        else
        {
          if (v32 != 9)
          {
            if (v32 == 10)
            {
              HIBYTE(v227) = 3;
              qmemcpy(&v225, "NL5", 3);
            }

            goto LABEL_134;
          }

          HIBYTE(v227) = 4;
          v33 = 1112748364;
        }
      }

      else if (v32 == 5)
      {
        HIBYTE(v227) = 4;
        v33 = 541274434;
      }

      else
      {
        HIBYTE(v227) = 4;
        if (v32 == 6)
        {
          v33 = 543240770;
        }

        else
        {
          v33 = 538980677;
        }
      }

      LODWORD(v225) = v33;
LABEL_134:
      cnprint::CNPrinter::Print(v221, &v220, "#gmp,SV approximate range uncertainty from ephemeris,%.1f,meters exceeds threshold,%.1f,dropping,SV,%s,band,%s", v27, v28, v29, v30, v31, v26);
      if (SHIBYTE(v227) < 0)
      {
        operator delete(v225);
      }

LABEL_136:
      if (v230 < 0)
      {
        operator delete(__p[0]);
      }
    }

    return 0;
  }

  if (!LogLevel)
  {
    LOWORD(v225) = 12;
    LOBYTE(v221[0]) = 0;
    sub_1D0D49EE8(a2, __p);
    if (v230 >= 0)
    {
      v46 = __p;
    }

    else
    {
      LOBYTE(v46) = __p[0];
    }

    v216 = *(a4 + 8) + *a4;
    cnprint::CNPrinter::Print(&v225, v221, "#gmp,Processing meas,SV,%s,time,%lf", v41, v42, v43, v44, v45, v46);
    if (v230 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v47 = *(a2 + 8);
  if (v47 <= 4)
  {
    if (*(a2 + 8) <= 2u)
    {
      if (v47 != 1)
      {
        if (v47 != 2)
        {
          goto LABEL_117;
        }

        v51 = *(a2 + 9);
        if (v51 == 1)
        {
          if (sub_1D0C3ACF0(a2) && *(a2 + 40) >= 0.0 && (v52 = *(a2 + 48), v52 > 0.0))
          {
            LOBYTE(v51) = *(a2 + 9);
            if (v52 < 2001.38457)
            {
              if ((*(a2 + 9) & 1) == 0)
              {
                LOWORD(__p[0]) = 12;
                LOBYTE(v225) = 5;
                v39 = "#gmp,L5 mod value for PR unavailable";
                goto LABEL_11;
              }

              if (*(a2 + 10) != 1)
              {
                goto LABEL_138;
              }

              if (*(a2 + 12))
              {
                goto LABEL_72;
              }

              v50 = 6.0;
              if ((*(a2 + 11) & 1) == 0)
              {
                v50 = 0.01;
              }

              goto LABEL_156;
            }
          }

          else
          {
            LOBYTE(v51) = *(a2 + 9);
          }
        }

        LOWORD(__p[0]) = 12;
        LOBYTE(v225) = 2;
        sub_1D0C3ACF0(a2);
        *(a2 + 40);
        v113 = *(a2 + 48);
        cnprint::CNPrinter::Print(__p, &v225, "#gmp,Inalid L5 pseudorange,code-lock,%i,sv-time-present,%i,tot-unc,%.3lf", v114, v115, v116, v117, v118, v51);
        return 0;
      }

      v59 = *(a2 + 9);
      if (v59 == 1)
      {
        if (sub_1D0C3ACF0(a2) && *(a2 + 40) >= 0.0 && (v60 = *(a2 + 48), v60 > 0.0))
        {
          LOBYTE(v59) = *(a2 + 9);
          if (v60 < 2001.38457)
          {
            if ((*(a2 + 9) & 1) == 0)
            {
              LOWORD(__p[0]) = 12;
              LOBYTE(v225) = 5;
              v39 = "#gmp,L1 mod value for PR unavailable";
              goto LABEL_11;
            }

            goto LABEL_59;
          }
        }

        else
        {
          LOBYTE(v59) = *(a2 + 9);
        }
      }

      LOWORD(__p[0]) = 12;
      LOBYTE(v225) = 2;
      sub_1D0C3ACF0(a2);
      *(a2 + 40);
      v119 = *(a2 + 48);
      cnprint::CNPrinter::Print(__p, &v225, "#gmp,Invalid L1 pseudorange,code-lock,%i,sv-time-present,%i,tot-unc,%.3lf,", v120, v121, v122, v123, v124, v59);
      return 0;
    }

    if (v47 == 3)
    {
      v61 = sub_1D0C3ACF0(a2);
      v62 = *(a2 + 9);
      if (!v61 || *(a2 + 40) < 0.0 || (v63 = *(a2 + 48), v63 <= 0.0) || (*(a2 + 9) & 1) == 0 || v63 >= 2001.38457)
      {
        LOWORD(__p[0]) = 12;
        LOBYTE(v225) = 2;
        sub_1D0C3ACF0(a2);
        *(a2 + 40);
        v88 = *(a2 + 48);
        cnprint::CNPrinter::Print(__p, &v225, "#gmp,Invalid L1f pseudorange,code-lock,%i,sv-time-present,%i,tot-unc,%lf", v89, v90, v91, v92, v93, v62);
        return 0;
      }

      *&v64 = COERCE_DOUBLE(sub_1D0C426B4((a2 + 9)));
      if ((v65 & 1) == 0)
      {
        LOWORD(__p[0]) = 12;
        LOBYTE(v225) = 5;
        v39 = "#gmp,L1f mod value for PR unavailable";
        goto LABEL_11;
      }

      goto LABEL_116;
    }

    if (v47 != 4)
    {
      goto LABEL_117;
    }

    v53 = sub_1D0C3ACF0(a2);
    v54 = *(a2 + 9);
    if (!v53 || *(a2 + 40) < 0.0 || (v55 = *(a2 + 48), v55 <= 0.0) || (*(a2 + 9) & 1) == 0 || v55 >= 2001.38457)
    {
      LOWORD(__p[0]) = 12;
      LOBYTE(v225) = 2;
      sub_1D0C3ACF0(a2);
      *(a2 + 40);
      v76 = *(a2 + 48);
      cnprint::CNPrinter::Print(__p, &v225, "#gmp,Invalid B1i pseudorange,b1i-code-lock,%i,sv-time-present,%i,tot-unc,%.3f", v77, v78, v79, v80, v81, v54);
      return 0;
    }

LABEL_59:
    if (*(a2 + 10) == 1)
    {
      if ((*(a2 + 12) & 1) == 0)
      {
        v50 = 6.0;
        if (*(a2 + 11))
        {
          goto LABEL_156;
        }

        goto LABEL_62;
      }

LABEL_72:
      v50 = 604800.0;
      goto LABEL_156;
    }

LABEL_138:
    v50 = 0.001;
    goto LABEL_156;
  }

  if (*(a2 + 8) <= 6u)
  {
    if (v47 == 5)
    {
      v68 = sub_1D0C3ACF0(a2);
      v69 = *(a2 + 9);
      if (!v68 || *(a2 + 40) < 0.0 || (v70 = *(a2 + 48), v70 <= 0.0) || (*(a2 + 9) & 1) == 0 || v70 >= 2001.38457)
      {
        LOWORD(__p[0]) = 12;
        LOBYTE(v225) = 2;
        sub_1D0C3ACF0(a2);
        *(a2 + 40);
        v101 = *(a2 + 48);
        cnprint::CNPrinter::Print(__p, &v225, "#gmp,Invalid B1c pseudorange,b1c-code-lock,%i,sv-time-present,%i,tot-unc,%.3f", v102, v103, v104, v105, v106, v69);
        return 0;
      }

      v71 = 0.01;
      if (*(a2 + 10))
      {
        v71 = 18.0;
      }

      if (*(a2 + 11))
      {
        v50 = 604800.0;
      }

      else
      {
        v50 = v71;
      }
    }

    else
    {
      if (v47 != 6)
      {
        goto LABEL_117;
      }

      v56 = sub_1D0C3ACF0(a2);
      v57 = *(a2 + 9);
      if (!v56 || *(a2 + 40) < 0.0 || (v58 = *(a2 + 48), v58 <= 0.0) || (*(a2 + 9) & 1) == 0 || v58 >= 2001.38457)
      {
        LOWORD(__p[0]) = 12;
        LOBYTE(v225) = 2;
        sub_1D0C3ACF0(a2);
        *(a2 + 40);
        v82 = *(a2 + 48);
        cnprint::CNPrinter::Print(__p, &v225, "#gmp,Invalid B2a pseudorange,b2a-code-lock,%i,sv-time-present,%i,tot-unc,%.3lf", v83, v84, v85, v86, v87, v57);
        return 0;
      }

      if (*(a2 + 10) != 1)
      {
        goto LABEL_138;
      }

      if (*(a2 + 12))
      {
        goto LABEL_72;
      }

      v50 = 3.0;
      if ((*(a2 + 11) & 1) == 0)
      {
        v50 = 0.005;
      }
    }
  }

  else
  {
    if (v47 != 7)
    {
      if (v47 != 8)
      {
        if (v47 == 10)
        {
          v48 = *(a2 + 9);
          if (v48 == 1)
          {
            if (sub_1D0C3ACF0(a2) && *(a2 + 40) >= 0.0 && (v49 = *(a2 + 48), v49 > 0.0))
            {
              LOBYTE(v48) = *(a2 + 9);
              if (v49 < 2001.38457)
              {
                if (*(a2 + 9))
                {
                  if (*(a2 + 10) == 1)
                  {
                    if ((*(a2 + 12) & 1) == 0)
                    {
                      v50 = 12.0;
                      if (*(a2 + 11))
                      {
                        goto LABEL_156;
                      }

LABEL_62:
                      v50 = 0.02;
                      goto LABEL_156;
                    }

                    goto LABEL_72;
                  }

                  goto LABEL_138;
                }

                LOWORD(__p[0]) = 12;
                LOBYTE(v225) = 5;
                v39 = "#gmp,NL5 mod value for PR unavailable";
LABEL_11:
                cnprint::CNPrinter::Print(__p, &v225, v39, v34, v35, v36, v37, v38, v215);
                return 0;
              }
            }

            else
            {
              LOBYTE(v48) = *(a2 + 9);
            }
          }

          LOWORD(__p[0]) = 12;
          LOBYTE(v225) = 2;
          sub_1D0C3ACF0(a2);
          *(a2 + 40);
          v125 = *(a2 + 48);
          cnprint::CNPrinter::Print(__p, &v225, "#gmp,Invalid L5 pseudorange,code-lock,%i,sv-time-present,%i,tot-unc,%.3lf,", v126, v127, v128, v129, v130, v48);
          return 0;
        }

LABEL_117:
        LOWORD(__p[0]) = 12;
        LOBYTE(v225) = 2;
        cnprint::CNPrinter::Print(__p, &v225, "#gmp,Measurement from band not to be used,band,%i", v21, v22, v23, v24, v25, v47);
        return 0;
      }

      v72 = sub_1D0C3ACF0(a2);
      v73 = *(a2 + 9);
      if (!v72 || *(a2 + 40) < 0.0 || (v74 = *(a2 + 48), v74 <= 0.0) || (*(a2 + 9) & 1) == 0 || v74 >= 2001.38457)
      {
        LOWORD(__p[0]) = 12;
        LOBYTE(v225) = 2;
        sub_1D0C3ACF0(a2);
        *(a2 + 40);
        v107 = *(a2 + 48);
        cnprint::CNPrinter::Print(__p, &v225, "#gmp,Invalid E5a pseudorange,code-lock,%i,sv-time-present,%i,tot-unc,%.3lf", v108, v109, v110, v111, v112, v73);
        return 0;
      }

      *&v64 = COERCE_DOUBLE(sub_1D0C42F74((a2 + 9)));
      if ((v75 & 1) == 0)
      {
        LOWORD(__p[0]) = 12;
        LOBYTE(v225) = 5;
        v39 = "#gmp,E5a mod value for PR unavailable";
        goto LABEL_11;
      }

LABEL_116:
      v50 = *&v64;
      goto LABEL_156;
    }

    if (!sub_1D0C3ACF0(a2) || *(a2 + 40) < 0.0 || (v66 = *(a2 + 48), v66 <= 0.0) || (*(a2 + 9) & 1) == 0 || v66 >= 2001.38457)
    {
      LOWORD(__p[0]) = 12;
      LOBYTE(v225) = 2;
      v94 = *(a2 + 10);
      sub_1D0C3ACF0(a2);
      *(a2 + 40);
      v95 = *(a2 + 48);
      cnprint::CNPrinter::Print(__p, &v225, "#gmp,Invalid E1 pseudorange,e1c-code-lock,%i,e1bc-code-lock,%i,sv-time-present,%i,tot-unc,%.3lf", v96, v97, v98, v99, v100, v94);
      return 0;
    }

    if (*(a2 + 11) == 1)
    {
      *&v67 = 2.0;
      if (*(a2 + 12))
      {
        *&v67 = 604800.0;
      }
    }

    else if (*(a2 + 10) == 1)
    {
      if (*(a2 + 12))
      {
        *&v67 = 604800.0;
      }

      else
      {
        *&v67 = 0.1;
      }
    }

    else
    {
      *&v67 = 0.004;
    }

    v50 = *&v67;
  }

LABEL_156:
  *(a8 + 112) = *(a2 + 192);
  *(a8 + 96) = 1;
  *(a8 + 100) = *(a2 + 8);
  *(a8 + 189) = a3;
  *(a8 + 104) = a9;
  v131 = vdupq_n_s64(0x3E112E0BE826D695uLL);
  v132 = vmulq_f64(vcvtq_f64_s64(vsubq_s64(*(a2 + 16), vdupq_n_s64(*(a1 + 288) + *(a2 + 32)))), v131);
  *(a8 + 192) = v132;
  v224 = 0.0;
  v225 = 0;
  v226 = 0x3FB2F1A9FBE76C8BLL;
  __p[0] = CNTimeSpan::operator-(a4, &v225, v132, v131);
  __p[1] = v133;
  if (!raven::GnssMeasurementPreprocessor::CalculateApproximateTimeOfFlight(a1, __p, a7, &v224))
  {
    LOWORD(__p[0]) = 12;
    LOBYTE(v225) = 3;
    v39 = "#gmp,Calculation of approximate time of flight failed";
    goto LABEL_11;
  }

  *v134.i64 = v224;
  __p[0] = 0;
  __p[1] = 0;
  *v136.i64 = CNTimeSpan::SetTimeSpan(__p, 0, v134, v135);
  v225 = CNTimeSpan::operator-(a4, __p, v136, v137);
  v226 = v138;
  v223 = 0.0;
  if (cnnavigation::GNSSEphemerides::GNSSSatelliteClockOffset((a7 + 32), &v225, a9, &v223))
  {
    LOWORD(v221[0]) = 12;
    LOBYTE(v220) = 3;
    sub_1D0D49EE8(a2, __p);
    if (v230 >= 0)
    {
      v144 = __p;
    }

    else
    {
      LOBYTE(v144) = __p[0];
    }

    cnprint::CNPrinter::Print(v221, &v220, "#gmp,Calculation of satellite clock offset failed,SV,%s,time,%.3lf", v139, v140, v141, v142, v143, v144);
    goto LABEL_136;
  }

  v222 = 0.0;
  v145 = raven::GnssMeasurementPreprocessor::PopulatePseudorangeMeasurementCorrections(a1, &v225, a2, (a2 + 8), v231, a7, (a8 + 128), &v222);
  result = 0;
  if (v145)
  {
    v148 = v223;
    v147.i64[0] = 0x3E2CA726EB25F9DBLL;
    *v146.i64 = v223 + (-*(a8 + 128) - *(a8 + 152) - *(a8 + 144) - *(a8 + 160)) * 0.00000000333564095;
    __p[0] = 0;
    __p[1] = 0;
    *v149.i64 = CNTimeSpan::SetTimeSpan(__p, 0, v146, v147);
    v221[0] = CNTimeSpan::operator-(a6, __p, v149, v150);
    v221[1] = v151;
    *v154.i64 = CNTimeSpan::operator-(&v225, v221, v152, v153);
    v156 = v155 + *v154.i64;
    *v157.i64 = v50 * round((v155 + *v154.i64) / v50);
    __p[0] = 0;
    __p[1] = 0;
    *v158.i64 = CNTimeSpan::SetTimeSpan(__p, 0, v157, v154);
    *&v220 = CNTimeSpan::operator+(v221, __p, v158, v159);
    *(&v220 + 1) = v160;
    if (*(*(a1 + 1) + 580) == 1 && v50 != 0.001)
    {
      *v162.i64 = round(v156 / 0.001);
      *v161.i64 = *v162.i64 * 0.001;
      v218 = 0;
      v219 = 0;
      *v163.i64 = CNTimeSpan::SetTimeSpan(&v218, 0, v161, v162);
      __p[0] = CNTimeSpan::operator+(v221, &v218, v163, v164);
      __p[1] = v165;
      v168 = CNTimeSpan::operator-(__p, &v220, v166, v167);
      v172 = sub_1D0C3FFD0(v168, v169, v170, v171);
      *v162.i64 = v172;
      if ((v173 + v172) * 1000.0 > 0.1)
      {
        v220 = *__p;
        if (!cnprint::CNPrinter::GetLogLevel(v172))
        {
          LOWORD(v218) = 12;
          v217 = 0;
          v174 = sub_1D0BCFAB8(a7);
          cnprint::CNPrinter::Print(&v218, &v217, "#gmp,Detected sync error,SV %s,tx_time,%.6f,error_ms,%.3f,mod_value_ms,%.1f", v175, v176, v177, v178, v179, v174);
        }
      }

      v148 = v223;
    }

    v218 = 0;
    v219 = 0;
    *v161.i64 = v148;
    *v180.i64 = CNTimeSpan::SetTimeSpan(&v218, 0, v161, v162);
    __p[0] = CNTimeSpan::operator+(&v220, &v218, v180, v181);
    __p[1] = v182;
    v185 = CNTimeSpan::operator-(a5, __p, v183, v184);
    *(a8 + 120) = (v186 + v185) * 299792458.0;
    if (!sub_1D0C3ACF0(a2) || (*(a2 + 80) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (v187 = *(a2 + 88), v187 <= 0.0))
    {
      if (!sub_1D0C3ACF0(a2) || (*(a2 + 56) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (v187 = *(a2 + 64), v187 <= 0.0))
      {
        LOWORD(v218) = 12;
        v217 = 3;
        sub_1D0D49EE8(a2, __p);
        if (v230 >= 0)
        {
          v197 = __p;
        }

        else
        {
          LOBYTE(v197) = __p[0];
        }

        cnprint::CNPrinter::Print(&v218, &v217, "#gmp,Frequency offset unavailable, dropping pseudorange formation,SV,%s", v192, v193, v194, v195, v196, v197);
        goto LABEL_136;
      }
    }

    v188 = *(a1 + 288);
    v189 = *(a1 + 1);
    v190 = *(a7 + 248);
    if (*(v189 + 589) == 1)
    {
      v191 = v190 * 3.33564095 * (v190 * 3.33564095);
    }

    else
    {
      if (v190 <= 5.0)
      {
        if (*(a7 + 256) != 4)
        {
          v191 = 0.0;
          if (*(a7 + 256))
          {
            goto LABEL_193;
          }

          v198 = *(a1 + 288);
          LOWORD(v218) = 12;
          v217 = 3;
          sub_1D0D49EE8(a2, __p);
          if (v230 >= 0)
          {
            v204 = __p;
          }

          else
          {
            LOBYTE(v204) = __p[0];
          }

          cnprint::CNPrinter::Print(&v218, &v217, "#gmp,SV position source unknown,SV,%s", v199, v200, v201, v202, v203, v204);
          if (v230 < 0)
          {
            operator delete(__p[0]);
          }

          v189 = *(a1 + 1);
          v188 = v198;
        }

        v191 = 11.1265006;
        goto LABEL_193;
      }

      v191 = (v190 * v190 + -25.0) * 11.1265006;
    }

LABEL_193:
    v205 = v187 * 0.000000001;
    v206 = v188;
    v207 = v206 * 0.000000001 * (v206 * 0.000000001 * 4.903325) / 299792458.0 * 1000000000.0;
    v208 = v205 * v206;
    v209 = 0.0;
    if (*(v189 + 590) == 1)
    {
      v209 = *(v189 + 560) * (v222 * v222);
    }

    *(a8 + 188) = *(a2 + 52);
    raven::GnssMeasurementPreprocessor::GetMeasurementUncertaintyScaleFactor(a1, a7, a8, __p);
    v210 = *(a2 + 48);
    v211 = v208 * v208 + v207 * v207 + v191 + v209;
    v212 = *(a1 + 1);
    v213 = *(v212 + 545);
    v214 = *(v212 + 3844);
    *(a8 + 168) = sub_1D0C411CC(a10, a7, v213, v214, v210, v211, *__p);
    if (LOBYTE(__p[1]) == 1)
    {
      *(a8 + 172) = sub_1D0C411CC(a10, a7, v213, v214, v210, v211, *(__p + 1));
      *(a8 + 176) = 1;
    }

    if (v229 == 1)
    {
      *(a8 + 180) = sub_1D0C411CC(a10, a7, *(*(a1 + 1) + 545), *(*(a1 + 1) + 3844), v210, v211, *(&__p[1] + 1));
      *(a8 + 184) = 1;
    }

    return 1;
  }

  return result;
}

void sub_1D0C3ED78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a36 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t cnnavigation::GNSSEphemerides::GNSSSatelliteClockOffset(cnnavigation::GNSSEphemerides *this, const cnnavigation::TAITime *a2, double a3, double *a4)
{
  v6 = 0;
  v7 = 0u;
  v8 = 0u;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  return (*(*this + 96))(this, a2, &v6, a4, 0, v5, a3);
}

uint64_t raven::GnssSvDatabase::FetchSvBandCorrection(uint64_t a1, uint64_t a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v6 = *(a1 + 8);
  v4 = (a1 + 8);
  v5 = v6;
  if (!v6)
  {
    return 0;
  }

  v9 = *(a2 + 24);
  v10 = *(a2 + 28);
  v11 = v4;
  do
  {
    v12 = *(v5 + 56);
    v14 = v12 == v9;
    v13 = v12 > v9;
    if (v14)
    {
      v13 = *(v5 + 60) > v10;
    }

    v14 = !v13;
    if (v13)
    {
      v15 = 8;
    }

    else
    {
      v15 = 0;
    }

    if (v14)
    {
      v11 = v5;
    }

    v5 = *(v5 + v15);
  }

  while (v5);
  if (v11 == v4)
  {
    return 0;
  }

  v16 = *(v11 + 56);
  v17 = *(v11 + 15) < v10;
  v14 = v16 == v9;
  v18 = v16 < v9;
  if (v14)
  {
    v18 = v17;
  }

  if (v18)
  {
    return 0;
  }

  v19 = *(v11 + 36);
  v20 = *(v11 + 37);
  if (v19 != v20)
  {
    while (*v19 != *a3)
    {
      v19 += 40;
      if (v19 == v20)
      {
        goto LABEL_21;
      }
    }

    v21 = *v19;
    v22 = *(v19 + 1);
    a4[32] = v19[32];
    *a4 = v21;
    *(a4 + 1) = v22;
  }

LABEL_21:
  if (!*a4 || (*(a4 + 2) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*(a4 + 1) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*(a4 + 3) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v23 = fabs(*(a4 + 1));
  if (fabs(*(a4 + 2)) < 2.22044605e-16 || v23 < 2.22044605e-16)
  {
    LOWORD(v41[0]) = 12;
    LOBYTE(__p[0]) = 4;
    v25 = sub_1D0BCFAB8(a2);
    cnprint::CNPrinter::Print(v41, __p, "#svdb,SV band corr failed check,missing iono/tropo,%s", v26, v27, v28, v29, v30, v25);
    return 0;
  }

  if (a4[32] && !cnprint::CNPrinter::GetLogLevel(v4))
  {
    v44 = 12;
    v43 = 0;
    v32 = sub_1D0BCFAB8(a2);
    sub_1D0D4B208(*a4, v41);
    sub_1D0B751F4(__p, off_1E83D7E30[a4[32]]);
    v38 = *(a4 + 2);
    cnprint::CNPrinter::Print(&v44, &v43, "#svdb,SV band corr has ionospheric source,svid,%s,band,%s,source,%s,delay,%.2f,nsec", v33, v34, v35, v36, v37, v32);
    if (v40 < 0)
    {
      operator delete(__p[0]);
    }

    if (v42 < 0)
    {
      operator delete(v41[0]);
    }
  }

  return 1;
}

void sub_1D0C3F064(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  _Unwind_Resume(exception_object);
}

void CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(CoreNavigation::CLP::LogEntry::PrivateData *this)
{
  v1 = CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto_once_;
  __dmb(0xBu);
  if (v1 != 2)
  {
    v2[0] = MEMORY[0x1E69E5970] + 16;
    v2[1] = CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto_impl;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }
}

void sub_1D0C3F11C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t raven::GnssMeasurementPreprocessor::PopulatePseudorangeMeasurementCorrections(uint64_t a1, cnnavigation::TAITime *a2, uint64_t a3, unsigned __int8 *a4, double *a5, uint64_t a6, float64x2_t *a7, _DWORD *a8)
{
  v8 = *a4;
  v9 = *(a1 + 1296);
  if (!v9)
  {
    goto LABEL_9;
  }

  v17 = a1 + 1296;
  do
  {
    v18 = *(v9 + 32);
    v19 = v18 >= v8;
    v20 = v18 < v8;
    if (v19)
    {
      v17 = v9;
    }

    v9 = *(v9 + 8 * v20);
  }

  while (v9);
  if (v17 == a1 + 1296 || *(v17 + 32) > v8)
  {
LABEL_9:
    LOWORD(__p) = 12;
    v93[0] = 3;
    cnprint::CNPrinter::Print(&__p, v93, "#gmp,No receiver band corrections available,band,%i", a4, a5, a6, a7, a8, v8);
    return 0;
  }

  if (v8 == 2)
  {
    v23 = 888;
  }

  else if (v8 == 6)
  {
    v23 = 904;
  }

  else
  {
    v22 = 0.0;
    if (v8 != 8)
    {
      goto LABEL_18;
    }

    v23 = 896;
  }

  v22 = *(a1 + 1280 + v23) * 0.299792458;
LABEL_18:
  v79 = *(v17 + 48);
  *a8 = *(v17 + 56);
  v93[0] = 0;
  v94 = vdupq_n_s64(0x7FF8000000000000uLL);
  v95 = NAN;
  v96 = 0;
  if ((raven::GnssSvDatabase::FetchSvBandCorrection(a1 + 984, a6, a4, v93) & 1) == 0)
  {
    LOWORD(v99[0]) = 12;
    LOBYTE(v97[0]) = 3;
    v28 = *a4;
    sub_1D0D49EE8(a3, &__p);
    cnprint::CNPrinter::Print(v99, v97, "#gmp,No transmit band corrections available,band,%i,SV,%s", v29, v30, v31, v32, v33, v28);
    if ((SHIBYTE(v84) & 0x80000000) == 0)
    {
      return 0;
    }

    v34 = __p;
LABEL_36:
    operator delete(v34);
    return 0;
  }

  IsValid = *(a1 + 2544);
  if (IsValid && *(a1 + 2296) == 1)
  {
    IsValid = cnnavigation::SphericalHarmonicsIonosphereModel::IsValid(IsValid, (a1 + 2240));
    v27 = IsValid;
  }

  else
  {
    v27 = 0;
  }

  if (*(a1 + 2296) == 1)
  {
    IsValid = cnnavigation::ThinShellIonosphereModel::IsValid((a1 + 2344), (a1 + 2240), v24, v25);
    v35 = IsValid;
    if (v27)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v35 = 0;
    if (v27)
    {
      goto LABEL_30;
    }
  }

  v36 = *(a1 + 2336);
  if ((v36 & v35 & 1) == 0)
  {
    v50 = *&v94.i64[1];
    goto LABEL_46;
  }

LABEL_30:
  v91 = *(a1 + 816);
  v92 = *(a1 + 832);
  LOWORD(__p) = 0;
  v84 = 0u;
  v85 = 0u;
  v86 = 0;
  v87 = 0;
  v88 = 0;
  v89 = 0;
  IsValid = (*(*(a6 + 32) + 56))(a6 + 32, a2, &__p, &v90, v99, v97);
  if (IsValid)
  {
    LOWORD(v97[0]) = 12;
    LOBYTE(v82) = 3;
    sub_1D0D49EE8(a3, v99);
    if (v100 >= 0)
    {
      v49 = v99;
    }

    else
    {
      LOBYTE(v49) = v99[0];
    }

    cnprint::CNPrinter::Print(v97, &v82, "#gmp,#iono,#rof,find sat failed,SV,%s", v44, v45, v46, v47, v48, v49);
    if ((v100 & 0x80000000) == 0)
    {
      return 0;
    }

    v34 = v99[0];
    goto LABEL_36;
  }

  v50 = *&v94.i64[1];
  if (v27)
  {
    LOWORD(__p) = 0;
    v84 = 0u;
    v85 = 0u;
    v86 = 0;
    v87 = 0;
    v88 = 0;
    v89 = 0;
    raven::GnssSvDatabase::PopulateGnssUTCParametersWithGps((a1 + 984), &__p, 0.0, v43, v37, v38, v39, v40, v41, v42);
    v51 = cnnavigation::TAITime::ToGPSTime(a2, &__p);
    v82 = 0.0;
    v53 = (*(**(a1 + 2544) + 16))(*(a1 + 2544), v51, &v91, &v90, &v82, v52, *a5);
    v54 = "N5boost3any6holderIN5raven16MovingStateEventEEE" + 38;
    if (v53)
    {
      goto LABEL_60;
    }

    v50 = v82 * 1000000000.0;
    if (cnprint::CNPrinter::GetLogLevel(v53))
    {
      goto LABEL_60;
    }

    v81 = 12;
    v80 = 0;
    v55 = v94.i8[8];
    sub_1D0D49EE8(a3, v99);
    sub_1D0D4B208(*a4, v97);
    cnprint::CNPrinter::Print(&v81, &v80, "#gmp,#rof,sphericalharmonicsionospheremodel,vendor_delay_nsec,%.3f,iono_delay_nsec,%.3f,SV,%s,band,%s", v56, v57, v58, v59, v60, v55);
    if (v98 < 0)
    {
      operator delete(v97[0]);
    }

    if ((v100 & 0x80000000) == 0)
    {
      goto LABEL_60;
    }

    v61 = v99[0];
    goto LABEL_53;
  }

  v36 = *(a1 + 2336);
LABEL_46:
  if ((v36 & v35 & 1) == 0)
  {
    if (v35 & 1 | ((v36 & 1) == 0))
    {
      v54 = "N5boost3any6holderIN5raven16MovingStateEventEEE" + 38;
    }

    else
    {
      v70 = *(a1 + 8);
      v54 = "eEventEEE";
      if (*(v70 + 641) == 1 && *(v70 + 2560) == 1 && cnprint::CNPrinter::GetLogLevel(IsValid) <= 1)
      {
        LOWORD(__p) = 12;
        LOBYTE(v99[0]) = 1;
        cnprint::CNPrinter::Print(&__p, v99, "#gmp,#iono,not using thin shell model, not valid or not converged. Using Klobuchar-model-derived ionospheric delay instead", v71, v72, v73, v74, v75, v78);
      }
    }

    goto LABEL_60;
  }

  v97[0] = 0;
  v62 = *a5;
  *&__p = *(*(a1 + 8) + 3128) * 0.0174532925;
  IonosphericDelay = cnnavigation::ThinShellIonosphereModel::GetIonosphericDelay(a1 + 2344, &v91, &v90, v97, &__p, v62);
  v54 = "N5boost3any6holderIN5raven16MovingStateEventEEE" + 38;
  if (!IonosphericDelay)
  {
    v50 = *v97 * 1000000000.0;
    if (!cnprint::CNPrinter::GetLogLevel(IonosphericDelay))
    {
      LOWORD(v82) = 12;
      LOBYTE(v81) = 0;
      v64 = v94.i8[8];
      sub_1D0D49EE8(a3, &__p);
      sub_1D0D4B208(*a4, v99);
      cnprint::CNPrinter::Print(&v82, &v81, "#gmp,#iono,thinshellionospheremodel,vendor_delay_nsec,%.3f,iono_delay_nsec,%.3f,SV,%s,band,%s", v65, v66, v67, v68, v69, v64);
      if (v100 < 0)
      {
        operator delete(v99[0]);
      }

      if (SHIBYTE(v84) < 0)
      {
        v61 = __p;
LABEL_53:
        operator delete(v61);
      }
    }
  }

LABEL_60:
  v76 = *(v54 + 244);
  *&v77.f64[0] = v94.i64[0];
  a7->f64[0] = v50 * v76;
  a7->f64[1] = v22;
  v77.f64[1] = v79;
  a7[1] = vmulq_f64(v77, vdupq_n_s64(0x3FD32FCCB4ACA315uLL));
  a7[2].f64[0] = v95 * v76;
  return 1;
}

void sub_1D0C3F6F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, void *a43)
{
  if (*(v43 - 153) < 0)
  {
    operator delete(a40);
  }

  if (*(v43 - 129) < 0)
  {
    operator delete(a43);
  }

  _Unwind_Resume(exception_object);
}

uint64_t cnnavigation::SphericalHarmonicsIonosphereModel::IsValid(cnnavigation::SphericalHarmonicsIonosphereModel *this, const cnnavigation::TAITime *a2)
{
  result = (*(*this + 32))(this);
  if (result)
  {
    ApplicabilityTime = cnnavigation::SphericalHarmonicsIonosphereModel::GetApplicabilityTime(this);
    v13 = v5;
    v8 = CNTimeSpan::operator-(a2, &ApplicabilityTime, v6, v7);
    v14[0] = v8;
    *&v14[1] = v9;
    if (v8 < 0 || (*v10.i64 = v9, v9 < 0.0))
    {
      v8 = CNTimeSpan::operator-(v14, v10, v11);
    }

    ApplicabilityTime = v8;
    v13 = v9;
    return sub_1D0B9D420(&ApplicabilityTime, this + 6);
  }

  return result;
}

BOOL cnnavigation::SphericalHarmonicsIonosphereModel::IsValid(cnnavigation::SphericalHarmonicsIonosphereModel *this)
{
  if (!*(this + 4))
  {
    return 0;
  }

  v1 = (this + 24);
  do
  {
    v1 = *v1;
    result = v1 == 0;
    if (!v1)
    {
      break;
    }

    v3 = v1[3];
    if (!v3)
    {
      break;
    }
  }

  while ((*(v3 + 8248) & 1) != 0);
  return result;
}

uint64_t cnnavigation::SphericalHarmonicsIonosphereModel::GetApplicabilityTime(cnnavigation::SphericalHarmonicsIonosphereModel *this)
{
  if (!(*(*this + 32))(this))
  {
    return 0;
  }

  v2 = *(this + 3);
  if (!v2)
  {
    return 0;
  }

  while (1)
  {
    v3 = v2[3];
    if (v3)
    {
      if (*(v3 + 8248))
      {
        break;
      }
    }

    v2 = *v2;
    if (!v2)
    {
      return 0;
    }
  }

  result = *(v3 + 16);
  v5 = *(v3 + 24);
  return result;
}

BOOL cnnavigation::ThinShellIonosphereModel::IsValid(cnnavigation::ThinShellIonosphereModel *this, const cnnavigation::TAITime *a2, int8x16_t a3, int8x16_t a4)
{
  if (*(this + 8) != 1)
  {
    return 0;
  }

  v13[4] = v4;
  v13[5] = v5;
  if (*(this + 9) != 1)
  {
    return 0;
  }

  v7 = CNTimeSpan::operator-(a2, this + 7, a3, a4);
  v13[0] = v7;
  *&v13[1] = v8;
  if (v7 < 0 || (*v9.i64 = v8, v8 < 0.0))
  {
    v7 = CNTimeSpan::operator-(v13, v9, v10);
  }

  *&v12[0] = v7;
  v12[1] = v8;
  return sub_1D0B9D420(v12, this + 23);
}

uint64_t cnnavigation::SphericalHarmonicsIonosphereModel::GetIonosphericDelay(cnnavigation::SphericalHarmonicsIonosphereModel *this, uint64_t a2, long double a3, const double *a4, const double *a5, double a6, double *a7)
{
  v11 = *a4;
  v12 = *(a4 + 2);
  v9 = *a5;
  v10 = *(a5 + 2);
  return cnnavigation::SphericalHarmonicsIonosphereModel::GetIonosphericDelay(this, a3, a6, a2, &v11, &v9, a7, 0, v8);
}

uint64_t cnnavigation::SphericalHarmonicsIonosphereModel::GetIonosphericDelay(void *a1, long double a2, double a3, uint64_t a4, __int128 *a5, __int128 *a6, double *a7, int a8, _OWORD *a9)
{
  v15 = (*(*a1 + 32))(a1);
  if (v15)
  {
    v21 = a1[3];
    if (v21)
    {
      v90 = a9;
      v91 = a1;
      v22 = 0;
      v92 = (fmod(a2, 86400.0) + -50400.0) * 3.14159265 / 43200.0;
      v24 = 0.0;
      v25 = 0uLL;
      while (1)
      {
        v26 = v21[3];
        if (!v26 || *(v26 + 8248) != 1)
        {
          break;
        }

        if ((v21[262] & 1) == 0)
        {
          if (cnprint::CNPrinter::GetLogLevel(LogLevel) <= 1)
          {
            LOWORD(v97[0]) = 5;
            LOBYTE(v103) = 1;
            cnprint::CNPrinter::Print(v97, &v103, "#shiono,GetIonosphericDelay,layer_num,%u,Legendre normalization not initialized", v80, v81, v82, v83, v84, *(v21[3] + 32));
          }

          return 0xFFFFFFFFLL;
        }

        v27 = *(v26 + 40);
        v106 = 0;
        v107 = v27;
        v108 = v25;
        v109 = v25;
        v28 = *a5;
        v110 = v25;
        v111 = v28;
        v112 = *(a5 + 2);
        v113 = *a6;
        v114 = *(a6 + 2);
        v29 = cnnavigation::details::IonospherePiercePoint::ComputeIonospherePiercePointCoordinates(&v106);
        if (v29)
        {
          if (cnprint::CNPrinter::GetLogLevel(v29) <= 1)
          {
            LOWORD(v97[0]) = 5;
            LOBYTE(v103) = 1;
            cnprint::CNPrinter::Print(v97, &v103, "#shiono,GetIonosphericDelay,layer_num,%u,failed to calculate IPP coordinates", v85, v86, v87, v88, v89, *(v21[3] + 32));
          }

          return 0xFFFFFFFFLL;
        }

        v30 = fmod(v92 + *&v110, 6.28318531);
        v105 = 0;
        memset(v104, 0, sizeof(v104));
        v102 = 0;
        memset(v101, 0, sizeof(v101));
        v103 = 0x3FF0000000000000;
        v100 = 0;
        v31 = __sincos_stret(v30);
        v32 = v21[3];
        v33 = v32[1];
        if (v33)
        {
          if ((v33 + 1) > 2)
          {
            v34 = (v33 + 1);
          }

          else
          {
            v34 = 2;
          }

          v35 = v34 - 1;
          v36 = 1.0;
          v37 = 0.0;
          v38 = v104;
          v39 = v101;
          do
          {
            v40 = v37 * -v31.__sinval + v31.__cosval * v36;
            *v38++ = v40;
            v37 = v31.__sinval * v36 + v31.__cosval * v37;
            *v39++ = v37;
            v36 = v40;
            --v35;
          }

          while (v35);
        }

        bzero(&v98, 0x7F8uLL);
        v46 = sin(*(&v109 + 1));
        v47 = sqrt(1.0 - v46 * v46);
        v97[0] = 0x3FF0000000000000;
        *v99 = v46;
        *&v99[1] = v47;
        LODWORD(v48) = *v32 + 1;
        if (*v32 >= 2u)
        {
          v49 = 0;
          if (v48 <= 3)
          {
            v50 = 3;
          }

          else
          {
            v50 = *v32 + 1;
          }

          v51 = (v50 - 2);
          v52 = 1;
          v53 = 1;
          v54 = v99;
          v55 = 2;
          do
          {
            v56 = v55 * 2.0 + -1.0;
            v57 = *&v97[16 * v55 - 17 + v55] * v56;
            v58 = &v97[16 * v55];
            *&v58[v55] = v47 * v57;
            *&v58[v55 - 1] = v46 * v57;
            if (v55 - 2 >= 0)
            {
              v59 = v46 * v56;
              v60 = 2;
              v61 = v52;
              v62 = v53;
              v63 = v54;
              do
              {
                v63[16] = 1.0 / v60++ * (v59 * *v63 - *(v63 - 16) * v61);
                --v63;
                --v62;
                --v61;
              }

              while (v62 > 0);
            }

            ++v55;
            ++v49;
            v54 += 17;
            ++v53;
            v52 += 2;
          }

          while (v49 != v51);
        }

        v64 = 0;
        v65 = v21 + 6;
        if (v48 <= 1)
        {
          v48 = 1;
        }

        else
        {
          v48 = v48;
        }

        v66 = 0.0;
        v67 = v97;
        v68 = v32;
        do
        {
          v69 = 0;
          if (v64 >= v33)
          {
            v70 = v33;
          }

          else
          {
            v70 = v64;
          }

          v71 = 8 * v70 + 8;
          do
          {
            v66 = v66 + (*&v68[v69 / 4 + 524] * *&v101[v69 - 8] + *&v68[v69 / 4 + 12] * *&v104[v69 - 8]) * (*&v67[v69 / 8] * *&v65[v69 / 8]);
            v69 += 8;
          }

          while (v71 != v69);
          ++v64;
          v68 += 32;
          v65 += 16;
          v67 += 16;
        }

        while (v64 != v48);
        if (v66 <= 0.0)
        {
          v96 = 5;
          v95 = 2;
          cnprint::CNPrinter::Print(&v96, &v95, "#shiono,GetIonosphericDelay,layer_num,%u,WARNING:negative vtec,%.3lf,set to zero", v41, v42, v43, v44, v45, v32[8]);
          v66 = 0.0;
        }

        if (*(&v108 + 1) >= 1.57079633 || *(&v108 + 1) < 0.0)
        {
          v96 = 5;
          v95 = 4;
          cnprint::CNPrinter::Print(&v96, &v95, "#shiono,GetIonosphericDelay,layer_num,%u,invalid sv_zenith_angle_at_ipp_rad,%.3lf,rad", v41, v42, v43, v44, v45, *(v21[3] + 32));
          return 0xFFFFFFFFLL;
        }

        v24 = v24 + v66 * (1.0 / cos(*(&v108 + 1)));
        LogLevel = cnprint::CNPrinter::GetLogLevel(v72);
        if (!LogLevel)
        {
          v96 = 5;
          v95 = 0;
          cnprint::CNPrinter::Print(&v96, &v95, "#shiono,GetIonosphericDelay,successfully computed per-layer delay,layer_num,%u,gps_week,%d,gps_sec,%.2f,fc,%.2f,sv_at_rx_az_deg,%.2f,sv_at_rx_el_deg,%.2f,vtec,%.3f,vtec_to_stec_fcn,%.3f,stec,%.3f,iono_delay_ns,%.3f", v16, v17, v18, v19, v20, *(v21[3] + 32));
        }

        ++v22;
        v21 = *v21;
        v25 = 0uLL;
        if (!v21)
        {
          if (!v22)
          {
            goto LABEL_45;
          }

          if (v91[4] > v22)
          {
            v73 = v22;
            goto LABEL_46;
          }

          *a7 = 1344536590.0 / (a3 * a3) * v24;
          result = 0;
          if (a8)
          {
            v90[2] = 0u;
            v90[3] = 0u;
            *v90 = 0u;
            v90[1] = 0u;
          }

          return result;
        }
      }
    }

    else
    {
LABEL_45:
      v73 = 0;
LABEL_46:
      LOWORD(v97[0]) = 5;
      LOBYTE(v103) = 4;
      cnprint::CNPrinter::Print(v97, &v103, "#shiono,GetIonosphericDelay,unable to compute stec from all available layers,processed_layers,%u", v16, v17, v18, v19, v20, v73);
    }
  }

  else if (cnprint::CNPrinter::GetLogLevel(v15) <= 1)
  {
    LOWORD(v97[0]) = 5;
    LOBYTE(v103) = 1;
    cnprint::CNPrinter::Print(v97, &v103, "#shiono,GetIonosphericDelay,parameters not initialized or invalid,num_layers,%zu", v74, v75, v76, v77, v78, a1[4]);
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_1D0C3FFD0(uint64_t a1, uint64_t a2, int8x16_t a3, int8x16_t a4)
{
  *a4.i64 = a1;
  *a3.i64 = fabs(*&a2 + a1);
  v5[0] = 0;
  v5[1] = 0;
  CNTimeSpan::SetTimeSpan(v5, 0, a3, a4);
  return v5[0];
}

uint64_t raven::GnssMeasurementPreprocessor::GetMeasurementUncertaintyScaleFactor@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = 1065353216;
  *(a4 + 4) = 0;
  *(a4 + 8) = 0;
  *(a4 + 12) = 0;
  *(a4 + 16) = 0;
  if ((*(*(result + 8) + 549) & 1) == 0 && (*(a3 + 188) & 1) == 0)
  {
    v6 = result;
    result = *(result + 2608);
    if (result)
    {
      UncertaintyScaleFactor = raven::GNSSUncertaintyScaling::GNSSUncertaintyWrapper::GetUncertaintyScaleFactor(result, (a3 + 96), a3 + 100, v6 + 977, v6 + 888, 0, *(a3 + 112), *(a2 + 264), *(a3 + 168));
      if ((UncertaintyScaleFactor & 0x100000000) != 0)
      {
        *a4 = UncertaintyScaleFactor;
      }

      v9 = raven::GNSSUncertaintyScaling::GNSSUncertaintyWrapper::GetUncertaintyScaleFactor(*(v6 + 2608), (a3 + 96), a3 + 100, v6 + 977, v6 + 888, 1, *(a3 + 112), *(a2 + 264), *(a3 + 168));
      *(a4 + 4) = v9;
      *(a4 + 8) = BYTE4(v9);
      result = raven::GNSSUncertaintyScaling::GNSSUncertaintyWrapper::GetUncertaintyScaleFactor(*(v6 + 2608), (a3 + 96), a3 + 100, v6 + 977, v6 + 888, 2, *(a3 + 112), *(a2 + 264), *(a3 + 168));
      *(a4 + 12) = result;
      *(a4 + 16) = BYTE4(result);
    }
  }

  return result;
}

uint64_t raven::GNSSUncertaintyScaling::GNSSUncertaintyWrapper::GetUncertaintyScaleFactor(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, float a7, double a8, float a9)
{
  v31 = a9;
  if (*a2)
  {
    v9 = *a2 == 5;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v30[0] = 0;
    v30[1] = 0;
    v20 = (*(*a1 + 8))(a1, v30);
    if (v20)
    {
      v26 = (**a1)(a1, a2, a3, a4, a5, v30, &v31, a6);
      v10 = v26 & 0xFF00000000;
      v11 = v26;
      return v10 | v11;
    }

    v29 = 12;
    v28 = 4;
    v27 = a7;
    cnprint::CNPrinter::Print(&v29, &v28, "GNSS uncertainty table index not found,cn0,%.1f,elev_deg,%.1lf", v21, v22, v23, v24, v25, SLOBYTE(v27));
  }

  v10 = 0x100000000;
  v11 = 1065353216;
  return v10 | v11;
}

uint64_t raven::GNSSUncertaintyScaling::Fire7orNewerPhoneGNSSUncertaintyWrapper::GetScaleFactorTableIndices(float a1, double a2, uint64_t a3, unint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = 0;
  v13 = 40;
  while (flt_1D0EB3D38[v12] < a1)
  {
    ++v12;
    v13 -= 4;
    if (!v13)
    {
      v12 = 10;
      break;
    }
  }

  v14 = 0;
  v15 = 120;
  while (dbl_1D0EB3D78[v14] < a2)
  {
    ++v14;
    v15 -= 8;
    if (!v15)
    {
      v14 = 15;
      break;
    }
  }

  v22 = v10;
  v23 = v11;
  v16 = v12 >= 0xB || v14 >= 0x10;
  v17 = !v16;
  if (v16)
  {
    v21 = 12;
    v20 = 5;
    v18 = a1;
    cnprint::CNPrinter::Print(&v21, &v20, "invalid index found,cn0,%.3f,cn0_bin,%zu,elev,%.3lf,elev_bin,%zu,", a6, a7, a8, a9, a10, SLOBYTE(v18));
  }

  else
  {
    *a4 = v12;
    a4[1] = v14;
  }

  return v17;
}

uint64_t raven::GNSSUncertaintyScaling::Fire7orNewerPhoneGNSSUncertaintyWrapper::GetUncertaintyScaleFactorCore(uint64_t a1, int *a2, _BYTE *a3, unsigned __int8 *a4, char *a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  if (!a8)
  {
    v55 = v8;
    v56 = v9;
    v17 = *a4;
    if (v17 > 6)
    {
      v26 = 0;
      v23 = 0;
      v22 = 0;
      v21 = 0;
    }

    else
    {
      v18 = 1 << v17;
      if ((v18 & 0x27) != 0)
      {
        v19 = *a5;
        if (v19 <= 6 && ((1 << v19) & 0x4C) != 0)
        {
          goto LABEL_9;
        }

        goto LABEL_23;
      }

      if ((v18 & 0x18) == 0)
      {
        v27 = *a5;
        if (v27 <= 6 && ((1 << v27) & 0x4C) != 0)
        {
LABEL_9:
          v21 = sub_1D0E391A4();
          v22 = sub_1D0E392A4();
          v23 = sub_1D0E393A4();
          v24 = sub_1D0E394A4();
LABEL_24:
          v26 = v24;
          goto LABEL_25;
        }

LABEL_23:
        v21 = sub_1D0C40ECC();
        v22 = sub_1D0C40DCC();
        v23 = sub_1D0C410CC();
        v24 = sub_1D0C40FCC();
        goto LABEL_24;
      }

      v25 = *a5;
      if (v25 <= 6 && ((1 << v25) & 0x4C) != 0)
      {
        v21 = qword_1EE055000;
        if (!qword_1EE055000)
        {
          operator new();
        }

        v22 = qword_1EE055008;
        if (!qword_1EE055008)
        {
          operator new();
        }

        v23 = qword_1EE055010;
        if (!qword_1EE055010)
        {
          operator new();
        }

        v26 = qword_1EE055018;
        if (!qword_1EE055018)
        {
          operator new();
        }
      }

      else
      {
        v21 = qword_1EE055020;
        if (!qword_1EE055020)
        {
          operator new();
        }

        v22 = qword_1EE055028;
        if (!qword_1EE055028)
        {
          operator new();
        }

        v23 = qword_1EE055030;
        if (!qword_1EE055030)
        {
          operator new();
        }

        v26 = qword_1EE055038;
        if (!qword_1EE055038)
        {
          operator new();
        }
      }
    }

LABEL_25:
    v28 = *a3;
    if (v28 > 5)
    {
      if (*a3 <= 7u)
      {
        if (v28 == 7)
        {
          v30 = 2;
        }

        else
        {
          v30 = 0;
        }

        if (v28 == 6)
        {
          v29 = 1;
        }

        else
        {
          v29 = v30;
        }

        goto LABEL_49;
      }

      if (v28 == 8)
      {
        v29 = 3;
        goto LABEL_49;
      }

      if (v28 == 9)
      {
LABEL_38:
        v54 = 12;
        v53 = 4;
        v51 = *a4;
        v52 = *a5;
        cnprint::CNPrinter::Print(&v54, &v53, "Invalid GNSS Band type: GNSS uncertainty parameters not found for obs_type,%d,band,%d,se,%d,activity,%d", a4, a5, a6, a7, a8, *a2);
        goto LABEL_81;
      }

      v29 = 0;
      if (v28 != 10)
      {
        goto LABEL_49;
      }
    }

    else
    {
      if (*a3 > 1u)
      {
        if (v28 == 2)
        {
          v29 = 6;
          goto LABEL_49;
        }

        if (v28 == 3)
        {
          v29 = 4;
          goto LABEL_49;
        }

        v29 = 0;
        if (v28 != 4)
        {
LABEL_49:
          v31 = v29;
          v32 = *a2;
          if (*a2 <= 2)
          {
            if (v32 != 1)
            {
              if (v32 == 2)
              {
                if (v22)
                {
                  v33 = v22 + 356 * v31;
                  v34 = *(v33 + 352);
                  v35 = *a6;
                  v36 = a6[1];
                  goto LABEL_84;
                }

                v54 = 12;
                v53 = 5;
                v49 = *a4;
                cnprint::CNPrinter::Print(&v54, &v53, "Invalid doppler unc scale pointer - activity_state = %d, signal_environment = %hu, band_as_int = %d", a4, a5, a6, a7, a8, *a5);
                v11 = 4.0;
LABEL_87:
                v10 = 0x100000000;
                return v10 | LODWORD(v11);
              }

              goto LABEL_63;
            }

            if (!v21)
            {
              v54 = 12;
              v53 = 5;
              v50 = *a4;
              cnprint::CNPrinter::Print(&v54, &v53, "Invalid range unc scale pointer - activity_state = %d, signal_environment = %hu, band_as_int = %d", a4, a5, a6, a7, a8, *a5);
              goto LABEL_81;
            }

            v42 = v21 + 356 * v31;
            v43 = a6[1];
            if (*(v42 + 32 * *a6 + 2 * v43))
            {
              v34 = *(v42 + 352);
              v41 = *(v42 + 32 * *a6 + 2 * v43);
              goto LABEL_86;
            }

LABEL_81:
            v11 = 1.0;
            goto LABEL_87;
          }

          if (v32 == 3)
          {
            if (v23)
            {
              v44 = v23 + 356 * v31;
              v34 = *(v44 + 352);
              v35 = *a6;
              v36 = a6[1];
              v38 = *(v44 + 32 * *a6 + 2 * v36);
              if (!v38)
              {
                goto LABEL_82;
              }

              goto LABEL_69;
            }
          }

          else
          {
            if (v32 != 4)
            {
LABEL_63:
              v54 = 12;
              v53 = 5;
              v47 = *a4;
              cnprint::CNPrinter::Print(&v54, &v53, "Invalid obs type - activity_state = %d, signal_environment = %hu, band_as_int = %d", a4, a5, a6, a7, a8, *a5);
              goto LABEL_81;
            }

            if (v26)
            {
              v37 = v26 + 356 * v31;
              v34 = *(v37 + 352);
              v35 = *a6;
              v36 = a6[1];
              v38 = *(v37 + 32 * *a6 + 2 * v36);
              if (v38)
              {
                v39 = 1;
              }

              else
              {
                v39 = v23 == 0;
              }

              if (!v39)
              {
                v40 = v23 + 356 * v31;
                if (*(v40 + 32 * v35 + 2 * v36))
                {
                  v34 = *(v40 + 352);
                  v41 = *(v40 + 32 * v35 + 2 * v36);
LABEL_86:
                  v11 = v34 * v41;
                  goto LABEL_87;
                }

LABEL_82:
                if (!v22)
                {
                  goto LABEL_89;
                }

                v33 = v22 + 356 * v31;
LABEL_84:
                v45 = *(v33 + 32 * v35 + 2 * v36);
                if (v45)
                {
                  v41 = v45;
                  goto LABEL_86;
                }

LABEL_89:
                v10 = 0x100000000;
                v11 = v34 / 0.01;
                return v10 | LODWORD(v11);
              }

LABEL_69:
              v41 = v38;
              goto LABEL_86;
            }
          }

          v54 = 12;
          v53 = 5;
          v48 = *a4;
          cnprint::CNPrinter::Print(&v54, &v53, "Invalid doppler unc scale pointer - activity_state = %d, signal_environment = %hu, band_as_int = %d", a4, a5, a6, a7, a8, *a5);
          v11 = 2.0;
          goto LABEL_87;
        }

        goto LABEL_38;
      }

      if (!*a3)
      {
        goto LABEL_38;
      }
    }

    v29 = 5;
    goto LABEL_49;
  }

  v10 = 0;
  v11 = 0.0;
  return v10 | LODWORD(v11);
}

uint64_t sub_1D0C40DCC()
{
  if (!qword_1EC5FB418)
  {
    operator new();
  }

  return qword_1EC5FB418;
}

uint64_t sub_1D0C40ECC()
{
  if (!qword_1EC5FB428)
  {
    operator new();
  }

  return qword_1EC5FB428;
}

uint64_t sub_1D0C40FCC()
{
  if (!qword_1EC5FB410)
  {
    operator new();
  }

  return qword_1EC5FB410;
}

uint64_t sub_1D0C410CC()
{
  if (!qword_1EC5FB420)
  {
    operator new();
  }

  return qword_1EC5FB420;
}

float sub_1D0C411CC(char a1, uint64_t a2, int a3, int a4, double a5, double a6, float a7)
{
  v7 = a7;
  if (a3)
  {
    v8 = 1.0;
  }

  else
  {
    v8 = v7;
  }

  if (!a3)
  {
    v7 = 1.0;
  }

  v9 = v7 * a5 * (v7 * a5);
  v10 = v9 + a6;
  if (!a4)
  {
    v9 = v10;
  }

  v11 = v8 * (sqrt(v9) * 0.299792458);
  if ((a1 & 1) != 0 && (a4 & 1) == 0)
  {
    if (*(a2 + 288) == 1)
    {
      v12 = *(a2 + 280);
    }

    else
    {
      v12 = 800.0;
    }

    v13 = fabs(v12);
    return sqrt(v11 * v11 + v13 * 0.004 * (v13 * 0.004));
  }

  return v11;
}

void raven::GnssMeasurementPreprocessor::CheckObservableAndAddToVector(uint64_t a1, uint64_t a2, _OWORD *a3, _OWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = a3[1];
  *a2 = *a3;
  *(a2 + 16) = v11;
  v12 = a3[2];
  v13 = a3[3];
  v14 = a3[5];
  *(a2 + 64) = a3[4];
  *(a2 + 80) = v14;
  *(a2 + 32) = v12;
  *(a2 + 48) = v13;
  *(a2 + 48) = *a4;
  *(a2 + 40) = 1;
  if (*(a5 + 23) < 0)
  {
    sub_1D0BC39B4(__p, *a5, *(a5 + 8));
  }

  else
  {
    *__p = *a5;
    v45 = *(a5 + 16);
  }

  v46 = *(a5 + 24);
  CanObservableBeIncluded = raven::GNSSPreprocessedMeasurementsChecker::CanObservableBeIncluded(a2, __p, (a5 + 32), *(a1 + 8), a5, a6, a7, a8);
  v16 = CanObservableBeIncluded;
  if (SHIBYTE(v45) < 0)
  {
    operator delete(__p[0]);
    if (!v16)
    {
      return;
    }
  }

  else if (!CanObservableBeIncluded)
  {
    return;
  }

  v17 = *(a5 + 336);
  v18 = *(a5 + 344);
  if (v17 >= v18)
  {
    v29 = *(a5 + 328);
    v30 = v17 - v29;
    v31 = 0x4EC4EC4EC4EC4EC5 * ((v17 - v29) >> 4);
    v32 = v31 + 1;
    if ((v31 + 1) > 0x13B13B13B13B13BLL)
    {
      sub_1D0C5663C();
    }

    v33 = 0x4EC4EC4EC4EC4EC5 * ((v18 - v29) >> 4);
    if (2 * v33 > v32)
    {
      v32 = 2 * v33;
    }

    if (v33 >= 0x9D89D89D89D89DLL)
    {
      v34 = 0x13B13B13B13B13BLL;
    }

    else
    {
      v34 = v32;
    }

    if (v34)
    {
      if (v34 <= 0x13B13B13B13B13BLL)
      {
        operator new();
      }

      sub_1D0C54BE8();
    }

    v35 = *(a2 + 176);
    v36 = 208 * v31;
    *(v36 + 160) = *(a2 + 160);
    *(v36 + 176) = v35;
    *(v36 + 192) = *(a2 + 192);
    v37 = *(a2 + 112);
    *(v36 + 96) = *(a2 + 96);
    *(v36 + 112) = v37;
    v38 = *(a2 + 144);
    *(v36 + 128) = *(a2 + 128);
    *(v36 + 144) = v38;
    v39 = *(a2 + 48);
    *(v36 + 32) = *(a2 + 32);
    *(v36 + 48) = v39;
    v40 = *(a2 + 80);
    *(v36 + 64) = *(a2 + 64);
    *(v36 + 80) = v40;
    v42 = *a2;
    v41 = *(a2 + 16);
    v28 = 208 * v31 + 208;
    v43 = v36 - v30;
    *v36 = v42;
    *(v36 + 16) = v41;
    memcpy((v36 - v30), v29, v30);
    *(a5 + 328) = v43;
    *(a5 + 336) = v28;
    *(a5 + 344) = 0;
    if (v29)
    {
      operator delete(v29);
    }
  }

  else
  {
    *v17 = *a2;
    v19 = *(a2 + 16);
    v20 = *(a2 + 32);
    v21 = *(a2 + 64);
    *(v17 + 3) = *(a2 + 48);
    *(v17 + 4) = v21;
    *(v17 + 1) = v19;
    *(v17 + 2) = v20;
    v22 = *(a2 + 80);
    v23 = *(a2 + 96);
    v24 = *(a2 + 128);
    *(v17 + 7) = *(a2 + 112);
    *(v17 + 8) = v24;
    *(v17 + 5) = v22;
    *(v17 + 6) = v23;
    v25 = *(a2 + 144);
    v26 = *(a2 + 160);
    v27 = *(a2 + 192);
    *(v17 + 11) = *(a2 + 176);
    *(v17 + 12) = v27;
    *(v17 + 9) = v25;
    *(v17 + 10) = v26;
    v28 = (v17 + 208);
  }

  *(a5 + 336) = v28;
}

void sub_1D0C41488(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t raven::GNSSPreprocessedMeasurementsChecker::CanObservableBeIncluded(uint64_t a1, uint64_t a2, double *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 96);
  if (!v8)
  {
    return 0;
  }

  v10 = *(a1 + 104);
  if (v10 <= 0.0)
  {
    return 0;
  }

  v11 = *(a1 + 168);
  if (v11 <= 0.0 || *(a1 + 40) != 1 || *(a1 + 112) < *(a4 + 612))
  {
    return 0;
  }

  result = 0;
  v13 = *(a1 + 120);
  if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (LODWORD(v11) & 0x7FFFFFFFu) >= 0x7F800000 || (*(a1 + 120) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    return result;
  }

  v15 = *(a1 + 100);
  if (v15 > 5)
  {
    if (*(a1 + 100) > 7u)
    {
      if (v15 == 8)
      {
        if ((*(a4 + 601) & 1) == 0)
        {
          return 0;
        }
      }

      else if (v15 == 10 && *(a4 + 597) != 1)
      {
        return 0;
      }
    }

    else if (v15 == 6)
    {
      if ((*(a4 + 599) & 1) == 0)
      {
        return 0;
      }
    }

    else if (v15 == 7 && (*(a4 + 600) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v15 - 4 < 2)
  {
    if ((*(a4 + 598) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v15 == 1)
    {
      if ((*(a4 + 602) & 1) == 0 && *(a2 + 24) == 1)
      {
        return 0;
      }

      if (*(a4 + 604))
      {
        goto LABEL_39;
      }
    }

    else
    {
      if (v15 != 2)
      {
        goto LABEL_39;
      }

      if ((*(a4 + 603) & 1) == 0 && *(a2 + 24) == 1)
      {
        return 0;
      }

      if (*(a4 + 605))
      {
        goto LABEL_39;
      }
    }

    if (*(a2 + 24) == 5)
    {
      return 0;
    }
  }

LABEL_39:
  if ((v8 - 2) < 3)
  {
    if (!*(a4 + 606))
    {
      return 0;
    }

    if (v8 == 3)
    {
      if (!*(a4 + 609))
      {
        return 0;
      }
    }

    else if (v8 == 4)
    {
      if (!*(a4 + 608))
      {
        return 0;
      }
    }

    else if (!*(a4 + 610))
    {
      return 0;
    }

    if (fabs(v13 / (299792458.0 / v10)) > 15000.0)
    {
      return 0;
    }

    goto LABEL_64;
  }

  if (v8 != 1)
  {
    if (v8 == 5)
    {
      return 0;
    }

    goto LABEL_64;
  }

  if (!*(a4 + 607))
  {
    return 0;
  }

  v16 = *(a2 + 24);
  if (v16 <= 3)
  {
    if (v16 - 1 >= 3)
    {
      if (!*(a2 + 24))
      {
        v45 = 12;
        v44 = 4;
        cnprint::CNPrinter::Print(&v45, &v44, "GNSSPreprocessedMeasurementsChecker invalid constellation,%d", a4, a5, a6, a7, a8, 0);
        return 0;
      }

      goto LABEL_64;
    }

    if (v13 < 15000000.0)
    {
      goto LABEL_78;
    }

    v17 = 30000000.0;
LABEL_63:
    if (v13 <= v17)
    {
      goto LABEL_64;
    }

LABEL_78:
    if (cnprint::CNPrinter::GetLogLevel(0) <= 1)
    {
      v45 = 12;
      v44 = 1;
      v22 = sub_1D0BCFAB8(a2);
      v41 = *(a1 + 120);
      cnprint::CNPrinter::Print(&v45, &v44, "Satellite %s invalid range %f", v23, v24, v25, v26, v27, v22);
    }

    return 0;
  }

  if (v16 == 4)
  {
    v28 = *(a2 + 28);
    if (v28 <= 0x3F && ((1 << v28) & 0xF80000000000003ELL) != 0 || a3[11] * a3[11] + a3[15] * a3[15] + a3[19] * a3[19] > 9.0e14)
    {
      if (v13 < 30000000.0 || v13 > 45000000.0)
      {
        if (cnprint::CNPrinter::GetLogLevel(0) <= 1)
        {
          v45 = 12;
          v44 = 1;
          v29 = sub_1D0BCFAB8(a2);
          v42 = *(a1 + 120);
          cnprint::CNPrinter::Print(&v45, &v44, "Satellite %s invalid GEO/IGSO range %f", v30, v31, v32, v33, v34, v29);
        }

        return 0;
      }
    }

    else if (v13 < 15000000.0 || v13 > 30000000.0)
    {
      if (cnprint::CNPrinter::GetLogLevel(0) <= 1)
      {
        v45 = 12;
        v44 = 1;
        v35 = sub_1D0BCFAB8(a2);
        v43 = *(a1 + 120);
        cnprint::CNPrinter::Print(&v45, &v44, "Satellite %s invalid MEO range %f", v36, v37, v38, v39, v40, v35);
      }

      return 0;
    }

    goto LABEL_64;
  }

  if (v16 == 5 || v16 == 6)
  {
    if (v13 < 30000000.0)
    {
      goto LABEL_78;
    }

    v17 = 45000000.0;
    goto LABEL_63;
  }

LABEL_64:
  v18 = *(a4 + 1568);
  v19 = *(a4 + 648) * 350.0;
  if (v19 >= *(a4 + 656) * 350.0)
  {
    v19 = *(a4 + 656) * 350.0;
  }

  if ((v8 - 1) < 2)
  {
    return *(a1 + 200) - *(a1 + 192) <= v18;
  }

  if ((v8 - 3) >= 2)
  {
    return v8 != 5;
  }

  v20 = -(v19 * *(a4 + 1544));
  if (*(a4 + 544))
  {
    return *(a1 + 192) >= v20;
  }

  result = 0;
  v21 = *(a1 + 192);
  if (*(a1 + 200) - v21 <= v18 && v21 >= v20)
  {
    return 1;
  }

  return result;
}

uint64_t raven::GnssMeasurementPreprocessor::FormInstantaneousDoppler@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  if (*(*(result + 8) + 610) != 1 || (v11 = result, result = sub_1D0C3ACF0(a2), !result) || (v12 = *(a2 + 56), (*&v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL) || (v13 = *(a2 + 64), v13 <= 0.0) || v13 >= 100.069229)
  {
    *a5 = 0;
    *(a5 + 208) = 0;
    return result;
  }

  v14 = *(v11 + 2304) + *(a2 + 32);
  v15 = *(a2 + 8);
  v16 = *(a2 + 192);
  v17 = v13 * 0.299792458;
  v18 = *(a2 + 72);
  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0u;
  *(a5 + 64) = 0u;
  *(a5 + 80) = 0;
  *(a5 + 88) = 0x7FF8000000000000;
  *(a5 + 96) = 2;
  *(a5 + 100) = v15;
  *(a5 + 104) = a6;
  *(a5 + 112) = v16;
  v19 = vdupq_n_s64(0x7FF8000000000000uLL);
  *(a5 + 120) = v12 / -1000000000.0 * 299792458.0;
  *(a5 + 128) = v19;
  *(a5 + 144) = v19;
  *(a5 + 160) = 0x7FF8000000000000;
  *(a5 + 168) = v17;
  *(a5 + 172) = 0;
  *(a5 + 176) = 0;
  *(a5 + 180) = 0;
  *(a5 + 184) = 0;
  *(a5 + 188) = v18;
  *(a5 + 189) = a3;
  *(a5 + 190) = 1;
  *(a5 + 192) = vmulq_f64(vcvtq_f64_s64(vsubq_s64(*(a2 + 16), vdupq_n_s64(v14))), vdupq_n_s64(0x3E112E0BE826D695uLL));
  *(a5 + 208) = 1;
  result = raven::GnssMeasurementPreprocessor::GetMeasurementUncertaintyScaleFactor(v11, a4, a5, &v26);
  v20 = *(v11 + 2304) * 0.000000001 * (*(v11 + 2304) * 0.000000001 * 96.1703842);
  v21 = *(v11 + 8);
  v22 = v26 * v17;
  if (*(v21 + 3844) == 1)
  {
    *(a5 + 168) = v22;
    if ((v28 & 1) == 0)
    {
      goto LABEL_14;
    }

    v23 = v27 * v17;
  }

  else
  {
    v24 = sqrt(v20 + v22 * v22);
    *(a5 + 168) = v24;
    if ((v28 & 1) == 0)
    {
      goto LABEL_14;
    }

    v23 = sqrt(v20 + (v27 * v17) * (v27 * v17));
  }

  *(a5 + 172) = v23;
  *(a5 + 176) = 1;
LABEL_14:
  if (v30 == 1)
  {
    v25 = sqrt(v20 + (v29 * v17) * (v29 * v17));
    if (*(v21 + 3844))
    {
      v25 = v29 * v17;
    }

    *(a5 + 180) = v25;
    *(a5 + 184) = 1;
  }

  return result;
}

uint64_t raven::GnssMeasurementPreprocessor::FormAveragedDoppler@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  if (*(*(result + 8) + 609) != 1)
  {
    goto LABEL_15;
  }

  v13 = result;
  result = sub_1D0C3ACF0(a2);
  if (!result)
  {
    goto LABEL_15;
  }

  v18 = *(a2 + 80);
  if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_15;
  }

  v19 = *(a2 + 88);
  if (v19 <= 0.0)
  {
    goto LABEL_15;
  }

  if (v19 >= 100.069229)
  {
    goto LABEL_15;
  }

  v20 = *(a2 + 8);
  v21 = *(a2 + 192);
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  *&v41 = 0;
  *(&v41 + 1) = 0x7FF8000000000000;
  LODWORD(v42) = 3;
  BYTE4(v42) = v20;
  *(&v42 + 1) = a7;
  LODWORD(v43) = v21;
  *(&v43 + 1) = v18 * -0.299792458;
  v44 = vdupq_n_s64(0x7FF8000000000000uLL);
  v45 = v44;
  *&v46 = 0x7FF8000000000000;
  DWORD2(v46) = 2143289344;
  BYTE12(v46) = 0;
  LOBYTE(v47) = 0;
  BYTE4(v47) = 0;
  BYTE8(v47) = 0;
  BYTE13(v47) = a3;
  BYTE14(v47) = 1;
  v48 = v44;
  LOBYTE(v49) = 1;
  result = raven::GnssMeasurementPreprocessor::FillAveragedDopplerStartEndTimes(v13, a2, a4, &v36, v14, v15, v16, v17);
  if (result)
  {
    if (*(*(v13 + 8) + 579))
    {
      v22 = a2 + 56;
    }

    else
    {
      v22 = a2 + 80;
    }

    v23 = *(v22 + 8) * 0.299792458;
    *(&v46 + 2) = v23;
    BYTE12(v47) = *(v22 + 16);
    result = raven::GnssMeasurementPreprocessor::GetMeasurementUncertaintyScaleFactor(v13, a5, &v36, v32);
    *(&v46 + 2) = v32[0] * v23;
    if (v33 == 1)
    {
      *(&v46 + 3) = v32[1] * v23;
      LOBYTE(v47) = v33;
    }

    if (v35 == 1)
    {
      *(&v47 + 1) = v34 * v23;
      BYTE8(v47) = v35;
    }

    v24 = v47;
    v25 = v48;
    v26 = v45;
    *(a6 + 160) = v46;
    *(a6 + 176) = v24;
    *(a6 + 192) = v25;
    v27 = v43;
    v28 = v44;
    *(a6 + 96) = v42;
    *(a6 + 112) = v27;
    *(a6 + 208) = v49;
    *(a6 + 128) = v28;
    *(a6 + 144) = v26;
    v29 = v39;
    *(a6 + 32) = v38;
    *(a6 + 48) = v29;
    v30 = v41;
    *(a6 + 64) = v40;
    *(a6 + 80) = v30;
    v31 = v37;
    *a6 = v36;
    *(a6 + 16) = v31;
  }

  else
  {
LABEL_15:
    *a6 = 0;
    *(a6 + 208) = 0;
  }

  return result;
}

uint64_t raven::GnssMeasurementPreprocessor::FillAveragedDopplerStartEndTimes(uint64_t a1, int64x2_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(*(a1 + 8) + 544) != 1)
  {
    *(a4 + 192) = vmulq_f64(vcvtq_f64_s64(vsubq_s64(a2[1], vdupq_n_s64(*(a1 + 2304) + a2[2].i64[0]))), vdupq_n_s64(0x3E112E0BE826D695uLL));
    return 1;
  }

  if ((*(a3 + 8) & 1) == 0)
  {
    v16 = 12;
    v15 = 3;
    cnprint::CNPrinter::Print(&v16, &v15, "#gmp,Average doppler cannot be formed because hw_clock diff is unavailable", a4, a5, a6, a7, a8, v12);
    return 0;
  }

  v8 = *a3;
  if ((*a3 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && v8 >= 0.25 && v8 <= 1.5)
  {
    *(a4 + 192) = -v8;
    *(a4 + 200) = 0;
    return 1;
  }

  v14 = 12;
  v13 = 3;
  cnprint::CNPrinter::Print(&v14, &v13, "#gmp,Duration since last report is unexpected,not forming averaged Doppler,%.3f", a4, a5, a6, a7, a8, SLOBYTE(v8));
  return 0;
}

void raven::GnssMeasurementPreprocessor::FormAveragedDopplerFromPhaseTracking(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>)
{
  if ((*(*(a1 + 8) + 608) & 1) == 0)
  {
    goto LABEL_18;
  }

  if (sub_1D0C3ACF0(a2))
  {
    v20 = *(a2 + 104);
    if ((*&v20 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      v21 = *(a2 + 112);
      if (v21 > 0.0 && v21 < 100.069229)
      {
        v22 = *(a2 + 8);
        v23 = *(a2 + 192);
        v24 = *(a2 + 120);
        *a7 = 0u;
        *(a7 + 16) = 0u;
        *(a7 + 32) = 0u;
        *(a7 + 48) = 0u;
        *(a7 + 64) = 0u;
        *(a7 + 80) = 0;
        *(a7 + 88) = 0x7FF8000000000000;
        *(a7 + 96) = 4;
        *(a7 + 100) = v22;
        *(a7 + 104) = a8;
        *(a7 + 112) = v23;
        *(a7 + 120) = v20 * -0.299792458;
        v25 = vdupq_n_s64(0x7FF8000000000000uLL);
        *(a7 + 128) = v25;
        *(a7 + 144) = v25;
        *(a7 + 160) = 0x7FF8000000000000;
        *(a7 + 168) = 2143289344;
        *(a7 + 172) = 0;
        *(a7 + 176) = 0;
        *(a7 + 180) = 0;
        *(a7 + 184) = 0;
        *(a7 + 188) = 0;
        *(a7 + 189) = a4;
        *(a7 + 190) = v24;
        *(a7 + 192) = v25;
        *(a7 + 208) = 1;
        if (raven::GnssMeasurementPreprocessor::FillAveragedDopplerStartEndTimes(a1, a2, a5, a7, v16, v17, v18, v19))
        {
          v26 = *(a2 + 112) * 0.299792458;
          *(a7 + 168) = v26;
          *(a7 + 188) = *(a2 + 121);
          raven::GnssMeasurementPreprocessor::GetMeasurementUncertaintyScaleFactor(a1, a6, a7, &v46);
          *(a7 + 168) = *&v46 * v26;
          v27 = BYTE8(v46);
          if (BYTE8(v46) == 1)
          {
            *(a7 + 172) = *(&v46 + 1) * v26;
            *(a7 + 176) = v27;
          }

          v28 = v47;
          if (v47 == 1)
          {
            *(a7 + 180) = *(&v46 + 3) * v26;
            *(a7 + 184) = v28;
          }

          return;
        }
      }
    }
  }

  if (*(a1 + 2600) != 1 || !sub_1D0C3ACF0(a2) || !sub_1D0C42220(a2 + 128))
  {
    goto LABEL_18;
  }

  if ((*(a1 + 2600) & 1) == 0)
  {
    goto LABEL_33;
  }

  raven::GnssPhaseTrackingStore::FormAveragedDoppler(a1 + 2552, a3, a2, *(a1 + 2304) + *(a2 + 32), &v46);
  if ((v59 & 1) == 0)
  {
LABEL_18:
    *a7 = 0;
    *(a7 + 208) = 0;
    return;
  }

  *(&v52 + 1) = a8;
  if (*(*(a1 + 8) + 579))
  {
    v29 = *(a2 + 64) * 0.299792458;
    *(&v56 + 2) = v29;
  }

  else
  {
    v29 = *(&v56 + 2);
  }

  raven::GnssMeasurementPreprocessor::GetMeasurementUncertaintyScaleFactor(a1, a6, &v46, &v41);
  if ((v59 & 1) == 0)
  {
LABEL_33:
    sub_1D0C42F28();
  }

  v30 = v29 * v41;
  v31 = 0.01;
  if ((v29 * v41) < 0.01)
  {
    v30 = 0.01;
  }

  *(&v56 + 2) = v30;
  if (v43 == 1)
  {
    v32 = v29 * v42;
    if ((v29 * v42) < 0.01)
    {
      v32 = 0.01;
    }

    *(&v56 + 3) = v32;
    LOBYTE(v57) = v43;
  }

  if (v45 == 1)
  {
    if ((v29 * v44) >= 0.01)
    {
      v31 = v29 * v44;
    }

    *(&v57 + 1) = v31;
    BYTE8(v57) = v45;
  }

  v33 = v57;
  v34 = v58;
  v35 = v55;
  *(a7 + 160) = v56;
  *(a7 + 176) = v33;
  *(a7 + 192) = v34;
  v36 = v53;
  v37 = v54;
  *(a7 + 96) = v52;
  *(a7 + 112) = v36;
  *(a7 + 208) = v59;
  *(a7 + 128) = v37;
  *(a7 + 144) = v35;
  v38 = v49;
  *(a7 + 32) = v48;
  *(a7 + 48) = v38;
  v39 = v51;
  *(a7 + 64) = v50;
  *(a7 + 80) = v39;
  v40 = v47;
  *a7 = v46;
  *(a7 + 16) = v40;
}

void raven::GnssMeasurementPreprocessor::SelectAndPopulateDoppler(uint64_t a1, double *a2, uint64_t a3, uint64_t a4, uint64_t a5, _OWORD *a6, _OWORD *a7, uint64_t a8)
{
  v37[0] = a3;
  v37[1] = a2;
  v15 = *(a1 + 8);
  if (v15[546] == 1 && v15[610] == 1)
  {
    if (*(a4 + 208) == 1)
    {
      v35 = *(a2 + 11);
      v36 = 1;
      v17 = sub_1D0C424F0(v37, a4, &v35);
      if ((v17 & 1) == 0)
      {
        if (cnprint::CNPrinter::GetLogLevel(v17) <= 1)
        {
          LOWORD(v35) = 12;
          LOBYTE(v34) = 1;
          v18 = sub_1D0BCFAB8(a8);
          cnprint::CNPrinter::Print(&v35, &v34, "#gmp,Invalidated averaged_doppler due to cross-check,SV,%s", v19, v20, v21, v22, v23, v18);
        }

        if (*(a4 + 208) == 1)
        {
          *(a4 + 208) = 0;
        }
      }
    }

    if (sub_1D0C3ACF0(a2) && (a2[13] & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && a2[14] > 0.0)
    {
      v35 = *(a2 + 14);
      v24 = 1;
    }

    else
    {
      v24 = 0;
      LOBYTE(v35) = 0;
    }

    v36 = v24;
    if (*(a5 + 208) == 1)
    {
      v25 = sub_1D0C424F0(v37, a5, &v35);
      if ((v25 & 1) == 0)
      {
        if (cnprint::CNPrinter::GetLogLevel(v25) <= 1)
        {
          v34 = 12;
          v33 = 1;
          v26 = sub_1D0BCFAB8(a8);
          cnprint::CNPrinter::Print(&v34, &v33, "#gmp,Invalidated averaged_doppler_from_phase_tracking due to cross-check,SV,%s", v27, v28, v29, v30, v31, v26);
        }

        if (*(a5 + 208) == 1)
        {
          *(a5 + 208) = 0;
        }
      }
    }

    v15 = *(a1 + 8);
  }

  v32 = v15[581];
  if (*(a5 + 208) == 1)
  {
    raven::GnssMeasurementPreprocessor::CheckObservableAndAddToVector(a1, a5, a6, a7, a8, a6, a7, a8);
    if ((v32 & 1) == 0)
    {
      return;
    }

    if (*(a4 + 208) == 1)
    {
      raven::GnssMeasurementPreprocessor::CheckObservableAndAddToVector(a1, a4, a6, a7, a8, a6, a7, a8);
    }
  }

  else if (*(a4 + 208))
  {
    raven::GnssMeasurementPreprocessor::CheckObservableAndAddToVector(a1, a4, a6, a7, a8, a6, a7, a8);
    if (!v32)
    {
      return;
    }
  }

  if (*(a3 + 208) == 1)
  {

    raven::GnssMeasurementPreprocessor::CheckObservableAndAddToVector(a1, a3, a6, a7, a8, a6, a7, a8);
  }
}

uint64_t sub_1D0C424F0(cnprint::CNPrinter *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  if (*(*a1 + 208) == 1)
  {
    v6 = *(a1 + 1);
    a1 = sub_1D0C3ACF0(v6);
    if (a1)
    {
      if ((*(v6 + 56) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && *(v6 + 64) > 0.0)
      {
        v7 = *v5;
        if ((*(*v5 + 208) & 1) == 0)
        {
          sub_1D0C42F28();
        }

        if (*(v7 + 168) < 30.0 && (*(a3 + 8) != 1 || *a3 <= *(*(v5 + 1) + 64) * 3.0) && vabdd_f64(*(a2 + 120), *(v7 + 120)) < 5.0)
        {
          return 1;
        }
      }
    }
  }

  if (cnprint::CNPrinter::GetLogLevel(a1) <= 1)
  {
    v22 = 12;
    v21 = 1;
    v14 = -1.0;
    if (*(*v5 + 208) == 1)
    {
      v14 = *(*v5 + 120);
    }

    v15 = *(v5 + 1);
    if (*(a3 + 8))
    {
      v16 = *a3;
    }

    v20 = *(v15 + 192);
    v19 = *(v15 + 8);
    v18 = *(v15 + 64);
    v17 = *(a2 + 120);
    cnprint::CNPrinter::Print(&v22, &v21, "#gmp,Doppler cross-check failure details,inst_val,%.2f,test_val,%.2f,inst_unc,%.2f,test_unc,%.2f,band,%d,cn0,%.1f", v9, v10, v11, v12, v13, SLOBYTE(v14));
  }

  return 0;
}

uint64_t raven::GnssSvDatabase::AggregateHealthL5(_BYTE *a1)
{
  v1 = 0;
  v3[0] = a1[221];
  v3[1] = a1[213];
  v3[2] = a1[215];
  v3[3] = a1[217];
  v3[4] = a1[219];
  while (1)
  {
    result = v3[v1];
    if ((result - 1) < 2)
    {
      break;
    }

    if (++v1 == 5)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D0C426B4(_BYTE *a1)
{
  if (*a1 != 1)
  {
    return 0;
  }

  v1 = a1[1];
  v2 = a1[2];
  v3 = (v1 ^ 1) & v2;
  if ((v1 ^ 1) & 1) == 0 && (v2)
  {
    v3 = 1;
    if (a1[4])
    {
      return 0x40F5180000000000;
    }
  }

  v5 = 0x3F947AE147AE147BLL;
  if (a1[3])
  {
    v5 = 0x4000000000000000;
  }

  if (!v3)
  {
    v5 = 0x3F847AE147AE147BLL;
  }

  if (a1[1])
  {
    return v5;
  }

  else
  {
    return 0x3F50624DD2F1A9FCLL;
  }
}

__n128 raven::GnssPhaseTrackingStore::FormAveragedDoppler@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v13 = *(a3 + 8) | ((*(a2 + 28) + 1000 * *(a2 + 24)) << 8);
  v14 = &v13;
  v9 = sub_1D0C42810((a1 + 8), &v13);
  raven::GnssPhaseTrackingStore::FormAveragedDopplerWorker(a1, (v9 + 3), a3, a4, a5);
  result = *(a3 + 128);
  v11 = *(a3 + 144);
  v12 = *(a3 + 160);
  *(v9 + 72) = *(a3 + 176);
  *(v9 + 7) = v12;
  *(v9 + 5) = v11;
  *(v9 + 3) = result;
  return result;
}

uint64_t *sub_1D0C42810(void *a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void raven::GnssPhaseTrackingStore::FormAveragedDopplerWorker(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (!sub_1D0C42220(a2) || !sub_1D0C42220(a3 + 128) || (*(a2 + 48) & 1) != 0 || *(a3 + 176) == 1)
  {
    goto LABEL_14;
  }

  if ((*(a3 + 152) & 1) == 0 || (*(a2 + 24) & 1) == 0)
  {
    sub_1D0C42F28();
  }

  v15 = *(a3 + 144);
  v16 = *(a2 + 16);
  if (v15 <= v16)
  {
    v29 = 12;
    v28 = 4;
    cnprint::CNPrinter::Print(&v29, &v28, "#phase_store,invalid time order,last,%llu,curr,%llu", v10, v11, v12, v13, v14, v16);
LABEL_14:
    v25 = 0;
    *a5 = 0;
    goto LABEL_15;
  }

  if (v15 != a4)
  {
    v27 = 12;
    v26 = 3;
    cnprint::CNPrinter::Print(&v27, &v26, "#phase_store,desired applicability does not match data,desired,%llu,curr,%llu", v10, v11, v12, v13, v14, a4);
    goto LABEL_14;
  }

  v17 = (a4 - v16) * 0.000000001;
  if (v17 < *(*a1 + 624) || v17 > *(*a1 + 632))
  {
    goto LABEL_14;
  }

  v18 = *(a3 + 168);
  v19 = *(a3 + 160) - *(a2 + 32);
  v20 = *(a3 + 8);
  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0u;
  *(a5 + 64) = 0u;
  v21 = *(a3 + 192);
  v22 = *(a3 + 196);
  *(a5 + 80) = 0;
  *(a5 + 88) = 0x7FF8000000000000;
  *(a5 + 96) = 4;
  *(a5 + 100) = v20;
  *(a5 + 104) = 0x7FF8000000000000;
  v23 = 0.299792458 / v17 * v18;
  *(a5 + 112) = v21;
  *(a5 + 120) = 0.299792458 / v17 * v19;
  v24 = vdupq_n_s64(0x7FF8000000000000uLL);
  *(a5 + 128) = v24;
  *(a5 + 144) = v24;
  *(a5 + 160) = 0x7FF8000000000000;
  *(a5 + 168) = v23;
  *(a5 + 172) = 0;
  *(a5 + 176) = 0;
  *(a5 + 180) = 0;
  *(a5 + 184) = 0;
  *(a5 + 188) = 0;
  *(a5 + 189) = v22;
  *(a5 + 192) = -v17;
  *(a5 + 200) = 0;
  v25 = 1;
LABEL_15:
  *(a5 + 208) = v25;
}

BOOL sub_1D0C42E1C(_DWORD *a1)
{
  if ((a1[1] & 0x7FFFFFFFu) > 0x7F7FFFFF || (a1[8] & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    return 0;
  }

  v2 = a1[10];
  if ((a1[9] & 0x7FFFFFFFu) <= 0x7F7FFFFF)
  {
    if ((v2 & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
      return 0;
    }
  }

  else if ((v2 & 0x7FFFFFFFu) < 0x7F800000)
  {
    return 0;
  }

  if ((a1[11] & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    return 0;
  }

  v3 = a1[13];
  if ((a1[12] & 0x7FFFFFFFu) <= 0x7F7FFFFF)
  {
    if ((v3 & 0x7FFFFFFFu) <= 0x7F7FFFFF)
    {
      goto LABEL_13;
    }

    return 0;
  }

  if ((v3 & 0x7FFFFFFFu) < 0x7F800000)
  {
    return 0;
  }

LABEL_13:
  if ((a1[14] & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    return 0;
  }

  v4 = a1[16];
  v5 = (v4 & 0x7FFFFFFFu) > 0x7F7FFFFF;
  v6 = (v4 & 0x7FFFFFFFu) < 0x7F800000;
  if ((a1[15] & 0x7FFFFFFFu) <= 0x7F7FFFFF)
  {
    return v6;
  }

  else
  {
    return v5;
  }
}

void sub_1D0C42F28()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E55D8] + 16;
  __cxa_throw(exception, MEMORY[0x1E69E5418], MEMORY[0x1E69E52A0]);
}

uint64_t sub_1D0C42F74(_BYTE *a1)
{
  if (*a1 != 1)
  {
    return 0;
  }

  v1 = a1[1];
  if (v1 == 1)
  {
    v2 = a1[4];
    if ((a1[2] & 1) == 0)
    {
      if ((a1[4] & 1) == 0)
      {
        if (a1[3])
        {
          return 0x4024000000000000;
        }

        else
        {
          return 0x3F947AE147AE147BLL;
        }
      }

      return 0x4122750000000000;
    }
  }

  else
  {
    if (a1[2] != 1)
    {
      return 0x3F50624DD2F1A9FCLL;
    }

    v2 = a1[4];
  }

  if (v2)
  {
    return 0x4122750000000000;
  }

  if ((a1[3] & v1) != 0)
  {
    return 0x4024000000000000;
  }

  else
  {
    return 0x3FB999999999999ALL;
  }
}

uint64_t raven::GnssMeasurementPreprocessor::OrderGnssMeasurements(cnprint::CNPrinter *a1, uint64_t *a2)
{
  v2 = *a1;
  if (v2)
  {
    sub_1D0C4333C(&__p, (a2[1] - *a2) >> 4);
    v4 = __p;
    v5 = v29;
    if (__p != v29)
    {
      v6 = 0;
      v7 = (v29 - __p - 8) >> 3;
      v8 = vdupq_n_s64(v7);
      v9 = (v7 + 2) & 0x3FFFFFFFFFFFFFFELL;
      v10 = xmmword_1D0E7DD30;
      v11 = vdupq_n_s64(2uLL);
      do
      {
        v12 = vmovn_s64(vcgeq_u64(v8, v10));
        if (v12.i8[0])
        {
          v4[v6] = v6;
        }

        if (v12.i8[4])
        {
          v4[v6 + 1] = v6 + 1;
        }

        v6 += 2;
        v10 = vaddq_s64(v10, v11);
      }

      while (v9 != v6);
    }

    v13 = 126 - 2 * __clz(v5 - v4);
    v30[0] = a2;
    if (v5 == v4)
    {
      v14 = 0;
    }

    else
    {
      v14 = v13;
    }

    sub_1D0C433B4(v4, v5, v30, v14, 1);
    v26 = 0uLL;
    v27 = 0;
    v15 = v29 - __p;
    if (v29 != __p)
    {
      if (!((v15 >> 3) >> 60))
      {
        v30[4] = &v26;
        sub_1D0BCAB88(&v26, v15 >> 3);
      }

      sub_1D0D31B50();
    }

    v21 = *(&v26 + 1);
    v22 = *a2;
    v23 = v27;
    *a2 = v26;
    a2[1] = v21;
    v26 = v22;
    v24 = a2[2];
    a2[2] = v23;
    v27 = v24;
    v30[0] = &v26;
    sub_1D0BBBD80(v30);
    if (__p)
    {
      v29 = __p;
      operator delete(__p);
    }
  }

  else if (cnprint::CNPrinter::GetLogLevel(a1) <= 1)
  {
    LOWORD(v30[0]) = 12;
    LOBYTE(__p) = 1;
    cnprint::CNPrinter::Print(v30, &__p, "#gmp,OrderGnssMeasurements,not configured", v16, v17, v18, v19, v20, v26);
  }

  return v2;
}

void sub_1D0C43308(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t *a15)
{
  a15 = &a9;
  sub_1D0BBBD80(&a15);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_1D0C4333C(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_1D0C39994(result, a2);
  }

  return result;
}

void sub_1D0C43398(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0C433B4(uint64_t result, uint64_t *a2, uint64_t **a3, uint64_t a4, char a5)
{
  v9 = result;
LABEL_2:
  v10 = a2 - 1;
  k = v9;
  while (1)
  {
    v9 = k;
    v12 = a2 - k;
    if (v12 > 2)
    {
      switch(v12)
      {
        case 3:
          v116 = **a3;

          return sub_1D0C5112C(k, k + 1, a2 - 1, v116);
        case 4:

          return sub_1D0E0FE10(k, k + 1, k + 2, a2 - 1, a3);
        case 5:

          return sub_1D0E10034(k, k + 1, k + 2, k + 3, a2 - 1, a3);
      }
    }

    else
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        v109 = *(a2 - 1);
        v110 = **a3;
        v111 = *k;
        v112 = (v110 + 16 * *k);
        v113 = *(v110 + 16 * v109);
        if (v113)
        {
          v114 = *(v113 + 328);
          v115 = v114 == *(v113 + 336) || *(v114 + 189) != 1;
        }

        else
        {
          v115 = -1;
        }

        v239 = *v112;
        if (v239)
        {
          v240 = *(v239 + 328);
          v241 = v240 == *(v239 + 336) || *(v240 + 189) != 1;
        }

        else
        {
          v241 = -1;
        }

        v242 = v115 <= v241;
        if (v115 == v241)
        {
          if (v113)
          {
            v243 = v239 == 0;
          }

          else
          {
            v243 = 1;
          }

          if (v243)
          {
            return result;
          }

          v242 = *(v113 + 264) <= *(v239 + 264);
        }

        if (!v242)
        {
          *k = v109;
          *(a2 - 1) = v111;
        }

        return result;
      }
    }

    if (v12 <= 23)
    {
      break;
    }

    if (!a4)
    {
      if (k == a2)
      {
        return result;
      }

      v138 = (v12 - 2) >> 1;
      v139 = *a3;
      v140 = v138;
      while (1)
      {
        v141 = v140;
        if (v138 < v140)
        {
          goto LABEL_382;
        }

        v142 = (2 * v140) | 1;
        v143 = &k[v142];
        v144 = 2 * v140 + 2;
        v145 = *v139;
        if (v144 < v12)
        {
          v146 = *(v145 + 16 * *v143);
          if (v146)
          {
            v147 = *(v146 + 328);
            v148 = v147 == *(v146 + 336) || *(v147 + 189) != 1;
          }

          else
          {
            v148 = -1;
          }

          v149 = *(v145 + 16 * v143[1]);
          if (v149)
          {
            v150 = *(v149 + 328);
            v151 = v150 == *(v149 + 336) || *(v150 + 189) != 1;
          }

          else
          {
            v151 = -1;
          }

          v152 = v148 <= v151;
          if (v148 == v151)
          {
            if (v146)
            {
              v153 = v149 == 0;
            }

            else
            {
              v153 = 1;
            }

            if (v153)
            {
              goto LABEL_325;
            }

            v152 = *(v146 + 264) <= *(v149 + 264);
          }

          if (!v152)
          {
            ++v143;
            v142 = 2 * v141 + 2;
          }
        }

LABEL_325:
        result = *(v145 + 16 * *v143);
        if (result)
        {
          v154 = *(result + 328);
          v155 = v154 == *(result + 336) || *(v154 + 189) != 1;
        }

        else
        {
          v155 = -1;
        }

        v156 = k[v141];
        v157 = *(v145 + 16 * v156);
        if (v157)
        {
          v158 = *(v157 + 328);
          v159 = v158 == *(v157 + 336) || *(v158 + 189) != 1;
        }

        else
        {
          v159 = -1;
        }

        v160 = v155 <= v159;
        if (v155 != v159)
        {
          goto LABEL_341;
        }

        if (result)
        {
          v161 = v157 == 0;
        }

        else
        {
          v161 = 1;
        }

        if (!v161)
        {
          v160 = *(result + 264) <= *(v157 + 264);
LABEL_341:
          if (!v160)
          {
            goto LABEL_382;
          }
        }

        k[v141] = *v143;
        while (1)
        {
          if (v138 < v142)
          {
            goto LABEL_381;
          }

          v162 = v143;
          v163 = 2 * v142;
          v142 = (2 * v142) | 1;
          v143 = &k[v142];
          v164 = v163 + 2;
          if (v164 < v12)
          {
            v165 = *(v145 + 16 * *v143);
            if (v165)
            {
              v166 = *(v165 + 328);
              v167 = v166 == *(v165 + 336) || *(v166 + 189) != 1;
            }

            else
            {
              v167 = -1;
            }

            v168 = *(v145 + 16 * v143[1]);
            if (v168)
            {
              v169 = *(v168 + 328);
              v170 = v169 == *(v168 + 336) || *(v169 + 189) != 1;
            }

            else
            {
              v170 = -1;
            }

            v171 = v167 <= v170;
            if (v167 == v170)
            {
              if (v165)
              {
                v172 = v168 == 0;
              }

              else
              {
                v172 = 1;
              }

              if (v172)
              {
                goto LABEL_364;
              }

              v171 = *(v165 + 264) <= *(v168 + 264);
            }

            if (!v171)
            {
              ++v143;
              v142 = v164;
            }
          }

LABEL_364:
          result = *v143;
          v173 = *(v145 + 16 * *v143);
          if (v173)
          {
            v174 = *(v173 + 328);
            if (v174 == *(v173 + 336))
            {
              v175 = 1;
              if (!v157)
              {
LABEL_370:
                v177 = -1;
                goto LABEL_374;
              }
            }

            else
            {
              v175 = *(v174 + 189) != 1;
              if (!v157)
              {
                goto LABEL_370;
              }
            }
          }

          else
          {
            v175 = -1;
            if (!v157)
            {
              goto LABEL_370;
            }
          }

          v176 = *(v157 + 328);
          v177 = v176 == *(v157 + 336) || *(v176 + 189) != 1;
LABEL_374:
          v178 = v175 <= v177;
          if (v175 != v177)
          {
            goto LABEL_378;
          }

          if (v157 && v173)
          {
            break;
          }

LABEL_380:
          *v162 = result;
        }

        v178 = *(v173 + 264) <= *(v157 + 264);
LABEL_378:
        if (v178)
        {
          goto LABEL_380;
        }

        v143 = v162;
LABEL_381:
        *v143 = v156;
LABEL_382:
        v140 = v141 - 1;
        if (!v141)
        {
LABEL_401:
          v188 = 0;
          v189 = *k;
          v190 = *a3;
          v191 = k;
          while (1)
          {
            v192 = v191;
            v193 = &v191[v188];
            v191 = v193 + 1;
            v194 = 2 * v188;
            v188 = (2 * v188) | 1;
            v195 = v194 + 2;
            if (v195 < v12)
            {
              v198 = v193[2];
              v197 = v193 + 2;
              v196 = v198;
              v199 = *(*v190 + 16 * *(v197 - 1));
              if (v199)
              {
                v200 = *(v199 + 328);
                result = v200 == *(v199 + 336) || *(v200 + 189) != 1;
              }

              else
              {
                result = 0xFFFFFFFFLL;
              }

              v201 = *(*v190 + 16 * v196);
              if (v201)
              {
                v202 = *(v201 + 328);
                v203 = v202 == *(v201 + 336) || *(v202 + 189) != 1;
              }

              else
              {
                v203 = -1;
              }

              v204 = result <= v203;
              if (result != v203)
              {
                goto LABEL_419;
              }

              if (v199 && v201 != 0)
              {
                break;
              }
            }

LABEL_421:
            *v192 = *v191;
            if (v188 > ((v12 - 2) >> 1))
            {
              if (v191 == --a2)
              {
                *v191 = v189;
                goto LABEL_445;
              }

              *v191 = *a2;
              *a2 = v189;
              v206 = (v191 - k + 8) >> 3;
              v207 = v206 - 2;
              if (v206 < 2)
              {
                goto LABEL_445;
              }

              v180 = v207 >> 1;
              v187 = &k[v207 >> 1];
              v208 = *v190;
              v209 = *(v208 + 16 * *v187);
              if (v209)
              {
                v210 = *(v209 + 328);
                result = v210 == *(v209 + 336) || *(v210 + 189) != 1;
              }

              else
              {
                result = 0xFFFFFFFFLL;
              }

              v211 = *v191;
              v212 = *(v208 + 16 * *v191);
              if (v212)
              {
                v213 = *(v212 + 328);
                v214 = v213 == *(v212 + 336) || *(v213 + 189) != 1;
              }

              else
              {
                v214 = -1;
              }

              v215 = result <= v214;
              if (result != v214)
              {
LABEL_441:
                if (v215)
                {
                  goto LABEL_445;
                }

                *v191 = *v187;
                if (v207 < 2)
                {
LABEL_443:
                  v181 = v187;
LABEL_444:
                  *v181 = v211;
                  goto LABEL_445;
                }

                while (2)
                {
                  v179 = v180 - 1;
                  v180 = (v180 - 1) >> 1;
                  v181 = &k[v180];
                  v182 = *(v208 + 16 * *v181);
                  if (v182)
                  {
                    v183 = *(v182 + 328);
                    if (v183 == *(v182 + 336))
                    {
                      result = 1;
                      if (v212)
                      {
                        goto LABEL_387;
                      }
                    }

                    else
                    {
                      result = *(v183 + 189) != 1;
                      if (v212)
                      {
LABEL_387:
                        v184 = *(v212 + 328);
                        v185 = v184 == *(v212 + 336) || *(v184 + 189) != 1;
LABEL_394:
                        v186 = result <= v185;
                        if (result == v185)
                        {
                          if (!v212 || !v182)
                          {
                            goto LABEL_443;
                          }

                          v186 = *(v182 + 264) <= *(v212 + 264);
                        }

                        if (v186)
                        {
                          goto LABEL_443;
                        }

                        *v187 = *v181;
                        v187 = &k[v180];
                        if (v179 <= 1)
                        {
                          goto LABEL_444;
                        }

                        continue;
                      }
                    }
                  }

                  else
                  {
                    result = 0xFFFFFFFFLL;
                    if (v212)
                    {
                      goto LABEL_387;
                    }
                  }

                  break;
                }

                v185 = -1;
                goto LABEL_394;
              }

              if (v209)
              {
                v216 = v212 == 0;
              }

              else
              {
                v216 = 1;
              }

              if (!v216)
              {
                v215 = *(v209 + 264) <= *(v212 + 264);
                goto LABEL_441;
              }

LABEL_445:
              v35 = v12-- <= 2;
              if (v35)
              {
                return result;
              }

              goto LABEL_401;
            }
          }

          v204 = *(v199 + 264) <= *(v201 + 264);
LABEL_419:
          if (!v204)
          {
            v191 = v197;
            v188 = v195;
          }

          goto LABEL_421;
        }
      }
    }

    v13 = v12 >> 1;
    v14 = &k[v12 >> 1];
    v15 = **a3;
    if (v12 < 0x81)
    {
      result = sub_1D0C5112C(&v9[v12 >> 1], v9, a2 - 1, v15);
    }

    else
    {
      sub_1D0C5112C(v9, &v9[v12 >> 1], a2 - 1, v15);
      sub_1D0C5112C(v9 + 1, v14 - 1, a2 - 2, **a3);
      sub_1D0C5112C(v9 + 2, &v9[v13 + 1], a2 - 3, **a3);
      result = sub_1D0C5112C(v14 - 1, v14, &v9[v13 + 1], **a3);
      v16 = *v9;
      *v9 = *v14;
      *v14 = v16;
    }

    --a4;
    v17 = *v9;
    v18 = **a3;
    if (a5)
    {
      v19 = *(v18 + 16 * v17);
LABEL_35:
      for (i = 0; ; ++i)
      {
        v29 = v9[i + 1];
        v30 = *(v18 + 16 * v29);
        if (v30)
        {
          v31 = *(v30 + 328);
          if (v31 == *(v30 + 336))
          {
            v32 = 1;
            if (!v19)
            {
LABEL_42:
              v34 = -1;
              goto LABEL_46;
            }
          }

          else
          {
            v32 = *(v31 + 189) != 1;
            if (!v19)
            {
              goto LABEL_42;
            }
          }
        }

        else
        {
          v32 = -1;
          if (!v19)
          {
            goto LABEL_42;
          }
        }

        v33 = *(v19 + 328);
        v34 = v33 == *(v19 + 336) || *(v33 + 189) != 1;
LABEL_46:
        v35 = v32 <= v34;
        if (v32 != v34)
        {
          goto LABEL_50;
        }

        if (!v19 || !v30)
        {
          break;
        }

        v35 = *(v30 + 264) <= *(v19 + 264);
LABEL_50:
        if (v35)
        {
          break;
        }
      }

      v36 = &v9[i];
      v37 = &v9[i + 1];
      j = a2 - 1;
      if (i * 8)
      {
        while (1)
        {
          v39 = *(v18 + 16 * *j);
          if (v39)
          {
            v40 = *(v39 + 328);
            if (v40 == *(v39 + 336))
            {
              v41 = 1;
              if (!v19)
              {
LABEL_59:
                v43 = -1;
                goto LABEL_63;
              }
            }

            else
            {
              v41 = *(v40 + 189) != 1;
              if (!v19)
              {
                goto LABEL_59;
              }
            }
          }

          else
          {
            v41 = -1;
            if (!v19)
            {
              goto LABEL_59;
            }
          }

          v42 = *(v19 + 328);
          v43 = v42 == *(v19 + 336) || *(v42 + 189) != 1;
LABEL_63:
          v44 = v41 <= v43;
          if (v41 == v43)
          {
            if (!v19 || !v39)
            {
              goto LABEL_69;
            }

            v44 = *(v39 + 264) <= *(v19 + 264);
          }

          if (!v44)
          {
            goto LABEL_93;
          }

LABEL_69:
          --j;
        }
      }

      j = a2;
      if (v37 < a2)
      {
        for (j = a2 - 1; ; --j)
        {
          v45 = *(v18 + 16 * *j);
          if (v45)
          {
            v46 = *(v45 + 328);
            if (v46 == *(v45 + 336))
            {
              v47 = 1;
              if (!v19)
              {
LABEL_78:
                v49 = -1;
                goto LABEL_82;
              }
            }

            else
            {
              v47 = *(v46 + 189) != 1;
              if (!v19)
              {
                goto LABEL_78;
              }
            }
          }

          else
          {
            v47 = -1;
            if (!v19)
            {
              goto LABEL_78;
            }
          }

          v48 = *(v19 + 328);
          v49 = v48 == *(v19 + 336) || *(v48 + 189) != 1;
LABEL_82:
          if (v47 == v49)
          {
            if (v19 && v45)
            {
              if (v37 >= j || *(v45 + 264) > *(v19 + 264))
              {
                break;
              }
            }

            else if (v37 >= j)
            {
              break;
            }
          }

          else if (v37 >= j || v47 > v49)
          {
            break;
          }
        }
      }

LABEL_93:
      if (v37 >= j)
      {
        goto LABEL_129;
      }

      v50 = *j;
      v51 = v37;
      v52 = j;
      while (2)
      {
        *v51++ = v50;
        *v52 = v29;
        while (2)
        {
          v29 = *v51;
          v53 = *(v18 + 16 * *v51);
          if (!v53)
          {
            v55 = -1;
            if (v19)
            {
              goto LABEL_99;
            }

            goto LABEL_102;
          }

          v54 = *(v53 + 328);
          if (v54 == *(v53 + 336))
          {
            v55 = 1;
            if (v19)
            {
              goto LABEL_99;
            }

LABEL_102:
            v57 = -1;
            goto LABEL_106;
          }

          v55 = *(v54 + 189) != 1;
          if (!v19)
          {
            goto LABEL_102;
          }

LABEL_99:
          v56 = *(v19 + 328);
          v57 = v56 == *(v19 + 336) || *(v56 + 189) != 1;
LABEL_106:
          v58 = v55 <= v57;
          if (v55 != v57)
          {
LABEL_110:
            if (v58)
            {
              goto LABEL_112;
            }

            ++v51;
            continue;
          }

          break;
        }

        if (v19 && v53)
        {
          v58 = *(v53 + 264) <= *(v19 + 264);
          goto LABEL_110;
        }

LABEL_112:
        while (2)
        {
          while (2)
          {
            v59 = *--v52;
            v50 = v59;
            v60 = *(v18 + 16 * v59);
            if (!v60)
            {
              v62 = -1;
              if (v19)
              {
                goto LABEL_115;
              }

              goto LABEL_118;
            }

            v61 = *(v60 + 328);
            if (v61 == *(v60 + 336))
            {
              v62 = 1;
              if (v19)
              {
                goto LABEL_115;
              }

LABEL_118:
              v64 = -1;
              goto LABEL_122;
            }

            v62 = *(v61 + 189) != 1;
            if (!v19)
            {
              goto LABEL_118;
            }

LABEL_115:
            v63 = *(v19 + 328);
            v64 = v63 == *(v19 + 336) || *(v63 + 189) != 1;
LABEL_122:
            v65 = v62 <= v64;
            if (v62 != v64)
            {
              goto LABEL_126;
            }

            if (!v19 || !v60)
            {
              continue;
            }

            break;
          }

          v65 = *(v60 + 264) <= *(v19 + 264);
LABEL_126:
          if (v65)
          {
            continue;
          }

          break;
        }

        if (v51 < v52)
        {
          continue;
        }

        break;
      }

      v36 = v51 - 1;
LABEL_129:
      if (v36 != v9)
      {
        *v9 = *v36;
      }

      *v36 = v17;
      if (v37 < j)
      {
LABEL_134:
        result = sub_1D0C433B4(v9, v36, a3, a4, a5 & 1);
        a5 = 0;
        k = v36 + 1;
      }

      else
      {
        v66 = sub_1D0E102F0(v9, v36, a3);
        k = v36 + 1;
        result = sub_1D0E102F0(v36 + 1, a2, a3);
        if (result)
        {
          a2 = v36;
          if (v66)
          {
            return result;
          }

          goto LABEL_2;
        }

        if (!v66)
        {
          goto LABEL_134;
        }
      }
    }

    else
    {
      v20 = *(v18 + 16 * *(v9 - 1));
      if (v20)
      {
        v21 = *(v20 + 328);
        v22 = v21 == *(v20 + 336) || *(v21 + 189) != 1;
      }

      else
      {
        v22 = -1;
      }

      v19 = *(v18 + 16 * v17);
      if (v19)
      {
        v23 = *(v19 + 328);
        v24 = v23 == *(v19 + 336) || *(v23 + 189) != 1;
      }

      else
      {
        v24 = -1;
      }

      if (v22 == v24)
      {
        if (v20)
        {
          v25 = v19 == 0;
        }

        else
        {
          v25 = 1;
        }

        if (!v25)
        {
          if (*(v20 + 264) > *(v19 + 264))
          {
            goto LABEL_35;
          }

          v26 = *v10;
          v27 = (v18 + 16 * *v10);
LABEL_136:
          v67 = *(v19 + 328);
          v68 = v67 == *(v19 + 336) || *(v67 + 189) != 1;
          goto LABEL_140;
        }
      }

      else if (v22 > v24)
      {
        goto LABEL_35;
      }

      v26 = *v10;
      v27 = (v18 + 16 * *v10);
      if (v19)
      {
        goto LABEL_136;
      }

      v68 = -1;
LABEL_140:
      v69 = *v27;
      if (v69)
      {
        v70 = *(v69 + 328);
        v71 = v70 == *(v69 + 336) || *(v70 + 189) != 1;
      }

      else
      {
        v71 = -1;
      }

      v72 = v68 <= v71;
      if (v68 != v71)
      {
        goto LABEL_149;
      }

      if (v19 && v69)
      {
        v72 = *(v19 + 264) <= *(v69 + 264);
LABEL_149:
        if (!v72)
        {
          k = v9 + 1;
          if (!v19)
          {
LABEL_156:
            v74 = -1;
            goto LABEL_157;
          }

          while (2)
          {
            v73 = *(v19 + 328);
            v74 = v73 == *(v19 + 336) || *(v73 + 189) != 1;
LABEL_157:
            v75 = *(v18 + 16 * *k);
            if (v75)
            {
              v76 = *(v75 + 328);
              v77 = v76 == *(v75 + 336) || *(v76 + 189) != 1;
            }

            else
            {
              v77 = -1;
            }

            v78 = v74 <= v77;
            if (v74 == v77)
            {
              if (v19 && v75)
              {
                v78 = *(v19 + 264) <= *(v75 + 264);
                goto LABEL_166;
              }
            }

            else
            {
LABEL_166:
              if (!v78)
              {
                goto LABEL_167;
              }
            }

            ++k;
            if (!v19)
            {
              goto LABEL_156;
            }

            continue;
          }
        }
      }

      for (k = v9 + 1; k < a2; ++k)
      {
        if (v19)
        {
          v103 = *(v19 + 328);
          v104 = v103 == *(v19 + 336) || *(v103 + 189) != 1;
        }

        else
        {
          v104 = -1;
        }

        v105 = *(v18 + 16 * *k);
        if (v105)
        {
          v106 = *(v105 + 328);
          v107 = v106 == *(v105 + 336) || *(v106 + 189) != 1;
        }

        else
        {
          v107 = -1;
        }

        v108 = v104 <= v107;
        if (v104 == v107)
        {
          if (!v19 || !v105)
          {
            continue;
          }

          v108 = *(v19 + 264) <= *(v105 + 264);
        }

        if (!v108)
        {
          break;
        }
      }

LABEL_167:
      m = a2;
      if (k < a2)
      {
        for (m = a2 - 1; !v19; v26 = v86)
        {
          v81 = -1;
LABEL_173:
          v82 = *(v18 + 16 * v26);
          if (v82)
          {
            v83 = *(v82 + 328);
            v84 = v83 == *(v82 + 336) || *(v83 + 189) != 1;
          }

          else
          {
            v84 = -1;
          }

          v85 = v81 <= v84;
          if (v81 == v84)
          {
            if (!v19 || !v82)
            {
              goto LABEL_185;
            }

            v85 = *(v19 + 264) <= *(v82 + 264);
          }

          if (v85)
          {
            goto LABEL_185;
          }

          v86 = *--m;
        }

        v80 = *(v19 + 328);
        v81 = v80 == *(v19 + 336) || *(v80 + 189) != 1;
        goto LABEL_173;
      }

LABEL_185:
      if (k >= m)
      {
        goto LABEL_222;
      }

      v87 = *k;
      v88 = *m;
      while (2)
      {
        *k++ = v88;
        *m = v87;
        while (2)
        {
          v87 = *k;
          if (v19)
          {
            v89 = *(v19 + 328);
            v90 = v89 == *(v19 + 336) || *(v89 + 189) != 1;
          }

          else
          {
            v90 = -1;
          }

          v91 = *(v18 + 16 * v87);
          if (v91)
          {
            v92 = *(v91 + 328);
            v93 = v92 == *(v91 + 336) || *(v92 + 189) != 1;
          }

          else
          {
            v93 = -1;
          }

          v94 = v90 <= v93;
          if (v90 == v93)
          {
            if (v19 && v91)
            {
              v94 = *(v19 + 264) <= *(v91 + 264);
              break;
            }

LABEL_204:
            ++k;
            continue;
          }

          break;
        }

        if (v94)
        {
          goto LABEL_204;
        }

        do
        {
          v95 = *--m;
          v88 = v95;
          if (v19)
          {
            v96 = *(v19 + 328);
            v97 = v96 == *(v19 + 336) || *(v96 + 189) != 1;
          }

          else
          {
            v97 = -1;
          }

          v98 = *(v18 + 16 * v88);
          if (v98)
          {
            v99 = *(v98 + 328);
            v100 = v99 == *(v98 + 336) || *(v99 + 189) != 1;
          }

          else
          {
            v100 = -1;
          }

          v101 = v97 <= v100;
          if (v97 != v100)
          {
            continue;
          }

          if (!v19 || !v98)
          {
            break;
          }

          v101 = *(v19 + 264) <= *(v98 + 264);
        }

        while (!v101);
        if (k < m)
        {
          continue;
        }

        break;
      }

LABEL_222:
      v102 = k - 1;
      if (k - 1 != v9)
      {
        *v9 = *v102;
      }

      a5 = 0;
      *v102 = v17;
    }
  }

  if ((a5 & 1) == 0)
  {
    if (k == a2)
    {
      return result;
    }

    v217 = k + 1;
    if (k + 1 == a2)
    {
      return result;
    }

    v218 = **a3;
    while (1)
    {
      v219 = v9;
      v9 = v217;
      v220 = v219[1];
      v221 = *(v218 + 16 * v220);
      if (v221)
      {
        v222 = *(v221 + 328);
        v223 = v222 == *(v221 + 336) || *(v222 + 189) != 1;
      }

      else
      {
        v223 = -1;
      }

      v224 = *v219;
      v225 = *(v218 + 16 * *v219);
      if (v225)
      {
        v226 = *(v225 + 328);
        v227 = v226 == *(v225 + 336) || *(v226 + 189) != 1;
      }

      else
      {
        v227 = -1;
      }

      v228 = v223 <= v227;
      if (v223 == v227)
      {
        if (v221)
        {
          v229 = v225 == 0;
        }

        else
        {
          v229 = 1;
        }

        if (v229)
        {
          goto LABEL_485;
        }

        v228 = *(v221 + 264) <= *(v225 + 264);
      }

      if (!v228)
      {
        break;
      }

LABEL_485:
      v217 = v9 + 1;
      if (v9 + 1 == a2)
      {
        return result;
      }
    }

    while (1)
    {
      v230 = v219;
      v231 = v224;
      v232 = *--v219;
      v224 = v232;
      v219[2] = v231;
      if (v221)
      {
        v233 = *(v221 + 328);
        v234 = v233 == *(v221 + 336) || *(v233 + 189) != 1;
      }

      else
      {
        v234 = -1;
      }

      v235 = *(v218 + 16 * v224);
      if (v235)
      {
        v236 = *(v235 + 328);
        v237 = v236 == *(v235 + 336) || *(v236 + 189) != 1;
      }

      else
      {
        v237 = -1;
      }

      v238 = v234 <= v237;
      if (v234 == v237)
      {
        if (!v221 || !v235)
        {
LABEL_484:
          *v230 = v220;
          goto LABEL_485;
        }

        v238 = *(v221 + 264) <= *(v235 + 264);
      }

      if (v238)
      {
        goto LABEL_484;
      }
    }
  }

  if (k == a2)
  {
    return result;
  }

  v117 = k + 1;
  if (k + 1 == a2)
  {
    return result;
  }

  v118 = 0;
  v119 = **a3;
  v120 = k;
  while (2)
  {
    v121 = v120;
    v120 = v117;
    v122 = v121[1];
    v123 = *(v119 + 16 * v122);
    if (v123)
    {
      v124 = *(v123 + 328);
      v125 = v124 == *(v123 + 336) || *(v124 + 189) != 1;
    }

    else
    {
      v125 = -1;
    }

    v126 = *(v119 + 16 * *v121);
    if (v126)
    {
      v127 = *(v126 + 328);
      result = *(v126 + 336);
      v128 = v127 == result || *(v127 + 189) != 1;
    }

    else
    {
      v128 = -1;
    }

    v129 = v125 <= v128;
    if (v125 == v128)
    {
      if (v123)
      {
        v130 = v126 == 0;
      }

      else
      {
        v130 = 1;
      }

      if (v130)
      {
        goto LABEL_301;
      }

      v129 = *(v123 + 264) <= *(v126 + 264);
    }

    if (v129)
    {
      goto LABEL_301;
    }

    v121[1] = *v121;
    v131 = k;
    if (v121 == k)
    {
      goto LABEL_300;
    }

    v132 = v118;
    while (2)
    {
      if (v123)
      {
        v133 = *(v123 + 328);
        v134 = v133 == *(v123 + 336) || *(v133 + 189) != 1;
      }

      else
      {
        v134 = -1;
      }

      v135 = *(k + v132 - 8);
      result = *(v119 + 16 * v135);
      if (result)
      {
        v136 = *(result + 328);
        v137 = v136 == *(result + 336) || *(v136 + 189) != 1;
      }

      else
      {
        v137 = -1;
      }

      if (v134 != v137)
      {
        if (v134 <= v137)
        {
          break;
        }

        goto LABEL_297;
      }

      if (v123 && result)
      {
        if (*(v123 + 264) <= *(result + 264))
        {
          v131 = (k + v132);
          goto LABEL_300;
        }

LABEL_297:
        --v121;
        *(k + v132) = v135;
        v132 -= 8;
        if (!v132)
        {
          v131 = k;
          goto LABEL_300;
        }

        continue;
      }

      break;
    }

    v131 = v121;
LABEL_300:
    *v131 = v122;
LABEL_301:
    v117 = v120 + 1;
    v118 += 8;
    if (v120 + 1 != a2)
    {
      continue;
    }

    return result;
  }
}

uint64_t raven::GNSSPreprocessedMeasurementsChecker::CanSvAndMeasurementDataBeIncluded(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 24);
  if (*(a1 + 24))
  {
    v7 = *(a1 + 28) == -1;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    return 0;
  }

  v23 = v5;
  v24 = v4;
  v25 = v2;
  v26 = v3;
  if (v6 <= 2)
  {
    if (v6 == 1)
    {
      if (!*(a2 + 595))
      {
        return 0;
      }
    }

    else if (v6 == 2 && !*(a2 + 594))
    {
      return 0;
    }
  }

  else if (v6 == 3)
  {
    if (!*(a2 + 593))
    {
      return 0;
    }
  }

  else if (v6 == 5)
  {
    if (!*(a2 + 596))
    {
      return 0;
    }
  }

  else if (v6 == 4 && !*(a2 + 592))
  {
    return 0;
  }

  v10 = *(a1 + 328);
  if (*(a1 + 336) == v10)
  {
    return 0;
  }

  v11 = *(a1 + 264);
  result = 1;
  if (fabs(v11) <= 1.57079633 && v11 < *(a2 + 616) * 0.0174532925)
  {
    v12 = *v10;
    v13 = *(v10 + 8);
    if (cnprint::CNPrinter::GetLogLevel(1) <= 1)
    {
      v22 = 12;
      v21 = 1;
      sub_1D0BCFAB8(a1);
      v20 = *(a1 + 264);
      v19 = v13 + v12;
      cnprint::CNPrinter::Print(&v22, &v21, "t,%.3lf,%s,GnssPreprocessedMeasurementChecker: Sat excluded,low elevation,%.2f rad, mask,%.2f rad", v14, v15, v16, v17, v18, SLOBYTE(v19));
    }

    return 0;
  }

  return result;
}

void sub_1D0C448F0(uint64_t *a1)
{
  if (*a1)
  {
    sub_1D0BCA40C(a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_1D0C44A30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a11)
  {
    sub_1D0B7CAB8(a11);
  }

  if (a13)
  {
    sub_1D0B7CAB8(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D0C44A54(uint64_t a1)
{
  *a1 = &unk_1F4CD55D8;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  v2 = MEMORY[0x1E69E54A8];
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = v2;
  sub_1D0B751F4((a1 + 48), &unk_1D0ED80C5);
  *(a1 + 8) = 1;
  sub_1D0C44D2C();
}

void sub_1D0C44B90(_Unwind_Exception *exception_object)
{
  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  if (*v2)
  {
    (*(**v2 + 8))(*v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D0C44BE8(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F4CDF5E0;
  sub_1D0C44A54((a1 + 3));
}

void sub_1D0C44DB8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0BCA910(v9, a3, a3, a4, a5, a6, a7, a8);
  *(v8 + 256) = *(v8 + 112);
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  memset(v20, 0, sizeof(v20));
  v21 = 0;
  v11[1] = 0;
  v11[2] = 0;
  v11[0] = &unk_1F4CEF598;
  v12 = 0;
  if (!raven::RavenIntegrityEstimator::HandleEvent((v8 + 240), v9, v11))
  {
    sub_1D0C4499C();
  }

  v11[0] = &unk_1F4CEF598;
  v22 = &v20[4];
  sub_1D0BBBD80(&v22);
  v9[0] = &unk_1F4CEF598;
  v11[0] = &v10;
  sub_1D0BBBD80(v11);
}

void sub_1D0C44EC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void **a25)
{
  *(v27 - 56) = v26 + 96;
  sub_1D0BBBD80((v27 - 56));
  a25 = (v25 + 96);
  sub_1D0BBBD80(&a25);
  _Unwind_Resume(a1);
}

uint64_t raven::GNSSPreprocessedMeasurementsChecker::HandleEvent(raven::GNSSPreprocessedMeasurementsChecker *this, const raven::GnssPreprocessedMeasurementsEvent *a2, raven::GnssPreprocessedMeasurementsEvent *a3)
{
  if ((*(this + 8) & 1) == 0)
  {
    LOWORD(v28[0]) = 12;
    v29 = 4;
    v20 = (*(*a2 + 16))(a2, a2, a3);
    v27 = v21 + v20;
    cnprint::CNPrinter::Print(v28, &v29, "t,%.3lf,GNSSPreprocessedMeasurementsChecker, not configured", v22, v23, v24, v25, v26, SLOBYTE(v27));
    return 0xFFFFFFFFLL;
  }

  if (raven::GNSSMeasurementSelectionParameters::AllMeasurementsExcluded((*(this + 21) + 592)))
  {
    return 0xFFFFFFFFLL;
  }

  v6 = *(this + 9);
  v7 = *(a2 + 8);
  *(a3 + 24) = *(a2 + 24);
  *(a3 + 8) = v7;
  v8 = *(a2 + 40);
  v9 = *(a2 + 56);
  v10 = *(a2 + 72);
  *(a3 + 11) = *(a2 + 11);
  *(a3 + 72) = v10;
  *(a3 + 56) = v9;
  *(a3 + 40) = v8;
  if (v6)
  {
    if (a3 != a2)
    {
      sub_1D0BBD668(a3 + 12, *(a2 + 12), *(a2 + 13), (*(a2 + 13) - *(a2 + 12)) >> 4);
    }

    raven::GNSSPreprocessedMeasurementsChecker::UpdateAndPopulateProbabilityLOS(this, a3);
    v28[0] = (*(*a2 + 16))(a2);
    v28[1] = v11;
    raven::GNSSPreprocessedMeasurementsChecker::RemoveOldLOSEstimators(this, v28, v12, v13);
    v15 = *(a3 + 12);
    v14 = *(a3 + 13);
    if (v15 != v14)
    {
      v16 = v15 + 16;
      do
      {
        v17 = *(v16 - 16);
        if (v17)
        {
          v18 = 1;
        }

        else
        {
          v18 = v16 == v14;
        }

        v16 += 16;
      }

      while (!v18);
      if (v17)
      {
        return 0;
      }

      else
      {
        return 0xFFFFFFFFLL;
      }
    }

    return 0xFFFFFFFFLL;
  }

  if (a3 != a2)
  {
    sub_1D0BBD668(a3 + 12, *(a2 + 12), *(a2 + 13), (*(a2 + 13) - *(a2 + 12)) >> 4);
  }

  return 0;
}

uint64_t raven::GNSSMeasurementSelectionParameters::AllMeasurementsExcluded(raven::GNSSMeasurementSelectionParameters *this)
{
  if (*this & 1) != 0 || (*(this + 1) & 1) != 0 || (*(this + 2) & 1) != 0 || (*(this + 3) & 1) != 0 || (*(this + 4))
  {
    v1 = 0;
  }

  else
  {
    v1 = *(this + 5) ^ 1;
  }

  if (*(this + 14) == 1 && ((*(this + 16) & 1) != 0 || (*(this + 17) & 1) != 0 || (*(this + 18) & 1) != 0))
  {
    v2 = 0;
  }

  else
  {
    v2 = *(this + 15) ^ 1;
  }

  return (v1 | v2) & 1;
}

void raven::GNSSPreprocessedMeasurementsChecker::UpdateAndPopulateProbabilityLOS(raven::GNSSPreprocessedMeasurementsChecker *this, uint64_t **a2)
{
  if (!*(*(this + 21) + 3833))
  {
    return;
  }

  v3 = *(this + 2);
  v4 = v3[664] == 1 && v3[776] - 3 < 2;
  v6 = v3[56];
  v5 = v3 + 56;
  if (v6 >= 2)
  {
    v7 = *(v5 + 1);
    *(this + 5) = *v5;
    *(this + 6) = v7;
    v8 = *(v5 + 2);
    v9 = *(v5 + 3);
    v10 = *(v5 + 4);
    *(this + 20) = *(v5 + 10);
    *(this + 8) = v9;
    *(this + 9) = v10;
    *(this + 7) = v8;
  }

  v13 = this + 80;
  v12 = *(this + 80);
  v193 = ((*a2)[2])(a2);
  v194 = v14;
  v191 = &unk_1F4CEF748;
  memset(v192, 0, 17);
  memset(&v192[3], 0, 17);
  memset(&v192[6], 0, 17);
  v192[10] = 0;
  v192[9] = 0;
  v192[11] = 0x7FF8000000000000;
  memset(&v192[12], 0, 17);
  memset(&v192[15], 0, 17);
  memset(&v192[18], 0, 17);
  v192[21] = 0;
  v192[22] = 0;
  v192[23] = 0x7FF8000000000000;
  LOWORD(v192[24]) = 0;
  BYTE2(v192[24]) = 0;
  v21 = vdupq_n_s64(0x7FF8000000000000uLL);
  *&v192[25] = v21;
  *&v192[27] = v21;
  *&v192[29] = v21;
  *&v192[31] = v21;
  v192[33] = 0x7FF8000000000000;
  LOBYTE(v192[34]) = 0;
  *&v192[35] = v21;
  *&v192[37] = v21;
  *&v192[39] = v21;
  *&v192[41] = v21;
  v192[43] = 0x7FF8000000000000;
  v190 = NAN;
  v22 = *(*(v13 + 11) + 3834) & v4;
  v189 = NAN;
  v153 = this;
  v156 = (v22 & 1) != 0 && raven::GNSSPreprocessedMeasurementsChecker::GetWiFiPositionForCrossCheck(this, &v193, &v191, v15, v16, v17, v18, v19, *v21.i64, v20) && raven::GNSSPreprocessedMeasurementsChecker::GetClockOffsetForCrossCheck(this, a2, &v190, &v189);
  if (*(this + 192) != 1)
  {
    goto LABEL_25;
  }

  v23 = CNTimeSpan::operator-(&v193, this + 22, v21, v20);
  *&v158.f64[0] = v23;
  v158.f64[1] = v24;
  if (v23 < 0 || v24 < 0.0)
  {
    v27 = CNTimeSpan::operator-(&v158, v25, v26);
    v28 = v29;
  }

  else
  {
    v27 = v23;
    v28 = v24;
  }

  v25.i64[0] = *(*(v153 + 21) + 2216);
  v188 = 0.0;
  v187 = 0;
  CNTimeSpan::SetTimeSpan(&v187, 0, v25, v26);
  if (!v27 && (*&v28 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_21;
  }

  if (!v187)
  {
    v31 = v188;
    if ((*&v188 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
LABEL_22:
      if (v28 > v31)
      {
        goto LABEL_23;
      }

      goto LABEL_27;
    }
  }

  if (v27 == v187)
  {
LABEL_21:
    v31 = v188;
    goto LABEL_22;
  }

  if (v27 >= v187)
  {
LABEL_23:
    if (!cnprint::CNPrinter::GetLogLevel(v30))
    {
      LOWORD(v187) = 12;
      v186 = 0;
      v141 = v194 + v193;
      cnprint::CNPrinter::Print(&v187, &v186, "GNSSPreprocessedMeasurementsChecker, gating the usage of LOS Estimator other evidence as no wifi cross-check seen recently,t,%.3lf, time_since,%.3lf", v32, v33, v34, v35, v36, SLOBYTE(v141));
    }

LABEL_25:
    v37 = 0;
    goto LABEL_28;
  }

LABEL_27:
  v37 = 1;
LABEL_28:
  v38 = (v12 < 0xA) & (0xCu >> v12);
  v39 = v153;
  v40 = *(v153 + 21);
  if (*(v40 + 2192) == 1)
  {
    v152 = v38 & (v37 & *(v153 + 72)) & v4;
  }

  else
  {
    v152 = 0;
  }

  if (*(v40 + 2193) == 1)
  {
    v151 = v38 & (v37 & *(v153 + 72)) & v4;
  }

  else
  {
    v151 = 0;
  }

  v41 = a2[12];
  v154 = a2[13];
  if (v41 != v154)
  {
    v150 = vdupq_n_s64(0x7FF8000000000000uLL);
    __asm { FMOV            V0.2D, #1.0 }

    v148 = _Q0;
    do
    {
      v46 = *v41;
      if (!*v41)
      {
        goto LABEL_102;
      }

      v157 = v41;
      v47 = *(v46 + 28);
      v48 = v47 + 1000 * *(v46 + 24);
      v49 = *(v39 + 40);
      if (!*&v49)
      {
        goto LABEL_53;
      }

      v50 = vcnt_s8(v49);
      v50.i16[0] = vaddlv_u8(v50);
      if (v50.u32[0] > 1uLL)
      {
        v51 = v47 + 1000 * *(v46 + 24);
        if (*&v49 <= v48)
        {
          v51 = v48 % *&v49;
        }
      }

      else
      {
        v51 = (*&v49 - 1) & v48;
      }

      v52 = *(*(v153 + 4) + 8 * v51);
      if (!v52 || (v53 = *v52) == 0)
      {
LABEL_53:
        operator new();
      }

      while (1)
      {
        v54 = v53[1];
        if (v54 == v48)
        {
          break;
        }

        if (v50.u32[0] > 1uLL)
        {
          if (v54 >= *&v49)
          {
            v54 %= *&v49;
          }
        }

        else
        {
          v54 &= *&v49 - 1;
        }

        if (v54 != v51)
        {
          goto LABEL_53;
        }

LABEL_52:
        v53 = *v53;
        if (!v53)
        {
          goto LABEL_53;
        }
      }

      if (*(v53 + 4) != v48)
      {
        goto LABEL_52;
      }

      v41 = v157;
      if (v53[3])
      {
        v158.f64[0] = 0.0;
        v158.f64[1] = NAN;
        *&v158.f64[0] = sub_1D0C460E0(v46);
        v158.f64[1] = v55;
        if (raven::RavenLineOfSightEstimator::Predict((v53 + 3), &v158, v62, v63, v56, v57, v58, v59, v60, v61))
        {
          LOWORD(v187) = 12;
          v186 = 4;
          v66 = sub_1D0BCFAB8(v46);
          cnprint::CNPrinter::Print(&v187, &v186, "GNSSPreprocessedMeasurementsChecker could not predict LOS estimator,svid,%s", v67, v68, v69, v70, v71, v66);
          *(v53 + 24) = 0;
          v53[26] = 0;
          v53[27] = 0x7FF8000000000000;
          goto LABEL_102;
        }

LABEL_62:
        v155 = (v53 + 3);
        v79 = *(v46 + 328);
        v80 = *(v46 + 336);
        if (v79 != v80)
        {
          v149 = (*(v46 + 264) * 57.2957795 + 0.5);
          do
          {
            v81 = *(v79 + 96);
            if (v81)
            {
              _ZF = v81 == 5;
            }

            else
            {
              _ZF = 1;
            }

            if (_ZF)
            {
              LOWORD(v158.f64[0]) = 12;
              LOBYTE(v187) = 4;
              v84 = *v79;
              v83 = *(v79 + 8);
              sub_1D0BCFAB8(v46);
              v147 = *(v79 + 96);
              v142 = v83 + v84;
              cnprint::CNPrinter::Print(&v158, &v187, "GNSSPreprocessedMeasurementsChecker,t,%.3lf,invalid measurement type,svid,%s,type,%d", v85, v86, v87, v88, v89, SLOBYTE(v142));
            }

            else if (v81 == 1)
            {
              if (v156)
              {
                *&v163 = 0;
                v161 = 0u;
                v162 = 0u;
                memset(v160, 0, sizeof(v160));
                *__p = 0u;
                *(&v163 + 1) = 0x7FF8000000000000;
                LODWORD(v164) = 0;
                BYTE4(v164) = 0;
                *(&v164 + 1) = 0x7FF8000000000000;
                *&v165[8] = v150;
                *&v165[24] = v150;
                *&v165[40] = v150;
                *v165 = 2143289344;
                *&v165[56] = 2143289344;
                v165[60] = 0;
                LOBYTE(v166) = 0;
                BYTE4(v166) = 0;
                BYTE8(v166) = 0;
                WORD6(v166) = 0;
                BYTE14(v166) = 1;
                v167 = v150;
                v168 = &unk_1F4CDFE98;
                *(&v169.__r_.__value_.__s + 23) = 0;
                v169.__r_.__value_.__s.__data_[0] = 0;
                LOBYTE(v170) = 0;
                HIDWORD(v170) = -1;
                v171 = 0u;
                v172 = 0u;
                v173 = 0u;
                v174 = 0u;
                v175 = 0u;
                v176 = 0u;
                v177 = 0u;
                v178 = 0u;
                v179 = 0u;
                v180 = 0u;
                v181 = 0u;
                memset(v183, 0, 17);
                *(&v183[1] + 1) = 0;
                *&v183[2] = 0;
                BYTE8(v183[2]) = 0;
                memset(&v183[3], 0, 17);
                *(&v183[4] + 1) = 0;
                *&v183[5] = 0;
                v182 = &unk_1F4CEF748;
                *(&v183[5] + 1) = 0x7FF8000000000000;
                memset(&v183[6], 0, 17);
                BYTE8(v183[8]) = 0;
                *(&v183[7] + 1) = 0;
                *&v183[8] = 0;
                memset(&v183[9], 0, 17);
                *(&v183[10] + 1) = 0;
                *&v183[11] = 0;
                *(&v183[11] + 1) = 0x7FF8000000000000;
                LOWORD(v183[12]) = 0;
                BYTE2(v183[12]) = 0;
                *(&v183[12] + 1) = 0x7FF8000000000000;
                v183[13] = v150;
                v183[14] = v150;
                v183[15] = v150;
                v183[16] = v150;
                LOBYTE(v183[17]) = 0;
                *(&v183[17] + 1) = 0x7FF8000000000000;
                v183[18] = v150;
                v183[19] = v150;
                v183[20] = v150;
                v183[21] = v150;
                v184 = 0u;
                v185 = 0u;
                v158 = *(v53 + 13);
                *__p = *v79;
                v90 = *(v79 + 16);
                v91 = *(v79 + 32);
                v92 = *(v79 + 64);
                v161 = *(v79 + 48);
                v162 = v92;
                v160[0] = v90;
                v160[1] = v91;
                v93 = *(v79 + 80);
                v94 = *(v79 + 96);
                v95 = *(v79 + 128);
                *v165 = *(v79 + 112);
                *&v165[16] = v95;
                v163 = v93;
                v164 = v94;
                v96 = *(v79 + 144);
                v97 = *(v79 + 160);
                v98 = *(v79 + 192);
                v166 = *(v79 + 176);
                v167 = v98;
                *&v165[32] = v96;
                *&v165[48] = v97;
                std::string::operator=(&v169, (v46 + 40));
                v170 = *(v46 + 64);
                v99 = *(v46 + 72);
                v100 = *(v46 + 104);
                v172 = *(v46 + 88);
                v173 = v100;
                v171 = v99;
                v101 = *(v46 + 120);
                v102 = *(v46 + 136);
                v103 = *(v46 + 168);
                v176 = *(v46 + 152);
                v177 = v103;
                v174 = v101;
                v175 = v102;
                v104 = *(v46 + 184);
                v105 = *(v46 + 200);
                v106 = *(v46 + 232);
                v180 = *(v46 + 216);
                v181 = v106;
                v178 = v104;
                v179 = v105;
                memcpy(v183, v192, sizeof(v183));
                *&v184 = v190;
                *(&v184 + 1) = v189;
                *&v185 = *(*(v39 + 21) + 2232);
                *(&v185 + 1) = v53[21];
                v107 = raven::RavenLineOfSightEstimator::Update(v155, &v158);
                if (v107)
                {
                  LOWORD(v187) = 12;
                  v186 = 4;
                  v108 = *v79;
                  v109 = *(v79 + 8);
                  sub_1D0BCFAB8(v46);
                  v143 = v109 + v108;
                  cnprint::CNPrinter::Print(&v187, &v186, "GNSSPreprocessedMeasurementsChecker,t,%.3lf,could not update LOS estimator using WiFi cross-check,svid,%s", v110, v111, v112, v113, v114, SLOBYTE(v143));
                  v39 = v153;
                }

                else
                {
                  v115 = *(v39 + 192);
                  *(v39 + 11) = *(v53 + 13);
                  if ((v115 & 1) == 0)
                  {
                    *(v39 + 192) = 1;
                  }
                }

                v168 = &unk_1F4CDFE98;
                if (SHIBYTE(v169.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v169.__r_.__value_.__l.__data_);
                }

                if (((v107 == 0) & (v152 | v151)) == 0)
                {
                  goto LABEL_100;
                }
              }

              else if (((v152 | v151) & 1) == 0)
              {
                goto LABEL_100;
              }

              v158 = 0uLL;
              *__p = *(v53 + 13);
              v116 = *(v39 + 21);
              if (v152)
              {
                CN0Likelihoods = raven::RavenLosEstimatorLookupTables::LosEstimatorLookupTablesAccessor::GetCN0Likelihoods(v116 + 2304, (v79 + 100), v149, *(v79 + 112), v13, v158.f64, &v158.f64[1], v64, v65);
                if (CN0Likelihoods || (CN0Likelihoods = raven::RavenLineOfSightEstimator::Update(v155, v158.f64), CN0Likelihoods))
                {
                  if (cnprint::CNPrinter::GetLogLevel(CN0Likelihoods) <= 1)
                  {
                    LOWORD(v187) = 12;
                    v186 = 1;
                    v118 = *v79;
                    v119 = *(v79 + 8);
                    sub_1D0BCFAB8(v46);
                    v144 = v119 + v118;
                    cnprint::CNPrinter::Print(&v187, &v186, "GNSSPreprocessedMeasurementsChecker,t,%.3lf,could not update LOS estimator using C/N0 likelihoods,svid,%s,lookuptableReturnCode,%d", v120, v121, v122, v123, v124, SLOBYTE(v144));
                    v39 = v153;
                  }
                }
              }

              if (!v151)
              {
                goto LABEL_100;
              }

              v125 = *(v79 + 100);
              if (v125 <= 0xA)
              {
                if (((1 << v125) & 0x544) != 0)
                {
                  if (*(v79 + 112) <= *(*(v39 + 21) + 2208))
                  {
                    goto LABEL_100;
                  }
                }

                else if (!*(v79 + 100))
                {
                  goto LABEL_100;
                }
              }

              MPFSetLikelihoods = raven::RavenLosEstimatorLookupTables::LosEstimatorLookupTablesAccessor::GetMPFSetLikelihoods(v116 + 2304, (v79 + 100), v149, v13, v158.f64, &v158.f64[1], v64, v65);
              if (!MPFSetLikelihoods)
              {
                if (*(v79 + 189) != 1)
                {
                  v158 = vsubq_f64(v148, v158);
                }

                if (!raven::RavenLineOfSightEstimator::Update(v155, v158.f64))
                {
                  goto LABEL_100;
                }

                LOWORD(v187) = 12;
                v186 = 4;
                v134 = *v79;
                v135 = *(v79 + 8);
                sub_1D0BCFAB8(v46);
                v146 = v135 + v134;
                cnprint::CNPrinter::Print(&v187, &v186, "GNSSPreprocessedMeasurementsChecker,t,%.3lf,could not update LOS estimator using MPF Set likelihoods,svid,%s", v136, v137, v138, v139, v140, SLOBYTE(v146));
                goto LABEL_99;
              }

              if (cnprint::CNPrinter::GetLogLevel(MPFSetLikelihoods) <= 1)
              {
                LOWORD(v187) = 12;
                v186 = 1;
                v127 = *v79;
                v128 = *(v79 + 8);
                sub_1D0BCFAB8(v46);
                v145 = v128 + v127;
                cnprint::CNPrinter::Print(&v187, &v186, "GNSSPreprocessedMeasurementsChecker,t,%.3lf,LOS estimator could not get MPF Set likelihoods from lookup tables,svid,%s,lookuptableReturnCode,%d", v129, v130, v131, v132, v133, SLOBYTE(v145));
LABEL_99:
                v39 = v153;
              }
            }

LABEL_100:
            v79 += 208;
          }

          while (v79 != v80);
        }

        *(v46 + 296) = raven::RavenLineOfSightEstimator::GetProbabilityLOS(v155);
        *(v46 + 304) = 1;
        v41 = v157;
      }

      else
      {
        v158.f64[1] = 0.0;
        __p[0] = 0x7FF8000000000000;
        *(v160 + 15) = 0;
        LOBYTE(__p[1]) = 0;
        DWORD1(v160[1]) = -1;
        v158.f64[0] = *(v39 + 21);
        *&v158.f64[1] = sub_1D0C460E0(v46);
        __p[0] = v72;
        std::string::operator=(&__p[1], v46);
        *&v160[1] = *(v46 + 24);
        if (!raven::RavenLineOfSightEstimator::Initialize((v53 + 3), &v158))
        {
          if (SHIBYTE(v160[0]) < 0)
          {
            operator delete(__p[1]);
          }

          goto LABEL_62;
        }

        LOWORD(v187) = 12;
        v186 = 4;
        v73 = sub_1D0BCFAB8(v46);
        cnprint::CNPrinter::Print(&v187, &v186, "GNSSPreprocessedMeasurementsChecker could not initialize LOS estimator,svid,%s", v74, v75, v76, v77, v78, v73);
        if (SHIBYTE(v160[0]) < 0)
        {
          operator delete(__p[1]);
        }
      }

LABEL_102:
      v41 += 2;
    }

    while (v41 != v154);
  }
}

uint64_t sub_1D0C460E0(uint64_t a1)
{
  v1 = *(a1 + 328);
  v2 = *(a1 + 336);
  if (v1 != v2)
  {
    v7[0] = 0;
    v8 = 0u;
    memset(v9, 0, sizeof(v9));
    while (1)
    {
      v6[0] = *(v1 + 8) + *v1;
      if (sub_1D0B8954C(v7, v6, 1.0))
      {
        break;
      }

      v1 += 208;
      if (v1 == v2)
      {
        v3.i64[0] = *&v9[1];
        v6[0] = 0.0;
        v6[1] = 0.0;
        CNTimeSpan::SetTimeSpan(v6, 0, v3, v4);
        return *&v6[0];
      }
    }
  }

  return 0;
}

uint64_t raven::RavenLineOfSightEstimator::Predict(uint64_t a1, uint64_t a2, double a3, int8x16_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if ((*a1 & 1) == 0)
  {
    if (cnprint::CNPrinter::GetLogLevel(a1) <= 1)
    {
      *v88 = 12;
      LOBYTE(v92) = 1;
      v78 = *(a2 + 8) + *a2;
      cnprint::CNPrinter::Print(v88, &v92, "WARNING:LOSEstimator,time,%.3lf,predicting uninitialized", v19, v20, v21, v22, v23, SLOBYTE(v78));
    }

    return 0xFFFFFFFFLL;
  }

  a4.i64[0] = *(a2 + 8);
  v12 = *a4.i64 + *a2;
  v13 = fabs(v12);
  v14 = (*&v13 - 1) < 0xFFFFFFFFFFFFFLL;
  v15 = v12 < 0.0;
  v16 = v12 < 0.0 && (*&v13 - 0x10000000000000) >> 53 < 0x3FF;
  if (!v15)
  {
    v14 = 0;
  }

  v17 = *&v13 <= 0x7FF0000000000000;
  v18 = v13 == INFINITY || v14;
  if (!v17)
  {
    v18 = 1;
  }

  if ((v18 | v16) == 1)
  {
    *v88 = 12;
    LOBYTE(v92) = 4;
    v77 = *(a1 + 192) + *(a1 + 184);
    cnprint::CNPrinter::Print(v88, &v92, "LOSEstimator,time,%.3lf,invalid prediction time,%.3lf", a6, a7, a8, a9, a10, SLOBYTE(v77));
    return 0xFFFFFFFFLL;
  }

  v79 = *(a1 + 184);
  *v88 = *(a1 + 184);
  v24 = CNTimeSpan::operator-(a2, v88, *v88, a4);
  v80 = v25 + v24;
  v26 = *(a1 + 8);
  v81 = *(v26 + 2256);
  v82 = *(v26 + 2248);
  if (!*(a1 + 136))
  {
    sub_1D0B894B0(a1 + 80, a1 + 24);
  }

  v27 = *(a1 + 88);
  v28 = *(a1 + 92);
  if (v27)
  {
    v29 = v28 == 0;
  }

  else
  {
    v29 = 1;
  }

  v30 = v29;
  if (v27 <= v28)
  {
    v31 = *(a1 + 92);
  }

  else
  {
    v31 = *(a1 + 88);
  }

  if (v30)
  {
    v32 = 0;
  }

  else
  {
    v32 = v31;
  }

  if (v30 == 1)
  {
    v94 = 0x100000002;
    v92 = &unk_1F4CE0220;
    v95 = v96;
    v93 = xmmword_1D0E7F490;
    v89 = 0x100000002;
    *v88 = &unk_1F4CE0220;
    *&v33.f64[1] = 0x200000002;
    *&v88[8] = xmmword_1D0E83F60;
    v90 = v91;
    v33.f64[0] = INFINITY;
    v34 = &v92;
LABEL_37:
    sub_1D0B8930C(v34, v88, v33);
    goto LABEL_40;
  }

  v35 = *(a1 + 144);
  v89 = 0x100000002;
  *v88 = &unk_1F4CE0220;
  *&v88[8] = xmmword_1D0E83F60;
  v90 = v91;
  v36 = sub_1D0B94BA0(a1 + 80, 1, v88);
  v37 = *v90;
  if (fabs(*v90 + -1.0) > v35)
  {
    if (cnprint::CNPrinter::GetLogLevel(v36) <= 1)
    {
      *v88 = 2;
      LOBYTE(v92) = 1;
      cnprint::CNPrinter::Print(v88, &v92, "WARNING: HMM prediction passed a non-normalized probability vector.", v38, v39, v40, v41, v42, v76);
    }

    if ((v31 & 0x80000000) == 0)
    {
      sub_1D0BBEF48(&v92, a1 + 80);
      *&v93 = v31 | 0x100000000;
      DWORD2(v93) = v31;
      HIDWORD(v93) = v31;
      v89 = 0x100000002;
      *v88 = &unk_1F4CE0220;
      *&v33.f64[1] = 0x200000002;
      *&v88[8] = xmmword_1D0E83F60;
      v90 = v91;
      v33.f64[0] = 1.0 / v37;
      goto LABEL_37;
    }

LABEL_60:
    __assert_rtn("Reshape", "cnmatrix.h", 2936, "nr >= 0");
  }

  if ((v31 & 0x80000000) != 0)
  {
    goto LABEL_60;
  }

  sub_1D0BBEF48(v88, a1 + 80);
  *&v88[8] = v31;
  *&v88[12] = 1;
  *&v88[16] = v31;
  *&v88[20] = v31;
LABEL_40:
  sub_1D0B894B0(a1 + 80, v88);
  *(a1 + 136) = 1;
  v89 = 0x200000002;
  *v88 = &unk_1F4CE0268;
  *&v88[8] = xmmword_1D0E83F70;
  v90 = v91;
  v49 = sub_1D0C4676C(&v79, v88, v43, v44, v45, v46, v47, v48);
  if (v49)
  {
    LOWORD(v92) = 2;
    LOBYTE(v83) = 4;
    cnprint::CNPrinter::Print(&v92, &v83, "ERROR: HMM transition probability function failed.", v50, v51, v52, v53, v54, v76);
LABEL_42:
    *v88 = 12;
    LOBYTE(v92) = 4;
    v55 = *(a1 + 192) + *(a1 + 184);
    sub_1D0BCFAB8(a1 + 152);
    cnprint::CNPrinter::Print(v88, &v92, "LOSEstimator,time,%.3lf,failed to predict,%s,code,%d", v56, v57, v58, v59, v60, SLOBYTE(v55));
    return 0xFFFFFFFFLL;
  }

  if (v32)
  {
    v62 = 0;
    v63 = 0;
    v64 = v90;
LABEL_46:
    v65 = 0.0;
    v66 = v64;
    v67 = v32;
    while (1)
    {
      v68 = *v66;
      if (*v66 < 0.0 || v68 > 1.0)
      {
        break;
      }

      v65 = v65 + v68;
      ++v66;
      if (!--v67)
      {
        if (fabs(v65 + -1.0) <= *(a1 + 144))
        {
          ++v62;
          v64 += *&v88[20];
          v63 = v62 >= v32;
          if (v62 != v32)
          {
            goto LABEL_46;
          }
        }

        break;
      }
    }

    if (!v63)
    {
      if (cnprint::CNPrinter::GetLogLevel(v49) <= 1)
      {
        LOWORD(v92) = 2;
        LOBYTE(v83) = 1;
        cnprint::CNPrinter::Print(&v92, &v83, "ERROR: HMM transition probability matrix is invalid.", v71, v72, v73, v74, v75, v76);
      }

      goto LABEL_42;
    }
  }

  v94 = 0x100000002;
  v93 = xmmword_1D0E83F60;
  v92 = &unk_1F4CE0220;
  v95 = v96;
  sub_1D0B89390(v88, a1 + 80, &v92);
  sub_1D0B894B0(a1 + 24, &v92);
  v85 = 0x100000002;
  v83 = &unk_1F4CE0220;
  v84 = xmmword_1D0E83F60;
  v86 = &v87;
  sub_1D0B94BA0(a1 + 24, 1, &v83);
  v70.f64[0] = 1.0 / *v86;
  v94 = 0x100000002;
  v93 = xmmword_1D0E83F60;
  v92 = &unk_1F4CE0220;
  v95 = v96;
  sub_1D0B8930C(a1 + 24, &v92, v70);
  sub_1D0B894B0(a1 + 24, &v92);
  result = 0;
  *(a1 + 136) = 0;
  *(a1 + 184) = *a2;
  return result;
}

uint64_t sub_1D0C4676C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 16);
  v9 = (*&v8 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
  v10 = v8 < 0.0 && ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
  if (v8 >= 0.0)
  {
    v9 = 0;
  }

  v11 = (*&v8 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000 || v9;
  if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
  {
    v11 = 1;
  }

  if ((v11 | v10) == 1)
  {
    v63[0] = 12;
    v64 = 4;
    v12 = *(a1 + 8) + *a1;
LABEL_19:
    cnprint::CNPrinter::Print(v63, &v64, "time,%.3lf,t-function failure on line %d: %s() %s", a4, a5, a6, a7, a8, SLOBYTE(v12));
    return 0xFFFFFFFFLL;
  }

  v13 = *(a1 + 24);
  if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (v13 >= 0.0 ? (v14 = v13 <= 1.0) : (v14 = 0), !v14))
  {
    v63[0] = 12;
    v64 = 4;
    v12 = *(a1 + 8) + *a1;
    goto LABEL_19;
  }

  v16 = *(a1 + 32);
  if ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || v16 < 0.0 || v16 > 1.0)
  {
    v63[0] = 12;
    v64 = 4;
    v12 = *(a1 + 8) + *a1;
    goto LABEL_19;
  }

  v17 = *(a1 + 40);
  v18 = (*&v17 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
  v19 = v17 < 0.0 && ((*&v17 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
  if (v17 >= 0.0)
  {
    v18 = 0;
  }

  v20 = (*&v17 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000 || v18;
  if ((*&v17 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
  {
    v20 = 1;
  }

  if ((v20 | v19) == 1)
  {
    v63[0] = 12;
    v64 = 4;
    v12 = *(a1 + 8) + *a1;
    goto LABEL_19;
  }

  if (fabs(v8) < 2.22044605e-16)
  {
    sub_1D0E32FE4(v63);
    sub_1D0B894B0(a2, v63);
    return 0;
  }

  v22 = 1.0;
  v23 = 1.0 - v16;
  v24 = 1.0 - v13;
  v25 = sqrt((v13 * v16 - (1.0 - v16) * (1.0 - v13)) * -4.0 + (v13 + v16) * (v13 + v16));
  v26 = (v13 + v16 + v25) * 0.5;
  v27 = (v13 + v16 - v25) * 0.5;
  v28 = v13 + 1.0 - v16;
  v29 = 1.0 - v13 + v16;
  v30 = (1.0 - v13) / (v26 - v16);
  v31 = (v26 - v16) / (1.0 - v13);
  if (1.0 - v13 > vabdd_f64(v26, v16))
  {
    v30 = 1.0;
  }

  else
  {
    v31 = 1.0;
  }

  v32 = v27 - v16;
  v33 = v24 <= vabdd_f64(v27, v16);
  v34 = v24 / (v27 - v16);
  v35 = v32 / v24;
  if (v33)
  {
    v36 = v34;
  }

  else
  {
    v36 = 1.0;
  }

  if (v33)
  {
    v35 = 1.0;
  }

  v37 = v23 / (v26 - v13);
  if (v23 <= vabdd_f64(v26, v13))
  {
    v38 = 1.0;
  }

  else
  {
    v37 = 1.0;
    v38 = (v26 - v13) / v23;
  }

  v39 = v27 - v13;
  v40 = v23 <= vabdd_f64(v27, v13);
  v41 = v23 / (v27 - v13);
  v42 = v39 / v23;
  if (v40)
  {
    v43 = 1.0;
  }

  else
  {
    v43 = v42;
  }

  if (v40)
  {
    v22 = v41;
  }

  if (v28 > v29)
  {
    v44 = v37;
  }

  else
  {
    v44 = v31;
  }

  if (v28 > v29)
  {
    v45 = v43;
  }

  else
  {
    v45 = v36;
  }

  if (v28 > v29)
  {
    v46 = v38;
  }

  else
  {
    v22 = v35;
    v46 = v30;
  }

  v47 = sqrt(v46 * v46 + v44 * v44);
  if (fabs(v47) < 2.22044605e-16)
  {
    v48 = "eigenvector 1 has zero norm";
    v49 = 332;
LABEL_70:
    sub_1D0E32F8C(a1, v48, "t_LineOfSight", v49, a5, a6, a7, a8);
    return 0xFFFFFFFFLL;
  }

  v50 = sqrt(v45 * v45 + v22 * v22);
  if (fabs(v50) < 2.22044605e-16)
  {
    v48 = "eigenvector 2 has zero norm";
    v49 = 341;
    goto LABEL_70;
  }

  v51 = v44 / v47;
  v52 = v46 / v47;
  v53 = v22 / v50;
  v54 = v45 / v50;
  v55 = v44 / v47 * (v45 / v50) - v46 / v47 * (v22 / v50);
  if (fabs(v55) < 2.22044605e-16)
  {
    v48 = "singular matrix";
    v49 = 351;
    goto LABEL_70;
  }

  v56 = v8 / v17;
  v57 = pow(v26, v8 / v17);
  v58 = pow(v27, v56);
  result = 0;
  *(a2 + 8) = xmmword_1D0E83F70;
  v59 = v58 * v53;
  v60 = (v57 * v51 * v54 - v59 * v52) / v55;
  v61 = *(a2 + 32);
  v62 = (v59 * v51 + -(v57 * v51) * v53) / v55;
  *v61 = v60;
  v61[1] = 1.0 - v60;
  v61[2] = v62;
  v61[3] = 1.0 - v62;
  return result;
}