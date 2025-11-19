uint64_t raven::RavenConvergenceEstimator::HandleEvent(raven::RavenConvergenceEstimator *this, const raven::MapVectorEvent *a2)
{
  v152[3] = *MEMORY[0x1E69E9840];
  if (*(this + 57) != 1 || *(this + 58) != 1)
  {
    v11 = 0xFFFFFFFFLL;
    goto LABEL_8;
  }

  v4 = a2 + 104;
  *&v147 = (*(*a2 + 16))(a2);
  *(&v147 + 1) = v5;
  v144 = 0x100000008;
  v142 = &unk_1F4CE4320;
  v143 = xmmword_1D0E84520;
  v145 = &v146;
  v6 = 768;
  if (!*(this + 1101))
  {
    v6 = 8;
  }

  sub_1D0B894B0(&v142, this + v6 + 2864);
  v7 = v145[4];
  v8 = v145[5];
  v140 = 0uLL;
  v141 = 0;
  v140 = *v145;
  v9 = v145[3];
  v141 = *(v145 + 2);
  ShouldMapVectorConstraintBeApplied = raven::RavenEstimator::ShouldMapVectorConstraintBeApplied(this, &v140, v4);
  if (ShouldMapVectorConstraintBeApplied == -2)
  {
    v11 = 4294967293;
    goto LABEL_8;
  }

  v14 = sqrt(v7 * v7 + v9 * v9 + v8 * v8);
  if (fabs(v14) > 0.000000015 && ShouldMapVectorConstraintBeApplied == 0)
  {
    sub_1D0BA5FC4(this + 2864, v127);
    v124 = 0x300000001;
    v122 = &unk_1F4CDF248;
    v123 = xmmword_1D0E7F310;
    v125 = v126;
    v126[0] = v9 * (1.0 / v14);
    v126[1] = v7 * (1.0 / v14);
    v126[2] = v8 * (1.0 / v14);
    *&v103[0] = 0x400000003;
    v118 = 0x100000003;
    v116 = &unk_1F4CDEAA0;
    v117 = xmmword_1D0E7DCC0;
    v121 = 5;
    v119 = &v120;
    v120 = 0x400000003;
    sub_1D0BADC74(&v99, v127, &v116, &v116);
    v108 = 0x300000001;
    v106 = &unk_1F4CDF248;
    v107 = xmmword_1D0E7F310;
    v109 = v110;
    sub_1D0B89390(&v122, &v99, &v106);
    v17 = v123;
    v16 = DWORD1(v123);
    v150 = 0x100000003;
    v148 = &unk_1F4CDEB28;
    v151 = v152;
    *&v149 = __PAIR64__(v123, DWORD1(v123));
    DWORD2(v149) = v123 * DWORD1(v123);
    HIDWORD(v149) = DWORD1(v123);
    if (DWORD1(v123))
    {
      v18 = 0;
      v19 = 0;
      v20 = HIDWORD(v123);
      v21 = v125;
      do
      {
        v22 = v18;
        v23 = v19;
        for (i = v17; i; --i)
        {
          v152[v23] = v21[v22];
          v23 += v16;
          ++v22;
        }

        ++v19;
        v18 += v20;
      }

      while (v19 != v16);
    }

    v113 = 0x100000001;
    v111 = &unk_1F4CDF418;
    *&v25 = 0x100000001;
    *(&v25 + 1) = 0x100000001;
    v112 = v25;
    v114 = &v115;
    v26 = sub_1D0B89390(&v106, &v148, &v111);
    if (*(this + 1208) == 1 && *(this + 1320) - 1 <= 6)
    {
      v27 = qword_1D0E9D630[(*(this + 1320) - 1)];
    }

    else
    {
      v27 = 928;
    }

    if (v14 >= cnstatistics::InverseNormal(v26, 1.0 - *(*(this + 146) + v27), 0.0, sqrt(*v114)))
    {
      sub_1D0BA002C(&v99, 21);
      v103[0] = v147;
      v58 = *(v4 + 6);
      v103[8] = *(v4 + 7);
      v59 = *(v4 + 9);
      v103[9] = *(v4 + 8);
      v104[0] = v59;
      *(v104 + 12) = *(v4 + 156);
      v60 = *(v4 + 2);
      v103[4] = *(v4 + 3);
      v61 = *(v4 + 5);
      v103[5] = *(v4 + 4);
      v103[6] = v61;
      v103[7] = v58;
      v62 = *(v4 + 1);
      v103[1] = *v4;
      v103[2] = v62;
      v99 = &unk_1F4CEB5F8;
      v103[3] = v60;
      v63 = *(this + 1208);
      v64 = v63 == 1 && *(this + 1320) == 5 && *(this + 2592) == 1 && *(this + 2704) - 2 < 3;
      v105 = v64;
      v108 = 0x100000003;
      v106 = &unk_1F4CDEB28;
      *&v65 = 0x100000001;
      *(&v65 + 1) = 0x100000001;
      v107 = v65;
      v109 = v110;
      v110[0] = 0.0;
      v150 = 0x100000001;
      v148 = &unk_1F4CDF418;
      v149 = v65;
      v151 = v152;
      v66 = *(*(this + 146) + 2528);
      if (v66 <= 0.0)
      {
        v98 = 12;
        v97 = 4;
        v111 = (*(*a2 + 16))(a2);
        *&v112 = v82;
        v83 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, &v111, "estimator_map_vector_number_of_cross_track_position_sigmas_in_road_width_ <= 0");
        if (*(this + 2735) >= 0)
        {
          LOBYTE(v76) = v83;
        }

        else
        {
          v76 = *(this + 339);
        }
      }

      else
      {
        v67 = *(a2 + 30) / v66;
        v68 = v67 >= 1.0 || v63 == 0;
        if (!v68 && *(this + 1320) != 5)
        {
          v67 = 1.0;
        }

        v152[0] = v67 * v67;
        if (!sub_1D0DF1AF4(this + 8560, &v147, &v106, &v148, &v99, v55, v56, v57))
        {
          v28 = 0;
LABEL_58:
          v99 = &unk_1F4CE4300;
          if (SHIBYTE(v102) < 0)
          {
            operator delete(__p[1]);
          }

          goto LABEL_25;
        }

        v98 = 12;
        v97 = 4;
        v111 = (*(*a2 + 16))(a2);
        *&v112 = v69;
        v70 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, &v111, "Could not add measurement - map vector position");
        if (*(this + 2735) >= 0)
        {
          LOBYTE(v76) = v70;
        }

        else
        {
          v76 = *(this + 339);
        }
      }

      cnprint::CNPrinter::Print(&v98, &v97, "%s", v71, v72, v73, v74, v75, v76);
      v28 = -1;
      goto LABEL_58;
    }
  }

  v28 = 0;
LABEL_25:
  v29 = sub_1D0BA002C(v127, 22);
  v129 = v147;
  v35 = *(v4 + 6);
  v137 = *(v4 + 7);
  v36 = *(v4 + 9);
  v138 = *(v4 + 8);
  v139[0] = v36;
  *(v139 + 12) = *(v4 + 156);
  v37 = *(v4 + 2);
  v133 = *(v4 + 3);
  v38 = *(v4 + 5);
  v134 = *(v4 + 4);
  v127[0] = &unk_1F4CEB638;
  v135 = v38;
  v136 = v35;
  v39 = *(v4 + 1);
  v130 = *v4;
  v131 = v39;
  v132 = v37;
  v124 = 0x100000003;
  v122 = &unk_1F4CDEB28;
  *&v40 = 0x100000001;
  *(&v40 + 1) = 0x100000001;
  v123 = v40;
  v125 = v126;
  v126[0] = 0.0;
  v108 = 0x100000001;
  v106 = &unk_1F4CDF418;
  v107 = v40;
  v41 = *(*(this + 146) + 2536);
  v109 = v110;
  if (v41 <= 0.0)
  {
    LOWORD(v148) = 12;
    LOBYTE(v116) = 4;
    v99 = (*(*a2 + 16))(a2);
    __p[0] = v42;
    v43 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, &v99, "estimator_map_vector_cross_track_velocity_sigma_ <= 0");
    if (*(this + 2735) >= 0)
    {
      LOBYTE(v49) = v43;
    }

    else
    {
      v49 = *(this + 339);
    }
  }

  else
  {
    v110[0] = v41 * v41;
    v101 = 0x100000003;
    v99 = &unk_1F4CDEB28;
    *__p = v40;
    v102 = v103;
    *&v103[0] = 0;
    if (*(this + 8560))
    {
      if (*(this + 3624) == 174)
      {
        LOWORD(v148) = 2;
        LOBYTE(v116) = 2;
        v92 = *(&v147 + 1) + v147;
        cnprint::CNPrinter::Print(&v148, &v116, "MeasurementAccumulator::AddMeasurement() failed - Out of space,t_meas,%.3lf", v30, v31, v32, v33, v34, SLOBYTE(v92));
      }

      else if (*(this + 8561) == 1)
      {
        if (cnprint::CNPrinter::GetLogLevel(v29) <= 1)
        {
          LOWORD(v148) = 2;
          LOBYTE(v116) = 1;
          v94 = *(&v147 + 1) + v147;
          cnprint::CNPrinter::Print(&v148, &v116, "MeasurementAccumulator::AddMeasurement() failed - Locked,t_meas,%.3lf", v77, v78, v79, v80, v81, SLOBYTE(v94));
        }
      }

      else
      {
        v84 = sub_1D0B7C8AC(&v147, this + 1071);
        if (!v84)
        {
          v148 = 0;
          *&v149 = 0;
          sub_1D0DF80F4();
        }

        if (cnprint::CNPrinter::GetLogLevel(v84) <= 1)
        {
          LOWORD(v148) = 2;
          LOBYTE(v116) = 1;
          v95 = *(&v147 + 1) + v147;
          v96 = *(this + 1072) + *(this + 1071);
          cnprint::CNPrinter::Print(&v148, &v116, "MeasurementAccumulator::AddMeasurement() failed - Measurement too old,t_meas,%.3lf,t_start,%.3lf", v85, v86, v87, v88, v89, SLOBYTE(v95));
        }
      }
    }

    else if (cnprint::CNPrinter::GetLogLevel(v29) <= 1)
    {
      LOWORD(v148) = 2;
      LOBYTE(v116) = 1;
      v93 = *(&v147 + 1) + v147;
      cnprint::CNPrinter::Print(&v148, &v116, "MeasurementAccumulator::AddMeasurement() failed - Not initialized,t_meas,%.3lf", v50, v51, v52, v53, v54, SLOBYTE(v93));
    }

    LOWORD(v148) = 12;
    LOBYTE(v116) = 4;
    v99 = (*(*a2 + 16))(a2);
    __p[0] = v90;
    v91 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, &v99, "Could not add measurement - map vector velocity");
    if (*(this + 2735) >= 0)
    {
      LOBYTE(v49) = v91;
    }

    else
    {
      v49 = *(this + 339);
    }
  }

  cnprint::CNPrinter::Print(&v148, &v116, "%s", v44, v45, v46, v47, v48, v49);
  v11 = (v28 - 2);
  v127[0] = &unk_1F4CE4300;
  if (v128 < 0)
  {
    operator delete(v127[2]);
  }

LABEL_8:
  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

void sub_1D0DF1518(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1D0C537DC(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1D0DF15DC(uint64_t a1, uint64_t a2, char **lpsrc, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v72 = *MEMORY[0x1E69E9840];
  if (!lpsrc || (v13 = **lpsrc, (v14 = __dynamic_cast(lpsrc, &unk_1F4CE42A0, &unk_1F4CEB610, 0)) == 0))
  {
    LOWORD(v60) = 12;
    LOBYTE(v55) = 4;
    v49 = MEMORY[0x30] + MEMORY[0x28];
    cnprint::CNPrinter::Print(&v60, &v55, "time,%.3lf,h-function failure on line %d: %s() %s", a4, a5, a6, a7, a8, SLOBYTE(v49));
    goto LABEL_19;
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
    LOWORD(v60) = 12;
    LOBYTE(v55) = 4;
    v29 = v14[6] + *(v14 + 5);
    cnprint::CNPrinter::Print(&v60, &v55, "time,%.3lf,h-function failure on line %d: %s() %s", a4, a5, a6, a7, a8, SLOBYTE(v29));
    goto LABEL_19;
  }

  v22 = *(a1 + 32);
  v70 = *v22;
  v71 = *(v22 + 16);
  v69 = 0;
  if (cnnavigation::ECEFToLLA(&v70, 1, &v68, 0, &v60))
  {
    LOWORD(v60) = 12;
    LOBYTE(v55) = 4;
    v28 = v15[6] + *(v15 + 5);
    cnprint::CNPrinter::Print(&v60, &v55, "time,%.3lf,h-function failure on line %d: %s() %s", v23, v24, v25, v26, v27, SLOBYTE(v28));
LABEL_19:
    result = 0xFFFFFFFFLL;
    goto LABEL_20;
  }

  v68 = vmulq_f64(*(v15 + 19), vdupq_n_s64(0x3F91DF46A2529D39uLL));
  v61 = 0;
  v64 = 0x300000003;
  v62 = &unk_1F4CD5DD0;
  v63 = xmmword_1D0E76C10;
  v65 = &v66;
  v60 = &unk_1F4CD5D50;
  if (cnnavigation::ECEFToENU(&v70, 1, 1, &v68, 0, v67, &v60))
  {
    LOWORD(v55) = 12;
    LOBYTE(v50) = 4;
    v37 = v15[6] + *(v15 + 5);
    cnprint::CNPrinter::Print(&v55, &v50, "time,%.3lf,h-function failure on line %d: %s() %s", v32, v33, v34, v35, v36, SLOBYTE(v37));
    goto LABEL_19;
  }

  v57 = 0x300000003;
  v55 = &unk_1F4CD5DD0;
  v56 = xmmword_1D0E76C10;
  v58 = &v59;
  if (v61 == 1)
  {
    sub_1D0B894B0(&v55, &v62);
  }

  v38 = __sincos_stret(v15[26] * 0.0174532925);
  *&v39 = 0x100000001;
  *(&v39 + 1) = 0x100000001;
  *(a4 + 8) = v39;
  v40 = -v38.__cosval;
  v41 = *(a4 + 32);
  v42 = v38.__sinval * v67[1] - v38.__cosval * v67[0] + **(a2 + 32);
  *v41 = v42;
  if ((v15[29] & 1) == 0)
  {
    v43 = v15[24];
    if (fabs(v42) > v43 * 0.5)
    {
      if (v42 >= 0.0)
      {
        v43 = -v43;
      }

      *v41 = v42 + v43 * 0.5;
    }
  }

  v52 = 0x800000001;
  v50 = &unk_1F4CEC348;
  v53 = v54;
  v51 = xmmword_1D0E9CBE0;
  memset(v54, 0, sizeof(v54));
  sub_1D0B894B0(a5, &v50);
  v44 = v58;
  v45 = *(a5 + 32);
  *v45 = v38.__sinval * v58[1] + v40 * *v58;
  v46 = SHIDWORD(v56);
  v47 = *(a5 + 20);
  v45[v47] = v38.__sinval * v44[SHIDWORD(v56) + 1] + v40 * v44[SHIDWORD(v56)];
  v45[2 * v47] = v38.__sinval * v44[((2 * v46) | 1)] + v40 * v44[2 * v46];
  v52 = 0x100000001;
  v50 = &unk_1F4CDF418;
  *&v48 = 0x100000001;
  *(&v48 + 1) = 0x100000001;
  v51 = v48;
  v53 = v54;
  *&v54[0] = 0x3FF0000000000000;
  sub_1D0B894B0(a6, &v50);
  result = 0;
LABEL_20:
  v31 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D0DF1AF4(uint64_t a1, double *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
        sub_1D0DF7ECC();
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

void sub_1D0DF1F44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  if (a2)
  {
    sub_1D0C537DC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0DF1F70(uint64_t a1)
{
  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

uint64_t sub_1D0DF1FC0(uint64_t a1, uint64_t a2, char **lpsrc, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!lpsrc || (v13 = **lpsrc, (v14 = __dynamic_cast(lpsrc, &unk_1F4CE42A0, &unk_1F4CEB650, 0)) == 0))
  {
    v42 = 12;
    LOBYTE(v37) = 4;
    v31 = MEMORY[0x30] + MEMORY[0x28];
LABEL_20:
    cnprint::CNPrinter::Print(&v42, &v37, "time,%.3lf,h-function failure on line %d: %s() %s", a4, a5, a6, a7, a8, SLOBYTE(v31));
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
    v42 = 12;
    LOBYTE(v37) = 4;
    v31 = v14[6] + *(v14 + 5);
    goto LABEL_20;
  }

  v22 = *(a1 + 32);
  v45 = *(v22 + 24);
  v46 = *(v22 + 40);
  sub_1D0BFE48C(&v42, v14[19] * 0.0174532925, v14[20] * 0.0174532925);
  sub_1D0BED7A0(&v42, &v45, v47);
  v39 = 0x300000003;
  v37 = &unk_1F4CD5DD0;
  v38 = xmmword_1D0E76C10;
  v40 = &v41;
  if (v43 == 1)
  {
    sub_1D0B894B0(&v37, &v44);
  }

  v23 = __sincos_stret(v15[26] * 0.0174532925);
  *&v24 = 0x100000001;
  *(&v24 + 1) = 0x100000001;
  *(a4 + 8) = v24;
  **(a4 + 32) = v23.__sinval * v47[1] - v23.__cosval * v47[0] + **(a2 + 32);
  v34 = 0x800000001;
  v32 = &unk_1F4CEC348;
  v35 = v36;
  v33 = xmmword_1D0E9CBE0;
  memset(v36, 0, sizeof(v36));
  sub_1D0B894B0(a5, &v32);
  v25 = v40;
  v26 = *(a5 + 20);
  v27 = *(a5 + 32);
  *(v27 + 24 * v26) = v23.__sinval * v40[1] - v23.__cosval * *v40;
  v28 = SHIDWORD(v38);
  *(v27 + 32 * v26) = v23.__sinval * v25[SHIDWORD(v38) + 1] - v23.__cosval * v25[SHIDWORD(v38)];
  *(v27 + 40 * v26) = v23.__sinval * v25[((2 * v28) | 1)] - v23.__cosval * v25[2 * v28];
  v34 = 0x100000001;
  v32 = &unk_1F4CDF418;
  *&v29 = 0x100000001;
  *(&v29 + 1) = 0x100000001;
  v33 = v29;
  v35 = v36;
  *&v36[0] = 0x3FF0000000000000;
  sub_1D0B894B0(a6, &v32);
  return 0;
}

uint64_t sub_1D0DF2310(uint64_t a1)
{
  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

uint64_t raven::RavenConvergenceEstimator::HandleEvent(raven::RavenConvergenceEstimator *this, const raven::OdometerEvent *a2)
{
  v80[4] = *MEMORY[0x1E69E9840];
  if (*(this + 57) == 1)
  {
    if (*(this + 58) == 1)
    {
      v69 = 0x100000003;
      *&v67[9] = &unk_1F4CDEB28;
      *&v4 = 0x100000001;
      *(&v4 + 1) = 0x100000001;
      v68 = v4;
      v70 = &v71;
      v71 = *(a2 + 25);
      v65 = 0x300000003;
      v63 = &unk_1F4CD5DD0;
      v64 = v4;
      v66 = v67;
      v67[0] = *(a2 + 26) * *(a2 + 26);
      sub_1D0BA002C(v56, 19);
      v56[0] = &unk_1F4CEB888;
      v58 = (*(*a2 + 16))(a2);
      v59 = v5;
      v72 = (*(*a2 + 16))(a2);
      v73 = v6;
      v9 = CNTimeSpan::operator-(&v72, a2 + 13, v7, v8);
      v10 = *(*(this + 146) + 104);
      v60 = v11 + v9;
      v61 = v10;
      v62 = v10;
      v17 = (*(*a2 + 16))(a2);
      v19 = v18;
      v54 = v17;
      v55 = v18;
      if ((v64 & 0x80000000) != 0)
      {
        __assert_rtn("Zeros", "cnmatrix.h", 3098, "nr >= 0");
      }

      v76 = 0x100000003;
      v72 = &unk_1F4CDEB28;
      v20 = v78;
      v77 = v78;
      v73 = v64 | 0x100000000;
      v74 = v64;
      v75 = v64;
      if (v64 > 3)
      {
        v22 = &v78[v64];
        bzero(v78, 16 * ((v64 - 1) >> 1));
        *(v22 - 2) = 0;
        *(v22 - 1) = 0;
      }

      else if (v64)
      {
        bzero(v78, 8 * v64);
      }

      if (*(this + 8560))
      {
        if (*(this + 3624) == 174)
        {
          LOWORD(v80[0]) = 2;
          v79 = 2;
          v49 = v19 + v17;
          cnprint::CNPrinter::Print(v80, &v79, "MeasurementAccumulator::AddMeasurement() failed - Out of space,t_meas,%.3lf", v12, v13, v14, v15, v16, SLOBYTE(v49));
        }

        else if (*(this + 8561) == 1)
        {
          if (cnprint::CNPrinter::GetLogLevel(v20) <= 1)
          {
            LOWORD(v80[0]) = 2;
            v79 = 1;
            v51 = v19 + v17;
            cnprint::CNPrinter::Print(v80, &v79, "MeasurementAccumulator::AddMeasurement() failed - Locked,t_meas,%.3lf", v28, v29, v30, v31, v32, SLOBYTE(v51));
          }
        }

        else
        {
          v33 = sub_1D0B7C8AC(&v54, this + 1071);
          if (!v33)
          {
            v80[0] = 0;
            v80[1] = 0;
            sub_1D0DF8384();
          }

          if (cnprint::CNPrinter::GetLogLevel(v33) <= 1)
          {
            LOWORD(v80[0]) = 2;
            v79 = 1;
            v52 = v55 + v54;
            v53 = *(this + 1072) + *(this + 1071);
            cnprint::CNPrinter::Print(v80, &v79, "MeasurementAccumulator::AddMeasurement() failed - Measurement too old,t_meas,%.3lf,t_start,%.3lf", v34, v35, v36, v37, v38, SLOBYTE(v52));
          }
        }
      }

      else if (cnprint::CNPrinter::GetLogLevel(v20) <= 1)
      {
        LOWORD(v80[0]) = 2;
        v79 = 1;
        v50 = v19 + v17;
        cnprint::CNPrinter::Print(v80, &v79, "MeasurementAccumulator::AddMeasurement() failed - Not initialized,t_meas,%.3lf", v23, v24, v25, v26, v27, SLOBYTE(v50));
      }

      LOWORD(v80[0]) = 12;
      v79 = 4;
      v72 = (*(*a2 + 16))(a2);
      v73 = v39;
      v40 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, &v72, "Could not add measurement - horizontal distance");
      if (*(this + 2735) >= 0)
      {
        LOBYTE(v46) = v40;
      }

      else
      {
        v46 = *(this + 339);
      }

      cnprint::CNPrinter::Print(v80, &v79, "%s", v41, v42, v43, v44, v45, v46);
      v21 = 0xFFFFFFFFLL;
      v56[0] = &unk_1F4CE4300;
      if (v57 < 0)
      {
        operator delete(v56[2]);
      }
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v21 = 0xFFFFFFFFLL;
  }

  v47 = *MEMORY[0x1E69E9840];
  return v21;
}

void sub_1D0DF2A04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_1D0C537DC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0DF2A74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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

  v13 = !v12 && v11 == 8;
  if (!v13 || ((v18 = *(a2 + 8), v17 = *(a2 + 12), v18 <= v17) ? (v19 = *(a2 + 12)) : (v19 = *(a2 + 8)), !v18 || !v17 || v19 != 1))
  {
    LOWORD(v127) = 12;
    LOBYTE(v122) = 4;
    v14 = *(a3 + 48) + *(a3 + 40);
LABEL_12:
    cnprint::CNPrinter::Print(&v127, &v122, "time,%.3lf,h-function failure on line %d: %s() %s", a4, a5, a6, a7, a8, SLOBYTE(v14));
    return 0xFFFFFFFFLL;
  }

  if (*(a3 + 56) <= 0.0)
  {
    LOWORD(v127) = 12;
    LOBYTE(v122) = 4;
    v14 = *(a3 + 48) + *(a3 + 40);
    goto LABEL_12;
  }

  v24 = 0;
  v142 = *(a3 + 56);
  v139 = 0x100000006;
  v137 = &unk_1F4CE0BF8;
  v140 = v141;
  v138 = xmmword_1D0E84530;
  memset(v141, 0, sizeof(v141));
  v134 = 0x100000006;
  v133 = xmmword_1D0E84530;
  v132 = &unk_1F4CE0BF8;
  v135 = &v136;
  v129 = 0x600000006;
  v127 = &unk_1F4CDF278;
  v128 = xmmword_1D0E7F320;
  v130 = &v131;
  v124 = 0x600000006;
  v123 = xmmword_1D0E7F320;
  v122 = &unk_1F4CDF278;
  v125 = &v126;
  v25 = xmmword_1D0E7DD30;
  v26 = &v80 + 1;
  v27 = vdupq_n_s64(2uLL);
  v28 = vdupq_n_s64(6uLL);
  do
  {
    if (vmovn_s64(vcgtq_u64(v28, v25)).u8[0])
    {
      *(v26 - 1) = v24;
    }

    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(6uLL), *&v25)).i32[1])
    {
      *v26 = v24 + 1;
    }

    v24 += 2;
    v25 = vaddq_s64(v25, v27);
    v26 += 2;
  }

  while (v24 != 6);
  v118 = 0x100000006;
  v116 = &unk_1F4CE1400;
  v119 = &v120;
  v117 = xmmword_1D0E84530;
  v120 = v80;
  v121 = v81;
  v29 = *(a1 + 32);
  sub_1D0BFD4AC(v115, v29, &v116);
  sub_1D0BFD4AC(&v76, v29, &v116);
  if (sub_1D0BFCF2C(&v76, &v137, &v142, &v132, &v127, &v122, v30, v31))
  {
    LOWORD(v76) = 12;
    LOBYTE(v51) = 4;
    v37 = *(a3 + 48) + *(a3 + 40);
LABEL_34:
    cnprint::CNPrinter::Print(&v76, &v51, "time,%.3lf,h-function failure on line %d: %s() %s", v32, v33, v34, v35, v36, SLOBYTE(v37));
    return 0xFFFFFFFFLL;
  }

  sub_1D0BD2CA4(v113, **(a1 + 32), *(*(a1 + 32) + 8), *(*(a1 + 32) + 16));
  if ((v113[8] & 1) == 0)
  {
    LOWORD(v76) = 12;
    LOBYTE(v51) = 4;
    v37 = *(a3 + 48) + *(a3 + 40);
    goto LABEL_34;
  }

  v110 = 0x300000003;
  v109 = xmmword_1D0E76C10;
  v108 = &unk_1F4CD5DD0;
  v111 = &v112;
  sub_1D0B894B0(&v108, &v114);
  v84 = 0x600000003;
  v82 = &unk_1F4CEB7D0;
  v85 = &v86;
  v83 = xmmword_1D0E9CBF0;
  v87 = 0u;
  v88 = 0;
  v90 = 0u;
  v91 = 0;
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v97 = 0;
  v86 = 0x3FF0000000000000;
  v89 = 0x3FF0000000000000;
  v92 = 0x3FF0000000000000;
  v100 = 0x600000003;
  v99 = xmmword_1D0E9CBF0;
  v98 = &unk_1F4CEB7D0;
  v101 = v102;
  sub_1D0B89390(&v108, &v82, &v98);
  v53 = 0x600000006;
  v51 = &unk_1F4CDF278;
  v52 = xmmword_1D0E7F320;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v54 = &v55;
  v55 = 0x3FF0000000000000;
  v59 = 0x3FF0000000000000uLL;
  v63 = 0x3FF0000000000000;
  v67 = 0x3FF0000000000000uLL;
  v71 = 0x3FF0000000000000;
  v78 = 0x600000006;
  v77 = xmmword_1D0E7F320;
  v75 = 0x3FF0000000000000;
  v76 = &unk_1F4CDF278;
  v79 = &v80;
  sub_1D0BA5A78(&v51, &v127, &v76);
  v105 = 0x600000003;
  v104 = xmmword_1D0E9CBF0;
  v103 = &unk_1F4CEB7D0;
  v106 = &v107;
  sub_1D0B89390(&v98, &v76, &v103);
  v53 = 0x100000003;
  v51 = &unk_1F4CDEB28;
  v52 = xmmword_1D0E7DCC0;
  v54 = &v55;
  sub_1D0B89390(&v103, v115, &v51);
  v38 = *v54;
  v39 = v54->f64[1];
  v40 = sqrt(vmuld_lane_f64(v39, *v54, 1) + v38.f64[0] * v38.f64[0]);
  *&v41 = 0x100000001;
  *(&v41 + 1) = 0x100000001;
  *(a4 + 8) = v41;
  **(a4 + 32) = v40 + **(a2 + 32);
  v100 = 0x300000001;
  v99 = xmmword_1D0E7F310;
  v42 = v102;
  v98 = &unk_1F4CDF248;
  v101 = v102;
  if (fabs(v40) <= 0.000000015)
  {
    if ((atomic_load_explicit(&qword_1EE054A80, memory_order_acquire) & 1) == 0)
    {
      v50 = v38;
      v49 = __cxa_guard_acquire(&qword_1EE054A80);
      v38 = v50;
      if (v49)
      {
        qword_1EE054A78 = 0x3FE6A09E667F3BCDLL;
        __cxa_guard_release(&qword_1EE054A80);
        v38 = v50;
      }
    }

    v43 = 1.0;
    if (v38.f64[0] <= 0.0)
    {
      v43 = 0.0;
      if (v38.f64[0] < 0.0)
      {
        v43 = -1.0;
      }
    }

    v42 = v101;
    *v101 = *&qword_1EE054A78 * v43;
    v44 = qword_1EE054A78;
    v45 = 1.0;
    if (v39 <= 0.0)
    {
      v45 = 0.0;
      if (v39 < 0.0)
      {
        v45 = -1.0;
      }
    }

    v42[1] = *&qword_1EE054A78 * v45;
    v46 = vmovn_s64(vcgtq_f64(vdupq_n_s64(0x3CB0000000000000uLL), vabsq_f64(v38)));
    if ((v46.i32[0] | v46.i32[1]))
    {
      *v42 = v44;
      *(v42 + 1) = qword_1EE054A78;
    }
  }

  else
  {
    v102[0] = vdivq_f64(v38, vdupq_lane_s64(*&v40, 0));
  }

  v42[2] = 0.0;
  v78 = 0x600000001;
  v77 = xmmword_1D0E84600;
  v76 = &unk_1F4CEB818;
  v79 = &v80;
  sub_1D0B89390(&v98, &v103, &v76);
  sub_1D0B894B0(a5, &v76);
  result = 0;
  *(a5 + 8) = xmmword_1D0E9CBE0;
  v47 = *(a5 + 32);
  *(v47 + 48) = 0;
  *(v47 + 56) = 0;
  *&v48 = 0x100000001;
  *(&v48 + 1) = 0x100000001;
  *(a6 + 8) = v48;
  **(a6 + 32) = 0x3FF0000000000000;
  return result;
}

uint64_t sub_1D0DF32A4(uint64_t a1)
{
  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

uint64_t raven::RavenConvergenceEstimator::HandleEvent(raven::RavenConvergenceEstimator *this, const raven::PositionChangeEvent *a2)
{
  v81[4] = *MEMORY[0x1E69E9840];
  if (*(this + 57) == 1)
  {
    if (*(this + 58) == 1)
    {
      v76 = 0x100000003;
      *&v75[8] = xmmword_1D0E7DCC0;
      *v75 = &unk_1F4CDEB28;
      v77 = v78;
      v72 = 0x100000134;
      v70 = &unk_1F4CDEC90;
      v71 = xmmword_1D0E7DD20;
      v73 = v74;
      v67 = 0x100000003;
      v65 = &unk_1F4CDEB28;
      v66 = xmmword_1D0E7DCC0;
      v68 = v69;
      sub_1D0BFB1AC(a2 + 200, v75, &v70, &v65, "2");
      v5 = v4;
      v6 = *(a2 + 68);
      if (v6 < 1)
      {
        v8 = 0.0;
      }

      else
      {
        v7 = 0;
        v8 = 0.0;
        do
        {
          v8 = v8 + *(*(a2 + 37) + 8 * v7);
          v7 += *(a2 + 71) + 1;
          --v6;
        }

        while (v6);
      }

      v70 = (*(*a2 + 16))(a2);
      *&v71 = v10;
      *v75 = *(a2 + 104);
      v12 = CNTimeSpan::operator-(&v70, v75, *v75, v11);
      v14 = v13;
      v67 = 0x100000001;
      v65 = &unk_1F4CDF418;
      *&v15 = 0x100000001;
      *(&v15 + 1) = 0x100000001;
      v66 = v15;
      v68 = v69;
      v69[0] = v5;
      v62 = 0x100000001;
      v60 = &unk_1F4CDF418;
      v61 = v15;
      v63 = &v64;
      v64 = v8;
      sub_1D0BA002C(v75, 0);
      *v75 = &unk_1F4CEB928;
      v79 = 0.0;
      v78[0] = (*(*a2 + 16))(a2);
      v78[1] = v16;
      v79 = v14 + v12;
      v22 = (*(*a2 + 16))(a2);
      v24 = v23;
      v58 = v22;
      v59 = v23;
      if ((v61 & 0x80000000) != 0)
      {
        __assert_rtn("Zeros", "cnmatrix.h", 3098, "nr >= 0");
      }

      v72 = 0x100000003;
      v70 = &unk_1F4CDEB28;
      v25 = v74;
      v73 = v74;
      *&v71 = v61 | 0x100000000;
      DWORD2(v71) = v61;
      HIDWORD(v71) = v61;
      if (v61 > 3)
      {
        v26 = &v74[v61];
        bzero(v74, 16 * ((v61 - 1) >> 1));
        *(v26 - 2) = 0;
        *(v26 - 1) = 0;
      }

      else if (v61)
      {
        bzero(v74, 8 * v61);
      }

      if (*(this + 8560))
      {
        if (*(this + 3624) == 174)
        {
          LOWORD(v81[0]) = 2;
          v80 = 2;
          v53 = v24 + v22;
          cnprint::CNPrinter::Print(v81, &v80, "MeasurementAccumulator::AddMeasurement() failed - Out of space,t_meas,%.3lf", v17, v18, v19, v20, v21, SLOBYTE(v53));
        }

        else if (*(this + 8561) == 1)
        {
          if (cnprint::CNPrinter::GetLogLevel(v25) <= 1)
          {
            LOWORD(v81[0]) = 2;
            v80 = 1;
            v55 = v24 + v22;
            cnprint::CNPrinter::Print(v81, &v80, "MeasurementAccumulator::AddMeasurement() failed - Locked,t_meas,%.3lf", v32, v33, v34, v35, v36, SLOBYTE(v55));
          }
        }

        else
        {
          v37 = sub_1D0B7C8AC(&v58, this + 1071);
          if (!v37)
          {
            v81[0] = 0;
            v81[1] = 0;
            sub_1D0DF8A74();
          }

          if (cnprint::CNPrinter::GetLogLevel(v37) <= 1)
          {
            LOWORD(v81[0]) = 2;
            v80 = 1;
            v56 = v59 + v58;
            v57 = *(this + 1072) + *(this + 1071);
            cnprint::CNPrinter::Print(v81, &v80, "MeasurementAccumulator::AddMeasurement() failed - Measurement too old,t_meas,%.3lf,t_start,%.3lf", v38, v39, v40, v41, v42, SLOBYTE(v56));
          }
        }
      }

      else if (cnprint::CNPrinter::GetLogLevel(v25) <= 1)
      {
        LOWORD(v81[0]) = 2;
        v80 = 1;
        v54 = v24 + v22;
        cnprint::CNPrinter::Print(v81, &v80, "MeasurementAccumulator::AddMeasurement() failed - Not initialized,t_meas,%.3lf", v27, v28, v29, v30, v31, SLOBYTE(v54));
      }

      LOWORD(v81[0]) = 12;
      v80 = 4;
      v70 = (*(*a2 + 16))(a2);
      *&v71 = v43;
      v44 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, &v70, "Could not add measurement - 3D distance traveled from delta-position");
      if (*(this + 2735) >= 0)
      {
        LOBYTE(v50) = v44;
      }

      else
      {
        v50 = *(this + 339);
      }

      cnprint::CNPrinter::Print(v81, &v80, "%s", v45, v46, v47, v48, v49, v50);
      v9 = 0xFFFFFFFFLL;
      *v75 = &unk_1F4CE4300;
      if (SHIBYTE(v77) < 0)
      {
        operator delete(*&v75[16]);
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0xFFFFFFFFLL;
  }

  v51 = *MEMORY[0x1E69E9840];
  return v9;
}

void sub_1D0DF3A9C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_1D0C537DC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_1D0DF3B08(uint64_t a1, uint64_t a2, char **lpsrc, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!lpsrc || (v13 = **lpsrc, (v14 = __dynamic_cast(lpsrc, &unk_1F4CE42A0, &unk_1F4CEB8B8, 0)) == 0))
  {
    LOWORD(v99) = 12;
    LOBYTE(v94) = 4;
    v36 = MEMORY[0x30] + MEMORY[0x28];
LABEL_26:
    cnprint::CNPrinter::Print(&v99, &v94, "time,%.3lf,h-function failure on line %d: %s() %s", a4, a5, a6, a7, a8, SLOBYTE(v36));
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
    LOWORD(v99) = 12;
    LOBYTE(v94) = 4;
    v36 = v14[6] + *(v14 + 5);
    goto LABEL_26;
  }

  if (v14[7] <= 0.0)
  {
    LOWORD(v99) = 12;
    LOBYTE(v94) = 4;
    v36 = v14[6] + *(v14 + 5);
    goto LABEL_26;
  }

  v22 = 0;
  v114 = *(v14 + 7);
  v111 = 0x100000006;
  v109 = &unk_1F4CE0BF8;
  v112 = v113;
  v110 = xmmword_1D0E84530;
  memset(v113, 0, sizeof(v113));
  v106 = 0x100000006;
  v105 = xmmword_1D0E84530;
  v104 = &unk_1F4CE0BF8;
  v107 = &v108;
  v101 = 0x600000006;
  v99 = &unk_1F4CDF278;
  v100 = xmmword_1D0E7F320;
  v102 = &v103;
  v96 = 0x600000006;
  v95 = xmmword_1D0E7F320;
  v94 = &unk_1F4CDF278;
  v97 = &v98;
  v23 = xmmword_1D0E7DD30;
  v24 = &v78 + 1;
  v25 = vdupq_n_s64(2uLL);
  v26 = vdupq_n_s64(6uLL);
  do
  {
    if (vmovn_s64(vcgtq_u64(v26, v23)).u8[0])
    {
      *(v24 - 1) = v22;
    }

    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(6uLL), *&v23)).i32[1])
    {
      *v24 = v22 + 1;
    }

    v22 += 2;
    v23 = vaddq_s64(v23, v25);
    v24 += 2;
  }

  while (v22 != 6);
  v90 = 0x100000006;
  v88 = &unk_1F4CE1400;
  v91 = &v92;
  v89 = xmmword_1D0E84530;
  v92 = v78;
  v93 = v79;
  v27 = *(a1 + 32);
  sub_1D0BFD4AC(v87, v27, &v88);
  sub_1D0BFD4AC(&v74, v27, &v88);
  if (sub_1D0BFCF2C(&v74, &v109, &v114, &v104, &v99, &v94, v28, v29))
  {
    LOWORD(v74) = 12;
    LOBYTE(v49) = 4;
    v48 = v15[6] + *(v15 + 5);
    cnprint::CNPrinter::Print(&v74, &v49, "time,%.3lf,h-function failure on line %d: %s() %s", v30, v31, v32, v33, v34, SLOBYTE(v48));
  }

  else
  {
    if ((atomic_load_explicit(&qword_1EE054A88, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE054A88))
    {
      v76 = 0x300000001;
      v74 = &unk_1F4CDF0C8;
      v77 = &v78;
      v75 = xmmword_1D0E7F310;
      *&v78 = 0x100000000;
      DWORD2(v78) = 2;
      sub_1D0D2CF48(&v74, &unk_1EE054B30);
      __cxa_atexit(sub_1D0D26840, &unk_1EE054B30, &dword_1D0B71000);
      __cxa_guard_release(&qword_1EE054A88);
    }

    v51 = 0x600000006;
    v49 = &unk_1F4CDF278;
    v50 = xmmword_1D0E7F320;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v66 = 0u;
    v67 = 0u;
    v68 = 0;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v52 = &v53;
    v53 = 0x3FF0000000000000;
    v57 = 0x3FF0000000000000uLL;
    v61 = 0x3FF0000000000000;
    v65 = 0x3FF0000000000000uLL;
    v69 = 0x3FF0000000000000;
    v76 = 0x600000006;
    v75 = xmmword_1D0E7F320;
    v73 = 0x3FF0000000000000;
    v74 = &unk_1F4CDF278;
    v77 = &v78;
    sub_1D0BA5A78(&v49, &v99, &v74);
    sub_1D0DF855C(&v80, &v74);
    sub_1D0DF88BC(v86, &v80);
    v51 = 0x100000003;
    v49 = &unk_1F4CDEB28;
    v50 = xmmword_1D0E7DCC0;
    v52 = &v53;
    sub_1D0B89390(v86, v87, &v49);
    v37 = *v52;
    v38 = v52[1].f64[0];
    v39 = v52->f64[1];
    v40 = sqrt(vmuld_lane_f64(v39, *v52, 1) + v37.f64[0] * v37.f64[0] + v38 * v38);
    *&v41 = 0x100000001;
    *(&v41 + 1) = 0x100000001;
    *(a4 + 8) = v41;
    **(a4 + 32) = v40 + **(a2 + 32);
    v82 = 0x300000001;
    v81 = xmmword_1D0E7F310;
    v80 = &unk_1F4CDF248;
    v83 = &v84;
    if (fabs(v40) <= 0.000000015)
    {
      if (v37.f64[0] <= 0.0)
      {
        v42 = -0.577350269;
        if (v37.f64[0] >= 0.0)
        {
          v42 = 0.0;
        }
      }

      else
      {
        v42 = 0.577350269;
      }

      v84.f64[0] = v42;
      v43 = v39 < 0.0;
      if (v39 <= 0.0)
      {
        v44 = -0.577350269;
        if (!v43)
        {
          v44 = 0.0;
        }
      }

      else
      {
        v44 = 0.577350269;
      }

      v84.f64[1] = v44;
      if (v38 <= 0.0)
      {
        v45 = -0.577350269;
        if (v38 >= 0.0)
        {
          v45 = 0.0;
        }
      }

      else
      {
        v45 = 0.577350269;
      }

      v85 = v45;
      if (fabs(v37.f64[0]) < 2.22044605e-16)
      {
        v37.f64[0] = v38;
        v46 = vmovn_s64(vcgtq_f64(vdupq_n_s64(0x3CB0000000000000uLL), vabsq_f64(v37)));
        if (v46.i8[4] & 1) != 0 && (v46.i8[0])
        {
          v84 = vdupq_n_s64(0x3FE279A74590331CuLL);
          v85 = 0.577350269;
        }
      }
    }

    else
    {
      v84 = vdivq_f64(v37, vdupq_lane_s64(*&v40, 0));
      v85 = v38 / v40;
    }

    v76 = 0x600000001;
    v75 = xmmword_1D0E84600;
    v74 = &unk_1F4CEB818;
    v77 = &v78;
    sub_1D0B89390(&v80, v86, &v74);
    sub_1D0B894B0(a5, &v74);
    *(a5 + 8) = xmmword_1D0E9CBE0;
    v47 = *(a5 + 32);
    *(v47 + 48) = 0;
    *(v47 + 56) = 0;
    result.n128_u64[0] = 0x100000001;
    result.n128_u64[1] = 0x100000001;
    *(a6 + 8) = result;
    **(a6 + 32) = 0x3FF0000000000000;
  }

  return result;
}

uint64_t sub_1D0DF4338(uint64_t a1)
{
  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

uint64_t raven::RavenConvergenceEstimator::HandleEvent(raven::RavenConvergenceEstimator *this, const raven::PositionEvent *a2)
{
  v102[9] = *MEMORY[0x1E69E9840];
  if (*(this + 57) != 1)
  {
    goto LABEL_16;
  }

  if (*(this + 58) != 1)
  {
LABEL_22:
    v24 = 0;
    goto LABEL_23;
  }

  IsPositionMeasurementUsable = raven::RavenEstimator::IsPositionMeasurementUsable(this, a2);
  if (!IsPositionMeasurementUsable)
  {
    if (cnprint::CNPrinter::GetLogLevel(IsPositionMeasurementUsable) <= 1)
    {
      LOWORD(v96) = 12;
      LOBYTE(v91) = 1;
      *&v70 = (*(*a2 + 16))(a2);
      *(&v70 + 1) = v25;
      cnprint::CNLogFormatter::FormatGeneral(this + 2712, &v70, "WiFi position measurement not used in non-dense urban fitness case");
      if (*(this + 2735) >= 0)
      {
        LOBYTE(v31) = this - 104;
      }

      else
      {
        v31 = *(this + 339);
      }

      cnprint::CNPrinter::Print(&v96, &v91, "%s", v26, v27, v28, v29, v30, v31);
    }

    goto LABEL_22;
  }

  v96 = &unk_1F4CEF748;
  memcpy(v97, a2 + 8, sizeof(v97));
  v93 = 0x300000003;
  v92 = xmmword_1D0E76C10;
  v91 = &unk_1F4CD5DD0;
  v94 = &v95;
  if (!sub_1D0C1A564(&v96, &v91))
  {
LABEL_16:
    v24 = 0xFFFFFFFFLL;
    goto LABEL_23;
  }

  v87 = 0x100000003;
  v86 = xmmword_1D0E7DCC0;
  v85 = &unk_1F4CDEB28;
  v88 = &v89;
  v89 = *(&v97[17] + 8);
  v90 = *(&v97[18] + 1);
  v5 = v97[6];
  v84 = v97[6];
  sub_1D0BA002C(&v80, 24);
  v80 = &unk_1F4CEB678;
  v83 = v84;
  v11 = LOBYTE(v97[12]);
  if (LOBYTE(v97[12]) == 14)
  {
    if ((*(*this + 144))(this))
    {
      sub_1D0BBDAB8(this + 2864, v78);
      v75 = 0x100000003;
      v74 = xmmword_1D0E7DCC0;
      v73 = &unk_1F4CDEB28;
      v76 = v77;
      v77[0] = *v79;
      v77[1] = v79[1];
      v77[2] = v79[2];
      sub_1D0BA5FC4(this + 2864, &v70);
      v100 = 0x300000003;
      v98 = &unk_1F4CD5DD0;
      v99 = xmmword_1D0E76C10;
      v101 = v102;
      v102[0] = *__p.__r_.__value_.__r.__words[2];
      v12 = (__p.__r_.__value_.__r.__words[2] + 8 * SHIDWORD(__p.__r_.__value_.__r.__words[0]));
      v102[3] = *v12;
      v13 = (__p.__r_.__value_.__r.__words[2] + 16 * SHIDWORD(__p.__r_.__value_.__r.__words[0]));
      v102[6] = *v13;
      v102[1] = *v12;
      v102[4] = v12[1];
      v14 = (2 * HIDWORD(__p.__r_.__value_.__r.__words[0])) | 1;
      v102[7] = *(__p.__r_.__value_.__r.__words[2] + 8 * v14);
      v102[2] = *v13;
      v102[5] = *(__p.__r_.__value_.__r.__words[2] + 8 * v14);
      v102[8] = v13[2];
      v69 = 1.0;
      ShouldInflatePositionStateUncertaintyForVL = raven::RavenEstimator::ShouldInflatePositionStateUncertaintyForVL(this, &v85, &v91, &v73, &v98, &v69);
      if (ShouldInflatePositionStateUncertaintyForVL)
      {
        if (cnprint::CNPrinter::GetLogLevel(ShouldInflatePositionStateUncertaintyForVL) <= 1)
        {
          v68 = 12;
          v67 = 1;
          v64 = v97[0];
          v16 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, &v64, "kVLF Inflate Position State Uncertainty, sf,%.3lf", v69);
          if (*(this + 2735) >= 0)
          {
            LOBYTE(v22) = v16;
          }

          else
          {
            v22 = *(this + 339);
          }

          cnprint::CNPrinter::Print(&v68, &v67, "%s", v17, v18, v19, v20, v21, v22);
        }

        raven::RavenConvergenceEstimator::InflatePositionUncertainty(this, v69);
      }

      sub_1D0BA002C(&v64, 31);
      *&v64 = &unk_1F4CEB6B8;
      v81 = DWORD2(v64);
      std::string::operator=(&v82, &v65);
      v83 = v66;
      *&v64 = &unk_1F4CE4300;
      if ((SHIBYTE(v65.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_29;
      }

      v23 = v65.__r_.__value_.__r.__words[0];
      goto LABEL_28;
    }

    v11 = LOBYTE(v97[12]);
  }

  if (v11 == 15)
  {
    sub_1D0BA002C(&v70, 30);
    *&v70 = &unk_1F4CEB6F8;
    v81 = DWORD2(v70);
    std::string::operator=(&v82, &__p);
    v83 = v72[0];
    *&v70 = &unk_1F4CE4300;
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_29:
      v83 = v84;
      goto LABEL_30;
    }

    v23 = __p.__r_.__value_.__r.__words[0];
LABEL_28:
    operator delete(v23);
    goto LABEL_29;
  }

LABEL_30:
  if ((v92 & 0x80000000) != 0)
  {
    __assert_rtn("Zeros", "cnmatrix.h", 3098, "nr >= 0");
  }

  __p.__r_.__value_.__l.__size_ = 0x100000003;
  *&v70 = &unk_1F4CDEB28;
  v34 = v72;
  __p.__r_.__value_.__r.__words[2] = v72;
  *(&v70 + 1) = v92 | 0x100000000;
  LODWORD(__p.__r_.__value_.__l.__data_) = v92;
  HIDWORD(__p.__r_.__value_.__r.__words[0]) = v92;
  if (v92 > 3)
  {
    v35 = v72 + 8 * v92;
    bzero(v72, 16 * ((v92 - 1) >> 1));
    *(v35 - 2) = 0;
    *(v35 - 1) = 0;
  }

  else if (v92)
  {
    bzero(v72, 8 * v92);
  }

  if (*(this + 8560))
  {
    if (*(this + 3624) == 174)
    {
      LOWORD(v98) = 2;
      v78[0] = 2;
      v59 = *(&v5 + 1) + v5;
      cnprint::CNPrinter::Print(&v98, v78, "MeasurementAccumulator::AddMeasurement() failed - Out of space,t_meas,%.3lf", v6, v7, v8, v9, v10, SLOBYTE(v59));
    }

    else if (*(this + 8561) == 1)
    {
      if (cnprint::CNPrinter::GetLogLevel(v34) <= 1)
      {
        LOWORD(v98) = 2;
        v78[0] = 1;
        v61 = *(&v5 + 1) + v5;
        cnprint::CNPrinter::Print(&v98, v78, "MeasurementAccumulator::AddMeasurement() failed - Locked,t_meas,%.3lf", v41, v42, v43, v44, v45, SLOBYTE(v61));
      }
    }

    else
    {
      v46 = sub_1D0B7C8AC(&v84, this + 1071);
      if (!v46)
      {
        v98 = 0;
        *&v99 = 0;
        sub_1D0DF8D98();
      }

      if (cnprint::CNPrinter::GetLogLevel(v46) <= 1)
      {
        LOWORD(v98) = 2;
        v78[0] = 1;
        v62 = *(&v84 + 1) + v84;
        v63 = *(this + 1072) + *(this + 1071);
        cnprint::CNPrinter::Print(&v98, v78, "MeasurementAccumulator::AddMeasurement() failed - Measurement too old,t_meas,%.3lf,t_start,%.3lf", v47, v48, v49, v50, v51, SLOBYTE(v62));
      }
    }
  }

  else if (cnprint::CNPrinter::GetLogLevel(v34) <= 1)
  {
    LOWORD(v98) = 2;
    v78[0] = 1;
    v60 = *(&v5 + 1) + v5;
    cnprint::CNPrinter::Print(&v98, v78, "MeasurementAccumulator::AddMeasurement() failed - Not initialized,t_meas,%.3lf", v36, v37, v38, v39, v40, SLOBYTE(v60));
  }

  LOWORD(v98) = 12;
  v78[0] = 4;
  v70 = v97[0];
  v52 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, &v70, "Could not add measurement - position, src,%d", LOBYTE(v97[12]));
  if (*(this + 2735) >= 0)
  {
    LOBYTE(v58) = v52;
  }

  else
  {
    v58 = *(this + 339);
  }

  cnprint::CNPrinter::Print(&v98, v78, "%s", v53, v54, v55, v56, v57, v58);
  v24 = 0xFFFFFFFFLL;
  v80 = &unk_1F4CE4300;
  if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v82.__r_.__value_.__l.__data_);
  }

LABEL_23:
  v32 = *MEMORY[0x1E69E9840];
  return v24;
}

void sub_1D0DF4D40(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1D0C537DC(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1D0DF4E2C(uint64_t a1, uint64_t a2, char **lpsrc, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (lpsrc && (v13 = **lpsrc, (v14 = __dynamic_cast(lpsrc, &unk_1F4CE42A0, &unk_1F4CEB690, 0)) != 0))
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
        *v23 = *v21 + *v22;
        v23[1] = v21[1] + v22[1];
        v23[2] = v21[2] + v22[2];
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
        v24 = *(a5 + 32);
        *v24 = 0x3FF0000000000000;
        v25 = *(a5 + 20);
        v24[v25 + 1] = 0x3FF0000000000000;
        v24[2 * v25 + 2] = 0x3FF0000000000000;
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

void raven::RavenConvergenceEstimator::InflatePositionUncertainty(raven::RavenConvergenceEstimator *this, double a2)
{
  if ((atomic_load_explicit(&qword_1EE054A60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE054A60))
  {
    v15 = 0x300000001;
    *v14 = &unk_1F4CDF0C8;
    v16 = &v17;
    *&v14[8] = xmmword_1D0E7F310;
    v17 = 0x100000000;
    v18 = 2;
    sub_1D0D2CF48(v14, &unk_1EE054AC0);
    __cxa_atexit(sub_1D0D26840, &unk_1EE054AC0, &dword_1D0B71000);
    __cxa_guard_release(&qword_1EE054A60);
  }

  sub_1D0DFA2A8(v14, &unk_1EE054AC0);
  sub_1D0B751F4(__p, "InflatePositionUncertainty");
  raven::RavenConvergenceEstimator::InflateUncertainties(this, v14, __p, v3);
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  LOWORD(__p[0]) = 12;
  v11 = 2;
  *v14 = *(this + 5);
  v4 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, v14, "Inflating estimator variance of position states.");
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

uint64_t sub_1D0DF5294(uint64_t a1)
{
  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

uint64_t sub_1D0DF52E4(uint64_t a1)
{
  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

uint64_t sub_1D0DF5334(uint64_t a1)
{
  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

double sub_1D0DF5384(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 296) == 1)
  {
    if (*(a2 + 8) == 3 && *(a2 + 12) == 3)
    {
      v3 = *(a2 + 20);
    }

    else
    {
      *(a2 + 8) = xmmword_1D0E76C10;
      v3 = 3;
    }

    v4 = *(a2 + 32);
    *v4 = *(a1 + 328);
    v5 = &v4[v3];
    *v5 = *(a1 + 336);
    v6 = &v4[2 * v3];
    *v6 = *(a1 + 344);
    v4[1] = *(a1 + 336);
    v5[1] = *(a1 + 352);
    v4[(2 * v3) | 1] = *(a1 + 360);
    v4[2] = *(a1 + 344);
    v5[2] = *(a1 + 360);
    result = *(a1 + 368);
    v6[2] = result;
  }

  return result;
}

uint64_t sub_1D0DF5420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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

  v12 = !v11 && v10 == 8;
  if (v12 && ((v13 = *(a2 + 8), v14 = *(a2 + 12), v13 <= v14) ? (v15 = *(a2 + 12)) : (v15 = *(a2 + 8)), v13 ? (v16 = v14 == 0) : (v16 = 1), !v16 ? (v17 = v15 == 1) : (v17 = 0), v17))
  {
    v22 = *(a1 + 32);
    v24 = v22[3];
    v23 = v22[4];
    v25 = v22[5];
    v26 = sqrt(v23 * v23 + v24 * v24 + v25 * v25);
    *&v27 = 0x100000001;
    *(&v27 + 1) = 0x100000001;
    *(a4 + 8) = v27;
    **(a4 + 32) = v26 + **(a2 + 32);
    v34 = 0x800000001;
    v32 = &unk_1F4CEC348;
    v35 = v36;
    v33 = xmmword_1D0E9CBE0;
    memset(v36, 0, sizeof(v36));
    sub_1D0B894B0(a5, &v32);
    v28 = *(a5 + 20);
    v29 = *(a5 + 32);
    if (fabs(v26) <= 0.000000015)
    {
      *(v29 + 24 * v28) = 0x3FE279A745904047;
      *(v29 + 32 * v28) = 0x3FE279A745904047;
      v30 = 0.577350269;
    }

    else
    {
      *(v29 + 24 * v28) = v24 / v26;
      *(v29 + 32 * v28) = v23 / v26;
      v30 = v25 / v26;
    }

    *(v29 + 40 * v28) = v30;
    v34 = 0x100000001;
    v32 = &unk_1F4CDF418;
    *&v31 = 0x100000001;
    *(&v31 + 1) = 0x100000001;
    v33 = v31;
    v35 = v36;
    *&v36[0] = 0x3FF0000000000000;
    sub_1D0B894B0(a6, &v32);
    return 0;
  }

  else
  {
    LOWORD(v32) = 12;
    v37 = 4;
    v18 = *(a3 + 48) + *(a3 + 40);
    cnprint::CNPrinter::Print(&v32, &v37, "time,%.3lf,h-function failure on line %d: %s() %s", a4, a5, a6, a7, a8, SLOBYTE(v18));
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_1D0DF5644(uint64_t a1)
{
  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void raven::RavenConvergenceEstimator::InflateUncertainties(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = MEMORY[0x1EEE9AC00](a1, a2, a3, a4);
  v8 = v6;
  v9 = v7;
  v10 = v4;
  if (v7 < 1.0 || (*&v7 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    LOWORD(v158) = 12;
    v152[0] = 4;
    v59 = v4 + 2712;
    *v163 = *(v10 + 80);
    if (*(v6 + 23) < 0)
    {
      v60 = *v6;
    }

    v61 = cnprint::CNLogFormatter::FormatGeneral(v59, v163, "%s failed, invalid inflation factor, %.6lf.");
    goto LABEL_60;
  }

  v11 = v5;
  v160 = 0x100000008;
  v159 = xmmword_1D0E84520;
  v158 = &unk_1F4CE43F8;
  v161 = v162;
  v164 = 0x100000008;
  *&v163[8] = xmmword_1D0E84520;
  *v163 = &unk_1F4CEB998;
  v165 = v166;
  sub_1D0D94A44(v5, &v158, v163);
  v12 = *v161;
  v160 = 0x100000008;
  v159 = xmmword_1D0E84520;
  v158 = &unk_1F4CE43F8;
  v161 = v162;
  v164 = 0x100000008;
  *&v163[8] = xmmword_1D0E84520;
  *v163 = &unk_1F4CEB998;
  v165 = v166;
  sub_1D0D94D8C(v11, &v158, v163);
  if (v12 > 7 || *v161 >= 8)
  {
    LOWORD(v158) = 12;
    v152[0] = 4;
    *v163 = *(v10 + 80);
    if (*(v8 + 23) < 0)
    {
      v67 = *v8;
    }

    v61 = cnprint::CNLogFormatter::FormatGeneral(v10 + 2712, v163, "%s failed, invalid specified states, min state %d, max state %d.");
LABEL_60:
    if (*(v10 + 2735) >= 0)
    {
      LOBYTE(v68) = v61;
    }

    else
    {
      v68 = *(v10 + 2712);
    }

    cnprint::CNPrinter::Print(&v158, v152, "%s", v62, v63, v64, v65, v66, v68);
    return;
  }

  *(v10 + 112) = *(v10 + 80);
  v13 = *(v11 + 8);
  v155 = 0x100000008;
  v154 = xmmword_1D0E84520;
  v153 = &unk_1F4CE4320;
  v156 = &v157;
  v14 = 768;
  if (!*(v10 + 4404))
  {
    v14 = 8;
  }

  sub_1D0B894B0(&v153, v10 + 2864 + v14);
  sub_1D0BA5FC4(v10 + 2864, v152);
  sub_1D0BA4EA4(&v153, v11, v147);
  v148 = v13;
  v149 = 1;
  v150 = v13;
  v151 = v13;
  sub_1D0D8D744(v152, v11, v11, &v119);
  v129 = 0x800000008;
  v127 = &unk_1F4CE43B0;
  v128 = xmmword_1D0E84510;
  v130 = &v131;
  v163[0] = 0;
  sub_1D0B9F748(&v119, &v127, v163);
  v134 = 0x800000008;
  v132 = &unk_1F4CE43B0;
  v133 = xmmword_1D0E84510;
  v135 = v136;
  v160 = 0x100000008;
  v159 = xmmword_1D0E84520;
  v158 = &unk_1F4CE43F8;
  v161 = v162;
  v164 = 0x100000020;
  *&v163[8] = xmmword_1D0E84540;
  *v163 = &unk_1F4CE3988;
  v165 = v166;
  sub_1D0B9F868(&v127, &v158, v163, &v132);
  v15 = DWORD1(v133);
  v16 = v133;
  v139 = 0x800000008;
  v137 = &unk_1F4CE43B0;
  v140 = v141;
  *&v138 = __PAIR64__(v133, DWORD1(v133));
  DWORD2(v138) = v133 * DWORD1(v133);
  HIDWORD(v138) = DWORD1(v133);
  if (DWORD1(v133))
  {
    v17 = 0;
    v18 = 0;
    v19 = HIDWORD(v133);
    v20 = v135;
    do
    {
      v21 = v17;
      v22 = v18;
      for (i = v16; i; --i)
      {
        v141[v22] = *&v20[2 * v21];
        v22 += v15;
        ++v21;
      }

      ++v18;
      v17 += v19;
    }

    while (v18 != v15);
  }

  v144 = 0x100000008;
  v143 = xmmword_1D0E84520;
  v142 = &unk_1F4CE4320;
  v145 = v146;
  v164 = 0x800000008;
  *&v163[8] = xmmword_1D0E84510;
  *v163 = &unk_1F4CE43B0;
  v165 = v166;
  v160 = 0x800000008;
  v159 = xmmword_1D0E84510;
  v158 = &unk_1F4CE43B0;
  v161 = v162;
  sub_1D0B9FACC(&v137, &v142, v163, &v158);
  v144 = 0x800000008;
  v143 = xmmword_1D0E84510;
  v142 = &unk_1F4CE43B0;
  v145 = v146;
  v24.f64[0] = 1.0 / v9;
  sub_1D0BC5ED4(&v158, &v142, v24);
  LODWORD(v143) = v13;
  DWORD1(v143) = v13;
  DWORD2(v143) = v13 * v13;
  HIDWORD(v143) = v13;
  v25 = *(v11 + 8);
  v26 = *(v11 + 12);
  v139 = 0x100000008;
  v137 = &unk_1F4CE4320;
  v138 = xmmword_1D0E84520;
  v140 = v141;
  sub_1D0B89390(&v142, v147, &v137);
  if (v25 <= v26)
  {
    v28 = v26;
  }

  else
  {
    v28 = v25;
  }

  if (v26)
  {
    v29 = v25 == 0;
  }

  else
  {
    v29 = 1;
  }

  if (v29)
  {
    v30 = 0;
  }

  else
  {
    v30 = v28;
  }

  if (!*(v10 + 4404))
  {
    sub_1D0B894B0(v10 + 3632, v10 + 2872);
    sub_1D0B894B0(v10 + 3736, v10 + 2976);
    *&v27 = sub_1D0B894B0(v10 + 4288, v10 + 3528).n128_u64[0];
  }

  *(v10 + 4404) = 1;
  if (!*(v11 + 8) || !*(v11 + 12))
  {
    sub_1D0B894B0(v10 + 2872, v10 + 3632);
    sub_1D0B894B0(v10 + 2976, v10 + 3736);
    sub_1D0B894B0(v10 + 3528, v10 + 4288);
    *(v10 + 4404) = 1;
    return;
  }

  *(v10 + 4400) = 0;
  v31 = *(v10 + 3640);
  v32 = *(v10 + 3644);
  if (v31 <= v32)
  {
    v33 = *(v10 + 3644);
  }

  else
  {
    v33 = *(v10 + 3640);
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

  v118 = v30;
  if (v30 >= 1)
  {
    v36 = 0;
    v37 = (v10 + 4568);
    do
    {
      v38 = *(*(v11 + 32) + v36);
      if (v38 < 0 || v38 >= v35)
      {
        *v163 = 2;
        LOBYTE(v158) = 4;
        cnprint::CNLogFormatter::FormatGeneral(v37, "ResetStates(): states must contain valid indices into x, Rxx, and zx.", v27);
        if (*(v10 + 4591) >= 0)
        {
          LOBYTE(v44) = v10 - 40;
        }

        else
        {
          v44 = *v37;
        }

        cnprint::CNPrinter::Print(v163, &v158, "%s", v39, v40, v41, v42, v43, v44);
      }

      v36 += 4;
    }

    while (4 * v118 != v36);
  }

  v164 = 0x800000001;
  *v163 = &unk_1F4CE13B8;
  v165 = v166;
  v45 = v35 - 1;
  if (v35 == 1)
  {
    v56 = 0;
    *&v69 = 0x100000001;
    *(&v69 + 1) = 0x100000001;
    *&v163[8] = v69;
    v166[0] = 0;
    v57 = 1;
    v58 = 1;
    v47 = v10 + 2864;
    v46 = v10;
    v48 = v118;
  }

  else
  {
    v47 = v10 + 2864;
    v46 = v10;
    v48 = v118;
    if (v35 <= 0)
    {
      v57 = 0;
      v58 = 0;
      *&v163[8] = 0;
      *&v163[16] = 0;
      v56 = 1;
    }

    else
    {
      v49 = 0;
      *&v163[16] = v35;
      *&v163[20] = 1;
      v50 = vdupq_n_s64(v35 - 1);
      v51 = xmmword_1D0E84440;
      v52 = xmmword_1D0E7DD30;
      v53 = vdupq_n_s64(4uLL);
      v54 = v167;
      *&v163[8] = 1;
      *&v163[12] = v35;
      do
      {
        v55 = vmovn_s64(vcgeq_u64(v50, v52));
        if (vuzp1_s16(v55, *v50.i8).u8[0])
        {
          *(v54 - 3) = v49;
        }

        if (vuzp1_s16(v55, *&v50).i8[2])
        {
          *(v54 - 2) = v49 + 1;
        }

        if (vuzp1_s16(*&v50, vmovn_s64(vcgeq_u64(v50, *&v51))).i32[1])
        {
          *(v54 - 1) = v49 + 2;
          *v54 = v49 + 3;
        }

        v49 += 4;
        v51 = vaddq_s64(v51, v53);
        v52 = vaddq_s64(v52, v53);
        v54 += 4;
      }

      while (((v35 + 3) & 0xFFFFFFFC) != v49);
      v56 = 0;
      v57 = 1;
      v58 = v35;
    }
  }

  v134 = 0x100000008;
  v132 = &unk_1F4CE43F8;
  v135 = v136;
  *&v133 = __PAIR64__(v57, v58);
  DWORD2(v133) = v58 * v57;
  HIDWORD(v133) = v58;
  if (v58)
  {
    v70 = 0;
    for (j = 0; j != v58; ++j)
    {
      if ((v56 & 1) == 0)
      {
        v72 = 0;
        do
        {
          v136[j + HIDWORD(v133) * v72] = v166[v70 + v72];
          ++v72;
        }

        while (v57 != v72);
      }

      v70 += v57;
    }
  }

  if (v48 >= 1)
  {
    v73 = *(v11 + 32);
    v74 = v48;
    do
    {
      v75 = *v73++;
      v136[v75] = -1;
      --v74;
    }

    while (v74);
  }

  sub_1D0BFC4C8(&v127, v35, 1);
  v164 = 0x800000001;
  *v163 = &unk_1F4CE13B8;
  v165 = v166;
  if (v48 == 1)
  {
    v76 = 0;
    *&v77 = 0x100000001;
    *(&v77 + 1) = 0x100000001;
    *&v163[8] = v77;
    v166[0] = 0;
    v78 = 1;
    v79 = 1;
  }

  else if (v48 <= 0)
  {
    v78 = 0;
    v79 = 0;
    *&v163[8] = 0;
    *&v163[16] = 0;
    v76 = 1;
  }

  else
  {
    v80 = 0;
    *&v163[16] = v48;
    *&v163[20] = 1;
    v81 = vdupq_n_s64(v48 - 1);
    v82 = xmmword_1D0E84440;
    v83 = xmmword_1D0E7DD30;
    v84 = vdupq_n_s64(4uLL);
    v85 = v167;
    *&v163[8] = 1;
    *&v163[12] = v48;
    do
    {
      v86 = vmovn_s64(vcgeq_u64(v81, v83));
      if (vuzp1_s16(v86, *v81.i8).u8[0])
      {
        *(v85 - 3) = v80;
      }

      if (vuzp1_s16(v86, *&v81).i8[2])
      {
        *(v85 - 2) = v80 + 1;
      }

      if (vuzp1_s16(*&v81, vmovn_s64(vcgeq_u64(v81, *&v82))).i32[1])
      {
        *(v85 - 1) = v80 + 2;
        *v85 = v80 + 3;
      }

      v80 += 4;
      v82 = vaddq_s64(v82, v84);
      v83 = vaddq_s64(v83, v84);
      v85 += 4;
    }

    while (((v48 + 3) & 0xFFFFFFFC) != v80);
    v76 = 0;
    v78 = 1;
    v79 = v48;
  }

  v124 = 0x100000008;
  v119 = &unk_1F4CE43F8;
  v125 = v126;
  v120 = v79;
  v121 = v78;
  v122 = v79 * v78;
  v123 = v79;
  if (v79)
  {
    v87 = 0;
    for (k = 0; k != v79; ++k)
    {
      if ((v76 & 1) == 0)
      {
        v89 = 0;
        do
        {
          v126[k + v123 * v89] = v166[v87 + v89];
          ++v89;
        }

        while (v78 != v89);
      }

      v87 += v78;
    }
  }

  sub_1D0DF9968(v163, &v127, &v119);
  sub_1D0DF927C(v163, *(v11 + 16), *(v11 + 32));
  v90 = v35 - v48;
  if (v35 > v48)
  {
    LODWORD(v91) = 0;
    v92 = v135;
    v93 = v130;
    v94 = v48;
    do
    {
      v91 = v91;
      do
      {
        v95 = v92[v91++];
      }

      while (v95 == -1);
      *(v93 + v94++) = v95;
    }

    while (v94 != v35);
  }

  sub_1D0DF9330(v47, v35, &v127);
  sub_1D0DFA168(v176, &v119);
  v164 = 0x800000001;
  *v163 = &unk_1F4CE13B8;
  v165 = v166;
  v96 = (v45 - v48);
  if (v45 == v48)
  {
    *&v97 = 0x100000001;
    *(&v97 + 1) = 0x100000001;
    *&v163[8] = v97;
    v166[0] = v48;
    v98 = 1;
    v99 = 1;
  }

  else if (v45 - v48 < 0)
  {
    v98 = 0;
    v99 = 0;
    *&v163[8] = 0;
    *&v163[16] = 0;
    LOBYTE(v96) = 1;
  }

  else
  {
    v99 = v96 + 1;
    *&v163[8] = 1;
    *&v163[12] = v96 + 1;
    *&v163[16] = v96 + 1;
    *&v163[20] = 1;
    v100 = vdupq_n_s64(v96);
    v101 = v167;
    v102 = (4 * ~(v96 >> 2)) | 0xFFFFFFFF80000000;
    v103 = xmmword_1D0E84440;
    v104 = xmmword_1D0E7DD30;
    v105 = 13;
    v106 = vdupq_n_s64(4uLL);
    do
    {
      v107 = vmovn_s64(vcgeq_u64(v100, v104));
      if (vuzp1_s16(v107, *v100.i8).u8[0])
      {
        *(v101 - 3) = v48 + v105 - 13;
      }

      if (vuzp1_s16(v107, *&v100).i8[2])
      {
        *(v101 - 2) = v48 + v105 - 12;
      }

      if (vuzp1_s16(*&v100, vmovn_s64(vcgeq_u64(v100, *&v103))).i32[1])
      {
        *(v101 - 1) = v48 + v105 - 11;
        *v101 = v48 + v105 - 10;
      }

      v103 = vaddq_s64(v103, v106);
      v104 = vaddq_s64(v104, v106);
      v105 += 4;
      v101 += 4;
    }

    while (v102 + v105 != 13);
    LOBYTE(v96) = 0;
    v98 = 1;
  }

  v173 = 0x100000008;
  v168 = &unk_1F4CE43F8;
  v174 = v175;
  v169 = v99;
  v170 = v98;
  v171 = v99 * v98;
  v172 = v99;
  if (v99)
  {
    v108 = 0;
    for (m = 0; m != v99; ++m)
    {
      if ((v96 & 1) == 0)
      {
        v110 = 0;
        do
        {
          v175[m + v172 * v110] = v166[v108 + v110];
          ++v110;
        }

        while (v98 != v110);
      }

      v108 += v98;
    }
  }

  sub_1D0BA4B2C(v163, v46 + 3632, &v119);
  sub_1D0BA556C(v163, v147);
  sub_1D0BA16B8(v163, v46 + 3736, v176, v176);
  sub_1D0B9F65C(v163, &v142);
  if ((v48 & 0x80000000) != 0)
  {
    v116 = "nr >= 0";
    v117 = 3098;
    goto LABEL_131;
  }

  if (v90 < 0)
  {
    v116 = "nc >= 0";
    v117 = 3099;
LABEL_131:
    __assert_rtn("Zeros", "cnmatrix.h", v117, v116);
  }

  v160 = 0x800000008;
  v158 = &unk_1F4CE43B0;
  v161 = v162;
  v111 = v90 * v48;
  LODWORD(v159) = v48;
  DWORD1(v159) = v35 - v48;
  DWORD2(v159) = v90 * v48;
  HIDWORD(v159) = v48;
  if (v90 * v48 > 3)
  {
    v112 = &v162[v111];
    bzero(v162, 16 * ((v111 - 1) >> 1));
    *(v112 - 2) = 0;
    *(v112 - 1) = 0;
  }

  else if (v111 >= 1)
  {
    bzero(v162, 8 * (v90 * v48));
  }

  sub_1D0BA16B8(v163, v46 + 3736, v176, &v168);
  sub_1D0B9F65C(v163, &v158);
  sub_1D0BA4B2C(v163, v46 + 4288, &v119);
  sub_1D0BA556C(v163, &v137);
  sub_1D0BFC4C8(v163, v35, 1);
  if (v35 >= 1)
  {
    v113 = 0;
    v114 = v130;
    v115 = v165;
    do
    {
      v115[*(v114 + v113)] = v113;
      ++v113;
    }

    while (v35 != v113);
  }

  sub_1D0DF9330(v47, v35, v163);
}

uint64_t sub_1D0DF6610(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v2 = *(a2 + 12);
  *(a1 + 24) = 0x800000008;
  *a1 = &unk_1F4CE43B0;
  *(a1 + 8) = v2;
  *(a1 + 12) = v3;
  *(a1 + 16) = v3 * v2;
  *(a1 + 20) = v2;
  *(a1 + 32) = a1 + 40;
  return sub_1D0BD2018(a2, a1);
}

void raven::RavenConvergenceEstimator::InflateVelocityUncertainty(raven::RavenConvergenceEstimator *this, double a2)
{
  if ((atomic_load_explicit(&qword_1EE054A68, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE054A68))
  {
    v15 = 0x300000001;
    *v14 = &unk_1F4CDF0C8;
    v16 = &v17;
    *&v14[8] = xmmword_1D0E7F310;
    v17 = 0x400000003;
    v18 = 5;
    sub_1D0D2CF48(v14, &unk_1EE054AF8);
    __cxa_atexit(sub_1D0D26840, &unk_1EE054AF8, &dword_1D0B71000);
    __cxa_guard_release(&qword_1EE054A68);
  }

  sub_1D0DFA2A8(v14, &unk_1EE054AF8);
  sub_1D0B751F4(__p, "InflateVelocityUncertainty");
  raven::RavenConvergenceEstimator::InflateUncertainties(this, v14, __p, v3);
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  LOWORD(__p[0]) = 12;
  v11 = 2;
  *v14 = *(this + 5);
  v4 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, v14, "Inflating estimator variance of velocity states.");
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

void raven::RavenConvergenceEstimator::InflateXOUncertainty(raven::RavenConvergenceEstimator *this, double a2)
{
  if ((atomic_load_explicit(&qword_1EE054A70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE054A70))
  {
    v15 = 0x200000001;
    *v14 = &unk_1F4CE2060;
    v16 = &v17;
    *&v14[8] = xmmword_1D0E84500;
    v17 = 0x700000006;
    sub_1D0D751D4(v14, &unk_1EE054A90);
    __cxa_atexit(sub_1D0D7527C, &unk_1EE054A90, &dword_1D0B71000);
    __cxa_guard_release(&qword_1EE054A70);
  }

  sub_1D0DFA2A8(v14, &unk_1EE054A90);
  sub_1D0B751F4(__p, "InflateXOUncertainty");
  raven::RavenConvergenceEstimator::InflateUncertainties(this, v14, __p, v3);
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  LOWORD(__p[0]) = 12;
  v11 = 2;
  *v14 = *(this + 5);
  v4 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, v14, "Inflating estimator variance of xo states.");
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

uint64_t raven::RavenConvergenceEstimator::Initialize(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 57) != 1)
  {
    return 0xFFFFFFFFLL;
  }

  v35 = v5;
  v36 = v4;
  v37 = v2;
  v38 = v3;
  if (*(a1 + 58) == 1)
  {
    v29[0] = 12;
    LOBYTE(v30) = 4;
    v8 = cnprint::CNLogFormatter::FormatGeneral(a1 + 2712, a1 + 80, "Attempting to initialize an already initialized estimator");
    if (*(a1 + 2735) >= 0)
    {
      LOBYTE(v14) = v8;
    }

    else
    {
      v14 = *(a1 + 2712);
    }

    cnprint::CNPrinter::Print(v29, &v30, "%s", v9, v10, v11, v12, v13, v14);
  }

  *(a1 + 64) = *a2;
  *(a1 + 80) = *a2;
  *(a1 + 96) = *a2;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  sub_1D0BAAEBC(a1 + 8560);
  sub_1D0BADC18(a1 + 8560, a2, v15, v16, v17, v18, v19, v20);
  *(a1 + 312) = 0;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 520) = 0u;
  *(a1 + 536) = 0u;
  *(a1 + 552) = 0u;
  *(a1 + 568) = 0u;
  *(a1 + 584) = 0;
  *(a1 + 980) = 0;
  *(a1 + 948) = 0u;
  *(a1 + 964) = 0u;
  *(a1 + 916) = 0u;
  *(a1 + 932) = 0u;
  *(a1 + 884) = 0u;
  *(a1 + 900) = 0u;
  *(a1 + 852) = 0u;
  *(a1 + 868) = 0u;
  *(a1 + 820) = 0u;
  *(a1 + 836) = 0u;
  *(a1 + 788) = 0u;
  *(a1 + 804) = 0u;
  *(a1 + 756) = 0u;
  *(a1 + 772) = 0u;
  *(a1 + 724) = 0u;
  *(a1 + 740) = 0u;
  *(a1 + 320) = 0x7FF8000000000000;
  *(a1 + 272) = 0;
  *(a1 + 592) = 0u;
  *(a1 + 608) = 0u;
  *(a1 + 624) = 0u;
  *(a1 + 640) = 0u;
  *(a1 + 656) = 0u;
  *(a1 + 672) = 0u;
  *(a1 + 688) = 0u;
  *(a1 + 704) = 0u;
  *(a1 + 720) = 0;
  *(a1 + 988) = 0u;
  *(a1 + 1004) = 0u;
  *(a1 + 1020) = 0u;
  *(a1 + 1036) = 0u;
  *(a1 + 1052) = 0u;
  *(a1 + 1068) = 0u;
  *(a1 + 1084) = 0u;
  *(a1 + 1100) = 0u;
  *(a1 + 1116) = 0;
  v32 = 0x100000008;
  v30 = &unk_1F4CE4320;
  v33 = v34;
  v21 = *(a2 + 32);
  v34[0] = *(a2 + 16);
  v34[1] = v21;
  v22 = *(a2 + 64);
  v34[2] = *(a2 + 48);
  v31 = xmmword_1D0E84520;
  v34[3] = v22;
  sub_1D0BA57FC(v29, a2 + 80);
  v26 = 0x100000008;
  v24 = &unk_1F4CE4320;
  v25 = xmmword_1D0E84520;
  v27 = &v28;
  sub_1D0B89390(v29, &v30, &v24);
  sub_1D0DED3EC(a1 + 2864, &v30, v29, &v24);
  v24 = 0x3FE0000000000000;
  result = sub_1D0D87CD8(a1 + 8496, &v24);
  if (result)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 58) = 1;
  return result;
}

void raven::RavenConvergenceEstimator::Reset(raven::RavenConvergenceEstimator *this)
{
  v2 = this + 8120;
  v11 = 12;
  v10 = 2;
  v3 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, this + 80, "Resetting estimator");
  if (*(this + 2735) >= 0)
  {
    LOBYTE(v9) = v3;
  }

  else
  {
    v9 = *(this + 339);
  }

  cnprint::CNPrinter::Print(&v11, &v10, "%s", v4, v5, v6, v7, v8, v9);
  raven::RavenSequentialGNSSMeasurementSelector::ResetEpochSpecificMembers((this + 5928));
  if (*v2 == 1)
  {
    *v2 = 0;
  }

  if (v2[224] == 1)
  {
    *(this + 1030) = &unk_1F4CD5E28;
    v2[224] = 0;
  }

  v12 = 0x3FE0000000000000;
  sub_1D0D87CD8(this + 8496, &v12);
  sub_1D0BAAEBC(this + 8560);
  raven::RavenEstimator::Reset(this);
}

uint64_t sub_1D0DF6DA8(void *a1)
{
  *a1 = &unk_1F4CEC098;
  sub_1D0DC5674(a1 + 1070);
  a1[1061] = &unk_1F4CE3930;
  sub_1D0D83110((a1 + 741));
  a1[358] = &unk_1F4CEAAF8;
  a1[659] = &unk_1F4CD5E28;
  a1[646] = &unk_1F4CD5E28;
  a1[577] = &unk_1F4CD5E28;
  sub_1D0BC27EC((a1 + 358));

  return sub_1D0D4FA90(a1);
}

void sub_1D0DF6EC4(void *a1)
{
  *a1 = &unk_1F4CEC098;
  sub_1D0DC5674(a1 + 1070);
  a1[1061] = &unk_1F4CE3930;
  sub_1D0D83110((a1 + 741));
  a1[358] = &unk_1F4CEAAF8;
  a1[659] = &unk_1F4CD5E28;
  a1[646] = &unk_1F4CD5E28;
  a1[577] = &unk_1F4CD5E28;
  sub_1D0BC27EC((a1 + 358));
  sub_1D0D4FA90(a1);

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0DF7070(uint64_t a1)
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

void sub_1D0DF71A8(uint64_t a1)
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

void sub_1D0DF72AC(uint64_t a1)
{
  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0DF731C(uint64_t a1)
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

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0DF7410(uint64_t a1)
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

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0DF74DC(uint64_t a1)
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

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0DF7604(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  sub_1D0C51C04(a1, v2);
  v1 = *MEMORY[0x1E69E9840];
}

void sub_1D0DF7654(uint64_t a1)
{
  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0DF76C4(uint64_t a1)
{
  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0DF7734(uint64_t a1)
{
  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0DF77A4(uint64_t a1)
{
  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0DF7814(uint64_t a1)
{
  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0DF7884(uint64_t a1)
{
  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0DF78F4(uint64_t a1)
{
  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  JUMPOUT(0x1D387ECA0);
}

void *sub_1D0DF7A40(int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      sub_1D0DF7964(a3, a2[1]);
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
    *a3 = sub_1D0DF7A40;
    a3[1] = v9;
    goto LABEL_9;
  }

  if (a1 != 3)
  {
    return &unk_1F4CEB5D0;
  }

  if (a4)
  {
    v6 = sub_1D0B7CA64(a4, &unk_1F4CEB5D0);
  }

  else
  {
    v6 = a5 == &std::__any_imp::__unique_typeinfo<raven::h_AltitudeArgs_RavenConvergence>::__id;
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

void sub_1D0DF7BA8(uint64_t a1)
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

void sub_1D0DF7D00(uint64_t a1)
{
  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0DF7D70(uint64_t a1, uint64_t a2, double *a3)
{
  *(a1 + 24) = 0x800000008;
  *a1 = &unk_1F4CE43B0;
  *(a1 + 8) = xmmword_1D0E84510;
  *(a1 + 32) = a1 + 40;
  v15 = 0x100000008;
  v14 = xmmword_1D0E84520;
  v13 = &unk_1F4CE43F8;
  v16 = &v17;
  v10 = 0x100000008;
  v9 = xmmword_1D0E84520;
  v8 = &unk_1F4CE43F8;
  v11 = &v12;
  v5 = 0x100000020;
  v3 = &unk_1F4CE3988;
  v4 = xmmword_1D0E84540;
  v6 = &v7;
  *a3 = sub_1D0BA5174(a2, &v13, &v8, &v3, a1);
}

void *sub_1D0DF8008(int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      sub_1D0DF7ECC(a3, a2[1]);
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
    *a3 = sub_1D0DF8008;
    a3[1] = v9;
    goto LABEL_9;
  }

  if (a1 != 3)
  {
    return &unk_1F4CEB610;
  }

  if (a4)
  {
    v6 = sub_1D0B7CA64(a4, &unk_1F4CEB610);
  }

  else
  {
    v6 = a5 == &std::__any_imp::__unique_typeinfo<raven::h_MapVectorPositionConstraintArgs_RavenConvergence>::__id;
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

void *sub_1D0DF8228(int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      sub_1D0DF80F4(a3, a2[1]);
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
    *a3 = sub_1D0DF8228;
    a3[1] = v9;
    goto LABEL_9;
  }

  if (a1 != 3)
  {
    return &unk_1F4CEB650;
  }

  if (a4)
  {
    v6 = sub_1D0B7CA64(a4, &unk_1F4CEB650);
  }

  else
  {
    v6 = a5 == &std::__any_imp::__unique_typeinfo<raven::h_MapVectorVelocityConstraintArgs_RavenConvergence>::__id;
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

void sub_1D0DF8314(uint64_t a1)
{
  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  JUMPOUT(0x1D387ECA0);
}

void *sub_1D0DF8470(int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      sub_1D0DF8384(a3, a2[1]);
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
    *a3 = sub_1D0DF8470;
    a3[1] = v9;
    goto LABEL_9;
  }

  if (a1 != 3)
  {
    return &unk_1F4CEB8A0;
  }

  if (a4)
  {
    v6 = sub_1D0B7CA64(a4, &unk_1F4CEB8A0);
  }

  else
  {
    v6 = a5 == &std::__any_imp::__unique_typeinfo<raven::h_HorizontalDistanceTraveledArgs_RavenConvergence<double>>::__id;
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

uint64_t sub_1D0DF855C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 12);
  v28 = 0x100000006;
  v29 = 0;
  v26 = 0;
  v27 = 0;
  v25 = &unk_1F4CE1400;
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
      if (vuzp1_s16(v12, 0x100000006).u8[0])
      {
        *(v10 - 3) = v5;
      }

      if (vuzp1_s16(v12, 0x100000006).i8[2])
      {
        *(v10 - 2) = v5 + 1;
      }

      if (vuzp1_s16(0x100000006, vmovn_s64(vcgeq_u64(v7, *&v8))).i32[1])
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

  *(a1 + 24) = 0x600000003;
  *(a1 + 8) = xmmword_1D0E9CBF0;
  *(a1 + 32) = a1 + 40;
  *a1 = &unk_1F4CEB8E0;
  *(a1 + 216) = 0x100000003;
  *(a1 + 184) = a2;
  *(a1 + 192) = &unk_1F4CDEAA0;
  *(a1 + 200) = xmmword_1D0E7DCC0;
  *(a1 + 224) = a1 + 232;
  *(a1 + 272) = 0x100000006;
  *(a1 + 248) = &unk_1F4CE1400;
  *(a1 + 256) = xmmword_1D0E84530;
  *(a1 + 280) = a1 + 288;
  sub_1D0B9F5D4(a1 + 192, &unk_1EE054B30);
  result = sub_1D0B9F5D4(a1 + 248, &v25);
  v14 = *(a1 + 208);
  v15 = *(a1 + 264);
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
        v20 = *(a1 + 224);
        v21 = *(*(a1 + 280) + 4 * v17) * v18;
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

void *sub_1D0DF87EC(void *result)
{
  result[31] = &unk_1F4CDEAF8;
  result[24] = &unk_1F4CDEAF8;
  *result = &unk_1F4CD5E28;
  return result;
}

void sub_1D0DF884C(void *a1)
{
  a1[31] = &unk_1F4CDEAF8;
  a1[24] = &unk_1F4CDEAF8;
  *a1 = &unk_1F4CD5E28;
  JUMPOUT(0x1D387ECA0);
}

__n128 sub_1D0DF88BC(uint64_t a1, uint64_t a2)
{
  result.n128_u64[0] = 0x600000003;
  *(a1 + 24) = 0x600000003;
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F4CEB7D0;
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

  if (v3 >= 7)
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

void sub_1D0DF8A04(uint64_t a1)
{
  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  JUMPOUT(0x1D387ECA0);
}

void *sub_1D0DF8B58(int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      sub_1D0DF8A74(a3, a2[1]);
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
    *a3 = sub_1D0DF8B58;
    a3[1] = v9;
    goto LABEL_9;
  }

  if (a1 != 3)
  {
    return &unk_1F4CEB8B8;
  }

  if (a4)
  {
    v6 = sub_1D0B7CA64(a4, &unk_1F4CEB8B8);
  }

  else
  {
    v6 = a5 == &std::__any_imp::__unique_typeinfo<raven::h_3DDistanceTraveledArgs_RavenConvergence<double>>::__id;
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

void sub_1D0DF8CA0(uint64_t a1)
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

void *sub_1D0DF8E74(int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      sub_1D0DF8D98(a3, a2[1]);
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
    *a3 = sub_1D0DF8E74;
    a3[1] = v9;
    goto LABEL_9;
  }

  if (a1 != 3)
  {
    return &unk_1F4CEB690;
  }

  if (a4)
  {
    v6 = sub_1D0B7CA64(a4, &unk_1F4CEB690);
  }

  else
  {
    v6 = a5 == &std::__any_imp::__unique_typeinfo<raven::h_PositionArgs_RavenConvergence>::__id;
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

void *sub_1D0DF903C(int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      sub_1D0DF8F60(a3, a2[1]);
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
    *a3 = sub_1D0DF903C;
    a3[1] = v9;
    goto LABEL_9;
  }

  if (a1 != 3)
  {
    return &unk_1F4CEB750;
  }

  if (a4)
  {
    v6 = sub_1D0B7CA64(a4, &unk_1F4CEB750);
  }

  else
  {
    v6 = a5 == &std::__any_imp::__unique_typeinfo<raven::h_UserSpeedArgs_RavenConvergence>::__id;
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

void sub_1D0DF9184(uint64_t a1)
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
            v10 = *(v7 + 4 * v8);
            v11 = v8;
            do
            {
              v11 = (v11 * (v3 + v1 - v5)) % v6;
              v12 = *(v7 + 4 * v11);
              *(v7 + 4 * v11) = v10;
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

uint64_t sub_1D0DF927C(uint64_t result, int a2, int *a3)
{
  if (*(result + 16) != a2)
  {
    __assert_rtn("operator=", "cnsubvector.h", 347, "this->num_elements_ == A.num_elements_");
  }

  if (a2 >= 1)
  {
    v3 = *(result + 112);
    v4 = *(*(result + 72) + 32);
    v5 = *(result + 32);
    v6 = a2;
    do
    {
      v8 = *a3++;
      v7 = v8;
      v9 = *v3++;
      *(v4 + 4 * v9) = v7;
      *v5++ = v7;
      --v6;
    }

    while (v6);
  }

  return result;
}

void *sub_1D0DF92F0(void *result)
{
  result[10] = &unk_1F4CDEAF8;
  *result = &unk_1F4CDEAF8;
  return result;
}

void sub_1D0DF9330(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v107 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 1540))
  {
    sub_1D0B894B0(a1 + 768, a1 + 8);
    sub_1D0B894B0(a1 + 872, a1 + 112);
    sub_1D0B894B0(a1 + 1424, a1 + 664);
  }

  v6 = *(a1 + 776);
  v7 = *(a1 + 780);
  if (v6 <= v7)
  {
    v8 = *(a1 + 780);
  }

  else
  {
    v8 = *(a1 + 776);
  }

  if (v7)
  {
    v9 = v6 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = v8;
  }

  if (v10 != a2)
  {
    LOWORD(v92) = 2;
    LOBYTE(v83) = 4;
    v11 = cnprint::CNLogFormatter::FormatGeneral((a1 + 1704), "ReorderStates(): Length(order) != Length(x).");
    if (*(a1 + 1727) >= 0)
    {
      LOBYTE(v17) = v11;
    }

    else
    {
      v17 = *(a1 + 1704);
    }

    cnprint::CNPrinter::Print(&v92, &v83, "%s", v12, v13, v14, v15, v16, v17);
  }

  v104 = 0x100000008;
  v105 = 0;
  v102 = 0;
  v103 = 0;
  v101[8] = &unk_1F4CEBA28;
  if ((a2 & 0x80000000) != 0)
  {
    __assert_rtn("CNMatrix", "cnmatrix.h", 419, "nr >= 0");
  }

  v102 = a2 | 0x100000000;
  LODWORD(v103) = a2;
  HIDWORD(v103) = a2;
  v18 = v106;
  v105 = v106;
  if (a2 > 3)
  {
    bzero(v106, a2 - 1);
    v106[a2 - 1] = 0;
    v77 = a2;
    v19 = a2;
  }

  else
  {
    if (!a2)
    {
      v22 = 0;
      goto LABEL_30;
    }

    v77 = a2;
    v19 = a2;
    bzero(v106, a2);
  }

  v20 = 0;
  v21 = *(a3 + 32);
  v22 = 1;
  do
  {
    v23 = *(v21 + 4 * v20);
    if (v18[v23] == 1)
    {
      LOWORD(v92) = 2;
      LOBYTE(v83) = 4;
      cnprint::CNLogFormatter::FormatGeneral((a1 + 1704), "ReorderStates(): order must reference each state once and only once.");
      if (*(a1 + 1727) >= 0)
      {
        LOBYTE(v29) = a1 - 88;
      }

      else
      {
        v29 = *(a1 + 1704);
      }

      cnprint::CNPrinter::Print(&v92, &v83, "%s", v24, v25, v26, v27, v28, v29);
      v21 = *(a3 + 32);
      v18 = v105;
      v23 = *(v21 + 4 * v20);
    }

    v18[v23] = 1;
    ++v20;
  }

  while (v19 != v20);
  a2 = v77;
LABEL_30:
  sub_1D0B894B0(a1 + 8, a1 + 768);
  sub_1D0B894B0(a1 + 112, a1 + 872);
  sub_1D0B894B0(a1 + 664, a1 + 1424);
  if (v22)
  {
    v30 = 0;
    v31 = a2;
    v32 = "this->num_rows_ == A.num_rows_";
    while (1)
    {
      v33 = *(*(a3 + 32) + 4 * v30);
      *(*(a1 + 800) + 8 * v30) = *(*(a1 + 40) + 8 * v33);
      sub_1D0DF9A90(&v92, a1 + 112, v33);
      sub_1D0DF9A90(&v83, a1 + 872, v30);
      v34 = v84;
      if (v84 != v93)
      {
        break;
      }

      v35 = DWORD1(v84);
      if (DWORD1(v84) != DWORD1(v93))
      {
        v75 = 437;
        v32 = "this->num_cols_ == A.num_cols_";
LABEL_57:
        __assert_rtn("operator=", "cnsubmatrix.h", v75, v32);
      }

      if (DWORD1(v84))
      {
        v36 = 0;
        v37 = 0;
        v38 = 0;
        v39 = v95;
        v40 = v89;
        v41 = v90;
        v42 = HIDWORD(v84);
        v43 = v88;
        v44 = v86;
        do
        {
          if (v34)
          {
            v45 = *(v43 + 20) * *(v41 + 4 * v38);
            v46 = *(v43 + 32);
            v47 = v36;
            v48 = v40;
            v49 = v37;
            v50 = v34;
            do
            {
              v51 = v39[v47];
              v52 = *v48++;
              *(v46 + 8 * (v52 + v45)) = v51;
              v44[v49++] = v51;
              ++v47;
              --v50;
            }

            while (v50);
          }

          ++v38;
          v37 += v42;
          v36 += v34;
        }

        while (v38 != v35);
      }

      *(*(a1 + 1456) + 8 * v30++) = *(*(a1 + 696) + 8 * v33);
      if (v30 == v31)
      {
        sub_1D0B894B0(a1 + 112, a1 + 872);
        v53 = 0;
        v54 = "this->num_rows_ == A.num_rows_";
        while (1)
        {
          sub_1D0DF9CE8(&v92, a1 + 112, *(*(a3 + 32) + 4 * v53));
          sub_1D0DF9CE8(&v83, a1 + 872, v53);
          v55 = v84;
          if (v84 != v93)
          {
            break;
          }

          v56 = DWORD1(v84);
          if (DWORD1(v84) != DWORD1(v93))
          {
            v76 = 437;
            v54 = "this->num_cols_ == A.num_cols_";
LABEL_60:
            __assert_rtn("operator=", "cnsubmatrix.h", v76, v54);
          }

          if (DWORD1(v84))
          {
            v57 = 0;
            v58 = 0;
            v59 = 0;
            v60 = v95;
            v61 = v89;
            v62 = v91;
            v63 = HIDWORD(v84);
            v64 = v88;
            v65 = v86;
            do
            {
              if (v55)
              {
                v66 = *(v64 + 20) * *(v62 + 4 * v59);
                v67 = *(v64 + 32);
                v68 = v57;
                v69 = v61;
                v70 = v58;
                v71 = v55;
                do
                {
                  v72 = v60[v68];
                  v73 = *v69++;
                  *(v67 + 8 * (v73 + v66)) = v72;
                  v65[v70++] = v72;
                  ++v68;
                  --v71;
                }

                while (v71);
              }

              ++v59;
              v58 += v63;
              v57 += v55;
            }

            while (v59 != v56);
          }

          if (++v53 == v31)
          {
            goto LABEL_53;
          }
        }

        v76 = 436;
        goto LABEL_60;
      }
    }

    v75 = 436;
    goto LABEL_57;
  }

  sub_1D0B894B0(a1 + 112, a1 + 872);
LABEL_53:
  v85 = 0x800000008;
  v83 = &unk_1F4CE43B0;
  v84 = xmmword_1D0E84510;
  v86 = &v87;
  v80 = 0x100000008;
  v78 = &unk_1F4CE4320;
  v79 = xmmword_1D0E84520;
  v81 = &v82;
  v99 = 0x100000008;
  v97 = &unk_1F4CE4320;
  v98 = xmmword_1D0E84520;
  v100 = v101;
  v94 = 0x800000008;
  v92 = &unk_1F4CE43B0;
  v93 = xmmword_1D0E84510;
  v95 = &v96;
  sub_1D0BA5B14(a1 + 872, a1 + 1424, &v97, &v92, &v78, &v83);
  sub_1D0B894B0(a1 + 872, &v83);
  sub_1D0B894B0(a1 + 1424, &v78);
  sub_1D0B894B0(a1 + 8, a1 + 768);
  sub_1D0B894B0(a1 + 112, a1 + 872);
  sub_1D0B894B0(a1 + 664, a1 + 1424);
  *(a1 + 1540) = 1;
  v74 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1D0DF9968(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x100000008;
  *(a1 + 8) = xmmword_1D0E84520;
  *(a1 + 32) = a1 + 40;
  *a1 = &unk_1F4CEB9E0;
  *(a1 + 72) = a2;
  *(a1 + 104) = 0x100000008;
  *(a1 + 80) = &unk_1F4CE43F8;
  *(a1 + 88) = xmmword_1D0E84520;
  *(a1 + 112) = a1 + 120;
  sub_1D0B9F5D4(a1 + 80, a3);
  v6 = *(a1 + 88);
  v5 = *(a1 + 92);
  *(a1 + 8) = v6;
  *(a1 + 12) = v5;
  v7 = (v5 * v6);
  *(a1 + 16) = v7;
  *(a1 + 20) = v6;
  if (v7 >= 1)
  {
    v8 = *(a1 + 112);
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

void sub_1D0DF9A40(void *a1)
{
  a1[10] = &unk_1F4CDEAF8;
  *a1 = &unk_1F4CDEAF8;
  JUMPOUT(0x1D387ECA0);
}

uint64_t sub_1D0DF9A90(uint64_t a1, uint64_t a2, int a3)
{
  v30 = 0x100000001;
  v28 = &unk_1F4CDF158;
  *&v5 = 0x100000001;
  *(&v5 + 1) = 0x100000001;
  v29 = v5;
  v31 = &v32;
  v32 = a3;
  v6 = *(a2 + 12);
  v25 = 0x100000008;
  v20 = &unk_1F4CE43F8;
  v21 = v6;
  v22 = 1;
  v23 = v6;
  v24 = v6;
  v26 = v27;
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      v27[i] = i;
    }
  }

  *(a1 + 24) = 0x800000001;
  *(a1 + 8) = xmmword_1D0E9CBE0;
  *(a1 + 32) = a1 + 40;
  *a1 = &unk_1F4CEBA70;
  *(a1 + 136) = 0x100000001;
  *(a1 + 104) = a2;
  *(a1 + 112) = &unk_1F4CDF158;
  *(a1 + 120) = v5;
  *(a1 + 144) = a1 + 152;
  *(a1 + 184) = 0x100000008;
  *(a1 + 160) = &unk_1F4CE43F8;
  *(a1 + 168) = xmmword_1D0E84520;
  *(a1 + 192) = a1 + 200;
  sub_1D0B9F5D4(a1 + 112, &v28);
  result = sub_1D0B9F5D4(a1 + 160, &v20);
  v9 = *(a1 + 128);
  v10 = *(a1 + 176);
  *(a1 + 8) = v9;
  *(a1 + 12) = v10;
  *(a1 + 16) = v10 * v9;
  *(a1 + 20) = v9;
  if (v10)
  {
    v11 = 0;
    v12 = 0;
    v13 = *(a2 + 20);
    v14 = *(a2 + 32);
    do
    {
      if (v9)
      {
        v15 = *(a1 + 144);
        v16 = *(*(a1 + 192) + 4 * v12) * v13;
        v17 = *(a1 + 32);
        v18 = v11;
        result = v9;
        do
        {
          v19 = *v15++;
          *(v17 + 8 * v18++) = *(v14 + 8 * (v19 + v16));
          --result;
        }

        while (result);
      }

      ++v12;
      v11 += v9;
    }

    while (v12 != v10);
  }

  return result;
}

void *sub_1D0DF9C88(void *result)
{
  result[20] = &unk_1F4CDEAF8;
  result[14] = &unk_1F4CDEAF8;
  *result = &unk_1F4CD5E28;
  return result;
}

uint64_t sub_1D0DF9CE8(uint64_t a1, uint64_t a2, int a3)
{
  v5 = *(a2 + 8);
  v30 = 0x100000008;
  v25 = &unk_1F4CE43F8;
  v26 = v5;
  v27 = 1;
  v28 = v5;
  v29 = v5;
  v31 = v32;
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      v32[i] = i;
    }
  }

  v22 = 0x100000001;
  v20 = &unk_1F4CDF158;
  *&v7 = 0x100000001;
  *(&v7 + 1) = 0x100000001;
  v21 = v7;
  v23 = &v24;
  v24 = a3;
  *(a1 + 24) = 0x100000008;
  *(a1 + 8) = xmmword_1D0E84520;
  *(a1 + 32) = a1 + 40;
  *a1 = &unk_1F4CEBAB8;
  *(a1 + 136) = 0x100000008;
  *(a1 + 104) = a2;
  *(a1 + 112) = &unk_1F4CE43F8;
  *(a1 + 120) = xmmword_1D0E84520;
  *(a1 + 144) = a1 + 152;
  *(a1 + 208) = 0x100000001;
  *(a1 + 184) = &unk_1F4CDF158;
  *(a1 + 192) = v7;
  *(a1 + 216) = a1 + 224;
  sub_1D0B9F5D4(a1 + 112, &v25);
  result = sub_1D0B9F5D4(a1 + 184, &v20);
  v9 = *(a1 + 128);
  v10 = *(a1 + 200);
  *(a1 + 8) = v9;
  *(a1 + 12) = v10;
  *(a1 + 16) = v10 * v9;
  *(a1 + 20) = v9;
  if (v10)
  {
    v11 = 0;
    v12 = 0;
    v13 = *(a2 + 20);
    v14 = *(a2 + 32);
    do
    {
      if (v9)
      {
        v15 = *(a1 + 144);
        v16 = *(*(a1 + 216) + 4 * v12) * v13;
        v17 = *(a1 + 32);
        v18 = v11;
        result = v9;
        do
        {
          v19 = *v15++;
          *(v17 + 8 * v18++) = *(v14 + 8 * (v19 + v16));
          --result;
        }

        while (result);
      }

      ++v12;
      v11 += v9;
    }

    while (v12 != v10);
  }

  return result;
}

void *sub_1D0DF9ED0(void *result)
{
  result[23] = &unk_1F4CDEAF8;
  result[14] = &unk_1F4CDEAF8;
  *result = &unk_1F4CD5E28;
  return result;
}

void sub_1D0DF9F8C(uint64_t a1)
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
            v10 = *(v7 + v8);
            v11 = v8;
            do
            {
              v11 = (v11 * (v3 + v1 - v5)) % v6;
              v12 = *(v7 + v11);
              *(v7 + v11) = v10 & 1;
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

void sub_1D0DFA088(void *a1)
{
  a1[20] = &unk_1F4CDEAF8;
  a1[14] = &unk_1F4CDEAF8;
  *a1 = &unk_1F4CD5E28;
  JUMPOUT(0x1D387ECA0);
}

void sub_1D0DFA0F8(void *a1)
{
  a1[23] = &unk_1F4CDEAF8;
  a1[14] = &unk_1F4CDEAF8;
  *a1 = &unk_1F4CD5E28;
  JUMPOUT(0x1D387ECA0);
}

uint64_t sub_1D0DFA168(uint64_t result, uint64_t a2)
{
  *(result + 24) = 0x100000008;
  *(result + 32) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = &unk_1F4CE43F8;
  if (result == a2)
  {
    v15 = "this != &(A)";
    v16 = 603;
    goto LABEL_16;
  }

  v3 = *(a2 + 8);
  v2 = *(a2 + 12);
  *(result + 8) = v3;
  *(result + 12) = v2;
  v4 = v2 * v3;
  *(result + 16) = v4;
  *(result + 20) = v3;
  v5 = (result + 40);
  *(result + 32) = result + 40;
  if (v3 > 8)
  {
    v15 = "this->max_num_rows_ >= A.num_rows_";
    v16 = 616;
    goto LABEL_16;
  }

  if (v2 >= 2)
  {
    v15 = "this->max_num_cols_ >= A.num_cols_";
    v16 = 617;
LABEL_16:
    __assert_rtn("CNMatrix", "cnmatrix.h", v16, v15);
  }

  v6 = *(a2 + 16);
  if (v6 > 3)
  {
    v9 = (v6 - 1);
    v10 = *(a2 + 32);
    v11 = v10;
    v12 = (result + 40);
    v13 = v9;
    do
    {
      v14 = *v11++;
      *v12++ = v14;
      --v13;
    }

    while (v13);
    v5[v9] = v10[v9];
  }

  else if (v4 >= 1)
  {
    v7 = *(a2 + 32);
    do
    {
      v8 = *v7++;
      *v5++ = v8;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_1D0DFA2A8(uint64_t result, uint64_t a2)
{
  *(result + 24) = 0x100000008;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = &unk_1F4CE43F8;
  v3 = *(a2 + 8);
  v2 = *(a2 + 12);
  *(result + 8) = v3;
  *(result + 12) = v2;
  v4 = v2 * v3;
  *(result + 16) = v4;
  *(result + 20) = v3;
  v5 = (result + 40);
  *(result + 32) = result + 40;
  if (v3 > 8)
  {
    v8 = "this->max_num_rows_ >= A.NumRows()";
    v9 = 567;
    goto LABEL_9;
  }

  if (v2 > 1)
  {
    v8 = "this->max_num_cols_ >= A.NumCols()";
    v9 = 568;
LABEL_9:
    __assert_rtn("CNMatrix", "cnmatrix.h", v9, v8);
  }

  if (v4 >= 1)
  {
    v6 = *(a2 + 32);
    do
    {
      v7 = *v6++;
      *v5++ = v7;
      --v4;
    }

    while (v4);
  }

  return result;
}

void sub_1D0DFA394(void *a1)
{
  sub_1D0DFA580(a1);

  JUMPOUT(0x1D387ECA0);
}

void *sub_1D0DFA580(void *a1)
{
  *a1 = &unk_1F4CEBB00;
  v2 = a1[5];
  a1[5] = 0;
  if (v2)
  {
    MEMORY[0x1D387EC80](v2, 0x1000C8000313F17);
  }

  *a1 = &unk_1F4CD5E28;
  return a1;
}

void sub_1D0DFA638(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 2)
  {
    v3 = *(a1 + 12);
    if (v3 >= 2)
    {
      v4 = *(a1 + 16);
      v5 = *(a1 + 20);
      bzero(v13, v4);
      if (v4 >= 3)
      {
        v6 = (v4 - 1);
        v7 = 1;
        do
        {
          v8 = &v13[v7];
          if ((v13[v7] & 1) == 0)
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
              v8 = &v13[v10];
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
}

void sub_1D0DFA76C(uint64_t a1)
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

void sub_1D0DFA8C0(uint64_t a1)
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

void *sub_1D0DFA9B8(void *result)
{
  result[37] = &unk_1F4CDEAF8;
  result[30] = &unk_1F4CDEAF8;
  *result = &unk_1F4CD5E28;
  return result;
}

uint64_t sub_1D0DFAA1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = 0x100000067;
  v10 = &unk_1F4CEBD38;
  v11 = xmmword_1D0E9CC30;
  v13 = &v14;
  v7 = 0x1000000010;
  v5 = &unk_1F4CE17D0;
  v6 = xmmword_1D0E84570;
  v8 = &v9;
  return sub_1D0BA5B14(a1, a2, &v10, &v5, a3, a4);
}

void sub_1D0DFAAD4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v2 = *(a2 + 12);
  *(a1 + 24) = 0x5700000008;
  *a1 = &unk_1F4CEBDC8;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 8) = v2;
  *(a1 + 12) = v3;
  *(a1 + 16) = v3 * v2;
  *(a1 + 20) = v2;
  sub_1D0BF8784();
}

void sub_1D0DFABA4(uint64_t a1)
{
  *(a1 + 24) = 0x5700000008;
  *a1 = &unk_1F4CEBDC8;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 8) = xmmword_1D0E9CC40;
  sub_1D0BF8784();
}

void sub_1D0DFAC84()
{
  v2 = 0x10000005FLL;
  v0[6] = &unk_1F4CEBE10;
  v1 = xmmword_1D0E9CC50;
  v3 = &v4;
  sub_1D0DA2888(v0);
}

void sub_1D0DFAD64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1D0DFC5BC(v9);
  sub_1D0DA2BF0(&a9);
  _Unwind_Resume(a1);
}

void sub_1D0DFADC4(uint64_t a1, uint64_t a2)
{
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v3 = *(a2 + 8);
  v4 = *(a2 + 12);
  if (v3)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5 || (v4 | v3) == 0)
  {
LABEL_9:
    if ((a1 + 1680) != &v15)
    {
      sub_1D0DA3374((a1 + 1680), v15, v16, (v16 - v15) >> 5);
    }
  }

  else
  {
    v8 = 1;
    while (1)
    {
      v9 = *(*(a2 + 32) + 4 * (v8 - 1));
      v10 = *(a1 + 1680);
      if (v9 >= (*(a1 + 1688) - v10) >> 5)
      {
        break;
      }

      sub_1D0BBCC94(&v15, v10 + 32 * v9);
      v12 = *(a2 + 8);
      v11 = *(a2 + 12);
      if (v12 <= v11)
      {
        v13 = *(a2 + 12);
      }

      else
      {
        v13 = *(a2 + 8);
      }

      if (v12)
      {
        if (v11)
        {
          if (v13 > v8++)
          {
            continue;
          }
        }
      }

      goto LABEL_9;
    }
  }

  v18 = &v15;
  sub_1D0BA5F70(&v18);
}

void sub_1D0DFAEA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  sub_1D0BA5F70(&a12);
  _Unwind_Resume(a1);
}

uint64_t sub_1D0DFAEC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x100000067;
  *a1 = &unk_1F4CEBE58;
  *(a1 + 8) = xmmword_1D0E9CC30;
  *(a1 + 32) = a1 + 40;
  return sub_1D0D8C29C(a2, a3, a1);
}

uint64_t sub_1D0DFAF4C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v2 = *(a2 + 12);
  *(a1 + 24) = 0x100000010;
  *a1 = &unk_1F4CEBEA0;
  *(a1 + 8) = v2;
  *(a1 + 12) = v3;
  *(a1 + 16) = v3 * v2;
  *(a1 + 20) = v2;
  *(a1 + 32) = a1 + 40;
  return sub_1D0D2EF0C(a2, a1);
}

uint64_t sub_1D0DFAFD8(uint64_t result, unsigned int a2)
{
  *(result + 24) = 0x1000000001;
  *result = &unk_1F4CEBEE8;
  *(result + 32) = result + 40;
  if (a2)
  {
    if ((a2 & 0x80000000) != 0)
    {
      *(result + 8) = 0;
      *(result + 16) = 0;
    }

    else
    {
      v2 = 0;
      *(result + 8) = 1;
      *(result + 12) = a2 + 1;
      *(result + 16) = a2 + 1;
      *(result + 20) = 1;
      v3 = vdupq_n_s64(a2);
      v4 = xmmword_1D0E84440;
      v5 = xmmword_1D0E7DD30;
      v6 = (result + 52);
      v7 = vdupq_n_s64(4uLL);
      do
      {
        v8 = vmovn_s64(vcgeq_u64(v3, v5));
        if (vuzp1_s16(v8, *v3.i8).u8[0])
        {
          *(v6 - 3) = v2;
        }

        if (vuzp1_s16(v8, *&v3).i8[2])
        {
          *(v6 - 2) = v2 + 1;
        }

        if (vuzp1_s16(*&v3, vmovn_s64(vcgeq_u64(v3, *&v4))).i32[1])
        {
          *(v6 - 1) = v2 + 2;
          *v6 = v2 + 3;
        }

        v2 += 4;
        v4 = vaddq_s64(v4, v7);
        v5 = vaddq_s64(v5, v7);
        v6 += 4;
      }

      while ((a2 & 0x7FFFFFFC) + 4 != v2);
    }
  }

  else
  {
    *&v9 = 0x100000001;
    *(&v9 + 1) = 0x100000001;
    *(result + 8) = v9;
    *(result + 40) = 0;
  }

  return result;
}

void sub_1D0DFB120(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 12);
  sub_1D0DFC34C(v11, *(a2 + 12));
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = vdupq_n_s64(v3 - 1);
    v6 = xmmword_1D0E84440;
    v7 = xmmword_1D0E7DD30;
    v8 = (v12 + 8);
    v9 = vdupq_n_s64(4uLL);
    do
    {
      v10 = vmovn_s64(vcgeq_u64(v5, v7));
      if (vuzp1_s16(v10, *v5.i8).u8[0])
      {
        *(v8 - 2) = v4;
      }

      if (vuzp1_s16(v10, *&v5).i8[2])
      {
        *(v8 - 1) = v4 + 1;
      }

      if (vuzp1_s16(*&v5, vmovn_s64(vcgeq_u64(v5, *&v6))).i32[1])
      {
        *v8 = v4 + 2;
        v8[1] = v4 + 3;
      }

      v4 += 4;
      v6 = vaddq_s64(v6, v9);
      v7 = vaddq_s64(v7, v9);
      v8 += 4;
    }

    while (((v3 + 3) & 0xFFFFFFFC) != v4);
  }

  sub_1D0BFF5EC(a1);
}

void sub_1D0DFB380(_Unwind_Exception *a1)
{
  v1[64] = &unk_1F4CDEAF8;
  v1[7] = &unk_1F4CDEAF8;
  sub_1D0C00CB0(v1);
  _Unwind_Resume(a1);
}

void *sub_1D0DFB3CC(void *a1)
{
  *a1 = &unk_1F4CEBF30;
  a1[64] = &unk_1F4CDEAF8;
  a1[7] = &unk_1F4CDEAF8;
  return sub_1D0C00CB0(a1);
}

void *sub_1D0DFB42C(void *result)
{
  result[109] = &unk_1F4CDEAF8;
  *result = &unk_1F4CD5E28;
  return result;
}

void *sub_1D0DFB490(void *result)
{
  result[275] = &unk_1F4CDEAF8;
  result[262] = &unk_1F4CDEAF8;
  *result = &unk_1F4CD5E28;
  return result;
}

void *sub_1D0DFB4F0(void *result)
{
  result[22] = &unk_1F4CDEAF8;
  *result = &unk_1F4CD5E28;
  return result;
}

void sub_1D0DFB554(void *a1)
{
  sub_1D0BFF570(a1);

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0DFB6C0(void *a1)
{
  a1[37] = &unk_1F4CDEAF8;
  a1[30] = &unk_1F4CDEAF8;
  *a1 = &unk_1F4CD5E28;
  JUMPOUT(0x1D387ECA0);
}

void sub_1D0DFB730(void *a1)
{
  sub_1D0C00CB0(a1);

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0DFB8D8(uint64_t a1)
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

void sub_1D0DFB9D0(uint64_t a1, int a2, int a3)
{
  *(a1 + 24) = 0x570000005FLL;
  *a1 = &unk_1F4CEBD80;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 8) = a2;
  *(a1 + 12) = a3;
  *(a1 + 16) = a3 * a2;
  *(a1 + 20) = a2;
  sub_1D0DFBBEC();
}

void sub_1D0DFBA38(_Unwind_Exception *exception_object)
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

void sub_1D0DFBA80(void *a1)
{
  sub_1D0DFC5BC(a1);

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0DFBC74(void *a1)
{
  sub_1D0DFBDE0(a1);

  JUMPOUT(0x1D387ECA0);
}

void *sub_1D0DFBDE0(void *a1)
{
  *a1 = &unk_1F4CEBDC8;
  v2 = a1[5];
  a1[5] = 0;
  if (v2)
  {
    MEMORY[0x1D387EC80](v2, 0x1000C8000313F17);
  }

  *a1 = &unk_1F4CD5E28;
  return a1;
}

void sub_1D0DFBEB8(uint64_t a1)
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

void sub_1D0DFBFEC(uint64_t a1)
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
            v10 = *(v7 + 4 * v8);
            v11 = v8;
            do
            {
              v11 = (v11 * (v3 + v1 - v5)) % v6;
              v12 = *(v7 + 4 * v11);
              *(v7 + 4 * v11) = v10;
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

void sub_1D0DFC120(uint64_t a1)
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
            v10 = *(v7 + 4 * v8);
            v11 = v8;
            do
            {
              v11 = (v11 * (v3 + v1 - v5)) % v6;
              v12 = *(v7 + 4 * v11);
              *(v7 + 4 * v11) = v10;
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

void sub_1D0DFC254(uint64_t a1)
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
            v10 = *(v7 + 4 * v8);
            v11 = v8;
            do
            {
              v11 = (v11 * (v3 + v1 - v5)) % v6;
              v12 = *(v7 + 4 * v11);
              *(v7 + 4 * v11) = v10;
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

uint64_t sub_1D0DFC34C(uint64_t result, int a2)
{
  *(result + 24) = 0x100000010;
  *(result + 32) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = &unk_1F4CEBEA0;
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

void sub_1D0DFC3FC(void *a1)
{
  *a1 = &unk_1F4CEBF30;
  a1[64] = &unk_1F4CDEAF8;
  a1[7] = &unk_1F4CDEAF8;
  sub_1D0C00CB0(a1);

  JUMPOUT(0x1D387ECA0);
}

uint64_t sub_1D0DFC490(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x100000067;
  *(a1 + 8) = xmmword_1D0E9CC30;
  *(a1 + 32) = a1 + 40;
  *a1 = &unk_1F4CEBF78;
  *(a1 + 864) = a2;
  *(a1 + 896) = 0x100000067;
  *(a1 + 872) = &unk_1F4CEBE58;
  *(a1 + 880) = xmmword_1D0E9CC30;
  *(a1 + 904) = a1 + 912;
  sub_1D0B9F5D4(a1 + 872, a3);
  v5 = *(a1 + 880);
  v6 = *(a1 + 884);
  *(a1 + 8) = v5;
  *(a1 + 12) = v6;
  v7 = (v6 * v5);
  *(a1 + 16) = v7;
  *(a1 + 20) = v5;
  if (v7 >= 1)
  {
    v8 = *(a1 + 904);
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

void sub_1D0DFC56C(void *a1)
{
  a1[109] = &unk_1F4CDEAF8;
  *a1 = &unk_1F4CD5E28;
  JUMPOUT(0x1D387ECA0);
}

void *sub_1D0DFC5BC(void *a1)
{
  *a1 = &unk_1F4CEBD80;
  v2 = a1[5];
  a1[5] = 0;
  if (v2)
  {
    MEMORY[0x1D387EC80](v2, 0x1000C8000313F17);
  }

  *a1 = &unk_1F4CD5E28;
  return a1;
}

void sub_1D0DFC638(void *a1)
{
  a1[275] = &unk_1F4CDEAF8;
  a1[262] = &unk_1F4CDEAF8;
  *a1 = &unk_1F4CD5E28;
  JUMPOUT(0x1D387ECA0);
}

void sub_1D0DFC6A8(void *a1)
{
  a1[22] = &unk_1F4CDEAF8;
  *a1 = &unk_1F4CD5E28;
  JUMPOUT(0x1D387ECA0);
}

void *sub_1D0DFC6F8(void *result)
{
  result[180] = &unk_1F4CDEAF8;
  *result = &unk_1F4CEAAC8;
  return result;
}

void sub_1D0DFC738(void *a1)
{
  a1[180] = &unk_1F4CDEAF8;
  *a1 = &unk_1F4CEAAC8;
  JUMPOUT(0x1D387ECA0);
}

uint64_t raven::GNSSUncertaintyScaling::EurekaGNSSUncertaintyWrapper::Instance(raven::GNSSUncertaintyScaling::EurekaGNSSUncertaintyWrapper *this)
{
  result = qword_1EC5FB8B0;
  if (!qword_1EC5FB8B0)
  {
    operator new();
  }

  return result;
}

uint64_t raven::GNSSUncertaintyScaling::EurekaGNSSUncertaintyWrapper::GetUncertaintyScaleFactorCore(uint64_t a1, _DWORD *a2, _BYTE *a3, unsigned __int8 *a4, char *a5, void *a6, float *a7, uint64_t a8)
{
  v8 = a8;
  v15 = *a4;
  if (v15 > 6)
  {
    goto LABEL_36;
  }

  v16 = 1 << v15;
  if ((v16 & 0x27) == 0)
  {
    if ((v16 & 0x18) != 0)
    {
      v19 = *a5;
      v20 = v19 > 6;
      v21 = (1 << v19) & 0x4C;
      if (!v20 && v21 != 0)
      {
        switch(a8)
        {
          case 2:
            v23 = qword_1EE054BA8;
            if (!qword_1EE054BA8)
            {
              operator new();
            }

            v24 = qword_1EE054BB0;
            if (!qword_1EE054BB0)
            {
              operator new();
            }

            break;
          case 1:
            v23 = qword_1EE054B98;
            if (!qword_1EE054B98)
            {
              operator new();
            }

            v24 = qword_1EE054BA0;
            if (!qword_1EE054BA0)
            {
              operator new();
            }

            break;
          case 0:
            v23 = qword_1EE054B88;
            if (!qword_1EE054B88)
            {
              operator new();
            }

            v24 = qword_1EE054B90;
            if (!qword_1EE054B90)
            {
              operator new();
            }

            break;
          default:
LABEL_36:
            v24 = 0;
            v23 = 0;
            break;
        }

LABEL_37:
        v29 = *a3;
        if (v29 > 5)
        {
          if (*a3 <= 7u)
          {
            if (v29 == 7)
            {
              v31 = 2;
            }

            else
            {
              v31 = 0;
            }

            if (v29 == 6)
            {
              v30 = 1;
            }

            else
            {
              v30 = v31;
            }

            goto LABEL_60;
          }

          if (v29 == 8)
          {
            v30 = 3;
            goto LABEL_60;
          }

          if (v29 != 9)
          {
            v30 = 0;
            if (v29 != 10)
            {
              goto LABEL_60;
            }

            goto LABEL_49;
          }
        }

        else
        {
          if (*a3 > 1u)
          {
            if (v29 == 2)
            {
              v30 = 6;
              goto LABEL_60;
            }

            if (v29 == 3)
            {
              v30 = 4;
              goto LABEL_60;
            }

            v30 = 0;
            if (v29 != 5)
            {
LABEL_60:
              v32 = v30;
              if (*a2 == 1)
              {
                if (v23)
                {
                  v33 = v23 + 56 * v30;
                  v34 = a6[1];
                  v18 = 1.0;
                  if (*(v33 + 10 * *a6 + 2 * v34))
                  {
                    v35 = *(v33 + 52) * *(v33 + 10 * *a6 + 2 * v34);
                    if (v8 == 1)
                    {
                      v17 = 0x100000000;
                      v18 = v35;
                      return v17 | LODWORD(v18);
                    }

                    v18 = fmaxf(v35, 1.0);
                  }

LABEL_76:
                  v17 = 0x100000000;
                  return v17 | LODWORD(v18);
                }

                v48 = 12;
                v47 = 5;
                v41 = *a4;
                cnprint::CNPrinter::Print(&v48, &v47, "Invalid range unc scale pointer - activity_state = %d, signal_environment = %hhu, band_as_int = %d", a4, a5, a6, a7, a8, *a5);
              }

              else
              {
                if (v24)
                {
                  v36 = 2;
                  if (*a7 <= 0.6)
                  {
                    v36 = 1;
                  }

                  if (*a7 <= 0.12)
                  {
                    v36 = 0;
                  }

                  v37 = v24 + 156 * v32;
                  v38 = *(v37 + 30 * *a6 + 6 * a6[1] + 2 * v36);
                  if (!v38)
                  {
                    v40 = *(v37 + 152);
                    v17 = 0x100000000;
                    v18 = v40 / flt_1D0E9D6B0[v8 == 0];
                    return v17 | LODWORD(v18);
                  }

                  v18 = *(v37 + 152) * v38;
                  if (v8 != 1)
                  {
                    v18 = fmaxf(v18, 4.0);
                  }

                  goto LABEL_76;
                }

                v46 = 12;
                v45 = 5;
                v42 = *a4;
                cnprint::CNPrinter::Print(&v46, &v45, "Invalid doppler unc scale pointer - activity_state = %d, signal_environment = %hhu, band_as_int = %d", a4, a5, a6, a7, a8, *a5);
              }

LABEL_75:
              v18 = 1.0;
              goto LABEL_76;
            }

LABEL_49:
            v30 = 5;
            goto LABEL_60;
          }

          if (*a3)
          {
            goto LABEL_49;
          }
        }

        v50 = 12;
        v49 = 4;
        v43 = *a4;
        v44 = *a5;
        cnprint::CNPrinter::Print(&v50, &v49, "Unsupported GNSS Band type: GNSS uncertainty parameters not found for obs_type,%d,band,%d,se,%d,activity,%d", a4, a5, a6, a7, a8, *a2);
        goto LABEL_75;
      }

      if (a8 == 2)
      {
        v23 = qword_1EE054BC8;
        if (!qword_1EE054BC8)
        {
          operator new();
        }

        v24 = qword_1EE054BD0;
        if (!qword_1EE054BD0)
        {
          operator new();
        }

        goto LABEL_37;
      }

      if (a8 == 1)
      {
        v23 = qword_1EE054BB8;
        if (!qword_1EE054BB8)
        {
          operator new();
        }

        v24 = qword_1EE054BC0;
        if (!qword_1EE054BC0)
        {
          operator new();
        }

        goto LABEL_37;
      }

      if (a8)
      {
        goto LABEL_36;
      }
    }

    else
    {
      if (a8)
      {
        goto LABEL_4;
      }

      v28 = *a5;
      if (v28 <= 6 && ((1 << v28) & 0x4C) != 0)
      {
        v23 = qword_1EE054BD8;
        if (!qword_1EE054BD8)
        {
          operator new();
        }

        v24 = qword_1EE054BE0;
        if (!qword_1EE054BE0)
        {
          operator new();
        }

        goto LABEL_37;
      }
    }

    v23 = sub_1D0DFE57C();
    v24 = sub_1D0DFE6CC();
    goto LABEL_37;
  }

  if (!a8)
  {
    v25 = *a5;
    v20 = v25 > 6;
    v26 = (1 << v25) & 0x4C;
    if (v20 || v26 == 0)
    {
      v23 = qword_1EE054B78;
      if (!qword_1EE054B78)
      {
        operator new();
      }

      v24 = qword_1EE054B80;
      if (!qword_1EE054B80)
      {
        operator new();
      }
    }

    else
    {
      v23 = qword_1EE054B68;
      if (!qword_1EE054B68)
      {
        operator new();
      }

      v24 = qword_1EE054B70;
      if (!qword_1EE054B70)
      {
        operator new();
      }
    }

    goto LABEL_37;
  }

LABEL_4:
  v17 = 0;
  v18 = 0.0;
  return v17 | LODWORD(v18);
}

uint64_t sub_1D0DFE57C()
{
  result = qword_1EC5FB840;
  if (!qword_1EC5FB840)
  {
    operator new();
  }

  return result;
}

uint64_t sub_1D0DFE6CC()
{
  result = qword_1EC5FB848;
  if (!qword_1EC5FB848)
  {
    operator new();
  }

  return result;
}

uint64_t raven::GNSSUncertaintyScaling::EurekaGNSSUncertaintyWrapper::GetScaleFactorTableIndices(float a1, double a2, uint64_t a3, unint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = 0;
  v13 = 16;
  while (flt_1D0E9D6B8[v12] < a1)
  {
    ++v12;
    v13 -= 4;
    if (!v13)
    {
      v12 = 4;
      break;
    }
  }

  v14 = 0;
  v15 = 32;
  while (dbl_1D0E9D6C8[v14] < a2)
  {
    ++v14;
    v15 -= 8;
    if (!v15)
    {
      v14 = 4;
      break;
    }
  }

  v22 = v10;
  v23 = v11;
  v16 = v12 >= 5 || v14 >= 5;
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

uint64_t raven::UserSpeedChecker::Configure(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(a1 + 16) = a3;
  v8 = *(*a2 + 3304);
  v9 = *(*a2 + 3312);
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  if (v8 >= 0.0)
  {
    if (v9 >= 0.0)
    {
      v10 = 0;
      *(a1 + 8) = 1;
      return v10;
    }

    v13 = 12;
    v12 = 4;
    cnprint::CNPrinter::Print(&v13, &v12, "UserSpeedChecker: Cannot configure. Invalid max_dot_covariance_trace_dense_urban_: %.2lf", a4, a5, a6, a7, a8, SLOBYTE(v9));
  }

  else
  {
    v15 = 12;
    v14 = 4;
    cnprint::CNPrinter::Print(&v15, &v14, "UserSpeedChecker: Cannot configure. Invalid max_dot_covariance_trace_: %.2lf", a4, a5, a6, a7, a8, SLOBYTE(v8));
  }

  return 0xFFFFFFFFLL;
}

uint64_t raven::UserSpeedChecker::HandleEvent(raven::UserSpeedChecker *this, const raven::UserSpeedEvent *a2, raven::UserSpeedEvent *a3)
{
  if ((*(this + 8) & 1) == 0)
  {
    v70 = 12;
    v69 = 4;
    v18 = (*(*a2 + 16))(a2, a2, a3);
    v57 = v19 + v18;
    cnprint::CNPrinter::Print(&v70, &v69, "t,%.3lf,UserSpeedChecker, not configured", v20, v21, v22, v23, v24, SLOBYTE(v57));
    return 0xFFFFFFFFLL;
  }

  if ((*(a2 + 13) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || *(a2 + 13) <= 0.000000015)
  {
    if (!cnprint::CNPrinter::GetLogLevel(this))
    {
      v68 = 12;
      v67 = 0;
      v25 = (*(*a2 + 16))(a2);
      v58 = v26 + v25;
      cnprint::CNPrinter::Print(&v68, &v67, "t,%.3lf,UserSpeedChecker: Assistance rejected due to invalid user speed", v27, v28, v29, v30, v31, SLOBYTE(v58));
    }

    return 0xFFFFFFFFLL;
  }

  v4 = *(a2 + 14);
  v5 = v4 & 0x7FFFFFFFFFFFFFFFLL;
  v6 = (v4 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
  v7 = v4 < 0;
  v8 = v4 < 0 && ((v4 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
  if (!v7)
  {
    v6 = 0;
  }

  v9 = v5 <= 0x7FF0000000000000;
  v10 = v5 == 0x7FF0000000000000 || v6;
  if (!v9)
  {
    v10 = 1;
  }

  if ((v10 | v8) == 1)
  {
    if (!cnprint::CNPrinter::GetLogLevel(this))
    {
      v66 = 12;
      v65 = 0;
      v11 = (*(*a2 + 16))(a2);
      v56 = v12 + v11;
      cnprint::CNPrinter::Print(&v66, &v65, "t,%.3lf,UserSpeedChecker: Assistance rejected due to invalid user speed uncertainty", v13, v14, v15, v16, v17, SLOBYTE(v56));
    }

    return 0xFFFFFFFFLL;
  }

  v34 = *(a2 + 8);
  v35 = *(a2 + 24);
  *(a3 + 40) = *(a2 + 40);
  *(a3 + 24) = v35;
  *(a3 + 8) = v34;
  v36 = *(a2 + 56);
  v37 = *(a2 + 72);
  v38 = *(a2 + 88);
  *(a3 + 104) = *(a2 + 104);
  *(a3 + 88) = v38;
  *(a3 + 72) = v37;
  *(a3 + 56) = v36;
  if (*(this + 9) != 1)
  {
    return 0;
  }

  result = sub_1D0B9AF58((*(this + 2) + 16), &unk_1D0EA0A56);
  if (result)
  {
    v39 = result;
    if ((*(result + 1369) & 1) == 0)
    {
      if (!cnprint::CNPrinter::GetLogLevel(result))
      {
        v64 = 12;
        v63 = 0;
        v49 = (*(*a2 + 16))(a2);
        v60 = v50 + v49;
        cnprint::CNPrinter::Print(&v64, &v63, "t,%.3lf,UserSpeedChecker: Assistance rejected due to invalid DOT", v51, v52, v53, v54, v55, SLOBYTE(v60));
      }

      return 0xFFFFFFFFLL;
    }

    v40 = *(this + 2);
    v41 = *(this + 3);
    if (*(v40 + 664) == 1)
    {
      result = sub_1D0DFEDD0((v40 + 664));
      if (*(result + 104) - 3 <= 1)
      {
        v41 = *(this + 4);
      }
    }

    if (v39[180] + v39[183] + v39[185] > v41)
    {
      if (!cnprint::CNPrinter::GetLogLevel(result))
      {
        v62 = 12;
        v61 = 0;
        v42 = (*(*a2 + 16))(a2);
        v59 = v43 + v42;
        cnprint::CNPrinter::Print(&v62, &v61, "t,%.3lf,UserSpeedChecker: Assistance rejected due to large DOT covariance trace: %.3f exceeding threshold of: %.3f", v44, v45, v46, v47, v48, SLOBYTE(v59));
      }

      return 0xFFFFFFFFLL;
    }

    return 0;
  }

  return result;
}

_BYTE *sub_1D0DFEDD0(_BYTE *a1)
{
  if (*a1 != 1)
  {
    std::logic_error::logic_error(&v2, "Attempted to access the value of an uninitialized optional object.");
    v2.__vftable = &unk_1F4CE0128;
    sub_1D0D4D114(&v2);
  }

  return a1 + 8;
}

uint64_t raven::RavenMovingStateEstimatorActiveObject::Configure(cnframework::ActiveObjectBase *a1, uint64_t a2)
{
  if (*(a1 + 224) == 1)
  {
    LOWORD(v32) = 12;
    LOBYTE(v31) = 2;
    (*(*a1 + 16))(__p, a1);
    if (v34 >= 0)
    {
      v9 = __p;
    }

    else
    {
      LOBYTE(v9) = __p[0];
    }

    cnprint::CNPrinter::Print(&v32, &v31, "Warning: %s configured more than once.", v4, v5, v6, v7, v8, v9);
    if (v34 < 0)
    {
      operator delete(__p[0]);
    }
  }

  *(a1 + 224) = 0;
  if (!*a2 || (*(*a2 + 33) & 1) == 0)
  {
    LOWORD(v32) = 12;
    LOBYTE(v31) = 4;
    (*(*a1 + 16))(__p, a1);
    if (v34 >= 0)
    {
      v21 = __p;
    }

    else
    {
      LOBYTE(v21) = __p[0];
    }

    cnprint::CNPrinter::Print(&v32, &v31, "%s could not be configured.", v16, v17, v18, v19, v20, v21);
    goto LABEL_18;
  }

  v32 = *a2;
  if (raven::RavenMovingStateEstimator::Configure(a1 + 280, &v32))
  {
    v31 = 12;
    v30 = 4;
    (*(*a1 + 16))(__p, a1);
    if (v34 >= 0)
    {
      v15 = __p;
    }

    else
    {
      LOBYTE(v15) = __p[0];
    }

    cnprint::CNPrinter::Print(&v31, &v30, "%s could not configure RavenMovingStateEstimator.", v10, v11, v12, v13, v14, v15);
LABEL_18:
    if (v34 < 0)
    {
      operator delete(__p[0]);
    }

    return 0xFFFFFFFFLL;
  }

  cnframework::ActiveObjectBase::SetEventQueueDelay(a1, 0.0);
  *(a1 + 224) = 1;
  v23 = (*(*a1 + 40))(a1);
  if (cnprint::CNPrinter::GetLogLevel(v23) <= 1)
  {
    v31 = 12;
    v30 = 1;
    (*(*a1 + 16))(__p, a1);
    if (v34 >= 0)
    {
      v29 = __p;
    }

    else
    {
      LOBYTE(v29) = __p[0];
    }

    cnprint::CNPrinter::Print(&v31, &v30, "%s configured successfully.", v24, v25, v26, v27, v28, v29);
    if (v34 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return 0;
}

void sub_1D0DFF0FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void raven::RavenMovingStateEstimatorActiveObject::Reset(raven::RavenMovingStateEstimatorActiveObject *this)
{
  raven::RavenMovingStateEstimator::Reset(this + 280);
  *(this + 128) = 0;
  *(this + 17) = 0;
  *(this + 18) = 0x7FF8000000000000;
  *(this + 19) = 0;
  *(this + 105) = 0;
  *(this + 14) = 0;
  *(this + 15) = 0x7FF8000000000000;

  cnframework::ActiveObjectBase::ResetEventQueue(this);
}

void sub_1D0DFF1A8(void **a1)
{
  sub_1D0DC6F5C(a1);

  JUMPOUT(0x1D387ECA0);
}

void raven::RavenNLOSEngine::RavenNLOSEngine(raven::RavenNLOSEngine *this)
{
  *this = 0;
  *(this + 8) = 0;
  operator new();
}

void sub_1D0DFF308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  a10 = (v10 + 3256);
  sub_1D0E09954(&a10);
  sub_1D0E099E0(v11);
  v13 = *(v10 + 32);
  *(v10 + 32) = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  v14 = *(v10 + 24);
  if (v14)
  {
    sub_1D0B7CAB8(v14);
  }

  _Unwind_Resume(a1);
}

double raven::RavenNLOSEngine::Configure(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 8) == 1)
  {
    v43 = 12;
    v42 = 3;
    cnprint::CNPrinter::Print(&v43, &v42, "#nlos,Warning: RavenNLOSEngine configured more than once.", a4, a5, a6, a7, a8, v41);
  }

  *(a1 + 8) = 0;
  v10 = *a2;
  if (!*a2 || (*(v10 + 33) & 1) == 0)
  {
    v43 = 12;
    v42 = 4;
    v18 = "#nlos,NLOS engine could not be configured: invalid RavenParameters";
LABEL_21:
    cnprint::CNPrinter::Print(&v43, &v42, v18, a4, a5, a6, a7, a8, v41);
    return result;
  }

  v11 = *(v10 + 3520);
  if ((v11 <= -1 || ((v11 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (v11 - 1) >= 0xFFFFFFFFFFFFFLL)
  {
    v43 = 12;
    v42 = 4;
    cnprint::CNPrinter::Print(&v43, &v42, "#nlos,NLOS engine could not be configured: gnss_ray_tracing_building_data_query_radius_m_ is invalid: %.1lf", a4, a5, a6, a7, a8, v11);
    return result;
  }

  v14 = *(v10 + 3528);
  v15 = (v14 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
  v16 = ((v14 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
  if (v14 >= 0)
  {
    v16 = 0;
    v15 = 0;
  }

  if ((v14 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000)
  {
    v15 = 1;
  }

  if ((v14 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
  {
    v15 = 1;
  }

  if (v15 || v16)
  {
    v43 = 12;
    v42 = 4;
    cnprint::CNPrinter::Print(&v43, &v42, "#nlos,NLOS engine could not be configured: gnss_ray_tracing_distance_beyond_query_radius_to_keep_tiles_m_ is invalid: %.1lf", a4, a5, a6, a7, a8, v14);
    return result;
  }

  v19 = *(v10 + 3544);
  if ((*&v19 <= -1 || ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (*&v19 - 1) >= 0xFFFFFFFFFFFFFLL)
  {
    v43 = 12;
    v42 = 4;
    cnprint::CNPrinter::Print(&v43, &v42, "#nlos,NLOS engine could not be configured: gnss_ray_tracing_max_allowable_distance_of_facet_from_point_m_ is invalid: %.1lf", a4, a5, a6, a7, a8, SLOBYTE(v19));
    return result;
  }

  v22 = *(v10 + 3552);
  if ((v22 <= -1 || ((v22 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (v22 - 1) >= 0xFFFFFFFFFFFFFLL)
  {
    v43 = 12;
    v42 = 4;
    cnprint::CNPrinter::Print(&v43, &v42, "#nlos,NLOS engine could not be configured: gnss_ray_tracing_max_allowable_matrix_condition_number_ is invalid: %.1lf", a4, a5, a6, a7, a8, v22);
    return result;
  }

  v25 = *(v10 + 3560);
  if (v25 >= 6)
  {
    v43 = 12;
    v42 = 4;
    cnprint::CNPrinter::Print(&v43, &v42, "#nlos,NLOS engine could not be configured: gnss_ray_tracing_max_reflections_ exceeds maximum allowed value: %llu vs %llu", a4, a5, a6, a7, a8, v25);
    return result;
  }

  v26 = *(v10 + 3576);
  if ((*&v26 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || v26 < 0.0 || v26 > 360.0)
  {
    v43 = 12;
    v42 = 4;
    cnprint::CNPrinter::Print(&v43, &v42, "#nlos,NLOS engine could not be configured: gnss_ray_tracing_azimuth_resolution_for_approximate_signal_path_search_deg_,%.2lf", a4, a5, a6, a7, a8, SLOBYTE(v26));
    return result;
  }

  v27 = *(v10 + 3584);
  if ((v27 <= -1 || ((v27 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (v27 - 1) >= 0xFFFFFFFFFFFFFLL)
  {
    v43 = 12;
    v42 = 4;
    cnprint::CNPrinter::Print(&v43, &v42, "#nlos,NLOS engine could not be configured: gnss_ray_tracing_max_reflection_point_shift_for_refined_path_convergence_m_,%.2lf", a4, a5, a6, a7, a8, v27);
    return result;
  }

  if (!*(v10 + 3592))
  {
    v43 = 12;
    v42 = 4;
    v18 = "#nlos,NLOS engine could not be configured: gnss_ray_tracing_max_iterations_to_converge_refined_path_ is zero";
    goto LABEL_21;
  }

  v30 = *(v10 + 3600);
  v31 = (v30 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
  v32 = v30 < 0 && ((v30 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
  if (v30 >= 0)
  {
    v31 = 0;
  }

  v33 = (v30 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000 || v31;
  if ((v30 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
  {
    v33 = 1;
  }

  if ((v33 | v32) == 1)
  {
    v43 = 12;
    v42 = 4;
    cnprint::CNPrinter::Print(&v43, &v42, "#nlos,NLOS engine could not be configured: gnss_ray_tracing_min_radius_for_candidate_point_search_m_ is invalid: %.1lf", a4, a5, a6, a7, a8, v30);
  }

  else
  {
    v34 = *(v10 + 3608);
    if ((*&v34 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || v34 < 1.0)
    {
      v43 = 12;
      v42 = 4;
      cnprint::CNPrinter::Print(&v43, &v42, "#nlos,NLOS engine could not be configured: gnss_ray_tracing_error_ellipse_scale_factor_for_candidate_point_search_ is invalid: %.1lf", a4, a5, a6, a7, a8, SLOBYTE(v34));
    }

    else
    {
      v35 = *(v10 + 3616);
      if ((v35 <= -1 || ((v35 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (v35 - 1) >= 0xFFFFFFFFFFFFFLL)
      {
        v43 = 12;
        v42 = 4;
        cnprint::CNPrinter::Print(&v43, &v42, "#nlos,NLOS engine could not be configured: gnss_ray_tracing_candidate_point_search_step_m_ is invalid: %.1lf", a4, a5, a6, a7, a8, v35);
      }

      else
      {
        v38 = *(v10 + 3632);
        if ((*&v38 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || v38 < 0.0 || v38 > 1.0)
        {
          v43 = 12;
          v42 = 4;
          cnprint::CNPrinter::Print(&v43, &v42, "#nlos,NLOS engine could not be configured: gnss_ray_tracing_max_probability_line_of_sight_ is invalid: %.1lf", a4, a5, a6, a7, a8, SLOBYTE(v38));
        }

        else
        {
          v39 = *(v10 + 3640);
          if ((*&v39 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || v39 < 0.0 || v39 > 90.0)
          {
            v43 = 12;
            v42 = 4;
            cnprint::CNPrinter::Print(&v43, &v42, "#nlos,NLOS engine could not be configured: gnss_ray_tracing_max_satellite_elevation_deg_ is invalid: %.1lf", a4, a5, a6, a7, a8, SLOBYTE(v39));
          }

          else
          {
            v40 = *(v10 + 3648);
            if ((*&v40 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || v40 < 0.0 || v40 > 1.0)
            {
              v43 = 12;
              v42 = 4;
              cnprint::CNPrinter::Print(&v43, &v42, "#nlos,NLOS engine could not be configured: gnss_ray_tracing_min_occurrence_rate_of_most_common_sequence_ is invalid: %.1lf", a4, a5, a6, a7, a8, SLOBYTE(v40));
            }

            else
            {
              result = v19 * v19;
              *(a1 + 3376) = result;
              *(a1 + 3384) = v25;
              *a1 = v10;
              *(a1 + 8) = 1;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t raven::RavenNLOSEngine::CopyBuildingSectionData(uint64_t a1, uint64_t *a2, uint64_t ***a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a3;
  if (!*a3)
  {
    LOWORD(v40) = 12;
    LOBYTE(v43[0]) = 4;
    v30 = "#nlos,null destination pointer";
LABEL_38:
    cnprint::CNPrinter::Print(&v40, v43, v30, a4, a5, a6, a7, a8, v32);
    return 0;
  }

  v11 = a2[1];
  v12 = v11 - *a2;
  if (v11 == *a2)
  {
    LOWORD(v40) = 12;
    LOBYTE(v43[0]) = 4;
    v30 = "#nlos,input building section container is empty";
    goto LABEL_38;
  }

  if (v12 != 80)
  {
    sub_1D0D4656C(v9 + 2, 0xCCCCCCCCCCCCCCCDLL * (v12 >> 4) + v9[3] - v9[2]);
    v9 = *a3;
  }

  v13 = v9[12];
  v38 = v13;
  if (!v13)
  {
    v38 = v9[11];
  }

  v14 = *a2;
  v15 = a2[1];
  if (*a2 != v15)
  {
    v39 = 0;
    while (1)
    {
      v16 = *(v14 + 8) - *v14;
      v17 = v16 >> 4;
      ++v39;
      if (v13)
      {
        break;
      }

      if (fabs(*(v14 + 32)) >= 2.22044605e-16)
      {
        if (v17 >= 2)
        {
          v28 = *(v14 + 24);
          goto LABEL_35;
        }

LABEL_30:
        LOWORD(v40) = 12;
        LOBYTE(v43[0]) = 4;
        v32 = v16 >> 4;
        v22 = "#nlos,section has fewer than two footprint coordinates,%u, skipped.";
        goto LABEL_31;
      }

      if (cnprint::CNPrinter::GetLogLevel(v9) <= 1)
      {
        LOWORD(v40) = 12;
        LOBYTE(v43[0]) = 1;
        v22 = "#nlos, skipped V1 building's section with zero height above ground.";
LABEL_31:
        cnprint::CNPrinter::Print(&v40, v43, v22, a4, a5, a6, a7, a8, v32);
      }

LABEL_32:
      v40 = v38;
      v41 = 1;
      v42 = v39;
      v43[0] = &v40;
      v9 = sub_1D0E0CFF8(a1 + 3440, &v40);
      v9[6] = 0;
      v14 += 80;
      if (v14 == v15)
      {
        return 0;
      }
    }

    v18 = *(v14 + 72);
    if (*(v14 + 40))
    {
      v19 = *(v14 + 64);
      if (v18 <= v19 || v19 < *(v14 + 56) || *(v14 + 48) > v19)
      {
LABEL_25:
        if (cnprint::CNPrinter::GetLogLevel(v9) <= 1)
        {
          LOWORD(v40) = 12;
          LOBYTE(v43[0]) = 1;
          v35 = *(v14 + 64);
          v36 = *(v14 + 72);
          v34 = *(v14 + 48);
          v33 = *(v14 + 40);
          cnprint::CNPrinter::Print(&v40, v43, "#nlos, skipped V2 building's section with zero top height, building_id,%llu, has_terrain_elv,%d, terrain_elv,%5.2f, minBaseHght,%5.2f, maxBaseHght,%5.2f, topHght,%5.2f", v23, v24, v25, v26, v27, v38);
        }

        goto LABEL_32;
      }

      if (v17 >= 2)
      {
        goto LABEL_35;
      }
    }

    else
    {
      if (fabs(v18) < 2.22044605e-16)
      {
        goto LABEL_25;
      }

      if (v17 >= 2)
      {
        v29 = *(v14 + 64);
LABEL_35:
        operator new();
      }
    }

    goto LABEL_30;
  }

  return 0;
}

void sub_1D0E00134(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, int a27, std::__shared_weak_count *a28, uint64_t a29)
{
  v32 = *(v30 - 176);
  if (v32)
  {
    (*(*v32 + 8))(v32);
  }

  if (v29)
  {
    sub_1D0B7CAB8(v29);
    if (a27)
    {
LABEL_5:
      sub_1D0B7CAB8(a28);
      if (!a29)
      {
        goto LABEL_10;
      }

LABEL_9:
      (*(*a29 + 8))(a29);
LABEL_10:
      _Unwind_Resume(a1);
    }
  }

  else if (a27)
  {
    goto LABEL_5;
  }

  if (!a29)
  {
    goto LABEL_10;
  }

  goto LABEL_9;
}

void sub_1D0E002F0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10)
{
  v14 = *a2;
  v15 = *(a2 + 8);
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v16 = *a3;
  v17 = *(a3 + 8);
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = a9 + a10;
  if (v14)
  {
    v19 = v16 == 0;
  }

  else
  {
    v19 = 1;
  }

  if (v19)
  {
    v38 = 4;
    cnprint::CNPrinter::Print(v37, &v38, "#geo,extruded quadrilateral facet initialized with one or more null pointers", a4, a5, a6, a7, a8, 1);
    goto LABEL_21;
  }

  v20 = COERCE_UNSIGNED_INT64(fabs(a9 + a10)) < 0x7FF0000000000000;
  if ((*&a9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || !v20)
  {
    v38 = 4;
    cnprint::CNPrinter::Print(v37, &v38, "#geo,extruded quadrilateral facet initialized with one or more non-finite height values", a4, a5, a6, a7, a8, 1);
    goto LABEL_21;
  }

  if (v18 - a9 <= 0.0)
  {
    v38 = 4;
    cnprint::CNPrinter::Print(v37, &v38, "#geo,extruded quadrilateral facet initialized with non-positive facet height", a4, a5, a6, a7, a8, 1);
    goto LABEL_21;
  }

  v21 = *v14;
  if ((*v14 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (v22 = v14[1], (*&v22 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL) || (v23 = *v16, (*v16 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL) || (v24 = v16[1], (*&v24 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000))
  {
    v38 = 4;
    cnprint::CNPrinter::Print(v37, &v38, "#geo,extruded quadrilateral facet initialized with one or more non-finite footprint coordinates", a4, a5, a6, a7, a8, 1);
    goto LABEL_21;
  }

  v32 = vabdd_f64(v24, v22);
  if (vabdd_f64(v23, v21) < 2.22044605e-16 && v32 < 2.22044605e-16)
  {
    v38 = 4;
    cnprint::CNPrinter::Print(v37, &v38, "#geo,extruded quadrilateral facet initialized with duplicate footprint coordinates", a4, a5, a6, a7, a8, 1);
LABEL_21:
    v25 = 0;
    v26 = 0.0;
    v27 = 0.0;
    if (!v17)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v34 = v23 - v21;
  v35 = v24 - v22;
  v36 = sqrt(v35 * v35 + v34 * v34);
  v27 = v35 / v36;
  v26 = -v34 / v36;
  v25 = 1;
  if (v17)
  {
LABEL_22:
    sub_1D0B7CAB8(v17);
  }

LABEL_23:
  if (v15)
  {
    sub_1D0B7CAB8(v15);
  }

  if (v25)
  {
    v29 = *a2;
    v28 = *(a2 + 8);
    if (v28)
    {
      atomic_fetch_add_explicit((v28 + 8), 1uLL, memory_order_relaxed);
    }

    v31 = *a3;
    v30 = *(a3 + 8);
    if (v30)
    {
      atomic_fetch_add_explicit((v30 + 8), 1uLL, memory_order_relaxed);
    }

    v37[0] = &unk_1F4CEC8A8;
    v37[1] = &unk_1F4CEC940;
    v37[2] = v29;
    v37[3] = v28;
    v37[4] = v31;
    v37[5] = v30;
    *&v37[6] = a9;
    *&v37[7] = v18;
    *&v37[8] = v27;
    *&v37[9] = v26;
    v37[10] = 0;
    operator new();
  }

  *a1 = 0;
}

void sub_1D0E0069C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  if (!*a2)
  {
    LOWORD(v34) = 1;
    v40 = 4;
    v17 = "#geo,trying to add nullptr to composite building data object";
LABEL_28:
    cnprint::CNPrinter::Print(&v34, &v40, v17, a4, a5, a6, a7, a8, v33);
    return;
  }

  *&v12 = a1 + 16;
  v11 = *(a1 + 16);
  v14 = *(a1 + 24);
  v13 = *(a1 + 32);
  v15 = v13 - v11;
  if (v14 >= v13)
  {
    v18 = v14 - v11;
    v19 = (v14 - v11) >> 3;
    v20 = v19 + 1;
    if ((v19 + 1) >> 61)
    {
      sub_1D0C5663C();
    }

    if (v15 >> 2 > v20)
    {
      v20 = v15 >> 2;
    }

    if (v15 >= 0x7FFFFFFFFFFFFFF8)
    {
      v21 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v21 = v20;
    }

    v38 = v12;
    if (v21)
    {
      sub_1D0D46998(v21);
    }

    v22 = v19;
    v23 = (8 * v19);
    *a2 = 0;
    v24 = &v23[-v22];
    *v23 = v8;
    v16 = v23 + 1;
    memcpy(v24, v11, v18);
    v25 = *(a1 + 16);
    *(a1 + 16) = v24;
    *(a1 + 24) = v16;
    v26 = *(a1 + 32);
    *(a1 + 32) = 0;
    v36 = v25;
    v37 = v26;
    v34 = v25;
    v35 = v25;
    sub_1D0D469E0(&v34);
  }

  else
  {
    *a2 = 0;
    *v14 = v8;
    v16 = v14 + 8;
  }

  *(a1 + 24) = v16;
  (*(**(v16 - 1) + 24))(&v34);
  v27 = *(a1 + 64);
  if (v27 >= v37)
  {
    v27 = v37;
  }

  *(a1 + 64) = v27;
  v28 = *(a1 + 72);
  if (v28 >= v38)
  {
    v28 = v38;
  }

  *(a1 + 72) = v28;
  v29 = *(a1 + 80);
  if (v29 >= v39)
  {
    v29 = v39;
  }

  *(a1 + 80) = v29;
  v30 = v34;
  v31 = v35;
  if (*(a1 + 40) > v34)
  {
    v30 = *(a1 + 40);
  }

  if (*(a1 + 48) > v35)
  {
    v31 = *(a1 + 48);
  }

  *(a1 + 40) = v30;
  *(a1 + 48) = v31;
  v32 = *(a1 + 56);
  if (v32 <= v36)
  {
    v32 = v36;
  }

  *(a1 + 56) = v32;
  if (v15 >> 3 < ((*(a1 + 32) - *(a1 + 16)) >> 3))
  {
    LOWORD(v34) = 1;
    v40 = 4;
    v33 = v15 >> 3;
    v17 = "#geo,composite building capacity expanded unexpectedly,%ul,%ul";
    goto LABEL_28;
  }
}

__n128 raven::RavenNLOSEngine::HandleEvent(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    if (*(a1 + 456) == 1)
    {
      v2 = *(a2 + 8);
      v3 = *(a2 + 24);
      v4 = *(a2 + 56);
      *(a1 + 304) = *(a2 + 40);
      *(a1 + 320) = v4;
      *(a1 + 272) = v2;
      *(a1 + 288) = v3;
      v5 = *(a2 + 72);
      v6 = *(a2 + 88);
      v7 = *(a2 + 120);
      *(a1 + 368) = *(a2 + 104);
      *(a1 + 384) = v7;
      *(a1 + 336) = v5;
      *(a1 + 352) = v6;
      result = *(a2 + 136);
      v9 = *(a2 + 152);
      v10 = *(a2 + 168);
      *(a1 + 448) = *(a2 + 184);
      *(a1 + 416) = v9;
      *(a1 + 432) = v10;
      *(a1 + 400) = result;
    }

    else
    {
      *(a1 + 264) = &unk_1F4CEF688;
      v11 = *(a2 + 8);
      v12 = *(a2 + 24);
      v13 = *(a2 + 56);
      *(a1 + 304) = *(a2 + 40);
      *(a1 + 320) = v13;
      *(a1 + 272) = v11;
      *(a1 + 288) = v12;
      v14 = *(a2 + 72);
      v15 = *(a2 + 88);
      v16 = *(a2 + 120);
      *(a1 + 368) = *(a2 + 104);
      *(a1 + 384) = v16;
      *(a1 + 336) = v14;
      *(a1 + 352) = v15;
      result = *(a2 + 136);
      v17 = *(a2 + 152);
      v18 = *(a2 + 168);
      *(a1 + 448) = *(a2 + 184);
      *(a1 + 416) = v17;
      *(a1 + 432) = v18;
      *(a1 + 400) = result;
      *(a1 + 456) = 1;
    }
  }

  return result;
}

{
  if (*(a1 + 8) == 1)
  {
    if (*(a1 + 3240) == 1)
    {
      v2 = *(a2 + 8);
      v3 = *(a2 + 24);
      *(a1 + 3168) = *(a2 + 40);
      *(a1 + 3152) = v3;
      *(a1 + 3136) = v2;
      result = *(a2 + 56);
      v5 = *(a2 + 72);
      v6 = *(a2 + 88);
      *(a1 + 3232) = *(a2 + 104);
      *(a1 + 3216) = v6;
      *(a1 + 3200) = v5;
      *(a1 + 3184) = result;
    }

    else
    {
      *(a1 + 3128) = &unk_1F4CEF5C8;
      v7 = *(a2 + 8);
      v8 = *(a2 + 24);
      *(a1 + 3168) = *(a2 + 40);
      *(a1 + 3152) = v8;
      *(a1 + 3136) = v7;
      result = *(a2 + 56);
      v9 = *(a2 + 72);
      v10 = *(a2 + 88);
      *(a1 + 3232) = *(a2 + 104);
      *(a1 + 3216) = v10;
      *(a1 + 3200) = v9;
      *(a1 + 3184) = result;
      *(a1 + 3240) = 1;
    }
  }

  return result;
}

void raven::RavenNLOSEngine::HandleEvent(raven::RavenNLOSEngine *this, const raven::GEOMapBuildingDataEvent *a2, double *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(this + 8) != 1)
  {
    return;
  }

  v9 = *(a2 + 13) == *(a2 + 14) && *(a2 + 20) == 0;
  if (v9)
  {
    LOWORD(v139) = 12;
    LOBYTE(v131) = 4;
    v39 = (*(*a2 + 16))(a2);
    v118 = v40 + v39;
    cnprint::CNPrinter::Print(&v139, &v131, "#nlos,time,%.3lf,building event has no information to update building data hierarchy", v41, v42, v43, v44, v45, SLOBYTE(v118));
    return;
  }

  if (*(this + 64))
  {
    goto LABEL_7;
  }

  v46 = *(a2 + 16);
  v47 = *(a2 + 17);
  if ((*&v46 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v47 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    LOWORD(v139) = 1;
    LOBYTE(v131) = 4;
    cnprint::CNPrinter::Print(&v139, &v131, "#geo,invalid geodetic LLA origin for building coordinate transform,%.3lf,%.3lf,%.3lf", a4, a5, a6, a7, a8, SLOBYTE(v46));
    goto LABEL_67;
  }

  if (v47 < -3.14159265)
  {
    LOWORD(v139) = 1;
    LOBYTE(v131) = 4;
    v119 = v47 * 57.2957795;
    cnprint::CNPrinter::Print(&v139, &v131, "#geo,invalid geodetic longitude,lon_deg,%.9lf", a4, a5, a6, a7, a8, SLOBYTE(v119));
LABEL_67:
    LOWORD(v139) = 12;
    LOBYTE(v131) = 4;
    v60 = (*(*a2 + 16))(a2);
    v120 = v61 + v60;
    cnprint::CNPrinter::Print(&v139, &v131, "#nlos,time,%.3lf,cannot set the building coordinate transform's origin from query LLA, building data ignored", v62, v63, v64, v65, v66, SLOBYTE(v120));
    return;
  }

  if (fabs(v46) > 1.3962634)
  {
    LOWORD(v139) = 1;
    LOBYTE(v131) = 4;
    v121 = v46 * 57.2957795;
    cnprint::CNPrinter::Print(&v139, &v131, "#geo,origin too close to poles,lat,%.9lf", a4, a5, a6, a7, a8, SLOBYTE(v121));
    goto LABEL_67;
  }

  *(this + 5) = v46;
  *(this + 6) = v47;
  *(this + 7) = 0;
  *(this + 64) = 1;
  if (v47 >= 6.28318531)
  {
    do
    {
      v47 = v47 + -6.28318531;
    }

    while (v47 >= 6.28318531);
    *(this + 6) = v47;
  }

  if (cnnavigation::GeodeticLatLonIncrementsToNorthEastMetersPerRadian((this + 208), v46, 0.0, this + 27, a3))
  {
    LOWORD(v139) = 1;
    LOBYTE(v131) = 4;
    v122 = *(this + 5) * 57.2957795;
    v126 = *(this + 7);
    cnprint::CNPrinter::Print(&v139, &v131, "#geo,error converting delta lat/lon to delta N/E,lat,%.9lf,hae,%.3f", v77, v78, v79, v80, v81, SLOBYTE(v122));
    *(this + 13) = vdupq_n_s64(0x7FF8000000000000uLL);
    if (*(this + 64) == 1)
    {
      *(this + 64) = 0;
    }

    if (*(this + 200) != 1)
    {
      goto LABEL_67;
    }

    goto LABEL_119;
  }

  if ((*(this + 64) & 1) == 0)
  {
    sub_1D0C42F28();
  }

  sub_1D0BFE48C(&v139, *(this + 5), *(this + 6));
  if (*(this + 200) == 1)
  {
    *(this + 80) = v140;
    sub_1D0B894B0(this + 88, v141);
  }

  else
  {
    *(this + 9) = &unk_1F4CD5D18;
    *(this + 80) = v140;
    sub_1D0BE0DE8(this + 88, v141);
    *(this + 9) = &unk_1F4CD5D50;
    *(this + 200) = 1;
  }

  if ((*(this + 80) & 1) == 0)
  {
    LOWORD(v139) = 1;
    LOBYTE(v131) = 4;
    v125 = *(this + 5) * 57.2957795;
    v127 = *(this + 6) * 57.2957795;
    cnprint::CNPrinter::Print(&v139, &v131, "#geo,error computing ECEF to ENU Jacobian,lat,%.3lf,lon,%.3f", v110, v111, v112, v113, v114, SLOBYTE(v125));
    *(this + 13) = vdupq_n_s64(0x7FF8000000000000uLL);
    if (*(this + 64) == 1)
    {
      *(this + 64) = 0;
    }

    if (*(this + 200) != 1)
    {
      goto LABEL_67;
    }

LABEL_119:
    *(this + 9) = &unk_1F4CD5D18;
    *(this + 11) = &unk_1F4CD5E28;
    *(this + 200) = 0;
    goto LABEL_67;
  }

LABEL_7:
  v11 = *(this + 4);
  if (!v11)
  {
    operator new();
  }

  v12 = 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 14) - *(a2 + 13)) >> 3);
  v13 = *(a2 + 20);
  v14 = v12 > v13;
  v15 = v12 - v13;
  if (v14)
  {
    sub_1D0D4656C((v11 + 16), v15 + ((*(v11 + 24) - *(v11 + 16)) >> 3));
    v11 = *(this + 4);
    v13 = *(a2 + 20);
  }

  v17 = *(v11 + 16);
  v16 = *(v11 + 24);
  v131 = &unk_1F4CEC558;
  LOBYTE(v132) = 0;
  v133 = 0;
  LOBYTE(v134) = 0;
  v135 = 0;
  v137 = 0;
  v138 = 0;
  v136 = &v137;
  if (v16 == v17 || !v13)
  {
    goto LABEL_100;
  }

  v139 = &unk_1F4CEC730;
  v140 = v11;
  memset(v141, 0, sizeof(v141));
  v142 = 0;
  v143 = 1;
  sub_1D0E0B780(&v139);
  v23 = (this + 3440);
  v24 = (a2 + 152);
  v25 = (this + 3448);
  while (v142)
  {
    (*(**&v141[0] + 16))(*&v141[0], &v131);
    if (v133 == 1)
    {
      v26 = *v24;
      if (*v24)
      {
        v27 = (a2 + 152);
        do
        {
          v28 = *(v26 + 4);
          v29 = v28 >= v132;
          v30 = v28 < v132;
          if (v29)
          {
            v27 = v26;
          }

          v26 = *&v26[8 * v30];
        }

        while (v26);
        if (v27 != v24 && v132 >= v27[4])
        {
          if (v135)
          {
            v31 = v134;
          }

          else
          {
            v31 = v132;
          }

          v144 = v31;
          v145 = 65537;
          v32 = sub_1D0D4741C(this + 3440, &v144);
          if (v25 != v32)
          {
            do
            {
              if (v32[4] != v31)
              {
                break;
              }

              v33 = v32[1];
              v34 = v32;
              if (v33)
              {
                do
                {
                  v35 = v33;
                  v33 = *v33;
                }

                while (v33);
              }

              else
              {
                do
                {
                  v35 = v34[2];
                  v9 = *v35 == v34;
                  v34 = v35;
                }

                while (!v9);
              }

              if (*v23 == v32)
              {
                *v23 = v35;
              }

              --*(this + 432);
              sub_1D0D4B3C4(*(this + 431), v32);
              operator delete(v32);
              v32 = v35;
            }

            while (v25 != v35);
          }

          v36 = v137;
          if (!v137)
          {
LABEL_44:
            operator new();
          }

          while (1)
          {
            while (1)
            {
              v37 = v36;
              v38 = v36[4];
              if (v38 <= *&v141[0])
              {
                break;
              }

              v36 = *v37;
              if (!*v37)
              {
                goto LABEL_44;
              }
            }

            if (v38 >= *&v141[0])
            {
              break;
            }

            v36 = v37[1];
            if (!v36)
            {
              goto LABEL_44;
            }
          }
        }
      }
    }

    sub_1D0E0B884(&v139);
  }

  v49 = *(v11 + 16);
  v48 = *(v11 + 24);
  if (!v138)
  {
    v50 = *(v11 + 24);
    goto LABEL_95;
  }

  if (v49 == v48)
  {
    LOWORD(v144) = 1;
    LOBYTE(v130) = 4;
    cnprint::CNPrinter::Print(&v144, &v130, "#geo,existing building data hierarchy is empty while container of hashes to be removed is not empty", v18, v19, v20, v21, v22, v117);
    v50 = *(v11 + 24);
    goto LABEL_95;
  }

  v50 = *(v11 + 24);
  v51 = *(v11 + 16);
  while (1)
  {
    v52 = v137;
    if (!v137)
    {
      break;
    }

    v53 = *v51;
    v54 = &v137;
    do
    {
      v55 = v52[4];
      v29 = v55 >= v53;
      v56 = v55 < v53;
      if (v29)
      {
        v54 = v52;
      }

      v52 = v52[v56];
    }

    while (v52);
    if (v54 == &v137 || v53 < v54[4])
    {
      break;
    }

    *v51 = *(v50 - 1);
    *(v50 - 1) = v53;
    v57 = *(v11 + 24);
    v59 = *(v57 - 8);
    v50 = (v57 - 8);
    v58 = v59;
    *v50 = 0;
    if (v59)
    {
      (*(*v58 + 8))(v58);
    }

    *(v11 + 24) = v50;
    v51 = *(v11 + 16);
    if (v51 == v50)
    {
      goto LABEL_95;
    }
  }

  v67 = v51 + 1;
  if (v50 == v51 + 1)
  {
    goto LABEL_95;
  }

  while (1)
  {
    v68 = v137;
    if (!v137)
    {
      goto LABEL_84;
    }

    v69 = *v67;
    v70 = &v137;
    do
    {
      v71 = v68[4];
      v29 = v71 >= v69;
      v72 = v71 < v69;
      if (v29)
      {
        v70 = v68;
      }

      v68 = v68[v72];
    }

    while (v68);
    if (v70 == &v137 || v69 < v70[4])
    {
      goto LABEL_84;
    }

    v73 = v50 - 1;
    if (v67 == v50 - 1)
    {
      break;
    }

    *v67 = *v73;
    *v73 = v69;
    v74 = *(v11 + 24);
    v76 = *(v74 - 8);
    v50 = (v74 - 8);
    v75 = v76;
    *v50 = 0;
    if (v76)
    {
      (*(*v75 + 8))(v75);
    }

    *(v11 + 24) = v50;
    --v67;
LABEL_84:
    if (++v67 == v50)
    {
      goto LABEL_95;
    }
  }

  v116 = *--v50;
  v115 = v116;
  *v50 = 0;
  if (v116)
  {
    (*(*v115 + 8))(v115);
  }

  *(v11 + 24) = v50;
LABEL_95:
  v82 = ((v50 - *(v11 + 16)) >> 3) - ((v48 - v49) >> 3) + v138;
  if (v82)
  {
    LOWORD(v144) = 12;
    LOBYTE(v130) = 4;
    cnprint::CNPrinter::Print(&v144, &v130, "#nlos,%d,ghost building IDs sent in GeoMapsDataEvent for removal", v18, v19, v20, v21, v22, v82);
  }

  if (v133 == 1)
  {
    v133 = 0;
  }

  v139 = &unk_1F4CEC730;
  sub_1D0E0BA98(v141 + 8);
LABEL_100:
  v130 = 0;
  v83 = *(a2 + 13);
  v84 = *(a2 + 14);
  if (v83 != v84)
  {
    v85 = v83 + 2;
    do
    {
      if (*v85 != v85[1])
      {
        operator new();
      }

      LOWORD(v139) = 12;
      LOBYTE(v144) = 4;
      v86 = (*(*a2 + 16))(a2);
      v123 = v87 + v86;
      cnprint::CNPrinter::Print(&v139, &v144, "#nlos,time,%.3lf,building has no sections", v88, v89, v90, v91, v92, SLOBYTE(v123));
      v93 = v85 + 3;
      v85 += 5;
    }

    while (v93 != v84);
  }

  if (*(*(this + 4) + 24) == *(*(this + 4) + 16))
  {
    LOWORD(v139) = 12;
    LOBYTE(v144) = 3;
    v103 = (*(*a2 + 16))(a2);
    v124 = v104 + v103;
    cnprint::CNPrinter::Print(&v139, &v144, "#nlos,time,%.3lf,resetting NLOS engine as all of the %lu buildings got deleted", v105, v106, v107, v108, v109, SLOBYTE(v124));
    raven::RavenNLOSEngine::Reset(this);
  }

  else
  {
    raven::RavenFacetVisibilityData::ResetFacetVisibilityContainers((this + 3280));
    if (cnprint::CNPrinter::GetLogLevel(v94) <= 1)
    {
      LOWORD(v139) = 12;
      LOBYTE(v144) = 1;
      v95 = (*(*a2 + 16))(a2);
      v97 = v96 + v95;
      v128 = *(a2 + 20);
      v129 = (*(*(this + 4) + 24) - *(*(this + 4) + 16)) >> 3;
      cnprint::CNPrinter::Print(&v139, &v144, "#nlos,time,%.3lf,preupdate_bldg_size,%lu,new_bldg_added,%d, num_bldg_removed,%lu,new_bldg_size,%lu,num_new_sections,%d,num_facets,%d", v98, v99, v100, v101, v102, SLOBYTE(v97));
    }
  }

  v131 = &unk_1F4CEC558;
  sub_1D0B99218(v137);
}

void sub_1D0E017CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  sub_1D0E0BA98(&a37);
  sub_1D0B99218(a32);
  _Unwind_Resume(a1);
}

void raven::RavenNLOSEngine::Reset(int64x2_t *this)
{
  v2 = this[1].i64[1];
  v7 = this[1].i64[0];
  v8 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1D0E0981C(&this[2].i64[1], &v7);
  if (v8)
  {
    sub_1D0B7CAB8(v8);
  }

  v3 = this[2].i64[0];
  this[2].i64[0] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  if (this[16].i8[0] == 1)
  {
    this[16].i8[0] = 0;
  }

  if (this[28].i8[8] == 1)
  {
    this[28].i8[8] = 0;
  }

  if (this[195].i8[0] == 1)
  {
    this[195].i8[0] = 0;
  }

  if (this[202].i8[8] == 1)
  {
    this[202].i8[8] = 0;
  }

  this[203].i64[0] = 0;
  v4 = this[204].i64[0];
  v5 = this[203].i64[1];
  if (v4 != v5)
  {
    do
    {
      v6 = v4 - 56;
      sub_1D0E0B2FC(v4 - 24, *(v4 - 16));
      v4 = v6;
    }

    while (v6 != v5);
  }

  this[204].i64[0] = v5;
  raven::RavenFacetVisibilityData::Reset(this + 205);
}

void sub_1D0E01994(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1D0B7CAB8(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0E019AC(uint64_t a1)
{
  *a1 = &unk_1F4CEC558;
  sub_1D0B99218(*(a1 + 48));
  return a1;
}

void raven::RavenNLOSEngine::HandleEvent(raven::RavenNLOSEngine *this, raven::GnssPreprocessedMeasurementsEvent *a2)
{
  if ((*(this + 8) & 1) == 0)
  {
    if (cnprint::CNPrinter::GetLogLevel(this) > 1)
    {
      return;
    }

    LOWORD(v127) = 12;
    LOBYTE(v130) = 1;
    v41 = (*(*a2 + 16))(a2);
    v104 = v42 + v41;
    v40 = "#nlos,time,%.3lf,not configured";
    goto LABEL_42;
  }

  v3 = this;
  if (*(*this + 3536) == 1 && (*(this + 3240) != 1 || *(this + 3232) - 3 > 1))
  {
    return;
  }

  if (*(*this + 3537) && *(this + 456) == 1)
  {
    v4 = *(this + 368);
    v5 = (v4 & 0xFE) == 2 || v4 > 9;
    v6 = (1 << v4) & 0x370;
    if (!v5 && v6 != 0)
    {
      return;
    }
  }

  if ((*(this + 256) & 1) == 0)
  {
    this = (*(*a2 + 16))(a2);
    v8 = *(v3 + 256);
    *(v3 + 30) = this;
    *(v3 + 31) = v9;
    if ((v8 & 1) == 0)
    {
      *(v3 + 256) = 1;
    }
  }

  v10 = *(v3 + 4);
  v11 = v10 != 0;
  if (!v10)
  {
    ++*(v3 + 812);
  }

  if ((*(*v3 + 3664) & 1) == 0 && *(v3 + 426) == *(v3 + 427))
  {
    v11 = 0;
    ++*(v3 + 813);
  }

  if (*(v3 + 812) || *(v3 + 813))
  {
    v127 = (*(*a2 + 16))(a2);
    v128 = v12;
    if ((*(v3 + 256) & 1) == 0)
    {
      sub_1D0C42F28();
    }

    this = CNTimeSpan::operator-(&v127, v3 + 30, v13, v14);
    if (v15 + this >= 60.0)
    {
      if (cnprint::CNPrinter::GetLogLevel(this) <= 1)
      {
        LOWORD(v127) = 12;
        LOBYTE(v130) = 1;
        v16 = (*(*a2 + 16))(a2);
        v108 = *(v3 + 812);
        v116 = *(v3 + 813);
        v103 = v17 + v16;
        cnprint::CNPrinter::Print(&v127, &v130, "#nlos,time,%.3lf,epoch count for no bldg data,%u,empty RT tile container,%u,in last %.0f seconds", v18, v19, v20, v21, v22, SLOBYTE(v103));
      }

      *(v3 + 406) = 0;
      this = (*(*a2 + 16))(a2);
      v23 = *(v3 + 256);
      *(v3 + 30) = this;
      *(v3 + 31) = v24;
      if ((v23 & 1) == 0)
      {
        *(v3 + 256) = 1;
      }
    }
  }

  if (!v11)
  {
    return;
  }

  if ((*(v3 + 64) & 1) == 0)
  {
    if (cnprint::CNPrinter::GetLogLevel(this) > 1)
    {
      return;
    }

    LOWORD(v127) = 12;
    LOBYTE(v130) = 1;
    v45 = (*(*a2 + 16))(a2);
    v104 = v46 + v45;
    v40 = "#nlos,time,%.3lf,no transformation";
    goto LABEL_42;
  }

  if ((*(v3 + 3120) & 1) == 0)
  {
    if (cnprint::CNPrinter::GetLogLevel(this) > 1)
    {
      return;
    }

    LOWORD(v127) = 12;
    LOBYTE(v130) = 1;
    v47 = (*(*a2 + 16))(a2);
    v104 = v48 + v47;
    v40 = "#nlos,time,%.3lf,no blended solution";
    goto LABEL_42;
  }

  v127 = (*(*a2 + 16))(a2);
  v128 = v25;
  v28 = CNTimeSpan::operator-(v3 + 204, &v127, v26, v27);
  v140[0] = v28;
  *&v140[1] = v29;
  if (v28 < 0 || (*v30.i64 = v29, v29 < 0.0))
  {
    v28 = CNTimeSpan::operator-(v140, v30, v31);
    v30.i64[0] = v32;
  }

  if (*v30.i64 + v28 > 2.0)
  {
    if (cnprint::CNPrinter::GetLogLevel(v28) > 1)
    {
      return;
    }

    LOWORD(v127) = 12;
    LOBYTE(v130) = 1;
    v33 = (*(*a2 + 16))(a2);
    v104 = v39 + v33;
    v109 = *(v3 + 205) + *(v3 + 204);
    v40 = "#nlos,time,%.3lf,blended solution not time aligned to data,t_soln,%.3lf";
    goto LABEL_42;
  }

  v138 = *(v3 + 121);
  v139 = *(v3 + 244);
  sub_1D0E024FC(&v135, v3 + 40, &v138);
  if ((v137 & 1) == 0)
  {
    if (cnprint::CNPrinter::GetLogLevel(v49) > 1)
    {
      return;
    }

    LOWORD(v127) = 12;
    LOBYTE(v130) = 1;
    v57 = (*(*a2 + 16))(a2);
    v104 = v58 + v57;
    v111 = *(v3 + 205) + *(v3 + 204);
    v40 = "#nlos,time,%.3lf,could not convert blended solution to ENU,t_soln,%.3lf";
LABEL_42:
    v43 = &v127;
    v44 = &v130;
LABEL_43:
    cnprint::CNPrinter::Print(v43, v44, v40, v34, v35, v36, v37, v38, SLOBYTE(v104));
    return;
  }

  if (*(*v3 + 3596) == 1)
  {
    v136 = *(*v3 + 80);
  }

  v132 = 0x300000003;
  v130 = &unk_1F4CD5DD0;
  v131 = xmmword_1D0E76C10;
  v133 = &v134;
  v50 = sub_1D0DF5384(v3 + 1632, &v130);
  if ((v51 & 1) == 0)
  {
    LOWORD(v127) = 12;
    LOBYTE(v123) = 4;
    v59 = (*(*a2 + 16))(a2, v50);
    v105 = v60 + v59;
    v112 = *(v3 + 205) + *(v3 + 204);
    cnprint::CNPrinter::Print(&v127, &v123, "#nlos,time,%.3lf,could not extract position covariance,t_soln,%.3lf", v61, v62, v63, v64, v65, SLOBYTE(v105));
    return;
  }

  sub_1D0E02574(&v127, v3 + 40, &v130);
  if ((v129 & 1) == 0)
  {
    LOWORD(v123) = 12;
    LOBYTE(v126.f64[0]) = 4;
    v66 = (*(*a2 + 16))(a2);
    v104 = v67 + v66;
    v113 = *(v3 + 205) + *(v3 + 204);
    v40 = "#nlos,time,%.3lf,could not convert position covariance to ENU,t_soln,%.3lf";
    goto LABEL_99;
  }

  v123 = v135;
  v124 = v136;
  updated = raven::RavenNLOSEngine::UpdateCandidatePointSearchSpace(v3, &v123, &v127, *(v3 + 4));
  if ((updated & 1) == 0)
  {
    LOWORD(v123) = 12;
    LOBYTE(v126.f64[0]) = 4;
    v68 = (*(*a2 + 16))(a2);
    v104 = v69 + v68;
    v114 = *(v3 + 205) + *(v3 + 204);
    v40 = "#nlos,time,%.3lf,could not compute candidate point search space,t_soln,%.3lf";
    goto LABEL_99;
  }

  v53 = *(v3 + 407);
  v54 = *(v3 + 408);
  if (v53 == v54)
  {
    LOWORD(v123) = 12;
    LOBYTE(v126.f64[0]) = 4;
    v70 = (*(*a2 + 16))(a2);
    v104 = v71 + v70;
    v115 = *(v3 + 205) + *(v3 + 204);
    v40 = "#nlos,time,%.3lf,empty candidate point search space,t_soln,%.3lf";
    goto LABEL_99;
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((v54 - v53) >> 3)) > *(*v3 + 3624))
  {
    LOWORD(v123) = 12;
    LOBYTE(v126.f64[0]) = 3;
    v55 = (*(*a2 + 16))(a2);
    v104 = v56 + v55;
    v110 = *(v3 + 205) + *(v3 + 204);
    v117 = 0x6DB6DB6DB6DB6DB7 * ((*(v3 + 408) - *(v3 + 407)) >> 3);
    v40 = "#nlos,time,%.3lf,no ray tracing: too many candidate points,t_soln,%.3lf,N,%zu";
LABEL_99:
    v43 = &v123;
    v44 = &v126;
    goto LABEL_43;
  }

  v73 = *(a2 + 12);
  v72 = *(a2 + 13);
  if (v73 != v72)
  {
    v74 = 0;
    v118 = 0;
    v119 = 0;
    while (1)
    {
      v75 = *v73;
      if (!*v73)
      {
        goto LABEL_92;
      }

      v76 = *v3;
      if (*(*v3 + 3656) <= v74)
      {
        break;
      }

      if (*(v75 + 264) <= *(v76 + 3640) * 0.0174532925)
      {
        v77 = 1.0;
        if (*(v75 + 304) == 1)
        {
          v77 = *(v75 + 296);
        }

        if (v77 <= *(v76 + 3632))
        {
          v78 = *(v75 + 328);
          if (*(v75 + 336) != v78)
          {
            v79 = 0;
            v80 = 0;
            do
            {
              if (*(v78 + v79 + 40))
              {
                v81 = *(v78 + v79 + 96) == 1;
              }

              else
              {
                v81 = 0;
              }

              if (v81)
              {
                v82 = *(v78 + v79 + 100);
                v5 = v82 > 9;
                v83 = (1 << v82) & 0x2BB;
                if (v5 || v83 == 0)
                {
                  v123 = *(v78 + v79 + 48);
                  updated = cnnavigation::GNSSEphemerides::GNSSFindSat(v75 + 32, &v123, &v126);
                  if (!updated)
                  {
                    v120 = v74;
                    v85 = sub_1D0E024FC(&v123, v3 + 40, &v126);
                    if (v125)
                    {
                      updated = raven::RavenNLOSEngine::ProcessSatellite(v3, v75, &v123, *(v3 + 4));
                      if (updated)
                      {
                        updated = raven::RavenNLOSEngine::AugmentMeasurementWithRayTracingResults(v3, v75);
                        v118 += updated;
                        ++v119;
                      }

                      v74 = (v74 + 1);
                      break;
                    }

                    v122 = 12;
                    v121 = 4;
                    v86 = (*(*a2 + 16))(a2, v85);
                    v88 = v87;
                    sub_1D0BCFAB8(v75);
                    v106 = v88 + v86;
                    cnprint::CNPrinter::Print(&v122, &v121, "#nlos,time,%.3lf,could not compute ENU coordinates for satellite %s", v89, v90, v91, v92, v93, SLOBYTE(v106));
                    v74 = v120;
                  }
                }
              }

              ++v80;
              v78 = *(v75 + 328);
              v79 += 208;
            }

            while (v80 < 0x4EC4EC4EC4EC4EC5 * ((*(v75 + 336) - v78) >> 4));
          }
        }
      }

LABEL_92:
      v73 += 2;
      if (v73 == v72)
      {
        goto LABEL_97;
      }
    }

    updated = cnprint::CNPrinter::GetLogLevel(updated);
    if (updated <= 1)
    {
      LOWORD(v123) = 12;
      LOBYTE(v126.f64[0]) = 1;
      v94 = (*(*a2 + 16))(a2);
      v107 = v95 + v94;
      cnprint::CNPrinter::Print(&v123, &v126, "#nlos,time,%.3lf,maximum number of traced satellites reached,%u", v96, v97, v98, v99, v100, SLOBYTE(v107));
    }
  }

LABEL_97:
  if (cnprint::CNPrinter::GetLogLevel(updated) <= 1)
  {
    LOWORD(v123) = 12;
    LOBYTE(v126.f64[0]) = 1;
    v101 = (*(*a2 + 16))(a2);
    v104 = v102 + v101;
    v40 = "#nlos,time,%.3lf,ray tracing satellite counts,attempted,%u,with nlos path,%u,forwarded,%u";
    goto LABEL_99;
  }
}

double sub_1D0E024FC(uint64_t a1, uint64_t a2, float64x2_t *a3)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  if (*(a2 + 24) == 1)
  {
    v9 = v3;
    v10 = v4;
    if (!cnnavigation::ECEFToENU(a3, 1, 1, a2, 0, &v7))
    {
      result = *&v7;
      *a1 = v7;
      *(a1 + 16) = v8;
      *(a1 + 24) = 1;
    }
  }

  return result;
}

void sub_1D0E02574(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 160))
  {
    v15 = 0x300000003;
    v13 = &unk_1F4CD5DD0;
    v14 = xmmword_1D0E76C10;
    v16 = &v17;
    if (sub_1D0BFE654(a2 + 32, a3, &v13))
    {
      sub_1D0BE0DE8(a1, &v13);
      v9 = 1;
    }

    else
    {
      v12 = 1;
      v11 = 4;
      cnprint::CNPrinter::Print(&v12, &v11, "#geo,could not convert ECEF covariance to ENU", v4, v5, v6, v7, v8, v10);
      v9 = 0;
      *a1 = 0;
    }

    a1[112] = v9;
  }

  else
  {
    *a1 = 0;
    a1[112] = 0;
  }
}

BOOL raven::RavenNLOSEngine::UpdateCandidatePointSearchSpace(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a1[408];
  v9 = a1[407];
  if (v8 != v9)
  {
    do
    {
      v10 = v8 - 56;
      sub_1D0E0B2FC(v8 - 24, *(v8 - 16));
      v8 = v10;
    }

    while (v10 != v9);
  }

  a1[408] = v9;
  v11 = *(*a1 + 3600);
  v12 = *(*a1 + 3608);
  v108 = *(*a1 + 3616);
  v13 = *(a3 + 32);
  v14 = sqrt(v13[*(a3 + 20) + 1]);
  v15 = v12 * sqrt(*v13);
  if (v15 <= v11)
  {
    v15 = *(*a1 + 3600);
  }

  v16 = v15;
  v17 = v12 * v14;
  if (v12 * v14 <= v11)
  {
    v17 = *(*a1 + 3600);
  }

  v18 = v17;
  if ((atomic_load_explicit(&qword_1EE054BE8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE054BE8))
  {
    qword_1EE054C08 = 0x200000001;
    qword_1EE054BF0 = &unk_1F4CE2060;
    qword_1EE054C18 = 0x100000000;
    qword_1EE054C10 = &qword_1EE054C18;
    unk_1EE054BF8 = xmmword_1D0E84500;
    __cxa_atexit(sub_1D0D7525C, &qword_1EE054BF0, &dword_1D0B71000);
    __cxa_guard_release(&qword_1EE054BE8);
  }

  v19 = *(a3 + 20);
  v20 = *(a3 + 32);
  v21 = dword_1EE054C00;
  *&v131[16] = 0x200000002;
  v130 = &unk_1F4CE0268;
  *v131 = dword_1EE054C00;
  *&v131[4] = dword_1EE054C00;
  *&v131[8] = *v131 * *v131;
  *&v131[12] = dword_1EE054C00;
  *&v131[24] = &v131[32];
  if (dword_1EE054C00)
  {
    v22 = 0;
    v23 = 0;
    v24 = qword_1EE054C10;
    do
    {
      v25 = 0;
      v26 = *(v24 + 4 * v23) * v19;
      do
      {
        *&v131[8 * (v22 + v25) + 32] = *(v20 + 8 * (*(v24 + 4 * v25) + v26));
        ++v25;
      }

      while (v21 != v25);
      ++v23;
      v22 += v21;
    }

    while (v23 != v21);
  }

  v119 = 0x200000002;
  v118 = xmmword_1D0E83F70;
  v117 = &unk_1F4CE0268;
  v120 = &v121;
  v127 = 0x100000002;
  *&v126[8] = xmmword_1D0E83F60;
  *v126 = &unk_1F4CE0EA8;
  v128 = &v129;
  v123 = 0x100000002;
  *&v122[8] = xmmword_1D0E83F60;
  *v122 = &unk_1F4CE0EA8;
  v124 = &v125;
  __p[0] = 0x100000008;
  v109 = &unk_1F4CE4320;
  v110 = xmmword_1D0E84520;
  __p[1] = &__p[2];
  v32 = sub_1D0BA5174(&v130, v126, v122, &v109, &v117);
  if (v32 > *(*a1 + 3552))
  {
    LOWORD(v109) = 12;
    LOBYTE(v130) = 3;
    cnprint::CNPrinter::Print(&v109, &v130, "#nlos,location covariance condition number too large,cond,%.1f", v27, v28, v29, v30, v31, SLOBYTE(v32));
    return 0;
  }

  v34 = vcvtpd_s64_f64(1.0 / v108 * v16);
  v35 = vcvtpd_s64_f64(1.0 / v108 * v18);
  v109 = &unk_1F4CEC6D0;
  v110 = 0u;
  memset(__p, 0, 25);
  v112 = &unk_1F4CEC730;
  v113 = 0u;
  memset(v114, 0, sizeof(v114));
  v115 = 0u;
  v116 = -1;
  *v126 = vmulq_f64(*(a1 + 13), vdupq_n_s64(0x3F91DF46A2529D39uLL));
  v36 = 4 * v34 * v35;
  v102 = v34;
  if (0x6DB6DB6DB6DB6DB7 * ((a1[409] - a1[407]) >> 3) < v36)
  {
    if (v36 <= 0x492492492492492)
    {
      v37 = a1[408];
      *&v131[24] = a1 + 407;
      sub_1D0E0CCF4(v36);
    }

    sub_1D0C5663C();
  }

  if ((v34 & 0x8000000000000000) != 0)
  {
    v33 = 1;
LABEL_84:
    if (cnprint::CNPrinter::GetLogLevel(v36) <= 1)
    {
      LOWORD(v130) = 12;
      v122[0] = 1;
      cnprint::CNPrinter::Print(&v130, v122, "#nlos,%zu candidate points identified (%u inside a building)", v90, v91, v92, v93, v94, -73 * ((a1[408] - a1[407]) >> 3));
    }

    goto LABEL_86;
  }

  v101 = a1 + 407;
  v33 = 0;
  v107 = 0;
  v106 = v11 * v11;
  v105 = v12 * v12;
  v38 = *(a1 + 429) * 0.5;
  v39 = -v34;
  v97 = 4 * v34 * v35;
  v98 = vdupq_n_s64(0x7FF8000000000000uLL);
  v99 = a4;
  while (1)
  {
    v103 = v39;
    if ((v35 & 0x8000000000000000) == 0)
    {
      break;
    }

LABEL_80:
    v33 = v103 >= v102;
    v39 = v103 + 1;
    if (v103 == v102)
    {
      goto LABEL_84;
    }
  }

  v100 = v33;
  v40 = v108 * v39;
  v41 = -v35;
  while (1)
  {
    v42 = v108 * v41;
    if (v40 * v40 + v42 * v42 > v106 && v42 * (v40 * v120[SHIDWORD(v118)]) + v42 * (v40 * v120[SHIDWORD(v118)]) + v40 * *v120 * v40 + v42 * v120[SHIDWORD(v118) + 1] * v42 > v105)
    {
      goto LABEL_78;
    }

    v43 = v40 + *a2;
    v44 = v42 + *(a2 + 8);
    *&v110 = v43;
    *(&v110 + 1) = v44;
    LOBYTE(__p[3]) = 0;
    __p[1] = __p[0];
    v130 = &unk_1F4CEC730;
    *v131 = a4;
    memset(&v131[8], 0, 48);
    v132 = 0;
    v133 = -1;
    v113 = *v131;
    sub_1D0E0BBF4(v114, &v131[16]);
    v116 = v133;
    v130 = &unk_1F4CEC730;
    sub_1D0E0BA98(&v131[16]);
    sub_1D0E0B780(&v112);
    while (*(&v115 + 1))
    {
      v36 = (*(**(&v113 + 1) + 16))(*(&v113 + 1), &v109);
      if (__p[3])
      {
        goto LABEL_29;
      }

      sub_1D0E0B884(&v112);
    }

    sub_1D0E0C46C(&v109);
    if (LOBYTE(__p[3]) == 1)
    {
LABEL_29:
      ++v107;
      goto LABEL_78;
    }

    v104 = *(a2 + 16);
    if (*(*a1 + 3664) == 1)
    {
      v50 = a1[408];
      v51 = a1[409];
      if (v50 >= v51)
      {
        v65 = 0x6DB6DB6DB6DB6DB7 * ((v50 - *v101) >> 3);
        v66 = v65 + 1;
        if ((v65 + 1) > 0x492492492492492)
        {
          sub_1D0C5663C();
        }

        v67 = 0x6DB6DB6DB6DB6DB7 * ((v51 - *v101) >> 3);
        if (2 * v67 > v66)
        {
          v66 = 2 * v67;
        }

        if (v67 >= 0x249249249249249)
        {
          v68 = 0x492492492492492;
        }

        else
        {
          v68 = v66;
        }

        *&v131[24] = a1 + 407;
        if (v68)
        {
          sub_1D0E0CCF4(v68);
        }

        v82 = 56 * v65;
        *v82 = v43;
        *(v82 + 8) = v44;
        *(v82 + 16) = v104;
        *(v82 + 48) = 0;
        *(56 * v65 + 0x28) = 0;
        v83 = 56 * v65 + 40;
        *(v82 + 24) = 0;
LABEL_76:
        *(v82 + 32) = v83;
        v52 = v82 + 56;
        v84 = a1[408];
        v85 = a1[407];
        v86 = v82 + v85 - v84;
        sub_1D0E0CD50(v85, v84, v86);
        v87 = a1[407];
        a1[407] = v86;
        a1[408] = v52;
        v88 = a1[409];
        a1[409] = 0;
        *&v131[8] = v87;
        *&v131[16] = v88;
        v130 = v87;
        *v131 = v87;
        v36 = sub_1D0E0CDF8(&v130);
        goto LABEL_77;
      }

      *v50 = v43;
      *(v50 + 8) = v44;
      *(v50 + 16) = v104;
      *(v50 + 48) = 0;
      *(v50 + 40) = 0;
      v52 = v50 + 56;
      *(v50 + 24) = 0;
      *(v50 + 32) = v50 + 40;
      goto LABEL_77;
    }

    v53 = a1[416];
    v54 = a1[417];
    if (v53 != v54)
    {
      break;
    }

    v64 = 0;
    v63 = a1[416];
LABEL_53:
    if (v64 == (v53 - v63) >> 3)
    {
      *v122 = v98;
      if (*(a1 + 64) == 1)
      {
        v69 = *(a1 + 27);
        v70 = v43 / v69;
        v62 = v69 <= 0.0;
        v71 = 0.0;
        if (!v62)
        {
          v71 = v70;
        }

        v72.f64[1] = v71;
        v72.f64[0] = v44 / *(a1 + 26);
        *v122 = vaddq_f64(v72, *(a1 + 5));
      }

      v73 = (a1[418] - v63) >> 3;
      if (v73 <= v64)
      {
        v74 = v73 + v97;
        if (v73 < v73 + v97)
        {
          if (!(v74 >> 61))
          {
            *&v131[24] = a1 + 416;
            sub_1D0C54E78((a1 + 416), v74);
          }

          sub_1D0C5663C();
        }
      }

      v36 = raven::RavenFacetVisibilityData::ConstructPointToFacetVisibilityHierarchy((a1 + 410), v122, a1[4], v126);
      if (!v36)
      {
        goto LABEL_78;
      }

      v63 = a1[416];
      v64 = ((a1[417] - v63) >> 3) - 1;
    }

    v75 = *(v63 + 8 * v64);
    v76 = a1[408];
    v77 = a1[409];
    if (v76 >= v77)
    {
      v78 = 0x6DB6DB6DB6DB6DB7 * ((v76 - *v101) >> 3);
      v79 = v78 + 1;
      if ((v78 + 1) > 0x492492492492492)
      {
        sub_1D0C5663C();
      }

      v80 = 0x6DB6DB6DB6DB6DB7 * ((v77 - *v101) >> 3);
      if (2 * v80 > v79)
      {
        v79 = 2 * v80;
      }

      if (v80 >= 0x249249249249249)
      {
        v81 = 0x492492492492492;
      }

      else
      {
        v81 = v79;
      }

      *&v131[24] = a1 + 407;
      if (v81)
      {
        sub_1D0E0CCF4(v81);
      }

      v82 = 56 * v78;
      *v82 = v43;
      *(v82 + 8) = v44;
      *(v82 + 16) = v104;
      *(v82 + 48) = 0;
      *(56 * v78 + 0x28) = 0;
      v83 = 56 * v78 + 40;
      *(v82 + 24) = v75;
      goto LABEL_76;
    }

    *v76 = v43;
    *(v76 + 8) = v44;
    *(v76 + 16) = v104;
    *(v76 + 48) = 0;
    *(v76 + 40) = 0;
    v52 = v76 + 56;
    *(v76 + 24) = v75;
    *(v76 + 32) = v76 + 40;
LABEL_77:
    a1[408] = v52;
LABEL_78:
    if (v41++ == v35)
    {
      goto LABEL_80;
    }
  }

  v55 = 0;
  while (*(a1 + 64) == 1)
  {
    v56 = **v53;
    v57 = v56 * 0.000001;
    if (v57 > 180.0)
    {
      v57 = v57 + -360.0;
    }

    v58 = *(a1 + 5);
    v59 = *(a1 + 26);
    v60 = sub_1D0D46A58((a1 + 5), v57);
    v61 = vabdd_f64(v59 * -(v58 - (HIDWORD(v56) * 0.000001 + -90.0) * 0.0174532925), v44);
    v62 = vabdd_f64(v60, v43) <= v38 && v61 <= v38;
    if (!v62)
    {
      ++v55;
      if (++v53 != v54)
      {
        continue;
      }
    }

    v53 = a1[417];
    v63 = a1[416];
    v64 = v55;
    a4 = v99;
    goto LABEL_53;
  }

  LOWORD(v130) = 12;
  v122[0] = 4;
  cnprint::CNPrinter::Print(&v130, v122, "#nlos,Could not compute building data coordinates for tile point", v45, v46, v47, v48, v49, v96);
  v33 = v100;
LABEL_86:
  v109 = &unk_1F4CEC6D0;
  v112 = &unk_1F4CEC730;
  sub_1D0E0BA98(v114);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v33;
}

uint64_t raven::RavenNLOSEngine::ProcessSatellite(cnprint::CNPrinter *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v100 = *MEMORY[0x1E69E9840];
  v8 = sub_1D0C460E0(a2);
  v97[0] = v8;
  *&v97[1] = v9;
  if (*(a1 + 8))
  {
    v90 = &v90;
    v91 = &v90;
    memset(v92, 0, sizeof(v92));
    v93[0] = v93;
    v93[1] = v93;
    v93[2] = 0;
    v94 = 0;
    *__p = 0u;
    memset(v96, 0, sizeof(v96));
    v87 = &v87;
    v88 = &v87;
    v89 = 0;
    v12 = *(a1 + 407);
    v63 = *(a1 + 408);
    if (v12 == v63)
    {
      v61 = 0;
      goto LABEL_56;
    }

    v61 = 0;
    while (1)
    {
      v13 = *a1;
      if (*(*a1 + 3664) == 1)
      {
        raven::RavenNLOSEngine::FindApproximatePathsUsingRayTracing(a1, v97, a2, v12, a3, a4, v10, v11, &v77);
        sub_1D0E09C08(&v87);
        v14 = v78;
        if (v78)
        {
          v15 = v77;
          v16 = *(v77 + 8);
          v17 = **(&v77 + 1);
          *(v17 + 8) = v16;
          *v16 = v17;
          v18 = v87;
          *(v87 + 8) = *(&v15 + 1);
          **(&v15 + 1) = v18;
          *(v15 + 8) = &v87;
          v87 = v15;
          v89 += v14;
          *&v78 = 0;
        }

        sub_1D0E09C08(&v77);
        v19 = v89;
      }

      else
      {
        v34 = *(v12 + 3);
        v35 = *(v13 + 3560);
        v62 = *(v13 + 3568);
        __p[1] = __p[0];
        sub_1D0E09C08(&v90);
        sub_1D0E09C08(&v87);
        if (!a4)
        {
          goto LABEL_50;
        }

        if (!v34)
        {
          goto LABEL_50;
        }

        if (!v35)
        {
          goto LABEL_50;
        }

        v94 = v35;
        v36 = *v12;
        *(&v92[1] + 1) = *(v12 + 2);
        *(v92 + 8) = v36;
        *(v96 + 8) = *a3;
        *(&v96[1] + 1) = *(a3 + 16);
        *&v77 = &unk_1F4CEC5C8;
        v37 = vsubq_f64(*a3, *v12);
        v38 = *(a3 + 16) - *(v12 + 2);
        v39 = sqrt(COERCE_DOUBLE(*&vmulq_f64(v37, v37).f64[1]) + v37.f64[0] * v37.f64[0] + v38 * v38);
        if (fabs(v39) < 2.22044605e-16)
        {
          goto LABEL_50;
        }

        v40 = 1.0 / v39;
        v41 = v38 * v40;
        v98 = *v12;
        v99 = *(v12 + 2);
        v78 = v98;
        *v79 = v99;
        v60 = vmulq_n_f64(v37, v40);
        *&v79[8] = v60;
        v80 = v38 * v40;
        *(&v77 + 1) = a4;
        LODWORD(v81) = 0;
        BYTE4(v81) = 0;
        (*(*a4 + 16))(a4, &v77);
        if ((v81 & 0x100000000) == 0)
        {
          v64 = v98;
          v65 = v99;
          v66 = v60;
          v67 = v41;
          v68[0] = v68;
          v68[1] = v68;
          v69 = 0;
          sub_1D0E0CEC8();
        }

        for (i = *(v34 + 24); i; i = *i)
        {
          sub_1D0BCC0B4(v93);
          __p[1] = __p[0];
          sub_1D0E090D8(__p, (v94 + 1));
          sub_1D0E09C7C(&v90, i[2]);
        }

        v43 = *&v92[0];
        v19 = v89;
        if (*&v92[0])
        {
          v44 = v91;
          v45 = v90;
          v46 = *(v90 + 8);
          v47 = *v91;
          *(v47 + 8) = v46;
          *v46 = v47;
          v48 = v87;
          *(v87 + 8) = v44;
          *v44 = v48;
          *(v45 + 8) = &v87;
          v19 += v43;
          v87 = v45;
          v89 = v19;
          *&v92[0] = 0;
        }

        if (!v19)
        {
          goto LABEL_50;
        }
      }

      if (!v19)
      {
        goto LABEL_50;
      }

      LOBYTE(v77) = 0;
      v86 = 0;
      v20 = v88;
      if (v88 == &v87)
      {
        goto LABEL_50;
      }

      v21 = INFINITY;
      do
      {
        raven::RavenNLOSEngine::RefineApproximatePath(a1, (v20 + 2), v97, a2, a3, &v64);
        if ((v76 & 1) == 0)
        {
          goto LABEL_18;
        }

        if (v69)
        {
          v22 = v73 - sqrt((v71 - *(&v64 + 1)) * (v71 - *(&v64 + 1)) + (v70 - *&v64) * (v70 - *&v64) + (v72 - v65) * (v72 - v65));
        }

        else
        {
          v22 = 0.0;
        }

        if (v22 >= v21 || (sub_1D0E0A5AC(&v77, &v64), v21 = v22, (v76 & 1) != 0))
        {
          v75 = &unk_1F4CD5E28;
          v74 = &unk_1F4CD5E28;
          sub_1D0BCC0B4(v68);
LABEL_18:
          v22 = v21;
        }

        v20 = v20[1];
        v21 = v22;
      }

      while (v20 != &v87);
      if (v86)
      {
        v23 = v61;
        if (v81)
        {
          v23 = v61 + 1;
        }

        v61 = v23;
        v24 = *(v12 + 5);
        if (!v24)
        {
LABEL_47:
          operator new();
        }

        v25 = *(a2 + 24);
        v26 = *(a2 + 28);
        while (1)
        {
          while (1)
          {
            v27 = v24;
            v28 = *(v24 + 56);
            v29 = *(v27 + 15);
            v30 = v29 < v26;
            if (v28 != v25)
            {
              v30 = v28 < v25;
            }

            if (!v30)
            {
              break;
            }

            v24 = *v27;
            if (!*v27)
            {
              goto LABEL_47;
            }
          }

          v31 = v29 > v26;
          v32 = v28 == v25;
          v33 = v28 > v25;
          if (v32)
          {
            v33 = v31;
          }

          if (!v33)
          {
            break;
          }

          v24 = v27[1];
          if (!v24)
          {
            goto LABEL_47;
          }
        }

        v49 = v78;
        *(v27 + 4) = v77;
        *(v27 + 5) = v49;
        *(v27 + 6) = *v79;
        sub_1D0E0A498(v27 + 14, &v79[16]);
        *(v27 + 17) = v82;
        *(v27 + 19) = v83;
        sub_1D0B894B0((v27 + 21), &v84);
        sub_1D0B894B0((v27 + 29), &v85);
        if (v86)
        {
          v85 = &unk_1F4CD5E28;
          v84 = &unk_1F4CD5E28;
          sub_1D0BCC0B4(&v79[16]);
        }
      }

LABEL_50:
      v12 = (v12 + 56);
      if (v12 == v63)
      {
LABEL_56:
        sub_1D0E09C08(&v87);
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        sub_1D0BCC0B4(v93);
        sub_1D0E09C08(&v90);
        result = v61;
        goto LABEL_59;
      }
    }
  }

  v50 = v8;
  v51 = v9;
  if (cnprint::CNPrinter::GetLogLevel(v8) <= 1)
  {
    LOWORD(v77) = 12;
    LOBYTE(v64) = 1;
    v59 = v51 + v50;
    cnprint::CNPrinter::Print(&v77, &v64, "#nlos,time,%.3lf,object not configured in %s", v52, v53, v54, v55, v56, SLOBYTE(v59));
  }

  result = 0;
LABEL_59:
  v58 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t raven::RavenNLOSEngine::AugmentMeasurementWithRayTracingResults(uint64_t a1, uint64_t a2)
{
  LOBYTE(v111) = 0;
  v116 = 0;
  v121 = 0x300000003;
  v120 = xmmword_1D0E76C10;
  v119 = &unk_1F4CD5DD0;
  v122 = v123;
  if (*(a1 + 200) == 1 && *(a1 + 80) == 1)
  {
    sub_1D0B894B0(&v119, a1 + 88);
    sub_1D0BE0DE8(&v95, &v119);
    v104 = 1;
    sub_1D0BE0DE8(&v111, &v95);
    v116 = 1;
    v117[0] = 0;
    v118 = 0;
    sub_1D0BE0DE8(v117, &v111);
    v118 = 1;
    v4 = sub_1D0C460E0(a2);
    v84 = v4;
    v109 = 0;
    v110 = 0;
    v108 = &v109;
    v6 = *(a1 + 3256);
    v7 = *(a1 + 3264);
    if (v6 == v7)
    {
      goto LABEL_91;
    }

    v8 = 0;
    v9 = v5;
    do
    {
      v10 = *(v6 + 40);
      if (v10)
      {
        v11 = *(a2 + 24);
        v12 = *(a2 + 28);
        v13 = v6 + 40;
        do
        {
          v14 = *(v10 + 56);
          v16 = v14 == v11;
          v15 = v14 > v11;
          if (v16)
          {
            v15 = *(v10 + 60) > v12;
          }

          v16 = !v15;
          if (v15)
          {
            v17 = 8;
          }

          else
          {
            v17 = 0;
          }

          if (v16)
          {
            v13 = v10;
          }

          v10 = *(v10 + v17);
        }

        while (v10);
        if (v13 != v6 + 40)
        {
          v18 = *(v13 + 56);
          v19 = *(v13 + 60) < v12;
          v16 = v18 == v11;
          v20 = v18 < v11;
          if (v16)
          {
            v20 = v19;
          }

          if (!v20)
          {
            sub_1D0E0977C(&v95, v13 + 64);
            v21 = v109;
            if (!v109)
            {
LABEL_28:
              operator new();
            }

            while (1)
            {
              while (1)
              {
                v22 = v21;
                if ((sub_1D0E0ED6C(&v95, (v21 + 4)) & 0x80) == 0)
                {
                  break;
                }

                v21 = *v22;
                if (!*v22)
                {
                  goto LABEL_28;
                }
              }

              if ((sub_1D0E0ED6C((v22 + 4), &v95) & 0x80) == 0)
              {
                break;
              }

              v21 = v22[1];
              if (!v21)
              {
                goto LABEL_28;
              }
            }

            v4 = sub_1D0BCC0B4(&v95);
            v23 = *(v22 + 14);
            *(v22 + 14) = v23 + 1;
            if (v23 + 1 > v8)
            {
              v8 = v23 + 1;
            }
          }
        }
      }

      v6 += 56;
    }

    while (v6 != v7);
    if (!v110)
    {
      goto LABEL_91;
    }

    v24 = v108;
    if (v108 != &v109)
    {
      v25 = 0;
      do
      {
        sub_1D0E0B258(&v95, (v24 + 4));
        *&v96[16] = *(v24 + 14);
        v26 = *&v96[16];
        v4 = sub_1D0BCC0B4(&v95);
        if (v26 == v8)
        {
          ++v25;
        }

        v27 = v24[1];
        if (v27)
        {
          do
          {
            v28 = v27;
            v27 = *v27;
          }

          while (v27);
        }

        else
        {
          do
          {
            v28 = v24[2];
            v16 = *v28 == v24;
            v24 = v28;
          }

          while (!v16);
        }

        v24 = v28;
      }

      while (v28 != &v109);
      if (v25 > 1)
      {
        if (cnprint::CNPrinter::GetLogLevel(v4) <= 1)
        {
          LOWORD(v95) = 12;
          LOBYTE(v111) = 1;
          sub_1D0BCFAB8(a2);
          v79 = v9 + v84;
          cnprint::CNPrinter::Print(&v95, &v111, "#nlos,time,%.3lf,ray tracing results ignored for %s: multiple sequences occur most frequently, %lld", v29, v30, v31, v32, v33, SLOBYTE(v79));
        }

LABEL_91:
        sub_1D0E0ED18(v109);
        return 0;
      }

      v24 = v108;
    }

    if (v24 != &v109)
    {
      while (1)
      {
        sub_1D0E0B258(&v95, (v24 + 4));
        *&v96[16] = *(v24 + 14);
        v42 = *&v96[16];
        v4 = sub_1D0BCC0B4(&v95);
        if (v42 == v8)
        {
          break;
        }

        v43 = v24[1];
        if (v43)
        {
          do
          {
            v44 = v43;
            v43 = *v43;
          }

          while (v43);
        }

        else
        {
          do
          {
            v44 = v24[2];
            v16 = *v44 == v24;
            v24 = v44;
          }

          while (!v16);
        }

        v24 = v44;
        if (v44 == &v109)
        {
          v24 = &v109;
          break;
        }
      }
    }

    if (!v24[6])
    {
      if (cnprint::CNPrinter::GetLogLevel(v4) <= 1)
      {
        LOWORD(v95) = 12;
        LOBYTE(v111) = 1;
        sub_1D0BCFAB8(a2);
        v81 = v9 + v84;
        cnprint::CNPrinter::Print(&v95, &v111, "#nlos,time,%.3lf,ray tracing results ignored for %s: most common path is LOS", v66, v67, v68, v69, v70, SLOBYTE(v81));
      }

      goto LABEL_91;
    }

    v45 = v8;
    v46 = *(a1 + 3264);
    v47 = *(a1 + 3256);
    if (v8 / (0x6DB6DB6DB6DB6DB7 * ((v46 - v47) >> 3)) < *(*a1 + 3648))
    {
      if (cnprint::CNPrinter::GetLogLevel(v4) <= 1)
      {
        LOWORD(v95) = 12;
        LOBYTE(v111) = 1;
        sub_1D0BCFAB8(a2);
        v83 = v24[6];
        v82 = v9 + v84;
        cnprint::CNPrinter::Print(&v95, &v111, "#nlos,time,%.3lf,ray tracing results ignored for %s: low occurrence rate of %.1lf%% (N = %lu)", v71, v72, v73, v74, v75, SLOBYTE(v82));
      }

      goto LABEL_91;
    }

    v105[0] = 0;
    v106 = 0u;
    memset(v107, 0, sizeof(v107));
    v113 = 0x300000001;
    v111 = &unk_1F4CDF248;
    v114 = v115;
    memset(v115, 0, 24);
    v48.n128_u64[1] = 0x100000003;
    v112 = xmmword_1D0E7F310;
    v121 = 0x300000001;
    v119 = &unk_1F4CDF248;
    v122 = v123;
    memset(v123, 0, 24);
    v120 = xmmword_1D0E7F310;
    if (v47 == v46)
    {
      v48.n128_u64[0] = 0;
LABEL_94:
      v97 = 0x300000001;
      *v96 = &unk_1F4CDF248;
      *&v96[8] = xmmword_1D0E7F310;
      v98 = &v99;
      v102 = 0x300000001;
      v100 = &unk_1F4CDF248;
      v101 = xmmword_1D0E7F310;
      v103 = &v104;
      v95 = v48.n128_f64[0];
      v87 = 0x300000001;
      v77 = 1.0 / v45;
      v85 = &unk_1F4CDF248;
      v86 = xmmword_1D0E7F310;
      v88 = v89;
      v48.n128_f64[0] = v77;
      sub_1D0B8930C(&v111, &v85, v48);
      if (v118)
      {
        v92 = 0x300000001;
        v90 = &unk_1F4CDF248;
        v91 = xmmword_1D0E7F310;
        v93 = v94;
        sub_1D0B89390(&v85, v117, &v90);
        sub_1D0B894B0(v96, &v90);
        v87 = 0x300000001;
        v85 = &unk_1F4CDF248;
        *&v78.f64[1] = 0x100000003;
        v86 = xmmword_1D0E7F310;
        v88 = v89;
        v78.f64[0] = v77;
        sub_1D0B8930C(&v119, &v85, v78);
        if (v118)
        {
          v92 = 0x300000001;
          v90 = &unk_1F4CDF248;
          v91 = xmmword_1D0E7F310;
          v93 = v94;
          sub_1D0B89390(&v85, v117, &v90);
          sub_1D0B894B0(&v100, &v90);
          operator new();
        }

        sub_1D0C42F28();
      }

      sub_1D0C42F28();
    }

    while (1)
    {
      v49 = *(v47 + 40);
      if (!v49)
      {
        goto LABEL_85;
      }

      v50 = *(a2 + 24);
      v51 = *(a2 + 28);
      v52 = v47 + 40;
      do
      {
        v53 = *(v49 + 56);
        v16 = v53 == v50;
        v54 = v53 > v50;
        if (v16)
        {
          v54 = *(v49 + 60) > v51;
        }

        v55 = !v54;
        if (v54)
        {
          v56 = 8;
        }

        else
        {
          v56 = 0;
        }

        if (v55)
        {
          v52 = v49;
        }

        v49 = *(v49 + v56);
      }

      while (v49);
      if (v52 == v47 + 40)
      {
        goto LABEL_85;
      }

      v57 = *(v52 + 56);
      v58 = *(v52 + 60) < v51;
      v16 = v57 == v50;
      v59 = v57 < v50;
      if (v16)
      {
        v59 = v58;
      }

      if (v59)
      {
        goto LABEL_85;
      }

      sub_1D0E0977C(&v95, v52 + 64);
      if (*&v96[8] == v24[6])
      {
        v60 = *v96;
        if (*v96 == &v95)
        {
LABEL_80:
          sub_1D0BCC0B4(&v95);
          if (*(v52 + 128))
          {
            v62 = *(v52 + 136) - *(v52 + 64);
            v63 = *(v52 + 144) - *(v52 + 72);
            v64 = *(v52 + 152) - *(v52 + 80);
            v65 = *(v52 + 160) - sqrt(v63 * v63 + v62 * v62 + v64 * v64);
          }

          else
          {
            v65 = 0.0;
          }

          v95 = v65;
          sub_1D0B8954C(v105, &v95, 1.0);
          *&v96[16] = 0x300000001;
          *v96 = xmmword_1D0E7F310;
          v95 = COERCE_DOUBLE(&unk_1F4CDF248);
          v97 = &v98;
          sub_1D0B88838(&v111, v52 + 168, &v95);
          sub_1D0B894B0(&v111, &v95);
          *&v96[16] = 0x300000001;
          *v96 = xmmword_1D0E7F310;
          v95 = COERCE_DOUBLE(&unk_1F4CDF248);
          v97 = &v98;
          sub_1D0B88838(&v111, v52 + 232, &v95);
          v48 = sub_1D0B894B0(&v119, &v95);
          goto LABEL_85;
        }

        v61 = v24 + 4;
        while (1)
        {
          v61 = v61[1];
          if (*(v60 + 2) != v61[2])
          {
            break;
          }

          v60 = *(v60 + 1);
          if (v60 == &v95)
          {
            goto LABEL_80;
          }
        }
      }

      sub_1D0BCC0B4(&v95);
LABEL_85:
      v47 += 56;
      if (v47 == v46)
      {
        v48.n128_u64[0] = *&v107[1];
        goto LABEL_94;
      }
    }
  }

  v117[0] = 0;
  v118 = 0;
  LOWORD(v95) = 12;
  LOBYTE(v111) = 4;
  v34 = sub_1D0C460E0(a2);
  v36 = v35;
  sub_1D0BCFAB8(a2);
  v80 = v36 + v34;
  cnprint::CNPrinter::Print(&v95, &v111, "#nlos,time,%.3lf,%s could not get ECEF-to-ENU rotation matrix", v37, v38, v39, v40, v41, SLOBYTE(v80));
  return 0;
}

char *raven::RavenNLOSEngine::HandleEvent(char *this, const raven::RavenSolutionEvent *a2)
{
  if (this[8] == 1 && *(a2 + 209) == 2 && *(a2 + 208) == 4 && *(a2 + 1464) != 0 && *(a2 + 1264) != 0)
  {
    v6 = this;
    if (this[3120] == 1)
    {
      v7 = this + 472;
      v8 = a2 + 8;

      return memcpy(v7, v8, 0xA51uLL);
    }

    else
    {
      *(this + 58) = &unk_1F4CEF7A8;
      this = memcpy(this + 472, a2 + 8, 0xA51uLL);
      v6[3120] = 1;
    }
  }

  return this;
}

void raven::RavenNLOSEngine::HandleEvent(raven::RavenNLOSEngine *this, const raven::RayTracingTileEvent *a2)
{
  if (*(this + 8))
  {
    if ((*(*this + 3664) & 1) == 0)
    {
      CoreNavigation::CLP::LogEntry::LogEntry::LogEntry(v216);
      v4 = wireless_diagnostics::google::protobuf::MessageLite::ParseFromString();
      if (v4)
      {
        if ((v218 & 2) != 0)
        {
          v26 = v217;
          if (!v217)
          {
            operator new();
          }

          *(v217 + 320) |= 0x20u;
          v27 = *(v26 + 304);
          if (!v27)
          {
            operator new();
          }

          if ((*(v27 + 36) & 2) != 0)
          {
            v28 = *(v27 + 16);
            if (!v28)
            {
              CoreNavigation::CLP::LogEntry::RayTracingTileData::protobuf_AddDesc_CoreNavigationCLPRayTracingTileData_2eproto(v4);
              v28 = *(CoreNavigation::CLP::LogEntry::RayTracingTileData::LogEntry::default_instance_ + 16);
            }

            if (*(v28 + 212))
            {
              v43 = *(v27 + 16);
              if (!v43)
              {
                CoreNavigation::CLP::LogEntry::RayTracingTileData::protobuf_AddDesc_CoreNavigationCLPRayTracingTileData_2eproto(v4);
                v43 = *(CoreNavigation::CLP::LogEntry::RayTracingTileData::LogEntry::default_instance_ + 16);
              }

              v44 = *(v43 + 8);
              if (!v44)
              {
                CoreNavigation::CLP::LogEntry::RayTracingTileData::protobuf_AddDesc_CoreNavigationCLPRayTracingTileData_2eproto(v4);
                v44 = *(CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTilePayload::default_instance_ + 8);
              }

              v45 = *(v44 + 72);
              if (v45)
              {
                v53 = *(v44 + 8);
                v54 = *(this + 420);
                if (!v54)
                {
                  goto LABEL_35;
                }

                v55 = (this + 3360);
                do
                {
                  v56 = v54[4];
                  v57 = v56 >= v53;
                  v58 = v56 < v53;
                  if (v57)
                  {
                    v55 = v54;
                  }

                  v54 = v54[v58];
                }

                while (v54);
                if (v55 != (this + 3360) && v53 >= v55[4])
                {
                  if (cnprint::CNPrinter::GetLogLevel(v4) <= 1)
                  {
                    LOWORD(v219[0]) = 12;
                    LOBYTE(v215) = 1;
                    v83 = (*(*a2 + 16))(a2);
                    v199 = *(v44 + 8);
                    v185 = v84 + v83;
                    cnprint::CNPrinter::Print(v219, &v215, "#nlos,time,%.3lf,RT tile already exist, skip the incoming, tile centroid ID,%llu", v85, v86, v87, v88, v89, SLOBYTE(v185));
                  }
                }

                else
                {
LABEL_35:
                  v59 = HIDWORD(v53) * 0.000001 + -90.0;
                  v60 = v53 * 0.000001;
                  if (v60 <= 180.0)
                  {
                    v61 = v53 * 0.000001;
                  }

                  else
                  {
                    v61 = v60 + -360.0;
                  }

                  if (v59 <= -90.0 || v59 > 90.0)
                  {
                    LOWORD(v219[0]) = 12;
                    LOBYTE(v215) = 4;
                    v69 = (*(*a2 + 16))(a2);
                    v212 = *(v44 + 8);
                    v183 = v70 + v69;
                    cnprint::CNPrinter::Print(v219, &v215, "#nlos,time,%.3lf,Cannot handle RT tile: Invalid tile centroid latitude,%12.7f, tile centroid ID,%llu", v71, v72, v73, v74, v75, SLOBYTE(v183));
                  }

                  else if (v61 <= -180.0 || v61 > 180.0)
                  {
                    LOWORD(v219[0]) = 12;
                    LOBYTE(v215) = 4;
                    v76 = (*(*a2 + 16))(a2);
                    v213 = *(v44 + 8);
                    v184 = v77 + v76;
                    cnprint::CNPrinter::Print(v219, &v215, "#nlos,time,%.3lf,Cannot handle RT tile: Invalid tile centroid longitude,%12.7f, tile centroid ID,%llu", v78, v79, v80, v81, v82, SLOBYTE(v184));
                  }

                  else if ((v45 & 4) != 0)
                  {
                    if ((v45 & 8) != 0)
                    {
                      if ((v45 & 0x20) != 0)
                      {
                        if ((v45 & 0x40) != 0)
                        {
                          if ((v45 & 0x80) != 0)
                          {
                            if ((v45 & 0x100) != 0 && *(v44 + 44))
                            {
                              if ((v45 & 0x200) != 0 && *(v44 + 48))
                              {
                                if ((v45 & 0x400) != 0 && *(v44 + 52))
                                {
                                  if ((v45 & 0x800) != 0 && *(v44 + 56))
                                  {
                                    if ((v45 & 0x1000) != 0 && *(v44 + 60))
                                    {
                                      if ((v45 & 0x2000) != 0 && *(v44 + 64))
                                      {
                                        if (fabs(*(v44 + 28) + -1000000.0) < 2.22044605e-16)
                                        {
                                          if (cnprint::CNPrinter::GetLogLevel(v4) <= 1)
                                          {
                                            LOWORD(v219[0]) = 12;
                                            LOBYTE(v215) = 1;
                                            v118 = (*(*a2 + 16))(a2);
                                            v214 = (*(this + 427) - *(this + 426)) >> 3;
                                            v204 = *(v44 + 8);
                                            v190 = v119 + v118;
                                            cnprint::CNPrinter::Print(v219, &v215, "#nlos,time,%.3lf,Added RT tile with hash ID,%llu, centroid %12.7f, %12.7f, number of tiles in database %zu", v120, v121, v122, v123, v124, SLOBYTE(v190));
                                          }

                                          v219[0] = *(v44 + 8);
                                          v125 = sub_1D0DEA3B0(this + 3352, v219);
                                          *(this + 429) = *(v44 + 32);
                                          if (!*(v27 + 16))
                                          {
                                            CoreNavigation::CLP::LogEntry::RayTracingTileData::protobuf_AddDesc_CoreNavigationCLPRayTracingTileData_2eproto(v125);
                                            v126 = *(CoreNavigation::CLP::LogEntry::RayTracingTileData::LogEntry::default_instance_ + 16);
                                          }

                                          sub_1D0E059AC();
                                        }

                                        LOWORD(v219[0]) = 12;
                                        LOBYTE(v215) = 4;
                                        v169 = (*(*a2 + 16))(a2);
                                        v211 = *(v44 + 8);
                                        v197 = v170 + v169;
                                        cnprint::CNPrinter::Print(v219, &v215, "#nlos,time,%.3lf,Cannot handle RT tile: mismatch in scale factor value used for generating GeoHashID, tile centroid ID,%llu", v171, v172, v173, v174, v175, SLOBYTE(v197));
                                      }

                                      else
                                      {
                                        LOWORD(v219[0]) = 12;
                                        LOBYTE(v215) = 4;
                                        v162 = (*(*a2 + 16))(a2);
                                        v210 = *(v44 + 8);
                                        v196 = v163 + v162;
                                        cnprint::CNPrinter::Print(v219, &v215, "#nlos,time,%.3lf,Cannot handle RT tile: number of bits corresponding to facet number, tile centroid ID,%llu", v164, v165, v166, v167, v168, SLOBYTE(v196));
                                      }
                                    }

                                    else
                                    {
                                      LOWORD(v219[0]) = 12;
                                      LOBYTE(v215) = 4;
                                      v155 = (*(*a2 + 16))(a2);
                                      v209 = *(v44 + 8);
                                      v195 = v156 + v155;
                                      cnprint::CNPrinter::Print(v219, &v215, "#nlos,time,%.3lf,Cannot handle RT tile: number of bits corresponding to section number, tile centroid ID,%llu", v157, v158, v159, v160, v161, SLOBYTE(v195));
                                    }
                                  }

                                  else
                                  {
                                    LOWORD(v219[0]) = 12;
                                    LOBYTE(v215) = 4;
                                    v148 = (*(*a2 + 16))(a2);
                                    v208 = *(v44 + 8);
                                    v194 = v149 + v148;
                                    cnprint::CNPrinter::Print(v219, &v215, "#nlos,time,%.3lf,Cannot handle RT tile: Missing or zero sample locations in tile, tile centroid ID,%llu", v150, v151, v152, v153, v154, SLOBYTE(v194));
                                  }
                                }

                                else
                                {
                                  LOWORD(v219[0]) = 12;
                                  LOBYTE(v215) = 4;
                                  v141 = (*(*a2 + 16))(a2);
                                  v207 = *(v44 + 8);
                                  v193 = v142 + v141;
                                  cnprint::CNPrinter::Print(v219, &v215, "#nlos,time,%.3lf,Cannot handle RT tile: Missing or zero visible facets in tile, tile centroid ID,%llu", v143, v144, v145, v146, v147, SLOBYTE(v193));
                                }
                              }

                              else
                              {
                                LOWORD(v219[0]) = 12;
                                LOBYTE(v215) = 4;
                                v134 = (*(*a2 + 16))(a2);
                                v206 = *(v44 + 8);
                                v192 = v135 + v134;
                                cnprint::CNPrinter::Print(v219, &v215, "#nlos,time,%.3lf,Cannot handle RT tile: Missing or zero visible building sections in tile, tile centroid ID,%llu", v136, v137, v138, v139, v140, SLOBYTE(v192));
                              }
                            }

                            else
                            {
                              LOWORD(v219[0]) = 12;
                              LOBYTE(v215) = 4;
                              v127 = (*(*a2 + 16))(a2);
                              v205 = *(v44 + 8);
                              v191 = v128 + v127;
                              cnprint::CNPrinter::Print(v219, &v215, "#nlos,time,%.3lf,Cannot handle RT tile: Missing or zero visible buildings in tile, tile centroid ID,%llu", v129, v130, v131, v132, v133, SLOBYTE(v191));
                            }
                          }

                          else
                          {
                            LOWORD(v219[0]) = 12;
                            LOBYTE(v215) = 4;
                            v111 = (*(*a2 + 16))(a2);
                            v203 = *(v44 + 8);
                            v189 = v112 + v111;
                            cnprint::CNPrinter::Print(v219, &v215, "#nlos,time,%.3lf,Cannot handle RT tile: Missing max reflection depth used for tile generation, tile centroid ID,%llu", v113, v114, v115, v116, v117, SLOBYTE(v189));
                          }
                        }

                        else
                        {
                          LOWORD(v219[0]) = 12;
                          LOBYTE(v215) = 4;
                          v104 = (*(*a2 + 16))(a2);
                          v202 = *(v44 + 8);
                          v188 = v105 + v104;
                          cnprint::CNPrinter::Print(v219, &v215, "#nlos,time,%.3lf,Cannot handle RT tile: Missing max distance used for facet visibility determination, tile centroid ID,%llu", v106, v107, v108, v109, v110, SLOBYTE(v188));
                        }
                      }

                      else
                      {
                        LOWORD(v219[0]) = 12;
                        LOBYTE(v215) = 4;
                        v97 = (*(*a2 + 16))(a2);
                        v201 = *(v44 + 8);
                        v187 = v98 + v97;
                        cnprint::CNPrinter::Print(v219, &v215, "#nlos,time,%.3lf,Cannot handle RT tile: Missing tile samples location spacing, tile centroid ID,%llu", v99, v100, v101, v102, v103, SLOBYTE(v187));
                      }
                    }

                    else
                    {
                      LOWORD(v219[0]) = 12;
                      LOBYTE(v215) = 4;
                      v90 = (*(*a2 + 16))(a2);
                      v200 = *(v44 + 8);
                      v186 = v91 + v90;
                      cnprint::CNPrinter::Print(v219, &v215, "#nlos,time,%.3lf,Cannot handle RT tile: Missing tile longitude span, tile centroid ID,%llu", v92, v93, v94, v95, v96, SLOBYTE(v186));
                    }
                  }

                  else
                  {
                    LOWORD(v219[0]) = 12;
                    LOBYTE(v215) = 4;
                    v62 = (*(*a2 + 16))(a2);
                    v198 = *(v44 + 8);
                    v182 = v63 + v62;
                    cnprint::CNPrinter::Print(v219, &v215, "#nlos,time,%.3lf,Cannot handle RT tile: Missing tile latitude span, tile centroid ID,%llu", v64, v65, v66, v67, v68, SLOBYTE(v182));
                  }
                }
              }

              else
              {
                LOWORD(v219[0]) = 12;
                LOBYTE(v215) = 4;
                v46 = (*(*a2 + 16))(a2);
                v181 = v47 + v46;
                cnprint::CNPrinter::Print(v219, &v215, "#nlos,time,%.3lf,Cannot handle RT tile: Missing tile centroid geohash ID", v48, v49, v50, v51, v52, SLOBYTE(v181));
              }
            }

            else
            {
              LOWORD(v219[0]) = 12;
              LOBYTE(v215) = 4;
              v29 = (*(*a2 + 16))(a2);
              v179 = v30 + v29;
              cnprint::CNPrinter::Print(v219, &v215, "#nlos,time,%.3lf,Cannot handle RT tile: Missing RT tile Meta Data", v31, v32, v33, v34, v35, SLOBYTE(v179));
            }
          }

          else
          {
            LOWORD(v219[0]) = 12;
            LOBYTE(v215) = 4;
            v36 = (*(*a2 + 16))(a2);
            v180 = v37 + v36;
            cnprint::CNPrinter::Print(v219, &v215, "#nlos,time,%.3lf,Cannot handle RT tile: Missing RT tile payload data", v38, v39, v40, v41, v42, SLOBYTE(v180));
          }
        }

        else
        {
          LOWORD(v219[0]) = 12;
          LOBYTE(v215) = 4;
          v5 = (*(*a2 + 16))(a2);
          v176 = v6 + v5;
          cnprint::CNPrinter::Print(v219, &v215, "#nlos,time,%.3lf,cannot handle RT tile: Missing serialized RT tile data in the LogEntry", v7, v8, v9, v10, v11, SLOBYTE(v176));
        }
      }

      else
      {
        LOWORD(v219[0]) = 12;
        LOBYTE(v215) = 4;
        v19 = (*(*a2 + 16))(a2);
        v178 = v20 + v19;
        cnprint::CNPrinter::Print(v219, &v215, "#nlos,time,%.3lf,cannot handle RT tile: Failed to parse incoming tile LogEntry", v21, v22, v23, v24, v25, SLOBYTE(v178));
      }

      CoreNavigation::CLP::LogEntry::LogEntry::~LogEntry(v216);
    }
  }

  else if (cnprint::CNPrinter::GetLogLevel(this) <= 1)
  {
    LOWORD(v219[0]) = 12;
    v216[0] = 1;
    v12 = (*(*a2 + 16))(a2);
    v177 = v13 + v12;
    cnprint::CNPrinter::Print(v219, v216, "#nlos,time,%.3lf, RavenNLOSEngine not configured", v14, v15, v16, v17, v18, SLOBYTE(v177));
  }
}