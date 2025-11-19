uint64_t raven::RavenDeltaVIOEstimateActiveObject::VIOUserCourseTurnDetection(uint64_t a1, uint64_t a2, uint64_t a3, int8x16_t a4, int8x16_t a5)
{
  v8 = *a2;
  v9 = *(a2 + 8);
  *a4.i64 = v9;
  v10 = *a3;
  v11 = *(a3 + 8);
  *a5.i64 = v11;
  if (*a2)
  {
    v12 = 1;
  }

  else
  {
    v12 = (*&v9 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL;
  }

  if (v12 && (v10 || (*&v11 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL) && v8 != v10)
  {
    if (v8 < v10)
    {
      return 0;
    }
  }

  else if (v9 <= v11)
  {
    return 0;
  }

  v79 = *a2;
  *&v80 = v9;
  v74 = v10;
  *&v75 = v11;
  v13 = CNTimeSpan::operator-(&v79, &v74, a4, a5);
  v15 = v14 + v13;
  if (v15 < *(a1 + 10072))
  {
    return 1;
  }

  v91 = 0x100000003;
  v90 = xmmword_1D0E7DCC0;
  v89 = &unk_1F4CDEB28;
  v92 = &v93;
  sub_1D0BA5A78(a2 + 232, a3 + 232, &v89);
  v16 = v92;
  v18 = *v92;
  v17 = *(v92 + 1);
  v19 = hypot(*v92, v17);
  if (v19 < 1.0 || v19 > fabs(v15 * 2.5) * 3.0 || fabs(v18) <= 0.005 && fabs(v17) <= 0.005)
  {
    *(a1 + 264) = 0;
    return 1;
  }

  *(a1 + 264) = 1;
  v21 = atan2(v18, v17);
  if (v21 >= 0.0)
  {
    v22 = v21;
  }

  else
  {
    v22 = v21 + 6.28318531;
  }

  v86 = 0x200000001;
  v85 = xmmword_1D0E84500;
  v84 = &unk_1F4CECB50;
  v87 = v88;
  v88[0] = v17 / (v19 * v19);
  v88[1] = -*v16 / (v19 * v19);
  v81 = 0x300000003;
  v80 = xmmword_1D0E76C10;
  v79 = &unk_1F4CD5DD0;
  v82 = &v83;
  sub_1D0B88838(a2 + 408, a3 + 408, &v79);
  if ((atomic_load_explicit(&qword_1EE055040, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE055040))
  {
    v76 = 0x200000001;
    v74 = &unk_1F4CE2060;
    v77 = &v78;
    v75 = xmmword_1D0E84500;
    v78 = 0x100000000;
    sub_1D0D751D4(&v74, &unk_1EE055048);
    __cxa_atexit(sub_1D0D7527C, &unk_1EE055048, &dword_1D0B71000);
    __cxa_guard_release(&qword_1EE055040);
  }

  sub_1D0E3CBB4(&v79, &unk_1EE055048, &unk_1EE055048, &v74);
  v66 = 0x200000001;
  __p = &unk_1F4CECB50;
  v65 = xmmword_1D0E84500;
  v67 = &v68;
  sub_1D0B89390(&v84, &v74, &__p);
  v24 = v85;
  v23 = DWORD1(v85);
  v61 = 0x100000002;
  v56 = &unk_1F4CE0220;
  v62 = v63;
  v57 = DWORD1(v85);
  v58 = v85;
  v59 = v85 * DWORD1(v85);
  v60 = DWORD1(v85);
  if (DWORD1(v85))
  {
    v25 = 0;
    v26 = 0;
    v27 = HIDWORD(v85);
    v28 = v87;
    do
    {
      v29 = v25;
      v30 = v26;
      for (i = v24; i; --i)
      {
        v63[v30] = *&v28[v29];
        v30 += v23;
        ++v29;
      }

      ++v26;
      v25 += v27;
    }

    while (v26 != v23);
  }

  v71 = 0x100000001;
  v69 = &unk_1F4CDF418;
  *&v32 = 0x100000001;
  *(&v32 + 1) = 0x100000001;
  v70 = v32;
  v72 = &v73;
  v33 = sub_1D0B89390(&__p, &v56, &v69);
  v34 = *v72 & 0x7FFFFFFFFFFFFFFFLL;
  if ((*v72 <= -1 || (v34 - 0x10000000000000) >> 53 >= 0x3FF) && (*v72 - 1) >= 0xFFFFFFFFFFFFFLL)
  {
    v37 = v34 == 0;
    *v72;
  }

  else
  {
    v37 = 1;
  }

  if (v37)
  {
    v38 = sqrt(*v72);
    if (v38 <= 1.57079633)
    {
      if (v38 >= 0.785398163 || (*(a1 + 464) & 1) != 0)
      {
        if (!*(a1 + 464))
        {
          return 1;
        }

        v39 = *(a1 + 456);
      }

      else
      {
        *(a1 + 456) = v22;
        *(a1 + 464) = 1;
        v39 = v22;
      }

      v40 = vabdd_f64(v22, v39);
      if (6.28318531 - v40 < v40)
      {
        v40 = 6.28318531 - v40;
      }

      v41 = *(a1 + 248);
      if (v41 > 0.0)
      {
        v41 = -v41;
      }

      v42 = *(a1 + 472);
      if (v40 + v41 <= 0.261799388)
      {
        if (v42 < 2)
        {
          goto LABEL_55;
        }

        v43 = -1;
      }

      else
      {
        v43 = 1;
      }

      v42 += v43;
      *(a1 + 472) = v42;
LABEL_55:
      v45 = v40 + v41 > 0.785398163 && v42 > 2;
      if (v42 > 4 || v45)
      {
        if (cnprint::CNPrinter::GetLogLevel(v33) <= 1)
        {
          LOWORD(v56) = 12;
          LOBYTE(v69) = 1;
          (*(*a1 + 16))(&__p, a1);
          if ((*(a1 + 464) & 1) == 0)
          {
            sub_1D0C42F28();
          }

          v51 = *(a2 + 8) + *a2;
          p_p = &__p;
          if (v65 < 0)
          {
            LOBYTE(p_p) = __p;
          }

          v55 = *(a1 + 472);
          v54 = *(a1 + 248) * 57.2957795;
          v53 = *(a1 + 456) * 57.2957795;
          cnprint::CNPrinter::Print(&v56, &v69, "%s: VIO t,%.3lf dt_time,%.3lf VIO user turn detected, init course,%.3lf, change in course,%.3lf, accum_yaw_corr,%.3lf, [deg] VIO delta position,%.3lf, score%u", v46, v47, v48, v49, v50, p_p);
          if (SHIBYTE(v65) < 0)
          {
            operator delete(__p);
          }
        }

        *(a1 + 476) = 0;
        *(a1 + 472) = 0;
        if (*(a1 + 464) == 1)
        {
          *(a1 + 464) = 0;
        }

        sub_1D0B894B0(a1 + 376, a2 + 232);
        *(a1 + 248) = 0;
      }

      return 1;
    }
  }

  return 0;
}

void raven::RavenDeltaVIOEstimateActiveObject::HandleEvent(raven::RavenDeltaVIOEstimateActiveObject *this, const raven::VLLocalizationEvent *a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x1EEE9AC00](this, a2, a3, a4);
  if (*(v4 + 224) != 1)
  {
    return;
  }

  v6 = v5;
  if (*(v5 + 1080) != 1)
  {
    return;
  }

  v7 = v4;
  v8 = v4 + 6448;
  v9 = (v5 + 1080);
  v10 = v4 + 5816;
  if (*(v4 + 6920) == 1)
  {
    v11 = *(v5 + 8);
    v12 = *(v5 + 24);
    v13 = *(v5 + 40);
    *(v4 + 5872) = *(v5 + 56);
    *(v4 + 5856) = v13;
    *(v4 + 5840) = v12;
    *(v4 + 5824) = v11;
    v14 = *(v5 + 72);
    v15 = *(v5 + 88);
    v16 = *(v5 + 104);
    *(v4 + 5936) = *(v5 + 120);
    *(v4 + 5920) = v16;
    *(v4 + 5904) = v15;
    *(v4 + 5888) = v14;
    v17 = *(v5 + 136);
    v18 = *(v5 + 152);
    v19 = *(v5 + 168);
    *(v4 + 6000) = *(v5 + 184);
    *(v4 + 5984) = v19;
    *(v4 + 5968) = v18;
    *(v4 + 5952) = v17;
    if (v10 != v5)
    {
      *(v4 + 6016) = *(v5 + 200);
      *(v4 + 6032) = *(v5 + 216);
    }

    sub_1D0B894B0(v4 + 6048, v5 + 232);
    sub_1D0B894B0(v7 + 6112, v6 + 296);
    sub_1D0B894B0(v7 + 6224, v6 + 408);
    sub_1D0B894B0(v7 + 6336, v6 + 520);
    *v8 = *(v6 + 632);
    if (v10 != v6)
    {
      *(v8 + 8) = *(v6 + 640);
      *(v8 + 24) = *(v6 + 656);
    }

    sub_1D0B894B0(v7 + 6488, v6 + 672);
    sub_1D0B894B0(v7 + 6552, v6 + 736);
    sub_1D0B894B0(v7 + 6664, v6 + 848);
    sub_1D0B894B0(v7 + 6776, v6 + 960);
    *(v8 + 440) = *(v6 + 1072);
    v20 = *v9;
    *(v7 + 6912) = *(v6 + 1096);
    *(v7 + 6896) = v20;
  }

  else
  {
    *(v4 + 5816) = &unk_1F4CEE150;
    v21 = *(v5 + 8);
    v22 = *(v5 + 24);
    v23 = *(v5 + 40);
    *(v4 + 5872) = *(v5 + 56);
    *(v4 + 5856) = v23;
    *(v4 + 5840) = v22;
    *(v4 + 5824) = v21;
    v24 = *(v5 + 72);
    v25 = *(v5 + 88);
    v26 = *(v5 + 104);
    *(v4 + 5936) = *(v5 + 120);
    *(v4 + 5920) = v26;
    *(v4 + 5904) = v25;
    *(v4 + 5888) = v24;
    v27 = *(v5 + 136);
    v28 = *(v5 + 152);
    v29 = *(v5 + 168);
    *(v4 + 6000) = *(v5 + 184);
    *(v4 + 5984) = v29;
    *(v4 + 5968) = v28;
    *(v4 + 5952) = v27;
    *(v4 + 6016) = 0u;
    *(v4 + 6032) = 0u;
    if (v10 != v5)
    {
      *(v4 + 6016) = *(v5 + 200);
      *(v4 + 6032) = *(v5 + 216);
    }

    sub_1D0BBA094(v4 + 6048, v5 + 232);
    sub_1D0BE0DE8(v7 + 6112, v6 + 296);
    sub_1D0BE0DE8(v7 + 6224, v6 + 408);
    sub_1D0BE0DE8(v7 + 6336, v6 + 520);
    *v8 = *(v6 + 632);
    *(v8 + 8) = 0u;
    *(v8 + 24) = 0u;
    if (v10 != v6)
    {
      *(v8 + 8) = *(v6 + 640);
      *(v8 + 24) = *(v6 + 656);
    }

    sub_1D0BBA094(v7 + 6488, v6 + 672);
    sub_1D0BE0DE8(v7 + 6552, v6 + 736);
    sub_1D0BE0DE8(v7 + 6664, v6 + 848);
    sub_1D0BE0DE8(v7 + 6776, v6 + 960);
    *(v8 + 440) = *(v6 + 1072);
    v30 = *v9;
    *(v7 + 6912) = *(v6 + 1096);
    *(v7 + 6896) = v30;
    *(v8 + 472) = 1;
  }

  if (!*(v7 + 10120))
  {
LABEL_31:
    *(v7 + 480) = 0;
    return;
  }

  v105[1] = 0;
  v105[0] = 0;
  v106 = 0;
  v108 = 0;
  v107 = 0;
  v109 = 0;
  v111 = 0;
  v110 = 0;
  v112 = 0;
  v114 = 0;
  v113 = 0;
  v117 = 0;
  v115 = 0x7FF8000000000000;
  v116 = 0;
  v118 = 0;
  v120 = 0;
  v119 = 0;
  v121 = 0;
  v123 = 0;
  v122 = 0;
  v124 = 0;
  v125 = 0;
  v126 = 0;
  v127 = 0x7FF8000000000000;
  v128 = 0;
  cntransformation::CNRigidTransformation::CNRigidTransformation(v129);
  cntransformation::CNRigidTransformation::CNRigidTransformation(v131);
  v136 = 0;
  v137 = 0;
  *__p = *(v6 + 104);
  v32 = raven::RavenDeltaVIOEstimateActiveObject::SynchronizeVIOdataTo(v7, __p, v105, *__p, v31);
  if ((v32 & 1) == 0)
  {
    if (cnprint::CNPrinter::GetLogLevel(v32) <= 1)
    {
      LOWORD(v102[0]) = 12;
      v91[0] = 1;
      (*(*v7 + 16))(__p, v7);
      v42 = v104;
      v43 = __p[0];
      (*(*v6 + 16))(v6);
      v49 = __p;
      if (v42 < 0)
      {
        LOBYTE(v49) = v43;
      }

      v58 = *(v6 + 112) + *(v6 + 104);
      cnprint::CNPrinter::Print(v102, v91, "%s, vl_evt_t,%.3lf vl_app_t,%.3lf for VL sample there is no corresponding VIO to use or interpolate.", v44, v45, v46, v47, v48, v49);
      if (v104 < 0)
      {
        operator delete(__p[0]);
      }
    }

    goto LABEL_31;
  }

  cntransformation::Cat(v131, v129, __p);
  cntransformation::CNRigidTransformation::CNRigidTransformation(v102);
  v95 = 0x300000003;
  v93 = &unk_1F4CD5DD0;
  v96 = v97;
  v94 = xmmword_1D0E76C10;
  v97[0] = 0;
  v99 = 0;
  *&v100[8] = 0u;
  v98 = 0u;
  v101 = 0;
  v97[1] = 0x3FF0000000000000;
  __asm { FMOV            V0.2D, #1.0 }

  *v100 = _Q0;
  sub_1D0D260A4(v92, &v93);
  v102[0] = v92[0];
  v102[1] = v92[1];
  cntransformation::Cat((v6 + 200), v102, v91);
  cntransformation::Cat(v91, __p, v84);
  if ((v8 + 1576) != v84)
  {
    v38 = *&v84[16];
    *(v8 + 1576) = *v84;
    *(v8 + 1592) = v38;
  }

  sub_1D0B894B0(v7 + 8056, &v85);
  sub_1D0B894B0(v7 + 8120, v87);
  sub_1D0B894B0(v7 + 8232, v88);
  sub_1D0B894B0(v7 + 8344, v89);
  *(v8 + 2008) = v90;
  *(v7 + 478) = 1;
  *v84 = v131[0];
  *&v84[16] = v131[1];
  sub_1D0BBA094(&v85, &v132);
  sub_1D0BE0DE8(v87, &v133);
  sub_1D0BE0DE8(v88, &v134);
  sub_1D0BE0DE8(v89, v135);
  v90 = v135[112];
  cntransformation::Inv(v84, v77);
  sub_1D0B894B0(v7 + 9848, &v78);
  v74 = 0x100000003;
  v72 = &unk_1F4CDEB28;
  v75 = v76;
  v73 = xmmword_1D0E7DCC0;
  memset(v76, 0, sizeof(v76));
  sub_1D0B894B0(&v85, &v72);
  cntransformation::Cat(v91, v84, &v66);
  if ((v8 + 2456) != &v66)
  {
    v39 = v67;
    *(v8 + 2456) = v66;
    *(v8 + 2472) = v39;
  }

  sub_1D0B894B0(v7 + 8936, &v68);
  sub_1D0B894B0(v7 + 9000, &v69);
  sub_1D0B894B0(v7 + 9112, &v70);
  sub_1D0B894B0(v7 + 9224, v71);
  *(v8 + 2888) = v71[112];
  *(v7 + 480) = 1;
  sub_1D0B894B0(v7 + 9784, v7 + 8056);
  *(v7 + 476) = 1;
  sub_1D0BD2CA4(&v66, **(v7 + 8088), *(*(v7 + 8088) + 8), *(*(v7 + 8088) + 16));
  if (BYTE8(v66))
  {
    sub_1D0B894B0(v7 + 9912, &v67);
    *(v7 + 477) = 1;
    v74 = 0x100000003;
    v73 = xmmword_1D0E7DCC0;
    v72 = &unk_1F4CDEB28;
    v75 = v76;
    sub_1D0B89390(v7 + 9912, v7 + 8056, &v72);
    sub_1D0D260A4(v65, v7 + 9912);
    cntransformation::CNRigidTransformation::CNRigidTransformation(v84);
    *v84 = v65[0];
    *&v84[16] = v65[1];
    v62 = 0x100000003;
    v60 = &unk_1F4CDEB28;
    v61 = xmmword_1D0E7DCC0;
    v63 = &v64;
    sub_1D0B89390(v7 + 9912, v7 + 8056, &v60);
    *&v77[24] = 0x100000003;
    *&v77[8] = xmmword_1D0E7DCC0;
    *v77 = &unk_1F4CDEB28;
    v78 = &v79;
    sub_1D0BA5A78(&v72, &v60, v77);
    sub_1D0B894B0(&v85, v77);
    cntransformation::Cat(v84, (v8 + 1576), v77);
    if ((v7 + 8464) != v77)
    {
      v40 = *&v77[16];
      *(v7 + 8464) = *v77;
      *(v7 + 8480) = v40;
    }

    sub_1D0B894B0(v7 + 8496, &v78);
    sub_1D0B894B0(v7 + 8560, v80);
    sub_1D0B894B0(v7 + 8672, v81);
    sub_1D0B894B0(v7 + 8784, v82);
    *(v8 + 2448) = v83;
    *(v7 + 479) = 1;
    *&v84[24] = 0x100000003;
    *v84 = &unk_1F4CDEB28;
    *&v84[8] = xmmword_1D0E7DCC0;
    v85 = &v86;
    sub_1D0BA5A78(v130, v7 + 9848, v84);
    sub_1D0B894B0(v130, v84);
    cntransformation::Inv(v129, v84);
    cntransformation::Cat((v7 + 8464), v84, v77);
    if ((v7 + 9344) != v77)
    {
      v41 = *&v77[16];
      *(v7 + 9344) = *v77;
      *(v7 + 9360) = v41;
    }

    sub_1D0B894B0(v7 + 9376, &v78);
    sub_1D0B894B0(v7 + 9440, v80);
    sub_1D0B894B0(v7 + 9552, v81);
    sub_1D0B894B0(v7 + 9664, v82);
    *(v8 + 3328) = v83;
  }

  else
  {
    *v77 = 12;
    LOBYTE(v72) = 2;
    (*(*v7 + 16))(v84, v7);
    v50 = v84[23];
    v51 = v84[0];
    (*(*v6 + 16))(v6);
    v57 = v84;
    if (v50 < 0)
    {
      LOBYTE(v57) = v51;
    }

    v59 = *(v6 + 112) + *(v6 + 104);
    cnprint::CNPrinter::Print(v77, &v72, "%s, vl_evt_t,%.3lf vl_app_t,%.3lf, VLF position Jecef2enu computation failed.", v52, v53, v54, v55, v56, v57);
    if ((v84[23] & 0x80000000) != 0)
    {
      operator delete(*v84);
    }
  }
}

uint64_t raven::RavenDeltaVIOEstimateActiveObject::SynchronizeVIOdataTo(cnprint::CNPrinter *a1, double *a2, uint64_t a3, int8x16_t a4, int8x16_t a5)
{
  v5 = *(a1 + 1265);
  if (!v5)
  {
    return 0;
  }

  if (v5 == 1)
  {
    v9 = *(*(a1 + 1261) + ((*(a1 + 1264) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 1088 * (*(a1 + 1264) & 0xFLL);
    v10 = *(v9 + 8);
    v111[0].i64[0] = *v9;
    v111[0].i64[1] = v10;
    v11 = CNTimeSpan::operator-(a2, v111, a4, a5);
    if (fabs(v12 + v11) > 0.001)
    {
      if (cnprint::CNPrinter::GetLogLevel(v11) > 1)
      {
        return 0;
      }

      LOWORD(v106) = 12;
      LOBYTE(v115) = 1;
      (*(*a1 + 16))(__p, a1);
      CNTimeSpan::operator-(a2, v111, v13, v14);
      LOBYTE(v20) = __p[0];
      v21 = a2[1] + *a2;
      if (v113 >= 0)
      {
        v20 = __p;
      }

      cnprint::CNPrinter::Print(&v106, &v115, "%s, The only VIO sample is not time aligned to sync time, tsync,%.3lf vio_at,%.3lf dt,%.3lf, tol,%.3lf", v15, v16, v17, v18, v19, v20);
LABEL_28:
      if (v113 < 0)
      {
        v54 = __p[0];
LABEL_30:
        operator delete(v54);
      }

      return 0;
    }

    *a3 = *v9;
    v55 = *(v9 + 16);
    v56 = *(v9 + 32);
    v57 = *(v9 + 64);
    *(a3 + 48) = *(v9 + 48);
    *(a3 + 64) = v57;
    *(a3 + 16) = v55;
    *(a3 + 32) = v56;
    v58 = *(v9 + 80);
    v59 = *(v9 + 96);
    v60 = *(v9 + 128);
    *(a3 + 112) = *(v9 + 112);
    *(a3 + 128) = v60;
    *(a3 + 80) = v58;
    *(a3 + 96) = v59;
    v61 = *(v9 + 144);
    v62 = *(v9 + 160);
    v63 = *(v9 + 176);
    *(a3 + 192) = *(v9 + 192);
    *(a3 + 160) = v62;
    *(a3 + 176) = v63;
    *(a3 + 144) = v61;
    if (v9 != a3)
    {
      *(a3 + 200) = *(v9 + 200);
      *(a3 + 216) = *(v9 + 216);
    }

    sub_1D0B894B0(a3 + 232, v9 + 232);
    sub_1D0B894B0(a3 + 296, v9 + 296);
    sub_1D0B894B0(a3 + 408, v9 + 408);
    sub_1D0B894B0(a3 + 520, v9 + 520);
    *(a3 + 632) = *(v9 + 632);
    if (v9 != a3)
    {
      *(a3 + 640) = *(v9 + 640);
      *(a3 + 656) = *(v9 + 656);
    }

    sub_1D0B894B0(a3 + 672, v9 + 672);
    sub_1D0B894B0(a3 + 736, v9 + 736);
    sub_1D0B894B0(a3 + 848, v9 + 848);
    sub_1D0B894B0(a3 + 960, v9 + 960);
    *(a3 + 1072) = *(v9 + 1072);
    v64 = *(v9 + 1080);
    *(a3 + 1082) = *(v9 + 1082);
    *(a3 + 1080) = v64;
    if ((raven::RavenDeltaVIOEstimateActiveObject::ApplyDefaultUncertaintyInflation(v65, a3) & 1) == 0)
    {
      v66 = (a1 + 10080);
LABEL_37:
      sub_1D0E3EEAC(v66);
      return 0;
    }

    return 1;
  }

  v22 = *(a1 + 1264);
  v23 = *(a1 + 1261);
  v115 = *(*(v23 + (((v5 + v22 - 1) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 1088 * ((v5 + v22 - 1) & 0xF));
  v114 = *(*(v23 + ((v22 >> 1) & 0x7FFFFFFFFFFFFFF8)) + 1088 * (v22 & 0xF));
  v24 = sub_1D0B8E6A8(a2, &v114);
  if (!v24 || !(v24 = sub_1D0B9D420(a2, &v115)))
  {
    if (cnprint::CNPrinter::GetLogLevel(v24) > 1)
    {
      return 0;
    }

    v111[0].i16[0] = 12;
    LOBYTE(v106) = 1;
    (*(*a1 + 16))(__p, a1);
    if (v113 >= 0)
    {
      v53 = __p;
    }

    else
    {
      LOBYTE(v53) = __p[0];
    }

    v104 = a2[1] + *a2;
    cnprint::CNPrinter::Print(v111, &v106, "%s, For the given sync time there is no corresponding VIO to use or interpolate, tsync,%.3lf oldest_VIO,%.3lf latest_VIO,%.3lf", v48, v49, v50, v51, v52, v53);
    goto LABEL_28;
  }

  v27 = CNTimeSpan::operator-(a2, &v114, v25, v26);
  *v29.i64 = v28;
  *v30.i64 = fabs(v28 + v27);
  if (*v30.i64 <= 0.001)
  {
    v68 = *(*(a1 + 1261) + ((*(a1 + 1264) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 1088 * (*(a1 + 1264) & 0xFLL);
    v69 = *(v68 + 64);
    v71 = *(v68 + 16);
    v70 = *(v68 + 32);
    *(a3 + 48) = *(v68 + 48);
    *(a3 + 64) = v69;
    *(a3 + 16) = v71;
    *(a3 + 32) = v70;
    v72 = *(v68 + 128);
    v74 = *(v68 + 80);
    v73 = *(v68 + 96);
    *(a3 + 112) = *(v68 + 112);
    *(a3 + 128) = v72;
    *(a3 + 80) = v74;
    *(a3 + 96) = v73;
    v76 = *(v68 + 160);
    v75 = *(v68 + 176);
    v77 = *(v68 + 144);
    *(a3 + 192) = *(v68 + 192);
    *(a3 + 160) = v76;
    *(a3 + 176) = v75;
    *(a3 + 144) = v77;
    *a3 = *v68;
    if (v68 != a3)
    {
      *(a3 + 200) = *(v68 + 200);
      *(a3 + 216) = *(v68 + 216);
    }

    sub_1D0B894B0(a3 + 232, v68 + 232);
    sub_1D0B894B0(a3 + 296, v68 + 296);
    sub_1D0B894B0(a3 + 408, v68 + 408);
    sub_1D0B894B0(a3 + 520, v68 + 520);
    *(a3 + 632) = *(v68 + 632);
    if (v68 != a3)
    {
      *(a3 + 640) = *(v68 + 640);
      *(a3 + 656) = *(v68 + 656);
    }

    sub_1D0B894B0(a3 + 672, v68 + 672);
    sub_1D0B894B0(a3 + 736, v68 + 736);
    sub_1D0B894B0(a3 + 848, v68 + 848);
    sub_1D0B894B0(a3 + 960, v68 + 960);
    *(a3 + 1072) = *(v68 + 1072);
    v79 = *(v68 + 1080);
    *(a3 + 1082) = *(v68 + 1082);
    *(a3 + 1080) = v79;
LABEL_46:
    if ((raven::RavenDeltaVIOEstimateActiveObject::ApplyDefaultUncertaintyInflation(v78, a3) & 1) == 0)
    {
      v82 = CNTimeSpan::operator-(&v115, a2, v80, v81);
      v84 = fabs(v83 + v82);
      v66 = (a1 + 10080);
      if (v84 > 0.001)
      {
        sub_1D0E3F070(v66);
        return 0;
      }

      goto LABEL_37;
    }

    return 1;
  }

  *v31.i64 = CNTimeSpan::operator-(&v115, a2, v30, v29);
  v33 = *(a1 + 1264);
  if (fabs(v32 + *v31.i64) <= 0.001)
  {
    v78 = sub_1D0E43B8C(a3, *(*(a1 + 1261) + (((v33 + *(a1 + 1265) - 1) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 1088 * ((v33 + *(a1 + 2530) - 1) & 0xF));
    goto LABEL_46;
  }

  v34 = *(a1 + 1261);
  v35 = *(a1 + 1262);
  if (v35 == v34)
  {
    return 0;
  }

  v36 = (v33 >> 1) & 0x7FFFFFFFFFFFFFF8;
  v37 = (v34 + v36);
  v38 = *(a1 + 1264) & 0xFLL;
  v39 = (*(v34 + v36) + 1088 * v38);
  v40 = *(a1 + 1265) + v33;
  v41 = (v40 >> 1) & 0x7FFFFFFFFFFFFFF8;
  v42 = v40 & 0xF;
  if ((*(v34 + v41) + 1088 * v42) != v39)
  {
    v43 = v42 | (2 * (v41 - v36));
    v44 = v43 - v38;
    if (v43 != v38)
    {
      do
      {
        v45 = v44 >> 1;
        v111[0].i64[0] = v37;
        v111[0].i64[1] = v39;
        sub_1D0E441E0(v111, v44 >> 1);
        *__p = *v111[0].i64[1];
        if (sub_1D0B7C8AC(__p, a2))
        {
          v37 = v111[0].i64[0];
          v39 = (v111[0].i64[1] + 1088);
          v111[0].i64[1] = v39;
          if ((v39 - *v111[0].i64[0]) == 17408)
          {
            v37 = (v111[0].i64[0] + 8);
            v39 = *(v111[0].i64[0] + 8);
          }

          v45 = v44 + ~v45;
        }

        v44 = v45;
      }

      while (v45);
      v34 = *(a1 + 1261);
      v35 = *(a1 + 1262);
    }
  }

  if (v35 == v34)
  {
    v47 = 0;
  }

  else
  {
    v46 = *(a1 + 1265) + *(a1 + 1264);
    v47 = *(v34 + ((v46 >> 1) & 0x7FFFFFFFFFFFFFF8)) + 1088 * (v46 & 0xF);
  }

  if (v47 == v39)
  {
    return 0;
  }

  *__p = *v39;
  v85 = CNTimeSpan::operator-(a2, __p, *__p, v31);
  if (fabs(v86 + v85) <= 0.001)
  {
    v88 = sub_1D0E43B8C(a3, v39);
    return raven::RavenDeltaVIOEstimateActiveObject::ApplyDefaultUncertaintyInflation(v88, a3);
  }

  __p[0] = v37;
  __p[1] = v39;
  sub_1D0E441E0(__p, -1);
  v87 = v35 == v34 ? 0 : (*(v34 + ((*(a1 + 1264) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 1088 * (*(a1 + 1264) & 0xFLL));
  if (v87 == __p[1])
  {
    return 0;
  }

  sub_1D0E3F45C(__p, v39);
  *&v106 = v37;
  *(&v106 + 1) = v39;
  sub_1D0E441E0(&v106, -1);
  sub_1D0E3F45C(v111, *(&v106 + 1));
  v89 = *(*(a1 + 29) + 3200);
  v106 = *__p;
  v110 = v111[0];
  v91 = CNTimeSpan::operator-(&v106, &v110, v111[0], v90);
  if (v92 + v91 > v89)
  {
    if (cnprint::CNPrinter::GetLogLevel(v91) > 1)
    {
      return 0;
    }

    v109 = 12;
    v108 = 1;
    (*(*a1 + 16))(&v106, a1);
    v93 = v107;
    v94 = v106;
    v96 = *a2;
    v95 = *(a2 + 1);
    v110 = *__p;
    v105 = v111[0];
    CNTimeSpan::operator-(&v110, &v105, v111[0], v97);
    if (v93 >= 0)
    {
      v103 = &v106;
    }

    else
    {
      LOBYTE(v103) = v94;
    }

    cnprint::CNPrinter::Print(&v109, &v108, "%s, tsync,%.3lf For the given sync time there is large gaps in VIO data to interpolate, dt,%.3lf > %.3lf", v98, v99, v100, v101, v102, v103);
    if ((v107 & 0x80000000) == 0)
    {
      return 0;
    }

    v54 = v106;
    goto LABEL_30;
  }

  result = raven::RavenDeltaVIOEstimateActiveObject::ApplyDefaultUncertaintyInflation(v91, v111);
  if (result)
  {
    result = raven::RavenDeltaVIOEstimateActiveObject::ApplyDefaultUncertaintyInflation(result, __p);
    if (result)
    {
      sub_1D0E43B8C(a3, __p);
      result = raven::RavenDeltaVIOEstimateActiveObject::InterpolateVIOdata(a1, a2, v111[0].i64, __p, a3);
      if (result)
      {
        *(a3 + 48) = 0u;
        *(a3 + 64) = 0u;
        *(a3 + 16) = 0u;
        *(a3 + 32) = 0u;
        *a3 = 0u;
        *(a3 + 80) = 0;
        *(a3 + 88) = 0x7FF8000000000000;
        *a3 = *a2;
        result = 1;
        *(a3 + 1082) = 1;
      }
    }
  }

  return result;
}

void sub_1D0E43204(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t raven::RavenDeltaVIOEstimateActiveObject::InterpolateVIOdata(cnprint::CNPrinter *a1, double *a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  *v52 = *a3;
  if (!sub_1D0B7C8AC(a2, v52))
  {
    *v48 = *a4;
    if (!sub_1D0B7CF88(a2, v48))
    {
      v13 = *a4;
      v12 = a4[1];
      *v52 = *a4;
      *&v52[8] = v12;
      v14 = *a3;
      v15 = a3[1];
      *v48 = *a3;
      *&v48[8] = v15;
      v16 = CNTimeSpan::operator-(v52, v48, v10, v11);
      v18 = v17 + v16;
      *v19.i64 = fabs(v18);
      v20.i64[0] = 0x3CB0000000000000;
      if (*v19.i64 >= 2.22044605e-16)
      {
        *v52 = v13;
        *&v52[8] = v12;
        *v21.i64 = CNTimeSpan::operator-(v52, a2, v19, v20);
        *v23.i64 = v22 + *v21.i64;
        v24 = (v22 + *v21.i64) / v18;
        *v52 = v14;
        *&v52[8] = v15;
        v25 = CNTimeSpan::operator-(a2, v52, v23, v21);
        v27 = (v26 + v25) / v18;
        v53 = 0x100000003;
        *&v28.f64[1] = 0x300000003;
        *&v52[8] = xmmword_1D0E7DCC0;
        *v52 = &unk_1F4CDEB28;
        v54 = v55;
        v28.f64[0] = v24;
        sub_1D0B8930C((a3 + 29), v52, v28);
        v49 = 0x100000003;
        *&v29.f64[1] = 0x300000003;
        *&v48[8] = xmmword_1D0E7DCC0;
        *v48 = &unk_1F4CDEB28;
        v50 = v51;
        v29.f64[0] = v27;
        sub_1D0B8930C((a4 + 29), v48, v29);
        v65 = 0x100000003;
        v63 = &unk_1F4CDEB28;
        v64 = xmmword_1D0E7DCC0;
        v66 = &v67;
        sub_1D0B88838(v52, v48, &v63);
        sub_1D0B894B0(a5 + 232, &v63);
        v61 = 0uLL;
        *&v62 = 0;
        *(&v62 + 1) = 0x3FF0000000000000;
        if (!cnrotation::Slerp((a3 + 25), (a4 + 25), &v61, v27, 8))
        {
          if ((a5 + 200) != &v61)
          {
            v30 = v62;
            *(a5 + 200) = v61;
            *(a5 + 216) = v30;
          }

          cnrotation::Inv((a3 + 25), v52);
          cnrotation::Cat((a5 + 200), v52, &v57);
          cnrotation::CNRotation::RotationMatrix(&v57, v47);
          v49 = 0x300000003;
          *&v48[8] = xmmword_1D0E76C10;
          *v48 = &unk_1F4CD5DD0;
          v50 = v51;
          sub_1D0B89390(v47, (a3 + 37), v48);
          v31 = sqrt(v58 * v58 + v57 * v57 + v59 * v59 + v60 * v60);
          if (fabs(v31) >= 2.22044605e-16)
          {
            v33 = -v57 / v31;
            v34 = -v58 / v31;
            v35 = -v59 / v31;
            v32 = v60 / v31;
          }

          else
          {
            v32 = 1.0;
            v33 = 0.0;
            v34 = 0.0;
            v35 = 0.0;
          }

          *v45 = v33;
          *&v45[1] = v34;
          *&v45[2] = v35;
          *&v45[3] = v32;
          cnrotation::CNRotation::RotationMatrix(v45, v46);
          v53 = 0x300000003;
          *&v52[8] = xmmword_1D0E76C10;
          *v52 = &unk_1F4CD5DD0;
          v54 = v55;
          sub_1D0B89390(v48, v46, v52);
          if (cntransformation::CNRigidTransformation::SetPrr(a5 + 200, v52))
          {
            cnrotation::CNRotation::RotationMatrix(&v57, v48);
            v53 = 0x300000003;
            *&v52[8] = xmmword_1D0E76C10;
            *v52 = &unk_1F4CD5DD0;
            v54 = v55;
            sub_1D0B89390(v48, (a3 + 65), v52);
            if (*&v52[8] == 0x300000003)
            {
              sub_1D0B894B0(a5 + 520, v52);
              *(a5 + 632) = 1;
            }

            v53 = 0x300000003;
            *v52 = &unk_1F4CD5DD0;
            v54 = v55;
            *&v52[8] = xmmword_1D0E76C10;
            memset(v55, 0, sizeof(v55));
            v56 = 0;
            if (raven::RavenDeltaVIOEstimateActiveObject::ComputeSigmaCorrelationMatrixFromCovariance(a1, (a3 + 51), v52))
            {
              sub_1D0BFA9C4(3, 3, v48);
              if (raven::RavenDeltaVIOEstimateActiveObject::ComputeSigmaCorrelationMatrixFromCovariance(a1, (a4 + 51), v48))
              {
                v36.f64[0] = v24;
                sub_1D0C51778(v52, v46, v36);
                v37.f64[0] = v27;
                sub_1D0C51778(v48, v45, v37);
                sub_1D0D4C358(v46, v45, v47);
                sub_1D0BFA9C4(3, 3, v46);
                result = raven::RavenDeltaVIOEstimateActiveObject::ComputeCovarianceFromSigmaCorrelationMatrix(a1, v47, v46);
                if (!result)
                {
                  return result;
                }

                if (cntransformation::CNRigidTransformation::SetPpp(a5 + 200, v46))
                {
                  if (*(a3 + 1081) == 1 && *(a4 + 1081) == 1)
                  {
                    v39.f64[0] = v24;
                    sub_1D0C51FB4((a3 + 84), &v43, v39);
                    v40.f64[0] = v27;
                    sub_1D0C51FB4((a4 + 84), v42, v40);
                    sub_1D0D6F584(&v43, v42, v45);
                    sub_1D0B894B0(a5 + 672, v45);
                    v43 = 0uLL;
                    *&v44 = 0;
                    *(&v44 + 1) = 0x3FF0000000000000;
                    if (cnrotation::Slerp((a3 + 80), (a4 + 80), &v43, v27, 8))
                    {
                      return 0;
                    }

                    if ((a5 + 640) != &v43)
                    {
                      v41 = v44;
                      *(a5 + 640) = v43;
                      *(a5 + 656) = v41;
                    }
                  }

                  return 1;
                }
              }
            }
          }
        }
      }
    }
  }

  return 0;
}

BOOL raven::RavenDeltaVIOEstimateActiveObject::IsVIOEstimateSensible(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 440);
  if ((*v2 < 0 || ((*v2 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE) && (*v2 - 1) > 0xFFFFFFFFFFFFELL)
  {
    return 0;
  }

  v6 = *(a2 + 428);
  v7 = &v2[v6];
  v8 = v7[1];
  v9 = v8 < 0 || ((v8 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE;
  if (v9 && (v8 - 1) > 0xFFFFFFFFFFFFELL)
  {
    return 0;
  }

  v11 = &v2[2 * v6];
  v12 = v11[2];
  v13 = v12 < 0 || ((v12 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE;
  if (v13 && (v12 - 1) > 0xFFFFFFFFFFFFELL)
  {
    return 0;
  }

  if ((*v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  if ((v2[((2 * v6) | 1)] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  if ((*v11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v35 = INFINITY;
  v32 = 0x300000003;
  v30 = &unk_1F4CD5DD0;
  v31 = xmmword_1D0E76C10;
  v33 = &v34;
  v48 = 0x100000003;
  v47 = xmmword_1D0E7DCC0;
  v46 = &unk_1F4CDEAA0;
  v49 = &v50;
  v43 = 0x100000003;
  v42 = xmmword_1D0E7DCC0;
  v41 = &unk_1F4CDEAA0;
  v44 = &v45;
  v38 = 0x10000000CLL;
  v37 = xmmword_1D0E83DD0;
  v36 = &unk_1F4CDFFF8;
  v39 = &v40;
  v16 = sub_1D0BA5174(a2 + 408, &v46, &v41, &v36, &v30);
  v35 = v16;
  if ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || v16 > *(a1 + 10128))
  {
    return 0;
  }

  v17 = *(a2 + 328);
  v18 = *v17 < 0 || ((*v17 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE;
  if (v18 && (*v17 - 1) > 0xFFFFFFFFFFFFELL)
  {
    return 0;
  }

  v20 = *(a2 + 316);
  v21 = &v17[v20];
  v22 = v21[1];
  v23 = v22 < 0 || ((v22 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE;
  if (v23 && (v22 - 1) > 0xFFFFFFFFFFFFELL)
  {
    return 0;
  }

  v25 = &v17[2 * v20];
  v26 = v25[2];
  v27 = v26 < 0 || ((v26 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE;
  if (v27 && (v26 - 1) > 0xFFFFFFFFFFFFELL)
  {
    return 0;
  }

  if ((*v21 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  if ((v17[((2 * v20) | 1)] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  if ((*v25 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  sub_1D0D4BAFC(a2 + 296, &v35, &v36);
  sub_1D0B894B0(&v30, &v36);
  return (*&v35 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && v35 <= *(a1 + 10128);
}

uint64_t sub_1D0E43B8C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 32);
  v6 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v6;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  v7 = *(a2 + 80);
  v8 = *(a2 + 96);
  v9 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v9;
  *(a1 + 80) = v7;
  *(a1 + 96) = v8;
  v10 = *(a2 + 144);
  v11 = *(a2 + 160);
  v12 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 160) = v11;
  *(a1 + 176) = v12;
  *(a1 + 144) = v10;
  if (a1 != a2)
  {
    *(a1 + 200) = *(a2 + 200);
    *(a1 + 216) = *(a2 + 216);
  }

  sub_1D0B894B0(a1 + 232, a2 + 232);
  sub_1D0B894B0(a1 + 296, a2 + 296);
  sub_1D0B894B0(a1 + 408, a2 + 408);
  sub_1D0B894B0(a1 + 520, a2 + 520);
  *(a1 + 632) = *(a2 + 632);
  if (a1 != a2)
  {
    *(a1 + 640) = *(a2 + 640);
    *(a1 + 656) = *(a2 + 656);
  }

  sub_1D0B894B0(a1 + 672, a2 + 672);
  sub_1D0B894B0(a1 + 736, a2 + 736);
  sub_1D0B894B0(a1 + 848, a2 + 848);
  sub_1D0B894B0(a1 + 960, a2 + 960);
  *(a1 + 1072) = *(a2 + 1072);
  v13 = *(a2 + 1080);
  *(a1 + 1082) = *(a2 + 1082);
  *(a1 + 1080) = v13;
  return a1;
}

void raven::RavenDeltaVIOEstimateActiveObject::Reset(raven::RavenDeltaVIOEstimateActiveObject *this)
{
  *(this + 240) = 0;
  *(this + 31) = 0;
  *(this + 32) = 0;
  *(this + 264) = 0;
  if (*(this + 280) == 1)
  {
    *(this + 280) = 0;
  }

  if (*(this + 296) == 1)
  {
    *(this + 296) = 0;
  }

  if (*(this + 312) == 1)
  {
    *(this + 312) = 0;
  }

  if (*(this + 328) == 1)
  {
    *(this + 328) = 0;
  }

  if (*(this + 352) == 1)
  {
    *(this + 352) = 0;
  }

  if (*(this + 368) == 1)
  {
    *(this + 368) = 0;
  }

  v16 = 0x100000003;
  v14 = &unk_1F4CDEB28;
  v15 = xmmword_1D0E7DCC0;
  v17 = &v18;
  v18 = 0uLL;
  *&v19 = 0;
  sub_1D0B894B0(this + 376, &v14);
  if (*(this + 448) == 1)
  {
    *(this + 448) = 0;
  }

  v2 = this + 5808;
  if (*(this + 464) == 1)
  {
    *(this + 464) = 0;
  }

  *(this + 480) = 0;
  *(this + 59) = 0;
  if (*(this + 3144) == 1)
  {
    *(this + 3144) = 0;
  }

  if (*v2 == 1)
  {
    *v2 = 0;
  }

  v3 = this + 10040;
  if (*(this + 6920) == 1)
  {
    raven::VLLocalizationEvent::~VLLocalizationEvent((this + 5816));
    *(this + 6920) = 0;
  }

  if (*(this + 8016) == 1)
  {
    *(this + 986) = &unk_1F4CD5E28;
    *(this + 972) = &unk_1F4CD5E28;
    *(this + 958) = &unk_1F4CD5E28;
    *(this + 950) = &unk_1F4CD5E28;
    *(this + 931) = &unk_1F4CD5E28;
    *(this + 917) = &unk_1F4CD5E28;
    *(this + 903) = &unk_1F4CD5E28;
    *(this + 895) = &unk_1F4CD5E28;
    *(this + 8016) = 0;
  }

  sub_1D0D2D7D8(this + 8024);
  sub_1D0D2D7D8(this + 8464);
  sub_1D0D2D7D8(this + 8904);
  sub_1D0D2D7D8(this + 9344);
  v16 = 0x100000003;
  v14 = &unk_1F4CDEB28;
  v15 = xmmword_1D0E7DCC0;
  v17 = &v18;
  v18 = 0uLL;
  *&v19 = 0;
  sub_1D0B894B0(this + 9784, &v14);
  v16 = 0x100000003;
  v14 = &unk_1F4CDEB28;
  v15 = xmmword_1D0E7DCC0;
  v17 = &v18;
  v18 = 0uLL;
  *&v19 = 0;
  sub_1D0B894B0(this + 9848, &v14);
  v16 = 0x300000003;
  v14 = &unk_1F4CD5DD0;
  v17 = &v18;
  v15 = xmmword_1D0E76C10;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0;
  sub_1D0B894B0(this + 9912, &v14);
  if (*v3 == 1)
  {
    *v3 = 0;
  }

  if (*(this + 10064) == 1)
  {
    *(this + 10064) = 0;
  }

  v4 = *(this + 1261);
  v5 = *(this + 1262);
  if (v5 == v4)
  {
    v9 = (this + 10120);
    v5 = *(this + 1261);
  }

  else
  {
    v6 = *(this + 1264);
    v7 = &v4[v6 >> 4];
    v8 = *v7 + 1088 * (v6 & 0xF);
    v9 = (this + 10120);
    v10 = *(v4 + (((*(this + 1265) + v6) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 1088 * ((*(this + 2530) + v6) & 0xF);
    if (v8 != v10)
    {
      do
      {
        sub_1D0E44254(v8);
        v8 += 1088;
        if (v8 - *v7 == 17408)
        {
          v11 = v7[1];
          ++v7;
          v8 = v11;
        }
      }

      while (v8 != v10);
      v5 = *(this + 1262);
      v4 = *(this + 1261);
    }
  }

  *v9 = 0;
  v12 = v5 - v4;
  if (v12 >= 3)
  {
    do
    {
      operator delete(*v4);
      v4 = (*(this + 1261) + 8);
      *(this + 1261) = v4;
      v12 = (*(this + 1262) - v4) >> 3;
    }

    while (v12 > 2);
  }

  if (v12 == 1)
  {
    v13 = 8;
    goto LABEL_42;
  }

  if (v12 == 2)
  {
    v13 = 16;
LABEL_42:
    *(this + 1264) = v13;
  }

  *(this + 128) = 0;
  *(this + 17) = 0;
  *(this + 18) = 0x7FF8000000000000;
  *(this + 19) = 0;
  *(this + 105) = 0;
  *(this + 14) = 0;
  *(this + 15) = 0x7FF8000000000000;
  cnframework::ActiveObjectBase::ResetEventQueue(this);
}

void sub_1D0E441A8(void *a1)
{
  sub_1D0DC7490(a1);

  JUMPOUT(0x1D387ECA0);
}

uint64_t **sub_1D0E441E0(uint64_t **result, uint64_t a2)
{
  if (a2)
  {
    v2 = *result;
    v3 = a2 - 0xF0F0F0F0F0F0F0FLL * ((result[1] - **result) >> 6);
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

    result[1] = (v5 + 1088 * v6);
  }

  return result;
}

void *sub_1D0E44254(void *result)
{
  result[120] = &unk_1F4CD5E28;
  result[106] = &unk_1F4CD5E28;
  result[92] = &unk_1F4CD5E28;
  result[84] = &unk_1F4CD5E28;
  result[65] = &unk_1F4CD5E28;
  result[51] = &unk_1F4CD5E28;
  result[37] = &unk_1F4CD5E28;
  result[29] = &unk_1F4CD5E28;
  return result;
}

BOOL sub_1D0E44358(void *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  if (v1 == v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = 2 * (v1 - v2) - 1;
  }

  v4 = v3 - (a1[5] + a1[4]);
  if (v4 >= 0x20)
  {
    operator delete(*(v1 - 8));
    a1[2] -= 8;
  }

  return v4 > 0x1F;
}

void *sub_1D0E443C0(void *result, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = a4;
  v7 = a2;
  if (a2 != a3)
  {
    v30 = result;
    v8 = *a4;
    v9 = a3;
    while (1)
    {
      v10 = 0xF0F0F0F0F0F0F0F1 * ((a5 - v8) >> 6);
      if ((0xF0F0F0F0F0F0F0F1 * ((v9 - v7) >> 6)) >= v10)
      {
        v11 = v10;
      }

      else
      {
        v11 = 0xF0F0F0F0F0F0F0F1 * ((v9 - v7) >> 6);
      }

      if (v11)
      {
        v12 = 0;
        do
        {
          v13 = a5 + v12;
          v14 = v9 + v12;
          v15 = a5 + v12 - 1088;
          *v15 = *(v9 + v12 - 1088);
          v16 = *(v9 + v12 - 1072);
          v17 = *(v9 + v12 - 1056);
          v18 = *(v9 + v12 - 1024);
          *(v15 + 48) = *(v9 + v12 - 1040);
          *(v15 + 64) = v18;
          *(v15 + 16) = v16;
          *(v15 + 32) = v17;
          v19 = *(v9 + v12 - 1008);
          v20 = *(v9 + v12 - 992);
          v21 = *(v9 + v12 - 960);
          *(v15 + 112) = *(v9 + v12 - 976);
          *(v15 + 128) = v21;
          *(v15 + 80) = v19;
          *(v15 + 96) = v20;
          v22 = *(v9 + v12 - 944);
          v23 = *(v9 + v12 - 928);
          v24 = *(v9 + v12 - 912);
          *(v15 + 192) = *(v9 + v12 - 896);
          *(v15 + 160) = v23;
          *(v15 + 176) = v24;
          *(v15 + 144) = v22;
          if (v9 != a5)
          {
            *(v13 - 888) = *(v14 - 888);
            *(v13 - 872) = *(v14 - 872);
          }

          sub_1D0B894B0(v13 - 856, v14 - 856);
          sub_1D0B894B0(v13 - 792, v14 - 792);
          sub_1D0B894B0(v13 - 680, v14 - 680);
          sub_1D0B894B0(v13 - 568, v14 - 568);
          *(v13 - 456) = *(v14 - 456);
          if (v14 != v13)
          {
            *(a5 + v12 - 448) = *(v9 + v12 - 448);
            *(a5 + v12 - 432) = *(v9 + v12 - 432);
          }

          v25 = a5 + v12;
          sub_1D0B894B0(a5 + v12 - 416, v9 + v12 - 416);
          sub_1D0B894B0(a5 + v12 - 352, v9 + v12 - 352);
          sub_1D0B894B0(a5 + v12 - 240, v9 + v12 - 240);
          sub_1D0B894B0(a5 + v12 - 128, v9 + v12 - 128);
          *(v25 - 16) = *(v9 + v12 - 16);
          v26 = *(v9 + v12 - 8);
          *(v25 - 6) = *(v9 + v12 - 6);
          *(v25 - 8) = v26;
          v12 -= 1088;
        }

        while (-1088 * v11 != v12);
        a5 += v12;
      }

      v9 -= 1088 * v11;
      if (v9 == v7)
      {
        break;
      }

      v27 = *--v6;
      v8 = v27;
      a5 = v27 + 17408;
    }

    if (*v6 + 17408 == a5)
    {
      v28 = v6[1];
      ++v6;
      a5 = v28;
    }

    v7 = a3;
    result = v30;
  }

  *result = v7;
  result[1] = v6;
  result[2] = a5;
  return result;
}

void *sub_1D0E445EC(void *result, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = a4;
  v7 = a2;
  if (a2 == a3)
  {
    v12 = a2;
    goto LABEL_19;
  }

  v28 = result;
  v9 = *a4;
  while (1)
  {
    v10 = 0xF0F0F0F0F0F0F0F1 * ((v9 - a5 + 17408) >> 6);
    if ((0xF0F0F0F0F0F0F0F1 * ((a3 - v7) >> 6)) < v10)
    {
      v10 = 0xF0F0F0F0F0F0F0F1 * ((a3 - v7) >> 6);
    }

    if (v10)
    {
      break;
    }

LABEL_14:
    v26 = v6[1];
    ++v6;
    v9 = v26;
    a5 = v26;
  }

  v11 = 0;
  v12 = v7 + 1088 * v10;
  do
  {
    v13 = v7 + v11;
    v14 = a5 + v11;
    *v14 = *(v7 + v11);
    v15 = *(v7 + v11 + 16);
    v16 = *(v7 + v11 + 32);
    v17 = *(v7 + v11 + 64);
    *(v14 + 48) = *(v7 + v11 + 48);
    *(v14 + 64) = v17;
    *(v14 + 16) = v15;
    *(v14 + 32) = v16;
    v18 = *(v7 + v11 + 80);
    v19 = *(v7 + v11 + 96);
    v20 = *(v7 + v11 + 128);
    *(v14 + 112) = *(v7 + v11 + 112);
    *(v14 + 128) = v20;
    *(v14 + 80) = v18;
    *(v14 + 96) = v19;
    v21 = *(v7 + v11 + 144);
    v22 = *(v7 + v11 + 160);
    v23 = *(v7 + v11 + 176);
    *(v14 + 192) = *(v7 + v11 + 192);
    *(v14 + 160) = v22;
    *(v14 + 176) = v23;
    *(v14 + 144) = v21;
    if (a5 != v7)
    {
      *(v14 + 200) = *(v13 + 200);
      *(v14 + 216) = *(v13 + 216);
    }

    sub_1D0B894B0(v14 + 232, v13 + 232);
    sub_1D0B894B0(v14 + 296, v13 + 296);
    sub_1D0B894B0(v14 + 408, v13 + 408);
    sub_1D0B894B0(v14 + 520, v13 + 520);
    *(v14 + 632) = *(v13 + 632);
    if (v14 != v13)
    {
      v24 = a5 + v11;
      *(v24 + 640) = *(v7 + v11 + 640);
      *(v24 + 656) = *(v7 + v11 + 656);
    }

    sub_1D0B894B0(v14 + 672, v13 + 672);
    sub_1D0B894B0(v14 + 736, v13 + 736);
    sub_1D0B894B0(v14 + 848, v13 + 848);
    sub_1D0B894B0(v14 + 960, v13 + 960);
    *(v14 + 1072) = *(v13 + 1072);
    v25 = *(v13 + 1080);
    *(v14 + 1082) = *(v13 + 1082);
    *(v14 + 1080) = v25;
    v11 += 1088;
  }

  while (v13 + 1088 != v12);
  if (v12 != a3)
  {
    v7 = v12;
    goto LABEL_14;
  }

  a5 += v11;
  if (a5 == *v6 + 17408)
  {
    v27 = v6[1];
    ++v6;
    a5 = v27;
  }

  result = v28;
LABEL_19:
  *result = v12;
  result[1] = v6;
  result[2] = a5;
  return result;
}

swan::BatchedGNSSDataSmoother *swan::BatchedGNSSDataSmoother::BatchedGNSSDataSmoother(swan::BatchedGNSSDataSmoother *this)
{
  *this = &unk_1F4CF02B0;
  sub_1D0B751F4(this + 8, &unk_1D0ED80C5);
  *this = &unk_1F4CF0250;
  *(this + 33) = 0;
  *(this + 35) = 0;
  *(this + 291) = 0;
  *(this + 274) = 0;
  *(this + 805) = 0;
  *(this + 1062) = 0;
  *(this + 659) = 0;
  *(this + 1575) = 0;
  *(this + 197) = 0x4014000000000000;
  *(this + 99) = xmmword_1D0EC1580;
  *(this + 100) = xmmword_1D0EC1590;
  *(this + 101) = xmmword_1D0EC15A0;
  *(this + 204) = 0x4006A09E667F3BCCLL;
  return this;
}

uint64_t sub_1D0E448C0(uint64_t a1)
{
  *a1 = &unk_1F4CF02B0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_1D0E44934(uint64_t a1, uint64_t a2, char a3)
{
  v3 = a1;
  v38[19] = *MEMORY[0x1E69E9840];
  *(a1 + 32) = a3;
  sub_1D0C541CC(v36);
  v9 = v36[0];
  if ((v37[*(v36[0] - 24) + 16] & 5) != 0)
  {
    LOWORD(__str.__r_.__value_.__l.__data_) = 0;
    v33.__r_.__value_.__s.__data_[0] = 2;
    cnprint::CNPrinter::Print(&__str, &v33, "ConfigLoader: could not open config file, using default values", v4, v5, v6, v7, v8, v31);
  }

  else
  {
    v10 = (v3 + 8);
    v32 = v3;
    if (*(v3 + 31) < 0)
    {
      *(v3 + 16) = 0;
      v11 = *(v3 + 8);
    }

    else
    {
      *(v3 + 31) = 0;
      v11 = (v3 + 8);
    }

    *v11 = 0;
    memset(&__str, 0, sizeof(__str));
    v12 = MEMORY[0x1E69E5318];
    while (1)
    {
      std::ios_base::getloc((v36 + *(v9 - 24)));
      v13 = std::locale::use_facet(&v33, v12);
      v14 = (v13->__vftable[2].~facet_0)(v13, 10);
      std::locale::~locale(&v33);
      v15 = sub_1D0D44808(v36, &__str, v14);
      v16 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      LOBYTE(v17) = *(&__str.__r_.__value_.__s + 23);
      if ((*(v15 + *(*v15 - 24) + 32) & 5) != 0)
      {
        break;
      }

      size = __str.__r_.__value_.__l.__size_;
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_str = &__str;
      }

      else
      {
        p_str = __str.__r_.__value_.__r.__words[0];
      }

      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v20 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v20 = __str.__r_.__value_.__l.__size_;
      }

      if (v20 >= 1)
      {
        v21 = p_str + v20;
        v22 = p_str;
        do
        {
          v23 = memchr(v22, 35, v20);
          if (!v23)
          {
            break;
          }

          if (*v23 == 35)
          {
            if (v23 != v21 && v23 - p_str != -1)
            {
              std::string::basic_string(&v33, &__str, 0, v23 - p_str, &v35);
              if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__str.__r_.__value_.__l.__data_);
              }

              __str = v33;
              v16 = HIBYTE(v33.__r_.__value_.__r.__words[2]);
              size = v33.__r_.__value_.__l.__size_;
              v17 = HIBYTE(v33.__r_.__value_.__r.__words[2]);
            }

            break;
          }

          v22 = (v23 + 1);
          v20 = v21 - v22;
        }

        while (v21 - v22 >= 1);
      }

      if ((v17 & 0x80u) != 0)
      {
        v16 = size;
      }

      sub_1D0BBB710(&v33, v16 + 1);
      if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v24 = &v33;
      }

      else
      {
        v24 = v33.__r_.__value_.__r.__words[0];
      }

      if (v16)
      {
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v25 = &__str;
        }

        else
        {
          v25 = __str.__r_.__value_.__r.__words[0];
        }

        memmove(v24, v25, v16);
      }

      *(&v24->__r_.__value_.__l.__data_ + v16) = 10;
      if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v26 = &v33;
      }

      else
      {
        v26 = v33.__r_.__value_.__r.__words[0];
      }

      if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v27 = HIBYTE(v33.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v27 = v33.__r_.__value_.__l.__size_;
      }

      std::string::append(v10, v26, v27);
      if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v33.__r_.__value_.__l.__data_);
      }

      v9 = v36[0];
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    v3 = v32;
  }

  v28 = (*(*v3 + 32))(v3);
  v36[0] = *MEMORY[0x1E69E54C8];
  *(v36 + *(v36[0] - 24)) = *(MEMORY[0x1E69E54C8] + 24);
  MEMORY[0x1D387E8C0](v37);
  std::istream::~istream();
  MEMORY[0x1D387EBF0](v38);
  v29 = *MEMORY[0x1E69E9840];
  return v28;
}

void sub_1D0E44D08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_1D0DC5018(&a23, MEMORY[0x1E69E54C8]);
  MEMORY[0x1D387EBF0](&a72);
  _Unwind_Resume(a1);
}

uint64_t swan::BatchedGNSSDataSmoother::Configure(uint64_t a1, uint64_t a2)
{
  std::string::operator=((a1 + 8), (a2 + 8));
  *(a1 + 32) = *(a2 + 32);
  memcpy((a1 + 33), (a2 + 33), 0x647uLL);
  return 0;
}

uint64_t swan::BatchedGNSSDataSmoother::Run(uint64_t a1)
{
  if ((*(a1 + 34) & 1) != 0 || *(a1 + 291) == 1)
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
    operator new();
  }

  return 0xFFFFFFFFLL;
}

void sub_1D0E451B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  sub_1D0E452D8(&a32);
  if (*(v33 - 121) < 0)
  {
    operator delete(*(v33 - 144));
  }

  if (*(v33 - 97) < 0)
  {
    operator delete(*(v33 - 120));
  }

  v35 = *(v33 - 88);
  if (v35)
  {
    *(v33 - 80) = v35;
    operator delete(v35);
  }

  _Unwind_Resume(a1);
}

void sub_1D0E452C8()
{
  if (!*(v0 - 88))
  {
    JUMPOUT(0x1D0E452C0);
  }

  JUMPOUT(0x1D0E452BCLL);
}

uint64_t sub_1D0E452D8(uint64_t a1)
{
  sub_1D0E48E44((a1 + 24));
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1D0E45314(uint64_t result, unint64_t a2)
{
  if (a2 > *(result + 16) << 6)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v2 = 0;
      v3 = 0uLL;
      sub_1D0C3994C(&v2, ((a2 - 1) >> 6) + 1);
    }

    sub_1D0C5663C();
  }

  return result;
}

void sub_1D0E4543C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t swan::BatchedGNSSDataSmoother::Run(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *a4, uint64_t a5, void *a6, void *a7, uint64_t *a8, void *a9, unint64_t *a10, uint64_t *a11)
{
  if (*(a5 + 8) != *a5 || a6[1] != *a6 || a7[1] != *a7 || a8[1] != *a8)
  {
    return 0xFFFFFFFFLL;
  }

  if (a9[1] != *a9 || a11[1] != 0)
  {
    return 0xFFFFFFFFLL;
  }

  v19 = a3;
  sub_1D0DEA260(v65, a3);
  sub_1D0E48FA0(v64, v19);
  sub_1D0E49080(v63, v19);
  sub_1D0E49080(v62, v19);
  sub_1D0DEA260(v61, v19);
  sub_1D0DEA260(v60, v19);
  sub_1D0E48FA0(v59, v19);
  sub_1D0E49128(v58, v19);
  sub_1D0E48FA0(v57, v19);
  v22 = sub_1D0E49128(__p, v19);
  if (*(a1 + 805) == 1)
  {
    v19 = 224;
    swan::BatchedGNSSDataSmoother::LoadMATLAB(v22, (a1 + 806), 0xE0uLL, v65, v64, v63, v62, v82, v66, v61, v60);
  }

  else
  {
    sub_1D0C4D030(a6, v19);
    sub_1D0E46104(a7, v19);
    if (swan::BatchedGNSSDataSmoother::formatData(a1, a2, v19, v82, v66, v65, v64, v63, v62, a6, a7))
    {
      goto LABEL_29;
    }

    if (v19)
    {
      v29 = 0;
      v30 = v61[0];
      v31 = v60[0];
      do
      {
        v30[v29] = *(a1 + 1584);
        v31[v29++] = *(a1 + 1592);
      }

      while (v19 > v29);
    }
  }

  v55[1] = 0x4202A05F20000000;
  if (!swan::ForwardBackwardFixedIntervalSmoother::Update(a1 + 1640, v82, v66, v19))
  {
    if (v19)
    {
      v23 = v19;
      do
      {
        v24 = a11[1];
        v25 = a11[2];
        if (v24 == v25 << 6)
        {
          if ((v24 + 1) < 0)
          {
            sub_1D0C5663C();
          }

          v26 = v25 << 7;
          if (v26 <= (v24 & 0x3FFFFFFFFFFFFFC0) + 64)
          {
            v26 = (v24 & 0x3FFFFFFFFFFFFFC0) + 64;
          }

          if (v24 <= 0x3FFFFFFFFFFFFFFELL)
          {
            v27 = v26;
          }

          else
          {
            v27 = 0x7FFFFFFFFFFFFFFFLL;
          }

          sub_1D0E45314(a11, v27);
          v24 = a11[1];
        }

        a11[1] = v24 + 1;
        *(*a11 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
        --v23;
      }

      while (v23);
    }

    if ((*(a1 + 1575) & 1) == 0)
    {
      goto LABEL_71;
    }

    v55[0] = 0;
    sub_1D0C4333C(v54, v19);
    sub_1D0E4693C(v54, v19);
    if (swan::PositionVelocityDataEditor::TestNormalizedInnovations(*(a1 + 1576), a1 + 1641, v19, v59, v58, v55, v54))
    {
      goto LABEL_27;
    }

    v32 = v55[0];
    v33 = v55[0] - 1;
    if (v55[0] - 1 >= vcvtad_u64_f64(v19 * 0.1))
    {
      goto LABEL_67;
    }

    if (v19)
    {
      v34 = 0;
      v35 = 0;
      v36 = *a11;
      do
      {
        *(v36 + 8 * (v34 >> 6)) &= ~(1 << v34);
        if (*v54[0] != v34)
        {
          v37 = 0;
          while (v33 != v37)
          {
            v38 = *(v54[0] + ++v37);
            if (v38 == v34)
            {
              if (v37 < v32)
              {
                goto LABEL_63;
              }

              break;
            }
          }

          *(v65[0] + v35) = *(v65[0] + v34);
          v39 = (v64[0] + 48 * v34);
          v40 = v64[0] + 48 * v35;
          v41 = v39[2];
          v42 = *v39;
          v40[1] = v39[1];
          v40[2] = v41;
          *v40 = v42;
          v43 = v63[0] + 24 * v34;
          v44 = v63[0] + 24 * v35;
          v45 = *v43;
          *(v44 + 2) = *(v43 + 2);
          *v44 = v45;
          v46 = v62[0] + 24 * v34;
          v47 = v62[0] + 24 * v35;
          v48 = *v46;
          *(v47 + 2) = *(v46 + 2);
          *v47 = v48;
          *(*a6 + 8 * v35) = *(*a6 + 8 * v34);
          *(*a7 + 4 * v35) = *(*a7 + 4 * v34);
          v36 = *a11;
          *(*a11 + 8 * (v34 >> 6)) |= 1 << v34;
          ++v35;
        }

LABEL_63:
        ++v34;
      }

      while (v34 != v19);
    }

    v49 = 0;
    v50 = v64[0];
    do
    {
      *&v82[v49] = *&v50[v49];
      v49 += 8;
    }

    while (v49 != 48);
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v67 = 0u;
    memset(v66, 0, sizeof(v66));
    v51 = *(v63[0] + 1) * *(v63[0] + 1);
    v66[0] = *v63[0] * *v63[0];
    *(&v67 + 1) = v51;
    *&v71 = *(v63[0] + 2) * *(v63[0] + 2);
    *(&v74 + 1) = *v62[0] * *v62[0];
    *&v78 = *(v62[0] + 1) * *(v62[0] + 1);
    *(&v81 + 1) = *(v62[0] + 2) * *(v62[0] + 2);
    v19 -= v32;
    if (swan::ForwardBackwardFixedIntervalSmoother::Update(a1 + 1640, v82, v66, v19))
    {
LABEL_27:
      v28 = 0;
    }

    else
    {
LABEL_67:
      v28 = 1;
    }

    if (v54[0])
    {
      v54[1] = v54[0];
      operator delete(v54[0]);
    }

    if (v28)
    {
LABEL_71:
      v54[0] = 0;
      updated = swan::ConsistencyChecker::UpdateNormalizedInnovationsSquared(a1 + 1642, v19, 6u, v59, v58, v54);
      *a4 = 0;
      v53 = swan::BatchedGNSSDataSmoother::CopySmootherOutputs(updated, v19, v65, v57, __p, a5, a8, a9);
      if (*(a1 + 548) == 1)
      {
        swan::BatchedGNSSDataSmoother::SaveToDisk(v53, (a1 + 549), v19, v65, v57, __p, v59, v58);
      }

      v15 = 0;
      *a10 = v19;
      goto LABEL_30;
    }
  }

LABEL_29:
  v15 = 0xFFFFFFFFLL;
LABEL_30:
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v57[0])
  {
    v57[1] = v57[0];
    operator delete(v57[0]);
  }

  if (v58[0])
  {
    v58[1] = v58[0];
    operator delete(v58[0]);
  }

  if (v59[0])
  {
    v59[1] = v59[0];
    operator delete(v59[0]);
  }

  if (v60[0])
  {
    v60[1] = v60[0];
    operator delete(v60[0]);
  }

  if (v61[0])
  {
    v61[1] = v61[0];
    operator delete(v61[0]);
  }

  if (v62[0])
  {
    v62[1] = v62[0];
    operator delete(v62[0]);
  }

  if (v63[0])
  {
    v63[1] = v63[0];
    operator delete(v63[0]);
  }

  if (v64[0])
  {
    v64[1] = v64[0];
    operator delete(v64[0]);
  }

  if (v65[0])
  {
    v65[1] = v65[0];
    operator delete(v65[0]);
  }

  return v15;
}

void sub_1D0E45AEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a23)
  {
    operator delete(a23);
  }

  if (a26)
  {
    operator delete(a26);
  }

  if (a29)
  {
    operator delete(a29);
  }

  if (a32)
  {
    operator delete(a32);
  }

  if (a35)
  {
    operator delete(a35);
  }

  if (a38)
  {
    operator delete(a38);
  }

  if (a41)
  {
    operator delete(a41);
  }

  if (a44)
  {
    operator delete(a44);
  }

  if (a47)
  {
    operator delete(a47);
  }

  if (a50)
  {
    operator delete(a50);
  }

  _Unwind_Resume(exception_object);
}

uint64_t swan::BatchedGNSSDataSmoother::LoadMATLAB(uint64_t a1, const char *a2, unint64_t a3, void *a4, void *a5, void *a6, void *a7, uint64_t a8, uint64_t a9, void *a10, void *a11)
{
  v53 = *MEMORY[0x1E69E9840];
  snprintf(__str, 0x100uLL, "%s%s", a2, "t_noisy.txt");
  v18 = fopen(__str, "r");
  if (!v18)
  {
    goto LABEL_32;
  }

  v19 = v18;
  v51 = a2;
  if (a3)
  {
    v20 = 0;
    v21 = a3;
    do
    {
      fscanf(v19, "%lf\n", *a4 + v20);
      v20 += 8;
      --v21;
    }

    while (v21);
  }

  fclose(v19);
  snprintf(__str, 0x100uLL, "%s%s", a2, "x_noisy.txt");
  v22 = fopen(__str, "r");
  if (!v22)
  {
    goto LABEL_32;
  }

  v23 = v22;
  if (a3)
  {
    v24 = 0;
    v25 = 1;
    do
    {
      v26 = *a5 + 48 * v24;
      fscanf(v23, "%lf %lf %lf %lf %lf %lf\n", v26, v26 + 8, v26 + 16, v26 + 24, v26 + 32, v26 + 40);
      v24 = v25++;
    }

    while (v24 < a3);
  }

  fclose(v23);
  snprintf(__str, 0x100uLL, "%s%s", v51, "sigma_x.txt");
  v27 = fopen(__str, "r");
  if (!v27)
  {
    goto LABEL_32;
  }

  v28 = v27;
  if (a3)
  {
    v29 = 0;
    v30 = 1;
    do
    {
      fscanf(v28, "%lf %lf %lf\n", *a6 + 24 * v29, *a6 + 24 * v29 + 8, *a6 + 24 * v29 + 16);
      v29 = v30++;
    }

    while (v29 < a3);
  }

  fclose(v28);
  snprintf(__str, 0x100uLL, "%s%s", v51, "sigma_vx.txt");
  v31 = fopen(__str, "r");
  if (!v31)
  {
    goto LABEL_32;
  }

  v32 = v31;
  if (a3)
  {
    v33 = 0;
    v34 = 1;
    do
    {
      fscanf(v32, "%lf %lf %lf\n", *a7 + 24 * v33, *a7 + 24 * v33 + 8, *a7 + 24 * v33 + 16);
      v33 = v34++;
    }

    while (v33 < a3);
  }

  fclose(v32);
  snprintf(__str, 0x100uLL, "%s%s", v51, "x0.txt");
  v35 = fopen(__str, "r");
  if (!v35)
  {
    goto LABEL_32;
  }

  v36 = v35;
  v37 = 6;
  do
  {
    fscanf(v36, "%lf\n", a8);
    a8 += 8;
    --v37;
  }

  while (v37);
  fclose(v36);
  snprintf(__str, 0x100uLL, "%s%s", v51, "P0.txt");
  v38 = fopen(__str, "r");
  if (!v38)
  {
    goto LABEL_32;
  }

  v39 = v38;
  for (i = 0; i != 288; i += 48)
  {
    fscanf(v39, "%lf %lf %lf %lf %lf %lf\n", a9 + i, a9 + i + 8, a9 + i + 16, a9 + i + 24, a9 + i + 32, a9 + i + 40);
  }

  fclose(v39);
  snprintf(__str, 0x100uLL, "%s%s", v51, "sigma_wx_horizontal.txt");
  v41 = fopen(__str, "r");
  if (!v41)
  {
    goto LABEL_32;
  }

  if (a3)
  {
    v42 = v41;
    v43 = 0;
    v44 = 1;
    do
    {
      fscanf(v42, "%lf\n", *a10 + 8 * v43);
      v43 = v44++;
    }

    while (v43 < a3);
  }

  snprintf(__str, 0x100uLL, "%s%s", v51, "sigma_wx_vertical.txt");
  v45 = fopen(__str, "r");
  if (v45)
  {
    v46 = v45;
    if (a3)
    {
      v47 = 0;
      v48 = 1;
      do
      {
        fscanf(v46, "%lf\n", *a11 + 8 * v47);
        v47 = v48++;
      }

      while (v47 < a3);
    }

    fclose(v46);
    result = 0;
  }

  else
  {
LABEL_32:
    printf("Error opening %s. Exiting.\n", __str);
    result = 0xFFFFFFFFLL;
  }

  v50 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1D0E46104(uint64_t a1, unint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = (v4 - *a1) >> 2;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = v3 + 4 * a2;
  }

  else
  {
    v6 = a2 - v5;
    v7 = *(a1 + 16);
    if (v6 > (v7 - v4) >> 2)
    {
      if (!(a2 >> 62))
      {
        v8 = v7 - v3;
        v9 = v8 >> 1;
        if (v8 >> 1 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v10 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        sub_1D0D2FF2C(a1, v10);
      }

      sub_1D0C5663C();
    }

    bzero(*(a1 + 8), 4 * v6);
    v11 = v4 + 4 * v6;
  }

  *(a1 + 8) = v11;
}

uint64_t swan::BatchedGNSSDataSmoother::formatData(double *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t *a7, double **a8, double **a9, void *a10, void *a11)
{
  v103 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v15 = 0;
    v64 = *(*a2 + 92);
    v63 = *(*a2 + 96) / 1000.0;
    v16 = 1;
    v61 = vdupq_n_s64(0x4066800000000000uLL);
    v62 = vdupq_n_s64(0x400921FB54442D18uLL);
    while (1)
    {
      v17 = *a2 + 248 * v15;
      v18 = *(v17 + 92);
      *(*a6 + 8 * v15) = *(v17 + 96) / 1000.0 - v63 + (v18 - v64) * 604800.0;
      *(*a10 + 8 * v15) = *(v17 + 96) / 1000.0;
      *(*a11 + 4 * v15) = v18;
      v101 = vdivq_f64(vmulq_f64(*(v17 + 8), v62), v61);
      v102 = *(v17 + 64);
      if (cnnavigation::LLAToECEF(v101.f64, 1, &v99, 0, &v79))
      {
        break;
      }

      v19 = *a7 + 48 * v15;
      *v19 = v99;
      *(v19 + 16) = v100;
      v20 = *(v17 + 56);
      v21 = 0.0;
      v22 = 0.0;
      if (v20 > 0.0)
      {
        v23 = *(v17 + 48);
        v24 = __sincos_stret(v20 * 3.14159265 / 180.0);
        v21 = v24.__cosval * v23;
        v22 = v24.__sinval * v23;
      }

      v97.f64[0] = v21;
      v97.f64[1] = v22;
      v25 = *(v17 + 232);
      if (v25 > a1[201])
      {
        v25 = 0.0;
      }

      v98 = v25;
      v26 = cnnavigation::ENUToECEF(&v97, 1, 0, &v99, 1, &v95);
      if (v26)
      {
        break;
      }

      v27 = *a7;
      v28 = *a7 + 48 * v15;
      *(v28 + 24) = v95;
      *(v28 + 40) = v96;
      if (!v15)
      {
        for (i = 0; i != 48; i += 8)
        {
          *(a4 + i) = *(v27 + i);
        }
      }

      v92 = 0x200000002;
      v91 = xmmword_1D0E83F70;
      v90 = &unk_1F4CE0268;
      v93 = &v94;
      swan::BatchedGNSSDataSmoother::convertErrorEllipseToCovariance(*(*a2 + 248 * v15 + 128), *(*a2 + 248 * v15 + 136), *(*a2 + 248 * v15 + 144) * 3.14159265 / 180.0, v26, &v90);
      v87 = 0x300000003;
      v86 = xmmword_1D0E76C10;
      v85 = &unk_1F4CD5DD0;
      v88 = &v89;
      *&v81 = 0x300000003;
      v79 = &unk_1F4CD5DD0;
      *(&v81 + 1) = &v82;
      v80 = xmmword_1D0E76C10;
      v82 = 0u;
      memset(v83, 0, sizeof(v83));
      v84 = 0;
      sub_1D0B894B0(&v85, &v79);
      v30 = v93;
      v31 = v88;
      *v88 = *v93;
      v32 = &v30[SHIDWORD(v91)];
      v33 = SHIDWORD(v86);
      v34 = &v31[SHIDWORD(v86)];
      *v34 = *v32;
      v31[1] = v30[1];
      v34[1] = v32[1];
      v35 = *(*a2 + 248 * v15 + 72);
      v31[2 * v33 + 2] = v35 * v35;
      LOBYTE(v80) = 0;
      *&v82 = 0x300000003;
      v81 = xmmword_1D0E76C10;
      *(&v80 + 1) = &unk_1F4CD5DD0;
      *(&v82 + 1) = v83;
      v79 = &unk_1F4CD5D90;
      if (cnnavigation::ENUToECEF(&v99, 1, 0, &v99, 1, &v97, &v79))
      {
        break;
      }

      v76 = 0x300000003;
      v74 = &unk_1F4CD5DD0;
      v75 = xmmword_1D0E76C10;
      v77 = &v78;
      sub_1D0BFE654(&v79, &v85, &v74);
      v36 = v77;
      v37 = &(*a8)[3 * v15];
      *v37 = sqrt(*v77);
      v38 = SHIDWORD(v75);
      v37[1] = sqrt(v36[SHIDWORD(v75) + 1]);
      v37[2] = sqrt(v36[2 * v38 + 2]);
      v39 = (*a2 + 248 * v15);
      v40 = v39[14] / 1.41421356;
      v41 = v39[6];
      if (fabs(v41) < 2.22044605e-16 && v40 < a1[202])
      {
        v40 = a1[202];
      }

      v42 = v39[15];
      v43 = fabs(v42);
      if (v42 < 0.0 || v43 < 2.22044605e-16)
      {
        v45 = 21.2132;
      }

      else
      {
        v45 = v40;
      }

      v46 = v39[30];
      if (sqrt(v39[29] * v39[29] + v41 * v41) > a1[203])
      {
        v45 = a1[204];
      }

      v70 = 0x300000003;
      v68 = &unk_1F4CD5DD0;
      v71 = v72;
      v69 = xmmword_1D0E76C10;
      memset(v72, 0, sizeof(v72));
      v73 = 0;
      sub_1D0B894B0(&v85, &v68);
      v47 = v88;
      *v88 = v45 * v45;
      v48 = SHIDWORD(v86);
      v47[SHIDWORD(v86) + 1] = v45 * v45;
      v47[2 * v48 + 2] = v46 * v46;
      sub_1D0BFE654(&v79, &v85, &v74);
      v49 = v77;
      v50 = sqrt(*v77);
      v51 = *a9;
      v52 = &(*a9)[3 * v15];
      *v52 = v50;
      v53 = SHIDWORD(v75);
      v54 = sqrt(v49[SHIDWORD(v75) + 1]);
      v52[1] = v54;
      v55 = sqrt(v49[2 * v53 + 2]);
      v52[2] = v55;
      v56 = a1[200];
      *v52 = v50 * v56;
      v52[1] = v54 * v56;
      v52[2] = v55 * v56;
      if (!v15)
      {
        *(a5 + 256) = 0u;
        *(a5 + 272) = 0u;
        *(a5 + 224) = 0u;
        *(a5 + 240) = 0u;
        *(a5 + 192) = 0u;
        *(a5 + 208) = 0u;
        *(a5 + 160) = 0u;
        *(a5 + 176) = 0u;
        *(a5 + 128) = 0u;
        *(a5 + 144) = 0u;
        *(a5 + 96) = 0u;
        *(a5 + 112) = 0u;
        *(a5 + 64) = 0u;
        *(a5 + 80) = 0u;
        *(a5 + 32) = 0u;
        *(a5 + 48) = 0u;
        *a5 = 0u;
        *(a5 + 16) = 0u;
        v57 = *a8;
        *a5 = **a8 * **a8;
        *(a5 + 56) = v57[1] * v57[1];
        *(a5 + 112) = v57[2] * v57[2];
        *(a5 + 168) = *v51 * *v51;
        *(a5 + 224) = v51[1] * v51[1];
        *(a5 + 280) = v51[2] * v51[2];
      }

      v16 = ++v15 < a3;
      if (v15 == a3)
      {
        goto LABEL_27;
      }
    }
  }

  else
  {
LABEL_27:
    v16 = 0;
  }

  v58 = *MEMORY[0x1E69E9840];
  return (v16 << 31 >> 31);
}

void *sub_1D0E4693C(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    v2 = result[1] - *result;
    sub_1D0C3994C(result, a2);
  }

  return result;
}

uint64_t swan::BatchedGNSSDataSmoother::CopySmootherOutputs(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, void *a5, const void **a6, uint64_t *a7, void *a8)
{
  v65 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v13 = a2;
    for (i = 0; i != v13; ++i)
    {
      v15 = *a3;
      v17 = a6[1];
      v16 = a6[2];
      if (v17 >= v16)
      {
        v19 = *a6;
        v20 = v17 - *a6;
        v21 = v20 >> 3;
        v22 = (v20 >> 3) + 1;
        if (v22 >> 61)
        {
          sub_1D0C5663C();
        }

        v23 = v16 - v19;
        if (v23 >> 2 > v22)
        {
          v22 = v23 >> 2;
        }

        v24 = v23 >= 0x7FFFFFFFFFFFFFF8;
        v25 = 0x1FFFFFFFFFFFFFFFLL;
        if (!v24)
        {
          v25 = v22;
        }

        if (v25)
        {
          sub_1D0C3994C(a6, v25);
        }

        *(8 * v21) = *(v15 + 8 * i);
        v18 = 8 * v21 + 8;
        memcpy(0, v19, v20);
        v26 = *a6;
        *a6 = 0;
        a6[1] = v18;
        a6[2] = 0;
        if (v26)
        {
          operator delete(v26);
        }

        v13 = a2;
      }

      else
      {
        *v17 = *(v15 + 8 * i);
        v18 = (v17 + 8);
      }

      a6[1] = v18;
      v27 = (*a4 + 48 * i);
      v28 = v27[1];
      __dst[0] = *v27;
      __dst[1] = v28;
      __dst[2] = v27[2];
      v29 = a7[1];
      v30 = a7[2];
      if (v29 >= v30)
      {
        v34 = 0xAAAAAAAAAAAAAAABLL * ((v29 - *a7) >> 4);
        v35 = v34 + 1;
        if (v34 + 1 > 0x555555555555555)
        {
          sub_1D0C5663C();
        }

        if (0x5555555555555556 * ((v30 - *a7) >> 4) > v35)
        {
          v35 = 0x5555555555555556 * ((v30 - *a7) >> 4);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v30 - *a7) >> 4) >= 0x2AAAAAAAAAAAAAALL)
        {
          v36 = 0x555555555555555;
        }

        else
        {
          v36 = v35;
        }

        if (v36)
        {
          sub_1D0E49028(v36);
        }

        v37 = (16 * ((v29 - *a7) >> 4));
        v38 = __dst[1];
        *v37 = __dst[0];
        v37[1] = v38;
        v37[2] = __dst[2];
        v39 = *a7;
        v40 = a7[1];
        v41 = 48 * v34 + *a7 - v40;
        if (*a7 != v40)
        {
          v42 = (v37 + *a7 - v40);
          do
          {
            v43 = *v39;
            v44 = v39[2];
            v42[1] = v39[1];
            v42[2] = v44;
            *v42 = v43;
            v42 += 3;
            v39 += 3;
          }

          while (v39 != v40);
          v39 = *a7;
        }

        v33 = v37 + 3;
        *a7 = v41;
        a7[1] = (v37 + 3);
        a7[2] = 0;
        if (v39)
        {
          operator delete(v39);
        }
      }

      else
      {
        v31 = *v27;
        v32 = v27[2];
        v29[1] = v27[1];
        v29[2] = v32;
        *v29 = v31;
        v33 = v29 + 3;
      }

      a7[1] = v33;
    }

    v45 = 0;
    v46 = 0xE38E38E38E38E3;
    v47 = a8[1];
    do
    {
      v48 = (*a5 + 288 * v45);
      memcpy(__dst, v48, sizeof(__dst));
      v49 = a8[2];
      if (v47 >= v49)
      {
        v50 = 0x8E38E38E38E38E39 * (&v47[-*a8] >> 5) + 1;
        if (v50 > v46)
        {
          sub_1D0C5663C();
        }

        v51 = 0x8E38E38E38E38E39 * ((v49 - *a8) >> 5);
        if (2 * v51 > v50)
        {
          v50 = 2 * v51;
        }

        if (v51 >= 0x71C71C71C71C71)
        {
          v52 = v46;
        }

        else
        {
          v52 = v50;
        }

        if (v52)
        {
          sub_1D0E491B4(v52);
        }

        v53 = (32 * (&v47[-*a8] >> 5));
        memcpy(v53, __dst, 0x120uLL);
        v55 = *a8;
        v54 = a8[1];
        v56 = *a8 - v54;
        v57 = &v53[v56];
        if (*a8 != v54)
        {
          v58 = v46;
          v59 = &v53[v56];
          do
          {
            memcpy(v59, v55, 0x120uLL);
            v55 += 288;
            v59 += 288;
          }

          while (v55 != v54);
          v55 = *a8;
          v46 = v58;
        }

        v47 = v53 + 288;
        *a8 = v57;
        a8[1] = v53 + 288;
        a8[2] = 0;
        v13 = a2;
        if (v55)
        {
          operator delete(v55);
        }
      }

      else
      {
        memmove(v47, v48, 0x120uLL);
        v47 += 288;
      }

      a8[1] = v47;
      ++v45;
    }

    while (v45 != v13);
  }

  v60 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t swan::BatchedGNSSDataSmoother::SaveToDisk(uint64_t a1, const char *a2, unint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v45 = *MEMORY[0x1E69E9840];
  snprintf(__str, 0x100uLL, "%s%s", a2, "t_out.txt");
  v15 = fopen(__str, "w");
  if (!v15)
  {
    goto LABEL_26;
  }

  v16 = v15;
  if (a3)
  {
    v17 = 0;
    do
    {
      fprintf(v16, "%.15le\n", *(*a4 + 8 * v17++));
    }

    while (a3 != v17);
  }

  fclose(v16);
  snprintf(__str, 0x100uLL, "%s%s", a2, "x_out.txt");
  v18 = fopen(__str, "w");
  if (!v18)
  {
    goto LABEL_26;
  }

  v19 = v18;
  v43 = a2;
  if (a3)
  {
    v20 = 0;
    v21 = a3;
    do
    {
      v22 = (*a5 + v20);
      fprintf(v19, "%.15le %.15le %.15le %.15le %.15le %.15le\n", *v22, v22[1], v22[2], v22[3], v22[4], v22[5]);
      v20 += 48;
      --v21;
    }

    while (v21);
  }

  fclose(v19);
  snprintf(__str, 0x100uLL, "%s%s", v43, "P_out.txt");
  v23 = fopen(__str, "w");
  if (!v23)
  {
    goto LABEL_26;
  }

  v24 = v23;
  if (a3)
  {
    v25 = 0;
    v26 = 0;
    do
    {
      v27 = v25;
      v28 = 6;
      do
      {
        v29 = (*a6 + v27);
        fprintf(v24, "%.15le %.15le %.15le %.15le %.15le %.15le\n", *v29, v29[1], v29[2], v29[3], v29[4], v29[5]);
        v27 += 48;
        --v28;
      }

      while (v28);
      ++v26;
      v25 += 288;
    }

    while (v26 != a3);
  }

  fclose(v24);
  snprintf(__str, 0x100uLL, "%s%s", v43, "nu.txt");
  v30 = fopen(__str, "w");
  if (!v30)
  {
    goto LABEL_26;
  }

  v31 = v30;
  if (a3)
  {
    v32 = 0;
    v33 = 1;
    do
    {
      v34 = (*a7 + 48 * v32);
      fprintf(v31, "%.15le %.15le %.15le %.15le %.15le %.15le\n", *v34, v34[1], v34[2], v34[3], v34[4], v34[5]);
      v32 = v33++;
    }

    while (v32 < a3);
  }

  fclose(v31);
  snprintf(__str, 0x100uLL, "%s%s", v43, "P_nu.txt");
  v35 = fopen(__str, "w");
  if (v35)
  {
    v36 = v35;
    if (a3)
    {
      LODWORD(v37) = 0;
      do
      {
        v38 = 288 * v37;
        v39 = 6;
        do
        {
          v40 = (*a8 + v38);
          fprintf(v36, "%.15le %.15le %.15le %.15le %.15le %.15le\n", *v40, v40[1], v40[2], v40[3], v40[4], v40[5]);
          v38 += 48;
          --v39;
        }

        while (v39);
        v37 = (v37 + 1);
      }

      while (v37 < a3);
    }

    fclose(v36);
    result = 0;
  }

  else
  {
LABEL_26:
    printf("Error opening %s. Exiting.\n", __str);
    result = 0xFFFFFFFFLL;
  }

  v42 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t swan::BatchedGNSSDataSmoother::SaveToDisk(uint64_t a1, const char *a2, unint64_t a3, double *a4, uint64_t a5, void *a6, void *a7, void *a8, void *a9)
{
  v43 = *MEMORY[0x1E69E9840];
  snprintf(__str, 0x100uLL, "%s%s", a2, "t_in.txt");
  v16 = fopen(__str, "w");
  if (!v16)
  {
    goto LABEL_22;
  }

  v17 = v16;
  if (a3)
  {
    v18 = 0;
    v19 = 1;
    do
    {
      fprintf(v17, "%.15le\n", *(*a6 + 8 * v18));
      v18 = v19++;
    }

    while (v18 < a3);
  }

  fclose(v17);
  snprintf(__str, 0x100uLL, "%s%s", a2, "x_in.txt");
  v20 = fopen(__str, "w");
  if (!v20)
  {
    goto LABEL_22;
  }

  v21 = v20;
  if (a3)
  {
    v22 = 0;
    v23 = 1;
    do
    {
      v24 = (*a7 + 48 * v22);
      fprintf(v21, "%.15le %.15le %.15le %.15le %.15le %.15le\n", *v24, v24[1], v24[2], v24[3], v24[4], v24[5]);
      v22 = v23++;
    }

    while (v22 < a3);
  }

  fclose(v21);
  snprintf(__str, 0x100uLL, "%s%s", a2, "P0.txt");
  v25 = fopen(__str, "w");
  if (!v25)
  {
    goto LABEL_22;
  }

  v26 = v25;
  v27 = (a5 + 24);
  v28 = 6;
  do
  {
    v29 = *(v27 - 3);
    fprintf(v26, "%.15le %.15le %.15le %.15le %.15le %.15le\n", *(v27 - 3), *(v27 - 2), *(v27 - 1), *v27, v27[1], v27[2]);
    v27 += 6;
    --v28;
  }

  while (v28);
  fclose(v26);
  snprintf(__str, 0x100uLL, "%s%s", a2, "x0.txt");
  v30 = fopen(__str, "w");
  if (!v30)
  {
    goto LABEL_22;
  }

  v31 = v30;
  fprintf(v30, "%.15le %.15le %.15le %.15le %.15le %.15le\n", *a4, a4[1], a4[2], a4[3], a4[4], a4[5]);
  fclose(v31);
  snprintf(__str, 0x100uLL, "%s%s", a2, "sigma_x.txt");
  v32 = fopen(__str, "w");
  if (!v32)
  {
    goto LABEL_22;
  }

  v33 = v32;
  if (a3)
  {
    v34 = 0;
    v35 = 1;
    do
    {
      fprintf(v33, "%.15le %.15le %.15le\n", *(*a8 + 24 * v34), *(*a8 + 24 * v34 + 8), *(*a8 + 24 * v34 + 16));
      v34 = v35++;
    }

    while (v34 < a3);
  }

  fclose(v33);
  snprintf(__str, 0x100uLL, "%s%s", a2, "sigma_vx.txt");
  v36 = fopen(__str, "w");
  if (v36)
  {
    v37 = v36;
    if (a3)
    {
      v38 = 0;
      v39 = 1;
      do
      {
        fprintf(v37, "%.15le %.15le %.15le\n", *(*a9 + 24 * v38), *(*a9 + 24 * v38 + 8), *(*a9 + 24 * v38 + 16));
        v38 = v39++;
      }

      while (v38 < a3);
    }

    fclose(v37);
    result = 0;
  }

  else
  {
LABEL_22:
    printf("Error opening %s. Exiting.\n", __str);
    result = 0xFFFFFFFFLL;
  }

  v41 = *MEMORY[0x1E69E9840];
  return result;
}

void swan::BatchedGNSSDataSmoother::convertErrorEllipseToCovariance(double a1, double a2, double a3, uint64_t a4, uint64_t a5)
{
  v47 = 0x200000002;
  v46 = xmmword_1D0E83F70;
  v45 = &unk_1F4CE0268;
  v48 = &v49;
  v41 = 0x200000002;
  v39 = &unk_1F4CE0268;
  v42 = &v43;
  v40 = xmmword_1D0E83F70;
  v43 = 0u;
  v44 = 0u;
  sub_1D0B894B0(&v45, &v39);
  v9 = v48;
  *v48 = a1 * a1 * 0.1669041;
  v9[SHIDWORD(v46) + 1] = a2 * a2 * 0.1669041;
  if (a3 == 0.0)
  {
    v20 = &v45;
  }

  else
  {
    v41 = 0x200000002;
    v40 = xmmword_1D0E83F70;
    v39 = &unk_1F4CE0268;
    v42 = &v43;
    v10 = __sincos_stret(a3);
    *&v43 = v10.__cosval;
    *(&v43 + 1) = *&v10.__sinval;
    *&v44 = -v10.__sinval;
    *(&v44 + 1) = *&v10.__cosval;
    v31 = 0x200000002;
    v29 = &unk_1F4CE0268;
    v30 = xmmword_1D0E83F70;
    v32 = &v33;
    sub_1D0B89390(&v39, &v45, &v29);
    v12 = v40;
    v11 = DWORD1(v40);
    v26 = 0x200000002;
    v21 = &unk_1F4CE0268;
    v27 = v28;
    v22 = DWORD1(v40);
    v23 = v40;
    v24 = v40 * DWORD1(v40);
    v25 = DWORD1(v40);
    if (DWORD1(v40))
    {
      v13 = 0;
      v14 = 0;
      v15 = HIDWORD(v40);
      v16 = v42;
      do
      {
        v17 = v13;
        v18 = v14;
        for (i = v12; i; --i)
        {
          v28[v18] = *(v16 + v17);
          v18 += v11;
          ++v17;
        }

        ++v14;
        v13 += v15;
      }

      while (v14 != v11);
    }

    v36 = 0x200000002;
    v35 = xmmword_1D0E83F70;
    v34 = &unk_1F4CE0268;
    v37 = &v38;
    sub_1D0B89390(&v29, &v21, &v34);
    v20 = &v34;
  }

  sub_1D0B894B0(a5, v20);
}

uint64_t swan::BatchedGNSSDataSmoother::formatData(double *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double *a8, double *a9)
{
  v85 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v12 = 0;
    v45 = *(*a2 + 24);
    v13 = *(*a2 + 16);
    v43 = vdupq_n_s64(0x4066800000000000uLL);
    v44 = vdupq_n_s64(0x400921FB54442D18uLL);
    do
    {
      v14 = *a2 + 264 * v12;
      *(a6 + 8 * v12) = *(v14 + 16) - v13 + (*(v14 + 24) - v45) * 604800.0;
      v83 = vdivq_f64(vmulq_f64(*(v14 + 48), v44), v43);
      v84 = *(v14 + 64);
      if (cnnavigation::LLAToECEF(v83.f64, 1, &v81, 0, &v61))
      {
        break;
      }

      v15 = a7 + 48 * v12;
      *v15 = v81;
      *(v15 + 16) = v82;
      v79.f64[0] = *(v14 + 152);
      v79.f64[1] = v79.f64[0];
      v80 = *(v14 + 160);
      v16 = cnnavigation::ENUToECEF(&v79, 1, 0, &v81, 1, &v77);
      if (v16)
      {
        break;
      }

      *(v15 + 24) = v77;
      *(v15 + 40) = v78;
      if (!v12)
      {
        for (i = 0; i != 48; i += 8)
        {
          *(a4 + i) = *(a7 + i);
        }
      }

      v74 = 0x200000002;
      v73 = xmmword_1D0E83F70;
      v72 = &unk_1F4CE0268;
      v75 = &v76;
      swan::BatchedGNSSDataSmoother::convertErrorEllipseToCovariance(*(*a2 + 264 * v12 + 120), *(*a2 + 264 * v12 + 128), *(*a2 + 264 * v12 + 136) * 3.14159265 / 180.0, v16, &v72);
      v69 = 0x300000003;
      v68 = xmmword_1D0E76C10;
      v67 = &unk_1F4CD5DD0;
      v70 = &v71;
      *&v63 = 0x300000003;
      v61 = &unk_1F4CD5DD0;
      *(&v63 + 1) = &v64;
      v62 = xmmword_1D0E76C10;
      v64 = 0u;
      memset(v65, 0, sizeof(v65));
      v66 = 0;
      sub_1D0B894B0(&v67, &v61);
      v18 = v75;
      v19 = v70;
      *v70 = *v75;
      v20 = &v18[SHIDWORD(v73)];
      v21 = SHIDWORD(v68);
      v22 = &v19[SHIDWORD(v68)];
      *v22 = *v20;
      v19[1] = v18[1];
      v22[1] = v20[1];
      v23 = *(*a2 + 264 * v12 + 144);
      v19[2 * v21 + 2] = v23 * v23;
      LOBYTE(v62) = 0;
      *&v64 = 0x300000003;
      v63 = xmmword_1D0E76C10;
      *(&v62 + 1) = &unk_1F4CD5DD0;
      *(&v64 + 1) = v65;
      v61 = &unk_1F4CD5D90;
      if (cnnavigation::ENUToECEF(&v81, 1, 0, &v81, 1, &v79, &v61))
      {
        break;
      }

      v58 = 0x300000003;
      v56 = &unk_1F4CD5DD0;
      v57 = xmmword_1D0E76C10;
      v59 = &v60;
      sub_1D0BFE654(&v61, &v67, &v56);
      v24 = v59;
      v25 = &a8[3 * v12];
      *v25 = sqrt(*v59);
      v26 = SHIDWORD(v57);
      v25[1] = sqrt(v24[SHIDWORD(v57) + 1]);
      v25[2] = sqrt(v24[2 * v26 + 2]);
      v27 = (*a2 + 264 * v12);
      v28 = v27[22] / 1.41421356;
      v29 = v27[19];
      if (fabs(v29) < 2.22044605e-16 && v28 < a1[202])
      {
        v28 = a1[202];
      }

      v30 = v27[23];
      if (sqrt(v27[20] * v27[20] + v29 * v29) > a1[203])
      {
        v28 = a1[204];
      }

      v52 = 0x300000003;
      v50 = &unk_1F4CD5DD0;
      v53 = v54;
      v51 = xmmword_1D0E76C10;
      memset(v54, 0, sizeof(v54));
      v55 = 0;
      sub_1D0B894B0(&v67, &v50);
      v31 = v70;
      *v70 = v28 * v28;
      v32 = SHIDWORD(v68);
      v31[SHIDWORD(v68) + 1] = v28 * v28;
      v31[2 * v32 + 2] = v30 * v30;
      sub_1D0BFE654(&v61, &v67, &v56);
      v33 = v59;
      v34 = sqrt(*v59);
      v35 = &a9[3 * v12];
      *v35 = v34;
      v36 = SHIDWORD(v57);
      v37 = sqrt(v33[SHIDWORD(v57) + 1]);
      v35[1] = v37;
      v38 = sqrt(v33[2 * v36 + 2]);
      v35[2] = v38;
      v39 = a1[200];
      *v35 = v34 * v39;
      v35[1] = v37 * v39;
      v35[2] = v38 * v39;
      if (!v12)
      {
        *(a5 + 256) = 0u;
        *(a5 + 272) = 0u;
        *(a5 + 224) = 0u;
        *(a5 + 240) = 0u;
        *(a5 + 192) = 0u;
        *(a5 + 208) = 0u;
        *(a5 + 160) = 0u;
        *(a5 + 176) = 0u;
        *(a5 + 128) = 0u;
        *(a5 + 144) = 0u;
        *(a5 + 96) = 0u;
        *(a5 + 112) = 0u;
        *(a5 + 64) = 0u;
        *(a5 + 80) = 0u;
        *(a5 + 32) = 0u;
        *(a5 + 48) = 0u;
        *a5 = 0u;
        *(a5 + 16) = 0u;
        *a5 = *a8 * *a8;
        *(a5 + 56) = a8[1] * a8[1];
        *(a5 + 112) = a8[2] * a8[2];
        *(a5 + 168) = *a9 * *a9;
        *(a5 + 224) = a9[1] * a9[1];
        *(a5 + 280) = a9[2] * a9[2];
      }

      ++v12;
    }

    while (v12 != a3);
  }

  v40 = *MEMORY[0x1E69E9840];
  return 0xFFFFFFFFLL;
}

void sub_1D0E47E1C(uint64_t a1)
{
  *a1 = &unk_1F4CF02B0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x1D387ECA0);
}

uint64_t sub_1D0E47E8C(uint64_t a1, char *a2, char a3)
{
  *(a1 + 32) = a3;
  sub_1D0BBB60C((a1 + 8), a2);
  v4 = *(*a1 + 32);

  return v4(a1);
}

uint64_t sub_1D0E47EEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (sub_1D0E48A04(a1, (a1 + 34), "use_input_locationd_data_file", a4, a5, a6, a7, a8))
  {
    if ((*(a1 + 34) & 1) != 0 && (sub_1D0E48578(a1, (a1 + 35), "input_locationd_data_file", v9, v10, v11, v12, v13) & 1) == 0)
    {
      v14 = sub_1D0BCD7C4(MEMORY[0x1E69E5310], "Invalid input_locationd_batched_data_file", 41);
      std::ios_base::getloc((v14 + *(*v14 - 24)));
      v15 = std::locale::use_facet(&v94, MEMORY[0x1E69E5318]);
      (v15->__vftable[2].~facet_0)(v15, 10);
LABEL_29:
      std::locale::~locale(&v94);
      std::ostream::put();
      std::ostream::flush();
      return 0;
    }
  }

  else
  {
    *(a1 + 34) = 0;
  }

  if ((sub_1D0E48A04(a1, (a1 + 33), "load_batched_data_from_locationd", v9, v10, v11, v12, v13) & 1) == 0)
  {
    *(a1 + 33) = 0;
  }

  if (sub_1D0E48A04(a1, (a1 + 291), "use_input_ascii_batched_data_file", v16, v17, v18, v19, v20))
  {
    if ((*(a1 + 291) & 1) != 0 && (sub_1D0E48578(a1, (a1 + 292), "input_ascii_batched_data_file", v21, v22, v23, v24, v25) & 1) == 0)
    {
      v26 = sub_1D0BCD7C4(MEMORY[0x1E69E5310], "Invalid input_ascii_batched_data_file", 37);
      std::ios_base::getloc((v26 + *(*v26 - 24)));
      v27 = std::locale::use_facet(&v94, MEMORY[0x1E69E5318]);
      (v27->__vftable[2].~facet_0)(v27, 10);
      goto LABEL_29;
    }
  }

  else
  {
    *(a1 + 291) = 0;
  }

  if (sub_1D0E48A04(a1, (a1 + 548), "save_results_to_disk", v21, v22, v23, v24, v25))
  {
    if ((*(a1 + 548) & 1) != 0 && (sub_1D0E48578(a1, (a1 + 549), "save_results_path", v28, v29, v30, v31, v32) & 1) == 0)
    {
      v33 = sub_1D0BCD7C4(MEMORY[0x1E69E5310], "Invalid save_results_path", 25);
      std::ios_base::getloc((v33 + *(*v33 - 24)));
      v34 = std::locale::use_facet(&v94, MEMORY[0x1E69E5318]);
      (v34->__vftable[2].~facet_0)(v34, 10);
      goto LABEL_29;
    }
  }

  else
  {
    *(a1 + 548) = 0;
  }

  if (sub_1D0E48A04(a1, (a1 + 805), "load_matlab_inputs", v28, v29, v30, v31, v32))
  {
    if ((*(a1 + 805) & 1) != 0 && (sub_1D0E48578(a1, (a1 + 806), "load_matlab_inputs_path", v35, v36, v37, v38, v39) & 1) == 0)
    {
      v40 = sub_1D0BCD7C4(MEMORY[0x1E69E5310], "Invalid load_matlab_inputs_path", 31);
      std::ios_base::getloc((v40 + *(*v40 - 24)));
      v41 = std::locale::use_facet(&v94, MEMORY[0x1E69E5318]);
      (v41->__vftable[2].~facet_0)(v41, 10);
      goto LABEL_29;
    }
  }

  else
  {
    *(a1 + 805) = 0;
  }

  if ((sub_1D0E48578(a1, (a1 + 1062), "temp_writable_path", v35, v36, v37, v38, v39) & 1) == 0)
  {
    v54 = sub_1D0BCD7C4(MEMORY[0x1E69E5310], "Invalid temp_writable_path", 26);
    std::ios_base::getloc((v54 + *(*v54 - 24)));
    v55 = std::locale::use_facet(&v94, MEMORY[0x1E69E5318]);
    (v55->__vftable[2].~facet_0)(v55, 10);
    goto LABEL_29;
  }

  if (sub_1D0E48A04(a1, (a1 + 1318), "use_truth_reference", v42, v43, v44, v45, v46))
  {
    if ((*(a1 + 1318) & 1) != 0 && (sub_1D0E48578(a1, (a1 + 1319), "truth_reference_filename", v47, v48, v49, v50, v51) & 1) == 0)
    {
      v52 = sub_1D0BCD7C4(MEMORY[0x1E69E5310], "Invalid truth_reference_filename", 32);
      std::ios_base::getloc((v52 + *(*v52 - 24)));
      v53 = std::locale::use_facet(&v94, MEMORY[0x1E69E5318]);
      (v53->__vftable[2].~facet_0)(v53, 10);
      goto LABEL_29;
    }
  }

  else
  {
    *(a1 + 1318) = 0;
  }

  if (sub_1D0E48A04(a1, (a1 + 1575), "enable_data_editing", v47, v48, v49, v50, v51))
  {
    if ((*(a1 + 1575) & 1) != 0 && (sub_1D0E48CE0(a1, (a1 + 1576), "data_editing_sigma_threshold", v57, v58, v59, v60, v61) & 1) == 0)
    {
      *(a1 + 1576) = 0x4008000000000000;
      v62 = sub_1D0BCD7C4(MEMORY[0x1E69E5310], "Invalid data_editing_sigma_threshold", 36);
      std::ios_base::getloc((v62 + *(*v62 - 24)));
      v63 = std::locale::use_facet(&v94, MEMORY[0x1E69E5318]);
      (v63->__vftable[2].~facet_0)(v63, 10);
      goto LABEL_29;
    }
  }

  else
  {
    *(a1 + 1575) = 0;
  }

  if ((sub_1D0E48CE0(a1, (a1 + 1584), "horizontal_position_process_noise", v57, v58, v59, v60, v61) & 1) == 0)
  {
    *(a1 + 1584) = 0x3FF0000000000000;
  }

  if ((sub_1D0E48CE0(a1, (a1 + 1592), "vertical_position_process_noise", v64, v65, v66, v67, v68) & 1) == 0)
  {
    *(a1 + 1592) = 0x3FB999999999999ALL;
  }

  if ((sub_1D0E48CE0(a1, (a1 + 1600), "velocity_sigma_fudge_factor", v69, v70, v71, v72, v73) & 1) == 0)
  {
    *(a1 + 1600) = 0x3FF0000000000000;
  }

  if ((sub_1D0E48CE0(a1, (a1 + 1608), "vertical_speed_limit", v74, v75, v76, v77, v78) & 1) == 0)
  {
    *(a1 + 1608) = 0x4049000000000000;
  }

  if ((sub_1D0E48CE0(a1, (a1 + 1616), "minimum_single_component_speed_standard_deviation", v79, v80, v81, v82, v83) & 1) == 0)
  {
    *(a1 + 1616) = 0x3FD6A09E667F3BD1;
  }

  if ((sub_1D0E48CE0(a1, (a1 + 1624), "mimimum_driving_speed_that_requires_speed_uncertainty_inflation", v84, v85, v86, v87, v88) & 1) == 0)
  {
    *(a1 + 1624) = 0x4024000000000000;
  }

  if ((sub_1D0E48CE0(a1, (a1 + 1632), "minimum_driving_speed_standard_deviation", v89, v90, v91, v92, v93) & 1) == 0)
  {
    *(a1 + 1632) = 0x4006A09E667F3BCCLL;
  }

  return 1;
}

uint64_t sub_1D0E48578(uint64_t a1, _OWORD *a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*(a1 + 31) & 0x8000000000000000) == 0)
  {
    if (!*(a1 + 31))
    {
      goto LABEL_98;
    }

LABEL_5:
    sub_1D0B751F4(&v61, "\n");
    v11 = strlen(a3);
    v12 = std::string::append(&v61, a3, v11);
    v13 = std::string::append(v12, ":", 1uLL);
    v14 = (a1 + 8);
    v15 = *(a1 + 31);
    __s = a3;
    if (v15 < 0)
    {
      v16 = *(a1 + 8);
      v17 = *(a1 + 16);
    }

    else
    {
      v16 = (a1 + 8);
      v17 = *(a1 + 31);
    }

    v18 = SHIBYTE(v13->__r_.__value_.__r.__words[2]);
    if (v18 >= 0)
    {
      v19 = v13;
    }

    else
    {
      v19 = v13->__r_.__value_.__r.__words[0];
    }

    if (v18 >= 0)
    {
      size = HIBYTE(v13->__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v13->__r_.__value_.__l.__size_;
    }

    if (size)
    {
      if (v17 >= size)
      {
        v25 = &v16[v17];
        v26 = v19->__r_.__value_.__s.__data_[0];
        v27 = v16;
        do
        {
          v28 = v17 - size;
          if (v28 == -1)
          {
            break;
          }

          v29 = memchr(v27, v26, v28 + 1);
          if (!v29)
          {
            break;
          }

          v30 = v29;
          if (!memcmp(v29, v19, size))
          {
            if (v30 != v25)
            {
              v24 = v30 - v16;
              if (v30 - v16 != -1)
              {
                goto LABEL_48;
              }
            }

            break;
          }

          v27 = v30 + 1;
          v17 = v25 - (v30 + 1);
        }

        while (v17 >= size);
      }

      sub_1D0BBB60C(&v61, __s);
      v21 = std::string::append(&v61, ":", 1uLL);
      v15 = *(a1 + 31);
      if (v15 < 0)
      {
        v22 = *(a1 + 8);
        v23 = *(a1 + 16);
      }

      else
      {
        v22 = (a1 + 8);
        v23 = *(a1 + 31);
      }

      v31 = SHIBYTE(v21->__r_.__value_.__r.__words[2]);
      if (v31 >= 0)
      {
        v32 = v21;
      }

      else
      {
        v32 = v21->__r_.__value_.__r.__words[0];
      }

      if (v31 >= 0)
      {
        v33 = HIBYTE(v21->__r_.__value_.__r.__words[2]);
      }

      else
      {
        v33 = v21->__r_.__value_.__l.__size_;
      }

      if (v33)
      {
        if (v23 >= v33)
        {
          v35 = &v22[v23];
          v36 = v32->__r_.__value_.__s.__data_[0];
          v37 = v22;
          do
          {
            v38 = v23 - v33;
            if (v38 == -1)
            {
              break;
            }

            v39 = memchr(v37, v36, v38 + 1);
            if (!v39)
            {
              break;
            }

            v40 = v39;
            if (!memcmp(v39, v32, v33))
            {
              v34 = 1;
              if (v40 == v35)
              {
                goto LABEL_35;
              }

              LOBYTE(a3) = __s;
              if (v40 != v22)
              {
                goto LABEL_96;
              }

              goto LABEL_47;
            }

            v37 = v40 + 1;
            v23 = v35 - (v40 + 1);
          }

          while (v23 >= v33);
        }

        v34 = 1;
LABEL_35:
        LOBYTE(a3) = __s;
LABEL_96:
        if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v61.__r_.__value_.__l.__data_);
          if (v34)
          {
            goto LABEL_98;
          }
        }

        else if (v34)
        {
          goto LABEL_98;
        }

        return 1;
      }

LABEL_47:
      v24 = 0;
    }

    else
    {
      v24 = 0;
    }

LABEL_48:
    v41 = HIBYTE(v61.__r_.__value_.__r.__words[2]);
    if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v41 = v61.__r_.__value_.__l.__size_;
    }

    v42 = v41 + v24;
    if ((v15 & 0x80000000) != 0)
    {
      goto LABEL_53;
    }

LABEL_51:
    v43 = v15;
    if (v42 < v15)
    {
      while (v43 > v42)
      {
        v44 = a1 + 8;
        if ((v15 & 0x80000000) != 0)
        {
          v44 = *v14;
        }

        if (*(v44 + v42) != 58)
        {
          v45 = v15;
          if ((v15 & 0x80000000) != 0)
          {
            v45 = *(a1 + 16);
          }

          if (v45 <= v42)
          {
            break;
          }

          v46 = a1 + 8;
          if ((v15 & 0x80000000) != 0)
          {
            v46 = *v14;
          }

          if (*(v46 + v42) != 32)
          {
            v47 = v15;
            if ((v15 & 0x80000000) != 0)
            {
              v47 = *(a1 + 16);
            }

            if (v47 <= v42)
            {
              break;
            }

            v48 = a1 + 8;
            if ((v15 & 0x80000000) != 0)
            {
              v48 = *v14;
            }

            if (*(v48 + v42) != 9)
            {
              goto LABEL_72;
            }
          }
        }

        ++v42;
        if ((v15 & 0x80000000) == 0)
        {
          goto LABEL_51;
        }

LABEL_53:
        v43 = *(a1 + 16);
        if (v42 >= v43)
        {
          goto LABEL_72;
        }
      }

      sub_1D0C54390();
    }

LABEL_72:
    v49 = 0;
    LOBYTE(a3) = __s;
    do
    {
      v50 = v42 + v49;
      v51 = *(a1 + 31);
      if ((v51 & 0x8000000000000000) != 0)
      {
        if (v50 >= *(a1 + 16))
        {
          break;
        }
      }

      else if (v50 >= v51)
      {
        break;
      }

      v52 = a1 + 8;
      if ((v51 & 0x80000000) != 0)
      {
        v52 = *v14;
      }

      if (*(v52 + v49 + v42) == 10)
      {
        break;
      }

      if ((v51 & 0x80000000) != 0)
      {
        v53 = *(a1 + 16);
      }

      else
      {
        v53 = *(a1 + 31);
      }

      if (v53 <= v50)
      {
LABEL_104:
        sub_1D0C54390();
      }

      v54 = a1 + 8;
      if ((v51 & 0x80000000) != 0)
      {
        v54 = *v14;
      }

      if (*(v54 + v49 + v42) == 13)
      {
        break;
      }

      if ((v51 & 0x80000000) != 0)
      {
        v55 = *(a1 + 16);
      }

      else
      {
        v55 = *(a1 + 31);
      }

      if (v55 <= v50)
      {
        goto LABEL_104;
      }

      v56 = a1 + 8;
      if ((v51 & 0x80000000) != 0)
      {
        v56 = *v14;
      }

      *(a2 + v49) = *(v56 + v49 + v42);
      ++v49;
    }

    while (v49 != 255);
    v34 = 0;
    *(a2 + v49) = 0;
    if (*(a1 + 32) == 1)
    {
      v60 = 0;
      v59 = 2;
      cnprint::CNPrinter::Print(&v60, &v59, "ConfigLoader: %s loaded value %s", a4, a5, a6, a7, a8, __s);
      v34 = 0;
    }

    goto LABEL_96;
  }

  if (*(a1 + 16))
  {
    goto LABEL_5;
  }

LABEL_98:
  a2[14] = 0u;
  a2[15] = 0u;
  a2[12] = 0u;
  a2[13] = 0u;
  a2[10] = 0u;
  a2[11] = 0u;
  a2[8] = 0u;
  a2[9] = 0u;
  a2[6] = 0u;
  a2[7] = 0u;
  a2[4] = 0u;
  a2[5] = 0u;
  a2[2] = 0u;
  a2[3] = 0u;
  *a2 = 0u;
  a2[1] = 0u;
  if (*(a1 + 32) == 1)
  {
    LOWORD(v61.__r_.__value_.__l.__data_) = 0;
    LOBYTE(v60) = 2;
    cnprint::CNPrinter::Print(&v61, &v60, "ConfigLoader: %s using default value %s", a4, a5, a6, a7, a8, a3);
  }

  return 0;
}

void sub_1D0E489DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0E48A04(uint64_t a1, char *a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v28 = *MEMORY[0x1E69E9840];
  if (!sub_1D0E48578(a1, __s, a3, a4, a5, a6, a7, a8))
  {
    v15 = 0;
    goto LABEL_71;
  }

  if (!__s[0])
  {
    goto LABEL_70;
  }

  p_p = &__p;
  sub_1D0B751F4(&__p, __s);
  v10 = v26;
  v11 = __p;
  if ((v26 & 0x80u) == 0)
  {
    v12 = &__p + v26;
  }

  else
  {
    v12 = __p + v25;
  }

  if ((v26 & 0x80u) != 0)
  {
    p_p = __p;
  }

  if (p_p != v12)
  {
    do
    {
      *p_p = __tolower(*p_p);
      ++p_p;
    }

    while (p_p != v12);
    v10 = v26;
    v11 = __p;
  }

  v13 = &__p;
  if ((v10 & 0x80u) != 0)
  {
    v13 = v11;
  }

  if (*v13 == 49)
  {
    goto LABEL_14;
  }

  if ((v10 & 0x80) != 0)
  {
    if (v25 == 1)
    {
      v21 = *v11;
      switch(v21)
      {
        case '0':
          goto LABEL_66;
        case 'y':
          goto LABEL_14;
        case 'n':
          goto LABEL_66;
      }
    }

    else
    {
      if (v25 == 3)
      {
        if (*v11 == 25977 && *(v11 + 2) == 115)
        {
          goto LABEL_14;
        }
      }

      else if (v25 == 4 && *v11 == 1702195828)
      {
        goto LABEL_14;
      }

      if (*v11 == 48)
      {
        goto LABEL_66;
      }

      v19 = v11;
      if (v25 == 2)
      {
        goto LABEL_63;
      }

      if (v25 == 5 && *v11 == 1936482662 && *(v11 + 4) == 101)
      {
        goto LABEL_66;
      }
    }

    v15 = 0;
    *a2 = 0;
LABEL_69:
    operator delete(v11);
    goto LABEL_71;
  }

  if (v10 == 1)
  {
    if (v11 == 48 || v11 == 110)
    {
      goto LABEL_66;
    }

    if (v11 != 121)
    {
      goto LABEL_70;
    }
  }

  else if (v10 == 3)
  {
    if (__p != 25977 || BYTE2(__p) != 115)
    {
      goto LABEL_31;
    }
  }

  else if (v10 != 4 || v11 != 1702195828)
  {
LABEL_31:
    if (v11 == 48)
    {
      goto LABEL_66;
    }

    if (v10 != 1)
    {
      if (v10 != 2)
      {
        if (v10 != 5)
        {
          goto LABEL_70;
        }

        if (__p != 1936482662 || BYTE4(__p) != 101)
        {
          goto LABEL_70;
        }

LABEL_66:
        v14 = 0;
        goto LABEL_67;
      }

      v19 = &__p;
LABEL_63:
      v14 = 0;
      v15 = 0;
      if (*v19 != 28526)
      {
        goto LABEL_68;
      }

      goto LABEL_67;
    }

    if (v11 == 110)
    {
      goto LABEL_66;
    }

LABEL_70:
    v15 = 0;
    *a2 = 0;
    goto LABEL_71;
  }

LABEL_14:
  v14 = 1;
LABEL_67:
  v15 = 1;
LABEL_68:
  *a2 = v14;
  if ((v10 & 0x80) != 0)
  {
    goto LABEL_69;
  }

LABEL_71:
  v22 = *MEMORY[0x1E69E9840];
  return v15;
}

uint64_t sub_1D0E48CE0(uint64_t a1, void *a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = *MEMORY[0x1E69E9840];
  result = sub_1D0E48578(a1, __s, a3, a4, a5, a6, a7, a8);
  if (result)
  {
    v11 = 0;
    v12[0] = __s;
    v12[1] = &__s[strlen(__s)];
    if ((sub_1D0D42304(v12, &v11) & 1) == 0)
    {
      std::bad_cast::bad_cast(&v13);
      v13.__vftable = &unk_1F4CDFA50;
      v14 = MEMORY[0x1E69E53D8];
      v15 = MEMORY[0x1E69E5458];
      sub_1D0D428D0(&v13);
    }

    *a2 = v11;
    result = 1;
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1D0E48DC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::exception a13, __int128 a14)
{
  std::exception::~exception(&a13);
  if (a2 == 1)
  {
    exception_ptr = __cxa_get_exception_ptr(a1);
    a13.__vftable = &unk_1F4CDFA50;
    a14 = *(exception_ptr + 8);
    __cxa_begin_catch(a1);
    std::exception::~exception(&a13);
    __cxa_end_catch();
    JUMPOUT(0x1D0E48D4CLL);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1D0E48E44(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    v4 = a1 + 5;
    v3 = a1[1];
  }

  else
  {
    v4 = a1 + 5;
    v5 = a1[4];
    v6 = &v2[v5 / 0xAA];
    v7 = *v6;
    v8 = *v6 + 24 * (v5 % 0xAA);
    v9 = v2[(a1[5] + v5) / 0xAA] + 24 * ((a1[5] + v5) % 0xAA);
    if (v8 != v9)
    {
      do
      {
        if (*(v8 + 23) < 0)
        {
          operator delete(*v8);
          v7 = *v6;
        }

        v8 += 24;
        if (v8 - v7 == 4080)
        {
          v10 = v6[1];
          ++v6;
          v7 = v10;
          v8 = v10;
        }
      }

      while (v8 != v9);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v11 = v3 - v2;
  if (v11 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v11 = v3 - v2;
    }

    while (v11 > 2);
  }

  if (v11 == 1)
  {
    v12 = 85;
  }

  else
  {
    if (v11 != 2)
    {
      goto LABEL_18;
    }

    v12 = 170;
  }

  a1[4] = v12;
LABEL_18:
  while (v2 != v3)
  {
    v13 = *v2++;
    operator delete(v13);
  }

  return sub_1D0C565EC(a1);
}

void *sub_1D0E48FA0(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    if (a2 < 0x555555555555556)
    {
      sub_1D0E49028(a2);
    }

    sub_1D0C5663C();
  }

  return result;
}

void sub_1D0E4900C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D0E49028(unint64_t a1)
{
  if (a1 < 0x555555555555556)
  {
    operator new();
  }

  sub_1D0C54BE8();
}

void *sub_1D0E49080(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1D0C5663C();
  }

  return result;
}

void sub_1D0E4910C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1D0E49128(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    if (a2 < 0xE38E38E38E38E4)
    {
      sub_1D0E491B4(a2);
    }

    sub_1D0C5663C();
  }

  return result;
}

void sub_1D0E49198(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D0E491B4(unint64_t a1)
{
  if (a1 < 0xE38E38E38E38E4)
  {
    operator new();
  }

  sub_1D0C54BE8();
}

uint64_t swan::LoadMATLABData::Load(uint64_t a1, const char *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v46 = *MEMORY[0x1E69E9840];
  snprintf(__str, 0x100uLL, "%s%s", a2, "t_noisy.txt");
  v18 = fopen(__str, "r");
  if (!v18)
  {
    goto LABEL_26;
  }

  v19 = v18;
  if (a3)
  {
    v20 = 0;
    v21 = 1;
    do
    {
      fscanf(v19, "%lf\n", a4 + 8 * v20);
      v20 = v21++;
    }

    while (v20 < a3);
  }

  fclose(v19);
  snprintf(__str, 0x100uLL, "%s%s", a2, "x_noisy.txt");
  v22 = fopen(__str, "r");
  if (!v22)
  {
    goto LABEL_26;
  }

  v23 = v22;
  if (a3)
  {
    v24 = 0;
    v25 = 1;
    do
    {
      fscanf(v23, "%lf %lf %lf %lf %lf %lf\n", a5 + 48 * v24, a5 + 48 * v24 + 8, a5 + 48 * v24 + 16, a5 + 48 * v24 + 24, a5 + 48 * v24 + 32, a5 + 48 * v24 + 40);
      v24 = v25++;
    }

    while (v24 < a3);
  }

  fclose(v23);
  snprintf(__str, 0x100uLL, "%s%s", a2, "sigma_x.txt");
  v26 = fopen(__str, "r");
  if (!v26)
  {
    goto LABEL_26;
  }

  v27 = v26;
  if (a3)
  {
    v28 = 0;
    v29 = 1;
    do
    {
      fscanf(v27, "%lf %lf %lf\n", a6 + 24 * v28, a6 + 24 * v28 + 8, a6 + 24 * v28 + 16);
      v28 = v29++;
    }

    while (v28 < a3);
  }

  fclose(v27);
  snprintf(__str, 0x100uLL, "%s%s", a2, "sigma_vx.txt");
  v30 = fopen(__str, "r");
  if (!v30)
  {
    goto LABEL_26;
  }

  v31 = v30;
  if (a3)
  {
    v32 = 0;
    v33 = 1;
    do
    {
      fscanf(v31, "%lf %lf %lf\n", a7 + 24 * v32, a7 + 24 * v32 + 8, a7 + 24 * v32 + 16);
      v32 = v33++;
    }

    while (v32 < a3);
  }

  fclose(v31);
  snprintf(__str, 0x100uLL, "%s%s", a2, "x0.txt");
  v34 = fopen(__str, "r");
  if (!v34)
  {
    goto LABEL_26;
  }

  v35 = v34;
  v36 = 6;
  do
  {
    fscanf(v35, "%lf\n", a8);
    a8 += 8;
    --v36;
  }

  while (v36);
  fclose(v35);
  snprintf(__str, 0x100uLL, "%s%s", a2, "P0.txt");
  v37 = fopen(__str, "r");
  if (!v37)
  {
    goto LABEL_26;
  }

  v38 = v37;
  for (i = 0; i != 48; i += 8)
  {
    fscanf(v38, "%lf %lf %lf %lf %lf %lf\n", *(a9 + i), *(a9 + i) + 8, *(a9 + i) + 16, *(a9 + i) + 24, *(a9 + i) + 32, *(a9 + i) + 40);
  }

  fclose(v38);
  snprintf(__str, 0x100uLL, "%s%s", a2, "sigma_wx_horizontal.txt");
  v40 = fopen(__str, "r");
  if (v40 && (fscanf(v40, "%lf\n", a10), snprintf(__str, 0x100uLL, "%s%s", a2, "sigma_wx_vertical.txt"), (v41 = fopen(__str, "r")) != 0))
  {
    v42 = v41;
    fscanf(v41, "%lf\n", a11);
    fclose(v42);
  }

  else
  {
LABEL_26:
    printf("Error opening %s. Exiting.\n", __str);
  }

  v43 = *MEMORY[0x1E69E9840];
  return 0xFFFFFFFFLL;
}

double swan::BatchLogParser::BatchLogParser(swan::BatchLogParser *this)
{
  *(this + 8) = 0;
  result = 0.0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  return result;
}

{
  *(this + 8) = 0;
  result = 0.0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  return result;
}

BOOL swan::BatchLogParser::contains(swan::BatchLogParser *this, char *__s1, const char *__s2)
{
  result = 0;
  if (__s1)
  {
    if (__s2)
    {
      return strstr(__s1, __s2) != 0;
    }
  }

  return result;
}

void swan::BatchLogParser::trimField(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) >= 0)
  {
    v2 = *(a2 + 23);
  }

  else
  {
    v2 = *(a2 + 8);
  }

  if (v2)
  {
    operator new[]();
  }
}

BOOL swan::BatchLogParser::getField(void *a1, std::string *this, unint64_t a3)
{
  v4 = a1[8];
  if (v4 > a3)
  {
    std::string::operator=(this, (*(a1[4] + 8 * ((a1[7] + a3) / 0xAA)) + 24 * ((a1[7] + a3) % 0xAA)));
  }

  return v4 > a3;
}

BOOL swan::BatchLogParser::getField(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a1[8];
  if (!v4)
  {
    return 0;
  }

  for (i = 0; i < v4; ++i)
  {
    v9 = a1[7];
    v10 = a1[4];
    v11 = *(v10 + 8 * ((i + v9) / 0xAA)) + 24 * ((i + v9) % 0xAA);
    v12 = *(v11 + 23);
    if (v12 >= 0)
    {
      v13 = *(v11 + 23);
    }

    else
    {
      v13 = *(v11 + 8);
    }

    v14 = *(a3 + 23);
    v15 = v14;
    if ((v14 & 0x80u) != 0)
    {
      v14 = a3[1];
    }

    if (v13 == v14)
    {
      v16 = v12 >= 0 ? (*(v10 + 8 * ((i + v9) / 0xAA)) + 24 * ((i + v9) % 0xAA)) : *v11;
      v17 = *a3;
      v18 = v15 >= 0 ? a3 : *a3;
      if (!memcmp(v16, v18, v13))
      {
        if (a4 + i >= v4)
        {
          return 0;
        }

        std::string::operator=(a2, (*(v10 + 8 * ((a4 + i + v9) / 0xAA)) + 24 * ((a4 + i + v9) % 0xAA)));
        v4 = a1[8];
      }
    }
  }

  v19 = *(a2 + 23);
  if ((v19 & 0x80u) != 0)
  {
    v19 = *(a2 + 8);
  }

  return v19 != 0;
}

BOOL swan::BatchLogParser::getField(swan::BatchLogParser *this, double *a2, unint64_t a3)
{
  memset(&v10, 0, sizeof(v10));
  v4 = *(this + 8);
  if (v4 > a3)
  {
    std::string::operator=(&v10, (*(*(this + 4) + 8 * ((*(this + 7) + a3) / 0xAA)) + 24 * ((*(this + 7) + a3) % 0xAA)));
    v6 = SHIBYTE(v10.__r_.__value_.__r.__words[2]);
    v7 = v10.__r_.__value_.__r.__words[0];
    if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &v10;
    }

    else
    {
      v8 = v10.__r_.__value_.__r.__words[0];
    }

    *a2 = atof(v8);
    if (v6 < 0)
    {
      operator delete(v7);
    }
  }

  return v4 > a3;
}

void sub_1D0E49B14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL swan::BatchLogParser::getField(void *a1, double *a2, uint64_t a3, uint64_t a4)
{
  v13[0] = 0;
  v13[1] = 0;
  v14 = 0;
  if (*(a3 + 23) < 0)
  {
    sub_1D0BC39B4(__p, *a3, *(a3 + 8));
  }

  else
  {
    *__p = *a3;
    v12 = *(a3 + 16);
  }

  Field = swan::BatchLogParser::getField(a1, v13, __p, a4);
  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p[0]);
  }

  v8 = SHIBYTE(v14);
  if (Field)
  {
    if (v14 >= 0)
    {
      v9 = v13;
    }

    else
    {
      v9 = v13[0];
    }

    *a2 = atof(v9);
  }

  if (v8 < 0)
  {
    operator delete(v13[0]);
  }

  return Field;
}

void sub_1D0E49BF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL swan::BatchLogParser::getField(swan::BatchLogParser *this, int *a2, unint64_t a3)
{
  memset(&v10, 0, sizeof(v10));
  v4 = *(this + 8);
  if (v4 > a3)
  {
    std::string::operator=(&v10, (*(*(this + 4) + 8 * ((*(this + 7) + a3) / 0xAA)) + 24 * ((*(this + 7) + a3) % 0xAA)));
    v6 = SHIBYTE(v10.__r_.__value_.__r.__words[2]);
    v7 = v10.__r_.__value_.__r.__words[0];
    if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &v10;
    }

    else
    {
      v8 = v10.__r_.__value_.__r.__words[0];
    }

    *a2 = atoi(v8);
    if (v6 < 0)
    {
      operator delete(v7);
    }
  }

  return v4 > a3;
}

void sub_1D0E49CDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL swan::BatchLogParser::getField(swan::BatchLogParser *this, uint64_t *a2, unint64_t a3)
{
  memset(&v10, 0, sizeof(v10));
  v4 = *(this + 8);
  if (v4 > a3)
  {
    std::string::operator=(&v10, (*(*(this + 4) + 8 * ((*(this + 7) + a3) / 0xAA)) + 24 * ((*(this + 7) + a3) % 0xAA)));
    v6 = SHIBYTE(v10.__r_.__value_.__r.__words[2]);
    v7 = v10.__r_.__value_.__r.__words[0];
    if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &v10;
    }

    else
    {
      v8 = v10.__r_.__value_.__r.__words[0];
    }

    *a2 = atoll(v8);
    if (v6 < 0)
    {
      operator delete(v7);
    }
  }

  return v4 > a3;
}

void sub_1D0E49DB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL swan::BatchLogParser::getField(swan::BatchLogParser *this, unsigned int *a2, unint64_t a3)
{
  memset(&__str, 0, sizeof(__str));
  v4 = *(this + 8);
  if (v4 > a3)
  {
    std::string::operator=(&__str, (*(*(this + 4) + 8 * ((*(this + 7) + a3) / 0xAA)) + 24 * ((*(this + 7) + a3) % 0xAA)));
    *a2 = std::stoul(&__str, 0, 10);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }

  return v4 > a3;
}

void sub_1D0E49E78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL swan::BatchLogParser::getField(void *a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  memset(&__str, 0, sizeof(__str));
  if (*(a3 + 23) < 0)
  {
    sub_1D0BC39B4(__p, *a3, *(a3 + 8));
  }

  else
  {
    *__p = *a3;
    v11 = *(a3 + 16);
  }

  Field = swan::BatchLogParser::getField(a1, &__str, __p, a4);
  v8 = Field;
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
    if (!v8)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (Field)
  {
LABEL_8:
    *a2 = std::stoul(&__str, 0, 10);
  }

LABEL_9:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  return v8;
}

void sub_1D0E49F58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL swan::BatchLogParser::getField(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v13[0] = 0;
  v13[1] = 0;
  v14 = 0;
  if (*(a3 + 23) < 0)
  {
    sub_1D0BC39B4(__p, *a3, *(a3 + 8));
  }

  else
  {
    *__p = *a3;
    v12 = *(a3 + 16);
  }

  Field = swan::BatchLogParser::getField(a1, v13, __p, a4);
  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p[0]);
  }

  v8 = SHIBYTE(v14);
  if (Field)
  {
    if (v14 >= 0)
    {
      v9 = v13;
    }

    else
    {
      v9 = v13[0];
    }

    *a2 = atoll(v9);
  }

  if (v8 < 0)
  {
    operator delete(v13[0]);
  }

  return Field;
}

void sub_1D0E4A04C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL swan::BatchLogParser::getField(void *a1, int *a2, uint64_t a3, uint64_t a4)
{
  v13[0] = 0;
  v13[1] = 0;
  v14 = 0;
  if (*(a3 + 23) < 0)
  {
    sub_1D0BC39B4(__p, *a3, *(a3 + 8));
  }

  else
  {
    *__p = *a3;
    v12 = *(a3 + 16);
  }

  Field = swan::BatchLogParser::getField(a1, v13, __p, a4);
  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p[0]);
  }

  v8 = SHIBYTE(v14);
  if (Field)
  {
    if (v14 >= 0)
    {
      v9 = v13;
    }

    else
    {
      v9 = v13[0];
    }

    *a2 = atoi(v9);
  }

  if (v8 < 0)
  {
    operator delete(v13[0]);
  }

  return Field;
}

void sub_1D0E4A140(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void swan::BatchLogParser::wipef()
{
  sub_1D0E4E3A8(&v0);
  v3 = 0;
  v2 = 0u;
  v1 = 0u;
  sub_1D0E4E408();
}

void sub_1D0E4A574(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, std::locale a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  sub_1D0E4A610(&a18);
  _Unwind_Resume(a1);
}

void sub_1D0E4A610(std::locale *this)
{
  locale = this[6].__locale_;
  if (locale)
  {
    sub_1D0B7CAB8(locale);
  }

  std::locale::~locale(this);
}

void sub_1D0E4AC8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  operator delete(v17);
  if (v16)
  {
    operator delete(v16);
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void swan::BatchLogParser::updateEnforceCsv(std::string *a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_1D0BC39B4(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    for (i = 0; i != size; ++i)
    {
      v5 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      v6 = __p.__r_.__value_.__r.__words[0];
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      if (p_p->__r_.__value_.__s.__data_[i] == 58)
      {
        p_p->__r_.__value_.__s.__data_[i] = 44;
        v5 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        v6 = __p.__r_.__value_.__r.__words[0];
      }

      if (v5 >= 0)
      {
        v8 = &__p;
      }

      else
      {
        v8 = v6;
      }

      if (v8->__r_.__value_.__s.__data_[i] == 93)
      {
        v8->__r_.__value_.__s.__data_[i] = 44;
        v5 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        v6 = __p.__r_.__value_.__r.__words[0];
      }

      if (v5 >= 0)
      {
        v9 = &__p;
      }

      else
      {
        v9 = v6;
      }

      if (v9->__r_.__value_.__s.__data_[i] == 61)
      {
        v9->__r_.__value_.__s.__data_[i] = 44;
      }
    }
  }

  swan::BatchLogParser::update(a1, &__p);
}

void sub_1D0E4ADE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t swan::BatchLogParser::convertASCIIToStruct(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x1EEE9AC00](a1, a2, a3, a4);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v55 = *MEMORY[0x1E69E9840];
  bzero(&v38, 0xF8uLL);
  if (*(v13 + 23) >= 0)
  {
    v14 = v13;
  }

  else
  {
    v14 = *v13;
  }

  v15 = fopen(v14, "r");
  if (v15)
  {
    v16 = v15;
    sub_1D0B751F4(&__p, "%%1:deviceTime(s),2:Latitude(deg),3:Longitude(deg),4:Accuracy(m),5:TTFF(s),6:TTF(s),7:Speed(m/s),8:Course(deg),9:Altitude(m),10:VerticalAccuracy(m),11:AssistanceTime,12:AssistanceLocation,13:AssistanceEph,14:GpsTimeOfWeeks(ms),15:GpsWeek,16:Undulation(m),17:SpeedAccuracy(m/s),18:CourseAccuracy(deg),19:A(m),20:B(m),21:AZ(deg),22:HDOP,23:VDOP,24:ODOM,25:LP,26:SA,27:R,28:VTOW,29:CTOW,30:TUNC,31:NS,32:MS,33:AgeOfPowerMode,34:SQI,35:verticalSpeed(m/s),36:vertcalSpeedAccuracy(m/s)\n");
    v17 = 0;
    v18 = 0;
    *v5 = 0;
    while (1)
    {
      do
      {
        if (feof(v16) || !fgets(v54, 0x2000, v16))
        {
          goto LABEL_14;
        }
      }

      while (v54[0] == 37);
      if (sscanf(v54, "%lf,%lf,%lf,%lf,%lf,%lf,%lf,%lf,%lf,%lf,%d,%d,%d,%d,%lf,%lf,%lf,%lf,%lf,%lf,%lf,%lf,%lf,%lf,%d,%d,%d,%d,%d,%lf,%d,%d,%lf,%d,%lf,%lf\n", &v38, &v38 + 8, &v39, &v39 + 8, &v40, &v40 + 8, &v41, &v41 + 8, &v42, &v42 + 8, &v43, &v43 + 4, &v43 + 8, &v43 + 12, &v44, &v44 + 8, &v45, &v45 + 8, &v46, &v46 + 8, &v47, &v47 + 8, &v48, &v48 + 8, &v49, &v49 + 4, &v49 + 8, &v49 + 12, &v50, &v50 + 8, &v51, &v51 + 4, &v51 + 8, &v52, &v52 + 8, &v53) != 36)
      {
        break;
      }

      v19 = *v7 + 248 * v18;
      v20 = v38;
      v21 = v39;
      v22 = v41;
      *(v19 + 32) = v40;
      *(v19 + 48) = v22;
      *v19 = v20;
      *(v19 + 16) = v21;
      v23 = v42;
      v24 = v43;
      v25 = v45;
      *(v19 + 96) = v44;
      *(v19 + 112) = v25;
      *(v19 + 64) = v23;
      *(v19 + 80) = v24;
      v26 = v46;
      v27 = v47;
      v28 = v49;
      *(v19 + 160) = v48;
      *(v19 + 176) = v28;
      *(v19 + 128) = v26;
      *(v19 + 144) = v27;
      v29 = v50;
      v30 = v51;
      v31 = v52;
      *(v19 + 240) = v53;
      *(v19 + 208) = v30;
      *(v19 + 224) = v31;
      *(v19 + 192) = v29;
      if (++v17 > v9)
      {
        ++v18;
      }

      if (v18 == v11)
      {
        v18 = v11;
LABEL_14:
        v32 = 0;
        *v5 = v18;
        goto LABEL_15;
      }
    }

    v32 = 0xFFFFFFFFLL;
LABEL_15:
    if (v37 < 0)
    {
      operator delete(__p);
    }
  }

  else
  {
    if (*(v13 + 23) >= 0)
    {
      v33 = v13;
    }

    else
    {
      v33 = *v13;
    }

    fprintf(*MEMORY[0x1E69E9848], "Unable to open %s\n", v33);
    v32 = 0xFFFFFFFFLL;
  }

  v34 = *MEMORY[0x1E69E9840];
  return v32;
}

{
  MEMORY[0x1EEE9AC00](a1, a2, a3, a4);
  v5 = v4;
  v16 = v6;
  v8 = v7;
  v21 = *MEMORY[0x1E69E9840];
  bzero(__src, 0x108uLL);
  if (*(v8 + 23) >= 0)
  {
    v9 = v8;
  }

  else
  {
    v9 = *v8;
  }

  v10 = fopen(v9, "r");
  if (v10)
  {
    v11 = v10;
    sub_1D0B751F4(&__p, "%%1:deviceTime(s),2:Latitude(deg),3:Longitude(deg),4:Accuracy(m),5:TTFF(s),6:TTF(s),7:Speed(m/s),8:Course(deg),9:Altitude(m),10:VerticalAccuracy(m),11:AssistanceTime,12:AssistanceLocation,13:AssistanceEph,14:GpsTimeOfWeeks(ms),15:GpsWeek,16:Undulation(m),17:SpeedAccuracy(m/s),18:CourseAccuracy(deg),19:A(m),20:B(m),21:AZ(deg),22:HDOP,23:VDOP,24:ODOM,25:LP,26:SA,27:R,28:VTOW,29:CTOW,30:TUNC,31:NS,32:MS,33:AgeOfPowerMode,34:SQI,35:verticalSpeed(m/s),36:vertcalSpeedAccuracy(m/s)\n");
    *v5 = 0;
    if (!feof(v11))
    {
      while (fgets(v20, 0x2000, v11))
      {
        if (v20[0] != 37)
        {
          if (sscanf(v20, "%lf,%x,%lf,%d,%d,%lld,%d,%lf,%lf,%lf,%lf,%lf,%d,%lf,%lf,%lf,%lf,%lf,%lf,%lf,%lf,%lf,%lf,%lf,%lf,%d,%lf,%lf,%lf,%d,%lf,%lf,%lf,%lf\n", __src, &__src[8], &__src[16], &__src[24], &__src[28], &__src[32], &__src[40], &__src[48], &__src[56], &__src[64], &__src[72], &__src[80], &__src[88], &__src[96], &__src[104], &__src[112], &__src[120], &__src[128], &__src[136], &__src[144], &__src[152], &__src[160], &__src[168], &__src[176], &__src[184], &__src[192], &__src[200], &__src[208], &__src[216], &__src[224], &__src[232], &__src[240], &__src[248], &__src[256]) != 34)
          {
            v12 = 0xFFFFFFFFLL;
            goto LABEL_7;
          }

          memcpy((v16 + 264 * *v5), __src, 0x108uLL);
          ++*v5;
        }

        if (feof(v11))
        {
          break;
        }
      }
    }

    v12 = 0;
LABEL_7:
    if (v18 < 0)
    {
      operator delete(__p);
    }
  }

  else
  {
    if (*(v8 + 23) >= 0)
    {
      v13 = v8;
    }

    else
    {
      v13 = *v8;
    }

    fprintf(*MEMORY[0x1E69E9848], "Unable to open %s\n", v13);
    v12 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v12;
}

uint64_t swan::BatchLogParser::parseGPSBatchIntoASCII(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x1EEE9AC00](a1, a2, a3, a4);
  v5 = v4;
  v7 = v6;
  v51 = *MEMORY[0x1E69E9840];
  bzero(v47, 0x108uLL);
  if (*(v7 + 23) >= 0)
  {
    v8 = v7;
  }

  else
  {
    v8 = *v7;
  }

  v9 = fopen(v8, "r");
  if (!v9)
  {
    if (*(v7 + 23) >= 0)
    {
      v33 = v7;
    }

    else
    {
      v33 = *v7;
    }

    fprintf(*MEMORY[0x1E69E9848], "Unable to open %s\n", v33);
    v32 = 0xFFFFFFFFLL;
    goto LABEL_87;
  }

  v10 = v9;
  if (*(v5 + 23) >= 0)
  {
    v11 = *(v5 + 23);
  }

  else
  {
    v11 = v5[1];
  }

  p_p = &__p;
  sub_1D0BBB710(&__p, v11 + 6);
  if (v46 < 0)
  {
    p_p = __p;
  }

  if (v11)
  {
    if (*(v5 + 23) >= 0)
    {
      v13 = v5;
    }

    else
    {
      v13 = *v5;
    }

    memmove(p_p, v13, v11);
  }

  strcpy(p_p + v11, ".1.csv");
  if (v46 >= 0)
  {
    v14 = &__p;
  }

  else
  {
    v14 = __p;
  }

  v15 = fopen(v14, "w");
  if (!v15)
  {
    v34 = &__p;
    if (v46 < 0)
    {
      v34 = __p;
    }

    fprintf(*MEMORY[0x1E69E9848], "Unable to open %s\n", v34);
    v32 = 0xFFFFFFFFLL;
    goto LABEL_85;
  }

  sub_1D0B751F4(v42, "%%1:deviceTime(s),2:Latitude(deg),3:Longitude(deg),4:Accuracy(m),5:TTFF(s),6:TTF(s),7:Speed(m/s),8:Course(deg),9:Altitude(m),10:VerticalAccuracy(m),11:AssistanceTime,12:AssistanceLocation,13:AssistanceEph,14:GpsTimeOfWeeks(ms),15:GpsWeek,16:Undulation(m),17:SpeedAccuracy(m/s),18:CourseAccuracy(deg),19:A(m),20:B(m),21:AZ(deg),22:HDOP,23:VDOP,24:ODOM,25:LP,26:SA,27:R,28:VTOW,29:CTOW,30:TUNC,31:NS,32:MS,33:AgeOfPowerMode,34:SQI,35:verticalSpeed(m/s),36:vertcalSpeedAccuracy(m/s)\n");
  if (v43 >= 0)
  {
    v16 = v42;
  }

  else
  {
    v16 = v42[0];
  }

  fputs(v16, v15);
  v17 = 1;
  v37 = -1;
  while (!feof(v10) && fgets(__s1, 0x2000, v10))
  {
    v41 = 0;
    memset(v40, 0, sizeof(v40));
    if (!strstr(__s1, "Batched results processed"))
    {
      goto LABEL_61;
    }

    fclose(v15);
    if (*(v5 + 23) >= 0)
    {
      v18 = *(v5 + 23);
    }

    else
    {
      v18 = v5[1];
    }

    sub_1D0BBB710(&v39, v18 + 1);
    if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v19 = &v39;
    }

    else
    {
      v19 = v39.__r_.__value_.__r.__words[0];
    }

    if (v18)
    {
      if (*(v5 + 23) >= 0)
      {
        v20 = v5;
      }

      else
      {
        v20 = *v5;
      }

      memmove(v19, v20, v18);
    }

    ++v17;
    *(&v19->__r_.__value_.__l.__data_ + v18) = 46;
    std::to_string(&v38, v17);
    if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v21 = &v38;
    }

    else
    {
      v21 = v38.__r_.__value_.__r.__words[0];
    }

    if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v38.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v38.__r_.__value_.__l.__size_;
    }

    v23 = std::string::append(&v39, v21, size);
    v24 = *&v23->__r_.__value_.__l.__data_;
    v50[0].__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
    *&v50[0].__r_.__value_.__l.__data_ = v24;
    v23->__r_.__value_.__l.__size_ = 0;
    v23->__r_.__value_.__r.__words[2] = 0;
    v23->__r_.__value_.__r.__words[0] = 0;
    v25 = std::string::append(v50, ".csv", 4uLL);
    v26 = v25->__r_.__value_.__r.__words[0];
    v48[0] = v25->__r_.__value_.__l.__size_;
    *(v48 + 7) = *(&v25->__r_.__value_.__r.__words[1] + 7);
    v27 = HIBYTE(v25->__r_.__value_.__r.__words[2]);
    v25->__r_.__value_.__l.__size_ = 0;
    v25->__r_.__value_.__r.__words[2] = 0;
    v25->__r_.__value_.__r.__words[0] = 0;
    if (v46 < 0)
    {
      operator delete(__p);
    }

    __p = v26;
    *v45 = v48[0];
    *&v45[7] = *(v48 + 7);
    v46 = v27;
    if (SHIBYTE(v50[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v50[0].__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v38.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v39.__r_.__value_.__l.__data_);
    }

    if (v46 >= 0)
    {
      v28 = &__p;
    }

    else
    {
      v28 = __p;
    }

    v15 = fopen(v28, "w");
    if (v15)
    {
      sub_1D0B751F4(v50, "%%1:deviceTime(s),2:Latitude(deg),3:Longitude(deg),4:Accuracy(m),5:TTFF(s),6:TTF(s),7:Speed(m/s),8:Course(deg),9:Altitude(m),10:VerticalAccuracy(m),11:AssistanceTime,12:AssistanceLocation,13:AssistanceEph,14:GpsTimeOfWeeks(ms),15:GpsWeek,16:Undulation(m),17:SpeedAccuracy(m/s),18:CourseAccuracy(deg),19:A(m),20:B(m),21:AZ(deg),22:HDOP,23:VDOP,24:ODOM,25:LP,26:SA,27:R,28:VTOW,29:CTOW,30:TUNC,31:NS,32:MS,33:AgeOfPowerMode,34:SQI,35:verticalSpeed(m/s),36:vertcalSpeedAccuracy(m/s)\n");
      if ((v50[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v29 = v50;
      }

      else
      {
        v29 = v50[0].__r_.__value_.__r.__words[0];
      }

      fputs(v29, v15);
      if (SHIBYTE(v50[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v50[0].__r_.__value_.__l.__data_);
      }

      v37 = 0;
LABEL_61:
      if (strstr(__s1, ",CL-GPS,BATCHED,"))
      {
        sub_1D0B751F4(v50, __s1);
        swan::BatchLogParser::updateEnforceCsv(v40, v50);
      }

      v30 = 1;
      goto LABEL_68;
    }

    if (v46 >= 0)
    {
      v31 = &__p;
    }

    else
    {
      v31 = __p;
    }

    fprintf(*MEMORY[0x1E69E9848], "Unable to open %s\n", v31);
    v30 = 0;
LABEL_68:
    sub_1D0E48E44(&v40[24]);
    if ((v40[23] & 0x80000000) != 0)
    {
      operator delete(*v40);
      if ((v30 & 1) == 0)
      {
LABEL_72:
        v32 = 0;
        goto LABEL_80;
      }
    }

    else if ((v30 & 1) == 0)
    {
      goto LABEL_72;
    }
  }

  if (v15)
  {
    fclose(v15);
  }

  fclose(v10);
  v32 = v37;
LABEL_80:
  if (v43 < 0)
  {
    operator delete(v42[0]);
  }

LABEL_85:
  if (v46 < 0)
  {
    operator delete(__p);
  }

LABEL_87:
  v35 = *MEMORY[0x1E69E9840];
  return v32;
}

void sub_1D0E4C15C(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x3C7]) < 0)
  {
    operator delete(STACK[0x3B0]);
  }

  _Unwind_Resume(a1);
}

uint64_t swan::BatchLogParser::parseGPSSaIntoASCII(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x1EEE9AC00](a1, a2, a3, a4);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  __p[128] = *MEMORY[0x1E69E9840];
  bzero(&v31, 0xF8uLL);
  if (*(v9 + 23) >= 0)
  {
    v10 = v9;
  }

  else
  {
    v10 = *v9;
  }

  v11 = fopen(v10, "r");
  if (!v11)
  {
    v23 = *MEMORY[0x1E69E9848];
    if (*(v9 + 23) >= 0)
    {
      v24 = v9;
    }

    else
    {
      v24 = *v9;
    }

    goto LABEL_26;
  }

  v12 = v11;
  v13 = *(v9 + 23);
  if (v13 >= 0)
  {
    v14 = v9;
  }

  else
  {
    v14 = *v9;
  }

  if (v13 >= 0)
  {
    v15 = *(v9 + 23);
  }

  else
  {
    v15 = *(v9 + 8);
  }

  v16 = sub_1D0BCD7C4(MEMORY[0x1E69E5310], v14, v15);
  std::ios_base::getloc((v16 + *(*v16 - 24)));
  v17 = std::locale::use_facet(__p, MEMORY[0x1E69E5318]);
  (v17->__vftable[2].~facet_0)(v17, 10);
  std::locale::~locale(__p);
  std::ostream::put();
  std::ostream::flush();
  if (*(v5 + 23) >= 0)
  {
    v18 = v5;
  }

  else
  {
    v18 = *v5;
  }

  v19 = fopen(v18, "w");
  if (!v19)
  {
    v23 = *MEMORY[0x1E69E9848];
    if (*(v5 + 23) >= 0)
    {
      v24 = v5;
    }

    else
    {
      v24 = *v5;
    }

LABEL_26:
    fprintf(v23, "Unable to open %s\n", v24);
    v22 = 0;
    goto LABEL_40;
  }

  v20 = v19;
  sub_1D0B751F4(v29, "%%1:deviceTime(s),2:Latitude(deg),3:Longitude(deg),4:Accuracy(m),5:TTFF(s),6:TTF(s),7:Speed(m/s),8:Course(deg),9:Altitude(m),10:VerticalAccuracy(m),11:AssistanceTime,12:AssistanceLocation,13:AssistanceEph,14:GpsTimeOfWeeks(ms),15:GpsWeek,16:Undulation(m),17:SpeedAccuracy(m/s),18:CourseAccuracy(deg),19:A(m),20:B(m),21:AZ(deg),22:HDOP,23:VDOP,24:ODOM,25:LP,26:SA,27:R,28:VTOW,29:CTOW,30:TUNC,31:NS,32:MS,33:AgeOfPowerMode,34:SQI,35:verticalSpeed(m/s),36:vertcalSpeedAccuracy(m/s)\n");
  if (v30 >= 0)
  {
    v21 = v29;
  }

  else
  {
    v21 = v29[0];
  }

  fputs(v21, v20);
  if (feof(v12))
  {
    v22 = 0xFFFFFFFFLL;
  }

  else
  {
    v22 = 0xFFFFFFFFLL;
    do
    {
      if (!fgets(__s1, 0x2000, v12))
      {
        break;
      }

      v28 = 0;
      memset(v27, 0, sizeof(v27));
      if (strstr(__s1, "Type,CL-GPSsa,Pos,") && !strstr(__s1, "TTFF") && (v7 & 1) == 0 || strstr(__s1, ",Type,CL-BATCHED,Pos,") && v7)
      {
        sub_1D0B751F4(__p, __s1);
        swan::BatchLogParser::updateEnforceCsv(v27, __p);
      }

      sub_1D0E48E44(&v27[24]);
      if ((v27[23] & 0x80000000) != 0)
      {
        operator delete(*v27);
      }
    }

    while (!feof(v12));
  }

  fclose(v20);
  fclose(v12);
  if (v30 < 0)
  {
    operator delete(v29[0]);
  }

LABEL_40:
  v25 = *MEMORY[0x1E69E9840];
  return v22;
}

uint64_t swan::BatchLogParser::parseRavenFixIntoRouteSmootherEpoch(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x1EEE9AC00](a1, a2, a3, a4);
  v5 = v4;
  v36 = *MEMORY[0x1E69E9840];
  v27 = xmmword_1D0EC1620;
  v28 = xmmword_1D0E87BD0;
  __asm { FMOV            V0.2D, #-1.0 }

  v29 = xmmword_1D0E87BD0;
  v30 = _Q0;
  v31 = _Q0;
  v32 = _Q0;
  v33 = 0xBFF0000000000000;
  v34 = 0;
  if (*(v4 + 23) >= 0)
  {
    v11 = v4;
  }

  else
  {
    v11 = *v4;
  }

  v12 = fopen(v11, "r");
  if (v12)
  {
    v13 = v12;
    v14 = *(v5 + 23);
    if (v14 >= 0)
    {
      v15 = v5;
    }

    else
    {
      v15 = *v5;
    }

    if (v14 >= 0)
    {
      v16 = *(v5 + 23);
    }

    else
    {
      v16 = *(v5 + 8);
    }

    v17 = sub_1D0BCD7C4(MEMORY[0x1E69E5310], v15, v16);
    std::ios_base::getloc((v17 + *(*v17 - 24)));
    v18 = std::locale::use_facet(v24, MEMORY[0x1E69E5318]);
    (v18->__vftable[2].~facet_0)(v18, 10);
    std::locale::~locale(v24);
    std::ostream::put();
    std::ostream::flush();
    if (feof(v13))
    {
      v19 = 0xFFFFFFFFLL;
    }

    else
    {
      v19 = 0xFFFFFFFFLL;
      do
      {
        if (!fgets(__s1, 0x2000, v13))
        {
          break;
        }

        v26 = 0;
        *&v24[0].__locale_ = 0u;
        memset(v25, 0, sizeof(v25));
        if (strstr(__s1, "Raven,Fix,1,solution_type,5"))
        {
          sub_1D0B751F4(&__p, __s1);
          swan::BatchLogParser::updateEnforceCsv(v24, &__p);
        }

        if (strstr(__s1, "CL,Pos,1"))
        {
          sub_1D0B751F4(&__p, __s1);
          swan::BatchLogParser::updateEnforceCsv(v24, &__p);
        }

        sub_1D0E48E44(v25 + 1);
        if (SBYTE7(v25[0]) < 0)
        {
          operator delete(v24[0].__locale_);
        }
      }

      while (!feof(v13));
    }

    fclose(v13);
  }

  else
  {
    if (*(v5 + 23) >= 0)
    {
      v20 = v5;
    }

    else
    {
      v20 = *v5;
    }

    fprintf(*MEMORY[0x1E69E9848], "Unable to open %s\n", v20);
    v19 = 0;
  }

  v21 = *MEMORY[0x1E69E9840];
  return v19;
}

void sub_1D0E4DA6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, std::locale a57)
{
  std::locale::~locale(&STACK[0x248]);
  sub_1D0E452D8(&a57);
  _Unwind_Resume(a1);
}

void sub_1D0E4DBC8(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v12 = 0x6DB6DB6DB6DB6DB7 * ((v4 - *a1) >> 4);
    v13 = v12 + 1;
    if ((v12 + 1) > 0x249249249249249)
    {
      sub_1D0C5663C();
    }

    v14 = 0x6DB6DB6DB6DB6DB7 * ((v5 - *a1) >> 4);
    if (2 * v14 > v13)
    {
      v13 = 2 * v14;
    }

    if (v14 >= 0x124924924924924)
    {
      v15 = 0x249249249249249;
    }

    else
    {
      v15 = v13;
    }

    if (v15)
    {
      sub_1D0E4E34C(a1, v15);
    }

    v16 = 112 * v12;
    v17 = *a2;
    v18 = a2[2];
    *(v16 + 16) = a2[1];
    *(v16 + 32) = v18;
    *v16 = v17;
    v19 = a2[3];
    v20 = a2[4];
    v21 = a2[6];
    *(v16 + 80) = a2[5];
    *(v16 + 96) = v21;
    *(v16 + 48) = v19;
    *(v16 + 64) = v20;
    v11 = 112 * v12 + 112;
    v22 = *(a1 + 8) - *a1;
    v23 = v16 - v22;
    memcpy((v16 - v22), *a1, v22);
    v24 = *a1;
    *a1 = v23;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v24)
    {
      operator delete(v24);
    }
  }

  else
  {
    v6 = *a2;
    v7 = a2[2];
    v4[1] = a2[1];
    v4[2] = v7;
    *v4 = v6;
    v8 = a2[3];
    v9 = a2[4];
    v10 = a2[6];
    v4[5] = a2[5];
    v4[6] = v10;
    v4[3] = v8;
    v4[4] = v9;
    v11 = (v4 + 7);
  }

  *(a1 + 8) = v11;
}

uint64_t swan::BatchLogParser::parseCLRSFixIntoRouteSmootherEpoch(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x1EEE9AC00](a1, a2, a3, a4);
  v6 = v5;
  v7 = v4;
  v38 = *MEMORY[0x1E69E9840];
  v29 = xmmword_1D0EC1620;
  v30 = xmmword_1D0E87BD0;
  __asm { FMOV            V0.2D, #-1.0 }

  v31 = xmmword_1D0E87BD0;
  v32 = _Q0;
  v33 = _Q0;
  v34 = _Q0;
  v35 = 0xBFF0000000000000;
  v36 = 0;
  if (*(v4 + 23) >= 0)
  {
    v13 = v4;
  }

  else
  {
    v13 = *v4;
  }

  v14 = fopen(v13, "r");
  if (v14)
  {
    v15 = v14;
    v16 = *(v7 + 23);
    if (v16 >= 0)
    {
      v17 = v7;
    }

    else
    {
      v17 = *v7;
    }

    if (v16 >= 0)
    {
      v18 = *(v7 + 23);
    }

    else
    {
      v18 = *(v7 + 8);
    }

    v19 = sub_1D0BCD7C4(MEMORY[0x1E69E5310], v17, v18);
    std::ios_base::getloc((v19 + *(*v19 - 24)));
    v20 = std::locale::use_facet(v26, MEMORY[0x1E69E5318]);
    (v20->__vftable[2].~facet_0)(v20, 10);
    std::locale::~locale(v26);
    std::ostream::put();
    std::ostream::flush();
    if (feof(v15))
    {
      v21 = 0xFFFFFFFFLL;
    }

    else
    {
      v21 = 0xFFFFFFFFLL;
      do
      {
        if (!fgets(__s1, 0x2000, v15))
        {
          break;
        }

        v28 = 0;
        *&v26[0].__locale_ = 0u;
        memset(v27, 0, sizeof(v27));
        if (strstr(__s1, "CLRS,") && strstr(__s1, "PreMMRaw,latitude,"))
        {
          sub_1D0B751F4(__p, __s1);
          swan::BatchLogParser::updateEnforceCsv(v26, __p);
        }

        if (strstr(__s1, "CLRS,Smoothing,PreMM,dataCount,"))
        {
          v6[1] = *v6;
        }

        sub_1D0E48E44(v27 + 1);
        if (SBYTE7(v27[0]) < 0)
        {
          operator delete(v26[0].__locale_);
        }
      }

      while (!feof(v15));
    }

    fclose(v15);
  }

  else
  {
    if (*(v7 + 23) >= 0)
    {
      v22 = v7;
    }

    else
    {
      v22 = *v7;
    }

    fprintf(*MEMORY[0x1E69E9848], "Unable to open %s\n", v22);
    v21 = 0;
  }

  v23 = *MEMORY[0x1E69E9840];
  return v21;
}

void sub_1D0E4E34C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x24924924924924ALL)
  {
    operator new();
  }

  sub_1D0C54BE8();
}

const std::locale *sub_1D0E4E3A8(const std::locale *a1)
{
  v2 = MEMORY[0x1D387EB80]();
  a1[1].__locale_ = std::locale::use_facet(v2, MEMORY[0x1E69E5318]);
  a1[2].__locale_ = std::locale::use_facet(a1, MEMORY[0x1E69E5340]);
  return a1;
}

void sub_1D0E4E834(_Unwind_Exception *a1)
{
  (*(*v1 + 8))(v1);
  (*(*v2 + 8))(v2);
  _Unwind_Resume(a1);
}

void sub_1D0E4E898()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1D387E7B0](exception, 17);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

unsigned __int8 *sub_1D0E4E8F0(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  v7 = a2;
  do
  {
    v8 = v7;
    v7 = sub_1D0E4EFE8(a1, v7, a3);
  }

  while (v7 != v8);
  if (v8 == a2)
  {
    operator new();
  }

  if (v8 != a3 && *v7 == 124)
  {
    v9 = *(a1 + 56);
    v10 = v7 + 1;
    v11 = v7 + 1;
    do
    {
      v12 = v11;
      v11 = sub_1D0E4EFE8(a1, v11, a3);
    }

    while (v11 != v12);
    if (v12 == v10)
    {
      operator new();
    }

    sub_1D0E4EEE8();
  }

  return v7;
}

unsigned __int8 *sub_1D0E4EA60(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 != a3)
  {
    if (*a2 == 94)
    {
      sub_1D0E4F8D8();
    }

    if (a2 != a3)
    {
      do
      {
        v6 = v3;
        v7 = sub_1D0E5580C(a1, v3, a3);
        v3 = v7;
      }

      while (v7 != v6);
      if (v6 != a3 && v7 + 1 == a3 && *v7 == 36)
      {
        sub_1D0E4F95C();
      }
    }

    if (v3 != a3)
    {
      sub_1D0E557B4();
    }
  }

  return v3;
}

unsigned __int8 *sub_1D0E4EB14(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  result = sub_1D0E55D44(a1, a2, a3);
  if (result == a2)
  {
LABEL_7:
    sub_1D0E557B4();
  }

  if (result != a3 && *result == 124)
  {
    v8 = *(a1 + 56);
    if (sub_1D0E55D44(a1, result + 1, a3) != result + 1)
    {
      sub_1D0E4EEE8();
    }

    goto LABEL_7;
  }

  return result;
}

void sub_1D0E4EBB4()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1D387E7B0](exception, 14);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

void sub_1D0E4EC3C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1D387ECA0);
}

uint64_t sub_1D0E4EC74(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_1D0E4ECA4(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CF0390))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_1D0E4ECE4(void *a1)
{
  *a1 = &unk_1F4CF0430;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_1D0E4ED50(void *a1)
{
  *a1 = &unk_1F4CF0430;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x1D387ECA0);
}

uint64_t sub_1D0E4EDDC(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  *(a2 + 80) = *(result + 8);
  return result;
}

void *sub_1D0E4EDF0(void *a1)
{
  *a1 = &unk_1F4CF0430;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_1D0E4EE5C(void *a1)
{
  *a1 = &unk_1F4CF0430;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x1D387ECA0);
}

unsigned __int8 *sub_1D0E4EFE8(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 == a3)
  {
    return a2;
  }

  v6 = *a2;
  if (v6 <= 0x5B)
  {
    if (v6 == 36)
    {
      sub_1D0E4F95C();
    }

    if (v6 == 40)
    {
      if (a2 + 1 != a3 && a2[1] == 63 && a2 + 2 != a3)
      {
        v7 = a2[2];
        if (v7 == 33)
        {
          sub_1D0E4E3A8(v31);
          v32 = 0u;
          v34 = 0;
          v33 = 0u;
          LODWORD(v32) = *(a1 + 24);
          sub_1D0E4E408(v31, a2 + 3, a3);
          v25 = *(a1 + 28);
          sub_1D0E4FA74();
        }

        if (v7 == 61)
        {
          sub_1D0E4E3A8(v31);
          v32 = 0u;
          v34 = 0;
          v33 = 0u;
          LODWORD(v32) = *(a1 + 24);
          sub_1D0E4E408(v31, a2 + 3, a3);
          v8 = *(a1 + 28);
          sub_1D0E4FA74();
        }
      }

      v10 = *(a1 + 56);
      v11 = *(a1 + 28);
      if (a2 + 1 != a3)
      {
        if (a2 + 2 != a3 && a2[1] == 63 && a2[2] == 58)
        {
          v12 = (a1 + 36);
          ++*(a1 + 36);
          v13 = sub_1D0E4E8F0(a1, a2 + 3, a3);
          if (v13 == a3)
          {
            goto LABEL_79;
          }

          v14 = v13;
          if (*v13 != 41)
          {
            goto LABEL_79;
          }

          goto LABEL_29;
        }

        sub_1D0E51E28(a1);
        v15 = *(a1 + 28);
        v12 = (a1 + 36);
        ++*(a1 + 36);
        v16 = sub_1D0E4E8F0(a1, a2 + 1, a3);
        if (v16 != a3)
        {
          v14 = v16;
          if (*v16 == 41)
          {
            sub_1D0E51EB0(a1);
LABEL_29:
            --*v12;
            v17 = v14 + 1;
            goto LABEL_30;
          }
        }
      }

LABEL_79:
      sub_1D0E4FB44();
    }

    goto LABEL_54;
  }

  if (v6 == 92)
  {
    if (a2 + 1 != a3)
    {
      v9 = a2[1];
      if (v9 == 66 || v9 == 98)
      {
        sub_1D0E4F9E0();
      }
    }

    v19 = *(a1 + 56);
    v20 = a2 + 1;
    if (a2 + 1 == a3)
    {
      sub_1D0E52080();
    }

    v21 = *v20;
    if (v21 == 48)
    {
      sub_1D0E524D4(a1);
    }

    if ((v21 - 49) <= 8)
    {
      v22 = (v21 - 48);
      v23 = a2 + 2;
      if (a2 + 2 == a3)
      {
        goto LABEL_41;
      }

      do
      {
        v24 = *v23;
        if ((v24 - 48) > 9)
        {
          break;
        }

        if (v22 >= 0x19999999)
        {
          goto LABEL_80;
        }

        v22 = v24 + 10 * v22 - 48;
        ++v23;
      }

      while (v23 != a3);
      if (v22)
      {
LABEL_41:
        if (v22 <= *(a1 + 28))
        {
          sub_1D0E52710(a1);
        }
      }

LABEL_80:
      sub_1D0E526B8();
    }

    if (*v20 > 0x63u)
    {
      if (v21 == 119)
      {
        goto LABEL_69;
      }

      if (v21 == 115)
      {
        goto LABEL_73;
      }

      if (v21 != 100)
      {
        goto LABEL_70;
      }
    }

    else if (v21 != 68)
    {
      if (v21 != 83)
      {
        if (v21 == 87)
        {
LABEL_69:
          sub_1D0E53298();
        }

LABEL_70:
        v29 = sub_1D0E520D8(a1, a2 + 1, a3, 0);
        if (v29 == v20)
        {
          v17 = a2;
        }

        else
        {
          v17 = v29;
        }

        goto LABEL_30;
      }

LABEL_73:
      sub_1D0E53298();
    }

    sub_1D0E53298();
  }

  if (v6 == 94)
  {
    sub_1D0E4F8D8();
  }

LABEL_54:
  v26 = *(a1 + 56);
  v27 = *(a1 + 28);
  if (*a2 <= 0x3Eu)
  {
    if (*a2 <= 0x28u)
    {
      goto LABEL_67;
    }

    if (v6 != 41)
    {
      if (v6 == 46)
      {
        operator new();
      }

      if (v6 - 42 < 2)
      {
LABEL_78:
        sub_1D0E51F30();
      }

LABEL_67:
      sub_1D0E524D4(a1);
    }

    return a2;
  }

  v28 = v6 - 92;
  if (v28 <= 0x21)
  {
    if (((1 << (v6 - 92)) & 0x300000006) != 0)
    {
      return a2;
    }

    if (v28 == 31)
    {
      goto LABEL_78;
    }
  }

  if (v6 != 91)
  {
    if (v6 == 63)
    {
      goto LABEL_78;
    }

    goto LABEL_67;
  }

  v17 = sub_1D0E51150(a1, a2, a3);
LABEL_30:
  result = a2;
  if (v17 != a2)
  {
    v30 = (*(a1 + 28) + 1);

    return sub_1D0E4F5DC(a1, v17, a3);
  }

  return result;
}

unsigned __int8 *sub_1D0E4F5DC(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 == a3)
  {
    return a2;
  }

  v4 = *(a1 + 24) & 0x1F0;
  v5 = *a2;
  if (v5 > 0x3E)
  {
    if (v5 == 63)
    {
      v13 = a2 + 1;
      if (v4)
      {
        v14 = 1;
      }

      else
      {
        v14 = v13 == a3;
      }

      if (!v14)
      {
        *v13;
      }
    }

    else
    {
      if (v5 != 123)
      {
        return a2;
      }

      v7 = a2 + 1;
      v8 = sub_1D0E5534C(a2 + 1, a3, &v20);
      if (v8 == v7)
      {
        goto LABEL_47;
      }

      if (v8 == a3)
      {
        goto LABEL_48;
      }

      v9 = *v8;
      if (v9 != 44)
      {
        if (v9 == 125)
        {
          v10 = v8 + 1;
          if (!v4 && v10 != a3)
          {
            *v10;
          }

          goto LABEL_37;
        }

LABEL_47:
        sub_1D0E553E4();
      }

      v15 = v8 + 1;
      if (v8 + 1 == a3)
      {
        goto LABEL_47;
      }

      if (*v15 == 125)
      {
        v16 = v8 + 2;
        if (!v4 && v16 != a3)
        {
          *v16;
        }

        goto LABEL_37;
      }

      v19 = -1;
      v18 = sub_1D0E5534C(v8 + 1, a3, &v19);
      if (v18 == v15 || v18 == a3 || *v18 != 125)
      {
LABEL_48:
        sub_1D0E5543C();
      }

      if (v19 < v20)
      {
        goto LABEL_47;
      }

      if (!v4 && v18 + 1 != a3)
      {
        v12 = v18[1] == 63;
      }
    }

LABEL_37:
    sub_1D0E551BC();
  }

  if (v5 == 42)
  {
    v11 = a2 + 1;
    if (v4)
    {
      v12 = 1;
    }

    else
    {
      v12 = v11 == a3;
    }

    if (!v12)
    {
      *v11;
    }

    goto LABEL_37;
  }

  if (v5 == 43)
  {
    v6 = a2 + 1;
    if (!v4 && v6 != a3)
    {
      *v6;
    }

    goto LABEL_37;
  }

  return a2;
}

void sub_1D0E4FB44()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1D387E7B0](exception, 6);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

void *sub_1D0E4FB9C(void *a1)
{
  *a1 = &unk_1F4CF0430;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_1D0E4FC08(void *a1)
{
  *a1 = &unk_1F4CF0430;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x1D387ECA0);
}

uint64_t sub_1D0E4FC94(uint64_t result, uint64_t a2)
{
  if (*(a2 + 92) == 1)
  {
    if (*(a2 + 16) != *(a2 + 8) || (*(a2 + 88) & 1) != 0)
    {
LABEL_12:
      v4 = 0;
      *a2 = -993;
      goto LABEL_13;
    }
  }

  else
  {
    if (*(result + 16) != 1)
    {
      goto LABEL_12;
    }

    v2 = *(*(a2 + 16) - 1);
    if (v2 != 13 && v2 != 10)
    {
      goto LABEL_12;
    }
  }

  *a2 = -994;
  v4 = *(result + 8);
LABEL_13:
  *(a2 + 80) = v4;
  return result;
}

void *sub_1D0E4FCFC(void *a1)
{
  *a1 = &unk_1F4CF0430;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_1D0E4FD68(void *a1)
{
  *a1 = &unk_1F4CF0430;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x1D387ECA0);
}

uint64_t sub_1D0E4FDF4(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) && (*(a2 + 88) & 2) == 0 || *(result + 16) == 1 && ((v3 = *v2, v3 != 13) ? (v4 = v3 == 10) : (v4 = 1), v4))
  {
    *a2 = -994;
    v5 = *(result + 8);
  }

  else
  {
    v5 = 0;
    *a2 = -993;
  }

  *(a2 + 80) = v5;
  return result;
}

std::locale *sub_1D0E4FE48(std::locale *a1)
{
  a1->__locale_ = &unk_1F4CF04F0;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_1F4CF0430;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void sub_1D0E4FED4(std::locale *a1)
{
  a1->__locale_ = &unk_1F4CF04F0;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_1F4CF0430;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x1D387ECA0);
}

uint64_t sub_1D0E4FF80(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 24);
  if (v2 == v3)
  {
    goto LABEL_17;
  }

  v4 = *(a2 + 16);
  if (v4 == v3)
  {
    if ((*(a2 + 88) & 8) == 0)
    {
      v6 = *(v4 - 1);
      goto LABEL_13;
    }

LABEL_17:
    v10 = 0;
    goto LABEL_25;
  }

  if (v4 == v2)
  {
    v5 = *(a2 + 88);
    if ((v5 & 0x80) == 0)
    {
      if ((v5 & 4) == 0)
      {
        v6 = *v4;
LABEL_13:
        if (v6 == 95 || (v6 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v6) & 0x500) != 0)
        {
          v10 = 1;
          goto LABEL_25;
        }

        goto LABEL_17;
      }

      goto LABEL_17;
    }
  }

  v7 = *(v4 - 1);
  v8 = *v4;
  v9 = v7 == 95 || (v7 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v7) & 0x500) != 0;
  v11 = v8 == 95 || (v8 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v8) & 0x500) != 0;
  v10 = v9 != v11;
LABEL_25:
  if (*(result + 40) == v10)
  {
    v12 = 0;
    v13 = -993;
  }

  else
  {
    v12 = *(result + 8);
    v13 = -994;
  }

  *a2 = v13;
  *(a2 + 80) = v12;
  return result;
}

std::locale *sub_1D0E50094(std::locale *a1)
{
  a1->__locale_ = &unk_1F4CF0538;
  locale = a1[8].__locale_;
  if (locale)
  {
    sub_1D0B7CAB8(locale);
  }

  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_1F4CF0430;
  v3 = a1[1].__locale_;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

void sub_1D0E50130(std::locale *a1)
{
  a1->__locale_ = &unk_1F4CF0538;
  locale = a1[8].__locale_;
  if (locale)
  {
    sub_1D0B7CAB8(locale);
  }

  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_1F4CF0430;
  v3 = a1[1].__locale_;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0E501EC(uint64_t a1, uint64_t a2)
{
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0uLL;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  __p = 0;
  v20 = 0;
  v4 = (*(a1 + 44) + 1);
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v21 = 0;
  *&v22 = v5;
  *(&v22 + 1) = v5;
  v23 = 0;
  sub_1D0E50730(&__p, v4, &v22);
  v24 = v6;
  v25 = v6;
  v26 = 0;
  v27 = v22;
  v28 = v23;
  v30 = v6;
  v29 = 1;
  v7 = *(a2 + 88) & 0xFFF;
  v8 = *(a2 + 16);
  if (v8 == *(a2 + 8))
  {
    v9 = *(a2 + 92);
  }

  else
  {
    v9 = 0;
  }

  if (*(a1 + 84) == sub_1D0E5038C(a1 + 16, v8, *(a2 + 24), &__p, *(a2 + 88) & 0xFBF | 0x40u, v9))
  {
    *a2 = -993;
    *(a2 + 80) = 0;
    v10 = __p;
    goto LABEL_10;
  }

  *a2 = -994;
  *(a2 + 80) = *(a1 + 8);
  v10 = __p;
  v11 = 0xAAAAAAAAAAAAAAABLL * ((v20 - __p) >> 3);
  if (v11 < 2)
  {
LABEL_10:
    if (!v10)
    {
      return;
    }

    goto LABEL_11;
  }

  v12 = *(a1 + 80);
  v13 = *(a2 + 32);
  v14 = 2;
  v15 = 1;
  do
  {
    v16 = &v10[24 * v15];
    v17 = v13 + 24 * v12;
    *v17 = *v16;
    *(v17 + 16) = v16[16];
    v15 = v14;
    ++v12;
  }

  while (v11 > v14++);
LABEL_11:

  operator delete(v10);
}

void sub_1D0E50370(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0E5038C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5, char a6)
{
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v6 = *(a1 + 40);
  if (!v6)
  {
LABEL_29:
    v24 = 0;
    goto LABEL_30;
  }

  *&v40 = a3;
  *(&v40 + 1) = a3;
  v41 = 0;
  *v36 = 0;
  memset(&v36[8], 0, 32);
  v37 = 0u;
  *__p = 0u;
  memset(v39, 0, 21);
  sub_1D0E5093C(&v42, v36);
  if (__p[0])
  {
    operator delete(__p[0]);
  }

  if (*&v36[32])
  {
    operator delete(*&v36[32]);
  }

  v35 = a4;
  v13 = v43;
  *(v43 - 96) = 0;
  *(v13 - 88) = a2;
  *(v13 - 80) = a2;
  *(v13 - 72) = a3;
  sub_1D0E50BB0((v13 - 64), *(a1 + 28), &v40);
  sub_1D0E50D48((v43 - 40), *(a1 + 32));
  v14 = v43;
  *(v43 - 16) = v6;
  *(v14 - 8) = a5;
  *(v14 - 4) = a6;
  v15 = 1;
  while (1)
  {
    if ((v15 & 0xFFF) == 0 && (v15 >> 12) >= a3 - a2)
    {
      sub_1D0E50E48();
    }

    v17 = (v14 - 16);
    v16 = *(v14 - 16);
    v18 = (v14 - 96);
    if (v16)
    {
      (*(*v16 + 16))(v16, v14 - 96);
    }

    v19 = *v18;
    if (*v18 > -994)
    {
      if (v19 != -993)
      {
        if (v19 == -992)
        {
          v22 = *(v14 - 80);
          *v36 = *v18;
          *&v36[16] = v22;
          v37 = 0uLL;
          *&v36[32] = 0;
          sub_1D0E50F98(&v36[32], *(v14 - 64), *(v14 - 56), 0xAAAAAAAAAAAAAAABLL * ((*(v14 - 56) - *(v14 - 64)) >> 3));
          __p[0] = 0;
          __p[1] = 0;
          v39[0] = 0;
          sub_1D0E51018(__p, *(v14 - 40), *(v14 - 32), (*(v14 - 32) - *(v14 - 40)) >> 4);
          v23 = *v17;
          *(&v39[1] + 5) = *(v14 - 11);
          v39[1] = v23;
          (*(**v17 + 24))(*v17, 1, v14 - 96);
          (*(*v39[1] + 24))(v39[1], 0, v36);
          sub_1D0E5093C(&v42, v36);
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          if (*&v36[32])
          {
            *&v37 = *&v36[32];
            operator delete(*&v36[32]);
          }
        }

        else if (v19 != -991)
        {
LABEL_36:
          sub_1D0E50EA0();
        }

        goto LABEL_28;
      }

      goto LABEL_23;
    }

    if ((v19 + 995) >= 2)
    {
      break;
    }

LABEL_28:
    v14 = v43;
    ++v15;
    if (v42 == v43)
    {
      goto LABEL_29;
    }
  }

  if (v19 != -1000)
  {
    goto LABEL_36;
  }

  v20 = *(v14 - 80);
  if ((a5 & 0x20) != 0 && v20 == a2 || (a5 & 0x1000) != 0 && v20 != a3)
  {
LABEL_23:
    v21 = v43 - 96;
    sub_1D0E50EF8((v43 - 96));
    v43 = v21;
    goto LABEL_28;
  }

  v26 = *v35;
  *v26 = a2;
  *(v26 + 8) = v20;
  *(v26 + 16) = 1;
  v27 = *(v14 - 64);
  v28 = *(v14 - 56) - v27;
  if (v28)
  {
    v29 = 0xAAAAAAAAAAAAAAABLL * (v28 >> 3);
    v30 = (v27 + 16);
    v31 = 1;
    do
    {
      v32 = v26 + 24 * v31;
      *v32 = *(v30 - 1);
      v33 = *v30;
      v30 += 24;
      *(v32 + 16) = v33;
    }

    while (v29 > v31++);
  }

  v24 = 1;
LABEL_30:
  *v36 = &v42;
  sub_1D0E510CC(v36);
  return v24;
}

void sub_1D0E506D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  sub_1D0E50B6C(&a11);
  a11 = v16 - 112;
  sub_1D0E510CC(&a11);
  _Unwind_Resume(a1);
}

char *sub_1D0E50730(char **a1, unint64_t a2, __int128 *a3)
{
  v5 = a1[2];
  result = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v5 - result) >> 3) < a2)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v5 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a2 <= 0xAAAAAAAAAAAAAAALL)
    {
      v7 = 0xAAAAAAAAAAAAAAABLL * (v5 >> 3);
      v8 = 2 * v7;
      if (2 * v7 <= a2)
      {
        v8 = a2;
      }

      if (v7 >= 0x555555555555555)
      {
        v9 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v9 = v8;
      }

      sub_1D0E50894(a1, v9);
    }

    sub_1D0C5663C();
  }

  v10 = a1[1];
  v11 = 0xAAAAAAAAAAAAAAABLL * ((v10 - result) >> 3);
  if (v11 >= a2)
  {
    v12 = a2;
  }

  else
  {
    v12 = 0xAAAAAAAAAAAAAAABLL * ((v10 - result) >> 3);
  }

  if (v12)
  {
    v13 = *a3;
    v14 = *(a3 + 16);
    v15 = result;
    do
    {
      *v15 = v13;
      v15[16] = v14;
      v15 += 24;
      --v12;
    }

    while (v12);
  }

  if (a2 <= v11)
  {
    a1[1] = &result[24 * a2];
  }

  else
  {
    v16 = &v10[24 * (a2 - v11)];
    v17 = 24 * a2 - 8 * ((v10 - result) >> 3);
    do
    {
      v18 = *a3;
      *(v10 + 2) = *(a3 + 2);
      *v10 = v18;
      v10 += 24;
      v17 -= 24;
    }

    while (v17);
    a1[1] = v16;
  }

  return result;
}

void sub_1D0E50894(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_1D0E508E4(a2);
  }

  sub_1D0C5663C();
}

void sub_1D0E508E4(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_1D0C54BE8();
}

void sub_1D0E5093C(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 5);
    v9 = v8 + 1;
    if (v8 + 1 > 0x2AAAAAAAAAAAAAALL)
    {
      sub_1D0C5663C();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 5);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x155555555555555)
    {
      v11 = 0x2AAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (v11 <= 0x2AAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_1D0C54BE8();
    }

    v12 = *(a2 + 16);
    v13 = 96 * v8;
    *v13 = *a2;
    *(v13 + 16) = v12;
    *(v13 + 32) = *(a2 + 32);
    *(v13 + 48) = *(a2 + 48);
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(v13 + 56) = *(a2 + 56);
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
    v14 = *(a2 + 72);
    v15 = *(a2 + 80);
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    *(v13 + 85) = *(a2 + 85);
    *(v13 + 72) = v14;
    *(v13 + 80) = v15;
    v16 = *a1;
    v17 = a1[1];
    v18 = v13 + *a1 - v17;
    if (*a1 != v17)
    {
      v19 = *a1;
      v20 = v13 + *a1 - v17;
      do
      {
        v21 = *(v19 + 1);
        *v20 = *v19;
        *(v20 + 16) = v21;
        *(v20 + 40) = 0;
        *(v20 + 48) = 0;
        *(v20 + 32) = *(v19 + 2);
        *(v20 + 48) = v19[6];
        v19[4] = 0;
        v19[5] = 0;
        v19[6] = 0;
        *(v20 + 64) = 0;
        *(v20 + 72) = 0;
        *(v20 + 56) = *(v19 + 7);
        *(v20 + 72) = v19[9];
        v19[7] = 0;
        v19[8] = 0;
        v19[9] = 0;
        v22 = v19[10];
        *(v20 + 85) = *(v19 + 85);
        *(v20 + 80) = v22;
        v19 += 12;
        v20 += 96;
      }

      while (v19 != v17);
      do
      {
        sub_1D0E50EF8(v16);
        v16 += 12;
      }

      while (v16 != v17);
      v16 = *a1;
    }

    v7 = v13 + 96;
    *a1 = v18;
    a1[1] = v7;
    a1[2] = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v5 = *(a2 + 16);
    *v3 = *a2;
    *(v3 + 16) = v5;
    *(v3 + 40) = 0;
    *(v3 + 48) = 0;
    *(v3 + 32) = 0;
    *(v3 + 32) = *(a2 + 32);
    *(v3 + 48) = *(a2 + 48);
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(v3 + 56) = 0;
    *(v3 + 64) = 0;
    *(v3 + 72) = 0;
    *(v3 + 56) = *(a2 + 56);
    *(v3 + 72) = *(a2 + 72);
    *(a2 + 56) = 0;
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    v6 = *(a2 + 80);
    *(v3 + 85) = *(a2 + 85);
    *(v3 + 80) = v6;
    v7 = v3 + 96;
  }

  a1[1] = v7;
}

void *sub_1D0E50B6C(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;
    operator delete(v3);
  }

  return a1;
}

uint64_t *sub_1D0E50BB0(uint64_t *result, unint64_t a2, __int128 *a3)
{
  v4 = *result;
  v3 = result[1];
  v5 = v3 - *result;
  v6 = 0xAAAAAAAAAAAAAAABLL * (v5 >> 3);
  v7 = a2 - v6;
  if (a2 <= v6)
  {
    if (a2 < v6)
    {
      result[1] = v4 + 24 * a2;
    }
  }

  else
  {
    v8 = result[2];
    if (0xAAAAAAAAAAAAAAABLL * ((v8 - v3) >> 3) < v7)
    {
      if (a2 <= 0xAAAAAAAAAAAAAAALL)
      {
        v9 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v4) >> 3);
        v10 = 2 * v9;
        if (2 * v9 <= a2)
        {
          v10 = a2;
        }

        if (v9 >= 0x555555555555555)
        {
          v11 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v11 = v10;
        }

        sub_1D0E508E4(v11);
      }

      sub_1D0C5663C();
    }

    v12 = v3 + 24 * v7;
    v13 = 24 * a2 - 8 * (v5 >> 3);
    do
    {
      v14 = *a3;
      *(v3 + 16) = *(a3 + 2);
      *v3 = v14;
      v3 += 24;
      v13 -= 24;
    }

    while (v13);
    result[1] = v12;
  }

  return result;
}

void sub_1D0E50D48(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 4;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = v3 + 16 * a2;
  }

  else
  {
    v6 = a2 - v5;
    v7 = a1[2];
    if (v6 > (v7 - v4) >> 4)
    {
      if (!(a2 >> 60))
      {
        v8 = v7 - v3;
        v9 = v8 >> 3;
        if (v8 >> 3 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFF0)
        {
          v10 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        sub_1D0E50F50(v10);
      }

      sub_1D0C5663C();
    }

    bzero(a1[1], 16 * v6);
    v11 = v4 + 16 * v6;
  }

  a1[1] = v11;
}

void sub_1D0E50E48()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1D387E7B0](exception, 12);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

void sub_1D0E50EA0()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1D387E7B0](exception, 16);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

void sub_1D0E50EF8(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;

    operator delete(v3);
  }
}

void sub_1D0E50F50(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  sub_1D0C54BE8();
}

uint64_t sub_1D0E50F98(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1D0E50894(result, a4);
  }

  return result;
}

void sub_1D0E50FFC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0E51018(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1D0E5108C(result, a4);
  }

  return result;
}

void sub_1D0E51070(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D0E5108C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    sub_1D0E50F50(a2);
  }

  sub_1D0C5663C();
}

void sub_1D0E510CC(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 12;
        sub_1D0E50EF8(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

_BYTE *sub_1D0E51150(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  if (a2 != a3 && *a2 == 91)
  {
    if (a2 + 1 != a3)
    {
      v3 = a2[1] == 94;
      sub_1D0E53298();
    }

    sub_1D0E5429C();
  }

  return a2;
}

void sub_1D0E51CF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  *(v48 + 144) = v49;
  if (a42 < 0)
  {
    operator delete(__p);
  }

  if (a48 < 0)
  {
    operator delete(a43);
  }

  if (a36 < 0)
  {
    operator delete(a31);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0E51E28(uint64_t result)
{
  if ((*(result + 24) & 2) == 0)
  {
    operator new();
  }

  return result;
}

uint64_t sub_1D0E51EB0(uint64_t result)
{
  if ((*(result + 24) & 2) == 0)
  {
    operator new();
  }

  return result;
}

void sub_1D0E51F30()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1D387E7B0](exception, 11);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

void *sub_1D0E51F88(void *a1)
{
  *a1 = &unk_1F4CF0430;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_1D0E51FF4(void *a1)
{
  *a1 = &unk_1F4CF0430;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0E52080()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1D387E7B0](exception, 3);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

unsigned __int8 *sub_1D0E520D8(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t *a4)
{
  v4 = a2;
  if (a2 == a3)
  {
    return v4;
  }

  v5 = *a2;
  if (v5 > 0x71)
  {
    if (*a2 <= 0x74u)
    {
      if (v5 == 114)
      {
        if (!a4)
        {
          goto LABEL_77;
        }

        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        v16 = 13;
      }

      else
      {
        if (v5 != 116)
        {
          goto LABEL_72;
        }

        if (!a4)
        {
          goto LABEL_77;
        }

        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        v16 = 9;
      }
    }

    else
    {
      if (v5 == 117)
      {
        if (a2 + 1 == a3)
        {
          goto LABEL_97;
        }

        v8 = a2[1];
        if ((v8 & 0xF8) != 0x30 && (v8 & 0xFE) != 0x38 && (v8 | 0x20u) - 97 >= 6)
        {
          goto LABEL_97;
        }

        v4 = a2 + 2;
        if (a2 + 2 == a3)
        {
          goto LABEL_97;
        }

        v9 = *v4;
        v10 = -48;
        if ((v9 & 0xF8) != 0x30 && (v9 & 0xFE) != 0x38)
        {
          v9 |= 0x20u;
          if ((v9 - 97) >= 6)
          {
            goto LABEL_97;
          }

          v10 = -87;
        }

        v6 = 16 * (v10 + v9);
LABEL_45:
        if (v4 + 1 == a3)
        {
          goto LABEL_97;
        }

        v11 = v4[1];
        v12 = -48;
        if ((v11 & 0xF8) != 0x30 && (v11 & 0xFE) != 0x38)
        {
          v11 |= 0x20u;
          if ((v11 - 97) >= 6)
          {
            goto LABEL_97;
          }

          v12 = -87;
        }

        if (v4 + 2 != a3)
        {
          v13 = v4[2];
          v14 = -48;
          if ((v13 & 0xF8) == 0x30 || (v13 & 0xFE) == 0x38)
          {
            goto LABEL_55;
          }

          v13 |= 0x20u;
          if ((v13 - 97) < 6)
          {
            v14 = -87;
LABEL_55:
            v15 = v13 + 16 * (v6 + v12 + v11) + v14;
            if (!a4)
            {
              sub_1D0E524D4(a1);
            }

            if (*(a4 + 23) < 0)
            {
              a4[1] = 1;
              a4 = *a4;
            }

            else
            {
              *(a4 + 23) = 1;
            }

            *a4 = v15;
            *(a4 + 1) = 0;
            v4 += 3;
            return v4;
          }
        }

LABEL_97:
        sub_1D0E52080();
      }

      if (v5 != 118)
      {
        if (v5 == 120)
        {
          v6 = 0;
          goto LABEL_45;
        }

LABEL_72:
        if ((v5 & 0x80000000) == 0 && (*(*(*(a1 + 8) + 16) + 4 * *a2) & 0x500) != 0)
        {
          goto LABEL_97;
        }

        if (a4)
        {
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          *a4 = v5;
          *(a4 + 1) = 0;
          return a2 + 1;
        }

LABEL_77:
        sub_1D0E524D4(a1);
      }

      if (!a4)
      {
        goto LABEL_77;
      }

      if (*(a4 + 23) < 0)
      {
        a4[1] = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      v16 = 11;
    }

LABEL_90:
    *a4 = v16;
    return a2 + 1;
  }

  if (*a2 > 0x65u)
  {
    if (v5 == 102)
    {
      if (!a4)
      {
        goto LABEL_77;
      }

      if (*(a4 + 23) < 0)
      {
        a4[1] = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      v16 = 12;
    }

    else
    {
      if (v5 != 110)
      {
        goto LABEL_72;
      }

      if (!a4)
      {
        goto LABEL_77;
      }

      if (*(a4 + 23) < 0)
      {
        a4[1] = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      v16 = 10;
    }

    goto LABEL_90;
  }

  if (v5 == 48)
  {
    if (a4)
    {
      if (*(a4 + 23) < 0)
      {
        a4[1] = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      *a4 = 0;
      return a2 + 1;
    }

    goto LABEL_77;
  }

  if (v5 != 99)
  {
    if (v5 == 95)
    {
      goto LABEL_97;
    }

    goto LABEL_72;
  }

  if (a2 + 1 == a3)
  {
    goto LABEL_97;
  }

  v7 = a2[1];
  if (((v7 & 0xDF) - 65) > 0x19u)
  {
    goto LABEL_97;
  }

  if (!a4)
  {
    sub_1D0E524D4(a1);
  }

  if (*(a4 + 23) < 0)
  {
    a4[1] = 1;
    a4 = *a4;
  }

  else
  {
    *(a4 + 23) = 1;
  }

  *a4 = v7 & 0x1F;
  *(a4 + 1) = 0;
  return a2 + 2;
}

void sub_1D0E524D4(uint64_t a1)
{
  v1 = *(a1 + 24);
  if ((v1 & 1) == 0)
  {
    if ((v1 & 8) == 0)
    {
      operator new();
    }

    operator new();
  }

  operator new();
}

void sub_1D0E5264C(_Unwind_Exception *a1)
{
  std::locale::~locale(v2 + 2);
  v2->__locale_ = &unk_1F4CF0430;
  locale = v2[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  MEMORY[0x1D387ECA0](v2, v1);
  _Unwind_Resume(a1);
}

void sub_1D0E526B8()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1D387E7B0](exception, 4);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

void sub_1D0E52710(uint64_t a1)
{
  v1 = *(a1 + 24);
  if ((v1 & 1) == 0)
  {
    if ((v1 & 8) == 0)
    {
      operator new();
    }

    operator new();
  }

  operator new();
}

std::locale *sub_1D0E52840(std::locale *a1)
{
  a1->__locale_ = &unk_1F4CF05C8;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_1F4CF0430;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void sub_1D0E528CC(std::locale *a1)
{
  a1->__locale_ = &unk_1F4CF05C8;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_1F4CF0430;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x1D387ECA0);
}

uint64_t sub_1D0E52978(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == *(a2 + 24) || (v4 = result, result = (*(**(result + 24) + 40))(*(result + 24), *v3), *(v4 + 40) != result))
  {
    v5 = 0;
    *a2 = -993;
  }

  else
  {
    *a2 = -995;
    ++*(a2 + 16);
    v5 = *(v4 + 8);
  }

  *(a2 + 80) = v5;
  return result;
}

std::locale *sub_1D0E52A0C(std::locale *a1)
{
  a1->__locale_ = &unk_1F4CF0610;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_1F4CF0430;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void sub_1D0E52A98(std::locale *a1)
{
  a1->__locale_ = &unk_1F4CF0610;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_1F4CF0430;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x1D387ECA0);
}

uint64_t sub_1D0E52B44(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || *v2 != *(result + 40))
  {
    v3 = 0;
    *a2 = -993;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    v3 = *(result + 8);
  }

  *(a2 + 80) = v3;
  return result;
}

void *sub_1D0E52B8C(void *a1)
{
  *a1 = &unk_1F4CF0430;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_1D0E52BF8(void *a1)
{
  *a1 = &unk_1F4CF0430;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x1D387ECA0);
}

uint64_t sub_1D0E52C84(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || *v2 != *(result + 16))
  {
    v3 = 0;
    *a2 = -993;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    v3 = *(result + 8);
  }

  *(a2 + 80) = v3;
  return result;
}

std::locale *sub_1D0E52CCC(std::locale *a1)
{
  a1->__locale_ = &unk_1F4CF06A0;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_1F4CF0430;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void sub_1D0E52D58(std::locale *a1)
{
  a1->__locale_ = &unk_1F4CF06A0;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_1F4CF0430;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x1D387ECA0);
}

uint64_t sub_1D0E52E04(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 32) + 24 * (*(result + 40) - 1);
  if (*(v3 + 16) == 1)
  {
    v4 = *(v3 + 8) - *v3;
    v5 = *(a2 + 16);
    if (*(a2 + 24) - v5 >= v4)
    {
      v7 = result;
      v8 = *(v3 + 8) != *v3;
      if (v4 < 1)
      {
LABEL_10:
        *a2 = -994;
        *(a2 + 16) = v5 + v4;
        v6 = *(v7 + 8);
        goto LABEL_4;
      }

      v9 = 0;
      while (1)
      {
        v10 = (*(**(v7 + 24) + 40))(*(v7 + 24), *(*v3 + v9));
        result = (*(**(v7 + 24) + 40))(*(v7 + 24), *(*(a2 + 16) + v9));
        if (v10 != result)
        {
          break;
        }

        if (v4 == ++v9)
        {
          v5 = *(a2 + 16);
          goto LABEL_10;
        }
      }
    }
  }

  v6 = 0;
  *a2 = -993;
LABEL_4:
  *(a2 + 80) = v6;
  return result;
}

std::locale *sub_1D0E52F20(std::locale *a1)
{
  a1->__locale_ = &unk_1F4CF06E8;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_1F4CF0430;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void sub_1D0E52FAC(std::locale *a1)
{
  a1->__locale_ = &unk_1F4CF06E8;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_1F4CF0430;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x1D387ECA0);
}

uint64_t sub_1D0E53058(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32) + 24 * (*(result + 40) - 1);
  if (*(v2 + 16) == 1)
  {
    v3 = *v2;
    v4 = *(v2 + 8) - *v2;
    v5 = *(a2 + 16);
    if (*(a2 + 24) - v5 >= v4)
    {
      if (v4 < 1)
      {
LABEL_9:
        *a2 = -994;
        *(a2 + 16) = v5 + v4;
        v6 = *(result + 8);
        goto LABEL_4;
      }

      v7 = v4;
      v8 = *(a2 + 16);
      while (1)
      {
        v10 = *v3++;
        v9 = v10;
        v11 = *v8++;
        if (v9 != v11)
        {
          break;
        }

        if (!--v7)
        {
          goto LABEL_9;
        }
      }
    }
  }

  v6 = 0;
  *a2 = -993;
LABEL_4:
  *(a2 + 80) = v6;
  return result;
}

void *sub_1D0E530E4(void *a1)
{
  *a1 = &unk_1F4CF0430;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_1D0E53150(void *a1)
{
  *a1 = &unk_1F4CF0430;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x1D387ECA0);
}

unsigned int *sub_1D0E531DC(unsigned int *result, uint64_t a2)
{
  v2 = result[4];
  v3 = *(a2 + 32);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 40) - v3) >> 3) < v2)
  {
    sub_1D0E526B8();
  }

  v5 = v3 + 24 * (v2 - 1);
  if (*(v5 + 16) == 1 && (v6 = result, result = *v5, v7 = *(v5 + 8) - *v5, v8 = *(a2 + 16), *(a2 + 24) - v8 >= v7) && (result = memcmp(result, *(a2 + 16), v7), !result))
  {
    *a2 = -994;
    *(a2 + 16) = v8 + v7;
    v9 = *(v6 + 1);
  }

  else
  {
    v9 = 0;
    *a2 = -993;
  }

  *(a2 + 80) = v9;
  return result;
}

void sub_1D0E53418(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale *a10)
{
  std::locale::~locale(&a9);
  a10 = v10 + 17;
  sub_1D0D41594(&a10);
  locale = v10[14].__locale_;
  if (locale)
  {
    v10[15].__locale_ = locale;
    operator delete(locale);
  }

  sub_1D0E53DC8(&a10);
  v16 = v10[8].__locale_;
  if (v16)
  {
    v10[9].__locale_ = v16;
    operator delete(v16);
  }

  v17 = *v13;
  if (*v13)
  {
    v10[6].__locale_ = v17;
    operator delete(v17);
  }

  std::locale::~locale(v10 + 2);
  v10->__locale_ = v12;
  v18 = v10[1].__locale_;
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  MEMORY[0x1D387ECA0](v10, v11);
  _Unwind_Resume(a1);
}

void sub_1D0E534BC(uint64_t a1, char a2)
{
  v7 = a2;
  if (*(a1 + 169) == 1)
  {
    v6 = (*(**(a1 + 24) + 40))(*(a1 + 24));
    v3 = a1 + 40;
    v4 = &v6;
LABEL_5:
    sub_1D0BF71E4(v3, v4);
    return;
  }

  if (*(a1 + 170) == 1)
  {
    v5 = a2;
    v3 = a1 + 40;
    v4 = &v5;
    goto LABEL_5;
  }

  sub_1D0BF71E4(a1 + 40, &v7);
}

void sub_1D0E5355C(std::locale *a1)
{
  sub_1D0E53EA4(a1);

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0E53594(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  if (v4 == v5)
  {
    v9 = 0;
    v10 = *(a1 + 168);
    goto LABEL_65;
  }

  if (*(a1 + 171) != 1 || v4 + 1 == v5)
  {
    goto LABEL_40;
  }

  LOBYTE(__src) = *v4;
  v6 = v4[1];
  HIBYTE(__src) = v4[1];
  if (*(a1 + 169) == 1)
  {
    LOBYTE(__src) = (*(**(a1 + 24) + 40))(*(a1 + 24));
    HIBYTE(__src) = (*(**(a1 + 24) + 40))(*(a1 + 24), v6);
  }

  *(&__s.__r_.__value_.__s + 23) = 2;
  LOWORD(__s.__r_.__value_.__l.__data_) = __src;
  __s.__r_.__value_.__s.__data_[2] = 0;
  std::__get_collation_name(&v76, &__s);
  __p = v76;
  size = HIBYTE(v76.__r_.__value_.__r.__words[2]);
  v8 = SHIBYTE(v76.__r_.__value_.__r.__words[2]);
  if ((v76.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v76.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    goto LABEL_9;
  }

  if ((SHIBYTE(__s.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (__s.__r_.__value_.__l.__size_ >= 3)
    {
      goto LABEL_9;
    }
  }

  else if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) >= 3)
  {
    goto LABEL_14;
  }

  (*(**(a1 + 32) + 32))(&v76);
  if (v8 < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __p = v76;
  if ((SHIBYTE(v76.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (HIBYTE(v76.__r_.__value_.__r.__words[2]) != 12 && HIBYTE(v76.__r_.__value_.__r.__words[2]) != 1)
    {
      __p.__r_.__value_.__s.__data_[0] = 0;
      *(&__p.__r_.__value_.__s + 23) = 0;
      goto LABEL_9;
    }

    goto LABEL_171;
  }

  if (__p.__r_.__value_.__l.__size_ == 1 || __p.__r_.__value_.__l.__size_ == 12)
  {
LABEL_171:
    std::string::operator=(&__p, &__s);
    goto LABEL_9;
  }

  *__p.__r_.__value_.__l.__data_ = 0;
  __p.__r_.__value_.__l.__size_ = 0;
LABEL_9:
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

LABEL_14:
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (*(&__p.__r_.__value_.__s + 23))
    {
      goto LABEL_16;
    }

LABEL_40:
    v10 = 0;
    v9 = 1;
    goto LABEL_41;
  }

  v23 = __p.__r_.__value_.__l.__size_;
  operator delete(__p.__r_.__value_.__l.__data_);
  if (!v23)
  {
    goto LABEL_40;
  }

LABEL_16:
  v11 = *(a1 + 112);
  v12 = *(a1 + 120) - v11;
  if (v12)
  {
    v13 = v12 >> 1;
    if ((v12 >> 1) <= 1)
    {
      v13 = 1;
    }

    v14 = (v11 + 1);
    while (__src != *(v14 - 1) || HIBYTE(__src) != *v14)
    {
      v14 += 2;
      if (!--v13)
      {
        goto LABEL_25;
      }
    }

    goto LABEL_167;
  }

LABEL_25:
  if (*(a1 + 170) == 1 && *(a1 + 88) != *(a1 + 96))
  {
    sub_1D0E53F8C(&__s, a1 + 16, &__src, &v76);
    v16 = *(a1 + 88);
    v17 = *(a1 + 96) - v16;
    if (v17)
    {
      v18 = 0xAAAAAAAAAAAAAAABLL * (v17 >> 4);
      v19 = v18 <= 1 ? 1 : v18;
      while (sub_1D0E54050(v16, &__s) > 0 || sub_1D0E54050(&__s, v16 + 3) >= 1)
      {
        v16 += 6;
        if (!--v19)
        {
          goto LABEL_34;
        }
      }

      v21 = 5;
      v20 = 1;
    }

    else
    {
LABEL_34:
      v20 = 0;
      v21 = 0;
    }

    if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__s.__r_.__value_.__l.__data_);
    }

    if (v20)
    {
      v22 = 1;
      goto LABEL_147;
    }
  }

  if (*(a1 + 136) == *(a1 + 144))
  {
    v22 = 0;
    goto LABEL_149;
  }

  sub_1D0E54180(&__s, a1 + 16, &__src, &v76);
  v39 = *(a1 + 136);
  v40 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
  v41 = *(a1 + 144) - v39;
  if (v41)
  {
    v42 = 0xAAAAAAAAAAAAAAABLL * (v41 >> 3);
    if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v43 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v43 = __s.__r_.__value_.__l.__size_;
    }

    if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_s = &__s;
    }

    else
    {
      p_s = __s.__r_.__value_.__r.__words[0];
    }

    if (v42 <= 1)
    {
      v45 = 1;
    }

    else
    {
      v45 = 0xAAAAAAAAAAAAAAABLL * (v41 >> 3);
    }

    v46 = 1;
    v47 = 1;
    while (1)
    {
      v48 = *(v39 + 23);
      v49 = v48;
      if ((v48 & 0x80u) != 0)
      {
        v48 = *(v39 + 8);
      }

      if (v43 == v48)
      {
        v50 = v49 >= 0 ? v39 : *v39;
        if (!memcmp(p_s, v50, v43))
        {
          break;
        }
      }

      v47 = v46++ < v42;
      v39 += 24;
      if (!--v45)
      {
        goto LABEL_144;
      }
    }

    v22 = 1;
    v21 = 5;
    if (v40 < 0)
    {
LABEL_145:
      operator delete(__s.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v47 = 0;
LABEL_144:
    v21 = 0;
    v22 = 0;
    if (v40 < 0)
    {
      goto LABEL_145;
    }
  }

  if (!v47)
  {
LABEL_149:
    if (__src < 0)
    {
      v71 = *(a1 + 164);
    }

    else
    {
      v68 = *(a1 + 160);
      v69 = *(*(a1 + 24) + 16);
      v70 = *(v69 + 4 * __src);
      if (((v70 & v68) != 0 || __src == 95 && (v68 & 0x80) != 0) && (SHIBYTE(__src) & 0x8000000000000000) == 0 && ((*(v69 + 4 * SHIBYTE(__src)) & v68) != 0 || (v68 & 0x80) != 0 && SHIBYTE(__src) == 95))
      {
        goto LABEL_167;
      }

      v71 = *(a1 + 164);
      if ((v71 & v70) != 0 || __src == 95 && (v71 & 0x80) != 0)
      {
LABEL_166:
        v10 = v22;
LABEL_168:
        v9 = 2;
        goto LABEL_65;
      }
    }

    if ((SHIBYTE(__src) & 0x8000000000000000) == 0)
    {
      if ((*(*(*(a1 + 24) + 16) + 4 * SHIBYTE(__src)) & v71) == 0)
      {
        v10 = 1;
        if (SHIBYTE(__src) != 95 || (v71 & 0x80) == 0)
        {
          goto LABEL_168;
        }
      }

      goto LABEL_166;
    }

LABEL_167:
    v10 = 1;
    goto LABEL_168;
  }

LABEL_147:
  v9 = 2;
  v10 = v22;
  if (v21)
  {
    goto LABEL_65;
  }

LABEL_41:
  v24 = **(a2 + 16);
  v76.__r_.__value_.__s.__data_[0] = **(a2 + 16);
  if (*(a1 + 169) == 1)
  {
    LODWORD(v24) = (*(**(a1 + 24) + 40))(*(a1 + 24), v24);
    v76.__r_.__value_.__s.__data_[0] = v24;
  }

  v25 = *(a1 + 40);
  v26 = *(a1 + 48) - v25;
  if (v26)
  {
    if (v26 <= 1)
    {
      v26 = 1;
    }

    do
    {
      v27 = *v25++;
      if (v27 == v24)
      {
        goto LABEL_64;
      }
    }

    while (--v26);
  }

  v28 = *(a1 + 164);
  if (v28 || *(a1 + 64) != *(a1 + 72))
  {
    if ((v24 & 0x80000000) != 0 || (*(*(*(a1 + 24) + 16) + 4 * v24) & v28) == 0)
    {
      v30 = (v28 >> 7) & 1;
      v29 = v24 == 95 ? v30 : 0;
    }

    else
    {
      v29 = 1;
    }

    v31 = *(a1 + 72);
    v32 = memchr(*(a1 + 64), v24, v31 - *(a1 + 64));
    v33 = !v32 || v32 == v31;
    v34 = !v33;
    if ((v29 & 1) == 0 && !v34)
    {
LABEL_64:
      v10 = 1;
      goto LABEL_65;
    }
  }

  v38 = *(a1 + 88);
  v37 = *(a1 + 96);
  if (v38 == v37)
  {
    goto LABEL_103;
  }

  if (*(a1 + 170) == 1)
  {
    sub_1D0E53F8C(&__s, a1 + 16, &v76, &v76.__r_.__value_.__s.__data_[1]);
    v38 = *(a1 + 88);
    v37 = *(a1 + 96);
  }

  else
  {
    *(&__s.__r_.__value_.__s + 23) = 1;
    LOWORD(__s.__r_.__value_.__l.__data_) = v24;
  }

  v51 = v37 - v38;
  if (v51)
  {
    v52 = 0;
    v53 = 0xAAAAAAAAAAAAAAABLL * (v51 >> 4);
    while (sub_1D0E54050(v38, &__s) > 0 || sub_1D0E54050(&__s, v38 + 3) >= 1)
    {
      ++v52;
      v38 += 48;
      if (v52 >= v53)
      {
        goto LABEL_99;
      }
    }

    v54 = 1;
    v10 = 1;
  }

  else
  {
LABEL_99:
    v54 = 0;
  }

  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

  if ((v54 & 1) == 0)
  {
LABEL_103:
    if (*(a1 + 136) == *(a1 + 144))
    {
LABEL_138:
      v66 = *(a1 + 160);
      if ((v76.__r_.__value_.__s.__data_[0] & 0x8000000000000000) == 0 && (*(*(*(a1 + 24) + 16) + 4 * v76.__r_.__value_.__s.__data_[0]) & v66) != 0)
      {
        goto LABEL_64;
      }

      v67 = (v66 >> 7) & 1;
      if (v76.__r_.__value_.__s.__data_[0] != 95)
      {
        LOBYTE(v67) = 0;
      }

      v10 |= v67;
      goto LABEL_65;
    }

    v55 = &__s;
    sub_1D0E54180(&__s, a1 + 16, &v76, &v76.__r_.__value_.__s.__data_[1]);
    v56 = *(a1 + 136);
    v57 = *(a1 + 144) - v56;
    if (v57)
    {
      v72 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
      v73 = v9;
      v58 = 0xAAAAAAAAAAAAAAABLL * (v57 >> 3);
      if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v59 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v59 = __s.__r_.__value_.__l.__size_;
      }

      if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v55 = __s.__r_.__value_.__r.__words[0];
      }

      if (v58 <= 1)
      {
        v60 = 1;
      }

      else
      {
        v60 = 0xAAAAAAAAAAAAAAABLL * (v57 >> 3);
      }

      v61 = 1;
      v62 = 1;
      while (1)
      {
        v63 = *(v56 + 23);
        v64 = v63;
        if ((v63 & 0x80u) != 0)
        {
          v63 = *(v56 + 8);
        }

        if (v59 == v63)
        {
          v65 = v64 >= 0 ? v56 : *v56;
          if (!memcmp(v55, v65, v59))
          {
            break;
          }
        }

        v62 = v61++ < v58;
        v56 += 24;
        if (!--v60)
        {
          goto LABEL_135;
        }
      }

      v10 = 1;
LABEL_135:
      v9 = v73;
      if ((v72 & 0x80) == 0)
      {
LABEL_137:
        if (v62)
        {
          goto LABEL_65;
        }

        goto LABEL_138;
      }
    }

    else
    {
      v62 = 0;
      if ((*(&__s.__r_.__value_.__s + 23) & 0x80) == 0)
      {
        goto LABEL_137;
      }
    }

    operator delete(__s.__r_.__value_.__l.__data_);
    goto LABEL_137;
  }

LABEL_65:
  if (*(a1 + 168) == (v10 & 1))
  {
    v35 = 0;
    v36 = -993;
  }

  else
  {
    *(a2 + 16) += v9;
    v35 = *(a1 + 8);
    v36 = -995;
  }

  *a2 = v36;
  *(a2 + 80) = v35;
}

void sub_1D0E53D8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D0E53DC8(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 48;
        sub_1D0E53E4C(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_1D0E53E4C(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

std::locale *sub_1D0E53EA4(std::locale *a1)
{
  a1->__locale_ = &unk_1F4CF0778;
  v7 = a1 + 17;
  sub_1D0D41594(&v7);
  locale = a1[14].__locale_;
  if (locale)
  {
    a1[15].__locale_ = locale;
    operator delete(locale);
  }

  v7 = a1 + 11;
  sub_1D0E53DC8(&v7);
  v3 = a1[8].__locale_;
  if (v3)
  {
    a1[9].__locale_ = v3;
    operator delete(v3);
  }

  v4 = a1[5].__locale_;
  if (v4)
  {
    a1[6].__locale_ = v4;
    operator delete(v4);
  }

  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_1F4CF0430;
  v5 = a1[1].__locale_;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  return a1;
}

void sub_1D0E53F8C(int a1, uint64_t a2, _BYTE *__src, _BYTE *a4)
{
  sub_1D0E540D0(__p, __src, a4, a4 - __src);
  v5 = v8;
  if ((v8 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v8 & 0x80u) != 0)
  {
    v5 = __p[1];
  }

  (*(**(a2 + 16) + 32))(*(a2 + 16), v6, v6 + v5);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1D0E54034(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0E54050(void *a1, void *a2)
{
  v2 = a1[1];
  if (*(a1 + 23) >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    a1 = *a1;
    v3 = v2;
  }

  v4 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  if (v5 >= v3)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  v7 = memcmp(a1, a2, v6);
  if (v7)
  {
    if ((v7 & 0x80000000) == 0)
    {
      return 1;
    }
  }

  else
  {
    if (v3 == v5)
    {
      return 0;
    }

    if (v3 >= v5)
    {
      return 1;
    }
  }

  return 255;
}

_BYTE *sub_1D0E540D0(_BYTE *__dst, _BYTE *__src, _BYTE *a3, unint64_t a4)
{
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1D0C537F0();
  }

  v4 = __dst;
  if (a4 > 0x16)
  {
    operator new();
  }

  __dst[23] = a4;
  v5 = a3 - __src;
  if (a3 != __src)
  {
    __dst = memmove(__dst, __src, v5);
  }

  v4[v5] = 0;
  return __dst;
}

void sub_1D0E54180(uint64_t a1, uint64_t a2, _BYTE *__src, _BYTE *a4)
{
  sub_1D0E540D0(__p, __src, a4, a4 - __src);
  v6 = v12;
  if ((v12 & 0x80u) == 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  if ((v12 & 0x80u) != 0)
  {
    v6 = __p[1];
  }

  (*(**(a2 + 16) + 32))(*(a2 + 16), v7, v7 + v6);
  v8 = *(a1 + 23);
  v9 = v8;
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a1 + 8);
  }

  if (v8 != 1)
  {
    if (v8 == 12)
    {
      if (v9 >= 0)
      {
        v10 = a1;
      }

      else
      {
        v10 = *a1;
      }

      v10[11] = v10[3];
    }

    else if (v9 < 0)
    {
      **a1 = 0;
      *(a1 + 8) = 0;
    }

    else
    {
      *a1 = 0;
      *(a1 + 23) = 0;
    }
  }

  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1D0E54280(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D0E5429C()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1D387E7B0](exception, 5);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

_BYTE *sub_1D0E542F4(uint64_t a1, _BYTE *__src, _BYTE *a3, uint64_t a4)
{
  v4 = a3 - __src - 2;
  if (a3 - __src < 2)
  {
    goto LABEL_14;
  }

  v6 = __src;
  for (i = __src; ; v6 = i)
  {
    v8 = *i++;
    if (v8 == 46 && *i == 93)
    {
      break;
    }

    if (!v4)
    {
      goto LABEL_14;
    }

    --v4;
  }

  if (v6 == a3)
  {
LABEL_14:
    sub_1D0E5429C();
  }

  sub_1D0E549D0(&v12, a1, __src, v6);
  if (*(a4 + 23) < 0)
  {
    operator delete(*a4);
  }

  *a4 = v12;
  v9 = v13;
  *(a4 + 16) = v13;
  v10 = HIBYTE(v9);
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a4 + 8);
  }

  if (v10 - 1 >= 2)
  {
    sub_1D0E54978();
  }

  return v6 + 2;
}

unsigned __int8 *sub_1D0E543C4(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  if (a2 == a3)
  {
    sub_1D0E52080();
  }

  v7 = *a2;
  if (v7 > 0x61)
  {
    if (*a2 > 0x72u)
    {
      if (v7 != 115)
      {
        if (v7 != 119)
        {
          goto LABEL_26;
        }

        *(a5 + 160) |= 0x500u;
        sub_1D0E534BC(a5, 95);
        return a2 + 1;
      }

      v9 = *(a5 + 160) | 0x4000;
    }

    else
    {
      if (v7 == 98)
      {
        if (*(a4 + 23) < 0)
        {
          *(a4 + 8) = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        *a4 = 8;
        return a2 + 1;
      }

      if (v7 != 100)
      {
        goto LABEL_26;
      }

      v9 = *(a5 + 160) | 0x400;
    }

    *(a5 + 160) = v9;
    return a2 + 1;
  }

  if (*a2 <= 0x52u)
  {
    if (!*a2)
    {
      if (*(a4 + 23) < 0)
      {
        *(a4 + 8) = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      *a4 = 0;
      return a2 + 1;
    }

    if (v7 == 68)
    {
      v8 = *(a5 + 164) | 0x400;
LABEL_23:
      *(a5 + 164) = v8;
      return a2 + 1;
    }

    goto LABEL_26;
  }

  if (v7 == 83)
  {
    v8 = *(a5 + 164) | 0x4000;
    goto LABEL_23;
  }

  if (v7 == 87)
  {
    *(a5 + 164) |= 0x500u;
    v15 = 95;
    if (*(a5 + 169) == 1)
    {
      v14 = (*(**(a5 + 24) + 40))(*(a5 + 24), 95);
      v10 = a5 + 64;
      v11 = &v14;
    }

    else
    {
      if (*(a5 + 170) != 1)
      {
        sub_1D0BF71E4(a5 + 64, &v15);
        return a2 + 1;
      }

      v13 = 95;
      v10 = a5 + 64;
      v11 = &v13;
    }

    sub_1D0BF71E4(v10, v11);
    return a2 + 1;
  }

LABEL_26:

  return sub_1D0E520D8(a1, a2, a3, a4);
}

unsigned __int8 *sub_1D0E545B8(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t *a4)
{
  if (a2 == a3)
  {
LABEL_71:
    sub_1D0E52080();
  }

  v5 = *a2;
  if (v5 > 0x65u)
  {
    if (v5 <= 0x71u)
    {
      if (v5 == 102)
      {
        if (a4)
        {
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          v9 = 12;
          goto LABEL_66;
        }

        goto LABEL_50;
      }

      if (v5 == 110)
      {
        if (a4)
        {
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          v9 = 10;
          goto LABEL_66;
        }

        goto LABEL_50;
      }
    }

    else
    {
      switch(v5)
      {
        case 'r':
          if (a4)
          {
            if (*(a4 + 23) < 0)
            {
              a4[1] = 1;
              a4 = *a4;
            }

            else
            {
              *(a4 + 23) = 1;
            }

            v9 = 13;
            goto LABEL_66;
          }

          goto LABEL_50;
        case 't':
          if (a4)
          {
            if (*(a4 + 23) < 0)
            {
              a4[1] = 1;
              a4 = *a4;
            }

            else
            {
              *(a4 + 23) = 1;
            }

            v9 = 9;
            goto LABEL_66;
          }

          goto LABEL_50;
        case 'v':
          if (a4)
          {
            if (*(a4 + 23) < 0)
            {
              a4[1] = 1;
              a4 = *a4;
            }

            else
            {
              *(a4 + 23) = 1;
            }

            v9 = 11;
            goto LABEL_66;
          }

          goto LABEL_50;
      }
    }

    goto LABEL_39;
  }

  if (v5 <= 0x5Bu)
  {
    if (v5 != 34 && v5 != 47)
    {
      goto LABEL_39;
    }

LABEL_19:
    if (a4)
    {
      if (*(a4 + 23) < 0)
      {
        a4[1] = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      *a4 = v5;
      *(a4 + 1) = 0;
      return a2 + 1;
    }

    goto LABEL_50;
  }

  switch(v5)
  {
    case '\\':
      goto LABEL_19;
    case 'a':
      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        v9 = 7;
        goto LABEL_66;
      }

LABEL_50:
      sub_1D0E524D4(a1);
    case 'b':
      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        v9 = 8;
LABEL_66:
        *a4 = v9;
        return a2 + 1;
      }

      goto LABEL_50;
  }

LABEL_39:
  if ((v5 & 0xFFFFFFF8) != 0x30)
  {
    goto LABEL_71;
  }

  v6 = v5 - 48;
  v7 = a2 + 1;
  if (a2 + 1 != a3 && (*v7 & 0xF8) == 0x30)
  {
    v6 = *v7 + 8 * v6 - 48;
    v7 = a2 + 2;
    if (a2 + 2 != a3)
    {
      v8 = *v7 + 8 * v6 - 48;
      if ((*v7 & 0xF8) == 0x30)
      {
        v7 = a2 + 3;
        v6 = v8;
      }
    }
  }

  if (!a4)
  {
    sub_1D0E524D4(a1);
  }

  if (*(a4 + 23) < 0)
  {
    a4[1] = 1;
    a4 = *a4;
  }

  else
  {
    *(a4 + 23) = 1;
  }

  *a4 = v6;
  *(a4 + 1) = 0;
  return v7;
}

void sub_1D0E5489C(uint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  if (*(a1 + 169) == 1)
  {
    v5 = (*(**(a1 + 24) + 40))(*(a1 + 24));
    v11 = v5 | ((*(**(a1 + 24) + 40))(*(a1 + 24), a3) << 8);
    v6 = a1 + 112;
    v7 = &v11;
  }

  else
  {
    v8 = a2 | (a3 << 8);
    if (*(a1 + 170) == 1)
    {
      v10 = v8;
      v6 = a1 + 112;
      v7 = &v10;
    }

    else
    {
      v9 = v8;
      v6 = a1 + 112;
      v7 = &v9;
    }
  }

  sub_1D0E54E6C(v6, v7);
}

void sub_1D0E54978()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1D387E7B0](exception, 1);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

void sub_1D0E549D0(uint64_t a1, uint64_t a2, _BYTE *__src, _BYTE *a4)
{
  sub_1D0E540D0(&__s, __src, a4, a4 - __src);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    if (!__s.__r_.__value_.__l.__size_)
    {
      goto LABEL_9;
    }

    p_s = __s.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (!*(&__s.__r_.__value_.__s + 23))
    {
      return;
    }

    p_s = &__s;
  }

  std::__get_collation_name(&v11, p_s);
  *a1 = *&v11.__r_.__value_.__l.__data_;
  v7 = v11.__r_.__value_.__r.__words[2];
  *(a1 + 16) = *(&v11.__r_.__value_.__l + 2);
  v8 = HIBYTE(v7);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a1 + 8);
  }

  if (v8)
  {
    goto LABEL_9;
  }

  if ((SHIBYTE(__s.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (__s.__r_.__value_.__l.__size_ >= 3)
    {
      goto LABEL_9;
    }
  }

  else if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) >= 3)
  {
    return;
  }

  (*(**(a2 + 16) + 32))(&v11);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  *a1 = v11;
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    v9 = *(a1 + 23);
    if (v9 != 12 && v9 != 1)
    {
      *a1 = 0;
      *(a1 + 23) = 0;
      goto LABEL_9;
    }

    goto LABEL_23;
  }

  v10 = *(a1 + 8);
  if (v10 == 1 || v10 == 12)
  {
LABEL_23:
    std::string::operator=(a1, &__s);
    goto LABEL_9;
  }

  **a1 = 0;
  *(a1 + 8) = 0;
LABEL_9:
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }
}

void sub_1D0E54B54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 + 23) < 0)
  {
    operator delete(*v17);
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D0E54B88()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1D387E7B0](exception, 2);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

void sub_1D0E54BE0(void **a1, __int128 *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 4);
    v9 = v8 + 1;
    if (v8 + 1 > 0x555555555555555)
    {
      sub_1D0C5663C();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x2AAAAAAAAAAAAAALL)
    {
      v11 = 0x555555555555555;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (v11 <= 0x555555555555555)
      {
        operator new();
      }

      sub_1D0C54BE8();
    }

    v12 = 48 * v8;
    *v12 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *a2 = 0;
    *(a2 + 1) = 0;
    v13 = *(a2 + 24);
    *(a2 + 2) = 0;
    *(a2 + 3) = 0;
    *(v12 + 40) = *(a2 + 5);
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    v7 = 48 * v8 + 48;
    v14 = *a1;
    v15 = a1[1] - *a1;
    *(v12 + 24) = v13;
    v16 = 48 * v8 - v15;
    memcpy((v12 - v15), v14, v15);
    *a1 = v16;
    a1[1] = v7;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    v5 = *a2;
    *(v3 + 2) = *(a2 + 2);
    *v3 = v5;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v6 = *(a2 + 24);
    *(v3 + 5) = *(a2 + 5);
    *(v3 + 24) = v6;
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    *(a2 + 3) = 0;
    v7 = (v3 + 48);
  }

  a1[1] = v7;
}

void sub_1D0E54D50(int a1, uint64_t a2, _BYTE *__src, _BYTE *a4)
{
  sub_1D0E540D0(__p, __src, a4, a4 - __src);
  v5 = v8;
  if ((v8 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v8 & 0x80u) != 0)
  {
    v5 = __p[1];
  }

  (*(**(a2 + 16) + 32))(*(a2 + 16), v6, v6 + v5);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1D0E54DF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D0E54E14()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1D387E7B0](exception, 9);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

void sub_1D0E54E6C(uint64_t a1, _WORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = v7 >> 1;
    if (v7 >> 1 <= -2)
    {
      sub_1D0C5663C();
    }

    v9 = v3 - v6;
    if (v9 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    else
    {
      v10 = v9;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      if ((v11 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1D0C54BE8();
    }

    v12 = (2 * v8);
    v13 = &v12[-(v7 >> 1)];
    *v12 = *a2;
    v5 = v12 + 1;
    memcpy(v13, v6, v7);
    *a1 = v13;
    *(a1 + 8) = v5;
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

void *sub_1D0E54F64(void *a1)
{
  *a1 = &unk_1F4CF0430;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_1D0E54FD0(void *a1)
{
  *a1 = &unk_1F4CF0430;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x1D387ECA0);
}

uint64_t sub_1D0E5505C(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  *(*(a2 + 32) + 24 * (*(result + 16) - 1)) = *(a2 + 16);
  *(a2 + 80) = *(result + 8);
  return result;
}

void *sub_1D0E5508C(void *a1)
{
  *a1 = &unk_1F4CF0430;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_1D0E550F8(void *a1)
{
  *a1 = &unk_1F4CF0430;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x1D387ECA0);
}

uint64_t sub_1D0E55184(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  v2 = *(a2 + 32) + 24 * (*(result + 16) - 1);
  *(v2 + 8) = *(a2 + 16);
  *(v2 + 16) = 1;
  *(a2 + 80) = *(result + 8);
  return result;
}

unsigned __int8 *sub_1D0E5534C(unsigned __int8 *result, unsigned __int8 *a2, int *a3)
{
  if (result != a2)
  {
    v3 = *result;
    if ((v3 & 0xF8) == 0x30 || (v3 & 0xFE) == 0x38)
    {
      v4 = v3 - 48;
      *a3 = v4;
      if (++result != a2)
      {
        do
        {
          v5 = *result;
          if ((v5 & 0xF8) != 0x30 && (v5 & 0xFE) != 0x38)
          {
            break;
          }

          if (v4 >= 214748364)
          {
            sub_1D0E553E4();
          }

          v4 = v5 + 10 * v4 - 48;
          *a3 = v4;
          ++result;
        }

        while (result != a2);
      }
    }
  }

  return result;
}

void sub_1D0E553E4()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1D387E7B0](exception, 8);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

void sub_1D0E5543C()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1D387E7B0](exception, 7);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

void sub_1D0E55498(void *a1)
{
  sub_1D0E555EC(a1);

  JUMPOUT(0x1D387ECA0);
}

unsigned int *sub_1D0E554D0(unsigned int *result, void *a2)
{
  v2 = (a2[7] + 16 * result[10]);
  if (*a2 == -991)
  {
    v3 = *v2 + 1;
    *v2 = v3;
    v4 = *(result + 3);
    v5 = *(result + 4);
    v6 = v3 < v5;
    if (v3 < v5 && v3 >= v4)
    {
      v8 = v2[1];
      v6 = v3 < v5 && v8 != a2[2];
    }

    if (!v6 || v3 < v4)
    {
      *a2 = -994;
      if (!v6)
      {
        goto LABEL_25;
      }

LABEL_22:
      a2[10] = *(result + 1);
      return sub_1D0E556A0(result, a2);
    }

    goto LABEL_23;
  }

  *v2 = 0;
  if (*(result + 4))
  {
    if (*(result + 3))
    {
      *a2 = -994;
      goto LABEL_22;
    }

LABEL_23:
    *a2 = -992;
    return result;
  }

  *a2 = -994;
LABEL_25:
  a2[10] = *(result + 2);
  return result;
}

unsigned int *sub_1D0E55580(unsigned int *result, int a2, void *a3)
{
  *a3 = -994;
  if (*(result + 52) == a2)
  {
    a3[10] = *(result + 2);
  }

  else
  {
    a3[10] = *(result + 1);
    return sub_1D0E556A0(result, a3);
  }

  return result;
}

void sub_1D0E555B4(void *a1)
{
  sub_1D0E555EC(a1);

  JUMPOUT(0x1D387ECA0);
}

void *sub_1D0E555EC(void *a1)
{
  *a1 = &unk_1F4CF08B0;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *a1 = &unk_1F4CF0430;
  v3 = a1[1];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

unsigned int *sub_1D0E556A0(unsigned int *result, void *a2)
{
  v2 = result[11];
  *(a2[7] + 16 * result[10] + 8) = a2[2];
  v3 = result[12];
  if (v2 != v3)
  {
    v4 = v2 - 1;
    v5 = a2[3];
    v6 = v3 - 1 - v4;
    v7 = (a2[4] + 24 * v4 + 16);
    do
    {
      *(v7 - 2) = v5;
      *(v7 - 1) = v5;
      *v7 = 0;
      v7 += 24;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t sub_1D0E55708(uint64_t result, uint64_t a2)
{
  *a2 = -991;
  *(a2 + 80) = *(result + 8);
  return result;
}

void sub_1D0E55720(void *a1)
{
  sub_1D0E555EC(a1);

  JUMPOUT(0x1D387ECA0);
}

uint64_t sub_1D0E55764(uint64_t result, int a2, uint64_t a3)
{
  *a3 = -994;
  v3 = 8;
  if (a2)
  {
    v3 = 16;
  }

  *(a3 + 80) = *(result + v3);
  return result;
}

uint64_t sub_1D0E557A0(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  *(a2 + 80) = *(result + 8);
  return result;
}

void sub_1D0E557B4()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1D387E7B0](exception, 15);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

unsigned __int8 *sub_1D0E5580C(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 != a3)
  {
    v6 = *(a1 + 56);
    v7 = *(a1 + 28);
    v9 = a2 + 1;
    v8 = *a2;
    if (a2 + 1 != a3 || v8 != 36)
    {
      if ((v8 - 46) > 0x2E || ((1 << (v8 - 46)) & 0x600000000001) == 0)
      {
        sub_1D0E524D4(a1);
      }

      if (v9 == a3 || v8 != 92)
      {
        if (v8 == 46)
        {
          operator new();
        }
      }

      else
      {
        v18 = *v9 - 36;
        if (v18 <= 0x3A && ((1 << v18) & 0x580000000000441) != 0)
        {
          sub_1D0E524D4(a1);
        }
      }
    }

    v10 = sub_1D0E51150(a1, a2, a3);
    v11 = v10;
    if (v10 == v3 && v10 != a3 && v10 + 1 != a3 && *v10 == 92)
    {
      v12 = v10[1];
      if (v12 == 40)
      {
        v13 = v10 + 2;
        sub_1D0E51E28(a1);
        v14 = *(a1 + 28);
        do
        {
          v15 = v13;
          v16 = sub_1D0E5580C(a1, v13, a3);
          v13 = v16;
        }

        while (v16 != v15);
        if (v15 == a3 || v16 + 1 == a3 || *v16 != 92 || v16[1] != 41)
        {
          sub_1D0E4FB44();
        }

        v11 = v16 + 2;
        sub_1D0E51EB0(a1);
      }

      else
      {
        v19 = sub_1D0E55CE4(a1, v12);
        v20 = 2;
        if (!v19)
        {
          v20 = 0;
        }

        v11 += v20;
      }
    }

    if (v11 != v3)
    {
      if (v11 != a3)
      {
        v21 = (*(a1 + 28) + 1);
        v22 = *v11;
        if (v22 == 42)
        {
          v23 = (*(a1 + 28) + 1);
          sub_1D0E551BC();
        }

        if (v11 + 1 != a3 && v22 == 92 && v11[1] == 123)
        {
          v30 = 0;
          v24 = sub_1D0E5534C(v11 + 2, a3, &v30);
          if (v24 == v11 + 2)
          {
            goto LABEL_57;
          }

          if (v24 != a3)
          {
            v25 = v24 + 1;
            v26 = *v24;
            if (v26 == 44)
            {
              v29 = -1;
              v27 = sub_1D0E5534C(v24 + 1, a3, &v29);
              if (v27 != a3 && v27 + 1 != a3 && *v27 == 92 && v27[1] == 125)
              {
                if (v29 == -1 || v29 >= v30)
                {
                  sub_1D0E551BC();
                }

LABEL_57:
                sub_1D0E553E4();
              }
            }

            else if (v25 != a3 && v26 == 92 && *v25 == 125)
            {
              sub_1D0E551BC();
            }
          }

          sub_1D0E5543C();
        }
      }

      return v11;
    }
  }

  return v3;
}

void *sub_1D0E55BAC(void *a1)
{
  *a1 = &unk_1F4CF0430;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_1D0E55C18(void *a1)
{
  *a1 = &unk_1F4CF0430;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x1D387ECA0);
}

uint64_t sub_1D0E55CA4(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || !*v2)
  {
    v3 = 0;
    *a2 = -993;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    v3 = *(result + 8);
  }

  *(a2 + 80) = v3;
  return result;
}

uint64_t sub_1D0E55CE4(uint64_t a1, unsigned __int8 a2)
{
  if (((a2 & 0xF8) == 0x30 || (a2 & 0xFE) == 0x38) && a2 - 49 <= 8)
  {
    if (a2 - 48 <= *(a1 + 28))
    {
      sub_1D0E52710(a1);
    }

    sub_1D0E526B8();
  }

  return 0;
}

unsigned __int8 *sub_1D0E55D44(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = sub_1D0E55DA4(a1, a2, a3);
  if (v6 == a2)
  {
    sub_1D0E557B4();
  }

  do
  {
    v7 = v6;
    v6 = sub_1D0E55DA4(a1, v6, a3);
  }

  while (v6 != v7);
  return v7;
}

unsigned __int8 *sub_1D0E55DA4(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  v7 = *(a1 + 28);
  if (a2 == a3)
  {
    goto LABEL_23;
  }

  v8 = *a2;
  v9 = (v8 - 36);
  if (v9 <= 0x3A)
  {
    if (((1 << (v8 - 36)) & 0x5800000080004D1) != 0)
    {
      goto LABEL_4;
    }

    if (v9 == 5)
    {
      if (!*(a1 + 36))
      {
        goto LABEL_15;
      }

LABEL_23:
      v12 = sub_1D0E51150(a1, a2, a3);
      goto LABEL_24;
    }
  }

  if ((v8 - 123) >= 2)
  {
    goto LABEL_15;
  }

LABEL_4:
  v10 = a2 + 1;
  if (a2 + 1 == a3 || v8 != 92)
  {
LABEL_21:
    if (v8 == 46)
    {
      operator new();
    }

    goto LABEL_23;
  }

  v11 = *v10;
  if ((v11 - 36) <= 0x3A && ((1 << (v11 - 36)) & 0x5800000080004F1) != 0 || (v11 - 123) < 3)
  {
LABEL_15:
    sub_1D0E524D4(a1);
  }

  if ((*(a1 + 24) & 0x1F0) == 0x40)
  {
    v12 = sub_1D0E545B8(a1, a2 + 1, a3, 0);
  }

  else
  {
    v13 = sub_1D0E55CE4(a1, *v10);
    v14 = 2;
    if (!v13)
    {
      v14 = 0;
    }

    v12 = &a2[v14];
  }

  if (v12 == a2)
  {
    v8 = *v12;
    goto LABEL_21;
  }

LABEL_24:
  if (v12 == a2 && v12 != a3)
  {
    v15 = *v12;
    switch(v15)
    {
      case '$':
        sub_1D0E4F95C();
      case '(':
        sub_1D0E51E28(a1);
        v16 = *(a1 + 28);
        ++*(a1 + 36);
        v17 = sub_1D0E4EB14(a1, v12 + 1, a3);
        if (v17 == a3 || (v18 = v17, *v17 != 41))
        {
          sub_1D0E4FB44();
        }

        sub_1D0E51EB0(a1);
        --*(a1 + 36);
        v12 = v18 + 1;
        break;
      case '^':
        sub_1D0E4F8D8();
    }
  }

  if (v12 == a2)
  {
    return v12;
  }

  v19 = (*(a1 + 28) + 1);

  return sub_1D0E4F5DC(a1, v12, a3);
}

BOOL sub_1D0E56064(uint64_t a1, uint64_t a2)
{
  v6 = a1 + 32;
  v4 = *(a1 + 32);
  v5 = *(v6 + 8);
  v9 = a2 + 32;
  v7 = *(a2 + 32);
  v8 = *(v9 + 8);
  v10 = v8 == v7 && v5 == v4;
  if (v5 != v4 && v8 != v7)
  {
    return *a1 == *a2 && *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24) && sub_1D0E57BAC(v4, v7) == 0;
  }

  return v10;
}

uint64_t sub_1D0E56100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  if ((a5 & 0x80) != 0)
  {
    v9 = a5 & 0xFFA;
  }

  else
  {
    v9 = a5;
  }

  v10 = *(a1 + 28);
  *(a4 + 24) = a3;
  v11 = (a4 + 24);
  *(a4 + 32) = a3;
  *(a4 + 40) = 0;
  sub_1D0E50730(a4, (v10 + 1), (a4 + 24));
  *(a4 + 48) = a2;
  *(a4 + 56) = a2;
  *(a4 + 64) = 0;
  *(a4 + 72) = *v11;
  *(a4 + 88) = *(a4 + 40);
  if ((v9 & 0x800) == 0)
  {
    *(a4 + 104) = a2;
  }

  *(a4 + 96) = 1;
  if (!sub_1D0E565D8(a1, a2, a3, a4, v9, (v9 & 0x800) == 0))
  {
    if (a2 == a3 || (v9 & 0x40) != 0)
    {
      goto LABEL_18;
    }

    v18 = a2 + 1;
    if (v18 != a3)
    {
      do
      {
        sub_1D0E50730(a4, 0xAAAAAAAAAAAAAAABLL * ((*(a4 + 8) - *a4) >> 3), v11);
        v19 = sub_1D0E565D8(a1, v18, a3, a4, v9 | 0x80, 0);
        v13 = *a4;
        v12 = *(a4 + 8);
        if (v19)
        {
          goto LABEL_8;
        }

        sub_1D0E50730(a4, 0xAAAAAAAAAAAAAAABLL * ((v12 - v13) >> 3), v11);
      }

      while (++v18 != a3);
    }

    sub_1D0E50730(a4, 0xAAAAAAAAAAAAAAABLL * ((*(a4 + 8) - *a4) >> 3), v11);
    if (!sub_1D0E565D8(a1, v18, a3, a4, v9 | 0x80, 0))
    {
LABEL_18:
      result = 0;
      *(a4 + 8) = *a4;
      return result;
    }
  }

  v13 = *a4;
  v12 = *(a4 + 8);
LABEL_8:
  if (v12 == v13)
  {
    v14 = v11;
  }

  else
  {
    v14 = v13;
  }

  v15 = *v14;
  *(a4 + 56) = *v14;
  *(a4 + 64) = *(a4 + 48) != v15;
  v16 = v14[1];
  *(a4 + 72) = v16;
  *(a4 + 88) = v16 != *(a4 + 80);
  return 1;
}

void *sub_1D0E562DC(void *result, uint64_t a2, uint64_t a3, uint64_t *a4, char a5)
{
  v5 = result;
  v6 = a4[6];
  v7 = a4[1] - *a4;
  v8 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
  v10 = *result;
  v9 = result[1];
  v11 = v9 - *result;
  v12 = 0xAAAAAAAAAAAAAAABLL * (v11 >> 3);
  v13 = v8 - v12;
  if (v8 <= v12)
  {
    if (v8 < v12)
    {
      v9 = v10 + v7;
      result[1] = v10 + v7;
    }
  }

  else
  {
    v14 = result[2];
    if (0xAAAAAAAAAAAAAAABLL * ((v14 - v9) >> 3) < v13)
    {
      if (v8 <= 0xAAAAAAAAAAAAAAALL)
      {
        v15 = 0xAAAAAAAAAAAAAAABLL * ((v14 - v10) >> 3);
        v16 = 2 * v15;
        if (2 * v15 <= v8)
        {
          v16 = v8;
        }

        if (v15 >= 0x555555555555555)
        {
          v17 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v17 = v16;
        }

        if (v17 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        sub_1D0C54BE8();
      }

      sub_1D0C5663C();
    }

    v18 = v9 + 24 * v13;
    v19 = 24 * v8 - 8 * (v11 >> 3);
    do
    {
      *v9 = 0;
      *(v9 + 8) = 0;
      *(v9 + 16) = 0;
      v9 += 24;
      v19 -= 24;
    }

    while (v19);
    result[1] = v18;
    v9 = v18;
  }

  v20 = *result;
  if (v9 == *result)
  {
    v23 = a2 - v6;
  }

  else
  {
    v21 = 0;
    v22 = 0;
    v23 = a2 - v6;
    v25 = *a4;
    v24 = a4[1];
    do
    {
      v26 = 0xAAAAAAAAAAAAAAABLL * ((v24 - v25) >> 3);
      v27 = (v25 + v21);
      if (v26 <= v22)
      {
        v28 = a4 + 3;
      }

      else
      {
        v28 = v27;
      }

      *(v20 + v21) = v23 + *v28;
      if (0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3) <= v22)
      {
        v29 = a4 + 3;
      }

      else
      {
        v29 = (*a4 + v21);
      }

      *(*v5 + v21 + 8) = v23 + v29[1];
      v25 = *a4;
      v24 = a4[1];
      if (0xAAAAAAAAAAAAAAABLL * ((v24 - *a4) >> 3) <= v22)
      {
        v30 = a4 + 3;
      }

      else
      {
        v30 = (*a4 + v21);
      }

      v31 = *(v30 + 16);
      v20 = *v5;
      v32 = v5[1];
      result = (*v5 + v21);
      *(result + 16) = v31;
      ++v22;
      v21 += 24;
    }

    while (v22 < 0xAAAAAAAAAAAAAAABLL * ((v32 - v20) >> 3));
  }

  v5[3] = a3;
  v5[4] = a3;
  *(v5 + 40) = 0;
  v33 = v23 + a4[6];
  v5[6] = v33;
  v5[7] = v23 + a4[7];
  *(v5 + 64) = *(a4 + 64);
  v5[9] = v23 + a4[9];
  v5[10] = v23 + a4[10];
  *(v5 + 88) = *(a4 + 88);
  if ((a5 & 1) == 0)
  {
    v5[13] = v33;
  }

  *(v5 + 96) = *(a4 + 96);
  return result;
}

uint64_t sub_1D0E565D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, char a6)
{
  v7 = a5;
  v10 = a2;
  if ((*(a1 + 24) & 0x1F0) == 0)
  {

    return sub_1D0E5038C(a1, a2, a3, a4, a5, a6);
  }

  if (!*(a1 + 28))
  {
    memset(v118, 0, 48);
    v63 = *(a1 + 40);
    if (!v63)
    {
LABEL_186:
      sub_1D0E57A2C(v118);
      return v63;
    }

    *v123 = 0;
    memset(&v123[8], 0, 32);
    v124 = 0uLL;
    memset(v125, 0, 37);
    sub_1D0E57650(v118, v123);
    if (v125[0])
    {
      operator delete(v125[0]);
    }

    if (*&v123[32])
    {
      operator delete(*&v123[32]);
    }

    v112 = a4;
    v64 = *&v118[8];
    v65 = *&v118[40] + *&v118[32] - 1;
    v66 = v65 / 0x2A;
    v67 = *(*&v118[8] + 8 * (v65 / 0x2A));
    v68 = 3 * (v65 % 0x2A);
    v69 = v67 + 32 * v68;
    *v69 = 0;
    *(v69 + 8) = v10;
    *(*(v64 + 8 * v66) + 32 * v68 + 16) = v10;
    *(*(v64 + 8 * v66) + 32 * v68 + 24) = a3;
    sub_1D0E50D48((*(v64 + 8 * v66) + 32 * v68 + 56), *(a1 + 32));
    v114 = 0;
    v70 = 0;
    v113 = 0;
    v71 = *&v118[40];
    v72 = *&v118[8];
    v73 = *&v118[40] + *&v118[32] - 1;
    v74 = v73 / 0x2A;
    v75 = 3 * (v73 % 0x2A);
    *(*(*&v118[8] + 8 * v74) + 32 * v75 + 80) = v63;
    v117 = a3 - v10;
    v76 = *(v72 + 8 * v74) + 32 * v75;
    *(v76 + 88) = v7;
    *(v76 + 92) = a6;
    while (1)
    {
      if ((++v70 & 0xFFF) == 0 && (v70 >> 12) >= v117)
      {
        sub_1D0E50E48();
      }

      v78 = *(*&v118[8] + 8 * ((v71 + *&v118[32] - 1) / 0x2AuLL)) + 96 * ((v71 + *&v118[32] - 1) % 0x2AuLL);
      v80 = (v78 + 80);
      v79 = *(v78 + 80);
      if (v79)
      {
        (*(*v79 + 16))(v79, v78);
      }

      v81 = *v78;
      if (*v78 <= -995)
      {
        switch(v81)
        {
          case -1000:
            v86 = *(v78 + 16);
            v88 = (v7 & 0x1000) == 0 || v86 == a3;
            v89 = v86 != v10 || (v7 & 0x20) == 0;
            if (!v89 || !v88)
            {
              goto LABEL_181;
            }

            v90 = v86 - *(v78 + 8);
            v91 = v113;
            if (v113 <= v90)
            {
              v91 = v90;
            }

            if ((v114 & 1) == 0)
            {
              v91 = v90;
            }

            if (v91 == v117)
            {
              v92 = *&v118[8];
              v93 = *&v118[16];
              if (*&v118[16] == *&v118[8])
              {
                v93 = *&v118[8];
              }

              else
              {
                v94 = v7;
                v95 = v10;
                v96 = (*&v118[8] + 8 * (*&v118[32] / 0x2AuLL));
                v97 = (*v96 + 96 * (*&v118[32] % 0x2AuLL));
                v98 = *(*&v118[8] + 8 * ((*&v118[40] + *&v118[32]) / 0x2AuLL)) + 96 * ((*&v118[40] + *&v118[32]) % 0x2AuLL);
                if (v97 != v98)
                {
                  do
                  {
                    sub_1D0E50EF8(v97);
                    v97 += 12;
                    if ((v97 - *v96) == 4032)
                    {
                      v99 = v96[1];
                      ++v96;
                      v97 = v99;
                    }
                  }

                  while (v97 != v98);
                  v92 = *&v118[8];
                  v93 = *&v118[16];
                }

                v10 = v95;
                v7 = v94;
              }

              *&v118[40] = 0;
              v102 = (v93 - v92) >> 3;
              if (v102 >= 3)
              {
                do
                {
                  operator delete(*v92);
                  v92 = (*&v118[8] + 8);
                  *&v118[8] = v92;
                  v102 = (*&v118[16] - v92) >> 3;
                }

                while (v102 > 2);
              }

              if (v102 == 1)
              {
                v103 = 21;
LABEL_172:
                *&v118[32] = v103;
              }

              else if (v102 == 2)
              {
                v103 = 42;
                goto LABEL_172;
              }

              v114 = 1;
              v113 = v117;
              break;
            }

            v113 = v91;
            sub_1D0E5797C(v118);
            v114 = 1;
            break;
          case -999:
            break;
          case -995:
            v82 = *&v118[32];
            v83 = *&v118[8];
            v84 = *&v118[16];
            if (!*&v118[32])
            {
              v85 = 42 * ((*&v118[16] - *&v118[8]) >> 3) - 1;
              if (*&v118[16] == *&v118[8])
              {
                v85 = 0;
              }

              if ((v85 - *&v118[40]) < 0x2A)
              {
                if (*&v118[16] - *&v118[8] < *&v118[24] - *v118)
                {
                  if (*&v118[8] != *v118)
                  {
                    operator new();
                  }

                  operator new();
                }

                if (*&v118[24] == *v118)
                {
                  v104 = 1;
                }

                else
                {
                  v104 = (*&v118[24] - *v118) >> 2;
                }

                *&v123[32] = v118;
                sub_1D0C4E87C(v104);
              }

              *&v118[32] = 42;
              *v123 = *(*&v118[16] - 8);
              *&v118[16] -= 8;
              sub_1D0C15D70(v118, v123);
              v82 = *&v118[32];
              v83 = *&v118[8];
              v84 = *&v118[16];
            }

            v105 = (v83 + 8 * (v82 / 0x2A));
            v106 = *v105 + 96 * (v82 % 0x2A);
            if (v84 == v83)
            {
              v107 = 0;
            }

            else
            {
              v107 = v106;
            }

            if (v107 == *v105)
            {
              v107 = *(v105 - 1) + 4032;
            }

            v108 = *(v78 + 16);
            *(v107 - 96) = *v78;
            *(v107 - 80) = v108;
            *(v107 - 56) = 0;
            *(v107 - 48) = 0;
            *(v107 - 64) = 0;
            *(v107 - 64) = *(v78 + 32);
            *(v107 - 48) = *(v78 + 48);
            *(v78 + 32) = 0;
            *(v78 + 40) = 0;
            *(v78 + 48) = 0;
            *(v107 - 40) = 0;
            *(v107 - 32) = 0;
            *(v107 - 24) = 0;
            *(v107 - 40) = *(v78 + 56);
            *(v107 - 24) = *(v78 + 72);
            *(v78 + 56) = 0;
            *(v78 + 64) = 0;
            *(v78 + 72) = 0;
            v109 = *v80;
            *(v107 - 11) = *(v78 + 85);
            *(v107 - 16) = v109;
            *&v118[32] = vaddq_s64(*&v118[32], xmmword_1D0E82EC0);
            goto LABEL_181;
          default:
            goto LABEL_189;
        }
      }

      else
      {
        if (v81 > -993)
        {
          if (v81 == -992)
          {
            v100 = *(v78 + 16);
            *v123 = *v78;
            *&v123[16] = v100;
            v124 = 0uLL;
            *&v123[32] = 0;
            sub_1D0E50F98(&v123[32], *(v78 + 32), *(v78 + 40), 0xAAAAAAAAAAAAAAABLL * ((*(v78 + 40) - *(v78 + 32)) >> 3));
            memset(v125, 0, 24);
            sub_1D0E51018(v125, *(v78 + 56), *(v78 + 64), (*(v78 + 64) - *(v78 + 56)) >> 4);
            v101 = *v80;
            *(&v125[3] + 5) = *(v78 + 85);
            v125[3] = v101;
            (*(**(v78 + 80) + 24))(*(v78 + 80), 1, v78);
            (*(*v125[3] + 24))(v125[3], 0, v123);
            sub_1D0E57650(v118, v123);
            if (v125[0])
            {
              v125[1] = v125[0];
              operator delete(v125[0]);
            }

            if (*&v123[32])
            {
              *&v124 = *&v123[32];
              operator delete(*&v123[32]);
            }
          }

          else if (v81 != -991)
          {
LABEL_189:
            sub_1D0E50EA0();
          }

          goto LABEL_182;
        }

        if (v81 != -994)
        {
          if (v81 != -993)
          {
            goto LABEL_189;
          }

LABEL_181:
          sub_1D0E5797C(v118);
        }
      }

LABEL_182:
      v71 = *&v118[40];
      if (!*&v118[40])
      {
        if (v114)
        {
          v110 = *v112;
          *v110 = v10;
          *(v110 + 8) = v10 + v113;
          v63 = 1;
          *(v110 + 16) = 1;
        }

        else
        {
          v63 = 0;
        }

        goto LABEL_186;
      }
    }
  }

  v12 = a5;
  v126 = 0;
  v127 = 0;
  v128 = 0;
  *v123 = 0;
  memset(&v123[8], 0, 32);
  v124 = 0u;
  memset(v125, 0, 37);
  v13 = *(a1 + 40);
  if (!v13)
  {
LABEL_94:
    v63 = 0;
    goto LABEL_95;
  }

  *&v121 = a3;
  *(&v121 + 1) = a3;
  v122 = 0;
  *v118 = 0;
  memset(&v118[8], 0, 48);
  *__p = 0uLL;
  memset(v120, 0, 21);
  sub_1D0E5093C(&v126, v118);
  if (__p[0])
  {
    operator delete(__p[0]);
  }

  if (*&v118[32])
  {
    operator delete(*&v118[32]);
  }

  v111 = a4;
  v14 = v127;
  *(v127 - 24) = 0;
  *(v14 - 11) = v10;
  *(v14 - 10) = v10;
  v115 = v10;
  *(v14 - 9) = a3;
  sub_1D0E50BB0(v14 - 8, *(a1 + 28), &v121);
  sub_1D0E50D48(v127 - 5, *(a1 + 32));
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v116 = a3;
  v18 = a3 - v115;
  v19 = v127;
  *(v127 - 2) = v13;
  *(v19 - 2) = v12;
  *(v19 - 4) = a6;
  do
  {
    v20 = (++v17 & 0xFFF) != 0 || (v17 >> 12) < v18;
    if (!v20)
    {
      sub_1D0E50E48();
    }

    v22 = v19 - 2;
    v21 = *(v19 - 2);
    v23 = v19 - 12;
    if (v21)
    {
      (*(*v21 + 16))(v21, v19 - 12);
    }

    v24 = *v23;
    if (*v23 > -994)
    {
      switch(v24)
      {
        case -993:
          goto LABEL_40;
        case -992:
          v37 = *(v19 - 5);
          *v118 = *v23;
          *&v118[16] = v37;
          memset(&v118[32], 0, 24);
          sub_1D0E50F98(&v118[32], *(v19 - 8), *(v19 - 7), 0xAAAAAAAAAAAAAAABLL * ((*(v19 - 7) - *(v19 - 8)) >> 3));
          __p[0] = 0;
          __p[1] = 0;
          v120[0] = 0;
          sub_1D0E51018(__p, *(v19 - 5), *(v19 - 4), (*(v19 - 4) - *(v19 - 5)) >> 4);
          v38 = *v22;
          *(&v120[1] + 5) = *(v19 - 11);
          v120[1] = v38;
          (*(**v22 + 24))(*v22, 1, v19 - 12);
          (*(*v120[1] + 24))(v120[1], 0, v118);
          sub_1D0E5093C(&v126, v118);
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          if (*&v118[32])
          {
            *&v118[40] = *&v118[32];
            operator delete(*&v118[32]);
          }

          break;
        case -991:
          break;
        default:
LABEL_188:
          sub_1D0E50EA0();
      }
    }

    else
    {
      if ((v24 + 995) < 2)
      {
        goto LABEL_45;
      }

      if (v24 != -1000)
      {
        goto LABEL_188;
      }

      v25 = *(v19 - 10);
      if ((v12 & 0x20) != 0 && v25 == v115 || (v12 & 0x1000) != 0 && v25 != v116)
      {
LABEL_40:
        v36 = v127 - 12;
        sub_1D0E50EF8(v127 - 12);
        v127 = v36;
        goto LABEL_45;
      }

      v26 = v25 - *(v19 - 11);
      if ((v16 & (v15 >= v26)) == 0)
      {
        v27 = *(v19 - 5);
        *v123 = *v23;
        *&v123[16] = v27;
        if (v123 != v23)
        {
          v29 = *(v19 - 8);
          v28 = *(v19 - 7);
          v30 = v28 - v29;
          v31 = *(&v124 + 1);
          v32 = *&v123[32];
          if (*(&v124 + 1) - *&v123[32] < v28 - v29)
          {
            if (*&v123[32])
            {
              *&v124 = *&v123[32];
              operator delete(*&v123[32]);
              v31 = 0;
              *&v123[32] = 0;
              v124 = 0uLL;
            }

            v33 = 0xAAAAAAAAAAAAAAABLL * (v30 >> 3);
            if (v33 <= 0xAAAAAAAAAAAAAAALL)
            {
              v34 = 0xAAAAAAAAAAAAAAABLL * (v31 >> 3);
              if (2 * v34 > v33)
              {
                v33 = 2 * v34;
              }

              if (v34 >= 0x555555555555555)
              {
                v35 = 0xAAAAAAAAAAAAAAALL;
              }

              else
              {
                v35 = v33;
              }

              if (v35 <= 0xAAAAAAAAAAAAAAALL)
              {
                sub_1D0E508E4(v35);
              }
            }

            sub_1D0C5663C();
          }

          v39 = v124;
          if (v124 - *&v123[32] >= v30)
          {
            while (v29 != v28)
            {
              *v32 = *v29;
              *(v32 + 16) = *(v29 + 16);
              v29 += 24;
              v32 += 24;
            }
          }

          else
          {
            v40 = (v29 + v124 - *&v123[32]);
            if (v124 != *&v123[32])
            {
              do
              {
                *v32 = *v29;
                *(v32 + 16) = *(v29 + 16);
                v29 += 24;
                v32 += 24;
              }

              while (v29 != v40);
            }

            if (v40 == v28)
            {
              v32 = v39;
            }

            else
            {
              v32 = v39;
              do
              {
                v41 = *v40;
                *(v39 + 16) = *(v40 + 2);
                *v39 = v41;
                v39 += 24;
                v40 = (v40 + 24);
                v32 += 24;
              }

              while (v40 != v28);
            }
          }

          *&v124 = v32;
          v43 = *(v19 - 5);
          v42 = *(v19 - 4);
          v44 = v42 - v43;
          v45 = v125[2];
          v46 = v125[0];
          if ((v125[2] - v125[0]) < (v42 - v43))
          {
            if (v125[0])
            {
              v125[1] = v125[0];
              operator delete(v125[0]);
              v45 = 0;
              memset(v125, 0, 24);
            }

            v47 = v44 >> 4;
            if (!((v44 >> 4) >> 60))
            {
              if (v45 >> 3 > v47)
              {
                v47 = v45 >> 3;
              }

              if (v45 >= 0x7FFFFFFFFFFFFFF0)
              {
                v48 = 0xFFFFFFFFFFFFFFFLL;
              }

              else
              {
                v48 = v47;
              }

              if (!(v48 >> 60))
              {
                sub_1D0E50F50(v48);
              }
            }

            sub_1D0C5663C();
          }

          v49 = v125[1];
          if ((v125[1] - v125[0]) >= v44)
          {
            while (v43 != v42)
            {
              *v46 = *v43;
              v46[1] = *(v43 + 1);
              v43 += 16;
              v46 += 2;
            }
          }

          else
          {
            v50 = &v43[v125[1] - v125[0]];
            if (v125[1] != v125[0])
            {
              do
              {
                *v46 = *v43;
                v46[1] = *(v43 + 1);
                v43 += 16;
                v46 += 2;
              }

              while (v43 != v50);
            }

            if (v50 == v42)
            {
              v46 = v49;
            }

            else
            {
              v46 = v49;
              do
              {
                v51 = *v50;
                v50 += 16;
                *v49++ = v51;
                v46 += 2;
              }

              while (v50 != v42);
            }
          }

          v125[1] = v46;
        }

        v52 = *v22;
        *(&v125[3] + 5) = *(v22 + 5);
        v125[3] = v52;
        v15 = v26;
      }

      v53 = v127;
      if (v15 == v18)
      {
        v54 = v126;
        while (v53 != v54)
        {
          v53 -= 12;
          sub_1D0E50EF8(v53);
        }

        v127 = v54;
        v16 = 1;
        v15 = v18;
      }

      else
      {
        v55 = v127 - 12;
        sub_1D0E50EF8(v127 - 12);
        v127 = v55;
        v16 = 1;
      }
    }

LABEL_45:
    v19 = v127;
  }

  while (v126 != v127);
  if ((v16 & 1) == 0)
  {
    goto LABEL_94;
  }

  v57 = *v111;
  *v57 = v115;
  *(v57 + 8) = v115 + v15;
  *(v57 + 16) = 1;
  if (v124 != *&v123[32])
  {
    v58 = 0xAAAAAAAAAAAAAAABLL * ((v124 - *&v123[32]) >> 3);
    v59 = (*&v123[32] + 16);
    v60 = 1;
    do
    {
      v61 = v57 + 24 * v60;
      *v61 = *(v59 - 1);
      v62 = *v59;
      v59 += 24;
      *(v61 + 16) = v62;
      v20 = v58 > v60++;
    }

    while (v20);
  }

  v63 = 1;
LABEL_95:
  if (v125[0])
  {
    v125[1] = v125[0];
    operator delete(v125[0]);
  }

  if (*&v123[32])
  {
    *&v124 = *&v123[32];
    operator delete(*&v123[32]);
  }

  *v123 = &v126;
  sub_1D0E510CC(v123);
  return v63;
}

void sub_1D0E57578(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  operator delete(v38);
  if (__p)
  {
    operator delete(__p);
  }

  sub_1D0E57A2C(&a17);
  _Unwind_Resume(a1);
}

__n128 sub_1D0E57650(void *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = v5 - v4;
  if (v5 == v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = 42 * ((v5 - v4) >> 3) - 1;
  }

  v8 = a1[4];
  v9 = a1[5] + v8;
  if (v7 == v9)
  {
    if (v8 < 0x2A)
    {
      v10 = a1[3];
      v11 = &v10[-*a1];
      if (v6 < v11)
      {
        if (v10 != v5)
        {
          operator new();
        }

        operator new();
      }

      if (v10 == *a1)
      {
        v12 = 1;
      }

      else
      {
        v12 = v11 >> 2;
      }

      v17[4] = a1;
      sub_1D0C4E87C(v12);
    }

    a1[4] = v8 - 42;
    v17[0] = *v4;
    a1[1] = v4 + 8;
    sub_1D0C149C4(a1, v17);
    v4 = a1[1];
    v9 = a1[5] + a1[4];
  }

  v13 = *&v4[8 * (v9 / 0x2A)] + 96 * (v9 % 0x2A);
  v14 = *(a2 + 16);
  *v13 = *a2;
  *(v13 + 16) = v14;
  *(v13 + 40) = 0;
  *(v13 + 48) = 0;
  *(v13 + 32) = 0;
  *(v13 + 32) = *(a2 + 32);
  *(v13 + 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(v13 + 56) = 0;
  *(v13 + 64) = 0;
  *(v13 + 72) = 0;
  result = *(a2 + 56);
  *(v13 + 56) = result;
  *(v13 + 72) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  v16 = *(a2 + 80);
  *(v13 + 85) = *(a2 + 85);
  *(v13 + 80) = v16;
  ++a1[5];
  return result;
}

void sub_1D0E5794C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  operator delete(v10);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1D0E5797C(void *a1)
{
  v2 = a1[5] + a1[4] - 1;
  sub_1D0E50EF8((*(a1[1] + 8 * (v2 / 0x2A)) + 96 * (v2 % 0x2A)));
  v3 = a1[2];
  v4 = v3 == a1[1];
  v5 = 42 * ((v3 - a1[1]) >> 3) - 1;
  v7 = a1[4];
  v6 = a1[5];
  a1[5] = v6 - 1;
  if (v4)
  {
    v5 = 0;
  }

  if ((v5 - (v6 + v7) - 83) <= 0xFFFFFFFFFFFFFFABLL)
  {
    operator delete(*(v3 - 8));
    a1[2] -= 8;
  }
}

uint64_t sub_1D0E57A2C(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 == v3)
  {
    v4 = (a1 + 40);
    v10 = *(a1 + 8);
  }

  else
  {
    v4 = (a1 + 40);
    v5 = *(a1 + 32);
    v6 = &v3[v5 / 0x2A];
    v7 = *v6 + 96 * (v5 % 0x2A);
    v8 = v3[(*(a1 + 40) + v5) / 0x2A] + 96 * ((*(a1 + 40) + v5) % 0x2A);
    if (v7 != v8)
    {
      do
      {
        sub_1D0E50EF8(v7);
        v7 += 96;
        if (v7 - *v6 == 4032)
        {
          v9 = v6[1];
          ++v6;
          v7 = v9;
        }
      }

      while (v7 != v8);
      v3 = *(a1 + 8);
      v2 = *(a1 + 16);
    }

    v10 = v2;
  }

  *v4 = 0;
  v11 = v10 - v3;
  if (v11 >= 3)
  {
    do
    {
      operator delete(*v3);
      v2 = *(a1 + 16);
      v3 = (*(a1 + 8) + 8);
      *(a1 + 8) = v3;
      v11 = v2 - v3;
    }

    while (v11 > 2);
    v10 = v2;
  }

  if (v11 == 1)
  {
    v12 = 21;
  }

  else
  {
    if (v11 != 2)
    {
      goto LABEL_17;
    }

    v12 = 42;
  }

  *(a1 + 32) = v12;
LABEL_17:
  if (v3 != v10)
  {
    do
    {
      v13 = *v3++;
      operator delete(v13);
    }

    while (v3 != v10);
    v10 = *(a1 + 8);
    v2 = *(a1 + 16);
  }

  if (v2 != v10)
  {
    *(a1 + 16) = v2 + ((v10 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1D0E57BAC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == 1)
  {
    sub_1D0E540D0(&__dst, *a1, *(a1 + 8), *(a1 + 8) - *a1);
  }

  else
  {
    __dst = 0;
    v20 = 0;
    v21 = 0;
  }

  if (*(a2 + 16) == 1)
  {
    sub_1D0E540D0(&v16, *a2, *(a2 + 8), *(a2 + 8) - *a2);
    v3 = HIBYTE(v18);
    v5 = v16;
    v4 = v17;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v3 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
  }

  v6 = SHIBYTE(v21);
  v7 = __dst;
  if (v21 >= 0)
  {
    v8 = HIBYTE(v21);
  }

  else
  {
    v8 = v20;
  }

  if (v21 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  if ((v3 & 0x80u) == 0)
  {
    v10 = v3;
  }

  else
  {
    v10 = v4;
  }

  if ((v3 & 0x80u) == 0)
  {
    v11 = &v16;
  }

  else
  {
    v11 = v5;
  }

  if (v10 >= v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = v10;
  }

  v13 = memcmp(p_dst, v11, v12);
  if ((v3 & 0x80) != 0)
  {
    operator delete(v5);
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_24;
    }
  }

  else if ((v6 & 0x80000000) == 0)
  {
    goto LABEL_24;
  }

  operator delete(v7);
LABEL_24:
  v14 = v10 < v8;
  if (v8 < v10)
  {
    v14 = -1;
  }

  if (v13)
  {
    return v13;
  }

  else
  {
    return v14;
  }
}

void sub_1D0E57CCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t swan::FixedLagSmoother::Initialize(uint64_t a1, char a2, uint64_t a3, uint64_t a4, unsigned int a5, double a6, double a7)
{
  for (i = 0; i != 112608; i += 1104)
  {
    v15 = a1 + i;
    *(v15 + 8) = xmmword_1D0E7F320;
    *(v15 + 336) = xmmword_1D0E84530;
    *(a1 + i + 424) = xmmword_1D0E7F320;
    *(v15 + 752) = xmmword_1D0E7F320;
    sub_1D0BBBC00(a1 + i, 0.0);
    sub_1D0BBBC00(a1 + i + 328, 0.0);
    sub_1D0BBBC00(a1 + i + 416, 0.0);
    sub_1D0BBBC00(a1 + i + 744, 0.0);
    *(v15 + 1072) = 0;
    *(v15 + 1080) = 0;
    *(v15 + 1088) = 0x7FF0000000000000;
    *(v15 + 1096) = 0;
    *(v15 + 1100) = 0;
  }

  sub_1D0B894B0(a1 + 328, a3);
  sub_1D0B894B0(a1 + 416, a4);
  sub_1D0B894B0(a1 + 744, a1 + 416);
  *(a1 + 1072) = a6;
  *(a1 + 1080) = a2;
  if (a5 >= 0x64)
  {
    v16 = 100;
  }

  else
  {
    v16 = a5;
  }

  *(a1 + 1100) = v16;
  *(a1 + 1088) = a7;
  sub_1D0BBBC00(a1, 0.0);
  sub_1D0BBBC00(a1 + 113272, 0.0);
  sub_1D0BBBC00(a1 + 112616, 0.0);
  *(a1 + 1096) = 1;
  sub_1D0B894B0(a1 + 1104, a1);
  sub_1D0B894B0(a1 + 1432, a1 + 328);
  sub_1D0B894B0(a1 + 1520, a1 + 416);
  sub_1D0B894B0(a1 + 1848, a1 + 744);
  *(a1 + 2176) = *(a1 + 1072);
  *(a1 + 2192) = *(a1 + 1088);
  *(a1 + 112608) = 1;
  return 0;
}

uint64_t swan::FixedLagSmoother::Update(uint64_t a1, char a2, uint64_t a3, uint64_t a4, int a5, double a6, double a7, double a8)
{
  v178 = *MEMORY[0x1E69E9840];
  if ((atomic_load_explicit(&qword_1EE055078, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE055078))
  {
    sub_1D0E59168();
    __cxa_atexit(sub_1D0D2D710, &qword_1EE055088, &dword_1D0B71000);
    __cxa_guard_release(&qword_1EE055078);
  }

  if ((atomic_load_explicit(&qword_1EE055080, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE055080))
  {
    sub_1D0D8CCB0(&qword_1EE055088, &unk_1EE0551D0);
    __cxa_atexit(sub_1D0D2D710, &unk_1EE0551D0, &dword_1D0B71000);
    __cxa_guard_release(&qword_1EE055080);
  }

  v154 = 0x600000006;
  v152 = &unk_1F4CDF278;
  v155 = &v156;
  v153 = xmmword_1D0E7F320;
  v157 = 0u;
  v158 = 0u;
  v159 = 0u;
  v160 = 0u;
  v161 = 0u;
  v162 = 0u;
  v163 = 0u;
  v164 = 0u;
  v165 = 0u;
  v166 = 0u;
  v167 = 0u;
  v168 = 0u;
  v169 = 0u;
  v170 = 0u;
  v171 = 0u;
  v172 = 0u;
  v173 = 0u;
  v129 = 0x600000006;
  v127 = &unk_1F4CDF278;
  v130 = &v131;
  v128 = xmmword_1D0E7F320;
  v132 = 0u;
  v133 = 0u;
  v134 = 0u;
  v135 = 0u;
  v136 = 0u;
  v137 = 0u;
  v138 = 0;
  v140 = 0u;
  v141 = 0u;
  v142 = 0u;
  v143 = 0u;
  v144 = 0u;
  v145 = 0u;
  v146 = 0;
  v148 = 0u;
  v149 = 0u;
  v150 = 0u;
  v131 = 0x3FF0000000000000;
  *&v135 = 0x3FF0000000000000;
  v139 = 0x3FF0000000000000;
  *&v143 = 0x3FF0000000000000;
  v147 = 0x3FF0000000000000;
  v151 = 0x3FF0000000000000;
  *(&v141 + 1) = a6 - *(a1 + 2176);
  *&v145 = *(&v141 + 1);
  *(&v149 + 1) = *(&v141 + 1);
  v15 = fabs(*(&v141 + 1) * 0.5);
  v16 = a7 * a7 * (*(&v141 + 1) * *(&v141 + 1));
  *&v167 = v16;
  *(&v165 + 1) = v16 * v15;
  *&v158 = v16 * v15;
  v156 = v15 * (v16 * v15);
  *(&v170 + 1) = v16;
  *&v169 = v16 * v15;
  *&v160 = v156;
  *(&v161 + 1) = v16 * v15;
  v17 = a8 * a8 * (*(&v141 + 1) * *(&v141 + 1));
  v174 = v17;
  *(&v172 + 1) = v15 * v17;
  *&v165 = v15 * v17;
  *(&v163 + 1) = v15 * (v15 * v17);
  v121 = 0;
  v124 = 0x300000003;
  v123 = xmmword_1D0E76C10;
  v122 = &unk_1F4CD5DD0;
  v125 = &v126;
  v120 = &unk_1F4CD5D50;
  v18 = *(a1 + 1464);
  v176 = *v18;
  v177 = *(v18 + 16);
  cnnavigation::ECEFToENU(&v176, 1, 0, &v176, 1, v175, &v120);
  v117 = 0x300000003;
  v116 = xmmword_1D0E76C10;
  v19 = v119;
  v115 = &unk_1F4CD5DD0;
  v118 = v119;
  if (v121 == 1)
  {
    sub_1D0B894B0(&v115, &v122);
    v19 = v118;
    v20 = HIDWORD(v116);
  }

  else
  {
    v20 = 3;
  }

  v21 = 0;
  v95 = 0x600000006;
  v22 = &v97;
  v93 = &unk_1F4CDF278;
  v96 = &v97;
  v94 = xmmword_1D0E7F320;
  v111 = 0u;
  v112 = 0u;
  v113 = 0u;
  v114 = 0u;
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  v105 = 0u;
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  *&v97 = *v19;
  v23 = &v19[v20];
  *&v100 = *v23;
  v24 = &v19[2 * v20];
  *&v103 = *v24;
  *(&v97 + 1) = v19[1];
  *(&v100 + 1) = v23[1];
  v25 = (2 * v20) | 1;
  *(&v103 + 1) = v19[v25];
  *&v98 = v19[2];
  *&v101 = v23[2];
  *&v104 = v24[2];
  *(&v107 + 1) = *v19;
  *(&v110 + 1) = *v23;
  *(&v113 + 1) = *v24;
  *&v108 = v19[1];
  *&v111 = v23[1];
  *&v114 = v19[v25];
  *(&v108 + 1) = v19[2];
  *(&v111 + 1) = v23[2];
  *(&v114 + 1) = v24[2];
  v80 = 0x600000006;
  v78 = &unk_1F4CDF278;
  v81 = v82;
  v79 = xmmword_1D0E7F320;
  v26 = 40;
  do
  {
    v27 = 0;
    v28 = v26;
    do
    {
      *(&v78 + v28) = *(v22 + v27);
      v27 += 8;
      v28 += 48;
    }

    while (v27 != 48);
    ++v21;
    v26 += 8;
    v22 += 3;
  }

  while (v21 != 6);
  v85 = 0x600000006;
  v84 = xmmword_1D0E7F320;
  v83 = &unk_1F4CDF278;
  v86 = v87;
  sub_1D0B89390(&v78, &v152, &v83);
  v90 = 0x600000006;
  v89 = xmmword_1D0E7F320;
  v88 = &unk_1F4CDF278;
  v91 = v92;
  sub_1D0B89390(&v83, &v93, &v88);
  sub_1D0B894B0(a1 + 112944, &v88);
  v90 = 0x600000006;
  v89 = xmmword_1D0E7F320;
  v88 = &unk_1F4CDF278;
  v91 = v92;
  sub_1D0B89390(&v127, a1 + 112616, &v88);
  sub_1D0B894B0(a1, &v88);
  v80 = 0x600000006;
  v79 = xmmword_1D0E7F320;
  v78 = &unk_1F4CDF278;
  v81 = v82;
  sub_1D0B89390(a1, &qword_1EE055088, &v78);
  v85 = 0x600000006;
  v84 = xmmword_1D0E7F320;
  v83 = &unk_1F4CDF278;
  v86 = v87;
  sub_1D0BA5A78(&v127, &v78, &v83);
  v29 = DWORD1(v84);
  v30 = v84;
  v90 = 0x600000006;
  v88 = &unk_1F4CDF278;
  v91 = v92;
  *&v89 = __PAIR64__(v84, DWORD1(v84));
  DWORD2(v89) = v84 * DWORD1(v84);
  HIDWORD(v89) = DWORD1(v84);
  if (DWORD1(v84))
  {
    v31 = 0;
    v32 = 0;
    v33 = HIDWORD(v84);
    v34 = v86;
    do
    {
      v35 = v31;
      v36 = v32;
      for (i = v30; i; --i)
      {
        v92[v36] = *&v34[8 * v35];
        v36 += v29;
        ++v35;
      }

      ++v32;
      v31 += v33;
    }

    while (v32 != v29);
  }

  v51 = a2;
  v38 = a1 + 110816;
  v39 = -101;
  v40 = xmmword_1D0E7F320;
  do
  {
    if (*(v38 + 680) == 1)
    {
      v85 = 0x600000006;
      v84 = v40;
      v83 = &unk_1F4CDF278;
      v86 = v87;
      sub_1D0B89390(v38, &v88, &v83);
      sub_1D0B894B0(v38 + 1104, &v83);
      v40 = xmmword_1D0E7F320;
    }

    v38 -= 1104;
  }

  while (!__CFADD__(v39++, 1));
  v80 = 0x100000006;
  v79 = xmmword_1D0E84530;
  v78 = &unk_1F4CE0BF8;
  v81 = v82;
  sub_1D0B89390(&v127, a1 + 328, &v78);
  v75 = 0x100000006;
  v74 = xmmword_1D0E84530;
  v73 = &unk_1F4CE0BF8;
  v76 = v77;
  sub_1D0B89390(a1, a1 + 113272, &v73);
  v85 = 0x100000006;
  v84 = xmmword_1D0E84530;
  v83 = &unk_1F4CE0BF8;
  v86 = v87;
  sub_1D0B88838(&v78, &v73, &v83);
  sub_1D0B894B0(a1 + 328, &v83);
  v75 = 0x600000006;
  v74 = xmmword_1D0E7F320;
  v73 = &unk_1F4CDF278;
  v76 = v77;
  sub_1D0B89390(&v127, a1 + 416, &v73);
  v80 = 0x600000006;
  v79 = xmmword_1D0E7F320;
  v78 = &unk_1F4CDF278;
  v81 = v82;
  sub_1D0B89390(&v73, &v88, &v78);
  v85 = 0x600000006;
  v84 = xmmword_1D0E7F320;
  v83 = &unk_1F4CDF278;
  v86 = v87;
  sub_1D0B88838(&v78, a1 + 112944, &v83);
  sub_1D0B894B0(a1 + 416, &v83);
  sub_1D0B894B0(a1 + 744, a1 + 416);
  *(a1 + 1096) = 1;
  *(a1 + 1100) = a5;
  *(a1 + 1072) = a6;
  v75 = 0x600000006;
  v74 = xmmword_1D0E7F320;
  v73 = &unk_1F4CDF278;
  v76 = v77;
  sub_1D0B89390(&qword_1EE055088, a1 + 416, &v73);
  v80 = 0x600000006;
  v79 = xmmword_1D0E7F320;
  v78 = &unk_1F4CDF278;
  v81 = v82;
  sub_1D0B89390(&v73, &unk_1EE0551D0, &v78);
  v85 = 0x600000006;
  v84 = xmmword_1D0E7F320;
  v83 = &unk_1F4CDF278;
  v86 = v87;
  sub_1D0B88838(a4, &v78, &v83);
  v75 = 0x600000006;
  v74 = xmmword_1D0E7F320;
  v73 = &unk_1F4CDF278;
  v76 = v77;
  v65 = 0x100000006;
  v64 = xmmword_1D0E84530;
  v63 = &unk_1F4CE1400;
  v66 = v67;
  v60 = 0x100000006;
  v58 = &unk_1F4CE1400;
  v59 = xmmword_1D0E84530;
  v61 = v62;
  v70 = 0x100000018;
  v69 = xmmword_1D0E84770;
  v68 = &unk_1F4CE2408;
  v71 = v72;
  v42 = sub_1D0BA5174(&v83, &v63, &v58, &v68, &v73);
  v80 = 0x600000006;
  v79 = xmmword_1D0E7F320;
  v78 = &unk_1F4CDF278;
  v81 = v82;
  sub_1D0B89390(&unk_1EE0551D0, &v73, &v78);
  if (v42 <= 100000000.0)
  {
    v75 = 0x600000006;
    v74 = xmmword_1D0E7F320;
    v73 = &unk_1F4CDF278;
    v76 = v77;
    sub_1D0B89390(a1 + 416, &v78, &v73);
    sub_1D0B894B0(a1 + 112616, &v73);
    v70 = 0x100000006;
    v69 = xmmword_1D0E84530;
    v68 = &unk_1F4CE0BF8;
    v71 = v72;
    sub_1D0B89390(&qword_1EE055088, a1 + 328, &v68);
    v75 = 0x100000006;
    v74 = xmmword_1D0E84530;
    v73 = &unk_1F4CE0BF8;
    v76 = v77;
    sub_1D0BA5A78(a3, &v68, &v73);
    sub_1D0B894B0(a1 + 113272, &v73);
    v44 = a1 + 110728;
    for (j = 102; j >= 3; --j)
    {
      if (*(v44 + 768) == 1)
      {
        *(v44 + 1848) = *(v44 + 744);
        *(v44 + 1856) = *(v44 + 752);
        *(v44 + 1864) = *(v44 + 760);
        *(v44 + 1876) = *(v44 + 772);
        v75 = 0x600000006;
        v74 = xmmword_1D0E7F320;
        v73 = &unk_1F4CDF278;
        v76 = v77;
        sub_1D0B89390(v44 + 88, &v78, &v73);
        sub_1D0B894B0(v44 + 776, &v73);
        v65 = 0x600000006;
        v64 = xmmword_1D0E7F320;
        v63 = &unk_1F4CDF278;
        v66 = v67;
        sub_1D0B89390(v44 + 88, &unk_1EE0551D0, &v63);
        v46 = *(v44 + 788);
        v47 = *(v44 + 784);
        v60 = 0x600000006;
        v58 = &unk_1F4CDF278;
        *&v59 = __PAIR64__(v47, v46);
        DWORD2(v59) = v47 * v46;
        HIDWORD(v59) = v46;
        v61 = v62;
        sub_1D0BD2018(v44 + 776, &v58);
        v70 = 0x600000006;
        v69 = xmmword_1D0E7F320;
        v68 = &unk_1F4CDF278;
        v71 = v72;
        sub_1D0B89390(&v63, &v58, &v68);
        v75 = 0x600000006;
        v74 = xmmword_1D0E7F320;
        v73 = &unk_1F4CDF278;
        v76 = v77;
        sub_1D0BA5A78(v44 + 416, &v68, &v73);
        sub_1D0B894B0(v44 + 1520, &v73);
        LOBYTE(v63) = 0;
        v55 = 0x600000006;
        v53 = &unk_1F4CDF278;
        v54 = xmmword_1D0E7F320;
        v56 = &v57;
        sub_1D0B9F748(v44 + 1520, &v53, &v63);
        v53 = &unk_1F4CD5E28;
        if (!v63)
        {
          goto LABEL_21;
        }

        v70 = 0x100000006;
        v69 = xmmword_1D0E84530;
        v68 = &unk_1F4CE0BF8;
        v71 = v72;
        sub_1D0B89390(v44 + 776, a1 + 113272, &v68);
        v75 = 0x100000006;
        v74 = xmmword_1D0E84530;
        v73 = &unk_1F4CE0BF8;
        v76 = v77;
        sub_1D0B88838(v44, &v68, &v73);
        sub_1D0B894B0(v44 + 1104, &v73);
        *(v44 + 1872) = 1;
      }

      v44 -= 1104;
    }

    *(a1 + 2176) = a6;
    *(a1 + 2184) = v51;
    *(a1 + 2192) = a7;
    *(a1 + 2204) = a5;
    v75 = 0x600000006;
    v74 = xmmword_1D0E7F320;
    v73 = &unk_1F4CDF278;
    v76 = v77;
    sub_1D0B89390(a1 + 416, &v78, &v73);
    sub_1D0B894B0(a1 + 1104, &v73);
    v65 = 0x600000006;
    v64 = xmmword_1D0E7F320;
    v63 = &unk_1F4CDF278;
    v66 = v67;
    sub_1D0B89390(a1 + 416, &unk_1EE0551D0, &v63);
    v48 = *(a1 + 1116);
    v49 = *(a1 + 1112);
    v60 = 0x600000006;
    v58 = &unk_1F4CDF278;
    *&v59 = __PAIR64__(v49, v48);
    DWORD2(v59) = v49 * v48;
    HIDWORD(v59) = v48;
    v61 = v62;
    sub_1D0BD2018(a1 + 1104, &v58);
    v70 = 0x600000006;
    v69 = xmmword_1D0E7F320;
    v68 = &unk_1F4CDF278;
    v71 = v72;
    sub_1D0B89390(&v63, &v58, &v68);
    v75 = 0x600000006;
    v74 = xmmword_1D0E7F320;
    v73 = &unk_1F4CDF278;
    v76 = v77;
    sub_1D0BA5A78(a1 + 744, &v68, &v73);
    sub_1D0B894B0(a1 + 1848, &v73);
    v70 = 0x100000006;
    v69 = xmmword_1D0E84530;
    v68 = &unk_1F4CE0BF8;
    v71 = v72;
    sub_1D0B89390(a1 + 1104, a1 + 113272, &v68);
    v75 = 0x100000006;
    v74 = xmmword_1D0E84530;
    v73 = &unk_1F4CE0BF8;
    v76 = v77;
    sub_1D0B88838(a1 + 328, &v68, &v73);
    sub_1D0B894B0(a1 + 1432, &v73);
    result = 0;
    *(a1 + 2200) = 1;
  }

  else
  {
LABEL_21:
    result = 0xFFFFFFFFLL;
  }

  v50 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D0E59168()
{
  qword_1EE0550A0 = 0x600000006;
  qword_1EE055088 = &unk_1F4CDF278;
  qword_1EE0550A8 = &unk_1EE0550B0;
  unk_1EE055090 = xmmword_1D0E7F320;
  result = sub_1D0BBBC00(&qword_1EE055088, 0.0);
  v1 = 0;
  v2 = dword_1EE05509C + 1;
  v3 = qword_1EE0550A8;
  v4 = 6;
  do
  {
    *(v3 + 8 * v1) = 0x3FF0000000000000;
    v1 += v2;
    --v4;
  }

  while (v4);
  return result;
}

uint64_t swan::FixedLagSmoother::ExtractOutput(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t *a5, uint64_t *a6, int a7)
{
  v12 = *a5;
  v11 = a5[1];
  if (v11 != *a5)
  {
    v13 = v11 - 88;
    v14 = (v11 - 88);
    v15 = (v11 - 88);
    do
    {
      v16 = *v15;
      v15 -= 11;
      (*v16)(v14);
      v13 -= 88;
      v26 = v14 == v12;
      v14 = v15;
    }

    while (!v26);
  }

  a5[1] = v12;
  v18 = *a6;
  v17 = a6[1];
  if (v17 != *a6)
  {
    v19 = v17 - 328;
    v20 = (v17 - 328);
    do
    {
      (**v20)(v20);
      v19 -= 328;
      v26 = v20 == v18;
      v20 -= 41;
    }

    while (!v26);
  }

  a6[1] = v18;
  *(a4 + 8) = *a4;
  *(a2 + 8) = *a2;
  v21 = 102;
  v22 = 101;
  a3[1] = *a3;
  v76 = a7;
  v77 = a3;
  v23 = a1;
  do
  {
    while (1)
    {
      v24 = v23 + 1104 * v22;
      v25 = *(v24 + 1096);
      if (v25 == 1)
      {
        v26 = v21 - 2 < *(v24 + 1100) && a7 == 0;
        if (!v26)
        {
          break;
        }
      }

      if ((v25 & 1) == 0)
      {
        v21 = v22--;
        if (v22)
        {
          continue;
        }
      }

      return 0;
    }

    sub_1D0C4E0E8(a2, (v24 + 1072));
    v28 = a3[1];
    v27 = a3[2];
    if (v28 >= v27)
    {
      v30 = *a3;
      v31 = &v28[-*a3];
      v32 = (v31 + 1);
      if ((v31 + 1) < 0)
      {
        sub_1D0C5663C();
      }

      v33 = v27 - v30;
      if (2 * v33 > v32)
      {
        v32 = 2 * v33;
      }

      if (v33 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v34 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v34 = v32;
      }

      if (v34)
      {
        operator new();
      }

      v35 = &v28[-*a3];
      a3 = v77;
      v36 = &v31[v30 - v28];
      *v31 = *(v24 + 1080);
      v29 = v31 + 1;
      memcpy(v36, v30, v35);
      *v77 = v36;
      v77[1] = v31 + 1;
      v77[2] = 0;
      if (v30)
      {
        operator delete(v30);
      }
    }

    else
    {
      *v28 = *(v24 + 1080);
      v29 = v28 + 1;
    }

    a3[1] = v29;
    sub_1D0C4E0E8(a4, (v24 + 1088));
    v38 = a5[1];
    v37 = a5[2];
    if (v38 >= v37)
    {
      v40 = 0x2E8BA2E8BA2E8BA3 * ((v38 - *a5) >> 3);
      v41 = v40 + 1;
      if ((v40 + 1) > 0x2E8BA2E8BA2E8BALL)
      {
        sub_1D0C5663C();
      }

      v42 = 0x2E8BA2E8BA2E8BA3 * ((v37 - *a5) >> 3);
      if (2 * v42 > v41)
      {
        v41 = 2 * v42;
      }

      if (v42 >= 0x1745D1745D1745DLL)
      {
        v43 = 0x2E8BA2E8BA2E8BALL;
      }

      else
      {
        v43 = v41;
      }

      v85 = a5;
      if (v43)
      {
        sub_1D0E59A58(a5, v43);
      }

      v81 = 0;
      v82 = 88 * v40;
      v83 = 88 * v40;
      v84 = 0;
      sub_1D0E59910(88 * v40, v24 + 328);
      v45 = *a5;
      v44 = a5[1];
      v46 = v82 - (v44 - *a5);
      v39 = v83 + 88;
      v83 += 88;
      v74 = v46;
      if (v44 != v45)
      {
        v47 = 0;
        v48 = v82 - 8 * (v44 - v45) - 88;
        v49 = v45;
        v50 = v46;
        do
        {
          v51 = sub_1D0E59910(v50, v49);
          v49 += 88;
          v50 += 88;
          v47 -= 88;
          v48 += 88;
        }

        while (v49 != v44);
        v52 = v45;
        v53 = v45;
        a3 = v77;
        do
        {
          v54 = *v53;
          v53 += 11;
          (*v54)(v45, v51);
          v52 += 11;
          v45 = v53;
        }

        while (v53 != v44);
        v45 = *a5;
        v39 = v83;
      }

      *a5 = v74;
      a5[1] = v39;
      v55 = a5[2];
      a5[2] = v84;
      v83 = v45;
      v84 = v55;
      v81 = v45;
      v82 = v45;
      sub_1D0E59AB4(&v81);
      a7 = v76;
    }

    else
    {
      sub_1D0E59910(a5[1], v24 + 328);
      v39 = v38 + 88;
      a5[1] = v38 + 88;
    }

    a5[1] = v39;
    v57 = a6[1];
    v56 = a6[2];
    if (v57 >= v56)
    {
      v59 = 0x8F9C18F9C18F9C19 * ((v57 - *a6) >> 3);
      v60 = v59 + 1;
      if (v59 + 1 > 0xC7CE0C7CE0C7CELL)
      {
        sub_1D0C5663C();
      }

      v61 = 0x8F9C18F9C18F9C19 * ((v56 - *a6) >> 3);
      if (2 * v61 > v60)
      {
        v60 = 2 * v61;
      }

      if (v61 >= 0x63E7063E7063E7)
      {
        v62 = 0xC7CE0C7CE0C7CELL;
      }

      else
      {
        v62 = v60;
      }

      v85 = a6;
      if (v62)
      {
        sub_1D0E59B20(a6, v62);
      }

      v81 = 0;
      v82 = 328 * v59;
      v83 = 328 * v59;
      v84 = 0;
      sub_1D0B9F484(328 * v59, v24 + 744);
      v64 = *a6;
      v63 = a6[1];
      v65 = v82 - (v63 - *a6);
      v58 = v83 + 328;
      v83 += 328;
      if (v63 != v64)
      {
        v66 = 0;
        v67 = v82 - 8 * (v63 - v64) - 328;
        v68 = v64;
        v75 = v65;
        v69 = v65;
        do
        {
          v70 = sub_1D0B9F484(v69, v68);
          v68 += 328;
          v69 += 328;
          v66 -= 328;
          v67 += 328;
        }

        while (v68 != v63);
        v71 = v64;
        a3 = v77;
        do
        {
          (**v64)(v64, v70);
          v64 += 41;
          v71 += 41;
        }

        while (v64 != v63);
        v64 = *a6;
        v58 = v83;
        v65 = v75;
      }

      *a6 = v65;
      a6[1] = v58;
      v72 = a6[2];
      a6[2] = v84;
      v83 = v64;
      v84 = v72;
      v81 = v64;
      v82 = v64;
      sub_1D0E59B7C(&v81);
      a7 = v76;
    }

    else
    {
      sub_1D0B9F484(a6[1], v24 + 744);
      v58 = v57 + 328;
      a6[1] = v57 + 328;
    }

    a6[1] = v58;
    *(v24 + 1096) = 0;
    v21 = v22--;
    v23 = a1;
  }

  while (v22);
  return 0;
}

void sub_1D0E59844(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_1D0E59B7C(va);
  _Unwind_Resume(a1);
}

__n128 sub_1D0E59910(uint64_t a1, uint64_t a2)
{
  result.n128_u64[0] = 0x100000006;
  *(a1 + 24) = 0x100000006;
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F4CE0BF8;
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
  if (v4 > 6)
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

void sub_1D0E59A58(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2E8BA2E8BA2E8BBLL)
  {
    operator new();
  }

  sub_1D0C54BE8();
}

uint64_t sub_1D0E59AB4(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 88);
    *(a1 + 16) = i - 88;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1D0E59B20(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xC7CE0C7CE0C7CFLL)
  {
    operator new();
  }

  sub_1D0C54BE8();
}

uint64_t sub_1D0E59B7C(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 328;
    (**(i - 328))();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t swan::RouteSmoother::ConfigureFromFile(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    a2 = *a2;
  }

  if (sub_1D0E44934(a1, a2, 0))
  {
    return -(*(a1 + 296) ^ 1);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t swan::RouteSmoother::Configure(uint64_t a1, uint64_t a2)
{
  std::string::operator=((a1 + 8), (a2 + 8));
  *(a1 + 32) = *(a2 + 32);
  std::string::operator=((a1 + 40), (a2 + 40));
  v4 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v4;
  v6 = *(a2 + 112);
  v5 = *(a2 + 128);
  v7 = *(a2 + 96);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v6;
  *(a1 + 128) = v5;
  *(a1 + 96) = v7;
  v39 = a2;
  v40 = a1;
  if (a1 == a2)
  {
    goto LABEL_63;
  }

  i = a1;
  v9 = *(a2 + 152);
  v10 = (a2 + 160);
  if (*(a1 + 168))
  {
    v12 = (a1 + 160);
    v11 = *(v40 + 160);
    v13 = *(v40 + 152);
    *(v40 + 152) = v40 + 160;
    *(v11 + 16) = 0;
    *(v40 + 160) = 0;
    *(v40 + 168) = 0;
    if (*(v13 + 8))
    {
      v14 = *(v13 + 8);
    }

    else
    {
      v14 = v13;
    }

    if (v14)
    {
      v15 = sub_1D0E5BFA0(v14);
      if (v9 == v10)
      {
        v17 = v14;
      }

      else
      {
        v16 = v9;
        do
        {
          v17 = v15;
          v18 = *(v16 + 28);
          *(v14 + 28) = v18;
          *(v14 + 32) = *(v16 + 8);
          v19 = *v12;
          v20 = v12;
          v21 = v12;
          if (*v12)
          {
            do
            {
              while (1)
              {
                v20 = v19;
                if (v18 >= *(v19 + 28))
                {
                  break;
                }

                v19 = *v19;
                v21 = v20;
                if (!*v20)
                {
                  goto LABEL_15;
                }
              }

              v19 = v19[1];
            }

            while (v19);
            v21 = v20 + 1;
          }

LABEL_15:
          sub_1D0D4B7BC((v40 + 152), v20, v21, v14);
          if (v15)
          {
            v15 = sub_1D0E5BFA0(v15);
          }

          else
          {
            v15 = 0;
          }

          v22 = v16[1];
          if (v22)
          {
            do
            {
              v9 = v22;
              v22 = *v22;
            }

            while (v22);
          }

          else
          {
            do
            {
              v9 = v16[2];
              v23 = *v9 == v16;
              v16 = v9;
            }

            while (!v23);
          }

          if (!v17)
          {
            break;
          }

          v14 = v17;
          v16 = v9;
        }

        while (v9 != v10);
      }

      sub_1D0B99218(v17);
      if (v15)
      {
        v24 = v15[2];
        for (i = v40; v24; v24 = v24[2])
        {
          v15 = v24;
        }

        sub_1D0B99218(v15);
        goto LABEL_33;
      }
    }

    else
    {
      sub_1D0B99218(0);
    }

    i = v40;
  }

LABEL_33:
  if (v9 != v10)
  {
    operator new();
  }

  sub_1D0E5BFF4((i + 176), *(v39 + 176), (v39 + 184));
  v25 = *(v39 + 200);
  v41 = (v39 + 208);
  if (*(i + 216))
  {
    v27 = (i + 208);
    v26 = *(i + 208);
    v28 = *(i + 200);
    *(i + 200) = i + 208;
    *(v26 + 16) = 0;
    *(i + 208) = 0;
    *(i + 216) = 0;
    if (v28[1])
    {
      v29 = v28[1];
    }

    else
    {
      v29 = v28;
    }

    v42 = i + 200;
    v43 = v29;
    v44 = v29;
    if (!v29 || (v43 = sub_1D0E5BFA0(v29), v25 == v41))
    {
      v34 = v25;
    }

    else
    {
      do
      {
        *(v29 + 32) = *(v25 + 32);
        if (v29 != v25)
        {
          sub_1D0E5BFF4(v29 + 5, v25[5], v25 + 6);
          v29 = v44;
        }

        v30 = *v27;
        v31 = (i + 208);
        v32 = (i + 208);
        if (*v27)
        {
          do
          {
            while (1)
            {
              v31 = v30;
              if (*(v29 + 32) >= *(v30 + 32))
              {
                break;
              }

              v30 = *v30;
              v32 = v31;
              if (!*v31)
              {
                goto LABEL_49;
              }
            }

            v30 = v30[1];
          }

          while (v30);
          v32 = v31 + 1;
        }

LABEL_49:
        sub_1D0D4B7BC((i + 200), v31, v32, v29);
        v29 = v43;
        v44 = v43;
        if (v43)
        {
          v43 = sub_1D0E5BFA0(v43);
        }

        v33 = v25[1];
        if (v33)
        {
          do
          {
            v34 = v33;
            v33 = *v33;
          }

          while (v33);
        }

        else
        {
          do
          {
            v34 = v25[2];
            v23 = *v34 == v25;
            v25 = v34;
          }

          while (!v23);
        }

        if (!v29)
        {
          break;
        }

        v25 = v34;
      }

      while (v34 != v41);
    }

    sub_1D0E5C250(&v42);
    v25 = v34;
  }

  if (v25 != v41)
  {
    operator new();
  }

LABEL_63:
  *(v40 + 224) = *(v39 + 224);
  v35 = *(v39 + 240);
  v36 = *(v39 + 256);
  v37 = *(v39 + 272);
  *(v40 + 281) = *(v39 + 281);
  *(v40 + 256) = v36;
  *(v40 + 272) = v37;
  *(v40 + 240) = v35;
  return 0;
}

void sub_1D0E5A26C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_1D0E5C250(va);
  _Unwind_Resume(a1);
}

uint64_t swan::RouteSmoother::RunPlayback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = 0;
  v38 = 0;
  v39 = 0;
  if (*(a1 + 63) < 0)
  {
    sub_1D0BC39B4(__dst, *(a1 + 40), *(a1 + 48));
  }

  else
  {
    *__dst = *(a1 + 40);
    v36 = *(a1 + 56);
  }

  v34 = 0;
  *__p = 0u;
  memset(v33, 0, sizeof(v33));
  if (swan::BatchLogParser::parseRavenFixIntoRouteSmootherEpoch(__p, __dst, &v37, a4) && swan::BatchLogParser::parseCLRSFixIntoRouteSmootherEpoch(__p, __dst, &v37, v6))
  {
LABEL_6:
    v7 = 0xFFFFFFFFLL;
    goto LABEL_27;
  }

  v8 = sub_1D0BCD7C4(MEMORY[0x1E69E5310], "Found ", 6);
  v9 = MEMORY[0x1D387E9E0](v8, 0x6DB6DB6DB6DB6DB7 * ((v38 - v37) >> 4));
  v10 = sub_1D0BCD7C4(v9, " epochs to smooth", 17);
  std::ios_base::getloc((v10 + *(*v10 - 24)));
  v11 = std::locale::use_facet(&v40, MEMORY[0x1E69E5318]);
  (v11->__vftable[2].~facet_0)(v11, 10);
  std::locale::~locale(&v40);
  std::ostream::put();
  std::ostream::flush();
  v31.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  v13 = v37;
  v12 = v38;
  if (v37 != v38)
  {
    do
    {
      v14 = *(a1 + 208);
      if (!v14)
      {
LABEL_15:
        operator new();
      }

      v15 = *(a1 + 224);
      while (1)
      {
        while (1)
        {
          v16 = v14;
          v17 = *(v14 + 32);
          if (v17 <= v15)
          {
            break;
          }

          v14 = *v16;
          if (!*v16)
          {
            goto LABEL_15;
          }
        }

        if (v17 >= v15)
        {
          break;
        }

        v14 = v16[1];
        if (!v14)
        {
          goto LABEL_15;
        }
      }

      v18 = v16[6];
      if (!v18)
      {
LABEL_23:
        operator new();
      }

      v19 = v13[104];
      while (1)
      {
        while (1)
        {
          v20 = v18;
          v21 = *(v18 + 32);
          if (v21 <= v19)
          {
            break;
          }

          v18 = *v20;
          if (!*v20)
          {
            goto LABEL_23;
          }
        }

        if (v21 >= v19)
        {
          break;
        }

        v18 = *(v20 + 1);
        if (!v18)
        {
          goto LABEL_23;
        }
      }

      if (swan::RouteSmoother::Update(a1, v13, v20 + 5, (a1 + 232), a2))
      {
        goto LABEL_6;
      }

      v13 += 112;
    }

    while (v13 != v12);
  }

  v7 = swan::RouteSmoother::Finish(a1, a2);
  rep = std::chrono::steady_clock::now().__d_.__rep_;
  v23 = sub_1D0BCD7C4(MEMORY[0x1E69E5310], "Elapsed time in milliseconds for entire smoother Run(): ", 56);
  v24 = MEMORY[0x1D387EA00](v23, (rep - v31.__d_.__rep_) / 1000000);
  v25 = sub_1D0BCD7C4(v24, " ms", 3);
  std::ios_base::getloc((v25 + *(*v25 - 24)));
  v26 = std::locale::use_facet(&v40, MEMORY[0x1E69E5318]);
  (v26->__vftable[2].~facet_0)(v26, 10);
  std::locale::~locale(&v40);
  std::ostream::put();
  std::ostream::flush();
  v27 = sub_1D0BCD7C4(MEMORY[0x1E69E5310], "retVal: ", 8);
  v28 = MEMORY[0x1D387E9C0](v27, v7);
  std::ios_base::getloc((v28 + *(*v28 - 24)));
  v29 = std::locale::use_facet(&v40, MEMORY[0x1E69E5318]);
  (v29->__vftable[2].~facet_0)(v29, 10);
  std::locale::~locale(&v40);
  std::ostream::put();
  std::ostream::flush();
LABEL_27:
  sub_1D0E48E44(v33 + 1);
  if (SBYTE7(v33[0]) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v36) < 0)
  {
    operator delete(__dst[0]);
  }

  if (v37)
  {
    v38 = v37;
    operator delete(v37);
  }

  return v7;
}

void sub_1D0E5A738(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t swan::RouteSmoother::Update(uint64_t a1, uint64_t a2, double *a3, double *a4, uint64_t a5)
{
  v62 = 0.0;
  v59 = 0x100000006;
  v57 = &unk_1F4CE0BF8;
  v60 = v61;
  v58 = xmmword_1D0E84530;
  memset(v61, 0, sizeof(v61));
  v54 = 0x600000006;
  v52 = &unk_1F4CDF278;
  v55 = v56;
  v53 = xmmword_1D0E7F320;
  memset(v56, 0, sizeof(v56));
  if (swan::RouteSmoother::ConvertRouteSmootherEpochToSmootherInput(a1, a2, &v62, &v57, &v52))
  {
    return 0xFFFFFFFFLL;
  }

  v10 = v62;
  v13 = *(a2 + 104);
  v11 = a2 + 104;
  v12 = v13;
  v14 = *a3;
  if (*(a1 + 112912))
  {
    v15 = *a4;
    *&v34[0] = v11;
    v16 = sub_1D0E5C474(a1 + 152, v12);
    if (swan::FixedLagSmoother::Update(a1 + 304, v12, &v57, &v52, *(v16 + 8), v10, v14, v15))
    {
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    *&v34[0] = v11;
    v19 = sub_1D0E5C474(a1 + 152, v12);
    if (swan::FixedLagSmoother::Initialize(a1 + 304, v12, &v57, &v52, *(v19 + 8), v10, v14))
    {
      return 0xFFFFFFFFLL;
    }
  }

  v49 = 0;
  v50 = 0;
  v51 = 0;
  v46 = 0;
  v47 = 0;
  v48 = 0;
  __p = 0;
  v44 = 0;
  v45 = 0;
  v40 = 0;
  v41 = 0;
  v42 = 0;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v20 = swan::FixedLagSmoother::ExtractOutput(a1 + 304, &v49, &v46, &__p, &v40, &v37, 0);
  v21 = v50 - v49;
  if (v47 - v46 == (v50 - v49) >> 3 && v44 - __p == v21 && (v22 = v21 >> 3, 0x2E8BA2E8BA2E8BA3 * ((v41 - v40) >> 3) == v21 >> 3) && 0x8F9C18F9C18F9C19 * ((v38 - v37) >> 3) == v22)
  {
    if (v50 == v49)
    {
      v17 = 0;
    }

    else
    {
      v23 = 0;
      v24 = 0;
      v25 = 0;
      if (v22 <= 1)
      {
        v26 = 1;
      }

      else
      {
        v26 = v21 >> 3;
      }

      v27 = 1;
      __asm { FMOV            V0.2D, #-1.0 }

      v33 = _Q0;
      while (1)
      {
        v34[0] = xmmword_1D0EC1620;
        v34[1] = xmmword_1D0E87BD0;
        v34[2] = xmmword_1D0E87BD0;
        v34[3] = v33;
        v34[4] = v33;
        v34[5] = v33;
        v35 = 0xBFF0000000000000;
        v36 = 0;
        if (swan::RouteSmoother::ConvertSmootherOutputToRouteSmootherEpoch(*(v49 + v25), *(__p + v25), v20, *(v46 + v25), v40 + v23, v37 + v24, v34))
        {
          break;
        }

        sub_1D0E4DBC8(a5, v34);
        v17 = 0;
        v27 = ++v25 < v22;
        v24 += 328;
        v23 += 88;
        if (v26 == v25)
        {
          goto LABEL_20;
        }
      }

      v17 = (v27 << 31 >> 31);
    }
  }

  else
  {
    v17 = 0xFFFFFFFFLL;
  }

LABEL_20:
  *&v34[0] = &v37;
  sub_1D0E5C2F4(v34);
  *&v34[0] = &v40;
  sub_1D0E5C3B4(v34);
  if (__p)
  {
    v44 = __p;
    operator delete(__p);
  }

  if (v46)
  {
    v47 = v46;
    operator delete(v46);
  }

  if (v49)
  {
    v50 = v49;
    operator delete(v49);
  }

  return v17;
}

void sub_1D0E5AB70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42)
{
  a15 = &a29;
  sub_1D0E5C2F4(&a15);
  a15 = &a32;
  sub_1D0E5C3B4(&a15);
  if (__p)
  {
    a36 = __p;
    operator delete(__p);
  }

  if (a38)
  {
    a39 = a38;
    operator delete(a38);
  }

  if (a41)
  {
    a42 = a41;
    operator delete(a41);
  }

  _Unwind_Resume(a1);
}

uint64_t swan::RouteSmoother::Finish(uint64_t a1, uint64_t a2)
{
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v3 = swan::FixedLagSmoother::ExtractOutput(a1 + 304, &v34, &v31, &v28, &v25, &v22, 1);
  v4 = v35 - v34;
  if (v32 - v31 == v35 - v34 && v29 - v28 == v4 && (v5 = v4 >> 3, 0x2E8BA2E8BA2E8BA3 * ((v26 - v25) >> 3) == v4 >> 3) && 0x8F9C18F9C18F9C19 * ((v23 - v22) >> 3) == v5)
  {
    if (v35 == v34)
    {
      v16 = 0;
    }

    else
    {
      v6 = 0;
      v7 = 0;
      v8 = 0;
      if (v5 <= 1)
      {
        v9 = 1;
      }

      else
      {
        v9 = v4 >> 3;
      }

      v10 = 1;
      __asm { FMOV            V0.2D, #-1.0 }

      v18 = _Q0;
      while (1)
      {
        v19[0] = xmmword_1D0EC1620;
        v19[1] = xmmword_1D0E87BD0;
        v19[2] = xmmword_1D0E87BD0;
        v19[3] = v18;
        v19[4] = v18;
        v19[5] = v18;
        v20 = 0xBFF0000000000000;
        v21 = 0;
        if (swan::RouteSmoother::ConvertSmootherOutputToRouteSmootherEpoch(v34[v8], v28[v8], v3, v31[v8], v25 + v6, v22 + v7, v19))
        {
          break;
        }

        sub_1D0E4DBC8(a2, v19);
        v16 = 0;
        v10 = ++v8 < v5;
        v7 += 328;
        v6 += 88;
        if (v9 == v8)
        {
          goto LABEL_14;
        }
      }

      v16 = (v10 << 31 >> 31);
    }
  }

  else
  {
    v16 = 0xFFFFFFFFLL;
  }

LABEL_14:
  *&v19[0] = &v22;
  sub_1D0E5C2F4(v19);
  *&v19[0] = &v25;
  sub_1D0E5C3B4(v19);
  if (v28)
  {
    v29 = v28;
    operator delete(v28);
  }

  if (v31)
  {
    v32 = v31;
    operator delete(v31);
  }

  if (v34)
  {
    v35 = v34;
    operator delete(v34);
  }

  return v16;
}

void sub_1D0E5AE04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void **a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  a15 = &a30;
  sub_1D0E5C2F4(&a15);
  a15 = (v30 - 176);
  sub_1D0E5C3B4(&a15);
  v32 = *(v30 - 152);
  if (v32)
  {
    *(v30 - 144) = v32;
    operator delete(v32);
  }

  v33 = *(v30 - 128);
  if (v33)
  {
    *(v30 - 120) = v33;
    operator delete(v33);
  }

  v34 = *(v30 - 104);
  if (v34)
  {
    *(v30 - 96) = v34;
    operator delete(v34);
  }

  _Unwind_Resume(a1);
}

uint64_t swan::RouteSmoother::ConvertRouteSmootherEpochToSmootherInput(double *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  *a3 = *a2;
  v126 = vmulq_f64(*(a2 + 8), vdupq_n_s64(0x3F91DF46A2529D39uLL));
  v127 = *(a2 + 32);
  if (cnnavigation::LLAToECEF(v126.f64, 1, v128, 0, &v80))
  {
    return 0xFFFFFFFFLL;
  }

  *(a4 + 8) = xmmword_1D0E84530;
  v9 = *(a4 + 32);
  *v9 = v128[0];
  v9[1] = v128[1];
  v9[2] = v128[2];
  v10 = *(a2 + 64);
  v11 = *(a2 + 48);
  v12 = __sincos_stret(v11 * 0.0174532925);
  v13 = *(a2 + 56);
  v14 = v10 * v12.__sinval;
  if (v11 >= 0.0)
  {
    v15 = v10 * v12.__cosval;
  }

  else
  {
    v15 = 0.0;
  }

  if (v11 < 0.0)
  {
    v14 = 0.0;
  }

  *&v122 = v14;
  *(&v122 + 1) = v15;
  v17 = *(a2 + 72);
  v16 = *(a2 + 80);
  v123 = v16;
  v18 = a1[31];
  if ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || fabs(v16) > v18)
  {
    v19 = 1.0;
    if (v16 <= 0.0)
    {
      v19 = -1.0;
      if (v16 >= 0.0)
      {
        v19 = 0.0;
      }
    }

    v123 = v18 * v19;
  }

  v116 = 0;
  v119 = 0x300000003;
  v118 = xmmword_1D0E76C10;
  v117 = &unk_1F4CD5DD0;
  v120 = &v121;
  v115 = &unk_1F4CD5D90;
  if (cnnavigation::ENUToECEF(&v122, 1, 0, v128, 1, &v124, &v115))
  {
    return 0xFFFFFFFFLL;
  }

  v21 = *(a4 + 32);
  *(v21 + 24) = v124;
  *(v21 + 40) = v125;
  v107 = 0x300000003;
  v105 = &unk_1F4CD5DD0;
  v108 = &v109;
  v106 = xmmword_1D0E76C10;
  v110 = 0u;
  v111 = 0u;
  v112 = 0u;
  v113 = 0;
  v109 = *(a2 + 24) * *(a2 + 24) * 0.5;
  *(&v111 + 1) = v109;
  v114 = *(a2 + 40) * *(a2 + 40);
  v102 = 0x300000003;
  v101 = xmmword_1D0E76C10;
  v100 = &unk_1F4CD5DD0;
  v103 = &v104;
  sub_1D0BFE654(&v115, &v105, &v100);
  if ((atomic_load_explicit(&qword_1EE055318, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE055318))
  {
    v82 = 0x300000001;
    v80 = &unk_1F4CDF0C8;
    v83 = v84;
    v81 = xmmword_1D0E7F310;
    *&v84[0] = 0x100000000;
    LODWORD(v84[1]) = 2;
    sub_1D0D2CF48(&v80, &unk_1EE055348);
    __cxa_atexit(sub_1D0D26840, &unk_1EE055348, &dword_1D0B71000);
    __cxa_guard_release(&qword_1EE055318);
  }

  v82 = 0x600000006;
  v80 = &unk_1F4CDF278;
  v83 = v84;
  v81 = xmmword_1D0E7F320;
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  memset(v84, 0, sizeof(v84));
  memset(v85, 0, sizeof(v85));
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
  sub_1D0B894B0(a5, &v80);
  sub_1D0BADC74(&v80, a5, &unk_1EE055348, &unk_1EE055348);
  sub_1D0D2CFF0(&v80, &v100);
  v22 = v17 * v17;
  v23 = *(a2 + 88);
  v24 = sqrt(v17 * v17);
  v82 = 0x300000003;
  v80 = &unk_1F4CD5DD0;
  v83 = v84;
  v81 = xmmword_1D0E76C10;
  v51 = v23 * v23;
  memset(v84, 0, sizeof(v84));
  memset(v85, 0, sizeof(v85));
  *&v86 = 0;
  v25 = sqrt(v13 * 0.0174532925 * (v13 * 0.0174532925));
  sub_1D0B894B0(&v105, &v80);
  v26 = a1[36];
  if (v10 >= v24 * a1[35])
  {
    v27 = fabs(v13);
    v28 = fabs(v17);
    if (v25 < v26 && v13 >= 0.0 && v17 >= 0.0 && (*&v13 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && (*&v17 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
    {
      v82 = 0x300000003;
      v81 = xmmword_1D0E76C10;
      v80 = &unk_1F4CD5DD0;
      v83 = v84;
      v84[0] = v17 * v17;
      v85[0] = v13 * 0.0174532925 * (v13 * 0.0174532925);
      memset(&v84[1], 0, 24);
      memset(&v85[1], 0, 24);
      *&v86 = v51;
      v72 = 0x300000003;
      v70 = &unk_1F4CD5DD0;
      v73 = &v74;
      v71 = xmmword_1D0E76C10;
      v75 = 0;
      v77 = 0u;
      v78 = 0u;
      v74 = v12;
      v76 = v10 * v12.__cosval;
      *&v77 = -(v10 * v12.__sinval);
      v79 = 0x3FF0000000000000;
      v62 = 0x300000003;
      v60 = &unk_1F4CD5DD0;
      v61 = xmmword_1D0E76C10;
      v63 = &v64;
      sub_1D0B89390(&v70, &v80, &v60);
      v31 = DWORD1(v71);
      v32 = v71;
      v57 = 0x300000003;
      v52 = &unk_1F4CD5DD0;
      v58 = v59;
      v53 = DWORD1(v71);
      v54 = v71;
      v55 = v71 * DWORD1(v71);
      v56 = DWORD1(v71);
      if (DWORD1(v71))
      {
        v33 = 0;
        v34 = 0;
        v35 = HIDWORD(v71);
        v36 = v73;
        do
        {
          v37 = v33;
          v38 = v34;
          for (i = v32; i; --i)
          {
            v59[v38] = *(&v36->__sinval + v37);
            v38 += v31;
            ++v37;
          }

          ++v34;
          v33 += v35;
        }

        while (v34 != v31);
      }

      v67 = 0x300000003;
      v66 = xmmword_1D0E76C10;
      v65 = &unk_1F4CD5DD0;
      v68 = &v69;
      sub_1D0B89390(&v60, &v52, &v65);
      sub_1D0B894B0(&v105, &v65);
      goto LABEL_49;
    }
  }

  else
  {
    v27 = fabs(v13);
    v28 = fabs(v17);
  }

  if (v25 >= v26 || v13 < 0.0 || v17 < 0.0 || v27 == INFINITY || v28 == INFINITY)
  {
    v42 = *&v17 > -1 && ((*&v17 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || (*&v17 - 1) < 0xFFFFFFFFFFFFFLL || (*&v17 & 0x7FFFFFFFFFFFFFFFLL) == 0;
    v29 = v108;
    if (v42)
    {
      v43 = (v10 + v24 * 3.0) / 3.0;
    }

    else
    {
      v43 = a1[34];
    }

    v44 = v43 * v43;
    *v108 = v44;
    v30 = SHIDWORD(v106);
    v29[SHIDWORD(v106) + 1] = v44;
  }

  else
  {
    v29 = v108;
    *v108 = v22;
    v30 = SHIDWORD(v106);
    v29[SHIDWORD(v106) + 1] = v22;
  }

  v29[2 * v30 + 2] = v51;
LABEL_49:
  if ((atomic_load_explicit(&qword_1EE055328, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE055328))
  {
    *&qword_1EE055320 = a1[30] * a1[30];
    __cxa_guard_release(&qword_1EE055328);
  }

  v45 = v108;
  *v108 = *&qword_1EE055320 * *v108;
  v46 = SHIDWORD(v106);
  v47 = &v45[SHIDWORD(v106)];
  v47[1] = *&qword_1EE055320 * v47[1];
  v45[2 * v46 + 2] = *&qword_1EE055320 * v45[2 * v46 + 2];
  v48 = a1[32];
  if (v10 > v48 || hypot(v10, *(a2 + 80)) > v48)
  {
    v49 = a1[33] * a1[33];
    v50 = *v45;
    if (*v45 <= v49)
    {
      v50 = a1[33] * a1[33];
    }

    *v45 = v50;
    if (v47[1] > v49)
    {
      v49 = v47[1];
    }

    v47[1] = v49;
  }

  sub_1D0BFE654(&v115, &v105, &v100);
  if ((atomic_load_explicit(&qword_1EE055330, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1EE055330))
    {
      v82 = 0x300000001;
      v80 = &unk_1F4CDF0C8;
      v83 = v84;
      v81 = xmmword_1D0E7F310;
      *&v84[0] = 0x400000003;
      LODWORD(v84[1]) = 5;
      sub_1D0D2CF48(&v80, &unk_1EE055380);
      __cxa_atexit(sub_1D0D26840, &unk_1EE055380, &dword_1D0B71000);
      __cxa_guard_release(&qword_1EE055330);
    }
  }

  sub_1D0BADC74(&v80, a5, &unk_1EE055380, &unk_1EE055380);
  sub_1D0D2CFF0(&v80, &v100);
  return 0;
}

uint64_t swan::RouteSmoother::ConvertSmootherOutputToRouteSmootherEpoch(double a1, double a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *a7 = a1;
  v11 = *(a5 + 32);
  v87 = *v11;
  v88 = *(v11 + 16);
  if (cnnavigation::ECEFToLLA(&v87, 1, &v85, 0, &v78))
  {
    return 0xFFFFFFFFLL;
  }

  *(a7 + 8) = vmulq_f64(v85, vdupq_n_s64(0x404CA5DC1A63C1F8uLL));
  *(a7 + 32) = v86;
  v79 = 0;
  v82 = 0x300000003;
  v81 = xmmword_1D0E76C10;
  v80 = &unk_1F4CD5DD0;
  v83 = &v84;
  v78 = &unk_1F4CD5D50;
  v73 = *(v11 + 24);
  v74 = *(v11 + 40);
  if (cnnavigation::ECEFToENU(&v73, 1, 0, &v87, 1, &__x, &v78))
  {
    return 0xFFFFFFFFLL;
  }

  *(a7 + 64) = hypot(__x, __y);
  *(a7 + 80) = v77;
  v70 = 0x300000003;
  v69 = xmmword_1D0E76C10;
  v68 = &unk_1F4CD5DD0;
  v71 = &v72;
  v65 = 0x300000003;
  v64 = xmmword_1D0E76C10;
  v63 = &unk_1F4CD5DD0;
  v66 = &v67;
  if (v79 == 1)
  {
    sub_1D0B894B0(&v68, &v80);
  }

  if ((atomic_load_explicit(&qword_1EE055338, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE055338))
  {
    v59 = 0x300000001;
    v57 = &unk_1F4CDF0C8;
    v60 = &v61;
    v58 = xmmword_1D0E7F310;
    v61 = 0x100000000;
    v62 = 2;
    sub_1D0D2CF48(&v57, &unk_1EE0553B8);
    __cxa_atexit(sub_1D0D26840, &unk_1EE0553B8, &dword_1D0B71000);
    __cxa_guard_release(&qword_1EE055338);
  }

  sub_1D0D2D730(a6, &unk_1EE0553B8, &unk_1EE0553B8, v49);
  v54 = 0x300000003;
  v53 = xmmword_1D0E76C10;
  v52 = &unk_1F4CD5DD0;
  v55 = &v56;
  sub_1D0B89390(&v68, v49, &v52);
  v12 = DWORD1(v69);
  v13 = v69;
  v46 = 0x300000003;
  v41 = &unk_1F4CD5DD0;
  v47 = v48;
  v42 = DWORD1(v69);
  v43 = v69;
  v44 = v69 * DWORD1(v69);
  v45 = DWORD1(v69);
  if (DWORD1(v69))
  {
    v14 = 0;
    v15 = 0;
    v16 = HIDWORD(v69);
    v17 = v71;
    do
    {
      v18 = v14;
      v19 = v15;
      for (i = v13; i; --i)
      {
        v48[v19] = v17[v18];
        v19 += v12;
        ++v18;
      }

      ++v15;
      v14 += v16;
    }

    while (v15 != v12);
  }

  v59 = 0x300000003;
  v58 = xmmword_1D0E76C10;
  v57 = &unk_1F4CD5DD0;
  v60 = &v61;
  sub_1D0B89390(&v52, &v41, &v57);
  sub_1D0B894B0(&v63, &v57);
  v21 = v66;
  v22 = *v66;
  if (*v66 < 0.0)
  {
    return 0xFFFFFFFFLL;
  }

  v24 = SHIDWORD(v64);
  v25 = v66[SHIDWORD(v64) + 1];
  result = 0xFFFFFFFFLL;
  if ((*&v22 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && v25 >= 0.0 && (*&v66[SHIDWORD(v64) + 1] & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    *(a7 + 24) = sqrt(v22 + v25);
    v26 = v21[2 * v24 + 2];
    v27 = *&v26 <= -1 || ((*&v26 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF;
    v28 = v27 && (*&v26 - 1) >= 0xFFFFFFFFFFFFFLL;
    if (!v28 || (*&v26 & 0x7FFFFFFFFFFFFFFFLL) == 0)
    {
      *(a7 + 40) = sqrt(v26);
      if ((atomic_load_explicit(&qword_1EE055340, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE055340))
      {
        v59 = 0x300000001;
        v57 = &unk_1F4CDF0C8;
        v60 = &v61;
        v58 = xmmword_1D0E7F310;
        v61 = 0x400000003;
        v62 = 5;
        sub_1D0D2CF48(&v57, &unk_1EE0553F0);
        __cxa_atexit(sub_1D0D26840, &unk_1EE0553F0, &dword_1D0B71000);
        __cxa_guard_release(&qword_1EE055340);
      }

      sub_1D0D2D730(a6, &unk_1EE0553F0, &unk_1EE0553F0, v49);
      sub_1D0C1B688(&v68, v49, &v52);
      sub_1D0C1B708(&v68, &v41);
      sub_1D0C1B688(&v52, &v41, &v57);
      sub_1D0B894B0(&v63, &v57);
      if (*v66 < 0.0)
      {
        return 0xFFFFFFFFLL;
      }

      result = 0xFFFFFFFFLL;
      if ((*v66 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && v66[SHIDWORD(v64) + 1] >= 0.0 && (*&v66[SHIDWORD(v64) + 1] & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
      {
        v30 = atan2(__x, __y);
        v31 = fmod(v30 * 57.2957795 + 360.0, 360.0);
        *(a7 + 48) = v31;
        v32 = *(a7 + 64);
        sub_1D0BFA9C4(3, 3, &v57);
        v33 = __sincos_stret(v31 * 0.0174532925);
        v34 = v60;
        *v60 = v33.__sinval;
        v35 = SHIDWORD(v58);
        v36 = &v34[SHIDWORD(v58)];
        *v36 = v32 * v33.__cosval;
        v34[1] = v33.__cosval;
        v36[1] = -(v32 * v33.__sinval);
        v34[2 * v35 + 2] = 1.0;
        sub_1D0D4C398(&v57, &v52);
        sub_1D0C1B688(&v52, &v63, &v41);
        sub_1D0C1B708(&v52, v40);
        sub_1D0C1B688(&v41, v40, v49);
        result = 0;
        v37 = v51;
        *(a7 + 72) = sqrt(*v51);
        v38 = v50;
        *(a7 + 56) = sqrt(v37[v50 + 1]) * 57.2957795;
        v39 = v37[2 * v38 + 2];
        *(a7 + 104) = a4;
        *(a7 + 88) = sqrt(v39);
        *(a7 + 96) = a2;
      }
    }
  }

  return result;
}

void *sub_1D0E5BFA0(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    v3 = *result;
    if (*result == a1)
    {
      *result = 0;
      while (1)
      {
        v4 = result[1];
        if (!v4)
        {
          break;
        }

        do
        {
          result = v4;
          v4 = *v4;
        }

        while (v4);
      }
    }

    else
    {
      for (result[1] = 0; v3; v3 = result[1])
      {
        do
        {
          result = v3;
          v3 = *v3;
        }

        while (v3);
      }
    }
  }

  return result;
}

uint64_t **sub_1D0E5BFF4(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v8 = result + 1;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v9 = v6[1];
    }

    else
    {
      v9 = v6;
    }

    v19 = result;
    v20 = v9;
    v21 = v9;
    if (v9)
    {
      v10 = sub_1D0E5BFA0(v9);
      v20 = v10;
      if (a2 != a3)
      {
        v11 = a2;
        do
        {
          v12 = v10;
          v13 = *(v11 + 32);
          *(v9 + 32) = v13;
          *(v9 + 40) = v11[5];
          v14 = *v8;
          v15 = v5 + 1;
          v16 = v5 + 1;
          if (*v8)
          {
            do
            {
              while (1)
              {
                v15 = v14;
                if (v13 >= *(v14 + 32))
                {
                  break;
                }

                v14 = *v14;
                v16 = v15;
                if (!*v15)
                {
                  goto LABEL_14;
                }
              }

              v14 = v14[1];
            }

            while (v14);
            v16 = v15 + 1;
          }

LABEL_14:
          sub_1D0D4B7BC(v5, v15, v16, v9);
          if (v12)
          {
            v10 = sub_1D0E5BFA0(v12);
          }

          else
          {
            v10 = 0;
          }

          v17 = v11[1];
          if (v17)
          {
            do
            {
              a2 = v17;
              v17 = *v17;
            }

            while (v17);
          }

          else
          {
            do
            {
              a2 = v11[2];
              v18 = *a2 == v11;
              v11 = a2;
            }

            while (!v18);
          }

          if (!v12)
          {
            break;
          }

          v9 = v12;
          v11 = a2;
        }

        while (a2 != a3);
        v20 = v10;
        v21 = v12;
      }
    }

    result = sub_1D0E5C200(&v19);
  }

  if (a2 != a3)
  {
    operator new();
  }

  return result;
}

uint64_t sub_1D0E5C200(uint64_t a1)
{
  sub_1D0B99218(*(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    sub_1D0B99218(v2);
  }

  return a1;
}

uint64_t sub_1D0E5C250(uint64_t a1)
{
  sub_1D0E5C2A0(*(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    sub_1D0E5C2A0(v2);
  }

  return a1;
}

void sub_1D0E5C2A0(void *a1)
{
  if (a1)
  {
    sub_1D0E5C2A0(*a1);
    sub_1D0E5C2A0(a1[1]);
    sub_1D0B99218(a1[6]);

    operator delete(a1);
  }
}

void sub_1D0E5C2F4(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 41;
      v7 = v4 - 41;
      do
      {
        (**v7)(v7);
        v6 -= 41;
        v8 = v7 == v2;
        v7 -= 41;
      }

      while (!v8);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_1D0E5C3B4(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 88;
      v7 = v4 - 88;
      v8 = v4 - 88;
      do
      {
        v9 = *v8;
        v8 -= 88;
        (*v9)(v7);
        v6 -= 88;
        v10 = v7 == v2;
        v7 = v8;
      }

      while (!v10);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t *sub_1D0E5C474(uint64_t a1, unsigned __int8 a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = *(v2 + 28);
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_7;
      }
    }

    if (v4 >= a2)
    {
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

uint64_t swan::ForwardBackwardFixedIntervalSmoother::Update(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x1EEE9AC00](a1, a2, a3, a4);
  v120 = *MEMORY[0x1E69E9840];
  if (v4 >= 2)
  {
    v97 = 0x600000006;
    v95 = &unk_1F4CDF278;
    v98 = &v99;
    v96 = xmmword_1D0E7F320;
    v100 = 0u;
    v101 = 0u;
    v102 = 0u;
    v103 = 0u;
    v104 = 0u;
    v105 = 0u;
    v106 = 0;
    v108 = 0u;
    v109 = 0u;
    v110 = 0u;
    v111 = 0u;
    v112 = 0u;
    v113 = 0u;
    v114 = 0;
    v116 = 0u;
    v117 = 0u;
    v118 = 0u;
    v99 = 0x3FF0000000000000;
    *&v103 = 0x3FF0000000000000;
    v107 = 0x3FF0000000000000;
    *&v111 = 0x3FF0000000000000;
    v115 = 0x3FF0000000000000;
    v119 = 0x3FF0000000000000;
    v72 = 0x600000006;
    v70 = &unk_1F4CDF278;
    v71 = xmmword_1D0E7F320;
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v79 = 0u;
    v80 = 0u;
    v81 = 0;
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    v87 = 0u;
    v88 = 0u;
    v89 = 0;
    v91 = 0u;
    v92 = 0u;
    v93 = 0u;
    v73 = &v74;
    v74 = 0x3FF0000000000000;
    v78 = 0x3FF0000000000000uLL;
    v82 = 0x3FF0000000000000;
    v86 = 0x3FF0000000000000uLL;
    v90 = 0x3FF0000000000000;
    v94 = 0x3FF0000000000000;
    v47 = 0x600000006;
    v45 = &unk_1F4CDF278;
    v48 = &v49;
    v46 = xmmword_1D0E7F320;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v49 = 0x3FF0000000000000;
    *&v53 = 0x3FF0000000000000;
    v57 = 0x3FF0000000000000;
    *&v61 = 0x3FF0000000000000;
    v65 = 0x3FF0000000000000;
    v69 = 0x3FF0000000000000;
    v42 = 0x600000006;
    v40[36] = &unk_1F4CDF278;
    v43 = v44;
    v41 = xmmword_1D0E7F320;
    memset(v44, 0, sizeof(v44));
    v38 = 0x600000006;
    v36 = &unk_1F4CDF278;
    v37 = xmmword_1D0E7F320;
    v39 = v40;
    v13 = 0x600000006;
    v11[6] = &unk_1F4CDF278;
    v14 = &v15;
    v12 = xmmword_1D0E7F320;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v15 = 0x3FF0000000000000;
    v19 = 0x3FF0000000000000uLL;
    v23 = 0x3FF0000000000000;
    v27 = 0x3FF0000000000000uLL;
    v31 = 0x3FF0000000000000;
    v35 = 0x3FF0000000000000;
    v9 = 0x100000006;
    v8 = xmmword_1D0E84530;
    v7[3] = &unk_1F4CE0BF8;
    v10 = v11;
    sub_1D0E5E758(v7, v4);
  }

  v5 = *MEMORY[0x1E69E9840];
  return 0xFFFFFFFFLL;
}

void sub_1D0E5E484(_Unwind_Exception *a1)
{
  STACK[0x768] = &STACK[0x8C8];
  sub_1D0E5C2F4(&STACK[0x768]);
  STACK[0x768] = &STACK[0x8E0];
  sub_1D0E5C3B4(&STACK[0x768]);
  STACK[0x768] = &STACK[0x8F8];
  sub_1D0E5C2F4(&STACK[0x768]);
  STACK[0x768] = &STACK[0x910];
  sub_1D0E5C3B4(&STACK[0x768]);
  _Unwind_Resume(a1);
}

void sub_1D0E5E71C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_1D0E5EB04(va);
  _Unwind_Resume(a1);
}

void sub_1D0E5E758(void *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2 < 0x2E8BA2E8BA2E8BBLL)
  {
    sub_1D0E59A58(a1, a2);
  }

  sub_1D0C5663C();
}

void sub_1D0E5E838(void *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2 < 0xC7CE0C7CE0C7CFLL)
  {
    sub_1D0E59B20(a1, a2);
  }

  sub_1D0C5663C();
}

void sub_1D0E5E918(void *a1)
{
  sub_1D0E5EB04(a1);

  JUMPOUT(0x1D387ECA0);
}

void *sub_1D0E5EB04(void *a1)
{
  *a1 = &unk_1F4CF0A00;
  v2 = a1[5];
  a1[5] = 0;
  if (v2)
  {
    MEMORY[0x1D387EC80](v2, 0x1000C8000313F17);
  }

  *a1 = &unk_1F4CD5E28;
  return a1;
}

uint64_t swan::PositionVelocityDataEditor::TestNormalizedInnovations(double a1, uint64_t a2, uint64_t a3, uint64_t *a4, double **a5, void *a6, uint64_t *a7)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v7 = 0;
    LODWORD(v8) = 0;
    v9 = *a4;
    v10 = *a5;
    v11 = *a7;
    do
    {
      v12 = 0;
      v13 = v10;
      do
      {
        v14 = v13 + 7;
        v15 = *v13;
        v13 += 14;
        v16.f64[0] = v15;
        v16.f64[1] = *v14;
        *&v20[v12] = vdivq_f64(vabsq_f64(*(v9 + v12)), vsqrtq_f64(v16));
        v12 += 16;
      }

      while (v12 != 48);
      v17 = 0;
      while (*&v20[v17] <= a1)
      {
        v17 += 8;
        if (v17 == 48)
        {
          goto LABEL_10;
        }
      }

      *(v11 + 8 * v8) = v7;
      LODWORD(v8) = v8 + 1;
LABEL_10:
      ++v7;
      v10 += 36;
      v9 += 48;
    }

    while (v7 != a3);
    v8 = v8;
  }

  else
  {
    v8 = 0;
  }

  *a6 = v8;
  v18 = *MEMORY[0x1E69E9840];
  return 0;
}

BOOL swan::PositionVelocityDataEditor::isIndexInArray(uint64_t a1, uint64_t a2, unint64_t a3, void **a4)
{
  if (!a3)
  {
    return 0;
  }

  if (**a4 == a2)
  {
    return 1;
  }

  v5 = 1;
  do
  {
    v6 = v5;
    if (a3 == v5)
    {
      break;
    }

    v7 = (*a4)[v5++];
  }

  while (v7 != a2);
  return v6 < a3;
}

uint64_t swan::ConsistencyChecker::UpdateNormalizedInnovationsSquared(uint64_t a1, unint64_t a2, unsigned int a3, void *a4, void *a5, double *a6)
{
  *a6 = 0.0;
  v72 = 0x100000006;
  v67 = &unk_1F4CE0BF8;
  v68 = a3;
  v69 = 1;
  v70 = a3;
  v71 = a3;
  v73 = &v74;
  v64 = 0x600000006;
  v59 = &unk_1F4CDF278;
  v60 = a3;
  v61 = a3;
  v62 = a3 * a3;
  v63 = a3;
  v65 = &v66;
  if (a2)
  {
    v8 = 0;
    v9 = 0;
    v10 = a3;
    do
    {
      if (a3)
      {
        v11 = 0;
        v12 = *a4 + 48 * v9;
        v13 = v73;
        v14 = v63;
        v15 = v65;
        v16 = (*a5 + v8);
        do
        {
          v13[v11] = *(v12 + 8 * v11);
          v17 = v16;
          v18 = v11;
          v19 = v10;
          do
          {
            v20 = *v17++;
            v15[v18] = v20;
            v18 += v14;
            --v19;
          }

          while (v19);
          ++v11;
          v16 += 6;
        }

        while (v11 != v10);
      }

      v21 = v69;
      v22 = v68;
      v41 = &unk_1F4CEB818;
      v46 = 0x600000001;
      v47 = v48;
      v42 = v69;
      v43 = v68;
      v44 = v68 * v69;
      v45 = v69;
      if (v69)
      {
        v23 = 0;
        v24 = 0;
        v25 = v71;
        v26 = v73;
        do
        {
          v27 = v23;
          v28 = v24;
          for (i = v22; i; --i)
          {
            v48[v28] = v26[v27];
            v28 += v21;
            ++v27;
          }

          ++v24;
          v23 += v25;
        }

        while (v24 != v21);
      }

      v38 = 0x600000006;
      v36 = &unk_1F4CDF278;
      v37 = xmmword_1D0E7F320;
      v39 = &v40;
      v82 = 0x100000006;
      v80 = &unk_1F4CE1400;
      v81 = xmmword_1D0E84530;
      v83 = &v84;
      v77 = 0x100000018;
      v75 = &unk_1F4CE2408;
      v76 = xmmword_1D0E84770;
      v78 = &v79;
      sub_1D0B9F868(&v59, &v80, &v75, &v36);
      v51 = 0x600000001;
      v50 = xmmword_1D0E84600;
      v49 = &unk_1F4CEB818;
      v52 = &v53;
      sub_1D0B89390(&v41, &v36, &v49);
      v56 = 0x100000001;
      *&v30 = 0x100000001;
      *(&v30 + 1) = 0x100000001;
      v55 = v30;
      v54 = &unk_1F4CDF418;
      v57 = &v58;
      sub_1D0B89390(&v49, &v67, &v54);
      v31 = *v57 + *a6;
      *a6 = v31;
      ++v9;
      v8 += 288;
    }

    while (v9 != a2);
  }

  else
  {
    v31 = 0.0;
  }

  *a6 = v31 / a2;
  return 0;
}

uint64_t swan::ConsistencyChecker::UpdateNormalizedStateEstimationErrorSquared(uint64_t a1, unint64_t a2, unsigned int a3, uint64_t a4, uint64_t *a5, uint64_t a6, double *a7)
{
  *a7 = 0.0;
  v83 = 0x100000006;
  v78 = &unk_1F4CE0BF8;
  v79 = a3;
  v80 = 1;
  v81 = a3;
  v82 = a3;
  v84 = &v85;
  v75 = 0x600000006;
  v70 = &unk_1F4CDF278;
  v71 = a3;
  v72 = a3;
  v73 = a3 * a3;
  v74 = a3;
  v76 = &v77;
  v67 = 0x100000006;
  v62 = &unk_1F4CE0BF8;
  v63 = a3;
  v64 = 1;
  v65 = a3;
  v66 = a3;
  v68 = &v69;
  if (a2)
  {
    v10 = 0;
    v11 = a3;
    do
    {
      if (a3)
      {
        v12 = 0;
        v13 = v84;
        v14 = v68;
        v15 = v74;
        v16 = v76;
        v17 = a5;
        do
        {
          v18 = v12;
          v13[v18] = *(a4 + 48 * v10 + 8 * v12);
          v14[v18] = *(a6 + 48 * v10 + 8 * v12);
          v19 = v17;
          v20 = v12;
          v21 = a3;
          do
          {
            v22 = *v19++;
            v16[v20] = v22;
            v20 += v15;
            --v21;
          }

          while (v21);
          ++v12;
          v17 += 6;
        }

        while (v12 != v11);
      }

      v49 = 0x100000006;
      v47 = &unk_1F4CE0BF8;
      v48 = xmmword_1D0E84530;
      v50 = &v51;
      sub_1D0BA5A78(&v78, &v62, &v47);
      v44 = 0x600000006;
      v42 = &unk_1F4CDF278;
      v43 = xmmword_1D0E7F320;
      v45 = &v46;
      v39 = 0x100000006;
      v37 = &unk_1F4CE1400;
      v38 = xmmword_1D0E84530;
      v40 = v41;
      v88 = 0x100000018;
      v86 = &unk_1F4CE2408;
      v87 = xmmword_1D0E84770;
      v89 = v90;
      sub_1D0B9F868(&v70, &v37, &v86, &v42);
      v54 = 0x600000006;
      v53 = xmmword_1D0E7F320;
      v52 = &unk_1F4CDF278;
      v55 = &v56;
      sub_1D0B89390(&v47, &v42, &v52);
      v39 = 0x100000006;
      v37 = &unk_1F4CE0BF8;
      v38 = xmmword_1D0E84530;
      v40 = v41;
      sub_1D0BA5A78(&v78, &v62, &v37);
      v24 = v38;
      v23 = DWORD1(v38);
      v88 = 0x600000001;
      v86 = &unk_1F4CEB818;
      v89 = v90;
      *&v87 = __PAIR64__(v38, DWORD1(v38));
      DWORD2(v87) = v38 * DWORD1(v38);
      HIDWORD(v87) = DWORD1(v38);
      if (DWORD1(v38))
      {
        v25 = 0;
        v26 = 0;
        v27 = HIDWORD(v38);
        v28 = v40;
        do
        {
          v29 = v25;
          v30 = v26;
          for (i = v24; i; --i)
          {
            v90[v30] = *&v28[8 * v29];
            v30 += v23;
            ++v29;
          }

          ++v26;
          v25 += v27;
        }

        while (v26 != v23);
      }

      v59 = 0x600000006;
      v57 = &unk_1F4CDF278;
      v58 = xmmword_1D0E7F320;
      v60 = &v61;
      sub_1D0B89390(&v52, &v86, &v57);
      v32 = *v60 + *a7;
      *a7 = v32;
      ++v10;
      a5 += 36;
    }

    while (v10 != a2);
  }

  else
  {
    v32 = 0.0;
  }

  *a7 = v32 / a2;
  return 0;
}

uint64_t trackrun::ConvertProtobufToGEOMapRunningTrackDataEvent(trackrun *this, const CoreNavigation::CLP::LogEntry::PrivateData::GEOMapTropicalSavannaData *a2, trackrun::GEOMapRunningTrackDataEvent *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int8x16_t a9, int8x16_t a10)
{
  if ((*(this + 48) & 1) == 0)
  {
    return 0;
  }

  v13 = *(this + 1);
  if (!v13)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
    v13 = *(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapTropicalSavannaData::default_instance_ + 8);
  }

  result = trackrun::ConvertProtobufToTrackRunTime(v13, a2 + 32, 0, a4, a5, a6, a7, a8, a9, a10);
  if (result)
  {
    v14 = *(a2 + 1);
    v127 = (a2 + 8);
    for (i = *(a2 + 2); i != v14; sub_1D0E61C78(i))
    {
      i -= 104;
    }

    *(a2 + 2) = v14;
    sub_1D0E60898(v127, *(this + 6));
    if ((*(this + 48) & 4) != 0)
    {
      *(a2 + 80) = *(this + 40);
    }

    v21 = *(this + 6);
    result = 1;
    if (v21)
    {
      v22 = *(this + 2);
      v128 = &v22[v21];
      v129 = a2;
      while (1)
      {
        v23 = *v22;
        v136[0] = 0;
        v136[1] = 0;
        v137 = 0;
        LOBYTE(v140) = 0;
        BYTE8(v140) = 0;
        v141 = 0;
        memset(v139, 0, 36);
        v130 = v22;
        v131 = v23;
        v24 = *(v23 + 24);
        if (v24)
        {
          if ((v24 & 0x80000000) == 0)
          {
            v135 = v139;
            sub_1D0E61E1C(v139, v24);
          }

          sub_1D0C5663C();
        }

        v25 = *(v23 + 76);
        if ((v25 & 0x40) != 0)
        {
          break;
        }

        if (*&v139[8] != *v139)
        {
          v26 = 0x8E38E38E38E38E39 * ((*&v139[8] - *v139) >> 3);
LABEL_20:
          v141 = v26;
          goto LABEL_21;
        }

        v26 = v141;
LABEL_21:
        v27 = v129;
        if (v26)
        {
          if (v25)
          {
            v28 = *(v131 + 8);
            if (!v28)
            {
              CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
              v28 = *(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavanna::default_instance_ + 8);
            }

            if (*(v28 + 48) >= 4)
            {
              v29 = *(v131 + 8);
              if (!v29)
              {
                CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
                v29 = *(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavanna::default_instance_ + 8);
              }

              v30 = *(v29 + 48);
              if (v30)
              {
                v31 = *(v29 + 40);
                v32 = 8 * v30;
                do
                {
                  v33 = *v31;
                  if ((~*(*v31 + 28) & 3) != 0)
                  {
                    LOWORD(__p[0]) = 13;
                    LOBYTE(v142[0]) = 2;
                    cnprint::CNPrinter::Print(__p, v142, "Warning,coordinate has no data", v16, v17, v18, v19, v20, v122);
                  }

                  else
                  {
                    v34 = *(v33 + 8);
                    if (fabs(v34) <= 90.0)
                    {
                      v35 = *(v33 + 16);
                      if (v35 < -180.0 || v35 > 360.0)
                      {
                        LOWORD(__p[0]) = 13;
                        LOBYTE(v142[0]) = 4;
                        cnprint::CNPrinter::Print(__p, v142, "Coordinate has invalid longitude,%.7lf", v16, v17, v18, v19, v20, SLOBYTE(v35));
                      }

                      else
                      {
                        v36 = v136[1];
                        if (v136[1] >= v137)
                        {
                          v38 = (v136[1] - v136[0]) >> 4;
                          v39 = v38 + 1;
                          if ((v38 + 1) >> 60)
                          {
                            sub_1D0C5663C();
                          }

                          v40 = v137 - v136[0];
                          if ((v137 - v136[0]) >> 3 > v39)
                          {
                            v39 = v40 >> 3;
                          }

                          if (v40 >= 0x7FFFFFFFFFFFFFF0)
                          {
                            v41 = 0xFFFFFFFFFFFFFFFLL;
                          }

                          else
                          {
                            v41 = v39;
                          }

                          if (v41)
                          {
                            sub_1D0BC40DC(v136, v41);
                          }

                          v42 = 16 * v38;
                          *v42 = v34;
                          *(v42 + 8) = v35;
                          v37 = (16 * v38 + 16);
                          v43 = (16 * v38 - (v136[1] - v136[0]));
                          memcpy((v42 - (v136[1] - v136[0])), v136[0], v136[1] - v136[0]);
                          result = v136[0];
                          v136[0] = v43;
                          v136[1] = v37;
                          v137 = 0;
                          if (result)
                          {
                            operator delete(result);
                          }
                        }

                        else
                        {
                          *v136[1] = v34;
                          v36[1] = v35;
                          v37 = v36 + 2;
                        }

                        v136[1] = v37;
                        v27 = v129;
                      }
                    }

                    else
                    {
                      LOWORD(__p[0]) = 13;
                      LOBYTE(v142[0]) = 4;
                      cnprint::CNPrinter::Print(__p, v142, "Coordinate has invalid latitude,%.7lf", v16, v17, v18, v19, v20, SLOBYTE(v34));
                    }
                  }

                  ++v31;
                  v32 -= 8;
                }

                while (v32);
              }

              goto LABEL_124;
            }
          }

          v44 = *(v131 + 8);
          if (v44)
          {
            v45 = v44[1];
            goto LABEL_57;
          }

          CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
          v44 = *(v131 + 8);
          v45 = *(*(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavanna::default_instance_ + 8) + 8);
          if (v44)
          {
LABEL_57:
            v46 = v44[4];
            goto LABEL_58;
          }

          CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
          v44 = *(v131 + 8);
          v46 = *(*(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavanna::default_instance_ + 8) + 32);
          if (v44)
          {
LABEL_58:
            v47 = v44[1];
          }

          else
          {
            CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
            v44 = *(v131 + 8);
            v47 = *(*(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavanna::default_instance_ + 8) + 8);
            if (!v44)
            {
              CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
              v44 = *(v131 + 8);
              v48 = *(*(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavanna::default_instance_ + 8) + 16);
              if (!v44)
              {
                CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
                v44 = *(v131 + 8);
                v49 = *(*(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavanna::default_instance_ + 8) + 24);
                if (!v44)
                {
                  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
                  v44 = *(v131 + 8);
                  v50 = *(*(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavanna::default_instance_ + 8) + 16);
                  if (!v44)
                  {
                    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
                    v44 = *(v131 + 8);
                    v51 = *(*(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavanna::default_instance_ + 8) + 24);
                    if (!v44)
                    {
                      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
                      v44 = *(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavanna::default_instance_ + 8);
                    }

                    goto LABEL_63;
                  }

LABEL_62:
                  v51 = v44[3];
LABEL_63:
                  v52 = v44[4];
                  v53 = v136[1];
                  if (v136[1] >= v137)
                  {
                    v55 = (v136[1] - v136[0]) >> 4;
                    v56 = v55 + 1;
                    if ((v55 + 1) >> 60)
                    {
                      goto LABEL_174;
                    }

                    v57 = v137 - v136[0];
                    if ((v137 - v136[0]) >> 3 > v56)
                    {
                      v56 = v57 >> 3;
                    }

                    if (v57 >= 0x7FFFFFFFFFFFFFF0)
                    {
                      v58 = 0xFFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v58 = v56;
                    }

                    if (v58)
                    {
                      sub_1D0BC40DC(v136, v58);
                    }

                    v59 = (16 * v55);
                    *v59 = v45;
                    v59[1] = v46;
                    v54 = (16 * v55 + 16);
                    v60 = v59 - (v136[1] - v136[0]);
                    memcpy(v60, v136[0], v136[1] - v136[0]);
                    result = v136[0];
                    v136[0] = v60;
                    v136[1] = v54;
                    v137 = 0;
                    if (result)
                    {
                      operator delete(result);
                    }
                  }

                  else
                  {
                    *v136[1] = v45;
                    v53[1] = v46;
                    v54 = (v53 + 2);
                  }

                  v136[1] = v54;
                  if (v54 >= v137)
                  {
                    v62 = (v54 - v136[0]) >> 4;
                    if ((v62 + 1) >> 60)
                    {
                      goto LABEL_174;
                    }

                    v63 = (v137 - v136[0]) >> 3;
                    if (v63 <= v62 + 1)
                    {
                      v63 = v62 + 1;
                    }

                    if ((v137 - v136[0]) >= 0x7FFFFFFFFFFFFFF0)
                    {
                      v64 = 0xFFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v64 = v63;
                    }

                    if (v64)
                    {
                      sub_1D0BC40DC(v136, v64);
                    }

                    v65 = (16 * v62);
                    *v65 = v47;
                    v65[1] = v48;
                    v61 = (16 * v62 + 16);
                    v66 = v65 - (v136[1] - v136[0]);
                    memcpy(v66, v136[0], v136[1] - v136[0]);
                    result = v136[0];
                    v136[0] = v66;
                    v136[1] = v61;
                    v137 = 0;
                    if (result)
                    {
                      operator delete(result);
                    }
                  }

                  else
                  {
                    *v54 = v47;
                    *(v54 + 1) = v48;
                    v61 = v54 + 16;
                  }

                  v136[1] = v61;
                  if (v61 >= v137)
                  {
                    v68 = (v61 - v136[0]) >> 4;
                    if ((v68 + 1) >> 60)
                    {
                      goto LABEL_174;
                    }

                    v69 = (v137 - v136[0]) >> 3;
                    if (v69 <= v68 + 1)
                    {
                      v69 = v68 + 1;
                    }

                    if ((v137 - v136[0]) >= 0x7FFFFFFFFFFFFFF0)
                    {
                      v70 = 0xFFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v70 = v69;
                    }

                    if (v70)
                    {
                      sub_1D0BC40DC(v136, v70);
                    }

                    v71 = (16 * v68);
                    *v71 = v49;
                    v71[1] = v50;
                    v67 = (16 * v68 + 16);
                    v72 = v71 - (v136[1] - v136[0]);
                    memcpy(v72, v136[0], v136[1] - v136[0]);
                    result = v136[0];
                    v136[0] = v72;
                    v136[1] = v67;
                    v137 = 0;
                    if (result)
                    {
                      operator delete(result);
                    }
                  }

                  else
                  {
                    *v61 = v49;
                    *(v61 + 1) = v50;
                    v67 = v61 + 16;
                  }

                  v136[1] = v67;
                  if (v67 >= v137)
                  {
                    v74 = (v67 - v136[0]) >> 4;
                    if ((v74 + 1) >> 60)
                    {
                      goto LABEL_174;
                    }

                    v75 = (v137 - v136[0]) >> 3;
                    if (v75 <= v74 + 1)
                    {
                      v75 = v74 + 1;
                    }

                    if ((v137 - v136[0]) >= 0x7FFFFFFFFFFFFFF0)
                    {
                      v76 = 0xFFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v76 = v75;
                    }

                    if (v76)
                    {
                      sub_1D0BC40DC(v136, v76);
                    }

                    v77 = (16 * v74);
                    *v77 = v51;
                    v77[1] = v52;
                    v73 = (16 * v74 + 16);
                    v78 = v77 - (v136[1] - v136[0]);
                    memcpy(v78, v136[0], v136[1] - v136[0]);
                    result = v136[0];
                    v136[0] = v78;
                    v136[1] = v73;
                    v137 = 0;
                    if (result)
                    {
                      operator delete(result);
                    }
                  }

                  else
                  {
                    *v67 = v51;
                    *(v67 + 1) = v52;
                    v73 = v67 + 16;
                  }

                  v136[1] = v73;
                  if (v73 >= v137)
                  {
                    v80 = (v73 - v136[0]) >> 4;
                    if ((v80 + 1) >> 60)
                    {
LABEL_174:
                      sub_1D0C5663C();
                    }

                    v81 = (v137 - v136[0]) >> 3;
                    if (v81 <= v80 + 1)
                    {
                      v81 = v80 + 1;
                    }

                    if ((v137 - v136[0]) >= 0x7FFFFFFFFFFFFFF0)
                    {
                      v82 = 0xFFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v82 = v81;
                    }

                    if (v82)
                    {
                      sub_1D0BC40DC(v136, v82);
                    }

                    v83 = (16 * v80);
                    *v83 = v45;
                    v83[1] = v46;
                    v79 = (16 * v80 + 16);
                    v84 = v83 - (v136[1] - v136[0]);
                    memcpy(v84, v136[0], v136[1] - v136[0]);
                    result = v136[0];
                    v136[0] = v84;
                    v136[1] = v79;
                    v137 = 0;
                    if (result)
                    {
                      operator delete(result);
                    }
                  }

                  else
                  {
                    *v73 = v45;
                    *(v73 + 1) = v46;
                    v79 = v73 + 16;
                  }

                  v136[1] = v79;
LABEL_124:
                  if ((v136[1] - v136[0]) <= 0x10)
                  {
                    if (v136[1] == v136[0])
                    {
                      v142[0] = &unk_1F4CF0B38;
                      __p[0] = "/AppleInternal/Library/BuildRoots/4~B_vtugDL9R_i6FW7bXTnamipqOQLftg52EzW3Mg/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/boost/geometry/algorithms/centroid.hpp";
                      __p[1] = "BOOL boost::geometry::detail::centroid::range_ok(const Range &, Point &) [Point = boost::geometry::model::d2::point_xy<double>, Range = boost::geometry::model::ring<boost::geometry::model::d2::point_xy<double>, false>]";
                      *&v134 = 159;
                      sub_1D0E62164(__p);
                    }

                    v138 = *v136[0];
                  }

                  else if (v136[0] != v136[1])
                  {
                    v85 = (v136[0] + 16);
                    v86 = *v136[0];
                    if (v136[0] + 16 != v136[1])
                    {
                      v87 = vsubq_f64(v86, v86);
                      v88 = 0uLL;
                      v89 = 0.0;
                      do
                      {
                        v90 = *v85++;
                        v91 = vsubq_f64(v90, v86);
                        v92 = -v87.f64[1] * v91.f64[0] + v87.f64[0] * v91.f64[1];
                        v89 = v89 + v92;
                        v88 = vmlaq_n_f64(v88, vaddq_f64(v87, v91), v92);
                        v87 = v91;
                      }

                      while (v85 != v136[1]);
                      if (v89 != 0.0)
                      {
                        if ((*&v89 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
                        {
                          goto LABEL_134;
                        }

                        v93 = fabs(v89);
                        v94 = 1.0;
                        if (v93 >= 1.0)
                        {
                          v94 = v93;
                        }

                        if (v93 > v94 * 2.22044605e-16)
                        {
LABEL_134:
                          v95 = v89 * 3.0;
                          if ((*&v95 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
                          {
                            v96 = vdivq_f64(v88, vdupq_lane_s64(*&v95, 0));
                            v138 = v96;
                            v138.f64[0] = v96.f64[0] + *v136[0];
                            v97 = v96.f64[1] + *(v136[0] + 1);
                            goto LABEL_140;
                          }
                        }
                      }
                    }
                  }

                  if (v136[0] != v136[1])
                  {
                    v138.f64[0] = *v136[0];
                    v97 = *(v136[0] + 1);
LABEL_140:
                    v138.f64[1] = v97;
                  }

                  if ((v136[1] - v136[0]) < 0x31)
                  {
                    LOWORD(__p[0]) = 13;
                    LOBYTE(v142[0]) = 4;
                    cnprint::CNPrinter::Print(__p, v142, "Bounding box doesn't have at least four coordinates", v16, v17, v18, v19, v20, v122);
                  }

                  else
                  {
                    if (cnprint::CNPrinter::GetLogLevel(result) <= 1)
                    {
                      LOWORD(__p[0]) = 13;
                      LOBYTE(v142[0]) = 1;
                      v125 = *(v136[0] + 6);
                      v126 = *(v136[0] + 7);
                      v123 = *(v136[0] + 1);
                      v124 = *(v136[0] + 2);
                      cnprint::CNPrinter::Print(__p, v142, "bbox,1,%.8lf,%.8lf,2,%.8lf,%.8lf,3,%.8lf,%.8lf,4,%.8lf,%.8lf,center,%.8lf,%.8lf", v98, v99, v100, v101, v102, *v136[0]);
                    }

                    if (((v136[1] - v136[0]) >> 4) >= 6)
                    {
                      LOWORD(__p[0]) = 13;
                      LOBYTE(v142[0]) = 3;
                      cnprint::CNPrinter::Print(__p, v142, "Warning: Received a non-rectangular bounding box, which is handleable, but unexpected,number of coordinates,%lu", v98, v99, v100, v101, v102, (v136[1] - v136[0]) >> 4);
                    }
                  }

                  v103 = *(v131 + 48);
                  if (v103 == 3)
                  {
                    v104 = 2;
                  }

                  else
                  {
                    v104 = v103 == 2;
                  }

                  *&v139[32] = v104;
                  *&v139[24] = *(v131 + 40);
                  v105 = *(v27 + 2);
                  v106 = *(v27 + 3);
                  if (v105 >= v106)
                  {
                    v110 = 0x4EC4EC4EC4EC4EC5 * ((v105 - *v127) >> 3);
                    v111 = v110 + 1;
                    if ((v110 + 1) > 0x276276276276276)
                    {
                      sub_1D0C5663C();
                    }

                    v112 = 0x4EC4EC4EC4EC4EC5 * ((v106 - *v127) >> 3);
                    if (2 * v112 > v111)
                    {
                      v111 = 2 * v112;
                    }

                    if (v112 >= 0x13B13B13B13B13BLL)
                    {
                      v113 = 0x276276276276276;
                    }

                    else
                    {
                      v113 = v111;
                    }

                    v135 = v127;
                    if (v113)
                    {
                      sub_1D0E61CC0(v127, v113);
                    }

                    v114 = 104 * v110;
                    __p[0] = 0;
                    __p[1] = v114;
                    *(&v134 + 1) = 0;
                    *v114 = 0;
                    *(v114 + 8) = 0;
                    *(v114 + 16) = 0;
                    *v114 = *v136;
                    *(v114 + 16) = v137;
                    v136[1] = 0;
                    v137 = 0;
                    v136[0] = 0;
                    *(v114 + 24) = v138;
                    *(v114 + 48) = 0;
                    *(v114 + 56) = 0;
                    *(v114 + 40) = 0;
                    *(v114 + 40) = *v139;
                    *(v114 + 56) = *&v139[16];
                    memset(v139, 0, 24);
                    v115 = *&v139[24];
                    v116 = v140;
                    *(v114 + 96) = v141;
                    *(v114 + 64) = v115;
                    *(v114 + 80) = v116;
                    *&v134 = 104 * v110 + 104;
                    v117 = *(v27 + 1);
                    v118 = *(v27 + 2);
                    v119 = 104 * v110 + v117 - v118;
                    sub_1D0E61D1C(v127, v117, v118, v119);
                    v120 = *(v27 + 1);
                    *(v27 + 1) = v119;
                    v121 = *(v27 + 3);
                    v132 = v134;
                    *(v27 + 1) = v134;
                    *&v134 = v120;
                    *(&v134 + 1) = v121;
                    __p[0] = v120;
                    __p[1] = v120;
                    sub_1D0E61DCC(__p);
                    v109 = v132;
                  }

                  else
                  {
                    *(v105 + 8) = 0;
                    *(v105 + 16) = 0;
                    *v105 = 0;
                    *v105 = *v136;
                    *(v105 + 16) = v137;
                    v136[0] = 0;
                    v136[1] = 0;
                    v137 = 0;
                    *(v105 + 24) = v138;
                    *(v105 + 48) = 0;
                    *(v105 + 56) = 0;
                    *(v105 + 40) = 0;
                    *(v105 + 40) = *v139;
                    *(v105 + 56) = *&v139[16];
                    memset(v139, 0, 24);
                    v107 = *&v139[24];
                    v108 = v140;
                    *(v105 + 96) = v141;
                    *(v105 + 64) = v107;
                    *(v105 + 80) = v108;
                    v109 = v105 + 104;
                  }

                  *(v27 + 2) = v109;
                  goto LABEL_162;
                }

LABEL_61:
                v50 = v44[2];
                goto LABEL_62;
              }

LABEL_60:
              v49 = v44[3];
              goto LABEL_61;
            }
          }

          v48 = v44[2];
          goto LABEL_60;
        }

        LOWORD(__p[0]) = 13;
        LOBYTE(v142[0]) = 3;
        cnprint::CNPrinter::Print(__p, v142, "Warning,track has no lanes", v16, v17, v18, v19, v20, v122);
LABEL_162:
        __p[0] = v139;
        sub_1D0E620B8(__p);
        result = v136[0];
        if (v136[0])
        {
          v136[1] = v136[0];
          operator delete(v136[0]);
        }

        v22 = v130 + 1;
        if (v130 + 1 == v128)
        {
          return 1;
        }
      }

      v26 = *(v131 + 64);
      goto LABEL_20;
    }
  }

  return result;
}

void *sub_1D0E60898(void *result, unint64_t a2)
{
  if (0x4EC4EC4EC4EC4EC5 * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x276276276276277)
    {
      v2 = result[1] - *result;
      v3 = result;
      sub_1D0E61CC0(result, a2);
    }

    sub_1D0C5663C();
  }

  return result;
}

void sub_1D0E6096C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1D0E61DCC(va);
  _Unwind_Resume(a1);
}

uint64_t trackrun::ConvertProtobufToRunningTrackLaneType(_DWORD *a1)
{
  if (*a1 == 3)
  {
    return 2;
  }

  else
  {
    return *a1 == 2;
  }
}

uint64_t trackrun::ConvertProtobufToRunningTrackType(_DWORD *a1)
{
  if (*a1 == 3)
  {
    return 2;
  }

  else
  {
    return *a1 == 2;
  }
}

uint64_t trackrun::ConvertProtobufToMovingStateEvent(trackrun *this, const CoreNavigation::CLP::LogEntry::PrivateData::MotionState *a2, trackrun::MovingStateEvent *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int8x16_t a9, int8x16_t a10)
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

  result = trackrun::ConvertProtobufToTrackRunTime(v13, a2 + 8, 1, a4, a5, a6, a7, a8, a9, a10);
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

  v17 = *(v16 + 8);
  result = 1;
  if (v17 > 11804)
  {
    if (v17 > 15651)
    {
      if (v17 <= 18199)
      {
        if (v17 <= 15732)
        {
          v20 = (v17 - 15652);
          if (v20 > 0x3A)
          {
            return result;
          }

          if (((1 << v20) & 0x400000000800101) != 0)
          {
            goto LABEL_80;
          }

          if (v20 != 18)
          {
            return result;
          }

          goto LABEL_77;
        }

        if (v17 == 15733 || v17 == 17150)
        {
          goto LABEL_80;
        }

        v19 = 18070;
      }

      else if (v17 > 19149)
      {
        if (v17 <= 90602)
        {
          if (v17 == 19150)
          {
            goto LABEL_80;
          }

          v19 = 19160;
        }

        else
        {
          if (v17 == 90603 || v17 == 515621)
          {
            goto LABEL_80;
          }

          v19 = 515652;
        }
      }

      else
      {
        if ((v17 - 18200) <= 0x28 && ((1 << (v17 - 24)) & 0x10002000001) != 0 || v17 == 19030)
        {
          goto LABEL_80;
        }

        v19 = 19090;
      }
    }

    else if (v17 > 15329)
    {
      if ((v17 - 15562) <= 0x3A && ((1 << (v17 + 54)) & 0x401000040000001) != 0 || (v17 - 15330) <= 0x1E && ((1 << (v17 + 30)) & 0x40100001) != 0)
      {
        goto LABEL_80;
      }

      v19 = 15460;
    }

    else if (v17 <= 15054)
    {
      if (v17 == 11805 || v17 == 12150)
      {
        goto LABEL_80;
      }

      v19 = 15030;
    }

    else
    {
      if ((v17 - 15100) <= 0x32 && ((1 << (v17 + 4)) & 0x4000000000401) != 0 || (v17 - 15230) <= 0x19 && ((1 << (v17 - 126)) & 0x2000401) != 0)
      {
        goto LABEL_80;
      }

      v19 = 15055;
    }

    if (v17 == v19)
    {
      goto LABEL_80;
    }

    return result;
  }

  if (v17 <= 2009)
  {
    if (v17 <= 0x38)
    {
      if (((1 << v17) & 0x110020000000378) != 0)
      {
        goto LABEL_80;
      }

      if (((1 << v17) & 0xC06) != 0)
      {
        LOBYTE(v17) = 1;
        goto LABEL_81;
      }

      if (v17 == 7)
      {
        goto LABEL_77;
      }
    }

    if ((v17 - 61) <= 0x27 && ((1 << (v17 - 61)) & 0x800000003FLL) != 0)
    {
      goto LABEL_80;
    }

    if (v17)
    {
      return result;
    }

LABEL_81:
    *(a2 + 56) = v17;
    return result;
  }

  if (v17 <= 2100)
  {
    v18 = v17 - 2010;
    if (v18 > 0x3D)
    {
      return result;
    }

    if (((1 << v18) & 0x2480000000005400) == 0)
    {
      if (((1 << v18) & 0x8004000000001) == 0)
      {
        return result;
      }

      goto LABEL_77;
    }

LABEL_80:
    LOBYTE(v17) = 3;
    goto LABEL_81;
  }

  if (v17 <= 2149)
  {
    if (v17 == 2101)
    {
      goto LABEL_80;
    }

    if (v17 != 2105)
    {
      return result;
    }

LABEL_77:
    LOBYTE(v17) = 2;
    goto LABEL_81;
  }

  if (v17 == 2150 || v17 == 3015)
  {
    goto LABEL_77;
  }

  if (v17 == 3016)
  {
    goto LABEL_80;
  }

  return result;
}

uint64_t trackrun::ConvertProtobufToTrackRunHintEvent(trackrun *this, const CoreNavigation::CLP::LogEntry::TropicalSavanna::TropicalSavannaHint *a2, trackrun::TrackRunHintEvent *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int8x16_t a9, int8x16_t a10)
{
  if ((*(this + 36) & 2) == 0)
  {
    return 0;
  }

  v24 = v10;
  v25 = v11;
  v15 = *(this + 2);
  if (!v15)
  {
    CoreNavigation::CLP::LogEntry::TropicalSavanna::protobuf_AddDesc_CoreNavigationCLPTropicalSavannaLogEntry_2eproto(0);
    v15 = *(CoreNavigation::CLP::LogEntry::TropicalSavanna::TropicalSavannaHint::default_instance_ + 16);
  }

  result = trackrun::ConvertProtobufToTrackRunTime(v15, a2 + 8, 0, a4, a5, a6, a7, a8, a9, a10);
  if (result)
  {
    if ((*(this + 36) & 4) == 0)
    {
      return 0;
    }

    v21 = *(this + 6);
    if ((v21 - 256) <= 0xFFFFFF00)
    {
      v23 = 13;
      v22 = 4;
      cnprint::CNPrinter::Print(&v23, &v22, "Invalid lane number,%d", v16, v17, v18, v19, v20, v21);
      return 0;
    }

    *(a2 + 56) = v21;
    return 1;
  }

  return result;
}

uint64_t trackrun::ConvertProtobufToVisitEvent(trackrun *this, const CoreNavigation::CLP::LogEntry::PrivateData::RoutineVisit *a2, trackrun::VisitEvent *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int8x16_t a9, int8x16_t a10)
{
  if ((*(this + 68) & 1) == 0)
  {
    goto LABEL_5;
  }

  v12 = *(this + 1);
  if (!v12)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
    v12 = *(CoreNavigation::CLP::LogEntry::PrivateData::RoutineVisit::default_instance_ + 8);
  }

  if ((trackrun::ConvertProtobufToTrackRunTime(v12, a2 + 8, 1, a4, a5, a6, a7, a8, a9, a10) & 1) == 0)
  {
LABEL_5:
    v38 = 13;
    v37 = 3;
    cnprint::CNPrinter::Print(&v38, &v37, "Warning: ConvertProtobufToTrackRunTime,receipt time not present. Proceeding but this is unexpected.", a4, a5, a6, a7, a8, v36);
  }

  if ((*(this + 68) & 2) == 0)
  {
    goto LABEL_10;
  }

  v15 = *(this + 2);
  if (!v15)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
    v15 = *(CoreNavigation::CLP::LogEntry::PrivateData::RoutineVisit::default_instance_ + 16);
  }

  if ((trackrun::ConvertProtobufToTrackRunTime(v15, a2 + 56, 1, a4, a5, a6, a7, a8, v13, v14) & 1) == 0)
  {
LABEL_10:
    v38 = 13;
    v37 = 3;
    cnprint::CNPrinter::Print(&v38, &v37, "ConvertProtobufToTrackRunTime,Arrival time not present. User probably isn't in a known visit location.", a4, a5, a6, a7, a8, v36);
  }

  if ((*(this + 68) & 4) == 0)
  {
    goto LABEL_15;
  }

  v18 = *(this + 3);
  if (!v18)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
    v18 = *(CoreNavigation::CLP::LogEntry::PrivateData::RoutineVisit::default_instance_ + 24);
  }

  if ((trackrun::ConvertProtobufToTrackRunTime(v18, a2 + 104, 1, a4, a5, a6, a7, a8, v16, v17) & 1) == 0)
  {
LABEL_15:
    v38 = 13;
    v37 = 3;
    cnprint::CNPrinter::Print(&v38, &v37, "ConvertProtobufToTrackRunTime,Departure time is not present. User has arrived at a known visit location", a4, a5, a6, a7, a8, v36);
  }

  if ((*(this + 68) & 8) == 0)
  {
    goto LABEL_20;
  }

  v21 = *(this + 4);
  if (!v21)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
    v21 = *(CoreNavigation::CLP::LogEntry::PrivateData::RoutineVisit::default_instance_ + 32);
  }

  v22 = trackrun::ConvertProtobufToTrackRunTime(v21, a2 + 152, 1, a4, a5, a6, a7, a8, v19, v20);
  if ((v22 & 1) == 0)
  {
LABEL_20:
    v38 = 13;
    v37 = 3;
    cnprint::CNPrinter::Print(&v38, &v37, "Warning: ConvertProtobufToTrackRunTime,detection time not present. Proceeding, but this is unexpected.", a4, a5, a6, a7, a8, v36);
  }

  if ((*(this + 68) & 0x20) == 0)
  {
    v38 = 13;
    v37 = 4;
    v23 = "ConvertProtobufToTrackRunTime,coordinate not present. Cannot create visit event.";
LABEL_39:
    cnprint::CNPrinter::Print(&v38, &v37, v23, a4, a5, a6, a7, a8, v36);
    return 0;
  }

  v24 = *(this + 6);
  if (v24)
  {
    *(a2 + 25) = *(v24 + 8);
  }

  else
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v22);
    v24 = *(this + 6);
    *(a2 + 25) = *(*(CoreNavigation::CLP::LogEntry::PrivateData::RoutineVisit::default_instance_ + 48) + 8);
    if (!v24)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v22);
      v24 = *(CoreNavigation::CLP::LogEntry::PrivateData::RoutineVisit::default_instance_ + 48);
    }
  }

  *(a2 + 26) = *(v24 + 16);
  v25 = *(this + 17);
  if ((v25 & 0x40) == 0)
  {
    v38 = 13;
    v37 = 4;
    v23 = "Visit does not have an estimated radius. Cannot create visit event.";
    goto LABEL_39;
  }

  *(a2 + 27) = *(this + 7);
  if ((v25 & 0x10) == 0)
  {
    v38 = 13;
    v37 = 4;
    v23 = "Visit does not have a place inference. Cannot create visit event";
    goto LABEL_39;
  }

  v26 = *(this + 5);
  if (!v26)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v22);
    v26 = *(CoreNavigation::CLP::LogEntry::PrivateData::RoutineVisit::default_instance_ + 40);
  }

  if ((*(v26 + 36) & 1) == 0)
  {
    v38 = 13;
    v37 = 4;
    v23 = "Visit does not have a user specific place type. Cannot create visit event";
    goto LABEL_39;
  }

  v27 = *(this + 5);
  if (!v27)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v22);
    v27 = *(CoreNavigation::CLP::LogEntry::PrivateData::RoutineVisit::default_instance_ + 40);
  }

  if ((*(v27 + 36) & 2) == 0)
  {
    v38 = 13;
    v37 = 4;
    v23 = "Visit does not have a place inference place type. Cannot create visit event";
    goto LABEL_39;
  }

  v29 = *(this + 5);
  if (!v29)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v22);
    v29 = *(CoreNavigation::CLP::LogEntry::PrivateData::RoutineVisit::default_instance_ + 40);
  }

  v30 = *(v29 + 8);
  if (v30 <= 4)
  {
    *(a2 + 224) = v30;
  }

  v31 = *(this + 5);
  if (!v31)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v22);
    v31 = *(CoreNavigation::CLP::LogEntry::PrivateData::RoutineVisit::default_instance_ + 40);
  }

  v32 = *(v31 + 12);
  if (v32 <= 2)
  {
    *(a2 + 225) = v32 + 1;
  }

  v33 = *(this + 5);
  v34 = v33;
  if (!v33)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v22);
    v34 = *(CoreNavigation::CLP::LogEntry::PrivateData::RoutineVisit::default_instance_ + 40);
    v33 = *(this + 5);
  }

  if ((*(v34 + 36) & 4) != 0)
  {
    if (!v33)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v22);
      v33 = *(CoreNavigation::CLP::LogEntry::PrivateData::RoutineVisit::default_instance_ + 40);
    }

    v22 = std::string::operator=((a2 + 232), *(v33 + 16));
    v33 = *(this + 5);
  }

  if (!v33)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v22);
    v33 = *(CoreNavigation::CLP::LogEntry::PrivateData::RoutineVisit::default_instance_ + 40);
  }

  if ((*(v33 + 36) & 8) != 0)
  {
    v35 = *(this + 5);
    if (!v35)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v22);
      v35 = *(CoreNavigation::CLP::LogEntry::PrivateData::RoutineVisit::default_instance_ + 40);
    }

    std::string::operator=((a2 + 256), *(v35 + 24));
  }

  return 1;
}

uint64_t trackrun::ConvertProtobufToWatchStateEvent(trackrun *this, const CoreNavigation::CLP::LogEntry::PrivateData::WatchState *a2, trackrun::WatchStateEvent *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int8x16_t a9, int8x16_t a10)
{
  if ((*(this + 40) & 1) == 0)
  {
    return 0;
  }

  v13 = *(this + 1);
  if (!v13)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
    v13 = *(CoreNavigation::CLP::LogEntry::PrivateData::WatchState::default_instance_ + 8);
  }

  result = trackrun::ConvertProtobufToTrackRunTime(v13, a2 + 8, 0, a4, a5, a6, a7, a8, a9, a10);
  if (result)
  {
    if ((*(this + 40) & 4) == 0)
    {
      return 0;
    }

    v14 = *(this + 2);
    if (!v14)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
      v14 = *(CoreNavigation::CLP::LogEntry::PrivateData::WatchState::default_instance_ + 16);
    }

    if (*(v14 + 20))
    {
      v16 = *(this + 2);
      if (!v16)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
        v16 = *(CoreNavigation::CLP::LogEntry::PrivateData::WatchState::default_instance_ + 16);
      }

      v17 = *(v16 + 8);
      if (v17 > 3)
      {
LABEL_17:
        v18 = *(this + 2);
        if (!v18)
        {
          CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
          v18 = *(CoreNavigation::CLP::LogEntry::PrivateData::WatchState::default_instance_ + 16);
        }

        if ((*(v18 + 20) & 2) != 0)
        {
          v20 = *(this + 2);
          if (!v20)
          {
            CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
            v20 = *(CoreNavigation::CLP::LogEntry::PrivateData::WatchState::default_instance_ + 16);
          }

          v21 = *(v20 + 12);
          if (v21 > 3)
          {
            return 1;
          }

          v19 = 0x2010000u >> (8 * v21);
        }

        else
        {
          LOBYTE(v19) = 0;
        }

        *(a2 + 56) = v19;
        return 1;
      }

      v15 = 0x2010000u >> (8 * v17);
    }

    else
    {
      LOBYTE(v15) = 0;
    }

    *(a2 + 57) = v15;
    goto LABEL_17;
  }

  return result;
}

uint64_t trackrun::ConvertProtobufToWorkoutSessionEvent(trackrun *this, const CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator *a2, trackrun::WorkoutSessionEvent *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int8x16_t a9, int8x16_t a10)
{
  if ((*(this + 32) & 1) == 0)
  {
    return 0;
  }

  v13 = *(this + 1);
  if (!v13)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
    v13 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator::default_instance_ + 8);
  }

  result = trackrun::ConvertProtobufToTrackRunTime(v13, a2 + 8, 0, a4, a5, a6, a7, a8, a9, a10);
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
      v21 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator::default_instance_ + 16);
    }

    if ((*(v21 + 48) & 4) == 0)
    {
      return 0;
    }

    v22 = *(this + 2);
    if (!v22)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
      v22 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator::default_instance_ + 16);
    }

    if ((*(v22 + 48) & 1) == 0)
    {
      return 0;
    }

    v23 = *(this + 2);
    if (!v23)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
      v23 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator::default_instance_ + 16);
    }

    if ((*(v23 + 48) & 0x10) == 0)
    {
      return 0;
    }

    v24 = *(this + 2);
    if (!v24)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
      v24 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator::default_instance_ + 16);
    }

    v25 = *(v24 + 32);
    if (!v25)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
      v25 = *(CoreNavigation::CLP::LogEntry::PrivateData::WorkoutEvent::default_instance_ + 32);
    }

    if ((*(v25 + 40) & 4) != 0)
    {
      v26 = *(this + 2);
      v27 = v26;
      if (!v26)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
        v27 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator::default_instance_ + 16);
        v26 = *(this + 2);
      }

      if ((v27[6] & 8) != 0)
      {
        if (!v26)
        {
          CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
          v26 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator::default_instance_ + 16);
        }

        v28 = v26[3];
        if (!v28)
        {
          CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
          v28 = *(CoreNavigation::CLP::LogEntry::PrivateData::WorkoutEvent::default_instance_ + 24);
        }

        v29 = trackrun::ConvertProtobufToTrackRunTime(v28, a2 + 8, 1, v14, v15, v16, v17, v18, v19, v20);
        v37 = *(this + 2);
        if (!v37)
        {
          CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v29);
          v37 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator::default_instance_ + 16);
        }

        v38 = *(v37 + 24);
        if (!v38)
        {
          CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
          v38 = *(CoreNavigation::CLP::LogEntry::PrivateData::WorkoutEvent::default_instance_ + 24);
        }

        result = trackrun::ConvertProtobufToTrackRunTime(v38, a2 + 184, 1, v30, v31, v32, v33, v34, v35, v36);
        v26 = *(this + 2);
      }

      v39 = v26;
      if (!v26)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
        v39 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator::default_instance_ + 16);
        v26 = *(this + 2);
      }

      if (v39[6])
      {
        if (!v26)
        {
          CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
          v26 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator::default_instance_ + 16);
        }

        v40 = v26[1];
        if (!v40)
        {
          CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
          v40 = *(CoreNavigation::CLP::LogEntry::PrivateData::WorkoutEvent::default_instance_ + 8);
        }

        result = trackrun::ConvertProtobufToTrackRunTime(v40, a2 + 88, 1, v14, v15, v16, v17, v18, v19, v20);
        v26 = *(this + 2);
      }

      v41 = v26;
      if (!v26)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
        v41 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator::default_instance_ + 16);
        v26 = *(this + 2);
      }

      if ((v41[6] & 2) != 0)
      {
        if (!v26)
        {
          CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
          v26 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator::default_instance_ + 16);
        }

        v42 = v26[2];
        if (!v42)
        {
          CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
          v42 = *(CoreNavigation::CLP::LogEntry::PrivateData::WorkoutEvent::default_instance_ + 16);
        }

        result = trackrun::ConvertProtobufToTrackRunTime(v42, a2 + 136, 1, v14, v15, v16, v17, v18, v19, v20);
        v26 = *(this + 2);
      }

      if (!v26)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
        v26 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator::default_instance_ + 16);
      }

      v43 = v26[4];
      if (!v43)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
        v43 = *(CoreNavigation::CLP::LogEntry::PrivateData::WorkoutEvent::default_instance_ + 32);
      }

      v44 = *(this + 2);
      if (*(v43 + 40))
      {
        if (!v44)
        {
          CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
          v44 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator::default_instance_ + 16);
        }

        v45 = *(v44 + 32);
        if (!v45)
        {
          CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
          v45 = *(CoreNavigation::CLP::LogEntry::PrivateData::WorkoutEvent::default_instance_ + 32);
        }

        result = std::string::operator=((a2 + 64), *(v45 + 8));
        v44 = *(this + 2);
      }

      if (!v44)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
        v44 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator::default_instance_ + 16);
      }

      v46 = *(v44 + 32);
      if (!v46)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
        v46 = *(CoreNavigation::CLP::LogEntry::PrivateData::WorkoutEvent::default_instance_ + 32);
      }

      v47 = *(v46 + 24);
      if (v47 <= 0x42)
      {
        *(a2 + 56) = byte_1D0EC1B8A[v47];
      }

      v48 = *(this + 2);
      if (!v48)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
        v48 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator::default_instance_ + 16);
      }

      v49 = *(v48 + 40);
      if (v49 <= 0x12)
      {
        *(a2 + 57) = byte_1D0EC1BCD[v49];
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

uint64_t trackrun::ConvertProtobufToWorkoutSessionEvent(trackrun *this, const CoreNavigation::CLP::LogEntry::PrivateData::MotionStateObserver *a2, trackrun::WorkoutSessionEvent *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int8x16_t a9, int8x16_t a10)
{
  if ((*(this + 32) & 1) == 0)
  {
    return 0;
  }

  v13 = *(this + 1);
  if (!v13)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
    v13 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateObserver::default_instance_ + 8);
  }

  result = trackrun::ConvertProtobufToTrackRunTime(v13, a2 + 8, 0, a4, a5, a6, a7, a8, a9, a10);
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
      v21 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateObserver::default_instance_ + 16);
    }

    if ((*(v21 + 36) & 1) == 0)
    {
      return 0;
    }

    v22 = *(this + 2);
    if (!v22)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
      v22 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateObserver::default_instance_ + 16);
    }

    if ((*(v22 + 36) & 4) == 0)
    {
      return 0;
    }

    v23 = *(this + 2);
    v24 = v23;
    if (!v23)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
      v24 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateObserver::default_instance_ + 16);
      v23 = *(this + 2);
    }

    if ((*(v24 + 36) & 4) != 0)
    {
      if (!v23)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
        v23 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateObserver::default_instance_ + 16);
      }

      v25 = *(v23 + 24);
      if (!v25)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
        v25 = *(CoreNavigation::CLP::LogEntry::PrivateData::WorkoutUpdate::default_instance_ + 24);
      }

      result = trackrun::ConvertProtobufToTrackRunTime(v25, a2 + 88, 1, v14, v15, v16, v17, v18, v19, v20);
      v23 = *(this + 2);
    }

    if (!v23)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
      v23 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateObserver::default_instance_ + 16);
    }

    v26 = *(v23 + 16);
    result = 1;
    if (v26 <= 11804)
    {
      if (v26 > 2009)
      {
        if (((v26 - 2010) > 0x3D || ((1 << (v26 + 38)) & 0x2488004000005401) == 0) && ((v26 - 2101) > 0x31 || ((1 << (v26 - 53)) & 0x2000000000011) == 0) && (v26 - 3015) >= 2)
        {
          return result;
        }

        goto LABEL_81;
      }

      if (v26 <= 0x38)
      {
        if (((1 << v26) & 0x110000000000EEELL) != 0)
        {
          goto LABEL_81;
        }

        if (((1 << v26) & 0x20000000010) != 0)
        {
          LOBYTE(v26) = 3;
          goto LABEL_82;
        }

        if (v26 == 8)
        {
          LOBYTE(v26) = 4;
          goto LABEL_82;
        }
      }

      if ((v26 - 61) > 0x27 || ((1 << (v26 - 61)) & 0x800000003FLL) == 0)
      {
        if (v26)
        {
          return result;
        }

LABEL_82:
        *(a2 + 56) = v26;
        return result;
      }

LABEL_81:
      LOBYTE(v26) = 1;
      goto LABEL_82;
    }

    if (v26 <= 15651)
    {
      if (v26 > 15329)
      {
        if ((v26 - 15562) <= 0x3A && ((1 << (v26 + 54)) & 0x401000040000001) != 0 || (v26 - 15330) <= 0x1E && ((1 << (v26 + 30)) & 0x40100001) != 0)
        {
          goto LABEL_81;
        }

        v27 = 15460;
        goto LABEL_75;
      }

      if (v26 > 15054)
      {
        if ((v26 - 15100) <= 0x32 && ((1 << (v26 + 4)) & 0x4000000000401) != 0 || (v26 - 15230) <= 0x19 && ((1 << (v26 - 126)) & 0x2000401) != 0)
        {
          goto LABEL_81;
        }

        v27 = 15055;
        goto LABEL_75;
      }

      if (v26 != 11805)
      {
        if (v26 == 12150)
        {
          goto LABEL_81;
        }

        v27 = 15030;
        goto LABEL_75;
      }

LABEL_72:
      LOBYTE(v26) = 7;
      goto LABEL_82;
    }

    if (v26 <= 18199)
    {
      if (v26 <= 15732)
      {
        v28 = v26 - 15652;
        if (v28 > 0x3A || ((1 << v28) & 0x400000000840101) == 0)
        {
          return result;
        }

        goto LABEL_81;
      }

      if (v26 == 15733 || v26 == 17150)
      {
        goto LABEL_81;
      }

      v27 = 18070;
    }

    else
    {
      if (v26 <= 19149)
      {
        if ((v26 - 18200) <= 0x28 && ((1 << (v26 - 24)) & 0x10002000001) != 0 || v26 == 19030)
        {
          goto LABEL_81;
        }

        v27 = 19090;
        goto LABEL_75;
      }

      if (v26 <= 90602)
      {
        if (v26 == 19150)
        {
          goto LABEL_81;
        }

        v27 = 19160;
        goto LABEL_75;
      }

      if (v26 == 90603)
      {
        goto LABEL_72;
      }

      if (v26 == 515621)
      {
        goto LABEL_81;
      }

      v27 = 515652;
    }

LABEL_75:
    if (v26 != v27)
    {
      return result;
    }

    goto LABEL_81;
  }

  return result;
}

void sub_1D0E61C78(uint64_t a1)
{
  v3 = (a1 + 40);
  sub_1D0E620B8(&v3);
  v2 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }
}

void sub_1D0E61CC0(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x276276276276277)
  {
    operator new();
  }

  sub_1D0C54BE8();
}

void sub_1D0E61D1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
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
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      *v6 = 0;
      *(a4 + 24) = *(v6 + 24);
      *(a4 + 48) = 0;
      *(a4 + 56) = 0;
      *(a4 + 40) = 0;
      *(a4 + 40) = *(v6 + 40);
      *(a4 + 56) = *(v6 + 56);
      *(v6 + 40) = 0;
      *(v6 + 48) = 0;
      *(v6 + 56) = 0;
      v7 = *(v6 + 64);
      v8 = *(v6 + 80);
      *(a4 + 96) = *(v6 + 96);
      *(a4 + 64) = v7;
      *(a4 + 80) = v8;
      v6 += 104;
      a4 += 104;
    }

    while (v6 != a3);
    do
    {
      sub_1D0E61C78(v5);
      v5 += 104;
    }

    while (v5 != a3);
  }
}

uint64_t sub_1D0E61DCC(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 104;
    sub_1D0E61C78(i - 104);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1D0E61E1C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    operator new();
  }

  sub_1D0C54BE8();
}

uint64_t sub_1D0E61E78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a4;
  v13 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  if (a2 == a3)
  {
    v12 = 1;
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
      *(a4 + 56) = *(v6 + 56);
      *(a4 + 40) = v8;
      *(a4 + 24) = v7;
      v6 += 72;
      a4 += 72;
    }

    while (v6 != a3);
    v14 = a4;
    v12 = 1;
    do
    {
      v9 = *v5;
      if (*v5)
      {
        *(v5 + 8) = v9;
        operator delete(v9);
      }

      v5 += 72;
    }

    while (v5 != a3);
  }

  return sub_1D0E61F4C(v11);
}

uint64_t sub_1D0E61F4C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1D0E61F84(a1);
  }

  return a1;
}

void sub_1D0E61F84(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    v3 = **(a1 + 16);
    do
    {
      v5 = *(v3 - 72);
      v3 -= 72;
      v4 = v5;
      if (v5)
      {
        *(v1 - 64) = v4;
        operator delete(v4);
      }

      v1 = v3;
    }

    while (v3 != v2);
  }
}

uint64_t sub_1D0E61FD4(uint64_t a1)
{
  sub_1D0E6200C(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1D0E6200C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    v5 = *(v2 - 72);
    *(a1 + 16) = v2 - 72;
    if (v5)
    {
      *(v2 - 64) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 72;
    }
  }
}

uint64_t sub_1D0E6206C(uint64_t a1)
{
  v4 = (a1 + 40);
  sub_1D0E620B8(&v4);
  v2 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_1D0E620B8(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1D0E6210C(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1D0E6210C(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 72);
      v4 -= 72;
      v5 = v6;
      if (v6)
      {
        *(v2 - 64) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

void sub_1D0E62164(int8x16_t *a1)
{
  exception = __cxa_allocate_exception(0x38uLL);
  sub_1D0E621A8(exception, a1);
  __cxa_throw(v3, &unk_1F4CF0A68, sub_1D0E62224);
}

int8x16_t sub_1D0E621A8(uint64_t a1, int8x16_t *a2)
{
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *a1 = &unk_1F4CF0AC0;
  *(a1 + 8) = &unk_1F4CF0AF0;
  *(a1 + 16) = &unk_1F4CF0B18;
  *(a1 + 48) = a2[1].i32[0];
  result = vextq_s8(*a2, *a2, 8uLL);
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1D0E62224(uint64_t a1)
{
  *(a1 + 16) = &unk_1F4CDEDE8;
  sub_1D0D278F8((a1 + 24));
  std::exception::~exception((a1 + 8));
  return a1;
}

void sub_1D0E6243C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1D0D278F8(&a9);
  sub_1D0D278F8(&a10);
  (*(*v10 + 24))(v10);
  _Unwind_Resume(a1);
}

void sub_1D0E624A8(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x38uLL);
  sub_1D0E6275C(exception, a1);
  __cxa_throw(exception, &unk_1F4CF0A68, sub_1D0E62224);
}

void sub_1D0E62504(uint64_t a1)
{
  *(a1 + 16) = &unk_1F4CDEDE8;
  sub_1D0D278F8((a1 + 24));
  std::exception::~exception((a1 + 8));

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0E62578(uint64_t a1)
{
  *(a1 + 8) = &unk_1F4CDEDE8;
  sub_1D0D278F8((a1 + 16));

  std::exception::~exception(a1);
}

void sub_1D0E625D4(uint64_t a1)
{
  *(a1 + 8) = &unk_1F4CDEDE8;
  sub_1D0D278F8((a1 + 16));
  std::exception::~exception(a1);

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0E62658(void *a1)
{
  *a1 = &unk_1F4CDEDE8;
  v1 = (a1 - 1);
  sub_1D0D278F8(a1 + 1);

  std::exception::~exception(v1);
}

void sub_1D0E626B0(void *a1)
{
  *a1 = &unk_1F4CDEDE8;
  v1 = (a1 - 1);
  sub_1D0D278F8(a1 + 1);
  std::exception::~exception(v1);

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0E62724(std::exception *a1)
{
  std::exception::~exception(a1);

  JUMPOUT(0x1D387ECA0);
}

uint64_t sub_1D0E6275C(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4CDEDB8;
  *(a1 + 8) = &unk_1F4CF0B38;
  v4 = *(a2 + 24);
  *(a1 + 16) = &unk_1F4CDEDE8;
  *(a1 + 24) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 32) = v5;
  *a1 = &unk_1F4CF0AC0;
  *(a1 + 8) = &unk_1F4CF0AF0;
  *(a1 + 16) = &unk_1F4CF0B18;
  return a1;
}

void trackrun::GEOMapRunningTrackDataEvent::~GEOMapRunningTrackDataEvent(trackrun::GEOMapRunningTrackDataEvent *this)
{
  *this = &unk_1F4CF0B60;
  v1 = (this + 8);
  sub_1D0E62CA0(&v1);
}

{
  *this = &unk_1F4CF0B60;
  v1 = (this + 8);
  sub_1D0E62CA0(&v1);
}

{
  *this = &unk_1F4CF0B60;
  v2 = (this + 8);
  sub_1D0E62CA0(&v2);
  MEMORY[0x1D387ECA0](this, 0x10A1C40BB09DC8BLL);
}

void trackrun::VisitEvent::~VisitEvent(void **this)
{
  *this = &unk_1F4CF0B90;
  if (*(this + 279) < 0)
  {
    operator delete(this[32]);
  }

  if (*(this + 255) < 0)
  {
    operator delete(this[29]);
  }
}

{
  trackrun::VisitEvent::~VisitEvent(this);

  JUMPOUT(0x1D387ECA0);
}

void trackrun::WorkoutSessionEvent::~WorkoutSessionEvent(void **this)
{
  *this = &unk_1F4CF0BC0;
  if (*(this + 87) < 0)
  {
    operator delete(this[8]);
  }
}

{
  *this = &unk_1F4CF0BC0;
  if (*(this + 87) < 0)
  {
    operator delete(this[8]);
  }
}

{
  *this = &unk_1F4CF0BC0;
  if (*(this + 87) < 0)
  {
    operator delete(this[8]);
  }

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0E62CA0(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 104;
        sub_1D0E61C78(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

trackrun::TrackRunParameters *trackrun::TrackRunParameters::TrackRunParameters(trackrun::TrackRunParameters *this, const trackrun::TrackRunPlatformInfo *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  *this = 0;
  sub_1D0B751F4(this + 8, "trackrun_output.bin");
  *(this + 16) = 1;
  sub_1D0B751F4(this + 40, "trackrun_debug.txt");
  *(this + 16) = 256;
  *(this + 34) = 256;
  v14 = 2;
  v15 = 0x40A3880000000000;
  v16 = 3;
  v17 = 0x40A3880000000000;
  v18 = 4;
  v19 = 0x4059000000000000;
  v4 = sub_1D0E62F60(this + 72, &v14, 3);
  *(this + 14) = 0x410E848000000000;
  *(this + 120) = 1;
  *(this + 8) = xmmword_1D0EC1CE0;
  *(this + 9) = xmmword_1D0EC1CF0;
  *(this + 10) = xmmword_1D0EC1D00;
  *(this + 22) = 0x3F50624DD2F1A9FCLL;
  *(this + 23) = 5;
  *(this + 24) = 0x4052C00000000000;
  *(this + 100) = 0;
  *(this + 202) = 0;
  *(this + 26) = 1;
  *(this + 108) = 256;
  *(this + 14) = xmmword_1D0E83260;
  *(this + 15) = xmmword_1D0EC1D10;
  *(this + 256) = 0;
  if (cnprint::CNPrinter::GetLogLevel(v4) <= 1)
  {
    LOWORD(v14) = 13;
    v13 = 1;
    cnprint::CNPrinter::Print(&v14, &v13, "Hardware platform %hu received", v5, v6, v7, v8, v9, *a2);
  }

  if (*a2)
  {
    *this = *(a2 + 15) == 2;
    v10 = 1;
  }

  else
  {
    LOWORD(v14) = 13;
    v13 = 5;
    cnprint::CNPrinter::Print(&v14, &v13, "Error: Unsupported hardware type %hu detected", v5, v6, v7, v8, v9, 0);
    v10 = 0;
  }

  *(this + 256) = v10;
  v11 = *MEMORY[0x1E69E9840];
  return this;
}

void sub_1D0E62F08(_Unwind_Exception *a1)
{
  sub_1D0BCB594(v1 + 72);
  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1D0E62F60(uint64_t a1, int *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 16 * a3;
    do
    {
      sub_1D0E62FD8(a1, a2);
      a2 += 4;
      v5 -= 16;
    }

    while (v5);
  }

  return a1;
}

uint64_t *sub_1D0E62FD8(void *a1, int *a2)
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
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
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

uint64_t trackrun::TrackRunLaneEstimator::Configure(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 1497) == 1)
  {
    v27 = 13;
    v26 = 2;
    v8 = "TrackRunLaneEstimator::Configure() called more than once";
  }

  else
  {
    v9 = *a2;
    if (*a2)
    {
      if (*(v9 + 256))
      {
        *(a1 + 1504) = v9;
        v10 = *(v9 + 128);
        if (v10 < 0.0 || v10 > 1.0 || (*(v9 + 128) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
        {
          goto LABEL_42;
        }

        v13 = *(v9 + 144);
        v14 = v13 < 0.0 || v13 > 1.0;
        if (v14 || (*(v9 + 144) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
        {
          goto LABEL_42;
        }

        v16 = *(v9 + 152);
        v17 = v16 < 0.0 || v16 > 1.0;
        v18 = v17 || (*(v9 + 152) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000;
        if (v18 || ((v19 = *(v9 + 160), v19 >= 0.0) ? (v20 = v19 > 1.0) : (v20 = 1), !v20 ? (v21 = (*(v9 + 160) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000) : (v21 = 1), v21 || ((v22 = *(v9 + 176), v22 >= 0.0) ? (v23 = v22 > 1.0) : (v23 = 1), v23 || (*&v22 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)))
        {
LABEL_42:
          v27 = 13;
          v26 = 4;
          v8 = "TrackRunPositionContextEstimator::Configure() called with invalid trackrun parameter probabilities";
        }

        else
        {
          if (fabs(v13 + v16 + v19 + -1.0) <= 0.000000015)
          {
            *(a1 + 1497) = 1;
            v27 = 13;
            v26 = 2;
            cnprint::CNPrinter::Print(&v27, &v26, "TrackRunLaneEstimator configured successfully", a4, a5, a6, a7, a8, v25);
            return 0;
          }

          v27 = 13;
          v26 = 4;
          v8 = "TrackRunPositionContextEstimator::Configure() lane transition probabilities don't add up to 1.0";
        }
      }

      else
      {
        v27 = 13;
        v26 = 4;
        v8 = "TrackRunPositionContextEstimator::Configure() called with uninitialized trackrun parameters";
      }
    }

    else
    {
      v27 = 13;
      v26 = 4;
      v8 = "TrackRunPositionContextEstimator::Configure() called with null trackrun parameters";
    }
  }

  cnprint::CNPrinter::Print(&v27, &v26, v8, a4, a5, a6, a7, a8, v25);
  return 0xFFFFFFFFLL;
}

uint64_t trackrun::TrackRunLaneEstimator::Initialize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = MEMORY[0x1EEE9AC00](a1, a2, a3, a4);
  *(v4 + 1488) = 0x3DDB7CDFD9D7BDBBLL;
  v11 = v5[16];
  *(v4 + 1496) = v11;
  if (!v11)
  {
    LOWORD(v129) = 13;
    LOBYTE(v124) = 4;
    v15 = "TrackRunLaneEstimator::Initialize(), there is not at least one lane on the \t\t\t\t\t\tcurrent track, cannot initialize the lane estimator.";
    goto LABEL_61;
  }

  v12 = v4;
  v139 = 0x10000000CLL;
  v134 = &unk_1F4CDFFF8;
  v140 = v141;
  memset(v141, 0, sizeof(v141));
  v135 = v11;
  v136 = 1;
  v137 = v11;
  v138 = v11;
  v13 = *(v4 + 1504);
  if (*(v13 + 120) == 1)
  {
    v14 = 1.0 / v11;
  }

  else
  {
    v14 = *(v13 + 128);
  }

  if (v5[88] == 1)
  {
    if (v5[80])
    {
      LODWORD(v16) = v5[80] - 1;
      if (v16 >= v11 - 1)
      {
        v16 = (v11 - 1);
      }

      else
      {
        v16 = v16;
      }

      v14 = *(v13 + 136);
      goto LABEL_13;
    }

    LOWORD(v129) = 13;
    LOBYTE(v124) = 4;
    v15 = "TrackRunLaneEstimator::Initialize(), provided lane number is invalid. Cannot initialize.";
LABEL_61:
    cnprint::CNPrinter::Print(&v129, &v124, v15, v6, v7, v8, v9, v10, v65);
    return 0xFFFFFFFFLL;
  }

  v16 = 0;
LABEL_13:
  if (v11 == 1)
  {
    v141[0] = 1.0;
    v17 = 1.0;
    v18 = 1;
  }

  else
  {
    v19 = v16;
    v20 = v11;
    v21 = v141;
    do
    {
      if (v19)
      {
        *v21 = 1.0 / (v11 - 1) * (1.0 - v14);
      }

      else
      {
        v141[v16] = v14;
      }

      ++v21;
      --v19;
      --v20;
    }

    while (v20);
    v17 = v141[0];
    v18 = v11;
  }

  if (v11 != 1)
  {
    v22 = 1;
    do
    {
      v17 = v17 + v141[v22++];
    }

    while (v18 != v22);
  }

  if (fabs(v17 + -1.0) > 1.0e-10 && cnprint::CNPrinter::GetLogLevel(v4) <= 1)
  {
    LOWORD(v129) = 2;
    LOBYTE(v124) = 1;
    cnprint::CNPrinter::Print(&v129, &v124, "WARNING: HMM initialized with non-normalized probability vector.", v23, v24, v25, v26, v27, v65);
  }

  v28 = 1.0;
  sub_1D0E656D4(&v124, &v134);
  v125 = v11;
  v126 = 1;
  v127 = v11;
  v128 = v11;
  v131 = 0x10000000CLL;
  *&v29.f64[1] = 0xC0000000CLL;
  v130 = xmmword_1D0E83DD0;
  v129 = &unk_1F4CDFFF8;
  v132 = &v133;
  v29.f64[0] = 1.0 / v17;
  sub_1D0B8930C(&v124, &v129, v29);
  sub_1D0B894B0(v12 + 1208, &v129);
  sub_1D0B894B0(v12 + 1344, v12 + 1208);
  *(v12 + 1480) = 1;
  v35 = *(v12 + 1496);
  if (*(v12 + 1496))
  {
    v36 = 0.0;
    v37 = 0.0;
    if (v35 != 1)
    {
      v38 = *(v12 + 1504);
      v28 = v38[18];
      v39 = v38[19];
      v40 = v38[20];
      v41 = v35 + -3.0;
      if (v41 < 1.0)
      {
        v41 = 1.0;
      }

      v42 = v40 / v41;
      v43 = v39 + v40;
      if (v35 == 2)
      {
        v40 = 0.0;
      }

      if (v35 > 3)
      {
        v37 = v42;
      }

      else
      {
        v39 = v43;
        v37 = v40;
      }

      v36 = v39 * 0.5;
      if (v35 >= 3 && v37 > v36 + 0.000000015)
      {
        LOWORD(v129) = 13;
        LOBYTE(v124) = 4;
        cnprint::CNPrinter::Print(&v129, &v124, "TrackRunLaneEstimator::Initialize(), probability of moving by one lane is less than the probability of moving by more than one lane, \t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\trenormalizing to maintain proper transition matrix", v30, v31, v32, v33, v34, v65);
        v44 = 1.0;
        v45 = 1.0 - v28;
        if ((v35 - 1) >= 1.0)
        {
          v44 = (v35 - 1);
        }

        v36 = v45 / v44;
        v37 = v45 / v44;
      }
    }

    v111 = 0xC0000000CLL;
    v106 = &unk_1F4CF0DA0;
    v46 = v113;
    v112 = v113;
    v47 = v35 * v35;
    v107 = v35;
    v108 = v35;
    v109 = v35 * v35;
    v110 = v35;
    if ((v35 * v35) > 3)
    {
      v48 = &v113[v47];
      bzero(v113, 16 * ((v47 - 1) >> 1));
      *(v48 - 2) = 0;
      *(v48 - 1) = 0;
      v46 = v112;
    }

    else
    {
      bzero(v113, 8 * v47);
    }

    v49 = 0;
    v50 = v35 + 1;
    v51 = v35;
    do
    {
      v46[v49] = 0x3FF0000000000000;
      v49 += v50;
      --v51;
    }

    while (v51);
    v116 = 0xC0000000CLL;
    v114 = &unk_1F4CF0DA0;
    *&v52.f64[1] = 0xC00000090;
    v115 = xmmword_1D0EC1D30;
    v117 = &v118;
    v52.f64[0] = v28;
    sub_1D0B8930C(&v106, &v114, v52);
    v94[0] = 0xC0000000CLL;
    v89 = &unk_1F4CF0DA0;
    v94[1] = v95;
    v90 = v35;
    v91 = v35;
    v92 = v35 * v35;
    v93 = v35;
    __asm { FMOV            V0.2D, #1.0 }

    v66 = _Q0;
    if (v47 > 3)
    {
      memset_pattern16(v95, &unk_1D0E7F4B0, 16 * ((v47 - 1) >> 1));
      *&v94[v47] = v66;
    }

    else
    {
      memset_pattern16(v95, &unk_1D0E7F4B0, 8 * v47);
    }

    v86 = 0xC0000000CLL;
    v81 = &unk_1F4CF0DA0;
    v58 = v88;
    v87 = v88;
    v82 = v35;
    v83 = v35;
    v84 = v35 * v35;
    v85 = v35;
    if (v47 > 3)
    {
      v59 = &v88[v47];
      bzero(v88, 16 * ((v47 - 1) >> 1));
      *(v59 - 2) = 0;
      *(v59 - 1) = 0;
      v58 = v87;
    }

    else
    {
      bzero(v88, 8 * v47);
    }

    v60 = 0;
    v61 = v35;
    do
    {
      v58[v60] = 0x3FF0000000000000;
      v60 += v50;
      --v61;
    }

    while (v61);
    v98 = 0xC0000000CLL;
    v96 = &unk_1F4CF0DA0;
    v97 = xmmword_1D0EC1D30;
    v99 = &v100;
    sub_1D0BA5A78(&v89, &v81, &v96);
    v103 = 0xC0000000CLL;
    v101 = &unk_1F4CF0DA0;
    *&v62.f64[1] = 0xC00000090;
    v102 = xmmword_1D0EC1D30;
    v104 = &v105;
    v62.f64[0] = v37;
    sub_1D0B8930C(&v96, &v101, v62);
    v121 = 0xC0000000CLL;
    v120 = xmmword_1D0EC1D30;
    v119 = &unk_1F4CF0DA0;
    v122 = &v123;
    sub_1D0B88838(&v114, &v101, &v119);
    v72[0] = 0x10000000BLL;
    v67 = &unk_1F4CF0DE8;
    v72[1] = v73;
    v68 = v35 - 1;
    v69 = 1;
    v70 = v35 - 1;
    v71 = v35 - 1;
    if (v35 > 4)
    {
      memset_pattern16(v73, &unk_1D0E7F4B0, 16 * ((v35 - 2) >> 1));
      *&v72[(v35 - 1)] = v66;
    }

    else if (v35 != 1)
    {
      memset_pattern16(v73, &unk_1D0E7F4B0, 8 * (v35 - 1));
    }

    v76 = 0x10000000BLL;
    v74 = &unk_1F4CF0DE8;
    *&v63.f64[1] = 0xB0000000BLL;
    v75 = xmmword_1D0EC1D40;
    v77 = &v78;
    v63.f64[0] = v36 - v37;
    sub_1D0B8930C(&v67, &v74, v63);
    sub_1D0E65BE8(v79, &v74);
    sub_1D0E65950(v80);
  }

  LOWORD(v129) = 13;
  LOBYTE(v124) = 4;
  cnprint::CNPrinter::Print(&v129, &v124, "TrackRunLaneEstimator::Initialize(),invalid lane count,%d,could not initialize HMM", v30, v31, v32, v33, v34, 0);
  return 0xFFFFFFFFLL;
}

void sub_1D0E63E94(_Unwind_Exception *a1)
{
  sub_1D0E65CCC(&STACK[0x5E8]);
  STACK[0x2C88] = &unk_1F4CD5E28;
  sub_1D0E65CCC(&STACK[0xBC0]);
  _Unwind_Resume(a1);
}

uint64_t trackrun::TrackRunLaneEstimator::UpdateLaneEstimate(trackrun::TrackRunLaneEstimator *this)
{
  if (*(this + 1498) != 1)
  {
    return 0;
  }

  v61[12] = v6;
  *&v61[13] = v5;
  v61[14] = v4;
  v61[15] = v3;
  v61[20] = v1;
  v61[21] = v2;
  v8 = 144;
  if (!*(this + 370))
  {
    v8 = 8;
  }

  v59 = 0x10000000CLL;
  v57 = &unk_1F4CDFFF8;
  v58 = xmmword_1D0E83DD0;
  v60 = v61;
  sub_1D0B894B0(&v57, this + v8 + 1200);
  v14 = v58;
  v15 = DWORD1(v58);
  if (v58 <= DWORD1(v58))
  {
    v16 = DWORD1(v58);
  }

  else
  {
    v16 = v58;
  }

  if (v58 && DWORD1(v58) && v16)
  {
    v17 = 0;
    v18 = v60;
    do
    {
      v19 = *(v18 + (v17 >> 29));
      if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        return 0;
      }

      if (v19 >= 0.0)
      {
        v20 = *(v18 + (v17 >> 29));
      }

      else
      {
        v20 = 0.0;
      }

      if (v19 <= 1.0)
      {
        v21 = v20;
      }

      else
      {
        v21 = 1.0;
      }

      *(v18 + (v17 >> 29)) = v21;
      v17 += 0x100000000;
    }

    while (--v16);
  }

  if (v15)
  {
    v22 = 0;
    v23 = v60;
    v24 = 1;
    do
    {
      v25 = *&v23[(v14 * v22)];
      v26 = v24;
      v27 = v14 - 1;
      if (v14 >= 2)
      {
        do
        {
          v25 = v25 + *&v23[v26++];
          --v27;
        }

        while (v27);
      }

      v56[v22++] = v25;
      v24 += v14;
    }

    while (v22 != v15);
    v5 = v56[0];
  }

  if (fabs(v5 + -1.0) > 0.000000015)
  {
    LOWORD(v52) = 13;
    LOBYTE(v47) = 4;
    cnprint::CNPrinter::Print(&v52, &v47, "TrackRunPositionContextEstimator::UpdateLaneEstimate() has lane probabilities that don't add up to 1.0,%.3lf,sum_lane_probability. Renormalizing...", v9, v10, v11, v12, v13, SLOBYTE(v5));
    v54 = 0x10000000CLL;
    v52 = &unk_1F4CDFFF8;
    v53 = xmmword_1D0E83DD0;
    v55 = v56;
    v29.f64[0] = 1.0 / v5;
    sub_1D0BC5ED4(&v57, &v52, v29);
    sub_1D0B894B0(&v57, &v52);
    v35 = DWORD1(v58);
    if (DWORD1(v58))
    {
      v36 = 0;
      v37 = v58;
      v38 = v60;
      v39 = 1;
      do
      {
        v40 = *&v38[(v37 * v36)];
        v41 = v39;
        v42 = v37 - 1;
        if (v37 >= 2)
        {
          do
          {
            v40 = v40 + *&v38[v41++];
            --v42;
          }

          while (v42);
        }

        v56[v36++] = v40;
        v39 += v37;
      }

      while (v36 != v35);
      v43 = v56[0] + -1.0;
    }

    else
    {
      v43 = NAN;
    }

    if (fabs(v43) > 0.000000015)
    {
      LOWORD(v52) = 13;
      LOBYTE(v47) = 4;
      cnprint::CNPrinter::Print(&v52, &v47, "TrackRunPositionContextEstimator::UpdateLaneEstimate() has lane probabilities that don't add up to 1.0. Cannot update lane estimate.", v30, v31, v32, v33, v34, v46);
      return 0;
    }
  }

  v54 = 0x100000001;
  v52 = &unk_1F4CDF418;
  *&v44 = 0x100000001;
  *(&v44 + 1) = 0x100000001;
  v53 = v44;
  v55 = v56;
  v49 = 0x100000001;
  v47 = &unk_1F4CDF460;
  v48 = v44;
  v50 = &v51;
  sub_1D0BBAD9C(&v57, &v52, &v47);
  v45 = *v50;
  if ((*(this + 1) & 1) == 0)
  {
    *(this + 1) = 1;
  }

  *this = v45 + 1;
  return 1;
}

void trackrun::TrackRunLaneEstimator::HandleEvidence(trackrun::TrackRunLaneEstimator *a1, double *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2[1];
  if (a2[2] > 0.000000015 && ((v9 = fabs(*a2), v8 > 0.000000015) ? (v10 = v8 < 20.0) : (v10 = 0), v10 ? (v11 = v9 < 20.0) : (v11 = 0), v11))
  {
    if (!trackrun::TrackRunLaneEstimator::HmmPredictAndUpdate(a1, a2, a3, a4, a5, a6, a7, a8))
    {

      trackrun::TrackRunLaneEstimator::UpdateLaneEstimate(a1);
    }
  }

  else
  {
    v15 = 13;
    v14 = 4;
    cnprint::CNPrinter::Print(&v15, &v14, "Across track distance evidence invalid. Cannot inject into the HMM.", a4, a5, a6, a7, a8, v13);
  }
}

uint64_t trackrun::TrackRunLaneEstimator::HmmPredictAndUpdate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v155 = *MEMORY[0x1E69E9840];
  LOBYTE(v121) = 0;
  v126 = 0;
  *v154 = 0;
  *&v154[3] = 0;
  *&v154[7] = *(a2 + 24);
  v116 = 0;
  *v117 = *v154;
  *&v117[15] = *&v154[15];
  v118 = 0;
  memset(v120, 0, sizeof(v120));
  v119 = 0;
  if (*(a1 + 1576))
  {
    v121 = &unk_1F4CF0CE0;
    v122 = *(a1 + 1520);
    v123 = *(a1 + 1536);
    v124 = *(a1 + 1552);
    v125 = *(a1 + 1568);
    v126 = 1;
  }

  v10 = trackrun::TrackRunLaneEstimator::HmmPredict(a1, &v116, a3, a4, a5, a6, a7, a8);
  *&v106 = 0;
  *(&v106 + 1) = 0x7FF8000000000000;
  v112 = 0x10000000CLL;
  v107 = &unk_1F4CDFFF8;
  v113 = v114;
  memset(v114, 0, sizeof(v114));
  v115 = 0;
  v16 = *(a1 + 1496);
  v108 = v16;
  v109 = 1;
  v110 = v16;
  v111 = v16;
  v17 = *(a2 + 16);
  if (fabs(v17) == INFINITY || v17 <= 0.000000015)
  {
    LOWORD(v97) = 13;
    LOBYTE(v149) = 4;
    cnprint::CNPrinter::Print(&v97, &v149, "TrackRunPositionContextEstimator::HmmPredictAndUpdate() failed. Provided evidence has standard deviation with a value of zero or inf,%.1lf", v11, v12, v13, v14, v15, SLOBYTE(v17));
LABEL_71:
    result = 0xFFFFFFFFLL;
    goto LABEL_72;
  }

  if (v16)
  {
    v18 = 0;
    v19 = *(a2 + 8);
    v20 = INFINITY;
    do
    {
      if (v20 >= *a2 + v18 * v19)
      {
        v20 = *a2 + v18 * v19;
      }

      ++v18;
    }

    while (v16 != v18);
  }

  else
  {
    v20 = INFINITY;
  }

  v21 = *(a2 + 16);
  if (v20 > v17)
  {
    v17 = v20;
  }

  v22 = v17;
  v24 = cnstatistics::NormalCDF(v10, *a2 + *(a2 + 8) * -0.5, 0.0, v17);
  LOBYTE(v25) = *(a1 + 1496);
  if (v25)
  {
    v26 = v24;
    v27 = 0;
    do
    {
      v28 = cnstatistics::NormalCDF(v23, *a2 + (v27 + 0.5) * *(a2 + 8), 0.0, v22);
      v29 = *(*(a1 + 1504) + 176);
      if (v29 <= v28 - v26)
      {
        v29 = v28 - v26;
      }

      *&v113[8 * v27++] = v29;
      v25 = *(a1 + 1496);
      v26 = v28;
    }

    while (v27 < v25);
  }

  v101 = 0x10000000CLL;
  v99 = &unk_1F4CDFFF8;
  v102 = v103;
  v100 = xmmword_1D0E83DD0;
  memset(v103, 0, sizeof(v103));
  v104 = 0;
  v105 = *(a2 + 24);
  v115 = v25;
  v98 = v106;
  sub_1D0B894B0(&v99, &v107);
  v104 = v115;
  v97 = sub_1D0E654D4;
  if (*(a1 + 1480) == 1)
  {
    sub_1D0B894B0(a1 + 1208, a1 + 1344);
  }

  v135 = 0x100000001;
  *&v30 = 0x100000001;
  *(&v30 + 1) = 0x100000001;
  v134 = v30;
  v133[12] = &unk_1F4CF0E78;
  v136 = &v137;
  v137 = sub_1D0E654D4;
  v131 = 0x10000000CLL;
  v130 = v30;
  v129 = &unk_1F4CF0F00;
  v132 = v133;
  v133[0] = &v98;
  v31 = *(a1 + 1216);
  v32 = *(a1 + 1220);
  sub_1D0B95DC8(v127, &v129);
  if (v31 <= v32)
  {
    v33 = v32;
  }

  else
  {
    v33 = v31;
  }

  if (v32)
  {
    _ZF = v31 == 0;
  }

  else
  {
    _ZF = 1;
  }

  if (_ZF)
  {
    v35 = 0;
  }

  else
  {
    v35 = v33;
  }

  v36 = *(a1 + 1488);
  if (!*(a1 + 1216) || !*(a1 + 1220))
  {
    if ((v35 & 0x80000000) != 0)
    {
      __assert_rtn("Ones", "cnmatrix.h", 2317, "nr >= 0");
    }

    v146 = 0x10000000CLL;
    v144 = &unk_1F4CDFFF8;
    v147 = v148;
    *&v145 = v35 | 0x100000000;
    DWORD2(v145) = v35;
    HIDWORD(v145) = v35;
    if (v35 > 3)
    {
      memset_pattern16(v148, &unk_1D0E7F4B0, 16 * ((v35 - 1) >> 1));
      __asm { FMOV            V0.2D, #1.0 }

      *(&v146 + v35) = _Q0;
    }

    else if (v35)
    {
      memset_pattern16(v148, &unk_1D0E7F4B0, (8 * v35));
    }

    v151 = 0x10000000CLL;
    v44.n128_u64[1] = 0xC0000000CLL;
    v150 = xmmword_1D0E83DD0;
    v149 = &unk_1F4CDFFF8;
    v152 = v153;
    v44.n128_f64[0] = 1.0 / v35;
    goto LABEL_46;
  }

  v151 = 0x10000000CLL;
  v150 = xmmword_1D0E83DD0;
  v149 = &unk_1F4CDFFF8;
  v152 = v153;
  v37 = sub_1D0B94BA0(a1 + 1208, 1, &v149);
  v38 = *v152;
  if (fabs(*v152 + -1.0) > v36)
  {
    if (cnprint::CNPrinter::GetLogLevel(v37) <= 1)
    {
      LOWORD(v149) = 2;
      LOBYTE(v144) = 1;
      cnprint::CNPrinter::Print(&v149, &v144, "WARNING: HMM update passed a non-normalized probability vector.", v39, v40, v41, v42, v43, v96);
    }

    if ((v35 & 0x80000000) != 0)
    {
      __assert_rtn("Reshape", "cnmatrix.h", 2936, "nr >= 0");
    }

    v44 = sub_1D0E656D4(&v144, a1 + 1208);
    *&v145 = v35 | 0x100000000;
    DWORD2(v145) = v35;
    HIDWORD(v145) = v35;
    v151 = 0x10000000CLL;
    v150 = xmmword_1D0E83DD0;
    v149 = &unk_1F4CDFFF8;
    v152 = v153;
    v44.n128_f64[0] = 1.0 / v38;
LABEL_46:
    sub_1D0B8930C(&v144, &v149, v44);
    goto LABEL_47;
  }

  if ((v35 & 0x80000000) != 0)
  {
    __assert_rtn("Reshape", "cnmatrix.h", 2936, "nr >= 0");
  }

  sub_1D0E656D4(&v149, a1 + 1208);
  *&v150 = v35 | 0x100000000;
  DWORD2(v150) = v35;
  HIDWORD(v150) = v35;
LABEL_47:
  sub_1D0B894B0(a1 + 1208, &v149);
  sub_1D0E656D4(&v149, a1 + 1208);
  v49 = *v136;
  v146 = 0x10000000CLL;
  v144 = &unk_1F4CDFFF8;
  v145 = xmmword_1D0E83DD0;
  v147 = v148;
  v50 = v49(*v128, &v144);
  if (v50)
  {
    LOWORD(v138) = 2;
    v143 = 4;
    cnprint::CNPrinter::Print(&v138, &v143, "ERROR: HMM emission function failed.", v51, v52, v53, v54, v55, v96);
    v62 = 29;
LABEL_70:
    LOWORD(v149) = 13;
    LOBYTE(v144) = 4;
    cnprint::CNPrinter::Print(&v149, &v144, "failed to update,code,%d", v57, v58, v59, v60, v61, v62);
    goto LABEL_71;
  }

  if (v35)
  {
    v63 = 0.0;
    v64 = v147;
    v65 = v147;
    v66 = v35;
    do
    {
      v67 = *v65;
      if (*v65 < 0.0 || v67 > 1.0)
      {
        LOWORD(v138) = 2;
        v143 = 4;
        cnprint::CNPrinter::Print(&v138, &v143, "ERROR: HMM emission probability matrix is invalid.", v51, v52, v53, v54, v55, v96);
        goto LABEL_69;
      }

      v63 = v63 + v67;
      ++v65;
      --v66;
    }

    while (v66);
    if (fabs(v63) > v36)
    {
      v69 = v152;
      do
      {
        v70 = *v64++;
        v56.n128_f64[0] = v70 * *v69;
        *v69++ = v56.n128_f64[0];
        --v35;
      }

      while (v35);
      goto LABEL_62;
    }

LABEL_68:
    LOWORD(v138) = 2;
    v143 = 4;
    cnprint::CNPrinter::Print(&v138, &v143, "ERROR: HMM emission probability matrix is null matrix", v51, v52, v53, v54, v55, v96);
LABEL_69:
    v62 = 30;
    goto LABEL_70;
  }

  if (v36 >= 0.0)
  {
    goto LABEL_68;
  }

LABEL_62:
  v71 = DWORD1(v150);
  if (DWORD1(v150))
  {
    v72 = 0;
    v73 = v150;
    v74 = v152;
    v75 = v150 - 1;
    v76 = 1;
    do
    {
      v77 = v74[v73 * v72];
      v78 = v76;
      v79 = v75;
      if (v73 >= 2)
      {
        do
        {
          v77 = v77 + v74[v78++];
          --v79;
        }

        while (v79);
      }

      v142[v72++] = v77;
      v76 += v73;
    }

    while (v72 != v71);
    v56.n128_f64[0] = v142[0];
  }

  if (fabs(v56.n128_f64[0]) < 2.22044605e-16)
  {
    if (cnprint::CNPrinter::GetLogLevel(v50) <= 1)
    {
      LOWORD(v138) = 2;
      v143 = 1;
      cnprint::CNPrinter::Print(&v138, &v143, "HMM state is null vector after update; revert to input state", v82, v83, v84, v85, v86, v96);
    }

    v56 = sub_1D0B894B0(&v149, a1 + 1208);
    v87 = DWORD1(v150);
    if (DWORD1(v150))
    {
      v88 = 0;
      v89 = v150;
      v90 = v152;
      v91 = v150 - 1;
      v92 = 1;
      do
      {
        v93 = v90[v89 * v88];
        v94 = v92;
        v95 = v91;
        if (v89 >= 2)
        {
          do
          {
            v93 = v93 + v90[v94++];
            --v95;
          }

          while (v95);
        }

        v142[v88++] = v93;
        v92 += v89;
      }

      while (v88 != v87);
      v56.n128_f64[0] = v142[0];
    }
  }

  v140 = 0x10000000CLL;
  v139 = xmmword_1D0E83DD0;
  v138 = &unk_1F4CDFFF8;
  v141 = v142;
  v56.n128_f64[0] = 1.0 / v56.n128_f64[0];
  sub_1D0B8930C(&v149, &v138, v56);
  sub_1D0B894B0(&v149, &v138);
  sub_1D0B894B0(a1 + 1344, &v149);
  result = 0;
  *(a1 + 1480) = 1;
LABEL_72:
  v81 = *MEMORY[0x1E69E9840];
  return result;
}

__n128 trackrun::TrackRunLaneEstimator::SetTrackRunHintEvent(__n128 *this, const trackrun::TrackRunHintEvent *a2)
{
  if (this[98].n128_u8[8] == 1)
  {
    result = *(a2 + 8);
    v3 = *(a2 + 24);
    v4 = *(a2 + 40);
    this[98].n128_u8[0] = *(a2 + 56);
    this[97] = v4;
    this[96] = v3;
    this[95] = result;
  }

  else
  {
    this[94].n128_u64[1] = &unk_1F4CF0CE0;
    result = *(a2 + 8);
    v5 = *(a2 + 24);
    v6 = *(a2 + 40);
    this[98].n128_u8[0] = *(a2 + 56);
    this[97] = v6;
    this[96] = v5;
    this[95] = result;
    this[98].n128_u8[8] = 1;
  }

  return result;
}

uint64_t trackrun::TrackRunLaneEstimator::HmmPredict(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*(a1 + 1498) & 1) == 0)
  {
    LOWORD(v76) = 13;
    LOBYTE(v90) = 4;
    v41 = "Failed to predict and update HMM, Uninitialized";
    v42 = &v76;
    v43 = &v90;
LABEL_53:
    cnprint::CNPrinter::Print(v42, v43, v41, a4, a5, a6, a7, a8, v75);
    return 0xFFFFFFFFLL;
  }

  v82 = 0xC0000000CLL;
  v77 = &unk_1F4CF0DA0;
  v83 = v84;
  bzero(v84, 0x480uLL);
  for (i = 56; i != 1304; i += 104)
  {
    *(&v76 + i) = 0x3FF0000000000000;
  }

  v76 = *(a2 + 8);
  v78 = *(a1 + 1496);
  v79 = v78;
  v80 = v78 * v78;
  v81 = v78;
  v84[1152] = v78;
  sub_1D0B894B0(&v77, a1 + 8);
  if (*(a2 + 112) == 1)
  {
    v12 = *(a2 + 104);
    if (v12 <= 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = *(a2 + 104);
    }

    if (v12 > *(a1 + 1496))
    {
      v13 = *(a1 + 1496);
    }

    if (*(a1 + 1496))
    {
      v14 = v13;
    }

    else
    {
      v14 = *(a2 + 104);
    }

    if (cnprint::CNPrinter::GetLogLevel(v11) <= 1)
    {
      LOWORD(v90) = 13;
      LOBYTE(v95) = 1;
      cnprint::CNPrinter::Print(&v90, &v95, "HMM Prioritizing lane %d", v15, v16, v17, v18, v19, v14);
    }

    v20 = v79;
    if (v79)
    {
      v21 = 0;
      v22 = 0;
      v23 = *(*(a1 + 1504) + 168);
      v24 = v14 - 1;
      if (!v14)
      {
        v24 = 0;
      }

      v25 = v83;
      v26 = v81;
      v27 = v78;
      do
      {
        if (v27)
        {
          v28 = (1.0 - v23) / (1.0 - *&v25[8 * v24 + 8 * v22 * v26]);
          v29 = v21;
          v30 = v24;
          v31 = v27;
          do
          {
            v32 = v28 * *&v25[8 * v29];
            if (!v30)
            {
              v32 = v23;
            }

            *&v25[8 * v29] = v32;
            --v30;
            ++v29;
            --v31;
          }

          while (v31);
        }

        ++v22;
        v21 += v26;
      }

      while (v22 != v20);
    }
  }

  if (!*(a1 + 1480))
  {
    sub_1D0B894B0(a1 + 1344, a1 + 1208);
  }

  v33 = *(a1 + 1352);
  v34 = *(a1 + 1356);
  if (v33)
  {
    v35 = v34 == 0;
  }

  else
  {
    v35 = 1;
  }

  v36 = v35;
  if (v33 <= v34)
  {
    v37 = *(a1 + 1356);
  }

  else
  {
    v37 = *(a1 + 1352);
  }

  if (v36)
  {
    v38 = 0;
  }

  else
  {
    v38 = v37;
  }

  if (v36 == 1)
  {
    v97 = 0x10000000CLL;
    v95 = &unk_1F4CDFFF8;
    v98 = v99;
    v96 = xmmword_1D0E7F490;
    v92 = 0x10000000CLL;
    *&v39.f64[1] = 0xC0000000CLL;
    v91 = xmmword_1D0E83DD0;
    v90 = &unk_1F4CDFFF8;
    v93 = v94;
    v39.f64[0] = INFINITY;
    v40 = &v95;
LABEL_47:
    sub_1D0B8930C(v40, &v90, v39);
    goto LABEL_50;
  }

  v44 = *(a1 + 1488);
  v92 = 0x10000000CLL;
  v91 = xmmword_1D0E83DD0;
  v90 = &unk_1F4CDFFF8;
  v93 = v94;
  v45 = sub_1D0B94BA0(a1 + 1344, 1, &v90);
  v46 = *v93;
  if (fabs(*v93 + -1.0) > v44)
  {
    if (cnprint::CNPrinter::GetLogLevel(v45) <= 1)
    {
      LOWORD(v90) = 2;
      LOBYTE(v95) = 1;
      cnprint::CNPrinter::Print(&v90, &v95, "WARNING: HMM prediction passed a non-normalized probability vector.", v47, v48, v49, v50, v51, v75);
    }

    if ((v37 & 0x80000000) == 0)
    {
      sub_1D0E656D4(&v95, a1 + 1344);
      *&v96 = v37 | 0x100000000;
      DWORD2(v96) = v37;
      HIDWORD(v96) = v37;
      v92 = 0x10000000CLL;
      *&v39.f64[1] = 0xC0000000CLL;
      v91 = xmmword_1D0E83DD0;
      v90 = &unk_1F4CDFFF8;
      v93 = v94;
      v39.f64[0] = 1.0 / v46;
      goto LABEL_47;
    }

LABEL_70:
    __assert_rtn("Reshape", "cnmatrix.h", 2936, "nr >= 0");
  }

  if ((v37 & 0x80000000) != 0)
  {
    goto LABEL_70;
  }

  sub_1D0E656D4(&v90, a1 + 1344);
  *&v91 = v37 | 0x100000000;
  DWORD2(v91) = v37;
  HIDWORD(v91) = v37;
LABEL_50:
  sub_1D0B894B0(a1 + 1344, &v90);
  *(a1 + 1480) = 1;
  v92 = 0xC0000000CLL;
  v91 = xmmword_1D0EC1D30;
  v90 = &unk_1F4CF0DA0;
  v93 = v94;
  v58 = sub_1D0E65434(&v76, &v90, v52, v53, v54, v55, v56, v57);
  if (v58)
  {
    LOWORD(v95) = 2;
    LOBYTE(v85) = 4;
    cnprint::CNPrinter::Print(&v95, &v85, "ERROR: HMM transition probability function failed.", v59, v60, v61, v62, v63, v75);
    v64 = 27;
LABEL_52:
    LOWORD(v90) = 13;
    LOBYTE(v95) = 4;
    v75 = v64;
    v41 = "failed to predict,code,%d";
    v42 = &v90;
    v43 = &v95;
    goto LABEL_53;
  }

  if (v38)
  {
    v66 = 0;
    v67 = 0;
    v68 = v93;
LABEL_56:
    v69 = 0.0;
    v70 = v68;
    v71 = v38;
    while (1)
    {
      v72 = *v70;
      if (*v70 < 0.0 || v72 > 1.0)
      {
        break;
      }

      v69 = v69 + v72;
      ++v70;
      if (!--v71)
      {
        if (fabs(v69 + -1.0) <= *(a1 + 1488))
        {
          ++v66;
          v68 += SHIDWORD(v91);
          v67 = v66 >= v38;
          if (v66 != v38)
          {
            goto LABEL_56;
          }
        }

        break;
      }
    }

    if (!v67)
    {
      if (cnprint::CNPrinter::GetLogLevel(v58) <= 1)
      {
        LOWORD(v95) = 2;
        LOBYTE(v85) = 1;
        cnprint::CNPrinter::Print(&v95, &v85, "ERROR: HMM transition probability matrix is invalid.", a4, a5, a6, a7, a8, v75);
      }

      v64 = 28;
      goto LABEL_52;
    }
  }

  v97 = 0x10000000CLL;
  v96 = xmmword_1D0E83DD0;
  v95 = &unk_1F4CDFFF8;
  v98 = v99;
  sub_1D0B89390(&v90, a1 + 1344, &v95);
  sub_1D0B894B0(a1 + 1208, &v95);
  v87 = 0x10000000CLL;
  v86 = xmmword_1D0E83DD0;
  v85 = &unk_1F4CDFFF8;
  v88 = &v89;
  sub_1D0B94BA0(a1 + 1208, 1, &v85);
  v74.f64[0] = 1.0 / *v88;
  v97 = 0x10000000CLL;
  v96 = xmmword_1D0E83DD0;
  v95 = &unk_1F4CDFFF8;
  v98 = v99;
  sub_1D0B8930C(a1 + 1208, &v95, v74);
  sub_1D0B894B0(a1 + 1208, &v95);
  result = 0;
  *(a1 + 1480) = 0;
  return result;
}

uint64_t sub_1D0E65434(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 1208);
  if (v8 < 0xD)
  {
    a2[2] = v8;
    a2[3] = v8;
    a2[4] = v8 * v8;
    a2[5] = v8;
    sub_1D0B894B0(a2, a1 + 16);
    return 0;
  }

  else
  {
    v12 = 13;
    v11 = 4;
    v9 = *(a1 + 8) + *a1;
    cnprint::CNPrinter::Print(&v12, &v11, "time,%.3lf,t-function failure on line %d: %s() %s", a4, a5, a6, a7, a8, SLOBYTE(v9));
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_1D0E654D4(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 152);
  if (v8 <= 0xC)
  {
    if (!*(a1 + 152))
    {
LABEL_20:
      a2[2] = v8;
      a2[3] = 1;
      a2[4] = v8;
      a2[5] = v8;
      sub_1D0B894B0(a2, a1 + 16);
      return 0;
    }

    v9 = *(a1 + 48);
    v10 = *(a1 + 152);
    while (1)
    {
      v11 = *v9 & 0x7FFFFFFFFFFFFFFFLL;
      v12 = *v9 <= -1 || (v11 - 0x10000000000000) >> 53 >= 0x3FF;
      if (v12 && (*v9 - 1) >= 0xFFFFFFFFFFFFFLL)
      {
        v14 = v11 == 0;
        *v9;
      }

      else
      {
        v14 = 1;
      }

      if (!v14 || *v9 > 1.0)
      {
        break;
      }

      ++v9;
      if (!--v10)
      {
        goto LABEL_20;
      }
    }

    v22 = 13;
    v21 = 4;
    v18 = *(a1 + 8) + *a1;
    cnprint::CNPrinter::Print(&v22, &v21, "time,%.3lf,e-function failure on line %d: %s() %s", a4, a5, a6, a7, a8, SLOBYTE(v18));
  }

  else
  {
    v20 = 13;
    v19 = 4;
    v17 = *(a1 + 8) + *a1;
    cnprint::CNPrinter::Print(&v20, &v19, "time,%.3lf,e-function failure on line %d: %s() %s", a4, a5, a6, a7, a8, SLOBYTE(v17));
  }

  return 0xFFFFFFFFLL;
}

_BYTE *trackrun::TrackRunLaneEstimator::Reset(_BYTE *this)
{
  this[1498] = 0;
  this[1496] = 0;
  if (this[1] == 1)
  {
    this[1] = 0;
  }

  if (this[1576] == 1)
  {
    this[1576] = 0;
  }

  return this;
}

void sub_1D0E65684(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  sub_1D0C51C04(a1, v2);
  v1 = *MEMORY[0x1E69E9840];
}

__n128 sub_1D0E656D4(uint64_t a1, uint64_t a2)
{
  result.n128_u64[0] = 0x10000000CLL;
  *(a1 + 24) = 0x10000000CLL;
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F4CDFFF8;
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
  if (v4 > 0xC)
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

void sub_1D0E65858(uint64_t a1)
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

void sub_1D0E65950(uint64_t a1)
{
  *(a1 + 24) = 0x3000000030;
  *a1 = &unk_1F4CF0E30;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 8) = xmmword_1D0EC1D50;
  sub_1D0E65B68();
}

void sub_1D0E659B4(_Unwind_Exception *exception_object)
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

void sub_1D0E659FC(void *a1)
{
  sub_1D0E65CCC(a1);

  JUMPOUT(0x1D387ECA0);
}

double sub_1D0E65BE8(uint64_t a1, uint64_t a2)
{
  *&result = 0xC0000000CLL;
  *(a1 + 24) = 0xC0000000CLL;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F4CF0DA0;
  v4 = *(a2 + 8);
  v3 = *(a2 + 12);
  *(a1 + 8) = v4;
  *(a1 + 12) = v3;
  v5 = v3 * v4;
  *(a1 + 16) = v5;
  *(a1 + 20) = v4;
  v6 = (a1 + 40);
  *(a1 + 32) = a1 + 40;
  if (v4 > 0xC)
  {
    v9 = "this->max_num_rows_ >= A.NumRows()";
    v10 = 567;
    goto LABEL_9;
  }

  if (v3 > 0xC)
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

void *sub_1D0E65CCC(void *a1)
{
  *a1 = &unk_1F4CF0E30;
  v2 = a1[5];
  a1[5] = 0;
  if (v2)
  {
    MEMORY[0x1D387EC80](v2, 0x1000C8000313F17);
  }

  *a1 = &unk_1F4CD5E28;
  return a1;
}

void sub_1D0E65DC4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 2)
  {
    v3 = *(a1 + 12);
    if (v3 >= 2)
    {
      v4 = *(a1 + 16);
      v5 = *(a1 + 20);
      bzero(&v9, v4);
      if (v4 >= 3)
      {
        v6 = v9;
        v7 = 8;
        v8 = v3 + v1 - v5;
        do
        {
          if (!v6)
          {
            *(*(a1 + 32) + 8 * (v8 % (v4 - 1))) = *(*(a1 + 32) + v7);
            v6 = 1;
          }

          v8 += v3 + v1 - v5;
          v7 += 8;
        }

        while (8 * (v4 - 1) != v7);
      }
    }
  }
}

void sub_1D0E65EB8(uint64_t a1)
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

uint64_t trackrun::TrackRunPlatformInfo::TrackRunPlatformInfo(uint64_t this)
{
  *(this + 32) = 0u;
  *(this + 48) = 0u;
  *this = 0u;
  *(this + 16) = 0u;
  return sub_1D0E65FC4(this);
}

{
  *(this + 32) = 0u;
  *(this + 48) = 0u;
  *this = 0u;
  *(this + 16) = 0u;
  return sub_1D0E65FC4(this);
}

uint64_t sub_1D0E65FC4(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 2) = 0;
  sub_1D0B751F4((a1 + 8), &unk_1D0ED80C5);
  sub_1D0B751F4((a1 + 32), &unk_1D0ED80C5);
  *(a1 + 56) = 0;
  return a1;
}

void sub_1D0E66014(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

void trackrun::TrackRunEngineActiveObject::PopulateAllStartingLineFields(trackrun::TrackRunEngineActiveObject *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(this + 2568))
  {
    if ((*(this + 368) & 1) == 0)
    {
      sub_1D0C42F28();
    }

    v8 = *(this + 22);
    v9 = *(this + 376);
    v10 = vmulq_f64(vsubq_f64(*(this + 2408), v8), v9);
    v11 = vmulq_f64(vsubq_f64(*(this + 2392), v8), v9);
    *(this + 2440) = vextq_s8(v10, v10, 8uLL);
    *(this + 2424) = vextq_s8(v11, v11, 8uLL);
    v12 = sqrt((*&v11.i64[1] - *&v10.i64[1]) * (*&v11.i64[1] - *&v10.i64[1]) + 0.0 + (*v11.i64 - *v10.i64) * (*v11.i64 - *v10.i64));
    v13 = (*&v10.i64[1] - *&v11.i64[1]) / v12;
    *(this + 313) = v13;
    *(this + 2512) = 1;
    v14 = (*v10.i64 - *v11.i64) / v12;
    *(this + 315) = v14;
    *(this + 2528) = 1;
    if ((*(this + 2496) & 1) == 0)
    {
      *(this + 2496) = 1;
    }

    *(this + 154) = *(this + 2424);
    v15 = *(this + 308);
    v16 = *(this + 309);
    v17 = v13 + v15;
    v18 = v14 + v16;
    *(this + 310) = v17;
    *(this + 311) = v18;
    v19 = sqrt((v15 - v17) * (v15 - v17) + 0.0 + (v16 - v18) * (v16 - v18));
    if (fabs(v19 + -1.0) > 0.000000015)
    {
      v22 = 13;
      v21 = 4;
      cnprint::CNPrinter::Print(&v22, &v21, "#tre_ao,starting line segment unit direction vector length is not unity,length,%.1lf", a4, a5, a6, a7, a8, SLOBYTE(v19));
    }
  }

  else
  {
    v24 = 13;
    v23 = 4;
    cnprint::CNPrinter::Print(&v24, &v23, "#tre_ao,cannot populate starting line fields. No starting line geodetic coordinates available", a4, a5, a6, a7, a8, v20);
  }
}

uint64_t trackrun::TrackRunEngineActiveObject::TrackCoordinateTransform::ConvertLatLonToEastNorth@<X0>(uint64_t result@<X0>, float64x2_t *a2@<X1>, int8x16_t *a3@<X8>)
{
  if (*(result + 16))
  {
    v3 = vmulq_f64(vsubq_f64(*a2, *result), *(result + 24));
    *a3 = vextq_s8(v3, v3, 8uLL);
    v4 = 1;
  }

  else
  {
    v4 = 0;
    a3->i8[0] = 0;
  }

  a3[1].i8[0] = v4;
  return result;
}

int64x2_t trackrun::TrackRunEngineActiveObject::TrackCoordinateTransform::Reset(trackrun::TrackRunEngineActiveObject::TrackCoordinateTransform *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  result = vdupq_n_s64(0x7FF8000000000000uLL);
  *(this + 24) = result;
  return result;
}

BOOL trackrun::TrackRunEngineActiveObject::TrackCoordinateTransform::SetTransformationOriginUsingLatLon(uint64_t a1, double *a2, double *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  v9 = *(a2 + 1);
  if ((*a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (a2[1] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    LOWORD(v26) = 13;
    LOBYTE(v25) = 4;
    cnprint::CNPrinter::Print(&v26, &v25, "#tre_ao,invalid origin for track coordinate transform,%.3lf,%.3lf", a4, a5, a6, a7, a8, SLOBYTE(v8));
    return 0;
  }

  if (fabs(v8) > 80.0)
  {
    LOWORD(v26) = 13;
    LOBYTE(v25) = 4;
    cnprint::CNPrinter::Print(&v26, &v25, "#tre_ao,origin too close to poles,lat,%.9lf", a4, a5, a6, a7, a8, SLOBYTE(v8));
    return 0;
  }

  v14 = *(a1 + 16);
  *a1 = *a2;
  if ((v14 & 1) == 0)
  {
    *(a1 + 16) = 1;
  }

  v15 = *a1;
  v25 = 0.0;
  v26 = 0.0;
  v16 = cnnavigation::GeodeticLatLonIncrementsToNorthEastMetersPerRadian(&v26, v15 * 0.0174532925, 0.0, &v25, a3);
  v11 = v16 == 0;
  if (v16)
  {
    v24 = 13;
    v23 = 4;
    cnprint::CNPrinter::Print(&v24, &v23, "#tre_ao,error converting delta lat/lon to delta N/E,lat,%.9lf", v17, v18, v19, v20, v21, SLOBYTE(v15));
  }

  else
  {
    v22.f64[0] = v26;
    v22.f64[1] = v25;
    *(a1 + 24) = vmulq_f64(v22, vdupq_n_s64(0x3F91DF46A2529D39uLL));
  }

  return v11;
}

double trackrun::TrackRunEngineActiveObject::TrackRunEngineActiveObject(uint64_t a1)
{
  *(a1 + 56) = 0;
  result = 0.0;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 64) = 1065353216;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0u;
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
  *a1 = &unk_1F4CF0F48;
  *(a1 + 224) = 0;
  *(a1 + 248) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0;
  *(a1 + 288) = 850045863;
  *(a1 + 368) = 0;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 337) = 0u;
  *(a1 + 376) = 0x7FF8000000000000;
  *(a1 + 384) = 0x7FF8000000000000;
  *(a1 + 392) = 0;
  *(a1 + 416) = 0;
  *(a1 + 424) = 0;
  *(a1 + 448) = 0;
  *(a1 + 456) = 0;
  *(a1 + 520) = 0;
  *(a1 + 528) = 0;
  *(a1 + 744) = 0;
  *(a1 + 752) = 0;
  *(a1 + 816) = 0;
  *(a1 + 824) = 0;
  *(a1 + 1104) = 0;
  *(a1 + 1112) = 0;
  *(a1 + 1176) = 0;
  *(a1 + 1184) = 0;
  *(a1 + 1416) = 0;
  *(a1 + 1424) = 0;
  *(a1 + 1800) = 0;
  *(a1 + 1808) = 0;
  *(a1 + 2184) = 0;
  *(a1 + 2192) = 0;
  *(a1 + 2280) = 0;
  *(a1 + 2288) = 0;
  *(a1 + 2376) = 0;
  *(a1 + 2384) = 0;
  *(a1 + 2392) = 0;
  *(a1 + 2568) = 0;
  *(a1 + 2576) = 0;
  *(a1 + 2736) = 0;
  *(a1 + 2744) = 0;
  *(a1 + 2792) = 0;
  *(a1 + 2848) = 0;
  *(a1 + 2832) = 0u;
  *(a1 + 2816) = 0u;
  *(a1 + 2800) = 0u;
  *(a1 + 2880) = 0xC0000000CLL;
  *(a1 + 2856) = &unk_1F4CF0DA0;
  *(a1 + 2864) = 0u;
  *(a1 + 2888) = a1 + 2896;
  *(a1 + 4048) = &unk_1F4CF0FD8;
  *(a1 + 4080) = 0x10000000CLL;
  *(a1 + 4056) = &unk_1F4CDFFF8;
  *(a1 + 4088) = a1 + 4096;
  *(a1 + 4216) = 0x10000000CLL;
  *(a1 + 4192) = &unk_1F4CDFFF8;
  *(a1 + 4224) = a1 + 4232;
  *(a1 + 4336) = 0x3DDB7CDFD9D7BDBBLL;
  *(a1 + 4064) = 0u;
  *(a1 + 4200) = 0u;
  *(a1 + 4328) = 1;
  *(a1 + 4344) = 0;
  *(a1 + 4346) = 0;
  *(a1 + 4352) = 0;
  *(a1 + 4360) = 0;
  *(a1 + 4424) = 0;
  *(a1 + 4432) = 0;
  *(a1 + 4440) = 0;
  *(a1 + 4448) = 0;
  *(a1 + 4472) = 0u;
  *(a1 + 4488) = 0u;
  *(a1 + 4456) = 0u;
  return result;
}

uint64_t trackrun::TrackRunEngineActiveObject::Configure(cnframework::ActiveObjectBase *this, uint64_t *a2)
{
  if (*(this + 224) == 1)
  {
    LOWORD(v74) = 13;
    LOBYTE(v73) = 3;
    sub_1D0B751F4(__p, "TrackRunEngineActiveObject");
    if (v76 >= 0)
    {
      v9 = __p;
    }

    else
    {
      LOBYTE(v9) = __p[0];
    }

    cnprint::CNPrinter::Print(&v74, &v73, "Warning: %s configured more than once.", v4, v5, v6, v7, v8, v9);
    if (v76 < 0)
    {
      operator delete(__p[0]);
    }
  }

  *(this + 224) = 0;
  v10 = *a2;
  if (!*a2 || (*(v10 + 256) & 1) == 0)
  {
    LOWORD(v74) = 13;
    LOBYTE(v73) = 4;
    sub_1D0B751F4(__p, "TrackRunEngineActiveObject");
    if (v76 >= 0)
    {
      v28 = __p;
    }

    else
    {
      LOBYTE(v28) = __p[0];
    }

    cnprint::CNPrinter::Print(&v74, &v73, "Error: %s could not be configured.", v23, v24, v25, v26, v27, v28);
    goto LABEL_18;
  }

  *(this + 35) = v10;
  cnframework::ActiveObjectBase::SetEventQueueDelay(this, 0.0);
  v74 = *a2;
  if (trackrun::TrackRunLaneEstimator::Configure(this + 2848, &v74, v11, v12, v13, v14, v15, v16))
  {
    LOWORD(v73) = 13;
    LOBYTE(v72) = 4;
    sub_1D0B751F4(__p, "TrackRunEngineActiveObject");
    if (v76 >= 0)
    {
      v22 = __p;
    }

    else
    {
      LOBYTE(v22) = __p[0];
    }

    cnprint::CNPrinter::Print(&v73, &v72, "Error: %s could not be configured. Configuration of TrackRun lane estimator failed.", v17, v18, v19, v20, v21, v22);
LABEL_18:
    if (v76 < 0)
    {
      operator delete(__p[0]);
    }

    return 0xFFFFFFFFLL;
  }

  v30 = *(this + 35);
  if (!sub_1D0BD2DFC((v30 + 72), 4))
  {
    goto LABEL_32;
  }

  v73 = 4;
  __p[0] = &v73;
  if ((sub_1D0B85E58((v30 + 72), 4)[3] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_32;
  }

  v31 = *(this + 35);
  v72 = 4;
  __p[0] = &v72;
  if (*(sub_1D0B85E58((v31 + 72), 4) + 3) < 0.0)
  {
    goto LABEL_32;
  }

  v32 = *(this + 35);
  if (!sub_1D0BD2DFC((v32 + 72), 3))
  {
    goto LABEL_32;
  }

  v71 = 3;
  __p[0] = &v71;
  if ((sub_1D0B85E58((v32 + 72), 3)[3] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_32;
  }

  v33 = *(this + 35);
  v70 = 3;
  __p[0] = &v70;
  if (*(sub_1D0B85E58((v33 + 72), 3) + 3) < 0.0)
  {
    goto LABEL_32;
  }

  v34 = *(this + 35);
  if (!sub_1D0BD2DFC((v34 + 72), 2))
  {
    goto LABEL_32;
  }

  v69 = 2;
  __p[0] = &v69;
  if ((sub_1D0B85E58((v34 + 72), 2)[3] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_32;
  }

  v35 = *(this + 35);
  v68 = 2;
  __p[0] = &v68;
  if (*(sub_1D0B85E58((v35 + 72), 2) + 3) < 0.0)
  {
    goto LABEL_32;
  }

  v36 = *(this + 35);
  v67 = 2;
  __p[0] = &v67;
  v37 = *(sub_1D0B85E58((v36 + 72), 2) + 3);
  v38 = *(this + 35);
  v66 = 3;
  __p[0] = &v66;
  if (v37 < *(sub_1D0B85E58((v38 + 72), 3) + 3) || (v39 = *(this + 35), v65 = 3, __p[0] = &v65, v40 = *(sub_1D0B85E58((v39 + 72), 3) + 3), v41 = *(this + 35), v64 = 4, __p[0] = &v64, v40 < *(sub_1D0B85E58((v41 + 72), 4) + 3)))
  {
LABEL_32:
    LOWORD(v73) = 13;
    LOBYTE(v72) = 4;
    sub_1D0B751F4(__p, "TrackRunEngineActiveObject");
    if (v76 >= 0)
    {
      v47 = __p;
    }

    else
    {
      LOBYTE(v47) = __p[0];
    }

    cnprint::CNPrinter::Print(&v73, &v72, "Error: %s could not be configured. Proximity distance threshold parameters do not exist or are invalid.", v42, v43, v44, v45, v46, v47);
    goto LABEL_18;
  }

  v48 = *(*(this + 35) + 248);
  if ((v48 <= -1 || ((v48 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (v48 - 1) >= 0xFFFFFFFFFFFFFLL)
  {
    LOWORD(v73) = 13;
    LOBYTE(v72) = 4;
    sub_1D0B751F4(__p, "TrackRunEngineActiveObject");
    if (v76 >= 0)
    {
      v63 = __p;
    }

    else
    {
      LOBYTE(v63) = __p[0];
    }

    cnprint::CNPrinter::Print(&v73, &v72, "Error: %s could not be configured. Home visit consistency threshold is invalid.", v58, v59, v60, v61, v62, v63);
    goto LABEL_18;
  }

  *(this + 224) = 1;
  v51 = (*(*this + 40))(this);
  if (cnprint::CNPrinter::GetLogLevel(v51) <= 1)
  {
    LOWORD(v73) = 13;
    LOBYTE(v72) = 1;
    sub_1D0B751F4(__p, "TrackRunEngineActiveObject");
    if (v76 >= 0)
    {
      v57 = __p;
    }

    else
    {
      LOBYTE(v57) = __p[0];
    }

    cnprint::CNPrinter::Print(&v73, &v72, "%s configured successfully.", v52, v53, v54, v55, v56, v57);
    if (v76 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return 0;
}

void sub_1D0E66AC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void trackrun::TrackRunEngineActiveObject::HandleEvent(trackrun::TrackRunEngineActiveObject *this, const trackrun::MovingStateEvent *a2)
{
  if (cnprint::CNPrinter::GetLogLevel(this) <= 1)
  {
    LOWORD(v33[0]) = 13;
    LOBYTE(v31[0]) = 1;
    v4 = (*(*a2 + 16))(a2);
    v6 = v5 + v4;
    v7 = *(a2 + 6) + *(a2 + 5);
    sub_1D0E66DF8(__p, *(a2 + 56));
    cnprint::CNPrinter::Print(v33, v31, "#tre_ao,received MovingStateEvent,time,%.1lf,ios_time,%.1lf,moving_state,%s", v8, v9, v10, v11, v12, SLOBYTE(v6));
    if (v38 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (*(this + 744) == 1)
  {
    v36 = 13;
    v35 = 3;
    v13 = *(this + 2384);
    sub_1D0E66DF8(__p, *(a2 + 56));
    v14 = *(a2 + 2);
    v15 = *(a2 + 3);
    trackrun::TrackRunEngineActiveObject::ConvertIosTimeToGregorianString(this, *(a2 + 5), *(a2 + 6), v33);
    if ((*(this + 744) & 1) == 0)
    {
      sub_1D0C42F28();
    }

    v16 = *(this + 80);
    v17 = *(this + 81);
    v18 = *(this + 85);
    v19 = *(this + 87);
    sub_1D0E66DF8(v31, *(a2 + 56));
    cnprint::CNPrinter::Print(&v36, &v35, "TrackRun-Moving-%u-%s,viewType,SingleArrowCoordinate,iOSTime,%.1lf,mcTime,%.1lf,gregTime,%s,latitude,%.7lf,longitude,%.7lf,course,%.2lf,speed,%.1lf,moving_state,%s", v20, v21, v22, v23, v24, v13);
    if (v32 < 0)
    {
      operator delete(v31[0]);
    }

    if (v34 < 0)
    {
      operator delete(v33[0]);
    }

    if (v38 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (*(this + 520) == 1)
  {
    v25 = *(a2 + 8);
    v26 = *(a2 + 24);
    v27 = *(a2 + 40);
    *(this + 512) = *(a2 + 56);
    *(this + 30) = v26;
    *(this + 31) = v27;
    *(this + 29) = v25;
  }

  else
  {
    *(this + 57) = &unk_1F4CF0C50;
    v28 = *(a2 + 8);
    v29 = *(a2 + 24);
    v30 = *(a2 + 40);
    *(this + 512) = *(a2 + 56);
    *(this + 30) = v29;
    *(this + 31) = v30;
    *(this + 29) = v28;
    *(this + 520) = 1;
  }
}

void sub_1D0E66DA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  _Unwind_Resume(exception_object);
}

uint64_t trackrun::TrackRunEngineActiveObject::HandleEvent(trackrun::TrackRunEngineActiveObject *this, const trackrun::VisitEvent *a2)
{
  v23 = 13;
  v22 = 3;
  v4 = (*(*a2 + 16))(a2);
  v6 = v5;
  v7 = *(a2 + 5);
  v8 = *(a2 + 6);
  v9 = *(a2 + 8);
  v10 = *(a2 + 9);
  sub_1D0E66F8C(a2, &v20);
  sub_1D0E66FA4(a2, &__p);
  v17 = v6 + v4;
  cnprint::CNPrinter::Print(&v23, &v22, "#tre_ao,received visit event,time,%.1lf,ios_time,%.1lf,arrival time,%.1lf,user specific place type,%s,place inference place type,%s", v11, v12, v13, v14, v15, SLOBYTE(v17));
  if (v19 < 0)
  {
    operator delete(__p);
  }

  if (v21 < 0)
  {
    operator delete(v20);
  }

  return sub_1D0E66FBC(this + 824, a2);
}

void sub_1D0E66F58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
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

uint64_t sub_1D0E66FBC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 280) == 1)
  {
    v4 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v4;
    v5 = *(a2 + 40);
    v6 = *(a2 + 56);
    v7 = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 72) = v7;
    *(a1 + 56) = v6;
    *(a1 + 40) = v5;
    v8 = *(a2 + 104);
    v9 = *(a2 + 120);
    v10 = *(a2 + 136);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 136) = v10;
    *(a1 + 120) = v9;
    *(a1 + 104) = v8;
    v11 = *(a2 + 168);
    v12 = *(a2 + 184);
    v13 = *(a2 + 200);
    *(a1 + 210) = *(a2 + 210);
    *(a1 + 200) = v13;
    *(a1 + 184) = v12;
    *(a1 + 168) = v11;
    std::string::operator=((a1 + 232), (a2 + 232));
    std::string::operator=((a1 + 256), (a2 + 256));
  }

  else
  {
    *a1 = &unk_1F4CF0B90;
    v14 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v14;
    v15 = *(a2 + 40);
    v16 = *(a2 + 56);
    v17 = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 72) = v17;
    *(a1 + 56) = v16;
    *(a1 + 40) = v15;
    v18 = *(a2 + 104);
    v19 = *(a2 + 120);
    v20 = *(a2 + 136);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 136) = v20;
    *(a1 + 120) = v19;
    *(a1 + 104) = v18;
    v21 = *(a2 + 168);
    v22 = *(a2 + 184);
    v23 = *(a2 + 200);
    *(a1 + 210) = *(a2 + 210);
    *(a1 + 200) = v23;
    *(a1 + 184) = v22;
    *(a1 + 168) = v21;
    if (*(a2 + 255) < 0)
    {
      sub_1D0BC39B4((a1 + 232), *(a2 + 232), *(a2 + 240));
    }

    else
    {
      v24 = *(a2 + 232);
      *(a1 + 248) = *(a2 + 248);
      *(a1 + 232) = v24;
    }

    if (*(a2 + 279) < 0)
    {
      sub_1D0BC39B4((a1 + 256), *(a2 + 256), *(a2 + 264));
    }

    else
    {
      v25 = *(a2 + 256);
      *(a1 + 272) = *(a2 + 272);
      *(a1 + 256) = v25;
    }

    *(a1 + 280) = 1;
  }

  return a1;
}

void sub_1D0E67160(_Unwind_Exception *exception_object)
{
  if (*(v1 + 255) < 0)
  {
    operator delete(*(v1 + 232));
  }

  _Unwind_Resume(exception_object);
}

void trackrun::TrackRunEngineActiveObject::HandleEvent(trackrun::TrackRunEngineActiveObject *this, const trackrun::WatchStateEvent *a2)
{
  v26 = 13;
  v25 = 3;
  v4 = (*(*a2 + 16))(a2);
  v6 = v5;
  v7 = *(a2 + 5);
  v8 = *(a2 + 6);
  sub_1D0B751F4(&v23, off_1E83D8418[*(a2 + 57)]);
  sub_1D0B751F4(&__p, off_1E83D8418[*(a2 + 56)]);
  v20 = v6 + v4;
  cnprint::CNPrinter::Print(&v26, &v25, "#tre_ao,received watch state event,time,%.1lf,ios_time,%.1lf,wrist_orientation,%s,crown_orientation,%s", v9, v10, v11, v12, v13, SLOBYTE(v20));
  if (v22 < 0)
  {
    operator delete(__p);
  }

  if (v24 < 0)
  {
    operator delete(v23);
  }

  if (*(this + 1176) == 1)
  {
    v14 = *(a2 + 8);
    v15 = *(a2 + 24);
    v16 = *(a2 + 40);
    *(this + 584) = *(a2 + 28);
    *(this + 72) = v16;
    *(this + 71) = v15;
    *(this + 70) = v14;
  }

  else
  {
    *(this + 139) = &unk_1F4CF0D40;
    v17 = *(a2 + 8);
    v18 = *(a2 + 24);
    v19 = *(a2 + 40);
    *(this + 584) = *(a2 + 28);
    *(this + 72) = v19;
    *(this + 71) = v18;
    *(this + 70) = v17;
    *(this + 1176) = 1;
  }
}

void sub_1D0E67330(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
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

void trackrun::TrackRunEngineActiveObject::HandleEvent(trackrun::TrackRunEngineActiveObject *this, const trackrun::WorkoutSessionEvent *a2)
{
  v37 = this;
  v38 = &unk_1F4CF0BC0;
  v4 = *(a2 + 24);
  v39 = *(a2 + 8);
  v40 = v4;
  v41 = *(a2 + 40);
  v5 = *(a2 + 28);
  v42 = v5;
  if (*(a2 + 87) < 0)
  {
    sub_1D0BC39B4(&v43, *(a2 + 8), *(a2 + 9));
    v5 = *(a2 + 28);
    v6 = *(a2 + 87) < 0;
  }

  else
  {
    v6 = 0;
    v43 = *(a2 + 4);
    v44 = *(a2 + 10);
  }

  v7 = *(a2 + 168);
  v8 = *(a2 + 200);
  v51 = *(a2 + 184);
  v52 = v8;
  v53 = *(a2 + 216);
  v9 = *(a2 + 104);
  v10 = *(a2 + 136);
  v47 = *(a2 + 120);
  v48 = v10;
  v49 = *(a2 + 152);
  v50 = v7;
  v45 = *(a2 + 88);
  v46 = v9;
  v20 = this;
  v21 = &unk_1F4CF0BC0;
  v11 = *(a2 + 24);
  v22 = *(a2 + 8);
  v23 = v11;
  v24 = *(a2 + 40);
  v25 = v5;
  if (v6)
  {
    sub_1D0BC39B4(&__p, *(a2 + 8), *(a2 + 9));
    LOBYTE(v5) = *(a2 + 56);
  }

  else
  {
    __p = *(a2 + 4);
    v27 = *(a2 + 10);
  }

  v12 = *(a2 + 168);
  v13 = *(a2 + 200);
  v34 = *(a2 + 184);
  v35 = v13;
  v36 = *(a2 + 216);
  v14 = *(a2 + 104);
  v15 = *(a2 + 136);
  v30 = *(a2 + 120);
  v31 = v15;
  v32 = *(a2 + 152);
  v33 = v12;
  v28 = *(a2 + 88);
  v29 = v14;
  if (v5 > 7u || ((1 << v5) & 0xD8) == 0)
  {
LABEL_16:
    sub_1D0E6766C(&v37);
    goto LABEL_20;
  }

  v16 = *(a2 + 57);
  if ((v16 - 4) < 2)
  {
LABEL_15:
    sub_1D0E6766C(&v37);
    sub_1D0E678EC(this + 1184, a2);
    sub_1D0E67A4C(&v20);
    goto LABEL_20;
  }

  if (v16 != 3)
  {
    if (v16 == 2)
    {
      trackrun::TrackRunEngineActiveObject::ResetTrackStateWhenSessionStarts(this);
      v17 = *(this + 2792);
      v18 = *(a2 + 40);
      v19 = *(a2 + 24);
      *(this + 2744) = *(a2 + 8);
      *(this + 2760) = v19;
      *(this + 2776) = v18;
      if ((v17 & 1) == 0)
      {
        *(this + 2792) = 1;
      }

      *(this + 2384) = *(this + 2384) + 1 - 30 * ((2185 * (*(this + 2384) + 1)) >> 16);
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  if (*(this + 2792) == 1)
  {
    *(this + 2792) = 0;
  }

  sub_1D0E6766C(&v37);
  sub_1D0E678EC(this + 1184, a2);
  sub_1D0E67A4C(&v20);
  trackrun::TrackRunEngineActiveObject::ResetTrackStateWhenLeaveTrackOrSessionEnds(this);
  *(this + 2384) = *(this + 2384) + 1 - 30 * ((2185 * (*(this + 2384) + 1)) >> 16);
LABEL_20:
  v21 = &unk_1F4CF0BC0;
  if (SHIBYTE(v27) < 0)
  {
    operator delete(__p);
  }

  v38 = &unk_1F4CF0BC0;
  if (SHIBYTE(v44) < 0)
  {
    operator delete(v43);
  }
}

void sub_1D0E67630(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *__p, uint64_t a52, int a53, __int16 a54, char a55, char a56)
{
  if (a56 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D0E6766C(uint64_t *a1)
{
  v2 = *a1;
  v22 = 13;
  v21 = 3;
  v3 = a1 + 1;
  v4 = (*(a1[1] + 16))(a1 + 1);
  v6 = v5;
  v7 = v3[5];
  v8 = v3[6];
  v9 = *(v2 + 2384);
  sub_1D0E6A91C(&v19, *(v3 + 56));
  sub_1D0E6A930(&__p, *(v3 + 57));
  if (*(a1 + 95) < 0)
  {
    v15 = a1[9];
  }

  v16 = v6 + v4;
  cnprint::CNPrinter::Print(&v22, &v21, "#tre_ao,received workout session event,time,%.1lf,ios_time,%.1lf,workout_number,%d,workout_type,%s,workout_event,%s,session_id,%s", v10, v11, v12, v13, v14, SLOBYTE(v16));
  if (v18 < 0)
  {
    operator delete(__p);
  }

  if (v20 < 0)
  {
    operator delete(v19);
  }
}

void sub_1D0E677A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

double trackrun::TrackRunEngineActiveObject::ResetTrackStateWhenSessionStarts(trackrun::TrackRunEngineActiveObject *this)
{
  v2 = this + 4096;
  *(this + 4346) = 0;
  *(this + 4344) = 0;
  if (*(this + 2849) == 1)
  {
    *(this + 2849) = 0;
  }

  if (*(this + 4424) == 1)
  {
    *(this + 4424) = 0;
  }

  if (*(this + 2568) == 1)
  {
    *(this + 2568) = 0;
  }

  if (*(this + 2736) == 1)
  {
    *(this + 2736) = 0;
  }

  v3 = *(this + 351);
  v4 = *(this + 352);
  *(this + 355) = 0;
  v5 = (v4 - v3) >> 3;
  if (v5 >= 3)
  {
    do
    {
      operator delete(*v3);
      v3 = (*(this + 351) + 8);
      *(this + 351) = v3;
      v5 = (*(this + 352) - v3) >> 3;
    }

    while (v5 > 2);
  }

  if (v5 == 1)
  {
    v6 = 25;
  }

  else
  {
    if (v5 != 2)
    {
      goto LABEL_16;
    }

    v6 = 51;
  }

  *(this + 354) = v6;
LABEL_16:
  if (v2[352] == 1)
  {
    v2[352] = 0;
  }

  *(this + 2216) = 0;
  if (*(this + 520) == 1)
  {
    *(this + 520) = 0;
  }

  if (*(this + 2184) == 1)
  {
    *(this + 2184) = 0;
  }

  result = 0.0;
  *(this + 4472) = 0u;
  *(this + 4488) = 0u;
  *(this + 4456) = 0u;
  return result;
}

uint64_t sub_1D0E678EC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 232) == 1)
  {
    v4 = *(a2 + 8);
    v5 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 24) = v5;
    *(a1 + 8) = v4;
    *(a1 + 56) = *(a2 + 56);
    std::string::operator=((a1 + 64), (a2 + 64));
    *(a1 + 88) = *(a2 + 88);
    v6 = *(a2 + 120);
    v7 = *(a2 + 136);
    v8 = *(a2 + 152);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 152) = v8;
    *(a1 + 136) = v7;
    *(a1 + 120) = v6;
    v9 = *(a2 + 184);
    v10 = *(a2 + 200);
    v11 = *(a2 + 216);
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 216) = v11;
    *(a1 + 200) = v10;
    *(a1 + 184) = v9;
  }

  else
  {
    *a1 = &unk_1F4CF0BC0;
    v12 = *(a2 + 8);
    v13 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 24) = v13;
    *(a1 + 8) = v12;
    *(a1 + 56) = *(a2 + 56);
    if (*(a2 + 87) < 0)
    {
      sub_1D0BC39B4((a1 + 64), *(a2 + 64), *(a2 + 72));
    }

    else
    {
      v14 = *(a2 + 64);
      *(a1 + 80) = *(a2 + 80);
      *(a1 + 64) = v14;
    }

    *(a1 + 88) = *(a2 + 88);
    v15 = *(a2 + 104);
    v16 = *(a2 + 120);
    v17 = *(a2 + 136);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 136) = v17;
    *(a1 + 120) = v16;
    *(a1 + 104) = v15;
    v18 = *(a2 + 168);
    v19 = *(a2 + 184);
    v20 = *(a2 + 200);
    *(a1 + 216) = *(a2 + 216);
    *(a1 + 200) = v20;
    *(a1 + 184) = v19;
    *(a1 + 168) = v18;
    *(a1 + 232) = 1;
  }

  return a1;
}

void sub_1D0E67A4C(uint64_t a1)
{
  v2 = *a1;
  v22 = 13;
  v21 = 3;
  sub_1D0E6A91C(v19, *(a1 + 64));
  if (v20 >= 0)
  {
    v3 = v19;
  }

  else
  {
    LOBYTE(v3) = v19[0];
  }

  sub_1D0E6A930(&v17, *(a1 + 65));
  v4 = *(v2 + 2384);
  (*(*(a1 + 8) + 16))();
  v6 = *(a1 + 128);
  v5 = *(a1 + 136);
  trackrun::TrackRunEngineActiveObject::ConvertIosTimeToGregorianString(v2, *(a1 + 48), *(a1 + 56), &__p);
  if (*(v2 + 744) == 1)
  {
    v12 = *(v2 + 640);
    v13 = *(v2 + 648);
  }

  if (*(v2 + 816) == 1)
  {
    v14 = *(v2 + 808);
  }

  cnprint::CNPrinter::Print(&v22, &v21, "Workout-%s-%s-%u,viewType,SingleArrowCoordinate,time,%.1lf,iOSTime,%.1lf,start_time,%.1lf,gregTime,%s,latitude,%.7lf,longitude,%.7lf,lane_hint,%d", v7, v8, v9, v10, v11, v3);
  if (v16 < 0)
  {
    operator delete(__p);
  }

  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (v20 < 0)
  {
    operator delete(v19[0]);
  }
}

void sub_1D0E67C10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (a36 < 0)
  {
    operator delete(a31);
  }

  _Unwind_Resume(exception_object);
}

double trackrun::TrackRunEngineActiveObject::ResetTrackStateWhenLeaveTrackOrSessionEnds(trackrun::TrackRunEngineActiveObject *this)
{
  if (cnprint::CNPrinter::GetLogLevel(this) <= 1)
  {
    v10 = 13;
    v9 = 1;
    cnprint::CNPrinter::Print(&v10, &v9, "#tre_ao,user has left the track or ended the workout,resetting the track state.", v2, v3, v4, v5, v6, v8);
  }

  if (*(this + 816) == 1)
  {
    *(this + 816) = 0;
  }

  return trackrun::TrackRunEngineActiveObject::ResetTrackStateWhenSessionStarts(this);
}

void trackrun::TrackRunEngineActiveObject::HandleEvent(uint64_t this, const trackrun::GEOMapRunningTrackDataEvent *a2, double *a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9)
{
  if (*(this + 224) != 1)
  {
    return;
  }

  if (*(a2 + 1) == *(a2 + 2))
  {
    LOWORD(__p[0]) = 13;
    LOBYTE(v158[0]) = 4;
    v13 = (*(*a2 + 16))(a2);
    v134 = v14 + v13;
    cnprint::CNPrinter::Print(__p, v158, "#tre_ao,time,%.3lf,running track event has no tracks", v15, v16, v17, v18, v19, SLOBYTE(v134));
    return;
  }

  v10 = this;
  v11 = *(a2 + 80);
  if ((*(this + 744) & 1) == 0)
  {
    LOWORD(__p[0]) = 13;
    LOBYTE(v158[0]) = 3;
    v20 = (*(*a2 + 16))(a2);
    v135 = v21 + v20;
    cnprint::CNPrinter::Print(__p, v158, "#tre_ao,time,%.3lf,no previous position available; caching running track data to process at a future time", v22, v23, v24, v25, v26, SLOBYTE(v135));
    if (v11)
    {
      v27 = v10 + 2192;
    }

    else
    {
      v27 = v10 + 2288;
    }

    sub_1D0E68BAC(v27, a2);
    return;
  }

  if (!*(a2 + 80))
  {
    this = sub_1D0E68BAC(this + 2288, a2);
    v144 = v10 + 280;
    if (*(*(v10 + 35) + 67))
    {
      v12 = *(v10 + 448) ^ 1;
      goto LABEL_28;
    }

    if ((*(v10 + 448) & 1) == 0)
    {
LABEL_27:
      v12 = 1;
      goto LABEL_28;
    }

    v29 = v10 + 448;
    v30 = v10 + 424;
LABEL_26:
    __p[0] = v30;
    sub_1D0E62CA0(__p);
    *v29 = 0;
    goto LABEL_27;
  }

  v144 = (this + 280);
  if (!*(*(this + 280) + 67) || (*(this + 416) & 1) == 0)
  {
    *(this + 352) = 0;
    *(this + 360) = 0;
    *(this + 368) = 0;
    *(this + 376) = 0x7FF8000000000000;
    *(this + 384) = 0x7FF8000000000000;
    if (*(this + 2568) == 1)
    {
      v28 = *(this + 2408);
      *__p = *(this + 2392);
      *v163 = v28;
      memset(&v163[16], 0, 32);
      *(this + 2424) = 0u;
      a9.n128_u64[1] = *&v163[40];
      *(this + 2440) = *&v163[32];
      *(this + 2456) = 0;
      if (*(this + 2496))
      {
        *(this + 2496) = 0;
      }

      *(this + 2504) = 0;
      *(this + 2512) = 0;
      *(this + 2520) = 0;
      *(this + 2528) = 0;
      *(this + 2536) = 0;
      *(this + 2560) = 0;
    }

    if (*(this + 416) != 1)
    {
      goto LABEL_27;
    }

    v29 = (this + 416);
    v30 = (this + 392);
    goto LABEL_26;
  }

  v12 = 0;
LABEL_28:
  if (*(v10 + 368) == 1)
  {
    v31 = *(v10 + 47);
    a9.n128_u64[0] = *(v10 + 48);
  }

  else
  {
    *v158 = *(v10 + 40);
    this = trackrun::TrackRunEngineActiveObject::TrackCoordinateTransform::SetTransformationOriginUsingLatLon(v10 + 352, v158, a3, a4, a5, a6, a7, a8);
    if (!this || *(v10 + 368) != 1)
    {
      LOWORD(v166) = 13;
      LOBYTE(v154[0]) = 4;
      v36 = (*(*a2 + 16))(a2);
      v38 = v37 + v36;
      sub_1D0B751F4(__p, "TrackRunEngineActiveObject");
      cnprint::CNPrinter::Print(&v166, v154, "#tre_ao,time,%.3lf,%s could not configure running track coordinate transform", v39, v40, v41, v42, v43, SLOBYTE(v38));
      if ((v163[7] & 0x80000000) != 0)
      {
        operator delete(__p[0]);
      }

      return;
    }

    v35 = *(v10 + 47);
    a9.n128_u64[0] = *(v10 + 48);
    if (*(v10 + 2568) == 1)
    {
      trackrun::TrackRunEngineActiveObject::PopulateAllStartingLineFields(v10, v33, v34, a4, a5, a6, a7, a8);
    }
  }

  v151 = v11;
  if (v12)
  {
    __p[0] = 0;
    __p[1] = 0;
    *v163 = 0;
    v163[8] = 1;
    if (v11)
    {
      v32 = (v10 + 392);
    }

    else
    {
      v32 = (v10 + 424);
    }

    sub_1D0E6B108(v32, __p);
    if (v163[8] == 1)
    {
      v158[0] = __p;
      sub_1D0E62CA0(v158);
    }

    this = sub_1D0E60898(v32, 0x4EC4EC4EC4EC4EC5 * ((*(a2 + 2) - *(a2 + 1)) >> 3));
  }

  v44 = *(a2 + 1);
  if (*(a2 + 2) != v44)
  {
    v45 = 0;
    v46 = 0;
    v47 = 0;
    while (1)
    {
      v48 = (v44 + 104 * v47);
      if (v48[12])
      {
        break;
      }

      LOWORD(__p[0]) = 13;
      LOBYTE(v158[0]) = 4;
      v81 = (*(*a2 + 16))(a2, a9);
      v138 = v82 + v81;
      cnprint::CNPrinter::Print(__p, v158, "#tre_ao,time,%.3lf,track has no lanes", v83, v84, v85, v86, v87, SLOBYTE(v138));
LABEL_115:
      ++v47;
      v44 = *(a2 + 1);
      if (v47 >= 0x4EC4EC4EC4EC4EC5 * ((*(a2 + 2) - v44) >> 3))
      {
        goto LABEL_116;
      }
    }

    v145 = v47;
    v146 = v45;
    __p[0] = 0;
    __p[1] = 0;
    *v163 = 0;
    LOBYTE(v164) = 0;
    BYTE8(v164) = 0;
    v165 = 0;
    memset(&v163[24], 0, 36);
    v50 = v48[5];
    v49 = v48[6];
    v147 = v48 + 12;
    v148 = v44 + 104 * v47;
    if (v50 == v49)
    {
      v51 = v151;
    }

    else
    {
      v152 = 0;
      v51 = v151;
      v150 = v48[6];
      do
      {
        v159[16] = 0;
        LOBYTE(v160) = 0;
        BYTE8(v160) = 0;
        LOBYTE(v161) = 0;
        v158[1] = 0;
        *v159 = 0;
        v158[0] = 0;
        *&v159[8] = 0;
        *(&v161 + 1) = 0xBFF0000000000000;
        if (trackrun::TrackRunEngineActiveObject::CopyTrackLaneData(v10, v50, v158, a4, a5, a6, a7, a8))
        {
          v52 = *v50;
          if (*v50 != *(v50 + 1))
          {
            v53 = 0;
            do
            {
              LOWORD(v154[0]) = 13;
              LOBYTE(v157) = 3;
              v54 = *(a2 + 8);
              v55 = *(a2 + 9);
              (*(*a2 + 16))(a2);
              trackrun::TrackRunEngineActiveObject::ConvertIosTimeToGregorianString(v10, *(a2 + 8), *(a2 + 9), &v166);
              v140 = *v52;
              v141 = v52[1];
              v136 = v55 + v54;
              cnprint::CNPrinter::Print(v154, &v157, "TrackRun-Track,viewType,ConnectedCoordinates,iOSTime,%.1lf,mcTime,%.1lf,gregTime,%s,latitude,%.7lf,longitude,%.7lf,lane,%zu,index,%zu", v56, v57, v58, v59, v60, SLOBYTE(v136));
              if (SBYTE7(v167) < 0)
              {
                operator delete(v166);
              }

              ++v53;
              v52 += 2;
            }

            while (v52 != *(v50 + 1));
          }

          v61 = *&v163[32];
          if (*&v163[32] >= *&v163[40])
          {
            v72 = 0x8E38E38E38E38E39 * ((*&v163[32] - *&v163[24]) >> 3);
            v73 = v72 + 1;
            if (v72 + 1 > 0x38E38E38E38E38ELL)
            {
              sub_1D0C5663C();
            }

            if (0x1C71C71C71C71C72 * ((*&v163[40] - *&v163[24]) >> 3) > v73)
            {
              v73 = 0x1C71C71C71C71C72 * ((*&v163[40] - *&v163[24]) >> 3);
            }

            if (0x8E38E38E38E38E39 * ((*&v163[40] - *&v163[24]) >> 3) >= 0x1C71C71C71C71C7)
            {
              v74 = 0x38E38E38E38E38ELL;
            }

            else
            {
              v74 = v73;
            }

            v168 = &v163[24];
            if (v74)
            {
              sub_1D0E61E1C(&v163[24], v74);
            }

            v75 = 8 * ((*&v163[32] - *&v163[24]) >> 3);
            *&v166 = 0;
            *(&v166 + 1) = v75;
            v167 = v75;
            *v75 = 0;
            *(v75 + 8) = 0;
            *(v75 + 16) = 0;
            sub_1D0E6B1AC(72 * v72, v158[0], v158[1], (v158[1] - v158[0]) >> 4);
            v76 = v161;
            v77 = *&v159[8];
            *(v75 + 40) = v160;
            *(v75 + 24) = v77;
            *(v75 + 56) = v76;
            *&v167 = v167 + 72;
            v78 = *(&v166 + 1) + *&v163[24] - *&v163[32];
            sub_1D0E61E78(&v163[24], *&v163[24], *&v163[32], v78);
            v79 = *&v163[24];
            v80 = *&v163[40];
            *&v163[24] = v78;
            v149 = v167;
            *&v163[32] = v167;
            *&v167 = v79;
            *(&v167 + 1) = v80;
            *&v166 = v79;
            *(&v166 + 1) = v79;
            sub_1D0E61FD4(&v166);
            v64 = v149;
            v51 = v151;
          }

          else
          {
            **&v163[32] = 0uLL;
            *(v61 + 16) = 0;
            sub_1D0E6B1AC(v61, v158[0], v158[1], (v158[1] - v158[0]) >> 4);
            v62 = *&v159[8];
            v63 = v160;
            *(v61 + 56) = v161;
            *(v61 + 40) = v63;
            *(v61 + 24) = v62;
            v64 = v61 + 72;
            v51 = v151;
          }

          v49 = v150;
          *&v163[32] = v64;
          ++v152;
          ++v46;
        }

        else
        {
          LOWORD(v166) = 13;
          LOBYTE(v154[0]) = 4;
          v65 = (*(*a2 + 16))(a2);
          v137 = v66 + v65;
          cnprint::CNPrinter::Print(&v166, v154, "#tre_ao,time,%.3lf,cannot add lane data to track", v67, v68, v69, v70, v71, SLOBYTE(v137));
        }

        if (v158[0])
        {
          v158[1] = v158[0];
          operator delete(v158[0]);
        }

        v50 = (v50 + 72);
      }

      while (v50 != v49);
    }

    *&v163[48] = *(v148 + 64);
    *&v163[56] = *(v148 + 72);
    v166 = 0uLL;
    *&v167 = 0;
    sub_1D0E6B1AC(&v166, *v148, *(v148 + 8), (*(v148 + 8) - *v148) >> 4);
    v94 = *(&v166 + 1);
    v95 = v166;
    if (v166 != *(&v166 + 1))
    {
      do
      {
        sub_1D0B751F4(v158, &unk_1D0ED80C5);
        if (!v51)
        {
          if ((v159[7] & 0x80000000) != 0)
          {
            v158[1] = 7;
            v96 = v158[0];
          }

          else
          {
            v159[7] = 7;
            v96 = v158;
          }

          strcpy(v96, "-sparse");
        }

        v157 = 13;
        v156 = 3;
        if (v159[7] >= 0)
        {
          v97 = v158;
        }

        else
        {
          LOBYTE(v97) = v158[0];
        }

        v98 = *(a2 + 8);
        v99 = *(a2 + 9);
        (*(*a2 + 16))(a2);
        trackrun::TrackRunEngineActiveObject::ConvertIosTimeToGregorianString(v10, *(a2 + 8), *(a2 + 9), v154);
        v142 = *v95;
        v143 = v95[1];
        cnprint::CNPrinter::Print(&v157, &v156, "TrackRun-Track-Bbox%s,viewType,ConnectedCoordinates,iOSTime,%.1lf,mcTime,%.1lf,gregTime,%s,latitude,%.7lf,longitude,%.7lf", v100, v101, v102, v103, v104, v97);
        if (v155 < 0)
        {
          operator delete(v154[0]);
        }

        if ((v159[7] & 0x80000000) != 0)
        {
          operator delete(v158[0]);
        }

        v95 += 2;
        v94 = *(&v166 + 1);
      }

      while (v95 != *(&v166 + 1));
      v95 = v166;
    }

    while (v95 != v94)
    {
      trackrun::TrackRunEngineActiveObject::ConvertPointLatLonToEastNorth(v10, v95, v88, v89, v90, v91, v92, v93);
      v95 += 2;
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    *__p = v166;
    *v163 = v167;
    *&v167 = 0;
    v166 = 0uLL;
    *v154 = *(v148 + 24);
    trackrun::TrackRunEngineActiveObject::ConvertPointLatLonToEastNorth(v10, v154, v88, v89, v90, v91, v92, v93);
    *&v163[8] = *v154;
    if (v51 && v165 >= 2)
    {
      trackrun::TrackRunEngineActiveObject::FindClosestPointOnRing(**&v163[24], (*&v163[24] + 72 * v165 - 72), 1, 0);
      v106 = fabs(v105) / (v165 - 1);
    }

    else
    {
      v106 = 1.22;
      v107 = (v10 + 424);
      if (!v51)
      {
LABEL_97:
        v108 = (*v144 + 208);
        if (!*(*v144 + 202))
        {
          v108 = v147;
        }

        v165 = *v108;
        v110 = v107[1];
        v109 = v107[2];
        if (v110 >= v109)
        {
          v115 = 0x4EC4EC4EC4EC4EC5 * ((v110 - *v107) >> 3);
          v116 = v115 + 1;
          if ((v115 + 1) > 0x276276276276276)
          {
            sub_1D0C5663C();
          }

          v117 = 0x4EC4EC4EC4EC4EC5 * ((v109 - *v107) >> 3);
          if (2 * v117 > v116)
          {
            v116 = 2 * v117;
          }

          if (v117 >= 0x13B13B13B13B13BLL)
          {
            v118 = 0x276276276276276;
          }

          else
          {
            v118 = v116;
          }

          *&v159[16] = v107;
          if (v118)
          {
            sub_1D0E61CC0(v107, v118);
          }

          v119 = 104 * v115;
          v158[0] = 0;
          v158[1] = v119;
          *v159 = (104 * v115);
          *v119 = 0;
          *(v119 + 8) = 0;
          *(v119 + 16) = 0;
          sub_1D0E6B1AC(104 * v115, __p[0], __p[1], (__p[1] - __p[0]) >> 4);
          v120 = *&v163[8];
          *(v119 + 40) = 0;
          *(v119 + 24) = v120;
          *(v119 + 48) = 0;
          *(v119 + 56) = 0;
          sub_1D0E6AB04(104 * v115 + 40, *&v163[24], *&v163[32], 0x8E38E38E38E38E39 * ((*&v163[32] - *&v163[24]) >> 3));
          v121 = *&v163[48];
          v122 = v164;
          *(v119 + 96) = v165;
          *(v119 + 64) = v121;
          *(v119 + 80) = v122;
          *v159 += 104;
          v123 = v107[1];
          v124 = v158[1] + *v107 - v123;
          sub_1D0E61D1C(v107, *v107, v123, v124);
          v125 = *v107;
          *v107 = v124;
          v126 = v107[2];
          v153 = *v159;
          *(v107 + 1) = *v159;
          *v159 = v125;
          *&v159[8] = v126;
          v158[0] = v125;
          v158[1] = v125;
          sub_1D0E61DCC(v158);
          v114 = v153;
        }

        else
        {
          *v110 = 0;
          *(v110 + 8) = 0;
          *(v110 + 16) = 0;
          sub_1D0E6B1AC(v110, __p[0], __p[1], (__p[1] - __p[0]) >> 4);
          v111 = *&v163[8];
          *(v110 + 40) = 0;
          *(v110 + 24) = v111;
          *(v110 + 48) = 0;
          *(v110 + 56) = 0;
          sub_1D0E6AB04(v110 + 40, *&v163[24], *&v163[32], 0x8E38E38E38E38E39 * ((*&v163[32] - *&v163[24]) >> 3));
          v112 = *&v163[48];
          v113 = v164;
          *(v110 + 96) = v165;
          *(v110 + 64) = v112;
          *(v110 + 80) = v113;
          v114 = v110 + 104;
          v107[1] = v110 + 104;
        }

        v107[1] = v114;
        if (v166)
        {
          *(&v166 + 1) = v166;
          operator delete(v166);
        }

        v158[0] = &v163[24];
        sub_1D0E620B8(v158);
        this = __p[0];
        v47 = v145;
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        v45 = v146 + 1;
        goto LABEL_115;
      }
    }

    *&v164 = v106;
    BYTE8(v164) = 1;
    v107 = (v10 + 392);
    goto LABEL_97;
  }

LABEL_116:
  if (cnprint::CNPrinter::GetLogLevel(this) < 2)
  {
    LOWORD(__p[0]) = 13;
    LOBYTE(v158[0]) = 1;
    v127 = (*(*a2 + 16))(a2);
    v139 = v128 + v127;
    cnprint::CNPrinter::Print(__p, v158, "#tre_ao,time,%.3lf,new track data,num_tracks,%d,num_lanes,%d,num_lane_coordinates,%d,is_sparse_event,%d", v129, v130, v131, v132, v133, SLOBYTE(v139));
  }

  if (v151)
  {
    if (*(v10 + 2376) == 1)
    {
      trackrun::TrackRunEngineActiveObject::HandleEvent(v10, (v10 + 2288));
    }
  }
}

void sub_1D0E68A7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *__p, uint64_t a52, int a53, __int16 a54, char a55, char a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  if (a56 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D0E68B94()
{
  if (*(v0 - 137) < 0)
  {
    operator delete(*(v0 - 160));
  }

  JUMPOUT(0x1D0E68B74);
}

uint64_t sub_1D0E68BAC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 88) == 1)
  {
    if (a1 != a2)
    {
      v4 = *(a1 + 8);
      v6 = *(a2 + 8);
      v5 = *(a2 + 16);
      v7 = v5 - v6;
      if (*(a1 + 24) - v4 < (v5 - v6))
      {
        v8 = 0x4EC4EC4EC4EC4EC5 * (v7 >> 3);
        sub_1D0E6A944((a1 + 8));
        if (v8 <= 0x276276276276276)
        {
          v9 = 0x9D89D89D89D89D8ALL * ((*(a1 + 24) - *(a1 + 8)) >> 3);
          if (v9 <= v8)
          {
            v9 = v8;
          }

          if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 24) - *(a1 + 8)) >> 3)) >= 0x13B13B13B13B13BLL)
          {
            v10 = 0x276276276276276;
          }

          else
          {
            v10 = v9;
          }

          sub_1D0E6A9AC(a1 + 8, v10);
        }

        sub_1D0C5663C();
      }

      v14 = *(a1 + 16) - v4;
      if (v14 >= v7)
      {
        v15 = sub_1D0E6ACA8(*(a2 + 8), *(a2 + 16), v4);
        for (i = *(a1 + 16); i != v15; sub_1D0E61C78(i))
        {
          i -= 104;
        }

        *(a1 + 16) = v15;
      }

      else
      {
        sub_1D0E6ACA8(*(a2 + 8), v6 + v14, v4);
        *(a1 + 16) = sub_1D0E6A9FC(a1 + 8, v6 + v14, v5, *(a1 + 16));
      }
    }

    v17 = *(a2 + 32);
    v18 = *(a2 + 48);
    v19 = *(a2 + 64);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 48) = v18;
    *(a1 + 64) = v19;
    *(a1 + 32) = v17;
  }

  else
  {
    *a1 = &unk_1F4CF0B60;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 8) = 0;
    sub_1D0E6B080(a1 + 8, *(a2 + 8), *(a2 + 16), 0x4EC4EC4EC4EC4EC5 * ((*(a2 + 16) - *(a2 + 8)) >> 3));
    v11 = *(a2 + 32);
    v12 = *(a2 + 48);
    v13 = *(a2 + 64);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 48) = v12;
    *(a1 + 64) = v13;
    *(a1 + 32) = v11;
    *(a1 + 88) = 1;
  }

  return a1;
}

BOOL trackrun::TrackRunEngineActiveObject::CopyTrackLaneData(trackrun::TrackRunEngineActiveObject *this, const trackrun::RunningTrackData::RunningTrackLane *a2, trackrun::RunningTrackData::RunningTrackLane *a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v55 = *MEMORY[0x1E69E9840];
  v10 = *a2;
  v11 = *(a2 + 1);
  v13 = (v11 - v10) >> 4;
  if (v13 <= 2)
  {
    LOWORD(v54.f64[0]) = 13;
    v53 = 4;
    cnprint::CNPrinter::Print(&v54, &v53, "#tre_ao,lane has fewer than three coordinates,%lu", a4, a5, a6, a7, a8, (v11 - v10) >> 4);
  }

  else
  {
    if (a3 != a2)
    {
      sub_1D0E6AE98(a3, v10, v11, (v11 - v10) >> 4);
    }

    v15 = *(a2 + 24);
    v16 = *(a2 + 40);
    *(a3 + 56) = *(a2 + 56);
    *(a3 + 40) = v16;
    *(a3 + 24) = v15;
    v17 = *a3;
    v18 = *(a3 + 1);
    if (*a3 != v18)
    {
      do
      {
        trackrun::TrackRunEngineActiveObject::ConvertPointLatLonToEastNorth(this, v17++, v11, a4, a5, a6, a7, a8);
      }

      while (v17 != v18);
      v17 = *a3;
      v18 = *(a3 + 1);
    }

    v19 = v18 - v17;
    v20 = (v18 - v17) >> 4;
    if (v20 >= 3)
    {
      v21 = v17->f64[0];
      v22 = *(v18 - 2);
      if (v17->f64[0] != v22)
      {
        if ((*&v21 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v22 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_27;
        }

        v50 = fabs(v21);
        v51 = fabs(v22);
        v52 = vabdd_f64(v21, v22);
        if (v50 < v51)
        {
          v50 = v51;
        }

        if (v50 < 1.0)
        {
          v50 = 1.0;
        }

        if (v52 > v50 * 2.22044605e-16)
        {
          goto LABEL_27;
        }
      }

      v23 = v17->f64[1];
      v24 = *(v18 - 1);
      if (v23 != v24)
      {
        if ((*&v23 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v24 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_27;
        }

        v26 = fabs(v23);
        v27 = fabs(v24);
        v28 = vabdd_f64(v23, v24);
        if (v26 >= v27)
        {
          v29 = v26;
        }

        else
        {
          v29 = v27;
        }

        if (v29 < 1.0)
        {
          v29 = 1.0;
        }

        if (v28 > v29 * 2.22044605e-16)
        {
LABEL_27:
          v31 = v17->f64[1];
          v32 = *(a3 + 2);
          if (v18 >= v32)
          {
            v33 = v20 + 1;
            if ((v20 + 1) >> 60)
            {
              sub_1D0C5663C();
            }

            v34 = v32 - v17;
            if (v34 >> 3 > v33)
            {
              v33 = v34 >> 3;
            }

            if (v34 >= 0x7FFFFFFFFFFFFFF0)
            {
              v35 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v35 = v33;
            }

            if (v35)
            {
              sub_1D0BC40DC(a3, v35);
            }

            v36 = (16 * v20);
            *v36 = v21;
            v36[1] = v31;
            v18 = (16 * v20 + 16);
            v37 = *(a3 + 1) - *a3;
            v38 = (16 * v20 - v37);
            memcpy(v38, *a3, v37);
            v39 = *a3;
            *a3 = v38;
            *(a3 + 1) = v18;
            *(a3 + 2) = 0;
            if (v39)
            {
              operator delete(v39);
            }
          }

          else
          {
            *v18 = v21;
            *(v18 + 1) = v31;
            v18 += 16;
          }

          *(a3 + 1) = v18;
          v17 = *a3;
          v19 = &v18[-*a3];
        }
      }
    }

    if (v19 >= 0x40)
    {
      v40 = (v18 - 16);
      if (v18 - 16 != v17)
      {
        v41 = 0.0;
        v42 = (v18 - 16);
        v43 = (v18 - 16);
        do
        {
          v44 = v43[-1].f64[0];
          --v43;
          v41 = v41 + (*v42 + v44) * (v42[1] - *(v42 - 1));
          v42 = v43;
        }

        while (v43 != v17);
        if (v41 * 0.5 < 0.0 && v40 > v17)
        {
          v46 = v17 + 1;
          do
          {
            v54 = v46[-1];
            v46[-1] = *v40;
            *v40-- = v54;
          }

          while (v46++ < v40);
        }
      }
    }
  }

  result = v13 > 2;
  v49 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t trackrun::TrackRunEngineActiveObject::ConvertPointLatLonToEastNorth(uint64_t a1, float64x2_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 368);
  if (v9 == 1)
  {
    v10 = vmulq_f64(vsubq_f64(*a2, *(a1 + 352)), *(a1 + 376));
  }

  else
  {
    v14 = 13;
    v13 = 4;
    cnprint::CNPrinter::Print(&v14, &v13, "#tre_ao,point coordinate conversion from lat lon to east north could not be completed", a4, a5, a6, a7, a8, v12);
    v10 = 0uLL;
  }

  *a2 = vextq_s8(v10, v10, 8uLL);
  return v9;
}

double trackrun::TrackRunEngineActiveObject::FindClosestPointOnRing(double *a1, double **a2, int a3, int a4)
{
  v5 = *a2;
  v4 = a2[1];
  v6 = *(*a2 + 1);
  v34 = **a2;
  v35 = v6;
  if (v5 != v4)
  {
    v7 = v5 + 2;
    if (v5 + 2 == v4)
    {
      v23 = *v5;
      v24 = v5[1];
      v25 = a1[1];
      v26 = v23 - v23;
      v27 = v24 - v24;
      v28 = *a1 - *v5;
      v29 = (v24 - v24) * (v25 - v24) + v28 * (v23 - v23);
      if (v29 <= 0.0 || (v30 = v27 * v27 + v26 * v26, v30 <= v29))
      {
        v32 = v28 * v28 + 0.0 + (v25 - v24) * (v25 - v24);
      }

      else
      {
        v31 = *a1 - (v23 + v26 * (v29 / v30));
        v32 = v31 * v31 + 0.0 + (v25 - (v24 + v27 * (v29 / v30))) * (v25 - (v24 + v27 * (v29 / v30)));
      }

      if (v32 < 1.79769313e308)
      {
        v34 = *v5;
        v35 = v34;
      }
    }

    else
    {
      v8 = *a1;
      v9 = a1[1];
      v11 = *v5;
      v10 = v5[1];
      v12 = 1.79769313e308;
      do
      {
        v13 = *v7;
        v14 = v7[1];
        v15 = *v7 - v11;
        v16 = v14 - v10;
        v17 = (v9 - v10) * (v14 - v10) + (v8 - v11) * v15;
        if (v17 <= 0.0)
        {
          v22 = (v8 - v11) * (v8 - v11) + 0.0 + (v9 - v10) * (v9 - v10);
        }

        else
        {
          v18 = v16 * v16 + v15 * v15;
          if (v18 <= v17)
          {
            v20 = v9 - v14;
            v21 = v8 - v13;
          }

          else
          {
            v19 = v17 / v18;
            v20 = v9 - (v10 + v16 * v19);
            v21 = v8 - (v11 + v15 * v19);
          }

          v22 = v21 * v21 + 0.0 + v20 * v20;
        }

        if (v22 < v12)
        {
          v34 = *(v7 - 1);
          v35 = *v7;
          v12 = v22;
        }

        v7 += 2;
        v10 = v14;
        v11 = v13;
      }

      while (v7 != v4);
    }
  }

  return trackrun::TrackRunEngineActiveObject::FindClosestPointOnLineSegment(a1, &v34, a3, a4, 0);
}

void trackrun::TrackRunEngineActiveObject::ComputeAcrossTrackDistanceInformation(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, double *a4@<X3>, __int128 *a5@<X8>)
{
  *(a5 + 32) = 0;
  a5[2] = 0u;
  a5[3] = 0u;
  a5[1] = 0u;
  *(a5 + 9) = 0x3FF0000000000000;
  if (*(a3 + 96))
  {
    trackrun::TrackRunEngineActiveObject::FindClosestPointOnRing(a4, *(a3 + 40), 1, 0);
    v11 = v10;
    *(a5 + 3) = v10;
  }

  else
  {
    v11 = 0.0;
  }

  if (*(a1 + 1176) == 1)
  {
    v12 = *(a1 + 1169);
    if (v12 == 1)
    {
      v13 = -0.1863;
    }

    else
    {
      if (v12 != 2)
      {
        goto LABEL_10;
      }

      v13 = 0.1863;
    }

    v11 = v11 + v13;
    *(a5 + 3) = v11;
  }

LABEL_10:
  *a5 = *a4;
  v14 = *(a2 + 200);
  if (v14 > 20.0)
  {
    LOWORD(v51) = 13;
    LOBYTE(v50) = 3;
    sub_1D0B751F4(v52, "TrackRunEngineActiveObject");
    if (v53 >= 0)
    {
      v20 = v52;
    }

    else
    {
      LOBYTE(v20) = v52[0];
    }

    v45 = *(a2 + 200);
    cnprint::CNPrinter::Print(&v51, &v50, "Warning %s, delta_distance for current epoch is very large,%.1lf", v15, v16, v17, v18, v19, v20);
    if (v53 < 0)
    {
      operator delete(v52[0]);
    }

    v14 = 20.0;
  }

  *(a5 + 2) = v14;
  v21 = *(a3 + 40);
  v22 = &v21[9 * *(a3 + 96) - 9];
  ClosestPointOnRing = trackrun::TrackRunEngineActiveObject::FindClosestPointOnRing(a4, v21, 0, 0);
  v25 = v24;
  v26 = trackrun::TrackRunEngineActiveObject::FindClosestPointOnRing(a4, v22, 0, 0);
  *(a5 + 4) = ClosestPointOnRing;
  *(a5 + 5) = v25;
  *(a5 + 6) = v26;
  *(a5 + 7) = v27;
  if (*(a1 + 2736) == 1)
  {
    *(a5 + 32) = *(a1 + 2704);
  }

  if ((*(a3 + 88) & 1) == 0)
  {
    sub_1D0C42F28();
  }

  v28 = *(a3 + 80);
  v29 = v11 + *(a3 + 96) * v28;
  v30 = v11 - v28;
  if (v29 < 0.0 || v30 > 0.0)
  {
    if (v29 >= 0.0)
    {
      v31 = v30;
    }

    else
    {
      v31 = -v29;
    }

    *(a5 + 9) = exp(-(*(*(a1 + 280) + 224) * v31));
    v51 = *a5;
    trackrun::TrackRunEngineActiveObject::ConvertPointEastNorthToLatLon(a1, &v51, v32, v33, v34, v35, v36, v37);
    v50 = 13;
    v49 = 3;
    v38 = *(a1 + 2384);
    v39 = *(a2 + 48) + *(a2 + 40);
    (*(*a2 + 16))(a2);
    trackrun::TrackRunEngineActiveObject::ConvertIosTimeToGregorianString(a1, *(a2 + 40), *(a2 + 48), v52);
    v48 = *(a2 + 104);
    v46 = *(a2 + 152);
    v47 = *(a2 + 168);
    cnprint::CNPrinter::Print(&v50, &v49, "TrackRun-OUT-%u,viewType,SingleArrowCoordinate,iOSTime,%.1lf,mcTime,%.1lf,gregTime,%s,latitude,%.7lf,longitude,%.7lf,course,%.2lf,speed,%.2lf,type,%d,distance,%.1lf,weight_factor,%.1lf", v40, v41, v42, v43, v44, v38);
    if (v53 < 0)
    {
      operator delete(v52[0]);
    }
  }
}

void sub_1D0E695D4(_Unwind_Exception *exception_object)
{
  if (*(v1 - 81) < 0)
  {
    operator delete(*(v1 - 104));
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_1D0E695F4(void *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  if (v5 == v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = 51 * ((v5 - v4) >> 3) - 1;
  }

  v7 = a1[4];
  v8 = a1[5] + v7;
  if (v6 == v8)
  {
    if (v7 < 0x33)
    {
      v9 = a1[3];
      v10 = v9 - *a1;
      if (v5 - v4 < v10)
      {
        operator new();
      }

      v11 = v10 >> 2;
      if (v9 == *a1)
      {
        v12 = 1;
      }

      else
      {
        v12 = v11;
      }

      sub_1D0C4E87C(v12);
    }

    a1[4] = v7 - 51;
    v17 = *v4;
    a1[1] = v4 + 8;
    sub_1D0C149C4(a1, &v17);
    v4 = a1[1];
    v8 = a1[5] + a1[4];
  }

  v13 = *&v4[8 * (v8 / 0x33)] + 80 * (v8 % 0x33);
  *v13 = *a2;
  result = *(a2 + 16);
  v15 = *(a2 + 32);
  v16 = *(a2 + 64);
  *(v13 + 48) = *(a2 + 48);
  *(v13 + 64) = v16;
  *(v13 + 16) = result;
  *(v13 + 32) = v15;
  ++a1[5];
  return result;
}

void sub_1D0E69A80(_Unwind_Exception *a1)
{
  operator delete(v2);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

void trackrun::TrackRunEngineActiveObject::PruneAcrossTrackDistanceDeque(trackrun::TrackRunEngineActiveObject *this)
{
  v5 = *(this + 355);
  if (v5 >= 2)
  {
    v39 = v4;
    v40 = v3;
    v41 = v1;
    v42 = v2;
    v7 = *(this + 354);
    do
    {
      v8 = v7 + v5;
      v9 = *(this + 351);
      v10 = (v9 + 8 * (v8 / 0x33));
      v11 = *v10 + 80 * (v8 % 0x33);
      if (*(this + 352) == v9)
      {
        v11 = 0;
      }

      if (*v10 == v11)
      {
        v11 = *(v10 - 1) + 4080;
      }

      trackrun::TrackRunEngineActiveObject::FindClosestPointOnLineSegment((v11 - 80), (*(v9 + 8 * (v7 / 0x33)) + 80 * (v7 % 0x33) + 32), 1, 0, 0);
      v14 = v13;
      v15 = *(this + 354);
      v16 = v15 + *(this + 355);
      v17 = *(this + 351);
      v18 = (v17 + 8 * (v16 / 0x33));
      v19 = *v18 + 80 * (v16 % 0x33);
      if (*(this + 352) == v17)
      {
        v19 = 0;
      }

      if (*v18 == v19)
      {
        v19 = *(v18 - 1) + 4080;
      }

      v20 = *(v19 - 16);
      v21 = *(*(v17 + 8 * (v15 / 0x33)) + 80 * (v15 % 0x33) + 64);
      LogLevel = cnprint::CNPrinter::GetLogLevel(v12);
      if (!LogLevel)
      {
        v38 = 13;
        v37 = 0;
        cnprint::CNPrinter::Print(&v38, &v37, "#tre_ao,lap_count,first,%d,last,%d,signed_last,%.1lf", v23, v24, v25, v26, v27, v21);
      }

      if (v14 <= 0.0 || v20 <= v21 && *(this + 331) <= 250.0)
      {
        break;
      }

      if (cnprint::CNPrinter::GetLogLevel(LogLevel) <= 1)
      {
        v36 = 13;
        v35 = 1;
        v34 = *(this + 355);
        cnprint::CNPrinter::Print(&v36, &v35, "#tre_ao,dist_to_first_point is positive,discarding,%.1lf,size,%lu", v28, v29, v30, v31, v32, SLOBYTE(v14));
      }

      v33 = vaddq_s64(*(this + 177), xmmword_1D0E76280);
      *(this + 177) = v33;
      v7 = v33.i64[0];
      if (v33.i64[0] < 0x66uLL)
      {
        v5 = v33.u64[1];
      }

      else
      {
        operator delete(**(this + 351));
        *(this + 351) += 8;
        v7 = *(this + 354) - 51;
        *(this + 354) = v7;
        v5 = *(this + 355);
      }
    }

    while (v5 > 1);
  }
}

void trackrun::TrackRunEngineActiveObject::ComputeAcrossTrackDistanceEvidence(trackrun::TrackRunEngineActiveObject *this@<X0>, const trackrun::PositionEvent *a2@<X1>, const trackrun::RunningTrackData::RunningTrack *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = this;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0x7FF8000000000000;
  v5 = *(a3 + 12);
  if (!*(*(this + 35) + 66))
  {
    v5 = 1;
  }

  v40 = v5;
  if (!v5)
  {
    if ((*(*(this + 35) + 66) & 1) == 0)
    {
      return;
    }

    v8 = 0;
    goto LABEL_26;
  }

  v8 = 0;
  v9 = 0;
  v37 = this + 4456;
  v38 = 0x7FF8000000000000;
  v39 = 0;
  v10 = 0.0;
  v11 = INFINITY;
  v12 = 0;
  v13 = 0.0;
  do
  {
    v43[0] = 0;
    v44 = 0u;
    memset(v45, 0, sizeof(v45));
    v14 = 0.0;
    v15 = 10.0;
    if (*(v4 + 355))
    {
      v16 = 0;
      do
      {
        if ((*(a3 + 88) & 1) == 0)
        {
          goto LABEL_30;
        }

        v17 = (*(*(v4 + 351) + 8 * ((v16 + *(v4 + 354)) / 0x33)) + 80 * ((v16 + *(v4 + 354)) % 0x33));
        v42 = v17[3] + *(a3 + 10) * v9;
        this = sub_1D0B8954C(v43, &v42, v17[9] * v17[2]);
        ++v16;
        v18 = *(v4 + 355);
      }

      while (v16 < v18);
      v14 = *&v45[1];
      v19 = sqrt(*&v45[5]);
      if (v18 <= 4)
      {
        v15 = 10.0;
      }

      else
      {
        v15 = v19;
      }
    }

    v20 = fabs(v14);
    if (v20 < v11)
    {
      v11 = v20;
      v8 = v9;
    }

    if (*(*(v4 + 35) + 66))
    {
      this = cnprint::CNPrinter::GetLogLevel(this);
      if (this <= 1)
      {
        LOWORD(v42) = 13;
        v41 = 1;
        v21 = (*(*a2 + 16))(a2);
        if ((*(a3 + 88) & 1) == 0)
        {
LABEL_30:
          *(a4 + 8) = v12;
          *(a4 + 16) = v10;
          *(a4 + 24) = v39;
          *(a4 + 32) = v38;
          *a4 = v13;
          sub_1D0C42F28();
        }

        v28 = v22 + v21;
        v34 = *(a2 + 25);
        v35 = *(a2 + 21);
        v33 = *(a2 + 104);
        v32 = *&v37[4 * v9];
        v31 = *(a3 + 10);
        cnprint::CNPrinter::Print(&v42, &v41, "#tre_ao,time,%.3lf,laneidx,%lu,weighted_across_track_distance_sum,%.2lf,delta_distance_sum,%.1lf,lane_width,%.1lf,win_count,%u,standard_deviation,%.1lf,source,%hhu,delta_dist,%.3lf,speed,%.1lf", v23, v24, v25, v26, v27, SLOBYTE(v28));
      }
    }

    if (!v9)
    {
      this = (*(*a2 + 16))(a2);
      v38 = v29;
      v39 = this;
      if ((*(a3 + 88) & 1) == 0)
      {
        *(a4 + 8) = v12;
        *(a4 + 16) = v10;
        *(a4 + 24) = this;
        *(a4 + 32) = v29;
        *a4 = v14;
        sub_1D0C42F28();
      }

      v12 = *(a3 + 10);
      v10 = v15;
      v13 = v14;
    }

    ++v9;
  }

  while (v9 != v40);
  *(a4 + 8) = v12;
  *(a4 + 16) = v10;
  v30 = *(*(v4 + 35) + 66);
  *(a4 + 24) = v39;
  *(a4 + 32) = v38;
  *a4 = v13;
  if (v30)
  {
LABEL_26:
    if (*(v4 + 2736) == 1)
    {
      if (*(v4 + 1352))
      {
        ++*(v4 + v8 + 1114);
      }
    }
  }
}

void sub_1D0E6A014(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = (v3 - v2) >> 3;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v5 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = (v5 - v2) >> 3;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v6 = 25;
  }

  else
  {
    if (v4 != 2)
    {
      return;
    }

    v6 = 51;
  }

  a1[4] = v6;
}

double trackrun::TrackRunEngineActiveObject::FindClosestPointOnLineSegment(double *a1, double *a2, int a3, int a4, int a5)
{
  v6 = a1[1];
  v7 = a2[1];
  v8 = a2[2];
  v9 = a2[3];
  v10 = *a1 - *a2;
  v11 = v6 - v7;
  v12 = v8 - *a2;
  v13 = v9 - v7;
  v14 = v13 * v13 + v12 * v12;
  v15 = -1.0;
  if (fabs(v14) >= 2.22044605e-16)
  {
    v15 = (v11 * v13 + v10 * v12) / v14;
  }

  if (v15 < 0.0 && a5 == 0)
  {
    v8 = *a2;
    v9 = a2[1];
    if (a3)
    {
      goto LABEL_13;
    }

LABEL_22:
    if (!a4)
    {
      return v8;
    }

    goto LABEL_23;
  }

  if (v15 <= 1.0 || a5 != 0)
  {
    v8 = *a2 + v15 * v12;
    v9 = v7 + v15 * v13;
  }

  if (!a3)
  {
    goto LABEL_22;
  }

LABEL_13:
  v18 = sqrt((v6 - v9) * (v6 - v9) + (*a1 - v8) * (*a1 - v8));
  v19 = v12 * v11 - v13 * v10;
  v20 = 1.0;
  v21 = 0.0;
  if (v19 < 0.0)
  {
    v21 = -1.0;
  }

  if (v19 <= 0.0)
  {
    v20 = v21;
  }

  v22 = v18 * v20;
  if (!cnprint::CNPrinter::GetLogLevel(a1))
  {
    v30 = 13;
    v29 = 0;
    cnprint::CNPrinter::Print(&v30, &v29, "#tre_ao,signed_distance_to_closest_point_m,%.1lf", v23, v24, v25, v26, v27, SLOBYTE(v22));
  }

  if (a4)
  {
LABEL_23:
    if (fabs(v12) > 0.000000015 || fabs(v13) > 0.000000015)
    {
      atan2(v12, v13);
    }
  }

  return v8;
}

uint64_t sub_1D0E6A238(uint64_t a1, uint64_t a2, void *a3, int8x16_t a4, int8x16_t a5)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  result = CNTimeSpan::operator-((a2 + 8), a3, a4, a5);
  *(a1 + 8) = result;
  *(a1 + 16) = v11;
  if (*(a2 + 24) == 1)
  {
    result = CNTimeSpan::operator-((a2 + 32), a3, v9, v10);
    *(a1 + 32) = result;
    *(a1 + 40) = v12;
  }

  return result;
}

void trackrun::TrackRunEngineActiveObject::HandleEvent(trackrun::TrackRunEngineActiveObject *this, const trackrun::TrackRunHintEvent *a2)
{
  if (cnprint::CNPrinter::GetLogLevel(this) <= 1)
  {
    LOWORD(__p[0]) = 13;
    LOBYTE(v48) = 1;
    v4 = (*(*a2 + 16))(a2);
    v44 = *(a2 + 56);
    v42 = v5 + v4;
    cnprint::CNPrinter::Print(__p, &v48, "#tre_ao,received track run hint event,time,%.1lf,lane_number,%hhu", v6, v7, v8, v9, v10, SLOBYTE(v42));
  }

  v48 = 13;
  v47 = 3;
  v11 = *(this + 2384);
  v12 = *(a2 + 56);
  if (*(this + 744) == 1 && ((*(*(this + 66) + 16))(), (*(this + 744) & 1) != 0))
  {
    v13 = *(this + 71);
    v14 = *(this + 72);
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

  trackrun::TrackRunEngineActiveObject::ConvertIosTimeToGregorianString(this, v13, v14, __p);
  if (*(this + 744) == 1)
  {
    v20 = *(this + 80);
    v21 = *(this + 81);
  }

  if (*(this + 816) == 1)
  {
    v22 = *(this + 808);
  }

  cnprint::CNPrinter::Print(&v48, &v47, "TrackRun-Hint-%u hint:%d,viewType,SingleArrowCoordinate,time,%.1lf,iOSTime,%.1lf,gregTime,%s,latitude,%.7lf,longitude,%.7lf,lane_hint,%d", v15, v16, v17, v18, v19, v11);
  if (v46 < 0)
  {
    operator delete(__p[0]);
  }

  if ((*(*(this + 35) + 201) & 1) == 0)
  {
    if (*(this + 4424) == 1)
    {
      v24 = *(a2 + 56);
      v25 = *(a2 + 8);
      v26 = *(a2 + 24);
      *(this + 275) = *(a2 + 40);
      *(this + 274) = v26;
      *(this + 273) = v25;
      *(this + 4416) = v24;
    }

    else
    {
      *(this + 545) = &unk_1F4CF0CE0;
      v27 = *(a2 + 8);
      v28 = *(a2 + 24);
      v29 = *(a2 + 40);
      *(this + 4416) = *(a2 + 56);
      *(this + 275) = v29;
      *(this + 274) = v28;
      *(this + 273) = v27;
      *(this + 4424) = 1;
    }

    if ((*(this + 816) & 1) == 0)
    {
      if (*(this + 2568) == 1)
      {
        *(this + 2568) = 0;
      }

      if (cnprint::CNPrinter::GetLogLevel(v23) <= 1)
      {
        LOWORD(__p[0]) = 13;
        LOBYTE(v48) = 1;
        cnprint::CNPrinter::Print(__p, &v48, "#tre_ao,received first lane hint of the workout, resetting start line.", v30, v31, v32, v33, v34, v43);
      }
    }

    if (*(this + 816) == 1)
    {
      v35 = *(a2 + 8);
      v36 = *(a2 + 24);
      v37 = *(a2 + 40);
      *(this + 808) = *(a2 + 56);
      *(this + 776) = v36;
      *(this + 792) = v37;
      *(this + 760) = v35;
    }

    else
    {
      *(this + 94) = &unk_1F4CF0CE0;
      v38 = *(a2 + 8);
      v39 = *(a2 + 24);
      v40 = *(a2 + 40);
      *(this + 808) = *(a2 + 56);
      *(this + 776) = v39;
      *(this + 792) = v40;
      *(this + 760) = v38;
      *(this + 816) = 1;
    }

    v41 = *(this + 808);
    if ((*(this + 4448) & 1) == 0)
    {
      *(this + 4448) = 1;
    }

    *(this + 555) = v41;
  }
}

void sub_1D0E6A5DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void trackrun::TrackRunEngineActiveObject::Reset(trackrun::TrackRunEngineActiveObject *this)
{
  if (*(this + 224) == 1)
  {
    v11 = 13;
    v10 = 2;
    sub_1D0B751F4(__p, "TrackRunEngineActiveObject");
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

    trackrun::TrackRunEngineActiveObject::ResetTrackStateWhenLeaveTrackOrSessionEnds(this);
    if (*(this + 744) == 1)
    {
      *(this + 744) = 0;
    }

    std::mutex::lock((this + 288));
    if (*(this + 1800) == 1)
    {
      *(this + 1800) = 0;
    }

    if (*(this + 2184) == 1)
    {
      *(this + 2184) = 0;
    }

    if (*(this + 416) == 1)
    {
      __p[0] = this + 392;
      sub_1D0E62CA0(__p);
      *(this + 416) = 0;
    }

    *(this + 44) = 0;
    *(this + 45) = 0;
    *(this + 46) = 0;
    *(this + 47) = 0x7FF8000000000000;
    *(this + 48) = 0x7FF8000000000000;
    std::mutex::unlock((this + 288));
  }

  *(this + 128) = 0;
  *(this + 17) = 0;
  *(this + 18) = 0x7FF8000000000000;
  *(this + 19) = 0;
  *(this + 105) = 0;
  *(this + 14) = 0;
  *(this + 15) = 0x7FF8000000000000;
  cnframework::ActiveObjectBase::ResetEventQueue(this);
}

void sub_1D0E6A720(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t trackrun::TrackRunEngineActiveObject::ConvertPointEastNorthToLatLon(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  trackrun::TrackRunEngineActiveObject::TrackCoordinateTransform::ConvertEastNorthToLatLon(a1 + 352, a2, a4, a5, a6, a7, a8, &v19);
  v14 = v20;
  if (v20 == 1)
  {
    *a2 = v19;
  }

  else
  {
    cnprint::CNPrinter::Print(&v18, &v17, "#tre_ao,point coordinate conversion from east north to lat lon could not be completed", v9, v10, v11, v12, v13, v16);
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  return v14;
}

void sub_1D0E6A7B8(uint64_t a1)
{
  sub_1D0E6B318(a1);

  JUMPOUT(0x1D387ECA0);
}

void *sub_1D0E6A7F0(void *result)
{
  *result = &unk_1F4CF0FD8;
  result[18] = &unk_1F4CD5E28;
  result[1] = &unk_1F4CD5E28;
  return result;
}

void sub_1D0E6A850(void *a1)
{
  *a1 = &unk_1F4CF0FD8;
  a1[18] = &unk_1F4CD5E28;
  a1[1] = &unk_1F4CD5E28;
  JUMPOUT(0x1D387ECA0);
}

double sub_1D0E6A8C0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 24) = 0x10000000CLL;
  *a2 = &unk_1F4CDFFF8;
  *(a2 + 8) = xmmword_1D0E83DD0;
  *(a2 + 32) = a2 + 40;
  v2 = 144;
  if (!*(a1 + 280))
  {
    v2 = 8;
  }

  *&result = sub_1D0B894B0(a2, a1 + v2).n128_u64[0];
  return result;
}

void sub_1D0E6A944(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v3 -= 104;
        sub_1D0E61C78(v3);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_1D0E6A9AC(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x276276276276277)
  {
    sub_1D0E61CC0(a1, a2);
  }

  sub_1D0C5663C();
}

uint64_t sub_1D0E6A9FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      v8 = a2 + v7;
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      sub_1D0E6B1AC(a4, *(a2 + v7), *(a2 + v7 + 8), (*(a2 + v7 + 8) - *(a2 + v7)) >> 4);
      v9 = *(a2 + v7 + 24);
      *(a4 + 40) = 0;
      *(a4 + 24) = v9;
      *(a4 + 48) = 0;
      *(a4 + 56) = 0;
      sub_1D0E6AB04(a4 + 40, *(v8 + 40), *(v8 + 48), 0x8E38E38E38E38E39 * ((*(v8 + 48) - *(v8 + 40)) >> 3));
      v10 = *(a2 + v7 + 64);
      v11 = *(a2 + v7 + 80);
      *(a4 + 96) = *(a2 + v7 + 96);
      *(a4 + 64) = v10;
      *(a4 + 80) = v11;
      a4 += 104;
      v7 += 104;
    }

    while (v8 + 104 != a3);
  }

  return a4;
}

void sub_1D0E6AAC0(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 104;
    v5 = -v2;
    do
    {
      sub_1D0E61C78(v4);
      v4 -= 104;
      v5 += 104;
    }

    while (v5);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0E6AB04(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1D0E6AB8C(result, a4);
  }

  return result;
}

void sub_1D0E6AB6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1D0E620B8(&a9);
  _Unwind_Resume(a1);
}

void sub_1D0E6AB8C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    sub_1D0E61E1C(a1, a2);
  }

  sub_1D0C5663C();
}

uint64_t sub_1D0E6ABDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v12 = a4;
  v13 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  v11 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      *(v4 + 8) = 0;
      *(v4 + 16) = 0;
      sub_1D0E6B1AC(v4, *v6, *(v6 + 8), (*(v6 + 8) - *v6) >> 4);
      v7 = *(v6 + 24);
      v8 = *(v6 + 40);
      *(v4 + 56) = *(v6 + 56);
      *(v4 + 40) = v8;
      *(v4 + 24) = v7;
      v6 += 72;
      v4 = v13 + 72;
      v13 += 72;
    }

    while (v6 != a3);
  }

  v11 = 1;
  sub_1D0E61F4C(v10);
  return v4;
}

uint64_t sub_1D0E6ACA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      if (a3 == v5)
      {
        *(a3 + 24) = *(v5 + 24);
      }

      else
      {
        sub_1D0E6AE98(a3, *v5, *(v5 + 8), (*(v5 + 8) - *v5) >> 4);
        v7 = (a3 + 40);
        v6 = *(a3 + 40);
        *(a3 + 24) = *(v5 + 24);
        v9 = *(v5 + 40);
        v8 = *(v5 + 48);
        v10 = v8 - v9;
        v11 = *(a3 + 56);
        if (v11 - v6 < (v8 - v9))
        {
          if (v6)
          {
            sub_1D0E6210C((a3 + 40));
            operator delete(*v7);
            v11 = 0;
            *v7 = 0;
            *(a3 + 48) = 0;
            *(a3 + 56) = 0;
          }

          v12 = 0x8E38E38E38E38E39 * (v10 >> 3);
          if (v12 <= 0x38E38E38E38E38ELL)
          {
            v13 = 0x8E38E38E38E38E39 * (v11 >> 3);
            if (2 * v13 > v12)
            {
              v12 = 2 * v13;
            }

            if (v13 >= 0x1C71C71C71C71C7)
            {
              v14 = 0x38E38E38E38E38ELL;
            }

            else
            {
              v14 = v12;
            }

            sub_1D0E6AB8C(a3 + 40, v14);
          }

          sub_1D0C5663C();
        }

        v15 = *(a3 + 48) - v6;
        if (v15 >= v10)
        {
          v16 = sub_1D0E6B000(*(v5 + 40), *(v5 + 48), v6);
          v17 = *(a3 + 48);
          if (v17 != v16)
          {
            v18 = *(a3 + 48);
            do
            {
              v20 = *(v18 - 72);
              v18 -= 72;
              v19 = v20;
              if (v20)
              {
                *(v17 - 64) = v19;
                operator delete(v19);
              }

              v17 = v18;
            }

            while (v18 != v16);
          }

          *(a3 + 48) = v16;
        }

        else
        {
          sub_1D0E6B000(*(v5 + 40), v9 + v15, v6);
          *(a3 + 48) = sub_1D0E6ABDC(a3 + 40, v9 + v15, v8, *(a3 + 48));
        }
      }

      v21 = *(v5 + 64);
      v22 = *(v5 + 80);
      *(a3 + 96) = *(v5 + 96);
      *(a3 + 64) = v21;
      *(a3 + 80) = v22;
      v5 += 104;
      a3 += 104;
    }

    while (v5 != a2);
  }

  return a3;
}

void *sub_1D0E6AE98(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 60))
    {
      v9 = v7 >> 3;
      if (v7 >> 3 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF0)
      {
        v10 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_1D0E6AFC4(v6, v10);
    }

    sub_1D0C5663C();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 4)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void sub_1D0E6AFC4(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    sub_1D0BC40DC(a1, a2);
  }

  sub_1D0C5663C();
}

uint64_t sub_1D0E6B000(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      if (v5 != a3)
      {
        sub_1D0E6AE98(a3, *v5, *(v5 + 8), (*(v5 + 8) - *v5) >> 4);
      }

      v6 = *(v5 + 24);
      v7 = *(v5 + 40);
      *(a3 + 56) = *(v5 + 56);
      *(a3 + 40) = v7;
      *(a3 + 24) = v6;
      v5 += 72;
      a3 += 72;
    }

    while (v5 != a2);
  }

  return a3;
}

uint64_t sub_1D0E6B080(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1D0E6A9AC(result, a4);
  }

  return result;
}

void sub_1D0E6B0E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1D0E62CA0(&a9);
  _Unwind_Resume(a1);
}

__n128 sub_1D0E6B108(uint64_t a1, __n128 *a2)
{
  if (*(a1 + 24) == a2[1].n128_u8[8])
  {
    if (*(a1 + 24))
    {
      sub_1D0E6A944(a1);
      result = *a2;
      *a1 = *a2;
      *(a1 + 16) = a2[1].n128_u64[0];
      a2->n128_u64[0] = 0;
      a2->n128_u64[1] = 0;
      a2[1].n128_u64[0] = 0;
    }
  }

  else if (*(a1 + 24))
  {
    v5 = a1;
    sub_1D0E62CA0(&v5);
    *(a1 + 24) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    result = *a2;
    *a1 = *a2;
    *(a1 + 16) = a2[1].n128_u64[0];
    a2->n128_u64[0] = 0;
    a2->n128_u64[1] = 0;
    a2[1].n128_u64[0] = 0;
    *(a1 + 24) = 1;
  }

  return result;
}

uint64_t sub_1D0E6B1AC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1D0E6AFC4(result, a4);
  }

  return result;
}

void sub_1D0E6B20C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_1D0E6B228(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 176) == *(a2 + 176))
  {
    if (*(a1 + 176))
    {
      *a1 = *a2;
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 64) = *(a2 + 64);
      if (*(a1 + 104) == *(a2 + 104))
      {
        if (*(a1 + 104))
        {
          *(a1 + 72) = *(a2 + 72);
          *(a1 + 88) = *(a2 + 88);
        }
      }

      else if (*(a1 + 104))
      {
        *(a1 + 104) = 0;
      }

      else
      {
        v4 = *(a2 + 72);
        *(a1 + 88) = *(a2 + 88);
        *(a1 + 72) = v4;
        *(a1 + 104) = 1;
      }

      result = *(a2 + 112);
      v5 = *(a2 + 128);
      v6 = *(a2 + 144);
      *(a1 + 153) = *(a2 + 153);
      *(a1 + 128) = v5;
      *(a1 + 144) = v6;
      *(a1 + 112) = result;
    }
  }

  else if (*(a1 + 176))
  {
    *(a1 + 176) = 0;
  }

  else
  {
    v2 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v2;
    *(a1 + 72) = 0;
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
    *(a1 + 120) = 0;
    *(a1 + 128) = 0;
    *(a1 + 136) = 0;
    *(a1 + 144) = 0;
    *(a1 + 168) = 0;
    result.n128_u64[0] = 0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0;
    *(a1 + 176) = 1;
  }

  return result;
}

void sub_1D0E6B318(uint64_t a1)
{
  *a1 = &unk_1F4CF0F48;
  *(a1 + 4048) = &unk_1F4CF0FD8;
  *(a1 + 4192) = &unk_1F4CD5E28;
  *(a1 + 4056) = &unk_1F4CD5E28;
  *(a1 + 2856) = &unk_1F4CD5E28;
  sub_1D0E6B518((a1 + 2800));
  if (*(a1 + 2376) == 1)
  {
    *(a1 + 2288) = &unk_1F4CF0B60;
    v2 = (a1 + 2296);
    sub_1D0E62CA0(&v2);
  }

  if (*(a1 + 2280) == 1)
  {
    *(a1 + 2192) = &unk_1F4CF0B60;
    v2 = (a1 + 2200);
    sub_1D0E62CA0(&v2);
  }

  if (*(a1 + 1416) == 1)
  {
    *(a1 + 1184) = &unk_1F4CF0BC0;
    if (*(a1 + 1271) < 0)
    {
      operator delete(*(a1 + 1248));
    }
  }

  if (*(a1 + 1104) == 1)
  {
    trackrun::VisitEvent::~VisitEvent((a1 + 824));
  }

  if (*(a1 + 448) == 1)
  {
    v2 = (a1 + 424);
    sub_1D0E62CA0(&v2);
  }

  if (*(a1 + 416) == 1)
  {
    v2 = (a1 + 392);
    sub_1D0E62CA0(&v2);
  }

  std::mutex::~mutex((a1 + 288));
  if (*(a1 + 279) < 0)
  {
    operator delete(*(a1 + 256));
  }

  if (*(a1 + 255) < 0)
  {
    operator delete(*(a1 + 232));
  }

  raven::RavenCoarseOdometerActiveObject::~RavenCoarseOdometerActiveObject(a1);
}

uint64_t sub_1D0E6B518(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 25;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 51;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return sub_1D0C565EC(a1);
}

std::bad_cast *sub_1D0E6B5C4(std::bad_cast *a1)
{
  result = std::bad_cast::bad_cast(a1);
  result->__vftable = &unk_1F4CF1058;
  return result;
}

std::bad_cast *sub_1D0E6B5FC(std::bad_cast *a1)
{
  result = std::bad_cast::bad_cast(a1);
  result->__vftable = &unk_1F4CF1080;
  return result;
}

void sub_1D0E6B634(std::exception *a1)
{
  std::exception::~exception(a1);

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0E6B678(std::exception *a1)
{
  std::exception::~exception(a1);

  JUMPOUT(0x1D387ECA0);
}

uint64_t sub_1D0E6B6BC(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = a3;
  v6 = a1[2];
  v7 = v6 / 2 + *a1 / 2;
  v8 = *a1 % 2;
  v9 = *(a1 + 1);
  v83 = *a1;
  v85 = *(&v9 + 1);
  v81.n128_u64[1] = v83.n128_u64[1];
  v82 = v9;
  v10 = v7 + ((((v6 % 2) + v8 + ((((v6 % 2) + v8) & 0x80) >> 7)) << 24) >> 25);
  v84 = v10;
  v80 = 0;
  v81.n128_u64[0] = v10;
  v78 = 0;
  v79 = 0;
  __p = 0;
  v76 = 0;
  v77 = 0;
  v73 = 0uLL;
  v74 = 0;
  v12 = *a2;
  v11 = *(a2 + 8);
  if (*a2 == v11)
  {
    v31 = 0;
    goto LABEL_59;
  }

  v14 = v85;
  v15 = v83;
  v16 = v82;
  v17 = v81.n128_i64[1];
  do
  {
    v18 = *v12;
    v19 = *(*v12 + 32);
    v20 = v10 >= v19 && v15.n128_i64[0] <= v18[6] && v14 >= v18[5] && v15.n128_u64[1] <= v18[7];
    if (v16 < v19 || v10 > v18[6])
    {
      if (!v20)
      {
        goto LABEL_32;
      }

      p_p = &v78;
LABEL_31:
      sub_1D0E6BC48(p_p, v12);
      v11 = *(a2 + 8);
      goto LABEL_32;
    }

    v23 = v18[5];
    v24 = v18[7];
    v25 = *(&v16 + 1) >= v23 && v17 <= v24;
    v26 = v25;
    v27 = v25 || v20;
    v28 = (v20 & v26) == 0;
    v29 = &v78;
    if (!v28)
    {
      v29 = &v73;
    }

    if (v20)
    {
      p_p = v29;
    }

    else
    {
      p_p = &__p;
    }

    if (v27)
    {
      goto LABEL_31;
    }

LABEL_32:
    ++v12;
  }

  while (v12 != v11);
  v30 = *(&v73 + 1);
  v31 = v73;
  if (v73 == *(&v73 + 1))
  {
    v5 = a3;
    goto LABEL_59;
  }

  v32 = vnegq_f64(0);
  v33.f64[0] = NAN;
  v33.f64[1] = NAN;
  v34 = vnegq_f64(v33);
  v35 = v73;
  v36 = v34;
  v37 = v32;
  v5 = a3;
  do
  {
    v38 = *v35++;
    v39 = v38[2];
    v40 = v38[3];
    v41 = vcgtq_s64(v34, v39);
    v42 = vbslq_s8(v41, v39, v36);
    v43 = vbslq_s8(v41, v39, v34);
    v44 = vcgtq_s64(v43, v40);
    v36 = vbslq_s8(v44, v40, v42);
    v34 = vbslq_s8(v44, v40, v43);
    v45 = vcgtq_s64(v39, v32);
    v46 = vbslq_s8(v45, v39, v37);
    v47 = vbslq_s8(v45, v39, v32);
    v48 = vcgtq_s64(v40, v47);
    v37 = vbslq_s8(v48, v40, v46);
    v32 = vbslq_s8(v48, v40, v47);
  }

  while (v35 != *(&v73 + 1));
  v72[0] = v36;
  v72[1] = v37;
  v49 = v73;
  if (a3 > 0x63 || (v49 = v73, *(&v73 + 1) - v73 < 0x79uLL))
  {
LABEL_53:
    v54 = v49 + 1;
    if (v49 + 1 == v30)
    {
      goto LABEL_54;
    }

    v50 = v49 + 1;
    while (1)
    {
      v51 = *v49;
      v52 = *v50;
      if (*(*v49 + 48) >= *(*v50 + 32) && *(v51 + 32) <= *(v52 + 48))
      {
        v53 = *(v51 + 56) >= *(v52 + 40) && *(v51 + 40) <= *(v52 + 56);
        if (v53 && (*(v51 + 96) & 1) == 0 && (*(v52 + 96) & 1) == 0 && !sub_1D0B82AC0(*(a4 + 40), **a4, *(*a4 + 8), v51, *(a4 + 40), **a4, *(*a4 + 8), v52, *(a4 + 44), *(a4 + 8), *(a4 + 16), *(a4 + 24), *(a4 + 32)))
        {
          break;
        }
      }

      if (++v50 == v30)
      {
        ++v49;
        if (v54 == v30)
        {
          goto LABEL_54;
        }

        goto LABEL_53;
      }
    }

LABEL_62:
    v57 = 0;
    if (!v31)
    {
      goto LABEL_83;
    }

LABEL_82:
    *(&v73 + 1) = v31;
    operator delete(v31);
    goto LABEL_83;
  }

  if (!sub_1D0E6BEB8(v72, &v73, a3 + 1, a4))
  {
    goto LABEL_62;
  }

LABEL_54:
  if (!sub_1D0E6BD48(v72, &v73, &v78, a3, a4) || (sub_1D0E6BD48(v72, &v73, &__p, a3, a4) & 1) == 0)
  {
    goto LABEL_62;
  }

LABEL_59:
  v56 = v78;
  v55 = v79;
  if (v5 > 0x63 || (v79 - v78) < 0x79)
  {
    if (v78 != v79)
    {
LABEL_65:
      v58 = v56 + 8;
      if (v56 + 8 != v55)
      {
        v59 = v56 + 8;
        while (1)
        {
          v60 = *v56;
          v61 = *v59;
          if (*(*v56 + 48) >= *(*v59 + 32) && *(v60 + 32) <= *(v61 + 48))
          {
            v62 = *(v60 + 56) >= *(v61 + 40) && *(v60 + 40) <= *(v61 + 56);
            if (v62 && (*(v60 + 96) & 1) == 0 && (*(v61 + 96) & 1) == 0 && !sub_1D0B82AC0(*(a4 + 40), **a4, *(*a4 + 8), v60, *(a4 + 40), **a4, *(*a4 + 8), v61, *(a4 + 44), *(a4 + 8), *(a4 + 16), *(a4 + 24), *(a4 + 32)))
            {
              goto LABEL_62;
            }
          }

          v59 += 8;
          if (v59 == v55)
          {
            v56 += 8;
            if (v58 != v55)
            {
              goto LABEL_65;
            }

            break;
          }
        }
      }
    }
  }

  else if (!sub_1D0E6BEB8(&v83, &v78, v5 + 1, a4))
  {
    goto LABEL_62;
  }

  v64 = __p;
  v63 = v76;
  if (v5 > 0x63 || (v76 - __p) < 0x79)
  {
    if (__p != v76)
    {
LABEL_89:
      v66 = v64 + 8;
      if (v64 + 8 != v63)
      {
        v67 = v64 + 8;
        while (1)
        {
          v68 = *v64;
          v69 = *v67;
          if (*(*v64 + 48) >= *(*v67 + 32) && *(v68 + 32) <= *(v69 + 48))
          {
            v70 = *(v68 + 56) >= *(v69 + 40) && *(v68 + 40) <= *(v69 + 56);
            if (v70 && (*(v68 + 96) & 1) == 0 && (*(v69 + 96) & 1) == 0 && !sub_1D0B82AC0(*(a4 + 40), **a4, *(*a4 + 8), v68, *(a4 + 40), **a4, *(*a4 + 8), v69, *(a4 + 44), *(a4 + 8), *(a4 + 16), *(a4 + 24), *(a4 + 32)))
            {
              goto LABEL_62;
            }
          }

          v67 += 8;
          if (v67 == v63)
          {
            v64 += 8;
            if (v66 != v63)
            {
              goto LABEL_89;
            }

            break;
          }
        }
      }
    }

    v57 = 1;
    if (!v31)
    {
      goto LABEL_83;
    }

    goto LABEL_82;
  }

  v57 = sub_1D0E6BEB8(&v81, &__p, v5 + 1, a4);
  if (v31)
  {
    goto LABEL_82;
  }

LABEL_83:
  if (__p)
  {
    operator delete(__p);
  }

  if (v78)
  {
    operator delete(v78);
  }

  return v57;
}

void sub_1D0E6BBFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, void *a26)
{
  if (v26)
  {
    operator delete(v26);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a26)
  {
    operator delete(a26);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D0E6BC48(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = (v7 >> 3) + 1;
    if (v8 >> 61)
    {
      sub_1D0C5663C();
    }

    v9 = v3 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 61))
      {
        operator new();
      }

      sub_1D0C54BE8();
    }

    v11 = (8 * (v7 >> 3));
    *v11 = *a2;
    v5 = v11 + 1;
    memcpy(0, v6, v7);
    *a1 = 0;
    *(a1 + 8) = v5;
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

uint64_t sub_1D0E6BD48(uint64_t a1, uint64_t **a2, uint64_t **a3, unint64_t a4, uint64_t a5)
{
  v9 = *a2;
  v8 = a2[1];
  if ((v8 - *a2) < 0x80 || a4 > 0x63 || (a3[1] - *a3) < 0x79)
  {
    if (v9 != v8)
    {
      v10 = a3[1];
      if (*a3 != v10)
      {
        do
        {
          v11 = *a3;
          if (*a3 != v10)
          {
            do
            {
              v12 = *v9;
              v13 = *v11;
              if (*(*v9 + 48) >= *(*v11 + 32) && *(v12 + 32) <= *(v13 + 48))
              {
                v14 = *(v12 + 56) >= *(v13 + 40) && *(v12 + 40) <= *(v13 + 56);
                if (v14 && (*(v12 + 96) & 1) == 0 && (*(v13 + 96) & 1) == 0)
                {
                  result = sub_1D0B82AC0(*(a5 + 40), **a5, *(*a5 + 8), v12, *(a5 + 40), **a5, *(*a5 + 8), v13, *(a5 + 44), *(a5 + 8), *(a5 + 16), *(a5 + 24), *(a5 + 32));
                  if (!result)
                  {
                    return result;
                  }

                  v10 = a3[1];
                }
              }

              ++v11;
            }

            while (v11 != v10);
            v8 = a2[1];
          }

          ++v9;
        }

        while (v9 != v8);
      }
    }

    return 1;
  }

  else
  {
    v16 = a4 + 1;

    return sub_1D0E6D16C(a1, a2, a3, v16, a5);
  }
}

uint64_t sub_1D0E6BEB8(__n128 *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = a3;
  v7 = a1[1].n128_i64[0];
  v6 = a1[1].n128_i64[1];
  v8 = a1->n128_i64[1];
  v9 = v6 / 2 + v8 / 2;
  v11 = a1[1];
  v86 = *a1;
  v10 = v86;
  v84[0] = v86.n128_u64[0];
  v85 = v11;
  LODWORD(v6) = v6 % 2 + v8 % 2;
  v12 = v9 + ((v6 + ((v6 & 0x80) >> 7)) << 24 >> 25);
  v87 = v7;
  v88 = v12;
  v84[1] = v12;
  v81 = 0;
  v82 = 0;
  v83 = 0;
  __p = 0;
  v79 = 0;
  v80 = 0;
  v76 = 0uLL;
  v77 = 0;
  v14 = *a2;
  v13 = *(a2 + 8);
  if (*a2 == v13)
  {
    v34 = 0;
    goto LABEL_59;
  }

  v17 = v86.n128_i64[1];
  v16 = v87;
  v18 = v86.n128_u64[0];
  v19 = v85;
  v20 = v84[0];
  do
  {
    v21 = *v14;
    v22 = *(*v14 + 32);
    v23 = v16 >= v22 && v18 <= v21[6] && v12 >= v21[5] && v17 <= v21[7];
    if (v19.n128_i64[0] < v22 || v20 > v21[6])
    {
      if (!v23)
      {
        goto LABEL_32;
      }

      p_p = &v81;
LABEL_31:
      sub_1D0E6BC48(p_p, v14);
      v13 = *(a2 + 8);
      goto LABEL_32;
    }

    v26 = v21[5];
    v27 = v21[7];
    v28 = v19.n128_i64[1] >= v26 && v12 <= v27;
    v29 = v28;
    v30 = v28 || v23;
    v31 = (v23 & v29) == 0;
    v32 = &v81;
    if (!v31)
    {
      v32 = &v76;
    }

    if (v23)
    {
      p_p = v32;
    }

    else
    {
      p_p = &__p;
    }

    if (v30)
    {
      goto LABEL_31;
    }

LABEL_32:
    ++v14;
  }

  while (v14 != v13);
  v10 = v76;
  v33 = v76.n128_u64[1];
  v34 = v76.n128_u64[0];
  if (v76.n128_u64[0] == v76.n128_u64[1])
  {
    v5 = a3;
    goto LABEL_59;
  }

  v35 = vnegq_f64(0);
  v36.f64[0] = NAN;
  v36.f64[1] = NAN;
  v37 = vnegq_f64(v36);
  v38 = v76.n128_u64[0];
  v39 = v37;
  v40 = v35;
  v5 = a3;
  do
  {
    v41 = *v38++;
    v42 = v41[2];
    v43 = v41[3];
    v44 = vcgtq_s64(v37, v42);
    v45 = vbslq_s8(v44, v42, v39);
    v46 = vbslq_s8(v44, v42, v37);
    v47 = vcgtq_s64(v46, v43);
    v39 = vbslq_s8(v47, v43, v45);
    v37 = vbslq_s8(v47, v43, v46);
    v48 = vcgtq_s64(v42, v35);
    v49 = vbslq_s8(v48, v42, v40);
    v50 = vbslq_s8(v48, v42, v35);
    v51 = vcgtq_s64(v43, v50);
    v40 = vbslq_s8(v51, v43, v49);
    v35 = vbslq_s8(v51, v43, v50);
  }

  while (v38 != v76.n128_u64[1]);
  v75[0] = v39;
  v75[1] = v40;
  v52 = v76.n128_u64[0];
  if (a3 > 0x63 || (v52 = v76.n128_u64[0], v76.n128_u64[1] - v76.n128_u64[0] < 0x79))
  {
LABEL_53:
    v57 = v52 + 8;
    if (v52 + 8 == v33)
    {
      goto LABEL_54;
    }

    v53 = (v52 + 8);
    while (1)
    {
      v54 = *v52;
      v55 = *v53;
      if (*(*v52 + 48) >= *(*v53 + 32) && *(v54 + 32) <= *(v55 + 48))
      {
        v56 = *(v54 + 56) >= *(v55 + 40) && *(v54 + 40) <= *(v55 + 56);
        if (v56 && (*(v54 + 96) & 1) == 0 && (*(v55 + 96) & 1) == 0 && !sub_1D0B82AC0(*(a4 + 40), **a4, *(*a4 + 8), v54, *(a4 + 40), **a4, *(*a4 + 8), v55, *(a4 + 44), *(a4 + 8), *(a4 + 16), *(a4 + 24), *(a4 + 32)))
        {
          break;
        }
      }

      if (++v53 == v33)
      {
        v52 += 8;
        if (v57 == v33)
        {
          goto LABEL_54;
        }

        goto LABEL_53;
      }
    }

LABEL_62:
    v60 = 0;
    if (!v34)
    {
      goto LABEL_83;
    }

LABEL_82:
    v76.n128_u64[1] = v34;
    operator delete(v34);
    goto LABEL_83;
  }

  if (!sub_1D0E6B6BC(v75, &v76, a3 + 1, a4, v35, v37))
  {
    goto LABEL_62;
  }

LABEL_54:
  if (!sub_1D0E6C448(v75, &v76, &v81, a3, a4) || (sub_1D0E6C448(v75, &v76, &__p, a3, a4) & 1) == 0)
  {
    goto LABEL_62;
  }

LABEL_59:
  v59 = v81;
  v58 = v82;
  if (v5 > 0x63 || (v82 - v81) < 0x79)
  {
    if (v81 != v82)
    {
LABEL_65:
      v61 = v59 + 8;
      if (v59 + 8 != v58)
      {
        v62 = v59 + 8;
        while (1)
        {
          v63 = *v59;
          v64 = *v62;
          if (*(*v59 + 48) >= *(*v62 + 32) && *(v63 + 32) <= *(v64 + 48))
          {
            v65 = *(v63 + 56) >= *(v64 + 40) && *(v63 + 40) <= *(v64 + 56);
            if (v65 && (*(v63 + 96) & 1) == 0 && (*(v64 + 96) & 1) == 0 && !sub_1D0B82AC0(*(a4 + 40), **a4, *(*a4 + 8), v63, *(a4 + 40), **a4, *(*a4 + 8), v64, *(a4 + 44), *(a4 + 8), *(a4 + 16), *(a4 + 24), *(a4 + 32)))
            {
              goto LABEL_62;
            }
          }

          v62 += 8;
          if (v62 == v58)
          {
            v59 += 8;
            if (v61 != v58)
            {
              goto LABEL_65;
            }

            break;
          }
        }
      }
    }
  }

  else if (!sub_1D0E6B6BC(&v86, &v81, v5 + 1, a4, v10, v11))
  {
    goto LABEL_62;
  }

  v67 = __p;
  v66 = v79;
  if (v5 > 0x63 || (v79 - __p) < 0x79)
  {
    if (__p != v79)
    {
LABEL_89:
      v69 = v67 + 8;
      if (v67 + 8 != v66)
      {
        v70 = v67 + 8;
        while (1)
        {
          v71 = *v67;
          v72 = *v70;
          if (*(*v67 + 48) >= *(*v70 + 32) && *(v71 + 32) <= *(v72 + 48))
          {
            v73 = *(v71 + 56) >= *(v72 + 40) && *(v71 + 40) <= *(v72 + 56);
            if (v73 && (*(v71 + 96) & 1) == 0 && (*(v72 + 96) & 1) == 0 && !sub_1D0B82AC0(*(a4 + 40), **a4, *(*a4 + 8), v71, *(a4 + 40), **a4, *(*a4 + 8), v72, *(a4 + 44), *(a4 + 8), *(a4 + 16), *(a4 + 24), *(a4 + 32)))
            {
              goto LABEL_62;
            }
          }

          v70 += 8;
          if (v70 == v66)
          {
            v67 += 8;
            if (v69 != v66)
            {
              goto LABEL_89;
            }

            break;
          }
        }
      }
    }

    v60 = 1;
    if (!v34)
    {
      goto LABEL_83;
    }

    goto LABEL_82;
  }

  v60 = sub_1D0E6B6BC(v84, &__p, v5 + 1, a4, v10, v11);
  if (v34)
  {
    goto LABEL_82;
  }

LABEL_83:
  if (__p)
  {
    operator delete(__p);
  }

  if (v81)
  {
    operator delete(v81);
  }

  return v60;
}

void sub_1D0E6C3FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, void *a26)
{
  if (v26)
  {
    operator delete(v26);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a26)
  {
    operator delete(a26);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0E6C448(__n128 *a1, uint64_t **a2, uint64_t **a3, unint64_t a4, uint64_t a5)
{
  v9 = *a2;
  v8 = a2[1];
  if ((v8 - *a2) < 0x80 || a4 > 0x63 || (a3[1] - *a3) < 0x79)
  {
    if (v9 != v8)
    {
      v10 = a3[1];
      if (*a3 != v10)
      {
        do
        {
          v11 = *a3;
          if (*a3 != v10)
          {
            do
            {
              v12 = *v9;
              v13 = *v11;
              if (*(*v9 + 48) >= *(*v11 + 32) && *(v12 + 32) <= *(v13 + 48))
              {
                v14 = *(v12 + 56) >= *(v13 + 40) && *(v12 + 40) <= *(v13 + 56);
                if (v14 && (*(v12 + 96) & 1) == 0 && (*(v13 + 96) & 1) == 0)
                {
                  result = sub_1D0B82AC0(*(a5 + 40), **a5, *(*a5 + 8), v12, *(a5 + 40), **a5, *(*a5 + 8), v13, *(a5 + 44), *(a5 + 8), *(a5 + 16), *(a5 + 24), *(a5 + 32));
                  if (!result)
                  {
                    return result;
                  }

                  v10 = a3[1];
                }
              }

              ++v11;
            }

            while (v11 != v10);
            v8 = a2[1];
          }

          ++v9;
        }

        while (v9 != v8);
      }
    }

    return 1;
  }

  else
  {
    v16 = a4 + 1;

    return sub_1D0E6C5B8(a1, a2, a3, v16, a5);
  }
}

uint64_t sub_1D0E6C5B8(__n128 *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v6 = a1[1].n128_i64[0];
  v7 = a1[1];
  v9 = a1->n128_u64[0] / 2;
  v196 = *a1;
  v8 = v196;
  v198 = v7.n128_u64[1];
  v194 = v196.n128_u64[1];
  v195 = v7;
  v10 = v6 % 2 + v196.n128_u32[0] - 2 * v9;
  v11 = v6 / 2 + v196.n128_u64[0] / 2 + ((v10 + ((v10 & 0x80) >> 7)) << 24 >> 25);
  v197 = v11;
  v192 = 0;
  v193 = v11;
  v190 = 0;
  v191 = 0;
  v187 = 0;
  v188 = 0;
  v189 = 0;
  v184 = 0;
  v185 = 0;
  v186 = 0;
  v181 = 0;
  v182 = 0;
  v183 = 0;
  v178 = 0;
  v179 = 0;
  v180 = 0;
  __p = 0;
  v176 = 0;
  v177 = 0;
  v13 = *a2;
  v12 = *(a2 + 8);
  if (*a2 != v12)
  {
    v15 = v198;
    v16 = v196;
    v17 = v195;
    v18 = v194;
    while (1)
    {
      v19 = *v13;
      v20 = *(*v13 + 32);
      if (v11 >= v20 && v16.n128_i64[0] <= v19[6])
      {
        v22 = v15 >= v19[5] && v16.n128_u64[1] <= v19[7];
        v21 = v22;
      }

      else
      {
        v21 = 0;
      }

      if (v17.n128_i64[0] >= v20 && v11 <= v19[6])
      {
        break;
      }

      if (v21)
      {
        v23 = &v190;
LABEL_31:
        sub_1D0E6BC48(v23, v13);
        v12 = *(a2 + 8);
      }

LABEL_32:
      if (++v13 == v12)
      {
        goto LABEL_33;
      }
    }

    v24 = v19[5];
    v25 = v19[7];
    v26 = v17.n128_i64[1] >= v24 && v18 <= v25;
    v27 = v26;
    v28 = v26 || v21;
    v29 = (v21 & v27) == 0;
    v30 = &v190;
    if (!v29)
    {
      v30 = &v184;
    }

    if (v21)
    {
      v23 = v30;
    }

    else
    {
      v23 = &v187;
    }

    if ((v28 & 1) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

LABEL_33:
  v32 = *a3;
  v31 = *(a3 + 8);
  if (*a3 != v31)
  {
    v33 = v198;
    v34 = v196;
    v35 = v195;
    v36 = v194;
    while (1)
    {
      v37 = *v32;
      v38 = *(*v32 + 32);
      if (v11 >= v38 && v34.n128_i64[0] <= v37[6])
      {
        v40 = v33 >= v37[5] && v34.n128_u64[1] <= v37[7];
        v39 = v40;
      }

      else
      {
        v39 = 0;
      }

      if (v35.n128_i64[0] >= v38 && v11 <= v37[6])
      {
        break;
      }

      if (v39)
      {
        v41 = &v181;
LABEL_63:
        sub_1D0E6BC48(v41, v32);
        v31 = *(a3 + 8);
      }

LABEL_64:
      if (++v32 == v31)
      {
        v48 = __p;
        goto LABEL_67;
      }
    }

    v42 = v37[5];
    v43 = v37[7];
    v44 = v35.n128_i64[1] >= v42 && v36 <= v43;
    v45 = v44;
    v46 = v44 || v39;
    v29 = (v39 & v45) == 0;
    p_p = &v181;
    if (!v29)
    {
      p_p = &__p;
    }

    if (v39)
    {
      v41 = p_p;
    }

    else
    {
      v41 = &v178;
    }

    if ((v46 & 1) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_63;
  }

  v48 = 0;
LABEL_67:
  v49 = v184;
  v50 = v185;
  if (v184 == v185)
  {
    v52 = v176;
  }

  else
  {
    v51 = v185 - v184;
    v52 = v176;
    if ((v185 - v184) < 0x80 || a4 > 0x63 || (v176 - v48) < 0x79)
    {
      if (v48 != v176)
      {
        v53 = v184;
LABEL_71:
        v54 = v48;
        while (1)
        {
          v55 = *v53;
          v56 = *v54;
          if ((*v53)[3].i64[0] >= (*v54)[2].i64[0] && v55[2].i64[0] <= v56[3].i64[0])
          {
            v57 = v55[3].i64[1] >= v56[2].i64[1] && v55[2].i64[1] <= v56[3].i64[1];
            if (v57 && (v55[6].i8[0] & 1) == 0 && (v56[6].i8[0] & 1) == 0 && !sub_1D0B82AC0(*(a5 + 40), **a5, *(*a5 + 8), v55->i32, *(a5 + 40), **a5, *(*a5 + 8), v56->i32, *(a5 + 44), *(a5 + 8), *(a5 + 16), *(a5 + 24), *(a5 + 32)))
            {
              goto LABEL_216;
            }
          }

          if (++v54 == v52)
          {
            if (++v53 != v50)
            {
              goto LABEL_71;
            }

            break;
          }
        }
      }
    }

    else
    {
      v72 = vnegq_f64(0);
      v73.f64[0] = NAN;
      v73.f64[1] = NAN;
      v74 = vnegq_f64(v73);
      v75 = v184;
      v76 = v74;
      v77 = v72;
      do
      {
        v78 = *v75++;
        v79 = v78[2];
        v80 = v78[3];
        v81 = vcgtq_s64(v74, v79);
        v82 = vbslq_s8(v81, v79, v76);
        v83 = vbslq_s8(v81, v79, v74);
        v84 = vcgtq_s64(v83, v80);
        v76 = vbslq_s8(v84, v80, v82);
        v74 = vbslq_s8(v84, v80, v83);
        v85 = vcgtq_s64(v79, v72);
        v86 = vbslq_s8(v85, v79, v77);
        v87 = vbslq_s8(v85, v79, v72);
        v88 = vcgtq_s64(v80, v87);
        v77 = vbslq_s8(v88, v80, v86);
        v72 = vbslq_s8(v88, v80, v87);
      }

      while (v75 != v185);
      v173 = v76;
      v174 = v77;
      if (v48 != v176)
      {
        v89 = v48;
        v90 = v76;
        v91 = v77;
        do
        {
          v92 = *v89++;
          v93 = v92[2];
          v94 = v92[3];
          v95 = vcgtq_s64(v76, v93);
          v96 = vbslq_s8(v95, v93, v90);
          v97 = vbslq_s8(v95, v93, v76);
          v98 = vcgtq_s64(v97, v94);
          v90 = vbslq_s8(v98, v94, v96);
          v76 = vbslq_s8(v98, v94, v97);
          v99 = vcgtq_s64(v93, v77);
          v100 = vbslq_s8(v99, v93, v91);
          v101 = vbslq_s8(v99, v93, v77);
          v102 = vcgtq_s64(v94, v101);
          v91 = vbslq_s8(v102, v94, v100);
          v77 = vbslq_s8(v102, v94, v101);
        }

        while (v89 != v176);
        v173 = v90;
        v174 = v91;
      }

      if ((sub_1D0E6D16C(&v173, &v184, &__p, a4 + 1, a5, v76, v77) & 1) == 0)
      {
        goto LABEL_216;
      }
    }

    v104 = v181;
    v103 = v182;
    if ((v182 - v181) < 0x80 || (v179 - v178) < 0x80 || a4 > 0x63 || v51 < 0x79)
    {
      if (v181 != v182)
      {
        v105 = v49;
LABEL_132:
        v106 = v104;
        while (1)
        {
          v107 = *v105;
          v108 = *v106;
          if ((*v105)[3].i64[0] >= *(*v106 + 32) && v107[2].i64[0] <= *(v108 + 48))
          {
            v109 = v107[3].i64[1] >= *(v108 + 40) && v107[2].i64[1] <= *(v108 + 56);
            if (v109 && (v107[6].i8[0] & 1) == 0 && (*(v108 + 96) & 1) == 0 && !sub_1D0B82AC0(*(a5 + 40), **a5, *(*a5 + 8), v107->i32, *(a5 + 40), **a5, *(*a5 + 8), v108, *(a5 + 44), *(a5 + 8), *(a5 + 16), *(a5 + 24), *(a5 + 32)))
            {
              goto LABEL_216;
            }
          }

          v106 += 8;
          if (v106 == v103)
          {
            if (++v105 != v50)
            {
              goto LABEL_132;
            }

            break;
          }
        }
      }

      v110 = v178;
      v111 = v179;
      if (v178 != v179)
      {
        v112 = v49;
LABEL_147:
        v113 = v110;
        while (1)
        {
          v114 = *v112;
          v115 = *v113;
          if ((*v112)[3].i64[0] >= *(*v113 + 32) && v114[2].i64[0] <= *(v115 + 48))
          {
            v116 = v114[3].i64[1] >= *(v115 + 40) && v114[2].i64[1] <= *(v115 + 56);
            if (v116 && (v114[6].i8[0] & 1) == 0 && (*(v115 + 96) & 1) == 0 && !sub_1D0B82AC0(*(a5 + 40), **a5, *(*a5 + 8), v114->i32, *(a5 + 40), **a5, *(*a5 + 8), v115, *(a5 + 44), *(a5 + 8), *(a5 + 16), *(a5 + 24), *(a5 + 32)))
            {
              goto LABEL_216;
            }
          }

          v113 += 8;
          if (v113 == v111)
          {
            if (++v112 != v50)
            {
              goto LABEL_147;
            }

            break;
          }
        }
      }
    }

    else
    {
      v117 = vnegq_f64(0);
      v118.f64[0] = NAN;
      v118.f64[1] = NAN;
      v119 = vnegq_f64(v118);
      v120 = v49;
      v121 = v119;
      v122 = v117;
      do
      {
        v123 = *v120++;
        v124 = v123[2];
        v125 = v123[3];
        v126 = vcgtq_s64(v119, v124);
        v127 = vbslq_s8(v126, v124, v121);
        v128 = vbslq_s8(v126, v124, v119);
        v129 = vcgtq_s64(v128, v125);
        v121 = vbslq_s8(v129, v125, v127);
        v119 = vbslq_s8(v129, v125, v128);
        v130 = vcgtq_s64(v124, v117);
        v131 = vbslq_s8(v130, v124, v122);
        v132 = vbslq_s8(v130, v124, v117);
        v133 = vcgtq_s64(v125, v132);
        v122 = vbslq_s8(v133, v125, v131);
        v117 = vbslq_s8(v133, v125, v132);
      }

      while (v120 != v50);
      v173 = v121;
      v174 = v122;
      if (!sub_1D0E6D16C(&v173, &v184, &v181, a4 + 1, a5, v117, v119) || (sub_1D0E6D16C(&v173, &v184, &v178, a4 + 1, a5, v134, v135) & 1) == 0)
      {
        goto LABEL_216;
      }
    }
  }

  v59 = v190;
  v58 = v191;
  v60 = v191 - v190;
  if (v48 != v52)
  {
    if (v60 < 0x80 || (v188 - v187) < 0x80 || a4 > 0x63 || (v52 - v48) < 0x79)
    {
      if (v190 != v191)
      {
        v61 = v190;
LABEL_91:
        v62 = v48;
        while (1)
        {
          v63 = *v61;
          v64 = *v62;
          if (*(*v61 + 48) >= (*v62)[2].i64[0] && *(v63 + 32) <= v64[3].i64[0])
          {
            v65 = *(v63 + 56) >= v64[2].i64[1] && *(v63 + 40) <= v64[3].i64[1];
            if (v65 && (*(v63 + 96) & 1) == 0 && (v64[6].i8[0] & 1) == 0 && !sub_1D0B82AC0(*(a5 + 40), **a5, *(*a5 + 8), v63, *(a5 + 40), **a5, *(*a5 + 8), v64->i32, *(a5 + 44), *(a5 + 8), *(a5 + 16), *(a5 + 24), *(a5 + 32)))
            {
              goto LABEL_216;
            }
          }

          if (++v62 == v52)
          {
            v61 += 8;
            if (v61 != v58)
            {
              goto LABEL_91;
            }

            break;
          }
        }
      }

      v66 = v187;
      v67 = v188;
LABEL_105:
      if (v66 != v67)
      {
        v68 = v48;
        while (1)
        {
          v69 = *v66;
          v70 = *v68;
          if (*(*v66 + 48) >= (*v68)[2].i64[0] && *(v69 + 32) <= v70[3].i64[0])
          {
            v71 = *(v69 + 56) >= v70[2].i64[1] && *(v69 + 40) <= v70[3].i64[1];
            if (v71 && (*(v69 + 96) & 1) == 0 && (v70[6].i8[0] & 1) == 0 && !sub_1D0B82AC0(*(a5 + 40), **a5, *(*a5 + 8), v69, *(a5 + 40), **a5, *(*a5 + 8), v70->i32, *(a5 + 44), *(a5 + 8), *(a5 + 16), *(a5 + 24), *(a5 + 32)))
            {
              goto LABEL_216;
            }
          }

          if (++v68 == v52)
          {
            v66 += 8;
            goto LABEL_105;
          }
        }
      }
    }

    else
    {
      v136 = vnegq_f64(0);
      v137.f64[0] = NAN;
      v137.f64[1] = NAN;
      v138 = vnegq_f64(v137);
      v139 = v48;
      v140 = v138;
      v141 = v136;
      do
      {
        v142 = *v139++;
        v143 = v142[2];
        v144 = v142[3];
        v145 = vcgtq_s64(v138, v143);
        v146 = vbslq_s8(v145, v143, v140);
        v147 = vbslq_s8(v145, v143, v138);
        v148 = vcgtq_s64(v147, v144);
        v140 = vbslq_s8(v148, v144, v146);
        v138 = vbslq_s8(v148, v144, v147);
        v149 = vcgtq_s64(v143, v136);
        v150 = vbslq_s8(v149, v143, v141);
        v151 = vbslq_s8(v149, v143, v136);
        v152 = vcgtq_s64(v144, v151);
        v141 = vbslq_s8(v152, v144, v150);
        v136 = vbslq_s8(v152, v144, v151);
      }

      while (v139 != v52);
      v173 = v140;
      v174 = v141;
      if (!sub_1D0E6D16C(&v173, &v190, &__p, a4 + 1, a5, v136, v138) || (sub_1D0E6D16C(&v173, &v187, &__p, a4 + 1, a5, v153, v154) & 1) == 0)
      {
        goto LABEL_216;
      }
    }
  }

  if (v60 < 0x80 || a4 > 0x63 || (v182 - v181) < 0x79)
  {
    if (v59 != v58)
    {
      v155 = v181;
      v156 = v182;
      if (v181 != v182)
      {
LABEL_177:
        v157 = v155;
        while (1)
        {
          v158 = *v59;
          v159 = *v157;
          if (*(*v59 + 48) >= *(*v157 + 32) && *(v158 + 32) <= *(v159 + 48))
          {
            v160 = *(v158 + 56) >= *(v159 + 40) && *(v158 + 40) <= *(v159 + 56);
            if (v160 && (*(v158 + 96) & 1) == 0 && (*(v159 + 96) & 1) == 0 && !sub_1D0B82AC0(*(a5 + 40), **a5, *(*a5 + 8), v158, *(a5 + 40), **a5, *(*a5 + 8), v159, *(a5 + 44), *(a5 + 8), *(a5 + 16), *(a5 + 24), *(a5 + 32)))
            {
              goto LABEL_216;
            }
          }

          v157 += 8;
          if (v157 == v156)
          {
            v59 += 8;
            if (v59 != v58)
            {
              goto LABEL_177;
            }

            break;
          }
        }
      }
    }
  }

  else if ((sub_1D0E6D16C(&v196, &v190, &v181, a4 + 1, a5, v7, v8) & 1) == 0)
  {
    goto LABEL_216;
  }

  v162 = v187;
  v161 = v188;
  if ((v188 - v187) < 0x80 || a4 > 0x63 || (v179 - v178) < 0x79)
  {
    if (v187 == v188)
    {
      goto LABEL_214;
    }

    v163 = v178;
    v164 = v179;
    if (v178 == v179)
    {
      goto LABEL_214;
    }

LABEL_197:
    v165 = v163;
    while (1)
    {
      v166 = *v162;
      v167 = *v165;
      if (*(*v162 + 48) >= *(*v165 + 32) && *(v166 + 32) <= *(v167 + 48))
      {
        v168 = *(v166 + 56) >= *(v167 + 40) && *(v166 + 40) <= *(v167 + 56);
        if (v168 && (*(v166 + 96) & 1) == 0 && (*(v167 + 96) & 1) == 0 && !sub_1D0B82AC0(*(a5 + 40), **a5, *(*a5 + 8), v166, *(a5 + 40), **a5, *(*a5 + 8), v167, *(a5 + 44), *(a5 + 8), *(a5 + 16), *(a5 + 24), *(a5 + 32)))
        {
          break;
        }
      }

      v165 += 8;
      if (v165 == v164)
      {
        v162 += 8;
        if (v162 != v161)
        {
          goto LABEL_197;
        }

        goto LABEL_214;
      }
    }

LABEL_216:
    v169 = 0;
    if (!v48)
    {
      goto LABEL_218;
    }

    goto LABEL_217;
  }

  if ((sub_1D0E6D16C(&v193, &v187, &v178, a4 + 1, a5, v7, v8) & 1) == 0)
  {
    goto LABEL_216;
  }

LABEL_214:
  v169 = 1;
  if (v48)
  {
LABEL_217:
    operator delete(v48);
  }

LABEL_218:
  if (v178)
  {
    operator delete(v178);
  }

  if (v181)
  {
    operator delete(v181);
  }

  if (v49)
  {
    operator delete(v49);
  }

  if (v187)
  {
    operator delete(v187);
  }

  if (v190)
  {
    operator delete(v190);
  }

  return v169;
}

void sub_1D0E6D0DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, void *a33)
{
  if (v33)
  {
    operator delete(v33);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a27)
  {
    operator delete(a27);
  }

  if (a30)
  {
    operator delete(a30);
  }

  if (a33)
  {
    operator delete(a33);
  }

  v36 = *(v34 - 184);
  if (v36)
  {
    operator delete(v36);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0E6D16C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 24);
  v7 = *(a1 + 8);
  v8 = *a1;
  v193 = *(a1 + 16);
  v194 = v8;
  v192.n128_u64[0] = v8.n128_u64[0];
  v9 = v6 / 2 + v7 / 2;
  LODWORD(v6) = v6 % 2 + v7 % 2;
  v10 = v9 + ((v6 + ((v6 & 0x80) >> 7)) << 24 >> 25);
  v195 = v193;
  v196 = v10;
  v192.n128_u64[1] = v10;
  v189 = 0;
  v190 = 0;
  v191 = 0;
  v186 = 0;
  v187 = 0;
  v188 = 0;
  v183 = 0;
  v184 = 0;
  v185 = 0;
  v180 = 0;
  v181 = 0;
  v182 = 0;
  v177 = 0;
  v178 = 0;
  v179 = 0;
  __p = 0;
  v175 = 0;
  v176 = 0;
  v12 = *a2;
  v11 = *(a2 + 8);
  if (*a2 != v11)
  {
    v15 = v194.n128_i64[1];
    v14 = v195;
    v16 = *(&v193 + 1);
    v17 = v194.n128_u64[0];
    v18 = v193;
    v19 = v192.n128_u64[0];
    while (1)
    {
      v20 = *v12;
      v21 = *(*v12 + 32);
      if (v14 >= v21 && v17 <= v20[6])
      {
        v23 = v10 >= v20[5] && v15 <= v20[7];
        v22 = v23;
      }

      else
      {
        v22 = 0;
      }

      if (v18 >= v21 && v19 <= v20[6])
      {
        break;
      }

      if (v22)
      {
        v24 = &v189;
LABEL_31:
        sub_1D0E6BC48(v24, v12);
        v11 = *(a2 + 8);
      }

LABEL_32:
      if (++v12 == v11)
      {
        goto LABEL_33;
      }
    }

    v25 = v20[5];
    v26 = v20[7];
    v27 = v16 >= v25 && v10 <= v26;
    v28 = v27;
    v29 = v27 || v22;
    v30 = (v22 & v28) == 0;
    v31 = &v189;
    if (!v30)
    {
      v31 = &v183;
    }

    if (v22)
    {
      v24 = v31;
    }

    else
    {
      v24 = &v186;
    }

    if ((v29 & 1) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

LABEL_33:
  v33 = *a3;
  v32 = *(a3 + 8);
  if (*a3 != v32)
  {
    v35 = v194.n128_i64[1];
    v34 = v195;
    v36 = *(&v193 + 1);
    v37 = v194.n128_u64[0];
    v38 = v193;
    v39 = v192.n128_u64[0];
    while (1)
    {
      v40 = *v33;
      v41 = *(*v33 + 32);
      if (v34 >= v41 && v37 <= v40[6])
      {
        v43 = v10 >= v40[5] && v35 <= v40[7];
        v42 = v43;
      }

      else
      {
        v42 = 0;
      }

      if (v38 >= v41 && v39 <= v40[6])
      {
        break;
      }

      if (v42)
      {
        v44 = &v180;
LABEL_63:
        sub_1D0E6BC48(v44, v33);
        v32 = *(a3 + 8);
      }

LABEL_64:
      if (++v33 == v32)
      {
        v51 = __p;
        goto LABEL_67;
      }
    }

    v45 = v40[5];
    v46 = v40[7];
    v47 = v36 >= v45 && v10 <= v46;
    v48 = v47;
    v49 = v47 || v42;
    v30 = (v42 & v48) == 0;
    p_p = &v180;
    if (!v30)
    {
      p_p = &__p;
    }

    if (v42)
    {
      v44 = p_p;
    }

    else
    {
      v44 = &v177;
    }

    if ((v49 & 1) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_63;
  }

  v51 = 0;
LABEL_67:
  v52 = v183;
  v53 = v184;
  if (v183 == v184)
  {
    v55 = v175;
  }

  else
  {
    v54 = v184 - v183;
    v55 = v175;
    if ((v184 - v183) < 0x80 || a4 > 0x63 || (v175 - v51) < 0x79)
    {
      if (v51 != v175)
      {
        v56 = v183;
LABEL_71:
        v57 = v51;
        while (1)
        {
          v58 = *v56;
          v59 = *v57;
          if ((*v56)[3].i64[0] >= (*v57)[2].i64[0] && v58[2].i64[0] <= v59[3].i64[0])
          {
            v60 = v58[3].i64[1] >= v59[2].i64[1] && v58[2].i64[1] <= v59[3].i64[1];
            if (v60 && (v58[6].i8[0] & 1) == 0 && (v59[6].i8[0] & 1) == 0 && !sub_1D0B82AC0(*(a5 + 40), **a5, *(*a5 + 8), v58->i32, *(a5 + 40), **a5, *(*a5 + 8), v59->i32, *(a5 + 44), *(a5 + 8), *(a5 + 16), *(a5 + 24), *(a5 + 32)))
            {
              goto LABEL_216;
            }
          }

          if (++v57 == v55)
          {
            if (++v56 != v53)
            {
              goto LABEL_71;
            }

            break;
          }
        }
      }
    }

    else
    {
      v75 = vnegq_f64(0);
      v76.f64[0] = NAN;
      v76.f64[1] = NAN;
      v77 = vnegq_f64(v76);
      v78 = v183;
      v79 = v77;
      v80 = v75;
      do
      {
        v81 = *v78++;
        v82 = v81[2];
        v83 = v81[3];
        v84 = vcgtq_s64(v77, v82);
        v85 = vbslq_s8(v84, v82, v79);
        v86 = vbslq_s8(v84, v82, v77);
        v87 = vcgtq_s64(v86, v83);
        v79 = vbslq_s8(v87, v83, v85);
        v77 = vbslq_s8(v87, v83, v86);
        v88 = vcgtq_s64(v82, v75);
        v89 = vbslq_s8(v88, v82, v80);
        v90 = vbslq_s8(v88, v82, v75);
        v91 = vcgtq_s64(v83, v90);
        v80 = vbslq_s8(v91, v83, v89);
        v75 = vbslq_s8(v91, v83, v90);
      }

      while (v78 != v184);
      v172 = v79;
      v173 = v80;
      if (v51 != v175)
      {
        v92 = v51;
        v93 = v79;
        v94 = v80;
        do
        {
          v95 = *v92++;
          v96 = v95[2];
          v97 = v95[3];
          v98 = vcgtq_s64(v79, v96);
          v99 = vbslq_s8(v98, v96, v93);
          v100 = vbslq_s8(v98, v96, v79);
          v101 = vcgtq_s64(v100, v97);
          v93 = vbslq_s8(v101, v97, v99);
          v79 = vbslq_s8(v101, v97, v100);
          v102 = vcgtq_s64(v96, v80);
          v103 = vbslq_s8(v102, v96, v94);
          v104 = vbslq_s8(v102, v96, v80);
          v105 = vcgtq_s64(v97, v104);
          v94 = vbslq_s8(v105, v97, v103);
          v80 = vbslq_s8(v105, v97, v104);
        }

        while (v92 != v175);
        v172 = v93;
        v173 = v94;
      }

      if ((sub_1D0E6C5B8(&v172, &v183, &__p, a4 + 1, a5) & 1) == 0)
      {
        goto LABEL_216;
      }
    }

    v107 = v180;
    v106 = v181;
    if ((v181 - v180) < 0x80 || (v178 - v177) < 0x80 || a4 > 0x63 || v54 < 0x79)
    {
      if (v180 != v181)
      {
        v108 = v52;
LABEL_132:
        v109 = v107;
        while (1)
        {
          v110 = *v108;
          v111 = *v109;
          if ((*v108)[3].i64[0] >= *(*v109 + 32) && v110[2].i64[0] <= *(v111 + 48))
          {
            v112 = v110[3].i64[1] >= *(v111 + 40) && v110[2].i64[1] <= *(v111 + 56);
            if (v112 && (v110[6].i8[0] & 1) == 0 && (*(v111 + 96) & 1) == 0 && !sub_1D0B82AC0(*(a5 + 40), **a5, *(*a5 + 8), v110->i32, *(a5 + 40), **a5, *(*a5 + 8), v111, *(a5 + 44), *(a5 + 8), *(a5 + 16), *(a5 + 24), *(a5 + 32)))
            {
              goto LABEL_216;
            }
          }

          v109 += 8;
          if (v109 == v106)
          {
            if (++v108 != v53)
            {
              goto LABEL_132;
            }

            break;
          }
        }
      }

      v113 = v177;
      v114 = v178;
      if (v177 != v178)
      {
        v115 = v52;
LABEL_147:
        v116 = v113;
        while (1)
        {
          v117 = *v115;
          v118 = *v116;
          if ((*v115)[3].i64[0] >= *(*v116 + 32) && v117[2].i64[0] <= *(v118 + 48))
          {
            v119 = v117[3].i64[1] >= *(v118 + 40) && v117[2].i64[1] <= *(v118 + 56);
            if (v119 && (v117[6].i8[0] & 1) == 0 && (*(v118 + 96) & 1) == 0 && !sub_1D0B82AC0(*(a5 + 40), **a5, *(*a5 + 8), v117->i32, *(a5 + 40), **a5, *(*a5 + 8), v118, *(a5 + 44), *(a5 + 8), *(a5 + 16), *(a5 + 24), *(a5 + 32)))
            {
              goto LABEL_216;
            }
          }

          v116 += 8;
          if (v116 == v114)
          {
            if (++v115 != v53)
            {
              goto LABEL_147;
            }

            break;
          }
        }
      }
    }

    else
    {
      v120 = vnegq_f64(0);
      v121.f64[0] = NAN;
      v121.f64[1] = NAN;
      v122 = vnegq_f64(v121);
      v123 = v52;
      v124 = v122;
      v125 = v120;
      do
      {
        v126 = *v123++;
        v127 = v126[2];
        v128 = v126[3];
        v129 = vcgtq_s64(v122, v127);
        v130 = vbslq_s8(v129, v127, v124);
        v131 = vbslq_s8(v129, v127, v122);
        v132 = vcgtq_s64(v131, v128);
        v124 = vbslq_s8(v132, v128, v130);
        v122 = vbslq_s8(v132, v128, v131);
        v133 = vcgtq_s64(v127, v120);
        v134 = vbslq_s8(v133, v127, v125);
        v135 = vbslq_s8(v133, v127, v120);
        v136 = vcgtq_s64(v128, v135);
        v125 = vbslq_s8(v136, v128, v134);
        v120 = vbslq_s8(v136, v128, v135);
      }

      while (v123 != v53);
      v172 = v124;
      v173 = v125;
      if (!sub_1D0E6C5B8(&v172, &v183, &v180, a4 + 1, a5) || (sub_1D0E6C5B8(&v172, &v183, &v177, a4 + 1, a5) & 1) == 0)
      {
        goto LABEL_216;
      }
    }
  }

  v62 = v189;
  v61 = v190;
  v63 = v190 - v189;
  if (v51 != v55)
  {
    if (v63 < 0x80 || (v187 - v186) < 0x80 || a4 > 0x63 || (v55 - v51) < 0x79)
    {
      if (v189 != v190)
      {
        v64 = v189;
LABEL_91:
        v65 = v51;
        while (1)
        {
          v66 = *v64;
          v67 = *v65;
          if (*(*v64 + 48) >= (*v65)[2].i64[0] && *(v66 + 32) <= v67[3].i64[0])
          {
            v68 = *(v66 + 56) >= v67[2].i64[1] && *(v66 + 40) <= v67[3].i64[1];
            if (v68 && (*(v66 + 96) & 1) == 0 && (v67[6].i8[0] & 1) == 0 && !sub_1D0B82AC0(*(a5 + 40), **a5, *(*a5 + 8), v66, *(a5 + 40), **a5, *(*a5 + 8), v67->i32, *(a5 + 44), *(a5 + 8), *(a5 + 16), *(a5 + 24), *(a5 + 32)))
            {
              goto LABEL_216;
            }
          }

          if (++v65 == v55)
          {
            v64 += 8;
            if (v64 != v61)
            {
              goto LABEL_91;
            }

            break;
          }
        }
      }

      v69 = v186;
      v70 = v187;
LABEL_105:
      if (v69 != v70)
      {
        v71 = v51;
        while (1)
        {
          v72 = *v69;
          v73 = *v71;
          if (*(*v69 + 48) >= (*v71)[2].i64[0] && *(v72 + 32) <= v73[3].i64[0])
          {
            v74 = *(v72 + 56) >= v73[2].i64[1] && *(v72 + 40) <= v73[3].i64[1];
            if (v74 && (*(v72 + 96) & 1) == 0 && (v73[6].i8[0] & 1) == 0 && !sub_1D0B82AC0(*(a5 + 40), **a5, *(*a5 + 8), v72, *(a5 + 40), **a5, *(*a5 + 8), v73->i32, *(a5 + 44), *(a5 + 8), *(a5 + 16), *(a5 + 24), *(a5 + 32)))
            {
              goto LABEL_216;
            }
          }

          if (++v71 == v55)
          {
            v69 += 8;
            goto LABEL_105;
          }
        }
      }
    }

    else
    {
      v137 = vnegq_f64(0);
      v138.f64[0] = NAN;
      v138.f64[1] = NAN;
      v139 = vnegq_f64(v138);
      v140 = v51;
      v141 = v139;
      v142 = v137;
      do
      {
        v143 = *v140++;
        v144 = v143[2];
        v145 = v143[3];
        v146 = vcgtq_s64(v139, v144);
        v147 = vbslq_s8(v146, v144, v141);
        v148 = vbslq_s8(v146, v144, v139);
        v149 = vcgtq_s64(v148, v145);
        v141 = vbslq_s8(v149, v145, v147);
        v139 = vbslq_s8(v149, v145, v148);
        v150 = vcgtq_s64(v144, v137);
        v151 = vbslq_s8(v150, v144, v142);
        v152 = vbslq_s8(v150, v144, v137);
        v153 = vcgtq_s64(v145, v152);
        v142 = vbslq_s8(v153, v145, v151);
        v137 = vbslq_s8(v153, v145, v152);
      }

      while (v140 != v55);
      v172 = v141;
      v173 = v142;
      if (!sub_1D0E6C5B8(&v172, &v189, &__p, a4 + 1, a5) || (sub_1D0E6C5B8(&v172, &v186, &__p, a4 + 1, a5) & 1) == 0)
      {
        goto LABEL_216;
      }
    }
  }

  if (v63 < 0x80 || a4 > 0x63 || (v181 - v180) < 0x79)
  {
    if (v62 != v61)
    {
      v154 = v180;
      v155 = v181;
      if (v180 != v181)
      {
LABEL_177:
        v156 = v154;
        while (1)
        {
          v157 = *v62;
          v158 = *v156;
          if (*(*v62 + 48) >= *(*v156 + 32) && *(v157 + 32) <= *(v158 + 48))
          {
            v159 = *(v157 + 56) >= *(v158 + 40) && *(v157 + 40) <= *(v158 + 56);
            if (v159 && (*(v157 + 96) & 1) == 0 && (*(v158 + 96) & 1) == 0 && !sub_1D0B82AC0(*(a5 + 40), **a5, *(*a5 + 8), v157, *(a5 + 40), **a5, *(*a5 + 8), v158, *(a5 + 44), *(a5 + 8), *(a5 + 16), *(a5 + 24), *(a5 + 32)))
            {
              goto LABEL_216;
            }
          }

          v156 += 8;
          if (v156 == v155)
          {
            v62 += 8;
            if (v62 != v61)
            {
              goto LABEL_177;
            }

            break;
          }
        }
      }
    }
  }

  else if ((sub_1D0E6C5B8(&v194, &v189, &v180, a4 + 1, a5) & 1) == 0)
  {
    goto LABEL_216;
  }

  v161 = v186;
  v160 = v187;
  if ((v187 - v186) < 0x80 || a4 > 0x63 || (v178 - v177) < 0x79)
  {
    if (v186 == v187)
    {
      goto LABEL_214;
    }

    v162 = v177;
    v163 = v178;
    if (v177 == v178)
    {
      goto LABEL_214;
    }

LABEL_197:
    v164 = v162;
    while (1)
    {
      v165 = *v161;
      v166 = *v164;
      if (*(*v161 + 48) >= *(*v164 + 32) && *(v165 + 32) <= *(v166 + 48))
      {
        v167 = *(v165 + 56) >= *(v166 + 40) && *(v165 + 40) <= *(v166 + 56);
        if (v167 && (*(v165 + 96) & 1) == 0 && (*(v166 + 96) & 1) == 0 && !sub_1D0B82AC0(*(a5 + 40), **a5, *(*a5 + 8), v165, *(a5 + 40), **a5, *(*a5 + 8), v166, *(a5 + 44), *(a5 + 8), *(a5 + 16), *(a5 + 24), *(a5 + 32)))
        {
          break;
        }
      }

      v164 += 8;
      if (v164 == v163)
      {
        v161 += 8;
        if (v161 != v160)
        {
          goto LABEL_197;
        }

        goto LABEL_214;
      }
    }

LABEL_216:
    v168 = 0;
    if (!v51)
    {
      goto LABEL_218;
    }

    goto LABEL_217;
  }

  if ((sub_1D0E6C5B8(&v192, &v186, &v177, a4 + 1, a5) & 1) == 0)
  {
    goto LABEL_216;
  }

LABEL_214:
  v168 = 1;
  if (v51)
  {
LABEL_217:
    operator delete(v51);
  }

LABEL_218:
  if (v177)
  {
    operator delete(v177);
  }

  if (v180)
  {
    operator delete(v180);
  }

  if (v52)
  {
    operator delete(v52);
  }

  if (v186)
  {
    operator delete(v186);
  }

  if (v189)
  {
    operator delete(v189);
  }

  return v168;
}

void sub_1D0E6DC94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, void *a33)
{
  if (v33)
  {
    operator delete(v33);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a27)
  {
    operator delete(a27);
  }

  if (a30)
  {
    operator delete(a30);
  }

  if (a33)
  {
    operator delete(a33);
  }

  v36 = *(v34 - 184);
  if (v36)
  {
    operator delete(v36);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1D0E6DD24(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 8);
  v5 = *(*a1 + 16);
  if (v4 >= v5)
  {
    v16 = *v3;
    v17 = v4 - *v3;
    v18 = 0x8F5C28F5C28F5C29 * (v17 >> 3) + 1;
    if (v18 > 0x147AE147AE147AELL)
    {
      sub_1D0C5663C();
    }

    v19 = 0x8F5C28F5C28F5C29 * ((v5 - v16) >> 3);
    if (2 * v19 > v18)
    {
      v18 = 2 * v19;
    }

    if (v19 >= 0xA3D70A3D70A3D7)
    {
      v20 = 0x147AE147AE147AELL;
    }

    else
    {
      v20 = v18;
    }

    if (v20)
    {
      if (v20 <= 0x147AE147AE147AELL)
      {
        operator new();
      }

      sub_1D0C54BE8();
    }

    v21 = *(a2 + 176);
    v22 = 8 * (v17 >> 3);
    *(v22 + 160) = *(a2 + 160);
    *(v22 + 176) = v21;
    *(v22 + 192) = *(a2 + 192);
    v23 = *(a2 + 112);
    *(v22 + 96) = *(a2 + 96);
    *(v22 + 112) = v23;
    v24 = *(a2 + 144);
    *(v22 + 128) = *(a2 + 128);
    *(v22 + 144) = v24;
    v25 = *(a2 + 48);
    *(v22 + 32) = *(a2 + 32);
    *(v22 + 48) = v25;
    v26 = *(a2 + 80);
    *(v22 + 64) = *(a2 + 64);
    *(v22 + 80) = v26;
    v27 = *(a2 + 16);
    v15 = v22 + 200;
    v28 = v22 - v17;
    *v22 = *a2;
    *(v22 + 16) = v27;
    memcpy((v22 - v17), v16, v17);
    *v3 = v28;
    *(v3 + 8) = v15;
    *(v3 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v4 = *a2;
    v6 = *(a2 + 16);
    v7 = *(a2 + 32);
    v8 = *(a2 + 64);
    *(v4 + 48) = *(a2 + 48);
    *(v4 + 64) = v8;
    *(v4 + 16) = v6;
    *(v4 + 32) = v7;
    v9 = *(a2 + 80);
    v10 = *(a2 + 96);
    v11 = *(a2 + 128);
    *(v4 + 112) = *(a2 + 112);
    *(v4 + 128) = v11;
    *(v4 + 80) = v9;
    *(v4 + 96) = v10;
    v12 = *(a2 + 144);
    v13 = *(a2 + 160);
    v14 = *(a2 + 176);
    *(v4 + 192) = *(a2 + 192);
    *(v4 + 160) = v13;
    *(v4 + 176) = v14;
    *(v4 + 144) = v12;
    v15 = v4 + 200;
  }

  *(v3 + 8) = v15;
  return a1;
}

void sub_1D0E6DED0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 80);
  v7 = *(a2 + 136);
  if (vabdd_f64(v6, v7) >= 50.0)
  {
    v8 = v6 < v7;
  }

  else
  {
    v38 = *(a2 + 64);
    sub_1D0E6F7F8(&v38);
    v37 = *(a2 + 120);
    sub_1D0E6F7F8(&v37);
    v8 = sub_1D0E6F6E4(v38, *(&v38 + 1), v37, *(&v37 + 1));
  }

  *(a1 + 16) = 6;
  if (*a2 <= v8)
  {
    __assert_rtn("assign_point", "get_turn_info.hpp", 164, "index < info.count");
  }

  *a1 = *(a2 + 16 * v8 + 8);
  v9 = a2 + 56 * v8;
  v10 = *(v9 + 40);
  *(a1 + 104) = *(v9 + 56);
  *(a1 + 88) = v10;
  v11 = *(v9 + 64);
  *(a1 + 184) = *(v9 + 80);
  *(a1 + 168) = v11;
  v12 = *(a3 + 16);
  v13 = *(v12 + 24);
  v14 = sub_1D0E6E4CC(v12);
  v15 = sub_1D0E6E4CC(*(a3 + 8));
  *&v38 = 0x3FF0000000000000;
  v16 = sub_1D0E6E618(*v13, v13[1], *v14, v14[1], *v15, v15[1], &v38);
  if (v16 == 0.0)
  {
    goto LABEL_6;
  }

  if ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    v18 = fabs(v16);
    if (v16 > 0.0)
    {
      v17 = 1;
    }

    else
    {
      v17 = -1;
    }

    if (v18 <= *&v38 * 2.22044605e-16)
    {
LABEL_6:
      v17 = 0;
    }
  }

  else if (v16 > 0.0)
  {
    v17 = 1;
  }

  else
  {
    v17 = -1;
  }

  v19 = *(a3 + 8);
  v20 = *(v19 + 16);
  v21 = *(v19 + 24);
  v22 = sub_1D0E6E4CC(v19);
  *&v38 = 0x3FF0000000000000;
  v23 = sub_1D0E6E618(*v20, v20[1], *v21, v21[1], *v22, v22[1], &v38);
  if (v23 == 0.0)
  {
LABEL_16:
    v24 = 0;
    goto LABEL_25;
  }

  if ((*&v23 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    v25 = fabs(v23);
    if (v23 > 0.0)
    {
      v24 = 1;
    }

    else
    {
      v24 = -1;
    }

    if (v25 <= *&v38 * 2.22044605e-16)
    {
      goto LABEL_16;
    }
  }

  else if (v23 > 0.0)
  {
    v24 = 1;
  }

  else
  {
    v24 = -1;
  }

LABEL_25:
  v27 = *(a3 + 8);
  v26 = *(a3 + 16);
  v28 = *(v27 + 16);
  v29 = *(v27 + 24);
  v30 = sub_1D0E6E4CC(v26);
  *&v38 = 0x3FF0000000000000;
  v31 = sub_1D0E6E618(*v28, v28[1], *v29, v29[1], *v30, v30[1], &v38);
  if (v31 == 0.0)
  {
LABEL_26:
    v32 = 0;
    goto LABEL_35;
  }

  if ((*&v31 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    v33 = fabs(v31);
    if (v31 > 0.0)
    {
      v32 = 1;
    }

    else
    {
      v32 = -1;
    }

    if (v33 > *&v38 * 2.22044605e-16)
    {
      goto LABEL_35;
    }

    goto LABEL_26;
  }

  if (v31 > 0.0)
  {
    v32 = 1;
  }

  else
  {
    v32 = -1;
  }

LABEL_35:
  if (v17 || v24 != v32)
  {
    if (v32 * v24 == -1)
    {
      v35 = v24 == -1;
    }

    else
    {
      v35 = v17 == -1;
    }

    if (v35)
    {
      v36 = 2;
    }

    else
    {
      v36 = 1;
    }

    *(a1 + 40) = v36;
    if (v35)
    {
      v34 = 1;
    }

    else
    {
      v34 = 2;
    }
  }

  else
  {
    v34 = 4;
    *(a1 + 40) = 4;
  }

  *(a1 + 120) = v34;
}

uint64_t sub_1D0E6E1B8(uint64_t a1, double *a2, uint64_t a3)
{
  v6 = *(a1 + 112) + (a2[1] - *(a1 + 96)) * *(a1 + 120);
  if (v6 >= 0.0)
  {
    v7 = 0.5;
  }

  else
  {
    v7 = -0.5;
  }

  v8 = v6 + v7;
  v50 = v8;
  if (v8 <= -9.22337204e18)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2 * (v8 >= 9.22337204e18);
  }

  sub_1D0B828E4(v9);
  v10 = *(a1 + 104) + (*a2 - *(a1 + 88)) * *(a1 + 120);
  if (v10 >= 0.0)
  {
    v11 = 0.5;
  }

  else
  {
    v11 = -0.5;
  }

  v12 = v10 + v11;
  v52 = v12;
  if (v12 <= -9.22337204e18)
  {
    v13 = 1;
  }

  else
  {
    v13 = 2 * (v12 >= 9.22337204e18);
  }

  sub_1D0B828E4(v13);
  v14 = *a3;
  v15 = *(a1 + 112) + (*(*a3 + 8) - *(a1 + 96)) * *(a1 + 120);
  if (v15 >= 0.0)
  {
    v16 = 0.5;
  }

  else
  {
    v16 = -0.5;
  }

  v17 = v15 + v16;
  v48 = v17;
  if (v17 <= -9.22337204e18)
  {
    v18 = 1;
  }

  else
  {
    v18 = 2 * (v17 >= 9.22337204e18);
  }

  sub_1D0B828E4(v18);
  v19.f64[0] = v50;
  v19.f64[1] = v48;
  v51 = vbslq_s8(vcltzq_f64(v19), vrndpq_f64(v19), vrndmq_f64(v19));
  v20 = *(a1 + 104) + (*v14 - *(a1 + 88)) * *(a1 + 120);
  if (v20 >= 0.0)
  {
    v21 = 0.5;
  }

  else
  {
    v21 = -0.5;
  }

  v22 = v20 + v21;
  v49 = v22;
  if (v22 <= -9.22337204e18)
  {
    v23 = 1;
  }

  else
  {
    v23 = 2 * (v22 >= 9.22337204e18);
  }

  result = sub_1D0B828E4(v23);
  v25.f64[0] = v52;
  v25.f64[1] = v49;
  v26 = vcvtq_s64_f64(vbslq_s8(vcltzq_f64(v25), vrndpq_f64(v25), vrndmq_f64(v25)));
  v27 = vcvtq_s64_f64(v51);
  *&v25.f64[0] = vmovn_s64(vmvnq_s8(vceqq_s64(vzip1q_s64(v27, v26), vzip2q_s64(v27, v26))));
  if (((HIDWORD(v25.f64[0]) | LODWORD(v25.f64[0])) & 1) == 0)
  {
    v28 = v27.i64[0];
    v29 = v26.i64[0];
    v30 = -1;
    do
    {
      if (++v30 >= *(*a1 + 88))
      {
        break;
      }

      v31 = *a3;
      v32 = (*a3 + 16);
      *a3 = v32;
      if (v32 == *(a3 + 16))
      {
        v33 = *(a3 + 8);
        *a3 = v33;
        v32 = v33;
        if (*(a3 + 24) == 1)
        {
          v32 = v33 + 2;
          *a3 = v33 + 2;
          if (v31 == v33)
          {
            *a3 = v33;
            v32 = v33;
          }
        }
      }

      v34 = *(a1 + 112) + (v32[1] - *(a1 + 96)) * *(a1 + 120);
      if (v34 >= 0.0)
      {
        v35 = 0.5;
      }

      else
      {
        v35 = -0.5;
      }

      v36 = v34 + v35;
      if (v34 + v35 <= -9.22337204e18)
      {
        v37 = 1;
      }

      else
      {
        v37 = 2 * (v34 + v35 >= 9.22337204e18);
      }

      sub_1D0B828E4(v37);
      v38 = ceil(v36);
      v39 = floor(v36);
      if (v36 >= 0.0)
      {
        v40 = v39;
      }

      else
      {
        v40 = v38;
      }

      v41 = *(a1 + 104) + (*v32 - *(a1 + 88)) * *(a1 + 120);
      if (v41 >= 0.0)
      {
        v42 = 0.5;
      }

      else
      {
        v42 = -0.5;
      }

      v43 = v41 + v42;
      if (v41 + v42 <= -9.22337204e18)
      {
        v44 = 1;
      }

      else
      {
        v44 = 2 * (v41 + v42 >= 9.22337204e18);
      }

      result = sub_1D0B828E4(v44);
      v45 = ceil(v43);
      v46 = floor(v43);
      if (v43 >= 0.0)
      {
        v45 = v46;
      }
    }

    while (v29 == v45 && v28 == v40);
  }

  return result;
}

uint64_t sub_1D0E6E4CC(uint64_t a1)
{
  if ((*(a1 + 48) & 1) == 0)
  {
    v2 = *a1;
    if ((*(*a1 + 80) & 1) == 0)
    {
      sub_1D0E6E1B8(*a1, *(v2 + 24), v2 + 32);
      *(v2 + 64) = **(v2 + 32);
      *(v2 + 80) = 1;
    }

    v3 = *(a1 + 8);
    v4 = *(v3 + 24) + (*(v2 + 72) - *(v3 + 8)) * *(v3 + 32);
    if (v4 >= 0.0)
    {
      v5 = 0.5;
    }

    else
    {
      v5 = -0.5;
    }

    v6 = v4 + v5;
    if (v4 + v5 <= -9.22337204e18)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2 * (v4 + v5 >= 9.22337204e18);
    }

    sub_1D0B828E4(v7);
    v8 = ceil(v6);
    v9 = floor(v6);
    if (v6 >= 0.0)
    {
      v8 = v9;
    }

    *(a1 + 40) = v8;
    v10 = *(v3 + 16) + (*(v2 + 64) - *v3) * *(v3 + 32);
    if (v10 >= 0.0)
    {
      v11 = 0.5;
    }

    else
    {
      v11 = -0.5;
    }

    v12 = v10 + v11;
    if (v10 + v11 <= -9.22337204e18)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2 * (v10 + v11 >= 9.22337204e18);
    }

    sub_1D0B828E4(v13);
    v14 = ceil(v12);
    v15 = floor(v12);
    if (v12 >= 0.0)
    {
      v14 = v15;
    }

    *(a1 + 32) = v14;
    *(a1 + 48) = 1;
  }

  return a1 + 32;
}

double sub_1D0E6E618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double *a7)
{
  v20[0] = a1;
  v20[1] = a2;
  v19[0] = a3;
  v19[1] = a4;
  v18[0] = a5;
  v18[1] = a6;
  v7 = a1 - a5;
  v27[0] = v7;
  v8 = a4 - a6;
  v26[0] = v8;
  v9 = a2 - a6;
  v25[0] = v9;
  v10 = a3 - a5;
  v24[0] = v10;
  v11 = vabdd_f64(a1, a5);
  v12 = vabdd_f64(a4, a6);
  v13 = vabdd_f64(a2, a6);
  v14 = vabdd_f64(a3, a5);
  if (v11 < v12)
  {
    v11 = v12;
  }

  if (v11 < v13)
  {
    v11 = v13;
  }

  if (v11 < v14)
  {
    v11 = v14;
  }

  if (v11 < 1.0)
  {
    v11 = 1.0;
  }

  *a7 = v11;
  v15 = v7 * v8;
  v23[0] = v7 * v8;
  v16 = v10 * v9;
  result = v7 * v8 - v10 * v9;
  v21 = fabs(v7 * v8) + fabs(v10 * v9);
  v22[0] = v10 * v9;
  if (vabdd_f64(v7 * v8, v10 * v9) < v21 * 3.33066907e-16 && (v15 <= 0.0 || v16 > 0.0) && (v15 >= 0.0 || v16 < 0.0))
  {
    return sub_1D0E0C744(v20, v19, v18, v27, v26, v25, v24, v23, v22, &v21);
  }

  return result;
}

__n128 sub_1D0E6E738(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v48 = *MEMORY[0x1E69E9840];
  v6 = a3 - a4;
  v7 = a5 - a4;
  if (a5 - a4 < 0)
  {
    v6 = a4 - a3;
    v7 = a4 - a5;
    goto LABEL_5;
  }

  if (v7)
  {
LABEL_5:
    v8 = v6 * 1000000.0 / v7;
    goto LABEL_6;
  }

  v8 = 0.0;
LABEL_6:
  if (v6 < 0 || v6 > v7)
  {
    v13 = 0;
    *v39 = 0;
    do
    {
      v14 = &v39[v13];
      *(v14 + 40) = xmmword_1D0E7DD30;
      *(v14 + 7) = 0;
      *(v14 + 8) = 0;
      *(v14 + 9) = 1;
      *(v14 + 10) = 0;
      v13 += 56;
      v14[88] = 0;
    }

    while (v13 != 112);
    memset(&v47[2], 0, 32);
    v15 = v44;
    *(a1 + 96) = v43;
    *(a1 + 112) = v15;
    *(a1 + 128) = v45;
    v16 = *&v40[16];
    *(a1 + 32) = *v40;
    *(a1 + 48) = v16;
    v17 = v42;
    *(a1 + 64) = v41;
    *(a1 + 80) = v17;
    v18 = *&v39[16];
    *a1 = *v39;
    *(a1 + 16) = v18;
    v19 = *&v47[16];
    *(a1 + 154) = *v47;
    *&v47[34] = 0;
    *(a1 + 144) = v46;
    v20 = 100;
  }

  else
  {
    for (i = 0; i != 112; i += 56)
    {
      v10 = &v39[i];
      *(v10 + 40) = xmmword_1D0E7DD30;
      *(v10 + 7) = 0;
      *(v10 + 8) = 0;
      *(v10 + 9) = 1;
      *(v10 + 10) = 0;
      v10[88] = 0;
    }

    *v39 = 1;
    *&v39[8] = *a2;
    v11 = &v40[8];
    explicit = atomic_load_explicit(&qword_1EE055430, memory_order_acquire);
    if (a6)
    {
      if ((explicit & 1) == 0)
      {
        v27 = a1;
        v28 = v6;
        v29 = v7;
        v37 = v8;
        v30 = __cxa_guard_acquire(&qword_1EE055430);
        v8 = v37;
        v7 = v29;
        v6 = v28;
        v31 = v30;
        a1 = v27;
        if (v31)
        {
          xmmword_1EE055440 = xmmword_1D0E7DD30;
          qword_1EE055450 = 0;
          __cxa_guard_release(&qword_1EE055430);
          v8 = v37;
          v7 = v29;
          v6 = v28;
          a1 = v27;
        }
      }

      *&v40[8] = xmmword_1EE055440;
      *&v40[24] = qword_1EE055450;
      BYTE8(v42) = 1;
      v11 = &v41;
    }

    else
    {
      if ((explicit & 1) == 0)
      {
        v32 = a1;
        v33 = v6;
        v34 = v7;
        v38 = v8;
        v35 = __cxa_guard_acquire(&qword_1EE055430);
        v11 = &v40[8];
        v8 = v38;
        v7 = v34;
        v6 = v33;
        v36 = v35;
        a1 = v32;
        if (v36)
        {
          xmmword_1EE055440 = xmmword_1D0E7DD30;
          qword_1EE055450 = 0;
          __cxa_guard_release(&qword_1EE055430);
          v11 = &v40[8];
          v8 = v38;
          v7 = v34;
          v6 = v33;
          a1 = v32;
        }
      }

      v41 = xmmword_1EE055440;
      *&v42 = qword_1EE055450;
      BYTE8(v42) = 1;
    }

    *v11 = v6;
    *(v11 + 1) = v7;
    *(v11 + 2) = v8;
    memset(&v47[2], 0, 32);
    v21 = v44;
    *(a1 + 96) = v43;
    *(a1 + 112) = v21;
    *(a1 + 128) = v45;
    v22 = *&v40[16];
    *(a1 + 32) = *v40;
    *(a1 + 48) = v22;
    v23 = v42;
    *(a1 + 64) = v41;
    *(a1 + 80) = v23;
    v24 = *&v39[16];
    *a1 = *v39;
    *(a1 + 16) = v24;
    v19 = *&v47[16];
    *(a1 + 154) = *v47;
    *&v47[34] = 0;
    *(a1 + 144) = v46;
    v20 = 48;
  }

  *(a1 + 152) = v20;
  *(a1 + 170) = v19;
  result = *&v47[26];
  *(a1 + 180) = *&v47[26];
  v26 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1D0E6EA6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v157 = *MEMORY[0x1E69E9840];
  v8 = a5 - a4;
  v9 = a7 - a6;
  v10 = a4 - a6;
  if (a7 - a6 < 0)
  {
    v10 = a6 - a4;
    v14 = a6 - a7;
    v11 = (a6 - a7);
    v12 = (a6 - a4) * 1000000.0 / v11;
    v13 = a6 - a5;
    goto LABEL_5;
  }

  if (v9)
  {
    v11 = v9;
    v12 = v10 * 1000000.0 / v9;
    v13 = a5 - a6;
    v14 = a7 - a6;
LABEL_5:
    v15 = v13 * 1000000.0 / v11;
    goto LABEL_7;
  }

  v14 = 0;
  v13 = a5 - a6;
  v12 = 0.0;
  v15 = 0.0;
LABEL_7:
  v16 = a6 - a4;
  v148 = a5 - a4;
  if (v8 < 0)
  {
    v16 = a4 - a6;
    v17 = a4 - a5;
    v148 = a4 - a5;
  }

  else
  {
    if (!v8)
    {
      v146 = 0;
      v147 = 0.0;
      v18 = a7 - a4;
      v20 = 0.0;
      goto LABEL_16;
    }

    v17 = a5 - a4;
  }

  v147 = v16 * 1000000.0 / v17;
  v18 = a7 - a4;
  if (v8 >= 0)
  {
    v19 = a5 - a4;
  }

  else
  {
    v18 = a4 - a7;
    v19 = a4 - a5;
  }

  v146 = v19;
  v20 = v18 * 1000000.0 / v19;
LABEL_16:
  v145 = v20;
  if (a4 != a6)
  {
    if (a7 == a4)
    {
      v21 = 3;
      goto LABEL_31;
    }

    if (a7 <= a6)
    {
      if (a4 <= a6)
      {
        if (a7 <= a4)
        {
          v21 = 2;
        }

        else
        {
          v21 = 4;
        }

LABEL_31:
        if (a5 == a6)
        {
          v23 = 3;
          v22 = 1;
          goto LABEL_57;
        }

        goto LABEL_33;
      }
    }

    else if (a4 >= a6)
    {
      if (a7 >= a4)
      {
        v21 = 2;
      }

      else
      {
        v21 = 4;
      }

      goto LABEL_31;
    }

    v21 = 0;
    goto LABEL_31;
  }

  v21 = 1;
  v22 = 1;
  v23 = 1;
  if (a5 == a4)
  {
    goto LABEL_57;
  }

LABEL_33:
  if (a5 == a7)
  {
    v22 = 3;
    goto LABEL_45;
  }

  if (a7 > a6)
  {
    if (a5 >= a6)
    {
      if (a5 <= a7)
      {
        v22 = 2;
      }

      else
      {
        v22 = 4;
      }

      goto LABEL_45;
    }

LABEL_41:
    v22 = 0;
    goto LABEL_45;
  }

  if (a5 > a6)
  {
    goto LABEL_41;
  }

  if (a5 >= a7)
  {
    v22 = 2;
  }

  else
  {
    v22 = 4;
  }

LABEL_45:
  if (a4 == a6)
  {
    v23 = 1;
    goto LABEL_57;
  }

  if (a5 > a4)
  {
    if (a6 >= a4)
    {
      if (a5 >= a6)
      {
        v23 = 2;
      }

      else
      {
        v23 = 4;
      }

      goto LABEL_57;
    }

LABEL_53:
    v23 = 0;
    goto LABEL_57;
  }

  if (a6 > a4)
  {
    goto LABEL_53;
  }

  if (a5 <= a6)
  {
    v23 = 2;
  }

  else
  {
    v23 = 4;
  }

LABEL_57:
  if (a7 == a4)
  {
    v24 = 1;
    goto LABEL_71;
  }

  if (a7 == a5)
  {
    v24 = 3;
    goto LABEL_71;
  }

  if (a5 > a4)
  {
    if (a7 >= a4)
    {
      if (a7 <= a5)
      {
        v24 = 2;
      }

      else
      {
        v24 = 4;
      }

      goto LABEL_71;
    }

LABEL_67:
    v24 = 0;
    goto LABEL_71;
  }

  if (a7 > a4)
  {
    goto LABEL_67;
  }

  if (a7 >= a5)
  {
    v24 = 2;
  }

  else
  {
    v24 = 4;
  }

LABEL_71:
  if (v21 == 1)
  {
    v10 = 0;
    v16 = 0;
    v25 = &v147;
    v26 = &v148;
    v12 = 0.0;
    goto LABEL_75;
  }

  if (v21 == 3)
  {
    v18 = 0;
    v25 = &v145;
    v26 = &v146;
    v10 = 1;
    v12 = 1000000.0;
LABEL_75:
    v27 = 1;
    *v26 = 1;
    *v25 = 0.0;
    goto LABEL_77;
  }

  v27 = v14;
LABEL_77:
  v28 = v22 - 1;
  if (v22 == 1)
  {
    v13 = 0;
    v29 = &v147;
    v30 = &v148;
    v15 = 0.0;
    v16 = 1;
    goto LABEL_81;
  }

  if (v22 == 3)
  {
    v29 = &v145;
    v30 = &v146;
    v13 = 1;
    v15 = 1000000.0;
    v18 = 1;
LABEL_81:
    v14 = 1;
    *v30 = 1;
    *v29 = 1000000.0;
    goto LABEL_82;
  }

  if (!(v22 | v21) || v21 >= 4 && v22 >= 4)
  {
    v54 = 0;
    *v149 = 0;
    do
    {
      v55 = &v149[v54];
      *(v55 + 40) = xmmword_1D0E7DD30;
      *(v55 + 7) = 0;
      *(v55 + 8) = 0;
      *(v55 + 9) = 1;
      *(v55 + 10) = 0;
      v54 += 56;
      v55[88] = 0;
    }

    while (v54 != 112);
    memset(&v155[2], 0, 32);
    v56 = v151;
    *(a1 + 96) = v150;
    *(a1 + 112) = v56;
    *(a1 + 128) = v152;
    v57 = *&v149[48];
    *(a1 + 32) = *&v149[32];
    *(a1 + 48) = v57;
    v58 = *&v149[80];
    *(a1 + 64) = *&v149[64];
    *(a1 + 80) = v58;
    v59 = *&v149[16];
    *a1 = *v149;
    *(a1 + 16) = v59;
    v60 = *&v155[16];
    *(a1 + 154) = *v155;
    *&v155[34] = 0;
    *(a1 + 144) = v153;
    *(a1 + 152) = 100;
    *(a1 + 170) = v60;
    *(a1 + 180) = *&v155[26];
    goto LABEL_179;
  }

LABEL_82:
  v31 = 0;
  if (v8)
  {
    v32 = -1;
  }

  else
  {
    v32 = 0;
  }

  v33 = v9 <= 0;
  if (v9)
  {
    v34 = -1;
  }

  else
  {
    v34 = 0;
  }

  if (v33)
  {
    v35 = v34;
  }

  else
  {
    v35 = 1;
  }

  *v149 = 0;
  v36 = xmmword_1D0E7DD30;
  do
  {
    v37 = &v149[v31];
    *(v37 + 40) = xmmword_1D0E7DD30;
    *(v37 + 7) = 0;
    *(v37 + 8) = 0;
    *(v37 + 9) = 1;
    *(v37 + 10) = 0;
    v31 += 56;
    v37[88] = 0;
  }

  while (v31 != 112);
  *v155 = xmmword_1D0E7DD30;
  if (v8 > 0)
  {
    v38 = 1;
  }

  else
  {
    v38 = v32;
  }

  *&v155[16] = 0;
  *&v155[24] = 0;
  *&v155[32] = 1;
  *&v155[40] = 0;
  if (v21 - 1 > 2)
  {
    v39 = 0;
  }

  else
  {
    *&v149[8] = **a2;
    if ((atomic_load_explicit(&qword_1EE055430, memory_order_acquire) & 1) == 0)
    {
      v116 = a3;
      v119 = v13;
      v89 = a2;
      v110 = v18;
      v113 = v16;
      v122 = v14;
      v126 = v15;
      v106 = v10;
      v107 = v12;
      v130 = v35;
      v135 = v23;
      v139 = v38;
      v90 = __cxa_guard_acquire(&qword_1EE055430);
      v36 = xmmword_1D0E7DD30;
      v23 = v135;
      v38 = v139;
      v35 = v130;
      v12 = v107;
      v10 = v106;
      v18 = v110;
      v16 = v113;
      v15 = v126;
      v13 = v119;
      v14 = v122;
      a2 = v89;
      a3 = v116;
      if (v90)
      {
        xmmword_1EE055440 = xmmword_1D0E7DD30;
        qword_1EE055450 = 0;
        __cxa_guard_release(&qword_1EE055430);
        v36 = xmmword_1D0E7DD30;
        v23 = v135;
        v38 = v139;
        v35 = v130;
        v12 = v107;
        v10 = v106;
        v18 = v110;
        v16 = v113;
        v15 = v126;
        v13 = v119;
        v14 = v122;
        a2 = v89;
        a3 = v116;
      }
    }

    *&v149[40] = xmmword_1EE055440;
    *&v149[56] = qword_1EE055450;
    v149[88] = 1;
    *&v149[64] = v10;
    *&v149[72] = v27;
    *&v149[80] = v12;
    if ((atomic_load_explicit(&qword_1EE055430, memory_order_acquire) & 1) == 0)
    {
      v91 = a3;
      v92 = a2;
      v111 = v18;
      v114 = v16;
      v93 = v13;
      v123 = v14;
      v127 = v15;
      v131 = v35;
      v136 = v23;
      v140 = v38;
      v108 = v36;
      v94 = __cxa_guard_acquire(&qword_1EE055430);
      v36 = v108;
      v23 = v136;
      v38 = v140;
      v35 = v131;
      v18 = v111;
      v16 = v114;
      v15 = v127;
      v14 = v123;
      v13 = v93;
      a2 = v92;
      a3 = v91;
      if (v94)
      {
        xmmword_1EE055440 = v108;
        qword_1EE055450 = 0;
        __cxa_guard_release(&qword_1EE055430);
        v36 = v108;
        v23 = v136;
        v38 = v140;
        v35 = v131;
        v18 = v111;
        v16 = v114;
        v15 = v127;
        v14 = v123;
        v13 = v93;
        a2 = v92;
        a3 = v91;
      }
    }

    *v155 = xmmword_1EE055440;
    *&v155[16] = qword_1EE055450;
    v39 = 1;
  }

  if (v23 == 2)
  {
    *&v149[16 * v39 + 8] = **a3;
    v40 = &v149[56 * v39];
    if ((atomic_load_explicit(&qword_1EE055430, memory_order_acquire) & 1) == 0)
    {
      v117 = a3;
      v120 = v13;
      v95 = a2;
      v112 = v18;
      v115 = v16;
      v124 = v14;
      v128 = v15;
      v132 = v35;
      v141 = v38;
      v109 = v36;
      v96 = __cxa_guard_acquire(&qword_1EE055430);
      v23 = 2;
      v38 = v141;
      v35 = v132;
      v18 = v112;
      v16 = v115;
      v15 = v128;
      v13 = v120;
      v14 = v124;
      a2 = v95;
      a3 = v117;
      if (v96)
      {
        xmmword_1EE055440 = v109;
        qword_1EE055450 = 0;
        __cxa_guard_release(&qword_1EE055430);
        v23 = 2;
        v38 = v141;
        v35 = v132;
        v18 = v112;
        v16 = v115;
        v15 = v128;
        v13 = v120;
        v14 = v124;
        a2 = v95;
        a3 = v117;
      }
    }

    v40[88] = 1;
    v41 = v148;
    *(v40 + 5) = v16;
    *(v40 + 6) = v41;
    v42 = v147;
    *(v40 + 7) = v147;
    *(v40 + 4) = xmmword_1EE055440;
    *(v40 + 10) = qword_1EE055450;
    v43 = &v155[24 * v39];
    *v43 = v16;
    v43[1] = v41;
    ++v39;
    *(v43 + 2) = v42;
  }

  if (v28 <= 2 && v39 <= 1)
  {
    *&v149[16 * v39 + 8] = **(a2 + 8);
    v44 = &v149[56 * v39];
    if ((atomic_load_explicit(&qword_1EE055438, memory_order_acquire) & 1) == 0)
    {
      v118 = a3;
      v121 = v13;
      v97 = v18;
      v125 = v14;
      v129 = v15;
      v133 = v35;
      v137 = v23;
      v142 = v38;
      v98 = __cxa_guard_acquire(&qword_1EE055438);
      v23 = v137;
      v38 = v142;
      v35 = v133;
      v15 = v129;
      v13 = v121;
      v14 = v125;
      v18 = v97;
      a3 = v118;
      if (v98)
      {
        xmmword_1EE055460 = vdupq_n_s64(1uLL);
        qword_1EE055470 = 0x412E848000000000;
        __cxa_guard_release(&qword_1EE055438);
        v23 = v137;
        v38 = v142;
        v35 = v133;
        v15 = v129;
        v13 = v121;
        v14 = v125;
        v18 = v97;
        a3 = v118;
      }
    }

    v44[88] = 1;
    *(v44 + 40) = xmmword_1EE055460;
    *(v44 + 7) = qword_1EE055470;
    *(v44 + 8) = v13;
    *(v44 + 9) = v14;
    *(v44 + 10) = v15;
    if ((atomic_load_explicit(&qword_1EE055438, memory_order_acquire) & 1) == 0)
    {
      v99 = a3;
      v100 = v18;
      v101 = v23;
      v134 = v35;
      v143 = v38;
      v102 = __cxa_guard_acquire(&qword_1EE055438);
      v38 = v143;
      v35 = v134;
      v23 = v101;
      v18 = v100;
      a3 = v99;
      if (v102)
      {
        xmmword_1EE055460 = vdupq_n_s64(1uLL);
        qword_1EE055470 = 0x412E848000000000;
        __cxa_guard_release(&qword_1EE055438);
        v38 = v143;
        v35 = v134;
        v23 = v101;
        v18 = v100;
        a3 = v99;
      }
    }

    v45 = &v155[24 * v39];
    *v45 = xmmword_1EE055460;
    *(v45 + 2) = qword_1EE055470;
    ++v39;
  }

  if (v24 == 2 && v39 <= 1)
  {
    *&v149[16 * v39 + 8] = **(a3 + 8);
    v46 = &v149[56 * v39];
    if ((atomic_load_explicit(&qword_1EE055438, memory_order_acquire) & 1) == 0)
    {
      v103 = v18;
      v138 = v23;
      v144 = v38;
      v104 = v35;
      v105 = __cxa_guard_acquire(&qword_1EE055438);
      v23 = v138;
      v38 = v144;
      v35 = v104;
      v18 = v103;
      if (v105)
      {
        xmmword_1EE055460 = vdupq_n_s64(1uLL);
        qword_1EE055470 = 0x412E848000000000;
        __cxa_guard_release(&qword_1EE055438);
        v23 = v138;
        v38 = v144;
        v35 = v104;
        v18 = v103;
      }
    }

    v46[88] = 1;
    v47 = v146;
    *(v46 + 5) = v18;
    *(v46 + 6) = v47;
    v48 = v145;
    *(v46 + 7) = v145;
    *(v46 + 4) = xmmword_1EE055460;
    *(v46 + 10) = qword_1EE055470;
    v49 = &v155[24 * v39];
    *v49 = v18;
    v49[1] = v47;
    *(v49 + 2) = v48;
    ++v39;
  }

  if (v39 != 2)
  {
    goto LABEL_125;
  }

  if (vabdd_f64(*&v155[40], *&v155[16]) < 50.0)
  {
    v50 = v38;
    v51 = v35;
    v52 = v23;
    v156 = *&v155[24];
    sub_1D0E6F7F8(&v156);
    v154 = *v155;
    sub_1D0E6F7F8(&v154);
    v53 = sub_1D0E6F6E4(v156, *(&v156 + 1), v154, *(&v154 + 1));
    v23 = v52;
    v35 = v51;
    v38 = v50;
    if ((v53 & 1) == 0)
    {
      goto LABEL_125;
    }

    goto LABEL_124;
  }

  if (*&v155[40] < *&v155[16])
  {
LABEL_124:
    v61 = v149[88];
    v62 = *&v149[40];
    v63 = *&v149[56];
    *&v149[40] = v150;
    *&v149[56] = v151;
    v64 = *&v149[72];
    *&v149[72] = v152;
    v149[88] = v153;
    v152 = v64;
    v151 = v63;
    v150 = v62;
    LOBYTE(v153) = v61;
    v65 = *&v149[8];
    v156 = *&v149[8];
    *&v149[8] = *&v149[24];
    *&v149[24] = v65;
  }

LABEL_125:
  if ((v22 & 0xFFFFFFFD) == 1)
  {
    v66 = 0;
  }

  else
  {
    v66 = -1;
  }

  v67 = (v21 & 0xFFFFFFFD) != 1;
  v68 = (v21 & 0xFFFFFFFD) != 1 || v21 - 4 < 0xFFFFFFFD;
  if (v21 - 4 <= 0xFFFFFFFC)
  {
    v67 = 0;
  }

  if (v22 == 2)
  {
    v66 = 1;
  }

  else
  {
    v67 = v21 - 4 < 0xFFFFFFFD;
  }

  v69 = !v68;
  if ((v22 & 0xFFFFFFFD) == 1)
  {
    v67 = !v68;
    v70 = v28 >= 3;
  }

  else
  {
    v70 = 1;
  }

  *v149 = v39;
  memset(&v155[2], 0, 32);
  v71 = v24 & 0xFFFFFFFD;
  if (!v70)
  {
    v69 = v67 + 1;
  }

  v72 = (v23 & 0xFFFFFFFD) != 1;
  v73 = (v23 & 0xFFFFFFFD) != 1 || (v23 - 4) < 0xFFFFFFFD;
  if ((v23 - 4) <= 0xFFFFFFFC)
  {
    v72 = 0;
  }

  v74 = !v73;
  if (v24 != 2)
  {
    v72 = (v23 - 4) < 0xFFFFFFFD;
  }

  v75 = v24 - 1;
  if (v71 == 1)
  {
    v76 = v74;
  }

  else
  {
    v76 = v72;
  }

  if (v71 != 1 || v75 >= 3)
  {
    v78 = v74;
  }

  else
  {
    v78 = v76 + 1;
  }

  v79 = v67 == 0;
  if (v28 < 3)
  {
    v79 = v21 - 4 < 0xFFFFFFFD;
  }

  v80 = v76 == 0;
  if (v75 < 3)
  {
    v80 = (v23 - 4) < 0xFFFFFFFD;
  }

  if (v69 == 1 && v78 == 1 && v79 && v80)
  {
    if (v38 == v35)
    {
      v81 = 97;
    }

    else if (v66)
    {
      v81 = 102;
    }

    else
    {
      v81 = 116;
    }
  }

  else
  {
    v81 = 99;
    if (v69 == 2 && v78 == 2)
    {
      v81 = 101;
    }
  }

  v82 = v151;
  *(a1 + 96) = v150;
  *(a1 + 112) = v82;
  *(a1 + 128) = v152;
  v83 = *&v149[48];
  *(a1 + 32) = *&v149[32];
  *(a1 + 48) = v83;
  v84 = *&v149[80];
  *(a1 + 64) = *&v149[64];
  *(a1 + 80) = v84;
  v85 = *&v149[16];
  *a1 = *v149;
  *(a1 + 16) = v85;
  v86 = *&v155[16];
  *(a1 + 154) = *v155;
  if (v71 == 1)
  {
    v87 = 0;
  }

  else
  {
    v87 = -1;
  }

  if (v24 == 2)
  {
    v87 = 1;
  }

  *(a1 + 144) = v153;
  *(a1 + 152) = v81;
  *(a1 + 153) = v38 != v35;
  *(a1 + 170) = v86;
  *(a1 + 186) = *&v155[32];
  *(a1 + 188) = v66;
  *(a1 + 192) = v87;
LABEL_179:
  v88 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1D0E6F6E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 <= 0)
  {
    __assert_rtn("operator<", "rational.hpp", 794, "this->den > zero");
  }

  if (a4 <= 0)
  {
    __assert_rtn("operator<", "rational.hpp", 795, "r.den > zero");
  }

  v4 = a1 / a2;
  v5 = a1 % a2;
  v6 = a3 / a4;
  for (i = a3 % a4; (v5 & 0x8000000000000000) != 0; --v4)
  {
    v5 += a2;
  }

  for (; (i & 0x8000000000000000) != 0; --v6)
  {
    i += a4;
  }

  if (v4 != v6)
  {
    return v4 < v6;
  }

  v8 = 0;
  while (1)
  {
    v9 = v5;
    v10 = i;
    v11 = v8;
    if (!v5 || !i)
    {
      break;
    }

    v8 ^= 1u;
    v12 = a2 / v5;
    v5 = a2 % v5;
    v13 = a4 / i;
    i = a4 % i;
    a4 = v10;
    a2 = v9;
    if (v12 != v13)
    {
      result = v12 > v13;
      if (v11 == 1)
      {
        return v12 < v13;
      }

      return result;
    }
  }

  v15 = (v8 != 1) ^ (v5 != 0);
  if (v9 == i)
  {
    return 0;
  }

  else
  {
    return v15;
  }
}

uint64_t *sub_1D0E6F7F8(uint64_t *result)
{
  v1 = result[1];
  if (!v1)
  {
    std::logic_error::logic_error(&v27, "bad rational: zero denominator");
    v27.__vftable = &unk_1F4CF1180;
    v25.i64[0] = "/AppleInternal/Library/BuildRoots/4~B_vtugDL9R_i6FW7bXTnamipqOQLftg52EzW3Mg/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/boost/rational.hpp";
    v25.i64[1] = "void boost::rational<long long>::normalize() [T = long long]";
    v26 = 892;
    sub_1D0E6FAC8(&v27, &v25);
  }

  v2 = *result;
  if (*result)
  {
    v3 = *result;
    if (v2 == 0x8000000000000000)
    {
      v3 = 0x8000000000000000 % v1;
    }

    v4 = result[1];
    if (v1 == 0x8000000000000000)
    {
      v4 = 0x8000000000000000 % v3;
    }

    if (v3 >= 0)
    {
      v5 = v3;
    }

    else
    {
      v5 = -v3;
    }

    if (v4 < 0)
    {
      v4 = -v4;
    }

    if (v5 >= v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = v5;
    }

    if (v5 <= v4)
    {
      v5 = v4;
    }

    if (v5)
    {
      if (v6)
      {
        v7 = __clz(__rbit64(v5));
        v8 = v5 >> v7;
        v9 = __clz(__rbit64(v6));
        v10 = v6 >> v9;
        if (v7 >= v9)
        {
          v11 = v9;
        }

        else
        {
          v11 = v7;
        }

        if (v10 < 2)
        {
LABEL_30:
          if (v10 == 1)
          {
            v8 = 1;
          }
        }

        else
        {
          while (1)
          {
            v12 = v8 % v10;
            v8 = v10 - v8 % v10;
            if (!v12)
            {
              break;
            }

            v13 = v12 >> __clz(__rbit64(v12));
            v8 >>= __clz(__rbit64(v8));
            if (v13 >= v8)
            {
              v10 = v8;
            }

            else
            {
              v10 = v13;
            }

            if (v13 > v8)
            {
              v8 = v13;
            }

            if (v10 <= 1)
            {
              goto LABEL_30;
            }
          }
        }

        v6 = v8 << v11;
      }

      else
      {
        v6 = v5;
      }
    }

    v14 = v2 / v6;
    v15 = v1 / v6;
    *result = v14;
    result[1] = v15;
    if (v15 == 0x8000000000000000)
    {
      std::logic_error::logic_error(&v27, "bad rational: non-zero singular denominator");
      v27.__vftable = &unk_1F4CF1180;
      v25.i64[0] = "/AppleInternal/Library/BuildRoots/4~B_vtugDL9R_i6FW7bXTnamipqOQLftg52EzW3Mg/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/boost/rational.hpp";
      v25.i64[1] = "void boost::rational<long long>::normalize() [T = long long]";
      v26 = 906;
      sub_1D0E6FAC8(&v27, &v25);
    }

    if ((v15 & 0x8000000000000000) != 0)
    {
      v14 = -v14;
      v15 = -v15;
      *result = v14;
      result[1] = v15;
    }

    else
    {
      if (!v15)
      {
        goto LABEL_65;
      }

      if (v14 == 0x8000000000000000)
      {
        v14 = 0x8000000000000000 / v15 * v15 + 0x8000000000000000;
      }
    }

    if (v14 >= 0)
    {
      v16 = v14;
    }

    else
    {
      v16 = -v14;
    }

    if (v16 <= v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = v16;
    }

    if (v14)
    {
      if (v16 < v15)
      {
        v15 = v16;
      }

      v18 = __clz(__rbit64(v17));
      v19 = v17 >> v18;
      v20 = __clz(__rbit64(v15));
      v21 = v15 >> v20;
      if (v18 >= v20)
      {
        v22 = v20;
      }

      else
      {
        v22 = v18;
      }

      if (v21 < 2)
      {
LABEL_61:
        if (v21 == 1)
        {
          v19 = 1;
        }
      }

      else
      {
        while (1)
        {
          v23 = v19 % v21;
          v19 = v21 - v19 % v21;
          if (!v23)
          {
            break;
          }

          v24 = v23 >> __clz(__rbit64(v23));
          v19 >>= __clz(__rbit64(v19));
          if (v24 >= v19)
          {
            v21 = v19;
          }

          else
          {
            v21 = v24;
          }

          if (v24 > v19)
          {
            v19 = v24;
          }

          if (v21 <= 1)
          {
            goto LABEL_61;
          }
        }
      }

      v17 = v19 << v22;
    }

    if (v17 != 1)
    {
LABEL_65:
      __assert_rtn("normalize", "rational.hpp", 915, "this->test_invariant()");
    }
  }

  else
  {
    result[1] = 1;
  }

  return result;
}

void sub_1D0E6FAC8(const std::logic_error *a1, int8x16_t *a2)
{
  exception = __cxa_allocate_exception(0x40uLL);
  v5 = sub_1D0E6FB14(exception, a1, a2);
  __cxa_throw(v5, &unk_1F4CF10B0, sub_1D0E6FBCC);
}

uint64_t sub_1D0E6FB14(uint64_t a1, const std::logic_error *a2, int8x16_t *a3)
{
  *a1 = &unk_1F4CDEDB8;
  std::logic_error::logic_error((a1 + 8), a2);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *a1 = &unk_1F4CF1108;
  *(a1 + 8) = &unk_1F4CF1138;
  *(a1 + 24) = &unk_1F4CF1160;
  *(a1 + 32) = 0;
  *(a1 + 56) = a3[1].i32[0];
  *(a1 + 40) = vextq_s8(*a3, *a3, 8uLL);
  return a1;
}

uint64_t sub_1D0E6FBCC(uint64_t a1)
{
  *(a1 + 24) = &unk_1F4CDEDE8;
  sub_1D0D278F8((a1 + 32));
  std::logic_error::~logic_error((a1 + 8));
  return a1;
}

void sub_1D0E6FDF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1D0D278F8(&a9);
  sub_1D0D278F8(&a10);
  (*(*v10 + 24))(v10);
  _Unwind_Resume(a1);
}

void sub_1D0E6FE5C(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  sub_1D0E70104(exception, a1);
  __cxa_throw(exception, &unk_1F4CF10B0, sub_1D0E6FBCC);
}

void sub_1D0E6FEB8(uint64_t a1)
{
  *(a1 + 24) = &unk_1F4CDEDE8;
  sub_1D0D278F8((a1 + 32));
  std::logic_error::~logic_error((a1 + 8));

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0E6FF2C(uint64_t a1)
{
  *(a1 + 16) = &unk_1F4CDEDE8;
  sub_1D0D278F8((a1 + 24));

  std::logic_error::~logic_error(a1);
}

void sub_1D0E6FF88(uint64_t a1)
{
  *(a1 + 16) = &unk_1F4CDEDE8;
  sub_1D0D278F8((a1 + 24));
  std::logic_error::~logic_error(a1);

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0E70000(void *a1)
{
  *a1 = &unk_1F4CDEDE8;
  v1 = (a1 - 2);
  sub_1D0D278F8(a1 + 1);

  std::logic_error::~logic_error(v1);
}

void sub_1D0E70058(void *a1)
{
  *a1 = &unk_1F4CDEDE8;
  v1 = (a1 - 2);
  sub_1D0D278F8(a1 + 1);
  std::logic_error::~logic_error(v1);

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0E700CC(std::logic_error *a1)
{
  std::logic_error::~logic_error(a1);

  JUMPOUT(0x1D387ECA0);
}

uint64_t sub_1D0E70104(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4CDEDB8;
  std::logic_error::logic_error((a1 + 8), (a2 + 8));
  *(a1 + 8) = &unk_1F4CF1180;
  v4 = *(a2 + 32);
  *(a1 + 24) = &unk_1F4CDEDE8;
  *(a1 + 32) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v5;
  *a1 = &unk_1F4CF1108;
  *(a1 + 8) = &unk_1F4CF1138;
  *(a1 + 24) = &unk_1F4CF1160;
  return a1;
}

double sub_1D0E70240(double *a1, double *a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  if (!a4)
  {
    __assert_rtn("assign", "intersection.hpp", 176, "ratio.denominator() != typename SegmentRatio::int_type(0)");
  }

  *a1 = a3 * a5 / a4 + *a2;
  result = a3 * a6 / a4 + a2[1];
  a1[1] = result;
  return result;
}

uint64_t sub_1D0E702A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = 1.0;
  v6 = sub_1D0E6E618(a3, a4, a5, a6, a1, a2, &v9);
  if (v6 == 0.0)
  {
    return 0;
  }

  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    v8 = fabs(v6);
    if (v6 > 0.0)
    {
      result = 1;
    }

    else
    {
      result = 0xFFFFFFFFLL;
    }

    if (v8 <= v9 * 2.22044605e-16)
    {
      return 0;
    }
  }

  else if (v6 > 0.0)
  {
    return 1;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t trackrun::TrackRunSupervisor::TrackRunSupervisor(trackrun::TrackRunSupervisor *this)
{
  return trackrun::TrackRunSupervisor::TrackRunSupervisor(this);
}

{
  return trackrun::TrackRunSupervisor::TrackRunSupervisor(this);
}

uint64_t trackrun::TrackRunSupervisor::TrackRunSupervisor(uint64_t a1)
{
  v2 = cnframework::Supervisor::Supervisor(a1);
  *v2 = &unk_1F4CF11A8;
  *(v2 + 481) = 0;
  sub_1D0E72B28(v2 + 488);
  sub_1D0E72B28(a1 + 752);
  trackrun::TrackRunEngineActiveObject::TrackRunEngineActiveObject(a1 + 1016);
  return a1;
}

void sub_1D0E703D8(_Unwind_Exception *a1)
{
  sub_1D0E70434(v1 + 752);
  sub_1D0E70434(v1 + 488);
  cnframework::Supervisor::~Supervisor(v1, v3, v4, v5, v6, v7, v8, v9);
  _Unwind_Resume(a1);
}

uint64_t sub_1D0E70434(uint64_t a1)
{
  sub_1D0BCB594(a1 + 72);
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void trackrun::TrackRunSupervisor::~TrackRunSupervisor(void **this)
{
  *this = &unk_1F4CF11A8;
  cnframework::Supervisor::TearDown(this);
  sub_1D0E6B318((this + 127));
  sub_1D0BCB594((this + 103));
  if (*(this + 815) < 0)
  {
    operator delete(this[99]);
  }

  if (*(this + 783) < 0)
  {
    operator delete(this[95]);
  }

  sub_1D0BCB594((this + 70));
  if (*(this + 551) < 0)
  {
    operator delete(this[66]);
  }

  if (*(this + 519) < 0)
  {
    operator delete(this[62]);
  }

  cnframework::Supervisor::~Supervisor(this, v2, v3, v4, v5, v6, v7, v8);
}

{
  trackrun::TrackRunSupervisor::~TrackRunSupervisor(this);

  JUMPOUT(0x1D387ECA0);
}

uint64_t trackrun::TrackRunSupervisor::Configure(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a2 + 256))
  {
    v10 = a1 + 488;
    *(a1 + 488) = *a2;
    std::string::operator=((a1 + 496), (a2 + 8));
    *(a1 + 520) = *(a2 + 32);
    std::string::operator=((a1 + 528), (a2 + 40));
    v11 = *(a2 + 68);
    *(a1 + 552) = *(a2 + 64);
    *(a1 + 556) = v11;
    if (v10 != a2)
    {
      *(a1 + 592) = *(a2 + 104);
      sub_1D0E72CAC((a1 + 560), *(a2 + 88));
    }

    v12 = *(a2 + 128);
    *(a1 + 600) = *(a2 + 112);
    *(a1 + 616) = v12;
    v13 = *(a2 + 144);
    v14 = *(a2 + 160);
    v15 = *(a2 + 192);
    *(a1 + 664) = *(a2 + 176);
    *(a1 + 680) = v15;
    *(a1 + 632) = v13;
    *(a1 + 648) = v14;
    v16 = *(a2 + 208);
    v17 = *(a2 + 224);
    v18 = *(a2 + 240);
    *(a1 + 744) = *(a2 + 256);
    *(a1 + 712) = v17;
    *(a1 + 728) = v18;
    *(a1 + 696) = v16;
    *(a1 + 752) = *a2;
    std::string::operator=((a1 + 760), (a2 + 8));
    *(a1 + 784) = *(a2 + 32);
    v19 = std::string::operator=((a1 + 792), (a2 + 40));
    v25 = *(a2 + 68);
    *(a1 + 816) = *(a2 + 64);
    *(a1 + 820) = v25;
    if (a1 + 752 != a2)
    {
      *(a1 + 856) = *(a2 + 104);
      sub_1D0E72CAC((a1 + 824), *(a2 + 88));
    }

    v26 = *(a2 + 128);
    *(a1 + 864) = *(a2 + 112);
    *(a1 + 880) = v26;
    v27 = *(a2 + 144);
    v28 = *(a2 + 160);
    v29 = *(a2 + 192);
    *(a1 + 928) = *(a2 + 176);
    *(a1 + 944) = v29;
    *(a1 + 896) = v27;
    *(a1 + 912) = v28;
    v30 = *(a2 + 208);
    v31 = *(a2 + 224);
    v32 = *(a2 + 240);
    *(a1 + 1008) = *(a2 + 256);
    *(a1 + 976) = v31;
    *(a1 + 992) = v32;
    *(a1 + 960) = v30;
    if (*(a1 + 784) == 1)
    {
      v41 = 0;
      cnprint::CNPrinter::EnableLogStream(&v41);
    }

    if (*(a1 + 785) == 1)
    {
      cnprint::CNPrinter::SetFileLogStreamName((a1 + 792));
      v41 = 1;
      cnprint::CNPrinter::EnableLogStream(&v41);
    }

    if (*(a1 + 816) == 1)
    {
      v41 = 2;
      cnprint::CNPrinter::EnableLogStream(&v41);
    }

    if ((*(a1 + 784) & 1) != 0 || (*(a1 + 785) & 1) != 0 || *(a1 + 816) == 1)
    {
      v33 = *(a1 + 817);
      if (v33 < cnprint::CNPrinter::GetLogLevel(v19))
      {
        cnprint::CNPrinter::SetLogLevel((a1 + 817));
      }
    }

    v42 = 2;
    cnprint::CNPrinter::Print(&v41, &v42, "TrackRunSupervisor configuration parameters set", v20, v21, v22, v23, v24, 13);
    if (*(a1 + 481) != 1 || (v42 = 2, cnprint::CNPrinter::Print(&v41, &v42, "TrackRunSupervisor::Configure called after TrackRunSupervisor was already configured.", v34, v35, v36, v37, v38, 13), (*(a1 + 481) & 1) == 0))
    {
      (*(*a1 + 24))(a1);
    }

    LOWORD(v41) = 13;
    v42 = 2;
    v39 = "TrackRunSupervisor successfully configured";
  }

  else
  {
    LOWORD(v41) = 13;
    v42 = 4;
    v39 = "TrackRunSupervisor::Configure called with uninitialized parameters.";
  }

  cnprint::CNPrinter::Print(&v41, &v42, v39, a4, a5, a6, a7, a8, v41);
  return 0;
}

uint64_t trackrun::TrackRunSupervisor::Configure(std::recursive_mutex *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v138 = *MEMORY[0x1E69E9840];
  v8 = this[15].__m_.__opaque[40];
  if (v8)
  {
    v131 = &this[11].__m_.__opaque[40];
    trackrun::TrackRunEngineActiveObject::Configure(&this[15].__m_.__opaque[48], &v131);
    cnframework::Supervisor::RegisterActiveObject(this, &this[15].__m_.__opaque[48]);
    LOBYTE(v132) = 0;
    LOBYTE(v133) = 0;
    *(&v133 + 1) = this->__m_.__opaque;
    v10 = this + 16;
    sig = this[16].__m_.__sig;
    v12 = *this[16].__m_.__opaque;
    if (sig == v12)
    {
LABEL_6:
      v13 = *&this[16].__m_.__opaque[8];
      if (v12 >= v13)
      {
        v16 = &v12[-v10->__m_.__sig] >> 5;
        if ((v16 + 1) >> 59)
        {
          sub_1D0C5663C();
        }

        v17 = v13 - v10->__m_.__sig;
        v18 = v17 >> 4;
        if (v17 >> 4 <= (v16 + 1))
        {
          v18 = v16 + 1;
        }

        if (v17 >= 0x7FFFFFFFFFFFFFE0)
        {
          v19 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v19 = v18;
        }

        if (v19)
        {
          sub_1D0DC7E20(&this[16], v19);
        }

        v20 = (32 * v16);
        v21 = v133;
        *v20 = v132;
        v20[1] = v21;
        v15 = 32 * v16 + 32;
        v22 = this[16].__m_.__sig;
        v23 = *this[16].__m_.__opaque - v22;
        v24 = 32 * v16 - v23;
        memcpy(v20 - v23, v22, v23);
        v25 = this[16].__m_.__sig;
        this[16].__m_.__sig = v24;
        *this[16].__m_.__opaque = v15;
        *&this[16].__m_.__opaque[8] = 0;
        if (v25)
        {
          operator delete(v25);
        }
      }

      else
      {
        v14 = v133;
        *v12 = v132;
        *(v12 + 1) = v14;
        v15 = (v12 + 32);
      }

      *this[16].__m_.__opaque = v15;
      if (!sub_1D0B7D618(&this[16].__m_.__opaque[16], &v134))
      {
        v137 = v136;
        v135 = &v134;
        v136[0] = &unk_1F4CF1248;
        v26 = sub_1D0DC87BC(&this[16].__m_.__opaque[16], &v134);
        sub_1D0DC7E68(v26 + 3, v136);
        sub_1D0B7D7C4(v136);
      }
    }

    else
    {
      while (!cnframework::EventSubscription::operator==(sig, &v132))
      {
        sig += 32;
        if (sig == v12)
        {
          v12 = *this[16].__m_.__opaque;
          goto LABEL_6;
        }
      }
    }

    LOBYTE(v132) = 0;
    LOBYTE(v133) = 0;
    *(&v133 + 1) = this->__m_.__opaque;
    v27 = this[16].__m_.__sig;
    v28 = *this[16].__m_.__opaque;
    if (v27 == v28)
    {
LABEL_25:
      v29 = *&this[16].__m_.__opaque[8];
      if (v28 >= v29)
      {
        v32 = &v28[-v10->__m_.__sig] >> 5;
        if ((v32 + 1) >> 59)
        {
          sub_1D0C5663C();
        }

        v33 = v29 - v10->__m_.__sig;
        v34 = v33 >> 4;
        if (v33 >> 4 <= (v32 + 1))
        {
          v34 = v32 + 1;
        }

        if (v33 >= 0x7FFFFFFFFFFFFFE0)
        {
          v35 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v35 = v34;
        }

        if (v35)
        {
          sub_1D0DC7E20(&this[16], v35);
        }

        v36 = (32 * v32);
        v37 = v133;
        *v36 = v132;
        v36[1] = v37;
        v31 = 32 * v32 + 32;
        v38 = this[16].__m_.__sig;
        v39 = *this[16].__m_.__opaque - v38;
        v40 = 32 * v32 - v39;
        memcpy(v36 - v39, v38, v39);
        v41 = this[16].__m_.__sig;
        this[16].__m_.__sig = v40;
        *this[16].__m_.__opaque = v31;
        *&this[16].__m_.__opaque[8] = 0;
        if (v41)
        {
          operator delete(v41);
        }
      }

      else
      {
        v30 = v133;
        *v28 = v132;
        *(v28 + 1) = v30;
        v31 = (v28 + 32);
      }

      *this[16].__m_.__opaque = v31;
      if (!sub_1D0B7D618(&this[16].__m_.__opaque[16], &v134))
      {
        v137 = v136;
        v135 = &v134;
        v136[0] = &unk_1F4CF12C8;
        v42 = sub_1D0DC87BC(&this[16].__m_.__opaque[16], &v134);
        sub_1D0DC7E68(v42 + 3, v136);
        sub_1D0B7D7C4(v136);
      }
    }

    else
    {
      while (!cnframework::EventSubscription::operator==(v27, &v132))
      {
        v27 += 32;
        if (v27 == v28)
        {
          v28 = *this[16].__m_.__opaque;
          goto LABEL_25;
        }
      }
    }

    LOBYTE(v132) = 0;
    LOBYTE(v133) = 0;
    *(&v133 + 1) = this->__m_.__opaque;
    v43 = this[16].__m_.__sig;
    v44 = *this[16].__m_.__opaque;
    if (v43 == v44)
    {
LABEL_43:
      v45 = *&this[16].__m_.__opaque[8];
      if (v44 >= v45)
      {
        v48 = &v44[-v10->__m_.__sig] >> 5;
        if ((v48 + 1) >> 59)
        {
          sub_1D0C5663C();
        }

        v49 = v45 - v10->__m_.__sig;
        v50 = v49 >> 4;
        if (v49 >> 4 <= (v48 + 1))
        {
          v50 = v48 + 1;
        }

        if (v49 >= 0x7FFFFFFFFFFFFFE0)
        {
          v51 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v51 = v50;
        }

        if (v51)
        {
          sub_1D0DC7E20(&this[16], v51);
        }

        v52 = (32 * v48);
        v53 = v133;
        *v52 = v132;
        v52[1] = v53;
        v47 = 32 * v48 + 32;
        v54 = this[16].__m_.__sig;
        v55 = *this[16].__m_.__opaque - v54;
        v56 = 32 * v48 - v55;
        memcpy(v52 - v55, v54, v55);
        v57 = this[16].__m_.__sig;
        this[16].__m_.__sig = v56;
        *this[16].__m_.__opaque = v47;
        *&this[16].__m_.__opaque[8] = 0;
        if (v57)
        {
          operator delete(v57);
        }
      }

      else
      {
        v46 = v133;
        *v44 = v132;
        *(v44 + 1) = v46;
        v47 = (v44 + 32);
      }

      *this[16].__m_.__opaque = v47;
      if (!sub_1D0B7D618(&this[16].__m_.__opaque[16], &v134))
      {
        v137 = v136;
        v135 = &v134;
        v136[0] = &unk_1F4CF1348;
        v58 = sub_1D0DC87BC(&this[16].__m_.__opaque[16], &v134);
        sub_1D0DC7E68(v58 + 3, v136);
        sub_1D0B7D7C4(v136);
      }
    }

    else
    {
      while (!cnframework::EventSubscription::operator==(v43, &v132))
      {
        v43 += 32;
        if (v43 == v44)
        {
          v44 = *this[16].__m_.__opaque;
          goto LABEL_43;
        }
      }
    }

    LOBYTE(v132) = 0;
    LOBYTE(v133) = 0;
    *(&v133 + 1) = this->__m_.__opaque;
    v59 = this[16].__m_.__sig;
    v60 = *this[16].__m_.__opaque;
    if (v59 == v60)
    {
LABEL_61:
      v61 = *&this[16].__m_.__opaque[8];
      if (v60 >= v61)
      {
        v64 = &v60[-v10->__m_.__sig] >> 5;
        if ((v64 + 1) >> 59)
        {
          sub_1D0C5663C();
        }

        v65 = v61 - v10->__m_.__sig;
        v66 = v65 >> 4;
        if (v65 >> 4 <= (v64 + 1))
        {
          v66 = v64 + 1;
        }

        if (v65 >= 0x7FFFFFFFFFFFFFE0)
        {
          v67 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v67 = v66;
        }

        if (v67)
        {
          sub_1D0DC7E20(&this[16], v67);
        }

        v68 = (32 * v64);
        v69 = v133;
        *v68 = v132;
        v68[1] = v69;
        v63 = 32 * v64 + 32;
        v70 = this[16].__m_.__sig;
        v71 = *this[16].__m_.__opaque - v70;
        v72 = 32 * v64 - v71;
        memcpy(v68 - v71, v70, v71);
        v73 = this[16].__m_.__sig;
        this[16].__m_.__sig = v72;
        *this[16].__m_.__opaque = v63;
        *&this[16].__m_.__opaque[8] = 0;
        if (v73)
        {
          operator delete(v73);
        }
      }

      else
      {
        v62 = v133;
        *v60 = v132;
        *(v60 + 1) = v62;
        v63 = (v60 + 32);
      }

      *this[16].__m_.__opaque = v63;
      if (!sub_1D0B7D618(&this[16].__m_.__opaque[16], &v134))
      {
        v137 = v136;
        v135 = &v134;
        v136[0] = &unk_1F4CF13C8;
        v74 = sub_1D0DC87BC(&this[16].__m_.__opaque[16], &v134);
        sub_1D0DC7E68(v74 + 3, v136);
        sub_1D0B7D7C4(v136);
      }
    }

    else
    {
      while (!cnframework::EventSubscription::operator==(v59, &v132))
      {
        v59 += 32;
        if (v59 == v60)
        {
          v60 = *this[16].__m_.__opaque;
          goto LABEL_61;
        }
      }
    }

    LOBYTE(v132) = 0;
    LOBYTE(v133) = 0;
    *(&v133 + 1) = this->__m_.__opaque;
    v75 = this[16].__m_.__sig;
    v76 = *this[16].__m_.__opaque;
    if (v75 == v76)
    {
LABEL_79:
      v77 = *&this[16].__m_.__opaque[8];
      if (v76 >= v77)
      {
        v80 = &v76[-v10->__m_.__sig] >> 5;
        if ((v80 + 1) >> 59)
        {
          sub_1D0C5663C();
        }

        v81 = v77 - v10->__m_.__sig;
        v82 = v81 >> 4;
        if (v81 >> 4 <= (v80 + 1))
        {
          v82 = v80 + 1;
        }

        if (v81 >= 0x7FFFFFFFFFFFFFE0)
        {
          v83 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v83 = v82;
        }

        if (v83)
        {
          sub_1D0DC7E20(&this[16], v83);
        }

        v84 = (32 * v80);
        v85 = v133;
        *v84 = v132;
        v84[1] = v85;
        v79 = 32 * v80 + 32;
        v86 = this[16].__m_.__sig;
        v87 = *this[16].__m_.__opaque - v86;
        v88 = 32 * v80 - v87;
        memcpy(v84 - v87, v86, v87);
        v89 = this[16].__m_.__sig;
        this[16].__m_.__sig = v88;
        *this[16].__m_.__opaque = v79;
        *&this[16].__m_.__opaque[8] = 0;
        if (v89)
        {
          operator delete(v89);
        }
      }

      else
      {
        v78 = v133;
        *v76 = v132;
        *(v76 + 1) = v78;
        v79 = (v76 + 32);
      }

      *this[16].__m_.__opaque = v79;
      if (!sub_1D0B7D618(&this[16].__m_.__opaque[16], &v134))
      {
        v137 = v136;
        v135 = &v134;
        v136[0] = &unk_1F4CF1448;
        v90 = sub_1D0DC87BC(&this[16].__m_.__opaque[16], &v134);
        sub_1D0DC7E68(v90 + 3, v136);
        sub_1D0B7D7C4(v136);
      }
    }

    else
    {
      while (!cnframework::EventSubscription::operator==(v75, &v132))
      {
        v75 += 32;
        if (v75 == v76)
        {
          v76 = *this[16].__m_.__opaque;
          goto LABEL_79;
        }
      }
    }

    LOBYTE(v132) = 0;
    LOBYTE(v133) = 0;
    *(&v133 + 1) = this->__m_.__opaque;
    v91 = this[16].__m_.__sig;
    v92 = *this[16].__m_.__opaque;
    if (v91 == v92)
    {
LABEL_97:
      v93 = *&this[16].__m_.__opaque[8];
      if (v92 >= v93)
      {
        v96 = &v92[-v10->__m_.__sig] >> 5;
        if ((v96 + 1) >> 59)
        {
          sub_1D0C5663C();
        }

        v97 = v93 - v10->__m_.__sig;
        v98 = v97 >> 4;
        if (v97 >> 4 <= (v96 + 1))
        {
          v98 = v96 + 1;
        }

        if (v97 >= 0x7FFFFFFFFFFFFFE0)
        {
          v99 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v99 = v98;
        }

        if (v99)
        {
          sub_1D0DC7E20(&this[16], v99);
        }

        v100 = (32 * v96);
        v101 = v133;
        *v100 = v132;
        v100[1] = v101;
        v95 = 32 * v96 + 32;
        v102 = this[16].__m_.__sig;
        v103 = *this[16].__m_.__opaque - v102;
        v104 = 32 * v96 - v103;
        memcpy(v100 - v103, v102, v103);
        v105 = this[16].__m_.__sig;
        this[16].__m_.__sig = v104;
        *this[16].__m_.__opaque = v95;
        *&this[16].__m_.__opaque[8] = 0;
        if (v105)
        {
          operator delete(v105);
        }
      }

      else
      {
        v94 = v133;
        *v92 = v132;
        *(v92 + 1) = v94;
        v95 = (v92 + 32);
      }

      *this[16].__m_.__opaque = v95;
      if (!sub_1D0B7D618(&this[16].__m_.__opaque[16], &v134))
      {
        v137 = v136;
        v135 = &v134;
        v136[0] = &unk_1F4CF14C8;
        v106 = sub_1D0DC87BC(&this[16].__m_.__opaque[16], &v134);
        sub_1D0DC7E68(v106 + 3, v136);
        sub_1D0B7D7C4(v136);
      }
    }

    else
    {
      while (!cnframework::EventSubscription::operator==(v91, &v132))
      {
        v91 += 32;
        if (v91 == v92)
        {
          v92 = *this[16].__m_.__opaque;
          goto LABEL_97;
        }
      }
    }

    LOBYTE(v132) = 0;
    LOBYTE(v133) = 0;
    *(&v133 + 1) = this->__m_.__opaque;
    v107 = this[16].__m_.__sig;
    v108 = *this[16].__m_.__opaque;
    if (v107 == v108)
    {
LABEL_115:
      v114 = *&this[16].__m_.__opaque[8];
      if (v108 >= v114)
      {
        v117 = &v108[-v10->__m_.__sig] >> 5;
        if ((v117 + 1) >> 59)
        {
          sub_1D0C5663C();
        }

        v118 = v114 - v10->__m_.__sig;
        v119 = v118 >> 4;
        if (v118 >> 4 <= (v117 + 1))
        {
          v119 = v117 + 1;
        }

        if (v118 >= 0x7FFFFFFFFFFFFFE0)
        {
          v120 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v120 = v119;
        }

        if (v120)
        {
          sub_1D0DC7E20(&this[16], v120);
        }

        v121 = (32 * v117);
        v122 = v133;
        *v121 = v132;
        v121[1] = v122;
        v116 = 32 * v117 + 32;
        v123 = this[16].__m_.__sig;
        v124 = *this[16].__m_.__opaque - v123;
        v125 = v121 - v124;
        memcpy(v121 - v124, v123, v124);
        v126 = this[16].__m_.__sig;
        this[16].__m_.__sig = v125;
        *this[16].__m_.__opaque = v116;
        *&this[16].__m_.__opaque[8] = 0;
        if (v126)
        {
          operator delete(v126);
        }
      }

      else
      {
        v115 = v133;
        *v108 = v132;
        *(v108 + 1) = v115;
        v116 = (v108 + 32);
      }

      *this[16].__m_.__opaque = v116;
      if (!sub_1D0B7D618(&this[16].__m_.__opaque[16], &v134))
      {
        v137 = v136;
        v135 = &v134;
        v136[0] = &unk_1F4CF1548;
        v127 = sub_1D0DC87BC(&this[16].__m_.__opaque[16], &v134);
        sub_1D0DC7E68(v127 + 3, v136);
        sub_1D0B7D7C4(v136);
      }
    }

    else
    {
      while (!cnframework::EventSubscription::operator==(v107, &v132))
      {
        v107 += 32;
        if (v107 == v108)
        {
          v108 = *this[16].__m_.__opaque;
          goto LABEL_115;
        }
      }
    }

    this[7].__m_.__opaque[25] = 1;
    LOWORD(v136[0]) = 13;
    LOBYTE(v132) = 2;
    cnprint::CNPrinter::Print(v136, &v132, "TrackRunSupervisor configured successfully", v109, v110, v111, v112, v113, v130);
  }

  else
  {
    LOWORD(v136[0]) = 13;
    LOBYTE(v132) = 5;
    cnprint::CNPrinter::Print(v136, &v132, "TrackRunSupervisor::Configure() called with invalid configuration parameters.", a4, a5, a6, a7, a8, v130);
  }

  v128 = *MEMORY[0x1E69E9840];
  return v8;
}

void sub_1D0E712F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_1D0B7D7C4(va);
  _Unwind_Resume(a1);
}

void trackrun::TrackRunSupervisor::RaiseEventsFrom(trackrun::TrackRunSupervisor *this, const CoreNavigation::CLP::LogEntry::Raven::RavenPlatformInfo *a2)
{
  if ((*(this + 481) & 1) == 0)
  {
    sub_1D0E72B28(&v46);
    CNPlatformInfo::CNPlatformInfo(&v18, a2);
    trackrun::TrackRunParameters::TrackRunParameters(&v23, &v18);
    v46 = v23;
    if (SHIBYTE(v48) < 0)
    {
      operator delete(__p);
    }

    __p = v24;
    v48 = v25;
    HIBYTE(v25) = 0;
    LOBYTE(v24) = 0;
    v49 = v26;
    if (SHIBYTE(v51) < 0)
    {
      operator delete(v50);
    }

    v50 = *v27;
    v51 = v28;
    HIBYTE(v28) = 0;
    LOBYTE(v27[0]) = 0;
    v52 = v29;
    v53 = v30;
    if (v57)
    {
      v4 = v56;
      if (v56)
      {
        do
        {
          v5 = *v4;
          operator delete(v4);
          v4 = v5;
        }

        while (v5);
      }

      v56 = 0;
      v6 = v55;
      if (v55)
      {
        v7 = 0;
        do
        {
          *(v54 + v7++) = 0;
        }

        while (v6 != v7);
      }

      v57 = 0;
    }

    v8 = v31;
    v31 = 0;
    v9 = v54;
    v54 = v8;
    if (v9)
    {
      operator delete(v9);
    }

    v10 = v32;
    v32 = 0;
    v56 = v33;
    v57 = v34;
    v58 = v35;
    v55 = v10;
    if (v34)
    {
      v11 = v33[1];
      if ((v10 & (v10 - 1)) != 0)
      {
        if (v11 >= v10)
        {
          v11 %= v10;
        }
      }

      else
      {
        v11 &= v10 - 1;
      }

      *(v54 + v11) = &v56;
      v33 = 0;
      v34 = 0;
    }

    v65 = v42;
    v66 = v43;
    v67 = v44;
    v68 = v45;
    v61 = v38;
    v62 = v39;
    v63 = v40;
    v64 = v41;
    v59 = v36;
    v60 = v37;
    sub_1D0BCB594(&v31);
    if (SHIBYTE(v28) < 0)
    {
      operator delete(v27[0]);
    }

    if (SHIBYTE(v25) < 0)
    {
      operator delete(v24);
    }

    if (v22 < 0)
    {
      operator delete(v21);
    }

    if (v20 < 0)
    {
      operator delete(v19);
    }

    trackrun::TrackRunSupervisor::Configure(this, &v46, v12, v13, v14, v15, v16, v17);
    sub_1D0BCB594(&v54);
    if (SHIBYTE(v51) < 0)
    {
      operator delete(v50);
    }

    if (SHIBYTE(v48) < 0)
    {
      operator delete(__p);
    }
  }
}

void trackrun::TrackRunSupervisor::RaiseEventsFrom(trackrun::TrackRunSupervisor *this, const CoreNavigation::CLP::LogEntry::PrivateData::GEOMapTropicalSavannaData *a2, trackrun::GEOMapRunningTrackDataEvent *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int8x16_t a9, int8x16_t a10)
{
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v16 = &unk_1F4CF0B60;
  memset(v17, 0, sizeof(v17));
  v18 = 0;
  v24 = 1;
  if (trackrun::ConvertProtobufToGEOMapRunningTrackDataEvent(a2, &v16, a3, a4, a5, a6, a7, a8, a9, a10))
  {
    operator new();
  }

  LOWORD(v25) = 13;
  v26[0] = 2;
  cnprint::CNPrinter::Print(&v25, v26, "Warning:Unable to create GEOMapTrackRunDataEvent from protobuf", v10, v11, v12, v13, v14, v15);
  v16 = &unk_1F4CF0B60;
  *&v25 = v17;
  sub_1D0E62CA0(&v25);
}

void sub_1D0E718AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22)
{
  if (a22)
  {
    sub_1D0B7CAB8(a22);
  }

  sub_1D0B7CAB8(v22);
  *(v24 - 72) = v23;
  sub_1D0E62CA0((v24 - 72));
  _Unwind_Resume(a1);
}

CoreNavigation::CLP::LogEntry::PrivateData *trackrun::TrackRunSupervisor::RaiseEventsFrom(trackrun::TrackRunSupervisor *this, const CoreNavigation::CLP::LogEntry::PrivateData::MotionState *a2, trackrun::MovingStateEvent *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int8x16_t a9, int8x16_t a10)
{
  v21 = &unk_1F4CF0C50;
  v22 = 0;
  v23 = 0;
  v24 = 0.0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  result = trackrun::ConvertProtobufToMovingStateEvent(a2, &v21, a3, a4, a5, a6, a7, a8, a9, a10);
  if (result)
  {
    LOWORD(v29) = 13;
    v20 = 2;
    v17 = v24 + v23;
    v18 = *(a2 + 2);
    if (!v18)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
      v18 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionState::default_instance_ + 16);
    }

    v19 = *(v18 + 8);
    cnprint::CNPrinter::Print(&v29, &v20, "ExternalMovingState,t,%.3lf,moving_tate,%d,activityType,%d", v12, v13, v14, v15, v16, SLOBYTE(v17));
    operator new();
  }

  return result;
}

void sub_1D0E71C50(_Unwind_Exception *a1)
{
  v4 = *(v2 - 64);
  if (v4)
  {
    sub_1D0B7CAB8(v4);
  }

  sub_1D0B7CAB8(v1);
  _Unwind_Resume(a1);
}

void trackrun::TrackRunSupervisor::RaiseEventsFrom(trackrun::TrackRunSupervisor *this, const CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator *a2)
{
  v11 = &unk_1F4CF0BC0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  sub_1D0B751F4(&__p, &unk_1D0ED80C5);
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v33 = 0;
  v31 = 0;
  v32 = 0;
  if (trackrun::ConvertProtobufToWorkoutSessionEvent(a2, &v11, v3, v4, v5, v6, v7, v8, v9, v10))
  {
    sub_1D0E71DCC();
  }

  v11 = &unk_1F4CF0BC0;
  if (v20 < 0)
  {
    operator delete(__p);
  }
}

void sub_1D0E71DAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D0E71FC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_1D0B7CAB8(a11);
  }

  sub_1D0B7CAB8(v11);
  _Unwind_Resume(a1);
}

void trackrun::TrackRunSupervisor::RaiseEventsFrom(trackrun::TrackRunSupervisor *this, const CoreNavigation::CLP::LogEntry::PrivateData::MotionStateObserver *a2)
{
  v11 = &unk_1F4CF0BC0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  sub_1D0B751F4(&__p, &unk_1D0ED80C5);
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v33 = 0;
  v31 = 0;
  v32 = 0;
  if (trackrun::ConvertProtobufToWorkoutSessionEvent(a2, &v11, v3, v4, v5, v6, v7, v8, v9, v10))
  {
    sub_1D0E71DCC();
  }

  v11 = &unk_1F4CF0BC0;
  if (v20 < 0)
  {
    operator delete(__p);
  }
}

void sub_1D0E7213C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void trackrun::TrackRunSupervisor::RaiseEventsFrom(trackrun::TrackRunSupervisor *this, const CoreNavigation::CLP::LogEntry::PrivateData::RoutineVisit *a2)
{
  v11 = &unk_1F4CF0B90;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v18 = 0;
  v16 = 0;
  v17 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v36 = vdupq_n_s64(0x7FF8000000000000uLL);
  v37 = 0xBFF0000000000000;
  v38 = 0;
  sub_1D0B751F4(v39, &unk_1D0ED80C5);
  sub_1D0B751F4(v40, &unk_1D0ED80C5);
  if (trackrun::ConvertProtobufToVisitEvent(a2, &v11, v3, v4, v5, v6, v7, v8, v9, v10))
  {
    operator new();
  }

  trackrun::VisitEvent::~VisitEvent(&v11);
}

void sub_1D0E72404(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *__p, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  v46 = *(v44 - 64);
  if (v46)
  {
    sub_1D0B7CAB8(v46);
  }

  sub_1D0B7CAB8(v43);
  trackrun::VisitEvent::~VisitEvent(&a9);
  _Unwind_Resume(a1);
}

void trackrun::TrackRunSupervisor::RaiseEventsFrom(trackrun::TrackRunSupervisor *this, const CoreNavigation::CLP::LogEntry::TropicalSavanna::TropicalSavannaHint *a2, trackrun::TrackRunHintEvent *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int8x16_t a9, int8x16_t a10)
{
  v17 = &unk_1F4CF0CE0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  if (trackrun::ConvertProtobufToTrackRunHintEvent(a2, &v17, a3, a4, a5, a6, a7, a8, a9, a10))
  {
    operator new();
  }

  LOWORD(v25) = 13;
  cnprint::CNPrinter::Print(&v25, &v16, "Warning:Unable to create TrackRunHintEvent from protobuf", v10, v11, v12, v13, v14, v15);
}

void sub_1D0E72780(_Unwind_Exception *a1)
{
  v4 = *(v2 - 48);
  if (v4)
  {
    sub_1D0B7CAB8(v4);
  }

  sub_1D0B7CAB8(v1);
  _Unwind_Resume(a1);
}

void trackrun::TrackRunSupervisor::RaiseEventsFrom(trackrun::TrackRunSupervisor *this, const CoreNavigation::CLP::LogEntry::PrivateData::WatchState *a2, trackrun::WatchStateEvent *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int8x16_t a9, int8x16_t a10)
{
  v17 = &unk_1F4CF0D40;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  if (trackrun::ConvertProtobufToWatchStateEvent(a2, &v17, a3, a4, a5, a6, a7, a8, a9, a10))
  {
    operator new();
  }

  LOWORD(v24) = 13;
  cnprint::CNPrinter::Print(&v24, &v16, "Warning:Unable to create WatchStateEvent from protobuf", v10, v11, v12, v13, v14, v15);
}

void sub_1D0E72AA8(_Unwind_Exception *a1)
{
  v4 = *(v2 - 48);
  if (v4)
  {
    sub_1D0B7CAB8(v4);
  }

  sub_1D0B7CAB8(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1D0E72B28(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  *a1 = 0;
  sub_1D0B751F4((a1 + 8), "trackrun_output.bin");
  *(a1 + 32) = 1;
  sub_1D0B751F4((a1 + 40), "trackrun_debug.txt");
  *(a1 + 64) = 256;
  *(a1 + 68) = 256;
  v4 = 2;
  v5 = 0x40A3880000000000;
  v6 = 3;
  v7 = 0x40A3880000000000;
  v8 = 4;
  v9 = 0x4059000000000000;
  sub_1D0E62F60(a1 + 72, &v4, 3);
  *(a1 + 112) = 0x410E848000000000;
  *(a1 + 120) = 1;
  *(a1 + 128) = xmmword_1D0EC1CE0;
  *(a1 + 144) = xmmword_1D0EC1CF0;
  *(a1 + 160) = xmmword_1D0EC1D00;
  *(a1 + 176) = 0x3F50624DD2F1A9FCLL;
  *(a1 + 184) = 5;
  *(a1 + 192) = 0x4052C00000000000;
  *(a1 + 200) = 0;
  *(a1 + 202) = 0;
  *(a1 + 208) = 1;
  *(a1 + 216) = 256;
  *(a1 + 224) = xmmword_1D0E83260;
  *(a1 + 240) = xmmword_1D0EC1D10;
  *(a1 + 256) = 0;
  v2 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_1D0E72C78(_Unwind_Exception *exception_object)
{
  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

void sub_1D0E72CAC(void *a1, uint64_t **a2)
{
  v4 = a1[1];
  if (!v4)
  {
    goto LABEL_7;
  }

  for (i = 0; i != v4; ++i)
  {
    *(*a1 + 8 * i) = 0;
  }

  v6 = a1[2];
  a1[2] = 0;
  a1[3] = 0;
  if (v6)
  {
    while (a2)
    {
      v7 = *(a2 + 4);
      *(v6 + 4) = v7;
      v6[3] = a2[3];
      v8 = *v6;
      v6[1] = v7;
      v9 = sub_1D0E72E00(a1, v7, v6 + 4);
      sub_1D0E73160(a1, v6, v9);
      a2 = *a2;
      v6 = v8;
      if (!v8)
      {
        goto LABEL_7;
      }
    }

    do
    {
      v10 = *v6;
      operator delete(v6);
      v6 = v10;
    }

    while (v10);
  }

  else
  {
LABEL_7:
    if (a2)
    {
      operator new();
    }
  }
}

void sub_1D0E72DBC(void *a1)
{
  __cxa_begin_catch(a1);
  do
  {
    v2 = *v1;
    operator delete(v1);
    v1 = v2;
  }

  while (v2);
  __cxa_rethrow();
}

uint64_t *sub_1D0E72E00(uint64_t a1, unint64_t a2, _DWORD *a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 1;
    if (v6 >= 3)
    {
      v9 = (v6 & (v6 - 1)) != 0;
    }

    v10 = v9 | (2 * v6);
    v11 = vcvtps_u32_f32(v7 / v8);
    if (v10 <= v11)
    {
      prime = v11;
    }

    else
    {
      prime = v10;
    }

    if (prime == 1)
    {
      prime = 2;
    }

    else if ((prime & (prime - 1)) != 0)
    {
      prime = std::__next_prime(prime);
      v6 = *(a1 + 8);
    }

    if (prime > v6)
    {
LABEL_13:
      if (!(prime >> 61))
      {
        operator new();
      }

      sub_1D0C54BE8();
    }

    if (prime < v6)
    {
      v13 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
      if (v6 < 3 || (v14 = vcnt_s8(v6), v14.i16[0] = vaddlv_u8(v14), v14.u32[0] > 1uLL))
      {
        v13 = std::__next_prime(v13);
      }

      else
      {
        v15 = 1 << -__clz(v13 - 1);
        if (v13 >= 2)
        {
          v13 = v15;
        }
      }

      if (prime <= v13)
      {
        prime = v13;
      }

      if (prime >= v6)
      {
        v6 = *(a1 + 8);
      }

      else
      {
        if (prime)
        {
          goto LABEL_13;
        }

        v26 = *a1;
        *a1 = 0;
        if (v26)
        {
          operator delete(v26);
        }

        v6 = 0;
        *(a1 + 8) = 0;
      }
    }
  }

  v16 = vcnt_s8(v6);
  v16.i16[0] = vaddlv_u8(v16);
  if (v16.u32[0] > 1uLL)
  {
    v17 = a2;
    if (v6 <= a2)
    {
      v17 = a2 % v6;
    }
  }

  else
  {
    v17 = (v6 - 1) & a2;
  }

  v18 = *(*a1 + 8 * v17);
  if (!v18)
  {
    return 0;
  }

  v19 = 0;
  do
  {
    result = v18;
    v18 = *v18;
    if (!v18)
    {
      break;
    }

    v21 = v18[1];
    if (v16.u32[0] > 1uLL)
    {
      v22 = v18[1];
      if (v21 >= v6)
      {
        v22 = v21 % v6;
      }
    }

    else
    {
      v22 = v21 & (v6 - 1);
    }

    if (v22 != v17)
    {
      break;
    }

    v23 = v21 == a2 && *(v18 + 4) == *a3;
    v24 = v23 != (v19 & 1);
    v25 = v19 & v24;
    v19 |= v24;
  }

  while (v25 != 1);
  return result;
}

void *sub_1D0E73160(void *result, void *a2, void *a3)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  if (!a3)
  {
    *a2 = result[2];
    result[2] = a2;
    *(*result + 8 * v4) = result + 2;
    if (!*a2)
    {
      goto LABEL_19;
    }

    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

LABEL_18:
    *(*result + 8 * v6) = a2;
    goto LABEL_19;
  }

  *a2 = *a3;
  *a3 = a2;
  if (*a2)
  {
    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

    if (v6 != v4)
    {
      goto LABEL_18;
    }
  }

LABEL_19:
  ++result[3];
  return result;
}

uint64_t sub_1D0E73248(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_1D0E73314(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a2;
  if (*(a3 + 8) == 1)
  {
    v10 = *(a3 + 24);
  }

  else
  {
    LOWORD(v42.__vftable) = 3;
    LOBYTE(v40) = 5;
    cnprint::CNPrinter::Print(&v42, &v40, "Attempted to access type of uninitialized GenericEvent.", a4, a5, a6, a7, a8, v30);
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

    v26 = (*(v17 + 8) & 0x7FFFFFFFFFFFFFFFLL);
    if (v26 != (off_1F4CF0C30 & 0x7FFFFFFFFFFFFFFFLL) && strcmp(v26, (off_1F4CF0C30 & 0x7FFFFFFFFFFFFFFFLL)))
    {
      v42.__vftable = 0;
      std::bad_cast::bad_cast(&v42);
      v42.__vftable = &unk_1F4CE4880;
      sub_1D0DC7F8C();
    }

    v27 = *(a3 + 16);
    v33 = 0;
    v34 = 0;
    v31 = &unk_1F4CF0B60;
    v32 = 0;
    sub_1D0E6B080(&v32, *(v27 + 16), *(v27 + 24), 0x4EC4EC4EC4EC4EC5 * ((*(v27 + 24) - *(v27 + 16)) >> 3));
    v25 = *(v27 + 40);
    v28 = *(v27 + 56);
    v29 = *(v27 + 72);
    LOBYTE(v38) = *(v27 + 88);
    v37 = v29;
    v36 = v28;
    v35 = v25;
  }

  else
  {
    v40 = 3;
    v39 = 5;
    if (*(a3 + 8) == 1)
    {
      v18 = *(a3 + 24);
    }

    else
    {
      LOWORD(v42.__vftable) = 3;
      v41 = 5;
      cnprint::CNPrinter::Print(&v42, &v41, "Attempted to access type of uninitialized GenericEvent.", v11, v12, v13, v14, v15, v30);
      v18 = MEMORY[0x1E69E54A8];
    }

    cnprint::CNPrinter::Print(&v40, &v39, "Attempted to cast a GenericEvent of type %s to type %s.", v11, v12, v13, v14, v15, *(v18 + 8));
    v25 = 0uLL;
    v35 = 0uLL;
    v36 = 0uLL;
    v37 = 0uLL;
    v31 = &unk_1F4CF0B60;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v38 = 1;
  }

  trackrun::TrackRunEngineActiveObject::HandleEvent(v9, &v31, v19, v20, v21, v22, v23, v24, v25);
  v31 = &unk_1F4CF0B60;
  v42.__vftable = &v32;
  sub_1D0E62CA0(&v42);
}

uint64_t sub_1D0E735E0(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CF12A8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1D0E736B4(uint64_t a1, trackrun::TrackRunEngineActiveObject **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a2;
  if (*(a3 + 8) == 1)
  {
    v10 = *(a3 + 24);
  }

  else
  {
    LOWORD(v25.__vftable) = 3;
    LOBYTE(v31) = 5;
    cnprint::CNPrinter::Print(&v25, &v31, "Attempted to access type of uninitialized GenericEvent.", a4, a5, a6, a7, a8, v24);
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
    if (v19 != (off_1F4CF0C78 & 0x7FFFFFFFFFFFFFFFLL) && strcmp(v19, (off_1F4CF0C78 & 0x7FFFFFFFFFFFFFFFLL)))
    {
      v25.__vftable = 0;
      std::bad_cast::bad_cast(&v25);
      v25.__vftable = &unk_1F4CE4880;
      sub_1D0DC7F8C();
    }

    v20 = *(a3 + 16);
    v25.__vftable = &unk_1F4CF0C50;
    v21 = *(v20 + 16);
    v22 = *(v20 + 32);
    v23 = *(v20 + 48);
    LOBYTE(v29) = *(v20 + 64);
    v27 = v22;
    v28 = v23;
    v26 = v21;
  }

  else
  {
    v31 = 3;
    v30 = 5;
    if (*(a3 + 8) == 1)
    {
      v18 = *(a3 + 24);
    }

    else
    {
      LOWORD(v25.__vftable) = 3;
      v32 = 5;
      cnprint::CNPrinter::Print(&v25, &v32, "Attempted to access type of uninitialized GenericEvent.", v11, v12, v13, v14, v15, v24);
      v18 = MEMORY[0x1E69E54A8];
    }

    cnprint::CNPrinter::Print(&v31, &v30, "Attempted to cast a GenericEvent of type %s to type %s.", v11, v12, v13, v14, v15, *(v18 + 8));
    v26 = 0uLL;
    v25.__vftable = &unk_1F4CF0C50;
    v27 = 0uLL;
    v28 = 0uLL;
    v29 = 0;
  }

  trackrun::TrackRunEngineActiveObject::HandleEvent(v9, &v25);
}

uint64_t sub_1D0E738DC(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CF1328))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0E7398C(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CF13A8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1D0E73A60(uint64_t a1, trackrun::TrackRunEngineActiveObject **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a2;
  if (*(a3 + 8) == 1)
  {
    v10 = *(a3 + 24);
  }

  else
  {
    LOWORD(v25.__vftable) = 3;
    LOBYTE(v31) = 5;
    cnprint::CNPrinter::Print(&v25, &v31, "Attempted to access type of uninitialized GenericEvent.", a4, a5, a6, a7, a8, v24);
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
    if (v19 != (off_1F4CF0D08 & 0x7FFFFFFFFFFFFFFFLL) && strcmp(v19, (off_1F4CF0D08 & 0x7FFFFFFFFFFFFFFFLL)))
    {
      v25.__vftable = 0;
      std::bad_cast::bad_cast(&v25);
      v25.__vftable = &unk_1F4CE4880;
      sub_1D0DC7F8C();
    }

    v20 = *(a3 + 16);
    v25.__vftable = &unk_1F4CF0CE0;
    v21 = *(v20 + 16);
    v22 = *(v20 + 32);
    v23 = *(v20 + 48);
    LOBYTE(v29) = *(v20 + 64);
    v27 = v22;
    v28 = v23;
    v26 = v21;
  }

  else
  {
    v31 = 3;
    v30 = 5;
    if (*(a3 + 8) == 1)
    {
      v18 = *(a3 + 24);
    }

    else
    {
      LOWORD(v25.__vftable) = 3;
      v32 = 5;
      cnprint::CNPrinter::Print(&v25, &v32, "Attempted to access type of uninitialized GenericEvent.", v11, v12, v13, v14, v15, v24);
      v18 = MEMORY[0x1E69E54A8];
    }

    cnprint::CNPrinter::Print(&v31, &v30, "Attempted to cast a GenericEvent of type %s to type %s.", v11, v12, v13, v14, v15, *(v18 + 8));
    v26 = 0uLL;
    v25.__vftable = &unk_1F4CF0CE0;
    v27 = 0uLL;
    v28 = 0uLL;
    v29 = 0;
  }

  trackrun::TrackRunEngineActiveObject::HandleEvent(v9, &v25);
}

uint64_t sub_1D0E73C88(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CF1428))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1D0E73D5C(uint64_t a1, trackrun::TrackRunEngineActiveObject **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a2;
  if (*(a3 + 8) == 1)
  {
    v10 = *(a3 + 24);
  }

  else
  {
    LOWORD(v52.__vftable) = 3;
    LOBYTE(v50) = 5;
    cnprint::CNPrinter::Print(&v52, &v50, "Attempted to access type of uninitialized GenericEvent.", a4, a5, a6, a7, a8, v33);
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
    if (v19 != (off_1F4CF0D20 & 0x7FFFFFFFFFFFFFFFLL) && strcmp(v19, (off_1F4CF0D20 & 0x7FFFFFFFFFFFFFFFLL)))
    {
      v52.__vftable = 0;
      std::bad_cast::bad_cast(&v52);
      v52.__vftable = &unk_1F4CE4880;
      sub_1D0DC7F8C();
    }

    v20 = *(a3 + 16);
    v34 = &unk_1F4CF0B90;
    v21 = *(v20 + 32);
    v35 = *(v20 + 16);
    v36 = v21;
    v22 = *(v20 + 80);
    v23 = *(v20 + 96);
    v24 = *(v20 + 64);
    v37 = *(v20 + 48);
    v38 = v24;
    v39 = v22;
    v40 = v23;
    v25 = *(v20 + 144);
    v26 = *(v20 + 160);
    v27 = *(v20 + 128);
    v41 = *(v20 + 112);
    v42 = v27;
    v44 = v26;
    v43 = v25;
    v29 = *(v20 + 192);
    v28 = *(v20 + 208);
    v30 = *(v20 + 218);
    v45 = *(v20 + 176);
    *&v47[10] = v30;
    *v47 = v28;
    v46 = v29;
    if (*(v20 + 263) < 0)
    {
      sub_1D0BC39B4(v48, *(v20 + 240), *(v20 + 248));
    }

    else
    {
      v31 = *(v20 + 240);
      *&v48[1] = *(v20 + 256);
      v48[0] = v31;
    }

    if (*(v20 + 287) < 0)
    {
      sub_1D0BC39B4(&v48[1] + 8, *(v20 + 264), *(v20 + 272));
    }

    else
    {
      v32 = *(v20 + 264);
      *(&v48[2] + 1) = *(v20 + 280);
      *(&v48[1] + 8) = v32;
    }
  }

  else
  {
    v50 = 3;
    v49 = 5;
    if (*(a3 + 8) == 1)
    {
      v18 = *(a3 + 24);
    }

    else
    {
      LOWORD(v52.__vftable) = 3;
      v51 = 5;
      cnprint::CNPrinter::Print(&v52, &v51, "Attempted to access type of uninitialized GenericEvent.", v11, v12, v13, v14, v15, v33);
      v18 = MEMORY[0x1E69E54A8];
    }

    cnprint::CNPrinter::Print(&v50, &v49, "Attempted to cast a GenericEvent of type %s to type %s.", v11, v12, v13, v14, v15, *(v18 + 8));
    v35 = 0uLL;
    v38 = 0uLL;
    v41 = 0uLL;
    v44 = 0uLL;
    v45 = 0u;
    *&v47[16] = 0u;
    memset(v48, 0, sizeof(v48));
    v36 = 0uLL;
    v34 = &unk_1F4CF0B90;
    v39 = 0uLL;
    v42 = 0uLL;
    *&v45 = 0;
    BYTE8(v45) = 0;
    v46 = 0uLL;
    v37 = 0uLL;
    v40 = 0uLL;
    v43 = 0uLL;
    *v47 = vdupq_n_s64(0x7FF8000000000000uLL);
    *&v47[16] = 0xBFF0000000000000;
    sub_1D0B751F4(v48, &unk_1D0ED80C5);
    sub_1D0B751F4(&v48[1] + 8, &unk_1D0ED80C5);
  }

  trackrun::TrackRunEngineActiveObject::HandleEvent(v9, &v34);
  trackrun::VisitEvent::~VisitEvent(&v34);
}

void sub_1D0E74094(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *__p, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if (a46 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0E740D4(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CF14A8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1D0E741A8(uint64_t a1, trackrun::TrackRunEngineActiveObject **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a2;
  if (*(a3 + 8) == 1)
  {
    v10 = *(a3 + 24);
  }

  else
  {
    LOWORD(v25.__vftable) = 3;
    LOBYTE(v31) = 5;
    cnprint::CNPrinter::Print(&v25, &v31, "Attempted to access type of uninitialized GenericEvent.", a4, a5, a6, a7, a8, v24);
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
    if (v19 != (off_1F4CF0D68 & 0x7FFFFFFFFFFFFFFFLL) && strcmp(v19, (off_1F4CF0D68 & 0x7FFFFFFFFFFFFFFFLL)))
    {
      v25.__vftable = 0;
      std::bad_cast::bad_cast(&v25);
      v25.__vftable = &unk_1F4CE4880;
      sub_1D0DC7F8C();
    }

    v20 = *(a3 + 16);
    v25.__vftable = &unk_1F4CF0D40;
    v21 = *(v20 + 16);
    v22 = *(v20 + 32);
    v23 = *(v20 + 48);
    LOWORD(v29) = *(v20 + 64);
    v27 = v22;
    v28 = v23;
    v26 = v21;
  }

  else
  {
    v31 = 3;
    v30 = 5;
    if (*(a3 + 8) == 1)
    {
      v18 = *(a3 + 24);
    }

    else
    {
      LOWORD(v25.__vftable) = 3;
      v32 = 5;
      cnprint::CNPrinter::Print(&v25, &v32, "Attempted to access type of uninitialized GenericEvent.", v11, v12, v13, v14, v15, v24);
      v18 = MEMORY[0x1E69E54A8];
    }

    cnprint::CNPrinter::Print(&v31, &v30, "Attempted to cast a GenericEvent of type %s to type %s.", v11, v12, v13, v14, v15, *(v18 + 8));
    v26 = 0uLL;
    v29 = 0;
    v25.__vftable = &unk_1F4CF0D40;
    v27 = 0uLL;
    v28 = 0uLL;
  }

  trackrun::TrackRunEngineActiveObject::HandleEvent(v9, &v25);
}

uint64_t sub_1D0E743CC(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CF1528))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1D0E744A0(uint64_t a1, trackrun::TrackRunEngineActiveObject **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a2;
  if (*(a3 + 8) == 1)
  {
    v10 = *(a3 + 24);
  }

  else
  {
    LOWORD(v48.__vftable) = 3;
    LOBYTE(v46) = 5;
    cnprint::CNPrinter::Print(&v48, &v46, "Attempted to access type of uninitialized GenericEvent.", a4, a5, a6, a7, a8, v30);
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
    if (v19 != (off_1F4CF0D80 & 0x7FFFFFFFFFFFFFFFLL) && strcmp(v19, (off_1F4CF0D80 & 0x7FFFFFFFFFFFFFFFLL)))
    {
      v48.__vftable = 0;
      std::bad_cast::bad_cast(&v48);
      v48.__vftable = &unk_1F4CE4880;
      sub_1D0DC7F8C();
    }

    v20 = *(a3 + 16);
    v31 = &unk_1F4CF0BC0;
    v22 = *(v20 + 32);
    v21 = *(v20 + 48);
    v32 = *(v20 + 16);
    v33 = v22;
    v34 = v21;
    LOWORD(__p[0]) = *(v20 + 64);
    if (*(v20 + 95) < 0)
    {
      sub_1D0BC39B4(&__p[1], *(v20 + 72), *(v20 + 80));
    }

    else
    {
      v23 = *(v20 + 72);
      __p[3] = *(v20 + 88);
      *&__p[1] = v23;
    }

    v36 = *(v20 + 96);
    v24 = *(v20 + 112);
    v25 = *(v20 + 128);
    v26 = *(v20 + 144);
    v40 = *(v20 + 160);
    v39 = v26;
    v37 = v24;
    v38 = v25;
    v27 = *(v20 + 176);
    v28 = *(v20 + 192);
    v29 = *(v20 + 208);
    v44 = *(v20 + 224);
    v43 = v29;
    v42 = v28;
    v41 = v27;
  }

  else
  {
    v46 = 3;
    v45 = 5;
    if (*(a3 + 8) == 1)
    {
      v18 = *(a3 + 24);
    }

    else
    {
      LOWORD(v48.__vftable) = 3;
      v47 = 5;
      cnprint::CNPrinter::Print(&v48, &v47, "Attempted to access type of uninitialized GenericEvent.", v11, v12, v13, v14, v15, v30);
      v18 = MEMORY[0x1E69E54A8];
    }

    cnprint::CNPrinter::Print(&v46, &v45, "Attempted to cast a GenericEvent of type %s to type %s.", v11, v12, v13, v14, v15, *(v18 + 8));
    v32 = 0uLL;
    memset(__p, 0, sizeof(__p));
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v31 = &unk_1F4CF0BC0;
    v33 = 0uLL;
    v34 = 0uLL;
    LOWORD(__p[0]) = 0;
    sub_1D0B751F4(&__p[1], &unk_1D0ED80C5);
    LOBYTE(v36) = 0;
    *(&v36 + 1) = 0;
    *&v37 = 0;
    BYTE8(v37) = 0;
    *(&v39 + 1) = 0;
    *&v40 = 0;
    BYTE8(v40) = 0;
    *(&v42 + 1) = 0;
    *&v43 = 0;
    BYTE8(v43) = 0;
    v44 = 0uLL;
    v38 = 0uLL;
    LOBYTE(v39) = 0;
    LOBYTE(v42) = 0;
    v41 = 0uLL;
  }

  trackrun::TrackRunEngineActiveObject::HandleEvent(v9, &v31);
  v31 = &unk_1F4CF0BC0;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }
}

uint64_t sub_1D0E747EC(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CF15A8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0E74838(uint64_t a1)
{
  *(a1 + 8) = &unk_1F4CF0B60;
  v3 = (a1 + 16);
  sub_1D0E62CA0(&v3);
  return a1;
}

void sub_1D0E74894(uint64_t a1)
{
  *(a1 + 8) = &unk_1F4CF0B60;
  v1 = (a1 + 16);
  sub_1D0E62CA0(&v1);

  JUMPOUT(0x1D387ECA0);
}

uint64_t sub_1D0E74B68(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4CF16A0;
  *(a1 + 8) = &unk_1F4CF0BC0;
  v4 = *(a2 + 8);
  v5 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 24);
  *(a1 + 48) = v5;
  *(a1 + 16) = v4;
  *(a1 + 64) = *(a2 + 56);
  if (*(a2 + 87) < 0)
  {
    sub_1D0BC39B4((a1 + 72), *(a2 + 64), *(a2 + 72));
  }

  else
  {
    v6 = *(a2 + 64);
    *(a1 + 88) = *(a2 + 80);
    *(a1 + 72) = v6;
  }

  *(a1 + 96) = *(a2 + 88);
  v7 = *(a2 + 104);
  v8 = *(a2 + 120);
  v9 = *(a2 + 152);
  *(a1 + 144) = *(a2 + 136);
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  v10 = *(a2 + 168);
  v11 = *(a2 + 184);
  v12 = *(a2 + 216);
  *(a1 + 208) = *(a2 + 200);
  *(a1 + 224) = v12;
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  return a1;
}

uint64_t sub_1D0E74C48(uint64_t a1)
{
  *(a1 + 8) = &unk_1F4CF0BC0;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  return a1;
}

void sub_1D0E74C9C(uint64_t a1)
{
  *(a1 + 8) = &unk_1F4CF0BC0;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  JUMPOUT(0x1D387ECA0);
}

uint64_t sub_1D0E74D88(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4CF16E8;
  *(a1 + 8) = &unk_1F4CF0B90;
  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 8);
  *(a1 + 32) = v4;
  v5 = *(a2 + 40);
  v6 = *(a2 + 56);
  v7 = *(a2 + 88);
  *(a1 + 80) = *(a2 + 72);
  *(a1 + 96) = v7;
  *(a1 + 48) = v5;
  *(a1 + 64) = v6;
  v8 = *(a2 + 104);
  v9 = *(a2 + 120);
  v10 = *(a2 + 152);
  *(a1 + 144) = *(a2 + 136);
  *(a1 + 160) = v10;
  *(a1 + 112) = v8;
  *(a1 + 128) = v9;
  v11 = *(a2 + 168);
  v12 = *(a2 + 184);
  v13 = *(a2 + 200);
  *(a1 + 218) = *(a2 + 210);
  *(a1 + 192) = v12;
  *(a1 + 208) = v13;
  *(a1 + 176) = v11;
  if (*(a2 + 255) < 0)
  {
    sub_1D0BC39B4((a1 + 240), *(a2 + 232), *(a2 + 240));
  }

  else
  {
    v14 = *(a2 + 232);
    *(a1 + 256) = *(a2 + 248);
    *(a1 + 240) = v14;
  }

  v15 = (a1 + 264);
  if (*(a2 + 279) < 0)
  {
    sub_1D0BC39B4(v15, *(a2 + 256), *(a2 + 264));
  }

  else
  {
    v16 = *(a2 + 256);
    *(a1 + 280) = *(a2 + 272);
    *v15 = v16;
  }

  return a1;
}

void sub_1D0E74E94(_Unwind_Exception *exception_object)
{
  if (*(v1 + 263) < 0)
  {
    operator delete(*(v1 + 240));
  }

  _Unwind_Resume(exception_object);
}

void sub_1D0E74EDC(uint64_t a1)
{
  trackrun::VisitEvent::~VisitEvent((a1 + 8));

  JUMPOUT(0x1D387ECA0);
}

uint64_t trackrun::RunningTrackData::RunningTrackLane::PopulateLaneLength(uint64_t this, double a2, double a3, double a4, double a5)
{
  v5 = *this;
  v6 = *(this + 8);
  if (*this == v6)
  {
    v8 = 0.0;
  }

  else
  {
    v7 = 0;
    v8 = 0.0;
    v9 = 0.0;
    do
    {
      if (v7)
      {
        v8 = v8 + sqrt((v9 - *v5) * (v9 - *v5) + 0.0 + (a5 - v5[1]) * (a5 - v5[1]));
        a5 = v5[1];
        v9 = *v5;
      }

      else
      {
        v9 = *v5;
        a5 = v5[1];
      }

      v5 += 2;
      v7 = 1;
    }

    while (v5 != v6);
  }

  if (*&v8 > -1 && ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || (*&v8 - 1) < 0xFFFFFFFFFFFFFLL)
  {
    *(this + 32) = v8;
    *(this + 40) = 1;
  }

  return this;
}

void *trackrun::RunningTrackData::RunningTrack::PopulateLaneCountFromLaneGeometry(void *this)
{
  v1 = this[6] - this[5];
  if (v1)
  {
    this[12] = 0x8E38E38E38E38E39 * (v1 >> 3);
  }

  return this;
}

void std::domain_error::~domain_error(std::domain_error *this)
{
  MEMORY[0x1EEE63AD0](this);
}

{
  MEMORY[0x1EEE63AD8](this);
}

void std::overflow_error::~overflow_error(std::overflow_error *this)
{
  MEMORY[0x1EEE63B68](this);
}

{
  MEMORY[0x1EEE63B70](this);
}

uint64_t std::istream::~istream()
{
  return MEMORY[0x1EEE63DF8]();
}

{
  return MEMORY[0x1EEE63E00]();
}

uint64_t std::istream::operator>>()
{
  return MEMORY[0x1EEE63E10]();
}

{
  return MEMORY[0x1EEE63E18]();
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x1EEE63EA0]();
}

{
  return MEMORY[0x1EEE63EB8]();
}

{
  return MEMORY[0x1EEE63EC0]();
}

{
  return MEMORY[0x1EEE63EC8]();
}

{
  return MEMORY[0x1EEE63ED0]();
}

{
  return MEMORY[0x1EEE63ED8]();
}

{
  return MEMORY[0x1EEE63EE8]();
}

{
  return MEMORY[0x1EEE63EF0]();
}

{
  return MEMORY[0x1EEE63F00]();
}

{
  return MEMORY[0x1EEE63F08]();
}

uint64_t std::ofstream::open()
{
  return MEMORY[0x1EEE63F70]();
}

{
  return MEMORY[0x1EEE63F78]();
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void *__cdecl operator new[](size_t __sz, const std::nothrow_t *a2)
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x1EEE73570](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}