uint64_t *raven::RavenSequentialGNSSMeasurementSelector::GetITRCount(uint64_t a1, void *a2, int *a3, int *a4)
{
  result = sub_1D0BD3584(a2, a3);
  if (result)
  {
    result = sub_1D0BD3584(result + 3, a4);
    if (result)
    {
      return *(result + 5);
    }
  }

  return result;
}

void raven::RavenSequentialGNSSMeasurementSelector::GetFinalGnssObservable(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a2 + 176);
  if ((v4 - 1) >= 3)
  {
    if (!v4)
    {
      v7 = *(a2 + 8);
      v8 = v7[11];
      *(a3 + 160) = v7[10];
      *(a3 + 176) = v8;
      *(a3 + 192) = v7[12];
      v9 = v7[7];
      *(a3 + 96) = v7[6];
      *(a3 + 112) = v9;
      v10 = v7[9];
      *(a3 + 128) = v7[8];
      *(a3 + 144) = v10;
      v11 = v7[3];
      *(a3 + 32) = v7[2];
      *(a3 + 48) = v11;
      v12 = v7[5];
      *(a3 + 64) = v7[4];
      *(a3 + 80) = v12;
      v14 = *v7;
      v13 = v7[1];
      v5 = 1;
      *a3 = v14;
      *(a3 + 16) = v13;
      goto LABEL_7;
    }

    if (*(a2 + 200))
    {
      v15 = *(a2 + 8);
      v16 = *(v15 + 144);
      *(a3 + 128) = *(v15 + 128);
      *(a3 + 144) = v16;
      *(a3 + 160) = *(v15 + 160);
      v17 = *(v15 + 80);
      *(a3 + 64) = *(v15 + 64);
      *(a3 + 80) = v17;
      v18 = *(v15 + 112);
      *(a3 + 96) = *(v15 + 96);
      *(a3 + 112) = v18;
      v19 = *(v15 + 16);
      *a3 = *v15;
      *(a3 + 16) = v19;
      v20 = *(v15 + 48);
      *(a3 + 32) = *(v15 + 32);
      *(a3 + 48) = v20;
      *(a3 + 172) = *(v15 + 172);
      *(a3 + 188) = *(v15 + 188);
      *(a3 + 204) = *(v15 + 204);
      *&v20 = sqrt(*(a2 + 192));
      *(a3 + 168) = v20;
      v5 = 1;
      goto LABEL_7;
    }

    if (cnprint::CNPrinter::GetLogLevel(a1) <= 1)
    {
      v32 = 12;
      v31 = 1;
      v22 = sub_1D0BCFAB8(*a2);
      v23 = *(*(a2 + 8) + 96) - 1;
      if (v23 > 4)
      {
        v24 = "UnknownType";
      }

      else
      {
        v24 = off_1E83D8358[v23];
      }

      cnprint::CNLogFormatter::FormatGeneral(a1 + 208, a1 + 96, "#MSR %s %s no recommended variance", v22, v24);
      if (*(a1 + 231) >= 0)
      {
        LOBYTE(v30) = a1 - 48;
      }

      else
      {
        v30 = *(a1 + 208);
      }

      cnprint::CNPrinter::Print(&v32, &v31, "%s", v25, v26, v27, v28, v29, v30);
    }
  }

  v5 = 0;
  *a3 = 0;
LABEL_7:
  *(a3 + 208) = v5;
}

uint64_t sub_1D0BC9B98(uint64_t a1, double *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v45[4] = *MEMORY[0x1E69E9840];
  v8 = *(a4 + 8);
  if ((v8 & 0x80000000) != 0)
  {
    __assert_rtn("Zeros", "cnmatrix.h", 3098, "nr >= 0");
  }

  v41 = 0x100000003;
  v36 = &unk_1F4CDEB28;
  v11 = v43;
  v42 = v43;
  v37 = v8;
  v38 = 1;
  v39 = v8;
  v40 = v8;
  if (v8 > 3)
  {
    v12 = &v43[v8];
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
    if (*(a1 + 5936) == 174)
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
        sub_1D0BD3638();
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

void sub_1D0BC9FE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  if (a2)
  {
    sub_1D0C537DC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1D0BCA014(int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      sub_1D0BD3638(a3, a2[1]);
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
    *a3 = sub_1D0BCA014;
    a3[1] = v9;
    goto LABEL_9;
  }

  if (a1 != 3)
  {
    return &unk_1F4CEC240;
  }

  if (a4)
  {
    v6 = sub_1D0B7CA64(a4, &unk_1F4CEC240);
  }

  else
  {
    v6 = a5 == &std::__any_imp::__unique_typeinfo<raven::h_GnssPsrArgs_RavenConvergence>::__id;
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

uint64_t sub_1D0BCA100(uint64_t a1)
{
  *a1 = &unk_1F4CEC228;
  v2 = *(a1 + 520);
  if (v2)
  {
    sub_1D0B7CAB8(v2);
  }

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

void sub_1D0BCA3B4(_Unwind_Exception *a1)
{
  sub_1D0D840AC(v1 + 56);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void sub_1D0BCA40C(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      sub_1D0B7CAB8(v4);
    }
  }

  a1[1] = v2;
}

void sub_1D0BCA45C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
    if (v20 != (off_1F4CEE718 & 0x7FFFFFFFFFFFFFFFLL) && strcmp(v20, (off_1F4CEE718 & 0x7FFFFFFFFFFFFFFFLL)))
    {
      v26.__vftable = 0;
      std::bad_cast::bad_cast(&v26);
      v26.__vftable = &unk_1F4CE4880;
      sub_1D0DC7F8C();
    }

    v21 = *(a2 + 16);
    *a1 = &unk_1F4CEF748;

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
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 264) = 0u;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = &unk_1F4CEF748;
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
    *(a1 + 201) = 0;
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

uint64_t raven::RavenDeviceAttitudeActiveObject::RaiseExternalAttitudeEvent(uint64_t this, const raven::TimeMarkEvent *a2)
{
  if (*(*(this + 232) + 3806) == 1 && *(this + 1176) == 1 && *(this + 1168) == 1)
  {
    sub_1D0DD3320();
  }

  return this;
}

void raven::RavenDeviceAttitudeActiveObject::RemoveStaleSolutions(void *a1, void *a2, int8x16_t a3, int8x16_t a4)
{
  *a3.i64 = *(a1[29] + 1048) + *(a1[29] + 1048);
  v18[0] = 0;
  v18[1] = 0;
  *v6.i64 = CNTimeSpan::SetTimeSpan(v18, 0, a3, a4);
  v8 = CNTimeSpan::operator-(a2, v18, v6, v7);
  if (a1[951])
  {
    v10 = v8;
    v11 = v9;
    if (v8)
    {
      v12 = 1;
    }

    else
    {
      v12 = (*&v9 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL;
    }

    v13 = !v12;
    do
    {
      v14 = *(a1[947] + ((a1[950] >> 1) & 0x7FFFFFFFFFFFFFF8)) + 2656 * (a1[950] & 0xFLL);
      v15 = (*(*v14 + 16))(v14);
      if (v15)
      {
        v17 = 1;
      }

      else
      {
        v17 = (*&v16 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL;
      }

      if (!v17 || v13 || v15 == v10)
      {
        if (v16 >= v11)
        {
          return;
        }
      }

      else if (v15 > v10)
      {
        return;
      }

      sub_1D0BAD890((a1 + 946));
    }

    while (a1[951]);
  }
}

void sub_1D0BCA910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a2 + 8) == 1)
  {
    v10 = *(a2 + 24);
  }

  else
  {
    LOWORD(v34.__vftable) = 3;
    LOBYTE(v32) = 5;
    cnprint::CNPrinter::Print(&v34, &v32, "Attempted to access type of uninitialized GenericEvent.", a4, a5, a6, a7, a8, v30);
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

    v19 = (*(v17 + 8) & 0x7FFFFFFFFFFFFFFFLL);
    if (v19 != (off_1F4CEE988 & 0x7FFFFFFFFFFFFFFFLL) && strcmp(v19, (off_1F4CEE988 & 0x7FFFFFFFFFFFFFFFLL)))
    {
      v34.__vftable = 0;
      std::bad_cast::bad_cast(&v34);
      v34.__vftable = &unk_1F4CE4880;
      sub_1D0DC7F8C();
    }

    v20 = *(a2 + 16);
    *a1 = &unk_1F4CEF598;
    v21 = *(v20 + 48);
    v22 = *(v20 + 64);
    v23 = *(v20 + 80);
    v24 = *(v20 + 96);
    v25 = *(v20 + 16);
    v26 = *(v20 + 32);
    *(a1 + 96) = 0;
    v27 = a1 + 96;
    *(v27 - 72) = v26;
    *(v27 - 88) = v25;
    *(v27 - 8) = v24;
    *(v27 - 24) = v23;
    *(v27 - 40) = v22;
    *(v27 - 56) = v21;
    *(v27 + 8) = 0;
    *(v27 + 16) = 0;
    v28 = *(v20 + 104);
    v29 = *(v20 + 112);

    sub_1D0BBD5A4(v27, v28, v29, (v29 - v28) >> 4);
  }

  else
  {
    v32 = 3;
    v31 = 5;
    if (*(a2 + 8) == 1)
    {
      v18 = *(a2 + 24);
    }

    else
    {
      LOWORD(v34.__vftable) = 3;
      v33 = 5;
      cnprint::CNPrinter::Print(&v34, &v33, "Attempted to access type of uninitialized GenericEvent.", v11, v12, v13, v14, v15, v30);
      v18 = MEMORY[0x1E69E54A8];
    }

    cnprint::CNPrinter::Print(&v32, &v31, "Attempted to cast a GenericEvent of type %s to type %s.", v11, v12, v13, v14, v15, *(v18 + 8));
    *(a1 + 40) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 88) = 0;
    *(a1 + 24) = 0u;
    *(a1 + 40) = 0;
    *(a1 + 56) = 0;
    *(a1 + 72) = 0;
    *(a1 + 108) = 0;
    *(a1 + 100) = 0;
    *(a1 + 116) = 0;
    *(a1 + 92) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = &unk_1F4CEF598;
    *(a1 + 24) = 0;
  }
}

void sub_1D0BCAB88(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_1D0C54BE8();
}

uint64_t sub_1D0BCABDC(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1D0BC00C0(a1);
  }

  return a1;
}

void sub_1D0BCAC14(uint64_t a1, uint64_t a2)
{
  if (*a1 == 1)
  {
    v3 = *(a2 + 24);
    *(a1 + 16) = *(a2 + 8);
    *(a1 + 32) = v3;
    v4 = *(a2 + 40);
    v5 = *(a2 + 56);
    v6 = *(a2 + 72);
    *(a1 + 96) = *(a2 + 88);
    *(a1 + 64) = v5;
    *(a1 + 80) = v6;
    *(a1 + 48) = v4;
    if (a1 + 8 != a2)
    {
      v7 = *(a2 + 104);
      v8 = (v7 - *(a2 + 96)) >> 4;
      v9 = (a1 + 104);
      v10 = *(a2 + 96);

      sub_1D0BBD668(v9, v10, v7, v8);
    }
  }

  else
  {
    *(a1 + 8) = &unk_1F4CEF598;
    v11 = *(a2 + 24);
    *(a1 + 16) = *(a2 + 8);
    *(a1 + 32) = v11;
    v12 = *(a2 + 40);
    v13 = *(a2 + 56);
    v14 = *(a2 + 72);
    *(a1 + 96) = *(a2 + 88);
    *(a1 + 64) = v13;
    *(a1 + 80) = v14;
    *(a1 + 48) = v12;
    *(a1 + 112) = 0;
    *(a1 + 120) = 0;
    *(a1 + 104) = 0;
    sub_1D0BBD5A4(a1 + 104, *(a2 + 96), *(a2 + 104), (*(a2 + 104) - *(a2 + 96)) >> 4);
    *a1 = 1;
  }
}

uint64_t *sub_1D0BCAD10(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v8 = *v5;
      v7 = v5[1];
      if (v7)
      {
        atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
      }

      v9 = a4[1];
      *a4 = v8;
      a4[1] = v7;
      if (v9)
      {
        sub_1D0B7CAB8(v9);
      }

      v5 += 2;
      a4 += 2;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t raven::RavenConvergenceEstimator::UpdateClockOffsetEstimateIfNecessary(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 8) == 1 && *(a2 + 24) == 1)
  {
    v5 = *(a2 + 16);
    if (vabdd_f64(*a2, v5) >= 2.22044605e-16)
    {
      v6 = *a2 - v5;
      if (cnprint::CNPrinter::GetLogLevel(a1) <= 1)
      {
        LOWORD(v28) = 12;
        LOBYTE(v27) = 1;
        v7 = cnprint::CNLogFormatter::FormatGeneral(a1 + 2712, a3, "clock jump detected");
        if (*(a1 + 2735) >= 0)
        {
          LOBYTE(v13) = v7;
        }

        else
        {
          v13 = *(a1 + 2712);
        }

        cnprint::CNPrinter::Print(&v28, &v27, "%s", v8, v9, v10, v11, v12, v13);
      }

      return raven::RavenConvergenceEstimator::AdjustClockOffset(a1, a3, v6);
    }

    return 1;
  }

  v15 = 768;
  if (!*(a1 + 4404))
  {
    v15 = 8;
  }

  v30 = 0x100000008;
  v28 = &unk_1F4CE4320;
  v29 = xmmword_1D0E84520;
  v31 = &v32;
  sub_1D0B894B0(&v28, a1 + v15 + 2864);
  v17 = v31[6] * 0.001;
  v18 = round(v17);
  if (fabs(v18) < 2.22044605e-16)
  {
    return 1;
  }

  if (cnprint::CNPrinter::GetLogLevel(v16) <= 1)
  {
    v27 = 12;
    v26 = 1;
    v19 = cnprint::CNLogFormatter::FormatGeneral(a1 + 2712, a3, "clock offset exceeds 0.5 ms,%.3lf ms", v17);
    if (*(a1 + 2735) >= 0)
    {
      LOBYTE(v25) = v19;
    }

    else
    {
      v25 = *(a1 + 2712);
    }

    cnprint::CNPrinter::Print(&v27, &v26, "%s", v20, v21, v22, v23, v24, v25);
  }

  return raven::RavenConvergenceEstimator::AdjustClockOffset(a1, a3, v18 * -0.001);
}

uint64_t sub_1D0BCAF88(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4CEAB60;
  v4 = a1 + 112;
  sub_1D0BA1824(a1 + 8, a2 + 8);
  sub_1D0BA57FC(v4, a2 + 112);
  sub_1D0BA1824(a1 + 664, a2 + 664);
  sub_1D0BA1824(a1 + 768, a2 + 768);
  sub_1D0BA57FC(a1 + 872, a2 + 872);
  sub_1D0BA1824(a1 + 1424, a2 + 1424);
  v5 = *(a2 + 1528);
  v6 = *(a2 + 1560);
  *(a1 + 1544) = *(a2 + 1544);
  *(a1 + 1560) = v6;
  *(a1 + 1528) = v5;
  v7 = *(a2 + 1576);
  v8 = *(a2 + 1592);
  v9 = *(a2 + 1608);
  *(a1 + 1624) = *(a2 + 1624);
  *(a1 + 1592) = v8;
  *(a1 + 1608) = v9;
  *(a1 + 1576) = v7;
  *(a1 + 1632) = 0;
  *(a1 + 1648) = 0;
  *(a1 + 1640) = 0;
  sub_1D0BA5D5C(a1 + 1632, *(a2 + 1632), *(a2 + 1640), (*(a2 + 1640) - *(a2 + 1632)) >> 5);
  *(a1 + 1672) = 0;
  *(a1 + 1656) = 0u;
  sub_1D0BA5D5C(a1 + 1656, *(a2 + 1656), *(a2 + 1664), (*(a2 + 1664) - *(a2 + 1656)) >> 5);
  *(a1 + 1696) = 0;
  *(a1 + 1680) = 0u;
  sub_1D0BA5D5C(a1 + 1680, *(a2 + 1680), *(a2 + 1688), (*(a2 + 1688) - *(a2 + 1680)) >> 5);
  if (*(a2 + 1727) < 0)
  {
    sub_1D0BC39B4((a1 + 1704), *(a2 + 1704), *(a2 + 1712));
  }

  else
  {
    v10 = *(a2 + 1704);
    *(a1 + 1720) = *(a2 + 1720);
    *(a1 + 1704) = v10;
  }

  v11 = (a1 + 1728);
  if (*(a2 + 1751) < 0)
  {
    sub_1D0BC39B4(v11, *(a2 + 1728), *(a2 + 1736));
  }

  else
  {
    v12 = *(a2 + 1728);
    *(a1 + 1744) = *(a2 + 1744);
    *v11 = v12;
  }

  *a1 = &unk_1F4CEAAF8;
  sub_1D0BA57FC(a1 + 1752, a2 + 1752);
  sub_1D0BA1824(a1 + 2304, a2 + 2304);
  sub_1D0BA57FC(a1 + 2408, a2 + 2408);
  v13 = *(a2 + 2960);
  v14 = *(a2 + 2976);
  *(a1 + 2992) = *(a2 + 2992);
  *(a1 + 2976) = v14;
  *(a1 + 2960) = v13;
  v15 = *(a2 + 3008);
  v16 = *(a2 + 3024);
  v17 = *(a2 + 3040);
  *(a1 + 3056) = *(a2 + 3056);
  *(a1 + 3040) = v17;
  *(a1 + 3024) = v16;
  *(a1 + 3008) = v15;
  return a1;
}

void sub_1D0BCB1E8(_Unwind_Exception *a1, uint64_t a2, void *a3, void *a4, ...)
{
  va_start(va, a4);
  if (*(v5 + 1727) < 0)
  {
    operator delete(*v6);
  }

  sub_1D0BA5F70(va);
  sub_1D0BA5F70(va);
  sub_1D0BA5F70(va);
  *v9 = &unk_1F4CD5E28;
  *v8 = &unk_1F4CD5E28;
  *v7 = &unk_1F4CD5E28;
  *a3 = &unk_1F4CD5E28;
  *v4 = &unk_1F4CD5E28;
  *a4 = &unk_1F4CD5E28;
  _Unwind_Resume(a1);
}

void raven::RavenSequentialGNSSMeasurementSelector::ResetEpochSpecificMembers(raven::RavenSequentialGNSSMeasurementSelector *this)
{
  *(this + 1) = 0;
  if (*(this + 32) == 1)
  {
    *(this + 32) = 0;
  }

  *(this + 40) = 0;
  *(this + 306) = 0x7FF8000000000000;
  *(this + 304) = 0x7FF8000000000000;
  if (*(this + 80) == 1)
  {
    *(this + 80) = 0;
  }

  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 6) = 0u;
  *(this + 22) = 0;
  *(this + 23) = 0x7FF8000000000000;
  *(this + 264) = 0u;
  *(this + 23) = 0u;
  v4 = 0x100000008;
  v2 = &unk_1F4CE4320;
  v5 = v6;
  v3 = xmmword_1D0E84520;
  memset(v6, 0, sizeof(v6));
  sub_1D0B894B0(this + 912, &v2);
  *(this + 1016) = 0;
  *(this + 128) = 0;
  *(this + 129) = 0x3FF0000000000000;
  *(this + 65) = 0u;
  *(this + 66) = 0u;
  *(this + 67) = 0u;
  *(this + 68) = 0u;
  *(this + 69) = 0u;
  *(this + 140) = 0x3FF0000000000000;
  *(this + 1128) = 0u;
  *(this + 1144) = 0u;
  *(this + 145) = 0x3FF0000000000000;
  *(this + 146) = 0;
  *(this + 1176) = 0u;
  *(this + 88) = 1;
  *(this + 305) = 0;
  *(this + 260) = 0;
  *(this + 522) = 0;
  sub_1D0BCB540(this + 1200, *(this + 151));
  *(this + 150) = this + 1208;
  *(this + 1208) = 0u;
  *(this + 306) = 0x7FF8000000000000;
  sub_1D0BCB540(this + 1224, *(this + 154));
  *(this + 153) = this + 1232;
  *(this + 77) = 0u;
  sub_1D0BCB540(this + 1248, *(this + 157));
  *(this + 156) = this + 1256;
  *(this + 1256) = 0u;
  *(this + 80) = 0u;
  *(this + 81) = 0u;
  *(this + 82) = 0u;
  *(this + 83) = 0u;
  sub_1D0BBDB14(this + 1344);
  sub_1D0BBDB14(this + 1384);
  sub_1D0BCB624(this + 1424);
  sub_1D0BCB624(this + 1464);
  *(this + 752) = 0;
}

void sub_1D0BCB540(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1D0BCB540(a1, *a2);
    sub_1D0BCB540(a1, a2[1]);

    operator delete(a2);
  }
}

uint64_t sub_1D0BCB594(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void sub_1D0BCB5E0(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_1D0BCB594((v2 + 3));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_1D0BCB624(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_1D0BCB5E0(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

uint64_t sub_1D0BCB680(uint64_t a1)
{
  *a1 = &unk_1F4CEAAF8;
  *(a1 + 2408) = &unk_1F4CD5E28;
  *(a1 + 2304) = &unk_1F4CD5E28;
  *(a1 + 1752) = &unk_1F4CD5E28;
  return sub_1D0BC27EC(a1);
}

uint64_t raven::RavenSequentialGNSSMeasurementSelector::SelectMeasurements(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  sub_1D0BCC0B4(a3);
  if (*(a4 + 8) == 1)
  {
    *(a4 + 8) = 0;
  }

  if (*a1)
  {
    if (*(a1 + 1))
    {
      v7 = *(a1 + 192);
      v8 = *(v7 + 3769);
      v9 = *(v7 + 64);
      if (v9)
      {
        v58 = (*(*a2 + 16))(a2);
        v59 = *&v10;
        *v16.i64 = v10;
        *v17.i64 = v10 + v58;
        if (COERCE__INT64(fabs(*v17.i64)) >= 0x7FF0000000000000)
        {
          LOWORD(v61) = 12;
          LOBYTE(v55) = 4;
          v18 = "Cannot find GMAT data capture: Invalid desired time supplied";
LABEL_19:
          cnprint::CNPrinter::Print(&v61, &v55, v18, v11, v12, v13, v14, v15, v49);
          goto LABEL_20;
        }

        v30 = *v9;
        v29 = v9[1];
        if (*v9 == v29)
        {
          LOWORD(v61) = 12;
          LOBYTE(v55) = 4;
          v18 = "Cannot find GMAT data capture: GMAT data capture container is empty";
          goto LABEL_19;
        }

        v31 = v9[3];
        if (v31 != v29)
        {
          if (sub_1D0B7CF88(v31, &v58))
          {
            v30 = *v9;
          }

          else
          {
            v30 = v9[3];
          }
        }

        v42 = v9[1];
        if (v30 != v42)
        {
          v43 = v30;
          do
          {
            v44 = CNTimeSpan::operator-(v30, &v58, v17, v16);
            v46 = v44;
            v61 = v44;
            v62 = *&v45;
            v47 = v45;
            if (v44 < 0 || (*v17.i64 = v45, v45 < 0.0))
            {
              v44 = CNTimeSpan::operator-(&v61, v17, v16);
              v17.i64[0] = v48;
            }

            if ((v44 || (v17.i64[0] & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL) && v44)
            {
              if (v44 < 0)
              {
                goto LABEL_68;
              }
            }

            else if (*v17.i64 <= 0.5)
            {
LABEL_68:
              v9[3] = v43;
              goto LABEL_21;
            }

            if (v46)
            {
              if (v46 > 0)
              {
                break;
              }
            }

            else if (v47 > 0.5)
            {
              break;
            }

            v30 += 18;
            v43 += 18;
          }

          while (v30 != v42);
        }
      }

LABEL_20:
      v30 = 0;
LABEL_21:
      raven::RavenSequentialGNSSMeasurementSelector::LogEpochHeader(a1, v30);
      v61 = &v61;
      v62 = &v61;
      v63 = 0;
      v58 = &v58;
      v59 = &v58;
      v60 = 0;
      raven::RavenSequentialGNSSMeasurementSelector::PrefilterGNSSMeasurementsAsUseOrNotUse(a1, a2, &v61, &v58, v30);
      raven::RavenSequentialGNSSMeasurementSelector::ComputeMeasurementFunctionOutput(a1, &v61);
      if ((*(*(a1 + 192) + 3835) & 1) == 0 && v60 && raven::RavenSequentialGNSSMeasurementSelector::ShouldLowPLOSMeasurementsBeConsideredInEstimator(a1, &v61))
      {
        raven::RavenSequentialGNSSMeasurementSelector::GetUsableLowPLOSMeasurements(a1, &v58, &v55);
        if (v57)
        {
          raven::RavenSequentialGNSSMeasurementSelector::ComputeMeasurementFunctionOutput(a1, &v55);
          v32 = v57;
          if (v57)
          {
            v34 = v55;
            v33 = v56;
            v35 = *(v55 + 8);
            v36 = *v56;
            *(v36 + 8) = v35;
            *v35 = v36;
            v37 = v61;
            *(v61 + 8) = v33;
            *v33 = v37;
            *(v34 + 8) = &v61;
            v61 = v34;
            v63 += v32;
            v57 = 0;
          }
        }

        sub_1D0BCC0B4(&v55);
      }

      if (v8)
      {
        raven::RavenSequentialGNSSMeasurementSelector::ComputeMeasurementFunctionOutput(a1, &v58);
      }

      raven::RavenSequentialGNSSMeasurementSelector::CheckForAndHandleGrossClockOffsetError(a1, &v61);
      v55 = &v55;
      v56 = &v55;
      v57 = 0;
      v54[0] = v54;
      v54[1] = v54;
      v54[2] = 0;
      v53[0] = v53;
      v53[1] = v53;
      v53[2] = 0;
      v52[0] = v52;
      v52[1] = v52;
      v52[2] = 0;
      v51[0] = v51;
      v51[1] = v51;
      v51[2] = 0;
      v50[0] = v50;
      v50[1] = v50;
      v50[2] = 0;
      if (v62 != &v61)
      {
        v38 = v62[3];
        v39 = *(v38 + 189);
        v40 = *(v38 + 100);
        if (v40 <= 9 && ((1 << v40) & 0x2BB) != 0)
        {
          if (*(v62 + 200) == 1)
          {
            *(v62 + 112) = 6;
            sub_1D0BCD66C();
          }

          if (v39 != 1 && (v40 != 5 || *(*(a1 + 192) + 640) != 1))
          {
            *(v62 + 112) = 2;
            sub_1D0BCD66C();
          }

          *(v62 + 112) = 4;
          sub_1D0BCD66C();
        }

        if (*(v62 + 200) == 1)
        {
          *(v62 + 112) = 5;
          sub_1D0BCD66C();
        }

        if (v40 == 10)
        {
          *(v62 + 112) = 4;
          sub_1D0BCD66C();
        }

        if (v39 == 1)
        {
          *(v62 + 112) = 3;
          sub_1D0BCD66C();
        }

        *(v62 + 112) = 1;
        sub_1D0BCD66C();
      }

      operator new();
    }

    LOWORD(v58) = 12;
    LOBYTE(v55) = 4;
    v19 = a1 - 48;
    v61 = (*(*a2 + 16))(a2);
    v62 = v26;
    cnprint::CNLogFormatter::FormatGeneral(a1 + 208, &v61, "#MSR selector uninitialized");
  }

  else
  {
    LOWORD(v58) = 12;
    LOBYTE(v55) = 4;
    v19 = a1 - 48;
    v61 = (*(*a2 + 16))(a2);
    v62 = v20;
    cnprint::CNLogFormatter::FormatGeneral(a1 + 208, &v61, "#MSR selector not configured");
  }

  if (*(a1 + 231) >= 0)
  {
    LOBYTE(v27) = v19;
  }

  else
  {
    v27 = *(a1 + 208);
  }

  cnprint::CNPrinter::Print(&v58, &v55, "%s", v21, v22, v23, v24, v25, v27);
  return 0;
}

void sub_1D0BCC040(_Unwind_Exception *a1)
{
  sub_1D0BCC0B4((v1 - 176));
  sub_1D0BCC0B4((v1 - 152));
  sub_1D0BCC0B4((v1 - 128));
  _Unwind_Resume(a1);
}

void *sub_1D0BCC0B4(void *result)
{
  if (result[2])
  {
    v1 = result;
    result = result[1];
    v2 = *(*v1 + 8);
    v3 = *result;
    *(v3 + 8) = v2;
    *v2 = v3;
    v1[2] = 0;
    if (result != v1)
    {
      do
      {
        v4 = result[1];
        operator delete(result);
        result = v4;
      }

      while (v4 != v1);
    }
  }

  return result;
}

void raven::RavenSequentialGNSSMeasurementSelector::LogEpochHeader(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 1) || !*(a1 + 1506))
  {
    return;
  }

  sub_1D0B751F4(&v69, "\n");
  if (*(a1 + 112) != 1 || (*v67 = *(a1 + 120), cnnavigation::iOSTimeToJulianTime(v67, v65)) || (cnnavigation::JulianTimeToGregorianTime(v65, &v72), v6))
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
  }

  else
  {
    v9 = v72 & 0xFFFFFF00;
    v2 = *&v74;
    v8 = v72;
    v7 = 1;
  }

  if (*(a1 + 160) == 1)
  {
    *v67 = *(a1 + 168);
    LOWORD(v72) = 0;
    v73 = 0u;
    v74 = 0u;
    v75 = 0;
    v76 = 0;
    v77 = 0;
    v78 = 0;
    cnnavigation::TAITime::ToGPSTime(v67, &v72);
  }

  else
  {
    if (*(a1 + 136) != 1)
    {
      v11 = 0;
      goto LABEL_13;
    }

    *v67 = *(a1 + 144);
    LOWORD(v72) = 0;
    v73 = 0u;
    v74 = 0u;
    v75 = 0;
    v76 = 0;
    v77 = 0;
    v78 = 0;
    cnnavigation::TAITime::ToGPSTime(v67, &v72);
  }

  v3 = v10;
  v11 = 1;
LABEL_13:
  v12 = (a1 + 1512);
  v13 = sub_1D0BCD7C4((a1 + 1512), "====================================================================================================\n\n", 102);
  *(v13 + *(*v13 - 24) + 16) = 3;
  v14 = sub_1D0BCD7C4(v13, "Time: ", 6);
  *(v14 + *(*v14 - 24) + 24) = 13;
  v15 = MEMORY[0x1D387E990](*(a1 + 104) + *(a1 + 96));
  v16 = sub_1D0BCD7C4(v15, "   ", 3);
  *(v16 + *(*v16 - 24) + 24) = 13;
  if (*(a1 + 112) == 1)
  {
    v17.n128_f64[0] = *(a1 + 128) + *(a1 + 120);
  }

  else
  {
    v17.n128_u64[0] = 0x7FF8000000000000;
  }

  MEMORY[0x1D387E990](v17);
  *(v12 + *(*v12 - 24) + 24) = 13;
  if (v11)
  {
    v18 = MEMORY[0x1D387E990](a1 + 1512, v3);
  }

  else
  {
    v18 = MEMORY[0x1D387E990](a1 + 1512, NAN);
  }

  v19 = sub_1D0BCD7C4(v18, "  ", 2);
  *(v19 + *(*v19 - 24) + 24) = 4;
  MEMORY[0x1D387E9C0]();
  sub_1D0BCD7C4((a1 + 1512), "   ", 3);
  if (v7)
  {
    sub_1D0E30940((a1 + 1512), 48);
    *(v12 + *(*v12 - 24) + 24) = 4;
    v20 = MEMORY[0x1D387E9C0](a1 + 1512, v9 | v8);
    v21 = sub_1D0BCD7C4(v20, "/", 1);
    *(v21 + *(*v21 - 24) + 24) = 2;
    v22 = MEMORY[0x1D387E9C0]();
    v23 = sub_1D0BCD7C4(v22, "/", 1);
    *(v23 + *(*v23 - 24) + 24) = 2;
    v24 = MEMORY[0x1D387E9C0]();
    v25 = sub_1D0BCD7C4(v24, " ", 1);
    *(v25 + *(*v25 - 24) + 24) = 2;
    v26 = MEMORY[0x1D387E9C0]();
    v27 = sub_1D0BCD7C4(v26, ":", 1);
    *(v27 + *(*v27 - 24) + 24) = 2;
    v28 = MEMORY[0x1D387E9C0]();
    v29 = sub_1D0BCD7C4(v28, ":", 1);
    *(v29 + *(*v29 - 24) + 24) = 6;
    v30 = MEMORY[0x1D387E990](v2);
    sub_1D0E30940(v30, 32);
  }

  else
  {
    *(v12 + *(*v12 - 24) + 24) = 13;
    MEMORY[0x1D387E990](a1 + 1512, NAN);
  }

  v31 = sub_1D0BCD7C4((a1 + 1512), "   EstAge: ", 11);
  *(v31 + *(*v31 - 24) + 24) = 13;
  if ((*(a1 + 2192) & 1) == 0)
  {
    sub_1D0C42F28();
  }

  v34 = CNTimeSpan::operator-((a1 + 96), (a1 + 2096), v32, v33);
  MEMORY[0x1D387E990](v31, v35 + v34);
  v36 = sub_1D0BCD7C4((a1 + 1512), "   SE: ", 7);
  sub_1D0B751F4(&v72, off_1E83D81C0[*(a1 + 1016)]);
  if (v73 >= 0)
  {
    v37 = &v72;
  }

  else
  {
    v37 = v72;
  }

  if (v73 >= 0)
  {
    v38 = HIBYTE(v73);
  }

  else
  {
    v38 = v73;
  }

  v39 = sub_1D0BCD7C4(v36, v37, v38);
  v40 = sub_1D0BCD7C4(v39, "   Act: ", 8);
  sub_1D0B751F4(v67, off_1E83D81F8[*(a1 + 1024)]);
  if ((v68 & 0x80u) == 0)
  {
    v41 = v67;
  }

  else
  {
    v41 = v67[0];
  }

  if ((v68 & 0x80u) == 0)
  {
    v42 = v68;
  }

  else
  {
    v42 = v67[1];
  }

  v43 = sub_1D0BCD7C4(v40, v41, v42);
  v44 = sub_1D0BCD7C4(v43, " ", 1);
  *(v44 + *(*v44 - 24) + 16) = 2;
  v45 = sub_1D0BBD090((a1 + 1024));
  v46 = MEMORY[0x1D387E990](v44, v45);
  v47 = sub_1D0BCD7C4(v46, "   Mnt: ", 8);
  sub_1D0B751F4(v65, off_1E83D8248[*(a1 + 1112)]);
  if ((v66 & 0x80u) == 0)
  {
    v48 = v65;
  }

  else
  {
    v48 = v65[0];
  }

  if ((v66 & 0x80u) == 0)
  {
    v49 = v66;
  }

  else
  {
    v49 = v65[1];
  }

  v50 = sub_1D0BCD7C4(v47, v48, v49);
  v51 = sub_1D0BCD7C4(v50, " ", 1);
  *(v51 + *(*v51 - 24) + 16) = 2;
  v52 = MEMORY[0x1D387E990](*(a1 + 1112 + 8 * *(a1 + 1112) + 8));
  v53 = sub_1D0BCD7C4(v52, "   Mov: ", 8);
  sub_1D0B751F4(__p, off_1E83D8268[*(a1 + 1152)]);
  if ((v64 & 0x80u) == 0)
  {
    v54 = __p;
  }

  else
  {
    v54 = __p[0];
  }

  if ((v64 & 0x80u) == 0)
  {
    v55 = v64;
  }

  else
  {
    v55 = __p[1];
  }

  v56 = sub_1D0BCD7C4(v53, v54, v55);
  v57 = sub_1D0BCD7C4(v56, " ", 1);
  *(v57 + *(*v57 - 24) + 16) = 2;
  MEMORY[0x1D387E990](*(a1 + 1152 + 8 * *(a1 + 1152) + 8));
  if (v64 < 0)
  {
    operator delete(__p[0]);
  }

  if (v66 < 0)
  {
    operator delete(v65[0]);
  }

  if (v68 < 0)
  {
    operator delete(v67[0]);
  }

  if (SHIBYTE(v73) < 0)
  {
    operator delete(v72);
  }

  if ((v71 & 0x80u) == 0)
  {
    v58 = &v69;
  }

  else
  {
    v58 = v69;
  }

  if ((v71 & 0x80u) == 0)
  {
    v59 = v71;
  }

  else
  {
    v59 = v70;
  }

  v60 = sub_1D0BCD7C4((a1 + 1512), v58, v59);
  if ((v71 & 0x80u) == 0)
  {
    v61 = &v69;
  }

  else
  {
    v61 = v69;
  }

  if ((v71 & 0x80u) == 0)
  {
    v62 = v71;
  }

  else
  {
    v62 = v70;
  }

  sub_1D0BCD7C4(v60, v61, v62);
  raven::RavenSequentialGNSSMeasurementSelector::LogPVT(a1, 0, a2);
  if (v71 < 0)
  {
    operator delete(v69);
  }
}

void sub_1D0BCC8C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t raven::RavenSequentialGNSSMeasurementSelector::PrefilterGNSSMeasurementsAsUseOrNotUse(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v7 = a2;
  v8 = a1;
  v9 = *(a1 + 192);
  v84 = *(v9 + 3835);
  memset(v103, 0, sizeof(v103));
  v104 = 1065353216;
  v10 = *(a2 + 96);
  v82 = *(a2 + 104);
  if (v10 != v82)
  {
    v80 = 0;
    v81 = 0;
    v12 = 0.0;
    while (1)
    {
      v13 = *v10;
      if (*v10)
      {
        break;
      }

LABEL_50:
      v10 += 2;
      if (v10 == v82)
      {
        v9 = *(v8 + 192);
        v7 = a2;
        v38 = v80;
        v39 = v81;
        goto LABEL_53;
      }
    }

    if (*(v13 + 304))
    {
      v14 = *(v13 + 296);
      v15 = *(*(v8 + 192) + 2240);
      v16 = *(v13 + 312);
      v83 = v16 == 0;
      v17 = v14 < v15;
      if (v14 < v15 && v16 == 0)
      {
        a1 = sub_1D0BCD25C(v103, (v13 + 24));
        ++*(a1 + 4);
        ++v80;
        v83 = 1;
        v17 = 1;
        goto LABEL_13;
      }
    }

    else
    {
      v17 = 0;
      v83 = *(v13 + 312) == 0;
    }

    a1 = sub_1D0BCD25C(v103, (v13 + 24));
    ++*a1;
    ++v81;
LABEL_13:
    if (*(v13 + 304) == 1)
    {
      v19 = *(v13 + 296);
      if (v19 <= v12)
      {
        v19 = v12;
      }

      v12 = v19;
    }

    v20 = *(v13 + 328);
    v21 = *(v13 + 336);
    while (v20 != v21)
    {
      v22 = *(v20 + 200) - *(v20 + 192);
      v23 = (COERCE__INT64(fabs(v22)) - 0x10000000000000) >> 53;
      if (*&v22 > -1 && v23 < 0x3FF || (*&v22 - 1) < 0xFFFFFFFFFFFFFLL)
      {
        v90 = v13;
        v91 = v20;
        v26 = *(v20 + 104) + 0.5;
        LODWORD(v92[0].__locale_) = *(v13 + 28) + 1000 * *(v13 + 24);
        v92[1].__locale_ = v26;
        v93 = 0;
        v96[32] = 0;
        v96[40] = 0;
        v96[56] = 0;
        v99 = 0;
        v100 = 0;
        v101 = 0;
        v102 = 0;
        v98 = 0;
        v97 = 0;
        if (a5)
        {
          v27 = *(a5 + 16);
          v28 = *(a5 + 24);
          if (v27 == v28)
          {
LABEL_33:
            v27 = 0;
          }

          else
          {
            while (*(v27 + 48) != *(v13 + 24) || *(v27 + 52) != *(v13 + 28) || *(v27 + 8) != *(v20 + 100) || *(v27 + 16) != *(v20 + 96))
            {
              v27 += 56;
              if (v27 == v28)
              {
                goto LABEL_33;
              }
            }
          }

          v102 = v27;
        }

        if (v84 && *(v20 + 188) == 1)
        {
          sub_1D0BCD66C();
        }

        if (v17)
        {
          if (!v83 && *(v20 + 96) == 1)
          {
            sub_1D0BCD66C();
          }

          v97 = 0x100000002;
          sub_1D0BCD66C();
        }

        sub_1D0BCD66C();
      }

      LOWORD(v90) = 12;
      LOBYTE(__p[0]) = 4;
      v29 = sub_1D0BCFAB8(v13);
      v30 = *(v20 + 96) - 1;
      v31 = "UnknownType";
      if (v30 <= 4)
      {
        v31 = off_1E83D8358[v30];
      }

      cnprint::CNLogFormatter::FormatGeneral(v8 + 208, v8 + 96, "#MSR %s %s invalid meas interval,%3.lf", v29, v31, *(v20 + 200) - *(v20 + 192));
      if (*(v8 + 231) >= 0)
      {
        LOBYTE(v37) = v8 - 48;
      }

      else
      {
        v37 = *(v8 + 208);
      }

      cnprint::CNPrinter::Print(&v90, __p, "%s", v32, v33, v34, v35, v36, v37);
      v20 += 208;
    }

    goto LABEL_50;
  }

  v39 = 0;
  v38 = 0;
  v12 = 0.0;
LABEL_53:
  if (v12 >= *(v9 + 2272))
  {
    v40 = *(v9 + 2280);
    *(v8 + 88) = v39 >= v40;
    if (v39 >= v40)
    {
      goto LABEL_71;
    }
  }

  else
  {
    *(v8 + 88) = 0;
  }

  if (cnprint::CNPrinter::GetLogLevel(a1) <= 1)
  {
    LOWORD(v90) = 12;
    LOBYTE(__p[0]) = 1;
    v41 = cnprint::CNLogFormatter::FormatGeneral(v8 + 208, v8 + 96, "#MSR LOS HMM unreliable, adding back low-P(LOS) measurements, best P(LOS) %5.3f, high-P(LOS) count %2d,  low-P(LOS) count %2d", v12, v39, v38);
    if (*(v8 + 231) >= 0)
    {
      LOBYTE(v47) = v41;
    }

    else
    {
      v47 = *(v8 + 208);
    }

    cnprint::CNPrinter::Print(&v90, __p, "%s", v42, v43, v44, v45, v46, v47);
  }

  v49 = *(v8 + 48);
  v48 = *(v8 + 56);
  while (v49 != v48)
  {
    v50 = sub_1D0BCD25C(v103, v49);
    *v50 = (*v50 + *(v50 + 4));
    ++v49;
  }

  if (!*(v8 + 1272) || (*(*(v8 + 192) + 2392) & 1) == 0)
  {
    v51 = a4[1];
    if (v51 != a4)
    {
      v52 = a4[1];
      do
      {
        v52[24] = 0;
        v52 = v52[1];
      }

      while (v52 != a4);
    }

    v53 = a4[2];
    if (v53)
    {
      v54 = *a4;
      v55 = *(*a4 + 8);
      v56 = *v51;
      *(v56 + 8) = v55;
      *v55 = v56;
      v57 = *a3;
      *(v57 + 8) = v51;
      *v51 = v57;
      *a3 = v54;
      *(v54 + 8) = a3;
      a3[2] += v53;
      a4[2] = 0;
    }
  }

LABEL_71:
  LOBYTE(v90) = 1;
  if (cnprint::CNPrinter::WillPrint(&v90))
  {
    sub_1D0BC2944(&v90);
    v58 = sub_1D0BCD7C4(&v90, "#MSR LOS HMM satellite counts (accept,reject)", 45);
    v60 = *(v8 + 48);
    for (i = *(v8 + 56); v60 != i; ++v60)
    {
      v61 = sub_1D0BCD25C(v103, v60);
      v62 = sub_1D0BCD7C4(&v90, ",", 1);
      sub_1D0B751F4(__p, off_1E83D8320[*v60]);
      if ((v89 & 0x80u) == 0)
      {
        v63 = __p;
      }

      else
      {
        v63 = __p[0];
      }

      if ((v89 & 0x80u) == 0)
      {
        v64 = v89;
      }

      else
      {
        v64 = __p[1];
      }

      v65 = sub_1D0BCD7C4(v62, v63, v64);
      v66 = sub_1D0BCD7C4(v65, ",", 1);
      v67 = MEMORY[0x1D387E9C0](v66, *v61);
      v68 = sub_1D0BCD7C4(v67, ",", 1);
      v58 = MEMORY[0x1D387E9C0](v68, v61[1]);
      if (v89 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (cnprint::CNPrinter::GetLogLevel(v58) <= 1)
    {
      v87 = 12;
      v86 = 1;
      v85[0] = (*(*v7 + 16))(v7);
      v85[1] = v69;
      sub_1D0BC2E5C(&v91, __p);
      v70 = (v89 & 0x80u) == 0 ? __p : __p[0];
      v71 = cnprint::CNLogFormatter::FormatGeneral(v8 + 208, v85, "%s", v70);
      if (*(v8 + 231) >= 0)
      {
        LOBYTE(v77) = v71;
      }

      else
      {
        v77 = *(v8 + 208);
      }

      cnprint::CNPrinter::Print(&v87, &v86, "%s", v72, v73, v74, v75, v76, v77);
      if (v89 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v90 = *MEMORY[0x1E69E54E8];
    *(&v90 + *(v90 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
    v91 = MEMORY[0x1E69E5548] + 16;
    if (v95 < 0)
    {
      operator delete(v94);
    }

    v91 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v92);
    std::ostream::~ostream();
    MEMORY[0x1D387EBF0](v96);
  }

  return sub_1D0BCB594(v103);
}

void sub_1D0BCD1F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  sub_1D0D36324(&a27);
  sub_1D0BCB594(v27 - 176);
  _Unwind_Resume(a1);
}

uint64_t sub_1D0BCD25C(void *a1, unsigned __int8 *a2)
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

  if (*(v7 + 16) != v2)
  {
    goto LABEL_17;
  }

  return v7 + 20;
}

void sub_1D0BCD71C(_Unwind_Exception *a1)
{
  if (v1[160] == 1)
  {
    *v2 = &unk_1F4CD5E28;
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t cnprint::CNPrinter::WillPrint(cnprint::CNPrinter *a1)
{
  cnprint::CNPrinter::GetCNPrinter(a1);
  v6 = dword_1EC5FB8D0;
  result = sub_1D0B7DED0(&stru_1EC5FB8D8, &v6);
  if (result)
  {
    v3 = byte_1EC5FB950;
    std::timed_mutex::unlock(&stru_1EC5FB8D8);
    v4 = *a1;
    return v4 >= v3 && v4 != 255;
  }

  return result;
}

void *sub_1D0BCD7C4(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x1D387E950](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x1E69E5318]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 144) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!sub_1D0BC2C74(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x1D387E960](v13);
  return a1;
}

void sub_1D0BCD904(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x1D387E960](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x1D0BCD8E4);
}

uint64_t sub_1D0BCD96C(uint64_t a1)
{
  v1 = *(a1 + 96);
  if ((v1 & 0x10) != 0)
  {
    v3 = *(a1 + 48);
    if (*(a1 + 88) < v3)
    {
      *(a1 + 88) = v3;
    }

    return *(a1 + 40);
  }

  else if ((v1 & 8) != 0)
  {
    v2 = *(a1 + 16);
    v4 = *(a1 + 32);
  }

  else
  {
    return 0;
  }

  return v2;
}

void raven::RavenSequentialGNSSMeasurementSelector::ComputeMeasurementFunctionOutput(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != a2)
  {
    v5 = a1 + 208;
    do
    {
      raven::RavenSequentialGNSSMeasurementSelector::ComputeMeasurementFunctionOutput(a1, *(v2 + 16), *(v2 + 24), &v17);
      if (*(v2 + 160) == v18[104])
      {
        if (!*(v2 + 160))
        {
          goto LABEL_9;
        }

        *(v2 + 48) = v17;
        sub_1D0B894B0(v2 + 56, v18);
        if ((*(v2 + 160) & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      else
      {
        if (*(v2 + 160))
        {
          *(v2 + 56) = &unk_1F4CD5E28;
          *(v2 + 160) = 0;
LABEL_9:
          if (!cnprint::CNPrinter::GetLogLevel(v6))
          {
            LOWORD(v17) = 12;
            v16 = 0;
            v7 = sub_1D0BCFAB8(*(v2 + 16));
            v8 = *(*(v2 + 24) + 96) - 1;
            v9 = "UnknownType";
            if (v8 <= 4)
            {
              v9 = off_1E83D8358[v8];
            }

            cnprint::CNLogFormatter::FormatGeneral(v5, a1 + 96, "#MSR %s %s could not get h-function output", v7, v9);
            if (*(a1 + 231) >= 0)
            {
              LOBYTE(v15) = v5;
            }

            else
            {
              v15 = *(a1 + 208);
            }

            cnprint::CNPrinter::Print(&v17, &v16, "%s", v10, v11, v12, v13, v14, v15);
          }

          goto LABEL_17;
        }

        *(v2 + 48) = v17;
        sub_1D0BD08B4(v2 + 56, v18);
        *(v2 + 160) = 1;
      }

LABEL_17:
      v2 = *(v2 + 8);
    }

    while (v2 != a2);
  }
}

void raven::RavenSequentialGNSSMeasurementSelector::ComputeMeasurementFunctionOutput(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = 0;
  *(a4 + 112) = 0;
  v353 = 0x100000001;
  *&v8 = 0x100000001;
  *(&v8 + 1) = 0x100000001;
  v352 = v8;
  v351[1] = &unk_1F4CDF418;
  v354 = &v355;
  v349 = 0x100000001;
  v348 = v8;
  v347[1] = &unk_1F4CDF418;
  v350 = v351;
  v345 = 0x100000001;
  v344 = v8;
  v343[8] = &unk_1F4CDF418;
  v346 = v347;
  v341 = 0x800000001;
  v340 = xmmword_1D0E9CBE0;
  v339 = &unk_1F4CEC348;
  v342 = v343;
  v336 = 0x100000001;
  v335 = v8;
  v334 = &unk_1F4CDF418;
  v337 = &v338;
  if ((atomic_load_explicit(&qword_1EE054D50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE054D50))
  {
    sub_1D0E2DF2C();
    __cxa_atexit(sub_1D0D2FD04, &qword_1EE054D68, &dword_1D0B71000);
    __cxa_guard_release(&qword_1EE054D50);
  }

  sub_1D0B751F4(&v308, &unk_1D0ED80C5);
  LOBYTE(v309) = 0;
  HIDWORD(v309) = -1;
  v310 = 0u;
  v311 = 0u;
  v312 = 0u;
  v313 = 0u;
  v314 = 0u;
  *&v315 = 0;
  *(&v315 + 1) = 0x7FF8000000000000;
  LODWORD(v316) = 0;
  BYTE4(v316) = 0;
  *(&v316 + 1) = 0x7FF8000000000000;
  *&v317[8] = vdupq_n_s64(0x7FF8000000000000uLL);
  *&v317[24] = *&v317[8];
  *&v317[40] = *&v317[8];
  *v317 = 2143289344;
  *&v317[56] = 2143289344;
  v317[60] = 0;
  LOBYTE(v318) = 0;
  BYTE4(v318) = 0;
  BYTE8(v318) = 0;
  WORD6(v318) = 0;
  BYTE14(v318) = 1;
  v319 = *&v317[8];
  v320 = &unk_1F4CDFE98;
  sub_1D0B751F4(&v321, &unk_1D0ED80C5);
  LOBYTE(v322) = 0;
  HIDWORD(v322) = -1;
  v323 = 0u;
  v324 = 0u;
  v325 = 0u;
  v326 = 0u;
  v327 = 0u;
  v328 = 0u;
  v329 = 0u;
  v330 = 0u;
  v331 = 0u;
  v332 = 0u;
  v333 = 0u;
  *&v9 = 0x100000001;
  *(&v9 + 1) = 0x100000001;
  v352 = v9;
  v348 = v9;
  *v354 = *(a3 + 15);
  *v350 = (*(a3 + 42) * *(a3 + 42));
  v10 = a3[3];
  v312 = a3[2];
  v313 = v10;
  v11 = a3[1];
  v310 = *a3;
  v311 = v11;
  v12 = a3[7];
  v316 = a3[6];
  *v317 = v12;
  v13 = a3[5];
  v314 = a3[4];
  v315 = v13;
  v14 = a3[12];
  v318 = a3[11];
  v319 = v14;
  v15 = a3[10];
  *&v317[32] = a3[9];
  *&v317[48] = v15;
  *&v317[16] = a3[8];
  std::string::operator=(&v308, a2);
  v309 = *(a2 + 24);
  std::string::operator=(&v321, (a2 + 40));
  v322 = *(a2 + 64);
  v16 = *(a2 + 184);
  v17 = *(a2 + 216);
  v331 = *(a2 + 200);
  v332 = v17;
  v333 = *(a2 + 232);
  v18 = *(a2 + 120);
  v19 = *(a2 + 152);
  v327 = *(a2 + 136);
  v328 = v19;
  v329 = *(a2 + 168);
  v330 = v16;
  v20 = *(a2 + 88);
  v323 = *(a2 + 72);
  v324 = v20;
  v325 = *(a2 + 104);
  v326 = v18;
  v21 = *(a3 + 24);
  if (v21 <= 2)
  {
    if (v21)
    {
      if (v21 == 1)
      {
        sub_1D0BCF90C(&src, &v308);
        *v381 = *(a1 + 96);
        v93 = v379[0];
        v94 = sub_1D0BCFAB8(&v308);
        sub_1D0B751F4(v306, v94);
        sub_1D0BA01A8(&src, v93, v306);
        if (v307 < 0)
        {
          operator delete(v306[0]);
        }

        v96 = *(a2 + 312);
        v95 = *(a2 + 320);
        if (v95)
        {
          atomic_fetch_add_explicit(&v95->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v388 = v96;
        v97 = v389;
        v389 = v95;
        if (v97)
        {
          sub_1D0B7CAB8(v97);
        }

        v98 = *src;
        v99 = __dynamic_cast(&src, &unk_1F4CE42A0, &unk_1F4CEC240, 0);
        if (v99)
        {
          v105 = v99;
          v106 = *(a1 + 264);
          v107 = *(a1 + 268);
          if (v106 <= v107)
          {
            v108 = *(a1 + 268);
          }

          else
          {
            v108 = *(a1 + 264);
          }

          if (v106 && v107 && v108 == 8 && (dword_1EE054D70 <= *algn_1EE054D74 ? (v109 = *algn_1EE054D74) : (v109 = dword_1EE054D70), dword_1EE054D70 && *algn_1EE054D74 && v109 == 1))
          {
            if (v99[128])
            {
              v110 = *(a1 + 288);
              v362 = *v110;
              v363 = *(v110 + 2);
              v358[0] = &unk_1F4CD5F20;
              v357[0] = &unk_1F4CD5BC8;
              v356[0] = 0;
              *&v111 = *(v110 + 6) * 0.000001;
              *v298 = 0u;
              v299[0] = 0u;
              v297 = 0u;
              v359 = *(v99 + 136);
              v112.i64[1] = *(&v359 + 1);
              v112.i64[0] = *(v99 + 24);
              LOWORD(v366) = 0;
              v367 = 0u;
              v368 = 0u;
              LODWORD(v369) = 0;
              *&v370 = 0;
              *(&v369 + 1) = 0;
              DWORD2(v370) = 0;
              if (!cnnavigation::GNSSPseudorange(&v359, &v366, &v362, (v99 + 296), v358, v357, v356, 1, v112, v111, &v297))
              {
                *&v222 = 0x100000001;
                *(&v222 + 1) = 0x100000001;
                v344 = v222;
                *&v368 = 0x800000001;
                v366 = &unk_1F4CEC348;
                *(&v368 + 1) = &v369;
                v367 = xmmword_1D0E9CBE0;
                v369 = 0u;
                v370 = 0u;
                v371 = 0u;
                v372 = 0u;
                sub_1D0B894B0(&v339, &v366);
                v223 = *(v105 + 64);
                v224 = *v356;
                if (v223)
                {
                  *v346 = *v356 + *v223 + *qword_1EE054D88;
                  v225 = *(v223 + 40);
                  v226 = v342;
                  *v342 = *v225;
                  v227 = *(v223 + 28);
                  v228 = HIDWORD(v340);
                  v226[SHIDWORD(v340)] = v225[v227];
                  v229 = &v225[2 * v227];
                  v230 = v228;
                }

                else
                {
                  *v346 = *v356 + *qword_1EE054D88;
                  v226 = v342;
                  *v342 = *v298;
                  v230 = HIDWORD(v340);
                  v226[SHIDWORD(v340)] = *&v298[1];
                  v229 = v299;
                }

                v226[2 * v230] = *v229;
                v226[6 * v230] = *(v299 + 1) * 0.000001;
                *&v368 = 0x100000001;
                v366 = &unk_1F4CDF418;
                *(&v368 + 1) = &v369;
                *&v242 = 0x100000001;
                *(&v242 + 1) = 0x100000001;
                v367 = v242;
                *&v369 = 0x3FF0000000000000;
                sub_1D0B894B0(&v334, &v366);
                if (!cnprint::CNPrinter::GetLogLevel(v243))
                {
                  LOWORD(v366) = 12;
                  LOBYTE(v359) = 0;
                  v244 = *(v105 + 11);
                  v245 = *(v105 + 12);
                  sub_1D0BCFAB8((v105 + 56));
                  v291 = *(v105 + 50);
                  v288 = v105[277];
                  v285 = *(v105 + 64);
                  v281 = *(v105 + 26) - v224;
                  v279 = v245 + v244;
                  cnprint::CNPrinter::Print(&v366, &v359, "t,%.3lf,%s,using PSR,predicted,%.3lf,diff,%.3lf,clockEstMtrs,%.2lf,std,%.2lf,multipath,%hhu,cno,%.1lf", v246, v247, v248, v249, v250, SLOBYTE(v279));
                }

                src = &unk_1F4CEC228;
                if (v389)
                {
                  sub_1D0B7CAB8(v389);
                }

                src = &unk_1F4CE4300;
                if (SHIBYTE(v380) < 0)
                {
                  operator delete(*&v379[8]);
                }

LABEL_147:
                v385 = &unk_1F4CDFE98;
                if (v387 < 0)
                {
                  operator delete(v386);
                }

                v385 = &unk_1F4CD5F70;
                if ((SHIBYTE(v382) & 0x80000000) == 0)
                {
                  goto LABEL_160;
                }

                v251 = *&v381[16];
                goto LABEL_151;
              }

              LOWORD(v366) = 12;
              LOBYTE(v359) = 4;
              v118 = *(v105 + 6) + *(v105 + 5);
              cnprint::CNPrinter::Print(&v366, &v359, "time,%.3lf,h-function failure on line %d: %s() %s", v113, v114, v115, v116, v117, SLOBYTE(v118));
              if (cnprint::CNPrinter::GetLogLevel(v119) <= 1)
              {
                LOWORD(v366) = 12;
                LOBYTE(v359) = 1;
                v120 = *(v105 + 11);
                v121 = *(v105 + 12);
                sub_1D0BCFAB8((v105 + 56));
                v270 = v121 + v120;
                cnprint::CNPrinter::Print(&v366, &v359, "t,%.3lf,%s,GNSSPseudorange returned != 0", v122, v123, v124, v125, v126, SLOBYTE(v270));
              }
            }

            else
            {
              LOWORD(v366) = 12;
              LOBYTE(v297.f64[0]) = 4;
              v189 = *(v99 + 6) + *(v99 + 5);
              cnprint::CNPrinter::Print(&v366, &v297, "time,%.3lf,h-function failure on line %d: %s() %s", v100, v101, v102, v103, v104, SLOBYTE(v189));
              LOWORD(v366) = 12;
              LOBYTE(v297.f64[0]) = 4;
              v190 = *(v105 + 11);
              v191 = *(v105 + 12);
              sub_1D0BCFAB8((v105 + 56));
              v275 = v191 + v190;
              cnprint::CNPrinter::Print(&v366, &v297, "t,%.3lf,%s,TAI time invalid", v192, v193, v194, v195, v196, SLOBYTE(v275));
            }
          }

          else
          {
            LOWORD(v366) = 12;
            LOBYTE(v297.f64[0]) = 4;
            v140 = *(v99 + 6) + *(v99 + 5);
            cnprint::CNPrinter::Print(&v366, &v297, "time,%.3lf,h-function failure on line %d: %s() %s", v100, v101, v102, v103, v104, SLOBYTE(v140));
          }
        }

        else
        {
          LOWORD(v366) = 12;
          LOBYTE(v297.f64[0]) = 4;
          v273 = MEMORY[0x30] + MEMORY[0x28];
          cnprint::CNPrinter::Print(&v366, &v297, "time,%.3lf,h-function failure on line %d: %s() %s", v100, v101, v102, v103, v104, SLOBYTE(v273));
        }

        LOWORD(v366) = 12;
        LOBYTE(v297.f64[0]) = 4;
        v151 = sub_1D0BCFAB8(a2);
        v152 = *(a3 + 24) - 1;
        if (v152 > 4)
        {
          v153 = "UnknownType";
        }

        else
        {
          v153 = off_1E83D8358[v152];
        }

        v154 = cnprint::CNLogFormatter::FormatGeneral(a1 + 208, a1 + 96, "#MSR %s %s h-function failed", v151, v153);
        if (*(a1 + 231) >= 0)
        {
          LOBYTE(v160) = v154;
        }

        else
        {
          v160 = *(a1 + 208);
        }

        cnprint::CNPrinter::Print(&v366, &v297, "%s", v155, v156, v157, v158, v159, v160);
        src = &unk_1F4CEC228;
        if (v389)
        {
          sub_1D0B7CAB8(v389);
        }

        src = &unk_1F4CE4300;
        if (SHIBYTE(v380) < 0)
        {
          operator delete(*&v379[8]);
        }

LABEL_116:
        v385 = &unk_1F4CDFE98;
        if (v387 < 0)
        {
          operator delete(v386);
        }

        v385 = &unk_1F4CD5F70;
        if (SHIBYTE(v382) < 0)
        {
          v138 = *&v381[16];
          goto LABEL_120;
        }

        goto LABEL_168;
      }

      if (v21 == 2)
      {
        sub_1D0C4E8C4(&src, &v308);
        *v381 = *(a1 + 96);
        v22 = v379[0];
        v23 = sub_1D0BCFAB8(&v308);
        sub_1D0B751F4(__p, v23);
        sub_1D0BA01A8(&src, v22, __p);
        if (v305 < 0)
        {
          operator delete(__p[0]);
        }

        v24 = *src;
        v25 = __dynamic_cast(&src, &unk_1F4CE42A0, &unk_1F4CEC2A0, 0);
        if (v25)
        {
          v32 = v25;
          v33 = *(a1 + 264);
          v34 = *(a1 + 268);
          if (v33 <= v34)
          {
            v35 = *(a1 + 268);
          }

          else
          {
            v35 = *(a1 + 264);
          }

          if (v33 && v34 && v35 == 8 && (dword_1EE054D70 <= *algn_1EE054D74 ? (v36 = *algn_1EE054D74) : (v36 = dword_1EE054D70), dword_1EE054D70 && *algn_1EE054D74 && v36 == 1))
          {
            if (v25[128])
            {
              v37 = *(a1 + 288);
              v362 = *v37;
              v363 = *(v37 + 2);
              v359 = *(v37 + 24);
              v360 = *(v37 + 5);
              v357[0] = &unk_1F4CD5F20;
              v356[0] = &unk_1F4CD5BC8;
              v390.f64[0] = 0.0;
              v300 = 0u;
              *v298 = 0u;
              memset(v299, 0, sizeof(v299));
              v297 = 0u;
              *v358 = *(v25 + 136);
              v38.i64[1] = v358[1];
              v38.i64[0] = *(v25 + 24);
              v39 = *(v37 + 7);
              *v31.i64 = *(v37 + 6) / 1000000.0;
              LOWORD(v366) = 0;
              v367 = 0u;
              v368 = 0u;
              LODWORD(v369) = 0;
              *&v370 = 0;
              *(&v369 + 1) = 0;
              DWORD2(v370) = 0;
              if (cnnavigation::GNSSDopplerShift(v358, &v366, &v362, &v359, (v25 + 296), v357, v356, 1, v38, v31, v39 / 1000000.0, v390.f64, 1u, &v297))
              {
                LOWORD(v366) = 12;
                LOBYTE(v358[0]) = 4;
                v45 = *(v32 + 6) + *(v32 + 5);
                cnprint::CNPrinter::Print(&v366, v358, "time,%.3lf,h-function failure on line %d: %s() %s", v40, v41, v42, v43, v44, SLOBYTE(v45));
                if (cnprint::CNPrinter::GetLogLevel(v46) <= 1)
                {
                  LOWORD(v366) = 12;
                  LOBYTE(v358[0]) = 1;
                  v47 = *(v32 + 11);
                  v48 = *(v32 + 12);
                  sub_1D0BCFAB8((v32 + 56));
                  v269 = v48 + v47;
                  cnprint::CNPrinter::Print(&v366, v358, "t,%.3lf,%s,GNSSDopplerShift returned != 0", v49, v50, v51, v52, v53, SLOBYTE(v269));
                }

                goto LABEL_96;
              }

              v207 = 299792458.0 / *(v32 + 24);
              v208 = -(v207 * v390.f64[0]);
              *&v209 = 0x100000001;
              *(&v209 + 1) = 0x100000001;
              v344 = v209;
              *v346 = *qword_1EE054D88 - v207 * v390.f64[0];
              *&v368 = 0x800000001;
              v366 = &unk_1F4CEC348;
              *(&v368 + 1) = &v369;
              v367 = xmmword_1D0E9CBE0;
              v369 = 0u;
              v370 = 0u;
              v371 = 0u;
              v372 = 0u;
              sub_1D0B894B0(&v339, &v366);
              v210 = v342;
              *v342 = -(*v298 * v207);
              v211 = SHIDWORD(v340);
              v210[SHIDWORD(v340)] = -(*&v298[1] * v207);
              v210[2 * v211] = -(*v299 * v207);
              v210[3 * v211] = -(*(v299 + 1) * v207);
              v210[4 * v211] = -(*&v299[1] * v207);
              v210[5 * v211] = -(*(&v299[1] + 1) * v207);
              v210[6 * v211] = -(*&v300 * v207) / 1000000.0;
              v210[7 * v211] = -(*(&v300 + 1) * v207) / 1000000.0;
              *&v368 = 0x100000001;
              v366 = &unk_1F4CDF418;
              *(&v368 + 1) = &v369;
              *&v212 = 0x100000001;
              *(&v212 + 1) = 0x100000001;
              v367 = v212;
              *&v369 = 0x3FF0000000000000;
              sub_1D0B894B0(&v334, &v366);
              if (!cnprint::CNPrinter::GetLogLevel(v213))
              {
                LOWORD(v366) = 12;
                LOBYTE(v358[0]) = 0;
                v214 = *(v32 + 11);
                v215 = *(v32 + 12);
                sub_1D0BCFAB8((v32 + 56));
                v216 = *(a1 + 288);
                v294 = *(v32 + 50);
                v293 = v32[277];
                v287 = *(v216 + 56) * 299.792458;
                v290 = *(v32 + 64);
                v282 = *(v32 + 26) - v208;
                v284 = *(v216 + 48) * 299.792458;
                v278 = v215 + v214;
                cnprint::CNPrinter::Print(&v366, v358, "t,%.3lf,%s,using Doppler,predicted,%.3lf,obs,%.3lf,diff,%.3lf,clockEstMtrs,%.2lf,clockDriftMps,%.2lf,std,%.2lf,multipath,%hhu,cno,%.1lf", v217, v218, v219, v220, v221, SLOBYTE(v278));
              }

              src = &unk_1F4CE4300;
              if (SHIBYTE(v380) < 0)
              {
                operator delete(*&v379[8]);
              }

              goto LABEL_147;
            }

            LOWORD(v366) = 12;
            LOBYTE(v297.f64[0]) = 4;
            v181 = *(v25 + 6) + *(v25 + 5);
            cnprint::CNPrinter::Print(&v366, &v297, "time,%.3lf,h-function failure on line %d: %s() %s", v26, v27, v28, v29, v30, SLOBYTE(v181));
            LOWORD(v366) = 12;
            LOBYTE(v297.f64[0]) = 4;
            v182 = *(v32 + 11);
            v183 = *(v32 + 12);
            sub_1D0BCFAB8((v32 + 56));
            v274 = v183 + v182;
            cnprint::CNPrinter::Print(&v366, &v297, "t,%.3lf,%s,TAI time invalid", v184, v185, v186, v187, v188, SLOBYTE(v274));
          }

          else
          {
            LOWORD(v366) = 12;
            LOBYTE(v297.f64[0]) = 4;
            v139 = *(v25 + 6) + *(v25 + 5);
            cnprint::CNPrinter::Print(&v366, &v297, "time,%.3lf,h-function failure on line %d: %s() %s", v26, v27, v28, v29, v30, SLOBYTE(v139));
          }
        }

        else
        {
          LOWORD(v366) = 12;
          LOBYTE(v297.f64[0]) = 4;
          v272 = MEMORY[0x30] + MEMORY[0x28];
          cnprint::CNPrinter::Print(&v366, &v297, "time,%.3lf,h-function failure on line %d: %s() %s", v26, v27, v28, v29, v30, SLOBYTE(v272));
        }

LABEL_96:
        LOWORD(v366) = 12;
        LOBYTE(v297.f64[0]) = 4;
        v141 = sub_1D0BCFAB8(a2);
        v142 = *(a3 + 24) - 1;
        if (v142 > 4)
        {
          v143 = "UnknownType";
        }

        else
        {
          v143 = off_1E83D8358[v142];
        }

        v144 = cnprint::CNLogFormatter::FormatGeneral(a1 + 208, a1 + 96, "#MSR %s %s h-function failed", v141, v143);
        if (*(a1 + 231) >= 0)
        {
          LOBYTE(v150) = v144;
        }

        else
        {
          v150 = *(a1 + 208);
        }

        cnprint::CNPrinter::Print(&v366, &v297, "%s", v145, v146, v147, v148, v149, v150);
        src = &unk_1F4CE4300;
        if (SHIBYTE(v380) < 0)
        {
          operator delete(*&v379[8]);
        }

        goto LABEL_116;
      }

LABEL_160:
      v260 = *v346;
      if ((*v346 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
      {
        LOWORD(src) = 12;
        LOBYTE(v366) = 4;
        v261 = cnprint::CNLogFormatter::FormatGeneral(a1 + 208, a1 + 96, "#MSR predicted measurement invalid,%.3lf,type,%d", v260, *(a3 + 24));
        if (*(a1 + 231) >= 0)
        {
          LOBYTE(v267) = v261;
        }

        else
        {
          v267 = *(a1 + 208);
        }

        cnprint::CNPrinter::Print(&src, &v366, "%s", v262, v263, v264, v265, v266, v267);
      }

      v384 = 0u;
      v383 = 0u;
      v382 = 0u;
      *&v381[8] = 0u;
      src = 0x7FF8000000000000;
      v380 = 0x800000001;
      *v379 = &unk_1F4CEC348;
      *&v379[8] = xmmword_1D0E9CBE0;
      *v381 = &v381[8];
      if (*(a4 + 112) == 1)
      {
        *(a4 + 8) = &unk_1F4CD5E28;
        *(a4 + 112) = 0;
      }

      *a4 = 0x7FF8000000000000;
      sub_1D0BD08B4(a4 + 8, v379);
      *(a4 + 112) = 1;
      *a4 = *v346;
      sub_1D0B894B0(v268, &v339);
      goto LABEL_168;
    }

LABEL_52:
    LOWORD(src) = 12;
    LOBYTE(v366) = 4;
    v85 = sub_1D0BCFAB8(a2);
    v86 = cnprint::CNLogFormatter::FormatGeneral(a1 + 208, a1 + 96, "#MSR %s unexpected meas type %d", v85, *(a3 + 24));
    if (*(a1 + 231) >= 0)
    {
      LOBYTE(v92) = v86;
    }

    else
    {
      v92 = *(a1 + 208);
    }

    cnprint::CNPrinter::Print(&src, &v366, "%s", v87, v88, v89, v90, v91, v92);
    goto LABEL_168;
  }

  if ((v21 - 3) >= 2)
  {
    if (v21 != 5)
    {
      goto LABEL_160;
    }

    goto LABEL_52;
  }

  sub_1D0BC3810(&v297, &v308);
  *(v299 + 8) = *(a1 + 96);
  v54 = LOBYTE(v297.f64[1]);
  v55 = sub_1D0BCFAB8(&v308);
  sub_1D0B751F4(v295, v55);
  sub_1D0BA01A8(&v297, v54, v295);
  if (v296 < 0)
  {
    operator delete(v295[0]);
  }

  v56 = **&v297.f64[0];
  v57 = __dynamic_cast(&v297, &unk_1F4CE42A0, &unk_1F4CEC300, 0);
  if (v57)
  {
    v64 = v57;
    v65 = *(a1 + 264);
    v66 = *(a1 + 268);
    if (v65 <= v66)
    {
      v67 = *(a1 + 268);
    }

    else
    {
      v67 = *(a1 + 264);
    }

    if (v65 && v66 && v67 == 8 && (dword_1EE054D70 <= *algn_1EE054D74 ? (v68 = *algn_1EE054D74) : (v68 = dword_1EE054D70), dword_1EE054D70 && *algn_1EE054D74 && v68 == 1))
    {
      if (v57[16])
      {
        v63.i64[0] = v57[35];
        v69 = v57[36] - *v63.i64;
        v70 = (COERCE__INT64(fabs(v69)) - 0x10000000000000) >> 53;
        if ((*&v69 <= -1 || v70 >= 0x3FF) && (*&v69 - 1) >= 0xFFFFFFFFFFFFFLL)
        {
          LOWORD(src) = 12;
          LOBYTE(v366) = 4;
          v171 = v57[6] + *(v57 + 5);
          cnprint::CNPrinter::Print(&src, &v366, "time,%.3lf,h-function failure on line %d: %s() %s", v58, v59, v60, v61, v62, SLOBYTE(v171));
          LOWORD(src) = 12;
          LOBYTE(v366) = 4;
          v172 = *(v64 + 11);
          v173 = v64[12];
          sub_1D0BCFAB8((v64 + 7));
          v179 = *(v64 + 46) - 1;
          if (v179 <= 4)
          {
            v180 = off_1E83D8358[v179];
          }

          v277 = v173 + v172;
          cnprint::CNPrinter::Print(&src, &v366, "t,%.3lf,%s,%s,Invalid time interval,%.2lf", v174, v175, v176, v177, v178, SLOBYTE(v277));
        }

        else
        {
          v394[0] = a1 + 256;
          v394[1] = v57;
          v393 = 0.0;
          v391 = 0u;
          v392 = 0u;
          v390 = 0u;
          *&v379[16] = 0x800000008;
          *v379 = xmmword_1D0E84510;
          src = &unk_1F4CE43B0;
          v380 = v381;
          *&v367 = 0;
          v366 = 0;
          *v73.i64 = CNTimeSpan::SetTimeSpan(&v366, 0, v63, xmmword_1D0E84510);
          v377[0] = CNTimeSpan::operator+(v64 + 11, &v366, v73, v74);
          v377[1] = v75;
          if (sub_1D0BD09FC(v394, v377, &v393, &v390, &src, v76, v77))
          {
            LOWORD(v366) = 12;
            LOBYTE(v362) = 4;
            v84 = v64[6] + *(v64 + 5);
            cnprint::CNPrinter::Print(&v366, &v362, "time,%.3lf,h-function failure on line %d: %s() %s", v78, v79, v80, v81, v82, SLOBYTE(v84));
          }

          else
          {
            v376 = 0.0;
            v374 = 0u;
            v375 = 0u;
            v373 = 0u;
            *&v368 = 0x800000008;
            v197.i64[1] = 0x800000040;
            v367 = xmmword_1D0E84510;
            v366 = &unk_1F4CE43B0;
            *(&v368 + 1) = &v369;
            v197.i64[0] = v64[36];
            v362 = 0uLL;
            *v198.i64 = CNTimeSpan::SetTimeSpan(&v362, 0, v197, v83);
            v365[0] = CNTimeSpan::operator+(v64 + 11, &v362, v198, v199);
            v365[1] = v200;
            if (!sub_1D0BD09FC(v394, v365, &v376, &v373, &v366, v201, v202))
            {
              v231 = 1.0 / v69 * (299792458.0 / v64[24]);
              *&v232 = 0x100000001;
              *(&v232 + 1) = 0x100000001;
              v344 = v232;
              v233 = v376 - v393;
              *v346 = *qword_1EE054D88 + (v376 - v393) * v231;
              sub_1D0BD1400(1, 8, &v362);
              v234 = *(&v374 + 1);
              v235 = v364;
              *v364 = v231 * *&v374;
              v236 = SHIDWORD(v363);
              v235[SHIDWORD(v363)] = v231 * v234;
              v237 = *(&v375 + 1);
              v235[2 * v236] = v231 * *&v375;
              v235[6 * v236] = v231 * v237 * 0.000001;
              sub_1D0BD1400(1, 8, &v359);
              v238 = *(&v391 + 1);
              v239 = v361;
              *v361 = v231 * *&v391;
              v240 = SHIDWORD(v360);
              v239[SHIDWORD(v360)] = v231 * v238;
              v241 = *(&v392 + 1);
              v239[2 * v240] = v231 * *&v392;
              v239[6 * v240] = v231 * v241 * 0.000001;
              sub_1D0BD1400(1, 8, v358);
              sub_1D0B894B0(&v339, v358);
              if (fabs(v64[36]) <= 0.001)
              {
                sub_1D0BD1484(&v359, &src, v357);
                sub_1D0BD1508(&v362, v357, v358);
              }

              else
              {
                sub_1D0BD1484(&v362, &v366, v357);
                sub_1D0BD1484(&v359, &src, v356);
                sub_1D0BD1508(v357, v356, v358);
              }

              sub_1D0B894B0(&v339, v358);
              v342[7 * SHIDWORD(v340)] = v342[7 * SHIDWORD(v340)] + v231 * v233 * 0.000001;
              sub_1D0BBBC94(1u, 1u, v358);
              sub_1D0B894B0(&v334, v358);
              if (!cnprint::CNPrinter::GetLogLevel(v252))
              {
                LOWORD(v358[0]) = 12;
                LOBYTE(v357[0]) = 0;
                v253 = *(v64 + 11);
                v254 = v64[12];
                sub_1D0BCFAB8((v64 + 7));
                v292 = *(v64 + 50);
                v289 = *(v64 + 277);
                v283 = *v346;
                v286 = *(v64 + 64);
                v280 = v254 + v253;
                cnprint::CNPrinter::Print(v358, v357, "t,%.3lf,%s,using average Doppler,predictedCrnt,%.3lf,predictedPrev,%.3lf,diff,%.3lf,std,%.4lf,multipath,%hhu,cno,%.1lf", v255, v256, v257, v258, v259, SLOBYTE(v280));
              }

              *&v297.f64[0] = &unk_1F4CE4300;
              if (SBYTE7(v299[0]) < 0)
              {
                operator delete(v298[0]);
              }

              v301 = &unk_1F4CDFE98;
              if (v303 < 0)
              {
                operator delete(v302);
              }

              v301 = &unk_1F4CD5F70;
              if ((SHIBYTE(v300) & 0x80000000) == 0)
              {
                goto LABEL_160;
              }

              v251 = *(&v299[1] + 1);
LABEL_151:
              operator delete(v251);
              goto LABEL_160;
            }

            sub_1D0D85A30((v64 + 5), "could not compute expected carrier phase at end", "h_GnssAverageDoppler_RavenConvergence", 836, v203, v204, v205, v206);
          }
        }
      }

      else
      {
        LOWORD(src) = 12;
        LOBYTE(v366) = 4;
        v161 = v57[6] + *(v57 + 5);
        cnprint::CNPrinter::Print(&src, &v366, "time,%.3lf,h-function failure on line %d: %s() %s", v58, v59, v60, v61, v62, SLOBYTE(v161));
        LOWORD(src) = 12;
        LOBYTE(v366) = 4;
        v162 = *(v64 + 11);
        v163 = v64[12];
        sub_1D0BCFAB8((v64 + 7));
        v169 = *(v64 + 46) - 1;
        if (v169 <= 4)
        {
          v170 = off_1E83D8358[v169];
        }

        v276 = v163 + v162;
        cnprint::CNPrinter::Print(&src, &v366, "t,%.3lf,%s,%s,TAI time invalid", v164, v165, v166, v167, v168, SLOBYTE(v276));
      }
    }

    else
    {
      LOWORD(src) = 12;
      LOBYTE(v366) = 4;
      v127 = v57[6] + *(v57 + 5);
      cnprint::CNPrinter::Print(&src, &v366, "time,%.3lf,h-function failure on line %d: %s() %s", v58, v59, v60, v61, v62, SLOBYTE(v127));
    }
  }

  else
  {
    LOWORD(src) = 12;
    LOBYTE(v366) = 4;
    v271 = MEMORY[0x30] + MEMORY[0x28];
    cnprint::CNPrinter::Print(&src, &v366, "time,%.3lf,h-function failure on line %d: %s() %s", v58, v59, v60, v61, v62, SLOBYTE(v271));
  }

  LOWORD(src) = 12;
  LOBYTE(v366) = 4;
  v128 = sub_1D0BCFAB8(a2);
  v129 = *(a3 + 24) - 1;
  if (v129 > 4)
  {
    v130 = "UnknownType";
  }

  else
  {
    v130 = off_1E83D8358[v129];
  }

  v131 = cnprint::CNLogFormatter::FormatGeneral(a1 + 208, a1 + 96, "#MSR %s %s h-function failed", v128, v130);
  if (*(a1 + 231) >= 0)
  {
    LOBYTE(v137) = v131;
  }

  else
  {
    v137 = *(a1 + 208);
  }

  cnprint::CNPrinter::Print(&src, &v366, "%s", v132, v133, v134, v135, v136, v137);
  *&v297.f64[0] = &unk_1F4CE4300;
  if (SBYTE7(v299[0]) < 0)
  {
    operator delete(v298[0]);
  }

  v301 = &unk_1F4CDFE98;
  if (v303 < 0)
  {
    operator delete(v302);
  }

  v301 = &unk_1F4CD5F70;
  if (SHIBYTE(v300) < 0)
  {
    v138 = *(&v299[1] + 1);
LABEL_120:
    operator delete(v138);
  }

LABEL_168:
  v320 = &unk_1F4CDFE98;
  if (SHIBYTE(v321.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v321.__r_.__value_.__l.__data_);
  }

  v320 = &unk_1F4CD5F70;
  if (SHIBYTE(v308.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v308.__r_.__value_.__l.__data_);
  }
}

void sub_1D0BCF7DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, char a27)
{
  sub_1D0E30EA0(&a27);
  sub_1D0D840AC(&STACK[0x2C0]);
  if (*(v27 + 112) == 1)
  {
    *(v27 + 8) = &unk_1F4CD5E28;
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1D0BCF90C(uint64_t a1, __int128 *a2)
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
  *(a1 + 88) = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  *(a1 + 152) = a2[6];
  *(a1 + 136) = v7;
  *(a1 + 120) = v6;
  *(a1 + 104) = v5;
  v8 = a2[7];
  v9 = a2[8];
  v10 = a2[9];
  *(a1 + 216) = a2[10];
  *(a1 + 200) = v10;
  *(a1 + 184) = v9;
  *(a1 + 168) = v8;
  v11 = a2[11];
  v12 = a2[12];
  v13 = a2[14];
  *(a1 + 264) = a2[13];
  *(a1 + 280) = v13;
  *(a1 + 248) = v12;
  *(a1 + 232) = v11;
  *(a1 + 296) = &unk_1F4CDFE98;
  if (*(a2 + 271) < 0)
  {
    sub_1D0BC39B4((a1 + 304), *(a2 + 31), *(a2 + 32));
  }

  else
  {
    v14 = *(a2 + 248);
    *(a1 + 320) = *(a2 + 33);
    *(a1 + 304) = v14;
  }

  *(a1 + 328) = *(a2 + 34);
  v15 = *(a2 + 280);
  v16 = *(a2 + 312);
  *(a1 + 352) = *(a2 + 296);
  *(a1 + 368) = v16;
  *(a1 + 336) = v15;
  v17 = *(a2 + 328);
  v18 = *(a2 + 344);
  v19 = *(a2 + 376);
  *(a1 + 416) = *(a2 + 360);
  *(a1 + 432) = v19;
  *(a1 + 384) = v17;
  *(a1 + 400) = v18;
  v20 = *(a2 + 392);
  v21 = *(a2 + 408);
  v22 = *(a2 + 440);
  *(a1 + 480) = *(a2 + 424);
  *(a1 + 496) = v22;
  *(a1 + 448) = v20;
  *(a1 + 464) = v21;
  sub_1D0BA002C(a1, 18);
  *a1 = &unk_1F4CEC228;
  *(a1 + 512) = 0u;
  return a1;
}

void sub_1D0BCFA70(_Unwind_Exception *exception_object)
{
  *(v1 + 296) = &unk_1F4CD5F70;
  if (*(v1 + 79) < 0)
  {
    operator delete(*(v1 + 56));
  }

  _Unwind_Resume(exception_object);
}

const char *sub_1D0BCFAB8(uint64_t a1)
{
  if (!*(a1 + 24))
  {
    return "InvalidID";
  }

  v1 = a1;
  if (*(a1 + 28) == -1)
  {
    return "InvalidID";
  }

  sub_1D0BC2F00(v9);
  if (v1[24] - 1 >= 6)
  {
    v3 = "Unknown,";
    v4 = 8;
  }

  else
  {
    v2 = (v1[24] - 1);
    v3 = off_1E83D7E00[v2];
    v4 = qword_1D0E83D88[v2];
  }

  sub_1D0BCD7C4(&v10, v3, v4);
  MEMORY[0x1D387E9C0](&v10, *(v1 + 7));
  sub_1D0BC2E5C(&v11, &v7);
  if (v1[23] < 0)
  {
    operator delete(*v1);
  }

  *v1 = v7;
  *(v1 + 2) = v8;
  if (v1[23] < 0)
  {
    v1 = *v1;
  }

  v9[0] = *MEMORY[0x1E69E54D8];
  v5 = *(MEMORY[0x1E69E54D8] + 72);
  *(v9 + *(v9[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v10 = v5;
  v11 = MEMORY[0x1E69E5548] + 16;
  if (v13 < 0)
  {
    operator delete(v12[7].__locale_);
  }

  v11 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v12);
  std::iostream::~basic_iostream();
  MEMORY[0x1D387EBF0](&v14);
  return v1;
}

void sub_1D0BCFCD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_1D0C71960(&a12, MEMORY[0x1E69E54D8]);
  MEMORY[0x1D387EBF0](&a28);
  _Unwind_Resume(a1);
}

uint64_t cnnavigation::GNSSTimeOfFlight(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t *a6, int a7, uint64_t *a8, int8x16_t a9, int8x16_t a10, double *a11, unsigned __int8 a12, uint64_t a13)
{
  v172[3] = *MEMORY[0x1E69E9840];
  if (a9.i64[0] >= 0 && ((a9.i64[0] & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 <= 0x3FE || (a9.i64[0] - 1) <= 0xFFFFFFFFFFFFELL)
  {
    v16 = a7;
    v22 = 0;
    v23 = a12;
    while ((*(a3 + v22) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      v22 += 8;
      if (v22 == 24)
      {
        v25 = *(a3 + 8);
        v26 = *(a3 + 16);
        v172[0] = *a3;
        v24 = *v172;
        *&v172[1] = v25;
        *&v172[2] = v26;
        v27 = sqrt(v25 * v25 + v24 * v24 + v26 * v26);
        if (v27 < 6341752.3)
        {
          break;
        }

        v121 = *a9.i64;
        *a11 = 0.0;
        v30 = 0.0;
        v31 = 11;
        v32 = INFINITY;
        a10.i64[0] = 0x3F131DA7D7CB8D5BLL;
        v134 = v27;
        v132 = v26;
        v133 = v24;
        while (1)
        {
          v33 = vabdd_f64(v30, v32);
          v34 = v33 < 3.33564095e-13 ? v23 : 0;
          if (v34 == 1)
          {
            v169 = 0;
            v170 = 0.0;
            *a9.i64 = v30;
            *v35.i64 = CNTimeSpan::SetTimeSpan(&v169, 0, a9, a10);
            *&v157.f64[0] = CNTimeSpan::operator-(a1, &v169, v35, v36);
            v157.f64[1] = v37;
            result = (*(*a4 + 56))(a4, &v157, a2, &v150, &v147, &v153);
          }

          else
          {
            v167 = 0uLL;
            *a9.i64 = v30;
            *v38.i64 = CNTimeSpan::SetTimeSpan(&v167, 0, a9, a10);
            v169 = CNTimeSpan::operator-(a1, &v167, v38, v39);
            v170 = v40;
            result = (*(*a4 + 56))(a4, &v169, a2, &v150, &v153, &v157);
          }

          if (result)
          {
            goto LABEL_13;
          }

          v41 = *a11;
          v42 = __sincos_stret(*a11 * 0.0000729211515);
          v43 = v42.__sinval * v151 + v42.__cosval * v150;
          v44 = v42.__cosval * v151 - v42.__sinval * v150;
          v169 = *&v43;
          v170 = v44;
          v171 = v152;
          v45 = v43 - v24;
          v46 = v44 - v25;
          v47 = v152 - v26;
          v139 = v33;
          v141 = sqrt(v46 * v46 + v45 * v45 + v47 * v47);
          v48 = (v27 / v141 - (v25 * (v44 / v141) + v24 * (v43 / v141) + v26 * (v152 / v141))) / v141;
          v157 = 0uLL;
          v123 = v152 - v26;
          v124 = v44 - v25;
          v125 = v43 - v24;
          v136 = v41;
          if (v48 >= 0.0)
          {
            if (v48 <= 1.0)
            {
              v142.f64[0] = *a3 + v48 * v45;
              v142.f64[1] = *(a3 + 8) + v48 * v46;
              v157 = v142;
              v49 = *(a3 + 16) + v48 * v47;
            }

            else
            {
              v157.f64[0] = v42.__sinval * v151 + v42.__cosval * v150;
              v157.f64[1] = v42.__cosval * v151 - v42.__sinval * v150;
              v142 = v157;
              v49 = v152;
            }
          }

          else
          {
            v157.f64[0] = v24;
            v157.f64[1] = v25;
            v142.f64[0] = v24;
            v142.f64[1] = v25;
            v49 = v26;
          }

          v50 = sqrt(v44 * v44 + v43 * v43 + v152 * v152);
          *v158.i64 = v49;
          v145 = v50;
          v127 = v42.__sinval * v151 + v42.__cosval * v150;
          v128 = v42.__cosval * v151 - v42.__sinval * v150;
          v51 = v50 <= v27 ? v24 : v42.__sinval * v151 + v42.__cosval * v150;
          v52 = v50 <= v27 ? v25 : v42.__cosval * v151 - v42.__sinval * v150;
          v167.f64[0] = v51;
          v167.f64[1] = v52;
          v53 = v50 <= v27 ? v26 : v152;
          v168 = v53;
          v164 = 0;
          v165 = 0;
          v161 = 0.0;
          v162 = 0.0;
          v163 = 0.0;
          result = cnnavigation::ECEFToLLA(&v157, 1, &v164, 0, &v153);
          if (result)
          {
            goto LABEL_13;
          }

          v166 = 0;
          result = cnnavigation::LLAToECEF(&v164, 1, &v161, 0, &v153);
          if (result)
          {
            goto LABEL_13;
          }

          v54 = v25;
          v55 = v161;
          v56 = v162;
          v57 = v163;
          result = cnnavigation::ECEFToLLA(&v167, 1, &v164, 0, &v153);
          if (result)
          {
            goto LABEL_13;
          }

          v166 = 0;
          result = cnnavigation::LLAToECEF(&v164, 1, &v161, 0, &v153);
          if (result)
          {
            goto LABEL_13;
          }

          v58 = sqrt(v56 * v56 + v55 * v55 + v57 * v57);
          v59 = sqrt(v142.f64[1] * v142.f64[1] + v142.f64[0] * v142.f64[0] + v49 * v49);
          v60 = v59 - v58;
          v61 = v52 * v52;
          v62 = v60;
          v63 = sqrt(v61 + v51 * v51 + v53 * v53) - sqrt(v162 * v162 + v161 * v161 + v163 * v163);
          v161 = 0.0;
          a10 = 0uLL;
          v155 = 0u;
          v156 = 0u;
          v153 = 0u;
          v154 = 0u;
          v65 = v60 < 350000.0 && a5 != 0;
          if (v63 <= 350000.0)
          {
            v65 = 0;
          }

          v66 = 0.0;
          v144 = 0.0;
          v143 = v65;
          v25 = v54;
          v27 = v134;
          if (v65)
          {
            v67 = v59 < v145;
            if (v59 >= v134)
            {
              v67 = 0;
            }

            result = 0xFFFFFFFFLL;
            if (v145 < v134 || v67)
            {
              goto LABEL_13;
            }

            v144 = (350000.0 - v60) / (v145 - v134);
            *a10.i64 = v136;
            *a9.i64 = v136 * v144;
            v167 = 0uLL;
            *v68.i64 = CNTimeSpan::SetTimeSpan(&v167, 0, a9, a10);
            *&v157.f64[0] = CNTimeSpan::operator-(a1, &v167, v68, v69);
            v157.f64[1] = v70;
            v71 = cnnavigation::TAITime::ToGPSTime(&v157, a2);
            v73.n128_u64[0] = v72;
            v74 = *a6;
            result = v34 ? (*(v74 + 24))(a6, v71, v172, &v169, &v161, &v153, v73, v121) : (*(v74 + 16))(a6, v71, v172, &v169, &v161, v73, v121);
            a10 = 0uLL;
            if (result)
            {
              goto LABEL_13;
            }

            if (a5 == 2)
            {
              v161 = -v161;
            }
          }

          v146 = 0.0;
          v160 = 0.0;
          v158 = a10;
          v159 = a10;
          v157 = a10;
          v76 = v62 < 8500.0 && v16 != 0;
          v77 = v63 > 8500.0 && v76;
          v78 = 0.0;
          v24 = v133;
          if (v77)
          {
            v79 = v59 < v145;
            if (v59 >= v134)
            {
              v79 = 0;
            }

            result = 0xFFFFFFFFLL;
            if (v145 < v134 || v79)
            {
              goto LABEL_13;
            }

            *&v80 = (8500.0 - v62) / (v145 - v134);
            *a9.i64 = *&v80 * *a11;
            v164 = 0;
            v165 = 0;
            *v81.i64 = CNTimeSpan::SetTimeSpan(&v164, 0, a9, v80);
            *&v167.f64[0] = CNTimeSpan::operator-(a1, &v164, v81, v82);
            v167.f64[1] = v83;
            v84 = cnnavigation::TAITime::ToGPSTime(&v167, a2);
            v86.n128_u64[0] = v85;
            v87 = *a8;
            result = v34 ? (*(v87 + 24))(a8, v84, v172, &v169, &v146, &v157, v86) : (*(v87 + 16))(a8, v84, v172, &v169, &v146, v86);
            if (result)
            {
              goto LABEL_13;
            }

            v78 = (8500.0 - v62) / (v145 - v134);
            v66 = v146;
          }

          v32 = *a11;
          v30 = v66 + v141 / 299792458.0 + v161;
          *a11 = v30;
          if (v34)
          {
            if (fabs(v141) <= 0.000000015)
            {
              *(a13 + 32) = 0;
              *a13 = 0u;
              *(a13 + 16) = 0u;
            }

            else
            {
              v120 = v78;
              v122 = v125 / v141;
              v88 = v149;
              v129 = (v42.__cosval * v151 + -v42.__sinval * v150) * 0.0000729211515;
              v140 = v129 - v42.__cosval * v147 - v42.__sinval * v148;
              v126 = (v151 * -v42.__sinval - v42.__cosval * v150) * 0.0000729211515;
              v135 = v126 + v42.__sinval * v147 - v42.__cosval * v148;
              v137 = v42.__sinval * v148 + v42.__cosval * v147;
              v131 = v42.__cosval * v148 + -v42.__sinval * v147;
              IsValid = cnnavigation::GNSSUTCParameters::IsValid(a2);
              v90 = 1.0;
              if (IsValid)
              {
                v91 = a5;
                v92 = v123;
                if (*(a2 + 1) == 1)
                {
                  v90 = 1.0 / (1.0 - *(a2 + 16));
                }
              }

              else
              {
                v91 = a5;
                v92 = v123;
              }

              v93 = v92 / v141;
              v94 = -v88;
              v95 = v133 / v134;
              v96 = v25 / v134;
              v97 = v132 / v134;
              v98 = v127 / v145;
              v99 = v145 - v134;
              v100 = 0.0;
              v101 = 0.0;
              v102 = 0.0;
              v103 = 0.0;
              v104 = 0.0;
              v105 = 0.0;
              v106 = 0.0;
              v107 = v128 / v145;
              v108 = 0.0;
              if (v143)
              {
                if (v91 == 2)
                {
                  v108 = -1.0;
                }

                if (v91 == 1)
                {
                  v108 = 1.0;
                }

                v109 = -(350000.0 - v62) / (v99 * v99);
                v104 = *&v154 + *&v153 * (v95 * v109 * v30);
                v106 = v90 * (*&v153 + *(&v155 + 1) * v137 + *&v156 * v131 + *(&v156 + 1) * v88);
                v105 = v90 * -((v144 + (v107 * v109 * v126 + v98 * v109 * v129) * v30) * (*&v153 + *(&v155 + 1) * v140 + *&v156 * v135 + *(&v156 + 1) * v94));
                v101 = v90 * *(&v153 + 1);
                v103 = *(&v154 + 1) + *&v153 * (v96 * v109 * v30);
                v102 = *&v155 + *&v153 * (v97 * v109 * v30);
              }

              v110 = -v93;
              v111 = v124 / v141 * v135 + v122 * v140 - v93 * v88;
              v112 = v124 / v141 * v131 + v122 * v137 + v93 * v88;
              v113 = 0.0;
              v114 = 0.0;
              v115 = 0.0;
              v116 = 0.0;
              v117 = 0.0;
              if (v77)
              {
                if (a7 == 1)
                {
                  v100 = 1.0;
                }

                v118 = -(8500.0 - v62) / (v99 * v99);
                v113 = v90 * (v157.f64[0] + *v159.i64 * v137 + *&v159.i64[1] * v131 + v160 * v88);
                v114 = v90 * -((v120 + (v107 * v118 * v126 + v98 * v118 * v129) * v30) * (v157.f64[0] + *v159.i64 * v140 + *&v159.i64[1] * v135 + v160 * v94));
                v115 = v157.f64[1] + v157.f64[0] * (v95 * v118 * v30);
                v116 = *v158.i64 + v157.f64[0] * (v96 * v118 * v30);
                v117 = *&v158.i64[1] + v157.f64[0] * (v97 * v118 * v30);
              }

              v119 = 1.0 - (v105 * v108 + v111 * 0.00000000333564095 + v100 * v114);
              *a13 = (v106 * v108 + v112 * 0.00000000333564095 + v100 * v113) / v119;
              *(a13 + 8) = v101 * v108 / v119;
              *(a13 + 16) = (v104 * v108 + -v122 * 0.00000000333564095 + v100 * v115) / v119;
              *(a13 + 24) = (v103 * v108 + -(v124 / v141) * 0.00000000333564095 + v100 * v116) / v119;
              *(a13 + 32) = (v102 * v108 + v110 * 0.00000000333564095 + v100 * v117) / v119;
            }

LABEL_99:
            result = 0;
            goto LABEL_13;
          }

          v26 = v132;
          *a10.i64 = v139;
          if (v139 < 3.33564095e-13)
          {
            goto LABEL_99;
          }

          --v31;
          v16 = a7;
          v23 = a12;
          if (!v31)
          {
            goto LABEL_12;
          }
        }
      }
    }
  }

LABEL_12:
  result = 0xFFFFFFFFLL;
LABEL_13:
  v29 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t cnnavigation::TAITime::ToGPSTime(cnnavigation::TAITime *this, const cnnavigation::GNSSUTCParameters *a2)
{
  v3 = *this / 604800;
  v4 = *(this + 1) + (*this - 604800 * v3) + 561548.816;
  v5 = vcvtmd_s64_f64(v4 / 604800.0);
  v6 = v4 - v5 * 604800.0;
  v7 = v3 + v5 + 1042;
  if (cnnavigation::GNSSUTCParameters::IsValid(a2) && *(a2 + 1) == 1)
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

__n128 sub_1D0BD08B4(uint64_t a1, uint64_t a2)
{
  result.n128_u64[0] = 0x800000001;
  *(a1 + 24) = 0x800000001;
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F4CEC348;
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

  if (v3 >= 9)
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

uint64_t sub_1D0BD09FC(uint64_t *a1, void *a2, double *a3, float64x2_t *a4, uint64_t a5, int8x16_t a6, int8x16_t a7)
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

uint64_t cnnavigation::GNSSCarrierPhase(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, double *a7, int a8, int8x16_t a9, int8x16_t a10, double a11, float64x2_t *a12)
{
  if ((a9.i64[0] < 0 || ((a9.i64[0] & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE) && (a9.i64[0] - 1) > 0xFFFFFFFFFFFFELL)
  {
    return 0xFFFFFFFFLL;
  }

  v67 = v17;
  v68 = v16;
  v69 = v15;
  v70 = v14;
  v71 = v12;
  v72 = v13;
  v27 = *a10.i64;
  for (i = 0; i != 24; i += 8)
  {
    if ((*(a3 + i) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      return 0xFFFFFFFFLL;
    }
  }

  result = 0xFFFFFFFFLL;
  if ((a10.i64[0] & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&a11 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    v54 = a9;
    v65 = 0;
    v66 = 0;
    a9.i64[0] = a10.i64[0];
    *v32.i64 = CNTimeSpan::SetTimeSpan(&v65, 0, a9, a10);
    v64[0] = CNTimeSpan::operator-(a1, &v65, v32, v33);
    v64[1] = v34;
    v62 = 0.0;
    v63 = 0;
    v60 = 0u;
    v61 = 0u;
    if (a8)
    {
      result = cnnavigation::GNSSTimeOfFlight(v64, a2, a3, a4, 2, a5, 1, a6, v54, v35, &v63, 1u, &v60);
      if (result)
      {
        return result;
      }

      v59 = 0.0;
      v38 = *&v63;
      v56 = 0;
      v57 = 0;
      v36.i64[0] = v63;
      *v39.i64 = CNTimeSpan::SetTimeSpan(&v56, 0, v36, v37);
      v65 = CNTimeSpan::operator-(v64, &v56, v39, v40);
      v66 = v41;
      result = (*(*a4 + 96))(a4, &v65, a2, &v59, 1, v58, v54);
    }

    else
    {
      result = cnnavigation::GNSSTimeOfFlight(v64, a2, a3, a4, 2, a5, 1, a6, v54, v35, &v63, 0, &v65);
      if (result)
      {
        return result;
      }

      v59 = 0.0;
      v38 = *&v63;
      v55[0] = 0;
      v55[1] = 0;
      v42.i64[0] = v63;
      *v44.i64 = CNTimeSpan::SetTimeSpan(v55, 0, v42, v43);
      v56 = CNTimeSpan::operator-(v64, v55, v44, v45);
      v57 = v46;
      result = (*(*a4 + 96))(a4, &v56, a2, &v59, 0, &v65, v54);
    }

    if (!result)
    {
      v47 = a11 + v54.n128_f64[0] * (v38 - v59 + v27);
      *a7 = v47;
      if (a8)
      {
        v48 = v58[0];
        v49 = -v58[0];
        v50 = *&v60;
        v51 = v62;
        v52 = v62 * v58[0];
        v53 = (v47 - a11) / v54.n128_f64[0] + v54.n128_f64[0] * *(&v60 + 1) - v54.n128_f64[0] * v58[1];
        a12->f64[0] = v54.n128_f64[0] * *&v60 - v54.n128_f64[0] * (v58[0] - v58[0] * *&v60);
        a12->f64[1] = v53;
        a12[1] = vmlaq_n_f64(vmulq_n_f64(vmulq_n_f64(v61, v49), -v54.n128_f64[0]), v61, v54.n128_f64[0]);
        a12[2].f64[0] = v52 * v54.n128_f64[0] + v54.n128_f64[0] * v51;
        a12[2].f64[1] = v48 * v54.n128_f64[0] - v54.n128_f64[0] * v50 + v54.n128_f64[0];
      }
    }
  }

  return result;
}

uint64_t sub_1D0BD1400@<X0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X8>)
{
  if (a1 < 0)
  {
    __assert_rtn("Zeros", "cnmatrix.h", 3133, "nr >= 0");
  }

  *(a3 + 24) = 0x800000001;
  *a3 = &unk_1F4CEC348;
  *(a3 + 32) = a3 + 40;
  *(a3 + 8) = a1;
  *(a3 + 12) = a2;
  *(a3 + 16) = a2 * a1;
  *(a3 + 20) = a1;

  return sub_1D0BBBC00(a3, 0.0);
}

uint64_t sub_1D0BD1484@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 24) = 0x800000001;
  *a3 = &unk_1F4CEC348;
  *(a3 + 8) = xmmword_1D0E9CBE0;
  *(a3 + 32) = a3 + 40;
  return sub_1D0B89390(a1, a2, a3);
}

double sub_1D0BD1508@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 24) = 0x800000001;
  *a3 = &unk_1F4CEC348;
  *(a3 + 8) = xmmword_1D0E9CBE0;
  *(a3 + 32) = a3 + 40;
  *&result = *&sub_1D0BA5A78(a1, a2, a3);
  return result;
}

double sub_1D0BD154C(unint64_t a1, double *a2, uint64_t a3, uint64_t a4, char a5, double result)
{
LABEL_1:
  v10 = a2 - 1;
  v87 = a2 - 3;
  v11 = a2 - 5;
  v12 = a1;
LABEL_2:
  v13 = 1 - a4;
  while (1)
  {
    a1 = v12;
    v14 = v13;
    v15 = (a2 - v12) >> 4;
    if (v15 <= 2)
    {
      if (v15 < 2)
      {
        return result;
      }

      if (v15 == 2)
      {
        result = *(a2 - 1);
        if (result < *(v12 + 8))
        {
          v83 = *v12;
          *v12 = *(a2 - 2);
          *(a2 - 2) = v83;
          result = *(v12 + 8);
          *(v12 + 8) = *(a2 - 1);
          *(a2 - 1) = result;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v15 == 3)
    {
      v69 = (v12 + 24);
      v70 = *(v12 + 24);
      v71 = (v12 + 8);
      v72 = *(v12 + 8);
      v73 = *(a2 - 1);
      if (v70 >= v72)
      {
        if (v73 >= v70)
        {
          return result;
        }

        v84 = *(v12 + 16);
        *(v12 + 16) = *(a2 - 2);
        *(a2 - 2) = v84;
        v85 = *(v12 + 24);
        *(v12 + 24) = *(a2 - 1);
        *(a2 - 1) = v85;
        result = *(v12 + 24);
        if (result >= *(v12 + 8))
        {
          return result;
        }

        v86 = *v12;
        *v12 = *(v12 + 16);
        *(v12 + 16) = v86;
      }

      else
      {
        result = *v12;
        if (v73 >= v70)
        {
          *v12 = *(v12 + 16);
          *(v12 + 8) = v70;
          *(v12 + 16) = result;
          *(v12 + 24) = v72;
          if (*(a2 - 1) >= v72)
          {
            return result;
          }

          *(v12 + 16) = *(a2 - 2);
          *(a2 - 2) = result;
          v71 = (v12 + 24);
        }

        else
        {
          *v12 = *(a2 - 2);
          *(a2 - 2) = result;
        }

        v69 = a2 - 1;
      }

      result = *v71;
      *v71 = *v69;
      *v69 = result;
      return result;
    }

    if (v15 == 4)
    {
      break;
    }

    if (v15 == 5)
    {
      sub_1D0BD1E18(v12, (v12 + 16), (v12 + 32), (v12 + 48));
      result = *(a2 - 1);
      if (result < *(v12 + 56))
      {
        v74 = *(v12 + 48);
        *(v12 + 48) = *(a2 - 2);
        *(a2 - 2) = v74;
        v75 = *(v12 + 56);
        *(v12 + 56) = *(a2 - 1);
        *(a2 - 1) = v75;
        result = *(v12 + 56);
        v76 = *(v12 + 40);
        if (result < v76)
        {
          v77 = *(v12 + 48);
          v78 = *(v12 + 24);
          v79 = *(v12 + 32);
          *(v12 + 32) = v77;
          *(v12 + 40) = result;
          *(v12 + 48) = v79;
          *(v12 + 56) = v76;
          if (result < v78)
          {
            v80 = *(v12 + 8);
            v81 = *(v12 + 16);
            *(v12 + 16) = v77;
            *(v12 + 24) = result;
            *(v12 + 32) = v81;
            *(v12 + 40) = v78;
            if (result < v80)
            {
              v82 = *v12;
              *v12 = v77;
              *(v12 + 8) = result;
              *(v12 + 16) = v82;
              *(v12 + 24) = v80;
            }
          }
        }
      }

      return result;
    }

LABEL_10:
    if (v15 <= 23)
    {
      if (a5)
      {

        sub_1D0BC437C(v12, a2);
      }

      else
      {

        sub_1D0C4DFE4(v12, a2);
      }

      return result;
    }

    if (v13 == 1)
    {
      if (v12 != a2)
      {

        sub_1D0DCDEB8(v12, a2, a2, a3);
      }

      return result;
    }

    v16 = v12 + 16 * (v15 >> 1);
    v17 = *v10;
    if (v15 < 0x81)
    {
      v23 = (v12 + 8);
      v24 = *(v12 + 8);
      v25 = (v16 + 8);
      v26 = *(v16 + 8);
      if (v24 >= v26)
      {
        if (v17 < v24)
        {
          v32 = *v12;
          *v12 = *(a2 - 2);
          *(a2 - 2) = v32;
          v33 = *(v12 + 8);
          *(v12 + 8) = *(a2 - 1);
          *(a2 - 1) = v33;
          if (*(v12 + 8) < *v25)
          {
            v34 = *v16;
            *v16 = *v12;
            *v12 = v34;
            goto LABEL_38;
          }
        }
      }

      else
      {
        v27 = *v16;
        if (v17 < v24)
        {
          *v16 = *(a2 - 2);
          *(a2 - 2) = v27;
          goto LABEL_37;
        }

        *v16 = *v12;
        *(v16 + 8) = v24;
        *v12 = v27;
        *(v12 + 8) = v26;
        if (*v10 < v26)
        {
          *v12 = *(a2 - 2);
          *(a2 - 2) = v27;
          v25 = (v12 + 8);
LABEL_37:
          v23 = a2 - 1;
LABEL_38:
          v47 = *v25;
          *v25 = *v23;
          *v23 = v47;
        }
      }

      if (a5)
      {
        goto LABEL_67;
      }

      goto LABEL_66;
    }

    v18 = (v16 + 8);
    v19 = *(v16 + 8);
    v20 = (v12 + 8);
    v21 = *(v12 + 8);
    if (v19 < v21)
    {
      v22 = *v12;
      if (v17 >= v19)
      {
        *v12 = *v16;
        *(v12 + 8) = v19;
        *v16 = v22;
        *(v16 + 8) = v21;
        if (*v10 >= v21)
        {
          goto LABEL_29;
        }

        *v16 = *(a2 - 2);
        *(a2 - 2) = v22;
        v20 = (v16 + 8);
      }

      else
      {
        *v12 = *(a2 - 2);
        *(a2 - 2) = v22;
      }

      v31 = a2 - 1;
      goto LABEL_28;
    }

    if (v17 < v19)
    {
      v28 = *v16;
      *v16 = *(a2 - 2);
      *(a2 - 2) = v28;
      v29 = *(v16 + 8);
      *(v16 + 8) = *(a2 - 1);
      *(a2 - 1) = v29;
      if (*(v16 + 8) < *v20)
      {
        v30 = *v12;
        *v12 = *v16;
        *v16 = v30;
        v31 = (v16 + 8);
LABEL_28:
        v35 = *v20;
        *v20 = *v31;
        *v31 = v35;
      }
    }

LABEL_29:
    v36 = (v16 - 8);
    v37 = *(v16 - 8);
    v38 = (v16 - 16);
    v39 = (v12 + 24);
    v40 = *(v12 + 24);
    v41 = *v87;
    if (v37 < v40)
    {
      v42 = *(v12 + 16);
      if (v41 >= v37)
      {
        *(v12 + 16) = *v38;
        *(v12 + 24) = v37;
        *v38 = v42;
        *(v16 - 8) = v40;
        if (*v87 >= v40)
        {
          goto LABEL_45;
        }

        *v38 = *(a2 - 4);
        *(a2 - 4) = v42;
        v39 = (v16 - 8);
      }

      else
      {
        *(v12 + 16) = *(a2 - 4);
        *(a2 - 4) = v42;
      }

      v46 = a2 - 3;
      goto LABEL_44;
    }

    if (v41 < v37)
    {
      v43 = *v38;
      *v38 = *(a2 - 4);
      *(a2 - 4) = v43;
      v44 = *(v16 - 8);
      *(v16 - 8) = *(a2 - 3);
      *(a2 - 3) = v44;
      if (*(v16 - 8) < *v39)
      {
        v45 = *(v12 + 16);
        *(v12 + 16) = *v38;
        *v38 = v45;
        v46 = (v16 - 8);
LABEL_44:
        v48 = *v39;
        *v39 = *v46;
        *v46 = v48;
      }
    }

LABEL_45:
    v49 = *(v16 + 24);
    v50 = (v16 + 16);
    v51 = (v12 + 40);
    v52 = *(v12 + 40);
    v53 = *v11;
    if (v49 < v52)
    {
      v54 = *(v12 + 32);
      if (v53 >= v49)
      {
        *(v12 + 32) = *v50;
        *(v12 + 40) = v49;
        *v50 = v54;
        *(v16 + 24) = v52;
        v49 = v52;
        if (*v11 >= v52)
        {
          goto LABEL_55;
        }

        *v50 = *(a2 - 6);
        *(a2 - 6) = v54;
        v51 = (v16 + 24);
      }

      else
      {
        *(v12 + 32) = *(a2 - 6);
        *(a2 - 6) = v54;
      }

      v58 = a2 - 5;
      goto LABEL_54;
    }

    if (v53 < v49)
    {
      v55 = *v50;
      *v50 = *(a2 - 6);
      *(a2 - 6) = v55;
      v56 = *(v16 + 24);
      *(v16 + 24) = *(a2 - 5);
      *(a2 - 5) = v56;
      v49 = *(v16 + 24);
      if (v49 < *v51)
      {
        v57 = *(v12 + 32);
        *(v12 + 32) = *v50;
        *v50 = v57;
        v58 = (v16 + 24);
LABEL_54:
        v59 = *v51;
        *v51 = *v58;
        *v58 = v59;
        v49 = *(v16 + 24);
      }
    }

LABEL_55:
    v60 = *v18;
    v61 = *v36;
    if (*v18 >= *v36)
    {
      v62 = *v16;
      if (v49 >= v60)
      {
        goto LABEL_65;
      }

      v63 = *v50;
      *v16 = *v50;
      *(v16 + 8) = v49;
      *v50 = v62;
      *(v16 + 24) = v60;
      if (v49 < v61)
      {
        v64 = *v38;
        *v38 = v63;
        *v16 = v64;
LABEL_64:
        *v36 = v49;
        *v18 = v61;
        v62 = *v16;
        v60 = *(v16 + 8);
        goto LABEL_65;
      }

      v60 = v49;
      v62 = v63;
    }

    else
    {
      v62 = *v38;
      if (v49 < v60)
      {
        *v38 = *v50;
        *v50 = v62;
LABEL_63:
        v18 = (v16 + 24);
        goto LABEL_64;
      }

      *v38 = *v16;
      *(v16 - 8) = v60;
      *v16 = v62;
      *(v16 + 8) = v61;
      if (v49 < v61)
      {
        *v16 = *v50;
        *v50 = v62;
        v36 = (v16 + 8);
        goto LABEL_63;
      }

      v60 = v61;
    }

LABEL_65:
    v65 = *v12;
    *v12 = v62;
    *(v12 + 8) = v60;
    *v16 = v65;
    if (a5)
    {
      goto LABEL_67;
    }

LABEL_66:
    if (*(v12 - 8) >= *(v12 + 8))
    {
      v12 = sub_1D0DCDA94(v12, a2);
      goto LABEL_75;
    }

LABEL_67:
    v66 = sub_1D0BD1D30(v12, a2);
    if ((v67 & 1) == 0)
    {
      goto LABEL_73;
    }

    v68 = sub_1D0DCDB7C(v12, v66);
    v12 = v66 + 16;
    if (sub_1D0DCDB7C(v66 + 16, a2))
    {
      a4 = -v14;
      a2 = v66;
      if (v68)
      {
        return result;
      }

      goto LABEL_1;
    }

    v13 = v14 + 1;
    if (!v68)
    {
LABEL_73:
      sub_1D0BD154C(a1, v66, a3, -v14, a5 & 1);
      v12 = v66 + 16;
LABEL_75:
      a5 = 0;
      a4 = -v14;
      goto LABEL_2;
    }
  }

  return sub_1D0BD1E18(v12, (v12 + 16), (v12 + 32), a2 - 2);
}

unint64_t sub_1D0BD1D30(double *a1, double *a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = a1[1];
  do
  {
    v5 = a1[v2 + 3];
    v2 += 2;
  }

  while (v5 < v4);
  v6 = &a1[v2];
  if (v2 == 2)
  {
    while (v6 < a2)
    {
      v7 = a2 - 2;
      v9 = *(a2 - 1);
      a2 -= 2;
      if (v9 < v4)
      {
        goto LABEL_9;
      }
    }

    v7 = a2;
  }

  else
  {
    do
    {
      v7 = a2 - 2;
      v8 = *(a2 - 1);
      a2 -= 2;
    }

    while (v8 >= v4);
  }

LABEL_9:
  v10 = &a1[v2];
  if (v6 < v7)
  {
    v11 = v7;
    do
    {
      v12 = *v10;
      *v10 = *v11;
      *v11 = v12;
      v13 = *(v10 + 8);
      *(v10 + 8) = v11[1];
      *(v11 + 1) = v13;
      do
      {
        v14 = *(v10 + 24);
        v10 += 16;
      }

      while (v14 < v4);
      do
      {
        v15 = *(v11 - 1);
        v11 -= 2;
      }

      while (v15 >= v4);
    }

    while (v10 < v11);
  }

  if ((v10 - 16) != a1)
  {
    *a1 = *(v10 - 16);
    a1[1] = *(v10 - 8);
  }

  *(v10 - 16) = v3;
  *(v10 - 8) = v4;
  return v10 - 16;
}

double sub_1D0BD1E18(double *a1, double *a2, double *a3, double *a4)
{
  v4 = a2[1];
  v5 = a1 + 1;
  v6 = a3 + 1;
  result = a3[1];
  if (v4 >= a1[1])
  {
    if (result < v4)
    {
      v10 = *a2;
      *a2 = *a3;
      *a3 = v10;
      result = a2[1];
      a2[1] = a3[1];
      a3[1] = result;
      if (a2[1] < *v5)
      {
        v11 = *a1;
        *a1 = *a2;
        *a2 = v11;
        v9 = (a1 + 1);
        v12 = (a2 + 1);
LABEL_10:
        v15 = *v9;
        *v9 = *v12;
        *v12 = v15;
        result = *v6;
      }
    }
  }

  else
  {
    v8 = *a1;
    if (result < v4)
    {
      *a1 = *a3;
      *a3 = v8;
      v9 = (a1 + 1);
LABEL_9:
      v12 = (a3 + 1);
      goto LABEL_10;
    }

    *a1 = *a2;
    *a2 = v8;
    v13 = a1[1];
    a1[1] = a2[1];
    a2[1] = v13;
    result = *v6;
    if (*v6 < v13)
    {
      v14 = *a2;
      *a2 = *a3;
      *a3 = v14;
      v9 = (a2 + 1);
      goto LABEL_9;
    }
  }

  if (a4[1] < result)
  {
    v16 = *a3;
    *a3 = *a4;
    *a4 = v16;
    v17 = *(a3 + 1);
    a3[1] = a4[1];
    *(a4 + 1) = v17;
    result = a3[1];
    if (result < a2[1])
    {
      v18 = *a2;
      *a2 = *a3;
      *a3 = v18;
      v19 = *(a2 + 1);
      a2[1] = a3[1];
      *(a3 + 1) = v19;
      result = a2[1];
      if (result < *v5)
      {
        v20 = *a1;
        *a1 = *a2;
        *a2 = v20;
        result = a1[1];
        a1[1] = a2[1];
        a2[1] = result;
      }
    }
  }

  return result;
}

void *raven::RavenSequentialGNSSMeasurementSelector::ProcessMSRDataContainer(uint64_t a1, uint64_t *a2)
{
  result = raven::RavenSequentialGNSSMeasurementSelector::TestInnovationsAndUpdateEstimator(a1, a2, *(*(a1 + 192) + 2104), v5);
  if (v6 == 1)
  {
    result = raven::RavenSequentialGNSSMeasurementSelector::ReTestInnovationsAndUpdateEstimator(a1, v5, a2);
    if (v6)
    {
      return sub_1D0BCC0B4(v5);
    }
  }

  return result;
}

void sub_1D0BD1FF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (a12 == 1)
  {
    sub_1D0BCC0B4(&a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0BD2018(uint64_t result, uint64_t a2)
{
  v3 = *(result + 8);
  v2 = *(result + 12);
  *(a2 + 8) = v2;
  *(a2 + 12) = v3;
  *(a2 + 16) = v3 * v2;
  *(a2 + 20) = v2;
  if (v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = *(result + 20);
    v7 = *(result + 32);
    v8 = *(a2 + 32);
    do
    {
      v9 = v4;
      v10 = v5;
      for (i = v3; i; --i)
      {
        *(v8 + 8 * v10) = *(v7 + 8 * v9);
        v10 += v2;
        ++v9;
      }

      ++v5;
      v4 += v6;
    }

    while (v5 != v2);
  }

  return result;
}

uint64_t raven::RavenSequentialGNSSMeasurementSelector::UpdateTIVsForMeasurement(uint64_t result, uint64_t a2)
{
  if (*(a2 + 168) == 1 && *(*(a2 + 8) + 96) == 1)
  {
    v2 = *(a2 + 16);
    v3 = *(result + 1256);
    if (!v3)
    {
LABEL_14:
      operator new();
    }

    v4 = *(a2 + 24);
    while (1)
    {
      while (1)
      {
        v5 = v3;
        v6 = *(v3 + 32);
        v7 = v5[5];
        v8 = v7 > v4;
        if (v6 != v2)
        {
          v8 = v6 > v2;
        }

        if (!v8)
        {
          break;
        }

        v3 = *v5;
        if (!*v5)
        {
          goto LABEL_14;
        }
      }

      v9 = v7 < v4;
      v10 = v6 == v2;
      v11 = v6 < v2;
      if (v10)
      {
        v11 = v9;
      }

      if (!v11)
      {
        break;
      }

      v3 = v5[1];
      if (!v3)
      {
        goto LABEL_14;
      }
    }

    v5[6] = *(a2 + 152);
  }

  return result;
}

uint64_t raven::RavenSequentialGNSSMeasurementSelector::DetermineAndSetInnovationTestResult(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v10 = a4;
  v11 = a3;
  result = raven::RavenSequentialGNSSMeasurementSelector::TestInnovation(a1, a2, &v11, &v10);
  if (*(a2 + 184))
  {
    if ((result - 1) < 2)
    {
      *(a2 + 176) = result;
      return result;
    }

    if ((result - 4) >= 2)
    {
      v8 = 0x500000002;
      goto LABEL_17;
    }

    v7 = *(*(a2 + 8) + 96) - 1;
    if (v7 <= 2 && fabs(*(a2 + 152)) > *(*(a1 + 192) + qword_1D0EA3E40[v7]))
    {
      v8 = 0x400000002;
LABEL_17:
      *(a2 + 176) = v8;
      return result;
    }

    *(a2 + 176) = 4;
    if (result == 5)
    {
      v9 = 9;
LABEL_15:
      *(a2 + 180) = v9;
      return result;
    }

LABEL_13:
    v9 = 8;
    goto LABEL_15;
  }

  *(a2 + 176) = result;
  if (result == 3)
  {
    v9 = 6;
    goto LABEL_15;
  }

  if (result == 4)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t raven::RavenSequentialGNSSMeasurementSelector::TestInnovation(uint64_t a1, uint64_t a2, double *a3, double *a4)
{
  if ((*(a2 + 168) & 1) == 0)
  {
    v32 = 12;
    v31 = 4;
    v11 = sub_1D0BCFAB8(*a2);
    v12 = *(*(a2 + 8) + 96) - 1;
    if (v12 > 4)
    {
      v13 = "UnknownType";
    }

    else
    {
      v13 = off_1E83D8358[v12];
    }

    cnprint::CNLogFormatter::FormatGeneral(a1 + 208, a1 + 96, "#MSR %s %s innovation data missing during testing", v11, v13);
    if (*(a1 + 231) >= 0)
    {
      LOBYTE(v22) = a1 - 48;
    }

    else
    {
      v22 = *(a1 + 208);
    }

    cnprint::CNPrinter::Print(&v32, &v31, "%s", v17, v18, v19, v20, v21, v22);
    return 1;
  }

  if ((*(a2 + 152) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || ((v6 = *(a2 + 160), v6 > -1) ? (v7 = ((v6 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) : (v7 = 1), v7 ? (v8 = (v6 - 1) >= 0xFFFFFFFFFFFFFLL) : (v8 = 0), v8))
  {
    v30 = 12;
    v29 = 4;
    v14 = sub_1D0BCFAB8(*a2);
    v15 = *(*(a2 + 8) + 96) - 1;
    if (v15 > 4)
    {
      v16 = "UnknownType";
    }

    else
    {
      v16 = off_1E83D8358[v15];
    }

    cnprint::CNLogFormatter::FormatGeneral(a1 + 208, a1 + 96, "#MSR %s %s innovation data invalid during testing", v14, v16);
    if (*(a1 + 231) >= 0)
    {
      LOBYTE(v28) = a1 - 48;
    }

    else
    {
      v28 = *(a1 + 208);
    }

    cnprint::CNPrinter::Print(&v30, &v29, "%s", v23, v24, v25, v26, v27, v28);
    return 1;
  }

  v9 = fabs(*(a2 + 152)) / sqrt(*(a2 + 160) + (*(*(a2 + 8) + 168) * *(*(a2 + 8) + 168)));
  if (v9 > fabs(*a3))
  {
    return 3;
  }

  if (v9 <= fabs(*a4))
  {
    return 5;
  }

  return 4;
}

uint64_t *raven::RavenSequentialGNSSMeasurementSelector::UpdateITRsForMeasurement(uint64_t *result, uint64_t a2)
{
  v2 = *(*(a2 + 8) + 96);
  if ((v2 - 2) >= 3)
  {
    if (v2 != 1)
    {
      return result;
    }

    v3 = *(a2 + 176);
    v4 = *(a2 + 16);
    v5 = *(a2 + 24);
    v6 = (result + 153);
  }

  else
  {
    v3 = *(a2 + 176);
    v4 = *(a2 + 16);
    v5 = *(a2 + 24);
    v6 = (result + 150);
  }

  result = sub_1D0BD2524(v6, v4, v5);
  *(result + 12) = v3;
  return result;
}

uint64_t *sub_1D0BD2524(uint64_t a1, int a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
LABEL_11:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v3;
      v5 = *(v3 + 32);
      v6 = v4[5];
      v7 = v6 > a3;
      if (v5 != a2)
      {
        v7 = v5 > a2;
      }

      if (!v7)
      {
        break;
      }

      v3 = *v4;
      if (!*v4)
      {
        goto LABEL_11;
      }
    }

    v8 = v6 < a3;
    v9 = v5 == a2;
    v10 = v5 < a2;
    if (v9)
    {
      v10 = v8;
    }

    if (!v10)
    {
      return v4;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_11;
    }
  }
}

uint64_t sub_1D0BD2638(uint64_t a1, int a2, uint64_t a3)
{
  v5 = *(a1 + 8);
  v3 = a1 + 8;
  v4 = v5;
  if (!v5)
  {
    return v3;
  }

  v6 = v3;
  do
  {
    v7 = *(v4 + 32);
    v9 = v7 == a2;
    v8 = v7 < a2;
    if (v9)
    {
      v8 = *(v4 + 40) < a3;
    }

    v9 = !v8;
    if (v8)
    {
      v10 = 8;
    }

    else
    {
      v10 = 0;
    }

    if (v9)
    {
      v6 = v4;
    }

    v4 = *(v4 + v10);
  }

  while (v4);
  if (v6 == v3)
  {
    return v3;
  }

  v11 = *(v6 + 32);
  v9 = v11 == a2;
  v12 = v11 > a2;
  if (v9)
  {
    v12 = *(v6 + 40) > a3;
  }

  if (v12)
  {
    return v3;
  }

  return v6;
}

uint64_t *raven::RavenSequentialGNSSMeasurementSelector::Count_L1_L5_PseudorangesWithSimilarITRAndPostFilter_L1_vs_L5_Measurements(uint64_t *result, uint64_t a2)
{
  result[305] = 0;
  v2 = *(a2 + 8);
  if (v2 != a2)
  {
    v4 = result;
    while (1)
    {
      v5 = v2;
      v6 = v2 + 16;
      v7 = *(v2 + 16);
      v2 = *(v2 + 8);
      v8 = *(v7 + 24);
      if ((v8 - 3) < 4 || v8 == 1)
      {
        v10 = *(v5 + 192);
        if (v10 >= 3)
        {
          if (v10 == 3)
          {
            v11 = *(v5 + 24);
            if (*(v11 + 96) != 1)
            {
              goto LABEL_9;
            }

            v12 = 1;
          }

          else
          {
            v11 = *(v5 + 24);
            v12 = *(v11 + 96);
          }

          v13 = *(v11 + 100) - 2 > 8 ? 2 : byte_1D0EA3E63[(*(v11 + 100) - 2)];
          if (v2 != a2)
          {
            break;
          }
        }
      }

LABEL_9:
      if (v2 == a2)
      {
        return result;
      }
    }

    v14 = v12 - 2;
    if ((v12 - 2) < 3)
    {
      v12 = 2;
    }

    v15 = v2;
    while (1)
    {
      v16 = *(v15 + 192);
      if (v16 < 3 || v16 == 3 && *(*(v15 + 24) + 96) != 1)
      {
        goto LABEL_23;
      }

      v17 = *(v15 + 16);
      if (*(v17 + 24) != v8 || *(v17 + 28) != *(v7 + 28))
      {
        goto LABEL_23;
      }

      v18 = *(v15 + 24);
      v19 = *(v18 + 96);
      result = (v19 - 2);
      if (result < 3)
      {
        v19 = 2;
      }

      if (v19 != v12)
      {
        goto LABEL_23;
      }

      result = *(v18 + 100);
      v20 = 1;
      if (result <= 0xA)
      {
        if (((1 << result) & 0x544) != 0)
        {
          v20 = 2;
        }

        else if (!*(v18 + 100))
        {
          goto LABEL_23;
        }
      }

      if (v20 == v13)
      {
        if (v10 == 3 || v16 == 3)
        {
          if (v10 == 3 && v16 == 3)
          {
            ++*(v4 + 611);
          }
        }

        else if ((*(v11 + 120) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && *(v5 + 160) == 1 && (*(v18 + 120) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && *(v15 + 160) == 1)
        {
          v21 = v4[24];
          if (v14 >= 3)
          {
            v22 = 2112;
          }

          else
          {
            v22 = 2120;
          }

          if (*(v21 + 3809) == 1 && (v23 = *(v11 + 120) - *(v5 + 48), v24 = *(v18 + 120) - *(v15 + 48), v25 = *(v21 + v22), vabdd_f64(v24, v23) > v25))
          {
            v26 = v25 * *(v21 + 2128);
            v27 = fabs(v24);
            v28 = fabs(v23);
            if (v27 <= v26 && v28 > v25)
            {
              *(v5 + 192) = 0x700000003;
              goto LABEL_70;
            }

            if (v27 <= v25 || v28 > v26)
            {
              *(v5 + 192) = 0x700000003;
              *(v15 + 192) = 0x700000003;
              raven::RavenSequentialGNSSMeasurementSelector::UpdateITRsForMeasurement(v4, v6);
            }

            else
            {
              *(v15 + 192) = 0x700000003;
            }

LABEL_69:
            v6 = v15 + 16;
LABEL_70:
            result = raven::RavenSequentialGNSSMeasurementSelector::UpdateITRsForMeasurement(v4, v6);
            v11 = *(v5 + 24);
          }

          else if (*(v21 + 3810) == 1 && *(v5 + 216) == 1 && *(v15 + 216) == 1)
          {
            v31 = *(v15 + 208);
            v32 = *(v4 + 149);
            v33 = *(v5 + 208);
            if (v31 > v32 * v33)
            {
              *(v15 + 192) = 0x300000002;
              goto LABEL_69;
            }

            if (v33 > v31 * v32)
            {
              *(v5 + 192) = 0x300000002;
              goto LABEL_70;
            }
          }

          if (*(v11 + 96) == 1 && (*(v5 + 192) & 0xFFFFFFFE) == 4 && (*(v15 + 192) & 0xFFFFFFFE) == 4)
          {
            ++*(v4 + 610);
          }

          goto LABEL_9;
        }
      }

LABEL_23:
      v15 = *(v15 + 8);
      if (v15 == a2)
      {
        goto LABEL_9;
      }
    }
  }

  return result;
}

void raven::RavenSequentialGNSSMeasurementSelector::ReduceNumberOfLowPLOSMeasurementsForL5SupportingHardware(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != a2)
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = *(a2 + 8);
    do
    {
      v7 = v6;
      v6 = *(v6 + 8);
      if ((*(v7 + 192) & 0xFFFFFFFE) == 4)
      {
        v8 = *(v7 + 24);
        v9 = *(v8 + 96);
        if (*(v7 + 200))
        {
          if (v9 == 4)
          {
            ++v5;
          }

          v10 = *(v7 + 16);
          v11 = *(v10 + 24);
          if ((v11 - 3) < 4 || v11 == 1)
          {
            v13 = *(v8 + 100);
            v14 = v13 - 2 > 8 ? 2 : byte_1D0EA3E63[(v13 - 2)];
            if (v6 != a2)
            {
              if ((v9 - 2) >= 3)
              {
                v15 = v9;
              }

              else
              {
                v15 = 2;
              }

              if (v9 == 4)
              {
                v16 = -1;
              }

              else
              {
                v16 = 0;
              }

              v17 = v6;
              do
              {
                v18 = *(v17 + 16);
                if (*(v18 + 24) == v11 && *(v18 + 28) == *(v10 + 28) && *(v17 + 200) == 1 && (*(v17 + 192) & 0xFFFFFFFE) == 4)
                {
                  v19 = *(v17 + 24);
                  v20 = *(v19 + 100);
                  v21 = 1;
                  if (v20 > 0xA)
                  {
                    goto LABEL_33;
                  }

                  if (((1 << v20) & 0x544) != 0)
                  {
                    v21 = 2;
LABEL_33:
                    if (v21 == v14)
                    {
                      v22 = *(v19 + 96);
                      if ((v22 - 2) < 3)
                      {
                        v22 = 2;
                      }

                      if (v22 == v15)
                      {
                        if (*(v7 + 200) == 1 && (v13 > 9 || ((1 << v13) & 0x2BB) == 0))
                        {
                          *(v17 + 192) = 0x100000002;
                          *(v17 + 200) = 0;
                        }

                        else
                        {
                          v23 = v20 > 9;
                          v24 = (1 << v20) & 0x2BB;
                          if (v23 || v24 == 0)
                          {
                            *(v7 + 192) = 0x100000002;
                            *(v7 + 200) = 0;
                            v5 += v16;
                          }
                        }
                      }
                    }

                    goto LABEL_47;
                  }

                  if (*(v19 + 100))
                  {
                    goto LABEL_33;
                  }
                }

LABEL_47:
                v17 = *(v17 + 8);
              }

              while (v17 != a2);
            }
          }
        }

        else if (v9 == 1)
        {
          ++v3;
        }

        else
        {
          ++v4;
        }
      }
    }

    while (v6 != a2);
    v26 = 0;
    v27 = 0;
    v28 = 0;
    do
    {
      if (*(v2 + 200) != 1 || (*(v2 + 192) & 0xFFFFFFFE) != 4)
      {
        goto LABEL_66;
      }

      v29 = *(*(v2 + 24) + 96);
      if ((v29 - 2) < 2)
      {
        if ((++v28 + v5) <= 4 && (v28 + v5 + v4) < 0xB)
        {
          goto LABEL_66;
        }

LABEL_65:
        *(v2 + 192) = 0x100000002;
        *(v2 + 200) = 0;
        goto LABEL_66;
      }

      if (v29 == 4)
      {
        if (++v27 > 4)
        {
          goto LABEL_65;
        }

        v30 = v27 + v4;
      }

      else
      {
        if (v29 != 1)
        {
          goto LABEL_66;
        }

        if (++v26 > 4)
        {
          goto LABEL_65;
        }

        v30 = v26 + v3;
      }

      if (v30 > 0xA)
      {
        goto LABEL_65;
      }

LABEL_66:
      v2 = *(v2 + 8);
    }

    while (v2 != a2);
  }
}

uint64_t sub_1D0BD2CA4(uint64_t a1, float64_t a2, float64_t a3, double a4)
{
  *(a1 + 8) = 0;
  *(a1 + 40) = 0x300000003;
  *(a1 + 16) = &unk_1F4CD5DD0;
  *(a1 + 24) = xmmword_1D0E76C10;
  *(a1 + 48) = a1 + 56;
  *a1 = &unk_1F4CD5D50;
  sub_1D0B9F2DC(a1, a2, a3, a4);
  return a1;
}

void sub_1D0BD2D28(_Unwind_Exception *a1)
{
  *v1 = &unk_1F4CD5D18;
  v1[2] = &unk_1F4CD5E28;
  _Unwind_Resume(a1);
}

uint64_t sub_1D0BD2D64(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_1D0BDFDC8(v2 + 24);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_1D0BD2DB0(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_1D0BCB594(v2 + 24);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t *sub_1D0BD2DFC(void *a1, int a2)
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
      v4 = a2 % v2;
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
      if (*(result + 4) == a2)
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

void *sub_1D0BD2EB0(void *result, int a2)
{
  v2 = result[1];
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
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*result + 8 * v4);
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

  if (*(v6 + 4) != a2)
  {
    goto LABEL_17;
  }

  return result;
}

void sub_1D0BD30CC(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
LABEL_6:
    if (!(prime >> 61))
    {
      operator new();
    }

    sub_1D0C54BE8();
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
      if (prime)
      {
        goto LABEL_6;
      }

      v8 = *a1;
      *a1 = 0;
      if (v8)
      {
        operator delete(v8);
      }

      *(a1 + 8) = 0;
    }
  }
}

uint64_t *sub_1D0BD32D0(void *a1, int a2)
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
      v4 = a2 % v2;
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

  if (*(v6 + 4) != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

uint64_t raven::RavenSequentialGNSSMeasurementSelector::LogEpochFooter(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(result + 1))
  {
    v3 = result;
    if (*(result + 1506))
    {
      raven::RavenSequentialGNSSMeasurementSelector::LogPVT(result, 1, a3);
      if (*(*(v3 + 192) + 3770) == 1)
      {
        raven::RavenSequentialGNSSMeasurementSelector::LogPLOSBasedUsableMeasurementCount(v3, a2);
      }

      sub_1D0BCD7C4((v3 + 1512), "\n", 1);

      return std::ostream::flush();
    }
  }

  return result;
}

uint64_t *sub_1D0BD3584(void *a1, int *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v2 <= v3)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (*(result + 4) == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_1D0BD3838(_Unwind_Exception *a1)
{
  sub_1D0D840AC(v1 + 56);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void *sub_1D0BD3890(int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      sub_1D0BCA1D4(a3, a2[1]);
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
    *a3 = sub_1D0BD3890;
    a3[1] = v9;
    goto LABEL_9;
  }

  if (a1 != 3)
  {
    return &unk_1F4CEC300;
  }

  if (a4)
  {
    v6 = sub_1D0B7CA64(a4, &unk_1F4CEC300);
  }

  else
  {
    v6 = a5 == &std::__any_imp::__unique_typeinfo<raven::h_GnssAverageDopplerArgs_RavenConvergence>::__id;
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

void raven::RavenSequentialGNSSMeasurementSelector::StringOfL1MeasurementCountsByConstellation(raven::RavenSequentialGNSSMeasurementSelector *this@<X0>, _BYTE *a2@<X8>)
{
  sub_1D0B751F4(__p, "L1");
  raven::RavenSequentialGNSSMeasurementSelector::StringOfMeasurementCountsByConstellationForFrequency(__p, this + 168, a2);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1D0BD39D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t raven::RavenSequentialGNSSMeasurementSelector::StringOfMeasurementCountsByConstellationForFrequency@<X0>(uint64_t a1@<X1>, void *a2@<X2>, _BYTE *a3@<X8>)
{
  sub_1D0BC2944(&v73);
  v5 = sub_1D0BCD7C4(&v73, "#MSR GNSS measurement counts by constellation,", 46);
  v6 = *(a1 + 23);
  if (v6 >= 0)
  {
    v7 = a1;
  }

  else
  {
    v7 = *a1;
  }

  if (v6 >= 0)
  {
    v8 = *(a1 + 23);
  }

  else
  {
    v8 = *(a1 + 8);
  }

  v9 = sub_1D0BCD7C4(v5, v7, v8);
  v10 = sub_1D0BCD7C4(v9, ",(type,used,rejected)", 21);
  v11 = 0;
  v53 = a2;
  do
  {
    v12 = a2[1];
    v13 = byte_1D0EA3DE8[v11];
    if (!*&v12)
    {
      goto LABEL_25;
    }

    v14 = vcnt_s8(v12);
    v14.i16[0] = vaddlv_u8(v14);
    if (v14.u32[0] > 1uLL)
    {
      v15 = byte_1D0EA3DE8[v11];
      if (*&v12 <= v13)
      {
        v15 = v13 % a2[1];
      }
    }

    else
    {
      v15 = (v12.i32[0] - 1) & v13;
    }

    v16 = *(*a2 + 8 * v15);
    if (v16)
    {
      for (i = *v16; i; i = *i)
      {
        v18 = i[1];
        if (v18 == v13)
        {
          if (*(i + 16) == v13)
          {
            LODWORD(__p[0]) = 3;
            v72 = 5;
            ITRCount = raven::RavenSequentialGNSSMeasurementSelector::GetITRCount(v10, i + 3, __p, &v72);
            v31 = ITRCount;
            v70 = 4;
            v71 = 3;
            v32 = raven::RavenSequentialGNSSMeasurementSelector::GetITRCount(ITRCount, i + 3, &v71, &v70);
            v33 = v32;
            v68 = 5;
            v69 = 2;
            v34 = raven::RavenSequentialGNSSMeasurementSelector::GetITRCount(v32, i + 3, &v69, &v68);
            v35 = v34;
            v66 = 4;
            v67 = 2;
            v36 = raven::RavenSequentialGNSSMeasurementSelector::GetITRCount(v34, i + 3, &v67, &v66);
            v59 = v36;
            v64 = 5;
            v65 = 4;
            v37 = raven::RavenSequentialGNSSMeasurementSelector::GetITRCount(v36, i + 3, &v65, &v64);
            v58 = v37;
            v57 = v35;
            v62 = 4;
            v63 = 4;
            v38 = raven::RavenSequentialGNSSMeasurementSelector::GetITRCount(v37, i + 3, &v63, &v62);
            v56 = v38;
            v55 = v33;
            LODWORD(__p[0]) = 3;
            v72 = 3;
            v39 = raven::RavenSequentialGNSSMeasurementSelector::GetITRCount(v38, i + 3, __p, &v72);
            v54 = v39;
            v70 = 3;
            v71 = 2;
            v40 = raven::RavenSequentialGNSSMeasurementSelector::GetITRCount(v39, i + 3, &v71, &v70);
            v41 = v40;
            v68 = 3;
            v69 = 4;
            v42 = raven::RavenSequentialGNSSMeasurementSelector::GetITRCount(v40, i + 3, &v69, &v68);
            v43 = v42;
            LODWORD(__p[0]) = 1;
            v72 = 5;
            v44 = raven::RavenSequentialGNSSMeasurementSelector::GetITRCount(v42, i + 3, __p, &v72);
            v45 = v44;
            v70 = 4;
            v71 = 1;
            v46 = raven::RavenSequentialGNSSMeasurementSelector::GetITRCount(v44, i + 3, &v71, &v70);
            v47 = v46;
            LODWORD(__p[0]) = 1;
            v72 = 3;
            i = raven::RavenSequentialGNSSMeasurementSelector::GetITRCount(v46, i + 3, __p, &v72);
            v48 = (v55 + v31 + v57 + v59 + v58 + v56);
            v49 = (v41 + v54 + v43);
            v50 = (v47 + v45);
            a2 = v53;
            goto LABEL_26;
          }
        }

        else
        {
          if (v14.u32[0] > 1uLL)
          {
            if (v18 >= *&v12)
            {
              v18 %= *&v12;
            }
          }

          else
          {
            v18 &= *&v12 - 1;
          }

          if (v18 != v15)
          {
            goto LABEL_25;
          }
        }
      }

      v48 = 0;
      v49 = 0;
      v50 = 0;
    }

    else
    {
LABEL_25:
      v48 = 0;
      v49 = 0;
      v50 = 0;
      i = 0;
    }

LABEL_26:
    v19 = sub_1D0BCD7C4(&v73, ",", 1);
    sub_1D0B751F4(__p, off_1E83D8320[v13]);
    if ((v61 & 0x80u) == 0)
    {
      v20 = __p;
    }

    else
    {
      v20 = __p[0];
    }

    if ((v61 & 0x80u) == 0)
    {
      v21 = v61;
    }

    else
    {
      v21 = __p[1];
    }

    v22 = sub_1D0BCD7C4(v19, v20, v21);
    v23 = sub_1D0BCD7C4(v22, ",pr,", 4);
    v24 = MEMORY[0x1D387E9D0](v23, v50);
    v25 = sub_1D0BCD7C4(v24, ",", 1);
    v26 = MEMORY[0x1D387E9D0](v25, i);
    v27 = sub_1D0BCD7C4(v26, ",dop,", 5);
    v28 = MEMORY[0x1D387E9D0](v27, v48);
    v29 = sub_1D0BCD7C4(v28, ",", 1);
    v10 = MEMORY[0x1D387E9D0](v29, v49);
    if (v61 < 0)
    {
      operator delete(__p[0]);
    }

    ++v11;
  }

  while (v11 != 5);
  sub_1D0BC2E5C(&v74, a3);
  v73 = *MEMORY[0x1E69E54E8];
  *(&v73 + *(v73 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v74 = MEMORY[0x1E69E5548] + 16;
  if (v76 < 0)
  {
    operator delete(v75[7].__locale_);
  }

  v74 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v75);
  std::ostream::~ostream();
  return MEMORY[0x1D387EBF0](&v77);
}

void raven::RavenSequentialGNSSMeasurementSelector::StringOfL5MeasurementCountsByConstellation(raven::RavenSequentialGNSSMeasurementSelector *this@<X0>, _BYTE *a2@<X8>)
{
  sub_1D0B751F4(__p, "L5");
  raven::RavenSequentialGNSSMeasurementSelector::StringOfMeasurementCountsByConstellationForFrequency(__p, this + 173, a2);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1D0BD3FB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t raven::RavenSequentialGNSSMeasurementSelector::StringOfOverallMeasurementSelectionCounts@<X0>(raven::RavenSequentialGNSSMeasurementSelector *this@<X0>, _BYTE *a2@<X8>)
{
  sub_1D0BC2944(&v41);
  sub_1D0BCD7C4(&v41, "#MSR Overall GNSS measurement counts (accept,reject,reweight)", 61);
  v40 = 1;
  v4 = sub_1D0BCD7C4(&v41, ",psr,", 5);
  v39 = 5;
  ITRCount = raven::RavenSequentialGNSSMeasurementSelector::GetITRCount(v4, this + 183, &v40, &v39);
  v6 = MEMORY[0x1D387E9D0](v4, ITRCount);
  v7 = sub_1D0BCD7C4(v6, ",", 1);
  v38 = 3;
  v8 = raven::RavenSequentialGNSSMeasurementSelector::GetITRCount(v7, this + 183, &v40, &v38);
  v9 = MEMORY[0x1D387E9D0](v7, v8);
  v10 = sub_1D0BCD7C4(v9, ",", 1);
  v37 = 4;
  v11 = raven::RavenSequentialGNSSMeasurementSelector::GetITRCount(v10, this + 183, &v40, &v37);
  v12 = MEMORY[0x1D387E9D0](v10, v11);
  v39 = 5;
  v40 = 3;
  v13 = raven::RavenSequentialGNSSMeasurementSelector::GetITRCount(v12, this + 183, &v40, &v39);
  LODWORD(v10) = v13;
  v37 = 5;
  v38 = 4;
  v14 = raven::RavenSequentialGNSSMeasurementSelector::GetITRCount(v13, this + 183, &v38, &v37);
  v15 = v14;
  v39 = 3;
  v40 = 3;
  v16 = raven::RavenSequentialGNSSMeasurementSelector::GetITRCount(v14, this + 183, &v40, &v39);
  v17 = v16;
  v37 = 3;
  v38 = 4;
  v18 = raven::RavenSequentialGNSSMeasurementSelector::GetITRCount(v16, this + 183, &v38, &v37);
  v19 = v18;
  v39 = 4;
  v40 = 3;
  v20 = raven::RavenSequentialGNSSMeasurementSelector::GetITRCount(v18, this + 183, &v40, &v39);
  v21 = v20;
  v37 = 4;
  v38 = 4;
  v22 = raven::RavenSequentialGNSSMeasurementSelector::GetITRCount(v20, this + 183, &v38, &v37);
  v23 = sub_1D0BCD7C4(&v41, ",avg_doppler,", 13);
  v24 = MEMORY[0x1D387E9D0](v23, (v15 + v10));
  v25 = sub_1D0BCD7C4(v24, ",", 1);
  v26 = MEMORY[0x1D387E9D0](v25, (v19 + v17));
  v27 = sub_1D0BCD7C4(v26, ",", 1);
  MEMORY[0x1D387E9D0](v27, v22 + v21);
  v40 = 2;
  v28 = sub_1D0BCD7C4(&v41, ",inst_doppler,", 14);
  v39 = 5;
  v29 = raven::RavenSequentialGNSSMeasurementSelector::GetITRCount(v28, this + 183, &v40, &v39);
  v30 = MEMORY[0x1D387E9D0](v28, v29);
  v31 = sub_1D0BCD7C4(v30, ",", 1);
  v38 = 3;
  v32 = raven::RavenSequentialGNSSMeasurementSelector::GetITRCount(v31, this + 183, &v40, &v38);
  v33 = MEMORY[0x1D387E9D0](v31, v32);
  v34 = sub_1D0BCD7C4(v33, ",", 1);
  v37 = 4;
  v35 = raven::RavenSequentialGNSSMeasurementSelector::GetITRCount(v34, this + 183, &v40, &v37);
  MEMORY[0x1D387E9D0](v34, v35);
  sub_1D0BC2E5C(&v42, a2);
  v41 = *MEMORY[0x1E69E54E8];
  *(&v41 + *(v41 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v42 = MEMORY[0x1E69E5548] + 16;
  if (v44 < 0)
  {
    operator delete(v43[7].__locale_);
  }

  v42 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v43);
  std::ostream::~ostream();
  return MEMORY[0x1D387EBF0](&v45);
}

void sub_1D0BD439C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1D0D36324(va);
  _Unwind_Resume(a1);
}

uint64_t raven::RavenSequentialGNSSMeasurementSelector::StringOfOverallMeasurementSelectionCountsForRayTracedMeasurements@<X0>(raven::RavenSequentialGNSSMeasurementSelector *this@<X0>, _BYTE *a2@<X8>)
{
  sub_1D0BC2944(&v41);
  sub_1D0BCD7C4(&v41, "#MSR ray traced GNSS measurement counts (accept,reject,reweight)", 64);
  v40 = 1;
  v4 = sub_1D0BCD7C4(&v41, ",psr,", 5);
  v39 = 5;
  ITRCount = raven::RavenSequentialGNSSMeasurementSelector::GetITRCount(v4, this + 178, &v40, &v39);
  v6 = MEMORY[0x1D387E9D0](v4, ITRCount);
  v7 = sub_1D0BCD7C4(v6, ",", 1);
  v38 = 3;
  v8 = raven::RavenSequentialGNSSMeasurementSelector::GetITRCount(v7, this + 178, &v40, &v38);
  v9 = MEMORY[0x1D387E9D0](v7, v8);
  v10 = sub_1D0BCD7C4(v9, ",", 1);
  v37 = 4;
  v11 = raven::RavenSequentialGNSSMeasurementSelector::GetITRCount(v10, this + 178, &v40, &v37);
  v12 = MEMORY[0x1D387E9D0](v10, v11);
  v39 = 5;
  v40 = 3;
  v13 = raven::RavenSequentialGNSSMeasurementSelector::GetITRCount(v12, this + 178, &v40, &v39);
  LODWORD(v10) = v13;
  v37 = 5;
  v38 = 4;
  v14 = raven::RavenSequentialGNSSMeasurementSelector::GetITRCount(v13, this + 178, &v38, &v37);
  v15 = v14;
  v39 = 3;
  v40 = 3;
  v16 = raven::RavenSequentialGNSSMeasurementSelector::GetITRCount(v14, this + 178, &v40, &v39);
  v17 = v16;
  v37 = 3;
  v38 = 4;
  v18 = raven::RavenSequentialGNSSMeasurementSelector::GetITRCount(v16, this + 178, &v38, &v37);
  v19 = v18;
  v39 = 4;
  v40 = 3;
  v20 = raven::RavenSequentialGNSSMeasurementSelector::GetITRCount(v18, this + 178, &v40, &v39);
  v21 = v20;
  v37 = 4;
  v38 = 4;
  v22 = raven::RavenSequentialGNSSMeasurementSelector::GetITRCount(v20, this + 178, &v38, &v37);
  v23 = sub_1D0BCD7C4(&v41, ",avg_doppler,", 13);
  v24 = MEMORY[0x1D387E9D0](v23, (v15 + v10));
  v25 = sub_1D0BCD7C4(v24, ",", 1);
  v26 = MEMORY[0x1D387E9D0](v25, (v19 + v17));
  v27 = sub_1D0BCD7C4(v26, ",", 1);
  MEMORY[0x1D387E9D0](v27, v22 + v21);
  v40 = 2;
  v28 = sub_1D0BCD7C4(&v41, ",inst_doppler,", 14);
  v39 = 5;
  v29 = raven::RavenSequentialGNSSMeasurementSelector::GetITRCount(v28, this + 178, &v40, &v39);
  v30 = MEMORY[0x1D387E9D0](v28, v29);
  v31 = sub_1D0BCD7C4(v30, ",", 1);
  v38 = 3;
  v32 = raven::RavenSequentialGNSSMeasurementSelector::GetITRCount(v31, this + 178, &v40, &v38);
  v33 = MEMORY[0x1D387E9D0](v31, v32);
  v34 = sub_1D0BCD7C4(v33, ",", 1);
  v37 = 4;
  v35 = raven::RavenSequentialGNSSMeasurementSelector::GetITRCount(v34, this + 178, &v40, &v37);
  MEMORY[0x1D387E9D0](v34, v35);
  sub_1D0BC2E5C(&v42, a2);
  v41 = *MEMORY[0x1E69E54E8];
  *(&v41 + *(v41 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v42 = MEMORY[0x1E69E5548] + 16;
  if (v44 < 0)
  {
    operator delete(v43[7].__locale_);
  }

  v42 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v43);
  std::ostream::~ostream();
  return MEMORY[0x1D387EBF0](&v45);
}

void sub_1D0BD47BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1D0D36324(va);
  _Unwind_Resume(a1);
}

void sub_1D0BD482C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0BCA45C(v23, a3, a3, a4, a5, a6, a7, a8);
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

void sub_1D0BD4958(_Unwind_Exception *exception_object)
{
  if (*(v1 - 57) < 0)
  {
    operator delete(*(v1 - 80));
  }

  _Unwind_Resume(exception_object);
}

uint64_t raven::RavenPassThroughEstimator::HandleEvent(raven::RavenPassThroughEstimator *this, const raven::PositionEvent *a2)
{
  v3 = *(a2 + 200);
  if (v3 == 1)
  {
    ++*(this + 870);
LABEL_6:
    memcpy(this + 2768, a2 + 8, 0x160uLL);
    *(this + 3504) = raven::RavenPassThroughEstimator::IsPosVelValidAndTimeMatched(this, (this + 2760), (this + 3120));
    return 0;
  }

  if (v3 == 9 && *(this + 870))
  {
    goto LABEL_6;
  }

  return 0;
}

uint64_t raven::RavenPassThroughEstimator::IsPosVelValidAndTimeMatched(raven::RavenPassThroughEstimator *this, const raven::PositionEvent *a2, const raven::VelocityEvent *a3)
{
  v6 = *(a3 + 104);
  v21 = *(a2 + 104);
  v22 = v6;
  v7 = CNTimeSpan::operator-(&v22, &v21, v21, v6);
  if (fabs(v8 + v7) >= 0.001)
  {
    if (cnprint::CNPrinter::GetLogLevel(v7))
    {
      return 0;
    }

    v21.i16[0] = 12;
    v20 = 0;
    v10 = this - 104;
    v22.i64[0] = (*(*a3 + 16))(a3);
    v22.i64[1] = v11;
    cnprint::CNLogFormatter::FormatGeneral(this + 2712, &v22, "Position and velocity time difference too big");
LABEL_9:
    if (*(this + 2735) >= 0)
    {
      LOBYTE(v18) = v10;
    }

    else
    {
      v18 = *(this + 339);
    }

    goto LABEL_12;
  }

  if ((*(a3 + 280) & 1) == 0)
  {
    if (cnprint::CNPrinter::GetLogLevel(v7) > 1)
    {
      return 0;
    }

    v21.i16[0] = 12;
    v20 = 1;
    v10 = this - 104;
    v22.i64[0] = (*(*a3 + 16))(a3);
    v22.i64[1] = v17;
    cnprint::CNLogFormatter::FormatGeneral(this + 2712, &v22, "Invalid velocity");
    goto LABEL_9;
  }

  if (*(a2 + 280))
  {
    return 1;
  }

  if (cnprint::CNPrinter::GetLogLevel(v7) <= 1)
  {
    v21.i16[0] = 12;
    v20 = 1;
    v22.i64[0] = (*(*a2 + 16))(a2);
    v22.i64[1] = v19;
    cnprint::CNLogFormatter::FormatGeneral(this + 2712, &v22, "Invalid position");
    if (*(this + 2735) >= 0)
    {
      LOBYTE(v18) = this - 104;
    }

    else
    {
      v18 = *(this + 339);
    }

LABEL_12:
    cnprint::CNPrinter::Print(&v21, &v20, "%s", v12, v13, v14, v15, v16, v18);
  }

  return 0;
}

void raven::RavenDeviceAttitudeActiveObject::DetectStationaryStatus(raven::RavenDeviceAttitudeActiveObject *this)
{
  v135[0] = 0;
  v136 = xmmword_1D0EA3180;
  v137 = xmmword_1D0EA3180;
  v138 = xmmword_1D0EA3180;
  v139 = xmmword_1D0EA3180;
  v140 = xmmword_1D0EA3180;
  v141 = xmmword_1D0EA3180;
  if (!*(this + 969) || !*(this + 963))
  {
    return;
  }

  v2 = *(*(this + 965) + 8 * (*(this + 968) / 0x1AuLL)) + 152 * (*(this + 968) % 0x1AuLL);
  v149[0] = (*(*v2 + 16))(v2);
  v149[1] = v3;
  v4 = *(this + 969) + *(this + 968) - 1;
  v5 = *(*(this + 965) + 8 * (v4 / 0x1A)) + 152 * (v4 % 0x1A);
  v6 = (*(*v5 + 16))(v5);
  v8 = v7;
  v9 = v7;
  v10 = *(*(this + 959) + 8 * (*(this + 962) / 0x1AuLL)) + 152 * (*(this + 962) % 0x1AuLL);
  v148[0] = (*(*v10 + 16))(v10);
  v148[1] = v11;
  v12 = *(this + 963) + *(this + 962) - 1;
  v13 = *(*(this + 959) + 8 * (v12 / 0x1A)) + 152 * (v12 % 0x1A);
  v14 = (*(*v13 + 16))(v13);
  v16 = v15;
  __p = 1;
  v132 = 0;
  v19 = CNTimeSpan::operator+(v149, &__p, v17, v18);
  *v22.i64 = v20;
  if (v6)
  {
    v23 = 1;
  }

  else
  {
    v23 = (*&v8 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL;
  }

  if (!v23 || !v19 && (*&v20 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (v24 = v6 <= v19, v6 == v19))
  {
    v24 = v9 <= v20;
  }

  if (!v24)
  {
    v145 = 1;
    v146 = 0;
    v25 = CNTimeSpan::operator+(v148, &v145, v22, v21);
    if (v14)
    {
      v27 = 1;
    }

    else
    {
      v27 = (*&v16 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL;
    }

    if (!v27 || !v25 && (*&v26 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (v28 = v14 <= v25, v14 == v25))
    {
      v28 = v16 <= v26;
    }

    if (!v28)
    {
      __p = 0;
      v132 = 0;
      v133 = 0;
      sub_1D0C4E048(&__p, *(this + 963));
      v145 = 0;
      v146 = 0;
      v147 = 0;
      sub_1D0C4E048(&v145, *(this + 963));
      v142 = 0;
      v143 = 0;
      v144 = 0;
      v29 = sub_1D0C4E048(&v142, *(this + 963));
      v30 = *(this + 959);
      if (*(this + 960) != v30)
      {
        v31 = *(this + 962);
        v32 = (v30 + 8 * (v31 / 0x1A));
        v33 = (*v32 + 152 * (v31 % 0x1A));
        v34 = *(v30 + 8 * ((*(this + 963) + v31) / 0x1A)) + 152 * ((*(this + 963) + v31) % 0x1A);
        while (v33 != v34)
        {
          sub_1D0C4E0E8(&__p, v33 + 13);
          sub_1D0C4E0E8(&v145, v33 + 14);
          sub_1D0C4E0E8(&v142, v33 + 15);
          v33 += 19;
          if ((v33 - *v32) == 3952)
          {
            v35 = v32[1];
            ++v32;
            v33 = v35;
          }
        }
      }

      v36 = raven::RavenDeviceAttitudeActiveObject::ComputeMeanStdVector(v29, &__p);
      v38 = v37;
      *&v136 = v36;
      *(&v136 + 1) = v37;
      *&v137 = raven::RavenDeviceAttitudeActiveObject::ComputeMeanStdVector(v39, &v145);
      *(&v137 + 1) = v41;
      v45 = (v137 & 0x7FFFFFFFFFFFFFFFLL) < 0x7FF0000000000000 && (v41 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && (*&v36 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && (v38 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
      v135[0] = v45;
      v46 = raven::RavenDeviceAttitudeActiveObject::ComputeMeanStdVector(v40, &v142);
      v48 = v47;
      *&v138 = v46;
      *(&v138 + 1) = v47;
      v132 = __p;
      sub_1D0C4E048(&__p, *(this + 969));
      v146 = v145;
      sub_1D0C4E048(&v145, *(this + 969));
      v143 = v142;
      v49 = sub_1D0C4E048(&v142, *(this + 969));
      v50 = *(this + 965);
      if (*(this + 966) != v50)
      {
        v51 = *(this + 968);
        v52 = (v50 + 8 * (v51 / 0x1A));
        v53 = (*v52 + 152 * (v51 % 0x1A));
        v54 = *(v50 + 8 * ((*(this + 969) + v51) / 0x1A)) + 152 * ((*(this + 969) + v51) % 0x1A);
        while (v53 != v54)
        {
          sub_1D0C4E0E8(&__p, v53 + 13);
          sub_1D0C4E0E8(&v145, v53 + 14);
          sub_1D0C4E0E8(&v142, v53 + 15);
          v53 += 19;
          if ((v53 - *v52) == 3952)
          {
            v55 = v52[1];
            ++v52;
            v53 = v55;
          }
        }
      }

      v56 = raven::RavenDeviceAttitudeActiveObject::ComputeMeanStdVector(v49, &__p);
      v58 = v57;
      *&v139 = v56;
      *(&v139 + 1) = v57;
      v60 = raven::RavenDeviceAttitudeActiveObject::ComputeMeanStdVector(v59, &v145);
      v62 = v61;
      *&v140 = v60;
      *(&v140 + 1) = v61;
      v64 = raven::RavenDeviceAttitudeActiveObject::ComputeMeanStdVector(v63, &v142);
      v70 = (v48 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && (*&v46 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && (v58 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && (*&v56 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && (v62 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && (*&v60 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
      *&v141 = v64;
      *(&v141 + 1) = v65;
      v73 = v70 && (v65 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && (*&v64 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && v45;
      v135[0] = v73;
      v74 = *(this + 965);
      v75 = *(this + 966);
      if (v75 == v74)
      {
        v75 = *(this + 965);
      }

      else
      {
        v76 = *(this + 968);
        v77 = &v74[v76 / 0x1A];
        v78 = v74[(*(this + 969) + v76) / 0x1A] + 152 * ((*(this + 969) + v76) % 0x1A);
        if (*v77 + 152 * (v76 % 0x1A) != v78)
        {
          v79 = (*v77 + 152 * (v76 % 0x1A));
          do
          {
            v80 = *v79;
            v79 += 19;
            (*v80)();
            if (v79 - *v77 == 3952)
            {
              v81 = v77[1];
              ++v77;
              v79 = v81;
            }
          }

          while (v79 != v78);
          v75 = *(this + 966);
          v74 = *(this + 965);
        }
      }

      *(this + 969) = 0;
      v82 = v75 - v74;
      if (v82 >= 3)
      {
        do
        {
          operator delete(*v74);
          v74 = (*(this + 965) + 8);
          *(this + 965) = v74;
          v82 = (*(this + 966) - v74) >> 3;
        }

        while (v82 > 2);
      }

      if (v82 == 1)
      {
        v83 = 13;
      }

      else
      {
        if (v82 != 2)
        {
          goto LABEL_84;
        }

        v83 = 26;
      }

      *(this + 968) = v83;
LABEL_84:
      v84 = *(this + 959);
      v85 = *(this + 960);
      if (v85 == v84)
      {
        v85 = *(this + 959);
      }

      else
      {
        v86 = *(this + 962);
        v87 = &v84[v86 / 0x1A];
        v88 = v84[(*(this + 963) + v86) / 0x1A] + 152 * ((*(this + 963) + v86) % 0x1A);
        if (*v87 + 152 * (v86 % 0x1A) != v88)
        {
          v89 = (*v87 + 152 * (v86 % 0x1A));
          do
          {
            v90 = *v89;
            v89 += 19;
            (*v90)();
            if (v89 - *v87 == 3952)
            {
              v91 = v87[1];
              ++v87;
              v89 = v91;
            }
          }

          while (v89 != v88);
          v85 = *(this + 960);
          v84 = *(this + 959);
        }
      }

      *(this + 963) = 0;
      v92 = v85 - v84;
      if (v92 >= 3)
      {
        do
        {
          operator delete(*v84);
          v84 = (*(this + 959) + 8);
          *(this + 959) = v84;
          v92 = (*(this + 960) - v84) >> 3;
        }

        while (v92 > 2);
      }

      if (v92 == 1)
      {
        v93 = 13;
      }

      else
      {
        if (v92 != 2)
        {
LABEL_99:
          if (v142)
          {
            v143 = v142;
            operator delete(v142);
          }

          if (v145)
          {
            v146 = v145;
            operator delete(v145);
          }

          if (__p)
          {
            v132 = __p;
            operator delete(__p);
          }

          goto LABEL_105;
        }

        v93 = 26;
      }

      *(this + 962) = v93;
      goto LABEL_99;
    }
  }

LABEL_105:
  if (v135[0])
  {
    v94 = *(this + 951);
    if (v94)
    {
      if (*(&v136 + 1) < *(this + 36) && *(&v137 + 1) < *(this + 37) && *(&v138 + 1) < *(this + 38) && *(&v139 + 1) < *(this + 837) && *(&v140 + 1) < *(this + 838) && *(&v141 + 1) < *(this + 839))
      {
        v95 = *(this + 982);
        v96 = v137;
        *v95 = v136;
        v95[1] = v96;
        v97 = v139;
        v95[2] = v138;
        v98 = *(this + 974);
        v99 = v140;
        v100 = v141;
        *v98 = v97;
        v98[1] = v99;
        v98[2] = v100;
        v101 = (*(*(this + 947) + (((v94 + *(this + 950) - 1) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 2656 * ((v94 + *(this + 1900) - 1) & 0xF));
        v102 = *(this + 990);
        *v102 = v101[184];
        v102[1] = v101[185];
        v102[2] = v101[186];
        *(this + 8144) = 1;
        raven::RavenDeviceAttitudeActiveObject::UpdateSensorStaticNoise(this, v135);
        if ((atomic_load_explicit(&qword_1EE054C50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE054C50))
        {
          qword_1EE054CE8 = 0x100000003;
          qword_1EE054CD0 = &unk_1F4CDEB28;
          unk_1EE054CD8 = xmmword_1D0E7DCC0;
          qword_1EE054CF0 = &unk_1EE054CF8;
          __cxa_atexit(sub_1D0D24D20, &qword_1EE054CD0, &dword_1D0B71000);
          __cxa_guard_release(&qword_1EE054C50);
        }

        sub_1D0C4E2D8(this + 7888, &qword_1EE054CD0, &__p);
        sub_1D0BFA800(&__p);
        if (v104 > 30.0)
        {
          if (!cnprint::CNPrinter::GetLogLevel(v103))
          {
            LOWORD(__p) = 12;
            LOBYTE(v145) = 0;
            v105 = *(this + 951) + *(this + 950) - 1;
            v106 = *(*(this + 947) + ((v105 >> 1) & 0x7FFFFFFFFFFFFFF8)) + 2656 * (v105 & 0xF);
            v107 = (*(*v106 + 16))(v106);
            v109 = v108 + v107;
            v110 = *(this + 990);
            v111 = *v110;
            v112 = *(v110 + 2);
            v113 = *(this + 982);
            v114 = *v113;
            v115 = *(v113 + 2);
            v116 = *(this + 974);
            v130 = *(v116 + 2);
            v129 = *v116;
            cnprint::CNPrinter::Print(&__p, &v145, "DevAtt,NewBodyStaionaryGravity,t,%lf,posx,%.3lf,posy,%.3lf,posz,%.3lf,ax,%.3lf,ay,%.3lf,az,%.3lf,gx,%.3lf,gy,%.3lf,gz,%.3lf", v117, v118, v119, v120, v121, SLOBYTE(v109));
          }

          sub_1D0B894B0(&qword_1EE054CD0, this + 7888);
          sub_1D0C51578(3, 1, &__p);
          *(v134 + 16) = 0x3FF0000000000000;
          v122 = *(*(this + 29) + 1160);
          v123 = *(this + 36);
          v124 = *(this + 37);
          v125 = *(this + 38);
          v126 = *(this + 951) + *(this + 950) - 1;
          v127 = *(*(this + 947) + ((v126 >> 1) & 0x7FFFFFFFFFFFFFF8)) + 2656 * (v126 & 0xF);
          v145 = (*(*v127 + 16))(v127);
          v146 = v128;
          raven::RavenDeviceAttitudeActiveObject::UpdateDeviceVehicleAttitude(this, this + 7824, &__p, &v145, sqrt((v124 * v124 + v123 * v123 + v125 * v125) / 9.80665 / 9.80665 + v122 * 0.0174532925 * (v122 * 0.0174532925)));
        }
      }
    }
  }
}

void sub_1D0BD569C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  v23 = *(v21 - 192);
  if (v23)
  {
    *(v21 - 184) = v23;
    operator delete(v23);
  }

  v24 = *(v21 - 168);
  if (v24)
  {
    *(v21 - 160) = v24;
    operator delete(v24);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t raven::RavenDeviceAttitudeActiveObject::RaiseNonHolonomicEvent(uint64_t this, const raven::TimeMarkEvent *a2)
{
  if (*(this + 6721) == 1 && *(this + 6723) == 1)
  {
    v3 = this;
    v13 = 0x300000003;
    v11 = &unk_1F4CD5DD0;
    v12 = xmmword_1D0E76C10;
    v14 = &v15;
    sub_1D0B89390(this + 792, this + 536, &v11);
    v4 = v3[201];
    v5 = v3[200];
    v37 = 0x300000003;
    v32 = &unk_1F4CD5DD0;
    v33 = v4;
    v34 = v5;
    v35 = v5 * v4;
    v36 = v4;
    v38 = &v39;
    sub_1D0BD2018((v3 + 198), &v32);
    v18 = 0x300000003;
    v16 = &unk_1F4CD5DD0;
    v17 = xmmword_1D0E76C10;
    v19 = &v20;
    sub_1D0B89390(&v11, &v32, &v16);
    v6 = v17;
    if (v17 < 1)
    {
      v8 = 0.0;
    }

    else
    {
      v7 = 0;
      v8 = 0.0;
      do
      {
        v8 = v8 + *&v19[v7];
        v7 += HIDWORD(v17) + 1;
        --v6;
      }

      while (v6);
    }

    v9 = cnrotation::CNRotation::RotationMatrix((v3 + 190), &v32);
    v17 = 0uLL;
    LOBYTE(v18) = 0;
    v16 = &unk_1F4CEF0F0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0x7FF8000000000000;
    *&v17 = (*(*a2 + 16))(a2, v9);
    *(&v17 + 1) = v10;
    v28 = *v38;
    v29 = v38[v36];
    v30 = v38[2 * v36];
    v31 = sqrt(v8);
    sub_1D0DD4E28();
  }

  return this;
}

void raven::RavenDeviceAttitudeActiveObject::UpdateDeviceAttitudeByLinearAcceleration(raven::RavenDeviceAttitudeActiveObject *this, const raven::TimeMarkEvent *a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x1EEE9AC00](this, a2, a3, a4);
  v6 = (v4 + 6720);
  if (*(v4 + 8144) == 1)
  {
    v7 = v5;
    v8 = v4;
    v9 = sub_1D0B9A2A4(v4, (v4 + 6648), 0.0);
    if (v9 && (v9 = sub_1D0B9A2A4(v8, (v8 + 240), 0.0)) && (v9 = sub_1D0BD685C(v8, (v8 + 7568))))
    {
      if (raven::RavenDeviceAttitudeActiveObject::IsMovementStraight(v8) && raven::RavenDeviceAttitudeActiveObject::IsDecelerationToStop(v8))
      {
        v201 = 0x100000003;
        v199 = &unk_1F4CDEB28;
        v11 = xmmword_1D0E7DCC0;
        v200 = xmmword_1D0E7DCC0;
        v202 = v203;
        v12 = *(v8 + 272);
        v13 = v12 + *(v8 + 280);
        v14 = *(v8 + 248);
        v15 = (*(v14 + 8 * ((v13 - 1) / 0x1A)) + 152 * ((v13 - 1) % 0x1A));
        v203[0] = v15[13];
        v203[1] = v15[14];
        v203[2] = v15[15];
        v197 = 0;
        v198 = 0;
        v194 = 0x100000003;
        v192 = &unk_1F4CDEB28;
        v193 = xmmword_1D0E7DCC0;
        v195 = &v196;
        v135 = v7;
        if (*(v8 + 256) == v14 || (v16 = (*(v14 + 8 * (v12 / 0x1A)) + 152 * (v12 % 0x1A)), v136 = *(v14 + 8 * (v13 / 0x1A)) + 152 * (v13 % 0x1A), v16 == v136))
        {
          v18 = -INFINITY;
        }

        else
        {
          v17 = (v14 + 8 * (v12 / 0x1A));
          v18 = -INFINITY;
          do
          {
            v19 = v195;
            *v195 = v16[13];
            v19[1] = v16[14];
            v19[2] = v16[15];
            v144 = 0x100000003;
            v142 = &unk_1F4CDEB28;
            v143 = v11;
            v145 = &v146;
            sub_1D0BA5A78(&v192, &v199, &v142);
            v139 = 0x100000003;
            *v138 = &unk_1F4CDEB28;
            *&v138[8] = xmmword_1D0E7DCC0;
            v140 = v141;
            *&v204[24] = 0x100000134;
            *v204 = &unk_1F4CDEC90;
            *&v204[8] = xmmword_1D0E7DD20;
            *&v204[32] = v205;
            v149 = 0x100000003;
            v147 = &unk_1F4CDEB28;
            v148 = xmmword_1D0E7DCC0;
            v150 = v151;
            sub_1D0BFB1AC(&v142, v138, v204, &v147, "2");
            v21 = v20;
            if (v20 > v18)
            {
              v197 = (*(*v16 + 16))(v16);
              v198 = v22;
              v18 = v21;
            }

            v16 += 19;
            v11 = xmmword_1D0E7DCC0;
            if ((v16 - *v17) == 3952)
            {
              v23 = v17[1];
              ++v17;
              v16 = v23;
            }
          }

          while (v16 != v136);
        }

        if (v18 >= *(*(v8 + 232) + 1064))
        {
          v137 = v11;
          if ((atomic_load_explicit(&qword_1EE054C58, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE054C58))
          {
            qword_1EE054C88 = 1;
            unk_1EE054C90 = 0;
            __cxa_guard_release(&qword_1EE054C58);
          }

          v189[0] = 0;
          v190 = 0u;
          memset(v191, 0, sizeof(v191));
          v186[0] = 0;
          v187 = 0u;
          memset(v188, 0, sizeof(v188));
          v183[0] = 0;
          v184 = 0u;
          memset(v185, 0, sizeof(v185));
          v32 = 0uLL;
          v33 = *(v8 + 248);
          if (*(v8 + 256) == v33)
          {
            v11.n128_u64[0] = 0;
            v10.n128_u64[0] = 0;
          }

          else
          {
            v34 = *(v8 + 272);
            v35 = (*(v33 + 8 * (v34 / 0x1A)) + 152 * (v34 % 0x1A));
            v36 = *(v33 + 8 * ((*(v8 + 280) + v34) / 0x1A)) + 152 * ((*(v8 + 280) + v34) % 0x1A);
            v11.n128_u64[0] = 0;
            v10.n128_u64[0] = 0;
            if (v35 != v36)
            {
              v37 = (v33 + 8 * (v34 / 0x1A));
              do
              {
                v147 = (*(*v35 + 16))(v35, v32, v11, v10);
                *&v148 = v38;
                *v41.i64 = CNTimeSpan::operator-(&v147, &v197, v39, v40);
                *v43.i64 = fabs(v42 + *v41.i64);
                *v204 = 0;
                *&v204[8] = 0;
                CNTimeSpan::SetTimeSpan(v204, 0, v43, v41);
                *v138 = *v204;
                if (sub_1D0B7C8AC(v138, &qword_1EE054C88))
                {
                  sub_1D0B8954C(v189, v35 + 13, 1.0);
                  sub_1D0B8954C(v186, v35 + 14, 1.0);
                  sub_1D0B8954C(v183, v35 + 15, 1.0);
                }

                v35 += 19;
                if ((v35 - *v37) == 3952)
                {
                  v44 = v37[1];
                  ++v37;
                  v35 = v44;
                }
              }

              while (v35 != v36);
              v10.n128_u64[0] = *&v191[1];
              v11.n128_u64[0] = *&v188[1];
              v32.n128_u64[0] = *&v185[1];
            }
          }

          v180 = 0x100000003;
          v178 = &unk_1F4CDEB28;
          v179 = v137;
          v181 = v182;
          v182[0] = v10.n128_u64[0];
          v182[1] = v11.n128_u64[0];
          v182[2] = v32.n128_u64[0];
          sub_1D0C4E2D8(&v178, &v199, v204);
          sub_1D0B894B0(&v178, v204);
          sub_1D0BFA800(&v178);
          v46 = v45;
          if (fabs(v45) > 0.000000015)
          {
            v175 = 0x100000003;
            v173 = &unk_1F4CDEB28;
            v174 = v137;
            v176 = &v177;
            v47 = *(v8 + 7576);
            if (*(v8 + 7584) == v47 || (v48 = *(v8 + 7600), v49 = (v47 + 8 * (v48 >> 4)), v50 = (*v49 + 2656 * (v48 & 0xF)), v51 = *(v47 + (((*(v8 + 7608) + v48) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 2656 * ((*(v8 + 7608) + v48) & 0xF), v50 == v51))
            {
              v52 = 0.0;
            }

            else
            {
              v52 = 0.0;
              v53 = -INFINITY;
              do
              {
                v54 = v50[194];
                v55 = v50[195] * v50[195] + v54 * v54 + v50[196] * v50[196];
                if (v53 < v55)
                {
                  v56 = v176;
                  *v176 = -v54;
                  v56[1] = -v50[195];
                  v56[2] = -v50[196];
                  if ((atomic_load_explicit(&qword_1EE054C68, memory_order_acquire) & 1) == 0)
                  {
                    v58 = v55;
                    v59 = __cxa_guard_acquire(&qword_1EE054C68);
                    v55 = v58;
                    if (v59)
                    {
                      *&qword_1EE054C60 = *(*(v8 + 232) + 1176) * 0.0174532925 * (*(*(v8 + 232) + 1176) * 0.0174532925);
                      __cxa_guard_release(&qword_1EE054C68);
                      v55 = v58;
                    }
                  }

                  if (*&qword_1EE054C60 >= (v50[197] + v50[200] + v50[202]) / v55)
                  {
                    v52 = (v50[197] + v50[200] + v50[202]) / v55;
                  }

                  else
                  {
                    v52 = *&qword_1EE054C60;
                  }

                  v53 = v55;
                }

                v50 += 332;
                if ((v50 - *v49) == 42496)
                {
                  v57 = v49[1];
                  ++v49;
                  v50 = v57;
                }
              }

              while (v50 != v51);
            }

            sub_1D0BFA800(&v173);
            v61 = v60;
            if (fabs(v60) > 0.000000015)
            {
              sub_1D0C51578(3, 1, v171);
              *(v172 + 8) = 0xBFF0000000000000;
              sub_1D0C51578(3, 1, v169);
              sub_1D0C51578(3, 1, v167);
              v166 = -1.0;
              sub_1D0C51578(3, 1, v164);
              v62 = *(v8 + 7608) + *(v8 + 7600) - 1;
              v63 = (*(*(v8 + 7576) + ((v62 >> 1) & 0x7FFFFFFFFFFFFFF8)) + 2656 * (v62 & 0xF));
              v64 = v165;
              *v165 = v63[184];
              v64[1] = v63[185];
              v64[2] = v63[186];
              if (raven::RavenDeviceAttitudeActiveObject::DeriveGravityVectorInEcefAndBody(v8, v164, v169, v167, &v166))
              {
                v65 = (*(*v135 + 16))(v135);
                v67 = v66;
                sub_1D0BFA800(v169);
                v69.f64[0] = 1.0 / v68;
                sub_1D0C51FB4(v169, v162, v69);
                v70.f64[0] = 1.0 / v61;
                sub_1D0C51FB4(&v173, v159, v70);
                v71 = v160;
                if (v160 < 1)
                {
                  v73 = 0.0;
                }

                else
                {
                  v72 = v161;
                  v73 = 0.0;
                  v74 = v163;
                  do
                  {
                    v75 = *v72++;
                    v76 = v75;
                    v77 = *v74++;
                    v73 = v73 + v76 * v77;
                    --v71;
                  }

                  while (v71);
                }

                v78 = acos(v73);
                sub_1D0BFA800(v167);
                v80.f64[0] = 1.0 / v79;
                sub_1D0C51FB4(v167, v157, v80);
                v81.f64[0] = 1.0 / v46;
                sub_1D0C51FB4(&v178, v154, v81);
                v82 = v155;
                if (v155 < 1)
                {
                  v84 = 0.0;
                }

                else
                {
                  v83 = v156;
                  v84 = 0.0;
                  v85 = v158;
                  do
                  {
                    v86 = *v83++;
                    v87 = v86;
                    v88 = *v85++;
                    v84 = v84 + v87 * v88;
                    --v82;
                  }

                  while (v82);
                }

                v89 = vabdd_f64(v78, acos(v84));
                v90 = sqrt(v52 + v89 * 0.5 * (v89 * 0.5));
                v152 = 0uLL;
                *&v153 = 0;
                *(&v153 + 1) = 0x3FF0000000000000;
                v149 = 0x300000003;
                v147 = &unk_1F4CD5DD0;
                v148 = xmmword_1D0E76C10;
                v150 = v151;
                if (raven::RavenDeviceAttitudeActiveObject::AttitudeViaTwoVectors(v91, v169, v167, &v173))
                {
                  cnrotation::CNRotation::RotationMatrix(&v152, &v142);
                  if (cnprint::CNPrinter::GetLogLevel(v92) <= 1)
                  {
                    *v204 = 12;
                    v138[0] = 1;
                    v98 = &v145[v143.n128_i32[3]];
                    v99 = &v145[2 * v143.n128_i32[3]];
                    v100 = *v99;
                    v101 = *v98;
                    v102 = v98[1];
                    v103 = v98[2];
                    v104 = v99[2];
                    v105 = &v150[SHIDWORD(v148)];
                    v106 = &v150[2 * SHIDWORD(v148)];
                    v107 = *v168;
                    v134 = *(v168 + 2);
                    v133 = *(v170 + 2);
                    v132 = *v170;
                    v131 = v181[2];
                    v130 = *v181;
                    v129 = *(v176 + 2);
                    v128 = *v176;
                    v126 = v105[2];
                    v127 = v106[2];
                    v124 = v150[(2 * HIDWORD(v148)) | 1];
                    v125 = v150[2];
                    v122 = v150[1];
                    v123 = v105[1];
                    v120 = *v105;
                    v121 = *v106;
                    v119 = *v150;
                    v118 = v145[2];
                    v117 = v145[(2 * v143.n128_u32[3]) | 1];
                    v116 = v145[1];
                    v115 = *v145;
                    v114 = v67 + v65;
                    cnprint::CNPrinter::Print(v204, v138, "DevAtt,deviceEcefAttitude,t,%lf,type,%hu,Rb2e,%.6lf,%.6lf,%.6lf,%.6lf,%.6lf,%.6lf,%.6lf,%.6lf,%.6lf,Pb2e,%.6lf,%.6lf,%.6lf,%.6lf,%.6lf,%.6lf,%.6lf,%.6lf,%.6lf,aEcefX,%.3lf,aEcefY,%.3lf,aEcefZ,%.3lf,aBodyX,%.3lf,aBodyY,%.3lf,aBodyZ,%.3lf,aUnc,%.3lf,gEcefX,%.3lf,gEcefY,%.3lf,gEcefZ,%.3lf,gBodyX,%.3lf,gBodyY,%.3lf,gBodyZ,%.3lf,gUnc,%.3lf", v93, v94, v95, v96, v97, SLOBYTE(v114));
                  }

                  *v6 = 1;
                  if ((v8 + 312) != &v152)
                  {
                    v108 = v153;
                    *(v8 + 312) = v152;
                    *(v8 + 328) = v108;
                  }

                  sub_1D0B894B0(v8 + 344, &v147);
                  sub_1D0B894B0(v8 + 456, v164);
                  *(v8 + 520) = v65;
                  *(v8 + 528) = v67;
                  v139 = 0x400000004;
                  *v138 = &unk_1F4CDEB70;
                  *&v138[8] = xmmword_1D0E7DCD0;
                  v140 = v141;
                  *v204 = v152;
                  *&v204[16] = v153;
                  if (raven::RavenDeviceAttitudeActiveObject::convertRvVarToQuaternionVar(v109, v204, &v147, v138))
                  {
                    sub_1D0E29F10(v204);
                    memset(v205, 0, sizeof(v205));
                    *&v204[24] = 0u;
                    v208 = v152;
                    *&v204[8] = v65;
                    *&v204[16] = v67;
                    v206 = 0;
                    v207 = 0x7FF8000000000000;
                    v209 = v153;
                    v210 = *v140;
                    v110 = &v140[*&v138[20]];
                    v211 = *v110;
                    v111 = &v140[2 * *&v138[20]];
                    v212 = *v111;
                    v112 = &v140[3 * *&v138[20]];
                    v213 = *v112;
                    v214 = v110[1];
                    v215 = v140[(2 * *&v138[20]) | 1];
                    v216 = v112[1];
                    v217 = v111[2];
                    v218 = v112[2];
                    v219 = v112[3];
                    v220 = 1;
                    sub_1D0DD3320();
                  }
                }

                *v204 = (*(*v135 + 16))(v135);
                *&v204[8] = v113;
                raven::RavenDeviceAttitudeActiveObject::UpdateDeviceVehicleAttitude(v8, &v178, v171, v204, v90);
              }

              sub_1D0E29F7C((v8 + 240));
            }
          }
        }
      }
    }

    else if (cnprint::CNPrinter::GetLogLevel(v9) <= 1)
    {
      *v204 = 12;
      v138[0] = 1;
      v24 = (*(*v7 + 16))(v7);
      v26 = v25 + v24;
      sub_1D0B9A2A4(v8, (v8 + 6648), 0.0);
      sub_1D0B9A2A4(v8, (v8 + 240), 0.0);
      sub_1D0BD685C(v8, (v8 + 7568));
      cnprint::CNPrinter::Print(v204, v138, "DevAtt,IsManeuverDetectionBufferFull,t,%lf,%d,%d,%d", v27, v28, v29, v30, v31, SLOBYTE(v26));
    }
  }
}

BOOL sub_1D0BD685C(uint64_t a1, void *a2)
{
  v2 = a2[5];
  if (!v2)
  {
    return 0;
  }

  v5 = *(a2[1] + (((v2 + a2[4] - 1) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 2656 * ((v2 + *(a2 + 8) - 1) & 0xF);
  v6 = (*(*v5 + 16))(v5);
  v8 = v7;
  v9 = v7;
  v10 = *(a2[1] + ((a2[4] >> 1) & 0x7FFFFFFFFFFFFFF8)) + 2656 * (a2[4] & 0xFLL);
  v26[0] = (*(*v10 + 16))(v10);
  v26[1] = v11;
  v12.i64[0] = *(*(a1 + 232) + 1048);
  v24[0] = 0;
  v24[1] = 0;
  *v14.i64 = CNTimeSpan::SetTimeSpan(v24, 0, v12, v13);
  v25[0] = CNTimeSpan::operator+(v26, v24, v14, v15);
  v25[1] = v16;
  v23[0] = 0;
  v23[1] = 0;
  v19 = CNTimeSpan::operator+(v25, v23, v17, v18);
  if (v6)
  {
    v21 = 1;
  }

  else
  {
    v21 = (*&v8 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL;
  }

  if (!v21 || !v19 && (*&v20 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    return v9 > v20;
  }

  if (v6 == v19)
  {
    return v9 > v20;
  }

  return v6 > v19;
}

void raven::RavenDeviceAttitudeActiveObject::UpdateDeviceAttitudeByWahbaSolution(raven::RavenDeviceAttitudeActiveObject *this, const raven::TimeMarkEvent *a2)
{
  v270 = *MEMORY[0x1E69E9840];
  v2 = *(this + 951);
  if (v2)
  {
    v4 = (*(*(this + 947) + (((v2 + *(this + 950) - 1) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 2656 * ((v2 + *(this + 1900) - 1) & 0xF));
    if (v4[209] == 2 && v4[1464] == 1 && v4[1544] == 1)
    {
      v6 = this + 4096;
      *(this + 4044) = 1;
      *&v261 = (*(*a2 + 16))(a2);
      *(&v261 + 1) = v7;
      v8 = *(this + 951) + *(this + 950) - 1;
      v9 = *(*(this + 947) + ((v8 >> 1) & 0x7FFFFFFFFFFFFFF8)) + 2656 * (v8 & 0xF);
      v172 = CNTimeSpan::operator-(&v261, this + 906, v10, v11);
      v171 = v12;
      v13 = *(v9 + 1552);
      v14 = *(v9 + 1560);
      v15 = *(v9 + 1568);
      *&v16 = *(v9 + 1576) + *(v9 + 1600);
      v17 = *&v16 + *(v9 + 1616);
      v18 = *(this + 29);
      LODWORD(v16) = *(v18 + 984);
      v19 = vcvtpd_u64_f64(*(v18 + 648) * v16) + 1;
      v20 = *(this + 1017);
      if (v20 >= v19)
      {
        v21 = *(this + 1016);
        do
        {
          *(this + 1017) = --v20;
          *(this + 1016) = ++v21;
          if (v21 >= 0x100)
          {
            operator delete(**(this + 1013));
            *(this + 1013) += 8;
            v21 = *(this + 1016) - 128;
            *(this + 1016) = v21;
            v20 = *(this + 1017);
          }
        }

        while (v20 >= v19);
      }

      *&v260[0] = (*(*a2 + 16))(a2);
      v260[1] = v23;
      if (v17 > 0.0)
      {
        v24 = *(this + 1017);
        if (!v24 || sub_1D0B7CF88(v260, (*(*(this + 1013) + (((v24 + *(this + 1016) - 1) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((v24 + *(this + 1016) - 1) & 0x7F))))
        {
          v25 = (*(*a2 + 16))(a2);
          v168 = v26;
          v169 = v25;
          v6 = this + 4096;
          v27 = *(this + 8104);
          v28 = *(this + 1014);
          v29 = *(this + 1013);
          if (v28 == v29)
          {
            v30 = 0;
          }

          else
          {
            v30 = 16 * (v28 - v29) - 1;
          }

          v31 = *(this + 1016);
          v32 = *(this + 1017);
          v33 = v32 + v31;
          if (v30 == v32 + v31)
          {
            if (v31 < 0x80)
            {
              v34 = *(this + 1015);
              v35 = *(this + 1012);
              if (v28 - v29 < (v34 - v35))
              {
                operator new();
              }

              if (v34 == v35)
              {
                v36 = 1;
              }

              else
              {
                v36 = (v34 - v35) >> 2;
              }

              sub_1D0C4E87C(v36);
            }

            *(this + 1016) = v31 - 128;
            *v173 = *v29;
            *(this + 1013) = v29 + 8;
            sub_1D0C149C4(this + 1012, v173);
            v37 = v169;
            v29 = *(this + 1013);
            v32 = *(this + 1017);
            v33 = v32 + *(this + 1016);
            v6 = this + 4096;
          }

          else
          {
            v37 = v25;
          }

          v38 = *&v29[(v33 >> 4) & 0xFFFFFFFFFFFFFF8] + 32 * (v33 & 0x7F);
          *v38 = v37;
          *(v38 + 8) = v168;
          *(v38 + 16) = sqrt(v14 * v14 + v13 * v13 + v15 * v15);
          *(v38 + 24) = v17;
          *(this + 1017) = v32 + 1;
        }
      }

      v22.i64[0] = 0x3FEE666666666666;
      if (v171 + v172 >= 0.95)
      {
        v39 = *(this + 29);
        if (*(this + 1010) >= *(v39 + 984))
        {
          v40 = 1.0;
          v167 = v6;
          if (v6[2824] == 1 && ((v41 = *(this + 1017), v42 = v6[2736], v42 > 7) || v42 == 5) && v41 >= 3)
          {
            v114 = *(this + 1016);
            v115 = *(this + 1013);
            v116 = *(v115 + ((v114 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v114 & 0x7F);
            *v173 = *v116;
            v117 = *(v116 + 16);
            v118 = *(v115 + (((v114 + 1) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((v114 + 1) & 0x7F);
            v119 = CNTimeSpan::operator-(v118, v116, *v173, v22);
            v121 = v120 + v119;
            v122 = (*(v118 + 16) - v117) / v121;
            *v123.i64 = *(v118 + 24) + *(v116 + 24);
            v124 = *v123.i64 / (v121 * v121);
            v125 = v41 - 2;
            v126 = v114 + 2;
            do
            {
              v127 = *(v115 + ((v126 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v126 & 0x7F);
              v267 = *v127;
              v128 = *(v127 + 16);
              v129 = *(v127 + 24);
              v130 = CNTimeSpan::operator-(&v267, v173, v267, v123);
              v132 = v131 + v130;
              *v123.i64 = v128 - (v117 + v132 * v122);
              v133 = v124 * v132 / (v129 + v124 * v132 * v132);
              v122 = v122 + v133 * *v123.i64;
              v124 = v124 + -(v133 * v132) * v124;
              ++v126;
              --v125;
            }

            while (v125);
            v134 = v41 - 1;
            v135 = v114 + 1;
            v136 = 0.0;
            do
            {
              v137 = *(v115 + ((v135 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v135 & 0x7F);
              v267 = *v137;
              v138 = *(v137 + 16);
              v139 = *(v137 + 24);
              v140 = CNTimeSpan::operator-(&v267, v173, v267, v123);
              *v123.i64 = v140;
              v142 = v138 - (v117 + (v141 + v140) * v122);
              v136 = v136 + v142 * v142 / v139;
              ++v135;
              --v134;
            }

            while (v134);
            cnstatistics::InverseChi2(v140, *(v39 + 912), (v41 - 2));
            if (v136 <= v149)
            {
              if ((*&v122 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (v124 >= 0.0 ? (v155 = ((*&v124 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE) : (v155 = 1), v155 ? (v156 = (*&v124 - 1) > 0xFFFFFFFFFFFFELL) : (v156 = 0), v156))
              {
                v267.i16[0] = 12;
                LOBYTE(v262) = 4;
                cnprint::CNPrinter::Print(&v267, &v262, "GNSS-derived acceleration,x,%.3lf,P,%.3lf", v144, v145, v146, v147, v148, SLOBYTE(v122));
                v40 = 1.0;
              }

              else
              {
                v157 = 0.0;
                if (v122 < 0.0)
                {
                  v157 = -1.0;
                }

                if (v122 <= 0.0)
                {
                  v40 = v157;
                }

                else
                {
                  v40 = 1.0;
                }

                v167[3992] = fabs(v122 / sqrt(v124)) > cnstatistics::InverseNormal(v143, (1.0 - *(*(this + 29) + 912)) * -0.5 + 1.0, 0.0, 1.0);
                if (!cnprint::CNPrinter::GetLogLevel(v158))
                {
                  v267.i16[0] = 12;
                  LOBYTE(v262) = 0;
                  cnprint::CNPrinter::Print(&v267, &v262, "GNSS-derived acceleration result,reliable,%d,x,%.3lf,std,%.3lf,thresh,%.3lf", v159, v160, v161, v162, v163, v167[3992]);
                }
              }
            }

            else
            {
              v40 = 1.0;
              if (cnprint::CNPrinter::GetLogLevel(v143) <= 1)
              {
                v267.i16[0] = 12;
                LOBYTE(v262) = 1;
                cnprint::CNPrinter::Print(&v267, &v262, "Failed SOS test when estimating slope,sos,%.3lf,threshold,%.3lf,dof,%u", v150, v151, v152, v153, v154, SLOBYTE(v136));
              }
            }

            v43 = 1;
          }

          else
          {
            v43 = 0;
          }

          v257 = 0x100000003;
          v256 = xmmword_1D0E7DCC0;
          v255 = &unk_1F4CDEB28;
          v258 = &v259;
          v267 = *(v9 + 1472);
          v268 = *(v9 + 1488);
          v222 = 0;
          v44 = sub_1D0BF9390(this + 3912, &v267, 1, 0) != 0;
          v45 = v258;
          *v258 = v262;
          *(v45 + 1) = v263;
          v252 = 0x100000003;
          v251 = xmmword_1D0E7DCC0;
          v250 = &unk_1F4CDEB28;
          v253 = v254;
          v46 = *(this + 1010) + *(this + 1009) - 1;
          v47 = (*(*(this + 1006) + 8 * (v46 / 0x14)) + 200 * (v46 % 0x14));
          v254[0] = -v47[13];
          v254[1] = -v47[14];
          v254[2] = -v47[15];
          v247 = 0x100000003;
          v246 = xmmword_1D0E7DCC0;
          v245 = &unk_1F4CDEB28;
          v248 = &v249;
          sub_1D0BFA9C4(3, 3, &v267);
          v48 = v248;
          *v248 = *(v9 + 1552);
          v48[1] = *(v9 + 1560);
          v48[2] = *(v9 + 1568);
          v49 = v269;
          *v269 = *(v9 + 1576);
          v50 = SHIDWORD(v268);
          v49[SHIDWORD(v268) + 1] = *(v9 + 1600);
          v49[2 * v50 + 2] = *(v9 + 1616);
          sub_1D0BFA800(&v245);
          v52 = v51;
          v53 = fabs(v51) <= 0.000000015 || v44;
          if (v53)
          {
            v54 = 0;
          }

          else
          {
            *&v174 = 0x300000001;
            *v173 = &unk_1F4CDF248;
            *&v173[8] = xmmword_1D0E7F310;
            *(&v174 + 1) = &v175;
            *&v175 = *v248 / v51;
            *(&v175 + 1) = v248[1] / v51;
            *&v176 = v248[2] / v51;
            sub_1D0BFB8FC(v173, &v267, &v262);
            sub_1D0BFB980(&v222, v173);
            v55 = sub_1D0BFC678(&v262, &v222, &v203);
            if (v167[2824] == 1 && v167[2736] - 1 <= 6)
            {
              v56 = qword_1D0EA3CB8[(v167[2736] - 1)];
            }

            else
            {
              v56 = 928;
            }

            v54 = v52 >= cnstatistics::InverseNormal(v55, 1.0 - *(*(this + 29) + v56), 0.0, sqrt(v206->f64[0]));
          }

          v242 = 0x100000003;
          v241 = xmmword_1D0E7DCC0;
          v240 = &unk_1F4CDEB28;
          v243 = &v244;
          if (v54)
          {
            v57 = *(this + 1010) + *(this + 1009) - 1;
            v58 = *(*(this + 1006) + 8 * (v57 / 0x14)) + 200 * (v57 % 0x14);
            v239 = 0u;
            v238 = 0u;
            if (&v238 != (v58 + 168))
            {
              v238 = *(v58 + 168);
              v239 = *(v58 + 184);
            }

            sub_1D0C51578(3, 1, v236);
            v59 = *(v58 + 104);
            v60 = *(v58 + 120);
            v61 = sqrt(COERCE_DOUBLE(*&vmulq_f64(v59, v59).f64[1]) + v59.f64[0] * v59.f64[0] + v60 * v60);
            v62 = v61 > 0.000000015;
            if (v61 > 0.000000015)
            {
              v63 = v237;
              *v237 = vdivq_f64(vnegq_f64(v59), vdupq_lane_s64(*&v61, 0));
              v63[1].f64[0] = -v60 / v61;
            }

            sub_1D0C51578(3, 1, v233);
            sub_1D0BFA9C4(3, 3, &v262);
            v64 = *(this + 1006);
            if (*(this + 1007) != v64)
            {
              v65 = *(this + 1009);
              v66 = *(v64 + 8 * (v65 / 0x14)) + 200 * (v65 % 0x14);
              v170 = *(v64 + 8 * ((*(this + 1010) + v65) / 0x14)) + 200 * ((*(this + 1010) + v65) % 0x14);
              if (v66 != v170)
              {
                v166 = v62;
                v67 = 0.0;
                v68 = (v64 + 8 * (v65 / 0x14));
                do
                {
                  v205 = 0x100000003;
                  v203 = &unk_1F4CDEB28;
                  v204 = xmmword_1D0E7DCC0;
                  v206 = &v207;
                  v207 = *(v66 + 128);
                  v208 = *(v66 + 144);
                  cnrotation::Inv((v66 + 168), v173);
                  cnrotation::Cat(&v238, v173, v232);
                  sub_1D0B88A54(v232, &v203, v173);
                  sub_1D0C51690(&v198, v173);
                  v70 = DWORD2(v199);
                  if (SDWORD2(v199) < 1)
                  {
                    v69.f64[0] = 0.0;
                  }

                  else
                  {
                    v71 = v201;
                    v69.f64[0] = 0.0;
                    v72 = v237;
                    do
                    {
                      v73 = *v71++;
                      v74 = v73;
                      v75 = *v72++;
                      v69.f64[0] = v69.f64[0] + v74 * v75;
                      --v70;
                    }

                    while (v70);
                  }

                  *&v174 = 0x100000003;
                  *v173 = &unk_1F4CDEB28;
                  *&v173[8] = xmmword_1D0E7DCC0;
                  *(&v174 + 1) = &v175;
                  sub_1D0B8930C(v236, v173, v69);
                  v195 = 0x100000003;
                  v194 = xmmword_1D0E7DCC0;
                  v193 = &unk_1F4CDEB28;
                  v196 = v197;
                  sub_1D0BA5A78(&v198, v173, &v193);
                  v229 = 0x100000003;
                  v227 = &unk_1F4CDEB28;
                  v228 = xmmword_1D0E7DCC0;
                  v230 = &v231;
                  sub_1D0BA5A78(&v193, v233, &v227);
                  v67 = v67 + 1.0;
                  v224 = 0x100000003;
                  *&v76.f64[1] = 0x300000003;
                  v223 = xmmword_1D0E7DCC0;
                  v222 = &unk_1F4CDEB28;
                  v225 = v226;
                  v76.f64[0] = 1.0 / v67;
                  sub_1D0B8930C(&v227, &v222, v76);
                  *&v174 = 0x100000003;
                  *v173 = &unk_1F4CDEB28;
                  *&v173[8] = xmmword_1D0E7DCC0;
                  *(&v174 + 1) = &v175;
                  sub_1D0B88838(v233, &v222, v173);
                  sub_1D0B894B0(v233, v173);
                  v211 = 0x100000003;
                  v210 = xmmword_1D0E7DCC0;
                  v209 = &unk_1F4CDEB28;
                  v212 = &v213;
                  sub_1D0BA5A78(&v193, v233, &v209);
                  v77 = DWORD1(v210);
                  v78 = v210;
                  v219 = 0x300000001;
                  v214 = &unk_1F4CDF248;
                  v220 = v221;
                  v215 = DWORD1(v210);
                  v216 = v210;
                  v217 = v210 * DWORD1(v210);
                  v218 = DWORD1(v210);
                  if (DWORD1(v210))
                  {
                    v79 = 0;
                    v80 = 0;
                    v81 = HIDWORD(v210);
                    v82 = v212;
                    do
                    {
                      v83 = v79;
                      v84 = v80;
                      for (i = v78; i; --i)
                      {
                        v221[v84] = v82[v83];
                        v84 += v77;
                        ++v83;
                      }

                      ++v80;
                      v79 += v81;
                    }

                    while (v80 != v77);
                  }

                  v224 = 0x300000003;
                  v223 = xmmword_1D0E76C10;
                  v222 = &unk_1F4CD5DD0;
                  v225 = v226;
                  sub_1D0B89390(&v227, &v214, &v222);
                  *&v174 = 0x300000003;
                  *v173 = &unk_1F4CD5DD0;
                  *&v173[8] = xmmword_1D0E76C10;
                  *(&v174 + 1) = &v175;
                  sub_1D0B88838(&v262, &v222, v173);
                  v86 = sub_1D0B894B0(&v262, v173);
                  v66 += 200;
                  if (v66 - *v68 == 4000)
                  {
                    v87 = v68[1];
                    ++v68;
                    v66 = v87;
                  }
                }

                while (v66 != v170);
                v88 = v166;
                if (v67 >= 4.0)
                {
                  v86.n128_f64[0] = 1.0 / (v67 + -1.0);
                  sub_1D0C51778(&v262, &v222, v86);
                  v205 = 0x300000003;
                  v204 = xmmword_1D0E76C10;
                  v203 = &unk_1F4CD5DD0;
                  v206 = &v207;
                  sub_1D0C517F8(3, &v198);
                  v195 = 0x300000003;
                  v194 = xmmword_1D0E76C10;
                  v193 = &unk_1F4CD5DD0;
                  v196 = v197;
                  sub_1D0C51AF8(&v222, &v203, &v198, &v193);
                  v89 = *v201;
                  v90 = v201[SHIDWORD(v199) + 1];
                  sub_1D0BFA800(v233);
                  v91 = *(this + 29);
                  if (v92 < v91[124] && sqrt(v89) < v91[125])
                  {
                    v88 = 0;
                  }

                  if (fabs(v89) < 2.22044605e-16 && fabs(v90) < 2.22044605e-16 || v89 / (v89 + v90) < v91[126])
                  {
                    v88 = 0;
                  }

                  sub_1D0C51CC8(&v193, ":", 0, v173);
                  v93 = v234;
                  if (v234 < 1)
                  {
                    goto LABEL_77;
                  }

                  v94 = v235;
                  v95 = 0.0;
                  v96 = *(&v174 + 1);
                  do
                  {
                    v97 = *v94++;
                    v98 = v97;
                    v99 = *v96++;
                    v95 = v95 + v98 * v99;
                    --v93;
                  }

                  while (v93);
                  if (v95 >= 0.0)
                  {
LABEL_77:
                    sub_1D0C51CC8(&v193, ":", 0, v173);
                    v101.f64[0] = v52;
                    sub_1D0C51F2C(&v227, v173, v101);
                  }

                  else
                  {
                    sub_1D0C51CC8(&v193, ":", 0, v173);
                    v100.f64[0] = -v52;
                    sub_1D0C51F2C(&v227, v173, v100);
                  }

                  v102 = sub_1D0B894B0(&v240, &v227);
                  if (v40 == 0.0)
                  {
                    v103 = 0;
                  }

                  else
                  {
                    v103 = v43;
                  }

                  if (v103 == 1)
                  {
                    v102.n128_f64[0] = v40;
                    sub_1D0C51FB4(&v240, v173, v102);
                    sub_1D0B894B0(&v240, v173);
                  }

                  if (v88)
                  {
                    v264 = 0x200000003;
                    v262 = &unk_1F4CE1E28;
                    v263 = xmmword_1D0E84740;
                    v265 = &v266;
                    v224 = 0x200000003;
                    v223 = xmmword_1D0E84740;
                    v222 = &unk_1F4CE1E28;
                    v225 = v226;
                    sub_1D0D93CC8(v173, &v262, 0);
                    sub_1D0D2D13C(v173, &v255);
                    sub_1D0D93CC8(v173, &v262, 1);
                    sub_1D0D2D13C(v173, &v245);
                    sub_1D0D93CC8(v173, &v222, 0);
                    sub_1D0D2D13C(v173, &v250);
                    sub_1D0D93CC8(v173, &v222, 1);
                    sub_1D0D2D13C(v173, &v240);
                    v200 = 0x100000002;
                    v199 = xmmword_1D0E83F60;
                    v198 = &unk_1F4CE0220;
                    v201 = &v202;
                    v202 = *(*(this + 29) + 1200);
                    if (!sub_1D0E2BA50(this + 7952, DWORD1(v263), &v262, &v222))
                    {
                      v167[3993] = 1;
                      *(this + 453) = v261;
                      sub_1D0B87544(&v203, this + 7960);
                      sub_1D0E29F10(v173);
                      _Q1 = v206[1];
                      _D3 = _Q1.f64[1];
                      __asm { FMLA            D2, D3, V1.D[1] }

                      v111 = sqrt(_D2);
                      if (fabs(v111) >= 2.22044605e-16)
                      {
                        v164 = vdupq_lane_s64(*&v111, 0);
                        v112 = vdivq_f64(_Q1, v164);
                        v113 = vdivq_f64(*v206, v164);
                      }

                      else
                      {
                        v112 = xmmword_1D0E7DCB0;
                        v113 = 0uLL;
                      }

                      v179 = v113;
                      v180 = v112;
                      v175 = *(a2 + 40);
                      v176 = *(a2 + 56);
                      v177 = *(a2 + 72);
                      v178 = *(a2 + 88);
                      *&v173[8] = *(a2 + 8);
                      v174 = *(a2 + 24);
                      v181 = *(*(this + 29) + 944);
                      v182 = 0;
                      v183 = 0;
                      v184 = 0;
                      v185 = v181;
                      v186 = 0;
                      v187 = 0;
                      v188 = v181;
                      v189 = 0;
                      v190 = v181;
                      v191 = v167[3992];
                      v192 = 1;
                      sub_1D0DD3320();
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v165 = *MEMORY[0x1E69E9840];
}

void sub_1D0BD81D8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a2;
  if (*(a3 + 8) == 1)
  {
    v10 = *(a3 + 24);
  }

  else
  {
    LOWORD(v128.__vftable) = 3;
    LOBYTE(v157) = 5;
    cnprint::CNPrinter::Print(&v128, &v157, "Attempted to access type of uninitialized GenericEvent.", a4, a5, a6, a7, a8, v118);
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

    v19 = *(v17 + 8) & 0x7FFFFFFFFFFFFFFFLL;
    if (v19 != (off_1F4CEF178 & 0x7FFFFFFFFFFFFFFFLL))
    {
      v19 = strcmp(v19, (off_1F4CEF178 & 0x7FFFFFFFFFFFFFFFLL));
      if (v19)
      {
        v128.__vftable = 0;
        std::bad_cast::bad_cast(&v128);
        v128.__vftable = &unk_1F4CE4880;
        sub_1D0DC7F8C();
      }
    }

    v20 = *(a3 + 16);
    v124 = *(v20 + 64);
    v123 = *(v20 + 48);
    v122 = *(v20 + 32);
    v121 = *(v20 + 16);
    *&v126[26] = *(v20 + 122);
    *&v126[16] = *(v20 + 112);
    *v126 = *(v20 + 96);
    v125 = *(v20 + 80);
    v127 = *(v20 + 144);
  }

  else
  {
    v157 = 3;
    LOBYTE(v164) = 5;
    if (*(a3 + 8) == 1)
    {
      v18 = *(a3 + 24);
    }

    else
    {
      LOWORD(v128.__vftable) = 3;
      v154[0] = 5;
      cnprint::CNPrinter::Print(&v128, v154, "Attempted to access type of uninitialized GenericEvent.", v11, v12, v13, v14, v15, v118);
      v18 = MEMORY[0x1E69E54A8];
    }

    cnprint::CNPrinter::Print(&v157, &v164, "Attempted to cast a GenericEvent of type %s to type %s.", v11, v12, v13, v14, v15, *(v18 + 8));
    *v126 = 0;
    *&v126[24] = 0;
    v121 = 0u;
    v122 = 0u;
    v123 = 0u;
    v124 = 0u;
    v125 = 0u;
    *&v126[8] = vdupq_n_s64(0x7FF8000000000000uLL);
    *&v126[32] = 0x7FF8000000000000uLL;
    v127 = 0x7FF8000000000000;
  }

  v22 = *(v9 + 288);
  v21 = *(v9 + 296);
  if (v21 == v22)
  {
    v23 = 0;
  }

  else
  {
    v23 = 28 * (v21 - v22) - 1;
  }

  v24 = *(v9 + 312);
  if (v23 == *(v9 + 320) + v24)
  {
    v53 = v24 >= 0x1C;
    v25 = v24 - 28;
    if (!v53)
    {
      v26 = *(v9 + 304);
      v27 = *(v9 + 280);
      if (v21 - v22 < (v26 - v27))
      {
        operator new();
      }

      if (v26 == v27)
      {
        v28 = 1;
      }

      else
      {
        v28 = (v26 - v27) >> 2;
      }

      sub_1D0C4E87C(v28);
    }

    *(v9 + 312) = v25;
    v128.__vftable = *v22;
    *(v9 + 288) = v22 + 1;
    v19 = sub_1D0C149C4((v9 + 280), &v128);
    v22 = *(v9 + 288);
    v21 = *(v9 + 296);
  }

  if (v21 == v22)
  {
    v30 = 0;
  }

  else
  {
    v29 = *(v9 + 320) + *(v9 + 312);
    v30 = &v22[v29 / 0x1C][6 * (v29 % 0x1C)];
  }

  *v30 = &unk_1F4CEEFA0;
  *(v30 + 56) = v124;
  *(v30 + 40) = v123;
  *(v30 + 24) = v122;
  *(v30 + 8) = v121;
  *(v30 + 114) = *&v126[26];
  *(v30 + 104) = *&v126[16];
  *(v30 + 88) = *v126;
  *(v30 + 72) = v125;
  *v30 = &unk_1F4CEF150;
  *(v30 + 136) = v127;
  v31 = *(v9 + 320);
  *(v9 + 320) = v31 + 1;
  if (v31 == -1)
  {
    if (cnprint::CNPrinter::GetLogLevel(v19) <= 1)
    {
      LOWORD(v128.__vftable) = 12;
      LOBYTE(v157) = 1;
      cnprint::CNPrinter::Print(&v128, &v157, "#WARNING,Prefilted pressure is empty", v32, v33, v34, v35, v36, v118);
    }

    return;
  }

  v37 = *(*(v9 + 288) + 8 * ((*(v9 + 312) + v31) / 0x1CuLL)) + 144 * ((*(v9 + 312) + v31) % 0x1CuLL);
  v38 = (*(*v37 + 16))(v37);
  v40 = v39;
  *&v168 = v38;
  *(&v168 + 1) = v39;
  v41 = *(*(v9 + 288) + 8 * (*(v9 + 312) / 0x1CuLL)) + 144 * (*(v9 + 312) % 0x1CuLL);
  v167[0] = (*(*v41 + 16))(v41);
  v167[1] = v42;
  v49 = *(v9 + 320);
  v50.i64[0] = *(*(*(v9 + 288) + 8 * ((v49 + *(v9 + 312) - 1) / 0x1C)) + 144 * ((v49 + *(v9 + 312) - 1) % 0x1C) + 136);
  v51 = *v50.i64 * 1000.0;
  v52 = (COERCE__INT64(fabs(*v50.i64 * 1000.0)) - 0x10000000000000) >> 53;
  v53 = COERCE__INT64(*v50.i64 * 1000.0) <= -1 || v52 >= 0x3FF;
  v54 = v53 && (COERCE__INT64(*v50.i64 * 1000.0) - 1) >= 0xFFFFFFFFFFFFFLL;
  v55 = v40;
  if (v54)
  {
    LOWORD(v128.__vftable) = 12;
    LOBYTE(v157) = 4;
    v119 = v40 + v38;
    cnprint::CNPrinter::Print(&v128, &v157, "time,%.3lf,Most recent pressure is invalid", v43, v44, v45, v46, v47, SLOBYTE(v119));
    return;
  }

  if (*(v9 + 272))
  {
    v56 = CNTimeSpan::operator-(&v168, (v9 + 240), v50, v48);
    *v50.i64 = v57 + v56;
    v58 = *(v9 + 232);
    v48.i64[0] = *(v58 + 1336);
    if (*v50.i64 > *v48.i64)
    {
      *(v9 + 240) = 0;
      *(v9 + 248) = 0;
      v50 = vdupq_n_s64(0x7FF8000000000000uLL);
      *(v9 + 256) = v50;
      *(v9 + 272) = 0;
    }
  }

  else
  {
    v58 = *(v9 + 232);
  }

  v59 = CNTimeSpan::operator-(&v168, v167, v50, v48);
  if (v60 + v59 > *(v58 + 1344))
  {
    v164 = 0;
    v165 = 0;
    v166 = 0;
    sub_1D0C4D030(&v164, v49);
    v61 = *(v9 + 288);
    if (*(v9 + 296) != v61)
    {
      v62 = *(v9 + 312);
      v63 = (v61 + 8 * (v62 / 0x1C));
      v64 = *v63;
      v65 = *v63 + 144 * (v62 % 0x1C);
      v66 = *(v61 + 8 * ((*(v9 + 320) + v62) / 0x1C)) + 144 * ((*(v9 + 320) + v62) % 0x1C);
      if (v65 != v66)
      {
        v67 = v164;
        do
        {
          *v67 = vabdd_f64(*(v65 + 104), *(v65 + 136));
          v65 += 144;
          if (v65 - v64 == 4032)
          {
            v68 = v63[1];
            ++v63;
            v64 = v68;
            v65 = v68;
          }

          ++v67;
        }

        while (v65 != v66);
      }
    }

    v160 = 0;
    v161 = 0;
    v162 = 0;
    LOBYTE(v157) = 0;
    v158 = 0;
    v159 = 1;
    sub_1D0BC3E34(&v160);
    v163 = 1;
    v73 = v164;
    v74 = v165;
    while (v73 != v74)
    {
      if (sub_1D0BC3F08(&v157, v73, 1.0))
      {
        LOWORD(v128.__vftable) = 12;
        v154[0] = 4;
        cnprint::CNPrinter::Print(&v128, v154, "RavenDeltaAltitudeActiveObject failed to add noise sample %.3lf to OnlineRobustStatisticsEstimator", v75, v76, v77, v78, v79, *v73);
        (*(*v9 + 40))(v9);
        goto LABEL_94;
      }

      ++v73;
    }

    v69.i64[0] = 0x4049000000000000;
    sub_1D0BC4124(&v157, v69, v70, v71, v72);
    v80 = *(v9 + 232);
    v81 = *(v9 + 288);
    v82 = *(v9 + 296);
    if (v83 < *(v80 + 1352))
    {
      if (v82 == v81)
      {
        v89 = v164;
      }

      else
      {
        v84 = *(v9 + 312);
        v85 = &v81[v84 / 0x1C];
        v86 = *v85;
        v87 = *v85 + 144 * (v84 % 0x1C);
        v88 = v81[(*(v9 + 320) + v84) / 0x1C] + 144 * ((*(v9 + 320) + v84) % 0x1C);
        v89 = v164;
        if (v87 != v88)
        {
          v90 = v164;
          do
          {
            *v90 = *(v87 + 104) - *(v87 + 136);
            v87 += 144;
            if (v87 - v86 == 4032)
            {
              v91 = v85[1];
              ++v85;
              v86 = v91;
              v87 = v91;
            }

            ++v90;
          }

          while (v87 != v88);
        }
      }

      v154[0] = 0;
      v155 = 0u;
      memset(v156, 0, sizeof(v156));
      v92 = v165;
      if (v89 != v165)
      {
        while (!sub_1D0B8954C(v154, v89, 1.0))
        {
          if (++v89 == v92)
          {
            v98 = *&v156[5];
            v80 = *(v9 + 232);
            goto LABEL_72;
          }
        }

        LOWORD(v128.__vftable) = 12;
        v153 = 4;
        cnprint::CNPrinter::Print(&v128, &v153, "RavenDeltaAltitudeActiveObject failed to add noise sample %.3lf to OnlineStatisticsEstimator", v93, v94, v95, v96, v97, *v89);
        (*(*v9 + 40))(v9);
        goto LABEL_94;
      }

      v98 = 0.0;
LABEL_72:
      v104 = pow(v51 / 101325.0, 0.190263237);
      v105 = sqrt(v98) * 1000.0;
      if (v105 <= *(v80 + 720))
      {
        v105 = *(v80 + 720);
      }

      if (fabs(v105) < 2.22044605e-16)
      {
        LOWORD(v128.__vftable) = 12;
        v153 = 4;
        v120 = v55 + v38;
        cnprint::CNPrinter::Print(&v128, &v153, "time,%.3lf,Most recent pressure is invalid", v99, v100, v101, v102, v103, SLOBYTE(v120));
LABEL_94:
        if (v160)
        {
          v161 = v160;
          operator delete(v160);
        }

        if (v164)
        {
          v165 = v164;
          operator delete(v164);
        }

        return;
      }

      v106 = (v104 + -1.0) * -44330.7692;
      v107 = fabs((v106 + 44330.7692) * 0.190263237 / v51) * v105;
      if (*(v9 + 272) == 1)
      {
        v128.__vftable = &unk_1F4CEE8D0;
        v131 = 0;
        v132 = 0;
        v133 = 0;
        v134 = 0;
        v135 = 0;
        v136 = 0;
        v137 = 0;
        v138 = 0;
        v139 = 0x7FF8000000000000;
        v142 = 0;
        v143 = 0;
        v144 = 0;
        v145 = 0;
        v146 = 0;
        v147 = 0;
        v148 = 0;
        v149 = 0;
        v150 = 0x7FF8000000000000;
        v130 = 0;
        v129 = v168;
        v141 = 0;
        v140 = *(v9 + 240);
        v108 = sqrt(*(v9 + 264) * *(v9 + 264) + v107 * v107);
        v151 = v106 - *(v9 + 256);
        v152 = v108;
        sub_1D0C4D060();
      }

      *(v9 + 240) = v168;
      *(v9 + 256) = v106;
      *(v9 + 264) = v107;
      *(v9 + 272) = 1;
      v81 = *(v9 + 288);
      v82 = *(v9 + 296);
    }

    if (v82 != v81)
    {
      v109 = *(v9 + 312);
      v110 = &v81[v109 / 0x1C];
      v111 = v81[(*(v9 + 320) + v109) / 0x1C] + 144 * ((*(v9 + 320) + v109) % 0x1C);
      if (*v110 + 144 * (v109 % 0x1C) != v111)
      {
        v112 = (*v110 + 144 * (v109 % 0x1C));
        do
        {
          v113 = *v112;
          v112 += 18;
          (*v113)();
          if (v112 - *v110 == 4032)
          {
            v114 = v110[1];
            ++v110;
            v112 = v114;
          }
        }

        while (v112 != v111);
        v81 = *(v9 + 288);
        v82 = *(v9 + 296);
      }
    }

    *(v9 + 320) = 0;
    v115 = v82 - v81;
    if (v115 >= 3)
    {
      do
      {
        operator delete(*v81);
        v116 = *(v9 + 296);
        v81 = (*(v9 + 288) + 8);
        *(v9 + 288) = v81;
        v115 = (v116 - v81) >> 3;
      }

      while (v115 > 2);
    }

    if (v115 == 1)
    {
      v117 = 14;
    }

    else
    {
      if (v115 != 2)
      {
        goto LABEL_94;
      }

      v117 = 28;
    }

    *(v9 + 312) = v117;
    goto LABEL_94;
  }
}

void sub_1D0BD9058(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, std::exception a29)
{
  v31 = *(v29 - 216);
  if (v31)
  {
    *(v29 - 208) = v31;
    operator delete(v31);
  }

  v32 = *(v29 - 184);
  if (v32)
  {
    *(v29 - 176) = v32;
    operator delete(v32);
  }

  _Unwind_Resume(exception_object);
}

double raven::RavenDeviceAttitudeActiveObject::HandleEvent(raven::RavenDeviceAttitudeActiveObject *this, const raven::MountStateEvent *a2)
{
  if (*(this + 224))
  {
    if (*(this + 6920) != 1 || (*(this + 6832) & 0xFE) != 2)
    {
      v4 = *(a2 + 104);
      if (v4 > 3 || v4 == 1)
      {
        if ((*(this + 6723) & 1) == 0)
        {
          v21 = (*(*this + 40))(this);
          *(this + 6723) = 1;
          if (!cnprint::CNPrinter::GetLogLevel(v21))
          {
            LOWORD(__p[0]) = 12;
            LOBYTE(v34) = 0;
            v22 = (*(*a2 + 16))(a2);
            v30 = v23 + v22;
            cnprint::CNPrinter::Print(__p, &v34, "DevAtt,t,%.3lf, Engaged for becoming mounted.", v24, v25, v26, v27, v28, SLOBYTE(v30));
          }
        }
      }

      else if (*(this + 6723) == 1)
      {
        *(this + 6723) = 0;
        if (!cnprint::CNPrinter::GetLogLevel(this))
        {
          LOWORD(__p[0]) = 12;
          LOBYTE(v34) = 0;
          v6 = (*(*a2 + 16))(a2);
          v29 = v7 + v6;
          cnprint::CNPrinter::Print(__p, &v34, "DevAtt,t,%.3lf, Reset because of not being mounted.", v8, v9, v10, v11, v12, SLOBYTE(v29));
        }

        v13 = *(*this + 40);

        v13(this);
      }
    }
  }

  else
  {
    v34 = 12;
    v33 = 3;
    (*(*this + 16))(__p, this, a2);
    if (v32 >= 0)
    {
      v20 = __p;
    }

    else
    {
      LOBYTE(v20) = __p[0];
    }

    cnprint::CNPrinter::Print(&v34, &v33, "Warning: %s is not configured yet.", v15, v16, v17, v18, v19, v20);
    if (v32 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return result;
}

void sub_1D0BD93A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t raven::MovingStateChecker::HandleEvent(raven::MovingStateChecker *this, const raven::MovingStateEvent *a2, raven::MovingStateEvent *a3)
{
  if ((*(this + 8) & 1) == 0)
  {
    v39 = 12;
    v38 = 4;
    v20 = (*(*a2 + 16))(a2);
    v34 = v21 + v20;
    cnprint::CNPrinter::Print(&v39, &v38, "t,%.3lf,MovingStateChecker,Checker is not configured. Cannot perform checks", v22, v23, v24, v25, v26, SLOBYTE(v34));
    return 0xFFFFFFFFLL;
  }

  if (*(a2 + 104) >= 4u)
  {
    v37 = 12;
    v36 = 4;
    v27 = (*(*a2 + 16))(a2);
    v35 = v28 + v27;
    cnprint::CNPrinter::Print(&v37, &v36, "t,%.3lf, Warning: Invalid type detected in moving state integrity check.", v29, v30, v31, v32, v33, SLOBYTE(v35));
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
  if (v12 >= 0.0 && v12 <= 1.0 && (*(a2 + 17) & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && fabs(v9 + v3 + v6 + v12 + -1.0) < 2.22044605e-16)
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

void sub_1D0BD9624(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a2;
  if (*(a3 + 8) == 1)
  {
    v10 = *(a3 + 24);
  }

  else
  {
    LOWORD(v28.__vftable) = 3;
    LOBYTE(v26) = 5;
    cnprint::CNPrinter::Print(&v28, &v26, "Attempted to access type of uninitialized GenericEvent.", a4, a5, a6, a7, a8, v24);
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
    if (v19 != (off_1F4CEE9D0 & 0x7FFFFFFFFFFFFFFFLL) && strcmp(v19, (off_1F4CEE9D0 & 0x7FFFFFFFFFFFFFFFLL)))
    {
      v28.__vftable = 0;
      std::bad_cast::bad_cast(&v28);
      v28.__vftable = &unk_1F4CE4880;
      sub_1D0DC7F8C();
    }

    v20 = *(a3 + 16);
    if ((*(v20 + 112) & 1) != 0 && fabs(*(v20 + 120)) < 0.000001 && fabs(*(v20 + 128)) < 0.000001)
    {
      v21 = *(v20 + 152);
      if ((v21 + 500) <= 0x3E8)
      {
        v22 = v21 - *(v20 + 176);
        if (v22 < 0)
        {
          v22 = -v22;
        }

        if (v22 <= 1 && *(v20 + 113) == 1)
        {

          memmove((v9 + 328), (v20 + 112), 0x44uLL);
        }
      }
    }
  }

  else
  {
    v26 = 3;
    v25 = 5;
    if (*(a3 + 8) == 1)
    {
      v18 = *(a3 + 24);
    }

    else
    {
      LOWORD(v28.__vftable) = 3;
      v27 = 5;
      cnprint::CNPrinter::Print(&v28, &v27, "Attempted to access type of uninitialized GenericEvent.", v11, v12, v13, v14, v15, v24);
      v18 = MEMORY[0x1E69E54A8];
    }

    cnprint::CNPrinter::Print(&v26, &v25, "Attempted to cast a GenericEvent of type %s to type %s.", v11, v12, v13, v14, v15, *(v18 + 8));
  }
}

void CoreNavigation::CLP::LogEntry::PrivateData::Timer::SharedDtor(CoreNavigation::CLP::LogEntry::PrivateData::Timer *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::PrivateData::Timer::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      v3 = *(*v2 + 8);

      v3();
    }
  }
}

void CoreNavigation::CLP::LogEntry::PrivateData::Timer::~Timer(CoreNavigation::CLP::LogEntry::PrivateData::Timer *this)
{
  *this = &unk_1F4CDA4A0;
  CoreNavigation::CLP::LogEntry::PrivateData::Timer::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::Timer::~Timer(this);

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0BD9994(uint64_t a1, int a2, int a3)
{
  *(a1 + 24) = 0x100000057;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F4CE37D8;
  *(a1 + 40) = 0;
  *(a1 + 32) = 0;
  if (a2 < 0)
  {
    v3 = "nr >= 0";
    v4 = 419;
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      *(a1 + 8) = a2;
      *(a1 + 12) = a3;
      *(a1 + 16) = a3 * a2;
      *(a1 + 20) = a2;
      sub_1D0BD9A84();
    }

    v3 = "nc >= 0";
    v4 = 420;
  }

  __assert_rtn("CNMatrix", "cnmatrix.h", v4, v3);
}

void sub_1D0BD9A50(_Unwind_Exception *a1)
{
  sub_1D0BD9B48(v2);
  *v1 = &unk_1F4CE3830;
  _Unwind_Resume(a1);
}

uint64_t *sub_1D0BD9B48(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = v2 - 16;
    v4 = *(v2 - 8);
    if (v4)
    {
      v5 = v4 << 6;
      v6 = v2 - 64;
      do
      {
        *(v6 + v5) = &unk_1F4CD5E28;
        v5 -= 64;
      }

      while (v5);
    }

    MEMORY[0x1D387EC80](v3, 0x1081C8052DD7B27);
  }

  return a1;
}

uint64_t sub_1D0BD9BC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  MEMORY[0x1EEE9AC00](a1, a2, a3, a4);
  v209 = v27;
  v210 = v26;
  v214 = v28;
  v30 = v29;
  v216 = v31;
  v217 = v32;
  v218 = v33;
  v35 = v34;
  if (a19 >= 1)
  {
    v36 = 0;
    do
    {
      sub_1D0BBA094(&v225, *(a11 + 32) + v36);
      v36 += 64;
    }

    while (a19 << 6 != v36);
    v37 = 0;
    v38 = 0;
    do
    {
      sub_1D0BBA094(&v225, *(a13 + 32) + v38);
      sub_1D0BE0DE8(&v225, *(a14 + 32) + v37);
      sub_1D0BE0DE8(&v225, *(a14 + 32) + v37);
      v38 += 64;
      v37 += 112;
    }

    while (a19 << 6 != v38);
  }

  sub_1D0B9FC58(a16, ":", 0, &__p);
  v227 = v228;
  v39 = HIDWORD(__p.__r_.__value_.__r.__words[1]);
  LODWORD(v226.__r_.__value_.__l.__data_) = 1;
  HIDWORD(v226.__r_.__value_.__r.__words[0]) = HIDWORD(__p.__r_.__value_.__r.__words[1]);
  HIDWORD(v226.__r_.__value_.__r.__words[2]) = 1;
  LODWORD(v226.__r_.__value_.__r.__words[1]) = HIDWORD(__p.__r_.__value_.__r.__words[1]);
  *(&v226.__r_.__value_.__r.__words[1] + 4) = 0x200000001;
  if (HIDWORD(__p.__r_.__value_.__r.__words[1]))
  {
    v40 = 0;
    v41 = v231;
    v42 = __p.__r_.__value_.__r.__words[1];
    v43 = LODWORD(__p.__r_.__value_.__r.__words[1]) - 1;
    v44 = 1;
    do
    {
      v45 = *(v41 + v42 * v40);
      v46 = v44;
      v47 = v43;
      if (v42 >= 2)
      {
        do
        {
          v45 += *(v41 + v46++);
          --v47;
        }

        while (v47);
      }

      v228[v40++] = v45;
      v44 += v42;
    }

    while (v40 != v39);
  }

  sub_1D0B9FC58(a16, ":", 1, &__p);
  v227 = v228;
  v48 = HIDWORD(__p.__r_.__value_.__r.__words[1]);
  LODWORD(v226.__r_.__value_.__l.__data_) = 1;
  HIDWORD(v226.__r_.__value_.__r.__words[0]) = HIDWORD(__p.__r_.__value_.__r.__words[1]);
  HIDWORD(v226.__r_.__value_.__r.__words[2]) = 1;
  LODWORD(v226.__r_.__value_.__r.__words[1]) = HIDWORD(__p.__r_.__value_.__r.__words[1]);
  *(&v226.__r_.__value_.__r.__words[1] + 4) = 0x200000001;
  if (HIDWORD(__p.__r_.__value_.__r.__words[1]))
  {
    v49 = 0;
    v50 = v231;
    v51 = __p.__r_.__value_.__r.__words[1];
    v52 = LODWORD(__p.__r_.__value_.__r.__words[1]) - 1;
    v53 = 1;
    do
    {
      v54 = *(v50 + v51 * v49);
      v55 = v53;
      v56 = v52;
      if (v51 >= 2)
      {
        do
        {
          v54 += *(v50 + v55++);
          --v56;
        }

        while (v56);
      }

      v228[v49++] = v54;
      v53 += v51;
    }

    while (v49 != v48);
  }

  v226.__r_.__value_.__r.__words[2] = 0x100000002;
  *&v226.__r_.__value_.__l.__data_ = xmmword_1D0E83F60;
  v225 = &unk_1F4CE0EA8;
  v227 = v228;
  LogLevel = sub_1D0BBCB88(a23, 1, &v225);
  v58 = *(a26 + 64);
  v211 = *(a26 + 32);
  v208 = *(a26 + 33);
  v59 = *(a26 + 40);
  v204 = *(a26 + 88);
  v60 = *(a26 + 72);
  v205 = *(a26 + 96);
  v202 = *(a26 + 80);
  v203 = *(a26 + 56);
  if (a19 >= 1)
  {
    v61 = 0;
    do
    {
      v62 = *(*(a9 + 32) + 4 * v61);
      v63 = *(*(a12 + 32) + 4 * v61);
      if (v62 <= v63)
      {
        ++v61;
      }

      else
      {
        LOWORD(v225) = 2;
        __p.__r_.__value_.__s.__data_[0] = 2;
        cnprint::CNLogFormatter::FormatWarning((v35 + 1704), "%d measurements > %d noise sources in measurement function %d.", v62, v63, ++v61);
        if (*(v35 + 1727) >= 0)
        {
          LOBYTE(v69) = v35 - 88;
        }

        else
        {
          v69 = *(v35 + 1704);
        }

        cnprint::CNPrinter::Print(&v225, &__p, "%s", v64, v65, v66, v67, v68, v69);
      }
    }

    while (v61 != a19);
  }

  if (*a26)
  {
    LogLevel = cnprint::CNPrinter::GetLogLevel(LogLevel);
    if (LogLevel <= 1)
    {
      LOWORD(v225) = 2;
      __p.__r_.__value_.__s.__data_[0] = 1;
      v70 = cnprint::CNLogFormatter::FormatWarning((v35 + 1704), "PredictAndUpdate is only compatible with NewtonRaphson solver.");
      if (*(v35 + 1727) >= 0)
      {
        LOBYTE(v76) = v70;
      }

      else
      {
        v76 = *(v35 + 1704);
      }

      cnprint::CNPrinter::Print(&v225, &__p, "%s", v71, v72, v73, v74, v75, v76);
    }
  }

  v77 = v218;
  if (*(a26 + 4) >= 2 && cnprint::CNPrinter::GetLogLevel(LogLevel) <= 1)
  {
    LOWORD(v225) = 2;
    __p.__r_.__value_.__s.__data_[0] = 1;
    v78 = cnprint::CNLogFormatter::FormatWarning((v35 + 1704), "PredictAndUpdate is only compatible with single-iteration least squares solutions.");
    if (*(v35 + 1727) >= 0)
    {
      LOBYTE(v84) = v78;
    }

    else
    {
      v84 = *(v35 + 1704);
    }

    cnprint::CNPrinter::Print(&v225, &__p, "%s", v79, v80, v81, v82, v83, v84);
  }

  v85 = *(a26 + 8);
  v226.__r_.__value_.__r.__words[2] = 0x100000057;
  *&v226.__r_.__value_.__l.__data_ = xmmword_1D0E84400;
  v225 = &unk_1F4CE0470;
  v227 = v228;
  v86 = sub_1D0BBCB88(a9, 1, &v225);
  if (v85 < *v227)
  {
    v86 = cnprint::CNPrinter::GetLogLevel(v86);
    if (v86 <= 1)
    {
      LOWORD(v225) = 2;
      __p.__r_.__value_.__s.__data_[0] = 1;
      v87 = cnprint::CNLogFormatter::FormatWarning((v35 + 1704), "PredictAndUpdate is only compatible with QR factorizations of unconstrained size.");
      if (*(v35 + 1727) >= 0)
      {
        LOBYTE(v93) = v87;
      }

      else
      {
        v93 = *(v35 + 1704);
      }

      cnprint::CNPrinter::Print(&v225, &__p, "%s", v88, v89, v90, v91, v92, v93);
    }
  }

  if (*(a26 + 89) == 1)
  {
    v86 = cnprint::CNPrinter::GetLogLevel(v86);
    if (v86 <= 1)
    {
      LOWORD(v225) = 2;
      __p.__r_.__value_.__s.__data_[0] = 1;
      v94 = cnprint::CNLogFormatter::FormatWarning((v35 + 1704), "PredictAndUpdate is only compatible with dense prediction.");
      if (*(v35 + 1727) >= 0)
      {
        LOBYTE(v100) = v94;
      }

      else
      {
        v100 = *(v35 + 1704);
      }

      cnprint::CNPrinter::Print(&v225, &__p, "%s", v95, v96, v97, v98, v99, v100);
    }
  }

  if ((v211 & 1) == 0 && v208 && cnprint::CNPrinter::GetLogLevel(v86) <= 1)
  {
    LOWORD(v225) = 2;
    __p.__r_.__value_.__s.__data_[0] = 1;
    v101 = cnprint::CNLogFormatter::FormatWarning((v35 + 1704), "Local hypothesis testing implies global hypothesis testing.  Global hypothesis testing will be enabled.");
    if (*(v35 + 1727) >= 0)
    {
      LOBYTE(v107) = v101;
    }

    else
    {
      v107 = *(v35 + 1704);
    }

    cnprint::CNPrinter::Print(&v225, &__p, "%s", v102, v103, v104, v105, v106, v107);
  }

  if (*(v217 + 8) && *(v217 + 12))
  {
    v108 = v35 + 8;
    v109 = v217;
  }

  else
  {
    if ((v218 & 0x80000000) != 0)
    {
      __assert_rtn("Zeros", "cnmatrix.h", 3098, "nr >= 0");
    }

    v226.__r_.__value_.__r.__words[2] = 0x100000008;
    v225 = &unk_1F4CE4320;
    v227 = v228;
    v226.__r_.__value_.__r.__words[0] = v218 | 0x100000000;
    LODWORD(v226.__r_.__value_.__r.__words[1]) = v218;
    HIDWORD(v226.__r_.__value_.__r.__words[1]) = v218;
    if (v218 > 3)
    {
      v110 = &v228[2 * v218];
      bzero(v228, 16 * ((v218 - 1) >> 1));
      *(v110 - 2) = 0;
      *(v110 - 1) = 0;
    }

    else if (v218)
    {
      bzero(v228, 8 * v218);
    }

    v108 = v35 + 8;
    v109 = &v225;
  }

  sub_1D0B894B0(v108, v109);
  v111 = v210;
  if (*(v210 + 8) && *(v210 + 12))
  {
    v112 = v35 + 112;
  }

  else
  {
    if ((v218 & 0x80000000) != 0)
    {
      __assert_rtn("Zeros", "cnmatrix.h", 3056, "n >= 0");
    }

    v226.__r_.__value_.__r.__words[2] = 0x800000008;
    v225 = &unk_1F4CE43B0;
    v227 = v228;
    v113 = v218 * v218;
    LODWORD(v226.__r_.__value_.__l.__data_) = v218;
    HIDWORD(v226.__r_.__value_.__r.__words[0]) = v218;
    LODWORD(v226.__r_.__value_.__r.__words[1]) = v218 * v218;
    HIDWORD(v226.__r_.__value_.__r.__words[1]) = v218;
    if ((v218 * v218) > 3)
    {
      v114 = &v228[2 * v113];
      bzero(v228, 16 * ((v113 - 1) >> 1));
      *(v114 - 2) = 0;
      *(v114 - 1) = 0;
    }

    else if (v113 >= 1)
    {
      bzero(v228, 8 * v218 * v218);
    }

    v112 = v35 + 112;
    v111 = &v225;
  }

  sub_1D0B894B0(v112, v111);
  if (!*(v216 + 8) || !*(v216 + 12))
  {
    v226.__r_.__value_.__r.__words[2] = 0x100000008;
    *&v226.__r_.__value_.__l.__data_ = xmmword_1D0E84520;
    v225 = &unk_1F4CE4320;
    v227 = v228;
    sub_1D0B89390(v35 + 112, v35 + 8, &v225);
    sub_1D0B894B0(v35 + 664, &v225);
  }

  if ((v218 & 0x80000000) != 0)
  {
    __assert_rtn("Zeros", "cnmatrix.h", 3099, "nc >= 0");
  }

  v226.__r_.__value_.__r.__words[2] = 0x800000008;
  v225 = &unk_1F4CE43B0;
  v227 = v228;
  v115 = v30 * v218;
  v226.__r_.__value_.__r.__words[0] = __PAIR64__(v218, v30);
  LODWORD(v226.__r_.__value_.__r.__words[1]) = v30 * v218;
  HIDWORD(v226.__r_.__value_.__r.__words[1]) = v30;
  if ((v30 * v218) > 3)
  {
    v116 = &v228[2 * v115];
    bzero(v228, 16 * ((v115 - 1) >> 1));
    *(v116 - 2) = 0;
    *(v116 - 1) = 0;
  }

  else if (v115 >= 1)
  {
    bzero(v228, 8 * v30 * v218);
  }

  sub_1D0B894B0(v35 + 1752, &v225);
  v226.__r_.__value_.__r.__words[2] = 0x100000008;
  v225 = &unk_1F4CE4320;
  v227 = v228;
  v226.__r_.__value_.__r.__words[0] = v30 | 0x100000000;
  LODWORD(v226.__r_.__value_.__r.__words[1]) = v30;
  HIDWORD(v226.__r_.__value_.__r.__words[1]) = v30;
  if (v30 > 3)
  {
    v117 = &v228[2 * v30];
    bzero(v228, 16 * ((v30 - 1) >> 1));
    *(v117 - 2) = 0;
    *(v117 - 1) = 0;
  }

  else if (v30)
  {
    bzero(v228, 8 * v30);
  }

  sub_1D0B894B0(v35 + 2304, &v225);
  sub_1D0B894B0(v35 + 2408, v209);
  *(v35 + 1540) = 0;
  *(v35 + 1536) = 0;
  v226.__r_.__value_.__r.__words[2] = 0x100000057;
  *&v226.__r_.__value_.__l.__data_ = xmmword_1D0E84400;
  v225 = &unk_1F4CE0470;
  v227 = v228;
  sub_1D0BBCB88(a9, 1, &v225);
  v118 = *v227;
  if (*v227 < 0x58)
  {
    v206 = v30 * v218;
    v207 = *v227;
    v128 = *(a21 + 8);
    v127 = *(a21 + 12);
    if (v128 <= v127)
    {
      v129 = *(a21 + 12);
    }

    else
    {
      v129 = *(a21 + 8);
    }

    if (v128 && v127 && v129)
    {
      v131 = *(a9 + 8);
      v130 = *(a9 + 12);
      v132 = v131 <= v130 ? *(a9 + 12) : *(a9 + 8);
      if (!v131 || !v130 || v132 <= v129)
      {
        v226.__r_.__value_.__r.__words[2] = 0x100000057;
        *&v226.__r_.__value_.__l.__data_ = xmmword_1D0E84400;
        v225 = &unk_1F4CE0470;
        v227 = v228;
        sub_1D0BBCB88(a9, 1, &v225);
        sub_1D0BA196C((v35 + 1680));
        v189 = *(a9 + 8);
        if (v189)
        {
          v190 = *(a9 + 12);
          if (v190)
          {
            if (v190 | v189)
            {
              v191 = 0;
              v192 = *(a9 + 32);
              do
              {
                v193 = v191;
                if (*(v192 + 4 * v191) >= 1)
                {
                  v194 = 0;
                  do
                  {
                    v195 = *(*(a21 + 32) + 8 * v193);
                    LODWORD(v225) = *(v195 + 8);
                    if (*(v195 + 39) < 0)
                    {
                      sub_1D0BC39B4(&v226, *(v195 + 16), *(v195 + 24));
                      v192 = *(a9 + 32);
                    }

                    else
                    {
                      v196 = *(v195 + 16);
                      v226.__r_.__value_.__r.__words[2] = *(v195 + 32);
                      *&v226.__r_.__value_.__l.__data_ = v196;
                    }

                    if (*(v192 + 4 * v193) >= 2)
                    {
                      std::to_string(&__p, v194);
                      v197 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
                      v198 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : __p.__r_.__value_.__l.__size_;
                      std::string::append(&v226, v197, v198);
                      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(__p.__r_.__value_.__l.__data_);
                      }
                    }

                    sub_1D0BBCC94(v35 + 1680, &v225);
                    if (SHIBYTE(v226.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v226.__r_.__value_.__l.__data_);
                    }

                    ++v194;
                    v192 = *(a9 + 32);
                  }

                  while (v194 < *(v192 + 4 * v193));
                  v189 = *(a9 + 8);
                  v190 = *(a9 + 12);
                }

                if (v189 <= v190)
                {
                  v199 = v190;
                }

                else
                {
                  v199 = v189;
                }

                if (!v189)
                {
                  break;
                }

                if (!v190)
                {
                  break;
                }

                v191 = v193 + 1;
              }

              while (v199 > v193 + 1);
            }
          }
        }
      }
    }

    sub_1D0BA196C((v35 + 1656));
    sub_1D0BA196C((v35 + 1632));
    sub_1D0BA1824(v298, v217);
    sub_1D0BA1824(&v297, v216);
    sub_1D0BA1824(v296, v214);
    v293 = 0x100000008;
    v288 = &unk_1F4CE4320;
    v289 = v218;
    v290 = 1;
    v291 = v218;
    v292 = v218;
    v294 = &v295;
    v285 = 0x800000008;
    v280 = &unk_1F4CE43B0;
    v133 = v218 * v218;
    v286 = v287;
    v281 = v218;
    v282 = v218;
    v283 = v218 * v218;
    v284 = v218;
    if ((v218 * v218) > 3)
    {
      v135 = &v287[v133];
      bzero(v287, 16 * ((v133 - 1) >> 1));
      *(v135 - 2) = 0;
      *(v135 - 1) = 0;
      v134 = v30 * v218;
    }

    else
    {
      v134 = v30 * v218;
      if (v133 >= 1)
      {
        bzero(v287, 8 * v218 * v218);
      }
    }

    v277 = 0x800000008;
    v272 = &unk_1F4CE43B0;
    v278 = v279;
    v273 = v218;
    v274 = v218;
    v275 = v218 * v218;
    v276 = v218;
    if (v133 > 3)
    {
      v136 = &v279[v133];
      bzero(v279, 16 * ((v133 - 1) >> 1));
      *(v136 - 2) = 0;
      *(v136 - 1) = 0;
    }

    else if (v133 >= 1)
    {
      bzero(v279, 8 * v218 * v218);
    }

    v269 = 0x800000008;
    v264 = &unk_1F4CE43B0;
    v270 = v271;
    v265 = v218;
    v266 = v30;
    v267 = v134;
    v268 = v218;
    if (v134 > 3)
    {
      v137 = &v271[v134];
      bzero(v271, 16 * ((v134 - 1) >> 1));
      *(v137 - 2) = 0;
      *(v137 - 1) = 0;
    }

    else if (v134 >= 1)
    {
      bzero(v271, 8 * v134);
    }

    v261 = 0x100000008;
    v260 = xmmword_1D0E84520;
    v259 = &unk_1F4CE43F8;
    v262 = &v263;
    v256 = 0x100000008;
    v255 = xmmword_1D0E84520;
    v254 = &unk_1F4CE43F8;
    v257 = &v258;
    if (a15 < 1)
    {
      goto LABEL_174;
    }

    v138 = 0;
    v215 = 0;
    v139 = 0;
    v140 = *(a16 + 32);
    v141 = 1.0;
    v213 = 1;
    v212 = vdupq_n_s64(4uLL);
    do
    {
      v142 = *(v140 + 4 * v138);
      v221 = 0x800000001;
      v219 = &unk_1F4CE13B8;
      v222 = v223;
      if (v142 == 1)
      {
        v143 = 0;
        *&v144 = 0x100000001;
        *(&v144 + 1) = 0x100000001;
        v220 = v144;
        v223[0] = 0;
        v145 = 1;
        LODWORD(v142) = 1;
      }

      else if (v142 <= 0)
      {
        v145 = 0;
        LODWORD(v142) = 0;
        v220 = 0uLL;
        v143 = 1;
      }

      else
      {
        v146 = 0;
        LODWORD(v220) = 1;
        DWORD1(v220) = v142;
        *(&v220 + 1) = v142 | 0x100000000;
        v147 = v224;
        v148 = xmmword_1D0E7DD30;
        v149 = xmmword_1D0E84440;
        v150 = vdupq_n_s64(v142 - 1);
        do
        {
          v151 = vmovn_s64(vcgeq_u64(v150, v148));
          if (vuzp1_s16(v151, *v148.i8).u8[0])
          {
            *(v147 - 3) = v146;
          }

          if (vuzp1_s16(v151, *&v148).i8[2])
          {
            *(v147 - 2) = v146 + 1;
          }

          if (vuzp1_s16(*&v148, vmovn_s64(vcgeq_u64(v150, *&v149))).i32[1])
          {
            *(v147 - 1) = v146 + 2;
            *v147 = v146 + 3;
          }

          v146 += 4;
          v152 = vdupq_n_s64(4uLL);
          v149 = vaddq_s64(v149, v152);
          v148 = vaddq_s64(v148, v152);
          v147 += 4;
        }

        while (((v142 + 3) & 0xFFFFFFFC) != v146);
        v143 = 0;
        v145 = 1;
      }

      v230 = 0x100000008;
      __p.__r_.__value_.__r.__words[0] = &unk_1F4CE43F8;
      v231 = v232;
      __p.__r_.__value_.__l.__size_ = __PAIR64__(v145, v142);
      LODWORD(__p.__r_.__value_.__r.__words[2]) = v142 * v145;
      HIDWORD(__p.__r_.__value_.__r.__words[2]) = v142;
      if (v142)
      {
        v153 = 0;
        v154 = 0;
        do
        {
          if ((v143 & 1) == 0)
          {
            v155 = 0;
            do
            {
              v232[v154 + HIDWORD(__p.__r_.__value_.__r.__words[2]) * v155] = v223[v153 + v155];
              ++v155;
            }

            while (v145 != v155);
          }

          ++v154;
          v153 += v145;
        }

        while (v154 != v142);
        v156 = __p.__r_.__value_.__r.__words[1];
        v145 = HIDWORD(__p.__r_.__value_.__r.__words[1]);
      }

      else
      {
        v156 = 0;
      }

      v226.__r_.__value_.__r.__words[2] = 0x100000008;
      v225 = &unk_1F4CE43F8;
      v227 = v228;
      v226.__r_.__value_.__r.__words[0] = __PAIR64__(v145, v156);
      v157 = v156 * v145;
      v226.__r_.__value_.__l.__size_ = __PAIR64__(v156, v157);
      if (v157 >= 1)
      {
        v158 = v232;
        v159 = v228;
        do
        {
          v160 = *v158++;
          *v159++ = v160 + v215;
          --v157;
        }

        while (v157);
      }

      sub_1D0B9F5D4(&v259, &v225);
      v161 = *(*(a16 + 32) + 4 * (*(a16 + 20) + v138));
      v221 = 0x800000001;
      v219 = &unk_1F4CE13B8;
      v222 = v223;
      if (v161 == 1)
      {
        v162 = 0;
        *&v163 = 0x100000001;
        *(&v163 + 1) = 0x100000001;
        v220 = v163;
        v223[0] = 0;
        v164 = 1;
        LODWORD(v161) = 1;
      }

      else if (v161 <= 0)
      {
        v164 = 0;
        LODWORD(v161) = 0;
        v220 = 0uLL;
        v162 = 1;
      }

      else
      {
        v165 = 0;
        LODWORD(v220) = 1;
        DWORD1(v220) = v161;
        *(&v220 + 1) = v161 | 0x100000000;
        v166 = v224;
        v167 = xmmword_1D0E7DD30;
        v168 = xmmword_1D0E84440;
        v169 = vdupq_n_s64(v161 - 1);
        do
        {
          v170 = vmovn_s64(vcgeq_u64(v169, v167));
          if (vuzp1_s16(v170, *v167.i8).u8[0])
          {
            *(v166 - 3) = v165;
          }

          if (vuzp1_s16(v170, *&v167).i8[2])
          {
            *(v166 - 2) = v165 + 1;
          }

          if (vuzp1_s16(*&v167, vmovn_s64(vcgeq_u64(v169, *&v168))).i32[1])
          {
            *(v166 - 1) = v165 + 2;
            *v166 = v165 + 3;
          }

          v165 += 4;
          v168 = vaddq_s64(v168, v212);
          v167 = vaddq_s64(v167, v212);
          v166 += 4;
        }

        while (((v161 + 3) & 0xFFFFFFFC) != v165);
        v162 = 0;
        v164 = 1;
      }

      v230 = 0x100000008;
      __p.__r_.__value_.__r.__words[0] = &unk_1F4CE43F8;
      v231 = v232;
      __p.__r_.__value_.__l.__size_ = __PAIR64__(v164, v161);
      LODWORD(__p.__r_.__value_.__r.__words[2]) = v161 * v164;
      HIDWORD(__p.__r_.__value_.__r.__words[2]) = v161;
      if (v161)
      {
        v171 = 0;
        v172 = 0;
        do
        {
          if ((v162 & 1) == 0)
          {
            v173 = 0;
            do
            {
              v232[v172 + HIDWORD(__p.__r_.__value_.__r.__words[2]) * v173] = v223[v171 + v173];
              ++v173;
            }

            while (v164 != v173);
          }

          ++v172;
          v171 += v164;
        }

        while (v172 != v161);
        v174 = __p.__r_.__value_.__r.__words[1];
        v164 = HIDWORD(__p.__r_.__value_.__r.__words[1]);
      }

      else
      {
        v174 = 0;
      }

      v226.__r_.__value_.__r.__words[2] = 0x100000008;
      v225 = &unk_1F4CE43F8;
      v227 = v228;
      v226.__r_.__value_.__r.__words[0] = __PAIR64__(v164, v174);
      v175 = v174 * v164;
      v226.__r_.__value_.__l.__size_ = __PAIR64__(v174, v175);
      if (v175 >= 1)
      {
        v176 = v232;
        v177 = v228;
        do
        {
          v178 = *v176++;
          *v177++ = v178 + v139;
          --v175;
        }

        while (v175);
      }

      sub_1D0B9F5D4(&v254, &v225);
      v235 = 0x100000008;
      v234 = xmmword_1D0E84520;
      v233 = &unk_1F4CE4320;
      v236 = &v237;
      v230 = 0x800000008;
      *&__p.__r_.__value_.__r.__words[1] = xmmword_1D0E84510;
      __p.__r_.__value_.__r.__words[0] = &unk_1F4CE43B0;
      v231 = v232;
      v221 = 0x800000008;
      v219 = &unk_1F4CE43B0;
      v220 = xmmword_1D0E84510;
      v222 = v223;
      v179 = *(*(a17 + 32) + 8 * v138);
      sub_1D0BA4B2C(&v225, v298, &v259);
      sub_1D0BA4B2C(&v238, v296, &v254);
      if (v179(&v225, &v238, *(*(a18 + 32) + 8 * v138), &v233, &__p, &v219))
      {
        return 20;
      }

      sub_1D0BA4B2C(&v225, &v288, &v259);
      sub_1D0BA556C(&v225, &v233);
      sub_1D0BA16B8(&v225, &v280, &v259, &v259);
      sub_1D0B9F65C(&v225, &__p);
      v240 = 0x100000008;
      v239 = xmmword_1D0E84520;
      v238 = &unk_1F4CE43F8;
      v241 = v242;
      v226.__r_.__value_.__r.__words[2] = 0x800000008;
      *&v226.__r_.__value_.__l.__data_ = xmmword_1D0E84510;
      v225 = &unk_1F4CE43B0;
      v227 = v228;
      v180 = sub_1D0BEC1D8(&__p, &v238, &v225);
      v240 = 0x800000008;
      v239 = xmmword_1D0E84510;
      v238 = &unk_1F4CE43B0;
      v241 = v242;
      v251 = 0x100000008;
      v249 = &unk_1F4CE43F8;
      v250 = xmmword_1D0E84520;
      v252 = &v253;
      v246 = 0x100000008;
      v244 = &unk_1F4CE43F8;
      v245 = xmmword_1D0E84520;
      v247 = &v248;
      v226.__r_.__value_.__r.__words[2] = 0x100000020;
      *&v226.__r_.__value_.__l.__data_ = xmmword_1D0E84540;
      v225 = &unk_1F4CE3988;
      v227 = v228;
      v181 = sub_1D0BA5174(&__p, &v249, &v244, &v225, &v238);
      sub_1D0BA16B8(&v225, &v272, &v259, &v259);
      sub_1D0B9F65C(&v225, &v238);
      sub_1D0BA16B8(&v225, &v264, &v259, &v254);
      sub_1D0B9F65C(&v225, &v219);
      v141 = v141 * v180;
      v213 &= v181 <= v58;
      v140 = *(a16 + 32);
      v215 += *(v140 + 4 * v138);
      v139 += *(v140 + 4 * (*(a16 + 20) + v138++));
    }

    while (v138 != a15);
    v77 = v218;
    if (v213)
    {
LABEL_174:
      sub_1D0BF86BC(&v249, v207, 1);
      sub_1D0BF86BC(&v244, v207, 1);
      sub_1D0BF8804(&v243, v207, v77);
    }

    LOWORD(v225) = 2;
    __p.__r_.__value_.__s.__data_[0] = 2;
    v182 = cnprint::CNLogFormatter::FormatWarning((v35 + 1704), "PredictAndUpdate state Jacobian matrix is not invertible.");
    if (*(v35 + 1727) >= 0)
    {
      LOBYTE(v188) = v182;
    }

    else
    {
      v188 = *(v35 + 1704);
    }

    cnprint::CNPrinter::Print(&v225, &__p, "%s", v183, v184, v185, v186, v187, v188);
    sub_1D0B894B0(v35 + 768, &v288);
    sub_1D0B894B0(v35 + 872, v210);
    v226.__r_.__value_.__r.__words[2] = 0x100000008;
    *&v226.__r_.__value_.__l.__data_ = xmmword_1D0E84520;
    v225 = &unk_1F4CE4320;
    v227 = v228;
    sub_1D0B89390(v35 + 872, &v288, &v225);
    sub_1D0B894B0(v35 + 1424, &v225);
    v226.__r_.__value_.__r.__words[2] = 0x800000008;
    v225 = &unk_1F4CE43B0;
    v227 = v228;
    v226.__r_.__value_.__r.__words[0] = __PAIR64__(v218, v30);
    LODWORD(v226.__r_.__value_.__r.__words[1]) = v30 * v218;
    HIDWORD(v226.__r_.__value_.__r.__words[1]) = v30;
    if (v206 > 3)
    {
      v200 = &v228[2 * v206];
      bzero(v228, 16 * ((v206 - 1) >> 1));
      *(v200 - 2) = 0;
      *(v200 - 1) = 0;
    }

    else if (v206 >= 1)
    {
      bzero(v228, 8 * v206);
    }

    sub_1D0B894B0(v35 + 1752, &v225);
    v230 = 0x100000008;
    *&__p.__r_.__value_.__r.__words[1] = xmmword_1D0E84520;
    __p.__r_.__value_.__r.__words[0] = &unk_1F4CE4320;
    v231 = v232;
    sub_1D0B89390(v209, v296, &__p);
    v221 = 0x100000008;
    v219 = &unk_1F4CE4320;
    v220 = xmmword_1D0E84520;
    v222 = v223;
    sub_1D0B89390(v35 + 1752, &v288, &v219);
    v226.__r_.__value_.__r.__words[2] = 0x100000008;
    *&v226.__r_.__value_.__l.__data_ = xmmword_1D0E84520;
    v225 = &unk_1F4CE4320;
    v227 = v228;
    sub_1D0B88838(&__p, &v219, &v225);
    sub_1D0B894B0(v35 + 2304, &v225);
    sub_1D0B894B0(v35 + 2408, v209);
    *(v35 + 1540) = 1;
    return 21;
  }

  else
  {
    v119 = 2;
    LOWORD(v225) = 2;
    __p.__r_.__value_.__s.__data_[0] = 5;
    v120 = cnprint::CNLogFormatter::FormatGeneral((v35 + 1704), "SquareRootInformationFilter::PredictAndUpdate called with %u measurements vs. maximum %u", v118, 87);
    if (*(v35 + 1727) >= 0)
    {
      LOBYTE(v126) = v120;
    }

    else
    {
      v126 = *(v35 + 1704);
    }

    cnprint::CNPrinter::Print(&v225, &__p, "%s", v121, v122, v123, v124, v125, v126);
  }

  return v119;
}