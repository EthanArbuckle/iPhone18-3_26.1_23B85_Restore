void sub_1D0BF569C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  v37 = *(v35 - 200);
  if (v37)
  {
    operator delete(v37);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **sub_1D0BF5758(void *a1, unsigned __int8 *a2)
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
      v5 = v2 % a1[1];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (result = *v6) == 0)
  {
LABEL_18:
    v9 = *a2;
    sub_1D0D305AC();
  }

  while (1)
  {
    v8 = result[1];
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
    result = *result;
    if (!result)
    {
      goto LABEL_18;
    }
  }

  if (*(result + 16) != v2)
  {
    goto LABEL_17;
  }

  return result;
}

void sub_1D0BF5968(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void raven::RavenDeltaVIOEstimateActiveObject::HandleEvent(raven::RavenDeltaVIOEstimateActiveObject *this, int8x16_t *a2, double a3, int8x16_t a4)
{
  if ((*(this + 224) & 1) == 0)
  {
    *v76 = 12;
    LOBYTE(v71[0]) = 2;
    (*(*this + 16))(__p, this, a2);
    if (v75 >= 0)
    {
      v26 = __p;
    }

    else
    {
      LOBYTE(v26) = __p[0];
    }

    cnprint::CNPrinter::Print(v76, v71, "%s: not configured", v21, v22, v23, v24, v25, v26);
    if ((SHIBYTE(v75) & 0x80000000) == 0)
    {
      return;
    }

    v27 = __p[0];
    goto LABEL_16;
  }

  v5 = *(this + 1265);
  if (!v5 || !*(this + 480))
  {
    return;
  }

  *__p = *(*(*(this + 1261) + (((v5 + *(this + 1264) - 1) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 1088 * ((v5 + *(this + 2528) - 1) & 0xF));
  v7 = CNTimeSpan::operator-(&a2->i64[1], __p, *__p, a4);
  if (v8 + v7 > 6.0)
  {
    if (cnprint::CNPrinter::GetLogLevel(v7) < 2)
    {
      LOWORD(v71[0]) = 12;
      LOBYTE(v65) = 1;
      (*(*this + 16))(__p, this);
      v9 = SHIBYTE(v75);
      v10 = __p[0];
      v12 = a2->i64[1];
      v11 = a2[1].i64[0];
      v13 = *(this + 1265) + *(this + 1264) - 1;
      *v76 = *(*(*(this + 1261) + ((v13 >> 1) & 0x7FFFFFFFFFFFFFF8)) + 1088 * (v13 & 0xF));
      CNTimeSpan::operator-(&a2->i64[1], v76, *v76, v14);
      if (v9 >= 0)
      {
        v20 = __p;
      }

      else
      {
        LOBYTE(v20) = v10;
      }

      cnprint::CNPrinter::Print(v71, &v65, "%s: ravel_sol t,%.3lf VIO Buffer is flushed due to no VIO activity for %.3lf [s]", v15, v16, v17, v18, v19, v20);
      if (SHIBYTE(v75) < 0)
      {
        operator delete(__p[0]);
      }
    }

    (*(*this + 40))(this);
    return;
  }

  if (a2[13].i8[1] != 2 || a2[91].i8[8] != 1)
  {
    return;
  }

  v28 = a2[13].u8[0];
  if ((v28 - 2) >= 2)
  {
    if (v28 == 1)
    {
      if (*(this + 5808) == 1)
      {

        memcpy(this + 3160, &a2->u64[1], 0xA51uLL);
      }

      else
      {
        *(this + 394) = &unk_1F4CEF7A8;
        memcpy(this + 3160, &a2->u64[1], 0xA51uLL);
        *(this + 5808) = 1;
      }
    }
  }

  else
  {
    if ((*(this + 3144) & 1) == 0)
    {
      *(this + 61) = &unk_1F4CEF7A8;
      memcpy(this + 496, &a2->u64[1], 0xA51uLL);
      *(this + 3144) = 1;
      return;
    }

    v29 = a2[73];
    v81 = *(this + 1656);
    v82 = v29;
    v30 = CNTimeSpan::operator-(&v82, &v81, v81, v29);
    if (v31 + v30 >= 3.0)
    {
      memcpy(this + 496, &a2->u64[1], 0xA51uLL);
      if (*(this + 264))
      {
        v77 = 0x100000003;
        *&v76[8] = xmmword_1D0E7DCC0;
        *v76 = &unk_1F4CDEB28;
        v78 = &v79;
        v79 = a2[92];
        v80 = a2[93].i64[0];
        if (*(this + 476))
        {
          if (!*(this + 477))
          {
            return;
          }

          goto LABEL_37;
        }

        sub_1D0B894B0(this + 9784, v76);
        *(this + 476) = 1;
        sub_1D0BD2CA4(__p, *v78, v78[1], v78[2]);
        if (__p[1])
        {
          sub_1D0B894B0(this + 9912, &v75);
          *(this + 477) = 1;
LABEL_37:
          sub_1D0C4E2D8(v76, this + 9784, __p);
          sub_1D0D5625C(this + 9912, __p, v71);
          v32 = v73;
          v33 = hypot(*v73, v73[1]);
          *(this + 40) = v33;
          *(this + 328) = 1;
          if (v33 >= 1.0)
          {
            v34 = v32[1];
            if (fabs(*v32) > 0.005 || fabs(v34) > 0.005)
            {
              v35 = atan2(*v32, v34);
              *(this + 38) = v35;
              *(this + 312) = 1;
              if (v35 < 0.0)
              {
                *(this + 38) = v35 + 6.28318531;
              }
            }
          }

          if (*(this + 5808) == 1 && *(this + 4616) == 1)
          {
            v67 = 0x100000003;
            v66 = xmmword_1D0E7DCC0;
            v65 = &unk_1F4CDEB28;
            v68 = &v69;
            v69 = *(this + 289);
            v70 = *(this + 580);
            sub_1D0C4E2D8(&v65, this + 9784, v64);
            sub_1D0D5625C(this + 9912, v64, v62);
            v36 = *v63;
            v37 = v63[1];
            v38 = hypot(*v63, v37);
            if (v38 >= 1.0 && (fabs(v36) > 0.005 || fabs(v37) > 0.005))
            {
              v61 = v38;
              v39 = atan2(v36, v37);
              *(this + 34) = v39;
              *(this + 280) = 1;
              if (v39 < 0.0)
              {
                v39 = v39 + 6.28318531;
                *(this + 34) = v39;
              }

              *(this + 36) = v61;
              *(this + 296) = 1;
              if (*(this + 312) == 1)
              {
                v40 = vabdd_f64(*(this + 38), v39);
                if (6.28318531 - v40 >= v40)
                {
                  v41 = v40;
                }

                else
                {
                  v41 = 6.28318531 - v40;
                }

                *(this + 32) = v61 * v41;
              }
            }
          }

          v42 = *(this + 1261);
          v43 = *(this + 1264);
          v44 = (v42 + 8 * (v43 >> 4));
          if (*(this + 1262) == v42)
          {
            v45 = 0;
            v48 = 0;
            v47 = (v42 + 8 * ((*(this + 1265) + v43) >> 4));
          }

          else
          {
            v45 = *v44 + 1088 * (*(this + 1264) & 0xFLL);
            v46 = *(this + 1265) + v43;
            v47 = (v42 + 8 * (v46 >> 4));
            v48 = *v47 + 1088 * (v46 & 0xF);
          }

          v55 = sub_1D0E3FD90(v44, v45, v47, v48, a2[73].i64);
          v56 = *(this + 1261);
          if (*(this + 1262) == v56)
          {
            v58 = 0;
          }

          else
          {
            v57 = *(this + 1265) + *(this + 1264);
            v58 = *(v56 + ((v57 >> 1) & 0x7FFFFFFFFFFFFFF8)) + 1088 * (v57 & 0xF);
          }

          if (v58 != v55)
          {
            sub_1D0C4E2D8(v55 + 232, this + 376, &v65);
            v59 = v68;
            *(this + 55) = hypot(*v68, v68[1]);
            *(this + 448) = 1;
            v60 = atan2(*v59, v59[1]);
            *(this + 45) = v60;
            *(this + 368) = 1;
            if (v60 < 0.0)
            {
              *(this + 45) = v60 + 6.28318531;
            }
          }

          return;
        }

        LOWORD(v65) = 12;
        v64[0] = 2;
        (*(*this + 16))(v71, this);
        if (v72 >= 0)
        {
          v54 = v71;
        }

        else
        {
          LOBYTE(v54) = v71[0];
        }

        cnprint::CNPrinter::Print(&v65, v64, "%s, curr_ravel_sol,%.3lf Raven Solution position Jecef2enu computation failed.", v49, v50, v51, v52, v53, v54);
        if ((v72 & 0x80000000) == 0)
        {
          return;
        }

        v27 = v71[0];
LABEL_16:
        operator delete(v27);
      }
    }
  }
}

void sub_1D0BF61C8(uint64_t a1, raven::RavenMapVectorActiveObject **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0B9FD10(v15, a3, a3, a4, a5, a6, a7, a8);
  raven::RavenMapVectorActiveObject::HandleEvent(v8, v15, v9, v10, v11, v12, v13, v14);
}

uint64_t raven::RavenPositionContextEstimator::PopulateEvent(raven::RavenPositionContextEstimator *this, raven::PositionContextStateEvent *a2)
{
  if ((*(this + 1) & 1) == 0)
  {
    v31 = 12;
    v30 = 2;
    v12 = cnprint::CNLogFormatter::FormatWarning((this + 424), "RavenPositionContextEstimator::PopulateEvent(),estimator is not configured");
    if (*(this + 447) >= 0)
    {
      LOBYTE(v18) = v12;
    }

    else
    {
      v18 = *(this + 53);
    }

    cnprint::CNPrinter::Print(&v31, &v30, "%s", v13, v14, v15, v16, v17, v18);
    return 0xFFFFFFFFLL;
  }

  if ((*this & 1) == 0)
  {
    v29 = 12;
    v28 = 2;
    v19 = cnprint::CNLogFormatter::FormatWarning((this + 424), "RavenPositionContextEstimator::PopulateEvent(),estimator is not initialized");
    if (*(this + 447) >= 0)
    {
      LOBYTE(v25) = v19;
    }

    else
    {
      v25 = *(this + 53);
    }

    cnprint::CNPrinter::Print(&v29, &v28, "%s", v20, v21, v22, v23, v24, v25);
    return 0xFFFFFFFFLL;
  }

  *(a2 + 104) = *(this + 400);
  *(a2 + 7) = *(this + 408);
  if (cnprint::CNPrinter::GetLogLevel(this) <= 1)
  {
    v27 = 12;
    v26 = 1;
    v4 = cnprint::CNLogFormatter::FormatGeneral(this + 424, a2 + 8, "RavenPositionContextEstimator::PopulateEvent(),estimated_state,%u,prob_indoor,%.3lf,prob_outdoor,%.3lf", *(a2 + 104), *(a2 + 14), *(a2 + 15));
    if (*(this + 447) >= 0)
    {
      LOBYTE(v10) = v4;
    }

    else
    {
      v10 = *(this + 53);
    }

    cnprint::CNPrinter::Print(&v27, &v26, "%s", v5, v6, v7, v8, v9, v10);
  }

  return 0;
}

void sub_1D0BF638C(cnprint::CNPrinter *a1, uint64_t a2)
{
  v4 = *a1;
  if (cnprint::CNPrinter::GetLogLevel(a1) <= 1)
  {
    v14 = 12;
    v13 = 1;
    if (*(a2 + 23) >= 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = *a2;
    }

    v6 = cnprint::CNLogFormatter::FormatGeneral(v4 + 2712, a1 + 8, "Could not initialize - %s", v5);
    if (*(v4 + 2735) >= 0)
    {
      LOBYTE(v12) = v6;
    }

    else
    {
      v12 = *(v4 + 2712);
    }

    cnprint::CNPrinter::Print(&v14, &v13, "%s", v7, v8, v9, v10, v11, v12);
  }
}

uint64_t raven::RavenIonosphereEstimator::IsSane(raven::RavenIonosphereEstimator *this)
{
  if (!*(this + 9))
  {
    return 0;
  }

  v2 = 1088;
  if (!*(this + 1567))
  {
    v2 = 8;
  }

  v19 = 0x10000000ALL;
  v17 = &unk_1F4CEAE48;
  v18 = xmmword_1D0E87BE0;
  v20 = &v21;
  sub_1D0B894B0(&v17, this + v2 + 4088);
  v4 = *v20;
  v5 = v20[1];
  v6 = *(this + 504);
  if (*v20 >= *(v6 + 3112) && v4 <= *(v6 + 3120) && v5 >= 0.0)
  {
    return 1;
  }

  if (cnprint::CNPrinter::GetLogLevel(v3) <= 1)
  {
    v16 = 12;
    v15 = 1;
    v7 = cnprint::CNLogFormatter::FormatGeneral(this + 4040, this + 32, "Sanity failure,thin-shell height,%.1lf,vtec0,%.1lf", v4, v5);
    if (*(this + 4063) >= 0)
    {
      LOBYTE(v13) = v7;
    }

    else
    {
      v13 = *(this + 505);
    }

    cnprint::CNPrinter::Print(&v16, &v15, "%s", v8, v9, v10, v11, v12, v13);
  }

  return 0;
}

uint64_t sub_1D0BF656C(uint64_t a1)
{
  v1 = *(a1 + 2176);
  if (v1 == 2)
  {
    return 1;
  }

  if (v1 != 1)
  {
    if (!*(a1 + 2176))
    {
      (*(*a1 + 40))(v11, a1);
      v28 = 0xA0000000ALL;
      v26 = &unk_1F4CE2180;
      v27 = xmmword_1D0E84630;
      v29 = &v30;
      v23 = 0xA0000000ALL;
      v21 = &unk_1F4CE2180;
      v22 = xmmword_1D0E84630;
      v24 = &v25;
      v18 = 0x10000000ALL;
      v17 = xmmword_1D0E87BE0;
      v16 = &unk_1F4CED1E8;
      v19 = &v20;
      v13 = 0x100000884;
      v15 = 0;
      v11[120] = &unk_1F4CED278;
      v14 = 0;
      v12 = xmmword_1D0EA1290;
      sub_1D0E1ADFC();
    }

    LOWORD(v26) = 2;
    LOBYTE(v21) = 5;
    v4 = cnprint::CNLogFormatter::FormatGeneral((a1 + 2344), "LeastSquaresEstimator::IsObservable called with unexpected observability state %hhu", v1);
    if (*(a1 + 2367) >= 0)
    {
      LOBYTE(v10) = v4;
    }

    else
    {
      v10 = *(a1 + 2344);
    }

    cnprint::CNPrinter::Print(&v26, &v21, "%s", v5, v6, v7, v8, v9, v10);
  }

  return 0;
}

uint64_t raven::RavenIonosphereEstimator::IsConverged(raven::RavenIonosphereEstimator *this)
{
  if (*(this + 9) != 1)
  {
    return 0;
  }

  v9 = v1;
  v10 = v2;
  result = raven::RavenIonosphereEstimator::IsSane(this);
  if (result)
  {
    if (*(this + 9))
    {
      result = sub_1D0BF656C(this + 4088);
      if (!result)
      {
        return result;
      }

      sub_1D0BF22F0(this + 4088, v6);
      v5 = *(this + 504);
      if (*v8 <= v5[373] * v5[373] && v8[v7 + 1] <= v5[374] * v5[374] && v8[2 * v7 + 2] <= v5[375] * v5[375] && v8[3 * v7 + 3] <= v5[376] * v5[376] && v8[4 * v7 + 4] <= v5[377] * v5[377] && v8[5 * v7 + 5] <= v5[378] * v5[378] && v8[6 * v7 + 6] <= v5[379] * v5[379] && v8[7 * v7 + 7] <= v5[380] * v5[380] && v8[8 * v7 + 8] <= v5[381] * v5[381])
      {
        return v8[9 * v7 + 9] <= v5[382] * v5[382];
      }
    }

    return 0;
  }

  return result;
}

void sub_1D0BF69A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
    if (v20 != (off_1F4CEF2E0 & 0x7FFFFFFFFFFFFFFFLL) && strcmp(v20, (off_1F4CEF2E0 & 0x7FFFFFFFFFFFFFFFLL)))
    {
      v26.__vftable = 0;
      std::bad_cast::bad_cast(&v26);
      v26.__vftable = &unk_1F4CE4880;
      sub_1D0DC7F8C();
    }

    v21 = *(a2 + 16);
    *a1 = &unk_1F4CEF2B8;

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
    *a1 = &unk_1F4CEF2B8;
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
    v19 = vdupq_n_s64(0x7FF8000000000000uLL);
    *(a1 + 128) = v19;
    *(a1 + 144) = 0x7FF8000000000000;
    *(a1 + 152) = 0;
    *(a1 + 160) = 0;
    *(a1 + 168) = v19;
    *(a1 + 184) = v19;
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
    *(a1 + 384) = 0u;
    *(a1 + 400) = 0u;
    *(a1 + 416) = 0u;
  }
}

void sub_1D0BF6C44(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0BF2DF0(v25, a3, a3, a4, a5, a6, a7, a8);
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

void sub_1D0BF6FEC(_Unwind_Exception *a1)
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

uint64_t raven::RavenIntegrityEstimator::HandleEvent(raven::SolutionChecker **this, const raven::RavenSolutionEvent *a2, raven::RavenSolutionEvent *a3)
{
  v5 = raven::SolutionChecker::HandleEvent(this[211], a2, a3);
  if (!v5)
  {
    v9 = *(a3 + 208);
    if (*(a3 + 209) == 2)
    {
      if (!sub_1D0B9AF58(this + 4, &v9))
      {
        goto LABEL_6;
      }

      v6 = sub_1D0B9AF58(this + 4, &v9);
      if (!v6)
      {
        sub_1D0C543A8("unordered_map::at: key not found");
      }

      if (sub_1D0B8E6A8(a3 + 146, v6 + 149))
      {
LABEL_6:
        v10 = &v9;
        v7 = sub_1D0BF5758(this + 4, &v9);
        memcpy(v7 + 4, a3 + 8, 0xA51uLL);
      }
    }
  }

  return v5;
}

BOOL raven::SolutionChecker::GetListOfEstimatorsToCheckAgainst(uint64_t a1, _BYTE *a2, void *a3)
{
  if (*a2 != 1)
  {
    v6 = *(a1 + 16);
    v12 = 1;
    if (sub_1D0B9AF58((v6 + 16), &v12))
    {
      v11 = 1;
      sub_1D0BF71E4(a3, &v11);
    }

    if (*a2 == 3)
    {
      v7 = *(a1 + 16);
      v10 = 2;
      if (sub_1D0B9AF58((v7 + 16), &v10))
      {
        v9 = 2;
        sub_1D0BF71E4(a3, &v9);
      }
    }
  }

  return *a3 == a3[1];
}

void sub_1D0BF71E4(uint64_t a1, _BYTE *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = &v4[-*a1];
    v8 = (v7 + 1);
    if ((v7 + 1) < 0)
    {
      sub_1D0C5663C();
    }

    v9 = v3 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = &v4[-*a1];
    *v7 = *a2;
    v5 = v7 + 1;
    memcpy(0, v6, v11);
    *a1 = 0;
    *(a1 + 8) = v7 + 1;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

uint64_t raven::SolutionChecker::PerformSpeedCheck(raven::SolutionChecker *this, raven::RavenSolutionEvent *a2, BOOL *a3)
{
  v133[0] = *(a2 + 208);
  if ((*(a2 + 1344) & 1) == 0)
  {
    if (cnprint::CNPrinter::GetLogLevel(this) <= 1)
    {
      LOWORD(v130) = 12;
      LOBYTE(v127[0]) = 1;
      v16 = (*(*a2 + 16))(a2);
      v116 = v17 + v16;
      cnprint::CNPrinter::Print(&v130, v127, "t,%.3lf,SolutionChecker: est, %u. RavenSolution under test has speed marked invalid. Exiting with check passed return value. Continuing with remaining checks.", v18, v19, v20, v21, v22, SLOBYTE(v116));
    }

    v14 = 0;
    *a3 = 1;
    return v14;
  }

  v130 = 0;
  v131 = 0;
  v132 = 0;
  v6 = raven::SolutionChecker::GetListOfEstimatorsToCheckAgainst(this, v133, &v130);
  if (v6)
  {
    if (cnprint::CNPrinter::GetLogLevel(v6) <= 1)
    {
      LOWORD(v127[0]) = 12;
      v129 = 1;
      v7 = (*(*a2 + 16))(a2);
      v115 = v8 + v7;
      cnprint::CNPrinter::Print(v127, &v129, "t,%.3lf,SolutionChecker: Could not find any RavenSolutions to perform the speed check against. Exiting with check passed return value.", v9, v10, v11, v12, v13, SLOBYTE(v115));
    }

    v14 = 0;
    *a3 = 0;
    v15 = v130;
    if (v130)
    {
      goto LABEL_66;
    }

    return v14;
  }

  v23 = v131;
  __p = v130;
  if (v130 == v131)
  {
LABEL_57:
    v14 = 0;
    v15 = __p;
    *a3 = 1;
    if (__p)
    {
      goto LABEL_66;
    }

    return v14;
  }

  v24 = v130;
  while (1)
  {
    v129 = *v24;
    v25 = sub_1D0B9AF58((*(this + 2) + 16), &v129);
    v26 = v25;
    if (!v25)
    {
      sub_1D0C543A8("unordered_map::at: key not found");
    }

    v27 = *(v25 + 172);
    if (!*(v25 + 1368) || ((v28 = v25[172], *&v27 > -1) ? (v29 = ((*&v27 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) : (v29 = 1), v29 ? (v30 = (*&v27 - 1) >= 0xFFFFFFFFFFFFFLL) : (v30 = 0), v30 ? (v31 = (*&v27 & 0x7FFFFFFFFFFFFFFFLL) == 0) : (v31 = 1), !v31))
    {
      if (cnprint::CNPrinter::GetLogLevel(v25) <= 1)
      {
        LOWORD(v127[0]) = 12;
        v128 = 1;
        v57 = (*(*a2 + 16))(a2);
        v122 = *(v26 + 1368);
        v117 = v58 + v57;
        cnprint::CNPrinter::Print(v127, &v128, "t,%.3lf,SolutionChecker: est, %u. solution_to_check_against has an invalid speed,validity,%d,speed,%.2lf. Cannot proceed with speed check. Marking the RavenSolution as unhealthy. Exiting with check passed return value.", v59, v60, v61, v62, v63, SLOBYTE(v117));
      }

LABEL_61:
      v64 = 0;
      v14 = 0;
      *(a2 + 209) = 1;
      goto LABEL_65;
    }

    v32 = *(v25 + 176);
    if ((*&v32 <= -1 || ((*&v32 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (*&v32 - 1) >= 0xFFFFFFFFFFFFFLL)
    {
      LOWORD(v127[0]) = 12;
      v128 = 4;
      v65 = (*(*a2 + 16))(a2);
      v118 = v66 + v65;
      cnprint::CNPrinter::Print(v127, &v128, "t,%.3lf,SolutionChecker: est, %u. solution_to_check_against has a non-finite or non-positive user speed covariance diagonal term, pss, %.2lf. Marking the RavenSolution as unhealthy. Exiting with check passed return value.", v67, v68, v69, v70, v71, SLOBYTE(v118));
      v64 = 0;
      v14 = 0;
      *(a2 + 209) = 1;
      goto LABEL_65;
    }

    v35 = *(a2 + 173);
    if ((*&v35 <= -1 || ((*&v35 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (*&v35 - 1) >= 0xFFFFFFFFFFFFFLL)
    {
      LOWORD(v127[0]) = 12;
      v128 = 4;
      v72 = (*(*a2 + 16))(a2);
      v119 = v73 + v72;
      cnprint::CNPrinter::Print(v127, &v128, "t,%.3lf,SolutionChecker: est, %u. RavenSolution under test has a non-finite or non-positive user speed covariance diagonal term, pss, %.2lf. Exiting with check failed return value.", v74, v75, v76, v77, v78, SLOBYTE(v119));
      goto LABEL_64;
    }

    v38 = *(a2 + 169);
    if ((*&v38 <= -1 || ((*&v38 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (*&v38 - 1) >= 0xFFFFFFFFFFFFFLL && (*&v38 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      LOWORD(v127[0]) = 12;
      v128 = 4;
      v79 = (*(*a2 + 16))(a2);
      v120 = v80 + v79;
      cnprint::CNPrinter::Print(v127, &v128, "t,%.3lf,SolutionChecker: est, %u. RavenSolution under test has an invalid speed value despite being marked as valid,%.2lf. Exiting with check failed return value.", v81, v82, v83, v84, v85, SLOBYTE(v120));
LABEL_64:
      v64 = 0;
      v14 = 0xFFFFFFFFLL;
      goto LABEL_65;
    }

    v42 = (this + 88);
    if (v129 != 1)
    {
      v42 = (this + 80);
      if (v129 != 2)
      {
        LOWORD(v127[0]) = 12;
        v128 = 4;
        v87 = (*(*a2 + 16))(a2);
        v121 = v88 + v87;
        cnprint::CNPrinter::Print(v127, &v128, "t,%.3lf,SolutionChecker: invalid estimator to check against during speed check, exiting with check passed return value and continuing other checks", v89, v90, v91, v92, v93, SLOBYTE(v121));
        v14 = 0;
        v64 = 1;
        goto LABEL_65;
      }
    }

    v43 = *v42;
    LogLevel = cnprint::CNPrinter::GetLogLevel(v25);
    v47 = vabdd_f64(v27, v38);
    v48 = v47 / sqrt(v32 + v35);
    if (!LogLevel)
    {
      LOWORD(v127[0]) = 12;
      v128 = 0;
      v49 = (*(*a2 + 16))(a2);
      v51 = v50 + v49;
      v123 = *(this + 8);
      cnprint::CNPrinter::Print(v127, &v128, "t,%.3lf,SolutionChecker: est, %u. speed_difference_from_solution_to_check_against check results, difference, %.2lf, tolerance, %.2lf, consistency, %.2lf, threshold, %.2lf, solution_to_check_against_var, %.2lf, sol_var, %.2lf.", v52, v53, v54, v55, v56, SLOBYTE(v51));
    }

    if (v47 > v43)
    {
      v45.i64[0] = *(this + 8);
      if (v48 > *v45.i64)
      {
        break;
      }
    }

    v24 = (v24 + 1);
    if (v24 == v23)
    {
      goto LABEL_57;
    }
  }

  v94 = *(this + 2);
  if (*(v94 + 1520) == 1)
  {
    LogLevel = CNTimeSpan::operator-(a2 + 1, (v94 + 1528), v45, v46);
    v127[0] = LogLevel;
    *&v127[1] = v95;
    if (LogLevel < 0 || (*v96.i64 = v95, v95 < 0.0))
    {
      LogLevel = CNTimeSpan::operator-(v127, v96, v97);
      v96.i64[0] = v98;
    }

    if (*v96.i64 + LogLevel < 10.0)
    {
      if (cnprint::CNPrinter::GetLogLevel(LogLevel) <= 1)
      {
        LOWORD(v127[0]) = 12;
        v128 = 1;
        v99 = (*(*a2 + 16))(a2);
        v101 = v100 + v99;
        v124 = *(this + 8);
        cnprint::CNPrinter::Print(v127, &v128, "t,%.3lf,SolutionChecker: est, %u. speed_difference_from_solution_to_check_against check failed after recently exiting tunnel, difference, %.2lf,tolerance, %.2lf, consistency, %.2lf, threshold, %.2lf, solution_to_check_against_user_speed_unc, %.2lf, sol_user_speed_unc, %.2lf. Marking the RavenSolution as unhealthy. Exiting with check passed return value.", v102, v103, v104, v105, v106, SLOBYTE(v101));
      }

      goto LABEL_61;
    }
  }

  if (cnprint::CNPrinter::GetLogLevel(LogLevel) <= 1)
  {
    LOWORD(v127[0]) = 12;
    v128 = 1;
    v107 = (*(*a2 + 16))(a2);
    v109 = v108 + v107;
    v125 = *(this + 8);
    cnprint::CNPrinter::Print(v127, &v128, "t,%.3lf,SolutionChecker: est, %u. speed_difference_from_solution_to_check_against check failed, difference, %.2lf, tolerance, %.2lf, consistency, %.2lf, threshold, %.2lf, user_speed_uncertainty_of_solution_to_check_against, %.2lf, sol_user_speed_unc, %.2lf. Exiting with check failed return value.", v110, v111, v112, v113, v114, SLOBYTE(v109));
  }

  v64 = 0;
  v14 = 0xFFFFFFFFLL;
LABEL_65:
  v15 = __p;
  *a3 = v64;
  if (__p)
  {
LABEL_66:
    operator delete(v15);
  }

  return v14;
}

void sub_1D0BF7A10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t raven::SolutionChecker::PerformDirectionOfTravelCheck(raven::SolutionChecker *this, raven::RavenSolutionEvent *a2, BOOL *a3)
{
  v175[0] = *(a2 + 208);
  if ((*(a2 + 1345) & 1) == 0)
  {
    if (cnprint::CNPrinter::GetLogLevel(this) <= 1)
    {
      LOWORD(v172) = 12;
      LOBYTE(v169[0]) = 1;
      v16 = (*(*a2 + 16))(a2);
      v152 = v17 + v16;
      cnprint::CNPrinter::Print(&v172, v169, "t,%.3lf,SolutionChecker: est, %u. RavenSolution under test DOT invalid. Cannot perform direction of travel check.", v18, v19, v20, v21, v22, SLOBYTE(v152));
    }

    v14 = 0;
    *a3 = 1;
    return v14;
  }

  v172 = 0;
  v173 = 0;
  v174 = 0;
  v6 = raven::SolutionChecker::GetListOfEstimatorsToCheckAgainst(this, v175, &v172);
  if (v6)
  {
    if (cnprint::CNPrinter::GetLogLevel(v6) <= 1)
    {
      LOWORD(v169[0]) = 12;
      v171 = 1;
      v7 = (*(*a2 + 16))(a2);
      v151 = v8 + v7;
      cnprint::CNPrinter::Print(v169, &v171, "t,%.3lf,SolutionChecker: Could not find any RavenSolutions to perform the direction of travel check against. Exiting with check passed return value.", v9, v10, v11, v12, v13, SLOBYTE(v151));
    }

    v14 = 0;
    *a3 = 0;
    v15 = v172;
    if (!v172)
    {
      return v14;
    }

LABEL_72:
    operator delete(v15);
    return v14;
  }

  v15 = v172;
  v23 = v173;
  if (v172 == v173)
  {
LABEL_71:
    v14 = 0;
    *a3 = 1;
    if (!v15)
    {
      return v14;
    }

    goto LABEL_72;
  }

  v24 = v172;
  while (1)
  {
    v171 = *v24;
    LogLevel = sub_1D0B9AF58((*(this + 2) + 16), &v171);
    if (!LogLevel)
    {
      sub_1D0C543A8("unordered_map::at: key not found");
    }

    if ((*(LogLevel + 1369) & 1) == 0)
    {
      if (cnprint::CNPrinter::GetLogLevel(LogLevel) <= 1)
      {
        LOWORD(v169[0]) = 12;
        v170 = 1;
        v80 = (*(*a2 + 16))(a2);
        v153 = v81 + v80;
        cnprint::CNPrinter::Print(v169, &v170, "t,%.3lf,SolutionChecker: est, %u. Solution to check against has DOT invalid. Cannot perform direction of travel check.", v82, v83, v84, v85, v86, SLOBYTE(v153));
      }

      goto LABEL_71;
    }

    v26 = *(LogLevel + 173);
    v27 = *(LogLevel + 174);
    v28 = *(LogLevel + 175);
    v29 = (*&v26 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (LogLevel[174] & 0x7FFFFFFFFFFFFFFFLL) >= 0x7FF0000000000000;
    if (v29 || (LogLevel[175] & 0x7FFFFFFFFFFFFFFFLL) >= 0x7FF0000000000000)
    {
      LOWORD(v169[0]) = 12;
      v170 = 4;
      v87 = (*(*a2 + 16))(a2);
      v154 = v88 + v87;
      cnprint::CNPrinter::Print(v169, &v170, "t,%.3lf,SolutionChecker: est, %u. solution_to_check_against direction of travel element is non-finite, %.2lf, %.2lf, %.2lf. Marking the RavenSolution as unhealthy. Exiting with check passed return value.", v89, v90, v91, v92, v93, SLOBYTE(v154));
      goto LABEL_63;
    }

    v30 = LogLevel[180];
    v31 = *(LogLevel + 183);
    v32 = *(LogLevel + 185);
    v35 = (v30 < 0 || ((v30 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE) && (v30 - 1) > 0xFFFFFFFFFFFFELL || (LogLevel[183] & 0x7FFFFFFFFFFFFFFFLL) >= 0x7FF0000000000000;
    if (v35 || (v31 > 0.0 ? (v36 = (LogLevel[185] & 0x7FFFFFFFFFFFFFFFLL) >= 0x7FF0000000000000) : (v36 = 1), v36 || v32 <= 0.0))
    {
      LOWORD(v169[0]) = 12;
      v170 = 4;
      v94 = (*(*a2 + 16))(a2);
      v155 = v95 + v94;
      cnprint::CNPrinter::Print(v169, &v170, "t,%.3lf,SolutionChecker: est, %u. solution_to_check_against has a non-finite or non-positive user DOT covariance diagonal term, pevxevx, %.2lf, pevyevy, %.2lf, pevzpevz, %.2lf. Marking the RavenSolution as unhealthy. Exiting with check passed return value.", v96, v97, v98, v99, v100, SLOBYTE(v155));
      goto LABEL_63;
    }

    v37 = sqrt(v27 * v27 + v26 * v26 + v28 * v28);
    if (fabs(v37) <= 0.000000015)
    {
      LOWORD(v169[0]) = 12;
      v170 = 4;
      v101 = (*(*a2 + 16))(a2);
      v156 = v102 + v101;
      cnprint::CNPrinter::Print(v169, &v170, "t,%.3lf,SolutionChecker: est, %u. solution_to_check_against direction of travel vector is equal to zero, %.2lf. Marking the RavenSolution as unhealthy. Exiting with check passed return value.", v103, v104, v105, v106, v107, SLOBYTE(v156));
LABEL_63:
      v14 = 0;
      *(a2 + 209) = 1;
      *a3 = 0;
      if (v15)
      {
        goto LABEL_72;
      }

      return v14;
    }

    if (fabs(v37 + -1.0) > 0.000000015)
    {
      LogLevel = cnprint::CNPrinter::GetLogLevel(LogLevel);
      if (LogLevel <= 1)
      {
        LOWORD(v169[0]) = 12;
        v170 = 1;
        v38 = (*(*a2 + 16))(a2);
        v40 = v39 + v38;
        cnprint::CNPrinter::Print(v169, &v170, "WARNING: t,%.3lf,SolutionChecker: est, %u. solution_to_check_against direction of travel vector is not of unit length, %.2lf. Will proceed normally, but this is unexpected.", v41, v42, v43, v44, v45, SLOBYTE(v40));
      }
    }

    v167 = v31;
    v168 = v37;
    v46 = v28;
    v166 = v32;
    v47 = v27;
    v48 = *&v30;
    v49 = *(a2 + 170);
    v50 = *(a2 + 171);
    v51 = *(a2 + 172);
    if ((*&v49 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*(a2 + 171) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000 || (*(a2 + 172) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      LOWORD(v169[0]) = 12;
      v170 = 4;
      v108 = (*(*a2 + 16))(a2);
      v157 = v109 + v108;
      cnprint::CNPrinter::Print(v169, &v170, "t,%.3lf,SolutionChecker: est, %u. RavenSolution under test direction of travel element is non-finite, %.2lf, %.2lf, %.2lf. Exiting with check failed return value.", v110, v111, v112, v113, v114, SLOBYTE(v157));
LABEL_67:
      *a3 = 0;
      goto LABEL_68;
    }

    v52 = sqrt(v50 * v50 + v49 * v49 + v51 * v51);
    if (fabs(v52) <= 0.000000015)
    {
      LOWORD(v169[0]) = 12;
      v170 = 4;
      v115 = (*(*a2 + 16))(a2);
      v158 = v116 + v115;
      cnprint::CNPrinter::Print(v169, &v170, "t,%.3lf,SolutionChecker: est, %u. RavenSolution under test direction of travel vector is equal to zero, %.2lf. Exiting with check failed return value.", v117, v118, v119, v120, v121, SLOBYTE(v158));
      goto LABEL_67;
    }

    v164 = *(a2 + 180);
    v165 = *(a2 + 177);
    v163 = *(a2 + 182);
    if (fabs(v52 + -1.0) > 0.000000015 && cnprint::CNPrinter::GetLogLevel(LogLevel) <= 1)
    {
      LOWORD(v169[0]) = 12;
      v170 = 1;
      v53 = (*(*a2 + 16))(a2);
      v55 = v54 + v53;
      cnprint::CNPrinter::Print(v169, &v170, "t,%.3lf,SolutionChecker: est, %u. RavenSolution under test direction of travel vector is not of unit length, %.2lf. Will proceed normally, but this is unexpected.", v56, v57, v58, v59, v60, SLOBYTE(v55));
    }

    v61 = (v47 * v50 + v26 * v49 + v46 * v51) / (v168 * v52);
    v62 = -1.0;
    if (v61 >= -1.0)
    {
      v62 = (v47 * v50 + v26 * v49 + v46 * v51) / (v168 * v52);
    }

    if (v61 <= 1.0)
    {
      v63 = v62;
    }

    else
    {
      v63 = 1.0;
    }

    v64 = acos(v63);
    v66 = cnprint::CNPrinter::GetLogLevel(v65);
    *v68.i64 = v52 * v52;
    v69 = v64 * 57.2957795;
    v70 = v69 / sqrt((v48 + v167 + v166) / (v168 * v168) * 3282.80635 + (v165 + v164 + v163) / (v52 * v52) * 3282.80635);
    if (!v66)
    {
      LOWORD(v169[0]) = 12;
      v170 = 0;
      v71 = (*(*a2 + 16))(a2);
      v73 = v72 + v71;
      v160 = *(this + 9);
      cnprint::CNPrinter::Print(v169, &v170, "t,%.3lf,SolutionChecker: est, %u. direction_of_travel_difference check results, difference, %.2lf, difference uncertainty, %.2lf, consistency, %.2lf, threshold, %.2lf, dot_angle_variance_of_solution_to_check_against, %.2lf,dot_angle_variance_of_solution_under_test, %.2lf. Exiting with check failed return value.", v74, v75, v76, v77, v78, SLOBYTE(v73));
    }

    v79 = (this + 32);
    if (v171 != 1)
    {
      v79 = (this + 24);
      if (v171 != 2)
      {
        LOWORD(v169[0]) = 12;
        v170 = 4;
        v122 = (*(*a2 + 16))(a2);
        v159 = v123 + v122;
        cnprint::CNPrinter::Print(v169, &v170, "t,%.3lf,SolutionChecker: invalid estimator to check against during direction of travel check, exiting with check passed return value and continuing other checks", v124, v125, v126, v127, v128, SLOBYTE(v159));
        goto LABEL_71;
      }
    }

    if (v69 > *v79)
    {
      v67.i64[0] = *(this + 9);
      if (v70 > *v67.i64)
      {
        break;
      }
    }

    if (++v24 == v23)
    {
      goto LABEL_71;
    }
  }

  v130 = *(this + 2);
  if (*(v130 + 1520) != 1)
  {
    goto LABEL_83;
  }

  v66 = CNTimeSpan::operator-(a2 + 1, (v130 + 1528), v67, v68);
  v169[0] = v66;
  *&v169[1] = v131;
  if (v66 < 0 || (*v132.i64 = v131, v131 < 0.0))
  {
    v66 = CNTimeSpan::operator-(v169, v132, v133);
    v132.i64[0] = v134;
  }

  if (*v132.i64 + v66 >= 10.0)
  {
LABEL_83:
    if (cnprint::CNPrinter::GetLogLevel(v66) <= 1)
    {
      LOWORD(v169[0]) = 12;
      v170 = 1;
      v143 = (*(*a2 + 16))(a2);
      v145 = v144 + v143;
      v162 = *(this + 9);
      cnprint::CNPrinter::Print(v169, &v170, "t,%.3lf,SolutionChecker: est, %u. direction_of_travel_difference check failed, difference, %.2lf, difference uncertainty, %.2lf, consistency, %.2lf, threshold, %.2lf, solution_to_check_against_dot_angle_unc, %.2lf, sol_dot_angle_unc, %.2lf. Exiting with check failed return value.", v146, v147, v148, v149, v150, SLOBYTE(v145));
    }

LABEL_68:
    v14 = 0xFFFFFFFFLL;
    if (v15)
    {
      goto LABEL_72;
    }

    return v14;
  }

  if (cnprint::CNPrinter::GetLogLevel(v66) <= 1)
  {
    LOWORD(v169[0]) = 12;
    v170 = 1;
    v135 = (*(*a2 + 16))(a2);
    v137 = v136 + v135;
    v161 = *(this + 9);
    cnprint::CNPrinter::Print(v169, &v170, "t,%.3lf,SolutionChecker: est, %u. direction_of_travel_difference check failed after recently exiting tunnel,difference, %.2lf, difference uncertainty, %.2lf, consistency, %.2lf, threshold, %.2lf, solution_to_check_against_dot_angle_unc, %.2lf,sol_dot_angle_unc, %.2lf. Marking the RavenSolution as unhealthy. Exiting with check passed return value.", v138, v139, v140, v141, v142, SLOBYTE(v137));
  }

  v14 = 0;
  *(a2 + 209) = 1;
  if (v15)
  {
    goto LABEL_72;
  }

  return v14;
}

void sub_1D0BF84BC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 184);
  if (v3)
  {
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D0BF8520(uint64_t a1, raven::RavenDeltaVIOEstimateActiveObject **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0B9FD10(v11, a3, a3, a4, a5, a6, a7, a8);
  raven::RavenDeltaVIOEstimateActiveObject::HandleEvent(v8, v11, v9, v10);
}

void raven::RavenMapVectorActiveObject::HandleEvent(raven::RavenMapVectorActiveObject *this, const raven::RavenSolutionEvent *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(this + 224))
  {
    if (*(a2 + 209) == 2 && *(a2 + 1744) == 1)
    {
      if (*(this + 1272) == 1)
      {
        v9 = this + 1288;
        v10 = a2 + 8;

        memcpy(v9, v10, 0xA51uLL);
      }

      else
      {
        *(this + 160) = &unk_1F4CEF7A8;
        memcpy(this + 1288, a2 + 8, 0xA51uLL);
        *(this + 1272) = 1;
      }
    }
  }

  else
  {
    v13 = 12;
    v12 = 2;
    cnprint::CNPrinter::Print(&v13, &v12, "RavenMapVectorActiveObject: not configured", a4, a5, a6, a7, a8, v11);
  }
}

void *sub_1D0BF8640(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  result = sub_1D0B9FD10(v10, a3, a3, a4, a5, a6, a7, a8);
  if (v11 == 4)
  {
    return memcpy((v8 + 288), v12, 0x360uLL);
  }

  return result;
}

uint64_t sub_1D0BF86BC(uint64_t result, int a2, int a3)
{
  *(result + 24) = 0x100000057;
  *(result + 32) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = &unk_1F4CE04B8;
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

void sub_1D0BF8804(uint64_t a1, int a2, int a3)
{
  *(a1 + 24) = 0x800000057;
  *a1 = &unk_1F4CEBC60;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 8) = a2;
  *(a1 + 12) = a3;
  *(a1 + 16) = a3 * a2;
  *(a1 + 20) = a2;
  sub_1D0BF8784();
}

void sub_1D0BF886C(_Unwind_Exception *exception_object)
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

void sub_1D0BF88B4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0B9FD10(v22, a3, a3, a4, a5, a6, a7, a8);
  if (*(v8 + 224))
  {
    if (*(v8 + 497) == 1 && *(v8 + 496) == 1)
    {
      raven::RavenMovingStateEstimator::HandleEvent(v8 + 280, v22);
    }
  }

  else
  {
    v27 = 12;
    v26 = 2;
    v25[0] = (*(v22[0] + 16))(v22);
    v25[1] = v9;
    (*(v22[0] + 24))(v23, v22);
    if (v24 >= 0)
    {
      v15 = v23;
    }

    else
    {
      v15 = v23[0];
    }

    cnprint::CNLogFormatter::FormatWarning(v8 + 232, v25, "Failed to handle event - %s.", v10, v11, v12, v13, v14, v15);
    if (*(v8 + 255) >= 0)
    {
      LOBYTE(v21) = v8 - 24;
    }

    else
    {
      v21 = *(v8 + 232);
    }

    cnprint::CNPrinter::Print(&v27, &v26, "%s", v16, v17, v18, v19, v20, v21);
    if (v24 < 0)
    {
      operator delete(v23[0]);
    }
  }
}

void sub_1D0BF89F4(_Unwind_Exception *exception_object)
{
  if (*(v1 - 57) < 0)
  {
    operator delete(*(v1 - 80));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0BF8A30(uint64_t a1, uint64_t a2, double *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9)
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

  v13 = !v12 && v11 == 6;
  if (v13 && ((v14 = *(a2 + 8), v15 = *(a2 + 12), v14 <= v15) ? (v16 = *(a2 + 12)) : (v16 = *(a2 + 8)), v14 ? (v17 = v15 == 0) : (v17 = 1), !v17 ? (v18 = v16 == 6) : (v18 = 0), v18))
  {
    v24 = *a3;
    v46 = 0x100000006;
    v44 = &unk_1F4CE0BF8;
    v47 = v48;
    v45 = xmmword_1D0E84530;
    memset(v48, 0, sizeof(v48));
    v41 = 0x100000008;
    v40 = xmmword_1D0E84530;
    v39 = &unk_1F4CE4320;
    v42 = &v43;
    v36 = 0x800000008;
    v34 = &unk_1F4CE43B0;
    v35 = xmmword_1D0E7F320;
    v37 = &v38;
    v31 = 0x600000008;
    v29 = &unk_1F4CEBBD0;
    v30 = xmmword_1D0E7F320;
    v32 = &v33;
    v25 = v24 * a9;
    v56 = 0x600000006;
    v54 = &unk_1F4CDF278;
    v57 = &v58;
    v55 = xmmword_1D0E7F320;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v65 = 0;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v73 = 0;
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v58 = 0x3FF0000000000000;
    *&v62 = 0x3FF0000000000000;
    v66 = 0x3FF0000000000000;
    *&v70 = 0x3FF0000000000000;
    v74 = 0x3FF0000000000000;
    v78 = 0x3FF0000000000000;
    sub_1D0BA5090(&v79, &v54);
    v26 = HIDWORD(v80);
    v27 = v82;
    *&v82[24 * HIDWORD(v80)] = v25;
    *&v27[8 * ((4 * v26) | 1)] = v25;
    *&v27[40 * v26 + 16] = v25;
    v51 = 0x100000008;
    v50 = xmmword_1D0E84520;
    v49 = &unk_1F4CE4320;
    v52 = &v53;
    sub_1D0B89390(&v79, a1, &v49);
    v56 = 0x100000008;
    v55 = xmmword_1D0E84520;
    v54 = &unk_1F4CE4320;
    v57 = &v58;
    sub_1D0B88838(&v49, &v44, &v54);
    sub_1D0B894B0(&v39, &v54);
    sub_1D0B894B0(&v34, &v79);
    v56 = 0x600000006;
    v54 = &unk_1F4CDF278;
    v57 = &v58;
    v55 = xmmword_1D0E7F320;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v65 = 0;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v73 = 0;
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v58 = 0x3FF0000000000000;
    *&v62 = 0x3FF0000000000000;
    v66 = 0x3FF0000000000000;
    *&v70 = 0x3FF0000000000000;
    v74 = 0x3FF0000000000000;
    v78 = 0x3FF0000000000000;
    sub_1D0B894B0(&v29, &v54);
    sub_1D0B894B0(a4, &v39);
    sub_1D0B894B0(a5, &v34);
    v81 = 0x600000006;
    v79 = &unk_1F4CDF278;
    v82 = v83;
    v80 = xmmword_1D0E7F320;
    memset(v83, 0, 288);
    sub_1D0B894B0(a6, &v79);
    return 0;
  }

  else
  {
    LOWORD(v79) = 12;
    LOBYTE(v34) = 4;
    cnprint::CNPrinter::Print(&v79, &v34, "in_SixStateNearlyConstantVelocity called with inadequate matrices.", a4, a5, a6, a7, a8, v28);
    return 0xFFFFFFFFLL;
  }
}

uint64_t raven::RavenMovingStateEstimator::HandleEvent(uint64_t this, const raven::RavenSolutionEvent *a2)
{
  if (*(a2 + 208) == 1 && *(a2 + 209) == 2 && *(a2 + 1344) != 0)
  {
    v5 = this;
    if (*(this + 4208) == 1)
    {
      v6 = memcpy((this + 1560), a2 + 8, 0xA51uLL);
    }

    else
    {
      *(this + 1552) = &unk_1F4CEF7A8;
      v6 = memcpy((this + 1560), a2 + 8, 0xA51uLL);
      *(v5 + 4208) = 1;
    }

    v7 = sqrt(*(a2 + 173));
    v8 = cnstatistics::NormalCDF(v6, *(a2 + 169), 0.25, 0.05);
    v9 = 1.0 - v8;
    if (*(v5 + 1040))
    {
      v10 = 1.0 - v8;
    }

    else
    {
      v10 = 0.01;
    }

    if (*(v5 + 1040))
    {
      v9 = 0.01;
    }

    v11 = *(a2 + 169);
    v12 = v7 + v7 >= v11 || v11 <= 5.0;
    v13 = 7.9;
    if (v12)
    {
      v13 = 0.0;
    }

    v14 = v13 * v10 + 0.1;
    v15 = v13 * v8 + 0.1;
    v16 = v13 * v9 + 0.1;
    v17 = v16 + v14 + v15;
    v18 = v14 / v17;
    v19 = v15 / v17;
    v20 = v16 / v17;
    this = (*(*a2 + 16))(a2);
    v21 = *(v5 + 208);
    *(v5 + 144) = sub_1D0BBABC4;
    *(v5 + 152) = 0;
    *(v5 + 160) = 0x7FF8000000000000;
    *(v5 + 168) = v18;
    *(v5 + 176) = v20;
    *(v5 + 184) = v19;
    *(v5 + 192) = this;
    *(v5 + 200) = v22;
    if ((v21 & 1) == 0)
    {
      *(v5 + 208) = 1;
    }
  }

  return this;
}

uint64_t sub_1D0BF9010(uint64_t a1, uint64_t a2, double *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9)
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

  v13 = !v12 && v11 == 2;
  if (v13 && ((v14 = *(a2 + 8), v15 = *(a2 + 12), v14 <= v15) ? (v16 = *(a2 + 12)) : (v16 = *(a2 + 8)), v14 ? (v17 = v15 == 0) : (v17 = 1), !v17 ? (v18 = v16 == 2) : (v18 = 0), v18))
  {
    v24 = *a3;
    v44 = 0x100000002;
    v42 = &unk_1F4CE0220;
    v45 = v46;
    v43 = xmmword_1D0E83F60;
    v46[1] = 0;
    v46[0] = 0;
    v39 = 0x100000008;
    v38 = xmmword_1D0E83F60;
    v37 = &unk_1F4CE4320;
    v40 = &v41;
    v34 = 0x800000008;
    v32 = &unk_1F4CE43B0;
    v33 = xmmword_1D0E83F70;
    v35 = &v36;
    v29 = 0x200000008;
    v27 = &unk_1F4CEBC18;
    v28 = xmmword_1D0E83F70;
    v30 = &v31;
    v25 = v24 * a9;
    v54 = 0x200000002;
    v52 = &unk_1F4CE0268;
    v55 = &v56;
    v53 = xmmword_1D0E83F70;
    v57 = 0;
    v56 = 0x3FF0000000000000;
    v58 = 0;
    v59 = 0x3FF0000000000000;
    sub_1D0BA5090(&v60, &v52);
    *&v63[8 * SHIDWORD(v61)] = v25;
    v49 = 0x100000008;
    v48 = xmmword_1D0E84520;
    v47 = &unk_1F4CE4320;
    v50 = &v51;
    sub_1D0B89390(&v60, a1, &v47);
    v54 = 0x100000008;
    v53 = xmmword_1D0E84520;
    v52 = &unk_1F4CE4320;
    v55 = &v56;
    sub_1D0B88838(&v47, &v42, &v52);
    sub_1D0B894B0(&v37, &v52);
    sub_1D0B894B0(&v32, &v60);
    v54 = 0x200000002;
    v52 = &unk_1F4CE0268;
    v55 = &v56;
    v53 = xmmword_1D0E83F70;
    v57 = 0;
    v56 = 0x3FF0000000000000;
    v58 = 0;
    v59 = 0x3FF0000000000000;
    sub_1D0B894B0(&v27, &v52);
    sub_1D0B894B0(a4, &v37);
    sub_1D0B894B0(a5, &v32);
    v62 = 0x200000002;
    v60 = &unk_1F4CE0268;
    v63 = v64;
    v61 = xmmword_1D0E83F70;
    memset(v64, 0, 32);
    sub_1D0B894B0(a6, &v60);
    return 0;
  }

  else
  {
    LOWORD(v60) = 12;
    LOBYTE(v32) = 4;
    cnprint::CNPrinter::Print(&v60, &v32, "in_TwoStateOscillator called with inadequate matrices.", a4, a5, a6, a7, a8, v26);
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_1D0BF9390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x1EEE9AC00](a1, a2, a3, a4);
  v268[11] = *MEMORY[0x1E69E9840];
  if (!*(v4 + 16))
  {
    goto LABEL_63;
  }

  v11 = v10;
  v12 = v9;
  v13 = v8;
  v14 = v7;
  v15 = v5;
  v16 = v4;
  if (*(v4 + 2568) == 1)
  {
    if (v6 & 1) != 0 || (v7)
    {
      v17 = v4 + 2576;
      if (v7)
      {
        v18 = 1;
        v19 = 1;
      }

      else
      {
        v10 = v252;
        v18 = 1;
        v19 = 0;
      }
    }

    else
    {
      v17 = v4 + 2576;
      v9 = v249;
      v10 = v252;
      v18 = 0;
      v19 = 0;
    }

    result = cnnavigation::LinearizedGravityModel::ComputeLinearizedGravityModel(v17, v5, v18, v19, v8, v9, v10);
    if (!result)
    {
      goto LABEL_96;
    }

    v14 = 1;
    v6 = 1;
  }

  v21 = *v15;
  v22 = v15[1];
  v23 = v15[2];
  v24 = sqrt(v22 * v22 + v21 * v21 + v23 * v23);
  if (v24 <= 0.00000001)
  {
LABEL_63:
    result = 0xFFFFFFFFLL;
    goto LABEL_96;
  }

  v25 = *(v16 + 2728);
  v26 = v21 / v24;
  v268[0] = 0x3FF0000000000000;
  *&v268[1] = v26;
  v27 = v22 / v24;
  v267[0] = 0;
  *&v267[1] = v27;
  v28 = v14 | v6;
  if (v14 | v6)
  {
    v266[0] = xmmword_1D0E7DCB0;
    v265[0] = 0u;
    v264[0] = 0u;
    v263[0] = xmmword_1D0E7DCB0;
  }

  if (v14)
  {
    v262[1] = 0;
    v262[0] = 0;
    v261[1] = 0;
    v261[0] = 0;
    v260[1] = 0;
    v260[0] = 0;
    v259[1] = 0;
    v259[0] = 0;
    v258[1] = 0;
    v258[0] = 0;
    v257[0] = 0;
    v256 = 0;
  }

  v29 = v23 / v24;
  if (v25 >= 2)
  {
    v30 = 0;
    v31 = -v27;
    v32 = v27;
    v33 = v26;
    do
    {
      v34 = v32 * v31 + v26 * v33;
      *&v268[v30 / 8 + 2] = v34;
      v35 = v27 * v33 + v26 * v32;
      *&v267[v30 / 8 + 2] = v35;
      if (v28)
      {
        v36 = *(v266 + v30 + 8);
        v37 = *(v264 + v30 + 8);
        *(&v266[1] + v30) = v33 + v26 * v36 + v31 * v37;
        v38 = *(v265 + v30 + 8);
        v39 = *(v263 + v30 + 8);
        *(&v265[1] + v30) = v39 * v31 + v26 * v38 - v32;
        *(&v264[1] + v30) = v32 + v26 * v37 + v27 * v36;
        *(&v263[1] + v30) = v33 + v27 * v38 + v26 * v39;
      }

      if (v14)
      {
        v40 = *&v262[v30 / 8 + 1];
        v41 = *(v266 + v30 + 8);
        v42 = *&v259[v30 / 8 + 1];
        *&v262[v30 / 8 + 2] = v41 + v41 + v26 * v40 + v31 * v42;
        v43 = *&v261[v30 / 8 + 1];
        v44 = *(v265 + v30 + 8);
        v45 = *&v258[v30 / 8 + 1];
        v46 = *(v264 + v30 + 8);
        *&v261[v30 / 8 + 2] = v44 + v26 * v43 + v31 * v45 - v46;
        v47 = *&v260[v30 / 8 + 1];
        v48 = *&v257[v30 / 8];
        v49 = *(v263 + v30 + 8);
        *&v260[v30 / 8 + 2] = v48 * v31 + v26 * v47 + v49 * -2.0;
        *&v259[v30 / 8 + 2] = v46 + v46 + v26 * v42 + v27 * v40;
        *&v258[v30 / 8 + 2] = v41 + v49 + v26 * v45 + v27 * v43;
        *&v257[v30 / 8 + 1] = v27 * v47 + v26 * v48 + v44 * 2.0;
      }

      v30 += 8;
      v32 = v35;
      v33 = v34;
    }

    while (8 * v25 - 8 != v30);
  }

  v51 = *(v16 + 24);
  v50 = *(v16 + 32);
  v253[11] = 1.22474487;
  v253[10] = v29 * 1.73205081;
  if (v28)
  {
    v250[5] = xmmword_1D0E84700;
  }

  if (v14)
  {
    v247[11] = 0;
    v247[10] = 0;
  }

  v193 = v13;
  v194 = v15;
  v52 = 1.0 / v24;
  if (v25 >= 2)
  {
    v53 = 0;
    v54 = 0;
    v55 = v248;
    v56 = v251;
    v57 = &v255;
    v58 = 2;
    do
    {
      v59 = (2 * v58);
      v60 = sqrt(1.0 / v59 + 1.0);
      v61 = sqrt(v59);
      v62 = v58 - 1;
      v63 = &v252[88 * v58];
      v64 = &v63[8 * v58 - 8];
      v65 = *(v64 - 11) * v60;
      *&v63[8 * v58] = v65;
      *v64 = v29 * v61 * v65;
      if (v28)
      {
        v66 = v60 * *&v249[88 * v62 + 8 * v62];
        v67 = &v249[88 * v58];
        *&v67[8 * v58] = v66;
        *&v67[8 * v62] = v61 * (v65 + v29 * v66);
      }

      if (v14)
      {
        v68 = v60 * *&v246[88 * v62 + 8 * v62];
        v69 = &v246[88 * v58];
        *&v69[8 * v58] = v68;
        *&v69[8 * v62] = v61 * (v29 * v68 + *&v249[88 * v58 + 8 * v58] * 2.0);
      }

      v70 = 0;
      v71 = *&v254[96 * v54 + 8];
      v72 = 2;
      v73 = v57;
      do
      {
        v74 = sqrt(v72 * (v53 + v70 + 3));
        v75 = sqrt((v53 + v70 + 4) * (v72 - 1));
        v76 = *v73;
        v77 = *v73 * ((v29 * v29 + -1.0) * v75 / v74) + (v29 + v29) * (v54 + v70 + 1) / v74 * v71;
        *(v73 - 2) = v77;
        if (v28)
        {
          *&v56[8 * v70] = v71 * v74;
        }

        if (v14)
        {
          *&v55[8 * v70] = v76 * (v75 * v74);
        }

        --v70;
        ++v72;
        --v73;
        v71 = v77;
      }

      while (v54 + v70 + 1 > 0);
      ++v58;
      ++v54;
      v55 += 96;
      v56 += 96;
      v57 += 12;
      v53 += 2;
    }

    while (v54 != v25 - 1);
  }

  v78 = v52 * v51;
  v79 = 1.0;
  v211 = 1.0 / v24;
  v192 = v78;
  if ((v25 & 0x80000000) != 0)
  {
    v197 = 0.0;
    v198 = 0.0;
    v199 = 0.0;
    v200 = 0.0;
    v201 = 0.0;
    v202 = 0.0;
    v203 = 0.0;
    v204 = 0.0;
    v205 = 0.0;
    v206 = 0.0;
    v207 = 0.0;
    v208 = 0.0;
    v209 = 0.0;
    v210 = 0.0;
  }

  else
  {
    v80 = 0;
    __x = v52 * v50;
    v81 = v25 + 1;
    v82 = v247;
    v83 = v250;
    v84 = v253;
    do
    {
      v85 = v84;
      v86 = v83;
      v87 = v82;
      v88 = v25;
      if (v25)
      {
        do
        {
          *v85 = *v85 * 1.41421356;
          if (v28)
          {
            *v86 = *v86 * 1.41421356;
          }

          if (v14)
          {
            *v87 = *v87 * 1.41421356;
          }

          ++v87;
          ++v86;
          ++v85;
          --v88;
        }

        while (v88);
      }

      ++v80;
      v82 += 11;
      v83 = (v83 + 88);
      v84 += 11;
    }

    while (v80 != v81);
    v197 = 0.0;
    v198 = 0.0;
    v199 = 0.0;
    v200 = 0.0;
    v201 = 0.0;
    v202 = 0.0;
    v203 = 0.0;
    v204 = 0.0;
    v205 = 0.0;
    v206 = 0.0;
    v207 = 0.0;
    v208 = 0.0;
    v209 = 0.0;
    v210 = 0.0;
    if (v25 >= 2)
    {
      v89 = v251;
      v90 = v248;
      v91 = v254;
      v79 = 1.0;
      v209 = 0.0;
      v210 = 0.0;
      v92 = 6;
      v207 = 0.0;
      v208 = 0.0;
      v93 = 2;
      v94 = 24;
      v205 = 0.0;
      v206 = 0.0;
      v203 = 0.0;
      v204 = 0.0;
      v201 = 0.0;
      v202 = 0.0;
      v95 = 6;
      v199 = 0.0;
      v200 = 0.0;
      v197 = 0.0;
      v198 = 0.0;
      v195 = v81;
      do
      {
        v215 = v95;
        v218 = v79;
        v96 = 0;
        v97 = 0.0;
        v98 = 0.0;
        v99 = 0.0;
        v217 = v92;
        v100 = 0.0;
        v101 = v16 + 528 + ((4 * v92) & 0x3FFFFFFF8);
        v216 = v93 + 1;
        v102 = 0.0;
        v103 = 0.0;
        v104 = 0.0;
        v105 = 0.0;
        v106 = 0.0;
        v107 = 0.0;
        do
        {
          v108 = *(v101 + v96);
          v109 = *(v101 + v96 + 504);
          v110 = v109 * *&v267[v96 / 8] + v108 * *&v268[v96 / 8];
          v111 = *&v91[v96];
          if (v28)
          {
            v106 = v106 + *&v89[v96] * v110;
            v105 = v105 + v111 * (v109 * *(v264 + v96) + v108 * *(v266 + v96));
            v104 = v104 + v111 * (v109 * *(v263 + v96) + v108 * *(v265 + v96));
          }

          if (v14)
          {
            v103 = v103 + *&v90[v96] * v110;
            v102 = v102 + v111 * (v109 * *&v259[v96 / 8] + v108 * *&v262[v96 / 8]);
            v112 = *&v89[v96];
            v100 = v100 + v111 * (v109 * *&v257[v96 / 8 - 1] + v108 * *&v260[v96 / 8]);
            v99 = v99 + v112 * (v109 * *(v264 + v96) + v108 * *(v266 + v96));
            v98 = v98 + v112 * (v109 * *(v263 + v96) + v108 * *(v265 + v96));
            v97 = v97 + v111 * (v109 * *&v258[v96 / 8] + v108 * *&v261[v96 / 8]);
          }

          v107 = v107 + v111 * v110;
          v96 += 8;
        }

        while (v94 != v96);
        v213 = v98;
        v214 = v97;
        v212 = v93;
        v113 = pow(__x, v93);
        v93 = v216;
        v114 = v216;
        if (v28)
        {
          v197 = v197 + v211 * (v211 * -(v113 * v114)) * v107;
          v198 = v198 + v113 * v106;
          v199 = v199 + v113 * v105;
          v200 = v200 + v113 * v104;
        }

        if (v14)
        {
          v201 = v201 + v211 * (v211 * (v211 * (v113 * ((v212 + 2) * v216)))) * v107;
          v202 = v202 + v113 * v103;
          v203 = v203 + v113 * v102;
          v204 = v204 + v113 * v100;
          v205 = v205 + v113 * v99;
          v206 = v206 + v113 * v213;
          v115 = v211 * (v211 * -(v113 * v114));
          v207 = v207 + v113 * v214;
          v208 = v208 + v115 * v106;
          v209 = v209 + v115 * v105;
          v210 = v210 + v115 * v104;
        }

        v79 = v218 + v113 * v107;
        v94 += 8;
        v89 += 88;
        v90 += 88;
        v91 += 88;
        v92 = (v217 + v215);
        v95 = v215 + 2;
      }

      while (v216 != v195);
    }
  }

  *v193 = -(v192 * v79);
  v116 = 0.0;
  v117 = 0.0;
  v118 = 0.0;
  v119 = 0.0;
  if (v28)
  {
    v119 = v197 * *(v16 + 24) + -v192 * v211;
    v116 = v192 * v198;
    v117 = v192 * v199;
    v118 = v192 * v200;
  }

  v120 = 0.0;
  v121 = 0.0;
  v122 = 0.0;
  v123 = 0.0;
  v124 = 0.0;
  v125 = 0.0;
  v126 = 0.0;
  v127 = 0.0;
  v128 = 0.0;
  v129 = 0.0;
  v130 = 0.0;
  if (v14)
  {
    v131 = *(v16 + 24);
    v121 = v201 * v131 + v211 * (v192 + v192) * v211;
    v122 = v192 * v202;
    v123 = v192 * v203;
    v124 = v192 * v204;
    v125 = v192 * v205;
    v126 = v192 * v206;
    v127 = v192 * v207;
    v128 = v208 * v131;
    v129 = v209 * v131;
    v130 = v210 * v131;
  }

  v244 = 0uLL;
  v245 = 0.0;
  v242 = 0uLL;
  v243 = 0.0;
  v240 = 0.0;
  v239 = 0.0;
  v132 = 0.0;
  v241 = 0.0;
  v133 = 0.0;
  v134 = 0.0;
  v135 = 0.0;
  v237 = 0.0;
  v236 = 0.0;
  _D28 = 0.0;
  v137 = 0.0;
  v238 = 0.0;
  v138 = 0.0;
  v139 = 0.0;
  v140 = 0.0;
  v234 = 0.0;
  v233 = 0.0;
  v141 = 0.0;
  v142.f64[0] = 0.0;
  v235 = 0.0;
  if (v28)
  {
    v143 = v194[1].f64[0];
    v134 = v211 * v143;
    v245 = v211 * v143;
    _Q26 = *v194;
    v142 = vmulq_n_f64(*v194, v211);
    v244 = v142;
    v138 = v142.f64[1];
    v242 = vmulq_n_f64(vmulq_n_f64(vnegq_f64(v142), v211), v211);
    v243 = v211 * -(v211 * v143 * v211);
    v141 = v211 + _Q26.f64[0] * v242.f64[0];
    _D8 = v242.f64[1];
    v137 = vmuld_lane_f64(_Q26.f64[0], v242, 1);
    v239 = v141;
    v240 = v137;
    v133 = v243 * _Q26.f64[0];
    v241 = v243 * _Q26.f64[0];
    v140 = vmuld_lane_f64(v242.f64[0], _Q26, 1);
    __asm { FMLA            D28, D8, V26.D[1] }

    v236 = v140;
    v237 = _D28;
    v132 = vmuld_lane_f64(v243, _Q26, 1);
    v238 = v132;
    v139 = v143 * v242.f64[0];
    v135 = vmuld_lane_f64(v143, v242, 1);
    v233 = v143 * v242.f64[0];
    v234 = v135;
    v120 = v211 + v143 * v243;
    v235 = v120;
  }

  *v12 = v117 * v141 + v119 * v142.f64[0] + v118 * v140 + v116 * v139;
  v12[1] = v117 * v137 + v119 * v138 + v118 * _D28 + v116 * v135;
  v12[2] = v117 * v133 + v119 * v134 + v118 * v132 + v116 * v120;
  v232 = 0;
  memset(v231, 0, sizeof(v231));
  v230 = 0;
  memset(v229, 0, sizeof(v229));
  v228 = 0;
  memset(v227, 0, sizeof(v227));
  v226 = 0;
  memset(v225, 0, sizeof(v225));
  v224 = 0;
  v223 = 0u;
  v221 = 0u;
  memset(v222, 0, sizeof(v222));
  if (v14)
  {
    v150 = 0;
    v151 = v231;
    do
    {
      v152 = 0;
      v153 = v194->f64[v150];
      do
      {
        *(v151 + v152 * 8) = v153 * v242.f64[v152];
        ++v152;
      }

      while (v152 != 3);
      *(v231 + 3 * v150 + v150) = v211 + *(v231 + 3 * v150 + v150);
      ++v150;
      v151 = (v151 + 24);
    }

    while (v150 != 3);
    v154 = 0;
    v155 = v229;
    v156 = v231;
    do
    {
      v157 = 0;
      v158 = v211 * -2.0 * v242.f64[v154];
      do
      {
        *(v155 + v157 * 8) = v211 * -(*(v156 + v157 * 8) * v211) + v158 * v244.f64[v157];
        ++v157;
      }

      while (v157 != 3);
      ++v154;
      v155 = (v155 + 24);
      v156 = (v156 + 24);
    }

    while (v154 != 3);
    v159 = 0;
    v160 = v194->f64[0];
    v161 = v194->f64[1];
    v162 = &v221;
    v163 = v225;
    v164 = v227;
    v165 = v229;
    v166 = v194[1].f64[0];
    do
    {
      for (i = 0; i != 24; i += 8)
      {
        v168 = *(v165 + i);
        *(v164 + i) = v160 * v168;
        *(v163 + i) = v161 * v168;
        *(v162 + i) = v166 * v168;
      }

      ++v159;
      v162 = (v162 + 24);
      v163 = (v163 + 24);
      v164 = (v164 + 24);
      v165 = (v165 + 24);
    }

    while (v159 != 3);
    v169 = 0;
    v170 = &v242;
    do
    {
      v171 = v170->f64[0];
      v170 = (v170 + 8);
      *(v227 + v169) = v171 + *(v227 + v169);
      *(v225 + v169 + 8) = v171 + *(v225 + v169 + 8);
      *(v222 + v169) = v171 + *(v222 + v169);
      v169 += 24;
    }

    while (v169 != 72);
    for (j = 0; j != 24; j += 8)
    {
      v173 = v242.f64[j / 8];
      *(v227 + j) = v173 + *(v227 + j);
      *(&v225[1] + j + 8) = v173 + *(&v225[1] + j + 8);
      *(&v223 + j) = v173 + *(&v223 + j);
    }

    v174 = 0;
    v175 = v219;
    v176 = &v221;
    v177 = v225;
    v178 = v227;
    v179 = v231;
    do
    {
      v180 = 0;
      v181 = v244.f64[v174];
      v182 = *(&v239 + v174);
      v183 = *(&v236 + v174);
      v184 = *(&v233 + v174);
      v185 = v129 * v182 + v121 * v181 + v130 * v183 + v128 * v184;
      v186 = v123 * v182 + v129 * v181 + v127 * v183 + v125 * v184;
      v187 = v127 * v182 + v130 * v181 + v124 * v183 + v126 * v184;
      v188 = v125 * v182 + v128 * v181 + v126 * v183 + v122 * v184;
      do
      {
        *(v175 + v180) = v186 * *(&v239 + v180) + v185 * v244.f64[v180 / 8] + v187 * *(&v236 + v180) + v188 * *(&v233 + v180) + v119 * *(v179 + v180) + v117 * *(v178 + v180) + v118 * *(v177 + v180) + v116 * *(v176 + v180);
        v180 += 8;
      }

      while (v180 != 24);
      ++v174;
      v175 = (v175 + 24);
      v176 = (v176 + 24);
      v177 = (v177 + 24);
      v178 = (v178 + 24);
      v179 = (v179 + 24);
    }

    while (v174 != 3);
    v189 = v219[1];
    *v11 = v219[0];
    *(v11 + 16) = v189;
    v190 = v219[3];
    *(v11 + 32) = v219[2];
    *(v11 + 48) = v190;
    *(v11 + 64) = v220;
  }

  if (*(v16 + 2568) == 1)
  {
    cnnavigation::LinearizedGravityModel::UpdateLinearization(v16 + 2576, v194, v12, v11, *(v16 + 40), *v193);
  }

  result = 0;
LABEL_96:
  v191 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D0BFA2A4(uint64_t a1, uint64_t a2, char **lpsrc, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (lpsrc && (v13 = **lpsrc, (v14 = __dynamic_cast(lpsrc, &unk_1F4CE42A0, &unk_1F4CEB790, 0)) != 0))
  {
    v16 = *(a1 + 8);
    v15 = *(a1 + 12);
    if (v16 <= v15)
    {
      v17 = *(a1 + 12);
    }

    else
    {
      v17 = *(a1 + 8);
    }

    if (v16 && v15 && v17 == 8)
    {
      v19 = *(a2 + 8);
      v18 = *(a2 + 12);
      v20 = v19 <= v18 ? *(a2 + 12) : *(a2 + 8);
      if (v19 && v18 && v20 == 3)
      {
        *(a4 + 8) = xmmword_1D0E7DCC0;
        v21 = *(a1 + 32);
        v22 = *(a2 + 32);
        v23 = *(a4 + 32);
        *v23 = v21[3] + *v22;
        v23[1] = v21[4] + v22[1];
        v23[2] = v21[5] + v22[2];
        v30 = 0x800000003;
        v28 = &unk_1F4CEB950;
        v31 = v32;
        v29 = xmmword_1D0E9CC00;
        memset(v32, 0, sizeof(v32));
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        sub_1D0B894B0(a5, &v28);
        v24 = *(a5 + 20);
        v25 = *(a5 + 32);
        *(v25 + 24 * v24) = 0x3FF0000000000000;
        *(v25 + 8 * ((4 * v24) | 1)) = 0x3FF0000000000000;
        *(v25 + 40 * v24 + 16) = 0x3FF0000000000000;
        v30 = 0x300000003;
        v28 = &unk_1F4CD5DD0;
        v29 = xmmword_1D0E76C10;
        memset(v32 + 8, 0, 24);
        memset(&v32[2] + 8, 0, 24);
        v31 = v32;
        *&v32[0] = 0x3FF0000000000000;
        *&v32[2] = 0x3FF0000000000000;
        *&v33 = 0x3FF0000000000000;
        sub_1D0B894B0(a6, &v28);
        return 0;
      }
    }

    LOWORD(v28) = 12;
    v41 = 4;
    v27 = v14[6] + *(v14 + 5);
  }

  else
  {
    LOWORD(v28) = 12;
    v41 = 4;
    v27 = MEMORY[0x30] + MEMORY[0x28];
  }

  cnprint::CNPrinter::Print(&v28, &v41, "time,%.3lf,h-function failure on line %d: %s() %s", a4, a5, a6, a7, a8, SLOBYTE(v27));
  return 0xFFFFFFFFLL;
}

uint64_t cnnavigation::LinearizedGravityModel::ComputeLinearizedGravityModel(uint64_t a1, double *a2, int a3, int a4, double *a5, double *a6, uint64_t a7)
{
  if (!*(a1 + 144))
  {
    return 0xFFFFFFFFLL;
  }

  v7 = *a2;
  v8 = a2[1];
  v9 = a2[2];
  if (sqrt(v8 * v8 + v7 * v7 + v9 * v9) <= 0.00000001)
  {
    return 0xFFFFFFFFLL;
  }

  v10 = v7 - *(a1 + 8);
  v11 = v8 - *(a1 + 16);
  v12 = v9 - *(a1 + 24);
  if (sqrt(v11 * v11 + v10 * v10 + v12 * v12) > *(a1 + 136))
  {
    return 0xFFFFFFFFLL;
  }

  *a5 = *(a1 + 32) - (v11 * *(a1 + 48) + *(a1 + 40) * v10 + *(a1 + 56) * v12) + (v11 * (v10 * *(a1 + 72)) + v10 * *(a1 + 64) * v10 + v10 * *(a1 + 80) * v12 + v11 * *(a1 + 88) * v10 + v11 * *(a1 + 96) * v11 + v11 * *(a1 + 104) * v12 + v12 * *(a1 + 112) * v10 + v12 * *(a1 + 120) * v11 + v12 * *(a1 + 128) * v12) * -0.5;
  if (a3)
  {
    v15 = *(a1 + 56);
    v16 = v11 * *(a1 + 72) + *(a1 + 64) * v10 + *(a1 + 80) * v12;
    v17 = v11 * *(a1 + 96) + *(a1 + 88) * v10 + *(a1 + 104) * v12;
    v18 = v11 * *(a1 + 120) + *(a1 + 112) * v10 + *(a1 + 128) * v12;
    v19 = *(a1 + 48) + v17;
    *a6 = *(a1 + 40) + v16;
    a6[1] = v19;
    a6[2] = v15 + v18;
  }

  v13 = 0;
  if (a4)
  {
    *a7 = *(a1 + 64);
    *(a7 + 16) = *(a1 + 80);
    *(a7 + 32) = *(a1 + 96);
    *(a7 + 48) = *(a1 + 112);
    *(a7 + 64) = *(a1 + 128);
  }

  return v13;
}

void sub_1D0BFA6D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x1EEE9AC00](a1, a2, a3, a4);
  v5 = *v4;
  sub_1D0B9FD10(v24, v6, v6, v7, v8, v9, v10, v11);
  if (v5[760])
  {
    raven::RavenSolutionSelector::HandleEvent((v5 + 224), v24, v12, v13, v14, v15, v16, v17);
    sub_1D0BAD0C8(__p);
    if (!raven::RavenSolutionSelector::GetRavenSolution((v5 + 224), __p))
    {
      sub_1D0BAE448();
    }
  }

  else
  {
    v28 = 12;
    v27 = 2;
    (*(*v5 + 16))(__p, v5);
    if (v26 >= 0)
    {
      v23 = __p;
    }

    else
    {
      LOBYTE(v23) = __p[0];
    }

    cnprint::CNPrinter::Print(&v28, &v27, "Warning: %s Active Object not configured", v18, v19, v20, v21, v22, v23);
    if (v26 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1D0BFA7E4(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0xA7F]) < 0)
  {
    operator delete(STACK[0xA68]);
  }

  _Unwind_Resume(a1);
}

void sub_1D0BFA800(uint64_t a1)
{
  v13 = 0x100000003;
  v11 = &unk_1F4CDEB28;
  v12 = xmmword_1D0E7DCC0;
  v14 = &v15;
  v8 = 0x100000134;
  v6 = &unk_1F4CDEC90;
  v7 = xmmword_1D0E7DD20;
  v9 = &v10;
  v3 = 0x100000003;
  v1 = &unk_1F4CDEB28;
  v2 = xmmword_1D0E7DCC0;
  v4 = &v5;
  sub_1D0BFB1AC(a1, &v11, &v6, &v1, "2");
}

uint64_t sub_1D0BFA8EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x100000003;
  *(a1 + 8) = xmmword_1D0E7DCC0;
  *(a1 + 32) = a1 + 40;
  *a1 = &unk_1F4CE0D40;
  *(a1 + 64) = a2;
  *(a1 + 96) = 0x100000003;
  *(a1 + 72) = &unk_1F4CDEAA0;
  *(a1 + 80) = xmmword_1D0E7DCC0;
  *(a1 + 104) = a1 + 112;
  sub_1D0B9F5D4(a1 + 72, a3);
  v6 = *(a1 + 80);
  v5 = *(a1 + 84);
  *(a1 + 8) = v6;
  *(a1 + 12) = v5;
  v7 = (v5 * v6);
  *(a1 + 16) = v7;
  *(a1 + 20) = v6;
  if (v7 >= 1)
  {
    v8 = *(a1 + 104);
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

uint64_t sub_1D0BFA9C4@<X0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X8>)
{
  if (a1 < 0)
  {
    __assert_rtn("Zeros", "cnmatrix.h", 3098, "nr >= 0");
  }

  if (a2 < 0)
  {
    __assert_rtn("Zeros", "cnmatrix.h", 3099, "nc >= 0");
  }

  *(a3 + 24) = 0x300000003;
  *a3 = &unk_1F4CD5DD0;
  *(a3 + 32) = a3 + 40;
  *(a3 + 8) = a1;
  *(a3 + 12) = a2;
  *(a3 + 16) = a2 * a1;
  *(a3 + 20) = a1;

  return sub_1D0BBBC00(a3, 0.0);
}

void raven::RavenSolutionSelector::HandleEvent(raven::RavenSolutionSelector *this, const raven::RavenSolutionEvent *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*this & 1) == 0)
  {
    LOWORD(v108) = 12;
    LOBYTE(v107[0]) = 2;
    v12 = "Solution Selector: not configured";
LABEL_71:
    cnprint::CNPrinter::Print(&v108, v107, v12, a4, a5, a6, a7, a8, SLOBYTE(v97));
    return;
  }

  v10 = a2 + 208;
  v110 = *(a2 + 208);
  if (v110 <= 2u)
  {
    if (v110)
    {
      if (v110 == 1)
      {
        v56 = *(this + 504);
        *(this + 488) = *(a2 + 73);
        if ((v56 & 1) == 0)
        {
          *(this + 504) = 1;
        }

        goto LABEL_51;
      }

      if (v110 == 2)
      {
        v11 = 3328;
        goto LABEL_13;
      }

      goto LABEL_51;
    }

LABEL_11:
    LOWORD(v108) = 12;
    LOBYTE(v107[0]) = 4;
    v13 = (*(*a2 + 16))(a2);
    v98 = v14 + v13;
    cnprint::CNPrinter::Print(&v108, v107, "t,%.3lf,Solution Selector: invalid estimator input type,%d", v15, v16, v17, v18, v19, SLOBYTE(v98));
    return;
  }

  switch(v110)
  {
    case 3u:
      v11 = 3336;
LABEL_13:
      v20 = *(this + 1);
      v21 = *&v20[v11];
      v22 = v20[607];
      v23 = v20[606];
      v24 = v20[3368] == 1 && *(a2 + 2128) == 5;
      if (v24 && (v25 = sub_1D0BFB844(this + 56, v110)) != 0 && *(v25 + 17) == 1)
      {
        if (*(this + 504) != 1)
        {
          goto LABEL_23;
        }

        v108 = (*(*a2 + 16))(a2);
        v109 = v31;
        if ((*(this + 504) & 1) == 0)
        {
          sub_1D0C42F28();
        }

        v34 = CNTimeSpan::operator-(&v108, this + 61, v32, v33);
        if (v35 + v34 <= 10.0)
        {
          v36 = 5;
        }

        else
        {
LABEL_23:
          v36 = 999;
        }

        LOWORD(v108) = 12;
        LOBYTE(v107[0]) = 3;
        v66 = *(a2 + 2) + *(a2 + 1);
        cnprint::CNPrinter::Print(&v108, v107, "t,%.3lf,Solution Selector: GNSS data starvation - increasing min required GNSS content,est,%d,min_meas_count,%d", v26, v27, v28, v29, v30, SLOBYTE(v66));
      }

      else
      {
        v36 = 1;
      }

      v37 = (a2 + 1168);
      v38 = *(a2 + 85);
      v39 = v38 >= v36 || v22 == 0;
      v40 = v38 > 3 || v22 == 0;
      if (v40)
      {
        v108 = &v110;
        *(sub_1D0C160E0(this + 7, v110) + 3) = *v37;
      }

      if (!v39 || v23 && *(a2 + 84) < v36 && *(a2 + 83) < v36 && *(a2 + 82) < v36)
      {
        break;
      }

      v41 = v110;
      if (sub_1D0BFB844(this + 2, v110))
      {
        if (!v40)
        {
          v42 = sub_1D0BFB844(this + 7, v41);
          if (!v42)
          {
            v108 = &v110;
            *(sub_1D0C160E0(this + 7, v41) + 3) = *v37;
            v108 = &v110;
            *(sub_1D0C160E0(this + 2, v110) + 3) = *v37;
            LOWORD(v108) = 12;
            LOBYTE(v107[0]) = 2;
            v105 = *(a2 + 147) + *(a2 + 146);
            v100 = *(a2 + 2) + *(a2 + 1);
            cnprint::CNPrinter::Print(&v108, v107, "t,%.3lf,Solution Selector: GNSS data starvation - forcing initialization of last time with sufficient pseudoranges,est,%d,time,%.3lf", v67, v68, v69, v70, v71, SLOBYTE(v100));
            break;
          }

          v45 = v42;
          v46 = CNTimeSpan::operator-(a2 + 146, v42 + 3, v43, v44);
          if (v47 + v46 > v21)
          {
            LOWORD(v108) = 12;
            LOBYTE(v107[0]) = 3;
            v48 = (*(*a2 + 16))(a2);
            v50 = v49 + v48;
            v106 = *(v45 + 4) + v45[3];
            v104 = *(a2 + 147) + *(a2 + 146);
            cnprint::CNPrinter::Print(&v108, v107, "t,%.3lf,Solution Selector: GNSS data starvation - insufficient measurements over extended period,est,%d,t_curr,%.3lf,t_last_gnss,%.3lf,dt,%.3lf,psr_threshold,%u,time_threshold,%.1lf", v51, v52, v53, v54, v55, SLOBYTE(v50));
            break;
          }
        }

        v108 = &v110;
        v57 = (this + 16);
        v58 = v41;
      }

      else
      {
        LOWORD(v108) = 12;
        LOBYTE(v107[0]) = 2;
        v59 = (*(*a2 + 16))(a2);
        v99 = v60 + v59;
        cnprint::CNPrinter::Print(&v108, v107, "t,%.3lf,Solution Selector: GNSS data used in estimator,est,%d", v61, v62, v63, v64, v65, SLOBYTE(v99));
        v108 = &v110;
        v58 = v110;
        v57 = (this + 16);
      }

      *(sub_1D0C160E0(v57, v58) + 3) = *v37;
      break;
    case 4u:
      return;
    case 5u:
      goto LABEL_11;
  }

LABEL_51:
  v72 = raven::RavenSolutionSelector::SolutionSatisfiesYieldCriteria(this, a2);
  if (v72)
  {
    if (!cnprint::CNPrinter::GetLogLevel(v72))
    {
      LOWORD(v108) = 12;
      LOBYTE(v107[0]) = 0;
      v73 = (*(*a2 + 16))(a2);
      v102 = *(a2 + 208);
      v101 = v74 + v73;
      cnprint::CNPrinter::Print(&v108, v107, "t,%.3lf,Solution Selector: saving estimator %d", v75, v76, v77, v78, v79, SLOBYTE(v101));
    }

    v108 = v10;
    v80 = sub_1D0BF5758(this + 12, v10);
    memcpy(v80 + 4, a2 + 8, 0xA51uLL);
  }

  *(this + 200) = 0;
  v81 = *(*(this + 1) + 3488) - *(*(this + 1) + 3320);
  v82 = &byte_1D0E7F5EE;
  v83 = 3;
  while (1)
  {
    v84 = sub_1D0B9AF58(this + 12, v82);
    if (v84)
    {
      v85 = *(v84 + 1192);
      v86 = *(v84 + 1200);
      v108 = (*(*a2 + 16))(a2);
      v109 = v87;
      v107[0] = 0;
      v107[1] = 0;
      *v88.i64 = v81;
      *v90.i64 = CNTimeSpan::SetTimeSpan(v107, 0, v88, v89);
      v84 = CNTimeSpan::operator-(&v108, v107, v90, v91);
      if (v85)
      {
        v93 = 1;
      }

      else
      {
        v93 = (*&v86 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL;
      }

      if (!v93 || !v84 && (*&v92 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (v94 = v85 <= v84, v85 == v84))
      {
        v94 = v86 <= v92;
      }

      if (!v94)
      {
        break;
      }
    }

    ++v82;
    if (!--v83)
    {
      goto LABEL_69;
    }
  }

  *(this + 200) = *v82;
LABEL_69:
  if (!cnprint::CNPrinter::GetLogLevel(v84))
  {
    LOWORD(v108) = 12;
    LOBYTE(v107[0]) = 0;
    v95 = (*(*a2 + 16))(a2);
    v103 = *(this + 200);
    v97 = v96 + v95;
    v12 = "t,%.3lf,Solution Selector: selected estimator %d";
    goto LABEL_71;
  }
}

double sub_1D0BFB134(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    __assert_rtn("operator=", "cnsubvector.h", 347, "this->num_elements_ == A.num_elements_");
  }

  if (v2 >= 1)
  {
    v3 = *(a2 + 32);
    v4 = *(a1 + 104);
    v5 = *(*(a1 + 64) + 32);
    v6 = *(a1 + 32);
    do
    {
      v7 = *v3++;
      result = v7;
      v9 = *v4++;
      *(v5 + 8 * v9) = result;
      *v6++ = result;
      --v2;
    }

    while (v2);
  }

  return result;
}

void sub_1D0BFB1AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *__s1)
{
  v5 = *(a1 + 16);
  if (!v5)
  {
    return;
  }

  v8 = *(a1 + 8);
  v9 = *(a1 + 12);
  v10 = *__s1;
  if (v8 == 1 || v9 == 1)
  {
    if (v10 == 50)
    {
      if (!__s1[1])
      {
        v12 = *(a1 + 32);
        v13 = *v12 * *v12;
        if (v5 != 1)
        {
          v14 = v5 - 1;
          v15 = v12 + 1;
          do
          {
            v16 = *v15++;
            v13 = v13 + v16 * v16;
            --v14;
          }

          while (v14);
        }

        return;
      }
    }

    else if (v10 == 49 && !__s1[1])
    {
      v65 = *(a1 + 32);
      v66 = fabs(*v65);
      if (v5 != 1)
      {
        v67 = v5 - 1;
        v68 = v65 + 1;
        do
        {
          v69 = *v68++;
          v66 = v66 + fabs(v69);
          --v67;
        }

        while (v67);
      }

      return;
    }

    if (!strcmp(__s1, "inf"))
    {
      v32 = *(a1 + 32);
      v33 = fabs(*v32);
      if (v5 != 1)
      {
        v34 = v5 - 1;
        v35 = v32 + 1;
        do
        {
          v36 = *v35++;
          v37 = fabs(v36);
          if (v37 > v33)
          {
            v33 = v37;
          }

          --v34;
        }

        while (v34);
      }
    }

    else if (!strcmp(__s1, "-inf"))
    {
      v49 = *(a1 + 32);
      v50 = fabs(*v49);
      if (v5 != 1)
      {
        v51 = v5 - 1;
        v52 = v49 + 1;
        do
        {
          v53 = *v52++;
          v54 = fabs(v53);
          if (v54 < v50)
          {
            v50 = v54;
          }

          --v51;
        }

        while (v51);
      }
    }

    else
    {
      v90 = 0.0;
      if (sscanf(__s1, "%lg", &v90) == 1)
      {
        v26 = v90;
        if (fabs(v90) >= 2.22044605e-16)
        {
          v83 = *(a1 + 32);
          v84 = pow(fabs(*v83), v90);
          if (v5 != 1)
          {
            v85 = v5 - 1;
            v86 = v83 + 1;
            do
            {
              v87 = *v86++;
              v84 = v84 + pow(fabs(v87), v26);
              --v85;
            }

            while (v85);
          }

          pow(v84, 1.0 / v26);
        }
      }

      else
      {
        v89 = 4;
        v88 = 5;
        cnprint::CNPrinter::Print(&v89, &v88, "Error using Norm: invalid %s-norm.", v21, v22, v23, v24, v25, __s1);
      }
    }

    return;
  }

  if (v10 == 50)
  {
    if (!__s1[1])
    {
      sub_1D0C1A774(a1, a2, a3, a4);
      v19 = *(a4 + 32);
LABEL_16:
      v20 = *v19;
      return;
    }

    goto LABEL_26;
  }

  if (v10 != 49 || __s1[1])
  {
LABEL_26:
    if (!strcmp(__s1, "inf"))
    {
      if (v8)
      {
        v38 = *(a1 + 32);
        v39 = *(a2 + 32);
        v40 = v8;
        do
        {
          v41 = *v38++;
          *v39++ = fabs(v41);
          --v40;
        }

        while (v40);
      }

      if (v9 <= 1)
      {
        v43 = *(a2 + 32);
      }

      else
      {
        v42 = *(a1 + 32);
        v43 = *(a2 + 32);
        v44 = 1;
        v45 = v8;
        do
        {
          v46 = v45;
          v47 = v43;
          v48 = v8;
          if (v8)
          {
            do
            {
              *v47 = fabs(*(v42 + 8 * v46)) + *v47;
              ++v47;
              ++v46;
              --v48;
            }

            while (v48);
          }

          ++v44;
          v45 += v8;
        }

        while (v44 != v9);
      }

      v60 = *v43;
      if (v8 >= 2)
      {
        v61 = v8 - 1;
        v62 = v43 + 1;
        do
        {
          v63 = *v62++;
          v64 = v63;
          if (v63 > v60)
          {
            v60 = v64;
          }

          --v61;
        }

        while (v61);
      }
    }

    else if (!strcmp(__s1, "fro"))
    {
      v55 = *(a1 + 32);
      v56 = *v55 * *v55;
      if (v5 != 1)
      {
        v57 = v5 - 1;
        v58 = v55 + 1;
        do
        {
          v59 = *v58++;
          v56 = v56 + v59 * v59;
          --v57;
        }

        while (v57);
      }
    }

    else
    {
      v92 = 4;
      v91 = 5;
      cnprint::CNPrinter::Print(&v92, &v91, "Error using Norm: invalid %s-norm.", v27, v28, v29, v30, v31, __s1);
    }

    return;
  }

  if (!v9)
  {
    v19 = *(a2 + 32);
    goto LABEL_16;
  }

  v70 = 0;
  v71 = *(a1 + 32);
  v72 = *(a2 + 32);
  v73 = 1;
  do
  {
    v74 = fabs(*(v71 + 8 * (v8 * v70)));
    v72[v70] = v74;
    v75 = v73;
    v76 = v8 - 1;
    if (v8 >= 2)
    {
      do
      {
        v74 = v74 + fabs(*(v71 + 8 * v75));
        v72[v70] = v74;
        ++v75;
        --v76;
      }

      while (v76);
    }

    ++v70;
    v73 += v8;
  }

  while (v70 != v9);
  v78 = *v72;
  v77 = v72 + 1;
  v79 = v78;
  v80 = v9 - 1;
  do
  {
    v81 = *v77++;
    v82 = v81;
    if (v81 > v79)
    {
      v79 = v82;
    }

    --v80;
  }

  while (v80);
}

uint64_t sub_1D0BFB604(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 12);
  sub_1D0BFC4C8(v26, *(a2 + 12), 1);
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = vdupq_n_s64(v6 - 1);
    v9 = xmmword_1D0E84440;
    v10 = xmmword_1D0E7DD30;
    v11 = (v27 + 8);
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

  *(a1 + 24) = 0x800000003;
  *(a1 + 8) = xmmword_1D0E9CC00;
  *(a1 + 32) = a1 + 40;
  *a1 = &unk_1F4CEBCA8;
  *(a1 + 264) = 0x100000003;
  *(a1 + 232) = a2;
  *(a1 + 240) = &unk_1F4CDEAA0;
  *(a1 + 248) = xmmword_1D0E7DCC0;
  *(a1 + 272) = a1 + 280;
  *(a1 + 320) = 0x100000008;
  *(a1 + 296) = &unk_1F4CE43F8;
  *(a1 + 304) = xmmword_1D0E84520;
  *(a1 + 328) = a1 + 336;
  sub_1D0B9F5D4(a1 + 240, a3);
  result = sub_1D0B9F5D4(a1 + 296, v26);
  v15 = *(a1 + 256);
  v16 = *(a1 + 312);
  *(a1 + 8) = v15;
  *(a1 + 12) = v16;
  *(a1 + 16) = v16 * v15;
  *(a1 + 20) = v15;
  if (v16)
  {
    v17 = 0;
    v18 = 0;
    v19 = *(a2 + 20);
    v20 = *(a2 + 32);
    do
    {
      if (v15)
      {
        v21 = *(a1 + 272);
        v22 = *(*(a1 + 328) + 4 * v18) * v19;
        v23 = *(a1 + 32);
        v24 = v17;
        result = v15;
        do
        {
          v25 = *v21++;
          *(v23 + 8 * v24++) = *(v20 + 8 * (v25 + v22));
          --result;
        }

        while (result);
      }

      ++v18;
      v17 += v15;
    }

    while (v18 != v16);
  }

  return result;
}

uint64_t **sub_1D0BFB844(void *a1, unsigned __int8 a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % a1[1];
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  for (result = *v5; result; result = *result)
  {
    v7 = result[1];
    if (v7 == a2)
    {
      if (*(result + 16) == a2)
      {
        return result;
      }
    }

    else
    {
      if (v3.u32[0] > 1uLL)
      {
        if (v7 >= v2)
        {
          v7 %= v2;
        }
      }

      else
      {
        v7 &= v2 - 1;
      }

      if (v7 != v4)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1D0BFB8FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 24) = 0x300000001;
  *a3 = &unk_1F4CDF248;
  *(a3 + 8) = xmmword_1D0E7F310;
  *(a3 + 32) = a3 + 40;
  return sub_1D0B89390(a1, a2, a3);
}

uint64_t sub_1D0BFB980(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v2 = *(a2 + 12);
  *(a1 + 24) = 0x100000003;
  *a1 = &unk_1F4CDEB28;
  *(a1 + 8) = v2;
  *(a1 + 12) = v3;
  *(a1 + 16) = v3 * v2;
  *(a1 + 20) = v2;
  *(a1 + 32) = a1 + 40;
  return sub_1D0BD2018(a2, a1);
}

uint64_t raven::RavenSolutionSelector::SolutionSatisfiesYieldCriteria(raven::RavenSolutionSelector *this, const raven::RavenSolutionEvent *a2)
{
  v6 = *(a2 + 208);
  v4 = a2 + 208;
  v5 = v6;
  v191 = v6;
  if (v4[1] != 2 || (*(a2 + 1264) & 1) == 0)
  {
    *&v190 = &v191;
    v16 = sub_1D0C00D2C(this + 56, v5);
    *(v16 + 17) = 1;
    if (cnprint::CNPrinter::GetLogLevel(v16) <= 1)
    {
      LOWORD(v190) = 12;
      LOBYTE(v192) = 1;
      v17 = (*(*a2 + 16))(a2);
      v180 = *(a2 + 209);
      v183 = *(a2 + 1264);
      v175 = *(a2 + 208);
      v163 = v18 + v17;
      cnprint::CNPrinter::Print(&v190, &v192, "t,%.3lf,Solution Selector: solution unavailable,est,%d,health,%d,valid,%d", v19, v20, v21, v22, v23, SLOBYTE(v163));
    }

    return 0;
  }

  v190 = *(a2 + 73);
  if (COERCE_UNSIGNED_INT64(*(&v190 + 1) + v190) >> 52 >= 0x7FF)
  {
    LOWORD(v192) = 12;
    v189 = 4;
    v24 = (*(*a2 + 16))(a2);
    v176 = *(a2 + 208);
    v164 = v25 + v24;
    cnprint::CNPrinter::Print(&v192, &v189, "t,%.3lf,Solution Selector: invalid time,est,%d", v26, v27, v28, v29, v30, SLOBYTE(v164));
    return 0;
  }

  v7 = sub_1D0B9AF58(this + 12, v4);
  if (v7)
  {
    v8 = v7;
    v7 = sub_1D0B9D420(&v190, v7 + 149);
    if (v7)
    {
      if (cnprint::CNPrinter::GetLogLevel(v7) <= 1)
      {
        LOWORD(v192) = 12;
        v189 = 1;
        v9 = (*(*a2 + 16))(a2);
        v179 = *(v8 + 150) + v8[149];
        v174 = *(a2 + 208);
        v162 = v10 + v9;
        cnprint::CNPrinter::Print(&v192, &v189, "t,%.3lf,Solution Selector: solution out of order,est,%d,t_prev,%.3lf,t_evt,%.3lf", v11, v12, v13, v14, v15, SLOBYTE(v162));
      }

      return 0;
    }

    v5 = v191;
  }

  if (v5 != 1)
  {
    if (*(a2 + 2128) != 6)
    {
      if (v5 <= 5)
      {
        if (((1 << v5) & 0x31) != 0)
        {
          LOWORD(v192) = 12;
          v189 = 4;
          v32 = (*(*a2 + 16))(a2);
          v165 = v33 + v32;
          cnprint::CNPrinter::Print(&v192, &v189, "t,%.3lf,Solution Selector: invalid estimator type checked for GNSS age,est,%d", v34, v35, v36, v37, v38, SLOBYTE(v165));
          return 0;
        }

        if (((1 << v5) & 0xC) != 0)
        {
          v39 = sub_1D0BFB844(this + 2, v5);
          if (!v39)
          {
            if (!cnprint::CNPrinter::GetLogLevel(0))
            {
              LOWORD(v192) = 12;
              v189 = 0;
              v53 = (*(*a2 + 16))(a2);
              v167 = v54 + v53;
              cnprint::CNPrinter::Print(&v192, &v189, "t,%.3lf,Solution Selector: no GNSS data so far,est,%d,t_curr,%.3lf", v55, v56, v57, v58, v59, SLOBYTE(v167));
            }

            return 0;
          }

          v42 = v39;
          v43 = CNTimeSpan::operator-(&v190, v39 + 3, v40, v41);
          v45 = v44 + v43;
          if (v45 < 0.0)
          {
            LOWORD(v192) = 12;
            v189 = 4;
            v46 = (*(*a2 + 16))(a2);
            v184 = *(v42 + 4) + v42[3];
            v166 = v47 + v46;
            cnprint::CNPrinter::Print(&v192, &v189, "t,%.3lf,Solution Selector: last GNSS time is ahead of current time,est,%d,t_curr,%.3lf,t_last_gnss,%.3lf", v48, v49, v50, v51, v52, SLOBYTE(v166));
            return 0;
          }

          v60 = 3336;
          if (v5 == 2)
          {
            v60 = 3328;
          }

          if (v45 > *(*(this + 1) + v60))
          {
            LOWORD(v192) = 12;
            v189 = 2;
            v61 = (*(*a2 + 16))(a2);
            v185 = *(v42 + 4) + v42[3];
            v168 = v62 + v61;
            cnprint::CNPrinter::Print(&v192, &v189, "t,%.3lf,Solution Selector: GNSS data starvation,est,%d,t_curr,%.3lf,t_last_gnss,%.3lf,dt,%.3lf", v63, v64, v65, v66, v67, SLOBYTE(v168));
            v192 = &v191;
            *(sub_1D0C00D2C(this + 56, v191) + 17) = 1;
            sub_1D0BFCDC4(this + 17, v191);
            return 0;
          }

          v68 = sub_1D0BFB844(this + 56, v5);
          if (*(this + 208) == 1)
          {
            v71 = v68;
            v72 = *(this + 442);
            if (v72 == 1)
            {
              v73 = CNTimeSpan::operator-(&v190, this + 40, v69, v70);
              if (fabs(v74 + v73) < 600.0)
              {
                v7 = sub_1D0BFB844(this + 17, v5);
                if (!v71 || *(v71 + 17) != 1)
                {
                  goto LABEL_54;
                }

                v77 = v7;
                if (*(this + 504) == 1)
                {
                  v78 = CNTimeSpan::operator-(&v190, this + 61, v75, v76);
                  *v75.i64 = v79 + v78;
                  v76.i64[0] = 2.5;
                  if (*v75.i64 > 2.5)
                  {
                    if (cnprint::CNPrinter::GetLogLevel(v78) <= 1)
                    {
                      LOWORD(v192) = 12;
                      v189 = 1;
                      v80 = (*(*a2 + 16))(a2);
                      if ((*(this + 504) & 1) == 0)
                      {
                        sub_1D0C42F28();
                      }

                      *v82.i64 = v81;
                      *v83.i64 = v80;
                      v84 = v81 + v80;
                      CNTimeSpan::operator-(&v190, this + 61, v82, v83);
                      cnprint::CNPrinter::Print(&v192, &v189, "t,%.3lf,Solution Selector: rejected solution due to time_difference_from_passthrough check failed while in tunnel after a recent GNSS starvation or nonhealthy period, time_difference_from_passthrough,%.2lf", v85, v86, v87, v88, v89, SLOBYTE(v84));
                    }

                    return 0;
                  }
                }

                if (!v77)
                {
                  v192 = &v191;
                  v154 = sub_1D0C160E0(this + 17, v5);
                  *(v154 + 3) = *(a2 + 73);
                  if (cnprint::CNPrinter::GetLogLevel(v154) <= 1)
                  {
                    LOWORD(v192) = 12;
                    v189 = 1;
                    v155 = (*(*a2 + 16))(a2);
                    v173 = v156 + v155;
                    cnprint::CNPrinter::Print(&v192, &v189, "t,%.3lf,Solution Selector: rejected solution due to still being in tunnel after recent GNSS starvation or nonhealthy period, time_since_last_tunnel_bridge_notification_event,%.2lf", v157, v158, v159, v160, v161, SLOBYTE(v173));
                  }

                  return 0;
                }

                v103 = CNTimeSpan::operator-(&v190, v77 + 3, v75, v76);
                if (fabs(v104 + v103) < 10.0)
                {
                  if (cnprint::CNPrinter::GetLogLevel(v103) <= 1)
                  {
                    LOWORD(v192) = 12;
                    v189 = 1;
                    v105 = (*(*a2 + 16))(a2);
                    *v107.i64 = v106;
                    *v108.i64 = v105;
                    v109 = v106 + v105;
                    CNTimeSpan::operator-(&v190, v77 + 3, v107, v108);
                    cnprint::CNPrinter::Print(&v192, &v189, "t,%.3lf,Solution Selector: rejected solution due to still being in tunnel after recent GNSS starvation or nonhealthy period, time_since_last_tunnel_bridge_notification_event,%.2lf,time_since_first_tunnel_rejection,%.2lf", v110, v111, v112, v113, v114, SLOBYTE(v109));
                  }

                  return 0;
                }
              }
            }

            else if ((v72 & 1) == 0 && *(this + 512) == 1)
            {
              v90 = CNTimeSpan::operator-(&v190, this + 65, v69, v70);
              v92 = fabs(v91 + v90) >= 5.0 || v71 == 0;
              if (!v92 && *(v71 + 17) == 1)
              {
                if (cnprint::CNPrinter::GetLogLevel(v90) <= 1)
                {
                  LOWORD(v192) = 12;
                  v189 = 1;
                  v93 = (*(*a2 + 16))(a2);
                  if ((*(this + 512) & 1) == 0)
                  {
                    __assert_rtn("get", "optional.hpp", 1212, "this->is_initialized()");
                  }

                  *v95.i64 = v94;
                  *v96.i64 = v93;
                  v97 = v94 + v93;
                  CNTimeSpan::operator-(&v190, this + 65, v95, v96);
                  cnprint::CNPrinter::Print(&v192, &v189, "t,%.3lf,Solution Selector: rejected solution post-tunnel exit after recent GNSS starvation period, time since in tunnel,%.2lf", v98, v99, v100, v101, v102, SLOBYTE(v97));
                }

                return 0;
              }
            }
          }

          raven::RavenSolutionSelector::ResetTunnelInformationForEstimatorType(this, v5);
        }
      }

LABEL_54:
      v115 = *(a2 + 162);
      v117 = (v115 < 0 || ((v115 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE) && (v115 - 1) > 0xFFFFFFFFFFFFELL;
      if (v117 || ((v118 = *(a2 + 165), v118 >= 0) ? (v119 = ((v118 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE) : (v119 = 1), v119 ? (v120 = (v118 - 1) > 0xFFFFFFFFFFFFELL) : (v120 = 0), v120 || ((v121 = *(a2 + 167), v121 > -1) ? (v122 = ((v121 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) : (v122 = 1), v122 ? (v123 = (v121 - 1) >= 0xFFFFFFFFFFFFFLL) : (v123 = 0), v123)))
      {
        LOWORD(v192) = 12;
        v189 = 4;
        v139 = (*(*a2 + 16))(a2);
        v186 = *(a2 + 165);
        v187 = *(a2 + 167);
        v182 = *(a2 + 162);
        v171 = v140 + v139;
        cnprint::CNPrinter::Print(&v192, &v189, "t,%.3lf,Solution Selector: invalid covariance,est,%d,pxx,%.3lf,pyy,%.3lf,pzz,%.3lf", v141, v142, v143, v144, v145, SLOBYTE(v171));
      }

      else
      {
        if (COERCE_UNSIGNED_INT64(*(a2 + 29) + *(a2 + 28)) >> 52 >= 0x7FF)
        {
          LOWORD(v192) = 12;
          v189 = 4;
          v124 = (*(*a2 + 16))(a2);
          v169 = v125 + v124;
          cnprint::CNPrinter::Print(&v192, &v189, "t,%.3lf,Solution Selector: invalid age,est,%d,age,%.3lf", v126, v127, v128, v129, v130, SLOBYTE(v169));
        }

        v131 = *(a2 + 27);
        if ((*&v131 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || v131 < 0.0 || v131 > 1.0)
        {
          if (cnprint::CNPrinter::GetLogLevel(v7) <= 1)
          {
            LOWORD(v192) = 12;
            v189 = 1;
            v132 = (*(*a2 + 16))(a2);
            v181 = *(a2 + 27);
            v177 = *(a2 + 208);
            v170 = v133 + v132;
            cnprint::CNPrinter::Print(&v192, &v189, "t,%.3lf,Solution Selector: invalid probabilty valid,est,%d,prob,%.3lf", v134, v135, v136, v137, v138, SLOBYTE(v170));
          }

          return 0;
        }

        v146 = *(this + 1);
        if (sqrt(*(a2 + 162) + *(a2 + 165) + *(a2 + 167)) > v146[418] || *(a2 + 29) + *(a2 + 28) < v146[419] || v131 < v146[420])
        {
          v188 = *(a2 + 29) + *(a2 + 28);
          if (cnprint::CNPrinter::GetLogLevel(v7) <= 1)
          {
            LOWORD(v192) = 12;
            v189 = 1;
            v147 = (*(*a2 + 16))(a2);
            v178 = *(a2 + 208);
            v172 = v148 + v147;
            cnprint::CNPrinter::Print(&v192, &v189, "t,%.3lf,Solution Selector: fail yield criteria,est,%d,pos_unc,%.1lf,age,%.1lf,prob_valid,%.1lf", v149, v150, v151, v152, v153, SLOBYTE(v172));
          }

          return 0;
        }
      }

      return 1;
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1D0BFC4C8(uint64_t result, int a2, int a3)
{
  *(result + 24) = 0x100000008;
  *(result + 32) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = &unk_1F4CE43F8;
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

uint64_t sub_1D0BFC58C(uint64_t result, uint64_t a2)
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
        v7 = *(result + 232);
        v8 = *(result + 272);
        v9 = *(v7 + 20) * *(*(result + 328) + 4 * v5);
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

uint64_t sub_1D0BFC678@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 24) = 0x100000001;
  *a3 = &unk_1F4CDF418;
  *&v3 = 0x100000001;
  *(&v3 + 1) = 0x100000001;
  *(a3 + 8) = v3;
  *(a3 + 32) = a3 + 40;
  return sub_1D0B89390(a1, a2, a3);
}

void raven::RavenSolutionSelector::ResetTunnelInformationForEstimatorType(void *a1, unsigned __int8 a2)
{
  sub_1D0BFCDC4(a1 + 17, a2);
  v4 = sub_1D0BFB844(a1 + 56, a2);
  if (!v4)
  {
    return;
  }

  v5 = a1[57];
  v6 = *v4;
  v7 = v4[1];
  v8 = vcnt_s8(v5);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    if (v7 >= *&v5)
    {
      v7 %= *&v5;
    }
  }

  else
  {
    v7 &= *&v5 - 1;
  }

  v9 = a1[56];
  v10 = *(v9 + 8 * v7);
  do
  {
    v11 = v10;
    v10 = *v10;
  }

  while (v10 != v4);
  if (v11 == a1 + 58)
  {
    goto LABEL_20;
  }

  v12 = v11[1];
  if (v8.u32[0] > 1uLL)
  {
    if (v12 >= *&v5)
    {
      v12 = (v12 % *&v5);
    }
  }

  else
  {
    v12 = (v12 & (*&v5 - 1));
  }

  if (v12 != v7)
  {
LABEL_20:
    if (v6)
    {
      v13 = v6[1];
      if (v8.u32[0] > 1uLL)
      {
        v14 = v6[1];
        if (v13 >= *&v5)
        {
          v14 = (v13 % *&v5);
        }
      }

      else
      {
        v14 = (v13 & (*&v5 - 1));
      }

      if (v14 == v7)
      {
        goto LABEL_24;
      }
    }

    *(v9 + 8 * v7) = 0;
    v6 = *v4;
  }

  if (v6)
  {
    v13 = v6[1];
LABEL_24:
    if (v8.u32[0] > 1uLL)
    {
      if (v13 >= *&v5)
      {
        v13 = (v13 % *&v5);
      }
    }

    else
    {
      v13 = (v13 & (*&v5 - 1));
    }

    if (v13 != v7)
    {
      *(a1[56] + 8 * v13) = v11;
      v6 = *v4;
    }
  }

  *v11 = v6;
  *v4 = 0;
  --a1[59];

  operator delete(v4);
}

__n128 sub_1D0BFC870(uint64_t a1, uint64_t a2, char **lpsrc, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!lpsrc || (v13 = **lpsrc, (v14 = __dynamic_cast(lpsrc, &unk_1F4CE42A0, &unk_1F4CEB7A8, 0)) == 0))
  {
    LOWORD(v73) = 12;
    LOBYTE(v68) = 4;
    v36 = MEMORY[0x30] + MEMORY[0x28];
LABEL_26:
    cnprint::CNPrinter::Print(&v73, &v68, "time,%.3lf,h-function failure on line %d: %s() %s", a4, a5, a6, a7, a8, SLOBYTE(v36));
    return result;
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

  if (!v17 || !v16 || v18 != 8 || ((v20 = *(a2 + 8), v19 = *(a2 + 12), v20 <= v19) ? (v21 = *(a2 + 12)) : (v21 = *(a2 + 8)), !v20 || !v19 || v21 != 1))
  {
    LOWORD(v73) = 12;
    LOBYTE(v68) = 4;
    v36 = v14[6] + *(v14 + 5);
    goto LABEL_26;
  }

  v22 = v14[7];
  if (v22 <= 0.0)
  {
    LOWORD(v73) = 12;
    LOBYTE(v68) = 4;
    v36 = v14[6] + *(v14 + 5);
    goto LABEL_26;
  }

  v23 = 0;
  v88 = -v22;
  v85 = 0x100000006;
  v83 = &unk_1F4CE0BF8;
  v86 = v87;
  v84 = xmmword_1D0E84530;
  memset(v87, 0, sizeof(v87));
  v80 = 0x100000006;
  v79 = xmmword_1D0E84530;
  v78 = &unk_1F4CE0BF8;
  v81 = &v82;
  v75 = 0x600000006;
  v73 = &unk_1F4CDF278;
  v74 = xmmword_1D0E7F320;
  v76 = &v77;
  v70 = 0x600000006;
  v69 = xmmword_1D0E7F320;
  v68 = &unk_1F4CDF278;
  v71 = &v72;
  v24 = xmmword_1D0E7DD30;
  v25 = &v48 + 1;
  v26 = vdupq_n_s64(2uLL);
  v27 = vdupq_n_s64(6uLL);
  do
  {
    if (vmovn_s64(vcgtq_u64(v27, v24)).u8[0])
    {
      *(v25 - 1) = v23;
    }

    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(6uLL), *&v24)).i32[1])
    {
      *v25 = v23 + 1;
    }

    v23 += 2;
    v24 = vaddq_s64(v24, v26);
    v25 += 2;
  }

  while (v23 != 6);
  v64 = 0x100000006;
  v62 = &unk_1F4CE1400;
  v65 = &v66;
  v63 = xmmword_1D0E84530;
  v66 = v48;
  v67 = v49;
  sub_1D0BFD4AC(v61, *(a1 + 32), &v62);
  if (sub_1D0BFCF2C(v61, &v83, &v88, &v78, &v73, &v68, v28, v29))
  {
    v47[0] = 12;
    v45[0] = 4;
    v44 = v15[6] + *(v15 + 5);
    cnprint::CNPrinter::Print(v47, v45, "time,%.3lf,h-function failure on line %d: %s() %s", v30, v31, v32, v33, v34, SLOBYTE(v44));
  }

  else
  {
    sub_1D0BD2CA4(v59, **(a1 + 32), *(*(a1 + 32) + 8), *(*(a1 + 32) + 16));
    if (v59[8])
    {
      v56 = 0x300000003;
      v54 = &unk_1F4CD5DD0;
      v55 = xmmword_1D0E76C10;
      v57 = &v58;
      sub_1D0B894B0(&v54, &v60);
      sub_1D0BFD5F0(v50);
      sub_1D0BFD7B4(v51, &v54, v50);
      sub_1D0BFD9FC(v45);
      sub_1D0BFE440(v47, v45, &v73);
      sub_1D0BFE560(v53, v51, v47);
      sub_1D0BFE784(v45, v53, v61);
      v41 = *(v46 + 16);
      *&v42 = 0x100000001;
      *(&v42 + 1) = 0x100000001;
      *(a4 + 8) = v42;
      **(a4 + 32) = v41 + **(a2 + 32);
      sub_1D0BFE89C(1, 3, v51);
      *(v52 + 16) = 0x3FF0000000000000;
      sub_1D0BFE810(v47, v51, v53);
      sub_1D0B894B0(a5, v47);
      *(a5 + 8) = xmmword_1D0E9CBE0;
      v43 = *(a5 + 32);
      *(v43 + 48) = 0;
      *(v43 + 56) = 0;
      result.n128_u64[0] = 0x100000001;
      result.n128_u64[1] = 0x100000001;
      *(a6 + 8) = result;
      **(a6 + 32) = 0x3FF0000000000000;
    }

    else
    {
      result.n128_f64[0] = sub_1D0D85A30((v15 + 5), "could not compute Jacobian", "h_AltitudeChange_RavenConvergence", 366, v37, v38, v39, v40);
    }
  }

  return result;
}

void sub_1D0BFCDC4(void *a1, unsigned __int8 a2)
{
  v3 = sub_1D0BFB844(a1, a2);
  if (!v3)
  {
    return;
  }

  v4 = a1[1];
  v5 = *v3;
  v6 = v3[1];
  v7 = vcnt_s8(v4);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    if (v6 >= *&v4)
    {
      v6 %= *&v4;
    }
  }

  else
  {
    v6 &= *&v4 - 1;
  }

  v8 = *(*a1 + 8 * v6);
  do
  {
    v9 = v8;
    v8 = *v8;
  }

  while (v8 != v3);
  if (v9 == a1 + 2)
  {
    goto LABEL_20;
  }

  v10 = v9[1];
  if (v7.u32[0] > 1uLL)
  {
    if (v10 >= *&v4)
    {
      v10 = (v10 % *&v4);
    }
  }

  else
  {
    v10 = (v10 & (*&v4 - 1));
  }

  if (v10 != v6)
  {
LABEL_20:
    if (v5)
    {
      v11 = v5[1];
      if (v7.u32[0] > 1uLL)
      {
        v12 = v5[1];
        if (v11 >= *&v4)
        {
          v12 = (v11 % *&v4);
        }
      }

      else
      {
        v12 = (v11 & (*&v4 - 1));
      }

      if (v12 == v6)
      {
        goto LABEL_24;
      }
    }

    *(*a1 + 8 * v6) = 0;
    v5 = *v3;
  }

  if (v5)
  {
    v11 = v5[1];
LABEL_24:
    if (v7.u32[0] > 1uLL)
    {
      if (v11 >= *&v4)
      {
        v11 = (v11 % *&v4);
      }
    }

    else
    {
      v11 = (v11 & (*&v4 - 1));
    }

    if (v11 != v6)
    {
      *(*a1 + 8 * v11) = v9;
      v5 = *v3;
    }
  }

  *v9 = v5;
  *v3 = 0;
  --a1[3];

  operator delete(v3);
}

uint64_t sub_1D0BFCF2C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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

  v12 = !v11 && v10 == 6;
  if (v12 && ((v14 = *(a2 + 8), v15 = *(a2 + 12), v14 <= v15) ? (v16 = *(a2 + 12)) : (v16 = *(a2 + 8)), v14 ? (v17 = v15 == 0) : (v17 = 1), !v17 ? (v18 = v16 == 6) : (v18 = 0), v18))
  {
    v23 = *a3;
    v58 = 0x600000006;
    v56 = &unk_1F4CDF278;
    v59 = &v60;
    v57 = xmmword_1D0E7F320;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v67 = 0;
    v69 = 0u;
    v70 = 0;
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v76 = 0;
    v78 = 0u;
    v79 = 0;
    v81 = 0u;
    v60 = 0x3FF0000000000000;
    *&v64 = 0x3FF0000000000000;
    v68 = 0x3FF0000000000000;
    *&v73 = 0x3FF0000000000000;
    v77 = 0x3FF0000000000000;
    v82 = 0x3FF0000000000000;
    v71 = v23;
    *&v75 = v23;
    v80 = v23;
    v53 = 0x100000006;
    v52 = xmmword_1D0E84530;
    v51 = &unk_1F4CE0BF8;
    v54 = &v55;
    sub_1D0B89390(&v56, a1, &v51);
    v27 = 0x100000006;
    v25 = &unk_1F4CE0BF8;
    v26 = xmmword_1D0E84530;
    v28 = &v29;
    sub_1D0B88838(&v51, a2, &v25);
    sub_1D0B894B0(a4, &v25);
    sub_1D0B894B0(a5, &v56);
    v27 = 0x600000006;
    v25 = &unk_1F4CDF278;
    v26 = xmmword_1D0E7F320;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v42 = 0;
    v43 = 0u;
    v44 = 0u;
    v45 = 0;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v28 = &v29;
    v29 = 0x3FF0000000000000;
    v33 = 0x3FF0000000000000uLL;
    v37 = 0x3FF0000000000000;
    v41 = 0x3FF0000000000000;
    v46 = 0x3FF0000000000000;
    v50 = 0x3FF0000000000000;
    sub_1D0B894B0(a6, &v25);
    return 0;
  }

  else
  {
    LOWORD(v56) = 12;
    LOBYTE(v25) = 4;
    cnprint::CNPrinter::Print(&v56, &v25, "f_SixStateNearlyConstantVelocity called with inadequate matrices.", a4, a5, a6, a7, a8, v24);
    return 0xFFFFFFFFLL;
  }
}

uint64_t raven::RavenSolutionSelector::GetRavenSolution(raven::RavenSolutionSelector *this, raven::RavenSolutionEvent *a2)
{
  if (*this)
  {
    v4 = this + 200;
    if (*(this + 200))
    {
      if (sub_1D0B9AF58(this + 12, v4))
      {
        *&v36[0] = v4;
        v5 = sub_1D0BF5758(this + 12, v4);
        v6 = v5;
        v7 = v5 + 3;
        if (*(this + 200) != *(this + 176) || (*&v36[0] = ((*v7)[2])(v5 + 3), v36[1] = v8, !sub_1D0B9D420(v36, this + 23)))
        {
          memcpy(a2 + 8, v6 + 4, 0xA51uLL);
          *(a2 + 208) = 4;
          *(this + 176) = *(this + 200);
          v9 = (v6[3][2])(v7);
          result = 0;
          *(this + 23) = v9;
          *(this + 24) = v11;
          return result;
        }
      }

      else
      {
        LOWORD(v36[0]) = 12;
        v37 = 4;
        v26 = (*(*a2 + 16))(a2);
        v35 = v27 + v26;
        cnprint::CNPrinter::Print(v36, &v37, "t,%.3lf,Solution Selector: specified estimator unavailable", v28, v29, v30, v31, v32, SLOBYTE(v35));
      }
    }

    else
    {
      LOWORD(v36[0]) = 12;
      v37 = 2;
      v19 = (*(*a2 + 16))(a2);
      v34 = v20 + v19;
      cnprint::CNPrinter::Print(v36, &v37, "t,%.3lf,Solution Selector: no estimators meet yield criteria", v21, v22, v23, v24, v25, SLOBYTE(v34));
    }
  }

  else
  {
    LOWORD(v36[0]) = 12;
    v37 = 4;
    v12 = (*(*a2 + 16))(a2);
    v33 = v13 + v12;
    cnprint::CNPrinter::Print(v36, &v37, "t,%.3lf,Solution Selector: not configured", v14, v15, v16, v17, v18, SLOBYTE(v33));
  }

  return 0xFFFFFFFFLL;
}

void sub_1D0BFD46C(uint64_t a1, raven::RavenPositionContextEstimatorActiveObject **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0B9FD10(v9, a3, a3, a4, a5, a6, a7, a8);
  raven::RavenPositionContextEstimatorActiveObject::HandleEvent(v8, v9);
}

double sub_1D0BFD4AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  v4 = *(a3 + 12);
  v5 = (v4 * v3);
  *&result = 0x100000006;
  *(a1 + 24) = 0x100000006;
  *a1 = &unk_1F4CE0BF8;
  *(a1 + 8) = v3;
  *(a1 + 12) = v4;
  *(a1 + 16) = v5;
  *(a1 + 20) = v3;
  v7 = (a1 + 40);
  *(a1 + 32) = a1 + 40;
  if (v5)
  {
    v8 = *(a3 + 32);
    do
    {
      v9 = *v8++;
      result = *(a2 + 8 * v9);
      *v7++ = result;
      --v5;
    }

    while (v5);
  }

  return result;
}

void raven::RavenPositionContextEstimatorActiveObject::HandleEvent(raven::RavenPositionContextEstimatorActiveObject *this, const raven::RavenSolutionEvent *a2)
{
  if (*(this + 224))
  {
    *(this + 61) = *(a2 + 169);
    *(this + 496) = *(a2 + 1344);
  }

  else
  {
    v12 = 12;
    v11 = 2;
    v10[0] = (*(*a2 + 16))(a2);
    v10[1] = v3;
    cnprint::CNLogFormatter::FormatGeneral(this + 264, v10, "RavenPositionContextEstimatorActiveObject is not configured.");
    if (*(this + 287) >= 0)
    {
      LOBYTE(v9) = this + 8;
    }

    else
    {
      v9 = *(this + 33);
    }

    cnprint::CNPrinter::Print(&v12, &v11, "%s", v4, v5, v6, v7, v8, v9);
  }
}

uint64_t sub_1D0BFD5F0(uint64_t a1)
{
  *(a1 + 24) = 0x600000003;
  *a1 = &unk_1F4CEB7D0;
  *(a1 + 32) = a1 + 40;
  *(a1 + 8) = xmmword_1D0E9CBF0;
  result = sub_1D0BBBC00(a1, 0.0);
  v3 = *(a1 + 20) + 1;
  v4 = *(a1 + 32);
  *v4 = 0x3FF0000000000000;
  v4[v3] = 0x3FF0000000000000;
  v4[2 * v3] = 0x3FF0000000000000;
  return result;
}

void sub_1D0BFD674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x1EEE9AC00](a1, a2, a3, a4);
  v5 = *v4;
  sub_1D0B9FD10(v18, v6, v6, v7, v8, v9, v10, v11);
  if (v5[1720])
  {
    sub_1D0BAD0C8(__p);
    if (!raven::RavenSolutionPostprocessor::PostprocessRavenSolution((v5 + 224), v18, __p))
    {
      sub_1D0BAE448();
    }
  }

  else
  {
    v22 = 12;
    v21 = 2;
    (*(*v5 + 16))(__p, v5);
    if (v20 >= 0)
    {
      v17 = __p;
    }

    else
    {
      LOBYTE(v17) = __p[0];
    }

    cnprint::CNPrinter::Print(&v22, &v21, "Warning: %s Active Object not configured", v12, v13, v14, v15, v16, v17);
    if (v20 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1D0BFD778(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0xA7F]) < 0)
  {
    operator delete(STACK[0xA68]);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1D0BFD7B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x600000003;
  *a1 = &unk_1F4CEB7D0;
  *(a1 + 8) = xmmword_1D0E9CBF0;
  *(a1 + 32) = a1 + 40;
  return sub_1D0B89390(a2, a3, a1);
}

uint64_t raven::RavenSolutionPostprocessor::PostprocessRavenSolution(raven::RavenSolutionPostprocessor *this, const raven::RavenSolutionEvent *a2, raven::RavenSolutionEvent *a3)
{
  memcpy(a3 + 8, a2 + 8, 0xA51uLL);
  ShouldBeClamped = raven::RavenSolutionPostprocessor::ShouldBeClamped(this, a2, v6, v7);
  if (ShouldBeClamped)
  {
    if ((*(this + 1296) & 1) == 0 && cnprint::CNPrinter::GetLogLevel(ShouldBeClamped) <= 1)
    {
      v29 = 12;
      v28 = 1;
      v9 = (*(*a2 + 16))(a2);
      v24 = v10 + v9;
      cnprint::CNPrinter::Print(&v29, &v28, "t,%.3lf,RavenSolutionPostprocessor,clamping started", v11, v12, v13, v14, v15, SLOBYTE(v24));
    }

    *(this + 1296) = 1;
    *(a3 + 159) = *(this + 67);
    *(a3 + 80) = *(this + 34);
    *(a3 + 92) = *(this + 46);
    *(a3 + 186) = *(this + 94);
    *(a3 + 169) = 0;
    *(a3 + 194) = 0;
    *(a3 + 196) = 0;
    *(a3 + 195) = 0;
    if (*(this + 609) == 1)
    {
      *(a3 + 85) = *(this + 39);
      *(a3 + 172) = *(this + 80);
    }
  }

  else
  {
    if (*(this + 1296) && cnprint::CNPrinter::GetLogLevel(ShouldBeClamped) <= 1)
    {
      v27 = 12;
      v26 = 1;
      v16 = (*(*a2 + 16))(a2);
      v25 = v17 + v16;
      cnprint::CNPrinter::Print(&v27, &v26, "t,%.3lf,RavenSolutionPostprocessor,clamping stopped", v18, v19, v20, v21, v22, SLOBYTE(v25));
    }

    *(this + 1296) = 0;
  }

  memcpy(this + 432, a3 + 1168, 0x360uLL);
  raven::RavenSolutionPostprocessor::PushToClampingHistory(this, a2);
  raven::RavenSolutionPostprocessor::AdjustRavenSolutionUncertainties(this, a3);
  return 0;
}

uint64_t sub_1D0BFD9FC(uint64_t a1)
{
  *(a1 + 24) = 0x600000006;
  *a1 = &unk_1F4CDF278;
  *(a1 + 32) = a1 + 40;
  *(a1 + 8) = xmmword_1D0E7F320;
  result = sub_1D0BBBC00(a1, 0.0);
  v3 = 0;
  v4 = *(a1 + 20) + 1;
  v5 = *(a1 + 32);
  v6 = 6;
  do
  {
    *(v5 + 8 * v3) = 0x3FF0000000000000;
    v3 += v4;
    --v6;
  }

  while (v6);
  return result;
}

uint64_t raven::RavenSolutionPostprocessor::ShouldBeClamped(raven::RavenSolutionPostprocessor *this, const raven::RavenSolutionEvent *a2, int8x16_t a3, int8x16_t a4)
{
  v169 = *MEMORY[0x1E69E9840];
  a3.i64[0] = 0x4000A1A34BF0F1F5;
  a4.i64[0] = 1.0;
  if (*(this + 1296))
  {
    v5 = 2.07892474;
  }

  else
  {
    v5 = 1.0;
  }

  if ((*(*(this + 1) + 3822) & 1) == 0)
  {
    if (!cnprint::CNPrinter::GetLogLevel(this))
    {
      LOWORD(v164) = 12;
      LOBYTE(v159) = 0;
      v13 = (*(*a2 + 16))(a2);
      v137 = v14 + v13;
      cnprint::CNPrinter::Print(&v164, &v159, "t,%.3lf,RavenSolutionPostprocessor: Not clamping - clamping disabled.", v15, v16, v17, v18, v19, SLOBYTE(v137));
    }

    goto LABEL_36;
  }

  if (*(a2 + 209) != 2)
  {
    if (!cnprint::CNPrinter::GetLogLevel(this))
    {
      LOWORD(v164) = 12;
      LOBYTE(v159) = 0;
      v20 = (*(*a2 + 16))(a2);
      v138 = v21 + v20;
      cnprint::CNPrinter::Print(&v164, &v159, "t,%.3lf,RavenSolutionPostprocessor: Not clamping - solution not healthy.", v22, v23, v24, v25, v26, SLOBYTE(v138));
    }

    goto LABEL_36;
  }

  if ((*(a2 + 1264) & 1) == 0)
  {
    if (!cnprint::CNPrinter::GetLogLevel(this))
    {
      LOWORD(v164) = 12;
      LOBYTE(v159) = 0;
      v27 = (*(*a2 + 16))(a2);
      v139 = v28 + v27;
      cnprint::CNPrinter::Print(&v164, &v159, "t,%.3lf,RavenSolutionPostprocessor: Not clamping - user position invalid.", v29, v30, v31, v32, v33, SLOBYTE(v139));
    }

    goto LABEL_36;
  }

  if (*(a2 + 2128) == 9)
  {
    if (!cnprint::CNPrinter::GetLogLevel(this))
    {
      LOWORD(v164) = 12;
      LOBYTE(v159) = 0;
      v6 = (*(*a2 + 16))(a2);
      v136 = v7 + v6;
      cnprint::CNPrinter::Print(&v164, &v159, "t,%.3lf,RavenSolutionPostprocessor: Not clamping - airborne.", v8, v9, v10, v11, v12, SLOBYTE(v136));
    }
  }

  else
  {
    v35 = *(this + 7);
    if (!v35)
    {
      if (!cnprint::CNPrinter::GetLogLevel(this))
      {
        LOWORD(v164) = 12;
        LOBYTE(v159) = 0;
        v45 = (*(*a2 + 16))(a2);
        v141 = v46 + v45;
        cnprint::CNPrinter::Print(&v164, &v159, "t,%.3lf,RavenSolutionPostprocessor: Not clamping - no prior solution.", v47, v48, v49, v50, v51, SLOBYTE(v141));
      }

      goto LABEL_36;
    }

    v164 = CNTimeSpan::operator-(a2 + 146, (*(*(this + 3) + (((v35 + *(this + 6) - 1) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 864 * ((v35 + *(this + 12) - 1) & 0xF)), a3, a4);
    v165 = v36;
    v37 = sub_1D0B7CF88(&v164, this + 165);
    if (v37)
    {
      if (!cnprint::CNPrinter::GetLogLevel(v37))
      {
        LOWORD(v164) = 12;
        LOBYTE(v159) = 0;
        v38 = (*(*a2 + 16))(a2);
        v140 = v39 + v38;
        cnprint::CNPrinter::Print(&v164, &v159, "t,%.3lf,RavenSolutionPostprocessor: Not clamping - previous solution too old.", v40, v41, v42, v43, v44, SLOBYTE(v140));
      }
    }

    else
    {
      v167 = *(a2 + 1272);
      v168 = *(a2 + 161);
      if (cnnavigation::ECEFToLLA(&v167, 1, v166, 0, &v164))
      {
        LOWORD(v164) = 12;
        LOBYTE(v159) = 2;
        v52 = (*(*a2 + 16))(a2);
        v142 = v53 + v52;
        cnprint::CNPrinter::Print(&v164, &v159, "t,%.3lf,RavenSolutionPostprocessor: Not clamping - ECEF to LLA conversion failed.", v54, v55, v56, v57, v58, SLOBYTE(v142));
      }

      else
      {
        sub_1D0BFE48C(&v164, v166[0], v166[1]);
        if (v165)
        {
          v161 = 0x300000003;
          v159 = &unk_1F4CD5DD0;
          v160 = xmmword_1D0E76C10;
          v162 = &v163;
          v59 = sub_1D0BFE5EC(a2 + 1168, &v159);
          if (v60)
          {
            v156 = 0x300000003;
            v154 = &unk_1F4CD5DD0;
            v155 = xmmword_1D0E76C10;
            v157 = &v158;
            v61 = sub_1D0BFE654(&v164, &v159, &v154);
            if (v61)
            {
              v62 = sqrt(*v157 + v157[SHIDWORD(v155) + 1]);
              if (v62 <= 0.0)
              {
                v153 = 12;
                v152 = 2;
                v92 = (*(*a2 + 16))(a2);
                v147 = v93 + v92;
                cnprint::CNPrinter::Print(&v153, &v152, "t,%.3lf,RavenSolutionPostprocessor: Not clamping - hunc not positive: %.3f.", v94, v95, v96, v97, v98, SLOBYTE(v147));
              }

              else
              {
                v63 = *(this + 6);
                if (*(a2 + 2544) - 1 >= 2)
                {
                  v101 = *(this + 3);
                  if (*(this + 4) != v101)
                  {
                    v102 = (v101 + 8 * (v63 >> 4));
                    v103 = *v102 + 864 * (*(this + 6) & 0xFLL);
                    v104 = *(v101 + (((*(this + 7) + v63) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 864 * ((*(this + 14) + v63) & 0xF);
                    if (v103 != v104)
                    {
                      while (1)
                      {
                        v61 = raven::RavenSolutionPostprocessor::HorizontalDistanceCheck(v5, v62, v61, a2 + 1168, v103, &v164);
                        if ((v61 & 1) == 0)
                        {
                          break;
                        }

                        v103 += 864;
                        if (v103 - *v102 == 13824)
                        {
                          v105 = v102[1];
                          ++v102;
                          v103 = v105;
                        }

                        if (v103 == v104)
                        {
                          goto LABEL_44;
                        }
                      }

                      if (!cnprint::CNPrinter::GetLogLevel(v61))
                      {
                        v153 = 12;
                        v152 = 0;
                        v129 = (*(*a2 + 16))(a2);
                        v151 = v130 + v129;
                        cnprint::CNPrinter::Print(&v153, &v152, "t,%.3lf,RavenSolutionPostprocessor: Not clamping - non-static distance check.", v131, v132, v133, v134, v135, SLOBYTE(v151));
                      }

                      goto LABEL_36;
                    }
                  }
                }

                else
                {
                  v61 = raven::RavenSolutionPostprocessor::HorizontalDistanceCheck(v5, v62, v61, a2 + 1168, *(*(this + 3) + (((v63 + *(this + 7) - 1) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 864 * ((v63 + *(this + 14) - 1) & 0xF), &v164);
                  if ((v61 & 1) == 0)
                  {
                    if (!cnprint::CNPrinter::GetLogLevel(v61))
                    {
                      v153 = 12;
                      v152 = 0;
                      v64 = (*(*a2 + 16))(a2);
                      v143 = v65 + v64;
                      cnprint::CNPrinter::Print(&v153, &v152, "t,%.3lf,RavenSolutionPostprocessor: Not clamping - static distance check.", v66, v67, v68, v69, v70, SLOBYTE(v143));
                    }

                    goto LABEL_36;
                  }
                }

LABEL_44:
                if (*(a2 + 1344) == 1 && (v106 = *(a2 + 169), v106 >= 0.0) && (v107 = *(a2 + 173), v107 > 0.0) && (v106 > v5 * 3.634812 || fmax(v106 + -2.0, 0.0) / sqrt(v107) > v5 * 0.888064165))
                {
                  if (!cnprint::CNPrinter::GetLogLevel(v61))
                  {
                    v153 = 12;
                    v152 = 0;
                    v108 = (*(*a2 + 16))(a2);
                    v148 = v109 + v108;
                    cnprint::CNPrinter::Print(&v153, &v152, "t,%.3lf,RavenSolutionPostprocessor: Not clamping - speed check.", v110, v111, v112, v113, v114, SLOBYTE(v148));
                  }
                }

                else if (*this == 1 && *(a2 + 2216) == 5 && *(a2 + 2128) == 6)
                {
                  if (!cnprint::CNPrinter::GetLogLevel(v61))
                  {
                    v153 = 12;
                    v152 = 0;
                    v115 = (*(*a2 + 16))(a2);
                    v149 = v116 + v115;
                    cnprint::CNPrinter::Print(&v153, &v152, "t,%.3lf,RavenSolutionPostprocessor: Not clamping - swimming.", v117, v118, v119, v120, v121, SLOBYTE(v149));
                  }
                }

                else
                {
                  if (*(a2 + 2544) - 1 < 2)
                  {
                    result = 1;
                    goto LABEL_37;
                  }

                  if (!cnprint::CNPrinter::GetLogLevel(v61))
                  {
                    v153 = 12;
                    v152 = 0;
                    v122 = (*(*a2 + 16))(a2);
                    v150 = v123 + v122;
                    cnprint::CNPrinter::Print(&v153, &v152, "t,%.3lf,RavenSolutionPostprocessor: Not clamping - moving.", v124, v125, v126, v127, v128, SLOBYTE(v150));
                  }
                }
              }
            }

            else
            {
              v153 = 12;
              v152 = 2;
              v85 = (*(*a2 + 16))(a2);
              v146 = v86 + v85;
              cnprint::CNPrinter::Print(&v153, &v152, "t,%.3lf,RavenSolutionPostprocessor: Not clamping - variance rotation failed.", v87, v88, v89, v90, v91, SLOBYTE(v146));
            }
          }

          else
          {
            LOWORD(v154) = 12;
            LOBYTE(v153) = 2;
            v78 = (*(*a2 + 16))(a2, v59);
            v145 = v79 + v78;
            cnprint::CNPrinter::Print(&v154, &v153, "t,%.3lf,RavenSolutionPostprocessor: Not clamping - Get user ECEF position covariance failed.", v80, v81, v82, v83, v84, SLOBYTE(v145));
          }
        }

        else
        {
          LOWORD(v159) = 12;
          LOBYTE(v154) = 2;
          v71 = (*(*a2 + 16))(a2);
          v144 = v72 + v71;
          cnprint::CNPrinter::Print(&v159, &v154, "t,%.3lf,RavenSolutionPostprocessor: Not clamping - Jenu computation failed.", v73, v74, v75, v76, v77, SLOBYTE(v144));
        }
      }
    }
  }

LABEL_36:
  result = 0;
LABEL_37:
  v100 = *MEMORY[0x1E69E9840];
  return result;
}

double sub_1D0BFE440(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x600000006;
  *a1 = &unk_1F4CDF278;
  *(a1 + 8) = xmmword_1D0E7F320;
  *(a1 + 32) = a1 + 40;
  *&result = *&sub_1D0BA5A78(a2, a3, a1);
  return result;
}

uint64_t sub_1D0BFE48C(uint64_t a1, double a2, double a3)
{
  *(a1 + 8) = 0;
  *(a1 + 40) = 0x300000003;
  *(a1 + 16) = &unk_1F4CD5DD0;
  *(a1 + 24) = xmmword_1D0E76C10;
  *(a1 + 48) = a1 + 56;
  *a1 = &unk_1F4CD5D50;
  off_1F4CD5D60(a1, a2, a3);
  return a1;
}

void sub_1D0BFE524(_Unwind_Exception *a1)
{
  *v1 = &unk_1F4CD5D18;
  v1[2] = &unk_1F4CD5E28;
  _Unwind_Resume(a1);
}

uint64_t sub_1D0BFE560(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x600000003;
  *a1 = &unk_1F4CEB7D0;
  *(a1 + 8) = xmmword_1D0E9CBF0;
  *(a1 + 32) = a1 + 40;
  return sub_1D0B89390(a2, a3, a1);
}

double sub_1D0BFE5EC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 96))
  {
    *(a2 + 8) = xmmword_1D0E76C10;
    v2 = *(a2 + 32);
    *v2 = *(a1 + 128);
    *(v2 + 24) = *(a1 + 136);
    *(v2 + 48) = *(a1 + 144);
    *(v2 + 8) = *(a1 + 136);
    *(v2 + 32) = *(a1 + 152);
    *(v2 + 56) = *(a1 + 160);
    *(v2 + 16) = *(a1 + 144);
    *(v2 + 40) = *(a1 + 160);
    result = *(a1 + 168);
    *(v2 + 64) = result;
  }

  return result;
}

uint64_t sub_1D0BFE654(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  if (v3 == 1)
  {
    v19 = 0x300000003;
    v17 = &unk_1F4CD5DD0;
    v18 = xmmword_1D0E76C10;
    v20 = &v21;
    sub_1D0B89390(a1 + 16, a2, &v17);
    v7 = *(a1 + 24);
    v6 = *(a1 + 28);
    v14 = 0x300000003;
    v9 = &unk_1F4CD5DD0;
    v10 = v6;
    v11 = v7;
    v12 = v7 * v6;
    v13 = v6;
    v15 = &v16;
    sub_1D0BD2018(a1 + 16, &v9);
    v24 = 0x300000003;
    v22 = &unk_1F4CD5DD0;
    v23 = xmmword_1D0E76C10;
    v25 = &v26;
    sub_1D0B89390(&v17, &v9, &v22);
    sub_1D0B894B0(a3, &v22);
  }

  return v3;
}

uint64_t sub_1D0BFE784(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x100000003;
  *a1 = &unk_1F4CDEB28;
  *(a1 + 8) = xmmword_1D0E7DCC0;
  *(a1 + 32) = a1 + 40;
  return sub_1D0B89390(a2, a3, a1);
}

uint64_t sub_1D0BFE810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x600000001;
  *a1 = &unk_1F4CEB818;
  *(a1 + 8) = xmmword_1D0E84600;
  *(a1 + 32) = a1 + 40;
  return sub_1D0B89390(a2, a3, a1);
}

uint64_t sub_1D0BFE89C@<X0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X8>)
{
  if (a1 < 0)
  {
    __assert_rtn("Zeros", "cnmatrix.h", 3098, "nr >= 0");
  }

  if (a2 < 0)
  {
    __assert_rtn("Zeros", "cnmatrix.h", 3099, "nc >= 0");
  }

  *(a3 + 24) = 0x300000001;
  *a3 = &unk_1F4CDF248;
  *(a3 + 32) = a3 + 40;
  *(a3 + 8) = a1;
  *(a3 + 12) = a2;
  *(a3 + 16) = a2 * a1;
  *(a3 + 20) = a1;

  return sub_1D0BBBC00(a3, 0.0);
}

uint64_t raven::RavenSolutionPostprocessor::HorizontalDistanceCheck(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22 = vsubq_f64(*(a5 + 104), *(a4 + 104));
  v23 = *(a5 + 120) - *(a4 + 120);
  sub_1D0BED7A0(a6, v22.f64, &v20);
  if ((v8 & 1) == 0)
  {
    v19 = 12;
    v18 = 2;
    v15 = "Clamping check failed: Position difference rotation.";
    goto LABEL_5;
  }

  v14 = sqrt(v21 * v21 + v20 * v20);
  if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v19 = 12;
    v18 = 2;
    v15 = "Clamping check failed: Position difference not a positive number.";
    goto LABEL_5;
  }

  if (v14 > a1 * 8.86651914)
  {
    if (cnprint::CNPrinter::GetLogLevel(v8))
    {
      return 0;
    }

    v19 = 12;
    v18 = 0;
    v15 = "RavenSolutionPostprocessor: Not clamping - distance check.";
LABEL_5:
    cnprint::CNPrinter::Print(&v19, &v18, v15, v9, v10, v11, v12, v13, v17);
    return 0;
  }

  if (fmax(v14 + -4.26495435, 0.0) / a2 > a1 * 0.832554611)
  {
    if (cnprint::CNPrinter::GetLogLevel(v8))
    {
      return 0;
    }

    v19 = 12;
    v18 = 0;
    v15 = "RavenSolutionPostprocessor: Not clamping - distance uncertainty check.";
    goto LABEL_5;
  }

  return 1;
}

uint64_t **raven::RavenSolutionPostprocessor::PushToClampingHistory(uint64_t **this, const raven::RavenSolutionEvent *a2)
{
  if (*(a2 + 209) != 2 || *(a2 + 1264) != 1)
  {
    return this;
  }

  v3 = this;
  v4 = *(this + 3);
  v5 = this[4];
  v6 = this[3];
  if (v5 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = 2 * (v5 - v6) - 1;
  }

  v8 = this[6];
  v9 = this[7] + v8;
  if (v7 == v9)
  {
    if (v8 < 0x10)
    {
      v10 = this[5];
      v11 = this[2];
      if (v5 - v6 < (v10 - v11))
      {
        operator new();
      }

      if (v10 == v11)
      {
        v12 = 1;
      }

      else
      {
        v12 = (v10 - v11) >> 2;
      }

      sub_1D0C4E87C(v12);
    }

    this[6] = (v8 - 16);
    v63 = *v6;
    this[3] = (v6 + 1);
    sub_1D0C149C4(this + 2, &v63);
    v6 = v3[3];
    v9 = v3[6] + v3[7];
  }

  memcpy(&(*(v6 + ((v9 >> 1) & 0x7FFFFFFFFFFFFFF8)))[108 * (v9 & 0xF)], a2 + 1168, 0x360uLL);
  v15 = v3[7];
  v3[7] = (v15 + 1);
  if (v15 + 1 <= 0x1E)
  {
    v17 = v3[3];
    v16 = v3[6];
  }

  else
  {
    v16 = v3[6] + 1;
    v3[6] = v16;
    v3[7] = v15;
    v17 = v3[3];
    if (v16 >= 0x20)
    {
      operator delete(*v17);
      v17 = (v3[3] + 1);
      v3[3] = v17;
      v16 = (v3[6] - 2);
      v3[6] = v16;
    }
  }

  v18 = v16 >> 4;
  v19 = &v17[v16 >> 4];
  v20 = v3[4];
  if (v20 == v17)
  {
    v26 = 0;
    v27 = 0;
    v28 = 8 * v18;
LABEL_32:
    v29 = 1;
    goto LABEL_33;
  }

  v21 = (*v19 + 864 * (v16 & 0xF));
  v22 = *(v17 + (((v3[7] + v16) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 864 * ((*(v3 + 14) + v16) & 0xF);
  if (v21 == v22)
  {
    v26 = 0;
  }

  else
  {
    v23 = 0;
    do
    {
      v63 = CNTimeSpan::operator-(a2 + 146, v21, v13, v14);
      v64 = v24;
      if (!sub_1D0B7CF88(&v63, v3 + 163))
      {
        break;
      }

      v21 += 108;
      if ((v21 - *v19) == 13824)
      {
        v25 = v19[1];
        ++v19;
        v21 = v25;
      }

      ++v23;
    }

    while (v21 != v22);
    v16 = v3[6];
    v17 = v3[3];
    v20 = v3[4];
    v18 = v16 >> 4;
    v26 = v23;
  }

  v28 = 8 * v18;
  v19 = &v17[v18];
  if (v20 == v17)
  {
    v27 = 0;
    goto LABEL_32;
  }

  v29 = 0;
  v27 = (*v19 + 864 * (v16 & 0xF));
LABEL_33:
  v63 = v19;
  v64 = v27;
  sub_1D0BFF4F4(&v63, v26);
  if (v64 == v27)
  {
    v30 = 0;
  }

  else
  {
    v30 = 0x84BDA12F684BDA13 * (&v64[-*v63] >> 5) + 2 * (v63 - v19) + 0x7B425ED097B425EDLL * (&v27[-*v19] >> 5);
  }

  v31 = (v16 >> 1) & 0x7FFFFFFFFFFFFFF8;
  v32 = (v17 + v31);
  if (v29)
  {
    v33 = 0;
  }

  else
  {
    v33 = (*v32 + 864 * (v16 & 0xF));
  }

  v62 = v30;
  if (v27 == v33)
  {
    v34 = 0;
  }

  else
  {
    v34 = 0x84BDA12F684BDA13 * (&v27[-*v19] >> 5) + 2 * (v28 - v31) + 0x7B425ED097B425EDLL * (&v33[-*v32] >> 5);
  }

  v63 = (v17 + v31);
  v64 = v33;
  sub_1D0BFF4F4(&v63, v34);
  if (v62 >= 1)
  {
    v35 = v63;
    v36 = v64;
    v37 = v3[7];
    v61 = v34;
    if (v34 <= (v37 - v62) >> 1)
    {
      sub_1D0BFF4F4(&v63, v62);
      if (v35 == v32)
      {
        sub_1D0D34760(&v63, v33, v36, v63, v64);
      }

      else
      {
        v54 = *v35;
        v53 = (v35 - 1);
        sub_1D0D34760(&v63, v54, v36, v63, v64);
        v55 = v64;
        for (i = v65; v53 != v32; i = v65)
        {
          v57 = *v53--;
          sub_1D0D34760(&v63, v57, v57 + 13824, v55, i);
          v55 = v64;
        }

        sub_1D0D34760(&v63, v33, *v53 + 13824, v55, i);
      }

      v58 = (v3[7] - v62);
      v16 = v3[6] + v62;
      v3[6] = v16;
      v3[7] = v58;
      v17 = v3[3];
      if (v16 >= 0x20)
      {
        do
        {
          operator delete(*v17);
          v17 = (v3[3] + 1);
          v3[3] = v17;
          v16 = (v3[6] - 2);
          v3[6] = v16;
        }

        while (v16 > 0x1F);
      }
    }

    else
    {
      sub_1D0BFF4F4(&v63, v62);
      v38 = v64;
      v39 = &v17[(v37 + v16) >> 4];
      if (v29)
      {
        v40 = 0;
      }

      else
      {
        v40 = (*v39 + 864 * ((v37 + v16) & 0xF));
      }

      if (v63 != v39)
      {
        v41 = v63 + 1;
        sub_1D0D34854(&v63, v64, (*v63 + 13824), v35, v36);
        v35 = v64;
        v36 = v65;
        if (v41 != v39)
        {
          v60 = v3;
          v42 = *v64;
          do
          {
            v43 = v39;
            v44 = 0;
            v45 = *v41;
            for (++v35; ; ++v35)
            {
              v46 = 0x84BDA12F684BDA13 * ((v42 - v36 + 13824) >> 5);
              if ((0x84BDA12F684BDA13 * ((13824 - v44) >> 5)) < v46)
              {
                v46 = 0x84BDA12F684BDA13 * ((13824 - v44) >> 5);
              }

              v47 = 864 * v46;
              if (v46)
              {
                memmove(v36, (v45 + v44), 864 * v46);
              }

              v44 += v47;
              if (v44 == 13824)
              {
                break;
              }

              v48 = *v35;
              v42 = v48;
              v36 = v48;
            }

            v36 += v47;
            v42 = *(v35 - 1);
            if (v42 + 13824 == v36)
            {
              v42 = *v35;
              v36 = *v35;
            }

            else
            {
              --v35;
            }

            v39 = v43;
            ++v41;
          }

          while (v41 != v43);
          v3 = v60;
        }

        v38 = *v41;
      }

      sub_1D0D34854(&v63, v38, v40, v35, v36);
      v17 = v3[3];
      v49 = v3[4];
      v50 = 2 * (v49 - v17) - 1;
      if (v49 == v17)
      {
        v50 = 0;
      }

      v16 = v3[6];
      v34 = v61;
      v51 = (v3[7] - v62);
      v3[7] = v51;
      if (v50 - (v51 + v16) >= 0x20)
      {
        do
        {
          operator delete(*(v49 - 8));
          v17 = v3[3];
          v49 = (v3[4] - 1);
          v52 = 2 * (v49 - v17) - 1;
          v3[4] = v49;
          if (v49 == v17)
          {
            v52 = 0;
          }

          v16 = v3[6];
        }

        while (v52 - (v3[7] + v16) > 0x1F);
      }
    }
  }

  if (v3[4] == v17)
  {
    v59 = 0;
  }

  else
  {
    v59 = v17[v16 >> 4] + 864 * (v16 & 0xF);
  }

  v63 = &v17[v16 >> 4];
  v64 = v59;
  return sub_1D0BFF4F4(&v63, v34);
}

void sub_1D0BFF4C8(_Unwind_Exception *a1)
{
  operator delete(v2);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

uint64_t **sub_1D0BFF4F4(uint64_t **result, uint64_t a2)
{
  if (a2)
  {
    v2 = *result;
    v3 = a2 - 0x7B425ED097B425EDLL * ((result[1] - **result) >> 5);
    if (v3 < 1)
    {
      v7 = 15 - v3;
      v8 = &v2[-(v7 >> 4)];
      *result = v8;
      v5 = *v8;
      v6 = ~v7 & 0xF;
    }

    else
    {
      v4 = (v2 + ((v3 >> 1) & 0x7FFFFFFFFFFFFFF8));
      *result = v4;
      v5 = *v4;
      v6 = v3 & 0xF;
    }

    result[1] = (v5 + 864 * v6);
  }

  return result;
}

void *sub_1D0BFF570(void *a1)
{
  *a1 = &unk_1F4CEBC60;
  v2 = a1[5];
  a1[5] = 0;
  if (v2)
  {
    MEMORY[0x1D387EC80](v2, 0x1000C8000313F17);
  }

  *a1 = &unk_1F4CD5E28;
  return a1;
}

void sub_1D0BFF5EC(uint64_t a1)
{
  *(a1 + 24) = 0x1000000067;
  *a1 = &unk_1F4CEBCF0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 8) = xmmword_1D0E9CC70;
  sub_1D0BFEA9C();
}

void sub_1D0BFF654(_Unwind_Exception *exception_object)
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

void raven::RavenSolutionPostprocessor::AdjustRavenSolutionUncertainties(raven::RavenSolutionPostprocessor *this, float64x2_t *a2)
{
  v4 = (a2 + 1416);
  v5 = *(this + 1);
  v6 = 3456;
  if (LOBYTE(a2[165].f64[1]) - 3 < 2)
  {
    v6 = 3464;
  }

  v7 = 3472;
  if (LOBYTE(a2[165].f64[1]) - 3 < 2)
  {
    v7 = 3480;
  }

  v8 = 3440;
  if (LOBYTE(a2[165].f64[1]) - 3 < 2)
  {
    v8 = 3448;
  }

  v9 = *(v5 + v8);
  v10 = *(v5 + v7);
  v11 = *(v5 + v6);
  v12 = a2[67].f64[0];
  sub_1D0BD2CA4(v158, a2[79].f64[1], a2[80].f64[0], a2[80].f64[1]);
  v18 = v9 * v9;
  v19 = v18 + v18;
  if ((LOBYTE(a2[91].f64[1]) & 1) == 0)
  {
    v26 = v10 * v10 + v10 * v10;
    goto LABEL_15;
  }

  v20 = 0;
  v150 = 0x300000003;
  v148 = &unk_1F4CD5DD0;
  v149 = xmmword_1D0E76C10;
  v151 = &v152;
  v21 = v4[5];
  v156 = a2[94].f64[1];
  v152 = v21;
  v21.f64[0] = v156;
  v22 = a2[95].f64[0];
  v153 = v21;
  v23 = v4[7];
  v154 = v22;
  v155 = v23.f64[0];
  v157 = v23;
  *v159 = 303108111;
  while (1)
  {
    v24 = v159[v20];
    if (*(a2[33].f64 + v24 + 1) || *(&a2[16].f64[1] + v24 + 1) || *(a2[25].f64 + v24))
    {
      break;
    }

    if (++v20 == 4)
    {
      v25 = 0;
      goto LABEL_19;
    }
  }

  if (LOBYTE(a2[6].f64[1]) == 1)
  {
    *v159 = 12;
    v146.i8[0] = 2;
    v139 = a2[1].f64[0] + *&a2->f64[1];
    cnprint::CNPrinter::Print(v159, &v146, "%.3lf, position uncertainty was floored aggressively", v13, v14, v15, v16, v17, SLOBYTE(v139));
  }

  v25 = 1;
LABEL_19:
  if (LOBYTE(a2[6].f64[1]) != 1)
  {
    v31 = 0;
    v32 = LOBYTE(a2[165].f64[1]);
    v33 = 1;
    if (v32 <= 6 && ((1 << v32) & 0x59) != 0)
    {
      if (v32 - 3 > 1)
      {
        v33 = 0;
        v31 = 0;
      }

      else
      {
        v34 = LOBYTE(a2[133].f64[0]);
        v35 = v34 > 9;
        v36 = 0x20u >> v34;
        v33 = 0;
        if (v35)
        {
          v31 = 1;
        }

        else
        {
          v31 = v36;
        }
      }
    }

    v27 = 3;
    if (v12 > 0.0 && ((v33 | v31) & 1) != 0)
    {
      v37 = 8.0;
      if ((v31 & 1) == 0)
      {
        v37 = v9;
      }

      if (v33)
      {
        v37 = 2.0;
      }

      if (v37 <= a2[67].f64[0])
      {
        v37 = a2[67].f64[0];
      }

      v19 = v37 * v37;
    }

    goto LABEL_81;
  }

  v28 = LODWORD(a2[67].f64[1]);
  if (v28 <= *(v5 + 3404))
  {
    v27 = 0;
    v30 = 3408;
    goto LABEL_42;
  }

  v29 = HIDWORD(a2[67].f64[1]);
  if (v28 - v29 <= *(v5 + 3400))
  {
    v27 = 1;
    v30 = 3416;
    goto LABEL_42;
  }

  if (*(v5 + 3384) * v28 < v29)
  {
    v27 = 2;
    v30 = 3424;
LABEL_42:
    v38 = *(v5 + v30);
    goto LABEL_43;
  }

  v38 = 0.0;
  if (a2[68].f64[0] > *(v5 + 3392))
  {
    v27 = 2;
    v30 = 3432;
    goto LABEL_42;
  }

  v27 = 3;
LABEL_43:
  v19 = v19 + v38 * v38;
  if (v12 > 0.0 && v19 <= a2[67].f64[0] * a2[67].f64[0])
  {
    v19 = a2[67].f64[0] * a2[67].f64[0];
  }

  v39 = a2[66].f64[1];
  if (v39 > 7.0)
  {
    v40 = v39 * 10.0 * (v39 * 10.0);
    if (v19 <= v40)
    {
      v19 = v40;
    }
  }

  if (*(this + 424) == 1 && *(this + 344) == 1)
  {
    v41 = *(this + 264);
    if (v41 == 11 || v41 == 4)
    {
      v146 = vdupq_n_s64(0x7FF8000000000000uLL);
      v147 = 0x7FF8000000000000;
    }

    else
    {
      v146 = vdupq_n_s64(0x7FF8000000000000uLL);
      v147 = 0x7FF8000000000000;
      if (v41 != 16)
      {
        goto LABEL_81;
      }
    }

    *v159 = vsubq_f64(a2[92], *(this + 22));
    *&v159[16] = a2[93].f64[0] - *(this + 46);
    *v42.i64 = sub_1D0BED7A0(v158, v159, v146.i64);
    if (v44)
    {
      *v43.i64 = *&v146.i64[1] * *&v146.i64[1];
      *v42.i64 = *v146.i64 * *v146.i64 + *&v146.i64[1] * *&v146.i64[1];
      v45 = sqrt(*v42.i64);
    }

    else
    {
      v45 = NAN;
    }

    v46 = CNTimeSpan::operator-(&a2->f64[1], this + 9, v42, v43);
    if (fabs(v47 + v46) < 10.0 || v45 < 100.0)
    {
      if ((*(this + 424) & 1) == 0)
      {
        sub_1D0C42F28();
      }

      if ((v151->f64[0] + v151->f64[SHIDWORD(v149) + 1] + v151[SHIDWORD(v149) + 1].f64[0]) * 0.666666667 > v18 + v18)
      {
        v160 = 0x300000003;
        *v159 = &unk_1F4CD5DD0;
        *&v159[8] = xmmword_1D0E76C10;
        v161 = v162;
        if (sub_1D0BFE654(v158, &v148, v159))
        {
          v54 = *v161;
          if (v18 > *v161)
          {
            v54 = v9 * v9;
          }

          v55 = &v161[*&v159[20]];
          if (v18 <= v55[1])
          {
            v18 = v55[1];
          }

          goto LABEL_76;
        }

        v145 = 12;
        v144 = 4;
        cnprint::CNPrinter::Print(&v145, &v144, "Solution Postprocessor: Unable to rotate user position covariance from ECEF to ENU frame", v49, v50, v51, v52, v53, v138);
      }

      v54 = v9 * v9;
LABEL_76:
      v56 = *(this + 37) + v54 + *v146.i64 * *v146.i64 + *(this + 40) + v18 + *&v146.i64[1] * *&v146.i64[1];
      if (v19 <= v56)
      {
        if (v45 - sqrt(v19) > 30.0 && v45 * v45 / (v19 + v56) > 0.64)
        {
          v19 = v45 * v45 / 0.64 - v56;
        }
      }

      else
      {
        v19 = v56;
      }
    }
  }

LABEL_81:
  if ((!v25 || raven::RavenSolutionPostprocessor::Update_EHE_Floor_Filter(this, &a2[73], &a2[6].f64[1], v19)) && *(this + 336))
  {
    v19 = *(this + 167) * *(this + 167);
  }

  v160 = 0x300000003;
  *v159 = &unk_1F4CD5DD0;
  *&v159[8] = xmmword_1D0E76C10;
  v161 = v162;
  if ((sub_1D0BFE654(v158, &v148, v159) & 1) == 0)
  {
    v146.i16[0] = 12;
    LOBYTE(v145) = 4;
    cnprint::CNPrinter::Print(&v146, &v145, "Solution Postprocessor: Unable to rotate device velocity covariance from ECEF to ENU frame", v57, v58, v59, v60, v61, v138);
LABEL_97:
    *v159 = 12;
    v146.i8[0] = 4;
    v140 = a2[1].f64[0] + *&a2->f64[1];
    cnprint::CNPrinter::Print(v159, &v146, "t,%.3lf,Solution Postprocessor: Couldn't compute the scale factor for device position covariance", v68, v69, v70, v71, v72, SLOBYTE(v140));
    goto LABEL_98;
  }

  v62 = *v161 + v161[*&v159[20] + 1];
  v63 = (COERCE__INT64(fabs(v62)) - 0x10000000000000) >> 53;
  if ((*&v62 <= -1 || v63 >= 0x3FF) && (*&v62 - 1) >= 0xFFFFFFFFFFFFFLL)
  {
    v146.i16[0] = 12;
    LOBYTE(v145) = 4;
    cnprint::CNPrinter::Print(&v146, &v145, "Solution Postprocessor: Invalid horizontal variance %.3lf", v57, v58, v59, v60, v61, SLOBYTE(v62));
    goto LABEL_97;
  }

  v66 = v19 / v62;
  if (v66 > 1.0)
  {
    v67 = vmulq_n_f64(v4[6], v66);
    v4[5] = vmulq_n_f64(v4[5], v66);
    v4[6] = v67;
    v4[7] = vmulq_n_f64(v4[7], v66);
  }

LABEL_98:
  v26 = v10 * v10 + v10 * v10;
  if ((v27 - 1) >= 2)
  {
    if (!v27)
    {
      v27 = 0;
      v26 = fmax(v26, 1110.8889);
      goto LABEL_104;
    }

LABEL_15:
    v27 = 3;
    goto LABEL_104;
  }

  v73 = a2[84].f64[1] * 3.0 * (a2[84].f64[1] * 3.0);
  if (v26 > v73)
  {
    v73 = v26;
  }

  v26 = v73;
LABEL_104:
  if (LOBYTE(a2[96].f64[1]) != 1)
  {
    goto LABEL_118;
  }

  v150 = 0x300000003;
  v148 = &unk_1F4CD5DD0;
  v149 = xmmword_1D0E76C10;
  v151 = &v152;
  v75 = a2[99].f64[1];
  v76 = a2[100].f64[0];
  v152 = v4[10];
  v74.f64[1] = v152.f64[1];
  v74.f64[0] = v75;
  v153 = v74;
  v77 = v4[12];
  v154 = v76;
  v155 = v77.f64[0];
  v156 = v75;
  v157 = v77;
  v160 = 0x300000003;
  *v159 = &unk_1F4CD5DD0;
  *&v159[8] = xmmword_1D0E76C10;
  v161 = v162;
  if ((sub_1D0BFE654(v158, &v148, v159) & 1) == 0)
  {
    v146.i16[0] = 12;
    LOBYTE(v145) = 4;
    cnprint::CNPrinter::Print(&v146, &v145, "Solution Postprocessor: Unable to rotate device velocity covariance from ECEF to ENU frame", v78, v79, v80, v81, v82, v138);
LABEL_117:
    *v159 = 12;
    v146.i8[0] = 4;
    v141 = a2[1].f64[0] + *&a2->f64[1];
    cnprint::CNPrinter::Print(v159, &v146, "t,%.3lf,Solution Postprocessor: Couldn't compute the scale factor for device velocity covariance", v89, v90, v91, v92, v93, SLOBYTE(v141));
    goto LABEL_118;
  }

  v83 = *v161 + v161[*&v159[20] + 1];
  v84 = (COERCE__INT64(fabs(v83)) - 0x10000000000000) >> 53;
  if ((*&v83 <= -1 || v84 >= 0x3FF) && (*&v83 - 1) >= 0xFFFFFFFFFFFFFLL)
  {
    v146.i16[0] = 12;
    LOBYTE(v145) = 4;
    cnprint::CNPrinter::Print(&v146, &v145, "Solution Postprocessor: Invalid horizontal variance %.3lf", v78, v79, v80, v81, v82, SLOBYTE(v83));
    goto LABEL_117;
  }

  v87 = v26 / v83;
  if (v87 > 1.0)
  {
    v88 = vmulq_n_f64(v4[11], v87);
    v4[10] = vmulq_n_f64(v4[10], v87);
    v4[11] = v88;
    v4[12] = vmulq_n_f64(v4[12], v87);
  }

LABEL_118:
  if (LOBYTE(a2[79].f64[0]) != 1)
  {
    goto LABEL_132;
  }

  v150 = 0x300000003;
  v148 = &unk_1F4CD5DD0;
  v149 = xmmword_1D0E76C10;
  v151 = &v152;
  v95 = a2[82].f64[0];
  v96 = a2[82].f64[1];
  v152 = a2[81];
  v94.f64[1] = v152.f64[1];
  v94.f64[0] = v95;
  v153 = v94;
  v97 = a2[83];
  v154 = v96;
  v155 = v97.f64[0];
  v156 = v95;
  v157 = v97;
  v160 = 0x300000003;
  *v159 = &unk_1F4CD5DD0;
  *&v159[8] = xmmword_1D0E76C10;
  v161 = v162;
  if ((sub_1D0BFE654(v158, &v148, v159) & 1) == 0)
  {
    v146.i16[0] = 12;
    LOBYTE(v145) = 4;
    cnprint::CNPrinter::Print(&v146, &v145, "Solution Postprocessor: Unable to rotate device velocity covariance from ECEF to ENU frame", v98, v99, v100, v101, v102, v138);
LABEL_131:
    *v159 = 12;
    v146.i8[0] = 4;
    v142 = a2[1].f64[0] + *&a2->f64[1];
    cnprint::CNPrinter::Print(v159, &v146, "t,%.3lf,Solution Postprocessor: Couldn't compute the scale factor for user position covariance", v108, v109, v110, v111, v112, SLOBYTE(v142));
    goto LABEL_132;
  }

  v103 = *v161 + v161[*&v159[20] + 1];
  v104 = (COERCE__INT64(fabs(v103)) - 0x10000000000000) >> 53;
  if ((*&v103 <= -1 || v104 >= 0x3FF) && (*&v103 - 1) >= 0xFFFFFFFFFFFFFLL)
  {
    v146.i16[0] = 12;
    LOBYTE(v145) = 4;
    cnprint::CNPrinter::Print(&v146, &v145, "Solution Postprocessor: Invalid horizontal variance %.3lf", v98, v99, v100, v101, v102, SLOBYTE(v103));
    goto LABEL_131;
  }

  v107 = v19 / v103;
  if (v107 > 1.0)
  {
    a2[81] = vmulq_n_f64(a2[81], v107);
    a2[82] = vmulq_n_f64(a2[82], v107);
    a2[83] = vmulq_n_f64(a2[83], v107);
  }

LABEL_132:
  v113 = v11 * 0.0174532925 * (v11 * 0.0174532925);
  if (LOBYTE(a2[84].f64[0]) == 1)
  {
    v114 = a2[86].f64[1];
    if (v114 <= v26)
    {
      v114 = v26;
    }

    a2[86].f64[1] = v114;
    v115 = 39.4784176;
    if (v27 == 3)
    {
      v116 = a2[84].f64[1];
      if (v116 > 0.0)
      {
        v117 = v114 / (v116 * v116);
        if (v113 <= v117)
        {
          v113 = v117;
        }

        v115 = fmin(v113, 39.4784176);
      }
    }
  }

  else
  {
    v115 = v11 * 0.0174532925 * (v11 * 0.0174532925);
  }

  if (BYTE1(a2[84].f64[0]) == 1)
  {
    v150 = 0x300000003;
    v148 = &unk_1F4CD5DD0;
    v149 = xmmword_1D0E76C10;
    v151 = &v152;
    v119 = a2[89].f64[1];
    v120 = a2[90].f64[0];
    v152 = *v4;
    v118.f64[1] = v152.f64[1];
    v118.f64[0] = v119;
    v153 = v118;
    v121 = v4[2];
    v154 = v120;
    v155 = v121.f64[0];
    v156 = v119;
    v157 = v121;
    v160 = 0x300000003;
    *v159 = &unk_1F4CD5DD0;
    *&v159[8] = xmmword_1D0E76C10;
    v161 = v162;
    if (sub_1D0BFE654(v158, &v148, v159))
    {
      v127 = *v161 + v161[*&v159[20] + 1];
      v128 = (COERCE__INT64(fabs(v127)) - 0x10000000000000) >> 53;
      if (*&v127 > -1 && v128 < 0x3FF || (*&v127 - 1) < 0xFFFFFFFFFFFFFLL)
      {
        v131 = (v115 + v115) / v127;
        if (v131 > 1.0)
        {
          v132 = vmulq_n_f64(v4[1], v131);
          *v4 = vmulq_n_f64(*v4, v131);
          v4[1] = v132;
          v4[2] = vmulq_n_f64(v4[2], v131);
        }

        return;
      }

      v146.i16[0] = 12;
      LOBYTE(v145) = 4;
      cnprint::CNPrinter::Print(&v146, &v145, "Solution Postprocessor: Invalid horizontal variance %.3lf", v122, v123, v124, v125, v126, SLOBYTE(v127));
    }

    else
    {
      v146.i16[0] = 12;
      LOBYTE(v145) = 4;
      cnprint::CNPrinter::Print(&v146, &v145, "Solution Postprocessor: Unable to rotate device velocity covariance from ECEF to ENU frame", v122, v123, v124, v125, v126, v138);
    }

    *v159 = 12;
    v146.i8[0] = 4;
    v143 = a2[1].f64[0] + *&a2->f64[1];
    cnprint::CNPrinter::Print(v159, &v146, "t,%.3lf,Solution Postprocessor: Couldn't compute the scale factor for DOT covariance", v133, v134, v135, v136, v137, SLOBYTE(v143));
  }
}

uint64_t raven::RavenPredictor::HandleEvent(raven::RavenPredictor *this, const raven::RavenSolutionEvent *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*this & 1) == 0)
  {
    v14 = 12;
    v13 = 4;
    cnprint::CNPrinter::Print(&v14, &v13, "Error: RavenPredictor::HandleEvent(RavenSolutionEvent) failed. Predictor is not configured.", a4, a5, a6, a7, a8, v12);
    return 0xFFFFFFFFLL;
  }

  v9 = *(a2 + 208) == 4 && *(a2 + 209) == 2;
  if (!v9 || !*(a2 + 1464))
  {
    return 0;
  }

  if (*(this + 1) != 1)
  {
    *(this + 1) = 1;
    goto LABEL_13;
  }

  result = sub_1D0B7CF88(a2 + 146, this + 831);
  if (result)
  {
LABEL_13:
    memcpy(this + 5488, a2 + 8, 0xA51uLL);
    return 0;
  }

  return result;
}

uint64_t sub_1D0C00580(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x100000057;
  *(a1 + 8) = xmmword_1D0E84400;
  *(a1 + 32) = a1 + 40;
  *a1 = &unk_1F4CE2B00;
  *(a1 + 736) = a2;
  *(a1 + 768) = 0x100000057;
  *(a1 + 744) = &unk_1F4CE0470;
  *(a1 + 752) = xmmword_1D0E84400;
  *(a1 + 776) = a1 + 784;
  sub_1D0B9F5D4(a1 + 744, a3);
  v5 = *(a1 + 752);
  v6 = *(a1 + 756);
  *(a1 + 8) = v5;
  *(a1 + 12) = v6;
  v7 = (v6 * v5);
  *(a1 + 16) = v7;
  *(a1 + 20) = v5;
  if (v7 >= 1)
  {
    v8 = *(a1 + 776);
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

void sub_1D0C00680(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0BB2F1C(v25, a3, a3, a4, a5, a6, a7, a8);
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

      v46[1] = 0;
      v46[2] = 0;
      v46[0] = &unk_1F4CEE9A8;
      v47 = 0;
      v48 = 0;
      v49 = 0;
      v50 = 0;
      v51 = 0;
      v52 = 0;
      v53 = 0;
      v54 = 0;
      v55 = 0;
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

      v30[1] = 0;
      v31 = 0.0;
      v30[0] = &unk_1F4CEE030;
      LOBYTE(v32) = 0;
      *(&v32 + 1) = 0;
      *&v33 = 0;
      BYTE8(v33) = 0;
      v34 = 0uLL;
      LOBYTE(v35) = 0;
      *(&v35 + 1) = 0;
      v36 = 0;
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

void sub_1D0C009F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  *(v38 - 184) = v37;
  a32 = (v38 - 88);
  sub_1D0BBBD80(&a32);
  _Unwind_Resume(a1);
}

uint64_t raven::GnssMeasurementPreprocessor::HandleEvent(raven::GnssMeasurementPreprocessor *this, const raven::SignalEnvironmentEvent *a2)
{
  v2 = *this;
  if (v2)
  {
    *(this + 977) = *(a2 + 104);
  }

  else if (cnprint::CNPrinter::GetLogLevel(this) <= 1)
  {
    v11 = 12;
    v10 = 1;
    cnprint::CNPrinter::Print(&v11, &v10, "#gmp,HandleEvent(SignalEnvironment),not configured", v3, v4, v5, v6, v7, v9);
  }

  return v2;
}

double sub_1D0C00AD0(long double a1, long double a2, uint64_t a3, double *a4)
{
  v7 = exp(-a2);
  v8 = 1.0;
  if (a1 <= 1.0 || v7 == 0.0)
  {
    v11 = v7;
    if (!a4)
    {
      return v11;
    }
  }

  else
  {
    v9 = 2;
    v10 = v7;
    v11 = v7;
    do
    {
      v10 = v10 / v8 * a2;
      v11 = v11 + v10;
      v8 = v9++;
    }

    while (v8 < a1);
    if (!a4)
    {
      return v11;
    }
  }

  v12 = v7 * pow(a2, a1);
  v13 = a1 + -1.0;
  if (COERCE__INT64(fabs(a1 + -1.0)) >= 0x7FF0000000000000)
  {
    v18 = a1 + -1.0;
    sub_1D0D2921C("boost::math::trunc<%1%>(%1%)", "Value %1% can not be represented in the target integer type.", &v18);
  }

  v14 = floor(v13);
  v15 = ceil(v13);
  if (v13 < 0.0)
  {
    v14 = v15;
  }

  if (v14 > 2147483650.0 || v14 < -2147483650.0)
  {
    v18 = a1 + -1.0;
    sub_1D0D2921C("boost::math::itrunc<%1%>(%1%)", "Value %1% can not be represented in the target integer type.", &v18);
  }

  *a4 = v12 / dbl_1D0E7EBC0[v14];
  return v11;
}

uint64_t sub_1D0C00C24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x100000008;
  *a1 = &unk_1F4CE4320;
  *(a1 + 8) = xmmword_1D0E84520;
  *(a1 + 32) = a1 + 40;
  return sub_1D0B89390(a2, a3, a1);
}

void *sub_1D0C00CB0(void *a1)
{
  *a1 = &unk_1F4CEBCF0;
  v2 = a1[5];
  a1[5] = 0;
  if (v2)
  {
    MEMORY[0x1D387EC80](v2, 0x1000C8000313F17);
  }

  *a1 = &unk_1F4CD5E28;
  return a1;
}

uint64_t **sub_1D0C00D2C(void *a1, unsigned __int8 a2)
{
  v2 = a1[1];
  if (!v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % a1[1];
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= v2)
      {
        v7 %= v2;
      }
    }

    else
    {
      v7 &= v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (*(v6 + 16) != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

void raven::RavenEstimator::AddToAcceptedMeasurementTypeCount(cnprint::CNPrinter *a1, unsigned int **a2)
{
  sub_1D0B751F4(__p, "Accepted");
  raven::RavenEstimator::UpdateMeasurementTypeCount(a1, __p, a2, a1 + 328, a1 + 724);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1D0C011A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void raven::RavenEstimator::UpdateMeasurementTypeCount(cnprint::CNPrinter *a1, uint64_t a2, unsigned int **a3, uint64_t a4, uint64_t a5)
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
            v16 = off_1E83D7E48[i];
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

        v31 = cnprint::CNLogFormatter::FormatGeneral(v64 + 2712, v64 + 80, "count_per_update,%s", v30);
        if (*(v64 + 2735) >= 0)
        {
          LOBYTE(v37) = v31;
        }

        else
        {
          v37 = *(v64 + 339);
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
            v41 = off_1E83D7E48[j];
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

        v56 = cnprint::CNLogFormatter::FormatGeneral(v64 + 2712, v64 + 80, "count_cumulative,%s", v55);
        if (*(v64 + 2735) >= 0)
        {
          LOBYTE(v62) = v56;
        }

        else
        {
          v62 = *(v64 + 339);
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

void raven::RavenEstimator::AddToRejectedMeasurementTypeCount(cnprint::CNPrinter *a1, unsigned int **a2)
{
  sub_1D0B751F4(__p, "Rejected");
  raven::RavenEstimator::UpdateMeasurementTypeCount(a1, __p, a2, a1 + 460, a1 + 856);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1D0C01874(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void raven::RavenEstimator::AddToUnusedMeasurementTypeCount(cnprint::CNPrinter *a1, unsigned int **a2)
{
  sub_1D0B751F4(__p, "Unused");
  raven::RavenEstimator::UpdateMeasurementTypeCount(a1, __p, a2, a1 + 592, a1 + 988);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1D0C018F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0C01910(uint64_t a1)
{
  *(a1 + 24) = 0x100000057;
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F4CE0500;
  for (i = 40; i != 1432; i += 16)
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

  *(a1 + 8) = xmmword_1D0E84400;
  (*(*a1 + 16))(a1);
  return a1;
}

uint64_t sub_1D0C01A20(uint64_t result, int a2, int a3)
{
  *(result + 24) = 0x1000000AELL;
  *(result + 32) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = &unk_1F4CE05D8;
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

void *sub_1D0C01AE4(int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      sub_1D0C4CDF0(a3, a2[1]);
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
    *a3 = sub_1D0C01AE4;
    a3[1] = v9;
    goto LABEL_9;
  }

  if (a1 != 3)
  {
    return &unk_1F4CEB790;
  }

  if (a4)
  {
    v6 = sub_1D0B7CA64(a4, &unk_1F4CEB790);
  }

  else
  {
    v6 = a5 == &std::__any_imp::__unique_typeinfo<raven::h_VelocityArgs_RavenConvergence>::__id;
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

uint64_t sub_1D0C01BD0(uint64_t a1)
{
  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

uint64_t sub_1D0C01C20(uint64_t a1)
{
  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

uint64_t sub_1D0C01C70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D0C01D64(a1);
  *v6 = &unk_1F4CE3350;
  v6[353] = a2;
  *(a1 + 2856) = 0x1000000AELL;
  *(a1 + 2832) = &unk_1F4CE05D8;
  *(a1 + 2840) = xmmword_1D0E843F0;
  *(a1 + 2864) = a1 + 2872;
  sub_1D0B9F5D4((v6 + 354), a3);
  v7 = *(a1 + 2840);
  v8 = *(a1 + 2844);
  *(a1 + 8) = v7;
  *(a1 + 12) = v8;
  v9 = v8 * v7;
  *(a1 + 16) = v8 * v7;
  *(a1 + 20) = v7;
  if (v8 * v7 >= 1)
  {
    v10 = 0;
    v11 = 0;
    v12 = 4 * v9;
    do
    {
      *(*(a1 + 32) + v10) = *(*(a2 + 32) + 16 * *(*(a1 + 2864) + v11));
      v11 += 4;
      v10 += 16;
    }

    while (v12 != v11);
  }

  return a1;
}

uint64_t sub_1D0C01D64(uint64_t a1)
{
  *(a1 + 24) = 0x1000000AELL;
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F4CE0668;
  for (i = 40; i != 2824; i += 16)
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

  *(a1 + 8) = xmmword_1D0E843F0;
  (*(*a1 + 16))(a1);
  return a1;
}

uint64_t sub_1D0C01E74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x1000000AELL;
  *(a1 + 8) = xmmword_1D0E843F0;
  *(a1 + 32) = a1 + 40;
  *a1 = &unk_1F4CE3398;
  *(a1 + 736) = a2;
  *(a1 + 768) = 0x1000000AELL;
  *(a1 + 744) = &unk_1F4CE05D8;
  *(a1 + 752) = xmmword_1D0E843F0;
  *(a1 + 776) = a1 + 784;
  sub_1D0B9F5D4(a1 + 744, a3);
  v5 = *(a1 + 752);
  v6 = *(a1 + 756);
  *(a1 + 8) = v5;
  *(a1 + 12) = v6;
  v7 = (v6 * v5);
  *(a1 + 16) = v7;
  *(a1 + 20) = v5;
  if (v7 >= 1)
  {
    v8 = *(a1 + 776);
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

uint64_t sub_1D0C01F50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x1000000AELL;
  *(a1 + 8) = xmmword_1D0E843F0;
  *(a1 + 32) = a1 + 40;
  *a1 = &unk_1F4CE33E0;
  *(a1 + 1432) = a2;
  *(a1 + 1464) = 0x1000000AELL;
  *(a1 + 1440) = &unk_1F4CE05D8;
  *(a1 + 1448) = xmmword_1D0E843F0;
  *(a1 + 1472) = a1 + 1480;
  sub_1D0B9F5D4(a1 + 1440, a3);
  v5 = *(a1 + 1448);
  v6 = *(a1 + 1452);
  *(a1 + 8) = v5;
  *(a1 + 12) = v6;
  v7 = (v6 * v5);
  *(a1 + 16) = v7;
  *(a1 + 20) = v5;
  if (v7 >= 1)
  {
    v8 = *(a1 + 1472);
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

void sub_1D0C0215C(_Unwind_Exception *a1)
{
  v1[7] = &unk_1F4CDEAF8;
  *v1 = &unk_1F4CE38E8;
  sub_1D0BD9B48(v2);
  *v1 = &unk_1F4CE3830;
  _Unwind_Resume(a1);
}

void sub_1D0C02288(uint64_t a1)
{
  *(a1 + 24) = 0x1000000AELL;
  *a1 = &unk_1F4CE38E8;
  *(a1 + 40) = 0;
  *(a1 + 32) = 0;
  *(a1 + 8) = xmmword_1D0E843F0;
  sub_1D0C021C4();
}

void sub_1D0C02300(_Unwind_Exception *a1)
{
  sub_1D0BD9B48(v2);
  *v1 = &unk_1F4CE3830;
  _Unwind_Resume(a1);
}

uint64_t sub_1D0C02334(uint64_t a1, uint64_t a2, char **lpsrc, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!lpsrc || (v13 = **lpsrc, (v14 = __dynamic_cast(lpsrc, &unk_1F4CE42A0, &unk_1F4CEC240, 0)) == 0))
  {
    LOWORD(v72) = 12;
    LOBYTE(v80.f64[0]) = 4;
    v39 = MEMORY[0x30] + MEMORY[0x28];
LABEL_21:
    cnprint::CNPrinter::Print(&v72, &v80, "time,%.3lf,h-function failure on line %d: %s() %s", a4, a5, a6, a7, a8, SLOBYTE(v39));
    return 0xFFFFFFFFLL;
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

  if (!v17 || !v16 || v18 != 8 || ((v20 = *(a2 + 8), v19 = *(a2 + 12), v20 <= v19) ? (v21 = *(a2 + 12)) : (v21 = *(a2 + 8)), !v20 || !v19 || v21 != 1))
  {
    LOWORD(v72) = 12;
    LOBYTE(v80.f64[0]) = 4;
    v39 = *(v14 + 6) + *(v14 + 5);
    goto LABEL_21;
  }

  if ((v14[128] & 1) == 0)
  {
    LOWORD(v72) = 12;
    LOBYTE(v80.f64[0]) = 4;
    v41 = *(v14 + 6) + *(v14 + 5);
    cnprint::CNPrinter::Print(&v72, &v80, "time,%.3lf,h-function failure on line %d: %s() %s", a4, a5, a6, a7, a8, SLOBYTE(v41));
    LOWORD(v72) = 12;
    LOBYTE(v80.f64[0]) = 4;
    v42 = *(v15 + 12) + *(v15 + 11);
    sub_1D0BCFAB8((v15 + 56));
    cnprint::CNPrinter::Print(&v72, &v80, "t,%.3lf,%s,TAI time invalid", v43, v44, v45, v46, v47, SLOBYTE(v42));
    return 0xFFFFFFFFLL;
  }

  v22 = *(a1 + 32);
  v86 = *v22;
  v87 = *(v22 + 2);
  v85 = &unk_1F4CD5F20;
  v83 = 0.0;
  v84 = &unk_1F4CD5BC8;
  *&v23 = *(v22 + 6) * 0.000001;
  v81 = 0u;
  v82 = 0u;
  v79 = *(v14 + 136);
  v24.i64[1] = *(&v79 + 1);
  v80 = 0u;
  v24.i64[0] = *(v14 + 24);
  LOWORD(v72) = 0;
  v73 = 0u;
  v74 = 0u;
  LODWORD(v75) = 0;
  *(&v75 + 1) = 0;
  *&v76 = 0;
  DWORD2(v76) = 0;
  if (cnnavigation::GNSSPseudorange(&v79, &v72, &v86, (v14 + 296), &v85, &v84, &v83, 1, v24, v23, &v80))
  {
    LOWORD(v72) = 12;
    LOBYTE(v79) = 4;
    v30 = *(v15 + 6) + *(v15 + 5);
    cnprint::CNPrinter::Print(&v72, &v79, "time,%.3lf,h-function failure on line %d: %s() %s", v25, v26, v27, v28, v29, SLOBYTE(v30));
    if (cnprint::CNPrinter::GetLogLevel(v31) <= 1)
    {
      LOWORD(v72) = 12;
      LOBYTE(v79) = 1;
      v33 = *(v15 + 11);
      v32 = *(v15 + 12);
      sub_1D0BCFAB8((v15 + 56));
      v66 = v32 + v33;
      cnprint::CNPrinter::Print(&v72, &v79, "t,%.3lf,%s,GNSSPseudorange returned != 0", v34, v35, v36, v37, v38, SLOBYTE(v66));
    }

    return 0xFFFFFFFFLL;
  }

  *&v48 = 0x100000001;
  *(&v48 + 1) = 0x100000001;
  *(a4 + 8) = v48;
  *&v74 = 0x800000001;
  v72 = &unk_1F4CEC348;
  *(&v74 + 1) = &v75;
  v73 = xmmword_1D0E9CBE0;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  sub_1D0B894B0(a5, &v72);
  v49 = *(v15 + 64);
  v50 = v83;
  if (v49)
  {
    **(a4 + 32) = v83 + *v49 + **(a2 + 32);
    v51 = *(v49 + 40);
    v52 = *(a5 + 32);
    *v52 = *v51;
    v55 = *(v49 + 28);
    v53 = *(a5 + 20);
    v52[v53] = v51[v55];
    v54 = &v51[2 * v55];
    LODWORD(v55) = v53;
  }

  else
  {
    **(a4 + 32) = v83 + **(a2 + 32);
    v52 = *(a5 + 32);
    v56 = *(&v81 + 1);
    *v52 = v81;
    v55 = *(a5 + 20);
    v52[v55] = v56;
    v54 = &v82;
  }

  v52[2 * v55] = *v54;
  *&v52[6 * v55] = *(&v82 + 1) * 0.000001;
  *&v74 = 0x100000001;
  v72 = &unk_1F4CDF418;
  *&v57 = 0x100000001;
  *(&v57 + 1) = 0x100000001;
  v73 = v57;
  *(&v74 + 1) = &v75;
  *&v75 = 0x3FF0000000000000;
  sub_1D0B894B0(a6, &v72);
  if (!cnprint::CNPrinter::GetLogLevel(v58))
  {
    LOWORD(v72) = 12;
    LOBYTE(v79) = 0;
    v60 = *(v15 + 11);
    v59 = *(v15 + 12);
    sub_1D0BCFAB8((v15 + 56));
    v71 = *(v15 + 50);
    v70 = v15[277];
    v69 = *(v15 + 64);
    v68 = *(v15 + 26) - v50;
    v67 = v59 + v60;
    cnprint::CNPrinter::Print(&v72, &v79, "t,%.3lf,%s,using PSR,predicted,%.3lf,diff,%.3lf,clockEstMtrs,%.2lf,std,%.2lf,multipath,%hhu,cno,%.1lf", v61, v62, v63, v64, v65, SLOBYTE(v67));
  }

  return 0;
}

uint64_t sub_1D0C0286C(uint64_t a1, uint64_t a2)
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
      v10 = (v7 - 1);
      v11 = *(a1 + 32);
      v12 = *(a2 + 32);
      v13 = v11 + (v10 << 6);
      v14 = v12;
      v15 = v10;
      do
      {
        sub_1D0B894B0(v11, v14);
        v11 += 64;
        v14 += 64;
        --v15;
      }

      while (v15);
      sub_1D0B894B0(v13, v12 + (v10 << 6));
    }

    else if (v6 >= 1)
    {
      v8 = 0;
      v9 = 0;
      do
      {
        sub_1D0B894B0(*(a1 + 32) + v8, *(a2 + 32) + v8);
        ++v9;
        v8 += 64;
      }

      while (v9 < *(a1 + 16));
    }
  }

  return a1;
}

void sub_1D0C02A0C(uint64_t a1)
{
  *(a1 + 24) = 0x1000000AELL;
  *a1 = &unk_1F4CE38A0;
  *(a1 + 40) = 0;
  *(a1 + 32) = 0;
  *(a1 + 8) = xmmword_1D0E843F0;
  sub_1D0C0294C();
}

void sub_1D0C02A84(_Unwind_Exception *a1)
{
  sub_1D0C02C50(v2);
  *v1 = &unk_1F4CE37A8;
  _Unwind_Resume(a1);
}

void sub_1D0C02BE8(_Unwind_Exception *a1)
{
  v1[7] = &unk_1F4CDEAF8;
  *v1 = &unk_1F4CE38A0;
  sub_1D0C02C50(v2);
  *v1 = &unk_1F4CE37A8;
  _Unwind_Resume(a1);
}

uint64_t *sub_1D0C02C50(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = v2 - 16;
    v4 = *(v2 - 8);
    if (v4)
    {
      v5 = 112 * v4;
      v6 = v2 - 112;
      do
      {
        *(v6 + v5) = &unk_1F4CD5E28;
        v5 -= 112;
      }

      while (v5);
    }

    MEMORY[0x1D387EC80](v3, 0x1081C80064FE0DDLL);
  }

  return a1;
}

uint64_t *sub_1D0C02CD4(uint64_t *a1, uint64_t *a2)
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
      v7 = 112 * v6;
      v8 = v4 - 112;
      do
      {
        *(v8 + v7) = &unk_1F4CD5E28;
        v7 -= 112;
      }

      while (v7);
    }

    MEMORY[0x1D387EC80](v5, 0x1081C80064FE0DDLL);
  }

  return a1;
}

uint64_t sub_1D0C02D60(uint64_t a1, uint64_t a2)
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
      v13 = v11 + 112 * (v7 - 1);
      v14 = v12;
      v15 = (v7 - 1);
      do
      {
        sub_1D0B894B0(v11, v14);
        v11 += 112;
        v14 += 112;
        --v15;
      }

      while (v15);
      sub_1D0B894B0(v13, v12 + 112 * v10);
    }

    else if (v6 >= 1)
    {
      v8 = 0;
      v9 = 0;
      do
      {
        sub_1D0B894B0(*(a1 + 32) + v8, *(a2 + 32) + v8);
        ++v9;
        v8 += 112;
      }

      while (v9 < *(a1 + 16));
    }
  }

  return a1;
}

uint64_t sub_1D0C02E48(uint64_t a1, uint64_t a2, char **lpsrc, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!lpsrc || (v13 = **lpsrc, (v14 = __dynamic_cast(lpsrc, &unk_1F4CE42A0, &unk_1F4CEC300, 0)) == 0))
  {
    LOWORD(v113) = 12;
    LOBYTE(v103) = 4;
    v38 = MEMORY[0x30] + MEMORY[0x28];
LABEL_27:
    cnprint::CNPrinter::Print(&v113, &v103, "time,%.3lf,h-function failure on line %d: %s() %s", a4, a5, a6, a7, a8, SLOBYTE(v38));
    return 0xFFFFFFFFLL;
  }

  v16 = v14;
  v18 = *(a1 + 8);
  v17 = *(a1 + 12);
  if (v18 <= v17)
  {
    v19 = *(a1 + 12);
  }

  else
  {
    v19 = *(a1 + 8);
  }

  if (!v18 || !v17 || v19 != 8 || ((v21 = *(a2 + 8), v20 = *(a2 + 12), v21 <= v20) ? (v22 = *(a2 + 12)) : (v22 = *(a2 + 8)), !v21 || !v20 || v22 != 1))
  {
    LOWORD(v113) = 12;
    LOBYTE(v103) = 4;
    v38 = v14[6] + *(v14 + 5);
    goto LABEL_27;
  }

  if ((v14[16] & 1) == 0)
  {
    LOWORD(v113) = 12;
    LOBYTE(v103) = 4;
    v40 = v14[6] + *(v14 + 5);
    cnprint::CNPrinter::Print(&v113, &v103, "time,%.3lf,h-function failure on line %d: %s() %s", a4, a5, a6, a7, a8, SLOBYTE(v40));
    LOWORD(v113) = 12;
    LOBYTE(v103) = 4;
    v41 = v16[12] + *(v16 + 11);
    sub_1D0BCFAB8((v16 + 7));
    v47 = *(v16 + 46) - 1;
    if (v47 <= 4)
    {
      v48 = off_1E83D7FD8[v47];
    }

    cnprint::CNPrinter::Print(&v113, &v103, "t,%.3lf,%s,%s,TAI time invalid", v42, v43, v44, v45, v46, SLOBYTE(v41));
    return 0xFFFFFFFFLL;
  }

  v15.i64[0] = v14[35];
  v23 = v14[36] - *v15.i64;
  v24 = (COERCE__INT64(fabs(v23)) - 0x10000000000000) >> 53;
  if ((*&v23 <= -1 || v24 >= 0x3FF) && (*&v23 - 1) >= 0xFFFFFFFFFFFFFLL)
  {
    LOWORD(v113) = 12;
    LOBYTE(v103) = 4;
    v49 = v14[6] + *(v14 + 5);
    cnprint::CNPrinter::Print(&v113, &v103, "time,%.3lf,h-function failure on line %d: %s() %s", a4, a5, a6, a7, a8, SLOBYTE(v49));
    LOWORD(v113) = 12;
    LOBYTE(v103) = 4;
    v50 = v16[12] + *(v16 + 11);
    sub_1D0BCFAB8((v16 + 7));
    v56 = *(v16 + 46) - 1;
    if (v56 <= 4)
    {
      v57 = off_1E83D7FD8[v56];
    }

    cnprint::CNPrinter::Print(&v113, &v103, "t,%.3lf,%s,%s,Invalid time interval,%.2lf", v51, v52, v53, v54, v55, SLOBYTE(v50));
    return 0xFFFFFFFFLL;
  }

  v122[0] = a1;
  v122[1] = v14;
  v121 = 0.0;
  v119 = 0u;
  *v120 = 0u;
  v118 = 0u;
  v115 = 0x800000008;
  v113 = &unk_1F4CE43B0;
  v114 = xmmword_1D0E84510;
  v116 = &v117;
  *&v104 = 0;
  v103 = 0;
  *v27.i64 = CNTimeSpan::SetTimeSpan(&v103, 0, v15, xmmword_1D0E84510);
  v112[0] = CNTimeSpan::operator+(v16 + 11, &v103, v27, v28);
  v112[1] = v29;
  if (sub_1D0C03638(v122, v112, &v121, &v118, &v113, v30, v31))
  {
    LOWORD(v103) = 12;
    LOBYTE(v99[0]) = 4;
    v87 = v16[6] + *(v16 + 5);
    cnprint::CNPrinter::Print(&v103, v99, "time,%.3lf,h-function failure on line %d: %s() %s", v32, v33, v34, v35, v36, SLOBYTE(v87));
    return 0xFFFFFFFFLL;
  }

  v111 = 0.0;
  v110 = 0u;
  v109 = 0u;
  v108 = 0u;
  v105 = 0x800000008;
  v103 = &unk_1F4CE43B0;
  v58.i64[1] = 0x800000040;
  v104 = xmmword_1D0E84510;
  v106 = &v107;
  v58.i64[0] = v16[36];
  v99[0] = 0;
  v99[1] = 0;
  *v59.i64 = CNTimeSpan::SetTimeSpan(v99, 0, v58, v37);
  v102[0] = CNTimeSpan::operator+(v16 + 11, v99, v59, v60);
  v102[1] = v61;
  if (sub_1D0C03638(v122, v102, &v111, &v108, &v103, v62, v63))
  {
    sub_1D0D85A30((v16 + 5), "could not compute expected carrier phase at end", "h_GnssAverageDoppler_RavenConvergence", 836, v64, v65, v66, v67);
    return 0xFFFFFFFFLL;
  }

  v68 = 1.0 / v23 * (299792458.0 / v16[24]);
  *&v69 = 0x100000001;
  *(&v69 + 1) = 0x100000001;
  *(a4 + 8) = v69;
  v70 = v111 - v121;
  **(a4 + 32) = **(a2 + 32) + (v111 - v121) * v68;
  sub_1D0BD1400(1, 8, v99);
  v71 = *(&v109 + 1);
  v72 = v101;
  *v101 = v68 * *&v109;
  v73 = v100;
  v72[v100] = v68 * v71;
  v74 = *(&v110 + 1);
  v72[2 * v73] = v68 * *&v110;
  v72[6 * v73] = v68 * v74 * 0.000001;
  sub_1D0BD1400(1, 8, v96);
  v75 = *(&v119 + 1);
  v76 = v98;
  *v98 = v68 * *&v119;
  v77 = v97;
  v76[v97] = v68 * v75;
  v78 = v120[1];
  v76[2 * v77] = v68 * v120[0];
  v76[6 * v77] = v68 * v78 * 0.000001;
  sub_1D0BD1400(1, 8, v95);
  sub_1D0B894B0(a5, v95);
  if (fabs(v16[36]) <= 0.001)
  {
    sub_1D0BD1484(v96, &v113, v94);
    sub_1D0BD1508(v99, v94, v95);
  }

  else
  {
    sub_1D0BD1484(v99, &v103, v94);
    sub_1D0BD1484(v96, &v113, v93);
    sub_1D0BD1508(v94, v93, v95);
  }

  sub_1D0B894B0(a5, v95);
  *(*(a5 + 32) + 56 * *(a5 + 20)) = *(*(a5 + 32) + 56 * *(a5 + 20)) + v68 * v70 * 0.000001;
  sub_1D0BBBC94(1u, 1u, v95);
  sub_1D0B894B0(a6, v95);
  if (!cnprint::CNPrinter::GetLogLevel(v79))
  {
    v95[0] = 12;
    v94[0] = 0;
    v81 = *(v16 + 11);
    v80 = v16[12];
    sub_1D0BCFAB8((v16 + 7));
    v92 = *(v16 + 50);
    v91 = *(v16 + 277);
    v89 = **(a4 + 32);
    v90 = *(v16 + 64);
    v88 = v80 + v81;
    cnprint::CNPrinter::Print(v95, v94, "t,%.3lf,%s,using average Doppler,predictedCrnt,%.3lf,predictedPrev,%.3lf,diff,%.3lf,std,%.4lf,multipath,%hhu,cno,%.1lf", v82, v83, v84, v85, v86, SLOBYTE(v88));
  }

  return 0;
}

uint64_t sub_1D0C03550(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x1000000AELL;
  *(a1 + 8) = xmmword_1D0E843F0;
  *(a1 + 32) = a1 + 40;
  *a1 = &unk_1F4CE3500;
  *(a1 + 1432) = a2;
  *(a1 + 1464) = 0x1000000AELL;
  *(a1 + 1440) = &unk_1F4CE05D8;
  *(a1 + 1448) = xmmword_1D0E843F0;
  *(a1 + 1472) = a1 + 1480;
  sub_1D0B9F5D4(a1 + 1440, a3);
  v5 = *(a1 + 1448);
  v6 = *(a1 + 1452);
  *(a1 + 8) = v5;
  *(a1 + 12) = v6;
  v7 = (v6 * v5);
  *(a1 + 16) = v7;
  *(a1 + 20) = v5;
  if (v7 >= 1)
  {
    for (i = 0; i != v7; ++i)
    {
      *(*(a1 + 32) + 8 * i) = *(*(a2 + 32) + 8 * *(*(a1 + 1472) + 4 * i));
    }
  }

  return a1;
}

uint64_t sub_1D0C03638(uint64_t *a1, void *a2, double *a3, float64x2_t *a4, uint64_t a5, int8x16_t a6, int8x16_t a7)
{
  v11 = a1[1];
  v12 = CNTimeSpan::operator-(a2, (v11 + 88), a6, a7);
  v14 = *(*a1 + 32);
  v151 = *v14;
  v152 = *(v14 + 2);
  v15 = *(v14 + 6);
  *&v64 = 0x800000008;
  v62 = &unk_1F4CE43B0;
  *(&v64 + 1) = &v65;
  v63 = xmmword_1D0E84510;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v16 = 40;
  v78 = 0u;
  do
  {
    *(&v62 + v16) = 0x3FF0000000000000;
    v16 += 72;
  }

  while (v16 != 616);
  *&v17 = v13 + v12;
  v18 = sub_1D0B894B0(a5, &v62);
  v19.i64[0] = 0x3F50624DD2F1A9FCLL;
  if (fabs(*&v17) > 0.001)
  {
    v150 = v17;
    *&v65 = 0x700000006;
    v147 = 0x100000008;
    v145 = &unk_1F4CE43F8;
    v146 = xmmword_1D0E83F60;
    v148 = &v149;
    v149 = 0x700000006;
    v142 = 0x100000008;
    v140 = &unk_1F4CE4320;
    v143 = v144;
    v141 = xmmword_1D0E83F60;
    v144[1] = 0;
    v144[0] = 0;
    v137 = 0x100000008;
    v136 = xmmword_1D0E84520;
    v135 = &unk_1F4CE4320;
    v138 = &v139;
    v132 = 0x800000008;
    v130 = &unk_1F4CE43B0;
    v131 = xmmword_1D0E84510;
    v133 = &v134;
    v127 = 0x800000008;
    v125 = &unk_1F4CE43B0;
    v126 = xmmword_1D0E84510;
    v128 = &v129;
    sub_1D0BA4EA4(*a1, &v145, &v62);
    v22 = sub_1D0BA55E4(&v62, &v140, &v150, &v135, &v130, &v125, v20, v21);
    if (v22)
    {
      if (cnprint::CNPrinter::GetLogLevel(v22) <= 1)
      {
        LOWORD(v62) = 12;
        LOBYTE(v103) = 1;
        v24 = *(v11 + 88);
        v23 = *(v11 + 96);
        sub_1D0BCFAB8(a1[1] + 56);
        v60 = v23 + v24;
        cnprint::CNPrinter::Print(&v62, &v103, "t,%.3lf,%s,f_TwoStateOscillator failed", v25, v26, v27, v28, v29, SLOBYTE(v60));
      }

      return 0xFFFFFFFFLL;
    }

    v30 = 0;
    v124 = v17;
    v31 = xmmword_1D0E7DD30;
    v32 = &v65 + 1;
    v33 = vdupq_n_s64(6uLL);
    v34 = vdupq_n_s64(2uLL);
    do
    {
      if (vmovn_s64(vcgtq_u64(v33, v31)).u8[0])
      {
        *(v32 - 1) = v30;
      }

      if (vmovn_s64(vcgtq_u64(vdupq_n_s64(6uLL), *&v31)).i32[1])
      {
        *v32 = v30 + 1;
      }

      v30 += 2;
      v31 = vaddq_s64(v31, v34);
      v32 += 2;
    }

    while (v30 != 6);
    v120 = 0x100000008;
    v118 = &unk_1F4CE43F8;
    v121 = &v122;
    v119 = xmmword_1D0E84530;
    v122 = v65;
    v123 = v66;
    v115 = 0x100000008;
    v113 = &unk_1F4CE4320;
    v116 = v117;
    v114 = xmmword_1D0E84530;
    memset(v117, 0, 48);
    v110 = 0x100000008;
    v109 = xmmword_1D0E84520;
    v108 = &unk_1F4CE4320;
    v111 = &v112;
    v105 = 0x800000008;
    v103 = &unk_1F4CE43B0;
    v104 = xmmword_1D0E84510;
    v106 = &v107;
    v100 = 0x800000008;
    v98 = &unk_1F4CE43B0;
    v99 = xmmword_1D0E84510;
    v101 = &v102;
    sub_1D0BA4EA4(*a1, &v118, &v62);
    v37 = sub_1D0BA4C04(&v62, &v113, &v124, &v108, &v103, &v98, v35, v36);
    if (v37)
    {
      if (cnprint::CNPrinter::GetLogLevel(v37) <= 1)
      {
        LOWORD(v62) = 12;
        v97 = 1;
        v38 = *(v11 + 88);
        v39 = *(v11 + 96);
        sub_1D0BCFAB8(a1[1] + 56);
        v61 = v39 + v38;
        cnprint::CNPrinter::Print(&v62, &v97, "t,%.3lf,%s,f_SixStateNearlyConstantVelocity failed", v40, v41, v42, v43, v44, SLOBYTE(v61));
      }

      return 0xFFFFFFFFLL;
    }

    v45 = v111[2];
    v151 = *v111;
    v152 = v45;
    v15 = *v138;
    sub_1D0BA16B8(&v62, a5, &v118, &v118);
    sub_1D0B9F65C(&v62, &v103);
    sub_1D0BA16B8(&v62, a5, &v145, &v145);
    sub_1D0B9F65C(&v62, &v130);
  }

  v46 = a1[1];
  v62 = 0;
  *&v63 = 0;
  v18.n128_u64[0] = v17;
  *v47.i64 = CNTimeSpan::SetTimeSpan(&v62, 0, v18, v19);
  v130 = CNTimeSpan::operator+((v46 + 136), &v62, v47, v48);
  *&v131 = v49;
  v50.i64[0] = *(v46 + 192);
  *v51.i64 = v15 * 0.000001;
  v125 = &unk_1F4CD5F20;
  v103 = &unk_1F4CD5BC8;
  LOWORD(v62) = 0;
  v63 = 0u;
  v64 = 0u;
  LODWORD(v65) = 0;
  *(&v65 + 1) = 0;
  *&v66 = 0;
  DWORD2(v66) = 0;
  result = cnnavigation::GNSSCarrierPhase(&v130, &v62, &v151, v46 + 296, &v125, &v103, a3, 1, v50, v51, 0.0, a4);
  if (!result)
  {
    return result;
  }

  if (cnprint::CNPrinter::GetLogLevel(result) <= 1)
  {
    LOWORD(v62) = 12;
    LOBYTE(v125) = 1;
    v53 = a1[1];
    v54 = *(v53 + 96) + *(v53 + 88);
    sub_1D0BCFAB8(v53 + 56);
    cnprint::CNPrinter::Print(&v62, &v125, "t,%.3lf,%s,GNSSCarrierPhase,start,returned != 0", v55, v56, v57, v58, v59, SLOBYTE(v54));
  }

  return 0xFFFFFFFFLL;
}

void sub_1D0C03D10(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0BB2F1C(v17, a3, a3, a4, a5, a6, a7, a8);
  v8[16] = v8[7];
  if (raven::RavenIntegrityEstimator::HandleEvent((v8 + 15), v17))
  {
    v21 = 12;
    v20 = 2;
    v9 = (*(v17[0] + 16))(v17);
    v11 = v10 + v9;
    (*(v17[0] + 24))(&v18, v17);
    cnprint::CNPrinter::Print(&v21, &v20, "t,%.3lf,IE failed to handle %s", v12, v13, v14, v15, v16, SLOBYTE(v11));
    if (v19 < 0)
    {
      operator delete(v18);
    }
  }
}

void sub_1D0C03E18(_Unwind_Exception *exception_object)
{
  if (*(v1 - 41) < 0)
  {
    operator delete(*(v1 - 64));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0C03E34(uint64_t a1)
{
  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  *(a1 + 296) = &unk_1F4CDFE98;
  if (*(a1 + 327) < 0)
  {
    operator delete(*(a1 + 304));
  }

  *(a1 + 296) = &unk_1F4CD5F70;
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  return a1;
}

uint64_t raven::RavenIntegrityEstimator::HandleEvent(raven::RavenIntegrityEstimator *this, const raven::SignalEnvironmentEvent *a2)
{
  if (*(this + 680) != 1)
  {
    goto LABEL_17;
  }

  v4 = this + 688;
  v5 = (*(*(this + 86) + 16))(this + 688);
  v7 = v6;
  v8 = v6;
  v9 = (*(*a2 + 16))(a2);
  v11.n128_f64[0] = v10;
  if (v5)
  {
    v12 = 1;
  }

  else
  {
    v12 = (*&v7 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL;
  }

  if (!v12 || (!v9 ? (v13 = (*&v10 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL) : (v13 = 1), !v13 || (v14 = v5 <= v9, v5 == v9)))
  {
    v14 = v8 <= v10;
  }

  if (v14)
  {
LABEL_17:
    if (*(this + 680) == 1)
    {
      v23 = *(a2 + 8);
      v24 = *(a2 + 40);
      *(this + 712) = *(a2 + 24);
      *(this + 728) = v24;
      *(this + 696) = v23;
      v25 = *(a2 + 56);
      v26 = *(a2 + 72);
      v27 = *(a2 + 88);
      *(this + 792) = *(a2 + 104);
      *(this + 760) = v26;
      *(this + 776) = v27;
      *(this + 744) = v25;
    }

    else
    {
      *(this + 86) = &unk_1F4CEF5C8;
      v28 = *(a2 + 8);
      v29 = *(a2 + 40);
      *(this + 712) = *(a2 + 24);
      *(this + 728) = v29;
      *(this + 696) = v28;
      v30 = *(a2 + 56);
      v31 = *(a2 + 72);
      v32 = *(a2 + 88);
      *(this + 792) = *(a2 + 104);
      *(this + 760) = v31;
      *(this + 776) = v32;
      *(this + 744) = v30;
      *(this + 680) = 1;
    }
  }

  else
  {
    v35 = 12;
    v34 = 4;
    if ((*(this + 680) & 1) == 0)
    {
      __assert_rtn("operator->", "optional.hpp", 1222, "this->is_initialized()");
    }

    v15 = (*(*v4 + 16))(this + 688, v11);
    v17 = v16 + v15;
    (*(*a2 + 16))(a2);
    cnprint::CNPrinter::Print(&v35, &v34, "RavenIntegrityEstimator: signal environment data out of order,t_curr,%.3lf,t_new,%.3lf", v18, v19, v20, v21, v22, SLOBYTE(v17));
  }

  return 0;
}

void sub_1D0C0417C(uint64_t a1, raven::RavenIonosphereEstimatorActiveObject **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0BCA910(v9, a3, a3, a4, a5, a6, a7, a8);
  raven::RavenIonosphereEstimatorActiveObject::HandleEvent(v8, v9);
  v9[0] = &unk_1F4CEF598;
  v11 = &v10;
  sub_1D0BBBD80(&v11);
}

void sub_1D0C041EC(_Unwind_Exception *a1)
{
  *(v2 - 24) = v1 + 96;
  sub_1D0BBBD80((v2 - 24));
  _Unwind_Resume(a1);
}

void raven::RavenIonosphereEstimatorActiveObject::HandleEvent(raven::RavenIonosphereEstimatorActiveObject *this, const raven::GnssPreprocessedMeasurementsEvent *a2)
{
  if (*(this + 224))
  {
    if (*(this + 225))
    {
      std::mutex::lock((this + 1968));
      raven::RavenIonosphereEstimator::HandleEvent((this + 2032), a2);

      std::mutex::unlock((this + 1968));
    }
  }

  else
  {
    v12 = 12;
    v11 = 2;
    v4 = cnprint::CNLogFormatter::FormatGeneral(this + 239, "RavenIonosphereEstimatorActiveObject: not configured");
    if (*(this + 1935) >= 0)
    {
      LOBYTE(v10) = v4;
    }

    else
    {
      v10 = *(this + 239);
    }

    cnprint::CNPrinter::Print(&v12, &v11, "%s", v5, v6, v7, v8, v9, v10);
  }
}

uint64_t raven::RavenIonosphereEstimator::HandleEvent(raven::RavenIonosphereEstimator *this, const raven::GnssPreprocessedMeasurementsEvent *a2)
{
  if ((*(this + 8) & 1) == 0)
  {
    LOWORD(v116) = 12;
    v126.__r_.__value_.__s.__data_[0] = 2;
    v97 = cnprint::CNLogFormatter::FormatWarning((this + 4040), "GnssPreprocessedMeasurementsEvent received, but estimator is not configured");
    if (*(this + 4063) >= 0)
    {
      LOBYTE(v103) = v97;
    }

    else
    {
      v103 = *(this + 505);
    }

    cnprint::CNPrinter::Print(&v116, &v126, "%s", v98, v99, v100, v101, v102, v103);
    return 0xFFFFFFFFLL;
  }

  if (*(this + 9) != 1)
  {
    return 0xFFFFFFFFLL;
  }

  v197[0] = 0;
  v197[1] = 0;
  v198 = 0;
  v5 = *(a2 + 12);
  v4 = *(a2 + 13);
  if (v5 == v4)
  {
    return 0;
  }

  v108 = (this + 4040);
  v109 = vdupq_n_s64(0x7FF8000000000000uLL);
  do
  {
    v6 = *v5;
    if (!*v5)
    {
      goto LABEL_10;
    }

    v7 = *(v6 + 24);
    v8 = v7 > 6;
    v9 = (1 << v7) & 0x65;
    if (!v8 && v9 != 0)
    {
      goto LABEL_10;
    }

    v12 = *(v6 + 328);
    v11 = *(v6 + 336);
    if (v11 == v12)
    {
      goto LABEL_10;
    }

    v13 = 0;
    v14 = 0;
    v15 = 0uLL;
    v190 = 0u;
    v191 = 0u;
    v188 = 0u;
    v189 = 0u;
    *&v192 = 0;
    *(&v192 + 1) = 0x7FF8000000000000;
    LODWORD(v193) = 0;
    BYTE4(v193) = 0;
    *(&v193 + 1) = 0x7FF8000000000000;
    v16 = v109;
    *&v194[8] = v109;
    *&v194[24] = v109;
    *&v194[40] = v109;
    *v194 = 2143289344;
    *&v194[56] = 2143289344;
    v194[60] = 0;
    LOBYTE(v195) = 0;
    BYTE4(v195) = 0;
    BYTE8(v195) = 0;
    WORD6(v195) = 0;
    BYTE14(v195) = 1;
    v196 = v109;
    v180 = 0u;
    v181 = 0u;
    v178 = 0u;
    v179 = 0u;
    v177 = 0u;
    *&v182 = 0;
    *(&v182 + 1) = 0x7FF8000000000000;
    LODWORD(v183) = 0;
    BYTE4(v183) = 0;
    *(&v183 + 1) = 0x7FF8000000000000;
    *&v184[8] = v109;
    *&v184[24] = v109;
    *&v184[40] = v109;
    *v184 = 2143289344;
    *&v184[56] = 2143289344;
    v184[60] = 0;
    LOBYTE(v185) = 0;
    BYTE4(v185) = 0;
    BYTE8(v185) = 0;
    WORD6(v185) = 0;
    BYTE14(v185) = 1;
    v186 = v109;
    v187 = 0u;
    while (*(v12 + 96) != 1)
    {
LABEL_23:
      v12 += 208;
      if (v12 == v11)
      {
        goto LABEL_10;
      }
    }

    v17 = *(v12 + 100);
    if (v17 > 8)
    {
      goto LABEL_21;
    }

    v18 = 1 << v17;
    if ((v18 & 0xB2) != 0)
    {
      v14 = 1;
      v19 = &v187;
LABEL_20:
      *v19 = *v12;
      v20 = *(v12 + 16);
      v21 = *(v12 + 32);
      v22 = *(v12 + 64);
      v19[3] = *(v12 + 48);
      v19[4] = v22;
      v19[1] = v20;
      v19[2] = v21;
      v23 = *(v12 + 80);
      v24 = *(v12 + 96);
      v25 = *(v12 + 128);
      v19[7] = *(v12 + 112);
      v19[8] = v25;
      v19[5] = v23;
      v19[6] = v24;
      v15 = *(v12 + 144);
      v16 = *(v12 + 160);
      v26 = *(v12 + 192);
      v19[11] = *(v12 + 176);
      v19[12] = v26;
      v19[9] = v15;
      v19[10] = v16;
      goto LABEL_21;
    }

    if ((v18 & 0x144) != 0)
    {
      v13 = 1;
      v19 = &v177;
      goto LABEL_20;
    }

LABEL_21:
    if ((v13 & 1) == 0 || (v14 & 1) == 0)
    {
      goto LABEL_23;
    }

    v27 = CNTimeSpan::operator-(&v177, &v187, v15, v16);
    v116 = v27;
    v117 = v28;
    if (v27 < 0 || (*v29.i64 = v28, v28 < 0.0))
    {
      v27 = CNTimeSpan::operator-(&v116, v29, v30);
      v29.i64[0] = v31;
    }

    if (fabs(*v29.i64 + v27) < 2.22044605e-16)
    {
      if (*(v6 + 264) < *this * 0.0174532925)
      {
        if (!cnprint::CNPrinter::GetLogLevel(v27))
        {
          LOWORD(v126.__r_.__value_.__l.__data_) = 12;
          LOBYTE(v172) = 0;
          v116 = (*(*a2 + 16))(a2);
          v117 = v32;
          v33 = sub_1D0BCFAB8(v6);
          v34 = cnprint::CNLogFormatter::FormatGeneral(v108, &v116, "%s,GnssPreprocessedMeasurementsEvent: Sat excluded,low elevation,%.2f deg", v33, *(v6 + 264) * 57.2957795);
          if (*(this + 4063) >= 0)
          {
            LOBYTE(v40) = v34;
          }

          else
          {
            v40 = *(this + 505);
          }

          goto LABEL_34;
        }

        goto LABEL_10;
      }

      v174 = 0x100000001;
      *&v44 = 0x100000001;
      *(&v44 + 1) = 0x100000001;
      v173 = v44;
      v172 = &unk_1F4CDF418;
      v175 = &v176;
      v169 = 0x100000001;
      v168 = v44;
      v167 = &unk_1F4CDF418;
      v170 = &v171;
      sub_1D0B751F4(&v126, &unk_1D0ED80C5);
      LOBYTE(v127) = 0;
      HIDWORD(v127) = -1;
      v128 = 0u;
      v129 = 0u;
      v130 = 0u;
      v131 = 0u;
      v132 = 0u;
      *&v133 = 0;
      *(&v133 + 1) = 0x7FF8000000000000;
      LODWORD(v134) = 0;
      BYTE4(v134) = 0;
      *(&v134 + 1) = 0x7FF8000000000000;
      *&v135[8] = v109;
      *&v135[24] = v109;
      *&v135[40] = v109;
      *v135 = 2143289344;
      *&v135[56] = 2143289344;
      v135[60] = 0;
      LOBYTE(v136) = 0;
      BYTE4(v136) = 0;
      BYTE8(v136) = 0;
      WORD6(v136) = 0;
      BYTE14(v136) = 1;
      v137 = v109;
      *&v143 = 0;
      v141 = 0u;
      v142 = 0u;
      v139 = 0u;
      v140 = 0u;
      v138 = 0u;
      *(&v143 + 1) = 0x7FF8000000000000;
      LODWORD(v144) = 0;
      BYTE4(v144) = 0;
      *(&v144 + 1) = 0x7FF8000000000000;
      LODWORD(v145) = 2143289344;
      v146 = v109;
      v147 = v109;
      *(&v145 + 1) = 0x7FF8000000000000;
      *&v148 = 0x7FF8000000000000;
      DWORD2(v148) = 2143289344;
      BYTE12(v148) = 0;
      LOBYTE(v149) = 0;
      BYTE4(v149) = 0;
      BYTE8(v149) = 0;
      WORD6(v149) = 0;
      BYTE14(v149) = 1;
      v150 = v109;
      v151 = &unk_1F4CDFE98;
      v45 = sub_1D0B751F4(&__p, &unk_1D0ED80C5);
      LOBYTE(v153) = 0;
      HIDWORD(v153) = -1;
      v154 = 0u;
      v155 = 0u;
      v156 = 0u;
      v157 = 0u;
      v158 = 0u;
      v159 = 0u;
      v160 = 0u;
      v161 = 0u;
      v162 = 0u;
      v163 = 0u;
      v164 = 0u;
      v165 = 0u;
      v166 = 0;
      if (v193 == v183)
      {
        if (BYTE4(v193) == BYTE4(v183))
        {
          LOWORD(v116) = 12;
          LOBYTE(v110) = 4;
          cnprint::CNLogFormatter::FormatGeneral(v108, "GetGeometryFreeGNSSObservationArgs, gnss_band_ is identical between the two observables,obs1.gnss_band_,%d,obs2.gnss_band_,%d", BYTE4(v193), BYTE4(v193));
          LOBYTE(v51) = v108;
          if (*(this + 4063) < 0)
          {
            v51 = *(this + 505);
          }

          goto LABEL_45;
        }

        v106 = *(this + 127);
        v60 = *(this + 256);
        *&v61 = 0x100000001;
        *(&v61 + 1) = 0x100000001;
        v173 = v61;
        v168 = v61;
        *v175 = *&v184[8] + *&v184[16] - *&v184[24] - (*&v194[8] + *&v194[16] - *&v194[24]);
        *v170 = (*&v184[56] * *&v184[56]) + (*&v194[56] * *&v194[56]);
        if (!cnprint::CNPrinter::GetLogLevel(v45))
        {
          LOWORD(v116) = 12;
          LOBYTE(v110) = 0;
          v105 = *v170;
          cnprint::CNPrinter::Print(&v116, &v110, "GetGeometryFreeGNSSObservationArgs,z,%.5lf,R,%.5f", v62, v63, v64, v65, v66, *v175);
        }

        v147 = *&v184[32];
        v148 = *&v184[48];
        v149 = v185;
        v150 = v186;
        v143 = v182;
        v144 = v183;
        v145 = *v184;
        v146 = *&v184[16];
        v139 = v178;
        v140 = v179;
        v141 = v180;
        v142 = v181;
        *&v135[48] = *&v194[48];
        v136 = v195;
        v137 = v196;
        v138 = v177;
        v134 = v193;
        *v135 = *v194;
        *&v135[16] = *&v194[16];
        *&v135[32] = *&v194[32];
        v130 = v189;
        v131 = v190;
        v132 = v191;
        v133 = v192;
        v128 = v187;
        v129 = v188;
        std::string::operator=(&v126, v6);
        v127 = *(v6 + 24);
        std::string::operator=(&__p, (v6 + 40));
        v153 = *(v6 + 64);
        v67 = *(v6 + 72);
        v68 = *(v6 + 104);
        v155 = *(v6 + 88);
        v156 = v68;
        v154 = v67;
        v69 = *(v6 + 120);
        v70 = *(v6 + 136);
        v71 = *(v6 + 168);
        v159 = *(v6 + 152);
        v160 = v71;
        v157 = v69;
        v158 = v70;
        v72 = *(v6 + 184);
        v73 = *(v6 + 200);
        v74 = *(v6 + 232);
        v163 = *(v6 + 216);
        v164 = v74;
        v161 = v72;
        v162 = v73;
        v165 = v106;
        v166 = v60;
        sub_1D0C04F78(&v116, &v126);
        v120 = v187;
        v107 = LOBYTE(v117);
        v75 = sub_1D0BCFAB8(v6);
        sub_1D0B751F4(v114, v75);
        sub_1D0BA01A8(&v116, v107, v114);
        if (v115 < 0)
        {
          operator delete(v114[0]);
        }

        v79 = sub_1D0C05588(this + 8456, &v187, &v172, &v167, &v116, v76, v77, v78);
        if (v79)
        {
          v113 = 12;
          v112 = 4;
          v110 = (*(*a2 + 16))(a2);
          v111 = v80;
          v81 = sub_1D0BCFAB8(v6);
          cnprint::CNLogFormatter::FormatGeneral(v108, &v110, "Could not add measurement - PSR for %s", v81);
          LOBYTE(v87) = v108;
          if (*(this + 4063) < 0)
          {
            v87 = *(this + 505);
          }

          cnprint::CNPrinter::Print(&v113, &v112, "%s", v82, v83, v84, v85, v86, v87);
        }

        else
        {
          if (!cnprint::CNPrinter::GetLogLevel(v79))
          {
            v113 = 12;
            v112 = 0;
            v110 = (*(*a2 + 16))(a2);
            v111 = v88;
            v89 = sub_1D0BCFAB8(v6);
            v90 = "UnknownType";
            if ((v193 - 1) <= 4)
            {
              v90 = off_1E83D8148[(v193 - 1)];
            }

            cnprint::CNLogFormatter::FormatGeneral(v108, &v110, "%s,%s,cno,%.2lf,sigma,%.2lf", v89, v90, *v194, sqrt(*v170));
            LOBYTE(v96) = v108;
            if (*(this + 4063) < 0)
            {
              v96 = *(this + 505);
            }

            cnprint::CNPrinter::Print(&v113, &v112, "%s", v91, v92, v93, v94, v95, v96);
          }

          ++*(v197 + v193);
        }

        v116 = &unk_1F4CE4300;
        if (v119 < 0)
        {
          operator delete(v118);
        }

        v123 = &unk_1F4CDFE98;
        if (v125 < 0)
        {
          operator delete(v124);
        }

        v123 = &unk_1F4CD5F70;
        if (v122 < 0)
        {
          operator delete(v121);
        }
      }

      else
      {
        LOWORD(v116) = 12;
        LOBYTE(v110) = 4;
        cnprint::CNLogFormatter::FormatGeneral(v108, "GetGeometryFreeGNSSObservationArgs, measurement types do not match,obs1.meas_type_,%d,obs2.meas_type_,%d", v193, v183);
        LOBYTE(v51) = v108;
        if (*(this + 4063) < 0)
        {
          v51 = *(this + 505);
        }

LABEL_45:
        cnprint::CNPrinter::Print(&v116, &v110, "%s", v46, v47, v48, v49, v50, v51);
        LOWORD(v110) = 12;
        LOBYTE(v113) = 4;
        v116 = (*(*a2 + 16))(a2);
        v117 = v52;
        v53 = sub_1D0BCFAB8(v6);
        cnprint::CNLogFormatter::FormatGeneral(v108, &v116, "%s,Type,%d,GetGeometryFreeGNSSObservationArgs() failed", v53, v193);
        LOBYTE(v59) = v108;
        if (*(this + 4063) < 0)
        {
          v59 = *(this + 505);
        }

        cnprint::CNPrinter::Print(&v110, &v113, "%s", v54, v55, v56, v57, v58, v59);
      }

      v151 = &unk_1F4CDFE98;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v151 = &unk_1F4CD5F70;
      if (SHIBYTE(v126.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v126.__r_.__value_.__l.__data_);
      }

      goto LABEL_10;
    }

    LOWORD(v126.__r_.__value_.__l.__data_) = 12;
    LOBYTE(v172) = 4;
    v116 = (*(*a2 + 16))(a2);
    v117 = v41;
    v42 = sub_1D0BCFAB8(v6);
    v43 = cnprint::CNLogFormatter::FormatGeneral(v108, &v116, "%s,Type,%d,GnssPreprocessedMeasurementsEvent,timestamp mismatch, cannot form measurement,t1,%.3lf,t2,%.3lf", v42, v193, *(&v187 + 1) + v187, *(&v177 + 1) + v177);
    if (*(this + 4063) >= 0)
    {
      LOBYTE(v40) = v43;
    }

    else
    {
      v40 = *(this + 505);
    }

LABEL_34:
    cnprint::CNPrinter::Print(&v126, &v172, "%s", v35, v36, v37, v38, v39, v40);
LABEL_10:
    v5 += 2;
  }

  while (v5 != v4);
  return 0;
}

void sub_1D0C04EF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, uint64_t a31, char a32)
{
  sub_1D0E1A5A0(&a32);
  sub_1D0E1A454(&STACK[0x3A0]);
  _Unwind_Resume(a1);
}

uint64_t sub_1D0C04F78(uint64_t a1, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_1D0BC39B4((a1 + 56), *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(a1 + 72) = *(a2 + 2);
    *(a1 + 56) = v4;
  }

  *(a1 + 80) = *(a2 + 3);
  memcpy((a1 + 88), a2 + 2, 0x1A0uLL);
  *(a1 + 504) = &unk_1F4CDFE98;
  v5 = (a1 + 512);
  if (*(a2 + 479) < 0)
  {
    sub_1D0BC39B4(v5, *(a2 + 57), *(a2 + 58));
  }

  else
  {
    v6 = *(a2 + 456);
    *(a1 + 528) = *(a2 + 59);
    *v5 = v6;
  }

  *(a1 + 536) = *(a2 + 60);
  v7 = *(a2 + 488);
  v8 = *(a2 + 520);
  *(a1 + 560) = *(a2 + 504);
  *(a1 + 576) = v8;
  *(a1 + 544) = v7;
  v9 = *(a2 + 536);
  v10 = *(a2 + 552);
  v11 = *(a2 + 584);
  *(a1 + 624) = *(a2 + 568);
  *(a1 + 640) = v11;
  *(a1 + 592) = v9;
  *(a1 + 608) = v10;
  v12 = *(a2 + 600);
  v13 = *(a2 + 616);
  v14 = *(a2 + 648);
  *(a1 + 688) = *(a2 + 632);
  *(a1 + 704) = v14;
  *(a1 + 656) = v12;
  *(a1 + 672) = v13;
  v15 = *(a2 + 664);
  *(a1 + 736) = *(a2 + 85);
  *(a1 + 720) = v15;
  sub_1D0BA002C(a1, 32);
  *a1 = &unk_1F4CED130;
  return a1;
}

void sub_1D0C050AC(_Unwind_Exception *exception_object)
{
  *(v1 + 504) = &unk_1F4CD5F70;
  if (*(v1 + 79) < 0)
  {
    operator delete(*(v1 + 56));
  }

  _Unwind_Resume(exception_object);
}

void sub_1D0C050F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
    if (v20 != (off_1F4CEEC88 & 0x7FFFFFFFFFFFFFFFLL) && strcmp(v20, (off_1F4CEEC88 & 0x7FFFFFFFFFFFFFFFLL)))
    {
      v26.__vftable = 0;
      std::bad_cast::bad_cast(&v26);
      v26.__vftable = &unk_1F4CE4880;
      sub_1D0DC7F8C();
    }

    v21 = *(a2 + 16);
    *a1 = &unk_1F4CEF6E8;

    memcpy((a1 + 8), (v21 + 16), 0x160uLL);
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
    *(a1 + 280) = 0;
    *(a1 + 248) = 0u;
    *(a1 + 232) = 0u;
    *(a1 + 216) = 0u;
    *(a1 + 200) = 0u;
    *(a1 + 184) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 264) = 0u;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = &unk_1F4CEF6E8;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
    *(a1 + 96) = 0x7FF8000000000000;
    *(a1 + 120) = 0;
    *(a1 + 128) = 0;
    *(a1 + 136) = 0;
    *(a1 + 144) = 0;
    *(a1 + 152) = 0;
    *(a1 + 160) = 0;
    *(a1 + 168) = 0;
    *(a1 + 176) = 0;
    *(a1 + 184) = 0;
    *(a1 + 192) = 0x7FF8000000000000;
    v19 = vdupq_n_s64(0x7FF8000000000000uLL);
    *(a1 + 208) = v19;
    *(a1 + 224) = v19;
    *(a1 + 240) = v19;
    *(a1 + 256) = v19;
    *(a1 + 272) = 0x7FF8000000000000;
    *(a1 + 288) = v19;
    *(a1 + 304) = v19;
    *(a1 + 320) = v19;
    *(a1 + 336) = v19;
    *(a1 + 352) = 0x7FF8000000000000;
  }
}

void sub_1D0C053A8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0C050F4(v23, a3, a3, a4, a5, a6, a7, a8);
  v9 = raven::RavenPassThroughEstimator::HandleEvent((v8 + 288), v23);
  if (v9 && cnprint::CNPrinter::GetLogLevel(v9) <= 1)
  {
    v28 = 12;
    v27 = 1;
    v26[0] = (*(v23[0] + 16))(v23);
    v26[1] = v10;
    (*(v23[0] + 24))(v24, v23);
    if (v25 >= 0)
    {
      v16 = v24;
    }

    else
    {
      v16 = v24[0];
    }

    cnprint::CNLogFormatter::FormatWarning(v8 + 240, v26, "Failed to handle event - %s.", v11, v12, v13, v14, v15, v16);
    if (*(v8 + 263) >= 0)
    {
      LOBYTE(v22) = v8 - 16;
    }

    else
    {
      v22 = *(v8 + 240);
    }

    cnprint::CNPrinter::Print(&v28, &v27, "%s", v17, v18, v19, v20, v21, v22);
    if (v25 < 0)
    {
      operator delete(v24[0]);
    }
  }
}

void sub_1D0C054D4(_Unwind_Exception *exception_object)
{
  if (*(v1 - 57) < 0)
  {
    operator delete(*(v1 - 80));
  }

  _Unwind_Resume(exception_object);
}

uint64_t raven::RavenPassThroughEstimator::HandleEvent(raven::RavenPassThroughEstimator *this, const raven::VelocityEvent *a2)
{
  v3 = *(a2 + 200);
  if (v3 == 1)
  {
    ++*(this + 871);
LABEL_6:
    memcpy(this + 3128, a2 + 8, 0x160uLL);
    *(this + 3504) = raven::RavenPassThroughEstimator::IsPosVelValidAndTimeMatched(this, (this + 2760), (this + 3120));
    return 0;
  }

  if (v3 == 9 && *(this + 871))
  {
    goto LABEL_6;
  }

  return 0;
}

uint64_t sub_1D0C05588(uint64_t a1, double *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v45[4] = *MEMORY[0x1E69E9840];
  v8 = *(a4 + 8);
  if ((v8 & 0x80000000) != 0)
  {
    __assert_rtn("Zeros", "cnmatrix.h", 3098, "nr >= 0");
  }

  v41 = 0x100000001;
  v36 = &unk_1F4CDF418;
  v11 = v43;
  v42 = v43;
  v37 = v8;
  v38 = 1;
  v39 = v8;
  v40 = v8;
  if (v8 > 3)
  {
    v12 = &v43[8 * v8];
    bzero(v43, 16 * ((v8 - 1) >> 1));
    *(v12 - 2) = 0;
    *(v12 - 1) = 0;
  }

  else if (v8)
  {
    bzero(v43, 8 * v8);
  }

  if (*a1)
  {
    if (*(a1 + 3184) == 88)
    {
      LOWORD(v45[0]) = 2;
      v44 = 2;
      v31 = a2[1] + *a2;
      cnprint::CNPrinter::Print(v45, &v44, "MeasurementAccumulator::AddMeasurement() failed - Out of space,t_meas,%.3lf", a4, a5, a6, a7, a8, SLOBYTE(v31));
    }

    else if (*(a1 + 1) == 1)
    {
      if (cnprint::CNPrinter::GetLogLevel(v11) <= 1)
      {
        LOWORD(v45[0]) = 2;
        v44 = 1;
        v33 = a2[1] + *a2;
        cnprint::CNPrinter::Print(v45, &v44, "MeasurementAccumulator::AddMeasurement() failed - Locked,t_meas,%.3lf", v18, v19, v20, v21, v22, SLOBYTE(v33));
      }
    }

    else
    {
      v23 = sub_1D0B7C8AC(a2, (a1 + 8));
      if (!v23)
      {
        v45[0] = 0;
        v45[1] = 0;
        sub_1D0C05A00();
      }

      if (cnprint::CNPrinter::GetLogLevel(v23) <= 1)
      {
        LOWORD(v45[0]) = 2;
        v44 = 1;
        v34 = a2[1] + *a2;
        v35 = *(a1 + 16) + *(a1 + 8);
        cnprint::CNPrinter::Print(v45, &v44, "MeasurementAccumulator::AddMeasurement() failed - Measurement too old,t_meas,%.3lf,t_start,%.3lf", v24, v25, v26, v27, v28, SLOBYTE(v34));
      }
    }
  }

  else if (cnprint::CNPrinter::GetLogLevel(v11) <= 1)
  {
    LOWORD(v45[0]) = 2;
    v44 = 1;
    v32 = a2[1] + *a2;
    cnprint::CNPrinter::Print(v45, &v44, "MeasurementAccumulator::AddMeasurement() failed - Not initialized,t_meas,%.3lf", v13, v14, v15, v16, v17, SLOBYTE(v32));
  }

  result = 0xFFFFFFFFLL;
  v30 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1D0C059D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  if (a2)
  {
    sub_1D0C537DC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D0C05B98(_Unwind_Exception *a1)
{
  sub_1D0E1A454(v1 + 56);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void sub_1D0C05BF4(uint64_t a1)
{
  *(a1 + 8) = &unk_1F4CEF598;
  v1 = (a1 + 104);
  sub_1D0BBBD80(&v1);

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0C05C90(uint64_t a1, raven::RavenIonosphereEstimatorActiveObject **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a2;
  if (*(a3 + 8) == 1)
  {
    v10 = *(a3 + 24);
  }

  else
  {
    LOWORD(v29.__vftable) = 3;
    LOBYTE(v42) = 5;
    cnprint::CNPrinter::Print(&v29, &v42, "Attempted to access type of uninitialized GenericEvent.", a4, a5, a6, a7, a8, v28);
    v10 = MEMORY[0x1E69E54A8];
  }

  {
    v16 = *(a3 + 16);
    if (v16)
    {
      v17 = (*(*v16 + 16))(v16);
    }

    else
    {
      v17 = MEMORY[0x1E69E54A8];
    }

    v19 = (*(v17 + 8) & 0x7FFFFFFFFFFFFFFFLL);
    if (v19 != (off_1F4CEF0B8 & 0x7FFFFFFFFFFFFFFFLL) && strcmp(v19, (off_1F4CEF0B8 & 0x7FFFFFFFFFFFFFFFLL)))
    {
      v29.__vftable = 0;
      std::bad_cast::bad_cast(&v29);
      v29.__vftable = &unk_1F4CE4880;
      sub_1D0DC7F8C();
    }

    v20 = *(a3 + 16);
    v29.__vftable = &unk_1F4CEE030;
    v21 = *(v20 + 16);
    v22 = *(v20 + 32);
    v32 = *(v20 + 48);
    v31 = v22;
    v30 = v21;
    v23 = *(v20 + 64);
    v24 = *(v20 + 80);
    v25 = *(v20 + 96);
    v36 = *(v20 + 112);
    v35 = v25;
    v34 = v24;
    v33 = v23;
    v37[0] = &unk_1F4CD5A50;
    v26 = *(v20 + 152);
    *&v37[1] = *(v20 + 136);
    v38 = v26;
    v27 = *(v20 + 184);
    v39 = *(v20 + 168);
    *v40 = v27;
    v40[16] = *(v20 + 200);
  }

  else
  {
    v42 = 3;
    v41 = 5;
    if (*(a3 + 8) == 1)
    {
      v18 = *(a3 + 24);
    }

    else
    {
      LOWORD(v29.__vftable) = 3;
      v43 = 5;
      cnprint::CNPrinter::Print(&v29, &v43, "Attempted to access type of uninitialized GenericEvent.", v11, v12, v13, v14, v15, v28);
      v18 = MEMORY[0x1E69E54A8];
    }

    cnprint::CNPrinter::Print(&v42, &v41, "Attempted to cast a GenericEvent of type %s to type %s.", v11, v12, v13, v14, v15, *(v18 + 8));
    v31 = 0uLL;
    v34 = 0uLL;
    v36 = 0u;
    *&v40[8] = 0u;
    v30 = 0uLL;
    v29.__vftable = &unk_1F4CEE030;
    v32 = 0uLL;
    v33 = 0uLL;
    *&v35 = 0;
    *(&v35 + 1) = 0x7FF8000000000000;
    v37[0] = &unk_1F4CD5A50;
    *&v37[1] = 0u;
    v38 = 0u;
    v39 = xmmword_1D0E76640;
    *v40 = xmmword_1D0E76650;
  }

  raven::RavenIonosphereEstimatorActiveObject::HandleEvent(v9, &v29);
}

const void **cnprint::CNLogFormatter::FormatGeneral(const void **this, char *__format, ...)
{
  va_start(va, __format);
  v4[1] = 0;
  va_copy(&v4[2], va);
  v4[0] = 0;
  cnprint::CNLogFormatter::FormatCore(this, this + 3, v4, 0, __format, va);
  return this;
}

void raven::RavenIonosphereEstimatorActiveObject::HandleEvent(raven::RavenIonosphereEstimatorActiveObject *this, const raven::KlobucharParametersEvent *a2)
{
  v20 = 12;
  v19 = 2;
  v4 = (this + 1912);
  cnprint::CNLogFormatter::FormatGeneral(this + 239, "RavenIonosphereEstimatorActiveObject: received KlobucharParametersEvent");
  if (*(this + 1935) >= 0)
  {
    LOBYTE(v10) = v4;
  }

  else
  {
    v10 = *(this + 239);
  }

  cnprint::CNPrinter::Print(&v20, &v19, "%s", v5, v6, v7, v8, v9, v10);
  if (*(this + 224))
  {
    if (*(this + 225))
    {
      std::mutex::lock((this + 1968));
      raven::RavenIonosphereEstimator::HandleEvent(this + 254, a2);

      std::mutex::unlock((this + 1968));
    }
  }

  else
  {
    v18 = 12;
    v17 = 2;
    cnprint::CNLogFormatter::FormatGeneral(v4, "RavenIonosphereEstimatorActiveObject: not configured");
    if (*(this + 1935) >= 0)
    {
      LOBYTE(v16) = v4;
    }

    else
    {
      v16 = *(this + 239);
    }

    cnprint::CNPrinter::Print(&v18, &v17, "%s", v11, v12, v13, v14, v15, v16);
  }
}

uint64_t raven::RavenIonosphereEstimator::HandleEvent(const void **this, const raven::KlobucharParametersEvent *a2)
{
  if (this[1])
  {
    if (cnprint::CNPrinter::GetLogLevel(this) <= 1)
    {
      v20 = 12;
      v19 = 1;
      v4 = cnprint::CNLogFormatter::FormatGeneral(this + 505, "KlobucharParametersEvent received");
      if (*(this + 4063) >= 0)
      {
        LOBYTE(v10) = v4;
      }

      else
      {
        v10 = this[505];
      }

      cnprint::CNPrinter::Print(&v20, &v19, "%s", v5, v6, v7, v8, v9, v10);
    }

    sub_1D0C061F4((this + 31), a2);
    return 0;
  }

  else
  {
    v22 = 12;
    v21 = 2;
    v12 = cnprint::CNLogFormatter::FormatWarning((this + 505), "KlobucharParametersEvent received, but estimator is not configured");
    if (*(this + 4063) >= 0)
    {
      LOBYTE(v18) = v12;
    }

    else
    {
      v18 = this[505];
    }

    cnprint::CNPrinter::Print(&v22, &v21, "%s", v13, v14, v15, v16, v17, v18);
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_1D0C061F4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 200) == 1)
  {
    v3 = *(a2 + 8);
    v4 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 24) = v4;
    *(a1 + 8) = v3;
    v5 = *(a2 + 56);
    v6 = *(a2 + 72);
    v7 = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 88) = v7;
    *(a1 + 72) = v6;
    *(a1 + 56) = v5;
    cnnavigation::KlobucharModelParameters::operator=(a1 + 120, a2 + 120);
  }

  else
  {
    sub_1D0E1A64C(a1, a2);
    *(a1 + 200) = 1;
  }

  return a1;
}

__n128 cnnavigation::KlobucharModelParameters::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    result = *(a2 + 56);
    *(a1 + 56) = result;
    *(a1 + 72) = *(a2 + 72);
  }

  return result;
}

uint64_t raven::RavenSupervisor::GetRavenSolution(raven::RavenSupervisor *this, raven::RavenSolutionEvent *a2)
{
  std::mutex::lock((this + 180192));
  memcpy(a2 + 8, this + 169232, 0xA51uLL);
  std::mutex::unlock((this + 180192));
  return 0;
}

double CoreNavigation::CLP::LogEntry::LogEntry_TimeStamp::LogEntry_TimeStamp(CoreNavigation::CLP::LogEntry::LogEntry_TimeStamp *this)
{
  *this = &unk_1F4CD9408;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  return result;
}

{
  *this = &unk_1F4CD9408;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  return result;
}

double raven::ConvertRavenTimeToProtobuf(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 44);
  *(a2 + 8) = *(a1 + 32) + *(a1 + 24);
  result = *(a1 + 8) + *a1;
  *(a2 + 44) = v2 | 5;
  *(a2 + 24) = result;
  return result;
}

double CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::PrivateDataCapture(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture *this)
{
  *this = &unk_1F4CDC738;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  *(this + 248) = 0u;
  *(this + 8) = 0u;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  *(this + 308) = 0u;
  return result;
}

{
  *this = &unk_1F4CDC738;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  *(this + 248) = 0u;
  *(this + 8) = 0u;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  *(this + 308) = 0u;
  return result;
}

void *CoreNavigation::CLP::LogEntry::Raven::LogEntry::LogEntry(void *this)
{
  *this = &unk_1F4CD73F8;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

{
  *this = &unk_1F4CD73F8;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

uint64_t raven::ConvertRavenSolutionEventToProtobuf(raven *this, const raven::RavenSolutionEvent *a2, CoreNavigation::CLP::LogEntry::Raven::RavenOutput *a3)
{
  v5 = *(a2 + 15) | 1;
  *(a2 + 15) = v5;
  v6 = *(a2 + 1);
  if (!v6)
  {
    operator new();
  }

  *(a2 + 15) = v5 | 0x20;
  v7 = *(a2 + 6);
  if (!v7)
  {
    operator new();
  }

  v8 = (this + 1096);
  *(v6 + 292) |= 1u;
  v9 = *(v6 + 8);
  if (!v9)
  {
    operator new();
  }

  sub_1D0C075F4(this + 14, v9);
  v17 = 0;
  if (*(this + 208) - 1 >= 5)
  {
    v18 = 1;
  }

  else
  {
    v18 = (*(this + 208) - 1) + 2;
  }

  v19 = *(this + 209);
  if (v19 == 1)
  {
    v20 = 2;
  }

  else
  {
    v20 = 1;
  }

  if (v19 == 2)
  {
    v21 = 3;
  }

  else
  {
    v21 = v20;
  }

  v22 = *(v6 + 292);
  *(v6 + 16) = v18;
  *(v6 + 20) = v21;
  *(v6 + 24) = *(this + 27);
  *(v6 + 32) = *(this + 29) + *(this + 28);
  *(v6 + 40) = *(this + 15);
  *(v6 + 184) = *(this + 32);
  *(v6 + 56) = *(this + 132);
  *(v6 + 64) = *v8;
  *(v6 + 80) = *(this + 1112);
  *(v6 + 96) = *(this + 1128);
  *(v6 + 160) = *(this + 1144);
  v23 = *(this + 145);
  *(v6 + 292) = v22 | 0xF3FFE;
  *(v6 + 176) = v23;
  do
  {
    v24 = *(this + v17 + 67);
    if (v24)
    {
      v25 = *(v6 + 124);
      v26 = *(v6 + 120);
      if (v26 >= v25)
      {
        if (v25 == *(v6 + 128))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v6 + 112));
          v25 = *(v6 + 124);
        }

        *(v6 + 124) = v25 + 1;
        operator new();
      }

      v27 = *(v6 + 112);
      *(v6 + 120) = v26 + 1;
      v28 = *(v27 + 8 * v26);
      v29 = sub_1D0C07848(v17, v10, v11, v12, v13, v14, v15, v16);
      v30 = *(v28 + 40);
      *(v28 + 32) = v29;
      *(v28 + 40) = v30 | 0xC;
      *(v28 + 24) = v24;
    }

    ++v17;
  }

  while (v17 != 33);
  for (i = 0; i != 33; ++i)
  {
    v32 = *(this + i + 100);
    if (v32)
    {
      v33 = *(v6 + 148);
      v34 = *(v6 + 144);
      if (v34 >= v33)
      {
        if (v33 == *(v6 + 152))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v6 + 136));
          v33 = *(v6 + 148);
        }

        *(v6 + 148) = v33 + 1;
        operator new();
      }

      v35 = *(v6 + 136);
      *(v6 + 144) = v34 + 1;
      v36 = *(v35 + 8 * v34);
      v37 = sub_1D0C07848(i, v10, v11, v12, v13, v14, v15, v16);
      v38 = *(v36 + 40);
      *(v36 + 32) = v37;
      *(v36 + 40) = v38 | 0xC;
      *(v36 + 24) = v32;
    }
  }

  for (j = 0; j != 33; ++j)
  {
    v40 = *(this + j + 133);
    if (v40)
    {
      v41 = *(v6 + 204);
      v42 = *(v6 + 200);
      if (v42 >= v41)
      {
        if (v41 == *(v6 + 208))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v6 + 192));
          v41 = *(v6 + 204);
        }

        *(v6 + 204) = v41 + 1;
        operator new();
      }

      v43 = *(v6 + 192);
      *(v6 + 200) = v42 + 1;
      v44 = *(v43 + 8 * v42);
      v45 = sub_1D0C07848(j, v10, v11, v12, v13, v14, v15, v16);
      v46 = *(v44 + 40);
      *(v44 + 32) = v45;
      *(v44 + 40) = v46 | 0xC;
      *(v44 + 24) = v40;
    }
  }

  for (k = 0; k != 33; ++k)
  {
    v48 = *(this + k + 166);
    if (v48)
    {
      v49 = *(v6 + 228);
      v50 = *(v6 + 224);
      if (v50 >= v49)
      {
        if (v49 == *(v6 + 232))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v6 + 216));
          v49 = *(v6 + 228);
        }

        *(v6 + 228) = v49 + 1;
        operator new();
      }

      v51 = *(v6 + 216);
      *(v6 + 224) = v50 + 1;
      v52 = *(v51 + 8 * v50);
      v53 = sub_1D0C07848(k, v10, v11, v12, v13, v14, v15, v16);
      v54 = *(v52 + 40);
      *(v52 + 32) = v53;
      *(v52 + 40) = v54 | 0xC;
      *(v52 + 24) = v48;
    }
  }

  for (m = 0; m != 33; ++m)
  {
    v56 = *(this + m + 199);
    if (v56)
    {
      v57 = *(v6 + 252);
      v58 = *(v6 + 248);
      if (v58 >= v57)
      {
        if (v57 == *(v6 + 256))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v6 + 240));
          v57 = *(v6 + 252);
        }

        *(v6 + 252) = v57 + 1;
        operator new();
      }

      v59 = *(v6 + 240);
      *(v6 + 248) = v58 + 1;
      v60 = *(v59 + 8 * v58);
      v61 = sub_1D0C07848(m, v10, v11, v12, v13, v14, v15, v16);
      v62 = *(v60 + 40);
      *(v60 + 32) = v61;
      *(v60 + 40) = v62 | 0xC;
      *(v60 + 24) = v56;
    }
  }

  for (n = 0; n != 33; ++n)
  {
    v64 = *(this + n + 232);
    if (v64)
    {
      v65 = *(v6 + 272);
      v66 = *(v6 + 276);
      if (v65 >= v66)
      {
        if (v66 == *(v6 + 280))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v6 + 264));
          v66 = *(v6 + 276);
        }

        *(v6 + 276) = v66 + 1;
        operator new();
      }

      v67 = *(v6 + 264);
      *(v6 + 272) = v65 + 1;
      v68 = *(v67 + 8 * v65);
      v69 = sub_1D0C07848(n, v10, v11, v12, v13, v14, v15, v16);
      v70 = *(v68 + 40);
      *(v68 + 32) = v69;
      *(v68 + 40) = v70 | 0xC;
      *(v68 + 24) = v64;
    }
  }

  v71 = *(this + 133);
  v72 = *(v7 + 168);
  *(v7 + 168) = v72 | 0x400;
  *(v7 + 136) = v71;
  v73 = *(this + 270);
  *(v7 + 168) = v72 | 0x1400;
  *(v7 + 60) = v73;
  *(v7 + 160) = *(this + 271);
  v74 = *(this + 136);
  *(v7 + 168) = v72 | 0x7400;
  *(v7 + 152) = v74;
  *(a2 + 15) |= 4u;
  v75 = *(a2 + 3);
  if (!v75)
  {
    operator new();
  }

  v76 = (v75 + 92);
  v77 = *(v75 + 8);
  *(v75 + 92) |= 1u;
  if (!v77)
  {
    operator new();
  }

  sub_1D0C075F4(this + 146, v77);
  if (*(this + 1264) == 1)
  {
    *v76 |= 2u;
    v78 = *(v75 + 16);
    if (!v78)
    {
      operator new();
    }

    v79 = *(v78 + 92);
    *(v78 + 16) = *(this + 1272);
    *(v78 + 32) = *(this + 1288);
    *(v78 + 48) = *(this + 1304);
    *(v78 + 64) = *(this + 1320);
    v80 = *(this + 167);
    *(v78 + 92) = v79 | 0x3FE;
    *(v78 + 80) = v80;
  }

  if (*(this + 1344) == 1)
  {
    *v76 |= 4u;
    v81 = *(v75 + 24);
    if (!v81)
    {
      operator new();
    }

    v82 = *(v81 + 132);
    *(v81 + 16) = *(this + 169);
    v83 = *(this + 173);
    *(v81 + 132) = v82 | 0x22;
    *(v81 + 48) = v83;
  }

  if (*(this + 1345) == 1)
  {
    *v76 |= 4u;
    v84 = *(v75 + 24);
    if (!v84)
    {
      operator new();
    }

    v85 = *(v84 + 132);
    *(v84 + 24) = *(this + 85);
    *(v84 + 40) = *(this + 172);
    *(v84 + 80) = *(this + 1416);
    *(v84 + 96) = *(this + 1432);
    *(v84 + 132) = v85 | 0x7E1C;
    *(v84 + 112) = *(this + 1448);
  }

  if (*(this + 1344) == 1 && *(this + 1345) == 1)
  {
    *v76 |= 4u;
    v86 = *(v75 + 24);
    if (!v86)
    {
      operator new();
    }

    v87 = *(v86 + 132);
    *(v86 + 56) = *(this + 87);
    v88 = *(this + 176);
    *(v86 + 132) = v87 | 0x1C0;
    *(v86 + 72) = v88;
  }

  if (*(this + 1464) == 1)
  {
    *v76 |= 8u;
    v89 = *(v75 + 32);
    if (!v89)
    {
      operator new();
    }

    v90 = *(v89 + 92);
    *(v89 + 16) = *(this + 92);
    *(v89 + 32) = *(this + 93);
    *(v89 + 48) = *(this + 94);
    *(v89 + 64) = *(this + 95);
    v91 = *(this + 192);
    *(v89 + 92) = v90 | 0x3FE;
    *(v89 + 80) = v91;
  }

  if (*(this + 1544) == 1)
  {
    *v76 |= 0x10u;
    v92 = *(v75 + 40);
    if (!v92)
    {
      operator new();
    }

    v93 = *(v92 + 92);
    *(v92 + 16) = *(this + 97);
    *(v92 + 32) = *(this + 98);
    *(v92 + 48) = *(this + 99);
    *(v92 + 64) = *(this + 100);
    v94 = *(this + 202);
    *(v92 + 92) = v93 | 0x3FE;
    *(v92 + 80) = v94;
  }

  if (*(this + 1624) == 1)
  {
    *v76 |= 0x20u;
    v95 = *(v75 + 48);
    if (!v95)
    {
      operator new();
    }

    v96 = *(v95 + 132);
    *(v95 + 16) = *(this + 102);
    *(v95 + 32) = *(this + 103);
    *(v95 + 48) = *(this + 104);
    *(v95 + 64) = *(this + 105);
    *(v95 + 80) = *(this + 106);
    *(v95 + 96) = *(this + 107);
    *(v95 + 132) = v96 | 0x7FFE;
    *(v95 + 112) = *(this + 108);
  }

  if (*(this + 1744) == 1)
  {
    *v76 |= 0x40u;
    v97 = *(v75 + 56);
    if (!v97)
    {
      operator new();
    }

    v98 = *(v97 + 92);
    *(v97 + 16) = *(this + 1752);
    *(v97 + 32) = *(this + 1768);
    *(v97 + 48) = *(this + 1784);
    *(v97 + 64) = *(this + 1800);
    v99 = *(this + 227);
    *(v97 + 92) = v98 | 0x3FE;
    *(v97 + 80) = v99;
  }

  if (*(this + 1824) == 1)
  {
    *v76 |= 0x80u;
    v100 = *(v75 + 64);
    if (!v100)
    {
      operator new();
    }

    v101 = *(v100 + 92);
    *(v100 + 16) = *(this + 1832);
    *(v100 + 32) = *(this + 1848);
    *(v100 + 48) = *(this + 1864);
    *(v100 + 64) = *(this + 1880);
    v102 = *(this + 237);
    *(v100 + 92) = v101 | 0x3FE;
    *(v100 + 80) = v102;
  }

  if (*(this + 1904) == 1)
  {
    *v76 |= 0x100u;
    v103 = *(v75 + 72);
    if (!v103)
    {
      operator new();
    }

    v104 = *(v103 + 92);
    *(v103 + 16) = *(this + 1912);
    *(v103 + 32) = *(this + 1928);
    *(v103 + 48) = *(this + 1944);
    *(v103 + 64) = *(this + 1960);
    v105 = *(this + 247);
    *(v103 + 92) = v104 | 0x3FE;
    *(v103 + 80) = v105;
  }

  if (*(this + 1984) == 1)
  {
    *v76 |= 0x200u;
    v106 = *(v75 + 80);
    if (!v106)
    {
      operator new();
    }

    v107 = *(v106 + 60);
    *(v106 + 16) = *(this + 1992);
    *(v106 + 32) = *(this + 2008);
    v108 = *(this + 253);
    *(v106 + 60) = v107 | 0x3E;
    *(v106 + 48) = v108;
  }

  *(a2 + 15) |= 2u;
  v109 = *(a2 + 2);
  if (!v109)
  {
    operator new();
  }

  v110 = (v109 + 228);
  v111 = *(v109 + 8);
  *(v109 + 228) |= 1u;
  if (!v111)
  {
    operator new();
  }

  sub_1D0C075F4(this + 254, v111);
  v112 = raven::ConvertRavenActivityStateEnumToProtobuf(this + 2128);
  v113 = *v110;
  *(v109 + 56) = *(this + 2136);
  *(v109 + 72) = *(this + 2152);
  *(v109 + 88) = *(this + 2168);
  *(v109 + 104) = *(this + 2184);
  *(v109 + 120) = *(this + 2200);
  if (*(this + 2544) - 1 < 3)
  {
    v114 = (*(this + 2544) - 1) + 1;
  }

  else
  {
    v114 = 0;
  }

  *(v109 + 24) = v112;
  *(v109 + 28) = v114;
  *(v109 + 144) = *(this + 2552);
  *(v109 + 160) = *(this + 2568);
  if (*(this + 2584) - 1 < 3)
  {
    v115 = (*(this + 2584) - 1) + 1;
  }

  else
  {
    v115 = 0;
  }

  *(v109 + 52) = v115;
  *(v109 + 176) = *(this + 162);
  *v110 = v113 | 0x7FFFE8A;
  *(v109 + 192) = *(this + 163);
  *(v109 + 48) = raven::ConvertRavenFitnessSessionActivityToProtobuf(this + 2216);
  v116 = *(this + 2624);
  if (v116 == 2)
  {
    v117 = 2;
  }

  else
  {
    v117 = v116 == 1;
  }

  *(v109 + 136) = v117;
  *v110 = v113 | 0x1FFFFFCA;
  *(v109 + 208) = *(this + 2632);
  result = raven::ConvertRavenSignalEnvironmentEnumToProtobuf(this + 2648);
  *v110 = v113 | 0x3FFFFFCA;
  *(v109 + 140) = result;
  return result;
}