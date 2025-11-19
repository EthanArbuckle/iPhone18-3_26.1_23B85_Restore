void sub_1D0BDFA54(_Unwind_Exception *a1)
{
  sub_1D0DA2BF0(&STACK[0x1438]);
  sub_1D0DFC5BC(&STACK[0x1CC8]);
  sub_1D0DFC5BC(&STACK[0x32C8]);
  sub_1D0C00CB0(&STACK[0x2E90]);
  sub_1D0C00CB0(&STACK[0x3290]);
  sub_1D0BFF570(&STACK[0x3330]);
  sub_1D0BFF570(&STACK[0x3360]);
  _Unwind_Resume(a1);
}

uint64_t sub_1D0BDFDC8(uint64_t a1)
{
  sub_1D0BCB5E0(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_1D0BDFE04(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 24) = 0x800000008;
  *a3 = &unk_1F4CE43B0;
  *(a3 + 8) = xmmword_1D0E84510;
  *(a3 + 32) = a3 + 40;
  sub_1D0B9F748(a1, a3, a2);
}

uint64_t raven::MountStateChecker::HandleEvent(raven::MountStateChecker *this, const raven::MountStateEvent *a2, raven::MountStateEvent *a3)
{
  if ((*(this + 8) & 1) == 0)
  {
    v39 = 12;
    v38 = 4;
    v20 = (*(*a2 + 16))(a2);
    v34 = v21 + v20;
    cnprint::CNPrinter::Print(&v39, &v38, "t,%.3lf,MountStateChecker, not configured", v22, v23, v24, v25, v26, SLOBYTE(v34));
    return 0xFFFFFFFFLL;
  }

  if (*(a2 + 104) >= 4u)
  {
    v37 = 12;
    v36 = 4;
    v27 = (*(*a2 + 16))(a2);
    v35 = v28 + v27;
    cnprint::CNPrinter::Print(&v37, &v36, "t,%.3lf, Warning: Invalid type detected in mount state integrity check.", v29, v30, v31, v32, v33, SLOBYTE(v35));
    return 0xFFFFFFFFLL;
  }

  v3 = *(a2 + 14);
  if (v3 < 0.0 || v3 > 1.0 || (*(a2 + 14) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = *(a2 + 15);
  v7 = v6 < 0.0 || v6 > 1.0;
  if (v7 || (*(a2 + 15) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = *(a2 + 16);
  v10 = v9 < 0.0 || v9 > 1.0;
  if (v10 || (*(a2 + 16) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    return 0xFFFFFFFFLL;
  }

  v12 = *(a2 + 17);
  result = 0xFFFFFFFFLL;
  if (v12 >= 0.0 && v12 <= 1.0 && (*(a2 + 17) & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && fabs(v3 + v6 + v9 + v12 + -1.0) < 2.22044605e-16)
  {
    result = 0;
    *(a3 + 8) = *(a2 + 8);
    v14 = *(a2 + 24);
    v15 = *(a2 + 40);
    v16 = *(a2 + 56);
    *(a3 + 72) = *(a2 + 72);
    *(a3 + 56) = v16;
    *(a3 + 40) = v15;
    *(a3 + 24) = v14;
    v17 = *(a2 + 88);
    v18 = *(a2 + 104);
    v19 = *(a2 + 120);
    *(a3 + 17) = *(a2 + 17);
    *(a3 + 120) = v19;
    *(a3 + 104) = v18;
    *(a3 + 88) = v17;
  }

  return result;
}

double sub_1D0BE00C8(uint64_t a1, raven::RavenDeviceAttitudeActiveObject **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0B9356C(v10, a3, a3, a4, a5, a6, a7, a8);
  return raven::RavenDeviceAttitudeActiveObject::HandleEvent(v8, v10);
}

double sub_1D0BE012C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  v9 = sub_1D0B9356C(&v24, a3, a3, a4, a5, a6, a7, a8);
  if (*(v8 + 224))
  {
    if (*(v8 + 497) == 1 && *(v8 + 496) == 1)
    {
      if (*(v8 + 1672) == 1)
      {
        *(v8 + 1616) = v30;
        *(v8 + 1632) = v31;
        *(v8 + 1648) = v32;
        *(v8 + 1664) = v33;
        *(v8 + 1552) = v26;
        *(v8 + 1568) = v27;
        *(v8 + 1584) = v28;
        *(v8 + 1600) = v29;
        v9.n128_u64[0] = v25;
        *(v8 + 1536) = v25;
      }

      else
      {
        *(v8 + 1528) = &unk_1F4CEF538;
        *(v8 + 1616) = v30;
        *(v8 + 1632) = v31;
        *(v8 + 1648) = v32;
        *(v8 + 1664) = v33;
        *(v8 + 1552) = v26;
        *(v8 + 1568) = v27;
        *(v8 + 1584) = v28;
        *(v8 + 1600) = v29;
        v9.n128_u64[0] = v25;
        *(v8 + 1536) = v25;
        *(v8 + 1672) = 1;
      }
    }
  }

  else
  {
    v38 = 12;
    v37 = 2;
    v36[0] = (*(v24 + 16))(&v24, v9);
    v36[1] = v10;
    (*(v24 + 24))(v34, &v24);
    if (v35 >= 0)
    {
      v16 = v34;
    }

    else
    {
      v16 = v34[0];
    }

    cnprint::CNLogFormatter::FormatWarning(v8 + 232, v36, "Failed to handle event - %s.", v11, v12, v13, v14, v15, v16);
    if (*(v8 + 255) >= 0)
    {
      LOBYTE(v22) = v8 - 24;
    }

    else
    {
      v22 = *(v8 + 232);
    }

    cnprint::CNPrinter::Print(&v38, &v37, "%s", v17, v18, v19, v20, v21, v22);
    if (v35 < 0)
    {
      operator delete(v34[0]);
    }
  }

  return v9.n128_f64[0];
}

void sub_1D0BE0328(_Unwind_Exception *exception_object)
{
  if (*(v1 - 57) < 0)
  {
    operator delete(*(v1 - 80));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0BE0368(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0B92680(v10, a3, a3, a4, a5, a6, a7, a8);
  *(v8 + 256) = *(v8 + 112);
  v11[1] = 0;
  v11[2] = 0;
  v11[0] = &unk_1F4CEF778;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0x7FF8000000000000;
  v22 = 0;
  v23 = 0x3FF0000000000000;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  result = raven::MovingStateChecker::HandleEvent(*(v8 + 1896), v10, v11);
  if (!result)
  {
    sub_1D0BB7A20();
  }

  return result;
}

double sub_1D0BE0418(uint64_t a1, raven::RavenDeviceAttitudeActiveObject **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0B92680(v10, a3, a3, a4, a5, a6, a7, a8);
  *&result = raven::RavenDeviceAttitudeActiveObject::HandleEvent(v8, v10).n128_u64[0];
  return result;
}

__n128 raven::RavenDeviceAttitudeActiveObject::HandleEvent(raven::RavenDeviceAttitudeActiveObject *this, const raven::MovingStateEvent *a2)
{
  if (*(this + 224))
  {
    if (*(this + 7072) == 1)
    {
      result = *(a2 + 88);
      v3 = *(a2 + 104);
      v4 = *(a2 + 120);
      *(this + 883) = *(a2 + 17);
      *(this + 6936) = *(a2 + 8);
      v5 = *(a2 + 24);
      v6 = *(a2 + 40);
      v7 = *(a2 + 72);
      *(this + 6984) = *(a2 + 56);
      *(this + 7000) = v7;
      *(this + 6952) = v5;
      *(this + 6968) = v6;
      *(this + 7032) = v3;
      *(this + 7048) = v4;
      *(this + 7016) = result;
    }

    else
    {
      *(this + 866) = &unk_1F4CEF778;
      *(this + 6936) = *(a2 + 8);
      v14 = *(a2 + 24);
      v15 = *(a2 + 40);
      v16 = *(a2 + 72);
      *(this + 6984) = *(a2 + 56);
      *(this + 7000) = v16;
      *(this + 6952) = v14;
      *(this + 6968) = v15;
      result = *(a2 + 88);
      v17 = *(a2 + 104);
      v18 = *(a2 + 120);
      *(this + 883) = *(a2 + 17);
      *(this + 7032) = v17;
      *(this + 7048) = v18;
      *(this + 7016) = result;
      *(this + 7072) = 1;
    }
  }

  else
  {
    v22 = 12;
    v21 = 3;
    (*(*this + 16))(__p);
    if (v20 >= 0)
    {
      v13 = __p;
    }

    else
    {
      LOBYTE(v13) = __p[0];
    }

    cnprint::CNPrinter::Print(&v22, &v21, "Warning: %s is not configured yet.", v8, v9, v10, v11, v12, v13);
    if (v20 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return result;
}

void sub_1D0BE05C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D0BE0604(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0B92680(&v17, a3, a3, a4, a5, a6, a7, a8);
  if (*(v8 + 1024) == 1)
  {
    *(v8 + 1016) = v26;
    v9 = v23;
    v10 = v25;
    *(v8 + 984) = v24;
    *(v8 + 1000) = v10;
    v11 = v19;
    v12 = v21;
    *(v8 + 920) = v20;
    *(v8 + 936) = v12;
    *(v8 + 952) = v22;
    *(v8 + 968) = v9;
    *(v8 + 888) = v18;
    *(v8 + 904) = v11;
  }

  else
  {
    *(v8 + 880) = &unk_1F4CEF778;
    *(v8 + 1016) = v26;
    v13 = v23;
    v14 = v25;
    *(v8 + 984) = v24;
    *(v8 + 1000) = v14;
    v15 = v19;
    v16 = v21;
    *(v8 + 920) = v20;
    *(v8 + 936) = v16;
    *(v8 + 952) = v22;
    *(v8 + 968) = v13;
    *(v8 + 888) = v18;
    *(v8 + 904) = v15;
    *(v8 + 1024) = 1;
  }

  if (v24 != 3 && *(v8 + 1320) == 1)
  {
    *(v8 + 1320) = 0;
  }
}

double sub_1D0BE0708(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0B92680(&v14, a3, a3, a4, a5, a6, a7, a8);
  v9 = v20;
  v10 = v22;
  *(v8 + 728) = v21;
  *(v8 + 744) = v10;
  *(v8 + 760) = v23;
  v11 = v16;
  v12 = v18;
  *(v8 + 664) = v17;
  *(v8 + 680) = v12;
  *(v8 + 696) = v19;
  *(v8 + 712) = v9;
  result = *&v15;
  *(v8 + 632) = v15;
  *(v8 + 648) = v11;
  return result;
}

void sub_1D0BE0798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v54 = 0x100000008;
  v52 = &unk_1F4CE4320;
  v53 = xmmword_1D0E84520;
  v55 = &v56;
  v49 = 0x800000008;
  v48 = xmmword_1D0E84510;
  v47 = &unk_1F4CE43B0;
  v50 = &v51;
  v44 = 0x100000008;
  v12 = *(a1 + 1540) == 0;
  v43 = xmmword_1D0E84520;
  v42 = &unk_1F4CE4320;
  v45 = &v46;
  v13 = 8;
  if (v12)
  {
    v14 = 112;
  }

  else
  {
    v13 = 768;
    v14 = 872;
  }

  if (v12)
  {
    v15 = 664;
  }

  else
  {
    v15 = 1424;
  }

  sub_1D0B894B0(&v52, a1 + v13);
  sub_1D0B894B0(&v47, a1 + v14);
  sub_1D0B894B0(&v42, a1 + v15);
  v16 = *(a2 + 8);
  if ((v16 & 0x80000000) == 0)
  {
    v39 = 0x100000008;
    v34 = &unk_1F4CE4320;
    v40 = v41;
    v35 = v16;
    v36 = 1;
    v37 = v16;
    v38 = v16;
    if (v16 > 3)
    {
      v17 = &v41[v16];
      bzero(v41, 16 * ((v16 - 1) >> 1));
      *(v17 - 2) = 0;
      *(v17 - 1) = 0;
    }

    else if (v16)
    {
      bzero(v41, 8 * v16);
    }

    v18 = *(a9 + 8);
    v19 = *(a9 + 12);
    if (v18 <= v19)
    {
      v20 = *(a9 + 12);
    }

    else
    {
      v20 = *(a9 + 8);
    }

    if (v19)
    {
      v21 = v18 == 0;
    }

    else
    {
      v21 = 1;
    }

    if (v21)
    {
      v22 = 0;
    }

    else
    {
      v22 = v20;
    }

    sub_1D0BE0C9C(v32, v22, 1);
    if (v22 >= 1)
    {
      v23 = 0;
      v24 = 0;
      while (1)
      {
        sub_1D0BBA094(v29, *(a4 + 32) + v24);
        if (v30 <= v31)
        {
          v25 = v31;
        }

        else
        {
          v25 = v30;
        }

        if (v31)
        {
          v26 = v30 == 0;
        }

        else
        {
          v26 = 1;
        }

        if (v26)
        {
          v27 = 0;
        }

        else
        {
          v27 = v25;
        }

        *(v33 + v23) = v27;
        v24 += 64;
        v23 += 4;
        if (v22 << 6 == v24)
        {
          sub_1D0BE0C9C(v29, v22, 1);
          sub_1D0BD9994(v28, v22, 1);
        }
      }
    }

    sub_1D0BE0C9C(v29, v22, 1);
    sub_1D0BD9994(v28, v22, 1);
  }

  __assert_rtn("Zeros", "cnmatrix.h", 3098, "nr >= 0");
}

uint64_t sub_1D0BE0C9C(uint64_t result, int a2, int a3)
{
  *(result + 24) = 0x100000057;
  *(result + 32) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = &unk_1F4CE0470;
  if (a2 < 0)
  {
    v3 = "nr >= 0";
    v4 = 419;
    goto LABEL_6;
  }

  if (a3 < 0)
  {
    v3 = "nc >= 0";
    v4 = 420;
LABEL_6:
    __assert_rtn("CNMatrix", "cnmatrix.h", v4, v3);
  }

  *(result + 8) = a2;
  *(result + 12) = a3;
  *(result + 16) = a3 * a2;
  *(result + 20) = a2;
  *(result + 32) = result + 40;
  return result;
}

uint64_t *sub_1D0BE0D60(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  v4 = *a1;
  *a1 = v3;
  if (v4)
  {
    v5 = v4 - 16;
    v6 = *(v4 - 8);
    if (v6)
    {
      v7 = v6 << 6;
      v8 = v4 - 64;
      do
      {
        *(v8 + v7) = &unk_1F4CD5E28;
        v7 -= 64;
      }

      while (v7);
    }

    MEMORY[0x1D387EC80](v5, 0x1081C8052DD7B27);
  }

  return a1;
}

__n128 sub_1D0BE0DE8(uint64_t a1, uint64_t a2)
{
  result.n128_u64[0] = 0x300000003;
  *(a1 + 24) = 0x300000003;
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F4CD5DD0;
  if (a1 == a2)
  {
    v17 = "this != &(A)";
    v18 = 603;
    goto LABEL_16;
  }

  v4 = *(a2 + 8);
  v3 = *(a2 + 12);
  *(a1 + 8) = v4;
  *(a1 + 12) = v3;
  v5 = v3 * v4;
  *(a1 + 16) = v5;
  *(a1 + 20) = v4;
  v6 = (a1 + 40);
  *(a1 + 32) = a1 + 40;
  if (v4 > 3)
  {
    v17 = "this->max_num_rows_ >= A.num_rows_";
    v18 = 616;
    goto LABEL_16;
  }

  if (v3 >= 4)
  {
    v17 = "this->max_num_cols_ >= A.num_cols_";
    v18 = 617;
LABEL_16:
    __assert_rtn("CNMatrix", "cnmatrix.h", v18, v17);
  }

  v7 = *(a2 + 16);
  if (v7 > 3)
  {
    v10 = (v7 - 2);
    v11 = *(a2 + 32);
    v12 = (v7 - 1) >> 1;
    v13 = v11;
    v14 = (a1 + 40);
    do
    {
      v15 = *v13++;
      *v14++ = v15;
      --v12;
    }

    while (v12);
    v16 = v10;
    result = *(v11 + v16 * 8);
    *&v6[v16] = result;
  }

  else if (v5 >= 1)
  {
    v8 = *(a2 + 32);
    do
    {
      v9 = *v8++;
      result.n128_u64[0] = v9;
      *v6++ = v9;
      --v5;
    }

    while (v5);
  }

  return result;
}

void raven::RavenPNTEstimator::GetInitializationArgs(uint64_t a1@<X0>, int8x16_t *a2@<X1>, _BYTE *a3@<X8>, int8x16_t a4@<Q1>)
{
  v5 = (a1 + 19656);
  *a3 = 0;
  a3[296] = 0;
  v67 = a1;
  v6 = *a2;
  v68[0] = *a2;
  if ((*(a1 + 19888) & 1) == 0)
  {
    v13 = sub_1D0B751F4(__p, "no previous solution");
    if (cnprint::CNPrinter::GetLogLevel(v13) > 1)
    {
      goto LABEL_71;
    }

    LOWORD(v55) = 12;
    LOBYTE(v58[0]) = 1;
    v14 = __p;
    if (v60 < 0)
    {
      v14 = __p[0];
    }

    v15 = cnprint::CNLogFormatter::FormatGeneral(a1 + 2712, v68, "Could not initialize - %s", v14);
    if (*(a1 + 2735) >= 0)
    {
      LOBYTE(v21) = v15;
    }

    else
    {
      v21 = *(a1 + 2712);
    }

LABEL_53:
    cnprint::CNPrinter::Print(&v55, v58, "%s", v16, v17, v18, v19, v20, v21);
    goto LABEL_71;
  }

  v7 = CNTimeSpan::operator-(a2, (a1 + 21064), v6, a4);
  __p[0] = v7;
  __p[1] = v8;
  if (v7 < 0 || (v11 = *&v8, *&v8 < 0.0))
  {
    v12 = CNTimeSpan::operator-(__p, v9, v10);
    v11 = v22;
  }

  else
  {
    v12 = v7;
  }

  v23 = *(a1 + 1168);
  v9.i64[0] = *(v23 + 896);
  v55 = 0;
  v56 = 0.0;
  *v24.i64 = CNTimeSpan::SetTimeSpan(&v55, 0, v9, v10);
  if (v12 || (*&v11 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    if (!v55)
    {
      *v24.i64 = v56;
      if ((*&v56 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
      {
        goto LABEL_18;
      }
    }

    v26 = v12 <= v55;
    if (v12 != v55)
    {
      goto LABEL_19;
    }
  }

  *v24.i64 = v56;
LABEL_18:
  v26 = v11 <= *v24.i64;
LABEL_19:
  if (!v26)
  {
    v27 = sub_1D0B751F4(__p, "solution too old");
    if (cnprint::CNPrinter::GetLogLevel(v27) > 1)
    {
      goto LABEL_71;
    }

    LOWORD(v55) = 12;
    LOBYTE(v58[0]) = 1;
    v28 = __p;
    if (v60 < 0)
    {
      v28 = __p[0];
    }

    v29 = cnprint::CNLogFormatter::FormatGeneral(a1 + 2712, v68, "Could not initialize - %s", v28);
    if (*(a1 + 2735) >= 0)
    {
      LOBYTE(v21) = v29;
    }

    else
    {
      v21 = *(a1 + 2712);
    }

    goto LABEL_53;
  }

  if (v5[449] != 2)
  {
    v34 = sub_1D0B751F4(__p, "previous solution unhealthy");
    if (cnprint::CNPrinter::GetLogLevel(v34) > 1)
    {
      goto LABEL_71;
    }

    LOWORD(v55) = 12;
    LOBYTE(v58[0]) = 1;
    v35 = __p;
    if (v60 < 0)
    {
      v35 = __p[0];
    }

    v36 = cnprint::CNLogFormatter::FormatGeneral(a1 + 2712, v68, "Could not initialize - %s", v35);
    if (*(a1 + 2735) >= 0)
    {
      LOBYTE(v21) = v36;
    }

    else
    {
      v21 = *(a1 + 2712);
    }

    goto LABEL_53;
  }

  if (!v5[448])
  {
    v40 = sub_1D0B751F4(__p, "previous solution uninitialized");
    if (cnprint::CNPrinter::GetLogLevel(v40) > 1)
    {
      goto LABEL_71;
    }

    LOWORD(v55) = 12;
    LOBYTE(v58[0]) = 1;
    v41 = __p;
    if (v60 < 0)
    {
      v41 = __p[0];
    }

    v42 = cnprint::CNLogFormatter::FormatGeneral(a1 + 2712, v68, "Could not initialize - %s", v41);
    if (*(a1 + 2735) >= 0)
    {
      LOBYTE(v21) = v42;
    }

    else
    {
      v21 = *(a1 + 2712);
    }

    goto LABEL_53;
  }

  if (!v5[1704] || (v5[1784] & 1) == 0)
  {
    v37 = sub_1D0B751F4(__p, "previous solution missing device pos/vel");
    if (cnprint::CNPrinter::GetLogLevel(v37) > 1)
    {
      goto LABEL_71;
    }

    LOWORD(v55) = 12;
    LOBYTE(v58[0]) = 1;
    v38 = __p;
    if (v60 < 0)
    {
      v38 = __p[0];
    }

    v39 = cnprint::CNLogFormatter::FormatGeneral(a1 + 2712, v68, "Could not initialize - %s", v38);
    if (*(a1 + 2735) >= 0)
    {
      LOBYTE(v21) = v39;
    }

    else
    {
      v21 = *(a1 + 2712);
    }

    goto LABEL_53;
  }

  if (v5[1864])
  {
    goto LABEL_31;
  }

  if ((*v5 & 1) == 0)
  {
    sub_1D0B751F4(__p, "previous solution missing attitude");
    sub_1D0BF638C(&v67, __p);
    goto LABEL_71;
  }

  v43 = CNTimeSpan::operator-((a1 + 21064), (a1 + 19672), v24, v25);
  __p[0] = v43;
  __p[1] = v44;
  if (v43 < 0 || (v47 = *&v44, *&v44 < 0.0))
  {
    v48 = CNTimeSpan::operator-(__p, v45, v46);
    v47 = v49;
  }

  else
  {
    v48 = v43;
  }

  v45.i64[0] = *(v23 + 904);
  v55 = 0;
  v56 = 0.0;
  CNTimeSpan::SetTimeSpan(&v55, 0, v45, v46);
  if (v48 || (*&v47 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    if (!v55)
    {
      v50 = v56;
      if ((*&v56 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
      {
        goto LABEL_68;
      }
    }

    v51 = v48 <= v55;
    if (v48 != v55)
    {
      goto LABEL_69;
    }
  }

  v50 = v56;
LABEL_68:
  v51 = v47 <= v50;
LABEL_69:
  if (!v51)
  {
    sub_1D0B751F4(__p, "previous solution information out of synch");
    sub_1D0BF638C(&v67, __p);
LABEL_71:
    if (v60 < 0)
    {
      operator delete(__p[0]);
    }

    return;
  }

LABEL_31:
  if (*(a1 + 28048) != 350)
  {
    sub_1D0B751F4(__p, "accelerometer cache not yet full");
    sub_1D0BF638C(&v67, __p);
    goto LABEL_71;
  }

  if (*(a1 + 44896) != 350)
  {
    sub_1D0B751F4(__p, "gyro cache not yet full");
    sub_1D0BF638C(&v67, __p);
    goto LABEL_71;
  }

  *v66 = *(a1 + 21064);
  v65[1] = 0;
  v65[2] = 0;
  v65[0] = &unk_1F4CEF628;
  v62[0] = &unk_1F4CEF658;
  v62[1] = 0;
  v63 = vdupq_n_s64(0x7FF8000000000000uLL);
  v62[2] = 0;
  v64 = 0x7FF8000000000000;
  v30 = sub_1D0B87CF0(a1 + 44888, v66, v62, *v63.i64, v25);
  v33 = sub_1D0D54164(a1 + 28040, v66, v65, v31, v32);
  if (!(v30 | v33))
  {
    sub_1D0D54BC4(v61);
  }

  sub_1D0BC2944(__p);
  v52 = sub_1D0BCD7C4(__p, "missing sensor data at desired initialization time,gyro,", 56);
  v53 = MEMORY[0x1D387E9C0](v52, v30 == 0);
  v54 = sub_1D0BCD7C4(v53, ",accel,", 7);
  MEMORY[0x1D387E9C0](v54, v33 == 0);
  sub_1D0BC2E5C(&__p[1], &v55);
  sub_1D0BF638C(&v67, &v55);
  if (v57 < 0)
  {
    operator delete(v55);
  }

  sub_1D0D36324(__p);
}

void sub_1D0BE2124(_Unwind_Exception *a1)
{
  sub_1D0D857FC(&STACK[0x4F0]);
  sub_1D0D857FC(&STACK[0x530]);
  if (*(v1 + 296) == 1)
  {
    sub_1D0D857FC((v1 + 240));
  }

  _Unwind_Resume(a1);
}

uint64_t raven::RavenPNTEstimator::GetRavenStatus@<X0>(raven::RavenPNTEstimator *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 1056) = 0;
  *(a2 + 1040) = 0u;
  *(a2 + 1008) = 0u;
  *(a2 + 1024) = 0u;
  *(a2 + 992) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 160) = 0;
  *(a2 + 960) = vdupq_n_s64(0x7FF8000000000000uLL);
  *(a2 + 976) = 0;
  *(a2 + 984) = 0x7FF8000000000000;
  v4 = a2 + 164;
  bzero((a2 + 164), 0x318uLL);
  *a2 = *(this + 280);
  v12 = *(this + 56);
  *(a2 + 104) = v12;
  if (*(this + 58))
  {
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    *(a2 + 40) = 0u;
    v13 = v61;
    *(a2 + 56) = v60;
    *(a2 + 72) = v13;
    *(a2 + 8) = *(this + 14824);
    *(a2 + 24) = 0u;
    *(a2 + 88) = 0;
    *(a2 + 96) = 0x7FF8000000000000;
    v14 = sub_1D0BADDDC(a2, v12, 1.0, v5, v6, v7, v8, v9, v10);
    if (*(this + 58) && (v14 = sub_1D0D755EC(this + 15256), v14) && (v14 = raven::RavenPNTEstimator::IsSane(this), v14) && (!*(this + 58) || *(this + (*(this + 4902) != 0) + 2449) < *(*(this + 146) + 1464)))
    {
      v17 = 2;
    }

    else
    {
      LogLevel = cnprint::CNPrinter::GetLogLevel(v14);
      v17 = 1;
      if (LogLevel <= 1)
      {
        v57[0] = 12;
        v56 = 1;
        if (*(this + 58))
        {
          v21 = sub_1D0D755EC(this + 15256);
        }

        else
        {
          v21 = 0;
        }

        IsSane = raven::RavenPNTEstimator::IsSane(this);
        if (*(this + 58))
        {
          v23 = *(this + (*(this + 4902) != 0) + 2449) < *(*(this + 146) + 1464);
        }

        else
        {
          v23 = 1;
        }

        cnprint::CNLogFormatter::FormatGeneral(this + 339, "Estimator unhealthy,observable,%d,sane,%d,consistent,%d", v21, IsSane, v23);
        if (*(this + 2735) >= 0)
        {
          LOBYTE(v29) = this - 104;
        }

        else
        {
          v29 = *(this + 339);
        }

        cnprint::CNPrinter::Print(v57, &v56, "%s", v24, v25, v26, v27, v28, v29);
        v17 = 1;
      }
    }

    *(a2 + 105) = v17;
    v16.i64[0] = 1.0;
    *v15.i64 = 1.0 - *(this + (*(this + 4902) != 0) + 2449);
    *(a2 + 112) = v15.i64[0];
    *(a2 + 120) = CNTimeSpan::operator-(this + 10, this + 8, v15, v16);
    *(a2 + 128) = v30;
    *(a2 + 136) = *(this + 16);
    *(a2 + 152) = *(this + 34);
    v31 = *(this + 440);
    *(v4 + 96) = *(this + 424);
    *(v4 + 112) = v31;
    *(v4 + 128) = *(this + 114);
    v32 = *(this + 376);
    *(v4 + 32) = *(this + 360);
    *(v4 + 48) = v32;
    v33 = *(this + 408);
    *(v4 + 64) = *(this + 392);
    *(v4 + 80) = v33;
    v34 = *(this + 344);
    *v4 = *(this + 328);
    *(v4 + 16) = v34;
    v35 = *(this + 572);
    *(a2 + 392) = *(this + 556);
    *(a2 + 408) = v35;
    *(a2 + 424) = *(this + 147);
    v36 = *(this + 508);
    *(a2 + 328) = *(this + 492);
    *(a2 + 344) = v36;
    v37 = *(this + 540);
    *(a2 + 360) = *(this + 524);
    *(a2 + 376) = v37;
    v38 = *(this + 476);
    *(a2 + 296) = *(this + 460);
    *(a2 + 312) = v38;
    v39 = *(this + 44);
    *(a2 + 524) = *(this + 43);
    *(a2 + 540) = v39;
    *(a2 + 556) = *(this + 180);
    v40 = *(this + 40);
    *(a2 + 460) = *(this + 39);
    *(a2 + 476) = v40;
    v41 = *(this + 42);
    *(a2 + 492) = *(this + 41);
    *(a2 + 508) = v41;
    v42 = *(this + 38);
    *(a2 + 428) = *(this + 37);
    *(a2 + 444) = v42;
    v43 = *(this + 836);
    *(a2 + 656) = *(this + 820);
    *(a2 + 672) = v43;
    *(a2 + 688) = *(this + 213);
    v44 = *(this + 772);
    *(a2 + 592) = *(this + 756);
    *(a2 + 608) = v44;
    v45 = *(this + 804);
    *(a2 + 624) = *(this + 788);
    *(a2 + 640) = v45;
    v46 = *(this + 740);
    *(a2 + 560) = *(this + 724);
    *(a2 + 576) = v46;
    v47 = *(this + 968);
    *(a2 + 788) = *(this + 952);
    *(a2 + 804) = v47;
    *(a2 + 820) = *(this + 246);
    v48 = *(this + 904);
    *(a2 + 724) = *(this + 888);
    *(a2 + 740) = v48;
    v49 = *(this + 936);
    *(a2 + 756) = *(this + 920);
    *(a2 + 772) = v49;
    v50 = *(this + 872);
    *(a2 + 692) = *(this + 856);
    *(a2 + 708) = v50;
    v51 = *(this + 1100);
    *(a2 + 920) = *(this + 1084);
    *(a2 + 936) = v51;
    *(a2 + 952) = *(this + 279);
    v52 = *(this + 1036);
    *(a2 + 856) = *(this + 1020);
    *(a2 + 872) = v52;
    v53 = *(this + 1068);
    *(a2 + 888) = *(this + 1052);
    *(a2 + 904) = v53;
    v54 = *(this + 1004);
    *(a2 + 824) = *(this + 988);
    *(a2 + 840) = v54;
    *(a2 + 160) = 0;
    *(a2 + 992) = raven::RavenEstimator::GetPriorWeight(this);
    *(a2 + 1000) = raven::RavenEstimator::GetGNSSWeight(this);
    *(a2 + 1008) = raven::RavenEstimator::GetWiFiWeight(this);
    *(a2 + 1016) = raven::RavenEstimator::GetCellWeight(this);
    *(a2 + 1024) = raven::RavenEstimator::GetIndoorWeight(this);
    *(a2 + 1032) = raven::RavenEstimator::GetAccessoryWeight(this);
    v11.i64[0] = *(this + 40);
    *(a2 + 976) = *(this + 39);
    *(a2 + 984) = v11.i64[0];
    v19.i64[0] = *(this + 2432);
    *(a2 + 968) = v19.i64[0];
    v18 = this + 136;
  }

  else
  {
    v18 = this + 136;
    *(a2 + 40) = *(this + 168);
    *(a2 + 56) = *(this + 184);
    *(a2 + 72) = *(this + 200);
    *(a2 + 88) = *(this + 216);
    *(a2 + 8) = *(this + 136);
    v19 = *(this + 152);
    *(a2 + 24) = v19;
  }

  return raven::PopulateAllTimeFields(a2 + 8, v18, v19, v11);
}

uint64_t raven::RavenPNTEstimator::GetRavenSolution@<X0>(raven::RavenPNTEstimator *this@<X0>, uint64_t a2@<X8>)
{
  v4 = 0uLL;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  v5 = (a2 + 264);
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0x7FF8000000000000;
  *(a2 + 96) = 0;
  v6 = vdupq_n_s64(0x7FF8000000000000uLL);
  *(a2 + 104) = v6;
  *(a2 + 120) = v6;
  *(a2 + 136) = v6;
  *(a2 + 152) = v6;
  *(a2 + 168) = 0x7FF8000000000000;
  *(a2 + 176) = 0;
  *(a2 + 184) = v6;
  *(a2 + 200) = v6;
  *(a2 + 216) = v6;
  *(a2 + 232) = v6;
  *(a2 + 248) = v6;
  *(a2 + 264) = v6;
  *(a2 + 280) = v6;
  *(a2 + 296) = 0;
  *(a2 + 304) = v6;
  *(a2 + 320) = v6;
  *(a2 + 336) = v6;
  *(a2 + 352) = v6;
  *(a2 + 368) = 0x7FF8000000000000;
  *(a2 + 376) = 0;
  *(a2 + 384) = v6;
  *(a2 + 400) = v6;
  *(a2 + 416) = v6;
  *(a2 + 432) = v6;
  *(a2 + 448) = 0x7FF8000000000000;
  *(a2 + 456) = 0;
  *(a2 + 464) = v6;
  *(a2 + 480) = v6;
  *(a2 + 496) = v6;
  *(a2 + 512) = v6;
  *(a2 + 528) = v6;
  *(a2 + 544) = v6;
  *(a2 + 560) = v6;
  *(a2 + 576) = 0;
  *(a2 + 584) = v6;
  *(a2 + 600) = v6;
  *(a2 + 616) = v6;
  *(a2 + 632) = v6;
  *(a2 + 648) = 0x7FF8000000000000;
  *(a2 + 656) = 0;
  *(a2 + 664) = v6;
  *(a2 + 680) = v6;
  *(a2 + 696) = v6;
  *(a2 + 712) = v6;
  *(a2 + 728) = 0x7FF8000000000000;
  *(a2 + 736) = 0;
  *(a2 + 744) = v6;
  *(a2 + 760) = v6;
  *(a2 + 776) = v6;
  *(a2 + 792) = v6;
  *(a2 + 808) = 0x7FF8000000000000;
  *(a2 + 816) = 0;
  *(a2 + 824) = v6;
  *(a2 + 840) = v6;
  *(a2 + 856) = 0x7FF8000000000000;
  if (*(this + 58) == 1)
  {
    v13 = v6;
    v7 = sub_1D0D755EC(this + 15256);
    v4 = 0uLL;
    v6 = v13;
    if (v7)
    {
      v19[14] = *(this + 14824);
      v17 = 0x10000001CLL;
      v15 = &unk_1F4CE0A20;
      v16 = xmmword_1D0E843A0;
      v18 = v19;
      sub_1D0D881B0(v14, 28, 28);
    }
  }

  *(a2 + 100) = 0;
  *(a2 + 97) = 0;
  *(a2 + 178) = 0;
  *(a2 + 182) = 0;
  *(a2 + 300) = 0;
  *(a2 + 297) = 0;
  *(a2 + 380) = 0;
  *(a2 + 377) = 0;
  *(a2 + 460) = 0;
  *(a2 + 457) = 0;
  *(a2 + 580) = 0;
  *(a2 + 577) = 0;
  *(a2 + 660) = 0;
  *(a2 + 657) = 0;
  *(a2 + 740) = 0;
  *(a2 + 737) = 0;
  *(a2 + 820) = 0;
  *(a2 + 817) = 0;
  *(a2 + 48) = v4;
  *(a2 + 64) = v4;
  *(a2 + 16) = v4;
  *(a2 + 32) = v4;
  *a2 = v4;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0x7FF8000000000000;
  *(a2 + 96) = 0;
  *(a2 + 104) = v6;
  *(a2 + 120) = v6;
  *(a2 + 136) = v6;
  *(a2 + 152) = v6;
  *(a2 + 168) = 0x7FF8000000000000;
  *(a2 + 176) = 0;
  *(a2 + 184) = v6;
  *(a2 + 200) = v6;
  *(a2 + 216) = v6;
  *(a2 + 232) = v6;
  *(a2 + 248) = v6;
  *v5 = v6;
  v5[1] = v6;
  *(a2 + 296) = 0;
  *(a2 + 304) = v6;
  *(a2 + 320) = v6;
  *(a2 + 336) = v6;
  *(a2 + 352) = v6;
  *(a2 + 368) = 0x7FF8000000000000;
  *(a2 + 376) = 0;
  *(a2 + 384) = v6;
  *(a2 + 400) = v6;
  *(a2 + 416) = v6;
  *(a2 + 432) = v6;
  *(a2 + 448) = 0x7FF8000000000000;
  *(a2 + 456) = 0;
  *(a2 + 464) = v6;
  *(a2 + 480) = v6;
  *(a2 + 496) = v6;
  *(a2 + 512) = v6;
  *(a2 + 528) = v6;
  *(a2 + 544) = v6;
  *(a2 + 560) = v6;
  *(a2 + 576) = 0;
  v5[20] = v6;
  v5[21] = v6;
  v5[22] = v6;
  v5[23] = v6;
  *(a2 + 648) = 0x7FF8000000000000;
  *(a2 + 656) = 0;
  v5[25] = v6;
  v5[26] = v6;
  v5[27] = v6;
  v5[28] = v6;
  *(a2 + 728) = 0x7FF8000000000000;
  *(a2 + 736) = 0;
  v5[30] = v6;
  v5[31] = v6;
  v5[32] = v6;
  v5[33] = v6;
  *(a2 + 808) = 0x7FF8000000000000;
  *(a2 + 816) = 0;
  v5[35] = v6;
  v5[36] = v6;
  *(a2 + 856) = 0x7FF8000000000000;
  v8 = *(this + 152);
  *a2 = *(this + 136);
  *(a2 + 16) = v8;
  v9 = *(this + 216);
  *(a2 + 64) = *(this + 200);
  *(a2 + 80) = v9;
  v10 = *(this + 184);
  v11 = *(this + 168);
  *(a2 + 32) = v11;
  *(a2 + 48) = v10;

  return raven::PopulateAllTimeFields(a2, this + 136, v10, v11);
}

void sub_1D0BE37A4(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_1EE053A68);
  sub_1D0D855A8(&STACK[0x3C8]);
  _Unwind_Resume(a1);
}

uint64_t sub_1D0BE3854(uint64_t a1, uint64_t a2, int8x16_t a3, int8x16_t a4)
{
  raven::PopulateAllTimeFields(a1 + 8, a2, a3, a4);
  raven::PopulateAllTimeFields(a1 + 1168, a2, v6, v7);
  raven::PopulateAllTimeFields(a1 + 112, a2, v8, v9);

  return raven::PopulateAllTimeFields(a1 + 2032, a2, v10, v11);
}

BOOL raven::RavenIonosphereEstimator::GetEstimatorPredictAndUpdateArguments(uint64_t a1, uint64_t a2, int8x16_t *a3, uint64_t a4, double a5, int8x16_t a6)
{
  v10 = *a3;
  *a4 = *a3;
  v11 = CNTimeSpan::operator-(a3, a2, v10, a6);
  v13 = v12 + v11;
  *(a4 + 16) = v13;
  if (v13 < 0.0)
  {
    v34 = 12;
    v33 = 2;
    v25 = cnprint::CNLogFormatter::FormatGeneral(a1 + 4040, a3, "Prediction time is negative,dt,%.2lf,current_estimator_time,%.1lf", v13, *(a2 + 8) + *a2);
    if (*(a1 + 4063) >= 0)
    {
      LOBYTE(v31) = v25;
    }

    else
    {
      v31 = *(a1 + 4040);
    }

    cnprint::CNPrinter::Print(&v34, &v33, "%s", v26, v27, v28, v29, v30, v31);
  }

  else
  {
    v14 = (*(a1 + 4032) + 2744);
    *(a4 + 24) = *v14;
    v15 = v14[1];
    v16 = v14[2];
    v17 = v14[3];
    *(a4 + 88) = v14[4];
    *(a4 + 72) = v17;
    *(a4 + 56) = v16;
    *(a4 + 40) = v15;
    v18 = (*(a1 + 4032) + 2824);
    *(a4 + 104) = *v18;
    v19 = v18[1];
    v20 = v18[2];
    v21 = v18[3];
    *(a4 + 168) = v18[4];
    *(a4 + 152) = v21;
    *(a4 + 136) = v20;
    *(a4 + 120) = v19;
    v22 = *(a1 + 200);
    v23 = *(a1 + 216);
    v24 = *(a1 + 232);
    *(a4 + 200) = *(a1 + 184);
    *(a4 + 248) = v24;
    *(a4 + 232) = v23;
    *(a4 + 216) = v22;
    *(a4 + 184) = *(a1 + 168);
  }

  return v13 >= 0.0;
}

uint64_t raven::RavenIonosphereEstimator::PredictAndUpdate(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 9) != 1)
  {
    return 32;
  }

  v4 = (a1 + 8456);
  v224[0] = *a2;
  v5 = *(a2 + 16);
  if (v5 < 0.0)
  {
    sub_1D0BF0D88(a1 + 8456, (a1 + 32));
    *v4 = 0;
    sub_1D0BADC18(v4, (a1 + 32), v6, v7, v8, v9, v10, v11);
    return 64;
  }

  if (v5 <= 0.0)
  {
    return 0;
  }

  if (sub_1D0B9D420(v224[0].n128_f64, (a1 + 8464)))
  {
    *v220 = 2;
    LOBYTE(v199) = 4;
    v20 = v220;
    v21 = &v199;
    goto LABEL_53;
  }

  v22 = v224[0];
  *(a1 + 8480) = v224[0];
  v23 = CNTimeSpan::operator-((a1 + 8480), (a1 + 8464), v22, v19);
  v26 = *(a1 + 11640);
  if (v26 < 1)
  {
LABEL_14:
    *(a1 + 21160) = 44;
    *(a1 + 13144) = xmmword_1D0EA1270;
    *(a1 + 13888) = xmmword_1D0EA1270;
    *(a1 + 14104) = xmmword_1D0EA1270;
    *(a1 + 14496) = xmmword_1D0EA1270;
    *(a1 + 16648) = xmmword_1D0EA1270;
    *(a1 + 16864) = xmmword_1D0EA1270;
    *(a1 + 19016) = xmmword_1D0EA1270;
    *(a1 + 21176) = xmmword_1D0EA1270;
    *(a1 + 21568) = xmmword_1D0EA1270;
    *&v220[16] = 0;
    *&v220[8] = 0;
    *v220 = &v220[8];
    if (v26 < 1)
    {
      v33 = 0;
      goto LABEL_61;
    }

    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    while (1)
    {
      if (*(*(a1 + 10392) + 8 * v32) <= 1.0)
      {
        ++v35;
        v36 = *(*(a1 + 10000) + 4 * v32);
        v37 = v36 + v34;
        if (v33 > 43 || v37 >= 45)
        {
          v173 = 0.0;
          v45 = *v220;
          if (*v220 == &v220[8])
          {
            goto LABEL_76;
          }

          v46 = 0;
          v47 = -1;
          do
          {
            v48 = *(v45 + 10);
            if (v48 > v47)
            {
              v46 = *(v45 + 4);
              v173 = *&v46;
              v47 = v48;
            }

            v49 = *(v45 + 1);
            if (v49)
            {
              do
              {
                v50 = v49;
                v49 = *v49;
              }

              while (v49);
            }

            else
            {
              do
              {
                v50 = *(v45 + 2);
                v51 = *v50 == v45;
                v45 = v50;
              }

              while (!v51);
            }

            v45 = v50;
          }

          while (v50 != &v220[8]);
          if (!v46)
          {
LABEL_76:
            LOWORD(v199) = 2;
            LOBYTE(v215) = 4;
            cnprint::CNPrinter::Print(&v199, &v215, "MeasurementAccumulator.LockAccumulator() most_common_measurement_type == nullptr", v14, v15, v16, v17, v18, v148);
            goto LABEL_59;
          }

          if (*(*(a1 + 11680) + 8 * v32) == v46)
          {
            goto LABEL_48;
          }

          v38 = v33 - 1;
          if (v33 < 1)
          {
LABEL_58:
            LOWORD(v199) = 2;
            LOBYTE(v215) = 4;
            cnprint::CNPrinter::Print(&v199, &v215, "MeasurementAccumulator.LockAccumulator() found_idx == false", v14, v15, v16, v17, v18, v148);
LABEL_59:
            sub_1D0B99218(*&v220[8]);
            goto LABEL_54;
          }

          v52 = v33;
          while (*(*(a1 + 21200) + 8 * --v52) != v46)
          {
            if (v52 <= 0)
            {
              goto LABEL_58;
            }
          }

          if (v37 - *(*(a1 + 13912) + 4 * v52) > 44)
          {
            goto LABEL_48;
          }

          v154 = v34;
          v151 = v35;
          v199 = COERCE_DOUBLE(&v173);
          v53 = sub_1D0BBCAA4(v220, v46);
          --*(v53 + 10);
          v153 = v154 - *(*(a1 + 13912) + 4 * v52);
          v33 = v52;
        }

        else
        {
          v153 = v34;
          v151 = v35;
          v38 = v33;
        }

        *(*(a1 + 13168) + 16 * v33) = *(*(a1 + 8552) + 16 * v32);
        *(*(a1 + 13912) + 4 * v33) = v36;
        *(*(a1 + 14128) + 8 * v33) = *(*(a1 + 10392) + 8 * v32);
        sub_1D0B894B0(*(a1 + 14520) + 48 * v33, *(a1 + 11136) + 48 * v32);
        *(*(a1 + 16672) + 4 * v33) = *(*(a1 + 11184) + 4 * v32);
        sub_1D0B894B0(*(a1 + 16888) + 48 * v33, *(a1 + 11576) + 48 * v32);
        sub_1D0B894B0(*(a1 + 19040) + 48 * v33, *(a1 + 11624) + 48 * v32);
        *(*(a1 + 21200) + 8 * v33) = *(*(a1 + 11680) + 8 * v32);
        *(*(a1 + 21592) + 8 * v33) = *(*(a1 + 12424) + 8 * v32);
        v39 = *&v220[8];
        v40 = *(*(a1 + 11680) + 8 * v32);
        if (!*&v220[8])
        {
          goto LABEL_28;
        }

        v41 = &v220[8];
        do
        {
          v42 = *(v39 + 32);
          v43 = v42 >= v40;
          v44 = v42 < v40;
          if (v43)
          {
            v41 = v39;
          }

          v39 = *(v39 + 8 * v44);
        }

        while (v39);
        if (v41 != &v220[8] && v40 >= *(v41 + 4))
        {
          ++*(v41 + 10);
        }

        else
        {
LABEL_28:
          *&v199 = *(a1 + 11680) + 8 * v32;
          *(sub_1D0BBCAA4(v220, v40) + 10) = 1;
        }

        v35 = v151;
        v33 = v38 + 1;
        v34 = v153 + v36;
        LODWORD(v26) = *(a1 + 11640);
      }

LABEL_48:
      if (++v32 >= v26)
      {
        if (v35 > v33)
        {
          LOWORD(v199) = 2;
          LOBYTE(v173) = 2;
          v149 = v224[0].n128_f64[1] + v224[0].n128_i64[0];
          cnprint::CNPrinter::Print(&v199, &v173, "t,%.3lf,WARNING: MeasurementAccumulator.LockAccumulator() truncating measurements,nh,%d,eligible,%d,num_truncated,%d", v14, v15, v16, v17, v18, SLOBYTE(v149));
        }

LABEL_61:
        *(a1 + 21160) = v33;
        *(a1 + 13144) = v33;
        *(a1 + 13148) = 1;
        *(a1 + 13152) = v33;
        *(a1 + 13156) = v33;
        *(a1 + 13888) = v33;
        *(a1 + 13892) = 1;
        *(a1 + 13896) = v33;
        *(a1 + 13900) = v33;
        *(a1 + 14104) = v33;
        *(a1 + 14108) = 1;
        *(a1 + 14112) = v33;
        *(a1 + 14116) = v33;
        *(a1 + 14496) = v33;
        *(a1 + 14500) = 1;
        *(a1 + 14504) = v33;
        *(a1 + 14508) = v33;
        *(a1 + 16648) = v33;
        *(a1 + 16652) = 1;
        *(a1 + 16656) = v33;
        *(a1 + 16660) = v33;
        *(a1 + 16864) = v33;
        *(a1 + 16868) = 1;
        *(a1 + 16872) = v33;
        *(a1 + 16876) = v33;
        *(a1 + 19016) = v33;
        *(a1 + 19020) = 1;
        *(a1 + 19024) = v33;
        *(a1 + 19028) = v33;
        *(a1 + 21176) = v33;
        *(a1 + 21180) = 1;
        *(a1 + 21184) = v33;
        *(a1 + 21188) = v33;
        *(a1 + 21568) = v33;
        *(a1 + 21572) = 1;
        *(a1 + 21576) = v33;
        *(a1 + 21580) = v33;
        v4[1] = 1;
        sub_1D0B99218(*&v220[8]);
        if (!cnprint::CNPrinter::GetLogLevel(v68))
        {
          *v220 = 12;
          LOBYTE(v199) = 0;
          v76 = v224[0].n128_f64[1] + v224[0].n128_i64[0];
          v77 = sub_1D0BE51B8(v4, v69, v70, v71, v72, v73, v74, v75);
          cnprint::CNLogFormatter::FormatGeneral((a1 + 4040), "Predict,%.2lf,dt,%.3lf,meas_types,%d", v76, v5, v77);
          if (*(a1 + 4063) >= 0)
          {
            LOBYTE(v83) = a1 - 56;
          }

          else
          {
            v83 = *(a1 + 4040);
          }

          cnprint::CNPrinter::Print(v220, &v199, "%s", v78, v79, v80, v81, v82, v83);
        }

        v221 = 0xA0000000ALL;
        *v220 = &unk_1F4CE2180;
        v222 = v223;
        *&v220[8] = xmmword_1D0E84630;
        bzero(v223, 0x320uLL);
        if (sub_1D0BE486C(a1, a2, v220, v84))
        {
          sub_1D0BF0D88(v4, (a1 + 32));
          *v4 = 0;
          *&v98 = sub_1D0BADC18(v4, (a1 + 32), v92, v93, v94, v95, v96, v97).n128_u64[0];
          LOWORD(v199) = 12;
          LOBYTE(v173) = 4;
          v99 = cnprint::CNLogFormatter::FormatGeneral((a1 + 4040), "GetProcessNoiseInformationMatrix(),failed", v98);
          if (*(a1 + 4063) >= 0)
          {
            LOBYTE(v105) = v99;
          }

          else
          {
            v105 = *(a1 + 4040);
          }

          cnprint::CNPrinter::Print(&v199, &v173, "%s", v100, v101, v102, v103, v104, v105);
          return 256;
        }

        v217 = 0x200000001;
        v216 = xmmword_1D0E84500;
        v215 = &unk_1F4CE2060;
        v218 = &v219;
        v219 = 0xA0000000ALL;
        v212 = 0x100000001;
        *&v106 = 0x100000001;
        *(&v106 + 1) = 0x100000001;
        v211 = v106;
        v210 = &unk_1F4CED2C0;
        v213 = &v214;
        v214 = sub_1D0BEBAAC;
        v199 = v5;
        v206 = *(a2 + 120);
        v207 = *(a2 + 136);
        v208 = *(a2 + 152);
        v209 = *(a2 + 168);
        v205 = *(a2 + 104);
        v201 = *(a2 + 200);
        v202 = *(a2 + 216);
        v203 = *(a2 + 232);
        v204 = *(a2 + 248);
        v200 = *(a2 + 184);
        v196 = 0x100000001;
        v195 = v106;
        v194 = &unk_1F4CED348;
        v197 = &v198;
        v198 = &v199;
        v191 = 0x100000001;
        v190 = v106;
        v189 = &unk_1F4CDF158;
        v192 = &v193;
        v193 = 10;
        v186 = 0x100000001;
        v185 = v106;
        v184 = &unk_1F4CED390;
        v187 = &v188;
        v188 = sub_1D0BEC350;
        v173 = v5;
        v180 = *(a2 + 120);
        v181 = *(a2 + 136);
        v182 = *(a2 + 152);
        v183 = *(a2 + 168);
        v179 = *(a2 + 104);
        v175 = *(a2 + 200);
        v176 = *(a2 + 216);
        v177 = *(a2 + 232);
        v178 = *(a2 + 248);
        v174 = *(a2 + 184);
        v170 = 0x100000001;
        v168 = &unk_1F4CED348;
        v169 = v106;
        v171 = &v172;
        v172 = &v173;
        v167 = v5;
        if ((v4[1] & 1) == 0)
        {
          sub_1D0BF1450(v4, (a1 + 32));
          return 512;
        }

        v155 = sub_1D0BE51B8(v4, v85, v86, v87, v88, v89, v90, v91);
        if (v155)
        {
          v107 = sub_1D0BE4CB8(a1 + 4088, v220, a1 + 14096, a1 + 14488, a1 + 19008, &v215, &v210, &v194, a1 + 21168, a1 + 21560, &v189, &v184, &v168);
          v12 = 10;
        }

        else
        {
          v107 = sub_1D0E15AF0(a1 + 4088, v220, &v215, &v210);
          v12 = 2;
        }

        v164 = 0;
        v165 = 0;
        v166 = 0;
        sub_1D0BA5D5C(&v164, *(a1 + 6384), *(a1 + 6392), (*(a1 + 6392) - *(a1 + 6384)) >> 5);
        v161 = 0;
        v162 = 0;
        v163 = 0;
        sub_1D0BA5D5C(&v161, *(a1 + 6360), *(a1 + 6368), (*(a1 + 6368) - *(a1 + 6360)) >> 5);
        v158 = 0;
        v159 = 0;
        v160 = 0;
        sub_1D0BA5D5C(&v158, *(a1 + 6408), *(a1 + 6416), (*(a1 + 6416) - *(a1 + 6408)) >> 5);
        v109 = v164;
        v108 = v165;
        v110 = (v165 - v164) >> 5;
        v111 = v161;
        v150 = v162;
        v112 = (v162 - v161) >> 5;
        v152 = (v159 - v158) >> 5;
        if (v155)
        {
          *(a1 + 3216) += v110;
          raven::RavenIonosphereEstimator::AddToAcceptedMeasurementTypeCount(a1, &v164);
          *(a1 + 3224) += v112;
          raven::RavenIonosphereEstimator::AddToRejectedMeasurementTypeCount(a1, &v161);
          *(a1 + 3232) += v152;
          raven::RavenIonosphereEstimator::AddToUnusedMeasurementTypeCount(a1, &v158);
        }

        if (v107 > 0x16)
        {
          goto LABEL_102;
        }

        if (((1 << v107) & 0x440408) == 0)
        {
          if (((1 << v107) & 0x301) != 0)
          {
            v113 = sub_1D0BAA7A4(a1 + 8384, &v167);
            if (v155)
            {
              if (v108 != v109)
              {
                v120 = 1;
                do
                {
                  v113 = sub_1D0BF0650(a1 + 8384);
                  v121 = v110 > v120++;
                }

                while (v121);
              }

              if (v150 != v111)
              {
                v122 = 1;
                do
                {
                  v113 = sub_1D0C51528(a1 + 8384);
                  v121 = v112 > v122++;
                }

                while (v121);
              }

              if (v110 <= v112)
              {
                if (cnprint::CNPrinter::GetLogLevel(v113) <= 1)
                {
                  LOWORD(v156) = 12;
                  v157 = 1;
                  v147 = cnprint::CNLogFormatter::FormatGeneral(a1 + 4040, v224, "accepted_meas,%zu,rejected_meas,%zu,unused_meas,%zu", v110, v112, v152);
                  if (*(a1 + 4063) >= 0)
                  {
                    LOBYTE(v129) = v147;
                  }

                  else
                  {
                    v129 = *(a1 + 4040);
                  }

LABEL_115:
                  cnprint::CNPrinter::Print(&v156, &v157, "%s", v124, v125, v126, v127, v128, v129);
                }
              }

              else if (!cnprint::CNPrinter::GetLogLevel(v113))
              {
                LOWORD(v156) = 12;
                v157 = 0;
                v123 = cnprint::CNLogFormatter::FormatGeneral(a1 + 4040, v224, "accepted_meas,%zu,rejected_meas,%zu,unused_meas,%zu", v110, v112, v152);
                if (*(a1 + 4063) >= 0)
                {
                  LOBYTE(v129) = v123;
                }

                else
                {
                  v129 = *(a1 + 4040);
                }

                goto LABEL_115;
              }
            }

            *(a1 + 32) = v224[0];
            v156 = 0uLL;
            if (!sub_1D0BF08D4(v4, &v156, v114, v115, v116, v117, v118, v119))
            {
              *(a1 + 48) = v156;
            }

LABEL_118:
            sub_1D0BF1450(v4, v224);
            *&v156 = &v158;
            sub_1D0BA5F70(&v156);
            v158 = &v161;
            sub_1D0BA5F70(&v158);
            v161 = &v164;
            sub_1D0BA5F70(&v161);
            return v12;
          }

          if (((1 << v107) & 0x300000) != 0)
          {
            LOWORD(v156) = 12;
            v157 = 4;
            v130 = cnprint::CNLogFormatter::FormatGeneral(a1 + 4040, v224, "Resetting due to prediction error code %d", v107);
            if (*(a1 + 4063) >= 0)
            {
              LOBYTE(v136) = v130;
            }

            else
            {
              v136 = *(a1 + 4040);
            }

            cnprint::CNPrinter::Print(&v156, &v157, "%s", v131, v132, v133, v134, v135, v136);
            v12 |= 6uLL;
            goto LABEL_118;
          }

LABEL_102:
          v12 |= 1uLL;
        }

        LOWORD(v156) = 12;
        v157 = 4;
        v137 = cnprint::CNLogFormatter::FormatGeneral(a1 + 4040, v224, "Unexpected predict and update return code %d", v107);
        if (*(a1 + 4063) >= 0)
        {
          LOBYTE(v143) = v137;
        }

        else
        {
          v143 = *(a1 + 4040);
        }

        cnprint::CNPrinter::Print(&v156, &v157, "%s", v138, v139, v140, v141, v142, v143);
        if ((v12 & 8) != 0)
        {
          sub_1D0BF0D88(v4, v224);
          v144 = raven::RavenIonosphereEstimator::PredictAndUpdate(a1, a2);
          v145 = v112 + v110 + v152;
          if (v145)
          {
            v146 = 1;
            do
            {
              sub_1D0C51528(a1 + 8384);
              v121 = v145 > v146++;
            }

            while (v121);
          }

          v12 |= v144 | 0x18;
        }

        goto LABEL_118;
      }
    }
  }

  v27 = 0;
  *v25.i64 = v23;
  v28 = v24 + v23;
  v29 = *(a1 + 8552);
  while (1)
  {
    *v220 = *v29;
    *v25.i64 = CNTimeSpan::operator-(v220, (a1 + 8464), *v220, v25);
    v31 = (v30 + *v25.i64) / v28;
    if (v31 < 0.0)
    {
      break;
    }

    *(*(a1 + 10392) + v27) = v31;
    v27 += 8;
    ++v29;
    if (8 * v26 == v27)
    {
      goto LABEL_14;
    }
  }

  LOWORD(v199) = 2;
  LOBYTE(v173) = 2;
  v20 = &v199;
  v21 = &v173;
LABEL_53:
  cnprint::CNPrinter::Print(v20, v21, "WARNING: MeasurementAccumulator.LockAccumulator() called with bad t_end.", v14, v15, v16, v17, v18, v148);
LABEL_54:
  sub_1D0BF0D88(v4, (a1 + 32));
  *v4 = 0;
  *&v60 = sub_1D0BADC18(v4, (a1 + 32), v54, v55, v56, v57, v58, v59).n128_u64[0];
  *v220 = 12;
  LOBYTE(v199) = 4;
  v61 = cnprint::CNLogFormatter::FormatGeneral((a1 + 4040), "PredictAndUpdate(), could not lock accumulator", v60);
  if (*(a1 + 4063) >= 0)
  {
    LOBYTE(v67) = v61;
  }

  else
  {
    v67 = *(a1 + 4040);
  }

  cnprint::CNPrinter::Print(v220, &v199, "%s", v62, v63, v64, v65, v66, v67);
  return 128;
}

void sub_1D0BE47DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void ****a18, uint64_t a19, uint64_t a20, void ***a21, uint64_t a22, uint64_t a23, void **a24, uint64_t a25, uint64_t a26, char a27)
{
  a18 = &a21;
  sub_1D0BA5F70(&a18);
  a21 = &a24;
  sub_1D0BA5F70(&a21);
  a24 = &a27;
  sub_1D0BA5F70(&a24);
  _Unwind_Resume(a1);
}

uint64_t sub_1D0BE486C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = MEMORY[0x1EEE9AC00](a1, a2, a3, a4);
  v7 = v6;
  v9 = v8;
  v10 = v4;
  v11 = 0;
  v12 = (v8 + 104);
  do
  {
    v13 = *&v12[v11];
    v14 = (v13 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
    v15 = ((v13 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
    if (v13 >= 0)
    {
      v15 = 0;
      v14 = 0;
    }

    v16 = v13 & 0x7FFFFFFFFFFFFFFFLL;
    if (!v16)
    {
      v14 = 1;
    }

    v17 = v16 <= 0x7FF0000000000000;
    v18 = v16 == 0x7FF0000000000000 || v14;
    if (!v17)
    {
      v18 = 1;
    }

    if ((v18 | v15) == 1)
    {
      LOWORD(v69) = 12;
      LOBYTE(v64) = 4;
      v34 = cnprint::CNLogFormatter::FormatGeneral((v4 + 4040), "GetProcessNoiseInformationMatrix,non-positive correlation time constant specified", v5);
      if (*(v10 + 4063) >= 0)
      {
        LOBYTE(v40) = v34;
      }

      else
      {
        v40 = *(v10 + 4040);
      }

      cnprint::CNPrinter::Print(&v69, &v64, "%s", v35, v36, v37, v38, v39, v40);
      return 0xFFFFFFFFLL;
    }

    ++v11;
  }

  while (v11 != 10);
  v66 = 0xA0000000ALL;
  v64 = &unk_1F4CE2180;
  v67 = v68;
  v65 = xmmword_1D0E84630;
  bzero(v68, 0x320uLL);
  v19 = *(v9 + 16);
  for (i = 40; i != 920; i += 88)
  {
    v21 = v19 / *v12;
    v22 = exp(-v21);
    v23 = 1.0 - v22 * v22;
    if (v21 <= 0.00000001)
    {
      v23 = v21 + v21;
    }

    *(&v64 + i) = *(v12 - 10) * *(v12 - 10) * v23;
    ++v12;
  }

  v43 = 0xA0000000ALL;
  v41 = &unk_1F4CE2180;
  v42 = xmmword_1D0E84630;
  v44 = &v45;
  LOBYTE(v69) = 0;
  sub_1D0B9F748(&v64, &v41, &v69);
  v48 = 0xA0000000ALL;
  v46 = &unk_1F4CE2180;
  v47 = xmmword_1D0E84630;
  v49 = &v50;
  v61 = 0x10000000ALL;
  v60 = xmmword_1D0E87BE0;
  v59 = &unk_1F4CED1E8;
  v62 = v63;
  v71 = 0x100000028;
  v70 = xmmword_1D0EA1280;
  v69 = &unk_1F4CED230;
  v72 = v73;
  sub_1D0B9F868(&v41, &v59, &v69, &v46);
  v24 = DWORD1(v47);
  v25 = v47;
  v56 = 0xA0000000ALL;
  v51 = &unk_1F4CE2180;
  v57 = v58;
  v52 = DWORD1(v47);
  v53 = v47;
  v54 = v47 * DWORD1(v47);
  v55 = DWORD1(v47);
  if (DWORD1(v47))
  {
    v26 = 0;
    v27 = 0;
    v28 = HIDWORD(v47);
    v29 = v49;
    do
    {
      v30 = v26;
      v31 = v27;
      for (j = v25; j; --j)
      {
        v58[v31] = v29[v30];
        v31 += v24;
        ++v30;
      }

      ++v27;
      v26 += v28;
    }

    while (v27 != v24);
  }

  v76 = 0x10000000ALL;
  v74 = &unk_1F4CEAE48;
  v75 = xmmword_1D0E87BE0;
  v77 = &v78;
  v71 = 0xA0000000ALL;
  v70 = xmmword_1D0E84630;
  v69 = &unk_1F4CE2180;
  v72 = v73;
  v61 = 0xA0000000ALL;
  v60 = xmmword_1D0E84630;
  v59 = &unk_1F4CE2180;
  v62 = v63;
  sub_1D0B9FACC(&v51, &v74, &v69, &v59);
  sub_1D0B894B0(v7, &v59);
  return 0;
}

uint64_t sub_1D0BE4CB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v101 = 0x10000000ALL;
  v99 = &unk_1F4CEAE48;
  v100 = xmmword_1D0E87BE0;
  v102 = &v103;
  v96 = 0xA0000000ALL;
  v95 = xmmword_1D0E84630;
  v94 = &unk_1F4CE2180;
  v97 = &v98;
  v91 = 0x10000000ALL;
  v21 = *(a1 + 2180) == 0;
  v90 = xmmword_1D0E87BE0;
  v89 = &unk_1F4CEAE48;
  v92 = &v93;
  v22 = 8;
  if (v21)
  {
    v23 = 128;
  }

  else
  {
    v22 = 1088;
    v23 = 1208;
  }

  if (v21)
  {
    v24 = 968;
  }

  else
  {
    v24 = 2048;
  }

  sub_1D0B894B0(&v99, a1 + v22);
  sub_1D0B894B0(&v94, a1 + v23);
  sub_1D0B894B0(&v89, a1 + v24);
  if (v100 <= DWORD1(v100))
  {
    v25 = DWORD1(v100);
  }

  else
  {
    v25 = v100;
  }

  if (DWORD1(v100))
  {
    v26 = v100 == 0;
  }

  else
  {
    v26 = 1;
  }

  if (v26)
  {
    v27 = 0;
  }

  else
  {
    v27 = v25;
  }

  v28 = *(a2 + 8);
  if ((v28 & 0x80000000) != 0)
  {
    __assert_rtn("Zeros", "cnmatrix.h", 3098, "nr >= 0");
  }

  v29 = a9;
  v86 = 0x10000000ALL;
  v81 = &unk_1F4CEAE48;
  v87 = v88;
  v82 = v28;
  v83 = 1;
  v84 = v28;
  v85 = v28;
  v64 = a7;
  v63 = a8;
  v61 = v27;
  if (v28 > 3)
  {
    v30 = &v88[v28];
    bzero(v88, 16 * ((v28 - 1) >> 1));
    *(v30 - 2) = 0;
    *(v30 - 1) = 0;
    v29 = a9;
  }

  else if (v28)
  {
    bzero(v88, 8 * v28);
  }

  v62 = v28;
  v31 = *(v29 + 8);
  v32 = *(v29 + 12);
  v60 = v29;
  if (v31 <= v32)
  {
    v33 = *(v29 + 12);
  }

  else
  {
    v33 = *(v29 + 8);
  }

  if (v32)
  {
    v34 = v31 == 0;
  }

  else
  {
    v34 = 1;
  }

  if (v34)
  {
    v35 = 0;
  }

  else
  {
    v35 = v33;
  }

  sub_1D0BE5350(v79, v35);
  v65 = a2;
  if (v35 < 1)
  {
    sub_1D0BE5350(v77, v35);
    sub_1D0BE5400(v73, v35, v47);
  }

  else
  {
    v36 = 0;
    v37 = 0;
    do
    {
      sub_1D0BE520C(v73, *(a4 + 32) + v37);
      if (v74 <= v75)
      {
        v38 = v75;
      }

      else
      {
        v38 = v74;
      }

      if (v75)
      {
        v39 = v74 == 0;
      }

      else
      {
        v39 = 1;
      }

      if (v39)
      {
        v40 = 0;
      }

      else
      {
        v40 = v38;
      }

      *(v80 + v36) = v40;
      v37 += 48;
      v36 += 4;
    }

    while (48 * v35 != v37);
    sub_1D0BE5350(v77, v35);
    sub_1D0BE5400(v73, v35, v41);
    v42 = 0;
    v43 = 0;
    do
    {
      sub_1D0BE520C(&v66, *(a5 + 32) + v42);
      v44 = v78;
      *(v78 + v43) = v67;
      v45 = *(v44 + v43);
      if ((v45 & 0x80000000) != 0)
      {
        __assert_rtn("Zeros", "cnmatrix.h", 3098, "nr >= 0");
      }

      v71[0] = 0x100000001;
      v66 = &unk_1F4CDF418;
      v71[1] = &v72;
      v67 = v45;
      v68 = 1;
      v69 = v45;
      v70 = v45;
      if (v45 > 3)
      {
        bzero(&v72, 16 * ((v45 - 1) >> 1));
        v46 = &v71[v45];
        *v46 = 0;
        v46[1] = 0;
      }

      else if (v45)
      {
        bzero(&v72, 8 * v45);
      }

      sub_1D0B894B0(v76 + v42, &v66);
      v43 += 4;
      v42 += 48;
    }

    while (4 * v35 != v43);
  }

  v48 = *(v64 + 8);
  v49 = *(v64 + 12);
  if (v48 <= v49)
  {
    v50 = *(v64 + 12);
  }

  else
  {
    v50 = *(v64 + 8);
  }

  if (v49)
  {
    v51 = v48 == 0;
  }

  else
  {
    v51 = 1;
  }

  if (v51)
  {
    v52 = 0;
  }

  else
  {
    v52 = v50;
  }

  v53 = *(a12 + 8);
  v54 = *(a12 + 12);
  if (v53 <= v54)
  {
    v55 = *(a12 + 12);
  }

  else
  {
    v55 = *(a12 + 8);
  }

  if (v54)
  {
    v56 = v53 == 0;
  }

  else
  {
    v56 = 1;
  }

  if (v56)
  {
    v57 = 0;
  }

  else
  {
    v57 = v55;
  }

  result = sub_1D0BE555C(a1, v61, &v99, &v94, &v89, v62, &v81, v65, v79, a3, a4, v77, v73, a5, v52, a6, v64, v63, v35, v60, a10, v57, a11, a12, a13, a1 + 4192);
  for (i = 2104; i != -8; i -= 48)
  {
    *&v73[i] = &unk_1F4CD5E28;
  }

  return result;
}

void sub_1D0BE5178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  for (i = 2104; i != -8; i -= 48)
  {
    *(&a43 + i) = &unk_1F4CD5E28;
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1D0BE51B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 1))
  {
    return *(a1 + 12704);
  }

  v14 = v8;
  v15 = v9;
  v13 = 2;
  v12 = 2;
  cnprint::CNPrinter::Print(&v13, &v12, "WARNING: MeasurementAccumulator.NumberLocked() called on unlocked accumulator.", a4, a5, a6, a7, a8, v11);
  return 0;
}

__n128 sub_1D0BE520C(uint64_t a1, uint64_t a2)
{
  result.n128_u64[0] = 0x100000001;
  *(a1 + 24) = 0x100000001;
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F4CDF418;
  if (a1 == a2)
  {
    v17 = "this != &(A)";
    v18 = 603;
    goto LABEL_16;
  }

  v4 = *(a2 + 8);
  v3 = *(a2 + 12);
  *(a1 + 8) = v4;
  *(a1 + 12) = v3;
  v5 = v3 * v4;
  *(a1 + 16) = v5;
  *(a1 + 20) = v4;
  v6 = (a1 + 40);
  *(a1 + 32) = a1 + 40;
  if (v4 > 1)
  {
    v17 = "this->max_num_rows_ >= A.num_rows_";
    v18 = 616;
    goto LABEL_16;
  }

  if (v3 >= 2)
  {
    v17 = "this->max_num_cols_ >= A.num_cols_";
    v18 = 617;
LABEL_16:
    __assert_rtn("CNMatrix", "cnmatrix.h", v18, v17);
  }

  v7 = *(a2 + 16);
  if (v7 > 3)
  {
    v10 = (v7 - 2);
    v11 = *(a2 + 32);
    v12 = (v7 - 1) >> 1;
    v13 = v11;
    v14 = (a1 + 40);
    do
    {
      v15 = *v13++;
      *v14++ = v15;
      --v12;
    }

    while (v12);
    v16 = v10;
    result = *(v11 + v16 * 8);
    *&v6[v16] = result;
  }

  else if (v5 >= 1)
  {
    v8 = *(a2 + 32);
    do
    {
      v9 = *v8++;
      result.n128_u64[0] = v9;
      *v6++ = v9;
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_1D0BE5350(uint64_t result, int a2)
{
  *(result + 24) = 0x10000002CLL;
  *(result + 32) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = &unk_1F4CECE00;
  if (a2 < 0)
  {
    __assert_rtn("CNMatrix", "cnmatrix.h", 419, "nr >= 0");
  }

  *(result + 8) = a2;
  *(result + 12) = 1;
  *(result + 16) = a2;
  *(result + 20) = a2;
  *(result + 32) = result + 40;
  return result;
}

uint64_t sub_1D0BE5400(uint64_t a1, int a2, __n128 a3)
{
  v4 = 0;
  *(a1 + 24) = 0x10000002CLL;
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F4CECD78;
  a3.n128_u64[0] = 0x100000001;
  *&v5 = 0x100000001;
  *(&v5 + 1) = 0x100000001;
  do
  {
    v6 = a1 + v4;
    *(v6 + 64) = 0x100000001;
    *(v6 + 40) = &unk_1F4CDF418;
    *(v6 + 48) = v5;
    *(v6 + 72) = a1 + v4 + 80;
    v4 += 48;
  }

  while (v4 != 2112);
  if (a2 < 0)
  {
    __assert_rtn("CNMatrix", "cnmatrix.h", 419, "nr >= 0");
  }

  *(a1 + 8) = a2;
  *(a1 + 12) = 1;
  *(a1 + 16) = a2;
  *(a1 + 20) = a2;
  (*(*a1 + 16))(a1, a3);
  return a1;
}

void sub_1D0BE5500(_Unwind_Exception *a1)
{
  for (i = 263; i != -1; i -= 6)
  {
    v1[i] = &unk_1F4CD5E28;
  }

  *v1 = &unk_1F4CECDD0;
  _Unwind_Resume(a1);
}

uint64_t sub_1D0BE555C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, uint64_t a20, uint64_t a21, int a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  MEMORY[0x1EEE9AC00](a1, a2, a3, a4);
  v286 = v27;
  v287 = v26;
  v297 = v28;
  v30 = v29;
  v298 = v31;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  if (a19 >= 1)
  {
    v38 = 0;
    do
    {
      sub_1D0BE520C(&v396, *(a11 + 32) + v38);
      v38 += 48;
    }

    while (48 * a19 != v38);
    v39 = 0;
    do
    {
      sub_1D0BE520C(&v396, *(a13 + 32) + v39);
      sub_1D0BE520C(&v396, *(a14 + 32) + v39);
      sub_1D0BE520C(&v396, *(a14 + 32) + v39);
      v39 += 48;
    }

    while (48 * a19 != v39);
  }

  sub_1D0BEB970(&__p, a16, 0);
  HIDWORD(v397.__r_.__value_.__r.__words[2]) = 1;
  v398 = v399;
  v40 = HIDWORD(__p.__r_.__value_.__r.__words[1]);
  LODWORD(v397.__r_.__value_.__l.__data_) = 1;
  HIDWORD(v397.__r_.__value_.__r.__words[0]) = HIDWORD(__p.__r_.__value_.__r.__words[1]);
  LODWORD(v397.__r_.__value_.__r.__words[1]) = HIDWORD(__p.__r_.__value_.__r.__words[1]);
  *(&v397.__r_.__value_.__r.__words[1] + 4) = 0x100000001;
  if (HIDWORD(__p.__r_.__value_.__r.__words[1]))
  {
    v41 = 0;
    v42 = v394;
    v43 = __p.__r_.__value_.__r.__words[1];
    v44 = LODWORD(__p.__r_.__value_.__r.__words[1]) - 1;
    v45 = 1;
    do
    {
      v46 = v42[v43 * v41];
      v47 = v45;
      v48 = v44;
      if (v43 >= 2)
      {
        do
        {
          v46 += v42[v47++];
          --v48;
        }

        while (v48);
      }

      v399[v41++] = v46;
      v45 += v43;
    }

    while (v41 != v40);
  }

  sub_1D0BEB970(&__p, a16, 1);
  HIDWORD(v397.__r_.__value_.__r.__words[2]) = 1;
  v398 = v399;
  v49 = HIDWORD(__p.__r_.__value_.__r.__words[1]);
  LODWORD(v397.__r_.__value_.__l.__data_) = 1;
  HIDWORD(v397.__r_.__value_.__r.__words[0]) = HIDWORD(__p.__r_.__value_.__r.__words[1]);
  LODWORD(v397.__r_.__value_.__r.__words[1]) = HIDWORD(__p.__r_.__value_.__r.__words[1]);
  *(&v397.__r_.__value_.__r.__words[1] + 4) = 0x100000001;
  if (HIDWORD(__p.__r_.__value_.__r.__words[1]))
  {
    v50 = 0;
    v51 = v394;
    v52 = __p.__r_.__value_.__r.__words[1];
    v53 = LODWORD(__p.__r_.__value_.__r.__words[1]) - 1;
    v54 = 1;
    do
    {
      v55 = v51[v52 * v50];
      v56 = v54;
      v57 = v53;
      if (v52 >= 2)
      {
        do
        {
          v55 += v51[v56++];
          --v57;
        }

        while (v57);
      }

      v399[v50++] = v55;
      v54 += v52;
    }

    while (v50 != v49);
  }

  v299 = v35;
  v295 = v30;
  v296 = v37;
  v397.__r_.__value_.__r.__words[2] = 0x100000001;
  *&v58 = 0x100000001;
  *(&v58 + 1) = 0x100000001;
  *&v397.__r_.__value_.__l.__data_ = v58;
  v396 = &unk_1F4CDF158;
  v398 = v399;
  LogLevel = sub_1D0BBCB88(a23, 1, &v396);
  v293 = *(a26 + 64);
  v288 = *(a26 + 32);
  v285 = *(a26 + 33);
  v60 = *(a26 + 40);
  v282 = *(a26 + 88);
  v61 = *(a26 + 72);
  v283 = *(a26 + 96);
  v280 = *(a26 + 80);
  v281 = *(a26 + 56);
  if (a19 >= 1)
  {
    v62 = 0;
    do
    {
      v63 = *(*(a9 + 32) + 4 * v62);
      v64 = *(*(a12 + 32) + 4 * v62);
      if (v63 <= v64)
      {
        ++v62;
      }

      else
      {
        LOWORD(v396) = 2;
        __p.__r_.__value_.__s.__data_[0] = 2;
        cnprint::CNLogFormatter::FormatWarning((v37 + 2344), "%d measurements > %d noise sources in measurement function %d.", v63, v64, ++v62);
        if (*(v37 + 2367) >= 0)
        {
          LOBYTE(v70) = v37 + 40;
        }

        else
        {
          v70 = *(v37 + 2344);
        }

        cnprint::CNPrinter::Print(&v396, &__p, "%s", v65, v66, v67, v68, v69, v70);
      }
    }

    while (v62 != a19);
  }

  if (*a26)
  {
    LogLevel = cnprint::CNPrinter::GetLogLevel(LogLevel);
    if (LogLevel <= 1)
    {
      LOWORD(v396) = 2;
      __p.__r_.__value_.__s.__data_[0] = 1;
      v71 = cnprint::CNLogFormatter::FormatWarning((v37 + 2344), "PredictAndUpdate is only compatible with NewtonRaphson solver.");
      if (*(v37 + 2367) >= 0)
      {
        LOBYTE(v77) = v71;
      }

      else
      {
        v77 = *(v37 + 2344);
      }

      cnprint::CNPrinter::Print(&v396, &__p, "%s", v72, v73, v74, v75, v76, v77);
    }
  }

  if (*(a26 + 4) >= 2 && cnprint::CNPrinter::GetLogLevel(LogLevel) <= 1)
  {
    LOWORD(v396) = 2;
    __p.__r_.__value_.__s.__data_[0] = 1;
    v78 = cnprint::CNLogFormatter::FormatWarning((v37 + 2344), "PredictAndUpdate is only compatible with single-iteration least squares solutions.");
    if (*(v37 + 2367) >= 0)
    {
      LOBYTE(v84) = v78;
    }

    else
    {
      v84 = *(v37 + 2344);
    }

    cnprint::CNPrinter::Print(&v396, &__p, "%s", v79, v80, v81, v82, v83, v84);
  }

  v85 = *(a26 + 8);
  v397.__r_.__value_.__r.__words[2] = 0x10000002CLL;
  *&v397.__r_.__value_.__l.__data_ = xmmword_1D0EA1270;
  v396 = &unk_1F4CECE00;
  v398 = v399;
  v86 = sub_1D0BBCB88(a9, 1, &v396);
  v87 = v35;
  if (v85 < *v398)
  {
    v86 = cnprint::CNPrinter::GetLogLevel(v86);
    if (v86 <= 1)
    {
      LOWORD(v396) = 2;
      __p.__r_.__value_.__s.__data_[0] = 1;
      v88 = cnprint::CNLogFormatter::FormatWarning((v37 + 2344), "PredictAndUpdate is only compatible with QR factorizations of unconstrained size.");
      if (*(v37 + 2367) >= 0)
      {
        LOBYTE(v94) = v88;
      }

      else
      {
        v94 = *(v37 + 2344);
      }

      cnprint::CNPrinter::Print(&v396, &__p, "%s", v89, v90, v91, v92, v93, v94);
    }
  }

  v95 = v30;
  if (*(a26 + 89) == 1)
  {
    v86 = cnprint::CNPrinter::GetLogLevel(v86);
    if (v86 <= 1)
    {
      LOWORD(v396) = 2;
      __p.__r_.__value_.__s.__data_[0] = 1;
      v96 = cnprint::CNLogFormatter::FormatWarning((v37 + 2344), "PredictAndUpdate is only compatible with dense prediction.");
      if (*(v37 + 2367) >= 0)
      {
        LOBYTE(v102) = v96;
      }

      else
      {
        v102 = *(v37 + 2344);
      }

      cnprint::CNPrinter::Print(&v396, &__p, "%s", v97, v98, v99, v100, v101, v102);
    }
  }

  if ((v288 & 1) == 0 && v285 && cnprint::CNPrinter::GetLogLevel(v86) <= 1)
  {
    LOWORD(v396) = 2;
    __p.__r_.__value_.__s.__data_[0] = 1;
    v103 = cnprint::CNLogFormatter::FormatWarning((v37 + 2344), "Local hypothesis testing implies global hypothesis testing.  Global hypothesis testing will be enabled.");
    if (*(v37 + 2367) >= 0)
    {
      LOBYTE(v109) = v103;
    }

    else
    {
      v109 = *(v37 + 2344);
    }

    cnprint::CNPrinter::Print(&v396, &__p, "%s", v104, v105, v106, v107, v108, v109);
  }

  if (*(v33 + 8) && *(v33 + 12))
  {
    v110 = v37 + 8;
    v111 = v33;
  }

  else
  {
    if ((v299 & 0x80000000) != 0)
    {
      __assert_rtn("Zeros", "cnmatrix.h", 3098, "nr >= 0");
    }

    v397.__r_.__value_.__r.__words[2] = 0x10000000ALL;
    v396 = &unk_1F4CEAE48;
    v398 = v399;
    v397.__r_.__value_.__r.__words[0] = v299 | 0x100000000;
    LODWORD(v397.__r_.__value_.__r.__words[1]) = v299;
    HIDWORD(v397.__r_.__value_.__r.__words[1]) = v299;
    if (v299 > 3)
    {
      v112 = &v399[2 * v299];
      bzero(v399, 16 * ((v299 - 1) >> 1));
      *(v112 - 2) = 0;
      *(v112 - 1) = 0;
    }

    else if (v299)
    {
      bzero(v399, 8 * v299);
    }

    v110 = v37 + 8;
    v111 = &v396;
  }

  sub_1D0B894B0(v110, v111);
  if (*(v287 + 8) && *(v287 + 12))
  {
    v113 = v37 + 128;
    v114 = v287;
  }

  else
  {
    if ((v299 & 0x80000000) != 0)
    {
      __assert_rtn("Zeros", "cnmatrix.h", 3056, "n >= 0");
    }

    v397.__r_.__value_.__r.__words[2] = 0xA0000000ALL;
    v396 = &unk_1F4CE2180;
    v398 = v399;
    v115 = v299 * v299;
    LODWORD(v397.__r_.__value_.__l.__data_) = v299;
    HIDWORD(v397.__r_.__value_.__r.__words[0]) = v299;
    LODWORD(v397.__r_.__value_.__r.__words[1]) = v299 * v299;
    HIDWORD(v397.__r_.__value_.__r.__words[1]) = v299;
    if ((v299 * v299) > 3)
    {
      v116 = &v399[2 * v115];
      bzero(v399, 16 * ((v115 - 1) >> 1));
      *(v116 - 2) = 0;
      *(v116 - 1) = 0;
    }

    else if (v115 >= 1)
    {
      bzero(v399, 8 * v299 * v299);
    }

    v113 = v37 + 128;
    v114 = &v396;
  }

  sub_1D0B894B0(v113, v114);
  if (!*(v298 + 8) || !*(v298 + 12))
  {
    v397.__r_.__value_.__r.__words[2] = 0x10000000ALL;
    *&v397.__r_.__value_.__l.__data_ = xmmword_1D0E87BE0;
    v396 = &unk_1F4CEAE48;
    v398 = v399;
    sub_1D0B89390(v37 + 128, v37 + 8, &v396);
    sub_1D0B894B0(v37 + 968, &v396);
  }

  if ((v299 & 0x80000000) != 0)
  {
    __assert_rtn("Zeros", "cnmatrix.h", 3099, "nc >= 0");
  }

  v397.__r_.__value_.__r.__words[2] = 0xA0000000ALL;
  v396 = &unk_1F4CE2180;
  v398 = v399;
  v117 = v30 * v299;
  v397.__r_.__value_.__r.__words[0] = __PAIR64__(v299, v30);
  LODWORD(v397.__r_.__value_.__r.__words[1]) = v30 * v299;
  HIDWORD(v397.__r_.__value_.__r.__words[1]) = v30;
  if ((v30 * v299) > 3)
  {
    v118 = &v399[2 * v117];
    bzero(v399, 16 * ((v117 - 1) >> 1));
    *(v118 - 2) = 0;
    *(v118 - 1) = 0;
  }

  else if (v117 >= 1)
  {
    bzero(v399, 8 * v30 * v299);
  }

  sub_1D0B894B0(v37 + 2392, &v396);
  v397.__r_.__value_.__r.__words[2] = 0x10000000ALL;
  v396 = &unk_1F4CEAE48;
  v398 = v399;
  v397.__r_.__value_.__r.__words[0] = v30 | 0x100000000;
  LODWORD(v397.__r_.__value_.__r.__words[1]) = v30;
  HIDWORD(v397.__r_.__value_.__r.__words[1]) = v30;
  if (v30 > 3)
  {
    v119 = &v399[2 * v30];
    bzero(v399, 16 * ((v30 - 1) >> 1));
    *(v119 - 2) = 0;
    *(v119 - 1) = 0;
  }

  else if (v30)
  {
    bzero(v399, 8 * v30);
  }

  sub_1D0B894B0(v37 + 3232, &v396);
  sub_1D0B894B0(v37 + 3352, v286);
  *(v37 + 2180) = 0;
  *(v37 + 2176) = 0;
  v397.__r_.__value_.__r.__words[2] = 0x10000002CLL;
  *&v397.__r_.__value_.__l.__data_ = xmmword_1D0EA1270;
  v396 = &unk_1F4CECE00;
  v398 = v399;
  sub_1D0BBCB88(a9, 1, &v396);
  v120 = *v398;
  if (*v398 < 0x2D)
  {
    v284 = *v398;
    v130 = *(a21 + 8);
    v129 = *(a21 + 12);
    if (v130 <= v129)
    {
      v131 = *(a21 + 12);
    }

    else
    {
      v131 = *(a21 + 8);
    }

    if (v130 && v129 && v131)
    {
      v133 = *(a9 + 8);
      v132 = *(a9 + 12);
      v134 = v133 <= v132 ? *(a9 + 12) : *(a9 + 8);
      if (!v133 || !v132 || v134 <= v131)
      {
        v397.__r_.__value_.__r.__words[2] = 0x10000002CLL;
        *&v397.__r_.__value_.__l.__data_ = xmmword_1D0EA1270;
        v396 = &unk_1F4CECE00;
        v398 = v399;
        sub_1D0BBCB88(a9, 1, &v396);
        sub_1D0BA196C((v37 + 2320));
        v254 = *(a9 + 8);
        if (v254)
        {
          v255 = *(a9 + 12);
          if (v255)
          {
            if (v255 | v254)
            {
              v256 = 0;
              v257 = *(a9 + 32);
              do
              {
                v258 = v256;
                if (*(v257 + 4 * v256) >= 1)
                {
                  v259 = 0;
                  do
                  {
                    v260 = *(*(a21 + 32) + 8 * v258);
                    LODWORD(v396) = *(v260 + 8);
                    if (*(v260 + 39) < 0)
                    {
                      sub_1D0BC39B4(&v397, *(v260 + 16), *(v260 + 24));
                      v257 = *(a9 + 32);
                    }

                    else
                    {
                      v261 = *(v260 + 16);
                      v397.__r_.__value_.__r.__words[2] = *(v260 + 32);
                      *&v397.__r_.__value_.__l.__data_ = v261;
                    }

                    if (*(v257 + 4 * v258) >= 2)
                    {
                      std::to_string(&__p, v259);
                      v262 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
                      v263 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : __p.__r_.__value_.__l.__size_;
                      std::string::append(&v397, v262, v263);
                      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(__p.__r_.__value_.__l.__data_);
                      }
                    }

                    sub_1D0BBCC94(v296 + 2320, &v396);
                    if (SHIBYTE(v397.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v397.__r_.__value_.__l.__data_);
                    }

                    ++v259;
                    v257 = *(a9 + 32);
                  }

                  while (v259 < *(v257 + 4 * v258));
                  v254 = *(a9 + 8);
                  v255 = *(a9 + 12);
                  v95 = v30;
                }

                if (v254 <= v255)
                {
                  v264 = v255;
                }

                else
                {
                  v264 = v254;
                }

                if (!v254)
                {
                  break;
                }

                if (!v255)
                {
                  break;
                }

                v256 = v258 + 1;
              }

              while (v264 > v258 + 1);
            }
          }
        }
      }
    }

    sub_1D0BA196C((v296 + 2296));
    sub_1D0BA196C((v296 + 2272));
    sub_1D0B94CA4(v460, v33);
    sub_1D0B94CA4(&v459, v298);
    sub_1D0B94CA4(v458, v297);
    v455 = 0x10000000ALL;
    v451 = v299;
    v452 = 1;
    v453 = v299;
    v454 = v299;
    v450 = &unk_1F4CEAE48;
    v456 = &v457;
    v447 = 0xA0000000ALL;
    v135 = v299 * v299;
    v442 = &unk_1F4CE2180;
    v448 = v449;
    v443 = v299;
    v444 = v299;
    v445 = v299 * v299;
    v446 = v299;
    if ((v299 * v299) > 3)
    {
      v136 = &v449[v135];
      bzero(v449, 16 * ((v135 - 1) >> 1));
      *(v136 - 2) = 0;
      *(v136 - 1) = 0;
    }

    else if (v135 >= 1)
    {
      bzero(v449, 8 * v299 * v299);
    }

    v439 = 0xA0000000ALL;
    v434 = &unk_1F4CE2180;
    v440 = v441;
    v435 = v299;
    v436 = v299;
    v437 = v299 * v299;
    v438 = v299;
    if (v135 > 3)
    {
      v137 = &v441[v135];
      bzero(v441, 16 * ((v135 - 1) >> 1));
      *(v137 - 2) = 0;
      *(v137 - 1) = 0;
    }

    else if (v135 >= 1)
    {
      bzero(v441, 8 * v299 * v299);
    }

    v431 = 0xA0000000ALL;
    v426 = &unk_1F4CE2180;
    v432 = v433;
    v427 = v299;
    v428 = v95;
    v429 = v117;
    v430 = v299;
    if (v117 > 3)
    {
      v138 = &v433[v117];
      bzero(v433, 16 * ((v117 - 1) >> 1));
      *(v138 - 2) = 0;
      *(v138 - 1) = 0;
    }

    else if (v117 >= 1)
    {
      bzero(v433, 8 * v117);
    }

    v423 = 0x10000000ALL;
    v422 = xmmword_1D0E87BE0;
    v421 = &unk_1F4CED1E8;
    v424 = &v425;
    v418 = 0x10000000ALL;
    v417 = xmmword_1D0E87BE0;
    v416 = &unk_1F4CED1E8;
    v419 = &v420;
    v139 = 1.0;
    v140 = 1.0;
    if (a15 < 1)
    {
LABEL_168:
      v413 = 0x10000002CLL;
      v187 = v284;
      v409 = v284;
      v410 = 1;
      v411 = v284;
      v412 = v284;
      v408 = &unk_1F4CECE48;
      v414 = &v415;
      v405 = 0x10000002CLL;
      v401 = v284;
      v402 = 1;
      v403 = v284;
      v404 = v284;
      v400 = &unk_1F4CECE48;
      v406 = &v407;
      v397.__r_.__value_.__r.__words[2] = 0xA0000002CLL;
      v397.__r_.__value_.__r.__words[0] = __PAIR64__(v87, v284);
      LODWORD(v397.__r_.__value_.__r.__words[1]) = v284 * v87;
      HIDWORD(v397.__r_.__value_.__r.__words[1]) = v284;
      v396 = &unk_1F4CED4F0;
      v398 = v399;
      v393 = 0xA0000002CLL;
      __p.__r_.__value_.__r.__words[0] = &unk_1F4CED4F0;
      __p.__r_.__value_.__l.__size_ = __PAIR64__(v95, v284);
      LODWORD(__p.__r_.__value_.__r.__words[2]) = v284 * v95;
      HIDWORD(__p.__r_.__value_.__r.__words[2]) = v284;
      v394 = v395;
      if (a19 < 1)
      {
LABEL_236:
        v378 = 0x1400000040;
        v373 = &unk_1F4CED5C8;
        v380 = 0;
        v379 = 0;
        v374 = v187 + v295 + v87;
        v375 = v295 + v87;
        v376 = v374 * (v295 + v87);
        v377 = v374;
        sub_1D0BEDEDC();
      }

      v188 = 0;
      v291 = 0;
      v278 = &v372[v87];
      v274 = 8 * v87;
      v279 = 8 * v135;
      v276 = &v304[v279];
      v277 = &v343[v279 / 8];
      v275 = 16 * ((v87 - 1) >> 1);
      v290 = 16 * ((v135 - 1) >> 1);
      v292 = vdupq_n_s64(4uLL);
      while (1)
      {
        v370 = 0x10000000ALL;
        v365 = &unk_1F4CEAE48;
        v371 = v372;
        v366 = v87;
        v367 = 1;
        v368 = v87;
        v369 = v87;
        if (v87 >= 4)
        {
          bzero(v372, v275);
          *(v278 - 2) = 0;
          *(v278 - 1) = 0;
        }

        else if (v87)
        {
          bzero(v372, v274);
        }

        v341 = 0xA0000000ALL;
        v339 = &unk_1F4CE2180;
        v342 = v343;
        LODWORD(v340) = v299;
        *(&v340 + 4) = __PAIR64__(v135, v299);
        HIDWORD(v340) = v299;
        if (v135 >= 4)
        {
          bzero(v343, v290);
          *(v277 - 2) = 0;
          *(v277 - 1) = 0;
        }

        else if (v135 >= 1)
        {
          bzero(v343, v279);
        }

        v302 = 0xA0000000ALL;
        v300 = &unk_1F4CE2180;
        v303 = v304;
        LODWORD(v301) = v299;
        *(&v301 + 4) = __PAIR64__(v135, v299);
        HIDWORD(v301) = v299;
        if (v135 >= 4)
        {
          bzero(v304, v290);
          *(v276 - 2) = 0;
          *(v276 - 1) = 0;
        }

        else if (v135 >= 1)
        {
          bzero(v304, v279);
        }

        *&v189 = 0x100000001;
        *(&v189 + 1) = 0x100000001;
        v190 = v292;
        if (a22 >= 1)
        {
          break;
        }

LABEL_205:
        v351 = 0x100000001;
        v350 = v189;
        v349 = &unk_1F4CDF418;
        v352 = &v353;
        v383 = 0xA00000001;
        v382 = xmmword_1D0EA12E0;
        v381 = &unk_1F4CED1A0;
        v384 = v385;
        v346 = 0x100000001;
        v345 = v189;
        v344 = &unk_1F4CDF418;
        v347 = &v348;
        v210 = *(*(a20 + 32) + 8 * v188);
        v211 = sub_1D0BE520C(&v359, *(a13 + 32) + 48 * v188);
        if (v210(&v365, &v359, *(*(a21 + 32) + 8 * v188), &v349, &v381, &v344, v211))
        {
          return 3;
        }

        v388 = 0xA0000000ALL;
        v387 = xmmword_1D0E84630;
        v386 = &unk_1F4CE2180;
        v389 = &v390;
        sub_1D0B89390(&v300, &v442, &v386);
        v361 = 0xA0000000ALL;
        v360 = xmmword_1D0E84630;
        v359 = &unk_1F4CE2180;
        v362 = &v363;
        sub_1D0B88838(&v339, &v386, &v359);
        v318 = 0xA00000001;
        v317 = xmmword_1D0EA12E0;
        v316 = &unk_1F4CED1A0;
        v319 = &v320;
        sub_1D0B89390(&v381, &v359, &v316);
        v361 = 0xA0000000ALL;
        v360 = xmmword_1D0E84630;
        v359 = &unk_1F4CE2180;
        v362 = &v363;
        sub_1D0B89390(&v300, &v426, &v359);
        v388 = 0xA00000001;
        v387 = xmmword_1D0EA12E0;
        v386 = &unk_1F4CED1A0;
        v389 = &v390;
        sub_1D0B89390(&v381, &v359, &v386);
        v212 = v291 + *(*(a9 + 32) + 4 * v188) - 1;
        v361 = 0x100000001;
        v359 = &unk_1F4CDF158;
        v362 = &v363;
        v213 = (v212 - v291);
        *&v214 = 0x100000001;
        *(&v214 + 1) = 0x100000001;
        if (v212 == v291)
        {
          v215 = 0;
          v360 = v214;
          LODWORD(v363) = v291;
          v216 = 1;
          v217 = 1;
        }

        else if (v212 - v291 < 0)
        {
          v216 = 0;
          v217 = 0;
          v360 = 0uLL;
          v215 = 1;
        }

        else
        {
          v217 = v213 + 1;
          LODWORD(v360) = 1;
          DWORD1(v360) = v213 + 1;
          DWORD2(v360) = v213 + 1;
          HIDWORD(v360) = 1;
          v218 = (4 * ~(v213 >> 2)) | 0xFFFFFFFF80000000;
          v219 = vdupq_n_s64(v213);
          v220 = v364;
          v221 = 13;
          v222 = xmmword_1D0E7DD30;
          v223 = xmmword_1D0E84440;
          do
          {
            v224 = vmovn_s64(vcgeq_u64(v219, v222));
            if (vuzp1_s16(v224, *v219.i8).u8[0])
            {
              *(v220 - 3) = v291 + v221 - 13;
            }

            if (vuzp1_s16(v224, *&v219).i8[2])
            {
              *(v220 - 2) = v291 + v221 - 12;
            }

            if (vuzp1_s16(*&v219, vmovn_s64(vcgeq_u64(v219, *&v223))).i32[1])
            {
              *(v220 - 1) = v291 + v221 - 11;
              *v220 = v291 + v221 - 10;
            }

            v225 = vdupq_n_s64(4uLL);
            v223 = vaddq_s64(v223, v225);
            v222 = vaddq_s64(v222, v225);
            v221 += 4;
            v220 += 4;
          }

          while (v218 + v221 != 13);
          v215 = 0;
          v216 = 1;
        }

        v336 = 0x100000001;
        v331 = &unk_1F4CDF158;
        v337 = v338;
        v332 = v217;
        v333 = v216;
        v334 = v217 * v216;
        v335 = v217;
        if (v217)
        {
          v226 = 0;
          for (i = 0; i != v217; ++i)
          {
            if ((v215 & 1) == 0)
            {
              v228 = 0;
              do
              {
                v338[i + v335 * v228] = *&v364[4 * v226 - 4 + 4 * v228];
                ++v228;
              }

              while (v216 != v228);
            }

            v226 += v216;
          }
        }

        sub_1D0BE520C(&v305, *(a14 + 32) + 48 * v188);
        v308 = 0x100000001;
        *&v229 = 0x100000001;
        *(&v229 + 1) = 0x100000001;
        v307 = v229;
        v306 = &unk_1F4CDF418;
        v309 = &v310;
        sub_1D0B89390(&v344, &v305, &v306);
        v230 = DWORD1(v345);
        v231 = v345;
        v378 = 0x100000001;
        v373 = &unk_1F4CDF418;
        v379 = &v380;
        v374 = DWORD1(v345);
        v375 = v345;
        v376 = v345 * DWORD1(v345);
        v377 = DWORD1(v345);
        *&v232 = 0x100000001;
        *(&v232 + 1) = 0x100000001;
        if (DWORD1(v345))
        {
          v233 = 0;
          v234 = 0;
          v235 = HIDWORD(v345);
          v236 = v347;
          do
          {
            v237 = v233;
            v238 = v234;
            for (j = v231; j; --j)
            {
              *(&v380 + v238) = v236[v237];
              v238 += v230;
              ++v237;
            }

            ++v234;
            v233 += v235;
          }

          while (v234 != v230);
        }

        v313 = 0x100000001;
        v312 = v232;
        v311 = &unk_1F4CDF418;
        v314 = &v315;
        sub_1D0B89390(&v306, &v373, &v311);
        v328 = 0x100000001;
        *&v240 = 0x100000001;
        *(&v240 + 1) = 0x100000001;
        v327 = v240;
        v326 = &unk_1F4CDF418;
        v329 = &v330;
        LOBYTE(v359) = 0;
        sub_1D0B9F748(&v311, &v326, &v359);
        v323 = 0x100000001;
        *&v241 = 0x100000001;
        *(&v241 + 1) = 0x100000001;
        v322 = v241;
        v321 = &unk_1F4CDF418;
        v324 = &v325;
        v356 = 0x100000001;
        v355 = v241;
        v354 = &unk_1F4CDF158;
        v357 = v358;
        v361 = 0x100000004;
        v360 = xmmword_1D0E7DCE0;
        v359 = &unk_1F4CDEBB8;
        v362 = &v363;
        sub_1D0B9F868(&v326, &v354, &v359, &v321);
        v356 = 0x200000002;
        v355 = xmmword_1D0E83F70;
        v354 = &unk_1F4CE0268;
        v357 = v358;
        sub_1D0BED87C(&v321, 0, &v354);
        v242 = DWORD1(v355);
        v135 = v299 * v299;
        v187 = v284;
        if (DWORD1(v355))
        {
          v243 = 0;
          v244 = v355;
          v245 = v357;
          v246 = v355 - 1;
          v247 = 1;
          do
          {
            v248 = v245[v244 * v243];
            v249 = v247;
            v250 = v246;
            if (v244 >= 2)
            {
              do
              {
                v248 = v248 * v245[v249++];
                --v250;
              }

              while (v250);
            }

            *&v364[8 * v243++ - 4] = v248;
            v247 += v244;
          }

          while (v243 != v242);
        }

        v251 = v363;
        sub_1D0BE520C(&v326, *(a11 + 32) + 48 * v188);
        v356 = 0x100000001;
        *&v252 = 0x100000001;
        *(&v252 + 1) = 0x100000001;
        v355 = v252;
        v354 = &unk_1F4CDF418;
        v357 = v358;
        sub_1D0B89390(&v321, &v326, &v354);
        sub_1D0BED9C8(&v359, &v408, &v331);
        sub_1D0BEDA98(&v359, SDWORD2(v355), v357);
        v356 = 0x100000001;
        *&v253 = 0x100000001;
        *(&v253 + 1) = 0x100000001;
        v355 = v253;
        v354 = &unk_1F4CDF418;
        v357 = v358;
        sub_1D0B89390(&v321, &v349, &v354);
        sub_1D0BED9C8(&v359, &v400, &v331);
        sub_1D0BEDA98(&v359, SDWORD2(v355), v357);
        v356 = 0xA00000001;
        v355 = xmmword_1D0EA12E0;
        v354 = &unk_1F4CED1A0;
        v357 = v358;
        sub_1D0B89390(&v321, &v316, &v354);
        sub_1D0BEDB0C(&v359, &v396, &v331);
        sub_1D0BEDDF0(&v359, &v354);
        v356 = 0xA00000001;
        v355 = xmmword_1D0EA12E0;
        v354 = &unk_1F4CED1A0;
        v357 = v358;
        sub_1D0B89390(&v321, &v386, &v354);
        sub_1D0BEDB0C(&v359, &__p, &v331);
        sub_1D0BEDDF0(&v359, &v354);
        v139 = v139 * v251;
        v291 += *(*(a9 + 32) + 4 * v188++);
        v87 = v299;
        if (v188 == a19)
        {
          goto LABEL_236;
        }
      }

      v191 = 0;
      v192 = 0;
      v193 = *(a23 + 32);
      while (1)
      {
        v194 = v192 + *(v193 + 4 * v191) - 1;
        v388 = 0xA00000001;
        v386 = &unk_1F4CED418;
        v389 = &v390;
        v195 = (v194 - v192);
        if (v194 == v192)
        {
          v196 = 0;
          v387 = v189;
          LODWORD(v390) = v192;
          v197 = 1;
          v198 = 1;
        }

        else if (v194 - v192 < 0)
        {
          v197 = 0;
          v198 = 0;
          v387 = 0uLL;
          v196 = 1;
        }

        else
        {
          v198 = v195 + 1;
          LODWORD(v387) = 1;
          DWORD1(v387) = v195 + 1;
          DWORD2(v387) = v195 + 1;
          HIDWORD(v387) = 1;
          v199 = (4 * ~(v195 >> 2)) | 0xFFFFFFFF80000000;
          v200 = vdupq_n_s64(v195);
          v201 = &v391;
          v202 = 13;
          v203 = xmmword_1D0E7DD30;
          v204 = xmmword_1D0E84440;
          do
          {
            v205 = vmovn_s64(vcgeq_u64(v200, v203));
            if (vuzp1_s16(v205, *v200.i8).u8[0])
            {
              *(v201 - 3) = v192 + v202 - 13;
            }

            if (vuzp1_s16(v205, *&v200).i8[2])
            {
              *(v201 - 2) = v192 + v202 - 12;
            }

            if (vuzp1_s16(*&v200, vmovn_s64(vcgeq_u64(v200, *&v204))).i32[1])
            {
              *(v201 - 1) = v192 + v202 - 11;
              *v201 = v192 + v202 - 10;
            }

            v204 = vaddq_s64(v204, v190);
            v203 = vaddq_s64(v203, v190);
            v202 += 4;
            v201 += 4;
          }

          while (v199 + v202 != 13);
          v196 = 0;
          v197 = 1;
        }

        v361 = 0x10000000ALL;
        v359 = &unk_1F4CED1E8;
        v362 = &v363;
        *&v360 = __PAIR64__(v197, v198);
        DWORD2(v360) = v198 * v197;
        HIDWORD(v360) = v198;
        if (v198)
        {
          v206 = 0;
          for (k = 0; k != v198; ++k)
          {
            if ((v196 & 1) == 0)
            {
              v208 = 0;
              do
              {
                *&v364[4 * k - 4 + 4 * HIDWORD(v360) * v208] = *(&v390 + v206 + v208);
                ++v208;
              }

              while (v197 != v208);
            }

            v206 += v197;
          }
        }

        sub_1D0B9F5D4(&v421, &v359);
        v356 = 0x10000000ALL;
        v355 = xmmword_1D0E87BE0;
        v354 = &unk_1F4CEAE48;
        v357 = v358;
        v388 = 0xA0000000ALL;
        v387 = xmmword_1D0E84630;
        v386 = &unk_1F4CE2180;
        v389 = &v390;
        v383 = 0xA0000000ALL;
        v382 = xmmword_1D0E84630;
        v381 = &unk_1F4CE2180;
        v384 = v385;
        v209 = *(*(a24 + 32) + 8 * v191);
        sub_1D0BEB9D4(&v359, v460, &v421);
        sub_1D0BEB9D4(&v316, &v450, &v421);
        if (v209(&v359, &v316, *(*(a25 + 32) + 8 * v191), &v354, &v386, &v381, *(*(a10 + 32) + 8 * v188)))
        {
          return 22;
        }

        sub_1D0BEB9D4(&v359, &v365, &v421);
        sub_1D0BEC078(&v359, SDWORD2(v355), v357);
        sub_1D0BEBF0C(&v359, &v339, &v421, &v421);
        sub_1D0BEC0EC(&v359, &v386);
        sub_1D0BEBF0C(&v359, &v300, &v421, &v421);
        sub_1D0BEC0EC(&v359, &v381);
        v193 = *(a23 + 32);
        v192 += *(v193 + 4 * v191++);
        *&v189 = 0x100000001;
        *(&v189 + 1) = 0x100000001;
        v190 = v292;
        if (v191 == a22)
        {
          goto LABEL_205;
        }
      }
    }

    else
    {
      v141 = 0;
      v142 = 0;
      v143 = 0;
      v144 = *(a16 + 32);
      v145 = 1;
      v289 = vdupq_n_s64(4uLL);
      do
      {
        v146 = *(v144 + 4 * v141);
        v361 = 0xA00000001;
        v359 = &unk_1F4CED418;
        v362 = &v363;
        v294 = v145;
        if (v146 == 1)
        {
          v147 = 0;
          *&v148 = 0x100000001;
          *(&v148 + 1) = 0x100000001;
          v360 = v148;
          LODWORD(v363) = 0;
          v149 = 1;
          LODWORD(v146) = 1;
        }

        else if (v146 <= 0)
        {
          v149 = 0;
          LODWORD(v146) = 0;
          v360 = 0uLL;
          v147 = 1;
        }

        else
        {
          v150 = 0;
          LODWORD(v360) = 1;
          DWORD1(v360) = v146;
          *(&v360 + 1) = v146 | 0x100000000;
          v151 = v364;
          v152 = xmmword_1D0E7DD30;
          v153 = xmmword_1D0E84440;
          v154 = vdupq_n_s64(v146 - 1);
          do
          {
            v155 = vmovn_s64(vcgeq_u64(v154, v152));
            if (vuzp1_s16(v155, *v152.i8).u8[0])
            {
              *(v151 - 3) = v150;
            }

            if (vuzp1_s16(v155, *&v152).i8[2])
            {
              *(v151 - 2) = v150 + 1;
            }

            if (vuzp1_s16(*&v152, vmovn_s64(vcgeq_u64(v154, *&v153))).i32[1])
            {
              *(v151 - 1) = v150 + 2;
              *v151 = v150 + 3;
            }

            v150 += 4;
            v156 = vdupq_n_s64(4uLL);
            v153 = vaddq_s64(v153, v156);
            v152 = vaddq_s64(v152, v156);
            v151 += 4;
          }

          while (((v146 + 3) & 0xFFFFFFFC) != v150);
          v147 = 0;
          v149 = 1;
        }

        v393 = 0x10000000ALL;
        __p.__r_.__value_.__r.__words[0] = &unk_1F4CED1E8;
        v394 = v395;
        __p.__r_.__value_.__l.__size_ = __PAIR64__(v149, v146);
        LODWORD(__p.__r_.__value_.__r.__words[2]) = v146 * v149;
        HIDWORD(__p.__r_.__value_.__r.__words[2]) = v146;
        if (v146)
        {
          v157 = 0;
          v158 = 0;
          do
          {
            if ((v147 & 1) == 0)
            {
              v159 = 0;
              do
              {
                v395[v158 + HIDWORD(__p.__r_.__value_.__r.__words[2]) * v159] = *&v364[4 * v157 - 4 + 4 * v159];
                ++v159;
              }

              while (v149 != v159);
            }

            ++v158;
            v157 += v149;
          }

          while (v158 != v146);
          v160 = __p.__r_.__value_.__r.__words[1];
          v149 = HIDWORD(__p.__r_.__value_.__r.__words[1]);
        }

        else
        {
          v160 = 0;
        }

        v397.__r_.__value_.__r.__words[2] = 0x10000000ALL;
        v396 = &unk_1F4CED1E8;
        v398 = v399;
        v397.__r_.__value_.__r.__words[0] = __PAIR64__(v149, v160);
        v161 = v160 * v149;
        v397.__r_.__value_.__l.__size_ = __PAIR64__(v160, v161);
        if (v161 >= 1)
        {
          v162 = v395;
          v163 = v399;
          do
          {
            v164 = *v162++;
            *v163++ = v164 + v142;
            --v161;
          }

          while (v161);
        }

        sub_1D0B9F5D4(&v421, &v396);
        v165 = *(*(a16 + 32) + 4 * (*(a16 + 20) + v141));
        v361 = 0xA00000001;
        v359 = &unk_1F4CED418;
        v362 = &v363;
        if (v165 == 1)
        {
          v166 = 0;
          *&v167 = 0x100000001;
          *(&v167 + 1) = 0x100000001;
          v360 = v167;
          LODWORD(v363) = 0;
          v168 = 1;
          LODWORD(v165) = 1;
        }

        else if (v165 <= 0)
        {
          v168 = 0;
          LODWORD(v165) = 0;
          v360 = 0uLL;
          v166 = 1;
        }

        else
        {
          v169 = 0;
          LODWORD(v360) = 1;
          DWORD1(v360) = v165;
          *(&v360 + 1) = v165 | 0x100000000;
          v170 = v364;
          v171 = xmmword_1D0E7DD30;
          v172 = xmmword_1D0E84440;
          v173 = vdupq_n_s64(v165 - 1);
          do
          {
            v174 = vmovn_s64(vcgeq_u64(v173, v171));
            if (vuzp1_s16(v174, *v171.i8).u8[0])
            {
              *(v170 - 3) = v169;
            }

            if (vuzp1_s16(v174, *&v171).i8[2])
            {
              *(v170 - 2) = v169 + 1;
            }

            if (vuzp1_s16(*&v171, vmovn_s64(vcgeq_u64(v173, *&v172))).i32[1])
            {
              *(v170 - 1) = v169 + 2;
              *v170 = v169 + 3;
            }

            v169 += 4;
            v172 = vaddq_s64(v172, v289);
            v171 = vaddq_s64(v171, v289);
            v170 += 4;
          }

          while (((v165 + 3) & 0xFFFFFFFC) != v169);
          v166 = 0;
          v168 = 1;
        }

        v393 = 0x10000000ALL;
        __p.__r_.__value_.__r.__words[0] = &unk_1F4CED1E8;
        v394 = v395;
        __p.__r_.__value_.__l.__size_ = __PAIR64__(v168, v165);
        LODWORD(__p.__r_.__value_.__r.__words[2]) = v165 * v168;
        HIDWORD(__p.__r_.__value_.__r.__words[2]) = v165;
        if (v165)
        {
          v175 = 0;
          v176 = 0;
          do
          {
            if ((v166 & 1) == 0)
            {
              v177 = 0;
              do
              {
                v395[v176 + HIDWORD(__p.__r_.__value_.__r.__words[2]) * v177] = *&v364[4 * v175 - 4 + 4 * v177];
                ++v177;
              }

              while (v168 != v177);
            }

            ++v176;
            v175 += v168;
          }

          while (v176 != v165);
          v178 = __p.__r_.__value_.__r.__words[1];
          v168 = HIDWORD(__p.__r_.__value_.__r.__words[1]);
        }

        else
        {
          v178 = 0;
        }

        v397.__r_.__value_.__r.__words[2] = 0x10000000ALL;
        v396 = &unk_1F4CED1E8;
        v398 = v399;
        v397.__r_.__value_.__r.__words[0] = __PAIR64__(v168, v178);
        v179 = v178 * v168;
        v397.__r_.__value_.__l.__size_ = __PAIR64__(v178, v179);
        if (v179 >= 1)
        {
          v180 = v395;
          v181 = v399;
          do
          {
            v182 = *v180++;
            *v181++ = v182 + v143;
            --v179;
          }

          while (v179);
        }

        sub_1D0B9F5D4(&v416, &v396);
        v302 = 0x10000000ALL;
        v300 = &unk_1F4CEAE48;
        v301 = xmmword_1D0E87BE0;
        v303 = v304;
        v393 = 0xA0000000ALL;
        *&__p.__r_.__value_.__r.__words[1] = xmmword_1D0E84630;
        __p.__r_.__value_.__r.__words[0] = &unk_1F4CE2180;
        v394 = v395;
        v361 = 0xA0000000ALL;
        v360 = xmmword_1D0E84630;
        v359 = &unk_1F4CE2180;
        v362 = &v363;
        v183 = v141;
        v184 = *(*(a17 + 32) + 8 * v141);
        sub_1D0BEB9D4(&v396, v460, &v421);
        sub_1D0BEB9D4(&v339, v458, &v416);
        if (v184(&v396, &v339, *(*(a18 + 32) + 8 * v183), &v300, &__p, &v359))
        {
          return 20;
        }

        sub_1D0BEB9D4(&v396, &v450, &v421);
        sub_1D0BEC078(&v396, SDWORD2(v301), v303);
        sub_1D0BEBF0C(&v396, &v442, &v421, &v421);
        sub_1D0BEC0EC(&v396, &__p);
        v341 = 0x10000000ALL;
        v340 = xmmword_1D0E87BE0;
        v339 = &unk_1F4CED1E8;
        v342 = v343;
        v397.__r_.__value_.__r.__words[2] = 0xA0000000ALL;
        *&v397.__r_.__value_.__l.__data_ = xmmword_1D0E84630;
        v396 = &unk_1F4CE2180;
        v398 = v399;
        v185 = sub_1D0BEC1D8(&__p, &v339, &v396);
        v341 = 0xA0000000ALL;
        v340 = xmmword_1D0E84630;
        v339 = &unk_1F4CE2180;
        v342 = v343;
        v388 = 0x10000000ALL;
        v387 = xmmword_1D0E87BE0;
        v386 = &unk_1F4CED1E8;
        v389 = &v390;
        v383 = 0x10000000ALL;
        v382 = xmmword_1D0E87BE0;
        v381 = &unk_1F4CED1E8;
        v384 = v385;
        v397.__r_.__value_.__r.__words[2] = 0x100000028;
        *&v397.__r_.__value_.__l.__data_ = xmmword_1D0EA1280;
        v396 = &unk_1F4CED230;
        v398 = v399;
        v186 = sub_1D0BA5174(&__p, &v386, &v381, &v396, &v339);
        sub_1D0BEBF0C(&v396, &v434, &v421, &v421);
        sub_1D0BEC0EC(&v396, &v339);
        sub_1D0BEBF0C(&v396, &v426, &v421, &v416);
        sub_1D0BEC0EC(&v396, &v359);
        v140 = v140 * v185;
        v145 = (v186 <= v293) & v294;
        v144 = *(a16 + 32);
        v142 += *(v144 + 4 * v183);
        v143 += *(v144 + 4 * (*(a16 + 20) + v183));
        v141 = v183 + 1;
      }

      while (v183 + 1 != a15);
      v95 = v295;
      v87 = v299;
      v139 = 1.0;
      v135 = v299 * v299;
      if (((v186 <= v293) & v294) != 0)
      {
        goto LABEL_168;
      }

      LOWORD(v396) = 2;
      __p.__r_.__value_.__s.__data_[0] = 2;
      v265 = cnprint::CNLogFormatter::FormatWarning((v296 + 2344), "PredictAndUpdate state Jacobian matrix is not invertible.");
      if (*(v296 + 2367) >= 0)
      {
        LOBYTE(v271) = v265;
      }

      else
      {
        v271 = *(v296 + 2344);
      }

      cnprint::CNPrinter::Print(&v396, &__p, "%s", v266, v267, v268, v269, v270, v271);
      sub_1D0B894B0(v296 + 1088, &v450);
      sub_1D0B894B0(v296 + 1208, v287);
      v397.__r_.__value_.__r.__words[2] = 0x10000000ALL;
      *&v397.__r_.__value_.__l.__data_ = xmmword_1D0E87BE0;
      v396 = &unk_1F4CEAE48;
      v398 = v399;
      sub_1D0B89390(v296 + 1208, &v450, &v396);
      sub_1D0B894B0(v296 + 2048, &v396);
      v397.__r_.__value_.__r.__words[2] = 0xA0000000ALL;
      v396 = &unk_1F4CE2180;
      v398 = v399;
      v397.__r_.__value_.__r.__words[0] = __PAIR64__(v299, v295);
      v397.__r_.__value_.__l.__size_ = __PAIR64__(v295, v117);
      if (v117 > 3)
      {
        v272 = &v399[2 * v117];
        bzero(v399, 16 * ((v117 - 1) >> 1));
        *(v272 - 2) = 0;
        *(v272 - 1) = 0;
      }

      else if (v117 >= 1)
      {
        bzero(v399, 8 * v117);
      }

      sub_1D0B894B0(v296 + 2392, &v396);
      v393 = 0x10000000ALL;
      *&__p.__r_.__value_.__r.__words[1] = xmmword_1D0E87BE0;
      __p.__r_.__value_.__r.__words[0] = &unk_1F4CEAE48;
      v394 = v395;
      sub_1D0B89390(v286, v458, &__p);
      v361 = 0x10000000ALL;
      v360 = xmmword_1D0E87BE0;
      v359 = &unk_1F4CEAE48;
      v362 = &v363;
      sub_1D0B89390(v296 + 2392, &v450, &v359);
      v397.__r_.__value_.__r.__words[2] = 0x10000000ALL;
      *&v397.__r_.__value_.__l.__data_ = xmmword_1D0E87BE0;
      v396 = &unk_1F4CEAE48;
      v398 = v399;
      sub_1D0B88838(&__p, &v359, &v396);
      sub_1D0B894B0(v296 + 3232, &v396);
      sub_1D0B894B0(v296 + 3352, v286);
      *(v296 + 2180) = 1;
      return 21;
    }
  }

  else
  {
    v121 = 2;
    LOWORD(v396) = 2;
    __p.__r_.__value_.__s.__data_[0] = 5;
    v122 = cnprint::CNLogFormatter::FormatGeneral((v37 + 2344), "SquareRootInformationFilter::PredictAndUpdate called with %u measurements vs. maximum %u", v120, 44);
    if (*(v37 + 2367) >= 0)
    {
      LOBYTE(v128) = v122;
    }

    else
    {
      v128 = *(v37 + 2344);
    }

    cnprint::CNPrinter::Print(&v396, &__p, "%s", v123, v124, v125, v126, v127, v128);
  }

  return v121;
}

void sub_1D0BEB710(_Unwind_Exception *a1)
{
  sub_1D0E1D72C(&STACK[0xF98]);
  sub_1D0E1DDB8(&STACK[0x1010]);
  sub_1D0E1DDB8(&STACK[0x1088]);
  sub_1D0BEFE04(&STACK[0x28F0]);
  sub_1D0BEFE04(&STACK[0x3930]);
  _Unwind_Resume(a1);
}

uint64_t sub_1D0BEB970(uint64_t result, uint64_t a2, int a3)
{
  v3 = *(a2 + 8);
  *(result + 24) = 0x100000001;
  *result = &unk_1F4CDF158;
  *(result + 8) = v3;
  *(result + 12) = 1;
  *(result + 16) = v3;
  *(result + 20) = v3;
  v4 = (result + 40);
  *(result + 32) = result + 40;
  if (v3)
  {
    v5 = *(a2 + 20) * a3;
    v6 = *(a2 + 32);
    do
    {
      *v4++ = *(v6 + 4 * v5++);
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1D0BEB9D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x10000000ALL;
  *(a1 + 8) = xmmword_1D0E87BE0;
  *(a1 + 32) = a1 + 40;
  *a1 = &unk_1F4CED460;
  *(a1 + 120) = a2;
  *(a1 + 152) = 0x10000000ALL;
  *(a1 + 128) = &unk_1F4CED1E8;
  *(a1 + 136) = xmmword_1D0E87BE0;
  *(a1 + 160) = a1 + 168;
  sub_1D0B9F5D4(a1 + 128, a3);
  v6 = *(a1 + 136);
  v5 = *(a1 + 140);
  *(a1 + 8) = v6;
  *(a1 + 12) = v5;
  v7 = (v5 * v6);
  *(a1 + 16) = v7;
  *(a1 + 20) = v6;
  if (v7 >= 1)
  {
    v8 = *(a1 + 160);
    v9 = *(a2 + 32);
    v10 = *(a1 + 32);
    do
    {
      v11 = *v8++;
      *v10++ = *(v9 + 8 * v11);
      --v7;
    }

    while (v7);
  }

  return a1;
}

uint64_t sub_1D0BEBAAC(uint64_t a1, uint64_t a2, double *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 8);
  v9 = *(a1 + 12);
  if (v8 <= v9)
  {
    v10 = *(a1 + 12);
  }

  else
  {
    v10 = *(a1 + 8);
  }

  if (v8)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = !v11 && v10 == 10;
  if (v12 && ((v14 = *(a2 + 8), v15 = *(a2 + 12), v14 <= v15) ? (v16 = *(a2 + 12)) : (v16 = *(a2 + 8)), v14 ? (v17 = v15 == 0) : (v17 = 1), !v17 ? (v18 = v16 == 10) : (v18 = 0), v18))
  {
    v25 = 0;
    v26 = a3 + 11;
    v27 = *a3;
    do
    {
      v28 = *&v26[v25];
      v29 = (v28 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
      v30 = ((v28 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
      if (v28 >= 0)
      {
        v30 = 0;
        v29 = 0;
      }

      v31 = v28 & 0x7FFFFFFFFFFFFFFFLL;
      if (!v31)
      {
        v29 = 1;
      }

      v32 = v31 <= 0x7FF0000000000000;
      v33 = v31 == 0x7FF0000000000000 || v29;
      if (!v32)
      {
        v33 = 1;
      }

      if ((v33 | v30) == 1)
      {
        LOWORD(v72) = 12;
        LOBYTE(v67) = 4;
        v19 = "f_TenStateGaussMarkov, non-positive time constant specified";
        goto LABEL_23;
      }

      ++v25;
    }

    while (v25 != 10);
    v74 = 0xA0000000ALL;
    v72 = &unk_1F4CE2180;
    v75 = v76;
    v73 = xmmword_1D0E84630;
    bzero(v76, 0x320uLL);
    for (i = 40; i != 920; i += 88)
    {
      *(&v72 + i) = 0x3FF0000000000000;
    }

    v69 = 0xA0000000ALL;
    v67 = &unk_1F4CE2180;
    v70 = v71;
    v68 = xmmword_1D0E84630;
    bzero(v71, 0x320uLL);
    for (j = 40; j != 920; j += 88)
    {
      *(&v67 + j) = 0x3FF0000000000000;
    }

    v64 = 0x10000000ALL;
    v62 = &unk_1F4CEAE48;
    v65 = v66;
    v63 = xmmword_1D0E87BE0;
    memset(v66, 0, sizeof(v66));
    v36 = 40;
    for (k = 40; k != 920; k += 88)
    {
      v38 = v27 / *v26;
      if (v38 <= 1.0e-12)
      {
        v39 = 1.0 - v38;
      }

      else
      {
        v39 = exp(-v38);
      }

      *(&v72 + k) = v39;
      *(&v62 + v36) = *(v26 - 10);
      v36 += 8;
      ++v26;
    }

    v49 = 0x10000000ALL;
    v48 = xmmword_1D0E87BE0;
    v47 = &unk_1F4CEAE48;
    v50 = &v51;
    sub_1D0BA5A78(a1, &v62, &v47);
    v54 = 0x10000000ALL;
    v53 = xmmword_1D0E87BE0;
    v52 = &unk_1F4CEAE48;
    v55 = &v56;
    sub_1D0B89390(&v72, &v47, &v52);
    v59 = 0x10000000ALL;
    v58 = xmmword_1D0E87BE0;
    v57 = &unk_1F4CEAE48;
    v60 = &v61;
    sub_1D0B88838(&v62, &v52, &v57);
    v44 = 0x10000000ALL;
    v42 = &unk_1F4CEAE48;
    v43 = xmmword_1D0E87BE0;
    v45 = v46;
    sub_1D0B88838(&v57, a2, &v42);
    sub_1D0B894B0(a4, &v42);
    sub_1D0B894B0(a5, &v72);
    v44 = 0xA0000000ALL;
    v42 = &unk_1F4CE2180;
    v45 = v46;
    v43 = xmmword_1D0E84630;
    bzero(v46, 0x320uLL);
    for (m = 40; m != 920; m += 88)
    {
      *(&v42 + m) = 0x3FF0000000000000;
    }

    sub_1D0B894B0(a6, &v42);
    return 0;
  }

  else
  {
    LOWORD(v72) = 12;
    LOBYTE(v67) = 4;
    v19 = "f_TenStateGaussMarkov called with inadequate matrices";
LABEL_23:
    cnprint::CNPrinter::Print(&v72, &v67, v19, a4, a5, a6, a7, a8, v41);
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_1D0BEBF0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 24) = 0xA0000000ALL;
  *(a1 + 8) = xmmword_1D0E84630;
  *(a1 + 32) = a1 + 40;
  *a1 = &unk_1F4CED4A8;
  *(a1 + 840) = a2;
  *(a1 + 872) = 0x10000000ALL;
  *(a1 + 848) = &unk_1F4CED1E8;
  *(a1 + 856) = xmmword_1D0E87BE0;
  *(a1 + 880) = a1 + 888;
  *(a1 + 952) = 0x10000000ALL;
  *(a1 + 928) = &unk_1F4CED1E8;
  *(a1 + 936) = xmmword_1D0E87BE0;
  *(a1 + 960) = a1 + 968;
  sub_1D0B9F5D4(a1 + 848, a3);
  sub_1D0B9F5D4(a1 + 928, a4);
  v7 = *(a1 + 864);
  v8 = *(a1 + 944);
  *(a1 + 8) = v7;
  *(a1 + 12) = v8;
  *(a1 + 16) = v8 * v7;
  *(a1 + 20) = v7;
  if (v8)
  {
    v9 = 0;
    v10 = 0;
    v11 = *(a2 + 20);
    v12 = *(a2 + 32);
    do
    {
      if (v7)
      {
        v13 = *(a1 + 880);
        v14 = *(*(a1 + 960) + 4 * v10) * v11;
        v15 = *(a1 + 32);
        v16 = v9;
        v17 = v7;
        do
        {
          v18 = *v13++;
          *(v15 + 8 * v16++) = *(v12 + 8 * (v18 + v14));
          --v17;
        }

        while (v17);
      }

      ++v10;
      v9 += v7;
    }

    while (v10 != v8);
  }

  return a1;
}

double sub_1D0BEC078(uint64_t a1, int a2, double *a3)
{
  if (*(a1 + 16) != a2)
  {
    __assert_rtn("operator=", "cnsubvector.h", 347, "this->num_elements_ == A.num_elements_");
  }

  if (a2 >= 1)
  {
    v3 = *(a1 + 160);
    v4 = *(*(a1 + 120) + 32);
    v5 = *(a1 + 32);
    v6 = a2;
    do
    {
      v7 = *a3++;
      result = v7;
      v9 = *v3++;
      *(v4 + 8 * v9) = result;
      *v5++ = result;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t sub_1D0BEC0EC(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  if (v2 != *(a2 + 8))
  {
    __assert_rtn("operator=", "cnsubmatrix.h", 376, "this->num_rows_ == A.num_rows_");
  }

  v3 = *(result + 12);
  if (v3 != *(a2 + 12))
  {
    __assert_rtn("operator=", "cnsubmatrix.h", 377, "this->num_cols_ == A.num_cols_");
  }

  if (v3)
  {
    v4 = 0;
    v5 = 0;
    v6 = *(a2 + 32);
    do
    {
      if (v2)
      {
        v7 = *(result + 840);
        v8 = *(result + 880);
        v9 = *(v7 + 20) * *(*(result + 960) + 4 * v5);
        v10 = *(v7 + 32);
        v11 = *(result + 32);
        v12 = *(result + 20) * v5;
        v13 = v4;
        v14 = v2;
        do
        {
          v15 = *(v6 + 8 * v13);
          v16 = *v8++;
          *(v10 + 8 * (v16 + v9)) = v15;
          *(v11 + 8 * v12++) = v15;
          ++v13;
          --v14;
        }

        while (v14);
      }

      ++v5;
      v4 += v2;
    }

    while (v5 != v3);
  }

  return result;
}

double sub_1D0BEC1D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D0B894B0(a3, a1);
  v10 = *(a3 + 8);
  v11 = *(a3 + 12);
  v12 = *(a3 + 32);
  v13 = *(a3 + 20);
  v14 = *(a2 + 32);
  v25 = *(a3 + 12);
  v26 = v10;
  if (v10 < 1)
  {
    v18 = -1;
  }

  else
  {
    v15 = 4 * v10;
    v16 = operator new[](4 * v10, MEMORY[0x1E69E5398]);
    if (v16)
    {
      v17 = v16;
      dgetrf_NEWLAPACK();
      memcpy(v14, v17, v15);
      MEMORY[0x1D387EC80](v17, 0x1000C8052888210);
      goto LABEL_7;
    }

    v18 = -5;
  }

  LOWORD(v26) = 4;
  LOBYTE(v25) = 5;
  cnprint::CNPrinter::Print(&v26, &v25, "Error using Det: input argument %d invalid in getrf.", v5, v6, v7, v8, v9, -v18);
LABEL_7:
  v19 = *(a3 + 32);
  result = *v19;
  if (v11 >= 2)
  {
    v21 = v11 - 1;
    v22 = v11 + 1;
    do
    {
      result = result * v19[v22];
      v22 += v11 + 1;
      --v21;
    }

    while (v21);
  }

  if (v11 >= 1)
  {
    v23 = 0;
    do
    {
      if (v11 != *(*(a2 + 32) - 4 + 4 * v11))
      {
        ++v23;
      }
    }

    while (v11-- > 1);
    if (v23)
    {
      return -result;
    }
  }

  return result;
}

uint64_t sub_1D0BEC350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9)
{
  v9 = *(a1 + 8);
  v10 = *(a1 + 12);
  if (v9 <= v10)
  {
    v11 = *(a1 + 12);
  }

  else
  {
    v11 = *(a1 + 8);
  }

  if (v9)
  {
    v12 = v10 == 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = !v12 && v11 == 10;
  if (!v13 || ((v14 = *(a2 + 8), v15 = *(a2 + 12), v14 <= v15) ? (v16 = *(a2 + 12)) : (v16 = *(a2 + 8)), v14 ? (v17 = v15 == 0) : (v17 = 1), !v17 ? (v18 = v16 == 10) : (v18 = 0), !v18))
  {
    LOWORD(v34) = 12;
    LOBYTE(v29) = 4;
    cnprint::CNPrinter::Print(&v34, &v29, "in_TenStateGaussMarkov called with inadequate matrices", a4, a5, a6, a7, a8, v23);
    return 0xFFFFFFFFLL;
  }

  v49 = *a3 * a9;
  v56 = *(a3 + 104);
  v57 = *(a3 + 120);
  v58 = *(a3 + 136);
  v59 = *(a3 + 152);
  v55 = *(a3 + 88);
  v51 = *(a3 + 24);
  v52 = *(a3 + 40);
  v53 = *(a3 + 56);
  v54 = *(a3 + 72);
  v50 = *(a3 + 8);
  v46 = 0x10000000ALL;
  v44 = &unk_1F4CEAE48;
  v47 = v48;
  v45 = xmmword_1D0E87BE0;
  memset(v48, 0, sizeof(v48));
  v41 = 0x10000000ALL;
  v40 = xmmword_1D0E87BE0;
  v39 = &unk_1F4CEAE48;
  v42 = &v43;
  v36 = 0xA0000000ALL;
  v34 = &unk_1F4CE2180;
  v35 = xmmword_1D0E84630;
  v37 = &v38;
  v31 = 0xA0000000ALL;
  v29 = &unk_1F4CE2180;
  v30 = xmmword_1D0E84630;
  v32 = &v33;
  if (sub_1D0BEBAAC(a1, &v44, &v49, &v39, &v34, &v29, a7, a8))
  {
    return 0xFFFFFFFFLL;
  }

  sub_1D0B894B0(a4, &v39);
  sub_1D0B894B0(a5, &v34);
  v26 = 0xA0000000ALL;
  v24 = &unk_1F4CE2180;
  v27 = v28;
  v25 = xmmword_1D0E84630;
  bzero(v28, 0x320uLL);
  sub_1D0B894B0(a6, &v24);
  return 0;
}

uint64_t sub_1D0BEC5D0(uint64_t a1, uint64_t a2, char **lpsrc, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v235 = *MEMORY[0x1E69E9840];
  if (!lpsrc || (v13 = **lpsrc, (v14 = __dynamic_cast(lpsrc, &unk_1F4CE42A0, &unk_1F4CED158, 0)) == 0))
  {
    LOWORD(v208[0]) = 12;
    LOBYTE(v210) = 4;
    v168 = MEMORY[0x30] + MEMORY[0x28];
    cnprint::CNPrinter::Print(v208, &v210, "time,%.3lf,h-function failure on line %d: %s() %s", a4, a5, a6, a7, a8, SLOBYTE(v168));
    goto LABEL_20;
  }

  v15 = v14;
  v17 = *(a1 + 8);
  v16 = *(a1 + 12);
  if (v17 <= v16)
  {
    v18 = *(a1 + 12);
  }

  else
  {
    v18 = *(a1 + 8);
  }

  if (!v17 || !v16 || v18 != 10 || ((v20 = *(a2 + 8), v19 = *(a2 + 12), v20 <= v19) ? (v21 = *(a2 + 12)) : (v21 = *(a2 + 8)), !v20 || !v19 || v21 != 1))
  {
    LOWORD(v208[0]) = 12;
    LOBYTE(v210) = 4;
    v30 = *(v14 + 6) + *(v14 + 5);
    cnprint::CNPrinter::Print(v208, &v210, "time,%.3lf,h-function failure on line %d: %s() %s", a4, a5, a6, a7, a8, SLOBYTE(v30));
    goto LABEL_20;
  }

  if ((v14[128] & 1) == 0)
  {
    LOWORD(v208[0]) = 12;
    LOBYTE(v210) = 4;
    v33 = *(v14 + 6) + *(v14 + 5);
    cnprint::CNPrinter::Print(v208, &v210, "time,%.3lf,h-function failure on line %d: %s() %s", a4, a5, a6, a7, a8, SLOBYTE(v33));
    LOWORD(v208[0]) = 12;
    LOBYTE(v210) = 4;
    v34 = *(v15 + 12) + *(v15 + 11);
    sub_1D0BCFAB8((v15 + 56));
    cnprint::CNPrinter::Print(v208, &v210, "t,%.3lf,%s,TAI time invalid", v35, v36, v37, v38, v39, SLOBYTE(v34));
    goto LABEL_20;
  }

  v22 = *(v14 + 24);
  if ((*&v22 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (v40 = *(v14 + 50), (*&v40 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL) || v22 <= 0.0 || v40 <= 0.0 || v22 == v40)
  {
    LOWORD(v208[0]) = 12;
    LOBYTE(v210) = 4;
    v23 = *(v14 + 6) + *(v14 + 5);
    cnprint::CNPrinter::Print(v208, &v210, "time,%.3lf,h-function failure on line %d: %s() %s", a4, a5, a6, a7, a8, SLOBYTE(v23));
    LOWORD(v208[0]) = 12;
    LOBYTE(v210) = 4;
    v24 = *(v15 + 12) + *(v15 + 11);
    v180 = *(v15 + 24);
    v183 = *(v15 + 50);
    cnprint::CNPrinter::Print(v208, &v210, "t,%.3lf,obs1,%.31f,obs2,%.31f", v25, v26, v27, v28, v29, SLOBYTE(v24));
LABEL_20:
    result = 0xFFFFFFFFLL;
    goto LABEL_21;
  }

  v223 = 0;
  v224 = 0u;
  v225 = 0u;
  v226 = 0;
  v227 = 0;
  v228 = 0;
  v229 = 0;
  *v208 = *(v14 + 136);
  result = sub_1D0BBB868((v14 + 504), v208, &v223, &v221, v220, v219);
  if (result)
  {
    goto LABEL_21;
  }

  v41 = **(a1 + 32);
  v210 = 1;
  v211 = v41;
  v212 = 0u;
  v213 = 0u;
  v42 = *(v15 + 45);
  v214 = 0u;
  v215 = v42;
  v43 = *(v15 + 92);
  v217 = v221;
  v216 = v43;
  v218 = v222;
  if (cnnavigation::details::IonospherePiercePoint::ComputeIonospherePiercePointCoordinates(&v210))
  {
    sub_1D0D85A30((v15 + 40), "could not compute expected measurement", "h_GnssGeometryFreePsr_RavenIonosphere", 1129, v44, v45, v46, v47);
    if (cnprint::CNPrinter::GetLogLevel(v48) <= 1)
    {
      LOWORD(v208[0]) = 12;
      LOBYTE(v233.f64[0]) = 1;
      v49 = *(v15 + 11);
      v50 = *(v15 + 12);
      sub_1D0BCFAB8((v15 + 56));
      v169 = v50 + v49;
      cnprint::CNPrinter::Print(v208, &v233, "t,%.3lf,%s,h_GnssGeometryFreePsr_RavenIonosphere returned != 0", v51, v52, v53, v54, v55, SLOBYTE(v169));
    }

    goto LABEL_20;
  }

  v233 = *(v15 + 45);
  v234 = *(v15 + 92);
  v230 = 0.0;
  v231 = 0.0;
  v232 = 0;
  v56 = cnnavigation::ECEFToLLA(&v233, 1, &v230, 0, v208);
  if (v56)
  {
    LOWORD(v208[0]) = 12;
    v209 = 4;
    v170 = *(v15 + 12) + *(v15 + 11);
    cnprint::CNPrinter::Print(v208, &v209, "t,%.3lf,h_GnssGeometryFreePsr_RavenIonosphere, conversion of current position from ECEF to LLA failed", v57, v58, v59, v60, v61, SLOBYTE(v170));
    goto LABEL_20;
  }

  v63 = *(&v213 + 1);
  v62 = *&v214;
  v65 = v230;
  v64 = v231;
  LogLevel = cnprint::CNPrinter::GetLogLevel(v56);
  if (!LogLevel)
  {
    LOWORD(v208[0]) = 12;
    v209 = 0;
    v72 = *(v15 + 12) + *(v15 + 11);
    cnprint::CNPrinter::Print(v208, &v209, "t,%.3lf,h_GnssGeometryFreePsr_RavenIonosphere,ipp,thin_shell_height_km_,%.5lf,sv_zenith_angle_at_rx_rad_,%.5lf,sv_zenith_angle_at_ipp_rad_,%.5lf,sv_azimuth_at_rx_rad_,%.5lf,latitude_ipp_rad_,%.5lf,longitude_ipp_rad_,%.5lf,receiver_radius_km_,%.5lf,rx_lat,%.5lf,rx_lon,%.5lf", v67, v68, v69, v70, v71, SLOBYTE(v72));
  }

  v73 = v62 - v64;
  if (fabs(v73) > 3.14159265)
  {
    v73 = fmod(v73, 6.28318531);
    if (v73 <= 3.14159265)
    {
      if (v73 < -3.14159265)
      {
        v73 = v73 + 6.28318531;
      }
    }

    else
    {
      v73 = v73 + -6.28318531;
    }
  }

  if (*(&v212 + 1) >= 1.57079633 || *(&v212 + 1) < 0.0)
  {
    if (cnprint::CNPrinter::GetLogLevel(LogLevel) <= 1)
    {
      LOWORD(v208[0]) = 12;
      v209 = 1;
      v171 = *(v15 + 12) + *(v15 + 11);
      cnprint::CNPrinter::Print(v208, &v209, "t,%.3lf,WARNING: h_GnssGeometryFreePsr_RavenIonosphere,sv_zenith_angle_at_ipp_rad is invalid. Cannot proceed.", v90, v91, v92, v93, v94, SLOBYTE(v171));
    }

    goto LABEL_20;
  }

  v207 = v65;
  v74 = *(a1 + 32);
  v76 = v74[1];
  v75 = v74[2];
  v78 = v74[3];
  v77 = v74[4];
  v79 = v74[5];
  v205 = v74[6];
  v86 = cos(*(&v212 + 1));
  v87 = v15[80];
  if (v87 > 2)
  {
    if (v87 - 5 >= 2)
    {
      if (v87 == 3)
      {
        v89 = 8;
      }

      else
      {
        v88 = v87 == 4;
        v89 = 0;
        if (v88)
        {
          v89 = 9;
        }
      }

      goto LABEL_57;
    }

    goto LABEL_54;
  }

  if (!v15[80])
  {
    goto LABEL_54;
  }

  if (v87 != 1)
  {
    v88 = v87 == 2;
    v89 = 0;
    if (!v88)
    {
      goto LABEL_57;
    }

LABEL_54:
    LOWORD(v208[0]) = 12;
    v209 = 4;
    v172 = *(v15 + 12) + *(v15 + 11);
    cnprint::CNPrinter::Print(v208, &v209, "t,%.3lf,h_GnssGeometryFreePsr_RavenIonosphere, unexpected constellation", v81, v82, v83, v84, v85, SLOBYTE(v172));
    goto LABEL_20;
  }

  v89 = 7;
LABEL_57:
  v95 = v76 + v75 * (v63 - v207) + v78 * v73 + (v63 - v207) * (v77 * 0.5) * (v63 - v207);
  v96 = v63 - v207;
  v97 = v95 + (v63 - v207) * v79 * v73 + v73 * (v205 * 0.5) * v73;
  v206 = v89;
  v98 = (*(v15 + 24) * *(v15 + 24) - *(v15 + 50) * *(v15 + 50)) * (4.0308193e17 / (*(v15 + 50) * (*(v15 + 24) * *(v15 + 24) * *(v15 + 50))));
  v99 = v74[v89] * -0.299792458 + v98 * (1.0 / v86 * v97);
  *&v100 = 0x100000001;
  *(&v100 + 1) = 0x100000001;
  *(a4 + 8) = v100;
  **(a4 + 32) = v99 + **(a2 + 32);
  if (!cnprint::CNPrinter::GetLogLevel(v80))
  {
    LOWORD(v208[0]) = 12;
    v209 = 0;
    v173 = *(v15 + 12) + *(v15 + 11);
    v181 = **(a4 + 32);
    cnprint::CNPrinter::Print(v208, &v209, "t,%.3lf,h_GnssGeometryFreePsr_RavenIonosphere,z,%.5lf", v101, v102, v103, v104, v105, SLOBYTE(v173));
  }

  v106 = *(&v212 + 1);
  if (*(&v212 + 1) >= 1.57079633)
  {
    goto LABEL_72;
  }

  v200 = *(v15 + 91);
  v201 = *(v15 + 90);
  v199 = *(v15 + 92);
  v202 = v213;
  v107 = *&v212;
  v204 = sin(*(&v212 + 1));
  v113 = *(a1 + 32);
  v114 = *v113 + 6371.009;
  if (fabs(v114) < 2.22044605e-16)
  {
    LOWORD(v208[0]) = 12;
    v209 = 4;
    v174 = *(v15 + 12) + *(v15 + 11);
    cnprint::CNPrinter::Print(v208, &v209, "t,%.3lf,h_GnssGeometryFreePsr_RavenIonosphere,Rekm_plus_x_hmax==0,cannot proceed", v108, v109, v110, v111, v112, SLOBYTE(v174));
    goto LABEL_20;
  }

  v115 = 1.0 - v204 * v204;
  v198 = sin(v107);
  v197 = pow(v115, -1.5);
  if (fabs(v115) < 2.22044605e-16)
  {
    LOWORD(v208[0]) = 12;
    v209 = 4;
    v175 = *(v15 + 12) + *(v15 + 11);
    cnprint::CNPrinter::Print(v208, &v209, "t,%.3lf,h_GnssGeometryFreePsr_RavenIonosphere,alpha==1.0,cannot proceed", v116, v117, v118, v119, v120, SLOBYTE(v175));
    goto LABEL_20;
  }

  v121 = v107 - v106;
  v195 = sin(*(&v202 + 1));
  v196 = cos(v121);
  if (fabs(v195 * v195 + -1.0) < 2.22044605e-16)
  {
    LOWORD(v208[0]) = 12;
    v209 = 2;
    v176 = *(v15 + 12) + *(v15 + 11);
    cnprint::CNPrinter::Print(v208, &v209, "Warning: t,%.3lf,h_GnssGeometryFreePsr_RavenIonosphere,beta==1.0,IPP is at one of the poles,cannot proceed", v122, v123, v124, v125, v126, SLOBYTE(v176));
    goto LABEL_20;
  }

  v194 = cos(*&v202);
  v127 = __sincos_stret(v207);
  v193 = sin(v121);
  v133 = cos(*(&v202 + 1));
  if (fabs(v133) < 2.22044605e-16)
  {
    LOWORD(v208[0]) = 12;
    v209 = 2;
    v177 = *(v15 + 12) + *(v15 + 11);
    cnprint::CNPrinter::Print(v208, &v209, "Warning: t,%.3lf,h_GnssGeometryFreePsr_RavenIonosphere,cos_theta_pp==0.0,IPP is at one of the poles,cannot proceed", v128, v129, v130, v131, v132, SLOBYTE(v177));
    goto LABEL_20;
  }

  __x = sin(*&v202);
  v139 = sin(v73);
  if (fabs(v139 * v139 + -1.0) < 2.22044605e-16)
  {
    LOWORD(v208[0]) = 12;
    v209 = 2;
    v178 = *(v15 + 12) + *(v15 + 11);
    cnprint::CNPrinter::Print(v208, &v209, "t,%.3lf,h_GnssGeometryFreePsr_RavenIonosphere,gamma==1.0,cannot proceed", v134, v135, v136, v137, v138, SLOBYTE(v178));
    goto LABEL_20;
  }

  v140 = cos(v106);
  if (fabs(v140) < 2.22044605e-16)
  {
LABEL_72:
    LOWORD(v208[0]) = 12;
    v209 = 4;
    v179 = *(v15 + 12) + *(v15 + 11);
    cnprint::CNPrinter::Print(v208, &v209, "t,%.3lf,h_GnssGeometryFreePsr_RavenIonosphere,zenith angle at IPP is too large,cannot proceed", v101, v102, v103, v104, v105, SLOBYTE(v179));
    goto LABEL_20;
  }

  v141 = v198 * (-sqrt(v200 * 0.001 * (v200 * 0.001) + v201 * 0.001 * (v201 * 0.001) + v199 * 0.001 * (v199 * 0.001)) / (v114 * v114));
  v142 = v197 * -0.5 * (v204 * -2.0 * v141);
  v143 = -1.0 / sqrt(1.0 - v204 * v204) * v141;
  v144 = 1.0 / sqrt(1.0 - v195 * v195) * (v194 * (v127.__cosval * v196) * v143 + -(v193 * v127.__sinval) * v143);
  v145 = 1.0 / sqrt(1.0 - v139 * v139) * (__x * -v193 / (v133 * v133) * -v195 * v144 + __x * v196 / v133 * v143);
  v146 = v96;
  v147 = 1.0 / v140;
  v148 = v98 * (v147 * (v145 * v113[3] + v113[2] * v144 + v113[4] * 0.5 * ((v96 + v96) * v144) + v144 * v113[5] * v73 + v96 * v113[5] * v145 + v113[6] * 0.5 * ((v73 + v73) * v145)) + v142 * v97);
  v149 = v98 * v147;
  v150 = v146 * v147;
  v151 = v98 * (v146 * v147);
  v152 = v98 * (v73 * v147);
  v153 = v147 * 0.5;
  v154 = v98 * (v146 * (v146 * v153));
  v155 = v98 * (v73 * v150);
  v156 = v98 * (v73 * (v73 * v153));
  sub_1D0BED838(v208);
  sub_1D0B894B0(a5, v208);
  v157 = *(a5 + 32);
  *v157 = v148;
  v158 = *(a5 + 20);
  v157[v158] = v149;
  v157[2 * v158] = v151;
  v157[3 * v158] = v152;
  v157[4 * v158] = v154;
  v157[5 * v158] = v155;
  v157[6 * v158] = v156;
  v157[(v158 * v206)] = -0.299792458;
  if (!cnprint::CNPrinter::GetLogLevel(v159))
  {
    LOWORD(v208[0]) = 12;
    v209 = 0;
    v165 = *(a5 + 32);
    v166 = *(a5 + 20);
    v167 = *(v15 + 12) + *(v15 + 11);
    v191 = v165[8 * v166];
    v192 = v165[9 * v166];
    v189 = v165[6 * v166];
    v190 = v165[7 * v166];
    v187 = v165[4 * v166];
    v188 = v165[5 * v166];
    v185 = v165[2 * v166];
    v186 = v165[3 * v166];
    v182 = *v165;
    v184 = v165[v166];
    cnprint::CNPrinter::Print(v208, &v209, "t,%.3lf,h_GnssGeometryFreePsr_RavenIonosphere,J0,%.5lf,J1,%.5lf,J2,%.5lf,J3,%.5lf,J4,%.10lf,J5,%.5lf,J6,%.5lf,J7,%.5lf,J8,%.5lf,J9,%.5lf", v160, v161, v162, v163, v164, SLOBYTE(v167));
  }

  sub_1D0BBBC94(1u, 1u, v208);
  sub_1D0B894B0(a6, v208);
  result = 0;
LABEL_21:
  v32 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t cnnavigation::details::IonospherePiercePoint::ComputeIonospherePiercePointCoordinates(cnnavigation::details::IonospherePiercePoint *this)
{
  v46 = *MEMORY[0x1E69E9840];
  v41 = *(this + 4);
  v42 = *(this + 10);
  v39 = *(this + 88);
  v40 = *(this + 13);
  v36 = 0.0;
  v37 = 0.0;
  v38 = 0;
  v2 = *this;
  if (cnnavigation::ECEFToLLA(&v41, *this, &v36, 0, &v43))
  {
    LOWORD(v43) = 5;
    LOBYTE(v35) = 4;
    v8 = "ComputeIonospherePiercePointCoordinates, conversion of current position from ECEF to LLA failed";
    v9 = &v43;
    v10 = &v35;
LABEL_13:
    cnprint::CNPrinter::Print(v9, v10, v8, v3, v4, v5, v6, v7, v33);
    result = 0xFFFFFFFFLL;
    goto LABEL_14;
  }

  v43 = 0.0;
  v44 = 0.0;
  __x = 0.0;
  if (cnnavigation::ECEFToENU(&v39, v2, 0, &v41, 0, &v43))
  {
    v35 = 5;
    v34 = 4;
    v8 = "ComputeIonospherePiercePointCoordinates, conversion of current position from ECEF to ENU failed";
LABEL_12:
    v9 = &v35;
    v10 = &v34;
    goto LABEL_13;
  }

  v11 = v43;
  v12 = v44;
  v13 = v12 * v12 + v11 * v11;
  if (fabs(v13) >= 2.22044605e-16)
  {
    v15 = atan2(sqrt(v13), __x);
    *(this + 2) = v15;
    v14 = atan2(v11, v12);
    *(this + 4) = v14;
    if (v14 < 0.0)
    {
      v14 = v14 + 6.28318531;
      *(this + 4) = v14;
    }
  }

  else
  {
    cnprint::CNPrinter::Print(&v35, &v34, "ComputeIonospherePiercePointCoordinates,WARNING: east_north_vector_length_squared is zero", v3, v4, v5, v6, v7, v33);
    *(this + 2) = 0;
    *(this + 4) = 0;
    v14 = 0.0;
    v15 = 0.0;
  }

  v16 = sqrt(*(this + 9) * 0.001 * (*(this + 9) * 0.001) + *(this + 8) * 0.001 * (*(this + 8) * 0.001) + *(this + 10) * 0.001 * (*(this + 10) * 0.001));
  *(this + 7) = v16;
  v17 = *(this + 1);
  if (v17 < 0.0 || (v18 = v17 + 6371.009, v18 < v16))
  {
    v35 = 5;
    v34 = 4;
    v8 = "ComputeIonospherePiercePointCoordinates,this->thin_shell_height_km < 0 or (Re_km + this->thin_shell_height_km) < this->receiver_radius_km_";
    goto LABEL_12;
  }

  v21 = v16 / v18;
  v22 = sin(v15);
  v23 = asin(v22 * v21);
  *(this + 3) = v23;
  v24 = v36;
  v25 = __sincos_stret(v15 - v23);
  v26 = __sincos_stret(v24);
  v27 = cos(v14);
  v28 = asin(v27 * (v25.__sinval * v26.__cosval) + v26.__sinval * v25.__cosval);
  *(this + 5) = v28;
  v29 = v37;
  if (fabs(fabs(v28) + -1.57079633) <= 0.000000015)
  {
    result = 0;
    *(this + 6) = v37;
  }

  else
  {
    v30 = sin(v14) * v25.__sinval;
    v31 = cos(v28);
    v32 = asin(v30 / v31);
    result = 0;
    *(this + 6) = v29 + v32;
  }

LABEL_14:
  v20 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t cnnavigation::ECEFToENU(float64x2_t *a1, int a2, int a3, float64x2_t *a4, int a5, uint64_t a6, uint64_t a7)
{
  v22 = *MEMORY[0x1E69E9840];
  if (a3 == 1)
  {
    v18 = *a4;
    v19 = a4[1].f64[0];
    if (cnnavigation::LLAToECEF(v18.f64, a2, v20.f64, 0, &v16))
    {
      goto LABEL_9;
    }
  }

  else
  {
    if (a3)
    {
      goto LABEL_9;
    }

    v20 = *a4;
    v21 = a4[1].f64[0];
    if (cnnavigation::ECEFToLLA(&v20, a2, &v18, 0, &v16))
    {
      goto LABEL_9;
    }
  }

  if (a5 == 1)
  {
    v16 = *a1;
    v11 = a1[1].f64[0];
    goto LABEL_12;
  }

  if (!a5)
  {
    v16 = vsubq_f64(*a1, v20);
    v11 = a1[1].f64[0] - v21;
LABEL_12:
    v17 = v11;
    (*(*a7 + 16))(a7, v18.f64[0], v18.f64[1]);
    sub_1D0BED7A0(a7, v16.f64, &v14);
    result = 0;
    *a6 = v14;
    *(a6 + 16) = v15;
    goto LABEL_10;
  }

LABEL_9:
  result = 0xFFFFFFFFLL;
LABEL_10:
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t cnnavigation::ECEFToENU(float64x2_t *a1, int a2, int a3, float64x2_t *a4, int a5, uint64_t a6)
{
  v8 = 0;
  v11 = 0x300000003;
  v9 = &unk_1F4CD5DD0;
  v10 = xmmword_1D0E76C10;
  v12 = &v13;
  v7 = &unk_1F4CD5D50;
  return cnnavigation::ECEFToENU(a1, a2, a3, a4, a5, a6, &v7);
}

double sub_1D0BED7A0(uint64_t a1, double *a2, double *a3)
{
  if (*(a1 + 8) == 1)
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 36);
    v5 = &v3[v4];
    v6 = &v3[2 * v4];
    *a3 = *v5 * a2[1] + *v3 * *a2 + *v6 * a2[2];
    a3[1] = v5[1] * a2[1] + v3[1] * *a2 + v3[((2 * v4) | 1)] * a2[2];
    result = v5[2] * a2[1] + v3[2] * *a2 + v6[2] * a2[2];
    a3[2] = result;
  }

  return result;
}

uint64_t sub_1D0BED838(uint64_t a1)
{
  *(a1 + 24) = 0xA00000001;
  *a1 = &unk_1F4CED1A0;
  *(a1 + 32) = a1 + 40;
  *(a1 + 8) = xmmword_1D0EA12E0;
  return sub_1D0BBBC00(a1, 0.0);
}

double sub_1D0BED87C(uint64_t a1, int a2, uint64_t a3)
{
  v7 = *(a1 + 8);
  v6 = *(a1 + 12);
  if (v7 == 1 || v6 == 1)
  {
    v9 = *(a1 + 16);
    if (a2 >= 0)
    {
      v10 = a2;
    }

    else
    {
      v10 = -a2;
    }

    v11 = v9 + v10;
    *(a3 + 8) = v11;
    *(a3 + 12) = v11;
    *(a3 + 16) = v11 * v11;
    *(a3 + 20) = v11;
    sub_1D0BBBC00(a3, 0.0);
    if (v9 >= 1)
    {
      v13 = *(a1 + 32);
      if (a2 >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = -a2;
      }

      v15 = v9 + v14;
      v16 = (*(a3 + 32) + 8 * (v15 * (a2 & ~(a2 >> 31)) - (a2 & (a2 >> 31))));
      do
      {
        v17 = *v13++;
        result = v17;
        *v16 = v17;
        v16 += v15 + 1;
        --v9;
      }

      while (v9);
    }
  }

  else
  {
    if (v6 >= v7)
    {
      v18 = *(a1 + 8);
    }

    else
    {
      v18 = *(a1 + 12);
    }

    if (v6 - v7 <= a2)
    {
      v19 = *(a1 + 12);
    }

    else
    {
      v19 = v7 + a2;
    }

    v20 = v6 - v7;
    if (v6 >= v7)
    {
      v19 = v7 + a2;
    }

    if (a2 >= 0)
    {
      v19 = v18;
    }

    v21 = v18 - a2;
    v22 = v20 < a2;
    v23 = v20 - a2 + v18;
    if (v22)
    {
      v18 = v23;
    }

    if (v6 > v7)
    {
      LODWORD(v24) = v18;
    }

    else
    {
      LODWORD(v24) = v21;
    }

    if (a2 >= 1)
    {
      v24 = v24;
    }

    else
    {
      v24 = v19;
    }

    v25 = v24 & ~(v24 >> 31);
    *(a3 + 8) = v25;
    *(a3 + 12) = 1;
    *(a3 + 16) = v25;
    *(a3 + 20) = v25;
    if (v24 >= 1)
    {
      v26 = v7 + 1;
      v27 = v7 * (a2 & ~(a2 >> 31)) - (a2 & (a2 >> 31));
      v28 = *(a3 + 32);
      v29 = (*(a1 + 32) + 8 * v27);
      v30 = 8 * v26;
      do
      {
        result = *v29;
        *v28++ = *v29;
        v29 = (v29 + v30);
        --v24;
      }

      while (v24);
    }
  }

  return result;
}

uint64_t sub_1D0BED9C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x100000001;
  *&v5 = 0x100000001;
  *(&v5 + 1) = 0x100000001;
  *(a1 + 8) = v5;
  *(a1 + 32) = a1 + 40;
  *a1 = &unk_1F4CED538;
  *(a1 + 48) = a2;
  *(a1 + 80) = 0x100000001;
  *(a1 + 56) = &unk_1F4CDF158;
  *(a1 + 64) = v5;
  *(a1 + 88) = a1 + 96;
  sub_1D0B9F5D4(a1 + 56, a3);
  v7 = *(a1 + 64);
  v6 = *(a1 + 68);
  *(a1 + 8) = v7;
  *(a1 + 12) = v6;
  v8 = (v6 * v7);
  *(a1 + 16) = v8;
  *(a1 + 20) = v7;
  if (v8 >= 1)
  {
    v9 = *(a1 + 88);
    v10 = *(a2 + 32);
    v11 = *(a1 + 32);
    do
    {
      v12 = *v9++;
      *v11++ = *(v10 + 8 * v12);
      --v8;
    }

    while (v8);
  }

  return a1;
}

double sub_1D0BEDA98(uint64_t a1, int a2, double *a3)
{
  if (*(a1 + 16) != a2)
  {
    __assert_rtn("operator=", "cnsubvector.h", 347, "this->num_elements_ == A.num_elements_");
  }

  if (a2 >= 1)
  {
    v3 = *(a1 + 88);
    v4 = *(*(a1 + 48) + 32);
    v5 = *(a1 + 32);
    v6 = a2;
    do
    {
      v7 = *a3++;
      result = v7;
      v9 = *v3++;
      *(v4 + 8 * v9) = result;
      *v5++ = result;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t sub_1D0BEDB0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 12);
  sub_1D0BEDD40(v27, *(a2 + 12));
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = vdupq_n_s64(v6 - 1);
    v9 = xmmword_1D0E84440;
    v10 = xmmword_1D0E7DD30;
    v11 = (v27[4] + 8);
    v12 = vdupq_n_s64(4uLL);
    do
    {
      v13 = vmovn_s64(vcgeq_u64(v8, v10));
      if (vuzp1_s16(v13, *v8.i8).u8[0])
      {
        *(v11 - 2) = v7;
      }

      if (vuzp1_s16(v13, *&v8).i8[2])
      {
        *(v11 - 1) = v7 + 1;
      }

      if (vuzp1_s16(*&v8, vmovn_s64(vcgeq_u64(v8, *&v9))).i32[1])
      {
        *v11 = v7 + 2;
        v11[1] = v7 + 3;
      }

      v7 += 4;
      v9 = vaddq_s64(v9, v12);
      v10 = vaddq_s64(v10, v12);
      v11 += 4;
    }

    while (((v6 + 3) & 0xFFFFFFFC) != v7);
  }

  *(a1 + 24) = 0xA00000001;
  *(a1 + 8) = xmmword_1D0EA12E0;
  *(a1 + 32) = a1 + 40;
  *a1 = &unk_1F4CED580;
  *(a1 + 152) = 0x100000001;
  *(a1 + 120) = a2;
  *(a1 + 128) = &unk_1F4CDF158;
  *&v14 = 0x100000001;
  *(&v14 + 1) = 0x100000001;
  *(a1 + 136) = v14;
  *(a1 + 160) = a1 + 168;
  *(a1 + 200) = 0x10000000ALL;
  *(a1 + 176) = &unk_1F4CED1E8;
  *(a1 + 184) = xmmword_1D0E87BE0;
  *(a1 + 208) = a1 + 216;
  sub_1D0B9F5D4(a1 + 128, a3);
  result = sub_1D0B9F5D4(a1 + 176, v27);
  v16 = *(a1 + 144);
  v17 = *(a1 + 192);
  *(a1 + 8) = v16;
  *(a1 + 12) = v17;
  *(a1 + 16) = v17 * v16;
  *(a1 + 20) = v16;
  if (v17)
  {
    v18 = 0;
    v19 = 0;
    v20 = *(a2 + 20);
    v21 = *(a2 + 32);
    do
    {
      if (v16)
      {
        v22 = *(a1 + 160);
        v23 = *(*(a1 + 208) + 4 * v19) * v20;
        v24 = *(a1 + 32);
        v25 = v18;
        result = v16;
        do
        {
          v26 = *v22++;
          *(v24 + 8 * v25++) = *(v21 + 8 * (v26 + v23));
          --result;
        }

        while (result);
      }

      ++v19;
      v18 += v16;
    }

    while (v19 != v17);
  }

  return result;
}

uint64_t sub_1D0BEDD40(uint64_t result, int a2)
{
  *(result + 24) = 0x10000000ALL;
  *(result + 32) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = &unk_1F4CED1E8;
  if (a2 < 0)
  {
    __assert_rtn("CNMatrix", "cnmatrix.h", 419, "nr >= 0");
  }

  *(result + 8) = a2;
  *(result + 12) = 1;
  *(result + 16) = a2;
  *(result + 20) = a2;
  *(result + 32) = result + 40;
  return result;
}

uint64_t sub_1D0BEDDF0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  if (v2 != *(a2 + 8))
  {
    __assert_rtn("operator=", "cnsubmatrix.h", 376, "this->num_rows_ == A.num_rows_");
  }

  v3 = *(result + 12);
  if (v3 != *(a2 + 12))
  {
    __assert_rtn("operator=", "cnsubmatrix.h", 377, "this->num_cols_ == A.num_cols_");
  }

  if (v3)
  {
    v4 = 0;
    v5 = 0;
    v6 = *(a2 + 32);
    do
    {
      if (v2)
      {
        v7 = *(result + 120);
        v8 = *(result + 160);
        v9 = *(v7 + 20) * *(*(result + 208) + 4 * v5);
        v10 = *(v7 + 32);
        v11 = *(result + 32);
        v12 = *(result + 20) * v5;
        v13 = v4;
        v14 = v2;
        do
        {
          v15 = *(v6 + 8 * v13);
          v16 = *v8++;
          *(v10 + 8 * (v16 + v9)) = v15;
          *(v11 + 8 * v12++) = v15;
          ++v13;
          --v14;
        }

        while (v14);
      }

      ++v5;
      v4 += v2;
    }

    while (v5 != v3);
  }

  return result;
}

void sub_1D0BEDF5C(uint64_t a1)
{
  *(a1 + 24) = 0x1400000040;
  *a1 = &unk_1F4CED5C8;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 8) = xmmword_1D0EA1350;
  sub_1D0BEDEDC();
}

void sub_1D0BEDFC4(_Unwind_Exception *exception_object)
{
  v3 = v1[5];
  v1[5] = 0;
  if (v3)
  {
    MEMORY[0x1D387EC80](v3, 0x1000C8000313F17);
  }

  *v1 = &unk_1F4CD5E28;
  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0BEE00C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x10000002CLL;
  *(a1 + 8) = xmmword_1D0EA1270;
  *(a1 + 32) = a1 + 40;
  *a1 = &unk_1F4CED6A0;
  *(a1 + 392) = a2;
  *(a1 + 424) = 0x10000002CLL;
  *(a1 + 400) = &unk_1F4CECE00;
  *(a1 + 408) = xmmword_1D0EA1270;
  *(a1 + 432) = a1 + 440;
  sub_1D0B9F5D4(a1 + 400, a3);
  v5 = *(a1 + 408);
  v6 = *(a1 + 412);
  *(a1 + 8) = v5;
  *(a1 + 12) = v6;
  v7 = (v6 * v5);
  *(a1 + 16) = v7;
  *(a1 + 20) = v5;
  if (v7 >= 1)
  {
    v8 = *(a1 + 432);
    v9 = *(a2 + 32);
    v10 = *(a1 + 32);
    do
    {
      v11 = *v8++;
      *v10++ = *(v9 + 8 * v11);
      --v7;
    }

    while (v7);
  }

  return a1;
}

void cnstatistics::InverseChi2(cnstatistics *this, double a2, double a3)
{
  if (a3 >= 0.0 && a2 >= 0.0 && a2 <= 1.0 && fabs(a2) >= 2.22044605e-16)
  {
    v4 = fabs(a3);
    if (fabs(a2 + -1.0) >= 2.22044605e-16 && v4 != INFINITY && v4 >= 2.22044605e-16)
    {
      cnstatistics::InverseGamma(this, a2, a3 * 0.5, 2.0);
    }
  }
}

void cnstatistics::InverseGamma(cnstatistics *this, double a2, double a3, double a4)
{
  if (a3 >= 0.0)
  {
    v51[1] = v13;
    v51[2] = v12;
    v51[3] = v11;
    v51[4] = v10;
    v51[5] = v9;
    v51[6] = v8;
    v51[7] = v7;
    v51[8] = v6;
    v51[19] = v4;
    v51[20] = v5;
    v16 = fabs(a3);
    if (v16 != INFINITY && a4 > 0.0 && a2 >= 0.0 && a2 <= 1.0 && fabs(a2) >= 2.22044605e-16 && fabs(a2 + -1.0) >= 2.22044605e-16 && v16 >= 2.22044605e-16 && fabs(a4) != INFINITY)
    {
      v51[0] = a3;
      v17 = ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF || a3 < 0.0;
      v18 = !v17;
      if (v17)
      {
        sub_1D0D26D6C("boost::math::gamma_distribution<%1%>::gamma_distribution", "Shape parameter is %1%, but must be > 0 !", v51);
      }

      v19 = log(a3);
      v20 = log(a3 + 1.0) - v19;
      v21 = v19 + v20 * -0.5;
      v22 = sqrt(v20 + v20);
      sub_1D0BABF68(a2 + a2);
      v24.n128_u64[0] = exp(v21 - v22 * v23);
      v31 = 500;
      v50 = v24.n128_f64[0];
      while (1)
      {
        v51[0] = a3;
        if (!v18)
        {
          sub_1D0D26D6C("boost::math::cdf(const gamma_distribution<%1%>&, %1%)", "Shape parameter is %1%, but must be > 0 !", v51);
        }

        if ((v24.n128_i64[0] <= -1 || ((v24.n128_u64[0] & 0x7FFFFFFFFFFFFFFFLL) - 0x10000000000000) >> 53 >= 0x3FF) && v24.n128_u64[0] - 1 >= 0xFFFFFFFFFFFFFLL && (v24.n128_u64[0] & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          sub_1D0D26D6C("boost::math::cdf(const gamma_distribution<%1%>&, %1%)", "Random variate is %1% but must be >= 0 !", &v50);
        }

        v40 = sub_1D0BEEA20(1, 0, v51, 0, a3, v24, v25, v26, v27, v28, v29, v30);
        if (fabs(v40) > 1.79769313e308)
        {
          sub_1D0D27B28("gamma_p<%1%>(%1%, %1%)", "numeric overflow");
        }

        v41 = a2 - v40;
        if ((*&v50 <= -1 || ((*&v50 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (*&v50 - 1) >= 0xFFFFFFFFFFFFFLL && (*&v50 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          sub_1D0D26D6C("boost::math::pdf(const gamma_distribution<%1%>&, %1%)", "Random variate is %1% but must be >= 0 !", &v50);
        }

        v45 = 0.0;
        if (v50 != 0.0)
        {
          sub_1D0BEF464(v51, a3, v50);
          v45 = v46;
          if (fabs(v46) > 1.79769313e308)
          {
            sub_1D0D27B28("boost::math::gamma_p_derivative<%1%>(%1%, %1%)", "numeric overflow");
          }
        }

        v47 = v41 / fmax(v45, 2.22507386e-308);
        if (fabs(v47) <= 1.8189894e-12)
        {
          break;
        }

        v25 = v50 * 0.1;
        v26 = v50 * 10.0;
        v48 = v47 + v50;
        v27 = v50 * 10.0;
        if (v50 * 10.0 < v48)
        {
          v48 = v50 * 10.0;
        }

        if (v25 > v48)
        {
          v48 = v50 * 0.1;
        }

        v24.n128_f64[0] = v48;
        v50 = v48;
        if (!--v31)
        {
          LOWORD(v51[0]) = 10;
          v49 = 4;
          cnprint::CNPrinter::Print(v51, &v49, "Error: InverseGamma failed to converge for p=%lg, a=%lg, b=%lg.", v35, v36, v37, v38, v39, SLOBYTE(a2));
          return;
        }
      }
    }
  }
}

double sub_1D0BEE5E0(int a1, long double a2)
{
  v3 = a1;
  if (a2 < 0.0)
  {
    if ((a1 & 1) == 0)
    {
      return -sub_1D0BEE5E0(0, -a2);
    }

    v4 = -a2;
    if (a2 >= -0.5)
    {
      return sub_1D0BEE5E0(0, v4) + 1.0;
    }

    else
    {
      return 2.0 - sub_1D0BEE5E0(1, v4);
    }
  }

  if (a2 < 0.5)
  {
    if (a2 >= 1.0e-10)
    {
      v8 = vaddq_f64(vmulq_n_f64(vmlaq_n_f64(xmmword_1D0E7E350, xmmword_1D0E7E340, a2 * a2 * (a2 * a2)), a2 * a2), vaddq_f64(vmulq_n_f64(vmlaq_n_f64(xmmword_1D0E7E330, xmmword_1D0E7E320, a2 * a2 * (a2 * a2)), a2 * a2 * (a2 * a2)), xmmword_1D0E7E360));
      v6 = (vdivq_f64(v8, vdupq_laneq_s64(v8, 1)).f64[0] + 1.04494858) * a2;
    }

    else
    {
      v6 = 0.0;
      if (a2 != 0.0)
      {
        v6 = a2 * 0.0033791671 + a2 * 1.125;
      }
    }

    goto LABEL_25;
  }

  if (a1)
  {
    v7 = 28.0;
  }

  else
  {
    v7 = 5.92999983;
  }

  v3 = a1 ^ 1;
  if (a2 >= v7)
  {
    v6 = 0.0;
    goto LABEL_25;
  }

  if (a2 < 1.5)
  {
    v9 = a2 + -0.5;
    v10.f64[0] = v9 * v9 * 0.0195049001 + 0.191003696;
    v10.f64[1] = v9 * v9 * (v9 * v9 * 0.00000337511472 + 0.123850975) + 1.42628005;
    v11 = vaddq_f64(vaddq_f64(vmulq_n_f64(v10, v9 * v9), xmmword_1D0E7E310), vmulq_n_f64(vaddq_f64(vmulq_n_f64(vmlaq_n_f64(xmmword_1D0E7E2F0, xmmword_1D0E7E2E0, v9 * v9), v9 * v9), xmmword_1D0E7E300), a2 + -0.5));
    v6 = exp(-(a2 * a2)) / a2 * (vdivq_f64(v11, vdupq_laneq_s64(v11, 1)).f64[0] + 0.405935764);
    goto LABEL_25;
  }

  if (a2 < 2.5)
  {
    v12 = a2 + -1.5;
    v13 = vaddq_f64(vaddq_f64(vmulq_n_f64(vmlaq_n_f64(xmmword_1D0E7E2B0, xmmword_1D0E7E2A0, v12 * v12), v12 * v12), xmmword_1D0E7E2D0), vmulq_n_f64(vaddq_f64(vmulq_n_f64(vmlaq_n_f64(xmmword_1D0E7E290, xmmword_1D0E7E280, v12 * v12), v12 * v12), xmmword_1D0E7E2C0), a2 + -1.5));
    v14 = vdivq_f64(v13, vdupq_laneq_s64(v13, 1)).f64[0] + 0.506728172;
    v15 = frexp(a2, &__e);
    v16 = __e;
LABEL_23:
    v19 = ldexp(v15, 26);
    v20 = ldexp(floor(v19), v16 - 26);
    v21 = a2 - v20;
    v22 = v20 * v20 - a2 * a2 + (v20 + v20) * (a2 - v20);
    v23 = exp(-(a2 * a2));
    v6 = v14 * (v23 * exp(-(v22 + v21 * v21)) / a2);
    goto LABEL_25;
  }

  if (a2 < 4.5)
  {
    v17 = a2 + -3.5;
    v18 = vaddq_f64(vaddq_f64(vmulq_n_f64(vmlaq_n_f64(xmmword_1D0E7E250, xmmword_1D0E7E240, v17 * v17), v17 * v17), xmmword_1D0E7E270), vmulq_n_f64(vaddq_f64(vmulq_n_f64(vmlaq_n_f64(xmmword_1D0E7E230, xmmword_1D0E7E220, v17 * v17), v17 * v17), xmmword_1D0E7E260), a2 + -3.5));
    v14 = vdivq_f64(v18, vdupq_laneq_s64(v18, 1)).f64[0] + 0.540575027;
    v15 = frexp(a2, &v35);
    v16 = v35;
    goto LABEL_23;
  }

  v38 = 1.0 / a2;
  v24 = sub_1D0C4E35C(dbl_1D0E7E570, &v38);
  v37 = 1.0 / a2;
  v25 = v24 / sub_1D0C4E35C(dbl_1D0E7E5A8, &v37) + 0.557909012;
  v26 = frexp(a2, &v36);
  v27 = v36;
  v28 = ldexp(v26, 26);
  v29 = ldexp(floor(v28), v27 - 26);
  v30 = a2 - v29;
  v31 = v29 * v29 - a2 * a2 + (v29 + v29) * (a2 - v29);
  v32 = exp(-(a2 * a2));
  v6 = v32 * exp(-(v31 + v30 * v30)) / a2 * v25;
LABEL_25:
  if (v3)
  {
    return 1.0 - v6;
  }

  else
  {
    return v6;
  }
}

double sub_1D0BEEA20(int a1, int a2, uint64_t a3, double *a4, double a5, __n128 a6, double a7, double a8, double a9, double a10, double a11, double a12)
{
  v84 = a6.n128_f64[0];
  v85 = a5;
  if (a5 <= 0.0)
  {
    v13 = qword_1EC5FB400;
    v14 = "Argument a to the incomplete gamma function must be greater than zero (got a=%1%).";
    v15 = &v85;
LABEL_5:
    sub_1D0C50B00(v13, v14, v15);
  }

  v12 = a6.n128_f64[0];
  if (a6.n128_f64[0] < 0.0)
  {
    v13 = qword_1EC5FB400;
    v14 = "Argument x to the incomplete gamma function must be >= 0 (got x=%1%).";
    v15 = &v84;
    goto LABEL_5;
  }

  v19 = a2;
  v21 = a5;
  if (a5 < 170.0 || (a1 & 1) != 0)
  {
    if (a4 && (a1 & 1) == 0)
    {
      __assert_rtn("gamma_incomplete_imp", "gamma.hpp", 1221, "(p_derivative == 0) || normalised");
    }

    v27 = a6.n128_f64[0] + 1.0;
    v28 = 30.0;
    if (v12 < 709.0 && a5 < 30.0 && v27 >= a5)
    {
      v31 = floor(a5);
      if (v31 == a5)
      {
        v27 = 0.6;
        if (v12 > 0.6)
        {
          v39 = sub_1D0C00AD0(a5, v12, a3, a4);
          if ((a1 & 1) == 0)
          {
            v40 = v39 * sub_1D0D2A640(v21, v32, v33, v34, v35, v36, v37, v38);
            if (v19)
            {
              goto LABEL_163;
            }

            goto LABEL_160;
          }

          goto LABEL_153;
        }
      }

      else
      {
        v27 = vabdd_f64(v31, a5);
        v28 = 0.5;
        if (v12 > 0.2 && v27 == 0.5)
        {
          v39 = sub_1D0BEF33C(a4, a5, v12);
          if ((a1 & 1) == 0)
          {
            v39 = v39 * sub_1D0D2A640(v21, v32, v33, v34, v35, v36, v37, v38);
          }

          if (!a4 || *a4 != 0.0)
          {
            v19 ^= 1u;
            goto LABEL_154;
          }

          v58 = sub_1D0BEF5BC(a3, &v83, v21, v12);
          *a4 = v58;
          v32 = 1.0;
          if ((a1 & (v39 > 1.0)) != 0)
          {
            v40 = 1.0;
          }

          else
          {
            v40 = v39;
          }

          if (v19)
          {
            goto LABEL_165;
          }

          goto LABEL_158;
        }
      }
    }

    if (a5 > 1.0 && v12 < 0.0000000149011612)
    {
      if (a1)
      {
        sub_1D0C3BB74(a5 + 1.0, v27, v28, a8, a9, a10, a11, a12);
        if (fabs(v55) > 1.79769313e308)
        {
          sub_1D0D28B48("boost::math::tgamma<%1%>(%1%)", "numeric overflow");
        }

        v33 = pow(v12, v21) / v55;
      }

      else
      {
        v33 = pow(v12, a5) / a5;
      }

      v32 = v84;
      v35 = v85 + 1.0;
      v34 = 1.0 - v85 * v84 / (v85 + 1.0);
      v39 = v33 * v34;
      if (a4)
      {
        v58 = sub_1D0BEF5BC(a3, &v86, v85, v84);
        *a4 = v58;
        if ((a1 & (v39 > 1.0)) != 0)
        {
          v40 = 1.0;
        }

        else
        {
          v40 = v39;
        }

        if ((v19 & 1) == 0)
        {
          goto LABEL_165;
        }

        goto LABEL_158;
      }

LABEL_154:
      if ((a1 & (v39 > 1.0)) != 0)
      {
        v40 = 1.0;
      }

      else
      {
        v40 = v39;
      }

      if (!v19)
      {
        goto LABEL_163;
      }

      goto LABEL_158;
    }

    if (v12 > 1000.0 && (a5 < v12 || fabs(a5 + -50.0) / v12 < 1.0))
    {
      if (a1)
      {
        v56 = sub_1D0BEF5BC(a3, &v83, a5, v12);
      }

      else
      {
        sub_1D0D2A6A0(a5, v12);
      }

      if (a4)
      {
        *a4 = v56;
      }

      v32 = v84;
      v39 = v56 / v84;
      if (v56 / v84 != 0.0)
      {
        v69 = sub_1D0D2AEF4(&v85, &v84);
        goto LABEL_106;
      }

      goto LABEL_153;
    }

    if (v12 < 0.5)
    {
      v57 = -0.4 / log(v12);
      goto LABEL_87;
    }

    if (v12 < 1.1)
    {
      v57 = v12 * 0.75;
LABEL_87:
      if (v57 >= v21)
      {
        v83 = 0.0;
        sub_1D0D2A7E0(a3, &v83, v19 ^ 1, a4, v21, v12, v28, a8, a9, a10, a11, a12);
        if (a1)
        {
          v68 = v68 / v83;
        }

        goto LABEL_135;
      }

LABEL_88:
      if (a1)
      {
        v67 = sub_1D0BEF5BC(a3, &v83, v21, v12);
      }

      else
      {
        sub_1D0D2A6A0(v21, v12);
      }

      v39 = v67;
      if (a4)
      {
        *a4 = v67;
      }

      if (v67 == 0.0)
      {
        goto LABEL_154;
      }

      if (v19)
      {
        if (a1)
        {
          v73 = v85;
          v74 = 1.0 / v39;
        }

        else
        {
          v77 = sub_1D0D2A640(v85, v32, v33, v34, v35, v36, v37, v38);
          v75 = 0.0;
          v73 = v85;
          if (v39 < 1.0 && v39 * 1.79769313e308 <= v77 || (v74 = v77 / v39, v85 >= 1.0) && 1.79769313e308 / v85 <= v74)
          {
            v76 = 0;
            goto LABEL_133;
          }
        }

        v75 = -(v73 * v74);
        v76 = 1;
      }

      else
      {
        v76 = 0;
        v75 = 0.0;
        v73 = v85;
      }

LABEL_133:
      v78 = sub_1D0D2A59C(v73, v84, v75);
      v32 = v85;
      v79 = v78 / v85;
      if ((v76 & 1) == 0)
      {
        v39 = v39 * v79;
        goto LABEL_154;
      }

      v68 = -(v39 * v79);
LABEL_135:
      if ((a1 & (v68 > 1.0)) != 0)
      {
        v40 = 1.0;
      }

      else
      {
        v40 = v68;
      }

      goto LABEL_163;
    }

    if (a5 > 20.0 && a1)
    {
      v71 = (v12 - a5) / a5;
      if (v21 > 200.0)
      {
        if (20.0 / v21 <= v71 * v71)
        {
          goto LABEL_115;
        }

        goto LABEL_140;
      }

      if (fabs(v71) < 0.4)
      {
LABEL_140:
        v39 = sub_1D0D2A97C(v21, v12);
        if (v12 >= v21)
        {
          v19 ^= 1u;
        }

        if (!a4)
        {
          goto LABEL_154;
        }

        v58 = sub_1D0BEF5BC(a3, &v83, v21, v12);
        *a4 = v58;
        v32 = 1.0;
        if (v39 <= 1.0)
        {
          v40 = v39;
        }

        else
        {
          v40 = 1.0;
        }

        if ((v19 & 1) == 0)
        {
          goto LABEL_165;
        }

LABEL_158:
        v80 = 1.0;
        if (a1)
        {
LABEL_162:
          v40 = v80 - v40;
LABEL_163:
          if (!a4)
          {
            return v40;
          }

          v58 = *a4;
LABEL_165:
          v82 = v84;
          if (v84 < 1.0 && v84 * 1.79769313e308 < v58)
          {
            *a4 = 8.98846567e307;
            v58 = 8.98846567e307;
          }

          *a4 = v58 / v82;
          return v40;
        }

        v21 = v85;
LABEL_160:
        sub_1D0C3BB74(v21, v32, v33, v34, v35, v36, v37, v38);
        v80 = v81;
        if (fabs(v81) > 1.79769313e308)
        {
          sub_1D0D28B48("boost::math::tgamma<%1%>(%1%)", "numeric overflow");
        }

        goto LABEL_162;
      }
    }

LABEL_115:
    if (v12 + -1.0 / (v12 * 3.0) >= v21)
    {
      if (a1)
      {
        v72 = sub_1D0BEF5BC(a3, &v83, v21, v12);
      }

      else
      {
        sub_1D0D2A6A0(v21, v12);
      }

      v39 = v72;
      if (a4)
      {
        *a4 = v72;
      }

      if (v72 != 0.0)
      {
        v69 = sub_1D0D2A4F0(v85, v84, 2.22044605e-16);
LABEL_106:
        v70 = v39 * v69;
        v32 = 1.0;
        if ((a1 & (v70 > 1.0)) != 0)
        {
          v40 = 1.0;
        }

        else
        {
          v40 = v70;
        }

        if (v19)
        {
          goto LABEL_163;
        }

        goto LABEL_158;
      }

LABEL_153:
      v19 ^= 1u;
      goto LABEL_154;
    }

    goto LABEL_88;
  }

  if (a5 * 4.0 >= a6.n128_f64[0] || a2 == 0)
  {
    if (a2)
    {
      v23 = sub_1D0BEEA20(1, 1, a3, a4, a5, a6);
      if (v23 == 0.0)
      {
        v24 = log(1.0 / (v21 * 12.0) + 1.0 + 1.0 / (v21 * 288.0 * v21)) - v21;
        v25 = v24 + (v21 + -0.5) * log(v21) + 0.918938533;
        if (a4)
        {
          v26 = log(v12);
          *a4 = exp(-(v12 - v21 * v26));
        }

        goto LABEL_55;
      }
    }

    else if (a6.n128_f64[0] * 4.0 < a5 || (v23 = sub_1D0BEEA20(1, 0, a3, a4, a5, a6), v23 == 0.0))
    {
      v53 = log(v12);
      v42 = -(v12 - v21 * v53);
      if (a4)
      {
        *a4 = exp(-(v12 - v21 * v53));
      }

      v52 = sub_1D0D2A59C(v21, v12, 0.0) / v21;
      goto LABEL_54;
    }

    v59 = log(v23);
    v25 = v59 + sub_1D0D2A48C(0, v21, v60, v61, v62, v63, v64, v65, v66);
    goto LABEL_55;
  }

  v41 = log(a6.n128_f64[0]);
  v42 = -(v12 - v21 * v41);
  if (a4)
  {
    *a4 = exp(-(v12 - v21 * v41));
  }

  v43 = v12 - v21 + 1.0;
  v44 = v43 + 2.0;
  if (v43 + 2.0 == 0.0)
  {
    v45 = 3.56011817e-307;
  }

  else
  {
    v45 = v43 + 2.0;
  }

  v46 = 0.0;
  v47 = 2;
  v48 = v45;
  do
  {
    v44 = v44 + 2.0;
    v49 = (v21 - v47) * v47;
    v50 = v44 + v49 * v46;
    v48 = v44 + v49 / v48;
    if (v48 == 0.0)
    {
      v48 = 3.56011817e-307;
    }

    if (v50 == 0.0)
    {
      v46 = 2.80889552e306;
    }

    else
    {
      v46 = 1.0 / v50;
    }

    v45 = v45 * (v46 * v48);
  }

  while (fabs(v46 * v48 + -1.0) > 2.22044605e-16 && v47++ != 0);
  v52 = 1.0 / (v43 + (v21 + -1.0) / v45);
LABEL_54:
  v25 = v42 + log(v52);
LABEL_55:
  if (v25 > 709.0)
  {
    sub_1D0D28B48(qword_1EC5FB400, "Overflow Error");
  }

  return exp(v25);
}

double sub_1D0BEF33C(double *a1, double a2, double a3)
{
  v6 = sqrt(a3);
  v7 = sub_1D0BEE5E0(1, v6);
  if (fabs(v7) > 1.79769313e308)
  {
    sub_1D0D28B48("boost::math::erfc<%1%>(%1%, %1%)", "numeric overflow");
  }

  if (a2 <= 1.0 || v7 == 0.0)
  {
    if (!a1)
    {
      return v7;
    }

    v14 = v6 * exp(-a3) / 1.77245385;
LABEL_12:
    *a1 = v14;
    return v7;
  }

  v8 = exp(-a3);
  v9 = sqrt(a3 * 3.14159265);
  v10 = v8 / v9 * a3 + v8 / v9 * a3;
  v11 = 2.0;
  if (a2 > 2.0)
  {
    v12 = 3;
    v13 = v10;
    do
    {
      v13 = v13 / (v11 + -0.5) * a3;
      v10 = v10 + v13;
      v11 = v12++;
    }

    while (v11 < a2);
  }

  v7 = v7 + v10;
  v14 = 0.0;
  if (a1)
  {
    goto LABEL_12;
  }

  return v7;
}

void sub_1D0BEF464(uint64_t a1, double a2, long double a3)
{
  v19 = a3;
  v20 = a2;
  if (a2 <= 0.0)
  {
    v4 = "Argument a to the incomplete gamma function must be greater than zero (got a=%1%).";
    v5 = &v20;
LABEL_5:
    sub_1D0C50B00("boost::math::gamma_p_derivative<%1%>(%1%, %1%)", v4, v5);
  }

  if (a3 < 0.0)
  {
    v4 = "Argument x to the incomplete gamma function must be >= 0 (got x=%1%).";
    v5 = &v19;
    goto LABEL_5;
  }

  if (a3 == 0.0)
  {
    if (a2 >= 1.0)
    {
      return;
    }

LABEL_19:
    sub_1D0D28B48("boost::math::gamma_p_derivative<%1%>(%1%, %1%)", "Overflow Error");
  }

  v7 = sub_1D0BEF5BC(a1, &v22, a2, a3);
  if (a3 < 1.0 && a3 * 1.79769313e308 < v7)
  {
    goto LABEL_19;
  }

  if (v7 == 0.0)
  {
    v9 = log(a3);
    v10 = -(a3 - a2 * v9);
    v18 = sub_1D0D28C80(&v22, &v21, 0, a2, v11, v12, v13, v14, v15, v16, v17);
    if (fabs(v18) > 1.79769313e308)
    {
      sub_1D0D28B48("boost::math::lgamma<%1%>(%1%)", "numeric overflow");
    }

    exp(v10 - v18 - v9);
  }
}

double sub_1D0BEF5BC(uint64_t a1, uint64_t a2, double a3, long double a4)
{
  v62 = a3;
  result = 0.0;
  if (a4 >= 1.79769313e308)
  {
    return result;
  }

  if (a3 >= 1.0)
  {
    v20 = a3 + 6.02468004 + -0.5;
    if (a3 > 150.0)
    {
      v21 = (a4 - a3 + -6.02468004 + 0.5) / v20;
      if (fabs(v21 * v21 * a3) <= 100.0)
      {
        v63 = (a4 - a3 + -6.02468004 + 0.5) / v20;
        if (v21 < -1.0)
        {
          sub_1D0C50B00(qword_1EC5FB3F8, "log1pmx(x) requires x > -1, but got x = %1%.", &v63);
        }

        if (v21 == -1.0)
        {
          sub_1D0D28B48(qword_1EC5FB3F8, "Overflow Error");
        }

        v56 = fabs(v21);
        if (v56 <= 0.949999988)
        {
          v58 = -v21;
          if (v56 >= 2.22044605e-16)
          {
            v57 = 0.0;
            v59 = 2;
            v60 = 1000000;
            do
            {
              v21 = v21 * v58;
              v61 = v21 / v59;
              v57 = v57 + v61;
              if (fabs(v57 * 2.22044605e-16) >= fabs(v61))
              {
                break;
              }

              ++v59;
              --v60;
            }

            while (v60);
            if ((1000000 - v60) >= 0xF4240)
            {
              v64 = (1000000 - v60);
              sub_1D0D29B54(qword_1EC5FB3F8, "Series evaluation exceeded %1% iterations, giving up now.", &v64);
            }
          }

          else
          {
            v57 = v21 * v58 * 0.5;
          }
        }

        else
        {
          v57 = log(v21 + 1.0) - v21;
        }

        v52 = a4 * -5.52468004 / v20 + a3 * v57;
        goto LABEL_38;
      }
    }

    v22 = a4 / v20;
    v23 = log(a4 / v20);
    v24 = v23 * a3;
    v25 = a3 - a4;
    if (a3 - a4 >= v23 * a3)
    {
      v26 = v23 * a3;
    }

    else
    {
      v26 = a3 - a4;
    }

    if (v26 <= -708.0 || (v24 >= v25 ? (v27 = v24) : (v27 = a3 - a4), v27 >= 709.0))
    {
      if (v26 * 0.5 <= -708.0 || (v24 >= v25 ? (v46 = v24) : (v46 = a3 - a4), v46 * 0.5 >= 709.0))
      {
        if (v26 * 0.25 <= -708.0 || (v24 >= v25 ? (v49 = v24) : (v49 = a3 - a4), a3 >= a4 || v49 * 0.25 >= 709.0))
        {
          v54 = v25 / a3;
          if (v25 / a3 > -708.0 && v54 < 709.0)
          {
            v55 = exp(v54);
            v53 = pow(v55 * a4 / v20, a3);
            goto LABEL_39;
          }

          v52 = v25 + v24;
LABEL_38:
          v53 = exp(v52);
LABEL_39:
          v36 = v53;
          return v36 * (sqrt(v20 / 2.71828183) / sub_1D0BEF9DC(dbl_1D0E7F258, dword_1D0E7F2C0, &v62, v20 / 2.71828183, v29, v30, v31, v32, v33, v34, v35));
        }

        v50 = pow(v22, a3 * 0.25);
        v51 = exp(v25 * 0.25);
        v48 = v50 * v51 * (v50 * v51);
      }

      else
      {
        v47 = pow(v22, a3 * 0.5);
        v48 = v47 * exp(v25 * 0.5);
      }

      v36 = v48 * v48;
    }

    else
    {
      v28 = pow(a4 / v20, a3);
      v36 = exp(v25) * v28;
    }

    return v36 * (sqrt(v20 / 2.71828183) / sub_1D0BEF9DC(dbl_1D0E7F258, dword_1D0E7F2C0, &v62, v20 / 2.71828183, v29, v30, v31, v32, v33, v34, v35));
  }

  v9 = -a4;
  if (a4 <= -708.0)
  {
    v37 = a3 * log(a4) - a4;
    v45 = v37 - sub_1D0D28C80(a1, a2, 0, a3, v38, v39, v40, v41, v42, v43, v44);

    return exp(v45);
  }

  else
  {
    v10 = pow(a4, a3);
    v11 = v10 * exp(v9);
    sub_1D0C3BB74(a3, v12, v13, v14, v15, v16, v17, v18);
    return v11 / v19;
  }
}

double sub_1D0BEF9DC(float64_t *a1, _DWORD *a2, double *a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11)
{
  v21 = *a3;
  if (*a3 <= 1.0)
  {
    v41 = v21 * v21;
    v23.f64[0] = a1[11];
    v24.f64[0] = a1[12];
    LODWORD(a10) = a2[11];
    LODWORD(a9) = a2[12];
    v27 = *&a9;
    LODWORD(a11) = a2[9];
    LODWORD(a9) = a2[10];
    v28 = *&a9;
    v29 = *&a10;
    v30 = *&a11;
    v26.f64[0] = a1[9];
    v25.f64[0] = a1[10];
    LODWORD(v14) = a2[7];
    LODWORD(a11) = a2[8];
    v33 = *&a11;
    v34 = v14;
    v32.f64[0] = a1[7];
    v31.f64[0] = a1[8];
    LODWORD(v16) = a2[5];
    LODWORD(v15) = a2[6];
    v37 = v15;
    v38 = v16;
    v36.f64[0] = a1[5];
    v35.f64[0] = a1[6];
    LODWORD(v19) = a2[3];
    LODWORD(v17) = a2[4];
    v42 = v17;
    v43 = v19;
    v40.f64[0] = a1[3];
    v39.f64[0] = a1[4];
    LODWORD(v11) = a2[1];
    LODWORD(v20) = a2[2];
    v46 = v20;
    v47 = v11;
    v45.f64[0] = a1[1];
    v44.f64[0] = a1[2];
    v48.f64[0] = *a1;
  }

  else
  {
    *&v22 = v21 * v21;
    v21 = 1.0 / v21;
    v24.f64[0] = *a1;
    v23.f64[0] = a1[1];
    v25.f64[0] = a1[2];
    v26.f64[0] = a1[3];
    LODWORD(a10) = *a2;
    LODWORD(a11) = a2[1];
    v27 = *&a10;
    LODWORD(a10) = a2[2];
    LODWORD(v14) = a2[3];
    v28 = *&a10;
    v29 = *&a11;
    v30 = v14;
    v31.f64[0] = a1[4];
    v32.f64[0] = a1[5];
    LODWORD(v14) = a2[4];
    LODWORD(v15) = a2[5];
    v33 = v14;
    v34 = v15;
    v35.f64[0] = a1[6];
    v36.f64[0] = a1[7];
    LODWORD(v16) = a2[6];
    LODWORD(v18) = a2[7];
    v37 = v16;
    v38 = v18;
    v39.f64[0] = a1[8];
    v40.f64[0] = a1[9];
    v41 = 1.0 / *&v22;
    LODWORD(v22) = a2[8];
    LODWORD(v20) = a2[9];
    v42 = v22;
    v43 = v20;
    v44.f64[0] = a1[10];
    v45.f64[0] = a1[11];
    LODWORD(v11) = a2[10];
    LODWORD(v12) = a2[11];
    v46 = v11;
    v47 = v12;
    v48.f64[0] = a1[12];
    a2 += 12;
  }

  LODWORD(v13) = *a2;
  v24.f64[1] = v27;
  v25.f64[1] = v28;
  v23.f64[1] = v29;
  v26.f64[1] = v30;
  v31.f64[1] = v33;
  v32.f64[1] = v34;
  v35.f64[1] = v37;
  v36.f64[1] = v38;
  v39.f64[1] = v42;
  v40.f64[1] = v43;
  v44.f64[1] = v46;
  v45.f64[1] = v47;
  v48.f64[1] = v13;
  v49 = vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(vmlaq_n_f64(v26, v23, v41), v41), v32), v41), v36), v41), v40), v41), v45), v21), vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(vmlaq_n_f64(v25, v24, v41), v41), v31), v41), v35), v41), v39), v41), v44), v41), v48));
  *&result = *&vdivq_f64(v49, vdupq_laneq_s64(v49, 1));
  return result;
}

uint64_t sub_1D0BEFB7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x10000000ALL;
  *a1 = &unk_1F4CEAE48;
  *(a1 + 8) = xmmword_1D0E87BE0;
  *(a1 + 32) = a1 + 40;
  return sub_1D0B89390(a2, a3, a1);
}

uint64_t sub_1D0BEFC08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    v7 = *(a4 + 8);
    do
    {
      v8 = *(a4 + 16);
      if (v7 >= v8)
      {
        v10 = (v7 - *a4) >> 5;
        if ((v10 + 1) >> 59)
        {
          sub_1D0C5663C();
        }

        v11 = v8 - *a4;
        v12 = v11 >> 4;
        if (v11 >> 4 <= (v10 + 1))
        {
          v12 = v10 + 1;
        }

        if (v11 >= 0x7FFFFFFFFFFFFFE0)
        {
          v13 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v13 = v12;
        }

        v21[4] = a4;
        if (v13)
        {
          sub_1D0BA5DE4(a4, v13);
        }

        v14 = 32 * v10;
        *v14 = *v5;
        v15 = *(v5 + 8);
        *(v14 + 24) = *(v5 + 24);
        *(v14 + 8) = v15;
        *(v5 + 16) = 0;
        *(v5 + 24) = 0;
        *(v5 + 8) = 0;
        v7 = 32 * v10 + 32;
        v16 = *(a4 + 8) - *a4;
        v17 = 32 * v10 - v16;
        memcpy((v14 - v16), *a4, v16);
        v18 = *a4;
        *a4 = v17;
        v21[0] = v18;
        v21[1] = v18;
        *(a4 + 8) = v7;
        v21[2] = v18;
        v19 = *(a4 + 16);
        *(a4 + 16) = 0;
        v21[3] = v19;
        sub_1D0DA1008(v21);
      }

      else
      {
        *v7 = *v5;
        v9 = *(v5 + 8);
        *(v7 + 24) = *(v5 + 24);
        *(v7 + 8) = v9;
        *(v5 + 16) = 0;
        *(v5 + 24) = 0;
        *(v5 + 8) = 0;
        v7 += 32;
      }

      *(a4 + 8) = v7;
      v5 += 32;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void *sub_1D0BEFD68(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 5)
  {
    if (!(a2 >> 59))
    {
      v2 = result[1] - *result;
      v3 = result;
      sub_1D0BA5DE4(result, a2);
    }

    sub_1D0C5663C();
  }

  return result;
}

void *sub_1D0BEFE04(void *a1)
{
  *a1 = &unk_1F4CED5C8;
  v2 = a1[5];
  a1[5] = 0;
  if (v2)
  {
    MEMORY[0x1D387EC80](v2, 0x1000C8000313F17);
  }

  *a1 = &unk_1F4CD5E28;
  return a1;
}

void raven::RavenIonosphereEstimator::AddToAcceptedMeasurementTypeCount(cnprint::CNPrinter *a1, unsigned int **a2)
{
  sub_1D0B751F4(__p, "Accepted");
  raven::RavenIonosphereEstimator::UpdateMeasurementTypeCount(a1, __p, a2, a1 + 3240, a1 + 3636);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1D0BEFEE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void raven::RavenIonosphereEstimator::UpdateMeasurementTypeCount(cnprint::CNPrinter *a1, uint64_t a2, unsigned int **a3, uint64_t a4, uint64_t a5)
{
  v73[2] = *MEMORY[0x1E69E9840];
  v5 = *a3;
  v6 = a3[1];
  v7 = *a3;
  if (*a3 != v6)
  {
    do
    {
      ++*(a4 + 4 * *v7);
      v12 = *v7;
      v7 += 8;
      ++*(a5 + 4 * v12);
    }

    while (v7 != v6);
    LogLevel = cnprint::CNPrinter::GetLogLevel(a1);
    if (!LogLevel)
    {
      v64 = a1;
      if (*(a2 + 23) < 0)
      {
        LogLevel = sub_1D0BC39B4(&__dst, *a2, *(a2 + 8));
      }

      else
      {
        __dst = *a2;
      }

      for (i = 0; i != 33; ++i)
      {
        v15 = *(a4 + 4 * i);
        if (v15)
        {
          v16 = "UnknownMeas";
          if (i <= 0x20)
          {
            v16 = off_1E83D8040[i];
          }

          sub_1D0B751F4(&__p, v16);
          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = __dst.__r_.__value_.__l.__size_;
          }

          sub_1D0BBB710(&v66, size + 1);
          if ((v66.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v18 = &v66;
          }

          else
          {
            v18 = v66.__r_.__value_.__r.__words[0];
          }

          if (size)
          {
            if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              p_dst = &__dst;
            }

            else
            {
              p_dst = __dst.__r_.__value_.__r.__words[0];
            }

            memmove(v18, p_dst, size);
          }

          *(&v18->__r_.__value_.__l.__data_ + size) = 44;
          if ((v71 & 0x80u) == 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p;
          }

          if ((v71 & 0x80u) == 0)
          {
            v21 = v71;
          }

          else
          {
            v21 = v70;
          }

          v22 = std::string::append(&v66, p_p, v21);
          v23 = *&v22->__r_.__value_.__l.__data_;
          v67.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
          *&v67.__r_.__value_.__l.__data_ = v23;
          v22->__r_.__value_.__l.__size_ = 0;
          v22->__r_.__value_.__r.__words[2] = 0;
          v22->__r_.__value_.__r.__words[0] = 0;
          v24 = std::string::append(&v67, ",", 1uLL);
          v25 = *&v24->__r_.__value_.__l.__data_;
          v68.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
          *&v68.__r_.__value_.__l.__data_ = v25;
          v24->__r_.__value_.__l.__size_ = 0;
          v24->__r_.__value_.__r.__words[2] = 0;
          v24->__r_.__value_.__r.__words[0] = 0;
          std::to_string(&v65, v15);
          if ((v65.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v26 = &v65;
          }

          else
          {
            v26 = v65.__r_.__value_.__r.__words[0];
          }

          if ((v65.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v27 = HIBYTE(v65.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v27 = v65.__r_.__value_.__l.__size_;
          }

          LogLevel = std::string::append(&v68, v26, v27);
          v28 = *LogLevel;
          v73[0] = LogLevel[1];
          *(v73 + 7) = *(LogLevel + 15);
          v29 = *(LogLevel + 23);
          LogLevel[1] = 0;
          LogLevel[2] = 0;
          *LogLevel = 0;
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }

          __dst.__r_.__value_.__r.__words[0] = v28;
          __dst.__r_.__value_.__l.__size_ = v73[0];
          *(&__dst.__r_.__value_.__r.__words[1] + 7) = *(v73 + 7);
          *(&__dst.__r_.__value_.__s + 23) = v29;
          if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v65.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v68.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v67.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v66.__r_.__value_.__l.__data_);
          }

          if (v71 < 0)
          {
            operator delete(__p);
          }
        }
      }

      if (!cnprint::CNPrinter::GetLogLevel(LogLevel))
      {
        LOWORD(__p) = 12;
        v68.__r_.__value_.__s.__data_[0] = 0;
        v30 = &__dst;
        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v30 = __dst.__r_.__value_.__r.__words[0];
        }

        v31 = cnprint::CNLogFormatter::FormatGeneral(v64 + 4040, v64 + 32, "count_per_update,%s", v30);
        if (*(v64 + 4063) >= 0)
        {
          LOBYTE(v37) = v31;
        }

        else
        {
          v37 = *(v64 + 505);
        }

        cnprint::CNPrinter::Print(&__p, &v68, "%s", v32, v33, v34, v35, v36, v37);
      }

      v38 = std::string::operator=(&__dst, a2);
      for (j = 0; j != 33; ++j)
      {
        v40 = *(a5 + 4 * j);
        if (v40)
        {
          v41 = "UnknownMeas";
          if (j <= 0x20)
          {
            v41 = off_1E83D8040[j];
          }

          sub_1D0B751F4(&__p, v41);
          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v42 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v42 = __dst.__r_.__value_.__l.__size_;
          }

          sub_1D0BBB710(&v66, v42 + 1);
          if ((v66.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v43 = &v66;
          }

          else
          {
            v43 = v66.__r_.__value_.__r.__words[0];
          }

          if (v42)
          {
            if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v44 = &__dst;
            }

            else
            {
              v44 = __dst.__r_.__value_.__r.__words[0];
            }

            memmove(v43, v44, v42);
          }

          *(&v43->__r_.__value_.__l.__data_ + v42) = 44;
          if ((v71 & 0x80u) == 0)
          {
            v45 = &__p;
          }

          else
          {
            v45 = __p;
          }

          if ((v71 & 0x80u) == 0)
          {
            v46 = v71;
          }

          else
          {
            v46 = v70;
          }

          v47 = std::string::append(&v66, v45, v46);
          v48 = *&v47->__r_.__value_.__l.__data_;
          v67.__r_.__value_.__r.__words[2] = v47->__r_.__value_.__r.__words[2];
          *&v67.__r_.__value_.__l.__data_ = v48;
          v47->__r_.__value_.__l.__size_ = 0;
          v47->__r_.__value_.__r.__words[2] = 0;
          v47->__r_.__value_.__r.__words[0] = 0;
          v49 = std::string::append(&v67, ",", 1uLL);
          v50 = *&v49->__r_.__value_.__l.__data_;
          v68.__r_.__value_.__r.__words[2] = v49->__r_.__value_.__r.__words[2];
          *&v68.__r_.__value_.__l.__data_ = v50;
          v49->__r_.__value_.__l.__size_ = 0;
          v49->__r_.__value_.__r.__words[2] = 0;
          v49->__r_.__value_.__r.__words[0] = 0;
          std::to_string(&v65, v40);
          if ((v65.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v51 = &v65;
          }

          else
          {
            v51 = v65.__r_.__value_.__r.__words[0];
          }

          if ((v65.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v52 = HIBYTE(v65.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v52 = v65.__r_.__value_.__l.__size_;
          }

          v38 = std::string::append(&v68, v51, v52);
          v53 = v38->__r_.__value_.__r.__words[0];
          v73[0] = v38->__r_.__value_.__l.__size_;
          *(v73 + 7) = *(&v38->__r_.__value_.__r.__words[1] + 7);
          v54 = HIBYTE(v38->__r_.__value_.__r.__words[2]);
          v38->__r_.__value_.__l.__size_ = 0;
          v38->__r_.__value_.__r.__words[2] = 0;
          v38->__r_.__value_.__r.__words[0] = 0;
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }

          __dst.__r_.__value_.__r.__words[0] = v53;
          __dst.__r_.__value_.__l.__size_ = v73[0];
          *(&__dst.__r_.__value_.__r.__words[1] + 7) = *(v73 + 7);
          *(&__dst.__r_.__value_.__s + 23) = v54;
          if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v65.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v68.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v67.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v66.__r_.__value_.__l.__data_);
          }

          if (v71 < 0)
          {
            operator delete(__p);
          }
        }
      }

      if (!cnprint::CNPrinter::GetLogLevel(v38))
      {
        LOWORD(__p) = 12;
        v68.__r_.__value_.__s.__data_[0] = 0;
        v55 = &__dst;
        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v55 = __dst.__r_.__value_.__r.__words[0];
        }

        v56 = cnprint::CNLogFormatter::FormatGeneral(v64 + 4040, v64 + 32, "count_cumulative,%s", v55);
        if (*(v64 + 4063) >= 0)
        {
          LOBYTE(v62) = v56;
        }

        else
        {
          v62 = *(v64 + 505);
        }

        cnprint::CNPrinter::Print(&__p, &v68, "%s", v57, v58, v59, v60, v61, v62);
      }

      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }
    }
  }

  v63 = *MEMORY[0x1E69E9840];
}

void raven::RavenIonosphereEstimator::AddToRejectedMeasurementTypeCount(cnprint::CNPrinter *a1, unsigned int **a2)
{
  sub_1D0B751F4(__p, "Rejected");
  raven::RavenIonosphereEstimator::UpdateMeasurementTypeCount(a1, __p, a2, a1 + 3372, a1 + 3768);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1D0BF05B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void raven::RavenIonosphereEstimator::AddToUnusedMeasurementTypeCount(cnprint::CNPrinter *a1, unsigned int **a2)
{
  sub_1D0B751F4(__p, "Unused");
  raven::RavenIonosphereEstimator::UpdateMeasurementTypeCount(a1, __p, a2, a1 + 3504, a1 + 3900);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1D0BF0634(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0BF0650(uint64_t a1)
{
  v1 = 1.0 - *(a1 + 56);
  v3 = 1.0 - *(a1 + 64);
  v4 = v1;
  if (*(a1 + 24) == 1)
  {
    *(a1 + 8) = *(a1 + 16);
  }

  return sub_1D0BF06AC(a1 + 8, (a1 + 8), &v4, &v3);
}

uint64_t sub_1D0BF06AC(uint64_t a1, double *a2, double *a3, double *a4)
{
  v5 = *a2;
  if (*a2 < 0.0 || v5 > 1.0)
  {
    if (cnprint::CNPrinter::GetLogLevel(a1) <= 1)
    {
      v44 = 2;
      v43 = 1;
      cnprint::CNPrinter::Print(&v44, &v43, "WARNING: DiscreteEventDetector::Update called with bad xbar %.3lf.", v7, v8, v9, v10, v11, *a2);
    }

    return 0xFFFFFFFFLL;
  }

  v14 = fabs(*a4);
  if (fabs(*a3) < 2.22044605e-16 && v14 < 2.22044605e-16)
  {
    if (cnprint::CNPrinter::GetLogLevel(a1) <= 1)
    {
      v42 = 2;
      v41 = 1;
      v39 = *a3;
      v40 = *a4;
      cnprint::CNPrinter::Print(&v42, &v41, "WARNING: DiscreteEventDetector::Update called with bad pzgx,%.3lf,pzgnx,%.3lf.", v34, v35, v36, v37, v38, *a3);
    }

    return 0xFFFFFFFFLL;
  }

  *a1 = v5;
  v17 = 0.0;
  v18 = fmax(1.0 - v5, 0.0);
  v19 = fabs(*a3);
  v20 = fabs(v5) < 2.22044605e-16 || v19 < 2.22044605e-16;
  v21 = 0.0;
  if (!v20)
  {
    v22 = log(*a3);
    v23 = log(v5);
    v21 = exp(v23 + v22);
  }

  v24 = fabs(*a4);
  if (v18 >= 2.22044605e-16 && v24 >= 2.22044605e-16)
  {
    v26 = log(*a4);
    v27 = log(v18);
    v17 = exp(v27 + v26);
  }

  *(a1 + 8) = 0;
  v28 = 0.0;
  if (fabs(v21) >= 2.22044605e-16)
  {
    v29 = v21 + v17;
    if (fabs(v29) >= 2.22044605e-16)
    {
      v30 = log(*a3);
      v31 = log(v5) + v30;
      v32 = log(v29);
      v28 = exp(v31 - v32);
    }
  }

  result = 0;
  *(a1 + 8) = fmin(v28, 1.0);
  *(a1 + 16) = 1;
  return result;
}

uint64_t sub_1D0BF08D4(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 1))
  {
    if (*(a1 + 12704))
    {
      sub_1D0BF09AC(v11);
      v15 = 0x10000002CLL;
      v13 = &unk_1F4CEDCB8;
      v14 = xmmword_1D0EA1270;
      v16 = &v17;
      sub_1D0BF0AB0(a1 + 4680, v11, &v13);
      result = 0;
      *a2 = *v12;
      return result;
    }
  }

  else
  {
    LOBYTE(v13) = 2;
    cnprint::CNPrinter::Print(v11, &v13, "WARNING: MeasurementAccumulator.LatestLockedMeasurementTime() called on unlocked accumulator.", a4, a5, a6, a7, a8, 2);
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_1D0BF09AC(uint64_t a1)
{
  *(a1 + 24) = 0x10000002CLL;
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F4CECE90;
  for (i = 40; i != 744; i += 16)
  {
    v3 = (a1 + i);
    *v3 = 0;
    v3[1] = 0;
  }

  if (!*(a1 + 24))
  {
    v5 = "this->max_num_rows_ > 0";
    v6 = 394;
    goto LABEL_8;
  }

  if (!*(a1 + 28))
  {
    v5 = "this->max_num_cols_ > 0";
    v6 = 395;
LABEL_8:
    __assert_rtn("CNMatrix", "cnmatrix.h", v6, v5);
  }

  *(a1 + 8) = xmmword_1D0EA1270;
  (*(*a1 + 16))(a1);
  return a1;
}

__n128 sub_1D0BF0AB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D0BF0B5C(a1, 1, a2, a3);
  if (*(a1 + 8) == 1 || *(a1 + 12) == 1)
  {
    if (*(a2 + 16) >= 2)
    {
      v8 = 1;
      v9 = 16;
      do
      {
        if (sub_1D0B7CF88((*(a2 + 32) + v9), *(a2 + 32)))
        {
          **(a2 + 32) = *(*(a2 + 32) + v9);
          **(a3 + 32) = *(*(a3 + 32) + 4 * v8);
        }

        ++v8;
        v9 += 16;
      }

      while (v8 < *(a2 + 16));
    }

    result.n128_u64[0] = 0x100000001;
    result.n128_u64[1] = 0x100000001;
    *(a2 + 8) = result;
    *(a3 + 8) = result;
  }

  return result;
}

uint64_t sub_1D0BF0B5C(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  v6 = result;
  if (a2 == 1)
  {
    v7 = *(result + 12);
    *(a3 + 8) = 1;
    *(a3 + 12) = v7;
    *(a3 + 16) = v7;
    *(a3 + 20) = 1;
    *(a4 + 8) = 1;
    *(a4 + 12) = v7;
    *(a4 + 16) = v7;
    *(a4 + 20) = 1;
    if (v7)
    {
      v8 = 0;
      v9 = *(result + 32);
      v10 = *(a3 + 32);
      v11 = *(a4 + 32);
      while (1)
      {
        v12 = *(v6 + 8);
        v13 = (v9 + 16 * (v12 * v8));
        v14 = *v13;
        v15 = v13[1];
        if (v12 >= 2)
        {
          break;
        }

        v16 = 0;
LABEL_22:
        v22 = (v10 + 16 * v8);
        *v22 = v14;
        v22[1] = v15;
        *(v11 + 4 * v8++) = v16;
        if (v8 >= *(v6 + 12))
        {
          return result;
        }
      }

      v16 = 0;
      v17 = 1;
      while (1)
      {
        v18 = (v9 + 16 * (v12 * v8 + v17));
        result = *v18;
        v19 = v18[1];
        if (*v18)
        {
          v20 = 1;
        }

        else
        {
          v20 = (*&v19 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL;
        }

        if (!v20)
        {
          goto LABEL_16;
        }

        if (v14 != 0.0 || (*&v15 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          break;
        }

        if (v19 > v15)
        {
          goto LABEL_18;
        }

        v14 = 0.0;
LABEL_19:
        if (v12 == ++v17)
        {
          goto LABEL_22;
        }
      }

      v21 = result <= *&v14;
      if (result == *&v14)
      {
LABEL_16:
        v21 = v19 <= v15;
      }

      if (!v21)
      {
LABEL_18:
        v14 = *v18;
        v15 = v19;
        v16 = v17;
        goto LABEL_19;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v23 = *(result + 8);
    *(a3 + 8) = v23;
    *(a3 + 12) = 1;
    *(a3 + 16) = v23;
    *(a3 + 20) = v23;
    *(a4 + 8) = v23;
    *(a4 + 12) = 1;
    *(a4 + 16) = v23;
    *(a4 + 20) = v23;
    if (v23)
    {
      v24 = 0;
      v25 = 0;
      do
      {
        *(*(a3 + 32) + v24) = *(*(result + 32) + v24);
        *(*(a4 + 32) + 4 * v25++) = 0;
        v24 += 16;
      }

      while (v25 < *(result + 8));
    }

    v26 = *(result + 12);
    if (v26 >= 2)
    {
      LODWORD(v27) = *(result + 8);
      for (i = 1; i < v26; ++i)
      {
        if (v27)
        {
          v29 = 0;
          v30 = 0;
          v31 = v27 * i;
          do
          {
            v32 = *(*(v6 + 32) + 16 * (v31 + v30));
            result = sub_1D0B7CF88(&v32, (*(a3 + 32) + v29));
            if (result)
            {
              *(*(a3 + 32) + v29) = v32;
              *(*(a4 + 32) + 4 * v30) = i;
            }

            ++v30;
            v27 = *(v6 + 8);
            v29 += 16;
          }

          while (v30 < v27);
          v26 = *(v6 + 12);
        }
      }
    }
  }

  return result;
}

void sub_1D0BF0D88(uint64_t a1, __n128 *a2)
{
  if (*a1 == 1)
  {
    if (*(a1 + 1) == 1)
    {
      *(a1 + 1) = 0;
    }

    if (*(a1 + 3184))
    {
      if (!sub_1D0B9D420(a2->n128_f64, (a1 + 8)))
      {
        v4 = *(a1 + 3184);
        v48 = 0x100000058;
        v49 = 0;
        v47 = 0;
        v46 = 0;
        v45 = &unk_1F4CECFB0;
        if ((v4 & 0x80000000) == 0)
        {
          v5 = 0;
          v46 = v4 | 0x100000000;
          LODWORD(v47) = v4;
          HIDWORD(v47) = v4;
          v49 = &v50;
          if (v4)
          {
            v6 = *(a1 + 48);
            if (v6 != (a1 + 40))
            {
              v7 = 0;
              v5 = 0;
              v8 = 1;
              do
              {
                if (sub_1D0B7CF88((*(a1 + 96) + v7), a2->n128_f64))
                {
                  *(v49 + v5) = v8 - 1;
                  v6 = v6[1];
                  ++v5;
                }

                else
                {
                  v9 = *v6;
                  v10 = v6[1];
                  v9[1] = v10;
                  *v10 = v9;
                  --*(a1 + 56);
                  sub_1D0B9FF7C(v6 + 2);
                  operator delete(v6);
                  v6 = v10;
                }

                if (v8 >= v4)
                {
                  break;
                }

                ++v8;
                v7 += 16;
              }

              while (v6 != (a1 + 40));
            }
          }

          v46 = v5 | 0x100000000;
          LODWORD(v47) = v5;
          HIDWORD(v47) = v5;
          *(a1 + 3184) = v5;
          sub_1D0BF162C(v31);
          *v31 = &unk_1F4CEDD00;
          v39[82] = a1 + 64;
          v42 = 0x100000058;
          v40 = &unk_1F4CECFB0;
          v41 = xmmword_1D0EA1260;
          v43 = &v44;
          sub_1D0B9F5D4(&v40, &v45);
          *&v31[8] = v41;
          *&v31[16] = DWORD1(v41) * v41;
          *&v31[20] = v41;
          if (DWORD1(v41) * v41 >= 1)
          {
            v11 = 0;
            v12 = 0;
            v13 = 4 * (DWORD1(v41) * v41);
            do
            {
              *&v33[v11] = *(*(a1 + 96) + 16 * *(v43 + v12));
              v12 += 4;
              v11 += 2;
            }

            while (v13 != v12);
          }

          sub_1D0BF181C(a1 + 64, v31);
          sub_1D0BF173C(v31, a1 + 1512, &v45);
          sub_1D0B9F5D4(a1 + 1512, v31);
          v32 = 0x100000058;
          *&v31[8] = xmmword_1D0EA1260;
          v33 = v34;
          *v31 = &unk_1F4CEDD90;
          v34[88] = a1 + 1904;
          v37 = 0x100000058;
          v35 = &unk_1F4CECFB0;
          v36 = xmmword_1D0EA1260;
          v38 = v39;
          sub_1D0B9F5D4(&v35, &v45);
          *&v31[8] = v36;
          v14 = (DWORD1(v36) * v36);
          *&v31[16] = v14;
          *&v31[20] = v36;
          if (v14 >= 1)
          {
            v15 = *(a1 + 1936);
            v16 = v38;
            v17 = v33;
            do
            {
              v18 = *v16++;
              *v17++ = *(v15 + 8 * v18);
              --v14;
            }

            while (v14);
          }

          sub_1D0B894B0(a1 + 1904, v31);
          sub_1D0BF18AC(v31);
        }

        __assert_rtn("CNMatrix", "cnmatrix.h", 419, "nr >= 0");
      }
    }

    else
    {
      *v31 = *(a1 + 8);
      sub_1D0E15A54(a1);
      sub_1D0BADC18(a1, a2, v19, v20, v21, v22, v23, v24);
      *a1 = 0;
      sub_1D0BADC18(a1, v31, v25, v26, v27, v28, v29, v30);
    }
  }
}

double sub_1D0BF1450(_BYTE *a1, __n128 *a2)
{
  sub_1D0BF0D88(a1, a2);
  *a1 = 0;

  *&result = sub_1D0BADC18(a1, a2, v4, v5, v6, v7, v8, v9).n128_u64[0];
  return result;
}

void *sub_1D0BF1494(int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      sub_1D0C05A00(a3, a2[1]);
      return 0;
    }

    v7 = a2[1];
    (**v7)(v7);
    operator delete(v7);
    result = 0;
LABEL_9:
    *a2 = 0;
    return result;
  }

  if (a1 == 2)
  {
    result = 0;
    v9 = a2[1];
    *a3 = sub_1D0BF1494;
    a3[1] = v9;
    goto LABEL_9;
  }

  if (a1 != 3)
  {
    return &unk_1F4CED158;
  }

  if (a4)
  {
    v6 = sub_1D0B7CA64(a4, &unk_1F4CED158);
  }

  else
  {
    v6 = a5 == &std::__any_imp::__unique_typeinfo<raven::h_GnssGeometryFreePsrArgs_RavenIonosphere>::__id;
  }

  if (v6)
  {
    return a2[1];
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0BF1580(uint64_t a1)
{
  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  *(a1 + 504) = &unk_1F4CDFE98;
  if (*(a1 + 535) < 0)
  {
    operator delete(*(a1 + 512));
  }

  *(a1 + 504) = &unk_1F4CD5F70;
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  return a1;
}

uint64_t sub_1D0BF162C(uint64_t a1)
{
  *(a1 + 24) = 0x100000058;
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F4CED040;
  for (i = 40; i != 1448; i += 16)
  {
    v3 = (a1 + i);
    *v3 = 0;
    v3[1] = 0;
  }

  if (!*(a1 + 24))
  {
    v5 = "this->max_num_rows_ > 0";
    v6 = 394;
    goto LABEL_8;
  }

  if (!*(a1 + 28))
  {
    v5 = "this->max_num_cols_ > 0";
    v6 = 395;
LABEL_8:
    __assert_rtn("CNMatrix", "cnmatrix.h", v6, v5);
  }

  *(a1 + 8) = xmmword_1D0EA1260;
  (*(*a1 + 16))(a1);
  return a1;
}

uint64_t sub_1D0BF173C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x100000058;
  *(a1 + 8) = xmmword_1D0EA1260;
  *(a1 + 32) = a1 + 40;
  *a1 = &unk_1F4CEDD48;
  *(a1 + 392) = a2;
  *(a1 + 424) = 0x100000058;
  *(a1 + 400) = &unk_1F4CECFB0;
  *(a1 + 408) = xmmword_1D0EA1260;
  *(a1 + 432) = a1 + 440;
  sub_1D0B9F5D4(a1 + 400, a3);
  v5 = *(a1 + 408);
  v6 = *(a1 + 412);
  *(a1 + 8) = v5;
  *(a1 + 12) = v6;
  v7 = (v6 * v5);
  *(a1 + 16) = v7;
  *(a1 + 20) = v5;
  if (v7 >= 1)
  {
    v8 = *(a1 + 432);
    v9 = *(a2 + 32);
    v10 = *(a1 + 32);
    do
    {
      v11 = *v8++;
      *v10++ = *(v9 + 4 * v11);
      --v7;
    }

    while (v7);
  }

  return a1;
}

__n128 sub_1D0BF181C(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    v2 = *(a2 + 12);
    *(a1 + 8) = v3;
    *(a1 + 12) = v2;
    v4 = v2 * v3;
    *(a1 + 16) = v4;
    *(a1 + 20) = v3;
    v5 = *(a2 + 16);
    if (v5 > 3)
    {
      v9 = (v5 - 1);
      v10 = *(a1 + 32);
      v11 = *(a2 + 32);
      v12 = v11;
      v13 = v10;
      v14 = v9;
      do
      {
        v15 = *v12++;
        *v13++ = v15;
        --v14;
      }

      while (v14);
      result = v11[v9];
      v10[v9] = result;
    }

    else if (v4 >= 1)
    {
      v6 = 0;
      v7 = 0;
      do
      {
        result = *(*(a2 + 32) + v6);
        *(*(a1 + 32) + v6) = result;
        ++v7;
        v6 += 16;
      }

      while (v7 < *(a1 + 16));
    }
  }

  return result;
}

void sub_1D0BF19DC(_Unwind_Exception *a1)
{
  v1[7] = &unk_1F4CDEAF8;
  *v1 = &unk_1F4CECF68;
  sub_1D0BF1BF8(v2);
  *v1 = &unk_1F4CECDD0;
  _Unwind_Resume(a1);
}

void sub_1D0BF1B4C(uint64_t a1)
{
  *(a1 + 24) = 0x100000058;
  *a1 = &unk_1F4CECF68;
  *(a1 + 40) = 0;
  *(a1 + 32) = 0;
  *(a1 + 8) = xmmword_1D0EA1260;
  sub_1D0BF1A44();
}

void sub_1D0BF1BC4(_Unwind_Exception *a1)
{
  sub_1D0BF1BF8(v2);
  *v1 = &unk_1F4CECDD0;
  _Unwind_Resume(a1);
}

uint64_t *sub_1D0BF1BF8(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = v2 - 16;
    v4 = *(v2 - 8);
    if (v4)
    {
      v5 = 48 * v4;
      v6 = v2 - 48;
      do
      {
        *(v6 + v5) = &unk_1F4CD5E28;
        v5 -= 48;
      }

      while (v5);
    }

    MEMORY[0x1D387EC80](v3, 0x1081C80E86CE3EELL);
  }

  return a1;
}

uint64_t sub_1D0BF1C7C(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v5 = *(a2 + 8);
    v4 = *(a2 + 12);
    *(a1 + 8) = v5;
    *(a1 + 12) = v4;
    v6 = v4 * v5;
    *(a1 + 16) = v6;
    *(a1 + 20) = v5;
    v7 = *(a2 + 16);
    if (v7 > 3)
    {
      v10 = v7 - 1;
      v11 = *(a1 + 32);
      v12 = *(a2 + 32);
      v13 = v11 + 48 * (v7 - 1);
      v14 = v12;
      v15 = (v7 - 1);
      do
      {
        sub_1D0B894B0(v11, v14);
        v11 += 48;
        v14 += 48;
        --v15;
      }

      while (v15);
      sub_1D0B894B0(v13, v12 + 48 * v10);
    }

    else if (v6 >= 1)
    {
      v8 = 0;
      v9 = 0;
      do
      {
        sub_1D0B894B0(*(a1 + 32) + v8, *(a2 + 32) + v8);
        ++v9;
        v8 += 48;
      }

      while (v9 < *(a1 + 16));
    }
  }

  return a1;
}

uint64_t sub_1D0BF1D64(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v2 = *(a2 + 8);
    v3 = *(a2 + 12);
    *(result + 8) = v2;
    *(result + 12) = v3;
    v4 = v3 * v2;
    *(result + 16) = v4;
    *(result + 20) = v2;
    v5 = *(a2 + 16);
    if (v5 > 3)
    {
      v8 = (v5 - 1);
      v9 = *(result + 32);
      v10 = *(a2 + 32);
      v11 = v10;
      v12 = v9;
      v13 = v8;
      do
      {
        v14 = *v11++;
        *v12++ = v14;
        --v13;
      }

      while (v13);
      v9[v8] = v10[v8];
    }

    else if (v4 >= 1)
    {
      v6 = 0;
      v7 = 8 * v4;
      do
      {
        *(*(result + 32) + v6) = *(*(a2 + 32) + v6);
        v6 += 8;
      }

      while (v7 != v6);
    }
  }

  return result;
}

uint64_t raven::RavenIonosphereEstimator::PopulateEvent(raven::RavenIonosphereEstimator *this, raven::ThinShellIonosphereParametersEvent *a2)
{
  IsConsistent = raven::RavenIonosphereEstimator::IsConsistent(this);
  if ((*(this + 9) & 1) == 0)
  {
    raven::RavenIonosphereEstimator::IsSane(this);
    v43.i16[0] = 12;
    LOBYTE(__src[0]) = 2;
    v9 = cnprint::CNLogFormatter::FormatWarning((this + 4040), "RavenIonosphereEstimator::PopulateEvent(ThinShellIonosphereParametersEvent& evt), Estimator initialized,%d");
LABEL_29:
    if (*(this + 4063) >= 0)
    {
      LOBYTE(v40) = v9;
    }

    else
    {
      v40 = *(this + 505);
    }

    cnprint::CNPrinter::Print(&v43, __src, "%s", v10, v11, v12, v13, v14, v40);
    return 0xFFFFFFFFLL;
  }

  v5 = IsConsistent;
  v6 = sub_1D0BF656C(this + 4088);
  IsSane = raven::RavenIonosphereEstimator::IsSane(this);
  if ((v6 & 1) == 0)
  {
    v43.i16[0] = 12;
    LOBYTE(__src[0]) = 2;
    v9 = cnprint::CNLogFormatter::FormatWarning((this + 4040), "RavenIonosphereEstimator::PopulateEvent(ThinShellIonosphereParametersEvent& evt), Estimator observable,%d");
    goto LABEL_29;
  }

  if ((v5 & 1) == 0)
  {
    v43.i16[0] = 12;
    LOBYTE(__src[0]) = 2;
    v9 = cnprint::CNLogFormatter::FormatWarning((this + 4040), "RavenIonosphereEstimator::PopulateEvent(ThinShellIonosphereParametersEvent& evt), Estimator consistent,%d");
    goto LABEL_29;
  }

  if ((IsSane & 1) == 0)
  {
    v43.i16[0] = 12;
    LOBYTE(__src[0]) = 2;
    v9 = cnprint::CNLogFormatter::FormatWarning((this + 4040), "RavenIonosphereEstimator::PopulateEvent(ThinShellIonosphereParametersEvent& evt), Estimator sane,%d");
    goto LABEL_29;
  }

  v53 = 0u;
  v54 = 0u;
  v51[1] = 0u;
  v52 = 0u;
  v55 = 0;
  v56 = 0x7FF8000000000000;
  v51[0] = *(this + 2);
  raven::PopulateAllTimeFields(v51, this + 568, 0, v51[0]);
  if (v54)
  {
    v8 = (&v54 + 8);
  }

  else
  {
    if ((BYTE8(v52) & 1) == 0)
    {
      v43.i16[0] = 12;
      LOBYTE(__src[0]) = 3;
      v9 = cnprint::CNLogFormatter::FormatWarning((this + 4040), "RavenIonosphereEstimator::PopulateEvent(ThinShellIonosphereParametersEvent& evt), cannot set applicable_time");
      goto LABEL_29;
    }

    v8 = &v53;
  }

  *(a2 + 152) = *v8;
  *(a2 + 104) = 1;
  *(a2 + 105) = raven::RavenIonosphereEstimator::IsConverged(this);
  v43 = *(this + 2);
  *(a2 + 14) = CNTimeSpan::operator-(&v43, this + 2, v43, v15);
  *(a2 + 15) = v16;
  if ((*(this + 2024) & 1) == 0)
  {
    v43.i16[0] = 12;
    LOBYTE(__src[0]) = 2;
    v9 = cnprint::CNLogFormatter::FormatWarning((this + 4040), "RavenIonosphereEstimator::PopulateEvent(ThinShellIonosphereParametersEvent& evt),device position invalid");
    goto LABEL_29;
  }

  *(a2 + 8) = *(this + 127);
  *(a2 + 18) = *(this + 256);
  v48 = 0x10000000ALL;
  v46 = &unk_1F4CEAE48;
  v47 = xmmword_1D0E87BE0;
  v49 = &v50;
  v17 = 1088;
  if (!*(this + 1567))
  {
    v17 = 8;
  }

  sub_1D0B894B0(&v46, this + v17 + 4088);
  v18 = sub_1D0BF22F0(this + 4088, &v43);
  v19 = v49;
  *(a2 + 21) = *v49;
  *(a2 + 22) = v19[1];
  *(a2 + 23) = v19[2];
  *(a2 + 24) = v19[3];
  *(a2 + 25) = v19[4];
  *(a2 + 26) = v19[5];
  *(a2 + 27) = v19[6];
  LogLevel = cnprint::CNPrinter::GetLogLevel(v18);
  if (LogLevel <= 1)
  {
    __src[0] = 12;
    v42 = 1;
    v21 = *(a2 + 184);
    v22 = cnprint::CNLogFormatter::FormatGeneral(this + 4040, this + 464, "#iono,hmax,%.3lf,vtec0,%.3lf,dvtec_dtheta,%.3lf,dvtec_dphi,%.3lf,d2vtec_dtheta2,%.3lf,d2vtec_dthetadphi,%.3lf,d2vtec_dphi2,%.3lf,converged,%d", *(a2 + 21), *(a2 + 22), *(a2 + 23), *(a2 + 24), *(a2 + 25), *(a2 + 26), *(a2 + 27), *(a2 + 105));
    if (*(this + 4063) >= 0)
    {
      LOBYTE(v28) = v22;
    }

    else
    {
      v28 = *(this + 505);
    }

    cnprint::CNPrinter::Print(__src, &v42, "%s", v23, v24, v25, v26, v27, v28);
  }

  v29 = v45;
  *(a2 + 28) = *v45;
  v30 = v44;
  *(a2 + 29) = v29[v44 + 1];
  *(a2 + 30) = v29[2 * v30 + 2];
  *(a2 + 31) = v29[3 * v30 + 3];
  *(a2 + 32) = v29[4 * v30 + 4];
  *(a2 + 33) = v29[5 * v30 + 5];
  *(a2 + 34) = v29[6 * v30 + 6];
  if (!cnprint::CNPrinter::GetLogLevel(LogLevel))
  {
    __src[0] = 12;
    v42 = 0;
    v31 = *(a2 + 15);
    v32 = cnprint::CNLogFormatter::FormatGeneral(this + 4040, this + 464, "#iono,phmax_hmax,%.3lf,pvtec0_vtec0,%.3lf,pdvtec_dtheta_dvtec_dtheta,%.3lf,pdvtec_dphi_dvtec_dphi,%.3lf,pd2vtec_dtheta2_d2vtec_dtheta2,%.3lf,pd2vtec_dthetadphi_d2vtec_dthetadphi,%.3lf,pd2vtec_dphi2_d2vtec_dphi2,%.3lf", *(a2 + 28), *(a2 + 29), *(a2 + 30), *(a2 + 31), *(a2 + 32), *(a2 + 33), *(a2 + 34));
    if (*(this + 4063) >= 0)
    {
      LOBYTE(v38) = v32;
    }

    else
    {
      v38 = *(this + 505);
    }

    cnprint::CNPrinter::Print(__src, &v42, "%s", v33, v34, v35, v36, v37, v38);
  }

  raven::RavenIonosphereEstimator::GetEstimatorStatus(this, __src);
  memcpy(a2 + 280, __src, 0x224uLL);
  return 0;
}

uint64_t raven::RavenIonosphereEstimator::IsConsistent(raven::RavenIonosphereEstimator *this)
{
  if (!*(this + 9))
  {
    return 1;
  }

  v2 = this + 8392;
  if (*(this + (*(this + 2102) != 0) + 1049) < *(*(this + 504) + 3064))
  {
    return 1;
  }

  if (cnprint::CNPrinter::GetLogLevel(this) <= 1)
  {
    v12 = 12;
    v11 = 1;
    v4 = cnprint::CNLogFormatter::FormatGeneral(this + 4040, this + 32, "consistency failure,%.1lf > %.1lf", *&v2[8 * (*(this + 2102) != 0)], *(*(this + 504) + 3064));
    if (*(this + 4063) >= 0)
    {
      LOBYTE(v10) = v4;
    }

    else
    {
      v10 = *(this + 505);
    }

    cnprint::CNPrinter::Print(&v12, &v11, "%s", v5, v6, v7, v8, v9, v10);
  }

  return 0;
}

uint64_t sub_1D0BF22F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = 0xA0000000ALL;
  v19 = &unk_1F4CE2180;
  v20 = xmmword_1D0E84630;
  v22 = &v23;
  if (*(a1 + 2180))
  {
    v16 = 0xA0000000ALL;
    v14 = &unk_1F4CE2180;
    v15 = xmmword_1D0E84630;
    v17 = v18;
    v31 = 0x10000000ALL;
    v30 = xmmword_1D0E87BE0;
    v29 = &unk_1F4CED1E8;
    v32 = v33;
    v26 = 0x100000028;
    v25 = xmmword_1D0EA1280;
    v24 = &unk_1F4CED230;
    v27 = v28;
    v3 = a1 + 1208;
  }

  else
  {
    v16 = 0xA0000000ALL;
    v14 = &unk_1F4CE2180;
    v15 = xmmword_1D0E84630;
    v17 = v18;
    v31 = 0x10000000ALL;
    v30 = xmmword_1D0E87BE0;
    v29 = &unk_1F4CED1E8;
    v32 = v33;
    v26 = 0x100000028;
    v25 = xmmword_1D0EA1280;
    v24 = &unk_1F4CED230;
    v27 = v28;
    v3 = a1 + 128;
  }

  sub_1D0B9F868(v3, &v29, &v24, &v14);
  sub_1D0B894B0(&v19, &v14);
  v4 = DWORD1(v20);
  v5 = v20;
  v16 = 0xA0000000ALL;
  v14 = &unk_1F4CE2180;
  v17 = v18;
  *&v15 = __PAIR64__(v20, DWORD1(v20));
  DWORD2(v15) = v20 * DWORD1(v20);
  HIDWORD(v15) = DWORD1(v20);
  if (DWORD1(v20))
  {
    v6 = 0;
    v7 = 0;
    v8 = HIDWORD(v20);
    v9 = v22;
    do
    {
      v10 = v6;
      v11 = v7;
      for (i = v5; i; --i)
      {
        v18[v11] = v9[v10];
        v11 += v4;
        ++v10;
      }

      ++v7;
      v6 += v8;
    }

    while (v7 != v4);
  }

  *(a2 + 24) = 0xA0000000ALL;
  *a2 = &unk_1F4CE2180;
  *(a2 + 8) = xmmword_1D0E84630;
  *(a2 + 32) = a2 + 40;
  return sub_1D0B89390(&v19, &v14, a2);
}

__n128 raven::RavenIonosphereEstimator::GetEstimatorStatus@<Q0>(raven::RavenIonosphereEstimator *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 96) = 0;
  *(a2 + 104) = 0u;
  *(a2 + 120) = 0u;
  *(a2 + 136) = 0u;
  if (*(this + 9))
  {
    *(a2 + 48) = 0uLL;
    *(a2 + 64) = 0uLL;
    *(a2 + 16) = 0uLL;
    *(a2 + 32) = 0uLL;
    v4 = *(this + 2);
    *a2 = v4;
    *(a2 + 80) = 0;
    *(a2 + 88) = 0x7FF8000000000000;
    raven::PopulateAllTimeFields(a2, this + 464, 0, v4);
    if (*(this + 9))
    {
      v5 = sub_1D0BF656C(this + 4088);
    }

    else
    {
      v5 = 0;
    }

    IsSane = raven::RavenIonosphereEstimator::IsSane(this);
    IsConsistent = raven::RavenIonosphereEstimator::IsConsistent(this);
    v14 = IsConsistent;
    if (v5 && IsSane && (IsConsistent & 1) != 0)
    {
      v15 = 2;
    }

    else
    {
      v15 = 1;
      if (cnprint::CNPrinter::GetLogLevel(IsConsistent) <= 1)
      {
        v36.i16[0] = 12;
        v37 = 1;
        v16 = cnprint::CNLogFormatter::FormatGeneral(this + 505, "Estimator unhealthy,observable,%d,sane,%d,consistent,%d", v5, IsSane, v14);
        if (*(this + 4063) >= 0)
        {
          LOBYTE(v22) = v16;
        }

        else
        {
          v22 = *(this + 505);
        }

        cnprint::CNPrinter::Print(&v36, &v37, "%s", v17, v18, v19, v20, v21, v22);
      }
    }

    *(a2 + 96) = v15;
    v13.i64[0] = 1.0;
    *(a2 + 104) = 1.0 - *(this + (*(this + 2102) != 0) + 1049);
    v36 = *(this + 2);
    v23 = CNTimeSpan::operator-(&v36, this + 2, v36, v13);
    v24 = *(this + 3732);
    *(a2 + 264) = *(this + 3748);
    *(a2 + 128) = *(this + 201);
    v25 = *(this + 3700);
    *(a2 + 232) = *(this + 3716);
    *(a2 + 248) = v24;
    v26 = *(this + 3636);
    *(a2 + 168) = *(this + 3652);
    v27 = *(this + 3684);
    *(a2 + 184) = *(this + 3668);
    *(a2 + 200) = v27;
    *(a2 + 112) = v23;
    *(a2 + 120) = v28;
    *(a2 + 144) = *(this + 404);
    *(a2 + 280) = *(this + 941);
    *(a2 + 216) = v25;
    *(a2 + 152) = v26;
    v29 = *(this + 3880);
    *(a2 + 380) = *(this + 3864);
    *(a2 + 396) = v29;
    *(a2 + 412) = *(this + 974);
    v30 = *(this + 3816);
    *(a2 + 316) = *(this + 3800);
    *(a2 + 332) = v30;
    v31 = *(this + 3848);
    *(a2 + 348) = *(this + 3832);
    *(a2 + 364) = v31;
    v32 = *(this + 3784);
    *(a2 + 284) = *(this + 3768);
    *(a2 + 300) = v32;
    v33 = *(this + 4012);
    *(a2 + 512) = *(this + 3996);
    *(a2 + 528) = v33;
    *(a2 + 544) = *(this + 1007);
    v34 = *(this + 3948);
    *(a2 + 448) = *(this + 3932);
    *(a2 + 464) = v34;
    v35 = *(this + 3980);
    *(a2 + 480) = *(this + 3964);
    *(a2 + 496) = v35;
    result = *(this + 3916);
    *(a2 + 416) = *(this + 3900);
    *(a2 + 432) = result;
  }

  else
  {
    v6 = *(this + 32);
    *(a2 + 32) = *(this + 31);
    *(a2 + 48) = v6;
    v7 = *(this + 34);
    *(a2 + 64) = *(this + 33);
    *(a2 + 80) = v7;
    v8 = *(this + 29);
    v9 = *(this + 30);
    *a2 = v8;
    *(a2 + 16) = v9;

    raven::PopulateAllTimeFields(a2, this + 464, v8, v9);
  }

  return result;
}

void sub_1D0BF2854(uint64_t a1, raven::RavenSolutionActiveObject **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0BF69A8(v9, a3, a3, a4, a5, a6, a7, a8);
  raven::RavenSolutionActiveObject::WriteThinShellIonosphereParametersToProtobuf(v8, v9);
}

void raven::RavenSolutionActiveObject::WriteThinShellIonosphereParametersToProtobuf(raven::RavenSolutionActiveObject *this, const raven::ThinShellIonosphereParametersEvent *a2)
{
  if (*(*(this + 42) + 3708) == 1 && *(this + 1406))
  {
    CoreNavigation::CLP::LogEntry::LogEntry::LogEntry(v17);
    v19 |= 2u;
    v4 = v18;
    if (!v18)
    {
      operator new();
    }

    *(v18 + 320) |= 2u;
    v5 = *(v4 + 272);
    if (!v5)
    {
      operator new();
    }

    v6 = *(v5 + 8);
    *(v5 + 28) |= 1u;
    if (!v6)
    {
      operator new();
    }

    v7 = *(this + 18);
    v13 = *(this + 17);
    v14 = v7;
    v8 = *(this + 20);
    v15 = *(this + 19);
    v16 = v8;
    v9 = *(this + 16);
    v11 = *(this + 15);
    v10 = &unk_1F4CEF4D8;
    v12 = v9;
    raven::ConvertThinShellIonosphereParametersEventToProtobuf(a2, v6, &v10);
    cnlogging::ProtobufOutputStream::append(*(this + 1406), v17);
    cnlogging::ProtobufOutputStream::flush(*(this + 1406));
    CoreNavigation::CLP::LogEntry::LogEntry::~LogEntry(v17);
  }
}

uint64_t raven::RavenIonosphereEstimator::PopulateEvent(raven::RavenIonosphereEstimator *this, raven::ReceiverDifferentialCodeBiasesEvent *a2)
{
  IsConsistent = raven::RavenIonosphereEstimator::IsConsistent(this);
  if ((*(this + 9) & 1) == 0)
  {
    raven::RavenIonosphereEstimator::IsSane(this);
    v33[0] = 12;
    LOBYTE(__src[0]) = 2;
    v24 = cnprint::CNLogFormatter::FormatWarning((this + 4040), "RavenIonosphereEstimator::PopulateEvent(ReceiverDifferentialCodeBiasesEvent& evt), Estimator initialized,%d");
LABEL_17:
    if (*(this + 4063) >= 0)
    {
      LOBYTE(v30) = v24;
    }

    else
    {
      v30 = *(this + 505);
    }

    cnprint::CNPrinter::Print(v33, __src, "%s", v25, v26, v27, v28, v29, v30);
    return 0xFFFFFFFFLL;
  }

  v5 = IsConsistent;
  v6 = sub_1D0BF656C(this + 4088);
  IsSane = raven::RavenIonosphereEstimator::IsSane(this);
  if ((v6 & 1) == 0)
  {
    v33[0] = 12;
    LOBYTE(__src[0]) = 2;
    v24 = cnprint::CNLogFormatter::FormatWarning((this + 4040), "RavenIonosphereEstimator::PopulateEvent(ReceiverDifferentialCodeBiasesEvent& evt), Estimator observable,%d");
    goto LABEL_17;
  }

  if ((v5 & 1) == 0)
  {
    v33[0] = 12;
    LOBYTE(__src[0]) = 2;
    v24 = cnprint::CNLogFormatter::FormatWarning((this + 4040), "RavenIonosphereEstimator::PopulateEvent(ReceiverDifferentialCodeBiasesEvent& evt), Estimator consistent,%d");
    goto LABEL_17;
  }

  if ((IsSane & 1) == 0)
  {
    v33[0] = 12;
    LOBYTE(__src[0]) = 2;
    v24 = cnprint::CNLogFormatter::FormatWarning((this + 4040), "RavenIonosphereEstimator::PopulateEvent(ReceiverDifferentialCodeBiasesEvent& evt), Estimator sane,%d");
    goto LABEL_17;
  }

  v38 = 0x10000000ALL;
  v36 = &unk_1F4CEAE48;
  v37 = xmmword_1D0E87BE0;
  v39 = &v40;
  v8 = 1088;
  if (!*(this + 1567))
  {
    v8 = 8;
  }

  sub_1D0B894B0(&v36, this + v8 + 4088);
  sub_1D0BF22F0(this + 4088, v33);
  *(a2 + 104) = 1;
  *(a2 + 105) = raven::RavenIonosphereEstimator::IsConverged(this);
  *(a2 + 7) = *(this + 2);
  *(a2 + 10) = 0u;
  *(a2 + 11) = 0u;
  *(a2 + 8) = 0u;
  *(a2 + 9) = 0u;
  *(a2 + 24) = 0;
  *(a2 + 25) = 0x7FF8000000000000;
  v10 = raven::PopulateAllTimeFields(a2 + 112, this + 464, 0, v9);
  v11 = v39;
  *(a2 + 26) = v39[7];
  *(a2 + 28) = v11[9];
  *(a2 + 27) = v11[8];
  v12 = v34;
  v13 = v35;
  *(a2 + 29) = *(v35 + 56 * v34 + 56);
  *(a2 + 30) = *(v13 + 8 * ((8 * v12) | 7));
  v14 = (v13 + 72 * v12);
  *(a2 + 31) = v14[7];
  *(a2 + 32) = *(v13 + (v12 << 6) + 64);
  *(a2 + 33) = v14[8];
  *(a2 + 34) = v14[9];
  if (cnprint::CNPrinter::GetLogLevel(v10) <= 1)
  {
    __src[0] = 12;
    v32 = 1;
    v15 = *(a2 + 32);
    v16 = cnprint::CNLogFormatter::FormatGeneral(this + 4040, this + 464, "#iono,DCBs,gps,%.2lf,gal,%.2lf,bds,%.2lf,gps_var,%.2lf,gal_var,%.2lf,bds_var,%.2lf", *(a2 + 26), *(a2 + 27), *(a2 + 28), *(a2 + 29), v15, *(a2 + 34));
    if (*(this + 4063) >= 0)
    {
      LOBYTE(v22) = v16;
    }

    else
    {
      v22 = *(this + 505);
    }

    cnprint::CNPrinter::Print(__src, &v32, "%s", v17, v18, v19, v20, v21, v22);
  }

  raven::RavenIonosphereEstimator::GetEstimatorStatus(this, __src);
  memcpy(a2 + 280, __src, 0x224uLL);
  return 0;
}

void sub_1D0BF2DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a2 + 8) == 1)
  {
    v10 = *(a2 + 24);
  }

  else
  {
    LOWORD(v26.__vftable) = 3;
    LOBYTE(v24) = 5;
    cnprint::CNPrinter::Print(&v26, &v24, "Attempted to access type of uninitialized GenericEvent.", a4, a5, a6, a7, a8, v22);
    v10 = MEMORY[0x1E69E54A8];
  }

  {
    v16 = *(a2 + 16);
    if (v16)
    {
      v17 = (*(*v16 + 16))(v16);
    }

    else
    {
      v17 = MEMORY[0x1E69E54A8];
    }

    v20 = (*(v17 + 8) & 0x7FFFFFFFFFFFFFFFLL);
    if (v20 != (off_1F4CEE970 & 0x7FFFFFFFFFFFFFFFLL) && strcmp(v20, (off_1F4CEE970 & 0x7FFFFFFFFFFFFFFFLL)))
    {
      v26.__vftable = 0;
      std::bad_cast::bad_cast(&v26);
      v26.__vftable = &unk_1F4CE4880;
      sub_1D0DC7F8C();
    }

    v21 = *(a2 + 16);
    *a1 = &unk_1F4CEE948;

    memcpy((a1 + 8), (v21 + 16), 0x334uLL);
  }

  else
  {
    v24 = 3;
    v23 = 5;
    if (*(a2 + 8) == 1)
    {
      v18 = *(a2 + 24);
    }

    else
    {
      LOWORD(v26.__vftable) = 3;
      v25 = 5;
      cnprint::CNPrinter::Print(&v26, &v25, "Attempted to access type of uninitialized GenericEvent.", v11, v12, v13, v14, v15, v22);
      v18 = MEMORY[0x1E69E54A8];
    }

    cnprint::CNPrinter::Print(&v24, &v23, "Attempted to cast a GenericEvent of type %s to type %s.", v11, v12, v13, v14, v15, *(v18 + 8));
    bzero((a1 + 24), 0x328uLL);
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = &unk_1F4CEE948;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    *(a1 + 96) = 0x7FF8000000000000;
    *(a1 + 105) = 0;
    *(a1 + 112) = 0;
    *(a1 + 120) = 0;
    *(a1 + 128) = 0;
    *(a1 + 152) = 0;
    *(a1 + 136) = 0;
    *(a1 + 144) = 0;
    *(a1 + 160) = 0;
    *(a1 + 168) = 0;
    *(a1 + 176) = 0;
    *(a1 + 184) = 0;
    *(a1 + 192) = 0;
    v19 = vdupq_n_s64(0x7FF8000000000000uLL);
    *(a1 + 200) = v19;
    *(a1 + 216) = v19;
    *(a1 + 232) = v19;
    *(a1 + 248) = v19;
    *(a1 + 264) = 0x7FF8000000000000;
    *(a1 + 272) = 0x7FF8000000000000;
    *(a1 + 280) = 0u;
    *(a1 + 296) = 0u;
    *(a1 + 312) = 0u;
    *(a1 + 328) = 0u;
    *(a1 + 344) = 0u;
    *(a1 + 360) = 0;
    *(a1 + 368) = 0x7FF8000000000000;
    *(a1 + 400) = 0u;
    *(a1 + 416) = 0u;
    *(a1 + 384) = 0u;
  }
}

void sub_1D0BF3080(uint64_t a1, cnlogging::ProtobufOutputStream ***a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0BF2DF0(v9, a3, a3, a4, a5, a6, a7, a8);
  raven::RavenSolutionActiveObject::WriteReceiverDifferentialCodeBiasesToProtobuf(v8, v9);
}

void raven::RavenSolutionActiveObject::WriteReceiverDifferentialCodeBiasesToProtobuf(cnlogging::ProtobufOutputStream **this, const raven::ReceiverDifferentialCodeBiasesEvent *a2)
{
  if (*(this[42] + 3708) == 1 && this[1406])
  {
    CoreNavigation::CLP::LogEntry::LogEntry::LogEntry(v8);
    v10 |= 2u;
    v5 = v9;
    if (!v9)
    {
      operator new();
    }

    *(v9 + 320) |= 2u;
    v6 = *(v5 + 272);
    if (!v6)
    {
      operator new();
    }

    v7 = *(v6 + 8);
    *(v6 + 28) |= 1u;
    if (!v7)
    {
      operator new();
    }

    raven::ConvertReceiverDifferentialCodeBiasesEventToProtobuf(a2, v7, v4);
    cnlogging::ProtobufOutputStream::append(this[1406], v8);
    cnlogging::ProtobufOutputStream::flush(this[1406]);
    CoreNavigation::CLP::LogEntry::LogEntry::~LogEntry(v8);
  }
}

void sub_1D0BF32B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  CoreNavigation::CLP::LogEntry::LogEntry::~LogEntry(va);
  _Unwind_Resume(a1);
}

void sub_1D0BF32D0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0B99264(v26, a3, a3, a4, a5, a6, a7, a8);
  v11 = raven::RavenPNTEstimator::HandleEvent((v8 + 288), v26, v9, v10);
  if (v12)
  {
    v31 = 12;
    v30 = 2;
    v29[0] = (*(v26[0] + 16))(v26, v11);
    v29[1] = v13;
    (*(v26[0] + 24))(v27, v26);
    if (v28 >= 0)
    {
      v19 = v27;
    }

    else
    {
      v19 = v27[0];
    }

    cnprint::CNLogFormatter::FormatWarning(v8 + 240, v29, "Failed to handle event - %s.", v14, v15, v16, v17, v18, v19);
    if (*(v8 + 263) >= 0)
    {
      LOBYTE(v25) = v8 - 16;
    }

    else
    {
      v25 = *(v8 + 240);
    }

    cnprint::CNPrinter::Print(&v31, &v30, "%s", v20, v21, v22, v23, v24, v25);
    if (v28 < 0)
    {
      operator delete(v27[0]);
    }
  }
}

void sub_1D0BF33F0(_Unwind_Exception *exception_object)
{
  if (*(v1 - 57) < 0)
  {
    operator delete(*(v1 - 80));
  }

  _Unwind_Resume(exception_object);
}

double raven::RavenPNTEstimator::HandleEvent(raven::RavenPNTEstimator *this, const raven::ActivityStateEvent *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(this + 2760);
  if (v6 == 1)
  {
    v7 = *(a2 + 104);
    if (((v7 - 4) & 0xFA) != 0 || (v7 <= 7 ? (v8 = v7 == 5) : (v8 = 1), !v8))
    {
      v10 = 0;
      raven::RavenPNTEstimator::SetStateParameterization(this, &v10, a3, a4);
    }
  }

  else if (v6 == 2)
  {
    __assert_rtn("HandleEvent", "ravenpntestimator.cpp", 1885, "false && Unexpected case RavenPNTEstimatorStateParameterization::ParameterizationCount");
  }

  *&result = raven::RavenEstimator::HandleActivityStateEvent(this, a2).n128_u64[0];
  return result;
}

void sub_1D0BF34DC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0BF69A8(v25, a3, a3, a4, a5, a6, a7, a8);
  if (*(v8 + 224) == 1)
  {
    *v30 = *(v8 + 112);
    raven::GnssMeasurementPreprocessor::UpdateCurrentFrameworkTime((v8 + 232), v30);
    if (raven::GnssMeasurementPreprocessor::HandleEvent((v8 + 232), v25))
    {
      v66 = 0;
      v67 = 0;
      v68 = 0;
      v69 = 0;
      v70 = 0;
      v71 = 0;
      v72 = 0;
      memset(v73, 0, sizeof(v73));
      v74 = 0;
      v64[1] = 0;
      v64[2] = 0;
      v64[0] = &unk_1F4CEF598;
      v65 = 0;
      if (raven::GnssMeasurementPreprocessor::GetPreprocessedGnssMeasurements((v8 + 232), v64))
      {
        sub_1D0C4499C();
      }

      v46[2] = 0;
      v46[0] = &unk_1F4CEE9A8;
      v46[1] = 0;
      v47 = 0;
      v49 = 0;
      v48 = 0;
      v50 = 0;
      v52 = 0;
      v51 = 0;
      v53 = 0;
      v55 = 0;
      v54 = 0;
      v56 = 0x7FF8000000000000;
      v57 = 0;
      v58 = 0u;
      v59 = 0u;
      v60 = 0;
      v63 = 0;
      v61 = 0;
      v62 = 0;
      if (raven::GnssMeasurementPreprocessor::GetGpsUTCParametersEvent((v8 + 232), v46))
      {
        sub_1D0B9B7B4();
      }

      v31 = 0.0;
      v30[0] = &unk_1F4CEE030;
      v30[1] = 0;
      LOBYTE(v32) = 0;
      *&v33 = 0;
      *(&v32 + 1) = 0;
      BYTE8(v33) = 0;
      v34 = 0uLL;
      LOBYTE(v35) = 0;
      v36 = 0;
      *(&v35 + 1) = 0;
      v37 = 0x7FF8000000000000;
      v38 = 0;
      v39 = 0;
      v40 = &unk_1F4CD5A50;
      v41 = 0u;
      v42 = 0u;
      v43 = xmmword_1D0E76640;
      v44 = xmmword_1D0E76650;
      v45 = 0;
      if (raven::GnssMeasurementPreprocessor::GetKlobucharParametersEvent((v8 + 232), v30))
      {
        v10 = *(v8 + 112);
        v9 = *(v8 + 120);
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v30[1] = v10;
        v31 = v9;
        v36 = 0;
        v37 = 0x7FF8000000000000;
        v29 = 12;
        v28 = 2;
        sub_1D0B751F4(&__p, "KlobucharParametersEvent");
        v24 = v10 + v9;
        cnprint::CNPrinter::Print(&v29, &v28, "t,%.3lf,RavenGnssPreprocessorActiveObject, Raising event - %s.", v11, v12, v13, v14, v15, SLOBYTE(v24));
        if (v27 < 0)
        {
          operator delete(__p);
        }

        sub_1D0C47D0C();
      }

      v64[0] = &unk_1F4CEF598;
      v30[0] = &v73[4];
      sub_1D0BBBD80(v30);
    }

    else
    {
      LOWORD(v46[0]) = 12;
      LOBYTE(v64[0]) = 2;
      v16 = (*(v25[0] + 16))(v25);
      v18 = v17 + v16;
      (*(v25[0] + 24))(v30, v25);
      cnprint::CNPrinter::Print(v46, v64, "t,%.3lf,RavenGnssPreprocessorActiveObject Failed to handle event - %s.", v19, v20, v21, v22, v23, SLOBYTE(v18));
      if (SHIBYTE(v31) < 0)
      {
        operator delete(v30[0]);
      }
    }
  }
}

void sub_1D0BF3884(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x367]) < 0)
  {
    operator delete(STACK[0x350]);
  }

  *(v2 - 184) = v1;
  STACK[0x370] = v2 - 88;
  sub_1D0BBBD80(&STACK[0x370]);
  _Unwind_Resume(a1);
}

uint64_t raven::GnssMeasurementPreprocessor::HandleEvent(raven::GnssMeasurementPreprocessor *this, const raven::ThinShellIonosphereParametersEvent *a2)
{
  v3 = *this;
  if (v3)
  {
    v4 = *(a2 + 104);
    v5 = *(a2 + 120);
    *(this + 149) = *(a2 + 136);
    *(this + 148) = v5;
    *(this + 147) = v4;
    v6 = *(a2 + 152);
    v7 = *(a2 + 168);
    v8 = *(a2 + 184);
    *(this + 153) = *(a2 + 200);
    *(this + 152) = v8;
    *(this + 151) = v7;
    *(this + 150) = v6;
    v9 = *(a2 + 216);
    v10 = *(a2 + 232);
    v11 = *(a2 + 248);
    *(this + 157) = *(a2 + 264);
    *(this + 156) = v11;
    *(this + 155) = v10;
    *(this + 154) = v9;
  }

  else if (cnprint::CNPrinter::GetLogLevel(this) <= 1)
  {
    v22 = 12;
    v21 = 1;
    v12 = (*(*a2 + 16))(a2);
    v20 = v13 + v12;
    cnprint::CNPrinter::Print(&v22, &v21, "#gmp,t,%.3lf,GNSS pre-processor not configured, failed to handle ThinShellIonosphereParametersEvent", v14, v15, v16, v17, v18, SLOBYTE(v20));
  }

  return v3;
}

uint64_t raven::GnssMeasurementPreprocessor::HandleEvent(raven::GnssMeasurementPreprocessor *this, const raven::ReceiverDifferentialCodeBiasesEvent *a2)
{
  v3 = *this;
  if (v3)
  {
    if (*(this + 2160) == 1)
    {
      memcpy(this + 1336, a2 + 8, 0x334uLL);
    }

    else
    {
      *(this + 166) = &unk_1F4CEE948;
      memcpy(this + 1336, a2 + 8, 0x334uLL);
      *(this + 2160) = 1;
    }
  }

  else if (cnprint::CNPrinter::GetLogLevel(this) <= 1)
  {
    v15 = 12;
    v14 = 1;
    v5 = (*(*a2 + 16))(a2);
    v13 = v6 + v5;
    cnprint::CNPrinter::Print(&v15, &v14, "#gmp,t,%.3lf,GNSS pre-processor not configured, failed to handle ReceiverDifferentialCodeBiasesEvent", v7, v8, v9, v10, v11, SLOBYTE(v13));
  }

  return v3;
}

void sub_1D0BF3B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x1EEE9AC00](a1, a2, a3, a4);
  v5 = *v4;
  sub_1D0B9FD10(v27, v6, v6, v7, v8, v9, v10, v11);
  *(v5 + 256) = *(v5 + 112);
  sub_1D0BAD0C8(v42);
  v12 = raven::RavenIntegrityEstimator::HandleEvent((v5 + 240), v27, v42);
  if (v12)
  {
    if (v30 + v29 >= *(*(v5 + 232) + 1576))
    {
      __p = &unk_1F4CEEBA0;
      v36 = v45;
      v37 = v46;
      v38 = v47;
      v39 = v48;
      v34 = v43;
      v35 = v44;
      v40 = v28;
      v41 = 6;
      if (cnprint::CNPrinter::GetLogLevel(v12) <= 1)
      {
        v32 = 12;
        v31 = 1;
        v19 = v43;
        (*(*v5 + 16))(&v50, v5);
        v26 = *(&v19 + 1) + v19;
        cnprint::CNPrinter::Print(&v32, &v31, "t, %.3lf, %s, Integrity check on RavenSolutionEvent failed. Initiating error recovery action, %u, on estimator type, %u", v20, v21, v22, v23, v24, SLOBYTE(v26));
        if (SHIBYTE(v51) < 0)
        {
          operator delete(v50);
        }
      }

      operator new();
    }

    if (cnprint::CNPrinter::GetLogLevel(v12) <= 1)
    {
      LOWORD(v50) = 12;
      LOBYTE(v32) = 1;
      v13 = v43;
      (*(*v5 + 16))(&__p, v5);
      v25 = *(&v13 + 1) + v13;
      cnprint::CNPrinter::Print(&v50, &v32, "t, %.3lf, %s, Integrity check on RavenSolutionEvent failed. However, estimator activity duration is not large enough to raise an error recovery event on estimator type, %u", v14, v15, v16, v17, v18, SLOBYTE(v25));
      if (SHIBYTE(v34) < 0)
      {
        operator delete(__p);
      }
    }

    v49 = 1;
  }

  sub_1D0BAE448();
}

void sub_1D0BF3F70(_Unwind_Exception *a1)
{
  if (*(v1 + 2791) < 0)
  {
    operator delete(*(v2 - 88));
  }

  _Unwind_Resume(a1);
}

uint64_t raven::SolutionChecker::HandleEvent(raven::SolutionChecker *this, const raven::RavenSolutionEvent *a2, raven::RavenSolutionEvent *a3)
{
  if ((*(this + 8) & 1) == 0)
  {
    LOWORD(v123) = 12;
    v125[0].i8[0] = 4;
    v16 = (*(*a2 + 16))(a2, a2, a3);
    v108 = v17 + v16;
    v15 = "t,%.3lf,SolutionChecker, not configured";
    goto LABEL_10;
  }

  v6 = memcpy(a3 + 8, a2 + 8, 0xA51uLL);
  v7 = *(a3 + 208);
  if ((v7 - 1) >= 3)
  {
    if (v7 != 4)
    {
      LOWORD(v123) = 12;
      v125[0].i8[0] = 4;
      v20 = (*(*a2 + 16))(a2);
      v109 = v26 + v20;
      v27 = "t,%.3lf,SolutionChecker: est, %u. Cannot handle received RavenSolutionEvent esimator type. Exiting with check passed return value.";
LABEL_17:
      v30 = v125;
LABEL_18:
      cnprint::CNPrinter::Print(&v123, v30, v27, v21, v22, v23, v24, v25, SLOBYTE(v109));
    }

    return 0;
  }

  if (*(a3 + 209) != 2)
  {
    if (cnprint::CNPrinter::GetLogLevel(v6) <= 1)
    {
      LOWORD(v123) = 12;
      v125[0].i8[0] = 1;
      v28 = (*(*a2 + 16))(a2);
      v109 = v29 + v28;
      v27 = "t,%.3lf,SolutionChecker: est, %u. RavenSolutionEvent is unhealthy. Exiting with check passed return value.";
      goto LABEL_17;
    }

    return 0;
  }

  if ((*(a3 + 1264) & 1) == 0)
  {
    LOWORD(v123) = 12;
    v125[0].i8[0] = 4;
    v31 = (*(*a2 + 16))(a2);
    v108 = v32 + v31;
    v15 = "t,%.3lf,SolutionChecker: est, %u. RavenSolutionEvent has an invalid user position. Exiting with check failed return value.";
    goto LABEL_10;
  }

  if ((*(a3 + 159) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*(a3 + 160) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*(a3 + 161) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    LOWORD(v123) = 12;
    v125[0].i8[0] = 4;
    v8 = (*(*a2 + 16))(a2);
    v108 = v14 + v8;
    v15 = "t,%.3lf,SolutionChecker: est, %u. RavenSolutionEvent has a non-finite user position value.";
LABEL_10:
    v18 = v125;
LABEL_11:
    cnprint::CNPrinter::Print(&v123, v18, v15, v9, v10, v11, v12, v13, SLOBYTE(v108));
    return 0xFFFFFFFFLL;
  }

  v33 = sqrt(*(a3 + 160) * *(a3 + 160) + *(a3 + 159) * *(a3 + 159) + *(a3 + 161) * *(a3 + 161));
  if (v33 <= 3185504.5 || v33 >= 9556513.5)
  {
    LOWORD(v123) = 12;
    v125[0].i8[0] = 4;
    v39 = (*(*a2 + 16))(a2);
    v108 = v40 + v39;
    v15 = "t,%.3lf,SolutionChecker: est, %u. distance_from_earth_center checks failed, distance, %.2lf. Exiting with check failed return value.";
    goto LABEL_10;
  }

  v34 = *(a3 + 162);
  v36 = (v34 < 0 || ((v34 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE) && (v34 - 1) > 0xFFFFFFFFFFFFELL;
  if (v36 || (*(a3 + 165) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000 || *(a3 + 165) <= 0.0 || (*(a3 + 167) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000 || *(a3 + 167) <= 0.0)
  {
    LOWORD(v123) = 12;
    v125[0].i8[0] = 4;
    v41 = (*(*a2 + 16))(a2);
    v108 = v42 + v41;
    v15 = "t,%.3lf,SolutionChecker: est, %u. RavenSolutionEvent has a non-finite or non-positive user position covariance diagonal term, pxx, %.2lf, pyy, %.2lf, pzz, %.2lf. Exiting with check failed return value.";
    goto LABEL_10;
  }

  if ((*(a3 + 163) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*(a3 + 164) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*(a3 + 166) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    LOWORD(v123) = 12;
    v125[0].i8[0] = 4;
    v37 = (*(*a2 + 16))(a2);
    v116 = *(a3 + 166);
    v115 = *(a3 + 1304);
    v108 = v38 + v37;
    v15 = "t,%.3lf,SolutionChecker: est, %u. RavenSolutionEvent has a non-finite user position covariance cross term, pxy, %.2lf, pxz, %.2lf, pyz, %.2lf. Exiting with check failed return value.";
    goto LABEL_10;
  }

  v43 = *(a2 + 73);
  v44 = *(a2 + 76);
  v125[2] = *(a2 + 75);
  v125[3] = v44;
  v45 = *(a2 + 78);
  v125[4] = *(a2 + 77);
  v125[5] = v45;
  v46 = *(a2 + 74);
  v125[0] = v43;
  v125[1] = v46;
  if (COERCE_UNSIGNED_INT64(*&v43.i64[1] + v43.i64[0]) >> 52 >= 0x7FF)
  {
    LOWORD(v123) = 12;
    LOBYTE(v122[0]) = 4;
    v53 = (*(*a2 + 16))(a2);
    v108 = v54 + v53;
    v15 = "t,%.3lf,SolutionChecker: est, %u. RavenSolutionEvent time is invalid, time, %.3lf. Exiting with check failed return value.";
    goto LABEL_45;
  }

  v47 = *(this + 2);
  v46.i64[0] = v47[1];
  *v43.i64 = *v47;
  if (COERCE_UNSIGNED_INT64(*v46.i64 + *v43.i64) >> 52 >= 0x7FF)
  {
    LOWORD(v123) = 12;
    LOBYTE(v122[0]) = 4;
    v55 = (*(*a2 + 16))(a2);
    v110 = v56 + v55;
    cnprint::CNPrinter::Print(&v123, v122, "t,%.3lf,SolutionChecker: est, %u. current_time time is invalid, time, %.3lf. Marking the RavenSolution as unhealthy. Exiting with check passed return value.", v57, v58, v59, v60, v61, SLOBYTE(v110));
  }

  else
  {
    v117 = *(this + 2);
    v48 = CNTimeSpan::operator-(v47, v125, v43, v46);
    v50 = v49 + v48;
    if (v50 > *(this + 12))
    {
      LOWORD(v123) = 12;
      LOBYTE(v122[0]) = 4;
      v51 = (*(*a2 + 16))(a2);
      v108 = v52 + v51;
      v15 = "t,%.3lf,SolutionChecker: est, %u. time_difference_from_current_time check failed. Time difference is greater than allowable tolerance, difference, %.3lf. Exiting with check failed return value.";
LABEL_45:
      v18 = v122;
      goto LABEL_11;
    }

    if (v50 < 0.0)
    {
      LOWORD(v123) = 12;
      LOBYTE(v122[0]) = 5;
      v62 = (*(*a2 + 16))(a2);
      v108 = v63 + v62;
      v15 = "t,%.3lf,SolutionChecker: est, %u. time_difference_from_current_time check failed. Time difference is negative, difference, %.3lf. Exiting with check failed return value.";
      goto LABEL_45;
    }

    if ((*(this + 9) & 1) == 0)
    {
      LOWORD(v123) = 12;
      LOBYTE(v122[0]) = 2;
      v66 = (*(*a2 + 16))(a2);
      v109 = v67 + v66;
      v27 = "t,%.3lf,SolutionChecker: est, %u. is_active_ == false. Not cross checking with other information. Exiting with check passed return value.";
LABEL_56:
      v30 = v122;
      goto LABEL_18;
    }

    if (v7 == 1)
    {
      if (cnprint::CNPrinter::GetLogLevel(v48))
      {
        return 0;
      }

      LOWORD(v123) = 12;
      LOBYTE(v122[0]) = 0;
      v64 = (*(*a2 + 16))(a2);
      v109 = v65 + v64;
      v27 = "t,%.3lf,SolutionChecker: est, %u. Estimator type to be checked is PassThrough. Exiting with check passed return value.";
      goto LABEL_56;
    }

    LOBYTE(v123) = 1;
    if (sub_1D0B9AF58((v117 + 16), &v123))
    {
      v68 = *(this + 2);
      LOBYTE(v122[0]) = 1;
      v69 = sub_1D0BF4B10((v68 + 16), v122);
      v123 = &unk_1F4CEF7A8;
      memcpy(v124, v69 + 1, sizeof(v124));
      v73 = *(v69 + 73);
      v70 = *(v69 + 76);
      v122[2] = *(v69 + 75);
      v122[3] = v70;
      v71 = *(v69 + 78);
      v122[4] = *(v69 + 77);
      v122[5] = v71;
      v72 = *(v69 + 74);
      v122[0] = v73;
      v122[1] = v72;
      v72.i64[0] = v73.i64[1];
      *v73.i64 = *&v73.i64[1] + v73.i64[0];
      if (v73.i64[0] >> 52 < 0x7FF)
      {
        v74 = CNTimeSpan::operator-(v125, v122, v73, v72);
        v121[0] = v74;
        *&v121[1] = v75;
        if (v74 < 0 || (*v76.i64 = v75, v75 < 0.0))
        {
          v74 = CNTimeSpan::operator-(v121, v76, v77);
          v76.i64[0] = v78;
        }

        if (*v76.i64 + v74 <= *(this + 13))
        {
          v119 = 1;
          if (raven::SolutionChecker::PerformPositionCheck(this, a3, &v119))
          {
            return 0xFFFFFFFFLL;
          }

          if (v119)
          {
            v100 = raven::SolutionChecker::PerformSpeedCheck(this, a3, &v119);
            if (v100)
            {
              return 0xFFFFFFFFLL;
            }

            if (v119)
            {
              if (*(this + 3) < 180.0 || *(this + 4) < 180.0)
              {
                goto LABEL_80;
              }

              v100 = raven::SolutionChecker::PerformDirectionOfTravelCheck(this, a3, &v119);
              if (v100)
              {
                return 0xFFFFFFFFLL;
              }

              if (v119)
              {
LABEL_80:
                if (!cnprint::CNPrinter::GetLogLevel(v100))
                {
                  v120 = 12;
                  v118 = 0;
                  v101 = (*(*a2 + 16))(a2);
                  v114 = v102 + v101;
                  cnprint::CNPrinter::Print(&v120, &v118, "t,%.3lf,SolutionChecker: est, %u. All checks passed. Exiting with check passed return value.", v103, v104, v105, v106, v107, SLOBYTE(v114));
                }
              }
            }
          }
        }

        else
        {
          v120 = 12;
          v119 = 2;
          v79 = (*(*a2 + 16))(a2);
          v111 = v80 + v79;
          cnprint::CNPrinter::Print(&v120, &v119, "t,%.3lf,SolutionChecker: est, %u. time_difference_from_passthrough check failed, difference, %.3lf. Exiting with check passed return value.", v81, v82, v83, v84, v85, SLOBYTE(v111));
        }

        return 0;
      }

      LOWORD(v121[0]) = 12;
      LOBYTE(v120) = 4;
      v93 = (*(*a2 + 16))(a2);
      v113 = v94 + v93;
      cnprint::CNPrinter::Print(v121, &v120, "t,%.3lf,SolutionChecker: est, %u. Passthrough solution time is invalid, time, %.3lf. Marking the RavenSolution as unhealthy. Exiting with check passed return value.", v95, v96, v97, v98, v99, SLOBYTE(v113));
    }

    else if (cnprint::CNPrinter::GetLogLevel(0) <= 1)
    {
      LOWORD(v123) = 12;
      LOBYTE(v122[0]) = 1;
      v86 = (*(*a2 + 16))(a2);
      v112 = v87 + v86;
      cnprint::CNPrinter::Print(&v123, v122, "t,%.3lf,SolutionChecker: est, %u. A PassThrough solution has not yet been received to check against. Marking the RavenSolution as unhealthy. Exiting with check passed return value.", v88, v89, v90, v91, v92, SLOBYTE(v112));
    }
  }

  result = 0;
  *(a3 + 209) = 1;
  return result;
}

uint64_t **sub_1D0BF4B10(void *a1, unsigned __int8 *a2)
{
  v2 = sub_1D0B9AF58(a1, a2);
  if (!v2)
  {
    sub_1D0C543A8("unordered_map::at: key not found");
  }

  return v2 + 3;
}

uint64_t raven::SolutionChecker::PerformPositionCheck(raven::SolutionChecker *this, raven::RavenSolutionEvent *a2, BOOL *a3)
{
  v182 = *(a2 + 208);
  v6 = *(a2 + 162);
  v7 = *(a2 + 165);
  v8 = *(a2 + 167);
  v179 = 0;
  v180 = 0;
  v181 = 0;
  v9 = raven::SolutionChecker::GetListOfEstimatorsToCheckAgainst(this, &v182, &v179);
  if (v9)
  {
    if (cnprint::CNPrinter::GetLogLevel(v9) <= 1)
    {
      LOWORD(v177[0]) = 12;
      LOBYTE(__p) = 1;
      v10 = (*(*a2 + 16))(a2);
      v152 = v11 + v10;
      cnprint::CNPrinter::Print(v177, &__p, "t,%.3lf,SolutionChecker: Could not find any RavenSolutions to perform the position check against. Exiting with check passed return value.", v12, v13, v14, v15, v16, SLOBYTE(v152));
    }

    v17 = 0;
    *a3 = 0;
    v18 = v179;
  }

  else
  {
    v18 = v179;
    v19 = v180;
    if (v179 == v180)
    {
      goto LABEL_70;
    }

    v167 = v6 + v7 + v8;
    v20 = v179;
    while (1)
    {
      v178 = *v20;
      v21 = *(a2 + 76);
      v177[2] = *(a2 + 75);
      v177[3] = v21;
      v22 = *(a2 + 78);
      v177[4] = *(a2 + 77);
      v177[5] = v22;
      v23 = *(a2 + 74);
      v177[0] = *(a2 + 73);
      v177[1] = v23;
      v24 = sub_1D0B9AF58((*(this + 2) + 16), &v178);
      v27 = v24;
      if (!v24)
      {
        sub_1D0C543A8("unordered_map::at: key not found");
      }

      v26.i64[0] = v24[150];
      if (COERCE_UNSIGNED_INT64(*v26.i64 + v24[149]) >> 52 >= 0x7FF)
      {
        break;
      }

      *v25.i64 = *v26.i64 + v24[149];
      v28 = CNTimeSpan::operator-(v177, v24 + 149, v25, v26);
      v173[0] = v28;
      *&v173[1] = v29;
      if (v28 < 0 || (*v30.i64 = v29, v29 < 0.0))
      {
        v28 = CNTimeSpan::operator-(v173, v30, v31);
        v30.i64[0] = v32;
      }

      v33 = *v30.i64 + v28;
      if (v33 <= *(this + 13))
      {
        if ((v27[161] & 1) == 0)
        {
          LOWORD(v183[0]) = 12;
          LOBYTE(v172[0]) = 2;
          v98 = (*(*a2 + 16))(a2);
          v100 = v99;
          sub_1D0B751F4(&__p, off_1E83D7FA8[v178]);
          v157 = v100 + v98;
          cnprint::CNPrinter::Print(v183, v172, "t,%.3lf,SolutionChecker: est, %u. solution_to_check_against, %s, contains an invalid position. Exiting with check passed return value.", v101, v102, v103, v104, v105, SLOBYTE(v157));
          if (v176 < 0)
          {
            operator delete(__p);
          }

LABEL_70:
          v17 = 0;
          v114 = 1;
LABEL_71:
          *a3 = v114;
          goto LABEL_72;
        }

        v34 = v27[172];
        if (!*(v27 + 1368) || (v34 > -1 ? (v35 = ((v34 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) : (v35 = 1), v35 ? (v36 = (v34 - 1) >= 0xFFFFFFFFFFFFFLL) : (v36 = 0), v36 ? (v37 = (v34 & 0x7FFFFFFFFFFFFFFFLL) == 0) : (v37 = 1), !v37))
        {
          if (cnprint::CNPrinter::GetLogLevel(v28) > 1)
          {
            goto LABEL_68;
          }

          LOWORD(v183[0]) = 12;
          LOBYTE(v172[0]) = 1;
          v90 = (*(*a2 + 16))(a2);
          v92 = v91;
          sub_1D0B751F4(&__p, off_1E83D7FA8[v178]);
          v163 = *(v27 + 1368);
          v156 = v92 + v90;
          cnprint::CNPrinter::Print(v183, v172, "t,%.3lf,SolutionChecker: est, %u. solution_to_check_against, %s, has an invalid speed,validity,%d,speed,%.2lf. Cannot proceed with speed check or position check. Marking the RavenSolution as unhealthy. Exiting with check passed return value.", v93, v94, v95, v96, v97, SLOBYTE(v156));
LABEL_66:
          if (v176 < 0)
          {
            operator delete(__p);
          }

          goto LABEL_68;
        }

        v38 = v27[165];
        v41 = (v38 < 0 || ((v38 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE) && (v38 - 1) > 0xFFFFFFFFFFFFELL || (v27[168] & 0x7FFFFFFFFFFFFFFFLL) >= 0x7FF0000000000000;
        if (v41 || *(v27 + 168) <= 0.0 || (v27[170] & 0x7FFFFFFFFFFFFFFFLL) >= 0x7FF0000000000000 || *(v27 + 170) <= 0.0)
        {
          LOWORD(v183[0]) = 12;
          LOBYTE(v172[0]) = 4;
          v106 = (*(*a2 + 16))(a2);
          v108 = v107;
          sub_1D0B751F4(&__p, off_1E83D7FA8[v178]);
          v158 = v108 + v106;
          cnprint::CNPrinter::Print(v183, v172, "t,%.3lf,SolutionChecker: est, %u. solution_to_check_against, %s, has a non-finite or non-positive user position covariance diagonal term, pxx, %.2lf, pyy, %.2lf, pzz, %.2lf. Marking the RavenSolution as unhealthy. Exiting with check passed return value.", v109, v110, v111, v112, v113, SLOBYTE(v158));
          goto LABEL_66;
        }

        v170 = *(v27 + 168);
        v171 = *(v27 + 172);
        v169 = *(v27 + 170);
        v42 = *(a2 + 159);
        v43 = *(v27 + 162);
        v44 = *(a2 + 160);
        v45 = *(v27 + 163);
        v46 = *(a2 + 161);
        v47 = *(v27 + 164);
        v48 = (this + 48);
        if (v178 != 1)
        {
          v48 = (this + 40);
          if (v178 != 2)
          {
            LOWORD(__p) = 12;
            LOBYTE(v183[0]) = 4;
            v115 = (*(*a2 + 16))(a2);
            v159 = v116 + v115;
            cnprint::CNPrinter::Print(&__p, v183, "t,%.3lf,SolutionChecker: invalid estimator to check against during position check, exiting with check passed return value and continuing other checks", v117, v118, v119, v120, v121, SLOBYTE(v159));
            goto LABEL_70;
          }
        }

        v168 = *(v27 + 165);
        v49 = *v48;
        LogLevel = cnprint::CNPrinter::GetLogLevel(v28);
        v51 = sqrt((v44 - v45) * (v44 - v45) + (v42 - v43) * (v42 - v43) + (v46 - v47) * (v46 - v47));
        if (!LogLevel)
        {
          LOWORD(v183[0]) = 12;
          LOBYTE(v172[0]) = 0;
          v52 = (*(*a2 + 16))(a2);
          v54 = v53;
          sub_1D0B751F4(&__p, off_1E83D7FA8[v178]);
          v153 = v54 + v52;
          cnprint::CNPrinter::Print(v183, v172, "t,%.3lf,SolutionChecker: est, %u. solution_to_check_against, %s,position_difference_from_solution_to_check_against: %.2lf, position_difference_from_solution_to_check_against_tolerance_: %.2lf,position_tolerance_accounting_for_time_difference_and_speed: %.2lf, speed_of_solution_to_check_against: %.2lf,time_difference_from_solution_to_check_against: %.2lf", v55, v56, v57, v58, v59, SLOBYTE(v153));
          if (v176 < 0)
          {
            operator delete(__p);
          }
        }

        v60 = cnprint::CNPrinter::GetLogLevel(LogLevel);
        *v62.i64 = v169;
        v63 = v51 / sqrt(v167 + v168 + v170 + v169);
        if (!v60)
        {
          LOWORD(v183[0]) = 12;
          LOBYTE(v172[0]) = 0;
          v64 = (*(*a2 + 16))(a2);
          v66 = v65;
          sub_1D0B751F4(&__p, off_1E83D7FA8[v178]);
          v154 = v66 + v64;
          cnprint::CNPrinter::Print(v183, v172, "t,%.3lf,SolutionChecker: est, %u. solution_to_check_against, %s, Position difference, %.2lf,Position difference uncertainty, %.2lf, consistency, %.2lf, position_variance_of_solution_to_check_against, %.2f,position_variance_of_solution_under_test, %.2f", v67, v68, v69, v70, v71, SLOBYTE(v154));
          if (v176 < 0)
          {
            operator delete(__p);
          }
        }

        if (v51 > v49 + v171 * v33)
        {
          v61.i64[0] = *(this + 7);
          if (v63 > *v61.i64)
          {
            v123 = *(this + 2);
            if (*(v123 + 1520) == 1)
            {
              v60 = CNTimeSpan::operator-(a2 + 1, (v123 + 1528), v61, v62);
              __p = v60;
              v175 = v124;
              if (v60 < 0 || (*v125.i64 = v124, v124 < 0.0))
              {
                v60 = CNTimeSpan::operator-(&__p, v125, v126);
                v125.i64[0] = v127;
              }

              if (*v125.i64 + v60 < 10.0)
              {
                if (cnprint::CNPrinter::GetLogLevel(v60) > 1)
                {
                  goto LABEL_68;
                }

                LOWORD(v183[0]) = 12;
                LOBYTE(v172[0]) = 1;
                v128 = (*(*a2 + 16))(a2);
                v130 = v129;
                sub_1D0DEC664(&v178, &__p);
                v164 = *(this + 7);
                v160 = v130 + v128;
                cnprint::CNPrinter::Print(v183, v172, "t,%.3lf,SolutionChecker: est, %u. solution_to_check_against, %s,position_difference_from_solution_to_check_against check failed after recently exiting tunnel, difference, %.2lf, tolerance, %.2lf, consistency, %.2lf, threshold, %.2lf, solution_to_check_against_position_unc, %.2f, sol_position_unc, %.2f. Marking the RavenSolution as unhealthy. Exiting with check passed return value.", v131, v132, v133, v134, v135, SLOBYTE(v160));
                goto LABEL_66;
              }
            }

            if (cnprint::CNPrinter::GetLogLevel(v60) <= 1)
            {
              LOWORD(v183[0]) = 12;
              LOBYTE(v172[0]) = 1;
              v136 = (*(*a2 + 16))(a2);
              v138 = v137;
              sub_1D0DEC664(&v178, &__p);
              v165 = *(this + 7);
              v161 = v138 + v136;
              cnprint::CNPrinter::Print(v183, v172, "t,%.3lf,SolutionChecker: est, %u. solution_to_check_against, %s,position_difference_from_solution_to_check_against check failed, difference, %.2lf, tolerance, %.2lf,consistency, %.2lf, threshold, %.2lf, solution_to_check_against_position_unc, %.2f, sol_position_unc, %.2f.Exiting with check failed return value.", v139, v140, v141, v142, v143, SLOBYTE(v161));
              if (v176 < 0)
              {
                operator delete(__p);
              }
            }

            v114 = 0;
            v17 = 0xFFFFFFFFLL;
            goto LABEL_71;
          }

          if (v178 == 1)
          {
            v72 = *(this + 2);
            v172[0] = (*(*a2 + 16))(a2);
            v172[1] = v73;
            if (*(v72 + 656) & 1) != 0 || (*(v72 + 658))
            {
              v183[0] = (*(*(v72 + 432) + 16))();
              v183[1] = v74;
              v77 = CNTimeSpan::operator-(v172, v183, v75, v76);
              __p = v77;
              v175 = v78;
              if (v77 < 0 || (*v79.i64 = v78, v78 < 0.0))
              {
                v77 = CNTimeSpan::operator-(&__p, v79, v80);
                v79.i64[0] = v81;
              }

              if (*v79.i64 + v77 < 5.0)
              {
                if (cnprint::CNPrinter::GetLogLevel(v77) <= 1)
                {
                  LOWORD(v183[0]) = 12;
                  LOBYTE(v172[0]) = 1;
                  v144 = (*(*a2 + 16))(a2);
                  v146 = v145;
                  sub_1D0DEC664(&v178, &__p);
                  v166 = *(this + 7);
                  v162 = v146 + v144;
                  cnprint::CNPrinter::Print(v183, v172, "t,%.3lf,SolutionChecker: est, %u. solution_to_check_against, %s,position_difference_from_solution_under_check check failed while in tunnel, difference, %.2lf, tolerance, %.2lf,consistency, %.2lf, threshold, %.2lf, solution_to_check_against_position_unc, %.2f, sol_position_unc, %.2f.Marking the RavenSolution as unhealthy. Exiting with check passed return value.", v147, v148, v149, v150, v151, SLOBYTE(v162));
                  goto LABEL_66;
                }

LABEL_68:
                v114 = 0;
                v17 = 0;
                *(a2 + 209) = 1;
                goto LABEL_71;
              }
            }
          }
        }
      }

      if (++v20 == v19)
      {
        goto LABEL_70;
      }
    }

    LOWORD(v183[0]) = 12;
    LOBYTE(v173[0]) = 4;
    v82 = (*(*a2 + 16))(a2);
    v84 = v83;
    sub_1D0B751F4(&__p, off_1E83D7FA8[v178]);
    v155 = v84 + v82;
    cnprint::CNPrinter::Print(v183, v173, "t,%.3lf,SolutionChecker: est, %u. solution_to_check_against, %s, solution time is invalid, time, %.3lf. Marking the RavenSolution as unhealthy. Exiting with check passed return value.", v85, v86, v87, v88, v89, SLOBYTE(v155));
    if (v176 < 0)
    {
      operator delete(__p);
    }

    v17 = 0;
    *(a2 + 209) = 1;
    *a3 = 0;
  }

LABEL_72:
  if (v18)
  {
    operator delete(v18);
  }

  return v17;
}