void sub_1D0DE12DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 raven::RavenMapVectorActiveObject::HandleEvent(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 432) == 1)
  {
    v2 = *(a2 + 8);
    v3 = *(a2 + 24);
    v4 = *(a2 + 56);
    *(a1 + 280) = *(a2 + 40);
    *(a1 + 296) = v4;
    *(a1 + 264) = v3;
    *(a1 + 248) = v2;
    v5 = *(a2 + 72);
    v6 = *(a2 + 88);
    v7 = *(a2 + 120);
    *(a1 + 344) = *(a2 + 104);
    *(a1 + 360) = v7;
    *(a1 + 312) = v5;
    *(a1 + 328) = v6;
    result = *(a2 + 136);
    v9 = *(a2 + 152);
    v10 = *(a2 + 168);
    *(a1 + 424) = *(a2 + 184);
    *(a1 + 392) = v9;
    *(a1 + 408) = v10;
    *(a1 + 376) = result;
  }

  else
  {
    *(a1 + 240) = &unk_1F4CEF688;
    v11 = *(a2 + 8);
    v12 = *(a2 + 24);
    v13 = *(a2 + 56);
    *(a1 + 280) = *(a2 + 40);
    *(a1 + 296) = v13;
    *(a1 + 264) = v12;
    *(a1 + 248) = v11;
    v14 = *(a2 + 72);
    v15 = *(a2 + 88);
    v16 = *(a2 + 120);
    *(a1 + 344) = *(a2 + 104);
    *(a1 + 360) = v16;
    *(a1 + 312) = v14;
    *(a1 + 328) = v15;
    result = *(a2 + 136);
    v17 = *(a2 + 152);
    v18 = *(a2 + 168);
    *(a1 + 424) = *(a2 + 184);
    *(a1 + 392) = v17;
    *(a1 + 408) = v18;
    *(a1 + 376) = result;
    *(a1 + 432) = 1;
  }

  return result;
}

{
  if (*(a1 + 1120) == 1)
  {
    *(a1 + 1136) = *(a2 + 8);
    v2 = *(a2 + 24);
    v3 = *(a2 + 40);
    v4 = *(a2 + 56);
    *(a1 + 1200) = *(a2 + 72);
    *(a1 + 1184) = v4;
    *(a1 + 1168) = v3;
    *(a1 + 1152) = v2;
    result = *(a2 + 88);
    v6 = *(a2 + 104);
    v7 = *(a2 + 120);
    *(a1 + 1264) = *(a2 + 136);
    *(a1 + 1248) = v7;
    *(a1 + 1232) = v6;
    *(a1 + 1216) = result;
  }

  else
  {
    *(a1 + 1128) = &unk_1F4CEF538;
    *(a1 + 1136) = *(a2 + 8);
    v8 = *(a2 + 24);
    v9 = *(a2 + 40);
    v10 = *(a2 + 56);
    *(a1 + 1200) = *(a2 + 72);
    *(a1 + 1184) = v10;
    *(a1 + 1168) = v9;
    *(a1 + 1152) = v8;
    result = *(a2 + 88);
    v11 = *(a2 + 104);
    v12 = *(a2 + 120);
    *(a1 + 1264) = *(a2 + 136);
    *(a1 + 1248) = v12;
    *(a1 + 1232) = v11;
    *(a1 + 1216) = result;
    *(a1 + 1120) = 1;
  }

  return result;
}

double raven::RavenMapVectorActiveObject::HandleEvent(raven::RavenMapVectorActiveObject *this, const raven::MapVectorEvent *a2, int8x16_t a3, int8x16_t a4)
{
  v6 = *(this + 808);
  if (v6 == 1)
  {
    v6 = 0;
    *(this + 808) = 0;
  }

  *(this + 513) = 0x7FF0000000000000;
  *(this + 514) = 0;
  *(this + 515) = 0x7FF8000000000000;
  *(this + 4128) = 0;
  if (*(this + 1120) != 1)
  {
    goto LABEL_8;
  }

  v7 = *(this + 1232);
  v8 = v7 > 3 || v7 == 1;
  if (!v8 || *(this + 432) != 1 || ((*(this + 344) - 4) & 0xFA) != 0 || *(this + 4080) != 1 || *(this + 4040) != 2)
  {
    goto LABEL_8;
  }

  v12 = CNTimeSpan::operator-(a2 + 1, this + 493, a3, a4);
  v18[0] = v12;
  *&v18[1] = v13;
  if (v12 < 0 || (*v14.i64 = v13, v13 < 0.0))
  {
    v12 = CNTimeSpan::operator-(v18, v14, v15);
    v14.i64[0] = v16;
  }

  result = *v14.i64 + v12;
  if (result >= 0.5)
  {
LABEL_8:
    if (v6)
    {
      memcpy(this + 824, a2 + 8, 0x10CuLL);
    }

    else
    {
      *(this + 102) = &unk_1F4CEEB40;
      memcpy(this + 824, a2 + 8, 0x10CuLL);
      *(this + 808) = 1;
    }

    v9 = (*(*a2 + 16))(a2);
    v10 = *(this + 1096);
    *(this + 138) = v9;
    *(this + 139) = v11;
    if ((v10 & 1) == 0)
    {
      *(this + 1096) = 1;
    }

    *(this + 513) = 0;

    sub_1D0DD4390();
  }

  return result;
}

uint64_t raven::RavenMapVectorActiveObject::ResetStoredMapVectorInformation(uint64_t this)
{
  if (*(this + 808) == 1)
  {
    *(this + 808) = 0;
  }

  *(this + 4104) = 0x7FF0000000000000;
  *(this + 4112) = 0;
  *(this + 4120) = 0x7FF8000000000000;
  *(this + 4128) = 0;
  return this;
}

void raven::RavenMapVectorActiveObject::Reset(raven::RavenMapVectorActiveObject *this)
{
  if (*(this + 808) == 1)
  {
    *(this + 808) = 0;
  }

  *(this + 513) = 0x7FF0000000000000;
  *(this + 514) = 0;
  *(this + 515) = 0x7FF8000000000000;
  *(this + 4128) = 0;
  if (*(this + 432) == 1)
  {
    *(this + 432) = 0;
  }

  if (*(this + 440) == 1)
  {
    *(this + 440) = 0;
  }

  if (*(this + 1096) == 1)
  {
    *(this + 1096) = 0;
  }

  if (*(this + 1120) == 1)
  {
    *(this + 1120) = 0;
  }

  if (*(this + 1272) == 1)
  {
    *(this + 1272) = 0;
  }

  if (*(this + 648) == 1)
  {
    *(this + 648) = 0;
  }

  if (*(this + 4080) == 1)
  {
    *(this + 4080) = 0;
  }

  *(this + 4088) = 0;
  v2 = *(this + 518);
  v3 = *(this + 519);
  *(this + 522) = 0;
  v4 = (v3 - v2) >> 3;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v2 = (*(this + 518) + 8);
      *(this + 518) = v2;
      v4 = (*(this + 519) - v2) >> 3;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 256;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_24;
    }

    v5 = 512;
  }

  *(this + 521) = v5;
LABEL_24:
  *(this + 4184) = 0u;
  *(this + 525) = 0x7FF8000000000000;
  *(this + 128) = 0;
  *(this + 17) = 0;
  *(this + 18) = 0x7FF8000000000000;
  *(this + 19) = 0;
  *(this + 105) = 0;
  *(this + 14) = 0;
  *(this + 15) = 0x7FF8000000000000;

  cnframework::ActiveObjectBase::ResetEventQueue(this);
}

void sub_1D0DE1830(uint64_t a1)
{
  *a1 = &unk_1F4CEB028;
  sub_1D0C56D94((a1 + 4136));
  if (*(a1 + 1272) == 1)
  {
    *(a1 + 1272) = 0;
  }

  if (*(a1 + 1120) == 1)
  {
    *(a1 + 1120) = 0;
  }

  if (*(a1 + 1096) == 1)
  {
    *(a1 + 1096) = 0;
  }

  if (*(a1 + 808) == 1)
  {
    *(a1 + 808) = 0;
  }

  if (*(a1 + 648) == 1)
  {
    *(a1 + 648) = 0;
  }

  if (*(a1 + 440) == 1)
  {
    *(a1 + 440) = 0;
  }

  raven::RavenCoarseOdometerActiveObject::~RavenCoarseOdometerActiveObject(a1);
}

void sub_1D0DE18EC(uint64_t a1)
{
  *a1 = &unk_1F4CEB028;
  sub_1D0C56D94((a1 + 4136));
  if (*(a1 + 1272) == 1)
  {
    *(a1 + 1272) = 0;
  }

  if (*(a1 + 1120) == 1)
  {
    *(a1 + 1120) = 0;
  }

  if (*(a1 + 1096) == 1)
  {
    *(a1 + 1096) = 0;
  }

  if (*(a1 + 808) == 1)
  {
    *(a1 + 808) = 0;
  }

  if (*(a1 + 648) == 1)
  {
    *(a1 + 648) = 0;
  }

  if (*(a1 + 440) == 1)
  {
    *(a1 + 440) = 0;
  }

  raven::RavenCoarseOdometerActiveObject::~RavenCoarseOdometerActiveObject(a1);

  JUMPOUT(0x1D387ECA0);
}

uint64_t raven::MountStateChecker::Configure(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = a3;
  *(a1 + 8) = 1;
  return 0;
}

uint64_t raven::PositionChangeChecker::Configure(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = a3;
  v3 = *(*a2 + 920);
  *(a1 + 24) = *(*a2 + 2512);
  *(a1 + 32) = v3;
  *(a1 + 8) = 1;
  return 0;
}

uint64_t raven::PositionChangeChecker::HandleEvent(raven::PositionChangeChecker *this, const raven::PositionChangeEvent *a2, raven::PositionChangeEvent *a3, uint64_t a4)
{
  v7 = MEMORY[0x1EEE9AC00](this, a2, a3, a4);
  v8 = v5;
  if ((*(v4 + 8) & 1) == 0)
  {
    LOWORD(v75) = 12;
    v90[0] = 4;
    v47 = (*(*v5 + 16))(v5, v7);
    v64 = v48 + v47;
    v45 = "t,%.3lf,PositionChangeChecker, not configured";
    v46 = v90;
    goto LABEL_21;
  }

  v9 = v4;
  if (*(*(v4 + 16) + 56) == 9)
  {
    return 0xFFFFFFFFLL;
  }

  v10 = v6;
  v11 = *(v5 + 8);
  v12 = *(v5 + 24);
  v13 = *(v5 + 40);
  *(v6 + 56) = *(v5 + 56);
  *(v6 + 40) = v13;
  *(v6 + 24) = v12;
  *(v6 + 8) = v11;
  v14 = *(v5 + 72);
  v15 = *(v5 + 88);
  v16 = *(v5 + 104);
  *(v6 + 120) = *(v5 + 120);
  *(v6 + 104) = v16;
  *(v6 + 88) = v15;
  *(v6 + 72) = v14;
  v17 = *(v5 + 136);
  v18 = *(v5 + 152);
  v19 = *(v5 + 168);
  *(v6 + 184) = *(v5 + 184);
  *(v6 + 168) = v19;
  *(v6 + 152) = v18;
  *(v6 + 136) = v17;
  sub_1D0B894B0(v6 + 200, v5 + 200);
  v20 = sub_1D0B894B0(v10 + 264, v8 + 264);
  v21 = *(v10 + 232);
  v22 = v21[2];
  v23 = *v21 & 0x7FFFFFFFFFFFFFFFLL;
  v24 = (v21[1] & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
  result = 0xFFFFFFFFLL;
  if (v23 <= 0x7FEFFFFFFFFFFFFFLL && v24 && (v22 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    v75 = (*(*v10 + 16))(v10, v20);
    *&v76 = v26;
    *v90 = *(v10 + 104);
    v28 = CNTimeSpan::operator-(&v75, v90, *v90, v27);
    v31 = v30 + v28;
    v32 = (COERCE__INT64(fabs(v31)) - 0x10000000000000) >> 53;
    if ((v31 < 0.0 || v32 > 0x3FE) && (*&v31 - 1) > 0xFFFFFFFFFFFFELL)
    {
      return 0xFFFFFFFFLL;
    }

    v91 = 0x300000003;
    *&v90[8] = xmmword_1D0E76C10;
    *v90 = &unk_1F4CD5DD0;
    v92 = &v93;
    v87 = 0x300000003;
    v86 = xmmword_1D0E76C10;
    v85 = &unk_1F4CD5DD0;
    v88 = &v89;
    v82 = 0x100000003;
    v81 = xmmword_1D0E7DCC0;
    v80 = &unk_1F4CDEAA0;
    v83 = &v84;
    v77 = 0x1000001E6;
    v75 = &unk_1F4CDFFB0;
    v76 = xmmword_1D0E83DC0;
    v78 = &v79;
    v72 = 0x100000003;
    v70 = &unk_1F4CDEB28;
    v71 = xmmword_1D0E7DCC0;
    v73 = &v74;
    if (sub_1D0C1A8F0((v10 + 264), v90, &v85, &v80, &v75, &v70, "2", v29) > *(v9 + 32))
    {
      return 0xFFFFFFFFLL;
    }

    v90[0] = 0;
    v67 = 0x300000003;
    v65 = &unk_1F4CD5DD0;
    v66 = xmmword_1D0E76C10;
    v68 = &v69;
    sub_1D0B9F748(v10 + 264, &v65, v90);
    v65 = &unk_1F4CD5E28;
    if (!v90[0])
    {
      return 0xFFFFFFFFLL;
    }

    if (*(v9 + 9) != 1)
    {
      return 0;
    }

    sub_1D0BFA800(v10 + 200);
    v37 = v36 / v31;
    if (v36 / v31 > 250.0)
    {
      if (cnprint::CNPrinter::GetLogLevel(v35) <= 1)
      {
        LOWORD(v75) = 12;
        LOBYTE(v85) = 1;
        v38 = (*(*v8 + 16))(v8);
        v64 = v44 + v38;
        v45 = "t,%.3lf,PositionChangeChecker: Position Change too large,returning check failed,PosChange[s] %.3lf";
LABEL_19:
        v46 = &v85;
LABEL_21:
        cnprint::CNPrinter::Print(&v75, v46, v45, v39, v40, v41, v42, v43, SLOBYTE(v64));
      }

      return 0xFFFFFFFFLL;
    }

    result = sub_1D0B9AF58((*(v9 + 16) + 16), &unk_1D0E9C718);
    if (result)
    {
      v49 = *(sub_1D0BF4B10((*(v9 + 16) + 16), &unk_1D0E9C718) + 1344);
      v50 = sub_1D0BF4B10((*(v9 + 16) + 16), &unk_1D0E9C718);
      if (v49 == 1)
      {
        v51 = *(v50 + 169);
        v52 = sub_1D0BF4B10((*(v9 + 16) + 16), &unk_1D0E9C718);
        v53 = v52[173];
LABEL_29:
        if (v37 > v51 + 13.4112)
        {
          if (cnprint::CNPrinter::GetLogLevel(v52) > 1)
          {
            return 0xFFFFFFFFLL;
          }

          LOWORD(v75) = 12;
          LOBYTE(v85) = 1;
          v59 = (*(*v8 + 16))(v8);
          v64 = v60 + v59;
          v45 = "t,%.3lf,PositionChangeChecker: Position Change too large,returning check failed,raven speed %.3lf, PosChange[s] %.3lf";
          goto LABEL_19;
        }

        v61 = *(v8 + 272);
        if (v61 < 1)
        {
          v63 = 0.0;
        }

        else
        {
          v62 = 0;
          v63 = 0.0;
          do
          {
            v63 = v63 + *(*(v8 + 296) + 8 * v62);
            v62 += *(v8 + 284) + 1;
            --v61;
          }

          while (v61);
        }

        return (((fabs(vabdd_f64(v37, v51) / sqrt(v53 + v63 / (v31 * v31))) > *(v9 + 24)) | ~*(v9 + 8)) << 31 >> 31);
      }

      if (*(v50 + 1544) == 1)
      {
        v54 = *(sub_1D0BF4B10((*(v9 + 16) + 16), &unk_1D0E9C718) + 194);
        v55 = *(sub_1D0BF4B10((*(v9 + 16) + 16), &unk_1D0E9C718) + 195);
        v56 = sub_1D0BF4B10((*(v9 + 16) + 16), &unk_1D0E9C718);
        v51 = sqrt(v55 * v55 + v54 * v54 + *(v56 + 196) * *(v56 + 196));
        v57 = *(sub_1D0BF4B10((*(v9 + 16) + 16), &unk_1D0E9C718) + 197);
        v58 = *(sub_1D0BF4B10((*(v9 + 16) + 16), &unk_1D0E9C718) + 200);
        v52 = sub_1D0BF4B10((*(v9 + 16) + 16), &unk_1D0E9C718);
        v53 = v57 + v58 + v52[202];
        goto LABEL_29;
      }

      return 0;
    }
  }

  return result;
}

double raven::RavenPassThroughEstimator::RavenPassThroughEstimator(raven::RavenPassThroughEstimator *this)
{
  raven::RavenEstimator::RavenEstimator(this, 1);
  *v1 = &unk_1F4CEB1D8;
  *(v1 + 2760) = &unk_1F4CEF748;
  result = 0.0;
  *(v1 + 2768) = 0u;
  *(v1 + 2784) = 0;
  *(v1 + 2792) = 0u;
  *(v1 + 2808) = 0;
  *(v1 + 2816) = 0u;
  *(v1 + 2832) = 0;
  *(v1 + 2840) = 0u;
  *(v1 + 2856) = 0x7FF8000000000000;
  *(v1 + 2864) = 0u;
  *(v1 + 2880) = 0;
  *(v1 + 2904) = 0;
  *(v1 + 2888) = 0u;
  *(v1 + 2912) = 0u;
  *(v1 + 2928) = 0;
  *(v1 + 2936) = 0u;
  *(v1 + 2952) = 0x7FF8000000000000;
  *(v1 + 2960) = 0;
  *(v1 + 2962) = 0;
  *(v1 + 2968) = 0x7FF8000000000000;
  v3 = vdupq_n_s64(0x7FF8000000000000uLL);
  *(v1 + 2976) = v3;
  *(v1 + 2992) = v3;
  *(v1 + 3008) = v3;
  *(v1 + 3024) = v3;
  *(v1 + 3040) = 0;
  *(v1 + 3048) = 0x7FF8000000000000;
  *(v1 + 3056) = v3;
  *(v1 + 3072) = v3;
  *(v1 + 3088) = v3;
  *(v1 + 3104) = v3;
  *(v1 + 3120) = &unk_1F4CEF6E8;
  *(v1 + 3144) = 0;
  *(v1 + 3128) = 0u;
  *(v1 + 3152) = 0u;
  *(v1 + 3168) = 0;
  *(v1 + 3176) = 0u;
  *(v1 + 3192) = 0;
  *(v1 + 3200) = 0u;
  *(v1 + 3216) = 0x7FF8000000000000;
  *(v1 + 3224) = 0u;
  *(v1 + 3240) = 0;
  *(v1 + 3248) = 0u;
  *(v1 + 3264) = 0;
  *(v1 + 3272) = 0u;
  *(v1 + 3288) = 0;
  *(v1 + 3296) = 0u;
  *(v1 + 3312) = 0x7FF8000000000000;
  *(v1 + 3320) = 0;
  *(v1 + 3328) = v3;
  *(v1 + 3344) = v3;
  *(v1 + 3360) = v3;
  *(v1 + 3376) = v3;
  *(v1 + 3392) = 0x7FF8000000000000;
  *(v1 + 3400) = 0;
  *(v1 + 3408) = v3;
  *(v1 + 3424) = v3;
  *(v1 + 3440) = v3;
  *(v1 + 3456) = v3;
  *(v1 + 3472) = 0x7FF8000000000000;
  *(v1 + 3504) = 0;
  *(v1 + 3496) = 0;
  *(v1 + 3480) = 0u;
  return result;
}

uint64_t sub_1D0DE2334(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x400000004;
  *a1 = &unk_1F4CDEB70;
  *(a1 + 8) = xmmword_1D0E7DCD0;
  *(a1 + 32) = a1 + 40;
  return sub_1D0B89390(a2, a3, a1);
}

uint64_t sub_1D0DE23BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x300000004;
  *a1 = &unk_1F4CDEC00;
  *(a1 + 8) = xmmword_1D0E7DCF0;
  *(a1 + 32) = a1 + 40;
  return sub_1D0B89390(a2, a3, a1);
}

BOOL raven::RavenPassThroughEstimator::CanPublishRavenSolution(raven::RavenPassThroughEstimator *this)
{
  if (*(this + 3504) != 1)
  {
    return 0;
  }

  v5 = v1;
  v6 = v2;
  v4 = *(this + 179);
  return sub_1D0B7CF88(&v4, this + 436);
}

uint64_t raven::RavenPassThroughEstimator::Initialize(_BYTE *a1)
{
  (*(*a1 + 168))(a1);
  a1[58] = 1;
  return 0;
}

void raven::RavenPassThroughEstimator::Reset(raven::RavenPassThroughEstimator *this)
{
  *&v3[17] = 0;
  *&v3[12] = 0;
  memset(v3, 0, 88);
  *(&v3[5] + 1) = 0x7FF8000000000000;
  memset(&v3[6], 0, 88);
  *(&v3[11] + 1) = 0x7FF8000000000000;
  v2 = vdupq_n_s64(0x7FF8000000000000uLL);
  *(&v3[12] + 8) = v2;
  *(&v3[13] + 8) = v2;
  *(&v3[14] + 8) = v2;
  *(&v3[15] + 8) = v2;
  *(&v3[16] + 1) = 0x7FF8000000000000;
  *(&v3[17] + 8) = v2;
  *(&v3[18] + 8) = v2;
  *(&v3[19] + 8) = v2;
  *(&v3[20] + 8) = v2;
  *(&v3[21] + 1) = 0x7FF8000000000000;
  memcpy(this + 2768, v3, 0x160uLL);
  *&v3[17] = 0;
  *&v3[12] = 0;
  memset(v3, 0, 88);
  *(&v3[5] + 1) = 0x7FF8000000000000;
  memset(&v3[6], 0, 88);
  *(&v3[11] + 1) = 0x7FF8000000000000;
  *(&v3[12] + 8) = v2;
  *(&v3[13] + 8) = v2;
  *(&v3[14] + 8) = v2;
  *(&v3[15] + 8) = v2;
  *(&v3[16] + 1) = 0x7FF8000000000000;
  *(&v3[17] + 8) = v2;
  *(&v3[18] + 8) = v2;
  *(&v3[19] + 8) = v2;
  *(&v3[20] + 8) = v2;
  *(&v3[21] + 1) = 0x7FF8000000000000;
  memcpy(this + 3128, v3, 0x160uLL);
  *(this + 3480) = 0u;
  *(this + 437) = 0xFFF0000000000000;
  *(this + 3504) = 0;
  raven::RavenEstimator::Reset(this);
}

__n128 raven::RavenPassThroughEstimator::SetLastSolutionOutputTime(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[218] = *a2;
  return result;
}

void sub_1D0DE2784(void *a1)
{
  *a1 = &unk_1F4CEB1D8;
  sub_1D0D4FA90(a1);

  JUMPOUT(0x1D387ECA0);
}

raven::GnssReceiverBandCorrectionsManager *raven::GnssReceiverBandCorrectionsManager::GnssReceiverBandCorrectionsManager(raven::GnssReceiverBandCorrectionsManager *this)
{
  return raven::GnssReceiverBandCorrectionsManager::GnssReceiverBandCorrectionsManager(this, 0);
}

{
  return raven::GnssReceiverBandCorrectionsManager::GnssReceiverBandCorrectionsManager(this, 0);
}

raven::GnssReceiverBandCorrectionsManager *raven::GnssReceiverBandCorrectionsManager::GnssReceiverBandCorrectionsManager(raven::GnssReceiverBandCorrectionsManager *this, const raven::RavenParameters *a2)
{
  *this = 0;
  *(this + 2) = 0;
  *(this + 1) = this + 16;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 880) = 0;
  *(this + 111) = 0;
  *(this + 113) = 0;
  *(this + 112) = 0;
  *(this + 5) = 0;
  *(this + 48) = 0;
  raven::GnssReceiverBandCorrectionsManager::Configure(this, a2);
  return this;
}

void sub_1D0DE2848(_Unwind_Exception *a1)
{
  sub_1D0DE2FC0((v1 + 40), 0);
  sub_1D0DE2F74(v3, 0);
  sub_1D0BCB540(v2, *(v1 + 16));
  _Unwind_Resume(a1);
}

void *raven::GnssReceiverBandCorrectionsManager::Configure(void *this, const raven::RavenParameters *a2)
{
  *this = a2;
  if (a2)
  {
    if (*(a2 + 551) == 1)
    {
      operator new();
    }

    if (*(a2 + 576) == 1)
    {
      operator new();
    }
  }

  return this;
}

void *raven::GnssReceiverBandCorrectionsManager::RemoveConstellationClockOffset(void *result, uint64_t *a2)
{
  v2 = (result + 1);
  v3 = *result;
  if (*result != result + 1)
  {
    v5 = a2 + 4;
    v6 = a2 + 2;
    v7 = a2 + 3;
    v8 = a2 + 1;
    do
    {
      v9 = *(v3 + 40);
      v10 = 0.0;
      if (v9 > 6)
      {
        if (v9 - 7 < 2)
        {
          result = sub_1D0C35D78(a2);
          v11 = v7;
          if ((result & 1) == 0)
          {
            goto LABEL_16;
          }

LABEL_15:
          v10 = *(*v11 + 16);
          goto LABEL_16;
        }

        if (v9 == 10)
        {
          result = sub_1D0C35E68(a2);
          v11 = v5;
          if (result)
          {
            goto LABEL_15;
          }
        }
      }

      else
      {
        if (v9 - 4 < 3)
        {
          result = sub_1D0C35DF0(a2);
          v11 = v6;
          if ((result & 1) == 0)
          {
            goto LABEL_16;
          }

          goto LABEL_15;
        }

        if (v9 == 3)
        {
          result = sub_1D0C35D08(a2);
          v11 = v8;
          if (result)
          {
            goto LABEL_15;
          }
        }
      }

LABEL_16:
      v3[6] = v10 + v3[6];
      v12 = *(v3 + 1);
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v13 = *(v3 + 2);
          v14 = *v13 == v3;
          v3 = v13;
        }

        while (!v14);
      }

      v3 = v13;
    }

    while (v13 != v2);
  }

  return result;
}

void raven::MinnesotaRfModelCompensator::FeedVendorCorrections(uint64_t a1, uint64_t a2, int8x16_t *a3, unsigned __int8 *a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = *(a2 + 8);
  v12 = a2 + 8;
  v13 = v14;
  if (!v14)
  {
    goto LABEL_9;
  }

  v15 = v12;
  v16 = v13;
  do
  {
    v17 = *(v16 + 32);
    v18 = v17 >= 2;
    v19 = v17 < 2;
    if (v18)
    {
      v15 = v16;
    }

    v16 = *(v16 + 8 * v19);
  }

  while (v16);
  if (v15 == v12 || *(v15 + 32) >= 3u)
  {
LABEL_9:
    v15 = v12;
  }

  if (!v13)
  {
    goto LABEL_18;
  }

  v20 = v12;
  v21 = v13;
  do
  {
    v22 = *(v21 + 32);
    v18 = v22 >= 7;
    v23 = v22 < 7;
    if (v18)
    {
      v20 = v21;
    }

    v21 = *(v21 + 8 * v23);
  }

  while (v21);
  if (v20 == v12 || *(v20 + 32) >= 8u)
  {
LABEL_18:
    v20 = v12;
  }

  if (v13)
  {
    v24 = v12;
    do
    {
      v25 = *(v13 + 32);
      v18 = v25 >= 8;
      v26 = v25 < 8;
      if (v18)
      {
        v24 = v13;
      }

      v13 = *(v13 + 8 * v26);
    }

    while (v13);
    if (v24 != v12)
    {
      v27 = *(v24 + 32) > 8u || v15 == v12;
      if (!v27 && v20 != v12)
      {
        v29 = *(v15 + 56);
        if (fabsf(v29) < 0.00000011921 || ((v30 = sqrtf((*(v24 + 56) * *(v24 + 56)) - (*(v20 + 56) * *(v20 + 56))), v31 = fabsf(v30), (LODWORD(v30) & 0x7FFFFFFFu) <= 0x7F7FFFFF) ? (v32 = (LODWORD(v29) & 0x7FFFFFFFu) >= 0x7F800000) : (v32 = 1), !v32 ? (v33 = v31 < 0.00000011921) : (v33 = 1), v33))
        {
          v56.i16[0] = 12;
          LOBYTE(v58) = 4;
          cnprint::CNPrinter::Print(&v56, &v58, "#rxbc,component estimate with zero uncertainty", a4, a5, a6, a7, a8, v52);
        }

        else
        {
          v34 = *(a1 + 80);
          v35 = *(v15 + 48) - v34;
          v36 = *(a1 + 72) + *(v24 + 48) - *(v20 + 48) - v34;
          v37 = 1.0 / (v29 * v29);
          v38 = 1.0 / (v30 * v30);
          v56.i8[0] = 2;
          *&v56.i64[1] = (v36 * v38 + v35 * v37) / (v37 + v38);
          *&v37 = sqrt(1.0 / (v37 + v38));
          v57 = LODWORD(v37);
          v58 = &v56;
          v39 = sub_1D0C34AEC(a1, &v56);
          v44 = v56;
          *(v39 + 5) = v56;
          *(v39 + 14) = v57;
          v45 = raven::GnssReceiverBandCorrectionsFilter::TickFilterAndOverwriteCorrections((a1 + 24), a1, a3, a4, a5, v40, v41, v42, v44, v43);
          if (cnprint::CNPrinter::GetLogLevel(v45) <= 1)
          {
            v55 = 12;
            v54 = 1;
            v58 = &v56;
            v46 = sub_1D0C34AEC(a1, &v56)[6];
            v58 = &v56;
            v53 = *(sub_1D0C34AEC(a1, &v56) + 14);
            cnprint::CNPrinter::Print(&v55, &v54, "#rxbc,local rxbc estimate for GPS/GAL cohort,gps,%.1f,unc,%.1f,gal,%.1f,unc,%.1f,combined,%.1f,unc,%.1f,filtered,%.1f,unc,%.1f", v47, v48, v49, v50, v51, SLOBYTE(v35));
          }
        }
      }
    }
  }
}

void raven::MinnesotaRfModelCompensator::OverwriteWithInternalEstimate(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *a2;
  if (v4 == 2 || v4 == 8)
  {
    if (*(a1 + 88) == 1)
    {
      v6 = *(a1 + 8);
      if (v6)
      {
        v7 = a1 + 8;
        do
        {
          v8 = *(v6 + 32);
          v9 = v8 >= 2;
          v10 = v8 < 2;
          if (v9)
          {
            v7 = v6;
          }

          v6 = *(v6 + 8 * v10);
        }

        while (v6);
        if (v7 != a1 + 8 && *(v7 + 32) <= 2u)
        {
          v11 = *(v7 + 48) + *(a1 + 80);
          v12 = *(a2 + 4);
          v13 = vabdd_f64(v11, *(a2 + 1));
          v15 = hypotf(v12, v12);
          v16 = v15 > 0.0 && v13 / v15 <= 5.0;
          if (cnprint::CNPrinter::GetLogLevel(v14) <= 1)
          {
            v32 = 12;
            v31 = 1;
            v29 = *(a2 + 1);
            v30 = *(a2 + 4);
            cnprint::CNPrinter::Print(&v32, &v31, "#rxbc,local rxbc estimate,band,%d,mismatch ns,%.1f,is_used,%d,vendor,%.1f,unc,%.1f,estimate,%.1f,unc,%.1f", v22, v23, v24, v25, v26, *a2);
          }

          if (v16)
          {
            *a2 = v4;
            *(a2 + 1) = v11;
            *(a2 + 4) = v12;
          }
        }
      }
    }
  }

  else if (v4 == 7)
  {
    if (cnprint::CNPrinter::GetLogLevel(a1) <= 1)
    {
      v34 = 12;
      v33 = 1;
      v27 = *(a2 + 4);
      v28 = *(a1 + 72);
      cnprint::CNPrinter::Print(&v34, &v33, "#rxbc,fixed E1 band correction,vendor,%.1f,unc,%.1f,fixed value,%.1f", v17, v18, v19, v20, v21, *(a2 + 1));
    }

    *(a2 + 1) = *(a1 + 72);
    *(a2 + 4) = 0;
  }
}

uint64_t sub_1D0DE2F74(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_1D0BCB594(result);

    JUMPOUT(0x1D387ECA0);
  }

  return result;
}

uint64_t *sub_1D0DE2FC0(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    sub_1D0BCB594(v2 + 24);
    sub_1D0BCB540(v2, *(v2 + 8));

    JUMPOUT(0x1D387ECA0);
  }

  return result;
}

uint64_t raven::ConvertProtobufToAccessoryVehicleSpeedEvent(raven *this, const CoreNavigation::CLP::LogEntry::PrivateData::AccessoryVehicleSpeedNotification *a2, raven::AccessoryVehicleSpeedEvent *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int8x16_t a9, int8x16_t a10)
{
  if ((*(this + 80) & 1) == 0)
  {
    return 0;
  }

  v13 = *(this + 1);
  if (!v13)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
    v13 = *(CoreNavigation::CLP::LogEntry::PrivateData::AccessoryVehicleSpeedNotification::default_instance_ + 8);
  }

  result = raven::ConvertProtobufToRavenTime(v13, a2 + 8, 0, a4, a5, a6, a7, a8, a9, a10);
  if (result)
  {
    if ((*(this + 80) & 2) == 0)
    {
      return 0;
    }

    v21 = *(this + 2);
    if (!v21)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
      v21 = *(CoreNavigation::CLP::LogEntry::PrivateData::AccessoryVehicleSpeedNotification::default_instance_ + 16);
    }

    result = raven::ConvertProtobufToRavenTime(v21, a2 + 104, 0, v14, v15, v16, v17, v18, v19, v20);
    if (result)
    {
      *(a2 + 256) = 0;
      v22 = *(this + 7) - 1;
      if (v22 <= 3)
      {
        *(a2 + 256) = 0x4010203u >> (8 * v22);
      }

      v23 = *(this + 18);
      if (v23 <= 1)
      {
        *(a2 + 257) = v23;
      }

      *(a2 + 200) = *(this + 52);
      v24 = *(this + 12);
      *(a2 + 51) = v24;
      sub_1D0C4E048(a2 + 26, v24);
      sub_1D0C4E048(a2 + 29, *(a2 + 51));
      if (*(this + 12) < 1)
      {
        return 1;
      }

      v25 = 0;
      do
      {
        if (v25 >= *(this + 10))
        {
          wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
          wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
          wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
          wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v32);
        }

        v32[0] = *(*(this + 4) + 8 * v25);
        sub_1D0C4E0E8(a2 + 26, v32);
        if (v25 >= *(this + 16))
        {
          wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
          wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
          wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
          wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v32);
        }

        v32[0] = *(*(this + 7) + 8 * v25);
        sub_1D0C4E0E8(a2 + 29, v32);
        ++v25;
        v28 = *(this + 12);
      }

      while (v25 < v28);
      if (v28 <= 0)
      {
        return 1;
      }

      else
      {
        v26.i64[0] = *(*(a2 + 27) - 8);
        v32[0] = 0;
        v32[1] = 0;
        *v29.i64 = CNTimeSpan::SetTimeSpan(v32, 0, v26, v27);
        *(a2 + 1) = CNTimeSpan::operator+(a2 + 13, v32, v29, v30);
        *(a2 + 2) = v31;
        *(a2 + 24) = 0u;
        *(a2 + 40) = 0u;
        *(a2 + 56) = 0u;
        *(a2 + 72) = 0u;
        result = 1;
        *(a2 + 11) = 0;
        *(a2 + 12) = 0x7FF8000000000000;
      }
    }
  }

  return result;
}

void sub_1D0DE3270(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t raven::ConvertProtobufToActivityInputEvent(raven *this, const CoreNavigation::CLP::LogEntry::PrivateData::MotionState *a2, raven::ActivityInputEvent *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int8x16_t a9, int8x16_t a10)
{
  if ((*(this + 32) & 1) == 0)
  {
    return 0;
  }

  v13 = *(this + 1);
  if (!v13)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
    v13 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionState::default_instance_ + 8);
  }

  result = raven::ConvertProtobufToRavenTime(v13, a2 + 8, 0, a4, a5, a6, a7, a8, a9, a10);
  if (result)
  {
    if ((*(this + 32) & 4) == 0)
    {
      return 0;
    }

    v14 = *(this + 2);
    if (!v14)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
      v14 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionState::default_instance_ + 16);
    }

    if ((*(v14 + 92) & 1) == 0)
    {
      return 0;
    }

    v15 = *(this + 2);
    if (!v15)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
      v15 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionState::default_instance_ + 16);
    }

    if ((*(v15 + 92) & 2) == 0)
    {
      return 0;
    }

    v16 = *(this + 2);
    if (!v16)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
      v16 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionState::default_instance_ + 16);
    }

    v17 = *(v16 + 8);
    if (v17 <= 11804)
    {
      if (v17 <= 63)
      {
        if (v17 <= 8)
        {
          v18 = 0;
          if (v17 > 3)
          {
            if (v17 > 5)
            {
              if (v17 != 6)
              {
                if (v17 != 7)
                {
                  goto LABEL_111;
                }

LABEL_116:
                *(a2 + 104) = v18;
                goto LABEL_117;
              }

LABEL_67:
              v18 = 4;
              goto LABEL_116;
            }

            if (v17 != 4)
            {
LABEL_106:
              v18 = 5;
              goto LABEL_116;
            }

LABEL_107:
            v18 = 2;
            goto LABEL_116;
          }

          if (v17 < 3)
          {
            goto LABEL_116;
          }

          if (v17 != 3)
          {
            goto LABEL_117;
          }

          goto LABEL_115;
        }

        if (v17 <= 55)
        {
          if (v17 > 40)
          {
            if (v17 != 41)
            {
              if (v17 != 52)
              {
                goto LABEL_117;
              }

              goto LABEL_106;
            }

            goto LABEL_107;
          }

          if ((v17 - 10) < 2)
          {
            goto LABEL_106;
          }

          if (v17 != 9)
          {
LABEL_117:
            *(a2 + 105) = 0;
            v24 = *(this + 2);
            if (!v24)
            {
              CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
              v24 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionState::default_instance_ + 16);
            }

            v25 = *(v24 + 12);
            if (v25 > 1)
            {
              if (v25 != 3 && v25 != 2)
              {
                return 1;
              }
            }

            else
            {
              if (!v25)
              {
                return 0;
              }

              if (v25 != 1)
              {
                return 1;
              }
            }

            *(a2 + 105) = v25;
            return 1;
          }

LABEL_115:
          v18 = 1;
          goto LABEL_116;
        }

        if (v17 <= 61)
        {
          if (v17 == 56)
          {
            goto LABEL_106;
          }

          if (v17 != 61)
          {
            goto LABEL_117;
          }

          goto LABEL_115;
        }

        if (v17 != 62)
        {
          goto LABEL_115;
        }

LABEL_97:
        v18 = 9;
        goto LABEL_116;
      }

      if (v17 > 2100)
      {
        if (v17 > 3014)
        {
          if ((v17 - 3015) >= 2)
          {
            goto LABEL_117;
          }

          goto LABEL_115;
        }

        if (v17 != 2101)
        {
          if (v17 != 2105 && v17 != 2150)
          {
            goto LABEL_117;
          }

          goto LABEL_115;
        }

        goto LABEL_97;
      }

      if (v17 > 2009)
      {
        v20 = (v17 - 2010);
        if (v20 > 0x3D)
        {
          goto LABEL_117;
        }

        if (((1 << v20) & 0x2488004000000400) != 0)
        {
          goto LABEL_115;
        }

        if (((1 << v20) & 0x5000) == 0)
        {
          if (!v20)
          {
            goto LABEL_67;
          }

          goto LABEL_117;
        }

        goto LABEL_97;
      }

      if ((v17 - 64) >= 2)
      {
        if (v17 != 66)
        {
          if (v17 != 100)
          {
            goto LABEL_117;
          }

          goto LABEL_67;
        }

        goto LABEL_115;
      }

LABEL_111:
      v18 = 3;
      goto LABEL_116;
    }

    if (v17 <= 15651)
    {
      if (v17 > 15254)
      {
        if (v17 <= 15459)
        {
          if (v17 > 15349)
          {
            if (v17 == 15350)
            {
              goto LABEL_111;
            }

            v22 = 15360;
          }

          else
          {
            if (v17 == 15255)
            {
              goto LABEL_115;
            }

            v22 = 15330;
          }
        }

        else
        {
          if (v17 <= 15591)
          {
            if (v17 == 15460)
            {
              goto LABEL_111;
            }

            v19 = 15562;
            goto LABEL_110;
          }

          if (v17 == 15592)
          {
            goto LABEL_115;
          }

          if (v17 == 15610)
          {
            goto LABEL_111;
          }

          v22 = 15620;
        }
      }

      else
      {
        if (v17 > 15099)
        {
          if ((v17 - 15100) <= 0x32 && ((1 << (v17 + 4)) & 0x4000000000401) != 0)
          {
            goto LABEL_115;
          }

          if (v17 == 15230)
          {
            goto LABEL_111;
          }

          v19 = 15240;
LABEL_110:
          if (v17 != v19)
          {
            goto LABEL_117;
          }

          goto LABEL_111;
        }

        if (v17 <= 15029)
        {
          if (v17 != 11805)
          {
            v19 = 12150;
            goto LABEL_110;
          }

LABEL_127:
          v18 = 7;
          goto LABEL_116;
        }

        if (v17 == 15030)
        {
          goto LABEL_115;
        }

        v22 = 15055;
      }

LABEL_114:
      if (v17 != v22)
      {
        goto LABEL_117;
      }

      goto LABEL_115;
    }

    if (v17 > 18224)
    {
      if (v17 > 19149)
      {
        if (v17 <= 90602)
        {
          if (v17 == 19150)
          {
            goto LABEL_115;
          }

          v22 = 19160;
        }

        else
        {
          if (v17 == 90603)
          {
            goto LABEL_127;
          }

          if (v17 == 515652)
          {
            goto LABEL_115;
          }

          v22 = 515621;
        }

        goto LABEL_114;
      }

      if (v17 > 19029)
      {
        if (v17 == 19030)
        {
          goto LABEL_115;
        }

        v22 = 19090;
        goto LABEL_114;
      }

      if (v17 == 18225)
      {
        goto LABEL_115;
      }

      v23 = 18240;
    }

    else
    {
      if (v17 <= 15732)
      {
        v21 = v17 - 15652;
        if (v21 > 0x3A || ((1 << v21) & 0x400000000840101) == 0)
        {
          goto LABEL_117;
        }

        goto LABEL_115;
      }

      if (v17 <= 18069)
      {
        if (v17 != 15733)
        {
          if (v17 == 17150)
          {
            goto LABEL_107;
          }

          goto LABEL_117;
        }

        goto LABEL_115;
      }

      if (v17 == 18070)
      {
        goto LABEL_115;
      }

      v23 = 18200;
    }

    if (v17 != v23)
    {
      goto LABEL_117;
    }

    v18 = 6;
    goto LABEL_116;
  }

  return result;
}

uint64_t raven::ConvertProtobufToFitnessSessionEvent(raven *this, const CoreNavigation::CLP::LogEntry::PrivateData::MotionStateObserver *a2, raven::FitnessSessionEvent *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v58 = 12;
  v57 = 3;
  if ((*(this + 32) & 4) == 0)
  {
    goto LABEL_5;
  }

  v10 = *(this + 2);
  if (!v10)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v10 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateObserver::default_instance_ + 16);
  }

  if (*(v10 + 36))
  {
    v12 = *(this + 2);
    if (!v12)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v12 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateObserver::default_instance_ + 16);
    }

    v11 = *(v12 + 16);
  }

  else
  {
LABEL_5:
    LOBYTE(v11) = -1;
  }

  if ((*(this + 32) & 4) != 0)
  {
    v13 = *(this + 2);
    if (!v13)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v13 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateObserver::default_instance_ + 16);
    }

    if ((*(v13 + 36) & 4) != 0)
    {
      v14 = *(this + 2);
      if (!v14)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
        v14 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateObserver::default_instance_ + 16);
      }

      v15 = *(v14 + 24);
      if (!v15)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
        v15 = *(CoreNavigation::CLP::LogEntry::PrivateData::WorkoutUpdate::default_instance_ + 24);
      }

      v16 = *(v15 + 8);
    }
  }

  if (*(this + 32))
  {
    v17 = *(this + 1);
    if (!v17)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v17 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateObserver::default_instance_ + 8);
    }

    v18 = *(v17 + 8);
  }

  cnprint::CNPrinter::Print(&v58, &v57, "#rwo,observer,activity_type,%d,start_time,%.6f,applicability_time,%.6f", a4, a5, a6, a7, a8, v11);
  if ((*(this + 32) & 1) == 0)
  {
    return 0;
  }

  v27 = *(this + 1);
  if (!v27)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
    v27 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateObserver::default_instance_ + 8);
  }

  result = raven::ConvertProtobufToRavenTime(v27, a2 + 8, 0, v19, v20, v21, v22, v23, v24, v25);
  if (result)
  {
    if ((*(this + 32) & 4) == 0)
    {
      return 0;
    }

    v33 = *(this + 2);
    if (!v33)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
      v33 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateObserver::default_instance_ + 16);
    }

    if ((*(v33 + 36) & 1) == 0)
    {
      return 0;
    }

    v34 = *(this + 2);
    if (!v34)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
      v34 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateObserver::default_instance_ + 16);
    }

    if ((*(v34 + 36) & 4) == 0)
    {
      return 0;
    }

    *(a2 + 424) = 0;
    v35 = *(a2 + 312);
    *(a2 + 248) = *(a2 + 40);
    v36 = *(a2 + 72);
    *(a2 + 264) = *(a2 + 56);
    *(a2 + 280) = v36;
    *(a2 + 296) = *(a2 + 88);
    *(a2 + 216) = *(a2 + 8);
    *(a2 + 232) = *(a2 + 24);
    if ((v35 & 1) == 0)
    {
      *(a2 + 312) = 1;
    }

    v37 = *(this + 2);
    if (!v37)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
      v37 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateObserver::default_instance_ + 16);
    }

    if ((*(v37 + 36) & 4) != 0)
    {
      v38 = 0uLL;
      *(a2 + 7) = 0u;
      v39 = *(a2 + 208);
      *(a2 + 8) = 0u;
      *(a2 + 9) = 0u;
      *(a2 + 10) = 0u;
      *(a2 + 11) = 0u;
      *(a2 + 24) = 0;
      *(a2 + 25) = 0x7FF8000000000000;
      if ((v39 & 1) == 0)
      {
        *(a2 + 208) = 1;
      }

      v40 = *(this + 2);
      if (!v40)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
        v40 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateObserver::default_instance_ + 16);
      }

      v41 = *(v40 + 24);
      if (!v41)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
        v41 = *(CoreNavigation::CLP::LogEntry::PrivateData::WorkoutUpdate::default_instance_ + 24);
      }

      if ((*(a2 + 208) & 1) == 0)
      {
        sub_1D0C42F28();
      }

      result = raven::ConvertProtobufToRavenTime(v41, a2 + 112, 1, v28, v29, v30, v31, v32, v38, v36);
    }

    v42 = *(this + 2);
    if (!v42)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
      v42 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateObserver::default_instance_ + 16);
    }

    v43 = *(v42 + 16);
    v44 = 2;
    if (v43 <= 15229)
    {
      if (v43 <= 2100)
      {
        if (v43 > 2009)
        {
          v48 = (v43 - 2010);
          if (v48 > 0x3D)
          {
            goto LABEL_128;
          }

          if (((1 << v48) & 0x2488004000005400) != 0)
          {
            goto LABEL_125;
          }

          if (v48)
          {
            goto LABEL_128;
          }

          goto LABEL_98;
        }

        if (v43 > 40)
        {
          v45 = (v43 - 61);
          if (v45 > 0x27)
          {
            goto LABEL_57;
          }

          if (((1 << (v43 - 61)) & 0x27) == 0)
          {
            if (((1 << (v43 - 61)) & 0x18) == 0)
            {
              if (v45 != 39)
              {
LABEL_57:
                if (v43 != 41)
                {
                  goto LABEL_128;
                }

                goto LABEL_126;
              }

              goto LABEL_98;
            }

LABEL_121:
            v44 = 7;
            goto LABEL_126;
          }

LABEL_125:
          v44 = 9;
          goto LABEL_126;
        }

        if (v43 != 4)
        {
          if (v43 != 6)
          {
            if (v43 == 8)
            {
              goto LABEL_94;
            }

LABEL_128:
            *(a2 + 52) = 513;
            v54 = *(a2 + 296);
            *(a2 + 24) = *(a2 + 280);
            *(a2 + 25) = v54;
            *(a2 + 416) = *(a2 + 312);
            v55 = *(a2 + 232);
            *(a2 + 20) = *(a2 + 216);
            *(a2 + 21) = v55;
            v56 = *(a2 + 264);
            result = 1;
            *(a2 + 22) = *(a2 + 248);
            *(a2 + 23) = v56;
            return result;
          }

LABEL_98:
          v44 = 4;
        }

LABEL_126:
        *(a2 + 104) = v44;
        result = 1;
        *(a2 + 105) = 1;
        return result;
      }

      if (v43 <= 12149)
      {
        if ((v43 - 2101) <= 0x31 && ((1 << (v43 - 53)) & 0x2000000000011) != 0 || (v43 - 3015) < 2)
        {
          goto LABEL_125;
        }

        v47 = 11805;
        goto LABEL_74;
      }

      if (v43 <= 15099)
      {
        if (v43 == 12150)
        {
LABEL_94:
          v44 = 3;
          goto LABEL_126;
        }

        if (v43 == 15030)
        {
          goto LABEL_125;
        }

        v52 = 15055;
        goto LABEL_124;
      }

      v53 = v43 - 15100;
      if (v53 > 0x32)
      {
        goto LABEL_128;
      }

      v50 = 1 << v53;
      v51 = 0x4000000000401;
LABEL_103:
      if ((v50 & v51) == 0)
      {
        goto LABEL_128;
      }

      goto LABEL_125;
    }

    if (v43 > 15732)
    {
      if (v43 > 19029)
      {
        if (v43 <= 19159)
        {
          if (v43 == 19030 || v43 == 19090)
          {
            goto LABEL_125;
          }

          if (v43 != 19150)
          {
            goto LABEL_128;
          }
        }

        else
        {
          if (v43 > 515620)
          {
            if (v43 == 515621)
            {
              goto LABEL_125;
            }

            v52 = 515652;
            goto LABEL_124;
          }

          if (v43 != 19160)
          {
            v47 = 90603;
LABEL_74:
            if (v43 != v47)
            {
              goto LABEL_128;
            }

            v44 = 6;
            goto LABEL_126;
          }
        }

        v44 = 8;
        goto LABEL_126;
      }

      if (v43 > 18199)
      {
        switch(v43)
        {
          case 18200:
            goto LABEL_115;
          case 18225:
            goto LABEL_125;
          case 18240:
LABEL_115:
            v44 = 5;
            goto LABEL_126;
        }

        goto LABEL_128;
      }

      if (v43 == 15733)
      {
        goto LABEL_125;
      }

      if (v43 == 17150)
      {
        goto LABEL_126;
      }

      v52 = 18070;
    }

    else if (v43 > 15591)
    {
      if (v43 > 15651)
      {
        v49 = v43 - 15652;
        if (v49 > 0x3A)
        {
          goto LABEL_128;
        }

        v50 = 1 << v49;
        v51 = 0x400000000840101;
        goto LABEL_103;
      }

      if (v43 == 15592)
      {
        goto LABEL_125;
      }

      if (v43 == 15610)
      {
        goto LABEL_121;
      }

      v52 = 15620;
    }

    else if (v43 > 15349)
    {
      if (v43 > 15459)
      {
        if (v43 == 15460)
        {
          goto LABEL_121;
        }

        v46 = 15562;
LABEL_120:
        if (v43 == v46)
        {
          goto LABEL_121;
        }

        goto LABEL_128;
      }

      if (v43 == 15350)
      {
        goto LABEL_121;
      }

      v52 = 15360;
    }

    else
    {
      if (v43 <= 15254)
      {
        if (v43 == 15230)
        {
          goto LABEL_121;
        }

        v46 = 15240;
        goto LABEL_120;
      }

      if (v43 == 15255)
      {
        goto LABEL_125;
      }

      v52 = 15330;
    }

LABEL_124:
    if (v43 == v52)
    {
      goto LABEL_125;
    }

    goto LABEL_128;
  }

  return result;
}

uint64_t raven::ConvertProtobufToFitnessSessionEvent(raven *this, const CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator *a2, raven::FitnessSessionEvent *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v67 = 12;
  v66 = 3;
  if ((*(this + 32) & 4) == 0)
  {
    goto LABEL_5;
  }

  v10 = *(this + 2);
  if (!v10)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v10 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator::default_instance_ + 16);
  }

  if ((*(v10 + 48) & 4) != 0)
  {
    v12 = *(this + 2);
    if (!v12)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v12 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator::default_instance_ + 16);
    }

    v11 = *(v12 + 40);
  }

  else
  {
LABEL_5:
    LOBYTE(v11) = -1;
  }

  if ((*(this + 32) & 4) != 0)
  {
    v13 = *(this + 2);
    if (!v13)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v13 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator::default_instance_ + 16);
    }

    if ((*(v13 + 48) & 0x10) != 0)
    {
      v14 = *(this + 2);
      if (!v14)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
        v14 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator::default_instance_ + 16);
      }

      v15 = *(v14 + 32);
      if (!v15)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
        v15 = *(CoreNavigation::CLP::LogEntry::PrivateData::WorkoutEvent::default_instance_ + 32);
      }

      if ((*(v15 + 40) & 4) != 0)
      {
        v61 = *(this + 2);
        if (!v61)
        {
          CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
          v61 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator::default_instance_ + 16);
        }

        v62 = *(v61 + 32);
        if (!v62)
        {
          CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
          v62 = *(CoreNavigation::CLP::LogEntry::PrivateData::WorkoutEvent::default_instance_ + 32);
        }

        v63 = *(v62 + 24);
      }
    }
  }

  if ((*(this + 32) & 4) != 0)
  {
    v16 = *(this + 2);
    if (!v16)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v16 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator::default_instance_ + 16);
    }

    if ((*(v16 + 48) & 8) != 0)
    {
      v17 = *(this + 2);
      if (!v17)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
        v17 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator::default_instance_ + 16);
      }

      v18 = *(v17 + 24);
      if (!v18)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
        v18 = *(CoreNavigation::CLP::LogEntry::PrivateData::WorkoutEvent::default_instance_ + 24);
      }

      v19 = *(v18 + 8);
    }
  }

  if (*(this + 32))
  {
    v20 = *(this + 1);
    if (!v20)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v20 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator::default_instance_ + 8);
    }

    v21 = *(v20 + 8);
  }

  cnprint::CNPrinter::Print(&v67, &v66, "#rwo,mediator,event_type,%d,workout_type,%d,event_time,%.6f,applicability_time,%.6f", a4, a5, a6, a7, a8, v11);
  if ((*(this + 32) & 1) == 0)
  {
    return 0;
  }

  v30 = *(this + 1);
  if (!v30)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
    v30 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator::default_instance_ + 8);
  }

  result = raven::ConvertProtobufToRavenTime(v30, a2 + 8, 0, v22, v23, v24, v25, v26, v27, v28);
  if (result)
  {
    if ((*(this + 32) & 4) == 0)
    {
      return 0;
    }

    v37 = *(this + 2);
    if (!v37)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
      v37 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator::default_instance_ + 16);
    }

    if ((*(v37 + 48) & 4) == 0)
    {
      return 0;
    }

    v38 = *(this + 2);
    if (!v38)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
      v38 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator::default_instance_ + 16);
    }

    if ((*(v38 + 48) & 1) == 0)
    {
      return 0;
    }

    v39 = *(this + 2);
    if (!v39)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
      v39 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator::default_instance_ + 16);
    }

    if ((*(v39 + 48) & 0x10) == 0)
    {
      return 0;
    }

    v40 = *(this + 2);
    if (!v40)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
      v40 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator::default_instance_ + 16);
    }

    v41 = *(v40 + 32);
    if (!v41)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
      v41 = *(CoreNavigation::CLP::LogEntry::PrivateData::WorkoutEvent::default_instance_ + 32);
    }

    if ((*(v41 + 40) & 4) == 0)
    {
      return 0;
    }

    v42 = *(this + 2);
    if (!v42)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
      v42 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator::default_instance_ + 16);
    }

    if ((*(v42 + 48) & 8) != 0)
    {
      v43 = 0uLL;
      *(a2 + 216) = 0u;
      v44 = *(a2 + 312);
      *(a2 + 232) = 0u;
      *(a2 + 248) = 0u;
      *(a2 + 264) = 0u;
      *(a2 + 280) = 0u;
      *(a2 + 37) = 0;
      *(a2 + 38) = 0x7FF8000000000000;
      if ((v44 & 1) == 0)
      {
        *(a2 + 312) = 1;
      }

      v45 = *(this + 2);
      if (!v45)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
        v45 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator::default_instance_ + 16);
      }

      v46 = *(v45 + 24);
      if (!v46)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
        v46 = *(CoreNavigation::CLP::LogEntry::PrivateData::WorkoutEvent::default_instance_ + 24);
      }

      if ((*(a2 + 312) & 1) == 0)
      {
        goto LABEL_124;
      }

      result = raven::ConvertProtobufToRavenTime(v46, a2 + 216, 1, v31, v32, v33, v34, v35, v43, v36);
    }

    v47 = *(this + 2);
    if (!v47)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
      v47 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator::default_instance_ + 16);
    }

    if (*(v47 + 48))
    {
      v48 = 0uLL;
      *(a2 + 7) = 0u;
      v49 = *(a2 + 208);
      *(a2 + 8) = 0u;
      *(a2 + 9) = 0u;
      *(a2 + 10) = 0u;
      *(a2 + 11) = 0u;
      *(a2 + 24) = 0;
      *(a2 + 25) = 0x7FF8000000000000;
      if ((v49 & 1) == 0)
      {
        *(a2 + 208) = 1;
      }

      v50 = *(this + 2);
      if (!v50)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
        v50 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator::default_instance_ + 16);
      }

      v51 = *(v50 + 8);
      if (!v51)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
        v51 = *(CoreNavigation::CLP::LogEntry::PrivateData::WorkoutEvent::default_instance_ + 8);
      }

      if ((*(a2 + 208) & 1) == 0)
      {
        goto LABEL_124;
      }

      result = raven::ConvertProtobufToRavenTime(v51, a2 + 112, 1, v31, v32, v33, v34, v35, v48, v36);
    }

    v52 = *(this + 2);
    if (!v52)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
      v52 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator::default_instance_ + 16);
    }

    if ((*(v52 + 48) & 2) == 0)
    {
LABEL_84:
      *(a2 + 424) = 1;
      v57 = *(this + 2);
      if (!v57)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
        v57 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator::default_instance_ + 16);
      }

      v58 = *(v57 + 32);
      if (!v58)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
        v58 = *(CoreNavigation::CLP::LogEntry::PrivateData::WorkoutEvent::default_instance_ + 32);
      }

      v59 = *(v58 + 24);
      if (v59 > 0x3E)
      {
        v60 = 9;
      }

      else
      {
        v60 = byte_1D0E9C8DE[v59];
      }

      *(a2 + 104) = v60;
      v64 = *(this + 2);
      if (!v64)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
        v64 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator::default_instance_ + 16);
      }

      result = 0;
      v65 = *(v64 + 40);
      if (v65 > 12)
      {
        if (v65 > 15)
        {
          switch(v65)
          {
            case 16:
              LOBYTE(v65) = 3;
              break;
            case 17:
              LOBYTE(v65) = 4;
              break;
            case 18:
              return result;
            default:
              goto LABEL_116;
          }

LABEL_121:
          *(a2 + 105) = v65;
          return 1;
        }

        if (v65 != 13 && v65 != 14)
        {
          *(a2 + 105) = 2;
LABEL_117:
          result = 1;
          *(a2 + 104) = 1;
          return result;
        }
      }

      else
      {
        if (v65 > 2)
        {
          if ((v65 - 5) < 8)
          {
            return result;
          }

          if (v65 != 3 && v65 != 4)
          {
LABEL_116:
            if (*(a2 + 105) == 2)
            {
              goto LABEL_117;
            }

            return 1;
          }

          goto LABEL_121;
        }

        if (!v65)
        {
          *(a2 + 105) = 0;
          return 1;
        }

        if (v65 != 1)
        {
          if (v65 == 2)
          {
            return result;
          }

          goto LABEL_116;
        }
      }

      result = 1;
      *(a2 + 105) = 1;
      return result;
    }

    v53 = *(a2 + 416);
    v54 = 0uLL;
    *(a2 + 20) = 0u;
    *(a2 + 21) = 0u;
    *(a2 + 22) = 0u;
    *(a2 + 23) = 0u;
    *(a2 + 24) = 0u;
    *(a2 + 50) = 0;
    *(a2 + 51) = 0x7FF8000000000000;
    if ((v53 & 1) == 0)
    {
      *(a2 + 416) = 1;
    }

    v55 = *(this + 2);
    if (!v55)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
      v55 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator::default_instance_ + 16);
    }

    v56 = *(v55 + 16);
    if (!v56)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
      v56 = *(CoreNavigation::CLP::LogEntry::PrivateData::WorkoutEvent::default_instance_ + 16);
    }

    if (*(a2 + 416))
    {
      result = raven::ConvertProtobufToRavenTime(v56, a2 + 320, 1, v31, v32, v33, v34, v35, v54, v36);
      goto LABEL_84;
    }

LABEL_124:
    sub_1D0C42F28();
  }

  return result;
}

uint64_t raven::ConvertProtobufToAltitudeEvent(raven *this, const CoreNavigation::CLP::LogEntry::PrivateData::DigitalElevationModel *a2, raven::AltitudeEvent *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int8x16_t a9, int8x16_t a10)
{
  if ((*(this + 52) & 1) == 0)
  {
    return 0;
  }

  v13 = *(this + 1);
  if (!v13)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
    v13 = *(CoreNavigation::CLP::LogEntry::PrivateData::DigitalElevationModel::default_instance_ + 8);
  }

  result = raven::ConvertProtobufToRavenTime(v13, a2 + 8, 0, a4, a5, a6, a7, a8, a9, a10);
  if (result)
  {
    if ((~*(this + 13) & 6) != 0)
    {
      return 0;
    }

    v14 = *(this + 3);
    v15 = v14 < 0 || ((v14 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE;
    if (v15 && (v14 - 1) > 0xFFFFFFFFFFFFELL)
    {
      return 0;
    }

    else
    {
      *(a2 + 13) = *(this + 2);
      *(a2 + 14) = v14;
      return 1;
    }
  }

  return result;
}

uint64_t raven::ConvertProtobufToGEOMapBuildingDataEvent(raven *this, const CoreNavigation::CLP::LogEntry::PrivateData::GEOMapBuildingData *a2, raven::GEOMapBuildingDataEvent *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int8x16_t a9, int8x16_t a10)
{
  if ((*(this + 68) & 1) == 0)
  {
    goto LABEL_12;
  }

  v12 = *(this + 1);
  if (!v12)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
    v12 = *(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapBuildingData::default_instance_ + 8);
  }

  v13 = raven::ConvertProtobufToRavenTime(v12, a2 + 8, 0, a4, a5, a6, a7, a8, a9, a10);
  if ((v13 & 1) == 0)
  {
LABEL_12:
    LOWORD(__p[0]) = 12;
    LOBYTE(v95) = 4;
    v16 = "ConvertProtobufToGEOMapBuildingDataEvent, Missing / error in time-tag of GEOMapBuildingData message";
    goto LABEL_13;
  }

  v14 = *(this + 7);
  if (!v14)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v13);
    v14 = *(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapBuildingData::default_instance_ + 56);
  }

  if ((*(v14 + 28) & 1) == 0)
  {
    goto LABEL_11;
  }

  v15 = *(this + 7);
  if (!v15)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v13);
    v15 = *(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapBuildingData::default_instance_ + 56);
  }

  if ((*(v15 + 28) & 2) == 0)
  {
LABEL_11:
    LOWORD(__p[0]) = 12;
    LOBYTE(v95) = 4;
    v16 = "ConvertProtobufToGEOMapBuildingDataEvent, Missing query location in GEOMapBuildingData message";
LABEL_13:
    cnprint::CNPrinter::Print(__p, &v95, v16, a4, a5, a6, a7, a8, v80);
    return 0;
  }

  v18 = *(this + 7);
  v19 = v18;
  if (!v18)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v13);
    v19 = *(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapBuildingData::default_instance_ + 56);
    v18 = *(this + 7);
  }

  if (fabs(*(v19 + 8)) > 90.0)
  {
    goto LABEL_21;
  }

  v20 = v18;
  if (!v18)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v13);
    v20 = *(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapBuildingData::default_instance_ + 56);
    v18 = *(this + 7);
  }

  if (fabs(*(v20 + 16)) > 180.0)
  {
LABEL_21:
    LOWORD(__p[0]) = 12;
    LOBYTE(v95) = 4;
    if (v18)
    {
      v21 = *(v18 + 8);
    }

    else
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v13);
      v18 = *(this + 7);
      v21 = *(*(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapBuildingData::default_instance_ + 56) + 8);
      if (!v18)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v22);
        v18 = *(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapBuildingData::default_instance_ + 56);
      }
    }

    v81 = *(v18 + 16);
    cnprint::CNPrinter::Print(__p, &v95, "ConvertProtobufToGEOMapBuildingDataEvent, Invalid latitude or longitude value of query location,lat_deg,%.9lf,lon_deg,%.9lf", a4, a5, a6, a7, a8, v21);
    return 0;
  }

  if (v18)
  {
    *(a2 + 16) = *(v18 + 8) * 0.0174532925;
  }

  else
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v13);
    v18 = *(this + 7);
    *(a2 + 16) = *(*(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapBuildingData::default_instance_ + 56) + 8) * 0.0174532925;
    if (!v18)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v23);
      v18 = *(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapBuildingData::default_instance_ + 56);
    }
  }

  *(a2 + 17) = *(v18 + 16) * 0.0174532925;
  sub_1D0DE4F58(a2 + 13);
  v82 = (a2 + 104);
  LogLevel = sub_1D0DE4FB8(a2 + 13, *(this + 6));
  if (*(this + 6) >= 1)
  {
    v25 = 0;
    v85 = vdupq_n_s64(0x7FF8000000000000uLL);
    v83 = a2;
    do
    {
      v26 = *(*(this + 2) + 8 * v25);
      v27 = *(v26 + 16);
      if (!v27)
      {
        LogLevel = cnprint::CNPrinter::GetLogLevel(LogLevel);
        if (LogLevel <= 1)
        {
          LOWORD(__p[0]) = 12;
          LOBYTE(v95) = 1;
          cnprint::CNPrinter::Print(__p, &v95, "ConvertProtobufToGEOMapBuildingDataEvent, Building with no sections, building is skipped.", v31, v32, v33, v34, v35, v80);
        }

        goto LABEL_84;
      }

      v28 = *(v26 + 52);
      if ((v28 & 4) != 0 && v27 == 1 && *(v26 + 40) >> 5 <= 0xC34uLL && *(**(v26 + 8) + 16) == 3)
      {
        LogLevel = cnprint::CNPrinter::GetLogLevel(LogLevel);
        if (LogLevel <= 1)
        {
          LOWORD(__p[0]) = 12;
          LOBYTE(v95) = 1;
          cnprint::CNPrinter::Print(__p, &v95, "ConvertProtobufToGEOMapBuildingDataEvent, skipped V2 Tiles ghost building, id, %llu", v36, v37, v38, v39, v40, *(v26 + 40));
        }

        goto LABEL_84;
      }

      v94 = 0;
      v92 = 0u;
      v93 = 0u;
      v29 = *(v26 + 16);
      if (v29)
      {
        if ((v29 & 0x80000000) == 0)
        {
          v88.i64[1] = &v93;
          sub_1D0DDCF38(&v93, v29);
        }

        sub_1D0C5663C();
      }

      if ((v28 & 2) != 0)
      {
        v30 = *(v26 + 32);
      }

      else
      {
        v30 = 0;
      }

      *&v92 = v30;
      if ((v28 & 4) != 0)
      {
        v41 = *(v26 + 40);
      }

      else
      {
        v41 = 0;
      }

      *(&v92 + 1) = v41;
      if (v30)
      {
        v84 = v25;
        if (*(v26 + 16) >= 1)
        {
          v42 = 0;
          while (1)
          {
            v43 = *(*(v26 + 8) + 8 * v42);
            if (!*(v43 + 16))
            {
              LogLevel = cnprint::CNPrinter::GetLogLevel(LogLevel);
              if (LogLevel <= 1)
              {
                LOWORD(__p[0]) = 12;
                LOBYTE(v95) = 1;
                cnprint::CNPrinter::Print(__p, &v95, "ConvertProtobufToGEOMapBuildingDataEvent, Building's section with missing coordinate data, section is skipped.", v50, v51, v52, v53, v54, v80);
              }

              goto LABEL_67;
            }

            v44 = *(v43 + 88);
            if ((v28 & 4) != 0)
            {
              break;
            }

            if ((~v44 & 6) == 0)
            {
              goto LABEL_61;
            }

            LogLevel = cnprint::CNPrinter::GetLogLevel(LogLevel);
            if (LogLevel <= 1)
            {
              LOWORD(__p[0]) = 12;
              LOBYTE(v95) = 1;
              cnprint::CNPrinter::Print(__p, &v95, "ConvertProtobufToGEOMapBuildingDataEvent, V1 Building's section with missing data, section is skipped.", v45, v46, v47, v48, v49, v80);
            }

LABEL_67:
            if (++v42 >= *(v26 + 16))
            {
              goto LABEL_68;
            }
          }

          if ((~v44 & 0xF8) != 0)
          {
            LogLevel = cnprint::CNPrinter::GetLogLevel(LogLevel);
            if (LogLevel <= 1)
            {
              LOWORD(__p[0]) = 12;
              LOBYTE(v95) = 1;
              cnprint::CNPrinter::Print(__p, &v95, "ConvertProtobufToGEOMapBuildingDataEvent, V2 Building's section with missing data, section is skipped.", v56, v57, v58, v59, v60, v80);
            }

            goto LABEL_67;
          }

LABEL_61:
          __p[1] = 0;
          v87 = 0;
          __p[0] = 0;
          v88 = v85;
          v89 = 0;
          v90 = v85;
          v91 = v85;
          v55 = *(v43 + 16);
          if (v55)
          {
            if ((v55 & 0x80000000) == 0)
            {
              sub_1D0BC40DC(__p, v55);
            }

            sub_1D0C5663C();
          }

          LogLevel = __p[0];
          goto LABEL_67;
        }

LABEL_68:
        a2 = v83;
        v25 = v84;
        if (v93 != *(&v93 + 1))
        {
          v61 = *(v83 + 14);
          v62 = *(v83 + 15);
          if (v61 >= v62)
          {
            v69 = 0xCCCCCCCCCCCCCCCDLL * ((v61 - *v82) >> 3);
            v70 = v69 + 1;
            if (v69 + 1 > 0x666666666666666)
            {
              sub_1D0C5663C();
            }

            v71 = 0xCCCCCCCCCCCCCCCDLL * ((v62 - *v82) >> 3);
            if (2 * v71 > v70)
            {
              v70 = 2 * v71;
            }

            if (v71 >= 0x333333333333333)
            {
              v72 = 0x666666666666666;
            }

            else
            {
              v72 = v70;
            }

            v88.i64[1] = v82;
            if (v72)
            {
              sub_1D0DDCEE0(v82, v72);
            }

            v73 = 40 * v69;
            *v73 = v92;
            *(v73 + 24) = 0;
            *(v73 + 32) = 0;
            *(v73 + 16) = 0;
            *(v73 + 16) = v93;
            *(v73 + 32) = v94;
            v93 = 0uLL;
            v94 = 0;
            v63 = 40 * v69 + 40;
            v74 = *(v83 + 13);
            v75 = *(v83 + 14);
            v76 = v73 + v74 - v75;
            sub_1D0DE9E48(v82, v74, v75, v76);
            v77 = *(v83 + 13);
            *(v83 + 13) = v76;
            *(v83 + 14) = v63;
            v78 = *(v83 + 15);
            *(v83 + 15) = 0;
            v87 = v77;
            v88.i64[0] = v78;
            __p[0] = v77;
            __p[1] = v77;
            sub_1D0DE9F0C(__p);
          }

          else
          {
            *v61 = v92;
            *(v61 + 24) = 0;
            *(v61 + 32) = 0;
            *(v61 + 16) = 0;
            *(v61 + 16) = v93;
            *(v61 + 32) = v94;
            v93 = 0uLL;
            v94 = 0;
            v63 = v61 + 40;
          }

          *(v83 + 14) = v63;
        }
      }

      else if (cnprint::CNPrinter::GetLogLevel(LogLevel) <= 1)
      {
        LOWORD(__p[0]) = 12;
        LOBYTE(v95) = 1;
        cnprint::CNPrinter::Print(__p, &v95, "ConvertProtobufToGEOMapBuildingDataEvent, no building hash is given, building is skipped.", v64, v65, v66, v67, v68, v80);
      }

      __p[0] = &v93;
      sub_1D0DDD018(__p);
LABEL_84:
      ++v25;
    }

    while (v25 < *(this + 6));
  }

  if (*(this + 12) < 1)
  {
    return 1;
  }

  v79 = 0;
  do
  {
    __p[0] = *(*(this + 5) + 8 * v79);
    sub_1D0DEA3B0(a2 + 144, __p);
    ++v79;
    result = 1;
  }

  while (v79 < *(this + 12));
  return result;
}

void sub_1D0DE4EF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24)
{
  *(v24 - 152) = a17;
  sub_1D0DDD018((v24 - 152));
  _Unwind_Resume(a1);
}

void sub_1D0DE4F58(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    do
    {
      v4 = v2 - 40;
      v5 = (v2 - 24);
      sub_1D0DDD018(&v5);
      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

void *sub_1D0DE4FB8(void *result, unint64_t a2)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x666666666666667)
    {
      v2 = result[1] - *result;
      v3 = result;
      sub_1D0DDCEE0(result, a2);
    }

    sub_1D0C5663C();
  }

  return result;
}

uint64_t raven::ConvertProtobufToBodyMetricsEvent(raven *this, const CoreNavigation::CLP::LogEntry::PrivateData::Natalimetry *a2, raven::BodyMetricsEvent *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int8x16_t a9, int8x16_t a10)
{
  if ((*(this + 32) & 1) == 0)
  {
    return 0;
  }

  v13 = *(this + 1);
  if (!v13)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
    v13 = *(CoreNavigation::CLP::LogEntry::PrivateData::Natalimetry::default_instance_ + 8);
  }

  result = raven::ConvertProtobufToRavenTime(v13, a2 + 8, 0, a4, a5, a6, a7, a8, a9, a10);
  if (result)
  {
    if ((*(this + 32) & 4) != 0)
    {
      v14 = *(this + 2);
      if (!v14)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
        v14 = *(CoreNavigation::CLP::LogEntry::PrivateData::Natalimetry::default_instance_ + 16);
      }

      v15 = *(v14 + 44);
      if (v15 <= 7)
      {
        *(a2 + 104) = v15;
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t raven::ConvertProtobufToDeviceMotionAccelerationEvent(raven *this, const CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotionSample *a2, raven::AccelerometerEvent *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int8x16_t a9, int8x16_t a10)
{
  if ((*(this + 56) & 1) == 0)
  {
    return 0;
  }

  v13 = *(this + 1);
  if (!v13)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
    v13 = *(CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotionSample::default_instance_ + 8);
  }

  result = raven::ConvertProtobufToRavenTime(v13, a2 + 8, 0, a4, a5, a6, a7, a8, a9, a10);
  if (result)
  {
    v14 = *(this + 2);
    if (!v14)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
      v14 = *(CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotionSample::default_instance_ + 16);
    }

    if ((*(v14 + 56) & 1) == 0)
    {
      return 0;
    }

    v15 = *(this + 2);
    if (!v15)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
      v15 = *(CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotionSample::default_instance_ + 16);
    }

    if ((*(v15 + 56) & 2) != 0)
    {
      v16 = *(this + 2);
      if (!v16)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
        v16 = *(CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotionSample::default_instance_ + 16);
      }

      v17 = *(v16 + 8);
      if (!v17)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
        v17 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDeviceMotion::default_instance_ + 8);
      }

      v18 = *(v17 + 16);
      v19 = *(this + 2);
      if (!v19)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
        v19 = *(CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotionSample::default_instance_ + 16);
      }

      v20 = *(v19 + 8);
      if (!v20)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
        v20 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDeviceMotion::default_instance_ + 8);
      }

      v21 = *(v20 + 24);
      v22 = *(this + 2);
      if (!v22)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
        v22 = *(CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotionSample::default_instance_ + 16);
      }

      v23 = *(v22 + 8);
      if (!v23)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
        v23 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDeviceMotion::default_instance_ + 8);
      }

      v24 = *(v23 + 32);
      v25 = *(this + 2);
      if (!v25)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
        v25 = *(CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotionSample::default_instance_ + 16);
      }

      v26 = *(v25 + 8);
      if (!v26)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
        v26 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDeviceMotion::default_instance_ + 8);
      }

      v27 = *(v26 + 8);
      v28 = v24 + v24;
      v29 = *(this + 2);
      if (!v29)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
        v29 = *(CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotionSample::default_instance_ + 16);
      }

      v30 = v18 + v18;
      v31 = *(v29 + 16);
      if (!v31)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
        v31 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDeviceMotion::default_instance_ + 16);
      }

      *(a2 + 13) = (v18 * v28 - v27 * (v21 + v21) - *(v31 + 8)) * 9.80665;
      v32 = *(this + 2);
      if (!v32)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
        v32 = *(CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotionSample::default_instance_ + 16);
      }

      v33 = v30 * v27 + v21 * v28;
      v34 = *(v32 + 16);
      if (!v34)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
        v34 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDeviceMotion::default_instance_ + 16);
      }

      v35 = 1.0 - v18 * v30;
      *(a2 + 14) = (v33 - *(v34 + 12)) * 9.80665;
      v36 = *(this + 2);
      if (!v36)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
        v36 = *(CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotionSample::default_instance_ + 16);
      }

      v37 = v35 - v21 * (v21 + v21);
      v38 = *(v36 + 16);
      if (!v38)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
        v38 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDeviceMotion::default_instance_ + 16);
      }

      *(a2 + 15) = (v37 - *(v38 + 16)) * 9.80665;
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t raven::ConvertProtobufToDeviceMotionAttitudeEvent(uint64_t a1, uint64_t a2, signed int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int8x16_t a9, int8x16_t a10)
{
  if ((*(a1 + 56) & 1) == 0)
  {
    return 0;
  }

  v69 = v15;
  v70 = v14;
  v71 = v13;
  v72 = v12;
  v73 = v10;
  v74 = v11;
  v20 = *(a1 + 8);
  if (!v20)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
    v20 = *(CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotionSample::default_instance_ + 8);
  }

  result = raven::ConvertProtobufToRavenTime(v20, a2 + 8, 0, a4, a5, a6, a7, a8, a9, a10);
  if (result)
  {
    v21 = *(a1 + 16);
    if (!v21)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
      v21 = *(CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotionSample::default_instance_ + 16);
    }

    if (*(v21 + 46) != 1)
    {
      return 0;
    }

    v22 = *(a1 + 16);
    if (!v22)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
      v22 = *(CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotionSample::default_instance_ + 16);
    }

    if ((*(v22 + 56) & 1) == 0 || (*(a1 + 56) & 0x40) == 0)
    {
      return 0;
    }

    v23 = *(a1 + 16);
    if (!v23)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
      v23 = *(CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotionSample::default_instance_ + 16);
    }

    if ((*(v23 + 56) & 0x10) == 0)
    {
      return 0;
    }

    v24 = *(a1 + 16);
    if (!v24)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
      v24 = *(CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotionSample::default_instance_ + 16);
    }

    v25 = *(v24 + 40);
    if (v25 >= 6)
    {
      result = cnprint::CNPrinter::GetLogLevel(result);
      if (result <= 1)
      {
        v68 = 12;
        v67 = 1;
        v26 = (*(*a2 + 16))(a2);
        v63 = v27 + v26;
        cnprint::CNPrinter::Print(&v68, &v67, "t,%.3lf,WARNING: Device Motion, unknown mag calibration level", v28, v29, v30, v31, v32, SLOBYTE(v63));
      }

      v25 = -1;
    }

    if (v25 >= a3)
    {
      v33 = *(a1 + 16);
      if (!v33)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
        v33 = *(CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotionSample::default_instance_ + 16);
      }

      v34 = *(v33 + 8);
      if (!v34)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
        v34 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDeviceMotion::default_instance_ + 8);
      }

      v35 = *(v34 + 16);
      v36 = *(a1 + 16);
      if (!v36)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
        v36 = *(CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotionSample::default_instance_ + 16);
      }

      v37 = *(v36 + 8);
      if (!v37)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
        v37 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDeviceMotion::default_instance_ + 8);
      }

      v38 = *(v37 + 24);
      v39 = *(a1 + 16);
      if (!v39)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
        v39 = *(CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotionSample::default_instance_ + 16);
      }

      v40 = *(v39 + 8);
      if (!v40)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
        v40 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDeviceMotion::default_instance_ + 8);
      }

      v41 = *(v40 + 32);
      v42 = *(a1 + 16);
      if (!v42)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
        v42 = *(CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotionSample::default_instance_ + 16);
      }

      v43 = *(v42 + 8);
      if (!v43)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
        v43 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDeviceMotion::default_instance_ + 8);
      }

      v44 = *(v43 + 8);
      v45 = sqrt(v38 * v38 + v35 * v35 + v41 * v41 + v44 * v44);
      if (fabs(v45) >= 2.22044605e-16)
      {
        v47 = v35 / v45;
        v48 = v38 / v45;
        v49 = v41 / v45;
        v46 = v44 / v45;
      }

      else
      {
        v46 = 1.0;
        v47 = 0.0;
        v48 = 0.0;
        v49 = 0.0;
      }

      *(a2 + 104) = v47;
      *(a2 + 112) = v48;
      *(a2 + 120) = v49;
      *(a2 + 128) = v46;
      v50 = *(a1 + 44) < 20.0;
      v51 = *(a1 + 16);
      if (!v51)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
        v51 = *(CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotionSample::default_instance_ + 16);
      }

      v52 = dbl_1D0E9C850[v50];
      v53 = *(v51 + 40);
      if (v53 >= 6)
      {
        if (cnprint::CNPrinter::GetLogLevel(result) <= 1)
        {
          v66 = 12;
          v65 = 1;
          v55 = (*(*a2 + 16))(a2);
          v64 = v56 + v55;
          cnprint::CNPrinter::Print(&v66, &v65, "t,%.3lf,WARNING: Device Motion, unknown mag calibration level", v57, v58, v59, v60, v61, SLOBYTE(v64));
        }

        v54 = 100.0;
      }

      else
      {
        v54 = dbl_1D0E9C920[v53];
      }

      v62 = v52 + v54;
      *(a2 + 136) = v62;
      *(a2 + 152) = 0;
      *(a2 + 160) = 0;
      *(a2 + 144) = 0;
      *(a2 + 168) = v62;
      *(a2 + 176) = 0;
      *(a2 + 184) = 0;
      *(a2 + 192) = v62;
      *(a2 + 200) = 0;
      *(a2 + 208) = v62;
      *(a2 + 216) = 513;
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t raven::ConvertProtobufToDeviceMotionRotationRateEvent(raven *this, const CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotionSample *a2, raven::RateGyroEvent *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int8x16_t a9, int8x16_t a10)
{
  if ((*(this + 56) & 1) == 0)
  {
    return 0;
  }

  v13 = *(this + 1);
  if (!v13)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
    v13 = *(CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotionSample::default_instance_ + 8);
  }

  result = raven::ConvertProtobufToRavenTime(v13, a2 + 8, 0, a4, a5, a6, a7, a8, a9, a10);
  if (result)
  {
    v14 = *(this + 2);
    if (!v14)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
      v14 = *(CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotionSample::default_instance_ + 16);
    }

    if ((*(v14 + 56) & 4) != 0)
    {
      v15 = *(this + 2);
      if (!v15)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
        v15 = *(CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotionSample::default_instance_ + 16);
      }

      v16 = *(v15 + 24);
      if (!v16)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
        v16 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDeviceMotion::default_instance_ + 24);
      }

      *(a2 + 13) = *(v16 + 8);
      v17 = *(this + 2);
      if (!v17)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
        v17 = *(CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotionSample::default_instance_ + 16);
      }

      v18 = *(v17 + 24);
      if (!v18)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
        v18 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDeviceMotion::default_instance_ + 24);
      }

      *(a2 + 14) = *(v18 + 12);
      v19 = *(this + 2);
      if (!v19)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
        v19 = *(CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotionSample::default_instance_ + 16);
      }

      v20 = *(v19 + 24);
      if (!v20)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
        v20 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDeviceMotion::default_instance_ + 24);
      }

      *(a2 + 15) = *(v20 + 16);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t raven::ConvertProtobufToMagnetometerEvent(float32x2_t *a1, uint64_t a2, int8x16_t a3, int8x16_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if ((a1[4].i8[0] & 1) == 0)
  {
    return 0;
  }

  v13 = a1[1];
  if (!v13)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
    v13 = *(CoreNavigation::CLP::LogEntry::PrivateData::MagSample::default_instance_ + 8);
  }

  result = raven::ConvertProtobufToRavenTime(v13, a2 + 8, 0, a6, a7, a8, a9, a10, a3, a4);
  if (result)
  {
    *(a2 + 104) = vcvtq_f64_f32(a1[2]);
    *(a2 + 120) = a1[3].f32[0];
    result = 1;
    *(a2 + 128) = 1;
  }

  return result;
}

uint64_t raven::ConvertProtobufToMapVectorEvent(raven *this, const CoreNavigation::CLP::LogEntry::PrivateData::MapVector *a2, raven::MapVectorEvent *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int8x16_t a9, int8x16_t a10)
{
  if ((*(this + 32) & 1) == 0)
  {
    return 0;
  }

  v13 = *(this + 1);
  if (!v13)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
    v13 = *(CoreNavigation::CLP::LogEntry::PrivateData::MapVector::default_instance_ + 8);
  }

  result = raven::ConvertProtobufToRavenTime(v13, a2 + 8, 0, a4, a5, a6, a7, a8, a9, a10);
  if (result)
  {
    if ((*(this + 32) & 4) == 0)
    {
      return 0;
    }

    v21 = *(this + 2);
    if (!v21)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
      v21 = *(CoreNavigation::CLP::LogEntry::PrivateData::MapVector::default_instance_ + 16);
    }

    if ((*(v21 + 96) & 1) == 0)
    {
      return 0;
    }

    v22 = *(this + 2);
    if (!v22)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
      v22 = *(CoreNavigation::CLP::LogEntry::PrivateData::MapVector::default_instance_ + 16);
    }

    v23 = *(v22 + 8);
    if (!v23)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
      v23 = *(CoreNavigation::CLP::LogEntry::PrivateData::DirectionOfTravel::default_instance_ + 8);
    }

    result = raven::ConvertProtobufToRavenTime(v23, a2 + 104, 0, v14, v15, v16, v17, v18, v19, v20);
    if (result)
    {
      v24 = *(this + 2);
      if (v24)
      {
        *(a2 + 25) = *(v24 + 16);
      }

      else
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
        v24 = *(this + 2);
        *(a2 + 25) = *(*(CoreNavigation::CLP::LogEntry::PrivateData::MapVector::default_instance_ + 16) + 16);
        if (!v24)
        {
          CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v25);
          v24 = *(this + 2);
          *(a2 + 26) = *(*(CoreNavigation::CLP::LogEntry::PrivateData::MapVector::default_instance_ + 16) + 24);
          if (!v24)
          {
            CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v26);
            v24 = *(this + 2);
            *(a2 + 32) = *(*(CoreNavigation::CLP::LogEntry::PrivateData::MapVector::default_instance_ + 16) + 32);
            if (!v24)
            {
              CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v27);
              v24 = *(this + 2);
              *(a2 + 33) = *(*(CoreNavigation::CLP::LogEntry::PrivateData::MapVector::default_instance_ + 16) + 40);
              if (!v24)
              {
                CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v28);
                v24 = *(this + 2);
                *(a2 + 27) = *(*(CoreNavigation::CLP::LogEntry::PrivateData::MapVector::default_instance_ + 16) + 80);
                if (!v24)
                {
                  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v29);
                  v24 = *(this + 2);
                  *(a2 + 28) = *(*(CoreNavigation::CLP::LogEntry::PrivateData::MapVector::default_instance_ + 16) + 56);
                  if (!v24)
                  {
                    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v30);
                    v24 = *(this + 2);
                    *(a2 + 29) = *(*(CoreNavigation::CLP::LogEntry::PrivateData::MapVector::default_instance_ + 16) + 64);
                    if (!v24)
                    {
                      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v31);
                      v24 = *(this + 2);
                      *(a2 + 30) = *(*(CoreNavigation::CLP::LogEntry::PrivateData::MapVector::default_instance_ + 16) + 48);
                      if (!v24)
                      {
                        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v32);
                        v24 = *(this + 2);
                        *(a2 + 31) = *(*(CoreNavigation::CLP::LogEntry::PrivateData::MapVector::default_instance_ + 16) + 72);
                        if (!v24)
                        {
                          CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v33);
                          v24 = *(this + 2);
                          *(a2 + 272) = *(*(CoreNavigation::CLP::LogEntry::PrivateData::MapVector::default_instance_ + 16) + 88);
                          if (!v24)
                          {
                            CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v34);
                            v24 = *(this + 2);
                            *(a2 + 273) = *(*(CoreNavigation::CLP::LogEntry::PrivateData::MapVector::default_instance_ + 16) + 89);
                            if (!v24)
                            {
                              CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v35);
                              v24 = *(this + 2);
                              *(a2 + 274) = *(*(CoreNavigation::CLP::LogEntry::PrivateData::MapVector::default_instance_ + 16) + 90);
                              if (!v24)
                              {
                                CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v36);
                                v24 = *(CoreNavigation::CLP::LogEntry::PrivateData::MapVector::default_instance_ + 16);
                              }

                              goto LABEL_31;
                            }

LABEL_30:
                            *(a2 + 274) = *(v24 + 90);
LABEL_31:
                            *(a2 + 275) = *(v24 + 91);
                            return 1;
                          }

LABEL_29:
                          *(a2 + 273) = *(v24 + 89);
                          goto LABEL_30;
                        }

LABEL_28:
                        *(a2 + 272) = *(v24 + 88);
                        goto LABEL_29;
                      }

LABEL_27:
                      *(a2 + 31) = *(v24 + 72);
                      goto LABEL_28;
                    }

LABEL_26:
                    *(a2 + 30) = *(v24 + 48);
                    goto LABEL_27;
                  }

LABEL_25:
                  *(a2 + 29) = *(v24 + 64);
                  goto LABEL_26;
                }

LABEL_24:
                *(a2 + 28) = *(v24 + 56);
                goto LABEL_25;
              }

LABEL_23:
              *(a2 + 27) = *(v24 + 80);
              goto LABEL_24;
            }

LABEL_22:
            *(a2 + 33) = *(v24 + 40);
            goto LABEL_23;
          }

LABEL_21:
          *(a2 + 32) = *(v24 + 32);
          goto LABEL_22;
        }
      }

      *(a2 + 26) = *(v24 + 24);
      goto LABEL_21;
    }
  }

  return result;
}

uint64_t raven::ConvertProtobufToMountStateEvent(raven *this, const CoreNavigation::CLP::LogEntry::PrivateData::MotionState *a2, raven::MountStateEvent *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int8x16_t a9, int8x16_t a10)
{
  if ((*(this + 32) & 1) == 0)
  {
    return 0;
  }

  v13 = *(this + 1);
  if (!v13)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
    v13 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionState::default_instance_ + 8);
  }

  result = raven::ConvertProtobufToRavenTime(v13, a2 + 8, 0, a4, a5, a6, a7, a8, a9, a10);
  if (!result)
  {
    return result;
  }

  if ((*(this + 32) & 4) == 0)
  {
    return 0;
  }

  v14 = *(this + 2);
  if (!v14)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
    v14 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionState::default_instance_ + 16);
  }

  if ((*(v14 + 92) & 4) == 0)
  {
    return 0;
  }

  v15 = *(this + 2);
  if (!v15)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
    v15 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionState::default_instance_ + 16);
  }

  if ((*(v15 + 92) & 8) == 0)
  {
    return 0;
  }

  v16 = *(this + 2);
  if (!v16)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
    v16 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionState::default_instance_ + 16);
  }

  v17 = *(v16 + 20);
  v18 = 0.0;
  if (v17 > 1)
  {
    if (v17 == 2)
    {
      v18 = 0.5;
    }

    else if (v17 == 3)
    {
      v18 = 1.0;
    }
  }

  else
  {
    if (!v17)
    {
      return 0;
    }

    if (v17 == 1)
    {
      v18 = 0.25;
    }
  }

  v19 = *(this + 2);
  if (!v19)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
    v19 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionState::default_instance_ + 16);
  }

  v20 = *(v19 + 16);
  result = 1;
  switch(v20)
  {
    case 2:
      *(a2 + 104) = 1;
      *(a2 + 15) = v18;
      goto LABEL_33;
    case 1:
      *(a2 + 104) = 3;
      *(a2 + 17) = v18;
LABEL_33:
      v21 = 1.0 - v18;
      goto LABEL_34;
    case 0:
      *(a2 + 104) = 0;
      v21 = 1.0;
LABEL_34:
      *(a2 + 14) = v21;
      break;
  }

  return result;
}

uint64_t raven::ConvertProtobufToMovingStateEvent(raven *this, const CoreNavigation::CLP::LogEntry::PrivateData::MotionState *a2, raven::MovingStateEvent *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int8x16_t a9, int8x16_t a10)
{
  if ((*(this + 32) & 1) == 0)
  {
    return 0;
  }

  v13 = *(this + 1);
  if (!v13)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
    v13 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionState::default_instance_ + 8);
  }

  result = raven::ConvertProtobufToRavenTime(v13, a2 + 8, 0, a4, a5, a6, a7, a8, a9, a10);
  if (!result)
  {
    return result;
  }

  if ((*(this + 32) & 4) == 0)
  {
    return 0;
  }

  v14 = *(this + 2);
  if (!v14)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
    v14 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionState::default_instance_ + 16);
  }

  if ((*(v14 + 92) & 1) == 0)
  {
    return 0;
  }

  v15 = *(this + 2);
  if (!v15)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
    v15 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionState::default_instance_ + 16);
  }

  if ((*(v15 + 92) & 2) == 0)
  {
    return 0;
  }

  v16 = *(this + 2);
  if (!v16)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
    v16 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionState::default_instance_ + 16);
  }

  v17 = *(v16 + 12);
  v18 = 0.0;
  if (v17 > 1)
  {
    if (v17 == 2 || v17 == 3)
    {
      v18 = 0.95;
    }
  }

  else
  {
    if (!v17)
    {
      return 0;
    }

    if (v17 == 1)
    {
      v18 = 0.8;
    }
  }

  v19 = *(this + 2);
  if (!v19)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
    v19 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionState::default_instance_ + 16);
  }

  v20 = *(v19 + 8);
  result = 1;
  if (v20 > 11804)
  {
    if (v20 > 15651)
    {
      if (v20 <= 18199)
      {
        if (v20 <= 15732)
        {
          v23 = (v20 - 15652);
          if (v23 > 0x3A)
          {
            return result;
          }

          if (((1 << v23) & 0x400000000800101) != 0)
          {
            goto LABEL_89;
          }

          if (v23 != 18)
          {
            return result;
          }

          goto LABEL_86;
        }

        if (v20 == 15733 || v20 == 17150)
        {
          goto LABEL_89;
        }

        v22 = 18070;
      }

      else if (v20 > 19149)
      {
        if (v20 <= 90602)
        {
          if (v20 == 19150)
          {
            goto LABEL_89;
          }

          v22 = 19160;
        }

        else
        {
          if (v20 == 90603 || v20 == 515621)
          {
            goto LABEL_89;
          }

          v22 = 515652;
        }
      }

      else
      {
        if ((v20 - 18200) <= 0x28 && ((1 << (v20 - 24)) & 0x10002000001) != 0 || v20 == 19030)
        {
          goto LABEL_89;
        }

        v22 = 19090;
      }
    }

    else if (v20 > 15329)
    {
      if ((v20 - 15562) <= 0x3A && ((1 << (v20 + 54)) & 0x401000040000001) != 0 || (v20 - 15330) <= 0x1E && ((1 << (v20 + 30)) & 0x40100001) != 0)
      {
        goto LABEL_89;
      }

      v22 = 15460;
    }

    else if (v20 <= 15054)
    {
      if (v20 == 11805 || v20 == 12150)
      {
        goto LABEL_89;
      }

      v22 = 15030;
    }

    else
    {
      if ((v20 - 15100) <= 0x32 && ((1 << (v20 + 4)) & 0x4000000000401) != 0 || (v20 - 15230) <= 0x19 && ((1 << (v20 - 126)) & 0x2000401) != 0)
      {
        goto LABEL_89;
      }

      v22 = 15055;
    }

    if (v20 == v22)
    {
      goto LABEL_89;
    }

    return result;
  }

  if (v20 <= 2009)
  {
    if (v20 > 0x38)
    {
      goto LABEL_88;
    }

    if (((1 << v20) & 0x110020000000378) != 0)
    {
      goto LABEL_89;
    }

    if (((1 << v20) & 0xC06) != 0)
    {
      *(a2 + 104) = 1;
      *(a2 + 15) = v18;
LABEL_90:
      v24 = 1.0 - v18;
      goto LABEL_91;
    }

    if (v20 != 7)
    {
LABEL_88:
      if ((v20 - 61) > 0x27 || ((1 << (v20 - 61)) & 0x800000003FLL) == 0)
      {
        if (v20)
        {
          return result;
        }

        *(a2 + 104) = 0;
        v24 = 1.0;
LABEL_91:
        *(a2 + 14) = v24;
        return result;
      }

      goto LABEL_89;
    }

    goto LABEL_86;
  }

  if (v20 <= 2100)
  {
    v21 = v20 - 2010;
    if (v21 > 0x3D)
    {
      return result;
    }

    if (((1 << v21) & 0x2480000000005400) == 0)
    {
      if (((1 << v21) & 0x8004000000001) == 0)
      {
        return result;
      }

      goto LABEL_86;
    }

LABEL_89:
    *(a2 + 104) = 3;
    *(a2 + 17) = v18;
    goto LABEL_90;
  }

  if (v20 <= 2149)
  {
    if (v20 == 2101)
    {
      goto LABEL_89;
    }

    if (v20 != 2105)
    {
      return result;
    }

LABEL_86:
    *(a2 + 104) = 2;
    *(a2 + 16) = v18;
    goto LABEL_90;
  }

  if (v20 == 2150 || v20 == 3015)
  {
    goto LABEL_86;
  }

  if (v20 == 3016)
  {
    goto LABEL_89;
  }

  return result;
}

BOOL raven::ConvertProtobufToRavenPlatformInfoObject(raven *this, const CoreNavigation::CLP::LogEntry::Raven::RavenPlatformInfo *a2, raven::RavenPlatformInfo *a3)
{
  CNPlatformInfo::CNPlatformInfo(&v9, this);
  *a2 = v9;
  *(a2 + 2) = v10;
  if (*(a2 + 31) < 0)
  {
    operator delete(*(a2 + 1));
  }

  *(a2 + 8) = __p;
  *(a2 + 3) = v12;
  HIBYTE(v12) = 0;
  LOBYTE(__p) = 0;
  if (*(a2 + 55) < 0)
  {
    operator delete(*(a2 + 4));
    v6 = SHIBYTE(v12);
    *(a2 + 2) = v13;
    v7 = v14;
    v5 = v15;
    HIBYTE(v14) = 0;
    LOBYTE(v13) = 0;
    *(a2 + 6) = v7;
    *(a2 + 7) = v5;
    if (v6 < 0)
    {
      operator delete(__p);
      LODWORD(v5) = *(a2 + 14);
    }
  }

  else
  {
    *(a2 + 2) = v13;
    v4 = v15;
    *(a2 + 6) = v14;
    *(a2 + 7) = v4;
    LODWORD(v5) = v4;
  }

  result = 0;
  if (*a2 >= 2u)
  {
    if (v5)
    {
      return *(a2 + 15) != 0;
    }
  }

  return result;
}

uint64_t raven::ConvertProtobufToSignalEnvironmentEvent(raven *this, const CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironment *a2, raven::SignalEnvironmentEvent *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int8x16_t a9, int8x16_t a10)
{
  if ((*(this + 32) & 1) == 0)
  {
    return 0;
  }

  v32 = v10;
  v33 = v11;
  v15 = *(this + 1);
  if (!v15)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
    v15 = *(CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironment::default_instance_ + 8);
  }

  result = raven::ConvertProtobufToRavenTime(v15, a2 + 8, 0, a4, a5, a6, a7, a8, a9, a10);
  if (result)
  {
    v16 = *(this + 8);
    if ((v16 & 6) == 0)
    {
      v31 = 12;
      v30 = 4;
      v18 = (*(*a2 + 16))(a2);
      v26 = v19 + v18;
      cnprint::CNPrinter::Print(&v31, &v30, "t,%.3lf,No signal environment", v20, v21, v22, v23, v24, SLOBYTE(v26));
      return 0;
    }

    if ((v16 & 4) != 0)
    {
      v29 = *(this + 5);
      v25 = raven::ConvertProtobufToSignalEnvironmentType(&v29);
      if ((v16 & 2) == 0 || v25)
      {
        goto LABEL_14;
      }

      v28 = *(this + 4);
      v17 = &v28;
    }

    else
    {
      v27 = *(this + 4);
      v17 = &v27;
    }

    LOBYTE(v25) = raven::ConvertProtobufToSignalEnvironmentType(v17);
LABEL_14:
    *(a2 + 104) = v25;
    return 1;
  }

  return result;
}

uint64_t raven::ConvertProtobufToSignalEnvironmentType(int *a1)
{
  v1 = *a1;
  if (*a1 >= 7)
  {
    LOBYTE(v1) = 0;
  }

  return v1;
}

uint64_t raven::ConvertProtobufToStepCountEvent(raven *this, const CoreNavigation::CLP::LogEntry::PrivateData::StepCount *a2, raven::StepCountEvent *a3)
{
  if ((*(this + 32) & 4) != 0)
  {
    v5 = *(this + 2);
    if (!v5)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v5 = *(CoreNavigation::CLP::LogEntry::PrivateData::StepCount::default_instance_ + 16);
    }

    CoreNavigation::CLP::LogEntry::PrivateData::StepCountEntry::StepCountEntry(v30, v5);
    if ((v38 & 1) == 0)
    {
      goto LABEL_31;
    }

    v13 = v31;
    if (!v31)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
      v13 = *(CoreNavigation::CLP::LogEntry::PrivateData::StepCountEntry::default_instance_ + 8);
    }

    v14 = raven::ConvertProtobufToRavenTime(v13, a2 + 8, 0, v6, v7, v8, v9, v10, v11, v12);
    if ((v14 & 1) == 0)
    {
      goto LABEL_31;
    }

    if ((v38 & 0x8000) == 0)
    {
LABEL_22:
      if (!v37)
      {
        goto LABEL_25;
      }

      if (v37 <= 3)
      {
        *(a2 + 104) = v37;
LABEL_25:
        v19 = v38;
        if ((v38 & 0x10000) != 0)
        {
          *(a2 + 34) = v35;
          if ((v19 & 0x20) == 0)
          {
LABEL_27:
            if ((v19 & 0x800) == 0)
            {
              goto LABEL_28;
            }

            goto LABEL_36;
          }
        }

        else if ((v38 & 0x20) == 0)
        {
          goto LABEL_27;
        }

        *(a2 + 18) = v33;
        if ((v19 & 0x800) == 0)
        {
LABEL_28:
          if ((v19 & 8) == 0)
          {
LABEL_30:
            v3 = 1;
LABEL_32:
            CoreNavigation::CLP::LogEntry::PrivateData::StepCountEntry::~StepCountEntry(v30);
            return v3;
          }

LABEL_29:
          *(a2 + 39) = v32;
          goto LABEL_30;
        }

LABEL_36:
        *(a2 + 38) = v34;
        if ((v19 & 8) == 0)
        {
          goto LABEL_30;
        }

        goto LABEL_29;
      }

LABEL_31:
      v3 = 0;
      goto LABEL_32;
    }

    v15 = v36;
    if (!v36)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v14);
      v15 = *(CoreNavigation::CLP::LogEntry::PrivateData::StepCountEntry::default_instance_ + 104);
    }

    CoreNavigation::CLP::LogEntry::PrivateData::AccelerometerPace::AccelerometerPace(&v25, v15);
    v16 = v29;
    if (v29)
    {
      v21 = ((*&v26 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF && (*&v26 & 0x7FFFFFFFFFFFFFFFuLL) - 1 >= 0xFFFFFFFFFFFFFLL;
      v22 = 0.0;
      if (!v21)
      {
        v22 = 1.0 / v26;
      }

      *(a2 + 14) = v22;
      if ((v16 & 4) == 0)
      {
LABEL_14:
        if ((v16 & 2) == 0)
        {
LABEL_21:
          CoreNavigation::CLP::LogEntry::PrivateData::AccelerometerPace::~AccelerometerPace(&v25);
          goto LABEL_22;
        }

LABEL_15:
        v17 = ((*&v27 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF && (*&v27 & 0x7FFFFFFFFFFFFFFFuLL) - 1 >= 0xFFFFFFFFFFFFFLL;
        v18 = 0.0;
        if (!v17)
        {
          v18 = 1.0 / v27;
        }

        *(a2 + 16) = v18;
        goto LABEL_21;
      }
    }

    else if ((v29 & 4) == 0)
    {
      goto LABEL_14;
    }

    v23 = ((*&v28 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF && (*&v28 & 0x7FFFFFFFFFFFFFFFuLL) - 1 >= 0xFFFFFFFFFFFFFLL;
    v24 = 0.0;
    if (!v23)
    {
      v24 = 1.0 / v28;
    }

    *(a2 + 15) = v24;
    if ((v16 & 2) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_15;
  }

  return 0;
}

void sub_1D0DE66C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  CoreNavigation::CLP::LogEntry::PrivateData::StepCountEntry::~StepCountEntry(va);
  _Unwind_Resume(a1);
}

uint64_t raven::ConvertProtobufToTunnelBridgeNotificationEvent(raven *this, const CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeNotification *a2, raven::TunnelBridgeNotificationEvent *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int8x16_t a9, int8x16_t a10)
{
  v12 = *(this + 1);
  if (!v12)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
    v12 = *(CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeNotification::default_instance_ + 8);
  }

  result = raven::ConvertProtobufToRavenTime(v12, a2 + 8, 0, a4, a5, a6, a7, a8, a9, a10);
  if (result)
  {
    if ((*(this + 32) & 4) == 0)
    {
      return 0;
    }

    v21 = *(this + 2);
    if (!v21)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
      v21 = *(CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeNotification::default_instance_ + 16);
    }

    v22 = *(v21 + 8);
    if (!v22)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
      v22 = *(CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeAssistance::default_instance_ + 8);
    }

    result = raven::ConvertProtobufToRavenTime(v22, a2 + 104, 0, v14, v15, v16, v17, v18, v19, v20);
    if (result)
    {
      v23 = *(this + 2);
      if (!v23)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
        v23 = *(CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeNotification::default_instance_ + 16);
      }

      if ((*(v23 + 48) & 8) == 0)
      {
        return 0;
      }

      v24 = *(this + 2);
      if (!v24)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
        v24 = *(CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeNotification::default_instance_ + 16);
      }

      if ((*(v24 + 48) & 2) == 0)
      {
        return 0;
      }

      v25 = *(this + 2);
      if (!v25)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
        v25 = *(CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeNotification::default_instance_ + 16);
      }

      if ((*(v25 + 48) & 4) == 0)
      {
        return 0;
      }

      v26 = *(this + 2);
      if (!v26)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
        v26 = *(CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeNotification::default_instance_ + 16);
      }

      if ((*(v26 + 48) & 0x20) == 0)
      {
        return 0;
      }

      v27 = *(this + 2);
      if (!v27)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
        v27 = *(CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeNotification::default_instance_ + 16);
      }

      if ((*(v27 + 48) & 0x10) == 0)
      {
        return 0;
      }

      v28 = *(this + 2);
      if (!v28)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
        v28 = *(CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeNotification::default_instance_ + 16);
      }

      if ((*(v28 + 48) & 0x40) == 0)
      {
        return 0;
      }

      v29 = *(this + 2);
      if (!v29)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
        v29 = *(CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeNotification::default_instance_ + 16);
      }

      if ((*(v29 + 48) & 0x80) == 0)
      {
        return 0;
      }

      v30 = *(this + 2);
      if (v30)
      {
        *(a2 + 27) = *(v30 + 32);
      }

      else
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
        v30 = *(this + 2);
        *(a2 + 27) = *(*(CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeNotification::default_instance_ + 16) + 32);
        if (!v30)
        {
          CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v31);
          v30 = *(this + 2);
          *(a2 + 25) = *(*(CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeNotification::default_instance_ + 16) + 16);
          if (!v30)
          {
            CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v32);
            v30 = *(this + 2);
            *(a2 + 26) = *(*(CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeNotification::default_instance_ + 16) + 24);
            if (!v30)
            {
              CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v33);
              v30 = *(this + 2);
              *(a2 + 225) = *(*(CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeNotification::default_instance_ + 16) + 41);
              if (!v30)
              {
                CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v34);
                v30 = *(this + 2);
                *(a2 + 224) = *(*(CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeNotification::default_instance_ + 16) + 40);
                if (!v30)
                {
                  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v35);
                  v30 = *(this + 2);
                  *(a2 + 226) = *(*(CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeNotification::default_instance_ + 16) + 42);
                  if (!v30)
                  {
                    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v36);
                    v30 = *(CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeNotification::default_instance_ + 16);
                  }

                  goto LABEL_40;
                }

LABEL_39:
                *(a2 + 226) = *(v30 + 42);
LABEL_40:
                *(a2 + 227) = *(v30 + 43);
                return 1;
              }

LABEL_38:
              *(a2 + 224) = *(v30 + 40);
              goto LABEL_39;
            }

LABEL_37:
            *(a2 + 225) = *(v30 + 41);
            goto LABEL_38;
          }

LABEL_36:
          *(a2 + 26) = *(v30 + 24);
          goto LABEL_37;
        }
      }

      *(a2 + 25) = *(v30 + 16);
      goto LABEL_36;
    }
  }

  return result;
}

uint64_t raven::ConvertProtobufFrameTypeToClientLocationReferenceFrameType(_DWORD *a1)
{
  if (*a1 == 2)
  {
    return 2;
  }

  else
  {
    return *a1 == 1;
  }
}

uint64_t raven::ConvertProtobufToTunnelEndPointAssistanceEvent(raven *this, const CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPoint *a2, raven::TunnelEndPointAssistanceEvent *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int8x16_t a9, int8x16_t a10)
{
  v12 = *(this + 1);
  if (!v12)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
    v12 = *(CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPoint::default_instance_ + 8);
  }

  result = raven::ConvertProtobufToRavenTime(v12, a2 + 8, 0, a4, a5, a6, a7, a8, a9, a10);
  if (result)
  {
    if ((*(this + 32) & 4) == 0)
    {
      return 0;
    }

    v21 = *(this + 2);
    if (!v21)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
      v21 = *(CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPoint::default_instance_ + 16);
    }

    v22 = *(v21 + 8);
    if (!v22)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
      v22 = *(CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPointAssistance::default_instance_ + 8);
    }

    result = raven::ConvertProtobufToRavenTime(v22, a2 + 104, 0, v14, v15, v16, v17, v18, v19, v20);
    if (result)
    {
      if ((~*(v21 + 124) & 0x7E) != 0)
      {
        if (cnprint::CNPrinter::GetLogLevel(result) <= 1)
        {
          v32 = 12;
          v31 = 1;
          cnprint::CNPrinter::Print(&v32, &v31, "tunnel end position assistance does not contain all required data", v25, v26, v27, v28, v29, v30);
        }

        return 0;
      }

      *(a2 + 200) = *(v21 + 16);
      *(a2 + 216) = *(v21 + 32);
      *(a2 + 29) = *(v21 + 48);
      v23 = *(v21 + 72);
      if (v23 == 2)
      {
        v24 = 2;
      }

      else
      {
        v24 = v23 == 1;
      }

      *(a2 + 240) = v24;
      return 1;
    }
  }

  return result;
}

uint64_t raven::ConvertProtobufToVelocityEvent(raven *this, const CoreNavigation::CLP::LogEntry::PrivateData::Location *a2, raven::VelocityEvent *a3, raven::VelocityEvent *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, int8x16_t a10)
{
  v11[1] = 0;
  v11[2] = 0;
  v11[0] = &unk_1F4CEF748;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v22 = 0;
  v23 = 0;
  v21 = 0x7FF8000000000000;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0x7FF8000000000000;
  v34 = 0;
  v36 = vdupq_n_s64(0x7FF8000000000000uLL);
  v37 = v36;
  v38 = v36;
  v39 = v36;
  v40 = 0x7FF8000000000000;
  v42 = v36;
  v43 = v36;
  v44 = v36;
  v45 = v36;
  v46 = 0x7FF8000000000000;
  v35 = 0;
  v41 = 0;
  return raven::ConvertProtobufToVelocityEvent(this, v11, a2, a4, a5, a6, a7, a8, v36, a10);
}

uint64_t raven::ConvertProtobufToARSessionStatusEvent(cnprint::CNPrinter *a1, uint64_t a2, uint64_t a3, int8x16_t a4, int8x16_t a5)
{
  if ((*(a2 + 44) & 4) == 0)
  {
    if (cnprint::CNPrinter::GetLogLevel(a1) <= 1)
    {
      LOWORD(v23) = 12;
      v22 = 1;
      cnprint::CNPrinter::Print(&v23, &v22, "ConvertProtobufToARSessionStatusEvent, mach continuous time not present", v5, v6, v7, v8, v9, v21);
    }

    return 0;
  }

  a4.i64[0] = *(a2 + 24);
  v23 = 0uLL;
  CNTimeSpan::SetTimeSpan(&v23, 0, a4, a5);
  *(a3 + 8) = v23;
  v14 = *a1;
  if (*a1 > 0)
  {
    if (v14 == 1)
    {
      v15 = 2;
    }

    else
    {
      if (v14 != 2)
      {
        goto LABEL_12;
      }

      v15 = 3;
    }

    *(a3 + 104) = v15;
  }

  else
  {
    if (v14 != -1)
    {
      if (!v14)
      {
        result = 1;
        *(a3 + 104) = 1;
        return result;
      }

LABEL_12:
      if (cnprint::CNPrinter::GetLogLevel(v13) <= 1)
      {
        LOWORD(v23) = 12;
        v22 = 1;
        cnprint::CNPrinter::Print(&v23, &v22, "ConvertProtobufToARSessionStatusEvent, Invalid vision AR Session Status, %u", v16, v17, v18, v19, v20, *a1);
      }

      return 0;
    }

    *(a3 + 104) = 0;
  }

  return 1;
}

uint64_t raven::ConvertProtobufToVIOEstimateEvent(raven *this, const CoreNavigation::CLP::LogEntry::Vision::VIOEstimation *a2, raven::VIOEstimateEvent *a3, int8x16_t a4, int8x16_t a5)
{
  if ((*(this + 88) & 4) == 0)
  {
    if (cnprint::CNPrinter::GetLogLevel(this) <= 1)
    {
      *v223 = 12;
      __p[0] = 1;
      v10 = "ConvertProtobufVIOEstimateEvent, VIO applicable mach continuous time not present";
LABEL_47:
      cnprint::CNPrinter::Print(v223, __p, v10, v5, v6, v7, v8, v9, SLOBYTE(v168));
      return 0;
    }

    return 0;
  }

  v13 = *(this + 2);
  if (!v13)
  {
    CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionEvent_2eproto(this);
    v13 = *(CoreNavigation::CLP::LogEntry::Vision::VIOEstimation::default_instance_ + 16);
  }

  a4.i64[0] = *(v13 + 24);
  *v223 = 0uLL;
  CNTimeSpan::SetTimeSpan(v223, 0, a4, a5);
  v16 = *v223;
  *(a2 + 104) = *v223;
  *(a2 + 8) = v16;
  if ((*(this + 88) & 2) == 0)
  {
    if (cnprint::CNPrinter::GetLogLevel(v14) <= 1)
    {
      *v223 = 12;
      __p[0] = 1;
      v17 = (*(*a2 + 16))(a2);
      v169 = v18 + v17;
      cnprint::CNPrinter::Print(v223, __p, "ConvertProtobufVIOEstimateEvent, t, %.3lf, VIO session start mach continuous time not present", v19, v20, v21, v22, v23, SLOBYTE(v169));
    }

    return 0;
  }

  v24 = *(this + 1);
  if (!v24)
  {
    CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionEvent_2eproto(v14);
    v24 = *(CoreNavigation::CLP::LogEntry::Vision::VIOEstimation::default_instance_ + 8);
  }

  v16.i64[0] = *(v24 + 24);
  *v223 = 0uLL;
  CNTimeSpan::SetTimeSpan(v223, 0, v16, v15);
  *(a2 + 200) = *v223;
  v26 = *(this + 22);
  if ((v26 & 1) == 0)
  {
    if (cnprint::CNPrinter::GetLogLevel(v25) <= 1)
    {
      *v223 = 12;
      __p[0] = 1;
      v27 = (*(*a2 + 16))(a2);
      v170 = v28 + v27;
      cnprint::CNPrinter::Print(v223, __p, "ConvertProtobufVIOEstimateEvent,t, %.3lf, VIO Tracking Status not present", v29, v30, v31, v32, v33, SLOBYTE(v170));
    }

    return 0;
  }

  v34 = *(this + 20) + 1;
  if (v34 >= 6)
  {
    if (cnprint::CNPrinter::GetLogLevel(v25) <= 1)
    {
      *v223 = 12;
      __p[0] = 1;
      v53 = (*(*a2 + 16))(a2);
      v174 = *(this + 20);
      v171 = v54 + v53;
      cnprint::CNPrinter::Print(v223, __p, "ConvertProtobufVIOEstimateEvent, t, %.3lf, Invalid VIO Tracking State, %u", v55, v56, v57, v58, v59, SLOBYTE(v171));
    }

    return 0;
  }

  *(a2 + 296) = v34;
  if ((~v26 & 0x78) != 0)
  {
    if (cnprint::CNPrinter::GetLogLevel(v25) <= 1)
    {
      *v223 = 12;
      __p[0] = 1;
      v60 = (*(*a2 + 16))(a2);
      v172 = v61 + v60;
      cnprint::CNPrinter::Print(v223, __p, "ConvertProtobufVIOEstimateEvent, t, %.3lf, VIO State/Cov not present", v62, v63, v64, v65, v66, SLOBYTE(v172));
    }

    return 0;
  }

  v35 = *(this + 3);
  if (!v35)
  {
    CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionEvent_2eproto(v25);
    v35 = *(CoreNavigation::CLP::LogEntry::Vision::VIOEstimation::default_instance_ + 24);
  }

  v36 = *(v35 + 8);
  v37 = *(v35 + 16);
  if (v36 != 8 * v37 || (v38 = *(v35 + 24), v39 = *(v35 + 56), v39 + v38 + *(v35 + 48) + *(v35 + 32) + *(v35 + 40) != v37))
  {
    LogLevel = cnprint::CNPrinter::GetLogLevel(v25);
    if (LogLevel > 1)
    {
      goto LABEL_45;
    }

    *v223 = 12;
    __p[0] = 1;
    v73 = "ConvertProtobufVIOInertialState, VIO Inertial State Info Integrity failed.";
    goto LABEL_44;
  }

  if (v36 > 0xA8 || !v37 || v39 != 3 || v38 != 9)
  {
    goto LABEL_49;
  }

  v40 = *(this + 4);
  v41 = *(v40 + 23);
  if (v41 < 0)
  {
    v41 = v40[1];
  }

  if (v41 != v36)
  {
LABEL_49:
    LogLevel = cnprint::CNPrinter::GetLogLevel(v25);
    if (LogLevel > 1)
    {
      goto LABEL_45;
    }

    *v223 = 12;
    __p[0] = 1;
    v73 = "ConvertProtobufVIOInertialState, VIO Inertial State Info Sensibility checks failed.";
LABEL_44:
    cnprint::CNPrinter::Print(v223, __p, v73, v68, v69, v70, v71, v72, SLOBYTE(v168));
    goto LABEL_45;
  }

  v42 = *(v35 + 20);
  v43 = *(v35 + 52);
  sub_1D0DEA260(__dst, v37);
  v44 = *(v40 + 23);
  if ((v44 & 0x8000000000000000) != 0)
  {
    v45 = v40;
    v40 = *v40;
    v44 = v45[1];
  }

  if (v44)
  {
    memmove(__dst[0], v40, v44);
  }

  v224 = 0x300000003;
  *&v223[8] = xmmword_1D0E76C10;
  v46 = v226;
  *v223 = &unk_1F4CD5DD0;
  v225 = v226;
  if (v42 > 0xFFFFFFF6)
  {
    v52 = 3;
  }

  else
  {
    v47 = 0;
    v48 = 0;
    v49 = (v42 + 9) - v42;
    v50 = (__dst[0] + 8 * v42);
    do
    {
      v51 = *v50++;
      v226[3 * v48 + v47] = v51;
      if (v47 == 2)
      {
        ++v48;
        v47 = 0;
      }

      else
      {
        ++v47;
      }

      --v49;
    }

    while (v49);
    v52 = *&v223[20];
    v46 = v225;
  }

  v77 = 0;
  v190 = 0x300000003;
  v188 = &unk_1F4CD5DD0;
  v191 = &v192;
  v189 = xmmword_1D0E76C10;
  v78 = 8 * v52;
  v79 = 40;
  do
  {
    v80 = 0;
    v81 = v79;
    do
    {
      *(&v188 + v81) = v46[v80++];
      v81 += 24;
    }

    while (v80 != 3);
    ++v77;
    v79 += 8;
    v46 = (v46 + v78);
  }

  while (v77 != 3);
  v195 = 0x300000003;
  v194 = xmmword_1D0E76C10;
  v193 = &unk_1F4CD5DD0;
  v196 = &v197;
  sub_1D0B89390(&v188, v223, &v193);
  v179 = 0x300000003;
  v177 = &unk_1F4CD5DD0;
  v178 = xmmword_1D0E76C10;
  v182 = 0u;
  v183 = 0;
  v185 = 0u;
  v180 = &v181;
  v181 = 0x3FF0000000000000;
  v184 = 0x3FF0000000000000;
  v186 = 0;
  v187 = 0x3FF0000000000000;
  v200 = 0x300000003;
  v199 = xmmword_1D0E76C10;
  v198 = &unk_1F4CD5DD0;
  v201 = &v202;
  sub_1D0BA5A78(&v193, &v177, &v198);
  v206 = 0x300000003;
  v203[0] = &unk_1F4CD5DD0;
  v82 = (DWORD1(v199) * v199);
  v83 = v208;
  v207 = v208;
  v203[1] = v199;
  v204 = v82;
  v205 = v199;
  if (v82 >= 1)
  {
    v84 = v201;
    do
    {
      v85 = *v84++;
      *v83++ = fabs(v85);
      --v82;
    }

    while (v82);
  }

  v211 = 0x300000003;
  v210 = xmmword_1D0E76C10;
  v209 = &unk_1F4CD5DD0;
  v212 = &v213;
  v220 = 0x300000003;
  v219 = xmmword_1D0E76C10;
  v218 = &unk_1F4CDEA18;
  v221 = v222;
  sub_1D0BBAD9C(v203, &v209, &v218);
  *&__p[24] = 0x300000003;
  *&__p[8] = xmmword_1D0E76C10;
  *__p = &unk_1F4CD5DD0;
  v215 = v216;
  v220 = 0x300000003;
  v219 = xmmword_1D0E76C10;
  v218 = &unk_1F4CDEA18;
  v221 = v222;
  sub_1D0BBAD9C(&v209, __p, &v218);
  if (fabs(*v215) <= 0.00001 && fabs(sub_1D0DEA1BC(v223) + -1.0) <= 0.00001)
  {
    sub_1D0D260A4(__p, v223);
    if (a2 + 304 != __p)
    {
      v110 = *&__p[16];
      *(a2 + 19) = *__p;
      *(a2 + 20) = v110;
    }

    *&__p[24] = 0x100000003;
    *&__p[8] = xmmword_1D0E7DCC0;
    *__p = &unk_1F4CDEB28;
    v215 = v216;
    if (v43 <= 0xFFFFFFFC)
    {
      v111 = 0;
      v112 = __dst[0] + 8 * v43;
      do
      {
        *&v216[v111] = *&v112[v111];
        v111 += 8;
      }

      while (v111 != 24);
    }

    sub_1D0BFA800(__p);
    v92 = (v114 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
    if ((v114 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
    {
      sub_1D0B894B0(a2 + 336, __p);
    }

    else
    {
      v145 = cnprint::CNPrinter::GetLogLevel(v113);
      if (v145 <= 1)
      {
        LOWORD(v209) = 12;
        LOBYTE(v203[0]) = 1;
        cnprint::CNPrinter::Print(&v209, v203, "ConvertProtobufVIOInertialState, NOTE: VIO Position Vector failed the sensibility check.", v146, v147, v148, v149, v150, SLOBYTE(v168));
      }
    }
  }

  else
  {
    if (cnprint::CNPrinter::GetLogLevel(v86) <= 1)
    {
      *__p = 12;
      LOBYTE(v209) = 1;
      cnprint::CNPrinter::Print(__p, &v209, "ConvertProtobufVIOInertialState, NOTE: VIO imu2vio rotation matrix failed the orthogonality check.", v87, v88, v89, v90, v91, SLOBYTE(v168));
    }

    v92 = 0;
  }

  LogLevel = __dst[0];
  if (__dst[0])
  {
    __dst[1] = __dst[0];
    operator delete(__dst[0]);
  }

  if (!v92)
  {
LABEL_45:
    if (cnprint::CNPrinter::GetLogLevel(LogLevel) <= 1)
    {
      *v223 = 12;
      __p[0] = 1;
      v74 = (*(*a2 + 16))(a2);
      v168 = v75 + v74;
      v10 = "ConvertProtobufVIOEstimateEvent, t, %.3lf, Parsing Error in VIO Inertial State";
      goto LABEL_47;
    }

    return 0;
  }

  if ((~*(this + 22) & 0x60) != 0)
  {
    v103 = cnprint::CNPrinter::GetLogLevel(LogLevel);
    if (v103 > 1)
    {
      goto LABEL_126;
    }

    *v223 = 12;
    __p[0] = 1;
    v109 = "ConvertProtobufVIOInertialCovariance, VIO Inertial State Var-Covariance not present.";
    goto LABEL_125;
  }

  v93 = *(this + 5);
  if (!v93)
  {
    CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionEvent_2eproto(LogLevel);
    v93 = *(CoreNavigation::CLP::LogEntry::Vision::VIOEstimation::default_instance_ + 40);
  }

  v94 = *(v93 + 8);
  v95 = *(v93 + 16);
  v96 = *(v93 + 24);
  v97 = *(v93 + 56);
  v98 = *(v93 + 40);
  v99 = *(v93 + 32);
  v100 = *(v93 + 48);
  v101 = v97 + v96 + v98 + v99 + v100;
  if (v94 != 8 * v95 || v95 != v101 * v101)
  {
    v103 = cnprint::CNPrinter::GetLogLevel(LogLevel);
    if (v103 > 1)
    {
      goto LABEL_126;
    }

    *v223 = 12;
    __p[0] = 1;
    v109 = "ConvertProtobufVIOInertialCovariance, VIO Inertial State Covariance Info Integrity failed.";
    goto LABEL_125;
  }

  if (v94 > 0x708 || !v95 || v97 != 3 || v96 != 3)
  {
    goto LABEL_123;
  }

  v115 = *(this + 6);
  v116 = *(v115 + 23);
  if (v116 < 0)
  {
    v116 = v115[1];
  }

  if (v116 != v94)
  {
LABEL_123:
    v103 = cnprint::CNPrinter::GetLogLevel(LogLevel);
    if (v103 > 1)
    {
      goto LABEL_126;
    }

    *v223 = 12;
    __p[0] = 1;
    v109 = "ConvertProtobufVIOInertialCovariance, VIO Inertial State Covariance Info sensibility checks failed.";
LABEL_125:
    cnprint::CNPrinter::Print(v223, __p, v109, v104, v105, v106, v107, v108, SLOBYTE(v168));
LABEL_126:
    if (cnprint::CNPrinter::GetLogLevel(v103) <= 1)
    {
      *v223 = 12;
      __p[0] = 1;
      v151 = (*(*a2 + 16))(a2);
      v173 = v152 + v151;
      cnprint::CNPrinter::Print(v223, __p, "ConvertProtobufVIOEstimateEvent, t, %.3lf, Parsing Error in VIO Inertial State Var-Cov", v153, v154, v155, v156, v157, SLOBYTE(v173));
    }

    return 0;
  }

  v175 = *(v93 + 52);
  v176 = *(v93 + 20);
  sub_1D0DEA260(__p, v95);
  v117 = *(v115 + 23);
  if ((v117 & 0x8000000000000000) != 0)
  {
    v118 = v115;
    v115 = *v115;
    v117 = v118[1];
  }

  if (v117)
  {
    memmove(*__p, v115, v117);
  }

  v224 = 0x300000003;
  *&v223[8] = xmmword_1D0E76C10;
  *v223 = &unk_1F4CD5DD0;
  v225 = v226;
  if (v176 <= 0xFFFFFFFC)
  {
    v119 = 0;
    v120 = *__p;
    v121 = v176 + v176 * (v98 + v99 + 6 + v100);
    v122 = v223;
    do
    {
      v123 = 40;
      v124 = v121;
      do
      {
        *&v122[v123] = *(v120 + 8 * v124++);
        v123 += 24;
      }

      while (v123 != 112);
      ++v119;
      v121 += v101;
      v122 += 8;
    }

    while (v119 != 3);
  }

  v125 = cntransformation::CNRigidTransformation::SetPrr(a2 + 304, v223);
  if ((v125 & 1) == 0)
  {
    if (cnprint::CNPrinter::GetLogLevel(v125) <= 1)
    {
      LOWORD(v209) = 12;
      LOBYTE(v203[0]) = 1;
      cnprint::CNPrinter::Print(&v209, v203, "ConvertProtobufVIOInertialCovariance, Cannot set/store the Orientation Covariance", v158, v159, v160, v161, v162, SLOBYTE(v168));
    }

    goto LABEL_132;
  }

  if (v175 <= 0xFFFFFFFC)
  {
    v126 = 0;
    v127 = *__p;
    v128 = v225;
    v129 = 8 * *&v223[20];
    v130 = v175 + v175 * (v98 + 6 + v99 + v100);
    do
    {
      v131 = v130;
      v132 = v128;
      v133 = 3;
      do
      {
        *v132 = *(v127 + 8 * v131);
        v132 = (v132 + v129);
        ++v131;
        --v133;
      }

      while (v133);
      ++v126;
      ++v128;
      v130 += v101;
    }

    while (v126 != 3);
  }

  v134 = cntransformation::CNRigidTransformation::SetPpp(a2 + 304, v223);
  if (!v134)
  {
    if (cnprint::CNPrinter::GetLogLevel(v134) <= 1)
    {
      LOWORD(v209) = 12;
      LOBYTE(v203[0]) = 1;
      cnprint::CNPrinter::Print(&v209, v203, "ConvertProtobufVIOInertialCovariance, Cannot set/store the IMU Position Covariance", v163, v164, v165, v166, v167, SLOBYTE(v168));
    }

LABEL_132:
    v143 = 0;
    goto LABEL_133;
  }

  if (v176 <= 0xFFFFFFFC)
  {
    v135 = 0;
    v136 = *__p;
    v137 = v225;
    v138 = 8 * *&v223[20];
    v139 = v175 + v176 * v101;
    do
    {
      if (v175 <= 0xFFFFFFFC)
      {
        v140 = v139;
        v141 = v137;
        v142 = 3;
        do
        {
          *v141 = -*(v136 + 8 * v140);
          v141 = (v141 + v138);
          ++v140;
          --v142;
        }

        while (v142);
      }

      ++v135;
      ++v137;
      v139 += v101;
    }

    while (v135 != 3);
  }

  v143 = 1;
  if (*&v223[8] == 3 && *&v223[12] == 3)
  {
    sub_1D0B894B0(a2 + 624, v223);
    *(a2 + 736) = 1;
  }

LABEL_133:
  v103 = *__p;
  if (*__p)
  {
    *&__p[8] = *__p;
    operator delete(*__p);
  }

  if ((v143 & 1) == 0)
  {
    goto LABEL_126;
  }

  *(a2 + 1185) = sub_1D0DE79EC(*(this + 7), *(this + 22), a2 + 104);
  result = 1;
  *(a2 + 1184) = 1;
  return result;
}

void sub_1D0DE7994(_Unwind_Exception *a1)
{
  v2 = STACK[0x2D0];
  if (STACK[0x2D0])
  {
    STACK[0x2D8] = v2;
    operator delete(v2);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1D0DE79EC(uint64_t a1, char a2, uint64_t a3)
{
  if ((a2 & 0x80) == 0)
  {
    return 1;
  }

  v5 = a1;
  if (!a1)
  {
    CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionEvent_2eproto(0);
    v5 = *(CoreNavigation::CLP::LogEntry::Vision::VIOEstimation::default_instance_ + 56);
  }

  if (*(v5 + 16) == 4)
  {
    v6 = 0;
    v98 = 0x400000004;
    v97 = xmmword_1D0E7DCD0;
    v96 = &unk_1F4CDEB70;
    v99 = &v100;
    while (1)
    {
      if (v6 >= *(v5 + 16))
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(&v80);
      }

      v7 = *(*(v5 + 8) + 8 * v6);
      if (*(v7 + 16) != 4)
      {
        break;
      }

      v8 = *(v7 + 8);
      v9 = &v99[HIDWORD(v97) * v6];
      *v9 = vcvtq_f64_f32(*v8);
      v9[1] = vcvtq_f64_f32(v8[1]);
      if (++v6 == 4)
      {
        v84[0] = 0x100000000;
        v92 = 0x100000003;
        v90 = &unk_1F4CDEAA0;
        v93 = &v94;
        v91 = xmmword_1D0E7DCC0;
        v95 = 2;
        v94 = 0x100000000;
        sub_1D0BADC74(&v80, &v96, &v90, &v90);
        sub_1D0BE0DE8(v85, &v80);
        v10 = v87;
        v11 = v86;
        v51 = 0x300000003;
        v46 = &unk_1F4CD5DD0;
        v52 = v53;
        v47 = v87;
        v48 = v86;
        v49 = v86 * v87;
        v50 = v87;
        if (v87)
        {
          v12 = 0;
          v13 = 0;
          v14 = v88;
          v15 = v89;
          do
          {
            v16 = v12;
            v17 = v13;
            for (i = v11; i; --i)
            {
              v53[v17] = *(v15 + 8 * v16);
              v17 += v10;
              ++v16;
            }

            ++v13;
            v12 += v14;
          }

          while (v13 != v10);
        }

        v56 = 0x300000003;
        v55 = xmmword_1D0E76C10;
        v54 = &unk_1F4CD5DD0;
        v57 = &v58;
        sub_1D0B89390(&v46, v85, &v54);
        v37 = 0x300000003;
        v35 = &unk_1F4CD5DD0;
        v36 = xmmword_1D0E76C10;
        v40 = 0u;
        v41 = 0;
        v43 = 0u;
        v38 = &v39;
        v39 = 0x3FF0000000000000;
        v42 = 0x3FF0000000000000;
        v44 = 0;
        v45 = 0x3FF0000000000000;
        v61 = 0x300000003;
        v60 = xmmword_1D0E76C10;
        v59 = &unk_1F4CD5DD0;
        v62 = &v63;
        sub_1D0BA5A78(&v54, &v35, &v59);
        v67 = 0x300000003;
        v64[0] = &unk_1F4CD5DD0;
        v19 = (DWORD1(v60) * v60);
        v20 = v69;
        v68 = v69;
        v64[1] = v60;
        v65 = v19;
        v66 = v60;
        if (v19 >= 1)
        {
          v21 = v62;
          do
          {
            v22 = *v21++;
            *v20++ = fabs(v22);
            --v19;
          }

          while (v19);
        }

        v72 = 0x300000003;
        v71 = xmmword_1D0E76C10;
        v70 = &unk_1F4CD5DD0;
        v73 = &v74;
        v82 = 0x300000003;
        v81 = xmmword_1D0E76C10;
        v80 = &unk_1F4CDEA18;
        v83 = v84;
        sub_1D0BBAD9C(v64, &v70, &v80);
        v77 = 0x300000003;
        v76 = xmmword_1D0E76C10;
        v75 = &unk_1F4CD5DD0;
        v78 = &v79;
        v82 = 0x300000003;
        v81 = xmmword_1D0E76C10;
        v80 = &unk_1F4CDEA18;
        v83 = v84;
        sub_1D0BBAD9C(&v70, &v75, &v80);
        if (fabs(*v78) > 0.00001)
        {
          goto LABEL_21;
        }

        v103 = 0x100000003;
        v102 = xmmword_1D0E7DCC0;
        v101 = &unk_1F4CDEAA0;
        v104 = &v105;
        v82 = 0x300000003;
        v81 = xmmword_1D0E76C10;
        v80 = &unk_1F4CD5DD0;
        v83 = v84;
        if (fabs(sub_1D0BEC1D8(v85, &v101, &v80) + -1.0) <= 0.00001)
        {
          v29 = cntransformation::CNRigidTransformation::SetTransformationMatrix(a3 + 640, &v96);
          if (v29)
          {
            return 1;
          }

          if (cnprint::CNPrinter::GetLogLevel(v29) <= 1)
          {
            LOWORD(v80) = 12;
            LOBYTE(v75) = 1;
            cnprint::CNPrinter::Print(&v80, &v75, "ConvertProtobufVIOCameraPose, Cannot set/store the vio2camARKit Transformation Matrix.", v30, v31, v32, v33, v34, 3);
          }
        }

        else
        {
LABEL_21:
          if (cnprint::CNPrinter::GetLogLevel(v23) <= 1)
          {
            LOWORD(v80) = 12;
            LOBYTE(v75) = 1;
            cnprint::CNPrinter::Print(&v80, &v75, "ConvertProtobufVIOCameraPose, NOTE: ARKit camera pose rotation matrix failed the orthogonality check.", v24, v25, v26, v27, v28, 3);
          }
        }

        return 0;
      }
    }
  }

  return 0;
}

uint64_t raven::ConvertProtobufToVLLocalizationEvent(raven *this, const CoreNavigation::CLP::LogEntry::Vision::VLLocalizationResult *a2, const CoreNavigation::CLP::LogEntry::LogEntry_TimeStamp *a3, raven::VLLocalizationEvent *a4, int8x16_t a5, int8x16_t a6)
{
  if ((*(a2 + 44) & 4) != 0)
  {
    a5.i64[0] = *(a2 + 3);
    *&v179[8] = 0;
    *v179 = 0;
    CNTimeSpan::SetTimeSpan(v179, 0, a5, a6);
    v16.i64[1] = *&v179[8];
    *(a3 + 8) = *v179;
    if ((*(this + 56) & 1) == 0)
    {
      if (cnprint::CNPrinter::GetLogLevel(v14) <= 1)
      {
        *v179 = 12;
        LOBYTE(v169) = 1;
        v17 = (*(*a3 + 16))(a3);
        v115 = v18 + v17;
        cnprint::CNPrinter::Print(v179, &v169, "ConvertProtobufToVLLocalizationEvent, t, %.3lf, VL Validity mach continuous time not present", v19, v20, v21, v22, v23, SLOBYTE(v115));
      }

      return 0;
    }

    v24 = *(this + 1);
    if (!v24)
    {
      CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionEvent_2eproto(v14);
      v24 = *(CoreNavigation::CLP::LogEntry::Vision::VLLocalizationResult::default_instance_ + 8);
    }

    v16.i64[0] = *(v24 + 24);
    *&v179[8] = 0;
    *v179 = 0;
    CNTimeSpan::SetTimeSpan(v179, 0, v16, v15);
    *(a3 + 104) = *v179;
    v26 = *(this + 14);
    if ((v26 & 0x10) == 0 || ((v27 = *(this + 12), v27 >= 0.0) ? (v28 = v27 > 1.0) : (v28 = 1), v28))
    {
      if (cnprint::CNPrinter::GetLogLevel(LogLevel) <= 1)
      {
        *v179 = 12;
        LOBYTE(v169) = 1;
        v29 = (*(*a3 + 16))(a3);
        v116 = v30 + v29;
        cnprint::CNPrinter::Print(v179, &v169, "ConvertProtobufToVLLocalizationEvent, t, %.3lf, VL Estimation Confidence not present or wrong", v31, v32, v33, v34, v35, SLOBYTE(v116));
      }

      return 0;
    }

    *(a3 + 136) = v27;
    if ((v26 & 4) != 0)
    {
      v36 = *(this + 3);
      if (!v36)
      {
        CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionEvent_2eproto(LogLevel);
        v36 = *(CoreNavigation::CLP::LogEntry::Vision::VLLocalizationResult::default_instance_ + 24);
      }

      if (*(v36 + 16) == 4)
      {
        v37 = 0;
        v171 = 0x400000004;
        v170 = xmmword_1D0E7DCD0;
        v169 = &unk_1F4CDEB70;
        v172 = &v173;
        while (1)
        {
          if (v37 >= *(v36 + 16))
          {
            wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
            wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
            wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
            wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v179);
          }

          v38 = *(*(v36 + 8) + 8 * v37);
          if (*(v38 + 16) != 4)
          {
            break;
          }

          v39 = *(v38 + 8);
          v40 = &v172[HIDWORD(v170) * v37];
          *v40 = *v39;
          v40[1] = v39[1];
          v40[2] = v39[2];
          v40[3] = v39[3];
          if (++v37 == 4)
          {
            v182[0] = 0x100000000;
            v165 = 0x100000003;
            v163 = &unk_1F4CDEAA0;
            v166 = &v167;
            v164 = xmmword_1D0E7DCC0;
            v168 = 2;
            v167 = 0x100000000;
            sub_1D0BADC74(v179, &v169, &v163, &v163);
            sub_1D0BE0DE8(v124, v179);
            v42 = v125;
            v41 = v126;
            *(&v139 + 1) = 0x300000003;
            *&v138 = &unk_1F4CD5DD0;
            v140 = v141;
            *(&v138 + 1) = __PAIR64__(v125, v126);
            LODWORD(v139) = v125 * v126;
            DWORD1(v139) = v126;
            if (v126)
            {
              v43 = 0;
              v44 = 0;
              v45 = v127;
              v46 = v128;
              do
              {
                v47 = v43;
                v48 = v44;
                for (i = v42; i; --i)
                {
                  v141[v48] = v46[v47];
                  v48 += v41;
                  ++v47;
                }

                ++v44;
                v43 += v45;
              }

              while (v44 != v41);
            }

            v144 = 0x300000003;
            v143 = xmmword_1D0E76C10;
            v142 = &unk_1F4CD5DD0;
            v145 = &v146;
            sub_1D0B89390(&v138, v124, &v142);
            *&v129[24] = 0x300000003;
            *v129 = &unk_1F4CD5DD0;
            *&v129[8] = xmmword_1D0E76C10;
            v132 = 0u;
            v133 = 0;
            v135 = 0u;
            v130 = &v131;
            v131 = 0x3FF0000000000000;
            v134 = 0x3FF0000000000000;
            v136 = 0;
            v137 = 0x3FF0000000000000;
            v149 = 0x300000003;
            v148 = xmmword_1D0E76C10;
            v147 = &unk_1F4CD5DD0;
            v150 = &v151;
            sub_1D0BA5A78(&v142, v129, &v147);
            v155 = 0x300000003;
            v152[0] = &unk_1F4CD5DD0;
            v50 = (DWORD1(v148) * v148);
            v51 = v157;
            v156 = v157;
            v152[1] = v148;
            v153 = v50;
            v154 = v148;
            if (v50 >= 1)
            {
              v52 = v150;
              do
              {
                v53 = *v52++;
                *v51++ = fabs(v53);
                --v50;
              }

              while (v50);
            }

            v160 = 0x300000003;
            v159 = xmmword_1D0E76C10;
            v158 = &unk_1F4CD5DD0;
            v161 = v162;
            v180 = 0x300000003;
            *&v179[8] = xmmword_1D0E76C10;
            *v179 = &unk_1F4CDEA18;
            v181 = v182;
            sub_1D0BBAD9C(v152, &v158, v179);
            v121 = 0x300000003;
            v119 = &unk_1F4CD5DD0;
            v120 = xmmword_1D0E76C10;
            v122 = v123;
            v180 = 0x300000003;
            *&v179[8] = xmmword_1D0E76C10;
            *v179 = &unk_1F4CDEA18;
            v181 = v182;
            sub_1D0BBAD9C(&v158, &v119, v179);
            if (fabs(*v122) > 0.00001)
            {
              goto LABEL_36;
            }

            v176 = 0x100000003;
            v175 = xmmword_1D0E7DCC0;
            v174 = &unk_1F4CDEAA0;
            v177 = &v178;
            v180 = 0x300000003;
            *&v179[8] = xmmword_1D0E76C10;
            *v179 = &unk_1F4CD5DD0;
            v181 = v182;
            if (fabs(sub_1D0BEC1D8(v124, &v174, v179) + -1.0) > 0.00001)
            {
LABEL_36:
              LogLevel = cnprint::CNPrinter::GetLogLevel(v54);
              if (LogLevel <= 1)
              {
                *v179 = 12;
                LOBYTE(v119) = 1;
                cnprint::CNPrinter::Print(v179, &v119, "ConvertProtobufToVLLocalizationEvent, NOTE: VL rotation matrix failed the orthogonality check.", v55, v56, v57, v58, v59, SLOBYTE(v114));
              }

              break;
            }

            v121 = 0x100000001;
            v119 = &unk_1F4CDF158;
            *&v63 = 0x100000001;
            *(&v63 + 1) = 0x100000001;
            v120 = v63;
            v122 = v123;
            v123[0] = 3;
            sub_1D0C51DC8(v179, &v169, &v163, &v119);
            sub_1D0BBA094(v152, v179);
            v121 = 0x100000003;
            v119 = &unk_1F4CDEB28;
            v120 = xmmword_1D0E7DCC0;
            v122 = v123;
            v180 = 0x100000134;
            *&v179[8] = xmmword_1D0E7DD20;
            *v179 = &unk_1F4CDEC90;
            v181 = v182;
            v160 = 0x100000003;
            v159 = xmmword_1D0E7DCC0;
            v158 = &unk_1F4CDEB28;
            v161 = v162;
            sub_1D0BFB1AC(v152, &v119, v179, &v158, "2");
            if ((v65 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
            {
              LogLevel = cnprint::CNPrinter::GetLogLevel(v64);
              if (LogLevel <= 1)
              {
                *v179 = 12;
                LOBYTE(v119) = 1;
                cnprint::CNPrinter::Print(v179, &v119, "ConvertProtobufToVLLocalizationEvent, NOTE: VL Position Vector failed the sensibility check.", v66, v67, v68, v69, v70, SLOBYTE(v114));
              }

              break;
            }

            v71 = cntransformation::CNRigidTransformation::SetTransformationMatrix(a3 + 200, &v169);
            if ((v71 & 1) == 0)
            {
              LogLevel = cnprint::CNPrinter::GetLogLevel(v71);
              if (LogLevel <= 1)
              {
                *v179 = 12;
                LOBYTE(v119) = 1;
                cnprint::CNPrinter::Print(v179, &v119, "ConvertProtobufToVLLocalizationEvent, Cannot set/store the cam3DV2ecef Transformation Matrix.", v89, v90, v91, v92, v93, SLOBYTE(v114));
              }

              break;
            }

            v72 = sub_1D0DE8D2C(*(this + 4), *(this + 14), a3);
            if (v72)
            {
              sub_1D0DE8F50(a3 + 640, a3 + 200);
              sub_1D0BFA9C4(3, 3, &v158);
              v73 = SHIDWORD(v159);
              v74 = v161;
              *&v161[16 * SHIDWORD(v159)] = 0xBFF0000000000000;
              *&v74[8 * v73 + 8] = 0xBFF0000000000000;
              *(v74 + 2) = 0xBFF0000000000000;
              sub_1D0D260A4(&v142, &v158);
              v138 = 0u;
              v139 = 0u;
              if (&v138 != (a3 + 640))
              {
                v75 = *(a3 + 41);
                v138 = *(a3 + 40);
                v139 = v75;
              }

              cnrotation::Cat(&v138, &v142, v129);
              if (a3 + 640 != v129)
              {
                v76 = *&v129[16];
                *(a3 + 40) = *v129;
                *(a3 + 41) = v76;
              }

              cnrotation::CNRotation::drdq(v129, v124);
              cnrotation::CNRotation::dqaqdqa(&v142, v179);
              sub_1D0D54D0C(v124, v179, &v169);
              cnrotation::CNRotation::dqdr(&v138, &v119);
              sub_1D0D54C8C(&v169, &v119, v152);
              sub_1D0BE0DE8(v179, a3 + 736);
              sub_1D0BE0DE8(&v169, a3 + 960);
              sub_1D0C1B688(v152, v179, &v119);
              sub_1D0C1B708(v152, &v147);
              sub_1D0C1B688(&v119, &v147, v124);
              cntransformation::CNRigidTransformation::SetPrr(a3 + 640, v124);
              sub_1D0C1B688(v152, &v169, v124);
              if (v125 == 3 && v126 == 3)
              {
                sub_1D0B894B0(a3 + 960, v124);
                *(a3 + 1072) = 1;
              }

              *(a3 + 1080) = 1;
              sub_1D0BE0DE8(v124, a3 + 848);
              sub_1D0BFA800(a3 + 672);
              v80 = (*v128 < 0 || ((*v128 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE) && (*v128 - 1) > 0xFFFFFFFFFFFFELL;
              v88 = !v80 && ((v81 = v128[v127 + 1], v81 >= 0) ? (v82 = ((v81 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE) : (v82 = 1), v82 ? (v83 = (v81 - 1) > 0xFFFFFFFFFFFFELL) : (v83 = 0), !v83 && ((v84 = v128[2 * v127 + 2], v84 >= 0) ? (v85 = ((v84 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE) : (v85 = 1), v85 ? (v86 = (v84 - 1) > 0xFFFFFFFFFFFFELL) : (v86 = 0), !v86)) && v78 > 3185504.5 && (*&v78 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
              if (!cnprint::CNPrinter::GetLogLevel(v77))
              {
                LOWORD(v174) = 12;
                LOBYTE(v163) = 0;
                v101 = (*(*a3 + 16))(a3);
                v103 = v102;
                v104 = *(a3 + 14);
                v119 = *(a3 + 13);
                *&v120 = v104;
                v105 = (*(*a3 + 16))(a3);
                *v106.i64 = v103;
                *v107.i64 = v101;
                v147 = v105;
                *&v148 = v108;
                CNTimeSpan::operator-(&v119, &v147, v106, v107);
                v118 = v103 + v101;
                cnprint::CNPrinter::Print(&v174, &v163, "valid VLF data, t, %.3lf, applicability time,  %.3lf [dt %.3lf]", v109, v110, v111, v112, v113, SLOBYTE(v118));
              }

              return v88 & *(a3 + 1080);
            }

            if (cnprint::CNPrinter::GetLogLevel(v72) <= 1)
            {
              *v179 = 12;
              LOBYTE(v169) = 1;
              v94 = (*(*a3 + 16))(a3);
              v117 = v95 + v94;
              cnprint::CNPrinter::Print(v179, &v169, "ConvertProtobufToVLLocalizationEvent, t, %.3lf, Error in parsing the VL 6x6 Covariance Matrix", v96, v97, v98, v99, v100, SLOBYTE(v117));
            }

            return 0;
          }
        }
      }
    }

    if (cnprint::CNPrinter::GetLogLevel(LogLevel) <= 1)
    {
      *v179 = 12;
      LOBYTE(v169) = 1;
      v60 = (*(*a3 + 16))(a3);
      v114 = v61 + v60;
      v11 = "ConvertProtobufToVLLocalizationEvent, t, %.3lf, Error in parsing the VL 4x4 Transformation Matrix";
      goto LABEL_40;
    }
  }

  else if (cnprint::CNPrinter::GetLogLevel(this) <= 1)
  {
    *v179 = 12;
    LOBYTE(v169) = 1;
    v11 = "ConvertProtobufToVLLocalizationEvent, Event mach continuous time not present";
LABEL_40:
    cnprint::CNPrinter::Print(v179, &v169, v11, v6, v7, v8, v9, v10, SLOBYTE(v114));
  }

  return 0;
}

uint64_t sub_1D0DE8D2C(uint64_t a1, char a2, uint64_t a3)
{
  if ((a2 & 8) != 0)
  {
    v4 = a1;
    if (!a1)
    {
      CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionEvent_2eproto(0);
      v4 = *(CoreNavigation::CLP::LogEntry::Vision::VLLocalizationResult::default_instance_ + 32);
    }

    if (*(v4 + 16) == 6)
    {
      v5 = 0;
      v18 = 0x600000006;
      v16 = &unk_1F4CDF278;
      v17 = xmmword_1D0E7F320;
      v19 = &v20;
      while (1)
      {
        if (v5 >= *(v4 + 16))
        {
          wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
          wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
          wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
          wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v22);
        }

        v6 = *(*(v4 + 8) + 8 * v5);
        if (*(v6 + 16) != 6)
        {
          break;
        }

        for (i = 0; i != 6; ++i)
        {
          if (i >= *(v6 + 16))
          {
            wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
            wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
            wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
            wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v22);
          }

          if (i < 3)
          {
            v8 = 3;
          }

          else
          {
            v8 = -3;
          }

          *&v19[((v5 + 3) % 6u + HIDWORD(v17) * (i + v8))] = *(*(v6 + 8) + 4 * i);
        }

        if (++v5 == 6)
        {
          v9 = cntransformation::CNRigidTransformation::SetCovarianceMatrix(a3 + 200, &v16);
          if (v9)
          {
            return 1;
          }

          if (cnprint::CNPrinter::GetLogLevel(v9) <= 1)
          {
            v22[0] = 12;
            v21 = 1;
            cnprint::CNPrinter::Print(v22, &v21, "ConvertProtobufToVLLocalizationEvent, Cannot set/store the cam3DV2ecef Transformation Matrix Covariance", v11, v12, v13, v14, v15, a3);
          }

          return 0;
        }
      }
    }
  }

  return 0;
}

uint64_t sub_1D0DE8F50(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
  }

  sub_1D0B894B0(a1 + 32, a2 + 32);
  sub_1D0B894B0(a1 + 96, a2 + 96);
  sub_1D0B894B0(a1 + 208, a2 + 208);
  sub_1D0B894B0(a1 + 320, a2 + 320);
  *(a1 + 432) = *(a2 + 432);
  return a1;
}

BOOL raven::ConvertProtobufToRavenGnssAssistanceFileEvent(raven *this, const CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::AssistanceFileContents *a2, const CoreNavigation::CLP::LogEntry::LogEntry_TimeStamp *a3, raven::RavenGnssAssistanceFileEvent *a4)
{
  v4 = MEMORY[0x1EEE9AC00](this, a2, a3, a4);
  if ((*(v5 + 44) & 4) == 0)
  {
    if (cnprint::CNPrinter::GetLogLevel(v4) <= 1)
    {
      LOWORD(__src[0]) = 12;
      LOBYTE(v72) = 1;
      v14 = "#rof,ConvertProtobufToRavenGnssAssistanceFileEvent,mach continuous time not present";
LABEL_7:
      cnprint::CNPrinter::Print(__src, &v72, v14, v9, v10, v11, v12, v13, v60);
      return 0;
    }

    return 0;
  }

  v15 = v6;
  v16 = v4;
  v7.i64[0] = *(v5 + 24);
  *__src = 0uLL;
  CNTimeSpan::SetTimeSpan(__src, 0, v7, v8);
  *&v19.i64[1] = __src[1];
  *(v15 + 8) = *__src;
  if ((*(v16 + 76) & 1) == 0)
  {
    if (cnprint::CNPrinter::GetLogLevel(v17) <= 1)
    {
      LOWORD(__src[0]) = 12;
      LOBYTE(v72) = 1;
      v14 = "#rof,ConvertProtobufToRavenGnssAssistanceFileEvent,file creation time not present";
      goto LABEL_7;
    }

    return 0;
  }

  v20 = *(v16 + 1);
  if (v20)
  {
    v21 = *(v20 + 8);
  }

  else
  {
    CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::protobuf_AddDesc_CoreNavigationCLPRavenGnssAssistanceFile_2eproto(v17);
    v20 = *(v16 + 1);
    v21 = *(*(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::AssistanceFileContents::default_instance_ + 8) + 8);
    if (!v20)
    {
      CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::protobuf_AddDesc_CoreNavigationCLPRavenGnssAssistanceFile_2eproto(v22);
      v20 = *(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::AssistanceFileContents::default_instance_ + 8);
    }
  }

  *v19.i64 = *(v20 + 12) + -561548.816;
  *__src = 0uLL;
  CNTimeSpan::SetTimeSpan(__src, 604800 * (v21 - 1042), v19, v18);
  *v25.i64 = __src[1] + *&__src[0];
  if (COERCE__INT64(fabs(*v25.i64)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  *(v15 + 104) = *__src;
  if ((*(v16 + 76) & 2) == 0)
  {
    if (cnprint::CNPrinter::GetLogLevel(v23) > 1)
    {
      return 0;
    }

    LOWORD(__src[0]) = 12;
    LOBYTE(v72) = 1;
    v14 = "#rof,ConvertProtobufToRavenGnssAssistanceFileEvent,ionosphere corrections not present";
    goto LABEL_7;
  }

  v28 = *(v16 + 2);
  if (!v28)
  {
    CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::protobuf_AddDesc_CoreNavigationCLPRavenGnssAssistanceFile_2eproto(v23);
    v28 = *(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::AssistanceFileContents::default_instance_ + 16);
  }

  if ((*(v28 + 52) & 1) == 0)
  {
    return 0;
  }

  v29 = *(v28 + 8);
  if (v29)
  {
    v30 = *(v29 + 8);
  }

  else
  {
    CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::protobuf_AddDesc_CoreNavigationCLPRavenGnssAssistanceFile_2eproto(v23);
    v29 = *(v28 + 8);
    v30 = *(*(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::IonosphereCorrections::default_instance_ + 8) + 8);
    if (!v29)
    {
      CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::protobuf_AddDesc_CoreNavigationCLPRavenGnssAssistanceFile_2eproto(v31);
      v29 = *(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::IonosphereCorrections::default_instance_ + 8);
    }
  }

  *v24.i64 = *(v29 + 12) + -561548.816;
  *__src = 0uLL;
  CNTimeSpan::SetTimeSpan(__src, 604800 * (v30 - 1042), v24, v25);
  v75 = *__src;
  if (COERCE__INT64(fabs(__src[1] + *&__src[0])) > 0x7FEFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v32 = *(v28 + 24);
  if (!v32)
  {
    return 1;
  }

  v33 = *(v28 + 16);
  v61 = &v33[v32];
  v34 = 0x7F01FC07F01FCLL;
  do
  {
    v35 = *v33;
    v26 = (*(*v33 + 64) & 0xF) == 15;
    if ((*(*v33 + 64) & 0xF) != 0xF)
    {
      break;
    }

    v62 = v33;
    v36 = v34;
    v37 = *(v35 + 16);
    v38 = *(v35 + 20);
    v39 = *(v35 + 12);
    v63 = *(v35 + 8);
    v72 = 0;
    v73 = 0;
    v74 = 0;
    sub_1D0C4E048(&v72, *(v35 + 32));
    v40 = *(v35 + 32);
    if (v40)
    {
      v41 = *(v35 + 24);
      v42 = 4 * v40;
      do
      {
        __src[0] = *v41;
        sub_1D0C4E0E8(&v72, __src);
        ++v41;
        v42 -= 4;
      }

      while (v42);
    }

    v69 = 0;
    v70 = 0;
    v71 = 0;
    sub_1D0C4E048(&v69, *(v35 + 48));
    v43 = *(v35 + 48);
    if (v43)
    {
      v44 = *(v35 + 40);
      v45 = 4 * v43;
      do
      {
        __src[0] = *v44;
        sub_1D0C4E0E8(&v69, __src);
        ++v44;
        v45 -= 4;
      }

      while (v45);
    }

    __src[0] = 0.0;
    sub_1D0DEA2D8(&v67, (v73 - v72) >> 3);
    __src[0] = 0.0;
    sub_1D0DEA2D8(&v65, v70 - v69);
    v34 = v36;
    cnnavigation::SphericalHarmonicsIonosphereParameters::SphericalHarmonicsIonosphereParameters(__src, v37, v38);
    if (cnnavigation::SphericalHarmonicsIonosphereParameters::LoadModelParameters(__src, &v75, v63, &v72, &v69, &v67, &v65, v46, v39, 0.0))
    {
      if (v65)
      {
        v66 = v65;
        operator delete(v65);
      }

      if (v67)
      {
        v68 = v67;
        operator delete(v67);
      }

      if (v69)
      {
        v70 = v69;
        operator delete(v69);
      }

      if (v72)
      {
        v73 = v72;
        operator delete(v72);
      }

      return 0;
    }

    v48 = *(v15 + 128);
    v47 = *(v15 + 136);
    if (v48 >= v47)
    {
      v50 = *(v15 + 120);
      v51 = 0x80FE03F80FE03F81 * ((v48 - v50) >> 6);
      v52 = v51 + 1;
      if (v51 + 1 > v36)
      {
        sub_1D0C5663C();
      }

      v53 = 0x80FE03F80FE03F81 * ((v47 - v50) >> 6);
      if (2 * v53 > v52)
      {
        v52 = 2 * v53;
      }

      if (v53 >= 0x3F80FE03F80FELL)
      {
        v54 = v36;
      }

      else
      {
        v54 = v52;
      }

      if (v54)
      {
        sub_1D0DD0FDC(v15 + 120, v54);
      }

      v55 = 8256 * v51;
      memcpy(v55, __src, 0x2040uLL);
      v49 = v55 + 8256;
      v56 = *(v15 + 120);
      v57 = *(v15 + 128) - v56;
      v58 = (v55 - v57);
      memcpy(v58, v56, v57);
      v59 = *(v15 + 120);
      *(v15 + 120) = v58;
      *(v15 + 128) = v49;
      *(v15 + 136) = 0;
      if (v59)
      {
        operator delete(v59);
      }
    }

    else
    {
      memcpy(*(v15 + 128), __src, 0x2040uLL);
      v49 = v48 + 8256;
    }

    *(v15 + 128) = v49;
    if (v65)
    {
      v66 = v65;
      operator delete(v65);
    }

    if (v67)
    {
      v68 = v67;
      operator delete(v67);
    }

    if (v69)
    {
      v70 = v69;
      operator delete(v69);
    }

    if (v72)
    {
      v73 = v72;
      operator delete(v72);
    }

    v33 = v62 + 1;
  }

  while (v62 + 1 != v61);
  return v26;
}

void sub_1D0DE9524(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 224);
  if (v3)
  {
    *(v1 - 216) = v3;
    operator delete(v3);
  }

  v4 = *(v1 - 200);
  if (v4)
  {
    *(v1 - 192) = v4;
    operator delete(v4);
  }

  v5 = *(v1 - 176);
  if (v5)
  {
    *(v1 - 168) = v5;
    operator delete(v5);
  }

  v6 = *(v1 - 152);
  if (v6)
  {
    *(v1 - 144) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

__n128 raven::ConvertReceiverDifferentialCodeBiasesEventToProtobuf(raven *this, const raven::ReceiverDifferentialCodeBiasesEvent *a2, CoreNavigation::CLP::LogEntry::Raven::RavenOutput *a3)
{
  *(a2 + 15) |= 0x20u;
  v5 = *(a2 + 6);
  if (!v5)
  {
    operator new();
  }

  sub_1D0DE9770(this + 280, v5);
  *(a2 + 15) |= 0x10u;
  v6 = *(a2 + 5);
  if (!v6)
  {
    operator new();
  }

  v7 = *(v6 + 8);
  *(v6 + 96) |= 1u;
  if (!v7)
  {
    operator new();
  }

  sub_1D0C075F4(this + 14, v7);
  v8 = *(v6 + 96);
  *(v6 + 88) = *(this + 52);
  *(v6 + 16) = *(this + 13);
  *(v6 + 32) = *(this + 14);
  *(v6 + 48) = *(this + 15);
  *(v6 + 96) = v8 | 0xDFE;
  result = *(this + 264);
  *(v6 + 72) = result;
  return result;
}

void sub_1D0DE9770(uint64_t a1, uint64_t a2)
{
  *(a2 + 168) |= 1u;
  v4 = *(a2 + 8);
  if (!v4)
  {
    operator new();
  }

  sub_1D0C075F4(a1, v4);
  v12 = 0;
  v13 = *(a1 + 96);
  if (v13 == 1)
  {
    v14 = 2;
  }

  else
  {
    v14 = 1;
  }

  if (v13 == 2)
  {
    v15 = 3;
  }

  else
  {
    v15 = v14;
  }

  *(a2 + 56) = v15;
  v16 = *(a2 + 168);
  *(a2 + 16) = *(a1 + 104);
  *(a2 + 24) = *(a1 + 120) + *(a1 + 112);
  *(a2 + 32) = *(a1 + 128);
  *(a2 + 168) = v16 | 0x7E;
  *(a2 + 48) = *(a1 + 144);
  do
  {
    v17 = *(a1 + 152 + 4 * v12);
    if (v17)
    {
      v18 = *(a2 + 76);
      v19 = *(a2 + 72);
      if (v19 >= v18)
      {
        if (v18 == *(a2 + 80))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 64));
          v18 = *(a2 + 76);
        }

        *(a2 + 76) = v18 + 1;
        operator new();
      }

      v20 = *(a2 + 64);
      *(a2 + 72) = v19 + 1;
      v21 = *(v20 + 8 * v19);
      v22 = sub_1D0C07848(v12, v5, v6, v7, v8, v9, v10, v11);
      v23 = *(v21 + 40);
      *(v21 + 32) = v22;
      *(v21 + 40) = v23 | 0xC;
      *(v21 + 24) = v17;
    }

    ++v12;
  }

  while (v12 != 33);
  for (i = 0; i != 33; ++i)
  {
    v25 = *(a1 + 284 + 4 * i);
    if (v25)
    {
      v26 = *(a2 + 100);
      v27 = *(a2 + 96);
      if (v27 >= v26)
      {
        if (v26 == *(a2 + 104))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 88));
          v26 = *(a2 + 100);
        }

        *(a2 + 100) = v26 + 1;
        operator new();
      }

      v28 = *(a2 + 88);
      *(a2 + 96) = v27 + 1;
      v29 = *(v28 + 8 * v27);
      v30 = sub_1D0C07848(i, v5, v6, v7, v8, v9, v10, v11);
      v31 = *(v29 + 40);
      *(v29 + 32) = v30;
      *(v29 + 40) = v31 | 0xC;
      *(v29 + 24) = v25;
    }
  }

  v32 = 0;
  v33 = a1 + 416;
  do
  {
    v34 = *(v33 + 4 * v32);
    if (v34)
    {
      v35 = *(a2 + 124);
      v36 = *(a2 + 120);
      if (v36 >= v35)
      {
        if (v35 == *(a2 + 128))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 112));
          v35 = *(a2 + 124);
        }

        *(a2 + 124) = v35 + 1;
        operator new();
      }

      v37 = *(a2 + 112);
      *(a2 + 120) = v36 + 1;
      v38 = *(v37 + 8 * v36);
      v39 = sub_1D0C07848(v32, v5, v6, v7, v8, v9, v10, v11);
      v40 = *(v38 + 40);
      *(v38 + 32) = v39;
      *(v38 + 40) = v40 | 0xC;
      *(v38 + 24) = v34;
    }

    ++v32;
  }

  while (v32 != 33);
}

__n128 raven::ConvertThinShellIonosphereParametersEventToProtobuf(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 60) |= 0x20u;
  v6 = *(a2 + 48);
  if (!v6)
  {
    operator new();
  }

  sub_1D0DE9770(a1 + 280, v6);
  *(a2 + 60) |= 8u;
  v8 = *(a2 + 32);
  if (!v8)
  {
    operator new();
  }

  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0x7FF8000000000000;
  v27 = 0;
  v9 = *(a1 + 152);
  v26 = v9;
  v25 = 1;
  if (*(a3 + 48) == 1)
  {
    v18[0] = CNTimeSpan::operator-(&v26, (a3 + 56), v9, v7);
    v18[1] = v10;
    v19 = 1;
    if (*(a3 + 24) == 1)
    {
      v23 = CNTimeSpan::operator+((a3 + 32), v18, v11, v12);
      v24 = v13;
      v22 = 1;
    }

    v20 = CNTimeSpan::operator+((a3 + 8), v18, v11, v12);
    v21 = v14;
  }

  *(v8 + 160) |= 1u;
  v15 = *(v8 + 8);
  if (!v15)
  {
    operator new();
  }

  sub_1D0C075F4(&v20, v15);
  v16 = *(v8 + 160);
  *(v8 + 16) = *(a1 + 128);
  *(v8 + 32) = *(a1 + 144);
  *(v8 + 152) = *(a1 + 104);
  *(v8 + 40) = *(a1 + 168);
  *(v8 + 56) = *(a1 + 184);
  *(v8 + 72) = *(a1 + 200);
  *(v8 + 88) = *(a1 + 216);
  *(v8 + 104) = *(a1 + 232);
  *(v8 + 120) = *(a1 + 248);
  *(v8 + 160) = v16 | 0xFFFFE;
  result = *(a1 + 264);
  *(v8 + 136) = result;
  return result;
}

uint64_t raven::ConvertRavenFitnessSessionActivityToProtobuf(_BYTE *a1)
{
  if (*a1 - 1 > 8)
  {
    return 0;
  }

  else
  {
    return dword_1D0E9C964[(*a1 - 1)];
  }
}

uint64_t raven::ConvertRavenMountStateEnumToProtobuf(_BYTE *a1)
{
  if (*a1 - 1 < 3)
  {
    return (*a1 - 1) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t raven::ConvertRavenPositionContextStateEnumToProtobuf(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 == 2)
  {
    return 2;
  }

  else
  {
    return v1 == 1;
  }
}

uint64_t raven::ConvertRavenMovingStateEnumToProtobuf(_BYTE *a1)
{
  if (*a1 - 1 < 3)
  {
    return (*a1 - 1) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t raven::ConvertRavenEstimatorTypeToProtobuf(_BYTE *a1)
{
  if (*a1 - 1 >= 5)
  {
    return 1;
  }

  else
  {
    return (*a1 - 1) + 2;
  }
}

uint64_t raven::ConvertRavenHealthToProtobuf(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 == 1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  if (v1 == 2)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t raven::ConvertRavenIonosphereEstimatorHealthToProtobuf(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 == 1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  if (v1 == 2)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D0DE9E48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a4;
  v10 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  if (a2 == a3)
  {
    v9 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      *(a4 + 24) = 0;
      *(a4 + 32) = 0;
      *(a4 + 16) = 0;
      *(a4 + 16) = *(v6 + 16);
      *(a4 + 32) = *(v6 + 32);
      *(v6 + 16) = 0;
      *(v6 + 24) = 0;
      *(v6 + 32) = 0;
      v6 += 40;
      a4 += 40;
    }

    while (v6 != a3);
    v11 = a4;
    v9 = 1;
    do
    {
      v12 = (v5 + 16);
      sub_1D0DDD018(&v12);
      v5 += 40;
    }

    while (v5 != a3);
  }

  return sub_1D0DDD0C4(v8);
}

uint64_t sub_1D0DE9F0C(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 40;
    v5 = (i - 24);
    sub_1D0DDD018(&v5);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1D0DE9F70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = a4;
  v14 = a4;
  v12[0] = a1;
  v12[1] = &v14;
  v12[2] = &v15;
  if (a2 == a3)
  {
    v13 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      *a4 = *v6;
      *(a4 + 16) = *(v6 + 16);
      *v6 = 0;
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      v7 = *(v6 + 24);
      v8 = *(v6 + 40);
      v9 = *(v6 + 56);
      *(a4 + 72) = *(v6 + 72);
      *(a4 + 56) = v9;
      *(a4 + 40) = v8;
      *(a4 + 24) = v7;
      v6 += 80;
      a4 += 80;
    }

    while (v6 != a3);
    v15 = a4;
    v13 = 1;
    do
    {
      v10 = *v5;
      if (*v5)
      {
        *(v5 + 8) = v10;
        operator delete(v10);
      }

      v5 += 80;
    }

    while (v5 != a3);
  }

  return sub_1D0DDCF90(v12);
}

uint64_t sub_1D0DEA04C(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    v4 = *(v2 - 80);
    *(a1 + 16) = v2 - 80;
    if (v4)
    {
      *(v2 - 72) = v4;
      operator delete(v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 80;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1D0DEA0B0(uint64_t result, _BYTE *a2)
{
  v2 = *(result + 16);
  if ((v2 & 2) != 0)
  {
    a2[1] = *(result + 9);
    if ((v2 & 4) == 0)
    {
LABEL_3:
      if ((v2 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v2 & 4) == 0)
  {
    goto LABEL_3;
  }

  a2[2] = *(result + 10);
  if ((v2 & 1) == 0)
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
  *a2 = *(result + 8);
  if ((v2 & 8) != 0)
  {
    goto LABEL_9;
  }

  return result;
}

void sub_1D0DEA118(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F4CEB2A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1D387ECA0);
}

uint64_t sub_1D0DEA16C(uint64_t a1)
{
  v2 = *(a1 + 224);
  if (v2)
  {
    *(a1 + 232) = v2;
    operator delete(v2);
  }

  if (*(a1 + 48) == 1)
  {
    v3 = *(a1 + 24);
    if (v3)
    {
      *(a1 + 32) = v3;
      operator delete(v3);
    }
  }

  return a1;
}

double sub_1D0DEA1BC(uint64_t a1)
{
  v9 = 0x100000003;
  v7 = &unk_1F4CDEAA0;
  v8 = xmmword_1D0E7DCC0;
  v10 = &v11;
  v4 = 0x300000003;
  v2 = &unk_1F4CD5DD0;
  v3 = xmmword_1D0E76C10;
  v5 = &v6;
  return sub_1D0BEC1D8(a1, &v7, &v2);
}

void *sub_1D0DEA260(void *result, unint64_t a2)
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

void sub_1D0DEA2BC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1D0DEA2D8(void *result, unint64_t a2)
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

void sub_1D0DEA394(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1D0DEA3B0(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t raven::RavenUserGaitTrackerActiveObject::RavenUserGaitTrackerActiveObject(uint64_t a1)
{
  *(a1 + 56) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 64) = 1065353216;
  *(a1 + 72) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 80) = 0;
  *(a1 + 105) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0x7FF8000000000000;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0x7FF8000000000000;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 184) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 152) = 0u;
  *a1 = &unk_1F4CEB3B0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  cnestimation::PeriodicityTracker::PeriodicityTracker((a1 + 240));
  *a1 = &unk_1F4CEB2F8;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 520) = 0u;
  *(a1 + 536) = 0;
  *(a1 + 432) = &unk_1F4CEF688;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 0;
  *(a1 + 464) = 0;
  *(a1 + 472) = 0;
  *(a1 + 480) = 0;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0x7FF8000000000000;
  *(a1 + 544) = 0x3FF0000000000000;
  *(a1 + 728) = 0;
  *(a1 + 696) = 0u;
  *(a1 + 712) = 0u;
  *(a1 + 664) = 0u;
  *(a1 + 680) = 0u;
  *(a1 + 632) = 0u;
  *(a1 + 648) = 0u;
  *(a1 + 600) = 0u;
  *(a1 + 616) = 0u;
  *(a1 + 568) = 0u;
  *(a1 + 584) = 0u;
  *(a1 + 552) = 0u;
  *(a1 + 624) = &unk_1F4CEF778;
  *(a1 + 648) = 0;
  *(a1 + 632) = 0u;
  *(a1 + 672) = 0;
  *(a1 + 656) = 0u;
  *(a1 + 696) = 0;
  *(a1 + 680) = 0u;
  *(a1 + 704) = 0u;
  *(a1 + 720) = 0x7FF8000000000000;
  *(a1 + 736) = 0x3FF0000000000000;
  *(a1 + 824) = 0u;
  *(a1 + 840) = 0u;
  *(a1 + 792) = 0u;
  *(a1 + 808) = 0u;
  *(a1 + 760) = 0u;
  *(a1 + 776) = 0u;
  *(a1 + 744) = 0u;
  *(a1 + 856) = 0x7FF8000000000000;
  *(a1 + 776) = 0x7FF8000000000000;
  *(a1 + 864) = 0;
  *(a1 + 868) = 0;
  *(a1 + 872) = 0;
  *(a1 + 924) = 0;
  *(a1 + 892) = 0u;
  *(a1 + 908) = 0u;
  *(a1 + 876) = 0u;
  return a1;
}

void sub_1D0DEA654(raven::RavenCoarseOdometerActiveObject *a1)
{
  *a1 = &unk_1F4CEB3B0;
  sub_1D0C56E40(a1 + 48);
  sub_1D0C56D94(a1 + 42);

  raven::RavenCoarseOdometerActiveObject::~RavenCoarseOdometerActiveObject(a1);
}

uint64_t raven::RavenUserGaitTrackerActiveObject::Configure(cnprint::CNPrinter *a1, uint64_t *a2)
{
  result = sub_1D0DEA834(a1, a2);
  if (!result)
  {
    v4 = *(a1 + 29);
    v5 = *(v4 + 472);
    if ((v5 <= -1 || ((v5 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (v5 - 1) >= 0xFFFFFFFFFFFFFLL)
    {
      v28 = 12;
      v27 = 4;
      sub_1D0B751F4(__p, "RavenUserGaitTrackerActiveObject");
      if (v26 >= 0)
      {
        v16 = __p;
      }

      else
      {
        LOBYTE(v16) = __p[0];
      }

      v23 = *(*(a1 + 29) + 472);
      cnprint::CNPrinter::Print(&v28, &v27, "%s could not be configured - invalid walk step freq,%.3lf", v11, v12, v13, v14, v15, v16);
    }

    else
    {
      v8 = *(v4 + 480);
      if (v8 > -1 && ((v8 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || (v8 - 1) < 0xFFFFFFFFFFFFFLL)
      {
        return 0;
      }

      v28 = 12;
      v27 = 4;
      sub_1D0B751F4(__p, "RavenUserGaitTrackerActiveObject");
      if (v26 >= 0)
      {
        v22 = __p;
      }

      else
      {
        LOBYTE(v22) = __p[0];
      }

      v24 = *(*(a1 + 29) + 480);
      cnprint::CNPrinter::Print(&v28, &v27, "%s could not be configured - invalid run step freq,%.3lf", v17, v18, v19, v20, v21, v22);
    }

    if (v26 < 0)
    {
      operator delete(__p[0]);
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

void sub_1D0DEA814(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0DEA834(cnprint::CNPrinter *a1, uint64_t *a2)
{
  if (*(a1 + 224) == 1 && cnprint::CNPrinter::GetLogLevel(a1) <= 1)
  {
    LOWORD(v120[0]) = 12;
    LOBYTE(v123) = 1;
    (*(*a1 + 16))(&__p, a1);
    if (v125 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      LOBYTE(p_p) = __p;
    }

    cnprint::CNPrinter::Print(v120, &v123, "Warning: %s configured more than once", v4, v5, v6, v7, v8, p_p);
    if (SHIBYTE(v125) < 0)
    {
      operator delete(__p);
    }
  }

  v10 = *a2;
  if (!*a2 || (*(v10 + 33) & 1) == 0)
  {
    LOWORD(v120[0]) = 12;
    LOBYTE(v123) = 4;
    (*(*a1 + 16))(&__p, a1);
    if (v125 >= 0)
    {
      v44 = &__p;
    }

    else
    {
      LOBYTE(v44) = __p;
    }

    cnprint::CNPrinter::Print(v120, &v123, "%s could not be configured", v39, v40, v41, v42, v43, v44);
    goto LABEL_68;
  }

  *(a1 + 29) = v10;
  v11 = *(v10 + 648);
  if ((*&v11 <= -1 || ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (*&v11 - 1) >= 0xFFFFFFFFFFFFFLL)
  {
    LOWORD(v120[0]) = 12;
    LOBYTE(v123) = 4;
    (*(*a1 + 16))(&__p, a1);
    if (v125 >= 0)
    {
      v52 = &__p;
    }

    else
    {
      LOBYTE(v52) = __p;
    }

    v112 = *(*(a1 + 29) + 648);
    cnprint::CNPrinter::Print(v120, &v123, "%s could not be configured - invalid HW period,%.3lf", v47, v48, v49, v50, v51, v52);
    goto LABEL_68;
  }

  v14 = *(v10 + 384);
  if ((v14 <= -1 || ((v14 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (v14 - 1) >= 0xFFFFFFFFFFFFFLL)
  {
    LOWORD(v120[0]) = 12;
    LOBYTE(v123) = 4;
    (*(*a1 + 16))(&__p, a1);
    if (v125 >= 0)
    {
      v58 = &__p;
    }

    else
    {
      LOBYTE(v58) = __p;
    }

    v113 = *(*(a1 + 29) + 384);
    cnprint::CNPrinter::Print(v120, &v123, "%s could not be configured - invalid window duration,%.3lf", v53, v54, v55, v56, v57, v58);
    goto LABEL_68;
  }

  v17 = *(v10 + 392);
  if ((v17 <= -1 || ((v17 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (v17 - 1) >= 0xFFFFFFFFFFFFFLL)
  {
    LOWORD(v120[0]) = 12;
    LOBYTE(v123) = 4;
    (*(*a1 + 16))(&__p, a1);
    if (v125 >= 0)
    {
      v64 = &__p;
    }

    else
    {
      LOBYTE(v64) = __p;
    }

    v114 = *(*(a1 + 29) + 392);
    cnprint::CNPrinter::Print(v120, &v123, "%s could not be configured - invalid min frequency,%.3lf", v59, v60, v61, v62, v63, v64);
    goto LABEL_68;
  }

  v20 = *(v10 + 400);
  if ((v20 <= -1 || ((v20 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (v20 - 1) >= 0xFFFFFFFFFFFFFLL)
  {
    LOWORD(v120[0]) = 12;
    LOBYTE(v123) = 4;
    (*(*a1 + 16))(&__p, a1);
    if (v125 >= 0)
    {
      v70 = &__p;
    }

    else
    {
      LOBYTE(v70) = __p;
    }

    v115 = *(*(a1 + 29) + 400);
    cnprint::CNPrinter::Print(v120, &v123, "%s could not be configured - invalid max frequency,%.3lf", v65, v66, v67, v68, v69, v70);
    goto LABEL_68;
  }

  v23 = *(v10 + 408);
  if ((*&v23 <= -1 || ((*&v23 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (*&v23 - 1) >= 0xFFFFFFFFFFFFFLL)
  {
    LOWORD(v120[0]) = 12;
    LOBYTE(v123) = 4;
    (*(*a1 + 16))(&__p, a1);
    if (v125 >= 0)
    {
      v76 = &__p;
    }

    else
    {
      LOBYTE(v76) = __p;
    }

    v116 = *(*(a1 + 29) + 408);
    cnprint::CNPrinter::Print(v120, &v123, "%s could not be configured - invalid probability of false positive window,%.3lf", v71, v72, v73, v74, v75, v76);
    goto LABEL_68;
  }

  v26 = *(v10 + 704);
  if ((*&v26 <= -1 || ((*&v26 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (*&v26 - 1) >= 0xFFFFFFFFFFFFFLL)
  {
    LOWORD(v120[0]) = 12;
    LOBYTE(v123) = 4;
    (*(*a1 + 16))(&__p, a1);
    if (v125 >= 0)
    {
      v82 = &__p;
    }

    else
    {
      LOBYTE(v82) = __p;
    }

    v117 = *(*(a1 + 29) + 704);
    cnprint::CNPrinter::Print(v120, &v123, "%s could not be configured - invalid accelerometer noise,%.3lf", v77, v78, v79, v80, v81, v82);
    goto LABEL_68;
  }

  v29 = *(v10 + 736);
  if ((*&v29 <= -1 || ((*&v29 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (*&v29 - 1) >= 0xFFFFFFFFFFFFFLL)
  {
    LOWORD(v120[0]) = 12;
    LOBYTE(v123) = 4;
    (*(*a1 + 16))(&__p, a1);
    if (v125 >= 0)
    {
      v88 = &__p;
    }

    else
    {
      LOBYTE(v88) = __p;
    }

    v118 = *(*(a1 + 29) + 736);
    cnprint::CNPrinter::Print(v120, &v123, "%s could not be configured - invalid accelerometer bias sigma,%.3lf", v83, v84, v85, v86, v87, v88);
    goto LABEL_68;
  }

  v32 = *(v10 + 416);
  if ((*&v32 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || v32 < 0.0 || v32 > 1.0)
  {
    LOWORD(v120[0]) = 12;
    LOBYTE(v123) = 4;
    (*(*a1 + 16))(&__p, a1);
    if (v125 >= 0)
    {
      v38 = &__p;
    }

    else
    {
      LOBYTE(v38) = __p;
    }

    v111 = *(*(a1 + 29) + 416);
    cnprint::CNPrinter::Print(v120, &v123, "%s could not be configured - invalid probability of false positive,%.3lf", v33, v34, v35, v36, v37, v38);
    goto LABEL_68;
  }

  v89 = *(v10 + 424);
  if (!v89)
  {
    LOWORD(v120[0]) = 12;
    LOBYTE(v123) = 4;
    (*(*a1 + 16))(&__p, a1);
    if (v125 >= 0)
    {
      v103 = &__p;
    }

    else
    {
      LOBYTE(v103) = __p;
    }

    v119 = *(*(a1 + 29) + 424);
    cnprint::CNPrinter::Print(v120, &v123, "%s could not be configured - invalid periodicity feature,%d", v98, v99, v100, v101, v102, v103);
LABEL_68:
    if ((SHIBYTE(v125) & 0x80000000) == 0)
    {
      return 0xFFFFFFFFLL;
    }

    v45 = __p;
LABEL_70:
    operator delete(v45);
    return 0xFFFFFFFFLL;
  }

  *&__p = *(v10 + 648);
  *(&__p + 1) = v14;
  v125 = v17;
  v126 = v20;
  v90 = fmax(ceil(v23 / v11), 1.0);
  v91 = log(1.0 - v32);
  v127 = 1.0 - exp(v91 / v90);
  v128 = sqrt(v29 * v29 + v26 * v26);
  v129 = v89;
  if (cnestimation::PeriodicityTracker::Configure(a1 + 240, &__p))
  {
    v123 = 12;
    v122 = 4;
    (*(*a1 + 16))(v120, a1);
    if (v121 >= 0)
    {
      v97 = v120;
    }

    else
    {
      LOBYTE(v97) = v120[0];
    }

    cnprint::CNPrinter::Print(&v123, &v122, "Error: %s could not be configured", v92, v93, v94, v95, v96, v97);
    if ((v121 & 0x80000000) == 0)
    {
      return 0xFFFFFFFFLL;
    }

    v45 = v120[0];
    goto LABEL_70;
  }

  cnframework::ActiveObjectBase::SetEventQueueDelay(a1, 0.0);
  *(a1 + 224) = 1;
  v104 = (*(*a1 + 40))(a1);
  if (cnprint::CNPrinter::GetLogLevel(v104) <= 1)
  {
    LOWORD(v120[0]) = 12;
    LOBYTE(v123) = 1;
    (*(*a1 + 16))(&__p, a1);
    if (v125 >= 0)
    {
      v110 = &__p;
    }

    else
    {
      LOBYTE(v110) = __p;
    }

    cnprint::CNPrinter::Print(v120, &v123, "%s configured successfully", v105, v106, v107, v108, v109, v110);
    if (SHIBYTE(v125) < 0)
    {
      operator delete(__p);
    }
  }

  return 0;
}

void sub_1D0DEB0E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 raven::RavenUserGaitTrackerActiveObject::HandleEvent(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 24);
  v4 = *(a2 + 56);
  *(a1 + 472) = *(a2 + 40);
  *(a1 + 488) = v4;
  *(a1 + 440) = v2;
  *(a1 + 456) = v3;
  v5 = *(a2 + 72);
  v6 = *(a2 + 88);
  v7 = *(a2 + 120);
  *(a1 + 536) = *(a2 + 104);
  *(a1 + 552) = v7;
  *(a1 + 504) = v5;
  *(a1 + 520) = v6;
  result = *(a2 + 136);
  v9 = *(a2 + 152);
  v10 = *(a2 + 168);
  *(a1 + 616) = *(a2 + 184);
  *(a1 + 584) = v9;
  *(a1 + 600) = v10;
  *(a1 + 568) = result;
  return result;
}

{
  *(a1 + 632) = *(a2 + 8);
  v2 = *(a2 + 24);
  v3 = *(a2 + 40);
  v4 = *(a2 + 72);
  *(a1 + 680) = *(a2 + 56);
  *(a1 + 696) = v4;
  *(a1 + 648) = v2;
  *(a1 + 664) = v3;
  result = *(a2 + 88);
  v6 = *(a2 + 104);
  v7 = *(a2 + 120);
  *(a1 + 760) = *(a2 + 136);
  *(a1 + 728) = v6;
  *(a1 + 744) = v7;
  *(a1 + 712) = result;
  return result;
}

void raven::RavenUserGaitTrackerActiveObject::InitializeGaitTracking(raven::RavenUserGaitTrackerActiveObject *this, int a2)
{
  *(this + 217) = a2;
  *(this + 872) = 1;
  *(this + 219) = 0;
  if (a2)
  {
    operator new();
  }

  v3 = *(this + 110);
  if (v3)
  {
    *(this + 111) = v3;
    operator delete(v3);
  }

  *(this + 110) = 0;
  *(this + 111) = 0;
  *(this + 112) = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = *(this + 113);
  if (v7)
  {
    *(this + 114) = v7;
    operator delete(v7);
    v6 = v8;
    v5 = v9;
    v4 = v10;
  }

  *(this + 113) = v6;
  *(this + 114) = v5;
  *(this + 115) = v4;
}

void sub_1D0DEB318(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t raven::RavenUserGaitTrackerActiveObject::OnFailureToAddSampleToPeriodicityTracker(uint64_t this)
{
  if (*(this + 872) == 1)
  {
    *(this + 872) = 0;
  }

  *(this + 876) = 0;
  *(this + 888) = *(this + 880);
  *(this + 912) = *(this + 904);
  return this;
}

uint64_t raven::RavenUserGaitTrackerActiveObject::ResetGaitTracking(uint64_t this)
{
  if (*(this + 872) == 1)
  {
    *(this + 872) = 0;
  }

  *(this + 876) = 0;
  *(this + 888) = *(this + 880);
  *(this + 912) = *(this + 904);
  return this;
}

__n128 raven::RavenUserGaitTrackerActiveObject::PerformGaitTracking(raven::RavenUserGaitTrackerActiveObject *this, __n128 *a2, __n128 result)
{
  if (*(this + 240) != 1)
  {
    return result;
  }

  result.n128_f64[0] = *(this + 32) / *(this + 31);
  LODWORD(v4) = vcvtpd_u64_f64(result.n128_f64[0]);
  v4 = v4 <= 1 ? 1 : v4;
  if (*(this + 47) < v4)
  {
    return result;
  }

  if (*(this + 313) != 1)
  {
    goto LABEL_8;
  }

  result.n128_u64[0] = *(this + 40);
  if ((result.n128_u64[0] & 0x7FFFFFFFFFFFFFFFLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_8;
  }

  if (fabs(result.n128_f64[0]) < 2.22044605e-16)
  {
    goto LABEL_8;
  }

  if (result.n128_f64[0] < 0.0)
  {
    goto LABEL_8;
  }

  v5 = *(this + 536);
  if ((v5 & 0xFE) != 2 || *(this + 728) - 1 <= 1)
  {
    goto LABEL_8;
  }

  v12 = v5 == 2;
  v6 = 480;
  if (v12)
  {
    v6 = 472;
  }

  v7 = *(*(this + 29) + v6) * 0.5;
  v8 = fabs(v7);
  if (v7 >= 0.0 && v8 >= 2.22044605e-16)
  {
    result.n128_f64[0] = result.n128_f64[0] / v7;
    v11 = llround(result.n128_f64[0]);
    v12 = v11 > 4 || ((1 << v11) & 0x16) == 0;
    if (!v12)
    {
      if (*(this + 872) == 1)
      {
        if (*(this + 217) == v11)
        {
          v13 = *(this + 219);
          *(this + 219) = v13 + 1;
LABEL_31:
          v15 = v13 % *(this + 217);
          v16 = *(this + 113);
          v17 = *(this + 110) + 96 * v15;
          v18 = *(v16 + 4 * v15);
          *(v16 + 4 * v15) = v18 + 1;
          if ((v18 + 1) >= 2)
          {
            v23 = a2[2];
            v24 = a2[3];
            v25 = a2[4];
            v26 = a2[5];
            v22 = a2[1];
            v27 = *a2;
            v28 = *v17;
            sub_1D0DEB5D4();
          }

          v19 = a2[1];
          *v17 = *a2;
          *(v17 + 16) = v19;
          result = a2[2];
          v20 = a2[3];
          v21 = a2[5];
          *(v17 + 64) = a2[4];
          *(v17 + 80) = v21;
          *(v17 + 32) = result;
          *(v17 + 48) = v20;
          return result;
        }

        *(this + 872) = 0;
        *(this + 219) = 0;
        *(this + 111) = *(this + 110);
        *(this + 114) = *(this + 113);
      }

      raven::RavenUserGaitTrackerActiveObject::InitializeGaitTracking(this, v11);
      v14 = *(this + 872);
      v13 = *(this + 219);
      *(this + 219) = v13 + 1;
      if ((v14 & 1) == 0)
      {
        sub_1D0C42F28();
      }

      goto LABEL_31;
    }

LABEL_8:
    if (*(this + 872) == 1)
    {
      *(this + 872) = 0;
    }

    *(this + 219) = 0;
    *(this + 111) = *(this + 110);
    *(this + 114) = *(this + 113);
  }

  return result;
}

void sub_1D0DEB84C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_1D0B7CAB8(a11);
  }

  sub_1D0B7CAB8(v11);
  _Unwind_Resume(a1);
}

void raven::RavenUserGaitTrackerActiveObject::Reset(raven::RavenUserGaitTrackerActiveObject *this)
{
  *&v1 = 0;
  *(&v1 + 1) = 0x7FF8000000000000;
  *&v2 = 0;
  *(&v2 + 1) = 0x3FF0000000000000;
  *(this + 472) = 0uLL;
  *(this + 488) = 0uLL;
  *(this + 440) = 0uLL;
  *(this + 456) = 0uLL;
  *(this + 536) = v2;
  *(this + 552) = 0u;
  *(this + 504) = 0uLL;
  *(this + 520) = v1;
  *(this + 77) = 0;
  *(this + 584) = 0u;
  *(this + 600) = 0u;
  *(this + 568) = 0u;
  *(&v1 + 1) = 0x7FF8000000000000;
  *&v2 = 0;
  *&v1 = 0;
  *(&v2 + 1) = 0x3FF0000000000000;
  *(this + 664) = 0uLL;
  *(this + 680) = 0uLL;
  *(this + 632) = 0uLL;
  *(this + 648) = 0uLL;
  *(this + 95) = 0;
  *(this + 728) = v2;
  *(this + 744) = 0uLL;
  *(this + 696) = 0uLL;
  *(this + 712) = v1;
  *(this + 864) = 0;
  if (*(this + 872) == 1)
  {
    *(this + 872) = 0;
  }

  *(this + 219) = 0;
  *(this + 111) = *(this + 110);
  *(this + 114) = *(this + 113);
  sub_1D0DEBA68(this);
}

void sub_1D0DEBA68(uint64_t a1)
{
  if (cnprint::CNPrinter::GetLogLevel(a1) <= 1)
  {
    v11 = 12;
    v10 = 1;
    (*(*a1 + 16))(__p, a1);
    if (v9 >= 0)
    {
      v7 = __p;
    }

    else
    {
      LOBYTE(v7) = __p[0];
    }

    cnprint::CNPrinter::Print(&v11, &v10, "Resetting %s", v2, v3, v4, v5, v6, v7);
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }
  }

  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0x7FF8000000000000;
  *(a1 + 152) = 0;
  *(a1 + 105) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0x7FF8000000000000;
  cnframework::ActiveObjectBase::ResetEventQueue(a1);
}

void sub_1D0DEBB34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D0DEBB54(raven::RavenCoarseOdometerActiveObject *a1)
{
  sub_1D0DEBBD8(a1);

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0DEBB90(raven::RavenCoarseOdometerActiveObject *a1)
{
  sub_1D0DEA654(a1);

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0DEBBD8(raven::RavenCoarseOdometerActiveObject *a1)
{
  *a1 = &unk_1F4CEB2F8;
  v2 = *(a1 + 113);
  if (v2)
  {
    *(a1 + 114) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 110);
  if (v3)
  {
    *(a1 + 111) = v3;
    operator delete(v3);
  }

  sub_1D0DEA654(a1);
}

void sub_1D0DEBCDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
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

void sub_1D0DEBD6C(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F4CDF5E0;
  sub_1D0DEBDC8((a1 + 3));
}

void sub_1D0DEBDC8(uint64_t a1)
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
  sub_1D0DEBF5C();
}

void sub_1D0DEBF04(_Unwind_Exception *exception_object)
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

uint64_t raven::SolutionChecker::Configure(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(a1 + 16) = a3;
  v8 = *(a3 + 8) + *a3;
  v9 = *(*a2 + 1584);
  if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (v9 >= 0.0 ? (v10 = v9 <= 1.0) : (v10 = 0), !v10))
  {
    v54 = 12;
    v53 = 4;
    cnprint::CNPrinter::Print(&v54, &v53, "t,%.3lf,SolutionChecker: Cannot configure. Invalid consistency_percentile_threshold: %.2lf", a4, a5, a6, a7, a8, SLOBYTE(v8));
    return 0xFFFFFFFFLL;
  }

  cnstatistics::InverseChi2(a1, v9, 3.0);
  *(a1 + 56) = sqrt(v14 * 0.333333333);
  cnstatistics::InverseChi2(v15, *(*a2 + 1584), 1.0);
  *(a1 + 64) = sqrt(v16);
  cnstatistics::InverseChi2(v17, *(*a2 + 1584), 1.0);
  *(a1 + 72) = sqrt(v23);
  v24 = *a2;
  v25 = *(*a2 + 1552);
  *(a1 + 24) = v25;
  v26 = (v25 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
  v27 = ((v25 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
  if (v25 >= 0)
  {
    v27 = 0;
    v26 = 0;
  }

  v28 = (v25 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000 || v26;
  if ((v25 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
  {
    v28 = 1;
  }

  if ((v28 | v27) == 1)
  {
    v54 = 12;
    v53 = 4;
    cnprint::CNPrinter::Print(&v54, &v53, "t,%.3lf,SolutionChecker: Cannot configure. Invalid direction_of_travel_difference_from_convergence_tolerance: %.2lf", v18, v19, v20, v21, v22, SLOBYTE(v8));
    return 0xFFFFFFFFLL;
  }

  v29 = v24[195];
  *(a1 + 32) = v29;
  v30 = (v29 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
  v31 = ((v29 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
  if (v29 >= 0)
  {
    v31 = 0;
    v30 = 0;
  }

  if ((v29 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000)
  {
    v30 = 1;
  }

  if ((v29 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
  {
    v30 = 1;
  }

  if (v30 || v31)
  {
    v54 = 12;
    v53 = 4;
    cnprint::CNPrinter::Print(&v54, &v53, "t,%.3lf,SolutionChecker: Cannot configure. Invalid direction_of_travel_difference_from_passthrough_tolerance: %.2lf", v18, v19, v20, v21, v22, SLOBYTE(v8));
    return 0xFFFFFFFFLL;
  }

  v32 = v24[199];
  *(a1 + 40) = v32;
  v33 = (v32 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
  v34 = ((v32 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
  if (v32 >= 0)
  {
    v34 = 0;
    v33 = 0;
  }

  v35 = (v32 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000 || v33;
  if ((v32 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
  {
    v35 = 1;
  }

  if ((v35 | v34) == 1)
  {
    v54 = 12;
    v53 = 4;
    cnprint::CNPrinter::Print(&v54, &v53, "t,%.3lf,SolutionChecker: Cannot configure. Invalid position_difference_from_convergence_tolerance_m_: %.2lf", v18, v19, v20, v21, v22, SLOBYTE(v8));
    return 0xFFFFFFFFLL;
  }

  v36 = v24[200];
  *(a1 + 48) = v36;
  v37 = (v36 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
  v38 = ((v36 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
  if (v36 >= 0)
  {
    v38 = 0;
    v37 = 0;
  }

  if ((v36 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000)
  {
    v37 = 1;
  }

  if ((v36 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
  {
    v37 = 1;
  }

  if (v37 || v38)
  {
    v54 = 12;
    v53 = 4;
    cnprint::CNPrinter::Print(&v54, &v53, "t,%.3lf,SolutionChecker: Cannot configure. Invalid position_difference_from_passthrough_tolerance: %.2lf", v18, v19, v20, v21, v22, SLOBYTE(v8));
    return 0xFFFFFFFFLL;
  }

  v39 = v24[201];
  *(a1 + 80) = v39;
  v40 = (v39 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
  v41 = ((v39 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
  if (v39 >= 0)
  {
    v41 = 0;
    v40 = 0;
  }

  v42 = (v39 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000 || v40;
  if ((v39 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
  {
    v42 = 1;
  }

  if ((v42 | v41) == 1)
  {
    v54 = 12;
    v53 = 4;
    cnprint::CNPrinter::Print(&v54, &v53, "t,%.3lf,SolutionChecker: Cannot configure. Invalid speed_difference_from_convergence_tolerance: %.2lf", v18, v19, v20, v21, v22, SLOBYTE(v8));
    return 0xFFFFFFFFLL;
  }

  v43 = v24[202];
  *(a1 + 88) = v43;
  v44 = (v43 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
  v45 = ((v43 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
  if (v43 >= 0)
  {
    v45 = 0;
    v44 = 0;
  }

  if ((v43 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000)
  {
    v44 = 1;
  }

  if ((v43 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
  {
    v44 = 1;
  }

  if (v44 || v45)
  {
    v54 = 12;
    v53 = 4;
    cnprint::CNPrinter::Print(&v54, &v53, "t,%.3lf,SolutionChecker: Cannot configure. Invalid speed_difference_from_passthrough_tolerance: %.2lf", v18, v19, v20, v21, v22, SLOBYTE(v8));
    return 0xFFFFFFFFLL;
  }

  v46 = v24[204];
  *(a1 + 96) = v46;
  v47 = (v46 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
  v48 = ((v46 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
  if (v46 >= 0)
  {
    v48 = 0;
    v47 = 0;
  }

  v49 = (v46 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000 || v47;
  if ((v46 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
  {
    v49 = 1;
  }

  if ((v49 | v48) == 1)
  {
    v54 = 12;
    v53 = 4;
    cnprint::CNPrinter::Print(&v54, &v53, "t,%.3lf,SolutionChecker: Cannot configure. Invalid time_difference_from_current_time_tolerance: %.2lf", v18, v19, v20, v21, v22, SLOBYTE(v8));
    return 0xFFFFFFFFLL;
  }

  v50 = v24[203];
  *(a1 + 104) = v50;
  v51 = (v50 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
  v52 = v50 < 0 && ((v50 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
  if (v50 >= 0)
  {
    v51 = 0;
  }

  if ((v50 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000)
  {
    v51 = 1;
  }

  if ((v50 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
  {
    v51 = 1;
  }

  if (v51 || v52)
  {
    v54 = 12;
    v53 = 4;
    cnprint::CNPrinter::Print(&v54, &v53, "t,%.3lf,SolutionChecker: Cannot configure. Invalid time_difference_from_solution_to_check_against_tolerance_: %.2lf", v18, v19, v20, v21, v22, SLOBYTE(v8));
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *(a1 + 8) = 1;
  return result;
}

void raven::RavenConvergenceEstimator::RavenConvergenceEstimator(raven::RavenConvergenceEstimator *this)
{
  v2 = this + 4400;
  raven::RavenEstimator::RavenEstimator(this, 2);
  *v3 = &unk_1F4CEC098;
  *(v3 + 2760) = 0x100000000;
  *(v3 + 2768) = 0x7FFFFFFF;
  *(v3 + 2776) = 0x3E45798EE2308C3ALL;
  *(v3 + 2784) = 0x3E45798EE2308C3ALL;
  *(v3 + 2792) = 0;
  *(v3 + 2800) = 0x3FEE666666666666;
  *(v3 + 2808) = 0u;
  *(v3 + 2824) = 0x4197D78400000000;
  *(v3 + 2832) = 0u;
  *(v3 + 2848) = 1;
  *(v3 + 2856) = 0;
  *(v3 + 2896) = 0x100000008;
  *(v3 + 2872) = &unk_1F4CE4320;
  *(v3 + 2904) = v3 + 2912;
  *(v3 + 3000) = 0x800000008;
  *(v3 + 2976) = &unk_1F4CE43B0;
  *(v3 + 3008) = v3 + 3016;
  *(v3 + 3552) = 0x100000008;
  *(v3 + 3528) = &unk_1F4CE4320;
  *(v3 + 3560) = v3 + 3568;
  *(v3 + 3656) = 0x100000008;
  *(v3 + 3632) = &unk_1F4CE4320;
  *(v3 + 3664) = v3 + 3672;
  *(v3 + 3760) = 0x800000008;
  *(v3 + 3736) = &unk_1F4CE43B0;
  *(v3 + 3768) = v3 + 3776;
  *(v3 + 4312) = 0x100000008;
  *(v3 + 4288) = &unk_1F4CE4320;
  *(v3 + 4320) = v3 + 4328;
  *(v3 + 4408) = 0x100000000;
  *(v3 + 4416) = 0x7FFFFFFF;
  *(v3 + 4424) = 0x3E45798EE2308C3ALL;
  *(v3 + 4432) = 0x3E45798EE2308C3ALL;
  *(v3 + 4440) = 0;
  *(v3 + 4456) = 0u;
  *(v3 + 4448) = 0x3FEE666666666666;
  *(v3 + 4472) = 0x4197D78400000000;
  *(v3 + 4392) = 0;
  *v2 = 0;
  *(v3 + 2880) = 0u;
  *(v3 + 2984) = 0u;
  *(v3 + 3536) = 0u;
  *(v3 + 3640) = 0u;
  *(v3 + 3744) = 0u;
  *(v3 + 4296) = 0u;
  *(v3 + 4608) = 0;
  *(v3 + 4592) = 0u;
  *(v3 + 4576) = 0u;
  *(v3 + 4560) = 0u;
  *(v3 + 4544) = 0u;
  *(v3 + 4528) = 0u;
  *(v3 + 4512) = 0u;
  *(v3 + 4496) = 0u;
  *(v3 + 4480) = 0u;
  *(v3 + 4404) = 1;
  *(v3 + 2864) = &unk_1F4CEAAF8;
  *(v3 + 4640) = 0x800000008;
  *(v3 + 4616) = &unk_1F4CE43B0;
  *(v3 + 4648) = v3 + 4656;
  *(v3 + 5192) = 0x100000008;
  *(v3 + 5168) = &unk_1F4CE4320;
  *(v3 + 5200) = v3 + 5208;
  *(v3 + 5296) = 0x800000008;
  *(v3 + 5272) = &unk_1F4CE43B0;
  *(v3 + 5304) = v3 + 5312;
  *(v3 + 5824) = 0x100000000;
  *(v3 + 5832) = 0x7FFFFFFF;
  v9 = vdupq_n_s64(0x3E45798EE2308C3AuLL);
  *(v3 + 5840) = v9;
  *(v3 + 5856) = 0;
  *(v3 + 5864) = 0x3FEE666666666666;
  *(v3 + 5872) = 0u;
  *(v3 + 5888) = 0x4197D78400000000;
  *(v3 + 5896) = 0u;
  *(v3 + 5912) = 1;
  *(v3 + 5920) = 0;
  *(v3 + 4624) = 0u;
  *(v3 + 5176) = 0u;
  *(v3 + 5280) = 0u;
  sub_1D0D813F4(v3 + 5928);
  *(this + 1048) = 0x100000000;
  *(this + 2098) = 0x7FFFFFFF;
  *(this + 525) = v9;
  *(v2 + 2008) = 0;
  *(this + 1053) = 0x3FEE666666666666;
  *(this + 527) = 0u;
  *(this + 8456) = 0u;
  *(this + 1056) = 0x4197D78400000000;
  *(v2 + 2036) = 1;
  *(this + 1060) = 0;
  __asm { FMOV            V0.2D, #0.5 }

  *(this + 531) = _Q0;
  *(this + 2128) = 0;
  *(this + 1061) = &unk_1F4CE3930;
  *(this + 1065) = 0x3FE0000000000000;
  *(this + 533) = xmmword_1D0E9CBD0;
  *(this + 4280) = 0;
  *(this + 534) = _Q0;
  *(this + 8568) = 0u;
  *(this + 8584) = 0u;
  *(this + 1075) = this + 8600;
  *(this + 1076) = this + 8600;
  *(this + 1077) = 0;
  sub_1D0C01D64(this + 8624);
  *(this + 1434) = 0x1000000AELL;
  *(this + 1431) = &unk_1F4CE05D8;
  *(this + 716) = xmmword_1D0E843F0;
  *(this + 1435) = this + 11488;
  *(this + 1526) = 0x1000000AELL;
  *(this + 1523) = &unk_1F4CE0620;
  *(this + 762) = xmmword_1D0E843F0;
  *(this + 1527) = this + 12224;
  sub_1D0C02288(this + 13616);
}

void sub_1D0DECE68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20)
{
  sub_1D0DC5674((v20 + 8560));
  *a19 = a18;
  sub_1D0D83110(v20 + 5928);
  sub_1D0BCB680(a20);
  sub_1D0D4FA90(v20);
  _Unwind_Resume(a1);
}

uint64_t raven::RavenConvergenceEstimator::AdjustClockOffset(uint64_t a1, uint64_t a2, double a3)
{
  if (*(a1 + 58) != 1)
  {
    return 1;
  }

  v45[8] = v8;
  v45[9] = v7;
  v45[10] = v6;
  v45[11] = v5;
  v45[18] = v3;
  v45[19] = v4;
  if ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    v20 = a1 + 2864;
    v43 = 0x100000008;
    v41 = &unk_1F4CE4320;
    v42 = xmmword_1D0E84520;
    v44 = v45;
    v21 = 768;
    if (!*(a1 + 4404))
    {
      v21 = 8;
    }

    sub_1D0B894B0(&v41, v20 + v21);
    v38 = 0x800000008;
    v36 = &unk_1F4CE43B0;
    v37 = xmmword_1D0E84510;
    v39 = &v40;
    v22 = 872;
    if (!*(a1 + 4404))
    {
      v22 = 112;
    }

    sub_1D0B894B0(&v36, v20 + v22);
    v44[6] = v44[6] + a3 * 1000000.0;
    v33 = 0x100000008;
    v31 = &unk_1F4CE4320;
    v32 = xmmword_1D0E84520;
    v34 = &v35;
    sub_1D0B89390(&v36, &v41, &v31);
    sub_1D0DED3EC(a1 + 2864, &v41, &v36, &v31);
    LOWORD(v31) = 12;
    v30 = 2;
    v23 = cnprint::CNLogFormatter::FormatGeneral(a1 + 2712, a2, "adjusted clock offset by %.3lf us to %.3lf us", a3 * 1000000.0, v44[6]);
    if (*(a1 + 2735) >= 0)
    {
      LOBYTE(v29) = v23;
    }

    else
    {
      v29 = *(a1 + 2712);
    }

    cnprint::CNPrinter::Print(&v31, &v30, "%s", v24, v25, v26, v27, v28, v29);
    return 1;
  }

  else
  {
    LOWORD(v36) = 12;
    LOBYTE(v41) = 4;
    v12 = cnprint::CNLogFormatter::FormatGeneral(a1 + 2712, a2, "invalid clock correction %.3lf s", a3);
    if (*(a1 + 2735) >= 0)
    {
      LOBYTE(v18) = v12;
    }

    else
    {
      v18 = *(a1 + 2712);
    }

    cnprint::CNPrinter::Print(&v36, &v41, "%s", v13, v14, v15, v16, v17, v18);
    return 0;
  }
}

void sub_1D0DED3EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a2 + 16);
  sub_1D0BA1824(v8, a2);
  v9 = v7;
  v10 = 1;
  v11 = v7;
  v12 = v7;
  sub_1D0B894B0(a1 + 8, v8);
  sub_1D0B894B0(a1 + 112, a3);
  sub_1D0BA1824(v8, a4);
  v9 = v7;
  v10 = 1;
  v11 = v7;
  v12 = v7;
  sub_1D0B894B0(a1 + 664, v8);
  sub_1D0B894B0(a1 + 768, a1 + 8);
  sub_1D0B894B0(a1 + 872, a1 + 112);
  sub_1D0B894B0(a1 + 1424, a1 + 664);
  *(a1 + 1528) = 0x3FF0000000000000;
  *(a1 + 1536) = 0;
  *(a1 + 1540) = 1;
}

void sub_1D0DED4B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, float64_t a14)
{
  v98 = 0x800000008;
  v96 = &unk_1F4CE43B0;
  v99 = v100;
  v97 = xmmword_1D0E84510;
  memset(v100, 0, sizeof(v100));
  sub_1D0B894B0(a1 + 80, &v96);
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a6;
  *(a1 + 24) = a7;
  *(a1 + 32) = a8;
  *(a1 + 40) = a9;
  *(a1 + 48) = a10;
  *(a1 + 56) = a11;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  v100[0] = 0x100000000;
  v92 = 0x100000003;
  v90 = &unk_1F4CDEAA0;
  v93 = &v94;
  v91 = xmmword_1D0E7DCC0;
  v95 = 2;
  v94 = 0x100000000;
  v72 = 0x300000003;
  v71 = xmmword_1D0E76C10;
  v70 = &unk_1F4CD5DD0;
  v73 = v74;
  LOBYTE(v96) = 0;
  sub_1D0B9F748(a4, &v70, &v96);
  v77 = 0x300000003;
  v76 = xmmword_1D0E76C10;
  v75 = &unk_1F4CD5DD0;
  v78 = v79;
  v60 = 0x100000003;
  v58 = &unk_1F4CDEAA0;
  v59 = xmmword_1D0E7DCC0;
  v61 = v62;
  v98 = 0x10000000CLL;
  v97 = xmmword_1D0E83DD0;
  v96 = &unk_1F4CDFFF8;
  v99 = v100;
  sub_1D0B9F868(&v70, &v58, &v96, &v75);
  v30 = DWORD1(v76);
  v31 = v76;
  v82 = 0x300000003;
  v80 = &unk_1F4CD5DD0;
  v83 = v84;
  *&v81 = __PAIR64__(v76, DWORD1(v76));
  DWORD2(v81) = v76 * DWORD1(v76);
  HIDWORD(v81) = DWORD1(v76);
  if (DWORD1(v76))
  {
    v32 = 0;
    v33 = 0;
    v34 = HIDWORD(v76);
    v35 = v78;
    do
    {
      v36 = v32;
      v37 = v33;
      for (i = v31; i; --i)
      {
        v84[v37] = v35[v36];
        v37 += v30;
        ++v36;
      }

      ++v33;
      v32 += v34;
    }

    while (v33 != v30);
  }

  v60 = 0x100000003;
  v58 = &unk_1F4CDEB28;
  v59 = xmmword_1D0E7DCC0;
  v61 = v62;
  v98 = 0x300000003;
  v97 = xmmword_1D0E76C10;
  v96 = &unk_1F4CD5DD0;
  v99 = v100;
  v87 = 0x300000003;
  v86 = xmmword_1D0E76C10;
  v85 = &unk_1F4CD5DD0;
  v88 = v89;
  sub_1D0B9FACC(&v80, &v58, &v96, &v85);
  sub_1D0BADC74(&v96, a1 + 80, &v90, &v90);
  sub_1D0D2CFF0(&v96, &v85);
  v100[0] = 0x400000003;
  v66 = 0x100000003;
  v64 = &unk_1F4CDEAA0;
  v65 = xmmword_1D0E7DCC0;
  v69 = 5;
  v67 = &v68;
  v68 = 0x400000003;
  v72 = 0x300000003;
  v71 = xmmword_1D0E76C10;
  v70 = &unk_1F4CD5DD0;
  v73 = v74;
  LOBYTE(v96) = 0;
  sub_1D0B9F748(a5, &v70, &v96);
  v77 = 0x300000003;
  v76 = xmmword_1D0E76C10;
  v75 = &unk_1F4CD5DD0;
  v78 = v79;
  v60 = 0x100000003;
  v58 = &unk_1F4CDEAA0;
  v59 = xmmword_1D0E7DCC0;
  v61 = v62;
  v98 = 0x10000000CLL;
  v97 = xmmword_1D0E83DD0;
  v96 = &unk_1F4CDFFF8;
  v99 = v100;
  sub_1D0B9F868(&v70, &v58, &v96, &v75);
  v39 = DWORD1(v76);
  v40 = v76;
  v82 = 0x300000003;
  v80 = &unk_1F4CD5DD0;
  v83 = v84;
  *&v81 = __PAIR64__(v76, DWORD1(v76));
  DWORD2(v81) = v76 * DWORD1(v76);
  HIDWORD(v81) = DWORD1(v76);
  if (DWORD1(v76))
  {
    v41 = 0;
    v42 = 0;
    v43 = HIDWORD(v76);
    v44 = v78;
    do
    {
      v45 = v41;
      v46 = v42;
      for (j = v40; j; --j)
      {
        v84[v46] = v44[v45];
        v46 += v39;
        ++v45;
      }

      ++v42;
      v41 += v43;
    }

    while (v42 != v39);
  }

  v60 = 0x100000003;
  v58 = &unk_1F4CDEB28;
  v59 = xmmword_1D0E7DCC0;
  v61 = v62;
  v98 = 0x300000003;
  v97 = xmmword_1D0E76C10;
  v96 = &unk_1F4CD5DD0;
  v99 = v100;
  v87 = 0x300000003;
  v86 = xmmword_1D0E76C10;
  v85 = &unk_1F4CD5DD0;
  v88 = v89;
  sub_1D0B9FACC(&v80, &v58, &v96, &v85);
  sub_1D0BADC74(&v96, a1 + 80, &v64, &v64);
  sub_1D0D2CFF0(&v96, &v85);
  v87 = 0x200000002;
  v85 = &unk_1F4CE0268;
  v88 = v89;
  v86 = xmmword_1D0E83F70;
  v89[2] = 0.0;
  v89[1] = 0.0;
  v89[0] = a12 * a12;
  v89[3] = a13 * a13;
  v82 = 0x300000001;
  v80 = &unk_1F4CDF0C8;
  v83 = v84;
  v81 = xmmword_1D0E84500;
  v84[0] = 0x700000006;
  v98 = 0x100000003;
  v96 = &unk_1F4CDEAA0;
  v99 = v100;
  v97 = xmmword_1D0E83F60;
  v100[0] = 0x700000006;
  sub_1D0D8D2B4(v63, &v96);
  v60 = 0x200000002;
  v58 = &unk_1F4CE0268;
  v59 = xmmword_1D0E83F70;
  v61 = v62;
  LOBYTE(v96) = 0;
  sub_1D0B9F748(&v85, &v58, &v96);
  v72 = 0x200000002;
  v71 = xmmword_1D0E83F70;
  v70 = &unk_1F4CE0268;
  v73 = v74;
  v103 = 0x100000002;
  v102 = xmmword_1D0E83F60;
  v101 = &unk_1F4CE0EA8;
  v104 = v105;
  v98 = 0x100000008;
  v97 = xmmword_1D0E84520;
  v96 = &unk_1F4CE4320;
  v99 = v100;
  sub_1D0B9F868(&v58, &v101, &v96, &v70);
  v48 = DWORD1(v71);
  v49 = v71;
  v77 = 0x200000002;
  v75 = &unk_1F4CE0268;
  v78 = v79;
  *&v76 = __PAIR64__(v71, DWORD1(v71));
  DWORD2(v76) = v71 * DWORD1(v71);
  HIDWORD(v76) = DWORD1(v71);
  if (DWORD1(v71))
  {
    v50 = 0;
    v51 = 0;
    v52 = HIDWORD(v71);
    v53 = v73;
    do
    {
      v54 = v50;
      v55 = v51;
      for (k = v49; k; --k)
      {
        v79[v55] = *&v53[8 * v54];
        v55 += v48;
        ++v54;
      }

      ++v51;
      v50 += v52;
    }

    while (v51 != v48);
  }

  v103 = 0x100000002;
  v102 = xmmword_1D0E83F60;
  v101 = &unk_1F4CE0220;
  v104 = v105;
  v98 = 0x200000002;
  v97 = xmmword_1D0E83F70;
  v96 = &unk_1F4CE0268;
  v99 = v100;
  v82 = 0x200000002;
  v81 = xmmword_1D0E83F70;
  v80 = &unk_1F4CE0268;
  v83 = v84;
  sub_1D0B9FACC(&v75, &v101, &v96, &v80);
  sub_1D0D8D39C(&v96, a1 + 80, v63, v63);
  sub_1D0D8CEA0(&v96, &v80);
  v57.f64[0] = a14;
  v98 = 0x800000008;
  v97 = xmmword_1D0E84510;
  v96 = &unk_1F4CE43B0;
  v99 = v100;
  sub_1D0B8930C(a1 + 80, &v96, v57);
  sub_1D0B894B0(a1 + 80, &v96);
}

uint64_t raven::RavenConvergenceEstimator::Configure(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 57) == 1)
  {
    LOWORD(__p.__r_.__value_.__l.__data_) = 12;
    LOBYTE(v37) = 2;
    v3 = cnprint::CNLogFormatter::FormatWarning((a1 + 2712), "Configure() called more than once");
    goto LABEL_22;
  }

  v10 = *a2;
  if (!*a2)
  {
    LOWORD(__p.__r_.__value_.__l.__data_) = 12;
    LOBYTE(v37) = 4;
    v3 = cnprint::CNLogFormatter::FormatGeneral((a1 + 2712), "Configure() called with null raven parameters");
    goto LABEL_22;
  }

  if ((*(v10 + 33) & 1) == 0)
  {
    LOWORD(__p.__r_.__value_.__l.__data_) = 12;
    LOBYTE(v37) = 4;
    v3 = cnprint::CNLogFormatter::FormatGeneral((a1 + 2712), "Configure() called with uninitialized raven parameters");
    goto LABEL_22;
  }

  v11 = *(v10 + 1016);
  v12 = v11 & 0x7FFFFFFFFFFFFFFFLL;
  v13 = (v11 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
  v14 = v11 < 0;
  v15 = v11 < 0 && ((v11 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
  if (!v14)
  {
    v13 = 0;
  }

  v16 = v12 <= 0x7FF0000000000000;
  v17 = v12 == 0x7FF0000000000000 || v13;
  if (!v16)
  {
    v17 = 1;
  }

  if (((v17 | v15) & 1) != 0 || *(v10 + 1016) > 1.0)
  {
    LOWORD(__p.__r_.__value_.__l.__data_) = 12;
    LOBYTE(v37) = 4;
    v3 = cnprint::CNLogFormatter::FormatGeneral((a1 + 2712), "Configure() called with invalid probability speeds differ,%.3lf");
LABEL_22:
    if (*(a1 + 2735) >= 0)
    {
      LOBYTE(v25) = v3;
    }

    else
    {
      v25 = *(a1 + 2712);
    }

LABEL_25:
    cnprint::CNPrinter::Print(&__p, &v37, "%s", v4, v5, v6, v7, v8, v25);
    return 0xFFFFFFFFLL;
  }

  *(a1 + 2848) = 1;
  *(a1 + 2760) = 0x100000000;
  v18 = (a1 + 2760);
  *(a1 + 2792) = 257;
  *(a1 + 2800) = *(v10 + 912);
  *(a1 + 2824) = *(v10 + 920);
  v19 = *(a1 + 2792);
  *(a1 + 5872) = *(a1 + 2808);
  *(a1 + 5904) = *(a1 + 2840);
  *(a1 + 5920) = *(a1 + 2856);
  v20 = *(a1 + 2776);
  *(a1 + 5824) = *(a1 + 2760);
  v21 = *(a1 + 2760);
  v22 = *(a1 + 2776);
  *(a1 + 5840) = v20;
  v24 = *(a1 + 2808);
  v23 = *(a1 + 2824);
  *(a1 + 5888) = v23;
  *(a1 + 5856) = v19;
  *(a1 + 4408) = v21;
  *(a1 + 4424) = v22;
  *(a1 + 4488) = *(a1 + 2840);
  *(a1 + 4456) = v24;
  *(a1 + 4472) = v23;
  *(a1 + 4440) = v19;
  *(a1 + 4400) = 0;
  v39 = 0x100000008;
  v37 = &unk_1F4CE4320;
  v40 = v41;
  v38 = xmmword_1D0E84520;
  memset(v41, 0, sizeof(v41));
  sub_1D0BA1824(&__p, &v37);
  *&__p.__r_.__value_.__r.__words[1] = xmmword_1D0E84520;
  sub_1D0B894B0(a1 + 2872, &__p);
  v43 = 0x800000008;
  __p.__r_.__value_.__r.__words[0] = &unk_1F4CE43B0;
  v44 = v45;
  *&__p.__r_.__value_.__r.__words[1] = xmmword_1D0E84510;
  memset(v45, 0, 512);
  sub_1D0B894B0(a1 + 2976, &__p);
  v43 = 0x100000008;
  __p.__r_.__value_.__r.__words[0] = &unk_1F4CE4320;
  *&__p.__r_.__value_.__r.__words[1] = xmmword_1D0E84520;
  v44 = v45;
  sub_1D0B89390(a1 + 2976, a1 + 2872, &__p);
  sub_1D0B894B0(a1 + 3528, &__p);
  sub_1D0B894B0(a1 + 3632, a1 + 2872);
  sub_1D0B894B0(a1 + 3736, a1 + 2976);
  sub_1D0B894B0(a1 + 4288, a1 + 3528);
  *(a1 + 4392) = 0x3FF0000000000000;
  *(a1 + 4400) = 0;
  *(a1 + 4404) = 1;
  if (*(a1 + 2759) < 0)
  {
    sub_1D0BC39B4(&__p, *(a1 + 2736), *(a1 + 2744));
  }

  else
  {
    __p = *(a1 + 2736);
  }

  v27 = raven::RavenSequentialGNSSMeasurementSelector::Configure(a1 + 5928, v10, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if ((v27 & 1) == 0)
  {
    LOWORD(__p.__r_.__value_.__l.__data_) = 12;
    LOBYTE(v37) = 4;
    cnprint::CNLogFormatter::FormatGeneral((a1 + 2712), "Configure() failed to configure sequential GNSS measurement selector");
    goto LABEL_41;
  }

  if (*(v10 + 3769) == 1)
  {
    LOBYTE(v37) = *(a1 + 56);
    raven::RavenParameters::GetDebugMsrLoggingFilenameForEstimator(v10, &v37, &__p);
    raven::RavenSequentialGNSSMeasurementSelector::EnableLoggingToFile(a1 + 5928, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v28 = *(a1 + 2792);
  *(a1 + 8432) = *(a1 + 2808);
  v29 = *(a1 + 2840);
  *(a1 + 8448) = *(a1 + 2824);
  *(a1 + 8464) = v29;
  *(a1 + 8416) = v28;
  v30 = *(a1 + 2776);
  *(a1 + 8384) = *v18;
  *(a1 + 8480) = *(a1 + 2856);
  *(a1 + 8400) = v30;
  *(a1 + 8416) = 0;
  __p.__r_.__value_.__r.__words[0] = 0x3FE0000000000000;
  v31 = sub_1D0D87CD8(a1 + 8496, &__p);
  v32 = *(v10 + 1488);
  if (v32 < 0.0 || v32 > 1.0 || (v33 = *(v10 + 1496), v33 < 0.0) || v33 > 1.0 || (v34 = *(v10 + 1480), v34 < 0.0))
  {
    LOWORD(__p.__r_.__value_.__l.__data_) = 12;
    LOBYTE(v37) = 4;
    cnprint::CNLogFormatter::FormatGeneral((a1 + 2712), "Configure() failed to set consistency monitor prediction parameters");
    goto LABEL_41;
  }

  *(a1 + 8536) = v34;
  *(a1 + 8520) = *(v10 + 1488);
  *(a1 + 8528) = *(v10 + 1496);
  v35 = 1.0 - fabs(cnstatistics::InverseNormal(v31, (1.0 - *(v10 + 912)) * 0.5, 0.0, 1.0)) / *(v10 + 1504);
  if (v35 < 0.0 || v35 > 1.0 || (v36 = 1.0 - *(v10 + 912), v36 < 0.0) || v36 > 1.0)
  {
    LOWORD(__p.__r_.__value_.__l.__data_) = 12;
    LOBYTE(v37) = 4;
    cnprint::CNLogFormatter::FormatGeneral((a1 + 2712), "Configure() failed to set consistency monitor update parameters");
LABEL_41:
    if (*(a1 + 2735) >= 0)
    {
      LOBYTE(v25) = a1 - 104;
    }

    else
    {
      v25 = *(a1 + 2712);
    }

    goto LABEL_25;
  }

  *(a1 + 8544) = v35;
  *(a1 + 8552) = v36;
  if (*(a1 + 57) == 1)
  {
    puts("Warning: RavenEstimator::Configure() called more than once.");
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *(a1 + 1168) = *a2;
  *(a1 + 57) = 1;
  return result;
}

void sub_1D0DEE560(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *raven::RavenConvergenceEstimator::SetLogPrefix(uint64_t a1, const std::string *a2)
{
  std::string::operator=((a1 + 2736), a2);

  return std::string::operator=((a1 + 4592), a2);
}

uint64_t raven::RavenConvergenceEstimator::HandleEvent(raven::RavenConvergenceEstimator *this, const raven::AccessoryVehicleSpeedEvent *a2)
{
  if (*(this + 57) != 1)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(this + 58) != 1)
  {
    return 0;
  }

  v4 = *(a2 + 56);
  v90 = *(a2 + 40);
  v91 = v4;
  v5 = *(a2 + 88);
  v92 = *(a2 + 72);
  v93 = v5;
  v6 = *(a2 + 24);
  v88 = *(a2 + 8);
  v89 = v6;
  v7 = raven::PopulateAllTimeFields(&v88, this + 136, v88, v6);
  if (!*(a2 + 51) || *(a2 + 30) == *(a2 + 29))
  {
    if (cnprint::CNPrinter::GetLogLevel(v7) <= 1)
    {
      LOWORD(v49) = 12;
      LOBYTE(v52) = 1;
      v53 = (*(*a2 + 16))(a2);
      *&v54 = v18;
      cnprint::CNLogFormatter::FormatGeneral(this + 2712, &v53, "AccessoryVehicleSpeed,rejected,0 speed samples,iOSTime,%.2lf", *&v90 + v89.i64[1]);
      if (*(this + 2735) >= 0)
      {
        LOBYTE(v24) = this - 104;
      }

      else
      {
        v24 = *(this + 339);
      }

      cnprint::CNPrinter::Print(&v49, &v52, "%s", v19, v20, v21, v22, v23, v24);
    }

    return 0;
  }

  if (!raven::RavenEstimator::IsZUPTAppropriate(this, a2))
  {
    v54 = 0uLL;
    v53 = &unk_1F4CEF718;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = 0;
    v59 = 0;
    v60 = 0;
    v61 = 0;
    v62 = 0;
    v63 = 0;
    v64 = vdupq_n_s64(0x7FF8000000000000uLL);
    v65 = NAN;
    v26 = sub_1D0D57094(a2, &v53, v64, v8);
    if (v26)
    {
      if (cnprint::CNPrinter::GetLogLevel(v26) <= 1)
      {
        v52 = 12;
        v51 = 1;
        v49 = (*(*a2 + 16))(a2);
        v50 = v27;
        v28 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, &v49, "AccessoryVehicleSpeed,rejected,unable to add USPD,iOSTime,%.2lf", *&v90 + v89.i64[1]);
        if (*(this + 2735) >= 0)
        {
          LOBYTE(v17) = v28;
        }

        else
        {
          v17 = *(this + 339);
        }

        goto LABEL_27;
      }

      return 0xFFFFFFFFLL;
    }

    if (cnprint::CNPrinter::GetLogLevel(v26) <= 1)
    {
      v52 = 12;
      v51 = 1;
      v49 = (*(*a2 + 16))(a2);
      v50 = v32;
      v33 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, &v49, "AccessoryVehicleSpeed,accepted,USPD,iOSTime,%.2lf,speed,%.2lf,speedUnc,%.2lf", *&v90 + v89.i64[1], *&v64.i64[1], v65);
      if (*(this + 2735) >= 0)
      {
        LOBYTE(v39) = v33;
      }

      else
      {
        v39 = *(this + 339);
      }

      cnprint::CNPrinter::Print(&v52, &v51, "%s", v34, v35, v36, v37, v38, v39);
    }

    raven::RavenConvergenceEstimator::HandleEvent(this, &v53);
    return 0;
  }

  v54 = 0uLL;
  v53 = &unk_1F4CEF6E8;
  v55 = 0;
  v56 = 0;
  v57 = 0;
  v58 = 0;
  v59 = 0;
  v60 = 0;
  v61 = 0;
  v62 = 0;
  v63 = 0;
  v65 = 0.0;
  v64 = 0x7FF8000000000000uLL;
  v66 = 0;
  v67 = 0;
  v68 = 0;
  v69 = 0;
  v70 = 0;
  v71 = 0;
  v72 = 0;
  v73 = 0;
  v74 = 0;
  v75 = 0x7FF8000000000000;
  v76 = 0;
  v77 = vdupq_n_s64(0x7FF8000000000000uLL);
  v78 = v77;
  v79 = v77;
  v80 = v77;
  v81 = 0x7FF8000000000000;
  v82 = 0;
  v83 = v77;
  v84 = v77;
  v85 = v77;
  v86 = v77;
  v87 = 0x7FF8000000000000;
  v9 = sub_1D0D56F20(a2, &v53, v77, v8);
  if (v9)
  {
    if (cnprint::CNPrinter::GetLogLevel(v9) <= 1)
    {
      v52 = 12;
      v51 = 1;
      v49 = (*(*a2 + 16))(a2);
      v50 = v10;
      v11 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, &v49, "AccessoryVehicleSpeed,rejected,unable to add ZUPT 2,iOSTime,%.2lf", *&v90 + v89.i64[1]);
      if (*(this + 2735) >= 0)
      {
        LOBYTE(v17) = v11;
      }

      else
      {
        v17 = *(this + 339);
      }

LABEL_27:
      cnprint::CNPrinter::Print(&v52, &v51, "%s", v12, v13, v14, v15, v16, v17);
      return 0xFFFFFFFFLL;
    }

    return 0xFFFFFFFFLL;
  }

  v29 = (*(*this + 320))(this, &v53);
  if (!v29)
  {
    v40 = *(this + 232);
    *(this + 15) = v54;
    if ((v40 & 1) == 0)
    {
      *(this + 232) = 1;
    }

    if (cnprint::CNPrinter::GetLogLevel(v29) <= 1)
    {
      v52 = 12;
      v51 = 1;
      v49 = (*(*a2 + 16))(a2);
      v50 = v41;
      v42 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, &v49, "AccessoryVehicleSpeed,accepted,ZUPT,iOSTime,%.2lf,speed,%.2lf", *&v90 + v89.i64[1], *(*(a2 + 30) - 8));
      if (*(this + 2735) >= 0)
      {
        LOBYTE(v48) = v42;
      }

      else
      {
        v48 = *(this + 339);
      }

      cnprint::CNPrinter::Print(&v52, &v51, "%s", v43, v44, v45, v46, v47, v48);
    }

    return 0;
  }

  if (cnprint::CNPrinter::GetLogLevel(v29) <= 1)
  {
    v52 = 12;
    v51 = 1;
    v49 = (*(*a2 + 16))(a2);
    v50 = v30;
    v31 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, &v49, "AccessoryVehicleSpeed,rejected,unable to add ZUPT 1,iOSTime,%.2lf", *&v90 + v89.i64[1]);
    if (*(this + 2735) >= 0)
    {
      LOBYTE(v17) = v31;
    }

    else
    {
      v17 = *(this + 339);
    }

    goto LABEL_27;
  }

  return 0xFFFFFFFFLL;
}

uint64_t raven::RavenConvergenceEstimator::HandleEvent(raven::RavenConvergenceEstimator *this, const raven::UserSpeedEvent *a2)
{
  v65[4] = *MEMORY[0x1E69E9840];
  if (*(this + 57) == 1 && *(this + 58) == 1)
  {
    v54 = 0x100000003;
    *&v52[9] = &unk_1F4CDEB28;
    *&v4 = 0x100000001;
    *(&v4 + 1) = 0x100000001;
    v53 = v4;
    v55 = &v56;
    v56 = *(a2 + 13);
    v50 = 0x300000003;
    v48 = &unk_1F4CD5DD0;
    v49 = v4;
    v51 = v52;
    v52[0] = *(a2 + 14) * *(a2 + 14);
    sub_1D0BA002C(v45, 26);
    v45[0] = &unk_1F4CEB738;
    *&v47 = (*(*a2 + 16))(a2);
    *(&v47 + 1) = v5;
    *v44 = v47;
    if ((v49 & 0x80000000) != 0)
    {
      __assert_rtn("Zeros", "cnmatrix.h", 3098, "nr >= 0");
    }

    v61 = 0x100000003;
    v57 = &unk_1F4CDEB28;
    v11 = v63;
    v62 = v63;
    v58 = v49 | 0x100000000;
    v59 = v49;
    v60 = v49;
    if (v49 > 3)
    {
      v14 = &v63[v49];
      bzero(v63, 16 * ((v49 - 1) >> 1));
      *(v14 - 2) = 0;
      *(v14 - 1) = 0;
    }

    else if (v49)
    {
      bzero(v63, 8 * v49);
    }

    if (*(this + 8560))
    {
      if (*(this + 3624) == 174)
      {
        LOWORD(v65[0]) = 2;
        v64 = 2;
        v39 = v44[1] + *&v44[0];
        cnprint::CNPrinter::Print(v65, &v64, "MeasurementAccumulator::AddMeasurement() failed - Out of space,t_meas,%.3lf", v6, v7, v8, v9, v10, SLOBYTE(v39));
      }

      else if (*(this + 8561) == 1)
      {
        if (cnprint::CNPrinter::GetLogLevel(v11) <= 1)
        {
          LOWORD(v65[0]) = 2;
          v64 = 1;
          v41 = v44[1] + *&v44[0];
          cnprint::CNPrinter::Print(v65, &v64, "MeasurementAccumulator::AddMeasurement() failed - Locked,t_meas,%.3lf", v20, v21, v22, v23, v24, SLOBYTE(v41));
        }
      }

      else
      {
        v25 = sub_1D0B7C8AC(v44, this + 1071);
        if (!v25)
        {
          v65[0] = 0;
          v65[1] = 0;
          sub_1D0DF8F60();
        }

        if (cnprint::CNPrinter::GetLogLevel(v25) <= 1)
        {
          LOWORD(v65[0]) = 2;
          v64 = 1;
          v42 = v44[1] + *&v44[0];
          v43 = *(this + 1072) + *(this + 1071);
          cnprint::CNPrinter::Print(v65, &v64, "MeasurementAccumulator::AddMeasurement() failed - Measurement too old,t_meas,%.3lf,t_start,%.3lf", v26, v27, v28, v29, v30, SLOBYTE(v42));
        }
      }
    }

    else if (cnprint::CNPrinter::GetLogLevel(v11) <= 1)
    {
      LOWORD(v65[0]) = 2;
      v64 = 1;
      v40 = v44[1] + *&v44[0];
      cnprint::CNPrinter::Print(v65, &v64, "MeasurementAccumulator::AddMeasurement() failed - Not initialized,t_meas,%.3lf", v15, v16, v17, v18, v19, SLOBYTE(v40));
    }

    LOWORD(v65[0]) = 12;
    v64 = 4;
    v57 = (*(*a2 + 16))(a2);
    v58 = v31;
    v32 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, &v57, "Could not add measurement - user speed");
    if (*(this + 2735) >= 0)
    {
      LOBYTE(v38) = v32;
    }

    else
    {
      v38 = *(this + 339);
    }

    cnprint::CNPrinter::Print(v65, &v64, "%s", v33, v34, v35, v36, v37, v38);
    v45[0] = &unk_1F4CE4300;
    if (v46 < 0)
    {
      operator delete(v45[2]);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return 0xFFFFFFFFLL;
}

void sub_1D0DEF1B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_1D0C537DC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t raven::RavenConvergenceEstimator::HandleEvent(raven::RavenConvergenceEstimator *this, const raven::AltitudeEvent *a2)
{
  v71[4] = *MEMORY[0x1E69E9840];
  if (*(this + 57) == 1)
  {
    if (*(this + 58) == 1)
    {
      v60 = 0x100000003;
      *&v58[9] = &unk_1F4CDEB28;
      *&v4 = 0x100000001;
      *(&v4 + 1) = 0x100000001;
      v59 = v4;
      v61 = &v62;
      v62 = *(a2 + 13);
      v56 = 0x300000003;
      v54 = &unk_1F4CD5DD0;
      v55 = v4;
      v57 = v58;
      v58[0] = *(a2 + 14) * *(a2 + 14);
      sub_1D0BA002C(v50, 2);
      v50[0] = &unk_1F4CEB5B8;
      v52 = (*(*a2 + 16))(a2);
      v53 = v5;
      v11 = (*(*a2 + 16))(a2);
      v13 = v12;
      v48 = v11;
      v49 = v12;
      if ((v55 & 0x80000000) != 0)
      {
        __assert_rtn("Zeros", "cnmatrix.h", 3098, "nr >= 0");
      }

      v67 = 0x100000003;
      v63 = &unk_1F4CDEB28;
      v14 = v69;
      v68 = v69;
      v64 = v55 | 0x100000000;
      v65 = v55;
      v66 = v55;
      if (v55 > 3)
      {
        v16 = &v69[v55];
        bzero(v69, 16 * ((v55 - 1) >> 1));
        *(v16 - 2) = 0;
        *(v16 - 1) = 0;
      }

      else if (v55)
      {
        bzero(v69, 8 * v55);
      }

      if (*(this + 8560))
      {
        if (*(this + 3624) == 174)
        {
          LOWORD(v71[0]) = 2;
          v70 = 2;
          v43 = v13 + v11;
          cnprint::CNPrinter::Print(v71, &v70, "MeasurementAccumulator::AddMeasurement() failed - Out of space,t_meas,%.3lf", v6, v7, v8, v9, v10, SLOBYTE(v43));
        }

        else if (*(this + 8561) == 1)
        {
          if (cnprint::CNPrinter::GetLogLevel(v14) <= 1)
          {
            LOWORD(v71[0]) = 2;
            v70 = 1;
            v45 = v13 + v11;
            cnprint::CNPrinter::Print(v71, &v70, "MeasurementAccumulator::AddMeasurement() failed - Locked,t_meas,%.3lf", v22, v23, v24, v25, v26, SLOBYTE(v45));
          }
        }

        else
        {
          v27 = sub_1D0B7C8AC(&v48, this + 1071);
          if (!v27)
          {
            v71[0] = 0;
            v71[1] = 0;
            sub_1D0DF7964();
          }

          if (cnprint::CNPrinter::GetLogLevel(v27) <= 1)
          {
            LOWORD(v71[0]) = 2;
            v70 = 1;
            v46 = v49 + v48;
            v47 = *(this + 1072) + *(this + 1071);
            cnprint::CNPrinter::Print(v71, &v70, "MeasurementAccumulator::AddMeasurement() failed - Measurement too old,t_meas,%.3lf,t_start,%.3lf", v28, v29, v30, v31, v32, SLOBYTE(v46));
          }
        }
      }

      else if (cnprint::CNPrinter::GetLogLevel(v14) <= 1)
      {
        LOWORD(v71[0]) = 2;
        v70 = 1;
        v44 = v13 + v11;
        cnprint::CNPrinter::Print(v71, &v70, "MeasurementAccumulator::AddMeasurement() failed - Not initialized,t_meas,%.3lf", v17, v18, v19, v20, v21, SLOBYTE(v44));
      }

      LOWORD(v71[0]) = 12;
      v70 = 4;
      v63 = (*(*a2 + 16))(a2);
      v64 = v33;
      v34 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, &v63, "Could not add measurement - altitude");
      if (*(this + 2735) >= 0)
      {
        LOBYTE(v40) = v34;
      }

      else
      {
        v40 = *(this + 339);
      }

      cnprint::CNPrinter::Print(v71, &v70, "%s", v35, v36, v37, v38, v39, v40);
      v15 = 0xFFFFFFFFLL;
      v50[0] = &unk_1F4CE4300;
      if (v51 < 0)
      {
        operator delete(v50[2]);
      }
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0xFFFFFFFFLL;
  }

  v41 = *MEMORY[0x1E69E9840];
  return v15;
}

void sub_1D0DEF86C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_1D0C537DC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0DEF8D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v52 = *MEMORY[0x1E69E9840];
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

  v13 = !v12 && v11 == 8;
  if (v13 && ((v15 = *(a2 + 8), v16 = *(a2 + 12), v15 <= v16) ? (v17 = *(a2 + 12)) : (v17 = *(a2 + 8)), v15 ? (v18 = v16 == 0) : (v18 = 1), !v18 ? (v19 = v17 == 1) : (v19 = 0), v19))
  {
    v26 = *(a1 + 32);
    v50 = *v26;
    v51 = *(v26 + 16);
    v48[0] = 0;
    v48[1] = 0;
    v49 = 0.0;
    if (!cnnavigation::ECEFToLLA(&v50, 1, v48, 1, v43))
    {
      *&v33 = 0x100000001;
      *(&v33 + 1) = 0x100000001;
      *(a4 + 8) = v33;
      **(a4 + 32) = v49 + **(a2 + 32);
      v40 = 0x800000001;
      v38 = &unk_1F4CEC348;
      v41 = v42;
      v39 = xmmword_1D0E9CBE0;
      memset(v42, 0, sizeof(v42));
      sub_1D0B894B0(a5, &v38);
      v34 = *(a5 + 32);
      v35 = v45;
      *v34 = v44;
      v36 = *(a5 + 20);
      v34[v36] = v35;
      v34[2 * v36] = v46;
      v40 = 0x100000001;
      v38 = &unk_1F4CDF418;
      *&v37 = 0x100000001;
      *(&v37 + 1) = 0x100000001;
      v39 = v37;
      v41 = v42;
      *&v42[0] = 0x3FF0000000000000;
      sub_1D0B894B0(a6, &v38);
      result = 0;
      goto LABEL_24;
    }

    LOWORD(v38) = 12;
    v47 = 4;
    v32 = *(a3 + 48) + *(a3 + 40);
    cnprint::CNPrinter::Print(&v38, &v47, "time,%.3lf,h-function failure on line %d: %s() %s", v27, v28, v29, v30, v31, SLOBYTE(v32));
  }

  else
  {
    LOWORD(v38) = 12;
    v43[0] = 4;
    v20 = *(a3 + 48) + *(a3 + 40);
    cnprint::CNPrinter::Print(&v38, v43, "time,%.3lf,h-function failure on line %d: %s() %s", a4, a5, a6, a7, a8, SLOBYTE(v20));
  }

  result = 0xFFFFFFFFLL;
LABEL_24:
  v22 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D0DEFB50(uint64_t a1)
{
  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void raven::RavenConvergenceEstimator::ResetOscillatorStates(raven::RavenConvergenceEstimator *this)
{
  *(this + 7) = *(this + 5);
  v114 = 0x200000002;
  v112 = &unk_1F4CE0268;
  v115 = v116;
  v113 = xmmword_1D0E83F70;
  v116[1] = 0.0;
  v116[2] = 0.0;
  v2 = *(this + 146);
  v3 = *(v2 + 1264) * *(v2 + 1264);
  v116[0] = *(v2 + 1256) * *(v2 + 1256);
  v116[3] = v3;
  v130 = 0x700000006;
  v109 = 0x100000002;
  v107[1] = 0;
  v107[2] = &unk_1F4CE0EA8;
  v108 = xmmword_1D0E83F60;
  v110 = &v111;
  v111 = 0x700000006;
  v105 = 0x100000002;
  v103 = &unk_1F4CE0220;
  v104 = xmmword_1D0E83F60;
  v106 = v107;
  v107[0] = 0;
  v156 = 0x200000002;
  v155 = xmmword_1D0E83F70;
  v154 = &unk_1F4CE0268;
  v157 = v158;
  v127[0] = 0;
  sub_1D0B9F748(&v112, &v154, v127);
  v119 = 0x200000002;
  v118 = xmmword_1D0E83F70;
  v117 = &unk_1F4CE0268;
  v120 = &v121;
  v124 = 0x100000002;
  v123 = xmmword_1D0E83F60;
  v122 = &unk_1F4CE0EA8;
  v125 = v126;
  v128 = 0x100000008;
  *&v127[8] = xmmword_1D0E84520;
  *v127 = &unk_1F4CE4320;
  v129 = &v130;
  sub_1D0B9F868(&v154, &v122, v127, &v117);
  v4 = DWORD1(v118);
  v5 = v118;
  v124 = 0x200000002;
  v122 = &unk_1F4CE0268;
  v125 = v126;
  *&v123 = __PAIR64__(v118, DWORD1(v118));
  DWORD2(v123) = v118 * DWORD1(v118);
  HIDWORD(v123) = DWORD1(v118);
  if (DWORD1(v118))
  {
    v6 = 0;
    v7 = 0;
    v8 = HIDWORD(v118);
    v9 = v120;
    do
    {
      v10 = v6;
      v11 = v7;
      for (i = v5; i; --i)
      {
        v126[v11] = v9[v10];
        v11 += v4;
        ++v10;
      }

      ++v7;
      v6 += v8;
    }

    while (v7 != v4);
  }

  v151 = 0x100000002;
  v150 = xmmword_1D0E83F60;
  v149 = &unk_1F4CE0220;
  v152 = &v153;
  v128 = 0x200000002;
  *&v127[8] = xmmword_1D0E83F70;
  *v127 = &unk_1F4CE0268;
  v129 = &v130;
  v100 = 0x200000002;
  v98 = &unk_1F4CE0268;
  v99 = xmmword_1D0E83F70;
  v101 = &v102;
  sub_1D0B9FACC(&v122, &v149, v127, &v98);
  if (v108 <= DWORD1(v108))
  {
    v13 = DWORD1(v108);
  }

  else
  {
    v13 = v108;
  }

  if (DWORD1(v108))
  {
    v14 = v108 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = v13;
  }

  v128 = 0x100000002;
  *&v127[8] = xmmword_1D0E83F60;
  *v127 = &unk_1F4CE0220;
  v129 = &v130;
  sub_1D0B89390(&v98, &v103, v127);
  v16 = sub_1D0D8C7C8(&v117, v127);
  if (!*(this + 1101))
  {
    sub_1D0B894B0(this + 3632, this + 2872);
    sub_1D0B894B0(this + 3736, this + 2976);
    *&v16 = sub_1D0B894B0(this + 4288, this + 3528).n128_u64[0];
  }

  *(this + 1101) = 1;
  if (!v108 || !DWORD1(v108))
  {
    sub_1D0B894B0(this + 2872, this + 3632);
    sub_1D0B894B0(this + 2976, this + 3736);
    sub_1D0B894B0(this + 3528, this + 4288);
    *(this + 1101) = 1;
    goto LABEL_113;
  }

  *(this + 4400) = 0;
  v17 = *(this + 910);
  v18 = *(this + 911);
  if (v17 <= v18)
  {
    v19 = *(this + 911);
  }

  else
  {
    v19 = *(this + 910);
  }

  if (v18)
  {
    v20 = v17 == 0;
  }

  else
  {
    v20 = 1;
  }

  if (v20)
  {
    v21 = 0;
  }

  else
  {
    v21 = v19;
  }

  if (v15 >= 1)
  {
    v22 = 0;
    v23 = (this + 4568);
    do
    {
      v24 = *(v110 + v22);
      if (v24 < 0 || v24 >= v21)
      {
        *v127 = 2;
        LOBYTE(v122) = 4;
        cnprint::CNLogFormatter::FormatGeneral(v23, "ResetStates(): states must contain valid indices into x, Rxx, and zx.", v16);
        if (*(this + 4591) >= 0)
        {
          LOBYTE(v30) = this - 40;
        }

        else
        {
          v30 = *v23;
        }

        cnprint::CNPrinter::Print(v127, &v122, "%s", v25, v26, v27, v28, v29, v30);
      }

      v22 += 4;
    }

    while (4 * v15 != v22);
  }

  v128 = 0x800000001;
  *v127 = &unk_1F4CE13B8;
  v129 = &v130;
  v31 = v21 - 1;
  if (v21 == 1)
  {
    v39 = 0;
    *&v42 = 0x100000001;
    *(&v42 + 1) = 0x100000001;
    *&v127[8] = v42;
    LODWORD(v130) = 0;
    v40 = 1;
    v41 = 1;
  }

  else if (v21 <= 0)
  {
    v40 = 0;
    v41 = 0;
    *&v127[8] = 0;
    *&v127[16] = 0;
    v39 = 1;
  }

  else
  {
    v32 = 0;
    *&v127[16] = v21;
    *&v127[20] = 1;
    v33 = vdupq_n_s64(v21 - 1);
    v34 = xmmword_1D0E84440;
    v35 = xmmword_1D0E7DD30;
    v36 = vdupq_n_s64(4uLL);
    v37 = v131;
    *&v127[8] = 1;
    *&v127[12] = v21;
    do
    {
      v38 = vmovn_s64(vcgeq_u64(v33, v35));
      if (vuzp1_s16(v38, *v33.i8).u8[0])
      {
        *(v37 - 3) = v32;
      }

      if (vuzp1_s16(v38, *&v33).i8[2])
      {
        *(v37 - 2) = v32 + 1;
      }

      if (vuzp1_s16(*&v33, vmovn_s64(vcgeq_u64(v33, *&v34))).i32[1])
      {
        *(v37 - 1) = v32 + 2;
        *v37 = v32 + 3;
      }

      v32 += 4;
      v34 = vaddq_s64(v34, v36);
      v35 = vaddq_s64(v35, v36);
      v37 += 4;
    }

    while (((v21 + 3) & 0xFFFFFFFC) != v32);
    v39 = 0;
    v40 = 1;
    v41 = v21;
  }

  v156 = 0x100000008;
  v154 = &unk_1F4CE43F8;
  v157 = v158;
  *&v155 = __PAIR64__(v40, v41);
  DWORD2(v155) = v41 * v40;
  HIDWORD(v155) = v41;
  if (v41)
  {
    v43 = 0;
    for (j = 0; j != v41; ++j)
    {
      if ((v39 & 1) == 0)
      {
        v45 = 0;
        do
        {
          v158[j + HIDWORD(v155) * v45] = *&v131[4 * v43 - 4 + 4 * v45];
          ++v45;
        }

        while (v40 != v45);
      }

      v43 += v40;
    }
  }

  if (v15 >= 1)
  {
    v46 = v110;
    v47 = v15;
    do
    {
      v48 = *v46++;
      v158[v48] = -1;
      --v47;
    }

    while (v47);
  }

  sub_1D0BFC4C8(&v149, v21, 1);
  v128 = 0x800000001;
  *v127 = &unk_1F4CE13B8;
  v129 = &v130;
  if (v15 == 1)
  {
    v49 = 0;
    *&v50 = 0x100000001;
    *(&v50 + 1) = 0x100000001;
    *&v127[8] = v50;
    LODWORD(v130) = 0;
    v51 = 1;
    v52 = 1;
  }

  else if (v15 <= 0)
  {
    v51 = 0;
    v52 = 0;
    *&v127[8] = 0;
    *&v127[16] = 0;
    v49 = 1;
  }

  else
  {
    v53 = 0;
    *&v127[16] = v15;
    *&v127[20] = 1;
    v54 = vdupq_n_s64(v15 - 1);
    v55 = xmmword_1D0E84440;
    v56 = xmmword_1D0E7DD30;
    v57 = vdupq_n_s64(4uLL);
    v58 = v131;
    *&v127[8] = 1;
    *&v127[12] = v15;
    do
    {
      v59 = vmovn_s64(vcgeq_u64(v54, v56));
      if (vuzp1_s16(v59, *v54.i8).u8[0])
      {
        *(v58 - 3) = v53;
      }

      if (vuzp1_s16(v59, *&v54).i8[2])
      {
        *(v58 - 2) = v53 + 1;
      }

      if (vuzp1_s16(*&v54, vmovn_s64(vcgeq_u64(v54, *&v55))).i32[1])
      {
        *(v58 - 1) = v53 + 2;
        *v58 = v53 + 3;
      }

      v53 += 4;
      v55 = vaddq_s64(v55, v57);
      v56 = vaddq_s64(v56, v57);
      v58 += 4;
    }

    while (((v15 + 3) & 0xFFFFFFFC) != v53);
    v49 = 0;
    v51 = 1;
    v52 = v15;
  }

  v146 = 0x100000008;
  v141 = &unk_1F4CE43F8;
  v147 = v148;
  v142 = v52;
  v143 = v51;
  v144 = v52 * v51;
  v145 = v52;
  if (v52)
  {
    v60 = 0;
    for (k = 0; k != v52; ++k)
    {
      if ((v49 & 1) == 0)
      {
        v62 = 0;
        do
        {
          v148[k + v145 * v62] = *&v131[4 * v60 - 4 + 4 * v62];
          ++v62;
        }

        while (v51 != v62);
      }

      v60 += v51;
    }
  }

  sub_1D0DF9968(v127, &v149, &v141);
  sub_1D0DF927C(v127, SDWORD2(v108), v110);
  v63 = v21 - v15;
  if (v21 > v15)
  {
    LODWORD(v64) = 0;
    v65 = v157;
    v66 = v152;
    v67 = v15;
    do
    {
      v64 = v64;
      do
      {
        v68 = v65[v64++];
      }

      while (v68 == -1);
      *(v66 + v67++) = v68;
    }

    while (v67 != v21);
  }

  sub_1D0DF9330(this + 2864, v21, &v149);
  sub_1D0DFA168(v140, &v141);
  v128 = 0x800000001;
  *v127 = &unk_1F4CE13B8;
  v129 = &v130;
  v69 = (v31 - v15);
  if (v31 == v15)
  {
    *&v70 = 0x100000001;
    *(&v70 + 1) = 0x100000001;
    *&v127[8] = v70;
    LODWORD(v130) = v15;
    v71 = 1;
    v72 = 1;
  }

  else if (v31 - v15 < 0)
  {
    v71 = 0;
    v72 = 0;
    *&v127[8] = 0;
    *&v127[16] = 0;
    LOBYTE(v69) = 1;
  }

  else
  {
    v72 = v69 + 1;
    *&v127[8] = 1;
    *&v127[12] = v69 + 1;
    *&v127[16] = v69 + 1;
    *&v127[20] = 1;
    v73 = vdupq_n_s64(v69);
    v74 = v131;
    v75 = (4 * ~(v69 >> 2)) | 0xFFFFFFFF80000000;
    v76 = xmmword_1D0E84440;
    v77 = xmmword_1D0E7DD30;
    v78 = 13;
    v79 = vdupq_n_s64(4uLL);
    do
    {
      v80 = vmovn_s64(vcgeq_u64(v73, v77));
      if (vuzp1_s16(v80, *v73.i8).u8[0])
      {
        *(v74 - 3) = v15 + v78 - 13;
      }

      if (vuzp1_s16(v80, *&v73).i8[2])
      {
        *(v74 - 2) = v15 + v78 - 12;
      }

      if (vuzp1_s16(*&v73, vmovn_s64(vcgeq_u64(v73, *&v76))).i32[1])
      {
        *(v74 - 1) = v15 + v78 - 11;
        *v74 = v15 + v78 - 10;
      }

      v76 = vaddq_s64(v76, v79);
      v77 = vaddq_s64(v77, v79);
      v78 += 4;
      v74 += 4;
    }

    while (v75 + v78 != 13);
    LOBYTE(v69) = 0;
    v71 = 1;
  }

  v137 = 0x100000008;
  v132 = &unk_1F4CE43F8;
  v138 = v139;
  v133 = v72;
  v134 = v71;
  v135 = v72 * v71;
  v136 = v72;
  if (v72)
  {
    v81 = 0;
    for (m = 0; m != v72; ++m)
    {
      if ((v69 & 1) == 0)
      {
        v83 = 0;
        do
        {
          v139[m + v136 * v83] = *&v131[4 * v81 - 4 + 4 * v83];
          ++v83;
        }

        while (v71 != v83);
      }

      v81 += v71;
    }
  }

  sub_1D0BA4B2C(v127, this + 3632, &v141);
  sub_1D0BA556C(v127, &v103);
  sub_1D0BA16B8(v127, this + 3736, v140, v140);
  sub_1D0B9F65C(v127, &v98);
  if ((v15 & 0x80000000) != 0)
  {
    v96 = "nr >= 0";
    v97 = 3098;
    goto LABEL_119;
  }

  if (v63 < 0)
  {
    v96 = "nc >= 0";
    v97 = 3099;
LABEL_119:
    __assert_rtn("Zeros", "cnmatrix.h", v97, v96);
  }

  v124 = 0x800000008;
  v122 = &unk_1F4CE43B0;
  v125 = v126;
  v84 = v63 * v15;
  LODWORD(v123) = v15;
  DWORD1(v123) = v21 - v15;
  DWORD2(v123) = v63 * v15;
  HIDWORD(v123) = v15;
  if (v63 * v15 > 3)
  {
    v85 = &v126[v84];
    bzero(v126, 16 * ((v84 - 1) >> 1));
    *(v85 - 2) = 0;
    *(v85 - 1) = 0;
  }

  else if (v84 >= 1)
  {
    bzero(v126, 8 * (v63 * v15));
  }

  sub_1D0BA16B8(v127, this + 3736, v140, &v132);
  sub_1D0B9F65C(v127, &v122);
  sub_1D0BA4B2C(v127, this + 4288, &v141);
  sub_1D0BA556C(v127, &v117);
  sub_1D0BFC4C8(v127, v21, 1);
  if (v21 >= 1)
  {
    v86 = 0;
    v87 = v152;
    v88 = v129;
    do
    {
      *(v88 + *(v87 + v86)) = v86;
      ++v86;
    }

    while (v21 != v86);
  }

  sub_1D0DF9330(this + 2864, v21, v127);
LABEL_113:
  LOWORD(v122) = 12;
  LOBYTE(v117) = 2;
  *v127 = *(this + 5);
  v89 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, v127, "Resetting estimator oscillator states.");
  if (*(this + 2735) >= 0)
  {
    LOBYTE(v95) = v89;
  }

  else
  {
    v95 = *(this + 339);
  }

  cnprint::CNPrinter::Print(&v122, &v117, "%s", v90, v91, v92, v93, v94, v95);
}