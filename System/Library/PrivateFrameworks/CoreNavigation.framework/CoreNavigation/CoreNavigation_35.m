uint64_t sub_1D0D6A4AC(uint64_t a1)
{
  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

uint64_t raven::RavenPNTEstimator::HandleEvent(raven::RavenPNTEstimator *this, const raven::PositionEvent *a2)
{
  v96[14] = *MEMORY[0x1E69E9840];
  if (*(this + 57) != 1)
  {
    v5 = 0xFFFFFFFFLL;
    goto LABEL_9;
  }

  if (*(this + 58) != 1 || *(a2 + 280) == 0)
  {
    goto LABEL_7;
  }

  IsPositionMeasurementUsable = raven::RavenEstimator::IsPositionMeasurementUsable(this, a2);
  if (!IsPositionMeasurementUsable)
  {
    if (cnprint::CNPrinter::GetLogLevel(IsPositionMeasurementUsable) <= 1)
    {
      LOWORD(v81) = 12;
      LOBYTE(v96[0]) = 1;
      v65 = (*(*a2 + 16))(a2);
      *&v66 = v23;
      cnprint::CNLogFormatter::FormatGeneral(this + 2712, &v65, "WiFi position measurement not used in non-dense urban fitness case");
      if (*(this + 2735) >= 0)
      {
        LOBYTE(v29) = this - 104;
      }

      else
      {
        v29 = *(this + 339);
      }

      cnprint::CNPrinter::Print(&v81, v96, "%s", v24, v25, v26, v27, v28, v29);
    }

    goto LABEL_7;
  }

  if (*(this + 2760) == 1)
  {
    v9 = *(a2 + 200);
    if (v9 <= 0xB && ((1 << v9) & 0xC10) != 0 && raven::RavenPNTEstimator::IsUserStationary(this))
    {
LABEL_7:
      v5 = 0;
      goto LABEL_9;
    }
  }

  v92 = 0x100000003;
  v90 = &unk_1F4CDEB28;
  v91 = xmmword_1D0E7DCC0;
  v93 = &v94;
  v94 = *(a2 + 18);
  v95 = *(a2 + 38);
  v83 = 0x300000003;
  v81 = &unk_1F4CD5DD0;
  v82 = xmmword_1D0E76C10;
  v84 = v85;
  v11 = *(a2 + 41);
  v12 = *(a2 + 42);
  v85[0] = *(a2 + 312);
  *(&v10 + 1) = *(&v85[0] + 1);
  *&v10 = v11;
  v85[1] = v10;
  v13 = *(a2 + 344);
  v86 = v12;
  v87 = v13;
  v88 = v11;
  v89 = v13;
  v15 = *(a2 + 13);
  v14 = *(a2 + 14);
  *&v80 = v15;
  *(&v80 + 1) = v14;
  v62 = v14;
  sub_1D0BA002C(&v73, 6);
  v73 = &unk_1F4CE1C30;
  v76 = v80;
  *&v77 = this + 2920;
  *(&v77 + 1) = this + 14824;
  *&v78 = this + 14840;
  *(&v78 + 1) = this + 2760;
  v79 = this + 2800;
  v21 = *(a2 + 200);
  if (v21 != 14)
  {
LABEL_25:
    if (v21 == 15)
    {
      sub_1D0BA002C(&v65, 30);
      v72 = 0;
      v71 = 0u;
      v70 = 0u;
      v65 = &unk_1F4CE1C98;
      v74 = v66;
      std::string::operator=(&v75, (&v66 + 8));
      v76 = v69;
      v77 = v70;
      v78 = v71;
      v79 = v72;
      v65 = &unk_1F4CE4300;
      if (SHIBYTE(v68) < 0)
      {
        operator delete(*(&v66 + 1));
      }

      v76 = v80;
      *&v77 = this + 2920;
      *(&v77 + 1) = this + 14824;
      *&v78 = this + 14840;
      *(&v78 + 1) = this + 2760;
      v79 = this + 2800;
    }

    goto LABEL_29;
  }

  if (*(this + 58))
  {
    if (sub_1D0D755EC(this + 15256))
    {
      v67 = 0x10000001CLL;
      v65 = &unk_1F4CE0A20;
      v66 = xmmword_1D0E7DCC0;
      v68 = &v69;
      v22 = *(this + 1859);
      v69 = *v22;
      *&v70 = *(v22 + 2);
      sub_1D0D881B0(v64, 3, 3);
    }

    v21 = *(a2 + 200);
    goto LABEL_25;
  }

LABEL_29:
  if ((v82 & 0x80000000) != 0)
  {
    __assert_rtn("Zeros", "cnmatrix.h", 3098, "nr >= 0");
  }

  v67 = 0x100000003;
  v65 = &unk_1F4CDEB28;
  v30 = &v69;
  v68 = &v69;
  *&v66 = v82 | 0x100000000;
  DWORD2(v66) = v82;
  HIDWORD(v66) = v82;
  if (v82 > 3)
  {
    v32 = &v69 + 8 * v82;
    bzero(&v69, 16 * ((v82 - 1) >> 1));
    *(v32 - 2) = 0;
    *(v32 - 1) = 0;
    v31 = v62;
  }

  else
  {
    v31 = v62;
    if (v82)
    {
      bzero(&v69, 8 * v82);
    }
  }

  if (*(this + 61736))
  {
    if (*(this + 16918) == 174)
    {
      LOWORD(v96[0]) = 2;
      v63[0] = 2;
      v57 = v31 + v15;
      cnprint::CNPrinter::Print(v96, v63, "MeasurementAccumulator::AddMeasurement() failed - Out of space,t_meas,%.3lf", v16, v17, v18, v19, v20, SLOBYTE(v57));
    }

    else if (*(this + 61737) == 1)
    {
      if (cnprint::CNPrinter::GetLogLevel(v30) <= 1)
      {
        LOWORD(v96[0]) = 2;
        v63[0] = 1;
        v59 = v31 + v15;
        cnprint::CNPrinter::Print(v96, v63, "MeasurementAccumulator::AddMeasurement() failed - Locked,t_meas,%.3lf", v38, v39, v40, v41, v42, SLOBYTE(v59));
      }
    }

    else
    {
      v43 = sub_1D0B7C8AC(&v80, this + 7718);
      if (!v43)
      {
        v96[0] = 0;
        v96[1] = 0;
        sub_1D0D93064();
      }

      if (cnprint::CNPrinter::GetLogLevel(v43) <= 1)
      {
        LOWORD(v96[0]) = 2;
        v63[0] = 1;
        v60 = *(&v80 + 1) + v80;
        v61 = *(this + 7719) + *(this + 7718);
        cnprint::CNPrinter::Print(v96, v63, "MeasurementAccumulator::AddMeasurement() failed - Measurement too old,t_meas,%.3lf,t_start,%.3lf", v44, v45, v46, v47, v48, SLOBYTE(v60));
      }
    }
  }

  else if (cnprint::CNPrinter::GetLogLevel(v30) <= 1)
  {
    LOWORD(v96[0]) = 2;
    v63[0] = 1;
    v58 = v31 + v15;
    cnprint::CNPrinter::Print(v96, v63, "MeasurementAccumulator::AddMeasurement() failed - Not initialized,t_meas,%.3lf", v33, v34, v35, v36, v37, SLOBYTE(v58));
  }

  LOWORD(v96[0]) = 12;
  v63[0] = 4;
  v65 = (*(*a2 + 16))(a2);
  *&v66 = v49;
  v50 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, &v65, "Could not add measurement - position, src,%d", *(a2 + 200));
  if (*(this + 2735) >= 0)
  {
    LOBYTE(v56) = v50;
  }

  else
  {
    v56 = *(this + 339);
  }

  cnprint::CNPrinter::Print(v96, v63, "%s", v51, v52, v53, v54, v55, v56);
  v5 = 0xFFFFFFFFLL;
  v73 = &unk_1F4CE4300;
  if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v75.__r_.__value_.__l.__data_);
  }

LABEL_9:
  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

void sub_1D0D6B00C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1D0C537DC(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1D0D6B114(uint64_t a1, uint64_t a2, char **lpsrc, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!lpsrc || (v13 = **lpsrc, (v14 = __dynamic_cast(lpsrc, &unk_1F4CE42A0, &unk_1F4CE1BE8, 0)) == 0))
  {
    LOWORD(v32) = 12;
    v43.i8[0] = 4;
    v24 = MEMORY[0x30] + MEMORY[0x28];
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

  if (!v17 || !v16 || v18 != 26 || ((v20 = *(a2 + 8), v19 = *(a2 + 12), v20 <= v19) ? (v21 = *(a2 + 12)) : (v21 = *(a2 + 8)), !v20 || !v19 || v21 != 3))
  {
    LOWORD(v32) = 12;
    v43.i8[0] = 4;
    v24 = *(v14 + 6) + *(v14 + 5);
    goto LABEL_20;
  }

  if (!*(v14 + 7))
  {
    LOWORD(v32) = 12;
    v43.i8[0] = 4;
    v24 = *(v14 + 6) + *(v14 + 5);
    goto LABEL_20;
  }

  v92 = *(v14 + 40);
  v22 = *(v14 + 9);
  v91 = **(v14 + 8);
  sub_1D0D96A9C(v89, v22);
  v23 = *(v15 + 7);
  v86 = 0x10000001CLL;
  v85 = xmmword_1D0E843A0;
  v84 = &unk_1F4CE0A20;
  v87 = &v88;
  if (sub_1D0D85A88(&v92, &v91, v90, v23, *(v15 + 11), &v84))
  {
    LOWORD(v32) = 12;
    v43.i8[0] = 4;
    v24 = *(v15 + 6) + *(v15 + 5);
LABEL_20:
    cnprint::CNPrinter::Print(&v32, &v43, "time,%.3lf,h-function failure on line %d: %s() %s", a4, a5, a6, a7, a8, SLOBYTE(v24));
    return 0xFFFFFFFFLL;
  }

  v85 = xmmword_1D0E843A0;
  v81 = 0x10000001CLL;
  v79 = &unk_1F4CE0A20;
  v80 = xmmword_1D0E843A0;
  v82 = &v83;
  v43 = vdupq_n_s64(0x7FF8000000000000uLL);
  v44 = v43;
  v45 = v43;
  v46 = v43;
  v47 = v43;
  v48 = v43;
  v49 = v43;
  v50 = v43;
  v51 = v43;
  v52 = v43;
  v53 = v43;
  v54 = v43;
  v55 = v43;
  v56 = v43;
  v57 = v43;
  v58 = v43;
  v59 = v43;
  v60 = v43;
  v61 = v43;
  v62 = v43;
  v63 = v43;
  v64 = v43;
  v65 = v43;
  v66 = v43;
  v67 = v43;
  v68 = v43;
  v69 = v43;
  v70 = v43;
  v71 = v43;
  v72 = v43;
  v73 = v43;
  v74 = v43;
  v75 = v43;
  v76 = v43;
  v77 = v43;
  v78 = 0x7FF8000000000000;
  sub_1D0D85CD4(&v84, a1, &v79, &v43);
  *(a4 + 8) = xmmword_1D0E7DCC0;
  v26 = v82;
  v27 = *(a2 + 32);
  v28 = *(a4 + 32);
  *v28 = *v82 + *v27;
  v28[1] = v26[1] + v27[1];
  v28[2] = v26[2] + v27[2];
  v34 = 0x1A00000003;
  v32 = &unk_1F4CE0B08;
  v35 = &v36;
  v33 = xmmword_1D0E84410;
  bzero(&v36, 0x270uLL);
  sub_1D0B894B0(a5, &v32);
  v29 = *(a5 + 32);
  v30 = v43.i64[1];
  *v29 = v43.i64[0];
  v31 = *(a5 + 20);
  v29[v31 + 1] = v30;
  v29[2 * v31 + 2] = v44.i64[0];
  v34 = 0x300000003;
  v32 = &unk_1F4CD5DD0;
  v33 = xmmword_1D0E76C10;
  v38 = 0;
  v37 = 0u;
  v40 = 0u;
  v35 = &v36;
  v36 = 0x3FF0000000000000;
  v39 = 0x3FF0000000000000;
  v41 = 0;
  v42 = 0x3FF0000000000000;
  sub_1D0B894B0(a6, &v32);
  return 0;
}

void raven::RavenPNTEstimator::InflatePositionUncertainty(raven::RavenPNTEstimator *this, double a2)
{
  if ((atomic_load_explicit(&qword_1EE053AB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE053AB8))
  {
    v21 = 0x300000001;
    v19 = &unk_1F4CDF0C8;
    v22 = &v23;
    v20 = xmmword_1D0E7F310;
    v23 = 0x100000000;
    v24 = 2;
    sub_1D0D2CF48(&v19, v11);
    v14 = 0x300000001;
    v12 = &unk_1F4CDF0C8;
    v15 = &v16;
    v13 = xmmword_1D0E7F310;
    v16 = 0x1500000014;
    v17 = 22;
    sub_1D0D2CF48(&v12, v18);
    sub_1D0D74958(&unk_1EE0540F0, v11, v18);
    __cxa_atexit(sub_1D0D749E4, &unk_1EE0540F0, &dword_1D0B71000);
    __cxa_guard_release(&qword_1EE053AB8);
  }

  sub_1D0D95F6C(v11, &unk_1EE0540F0);
  sub_1D0B751F4(&v19, "InflatePositionUncertainty");
  raven::RavenPNTEstimator::InflateUncertainties(this, v11, &v19, a2);
  if (SHIBYTE(v20) < 0)
  {
    operator delete(v19);
  }

  LOWORD(v19) = 12;
  v18[0] = 2;
  v11[0] = *(this + 5);
  v4 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, v11, "Inflating estimator variance of position error states,factor,%.2lf", a2);
  if (*(this + 2735) >= 0)
  {
    LOBYTE(v10) = v4;
  }

  else
  {
    v10 = *(this + 339);
  }

  cnprint::CNPrinter::Print(&v19, v18, "%s", v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D0D6B7A8(uint64_t a1)
{
  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

uint64_t sub_1D0D6B7F8(uint64_t a1)
{
  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

uint64_t sub_1D0D6B848(uint64_t a1)
{
  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

uint64_t sub_1D0D6B8A0(uint64_t a1, uint64_t a2, char **lpsrc, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!lpsrc || (v13 = **lpsrc, (v14 = __dynamic_cast(lpsrc, &unk_1F4CE42A0, &unk_1F4CE09D8, 0)) == 0))
  {
    *v62 = 12;
    v86[0] = 4;
    v27 = MEMORY[0x30] + MEMORY[0x28];
LABEL_21:
    cnprint::CNPrinter::Print(v62, v86, "time,%.3lf,h-function failure on line %d: %s() %s", a4, a5, a6, a7, a8, SLOBYTE(v27));
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

  if (!v17 || !v16 || v18 != 26 || ((v20 = *(a2 + 8), v19 = *(a2 + 12), v20 <= v19) ? (v21 = *(a2 + 12)) : (v21 = *(a2 + 8)), !v20 || !v19 || v21 != 1))
  {
    *v62 = 12;
    v86[0] = 4;
    v27 = *(v14 + 6) + *(v14 + 5);
    goto LABEL_21;
  }

  v88 = *(v14 + 40);
  v22 = *(v14 + 9);
  v87 = **(v14 + 8);
  sub_1D0D96A9C(v86, v22);
  v26 = **(v15 + 10);
  v83 = 0x10000001CLL;
  v82 = xmmword_1D0E843A0;
  v81 = &unk_1F4CE0A20;
  v84 = &v85;
  if (v26)
  {
    if (v26 != 1)
    {
      if (v26 == 2)
      {
        __assert_rtn("h_UserSpeed_RavenPNT", "ravenmeasurementfunctions.h", 6935, "false && Unexpected case RavenPNTEstimatorStateParameterization::ParameterizationCount");
      }

      goto LABEL_36;
    }

    if (!sub_1D0D9046C(&v88, &v87, v86, *(v15 + 7), *(v15 + 11), 1, 1, 1, &v81))
    {
      goto LABEL_36;
    }

    *v62 = 12;
    LOBYTE(v57) = 4;
    v54 = *(v15 + 6) + *(v15 + 5);
    cnprint::CNPrinter::Print(v62, &v57, "time,%.3lf,h-function failure on line %d: %s() %s", v29, v30, v31, v32, v33, SLOBYTE(v54));
    return 0xFFFFFFFFLL;
  }

  v59 = 0x100000007;
  v57 = &unk_1F4CE0BB0;
  v58 = xmmword_1D0E84420;
  v60 = v61;
  if (sub_1D0C50CB8(&v88, &v87, v86, 0, &v57, v23, v24, v25))
  {
    *v62 = 12;
    LOBYTE(v76) = 4;
    v55 = *(v15 + 6) + *(v15 + 5);
    cnprint::CNPrinter::Print(v62, &v76, "time,%.3lf,h-function failure on line %d: %s() %s", v34, v35, v36, v37, v38, SLOBYTE(v55));
    return 0xFFFFFFFFLL;
  }

  *&v62[24] = 0x700000001;
  *v62 = &unk_1F4CE23C0;
  *&v63 = &v63 + 8;
  *&v62[8] = xmmword_1D0E84430;
  v39 = xmmword_1D0E84440;
  v40 = xmmword_1D0E7DD30;
  v41 = v64 + 1;
  v42 = 13;
  v43 = vdupq_n_s64(7uLL);
  v44 = vdupq_n_s64(4uLL);
  do
  {
    if (vuzp1_s16(vmovn_s64(vcgtq_u64(v43, v40)), *v39.i8).u8[0])
    {
      *(v41 - 3) = v42 + 8;
    }

    if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(7uLL), *&v40)), *&v39).i8[2])
    {
      *(v41 - 2) = v42 + 9;
    }

    if (vuzp1_s16(*&v39, vmovn_s64(vcgtq_u64(vdupq_n_s64(7uLL), *&v39))).i32[1])
    {
      *(v41 - 1) = v42 + 10;
      *v41 = v42 + 11;
    }

    v39 = vaddq_s64(v39, v44);
    v40 = vaddq_s64(v40, v44);
    v42 += 4;
    v41 += 4;
  }

  while (v42 != 21);
  sub_1D0D772C0(&v76, v62);
  sub_1D0D867B8(v62, &v81, &v76);
  sub_1D0D8644C(v62, SDWORD2(v58), v60);
LABEL_36:
  v78 = 0x100000007;
  v77 = xmmword_1D0E84420;
  v76 = &unk_1F4CE0BB0;
  v79 = &v80;
  *v62 = vdupq_n_s64(0x7FF8000000000000uLL);
  *&v62[16] = *v62;
  v63 = *v62;
  v64[0] = *v62;
  v64[1] = *v62;
  v64[2] = *v62;
  v64[3] = *v62;
  v64[4] = *v62;
  v64[5] = *v62;
  v64[6] = *v62;
  v64[7] = *v62;
  v64[8] = *v62;
  v64[9] = *v62;
  v64[10] = *v62;
  v64[11] = *v62;
  v64[12] = *v62;
  v64[13] = *v62;
  v64[14] = *v62;
  v64[15] = *v62;
  v64[16] = *v62;
  v64[17] = *v62;
  v64[18] = *v62;
  v64[19] = *v62;
  v64[20] = *v62;
  v64[21] = *v62;
  v65 = *v62;
  v66 = *v62;
  v67 = *v62;
  v68 = *v62;
  v69 = *v62;
  v70 = *v62;
  v71 = *v62;
  v72 = *v62;
  v73 = *v62;
  v74 = *v62;
  v75 = 0x7FF8000000000000;
  LOBYTE(v57) = 0;
  if (sub_1D0D88874(&v81, a1, v26, &v76, v62, &v57, 0.000000015))
  {
    LOWORD(v57) = 12;
    v89 = 4;
    v56 = *(v15 + 6) + *(v15 + 5);
    cnprint::CNPrinter::Print(&v57, &v89, "time,%.3lf,h-function failure on line %d: %s() %s", v45, v46, v47, v48, v49, SLOBYTE(v56));
    return 0xFFFFFFFFLL;
  }

  *&v50 = 0x100000001;
  *(&v50 + 1) = 0x100000001;
  *(a4 + 8) = v50;
  **(a4 + 32) = v79[3] + **(a2 + 32);
  v59 = 0x1A00000001;
  v57 = &unk_1F4CE1048;
  v60 = v61;
  v58 = xmmword_1D0E84580;
  memset(v61, 0, sizeof(v61));
  sub_1D0B894B0(a5, &v57);
  v51 = *(a5 + 20);
  v52 = *(a5 + 32);
  *(v52 + 184 * v51) = v65;
  *(v52 + 192 * v51) = *(&v65 + 1);
  *(v52 + 200 * v51) = v66;
  v59 = 0x100000001;
  v57 = &unk_1F4CDF418;
  *&v53 = 0x100000001;
  *(&v53 + 1) = 0x100000001;
  v58 = v53;
  v60 = v61;
  *&v61[0] = 0x3FF0000000000000;
  sub_1D0B894B0(a6, &v57);
  return 0;
}

uint64_t sub_1D0D6BF40(uint64_t a1, double *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
        sub_1D0D93244();
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

void sub_1D0D6C388(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  if (a2)
  {
    sub_1D0C537DC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0D6C3B4(uint64_t a1)
{
  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

uint64_t raven::RavenPNTEstimator::Initialize(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 57) == 1)
  {
    if (*(a1 + 58) == 1)
    {
      LOWORD(v32) = 12;
      LOBYTE(v30) = 4;
      v4 = cnprint::CNLogFormatter::FormatGeneral(a1 + 2712, a1 + 80, "Attempting to initialize an already initialized estimator");
      if (*(a1 + 2735) >= 0)
      {
        LOBYTE(v10) = v4;
      }

      else
      {
        v10 = *(a1 + 2712);
      }

      cnprint::CNPrinter::Print(&v32, &v30, "%s", v5, v6, v7, v8, v9, v10);
    }

    *(a1 + 64) = *a2;
    *(a1 + 80) = *a2;
    *(a1 + 96) = *a2;
    *(a1 + 112) = 0;
    *(a1 + 120) = 0;
    sub_1D0BAAEBC(a1 + 61736);
    sub_1D0BADC18(a1 + 61736, a2, v11, v12, v13, v14, v15, v16);
    *(a1 + 14824) = *a2;
    v34 = 0x10000001CLL;
    v32 = &unk_1F4CE0A20;
    v35 = &v36;
    v33 = xmmword_1D0E843A0;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    memset(v39, 0, sizeof(v39));
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    sub_1D0B894B0(a1 + 14840, &v32);
    *(a1 + 2760) = 0;
    *(a1 + 2768) = *a2;
    v57 = 0x100000013;
    v55 = &unk_1F4CE40B8;
    v58 = v59;
    v17 = *(a2 + 32);
    v59[0] = *(a2 + 16);
    v59[1] = v17;
    v18 = *(a2 + 64);
    v59[2] = *(a2 + 48);
    v59[3] = v18;
    v19 = *(a2 + 96);
    v59[4] = *(a2 + 80);
    v59[5] = v19;
    v20 = *(a2 + 128);
    v59[6] = *(a2 + 112);
    v56 = xmmword_1D0E844F0;
    v59[7] = v20;
    v60 = *(a2 + 144);
    v21.i64[1] = *(&v60 + 1);
    v61 = *(a2 + 160);
    v21.i64[0] = v61;
    if (!sub_1D0D752EC(a1 + 2920, a2, &v55, v21, v20))
    {
      v23 = xmmword_1D0E84440;
      v24 = xmmword_1D0E7DD30;
      v25 = &v36 + 3;
      v26 = 13;
      v27 = vdupq_n_s64(0x13uLL);
      v28 = vdupq_n_s64(4uLL);
      while (1)
      {
        if (vuzp1_s16(vmovn_s64(vcgtq_u64(v27, v24)), *v23.i8).u8[0])
        {
          *(v25 - 3) = v26 - 13;
        }

        if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x13uLL), *&v24)), *&v23).i8[2])
        {
          *(v25 - 2) = v26 - 12;
        }

        if (vuzp1_s16(*&v23, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x13uLL), *&v23))).i32[1])
        {
          *(v25 - 1) = v26 - 11;
          *v25 = v26 - 10;
        }

        v23 = vaddq_s64(v23, v28);
        v24 = vaddq_s64(v24, v28);
        v26 += 4;
        v25 += 4;
        if (v26 == 33)
        {
          v51 = 0x10000001CLL;
          v50 = xmmword_1D0E844F0;
          v53[1] = v37;
          v53[2] = v38;
          v49 = &unk_1F4CE1250;
          v52 = v53;
          v54[0] = v39[0];
          *(v54 + 12) = *(v39 + 12);
          v53[0] = v36;
          sub_1D0D8C698(&v32, a1 + 14840, &v49);
          sub_1D0D75408(&v32, SDWORD2(v56), v58);
          v29 = *(a1 + 14872);
          v29[19] = *(a2 + 168);
          v29[20] = *(a2 + 176);
          v29[21] = *(a2 + 184);
          v29[22] = *(a2 + 192);
          v29[23] = *(a2 + 200);
          v29[24] = *(a2 + 208);
          v29[25] = *(a2 + 216);
          v29[26] = *(a2 + 224);
          v29[27] = *(a2 + 232);
          v34 = 0x10000001ALL;
          v32 = &unk_1F4CE3E48;
          v35 = &v36;
          v33 = xmmword_1D0E843B0;
          v36 = 0u;
          v37 = 0u;
          v38 = 0u;
          memset(v39, 0, sizeof(v39));
          v40 = 0u;
          v41 = 0u;
          v42 = 0u;
          v43 = 0u;
          v44 = 0u;
          v45 = 0u;
          v46 = 0u;
          v47 = 0u;
          sub_1D0D87E2C(v31, a2 + 240);
        }
      }
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_1D0D6C914(uint64_t a1, uint64_t a2, char **lpsrc, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!lpsrc || (v13 = **lpsrc, (v14 = __dynamic_cast(lpsrc, &unk_1F4CE42A0, &unk_1F4CE1CC8, 0)) == 0))
  {
    LOWORD(v68) = 12;
    v79.i8[0] = 4;
    v27 = MEMORY[0x30] + MEMORY[0x28];
LABEL_22:
    cnprint::CNPrinter::Print(&v68, &v79, "time,%.3lf,h-function failure on line %d: %s() %s", a4, a5, a6, a7, a8, SLOBYTE(v27));
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

  if (!v17 || !v16 || v18 != 26 || ((v20 = *(a2 + 8), v19 = *(a2 + 12), v20 <= v19) ? (v21 = *(a2 + 12)) : (v21 = *(a2 + 8)), !v20 || !v19 || v21 != 3))
  {
    LOWORD(v68) = 12;
    v79.i8[0] = 4;
    v27 = *(v14 + 6) + *(v14 + 5);
    goto LABEL_22;
  }

  if (!*(v14 + 7))
  {
    LOWORD(v68) = 12;
    v79.i8[0] = 4;
    v27 = *(v14 + 6) + *(v14 + 5);
    goto LABEL_22;
  }

  v127 = *(v14 + 40);
  v22 = *(v14 + 9);
  v126 = **(v14 + 8);
  sub_1D0D96A9C(v125, v22);
  v26 = **(v15 + 10);
  if (**(v15 + 10))
  {
    if (v26 != 1)
    {
      if (v26 == 2)
      {
        __assert_rtn("h_DeviceUserPositionDifference_RavenPNT", "ravenmeasurementfunctions.h", 3186, "false && Unexpected case RavenPNTEstimatorStateParameterization::ParameterizationCount");
      }

      goto LABEL_44;
    }

    v117 = 0x100000007;
    v116 = xmmword_1D0E84420;
    v115 = &unk_1F4CE0BB0;
    v118 = v119;
    if (sub_1D0C50CB8(&v127, &v126, v125, 1, &v115, v23, v24, v25))
    {
      goto LABEL_26;
    }

    v70 = 0x700000001;
    v68 = &unk_1F4CE23C0;
    v71 = &v72;
    v69 = xmmword_1D0E84430;
    v36 = xmmword_1D0E84440;
    v37 = xmmword_1D0E7DD30;
    v38 = &v73 + 1;
    v39 = 13;
    v40 = vdupq_n_s64(7uLL);
    v41 = vdupq_n_s64(4uLL);
    do
    {
      if (vuzp1_s16(vmovn_s64(vcgtq_u64(v40, v37)), *v36.i8).u8[0])
      {
        *(v38 - 3) = v39 + 8;
      }

      if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(7uLL), *&v37)), *&v36).i8[2])
      {
        *(v38 - 2) = v39 + 9;
      }

      if (vuzp1_s16(*&v36, vmovn_s64(vcgtq_u64(vdupq_n_s64(7uLL), *&v36))).i32[1])
      {
        *(v38 - 1) = v39 + 10;
        *v38 = v39 + 11;
      }

      v36 = vaddq_s64(v36, v41);
      v37 = vaddq_s64(v37, v41);
      v39 += 4;
      v38 += 4;
    }

    while (v39 != 21);
    sub_1D0D772C0(v67, &v68);
    v122 = 0x10000001CLL;
    v121 = xmmword_1D0E843A0;
    v120 = &unk_1F4CE0A20;
    v123 = v124;
    sub_1D0D867B8(&v68, &v120, v67);
    sub_1D0D8644C(&v68, SDWORD2(v116), v118);
    v64 = 0x100000007;
    v62 = &unk_1F4CE0BB0;
    v63 = xmmword_1D0E84420;
    v65 = &v66;
    v79 = vdupq_n_s64(0x7FF8000000000000uLL);
    v80 = v79;
    v81 = v79;
    v82 = v79;
    v83 = v79;
    v84 = v79;
    v85 = v79;
    v86 = v79;
    v87 = v79;
    v88 = v79;
    v89 = v79;
    v90 = v79;
    v91 = v79;
    v92 = v79;
    v93 = v79;
    v94 = v79;
    v95 = v79;
    v96 = v79;
    v97 = v79;
    v98 = v79;
    v99 = v79;
    v100 = v79;
    v101 = v79;
    v102 = v79;
    v103 = v79;
    v104 = v79;
    v105 = v79;
    v106 = v79;
    v107 = v79;
    v108 = v79;
    v109 = v79;
    v110 = v79;
    v111 = v79;
    v112 = v79;
    v113 = v79;
    v114 = 0x7FF8000000000000;
    LOBYTE(v68) = 0;
    if (sub_1D0D88874(&v120, a1, 0, &v62, &v79, &v68, 0.000000015))
    {
      sub_1D0D85A30((v15 + 40), "could not correct states", "h_DeviceUserPositionDifference_RavenPNT", 3166, v42, v43, v44, v45);
      return 0xFFFFFFFFLL;
    }

    *(a4 + 8) = xmmword_1D0E7DCC0;
    v57 = v65;
    v58 = *(a2 + 32);
    v59 = *(a4 + 32);
    *v59 = *v58 - *v65;
    v59[1] = v58[1] - v57[1];
    v59[2] = v58[2] - v57[2];
    sub_1D0D8601C(&v68, 26);
    sub_1D0B894B0(a5, &v68);
    v60 = *(a5 + 20);
    v61 = *(a5 + 32);
    *(v61 + 160 * v60) = -*&v95.i64[1];
    *(v61 + 168 * v60 + 8) = -*&v99.i64[1];
    v55 = -*&v103.i64[1];
    v56 = (v61 + 176 * v60);
  }

  else
  {
    v35 = *(v15 + 7);
    v122 = 0x10000001CLL;
    v121 = xmmword_1D0E843A0;
    v120 = &unk_1F4CE0A20;
    v123 = v124;
    if (sub_1D0D9046C(&v127, &v126, v125, v35, *(v15 + 11), 0, 1, 1, &v120))
    {
LABEL_26:
      LOWORD(v68) = 12;
      v79.i8[0] = 4;
      v34 = *(v15 + 6) + *(v15 + 5);
      cnprint::CNPrinter::Print(&v68, &v79, "time,%.3lf,h-function failure on line %d: %s() %s", v29, v30, v31, v32, v33, SLOBYTE(v34));
      return 0xFFFFFFFFLL;
    }

    v117 = 0x10000001CLL;
    v116 = xmmword_1D0E843A0;
    v115 = &unk_1F4CE0A20;
    v118 = v119;
    v79 = vdupq_n_s64(0x7FF8000000000000uLL);
    v80 = v79;
    v81 = v79;
    v82 = v79;
    v83 = v79;
    v84 = v79;
    v85 = v79;
    v86 = v79;
    v87 = v79;
    v88 = v79;
    v89 = v79;
    v90 = v79;
    v91 = v79;
    v92 = v79;
    v93 = v79;
    v94 = v79;
    v95 = v79;
    v96 = v79;
    v97 = v79;
    v98 = v79;
    v99 = v79;
    v100 = v79;
    v101 = v79;
    v102 = v79;
    v103 = v79;
    v104 = v79;
    v105 = v79;
    v106 = v79;
    v107 = v79;
    v108 = v79;
    v109 = v79;
    v110 = v79;
    v111 = v79;
    v112 = v79;
    v113 = v79;
    v114 = 0x7FF8000000000000;
    LOBYTE(v68) = 0;
    if (sub_1D0D8825C(&v120, a1, 0, 1, 1, &v115, &v79, &v68, 0.000000015))
    {
      sub_1D0D85A30((v15 + 40), "could not correct states", "h_DeviceUserPositionDifference_RavenPNT", 3122, v46, v47, v48, v49);
      return 0xFFFFFFFFLL;
    }

    *(a4 + 8) = xmmword_1D0E7DCC0;
    v50 = v118;
    v51 = *(a2 + 32);
    v52 = *(a4 + 32);
    *v52 = *v118 - v118[21] + *v51;
    v52[1] = v50[1] - v50[22] + v51[1];
    v52[2] = v50[2] - v50[23] + v51[2];
    sub_1D0D8601C(&v68, 26);
    sub_1D0B894B0(a5, &v68);
    v53 = *(a5 + 32);
    *v53 = v79.i64[0];
    v54 = *(a5 + 20);
    v53[v54 + 1] = v79.i64[1];
    v53[2 * v54 + 2] = v80.i64[0];
    *&v53[20 * v54] = -*&v95.i64[1];
    *&v53[21 * v54 + 1] = -*&v99.i64[1];
    v55 = -*&v103.i64[1];
    v56 = &v53[22 * v54];
  }

  v56[2] = v55;
LABEL_44:
  v70 = 0x300000003;
  v68 = &unk_1F4CD5DD0;
  v69 = xmmword_1D0E76C10;
  v73 = 0u;
  v74 = 0;
  v76 = 0u;
  v71 = &v72;
  v72 = 0x3FF0000000000000;
  v75 = 0x3FF0000000000000;
  v77 = 0;
  v78 = 0x3FF0000000000000;
  sub_1D0B894B0(a6, &v68);
  return 0;
}

uint64_t sub_1D0D6D23C(uint64_t a1)
{
  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

uint64_t sub_1D0D6D28C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x1EEE9AC00](a1, a2, a3, a4);
  if (!v6 || (v12 = v5, v13 = v4, v14 = **v6, (v15 = __dynamic_cast(v6, &unk_1F4CE42A0, &unk_1F4CE1D28, 0)) == 0))
  {
    LOWORD(v86) = 12;
    LOBYTE(v74) = 4;
    v29 = MEMORY[0x30] + MEMORY[0x28];
    goto LABEL_20;
  }

  v17 = v15;
  v19 = *(v13 + 8);
  v18 = *(v13 + 12);
  if (v19 <= v18)
  {
    v20 = *(v13 + 12);
  }

  else
  {
    v20 = *(v13 + 8);
  }

  if (!v19 || !v18 || v20 != 26 || ((v22 = *(v12 + 8), v21 = *(v12 + 12), v22 <= v21) ? (v23 = *(v12 + 12)) : (v23 = *(v12 + 8)), !v22 || !v21 || v23 != 3))
  {
    LOWORD(v86) = 12;
    LOBYTE(v74) = 4;
    v29 = *(v15 + 6) + *(v15 + 5);
    goto LABEL_20;
  }

  if (!*(v15 + 7))
  {
    LOWORD(v86) = 12;
    LOBYTE(v74) = 4;
    v29 = *(v15 + 6) + *(v15 + 5);
    goto LABEL_20;
  }

  v109[0] = *(v15 + 40);
  v24.i64[1] = *(&v109[0] + 1);
  v24.i64[0] = *(v15 + 12);
  *&v87 = 0;
  v86 = 0;
  *v25.i64 = CNTimeSpan::SetTimeSpan(&v86, 0, v24, v16);
  *&v108 = CNTimeSpan::operator-(v109, &v86, v25, v26);
  *(&v108 + 1) = v27;
  v28 = *(v17 + 9);
  v107 = **(v17 + 8);
  sub_1D0D96A9C(v106, v28);
  if (**(v17 + 10))
  {
    LOWORD(v86) = 12;
    LOBYTE(v74) = 4;
    v29 = *(v17 + 6) + *(v17 + 5);
LABEL_20:
    cnprint::CNPrinter::Print(&v86, &v74, "time,%.3lf,h-function failure on line %d: %s() %s", v7, v8, v9, v10, v11, SLOBYTE(v29));
    return 0xFFFFFFFFLL;
  }

  v31 = *(v17 + 7);
  if ((atomic_load_explicit(&qword_1EE053BC0, memory_order_acquire) & 1) == 0)
  {
    v72 = v31;
    v40 = __cxa_guard_acquire(&qword_1EE053BC0);
    v31 = v72;
    if (v40)
    {
      v88 = 0x1300000001;
      v86 = &unk_1F4CE2330;
      v89 = &v90;
      v87 = xmmword_1D0E844E0;
      v41 = xmmword_1D0E84440;
      v42 = xmmword_1D0E7DD30;
      v43 = v92;
      v44 = 13;
      v45 = vdupq_n_s64(0x13uLL);
      v46 = vdupq_n_s64(4uLL);
      do
      {
        if (vuzp1_s16(vmovn_s64(vcgtq_u64(v45, v42)), *v41.i8).u8[0])
        {
          *(v43 - 3) = v44 - 13;
        }

        if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x13uLL), *&v42)), *&v41).i8[2])
        {
          *(v43 - 2) = v44 - 12;
        }

        if (vuzp1_s16(*&v41, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x13uLL), *&v41))).i32[1])
        {
          *(v43 - 1) = v44 - 11;
          *v43 = v44 - 10;
        }

        v41 = vaddq_s64(v41, v46);
        v42 = vaddq_s64(v42, v46);
        v44 += 4;
        v43 += 4;
      }

      while (v44 != 33);
      sub_1D0D77214(&unk_1EE054568, &v86);
      __cxa_atexit(sub_1D0D7B720, &unk_1EE054568, &dword_1D0B71000);
      __cxa_guard_release(&qword_1EE053BC0);
      v31 = v72;
    }
  }

  if ((atomic_load_explicit(&qword_1EE053BC8, memory_order_acquire) & 1) == 0)
  {
    v47 = v31;
    v48 = __cxa_guard_acquire(&qword_1EE053BC8);
    v31 = v47;
    if (v48)
    {
      v49 = 0;
      v88 = 0x1A00000001;
      v86 = &unk_1F4CE1FD0;
      v89 = &v90;
      v87 = xmmword_1D0E844D0;
      v50 = xmmword_1D0E7DD30;
      v51 = vdupq_n_s64(2uLL);
      v52 = vdupq_n_s64(0x12uLL);
      do
      {
        v53 = &v86 + 4 * v49;
        if (vmovn_s64(vcgtq_u64(v52, v50)).u8[0])
        {
          *(v53 + 10) = v49;
        }

        if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0x12uLL), *&v50)).i32[1])
        {
          *(v53 + 11) = v49 + 1;
        }

        v49 += 2;
        v50 = vaddq_s64(v50, v51);
      }

      while (v49 != 18);
      sub_1D0D741B0(&unk_1EC5FB5F0, &v86);
      __cxa_atexit(sub_1D0D73024, &unk_1EC5FB5F0, &dword_1D0B71000);
      __cxa_guard_release(&qword_1EE053BC8);
      v31 = v47;
    }
  }

  if ((atomic_load_explicit(&qword_1EE053BD0, memory_order_acquire) & 1) == 0)
  {
    v73 = v31;
    v54 = __cxa_guard_acquire(&qword_1EE053BD0);
    v31 = v73;
    if (v54)
    {
      v88 = 0x700000001;
      v86 = &unk_1F4CE23C0;
      v89 = &v90;
      v87 = xmmword_1D0E84430;
      v55 = xmmword_1D0E84440;
      v56 = xmmword_1D0E7DD30;
      v57 = v92;
      v58 = 13;
      v59 = vdupq_n_s64(7uLL);
      v60 = vdupq_n_s64(4uLL);
      do
      {
        if (vuzp1_s16(vmovn_s64(vcgtq_u64(v59, v56)), *v55.i8).u8[0])
        {
          *(v57 - 3) = v58 + 8;
        }

        if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(7uLL), *&v56)), *&v55).i8[2])
        {
          *(v57 - 2) = v58 + 9;
        }

        if (vuzp1_s16(*&v55, vmovn_s64(vcgtq_u64(vdupq_n_s64(7uLL), *&v55))).i32[1])
        {
          *(v57 - 1) = v58 + 10;
          *v57 = v58 + 11;
        }

        v55 = vaddq_s64(v55, v60);
        v56 = vaddq_s64(v56, v60);
        v58 += 4;
        v57 += 4;
      }

      while (v58 != 21);
      sub_1D0D772C0(&unk_1EE054170, &v86);
      __cxa_atexit(sub_1D0D7B700, &unk_1EE054170, &dword_1D0B71000);
      __cxa_guard_release(&qword_1EE053BD0);
      v31 = v73;
    }
  }

  if ((atomic_load_explicit(&qword_1EE053BD8, memory_order_acquire) & 1) == 0)
  {
    v61 = v31;
    v62 = __cxa_guard_acquire(&qword_1EE053BD8);
    v31 = v61;
    if (v62)
    {
      v76 = 0x600000001;
      v74 = &unk_1F4CE1988;
      v77 = &v78;
      v75 = xmmword_1D0E84600;
      v63 = xmmword_1D0E7DD30;
      v64 = &v78 + 1;
      v65 = -6;
      v66 = vdupq_n_s64(6uLL);
      v67 = vdupq_n_s64(2uLL);
      do
      {
        if (vmovn_s64(vcgtq_u64(v66, v63)).u8[0])
        {
          *(v64 - 1) = v65 + 26;
        }

        if (vmovn_s64(vcgtq_u64(vdupq_n_s64(6uLL), *&v63)).i32[1])
        {
          *v64 = v65 + 27;
        }

        v63 = vaddq_s64(v63, v67);
        v64 += 2;
        v65 += 2;
      }

      while (v65);
      sub_1D0D90B60(&v86, &v74);
      sub_1D0D95F6C(&unk_1EC5FB680, &v86);
      __cxa_atexit(sub_1D0D73024, &unk_1EC5FB680, &dword_1D0B71000);
      __cxa_guard_release(&qword_1EE053BD8);
      v31 = v61;
    }
  }

  if ((atomic_load_explicit(&qword_1EE053BE0, memory_order_acquire) & 1) == 0)
  {
    v68 = v31;
    v69 = __cxa_guard_acquire(&qword_1EE053BE0);
    v31 = v68;
    if (v69)
    {
      v88 = 0x300000001;
      v86 = &unk_1F4CDF0C8;
      v89 = &v90;
      v87 = xmmword_1D0E7F310;
      v90 = 0x400000003;
      v91 = 5;
      sub_1D0D2CF48(&v86, &unk_1EE053F68);
      __cxa_atexit(sub_1D0D26840, &unk_1EE053F68, &dword_1D0B71000);
      __cxa_guard_release(&qword_1EE053BE0);
      v31 = v68;
    }
  }

  if ((atomic_load_explicit(&qword_1EE053BE8, memory_order_acquire) & 1) == 0)
  {
    v70 = v31;
    v71 = __cxa_guard_acquire(&qword_1EE053BE8);
    v31 = v70;
    if (v71)
    {
      v88 = 0x300000001;
      v86 = &unk_1F4CDF0C8;
      v89 = &v90;
      v87 = xmmword_1D0E7F310;
      v90 = 0x1800000017;
      v91 = 25;
      sub_1D0D2CF48(&v86, &unk_1EE053FA0);
      __cxa_atexit(sub_1D0D26840, &unk_1EE053FA0, &dword_1D0B71000);
      __cxa_guard_release(&qword_1EE053BE8);
      v31 = v70;
    }
  }

  v103 = 0x10000001CLL;
  v102 = xmmword_1D0E844F0;
  v101 = &unk_1F4CE0A20;
  v104 = &v105;
  v32 = v31;
  if (!sub_1D0D85A88(v109, &v107, v106[4], v31, *(v17 + 11), &v101))
  {
    sub_1D0D752A8(v100);
    sub_1D0D98740(&v86, v100, &unk_1EE054568);
    sub_1D0D8874C(&v86, SDWORD2(v102), v104);
    v97 = 0x100000013;
    v95 = &unk_1F4CE40B8;
    v96 = xmmword_1D0E844F0;
    v98 = &v99;
    v93[0] = vdupq_n_s64(0x7FF8000000000000uLL);
    v93[1] = v93[0];
    v93[2] = v93[0];
    v93[3] = v93[0];
    v93[4] = v93[0];
    v93[5] = v93[0];
    v93[6] = v93[0];
    v93[7] = v93[0];
    v93[8] = v93[0];
    v93[9] = v93[0];
    v93[10] = v93[0];
    v93[11] = v93[0];
    v93[12] = v93[0];
    v93[13] = v93[0];
    v93[14] = v93[0];
    v93[15] = v93[0];
    v93[16] = v93[0];
    v93[17] = v93[0];
    v93[18] = v93[0];
    v93[19] = v93[0];
    v93[20] = v93[0];
    v93[21] = v93[0];
    v93[22] = v93[0];
    v93[23] = v93[0];
    v93[24] = v93[0];
    v93[25] = v93[0];
    v93[26] = v93[0];
    v93[27] = v93[0];
    v93[28] = v93[0];
    v93[29] = v93[0];
    v93[30] = v93[0];
    v93[31] = v93[0];
    v93[32] = v93[0];
    v93[33] = v93[0];
    v93[34] = v93[0];
    v94 = 0x7FF8000000000000;
    sub_1D0D85CD4(v100, v13, &v95, v93);
    sub_1D0D91854(&v86, v32);
    v84[28] = &v86;
    v84[29] = v109;
    v39 = *(v17 + 11);
    v84[30] = &v101;
    v84[31] = v39;
    v85 = v108;
    sub_1D0D8A47C(v84, 15);
    v81 = 0x10000001ALL;
    v79[6] = &unk_1F4CE3E48;
    v80 = xmmword_1D0E843B0;
    v82 = &v83;
    sub_1D0D87FCC(v79);
  }

  LOWORD(v86) = 12;
  LOBYTE(v74) = 4;
  v38 = *(v17 + 6) + *(v17 + 5);
  cnprint::CNPrinter::Print(&v86, &v74, "time,%.3lf,h-function failure on line %d: %s() %s", v33, v34, v35, v36, v37, SLOBYTE(v38));
  return 0xFFFFFFFFLL;
}

uint64_t sub_1D0D6F0B8(uint64_t a1, double *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
        sub_1D0D94374();
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

void sub_1D0D6F508(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  if (a2)
  {
    sub_1D0C537DC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0D6F534(uint64_t a1)
{
  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

double sub_1D0D6F584@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 24) = 0x100000003;
  *a3 = &unk_1F4CDEB28;
  *(a3 + 8) = xmmword_1D0E7DCC0;
  *(a3 + 32) = a3 + 40;
  *&result = *&sub_1D0B88838(a1, a2, a3);
  return result;
}

double sub_1D0D6F608(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 12);
  *&result = 0x100000003;
  *(a1 + 24) = 0x100000003;
  *a1 = &unk_1F4CDEB28;
  v5 = (v3 * v2);
  v6 = (a1 + 40);
  *(a1 + 32) = a1 + 40;
  *(a1 + 8) = v2;
  *(a1 + 12) = v3;
  *(a1 + 16) = v5;
  *(a1 + 20) = v2;
  if (v5 >= 1)
  {
    v7 = *(a2 + 32);
    do
    {
      v8 = *v7++;
      result = fabs(v8);
      *v6++ = result;
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_1D0D6F66C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x1EEE9AC00](a1, a2, a3, a4);
  v285 = *MEMORY[0x1E69E9840];
  if (v6 && (v12 = v9, v13 = v8, v14 = v7, v15 = v5, v16 = v4, v17 = **v6, (v18 = __dynamic_cast(v6, &unk_1F4CE42A0, &unk_1F4CE0978, 0)) != 0))
  {
    v19 = v18;
    v21 = *(v16 + 8);
    v20 = *(v16 + 12);
    if (v21 <= v20)
    {
      v22 = *(v16 + 12);
    }

    else
    {
      v22 = *(v16 + 8);
    }

    if (v21 && v20 && v22 == 26 && ((v24 = *(v15 + 8), v23 = *(v15 + 12), v24 <= v23) ? (v25 = *(v15 + 12)) : (v25 = *(v15 + 8)), v24 && v23 && v25 == 3 && *(v18 + 7)))
    {
      if ((*(v18 + 15) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*(v18 + 16) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*(v18 + 17) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        snprintf(&v279, 0x80uLL, "invalid rate gyro measurement %lg,%lg,%lg", *(v18 + 15), *(v18 + 16), *(v18 + 17));
        v230.i16[0] = 12;
        LOBYTE(v180[0]) = 4;
        v40 = *(v19 + 6) + *(v19 + 5);
        cnprint::CNPrinter::Print(&v230, v180, "time,%.3lf,h-function failure on line %d: %s() %s", v41, v42, v43, v44, v45, SLOBYTE(v40));
      }

      else
      {
        v278 = *(v18 + 40);
        v26 = *(v18 + 9);
        v277 = **(v18 + 8);
        sub_1D0D96A9C(v276, v26);
        v27 = *(v19 + 11);
        v28 = **(v19 + 10);
        v29 = *(v19 + 15);
        v30 = *(v19 + 16);
        v31 = *(v19 + 17);
        v32 = *(v19 + 7);
        v273 = 0x10000001CLL;
        v272 = xmmword_1D0E843A0;
        v271 = &unk_1F4CE0A20;
        v274 = &v275;
        if (sub_1D0D9046C(&v278, &v277, v276, v32, v27, v28, 1, 1, &v271))
        {
          sub_1D0D85A30((v19 + 40), "could not integrate full states", "h_DeviceUserVelocityDifference_RavenPNT", 3628, v33, v34, v35, v36);
        }

        else
        {
          v268 = 0x10000001CLL;
          v266 = &unk_1F4CE0A20;
          v267 = xmmword_1D0E843A0;
          v269 = &v270;
          v230 = vdupq_n_s64(0x7FF8000000000000uLL);
          v231 = v230;
          v232 = v230;
          v233 = v230;
          v234 = v230;
          v235 = v230;
          v236 = v230;
          v237 = v230;
          v238 = v230;
          v239 = v230;
          v240 = v230;
          v241 = v230;
          v242 = v230;
          v243 = v230;
          v244 = v230;
          v245 = v230;
          v246 = v230;
          v247 = v230;
          v248 = v230;
          v249 = v230;
          v250 = v230;
          v251 = v230;
          v252 = v230;
          v253 = v230;
          v254 = v230;
          v255 = v230;
          v256 = v230;
          v257 = v230;
          v258 = v230;
          v259 = v230;
          v260 = v230;
          v261 = v230;
          v262 = v230;
          v263 = v230;
          v264 = v230;
          v265 = NAN;
          LOBYTE(v279) = 0;
          if (!sub_1D0D8825C(&v271, v16, v28, 1, 1, &v266, &v230, &v279, 0.000000015))
          {
            v51 = v269;
            *&_Q2 = v269[24];
            _Q19 = *(v269 + 25);
            v53 = *(v269 + 27);
            if (v28)
            {
              if (v28 == 1)
              {
                v119 = _Q2;
                v54 = *(v269 + 6);
                v55 = *(v269 + 7);
                v56 = *(v269 + 8);
                v57 = *(v269 + 9);
                v58 = sqrt(v55 * v55 + v54 * v54 + v56 * v56 + v57 * v57);
                v59 = 1.0;
                v60 = 0.0;
                v61 = 0.0;
                v62 = 0.0;
                v63 = 0.0;
                v64 = 1.0;
                if (fabs(v58) >= 2.22044605e-16)
                {
                  v61 = v54 / v58;
                  v62 = v55 / v58;
                  v63 = v56 / v58;
                  v64 = v57 / v58;
                }

                v121 = *(v269 + 25);
                v65 = sqrt(v62 * v62 + v61 * v61 + v63 * v63 + v64 * v64);
                v66 = 0.0;
                v67 = 0.0;
                if (fabs(v65) >= 2.22044605e-16)
                {
                  v60 = -v61 / v65;
                  v66 = -v62 / v65;
                  v67 = -v63 / v65;
                  v59 = v64 / v65;
                }

                v227.f64[0] = v60;
                v227.f64[1] = v66;
                v228 = v67;
                v229 = v59;
                cnrotation::CNRotation::RotationMatrix(&v227, v226);
                v223 = 0x100000003;
                v222 = xmmword_1D0E7DCC0;
                v221 = &unk_1F4CDEB28;
                v224 = v225;
                v225[0] = v269[3];
                v225[1] = v269[4];
                v225[2] = v269[5];
                v217 = 0x100000003;
                v216 = xmmword_1D0E7DCC0;
                v215 = &unk_1F4CDEB28;
                v218 = &v219;
                v219 = vmulq_n_f64(v121, *&v119);
                v220 = *&v119 * v53;
                v68 = v29 - *(v269 + 10);
                v69 = v30 - *(v269 + 11);
                v70 = v31 - *(v269 + 12);
                v212 = 0x100000003;
                v211 = xmmword_1D0E7DCC0;
                v210[9] = &unk_1F4CDEB28;
                v213 = v214;
                *v214 = v68;
                *&v214[1] = v69;
                *&v214[2] = v70;
                v208 = 0x300000003;
                v207 = xmmword_1D0E76C10;
                v206 = &unk_1F4CD5DD0;
                v209 = v210;
                v210[0] = 0;
                *&v210[3] = -v70;
                v210[4] = 0;
                *&v210[7] = -v68;
                *&v210[1] = v70;
                *&v210[2] = -v69;
                *&v210[6] = v69;
                *&v210[5] = v68;
                v210[8] = 0;
                v203 = 0x100000007;
                v202 = xmmword_1D0E84420;
                v201 = &unk_1F4CE0BB0;
                v204 = &v205;
                v180[0] = vdupq_n_s64(0x7FF8000000000000uLL);
                v180[1] = v180[0];
                v180[2] = v180[0];
                v180[3] = v180[0];
                v180[4] = v180[0];
                v180[5] = v180[0];
                v180[6] = v180[0];
                v180[7] = v180[0];
                v180[8] = v180[0];
                v180[9] = v180[0];
                v180[10] = v180[0];
                v180[11] = v180[0];
                v180[12] = v180[0];
                v180[13] = v180[0];
                v180[14] = v180[0];
                v180[15] = v180[0];
                v181 = v180[0];
                v182 = v180[0];
                v183 = v180[0];
                v184 = v180[0];
                v185 = v180[0];
                v186 = v180[0];
                v187 = v180[0];
                v188 = v180[0];
                v189 = v180[0];
                v190 = v180[0];
                v191 = v180[0];
                v192 = v180[0];
                v193 = v180[0];
                v194 = v180[0];
                v195 = v180[0];
                v196 = v180[0];
                v197 = v180[0];
                v198 = v180[0];
                v199 = v180[0];
                v200 = 0x7FF8000000000000;
                LOBYTE(v279) = 0;
                if (sub_1D0D88874(&v271, v16, 0, &v201, v180, &v279, 0.000000015))
                {
                  sub_1D0D85A30((v19 + 40), "could not correct user states", "h_DeviceUserVelocityDifference_RavenPNT", 3738, v71, v72, v73, v74);
                  goto LABEL_23;
                }

                v95 = *v204;
                v96 = v204[1];
                v97 = -*v204;
                v98 = v204[2];
                v177 = 0x100000003;
                v175 = &unk_1F4CDEB28;
                v176 = xmmword_1D0E7DCC0;
                v178 = v179;
                *v179 = v97;
                *&v179[1] = -v96;
                *&v179[2] = -v98;
                sub_1D0D5625C(&v206, &v175, v174);
                sub_1D0D5625C(v226, v174, &v279);
                sub_1D0D6F584(&v215, &v279, v173);
                sub_1D0C4E2D8(&v221, v173, v170);
                sub_1D0D6F584(v170, v15, &v279);
                sub_1D0B894B0(v14, &v279);
                if ((atomic_load_explicit(&qword_1EE053BF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE053BF0))
                {
                  v281 = 0x300000001;
                  v279 = &unk_1F4CDF0C8;
                  v282 = &v283;
                  v280 = xmmword_1D0E7F310;
                  v283 = 0x400000003;
                  v284 = 5;
                  sub_1D0D2CF48(&v279, &unk_1EE053FD8);
                  __cxa_atexit(sub_1D0D26840, &unk_1EE053FD8, &dword_1D0B71000);
                  __cxa_guard_release(&qword_1EE053BF0);
                }

                if ((atomic_load_explicit(&qword_1EE053BF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE053BF8))
                {
                  v281 = 0x300000001;
                  v279 = &unk_1F4CDF0C8;
                  v282 = &v283;
                  v280 = xmmword_1D0E7F310;
                  v283 = 0x700000006;
                  v284 = 8;
                  sub_1D0D2CF48(&v279, &unk_1EE054010);
                  __cxa_atexit(sub_1D0D26840, &unk_1EE054010, &dword_1D0B71000);
                  __cxa_guard_release(&qword_1EE053BF8);
                }

                if ((atomic_load_explicit(&qword_1EE053C00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE053C00))
                {
                  v281 = 0x300000001;
                  v279 = &unk_1F4CDF0C8;
                  v282 = &v283;
                  v280 = xmmword_1D0E7F310;
                  v283 = 0xA00000009;
                  v284 = 11;
                  sub_1D0D2CF48(&v279, &unk_1EE054048);
                  __cxa_atexit(sub_1D0D26840, &unk_1EE054048, &dword_1D0B71000);
                  __cxa_guard_release(&qword_1EE053C00);
                }

                if ((atomic_load_explicit(&qword_1EE053C08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE053C08))
                {
                  v281 = 0x300000001;
                  v279 = &unk_1F4CDF0C8;
                  v282 = &v283;
                  v280 = xmmword_1D0E7F310;
                  v283 = 0x1500000014;
                  v284 = 22;
                  sub_1D0D2CF48(&v279, &unk_1EE054080);
                  __cxa_atexit(sub_1D0D26840, &unk_1EE054080, &dword_1D0B71000);
                  __cxa_guard_release(&qword_1EE053C08);
                }

                if ((atomic_load_explicit(&qword_1EE053C10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE053C10))
                {
                  v281 = 0x300000001;
                  v279 = &unk_1F4CDF0C8;
                  v282 = &v283;
                  v280 = xmmword_1D0E7F310;
                  v283 = 0x1800000017;
                  v284 = 25;
                  sub_1D0D2CF48(&v279, &unk_1EE0540B8);
                  __cxa_atexit(sub_1D0D26840, &unk_1EE0540B8, &dword_1D0B71000);
                  __cxa_guard_release(&qword_1EE053C10);
                }

                sub_1D0D7B8EC(3u, 3u, v170);
                v99 = v172;
                *v172 = v231.i64[1];
                v100 = v171;
                v99[v171 + 1] = v232.i64[0];
                v99[2 * v100 + 2] = v232.i64[1];
                v166 = 0x100000003;
                v165 = xmmword_1D0E7DCC0;
                v164 = &unk_1F4CDEB28;
                v167 = &v168;
                v168 = vnegq_f64(v121);
                v169 = -v53;
                v160 = 0x300000001;
                v159 = xmmword_1D0E7F310;
                v158 = &unk_1F4CDF248;
                v161 = &v162;
                v162 = v255;
                v163 = v256.i64[0];
                sub_1D0D76BD4(3, 1, &v147);
                v101.f64[1] = *(&v119 + 1);
                v101.f64[0] = -*&v119;
                sub_1D0C51FB4(&v147, &v152, v101);
                sub_1D0D9455C(&v279, &v152);
                sub_1D0B88DB0(v157, &v279);
                v154 = 0x300000003;
                v153 = xmmword_1D0E76C10;
                v152 = &unk_1F4CD5DD0;
                v155 = v156;
                v156[0] = v256.i64[1];
                v156[1] = v259.i64[1];
                v156[6] = v257.i64[1];
                v156[7] = v260.i64[1];
                v156[3] = v257.i64[0];
                v156[2] = v262.i64[1];
                v156[4] = v260.i64[0];
                v156[8] = v263.i64[1];
                v156[5] = v263.i64[0];
                v149 = 0x300000003;
                v148 = xmmword_1D0E76C10;
                v147 = &unk_1F4CD5DD0;
                v150 = v151;
                v151[0] = v258.i64[0];
                v151[1] = v261.i64[0];
                v151[6] = v259.i64[0];
                v151[7] = v262.i64[0];
                v151[3] = v258.i64[1];
                v151[2] = v264.i64[0];
                v151[4] = v261.i64[1];
                v151[5] = v264.i64[1];
                *&v151[8] = v265;
                cnrotation::CNRotation::dRdq1(&v227, v146);
                cnrotation::CNRotation::dRdq2(&v227, v145);
                cnrotation::CNRotation::dRdq3(&v227, v144);
                cnrotation::CNRotation::dRdq4(&v227, v143);
                *&v102.f64[0] = v233.i64[0];
                sub_1D0D7B844(v140, v146, v102);
                *&v103.f64[0] = v234.i64[1];
                sub_1D0D7B844(v139, v145, v103);
                sub_1D0D4C358(v140, v139, v141);
                *&v104.f64[0] = v236.i64[0];
                sub_1D0D7B844(&v134, v144, v104);
                sub_1D0D4C358(v141, &v134, &v279);
                *&v105.f64[0] = v237.i64[1];
                sub_1D0D7B844(v133, v143, v105);
                sub_1D0D4C358(&v279, v133, v142);
                *&v106.f64[0] = v233.i64[1];
                sub_1D0D7B844(v139, v146, v106);
                *&v107.f64[0] = v235.i64[0];
                sub_1D0D7B844(&v134, v145, v107);
                sub_1D0D4C358(v139, &v134, v140);
                *&v108.f64[0] = v236.i64[1];
                sub_1D0D7B844(v133, v144, v108);
                sub_1D0D4C358(v140, v133, &v279);
                *&v109.f64[0] = v238.i64[0];
                sub_1D0D7B844(v130, v143, v109);
                sub_1D0D4C358(&v279, v130, v141);
                *&v110.f64[0] = v234.i64[0];
                sub_1D0D7B844(&v134, v146, v110);
                *&v111.f64[0] = v235.i64[1];
                sub_1D0D7B844(v133, v145, v111);
                sub_1D0D4C358(&v134, v133, v139);
                *&v112.f64[0] = v237.i64[0];
                sub_1D0D7B844(v130, v144, v112);
                sub_1D0D4C358(v139, v130, &v279);
                *&v113.f64[0] = v238.i64[1];
                sub_1D0D7B844(v129, v143, v113);
                sub_1D0D4C358(&v279, v129, v140);
                sub_1D0D5625C(v142, v174, v133);
                sub_1D0D5625C(v141, v174, v130);
                sub_1D0D5625C(v140, v174, v129);
                sub_1D0D9462C(&v134, v130, v129);
                sub_1D0D945A4(&v279, v133, &v134);
                sub_1D0D7B9D8(&v279, v139);
                v136 = 0x300000003;
                v134 = &unk_1F4CD5DD0;
                v135 = xmmword_1D0E76C10;
                v137 = v138;
                v138[0] = 0;
                *&v138[3] = v98;
                v138[4] = 0;
                *&v138[7] = v95;
                *&v138[1] = -v98;
                *&v138[2] = v96;
                *&v138[6] = -v96;
                *&v138[5] = v97;
                v138[8] = 0;
                sub_1D0C1B688(v226, &v134, v133);
                sub_1D0BFA9C4(3, 3, v130);
                v114 = v132;
                *v132 = -*v239.i64;
                v115 = v131;
                v114[v131 + 1] = -*&v239.i64[1];
                v114[2 * v115 + 2] = -*v240.i64;
                sub_1D0D7B9D8(v226, &v279);
                sub_1D0C1B688(&v279, &v206, v129);
                sub_1D0D7B8EC(3u, 3u, v126);
                v116 = v128;
                *v128 = -*(&v181 + 1);
                v117 = v127;
                v116[v127 + 1] = -*(&v185 + 1);
                v116[2 * v117 + 2] = -*(&v189 + 1);
                sub_1D0D8601C(&v279, 26);
                sub_1D0B894B0(v13, &v279);
                sub_1D0D93E34(&v279, v13, &unk_1EE053FD8);
                sub_1D0D2CFF0(&v279, v170);
                sub_1D0C1B688(v157, &v152, v124);
                sub_1D0D4C358(v124, v139, v125);
                sub_1D0D93E34(&v279, v13, &unk_1EE054010);
                sub_1D0D2CFF0(&v279, v125);
                sub_1D0C1B688(v133, v130, v125);
                sub_1D0D93E34(&v279, v13, &unk_1EE054048);
                sub_1D0D2CFF0(&v279, v125);
                sub_1D0C1B688(v129, v126, v125);
                sub_1D0D93E34(&v279, v13, &unk_1EE054080);
                sub_1D0D2CFF0(&v279, v125);
                sub_1D0D946D8(&v164, &v158, v124);
                sub_1D0C1B688(v157, &v147, v123);
                sub_1D0D4C358(v124, v123, v125);
                sub_1D0D93E34(&v279, v13, &unk_1EE0540B8);
                sub_1D0D2CFF0(&v279, v125);
              }

              else if (v28 == 2)
              {
                __assert_rtn("h_DeviceUserVelocityDifference_RavenPNT", "ravenmeasurementfunctions.h", 3862, "false && Unexpected case RavenPNTEstimatorStateParameterization::ParameterizationCount");
              }
            }

            else
            {
              *(v14 + 8) = xmmword_1D0E7DCC0;
              v75 = *(v15 + 32);
              v76 = *(v14 + 32);
              *v76 = v51[3] - *&_Q19 * *&_Q2 + *v75;
              v77 = *(v51 + 4);
              __asm { FMLS            D0, D2, V19.D[1] }

              v76[1] = _D0 + v75[1];
              v76[2] = v51[5] - *&_Q2 * v53 + v75[2];
              v120 = *&_Q2;
              v122 = _Q19;
              sub_1D0D8601C(&v279, 26);
              sub_1D0B894B0(v13, &v279);
              v83 = *(v13 + 20);
              v84 = 3 * v83;
              v85 = *(v13 + 32);
              *(v85 + 8 * v84) = v231.i64[1];
              *(v85 + 8 * ((4 * v83) | 1)) = v232.i64[0];
              *(v85 + 40 * v83 + 16) = v232.i64[1];
              _V3.D[1] = *(&v122 + 1);
              v87 = v85 + 184 * v83;
              *v87 = -(v120 * *v258.i64) - *v255.i64 * *&v122;
              *(v85 + 192 * v83) = -(v120 * *&v258.i64[1]) - *&v255.i64[1] * *&v122;
              v88 = v85 + 200 * v83;
              *v88 = -(v120 * *v259.i64) - *v256.i64 * *&v122;
              _D0 = v255.i64[0];
              __asm { FMLS            D1, D0, V3.D[1] }

              *(v87 + 8) = _D1;
              _D0 = v255.i64[1];
              __asm { FMLS            D1, D0, V3.D[1] }

              *(v85 + 8 * ((8 * v84) | 1)) = _D1;
              _D0 = v256.i64[0];
              __asm { FMLS            D1, D0, V3.D[1] }

              *(v88 + 8) = _D1;
              *(v87 + 16) = -(v120 * *v264.i64) - v53 * *v255.i64;
              *(v85 + 8 * ((8 * v84) | 2)) = -(v120 * *&v264.i64[1]) - v53 * *&v255.i64[1];
              *(v88 + 16) = -(v120 * v265) - v53 * *v256.i64;
            }

            sub_1D0D7B8EC(3u, 3u, &v279);
            sub_1D0B894B0(v12, &v279);
            result = 0;
            goto LABEL_24;
          }

          sub_1D0D85A30((v19 + 40), "could not correct states", "h_DeviceUserVelocityDifference_RavenPNT", 3637, v46, v47, v48, v49);
        }
      }
    }

    else
    {
      LOWORD(v279) = 12;
      v230.i8[0] = 4;
      v37 = *(v18 + 6) + *(v18 + 5);
      cnprint::CNPrinter::Print(&v279, &v230, "time,%.3lf,h-function failure on line %d: %s() %s", v7, v8, v9, v10, v11, SLOBYTE(v37));
    }
  }

  else
  {
    LOWORD(v279) = 12;
    v230.i8[0] = 4;
    v118 = MEMORY[0x30] + MEMORY[0x28];
    cnprint::CNPrinter::Print(&v279, &v230, "time,%.3lf,h-function failure on line %d: %s() %s", v7, v8, v9, v10, v11, SLOBYTE(v118));
  }

LABEL_23:
  result = 0xFFFFFFFFLL;
LABEL_24:
  v39 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D0D70D1C(uint64_t a1)
{
  *(a1 + 96) = &unk_1F4CE36E0;
  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

uint64_t sub_1D0D70D8C(uint64_t a1, double *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
        sub_1D0D94830();
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

void sub_1D0D711D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  if (a2)
  {
    sub_1D0C537DC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t raven::RavenPNTEstimator::PredictAndUpdate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 58) != 1)
  {
    return 32;
  }

  v5 = a1 + 61736;
  v119 = *a2;
  v6 = *(a2 + 16);
  if (v6 < 0.0)
  {
    sub_1D0D7B1D0((a1 + 61736), a1 + 80, a3, a4);
    *v5 = 0;
    sub_1D0BADC18(v5, (a1 + 80), v7, v8, v9, v10, v11, v12);
    return 64;
  }

  if (v6 <= 0.0)
  {
    return 0;
  }

  if (sub_1D0B9D420(v119.i64, (a1 + 61744)))
  {
    v99.i16[0] = 2;
    LOBYTE(v98[0]) = 4;
    v21 = &v99;
    v22 = v98;
    goto LABEL_53;
  }

  v23 = v119;
  *(a1 + 61760) = v119;
  v24 = CNTimeSpan::operator-((a1 + 61760), (a1 + 61744), v23, v20);
  v27 = *(a1 + 67672);
  if (v27 >= 1)
  {
    v28 = 0;
    *v26.i64 = v24;
    v29 = v25 + v24;
    v30 = *(v5 + 96);
    while (1)
    {
      v99 = *v30;
      *v26.i64 = CNTimeSpan::operator-(&v99, (a1 + 61744), v99, v26);
      v32 = (v31 + *v26.i64) / v29;
      if (v32 < 0.0)
      {
        break;
      }

      *(*(v5 + 3656) + v28) = v32;
      v28 += 8;
      ++v30;
      if (8 * v27 == v28)
      {
        goto LABEL_14;
      }
    }

    LOWORD(v98[0]) = 2;
    LOBYTE(v96) = 2;
    v21 = v98;
    v22 = &v96;
LABEL_53:
    cnprint::CNPrinter::Print(v21, v22, "WARNING: MeasurementAccumulator.LockAccumulator() called with bad t_end.", v15, v16, v17, v18, v19, v92);
    goto LABEL_54;
  }

LABEL_14:
  *(a1 + 73640) = 87;
  *(a1 + 70552) = xmmword_1D0E84400;
  *(a1 + 71984) = xmmword_1D0E84400;
  *(a1 + 72376) = xmmword_1D0E84400;
  *(a1 + 73112) = xmmword_1D0E84400;
  *(a1 + 73160) = xmmword_1D0E84400;
  *(a1 + 73552) = xmmword_1D0E84400;
  *(a1 + 73600) = xmmword_1D0E84400;
  *(a1 + 73656) = xmmword_1D0E84400;
  *(a1 + 74392) = xmmword_1D0E84400;
  v99.i64[1] = 0;
  v100 = 0;
  v99.i64[0] = &v99.i64[1];
  if (v27 < 1)
  {
    v34 = 0;
    goto LABEL_58;
  }

  v33 = 0;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  while (*(*(v5 + 3656) + 8 * v33) > 1.0)
  {
LABEL_48:
    if (++v33 >= v27)
    {
      if (v36 > v34)
      {
        LOWORD(v98[0]) = 2;
        LOBYTE(v96) = 2;
        v93 = *&v119.i64[1] + v119.i64[0];
        cnprint::CNPrinter::Print(v98, &v96, "t,%.3lf,WARNING: MeasurementAccumulator.LockAccumulator() truncating measurements,nh,%d,eligible,%d,num_truncated,%d", v15, v16, v17, v18, v19, SLOBYTE(v93));
      }

LABEL_58:
      *(a1 + 73640) = v34;
      *(a1 + 70552) = v34;
      *(a1 + 70556) = 1;
      *(a1 + 70560) = v34;
      *(a1 + 70564) = v34;
      *(a1 + 71984) = v34;
      *(a1 + 71988) = 1;
      *(a1 + 71992) = v34;
      *(a1 + 71996) = v34;
      *(a1 + 72376) = v34;
      *(a1 + 72380) = 1;
      *(a1 + 72384) = v34;
      *(a1 + 72388) = v34;
      *(a1 + 73112) = v34;
      *(a1 + 73116) = 1;
      *(a1 + 73120) = v34;
      *(a1 + 73124) = v34;
      *(a1 + 73160) = v34;
      *(a1 + 73164) = 1;
      *(a1 + 73168) = v34;
      *(a1 + 73172) = v34;
      *(a1 + 73552) = v34;
      *(a1 + 73556) = 1;
      *(a1 + 73560) = v34;
      *(a1 + 73564) = v34;
      *(a1 + 73600) = v34;
      *(a1 + 73604) = 1;
      *(a1 + 73608) = v34;
      *(a1 + 73612) = v34;
      *(a1 + 73656) = v34;
      *(a1 + 73660) = 1;
      *(a1 + 73664) = v34;
      *(a1 + 73668) = v34;
      *(a1 + 74392) = v34;
      *(a1 + 74396) = 1;
      *(a1 + 74400) = v34;
      *(a1 + 74404) = v34;
      *(v5 + 1) = 1;
      sub_1D0B99218(v99.i64[1]);
      if (!cnprint::CNPrinter::GetLogLevel(v64))
      {
        v99.i16[0] = 12;
        LOBYTE(v98[0]) = 0;
        v72 = *&v119.i64[1] + v119.i64[0];
        v73 = sub_1D0B9D490(v5, v65, v66, v67, v68, v69, v70, v71);
        cnprint::CNLogFormatter::FormatGeneral(a1 + 2712, a1 + 80, "Predict,%.2lf,dt,%.3lf,meas_types,%d", v72, v6, v73);
        if (*(a1 + 2735) >= 0)
        {
          LOBYTE(v79) = a1 - 104;
        }

        else
        {
          v79 = *(a1 + 2712);
        }

        cnprint::CNPrinter::Print(&v99, v98, "%s", v74, v75, v76, v77, v78, v79);
      }

      v80 = xmmword_1D0E84440;
      v81 = xmmword_1D0E7DD30;
      v82 = v101 + 3;
      v83 = 13;
      v84 = vdupq_n_s64(0x13uLL);
      v85 = vdupq_n_s64(4uLL);
      while (1)
      {
        if (vuzp1_s16(vmovn_s64(vcgtq_u64(v84, v81)), *v80.i8).u8[0])
        {
          *(v82 - 3) = v83 - 13;
        }

        if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x13uLL), *&v81)), *&v80).i8[2])
        {
          *(v82 - 2) = v83 - 12;
        }

        if (vuzp1_s16(*&v80, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x13uLL), *&v80))).i32[1])
        {
          *(v82 - 1) = v83 - 11;
          *v82 = v83 - 10;
        }

        v80 = vaddq_s64(v80, v85);
        v81 = vaddq_s64(v81, v85);
        v83 += 4;
        v82 += 4;
        if (v83 == 33)
        {
          v115 = 0x100000013;
          v113[1] = &unk_1F4CE2378;
          v116 = v117;
          v114 = xmmword_1D0E844F0;
          v117[2] = v101[2];
          v118[0] = v102[0];
          *(v118 + 12) = *(v102 + 12);
          v117[0] = v101[0];
          v117[1] = v101[1];
          *&v101[0] = 0x1400000013;
          v111 = 0x100000002;
          v109 = &unk_1F4CE0EA8;
          v110 = xmmword_1D0E83F60;
          v112 = v113;
          v113[0] = 0x1400000013;
          v86 = xmmword_1D0E84440;
          v87 = xmmword_1D0E7DD30;
          v88 = v101 + 3;
          v89 = 13;
          v90 = vdupq_n_s64(7uLL);
          v91 = vdupq_n_s64(4uLL);
          while (1)
          {
            if (vuzp1_s16(vmovn_s64(vcgtq_u64(v90, v87)), *v86.i8).u8[0])
            {
              *(v88 - 3) = v89 + 8;
            }

            if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(7uLL), *&v87)), *&v86).i8[2])
            {
              *(v88 - 2) = v89 + 9;
            }

            if (vuzp1_s16(*&v86, vmovn_s64(vcgtq_u64(vdupq_n_s64(7uLL), *&v86))).i32[1])
            {
              *(v88 - 1) = v89 + 10;
              *v88 = v89 + 11;
            }

            v86 = vaddq_s64(v86, v91);
            v87 = vaddq_s64(v87, v91);
            v89 += 4;
            v88 += 4;
            if (v89 == 21)
            {
              v106 = 0x100000007;
              v104 = &unk_1F4CE0C88;
              v107 = v108;
              v105 = xmmword_1D0E84420;
              v108[0] = v101[0];
              *(v108 + 12) = *(v101 + 12);
              sub_1D0D97464(v103);
            }
          }
        }
      }
    }
  }

  ++v36;
  v37 = *(*(v5 + 2920) + 4 * v33);
  v38 = v37 + v35;
  if (v34 <= 86 && v38 < 88)
  {
    v39 = v35;
    v95 = v36;
    v94 = v34;
LABEL_20:
    *(*(a1 + 70576) + 16 * v34) = *(*(v5 + 96) + 16 * v33);
    *(*(a1 + 72008) + 4 * v34) = v37;
    *(*(a1 + 72400) + 8 * v34) = *(*(v5 + 3656) + 8 * v33);
    sub_1D0B894B0(*(a1 + 73136) + (v34 << 6), *(a1 + 66824) + (v33 << 6));
    *(*(a1 + 73184) + 4 * v34) = *(*(a1 + 66872) + 4 * v33);
    sub_1D0B894B0(*(a1 + 73576) + (v34 << 6), *(a1 + 67608) + (v33 << 6));
    sub_1D0B894B0(*(a1 + 73624) + 112 * v34, *(a1 + 67656) + 112 * v33);
    *(*(a1 + 73680) + 8 * v34) = *(*(a1 + 67712) + 8 * v33);
    *(*(a1 + 74416) + 8 * v34) = *(*(a1 + 69144) + 8 * v33);
    v40 = v99.i64[1];
    v41 = *(*(a1 + 67712) + 8 * v33);
    if (!v99.i64[1])
    {
      goto LABEL_28;
    }

    v42 = &v99.u64[1];
    do
    {
      v43 = *(v40 + 32);
      v44 = v43 >= v41;
      v45 = v43 < v41;
      if (v44)
      {
        v42 = v40;
      }

      v40 = *(v40 + 8 * v45);
    }

    while (v40);
    if (v42 != &v99.u64[1] && v41 >= v42[2].i64[0])
    {
      ++v42[2].i32[2];
    }

    else
    {
LABEL_28:
      v98[0] = *(a1 + 67712) + 8 * v33;
      *(sub_1D0BBCAA4(&v99, v41) + 10) = 1;
    }

    v36 = v95;
    v34 = v94 + 1;
    v35 = v39 + v37;
    LODWORD(v27) = *(a1 + 67672);
    goto LABEL_48;
  }

  v96 = 0;
  v46 = v99.i64[0];
  if (v99.i64[0] != &v99.u64[1])
  {
    v47 = 0;
    v48 = -1;
    do
    {
      v49 = *(v46 + 40);
      if (v49 > v48)
      {
        v47 = *(v46 + 32);
        v96 = v47;
        v48 = v49;
      }

      v50 = *(v46 + 8);
      if (v50)
      {
        do
        {
          v51 = v50;
          v50 = v50->i64[0];
        }

        while (v50);
      }

      else
      {
        do
        {
          v51 = *(v46 + 16);
          v52 = v51->i64[0] == v46;
          v46 = v51;
        }

        while (!v52);
      }

      v46 = v51;
    }

    while (v51 != &v99.u64[1]);
    if (v47)
    {
      if (*(*(a1 + 67712) + 8 * v33) == v47)
      {
        goto LABEL_48;
      }

      if (v34 < 1)
      {
LABEL_55:
        LOWORD(v98[0]) = 2;
        v97[0] = 4;
        cnprint::CNPrinter::Print(v98, v97, "MeasurementAccumulator.LockAccumulator() found_idx == false", v15, v16, v17, v18, v19, v92);
        goto LABEL_56;
      }

      v53 = v34;
      while (*(*(a1 + 73680) + 8 * --v53) != v47)
      {
        if (v53 <= 0)
        {
          goto LABEL_55;
        }
      }

      if (v38 - *(*(a1 + 72008) + 4 * v53) > 87)
      {
        goto LABEL_48;
      }

      v94 = v34 - 1;
      v54 = v35;
      v95 = v36;
      v98[0] = &v96;
      v55 = sub_1D0BBCAA4(&v99, v47);
      --*(v55 + 10);
      v39 = v54 - *(*(a1 + 72008) + 4 * v53);
      v34 = v53;
      goto LABEL_20;
    }
  }

  LOWORD(v98[0]) = 2;
  v97[0] = 4;
  cnprint::CNPrinter::Print(v98, v97, "MeasurementAccumulator.LockAccumulator() most_common_measurement_type == nullptr", v15, v16, v17, v18, v19, v92);
LABEL_56:
  sub_1D0B99218(v99.i64[1]);
LABEL_54:
  sub_1D0D7B1D0(v5, a1 + 80, v56, v57);
  *v5 = 0;
  sub_1D0BADC18(v5, (a1 + 80), v58, v59, v60, v61, v62, v63);
  return 128;
}

void sub_1D0D72888(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x580] = &a25;
  sub_1D0BA5F70(&STACK[0x580]);
  STACK[0x580] = &a28;
  sub_1D0BA5F70(&STACK[0x580]);
  STACK[0x580] = &a31;
  sub_1D0BA5F70(&STACK[0x580]);
  sub_1D0D857FC(&a67);
  sub_1D0D85624(&STACK[0x840]);
  _Unwind_Resume(a1);
}

uint64_t raven::RavenPNTEstimator::HandleEvent(raven::RavenPNTEstimator *this, const raven::VelocityEvent *a2)
{
  if (*(this + 57) != 1)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(this + 58) != 1 || *(a2 + 280) == 0)
  {
    return 0;
  }

  else
  {
    return raven::RavenPNTEstimator::AddDeviceVelocityMeasurement(this, a2);
  }
}

void raven::RavenPNTEstimator::InflateUncertainties(uint64_t a1, uint64_t a2, uint64_t *a3, double a4)
{
  if (a4 < 1.0 || (*&a4 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    LOWORD(v21) = 12;
    v20[0] = 4;
    v10 = a1 + 2712;
    *v26 = *(a1 + 80);
    if (*(a3 + 23) < 0)
    {
      v11 = *a3;
    }

    v12 = cnprint::CNLogFormatter::FormatGeneral(v10, v26, "%s failed, invalid inflation factor, %.6lf.");
  }

  else
  {
    v23 = 0x10000001ALL;
    v22 = xmmword_1D0E843B0;
    v21 = &unk_1F4CE3E90;
    v24 = v25;
    v27 = 0x10000001ALL;
    *&v26[8] = xmmword_1D0E843B0;
    *v26 = &unk_1F4CE1E70;
    v28 = v29;
    sub_1D0D94A44(a2, &v21, v26);
    v7 = *v24;
    v23 = 0x10000001ALL;
    v22 = xmmword_1D0E843B0;
    v21 = &unk_1F4CE3E90;
    v24 = v25;
    v27 = 0x10000001ALL;
    *&v26[8] = xmmword_1D0E843B0;
    *v26 = &unk_1F4CE1E70;
    v28 = v29;
    sub_1D0D94D8C(a2, &v21, v26);
    if (v7 <= 0x19 && *v24 < 0x1A)
    {
      *(a1 + 112) = *(a1 + 80);
      v8 = *(a2 + 8);
      v23 = 0x10000001ALL;
      v22 = xmmword_1D0E843B0;
      v21 = &unk_1F4CE3E48;
      v24 = v25;
      v9 = 552;
      if (!*(a1 + 16364))
      {
        v9 = 8;
      }

      sub_1D0B894B0(&v21, a1 + 15256 + v9);
      sub_1D0D55F8C();
    }

    LOWORD(v21) = 12;
    v20[0] = 4;
    *v26 = *(a1 + 80);
    if (*(a3 + 23) < 0)
    {
      v18 = *a3;
    }

    v12 = cnprint::CNLogFormatter::FormatGeneral(a1 + 2712, v26, "%s failed, invalid specified states, min state %d, max state %d.");
  }

  if (*(a1 + 2735) >= 0)
  {
    LOBYTE(v19) = v12;
  }

  else
  {
    v19 = *(a1 + 2712);
  }

  cnprint::CNPrinter::Print(&v21, v20, "%s", v13, v14, v15, v16, v17, v19);
}

void sub_1D0D72F8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45)
{
  sub_1D0D857FC(&a45);
  sub_1D0D857FC(&STACK[0x248]);
  _Unwind_Resume(a1);
}

double sub_1D0D73044@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 24) = 0x10000001ALL;
  *a2 = &unk_1F4CE3E48;
  *(a2 + 8) = xmmword_1D0E843B0;
  *(a2 + 32) = a2 + 40;
  v2 = 552;
  if (!*(a1 + 1108))
  {
    v2 = 8;
  }

  *&result = sub_1D0B894B0(a2, a1 + v2).n128_u64[0];
  return result;
}

double sub_1D0D730A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  v4 = *(a3 + 12);
  v5 = (v4 * v3);
  *&result = 0x10000001ALL;
  *(a1 + 24) = 0x10000001ALL;
  *a1 = &unk_1F4CE3E48;
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

void sub_1D0D73100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 8);
  v7 = *(a2 + 12);
  v64 = 0x10000001ALL;
  v62 = &unk_1F4CE3E48;
  v63 = xmmword_1D0E843B0;
  v65 = &v66;
  sub_1D0B89390(a4, a3, &v62);
  if (v6 <= v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v6;
  }

  if (v7)
  {
    v10 = v6 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = v9;
  }

  if (!*(a1 + 1108))
  {
    sub_1D0B894B0(a1 + 552, a1 + 8);
    sub_1D0B894B0(a1 + 800, a1 + 256);
    *&v8 = sub_1D0B894B0(a1 + 848, a1 + 304).n128_u64[0];
  }

  *(a1 + 1108) = 1;
  if (*(a2 + 8) && *(a2 + 12))
  {
    *(a1 + 1104) = 0;
    v12 = *(a1 + 560);
    v13 = *(a1 + 564);
    if (v12 <= v13)
    {
      v14 = *(a1 + 564);
    }

    else
    {
      v14 = *(a1 + 560);
    }

    if (v13)
    {
      v15 = v12 == 0;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      v16 = 0;
    }

    else
    {
      v16 = v14;
    }

    if (v11 >= 1)
    {
      v17 = 0;
      do
      {
        v18 = *(*(a2 + 32) + v17);
        if (v18 < 0 || v18 >= v16)
        {
          LOWORD(v67) = 2;
          LOBYTE(v83) = 4;
          cnprint::CNLogFormatter::FormatGeneral((a1 + 1272), "ResetStates(): states must contain valid indices into x, Rxx, and zx.", v8);
          if (*(a1 + 1295) >= 0)
          {
            LOBYTE(v24) = a1 - 8;
          }

          else
          {
            v24 = *(a1 + 1272);
          }

          cnprint::CNPrinter::Print(&v67, &v83, "%s", v19, v20, v21, v22, v23, v24);
        }

        v17 += 4;
      }

      while (4 * v11 != v17);
    }

    v69 = 0x1A00000001;
    v67 = &unk_1F4CE1FD0;
    v70 = v71;
    if (v16 == 1)
    {
      v33 = 0;
      *&v36 = 0x100000001;
      *(&v36 + 1) = 0x100000001;
      v68 = v36;
      v71[0] = 0;
      v34 = 1;
      v35 = 1;
      v25 = v11;
    }

    else
    {
      v25 = v11;
      if (v16 <= 0)
      {
        v34 = 0;
        v35 = 0;
        v68 = 0uLL;
        v33 = 1;
      }

      else
      {
        v26 = 0;
        *(&v68 + 1) = v16 | 0x100000000;
        v27 = vdupq_n_s64(v16 - 1);
        v28 = xmmword_1D0E84440;
        v29 = xmmword_1D0E7DD30;
        v30 = vdupq_n_s64(4uLL);
        v31 = v72;
        LODWORD(v68) = 1;
        DWORD1(v68) = v16;
        do
        {
          v32 = vmovn_s64(vcgeq_u64(v27, v29));
          if (vuzp1_s16(v32, *v27.i8).u8[0])
          {
            *(v31 - 3) = v26;
          }

          if (vuzp1_s16(v32, *&v27).i8[2])
          {
            *(v31 - 2) = v26 + 1;
          }

          if (vuzp1_s16(*&v27, vmovn_s64(vcgeq_u64(v27, *&v28))).i32[1])
          {
            *(v31 - 1) = v26 + 2;
            *v31 = v26 + 3;
          }

          v26 += 4;
          v28 = vaddq_s64(v28, v30);
          v29 = vaddq_s64(v29, v30);
          v31 += 4;
        }

        while (((v16 + 3) & 0xFFFFFFFC) != v26);
        v33 = 0;
        v34 = 1;
        v35 = v16;
      }
    }

    v88 = 0x10000001ALL;
    v83 = &unk_1F4CE3E90;
    v89 = v90;
    v84 = v35;
    v85 = v34;
    v86 = v35 * v34;
    v87 = v35;
    if (v35)
    {
      v37 = 0;
      for (i = 0; i != v35; ++i)
      {
        if ((v33 & 1) == 0)
        {
          v39 = 0;
          do
          {
            v90[i + v87 * v39] = v71[v37 + v39];
            ++v39;
          }

          while (v34 != v39);
        }

        v37 += v34;
      }
    }

    if (v25 >= 1)
    {
      v40 = *(a2 + 32);
      v41 = v25;
      do
      {
        v42 = *v40++;
        v90[v42] = -1;
        --v41;
      }

      while (v41);
    }

    sub_1D0D95644(v81, v16);
    v69 = 0x1A00000001;
    v67 = &unk_1F4CE1FD0;
    v70 = v71;
    if (v25 == 1)
    {
      v43 = 0;
      *&v44 = 0x100000001;
      *(&v44 + 1) = 0x100000001;
      v68 = v44;
      v71[0] = 0;
      v45 = 1;
      v46 = 1;
    }

    else if (v25 <= 0)
    {
      v45 = 0;
      v46 = 0;
      v68 = 0uLL;
      v43 = 1;
    }

    else
    {
      v47 = 0;
      *(&v68 + 1) = v25 | 0x100000000;
      v48 = vdupq_n_s64(v25 - 1);
      v49 = xmmword_1D0E84440;
      v50 = xmmword_1D0E7DD30;
      v51 = vdupq_n_s64(4uLL);
      v52 = v72;
      LODWORD(v68) = 1;
      DWORD1(v68) = v25;
      do
      {
        v53 = vmovn_s64(vcgeq_u64(v48, v50));
        if (vuzp1_s16(v53, *v48.i8).u8[0])
        {
          *(v52 - 3) = v47;
        }

        if (vuzp1_s16(v53, *&v48).i8[2])
        {
          *(v52 - 2) = v47 + 1;
        }

        if (vuzp1_s16(*&v48, vmovn_s64(vcgeq_u64(v48, *&v49))).i32[1])
        {
          *(v52 - 1) = v47 + 2;
          *v52 = v47 + 3;
        }

        v47 += 4;
        v49 = vaddq_s64(v49, v51);
        v50 = vaddq_s64(v50, v51);
        v52 += 4;
      }

      while (((v25 + 3) & 0xFFFFFFFC) != v47);
      v43 = 0;
      v45 = 1;
      v46 = v25;
    }

    v78 = 0x10000001ALL;
    v73 = &unk_1F4CE3E90;
    v79 = v80;
    v74 = v46;
    v75 = v45;
    v76 = v46 * v45;
    v77 = v46;
    if (v46)
    {
      v54 = 0;
      for (j = 0; j != v46; ++j)
      {
        if ((v43 & 1) == 0)
        {
          v56 = 0;
          do
          {
            v80[j + v77 * v56] = v71[v54 + v56];
            ++v56;
          }

          while (v45 != v56);
        }

        v54 += v45;
      }
    }

    sub_1D0D956F4(&v67, v81, &v73);
    sub_1D0D94F80(&v67, *(a2 + 16), *(a2 + 32));
    if (v16 > v25)
    {
      LODWORD(v57) = 0;
      v58 = v89;
      v59 = v82;
      v60 = v25;
      do
      {
        v57 = v57;
        do
        {
          v61 = v58[v57++];
        }

        while (v61 == -1);
        *(v59 + 4 * v60++) = v61;
      }

      while (v60 != v16);
    }

    sub_1D0D95034(a1, v16, v81);
  }

  sub_1D0B894B0(a1 + 8, a1 + 552);
  sub_1D0B894B0(a1 + 256, a1 + 800);
  sub_1D0B894B0(a1 + 304, a1 + 848);
  *(a1 + 1108) = 1;
}

void raven::RavenPNTEstimator::InflateUncertainty(raven::RavenPNTEstimator *this, double a2)
{
  if (*(this + 58))
  {
    if (a2 >= 1.0 && (*&a2 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
    {
      *(this + 7) = *(this + 5);
      v14 = 0x10000001ALL;
      v13 = xmmword_1D0E843B0;
      v12 = &unk_1F4CE3E48;
      v15 = &v16;
      v3 = 552;
      if (!*(this + 4091))
      {
        v3 = 8;
      }

      sub_1D0B894B0(&v12, this + v3 + 15256);
      sub_1D0D87FCC(v11);
    }

    LOWORD(v12) = 12;
    LOBYTE(v18) = 4;
    v17 = *(this + 5);
    v4 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, &v17, "InflateUncertainty failed, invalid inflation factor, %.6lf.");
  }

  else
  {
    LOWORD(v12) = 12;
    LOBYTE(v18) = 2;
    v17 = *(this + 5);
    v4 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, &v17, "InflateUncertainty called on uninitialized estimator");
  }

  if (*(this + 2735) >= 0)
  {
    LOBYTE(v10) = v4;
  }

  else
  {
    v10 = *(this + 339);
  }

  cnprint::CNPrinter::Print(&v12, &v18, "%s", v5, v6, v7, v8, v9, v10);
}

void sub_1D0D740FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  __cxa_guard_abort(&qword_1EE053A90);
  sub_1D0D857FC(&a38);
  _Unwind_Resume(a1);
}

uint64_t sub_1D0D741B0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v2 = *(a2 + 12);
  *(a1 + 24) = 0x10000001ALL;
  *a1 = &unk_1F4CE3E90;
  *(a1 + 8) = v2;
  *(a1 + 12) = v3;
  *(a1 + 16) = v3 * v2;
  *(a1 + 20) = v2;
  *(a1 + 32) = a1 + 40;
  return sub_1D0D2EF0C(a2, a1);
}

void raven::RavenPNTEstimator::InflateDevicePositionUncertainty(raven::RavenPNTEstimator *this, double a2)
{
  if ((atomic_load_explicit(&qword_1EE053AA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE053AA0))
  {
    v15 = 0x300000001;
    *v14 = &unk_1F4CDF0C8;
    v16 = &v17;
    *&v14[8] = xmmword_1D0E7F310;
    v17 = 0x100000000;
    v18 = 2;
    sub_1D0D2CF48(v14, &unk_1EE053D38);
    __cxa_atexit(sub_1D0D26840, &unk_1EE053D38, &dword_1D0B71000);
    __cxa_guard_release(&qword_1EE053AA0);
  }

  sub_1D0D95F6C(v14, &unk_1EE053D38);
  sub_1D0B751F4(__p, "InflateDevicePositionUncertainty");
  raven::RavenPNTEstimator::InflateUncertainties(this, v14, __p, a2);
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  LOWORD(__p[0]) = 12;
  v11 = 2;
  *v14 = *(this + 5);
  v4 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, v14, "Inflating estimator variance of device (only) position error states,factor,%.2lf", a2);
  if (*(this + 2735) >= 0)
  {
    LOBYTE(v10) = v4;
  }

  else
  {
    v10 = *(this + 339);
  }

  cnprint::CNPrinter::Print(__p, &v11, "%s", v5, v6, v7, v8, v9, v10);
}

void raven::RavenPNTEstimator::InflateDeviceVelocityUncertainty(raven::RavenPNTEstimator *this, double a2)
{
  if ((atomic_load_explicit(&qword_1EE053AA8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE053AA8))
  {
    v15 = 0x300000001;
    *v14 = &unk_1F4CDF0C8;
    v16 = &v17;
    *&v14[8] = xmmword_1D0E7F310;
    v17 = 0x400000003;
    v18 = 5;
    sub_1D0D2CF48(v14, &unk_1EE053D70);
    __cxa_atexit(sub_1D0D26840, &unk_1EE053D70, &dword_1D0B71000);
    __cxa_guard_release(&qword_1EE053AA8);
  }

  sub_1D0D95F6C(v14, &unk_1EE053D70);
  sub_1D0B751F4(__p, "InflateDeviceVelocityUncertainty");
  raven::RavenPNTEstimator::InflateUncertainties(this, v14, __p, a2);
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  LOWORD(__p[0]) = 12;
  v11 = 2;
  *v14 = *(this + 5);
  v4 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, v14, "Inflating estimator variance of device (only) velocity error states,factor,%.2lf", a2);
  if (*(this + 2735) >= 0)
  {
    LOBYTE(v10) = v4;
  }

  else
  {
    v10 = *(this + 339);
  }

  cnprint::CNPrinter::Print(__p, &v11, "%s", v5, v6, v7, v8, v9, v10);
}

void raven::RavenPNTEstimator::InflateInsUncertainty(raven::RavenPNTEstimator *this, double a2)
{
  if ((atomic_load_explicit(&qword_1EE053AB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE053AB0))
  {
    v28 = 0x300000001;
    v26 = &unk_1F4CDF0C8;
    v29 = &v30;
    v27 = xmmword_1D0E7F310;
    v30 = 0xA00000009;
    v31 = 11;
    sub_1D0D2CF48(&v26, v32);
    v21 = 0x300000001;
    v19 = &unk_1F4CDF0C8;
    v22 = &v23;
    v20 = xmmword_1D0E7F310;
    v23 = 0xD0000000CLL;
    v24 = 14;
    sub_1D0D2CF48(&v19, v25);
    sub_1D0D74958(v11, v32, v25);
    v14 = 0x300000001;
    v12 = &unk_1F4CDF0C8;
    v15 = &v16;
    v13 = xmmword_1D0E7F310;
    v16 = 0x100000000FLL;
    v17 = 17;
    sub_1D0D2CF48(&v12, v18);
    sub_1D0D748D0(v11, v18);
    __cxa_atexit(sub_1D0D74A04, &qword_1EE0541B8, &dword_1D0B71000);
    __cxa_guard_release(&qword_1EE053AB0);
  }

  sub_1D0D95F6C(v11, &qword_1EE0541B8);
  sub_1D0B751F4(v32, "InflateInsUncertainty");
  raven::RavenPNTEstimator::InflateUncertainties(this, v11, v32, a2);
  if (v33 < 0)
  {
    operator delete(v32[0]);
  }

  LOWORD(v32[0]) = 12;
  LOBYTE(v26) = 2;
  v11[0] = *(this + 5);
  v4 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, v11, "Inflating estimator variance of ins sensor error states,factor,%.2lf", a2);
  if (*(this + 2735) >= 0)
  {
    LOBYTE(v10) = v4;
  }

  else
  {
    v10 = *(this + 339);
  }

  cnprint::CNPrinter::Print(v32, &v26, "%s", v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D0D748D0(uint64_t a1, uint64_t a2)
{
  qword_1EE0541D0 = 0x100000009;
  qword_1EE0541B8 = &unk_1F4CE2018;
  unk_1EE0541C0 = xmmword_1D0E84620;
  qword_1EE0541D8 = &unk_1EE0541E0;
  return sub_1D0D8C29C(a1, a2, &qword_1EE0541B8);
}

uint64_t sub_1D0D74958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x100000006;
  *a1 = &unk_1F4CE1400;
  *(a1 + 8) = xmmword_1D0E84530;
  *(a1 + 32) = a1 + 40;
  return sub_1D0D8C29C(a2, a3, a1);
}

void raven::RavenPNTEstimator::InflateUserPositionUncertainty(raven::RavenPNTEstimator *this, double a2)
{
  if ((atomic_load_explicit(&qword_1EE053AC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE053AC0))
  {
    v15 = 0x300000001;
    *v14 = &unk_1F4CDF0C8;
    v16 = &v17;
    *&v14[8] = xmmword_1D0E7F310;
    v17 = 0x1500000014;
    v18 = 22;
    sub_1D0D2CF48(v14, &unk_1EE053DA8);
    __cxa_atexit(sub_1D0D26840, &unk_1EE053DA8, &dword_1D0B71000);
    __cxa_guard_release(&qword_1EE053AC0);
  }

  sub_1D0D95F6C(v14, &unk_1EE053DA8);
  sub_1D0B751F4(__p, "InflateUserPositionUncertainty");
  raven::RavenPNTEstimator::InflateUncertainties(this, v14, __p, a2);
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  LOWORD(__p[0]) = 12;
  v11 = 2;
  *v14 = *(this + 5);
  v4 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, v14, "Inflating estimator variance of user position error states,factor,%.2lf", a2);
  if (*(this + 2735) >= 0)
  {
    LOBYTE(v10) = v4;
  }

  else
  {
    v10 = *(this + 339);
  }

  cnprint::CNPrinter::Print(__p, &v11, "%s", v5, v6, v7, v8, v9, v10);
}

void raven::RavenPNTEstimator::InflateUserVelocityUncertainty(raven::RavenPNTEstimator *this, double a2)
{
  if ((atomic_load_explicit(&qword_1EE053AC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE053AC8))
  {
    v15 = 0x300000001;
    *v14 = &unk_1F4CDF0C8;
    v16 = &v17;
    *&v14[8] = xmmword_1D0E7F310;
    v17 = 0x1800000017;
    v18 = 25;
    sub_1D0D2CF48(v14, &unk_1EE053DE0);
    __cxa_atexit(sub_1D0D26840, &unk_1EE053DE0, &dword_1D0B71000);
    __cxa_guard_release(&qword_1EE053AC8);
  }

  sub_1D0D95F6C(v14, &unk_1EE053DE0);
  sub_1D0B751F4(__p, "InflateUserVelocityUncertainty");
  raven::RavenPNTEstimator::InflateUncertainties(this, v14, __p, a2);
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  LOWORD(__p[0]) = 12;
  v11 = 2;
  *v14 = *(this + 5);
  v4 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, v14, "Inflating estimator variance of user velocity error states,factor,%.2lf", a2);
  if (*(this + 2735) >= 0)
  {
    LOBYTE(v10) = v4;
  }

  else
  {
    v10 = *(this + 339);
  }

  cnprint::CNPrinter::Print(__p, &v11, "%s", v5, v6, v7, v8, v9, v10);
}

void raven::RavenPNTEstimator::InflateVelocityUncertainty(raven::RavenPNTEstimator *this, double a2)
{
  if ((atomic_load_explicit(&qword_1EE053AD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE053AD0))
  {
    v21 = 0x300000001;
    v19 = &unk_1F4CDF0C8;
    v22 = &v23;
    v20 = xmmword_1D0E7F310;
    v23 = 0x400000003;
    v24 = 5;
    sub_1D0D2CF48(&v19, v11);
    v14 = 0x300000001;
    v12 = &unk_1F4CDF0C8;
    v15 = &v16;
    v13 = xmmword_1D0E7F310;
    v16 = 0x1800000017;
    v17 = 25;
    sub_1D0D2CF48(&v12, v18);
    sub_1D0D74958(&unk_1EE054130, v11, v18);
    __cxa_atexit(sub_1D0D749E4, &unk_1EE054130, &dword_1D0B71000);
    __cxa_guard_release(&qword_1EE053AD0);
  }

  sub_1D0D95F6C(v11, &unk_1EE054130);
  sub_1D0B751F4(&v19, "InflateVelocityUncertainty");
  raven::RavenPNTEstimator::InflateUncertainties(this, v11, &v19, a2);
  if (SHIBYTE(v20) < 0)
  {
    operator delete(v19);
  }

  LOWORD(v19) = 12;
  v18[0] = 2;
  v11[0] = *(this + 5);
  v4 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, v11, "Inflating estimator variance of velocity error states,factor,%.2lf", a2);
  if (*(this + 2735) >= 0)
  {
    LOBYTE(v10) = v4;
  }

  else
  {
    v10 = *(this + 339);
  }

  cnprint::CNPrinter::Print(&v19, v18, "%s", v5, v6, v7, v8, v9, v10);
}

void raven::RavenPNTEstimator::InflateXOUncertainty(raven::RavenPNTEstimator *this, double a2)
{
  if ((atomic_load_explicit(&qword_1EE053AD8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE053AD8))
  {
    v15 = 0x200000001;
    *v14 = &unk_1F4CE2060;
    v16 = &v17;
    *&v14[8] = xmmword_1D0E84500;
    v17 = 0x1300000012;
    sub_1D0D751D4(v14, &unk_1EE053C38);
    __cxa_atexit(sub_1D0D7527C, &unk_1EE053C38, &dword_1D0B71000);
    __cxa_guard_release(&qword_1EE053AD8);
  }

  sub_1D0D95F6C(v14, &unk_1EE053C38);
  sub_1D0B751F4(__p, "InflateXOUncertainty");
  raven::RavenPNTEstimator::InflateUncertainties(this, v14, __p, a2);
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  LOWORD(__p[0]) = 12;
  v11 = 2;
  *v14 = *(this + 5);
  v4 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, v14, "Inflating estimator variance of xo error states,factor,%.2lf", a2);
  if (*(this + 2735) >= 0)
  {
    LOBYTE(v10) = v4;
  }

  else
  {
    v10 = *(this + 339);
  }

  cnprint::CNPrinter::Print(__p, &v11, "%s", v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D0D751D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 12);
  *(a2 + 24) = 0x100000002;
  *a2 = &unk_1F4CE0EA8;
  *(a2 + 8) = v3;
  *(a2 + 12) = v4;
  *(a2 + 16) = v4 * v3;
  *(a2 + 20) = v3;
  *(a2 + 32) = a2 + 40;
  return sub_1D0D2EF0C(a1, a2);
}

uint64_t sub_1D0D752A8(uint64_t a1)
{
  *(a1 + 24) = 0x10000001CLL;
  *a1 = &unk_1F4CE0A20;
  *(a1 + 32) = a1 + 40;
  *(a1 + 8) = xmmword_1D0E843A0;
  return sub_1D0BBBC00(a1, 0.0);
}

uint64_t sub_1D0D752EC(uint64_t a1, void *a2, uint64_t a3, int8x16_t a4, int8x16_t a5)
{
  v8 = *(a1 + 5928);
  v9 = *(a1 + 5920);
  if (v8 != v9)
  {
    v10 = CNTimeSpan::operator-(a2, v9, a4, a5);
    if (fabs(v11 + v10) >= 2.22044605e-16)
    {
      v12 = v8 - 290;
      v13 = v8 - 680;
      do
      {
        *v12 = &unk_1F4CD5E28;
        *(v12 - 366) = &unk_1F4CD5E28;
        *(v12 - 390) = &unk_1F4CD5E28;
        v14 = v12 - 392;
        v12 -= 682;
        v13 -= 682;
      }

      while (v14 != v9);
      *(a1 + 5928) = v9;
    }
  }

  return sub_1D0D7D150(a1, a2, a3);
}

double sub_1D0D75408(uint64_t a1, int a2, double *a3)
{
  if (*(a1 + 16) != a2)
  {
    __assert_rtn("operator=", "cnsubvector.h", 347, "this->num_elements_ == A.num_elements_");
  }

  if (a2 >= 1)
  {
    v3 = *(a1 + 304);
    v4 = *(*(a1 + 264) + 32);
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

void sub_1D0D7547C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a2 + 16);
  sub_1D0D96660(v8, a2);
  v9 = v7;
  v10 = 1;
  v11 = v7;
  v12 = v7;
  sub_1D0B894B0(a1 + 8, v8);
  sub_1D0B894B0(a1 + 256, a3);
  sub_1D0D96660(v8, a4);
  v9 = v7;
  v10 = 1;
  v11 = v7;
  v12 = v7;
  sub_1D0B894B0(a1 + 304, v8);
  sub_1D0B894B0(a1 + 552, a1 + 8);
  sub_1D0B894B0(a1 + 800, a1 + 256);
  sub_1D0B894B0(a1 + 848, a1 + 304);
  *(a1 + 1096) = 0x3FF0000000000000;
  *(a1 + 1104) = 0;
  *(a1 + 1108) = 1;
}

uint64_t sub_1D0D75540(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x10000001ALL;
  *a1 = &unk_1F4CE3E48;
  *(a1 + 8) = xmmword_1D0E843B0;
  *(a1 + 32) = a1 + 40;
  return sub_1D0B89390(a2, a3, a1);
}

uint64_t sub_1D0D755EC(uint64_t a1)
{
  v1 = *(a1 + 1104);
  if (v1 == 2)
  {
    return 1;
  }

  if (v1 != 1)
  {
    if (!*(a1 + 1104))
    {
      (*(*a1 + 40))(v11, a1);
      sub_1D0D87FCC(v14);
    }

    LOWORD(v12) = 2;
    LOBYTE(v13[0]) = 5;
    v4 = cnprint::CNLogFormatter::FormatGeneral((a1 + 1272), "LeastSquaresEstimator::IsObservable called with unexpected observability state %hhu", v1);
    if (*(a1 + 1295) >= 0)
    {
      LOBYTE(v10) = v4;
    }

    else
    {
      v10 = *(a1 + 1272);
    }

    cnprint::CNPrinter::Print(&v12, v13, "%s", v5, v6, v7, v8, v9, v10);
  }

  return 0;
}

void sub_1D0D757CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51)
{
  sub_1D0D96490(&a51);
  sub_1D0D857FC((v51 - 128));
  sub_1D0D857FC((v51 - 80));
  sub_1D0D857FC(&a14);
  _Unwind_Resume(a1);
}

uint64_t sub_1D0D75810(uint64_t result)
{
  v1 = *(result + 5928);
  v2 = *(result + 5920);
  if (v1 != v2)
  {
    v3 = v1 - 290;
    v4 = v1 - 680;
    do
    {
      *v3 = &unk_1F4CD5E28;
      *(v3 - 366) = &unk_1F4CD5E28;
      *(v3 - 390) = &unk_1F4CD5E28;
      v5 = v3 - 392;
      v3 -= 682;
      v4 -= 682;
    }

    while (v5 != v2);
  }

  *(result + 5928) = v2;
  *(result + 456) = 0;
  return result;
}

uint64_t sub_1D0D758B4(uint64_t result)
{
  *(result + 8) = 0;
  *(result + 32) = 0;
  *(result + 40) = 0;
  return result;
}

uint64_t sub_1D0D758C0(uint64_t result)
{
  *(result + 8) = 0;
  *(result + 32) = 0;
  *(result + 40) = 0;
  return result;
}

void raven::RavenPNTEstimator::ResetSubStates(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v32 = 0x10000001CLL;
  v31 = xmmword_1D0E843A0;
  v30 = &unk_1F4CE1250;
  v33 = v34;
  v36 = 0x10000001CLL;
  *&v35[8] = xmmword_1D0E843A0;
  *v35 = &unk_1F4CE20F0;
  v37 = v38;
  sub_1D0D94A44(a2, &v30, v35);
  v12 = *v33;
  v32 = 0x10000001CLL;
  v31 = xmmword_1D0E843A0;
  v30 = &unk_1F4CE1250;
  v33 = v34;
  v36 = 0x10000001CLL;
  *&v35[8] = xmmword_1D0E843A0;
  *v35 = &unk_1F4CE20F0;
  v37 = v38;
  sub_1D0D94D8C(a2, &v30, v35);
  if (v12 > 0x1B || *v33 >= 0x1C)
  {
    LOWORD(v30) = 12;
    LOBYTE(v39[0]) = 4;
    *v35 = *(a1 + 80);
    if (*(a7 + 23) < 0)
    {
      v15 = *a7;
    }

    v16 = cnprint::CNLogFormatter::FormatGeneral(a1 + 2712, v35, "%s failed, invalid specified full states, min state %d, max state %d.");
    goto LABEL_13;
  }

  v32 = 0x10000001ALL;
  v31 = xmmword_1D0E843B0;
  v30 = &unk_1F4CE3E90;
  v33 = v34;
  v36 = 0x10000001ALL;
  *&v35[8] = xmmword_1D0E843B0;
  *v35 = &unk_1F4CE1E70;
  v37 = v38;
  sub_1D0D94A44(a4, &v30, v35);
  v13 = *v33;
  v32 = 0x10000001ALL;
  v31 = xmmword_1D0E843B0;
  v30 = &unk_1F4CE3E90;
  v33 = v34;
  v36 = 0x10000001ALL;
  *&v35[8] = xmmword_1D0E843B0;
  *v35 = &unk_1F4CE1E70;
  v37 = v38;
  sub_1D0D94D8C(a4, &v30, v35);
  if (v13 > 0x19 || *v33 >= 0x1A)
  {
    LOWORD(v30) = 12;
    LOBYTE(v39[0]) = 4;
    *v35 = *(a1 + 80);
    if (*(a7 + 23) < 0)
    {
      v24 = *a7;
    }

    v16 = cnprint::CNLogFormatter::FormatGeneral(a1 + 2712, v35, "%s failed, invalid specified error states, min state %d, max state %d.");
  }

  else
  {
    if (*(a3 + 8) == *(a2 + 8))
    {
      v14 = *(a4 + 8);
      if (*(a5 + 8) == v14 && *(a6 + 8) == v14 && *(a6 + 12) == v14)
      {
        sub_1D0D87FCC(v35);
      }

      LOWORD(v30) = 12;
      LOBYTE(v39[0]) = 4;
      *v35 = *(a1 + 80);
      if (*(a7 + 23) < 0)
      {
        v27 = *a7;
      }

      v16 = cnprint::CNLogFormatter::FormatGeneral(a1 + 2712, v35, "%s failed, size mismatch, error state size,%u, inital error value size,%u, init covariance matrix size, %u, %u");
LABEL_13:
      v22 = *(a1 + 2735);
      v23 = *(a1 + 2712);
      goto LABEL_21;
    }

    LOWORD(v30) = 12;
    LOBYTE(v39[0]) = 4;
    *v35 = *(a1 + 80);
    if (*(a7 + 23) < 0)
    {
      v25 = *a7;
    }

    v16 = cnprint::CNLogFormatter::FormatGeneral(a1 + 2712, v35, "%s failed, size mismatch, full state size,%u, initial value size,%u");
  }

  v22 = *(a1 + 2735);
  v23 = *(a1 + 2712);
LABEL_21:
  if (v22 >= 0)
  {
    v26 = v16;
  }

  else
  {
    v26 = v23;
  }

  cnprint::CNPrinter::Print(&v30, v39, "%s", v17, v18, v19, v20, v21, v26);
}

void sub_1D0D76030(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  sub_1D0D857FC(&a38);
  sub_1D0D857FC((v38 - 256));
  sub_1D0D857FC(&a32);
  sub_1D0D857FC(&a26);
  sub_1D0D857FC(&a20);
  _Unwind_Resume(a1);
}

void raven::RavenPNTEstimator::ResetInsStates(raven::RavenPNTEstimator *this, int8x16_t a2, int8x16_t a3)
{
  if ((atomic_load_explicit(&qword_1EE053AE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE053AE0))
  {
    v22 = 0x300000001;
    v20 = &unk_1F4CDF0C8;
    v23 = &v24;
    v21 = xmmword_1D0E7F310;
    v24 = 0xB0000000ALL;
    v25 = 12;
    sub_1D0D2CF48(&v20, v66);
    v28 = 0x300000001;
    v26 = &unk_1F4CDF0C8;
    v29 = &v30;
    v27 = xmmword_1D0E7F310;
    v30 = 0xE0000000DLL;
    v31 = 15;
    sub_1D0D2CF48(&v26, &v32);
    v54 = 0x300000001;
    __p = &unk_1F4CDF0C8;
    v55 = &v56;
    v53 = xmmword_1D0E7F310;
    v56 = 0x1100000010;
    v57 = 18;
    sub_1D0D2CF48(&__p, &v58);
    sub_1D0D74958(v63, &v32, &v58);
    sub_1D0D76A34(&unk_1EE054208, v66, v63);
    __cxa_atexit(sub_1D0D74A04, &unk_1EE054208, &dword_1D0B71000);
    __cxa_guard_release(&qword_1EE053AE0);
  }

  if ((atomic_load_explicit(&qword_1EE053AE8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE053AE8))
  {
    sub_1D0C51578(3, 1, v66);
    sub_1D0C51578(3, 1, &v20);
    sub_1D0D76BD4(3, 1, &v32);
    sub_1D0D76B48(v63, &v20, &v32);
    sub_1D0D76AC0(v66, v63);
    __cxa_atexit(sub_1D0D76CA4, &qword_1EE0542A8, &dword_1D0B71000);
    __cxa_guard_release(&qword_1EE053AE8);
  }

  v4 = raven::RavenPNTEstimator::UseHighAccelerationParameters(this, a2, a3);
  v5 = *(this + 146);
  v6 = 744;
  if (v4)
  {
    v6 = 752;
  }

  v7 = 768;
  if (v4)
  {
    v7 = 776;
  }

  v8 = *(v5 + v6);
  v9 = *(v5 + 728);
  v10 = *(v5 + v7);
  if ((atomic_load_explicit(&qword_1EE053AF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE053AF0))
  {
    v22 = 0x300000001;
    v20 = &unk_1F4CDF0C8;
    v23 = &v24;
    v21 = xmmword_1D0E7F310;
    v24 = 0xA00000009;
    v25 = 11;
    sub_1D0D2CF48(&v20, v66);
    v28 = 0x300000001;
    v26 = &unk_1F4CDF0C8;
    v29 = &v30;
    v27 = xmmword_1D0E7F310;
    v30 = 0xD0000000CLL;
    v31 = 14;
    sub_1D0D2CF48(&v26, &v32);
    v54 = 0x300000001;
    __p = &unk_1F4CDF0C8;
    v55 = &v56;
    v53 = xmmword_1D0E7F310;
    v56 = 0x100000000FLL;
    v57 = 17;
    sub_1D0D2CF48(&__p, &v58);
    sub_1D0D74958(v63, &v32, &v58);
    sub_1D0D76A34(&unk_1EE054258, v66, v63);
    __cxa_atexit(sub_1D0D74A04, &unk_1EE054258, &dword_1D0B71000);
    __cxa_guard_release(&qword_1EE053AF0);
  }

  if ((atomic_load_explicit(&qword_1EE053AF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE053AF8))
  {
    sub_1D0D76CC4();
    __cxa_atexit(sub_1D0D76CA4, &qword_1EE054318, &dword_1D0B71000);
    __cxa_guard_release(&qword_1EE053AF8);
  }

  v60 = 0x100000003;
  v58 = &unk_1F4CDEB28;
  v61 = v62;
  v59 = xmmword_1D0E7DCC0;
  memset_pattern16(v62, &unk_1D0E7F4B0, 0x18uLL);
  v11.f64[0] = v8 * v8;
  v28 = 0x100000003;
  v27 = xmmword_1D0E7DCC0;
  v26 = &unk_1F4CDEB28;
  v29 = &v30;
  sub_1D0BC5ED4(&v58, &v26, v11);
  v49 = 0x100000003;
  v47 = &unk_1F4CDEB28;
  v50 = v51;
  v48 = xmmword_1D0E7DCC0;
  memset_pattern16(v51, &unk_1D0E7F4B0, 0x18uLL);
  v12.f64[0] = v9 * v9;
  v54 = 0x100000003;
  v53 = xmmword_1D0E7DCC0;
  __p = &unk_1F4CDEB28;
  v55 = &v56;
  sub_1D0BC5ED4(&v47, &__p, v12);
  v39 = 0x100000003;
  v37 = &unk_1F4CDEB28;
  v40 = v41;
  v38 = xmmword_1D0E7DCC0;
  memset_pattern16(v41, &unk_1D0E7F4B0, 0x18uLL);
  v13.f64[0] = v10 * v10;
  v44 = 0x100000003;
  v43 = xmmword_1D0E7DCC0;
  v42 = &unk_1F4CDEB28;
  v45 = &v46;
  sub_1D0BC5ED4(&v37, &v42, v13);
  v34 = 0x100000006;
  v33 = xmmword_1D0E84530;
  v32 = &unk_1F4CE0BF8;
  v35 = &v36;
  sub_1D0BA59C4(&__p, &v42, &v32);
  v22 = 0x100000009;
  v20 = &unk_1F4CE2138;
  v21 = xmmword_1D0E84620;
  v23 = &v24;
  sub_1D0BA59C4(&v26, &v32, &v20);
  v63[3] = 0xA0000000ALL;
  *&v63[1] = xmmword_1D0E84630;
  v63[0] = &unk_1F4CE2180;
  v64 = &v65;
  sub_1D0BED87C(&v20, 0, v63);
  v69 = 0x900000009;
  v66[0] = &unk_1F4CE21C8;
  v66[1] = v63[1];
  v14 = (HIDWORD(v63[1]) * LODWORD(v63[1]));
  v67 = HIDWORD(v63[1]) * LODWORD(v63[1]);
  v68 = v63[1];
  v15 = v71;
  v70 = v71;
  if (LODWORD(v63[1]) > 9)
  {
    v18 = "this->max_num_rows_ >= A.NumRows()";
    v19 = 567;
  }

  else
  {
    if (HIDWORD(v63[1]) <= 9)
    {
      if (v14 >= 1)
      {
        v16 = v64;
        do
        {
          v17 = *v16++;
          *v15++ = v17;
          --v14;
        }

        while (v14);
      }

      sub_1D0D8C5B0(&v32, &unk_1EE054208);
      sub_1D0D96A9C(v63, &qword_1EE0542A8);
      sub_1D0D95F6C(&v26, &unk_1EE054258);
      sub_1D0D96B84(&v20, &qword_1EE054318);
      sub_1D0D96C6C(&v58, v66);
    }

    v18 = "this->max_num_cols_ >= A.NumCols()";
    v19 = 568;
  }

  __assert_rtn("CNMatrix", "cnmatrix.h", v19, v18);
}

uint64_t sub_1D0D76A34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x100000009;
  *a1 = &unk_1F4CE2018;
  *(a1 + 8) = xmmword_1D0E84620;
  *(a1 + 32) = a1 + 40;
  return sub_1D0D8C29C(a2, a3, a1);
}

uint64_t sub_1D0D76AC0(uint64_t a1, uint64_t a2)
{
  qword_1EE0542C0 = 0x100000009;
  qword_1EE0542A8 = &unk_1F4CE2138;
  *algn_1EE0542B0 = xmmword_1D0E84620;
  qword_1EE0542C8 = &unk_1EE0542D0;
  return sub_1D0BA59C4(a1, a2, &qword_1EE0542A8);
}

uint64_t sub_1D0D76B48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x100000006;
  *a1 = &unk_1F4CE0BF8;
  *(a1 + 8) = xmmword_1D0E84530;
  *(a1 + 32) = a1 + 40;
  return sub_1D0BA59C4(a2, a3, a1);
}

uint64_t sub_1D0D76BD4@<X0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X8>)
{
  if (a1 < 0)
  {
    __assert_rtn("Ones", "cnmatrix.h", 2317, "nr >= 0");
  }

  if (a2 < 0)
  {
    __assert_rtn("Ones", "cnmatrix.h", 2318, "nc >= 0");
  }

  *(a3 + 24) = 0x100000003;
  *a3 = &unk_1F4CDEB28;
  *(a3 + 32) = a3 + 40;
  *(a3 + 8) = a1;
  *(a3 + 12) = a2;
  *(a3 + 16) = a2 * a1;
  *(a3 + 20) = a1;

  return sub_1D0BBBC00(a3, 1.0);
}

uint64_t sub_1D0D76CC4()
{
  qword_1EE054330 = 0x100000009;
  qword_1EE054318 = &unk_1F4CE2138;
  qword_1EE054338 = &unk_1EE054340;
  unk_1EE054320 = xmmword_1D0E84620;
  return sub_1D0BBBC00(&qword_1EE054318, 0.0);
}

double sub_1D0D76D10(uint64_t a1, uint64_t a2, float64x2_t a3)
{
  *(a1 + 24) = 0x100000003;
  *a1 = &unk_1F4CDEB28;
  *(a1 + 8) = xmmword_1D0E7DCC0;
  *(a1 + 32) = a1 + 40;
  *&result = *&sub_1D0BC5ED4(a2, a1, a3);
  return result;
}

void *sub_1D0D76D9C(void *result)
{
  result[64] = &unk_1F4CDEAF8;
  result[58] = &unk_1F4CDEAF8;
  *result = &unk_1F4CD5E28;
  return result;
}

void *sub_1D0D76E1C(void *result)
{
  result[76] = &unk_1F4CDEAF8;
  result[58] = &unk_1F4CDEAF8;
  *result = &unk_1F4CD5E28;
  return result;
}

void sub_1D0D76E9C(uint64_t a1, uint64_t a2)
{
  v9 = 0x100000002;
  v7 = &unk_1F4CE0220;
  v8 = xmmword_1D0E83F60;
  v10 = &v11;
  v4 = 0x200000002;
  v2 = &unk_1F4CE0268;
  v3 = xmmword_1D0E83F70;
  v5 = &v6;
  *(a1 + 24) = 0x200000002;
  *a1 = &unk_1F4CE0268;
  *(a1 + 8) = xmmword_1D0E83F70;
  *(a1 + 32) = a1 + 40;
  sub_1D0B9FACC(a2, &v7, &v2, a1);
}

uint64_t sub_1D0D76FA4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v2 = *(a2 + 12);
  *(a1 + 24) = 0x200000002;
  *a1 = &unk_1F4CE0268;
  *(a1 + 8) = v2;
  *(a1 + 12) = v3;
  *(a1 + 16) = v3 * v2;
  *(a1 + 20) = v2;
  *(a1 + 32) = a1 + 40;
  return sub_1D0BD2018(a2, a1);
}

void sub_1D0D7702C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 24) = 0x200000002;
  *a2 = &unk_1F4CE0268;
  *(a2 + 8) = xmmword_1D0E83F70;
  *(a2 + 32) = a2 + 40;
  v9 = 0x100000002;
  v7 = &unk_1F4CE0EA8;
  v8 = xmmword_1D0E83F60;
  v10 = &v11;
  v4 = 0x100000008;
  v2 = &unk_1F4CE4320;
  v3 = xmmword_1D0E84520;
  v5 = &v6;
  sub_1D0B9F868(a1, &v7, &v2, a2);
}

void sub_1D0D7713C(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = 0x200000002;
  *a1 = &unk_1F4CE0268;
  *(a1 + 8) = xmmword_1D0E83F70;
  *(a1 + 32) = a1 + 40;
  v2 = 0;
  sub_1D0B9F748(a2, a1, &v2);
}

double sub_1D0D771D0(_BYTE *a1, __n128 *a2, uint64_t a3, uint64_t a4)
{
  sub_1D0D7B1D0(a1, a2, a3, a4);
  *a1 = 0;

  *&result = sub_1D0BADC18(a1, a2, v6, v7, v8, v9, v10, v11).n128_u64[0];
  return result;
}

uint64_t sub_1D0D77214(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v2 = *(a2 + 12);
  *(a1 + 24) = 0x100000013;
  *a1 = &unk_1F4CE2378;
  *(a1 + 8) = v2;
  *(a1 + 12) = v3;
  *(a1 + 16) = v3 * v2;
  *(a1 + 20) = v2;
  *(a1 + 32) = a1 + 40;
  return sub_1D0D2EF0C(a2, a1);
}

uint64_t sub_1D0D772C0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v2 = *(a2 + 12);
  *(a1 + 24) = 0x100000007;
  *a1 = &unk_1F4CE0C88;
  *(a1 + 8) = v2;
  *(a1 + 12) = v3;
  *(a1 + 16) = v3 * v2;
  *(a1 + 20) = v2;
  *(a1 + 32) = a1 + 40;
  return sub_1D0D2EF0C(a2, a1);
}

uint64_t sub_1D0D7736C(uint64_t a1, uint64_t a2)
{
  v153 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 16);
  if (((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE && (*&v2 & 0x7FFFFFFFFFFFFFFFuLL) - 1 > 0xFFFFFFFFFFFFELL || (*(a2 + 56) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
LABEL_9:
    result = 0xFFFFFFFFLL;
    goto LABEL_10;
  }

  v9 = *(a2 + 80);
  result = 0xFFFFFFFFLL;
  if ((*(a2 + 64) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && *(a2 + 56) > 0.0 && *(a2 + 64) > 0.0 && (*(a2 + 72) & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && (*&v9 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    v10 = *(a2 + 96);
    v11 = *(a2 + 104);
    if ((*(a2 + 88) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && *(a2 + 72) > 0.0 && v9 > 0.0 && *(a2 + 88) > 0.0 && (*(a2 + 96) & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && (*&v11 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && (*(a2 + 112) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && v10 > 0.0 && v11 > 0.0 && *(a2 + 112) > 0.0 && (*(a2 + 120) & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
    {
      v12 = *(a2 + 144);
      v13.i64[0] = vdupq_laneq_s64(v12, 1).u64[0];
      v14 = vdupq_lane_s64(*&v12.f64[0], 0);
      v14.i64[0] = *(a2 + 128);
      v101 = *(a2 + 160);
      v13.i64[1] = v101;
      v15.f64[0] = NAN;
      v15.f64[1] = NAN;
      v16 = vnegq_f64(v15);
      v17 = vandq_s8(v14, v16);
      v18 = vandq_s8(v13, v16);
      v19 = vdupq_n_s64(0x7FF0000000000000uLL);
      if ((vmaxv_u16(vmovn_s32(vuzp1q_s32(vcgeq_s64(v17, v19), vcgeq_s64(v18, v19)))) & 1) == 0 && *(a2 + 120) > 0.0 && *(a2 + 128) > 0.0 && (*(a2 + 176) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        v20.f64[0] = *(a2 + 160);
        v97 = *(a2 + 176);
        v20.f64[1] = v97;
        if ((vaddvq_s32(vandq_s8(vuzp1q_s32(vclezq_f64(v12), vclezq_f64(v20)), xmmword_1D0E84470)) & 0xF) == 0)
        {
          v96 = *(a2 + 144);
          v93 = *(a2 + 136);
          v92 = *(a2 + 168);
          v99 = fabs(v2);
          v100 = *(a2 + 112);
          exp(-v99 / v10);
          exp(-v99 / v11);
          exp(-v99 / v100);
          v139 = 0x200000002;
          v137 = &unk_1F4CE0268;
          v138 = xmmword_1D0E83F70;
          v140 = &v141;
          if (!sub_1D0BA10B0(a1, a2, &v137, COERCE_DOUBLE(0x200000002), v21))
          {
            sub_1D0D8CC70(v134);
            v29 = *(a1 + 2760);
            v30 = "N8cnmatrix8CNMatrixILj2ELj1EPFiPKvRNS0_ILj2ELj1EdEEEEE" + 48;
            if (*(a1 + 2760))
            {
              if (v29 == 1)
              {
                v31 = v99 * (v93 * *(a1 + 2792));
                v32 = v136;
                *v136 = v31;
                v33 = v135;
                v32[v135 + 1] = v31;
                v32[2 * v33 + 2] = v31;
                v143 = 0x300000001;
                *v142 = &unk_1F4CDF0C8;
                v144 = &v145;
                *&v142[8] = xmmword_1D0E7F310;
                v145 = 0x400000003;
                v146 = 5;
                sub_1D0D2CF48(v142, v126);
                *&v109 = 0x300000003;
                v107 = &unk_1F4CD5DD0;
                v108 = xmmword_1D0E76C10;
                *(&v109 + 1) = v110;
                v143 = 0x300000001;
                *v142 = &unk_1F4CDF0C8;
                v144 = &v145;
                *&v142[8] = xmmword_1D0E7F310;
                v145 = 0x1A00000019;
                v146 = 27;
                sub_1D0D2CF48(v142, v125);
                sub_1D0D7B740(&v150, a1 + 14840, v125);
                v122 = 0x100000001;
                v120 = &unk_1F4CDF418;
                *&v34 = 0x100000001;
                *(&v34 + 1) = 0x100000001;
                v121 = v34;
                v123 = &v124;
                v130 = 0x100000001;
                v128 = &unk_1F4CDF460;
                v129 = v34;
                v131 = &v132;
                sub_1D0D6F608(v142, &v150);
                sub_1D0D7FDEC(v142, &v120, &v128);
                v30 = "N8cnmatrix8CNMatrixILj2ELj1EPFiPKvRNS0_ILj2ELj1EdEEEEE" + 48;
                sub_1D0C51578(3, 1, &v147);
                v149[*v131] = 1.0;
                sub_1D0D562E0(&v147, &v150, &v102);
                sub_1D0BFA800(&v102);
                if (fabs(v35.f64[0]) <= 0.000000015)
                {
                  *v142 = 12;
                  v117[0] = 4;
                  v51 = cnprint::CNLogFormatter::FormatGeneral(a1 + 2712, a2, "GetProcessNoiseInformationMatrix unexpected zero vector arbitrary_1,%.3lf,%.3lf,%.3lf", *v105, v105[1], v105[2]);
                  if (*(a1 + 2735) >= 0)
                  {
                    LOBYTE(v57) = v51;
                  }

                  else
                  {
                    v57 = *(a1 + 2712);
                  }

                  cnprint::CNPrinter::Print(v142, v117, "%s", v52, v53, v54, v55, v56, v57);
                }

                else
                {
                  v35.f64[0] = 1.0 / v35.f64[0];
                  sub_1D0C51FB4(&v102, v142, v35);
                  sub_1D0B894B0(&v102, v142);
                }

                sub_1D0D562E0(&v150, &v102, v117);
                sub_1D0BFA800(v117);
                if (fabs(v58.f64[0]) <= 0.000000015)
                {
                  *v142 = 12;
                  LOBYTE(v112) = 4;
                  v59 = cnprint::CNLogFormatter::FormatGeneral(a1 + 2712, a2, "GetProcessNoiseInformationMatrix unexpected zero vector arbitrary_2,%.3lf,%.3lf,%.3lf", *v119, v119[1], v119[2]);
                  if (*(a1 + 2735) >= 0)
                  {
                    LOBYTE(v65) = v59;
                  }

                  else
                  {
                    v65 = *(a1 + 2712);
                  }

                  cnprint::CNPrinter::Print(v142, &v112, "%s", v60, v61, v62, v63, v64, v65);
                }

                else
                {
                  v58.f64[0] = 1.0 / v58.f64[0];
                  sub_1D0C51FB4(v117, v142, v58);
                  sub_1D0B894B0(v117, v142);
                }

                sub_1D0D4BC50(&v150, &v112);
                sub_1D0C4DE2C(&v107, 0, ":", v142);
                sub_1D0D2D288(v142, &v112);
                sub_1D0D4BC50(&v102, &v112);
                sub_1D0C4DE2C(&v107, 1, ":", v142);
                sub_1D0D2D288(v142, &v112);
                sub_1D0D4BC50(v117, &v112);
                sub_1D0C4DE2C(&v107, 2, ":", v142);
                sub_1D0D2D288(v142, &v112);
                if (*(*(a1 + 14872) + 192) * (v92 * *(*(a1 + 14872) + 192)) <= v93)
                {
                  v66 = v93;
                }

                else
                {
                  v66 = *(*(a1 + 14872) + 192) * (v92 * *(*(a1 + 14872) + 192));
                }

                v67 = *(a1 + 2784);
                v68 = *(a1 + 2792);
                sub_1D0BFA9C4(3, 3, &v150);
                v69 = v99 * (v68 * v66);
                v70 = v152;
                *v152 = v99 * (v67 * v96.f64[0]);
                v71 = SHIDWORD(v151);
                v70[SHIDWORD(v151) + 1] = v69;
                v70[2 * v71 + 2] = v69;
                sub_1D0C1B688(&v107, &v150, &v102);
                sub_1D0C1B708(&v107, v117);
                sub_1D0C1B688(&v102, v117, &v147);
                sub_1D0BADC74(v142, v134, v126, v126);
                sub_1D0D2CFF0(v142, &v147);
              }

              else if (v29 == 2)
              {
                __assert_rtn("GetProcessNoiseInformationMatrix", "ravenpntestimator.h", 806, "false && Unexpected case RavenPNTEstimatorStateParameterization::ParameterizationCount");
              }
            }

            else
            {
              LOBYTE(v108) = 0;
              v110[0] = 0x300000003;
              *(&v108 + 1) = &unk_1F4CD5DD0;
              v109 = xmmword_1D0E76C10;
              v110[1] = &v111;
              v107 = &unk_1F4CD5D90;
              v36 = *(a1 + 14872);
              *v142 = *v36;
              *&v142[16] = *(v36 + 16);
              v150 = 0uLL;
              v151 = 0;
              v147 = 0uLL;
              v148 = 0;
              v37 = cnnavigation::ENUToECEF(&v150, 1, 0, v142, 1, &v147, &v107);
              v38 = v37;
              if (*(a1 + 1208) == 1 && *(a1 + 1320) - 1 <= 6)
              {
                v39 = qword_1D0E87A28[(*(a1 + 1320) - 1)];
              }

              else
              {
                v39 = 928;
              }

              v94 = cnstatistics::InverseNormal(v37, 1.0 - *(*(a1 + 1168) + v39), 0.0, sqrt(*(*(a1 + 15136) + 192 * *(a1 + 15124) + 192)));
              v40 = *(*(a1 + 14872) + 192);
              sub_1D0BFA9C4(3, 3, &v150);
              if (v38 || v40 <= v94)
              {
                v49 = v152;
                *v152 = v97;
                v50 = SHIDWORD(v151);
                v49[SHIDWORD(v151) + 1] = v97;
                v49[2 * v50 + 2] = v97;
              }

              else
              {
                sub_1D0BFA9C4(3, 3, &v147);
                v130 = 0x100000003;
                v128 = &unk_1F4CDEB28;
                v129 = xmmword_1D0E7DCC0;
                v131 = &v132;
                v41 = *(a1 + 14872);
                v132 = *(v41 + 200);
                v133 = *(v41 + 216);
                v104 = 0x300000003;
                v102 = &unk_1F4CD5DD0;
                v103 = xmmword_1D0E76C10;
                v105 = &v106;
                if (v108 == 1)
                {
                  sub_1D0B894B0(&v102, &v108 + 8);
                }

                sub_1D0C51CC8(&v102, ":", 0, v142);
                v42 = DWORD2(v129);
                if (SDWORD2(v129) < 1)
                {
                  v44 = 0.0;
                }

                else
                {
                  v43 = v131;
                  v44 = 0.0;
                  v45 = v144;
                  do
                  {
                    v46 = *v43++;
                    v47 = v46;
                    v48 = *v45++;
                    v44 = v44 + v47 * v48;
                    --v42;
                  }

                  while (v42);
                }

                sub_1D0C51CC8(&v102, ":", 1, v142);
                v72 = DWORD2(v129);
                if (SDWORD2(v129) < 1)
                {
                  v74 = 0.0;
                }

                else
                {
                  v73 = v131;
                  v74 = 0.0;
                  v75 = v144;
                  do
                  {
                    v76 = *v73++;
                    v77 = v76;
                    v78 = *v75++;
                    v74 = v74 + v77 * v78;
                    --v72;
                  }

                  while (v72);
                }

                v79 = sqrt(v74 * v74 + v44 * v44);
                if (fabs(v79) <= 0.000000015)
                {
                  v81 = v149;
                  *v149 = v97;
                  v82 = SHIDWORD(v148);
                  v81[SHIDWORD(v148) + 1] = v97;
                  *&v81[2 * v82 + 2] = v101;
                }

                else
                {
                  v95 = *(*(a1 + 14872) + 192);
                  v98 = v79;
                  sub_1D0D97510(v117);
                  v80 = v119;
                  *v119 = v96.f64[0];
                  v80[v118 + 1] = v95 * vmuld_lane_f64(v95, v96, 1);
                  v114 = 0x200000002;
                  v112 = &unk_1F4CE0268;
                  v113 = xmmword_1D0E83F70;
                  v115 = v116;
                  v116[0] = v44 / v98;
                  v116[1] = v74 / v98;
                  v116[2] = -(v74 / v98);
                  v116[3] = v44 / v98;
                  v143 = 0x200000001;
                  *v142 = &unk_1F4CE2060;
                  v144 = &v145;
                  *&v142[8] = xmmword_1D0E84500;
                  v145 = 0x100000000;
                  sub_1D0D751D4(v142, v127);
                  sub_1D0D97550(v125, &v112, v117);
                  sub_1D0D76FA4(&v120, &v112);
                  sub_1D0D97550(v126, v125, &v120);
                  sub_1D0D8D39C(v142, &v147, v127, v127);
                  sub_1D0D8CEA0(v142, v126);
                  *&v149[2 * SHIDWORD(v148) + 2] = v101;
                }

                sub_1D0C1B688(&v102, &v147, v117);
                sub_1D0C1B708(&v102, &v112);
                sub_1D0C1B688(v117, &v112, v142);
                sub_1D0B894B0(&v150, v142);
              }

              v143 = 0x300000001;
              *v142 = &unk_1F4CDF0C8;
              v144 = &v145;
              *&v142[8] = xmmword_1D0E7F310;
              v145 = 0x100000000;
              v146 = 2;
              sub_1D0D2CF48(v142, &v102);
              v143 = 0x300000001;
              *v142 = &unk_1F4CDF0C8;
              v144 = &v145;
              *&v142[8] = xmmword_1D0E7F310;
              v145 = 0x400000003;
              v146 = 5;
              sub_1D0D2CF48(v142, v117);
              v30 = "dEEEEE";
              v83.f64[0] = v2 * v2 * v99 * 0.333333333;
              sub_1D0D7B844(&v147, &v150, v83);
              sub_1D0BADC74(v142, v134, &v102, &v102);
              sub_1D0D2CFF0(v142, &v147);
              v84.f64[0] = v2 * v2 * 0.5;
              sub_1D0D7B844(&v147, &v150, v84);
              sub_1D0BADC74(v142, v134, &v102, v117);
              sub_1D0D2CFF0(v142, &v147);
              v85.f64[0] = v2 * v2 * 0.5;
              sub_1D0D7B844(&v147, &v150, v85);
              sub_1D0BADC74(v142, v134, v117, &v102);
              sub_1D0D2CFF0(v142, &v147);
              v86.f64[0] = v99;
              sub_1D0D7B844(&v147, &v150, v86);
              sub_1D0BADC74(v142, v134, v117, v117);
              sub_1D0D2CFF0(v142, &v147);
            }

            v143 = *(v30 + 55);
            *v142 = &unk_1F4CE2060;
            v144 = &v145;
            *&v142[8] = xmmword_1D0E84500;
            v145 = 0x100000000FLL;
            sub_1D0D751D4(v142, &v112);
            v143 = 0x600000001;
            *v142 = &unk_1F4CE1988;
            v144 = &v145;
            *&v142[8] = xmmword_1D0E84600;
            v87 = xmmword_1D0E7DD30;
            v88 = &v145 + 1;
            v89 = -6;
            v90 = vdupq_n_s64(6uLL);
            v91 = vdupq_n_s64(2uLL);
            while (1)
            {
              if (vmovn_s64(vcgtq_u64(v90, v87)).u8[0])
              {
                *(v88 - 1) = v89 + 23;
              }

              if (vmovn_s64(vcgtq_u64(vdupq_n_s64(6uLL), *&v87)).i32[1])
              {
                *v88 = v89 + 24;
              }

              v87 = vaddq_s64(v87, v91);
              v88 += 2;
              v89 += 2;
              if (!v89)
              {
                sub_1D0D90B60(v117, v142);
                sub_1D0D975D8(v142);
              }
            }
          }

          *v142 = 12;
          v134[0] = 4;
          v22 = cnprint::CNLogFormatter::FormatGeneral(a1 + 2712, a2, "RavenEstimator::GetOscillatorProcessNoiseCovarianceMatrix failed");
          if (*(a1 + 2735) >= 0)
          {
            LOBYTE(v28) = v22;
          }

          else
          {
            v28 = *v22;
          }

          cnprint::CNPrinter::Print(v142, v134, "%s", v23, v24, v25, v26, v27, v28);
          goto LABEL_9;
        }
      }
    }
  }

LABEL_10:
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D0D78614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x1EEE9AC00](a1, a2, a3, a4);
  v12 = *(v4 + 8);
  v13 = *(v4 + 12);
  if (v12 <= v13)
  {
    v14 = *(v4 + 12);
  }

  else
  {
    v14 = *(v4 + 8);
  }

  if (v12)
  {
    _ZF = v13 == 0;
  }

  else
  {
    _ZF = 1;
  }

  v16 = !_ZF && v14 == 18;
  if (!v16 || ((v19 = v5, v21 = *(v5 + 8), v20 = *(v5 + 12), v21 <= v20) ? (v22 = *(v5 + 12)) : (v22 = *(v5 + 8)), !v21 || !v20 || v22 != 15))
  {
    LOWORD(v154) = 12;
    v64[0] = 4;
    v17 = "f_SixDOFError called with inadequate matrices";
LABEL_12:
    cnprint::CNPrinter::Print(&v154, v64, v17, v7, v8, v9, v10, v11, v54);
    return 0xFFFFFFFFLL;
  }

  v23 = v6;
  v24 = *v6;
  if (!*v6)
  {
    LOWORD(v154) = 12;
    v64[0] = 4;
    v17 = "f_SixDOFError called with invalid numerical integrator";
    goto LABEL_12;
  }

  v25 = v9;
  v26 = v8;
  v27 = v7;
  v28 = v4;
  v29 = v6[2];
  v166 = *v6[1];
  v30 = sub_1D0D81140(v165, v29);
  if ((*(*v24 + 56))(v24, &v166, v165, v30))
  {
    return 0xFFFFFFFFLL;
  }

  v164 = *(v23 + 2);
  v161 = 0x100000013;
  v160 = xmmword_1D0E844F0;
  v159 = &unk_1F4CE40B8;
  v162 = &v163;
  v156 = 0x1300000013;
  v154 = &unk_1F4CE4070;
  v155 = xmmword_1D0E84640;
  v157 = &v158;
  v151 = 0xF00000013;
  v150 = xmmword_1D0E84650;
  v149 = &unk_1F4CE4028;
  v152 = &v153;
  if ((*(*v24 + 88))(v24, &v164, v23[3], &v159, &v154, &v149))
  {
    return 0xFFFFFFFFLL;
  }

  v31 = v162;
  _Q1 = v162[4];
  _D3 = _Q1.f64[1];
  __asm { FMLA            D2, D3, V1.D[1] }

  v38 = sqrt(_D2);
  if (fabs(v38) <= 0.000000015)
  {
    return 0xFFFFFFFFLL;
  }

  v39 = vdupq_lane_s64(*&v38, 0);
  v162[3] = vdivq_f64(v162[3], v39);
  v31[4] = vdivq_f64(_Q1, v39);
  v146 = 0x100000013;
  v145 = xmmword_1D0E844F0;
  v144 = &unk_1F4CE40B8;
  v147 = &v148;
  v55 = vdupq_n_s64(0x7FF8000000000000uLL);
  v108 = v55;
  v109 = v55;
  v110 = v55;
  v111 = v55;
  v112 = v55;
  v113 = v55;
  v114 = v55;
  v115 = v55;
  v116 = v55;
  v117 = v55;
  v118 = v55;
  v119 = v55;
  v120 = v55;
  v121 = v55;
  v122 = v55;
  v123 = v55;
  v124 = v55;
  v125 = v55;
  v126 = v55;
  v127 = v55;
  v128 = v55;
  v129 = v55;
  v130 = v55;
  v131 = v55;
  v132 = v55;
  v133 = v55;
  v134 = v55;
  v135 = v55;
  v136 = v55;
  v137 = v55;
  v138 = v55;
  v139 = v55;
  v140 = v55;
  v141 = v55;
  v142 = v55;
  v143 = 0x7FF8000000000000;
  sub_1D0D85CD4(v165, v28, &v144, &v108);
  v105 = 0x100000013;
  v104 = xmmword_1D0E844F0;
  v103 = &unk_1F4CE40B8;
  v106 = &v107;
  v67 = v55;
  v68 = v55;
  v69 = v55;
  v70 = v55;
  v71 = v55;
  v72 = v55;
  v73 = v55;
  v74 = v55;
  v75 = v55;
  v76 = v55;
  v77 = v55;
  v78 = v55;
  v79 = v55;
  v80 = v55;
  v81 = v55;
  v82 = v55;
  v83 = v55;
  v84 = v55;
  v85 = v55;
  v86 = v55;
  v87 = v55;
  v88 = v55;
  v89 = v55;
  v90 = v55;
  v91 = v55;
  v92 = v55;
  v93 = v55;
  v94 = v55;
  v95 = v55;
  v96 = v55;
  v97 = v55;
  v98 = v55;
  v99 = v55;
  v100 = v55;
  v101 = v55;
  v102 = 0x7FF8000000000000;
  sub_1D0D97C6C(v64);
  sub_1D0D85CD4(&v159, v64, &v103, &v67);
  sub_1D0D97CD0(v64);
  v40 = v66;
  *v66 = v108.i64[0];
  v41 = v65;
  v42 = 8 * v65;
  v40[v65 + 1] = v108.i64[1];
  v40[2 * v41 + 2] = v109.i64[0];
  v40[3 * v41 + 3] = v109.i64[1];
  v40[4 * v41 + 4] = v110.i64[0];
  v40[5 * v41 + 5] = v110.i64[1];
  v43 = &v40[6 * v41];
  v43[6] = v111.i64[0];
  v44 = &v40[7 * v41];
  v44[6] = v111.i64[1];
  v45 = &v40[v42];
  v45[6] = v112.i64[0];
  v43[7] = v112.i64[1];
  v44[7] = v113.i64[0];
  v45[7] = v113.i64[1];
  v43[8] = v114.i64[0];
  v44[8] = v114.i64[1];
  v46 = &v40[8 * v41];
  v46[8] = v115.i64[0];
  v43[9] = v115.i64[1];
  v44[9] = v116.i64[0];
  v46[9] = v116.i64[1];
  v40[9 * v41 + 10] = v117.i64[0];
  v40[10 * v41 + 11] = v117.i64[1];
  v40[11 * v41 + 12] = v118.i64[0];
  v40[12 * v41 + 13] = v118.i64[1];
  v40[13 * v41 + 14] = v119.i64[0];
  v40[14 * v41 + 15] = v119.i64[1];
  v40[15 * v41 + 16] = v120.i64[0];
  v40[16 * v41 + 17] = v120.i64[1];
  v40[17 * v41 + 18] = v121.i64[0];
  sub_1D0D97D14(v61);
  v47 = v63;
  *v63 = 1.0 / *v67.i64;
  v48 = v62;
  v49 = 8 * v62;
  v47[v62 + 1] = 1.0 / *&v67.i64[1];
  v47[2 * v48 + 2] = 1.0 / *v68.i64;
  v47[3 * v48 + 3] = 1.0 / *&v68.i64[1];
  v47[4 * v48 + 4] = 1.0 / *v69.i64;
  v47[5 * v48 + 5] = 1.0 / *&v69.i64[1];
  v50 = &v47[6 * v48];
  v50[6] = *v70.i64;
  v51 = &v47[7 * v48];
  v51[6] = *&v71.i64[1];
  v52 = &v47[v49];
  v52[6] = *v73.i64;
  v53 = &v47[9 * v48];
  v53[6] = *&v74.i64[1];
  v50[7] = *&v70.i64[1];
  v51[7] = *v72.i64;
  v52[7] = *&v73.i64[1];
  v53[7] = *v75.i64;
  v50[8] = *v71.i64;
  v51[8] = *&v72.i64[1];
  v47[8 * v48 + 8] = *v74.i64;
  v53[8] = *&v75.i64[1];
  v47[10 * v48 + 9] = 1.0 / *v76.i64;
  v47[11 * v48 + 10] = 1.0 / *&v76.i64[1];
  v47[12 * v48 + 11] = 1.0 / *v77.i64;
  v47[13 * v48 + 12] = 1.0 / *&v77.i64[1];
  v47[14 * v48 + 13] = 1.0 / *v78.i64;
  v47[15 * v48 + 14] = 1.0 / *&v78.i64[1];
  v47[((16 * v48) | 0xF)] = 1.0 / *v79.i64;
  v47[17 * v48 + 16] = 1.0 / *&v79.i64[1];
  v47[18 * v48 + 17] = 1.0 / *v80.i64;
  sub_1D0D97DE0(v59, v61, &v154);
  sub_1D0D97D58(v60, v59, v64);
  sub_1D0D97E8C(v59, v61, &v149);
  sub_1D0D97FA4(v57, v60, v28);
  sub_1D0D98030(v56, v59, v19);
  sub_1D0D97F18(v58, v57, v56);
  sub_1D0B894B0(v27, v58);
  sub_1D0B894B0(v26, v60);
  sub_1D0B894B0(v25, v59);
  return 0;
}

uint64_t sub_1D0D78E5C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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

  if (!v11 && v10 == 2)
  {
    v13 = *(a2 + 8);
    v14 = *(a2 + 12);
    if (v13 <= v14)
    {
      v15 = *(a2 + 12);
    }

    else
    {
      v15 = *(a2 + 8);
    }

    if (v13)
    {
      v16 = v14 == 0;
    }

    else
    {
      v16 = 1;
    }

    if (!v16 && v15 == 2)
    {
      v19 = *a3;
      v24 = 0x200000002;
      v22 = &unk_1F4CE0268;
      v23 = xmmword_1D0E83F70;
      v26[1] = 0;
      v26[2] = 0;
      v25 = v26;
      v26[0] = 0x3FF0000000000000;
      v26[3] = 0x3FF0000000000000;
      sub_1D0D96C6C(v27, &v22);
    }
  }

  LOWORD(v22) = 12;
  LOBYTE(v21) = 4;
  cnprint::CNPrinter::Print(&v22, &v21, "f_TwoStateOscillator called with inadequate matrices.", a4, a5, a6, a7, a8, v20);
  return 0xFFFFFFFFLL;
}

uint64_t sub_1D0D790A4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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

  if (!v11 && v10 == 6)
  {
    v13 = *(a2 + 8);
    v14 = *(a2 + 12);
    if (v13 <= v14)
    {
      v15 = *(a2 + 12);
    }

    else
    {
      v15 = *(a2 + 8);
    }

    if (v13)
    {
      v16 = v14 == 0;
    }

    else
    {
      v16 = 1;
    }

    if (!v16 && v15 == 6)
    {
      v19 = *a3;
      v24 = 0x600000006;
      v22 = &unk_1F4CDF278;
      v23 = xmmword_1D0E7F320;
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v33 = 0;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v41 = 0;
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v25 = &v26;
      v26 = 0x3FF0000000000000;
      *&v30 = 0x3FF0000000000000;
      v34 = 0x3FF0000000000000;
      *&v38 = 0x3FF0000000000000;
      v42 = 0x3FF0000000000000;
      v46 = 0x3FF0000000000000;
      sub_1D0D96C6C(v47, &v22);
    }
  }

  LOWORD(v22) = 12;
  LOBYTE(v21) = 4;
  cnprint::CNPrinter::Print(&v22, &v21, "f_SixStateNearlyConstantVelocity called with inadequate matrices.", a4, a5, a6, a7, a8, v20);
  return 0xFFFFFFFFLL;
}

uint64_t sub_1D0D79370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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

  v12 = !v11 && v10 == 3;
  if (v12 && ((v13 = *(a2 + 8), v14 = *(a2 + 12), v13 <= v14) ? (v15 = *(a2 + 12)) : (v15 = *(a2 + 8)), v13 ? (v16 = v14 == 0) : (v16 = 1), !v16 ? (v17 = v15 == 3) : (v17 = 0), v17))
  {
    v25 = 0x10000001ALL;
    v23 = &unk_1F4CE3E48;
    v24 = xmmword_1D0E843B0;
    v26 = &v27;
    sub_1D0B88838(a1, a2, &v23);
    sub_1D0B894B0(a4, &v23);
    v25 = 0x300000003;
    v23 = &unk_1F4CD5DD0;
    v24 = xmmword_1D0E76C10;
    v28 = 0u;
    v29 = 0;
    v31 = 0u;
    v26 = &v27;
    v27 = 0x3FF0000000000000;
    v30 = 0x3FF0000000000000;
    v32 = 0;
    v33 = 0x3FF0000000000000;
    sub_1D0B894B0(a5, &v23);
    v25 = 0x300000003;
    v23 = &unk_1F4CD5DD0;
    v24 = xmmword_1D0E76C10;
    v28 = 0u;
    v29 = 0;
    v31 = 0u;
    v26 = &v27;
    v27 = 0x3FF0000000000000;
    v30 = 0x3FF0000000000000;
    v32 = 0;
    v33 = 0x3FF0000000000000;
    sub_1D0B894B0(a6, &v23);
    return 0;
  }

  else
  {
    LOWORD(v23) = 12;
    v34 = 4;
    cnprint::CNPrinter::Print(&v23, &v34, "f_ThreeStateNearlyConstant called with inadequate matrices.", a4, a5, a6, a7, a8, v22);
    return 0xFFFFFFFFLL;
  }
}

void *sub_1D0D7951C(void *result)
{
  result[25] = &unk_1F4CDEAF8;
  *result = &unk_1F4CD5E28;
  return result;
}

uint64_t sub_1D0D7955C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = MEMORY[0x1EEE9AC00](a1, a2, a3, a4);
  v14 = *(v4 + 8);
  v15 = *(v4 + 12);
  if (v14 <= v15)
  {
    v16 = *(v4 + 12);
  }

  else
  {
    v16 = *(v4 + 8);
  }

  if (v14)
  {
    v17 = v15 == 0;
  }

  else
  {
    v17 = 1;
  }

  if (!v17 && v16 == 18)
  {
    v20 = *(v5 + 8);
    v19 = *(v5 + 12);
    if (v20 <= v19)
    {
      v21 = *(v5 + 12);
    }

    else
    {
      v21 = *(v5 + 8);
    }

    if (v20 && v19 && v21 == 18)
    {
      v22 = v12;
      v23 = v6->i64[0];
      v46 = *v6->i64[1];
      v45 = v6[2];
      v24 = v6[1].i64[0];
      v32 = v6[1].i64[1];
      *v25.i64 = CNTimeSpan::operator-(&v45, &v46, v45, v13);
      *v27.i64 = (v26 + *v25.i64) * v22;
      v33[0] = 0;
      v33[1] = 0;
      *v28.i64 = CNTimeSpan::SetTimeSpan(v33, 0, v27, v25);
      CNTimeSpan::operator+(&v46, v33, v28, v29);
      v41 = 0x10000000FLL;
      v39[26] = &unk_1F4CE4258;
      v42 = v43;
      v40 = xmmword_1D0E845F0;
      memset(v43, 0, sizeof(v43));
      v44 = 0;
      v37 = 0x10000001ALL;
      v35 = &unk_1F4CE3E48;
      v36 = xmmword_1D0E84660;
      v38 = v39;
      sub_1D0D98AA8(v34, 18, 18);
    }
  }

  LOWORD(v33[0]) = 12;
  LOBYTE(v47[0]) = 4;
  cnprint::CNPrinter::Print(v33, v47, "in_SixDOFError called with inadequate matrices.", v7, v8, v9, v10, v11, v31);
  return 0xFFFFFFFFLL;
}

uint64_t sub_1D0D7A0A0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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

  if (!v11 && v10 == 2)
  {
    v13 = *(a2 + 8);
    v14 = *(a2 + 12);
    if (v13 <= v14)
    {
      v15 = *(a2 + 12);
    }

    else
    {
      v15 = *(a2 + 8);
    }

    if (v13)
    {
      v16 = v14 == 0;
    }

    else
    {
      v16 = 1;
    }

    if (!v16 && v15 == 2)
    {
      v18 = *a3;
      v29 = 0x100000002;
      v27[26] = &unk_1F4CE0220;
      v30 = v31;
      v28 = xmmword_1D0E83F60;
      v31[1] = 0;
      v31[0] = 0;
      v25 = 0x10000001ALL;
      v23 = &unk_1F4CE3E48;
      v24 = xmmword_1D0E83F60;
      v26 = v27;
      sub_1D0D98AA8(v22, 2, 2);
    }
  }

  LOWORD(v21) = 12;
  LOBYTE(v32[0]) = 4;
  cnprint::CNPrinter::Print(&v21, v32, "in_TwoStateOscillator called with inadequate matrices.", a4, a5, a6, a7, a8, v20);
  return 0xFFFFFFFFLL;
}

void sub_1D0D7A484(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_1D0D857FC((v71 - 144));
  sub_1D0D857FC(&a71);
  _Unwind_Resume(a1);
}

uint64_t sub_1D0D7A4AC(uint64_t a1, uint64_t a2, double *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9)
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

  if (!v12 && v11 == 6)
  {
    v14 = *(a2 + 8);
    v15 = *(a2 + 12);
    if (v14 <= v15)
    {
      v16 = *(a2 + 12);
    }

    else
    {
      v16 = *(a2 + 8);
    }

    if (v14)
    {
      v17 = v15 == 0;
    }

    else
    {
      v17 = 1;
    }

    if (!v17 && v16 == 6)
    {
      v19 = *a3 * a9;
      v31 = 0x100000006;
      v29[26] = &unk_1F4CE0BF8;
      v32 = v33;
      v30 = xmmword_1D0E84530;
      memset(v33, 0, sizeof(v33));
      v27 = 0x10000001ALL;
      v25 = &unk_1F4CE3E48;
      v26 = xmmword_1D0E84530;
      v28 = v29;
      sub_1D0D98AA8(v24, 6, 6);
    }
  }

  LOWORD(v23[0]) = 12;
  LOBYTE(v22) = 4;
  cnprint::CNPrinter::Print(v23, &v22, "in_SixStateNearlyConstantVelocity called with inadequate matrices.", a4, a5, a6, a7, a8, v21);
  return 0xFFFFFFFFLL;
}

uint64_t sub_1D0D7A73C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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

  if (!v11 && v10 == 3)
  {
    v13 = *(a2 + 8);
    v14 = *(a2 + 12);
    if (v13 <= v14)
    {
      v15 = *(a2 + 12);
    }

    else
    {
      v15 = *(a2 + 8);
    }

    if (v13)
    {
      v16 = v14 == 0;
    }

    else
    {
      v16 = 1;
    }

    if (!v16 && v15 == 3)
    {
      v28 = 0x100000003;
      v26[26] = &unk_1F4CDEB28;
      v29 = v30;
      v27 = xmmword_1D0E7DCC0;
      memset(v30, 0, sizeof(v30));
      v24 = 0x10000001ALL;
      v22 = &unk_1F4CE3E48;
      v23 = xmmword_1D0E7DCC0;
      v25 = v26;
      sub_1D0D98AA8(v21, 3, 3);
    }
  }

  LOWORD(v20) = 12;
  LOBYTE(v31[0]) = 4;
  cnprint::CNPrinter::Print(&v20, v31, "in_ThreeStateNearlyConstant called with inadequate matrices.", a4, a5, a6, a7, a8, v19);
  return 0xFFFFFFFFLL;
}

void sub_1D0D7AB2C()
{
  v3 = 0x10000001ALL;
  v1 = &unk_1F4CE3E48;
  v2 = xmmword_1D0E843B0;
  v4 = &v5;
  sub_1D0D87FCC(v0);
}

void sub_1D0D7AFEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59)
{
  sub_1D0BD9B48(&a59);
  sub_1D0D857FC(&STACK[0x680]);
  _Unwind_Resume(a1);
}

void sub_1D0D7B048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!*(a1 + 1108))
  {
    sub_1D0B894B0(a1 + 552, a1 + 8);
    sub_1D0B894B0(a1 + 800, a1 + 256);
    sub_1D0B894B0(a1 + 848, a1 + 304);
  }

  v8 = *(a2 + 8);
  if ((v8 & 0x80000000) == 0)
  {
    v9 = *(a1 + 560);
    v10 = *(a1 + 564);
    v28 = 0x100000017;
    v23 = &unk_1F4CE0780;
    v29 = v30;
    v24 = v8;
    v25 = 1;
    v26 = v8;
    v27 = v8;
    if (v8 > 3)
    {
      v11 = &v30[v8];
      bzero(v30, 16 * ((v8 - 1) >> 1));
      *(v11 - 2) = 0;
      *(v11 - 1) = 0;
    }

    else if (v8)
    {
      bzero(v30, 8 * v8);
    }

    if (v9 <= v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = v9;
    }

    if (v10)
    {
      v13 = v9 == 0;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      v14 = 0;
    }

    else
    {
      v14 = v12;
    }

    v15 = *(a4 + 8);
    v16 = *(a4 + 12);
    if (v15 <= v16)
    {
      v17 = *(a4 + 12);
    }

    else
    {
      v17 = *(a4 + 8);
    }

    if (v16)
    {
      v18 = v15 == 0;
    }

    else
    {
      v18 = 1;
    }

    if (v18)
    {
      v19 = 0;
    }

    else
    {
      v19 = v17;
    }

    v20 = *(a1 + 1704);
    v22 = *(a1 + 1729);
    LODWORD(v21) = v19;
    sub_1D0DA4B70(a1, v14, a1 + 552, a1 + 800, a1 + 848, v8, &v23, a2, v21, a3);
  }

  __assert_rtn("Zeros", "cnmatrix.h", 3098, "nr >= 0");
}

double sub_1D0D7B1D0(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*a1 == 1)
  {
    v45 = v8;
    v46 = v9;
    v43 = v4;
    v44 = v5;
    v41 = v6;
    v42 = v7;
    MEMORY[0x1EEE9AC00](a1, a2, a3, a4);
    v12 = v11;
    v13 = v10;
    if (*(v10 + 1) == 1)
    {
      *(v10 + 1) = 0;
    }

    if (*(v10 + 5936))
    {
      if (!sub_1D0B9D420(v11, (v10 + 8)))
      {
        v15 = *(v13 + 5936);
        sub_1D0C01A20(v35, *(v13 + 5936), 1);
        v16 = 0;
        if (v15 >= 1)
        {
          v17 = *(v13 + 48);
          if (v17 != (v13 + 40))
          {
            v18 = 0;
            v16 = 0;
            v19 = 1;
            do
            {
              if (sub_1D0B7CF88((*(v13 + 96) + v18), v12->n128_f64))
              {
                *(v40 + 4 * v16) = v19 - 1;
                v17 = v17[1];
                ++v16;
              }

              else
              {
                v20 = *v17;
                v21 = v17[1];
                v20[1] = v21;
                *v21 = v20;
                --*(v13 + 56);
                sub_1D0B9FF7C(v17 + 2);
                operator delete(v17);
                v17 = v21;
              }

              if (v19 >= v15)
              {
                break;
              }

              ++v19;
              v18 += 16;
            }

            while (v17 != (v13 + 40));
          }
        }

        v36 = v16;
        v37 = 1;
        v38 = v16;
        v39 = v16;
        *(v13 + 5936) = v16;
        sub_1D0C01C70(&v34, v13 + 64, v35);
        sub_1D0BF181C(v13 + 64, &v34);
        sub_1D0C01E74(&v34, v13 + 2888, v35);
        sub_1D0B9F5D4(v13 + 2888, &v34);
        sub_1D0C01F50(&v34, v13 + 3624, v35);
        sub_1D0B894B0(v13 + 3624, &v34);
        sub_1D0C02030(&v34);
      }
    }

    else
    {
      v34 = *(v10 + 8);
      sub_1D0BAAEBC(v10);
      sub_1D0BADC18(v13, v12, v22, v23, v24, v25, v26, v27);
      *v13 = 0;
      *&result = sub_1D0BADC18(v13, &v34, v28, v29, v30, v31, v32, v33).n128_u64[0];
    }
  }

  return result;
}

double sub_1D0D7B740(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  v4 = *(a3 + 12);
  v5 = (v4 * v3);
  *&result = 0x100000003;
  *(a1 + 24) = 0x100000003;
  *a1 = &unk_1F4CDEB28;
  *(a1 + 8) = v3;
  *(a1 + 12) = v4;
  *(a1 + 16) = v5;
  *(a1 + 20) = v3;
  v7 = (a1 + 40);
  *(a1 + 32) = a1 + 40;
  if (v5)
  {
    v8 = *(a3 + 32);
    v9 = *(a2 + 32);
    do
    {
      v10 = *v8++;
      result = *(v9 + 8 * v10);
      *v7++ = result;
      --v5;
    }

    while (v5);
  }

  return result;
}

double sub_1D0D7B7A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  v4 = *(a3 + 12);
  v5 = (v4 * v3);
  *&result = 0x100000003;
  *(a1 + 24) = 0x100000003;
  *a1 = &unk_1F4CDEB28;
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

void *sub_1D0D7B804(void *result)
{
  result[9] = &unk_1F4CDEAF8;
  *result = &unk_1F4CD5E28;
  return result;
}

double sub_1D0D7B844(uint64_t a1, uint64_t a2, float64x2_t a3)
{
  *(a1 + 24) = 0x300000003;
  *a1 = &unk_1F4CD5DD0;
  *(a1 + 8) = xmmword_1D0E76C10;
  *(a1 + 32) = a1 + 40;
  *&result = *&sub_1D0BC5ED4(a2, a1, a3);
  return result;
}

uint64_t sub_1D0D7B88C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = 0x100000001;
  v6 = &unk_1F4CDF158;
  *&v4 = 0x100000001;
  *(&v4 + 1) = 0x100000001;
  v7 = v4;
  v9 = &v10;
  v10 = a4;
  return sub_1D0C51DC8(a1, a2, a3, &v6);
}

uint64_t sub_1D0D7B8EC@<X0>(unsigned int a1@<W0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  if ((a1 & 0x80000000) != 0)
  {
    __assert_rtn("Eye", "cnmatrix.h", 2135, "nr >= 0");
  }

  if ((a2 & 0x80000000) != 0)
  {
    __assert_rtn("Eye", "cnmatrix.h", 2136, "nc >= 0");
  }

  *(a3 + 24) = 0x300000003;
  *a3 = &unk_1F4CD5DD0;
  *(a3 + 32) = a3 + 40;
  *(a3 + 8) = a1;
  *(a3 + 12) = a2;
  *(a3 + 16) = a2 * a1;
  *(a3 + 20) = a1;
  result = sub_1D0BBBC00(a3, 0.0);
  if (a1 >= a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = a1;
  }

  if (v7)
  {
    v8 = 0;
    v9 = *(a3 + 20) + 1;
    v10 = *(a3 + 32);
    do
    {
      *(v10 + 8 * v8) = 0x3FF0000000000000;
      v8 += v9;
      --v7;
    }

    while (v7);
  }

  return result;
}

double sub_1D0D7B9D8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 24) = 0x300000003;
  *a2 = &unk_1F4CD5DD0;
  *(a2 + 8) = xmmword_1D0E76C10;
  *(a2 + 32) = a2 + 40;
  *&result = *&sub_1D0BA5940(a1, a2);
  return result;
}

uint64_t sub_1D0D7BB94(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 12);
  sub_1D0D95644(v13, *(a2 + 12));
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = vdupq_n_s64(v4 - 1);
    v7 = xmmword_1D0E84440;
    v8 = xmmword_1D0E7DD30;
    v9 = (v13[4] + 8);
    v10 = vdupq_n_s64(4uLL);
    do
    {
      v11 = vmovn_s64(vcgeq_u64(v6, v8));
      if (vuzp1_s16(v11, *v6.i8).u8[0])
      {
        *(v9 - 2) = v5;
      }

      if (vuzp1_s16(v11, *&v6).i8[2])
      {
        *(v9 - 1) = v5 + 1;
      }

      if (vuzp1_s16(*&v6, vmovn_s64(vcgeq_u64(v6, *&v7))).i32[1])
      {
        *v9 = v5 + 2;
        v9[1] = v5 + 3;
      }

      v5 += 4;
      v7 = vaddq_s64(v7, v10);
      v8 = vaddq_s64(v8, v10);
      v9 += 4;
    }

    while (((v4 + 3) & 0xFFFFFFFC) != v5);
  }

  return sub_1D0D8AF38(a1, a2, &unk_1EE053E50, v13);
}

uint64_t sub_1D0D7BCA0(uint64_t result, uint64_t a2)
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
        v7 = *(result + 664);
        v8 = *(result + 704);
        v9 = *(v7 + 20) * *(*(result + 760) + 4 * v5);
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

void *sub_1D0D7BD8C(void *result)
{
  result[91] = &unk_1F4CDEAF8;
  result[84] = &unk_1F4CDEAF8;
  *result = &unk_1F4CD5E28;
  return result;
}

uint64_t sub_1D0D7BE0C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 12);
  v28 = 0x10000001CLL;
  v29 = 0;
  v26 = 0;
  v27 = 0;
  v25 = &unk_1F4CE1250;
  if ((v2 & 0x80000000) != 0)
  {
    __assert_rtn("CNMatrix", "cnmatrix.h", 419, "nr >= 0");
  }

  v26 = v2 | 0x100000000;
  LODWORD(v27) = v2;
  HIDWORD(v27) = v2;
  v29 = &v30;
  if (v2)
  {
    v5 = 0;
    v6 = (v2 + 3) & 0xFFFFFFFC;
    v7 = vdupq_n_s64(v2 - 1);
    v8 = xmmword_1D0E84440;
    v9 = xmmword_1D0E7DD30;
    v10 = &v31;
    v11 = vdupq_n_s64(4uLL);
    do
    {
      v12 = vmovn_s64(vcgeq_u64(v7, v9));
      if (vuzp1_s16(v12, 0x10000001CLL).u8[0])
      {
        *(v10 - 3) = v5;
      }

      if (vuzp1_s16(v12, 0x10000001CLL).i8[2])
      {
        *(v10 - 2) = v5 + 1;
      }

      if (vuzp1_s16(0x10000001CLL, vmovn_s64(vcgeq_u64(v7, *&v8))).i32[1])
      {
        *(v10 - 1) = v5 + 2;
        *v10 = v5 + 3;
      }

      v5 += 4;
      v8 = vaddq_s64(v8, v11);
      v9 = vaddq_s64(v9, v11);
      v10 += 4;
    }

    while (v6 != v5);
  }

  *(a1 + 24) = 0x1C00000003;
  *(a1 + 8) = xmmword_1D0E845D0;
  *(a1 + 32) = a1 + 40;
  *a1 = &unk_1F4CE3590;
  *(a1 + 712) = a2;
  *(a1 + 744) = 0x100000003;
  *(a1 + 720) = &unk_1F4CDEAA0;
  *(a1 + 728) = xmmword_1D0E7DCC0;
  *(a1 + 752) = a1 + 760;
  *(a1 + 800) = 0x10000001CLL;
  *(a1 + 776) = &unk_1F4CE1250;
  *(a1 + 784) = xmmword_1D0E843A0;
  *(a1 + 808) = a1 + 816;
  sub_1D0B9F5D4(a1 + 720, &unk_1EE053E50);
  result = sub_1D0B9F5D4(a1 + 776, &v25);
  v14 = *(a1 + 736);
  v15 = *(a1 + 792);
  *(a1 + 8) = v14;
  *(a1 + 12) = v15;
  *(a1 + 16) = v15 * v14;
  *(a1 + 20) = v14;
  if (v15)
  {
    v16 = 0;
    v17 = 0;
    v18 = *(a2 + 20);
    v19 = *(a2 + 32);
    do
    {
      if (v14)
      {
        v20 = *(a1 + 752);
        v21 = *(*(a1 + 808) + 4 * v17) * v18;
        v22 = *(a1 + 32);
        v23 = v16;
        result = v14;
        do
        {
          v24 = *v20++;
          *(v22 + 8 * v23++) = *(v19 + 8 * (v24 + v21));
          --result;
        }

        while (result);
      }

      ++v17;
      v16 += v14;
    }

    while (v17 != v15);
  }

  return result;
}

void *sub_1D0D7C0A4(void *result)
{
  result[97] = &unk_1F4CDEAF8;
  result[90] = &unk_1F4CDEAF8;
  *result = &unk_1F4CD5E28;
  return result;
}

uint64_t sub_1D0D7C124(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v23 = 0x10000001CLL;
  v18 = &unk_1F4CE1250;
  v19 = v4;
  v20 = 1;
  v21 = v4;
  v22 = v4;
  v24 = v25;
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      v25[i] = i;
    }
  }

  *(a1 + 24) = 0x30000001CLL;
  *(a1 + 8) = xmmword_1D0E845E0;
  *(a1 + 32) = a1 + 40;
  *a1 = &unk_1F4CE35D8;
  *(a1 + 712) = a2;
  *(a1 + 744) = 0x10000001CLL;
  *(a1 + 720) = &unk_1F4CE1250;
  *(a1 + 728) = xmmword_1D0E843A0;
  *(a1 + 752) = a1 + 760;
  *(a1 + 896) = 0x100000003;
  *(a1 + 872) = &unk_1F4CDEAA0;
  *(a1 + 880) = xmmword_1D0E7DCC0;
  *(a1 + 904) = a1 + 912;
  sub_1D0B9F5D4(a1 + 720, &v18);
  result = sub_1D0B9F5D4(a1 + 872, &unk_1EE053E50);
  v7 = *(a1 + 736);
  v8 = *(a1 + 888);
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
        v13 = *(a1 + 752);
        v14 = *(*(a1 + 904) + 4 * v10) * v11;
        v15 = *(a1 + 32);
        v16 = v9;
        result = v7;
        do
        {
          v17 = *v13++;
          *(v15 + 8 * v16++) = *(v12 + 8 * (v17 + v14));
          --result;
        }

        while (result);
      }

      ++v10;
      v9 += v7;
    }

    while (v10 != v8);
  }

  return result;
}

void *sub_1D0D7C2FC(void *result)
{
  result[109] = &unk_1F4CDEAF8;
  result[90] = &unk_1F4CDEAF8;
  *result = &unk_1F4CD5E28;
  return result;
}

void sub_1D0D7C380(uint64_t a1)
{
  sub_1D0D84A3C(a1);

  JUMPOUT(0x1D387ECA0);
}

uint64_t sub_1D0D7C3B8(uint64_t a1)
{
  *a1 = &unk_1F4CE3F68;
  v3 = (a1 + 5920);
  sub_1D0D83948(&v3);
  *a1 = &unk_1F4CE4100;
  *(a1 + 3600) = &unk_1F4CD5E28;
  *(a1 + 672) = &unk_1F4CD5E28;
  *(a1 + 480) = &unk_1F4CD5E28;
  *(a1 + 256) = &unk_1F4CD5E28;
  *(a1 + 64) = &unk_1F4CD5E28;
  return MEMORY[0x1D387ECA0](a1, 0x10A1C40438F3BCFLL);
}

uint64_t sub_1D0D7C4E4(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 8))
  {
    return 0xFFFFFFFFLL;
  }

  v4 = *(a1 + 16);
  v5 = *(a1 + 32);
  *(a2 + 25) = *(a1 + 41);
  *a2 = v4;
  *(a2 + 16) = v5;
  sub_1D0B894B0(a2 + 48, a1 + 64);
  sub_1D0B894B0(a2 + 240, a1 + 256);
  result = 0;
  *(a2 + 432) = *(a1 + 448);
  return result;
}

uint64_t sub_1D0D7C558(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16) == 4 && *(a2 + 20) == 4;
  if (v2 && (*(a2 + 40) & 1) == 0)
  {
    return sub_1D0D7F694(a1, a2);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_1D0D7C57C(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  if (!*(a1 + 456))
  {
    return 0xFFFFFFFFLL;
  }

  *a2 = *(a1 + 464);
  sub_1D0B894B0(a3, a1 + 480);
  return 0;
}

uint64_t sub_1D0D7C5BC(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!*(a1 + 456))
  {
    return 0xFFFFFFFFLL;
  }

  if (!*(a1 + 448))
  {
    return 0xFFFFFFFFLL;
  }

  *a2 = *(a1 + 464);
  sub_1D0B894B0(a3, a1 + 480);
  sub_1D0B894B0(a4, a1 + 672);
  sub_1D0B894B0(a5, a1 + 3600);
  return 0;
}

uint64_t sub_1D0D7C648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = MEMORY[0x1EEE9AC00](a1, a2, a3, a4);
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  if (!(*(*v11 + 24))(v11, v4))
  {
    return 0xFFFFFFFFLL;
  }

  v13 = v12[5];
  v31 = 0x10000000FLL;
  v26 = &unk_1F4CE4258;
  v32 = v33;
  v27 = v13;
  v28 = 1;
  v29 = v13;
  v30 = v13;
  if (v13 > 3)
  {
    v15 = &v33[v13];
    bzero(v33, 16 * ((v13 - 1) >> 1));
    *(v15 - 2) = 0;
    *(v15 - 1) = 0;
  }

  else if (v13 >= 1)
  {
    bzero(v33, 8 * v13);
  }

  v23 = 0x1300000013;
  v21 = &unk_1F4CE4070;
  v22 = xmmword_1D0E84640;
  v24 = &v25;
  v18 = 0xF00000013;
  v16 = &unk_1F4CE4028;
  v17 = xmmword_1D0E84650;
  v19 = &v20;
  return (*(*v12 + 96))(v12, v10, &v26, v8, v6, &v21, &v16);
}

uint64_t sub_1D0D7C810()
{
  v0 = MEMORY[0x1EEE9AC00]();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = v0;
  if (!(*(*v0 + 24))(v0))
  {
    return 0xFFFFFFFFLL;
  }

  v18 = 0x1300000013;
  v16 = &unk_1F4CE4070;
  v17 = xmmword_1D0E84640;
  v19 = &v20;
  v13 = 0xF00000013;
  v11 = &unk_1F4CE4028;
  v12 = xmmword_1D0E84650;
  v14 = &v15;
  return (*(*v9 + 96))(v9, v8, v6, v4, v2, &v16, &v11);
}

uint64_t sub_1D0D7C964(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!(*(*a1 + 24))(a1))
  {
    return 0xFFFFFFFFLL;
  }

  v12 = a1[5];
  v20 = 0x10000000FLL;
  v15 = &unk_1F4CE4258;
  v21 = v22;
  v16 = v12;
  v17 = 1;
  v18 = v12;
  v19 = v12;
  if (v12 > 3)
  {
    v14 = &v22[v12];
    bzero(v22, 16 * ((v12 - 1) >> 1));
    *(v14 - 2) = 0;
    *(v14 - 1) = 0;
  }

  else if (v12 >= 1)
  {
    bzero(v22, 8 * v12);
  }

  return (*(*a1 + 96))(a1, a2, &v15, a3, a4, a5, a6);
}

uint64_t sub_1D0D7CAA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = MEMORY[0x1EEE9AC00](a1, a2, a3, a4);
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  if (!(*(*v17 + 24))(v17, v4) || !(*(*v18 + 64))(v18))
  {
    return 0xFFFFFFFFLL;
  }

  v21 = *(v18 + 5928);
  v22 = *(v18 + 5920);
  v54 = v8;
  if (v21 == v22)
  {
    v23 = *(v18 + 16);
    v24 = *(v18 + 20);
    v69 = 0x1300000013;
    v64 = &unk_1F4CE4070;
    v25 = v23 * v23;
    v70 = v71;
    v65 = v23;
    v66 = v23;
    v67 = v23 * v23;
    v68 = v23;
    if (v23 * v23 > 3)
    {
      v27 = v6;
      v28 = &v71[v25];
      bzero(v71, 16 * ((v25 - 1) >> 1));
      *(v28 - 2) = 0;
      *(v28 - 1) = 0;
      v6 = v27;
    }

    else if (v25 >= 1)
    {
      bzero(v71, 8 * (v23 * v23));
    }

    if (v23 >= 1)
    {
      v29 = 0;
      v30 = v70;
      v31 = v23;
      do
      {
        v30[v29] = 0x3FF0000000000000;
        v29 += v23 + 1;
        --v31;
      }

      while (v31);
    }

    v61 = 0xF00000013;
    v56 = &unk_1F4CE4028;
    v32 = v24 * v23;
    v62 = v63;
    v57 = v23;
    v58 = v24;
    v59 = v24 * v23;
    v60 = v23;
    if (v24 * v23 > 3)
    {
      v33 = &v63[v32];
      bzero(v63, 16 * ((v32 - 1) >> 1));
      *(v33 - 2) = 0;
      *(v33 - 1) = 0;
    }

    else if (v32 >= 1)
    {
      bzero(v63, 8 * (v24 * v23));
    }

    sub_1D0D80FE0(v72, (v18 + 464), v18 + 480, &v64, &v56);
    sub_1D0D809D4(v18 + 5920, v72);
    v21 = *(v18 + 5928);
    v22 = *(v18 + 5920);
  }

  if (0xCFF3FCFF3FCFF3FDLL * ((v21 - v22) >> 4) < 2)
  {
    if (v21 - v22 == 5456)
    {
      v51 = CNTimeSpan::operator-(v16, v22, v19, v20);
      if (fabs(v52 + v51) < 2.22044605e-16)
      {
        sub_1D0B894B0(v10, (v22 + 16));
        sub_1D0B894B0(v8, (v22 + 208));
        v50 = v22 + 3136;
        goto LABEL_42;
      }
    }
  }

  else if (v22 != v21)
  {
    v34 = 0;
    v35 = 0;
    v36 = INFINITY;
    v37 = -INFINITY;
    do
    {
      v38 = CNTimeSpan::operator-(v22, v16, v19, v20);
      *v19.i64 = v39 + v38;
      *v20.i64 = fabs(*v19.i64);
      if (*v20.i64 < 2.22044605e-16)
      {
        sub_1D0B894B0(v10, (v22 + 16));
        sub_1D0B894B0(v54, (v22 + 208));
        v50 = v22 + 3136;
        v53 = v6;
        goto LABEL_46;
      }

      if (*v19.i64 >= 0.0 || *v19.i64 <= v37)
      {
        if (*v19.i64 > 0.0 && *v19.i64 < v36)
        {
          v35 = v22;
          v36 = v39 + v38;
        }
      }

      else
      {
        v34 = v22;
        v37 = v39 + v38;
      }

      v22 += 5456;
    }

    while (v22 != v21);
    if (v34 && v35)
    {
      v41 = *(v18 + 5944);
      v42 = fabs(v36);
      if (fabs(v37) <= v41 && v42 <= v41)
      {
        *v19.i64 = v36 / (v36 - v37);
        if (*v19.i64 < 0.0)
        {
          *v19.i64 = 0.0;
        }

        v44 = fmin(*v19.i64, 1.0);
        *v19.i64 = v44;
        sub_1D0D80514((v34 + 16), &v64, v19);
        v45.f64[0] = 1.0 - v44;
        sub_1D0D80514((v35 + 16), &v56, v45);
        sub_1D0D80288(&v64, &v56, v72);
        v46 = sub_1D0B894B0(v10, v72);
        v46.n128_f64[0] = v44;
        sub_1D0D80598((v34 + 208), &v64, v46);
        v47.f64[0] = 1.0 - v44;
        sub_1D0D80598((v35 + 208), &v56, v47);
        sub_1D0D8030C(&v64, &v56, v72);
        v48 = sub_1D0B894B0(v54, v72);
        v48.n128_f64[0] = v44;
        sub_1D0D80618((v34 + 3136), &v64, v48);
        v49.f64[0] = 1.0 - v44;
        sub_1D0D80618((v35 + 3136), &v56, v49);
        sub_1D0D8038C(&v64, &v56, v72);
        v50 = v72;
LABEL_42:
        v53 = v6;
LABEL_46:
        sub_1D0B894B0(v53, v50);
        return 0;
      }
    }
  }

  result = sub_1D0D7D310(v18, v16, v14, v12);
  if (!result)
  {
    sub_1D0D81140(v55, v10);
    sub_1D0D81228(&v64, v54);
    sub_1D0D8130C(&v56, v6);
    sub_1D0D81090(v72, v16, v55, &v64, &v56);
    sub_1D0D809D4(v18 + 5920, v72);
    return 0;
  }

  return result;
}

double sub_1D0D7CFF0(uint64_t a1)
{
  *a1 = &unk_1F4CE4100;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 41) = 0u;
  *(a1 + 88) = 0x100000013;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = &unk_1F4CE40B8;
  *(a1 + 96) = a1 + 104;
  *(a1 + 280) = 0x100000013;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 256) = &unk_1F4CE40B8;
  *(a1 + 288) = a1 + 296;
  *(a1 + 448) = 1;
  *(a1 + 464) = 0;
  *(a1 + 472) = 0;
  *(a1 + 504) = 0x100000013;
  *(a1 + 480) = &unk_1F4CE40B8;
  *(a1 + 488) = xmmword_1D0E844F0;
  *(a1 + 512) = a1 + 520;
  *(a1 + 696) = 0x1300000013;
  *(a1 + 672) = &unk_1F4CE4070;
  *(a1 + 680) = xmmword_1D0E84640;
  *(a1 + 704) = a1 + 712;
  *(a1 + 3624) = 0xF00000013;
  *(a1 + 3600) = &unk_1F4CE4028;
  *&result = 0xF00000013;
  *(a1 + 3608) = xmmword_1D0E84650;
  *(a1 + 3632) = a1 + 3640;
  *(a1 + 8) = 0;
  *(a1 + 456) = 0;
  return result;
}

uint64_t sub_1D0D7D150(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  if (v3)
  {
    v4 = *(a3 + 12) == 1;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(a1 + 8) == 1)
  {
    if (v3 != *(a1 + 16))
    {
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    *(a1 + 16) = v3;
  }

  *(a1 + 464) = *a2;
  sub_1D0B894B0(a1 + 480, a3);
  v20 = 0x1300000013;
  v15 = &unk_1F4CE4070;
  v21 = v22;
  v7 = v3 * v3;
  v16 = v3;
  v17 = v3;
  v18 = v3 * v3;
  v19 = v3;
  if (v3 * v3 > 3)
  {
    v8 = &v22[v7];
    bzero(v22, 16 * ((v7 - 1) >> 1));
    *(v8 - 2) = 0;
    *(v8 - 1) = 0;
  }

  else if (v7 >= 1)
  {
    bzero(v22, 8 * (v3 * v3));
  }

  if (v3 >= 1)
  {
    v9 = 0;
    v10 = v21;
    v11 = v3;
    do
    {
      v10[v9] = 0x3FF0000000000000;
      v9 += v3 + 1;
      --v11;
    }

    while (v11);
  }

  sub_1D0B894B0(a1 + 672, &v15);
  if (*(a1 + 8) == 1)
  {
    v12 = *(a1 + 20);
    v20 = 0xF00000013;
    v15 = &unk_1F4CE4028;
    v13 = v12 * v3;
    v21 = v22;
    v16 = v3;
    v17 = v12;
    v18 = v12 * v3;
    v19 = v3;
    if (v12 * v3 > 3)
    {
      v14 = &v22[v13];
      bzero(v22, 16 * ((v13 - 1) >> 1));
      *(v14 - 2) = 0;
      *(v14 - 1) = 0;
    }

    else if (v13 >= 1)
    {
      bzero(v22, 8 * (v12 * v3));
    }

    sub_1D0B894B0(a1 + 3600, &v15);
  }

  result = 0;
  *(a1 + 456) = 1;
  return result;
}

uint64_t sub_1D0D7D310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = MEMORY[0x1EEE9AC00](a1, a2, a3, a4);
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  if (!(*(*v17 + 24))(v17, v4) || !(*(*v18 + 64))(v18))
  {
    return 0xFFFFFFFFLL;
  }

  v21 = *(v18 + 20);
  result = 0xFFFFFFFFLL;
  if (*(v14 + 8) != v21 || *(v14 + 12) != 1)
  {
    return result;
  }

  v23 = v16;
  v24 = *(v18 + 16);
  v109 = *(v18 + 24);
  v25 = *(v18 + 448);
  v107 = v23;
  v26 = CNTimeSpan::operator-(v23, (v18 + 464), v19, v20);
  v28 = v27 + v26;
  if (fabs(v28) >= 2.22044605e-16)
  {
    v104 = v8;
    v106 = v10;
    v31 = 1.0;
    if (v28 <= 0.0)
    {
      v31 = -1.0;
    }

    v105 = v6;
    v347 = v31;
    v32 = vcvtpd_s64_f64(fabs(v28 / *(v18 + 48)));
    if (v32 <= 1)
    {
      v32 = 1;
    }

    v108 = v32;
    sub_1D0D8E430(v346, v18 + 480);
    v350 = 0x1300000013;
    v348 = &unk_1F4CE4070;
    v34 = "dEEEEE";
    v35 = v24 * v24;
    if (v25)
    {
      v351 = v352;
      LODWORD(v349) = v24;
      DWORD1(v349) = v24;
      DWORD2(v349) = v24 * v24;
      HIDWORD(v349) = v24;
      if (v35 > 3)
      {
        bzero(v352, 16 * ((v35 - 1) >> 1));
        v34 = "dEEEEE";
        v41 = &v352[v35];
        *(v41 - 2) = 0;
        *(v41 - 1) = 0;
      }

      else if (v35 >= 1)
      {
        bzero(v352, 8 * (v24 * v24));
        v34 = "N8cnmatrix8CNMatrixILj2ELj1EPFiPKvRNS0_ILj2ELj1EdEEEEE" + 48;
      }

      if (v24 >= 1)
      {
        v42 = 0;
        v43 = v351;
        v44 = v24;
        do
        {
          v43[v42] = 0x3FF0000000000000;
          v42 += v24 + 1;
          --v44;
        }

        while (v44);
      }

      v343 = *(v34 + 29);
      v341 = &unk_1F4CE4028;
      v45 = v21 * v24;
      v344 = v345;
      *&v342 = __PAIR64__(v21, v24);
      DWORD2(v342) = v21 * v24;
      HIDWORD(v342) = v24;
      if ((v21 * v24) > 3)
      {
        bzero(v345, 16 * ((v45 - 1) >> 1));
        v47 = &v345[v45];
        *(v47 - 2) = 0;
        *(v47 - 1) = 0;
      }

      else if (v45 >= 1)
      {
        bzero(v345, 8 * v21 * v24);
      }
    }

    else
    {
      v349 = xmmword_1D0E84640;
      v351 = v352;
      v343 = 0xF00000013;
      v341 = &unk_1F4CE4028;
      v342 = xmmword_1D0E84650;
      v344 = v345;
    }

    v338 = 0x100000013;
    v333 = &unk_1F4CE40B8;
    v339 = v340;
    v334 = v24;
    v335 = 1;
    v336 = v24;
    v337 = v24;
    if (v24 > 3)
    {
      v48 = &v340[v24];
      bzero(v340, 16 * ((v24 - 1) >> 1));
      *(v48 - 2) = 0;
      *(v48 - 1) = 0;
    }

    else if (v24 >= 1)
    {
      bzero(v340, 8 * v24);
    }

    v330 = 0x1300000013;
    v328 = &unk_1F4CE4070;
    v49 = v28 / v108;
    if (v25)
    {
      v331 = v332;
      LODWORD(v329) = v24;
      DWORD1(v329) = v24;
      DWORD2(v329) = v24 * v24;
      HIDWORD(v329) = v24;
      if (v35 > 3)
      {
        bzero(v332, 16 * ((v35 - 1) >> 1));
        v53 = &v332[v35];
        *(v53 - 2) = 0;
        *(v53 - 1) = 0;
      }

      else if (v35 >= 1)
      {
        bzero(v332, 8 * (v24 * v24));
      }

      v51 = "dEEEEE";
      v325 = 0xF00000013;
      v323 = &unk_1F4CE4028;
      v54 = v21 * v24;
      v326 = v327;
      *&v324 = __PAIR64__(v21, v24);
      DWORD2(v324) = v21 * v24;
      HIDWORD(v324) = v24;
      if ((v21 * v24) > 3)
      {
        bzero(v327, 16 * ((v54 - 1) >> 1));
        v51 = "dEEEEE";
        v55 = &v327[v54];
        *(v55 - 2) = 0;
        *(v55 - 1) = 0;
        v52 = "dEEEEE";
        v50 = "dEEEEE";
      }

      else
      {
        v52 = "N8cnmatrix8CNMatrixILj2ELj1EPFiPKvRNS0_ILj2ELj1EdEEEEE" + 48;
        v50 = "N8cnmatrix8CNMatrixILj2ELj1EPFiPKvRNS0_ILj2ELj1EdEEEEE" + 48;
        if (v54 >= 1)
        {
          bzero(v327, 8 * v21 * v24);
          v50 = "N8cnmatrix8CNMatrixILj2ELj1EPFiPKvRNS0_ILj2ELj1EdEEEEE" + 48;
          v51 = "N8cnmatrix8CNMatrixILj2ELj1EPFiPKvRNS0_ILj2ELj1EdEEEEE" + 48;
          v52 = "N8cnmatrix8CNMatrixILj2ELj1EPFiPKvRNS0_ILj2ELj1EdEEEEE" + 48;
        }
      }
    }

    else
    {
      v50 = "dEEEEE";
      v329 = xmmword_1D0E84640;
      v331 = v332;
      v51 = "dEEEEE";
      v325 = 0xF00000013;
      v323 = &unk_1F4CE4028;
      v52 = "dEEEEE";
      v324 = xmmword_1D0E84650;
      v326 = v327;
    }

    v56 = 0;
    v110 = *(v50 + 100);
    v57 = *(v51 + 29);
    v58 = *(v52 + 101);
    v111 = v58;
    while (1)
    {
      v58.n128_f64[0] = v49 * v56;
      *&v313 = 0;
      v312 = 0;
      *v59.i64 = CNTimeSpan::SetTimeSpan(&v312, 0, v58, v33);
      *&v322 = CNTimeSpan::operator+((v18 + 464), &v312, v59, v60);
      *(&v322 + 1) = v61;
      v319 = 0x100000013;
      v317 = &unk_1F4CE40B8;
      v318 = xmmword_1D0E844F0;
      v320 = &v321;
      sub_1D0B88838(v346, &v333, &v317);
      v314 = 0x1300000013;
      v312 = &unk_1F4CE4070;
      v313 = v110;
      v315 = v316;
      if (v25)
      {
        sub_1D0B88838(&v348, &v328, &v312);
        v309 = v57;
        v307 = &unk_1F4CE4028;
        v308 = v111;
        v310 = v311;
        sub_1D0B88838(&v341, &v323, &v307);
      }

      else
      {
        v309 = v57;
        v307 = &unk_1F4CE4028;
        v308 = v111;
        v310 = v311;
      }

      v306 = v322;
      sub_1D0D8E430(v305, &v317);
      if (v25)
      {
        sub_1D0D8069C(&v300, &v312);
        sub_1D0D807E0(&v295, &v307);
        v62 = v110;
        v63 = v111;
      }

      else
      {
        v302 = 0x1300000013;
        v300 = &unk_1F4CE4070;
        v62 = v110;
        v63 = v111;
        v301 = v110;
        v303 = &v304;
        v297 = v57;
        v295 = &unk_1F4CE4028;
        v296 = v111;
        v298 = &v299;
      }

      v292 = 0x100000013;
      v290 = &unk_1F4CE40B8;
      v291 = xmmword_1D0E844F0;
      v293 = &v294;
      v287 = 0x1300000013;
      v285 = &unk_1F4CE4070;
      v286 = v62;
      v288 = &v289;
      v282 = v57;
      v280 = &unk_1F4CE4028;
      v281 = v63;
      v283 = &v284;
      if (v109(&v306, &v347, v305, v14, v12, &v290, &v285, &v280))
      {
        break;
      }

      v277 = 0x1300000013;
      v275 = &unk_1F4CE4070;
      v276 = v110;
      v278 = &v279;
      if (v25)
      {
        sub_1D0B89390(&v285, &v300, &v275);
        v261 = v57;
        v259 = &unk_1F4CE4028;
        v260 = v111;
        v262 = v263;
        sub_1D0B89390(&v285, &v295, &v259);
        v272 = v57;
        v270 = &unk_1F4CE4028;
        v271 = v111;
        v273 = v274;
        v65 = sub_1D0B88838(&v259, &v280, &v270);
      }

      else
      {
        v272 = v57;
        v270 = &unk_1F4CE4028;
        v65.i64[1] = *(&v111 + 1);
        v271 = v111;
        v273 = v274;
      }

      v259 = 0;
      *&v260 = 0;
      *v65.i64 = v49 * 0.5;
      *v66.i64 = CNTimeSpan::SetTimeSpan(&v259, 0, v65, v64);
      v269[0] = CNTimeSpan::operator+(&v322, &v259, v66, v67);
      v269[1] = v68;
      v261 = 0x100000013;
      v259 = &unk_1F4CE40B8;
      *&v69.f64[1] = 0x1300000013;
      v260 = xmmword_1D0E844F0;
      v262 = v263;
      v69.f64[0] = v49 * 0.5;
      sub_1D0B8930C(&v290, &v259, v69);
      v266 = 0x100000013;
      v264 = &unk_1F4CE40B8;
      v265 = xmmword_1D0E844F0;
      v267 = &v268;
      sub_1D0B88838(&v317, &v259, &v264);
      if (v25)
      {
        v256 = 0x1300000013;
        v254 = &unk_1F4CE4070;
        v70.f64[1] = *(&v110 + 1);
        v255 = v110;
        v257 = v258;
        v70.f64[0] = v49 * 0.5;
        sub_1D0B8930C(&v275, &v254, v70);
        v261 = 0x1300000013;
        v259 = &unk_1F4CE4070;
        v260 = v110;
        v262 = v263;
        sub_1D0B88838(&v312, &v254, &v259);
        v256 = v57;
        v254 = &unk_1F4CE4028;
        v71.f64[1] = *(&v111 + 1);
        v255 = v111;
        v257 = v258;
        v71.f64[0] = v49 * 0.5;
        sub_1D0B8930C(&v270, &v254, v71);
        v251 = v57;
        v249 = &unk_1F4CE4028;
        v250 = v111;
        v252 = v253;
        sub_1D0B88838(&v307, &v254, &v249);
        v72 = v110;
        v73 = v111;
      }

      else
      {
        v261 = 0x1300000013;
        v259 = &unk_1F4CE4070;
        v72 = v110;
        v73 = v111;
        v260 = v110;
        v262 = v263;
        v251 = v57;
        v249 = &unk_1F4CE4028;
        v250 = v111;
        v252 = v253;
      }

      v246 = 0x100000013;
      v244 = &unk_1F4CE40B8;
      v245 = xmmword_1D0E844F0;
      v247 = &v248;
      v256 = 0x1300000013;
      v254 = &unk_1F4CE4070;
      v255 = v72;
      v257 = v258;
      v241 = v57;
      v239 = &unk_1F4CE4028;
      v240 = v73;
      v242 = &v243;
      if (v109(v269, &v347, &v264, v14, v12, &v244, &v254, &v239))
      {
        break;
      }

      v236 = 0x1300000013;
      v234 = &unk_1F4CE4070;
      v235 = v110;
      v237 = &v238;
      if (v25)
      {
        sub_1D0B89390(&v254, &v259, &v234);
        v220 = v57;
        v218 = &unk_1F4CE4028;
        v219 = v111;
        v221 = v222;
        sub_1D0B89390(&v254, &v249, &v218);
        v231 = v57;
        v229 = &unk_1F4CE4028;
        v230 = v111;
        v232 = v233;
        v75 = sub_1D0B88838(&v218, &v239, &v229);
      }

      else
      {
        v231 = v57;
        v229 = &unk_1F4CE4028;
        v75.i64[1] = *(&v111 + 1);
        v230 = v111;
        v232 = v233;
      }

      v218 = 0;
      *&v219 = 0;
      *v75.i64 = v49 * 0.5;
      *v76.i64 = CNTimeSpan::SetTimeSpan(&v218, 0, v75, v74);
      v228[0] = CNTimeSpan::operator+(&v322, &v218, v76, v77);
      v228[1] = v78;
      v220 = 0x100000013;
      v218 = &unk_1F4CE40B8;
      *&v79.f64[1] = 0x1300000013;
      v219 = xmmword_1D0E844F0;
      v221 = v222;
      v79.f64[0] = v49 * 0.5;
      sub_1D0B8930C(&v244, &v218, v79);
      v225 = 0x100000013;
      v223 = &unk_1F4CE40B8;
      v224 = xmmword_1D0E844F0;
      v226 = &v227;
      sub_1D0B88838(&v317, &v218, &v223);
      if (v25)
      {
        v215 = 0x1300000013;
        v213 = &unk_1F4CE4070;
        v80.f64[1] = *(&v110 + 1);
        v214 = v110;
        v216 = v217;
        v80.f64[0] = v49 * 0.5;
        sub_1D0B8930C(&v234, &v213, v80);
        v220 = 0x1300000013;
        v218 = &unk_1F4CE4070;
        v219 = v110;
        v221 = v222;
        sub_1D0B88838(&v312, &v213, &v218);
        v215 = v57;
        v213 = &unk_1F4CE4028;
        v81.f64[1] = *(&v111 + 1);
        v214 = v111;
        v216 = v217;
        v81.f64[0] = v49 * 0.5;
        sub_1D0B8930C(&v229, &v213, v81);
        v210 = v57;
        v208 = &unk_1F4CE4028;
        v209 = v111;
        v211 = v212;
        sub_1D0B88838(&v307, &v213, &v208);
        v82 = v110;
        v83 = v111;
      }

      else
      {
        v220 = 0x1300000013;
        v218 = &unk_1F4CE4070;
        v82 = v110;
        v83 = v111;
        v219 = v110;
        v221 = v222;
        v210 = v57;
        v208 = &unk_1F4CE4028;
        v209 = v111;
        v211 = v212;
      }

      v205 = 0x100000013;
      v203 = &unk_1F4CE40B8;
      v204 = xmmword_1D0E844F0;
      v206 = &v207;
      v215 = 0x1300000013;
      v213 = &unk_1F4CE4070;
      v214 = v82;
      v216 = v217;
      v200 = v57;
      v198 = &unk_1F4CE4028;
      v199 = v83;
      v201 = &v202;
      if (v109(v228, &v347, &v223, v14, v12, &v203, &v213, &v198))
      {
        break;
      }

      v195 = 0x1300000013;
      v193 = &unk_1F4CE4070;
      v194 = v110;
      v196 = &v197;
      if (v25)
      {
        sub_1D0B89390(&v213, &v218, &v193);
        v179 = v57;
        v177 = &unk_1F4CE4028;
        v178 = v111;
        v180 = v181;
        sub_1D0B89390(&v213, &v208, &v177);
        v190 = v57;
        v188 = &unk_1F4CE4028;
        v189 = v111;
        v191 = v192;
        v85 = sub_1D0B88838(&v177, &v198, &v188);
      }

      else
      {
        v190 = v57;
        v188 = &unk_1F4CE4028;
        v85.i64[1] = *(&v111 + 1);
        v189 = v111;
        v191 = v192;
      }

      v177 = 0;
      *&v178 = 0;
      *v85.i64 = v49;
      *v86.i64 = CNTimeSpan::SetTimeSpan(&v177, 0, v85, v84);
      v187[0] = CNTimeSpan::operator+(&v322, &v177, v86, v87);
      v187[1] = v88;
      v179 = 0x100000013;
      v177 = &unk_1F4CE40B8;
      *&v89.f64[1] = 0x1300000013;
      v178 = xmmword_1D0E844F0;
      v180 = v181;
      v89.f64[0] = v49;
      sub_1D0B8930C(&v203, &v177, v89);
      v184 = 0x100000013;
      v182 = &unk_1F4CE40B8;
      v183 = xmmword_1D0E844F0;
      v185 = &v186;
      sub_1D0B88838(&v317, &v177, &v182);
      if (v25)
      {
        v174 = 0x1300000013;
        v90.f64[1] = *(&v110 + 1);
        v173 = v110;
        v172 = &unk_1F4CE4070;
        v175 = v176;
        v90.f64[0] = v49;
        sub_1D0B8930C(&v193, &v172, v90);
        v179 = 0x1300000013;
        v177 = &unk_1F4CE4070;
        v178 = v110;
        v180 = v181;
        sub_1D0B88838(&v312, &v172, &v177);
        v174 = v57;
        v91.f64[1] = *(&v111 + 1);
        v173 = v111;
        v172 = &unk_1F4CE4028;
        v175 = v176;
        v91.f64[0] = v49;
        sub_1D0B8930C(&v188, &v172, v91);
        v169 = v57;
        v168 = v111;
        v167 = &unk_1F4CE4028;
        v170 = v171;
        sub_1D0B88838(&v307, &v172, &v167);
        v92 = v110;
        v93 = v111;
      }

      else
      {
        v179 = 0x1300000013;
        v177 = &unk_1F4CE4070;
        v92 = v110;
        v93 = v111;
        v178 = v110;
        v180 = v181;
        v169 = v57;
        v168 = v111;
        v167 = &unk_1F4CE4028;
        v170 = v171;
      }

      v164 = 0x100000013;
      v163 = xmmword_1D0E844F0;
      v162 = &unk_1F4CE40B8;
      v165 = &v166;
      v174 = 0x1300000013;
      v173 = v92;
      v172 = &unk_1F4CE4070;
      v175 = v176;
      v159 = v57;
      v157 = &unk_1F4CE4028;
      v158 = v93;
      v160 = &v161;
      if (v109(v187, &v347, &v182, v14, v12, &v162, &v172, &v157))
      {
        break;
      }

      if (v25)
      {
        sub_1D0D80410(&v172, &v177, &v152);
        sub_1D0D80490(&v172, &v167, &v142);
        sub_1D0D8038C(&v142, &v157, &v147);
      }

      else
      {
        v154 = 0x1300000013;
        v152 = &unk_1F4CE4070;
        v153 = v110;
        v155 = &v156;
        v149 = v57;
        v147 = &unk_1F4CE4028;
        v148 = v111;
        v150 = &v151;
      }

      v119 = 0x100000013;
      v117 = &unk_1F4CE40B8;
      *&v94.f64[1] = 0x1300000013;
      v118 = xmmword_1D0E844F0;
      v120 = &v121;
      v94.f64[0] = 2.0;
      sub_1D0B8930C(&v244, &v117, v94);
      v124 = 0x100000013;
      v122 = &unk_1F4CE40B8;
      v123 = xmmword_1D0E844F0;
      v125 = &v126;
      sub_1D0B88838(&v290, &v117, &v122);
      v114 = 0x100000013;
      v112 = &unk_1F4CE40B8;
      *&v95.f64[1] = 0x1300000013;
      v113 = xmmword_1D0E844F0;
      v115 = &v116;
      v95.f64[0] = 2.0;
      sub_1D0B8930C(&v203, &v112, v95);
      v129 = 0x100000013;
      v127 = &unk_1F4CE40B8;
      v128 = xmmword_1D0E844F0;
      v130 = &v131;
      sub_1D0B88838(&v122, &v112, &v127);
      v134 = 0x100000013;
      v132 = &unk_1F4CE40B8;
      v133 = xmmword_1D0E844F0;
      v135 = &v136;
      sub_1D0B88838(&v127, &v162, &v132);
      v139 = 0x100000013;
      v137 = &unk_1F4CE40B8;
      *&v96.f64[1] = 0x1300000013;
      v138 = xmmword_1D0E844F0;
      v140 = &v141;
      v96.f64[0] = v49 / 6.0;
      sub_1D0B8930C(&v132, &v137, v96);
      v144 = 0x100000013;
      v142 = &unk_1F4CE40B8;
      v143 = xmmword_1D0E844F0;
      v145 = &v146;
      sub_1D0B88838(&v333, &v137, &v142);
      v58 = sub_1D0B894B0(&v333, &v142);
      if (v25)
      {
        v58.n128_u64[0] = 2.0;
        sub_1D0D80598(&v234, &v117, v58);
        sub_1D0D8030C(&v275, &v117, &v122);
        v97.f64[0] = 2.0;
        sub_1D0D80598(&v193, &v112, v97);
        sub_1D0D8030C(&v122, &v112, &v127);
        sub_1D0D8030C(&v127, &v152, &v132);
        v98.f64[0] = v49 / 6.0;
        sub_1D0D80598(&v132, &v137, v98);
        sub_1D0D8030C(&v328, &v137, &v142);
        v99 = sub_1D0B894B0(&v328, &v142);
        v99.n128_u64[0] = 2.0;
        sub_1D0D80618(&v229, &v117, v99);
        sub_1D0D8038C(&v270, &v117, &v122);
        v100.f64[0] = 2.0;
        sub_1D0D80618(&v188, &v112, v100);
        sub_1D0D8038C(&v122, &v112, &v127);
        sub_1D0D8038C(&v127, &v147, &v132);
        v101.f64[0] = v49 / 6.0;
        sub_1D0D80618(&v132, &v137, v101);
        sub_1D0D8038C(&v323, &v137, &v142);
        v58 = sub_1D0B894B0(&v323, &v142);
      }

      if (v108 == ++v56)
      {
        *(v18 + 40) = v49;
        *(v18 + 464) = *v107;
        v314 = 0x100000013;
        v312 = &unk_1F4CE40B8;
        v313 = xmmword_1D0E844F0;
        v315 = v316;
        sub_1D0B88838(v18 + 480, &v333, &v312);
        sub_1D0B894B0(v18 + 480, &v312);
        if (v25)
        {
          sub_1D0D8030C(&v348, &v328, &v300);
          sub_1D0D80410(&v300, v18 + 672, &v312);
          sub_1D0B894B0(v18 + 672, &v312);
          sub_1D0D8030C(&v348, &v328, &v312);
          sub_1D0D80490(&v312, v18 + 3600, &v285);
          sub_1D0D8038C(&v341, &v323, &v275);
          sub_1D0D8038C(&v285, &v275, &v300);
          sub_1D0B894B0(v18 + 3600, &v300);
          sub_1D0B894B0(v106, v18 + 480);
          sub_1D0D8030C(&v348, &v328, &v312);
          sub_1D0B894B0(v104, &v312);
          sub_1D0D8038C(&v341, &v323, &v312);
          v102 = &v312;
          v103 = v105;
        }

        else
        {
          v102 = (v18 + 480);
          v103 = v106;
        }

        sub_1D0B894B0(v103, v102);
        return 0;
      }
    }

    return 0xFFFFFFFFLL;
  }

  sub_1D0B894B0(v10, v18 + 480);
  if (v25)
  {
    v29 = v8;
    v350 = 0x1300000013;
    v348 = &unk_1F4CE4070;
    v351 = v352;
    v30 = v24 * v24;
    LODWORD(v349) = v24;
    DWORD1(v349) = v24;
    DWORD2(v349) = v24 * v24;
    HIDWORD(v349) = v24;
    if (v24 * v24 > 3)
    {
      bzero(v352, 16 * ((v30 - 1) >> 1));
      v36 = &v352[v30];
      *(v36 - 2) = 0;
      *(v36 - 1) = 0;
    }

    else if (v30 >= 1)
    {
      bzero(v352, 8 * (v24 * v24));
    }

    if (v24 >= 1)
    {
      v37 = 0;
      v38 = v351;
      v39 = v24;
      do
      {
        v38[v37] = 0x3FF0000000000000;
        v37 += v24 + 1;
        --v39;
      }

      while (v39);
    }

    sub_1D0B894B0(v29, &v348);
    v350 = 0xF00000013;
    v348 = &unk_1F4CE4028;
    v40 = v21 * v24;
    v351 = v352;
    *&v349 = __PAIR64__(v21, v24);
    DWORD2(v349) = v21 * v24;
    HIDWORD(v349) = v24;
    if ((v21 * v24) > 3)
    {
      bzero(v352, 16 * ((v40 - 1) >> 1));
      v46 = &v352[v40];
      *(v46 - 2) = 0;
      *(v46 - 1) = 0;
    }

    else if (v40 >= 1)
    {
      bzero(v352, 8 * v21 * v24);
    }

    sub_1D0B894B0(v6, &v348);
  }

  result = 0;
  *(v18 + 40) = 0;
  return result;
}

uint64_t sub_1D0D7F694(uint64_t a1, int *a2)
{
  v2 = *a2;
  if (!*a2 || !*(a2 + 1))
  {
    return 0xFFFFFFFFLL;
  }

  v4 = a2[5];
  if (a2[4] > v4 || v4 == 0)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = *(a2 + 4);
  result = 0xFFFFFFFFLL;
  if (fabs(*(a2 + 3)) > v8 || v8 <= 0.0)
  {
    return result;
  }

  if (*(a2 + 40) == 1)
  {
    if (a2[62] != v2 || a2[63] != 1)
    {
      return result;
    }

    v25 = 0x100000013;
    v23 = &unk_1F4CE40B8;
    v24 = xmmword_1D0E844F0;
    v26 = &v27;
    v20 = 0x100000013;
    v18 = &unk_1F4CE4180;
    v19 = xmmword_1D0E844F0;
    v21 = &v22;
    sub_1D0D7FDEC((a2 + 60), &v23, &v18);
    if (*v26 < 0.0)
    {
      return 0xFFFFFFFFLL;
    }

    result = 0xFFFFFFFFLL;
    if (a2[14] != v2 || a2[15] != 1)
    {
      return result;
    }

    sub_1D0D7FB08((a2 + 12), &v23);
    if (*v26 < 0.0)
    {
      return 0xFFFFFFFFLL;
    }

    sub_1D0D7FD48((a2 + 60), (a2 + 12), v17);
    sub_1D0D7FC88(v17, 2, &v18);
    sub_1D0D7FBC8(&v18, &v23);
    if (*v26 <= 0.0)
    {
      return 0xFFFFFFFFLL;
    }
  }

  if (*(a1 + 8) == 1)
  {
    v9 = *(a1 + 16) != *a2 || *(a1 + 20) != a2[1];
    v12 = *(a1 + 24);
    v13 = *(a2 + 1);
    v14 = *a2;
    v15 = *(a2 + 1);
    *(a1 + 41) = *(a2 + 25);
    *(a1 + 16) = v14;
    *(a1 + 32) = v15;
    sub_1D0B894B0(a1 + 64, (a2 + 12));
    v16 = sub_1D0B894B0(a1 + 256, (a2 + 60));
    *(a1 + 448) = *(a2 + 432);
    *(a1 + 8) = 1;
    if (v9 || v12 != v13)
    {
      (*(*a1 + 104))(a1, v16);
    }

    return 0;
  }

  else
  {
    v10 = *a2;
    v11 = *(a2 + 1);
    *(a1 + 41) = *(a2 + 25);
    *(a1 + 16) = v10;
    *(a1 + 32) = v11;
    sub_1D0B894B0(a1 + 64, (a2 + 12));
    sub_1D0B894B0(a1 + 256, (a2 + 60));
    result = 0;
    *(a1 + 448) = *(a2 + 432);
    *(a1 + 8) = 1;
  }

  return result;
}

void sub_1D0D7F970(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  sub_1D0C51C04(a1, v2);
  v1 = *MEMORY[0x1E69E9840];
}

void sub_1D0D7F9FC(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  sub_1D0C51C04(a1, v2);
  v1 = *MEMORY[0x1E69E9840];
}

void sub_1D0D7FAB0(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  sub_1D0C51C04(a1, v2);
  v1 = *MEMORY[0x1E69E9840];
}

double sub_1D0D7FB08@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 24) = 0x100000013;
  *a2 = &unk_1F4CE40B8;
  *(a2 + 8) = xmmword_1D0E844F0;
  *(a2 + 32) = a2 + 40;
  v5 = 0x100000013;
  v3 = &unk_1F4CE4180;
  v4 = xmmword_1D0E844F0;
  v6 = &v7;
  *&result = sub_1D0D7FDEC(a1, a2, &v3).n128_u64[0];
  return result;
}

double sub_1D0D7FBC8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 24) = 0x200000013;
  *a2 = &unk_1F4CE41C8;
  *(a2 + 8) = xmmword_1D0E84690;
  *(a2 + 32) = a2 + 40;
  v5 = 0x200000013;
  v3 = &unk_1F4CE4210;
  v4 = xmmword_1D0E84690;
  v6 = &v7;
  *&result = sub_1D0D7FDEC(a1, a2, &v3).n128_u64[0];
  return result;
}

uint64_t sub_1D0D7FC88@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *(a3 + 24) = 0x200000013;
  *a3 = &unk_1F4CE41C8;
  *(a3 + 8) = xmmword_1D0E84690;
  *(a3 + 32) = a3 + 40;
  v6 = 0x200000013;
  v4 = &unk_1F4CE4210;
  v5 = xmmword_1D0E84690;
  v7 = &v8;
  return sub_1D0BB7860(a1, a2, a3, &v4);
}

uint64_t sub_1D0D7FD48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 24) = 0x200000013;
  *a3 = &unk_1F4CE41C8;
  *(a3 + 8) = xmmword_1D0E84690;
  *(a3 + 32) = a3 + 40;
  return sub_1D0B8876C(a1, a2, a3);
}

__n128 sub_1D0D7FDEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D0D7FF3C(a1, 1, a2, a3);
  if (*(a1 + 8) == 1 || *(a1 + 12) == 1)
  {
    v8 = *(a2 + 16);
    if (v8 >= 2)
    {
      v9 = *(a2 + 32);
      v10 = *(a3 + 32);
      v11 = *v9;
      for (i = 1; i < v8; ++i)
      {
        v13 = v9[i];
        if (v13 < v11)
        {
          *v9 = v13;
          *v10 = v10[i];
          v8 = *(a2 + 16);
          v11 = v13;
        }
      }
    }

    result.n128_u64[0] = 0x100000001;
    result.n128_u64[1] = 0x100000001;
    *(a2 + 8) = result;
    *(a3 + 8) = result;
  }

  return result;
}

void sub_1D0D7FEEC(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  sub_1D0D2677C(a1, v2);
  v1 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1D0D7FF3C(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (a2 == 1)
  {
    v4 = *(result + 12);
    *(a3 + 8) = 1;
    *(a3 + 12) = v4;
    *(a3 + 16) = v4;
    *(a3 + 20) = 1;
    *(a4 + 8) = 1;
    *(a4 + 12) = v4;
    *(a4 + 16) = v4;
    *(a4 + 20) = 1;
    if (v4)
    {
      v5 = 0;
      v6 = *(result + 32);
      v7 = *(a3 + 32);
      v8 = *(a4 + 32);
      do
      {
        v9 = *(result + 8);
        v10 = *(v6 + 8 * (v9 * v5));
        if (v9 < 2)
        {
          v11 = 0;
        }

        else
        {
          v11 = 0;
          v12 = v9 * v5;
          for (i = 1; i != v9; ++i)
          {
            if (*(v6 + 8 * (v12 + i)) < v10)
            {
              v11 = i;
              v10 = *(v6 + 8 * (v12 + i));
            }
          }
        }

        *(v7 + 8 * v5) = v10;
        *(v8 + 4 * v5++) = v11;
      }

      while (v5 < *(result + 12));
    }
  }

  else
  {
    v14 = *(result + 8);
    *(a3 + 8) = v14;
    *(a3 + 12) = 1;
    *(a3 + 16) = v14;
    *(a3 + 20) = v14;
    *(a4 + 8) = v14;
    *(a4 + 12) = 1;
    *(a4 + 16) = v14;
    *(a4 + 20) = v14;
    if (v14)
    {
      v15 = 0;
      v16 = *(result + 32);
      v17 = *(a3 + 32);
      v18 = *(a4 + 32);
      do
      {
        *(v17 + 8 * v15) = *(v16 + 8 * v15);
        *(v18 + 4 * v15++) = 0;
      }

      while (v15 < *(result + 8));
    }

    v19 = *(result + 12);
    if (v19 >= 2)
    {
      v20 = *(result + 32);
      v21 = *(a3 + 32);
      v22 = *(result + 8);
      v23 = 1;
      v24 = v22;
      do
      {
        if (v24)
        {
          v25 = 0;
          v26 = *(a4 + 32);
          v27 = v24 * v23;
          do
          {
            v28 = *(v20 + 8 * (v27 + v25));
            if (v28 < *(v21 + 8 * v25))
            {
              *(v21 + 8 * v25) = v28;
              *(v26 + 4 * v25) = v23;
              v22 = *(result + 8);
            }

            ++v25;
          }

          while (v25 < v22);
          v19 = *(result + 12);
          v24 = v22;
        }

        ++v23;
      }

      while (v23 < v19);
    }
  }

  return result;
}

void sub_1D0D800EC(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  sub_1D0C51C04(a1, v2);
  v1 = *MEMORY[0x1E69E9840];
}

void sub_1D0D80178(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  sub_1D0D2677C(a1, v2);
  v1 = *MEMORY[0x1E69E9840];
}

void *sub_1D0D801C8(void *result)
{
  *result = &unk_1F4CE4100;
  result[450] = &unk_1F4CD5E28;
  result[84] = &unk_1F4CD5E28;
  result[60] = &unk_1F4CD5E28;
  result[32] = &unk_1F4CD5E28;
  result[8] = &unk_1F4CD5E28;
  return result;
}

double sub_1D0D80288@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 24) = 0x100000013;
  *a3 = &unk_1F4CE40B8;
  *(a3 + 8) = xmmword_1D0E844F0;
  *(a3 + 32) = a3 + 40;
  *&result = *&sub_1D0B88838(a1, a2, a3);
  return result;
}

double sub_1D0D8030C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 24) = 0x1300000013;
  *a3 = &unk_1F4CE4070;
  *(a3 + 8) = xmmword_1D0E84640;
  *(a3 + 32) = a3 + 40;
  *&result = *&sub_1D0B88838(a1, a2, a3);
  return result;
}

double sub_1D0D8038C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 24) = 0xF00000013;
  *a3 = &unk_1F4CE4028;
  *(a3 + 8) = xmmword_1D0E84650;
  *(a3 + 32) = a3 + 40;
  *&result = *&sub_1D0B88838(a1, a2, a3);
  return result;
}

uint64_t sub_1D0D80410@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 24) = 0x1300000013;
  *a3 = &unk_1F4CE4070;
  *(a3 + 8) = xmmword_1D0E84640;
  *(a3 + 32) = a3 + 40;
  return sub_1D0B89390(a1, a2, a3);
}

uint64_t sub_1D0D80490@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 24) = 0xF00000013;
  *a3 = &unk_1F4CE4028;
  *(a3 + 8) = xmmword_1D0E84650;
  *(a3 + 32) = a3 + 40;
  return sub_1D0B89390(a1, a2, a3);
}

double sub_1D0D80514@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, float64x2_t a3@<Q0>)
{
  *(a2 + 24) = 0x100000013;
  *a2 = &unk_1F4CE40B8;
  *(a2 + 8) = xmmword_1D0E844F0;
  *(a2 + 32) = a2 + 40;
  *&result = *&sub_1D0B8930C(a1, a2, a3);
  return result;
}

double sub_1D0D80598@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, float64x2_t a3@<Q0>)
{
  *(a2 + 24) = 0x1300000013;
  *a2 = &unk_1F4CE4070;
  *(a2 + 8) = xmmword_1D0E84640;
  *(a2 + 32) = a2 + 40;
  *&result = *&sub_1D0B8930C(a1, a2, a3);
  return result;
}

double sub_1D0D80618@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, float64x2_t a3@<Q0>)
{
  *(a2 + 24) = 0xF00000013;
  *a2 = &unk_1F4CE4028;
  *(a2 + 8) = xmmword_1D0E84650;
  *(a2 + 32) = a2 + 40;
  *&result = *&sub_1D0B8930C(a1, a2, a3);
  return result;
}

__n128 sub_1D0D8069C(uint64_t a1, uint64_t a2)
{
  result.n128_u64[0] = 0x1300000013;
  *(a1 + 24) = 0x1300000013;
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F4CE4070;
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
  if (v4 > 0x13)
  {
    v17 = "this->max_num_rows_ >= A.num_rows_";
    v18 = 616;
    goto LABEL_16;
  }

  if (v3 >= 0x14)
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

__n128 sub_1D0D807E0(uint64_t a1, uint64_t a2)
{
  result.n128_u64[0] = 0xF00000013;
  *(a1 + 24) = 0xF00000013;
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F4CE4028;
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
  if (v4 > 0x13)
  {
    v17 = "this->max_num_rows_ >= A.num_rows_";
    v18 = 616;
    goto LABEL_16;
  }

  if (v3 >= 0x10)
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

void sub_1D0D80984(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  sub_1D0C51C04(a1, v2);
  v1 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1D0D809D4(uint64_t a1, _OWORD *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_1D0D80A2C(a1, a2);
  }

  else
  {
    sub_1D0D80B78(*(a1 + 8), a2);
    result = v3 + 5456;
    *(a1 + 8) = v3 + 5456;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D0D80A2C(uint64_t a1, _OWORD *a2)
{
  v2 = 0xCFF3FCFF3FCFF3FDLL * ((*(a1 + 8) - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0xC0300C0300C03)
  {
    sub_1D0C5663C();
  }

  if (0x9FE7F9FE7F9FE7FALL * ((*(a1 + 16) - *a1) >> 4) > v3)
  {
    v3 = 0x9FE7F9FE7F9FE7FALL * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xCFF3FCFF3FCFF3FDLL * ((*(a1 + 16) - *a1) >> 4) >= 0x6018060180601)
  {
    v6 = 0xC0300C0300C03;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_1D0D80C18(a1, v6);
  }

  v13 = 0;
  v14 = 5456 * v2;
  sub_1D0D80B78((5456 * v2), a2);
  v15 = 5456 * v2 + 5456;
  v7 = *(a1 + 8);
  v8 = (5456 * v2 + *a1 - v7);
  sub_1D0D80C74(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_1D0D80F10(&v13);
  return v12;
}

void sub_1D0D80B64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1D0D80F10(va);
  _Unwind_Resume(a1);
}

_OWORD *sub_1D0D80B78(_OWORD *a1, _OWORD *a2)
{
  *a1 = *a2;
  sub_1D0D8E430((a1 + 1), (a2 + 1));
  sub_1D0D8069C((a1 + 13), (a2 + 13));
  sub_1D0D807E0((a1 + 196), (a2 + 196));
  return a1;
}

void sub_1D0D80BD8(_Unwind_Exception *a1)
{
  *v2 = &unk_1F4CD5E28;
  *v1 = &unk_1F4CD5E28;
  _Unwind_Resume(a1);
}

void sub_1D0D80C18(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xC0300C0300C04)
  {
    operator new();
  }

  sub_1D0C54BE8();
}

uint64_t sub_1D0D80C74(uint64_t a1, void *a2, _OWORD *a3, _OWORD *a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      sub_1D0D80D98(a4, v6);
      v6 += 341;
      a4 = v12 + 341;
      v12 += 341;
    }

    while (v6 != a3);
    v10 = 1;
    v7 = v5 + 392;
    do
    {
      v5[392] = &unk_1F4CD5E28;
      v5[26] = &unk_1F4CD5E28;
      v5[2] = &unk_1F4CD5E28;
      v5 += 682;
      v7 += 682;
    }

    while (v5 != a3);
  }

  return sub_1D0D80E38(v9);
}

_OWORD *sub_1D0D80D98(_OWORD *a1, _OWORD *a2)
{
  *a1 = *a2;
  sub_1D0D8E430((a1 + 1), (a2 + 1));
  sub_1D0D8069C((a1 + 13), (a2 + 13));
  sub_1D0D807E0((a1 + 196), (a2 + 196));
  return a1;
}

void sub_1D0D80DF8(_Unwind_Exception *a1)
{
  *v2 = &unk_1F4CD5E28;
  *v1 = &unk_1F4CD5E28;
  _Unwind_Resume(a1);
}

uint64_t sub_1D0D80E38(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1D0D80E70(a1);
  }

  return a1;
}

uint64_t sub_1D0D80E70(uint64_t result)
{
  v1 = **(result + 16);
  v2 = **(result + 8);
  if (v1 != v2)
  {
    v3 = v1 - 290;
    v4 = v1 - 680;
    do
    {
      *v3 = &unk_1F4CD5E28;
      *(v3 - 366) = &unk_1F4CD5E28;
      *(v3 - 390) = &unk_1F4CD5E28;
      v5 = v3 - 392;
      v3 -= 682;
      v4 -= 682;
    }

    while (v5 != v2);
  }

  return result;
}

uint64_t sub_1D0D80F10(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 != v2)
  {
    v4 = v3 - 290;
    v5 = v3 - 680;
    do
    {
      *v4 = &unk_1F4CD5E28;
      *(v4 - 366) = &unk_1F4CD5E28;
      *(v4 - 390) = &unk_1F4CD5E28;
      v6 = v4 - 682;
      v7 = v4 - 392;
      v5 -= 682;
      v4 -= 682;
    }

    while (v7 != v2);
    *(a1 + 16) = v6 + 290;
  }

  v8 = *a1;
  if (*a1)
  {
    operator delete(v8);
  }

  return a1;
}

_OWORD *sub_1D0D80FE0(_OWORD *a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = *a2;
  sub_1D0D8E430((a1 + 1), a3);
  sub_1D0D8069C((a1 + 13), a4);
  sub_1D0D807E0((a1 + 196), a5);
  return a1;
}

void sub_1D0D81050(_Unwind_Exception *a1)
{
  *v2 = &unk_1F4CD5E28;
  *v1 = &unk_1F4CD5E28;
  _Unwind_Resume(a1);
}

_OWORD *sub_1D0D81090(_OWORD *a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = *a2;
  sub_1D0D8E430((a1 + 1), a3);
  sub_1D0D8069C((a1 + 13), a4);
  sub_1D0D807E0((a1 + 196), a5);
  return a1;
}

void sub_1D0D81100(_Unwind_Exception *a1)
{
  *v2 = &unk_1F4CD5E28;
  *v1 = &unk_1F4CD5E28;
  _Unwind_Resume(a1);
}

double sub_1D0D81140(uint64_t a1, uint64_t a2)
{
  *&result = 0x100000013;
  *(a1 + 24) = 0x100000013;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F4CE40B8;
  v4 = *(a2 + 8);
  v3 = *(a2 + 12);
  *(a1 + 8) = v4;
  *(a1 + 12) = v3;
  v5 = v3 * v4;
  *(a1 + 16) = v5;
  *(a1 + 20) = v4;
  v6 = (a1 + 40);
  *(a1 + 32) = a1 + 40;
  if (v4 > 0x13)
  {
    v9 = "this->max_num_rows_ >= A.NumRows()";
    v10 = 567;
    goto LABEL_9;
  }

  if (v3 > 1)
  {
    v9 = "this->max_num_cols_ >= A.NumCols()";
    v10 = 568;
LABEL_9:
    __assert_rtn("CNMatrix", "cnmatrix.h", v10, v9);
  }

  if (v5 >= 1)
  {
    v7 = *(a2 + 32);
    do
    {
      v8 = *v7++;
      result = v8;
      *v6++ = v8;
      --v5;
    }

    while (v5);
  }

  return result;
}

double sub_1D0D81228(uint64_t a1, uint64_t a2)
{
  *&result = 0x1300000013;
  *(a1 + 24) = 0x1300000013;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F4CE4070;
  v4 = *(a2 + 8);
  v3 = *(a2 + 12);
  *(a1 + 8) = v4;
  *(a1 + 12) = v3;
  v5 = v3 * v4;
  *(a1 + 16) = v5;
  *(a1 + 20) = v4;
  v6 = (a1 + 40);
  *(a1 + 32) = a1 + 40;
  if (v4 > 0x13)
  {
    v9 = "this->max_num_rows_ >= A.NumRows()";
    v10 = 567;
    goto LABEL_9;
  }

  if (v3 > 0x13)
  {
    v9 = "this->max_num_cols_ >= A.NumCols()";
    v10 = 568;
LABEL_9:
    __assert_rtn("CNMatrix", "cnmatrix.h", v10, v9);
  }

  if (v5 >= 1)
  {
    v7 = *(a2 + 32);
    do
    {
      v8 = *v7++;
      result = v8;
      *v6++ = v8;
      --v5;
    }

    while (v5);
  }

  return result;
}

double sub_1D0D8130C(uint64_t a1, uint64_t a2)
{
  *&result = 0xF00000013;
  *(a1 + 24) = 0xF00000013;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F4CE4028;
  v4 = *(a2 + 8);
  v3 = *(a2 + 12);
  *(a1 + 8) = v4;
  *(a1 + 12) = v3;
  v5 = v3 * v4;
  *(a1 + 16) = v5;
  *(a1 + 20) = v4;
  v6 = (a1 + 40);
  *(a1 + 32) = a1 + 40;
  if (v4 > 0x13)
  {
    v9 = "this->max_num_rows_ >= A.NumRows()";
    v10 = 567;
    goto LABEL_9;
  }

  if (v3 > 0xF)
  {
    v9 = "this->max_num_cols_ >= A.NumCols()";
    v10 = 568;
LABEL_9:
    __assert_rtn("CNMatrix", "cnmatrix.h", v10, v9);
  }

  if (v5 >= 1)
  {
    v7 = *(a2 + 32);
    do
    {
      v8 = *v7++;
      result = v8;
      *v6++ = v8;
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_1D0D813F4(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 32) = 0;
  *(a1 + 48) = 0;
  *(a1 + 40) = 0;
  *(a1 + 80) = 0;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 88) = 1;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  *(a1 + 160) = 0;
  *(a1 + 144) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0x7FF8000000000000;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0x4022000000000000;
  *(a1 + 208) = 0u;
  v2 = a1 + 208;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 280) = 0x100000008;
  *(a1 + 256) = &unk_1F4CE4320;
  *(a1 + 264) = xmmword_1D0E84520;
  *(a1 + 288) = a1 + 296;
  *(a1 + 384) = 0x800000008;
  *(a1 + 360) = &unk_1F4CE43B0;
  *(a1 + 368) = xmmword_1D0E84510;
  *(a1 + 392) = a1 + 400;
  *(a1 + 936) = 0x100000008;
  *(a1 + 912) = &unk_1F4CE4320;
  *(a1 + 920) = xmmword_1D0E84520;
  *(a1 + 944) = a1 + 952;
  *(a1 + 1016) = 0;
  *(a1 + 1024) = 0;
  *(a1 + 1032) = 0x3FF0000000000000;
  *(a1 + 1097) = 0u;
  *(a1 + 1072) = 0u;
  *(a1 + 1088) = 0u;
  *(a1 + 1040) = 0u;
  *(a1 + 1056) = 0u;
  *(a1 + 1120) = 0x3FF0000000000000;
  *(a1 + 1152) = 0;
  *(a1 + 1144) = 0;
  *(a1 + 1128) = 0u;
  *(a1 + 1160) = 0x3FF0000000000000;
  *(a1 + 1184) = 0;
  *(a1 + 1168) = 0u;
  *(a1 + 1192) = 0x3FF0000000000000;
  *(a1 + 1208) = 0u;
  *(a1 + 1200) = a1 + 1208;
  *(a1 + 1232) = 0u;
  *(a1 + 1224) = a1 + 1232;
  *(a1 + 1256) = 0u;
  *(a1 + 1248) = a1 + 1256;
  *(a1 + 1272) = 0;
  *(a1 + 1360) = 0u;
  *(a1 + 1344) = 0u;
  *(a1 + 1328) = 0u;
  *(a1 + 1312) = 0u;
  *(a1 + 1296) = 0u;
  *(a1 + 1280) = 0u;
  *(a1 + 1376) = 1065353216;
  *(a1 + 1384) = 0u;
  *(a1 + 1400) = 0u;
  *(a1 + 1416) = 1065353216;
  *(a1 + 1440) = 0u;
  *(a1 + 1424) = 0u;
  *(a1 + 1456) = 1065353216;
  v3 = (a1 + 1512);
  v4 = (a1 + 1928);
  *(a1 + 1464) = 0u;
  *(a1 + 1480) = 0u;
  *(a1 + 1496) = 1065353216;
  *(a1 + 1504) = 0;
  *(a1 + 1506) = 0;
  *(a1 + 1976) = 0;
  v5 = MEMORY[0x1E69E5530] + 64;
  *(a1 + 1928) = MEMORY[0x1E69E5530] + 64;
  v6 = *(MEMORY[0x1E69E54D0] + 16);
  v7 = *(MEMORY[0x1E69E54D0] + 8);
  *(a1 + 1512) = v7;
  *(v3 + *(v7 - 24)) = v6;
  v8 = (a1 + 1512 + *(*(a1 + 1512) - 24));
  std::ios_base::init(v8, (a1 + 1520));
  v9 = MEMORY[0x1E69E5530] + 24;
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  *v3 = v9;
  *v4 = v5;
  MEMORY[0x1D387E8B0](v2 + 1312);
  *(a1 + 2080) = 0;
  *(a1 + 2088) = 0;
  *(a1 + 2096) = 0;
  *(a1 + 2192) = 0;
  *(a1 + 2200) = 0;
  *(a1 + 2304) = 0;
  *(a1 + 2312) = 0;
  *(a1 + 2416) = 0;
  *(a1 + 2424) = 1;
  *(a1 + 2432) = 0x7FF8000000000000;
  *(a1 + 2440) = 0;
  *(a1 + 2448) = 0x7FF8000000000000;
  return a1;
}

void sub_1D0D81770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, void *a11, void *a12, void *a13, void **a14)
{
  std::ostream::~ostream();
  MEMORY[0x1D387EBF0](v18);
  sub_1D0BDFDC8(v17);
  sub_1D0BDFDC8(v15 + 1216);
  sub_1D0D818EC(v16);
  sub_1D0D818EC(v15 + 1136);
  sub_1D0BCB540(v15 + 1040, *v19);
  sub_1D0BCB540(v15 + 1016, *a10);
  sub_1D0BCB540(v15 + 992, *v20);
  *a11 = &unk_1F4CD5E28;
  *a12 = &unk_1F4CD5E28;
  *a13 = &unk_1F4CD5E28;
  sub_1D0D41E0C(v15);
  v22 = *a14;
  if (*a14)
  {
    *(v14 + 56) = v22;
    operator delete(v22);
  }

  _Unwind_Resume(a1);
}

void sub_1D0D8189C(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  sub_1D0C51C04(a1, v2);
  v1 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1D0D818EC(uint64_t a1)
{
  sub_1D0BC27A8(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

uint64_t *sub_1D0D81928(uint64_t *a1)
{
  a1[1581] = &unk_1F4CE3720;
  a1[1489] = &unk_1F4CE3C10;
  a1[1482] = &unk_1F4CE3750;
  sub_1D0C02C50(a1 + 1487);
  a1[1482] = &unk_1F4CE37A8;
  a1[1476] = &unk_1F4CE37D8;
  sub_1D0BD9B48(a1 + 1481);
  a1[1476] = &unk_1F4CE3830;
  a1[1427] = &unk_1F4CDEAF8;
  a1[1421] = &unk_1F4CE37D8;
  sub_1D0BD9B48(a1 + 1426);
  a1[1421] = &unk_1F4CE3830;
  a1[1329] = &unk_1F4CD5E28;
  a1[1280] = &unk_1F4CDEAF8;
  a1[1101] = &unk_1F4CE3870;
  a1[922] = &unk_1F4CE3720;
  a1[743] = &unk_1F4CE3C10;
  a1[736] = &unk_1F4CE38A0;
  sub_1D0C02C50(a1 + 741);
  a1[736] = &unk_1F4CE37A8;
  a1[730] = &unk_1F4CE38E8;
  sub_1D0BD9B48(a1 + 735);
  a1[730] = &unk_1F4CE3830;
  a1[638] = &unk_1F4CDEAF8;
  a1[632] = &unk_1F4CE38E8;
  sub_1D0BD9B48(a1 + 637);
  a1[632] = &unk_1F4CE3830;
  a1[453] = &unk_1F4CD5E28;
  a1[361] = &unk_1F4CDEAF8;
  a1[8] = &unk_1F4CE3870;
  sub_1D0BAAF58(a1 + 5);
  return a1;
}

void *sub_1D0D81D00(void *a1)
{
  *a1 = &unk_1F4CE3750;
  sub_1D0C02C50(a1 + 5);
  *a1 = &unk_1F4CE37A8;
  return a1;
}

void *sub_1D0D81D60(void *a1)
{
  *a1 = &unk_1F4CE37D8;
  sub_1D0BD9B48(a1 + 5);
  *a1 = &unk_1F4CE3830;
  return a1;
}

void *sub_1D0D81E60(void *a1)
{
  *a1 = &unk_1F4CE38A0;
  sub_1D0C02C50(a1 + 5);
  *a1 = &unk_1F4CE37A8;
  return a1;
}

void *sub_1D0D81EC0(void *a1)
{
  *a1 = &unk_1F4CE38E8;
  sub_1D0BD9B48(a1 + 5);
  *a1 = &unk_1F4CE3830;
  return a1;
}

void sub_1D0D81FBC(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  sub_1D0D3023C(a1, v2);
  v1 = *MEMORY[0x1E69E9840];
}

void sub_1D0D82050(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  if (v1 >= 2)
  {
    v3 = *(a1 + 12);
    if (v3 >= 2)
    {
      v4 = *(a1 + 16);
      v5 = *(a1 + 20);
      bzero(v14, v4);
      if (v4 >= 3)
      {
        v6 = (v4 - 1);
        v7 = 1;
        do
        {
          v8 = &v14[v7];
          if ((v14[v7] & 1) == 0)
          {
            v9 = *(*(a1 + 32) + 8 * v7);
            v10 = v7;
            do
            {
              v10 = (v10 * (v3 + v1 - v5)) % v6;
              v11 = *(a1 + 32);
              v12 = *(v11 + 8 * v10);
              *(v11 + 8 * v10) = v9;
              *v8 = 1;
              v8 = &v14[v10];
              v9 = v12;
            }

            while (!*v8);
          }

          ++v7;
        }

        while (v7 != v6);
      }
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

void sub_1D0D82154(void *a1)
{
  *a1 = &unk_1F4CE3750;
  sub_1D0C02C50(a1 + 5);
  *a1 = &unk_1F4CE37A8;

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0D82364(uint64_t a1, char *a2)
{
  v2 = *(a1 + 8);
  if (v2 >= 2)
  {
    v4 = *(a1 + 12);
    if (v4 >= 2)
    {
      v6 = *(a1 + 20);
      bzero(a2, *(a1 + 16));
      v7 = *(a1 + 16);
      if (v7 >= 3)
      {
        v8 = v4 + v2 - v6;
        v9 = (v7 - 1);
        v10 = 1;
        do
        {
          sub_1D0BE0DE8(v15, *(a1 + 32) + 112 * v10);
          v11 = &a2[v10];
          if ((a2[v10] & 1) == 0)
          {
            v12 = v10;
            do
            {
              v12 = v12 * v8 % v9;
              v13 = 112 * v12;
              sub_1D0BE0DE8(v14, *(a1 + 32) + v13);
              sub_1D0B894B0(*(a1 + 32) + v13, v15);
              *v11 = 1;
              sub_1D0B894B0(v15, v14);
              v11 = &a2[v12];
            }

            while (!*v11);
          }

          ++v10;
        }

        while (v10 != v9);
      }
    }
  }
}

void sub_1D0D82474(void *a1)
{
  *a1 = &unk_1F4CE37D8;
  sub_1D0BD9B48(a1 + 5);
  *a1 = &unk_1F4CE3830;

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0D825C4(uint64_t a1, char *a2)
{
  v2 = *(a1 + 8);
  if (v2 >= 2)
  {
    v4 = *(a1 + 12);
    if (v4 >= 2)
    {
      v6 = *(a1 + 20);
      bzero(a2, *(a1 + 16));
      v7 = *(a1 + 16);
      if (v7 >= 3)
      {
        v8 = v4 + v2 - v6;
        v9 = (v7 - 1);
        v10 = 1;
        do
        {
          sub_1D0BBA094(v14, *(a1 + 32) + (v10 << 6));
          v11 = &a2[v10];
          if ((a2[v10] & 1) == 0)
          {
            v12 = v10;
            do
            {
              v12 = v12 * v8 % v9;
              sub_1D0BBA094(v13, *(a1 + 32) + (v12 << 6));
              sub_1D0B894B0(*(a1 + 32) + (v12 << 6), v14);
              *v11 = 1;
              sub_1D0B894B0(v14, v13);
              v11 = &a2[v12];
            }

            while (!*v11);
          }

          ++v10;
        }

        while (v10 != v9);
      }
    }
  }
}

void sub_1D0D82708(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  sub_1D0D2677C(a1, v2);
  v1 = *MEMORY[0x1E69E9840];
}

void sub_1D0D82794(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  sub_1D0C51C04(a1, v2);
  v1 = *MEMORY[0x1E69E9840];
}

void sub_1D0D82814(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  sub_1D0D8286C(a1, v2);
  v1 = *MEMORY[0x1E69E9840];
}

void sub_1D0D8286C(uint64_t a1, char *a2)
{
  v2 = *(a1 + 8);
  if (v2 >= 2)
  {
    v4 = *(a1 + 12);
    if (v4 >= 2)
    {
      v6 = *(a1 + 20);
      bzero(a2, *(a1 + 16));
      v7 = *(a1 + 16);
      if (v7 >= 3)
      {
        v8 = (v7 - 1);
        v9 = 1;
        do
        {
          v14 = *(*(a1 + 32) + 16 * v9);
          v10 = &a2[v9];
          if ((a2[v9] & 1) == 0)
          {
            v11 = v9;
            do
            {
              v11 = (v11 * (v4 + v2 - v6)) % v8;
              v12 = *(a1 + 32);
              v13 = *(v12 + 16 * v11);
              *(v12 + 16 * v11) = v14;
              *v10 = 1;
              v14 = v13;
              v10 = &a2[v11];
            }

            while (!*v10);
          }

          ++v9;
        }

        while (v9 != v8);
      }
    }
  }
}

void sub_1D0D82980(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  sub_1D0D3023C(a1, v2);
  v1 = *MEMORY[0x1E69E9840];
}

void sub_1D0D82A0C(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  if (v1 >= 2)
  {
    v3 = *(a1 + 12);
    if (v3 >= 2)
    {
      v4 = *(a1 + 16);
      v5 = *(a1 + 20);
      bzero(v14, v4);
      if (v4 >= 3)
      {
        v6 = (v4 - 1);
        v7 = 1;
        do
        {
          v8 = &v14[v7];
          if ((v14[v7] & 1) == 0)
          {
            v9 = *(*(a1 + 32) + 8 * v7);
            v10 = v7;
            do
            {
              v10 = (v10 * (v3 + v1 - v5)) % v6;
              v11 = *(a1 + 32);
              v12 = *(v11 + 8 * v10);
              *(v11 + 8 * v10) = v9;
              *v8 = 1;
              v8 = &v14[v10];
              v9 = v12;
            }

            while (!*v8);
          }

          ++v7;
        }

        while (v7 != v6);
      }
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

void sub_1D0D82B10(void *a1)
{
  *a1 = &unk_1F4CE38A0;
  sub_1D0C02C50(a1 + 5);
  *a1 = &unk_1F4CE37A8;

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0D82C60(void *a1)
{
  *a1 = &unk_1F4CE38E8;
  sub_1D0BD9B48(a1 + 5);
  *a1 = &unk_1F4CE3830;

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0D82DEC(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  sub_1D0D2677C(a1, v2);
  v1 = *MEMORY[0x1E69E9840];
}

void sub_1D0D82E78(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  sub_1D0C51C04(a1, v2);
  v1 = *MEMORY[0x1E69E9840];
}

void sub_1D0D82EF8(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  sub_1D0D8286C(a1, v2);
  v1 = *MEMORY[0x1E69E9840];
}

void sub_1D0D82F48(void *a1)
{
  v1 = 2100;
  do
  {
    a1[v1] = &unk_1F4CE36E0;
    v1 -= 6;
  }

  while (v1 * 8);
  *a1 = &unk_1F4CE3698;
  JUMPOUT(0x1D387ECA0);
}

uint64_t sub_1D0D82FA4(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 8))
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  v4 = a1 + 48 * *(a1 + 40);
  v5 = *(v4 + 56);
  v6 = *(v4 + 72);
  *(a2 + 40) = *(v4 + 88);
  *(a2 + 24) = v6;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1D0D82FE4(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 8))
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  v4 = a1 + 48 * *(a1 + 44);
  v5 = *(v4 + 56);
  v6 = *(v4 + 72);
  *(a2 + 40) = *(v4 + 88);
  *(a2 + 24) = v6;
  *(a2 + 8) = v5;
  return result;
}

void sub_1D0D8302C(void *a1)
{
  v1 = 2100;
  do
  {
    a1[v1] = &unk_1F4CE3C98;
    v1 -= 6;
  }

  while (v1 * 8);
  *a1 = &unk_1F4CE3C50;
  JUMPOUT(0x1D387ECA0);
}

uint64_t sub_1D0D83088(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 8))
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  v4 = a1 + 48 * *(a1 + 40);
  v5 = *(v4 + 56);
  v6 = *(v4 + 72);
  *(a2 + 40) = *(v4 + 88);
  *(a2 + 24) = v6;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1D0D830C8(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 8))
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  v4 = a1 + 48 * *(a1 + 44);
  v5 = *(v4 + 56);
  v6 = *(v4 + 72);
  *(a2 + 40) = *(v4 + 88);
  *(a2 + 24) = v6;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1D0D83110(uint64_t a1)
{
  if (*(a1 + 2416) == 1)
  {
    *(a1 + 2312) = &unk_1F4CD5E28;
  }

  if (*(a1 + 2304) == 1)
  {
    *(a1 + 2200) = &unk_1F4CD5E28;
  }

  v2 = MEMORY[0x1E69E54D0];
  v3 = *MEMORY[0x1E69E54D0];
  *(a1 + 1512) = *MEMORY[0x1E69E54D0];
  *(a1 + 1512 + *(v3 - 24)) = *(v2 + 24);
  MEMORY[0x1D387E8C0](a1 + 1520);
  std::ostream::~ostream();
  MEMORY[0x1D387EBF0](a1 + 1928);
  sub_1D0BDFDC8(a1 + 1464);
  sub_1D0BDFDC8(a1 + 1424);
  sub_1D0D818EC(a1 + 1384);
  sub_1D0D818EC(a1 + 1344);
  sub_1D0BCB540(a1 + 1248, *(a1 + 1256));
  sub_1D0BCB540(a1 + 1224, *(a1 + 1232));
  sub_1D0BCB540(a1 + 1200, *(a1 + 1208));
  *(a1 + 912) = &unk_1F4CD5E28;
  *(a1 + 360) = &unk_1F4CD5E28;
  *(a1 + 256) = &unk_1F4CD5E28;
  if (*(a1 + 255) < 0)
  {
    operator delete(*(a1 + 232));
  }

  if (*(a1 + 231) < 0)
  {
    operator delete(*(a1 + 208));
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    *(a1 + 56) = v4;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_1D0D83314(void *a1)
{
  *a1 = &unk_1F4CE3D10;
  sub_1D0D85624(a1 + 199);
  a1[171] = &unk_1F4CD5E28;
  sub_1D0D836A8(a1 + 165);

  return sub_1D0D833B8(a1);
}

uint64_t sub_1D0D833B8(uint64_t a1)
{
  *a1 = &unk_1F4CE3E08;
  if (*(a1 + 1319) < 0)
  {
    operator delete(*(a1 + 1296));
  }

  if (*(a1 + 1295) < 0)
  {
    operator delete(*(a1 + 1272));
  }

  v3 = (a1 + 1248);
  sub_1D0BA5F70(&v3);
  v3 = (a1 + 1224);
  sub_1D0BA5F70(&v3);
  v3 = (a1 + 1200);
  sub_1D0BA5F70(&v3);
  *(a1 + 848) = &unk_1F4CD5E28;
  sub_1D0D857FC((a1 + 800));
  *(a1 + 552) = &unk_1F4CD5E28;
  *(a1 + 304) = &unk_1F4CD5E28;
  sub_1D0D857FC((a1 + 256));
  *(a1 + 8) = &unk_1F4CD5E28;
  return a1;
}

void sub_1D0D834E0(void *a1)
{
  sub_1D0D83314(a1);

  JUMPOUT(0x1D387ECA0);
}

double sub_1D0D83518@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 24) = 0x10000001ALL;
  *a2 = &unk_1F4CE3E48;
  *(a2 + 8) = xmmword_1D0E843B0;
  *(a2 + 32) = a2 + 40;
  v2 = 848;
  if (!*(a1 + 1108))
  {
    v2 = 304;
  }

  *&result = sub_1D0B894B0(a2, a1 + v2).n128_u64[0];
  return result;
}

void sub_1D0D835B0(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  if (v1 >= 2)
  {
    v3 = *(a1 + 12);
    if (v3 >= 2)
    {
      v4 = *(a1 + 16);
      v5 = *(a1 + 20);
      bzero(v14, v4);
      if (v4 >= 3)
      {
        v6 = (v4 - 1);
        v7 = *(a1 + 32);
        v8 = 1;
        do
        {
          v9 = &v14[v8];
          if ((v14[v8] & 1) == 0)
          {
            v10 = *(v7 + 8 * v8);
            v11 = v8;
            do
            {
              v11 = (v11 * (v3 + v1 - v5)) % v6;
              v12 = *(v7 + 8 * v11);
              *(v7 + 8 * v11) = v10;
              *v9 = 1;
              v9 = &v14[v11];
              v10 = v12;
            }

            while (!*v9);
          }

          ++v8;
        }

        while (v8 != v6);
      }
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

void *sub_1D0D836A8(void *a1)
{
  *a1 = &unk_1F4CE3DC0;
  v2 = a1[5];
  a1[5] = 0;
  if (v2)
  {
    MEMORY[0x1D387EC80](v2, 0x1000C8000313F17);
  }

  *a1 = &unk_1F4CD5E28;
  return a1;
}

void sub_1D0D83724(void *a1)
{
  sub_1D0D836A8(a1);

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0D83884(uint64_t a1)
{
  sub_1D0D833B8(a1);

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0D838F8(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  sub_1D0C51C04(a1, v2);
  v1 = *MEMORY[0x1E69E9840];
}

void sub_1D0D83948(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = v1[1];
    if (v3 != v2)
    {
      v4 = v3 - 2320;
      v5 = v3 - 5440;
      do
      {
        *v4 = &unk_1F4CD5E28;
        *(v4 - 366) = &unk_1F4CD5E28;
        *(v4 - 390) = &unk_1F4CD5E28;
        v6 = v4 - 3136;
        v4 -= 5456;
        v5 -= 5456;
      }

      while (v6 != v2);
    }

    v1[1] = v2;
    operator delete(v2);
  }
}

uint64_t sub_1D0D839F4(uint64_t a1)
{
  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void sub_1D0D83A44(uint64_t a1)
{
  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  JUMPOUT(0x1D387ECA0);
}

uint64_t sub_1D0D83AB4(uint64_t a1)
{
  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void sub_1D0D83B04(uint64_t a1)
{
  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0D83B84(int64x2_t *a1)
{
  a1->i64[0] = 0;
  a1->i64[1] = 0;
  v1 = vdupq_n_s64(0x7FF8000000000000uLL);
  a1[1] = v1;
  a1[2] = v1;
  a1[3] = v1;
  a1[4] = v1;
  a1[5] = v1;
  a1[6] = v1;
  a1[7] = v1;
  a1[8] = v1;
  a1[9] = v1;
  a1[10] = v1;
  a1[11] = v1;
  a1[12] = v1;
  a1[13] = v1;
  a1[14] = v1;
  sub_1D0D87FCC(a1[15].i64);
}

int64x2_t sub_1D0D83BDC(int64x2_t *a1)
{
  a1->i64[1] = 0;
  a1[1].i64[0] = 0;
  a1->i64[0] = &unk_1F4CEF6E8;
  a1[1].i8[8] = 0;
  a1[2].i64[0] = 0;
  a1[2].i64[1] = 0;
  a1[3].i8[0] = 0;
  a1[3].i64[1] = 0;
  a1[4].i64[0] = 0;
  a1[4].i8[8] = 0;
  a1[5].i64[0] = 0;
  a1[5].i64[1] = 0;
  a1[6].i64[1] = 0;
  a1[7].i64[0] = 0;
  a1[6].i64[0] = 0x7FF8000000000000;
  a1[7].i8[8] = 0;
  a1[9].i8[0] = 0;
  a1[8].i64[0] = 0;
  a1[8].i64[1] = 0;
  a1[9].i64[1] = 0;
  a1[10].i64[0] = 0;
  a1[10].i8[8] = 0;
  a1[11].i64[0] = 0;
  a1[11].i64[1] = 0;
  a1[12].i64[0] = 0x7FF8000000000000;
  a1[12].i32[2] = 0;
  result = vdupq_n_s64(0x7FF8000000000000uLL);
  a1[13] = result;
  a1[14] = result;
  a1[15] = result;
  a1[16] = result;
  a1[17].i64[0] = 0x7FF8000000000000;
  a1[17].i8[8] = 0;
  a1[18] = result;
  a1[19] = result;
  a1[20] = result;
  a1[21] = result;
  a1[22].i64[0] = 0x7FF8000000000000;
  return result;
}

uint64_t sub_1D0D83C64(uint64_t a1)
{
  *a1 = &unk_1F4CE0830;
  if (*(a1 + 1751) < 0)
  {
    operator delete(*(a1 + 1728));
  }

  if (*(a1 + 1727) < 0)
  {
    operator delete(*(a1 + 1704));
  }

  v3 = (a1 + 1680);
  sub_1D0BA5F70(&v3);
  v3 = (a1 + 1656);
  sub_1D0BA5F70(&v3);
  v3 = (a1 + 1632);
  sub_1D0BA5F70(&v3);
  *(a1 + 1424) = &unk_1F4CD5E28;
  *(a1 + 872) = &unk_1F4CD5E28;
  *(a1 + 768) = &unk_1F4CD5E28;
  *(a1 + 664) = &unk_1F4CD5E28;
  *(a1 + 112) = &unk_1F4CD5E28;
  *(a1 + 8) = &unk_1F4CD5E28;
  return a1;
}

void sub_1D0D83DBC(void *a1)
{
  *a1 = &unk_1F4CE07C8;
  a1[301] = &unk_1F4CD5E28;
  a1[288] = &unk_1F4CD5E28;
  a1[219] = &unk_1F4CD5E28;
  sub_1D0D83C64(a1);

  JUMPOUT(0x1D387ECA0);
}

double sub_1D0D83E70@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 24) = 0x100000008;
  *a2 = &unk_1F4CE4320;
  *(a2 + 8) = xmmword_1D0E84520;
  *(a2 + 32) = a2 + 40;
  v2 = 1424;
  if (!*(a1 + 1540))
  {
    v2 = 664;
  }

  *&result = sub_1D0B894B0(a2, a1 + v2).n128_u64[0];
  return result;
}

double sub_1D0D83ECC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 24) = 0x800000008;
  *a2 = &unk_1F4CE43B0;
  *(a2 + 8) = xmmword_1D0E84510;
  *(a2 + 32) = a2 + 40;
  v2 = 872;
  if (!*(a1 + 1540))
  {
    v2 = 112;
  }

  *&result = sub_1D0B894B0(a2, a1 + v2).n128_u64[0];
  return result;
}

void sub_1D0D83F28(uint64_t a1)
{
  sub_1D0D83C64(a1);

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0D83F60(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xC0300C0300C04)
  {
    sub_1D0D80C18(a1, a2);
  }

  sub_1D0C5663C();
}

_OWORD *sub_1D0D83FB0(uint64_t a1, _OWORD *a2, _OWORD *a3, _OWORD *a4)
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
      sub_1D0D80D98(v4, v6);
      v6 += 341;
      v4 = v11 + 341;
      v11 += 341;
    }

    while (v6 != a3);
  }

  v9 = 1;
  sub_1D0D80E38(v8);
  return v4;
}

double sub_1D0D84058(_OWORD *a1, _OWORD *a2)
{
  *a1 = *a2;
  sub_1D0B894B0((a1 + 1), (a2 + 1));
  sub_1D0B894B0((a1 + 13), (a2 + 13));

  *&result = sub_1D0B894B0((a1 + 196), (a2 + 196)).n128_u64[0];
  return result;
}

uint64_t sub_1D0D840AC(uint64_t a1)
{
  *(a1 + 240) = &unk_1F4CDFE98;
  if (*(a1 + 271) < 0)
  {
    operator delete(*(a1 + 248));
  }

  *(a1 + 240) = &unk_1F4CD5F70;
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1D0D8412C(uint64_t a1)
{
  *a1 = &unk_1F4CE0870;
  v2 = *(a1 + 560);
  if (v2)
  {
    sub_1D0B7CAB8(v2);
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

  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  JUMPOUT(0x1D387ECA0);
}

uint64_t sub_1D0D84220(uint64_t a1)
{
  *(a1 + 96) = &unk_1F4CD5E28;
  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void sub_1D0D84290(uint64_t a1)
{
  *(a1 + 96) = &unk_1F4CD5E28;
  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  JUMPOUT(0x1D387ECA0);
}

__n128 sub_1D0D84320(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 144))
  {
    sub_1D0D84488(a1);
    *a1 = &unk_1F4CE4300;
    *(a1 + 8) = *(a3 + 8);
    if (*(a3 + 39) < 0)
    {
      sub_1D0BC39B4((a1 + 16), *(a3 + 16), *(a3 + 24));
    }

    else
    {
      v5 = *(a3 + 16);
      *(a1 + 32) = *(a3 + 32);
      *(a1 + 16) = v5;
    }

    *a1 = &unk_1F4CE42D8;
    *(a1 + 40) = *(a3 + 40);
    v11 = *(a3 + 56);
    v12 = *(a3 + 88);
    *(a1 + 72) = *(a3 + 72);
    *(a1 + 56) = v11;
    *a1 = &unk_1F4CE0960;
    *(a1 + 88) = v12;
    *(a1 + 96) = &unk_1F4CEF658;
    result = *(a3 + 104);
    v13 = *(a3 + 120);
    *(a1 + 136) = *(a3 + 136);
    *(a1 + 120) = v13;
    *(a1 + 104) = result;
    *(a1 + 144) = 0;
  }

  else
  {
    *(a2 + 8) = *(a3 + 8);
    std::string::operator=((a2 + 16), (a3 + 16));
    *(a2 + 40) = *(a3 + 40);
    v7 = *(a3 + 72);
    v8 = *(a3 + 88);
    *(a2 + 56) = *(a3 + 56);
    *(a2 + 88) = v8;
    *(a2 + 72) = v7;
    result = *(a3 + 120);
    v10 = *(a3 + 104);
    *(a2 + 136) = *(a3 + 136);
    *(a2 + 104) = v10;
    *(a2 + 120) = result;
  }

  return result;
}

uint64_t sub_1D0D84488(uint64_t result)
{
  v1 = result;
  v2 = *(result + 144);
  if (v2 != -1)
  {
    result = (off_1F4CE0940[v2])(&v3, result);
  }

  *(v1 + 144) = -1;
  return result;
}

void sub_1D0D844E0(uint64_t a1, uint64_t a2)
{
  *(a2 + 96) = &unk_1F4CE36E0;
  *a2 = &unk_1F4CE4300;
  if (*(a2 + 39) < 0)
  {
    operator delete(*(a2 + 16));
  }
}

void sub_1D0D84530(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F4CE4300;
  if (*(a2 + 39) < 0)
  {
    operator delete(*(a2 + 16));
  }
}

void sub_1D0D84560(uint64_t a1)
{
  *(a1 + 96) = &unk_1F4CE36E0;
  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0D845F0()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E55D0] + 16;
  __cxa_throw(exception, MEMORY[0x1E69E5410], std::exception::~exception);
}

__n128 sub_1D0D84640(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 144) == 1)
  {
    *(a2 + 8) = *(a3 + 8);
    std::string::operator=((a2 + 16), (a3 + 16));
    *(a2 + 40) = *(a3 + 40);
    result = *(a3 + 56);
    v6 = *(a3 + 72);
    *(a2 + 88) = *(a3 + 88);
    *(a2 + 72) = v6;
    *(a2 + 56) = result;
  }

  else
  {
    sub_1D0D84488(a1);
    *a1 = &unk_1F4CE4300;
    *(a1 + 8) = *(a3 + 8);
    if (*(a3 + 39) < 0)
    {
      sub_1D0BC39B4((a1 + 16), *(a3 + 16), *(a3 + 24));
    }

    else
    {
      v8 = *(a3 + 16);
      *(a1 + 32) = *(a3 + 32);
      *(a1 + 16) = v8;
    }

    *a1 = &unk_1F4CE42D8;
    *(a1 + 40) = *(a3 + 40);
    result = *(a3 + 56);
    v9 = *(a3 + 72);
    *(a1 + 88) = *(a3 + 88);
    *(a1 + 72) = v9;
    *(a1 + 56) = result;
    *a1 = &unk_1F4CE09C0;
    *(a1 + 144) = 1;
  }

  return result;
}