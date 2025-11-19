uint64_t raven::RavenPNTEstimator::AddDeviceVelocityMeasurement(raven::RavenPNTEstimator *this, const raven::VelocityEvent *a2)
{
  v71[4] = *MEMORY[0x1E69E9840];
  if (*(a2 + 280))
  {
    v59 = 0x100000003;
    v58 = xmmword_1D0E7DCC0;
    v57[9] = &unk_1F4CDEB28;
    v60 = &v61;
    v61 = *(a2 + 18);
    v62 = *(a2 + 38);
    v55 = 0x300000003;
    v53 = &unk_1F4CD5DD0;
    v54 = xmmword_1D0E76C10;
    v56 = v57;
    if (sub_1D0C1C13C(a2, &v53))
    {
      v4 = *(a2 + 13);
      v5 = *(a2 + 14);
      *&v52 = v4;
      *(&v52 + 1) = v5;
      sub_1D0BA002C(v44, 12);
      v44[0] = &unk_1F4CE0B50;
      v46 = v52;
      v47 = this + 2920;
      v48 = this + 14824;
      v49 = this + 14840;
      v50 = this + 2760;
      v51 = this + 2800;
      if ((v54 & 0x80000000) != 0)
      {
        __assert_rtn("Zeros", "cnmatrix.h", 3098, "nr >= 0");
      }

      v67 = 0x100000003;
      v63 = &unk_1F4CDEB28;
      v11 = v69;
      v68 = v69;
      v64 = v54 | 0x100000000;
      v65 = v54;
      v66 = v54;
      if (v54 > 3)
      {
        v12 = &v69[v54];
        bzero(v69, 16 * ((v54 - 1) >> 1));
        *(v12 - 2) = 0;
        *(v12 - 1) = 0;
      }

      else if (v54)
      {
        bzero(v69, 8 * v54);
      }

      if (*(this + 61736))
      {
        if (*(this + 16918) == 174)
        {
          LOWORD(v71[0]) = 2;
          v70 = 2;
          v39 = v5 + v4;
          cnprint::CNPrinter::Print(v71, &v70, "MeasurementAccumulator::AddMeasurement() failed - Out of space,t_meas,%.3lf", v6, v7, v8, v9, v10, SLOBYTE(v39));
        }

        else if (*(this + 61737) == 1)
        {
          if (cnprint::CNPrinter::GetLogLevel(v11) <= 1)
          {
            LOWORD(v71[0]) = 2;
            v70 = 1;
            v41 = v5 + v4;
            cnprint::CNPrinter::Print(v71, &v70, "MeasurementAccumulator::AddMeasurement() failed - Locked,t_meas,%.3lf", v18, v19, v20, v21, v22, SLOBYTE(v41));
          }
        }

        else
        {
          v23 = sub_1D0B7C8AC(&v52, this + 7718);
          if (!v23)
          {
            v71[0] = 0;
            v71[1] = 0;
            sub_1D0D8626C();
          }

          if (cnprint::CNPrinter::GetLogLevel(v23) <= 1)
          {
            LOWORD(v71[0]) = 2;
            v70 = 1;
            v42 = *(&v52 + 1) + v52;
            v43 = *(this + 7719) + *(this + 7718);
            cnprint::CNPrinter::Print(v71, &v70, "MeasurementAccumulator::AddMeasurement() failed - Measurement too old,t_meas,%.3lf,t_start,%.3lf", v24, v25, v26, v27, v28, SLOBYTE(v42));
          }
        }
      }

      else if (cnprint::CNPrinter::GetLogLevel(v11) <= 1)
      {
        LOWORD(v71[0]) = 2;
        v70 = 1;
        v40 = v5 + v4;
        cnprint::CNPrinter::Print(v71, &v70, "MeasurementAccumulator::AddMeasurement() failed - Not initialized,t_meas,%.3lf", v13, v14, v15, v16, v17, SLOBYTE(v40));
      }

      LOWORD(v71[0]) = 12;
      v70 = 4;
      v63 = (*(*a2 + 16))(a2);
      v64 = v29;
      v30 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, &v63, "Could not add measurement - device velocity");
      if (*(this + 2735) >= 0)
      {
        LOBYTE(v36) = v30;
      }

      else
      {
        v36 = *(this + 339);
      }

      cnprint::CNPrinter::Print(v71, &v70, "%s", v31, v32, v33, v34, v35, v36);
      v44[0] = &unk_1F4CE4300;
      if (v45 < 0)
      {
        operator delete(v44[2]);
      }
    }
  }

  v37 = *MEMORY[0x1E69E9840];
  return 0xFFFFFFFFLL;
}

void sub_1D0D501DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a2)
  {
    sub_1D0C537DC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0D50244(uint64_t a1, uint64_t a2, char **lpsrc, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!lpsrc || (v13 = **lpsrc, (v14 = __dynamic_cast(lpsrc, &unk_1F4CE42A0, &unk_1F4CE0AC0, 0)) == 0))
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
  *v28 = v82[3] + *v27;
  v28[1] = v26[4] + v27[1];
  v28[2] = v26[5] + v27[2];
  v34 = 0x1A00000003;
  v32 = &unk_1F4CE0B08;
  v35 = &v36;
  v33 = xmmword_1D0E84410;
  bzero(&v36, 0x270uLL);
  sub_1D0B894B0(a5, &v32);
  v29 = *(a5 + 20);
  v30 = *(a5 + 32);
  v31 = v45.i64[0];
  *(v30 + 24 * v29) = v44.i64[1];
  *(v30 + 8 * ((4 * v29) | 1)) = v31;
  *(v30 + 40 * v29 + 16) = v45.i64[1];
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

uint64_t sub_1D0D5069C(uint64_t a1)
{
  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

uint64_t raven::RavenPNTEstimator::AddUserVelocityMeasurement(raven::RavenPNTEstimator *this, const raven::VelocityEvent *a2)
{
  v80[4] = *MEMORY[0x1E69E9840];
  if (*(a2 + 280))
  {
    v68 = 0x100000003;
    v67 = xmmword_1D0E7DCC0;
    v66 = &unk_1F4CDEB28;
    v69 = &v70;
    v70 = *(a2 + 18);
    v71 = *(a2 + 38);
    v59 = 0x300000003;
    v58 = xmmword_1D0E76C10;
    v60 = v61;
    v5 = *(a2 + 41);
    v6 = *(a2 + 42);
    v61[0] = *(a2 + 312);
    *(&v4 + 1) = *(&v61[0] + 1);
    *&v4 = v5;
    v61[1] = v4;
    v7 = *(a2 + 344);
    v62 = v6;
    v63 = v7;
    v64 = v5;
    v65 = v7;
    v8 = *(a2 + 13);
    v9 = *(a2 + 14);
    *&v56 = v8;
    *(&v56 + 1) = v9;
    v57 = &unk_1F4CD5DD0;
    sub_1D0BA002C(v48, 27);
    v48[0] = &unk_1F4CE0CD0;
    v50 = v56;
    v51 = this + 2920;
    v52 = this + 14824;
    v53 = this + 14840;
    v54 = this + 2760;
    v55 = this + 2800;
    if ((v58 & 0x80000000) != 0)
    {
      __assert_rtn("Zeros", "cnmatrix.h", 3098, "nr >= 0");
    }

    v76 = 0x100000003;
    v72 = &unk_1F4CDEB28;
    v15 = v78;
    v77 = v78;
    v73 = v58 | 0x100000000;
    v74 = v58;
    v75 = v58;
    if (v58 > 3)
    {
      v16 = &v78[v58];
      bzero(v78, 16 * ((v58 - 1) >> 1));
      *(v16 - 2) = 0;
      *(v16 - 1) = 0;
    }

    else if (v58)
    {
      bzero(v78, 8 * v58);
    }

    if (*(this + 61736))
    {
      if (*(this + 16918) == 174)
      {
        LOWORD(v80[0]) = 2;
        v79 = 2;
        v43 = v9 + v8;
        cnprint::CNPrinter::Print(v80, &v79, "MeasurementAccumulator::AddMeasurement() failed - Out of space,t_meas,%.3lf", v10, v11, v12, v13, v14, SLOBYTE(v43));
      }

      else if (*(this + 61737) == 1)
      {
        if (cnprint::CNPrinter::GetLogLevel(v15) <= 1)
        {
          LOWORD(v80[0]) = 2;
          v79 = 1;
          v45 = v9 + v8;
          cnprint::CNPrinter::Print(v80, &v79, "MeasurementAccumulator::AddMeasurement() failed - Locked,t_meas,%.3lf", v22, v23, v24, v25, v26, SLOBYTE(v45));
        }
      }

      else
      {
        v27 = sub_1D0B7C8AC(&v56, this + 7718);
        if (!v27)
        {
          v80[0] = 0;
          v80[1] = 0;
          sub_1D0D86A58();
        }

        if (cnprint::CNPrinter::GetLogLevel(v27) <= 1)
        {
          LOWORD(v80[0]) = 2;
          v79 = 1;
          v46 = *(&v56 + 1) + v56;
          v47 = *(this + 7719) + *(this + 7718);
          cnprint::CNPrinter::Print(v80, &v79, "MeasurementAccumulator::AddMeasurement() failed - Measurement too old,t_meas,%.3lf,t_start,%.3lf", v28, v29, v30, v31, v32, SLOBYTE(v46));
        }
      }
    }

    else if (cnprint::CNPrinter::GetLogLevel(v15) <= 1)
    {
      LOWORD(v80[0]) = 2;
      v79 = 1;
      v44 = v9 + v8;
      cnprint::CNPrinter::Print(v80, &v79, "MeasurementAccumulator::AddMeasurement() failed - Not initialized,t_meas,%.3lf", v17, v18, v19, v20, v21, SLOBYTE(v44));
    }

    LOWORD(v80[0]) = 12;
    v79 = 4;
    v72 = (*(*a2 + 16))(a2);
    v73 = v33;
    v34 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, &v72, "Could not add measurement - user velocity");
    if (*(this + 2735) >= 0)
    {
      LOBYTE(v40) = v34;
    }

    else
    {
      v40 = *(this + 339);
    }

    cnprint::CNPrinter::Print(v80, &v79, "%s", v35, v36, v37, v38, v39, v40);
    v48[0] = &unk_1F4CE4300;
    if (v49 < 0)
    {
      operator delete(v48[2]);
    }
  }

  v41 = *MEMORY[0x1E69E9840];
  return 0xFFFFFFFFLL;
}

void sub_1D0D50D10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a2)
  {
    sub_1D0C537DC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0D50D78(uint64_t a1, uint64_t a2, char **lpsrc, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!lpsrc || (v13 = **lpsrc, (v14 = __dynamic_cast(lpsrc, &unk_1F4CE42A0, &unk_1F4CE0B68, 0)) == 0))
  {
    LOWORD(v62) = 12;
    v73[0] = 4;
    v27 = MEMORY[0x30] + MEMORY[0x28];
LABEL_23:
    cnprint::CNPrinter::Print(&v62, v73, "time,%.3lf,h-function failure on line %d: %s() %s", a4, a5, a6, a7, a8, SLOBYTE(v27));
    return 0xFFFFFFFFLL;
  }

  v15 = v14;
  if (!*(v14 + 7))
  {
    LOWORD(v62) = 12;
    v73[0] = 4;
    v27 = *(v14 + 6) + *(v14 + 5);
    goto LABEL_23;
  }

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
    LOWORD(v62) = 12;
    v73[0] = 4;
    v27 = *(v14 + 6) + *(v14 + 5);
    goto LABEL_23;
  }

  v98 = *(v14 + 40);
  v22 = *(v14 + 9);
  v97 = **(v14 + 8);
  sub_1D0D96A9C(v96, v22);
  v26 = **(v15 + 10);
  v93 = 0x10000001CLL;
  v92 = xmmword_1D0E843A0;
  v91 = &unk_1F4CE0A20;
  v94 = &v95;
  if (v26)
  {
    if (v26 != 1)
    {
      if (v26 == 2)
      {
        __assert_rtn("h_UserVelocity_RavenPNT", "ravenmeasurementfunctions.h", 7073, "false && Unexpected case RavenPNTEstimatorStateParameterization::ParameterizationCount");
      }

      goto LABEL_38;
    }

    if (!sub_1D0D9046C(&v98, &v97, v96, *(v15 + 7), *(v15 + 11), 1, 1, 1, &v91))
    {
      goto LABEL_38;
    }

    LOWORD(v62) = 12;
    v73[0] = 4;
    v27 = *(v15 + 6) + *(v15 + 5);
    goto LABEL_23;
  }

  *&v73[24] = 0x100000007;
  *&v73[8] = xmmword_1D0E84420;
  *v73 = &unk_1F4CE0BB0;
  *&v74[0] = v74 + 8;
  if (sub_1D0C50CB8(&v98, &v97, v96, 0, v73, v23, v24, v25))
  {
    LOWORD(v62) = 12;
    LOBYTE(v86) = 4;
    v60 = *(v15 + 6) + *(v15 + 5);
    cnprint::CNPrinter::Print(&v62, &v86, "time,%.3lf,h-function failure on line %d: %s() %s", v29, v30, v31, v32, v33, SLOBYTE(v60));
    return 0xFFFFFFFFLL;
  }

  v64 = 0x700000001;
  v62 = &unk_1F4CE23C0;
  v65 = &v66;
  v63 = xmmword_1D0E84430;
  v34 = xmmword_1D0E84440;
  v35 = xmmword_1D0E7DD30;
  v36 = &v67 + 1;
  v37 = 13;
  v38 = vdupq_n_s64(7uLL);
  v39 = vdupq_n_s64(4uLL);
  do
  {
    if (vuzp1_s16(vmovn_s64(vcgtq_u64(v38, v35)), *v34.i8).u8[0])
    {
      *(v36 - 3) = v37 + 8;
    }

    if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(7uLL), *&v35)), *&v34).i8[2])
    {
      *(v36 - 2) = v37 + 9;
    }

    if (vuzp1_s16(*&v34, vmovn_s64(vcgtq_u64(vdupq_n_s64(7uLL), *&v34))).i32[1])
    {
      *(v36 - 1) = v37 + 10;
      *v36 = v37 + 11;
    }

    v34 = vaddq_s64(v34, v39);
    v35 = vaddq_s64(v35, v39);
    v37 += 4;
    v36 += 4;
  }

  while (v37 != 21);
  sub_1D0D772C0(&v86, &v62);
  sub_1D0D867B8(&v62, &v91, &v86);
  sub_1D0D8644C(&v62, *&v73[16], *&v74[0]);
LABEL_38:
  v88 = 0x100000007;
  v87 = xmmword_1D0E84420;
  v86 = &unk_1F4CE0BB0;
  v89 = &v90;
  *v73 = vdupq_n_s64(0x7FF8000000000000uLL);
  *&v73[16] = *v73;
  v74[0] = *v73;
  v74[1] = *v73;
  v74[2] = *v73;
  v74[3] = *v73;
  v74[4] = *v73;
  v74[5] = *v73;
  v74[6] = *v73;
  v74[7] = *v73;
  v74[8] = *v73;
  v74[9] = *v73;
  v74[10] = *v73;
  v74[11] = *v73;
  v74[12] = *v73;
  v74[13] = *v73;
  v74[14] = *v73;
  v74[15] = *v73;
  v74[16] = *v73;
  v74[17] = *v73;
  v74[18] = *v73;
  v74[19] = *v73;
  v74[20] = *v73;
  v74[21] = *v73;
  v74[22] = *v73;
  v75 = *v73;
  v76 = *v73;
  v77 = *v73;
  v78 = *v73;
  v79 = *v73;
  v80 = *v73;
  v81 = *v73;
  v82 = *v73;
  v83 = *v73;
  v84 = *v73;
  v85 = NAN;
  LOBYTE(v62) = 0;
  if (sub_1D0D88874(&v91, a1, v26, &v86, v73, &v62, 0.000000015))
  {
    LOWORD(v62) = 12;
    v99 = 4;
    v61 = *(v15 + 6) + *(v15 + 5);
    cnprint::CNPrinter::Print(&v62, &v99, "time,%.3lf,h-function failure on line %d: %s() %s", v40, v41, v42, v43, v44, SLOBYTE(v61));
    return 0xFFFFFFFFLL;
  }

  *(a4 + 8) = xmmword_1D0E7DCC0;
  v45 = v89[3];
  v46 = v89[4];
  v48 = v89[5];
  v47 = v89[6];
  v49 = *(a2 + 32);
  v50 = *(a4 + 32);
  *v50 = *v49 + v45 * v46;
  v50[1] = v49[1] + v45 * v48;
  v50[2] = v49[2] + v45 * v47;
  v64 = 0x1A00000003;
  v62 = &unk_1F4CE0B08;
  v65 = &v66;
  v63 = xmmword_1D0E84410;
  bzero(&v66, 0x270uLL);
  sub_1D0B894B0(a5, &v62);
  v51 = *(a5 + 20);
  v52 = 3 * v51;
  v53 = *(a5 + 32);
  v54 = (v53 + 48 * v51);
  *v54 = v45 * *(&v76 + 1);
  v55 = (v53 + 56 * v51);
  *v55 = v45 * *&v77;
  v56 = 8 * v51;
  *(v53 + (v51 << 6)) = v45 * *(&v77 + 1);
  v57 = (v53 + 184 * v51);
  *v57 = v45 * *&v78 + v46 * *&v75;
  *(v53 + 192 * v51) = v45 * *(&v78 + 1) + v46 * *(&v75 + 1);
  v58 = (v53 + 200 * v51);
  *v58 = v45 * *&v79 + v46 * *&v76;
  *(v53 + 8 * ((2 * v52) | 1)) = v45 * *(&v79 + 1);
  v55[1] = v45 * *&v80;
  v59 = v53 + 8 * v56;
  *(v59 + 8) = v45 * *(&v80 + 1);
  v57[1] = v45 * *&v81 + v48 * *&v75;
  *(v53 + 8 * ((8 * v52) | 1)) = v45 * *(&v81 + 1) + v48 * *(&v75 + 1);
  v58[1] = v45 * *&v82 + v48 * *&v76;
  v54[2] = v45 * *(&v82 + 1);
  v55[2] = v45 * *&v83;
  *(v59 + 16) = v45 * *(&v83 + 1);
  v57[2] = v45 * *&v84 + v47 * *&v75;
  *(v53 + 8 * ((8 * v52) | 2)) = v45 * *(&v84 + 1) + v47 * *(&v75 + 1);
  v58[2] = v45 * v85 + v47 * *&v76;
  v64 = 0x300000003;
  v62 = &unk_1F4CD5DD0;
  v63 = xmmword_1D0E76C10;
  v68 = 0;
  v67 = 0u;
  v70 = 0u;
  v65 = &v66;
  v66 = 0x3FF0000000000000;
  v69 = 0x3FF0000000000000;
  v71 = 0;
  v72 = 0x3FF0000000000000;
  sub_1D0B894B0(a6, &v62);
  return 0;
}

uint64_t sub_1D0D515B0(uint64_t a1)
{
  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

uint64_t raven::RavenPNTEstimator::AdjustClockOffset(uint64_t a1, uint64_t a2, double a3)
{
  if (*(a1 + 58) != 1)
  {
    return 1;
  }

  v28 = v3;
  v29 = v4;
  if ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    v14 = a3 * 1000000.0;
    v15 = *(a1 + 14872);
    v16 = v14 + *(v15 + 152);
    *(v15 + 152) = v16;
    v25 = 12;
    v24 = 2;
    v17 = cnprint::CNLogFormatter::FormatGeneral(a1 + 2712, a2, "adjusted clock offset by %.3lf us to %.3lf us", v14, v16);
    if (*(a1 + 2735) >= 0)
    {
      LOBYTE(v23) = v17;
    }

    else
    {
      v23 = *(a1 + 2712);
    }

    cnprint::CNPrinter::Print(&v25, &v24, "%s", v18, v19, v20, v21, v22, v23);
    return 1;
  }

  else
  {
    v27 = 12;
    v26 = 4;
    v6 = cnprint::CNLogFormatter::FormatGeneral(a1 + 2712, a2, "invalid clock correction %.3lf s", a3);
    if (*(a1 + 2735) >= 0)
    {
      LOBYTE(v12) = v6;
    }

    else
    {
      v12 = *(a1 + 2712);
    }

    cnprint::CNPrinter::Print(&v27, &v26, "%s", v7, v8, v9, v10, v11, v12);
    return 0;
  }
}

uint64_t raven::RavenPNTEstimator::Configure(raven::RavenPNTEstimator *this, uint64_t *a2, int8x16_t a3, int8x16_t a4)
{
  if (*(this + 57) == 1)
  {
    LOWORD(__p) = 12;
    LOBYTE(v34) = 2;
    v5 = cnprint::CNLogFormatter::FormatWarning((this + 2712), "Configure() called more than once");
LABEL_16:
    if (*(this + 2735) >= 0)
    {
      LOBYTE(v28) = v5;
    }

    else
    {
      v28 = *(this + 339);
    }

    cnprint::CNPrinter::Print(&__p, &v34, "%s", v6, v7, v8, v9, v10, v28);
    return 0xFFFFFFFFLL;
  }

  v11 = *a2;
  if (!*a2)
  {
    LOWORD(__p) = 12;
    LOBYTE(v34) = 4;
    v5 = cnprint::CNLogFormatter::FormatGeneral(this + 339, "Configure() called with null raven parameters");
    goto LABEL_16;
  }

  if ((*(v11 + 33) & 1) == 0)
  {
    LOWORD(__p) = 12;
    LOBYTE(v34) = 4;
    v5 = cnprint::CNLogFormatter::FormatGeneral(this + 339, "Configure() called with uninitialized raven parameters");
    goto LABEL_16;
  }

  v12 = raven::RavenPNTEstimator::UseHighAccelerationParameters(this, a3, a4);
  *(this + 351) = this + 28040;
  *(this + 350) = this + 44888;
  *(this + 352) = this + 25304;
  *(this + 354) = *(v11 + 664);
  v13 = 672;
  if (v12)
  {
    v13 = 680;
  }

  *(this + 353) = *(v11 + v13);
  v14 = 688;
  if (v12)
  {
    v14 = 696;
  }

  *(this + 355) = *(v11 + v14);
  *(this + 180) = 0u;
  *(this + 179) = 0u;
  *(this + 178) = 0u;
  __asm { FMOV            V0.2D, #1.0 }

  *(this + 181) = _Q0;
  *(this + 364) = 0x3FF0000000000000;
  v48 = 0x100000013;
  v45 = &unk_1F4CE40B8;
  v46 = 0;
  v47 = 0;
  v49 = v50;
  v50[22] = 0x100000013;
  v50[19] = &unk_1F4CE40B8;
  v50[20] = 0;
  v50[21] = 0;
  v50[23] = v51;
  v51[152] = 1;
  __p = 0xF00000013;
  __p_8[0] = sub_1D0D522D0;
  v20 = *(v11 + 1248);
  __p_8[1] = 0x400000004;
  v42 = v20;
  v43 = *&v20;
  v44 = 0;
  v52 = v20 * 0.5;
  if (!sub_1D0D53D5C(this + 2920, &__p))
  {
    *(this + 7620) = 1;
    *(this + 1894) = 0x100000000;
    *(this + 7592) = 257;
    *(this + 1899) = *(v11 + 912);
    *(this + 1902) = *(v11 + 920);
    *(this + 1061) = *(this + 952);
    *(this + 1057) = *(this + 948);
    *(this + 1056) = *(this + 947);
    *(this + 2124) = *(this + 1906);
    v30 = *(this + 950);
    *(this + 1059) = v30;
    v31 = *(this + 949);
    *(this + 1058) = v31;
    v32 = *(this + 951);
    *(this + 1060) = v32;
    *(this + 2056) = *(this + 1904);
    *(this + 1027) = v32;
    *(this + 1026) = v30;
    *(this + 1025) = v31;
    v33 = *(this + 947);
    *(this + 1024) = *(this + 948);
    *(this + 1023) = v33;
    *(this + 16360) = 0;
    v36 = 0x10000001ALL;
    v34 = &unk_1F4CE3E48;
    v37 = v38;
    v35 = xmmword_1D0E843B0;
    memset(v38, 0, sizeof(v38));
    sub_1D0D96660(&__p, &v34);
    *__p_8 = xmmword_1D0E843B0;
    sub_1D0B894B0(this + 15264, &__p);
    sub_1D0D87C2C(&__p, 26, 26);
  }

  LOWORD(v34) = 12;
  v39 = 4;
  v21 = cnprint::CNLogFormatter::FormatGeneral(this + 339, "Configure() failed to initialize full state dynamics integrator");
  if (*(this + 2735) >= 0)
  {
    LOBYTE(v27) = v21;
  }

  else
  {
    v27 = *(this + 339);
  }

  cnprint::CNPrinter::Print(&v34, &v39, "%s", v22, v23, v24, v25, v26, v27);
  return 0xFFFFFFFFLL;
}

void sub_1D0D52124(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *__p, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  if (a50 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL raven::RavenPNTEstimator::UseHighAccelerationParameters(raven::RavenPNTEstimator *this, int8x16_t a2, int8x16_t a3)
{
  v3 = *(this + 146);
  if (!v3)
  {
    return 1;
  }

  a2.i64[0] = *(v3 + 848);
  v14 = 0;
  v15 = 0.0;
  *v5.i64 = CNTimeSpan::SetTimeSpan(&v14, 0, a2, a3);
  v7 = CNTimeSpan::operator-(this + 10, this + 8, v5, v6);
  if (!v7 && (*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_7;
  }

  if (!v14)
  {
    v9 = v15;
    if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
LABEL_8:
      if (v9 >= v8)
      {
        return 1;
      }

      goto LABEL_12;
    }
  }

  if (v7 == v14)
  {
LABEL_7:
    v9 = v15;
    goto LABEL_8;
  }

  if (v7 < v14)
  {
    return 1;
  }

LABEL_12:
  if (*(this + 1208) != 1)
  {
    return 1;
  }

  v11 = *(this + 1320);
  if (v11 < 8 && ((0xDFu >> v11) & 1) != 0)
  {
    return 1;
  }

  if (*(this + 1848) != 1)
  {
    return 1;
  }

  v12 = *(this + 1960);
  return v12 == 3 || v12 == 0;
}

double sub_1D0D5224C(uint64_t a1)
{
  *(a1 + 25) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *&result = 0x100000013;
  *(a1 + 72) = 0x100000013;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = &unk_1F4CE40B8;
  *(a1 + 80) = a1 + 88;
  *(a1 + 264) = 0x100000013;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 240) = &unk_1F4CE40B8;
  *(a1 + 272) = a1 + 280;
  *(a1 + 432) = 1;
  *(a1 + 440) = 0;
  return result;
}

uint64_t sub_1D0D522D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x1EEE9AC00](a1, a2, a3, a4);
  v247[3] = *MEMORY[0x1E69E9840];
  v12 = fabs(*v5);
  v13 = *(v6 + 8);
  v13.i64[1] = *(v7 + 8);
  v14 = vaddvq_s32(vbicq_s8(xmmword_1D0E84470, vceqq_s32(v13, xmmword_1D0E84460))) & 0xF;
  if (fmin(fabs(v12 + -1.0), v12) >= 2.22044605e-16 || v14 != 0)
  {
    goto LABEL_26;
  }

  v16 = v11;
  v17 = v10;
  v18 = v9;
  v19 = v8;
  v20 = v7;
  v21 = v6;
  v22 = v5;
  v23 = v4;
  v242[0] = &unk_1F4CEF658;
  v242[1] = 0;
  v243 = vdupq_n_s64(0x7FF8000000000000uLL);
  v242[2] = 0;
  *&v244 = NAN;
  v24 = (*(**v8 + 48))(*v8, v4, v242);
  if (v24)
  {
    if (cnprint::CNPrinter::GetLogLevel(v24) <= 1)
    {
      LOWORD(v179) = 12;
      v178[0] = 1;
      v92 = *(v23 + 8) + *v23;
      cnprint::CNPrinter::Print(&v179, v178, "dyn_SixDOF, Could not get rategyro measurement at t, %.3lf", v25, v26, v27, v28, v29, SLOBYTE(v92));
    }

    goto LABEL_26;
  }

  v238[2] = 0;
  v238[0] = &unk_1F4CEF628;
  v238[1] = 0;
  v30 = (*(**(v19 + 1) + 48))(*(v19 + 1), v23, v238);
  if (v30)
  {
    if (cnprint::CNPrinter::GetLogLevel(v30) <= 1)
    {
      LOWORD(v179) = 12;
      v178[0] = 1;
      v93 = *(v23 + 8) + *v23;
      cnprint::CNPrinter::Print(&v179, v178, "dyn_SixDOF, Could not get accelerometer measurement at t, %.3lf", v31, v32, v33, v34, v35, SLOBYTE(v93));
    }

    goto LABEL_26;
  }

  v36 = v19[3];
  if (v36 <= 0.0)
  {
    goto LABEL_26;
  }

  if (v19[4] <= 0.0)
  {
    goto LABEL_26;
  }

  v37 = v19[5];
  if (v37 <= 0.0)
  {
    goto LABEL_26;
  }

  if ((v19[6] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_26;
  }

  if ((v19[7] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_26;
  }

  if ((v19[8] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_26;
  }

  if ((v19[9] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_26;
  }

  if ((v19[10] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_26;
  }

  if ((v19[11] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_26;
  }

  if ((v19[12] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_26;
  }

  v132 = v19[11];
  v133 = v19[12];
  v130 = v19[9];
  v131 = v19[10];
  v128 = v19[7];
  v129 = v19[8];
  v126 = v19[4];
  v127 = v19[6];
  v38 = v19[13];
  if ((*&v38 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_26;
  }

  v125 = v19[14];
  if ((*&v125 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_26;
  }

  v39 = *(v21 + 32);
  v41 = v39[6];
  v40 = v39[7];
  v43 = v39[8];
  v42 = v39[9];
  v44 = sqrt(v40 * v40 + v41 * v41 + v43 * v43 + v42 * v42);
  if (fabs(v44) <= 0.000000015)
  {
    goto LABEL_26;
  }

  v45 = *(v19 + 2);
  v46 = *(v39 + 2);
  v47 = *(v39 + 4);
  v113 = v47;
  v114 = *(v39 + 3);
  v112 = *(v39 + 5);
  v115 = v39[10];
  v116 = v39[11];
  v117 = v39[12];
  v118 = v39[13];
  v119 = v39[14];
  v120 = v39[15];
  v121 = v39[16];
  v122 = v39[17];
  v123 = v39[18];
  v110 = *(v39 + 1);
  v111 = *v39;
  *v247 = *v39;
  v247[1] = v110;
  v109 = v46;
  v247[2] = v46;
  if ((*(*v45 + 48))(v45, v247, &v245, v237))
  {
LABEL_26:
    result = 0xFFFFFFFFLL;
    goto LABEL_27;
  }

  v50 = v41 / v44;
  v51 = v40 / v44;
  v52 = v43 / v44;
  v53 = v42 / v44;
  v54 = sqrt(v51 * v51 + v50 * v50 + v52 * v52 + v53 * v53);
  if (fabs(v54) >= 2.22044605e-16)
  {
    v56 = v50 / v54;
    v57 = v51 / v54;
    v58 = v52 / v54;
    v55 = v53 / v54;
  }

  else
  {
    v55 = 1.0;
    v56 = 0.0;
    v57 = 0.0;
    v58 = 0.0;
  }

  v234.f64[0] = v56;
  v234.f64[1] = v57;
  v235 = v58;
  v236 = v55;
  v231 = 0x100000004;
  v230 = xmmword_1D0E7DCE0;
  v229 = &unk_1F4CDEBB8;
  v232 = v233;
  v233[0] = v41 / v44;
  v233[1] = v40 / v44;
  v233[2] = v43 / v44;
  v233[3] = v42 / v44;
  cnrotation::CNRotation::RotationMatrix(&v234, v228);
  sub_1D0C1B708(v228, v227);
  v59 = *(v20 + 32);
  v103 = *v59;
  v104 = v59[1];
  v95 = v59[3];
  v96 = v59[4];
  v107 = v59[7];
  v108 = v59[6];
  v105 = v59[2];
  v106 = v59[8];
  v97 = v59[9];
  v98 = v59[5];
  v99 = v59[10];
  v100 = v59[11];
  v101 = v59[12];
  v102 = v59[13];
  v60 = v59[14];
  v181 = 0x300000001;
  v179 = &unk_1F4CDF0C8;
  v182 = v183;
  v180 = xmmword_1D0E7F310;
  *&v183[0] = 0x100000000;
  DWORD2(v183[0]) = 2;
  sub_1D0D2CF48(&v179, v226);
  v181 = 0x300000001;
  v179 = &unk_1F4CDF0C8;
  v182 = v183;
  v180 = xmmword_1D0E7F310;
  *&v183[0] = 0x400000003;
  DWORD2(v183[0]) = 5;
  sub_1D0D2CF48(&v179, v225);
  v181 = 0x400000001;
  v179 = &unk_1F4CE0CF8;
  v182 = v183;
  v180 = xmmword_1D0E84480;
  v183[0] = xmmword_1D0E84490;
  sub_1D0D86C38(v224, &v179);
  v181 = 0x300000001;
  v179 = &unk_1F4CDF0C8;
  v182 = v183;
  v180 = xmmword_1D0E7F310;
  *&v183[0] = 0xB0000000ALL;
  DWORD2(v183[0]) = 12;
  sub_1D0D2CF48(&v179, v223);
  v181 = 0x300000001;
  v179 = &unk_1F4CDF0C8;
  v182 = v183;
  v180 = xmmword_1D0E7F310;
  *&v183[0] = 0xE0000000DLL;
  DWORD2(v183[0]) = 15;
  sub_1D0D2CF48(&v179, v222);
  v181 = 0x300000001;
  v179 = &unk_1F4CDF0C8;
  v182 = v183;
  v180 = xmmword_1D0E7F310;
  *&v183[0] = 0x1100000010;
  DWORD2(v183[0]) = 18;
  sub_1D0D2CF48(&v179, v221);
  v181 = 0x300000001;
  v179 = &unk_1F4CDF0C8;
  v182 = v183;
  v180 = xmmword_1D0E7F310;
  *&v183[0] = 0x100000000;
  DWORD2(v183[0]) = 2;
  sub_1D0D2CF48(&v179, v220);
  v181 = 0x300000001;
  v179 = &unk_1F4CDF0C8;
  v182 = v183;
  v180 = xmmword_1D0E7F310;
  *&v183[0] = 0x400000003;
  DWORD2(v183[0]) = 5;
  sub_1D0D2CF48(&v179, v219);
  v181 = 0x300000001;
  v179 = &unk_1F4CDF0C8;
  v182 = v183;
  v180 = xmmword_1D0E7F310;
  *&v183[0] = 0x700000006;
  DWORD2(v183[0]) = 8;
  sub_1D0D2CF48(&v179, v218);
  v181 = 0x300000001;
  v179 = &unk_1F4CDF0C8;
  v182 = v183;
  v180 = xmmword_1D0E7F310;
  *&v183[0] = 0xA00000009;
  DWORD2(v183[0]) = 11;
  sub_1D0D2CF48(&v179, v217);
  v181 = 0x300000001;
  v179 = &unk_1F4CDF0C8;
  v182 = v183;
  v180 = xmmword_1D0E7F310;
  *&v183[0] = 0xD0000000CLL;
  DWORD2(v183[0]) = 14;
  sub_1D0D2CF48(&v179, v216);
  v94 = v243;
  v124 = *&v244;
  v61 = v239;
  v62 = v240;
  v63 = v241;
  sub_1D0D86CE4(v214);
  v64 = v215;
  *v215 = v114;
  *(v64 + 8) = v113;
  *(v64 + 16) = v112;
  v211 = 0x100000003;
  v210 = xmmword_1D0E7DCC0;
  v209 = &unk_1F4CDEB28;
  v212 = v213;
  v213[0] = -(v118 - v121 * v61) - v108;
  v213[1] = -(v119 - v122 * v62) - v107;
  v213[2] = -(v120 - v123 * v63) - v106;
  v205 = 0x100000003;
  v204 = xmmword_1D0E7DCC0;
  v203 = &unk_1F4CDEB28;
  v206 = &v207;
  v207 = v245;
  v208 = v246;
  v200 = 0x100000003;
  v199 = xmmword_1D0E7DCC0;
  v198 = &unk_1F4CDEB28;
  v201 = v202;
  *v202 = v111;
  v202[1] = v110;
  v202[2] = v109;
  v195 = 0x100000003;
  v194 = xmmword_1D0E7DCC0;
  v193 = &unk_1F4CDEB28;
  v196 = v197;
  v197[0] = v114;
  v197[1] = v113;
  v197[2] = v112;
  sub_1D0C51578(3, 1, v192);
  *(v192[4] + 16) = 0x3F131DA7D7CB8D5BLL;
  sub_1D0D5625C(v227, &v209, v158);
  sub_1D0D6F584(v158, &v203, v134);
  sub_1D0D562E0(v192, &v198, v156);
  sub_1D0D562E0(v192, v156, v157);
  sub_1D0C4E2D8(v134, v157, v142);
  sub_1D0D562E0(v192, &v193, v139);
  v65.f64[0] = 2.0;
  sub_1D0C51FB4(v139, v155, v65);
  sub_1D0C4E2D8(v142, v155, v178);
  sub_1D0BFA8EC(&v179, v214, v225);
  sub_1D0BFB134(&v179, v178);
  v189 = 0x100000003;
  v188 = xmmword_1D0E7DCC0;
  v187 = &unk_1F4CDEB28;
  v190 = v191;
  v191[0] = *v94.i64 - v115 - v103;
  v191[1] = *&v94.i64[1] - v116 - v104;
  v191[2] = v124 - v117 - v105;
  sub_1D0D5625C(v228, v192, &v179);
  sub_1D0C4E2D8(&v187, &v179, &v185);
  cnrotation::CNRotation::RotationDerivativeQuaternion(&v234, *v186, v186[1], v186[2], v184);
  v66 = v215;
  v67 = v184[1];
  *(v215 + 48) = v184[0];
  *(v66 + 64) = v67;
  *&v67 = -*v22;
  v68 = *&v67 / v36;
  v69 = *&v67 / v126;
  *(v66 + 80) = v95 + v68 * (v115 - v127);
  *(v66 + 88) = v96 + v68 * (v116 - v128);
  *(v66 + 96) = v98 + v68 * (v117 - v129);
  *(v66 + 104) = v97 + *&v67 / v126 * (v118 - v130);
  *(v66 + 112) = v99 + *&v67 / v126 * (v119 - v131);
  *(v66 + 120) = v100 + *&v67 / v126 * (v120 - v132);
  v70 = *&v67 / v37;
  *(v66 + 128) = v101 + v70 * (v121 - v133);
  *(v66 + 136) = v102 + v70 * (v122 - v38);
  *(v66 + 144) = v60 + v70 * (v123 - v125);
  sub_1D0B894B0(v18, v214);
  sub_1D0D86D28(&v179);
  sub_1D0D86D68(v178);
  v71 = HIDWORD(v180);
  v72 = v182;
  *(v182 + 3 * HIDWORD(v180)) = 0x3FF0000000000000;
  *(v72 + ((4 * v71) | 1)) = 0x3FF0000000000000;
  *(v72 + 5 * v71 + 2) = 0x3FF0000000000000;
  v175 = 0x300000003;
  v174 = xmmword_1D0E76C10;
  v177[0] = v237[0];
  v177[1] = v237[3];
  v177[6] = v237[2];
  v177[7] = v237[5];
  v177[3] = v237[1];
  v177[2] = v237[6];
  v173 = &unk_1F4CD5DD0;
  v176 = v177;
  v177[4] = v237[4];
  v177[5] = v237[7];
  v177[8] = v237[8];
  sub_1D0C517F8(3, v170);
  v73 = v172;
  *v172 = 0xBE36D6A597D265B0;
  v73[v171 + 1] = 0xBE36D6A597D265B0;
  sub_1D0D86DAC(&v173, v170, v134);
  sub_1D0BADC74(v142, &v179, v225, v226);
  sub_1D0D2CFF0(v142, v134);
  sub_1D0C517F8(3, v167);
  v74 = v169;
  *(v169 + 8 * v168) = 0xBF231DA7D7CB8D5BLL;
  *(v74 + 8) = 0x3F231DA7D7CB8D5BLL;
  sub_1D0D7B9D8(v167, v134);
  sub_1D0BADC74(v142, &v179, v225, v225);
  sub_1D0D2CFF0(v142, v134);
  cnrotation::CNRotation::dRdq1(&v234, v142);
  sub_1D0C1B708(v142, v166);
  cnrotation::CNRotation::dRdq2(&v234, v142);
  sub_1D0C1B708(v142, v165);
  cnrotation::CNRotation::dRdq3(&v234, v142);
  sub_1D0C1B708(v142, v164);
  cnrotation::CNRotation::dRdq4(&v234, v142);
  sub_1D0C1B708(v142, v163);
  sub_1D0D5625C(v166, &v209, v134);
  sub_1D0D7B88C(v142, &v179, v225, 6);
  sub_1D0D2D13C(v142, v134);
  sub_1D0D5625C(v165, &v209, v134);
  sub_1D0D7B88C(v142, &v179, v225, 7);
  sub_1D0D2D13C(v142, v134);
  sub_1D0D5625C(v164, &v209, v134);
  sub_1D0D7B88C(v142, &v179, v225, 8);
  sub_1D0D2D13C(v142, v134);
  sub_1D0D5625C(v163, &v209, v134);
  sub_1D0D7B88C(v142, &v179, v225, 9);
  sub_1D0D2D13C(v142, v134);
  sub_1D0D7B8EC(3u, 3u, v142);
  sub_1D0D7B9D8(v142, v162);
  sub_1D0C1B688(v227, v162, v134);
  sub_1D0BADC74(v142, &v179, v225, v222);
  sub_1D0D2CFF0(v142, v134);
  sub_1D0D7B8EC(3u, 3u, v159);
  v75 = v161;
  *v161 = v239;
  v76 = v160;
  *&v75[v160 + 1] = v240;
  *&v75[2 * v76 + 2] = v241;
  sub_1D0C1B688(v227, v159, v134);
  sub_1D0BADC74(v142, &v179, v225, v221);
  sub_1D0D2CFF0(v142, v134);
  v77.f64[0] = *v186;
  cnrotation::CNRotation::Q(v77, v186[1], v186[2], v158);
  cnrotation::CNRotation::dQdwx(v157);
  cnrotation::CNRotation::dQdwy(v156);
  cnrotation::CNRotation::dQdwz(v155);
  sub_1D0C1B708(v166, v154);
  sub_1D0C1B708(v165, v153);
  sub_1D0C1B708(v164, v152);
  sub_1D0C1B708(v163, v151);
  sub_1D0D7B9D8(v154, v142);
  sub_1D0D5625C(v142, v192, v149);
  sub_1D0D7B9D8(v153, v142);
  sub_1D0D5625C(v142, v192, v147);
  sub_1D0D7B9D8(v152, v142);
  sub_1D0D5625C(v142, v192, v145);
  sub_1D0D7B9D8(v151, v142);
  sub_1D0D5625C(v142, v192, v143);
  sub_1D0D87694(v142, &v179, v224, v224);
  sub_1D0D86DEC(v142, v158);
  sub_1D0D86FC4(v142, &v179, v224, 6);
  v78.f64[0] = *v150;
  sub_1D0D87128(v137, v157, v78);
  v79.f64[0] = v150[1];
  sub_1D0D87128(v136, v156, v79);
  sub_1D0D870A8(v137, v136, v138);
  v80.f64[0] = v150[2];
  sub_1D0D87128(v135, v155, v80);
  sub_1D0D870A8(v138, v135, v139);
  sub_1D0D87024(v139, &v229, v140);
  sub_1D0D86F38(v141, v142, v140);
  sub_1D0D86FC4(v134, &v179, v224, 6);
  sub_1D0D87170(v134, v141);
  sub_1D0D86FC4(v142, &v179, v224, 7);
  v81.f64[0] = *v148;
  sub_1D0D87128(v137, v157, v81);
  v82.f64[0] = v148[1];
  sub_1D0D87128(v136, v156, v82);
  sub_1D0D870A8(v137, v136, v138);
  v83.f64[0] = v148[2];
  sub_1D0D87128(v135, v155, v83);
  sub_1D0D870A8(v138, v135, v139);
  sub_1D0D87024(v139, &v229, v140);
  sub_1D0D86F38(v141, v142, v140);
  sub_1D0D86FC4(v134, &v179, v224, 7);
  sub_1D0D87170(v134, v141);
  sub_1D0D86FC4(v142, &v179, v224, 8);
  v84.f64[0] = *v146;
  sub_1D0D87128(v137, v157, v84);
  v85.f64[0] = v146[1];
  sub_1D0D87128(v136, v156, v85);
  sub_1D0D870A8(v137, v136, v138);
  v86.f64[0] = v146[2];
  sub_1D0D87128(v135, v155, v86);
  sub_1D0D870A8(v138, v135, v139);
  sub_1D0D87024(v139, &v229, v140);
  sub_1D0D86F38(v141, v142, v140);
  sub_1D0D86FC4(v134, &v179, v224, 8);
  sub_1D0D87170(v134, v141);
  sub_1D0D86FC4(v142, &v179, v224, 9);
  v87.f64[0] = *v144;
  sub_1D0D87128(v137, v157, v87);
  v88.f64[0] = v144[1];
  sub_1D0D87128(v136, v156, v88);
  sub_1D0D870A8(v137, v136, v138);
  v89.f64[0] = v144[2];
  sub_1D0D87128(v135, v155, v89);
  sub_1D0D870A8(v138, v135, v139);
  sub_1D0D87024(v139, &v229, v140);
  sub_1D0D86F38(v141, v142, v140);
  sub_1D0D86FC4(v134, &v179, v224, 9);
  sub_1D0D87170(v134, v141);
  sub_1D0D872BC(v134, v157);
  sub_1D0D87024(v134, &v229, v139);
  sub_1D0D86FC4(v142, &v179, v224, 10);
  sub_1D0D87170(v142, v139);
  sub_1D0D872BC(v134, v156);
  sub_1D0D87024(v134, &v229, v139);
  sub_1D0D86FC4(v142, &v179, v224, 11);
  sub_1D0D87170(v142, v139);
  sub_1D0D872BC(v134, v155);
  sub_1D0D87024(v134, &v229, v139);
  sub_1D0D86FC4(v142, &v179, v224, 12);
  sub_1D0D87170(v142, v139);
  v90 = SHIDWORD(v180);
  v91 = v182;
  *&v182[5 * HIDWORD(v180) + 5] = v68;
  v91[11 * v90 + 11] = v68;
  v91[12 * v90 + 12] = v68;
  v91[13 * v90 + 13] = v69;
  v91[14 * v90 + 14] = v69;
  v91[15 * v90 + 15] = v69;
  v91[16 * v90 + 16] = v70;
  v91[17 * v90 + 17] = v70;
  v91[18 * v90 + 18] = v70;
  sub_1D0B894B0(v17, &v179);
  sub_1D0D87A40(v142, &v179, v224, v223);
  sub_1D0D87A40(v134, v178, v224, v220);
  sub_1D0D87304(v134, v142);
  sub_1D0D7B8EC(3u, 3u, v134);
  sub_1D0BADC74(v142, v178, v223, v219);
  sub_1D0D2CFF0(v142, v134);
  sub_1D0BADC74(v142, &v179, v225, v222);
  sub_1D0BADC74(v134, v178, v225, v218);
  sub_1D0D87450(v134, v142);
  sub_1D0D7B8EC(3u, 3u, v134);
  sub_1D0BADC74(v142, v178, v222, v217);
  sub_1D0D2CFF0(v142, v134);
  sub_1D0D7B8EC(3u, 3u, v134);
  sub_1D0BADC74(v142, v178, v221, v216);
  sub_1D0D2CFF0(v142, v134);
  sub_1D0B894B0(v16, v178);
  result = 0;
LABEL_27:
  v49 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D0D53D5C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 440);
  v3 = v2 & 0x7FFFFFFFFFFFFFFFLL;
  v4 = (v2 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
  v5 = v2 < 0;
  v6 = v2 < 0 && ((v2 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
  if (!v5)
  {
    v4 = 0;
  }

  v7 = v3 <= 0x7FF0000000000000;
  v8 = v3 == 0x7FF0000000000000 || v4;
  if (!v7)
  {
    v8 = 1;
  }

  if ((v8 | v6))
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 5944) = *(a2 + 440);
  if (*(a2 + 16) != 4 || *(a2 + 20) != 4 || (*(a2 + 40) & 1) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return sub_1D0D7F694(a1, a2);
  }
}

uint64_t sub_1D0D53DE0(uint64_t a1)
{
  *(a1 + 24) = 0x10000001ALL;
  *a1 = &unk_1F4CE3E48;
  *(a1 + 32) = a1 + 40;
  *(a1 + 8) = xmmword_1D0E843B0;
  return sub_1D0BBBC00(a1, 0.0);
}

uint64_t sub_1D0D53E44(uint64_t a1, char *__filename)
{
  *(a1 + 8) = 0;
  v3 = fopen(__filename, "r");
  if (!v3)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = v3;
  *(a1 + 8) = 1;
  v5 = -504;
  v6 = 40;
  while (fscanf(v4, "%u %u %lg %lg %lg %lg\n", a1 + v6, a1 + v6 + 252, a1 + v5 + 1048, a1 + v5 + 1552, a1 + v5 + 2056, a1 + v5 + 2560) == 6)
  {
    v6 += 4;
    v5 += 8;
    if (!v5)
    {
      v7 = 0;
      goto LABEL_8;
    }
  }

  *(a1 + 8) = 0;
  v7 = 0xFFFFFFFFLL;
LABEL_8:
  fclose(v4);
  return v7;
}

uint64_t sub_1D0D53F20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = 0;
  v8 = 2;
  v9 = 3;
  while (2)
  {
    v10 = 0;
    v11 = v7;
    if (v7 >= 0x3F)
    {
      v12 = 63;
    }

    else
    {
      v12 = v7;
    }

    v13 = -v12;
    v14 = (a1 + 1048 + 8 * v7);
    v15 = v13 + 63;
    v16 = a1 + 8 * v7;
    v17 = (a1 + 292 + 4 * v7);
    v18 = a7 + 8 * v7;
    v19 = a6 + 8 * v7;
    v20 = a5 + 8 * v7;
    v21 = a4 + 8 * v7;
    v22 = a3 + 4 * v7;
    v23 = a2 + 4 * v7;
    do
    {
      if (v15 == v10)
      {
        return 0xFFFFFFFFLL;
      }

      if (*(v23 + 4 * v10) != v8)
      {
        return 0xFFFFFFFFLL;
      }

      if (v10 != *(v22 + 4 * v10))
      {
        return 0xFFFFFFFFLL;
      }

      v24 = *(v21 + 8 * v10);
      if ((v24 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*(v20 + 8 * v10) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*(v19 + 8 * v10) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        return 0xFFFFFFFFLL;
      }

      v25 = 0xFFFFFFFFLL;
      if ((*(v18 + 8 * v10) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || *(v19 + 8 * v10) < 0.0 || *(v18 + 8 * v10) < 0.0)
      {
        return v25;
      }

      *(v17 - 63) = v8;
      *(v16 + 8 * v10 + 544) = v24;
      v26 = *(v22 + 4 * v10);
      *v14 = *(v20 + 8 * v10);
      v14[63] = *(v19 + 8 * v10);
      v27 = *(v18 + 8 * v10);
      *v17++ = v26;
      v14[126] = v27;
      ++v10;
      ++v14;
    }

    while (v9 != v10);
    v7 = v11 + v10;
    ++v8;
    if (++v9 != 12)
    {
      continue;
    }

    break;
  }

  v25 = 0;
  *(a1 + 8) = 1;
  return v25;
}

__n128 sub_1D0D54090(uint64_t a1, double *a2)
{
  v5[0] = 0.0;
  v5[1] = 0.0;
  if (!sub_1D0B7C8AC(a2, v5))
  {
    result = *a2;
    *(a1 + 16) = *a2;
  }

  return result;
}

__n128 sub_1D0D540E4(uint64_t a1, double *a2)
{
  v5[0] = 0.0;
  v5[1] = 0.0;
  if (!sub_1D0B7C8AC(a2, v5))
  {
    result = *a2;
    *(a1 + 16) = *a2;
  }

  return result;
}

uint64_t sub_1D0D54164(uint64_t a1, double *a2, uint64_t a3, double a4, int8x16_t a5)
{
  v5 = *(a1 + 8);
  if (!v5)
  {
    return 0xFFFFFFFFLL;
  }

  if (v5 == 1)
  {
    v9 = a1 + 48 * *(a1 + 40);
    v122 = *(v9 + 56);
    v123 = *(v9 + 72);
    v10 = *(v9 + 88);
    v121 = &unk_1F4CEF628;
    v124 = v10;
    *v117 = v122;
    v11 = CNTimeSpan::operator-(v117, a2, v122, a5);
    v120.i64[0] = v11;
    *&v120.i64[1] = v12;
    if (v11 < 0 || (*v13.i64 = v12, v12 < 0.0))
    {
      v11 = CNTimeSpan::operator-(v120.i64, v13, v14);
    }

    v113[0] = v11;
    *&v113[1] = v12;
    if (!sub_1D0B7CF88(v113, (a1 + 16)))
    {
      result = 0;
      *(a3 + 8) = v122;
      *(a3 + 24) = v123;
      *(a3 + 40) = v124;
      return result;
    }

    return 0xFFFFFFFFLL;
  }

  v16 = a1 + 48;
  v17 = a1 + 48 + 48 * *(a1 + 40);
  v121 = (*(*v17 + 16))(v17);
  v122.i64[0] = v18;
  v21 = CNTimeSpan::operator-(a2, &v121, v19, v20);
  v23.i64[0] = *(a1 + 32);
  v24 = llround(*v23.i64 * (v22 + v21));
  v25 = v24 & ~(v24 >> 31);
  v26 = *(a1 + 8);
  v27 = v26 - 1;
  if (v25 < v26 - 1)
  {
    v27 = v25;
  }

  v28 = *(a1 + 40);
  v29 = (v27 + v28) % 0x15E;
  v30 = v16 + 48 * v29;
  v122 = *(v30 + 8);
  v123 = *(v30 + 24);
  v31 = *(v30 + 40);
  v121 = &unk_1F4CEF628;
  v124 = v31;
  *&v117[8] = 0;
  *&v117[16] = 0;
  *v117 = &unk_1F4CEF628;
  v109 = a3;
  if (v29 == v28)
  {
    v32 = (v28 + 1) % v26;
    goto LABEL_20;
  }

  if (v29 == *(a1 + 44))
  {
    if (v29)
    {
      v26 = v29;
    }

LABEL_19:
    v32 = v26 - 1;
    goto LABEL_20;
  }

  *v113 = v122;
  if (sub_1D0B7CF88(v113, a2) || v29 == *(a1 + 44))
  {
    v26 = v29;
    if (!v29)
    {
      v26 = *(a1 + 8);
    }

    goto LABEL_19;
  }

  v32 = (v29 + 1) % *(a1 + 8);
LABEL_20:
  v110 = a1 + 48;
  v106 = v32;
  v33 = v16 + 48 * v32;
  *&v117[8] = *(v33 + 8);
  v118 = *(v33 + 24);
  v119 = *(v33 + 40);
  v120 = v122;
  v116 = *&v117[8];
  v34 = CNTimeSpan::operator-(a2, &v120, *&v117[8], v23);
  v36 = v35;
  v115.i64[0] = v34;
  *&v115.i64[1] = v35;
  v37 = a2;
  v40 = CNTimeSpan::operator-(a2, &v116, v38, v39);
  v44 = v40;
  v45 = v36;
  v47 = v36 < 0.0 || v34 < 0;
  v114.i64[0] = v40;
  *&v114.i64[1] = v41;
  v48 = v41;
  v49 = v34;
  v50 = v45;
  if (v47)
  {
    v49 = CNTimeSpan::operator-(v115.i64, v42, v43);
    v50 = v51;
  }

  v53 = v48 < 0.0 || v44 < 0;
  v111 = v44;
  v54 = v48;
  if (v53)
  {
    v111 = CNTimeSpan::operator-(v114.i64, v42, v43);
    v54 = v55;
  }

  v56 = v34;
  v57 = v45;
  if (v47)
  {
    v56 = CNTimeSpan::operator-(v115.i64, v42, v43);
    v57 = v58;
  }

  v59 = v44;
  *v42.i64 = v48;
  if (v53)
  {
    v59 = CNTimeSpan::operator-(v114.i64, v42, v43);
    v42.i64[0] = v60;
  }

  v61 = v37;
  if (!v56 && (*&v57 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || !v59 && (v42.i64[0] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (v62 = v56 <= v59, v56 == v59))
  {
    v62 = v57 <= *v42.i64;
  }

  if (!v62)
  {
    *&v113[1] = v122;
    v63 = v122;
    *&v113[3] = v123;
    v64 = v123;
    v113[5] = v124;
    v65 = v124;
    v122 = *(v33 + 8);
    v123 = *(v33 + 24);
    v124 = *(v33 + 40);
    v119 = v65;
    v118 = v64;
    *&v117[8] = v63;
    v120 = v122;
    v43 = v114;
    v66 = v115;
    v112 = v115;
    v114 = v115;
    v115 = v43;
    v45 = *&v43.i64[1];
    v34 = v43.i64[0];
    if (v43.i64[0] < 0 || (v50 = *&v43.i64[1], v49 = v43.i64[0], *&v43.i64[1] < 0.0))
    {
      v49 = CNTimeSpan::operator-(v115.i64, v66, v43);
      v50 = v67;
    }

    v48 = *&v114.i64[1];
    v44 = v114.i64[0];
    if (v114.i64[0] < 0 || (v54 = *&v114.i64[1], v111 = v114.i64[0], *&v114.i64[1] < 0.0))
    {
      v111 = CNTimeSpan::operator-(v114.i64, v66, v43);
      v54 = v68;
    }

    v29 = v106;
  }

  if (v29 != *(a1 + 44))
  {
    if (v34)
    {
      if (v34 < 1)
      {
        goto LABEL_55;
      }
    }

    else if (v45 <= 0.0)
    {
      goto LABEL_55;
    }

    if (v44)
    {
      if (v44 < 1)
      {
        goto LABEL_55;
      }
    }

    else if (v48 <= 0.0)
    {
      goto LABEL_55;
    }

    v69 = (v29 + 1) % 0x15E;
    v70 = v120.i64[1];
    v107 = v120.i64[0];
    while (1)
    {
      v71 = v110 + 48 * v69;
      v112.i64[0] = (*(*v71 + 16))(v71);
      v112.i64[1] = v72;
      v75 = CNTimeSpan::operator-(v61, &v112, v73, v74);
      v78 = v75;
      v113[0] = v75;
      *&v113[1] = v76;
      v79 = v76;
      if (v75 < 0 || (*v77.i64 = v76, v76 < 0.0))
      {
        v75 = CNTimeSpan::operator-(v113, v77, v43);
        v77.i64[0] = v80;
      }

      if (!v75 && (v77.i64[0] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        break;
      }

      if ((v49 || (*&v50 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL) && v75 != v49)
      {
        if (v75 < v49)
        {
LABEL_82:
          *&v117[8] = v122;
          v118 = v123;
          v119 = v124;
          v122 = *(v71 + 8);
          v123 = *(v71 + 24);
          v124 = *(v71 + 40);
          v70 = v122.i64[1];
          v107 = v122.i64[0];
          v81 = &v115;
          v111 = v49;
          v43.i64[1] = v115.i64[1];
          v54 = v50;
          v49 = v75;
          v50 = *v77.i64;
          v114 = v115;
          goto LABEL_95;
        }
      }

      else if (*v77.i64 < v50)
      {
        goto LABEL_82;
      }

      if (!v111 && (*&v54 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || v75 == v111)
      {
        goto LABEL_87;
      }

      if (v75 >= v111)
      {
LABEL_88:
        if (v78)
        {
          if ((v78 & 0x8000000000000000) == 0)
          {
            goto LABEL_99;
          }
        }

        else if (v79 >= 0.0)
        {
          goto LABEL_99;
        }
      }

LABEL_94:
      *&v117[8] = *(v71 + 8);
      v43 = *(v71 + 24);
      v118 = v43;
      v119 = *(v71 + 40);
      v81 = &v114;
      v111 = v75;
      v54 = *v77.i64;
LABEL_95:
      *v81 = *v113;
      if (v78)
      {
        if (v78 < 0)
        {
          goto LABEL_103;
        }
      }

      else if (v79 < 0.0)
      {
        goto LABEL_103;
      }

LABEL_99:
      if (v69 == 349)
      {
        v69 = 0;
      }

      else
      {
        ++v69;
      }

      if (v69 == *(a1 + 44))
      {
LABEL_103:
        v120.i64[0] = v107;
        v120.i64[1] = v70;
        goto LABEL_146;
      }
    }

    if (*v77.i64 < v50)
    {
      goto LABEL_82;
    }

LABEL_87:
    if (*v77.i64 >= v54)
    {
      goto LABEL_88;
    }

    goto LABEL_94;
  }

LABEL_55:
  if (v29 == *(a1 + 40))
  {
    goto LABEL_146;
  }

  if (v34)
  {
    if ((v34 & 0x8000000000000000) == 0)
    {
      goto LABEL_146;
    }

    goto LABEL_105;
  }

  if ((*&v45 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    if (v45 >= 0.0)
    {
      v94 = 0;
      goto LABEL_147;
    }

LABEL_105:
    if (v44)
    {
      if ((v44 & 0x8000000000000000) == 0)
      {
        goto LABEL_146;
      }
    }

    else if (v48 >= 0.0)
    {
      goto LABEL_146;
    }

    if (v29)
    {
      v82 = v29 - 1;
    }

    else
    {
      v82 = 349;
    }

    v105 = v120.i64[1];
    v108 = v120.i64[0];
    while (1)
    {
      v83 = v110 + 48 * v82;
      v112.i64[0] = (*(*v83 + 16))(v83);
      v112.i64[1] = v84;
      v87 = CNTimeSpan::operator-(v61, &v112, v85, v86);
      v90 = v87;
      v113[0] = v87;
      *&v113[1] = v88;
      v91 = v88;
      if (v87 < 0 || (*v89.i64 = v88, v88 < 0.0))
      {
        v87 = CNTimeSpan::operator-(v113, v89, v43);
        v89.i64[0] = v92;
      }

      if (v87 || (v89.i64[0] & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if ((v49 || (*&v50 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL) && v87 != v49)
        {
          if (v87 >= v49)
          {
LABEL_126:
            if ((v111 || (*&v54 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL) && v87 != v111)
            {
              if (v87 >= v111)
              {
                goto LABEL_130;
              }
            }

            else
            {
LABEL_129:
              if (*v89.i64 >= v54)
              {
LABEL_130:
                if (v90)
                {
                  if (v90 < 1)
                  {
                    goto LABEL_141;
                  }
                }

                else if (v91 <= 0.0)
                {
                  goto LABEL_140;
                }
              }
            }

            *&v117[8] = *(v83 + 8);
            v43 = *(v83 + 24);
            v118 = v43;
            v119 = *(v83 + 40);
            v93 = &v114;
            v111 = v87;
            v54 = *v89.i64;
            goto LABEL_137;
          }
        }

        else if (*v89.i64 >= v50)
        {
          goto LABEL_126;
        }
      }

      else if (*v89.i64 >= v50)
      {
        goto LABEL_129;
      }

      *&v117[8] = v122;
      v118 = v123;
      v119 = v124;
      v122 = *(v83 + 8);
      v123 = *(v83 + 24);
      v124 = *(v83 + 40);
      v105 = v122.i64[1];
      v108 = v122.i64[0];
      v93 = &v115;
      v111 = v49;
      v43.i64[1] = v115.i64[1];
      v54 = v50;
      v49 = v87;
      v50 = *v89.i64;
      v114 = v115;
LABEL_137:
      *v93 = *v113;
      if (!v90)
      {
LABEL_140:
        if (v91 > 0.0)
        {
          goto LABEL_145;
        }

        goto LABEL_141;
      }

      if (v90 > 0)
      {
        goto LABEL_145;
      }

LABEL_141:
      if (v82)
      {
        --v82;
      }

      else
      {
        v82 = 349;
      }

      if (v82 == *(a1 + 44))
      {
LABEL_145:
        v120.i64[0] = v108;
        v120.i64[1] = v105;
        goto LABEL_146;
      }
    }
  }

  if (v45 < 0.0)
  {
    goto LABEL_105;
  }

LABEL_146:
  v45 = *&v115.i64[1];
  v94 = v115.i64[0];
LABEL_147:
  v43.i64[0] = 0x3CB0000000000000;
  if (fabs(v45 + v94) >= 2.22044605e-16)
  {
    if ((*(*v109 + 24))(v109, v61, &v121, v117))
    {
      return 0xFFFFFFFFLL;
    }

    if (v94 < 0 || v45 < 0.0)
    {
      v94 = CNTimeSpan::operator-(v115.i64, v97, v98);
    }

    else
    {
      v99 = v45;
    }

    v113[0] = v94;
    *&v113[1] = v99;
    if (sub_1D0B7CF88(v113, (a1 + 16)))
    {
      return 0xFFFFFFFFLL;
    }

    v103 = v114.i64[0];
    if (v114.i64[0] < 0 || (v101.i64[0] = v114.i64[1], *&v114.i64[1] < 0.0))
    {
      v103 = CNTimeSpan::operator-(v114.i64, v101, v102);
    }

    else
    {
      v104 = v114.i64[1];
    }

    v112.i64[0] = v103;
    v112.i64[1] = v104;
    v100 = &v112;
  }

  else
  {
    *(v109 + 8) = v122;
    v95 = v123;
    *(v109 + 24) = v123;
    *(v109 + 40) = v124;
    if (v94 < 0 || v45 < 0.0)
    {
      v94 = CNTimeSpan::operator-(v115.i64, v95, v43);
    }

    else
    {
      v96 = v45;
    }

    v113[0] = v94;
    *&v113[1] = v96;
    v100 = v113;
  }

  if (!sub_1D0B7CF88(v100, (a1 + 16)))
  {
    return 0;
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_1D0D54C04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 12);
  *(a2 + 24) = 0x400000003;
  *a2 = &unk_1F4CDEC48;
  *(a2 + 8) = v3;
  *(a2 + 12) = v4;
  *(a2 + 16) = v4 * v3;
  *(a2 + 20) = v3;
  *(a2 + 32) = a2 + 40;
  return sub_1D0BD2018(a1, a2);
}

uint64_t sub_1D0D54C8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 24) = 0x300000003;
  *a3 = &unk_1F4CD5DD0;
  *(a3 + 8) = xmmword_1D0E76C10;
  *(a3 + 32) = a3 + 40;
  return sub_1D0B89390(a1, a2, a3);
}

uint64_t sub_1D0D54D0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 24) = 0x400000003;
  *a3 = &unk_1F4CDEC48;
  *(a3 + 8) = xmmword_1D0E7DD10;
  *(a3 + 32) = a3 + 40;
  return sub_1D0B89390(a1, a2, a3);
}

uint64_t sub_1D0D54D90(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v2 = *(a2 + 12);
  *(a1 + 24) = 0x300000004;
  *a1 = &unk_1F4CDEC00;
  *(a1 + 8) = v2;
  *(a1 + 12) = v3;
  *(a1 + 16) = v3 * v2;
  *(a1 + 20) = v2;
  *(a1 + 32) = a1 + 40;
  return sub_1D0BD2018(a2, a1);
}

uint64_t sub_1D0D54E1C(uint64_t a1)
{
  *(a1 + 24) = 0x400000003;
  *a1 = &unk_1F4CDEC48;
  *(a1 + 32) = a1 + 40;
  *(a1 + 8) = xmmword_1D0E7DD10;
  return sub_1D0BBBC00(a1, 0.0);
}

void sub_1D0D54E60()
{
  v3 = 0x10000001ALL;
  v1 = &unk_1F4CE3E48;
  v2 = xmmword_1D0E843B0;
  v4 = &v5;
  sub_1D0D87FCC(v0);
}

void sub_1D0D54F00(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1D0D857FC(v2);
  sub_1D0D857FC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1D0D550B0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 296);
  *a1 = *a2;
  v5 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v5;
  v6 = *(a2 + 96);
  v8 = *(a2 + 48);
  v7 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = v6;
  *(a1 + 48) = v8;
  *(a1 + 64) = v7;
  v9 = *(a2 + 160);
  v11 = *(a2 + 112);
  v10 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 160) = v9;
  *(a1 + 112) = v11;
  *(a1 + 128) = v10;
  v12 = *(a2 + 224);
  v14 = *(a2 + 176);
  v13 = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 224) = v12;
  *(a1 + 176) = v14;
  *(a1 + 192) = v13;
  v15 = a1 + 240;
  v16 = a2 + 240;
  if (v4 != 1)
  {
    sub_1D0D87E2C(v15, v16);
  }

  sub_1D0B894B0(v15, v16);
  *(a1 + 288) = *(a2 + 288);
  return a1;
}

std::string *raven::RavenPNTEstimator::SetLogPrefix(uint64_t a1, const std::string *a2)
{
  std::string::operator=((a1 + 2736), a2);

  return std::string::operator=((a1 + 16552), a2);
}

BOOL raven::RavenPNTEstimator::GetEstimatorPredictAndUpdateArguments(uint64_t a1, uint64_t a2, int8x16_t *a3, uint64_t a4, double a5, int8x16_t a6)
{
  v10 = *a3;
  *a4 = *a3;
  v11 = CNTimeSpan::operator-(a3, a2, v10, a6);
  *v14.i64 = v13;
  v15 = v13 + v11;
  *(a4 + 16) = v15;
  if (v15 >= 0.0)
  {
    *v12.i64 = v11;
    v16 = raven::RavenPNTEstimator::UseHighAccelerationParameters(a1, v14, v12);
    v18 = *(a1 + 1168);
    *(a4 + 56) = *(v18 + 712);
    v19 = 760;
    if (v16)
    {
      v19 = 752;
    }

    v20 = 736;
    if (v16)
    {
      v20 = 728;
    }

    v21 = 784;
    if (v16)
    {
      v21 = 776;
    }

    v22 = 672;
    if (v16)
    {
      v22 = 680;
    }

    v23 = 688;
    if (v16)
    {
      v23 = 696;
    }

    *(a4 + 64) = *(v18 + v19);
    *(a4 + 72) = *(v18 + 704);
    *(a4 + 80) = *(v18 + v20);
    *(a4 + 88) = *(v18 + v21);
    v24 = *(v18 + 664);
    v17.i64[0] = *(v18 + v22);
    *(a4 + 96) = v17.i64[0];
    *(a4 + 104) = v24;
    *(a4 + 112) = *(v18 + v23);
    *(a4 + 120) = *(v18 + 656);
    *(a4 + 128) = *(v18 + 648);
    *(a4 + 24) = *(v18 + 792);
    v25 = *(v18 + 808);
    *(a4 + 40) = v25;
    v26 = *(v18 + 344);
    ComfortableAcceleration = raven::RavenPNTEstimator::GetComfortableAcceleration(a1, v25, v17);
    v28 = *(*(a1 + 1168) + 872);
    v29 = ComfortableAcceleration * v28;
    *v30.i64 = fabs(*(*(a1 + 14872) + 192));
    v31.i64[0] = v30.i64[0];
    v32 = fmax(*v30.i64, 0.000000015);
    *v33.i64 = raven::RavenPNTEstimator::GetMaximumComfortableTurningRate(a1, v31, v30);
    *v34.i64 = ComfortableAcceleration / v32;
    if (ComfortableAcceleration / v32 < *v33.i64)
    {
      *v33.i64 = ComfortableAcceleration / v32;
    }

    v35 = *(a1 + 1168);
    v36 = *(v35 + 872);
    v37 = *v33.i64 * v36;
    if (*(a1 + 1208) == 1)
    {
      v38 = *(a1 + 1368);
      v78 = *(a1 + 1352);
      v79 = v38;
      v80 = *(a1 + 1384);
      v39 = *(a1 + 1304);
      v74 = *(a1 + 1288);
      v75 = v39;
      v40 = *(a1 + 1336);
      v76 = *(a1 + 1320);
      v77 = v40;
      v41 = *(a1 + 1240);
      v70 = *(a1 + 1224);
      v71 = v41;
      v33 = *(a1 + 1256);
      v34 = *(a1 + 1272);
      v72 = v33;
      v69 = &unk_1F4CEF688;
      v81 = *(a1 + 1400);
      v73 = v34;
      if (v76 == 5)
      {
        v42 = fmax(v32, 0.1) / 5.0 * v36;
        *v34.i64 = v42;
        if (v42 >= v37)
        {
          v42 = v37;
        }

        v37 = v42;
        v33.i64[0] = *(v35 + 3288);
        if (v32 <= *v33.i64)
        {
          *v33.i64 = raven::RavenPNTEstimator::GetTurnStateBasedDeltaHeadingRateConstraint(a1, v33, v34);
          v35 = *(a1 + 1168);
          v36 = *(v35 + 872);
          *v33.i64 = *v33.i64 * v36;
          if (v37 >= *v33.i64)
          {
            v37 = *v33.i64;
          }
        }
      }
    }

    v43 = v26 * v26;
    v44 = *(a1 + 80);
    v45 = *(a1 + 88);
    v69 = v44;
    *&v70 = v45;
    v46 = CNTimeSpan::operator-(&v69, (a1 + 2768), v33, v34);
    if ((v46 || (*&v47 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL) && v46 != 30)
    {
      v48.i64[0] = 10.0;
      if (v46 < 30)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v48.i64[0] = 10.0;
      if (v47 <= 0.0)
      {
LABEL_39:
        v59 = v29 * v29 / v28;
        v60 = *v48.i64 * (*(v35 + 352) * *(v35 + 352));
        *(a4 + 136) = v43;
        v61 = 1.0;
        if (*(a1 + 1408) == 1 && (v62 = *(a1 + 1520), v62 >= 7))
        {
          v63 = 1.0;
          if (v62 != 9)
          {
            if (v62 == 8)
            {
              v65 = 512;
              v66 = 504;
            }

            else
            {
              v65 = 528;
              v66 = 520;
            }

            v61 = *(v35 + v66);
            v63 = *(v35 + v65);
          }
        }

        else
        {
          v63 = 1.0;
        }

        *(a4 + 144) = v59 * v61;
        *(a4 + 152) = v37 * v37 / v36 * v63;
        *(a4 + 160) = v59;
        *(a4 + 168) = v60;
        *(a4 + 176) = v59 + v59 * 2.0;
        return v15 >= 0.0;
      }
    }

    v68[0] = v44;
    v68[1] = v45;
    v67 = *(a1 + 112);
    v56 = CNTimeSpan::operator-(v68, &v67, v67, v48);
    if ((v56 || (*&v57 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL) && v56 != 30)
    {
      v58 = v56 < 30;
    }

    else
    {
      v58 = v57 <= 0.0;
    }

    v48.i64[0] = 10.0;
    if (!v58)
    {
      *v48.i64 = 1.0;
    }

    goto LABEL_39;
  }

  if (!cnprint::CNPrinter::GetLogLevel(v11))
  {
    LOWORD(v69) = 12;
    LOBYTE(v68[0]) = 0;
    v49 = cnprint::CNLogFormatter::FormatGeneral(a1 + 2712, a3, "Prediction time is negative,dt,%.2lf,current_estimator_time,%.1lf", *(a4 + 16), *(a2 + 8) + *a2);
    if (*(a1 + 2735) >= 0)
    {
      LOBYTE(v55) = v49;
    }

    else
    {
      v55 = *(a1 + 2712);
    }

    cnprint::CNPrinter::Print(&v69, v68, "%s", v50, v51, v52, v53, v54, v55);
  }

  return v15 >= 0.0;
}

double raven::RavenPNTEstimator::GetComfortableAcceleration(raven::RavenPNTEstimator *this, int8x16_t a2, int8x16_t a3)
{
  v4 = *(this + 146);
  if (v4 && (*(v4 + 33) & 1) != 0)
  {
    if (raven::RavenPNTEstimator::UseHighAccelerationParameters(this, a2, a3))
    {
      return *(v4 + 312);
    }

    else if (*(this + 2760) == 1)
    {
      return *(v4 + 320);
    }

    else
    {
      return *(v4 + 304);
    }
  }

  else
  {
    v14 = 12;
    v13 = 2;
    v6 = cnprint::CNLogFormatter::FormatWarning((this + 2712), "GetComfortableAcceleration() called before parameters were initialized");
    if (*(this + 2735) >= 0)
    {
      LOBYTE(v12) = v6;
    }

    else
    {
      v12 = *(this + 339);
    }

    cnprint::CNPrinter::Print(&v14, &v13, "%s", v7, v8, v9, v10, v11, v12);
    return 0.0;
  }
}

double raven::RavenPNTEstimator::GetMaximumComfortableTurningRate(raven::RavenPNTEstimator *this, int8x16_t a2, int8x16_t a3)
{
  v4 = *(this + 146);
  if (v4 && (*(v4 + 33) & 1) != 0)
  {
    v5 = raven::RavenPNTEstimator::UseHighAccelerationParameters(this, a2, a3);
    v6 = 328;
    if (v5)
    {
      v6 = 336;
    }

    return *(v4 + v6) * 0.0174532925;
  }

  else
  {
    v16 = 12;
    v15 = 2;
    v8 = cnprint::CNLogFormatter::FormatWarning((this + 2712), "GetMaximumComfortableTurningRate() called before parameters were initialized");
    if (*(this + 2735) >= 0)
    {
      LOBYTE(v14) = v8;
    }

    else
    {
      v14 = *(this + 339);
    }

    cnprint::CNPrinter::Print(&v16, &v15, "%s", v9, v10, v11, v12, v13, v14);
    return 0.0;
  }
}

double raven::RavenPNTEstimator::GetTurnStateBasedDeltaHeadingRateConstraint(raven::RavenPNTEstimator *this, int8x16_t a2, int8x16_t a3)
{
  v4 = *(this + 146);
  v5 = v4[410];
  if (*(this + 2288) != 1)
  {
    LogLevel = cnprint::CNPrinter::GetLogLevel(this);
    if (LogLevel > 1)
    {
      goto LABEL_16;
    }

    v35 = 12;
    v34 = 1;
    v36 = *(this + 5);
    v21 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, &v36, "GetTurnStateBasedDeltaHeadingRateConstraint,last_turn_state_event,unavailable,assuming high turn rate,turning_rate_dps,%.2lf", v5);
    if (*(this + 2735) >= 0)
    {
      LOBYTE(v20) = v21;
    }

    else
    {
      v20 = *(this + 339);
    }

    goto LABEL_15;
  }

  LogLevel = CNTimeSpan::operator-(this + 288, this + 10, a2, a3);
  v36.i64[0] = LogLevel;
  *&v36.i64[1] = v7;
  if (LogLevel < 0 || (*v8.i64 = v7, v7 < 0.0))
  {
    LogLevel = CNTimeSpan::operator-(v36.i64, v8, v9);
    v8.i64[0] = v10;
  }

  if (*v8.i64 + LogLevel > 1.0)
  {
    LogLevel = cnprint::CNPrinter::GetLogLevel(LogLevel);
    if (LogLevel > 1)
    {
      goto LABEL_16;
    }

    v35 = 12;
    v34 = 1;
    v12 = *(this + 5);
    v36 = v12;
    if ((*(this + 2288) & 1) == 0)
    {
      __assert_rtn("operator->", "optional.hpp", 1221, "this->is_initialized()");
    }

    v13 = CNTimeSpan::operator-(this + 10, this + 288, v12, v11);
    cnprint::CNLogFormatter::FormatGeneral(this + 2712, &v36, "GetTurnStateBasedDeltaHeadingRateConstraint,last_turn_state_event,too stale,age,%.2lf,assuming high turn rate,turning_rate_dps,%.2lf", v14 + v13, v5);
    if (*(this + 2735) >= 0)
    {
      LOBYTE(v20) = this - 104;
    }

    else
    {
      v20 = *(this + 339);
    }

LABEL_15:
    cnprint::CNPrinter::Print(&v35, &v34, "%s", v15, v16, v17, v18, v19, v20);
    goto LABEL_16;
  }

  v30 = *(this + 2400);
  if (v30 == 2)
  {
    v32 = *(this + 303);
    if (v32 <= 0.9 && v32 > 0.5)
    {
      v5 = v4[409];
    }
  }

  else if (v30 == 1)
  {
    v31 = *(this + 302);
    if (v31 <= 0.9)
    {
      if (v31 > 0.5)
      {
        v5 = v4[407];
      }
    }

    else
    {
      v5 = v4[408];
    }
  }

LABEL_16:
  if (!cnprint::CNPrinter::GetLogLevel(LogLevel))
  {
    v35 = 12;
    v34 = 0;
    v36 = *(this + 5);
    v22 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, &v36, "GetTurnStateBasedDeltaHeadingRateConstraint,turning_rate_dps,%.2lf", v5);
    if (*(this + 2735) >= 0)
    {
      LOBYTE(v28) = v22;
    }

    else
    {
      v28 = *(this + 339);
    }

    cnprint::CNPrinter::Print(&v35, &v34, "%s", v23, v24, v25, v26, v27, v28);
  }

  return v5 * 0.0174532925;
}

BOOL raven::RavenPNTEstimator::GetSimplifiedEightStateEstimatorPredictArgs(uint64_t a1, uint64_t a2, int8x16_t *a3, uint64_t a4, double a5, int8x16_t a6)
{
  v10 = *a3;
  *a4 = *a3;
  v11 = CNTimeSpan::operator-(a3, a2, v10, a6);
  v13 = v12 + v11;
  *(a4 + 16) = v13;
  if (v13 < 0.0)
  {
    if (!cnprint::CNPrinter::GetLogLevel(v11))
    {
      v33 = 12;
      v32 = 0;
      v24 = cnprint::CNLogFormatter::FormatGeneral(a1 + 2712, a3, "Prediction time is negative,dt,%.2lf,current_estimator_time,%.1lf", *(a4 + 16), *(a2 + 8) + *a2);
      if (*(a1 + 2735) >= 0)
      {
        LOBYTE(v30) = v24;
      }

      else
      {
        v30 = *(a1 + 2712);
      }

      cnprint::CNPrinter::Print(&v33, &v32, "%s", v25, v26, v27, v28, v29, v30);
    }
  }

  else
  {
    v14 = *(a1 + 1168);
    v15 = *(v14 + 216);
    _Q1 = *(v14 + 224);
    v17 = *(v14 + 240);
    *(a4 + 72) = _Q1;
    *(a4 + 56) = vdupq_lane_s64(v15, 0);
    *(a4 + 88) = *(&_Q1 + 1);
    _D3 = 2.0;
    *(a4 + 96) = v17;
    *(a4 + 104) = *&_Q1 + *&v15 * 2.0;
    __asm { FMLA            D2, D3, V1.D[1] }

    *(a4 + 112) = _D2;
    *(a4 + 24) = *(v14 + 792);
    *(a4 + 40) = *(v14 + 808);
  }

  return v13 >= 0.0;
}

void raven::RavenPNTEstimator::FillZUPTEvent(raven::RavenPNTEstimator *this, const raven::MovingStateEvent *a2, raven::VelocityEvent *a3)
{
  raven::RavenEstimator::FillZUPTEvent(this, a2, a3);
  if (!v5 && *(this + 2760) == 1)
  {
    *(a3 + 39) = fmax(*(a3 + 39), 0.25);
    *(a3 + 42) = fmax(*(a3 + 42), 0.25);
    *(a3 + 44) = fmax(*(a3 + 44), 0.25);
  }
}

uint64_t raven::RavenPNTEstimator::IsObservable(raven::RavenPNTEstimator *this)
{
  if (*(this + 58))
  {
    return sub_1D0D755EC(this + 15256);
  }

  else
  {
    return 0;
  }
}

void sub_1D0D561B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_1D0D857FC(va);
  sub_1D0D857FC(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_1D0D5625C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 24) = 0x100000003;
  *a3 = &unk_1F4CDEB28;
  *(a3 + 8) = xmmword_1D0E7DCC0;
  *(a3 + 32) = a3 + 40;
  return sub_1D0B89390(a1, a2, a3);
}

double sub_1D0D562E0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 24) = 0x100000003;
  *a3 = &unk_1F4CDEB28;
  *(a3 + 8) = xmmword_1D0E7DCC0;
  *(a3 + 32) = a3 + 40;
  return sub_1D0D8A3AC(a1, a2, a3);
}

uint64_t raven::RavenPNTEstimator::IsSane(raven::RavenPNTEstimator *this)
{
  v79 = *MEMORY[0x1E69E9840];
  if (!*(this + 58))
  {
    goto LABEL_3;
  }

  v71 = 0x10000001ALL;
  v69 = &unk_1F4CE3E48;
  v72 = v73;
  v70 = xmmword_1D0E843B0;
  memset(v73, 0, sizeof(v73));
  v66 = 0x10000001CLL;
  v64 = &unk_1F4CE0A20;
  v65 = xmmword_1D0E843A0;
  v67 = &v68;
  v62[0] = vdupq_n_s64(0x7FF8000000000000uLL);
  v62[1] = v62[0];
  v62[2] = v62[0];
  v62[3] = v62[0];
  v62[4] = v62[0];
  v62[5] = v62[0];
  v62[6] = v62[0];
  v62[7] = v62[0];
  v62[8] = v62[0];
  v62[9] = v62[0];
  v62[10] = v62[0];
  v62[11] = v62[0];
  v62[12] = v62[0];
  v62[13] = v62[0];
  v62[14] = v62[0];
  v62[15] = v62[0];
  v62[16] = v62[0];
  v62[17] = v62[0];
  v62[18] = v62[0];
  v62[19] = v62[0];
  v62[20] = v62[0];
  v62[21] = v62[0];
  v62[22] = v62[0];
  v62[23] = v62[0];
  v62[24] = v62[0];
  v62[25] = v62[0];
  v62[26] = v62[0];
  v62[27] = v62[0];
  v62[28] = v62[0];
  v62[29] = v62[0];
  v62[30] = v62[0];
  v62[31] = v62[0];
  v62[32] = v62[0];
  v62[33] = v62[0];
  v62[34] = v62[0];
  v63 = 0x7FF8000000000000;
  v2 = *(this + 2760);
  LOBYTE(v74[0]) = 0;
  v3 = sub_1D0D8825C(this + 14840, &v69, v2, 1, 1, &v64, v62, v74, 0.000000015);
  if (v3)
  {
    goto LABEL_3;
  }

  v8 = *v67;
  v9 = v67[1];
  v10 = v67[2];
  v11 = sqrt((v9 - v67[22]) * (v9 - v67[22]) + (*v67 - v67[21]) * (*v67 - v67[21]) + (v10 - v67[23]) * (v10 - v67[23]));
  v12 = *(this + 146);
  v13 = 170;
  if (*(this + 2760) == 1)
  {
    v13 = 171;
  }

  v14 = v12[v13];
  if (v11 > v14)
  {
    if (cnprint::CNPrinter::GetLogLevel(v3) <= 1)
    {
      v74[0] = 12;
      LOBYTE(v77.f64[0]) = 1;
      v39 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, this + 80, "Sanity failure,user-device dist,%.1lf > %.1lf", v11, v14);
      if (*(this + 2735) >= 0)
      {
        LOBYTE(v38) = v39;
      }

      else
      {
        v38 = *v39;
      }

      goto LABEL_37;
    }
  }

  else
  {
    v53 = v67[4];
    v54 = v67[5];
    v55 = v67[3];
    v59 = v67[15];
    v60 = v67[14];
    v5.i64[0] = v67[16];
    v57 = v67[17];
    v58 = *v5.i64;
    v4.i64[0] = v67[18];
    v56 = *v4.i64;
    v15 = v67[12];
    v16 = v67[13];
    v17 = v67[10];
    v18 = v67[11];
    v19 = raven::RavenPNTEstimator::UseHighAccelerationParameters(this, v4, v5);
    v20 = 93;
    if (v19)
    {
      v20 = 94;
    }

    v21 = v12[176] * v12[v20];
    v22 = fabs(v17);
    v23 = fabs(v18);
    v24 = fabs(v15);
    if (v22 > v21 || v23 > v21 || v24 > v21)
    {
      if (cnprint::CNPrinter::GetLogLevel(v19) <= 1)
      {
        v74[0] = 12;
        LOBYTE(v77.f64[0]) = 1;
        v40 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, this + 80, "Sanity failure,gyro bias,x_dps,%.2lf,y_dps,%.2lf,z_dps,%.2lf,max_dps,%.1lf)", v22 * 57.2957795, v23 * 57.2957795, v24 * 57.2957795, v21 * 57.2957795);
        if (*(this + 2735) >= 0)
        {
          LOBYTE(v38) = v40;
        }

        else
        {
          v38 = *v40;
        }

        goto LABEL_37;
      }
    }

    else
    {
      v25 = v12[174] * v12[91];
      v26 = fabs(v16);
      v27 = fabs(v60);
      v28 = fabs(v59);
      if (v26 > v25 || v27 > v25 || v28 > v25)
      {
        if (cnprint::CNPrinter::GetLogLevel(v19) <= 1)
        {
          v74[0] = 12;
          LOBYTE(v77.f64[0]) = 1;
          v41 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, this + 80, "Sanity failure,accel bias,x_mg,%.2lf,y_mg,%.2lf,z_mg,%.2lf,max_mg,%.1lf)", v26 * 101.971621, v27 * 101.971621, v28 * 101.971621, v25 * 101.971621);
          if (*(this + 2735) >= 0)
          {
            LOBYTE(v38) = v41;
          }

          else
          {
            v38 = *v41;
          }

          goto LABEL_37;
        }
      }

      else
      {
        v29 = 96;
        if (v19)
        {
          v29 = 97;
        }

        v30 = v12[175] * v12[v29];
        v31 = fabs(v58 + -1.0);
        if (v31 <= v30 && fabs(v57 + -1.0) <= v30 && fabs(v56 + -1.0) <= v30)
        {
          v77.f64[0] = v8;
          v77.f64[1] = v9;
          v78 = v10;
          v42 = cnnavigation::ECEFToLLA(&v77, 1, v75, 0, v74);
          if (v42)
          {
            goto LABEL_3;
          }

          v43 = v76;
          if (v76 <= 18000.0)
          {
            v51 = sqrt(v53 * v53 + v55 * v55 + v54 * v54);
            if (v51 <= 600.0)
            {
              result = 1;
              goto LABEL_4;
            }

            if (cnprint::CNPrinter::GetLogLevel(v42) > 1)
            {
              goto LABEL_3;
            }

            v74[0] = 12;
            v61 = 1;
            v52 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, this + 80, "Sanity failure,speed,%.1lf > %.1lf", v51, 600.0);
            if (*(this + 2735) >= 0)
            {
              LOBYTE(v50) = v52;
            }

            else
            {
              v50 = *v52;
            }
          }

          else
          {
            if (cnprint::CNPrinter::GetLogLevel(v42) > 1)
            {
              goto LABEL_3;
            }

            v74[0] = 12;
            v61 = 1;
            v44 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, this + 80, "Sanity failure,altitude,%.1lf > %.1lf", v43, 18000.0);
            if (*(this + 2735) >= 0)
            {
              LOBYTE(v50) = v44;
            }

            else
            {
              v50 = *v44;
            }
          }

          cnprint::CNPrinter::Print(v74, &v61, "%s", v45, v46, v47, v48, v49, v50);
          goto LABEL_3;
        }

        if (cnprint::CNPrinter::GetLogLevel(v19) <= 1)
        {
          v74[0] = 12;
          LOBYTE(v77.f64[0]) = 1;
          v32 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, this + 80, "Sanity failure,accel scale,x_ppm,%.2lf,y_ppm,%.2lf,z_ppm,%.2lf,max_ppm,%.1lf)", v31 * 1000000.0, fabs(v57 + -1.0) * 1000000.0, fabs(v56 + -1.0) * 1000000.0, v30 * 1000000.0);
          if (*(this + 2735) >= 0)
          {
            LOBYTE(v38) = v32;
          }

          else
          {
            v38 = *v32;
          }

LABEL_37:
          cnprint::CNPrinter::Print(v74, &v77, "%s", v33, v34, v35, v36, v37, v38);
        }
      }
    }
  }

LABEL_3:
  result = 0;
LABEL_4:
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t raven::RavenPNTEstimator::HandleEvent(raven::RavenPNTEstimator *this, const raven::AccessoryVehicleSpeedEvent *a2)
{
  if (*(this + 57) != 1)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(this + 58) == 1)
  {
    v4 = *(a2 + 56);
    v71 = *(a2 + 40);
    v72 = v4;
    v5 = *(a2 + 88);
    v73 = *(a2 + 72);
    v74 = v5;
    v6 = *(a2 + 24);
    v69 = *(a2 + 8);
    v70 = v6;
    v7 = raven::PopulateAllTimeFields(&v69, this + 136, v69, v6);
    if (!*(a2 + 51) || *(a2 + 30) == *(a2 + 29))
    {
      if (cnprint::CNPrinter::GetLogLevel(v7) <= 1)
      {
        LOWORD(v52) = 12;
        LOBYTE(v55) = 1;
        v56 = (*(*a2 + 16))(a2);
        *&v57 = v20;
        cnprint::CNLogFormatter::FormatGeneral(this + 2712, &v56, "AccessoryVehicleSpeed,rejected,0 speed samples,iOSTime,%.2lf", *&v71 + v70.i64[1]);
        if (*(this + 2735) >= 0)
        {
          LOBYTE(v26) = this - 104;
        }

        else
        {
          v26 = *(this + 339);
        }

        cnprint::CNPrinter::Print(&v52, &v55, "%s", v21, v22, v23, v24, v25, v26);
      }
    }

    else if (*(this + 1848) == 1 && ((v9 = *(this + 1960), v9 > 3) || v9 == 1) && *(this + 1208) == 1 && ((*(this + 1320) - 4) & 0xFA) == 0 && raven::RavenEstimator::IsZUPTAppropriate(this, a2))
    {
      v35 = sub_1D0D83BDC(&v56);
      v37 = sub_1D0D56F20(a2, &v56, v35, v36);
      if (v37)
      {
        if (cnprint::CNPrinter::GetLogLevel(v37) > 1)
        {
          return 0xFFFFFFFFLL;
        }

        v55 = 12;
        v54 = 1;
        v52 = (*(*a2 + 16))(a2);
        v53 = v38;
        v39 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, &v52, "AccessoryVehicleSpeed,rejected,unable to add ZUPT 2,iOSTime,%.2lf", *&v71 + v70.i64[1]);
        if (*(this + 2735) >= 0)
        {
          LOBYTE(v18) = v39;
        }

        else
        {
          v18 = *(this + 339);
        }

        goto LABEL_13;
      }

      v40 = raven::RavenPNTEstimator::AddUserVelocityMeasurement(this, &v56);
      if (v40)
      {
        if (cnprint::CNPrinter::GetLogLevel(v40) > 1)
        {
          return 0xFFFFFFFFLL;
        }

        v55 = 12;
        v54 = 1;
        v52 = (*(*a2 + 16))(a2);
        v53 = v41;
        v42 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, &v52, "AccessoryVehicleSpeed,rejected,unable to add ZUPT 1,iOSTime,%.2lf", *&v71 + v70.i64[1]);
        if (*(this + 2735) >= 0)
        {
          LOBYTE(v18) = v42;
        }

        else
        {
          v18 = *(this + 339);
        }

        goto LABEL_13;
      }

      v43 = *(this + 232);
      *(this + 15) = v57;
      if ((v43 & 1) == 0)
      {
        *(this + 232) = 1;
      }

      if (cnprint::CNPrinter::GetLogLevel(v40) <= 1)
      {
        v55 = 12;
        v54 = 1;
        v52 = (*(*a2 + 16))(a2);
        v53 = v44;
        v45 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, &v52, "AccessoryVehicleSpeed,accepted,ZUPT,iOSTime,%.2lf,speed,%.2lf", *&v71 + v70.i64[1], *(*(a2 + 30) - 8));
        if (*(this + 2735) >= 0)
        {
          LOBYTE(v51) = v45;
        }

        else
        {
          v51 = *(this + 339);
        }

        cnprint::CNPrinter::Print(&v55, &v54, "%s", v46, v47, v48, v49, v50, v51);
      }
    }

    else
    {
      v57 = 0uLL;
      v56 = &unk_1F4CEF718;
      v58 = 0;
      v59 = 0;
      v60 = 0;
      v61 = 0;
      v62 = 0;
      v63 = 0;
      v64 = 0;
      v65 = 0;
      v66 = 0;
      v67 = vdupq_n_s64(0x7FF8000000000000uLL);
      v68 = NAN;
      v10 = sub_1D0D57094(a2, &v56, v67, v8);
      if (v10)
      {
        if (cnprint::CNPrinter::GetLogLevel(v10) > 1)
        {
          return 0xFFFFFFFFLL;
        }

        v55 = 12;
        v54 = 1;
        v52 = (*(*a2 + 16))(a2);
        v53 = v11;
        v12 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, &v52, "AccessoryVehicleSpeed,rejected,unable to add USPD,iOSTime,%.2lf", *&v71 + v70.i64[1]);
        if (*(this + 2735) >= 0)
        {
          LOBYTE(v18) = v12;
        }

        else
        {
          v18 = *(this + 339);
        }

LABEL_13:
        cnprint::CNPrinter::Print(&v55, &v54, "%s", v13, v14, v15, v16, v17, v18);
        return 0xFFFFFFFFLL;
      }

      if (cnprint::CNPrinter::GetLogLevel(v10) <= 1)
      {
        v55 = 12;
        v54 = 1;
        v52 = (*(*a2 + 16))(a2);
        v53 = v27;
        v28 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, &v52, "AccessoryVehicleSpeed,accepted,USPD,iOSTime,%.2lf,speed,%.2lf,speedUnc,%.2lf", *&v71 + v70.i64[1], *&v67.i64[1], v68);
        if (*(this + 2735) >= 0)
        {
          LOBYTE(v34) = v28;
        }

        else
        {
          v34 = *(this + 339);
        }

        cnprint::CNPrinter::Print(&v55, &v54, "%s", v29, v30, v31, v32, v33, v34);
      }

      raven::RavenPNTEstimator::HandleEvent(this, &v56);
    }
  }

  return 0;
}

uint64_t sub_1D0D56F20(uint64_t a1, uint64_t a2, int8x16_t a3, int8x16_t a4)
{
  if (!*(a1 + 204) || (v5 = *(a1 + 240), v5 == *(a1 + 232)))
  {
    if (cnprint::CNPrinter::GetLogLevel(a1) <= 1)
    {
      LOWORD(v20[0]) = 12;
      v21 = 1;
      v12 = (*(*a1 + 16))(a1);
      v19 = v13 + v12;
      cnprint::CNPrinter::Print(v20, &v21, "t,%.2lf,AccessoryVehicleSpeed,rejected,0 speed samples", v14, v15, v16, v17, v18, SLOBYTE(v19));
    }
  }

  else
  {
    a4.i64[0] = 0x3F847AE147AE147BLL;
    if (*(v5 - 8) <= 0.01)
    {
      a3.i64[0] = *(*(a1 + 216) - 8);
      v20[0] = 0;
      v20[1] = 0;
      *v7.i64 = CNTimeSpan::SetTimeSpan(v20, 0, a3, a4);
      v9 = CNTimeSpan::operator+((a1 + 104), v20, v7, v8);
      result = 0;
      *(a2 + 8) = v9;
      *(a2 + 16) = v11;
      *(a2 + 24) = 0u;
      *(a2 + 40) = 0u;
      *(a2 + 56) = 0u;
      *(a2 + 72) = 0u;
      *(a2 + 88) = 0;
      *(a2 + 96) = 0x7FF8000000000000;
      *(a2 + 136) = *(a2 + 40);
      *(a2 + 152) = *(a2 + 56);
      *(a2 + 168) = *(a2 + 72);
      *(a2 + 184) = *(a2 + 88);
      *(a2 + 104) = *(a2 + 8);
      *(a2 + 120) = *(a2 + 24);
      *(a2 + 288) = 0;
      *(a2 + 296) = 0;
      *(a2 + 304) = 0;
      *(a2 + 312) = 0x3F1A36E2EB1C432DLL;
      *(a2 + 320) = 0;
      *(a2 + 328) = 0;
      *(a2 + 336) = xmmword_1D0E844C0;
      *(a2 + 352) = 0x3F1A36E2EB1C432DLL;
      *(a2 + 280) = 1;
      return result;
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_1D0D57094(uint64_t a1, uint64_t a2, int8x16_t a3, int8x16_t a4)
{
  if (!*(a1 + 204) || *(a1 + 240) == *(a1 + 232))
  {
    if (cnprint::CNPrinter::GetLogLevel(a1) <= 1)
    {
      LOWORD(__y[0]) = 12;
      v30 = 1;
      v20 = (*(*a1 + 16))(a1);
      v28 = v21 + v20;
      cnprint::CNPrinter::Print(__y, &v30, "t,%.2lf,AccessoryVehicleSpeed,rejected,0 speed samples", v22, v23, v24, v25, v26, SLOBYTE(v28));
    }

    return 0xFFFFFFFFLL;
  }

  else
  {
    a3.i64[0] = *(*(a1 + 216) - 8);
    __y[0] = 0.0;
    __y[1] = 0.0;
    *v6.i64 = CNTimeSpan::SetTimeSpan(__y, 0, a3, a4);
    *(a2 + 8) = CNTimeSpan::operator+((a1 + 104), __y, v6, v7);
    *(a2 + 16) = v8;
    *(a2 + 24) = 0u;
    *(a2 + 40) = 0u;
    *(a2 + 56) = 0u;
    *(a2 + 72) = 0u;
    *(a2 + 88) = 0;
    *(a2 + 96) = 0x7FF8000000000000;
    v9 = *(*(a1 + 240) - 8);
    v10 = fmin(fmax(v9 * 0.1, 0.5), 10.0);
    *(a2 + 104) = v9;
    *(a2 + 112) = v10;
    if (v9 <= 0.01)
    {
      return 0;
    }

    v11 = modf(v9, __y);
    result = 0;
    if (v10 < 1.0 && v11 >= 0.0 && v11 <= 0.0)
    {
      *(a2 + 112) = v10 + 1.0;
      if (cnprint::CNPrinter::GetLogLevel(0) <= 1)
      {
        LOWORD(__y[0]) = 12;
        v30 = 1;
        v13 = (*(*a1 + 16))(a1);
        v27 = v14 + v13;
        cnprint::CNPrinter::Print(__y, &v30, "t,%.2lf,AccessoryVehicleSpeed,accepted, speed unc increased", v15, v16, v17, v18, v19, SLOBYTE(v27));
      }

      return 0;
    }
  }

  return result;
}

uint64_t raven::RavenPNTEstimator::HandleEvent(raven::RavenPNTEstimator *this, const raven::UserSpeedEvent *a2)
{
  if (*(this + 57) != 1 || *(this + 58) != 1)
  {
    return 0xFFFFFFFFLL;
  }

  v36 = 0x100000003;
  *&v4 = 0x100000001;
  *(&v4 + 1) = 0x100000001;
  v35 = v4;
  v34 = &unk_1F4CDEB28;
  v37 = &v38;
  v38 = *(a2 + 13);
  v31 = 0x300000003;
  v30 = v4;
  v29 = &unk_1F4CD5DD0;
  v32 = &v33;
  v33 = *(a2 + 14) * *(a2 + 14);
  v28 = *(a2 + 8);
  sub_1D0BA002C(v20, 26);
  v20[0] = &unk_1F4CE09C0;
  v22 = v28;
  v23 = this + 2920;
  v24 = this + 14824;
  v25 = this + 14840;
  v26 = this + 2760;
  v27 = this + 2800;
  if (sub_1D0D6BF40(this + 61736, &v28, &v34, &v29, sub_1D0D6B8A0, v20, v5, v6))
  {
    v19 = 12;
    v18 = 4;
    v17[0] = (*(*a2 + 16))(a2);
    v17[1] = v7;
    v8 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, v17, "Could not add measurement - user speed");
    if (*(this + 2735) >= 0)
    {
      LOBYTE(v14) = v8;
    }

    else
    {
      v14 = *(this + 339);
    }

    cnprint::CNPrinter::Print(&v19, &v18, "%s", v9, v10, v11, v12, v13, v14);
    v15 = 0xFFFFFFFFLL;
  }

  else
  {
    v15 = 0;
  }

  v20[0] = &unk_1F4CE4300;
  if (v21 < 0)
  {
    operator delete(v20[2]);
  }

  return v15;
}

void sub_1D0D5749C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t raven::RavenPNTEstimator::SetStateParameterization(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x1EEE9AC00](a1, a2, a3, a4);
  v6 = v5;
  v7 = v4;
  v8 = *v5;
  if ((*(*(v4 + 1168) + 3839) & 1) == 0 && v8 == 1)
  {
    return 0;
  }

  v49[0].i16[0] = 12;
  v45[0] = 2;
  cnprint::CNLogFormatter::FormatGeneral(v4 + 2712, v4 + 80, "SetStateParameterization() attempting to update state parameterization from %hu to %hu.", *(v4 + 2760), v8);
  if (*(v7 + 2735) >= 0)
  {
    LOBYTE(v14) = v7 - 104;
  }

  else
  {
    v14 = *(v7 + 2712);
  }

  cnprint::CNPrinter::Print(v49, v45, "%s", v9, v10, v11, v12, v13, v14);
  if (*(v7 + 2760) == *v6)
  {
    return 0;
  }

  if (*(v7 + 58))
  {
    sub_1D0D98D1C(v141, v7 + 14840);
    v138 = 0x10000001ALL;
    v137 = xmmword_1D0E843B0;
    v136 = &unk_1F4CE3E48;
    v139 = &v140;
    v16 = 552;
    if (!*(v7 + 16364))
    {
      v16 = 8;
    }

    sub_1D0B894B0(&v136, v7 + 15256 + v16);
    v132 = 0x100000003;
    v130 = &unk_1F4CDEAA0;
    v133 = &v134;
    v131 = xmmword_1D0E7DCC0;
    v135 = 2;
    v134 = 0x100000000;
    v126 = 0x100000003;
    v124 = &unk_1F4CDEAA0;
    v127 = &v128;
    v125 = xmmword_1D0E7DCC0;
    v129 = 23;
    v128 = 0x1600000015;
    v120 = 0x100000003;
    v118 = &unk_1F4CDEAA0;
    v121 = &v122;
    v119 = xmmword_1D0E7DCC0;
    v123 = 27;
    v122 = 0x1A00000019;
    v114 = 0x100000003;
    v112 = &unk_1F4CDEAA0;
    v115 = &v116;
    v113 = xmmword_1D0E7DCC0;
    v117 = 2;
    v116 = 0x100000000;
    v108 = 0x100000003;
    v106 = &unk_1F4CDEAA0;
    v109 = &v110;
    v107 = xmmword_1D0E7DCC0;
    v111 = 22;
    v110 = 0x1500000014;
    v50.i64[1] = 0x1800000017;
    v102 = 0x100000003;
    v100 = &unk_1F4CDEAA0;
    v103 = &v104;
    v101 = xmmword_1D0E7DCC0;
    v105 = 25;
    v104 = 0x1800000017;
    v17 = v142[6];
    v18 = v142[7];
    v19 = v142[8];
    v20 = v142[9];
    v21 = sqrt(v18 * v18 + v17 * v17 + v19 * v19 + v20 * v20);
    v22 = 1.0;
    v23 = 0.0;
    v24 = 0.0;
    v25 = 0.0;
    v26 = 0.0;
    v27 = 1.0;
    if (fabs(v21) >= 2.22044605e-16)
    {
      v24 = v17 / v21;
      v25 = v18 / v21;
      v26 = v19 / v21;
      v27 = v20 / v21;
    }

    *&v99[12] = v24;
    *&v99[13] = v25;
    *&v99[14] = v26;
    *&v99[15] = v27;
    v28 = sqrt(v25 * v25 + v24 * v24 + v26 * v26 + v27 * v27);
    v29 = 0.0;
    v30 = 0.0;
    if (fabs(v28) >= 2.22044605e-16)
    {
      v23 = -v24 / v28;
      v29 = -v25 / v28;
      v30 = -v26 / v28;
      v22 = v27 / v28;
    }

    *&v99[8] = v23;
    *&v99[9] = v29;
    *&v99[10] = v30;
    *&v99[11] = v22;
    sub_1D0D7B740(v99, v141, &v130);
    sub_1D0D7B740(&v98, v141, &v124);
    sub_1D0D7B740(&v97, v141, &v118);
    v31 = v139;
    sub_1D0D7B7A4(&v96, v139, &v112);
    sub_1D0D7B7A4(&v95, v31, &v106);
    sub_1D0D7B7A4(&v94, v31, &v100);
    v91 = 0x10000001ALL;
    v89 = &unk_1F4CE3E48;
    v92 = v93;
    v90 = xmmword_1D0E843B0;
    memset(v93, 0, sizeof(v93));
    v86 = 0x10000001CLL;
    v84 = &unk_1F4CE0A20;
    v85 = xmmword_1D0E843A0;
    v87 = &v88;
    v49[0] = vdupq_n_s64(0x7FF8000000000000uLL);
    v49[1] = v49[0];
    v50 = v49[0];
    v51 = v49[0];
    v52 = v49[0];
    v53 = v49[0];
    v54 = v49[0];
    v55 = v49[0];
    v56 = v49[0];
    v57 = v49[0];
    v58 = v49[0];
    v59 = v49[0];
    v60 = v49[0];
    v61 = v49[0];
    v62 = v49[0];
    v63 = v49[0];
    v64 = v49[0];
    v65 = v49[0];
    v66 = v49[0];
    v67 = v49[0];
    v68 = v49[0];
    v69 = v49[0];
    v70 = v49[0];
    v71 = v49[0];
    v72 = v49[0];
    v73 = v49[0];
    v74 = v49[0];
    v75 = v49[0];
    v76 = v49[0];
    v77 = v49[0];
    v78 = v49[0];
    v79 = v49[0];
    v80 = v49[0];
    v81 = v49[0];
    v82 = v49[0];
    v83 = 0x7FF8000000000000;
    v45[0] = 0;
    if (!sub_1D0D8825C(v141, &v89, 0, 1, 1, &v84, v49, v45, 0.000000015))
    {
      sub_1D0D98D1C(v48, v7 + 14840);
      sub_1D0D96660(v47, &v136);
      sub_1D0D87C2C(v46, 26, 26);
    }

    *v45 = 12;
    v48[0] = 4;
    cnprint::CNLogFormatter::FormatGeneral(v7 + 2712, v7 + 80, "SetStateParameterization() failed; pre-transformation GetFullStateEstimate() failed.");
    if (*(v7 + 2735) >= 0)
    {
      LOBYTE(v37) = v7 - 104;
    }

    else
    {
      v37 = *(v7 + 2712);
    }

    cnprint::CNPrinter::Print(v45, v48, "%s", v32, v33, v34, v35, v36, v37);
  }

  else
  {
    v49[0].i16[0] = 12;
    v45[0] = 4;
    cnprint::CNLogFormatter::FormatGeneral(v7 + 2712, v7 + 80, "SetStateParameterization() failed; estimator not initialized.");
    if (*(v7 + 2735) >= 0)
    {
      LOBYTE(v43) = v7 - 104;
    }

    else
    {
      v43 = *(v7 + 2712);
    }

    cnprint::CNPrinter::Print(v49, v45, "%s", v38, v39, v40, v41, v42, v43);
  }

  return 0xFFFFFFFFLL;
}

void sub_1D0D58BD4(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_1EE053B10);
  sub_1D0D89DFC(&STACK[0x7C0]);
  sub_1D0D857FC(&STACK[0x830]);
  sub_1D0D89DFC(&STACK[0x8A0]);
  sub_1D0D857FC(&STACK[0x910]);
  sub_1D0D857FC(&STACK[0x980]);
  sub_1D0D857FC(&STACK[0x9F0]);
  sub_1D0D857FC(&STACK[0xA60]);
  _Unwind_Resume(a1);
}

uint64_t sub_1D0D58ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x1EEE9AC00](a1, a2, a3, a4);
  v92[276] = *MEMORY[0x1E69E9840];
  if (v6 && (v12 = v5, v13 = v4, v14 = **v6, (v15 = __dynamic_cast(v6, &unk_1F4CE42A0, &unk_1F4CE0F70, 0)) != 0))
  {
    v16 = v15;
    v18 = *(v13 + 8);
    v17 = *(v13 + 12);
    if (v18 <= v17)
    {
      v19 = *(v13 + 12);
    }

    else
    {
      v19 = *(v13 + 8);
    }

    if (v18 && v17 && v19 == 26 && ((v21 = *(v12 + 8), v20 = *(v12 + 12), v21 <= v20) ? (v22 = *(v12 + 12)) : (v22 = *(v12 + 8)), v21 && v20 && v22 == 1 && *(v15 + 7)))
    {
      v87 = *(v15 + 40);
      v23 = *(v15 + 9);
      v86 = **(v15 + 8);
      sub_1D0D96A9C(&v84, v23);
      v24 = *(v16 + 7);
      v81 = 0x10000001CLL;
      v80 = xmmword_1D0E843A0;
      v79 = &unk_1F4CE0A20;
      v82 = &v83;
      if (sub_1D0D85A88(&v87, &v86, v85, v24, *(v16 + 11), &v79))
      {
        LOWORD(v69[0]) = 12;
        LOBYTE(v88) = 4;
        v32 = *(v16 + 6) + *(v16 + 5);
        cnprint::CNPrinter::Print(v69, &v88, "time,%.3lf,h-function failure on line %d: %s() %s", v25, v26, v27, v28, v29, SLOBYTE(v32));
      }

      else
      {
        v30.i64[0] = *(v16 + 12);
        if (*v30.i64 <= 0.0)
        {
          sub_1D0D85A30((v16 + 40), "invalid time interval", "h_DeviceAltitudeChange_RavenPNT", 2229, v26, v27, v28, v29);
        }

        else
        {
          v69[1] = 0;
          v69[0] = 0;
          *v36.i64 = CNTimeSpan::SetTimeSpan(v69, 0, v30, v31);
          *&v78 = CNTimeSpan::operator-(&v87, v69, v36, v37);
          *(&v78 + 1) = v38;
          v75 = 0x10000001CLL;
          v73 = &unk_1F4CE0A20;
          v74 = xmmword_1D0E843A0;
          v76 = &v77;
          if (sub_1D0D85A88(&v78, &v86, v85, v24, *(v16 + 11), &v73))
          {
            sub_1D0D85A30((v16 + 40), "could not integrate full states", "h_DeviceAltitudeChange_RavenPNT", 2238, v39, v40, v41, v42);
          }

          else
          {
            sub_1D0D7CFF0(v69);
            v70 = 0;
            v69[0] = &unk_1F4CE3F68;
            v71 = 0u;
            v72 = 0u;
            sub_1D0D5224C(v68);
            if (sub_1D0D8A408(v24, v68))
            {
              v47 = 2250;
              v48 = "could not get integrator configuration";
            }

            else
            {
              if (!sub_1D0D53D5C(v69, v68))
              {
                v49 = 0;
                v63 = v69;
                v64 = &v87;
                v50 = *(v16 + 11);
                v65 = &v79;
                v66 = v50;
                v67 = v78;
                v90 = 0x1A00000001;
                v88 = &unk_1F4CE1FD0;
                v91 = v92;
                v89 = xmmword_1D0E844D0;
                v51 = xmmword_1D0E7DD30;
                v52 = vdupq_n_s64(2uLL);
                v53 = vdupq_n_s64(0x12uLL);
                while (1)
                {
                  if (vmovn_s64(vcgtq_u64(v53, v51)).u8[0])
                  {
                    LODWORD(v92[v49]) = v49 * 2;
                  }

                  if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0x12uLL), *&v51)).i32[1])
                  {
                    HIDWORD(v92[v49]) = v49 * 2 + 1;
                  }

                  ++v49;
                  v51 = vaddq_s64(v51, v52);
                  if (v49 == 9)
                  {
                    sub_1D0D741B0(v62, &v88);
                    sub_1D0D8A47C(v61, 15);
                    v58 = 0x10000001ALL;
                    v56 = &unk_1F4CE3E48;
                    v57 = xmmword_1D0E843B0;
                    v59 = &v60;
                    sub_1D0D87FCC(v55);
                  }
                }
              }

              v47 = 2255;
              v48 = "could not set integrator configuration";
            }

            sub_1D0D85A30((v16 + 40), v48, "h_DeviceAltitudeChange_RavenPNT", v47, v43, v44, v45, v46);
            sub_1D0D4F978(v69);
          }
        }
      }
    }

    else
    {
      LOWORD(v69[0]) = 12;
      LOBYTE(v88) = 4;
      v33 = *(v15 + 6) + *(v15 + 5);
      cnprint::CNPrinter::Print(v69, &v88, "time,%.3lf,h-function failure on line %d: %s() %s", v7, v8, v9, v10, v11, SLOBYTE(v33));
    }
  }

  else
  {
    LOWORD(v69[0]) = 12;
    LOBYTE(v88) = 4;
    v54 = MEMORY[0x30] + MEMORY[0x28];
    cnprint::CNPrinter::Print(v69, &v88, "time,%.3lf,h-function failure on line %d: %s() %s", v7, v8, v9, v10, v11, SLOBYTE(v54));
  }

  v34 = *MEMORY[0x1E69E9840];
  return 0xFFFFFFFFLL;
}

void sub_1D0D59870(_Unwind_Exception *a1)
{
  sub_1D0D8B128(&STACK[0x480]);
  sub_1D0D857FC(&STACK[0x4B0]);
  sub_1D0D4F978(&STACK[0x938]);
  _Unwind_Resume(a1);
}

uint64_t sub_1D0D59904(uint64_t a1)
{
  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

uint64_t raven::RavenPNTEstimator::HandleEvent(raven::RavenPNTEstimator *this, const raven::AltitudeEvent *a2)
{
  v72[4] = *MEMORY[0x1E69E9840];
  if (*(this + 57) == 1)
  {
    if (*(this + 58) != 1 || *(this + 2760) == 1 && *(this + 2000) == 1 && *(this + 2112) - 1 < 2)
    {
      v4 = 0;
    }

    else
    {
      v61 = 0x100000003;
      *&v5 = 0x100000001;
      *(&v5 + 1) = 0x100000001;
      v60 = v5;
      *&v59[9] = &unk_1F4CDEB28;
      v62 = &v63;
      v63 = *(a2 + 13);
      v57 = 0x300000003;
      v56 = v5;
      v55 = &unk_1F4CD5DD0;
      v58 = v59;
      v59[0] = *(a2 + 14) * *(a2 + 14);
      v6 = (*(*a2 + 16))(a2);
      v8 = v7;
      *&v54 = v6;
      *(&v54 + 1) = v7;
      sub_1D0BA002C(v47, 25);
      v52 = 0;
      v50 = 0u;
      v51 = 0u;
      v47[0] = &unk_1F4CE1138;
      v49 = v54;
      v53 = *(*(this + 146) + 80);
      *&v50 = this + 2920;
      *(&v50 + 1) = this + 14824;
      *&v51 = this + 14840;
      *(&v51 + 1) = this + 2760;
      v52 = this + 2800;
      if ((v56 & 0x80000000) != 0)
      {
        __assert_rtn("Zeros", "cnmatrix.h", 3098, "nr >= 0");
      }

      v68 = 0x100000003;
      v64 = &unk_1F4CDEB28;
      v14 = v70;
      v69 = v70;
      v65 = v56 | 0x100000000;
      v66 = v56;
      v67 = v56;
      if (v56 > 3)
      {
        v15 = &v70[v56];
        bzero(v70, 16 * ((v56 - 1) >> 1));
        *(v15 - 2) = 0;
        *(v15 - 1) = 0;
      }

      else if (v56)
      {
        bzero(v70, 8 * v56);
      }

      if (*(this + 61736))
      {
        if (*(this + 16918) == 174)
        {
          LOWORD(v72[0]) = 2;
          v71 = 2;
          v42 = v8 + v6;
          cnprint::CNPrinter::Print(v72, &v71, "MeasurementAccumulator::AddMeasurement() failed - Out of space,t_meas,%.3lf", v9, v10, v11, v12, v13, SLOBYTE(v42));
        }

        else if (*(this + 61737) == 1)
        {
          if (cnprint::CNPrinter::GetLogLevel(v14) <= 1)
          {
            LOWORD(v72[0]) = 2;
            v71 = 1;
            v44 = v8 + v6;
            cnprint::CNPrinter::Print(v72, &v71, "MeasurementAccumulator::AddMeasurement() failed - Locked,t_meas,%.3lf", v21, v22, v23, v24, v25, SLOBYTE(v44));
          }
        }

        else
        {
          v26 = sub_1D0B7C8AC(&v54, this + 7718);
          if (!v26)
          {
            v72[0] = 0;
            v72[1] = 0;
            sub_1D0D8B46C();
          }

          if (cnprint::CNPrinter::GetLogLevel(v26) <= 1)
          {
            LOWORD(v72[0]) = 2;
            v71 = 1;
            v45 = *(&v54 + 1) + v54;
            v46 = *(this + 7719) + *(this + 7718);
            cnprint::CNPrinter::Print(v72, &v71, "MeasurementAccumulator::AddMeasurement() failed - Measurement too old,t_meas,%.3lf,t_start,%.3lf", v27, v28, v29, v30, v31, SLOBYTE(v45));
          }
        }
      }

      else if (cnprint::CNPrinter::GetLogLevel(v14) <= 1)
      {
        LOWORD(v72[0]) = 2;
        v71 = 1;
        v43 = v8 + v6;
        cnprint::CNPrinter::Print(v72, &v71, "MeasurementAccumulator::AddMeasurement() failed - Not initialized,t_meas,%.3lf", v16, v17, v18, v19, v20, SLOBYTE(v43));
      }

      LOWORD(v72[0]) = 12;
      v71 = 4;
      v64 = (*(*a2 + 16))(a2);
      v65 = v32;
      v33 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, &v64, "Could not add measurement - user altitude");
      if (*(this + 2735) >= 0)
      {
        LOBYTE(v39) = v33;
      }

      else
      {
        v39 = *(this + 339);
      }

      cnprint::CNPrinter::Print(v72, &v71, "%s", v34, v35, v36, v37, v38, v39);
      v4 = 0xFFFFFFFFLL;
      v47[0] = &unk_1F4CE4300;
      if (v48 < 0)
      {
        operator delete(v47[2]);
      }
    }
  }

  else
  {
    v4 = 0xFFFFFFFFLL;
  }

  v40 = *MEMORY[0x1E69E9840];
  return v4;
}

void sub_1D0D59FD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a2)
  {
    sub_1D0C537DC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0D5A03C(uint64_t a1, uint64_t a2, char **lpsrc, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v117 = *MEMORY[0x1E69E9840];
  if (lpsrc && (v13 = **lpsrc, (v14 = __dynamic_cast(lpsrc, &unk_1F4CE42A0, &unk_1F4CE10F0, 0)) != 0))
  {
    v15 = v14;
    if (*(v14 + 7) && ((v17 = *(a1 + 8), v16 = *(a1 + 12), v17 <= v16) ? (v18 = *(a1 + 12)) : (v18 = *(a1 + 8)), v17 && v16 && v18 == 26 && ((v20 = *(a2 + 8), v19 = *(a2 + 12), v20 <= v19) ? (v21 = *(a2 + 12)) : (v21 = *(a2 + 8)), v20 && v19 && v21 == 1)))
    {
      v112 = *(v14 + 40);
      v22 = *(v14 + 9);
      v111 = **(v14 + 8);
      sub_1D0D96A9C(v110, v22);
      v26 = **(v15 + 10);
      v27 = *(v15 + 12);
      v107 = 0x10000001CLL;
      v106 = xmmword_1D0E843A0;
      v105 = &unk_1F4CE0A20;
      v108 = &v109;
      if (v26)
      {
        if (v26 == 1)
        {
          if (sub_1D0D9046C(&v112, &v111, v110, *(v15 + 7), *(v15 + 11), 1, 1, 1, &v105))
          {
            *v75 = 12;
            LOBYTE(v66) = 4;
            v36 = *(v15 + 6) + *(v15 + 5);
            cnprint::CNPrinter::Print(v75, &v66, "time,%.3lf,h-function failure on line %d: %s() %s", v31, v32, v33, v34, v35, SLOBYTE(v36));
            goto LABEL_22;
          }
        }

        else if (v26 == 2)
        {
          __assert_rtn("h_UserAltitude_RavenPNT", "ravenmeasurementfunctions.h", 6786, "false && Unexpected case RavenPNTEstimatorStateParameterization::ParameterizationCount");
        }
      }

      else
      {
        v68 = 0x100000007;
        v66 = &unk_1F4CE0BB0;
        v67 = xmmword_1D0E84420;
        v69 = &v70;
        if (sub_1D0C50CB8(&v112, &v111, v110, 0, &v66, v23, v24, v25))
        {
          *v75 = 12;
          LOBYTE(v100) = 4;
          v42 = *(v15 + 6) + *(v15 + 5);
          cnprint::CNPrinter::Print(v75, &v100, "time,%.3lf,h-function failure on line %d: %s() %s", v37, v38, v39, v40, v41, SLOBYTE(v42));
          goto LABEL_22;
        }

        *&v75[24] = 0x700000001;
        *v75 = &unk_1F4CE23C0;
        *&v76 = &v76 + 8;
        *&v75[8] = xmmword_1D0E84430;
        v43 = xmmword_1D0E84440;
        v44 = xmmword_1D0E7DD30;
        v45 = v77 + 1;
        v46 = 13;
        v47 = vdupq_n_s64(7uLL);
        v48 = vdupq_n_s64(4uLL);
        do
        {
          if (vuzp1_s16(vmovn_s64(vcgtq_u64(v47, v44)), *v43.i8).u8[0])
          {
            *(v45 - 3) = v46 + 8;
          }

          if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(7uLL), *&v44)), *&v43).i8[2])
          {
            *(v45 - 2) = v46 + 9;
          }

          if (vuzp1_s16(*&v43, vmovn_s64(vcgtq_u64(vdupq_n_s64(7uLL), *&v43))).i32[1])
          {
            *(v45 - 1) = v46 + 10;
            *v45 = v46 + 11;
          }

          v43 = vaddq_s64(v43, v48);
          v44 = vaddq_s64(v44, v48);
          v46 += 4;
          v45 += 4;
        }

        while (v46 != 21);
        sub_1D0D772C0(&v100, v75);
        sub_1D0D867B8(v75, &v105, &v100);
        sub_1D0D8644C(v75, SDWORD2(v67), v69);
      }

      v102 = 0x100000007;
      v101 = xmmword_1D0E84420;
      v100 = &unk_1F4CE0BB0;
      v103 = &v104;
      *v75 = vdupq_n_s64(0x7FF8000000000000uLL);
      *&v75[16] = *v75;
      v76 = *v75;
      v77[0] = *v75;
      v77[1] = *v75;
      v77[2] = *v75;
      v77[3] = *v75;
      v77[4] = *v75;
      v77[5] = *v75;
      v77[6] = *v75;
      v77[7] = *v75;
      v77[8] = *v75;
      v77[9] = *v75;
      v77[10] = *v75;
      v78 = *v75;
      v79 = *v75;
      v80 = *v75;
      v81 = *v75;
      v82 = *v75;
      v83 = *v75;
      v84 = *v75;
      v85 = *v75;
      v86 = *v75;
      v87 = *v75;
      v88 = *v75;
      v89 = *v75;
      v90 = *v75;
      v91 = *v75;
      v92 = *v75;
      v93 = *v75;
      v94 = *v75;
      v95 = *v75;
      v96 = *v75;
      v97 = *v75;
      v98 = *v75;
      v99 = 0x7FF8000000000000;
      LOBYTE(v66) = 0;
      if (sub_1D0D88874(&v105, a1, v26, &v100, v75, &v66, 0.000000015))
      {
        LOWORD(v66) = 12;
        v71[0] = 4;
        v54 = *(v15 + 6) + *(v15 + 5);
        cnprint::CNPrinter::Print(&v66, v71, "time,%.3lf,h-function failure on line %d: %s() %s", v49, v50, v51, v52, v53, SLOBYTE(v54));
      }

      else
      {
        v115 = *v103;
        v116 = v103[1].f64[0];
        if (!cnnavigation::ECEFToLLA(&v115, 1, v113, 1, v71))
        {
          *&v59 = 0x100000001;
          *(&v59 + 1) = 0x100000001;
          *(a4 + 8) = v59;
          **(a4 + 32) = v114 - v27 + **(a2 + 32);
          sub_1D0D8A93C(&v66);
          sub_1D0B894B0(a5, &v66);
          v60 = v72;
          v61 = v73;
          v62 = *(a5 + 32);
          *v62 = v72 * *(&v78 + 1);
          v63 = *(a5 + 20);
          v62[v63] = v61 * *&v82;
          v64 = v74;
          v62[2 * v63] = v74 * *(&v85 + 1);
          v62[6 * v63] = v61 * *(&v82 + 1) + v60 * *&v79 + v64 * *&v86;
          v62[7 * v63] = v61 * *&v83 + v60 * *(&v79 + 1) + v64 * *(&v86 + 1);
          v62[8 * v63] = v61 * *(&v83 + 1) + v60 * *&v80 + v64 * *&v87;
          v62[20 * v63] = v61 * *&v84 + v60 * *(&v80 + 1) + v64 * *(&v87 + 1);
          v62[21 * v63] = v61 * *(&v84 + 1) + v60 * *&v81 + v64 * *&v88;
          v62[22 * v63] = v61 * *&v85 + v60 * *(&v81 + 1) + v64 * *(&v88 + 1);
          sub_1D0BBBC94(1u, 1u, &v66);
          sub_1D0B894B0(a6, &v66);
          result = 0;
          goto LABEL_23;
        }

        sub_1D0D85A30((v15 + 40), "coordinate conversion error", "h_UserAltitude_RavenPNT", 6810, v55, v56, v57, v58);
      }
    }

    else
    {
      *v75 = 12;
      v110[0] = 4;
      v28 = *(v14 + 6) + *(v14 + 5);
      cnprint::CNPrinter::Print(v75, v110, "time,%.3lf,h-function failure on line %d: %s() %s", a4, a5, a6, a7, a8, SLOBYTE(v28));
    }
  }

  else
  {
    *v75 = 12;
    v110[0] = 4;
    v65 = MEMORY[0x30] + MEMORY[0x28];
    cnprint::CNPrinter::Print(v75, v110, "time,%.3lf,h-function failure on line %d: %s() %s", a4, a5, a6, a7, a8, SLOBYTE(v65));
  }

LABEL_22:
  result = 0xFFFFFFFFLL;
LABEL_23:
  v30 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D0D5A850(uint64_t a1)
{
  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

uint64_t raven::RavenPNTEstimator::HandleEvent(raven::RavenPNTEstimator *this, const raven::AttitudeChangeEvent *a2)
{
  v81[4] = *MEMORY[0x1E69E9840];
  if (*(this + 57) == 1)
  {
    if (*(this + 58) == 1)
    {
      v70 = 0x100000003;
      v69 = xmmword_1D0E7DCC0;
      v68 = &unk_1F4CDEB28;
      v71 = &v72;
      v72 = *(a2 + 200);
      v73 = *(a2 + 27);
      v61 = 0x100000000;
      v64 = 0x100000003;
      v62 = &unk_1F4CDEAA0;
      v63 = xmmword_1D0E7DCC0;
      v67 = 2;
      v65 = &v66;
      v66 = 0x100000000;
      sub_1D0D2D730(a2 + 232, &v62, &v62, v59);
      v4 = (*(*a2 + 16))(a2);
      v6 = v5;
      *&v58 = v4;
      *(&v58 + 1) = v5;
      sub_1D0BA002C(v49, 5);
      v49[0] = &unk_1F4CE11E0;
      v51 = v58;
      v74 = *(a2 + 104);
      v8 = CNTimeSpan::operator-(&v58, &v74, v74, v7);
      v57 = v14 + v8;
      v52 = this + 2920;
      v53 = this + 14824;
      v54 = this + 14840;
      v55 = this + 2760;
      v56 = this + 2800;
      if ((v60 & 0x80000000) != 0)
      {
        __assert_rtn("Zeros", "cnmatrix.h", 3098, "nr >= 0");
      }

      v77 = 0x100000003;
      v74.i64[0] = &unk_1F4CDEB28;
      v15 = v79;
      v78 = v79;
      v74.i64[1] = v60 | 0x100000000;
      v75 = v60;
      v76 = v60;
      if (v60 > 3)
      {
        v17 = &v79[v60];
        bzero(v79, 16 * ((v60 - 1) >> 1));
        *(v17 - 2) = 0;
        *(v17 - 1) = 0;
      }

      else if (v60)
      {
        bzero(v79, 8 * v60);
      }

      if (*(this + 61736))
      {
        if (*(this + 16918) == 174)
        {
          LOWORD(v81[0]) = 2;
          v80 = 2;
          v44 = v6 + v4;
          cnprint::CNPrinter::Print(v81, &v80, "MeasurementAccumulator::AddMeasurement() failed - Out of space,t_meas,%.3lf", v9, v10, v11, v12, v13, SLOBYTE(v44));
        }

        else if (*(this + 61737) == 1)
        {
          if (cnprint::CNPrinter::GetLogLevel(v15) <= 1)
          {
            LOWORD(v81[0]) = 2;
            v80 = 1;
            v46 = v6 + v4;
            cnprint::CNPrinter::Print(v81, &v80, "MeasurementAccumulator::AddMeasurement() failed - Locked,t_meas,%.3lf", v23, v24, v25, v26, v27, SLOBYTE(v46));
          }
        }

        else
        {
          v28 = sub_1D0B7C8AC(&v58, this + 7718);
          if (!v28)
          {
            v81[0] = 0;
            v81[1] = 0;
            sub_1D0D8BA8C();
          }

          if (cnprint::CNPrinter::GetLogLevel(v28) <= 1)
          {
            LOWORD(v81[0]) = 2;
            v80 = 1;
            v47 = *(&v58 + 1) + v58;
            v48 = *(this + 7719) + *(this + 7718);
            cnprint::CNPrinter::Print(v81, &v80, "MeasurementAccumulator::AddMeasurement() failed - Measurement too old,t_meas,%.3lf,t_start,%.3lf", v29, v30, v31, v32, v33, SLOBYTE(v47));
          }
        }
      }

      else if (cnprint::CNPrinter::GetLogLevel(v15) <= 1)
      {
        LOWORD(v81[0]) = 2;
        v80 = 1;
        v45 = v6 + v4;
        cnprint::CNPrinter::Print(v81, &v80, "MeasurementAccumulator::AddMeasurement() failed - Not initialized,t_meas,%.3lf", v18, v19, v20, v21, v22, SLOBYTE(v45));
      }

      LOWORD(v81[0]) = 12;
      v80 = 4;
      v74.i64[0] = (*(*a2 + 16))(a2);
      v74.i64[1] = v34;
      v35 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, &v74, "Could not add measurement - device attitude-change");
      if (*(this + 2735) >= 0)
      {
        LOBYTE(v41) = v35;
      }

      else
      {
        v41 = *(this + 339);
      }

      cnprint::CNPrinter::Print(v81, &v80, "%s", v36, v37, v38, v39, v40, v41);
      v16 = 0xFFFFFFFFLL;
      v49[0] = &unk_1F4CE4300;
      if (v50 < 0)
      {
        operator delete(v49[2]);
      }
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0xFFFFFFFFLL;
  }

  v42 = *MEMORY[0x1E69E9840];
  return v16;
}

void sub_1D0D5AF28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a2)
  {
    sub_1D0C537DC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0D5AF90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x1EEE9AC00](a1, a2, a3, a4);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  if ((atomic_load_explicit(&qword_1EE053B30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE053B30))
  {
    v70 = 0x1300000001;
    v68 = &unk_1F4CE2330;
    v71 = &v72;
    v69 = xmmword_1D0E844E0;
    v49 = xmmword_1D0E84440;
    v50 = xmmword_1D0E7DD30;
    v51 = v74;
    v52 = 13;
    v53 = vdupq_n_s64(0x13uLL);
    v54 = vdupq_n_s64(4uLL);
    do
    {
      if (vuzp1_s16(vmovn_s64(vcgtq_u64(v53, v50)), *v49.i8).u8[0])
      {
        *(v51 - 3) = v52 - 13;
      }

      if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x13uLL), *&v50)), *&v49).i8[2])
      {
        *(v51 - 2) = v52 - 12;
      }

      if (vuzp1_s16(*&v49, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x13uLL), *&v49))).i32[1])
      {
        *(v51 - 1) = v52 - 11;
        *v51 = v52 - 10;
      }

      v49 = vaddq_s64(v49, v54);
      v50 = vaddq_s64(v50, v54);
      v52 += 4;
      v51 += 4;
    }

    while (v52 != 33);
    sub_1D0D77214(&unk_1EE054388, &v68);
    __cxa_atexit(sub_1D0D7B720, &unk_1EE054388, &dword_1D0B71000);
    __cxa_guard_release(&qword_1EE053B30);
  }

  if ((atomic_load_explicit(&qword_1EE053B38, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE053B38))
  {
    v55 = 0;
    v70 = 0x1A00000001;
    v68 = &unk_1F4CE1FD0;
    v71 = &v72;
    v69 = xmmword_1D0E844D0;
    v56 = xmmword_1D0E7DD30;
    v57 = vdupq_n_s64(2uLL);
    v58 = vdupq_n_s64(0x12uLL);
    do
    {
      if (vmovn_s64(vcgtq_u64(v58, v56)).u8[0])
      {
        *(&v72 + v55) = v55;
      }

      if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0x12uLL), *&v56)).i32[1])
      {
        *(&v72 + v55 + 1) = v55 + 1;
      }

      v55 += 2;
      v56 = vaddq_s64(v56, v57);
    }

    while (v55 != 18);
    sub_1D0D741B0(&unk_1EE054700, &v68);
    __cxa_atexit(sub_1D0D73024, &unk_1EE054700, &dword_1D0B71000);
    __cxa_guard_release(&qword_1EE053B38);
  }

  if ((atomic_load_explicit(&qword_1EE053B40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE053B40))
  {
    v70 = 0x1A00000001;
    v68 = &unk_1F4CE1FD0;
    v71 = &v72;
    v69 = xmmword_1D0E7F310;
    v72 = 0x700000006;
    v73 = 8;
    sub_1D0D741B0(&unk_1EE054790, &v68);
    __cxa_atexit(sub_1D0D73024, &unk_1EE054790, &dword_1D0B71000);
    __cxa_guard_release(&qword_1EE053B40);
  }

  if ((atomic_load_explicit(&qword_1EE053B48, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE053B48))
  {
    v70 = 0x300000001;
    v68 = &unk_1F4CDF0C8;
    v71 = &v72;
    v69 = xmmword_1D0E7F310;
    v72 = 0x100000000;
    v73 = 2;
    sub_1D0D2CF48(&v68, &unk_1EE053EC0);
    __cxa_atexit(sub_1D0D26840, &unk_1EE053EC0, &dword_1D0B71000);
    __cxa_guard_release(&qword_1EE053B48);
  }

  if (!v10 || (v15 = **v10, (v16 = __dynamic_cast(v10, &unk_1F4CE42A0, &unk_1F4CE1150, 0)) == 0))
  {
    LOWORD(v68) = 12;
    v59[0] = 4;
    v36 = MEMORY[0x30] + MEMORY[0x28];
LABEL_31:
    cnprint::CNPrinter::Print(&v68, v59, "time,%.3lf,h-function failure on line %d: %s() %s", v4, v5, v6, v7, v8, SLOBYTE(v36));
    return 0xFFFFFFFFLL;
  }

  v18 = v16;
  v20 = *(v14 + 8);
  v19 = *(v14 + 12);
  if (v20 <= v19)
  {
    v21 = *(v14 + 12);
  }

  else
  {
    v21 = *(v14 + 8);
  }

  if (!v20 || !v19 || v21 != 26 || ((v23 = *(v12 + 8), v22 = *(v12 + 12), v23 <= v22) ? (v24 = *(v12 + 12)) : (v24 = *(v12 + 8)), !v23 || !v22 || v24 != 3))
  {
    LOWORD(v68) = 12;
    v59[0] = 4;
    v36 = *(v16 + 6) + *(v16 + 5);
    goto LABEL_31;
  }

  if (!*(v16 + 7))
  {
    LOWORD(v68) = 12;
    v59[0] = 4;
    v36 = *(v16 + 6) + *(v16 + 5);
    goto LABEL_31;
  }

  v17.i64[0] = *(v16 + 12);
  if ((v17.i64[0] <= -1 || ((v17.i64[0] & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (v17.i64[0] - 1) >= 0xFFFFFFFFFFFFFLL)
  {
    LOWORD(v68) = 12;
    v59[0] = 4;
    v36 = *(v16 + 6) + *(v16 + 5);
    goto LABEL_31;
  }

  v99[0] = *(v16 + 40);
  *&v69 = 0;
  v68 = 0;
  *v27.i64 = CNTimeSpan::SetTimeSpan(&v68, 0, v17, v99[0]);
  *&v98 = CNTimeSpan::operator-(v99, &v68, v27, v28);
  *(&v98 + 1) = v29;
  v30 = v18[9];
  v97 = *v18[8];
  sub_1D0D96A9C(&v95, v30);
  v31 = v18[7];
  v92 = 0x10000001CLL;
  v91 = xmmword_1D0E844F0;
  v90 = &unk_1F4CE0A20;
  v93 = &v94;
  if (sub_1D0D85A88(v99, &v97, v96, v31, v18[11], &v90))
  {
    sub_1D0D85A30((v18 + 5), "could not integrate full states", "h_DeviceAttitudeChange_RavenPNT", 2456, v32, v33, v34, v35);
  }

  else
  {
    sub_1D0D752A8(v89);
    sub_1D0D98740(&v68, v89, &unk_1EE054388);
    sub_1D0D8874C(&v68, SDWORD2(v91), v93);
    v86 = 0x100000013;
    v84 = &unk_1F4CE40B8;
    v85 = xmmword_1D0E844F0;
    v87 = &v88;
    v82[0] = vdupq_n_s64(0x7FF8000000000000uLL);
    v82[1] = v82[0];
    v82[2] = v82[0];
    v82[3] = v82[0];
    v82[4] = v82[0];
    v82[5] = v82[0];
    v82[6] = v82[0];
    v82[7] = v82[0];
    v82[8] = v82[0];
    v82[9] = v82[0];
    v82[10] = v82[0];
    v82[11] = v82[0];
    v82[12] = v82[0];
    v82[13] = v82[0];
    v82[14] = v82[0];
    v82[15] = v82[0];
    v82[16] = v82[0];
    v82[17] = v82[0];
    v82[18] = v82[0];
    v82[19] = v82[0];
    v82[20] = v82[0];
    v82[21] = v82[0];
    v82[22] = v82[0];
    v82[23] = v82[0];
    v82[24] = v82[0];
    v82[25] = v82[0];
    v82[26] = v82[0];
    v82[27] = v82[0];
    v82[28] = v82[0];
    v82[29] = v82[0];
    v82[30] = v82[0];
    v82[31] = v82[0];
    v82[32] = v82[0];
    v82[33] = v82[0];
    v82[34] = v82[0];
    v83 = 0x7FF8000000000000;
    sub_1D0D85CD4(v89, v14, &v84, v82);
    v79 = 0x10000001CLL;
    v77 = &unk_1F4CE0A20;
    v78 = xmmword_1D0E844F0;
    v80 = &v81;
    if (sub_1D0D85A88(&v98, &v97, v96, v31, v18[11], &v77))
    {
      sub_1D0D85A30((v18 + 5), "could not integrate full states", "h_DeviceAttitudeChange_RavenPNT", 2481, v38, v39, v40, v41);
    }

    else
    {
      sub_1D0D7CFF0(&v68);
      v74[404] = 0;
      v68 = &unk_1F4CE3F68;
      v75 = 0u;
      v76 = 0u;
      sub_1D0D5224C(v67);
      if (sub_1D0D8A408(v31, v67))
      {
        v46 = 2495;
        v47 = "could not get integrator configuration";
      }

      else
      {
        if (!sub_1D0D53D5C(&v68, v67))
        {
          v65[28] = &v68;
          v65[29] = v99;
          v48 = v18[11];
          v65[30] = &v90;
          v65[31] = v48;
          v66 = v98;
          sub_1D0D8A47C(v65, 15);
          v62 = 0x10000001ALL;
          v60[6] = &unk_1F4CE3E48;
          v61 = xmmword_1D0E843B0;
          v63 = &v64;
          sub_1D0D87FCC(v60);
        }

        v46 = 2500;
        v47 = "could not set integrator configuration";
      }

      sub_1D0D85A30((v18 + 5), v47, "h_DeviceAttitudeChange_RavenPNT", v46, v42, v43, v44, v45);
      sub_1D0D4F978(&v68);
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_1D0D5BFA8(uint64_t a1)
{
  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

uint64_t raven::RavenPNTEstimator::HandleEvent(raven::RavenPNTEstimator *this, const raven::AttitudeEvent *a2)
{
  if (*(this + 57) != 1)
  {
    return 0xFFFFFFFFLL;
  }

  v17 = v2;
  v18 = v3;
  if (*(a2 + 217) == 1)
  {
    sub_1D0D8BC74(this + 19656, a2);
    return 0;
  }

  else
  {
    if (cnprint::CNPrinter::GetLogLevel(this) <= 1)
    {
      v16 = 12;
      v15 = 1;
      v14[0] = (*(*a2 + 16))(a2);
      v14[1] = v7;
      cnprint::CNLogFormatter::FormatGeneral(this + 2712, v14, "Unexpected attitude rotation type,%d", *(a2 + 217));
      if (*(this + 2735) >= 0)
      {
        LOBYTE(v13) = this - 104;
      }

      else
      {
        v13 = *(this + 339);
      }

      cnprint::CNPrinter::Print(&v16, &v15, "%s", v8, v9, v10, v11, v12, v13);
    }

    return 0xFFFFFFFFLL;
  }
}

void raven::RavenPNTEstimator::ResetOscillatorStates(raven::RavenPNTEstimator *this)
{
  *(this + 7) = *(this + 5);
  v207 = 0x200000002;
  v205 = &unk_1F4CE0268;
  v208 = v209;
  v206 = xmmword_1D0E83F70;
  v209[2] = 0.0;
  v209[1] = 0.0;
  v2 = *(this + 146);
  v3 = *(v2 + 1256) * *(v2 + 1256);
  v4 = *(v2 + 1264) * *(v2 + 1264);
  v209[0] = v3;
  v209[3] = v4;
  v5 = *(this + 1859);
  *(v5 + 152) = 0;
  *(v5 + 160) = 0;
  if ((atomic_load_explicit(&qword_1EE053B00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE053B00))
  {
    v155 = 0x200000001;
    *v154 = &unk_1F4CE2060;
    v156 = &v157;
    *&v154[8] = xmmword_1D0E84500;
    v157 = 0x1300000012;
    sub_1D0D751D4(v154, &unk_1EE053C68);
    __cxa_atexit(sub_1D0D7527C, &unk_1EE053C68, &dword_1D0B71000);
    __cxa_guard_release(&qword_1EE053B00);
  }

  if ((atomic_load_explicit(&qword_1EE053B08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE053B08))
  {
    v155 = 0x1A00000001;
    *v154 = &unk_1F4CE1FD0;
    v156 = &v157;
    *&v154[8] = xmmword_1D0E84580;
    v134 = xmmword_1D0E84440;
    v135 = xmmword_1D0E7DD30;
    v136 = v158;
    v137 = 13;
    v138 = vdupq_n_s64(0x1AuLL);
    v139 = vdupq_n_s64(4uLL);
    do
    {
      if (vuzp1_s16(vmovn_s64(vcgtq_u64(v138, v135)), *v134.i8).u8[0])
      {
        *(v136 - 3) = v137 - 13;
      }

      if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1AuLL), *&v135)), *&v134).i8[2])
      {
        *(v136 - 2) = v137 - 12;
      }

      if (vuzp1_s16(*&v134, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1AuLL), *&v134))).i32[1])
      {
        *(v136 - 1) = v137 - 11;
        *v136 = v137 - 10;
      }

      v134 = vaddq_s64(v134, v139);
      v135 = vaddq_s64(v135, v139);
      v137 += 4;
      v136 += 4;
    }

    while (v137 != 41);
    sub_1D0D741B0(&unk_1EE054670, v154);
    __cxa_atexit(sub_1D0D73024, &unk_1EE054670, &dword_1D0B71000);
    __cxa_guard_release(&qword_1EE053B08);
  }

  v177 = 0x1A00000002;
  v175 = &unk_1F4CE2270;
  v178 = &v179;
  v176 = xmmword_1D0E84590;
  v193 = 0u;
  v194 = 0u;
  v195 = 0u;
  v196 = 0u;
  v197 = 0u;
  v198 = 0u;
  v199 = 0u;
  v200 = 0u;
  v201 = 0u;
  v202 = 0u;
  v203 = 0u;
  v204 = 0u;
  v179 = 0u;
  v180 = 0u;
  v181 = 0u;
  v182 = 0u;
  v183 = 0u;
  v184 = 0u;
  v185 = 0u;
  v186 = 0u;
  v187 = 0u;
  v188 = 0u;
  v189 = 0u;
  v190 = 0u;
  v191 = 0u;
  v192 = 0u;
  v155 = 0x1A00000002;
  *&v154[8] = xmmword_1D0E84590;
  v156 = &v157;
  *v154 = &unk_1F4CE2210;
  v159 = this + 15104;
  v162 = 0x100000002;
  v161 = xmmword_1D0E83F60;
  v160 = &unk_1F4CE0EA8;
  v163 = &v164;
  v167 = 0x10000001ALL;
  v165 = &unk_1F4CE3E90;
  v166 = xmmword_1D0E843B0;
  v168 = &v169;
  sub_1D0B9F5D4(&v160, &unk_1EE053C68);
  sub_1D0B9F5D4(&v165, &unk_1EE054670);
  v6 = DWORD2(v161);
  v7 = DWORD2(v166);
  *&v154[8] = DWORD2(v161);
  *&v154[12] = DWORD2(v166);
  *&v154[16] = DWORD2(v166) * DWORD2(v161);
  *&v154[20] = DWORD2(v161);
  if (DWORD2(v166))
  {
    v8 = 0;
    v9 = 0;
    v10 = *(this + 3781);
    v11 = *(this + 1892);
    v12 = v168;
    v13 = v163;
    v14 = v156;
    do
    {
      if (v6)
      {
        v15 = *(v12 + v9) * v10;
        v16 = v13;
        v17 = v8;
        v18 = v6;
        do
        {
          v19 = *v16++;
          v14[v17++] = *(v11 + 8 * (v19 + v15));
          --v18;
        }

        while (v18);
      }

      ++v9;
      v8 += v6;
    }

    while (v9 != v7);
  }

  if (v6 != v176)
  {
    goto LABEL_119;
  }

  if (v7 != DWORD1(v176))
  {
    goto LABEL_120;
  }

  if (v7)
  {
    v20 = 0;
    v21 = 0;
    v22 = v178;
    v23 = v163;
    v24 = v168;
    v25 = v159;
    v26 = v156;
    do
    {
      if (v6)
      {
        v27 = *(v25 + 5) * *(v24 + v21);
        v28 = *(v25 + 4);
        v29 = v20;
        v30 = v23;
        v31 = v6;
        do
        {
          v32 = *(v22 + v29);
          v33 = *v30++;
          *(v28 + 8 * (v33 + v27)) = v32;
          v26[v29++] = v32;
          --v31;
        }

        while (v31);
      }

      ++v21;
      v20 += v6;
    }

    while (v21 != v7);
  }

  v177 = 0x20000001ALL;
  v175 = &unk_1F4CE2300;
  v178 = &v179;
  v176 = xmmword_1D0E845A0;
  v193 = 0u;
  v194 = 0u;
  v195 = 0u;
  v196 = 0u;
  v197 = 0u;
  v198 = 0u;
  v199 = 0u;
  v200 = 0u;
  v201 = 0u;
  v202 = 0u;
  v203 = 0u;
  v204 = 0u;
  v179 = 0u;
  v180 = 0u;
  v181 = 0u;
  v182 = 0u;
  v183 = 0u;
  v184 = 0u;
  v185 = 0u;
  v186 = 0u;
  v187 = 0u;
  v188 = 0u;
  v189 = 0u;
  v190 = 0u;
  v191 = 0u;
  v192 = 0u;
  v155 = 0x20000001ALL;
  *&v154[8] = xmmword_1D0E845A0;
  v156 = &v157;
  *v154 = &unk_1F4CE22A0;
  v159 = this + 15104;
  v162 = 0x10000001ALL;
  v161 = xmmword_1D0E843B0;
  v160 = &unk_1F4CE3E90;
  v163 = &v164;
  v172 = 0x100000002;
  v170 = &unk_1F4CE0EA8;
  v171 = xmmword_1D0E83F60;
  v173 = &v174;
  sub_1D0B9F5D4(&v160, &unk_1EE054670);
  sub_1D0B9F5D4(&v170, &unk_1EE053C68);
  v34 = DWORD2(v161);
  v35 = DWORD2(v171);
  *&v154[8] = DWORD2(v161);
  *&v154[12] = DWORD2(v171);
  *&v154[16] = DWORD2(v171) * DWORD2(v161);
  *&v154[20] = DWORD2(v161);
  if (DWORD2(v171))
  {
    v36 = 0;
    v37 = 0;
    v38 = *(this + 3781);
    v39 = *(this + 1892);
    v40 = v173;
    v41 = v163;
    v42 = v156;
    do
    {
      if (v34)
      {
        v43 = *(v40 + v37) * v38;
        v44 = v41;
        v45 = v36;
        v46 = v34;
        do
        {
          v47 = *v44++;
          v42[v45++] = *(v39 + 8 * (v47 + v43));
          --v46;
        }

        while (v46);
      }

      ++v37;
      v36 += v34;
    }

    while (v37 != v35);
  }

  if (v34 != v176)
  {
LABEL_119:
    __assert_rtn("operator=", "cnsubmatrix.h", 376, "this->num_rows_ == A.num_rows_");
  }

  if (v35 != DWORD1(v176))
  {
LABEL_120:
    __assert_rtn("operator=", "cnsubmatrix.h", 377, "this->num_cols_ == A.num_cols_");
  }

  if (v35)
  {
    v48 = 0;
    v49 = 0;
    v50 = v178;
    v51 = v163;
    v52 = v173;
    v53 = v159;
    v54 = v156;
    do
    {
      if (v34)
      {
        v55 = *(v53 + 5) * *(v52 + v49);
        v56 = *(v53 + 4);
        v57 = v48;
        v58 = v51;
        v59 = v34;
        do
        {
          v60 = *(v50 + v57);
          v61 = *v58++;
          *(v56 + 8 * (v61 + v55)) = v60;
          v54[v57++] = v60;
          --v59;
        }

        while (v59);
      }

      ++v49;
      v48 += v34;
    }

    while (v49 != v35);
  }

  v62 = *(this + 3781);
  v63 = *(this + 1892);
  *(v63 + 152 * v62 + 152) = v3;
  *(v63 + 160 * v62 + 160) = v4;
  v157 = 0x1300000012;
  v151 = 0x100000002;
  v149[1] = 0;
  v149[2] = &unk_1F4CE0EA8;
  v150 = xmmword_1D0E83F60;
  v152 = &v153;
  v153 = 0x1300000012;
  v147 = 0x100000002;
  v145 = &unk_1F4CE0220;
  v146 = xmmword_1D0E83F60;
  v148 = v149;
  v149[0] = 0;
  v217 = 0x200000002;
  v216 = xmmword_1D0E83F70;
  v215 = &unk_1F4CE0268;
  v218 = &v219;
  v154[0] = 0;
  sub_1D0B9F748(&v205, &v215, v154);
  v222 = 0x200000002;
  v220 = &unk_1F4CE0268;
  v221 = xmmword_1D0E83F70;
  v223 = v224;
  v212 = 0x100000002;
  v211 = xmmword_1D0E83F60;
  v210 = &unk_1F4CE0EA8;
  v213 = &v214;
  v155 = 0x100000008;
  *&v154[8] = xmmword_1D0E84520;
  *v154 = &unk_1F4CE4320;
  v156 = &v157;
  sub_1D0B9F868(&v215, &v210, v154, &v220);
  v64 = DWORD1(v221);
  v65 = v221;
  v177 = 0x200000002;
  v175 = &unk_1F4CE0268;
  v178 = &v179;
  *&v176 = __PAIR64__(v221, DWORD1(v221));
  DWORD2(v176) = v221 * DWORD1(v221);
  HIDWORD(v176) = DWORD1(v221);
  if (DWORD1(v221))
  {
    v66 = 0;
    v67 = 0;
    v68 = HIDWORD(v221);
    v69 = v223;
    do
    {
      v70 = v66;
      v71 = v67;
      for (i = v65; i; --i)
      {
        *(&v179 + v71) = *&v69[2 * v70];
        v71 += v64;
        ++v70;
      }

      ++v67;
      v66 += v68;
    }

    while (v67 != v64);
  }

  v212 = 0x100000002;
  v211 = xmmword_1D0E83F60;
  v210 = &unk_1F4CE0220;
  v213 = &v214;
  v155 = 0x200000002;
  *&v154[8] = xmmword_1D0E83F70;
  *v154 = &unk_1F4CE0268;
  v156 = &v157;
  v142 = 0x200000002;
  v140 = &unk_1F4CE0268;
  v141 = xmmword_1D0E83F70;
  v143 = &v144;
  sub_1D0B9FACC(&v175, &v210, v154, &v140);
  if (v150 <= DWORD1(v150))
  {
    v73 = DWORD1(v150);
  }

  else
  {
    v73 = v150;
  }

  if (DWORD1(v150))
  {
    v74 = v150 == 0;
  }

  else
  {
    v74 = 1;
  }

  if (v74)
  {
    v75 = 0;
  }

  else
  {
    v75 = v73;
  }

  v155 = 0x100000002;
  *&v154[8] = xmmword_1D0E83F60;
  *v154 = &unk_1F4CE0220;
  v156 = &v157;
  sub_1D0B89390(&v140, &v145, v154);
  v76 = sub_1D0D96B84(&v175, v154);
  if (!*(this + 4091))
  {
    sub_1D0B894B0(this + 15808, this + 15264);
    sub_1D0B894B0(this + 16056, this + 15512);
    *&v76 = sub_1D0B894B0(this + 16104, this + 15560).n128_u64[0];
  }

  *(this + 4091) = 1;
  if (v150 && DWORD1(v150))
  {
    *(this + 16360) = 0;
    v77 = *(this + 3954);
    v78 = *(this + 3955);
    if (v77 <= v78)
    {
      v79 = *(this + 3955);
    }

    else
    {
      v79 = *(this + 3954);
    }

    if (v78)
    {
      v80 = v77 == 0;
    }

    else
    {
      v80 = 1;
    }

    if (v80)
    {
      v81 = 0;
    }

    else
    {
      v81 = v79;
    }

    if (v75 >= 1)
    {
      v82 = 0;
      v83 = (this + 16528);
      do
      {
        v84 = *(v152 + v82);
        if (v84 < 0 || v84 >= v81)
        {
          *v154 = 2;
          LOBYTE(v220) = 4;
          cnprint::CNLogFormatter::FormatGeneral(v83, "ResetStates(): states must contain valid indices into x, Rxx, and zx.", v76);
          if (*(this + 16551) >= 0)
          {
            LOBYTE(v90) = this - 112;
          }

          else
          {
            v90 = *v83;
          }

          cnprint::CNPrinter::Print(v154, &v220, "%s", v85, v86, v87, v88, v89, v90);
        }

        v82 += 4;
      }

      while (4 * v75 != v82);
    }

    v155 = 0x1A00000001;
    *v154 = &unk_1F4CE1FD0;
    v156 = &v157;
    if (v81 == 1)
    {
      v98 = 0;
      *&v101 = 0x100000001;
      *(&v101 + 1) = 0x100000001;
      *&v154[8] = v101;
      LODWORD(v157) = 0;
      v99 = 1;
      v100 = 1;
    }

    else if (v81 <= 0)
    {
      v99 = 0;
      v100 = 0;
      *&v154[8] = 0;
      *&v154[16] = 0;
      v98 = 1;
    }

    else
    {
      v91 = 0;
      *&v154[12] = v81;
      *&v154[16] = v81;
      *&v154[20] = 1;
      v92 = vdupq_n_s64(v81 - 1);
      v93 = xmmword_1D0E84440;
      v94 = xmmword_1D0E7DD30;
      v95 = vdupq_n_s64(4uLL);
      v96 = v158;
      *&v154[8] = 1;
      do
      {
        v97 = vmovn_s64(vcgeq_u64(v92, v94));
        if (vuzp1_s16(v97, *v92.i8).u8[0])
        {
          *(v96 - 3) = v91;
        }

        if (vuzp1_s16(v97, *&v92).i8[2])
        {
          *(v96 - 2) = v91 + 1;
        }

        if (vuzp1_s16(*&v92, vmovn_s64(vcgeq_u64(v92, *&v93))).i32[1])
        {
          *(v96 - 1) = v91 + 2;
          *v96 = v91 + 3;
        }

        v91 += 4;
        v93 = vaddq_s64(v93, v95);
        v94 = vaddq_s64(v94, v95);
        v96 += 4;
      }

      while (((v81 + 3) & 0xFFFFFFFC) != v91);
      v98 = 0;
      v99 = 1;
      v100 = v81;
    }

    v222 = 0x10000001ALL;
    v220 = &unk_1F4CE3E90;
    v223 = v224;
    *&v221 = __PAIR64__(v99, v100);
    DWORD2(v221) = v100 * v99;
    HIDWORD(v221) = v100;
    if (v100)
    {
      v102 = 0;
      for (j = 0; j != v100; ++j)
      {
        if ((v98 & 1) == 0)
        {
          v104 = 0;
          do
          {
            v224[j + HIDWORD(v221) * v104] = *&v158[4 * v102 - 4 + 4 * v104];
            ++v104;
          }

          while (v99 != v104);
        }

        v102 += v99;
      }
    }

    if (v75 >= 1)
    {
      v105 = v152;
      v106 = v75;
      do
      {
        v107 = *v105++;
        v224[v107] = -1;
        --v106;
      }

      while (v106);
    }

    sub_1D0D95644(&v215, v81);
    v155 = 0x1A00000001;
    *v154 = &unk_1F4CE1FD0;
    v156 = &v157;
    if (v75 == 1)
    {
      v108 = 0;
      *&v109 = 0x100000001;
      *(&v109 + 1) = 0x100000001;
      *&v154[8] = v109;
      LODWORD(v157) = 0;
      v110 = 1;
      v111 = 1;
    }

    else if (v75 <= 0)
    {
      v110 = 0;
      v111 = 0;
      *&v154[8] = 0;
      *&v154[16] = 0;
      v108 = 1;
    }

    else
    {
      v112 = 0;
      *&v154[12] = v75;
      *&v154[16] = v75;
      *&v154[20] = 1;
      v113 = vdupq_n_s64(v75 - 1);
      v114 = xmmword_1D0E84440;
      v115 = xmmword_1D0E7DD30;
      v116 = vdupq_n_s64(4uLL);
      v117 = v158;
      *&v154[8] = 1;
      do
      {
        v118 = vmovn_s64(vcgeq_u64(v113, v115));
        if (vuzp1_s16(v118, *v113.i8).u8[0])
        {
          *(v117 - 3) = v112;
        }

        if (vuzp1_s16(v118, *&v113).i8[2])
        {
          *(v117 - 2) = v112 + 1;
        }

        if (vuzp1_s16(*&v113, vmovn_s64(vcgeq_u64(v113, *&v114))).i32[1])
        {
          *(v117 - 1) = v112 + 2;
          *v117 = v112 + 3;
        }

        v112 += 4;
        v114 = vaddq_s64(v114, v116);
        v115 = vaddq_s64(v115, v116);
        v117 += 4;
      }

      while (((v75 + 3) & 0xFFFFFFFC) != v112);
      v108 = 0;
      v110 = 1;
      v111 = v75;
    }

    v212 = 0x10000001ALL;
    v210 = &unk_1F4CE3E90;
    v213 = &v214;
    *&v211 = __PAIR64__(v110, v111);
    DWORD2(v211) = v111 * v110;
    HIDWORD(v211) = v111;
    if (v111)
    {
      v119 = 0;
      for (k = 0; k != v111; ++k)
      {
        if ((v108 & 1) == 0)
        {
          v121 = 0;
          do
          {
            *(&v214 + k + HIDWORD(v211) * v121) = *&v158[4 * v119 - 4 + 4 * v121];
            ++v121;
          }

          while (v110 != v121);
        }

        v119 += v110;
      }
    }

    sub_1D0D956F4(v154, &v215, &v210);
    sub_1D0D94F80(v154, SDWORD2(v150), v152);
    if (v81 > v75)
    {
      LODWORD(v122) = 0;
      v123 = v223;
      v124 = v218;
      v125 = v75;
      do
      {
        v122 = v122;
        do
        {
          v126 = v123[v122++];
        }

        while (v126 == -1);
        *(v124 + v125++) = v126;
      }

      while (v125 != v81);
    }

    sub_1D0D95034(this + 15256, v81, &v215);
  }

  sub_1D0B894B0(this + 15264, this + 15808);
  sub_1D0B894B0(this + 15512, this + 16056);
  sub_1D0B894B0(this + 15560, this + 16104);
  *(this + 4091) = 1;
  LOWORD(v175) = 12;
  LOBYTE(v220) = 2;
  *v154 = *(this + 5);
  v127 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, v154, "Resetting estimator oscillator states.");
  if (*(this + 2735) >= 0)
  {
    LOBYTE(v133) = v127;
  }

  else
  {
    v133 = *(this + 339);
  }

  cnprint::CNPrinter::Print(&v175, &v220, "%s", v128, v129, v130, v131, v132, v133);
}

uint64_t raven::RavenPNTEstimator::UpdateClockOffsetEstimateIfNecessary(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 8) != 1 || *(a2 + 24) != 1)
  {
    v16 = *(*(a1 + 14872) + 152) * 0.001;
    v17 = round(v16);
    if (fabs(v17) >= 2.22044605e-16)
    {
      if (cnprint::CNPrinter::GetLogLevel(a1) <= 1)
      {
        v27 = 12;
        v26 = 1;
        v19 = cnprint::CNLogFormatter::FormatGeneral(a1 + 2712, a3, "clock offset exceeds 0.5 ms,%.3lf ms", v16);
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

      v15 = v17 * -0.001;
      v14 = a1;
      goto LABEL_18;
    }

    return 1;
  }

  v5 = *(a2 + 16);
  if (vabdd_f64(*a2, v5) < 2.22044605e-16)
  {
    return 1;
  }

  v6 = *a2 - v5;
  if (cnprint::CNPrinter::GetLogLevel(a1) <= 1)
  {
    v29 = 12;
    v28 = 1;
    v7 = cnprint::CNLogFormatter::FormatGeneral(a1 + 2712, a3, "clock jump detected");
    if (*(a1 + 2735) >= 0)
    {
      LOBYTE(v13) = v7;
    }

    else
    {
      v13 = *(a1 + 2712);
    }

    cnprint::CNPrinter::Print(&v29, &v28, "%s", v8, v9, v10, v11, v12, v13);
  }

  v14 = a1;
  v15 = v6;
LABEL_18:

  return raven::RavenPNTEstimator::AdjustClockOffset(v14, a3, v15);
}

uint64_t sub_1D0D5D83C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x100000054;
  *a1 = &unk_1F4CE12E0;
  *(a1 + 8) = xmmword_1D0E845B0;
  *(a1 + 32) = a1 + 40;
  return sub_1D0D8C29C(a2, a3, a1);
}

uint64_t sub_1D0D5D8C8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v2 = *(a2 + 12);
  *(a1 + 24) = 0x10000001CLL;
  *a1 = &unk_1F4CE1250;
  *(a1 + 8) = v2;
  *(a1 + 12) = v3;
  *(a1 + 16) = v3 * v2;
  *(a1 + 20) = v2;
  *(a1 + 32) = a1 + 40;
  return sub_1D0D2EF0C(a2, a1);
}

uint64_t sub_1D0D5D954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x100000038;
  *a1 = &unk_1F4CE1298;
  *(a1 + 8) = xmmword_1D0E845C0;
  *(a1 + 32) = a1 + 40;
  return sub_1D0D8C29C(a2, a3, a1);
}

void *sub_1D0D5DA60(void *result)
{
  result[34] = &unk_1F4CDEAF8;
  *result = &unk_1F4CD5E28;
  return result;
}

void *sub_1D0D5DAA0(void *a1)
{
  *a1 = &unk_1F4CE1370;
  a1[26] = &unk_1F4CDEAF8;
  a1[7] = &unk_1F4CDEAF8;
  return sub_1D0D855A8(a1);
}

void sub_1D0D5DB00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 16);
  sub_1D0BA1824(&v25, a2);
  *&v26 = v5 | 0x100000000;
  DWORD2(v26) = v5;
  HIDWORD(v26) = v5;
  sub_1D0B894B0(a1 + 8, &v25);
  v17 = 0x800000008;
  v15 = &unk_1F4CE43B0;
  v16 = xmmword_1D0E84510;
  v18 = v19;
  LOBYTE(v25) = 0;
  sub_1D0B9F748(a3, &v15, &v25);
  v27 = 0x800000008;
  v26 = xmmword_1D0E84510;
  v25 = &unk_1F4CE43B0;
  v28 = v29;
  v32 = 0x100000008;
  v31 = xmmword_1D0E84520;
  v30 = &unk_1F4CE43F8;
  v33 = v34;
  v22 = 0x100000020;
  v20 = &unk_1F4CE3988;
  v21 = xmmword_1D0E84540;
  v23 = v24;
  sub_1D0B9F868(&v15, &v30, &v20, &v25);
  v6 = DWORD1(v26);
  v7 = v26;
  v22 = 0x800000008;
  v20 = &unk_1F4CE43B0;
  v23 = v24;
  *&v21 = __PAIR64__(v26, DWORD1(v26));
  DWORD2(v21) = v26 * DWORD1(v26);
  HIDWORD(v21) = DWORD1(v26);
  if (DWORD1(v26))
  {
    v8 = 0;
    v9 = 0;
    v10 = HIDWORD(v26);
    v11 = v28;
    do
    {
      v12 = v8;
      v13 = v9;
      for (i = v7; i; --i)
      {
        v24[v13] = *&v11[8 * v12];
        v13 += v6;
        ++v12;
      }

      ++v9;
      v8 += v10;
    }

    while (v9 != v6);
  }

  v32 = 0x100000008;
  v31 = xmmword_1D0E84520;
  v30 = &unk_1F4CE4320;
  v33 = v34;
  v27 = 0x800000008;
  v26 = xmmword_1D0E84510;
  v25 = &unk_1F4CE43B0;
  v28 = v29;
  v17 = 0x800000008;
  v15 = &unk_1F4CE43B0;
  v16 = xmmword_1D0E84510;
  v18 = v19;
  sub_1D0B9FACC(&v20, &v30, &v25, &v15);
  sub_1D0B894B0(a1 + 112, &v15);
  v27 = 0x100000008;
  v26 = xmmword_1D0E84520;
  v25 = &unk_1F4CE4320;
  v28 = v29;
  sub_1D0B89390(a1 + 112, a1 + 8, &v25);
  sub_1D0B894B0(a1 + 664, &v25);
  sub_1D0B894B0(a1 + 768, a1 + 8);
  sub_1D0B894B0(a1 + 872, a1 + 112);
  sub_1D0B894B0(a1 + 1424, a1 + 664);
  *(a1 + 1528) = 0x3FF0000000000000;
  *(a1 + 1536) = 0;
  *(a1 + 1540) = 1;
}

double sub_1D0D5DE90@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 24) = 0x100000008;
  *a2 = &unk_1F4CE4320;
  *(a2 + 8) = xmmword_1D0E84520;
  *(a2 + 32) = a2 + 40;
  v2 = 768;
  if (!*(a1 + 1540))
  {
    v2 = 8;
  }

  *&result = sub_1D0B894B0(a2, a1 + v2).n128_u64[0];
  return result;
}

uint64_t sub_1D0D5DF4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = 0x800000008;
  v19 = &unk_1F4CE43B0;
  v20 = xmmword_1D0E84510;
  v22 = &v23;
  if (*(a1 + 1540))
  {
    v16 = 0x800000008;
    v14 = &unk_1F4CE43B0;
    v15 = xmmword_1D0E84510;
    v17 = v18;
    v31 = 0x100000008;
    v30 = xmmword_1D0E84520;
    v29 = &unk_1F4CE43F8;
    v32 = v33;
    v26 = 0x100000020;
    v25 = xmmword_1D0E84540;
    v24 = &unk_1F4CE3988;
    v27 = v28;
    v3 = a1 + 872;
  }

  else
  {
    v16 = 0x800000008;
    v14 = &unk_1F4CE43B0;
    v15 = xmmword_1D0E84510;
    v17 = v18;
    v31 = 0x100000008;
    v30 = xmmword_1D0E84520;
    v29 = &unk_1F4CE43F8;
    v32 = v33;
    v26 = 0x100000020;
    v25 = xmmword_1D0E84540;
    v24 = &unk_1F4CE3988;
    v27 = v28;
    v3 = a1 + 112;
  }

  sub_1D0B9F868(v3, &v29, &v24, &v14);
  sub_1D0B894B0(&v19, &v14);
  v4 = DWORD1(v20);
  v5 = v20;
  v16 = 0x800000008;
  v14 = &unk_1F4CE43B0;
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

  *(a2 + 24) = 0x800000008;
  *a2 = &unk_1F4CE43B0;
  *(a2 + 8) = xmmword_1D0E84510;
  *(a2 + 32) = a2 + 40;
  return sub_1D0B89390(&v19, &v14, a2);
}

uint64_t sub_1D0D5E230(uint64_t a1)
{
  *a1 = &unk_1F4CE07C8;
  *(a1 + 2408) = &unk_1F4CD5E28;
  *(a1 + 2304) = &unk_1F4CD5E28;
  *(a1 + 1752) = &unk_1F4CD5E28;
  return sub_1D0D83C64(a1);
}

uint64_t sub_1D0D5E2B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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

  v13 = !v12 && v11 == 26;
  if (!v13 || ((v15 = *(a2 + 8), v16 = *(a2 + 12), v15 <= v16) ? (v17 = *(a2 + 12)) : (v17 = *(a2 + 8)), v15 ? (v18 = v16 == 0) : (v18 = 1), !v18 ? (v19 = v17 == 1) : (v19 = 0), !v19))
  {
    v99.i16[0] = 12;
    v134[0] = 4;
    v20 = *(a3 + 48) + *(a3 + 40);
LABEL_23:
    cnprint::CNPrinter::Print(&v99, v134, "time,%.3lf,h-function failure on line %d: %s() %s", a4, a5, a6, a7, a8, SLOBYTE(v20));
    return 0xFFFFFFFFLL;
  }

  if (!*(a3 + 512))
  {
    v99.i16[0] = 12;
    v134[0] = 4;
    v20 = *(a3 + 48) + *(a3 + 40);
    goto LABEL_23;
  }

  if ((*(a3 + 128) & 1) == 0)
  {
    v99.i16[0] = 12;
    v134[0] = 4;
    v33 = *(a3 + 48) + *(a3 + 40);
    cnprint::CNPrinter::Print(&v99, v134, "time,%.3lf,h-function failure on line %d: %s() %s", a4, a5, a6, a7, a8, SLOBYTE(v33));
    v99.i16[0] = 12;
    v134[0] = 4;
    v34 = *(a3 + 96) + *(a3 + 88);
    sub_1D0BCFAB8(a3 + 56);
    cnprint::CNPrinter::Print(&v99, v134, "t,%.3lf,%s,TAI time invalid", v35, v36, v37, v38, v39, SLOBYTE(v34));
    return 0xFFFFFFFFLL;
  }

  v136 = *(a3 + 40);
  v135 = **(a3 + 520);
  sub_1D0D96A9C(v134, *(a3 + 528));
  v26 = **(a3 + 536);
  v27 = *(a3 + 512);
  v131 = 0x10000001CLL;
  v130 = xmmword_1D0E843A0;
  v129 = &unk_1F4CE0A20;
  v132 = &v133;
  if (sub_1D0D9046C(&v136, &v135, v134, v27, *(a3 + 544), v26, 1, 1, &v129))
  {
    v99.i16[0] = 12;
    LOBYTE(v124) = 4;
    v77 = *(a3 + 48) + *(a3 + 40);
    cnprint::CNPrinter::Print(&v99, &v124, "time,%.3lf,h-function failure on line %d: %s() %s", v28, v29, v30, v31, v32, SLOBYTE(v77));
    return 0xFFFFFFFFLL;
  }

  v130 = xmmword_1D0E843A0;
  v126 = 0x10000001CLL;
  v124 = &unk_1F4CE0A20;
  v125 = xmmword_1D0E843A0;
  v127 = &v128;
  v99 = vdupq_n_s64(0x7FF8000000000000uLL);
  v100[0] = v99;
  v100[1] = v99;
  v100[2] = v99;
  v100[3] = v99;
  v100[4] = v99;
  v100[5] = v99;
  v100[6] = v99;
  v100[7] = v99;
  v100[8] = v99;
  v100[9] = v99;
  v100[10] = v99;
  v100[11] = v99;
  v101 = v99;
  v102 = v99;
  v103 = v99;
  v104 = v99;
  v105 = v99;
  v106 = v99;
  v107 = v99;
  v108 = v99;
  v109 = v99;
  v110 = v99;
  v111 = v99;
  v112 = v99;
  v113 = v99;
  v114 = v99;
  v115 = v99;
  v116 = v99;
  v117 = v99;
  v118 = v99;
  v119 = v99;
  v120 = v99;
  v121 = v99;
  v122 = v99;
  v123 = 0x7FF8000000000000;
  LOBYTE(v83) = 0;
  if (sub_1D0D8825C(&v129, a1, 0, 1, 1, &v124, &v99, &v83, 0.000000015))
  {
    sub_1D0D85A30(a3 + 40, "could not correct states", "h_GnssPsr_RavenPNT", 5677, v40, v41, v42, v43);
    return 0xFFFFFFFFLL;
  }

  v97 = *v127;
  v98 = *(v127 + 2);
  v96 = &unk_1F4CD5F20;
  v94 = 0.0;
  v95 = &unk_1F4CD5BC8;
  *&v44 = v127[19] * 0.000001;
  v92 = 0u;
  v93 = 0u;
  v90 = *(a3 + 136);
  v45.i64[1] = *(&v90 + 1);
  v91 = 0u;
  v45.i64[0] = *(a3 + 192);
  v83 = 0;
  v84 = 0u;
  v85 = 0u;
  v86 = 0;
  v87 = 0;
  v88 = 0;
  v89 = 0;
  v46 = cnnavigation::GNSSPseudorange(&v90, &v83, &v97, a3 + 296, &v96, &v95, &v94, 1, v45, v44, &v91);
  if (v46)
  {
    sub_1D0D85A30(a3 + 40, "could not compute expected measurement", "h_GnssPsr_RavenPNT", 5706, v47, v48, v49, v50);
    if (cnprint::CNPrinter::GetLogLevel(v51) <= 1)
    {
      v83 = 12;
      LOBYTE(v90) = 1;
      v53 = *(a3 + 88);
      v52 = *(a3 + 96);
      sub_1D0BCFAB8(a3 + 56);
      v78 = v52 + v53;
      cnprint::CNPrinter::Print(&v83, &v90, "t,%.3lf,%s,GNSSPseudorange returned != 0", v54, v55, v56, v57, v58, SLOBYTE(v78));
    }

    return 0xFFFFFFFFLL;
  }

  if (cnprint::CNPrinter::GetLogLevel(v46))
  {
    v59 = v94;
  }

  else
  {
    v83 = 12;
    LOBYTE(v90) = 0;
    v61 = *(a3 + 88);
    v60 = *(a3 + 96);
    sub_1D0BCFAB8(a3 + 56);
    v62 = v60 + v61;
    v59 = v94;
    v82 = *(a3 + 200);
    v81 = *(a3 + 277);
    v80 = *(a3 + 256);
    v79 = *(a3 + 208) - v94;
    cnprint::CNPrinter::Print(&v83, &v90, "t,%.3lf,%s,using PSR,predicted,%.3lf,diff,%.3lf,clockEstMtrs,%.2lf,std,%.2lf,multipath,%hhu,cno,%.1lf", v63, v64, v65, v66, v67, SLOBYTE(v62));
  }

  *&v68 = 0x100000001;
  *(&v68 + 1) = 0x100000001;
  *(a4 + 8) = v68;
  sub_1D0D8A93C(&v83);
  sub_1D0B894B0(a5, &v83);
  v69 = *(a3 + 552);
  if (v69)
  {
    v70 = v100;
    **(a4 + 32) = v59 + *v69 + **(a2 + 32);
    v71 = *(v69 + 40);
    v72 = *(a5 + 32);
    *v72 = *v71 * *v99.i64;
    v75 = *(v69 + 28);
    v73 = *(a5 + 20);
    v72[v73] = v71[v75] * *&v99.i64[1];
    v74 = v71[2 * v75];
    LODWORD(v75) = v73;
  }

  else
  {
    **(a4 + 32) = v59 + **(a2 + 32);
    v76 = *(&v92 + 1);
    v72 = *(a5 + 32);
    *v72 = *v99.i64 * *&v92;
    v75 = *(a5 + 20);
    v72[v75] = *&v99.i64[1] * v76;
    v74 = *v100[0].i64;
    v70 = &v93;
  }

  v72[2 * v75] = v74 * *v70;
  v72[18 * v75] = *&v101.i64[1] * *(&v93 + 1) * 0.000001;
  sub_1D0BBBC94(1u, 1u, &v83);
  sub_1D0B894B0(a6, &v83);
  return 0;
}

uint64_t sub_1D0D5E914(uint64_t a1, double *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
        sub_1D0D8E75C();
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

void sub_1D0D5ED64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  if (a2)
  {
    sub_1D0C537DC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0D5ED90(uint64_t a1)
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

  return a1;
}

uint64_t sub_1D0D5EE64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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

  v13 = !v12 && v11 == 26;
  if (!v13 || ((v15 = *(a2 + 8), v16 = *(a2 + 12), v15 <= v16) ? (v17 = *(a2 + 12)) : (v17 = *(a2 + 8)), v15 ? (v18 = v16 == 0) : (v18 = 1), !v18 ? (v19 = v17 == 1) : (v19 = 0), !v19))
  {
    v105.i16[0] = 12;
    v151[0] = 4;
    v20 = *(a3 + 48) + *(a3 + 40);
LABEL_23:
    cnprint::CNPrinter::Print(&v105, v151, "time,%.3lf,h-function failure on line %d: %s() %s", a4, a5, a6, a7, a8, SLOBYTE(v20));
    return 0xFFFFFFFFLL;
  }

  if (!*(a3 + 512))
  {
    v105.i16[0] = 12;
    v151[0] = 4;
    v20 = *(a3 + 48) + *(a3 + 40);
    goto LABEL_23;
  }

  if ((*(a3 + 128) & 1) == 0)
  {
    v105.i16[0] = 12;
    v151[0] = 4;
    v33 = *(a3 + 48) + *(a3 + 40);
    cnprint::CNPrinter::Print(&v105, v151, "time,%.3lf,h-function failure on line %d: %s() %s", a4, a5, a6, a7, a8, SLOBYTE(v33));
    v105.i16[0] = 12;
    v151[0] = 4;
    v34 = *(a3 + 96) + *(a3 + 88);
    sub_1D0BCFAB8(a3 + 56);
    cnprint::CNPrinter::Print(&v105, v151, "t,%.3lf,%s,TAI time invalid", v35, v36, v37, v38, v39, SLOBYTE(v34));
    return 0xFFFFFFFFLL;
  }

  v153 = *(a3 + 40);
  v152 = **(a3 + 520);
  sub_1D0D96A9C(v151, *(a3 + 528));
  v26 = **(a3 + 536);
  v27 = *(a3 + 512);
  v148 = 0x10000001CLL;
  v147 = xmmword_1D0E843A0;
  v146 = &unk_1F4CE0A20;
  v149 = &v150;
  if (sub_1D0D9046C(&v153, &v152, v151, v27, *(a3 + 544), v26, 1, 1, &v146))
  {
    v105.i16[0] = 12;
    LOBYTE(v141) = 4;
    v76 = *(a3 + 48) + *(a3 + 40);
    cnprint::CNPrinter::Print(&v105, &v141, "time,%.3lf,h-function failure on line %d: %s() %s", v28, v29, v30, v31, v32, SLOBYTE(v76));
    return 0xFFFFFFFFLL;
  }

  v147 = xmmword_1D0E843A0;
  v143 = 0x10000001CLL;
  v141 = &unk_1F4CE0A20;
  v142 = xmmword_1D0E843A0;
  v144 = &v145;
  v105 = vdupq_n_s64(0x7FF8000000000000uLL);
  v106 = v105;
  v107 = v105;
  v108 = v105;
  v109 = v105;
  v110 = v105;
  v111 = v105;
  v112 = v105;
  v113 = v105;
  v114 = v105;
  v115 = v105;
  v116 = v105;
  v117 = v105;
  v118 = v105;
  v119 = v105;
  v120 = v105;
  v121 = v105;
  v122 = v105;
  v123 = v105;
  v124 = v105;
  v125 = v105;
  v126 = v105;
  v127 = v105;
  v128 = v105;
  v129 = v105;
  v130 = v105;
  v131 = v105;
  v132 = v105;
  v133 = v105;
  v134 = v105;
  v135 = v105;
  v136 = v105;
  v137 = v105;
  v138 = v105;
  v139 = v105;
  v140 = 0x7FF8000000000000;
  LOBYTE(v85) = 0;
  if (sub_1D0D8825C(&v146, a1, 0, 1, 1, &v141, &v105, &v85, 0.000000015))
  {
    sub_1D0D85A30(a3 + 40, "could not correct states", "h_GnssDoppler_RavenPNT", 5499, v40, v41, v42, v43);
    return 0xFFFFFFFFLL;
  }

  v103 = *v144;
  v104 = v144[2];
  v101 = *(v144 + 3);
  v102 = v144[5];
  v100 = &unk_1F4CD5F20;
  v98 = 0.0;
  v99 = &unk_1F4CD5BC8;
  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  v92 = *(a3 + 136);
  v45.i64[1] = *(&v92 + 1);
  v93 = 0u;
  v45.i64[0] = *(a3 + 192);
  v46 = *(v144 + 20);
  *v44.i64 = *(v144 + 19) / 1000000.0;
  v85 = 0;
  v86 = 0u;
  v87 = 0u;
  v88 = 0;
  v89 = 0;
  v90 = 0;
  v91 = 0;
  v47 = cnnavigation::GNSSDopplerShift(&v92, &v85, &v103, &v101, a3 + 296, &v100, &v99, 1, v45, v44, v46 / 1000000.0, &v98, 1u, &v93);
  if (v47)
  {
    sub_1D0D85A30(a3 + 40, "could not compute expected measurement", "h_GnssDoppler_RavenPNT", 5536, v48, v49, v50, v51);
    if (cnprint::CNPrinter::GetLogLevel(v52) <= 1)
    {
      v85 = 12;
      LOBYTE(v92) = 1;
      v54 = *(a3 + 88);
      v53 = *(a3 + 96);
      sub_1D0BCFAB8(a3 + 56);
      v77 = v53 + v54;
      cnprint::CNPrinter::Print(&v85, &v92, "t,%.3lf,%s,GNSSDopplerShift returned != 0", v55, v56, v57, v58, v59, SLOBYTE(v77));
    }

    return 0xFFFFFFFFLL;
  }

  v60 = -299792458.0 / *(a3 + 192);
  v61 = v98 * v60;
  if (!cnprint::CNPrinter::GetLogLevel(v47))
  {
    v85 = 12;
    LOBYTE(v92) = 0;
    v63 = *(a3 + 88);
    v62 = *(a3 + 96);
    sub_1D0BCFAB8(a3 + 56);
    v84 = *(a3 + 200);
    v83 = *(a3 + 277);
    v81 = *(v144 + 20) * 299.792458;
    v82 = *(a3 + 256);
    v79 = *(a3 + 208) - v61;
    v80 = *(v144 + 19) * 299.792458;
    v78 = v62 + v63;
    cnprint::CNPrinter::Print(&v85, &v92, "t,%.3lf,%s,using Doppler,predicted,%.3lf,diff,%.3lf,clockEstMtrs,%.2lf,clockDriftMps,%.2lf,std,%.2lf,multipath,%hhu,cno,%.1lf", v64, v65, v66, v67, v68, SLOBYTE(v78));
  }

  *&v69 = 0x100000001;
  *(&v69 + 1) = 0x100000001;
  *(a4 + 8) = v69;
  **(a4 + 32) = v61 + **(a2 + 32);
  sub_1D0D8A93C(&v85);
  sub_1D0B894B0(a5, &v85);
  v70 = *(&v94 + 1);
  v71 = *(a5 + 32);
  *v71 = v60 * (*v105.i64 * *&v94);
  v72 = *(a5 + 20);
  v71[v72] = v60 * (*&v105.i64[1] * v70);
  v73 = *(&v95 + 1);
  v71[2 * v72] = v60 * (*v106.i64 * *&v95);
  v71[3 * v72] = v60 * (*&v106.i64[1] * v73);
  v74 = *(&v96 + 1);
  v71[4 * v72] = v60 * (*v107.i64 * *&v96);
  v71[5 * v72] = v60 * (*&v107.i64[1] * v74);
  v75 = *(&v97 + 1);
  v71[18 * v72] = v60 * (*&v118.i64[1] * *&v97) / 1000000.0;
  v71[19 * v72] = v60 * (*v119.i64 * v75) / 1000000.0;
  sub_1D0BBBC94(1u, 1u, &v85);
  sub_1D0B894B0(a6, &v85);
  return 0;
}

uint64_t sub_1D0D5F500(uint64_t a1, double *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
        sub_1D0D8ED88();
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

void sub_1D0D5F950(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  if (a2)
  {
    sub_1D0C537DC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0D5F97C(uint64_t a1)
{
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

  return a1;
}

uint64_t sub_1D0D5FA28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int8x16_t a9, int8x16_t a10)
{
  v15 = a1;
  if ((atomic_load_explicit(&qword_1EE053B50, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE053B50);
    if (a1)
    {
      v116 = 0x1300000001;
      v114 = &unk_1F4CE2330;
      v117 = &v118;
      v115 = xmmword_1D0E844E0;
      v96 = xmmword_1D0E84440;
      v97 = xmmword_1D0E7DD30;
      v98 = &v119;
      v99 = 13;
      v100 = vdupq_n_s64(0x13uLL);
      v101 = vdupq_n_s64(4uLL);
      do
      {
        if (vuzp1_s16(vmovn_s64(vcgtq_u64(v100, v97)), *v96.i8).u8[0])
        {
          *(v98 - 3) = v99 - 13;
        }

        if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x13uLL), *&v97)), *&v96).i8[2])
        {
          *(v98 - 2) = v99 - 12;
        }

        if (vuzp1_s16(*&v96, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x13uLL), *&v96))).i32[1])
        {
          *(v98 - 1) = v99 - 11;
          *v98 = v99 - 10;
        }

        v96 = vaddq_s64(v96, v101);
        v97 = vaddq_s64(v97, v101);
        v99 += 4;
        v98 += 4;
      }

      while (v99 != 33);
      sub_1D0D77214(&unk_1EE054400, &v114);
      __cxa_atexit(sub_1D0D7B720, &unk_1EE054400, &dword_1D0B71000);
      __cxa_guard_release(&qword_1EE053B50);
    }
  }

  v16 = *(v15 + 8);
  v17 = *(v15 + 12);
  if (v16 <= v17)
  {
    v18 = *(v15 + 12);
  }

  else
  {
    v18 = *(v15 + 8);
  }

  if (v16)
  {
    v19 = v17 == 0;
  }

  else
  {
    v19 = 1;
  }

  v20 = !v19 && v18 == 26;
  if (!v20 || ((v24 = *(a2 + 8), v23 = *(a2 + 12), v24 <= v23) ? (v25 = *(a2 + 12)) : (v25 = *(a2 + 8)), !v24 || !v23 || v25 != 1))
  {
    LOWORD(v114) = 12;
    LOBYTE(v110) = 4;
    v21 = *(a3 + 48) + *(a3 + 40);
LABEL_13:
    cnprint::CNPrinter::Print(&v114, &v110, "time,%.3lf,h-function failure on line %d: %s() %s", a4, a5, a6, a7, a8, SLOBYTE(v21));
    return 0xFFFFFFFFLL;
  }

  if (!*(a3 + 552))
  {
    LOWORD(v114) = 12;
    LOBYTE(v110) = 4;
    v21 = *(a3 + 48) + *(a3 + 40);
    goto LABEL_13;
  }

  if (!*(a3 + 512))
  {
    LOWORD(v114) = 12;
    LOBYTE(v110) = 4;
    v21 = *(a3 + 48) + *(a3 + 40);
    goto LABEL_13;
  }

  if (!*(a3 + 560))
  {
    LOWORD(v114) = 12;
    LOBYTE(v110) = 4;
    v21 = *(a3 + 48) + *(a3 + 40);
    goto LABEL_13;
  }

  v26 = *(a3 + 288) - *(a3 + 280);
  v27 = (COERCE__INT64(fabs(v26)) - 0x10000000000000) >> 53;
  if ((*&v26 <= -1 || v27 >= 0x3FF) && (*&v26 - 1) >= 0xFFFFFFFFFFFFFLL)
  {
    LOWORD(v114) = 12;
    LOBYTE(v110) = 4;
    v21 = *(a3 + 48) + *(a3 + 40);
    goto LABEL_13;
  }

  v131[0] = v15;
  v131[1] = a3;
  if ((atomic_load_explicit(&qword_1EE053B58, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE053B58);
    if (a1)
    {
      qword_1EE053C28 = 0;
      dbl_1EE053C30 = 0.05;
      __cxa_guard_release(&qword_1EE053B58);
    }
  }

  v130 = *(a3 + 552);
  a10.i64[0] = 3.0;
  v30 = (dbl_1EE053C30 + qword_1EE053C28) * 3.0;
  if (v26 <= v30 && cnprint::CNPrinter::GetLogLevel(a1) <= 1)
  {
    LOWORD(v114) = 12;
    LOBYTE(v110) = 1;
    v31 = *(a3 + 96) + *(a3 + 88);
    sub_1D0BCFAB8(a3 + 56);
    cnprint::CNPrinter::Print(&v114, &v110, "t,%.3lf,%s, do not use carrier phase compuatation cache, vendor_meas_interval_sec, %.3lf", v32, v33, v34, v35, v36, SLOBYTE(v31));
  }

  a9.i64[0] = *(a3 + 280);
  v111 = 0;
  v110 = 0;
  *v37.i64 = CNTimeSpan::SetTimeSpan(&v110, 0, a9, a10);
  v114 = CNTimeSpan::operator+((a3 + 88), &v110, v37, v38);
  *&v115 = v39;
  v42 = sub_1D0D8F1BC(&v130, &v114, v26 > v30, v40, v41);
  v129 = 0.0;
  v127 = 0u;
  v128 = 0u;
  v125 = *(v42 + 2);
  v126 = 0u;
  if (sub_1D0D8F594(v131, &v125, &v129, &v126, (v42 + 6), *&v125, 0))
  {
    v49 = "could not compute expected Doppler at start";
    v50 = a3 + 40;
    v51 = 5316;
LABEL_43:
    sub_1D0D85A30(v50, v49, "h_GnssAverageDoppler_RavenPNT", v51, v43, v44, v45, v46);
    return 0xFFFFFFFFLL;
  }

  v47.i64[0] = *(a3 + 288);
  v111 = 0;
  v110 = 0;
  *v52.i64 = CNTimeSpan::SetTimeSpan(&v110, 0, v47, v48);
  v114 = CNTimeSpan::operator+((a3 + 88), &v110, v52, v53);
  *&v115 = v54;
  v57 = sub_1D0D8F1BC(&v130, &v114, v26 > v30, v55, v56);
  v124 = 0.0;
  v122 = 0u;
  v123 = 0u;
  v121 = 0u;
  v120 = *(v57 + 2);
  if (sub_1D0D8F594(v131, &v120, &v124, &v121, (v57 + 6), *&v120, v58))
  {
    v49 = "could not compute expected Doppler at end";
    v50 = a3 + 40;
    v51 = 5326;
    goto LABEL_43;
  }

  v61 = CNTimeSpan::operator-(&v120, &v125, v59, v60);
  v63 = v62 + v61;
  if (v63 <= 0.0)
  {
    LOWORD(v114) = 12;
    LOBYTE(v110) = 4;
    v90 = *(a3 + 96) + *(a3 + 88);
    sub_1D0BCFAB8(a3 + 56);
    cnprint::CNPrinter::Print(&v114, &v110, "t,%.3lf,%s,Invalid true averaging interval in raven time,%.3lf, vendor_meas_interval_sec, %.3lf", v91, v92, v93, v94, v95, SLOBYTE(v90));
    return 0xFFFFFFFFLL;
  }

  v64 = 1.0 / v63 * (299792458.0 / *(a3 + 192));
  v65 = v64 * (v124 - v129);
  if (!cnprint::CNPrinter::GetLogLevel(v61))
  {
    LOWORD(v114) = 12;
    LOBYTE(v110) = 0;
    v66 = *(a3 + 96) + *(a3 + 88);
    sub_1D0BCFAB8(a3 + 56);
    v106 = *(a3 + 200);
    v105 = *(a3 + 277);
    v103 = *(v42[12] + 152) * 299.792458;
    v104 = *(a3 + 256);
    v102 = *(a3 + 208) - v65;
    cnprint::CNPrinter::Print(&v114, &v110, "t,%.3lf,%s,using avg Doppler,predicted,%.3lf,diff,%.3lf,clockEstMtrs,%.2lf,std,%.2lf,multipath,%hhu,cno,%.1lf", v67, v68, v69, v70, v71, SLOBYTE(v66));
  }

  *&v72 = 0x100000001;
  *(&v72 + 1) = 0x100000001;
  *(a4 + 8) = v72;
  **(a4 + 32) = v65 + **(a2 + 32);
  sub_1D0D8A93C(&v114);
  sub_1D0D8A93C(&v110);
  v73 = *(&v122 + 1);
  v74 = v117;
  *v117 = v64 * (*&v122 * *(v57 + 41));
  v75 = *(&v127 + 1);
  v76 = v113;
  *v113 = v64 * (*&v127 * *(v42 + 41));
  v77 = SHIDWORD(v115);
  v74[SHIDWORD(v115)] = v64 * (v73 * *(v57 + 42));
  v78 = v112;
  v76[v112] = v64 * (v75 * *(v42 + 42));
  v79 = *(&v123 + 1);
  v74[2 * v77] = v64 * (*&v123 * *(v57 + 43));
  v80 = *(&v128 + 1);
  v76[2 * v78] = v64 * (*&v128 * *(v42 + 43));
  v74[18 * v77] = v64 * (v79 * *(v57 + 68)) * 0.000001;
  v76[18 * v78] = v64 * (v80 * *(v42 + 68)) * 0.000001;
  sub_1D0D8A93C(v109);
  v81 = sub_1D0B894B0(a5, v109);
  v83 = CNTimeSpan::operator-(&v120, (a3 + 88), v81, v82);
  v109[0] = v83;
  *&v109[1] = v84;
  if (v83 < 0 || (*v85.i64 = v84, v84 < 0.0))
  {
    v83 = CNTimeSpan::operator-(v109, v85, v86);
    v85.i64[0] = v87;
  }

  if (*v85.i64 + v83 >= 0.001)
  {
    sub_1D0D90394(v108, &v114, (v57 + 114));
    sub_1D0D90394(v107, &v110, (v42 + 114));
    v88 = v108;
    v89 = v107;
  }

  else
  {
    sub_1D0D90394(v108, &v110, (v42 + 114));
    v88 = &v114;
    v89 = v108;
  }

  sub_1D0D90344(v109, v88, v89);
  sub_1D0B894B0(a5, v109);
  *(*(a5 + 32) + 152 * *(a5 + 20)) = *(*(a5 + 32) + 152 * *(a5 + 20)) + v65 * 0.000001 * *(v57 + 69);
  sub_1D0BBBC94(1u, 1u, v109);
  sub_1D0B894B0(a6, v109);
  return 0;
}

uint64_t sub_1D0D602D4(uint64_t a1)
{
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

  return a1;
}

uint64_t raven::RavenPNTEstimator::HandleEvent(raven::RavenPNTEstimator *this, const raven::HorizontalDOTInIMUFrameEvent *a2)
{
  if (*(this + 57) != 1)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(this + 58) != 1)
  {
    return 0;
  }

  v4 = 0;
  v5 = (a2 + 280);
  v6 = *(a2 + 7);
  v7 = v6 + 1;
  v8 = 8 * v6;
  v9 = *(a2 + 5);
  while (2)
  {
    if ((*(*(a2 + 31) + 8 * v4) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      LOWORD(v67) = 12;
      LOBYTE(v80) = 4;
      v30 = (*(*a2 + 16))(a2);
      v61 = *(*(a2 + 31) + 8 * v4);
      v59 = v31 + v30;
      cnprint::CNPrinter::Print(&v67, &v80, "t,%.3lf, Invalid horizontal DOT at %d element = %.3lf", v32, v33, v34, v35, v36, SLOBYTE(v59));
      return 0xFFFFFFFFLL;
    }

    if (*(*(a2 + 5) + 8 * v7 * v4) <= 0.0)
    {
      LOWORD(v67) = 12;
      LOBYTE(v80) = 4;
      v37 = (*(*a2 + 16))(a2);
      v62 = *(*(a2 + 5) + 8 * (v4 + v4 * *(a2 + 7)));
      v60 = v38 + v37;
      cnprint::CNPrinter::Print(&v67, &v80, "t,%.3lf, Invalid horizontal DOT covariance %d diagonal value = %.3lf", v39, v40, v41, v42, v43, SLOBYTE(v60));
      return 0xFFFFFFFFLL;
    }

    v10 = 0;
    v11 = v9;
    do
    {
      if ((*v11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        LOWORD(v67) = 12;
        LOBYTE(v80) = 4;
        v22 = (*(*a2 + 16))(a2);
        v63 = *(*(a2 + 5) + 8 * (v4 + *(a2 + 7) * v10));
        v58 = v23 + v22;
        cnprint::CNPrinter::Print(&v67, &v80, "t,%.3lf, Invalid horizontal DOT uncertainty at location (%d, %d) = %.3lf", v24, v25, v26, v27, v28, SLOBYTE(v58));
        return 0xFFFFFFFFLL;
      }

      ++v10;
      v11 = (v11 + v8);
    }

    while (v10 != 3);
    ++v4;
    ++v9;
    if (v4 != 3)
    {
      continue;
    }

    break;
  }

  v87 = 0x100000003;
  v85 = &unk_1F4CDEB28;
  *&v13.f64[1] = 0x300000003;
  v86 = xmmword_1D0E7DCC0;
  v88 = v89;
  memset(v89, 0, sizeof(v89));
  v82 = 0x300000003;
  v81 = xmmword_1D0E76C10;
  v80 = &unk_1F4CD5DD0;
  v83 = &v84;
  v12 = *(this + 1859);
  v13.f64[0] = *(v12 + 192);
  if (v13.f64[0] < 0.75)
  {
    if (cnprint::CNPrinter::GetLogLevel(this) <= 1)
    {
      LOWORD(v79) = 12;
      LOBYTE(v64[0]) = 1;
      v67 = (*(*a2 + 16))(a2);
      __p[0] = v14;
      cnprint::CNLogFormatter::FormatGeneral(this + 2712, &v67, "horizontal dot measurement ignored at low user speed of %.1lf", *(v12 + 192));
      if (*(this + 2735) >= 0)
      {
        LOBYTE(v20) = this - 104;
      }

      else
      {
        v20 = *(this + 339);
      }

      cnprint::CNPrinter::Print(&v79, v64, "%s", v15, v16, v17, v18, v19, v20);
    }

    return 0;
  }

  v13.f64[0] = v13.f64[0] * v13.f64[0];
  v69 = 0x300000003;
  v67 = &unk_1F4CD5DD0;
  *__p = xmmword_1D0E76C10;
  v70 = &v71;
  sub_1D0B8930C(a2 + 8, &v67, v13);
  v44 = sub_1D0B894B0(&v80, &v67);
  *&v79 = (*(*a2 + 16))(a2, v44);
  *(&v79 + 1) = v45;
  sub_1D0D915A0(&v67);
  v71 = v79;
  sub_1D0B894B0(&v77, a2 + 216);
  if (v78 != v5)
  {
    v49 = v5[1];
    v78[0] = *v5;
    v78[1] = v49;
  }

  v72 = this + 2920;
  v73 = this + 14824;
  v74 = this + 14840;
  v75 = this + 2760;
  v76 = this + 2800;
  if (sub_1D0D61530(this + 61736, &v79, &v85, &v80, &v67, v46, v47, v48))
  {
    v66 = 12;
    v65 = 4;
    v64[0] = (*(*a2 + 16))(a2);
    v64[1] = v50;
    v51 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, v64, "Could not add measurement - horizontal DOT");
    if (*(this + 2735) >= 0)
    {
      LOBYTE(v57) = v51;
    }

    else
    {
      v57 = *(this + 339);
    }

    cnprint::CNPrinter::Print(&v66, &v65, "%s", v52, v53, v54, v55, v56, v57);
    v21 = 0xFFFFFFFFLL;
  }

  else
  {
    v21 = 0;
  }

  v77 = &unk_1F4CD5E28;
  v67 = &unk_1F4CE4300;
  if (SHIBYTE(v70) < 0)
  {
    operator delete(__p[1]);
  }

  return v21;
}

void sub_1D0D608B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1D0D84220(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1D0D608C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x1EEE9AC00](a1, a2, a3, a4);
  v12 = v6;
  v160 = *(v6 + 40);
  v13 = *(v4 + 8);
  v14 = *(v4 + 12);
  if (v13 <= v14)
  {
    v15 = *(v4 + 12);
  }

  else
  {
    v15 = *(v4 + 8);
  }

  if (v13)
  {
    _ZF = v14 == 0;
  }

  else
  {
    _ZF = 1;
  }

  v17 = !_ZF && v15 == 26;
  if (!v17 || ((v25 = v5, v27 = *(v5 + 8), v26 = *(v5 + 12), v27 <= v26) ? (v28 = *(v5 + 12)) : (v28 = *(v5 + 8)), !v27 || !v26 || v28 != 3))
  {
    LOWORD(v161) = 12;
    v113[0] = 4;
    v18 = *(v6 + 48) + *(v6 + 40);
    cnprint::CNPrinter::Print(&v161, v113, "time,%.3lf,h-function failure on line %d: %s() %s", v7, v8, v9, v10, v11, SLOBYTE(v18));
    if (cnprint::CNPrinter::GetLogLevel(v19) <= 1)
    {
      LOWORD(v161) = 12;
      v113[0] = 1;
      v82 = *(&v160 + 1) + v160;
      cnprint::CNPrinter::Print(&v161, v113, "t,%.3lf, Warning: h_HorizontalVelocityInIMUFrame_RavenPNT called with inadequate matrices", v20, v21, v22, v23, v24, SLOBYTE(v82));
    }

    return 0xFFFFFFFFLL;
  }

  if (!*(v6 + 56))
  {
    LOWORD(v161) = 12;
    v113[0] = 4;
    v38 = *(v6 + 48) + *(v6 + 40);
LABEL_29:
    cnprint::CNPrinter::Print(&v161, v113, "time,%.3lf,h-function failure on line %d: %s() %s", v7, v8, v9, v10, v11, SLOBYTE(v38));
    return 0xFFFFFFFFLL;
  }

  v29 = v9;
  v30 = v8;
  v31 = v7;
  v32 = v4;
  v33 = *(v6 + 72);
  v159 = **(v6 + 64);
  sub_1D0D96A9C(v158, v33);
  for (i = 0; i != 24; i += 8)
  {
    if ((*(*(v12 + 128) + i) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      LOWORD(v161) = 12;
      v113[0] = 4;
      v38 = *(v12 + 48) + *(v12 + 40);
      goto LABEL_29;
    }
  }

  *&v113[24] = 0x100000003;
  *&v113[8] = xmmword_1D0E7DCC0;
  *v113 = &unk_1F4CDEB28;
  *&v114 = &v114 + 8;
  v163 = 0x100000134;
  v162 = xmmword_1D0E7DD20;
  v161 = &unk_1F4CDEC90;
  v164 = &v165;
  v155 = 0x100000003;
  v154 = xmmword_1D0E7DCC0;
  v153 = &unk_1F4CDEB28;
  v156 = v157;
  sub_1D0BFB1AC(v12 + 96, v113, &v161, &v153, "2");
  if (fabs(v35) <= 0.000000015)
  {
    LOWORD(v161) = 12;
    v113[0] = 4;
    v38 = *(v12 + 48) + *(v12 + 40);
    goto LABEL_29;
  }

  v36 = 1.0 / v35;
  v37 = *(v12 + 128);
  *v37 = vmulq_n_f64(*v37, v36);
  v37[1].f64[0] = v36 * v37[1].f64[0];
  if (**(v12 + 80))
  {
    LOWORD(v161) = 12;
    v113[0] = 4;
    v38 = *(v12 + 48) + *(v12 + 40);
    goto LABEL_29;
  }

  v40 = *(v12 + 56);
  v155 = 0x10000001CLL;
  v154 = xmmword_1D0E843A0;
  v153 = &unk_1F4CE0A20;
  v156 = v157;
  if (sub_1D0D9046C(&v160, &v159, v158, v40, *(v12 + 88), 0, 0, 1, &v153))
  {
    sub_1D0D85A30(v12 + 40, "could not integrate full states", "h_HorizontalVelocityInIMUFrame_RavenPNT", 5912, v41, v42, v43, v44);
    return 0xFFFFFFFFLL;
  }

  v150 = 0x10000001CLL;
  v148 = &unk_1F4CE0A20;
  v149 = xmmword_1D0E843A0;
  v151 = &v152;
  *v113 = vdupq_n_s64(0x7FF8000000000000uLL);
  *&v113[16] = *v113;
  v114 = *v113;
  v115 = *v113;
  v116 = *v113;
  v117 = *v113;
  v118 = *v113;
  v119 = *v113;
  v120 = *v113;
  v121 = *v113;
  v122 = *v113;
  v123 = *v113;
  v124 = *v113;
  v125 = *v113;
  v126 = *v113;
  v127 = *v113;
  v128 = *v113;
  v129 = *v113;
  v130 = *v113;
  v131 = *v113;
  v132 = *v113;
  v133 = *v113;
  v134 = *v113;
  v135 = *v113;
  v136 = *v113;
  v137 = *v113;
  v138 = *v113;
  v139 = *v113;
  v140 = *v113;
  v141 = *v113;
  v142 = *v113;
  v143 = *v113;
  v144 = *v113;
  v145 = *v113;
  v146 = *v113;
  v147 = 0x7FF8000000000000;
  v112 = 0;
  if (sub_1D0D8825C(&v153, v32, 0, 0, 1, &v148, v113, &v112, 0.0))
  {
    sub_1D0D85A30(v12 + 40, "could not correct states", "h_HorizontalVelocityInIMUFrame_RavenPNT", 5926, v45, v46, v47, v48);
    if (cnprint::CNPrinter::GetLogLevel(v49) <= 1)
    {
      LOWORD(v161) = 12;
      v108[0] = 1;
      v83 = *(&v160 + 1) + v160;
      cnprint::CNPrinter::Print(&v161, v108, "t,%.3lf, Error: h_HorizontalVelocityInIMUFrame_RavenPNT GetEarthFixedFullStateEstimate failed", v50, v51, v52, v53, v54, SLOBYTE(v83));
    }

    return 0xFFFFFFFFLL;
  }

  v55 = v151;
  _Q1 = v151[4];
  _D3 = _Q1.f64[1];
  __asm { FMLA            D2, D3, V1.D[1] }

  v62 = sqrt(_D2);
  if (fabs(v62) >= 2.22044605e-16)
  {
    v65 = vdupq_lane_s64(*&v62, 0);
    v63 = vdivq_f64(_Q1, v65);
    v64 = vdivq_f64(v151[3], v65);
  }

  else
  {
    v63 = xmmword_1D0E7DCB0;
    v64 = 0uLL;
  }

  v111[0] = v64;
  v111[1] = v63;
  v163 = 0x300000001;
  v161 = &unk_1F4CDF0C8;
  v164 = &v165;
  v162 = xmmword_1D0E7F310;
  v165 = 0x1A00000019;
  v166 = 27;
  sub_1D0D2CF48(&v161, v110);
  sub_1D0BD2CA4(v108, v151[10].f64[1], v151[11].f64[0], v151[11].f64[1]);
  if (v108[8] != 1)
  {
    return 0xFFFFFFFFLL;
  }

  v105 = 0x300000003;
  v103 = &unk_1F4CD5DD0;
  v104 = xmmword_1D0E76C10;
  v106 = &v107;
  sub_1D0B894B0(&v103, &v109);
  sub_1D0D7B8EC(3u, 3u, v100);
  *(v102 + 16 * v101 + 16) = 0;
  sub_1D0D4C398(&v103, v98);
  sub_1D0C1B688(v98, v100, &v161);
  sub_1D0C1B688(&v161, &v103, v99);
  v66.f64[0] = v55[12].f64[0];
  sub_1D0C51778(v99, v98, v66);
  sub_1D0BFA8EC(&v161, &v148, v110);
  sub_1D0D91424(v97, v98, &v161);
  sub_1D0BFA800(v97);
  v68 = v67;
  cnrotation::Inv((v12 + 160), &v161);
  cnrotation::Cat(v111[0].f64, &v161, v96);
  sub_1D0B88A54(v96, v12 + 96, v98);
  *(v31 + 8) = xmmword_1D0E7DCC0;
  sub_1D0B88A54(v111, v97, v94);
  v69.f64[0] = v68;
  sub_1D0C51778(v98, v93, v69);
  sub_1D0D86DAC(v94, v93, v95);
  sub_1D0D914B0(&v161, v95, v25);
  sub_1D0B894B0(v31, &v161);
  sub_1D0D8601C(&v161, 26);
  sub_1D0B894B0(v30, &v161);
  cnrotation::CNRotation::dRdq1(v111, v95);
  cnrotation::CNRotation::dRdq2(v111, v94);
  cnrotation::CNRotation::dRdq3(v111, v93);
  cnrotation::CNRotation::dRdq4(v111, v92);
  *&v70.f64[0] = v115;
  sub_1D0D7B844(v89, v95, v70);
  v71.f64[0] = *(&v116 + 1);
  sub_1D0D7B844(v88, v94, v71);
  sub_1D0D4C358(v89, v88, v90);
  *&v72.f64[0] = v118;
  sub_1D0D7B844(v87, v93, v72);
  sub_1D0D4C358(v90, v87, &v161);
  v73.f64[0] = *(&v119 + 1);
  sub_1D0D7B844(v86, v92, v73);
  sub_1D0D4C358(&v161, v86, v91);
  v74.f64[0] = *(&v115 + 1);
  sub_1D0D7B844(v88, v95, v74);
  *&v75.f64[0] = v117;
  sub_1D0D7B844(v87, v94, v75);
  sub_1D0D4C358(v88, v87, v89);
  v76.f64[0] = *(&v118 + 1);
  sub_1D0D7B844(v86, v93, v76);
  sub_1D0D4C358(v89, v86, &v161);
  *&v77.f64[0] = v120;
  sub_1D0D7B844(v85, v92, v77);
  sub_1D0D4C358(&v161, v85, v90);
  *&v78.f64[0] = v116;
  sub_1D0D7B844(v87, v95, v78);
  v79.f64[0] = *(&v117 + 1);
  sub_1D0D7B844(v86, v94, v79);
  sub_1D0D4C358(v87, v86, v88);
  *&v80.f64[0] = v119;
  sub_1D0D7B844(v85, v93, v80);
  sub_1D0D4C358(v88, v85, &v161);
  v81.f64[0] = *(&v120 + 1);
  sub_1D0D7B844(v84, v92, v81);
  sub_1D0D4C358(&v161, v84, v89);
  if ((atomic_load_explicit(&qword_1EE053B80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE053B80))
  {
    v163 = 0x300000001;
    v161 = &unk_1F4CDF0C8;
    v164 = &v165;
    v162 = xmmword_1D0E7F310;
    v165 = 0x100000000;
    v166 = 2;
    sub_1D0D2CF48(&v161, &unk_1EE053EF8);
    __cxa_atexit(sub_1D0D26840, &unk_1EE053EF8, &dword_1D0B71000);
    __cxa_guard_release(&qword_1EE053B80);
  }

  sub_1D0D5625C(v91, v97, v88);
  sub_1D0D91538(&v161, v30, 6);
  sub_1D0D2D13C(&v161, v88);
  sub_1D0D5625C(v90, v97, v88);
  sub_1D0D91538(&v161, v30, 7);
  sub_1D0D2D13C(&v161, v88);
  sub_1D0D5625C(v89, v97, v88);
  sub_1D0D91538(&v161, v30, 8);
  sub_1D0D2D13C(&v161, v88);
  if ((atomic_load_explicit(&qword_1EE053B88, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE053B88))
  {
    v163 = 0x300000001;
    v161 = &unk_1F4CDF0C8;
    v164 = &v165;
    v162 = xmmword_1D0E7F310;
    v165 = 0x1800000017;
    v166 = 25;
    sub_1D0D2CF48(&v161, &unk_1EE053F30);
    __cxa_atexit(sub_1D0D26840, &unk_1EE053F30, &dword_1D0B71000);
    __cxa_guard_release(&qword_1EE053B88);
  }

  cnrotation::CNRotation::RotationMatrix(v111, v87);
  sub_1D0C1B688(v87, v99, v88);
  sub_1D0BADC74(&v161, v30, &unk_1EE053EF8, &unk_1EE053F30);
  sub_1D0D2CFF0(&v161, v88);
  sub_1D0D7B8EC(3u, 3u, &v161);
  sub_1D0B894B0(v29, &v161);
  return 0;
}

uint64_t sub_1D0D61530(uint64_t a1, double *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
        sub_1D0D91630();
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

void sub_1D0D61980(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  if (a2)
  {
    sub_1D0C537DC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0D619AC(uint64_t a1)
{
  *(a1 + 96) = &unk_1F4CD5E28;
  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void raven::RavenPNTEstimator::InflateAttitudeUncertainty(raven::RavenPNTEstimator *this, double a2)
{
  if ((atomic_load_explicit(&qword_1EE053A98, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE053A98))
  {
    v15 = 0x300000001;
    *v14 = &unk_1F4CDF0C8;
    v16 = &v17;
    *&v14[8] = xmmword_1D0E7F310;
    v17 = 0x700000006;
    v18 = 8;
    sub_1D0D2CF48(v14, &unk_1EE053D00);
    __cxa_atexit(sub_1D0D26840, &unk_1EE053D00, &dword_1D0B71000);
    __cxa_guard_release(&qword_1EE053A98);
  }

  sub_1D0D95F6C(v14, &unk_1EE053D00);
  sub_1D0B751F4(__p, "InflateAttitudeUncertainty");
  raven::RavenPNTEstimator::InflateUncertainties(this, v14, __p, a2);
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  LOWORD(__p[0]) = 12;
  v11 = 2;
  *v14 = *(this + 5);
  v4 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, v14, "Inflating estimator variance of attitude error states,factor,%.2lf", a2);
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

uint64_t raven::RavenPNTEstimator::UpdateFullStateEstimate(raven::RavenPNTEstimator *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x1EEE9AC00](this, a2, a3, a4);
  if (*(v4 + 58) != 1)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = v4;
  sub_1D0D98D1C(v40, v4 + 14840);
  if ((atomic_load_explicit(&qword_1EE053B18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE053B18))
  {
    v44 = 0x1C00000001;
    v42 = &unk_1F4CE1208;
    v45 = &v46;
    v43 = xmmword_1D0E844E0;
    v27 = xmmword_1D0E84440;
    v28 = xmmword_1D0E7DD30;
    v29 = &v47;
    v30 = 13;
    v31 = vdupq_n_s64(0x13uLL);
    v32 = vdupq_n_s64(4uLL);
    do
    {
      if (vuzp1_s16(vmovn_s64(vcgtq_u64(v31, v28)), *v27.i8).u8[0])
      {
        *(v29 - 3) = v30 - 13;
      }

      if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x13uLL), *&v28)), *&v27).i8[2])
      {
        *(v29 - 2) = v30 - 12;
      }

      if (vuzp1_s16(*&v27, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x13uLL), *&v27))).i32[1])
      {
        *(v29 - 1) = v30 - 11;
        *v29 = v30 - 10;
      }

      v27 = vaddq_s64(v27, v32);
      v28 = vaddq_s64(v28, v32);
      v30 += 4;
      v29 += 4;
    }

    while (v30 != 33);
    sub_1D0D5D8C8(&unk_1EC5FB7A8, &v42);
    __cxa_atexit(sub_1D0D5DA20, &unk_1EC5FB7A8, &dword_1D0B71000);
    __cxa_guard_release(&qword_1EE053B18);
  }

  if (*(v5 + 58) && (sub_1D0D755EC(v5 + 15256) & 1) != 0)
  {
    v37 = 0x10000001ALL;
    v35 = &unk_1F4CE3E48;
    v36 = xmmword_1D0E843B0;
    v38 = &v39;
    v6 = 552;
    if (!*(v5 + 16364))
    {
      v6 = 8;
    }

    sub_1D0B894B0(&v35, v5 + 15256 + v6);
    sub_1D0D55F8C();
  }

  sub_1D0D98D1C(&v33, v40);
  v7 = v41;
  _Q1 = v41[4];
  _D3 = _Q1.f64[1];
  __asm { FMLA            D2, D3, V1.D[1] }

  v15 = sqrt(_D2);
  if (fabs(v15) >= 2.22044605e-16)
  {
    v18 = vdupq_lane_s64(*&v15, 0);
    v17 = vdivq_f64(v41[3], v18);
    v16 = vdivq_f64(_Q1, v18);
  }

  else
  {
    v16 = xmmword_1D0E7DCB0;
    v17 = 0uLL;
  }

  v19 = v34;
  v34[3] = v17;
  v19[4] = v16;
  v20 = *(v7 + 200);
  v21 = v7[13].f64[1];
  v22 = sqrt(COERCE_DOUBLE(*&vmulq_f64(v20, v20).f64[1]) + v20.f64[0] * v20.f64[0] + v21 * v21);
  if (fabs(v22) <= 0.000000015)
  {
    return 0xFFFFFFFFLL;
  }

  v19[12].f64[0] = v22 * v7[12].f64[0];
  *(v19 + 200) = vdivq_f64(v20, vdupq_lane_s64(*&v22, 0));
  v19[13].f64[1] = v21 / v22;
  sub_1D0D8C698(&v42, &v33, &unk_1EC5FB7A8);
  if (sub_1D0D752EC(v5 + 2920, (v5 + 14824), &v42, v23, v24))
  {
    return 0xFFFFFFFFLL;
  }

  sub_1D0B894B0(v5 + 14840, &v33);
  return 0;
}

void sub_1D0D64518(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_1EE053B28);
  sub_1D0D89DFC(&STACK[0xF10]);
  sub_1D0D857FC(&STACK[0x1140]);
  _Unwind_Resume(a1);
}

uint64_t sub_1D0D64788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x1EEE9AC00](a1, a2, a3, a4);
  if (!v6 || (v12 = v5, v13 = v4, v14 = **v6, (v15 = __dynamic_cast(v6, &unk_1F4CE42A0, &unk_1F4CE19C0, 0)) == 0))
  {
    LOWORD(v60) = 12;
    v44[0] = 4;
    v36 = MEMORY[0x30] + MEMORY[0x28];
LABEL_22:
    cnprint::CNPrinter::Print(&v60, v44, "time,%.3lf,h-function failure on line %d: %s() %s", v7, v8, v9, v10, v11, SLOBYTE(v36));
    return 0xFFFFFFFFLL;
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
    LOWORD(v60) = 12;
    v44[0] = 4;
    v36 = *(v15 + 6) + *(v15 + 5);
    goto LABEL_22;
  }

  if (!*(v15 + 7))
  {
    LOWORD(v60) = 12;
    v44[0] = 4;
    v36 = *(v15 + 6) + *(v15 + 5);
    goto LABEL_22;
  }

  v81[0] = *(v15 + 40);
  v24.i64[1] = *(&v81[0] + 1);
  v24.i64[0] = *(v15 + 12);
  *&v61 = 0;
  v60 = 0;
  *v25.i64 = CNTimeSpan::SetTimeSpan(&v60, 0, v24, v16);
  *&v80 = CNTimeSpan::operator-(v81, &v60, v25, v26);
  *(&v80 + 1) = v27;
  v28 = *(v17 + 9);
  v79 = **(v17 + 8);
  sub_1D0D96A9C(v78, v28);
  v29 = *(v17 + 7);
  if ((atomic_load_explicit(&qword_1EE053B90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE053B90))
  {
    v39 = 0;
    v62 = 0x1A00000001;
    v60 = &unk_1F4CE1FD0;
    v63 = &v64;
    v61 = xmmword_1D0E844D0;
    v40 = xmmword_1D0E7DD30;
    v41 = vdupq_n_s64(2uLL);
    v42 = vdupq_n_s64(0x12uLL);
    do
    {
      v43 = &v60 + 4 * v39;
      if (vmovn_s64(vcgtq_u64(v42, v40)).u8[0])
      {
        *(v43 + 10) = v39;
      }

      if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0x12uLL), *&v40)).i32[1])
      {
        *(v43 + 11) = v39 + 1;
      }

      v39 += 2;
      v40 = vaddq_s64(v40, v41);
    }

    while (v39 != 18);
    sub_1D0D741B0(&unk_1EE054940, &v60);
    __cxa_atexit(sub_1D0D73024, &unk_1EE054940, &dword_1D0B71000);
    __cxa_guard_release(&qword_1EE053B90);
  }

  if ((atomic_load_explicit(&qword_1EE053B98, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE053B98))
  {
    v62 = 0x1A00000001;
    v60 = &unk_1F4CE1FD0;
    v63 = &v64;
    v61 = xmmword_1D0E7F310;
    v64 = 0x700000006;
    v65 = 8;
    sub_1D0D741B0(&unk_1EE0549D0, &v60);
    __cxa_atexit(sub_1D0D73024, &unk_1EE0549D0, &dword_1D0B71000);
    __cxa_guard_release(&qword_1EE053B98);
  }

  v75 = 0x10000001CLL;
  v74 = xmmword_1D0E844F0;
  v73 = &unk_1F4CE0A20;
  v76 = &v77;
  if (!sub_1D0D85A88(v81, &v79, v78[4], v29, *(v17 + 11), &v73))
  {
    v70 = 0x100000013;
    v69 = xmmword_1D0E844F0;
    v68 = &unk_1F4CE40B8;
    v71 = &v72;
    v66[0] = vdupq_n_s64(0x7FF8000000000000uLL);
    v66[1] = v66[0];
    v66[2] = v66[0];
    v66[3] = v66[0];
    v66[4] = v66[0];
    v66[5] = v66[0];
    v66[6] = v66[0];
    v66[7] = v66[0];
    v66[8] = v66[0];
    v66[9] = v66[0];
    v66[10] = v66[0];
    v66[11] = v66[0];
    v66[12] = v66[0];
    v66[13] = v66[0];
    v66[14] = v66[0];
    v66[15] = v66[0];
    v66[16] = v66[0];
    v66[17] = v66[0];
    v66[18] = v66[0];
    v66[19] = v66[0];
    v66[20] = v66[0];
    v66[21] = v66[0];
    v66[22] = v66[0];
    v66[23] = v66[0];
    v66[24] = v66[0];
    v66[25] = v66[0];
    v66[26] = v66[0];
    v66[27] = v66[0];
    v66[28] = v66[0];
    v66[29] = v66[0];
    v66[30] = v66[0];
    v66[31] = v66[0];
    v66[32] = v66[0];
    v66[33] = v66[0];
    v66[34] = v66[0];
    v67 = 0x7FF8000000000000;
    sub_1D0D85CD4(&v73, v13, &v68, v66);
    sub_1D0D91854(&v60, v29);
    v55 = &v60;
    v56 = v81;
    v38 = *(v17 + 11);
    v57 = &v73;
    v58 = v38;
    v59 = v80;
    v51 = 0x100000017;
    v49[26] = &unk_1F4CE0780;
    v52 = v53;
    v50 = xmmword_1D0E845F0;
    memset(v53, 0, sizeof(v53));
    v54 = 0;
    v47 = 0x10000001ALL;
    v45[6] = &unk_1F4CE3E48;
    v46 = xmmword_1D0E843B0;
    v48 = v49;
    sub_1D0D87FCC(v45);
  }

  LOWORD(v60) = 12;
  v44[0] = 4;
  v35 = *(v17 + 6) + *(v17 + 5);
  cnprint::CNPrinter::Print(&v60, v44, "time,%.3lf,h-function failure on line %d: %s() %s", v30, v31, v32, v33, v34, SLOBYTE(v35));
  return 0xFFFFFFFFLL;
}

uint64_t sub_1D0D654BC(uint64_t a1, double *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
        sub_1D0D91AE8();
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

void sub_1D0D6590C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  if (a2)
  {
    sub_1D0C537DC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0D65938(uint64_t a1)
{
  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

uint64_t raven::RavenPNTEstimator::HandleEvent(raven::RavenPNTEstimator *this, const raven::MapVectorEvent *a2)
{
  v124 = *MEMORY[0x1E69E9840];
  if (*(this + 57) == 1 && *(this + 58) == 1)
  {
    *&v117 = (*(*a2 + 16))(a2);
    *(&v117 + 1) = v4;
    IsUserStationary = raven::RavenPNTEstimator::IsUserStationary(this);
    v114 = 0x10000001ALL;
    v112 = &unk_1F4CE3E48;
    v115 = v116;
    v113 = xmmword_1D0E843B0;
    memset(v116, 0, sizeof(v116));
    v109 = 0x100000007;
    v108 = xmmword_1D0E84420;
    v107 = &unk_1F4CE0BB0;
    v110 = v111;
    v73 = vdupq_n_s64(0x7FF8000000000000uLL);
    *__p = v73;
    *v75 = v73;
    *&v75[16] = v73;
    v76 = v73;
    v77 = v73;
    v78 = v73;
    v79 = v73;
    v80 = v73;
    v81 = v73;
    v82 = v73;
    v83 = v73;
    v84 = v73;
    v85 = v73;
    v86 = v73;
    *v87 = v73;
    *&v87[16] = v73;
    v88 = v73;
    v89 = v73;
    v90 = v73;
    v91 = v73;
    v92 = v73;
    v93 = v73;
    v94 = v73;
    v95 = v73;
    v96 = v73;
    v97 = v73;
    v98 = v73;
    v99 = v73;
    v100 = v73;
    v101 = v73;
    v102 = v73;
    v103 = v73;
    v104 = v73;
    v105 = v73;
    v106 = 0x7FF8000000000000;
    v6 = *(this + 2760);
    LOBYTE(v71.f64[0]) = 0;
    if (sub_1D0D88874(this + 14840, &v112, v6, &v107, &v73, &v71, 0.000000015))
    {
      LOWORD(v122.f64[0]) = 12;
      LOBYTE(v120.__sinval) = 4;
      *&v71.f64[0] = (*(*a2 + 16))(a2);
      v71.f64[1] = v7;
      v8 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, &v71, "Could not get user position for map vector measurement");
      if (*(this + 2735) >= 0)
      {
        LOBYTE(v14) = v8;
      }

      else
      {
        v14 = *(this + 339);
      }

      cnprint::CNPrinter::Print(&v122, &v120, "%s", v9, v10, v11, v12, v13, v14);
      goto LABEL_8;
    }

    v71 = 0uLL;
    v72 = 0;
    v71 = *v110;
    v72 = *(v110 + 2);
    v17 = (a2 + 104);
    ShouldMapVectorConstraintBeApplied = raven::RavenEstimator::ShouldMapVectorConstraintBeApplied(this, &v71, (a2 + 104));
    v19 = ShouldMapVectorConstraintBeApplied == 0 && !IsUserStationary;
    v20 = ShouldMapVectorConstraintBeApplied != -2;
    if (*(this + 2760) != 1)
    {
      goto LABEL_25;
    }

    if (*(this + 2000) == 1)
    {
      v20 = *(this + 2112) - 3 < 0xFFFFFFFE && ShouldMapVectorConstraintBeApplied != -2;
    }

    if (*(this + 2288) == 1 && fabs(*(this + 304)) > 1.0)
    {
      v20 = 0;
      v19 = 0;
    }

    if (!v19 && !v20)
    {
      v22 = 0;
LABEL_48:
      v46 = 0;
LABEL_69:
      result = (v46 + v22);
      goto LABEL_9;
    }

    v122 = vmulq_f64(*(a2 + 14), vdupq_n_s64(0x3F91DF46A2529D39uLL));
    v123 = 0;
    v120 = __sincos_stret(*(a2 + 32) * 0.0174532925);
    v121 = 0;
    if (!cnnavigation::ENUToECEF(&v120, 1, 1, &v122, 1, &v118))
    {
      v47 = v110[5] * v118.f64[1] + v110[4] * v118.f64[0] + v110[6] * v119;
      v20 = (v47 >= 0.866025404) & v20;
      if (v47 >= 0.866025404 && v19)
      {
        goto LABEL_26;
      }
    }

    else
    {
LABEL_25:
      if (v19)
      {
LABEL_26:
        sub_1D0BA002C(&v73, 21);
        v73.i64[0] = &unk_1F4CE1A30;
        *&v75[8] = v117;
        *&v75[24] = this + 2920;
        v76.i64[0] = this + 14824;
        v76.i64[1] = this + 14840;
        v77.i64[0] = this + 2760;
        v77.i64[1] = this + 2800;
        v26 = *(a2 + 248);
        v86 = *(a2 + 232);
        *v87 = v26;
        *&v87[12] = *(a2 + 260);
        v27 = *(a2 + 184);
        v82 = *(a2 + 168);
        v83 = v27;
        v28 = *(a2 + 216);
        v84 = *(a2 + 200);
        v85 = v28;
        v29 = *(a2 + 120);
        v78 = *v17;
        v79 = v29;
        v30 = *(a2 + 152);
        v80 = *(a2 + 136);
        v81 = v30;
        v31 = *(this + 1208);
        v32 = v31 == 1 && *(this + 1320) == 5 && *(this + 2592) == 1 && *(this + 2704) - 2 < 3;
        v88.i8[0] = v32;
        v114 = 0x100000003;
        *&v33 = 0x100000001;
        *(&v33 + 1) = 0x100000001;
        v113 = v33;
        v112 = &unk_1F4CDEB28;
        v115 = v116;
        v116[0] = 0;
        v109 = 0x100000001;
        v108 = v33;
        v107 = &unk_1F4CDF418;
        v110 = v111;
        v34 = *(*(this + 146) + 2528);
        if (v34 <= 0.0)
        {
          LOWORD(v122.f64[0]) = 12;
          LOBYTE(v120.__sinval) = 4;
          *&v71.f64[0] = (*(*a2 + 16))(a2);
          v71.f64[1] = v44;
          v45 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, &v71, "estimator_map_vector_number_of_cross_track_position_sigmas_in_road_width_ <= 0");
          if (*(this + 2735) >= 0)
          {
            LOBYTE(v43) = v45;
          }

          else
          {
            v43 = *(this + 339);
          }
        }

        else
        {
          v35 = *(a2 + 30) / v34;
          if (v35 < 1.0 && v31 && *(this + 1320) != 5)
          {
            v35 = 1.0;
          }

          v111[0] = v35 * v35;
          if (!sub_1D0D66DB8(this + 61736, &v117, &v112, &v107, &v73, v23, v24, v25))
          {
            v22 = 0;
LABEL_45:
            v73.i64[0] = &unk_1F4CE4300;
            if ((v75[7] & 0x80000000) != 0)
            {
              operator delete(__p[0]);
            }

            if ((v20 & 1) == 0)
            {
              goto LABEL_48;
            }

LABEL_54:
            sub_1D0BA002C(&v73, 22);
            v73.i64[0] = &unk_1F4CE1A90;
            *&v75[8] = v117;
            *&v75[24] = this + 2920;
            v76.i64[0] = this + 14824;
            v76.i64[1] = this + 14840;
            v77.i64[0] = this + 2760;
            v77.i64[1] = this + 2800;
            v52 = *(a2 + 248);
            v86 = *(a2 + 232);
            *v87 = v52;
            *&v87[12] = *(a2 + 260);
            v53 = *(a2 + 184);
            v82 = *(a2 + 168);
            v83 = v53;
            v54 = *(a2 + 216);
            v84 = *(a2 + 200);
            v85 = v54;
            v55 = *(a2 + 120);
            v78 = *v17;
            v79 = v55;
            v56 = *(a2 + 152);
            v80 = *(a2 + 136);
            v81 = v56;
            v114 = 0x100000003;
            *&v56 = 0x100000001;
            *(&v56 + 1) = 0x100000001;
            v113 = v56;
            v112 = &unk_1F4CDEB28;
            v115 = v116;
            v116[0] = 0x3FF0000000000000;
            v109 = 0x100000001;
            v108 = v56;
            v57 = *(*(this + 146) + 2536);
            v107 = &unk_1F4CDF418;
            v110 = v111;
            if (v57 <= 0.0)
            {
              LOWORD(v122.f64[0]) = 12;
              LOBYTE(v120.__sinval) = 4;
              *&v71.f64[0] = (*(*a2 + 16))(a2);
              v71.f64[1] = v69;
              v70 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, &v71, "estimator_map_vector_cross_track_velocity_sigma_ <= 0");
              if (*(this + 2735) >= 0)
              {
                LOBYTE(v68) = v70;
              }

              else
              {
                v68 = *(this + 339);
              }
            }

            else
            {
              v58 = *(*(this + 1859) + 192);
              v59 = 1.0;
              if (fabs(v58) > 0.000000015)
              {
                v60 = v57 / v58;
                if (v60 <= 1.0)
                {
                  v59 = 0.0174524064;
                  if (v60 >= 0.0174524064)
                  {
                    v59 = v60;
                  }
                }
              }

              v111[0] = v59 * v59;
              if (!sub_1D0D6799C(this + 61736, &v117, &v112, &v107, &v73, v49, v50, v51))
              {
                v46 = 0;
LABEL_67:
                v73.i64[0] = &unk_1F4CE4300;
                if ((v75[7] & 0x80000000) != 0)
                {
                  operator delete(__p[0]);
                }

                goto LABEL_69;
              }

              LOWORD(v122.f64[0]) = 12;
              LOBYTE(v120.__sinval) = 4;
              *&v71.f64[0] = (*(*a2 + 16))(a2);
              v71.f64[1] = v61;
              v62 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, &v71, "Could not add measurement - map vector velocity");
              if (*(this + 2735) >= 0)
              {
                LOBYTE(v68) = v62;
              }

              else
              {
                v68 = *(this + 339);
              }
            }

            cnprint::CNPrinter::Print(&v122, &v120, "%s", v63, v64, v65, v66, v67, v68);
            v46 = -2;
            goto LABEL_67;
          }

          LOWORD(v122.f64[0]) = 12;
          LOBYTE(v120.__sinval) = 4;
          *&v71.f64[0] = (*(*a2 + 16))(a2);
          v71.f64[1] = v36;
          v37 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, &v71, "Could not add measurement - map vector position");
          if (*(this + 2735) >= 0)
          {
            LOBYTE(v43) = v37;
          }

          else
          {
            v43 = *(this + 339);
          }
        }

        cnprint::CNPrinter::Print(&v122, &v120, "%s", v38, v39, v40, v41, v42, v43);
        v22 = -1;
        goto LABEL_45;
      }
    }

    v22 = 0;
    v46 = 0;
    if (!v20)
    {
      goto LABEL_69;
    }

    goto LABEL_54;
  }

LABEL_8:
  result = 0xFFFFFFFFLL;
LABEL_9:
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1D0D66310(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL raven::RavenPNTEstimator::IsUserStationary(raven::RavenPNTEstimator *this)
{
  if (*(this + 58) != 1)
  {
    return 0;
  }

  if (*(this + 1208) == 1 && *(this + 1320) - 1 <= 6)
  {
    v1 = qword_1D0E87A28[(*(this + 1320) - 1)];
  }

  else
  {
    v1 = 928;
  }

  v3 = *(*(this + 1859) + 192);
  return v3 < cnstatistics::InverseNormal(this, 1.0 - *(*(this + 146) + v1), 0.0, sqrt(*(*(this + 1892) + 192 * *(this + 3781) + 192)));
}

uint64_t sub_1D0D66440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v136 = *MEMORY[0x1E69E9840];
  if (!*(a3 + 56))
  {
    goto LABEL_12;
  }

  v10 = *(a1 + 8);
  v11 = *(a1 + 12);
  v12 = v10 <= v11 ? *(a1 + 12) : *(a1 + 8);
  v13 = !v10 || v11 == 0;
  v14 = !v13 && v12 == 26;
  if (!v14 || ((v20 = *(a2 + 8), v19 = *(a2 + 12), v20 <= v19) ? (v21 = *(a2 + 12)) : (v21 = *(a2 + 8)), !v20 || !v19 || v21 != 1))
  {
LABEL_12:
    *v93 = 12;
    v128[0] = 4;
    v15 = *(a3 + 48) + *(a3 + 40);
    cnprint::CNPrinter::Print(v93, v128, "time,%.3lf,h-function failure on line %d: %s() %s", a4, a5, a6, a7, a8, SLOBYTE(v15));
    goto LABEL_13;
  }

  v130 = *(a3 + 40);
  v25 = *(a3 + 72);
  v129 = **(a3 + 64);
  sub_1D0D96A9C(v128, v25);
  v29 = **(a3 + 80);
  v125 = 0x10000001CLL;
  v124 = xmmword_1D0E843A0;
  v123 = &unk_1F4CE0A20;
  v126 = &v127;
  if (v29)
  {
    if (v29 != 1)
    {
      if (v29 == 2)
      {
        __assert_rtn("h_MapVector_Position_RavenPNT", "ravenmeasurementfunctions.h", 6187, "false && Unexpected case RavenPNTEstimatorStateParameterization::ParameterizationCount");
      }

      goto LABEL_38;
    }

    if (!sub_1D0D9046C(&v130, &v129, v128, *(a3 + 56), *(a3 + 88), 1, 1, 1, &v123))
    {
      goto LABEL_38;
    }

    *v93 = 12;
    LOBYTE(v76) = 4;
    v35 = *(a3 + 48) + *(a3 + 40);
    cnprint::CNPrinter::Print(v93, &v76, "time,%.3lf,h-function failure on line %d: %s() %s", v30, v31, v32, v33, v34, SLOBYTE(v35));
LABEL_13:
    result = 0xFFFFFFFFLL;
    goto LABEL_14;
  }

  v78 = 0x100000007;
  v76 = &unk_1F4CE0BB0;
  v77 = xmmword_1D0E84420;
  v79 = &v80;
  if (sub_1D0C50CB8(&v130, &v129, v128, 0, &v76, v26, v27, v28))
  {
    *v93 = 12;
    LOBYTE(v86) = 4;
    v41 = *(a3 + 48) + *(a3 + 40);
    cnprint::CNPrinter::Print(v93, &v86, "time,%.3lf,h-function failure on line %d: %s() %s", v36, v37, v38, v39, v40, SLOBYTE(v41));
    goto LABEL_13;
  }

  *&v93[24] = 0x700000001;
  *v93 = &unk_1F4CE23C0;
  *&v94 = &v94 + 8;
  *&v93[8] = xmmword_1D0E84430;
  v42 = xmmword_1D0E84440;
  v43 = xmmword_1D0E7DD30;
  v44 = v95 + 1;
  v45 = 13;
  v46 = vdupq_n_s64(7uLL);
  v47 = vdupq_n_s64(4uLL);
  do
  {
    if (vuzp1_s16(vmovn_s64(vcgtq_u64(v46, v43)), *v42.i8).u8[0])
    {
      *(v44 - 3) = v45 + 8;
    }

    if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(7uLL), *&v43)), *&v42).i8[2])
    {
      *(v44 - 2) = v45 + 9;
    }

    if (vuzp1_s16(*&v42, vmovn_s64(vcgtq_u64(vdupq_n_s64(7uLL), *&v42))).i32[1])
    {
      *(v44 - 1) = v45 + 10;
      *v44 = v45 + 11;
    }

    v42 = vaddq_s64(v42, v47);
    v43 = vaddq_s64(v43, v47);
    v45 += 4;
    v44 += 4;
  }

  while (v45 != 21);
  sub_1D0D772C0(&v86, v93);
  sub_1D0D867B8(v93, &v123, &v86);
  sub_1D0D8644C(v93, SDWORD2(v77), v79);
LABEL_38:
  v120 = 0x100000007;
  v119 = xmmword_1D0E84420;
  v118 = &unk_1F4CE0BB0;
  v121 = &v122;
  *v93 = vdupq_n_s64(0x7FF8000000000000uLL);
  *&v93[16] = *v93;
  v94 = *v93;
  v95[0] = *v93;
  v95[1] = *v93;
  v95[2] = *v93;
  v95[3] = *v93;
  v95[4] = *v93;
  v95[5] = *v93;
  v95[6] = *v93;
  v95[7] = *v93;
  v95[8] = *v93;
  v95[9] = *v93;
  v95[10] = *v93;
  v96 = *v93;
  v97 = *v93;
  v98 = *v93;
  v99 = *v93;
  v100 = *v93;
  v101 = *v93;
  v102 = *v93;
  v103 = *v93;
  v104 = *v93;
  v105 = *v93;
  v106 = *v93;
  v107 = *v93;
  v108 = *v93;
  v109 = *v93;
  v110 = *v93;
  v111 = *v93;
  v112 = *v93;
  v113 = *v93;
  v114 = *v93;
  v115 = *v93;
  v116 = *v93;
  v117 = 0x7FF8000000000000;
  LOBYTE(v76) = 0;
  if (sub_1D0D88874(&v123, a1, v29, &v118, v93, &v76, 0.000000015) || (v134 = *v121, v135 = v121[1].f64[0], v133 = 0, cnnavigation::ECEFToLLA(&v134, 1, &v132, 0, &v76)))
  {
    LOWORD(v76) = 12;
    LOBYTE(v86) = 4;
    v53 = *(a3 + 48) + *(a3 + 40);
    cnprint::CNPrinter::Print(&v76, &v86, "time,%.3lf,h-function failure on line %d: %s() %s", v48, v49, v50, v51, v52, SLOBYTE(v53));
    goto LABEL_13;
  }

  v132 = vmulq_f64(*(a3 + 192), vdupq_n_s64(0x3F91DF46A2529D39uLL));
  v87 = 0;
  v90 = 0x300000003;
  v89 = xmmword_1D0E76C10;
  v88 = &unk_1F4CD5DD0;
  v91 = &v92;
  v86 = &unk_1F4CD5D50;
  if (cnnavigation::ECEFToENU(&v134, 1, 1, &v132, 0, v131, &v86))
  {
    sub_1D0D85A30(a3 + 40, "coordinate conversion error to ENU", "h_MapVector_Position_RavenPNT", 6227, v54, v55, v56, v57);
    goto LABEL_13;
  }

  v83 = 0x300000003;
  v82 = xmmword_1D0E76C10;
  v81 = &unk_1F4CD5DD0;
  v84 = &v85;
  if ((v87 & 1) == 0)
  {
    sub_1D0D85A30(a3 + 40, "could not compute Jacobian", "h_MapVector_Position_RavenPNT", 6235, v54, v55, v56, v57);
    goto LABEL_13;
  }

  sub_1D0B894B0(&v81, &v88);
  v58 = __sincos_stret(*(a3 + 248) * 0.0174532925);
  *&v59 = 0x100000001;
  *(&v59 + 1) = 0x100000001;
  *(a4 + 8) = v59;
  v60 = -v58.__cosval;
  v61 = *(a4 + 32);
  v62 = v58.__sinval * v131[1] - v58.__cosval * v131[0] + **(a2 + 32);
  *v61 = v62;
  if ((*(a3 + 272) & 1) == 0)
  {
    v63 = *(a3 + 232);
    if (fabs(v62) > v63 * 0.5)
    {
      if (v62 >= 0.0)
      {
        v63 = -v63;
      }

      *v61 = v62 + v63 * 0.5;
    }
  }

  v64 = *v84;
  v65 = v84[1];
  v66 = &v84[SHIDWORD(v82)];
  v67 = *v66;
  v68 = v66[1];
  v69 = v84[2 * SHIDWORD(v82)];
  v70 = v84[(2 * HIDWORD(v82)) | 1];
  sub_1D0D8A93C(&v76);
  v71 = v58.__sinval * v70 + v60 * v69;
  v72 = v58.__sinval * v68 + v60 * v67;
  v73 = v58.__sinval * v65 + v60 * v64;
  sub_1D0B894B0(a5, &v76);
  v74 = *(a5 + 32);
  *v74 = v73 * *(&v96 + 1);
  v75 = *(a5 + 20);
  v74[v75] = v72 * *&v100;
  v74[2 * v75] = v71 * *(&v103 + 1);
  v74[6 * v75] = v72 * *(&v100 + 1) + v73 * *&v97 + v71 * *&v104;
  v74[7 * v75] = v72 * *&v101 + v73 * *(&v97 + 1) + v71 * *(&v104 + 1);
  v74[8 * v75] = v72 * *(&v101 + 1) + v73 * *&v98 + v71 * *&v105;
  v74[20 * v75] = v72 * *&v102 + v73 * *(&v98 + 1) + v71 * *(&v105 + 1);
  v74[21 * v75] = v72 * *(&v102 + 1) + v73 * *&v99 + v71 * *&v106;
  v74[22 * v75] = v72 * *&v103 + v73 * *(&v99 + 1) + v71 * *(&v106 + 1);
  sub_1D0BBBC94(1u, 1u, &v76);
  sub_1D0B894B0(a6, &v76);
  result = 0;
LABEL_14:
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D0D66DB8(uint64_t a1, double *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
        sub_1D0D91D40();
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

void sub_1D0D67208(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  if (a2)
  {
    sub_1D0C537DC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0D67234(uint64_t a1)
{
  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

uint64_t sub_1D0D67284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!*(a3 + 56))
  {
    *v78 = 12;
    v101[0] = 4;
    v15 = *(a3 + 48) + *(a3 + 40);
    goto LABEL_14;
  }

  v10 = *(a1 + 8);
  v11 = *(a1 + 12);
  if (v10 <= v11)
  {
    v12 = *(a1 + 12);
  }

  else
  {
    v12 = *(a1 + 8);
  }

  if (v10)
  {
    v13 = v11 == 0;
  }

  else
  {
    v13 = 1;
  }

  v14 = !v13 && v12 == 26;
  if (!v14 || ((v19 = *(a2 + 8), v18 = *(a2 + 12), v19 <= v18) ? (v20 = *(a2 + 12)) : (v20 = *(a2 + 8)), !v19 || !v18 || v20 != 1))
  {
    *v78 = 12;
    v101[0] = 4;
    v15 = *(a3 + 48) + *(a3 + 40);
LABEL_14:
    cnprint::CNPrinter::Print(v78, v101, "time,%.3lf,h-function failure on line %d: %s() %s", a4, a5, a6, a7, a8, SLOBYTE(v15));
    return 0xFFFFFFFFLL;
  }

  v103 = *(a3 + 40);
  v24 = *(a3 + 72);
  v102 = **(a3 + 64);
  sub_1D0D96A9C(v101, v24);
  v28 = **(a3 + 80);
  v98 = 0x10000001CLL;
  v97 = xmmword_1D0E843A0;
  v96 = &unk_1F4CE0A20;
  v99 = &v100;
  if (v28)
  {
    if (v28 != 1)
    {
      if (v28 == 2)
      {
        __assert_rtn("h_MapVector_Velocity_RavenPNT", "ravenmeasurementfunctions.h", 6395, "false && Unexpected case RavenPNTEstimatorStateParameterization::ParameterizationCount");
      }

      goto LABEL_39;
    }

    if (!sub_1D0D9046C(&v103, &v102, v101, *(a3 + 56), *(a3 + 88), 1, 1, 1, &v96))
    {
      goto LABEL_39;
    }

    *v78 = 12;
    LOBYTE(v67) = 4;
    v66 = *(a3 + 48) + *(a3 + 40);
    cnprint::CNPrinter::Print(v78, &v67, "time,%.3lf,h-function failure on line %d: %s() %s", v29, v30, v31, v32, v33, SLOBYTE(v66));
    return 0xFFFFFFFFLL;
  }

  v69 = 0x100000007;
  v67 = &unk_1F4CE0BB0;
  v68 = xmmword_1D0E84420;
  v70 = &v71;
  if (sub_1D0C50CB8(&v103, &v102, v101, 0, &v67, v25, v26, v27))
  {
    *v78 = 12;
    v77[0] = 4;
    v39 = *(a3 + 48) + *(a3 + 40);
    cnprint::CNPrinter::Print(v78, v77, "time,%.3lf,h-function failure on line %d: %s() %s", v34, v35, v36, v37, v38, SLOBYTE(v39));
    return 0xFFFFFFFFLL;
  }

  *&v78[24] = 0x700000001;
  *v78 = &unk_1F4CE23C0;
  *&v79 = &v79 + 8;
  *&v78[8] = xmmword_1D0E84430;
  v40 = xmmword_1D0E84440;
  v41 = xmmword_1D0E7DD30;
  v42 = v80 + 1;
  v43 = 13;
  v44 = vdupq_n_s64(7uLL);
  v45 = vdupq_n_s64(4uLL);
  do
  {
    if (vuzp1_s16(vmovn_s64(vcgtq_u64(v44, v41)), *v40.i8).u8[0])
    {
      *(v42 - 3) = v43 + 8;
    }

    if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(7uLL), *&v41)), *&v40).i8[2])
    {
      *(v42 - 2) = v43 + 9;
    }

    if (vuzp1_s16(*&v40, vmovn_s64(vcgtq_u64(vdupq_n_s64(7uLL), *&v40))).i32[1])
    {
      *(v42 - 1) = v43 + 10;
      *v42 = v43 + 11;
    }

    v40 = vaddq_s64(v40, v45);
    v41 = vaddq_s64(v41, v45);
    v43 += 4;
    v42 += 4;
  }

  while (v43 != 21);
  sub_1D0D772C0(v77, v78);
  sub_1D0D867B8(v78, &v96, v77);
  sub_1D0D8644C(v78, SDWORD2(v68), v70);
LABEL_39:
  v93 = 0x100000007;
  v92 = xmmword_1D0E84420;
  v91 = &unk_1F4CE0BB0;
  v94 = &v95;
  *v78 = vdupq_n_s64(0x7FF8000000000000uLL);
  *&v78[16] = *v78;
  v79 = *v78;
  v80[0] = *v78;
  v80[1] = *v78;
  v80[2] = *v78;
  v80[3] = *v78;
  v80[4] = *v78;
  v80[5] = *v78;
  v80[6] = *v78;
  v80[7] = *v78;
  v80[8] = *v78;
  v80[9] = *v78;
  v80[10] = *v78;
  v80[11] = *v78;
  v80[12] = *v78;
  v80[13] = *v78;
  v80[14] = *v78;
  v80[15] = *v78;
  v80[16] = *v78;
  v80[17] = *v78;
  v80[18] = *v78;
  v80[19] = *v78;
  v80[20] = *v78;
  v80[21] = *v78;
  v80[22] = *v78;
  v81 = *v78;
  v82 = *v78;
  v83 = *v78;
  v84 = *v78;
  v85 = *v78;
  v86 = *v78;
  v87 = *v78;
  v88 = *v78;
  v89 = *v78;
  v90 = NAN;
  LOBYTE(v67) = 0;
  if (sub_1D0D88874(&v96, a1, v28, &v91, v78, &v67, 0.000000015))
  {
    LOWORD(v67) = 12;
    v77[0] = 4;
    v51 = *(a3 + 48) + *(a3 + 40);
    cnprint::CNPrinter::Print(&v67, v77, "time,%.3lf,h-function failure on line %d: %s() %s", v46, v47, v48, v49, v50, SLOBYTE(v51));
    return 0xFFFFFFFFLL;
  }

  v52 = v94[4];
  v53 = v94[5];
  v54 = v94[6];
  sub_1D0C09230(v77, *(a3 + 192) * 0.0174532925, *(a3 + 200) * 0.0174532925);
  v75 = __sincos_stret(*(a3 + 248) * 0.0174532925);
  v76 = 0;
  sub_1D0BED7A0(v77, &v75.__sinval, &v72);
  if ((v59 & 1) == 0)
  {
    sub_1D0D85A30(a3 + 40, "could not compute DoT", "h_MapVector_Velocity_RavenPNT", 6431, v55, v56, v57, v58);
    return 0xFFFFFFFFLL;
  }

  *&v60 = 0x100000001;
  *(&v60 + 1) = 0x100000001;
  *(a4 + 8) = v60;
  **(a4 + 32) = v53 * v73 + v72 * v52 + v74 * v54 + **(a2 + 32);
  v61 = v72;
  v62 = v73;
  v63 = v74;
  sub_1D0D8A93C(&v67);
  sub_1D0B894B0(a5, &v67);
  v64 = *(a5 + 20);
  v65 = *(a5 + 32);
  *(v65 + 48 * v64) = v62 * *(&v84 + 1) + v61 * *(&v81 + 1) + v63 * *(&v87 + 1);
  *(v65 + 56 * v64) = v62 * *&v85 + v61 * *&v82 + v63 * *&v88;
  *(v65 + (v64 << 6)) = v62 * *(&v85 + 1) + v61 * *(&v82 + 1) + v63 * *(&v88 + 1);
  *(v65 + 184 * v64) = v62 * *&v86 + v61 * *&v83 + v63 * *&v89;
  *(v65 + 192 * v64) = v62 * *(&v86 + 1) + v61 * *(&v83 + 1) + v63 * *(&v89 + 1);
  *(v65 + 200 * v64) = v62 * *&v87 + v61 * *&v84 + v63 * v90;
  sub_1D0BBBC94(1u, 1u, &v67);
  sub_1D0B894B0(a6, &v67);
  return 0;
}

uint64_t sub_1D0D6799C(uint64_t a1, double *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
        sub_1D0D91FC8();
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

void sub_1D0D67DEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  if (a2)
  {
    sub_1D0C537DC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0D67E18(uint64_t a1)
{
  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

uint64_t raven::RavenPNTEstimator::HandleEvent(raven::RavenPNTEstimator *this, const raven::NonHolonomicVelocityConstraintEvent *a2)
{
  if (*(this + 57) != 1)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(this + 58) != 1)
  {
    return 0;
  }

  v4 = a2 + 104;
  if ((*(a2 + 13) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*(a2 + 14) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*(a2 + 15) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    LOWORD(v48[0]) = 12;
    LOBYTE(v59) = 4;
    v5 = (*(*a2 + 16))(a2);
    v42 = v6 + v5;
    cnprint::CNPrinter::Print(v48, &v59, "t,%.3lf, Invalid constraint axis", v7, v8, v9, v10, v11, SLOBYTE(v42));
    return 0xFFFFFFFFLL;
  }

  if (fabs(sqrt(*(a2 + 14) * *(a2 + 14) + *(a2 + 13) * *(a2 + 13) + *(a2 + 15) * *(a2 + 15))) <= 0.000000015)
  {
    LOWORD(v48[0]) = 12;
    LOBYTE(v59) = 4;
    v21 = (*(*a2 + 16))(a2);
    v44 = v22 + v21;
    cnprint::CNPrinter::Print(v48, &v59, "t,%.3lf, Constraint axis has zero magnitude", v23, v24, v25, v26, v27, SLOBYTE(v44));
    return 0xFFFFFFFFLL;
  }

  if ((*(a2 + 16) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    LOWORD(v48[0]) = 12;
    LOBYTE(v59) = 4;
    v14 = (*(*a2 + 16))(a2);
    v43 = v15 + v14;
    cnprint::CNPrinter::Print(v48, &v59, "t,%.3lf, Invalid angular uncertainty on constraint axis", v16, v17, v18, v19, v20, SLOBYTE(v43));
    return 0xFFFFFFFFLL;
  }

  sub_1D0C51578(1, 1, v64);
  v61 = 0x300000003;
  v59 = &unk_1F4CD5DD0;
  *&v28 = 0x100000001;
  *(&v28 + 1) = 0x100000001;
  v60 = v28;
  v62 = &v63;
  v29 = *(*(this + 1859) + 192) * *(a2 + 16);
  v63 = *(*(this + 146) + 296) * *(*(this + 146) + 296) + v29 * v29;
  *&v58 = (*(*a2 + 16))(a2);
  *(&v58 + 1) = v30;
  sub_1D0BA002C(v48, 23);
  v48[0] = &unk_1F4CE1B38;
  v50 = v58;
  v56 = *v4;
  v57 = *(v4 + 2);
  v51 = this + 2920;
  v52 = this + 14824;
  v53 = this + 14840;
  v54 = this + 2760;
  v55 = this + 2800;
  if (sub_1D0D689D4(this + 61736, &v58, v64, &v59, v48, v31, v32, v33))
  {
    v47 = 12;
    v46 = 4;
    v45[0] = (*(*a2 + 16))(a2);
    v45[1] = v34;
    v35 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, v45, "Could not add measurement - NHC velocity");
    if (*(this + 2735) >= 0)
    {
      LOBYTE(v41) = v35;
    }

    else
    {
      v41 = *(this + 339);
    }

    cnprint::CNPrinter::Print(&v47, &v46, "%s", v36, v37, v38, v39, v40, v41);
    v12 = 0xFFFFFFFFLL;
  }

  else
  {
    v12 = 0;
  }

  v48[0] = &unk_1F4CE4300;
  if (v49 < 0)
  {
    operator delete(v48[2]);
  }

  return v12;
}

void sub_1D0D68230(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0D68270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v120 = *(a3 + 40);
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
    _ZF = v10 == 0;
  }

  else
  {
    _ZF = 1;
  }

  v13 = !_ZF && v11 == 26;
  if (!v13 || ((v15 = *(a2 + 8), v16 = *(a2 + 12), v15 <= v16) ? (v17 = *(a2 + 12)) : (v17 = *(a2 + 8)), v15 ? (v18 = v16 == 0) : (v18 = 1), !v18 ? (v19 = v17 == 1) : (v19 = 0), !v19))
  {
    LOWORD(v105[0]) = 12;
    LOBYTE(v75) = 4;
    v20 = *(a3 + 48) + *(a3 + 40);
    cnprint::CNPrinter::Print(v105, &v75, "time,%.3lf,h-function failure on line %d: %s() %s", a4, a5, a6, a7, a8, SLOBYTE(v20));
    if (cnprint::CNPrinter::GetLogLevel(v21) <= 1)
    {
      LOWORD(v105[0]) = 12;
      LOBYTE(v75) = 1;
      v70 = *(&v120 + 1) + v120;
      cnprint::CNPrinter::Print(v105, &v75, "t,%.3lf, Warning: h_NonHolonomicVelocityConstraint_RavenPNT called with inadequate matrices", v22, v23, v24, v25, v26, SLOBYTE(v70));
    }

    return 0xFFFFFFFFLL;
  }

  if (!*(a3 + 56))
  {
    LOWORD(v105[0]) = 12;
    LOBYTE(v75) = 4;
    v33 = *(a3 + 48) + *(a3 + 40);
    goto LABEL_30;
  }

  v31 = *(a3 + 72);
  v119 = **(a3 + 64);
  sub_1D0D96A9C(v117, v31);
  if ((*(a3 + 96) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*(a3 + 104) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*(a3 + 112) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    LOWORD(v105[0]) = 12;
    LOBYTE(v75) = 4;
    v33 = *(a3 + 48) + *(a3 + 40);
LABEL_30:
    cnprint::CNPrinter::Print(v105, &v75, "time,%.3lf,h-function failure on line %d: %s() %s", a4, a5, a6, a7, a8, SLOBYTE(v33));
    return 0xFFFFFFFFLL;
  }

  v35 = sqrt(*(a3 + 104) * *(a3 + 104) + *(a3 + 96) * *(a3 + 96) + *(a3 + 112) * *(a3 + 112));
  if (fabs(v35) <= 0.000000015)
  {
    sub_1D0D85A30(a3 + 40, "constraint axis has zero magnitude", "h_NonHolonomicVelocityConstraint_RavenPNT", 6553, a5, a6, a7, a8);
    return 0xFFFFFFFFLL;
  }

  if (vabdd_f64(1.0, v35) > 0.000000015)
  {
    *&v73 = v35;
    if (!cnprint::CNPrinter::GetLogLevel(v32))
    {
      LOWORD(v105[0]) = 12;
      LOBYTE(v75) = 0;
      v71 = *(&v120 + 1) + v120;
      cnprint::CNPrinter::Print(v105, &v75, "t,%.3lf, Normalizing constraint axis to unit magnitude", v36, v37, v38, v39, v40, SLOBYTE(v71));
    }

    *(a3 + 96) = vdivq_f64(*(a3 + 96), vdupq_lane_s64(v73, 0));
    *(a3 + 112) = *(a3 + 112) / *&v73;
  }

  v41 = *(a3 + 56);
  v114 = 0x10000001CLL;
  v113 = xmmword_1D0E843A0;
  v112 = &unk_1F4CE0A20;
  v115 = &v116;
  if (sub_1D0D85A88(&v120, &v119, v118, v41, *(a3 + 88), &v112))
  {
    sub_1D0D85A30(a3 + 40, "could not integrate full states", "h_NonHolonomicVelocityConstraint_RavenPNT", 6571, v42, v43, v44, v45);
    if (cnprint::CNPrinter::GetLogLevel(v46) <= 1)
    {
      LOWORD(v105[0]) = 12;
      LOBYTE(v75) = 1;
      v72 = *(&v120 + 1) + v120;
      cnprint::CNPrinter::Print(v105, &v75, "t,%.3lf, Error: h_NonHolonomicVelocityConstraint_RavenPNT IntegrateDeviceKinematicStateEstimate failed", v47, v48, v49, v50, v51, SLOBYTE(v72));
    }

    return 0xFFFFFFFFLL;
  }

  v113 = xmmword_1D0E843A0;
  v109 = 0x10000001CLL;
  v107 = &unk_1F4CE0A20;
  v108 = xmmword_1D0E843A0;
  v110 = &v111;
  v105[0] = vdupq_n_s64(0x7FF8000000000000uLL);
  v105[1] = v105[0];
  v105[2] = v105[0];
  v105[3] = v105[0];
  v105[4] = v105[0];
  v105[5] = v105[0];
  v105[6] = v105[0];
  v105[7] = v105[0];
  v105[8] = v105[0];
  v105[9] = v105[0];
  v105[10] = v105[0];
  v105[11] = v105[0];
  v105[12] = v105[0];
  v105[13] = v105[0];
  v105[14] = v105[0];
  v105[15] = v105[0];
  v105[16] = v105[0];
  v105[17] = v105[0];
  v105[18] = v105[0];
  v105[19] = v105[0];
  v105[20] = v105[0];
  v105[21] = v105[0];
  v105[22] = v105[0];
  v105[23] = v105[0];
  v105[24] = v105[0];
  v105[25] = v105[0];
  v105[26] = v105[0];
  v105[27] = v105[0];
  v105[28] = v105[0];
  v105[29] = v105[0];
  v105[30] = v105[0];
  v105[31] = v105[0];
  v105[32] = v105[0];
  v105[33] = v105[0];
  v105[34] = v105[0];
  v106 = 0x7FF8000000000000;
  sub_1D0D85CD4(&v112, a1, &v107, v105);
  v102 = 0x100000003;
  v101 = xmmword_1D0E7DCC0;
  v100 = &unk_1F4CDEB28;
  v103 = v104;
  v104[0] = *&v110[1].f64[1];
  v104[1] = *&v110[2].f64[0];
  v104[2] = *&v110[2].f64[1];
  _Q3 = v110[4];
  _D5 = _Q3.f64[1];
  __asm { FMLA            D4, D5, V3.D[1] }

  v58 = sqrt(_D4);
  if (fabs(v58) >= 2.22044605e-16)
  {
    v61 = vdupq_lane_s64(*&v58, 0);
    v59 = vdivq_f64(_Q3, v61);
    v60 = vdivq_f64(v110[3], v61);
  }

  else
  {
    v59 = xmmword_1D0E7DCB0;
    v60 = 0uLL;
  }

  v99[0] = v60;
  v99[1] = v59;
  v96 = 0x100000003;
  v95 = xmmword_1D0E7DCC0;
  v94 = &unk_1F4CDEB28;
  v97 = &v98;
  sub_1D0B88A54(v99, &v100, &v75);
  sub_1D0B894B0(&v94, &v75);
  v90 = 0x300000001;
  v89 = xmmword_1D0E7F310;
  v88 = &unk_1F4CDF248;
  v91 = &v92;
  v92 = *(a3 + 96);
  v93 = *(a3 + 112);
  cnrotation::CNRotation::RotationMatrix(v99, v87);
  cnrotation::CNRotation::dRotateVectordq(v99[0].f64, &v100, v86);
  sub_1D0D921D8(v85, v105);
  sub_1D0D8B654(v84, v105);
  sub_1D0D8A93C(&v75);
  sub_1D0B894B0(a5, &v75);
  v77 = 0x1A00000001;
  v75 = &unk_1F4CE1FD0;
  v78 = &v79;
  v76 = xmmword_1D0E7F310;
  v79 = 0x400000003;
  v80 = 5;
  sub_1D0D741B0(v83, &v75);
  v77 = 0x1A00000001;
  v75 = &unk_1F4CE1FD0;
  v78 = &v79;
  v76 = xmmword_1D0E7F310;
  v79 = 0x700000006;
  v80 = 8;
  sub_1D0D741B0(v82, &v75);
  sub_1D0BFB8FC(&v88, v87, v81);
  sub_1D0BFB8FC(v81, v85, v74);
  sub_1D0D92264(&v75, a5, v83);
  sub_1D0D922C8(&v75, v74);
  sub_1D0D924A0(v74, &v88, v86);
  sub_1D0D92414(v81, v74, v84);
  sub_1D0D92264(&v75, a5, v82);
  sub_1D0D922C8(&v75, v81);
  *&v62 = 0x100000001;
  *(&v62 + 1) = 0x100000001;
  *(a4 + 8) = v62;
  v63 = DWORD2(v89);
  if (SDWORD2(v89) < 1)
  {
    v65 = 0.0;
  }

  else
  {
    v64 = v91;
    v65 = 0.0;
    v66 = v97;
    do
    {
      v67 = *v64++;
      v68 = v67;
      v69 = *v66++;
      v65 = v65 + v68 * v69;
      --v63;
    }

    while (v63);
  }

  **(a4 + 32) = v65 + **(a2 + 32);
  sub_1D0D9254C(&v75);
  sub_1D0B894B0(a6, &v75);
  return 0;
}

uint64_t sub_1D0D689D4(uint64_t a1, double *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
        sub_1D0D9286C();
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

void sub_1D0D68E24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  if (a2)
  {
    sub_1D0C537DC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0D68E50(uint64_t a1)
{
  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

uint64_t raven::RavenPNTEstimator::HandleEvent(raven::RavenPNTEstimator *this, const raven::PositionChangeEvent *a2)
{
  v70[4] = *MEMORY[0x1E69E9840];
  if (*(this + 57) == 1)
  {
    if (*(this + 58) == 1)
    {
      sub_1D0BBA094(v62, a2 + 200);
      v4 = sub_1D0BE0DE8(v60, a2 + 264);
      v5 = (*(*a2 + 16))(a2, v4);
      v7 = v6;
      *&v59 = v5;
      *(&v59 + 1) = v6;
      sub_1D0BA002C(v50, 7);
      v50[0] = &unk_1F4CE1BD0;
      v52 = v59;
      v63 = *(a2 + 104);
      v9 = CNTimeSpan::operator-(&v59, &v63, v63, v8);
      v58 = v15 + v9;
      v53 = this + 2920;
      v54 = this + 14824;
      v55 = this + 14840;
      v56 = this + 2760;
      v57 = this + 2800;
      if ((v61 & 0x80000000) != 0)
      {
        __assert_rtn("Zeros", "cnmatrix.h", 3098, "nr >= 0");
      }

      v66 = 0x100000003;
      v63.i64[0] = &unk_1F4CDEB28;
      v16 = v68;
      v67 = v68;
      v63.i64[1] = v61 | 0x100000000;
      v64 = v61;
      v65 = v61;
      if (v61 > 3)
      {
        v18 = &v68[v61];
        bzero(v68, 16 * ((v61 - 1) >> 1));
        *(v18 - 2) = 0;
        *(v18 - 1) = 0;
      }

      else if (v61)
      {
        bzero(v68, 8 * v61);
      }

      if (*(this + 61736))
      {
        if (*(this + 16918) == 174)
        {
          LOWORD(v70[0]) = 2;
          v69 = 2;
          v45 = v7 + v5;
          cnprint::CNPrinter::Print(v70, &v69, "MeasurementAccumulator::AddMeasurement() failed - Out of space,t_meas,%.3lf", v10, v11, v12, v13, v14, SLOBYTE(v45));
        }

        else if (*(this + 61737) == 1)
        {
          if (cnprint::CNPrinter::GetLogLevel(v16) <= 1)
          {
            LOWORD(v70[0]) = 2;
            v69 = 1;
            v47 = v7 + v5;
            cnprint::CNPrinter::Print(v70, &v69, "MeasurementAccumulator::AddMeasurement() failed - Locked,t_meas,%.3lf", v24, v25, v26, v27, v28, SLOBYTE(v47));
          }
        }

        else
        {
          v29 = sub_1D0B7C8AC(&v59, this + 7718);
          if (!v29)
          {
            v70[0] = 0;
            v70[1] = 0;
            sub_1D0D92D2C();
          }

          if (cnprint::CNPrinter::GetLogLevel(v29) <= 1)
          {
            LOWORD(v70[0]) = 2;
            v69 = 1;
            v48 = *(&v59 + 1) + v59;
            v49 = *(this + 7719) + *(this + 7718);
            cnprint::CNPrinter::Print(v70, &v69, "MeasurementAccumulator::AddMeasurement() failed - Measurement too old,t_meas,%.3lf,t_start,%.3lf", v30, v31, v32, v33, v34, SLOBYTE(v48));
          }
        }
      }

      else if (cnprint::CNPrinter::GetLogLevel(v16) <= 1)
      {
        LOWORD(v70[0]) = 2;
        v69 = 1;
        v46 = v7 + v5;
        cnprint::CNPrinter::Print(v70, &v69, "MeasurementAccumulator::AddMeasurement() failed - Not initialized,t_meas,%.3lf", v19, v20, v21, v22, v23, SLOBYTE(v46));
      }

      LOWORD(v70[0]) = 12;
      v69 = 4;
      v63.i64[0] = (*(*a2 + 16))(a2);
      v63.i64[1] = v35;
      v36 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, &v63, "Could not add measurement - device position-change");
      if (*(this + 2735) >= 0)
      {
        LOBYTE(v42) = v36;
      }

      else
      {
        v42 = *(this + 339);
      }

      cnprint::CNPrinter::Print(v70, &v69, "%s", v37, v38, v39, v40, v41, v42);
      v17 = 0xFFFFFFFFLL;
      v50[0] = &unk_1F4CE4300;
      if (v51 < 0)
      {
        operator delete(v50[2]);
      }
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0xFFFFFFFFLL;
  }

  v43 = *MEMORY[0x1E69E9840];
  return v17;
}

void sub_1D0D6949C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a2)
  {
    sub_1D0C537DC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0D69504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x1EEE9AC00](a1, a2, a3, a4);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  if ((atomic_load_explicit(&qword_1EE053BA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE053BA0))
  {
    v80 = 0x1300000001;
    v78 = &unk_1F4CE2330;
    v81 = &v82;
    v79 = xmmword_1D0E844E0;
    v59 = xmmword_1D0E84440;
    v60 = xmmword_1D0E7DD30;
    v61 = v84;
    v62 = 13;
    v63 = vdupq_n_s64(0x13uLL);
    v64 = vdupq_n_s64(4uLL);
    do
    {
      if (vuzp1_s16(vmovn_s64(vcgtq_u64(v63, v60)), *v59.i8).u8[0])
      {
        *(v61 - 3) = v62 - 13;
      }

      if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x13uLL), *&v60)), *&v59).i8[2])
      {
        *(v61 - 2) = v62 - 12;
      }

      if (vuzp1_s16(*&v59, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x13uLL), *&v59))).i32[1])
      {
        *(v61 - 1) = v62 - 11;
        *v61 = v62 - 10;
      }

      v59 = vaddq_s64(v59, v64);
      v60 = vaddq_s64(v60, v64);
      v62 += 4;
      v61 += 4;
    }

    while (v62 != 33);
    sub_1D0D77214(&unk_1EE0544F0, &v78);
    __cxa_atexit(sub_1D0D7B720, &unk_1EE0544F0, &dword_1D0B71000);
    __cxa_guard_release(&qword_1EE053BA0);
  }

  if ((atomic_load_explicit(&qword_1EE053BA8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE053BA8))
  {
    v65 = 0;
    v80 = 0x1A00000001;
    v78 = &unk_1F4CE1FD0;
    v81 = &v82;
    v79 = xmmword_1D0E844D0;
    v66 = xmmword_1D0E7DD30;
    v67 = vdupq_n_s64(2uLL);
    v68 = vdupq_n_s64(0x12uLL);
    do
    {
      if (vmovn_s64(vcgtq_u64(v68, v66)).u8[0])
      {
        *(&v82 + v65) = v65;
      }

      if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0x12uLL), *&v66)).i32[1])
      {
        *(&v82 + v65 + 1) = v65 + 1;
      }

      v65 += 2;
      v66 = vaddq_s64(v66, v67);
    }

    while (v65 != 18);
    sub_1D0D741B0(&unk_1EC5FB440, &v78);
    __cxa_atexit(sub_1D0D73024, &unk_1EC5FB440, &dword_1D0B71000);
    __cxa_guard_release(&qword_1EE053BA8);
  }

  if ((atomic_load_explicit(&qword_1EE053BB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE053BB0))
  {
    v80 = 0x1A00000001;
    v78 = &unk_1F4CE1FD0;
    v81 = &v82;
    v79 = xmmword_1D0E7F310;
    v82 = 0x700000006;
    v83 = 8;
    sub_1D0D741B0(&unk_1EC5FB4D0, &v78);
    __cxa_atexit(sub_1D0D73024, &unk_1EC5FB4D0, &dword_1D0B71000);
    __cxa_guard_release(&qword_1EE053BB0);
  }

  if ((atomic_load_explicit(&qword_1EE053BB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE053BB8))
  {
    v80 = 0x1A00000001;
    v78 = &unk_1F4CE1FD0;
    v81 = &v82;
    v79 = xmmword_1D0E7F310;
    v82 = 0x100000000;
    v83 = 2;
    sub_1D0D741B0(&unk_1EC5FB560, &v78);
    __cxa_atexit(sub_1D0D73024, &unk_1EC5FB560, &dword_1D0B71000);
    __cxa_guard_release(&qword_1EE053BB8);
  }

  if (!v10 || (v15 = **v10, (v16 = __dynamic_cast(v10, &unk_1F4CE42A0, &unk_1F4CE1B88, 0)) == 0))
  {
    LOWORD(v78) = 12;
    v69[0] = 4;
    v36 = MEMORY[0x30] + MEMORY[0x28];
LABEL_31:
    cnprint::CNPrinter::Print(&v78, v69, "time,%.3lf,h-function failure on line %d: %s() %s", v4, v5, v6, v7, v8, SLOBYTE(v36));
    return 0xFFFFFFFFLL;
  }

  v18 = v16;
  v20 = *(v14 + 8);
  v19 = *(v14 + 12);
  if (v20 <= v19)
  {
    v21 = *(v14 + 12);
  }

  else
  {
    v21 = *(v14 + 8);
  }

  if (!v20 || !v19 || v21 != 26 || ((v23 = *(v12 + 8), v22 = *(v12 + 12), v23 <= v22) ? (v24 = *(v12 + 12)) : (v24 = *(v12 + 8)), !v23 || !v22 || v24 != 3))
  {
    LOWORD(v78) = 12;
    v69[0] = 4;
    v36 = *(v16 + 6) + *(v16 + 5);
    goto LABEL_31;
  }

  if (!*(v16 + 7))
  {
    LOWORD(v78) = 12;
    v69[0] = 4;
    v36 = *(v16 + 6) + *(v16 + 5);
    goto LABEL_31;
  }

  v17.i64[0] = *(v16 + 12);
  if ((v17.i64[0] <= -1 || ((v17.i64[0] & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (v17.i64[0] - 1) >= 0xFFFFFFFFFFFFFLL)
  {
    LOWORD(v78) = 12;
    v69[0] = 4;
    v36 = *(v16 + 6) + *(v16 + 5);
    goto LABEL_31;
  }

  v111 = *(v16 + 40);
  *&v79 = 0;
  v78 = 0;
  *v27.i64 = CNTimeSpan::SetTimeSpan(&v78, 0, v17, v111);
  *&v110 = CNTimeSpan::operator-(&v111, &v78, v27, v28);
  *(&v110 + 1) = v29;
  v30 = v18[9];
  v109 = *v18[8];
  sub_1D0D96A9C(&v107, v30);
  v31 = v18[7];
  v104 = 0x10000001CLL;
  v102 = &unk_1F4CE0A20;
  v103 = xmmword_1D0E844F0;
  v105 = &v106;
  if (sub_1D0D85A88(&v111, &v109, v108, v31, v18[11], &v102))
  {
    sub_1D0D85A30((v18 + 5), "could not integrate full states", "h_DevicePositionChange_RavenPNT", 2880, v32, v33, v34, v35);
  }

  else
  {
    sub_1D0D752A8(v101);
    sub_1D0D98740(&v78, v101, &unk_1EE0544F0);
    sub_1D0D8874C(&v78, SDWORD2(v103), v105);
    v98 = 0x100000013;
    v96 = &unk_1F4CE40B8;
    v97 = xmmword_1D0E844F0;
    v99 = &v100;
    v94[0] = vdupq_n_s64(0x7FF8000000000000uLL);
    v94[1] = v94[0];
    v94[2] = v94[0];
    v94[3] = v94[0];
    v94[4] = v94[0];
    v94[5] = v94[0];
    v94[6] = v94[0];
    v94[7] = v94[0];
    v94[8] = v94[0];
    v94[9] = v94[0];
    v94[10] = v94[0];
    v94[11] = v94[0];
    v94[12] = v94[0];
    v94[13] = v94[0];
    v94[14] = v94[0];
    v94[15] = v94[0];
    v94[16] = v94[0];
    v94[17] = v94[0];
    v94[18] = v94[0];
    v94[19] = v94[0];
    v94[20] = v94[0];
    v94[21] = v94[0];
    v94[22] = v94[0];
    v94[23] = v94[0];
    v94[24] = v94[0];
    v94[25] = v94[0];
    v94[26] = v94[0];
    v94[27] = v94[0];
    v94[28] = v94[0];
    v94[29] = v94[0];
    v94[30] = v94[0];
    v94[31] = v94[0];
    v94[32] = v94[0];
    v94[33] = v94[0];
    v94[34] = v94[0];
    v95 = 0x7FF8000000000000;
    sub_1D0D85CD4(v101, v14, &v96, v94);
    _Q1 = v99[4];
    _D3 = _Q1.f64[1];
    __asm { FMLA            D2, D3, V1.D[1] }

    v44 = sqrt(_D2);
    if (fabs(v44) >= 2.22044605e-16)
    {
      v47 = vdupq_lane_s64(*&v44, 0);
      v45 = vdivq_f64(_Q1, v47);
      v46 = vdivq_f64(v99[3], v47);
    }

    else
    {
      v45 = xmmword_1D0E7DCB0;
      v46 = 0uLL;
    }

    v93[0] = v46;
    v93[1] = v45;
    cnrotation::CNRotation::RotationMatrix(v93, &v92);
    v89 = 0x10000001CLL;
    v87 = &unk_1F4CE0A20;
    v88 = xmmword_1D0E844F0;
    v90 = &v91;
    if (sub_1D0D85A88(&v110, &v109, v108, v31, v18[11], &v87))
    {
      sub_1D0D85A30((v18 + 5), "could not integrate full states", "h_DevicePositionChange_RavenPNT", 2915, v48, v49, v50, v51);
    }

    else
    {
      sub_1D0D7CFF0(&v78);
      v84[404] = 0;
      v78 = &unk_1F4CE3F68;
      v85 = 0u;
      v86 = 0u;
      sub_1D0D5224C(v77);
      if (sub_1D0D8A408(v31, v77))
      {
        v56 = 2929;
        v57 = "could not get integrator configuration";
      }

      else
      {
        if (!sub_1D0D53D5C(&v78, v77))
        {
          v75[28] = &v78;
          v75[29] = &v111;
          v58 = v18[11];
          v75[30] = &v102;
          v75[31] = v58;
          v76 = v110;
          sub_1D0D8A47C(v75, 15);
          v72 = 0x10000001ALL;
          v70[6] = &unk_1F4CE3E48;
          v71 = xmmword_1D0E843B0;
          v73 = &v74;
          sub_1D0D87FCC(v70);
        }

        v56 = 2934;
        v57 = "could not set integrator configuration";
      }

      sub_1D0D85A30((v18 + 5), v57, "h_DevicePositionChange_RavenPNT", v56, v52, v53, v54, v55);
      sub_1D0D4F978(&v78);
    }
  }

  return 0xFFFFFFFFLL;
}