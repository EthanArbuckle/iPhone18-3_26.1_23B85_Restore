void sub_1D0B970F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void raven::RavenActivityStateEstimatorActiveObject::HandleEvent(raven::RavenActivityStateEstimatorActiveObject *this, const raven::TimeMarkEvent *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(this + 224) != 1)
  {
    return;
  }

  if ((*(this + 1376) & 1) == 0)
  {
    v32 = *(this + 29);
    v92.i64[0] = 0x7FF8000000000000;
    v91[0] = v32;
    v91[1] = (*(*a2 + 16))(a2);
    v92.i64[0] = v33;
    if (!raven::RavenActivityStateEstimator::Initialize(this + 1376, v91, v34, v35, v36, v37, v38, v39))
    {
      v89[0] = 12;
      LOBYTE(v90) = 4;
      (*(*this + 16))(&v116, this);
      if (v118 >= 0)
      {
        v78 = &v116;
      }

      else
      {
        LOBYTE(v78) = LOBYTE(v116);
      }

      cnprint::CNPrinter::Print(v89, &v90, "%s: Could not initialize activity state estimator", v73, v74, v75, v76, v77, v78);
      goto LABEL_35;
    }

LABEL_16:
    if (*(this + 352) == 1)
    {
      v91[0] = (*(*a2 + 16))(a2);
      v91[1] = v40;
      v46 = raven::RavenActivityStateEstimator::Update(this + 1376, v91, this + 344, v41, v42, v43, v44, v45);
      if (!v46 && cnprint::CNPrinter::GetLogLevel(v46) <= 1)
      {
        LOWORD(v116) = 12;
        LOBYTE(v89[0]) = 1;
        v47 = (*(*a2 + 16))(a2);
        v49 = v48 + v47;
        (*(*this + 16))(v91, this);
        cnprint::CNPrinter::Print(&v116, v89, "t,%.3lf,%s: Could not update estimator with latest ActivityInputEvent", v50, v51, v52, v53, v54, SLOBYTE(v49));
        if (v92.i8[7] < 0)
        {
          operator delete(v91[0]);
        }
      }
    }

    if (*(this + 1368) == 1 && *(this + 1200) == 1)
    {
      v91[0] = (*(*a2 + 16))(a2);
      v91[1] = v55;
      v116 = COERCE_DOUBLE((*(*(this + 130) + 16))(this + 1040));
      v117 = v56;
      v59 = CNTimeSpan::operator-(v91, &v116, v57, v58);
      v60 = *(this + 299) - *(this + 341);
      v116 = v61 + v59;
      LODWORD(v117) = v60;
      v91[0] = (*(*a2 + 16))(a2);
      v91[1] = v62;
      v63 = raven::RavenActivityStateEstimator::Update(this + 1376, v91, &v116);
      if ((v63 & 1) == 0 && cnprint::CNPrinter::GetLogLevel(v63) <= 1)
      {
        v89[0] = 12;
        LOBYTE(v90) = 1;
        v64 = (*(*a2 + 16))(a2);
        v66 = v65 + v64;
        (*(*this + 16))(v91, this);
        cnprint::CNPrinter::Print(v89, &v90, "t,%.3lf,%s: Could not update estimator with step count data", v67, v68, v69, v70, v71, SLOBYTE(v66));
        if (v92.i8[7] < 0)
        {
          operator delete(v91[0]);
        }
      }
    }

    v91[1] = 0;
    v92.i64[0] = 0;
    v91[0] = &unk_1F4CEF688;
    v92.i8[8] = 0;
    v93 = 0uLL;
    LOBYTE(v94) = 0;
    *(&v94 + 1) = 0;
    *&v95 = 0;
    BYTE8(v95) = 0;
    v96 = 0uLL;
    v97 = 0x7FF8000000000000;
    LOBYTE(v98[0]) = 0;
    memset(&v98[2], 0, 72);
    v98[1] = 0x3FF0000000000000;
    v72 = raven::RavenActivityStateEstimator::PopulateActivityStateEvent(this + 1376, (a2 + 8), v91);
    if (v72)
    {
      sub_1D0B967D8();
    }

    if (cnprint::CNPrinter::GetLogLevel(v72) > 1)
    {
      return;
    }

    v89[0] = 12;
    LOBYTE(v90) = 1;
    v79 = (*(*a2 + 16))(a2);
    v81 = v80;
    (*(*this + 16))(&v116, this);
    v88 = v81 + v79;
    cnprint::CNPrinter::Print(v89, &v90, "t,%.3lf,%s: Could not populate ActivityStateEvent", v82, v83, v84, v85, v86, SLOBYTE(v88));
LABEL_35:
    if (v118 < 0)
    {
      operator delete(*&v116);
    }

    return;
  }

  LOBYTE(v97) = 0;
  v99 = 0;
  LOBYTE(v100) = 0;
  v115 = 0;
  v10 = *(a2 + 56);
  v93 = *(a2 + 40);
  v94 = v10;
  v11 = *(a2 + 88);
  v95 = *(a2 + 72);
  v96 = v11;
  v12 = *(a2 + 8);
  v13 = *(a2 + 24);
  *v91 = v12;
  v92 = v13;
  if (*(this + 792))
  {
    v97 = &unk_1F4CEF508;
    memcpy(v98, this + 368, 0x1A1uLL);
    v99 = 1;
  }

  if (*(this + 1032))
  {
    v100 = &unk_1F4CEE060;
    v14 = *(this + 500);
    v15 = *(this + 984);
    v111 = *(this + 968);
    v112 = v15;
    v16 = *(this + 920);
    v107 = *(this + 904);
    v108 = v16;
    v17 = *(this + 952);
    v109 = *(this + 936);
    v110 = v17;
    v18 = *(this + 856);
    v103 = *(this + 840);
    v104 = v18;
    v19 = *(this + 888);
    v105 = *(this + 872);
    v106 = v19;
    v20 = *(this + 824);
    v101 = *(this + 808);
    v102 = v20;
    v21 = *(this + 126);
    v22 = *(this + 127);
    v113 = v14;
    memset(__p, 0, sizeof(__p));
    sub_1D0B94988(__p, v21, v22, 0xCCCCCCCCCCCCCCCDLL * ((v22 - v21) >> 3));
    v115 = 1;
  }

  v23 = raven::RavenActivityStateEstimator::Predict(this + 1376, v91, v12, v13, a3, a4, a5, a6, a7, a8);
  if (!v23)
  {
    v89[0] = 12;
    LOBYTE(v90) = 4;
    v24 = (*(*a2 + 16))(a2);
    v26 = v25;
    (*(*this + 16))(&v116, this);
    v87 = v26 + v24;
    cnprint::CNPrinter::Print(v89, &v90, "t,%.3lf,%s: Could not predict estimator", v27, v28, v29, v30, v31, SLOBYTE(v87));
    if (v118 < 0)
    {
      operator delete(*&v116);
    }
  }

  if (v115 == 1)
  {
    v100 = &unk_1F4CEE060;
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  if (v23)
  {
    goto LABEL_16;
  }
}

void sub_1D0B97958(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL raven::RavenActivityStateEstimator::Predict(uint64_t a1, uint64_t a2, int8x16_t a3, int8x16_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if ((*a1 & 1) == 0)
  {
    if (cnprint::CNPrinter::GetLogLevel(a1) <= 1)
    {
      LOWORD(v276) = 12;
      LOBYTE(v257) = 1;
      v250 = *(a2 + 8) + *a2;
      cnprint::CNPrinter::Print(&v276, &v257, "WARNING: ActivityStateEstimator,time,%.3lf,predicting uninitialized", v12, v13, v14, v15, v16, SLOBYTE(v250));
    }

    return 0;
  }

  a4.i64[0] = *(a2 + 8);
  *a3.i64 = *a4.i64 + *a2;
  if (COERCE__INT64(fabs(*a3.i64)) >= 0x7FF0000000000000)
  {
    LOWORD(v276) = 12;
    LOBYTE(v257) = 4;
    v249 = *(a1 + 288) + *(a1 + 280);
    cnprint::CNPrinter::Print(&v276, &v257, "ActivityStateEstimator,time,%.3lf,invalid prediction time,%.3lf", a6, a7, a8, a9, a10, SLOBYTE(v249));
    return 0;
  }

  v17 = *(a1 + 280);
  v18 = *(a1 + 288);
  v276 = v17;
  *&v277 = v18;
  v19 = CNTimeSpan::operator-(a2, &v276, a3, a4);
  v269 = v19;
  v270 = v20;
  *v27.i64 = v20;
  if (!v19 && (*&v20 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || !v19)
  {
    if (v20 >= 0.0)
    {
      goto LABEL_10;
    }

LABEL_14:
    LOWORD(v276) = 12;
    LOBYTE(v257) = 4;
    v251 = v18 + v17;
    cnprint::CNPrinter::Print(&v276, &v257, "ActivityStateEstimator,time,%.3lf,negative prediction interval,%.3lf", v21, v22, v23, v24, v25, SLOBYTE(v251));
    return 0;
  }

  if (v19 < 0)
  {
    goto LABEL_14;
  }

LABEL_10:
  if (*(a2 + 528) == 1)
  {
    v28 = *(a2 + 201);
    if (v28 > 3)
    {
      v29 = 1;
    }

    else
    {
      v29 = 2u >> (v28 & 0xF);
    }
  }

  else
  {
    v29 = 0;
  }

  if (*(a2 + 768) != 1)
  {
    goto LABEL_24;
  }

  v32 = CNTimeSpan::operator-((a2 + 640), a2, v27, v26);
  v276 = v32;
  *&v277 = v33;
  if (v32 < 0 || (*v34.i64 = v33, v33 < 0.0))
  {
    v32 = CNTimeSpan::operator-(&v276, v34, v35);
    v34.i64[0] = v36;
  }

  if (*v34.i64 + v32 <= 6.0)
  {
    v37 = *(a2 + 736) - 1 < 6;
    v38 = *(a2 + 737) - 1 < 6;
  }

  else
  {
LABEL_24:
    v37 = 0;
    v38 = 0;
  }

  v39 = *(a1 + 280);
  v268 = *(a1 + 272);
  memset(&v258[1], 0, 64);
  v257 = v39;
  v258[0] = xmmword_1D0EB3BD0;
  v259[2] = xmmword_1D0EB3920;
  v259[3] = unk_1D0EB3930;
  v259[0] = xmmword_1D0EB3900;
  v259[1] = unk_1D0EB3910;
  v260[1] = unk_1D0EB3960;
  v260[2] = xmmword_1D0EB3970;
  v260[3] = unk_1D0EB3980;
  v260[4] = xmmword_1D0EB3990;
  v259[4] = xmmword_1D0EB3940;
  v260[0] = xmmword_1D0EB3950;
  v261[2] = xmmword_1D0EB39C0;
  v261[3] = unk_1D0EB39D0;
  v261[0] = xmmword_1D0EB39A0;
  v261[1] = unk_1D0EB39B0;
  v261[4] = xmmword_1D0EB39E0;
  v262[0] = xmmword_1D0EB39F0;
  memset(&v262[3], 0, 32);
  v262[1] = unk_1D0EB3A00;
  v262[2] = xmmword_1D0EB3A10;
  v263[2] = xmmword_1D0EB3A60;
  memset(&v263[3], 0, 32);
  v263[0] = xmmword_1D0EB3A40;
  v263[1] = unk_1D0EB3A50;
  v264[0] = xmmword_1D0EB3A90;
  v264[3] = unk_1D0EB3AC0;
  v264[4] = xmmword_1D0EB3AD0;
  v264[1] = unk_1D0EB3AA0;
  v264[2] = xmmword_1D0EB3AB0;
  v265[2] = xmmword_1D0EB3B00;
  v265[3] = unk_1D0EB3B10;
  v265[0] = xmmword_1D0EB3AE0;
  v265[1] = unk_1D0EB3AF0;
  v265[4] = xmmword_1D0EB3B20;
  v266[0] = xmmword_1D0EB3B30;
  v266[4] = xmmword_1D0EB3B70;
  memset(&v266[1], 0, 48);
  v267[4] = unk_1D0EB3BC0;
  memset(&v267[1], 0, 48);
  v267[0] = xmmword_1D0EB3B80;
  if (((v29 | v37) & 1) != 0 || v38)
  {
    v277 = 0uLL;
    v276 = &v277;
    if (v29)
    {
      v40 = *(a2 + 200);
      if (v40 > 5)
      {
        if (v40 - 8 < 2)
        {
          LODWORD(v281) = 1;
          sub_1D0B990AC(&v276, 1);
        }

        else if (v40 == 6)
        {
          LODWORD(v281) = 7;
          sub_1D0B990AC(&v276, 7);
        }

        else if (v40 == 7)
        {
          LODWORD(v281) = 2;
          sub_1D0B990AC(&v276, 2);
          LODWORD(v281) = 3;
          sub_1D0B990AC(&v276, 3);
        }
      }

      else if (*(a2 + 200) > 3u)
      {
        if (v40 == 4)
        {
          LODWORD(v281) = 4;
          sub_1D0B990AC(&v276, 4);
        }

        else if (v40 == 5)
        {
          LODWORD(v281) = 6;
          sub_1D0B990AC(&v276, 6);
        }
      }

      else if (v40 == 2)
      {
        LODWORD(v281) = 2;
        sub_1D0B990AC(&v276, 2);
      }

      else if (v40 == 3)
      {
        LODWORD(v281) = 3;
        sub_1D0B990AC(&v276, 3);
      }
    }

    else
    {
      v281 = &v276;
      if (v37)
      {
        sub_1D0B99178(&v281, *(a2 + 736));
      }

      if (v38)
      {
        sub_1D0B99178(&v281, *(a2 + 737));
      }
    }

    if (!*(&v277 + 1))
    {
      goto LABEL_339;
    }

    v41 = *(&v277 + 1);
    v42 = 0.975 / *(&v277 + 1);
    v43 = v276;
    if (v276 == &v277)
    {
      v52 = 1.0;
    }

    else
    {
      v44 = 0.0;
      v45 = v276;
      do
      {
        v46 = *(v45 + 8);
        v47 = v45;
        if (v46)
        {
          do
          {
            v48 = v46;
            v46 = *v46;
          }

          while (v46);
        }

        else
        {
          do
          {
            v48 = *(v47 + 2);
            v207 = *v48 == v47;
            v47 = v48;
          }

          while (!v207);
        }

        v44 = v44 + *(v258 + *(v45 + 28));
        v45 = v48;
      }

      while (v48 != &v277);
      if (vabdd_f64(1.0, v44) < 2.22044605e-16)
      {
        v49 = v276;
        do
        {
          *(v258 + *(v49 + 28)) = 1.0 / v41;
          v50 = *(v49 + 8);
          if (v50)
          {
            do
            {
              v51 = v50;
              v50 = *v50;
            }

            while (v50);
          }

          else
          {
            do
            {
              v51 = *(v49 + 16);
              v207 = *v51 == v49;
              v49 = v51;
            }

            while (!v207);
          }

          v49 = v51;
        }

        while (v51 != &v277);
        goto LABEL_79;
      }

      v52 = 1.0 - v44;
    }

    v53 = 0;
    v54 = v277;
    v55 = 0.025 / v52;
    do
    {
      if (!v54)
      {
LABEL_76:
        v58 = v55 * *(v258 + v53);
        goto LABEL_78;
      }

      v56 = v54;
      while (1)
      {
        v57 = *(v56 + 7);
        if (v53 >= v57)
        {
          break;
        }

LABEL_75:
        v56 = *v56;
        if (!v56)
        {
          goto LABEL_76;
        }
      }

      if (v53 > v57)
      {
        ++v56;
        goto LABEL_75;
      }

      v58 = v42;
LABEL_78:
      *(v258 + v53++) = v58;
    }

    while (v53 != 10);
LABEL_79:
    if (v43 == &v277)
    {
      v67 = 1.0;
    }

    else
    {
      v59 = 0.0;
      v60 = v43;
      do
      {
        v61 = *(v60 + 1);
        v62 = v60;
        if (v61)
        {
          do
          {
            v63 = v61;
            v61 = *v61;
          }

          while (v61);
        }

        else
        {
          do
          {
            v63 = *(v62 + 2);
            v207 = *v63 == v62;
            v62 = v63;
          }

          while (!v207);
        }

        v59 = v59 + *(v259 + *(v60 + 7));
        v60 = v63;
      }

      while (v63 != &v277);
      if (vabdd_f64(1.0, v59) < 2.22044605e-16)
      {
        v64 = v43;
        do
        {
          *(v259 + *(v64 + 7)) = 1.0 / v41;
          v65 = *(v64 + 1);
          if (v65)
          {
            do
            {
              v66 = v65;
              v65 = *v65;
            }

            while (v65);
          }

          else
          {
            do
            {
              v66 = *(v64 + 2);
              v207 = *v66 == v64;
              v64 = v66;
            }

            while (!v207);
          }

          v64 = v66;
        }

        while (v66 != &v277);
        goto LABEL_108;
      }

      v67 = 1.0 - v59;
    }

    v68 = 0;
    v69 = v277;
    v70 = 0.025 / v67;
LABEL_99:
    if (!v69)
    {
LABEL_105:
      v73 = v70 * *(v259 + v68);
      goto LABEL_107;
    }

    v71 = v69;
    while (1)
    {
      v72 = *(v71 + 7);
      if (v68 >= v72)
      {
        if (v68 <= v72)
        {
          v73 = v42;
LABEL_107:
          *(v259 + v68++) = v73;
          if (v68 == 10)
          {
LABEL_108:
            if (v43 == &v277)
            {
              v82 = 1.0;
            }

            else
            {
              v74 = 0.0;
              v75 = v43;
              do
              {
                v76 = *(v75 + 1);
                v77 = v75;
                if (v76)
                {
                  do
                  {
                    v78 = v76;
                    v76 = *v76;
                  }

                  while (v76);
                }

                else
                {
                  do
                  {
                    v78 = *(v77 + 2);
                    v207 = *v78 == v77;
                    v77 = v78;
                  }

                  while (!v207);
                }

                v74 = v74 + *(v260 + *(v75 + 7));
                v75 = v78;
              }

              while (v78 != &v277);
              if (vabdd_f64(1.0, v74) < 2.22044605e-16)
              {
                v79 = v43;
                do
                {
                  *(v260 + *(v79 + 7)) = 1.0 / v41;
                  v80 = *(v79 + 1);
                  if (v80)
                  {
                    do
                    {
                      v81 = v80;
                      v80 = *v80;
                    }

                    while (v80);
                  }

                  else
                  {
                    do
                    {
                      v81 = *(v79 + 2);
                      v207 = *v81 == v79;
                      v79 = v81;
                    }

                    while (!v207);
                  }

                  v79 = v81;
                }

                while (v81 != &v277);
                goto LABEL_137;
              }

              v82 = 1.0 - v74;
            }

            v83 = 0;
            v84 = v277;
            v85 = 0.025 / v82;
LABEL_128:
            if (!v84)
            {
LABEL_134:
              v88 = v85 * *(v260 + v83);
              goto LABEL_136;
            }

            v86 = v84;
            while (1)
            {
              v87 = *(v86 + 7);
              if (v83 >= v87)
              {
                if (v83 <= v87)
                {
                  v88 = v42;
LABEL_136:
                  *(v260 + v83++) = v88;
                  if (v83 != 10)
                  {
                    goto LABEL_128;
                  }

LABEL_137:
                  if (v43 == &v277)
                  {
                    v97 = 1.0;
                  }

                  else
                  {
                    v89 = 0.0;
                    v90 = v43;
                    do
                    {
                      v91 = *(v90 + 1);
                      v92 = v90;
                      if (v91)
                      {
                        do
                        {
                          v93 = v91;
                          v91 = *v91;
                        }

                        while (v91);
                      }

                      else
                      {
                        do
                        {
                          v93 = *(v92 + 2);
                          v207 = *v93 == v92;
                          v92 = v93;
                        }

                        while (!v207);
                      }

                      v89 = v89 + *(v261 + *(v90 + 7));
                      v90 = v93;
                    }

                    while (v93 != &v277);
                    if (vabdd_f64(1.0, v89) < 2.22044605e-16)
                    {
                      v94 = v43;
                      do
                      {
                        *(v261 + *(v94 + 7)) = 1.0 / v41;
                        v95 = *(v94 + 1);
                        if (v95)
                        {
                          do
                          {
                            v96 = v95;
                            v95 = *v95;
                          }

                          while (v95);
                        }

                        else
                        {
                          do
                          {
                            v96 = *(v94 + 2);
                            v207 = *v96 == v94;
                            v94 = v96;
                          }

                          while (!v207);
                        }

                        v94 = v96;
                      }

                      while (v96 != &v277);
                      goto LABEL_166;
                    }

                    v97 = 1.0 - v89;
                  }

                  v98 = 0;
                  v99 = v277;
                  v100 = 0.025 / v97;
LABEL_157:
                  if (!v99)
                  {
LABEL_163:
                    v103 = v100 * *(v261 + v98);
                    goto LABEL_165;
                  }

                  v101 = v99;
                  while (1)
                  {
                    v102 = *(v101 + 7);
                    if (v98 >= v102)
                    {
                      if (v98 <= v102)
                      {
                        v103 = v42;
LABEL_165:
                        *(v261 + v98++) = v103;
                        if (v98 == 10)
                        {
LABEL_166:
                          if (v43 == &v277)
                          {
                            v112 = 1.0;
                          }

                          else
                          {
                            v104 = 0.0;
                            v105 = v43;
                            do
                            {
                              v106 = *(v105 + 1);
                              v107 = v105;
                              if (v106)
                              {
                                do
                                {
                                  v108 = v106;
                                  v106 = *v106;
                                }

                                while (v106);
                              }

                              else
                              {
                                do
                                {
                                  v108 = *(v107 + 2);
                                  v207 = *v108 == v107;
                                  v107 = v108;
                                }

                                while (!v207);
                              }

                              v104 = v104 + *(v262 + *(v105 + 7));
                              v105 = v108;
                            }

                            while (v108 != &v277);
                            if (vabdd_f64(1.0, v104) < 2.22044605e-16)
                            {
                              v109 = v43;
                              do
                              {
                                *(v262 + *(v109 + 7)) = 1.0 / v41;
                                v110 = *(v109 + 1);
                                if (v110)
                                {
                                  do
                                  {
                                    v111 = v110;
                                    v110 = *v110;
                                  }

                                  while (v110);
                                }

                                else
                                {
                                  do
                                  {
                                    v111 = *(v109 + 2);
                                    v207 = *v111 == v109;
                                    v109 = v111;
                                  }

                                  while (!v207);
                                }

                                v109 = v111;
                              }

                              while (v111 != &v277);
                              goto LABEL_195;
                            }

                            v112 = 1.0 - v104;
                          }

                          v113 = 0;
                          v114 = v277;
                          v115 = 0.025 / v112;
LABEL_186:
                          if (!v114)
                          {
LABEL_192:
                            v118 = v115 * *(v262 + v113);
                            goto LABEL_194;
                          }

                          v116 = v114;
                          while (1)
                          {
                            v117 = *(v116 + 7);
                            if (v113 >= v117)
                            {
                              if (v113 <= v117)
                              {
                                v118 = v42;
LABEL_194:
                                *(v262 + v113++) = v118;
                                if (v113 != 10)
                                {
                                  goto LABEL_186;
                                }

LABEL_195:
                                if (v43 == &v277)
                                {
                                  v127 = 1.0;
                                }

                                else
                                {
                                  v119 = 0.0;
                                  v120 = v43;
                                  do
                                  {
                                    v121 = *(v120 + 1);
                                    v122 = v120;
                                    if (v121)
                                    {
                                      do
                                      {
                                        v123 = v121;
                                        v121 = *v121;
                                      }

                                      while (v121);
                                    }

                                    else
                                    {
                                      do
                                      {
                                        v123 = *(v122 + 2);
                                        v207 = *v123 == v122;
                                        v122 = v123;
                                      }

                                      while (!v207);
                                    }

                                    v119 = v119 + *(v263 + *(v120 + 7));
                                    v120 = v123;
                                  }

                                  while (v123 != &v277);
                                  if (vabdd_f64(1.0, v119) < 2.22044605e-16)
                                  {
                                    v124 = v43;
                                    do
                                    {
                                      *(v263 + *(v124 + 7)) = 1.0 / v41;
                                      v125 = *(v124 + 1);
                                      if (v125)
                                      {
                                        do
                                        {
                                          v126 = v125;
                                          v125 = *v125;
                                        }

                                        while (v125);
                                      }

                                      else
                                      {
                                        do
                                        {
                                          v126 = *(v124 + 2);
                                          v207 = *v126 == v124;
                                          v124 = v126;
                                        }

                                        while (!v207);
                                      }

                                      v124 = v126;
                                    }

                                    while (v126 != &v277);
                                    goto LABEL_224;
                                  }

                                  v127 = 1.0 - v119;
                                }

                                v128 = 0;
                                v129 = v277;
                                v130 = 0.025 / v127;
LABEL_215:
                                if (!v129)
                                {
LABEL_221:
                                  v133 = v130 * *(v263 + v128);
                                  goto LABEL_223;
                                }

                                v131 = v129;
                                while (1)
                                {
                                  v132 = *(v131 + 7);
                                  if (v128 >= v132)
                                  {
                                    if (v128 <= v132)
                                    {
                                      v133 = v42;
LABEL_223:
                                      *(v263 + v128++) = v133;
                                      if (v128 == 10)
                                      {
LABEL_224:
                                        if (v43 == &v277)
                                        {
                                          v142 = 1.0;
                                        }

                                        else
                                        {
                                          v134 = 0.0;
                                          v135 = v43;
                                          do
                                          {
                                            v136 = *(v135 + 1);
                                            v137 = v135;
                                            if (v136)
                                            {
                                              do
                                              {
                                                v138 = v136;
                                                v136 = *v136;
                                              }

                                              while (v136);
                                            }

                                            else
                                            {
                                              do
                                              {
                                                v138 = *(v137 + 2);
                                                v207 = *v138 == v137;
                                                v137 = v138;
                                              }

                                              while (!v207);
                                            }

                                            v134 = v134 + *(v264 + *(v135 + 7));
                                            v135 = v138;
                                          }

                                          while (v138 != &v277);
                                          if (vabdd_f64(1.0, v134) < 2.22044605e-16)
                                          {
                                            v139 = v43;
                                            do
                                            {
                                              *(v264 + *(v139 + 7)) = 1.0 / v41;
                                              v140 = *(v139 + 1);
                                              if (v140)
                                              {
                                                do
                                                {
                                                  v141 = v140;
                                                  v140 = *v140;
                                                }

                                                while (v140);
                                              }

                                              else
                                              {
                                                do
                                                {
                                                  v141 = *(v139 + 2);
                                                  v207 = *v141 == v139;
                                                  v139 = v141;
                                                }

                                                while (!v207);
                                              }

                                              v139 = v141;
                                            }

                                            while (v141 != &v277);
                                            goto LABEL_253;
                                          }

                                          v142 = 1.0 - v134;
                                        }

                                        v143 = 0;
                                        v144 = v277;
                                        v145 = 0.025 / v142;
LABEL_244:
                                        if (!v144)
                                        {
LABEL_250:
                                          v148 = v145 * *(v264 + v143);
                                          goto LABEL_252;
                                        }

                                        v146 = v144;
                                        while (1)
                                        {
                                          v147 = *(v146 + 7);
                                          if (v143 >= v147)
                                          {
                                            if (v143 <= v147)
                                            {
                                              v148 = v42;
LABEL_252:
                                              *(v264 + v143++) = v148;
                                              if (v143 != 10)
                                              {
                                                goto LABEL_244;
                                              }

LABEL_253:
                                              if (v43 == &v277)
                                              {
                                                v157 = 1.0;
                                              }

                                              else
                                              {
                                                v149 = 0.0;
                                                v150 = v43;
                                                do
                                                {
                                                  v151 = *(v150 + 1);
                                                  v152 = v150;
                                                  if (v151)
                                                  {
                                                    do
                                                    {
                                                      v153 = v151;
                                                      v151 = *v151;
                                                    }

                                                    while (v151);
                                                  }

                                                  else
                                                  {
                                                    do
                                                    {
                                                      v153 = *(v152 + 2);
                                                      v207 = *v153 == v152;
                                                      v152 = v153;
                                                    }

                                                    while (!v207);
                                                  }

                                                  v149 = v149 + *(v265 + *(v150 + 7));
                                                  v150 = v153;
                                                }

                                                while (v153 != &v277);
                                                if (vabdd_f64(1.0, v149) < 2.22044605e-16)
                                                {
                                                  v154 = v43;
                                                  do
                                                  {
                                                    *(v265 + *(v154 + 7)) = 1.0 / v41;
                                                    v155 = *(v154 + 1);
                                                    if (v155)
                                                    {
                                                      do
                                                      {
                                                        v156 = v155;
                                                        v155 = *v155;
                                                      }

                                                      while (v155);
                                                    }

                                                    else
                                                    {
                                                      do
                                                      {
                                                        v156 = *(v154 + 2);
                                                        v207 = *v156 == v154;
                                                        v154 = v156;
                                                      }

                                                      while (!v207);
                                                    }

                                                    v154 = v156;
                                                  }

                                                  while (v156 != &v277);
                                                  goto LABEL_282;
                                                }

                                                v157 = 1.0 - v149;
                                              }

                                              v158 = 0;
                                              v159 = v277;
                                              v160 = 0.025 / v157;
LABEL_273:
                                              if (!v159)
                                              {
LABEL_279:
                                                v163 = v160 * *(v265 + v158);
                                                goto LABEL_281;
                                              }

                                              v161 = v159;
                                              while (1)
                                              {
                                                v162 = *(v161 + 7);
                                                if (v158 >= v162)
                                                {
                                                  if (v158 <= v162)
                                                  {
                                                    v163 = v42;
LABEL_281:
                                                    *(v265 + v158++) = v163;
                                                    if (v158 == 10)
                                                    {
LABEL_282:
                                                      if (v43 == &v277)
                                                      {
                                                        v172 = 1.0;
                                                      }

                                                      else
                                                      {
                                                        v164 = 0.0;
                                                        v165 = v43;
                                                        do
                                                        {
                                                          v166 = *(v165 + 1);
                                                          v167 = v165;
                                                          if (v166)
                                                          {
                                                            do
                                                            {
                                                              v168 = v166;
                                                              v166 = *v166;
                                                            }

                                                            while (v166);
                                                          }

                                                          else
                                                          {
                                                            do
                                                            {
                                                              v168 = *(v167 + 2);
                                                              v207 = *v168 == v167;
                                                              v167 = v168;
                                                            }

                                                            while (!v207);
                                                          }

                                                          v164 = v164 + *(v266 + *(v165 + 7));
                                                          v165 = v168;
                                                        }

                                                        while (v168 != &v277);
                                                        if (vabdd_f64(1.0, v164) < 2.22044605e-16)
                                                        {
                                                          v169 = v43;
                                                          do
                                                          {
                                                            *(v266 + *(v169 + 7)) = 1.0 / v41;
                                                            v170 = *(v169 + 1);
                                                            if (v170)
                                                            {
                                                              do
                                                              {
                                                                v171 = v170;
                                                                v170 = *v170;
                                                              }

                                                              while (v170);
                                                            }

                                                            else
                                                            {
                                                              do
                                                              {
                                                                v171 = *(v169 + 2);
                                                                v207 = *v171 == v169;
                                                                v169 = v171;
                                                              }

                                                              while (!v207);
                                                            }

                                                            v169 = v171;
                                                          }

                                                          while (v171 != &v277);
                                                          goto LABEL_311;
                                                        }

                                                        v172 = 1.0 - v164;
                                                      }

                                                      v173 = 0;
                                                      v174 = v277;
                                                      v175 = 0.025 / v172;
LABEL_302:
                                                      if (!v174)
                                                      {
LABEL_308:
                                                        v178 = v175 * *(v266 + v173);
                                                        goto LABEL_310;
                                                      }

                                                      v176 = v174;
                                                      while (1)
                                                      {
                                                        v177 = *(v176 + 7);
                                                        if (v173 >= v177)
                                                        {
                                                          if (v173 <= v177)
                                                          {
                                                            v178 = v42;
LABEL_310:
                                                            *(v266 + v173++) = v178;
                                                            if (v173 != 10)
                                                            {
                                                              goto LABEL_302;
                                                            }

LABEL_311:
                                                            if (v43 == &v277)
                                                            {
                                                              v186 = 1.0;
                                                            }

                                                            else
                                                            {
                                                              v179 = 0.0;
                                                              v180 = v43;
                                                              do
                                                              {
                                                                v181 = *(v180 + 1);
                                                                v182 = v180;
                                                                if (v181)
                                                                {
                                                                  do
                                                                  {
                                                                    v183 = v181;
                                                                    v181 = *v181;
                                                                  }

                                                                  while (v181);
                                                                }

                                                                else
                                                                {
                                                                  do
                                                                  {
                                                                    v183 = *(v182 + 2);
                                                                    v207 = *v183 == v182;
                                                                    v182 = v183;
                                                                  }

                                                                  while (!v207);
                                                                }

                                                                v179 = v179 + *(v267 + *(v180 + 7));
                                                                v180 = v183;
                                                              }

                                                              while (v183 != &v277);
                                                              if (vabdd_f64(1.0, v179) < 2.22044605e-16)
                                                              {
                                                                do
                                                                {
                                                                  *(v267 + *(v43 + 28)) = 1.0 / v41;
                                                                  v184 = *(v43 + 8);
                                                                  if (v184)
                                                                  {
                                                                    do
                                                                    {
                                                                      v185 = v184;
                                                                      v184 = *v184;
                                                                    }

                                                                    while (v184);
                                                                  }

                                                                  else
                                                                  {
                                                                    do
                                                                    {
                                                                      v185 = *(v43 + 16);
                                                                      v207 = *v185 == v43;
                                                                      v43 = v185;
                                                                    }

                                                                    while (!v207);
                                                                  }

                                                                  v43 = v185;
                                                                }

                                                                while (v185 != &v277);
                                                                goto LABEL_339;
                                                              }

                                                              v186 = 1.0 - v179;
                                                            }

                                                            v187 = 0;
                                                            v188 = v277;
                                                            v189 = 0.025 / v186;
LABEL_330:
                                                            if (!v188)
                                                            {
LABEL_336:
                                                              v192 = v189 * *(v267 + v187);
                                                              goto LABEL_338;
                                                            }

                                                            v190 = v188;
                                                            while (1)
                                                            {
                                                              v191 = *(v190 + 7);
                                                              if (v187 >= v191)
                                                              {
                                                                if (v187 <= v191)
                                                                {
                                                                  v192 = v42;
LABEL_338:
                                                                  *(v267 + v187++) = v192;
                                                                  if (v187 == 10)
                                                                  {
LABEL_339:
                                                                    sub_1D0B99218(v277);
                                                                    goto LABEL_340;
                                                                  }

                                                                  goto LABEL_330;
                                                                }

                                                                ++v190;
                                                              }

                                                              v190 = *v190;
                                                              if (!v190)
                                                              {
                                                                goto LABEL_336;
                                                              }
                                                            }
                                                          }

                                                          ++v176;
                                                        }

                                                        v176 = *v176;
                                                        if (!v176)
                                                        {
                                                          goto LABEL_308;
                                                        }
                                                      }
                                                    }

                                                    goto LABEL_273;
                                                  }

                                                  ++v161;
                                                }

                                                v161 = *v161;
                                                if (!v161)
                                                {
                                                  goto LABEL_279;
                                                }
                                              }
                                            }

                                            ++v146;
                                          }

                                          v146 = *v146;
                                          if (!v146)
                                          {
                                            goto LABEL_250;
                                          }
                                        }
                                      }

                                      goto LABEL_215;
                                    }

                                    ++v131;
                                  }

                                  v131 = *v131;
                                  if (!v131)
                                  {
                                    goto LABEL_221;
                                  }
                                }
                              }

                              ++v116;
                            }

                            v116 = *v116;
                            if (!v116)
                            {
                              goto LABEL_192;
                            }
                          }
                        }

                        goto LABEL_157;
                      }

                      ++v101;
                    }

                    v101 = *v101;
                    if (!v101)
                    {
                      goto LABEL_163;
                    }
                  }
                }

                ++v86;
              }

              v86 = *v86;
              if (!v86)
              {
                goto LABEL_134;
              }
            }
          }

          goto LABEL_99;
        }

        ++v71;
      }

      v71 = *v71;
      if (!v71)
      {
        goto LABEL_105;
      }
    }
  }

LABEL_340:
  if ((atomic_load_explicit(&qword_1EE054FE8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE054FE8))
  {
    qword_1EE054FF0 = 10;
    unk_1EE054FF8 = 0;
    __cxa_guard_release(&qword_1EE054FE8);
  }

  if (sub_1D0B7CF88(&v269, &qword_1EE054FF0))
  {
    LOWORD(v276) = 12;
    LOBYTE(v281) = 4;
    v252 = *(a1 + 288) + *(a1 + 280);
    cnprint::CNPrinter::Print(&v276, &v281, "ActivityStateEstimator,time,%.3lf,resetting because prediction interval too large,%.3lf", v193, v194, v195, v196, v197, SLOBYTE(v252));
    v30 = 0;
    *a1 = 0;
    *(a1 + 280) = 0;
    *(a1 + 288) = 0x7FF8000000000000;
    return v30;
  }

  v200 = *(*(a1 + 8) + 872);
  *v198.i64 = v200 + v200;
  v255 = 0;
  v256 = 0.0;
  CNTimeSpan::SetTimeSpan(&v255, 0, v198, v199);
  v253 = a2;
  if (!v269)
  {
    v201 = v270;
    if ((*&v270 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      goto LABEL_350;
    }
  }

  if (!v255)
  {
    v202 = v256;
    if ((*&v256 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      v201 = v270;
      goto LABEL_351;
    }
  }

  if (v269 == v255)
  {
    v201 = v270;
LABEL_350:
    v202 = v256;
LABEL_351:
    if (v201 > v202)
    {
LABEL_356:
      v254 = vcvtpd_u64_f64((v201 + v269) / v200);
      if (!v254)
      {
LABEL_395:
        *(a1 + 280) = *v253;
        return 1;
      }

      goto LABEL_357;
    }

    goto LABEL_355;
  }

  if (v269 >= v255)
  {
    v201 = v270;
    goto LABEL_356;
  }

LABEL_355:
  v254 = 1;
LABEL_357:
  v30 = 0;
  v203 = 0;
  v204 = *(a1 + 264) == 0;
  while (1)
  {
    if (v204)
    {
      sub_1D0B894B0(a1 + 144, a1 + 24);
    }

    v205 = *(a1 + 152);
    v206 = *(a1 + 156);
    if (v205)
    {
      v207 = v206 == 0;
    }

    else
    {
      v207 = 1;
    }

    v208 = v207;
    if (v205 <= v206)
    {
      v209 = *(a1 + 156);
    }

    else
    {
      v209 = *(a1 + 152);
    }

    if (v208)
    {
      v210 = 0;
    }

    else
    {
      v210 = v209;
    }

    if (v208 == 1)
    {
      v283 = 0x10000000ALL;
      v281 = &unk_1F4CEAE48;
      v284 = v285;
      v282 = xmmword_1D0E7F490;
      v278 = 0x10000000ALL;
      *&v211.f64[1] = 0xA0000000ALL;
      v277 = xmmword_1D0E87BE0;
      v276 = &unk_1F4CEAE48;
      v279 = v280;
      v211.f64[0] = INFINITY;
      sub_1D0B8930C(&v281, &v276, v211);
      sub_1D0B894B0(a1 + 144, &v276);
    }

    else
    {
      v218 = *(a1 + 272);
      v278 = 0x10000000ALL;
      v277 = xmmword_1D0E87BE0;
      v276 = &unk_1F4CEAE48;
      v279 = v280;
      v219 = sub_1D0B94BA0(a1 + 144, 1, &v276);
      v220 = *v279;
      if (fabs(*v279 + -1.0) <= v218)
      {
        if ((v209 & 0x80000000) != 0)
        {
          goto LABEL_400;
        }

        sub_1D0B94CA4(&v276, a1 + 144);
        *&v277 = v209 | 0x100000000;
        DWORD2(v277) = v209;
        HIDWORD(v277) = v209;
        sub_1D0B894B0(a1 + 144, &v276);
      }

      else
      {
        if (cnprint::CNPrinter::GetLogLevel(v219) <= 1)
        {
          LOWORD(v276) = 2;
          LOBYTE(v281) = 1;
          cnprint::CNPrinter::Print(&v276, &v281, "WARNING: HMM prediction passed a non-normalized probability vector.", v221, v222, v223, v224, v225, v248);
        }

        if ((v209 & 0x80000000) != 0)
        {
LABEL_400:
          __assert_rtn("Reshape", "cnmatrix.h", 2936, "nr >= 0");
        }

        sub_1D0B94CA4(&v281, a1 + 144);
        *&v282 = v209 | 0x100000000;
        DWORD2(v282) = v209;
        HIDWORD(v282) = v209;
        v278 = 0x10000000ALL;
        *&v226.f64[1] = 0xA0000000ALL;
        v277 = xmmword_1D0E87BE0;
        v276 = &unk_1F4CEAE48;
        v279 = v280;
        v226.f64[0] = 1.0 / v220;
        sub_1D0B8930C(&v281, &v276, v226);
        sub_1D0B894B0(a1 + 144, &v276);
      }
    }

    *(a1 + 264) = 1;
    v278 = 0xA0000000ALL;
    v277 = xmmword_1D0E84630;
    v276 = &unk_1F4CE2180;
    v279 = v280;
    sub_1D0B94DEC(&v257, &v276, v212, v213, v214, v215, v216, v217);
    if (v227)
    {
      LOWORD(v281) = 2;
      LOBYTE(v271) = 4;
      cnprint::CNPrinter::Print(&v281, &v271, "ERROR: HMM transition probability function failed.", v228, v229, v230, v231, v232, v248);
      goto LABEL_399;
    }

    if (v210)
    {
      v233 = 0;
      v234 = 0;
      v235 = v279;
LABEL_384:
      v236 = 0.0;
      v237 = v235;
      v238 = v210;
      while (1)
      {
        v239 = *v237;
        if (*v237 < 0.0 || v239 > 1.0)
        {
          break;
        }

        v236 = v236 + v239;
        ++v237;
        if (!--v238)
        {
          if (fabs(v236 + -1.0) <= *(a1 + 272))
          {
            ++v233;
            v235 += SHIDWORD(v277);
            v234 = v233 >= v210;
            if (v233 != v210)
            {
              goto LABEL_384;
            }
          }

          break;
        }
      }

      if (!v234)
      {
        break;
      }
    }

    v283 = 0x10000000ALL;
    v282 = xmmword_1D0E87BE0;
    v281 = &unk_1F4CEAE48;
    v284 = v285;
    sub_1D0B89390(&v276, a1 + 144, &v281);
    sub_1D0B894B0(a1 + 24, &v281);
    v273 = 0x10000000ALL;
    v272 = xmmword_1D0E87BE0;
    v271 = &unk_1F4CEAE48;
    v274 = &v275;
    v204 = 1;
    sub_1D0B94BA0(a1 + 24, 1, &v271);
    v241.f64[0] = 1.0 / *v274;
    v283 = 0x10000000ALL;
    v282 = xmmword_1D0E87BE0;
    v281 = &unk_1F4CEAE48;
    v284 = v285;
    sub_1D0B8930C(a1 + 24, &v281, v241);
    sub_1D0B894B0(a1 + 24, &v281);
    *(a1 + 264) = 0;
    v30 = ++v203 >= v254;
    if (v203 == v254)
    {
      goto LABEL_395;
    }
  }

  if (cnprint::CNPrinter::GetLogLevel(v227) <= 1)
  {
    LOWORD(v281) = 2;
    LOBYTE(v271) = 1;
    cnprint::CNPrinter::Print(&v281, &v271, "ERROR: HMM transition probability matrix is invalid.", v242, v243, v244, v245, v246, v248);
  }

LABEL_399:
  LOWORD(v276) = 12;
  LOBYTE(v281) = 4;
  v247 = *(a1 + 288) + *(a1 + 280);
  cnprint::CNPrinter::Print(&v276, &v281, "ActivityStateEstimator,time,%.3lf,failed to predict,code,%d,iteration,%u", v242, v243, v244, v245, v246, SLOBYTE(v247));
  return v30;
}

uint64_t sub_1D0B990AC(uint64_t result, int a2)
{
  v2 = *(result + 8);
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
      return result;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

uint64_t *sub_1D0B99178(uint64_t *result, char a2)
{
  v2 = result;
  switch(a2)
  {
    case 4:
      v3 = *result;
      v4 = 4;
      break;
    case 2:
      v3 = *result;
      v4 = 5;
      break;
    case 1:
      sub_1D0B990AC(*result, 2);
      v3 = *v2;
      v4 = 3;
      break;
    default:
      return result;
  }

  return sub_1D0B990AC(v3, v4);
}

void sub_1D0B99218(void *a1)
{
  if (a1)
  {
    sub_1D0B99218(*a1);
    sub_1D0B99218(a1[1]);

    operator delete(a1);
  }
}

__n128 sub_1D0B99264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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

    v20 = (*(v17 + 8) & 0x7FFFFFFFFFFFFFFFLL);
    if (v20 != (off_1F4CEEA78 & 0x7FFFFFFFFFFFFFFFLL))
    {
      if (strcmp(v20, (off_1F4CEEA78 & 0x7FFFFFFFFFFFFFFFLL)))
      {
        v34.__vftable = 0;
        std::bad_cast::bad_cast(&v34);
        v34.__vftable = &unk_1F4CE4880;
        sub_1D0DC7F8C();
      }
    }

    v21 = *(a2 + 16);
    *a1 = &unk_1F4CEF688;
    v22 = *(v21 + 48);
    v23 = *(v21 + 64);
    v24 = *(v21 + 32);
    *(a1 + 8) = *(v21 + 16);
    *(a1 + 56) = v23;
    *(a1 + 40) = v22;
    *(a1 + 24) = v24;
    v25 = *(v21 + 112);
    v26 = *(v21 + 128);
    v27 = *(v21 + 96);
    *(a1 + 72) = *(v21 + 80);
    *(a1 + 120) = v26;
    *(a1 + 104) = v25;
    *(a1 + 88) = v27;
    v28 = *(v21 + 160);
    result = *(v21 + 176);
    v29 = *(v21 + 192);
    *(a1 + 136) = *(v21 + 144);
    *(a1 + 184) = v29;
    *(a1 + 168) = result;
    *(a1 + 152) = v28;
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
    result.n128_u64[0] = 0;
    *(a1 + 24) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = &unk_1F4CEF688;
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
    *(a1 + 104) = 0;
    *(a1 + 112) = 0x3FF0000000000000;
    *(a1 + 184) = 0;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
  }

  return result;
}

void sub_1D0B99534(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  v9 = sub_1D0B99264(v31, a3, a3, a4, a5, a6, a7, a8);
  if ((*(*v8 + 88))(v8, v9))
  {
    raven::RavenEstimator::HandleActivityStateEvent((v8 + 2968), v31);
    if (v10 && cnprint::CNPrinter::GetLogLevel(v10) <= 1)
    {
      v36 = 12;
      v35 = 1;
      v34[0] = (*(v31[0] + 16))(v31);
      v34[1] = v11;
      (*(v31[0] + 24))(v32, v31);
      if (v33 >= 0)
      {
        v17 = v32;
      }

      else
      {
        v17 = v32[0];
      }

      cnprint::CNLogFormatter::FormatWarning(v8 + 240, v34, "Failed to handle event - %s.", v12, v13, v14, v15, v16, v17);
      if (*(v8 + 263) >= 0)
      {
        LOBYTE(v23) = v8 - 16;
      }

      else
      {
        v23 = *(v8 + 240);
      }

      cnprint::CNPrinter::Print(&v36, &v35, "%s", v18, v19, v20, v21, v22, v23);
      if (v33 < 0)
      {
        operator delete(v32[0]);
      }
    }
  }

  else
  {
    LOWORD(v32[0]) = 12;
    LOBYTE(v34[0]) = 2;
    v24 = cnprint::CNLogFormatter::FormatGeneral((v8 + 240), "Warning,RavenConvergenceEstimatorActiveObject is not configured");
    if (*(v8 + 263) >= 0)
    {
      LOBYTE(v30) = v24;
    }

    else
    {
      v30 = *(v8 + 240);
    }

    cnprint::CNPrinter::Print(v32, v34, "%s", v25, v26, v27, v28, v29, v30);
  }
}

void sub_1D0B996D8(_Unwind_Exception *exception_object)
{
  if (*(v1 - 57) < 0)
  {
    operator delete(*(v1 - 80));
  }

  _Unwind_Resume(exception_object);
}

__n128 raven::RavenEstimator::HandleActivityStateEvent(raven::RavenEstimator *this, const raven::ActivityStateEvent *a2)
{
  if (*(this + 57))
  {
    if (*(this + 1208) == 1)
    {
      v4 = *(a2 + 8);
      v5 = *(a2 + 24);
      v6 = *(a2 + 56);
      *(this + 1256) = *(a2 + 40);
      *(this + 1272) = v6;
      *(this + 1224) = v4;
      *(this + 1240) = v5;
      v7 = *(a2 + 72);
      v8 = *(a2 + 88);
      v9 = *(a2 + 120);
      *(this + 1320) = *(a2 + 104);
      *(this + 1336) = v9;
      *(this + 1288) = v7;
      *(this + 1304) = v8;
      result = *(a2 + 136);
      v11 = *(a2 + 152);
      v12 = *(a2 + 168);
      *(this + 175) = *(a2 + 23);
      *(this + 1368) = v11;
      *(this + 1384) = v12;
      *(this + 1352) = result;
    }

    else
    {
      *(this + 152) = &unk_1F4CEF688;
      v25 = *(a2 + 8);
      v26 = *(a2 + 24);
      v27 = *(a2 + 56);
      *(this + 1256) = *(a2 + 40);
      *(this + 1272) = v27;
      *(this + 1224) = v25;
      *(this + 1240) = v26;
      v28 = *(a2 + 72);
      v29 = *(a2 + 88);
      v30 = *(a2 + 120);
      *(this + 1320) = *(a2 + 104);
      *(this + 1336) = v30;
      *(this + 1288) = v28;
      *(this + 1304) = v29;
      result = *(a2 + 136);
      v31 = *(a2 + 152);
      v32 = *(a2 + 168);
      *(this + 175) = *(a2 + 23);
      *(this + 1368) = v31;
      *(this + 1384) = v32;
      *(this + 1352) = result;
      *(this + 1208) = 1;
    }
  }

  else if (cnprint::CNPrinter::GetLogLevel(this) <= 1)
  {
    v36 = 12;
    v35 = 1;
    v34[0] = (*(*a2 + 16))(a2);
    v34[1] = v13;
    cnprint::CNLogFormatter::FormatWarning(this + 2712, v34, "Estimator not configured, failed to handle ActivityStateEvent.", v14, v15, v16, v17, v18, v33);
    if (*(this + 2735) >= 0)
    {
      LOBYTE(v24) = this - 104;
    }

    else
    {
      v24 = *(this + 339);
    }

    cnprint::CNPrinter::Print(&v36, &v35, "%s", v19, v20, v21, v22, v23, v24);
  }

  return result;
}

uint64_t raven::RavenDeviceAttitudeActiveObject::DownSamplingAccelGyroSamples(uint64_t this)
{
  v1 = this;
  v116[0] = 0;
  v117 = 0u;
  memset(v118, 0, sizeof(v118));
  v113[0] = 0;
  v114 = 0u;
  memset(v115, 0, sizeof(v115));
  v110[0] = 0;
  v111 = 0u;
  memset(v112, 0, sizeof(v112));
  v2 = *(this + 7512);
  if (v2)
  {
    v97 = vdupq_n_s64(0x7FF8000000000000uLL);
    while (1)
    {
      v3 = *(*(v1 + 7480) + 8 * ((v2 + *(v1 + 7504) - 1) / 0x1AuLL)) + 152 * ((v2 + *(v1 + 7504) - 1) % 0x1AuLL);
      v4 = (*(*v3 + 16))(v3);
      v6 = v5;
      v7 = v5;
      v8 = *(*(v1 + 7480) + 8 * (*(v1 + 7504) / 0x1AuLL)) + 152 * (*(v1 + 7504) % 0x1AuLL);
      v119 = (*(*v8 + 16))(v8);
      *&v120 = v9;
      v10.i64[0] = *(*(v1 + 232) + 1144);
      v99 = 0;
      *&v100 = 0;
      *v12.i64 = CNTimeSpan::SetTimeSpan(&v99, 0, v10, v11);
      this = CNTimeSpan::operator+(&v119, &v99, v12, v13);
      if (v4)
      {
        v15 = 1;
      }

      else
      {
        v15 = (*&v6 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL;
      }

      if (v15 && (this || (*&v14 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL) && v4 != this)
      {
        if (v4 <= this)
        {
          break;
        }
      }

      else if (v7 < v14)
      {
        break;
      }

      v116[0] = 0;
      v117 = 0u;
      memset(v118, 0, sizeof(v118));
      v113[0] = 0;
      v114 = 0u;
      memset(v115, 0, sizeof(v115));
      v110[0] = 0;
      v111 = 0u;
      memset(v112, 0, sizeof(v112));
      v16 = *(*(v1 + 7480) + 8 * (*(v1 + 7504) / 0x1AuLL)) + 152 * (*(v1 + 7504) % 0x1AuLL);
      v119 = (*(*v16 + 16))(v16);
      *&v120 = v17;
      v18.i64[0] = *(*(v1 + 232) + 1144);
      v99 = 0;
      *&v100 = 0;
      *v20.i64 = CNTimeSpan::SetTimeSpan(&v99, 0, v18, v19);
      v23 = CNTimeSpan::operator+(&v119, &v99, v20, v21);
      v99 = &unk_1F4CEEEB0;
      v100 = 0uLL;
      v24 = v22;
      LOBYTE(v101) = 0;
      *(&v101 + 1) = 0;
      *&v102 = 0;
      BYTE8(v102) = 0;
      v103 = 0uLL;
      LOBYTE(v104) = 0;
      *(&v104 + 1) = 0;
      *v105 = 0;
      *&v105[8] = v97;
      v106 = v97;
      v107 = 0;
      v108 = 0x7FF8000000000000;
      if (v23)
      {
        v25 = 1;
      }

      else
      {
        v25 = (*&v22 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL;
      }

      v26 = !v25;
      v109 = 0;
      while (1)
      {
        v27 = *(*(v1 + 7480) + 8 * (*(v1 + 7504) / 0x1AuLL)) + 152 * (*(v1 + 7504) % 0x1AuLL);
        v28 = (*(*v27 + 16))(v27);
        v30 = v28 || (*&v29 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL;
        if (v30 && !v26 && v28 != v23)
        {
          break;
        }

        if (v29 >= v24)
        {
          goto LABEL_29;
        }

LABEL_27:
        v31 = *(v1 + 7480);
        v32 = *(v1 + 7504);
        v33 = v32 / 0x1A;
        v34 = 152 * (v32 % 0x1A);
        v35 = *(v31 + 8 * v33) + v34;
        v36 = *(v35 + 24);
        v100 = *(v35 + 8);
        v101 = v36;
        v37 = *(v35 + 56);
        v38 = *(v35 + 72);
        v39 = *(v35 + 88);
        v102 = *(v35 + 40);
        *v105 = v39;
        v104 = v38;
        v103 = v37;
        sub_1D0B8954C(v116, (*(v31 + 8 * v33) + v34 + 104), 1.0);
        sub_1D0B8954C(v113, (*(*(v1 + 7480) + 8 * (*(v1 + 7504) / 0x1AuLL)) + 152 * (*(v1 + 7504) % 0x1AuLL) + 112), 1.0);
        sub_1D0B8954C(v110, (*(*(v1 + 7480) + 8 * (*(v1 + 7504) / 0x1AuLL)) + 152 * (*(v1 + 7504) % 0x1AuLL) + 120), 1.0);
        sub_1D0B7E234((v1 + 7472));
      }

      if (v28 < v23)
      {
        goto LABEL_27;
      }

LABEL_29:
      *&v105[16] = *&v118[1];
      v106.i64[0] = *&v115[1];
      v106.i64[1] = *&v112[1];
      v109 = 769;
      sub_1D0B8910C((v1 + 240), &v99);
      if (sub_1D0B9A2A4(v1, (v1 + 240), 3.0))
      {
        while (1)
        {
          v40 = *(v1 + 272);
          v41 = *(*(v1 + 248) + 8 * (v40 / 0x1A));
          v119 = &unk_1F4CEEEB0;
          v42 = v41 + 152 * (v40 % 0x1A);
          v43 = *(v42 + 88);
          v44 = *(v42 + 104);
          v45 = *(v42 + 120);
          *(v127 + 10) = *(v42 + 130);
          v127[0] = v45;
          v126 = v44;
          v125 = v43;
          v46 = *(v42 + 24);
          v47 = *(v42 + 40);
          v48 = *(v42 + 56);
          v124 = *(v42 + 72);
          v123 = v48;
          v122 = v47;
          v121 = v46;
          v120 = *(v42 + 8);
          sub_1D0B7E234((v1 + 240));
          if (!sub_1D0B9A2A4(v1, (v1 + 240), 3.0))
          {
            break;
          }

          if (!sub_1D0B9A2A4(v1, (v1 + 240), 3.0))
          {
            goto LABEL_34;
          }
        }

        sub_1D0B7E140((v1 + 240), &v119);
      }

LABEL_34:
      v2 = *(v1 + 7512);
    }
  }

  v49 = *(v1 + 7560);
  if (v49)
  {
    v98 = vdupq_n_s64(0x7FF8000000000000uLL);
    while (1)
    {
      v50 = *(*(v1 + 7528) + 8 * ((v49 + *(v1 + 7552) - 1) / 0x1AuLL)) + 152 * ((v49 + *(v1 + 7552) - 1) % 0x1AuLL);
      v51 = (*(*v50 + 16))(v50);
      v53 = v52;
      v54 = v52;
      v55 = *(*(v1 + 7528) + 8 * (*(v1 + 7552) / 0x1AuLL)) + 152 * (*(v1 + 7552) % 0x1AuLL);
      v119 = (*(*v55 + 16))(v55);
      *&v120 = v56;
      v57.i64[0] = *(*(v1 + 232) + 1144);
      v99 = 0;
      *&v100 = 0;
      *v59.i64 = CNTimeSpan::SetTimeSpan(&v99, 0, v57, v58);
      this = CNTimeSpan::operator+(&v119, &v99, v59, v60);
      if (v51)
      {
        v62 = 1;
      }

      else
      {
        v62 = (*&v53 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL;
      }

      if (v62 && (this || (*&v61 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL) && v51 != this)
      {
        if (v51 <= this)
        {
          return this;
        }
      }

      else if (v54 < v61)
      {
        return this;
      }

      v116[0] = 0;
      v117 = 0u;
      memset(v118, 0, sizeof(v118));
      v113[0] = 0;
      v114 = 0u;
      memset(v115, 0, sizeof(v115));
      v110[0] = 0;
      v111 = 0u;
      memset(v112, 0, sizeof(v112));
      v63 = *(*(v1 + 7528) + 8 * (*(v1 + 7552) / 0x1AuLL)) + 152 * (*(v1 + 7552) % 0x1AuLL);
      v119 = (*(*v63 + 16))(v63);
      *&v120 = v64;
      v65.i64[0] = *(*(v1 + 232) + 1144);
      v99 = 0;
      *&v100 = 0;
      *v67.i64 = CNTimeSpan::SetTimeSpan(&v99, 0, v65, v66);
      v70 = CNTimeSpan::operator+(&v119, &v99, v67, v68);
      v99 = &unk_1F4CEF1E0;
      v100 = 0uLL;
      v71 = v69;
      LOBYTE(v101) = 0;
      *(&v101 + 1) = 0;
      *&v102 = 0;
      BYTE8(v102) = 0;
      v103 = 0uLL;
      LOBYTE(v104) = 0;
      *(&v104 + 1) = 0;
      *v105 = 0;
      *&v105[8] = v98;
      v106 = v98;
      v107 = 0;
      v108 = 0x7FF8000000000000;
      if (v70)
      {
        v72 = 1;
      }

      else
      {
        v72 = (*&v69 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL;
      }

      v73 = !v72;
      v109 = 0;
      while (1)
      {
        v74 = *(*(v1 + 7528) + 8 * (*(v1 + 7552) / 0x1AuLL)) + 152 * (*(v1 + 7552) % 0x1AuLL);
        v75 = (*(*v74 + 16))(v74);
        v77 = v75 || (*&v76 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL;
        if (v77 && !v73 && v75 != v70)
        {
          break;
        }

        if (v76 >= v71)
        {
          goto LABEL_64;
        }

LABEL_62:
        v78 = *(v1 + 7528);
        v79 = *(v1 + 7552);
        v80 = v79 / 0x1A;
        v81 = 152 * (v79 % 0x1A);
        v82 = *(v78 + 8 * v80) + v81;
        v83 = *(v82 + 24);
        v100 = *(v82 + 8);
        v101 = v83;
        v84 = *(v82 + 56);
        v85 = *(v82 + 72);
        v86 = *(v82 + 88);
        v102 = *(v82 + 40);
        *v105 = v86;
        v104 = v85;
        v103 = v84;
        sub_1D0B8954C(v116, (*(v78 + 8 * v80) + v81 + 104), 1.0);
        sub_1D0B8954C(v113, (*(*(v1 + 7528) + 8 * (*(v1 + 7552) / 0x1AuLL)) + 152 * (*(v1 + 7552) % 0x1AuLL) + 112), 1.0);
        sub_1D0B8954C(v110, (*(*(v1 + 7528) + 8 * (*(v1 + 7552) / 0x1AuLL)) + 152 * (*(v1 + 7552) % 0x1AuLL) + 120), 1.0);
        sub_1D0B9A458(v1 + 7520);
      }

      if (v75 < v70)
      {
        goto LABEL_62;
      }

LABEL_64:
      *&v105[16] = *&v118[1];
      v106.i64[0] = *&v115[1];
      v106.i64[1] = *&v112[1];
      if (*(v1 + 8144) == 1)
      {
        v87 = *(v1 + 7792);
        *&v105[16] = *&v118[1] - *v87;
        *v106.i64 = *&v115[1] - v87[1];
        *&v106.i64[1] = *&v112[1] - v87[2];
      }

      v109 = 769;
      sub_1D0B937E8((v1 + 6648), &v99);
      if (sub_1D0B9A2A4(v1, (v1 + 6648), 3.0))
      {
        while (1)
        {
          v88 = *(v1 + 6680);
          v89 = *(*(v1 + 6656) + 8 * (v88 / 0x1A));
          v119 = &unk_1F4CEF1E0;
          v90 = v89 + 152 * (v88 % 0x1A);
          v91 = *(v90 + 88);
          v92 = *(v90 + 104);
          v93 = *(v90 + 120);
          *(v127 + 10) = *(v90 + 130);
          v127[0] = v93;
          v126 = v92;
          v125 = v91;
          v94 = *(v90 + 24);
          v95 = *(v90 + 40);
          v96 = *(v90 + 56);
          v124 = *(v90 + 72);
          v123 = v96;
          v122 = v95;
          v121 = v94;
          v120 = *(v90 + 8);
          sub_1D0B9A458(v1 + 6648);
          if (!sub_1D0B9A2A4(v1, (v1 + 6648), 3.0))
          {
            break;
          }

          if (!sub_1D0B9A2A4(v1, (v1 + 6648), 3.0))
          {
            goto LABEL_71;
          }
        }

        sub_1D0B93B8C((v1 + 6648), &v119);
      }

LABEL_71:
      v49 = *(v1 + 7560);
    }
  }

  return this;
}

BOOL sub_1D0B9A2A4(uint64_t a1, void *a2, double a3)
{
  v3 = a2[5];
  if (!v3)
  {
    return 0;
  }

  v7 = *(a2[1] + 8 * ((v3 + a2[4] - 1) / 0x1AuLL)) + 152 * ((v3 + a2[4] - 1) % 0x1AuLL);
  v8 = (*(*v7 + 16))(v7);
  v10 = v9;
  v11 = v9;
  v12 = *(a2[1] + 8 * (a2[4] / 0x1AuLL)) + 152 * (a2[4] % 0x1AuLL);
  v30[0] = (*(*v12 + 16))(v12);
  v30[1] = v13;
  v14.i64[0] = *(*(a1 + 232) + 1048);
  v28[0] = 0;
  v28[1] = 0;
  *v16.i64 = CNTimeSpan::SetTimeSpan(v28, 0, v14, v15);
  v29[0] = CNTimeSpan::operator+(v30, v28, v16, v17);
  v29[1] = v18;
  v27[0] = 0;
  v27[1] = 0;
  *v19.i64 = a3;
  *v21.i64 = CNTimeSpan::SetTimeSpan(v27, 0, v19, v20);
  v23 = CNTimeSpan::operator+(v29, v27, v21, v22);
  if (v8)
  {
    v25 = 1;
  }

  else
  {
    v25 = (*&v10 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL;
  }

  if (!v25 || !v23 && (*&v24 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    return v11 > v24;
  }

  if (v8 == v23)
  {
    return v11 > v24;
  }

  return v8 > v23;
}

void sub_1D0B9A458(uint64_t a1)
{
  v2 = (*(*(a1 + 8) + 8 * (*(a1 + 32) / 0x1AuLL)) + 152 * (*(a1 + 32) % 0x1AuLL));
  (**v2)(v2);
  v3 = vaddq_s64(*(a1 + 32), xmmword_1D0E76280);
  *(a1 + 32) = v3;
  if (v3.i64[0] >= 0x34uLL)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 26;
  }
}

uint64_t sub_1D0B9A514(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0B99264(v12, a3, a3, a4, a5, a6, a7, a8);
  *(v8 + 256) = *(v8 + 112);
  v13[1] = 0;
  v13[2] = 0;
  v13[0] = &unk_1F4CEF688;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0x7FF8000000000000;
  LOBYTE(v24) = 0;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  *(&v24 + 1) = 0x3FF0000000000000;
  v29 = 0;
  result = raven::ActivityStateChecker::HandleEvent(*(v8 + 1832), v12, v13);
  if (!result)
  {
    v10 = v27;
    *(v8 + 344) = v26;
    *(v8 + 360) = v10;
    *(v8 + 376) = v28;
    *(v8 + 392) = v29;
    v11 = v25;
    *(v8 + 312) = v24;
    *(v8 + 328) = v11;
    sub_1D0B967D8();
  }

  return result;
}

uint64_t raven::ActivityStateChecker::HandleEvent(raven::ActivityStateChecker *this, const raven::ActivityStateEvent *a2, raven::ActivityStateEvent *a3)
{
  if ((*(this + 8) & 1) == 0)
  {
    v167 = 12;
    v166 = 4;
    v29 = (*(*a2 + 16))(a2);
    v145 = v30 + v29;
    cnprint::CNPrinter::Print(&v167, &v166, "t,%.3lf,ActivityStateChecker, not configured", v31, v32, v33, v34, v35, SLOBYTE(v145));
    return 0xFFFFFFFFLL;
  }

  v3 = *(a2 + 8);
  v4 = *(a2 + 24);
  v5 = *(a2 + 40);
  *(a3 + 56) = *(a2 + 56);
  *(a3 + 40) = v5;
  *(a3 + 24) = v4;
  *(a3 + 8) = v3;
  v6 = *(a2 + 72);
  v7 = *(a2 + 88);
  v8 = *(a2 + 104);
  *(a3 + 120) = *(a2 + 120);
  *(a3 + 104) = v8;
  *(a3 + 88) = v7;
  *(a3 + 72) = v6;
  v9 = *(a2 + 136);
  v10 = *(a2 + 152);
  v11 = *(a2 + 168);
  *(a3 + 23) = *(a2 + 23);
  *(a3 + 168) = v11;
  *(a3 + 152) = v10;
  *(a3 + 136) = v9;
  if (*(a2 + 104) >= 0xAu)
  {
    v167 = 12;
    v166 = 4;
    v36 = (*(*a2 + 16))(a2);
    v146 = v37 + v36;
    cnprint::CNPrinter::Print(&v167, &v166, "t,%.3lf, Warning: ActivityStateChecker,Invalid type detected in activity state integrity check.", v38, v39, v40, v41, v42, SLOBYTE(v146));
    return 0xFFFFFFFFLL;
  }

  v12 = *(a2 + 14);
  if (v12 < 0.0 || v12 > 1.0 || (*(a2 + 14) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v167 = 12;
    v166 = 4;
    v43 = (*(*a2 + 16))(a2);
    v147 = v44 + v43;
    cnprint::CNPrinter::Print(&v167, &v166, "t,%.3lf, ActivityStateChecker,Invalid probability_unknown_", v45, v46, v47, v48, v49, SLOBYTE(v147));
    return 0xFFFFFFFFLL;
  }

  v13 = *(a2 + 15);
  if (v13 < 0.0 || v13 > 1.0 || (*(a2 + 15) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v167 = 12;
    v166 = 4;
    v50 = (*(*a2 + 16))(a2);
    v148 = v51 + v50;
    cnprint::CNPrinter::Print(&v167, &v166, "t,%.3lf, ActivityStateChecker,Invalid probability_moving_", v52, v53, v54, v55, v56, SLOBYTE(v148));
    return 0xFFFFFFFFLL;
  }

  v14 = *(a2 + 16);
  if (v14 < 0.0 || v14 > 1.0 || (*(a2 + 16) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v167 = 12;
    v166 = 4;
    v57 = (*(*a2 + 16))(a2);
    v149 = v58 + v57;
    cnprint::CNPrinter::Print(&v167, &v166, "t,%.3lf, ActivityStateChecker,Invalid probability_walking_", v59, v60, v61, v62, v63, SLOBYTE(v149));
    return 0xFFFFFFFFLL;
  }

  v15 = *(a2 + 17);
  if (v15 < 0.0 || v15 > 1.0 || (*(a2 + 17) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v167 = 12;
    v166 = 4;
    v64 = (*(*a2 + 16))(a2);
    v150 = v65 + v64;
    cnprint::CNPrinter::Print(&v167, &v166, "t,%.3lf, ActivityStateChecker,Invalid probability_running_", v66, v67, v68, v69, v70, SLOBYTE(v150));
    return 0xFFFFFFFFLL;
  }

  v16 = *(a2 + 18);
  if (v16 < 0.0 || v16 > 1.0 || (*(a2 + 18) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v167 = 12;
    v166 = 4;
    v71 = (*(*a2 + 16))(a2);
    v151 = v72 + v71;
    cnprint::CNPrinter::Print(&v167, &v166, "t,%.3lf, ActivityStateChecker,Invalid probability_cycling_", v73, v74, v75, v76, v77, SLOBYTE(v151));
    return 0xFFFFFFFFLL;
  }

  v17 = *(a2 + 19);
  if (v17 < 0.0 || v17 > 1.0 || (*(a2 + 19) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v167 = 12;
    v166 = 4;
    v78 = (*(*a2 + 16))(a2);
    v152 = v79 + v78;
    cnprint::CNPrinter::Print(&v167, &v166, "t,%.3lf, ActivityStateChecker,Invalid probability_driving_", v80, v81, v82, v83, v84, SLOBYTE(v152));
    return 0xFFFFFFFFLL;
  }

  v18 = *(a2 + 20);
  if (v18 < 0.0 || v18 > 1.0 || (*(a2 + 20) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v167 = 12;
    v166 = 4;
    v85 = (*(*a2 + 16))(a2);
    v153 = v86 + v85;
    cnprint::CNPrinter::Print(&v167, &v166, "t,%.3lf, ActivityStateChecker,Invalid probability_swimming_", v87, v88, v89, v90, v91, SLOBYTE(v153));
    return 0xFFFFFFFFLL;
  }

  v19 = *(a2 + 21);
  if (v19 < 0.0 || v19 > 1.0 || (*(a2 + 21) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v167 = 12;
    v166 = 4;
    v92 = (*(*a2 + 16))(a2);
    v154 = v93 + v92;
    cnprint::CNPrinter::Print(&v167, &v166, "t,%.3lf, ActivityStateChecker,Invalid probability_wheelchair_", v94, v95, v96, v97, v98, SLOBYTE(v154));
    return 0xFFFFFFFFLL;
  }

  v20 = *(a2 + 22);
  if (v20 < 0.0 || v20 > 1.0 || (*(a2 + 22) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v167 = 12;
    v166 = 4;
    v99 = (*(*a2 + 16))(a2);
    v155 = v100 + v99;
    cnprint::CNPrinter::Print(&v167, &v166, "t,%.3lf, ActivityStateChecker,Invalid probability_highspeed_", v101, v102, v103, v104, v105, SLOBYTE(v155));
    return 0xFFFFFFFFLL;
  }

  v21 = *(a2 + 23);
  if (v21 < 0.0 || v21 > 1.0 || (*(a2 + 23) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v167 = 12;
    v166 = 4;
    v106 = (*(*a2 + 16))(a2);
    v156 = v107 + v106;
    cnprint::CNPrinter::Print(&v167, &v166, "t,%.3lf, ActivityStateChecker,Invalid probability_airborne_", v108, v109, v110, v111, v112, SLOBYTE(v156));
    return 0xFFFFFFFFLL;
  }

  if (fabs(v12 + v13 + v14 + v15 + v16 + v17 + v18 + v19 + v20 + v21 + -1.0) > 0.000000015)
  {
    v167 = 12;
    v166 = 4;
    v22 = (*(*a2 + 16))(a2);
    v144 = v23 + v22;
    cnprint::CNPrinter::Print(&v167, &v166, "t,%.3lf, ActivityStateChecker,activity state probabilities do not add to 1.0,sum error,%.3e", v24, v25, v26, v27, v28, SLOBYTE(v144));
    return 0xFFFFFFFFLL;
  }

  if (*(this + 9) != 1)
  {
    return 0;
  }

  result = sub_1D0B9AF58((*(this + 2) + 16), &unk_1D0EA30C8);
  if (result)
  {
    v164 = result;
    if (*(result + 1368))
    {
      v115 = *(a2 + 104);
      if (v115 > 9)
      {
        v167 = 12;
        v166 = 4;
        v137 = (*(*a2 + 16))(a2);
        v163 = *(a2 + 104);
        v160 = v138 + v137;
        cnprint::CNPrinter::Print(&v167, &v166, "t,%.3lf,ActivityStateChecker,Invalid activity type detected,%u", v139, v140, v141, v142, v143, SLOBYTE(v160));
        return 0xFFFFFFFFLL;
      }

      if (((1 << v115) & 0x3F3) == 0)
      {
        if (v115 == 2)
        {
          if (*(result + 1376) > sqrt(*(result + 1408)) + 5.11)
          {
            if (cnprint::CNPrinter::GetLogLevel(result) <= 1)
            {
              v167 = 12;
              v166 = 1;
              v116 = (*(*a2 + 16))(a2);
              v157 = v117 + v116;
              v161 = *(v164 + 1376);
              cnprint::CNPrinter::Print(&v167, &v166, "t,%.3lf, Warning: ActivityStateChecker,Speed too large to raise walking activity state,user_speed_,%.2lf", v118, v119, v120, v121, v122, SLOBYTE(v157));
            }

LABEL_64:
            result = 0;
            *(a3 + 104) = 1;
            return result;
          }
        }

        else if (*(result + 1376) > sqrt(*(result + 1408)) + 13.47)
        {
          if (cnprint::CNPrinter::GetLogLevel(result) <= 1)
          {
            v167 = 12;
            v166 = 1;
            v130 = (*(*a2 + 16))(a2);
            v159 = v131 + v130;
            v162 = *(v164 + 1376);
            cnprint::CNPrinter::Print(&v167, &v166, "t,%.3lf, Warning: ActivityStateChecker,Speed too large to raise running activity state,user_speed_,%.2lf", v132, v133, v134, v135, v136, SLOBYTE(v159));
          }

          goto LABEL_64;
        }
      }
    }

    else if (cnprint::CNPrinter::GetLogLevel(result) <= 1)
    {
      v167 = 12;
      v166 = 1;
      v123 = (*(*a2 + 16))(a2);
      v158 = v124 + v123;
      cnprint::CNPrinter::Print(&v167, &v166, "t,%.3lf, Warning: ActivityStateChecker,User speed invalid. Exiting with check passed return value.", v125, v126, v127, v128, v129, SLOBYTE(v158));
    }

    return 0;
  }

  return result;
}

uint64_t **sub_1D0B9AF58(void *a1, unsigned __int8 *a2)
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
      v5 = v3 % a1[1];
    }
  }

  else
  {
    v5 = (v2.i32[0] - 1) & v3;
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
      if (*(result + 16) == v3)
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

double sub_1D0B9B010(uint64_t a1, raven::RavenDeviceAttitudeActiveObject **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0B99264(v10, a3, a3, a4, a5, a6, a7, a8);
  *&result = raven::RavenDeviceAttitudeActiveObject::HandleEvent(v8, v10).n128_u64[0];
  return result;
}

__n128 raven::RavenDeviceAttitudeActiveObject::HandleEvent(raven::RavenDeviceAttitudeActiveObject *this, const raven::ActivityStateEvent *a2)
{
  if (*(this + 224))
  {
    if (*(this + 6920) == 1)
    {
      v2 = *(a2 + 8);
      v3 = *(a2 + 24);
      v4 = *(a2 + 40);
      *(this + 424) = *(a2 + 56);
      *(this + 423) = v4;
      *(this + 422) = v3;
      *(this + 421) = v2;
      v5 = *(a2 + 72);
      v6 = *(a2 + 88);
      v7 = *(a2 + 104);
      *(this + 428) = *(a2 + 120);
      *(this + 427) = v7;
      *(this + 426) = v6;
      *(this + 425) = v5;
      result = *(a2 + 136);
      v9 = *(a2 + 152);
      v10 = *(a2 + 168);
      *(this + 864) = *(a2 + 23);
      *(this + 431) = v10;
      *(this + 430) = v9;
      *(this + 429) = result;
    }

    else
    {
      *(this + 841) = &unk_1F4CEF688;
      v17 = *(a2 + 8);
      v18 = *(a2 + 24);
      v19 = *(a2 + 40);
      *(this + 424) = *(a2 + 56);
      *(this + 423) = v19;
      *(this + 422) = v18;
      *(this + 421) = v17;
      v20 = *(a2 + 72);
      v21 = *(a2 + 88);
      v22 = *(a2 + 104);
      *(this + 428) = *(a2 + 120);
      *(this + 427) = v22;
      *(this + 426) = v21;
      *(this + 425) = v20;
      result = *(a2 + 136);
      v23 = *(a2 + 152);
      v24 = *(a2 + 168);
      *(this + 864) = *(a2 + 23);
      *(this + 431) = v24;
      *(this + 430) = v23;
      *(this + 429) = result;
      *(this + 6920) = 1;
    }
  }

  else
  {
    v28 = 12;
    v27 = 3;
    (*(*this + 16))(__p);
    if (v26 >= 0)
    {
      v16 = __p;
    }

    else
    {
      LOBYTE(v16) = __p[0];
    }

    cnprint::CNPrinter::Print(&v28, &v27, "Warning: %s is not configured yet.", v11, v12, v13, v14, v15, v16);
    if (v26 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return result;
}

void sub_1D0B9B1F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D0B9B214(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0B99264(v25, a3, a3, a4, a5, a6, a7, a8);
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

void sub_1D0B9B590(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  if (a40 < 0)
  {
    operator delete(__p);
  }

  *(v48 - 184) = v47;
  a42 = (v48 - 88);
  sub_1D0BBBD80(&a42);
  _Unwind_Resume(a1);
}

void raven::GnssMeasurementPreprocessor::UpdateCurrentFrameworkTime(cnprint::CNPrinter *a1, _OWORD *a2)
{
  if (*a1)
  {
    *(a1 + 137) = *a2;
  }

  else
  {
    v12 = v2;
    v13 = v3;
    if (cnprint::CNPrinter::GetLogLevel(a1) <= 1)
    {
      v11 = 12;
      v10 = 1;
      cnprint::CNPrinter::Print(&v11, &v10, "#gmp,UpdateCurrentFrameworkTime(CNTime), not configured", v4, v5, v6, v7, v8, v9);
    }
  }
}

uint64_t raven::GnssMeasurementPreprocessor::HandleEvent(raven::GnssMeasurementPreprocessor *this, const raven::ActivityStateEvent *a2)
{
  v2 = *this;
  if (v2)
  {
    v3 = *(a2 + 120);
    *(this + 888) = *(a2 + 104);
    *(this + 904) = v3;
    v4 = *(a2 + 136);
    v5 = *(a2 + 152);
    v6 = *(a2 + 168);
    *(this + 121) = *(a2 + 23);
    *(this + 936) = v5;
    *(this + 952) = v6;
    *(this + 920) = v4;
  }

  else if (cnprint::CNPrinter::GetLogLevel(this) <= 1)
  {
    v15 = 12;
    v14 = 1;
    cnprint::CNPrinter::Print(&v15, &v14, "#gmp,HandleEvent(ActivityState),not configured", v7, v8, v9, v10, v11, v13);
  }

  return v2;
}

BOOL raven::GnssMeasurementPreprocessor::GetGpsUTCParametersEvent(raven::GnssMeasurementPreprocessor *this, raven::GNSSUTCParametersEvent *a2)
{
  if (*this)
  {
    result = cnnavigation::GNSSUTCParameters::IsValid((this + 248));
    if (result)
    {
      v5 = *(this + 152);
      v6 = *(this + 168);
      *(a2 + 40) = *(this + 184);
      *(a2 + 24) = v6;
      *(a2 + 8) = v5;
      v7 = *(this + 200);
      v8 = *(this + 216);
      v9 = *(this + 232);
      *(a2 + 104) = *(this + 248);
      *(a2 + 88) = v9;
      *(a2 + 72) = v8;
      *(a2 + 56) = v7;
      v10 = *(this + 264);
      v11 = *(this + 280);
      v12 = *(this + 296);
      *(a2 + 42) = *(this + 78);
      *(a2 + 152) = v12;
      *(a2 + 136) = v11;
      *(a2 + 120) = v10;
      return 1;
    }
  }

  else
  {
    if (cnprint::CNPrinter::GetLogLevel(this) <= 1)
    {
      v20 = 12;
      v19 = 1;
      cnprint::CNPrinter::Print(&v20, &v19, "#gmp,GetGpsUTCParametersEvent,not configured", v13, v14, v15, v16, v17, v18);
    }

    return 0;
  }

  return result;
}

void sub_1D0B9BA38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_1D0B7CAB8(a11);
  }

  sub_1D0B7CAB8(v11);
  _Unwind_Resume(a1);
}

uint64_t raven::GnssMeasurementPreprocessor::GetPreprocessedGnssMeasurements(uint64_t **this, uint64_t **a2)
{
  if ((*this & 1) == 0)
  {
    if (cnprint::CNPrinter::GetLogLevel(this) <= 1)
    {
      v15 = 12;
      v14 = 1;
      cnprint::CNPrinter::Print(&v15, &v14, "#gmp,GetPreprocessedGnssMeasurements,not configured", v8, v9, v10, v11, v12, v13);
    }

    return 0;
  }

  if (*(this + 16) != 1)
  {
    return 0;
  }

  v3 = *(this + 2);
  *(a2 + 3) = *(this + 3);
  *(a2 + 1) = v3;
  v4 = *(this + 4);
  v5 = *(this + 5);
  v6 = *(this + 6);
  a2[11] = this[14];
  *(a2 + 9) = v6;
  *(a2 + 7) = v5;
  *(a2 + 5) = v4;
  if (this + 3 != a2)
  {
    sub_1D0BBD668(a2 + 12, this[15], this[16], (this[16] - this[15]) >> 4);
  }

  *(this + 16) = 0;
  return 1;
}

void sub_1D0B9BB9C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  v9 = sub_1D0B94708(&v96, a3, a3, a4, a5, a6, a7, a8);
  if (((*(*v8 + 88))(v8, v9) & 1) == 0)
  {
    LOWORD(v98) = 12;
    LOBYTE(v101) = 2;
    *__src = (*(v96 + 16))(&v96);
    *&__src[8] = v36;
    (*(v96 + 24))(&__p, &v96);
    if (v103[15] >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    cnprint::CNLogFormatter::FormatWarning(v8 + 240, __src, "RavenConvergenceEstimatorActiveObject not configured, cannot handle event, %s", v37, v38, v39, v40, v41, p_p);
    if (*(v8 + 263) >= 0)
    {
      LOBYTE(v48) = v8 - 16;
    }

    else
    {
      v48 = *(v8 + 240);
    }

    cnprint::CNPrinter::Print(&v98, &v101, "%s", v43, v44, v45, v46, v47, v48);
    if ((v103[15] & 0x80000000) != 0)
    {
      operator delete(__p);
    }

    return;
  }

  if ((*(v8 + 3026) & 1) == 0 && *(v8 + 288) == 1)
  {
    v10 = (*(v96 + 16))(&v96);
    v12 = v11;
    v13 = v11;
    v14 = *(v8 + 232);
    v15.i64[0] = *(v14 + 832);
    *v16.i64 = *(v14 + 896) + *(v14 + 872) + *v15.i64;
    *v103 = 0;
    __p = 0;
    *v17.i64 = CNTimeSpan::SetTimeSpan(&__p, 0, v16, v15);
    v19 = CNTimeSpan::operator+((v8 + 296), &__p, v17, v18);
    if (v10)
    {
      v21 = 1;
    }

    else
    {
      v21 = (*&v12 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL;
    }

    if (v21 && (v19 || (*&v20 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL) && v10 != v19)
    {
      if (v10 < v19)
      {
        goto LABEL_13;
      }
    }

    else if (v13 <= v20)
    {
LABEL_13:
      __p = &unk_1F4CEF7A8;
      memcpy(v103, (v8 + 320), sizeof(v103));
      v103[201] = 1;
      raven::RavenConvergenceEstimator::HandleEvent((v8 + 2968), &__p);
      if (v22 && cnprint::CNPrinter::GetLogLevel(v22) <= 1)
      {
        LOWORD(v98) = 12;
        LOBYTE(v101) = 1;
        *__src = (*(v96 + 16))(&v96);
        *&__src[8] = v23;
        v29 = cnprint::CNLogFormatter::FormatWarning(v8 + 240, __src, "Could not initialize from external solution", v24, v25, v26, v27, v28, v95);
        if (*(v8 + 263) >= 0)
        {
          LOBYTE(v35) = v29;
        }

        else
        {
          v35 = *(v8 + 240);
        }

        cnprint::CNPrinter::Print(&v98, &v101, "%s", v30, v31, v32, v33, v34, v35);
      }
    }

    *(v8 + 288) = 0;
    *(v8 + 296) = 0;
    *(v8 + 304) = 0xFFF0000000000000;
    sub_1D0BAD0C8(&__p);
    memcpy((v8 + 320), v103, 0xA51uLL);
  }

  v101 = raven::RavenConvergenceEstimator::HandleTimeMarkEvent((v8 + 2968), &v96);
  v49 = sub_1D0BAAFCC(&v101);
  if (!v49)
  {
    goto LABEL_40;
  }

  if (cnprint::CNPrinter::GetLogLevel(v49) <= 1)
  {
    LOWORD(v98) = 12;
    LOBYTE(v99) = 1;
    *__src = (*(v96 + 16))(&v96);
    *&__src[8] = v50;
    (*(v96 + 24))(&__p, &v96);
    v56 = v103[15] >= 0 ? &__p : __p;
    v57 = cnprint::CNLogFormatter::FormatWarning(v8 + 240, __src, "Error handling event of type %s,code,%d", v51, v52, v53, v54, v55, v56);
    if (*(v8 + 263) >= 0)
    {
      LOBYTE(v63) = v57;
    }

    else
    {
      v63 = *(v8 + 240);
    }

    cnprint::CNPrinter::Print(&v98, &v99, "%s", v58, v59, v60, v61, v62, v63);
    if ((v103[15] & 0x80000000) != 0)
    {
      operator delete(__p);
    }
  }

  if ((v101 & 4) != 0)
  {
    *__src = 12;
    LOBYTE(v98) = 2;
    __p = (*(v96 + 16))(&v96);
    *v103 = v65;
    cnprint::CNLogFormatter::FormatWarning(v8 + 240, &__p, "Resetting filter due to prediction error", v66, v67, v68, v69, v70, v95);
    if (*(v8 + 263) >= 0)
    {
      LOBYTE(v76) = v8 - 16;
    }

    else
    {
      v76 = *(v8 + 240);
    }

    cnprint::CNPrinter::Print(__src, &v98, "%s", v71, v72, v73, v74, v75, v76);
    v64 = 1;
  }

  else
  {
LABEL_40:
    v64 = 0;
  }

  if (*(v8 + 3026) == 1 && (v101 & 2) == 0)
  {
    if (!v64)
    {
      return;
    }

    goto LABEL_48;
  }

  sub_1D0BAD0C8(&__p);
  memset(&v103[16], 0, 72);
  *v103 = *(v8 + 112);
  *&v103[88] = 0x7FF8000000000000;
  raven::RavenConvergenceEstimator::GetRavenStatus((v8 + 2968), __src);
  memcpy(&v103[96], __src, 0x428uLL);
  if (v103[200] == *(v8 + 3024))
  {
    raven::RavenConvergenceEstimator::GetRavenSolution((v8 + 2968), __src);
    memcpy(&v103[1160], __src, 0x360uLL);
    raven::RavenEstimator::GetRavenActivity((v8 + 2968), __src);
    memcpy(&v103[2024], __src, 0x269uLL);
    if (v103[201] == 1)
    {
      LOWORD(v98) = 12;
      LOBYTE(v99) = 2;
      *__src = (*(v96 + 16))(&v96);
      *&__src[8] = v79;
      v85 = cnprint::CNLogFormatter::FormatWarning(v8 + 240, __src, "Estimator unhealthy; resetting...", v80, v81, v82, v83, v84, v95);
      if (*(v8 + 263) >= 0)
      {
        LOBYTE(v91) = v85;
      }

      else
      {
        v91 = *(v8 + 240);
      }

      cnprint::CNPrinter::Print(&v98, &v99, "%s", v86, v87, v88, v89, v90, v91);
    }

    else if ((v64 & 1) == 0)
    {
      if (v103[1976] == 1)
      {
        v93 = *&v103[2000];
        if (*&v103[2000] > 0.0)
        {
          v77.i64[0] = *&v103[1984];
          *__src = 0uLL;
          CNTimeSpan::SetTimeSpan(__src, 0, v77, v78);
          v99 = sqrt(v93);
          v98 = *__src;
          sub_1D0BAE3C4(&__p, v97, &v98, &v99, *__src, v94);
          goto LABEL_65;
        }
      }

      v92 = 0;
LABEL_63:
      sub_1D0BE3854(&__p, v97, v77, v78);
      if (v92)
      {
        v103[201] = 1;
        raven::RavenConvergenceEstimator::Reset((v8 + 2968));
      }

LABEL_65:
      sub_1D0BAE448();
    }

    v92 = 1;
    goto LABEL_63;
  }

  if (v64)
  {
LABEL_48:
    raven::RavenConvergenceEstimator::Reset((v8 + 2968));
  }
}

uint64_t raven::RavenConvergenceEstimator::HandleTimeMarkEvent(raven::RavenConvergenceEstimator *this, const raven::TimeMarkEvent *a2)
{
  v2 = *(a2 + 8);
  *(this + 152) = *(a2 + 24);
  *(this + 136) = v2;
  v3 = *(a2 + 40);
  v4 = *(a2 + 56);
  v5 = *(a2 + 72);
  *(this + 216) = *(a2 + 88);
  *(this + 200) = v5;
  *(this + 184) = v4;
  *(this + 168) = v3;
  if (*(this + 57) != 1)
  {
    return 32;
  }

  if (*(this + 58) != 1)
  {
    return 0;
  }

  v8 = (*(*a2 + 16))(a2);
  v10 = v9;
  v70[0] = v8;
  *&v70[1] = v9;
  v64[0] = *(this + 5);
  v12 = CNTimeSpan::operator-(v70, v64, v64[0], v11);
  v15 = v14 + v12;
  if (v15 >= 0.0)
  {
    v27 = *(this + 146);
    v13.i64[0] = *(v27 + 872);
    v28 = vcvtpd_s64_f64(v15 / *v13.i64);
    *(this + 328) = 0u;
    *(this + 344) = 0u;
    *(this + 360) = 0u;
    *(this + 376) = 0u;
    *(this + 392) = 0u;
    *(this + 408) = 0u;
    *(this + 424) = 0u;
    *(this + 440) = 0u;
    *(this + 456) = 0u;
    *(this + 472) = 0u;
    *(this + 488) = 0u;
    *(this + 504) = 0u;
    *(this + 520) = 0u;
    *(this + 536) = 0u;
    *(this + 552) = 0u;
    *(this + 568) = 0u;
    *(this + 584) = 0u;
    *(this + 600) = 0u;
    *(this + 616) = 0u;
    *(this + 632) = 0u;
    *(this + 648) = 0u;
    *(this + 664) = 0u;
    *(this + 680) = 0u;
    *(this + 696) = 0u;
    *(this + 708) = 0u;
    v29 = *(v27 + 872);
    v69[0] = 0;
    v69[1] = 0;
    CNTimeSpan::SetTimeSpan(v69, 0, v29, v13);
    v30.i64[0] = *(v27 + 880);
    v68[0] = 0;
    v68[1] = 0;
    CNTimeSpan::SetTimeSpan(v68, 0, v30, v31);
    v26 = 0;
    v36 = __OFSUB__(v28, 1);
    v37 = v28 - 1;
    if (v37 < 0 == v36)
    {
      v38 = v10;
      if (v8)
      {
        v39 = 1;
      }

      else
      {
        v39 = (*&v10 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
      }

      v40 = v39;
      v61 = vdupq_n_s64(0x7FF8000000000000uLL);
      while (1)
      {
        if ((v67 = *(this + 5), v66[0] = CNTimeSpan::operator+(&v67, v69, v67, v35), v66[1] = v41, (v44 = CNTimeSpan::operator+(v66, v68, v42, v43)) != 0) || (*&v45 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL) && (v40)
        {
          v47 = v44 == v8 ? v38 <= v45 : v44 > v8;
        }

        else
        {
          v47 = v38 <= v45;
        }

        v48 = (v47 ? v70 : v66);
        v65 = *v48;
        v64[0] = 0uLL;
        *(&v64[1] + 8) = v61;
        *(&v64[2] + 8) = v61;
        EstimatorPredictAndUpdateArguments = raven::RavenConvergenceEstimator::GetEstimatorPredictAndUpdateArguments(this, &v67, &v65, v64, v61.n128_f64[0], v46);
        if (!EstimatorPredictAndUpdateArguments)
        {
          break;
        }

        v62 = raven::RavenConvergenceEstimator::PredictAndUpdate(this, v64, v50, v51);
        v26 |= v62;
        if (sub_1D0BAAFCC(&v62))
        {
          return v26;
        }

        if (v37)
        {
          v52 = v47;
        }

        else
        {
          v52 = 1;
        }

        --v37;
        if (v52)
        {
          goto LABEL_42;
        }
      }

      if (cnprint::CNPrinter::GetLogLevel(EstimatorPredictAndUpdateArguments) <= 1)
      {
        LOWORD(v62) = 12;
        v63 = 1;
        v53 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, v70, "Could not get predict and update arguments");
        if (*(this + 2735) >= 0)
        {
          LOBYTE(v59) = v53;
        }

        else
        {
          v59 = *(this + 339);
        }

        cnprint::CNPrinter::Print(&v62, &v63, "%s", v54, v55, v56, v57, v58, v59);
      }
    }

LABEL_42:
    raven::RavenEstimator::StoreHistoricalSolution(this, v32, v33, v34);
  }

  else
  {
    if (cnprint::CNPrinter::GetLogLevel(v12) <= 1)
    {
      LOWORD(v69[0]) = 12;
      LOBYTE(v68[0]) = 1;
      v64[0].n128_u64[0] = (*(*a2 + 16))(a2);
      v64[0].n128_u64[1] = v16;
      v17 = *(this + 11) + *(this + 10);
      v18 = (*(*a2 + 16))(a2);
      cnprint::CNLogFormatter::FormatGeneral(this + 2712, v64, "Estimator time is greater than event time,%.3lf > %.3lf", v17, v19 + v18);
      if (*(this + 2735) >= 0)
      {
        LOBYTE(v25) = this - 104;
      }

      else
      {
        v25 = *(this + 339);
      }

      cnprint::CNPrinter::Print(v69, v68, "%s", v20, v21, v22, v23, v24, v25);
    }

    return 64;
  }

  return v26;
}

uint64_t raven::RavenConvergenceEstimator::PredictAndUpdate(uint64_t a1, __n128 *a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 58) != 1)
  {
    return 32;
  }

  v6 = (a1 + 8560);
  v162 = *a2;
  v7 = a2[1].n128_f64[0];
  if (v7 < 0.0)
  {
    sub_1D0BAA9CC(a1 + 8560, a1 + 80, a3, a4);
    *v6 = 0;
    sub_1D0BADC18(v6, (a1 + 80), v8, v9, v10, v11, v12, v13);
    return 64;
  }

  if (v7 <= 0.0)
  {
    return 0;
  }

  if (!sub_1D0B9D420(v162.i64, (a1 + 8568)))
  {
    v24 = v162;
    *(a1 + 8584) = v162;
    v25 = CNTimeSpan::operator-((a1 + 8584), (a1 + 8568), v24, v21);
    v28 = *(a1 + 14496);
    if (v28 >= 1)
    {
      v29 = 0;
      *v27.i64 = v25;
      v30 = v26 + v25;
      v31 = *(a1 + 8656);
      while (1)
      {
        *v158 = *v31;
        *v27.i64 = CNTimeSpan::operator-(v158, (a1 + 8568), *v158, v27);
        v33 = (v32 + *v27.i64) / v30;
        if (v33 < 0.0)
        {
          break;
        }

        *(*(a1 + 12216) + v29) = v33;
        v29 += 8;
        ++v31;
        if (8 * v28 == v29)
        {
          goto LABEL_14;
        }
      }

      LOWORD(v153) = 2;
      LOBYTE(v148) = 2;
      v22 = &v153;
      v23 = &v148;
      goto LABEL_54;
    }

LABEL_14:
    *(a1 + 20464) = 87;
    *(a1 + 17376) = xmmword_1D0E84400;
    *(a1 + 18808) = xmmword_1D0E84400;
    *(a1 + 19200) = xmmword_1D0E84400;
    *(a1 + 19936) = xmmword_1D0E84400;
    *(a1 + 19984) = xmmword_1D0E84400;
    *(a1 + 20376) = xmmword_1D0E84400;
    *(a1 + 20424) = xmmword_1D0E84400;
    *(a1 + 20480) = xmmword_1D0E84400;
    *(a1 + 21216) = xmmword_1D0E84400;
    *&v158[16] = 0;
    *&v158[8] = 0;
    *v158 = &v158[8];
    if (v28 < 1)
    {
      v35 = 0;
      goto LABEL_59;
    }

    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    while (1)
    {
      if (*(*(a1 + 12216) + 8 * v34) <= 1.0)
      {
        ++v37;
        v38 = *(*(a1 + 11480) + 4 * v34);
        v39 = v38 + v36;
        if (v35 <= 86 && v39 < 88)
        {
          v119 = v36;
          v118 = v35;
          goto LABEL_20;
        }

        v148 = 0;
        v46 = *v158;
        if (*v158 == &v158[8])
        {
          goto LABEL_71;
        }

        v47 = 0;
        v48 = -1;
        do
        {
          v49 = *(v46 + 10);
          if (v49 > v48)
          {
            v47 = *(v46 + 4);
            v148 = v47;
            v48 = v49;
          }

          v50 = *(v46 + 1);
          if (v50)
          {
            do
            {
              v51 = v50;
              v50 = *v50;
            }

            while (v50);
          }

          else
          {
            do
            {
              v51 = *(v46 + 2);
              v52 = *v51 == v46;
              v46 = v51;
            }

            while (!v52);
          }

          v46 = v51;
        }

        while (v51 != &v158[8]);
        if (!v47)
        {
LABEL_71:
          LOWORD(v153) = 2;
          LOBYTE(v141) = 4;
          cnprint::CNPrinter::Print(&v153, &v141, "MeasurementAccumulator.LockAccumulator() most_common_measurement_type == nullptr", v16, v17, v18, v19, v20, v115);
          goto LABEL_57;
        }

        v117 = v37;
        if (*(*(a1 + 14536) + 8 * v34) != v47)
        {
          if (v35 < 1)
          {
LABEL_56:
            LOWORD(v153) = 2;
            LOBYTE(v141) = 4;
            cnprint::CNPrinter::Print(&v153, &v141, "MeasurementAccumulator.LockAccumulator() found_idx == false", v16, v17, v18, v19, v20, v115);
LABEL_57:
            sub_1D0B99218(*&v158[8]);
            goto LABEL_55;
          }

          v53 = v35;
          while (*(*(a1 + 20504) + 8 * --v53) != v47)
          {
            if (v53 <= 0)
            {
              goto LABEL_56;
            }
          }

          if (v39 - *(*(a1 + 18832) + 4 * v53) <= 87)
          {
            v118 = v35 - 1;
            v120 = v36;
            v153 = &v148;
            v54 = sub_1D0BBCAA4(v158, v47);
            --*(v54 + 10);
            v119 = v120 - *(*(a1 + 18832) + 4 * v53);
            v35 = v53;
            v37 = v117;
LABEL_20:
            *(*(a1 + 17400) + 16 * v35) = *(*(a1 + 8656) + 16 * v34);
            *(*(a1 + 18832) + 4 * v35) = v38;
            *(*(a1 + 19224) + 8 * v35) = *(*(a1 + 12216) + 8 * v34);
            sub_1D0B894B0(*(a1 + 19960) + (v35 << 6), *(a1 + 13648) + (v34 << 6));
            *(*(a1 + 20008) + 4 * v35) = *(*(a1 + 13696) + 4 * v34);
            sub_1D0B894B0(*(a1 + 20400) + (v35 << 6), *(a1 + 14432) + (v34 << 6));
            sub_1D0B894B0(*(a1 + 20448) + 112 * v35, *(a1 + 14480) + 112 * v34);
            *(*(a1 + 20504) + 8 * v35) = *(*(a1 + 14536) + 8 * v34);
            *(*(a1 + 21240) + 8 * v35) = *(*(a1 + 15968) + 8 * v34);
            v40 = *&v158[8];
            v41 = *(*(a1 + 14536) + 8 * v34);
            if (!*&v158[8])
            {
              goto LABEL_28;
            }

            v42 = &v158[8];
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
            if (v42 != &v158[8] && v41 >= *(v42 + 4))
            {
              ++*(v42 + 10);
            }

            else
            {
LABEL_28:
              v153 = (*(a1 + 14536) + 8 * v34);
              *(sub_1D0BBCAA4(v158, v41) + 10) = 1;
            }

            v35 = v118 + 1;
            v36 = v119 + v38;
            LODWORD(v28) = *(a1 + 14496);
            goto LABEL_49;
          }
        }

        v37 = v117;
      }

LABEL_49:
      if (++v34 >= v28)
      {
        if (v37 > v35)
        {
          LOWORD(v153) = 2;
          LOBYTE(v148) = 2;
          v116 = *&v162.i64[1] + v162.i64[0];
          cnprint::CNPrinter::Print(&v153, &v148, "t,%.3lf,WARNING: MeasurementAccumulator.LockAccumulator() truncating measurements,nh,%d,eligible,%d,num_truncated,%d", v16, v17, v18, v19, v20, SLOBYTE(v116));
        }

LABEL_59:
        *(a1 + 20464) = v35;
        *(a1 + 17376) = v35;
        *(a1 + 17380) = 1;
        *(a1 + 17384) = v35;
        *(a1 + 17388) = v35;
        *(a1 + 18808) = v35;
        *(a1 + 18812) = 1;
        *(a1 + 18816) = v35;
        *(a1 + 18820) = v35;
        *(a1 + 19200) = v35;
        *(a1 + 19204) = 1;
        *(a1 + 19208) = v35;
        *(a1 + 19212) = v35;
        *(a1 + 19936) = v35;
        *(a1 + 19940) = 1;
        *(a1 + 19944) = v35;
        *(a1 + 19948) = v35;
        *(a1 + 19984) = v35;
        *(a1 + 19988) = 1;
        *(a1 + 19992) = v35;
        *(a1 + 19996) = v35;
        *(a1 + 20376) = v35;
        *(a1 + 20380) = 1;
        *(a1 + 20384) = v35;
        *(a1 + 20388) = v35;
        *(a1 + 20424) = v35;
        *(a1 + 20428) = 1;
        *(a1 + 20432) = v35;
        *(a1 + 20436) = v35;
        *(a1 + 20480) = v35;
        *(a1 + 20484) = 1;
        *(a1 + 20488) = v35;
        *(a1 + 20492) = v35;
        *(a1 + 21216) = v35;
        *(a1 + 21220) = 1;
        *(a1 + 21224) = v35;
        *(a1 + 21228) = v35;
        v6[1] = 1;
        sub_1D0B99218(*&v158[8]);
        if (!cnprint::CNPrinter::GetLogLevel(v63))
        {
          *v158 = 12;
          LOBYTE(v153) = 0;
          v71 = *&v162.i64[1] + v162.i64[0];
          v72 = sub_1D0B9D490(v6, v64, v65, v66, v67, v68, v69, v70);
          cnprint::CNLogFormatter::FormatGeneral((a1 + 2712), "Predict,%.2lf,dt,%.3lf,meas_types,%d", v71, v7, v72);
          if (*(a1 + 2735) >= 0)
          {
            LOBYTE(v78) = a1 - 104;
          }

          else
          {
            v78 = *(a1 + 2712);
          }

          cnprint::CNPrinter::Print(v158, &v153, "%s", v73, v74, v75, v76, v77, v78);
        }

        v159 = 0x800000008;
        *&v158[8] = xmmword_1D0E84510;
        *v158 = &unk_1F4CE43B0;
        v160 = &v161;
        if (sub_1D0B9E8C4(a1, a2, v158, v66))
        {
          sub_1D0BAA9CC(v6, a1 + 80, v80, v81);
          *v6 = 0;
          sub_1D0BADC18(v6, (a1 + 80), v86, v87, v88, v89, v90, v91);
          return 256;
        }

        v155 = 0x200000002;
        v154 = xmmword_1D0E83F70;
        v153 = &unk_1F4CE14D8;
        v156 = &v157;
        v157 = xmmword_1D0E84550;
        v150 = 0x100000002;
        v149 = xmmword_1D0E83F60;
        v148 = &unk_1F4CE1520;
        v151 = v152;
        v152[0] = sub_1D0BA4C04;
        v152[1] = sub_1D0BA55E4;
        v146 = v7;
        v147 = v7;
        v143 = 0x100000002;
        v142 = xmmword_1D0E83F60;
        v141 = &unk_1F4CE15A8;
        v144 = v145;
        v145[0] = &v147;
        v145[1] = &v146;
        v138 = 0x100000002;
        v137 = xmmword_1D0E83F60;
        v136[2] = &unk_1F4CE0EA8;
        v139 = &v140;
        v140 = 0x200000006;
        v134 = 0x100000002;
        v133 = xmmword_1D0E83F60;
        v132[1] = &unk_1F4CEBB48;
        v135 = v136;
        v136[0] = sub_1D0BF8A30;
        v136[1] = sub_1D0BF9010;
        v131 = v7;
        *v132 = v7;
        v128 = 0x100000002;
        *&v126[1] = &unk_1F4CE15A8;
        v127 = xmmword_1D0E83F60;
        v129 = v130;
        v130[0] = v132;
        v130[1] = &v131;
        v126[0] = v7;
        if ((v6[1] & 1) == 0)
        {
          sub_1D0BAA988(v6, (a1 + 80), v80, v81);
          return 512;
        }

        if (sub_1D0B9D490(v6, v79, v80, v81, v82, v83, v84, v85))
        {
          sub_1D0BE0798(a1 + 2864, v158, a1 + 19192, a1 + 19928, a1 + 20416, &v153, &v148, &v141, a1 + 20472);
        }

        v92 = sub_1D0BA19BC(a1 + 2864, v158, &v153, &v148);
        v14 = 2;
        memset(v125, 0, sizeof(v125));
        sub_1D0BA5D5C(v125, *(a1 + 4520), *(a1 + 4528), (*(a1 + 4528) - *(a1 + 4520)) >> 5);
        memset(v124, 0, sizeof(v124));
        sub_1D0BA5D5C(v124, *(a1 + 4496), *(a1 + 4504), (*(a1 + 4504) - *(a1 + 4496)) >> 5);
        memset(v123, 0, sizeof(v123));
        sub_1D0BA5D5C(v123, *(a1 + 4544), *(a1 + 4552), (*(a1 + 4552) - *(a1 + 4544)) >> 5);
        if (v92 > 0x16)
        {
          goto LABEL_82;
        }

        if (((1 << v92) & 0x440408) == 0)
        {
          if (((1 << v92) & 0x301) != 0)
          {
            sub_1D0BAA7A4(a1 + 8488, v126);
            *(a1 + 80) = v162;
            v121 = 0uLL;
            if (!sub_1D0BADB3C(v6, &v121, v93, v94, v95, v96, v97, v98))
            {
              *(a1 + 96) = v121;
            }

LABEL_89:
            sub_1D0BAA988(v6, &v162, v106, v107);
            *&v121 = v123;
            sub_1D0BA5F70(&v121);
            v123[0] = v124;
            sub_1D0BA5F70(v123);
            v124[0] = v125;
            sub_1D0BA5F70(v124);
            return v14;
          }

          if (((1 << v92) & 0x300000) != 0)
          {
            LOWORD(v121) = 12;
            v122 = 4;
            v99 = cnprint::CNLogFormatter::FormatGeneral(a1 + 2712, &v162, "Resetting due to prediction error code %d", v92);
            if (*(a1 + 2735) >= 0)
            {
              LOBYTE(v105) = v99;
            }

            else
            {
              v105 = *(a1 + 2712);
            }

            cnprint::CNPrinter::Print(&v121, &v122, "%s", v100, v101, v102, v103, v104, v105);
            v14 = 6;
            goto LABEL_89;
          }

LABEL_82:
          v14 = 3;
        }

        LOWORD(v121) = 12;
        v122 = 4;
        v108 = cnprint::CNLogFormatter::FormatGeneral(a1 + 2712, &v162, "Unexpected predict and update return code %d", v92);
        if (*(a1 + 2735) >= 0)
        {
          LOBYTE(v114) = v108;
        }

        else
        {
          v114 = *(a1 + 2712);
        }

        cnprint::CNPrinter::Print(&v121, &v122, "%s", v109, v110, v111, v112, v113, v114);
        goto LABEL_89;
      }
    }
  }

  *v158 = 2;
  LOBYTE(v153) = 4;
  v22 = v158;
  v23 = &v153;
LABEL_54:
  cnprint::CNPrinter::Print(v22, v23, "WARNING: MeasurementAccumulator.LockAccumulator() called with bad t_end.", v16, v17, v18, v19, v20, v115);
LABEL_55:
  sub_1D0BAA9CC(v6, a1 + 80, v55, v56);
  *v6 = 0;
  sub_1D0BADC18(v6, (a1 + 80), v57, v58, v59, v60, v61, v62);
  return 128;
}

void sub_1D0B9D390(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void ****a19, uint64_t a20, uint64_t a21, void ***a22, uint64_t a23, uint64_t a24, void **a25, uint64_t a26, uint64_t a27, char a28)
{
  a19 = &a22;
  sub_1D0BA5F70(&a19);
  a22 = &a25;
  sub_1D0BA5F70(&a22);
  a25 = &a28;
  sub_1D0BA5F70(&a25);
  _Unwind_Resume(a1);
}

BOOL sub_1D0B9D420(double *a1, double *a2)
{
  v2 = *a1;
  if (*a1 || (v3 = a1[1], (*&v3 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000))
  {
    v4 = *a2;
    if (!*a2)
    {
      v5 = a2[1];
      if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
      {
        v6 = a1[1] > v5;
        return !v6;
      }
    }

    if (*&v2 != *&v4)
    {
      return *&v2 < *&v4;
    }

    v3 = a1[1];
  }

  v6 = v3 > a2[1];
  return !v6;
}

uint64_t sub_1D0B9D490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 1))
  {
    return *(a1 + 11904);
  }

  v14 = v8;
  v15 = v9;
  v13 = 2;
  v12 = 2;
  cnprint::CNPrinter::Print(&v13, &v12, "WARNING: MeasurementAccumulator.NumberLocked() called on unlocked accumulator.", a4, a5, a6, a7, a8, v11);
  return 0;
}

void sub_1D0B9D4E4(uint64_t a1, raven::RavenMapVectorActiveObject **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0B94708(v9, a3, a3, a4, a5, a6, a7, a8);
  raven::RavenMapVectorActiveObject::HandleEvent(v8, v9);
}

void raven::RavenMapVectorActiveObject::HandleEvent(raven::RavenMapVectorActiveObject *this, const raven::TimeMarkEvent *a2)
{
  *&v40 = (*(*a2 + 16))(a2);
  *(&v40 + 1) = v4;
  raven::RavenMapVectorActiveObject::RaiseTurnStateEvent(this, &v40);
  if (*(this + 808) != 1)
  {
    return;
  }

  if ((*(this + 1096) & 1) == 0)
  {
    goto LABEL_23;
  }

  v7 = CNTimeSpan::operator-(&v40, this + 138, v5, v6);
  if (v8 + v7 < *(*(this + 29) + 3152))
  {
    return;
  }

  v38 = (*(*(this + 102) + 16))();
  *&v39[0] = v9;
  *v12.i64 = CNTimeSpan::operator-(&v40, &v38, v10, v11);
  v14 = *(this + 29);
  v15.i64[0] = *(v14 + 3144);
  if (v13 + *v12.i64 > *v15.i64)
  {
    if (*(this + 808) == 1)
    {
      *(this + 808) = 0;
    }

    *(this + 513) = 0x7FF0000000000000;
    *(this + 514) = 0;
    *(this + 515) = 0x7FF8000000000000;
    *(this + 4128) = 0;
    return;
  }

  if (*(this + 4128) != 1)
  {
    return;
  }

  v16 = CNTimeSpan::operator-(&v40, this + 514, v15, v12);
  if (v17 + v16 <= 1.0)
  {
    if (fabs(*(this + 513)) > *(v14 + 3160))
    {
      if (!cnprint::CNPrinter::GetLogLevel(v16))
      {
        LOWORD(v38) = 12;
        LOBYTE(v36[0]) = 0;
        v18 = (*(*a2 + 16))(a2);
        v35 = *(this + 513);
        v33 = v19 + v18;
        cnprint::CNPrinter::Print(&v38, v36, "t,%.3lf,MapVectorAO: Failed to re-inject map vector assistance. accumulatedRotation,%.2lf,map vector age,%.2lf,", v20, v21, v22, v23, v24, SLOBYTE(v33));
      }

      if (*(this + 808) == 1)
      {
        *(this + 808) = 0;
      }

      *(this + 513) = 0x7FF0000000000000;
      *(this + 514) = 0;
      *(this + 515) = 0x7FF8000000000000;
      *(this + 4128) = 0;
      return;
    }

    if (*(this + 808))
    {
      v38 = &unk_1F4CEEB40;
      memcpy(v39, this + 824, 0x10CuLL);
      v39[0] = v40;
      memset(&v39[1], 0, 72);
      *(&v39[5] + 1) = 0x7FF8000000000000;
      v37 = 0;
      memset(&v36[1], 0, 64);
      v36[0] = v40;
      memset(&v39[7], 0, 72);
      v39[6] = v40;
      *(&v39[11] + 1) = 0x7FF8000000000000;
      v32 = *(this + 1096);
      *(this + 69) = v40;
      if ((v32 & 1) == 0)
      {
        *(this + 1096) = 1;
      }

      sub_1D0DD4390();
    }

LABEL_23:
    __assert_rtn("get", "optional.hpp", 1212, "this->is_initialized()");
  }

  if (!cnprint::CNPrinter::GetLogLevel(v16))
  {
    LOWORD(v38) = 12;
    LOBYTE(v36[0]) = 0;
    v25 = (*(*a2 + 16))(a2);
    v34 = v26 + v25;
    cnprint::CNPrinter::Print(&v38, v36, "t,%.3lf,MapVectorAO: accumulated device rotation age is too large to be used to determine if the device has rotated too far. Not re-raising map vector event. Age,%.2lf", v27, v28, v29, v30, v31, SLOBYTE(v34));
  }
}

uint64_t raven::RavenMapVectorActiveObject::RaiseTurnStateEvent(uint64_t result, uint64_t a2)
{
  v2 = *(result + 4176);
  if (v2)
  {
    v3 = result;
    if (v2 >= *(result + 4208))
    {
      v20[0] = *(result + 4192);
      memset(&v20[1], 0, 64);
      v23 = v20[0];
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v22 = &unk_1F4CEF5F8;
      v30 = 0;
      v33 = 0.0;
      v34 = INFINITY;
      v31 = 1.0;
      v32 = 0.0;
      v21 = 0;
      v24 = 0u;
      v28 = 0;
      v29 = 0x7FF8000000000000;
      if (*(result + 1120) == 1)
      {
        v5 = *(result + 1232);
        if (v5 > 3 || v5 == 1)
        {
          v34 = *(result + 4184) / v2;
          v6 = fabs(v34);
          v7 = 0.0;
          if (*(result + 4088) == 1)
          {
            v7 = *(result + 4096) + *(result + 4096);
          }

          v8 = *(result + 232);
          if (v6 <= v8[404] - v7)
          {
            v30 = 1;
            v32 = 0.67;
            if (v6 <= v8[405] - v7)
            {
              v32 = 1.0;
              v10 = 1.0;
            }

            else
            {
              v10 = 0.67;
            }

            v33 = 1.0 - v10;
            v11 = 1.0 - (1.0 - v10);
          }

          else
          {
            v30 = 2;
            v33 = 0.67;
            if (v6 >= v8[403] - v7)
            {
              v33 = 1.0;
              v9 = 1.0;
            }

            else
            {
              v9 = 0.67;
            }

            v11 = 1.0 - v9;
            v32 = 1.0 - v9;
            v10 = 1.0 - v9;
          }

          v31 = v11 - v10;
          if (!cnprint::CNPrinter::GetLogLevel(result))
          {
            LOWORD(v20[0]) = 12;
            v19 = 0;
            v17 = *(a2 + 8) + *a2;
            v18 = *(v3 + 4176);
            cnprint::CNPrinter::Print(v20, &v19, "t,%.3lf,MapVectorAO:TurnState,average_absolute_vertical_rotation_rate,%.2lf,turn_state,%u,probability,t,%.2lf,nt,%.2lf,uk,%.2lf,queue_size,%zu", v12, v13, v14, v15, v16, SLOBYTE(v17));
          }
        }
      }

      operator new();
    }
  }

  return result;
}

void sub_1D0B9DDB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    sub_1D0B7CAB8(a18);
  }

  sub_1D0B7CAB8(v18);
  _Unwind_Resume(a1);
}

void sub_1D0B9DE50(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0B94708(&v49, a3, a3, a4, a5, a6, a7, a8);
  v9 = *(v8 + 1240);
  v63 = *(v8 + 1256);
  v10 = *(v8 + 1176);
  v59 = *(v8 + 1192);
  v11 = *(v8 + 1288);
  *v64 = *(v8 + 1272);
  *&v64[16] = v11;
  v12 = *(v8 + 1224);
  v60 = *(v8 + 1208);
  v61 = v12;
  v62 = v9;
  v13 = *(v8 + 1304);
  *&v57[4] = &unk_1F4CEF538;
  *&v64[32] = v13;
  v63 = v55;
  v59 = v51;
  v60 = v52;
  v61 = v53;
  v62 = v54;
  v58 = v50;
  v14 = v64[0];
  if (v64[0] > 3u || v64[0] == 1)
  {
    v15 = *(v8 + 280);
    if (v15)
    {
      v16 = *(*(v8 + 248) + 8 * ((v15 + *(v8 + 272) - 1) / 0x14uLL)) + 200 * ((v15 + *(v8 + 272) - 1) % 0x14uLL);
      v70 = (*(*v16 + 16))(v16);
      *&v71 = v17;
      v18 = *(*(v8 + 248) + 8 * (*(v8 + 272) / 0x14uLL)) + 200 * (*(v8 + 272) % 0x14uLL);
      v75 = (*(*v18 + 16))(v18);
      *&v76 = v19;
      v22 = CNTimeSpan::operator-(&v70, &v75, v20, v21);
      v24 = fabs(v23 + v22);
      if (v24 > 0.45)
      {
        v25 = *(v8 + 272);
        v26 = *(v8 + 280) + v25 - 1;
        v27 = *(v8 + 248);
        v28 = *(v27 + 8 * (v26 / 0x14));
        cnrotation::Inv((*(v27 + 8 * (v25 / 0x14)) + 200 * (v25 % 0x14) + 168), &v70);
        cnrotation::Cat((v28 + 200 * (v26 % 0x14) + 168), &v70, v57);
        cnrotation::CNRotation::RotationVector(v57, v56);
        v77 = 0x100000003;
        v75 = &unk_1F4CDEB28;
        v76 = xmmword_1D0E7DCC0;
        v78 = &v79;
        v72 = 0x100000134;
        v71 = xmmword_1D0E7DD20;
        v70 = &unk_1F4CDEC90;
        v73 = &v74;
        v67 = 0x100000003;
        v66 = xmmword_1D0E7DCC0;
        v65 = &unk_1F4CDEB28;
        v68 = &v69;
        sub_1D0BFB1AC(v56, &v75, &v70, &v65, "2");
        v31 = fabs(v30 / v24);
        v32 = 0.68584315;
        if (*(v8 + 464) == 1)
        {
          v33 = *(v8 + 472);
          if (v33 > 0.000000015)
          {
            v34 = 3.26888333 / fmin(v33, 50.0);
            if (v34 <= 0.68584315)
            {
              v32 = v34;
            }

            else
            {
              v32 = 0.68584315;
            }
          }
        }

        if (v31 > v32)
        {
          if (!cnprint::CNPrinter::GetLogLevel(v29))
          {
            LOWORD(v70) = 12;
            LOBYTE(v75) = 0;
            v35 = (*(v49 + 16))(&v49);
            v48 = v36 + v35;
            cnprint::CNPrinter::Print(&v70, &v75, "Mount adjustment detected, t,%.3lf,%.1lf dps vs. %.1lf dps", v37, v38, v39, v40, v41, SLOBYTE(v48));
          }

          *(v8 + 1152) = (*(v49 + 16))(&v49);
          *(v8 + 1160) = v42;
        }
      }
    }

    v14 = v64[0];
  }

  if (v14 > 3 || v14 == 1)
  {
    v70 = (*(v49 + 16))(&v49);
    *&v71 = v43;
    v46 = CNTimeSpan::operator-(&v70, (v8 + 1152), v44, v45);
    if (v47 + v46 < 30.0)
    {
      v64[0] = 2;
      *&v64[8] = xmmword_1D0E87C00;
      *&v64[24] = xmmword_1D0E87C10;
    }
  }

  sub_1D0B9E5C4();
}

void sub_1D0B9E560(_Unwind_Exception *a1)
{
  if (*(v1 + 95) < 0)
  {
    operator delete(*(v1 + 72));
  }

  v3 = *(v1 + 40);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v4);
  _Unwind_Resume(a1);
}

void sub_1D0B9E654(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1D0B7CAB8(a10);
  }

  if (v10)
  {
    sub_1D0B7CAB8(v10);
  }

  _Unwind_Resume(exception_object);
}

BOOL raven::RavenConvergenceEstimator::GetEstimatorPredictAndUpdateArguments(uint64_t a1, uint64_t a2, int8x16_t *a3, uint64_t a4, double a5, int8x16_t a6)
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
      v28 = 12;
      v27 = 0;
      v19 = cnprint::CNLogFormatter::FormatGeneral(a1 + 2712, a3, "Prediction time is negative,dt,%.2lf,current_estimator_time,%.1lf", *(a4 + 16), *(a2 + 8) + *a2);
      if (*(a1 + 2735) >= 0)
      {
        LOBYTE(v25) = v19;
      }

      else
      {
        v25 = *(a1 + 2712);
      }

      cnprint::CNPrinter::Print(&v28, &v27, "%s", v20, v21, v22, v23, v24, v25);
    }
  }

  else
  {
    v14 = raven::RavenConvergenceEstimator::AdjustDynamicModelWithMovingStateContraints(a1);
    *(a4 + 56) = v14;
    *(a4 + 64) = v14;
    *(a4 + 72) = v15;
    *(a4 + 80) = v16;
    *(a4 + 88) = v16;
    *(a4 + 96) = v17;
    *(a4 + 104) = v15 + v14 * 2.0;
    *(a4 + 112) = v17 + v16 * 2.0;
    v18 = (*(a1 + 1168) + 792);
    *(a4 + 24) = *v18;
    *(a4 + 40) = v18[1];
  }

  return v13 >= 0.0;
}

double raven::RavenConvergenceEstimator::AdjustDynamicModelWithMovingStateContraints(uint64_t a1)
{
  v2 = *(a1 + 1168);
  v3 = v2[27];
  v4 = *(v2 + 28);
  v5 = *(v2 + 29);
  v6 = *(v2 + 30);
  if (*(a1 + 2000) == 1)
  {
    if (*(a1 + 2112) - 1 <= 2)
    {
      v7 = (*(a1 + 2112) - 1);
      v3 = *(v2 + qword_1D0E9D5D0[v7]);
      v8 = *(v2 + qword_1D0E9D5E8[v7]);
      v9 = *(v2 + qword_1D0E9D600[v7]);
      v10 = *(v2 + qword_1D0E9D618[v7]);
    }
  }

  else if (cnprint::CNPrinter::GetLogLevel(a1) <= 1)
  {
    v21 = 12;
    v20 = 1;
    v19 = *(a1 + 80);
    v11 = cnprint::CNLogFormatter::FormatGeneral(a1 + 2712, &v19, "AdjustDynamicModelWithMovingStateContraints: WARNING: Moving State not yet available.");
    if (*(a1 + 2735) >= 0)
    {
      LOBYTE(v17) = v11;
    }

    else
    {
      v17 = *(a1 + 2712);
    }

    cnprint::CNPrinter::Print(&v21, &v20, "%s", v12, v13, v14, v15, v16, v17);
  }

  return v3;
}

uint64_t sub_1D0B9E8C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x1EEE9AC00](a1, a2, a3, a4);
  v6 = v5;
  v8 = v7;
  v9 = v4;
  v10 = 768;
  if (!*(v4 + 4404))
  {
    v10 = 8;
  }

  v157 = 0x100000008;
  v156 = xmmword_1D0E84520;
  v155 = &unk_1F4CE4320;
  v158 = &v159;
  sub_1D0B894B0(&v155, v4 + v10 + 2864);
  sub_1D0B9F3C4(&v152, *v158, v158[1], v158[2]);
  v11 = 1.0;
  if (*(v9 + 1408) == 1)
  {
    v12 = *(v9 + 1520);
    if (v12 >= 0xA || ((0x37Fu >> v12) & 1) == 0)
    {
      v11 = *(*(v9 + 1168) + 536);
    }
  }

  v13 = v8[13];
  v14 = v8[7];
  if (!v153)
  {
    v14 = v8[13];
  }

  v15 = v11 * v14;
  if (v153)
  {
    v16 = v8[8];
  }

  else
  {
    v16 = v8[13];
  }

  if (v153)
  {
    v13 = v8[9];
  }

  result = 0xFFFFFFFFLL;
  if (v15 > 0.0)
  {
    v18 = v11 * v16;
    if (v18 > 0.0)
    {
      v19 = v11 * v13;
      if (v19 > 0.0)
      {
        v20 = v8[2];
        v126 = 0x600000006;
        v124 = &unk_1F4CDF278;
        v127 = &v128;
        v21 = fabs(v20);
        v125 = xmmword_1D0E7F320;
        v22 = v20 * v20;
        v129 = 0u;
        v130 = 0u;
        v131 = 0u;
        v132 = 0u;
        v133 = 0;
        v135 = 0u;
        v136 = 0;
        v138 = 0u;
        v141 = 0u;
        v142 = 0u;
        v143 = 0u;
        v144 = 0u;
        v145 = 0;
        v147 = 0u;
        v148 = 0;
        v150 = 0u;
        v128 = v15 * 0.333333333 * (v22 * v21);
        *&v130 = v15 * 0.5 * v22;
        v140 = *&v130;
        *&v142 = v15 * v21;
        *&v132 = v18 * 0.333333333 * (v22 * v21);
        v134 = v18 * 0.5 * v22;
        *&v144 = v134;
        v146 = v18 * v21;
        v137 = v19 * 0.333333333 * (v22 * v21);
        v139 = v19 * 0.5 * v22;
        v149 = v139;
        v151 = v19 * v21;
        sub_1D0B9F484(v123, &v124);
        if (v153 == 1)
        {
          v64 = 0x300000003;
          v63 = xmmword_1D0E76C10;
          v62 = &unk_1F4CD5DD0;
          v65 = v66;
          sub_1D0B894B0(&v62, &v154);
          v87 = 0x600000006;
          v85 = &unk_1F4CDF278;
          v88 = &v89;
          v86 = xmmword_1D0E7F320;
          v103 = 0u;
          v104 = 0u;
          v105 = 0u;
          v106 = 0u;
          v89 = 0u;
          v90 = 0u;
          v91 = 0u;
          v92 = 0u;
          v93 = 0u;
          v94 = 0u;
          v95 = 0u;
          v96 = 0u;
          v97 = 0u;
          v98 = 0u;
          v99 = 0u;
          v100 = 0u;
          v101 = 0u;
          v102 = 0u;
          *&v89 = *v65;
          v24 = &v65[SHIDWORD(v63)];
          *&v92 = *v24;
          v25 = &v65[2 * SHIDWORD(v63)];
          *&v95 = *v25;
          *(&v89 + 1) = v65[1];
          *(&v92 + 1) = v24[1];
          v26 = (2 * HIDWORD(v63)) | 1;
          *(&v95 + 1) = v65[v26];
          *&v90 = v65[2];
          *&v93 = v24[2];
          *&v96 = v25[2];
          *(&v99 + 1) = *v65;
          *(&v102 + 1) = *v24;
          *(&v105 + 1) = *v25;
          *&v100 = v65[1];
          *&v103 = v24[1];
          *&v106 = v65[v26];
          *(&v100 + 1) = v65[2];
          *(&v103 + 1) = v24[2];
          *(&v106 + 1) = v25[2];
          v77 = 0x600000006;
          v76 = xmmword_1D0E7F320;
          v75 = &unk_1F4CDF278;
          v78 = v79;
          sub_1D0B89390(&v85, &v124, &v75);
          v27 = DWORD1(v86);
          v28 = v86;
          v72 = 0x600000006;
          v67 = &unk_1F4CDF278;
          v73 = v74;
          v68 = DWORD1(v86);
          v69 = v86;
          v70 = v86 * DWORD1(v86);
          v71 = DWORD1(v86);
          if (DWORD1(v86))
          {
            v29 = 0;
            v30 = 0;
            v31 = HIDWORD(v86);
            v32 = v88;
            do
            {
              v33 = v29;
              v34 = v30;
              for (i = v28; i; --i)
              {
                v74[v34] = *(v32 + v33);
                v34 += v27;
                ++v33;
              }

              ++v30;
              v29 += v31;
            }

            while (v30 != v27);
          }

          v115 = 0x600000006;
          v114 = xmmword_1D0E7F320;
          v113 = &unk_1F4CDF278;
          v116 = v117;
          sub_1D0B89390(&v75, &v67, &v113);
          sub_1D0B894B0(v123, &v113);
        }

        v120 = 0x200000002;
        v118 = &unk_1F4CE0268;
        v119 = xmmword_1D0E83F70;
        v121 = &v122;
        if (sub_1D0BA10B0(v9, v8, &v118, COERCE_DOUBLE(0x200000002), v23))
        {
          LOWORD(v85) = 12;
          LOBYTE(v113) = 4;
          v36 = cnprint::CNLogFormatter::FormatGeneral(v9 + 2712, v8, "RavenEstimator::GetOscillatorProcessNoiseCovarianceMatrix failed");
          if (*(v9 + 2735) >= 0)
          {
            LOBYTE(v42) = v36;
          }

          else
          {
            v42 = *(v9 + 2712);
          }

          cnprint::CNPrinter::Print(&v85, &v113, "%s", v37, v38, v39, v40, v41, v42);
          return 0xFFFFFFFFLL;
        }

        else
        {
          v43 = 0;
          v115 = 0x800000008;
          v113 = &unk_1F4CE43B0;
          v116 = v117;
          v114 = xmmword_1D0E84510;
          memset(v117, 0, sizeof(v117));
          v44 = xmmword_1D0E7DD30;
          v45 = &v89 + 1;
          v46 = vdupq_n_s64(2uLL);
          v47 = vdupq_n_s64(6uLL);
          do
          {
            if (vmovn_s64(vcgtq_u64(v47, v44)).u8[0])
            {
              *(v45 - 1) = v43;
            }

            if (vmovn_s64(vcgtq_u64(vdupq_n_s64(6uLL), *&v44)).i32[1])
            {
              *v45 = v43 + 1;
            }

            v43 += 2;
            v44 = vaddq_s64(v44, v46);
            v45 += 2;
          }

          while (v43 != 6);
          v109 = 0x100000008;
          v107 = &unk_1F4CE43F8;
          v110 = &v111;
          v108 = xmmword_1D0E84530;
          v111 = v89;
          v112 = v90;
          sub_1D0BA16B8(&v85, &v113, &v107, &v107);
          sub_1D0B9F65C(&v85, v123);
          *&v89 = 0x700000006;
          v82 = 0x100000008;
          v80 = &unk_1F4CE43F8;
          v83 = &v84;
          v81 = xmmword_1D0E83F60;
          v84 = 0x700000006;
          sub_1D0BA16B8(&v85, &v113, &v80, &v80);
          sub_1D0B9F65C(&v85, &v118);
          v59 = 0x800000008;
          v57 = &unk_1F4CE43B0;
          v58 = xmmword_1D0E84510;
          v60 = &v61;
          LOBYTE(v85) = 0;
          sub_1D0B9F748(&v113, &v57, &v85);
          v64 = 0x800000008;
          v63 = xmmword_1D0E84510;
          v62 = &unk_1F4CE43B0;
          v65 = v66;
          v162 = 0x100000008;
          v161 = xmmword_1D0E84520;
          v160 = &unk_1F4CE43F8;
          v163 = v164;
          v87 = 0x100000020;
          v86 = xmmword_1D0E84540;
          v85 = &unk_1F4CE3988;
          v88 = &v89;
          sub_1D0B9F868(&v57, &v160, &v85, &v62);
          v48 = DWORD1(v63);
          v49 = v63;
          v72 = 0x800000008;
          v67 = &unk_1F4CE43B0;
          v73 = v74;
          v68 = DWORD1(v63);
          v69 = v63;
          v70 = v63 * DWORD1(v63);
          v71 = DWORD1(v63);
          if (DWORD1(v63))
          {
            v50 = 0;
            v51 = 0;
            v52 = HIDWORD(v63);
            v53 = v65;
            do
            {
              v54 = v50;
              v55 = v51;
              for (j = v49; j; --j)
              {
                v74[v55] = v53[v54];
                v55 += v48;
                ++v54;
              }

              ++v51;
              v50 += v52;
            }

            while (v51 != v48);
          }

          v162 = 0x100000008;
          v161 = xmmword_1D0E84520;
          v160 = &unk_1F4CE4320;
          v163 = v164;
          v87 = 0x800000008;
          v86 = xmmword_1D0E84510;
          v85 = &unk_1F4CE43B0;
          v88 = &v89;
          v77 = 0x800000008;
          v76 = xmmword_1D0E84510;
          v75 = &unk_1F4CE43B0;
          v78 = v79;
          sub_1D0B9FACC(&v67, &v160, &v85, &v75);
          sub_1D0B894B0(v6, &v75);
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1D0B9F2DC(_BYTE *a1, float64_t a2, float64_t a3, double a4)
{
  v17 = *MEMORY[0x1E69E9840];
  a1[8] = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15.f64[0] = a2;
  v15.f64[1] = a3;
  v16 = a4;
  if (cnnavigation::ECEFToLLA(&v15, 1, &v12, 0, &v11))
  {
    v7 = *MEMORY[0x1E69E9840];
    return 0;
  }

  else
  {
    v5.n128_u64[0] = v12;
    v6.n128_u64[0] = v13;
    v9 = *(*a1 + 16);
    v10 = *MEMORY[0x1E69E9840];

    return v9(a1, v5, v6);
  }
}

uint64_t sub_1D0B9F3C4(uint64_t a1, float64_t a2, float64_t a3, double a4)
{
  *(a1 + 8) = 0;
  *(a1 + 40) = 0x300000003;
  *(a1 + 16) = &unk_1F4CD5DD0;
  *(a1 + 24) = xmmword_1D0E76C10;
  *(a1 + 48) = a1 + 56;
  *a1 = &unk_1F4CD5D90;
  sub_1D0B9F2DC(a1, a2, a3, a4);
  return a1;
}

void sub_1D0B9F448(_Unwind_Exception *a1)
{
  *v1 = &unk_1F4CD5D18;
  v1[2] = &unk_1F4CD5E28;
  _Unwind_Resume(a1);
}

__n128 sub_1D0B9F484(uint64_t a1, uint64_t a2)
{
  result.n128_u64[0] = 0x600000006;
  *(a1 + 24) = 0x600000006;
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F4CDF278;
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

uint64_t sub_1D0B9F5D4(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v3 = *(a2 + 8);
    v2 = *(a2 + 12);
    *(result + 8) = v3;
    *(result + 12) = v2;
    v4 = v2 * v3;
    *(result + 16) = v4;
    *(result + 20) = v3;
    v5 = *(a2 + 16);
    if (v5 > 3)
    {
      v9 = (v5 - 1);
      v10 = *(result + 32);
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
      v10[v9] = v11[v9];
    }

    else if (v4 >= 1)
    {
      v6 = 0;
      v7 = *(a2 + 32);
      v8 = *(result + 32);
      do
      {
        *(v8 + 4 * v6) = *(v7 + 4 * v6);
        ++v6;
      }

      while (v6 < *(result + 16));
    }
  }

  return result;
}

uint64_t sub_1D0B9F65C(uint64_t result, uint64_t a2)
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
        v7 = *(result + 552);
        v8 = *(result + 592);
        v9 = *(v7 + 20) * *(*(result + 664) + 4 * v5);
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

void sub_1D0B9F748(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  sub_1D0B894B0(a2, a1);
  v5 = *(a2 + 12);
  v6 = *(a2 + 32);
  v13 = *(a2 + 20);
  dpotrf_NEWLAPACK();
  *a3 = 1;
  if (v5)
  {
    v7 = 0;
    v8 = *(a2 + 32);
    v9 = v5 - 1;
    v10 = 1;
    do
    {
      ++v7;
      v11 = v10;
      v12 = v9;
      if (v7 < v5)
      {
        do
        {
          *(v8 + 8 * v11++) = 0;
          --v12;
        }

        while (v12);
      }

      --v9;
      v10 += v5 + 1;
    }

    while (v7 != v5);
  }
}

void sub_1D0B9F868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D0B894B0(a4, a1);
  v12 = *(a4 + 8);
  v13 = *(a4 + 12);
  v14 = *(a4 + 32);
  v15 = *(a4 + 20);
  v16 = *(a2 + 32);
  v39 = *(a4 + 12);
  v40 = v12;
  if (v12 < 1)
  {
    v25 = -1;
  }

  else
  {
    v17 = 4 * v12;
    v18 = operator new[](4 * v12, MEMORY[0x1E69E5398]);
    if (v18)
    {
      v19 = v18;
      dgetrf_NEWLAPACK();
      memcpy(v16, v19, v17);
      MEMORY[0x1D387EC80](v19, 0x1000C8052888210);
      goto LABEL_7;
    }

    v25 = -5;
  }

  LOWORD(v40) = 4;
  LOBYTE(v39) = 5;
  cnprint::CNPrinter::Print(&v40, &v39, "Error using Inv: input argument %d invalid in getrf.", v7, v8, v9, v10, v11, -v25);
LABEL_7:
  v26 = *(a3 + 32);
  v27 = *(a3 + 28) * *(a3 + 24);
  v39 = v15;
  v40 = v13;
  if (v13 < 1)
  {
    v32 = -1;
  }

  else
  {
    v28 = 4 * v13;
    v29 = operator new[](v28, MEMORY[0x1E69E5398]);
    if (v29)
    {
      v30 = v29;
      memcpy(v29, v16, v28);
      dgetri_NEWLAPACK();
      v31 = MEMORY[0x1D387EC80](v30, 0x1000C8052888210);
      goto LABEL_13;
    }

    v32 = -4;
  }

  LOWORD(v40) = 4;
  LOBYTE(v39) = 5;
  cnprint::CNPrinter::Print(&v40, &v39, "Error using Inv: input argument %d invalid in getri.", v20, v21, v22, v23, v24, -v32);
LABEL_13:
  v33 = **(a3 + 32);
  if (v27 < v33 && cnprint::CNPrinter::GetLogLevel(v31) <= 1)
  {
    LOWORD(v40) = 4;
    LOBYTE(v39) = 1;
    cnprint::CNPrinter::Print(&v40, &v39, "Warning: Inv optimal workspace size %d is greater than provided workspace size %d; performance may suffer.", v34, v35, v36, v37, v38, v33);
  }
}

void sub_1D0B9FACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D0B894B0(a4, a1);
  v8 = *(a4 + 8);
  v9 = *(a4 + 32);
  v10 = *(a4 + 20);
  v11 = *(a2 + 32);
  v12 = *(a3 + 32);
  v13 = *(a3 + 28) * *(a3 + 24);
  v33 = *(a4 + 12);
  v34 = v8;
  v14 = dgeqrf_NEWLAPACK();
  v15 = **(a3 + 32);
  if (v13 < v15 && cnprint::CNPrinter::GetLogLevel(v14) <= 1)
  {
    LOWORD(v34) = 4;
    LOBYTE(v33) = 1;
    cnprint::CNPrinter::Print(&v34, &v33, "Warning: Qr optimal workspace size %d is greater than provided workspace size %d; performance may suffer.", v16, v17, v18, v19, v20, v15);
  }

  v21 = *(a1 + 8);
  if (v21 >= *(a1 + 12))
  {
    v21 = *(a1 + 12);
  }

  *(a2 + 8) = v21;
  *(a2 + 12) = 1;
  *(a2 + 16) = v21;
  *(a2 + 20) = v21;
  v22 = *(a3 + 24);
  v23 = *(a3 + 28);
  *(a3 + 8) = v22;
  *(a3 + 12) = v23;
  *(a3 + 16) = v23 * v22;
  *(a3 + 20) = v22;
  v24 = *(a4 + 12);
  if (v24)
  {
    v25 = 0;
    v26 = *(a4 + 8);
    v27 = *(a4 + 32);
    v28 = v26 - 1;
    v29 = *(a4 + 20) + 1;
    v30 = 1;
    do
    {
      ++v25;
      v31 = v30;
      v32 = v28;
      if (v25 < v26)
      {
        do
        {
          *(v27 + 8 * v31++) = 0;
          --v32;
        }

        while (v32);
      }

      --v28;
      v30 += v29;
    }

    while (v25 != v24);
  }
}

uint64_t sub_1D0B9FC58@<X0>(uint64_t result@<X0>, _BYTE *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  if (*a2 != 58 || a2[1])
  {
    __assert_rtn("operator()", "cnmatrix.h", 939, "strcmp(r, :) == 0");
  }

  v4 = *(result + 8);
  *(a4 + 24) = 0x100000002;
  *a4 = &unk_1F4CE0EA8;
  *(a4 + 8) = v4;
  *(a4 + 12) = 1;
  *(a4 + 16) = v4;
  *(a4 + 20) = v4;
  v5 = (a4 + 40);
  *(a4 + 32) = a4 + 40;
  if (v4)
  {
    v6 = *(result + 20) * a3;
    v7 = *(result + 32);
    do
    {
      *v5++ = *(v7 + 4 * v6++);
      --v4;
    }

    while (v4);
  }

  return result;
}

void *sub_1D0B9FD10(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
    if (v20 != (off_1F4CEE700 & 0x7FFFFFFFFFFFFFFFLL) && strcmp(v20, (off_1F4CEE700 & 0x7FFFFFFFFFFFFFFFLL)))
    {
      v26.__vftable = 0;
      std::bad_cast::bad_cast(&v26);
      v26.__vftable = &unk_1F4CE4880;
      sub_1D0DC7F8C();
    }

    v21 = *(a2 + 16);
    *a1 = &unk_1F4CEF7A8;

    return memcpy(a1 + 1, (v21 + 16), 0xA51uLL);
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

    return sub_1D0BAD0C8(a1);
  }
}

uint64_t cnprint::CNPrinter::GetLogLevel(cnprint::CNPrinter *this)
{
  cnprint::CNPrinter::GetCNPrinter(this);
  v3 = dword_1EC5FB8D0;
  if (!sub_1D0B7DED0(&stru_1EC5FB8D8, &v3))
  {
    return 255;
  }

  v1 = byte_1EC5FB950;
  std::timed_mutex::unlock(&stru_1EC5FB8D8);
  return v1;
}

uint64_t (**sub_1D0B9FF7C(uint64_t (**result)(void, void, void, void, void)))(void, void, void, void, void)
{
  if (*result)
  {
    return (*result)(0, result, 0, 0, 0);
  }

  return result;
}

double sub_1D0B9FFD4(uint64_t a1, double result)
{
  if (*a1 == 1)
  {
    v2 = *(a1 + 40);
    if (*(a1 + 48) != v2 && *(a1 + 16) > result && *(a1 + 8) <= result)
    {
      result = result / *(a1 + 24);
      ++*(v2 + 4 * result);
      ++*(a1 + 32);
    }
  }

  return result;
}

void *sub_1D0BA002C(void *a1, int a2)
{
  sub_1D0B751F4(__p, &unk_1D0ED80C5);
  sub_1D0BA00C8(a1, a2, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  *a1 = &unk_1F4CE42D8;
  a1[5] = 0;
  a1[6] = 0;
  return a1;
}

void sub_1D0BA00AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0BA00C8(uint64_t a1, int a2, uint64_t a3)
{
  *a1 = &unk_1F4CE4300;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  if (*(a3 + 23) < 0)
  {
    sub_1D0BC39B4(__p, *a3, *(a3 + 8));
  }

  else
  {
    *__p = *a3;
    v7 = *(a3 + 16);
  }

  sub_1D0BA01A8(a1, a2, __p);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_1D0BA0174(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (*(v14 + 39) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

double sub_1D0BA01A8(uint64_t a1, int a2, __int128 *a3)
{
  v5 = a2;
  if (*(a3 + 23) < 0)
  {
    sub_1D0BC39B4(&v6, *a3, *(a3 + 1));
    a2 = v5;
  }

  else
  {
    v6 = *a3;
    v7 = *(a3 + 2);
  }

  *(a1 + 8) = a2;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  result = *&v6;
  *(a1 + 16) = v6;
  *(a1 + 32) = v7;
  return result;
}

void *sub_1D0BA029C(void *a1, void (**a2)(uint64_t))
{
  *a1 = 0;
  a1[1] = 0;
  if (*a2)
  {
    (*a2)(2);
  }

  return a1;
}

const void **sub_1D0BA02E4(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_1D0C54E78(result, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

const void **sub_1D0BA03F0(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = v2 - v1;
  if (v2 == v1)
  {
    v4 = 0;
  }

  else
  {
    v4 = 26 * ((v2 - v1) >> 3) - 1;
  }

  v5 = *(a1 + 32);
  if ((v4 - (*(a1 + 40) + v5)) < 0x1A)
  {
    v7 = *(a1 + 24);
    v8 = *a1;
    v9 = &v7[-*a1];
    if (v3 < v9)
    {
      if (v1 != v8)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == v8)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9 >> 2;
    }

    v11[4] = a1;
    sub_1D0C54E78(a1, v10);
  }

  *(a1 + 32) = v5 + 26;
  v11[0] = *(v2 - 1);
  *(a1 + 16) = v2 - 8;
  return sub_1D0BA02E4(a1, v11);
}

void sub_1D0BA05F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  operator delete(v12);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1D0BA0660(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a2;
  if (*(a3 + 8) == 1)
  {
    v10 = *(a3 + 24);
  }

  else
  {
    LOWORD(v54.__vftable) = 3;
    LOBYTE(v56[0]) = 5;
    cnprint::CNPrinter::Print(&v54, v56, "Attempted to access type of uninitialized GenericEvent.", a4, a5, a6, a7, a8, v43);
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
    if (v19 != (off_1F4CEF340 & 0x7FFFFFFFFFFFFFFFLL) && strcmp(v19, (off_1F4CEF340 & 0x7FFFFFFFFFFFFFFFLL)))
    {
      v54.__vftable = 0;
      std::bad_cast::bad_cast(&v54);
      v54.__vftable = &unk_1F4CE4880;
      sub_1D0DC7F8C();
    }

    v20 = *(a3 + 16);
    v44 = &unk_1F4CEF5F8;
    v45 = *(v20 + 16);
    v21 = *(v20 + 64);
    v22 = *(v20 + 80);
    v23 = *(v20 + 48);
    v46 = *(v20 + 32);
    v49 = v22;
    v48 = v21;
    v47 = v23;
    v24 = *(v20 + 96);
    v25 = *(v20 + 112);
    v26 = *(v20 + 128);
    v53 = *(v20 + 144);
    v52 = v26;
    v51 = v25;
    v50 = v24;
  }

  else
  {
    LOWORD(v56[0]) = 3;
    v57 = 5;
    if (*(a3 + 8) == 1)
    {
      v18 = *(a3 + 24);
    }

    else
    {
      LOWORD(v54.__vftable) = 3;
      LOBYTE(v58) = 5;
      cnprint::CNPrinter::Print(&v54, &v58, "Attempted to access type of uninitialized GenericEvent.", v11, v12, v13, v14, v15, v43);
      v18 = MEMORY[0x1E69E54A8];
    }

    cnprint::CNPrinter::Print(v56, &v57, "Attempted to cast a GenericEvent of type %s to type %s.", v11, v12, v13, v14, v15, *(v18 + 8));
    v46 = 0uLL;
    v49 = 0uLL;
    v45 = 0uLL;
    v44 = &unk_1F4CEF5F8;
    v47 = 0uLL;
    v48 = 0uLL;
    *&v50 = 0;
    *(&v50 + 1) = 0x7FF8000000000000;
    *&v51 = 0;
    *(&v51 + 1) = 0x3FF0000000000000;
    v52 = 0uLL;
    v53 = 0x7FF0000000000000;
  }

  v27 = raven::RavenEstimator::HandleTurnStateEvent((v9 + 288), &v44);
  if (v28)
  {
    v58 = 12;
    v57 = 2;
    v56[0] = v44[2](&v44, v27);
    v56[1] = v29;
    (v44[3])(&v54, &v44);
    if (v55 >= 0)
    {
      v35 = &v54;
    }

    else
    {
      v35 = v54.__vftable;
    }

    v36 = cnprint::CNLogFormatter::FormatWarning(v9 + 240, v56, "Failed to handle event - %s.", v30, v31, v32, v33, v34, v35);
    if (*(v9 + 263) >= 0)
    {
      LOBYTE(v42) = v36;
    }

    else
    {
      v42 = *(v9 + 240);
    }

    cnprint::CNPrinter::Print(&v58, &v57, "%s", v37, v38, v39, v40, v41, v42);
    if (v55 < 0)
    {
      operator delete(v54.__vftable);
    }
  }
}

__n128 raven::RavenEstimator::HandleTurnStateEvent(raven::RavenEstimator *this, const raven::TurnStateEvent *a2)
{
  if (*(this + 57))
  {
    if (*(this + 2288) == 1)
    {
      *(this + 144) = *(a2 + 8);
      v4 = *(a2 + 24);
      v5 = *(a2 + 40);
      v6 = *(a2 + 56);
      *(this + 148) = *(a2 + 72);
      *(this + 147) = v6;
      *(this + 146) = v5;
      *(this + 145) = v4;
      result = *(a2 + 88);
      v8 = *(a2 + 104);
      v9 = *(a2 + 120);
      *(this + 304) = *(a2 + 17);
      *(this + 151) = v9;
      *(this + 150) = v8;
      *(this + 149) = result;
    }

    else
    {
      *(this + 287) = &unk_1F4CEF5F8;
      *(this + 144) = *(a2 + 8);
      v22 = *(a2 + 24);
      v23 = *(a2 + 40);
      v24 = *(a2 + 56);
      *(this + 148) = *(a2 + 72);
      *(this + 147) = v24;
      *(this + 146) = v23;
      *(this + 145) = v22;
      result = *(a2 + 88);
      v25 = *(a2 + 104);
      v26 = *(a2 + 120);
      *(this + 304) = *(a2 + 17);
      *(this + 151) = v26;
      *(this + 150) = v25;
      *(this + 149) = result;
      *(this + 2288) = 1;
    }
  }

  else if (cnprint::CNPrinter::GetLogLevel(this) <= 1)
  {
    v30 = 12;
    v29 = 1;
    v28[0] = (*(*a2 + 16))(a2);
    v28[1] = v10;
    cnprint::CNLogFormatter::FormatWarning(this + 2712, v28, "Estimator not configured, failed to handle TurnStateEvent.", v11, v12, v13, v14, v15, v27);
    if (*(this + 2735) >= 0)
    {
      LOBYTE(v21) = this - 104;
    }

    else
    {
      v21 = *(this + 339);
    }

    cnprint::CNPrinter::Print(&v30, &v29, "%s", v16, v17, v18, v19, v20, v21);
  }

  return result;
}

uint64_t cnnavigation::ECEFToLLA(float64x2_t *a1, int a2, uint64_t a3, char a4, uint64_t a5)
{
  v5 = *a1;
  v6 = a1[1].f64[0];
  v7 = a1->f64[1];
  v8 = vmuld_lane_f64(v7, *a1, 1) + v5.f64[0] * v5.f64[0];
  v9 = sqrt(v8 + v6 * v6);
  if (v9 <= 0.00000001)
  {
    return 1;
  }

  if (a2 == 1)
  {
    v20 = sqrt(v8);
    if (fabs(v6 / v20) >= 100000000.0)
    {
      if (v6 <= 0.0)
      {
        v31 = -1.57079633;
        if (v6 >= 0.0)
        {
          v31 = 0.0;
        }
      }

      else
      {
        v31 = 1.57079633;
      }

      *a3 = v31;
      *(a3 + 8) = 0;
      *(a3 + 16) = v9 + -6356752.31;
      if (a4)
      {
        result = 0;
        *a5 = 0;
        *(a5 + 8) = 0;
        *(a5 + 16) = 0;
        *(a5 + 24) = 0;
        *(a5 + 48) = vdivq_f64(v5, vdupq_lane_s64(*&v9, 0));
        *(a5 + 64) = v6 / v9;
        *(a5 + 32) = 0;
        *(a5 + 40) = 0;
        return result;
      }
    }

    else
    {
      v46 = v6 / v20;
      v52 = v20;
      __xa = *a1;
      v21 = atan2(v6, v20);
      v47 = atan2(v7, __xa.f64[0]);
      v22 = 0.0;
      v23 = 10;
      *&v24 = INFINITY;
      v25 = 6378137.0;
      v26 = INFINITY;
      do
      {
        v27 = *&v24;
        *&v24 = v22;
        v28 = v21;
        if (vabdd_f64(v22, v27) <= 0.0005 && vabdd_f64(v21, v26) <= 7.9e-11)
        {
          break;
        }

        v29 = sin(v21);
        v25 = 6378137.0 / sqrt(v29 * -0.00669437999 * v29 + 1.0);
        v21 = atan(v6 / (v52 * (v25 * -0.00669437999 / (v22 + v25) + 1.0)));
        v22 = v52 / cos(v21) - v25;
        v26 = v28;
        --v23;
      }

      while (v23);
      *a3 = v21;
      *(a3 + 8) = v47;
      *(a3 + 16) = v22;
      if (a4)
      {
        v32 = __sincos_stret(v21);
        v33 = tan(v21);
        v34 = pow(v32.__sinval * -0.00669437999 * v32.__sinval + 1.0, -1.5);
        result = 0;
        v35 = v32.__cosval * (v32.__sinval * 42697.6727) * v34;
        v36 = v52 * v32.__sinval / (v32.__cosval * v32.__cosval) - v35;
        v37 = v25 / (v25 + v22);
        v38 = v37 * -0.00669437999 + 1.0;
        v39 = v46 * 0.00669437999 / (v38 * v38);
        v40 = -(v39 * v37) / (v25 + v22);
        v41.f64[0] = v33 * v33 + 1.0 - (v36 * v40 + v22 * v39 / ((v25 + v22) * (v25 + v22)) * v35);
        v42 = vdivq_f64(__xa, vdupq_lane_s64(COERCE__INT64(v52 * v32.__cosval), 0));
        v43 = vdivq_f64(vnegq_f64(__xa), vdupq_lane_s64(*&v52, 0));
        v44 = vdivq_f64(vmlaq_n_f64(vmulq_n_f64(v42, v40), vdivq_f64(vmulq_n_f64(v43, v39), vdupq_lane_s64(COERCE__INT64(v52 * 0.00669437999), 0)), v38), vdupq_lane_s64(*&v41.f64[0], 0));
        v43.f64[0] = 1.0 / (v52 * v38);
        *(a5 + 48) = vmlaq_n_f64(v42, v44, v36);
        v41.f64[1] = v52;
        v45 = vdivq_f64(v43, v41);
        *(a5 + 64) = v36 * v45.f64[0];
        *a5 = v44;
        *(a5 + 16) = v45;
        *(a5 + 32) = __xa.f64[0] / v52 / v52;
        *(a5 + 40) = 0;
        return result;
      }
    }
  }

  else
  {
    if (a2)
    {
      return 2;
    }

    v13 = sqrt(v8);
    if (fabs(v6 / v13) >= 100000000.0)
    {
      if (v6 <= 0.0)
      {
        v30 = -1.57079633;
        if (v6 >= 0.0)
        {
          v30 = 0.0;
        }
      }

      else
      {
        v30 = 1.57079633;
      }

      *a3 = v30;
      *(a3 + 8) = 0;
      *(a3 + 16) = v9 + -6371009.0;
      if (a4)
      {
        *(a5 + 16) = 0u;
        *(a5 + 32) = 0u;
        *a5 = 0u;
        v15 = v6 / v9;
        goto LABEL_23;
      }
    }

    else
    {
      v50 = v13;
      v51 = v9;
      __x = *a1;
      *a3 = atan2(a1[1].f64[0], v13);
      v14 = atan2(v7, __x.f64[0]);
      v9 = v51;
      *(a3 + 8) = v14;
      *(a3 + 16) = v51 + -6371009.0;
      if (a4)
      {
        v15 = v6 / v51;
        v16 = vnegq_f64(__x);
        v17 = vmulq_n_f64(vdivq_f64(v16, vdupq_lane_s64(*&v51, 0)), v6 / v51);
        v16.f64[0] = v50;
        v18.f64[0] = v51;
        v18.f64[1] = v50;
        *a5 = vdivq_f64(v17, vdupq_lane_s64(*&v50, 0));
        *(a5 + 16) = vdivq_f64(vdivq_f64(v16, v18), v18);
        *(a5 + 32) = __x.f64[0] / v50 / v50;
        *(a5 + 40) = 0;
        v5 = __x;
LABEL_23:
        result = 0;
        *(a5 + 48) = vdivq_f64(v5, vdupq_lane_s64(*&v9, 0));
        *(a5 + 64) = v15;
        return result;
      }
    }
  }

  return 0;
}

uint64_t sub_1D0BA1010(uint64_t a1, double a2, double a3)
{
  v5 = __sincos_stret(a2);
  v6 = __sincos_stret(a3);
  v7 = *(a1 + 48);
  *v7 = -v6.__sinval;
  v8 = *(a1 + 36);
  v9 = (v7 + 8 * v8);
  *v9 = -(v6.__cosval * v5.__sinval);
  v10 = (v7 + 16 * v8);
  *v10 = v5.__cosval * v6.__cosval;
  *(v7 + 8) = v6.__cosval;
  v9[1] = -(v6.__sinval * v5.__sinval);
  *(v7 + 8 * ((2 * v8) | 1)) = v5.__cosval * v6.__sinval;
  *(v7 + 16) = 0;
  v9[2] = v5.__cosval;
  v10[2] = v5.__sinval;
  *(a1 + 8) = 1;
  return 1;
}

uint64_t sub_1D0BA10B0(uint64_t a1, double *a2, uint64_t a3, double a4, int8x16_t a5)
{
  v109 = *a2;
  v8.i64[1] = *(&v109 + 1);
  v9 = a2[2];
  v106 = 0;
  v107 = 0.0;
  *v8.i64 = v9;
  *v10.i64 = CNTimeSpan::SetTimeSpan(&v106, 0, v8, a5);
  v12 = CNTimeSpan::operator-(a2, &v106, v10, v11);
  v108[0] = v12;
  v108[1] = v13;
  v14 = fabs(v9);
  v15 = a2[3];
  v16 = a2[4];
  v17 = v9 * v9;
  v18 = v17 * v14;
  *(a3 + 8) = xmmword_1D0E83F70;
  v19 = *(a1 + 2440);
  if ((v19 & 1) == 0)
  {
    v20 = 0;
    v23 = ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF && v15 >= 0.0 || (*&v15 - 1) < 0xFFFFFFFFFFFFFLL;
    v26 = ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF && v16 >= 0.0 || (*&v16 - 1) < 0xFFFFFFFFFFFFFLL;
    goto LABEL_51;
  }

  v20 = *(a1 + 2536);
  v23 = ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF && v15 >= 0.0 || (*&v15 - 1) < 0xFFFFFFFFFFFFFLL;
  v26 = ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF && v16 >= 0.0 || (*&v16 - 1) < 0xFFFFFFFFFFFFFLL;
  if (v20 != 1 || !v26)
  {
LABEL_51:
    v44 = 0;
    v45 = 0;
    LOBYTE(v46) = 1;
    goto LABEL_52;
  }

  v105[0] = (*(*(a1 + 2448) + 16))(a1 + 2448);
  v105[1] = v27;
  v30 = CNTimeSpan::operator-(&v109, v105, v28, v29);
  v106 = v30;
  v107 = v31;
  if (v30 < 0 || (*v32.i64 = v31, v31 < 0.0))
  {
    v30 = CNTimeSpan::operator-(&v106, v32, v33);
    v32.i64[0] = v34;
  }

  if ((*(a1 + 2440) & 1) == 0)
  {
    goto LABEL_124;
  }

  v35 = *v32.i64 + v30;
  v103[0] = (*(*(a1 + 2448) + 16))(a1 + 2448);
  v103[1] = v36;
  v12 = CNTimeSpan::operator-(v108, v103, v37, v38);
  v104[0] = v12;
  *&v104[1] = v39;
  if (v12 < 0 || (*v40.i64 = v39, v39 < 0.0))
  {
    v12 = CNTimeSpan::operator-(v104, v40, v41);
    v40.i64[0] = v42;
  }

  v43 = *v40.i64 + v12;
  if (v35 > v43)
  {
    v43 = v35;
  }

  if (v43 <= v16)
  {
    if (*(a1 + 2440))
    {
      if ((*(a1 + 2536) & 1) == 0)
      {
        sub_1D0C42F28();
      }

      v81 = *(a1 + 2532);
      v84 = ((LODWORD(v81) & 0x7FFFFFFFu) - 0x800000) >> 24 < 0x7F && v81 >= 0.0 || (LODWORD(v81) - 1) < 0x7FFFFF;
      v85 = *(a1 + 2524);
      v88 = ((LODWORD(v85) & 0x7FFFFFFFu) - 0x800000) >> 24 < 0x7F && v85 >= 0.0 || (LODWORD(v85) - 1) < 0x7FFFFF;
      v89 = *(a1 + 2528);
      v92 = ((LODWORD(v89) & 0x7FFFFFFFu) - 0x800000) >> 24 < 0x7F && v89 >= 0.0 || (LODWORD(v89) - 1) < 0x7FFFFF;
      v93 = *(a1 + 2520);
      v96 = ((LODWORD(v93) & 0x7FFFFFFFu) - 0x800000) >> 24 < 0x7F && v93 >= 0.0 || (LODWORD(v93) - 1) < 0x7FFFFF;
      v46 = (v84 || v88) && v92 || v96;
      if ((v23 & v46) == 1)
      {
        v97 = 0.0;
        v98 = 0.0;
        if (v84)
        {
          v98 = v14 / v15 * v81 * 0.000001;
        }

        v99 = v85 * 0.001 * (v85 * 0.001);
        if (!v88)
        {
          v99 = 0.0;
        }

        if (v92)
        {
          v97 = v14 / v15 * v89 * 0.000001;
        }

        result = 0;
        v100 = v93 * 0.001 * (v93 * 0.001);
        if (!v96)
        {
          v100 = 0.0;
        }

        v101 = *(a3 + 32);
        *v101 = v98 + v99 * v14 + v100 * 0.333333333 * v18;
        v102 = v17 * (v100 * 0.5);
        v79 = &v101[*(a3 + 20)];
        *v79 = v102;
        v101[1] = v102;
        v80 = v97 + v100 * v14;
        goto LABEL_121;
      }

      v45 = 1;
      v44 = (v84 || v88) && v92 || v96;
      goto LABEL_123;
    }

LABEL_124:
    __assert_rtn("operator->", "optional.hpp", 1221, "this->is_initialized()");
  }

  v44 = 0;
  v45 = 0;
  LOBYTE(v46) = 1;
LABEL_123:
  v20 = 1;
  v26 = 1;
LABEL_52:
  LogLevel = cnprint::CNPrinter::GetLogLevel(v12);
  if (LogLevel)
  {
    if (v46)
    {
      goto LABEL_64;
    }
  }

  else
  {
    LOWORD(v106) = 12;
    LOBYTE(v105[0]) = 0;
    v52 = cnprint::CNLogFormatter::FormatGeneral(a1 + 2712, v108, "RavenEstimator::GetOscillatorProcessNoiseCovarianceMatrix using default xo model.  lgpms,%d,xams,%d,gorv,%d,xamvdv,%d,xamu,%d,xamv,%d", v19, v20, v23, v26, v45, v44);
    if (*(a1 + 2735) >= 0)
    {
      LOBYTE(v58) = v52;
    }

    else
    {
      v58 = *(a1 + 2712);
    }

    cnprint::CNPrinter::Print(&v106, v105, "%s", v53, v54, v55, v56, v57, v58);
    if (v46)
    {
      goto LABEL_64;
    }
  }

  if (cnprint::CNPrinter::GetLogLevel(LogLevel) <= 1)
  {
    LOWORD(v106) = 12;
    LOBYTE(v105[0]) = 1;
    v59 = cnprint::CNLogFormatter::FormatGeneral(a1 + 2712, v108, "RavenEstimator::GetOscillatorProcessNoiseCovarianceMatrix encountered invalid xo model.  Using default model.");
    if (*(a1 + 2735) >= 0)
    {
      LOBYTE(v65) = v59;
    }

    else
    {
      v65 = *(a1 + 2712);
    }

    cnprint::CNPrinter::Print(&v106, v105, "%s", v60, v61, v62, v63, v64, v65);
  }

LABEL_64:
  v66 = a2[5];
  v67 = a2[6];
  if ((*&v66 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && v66 > 0.0 && (*&v67 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && v67 > 0.0)
  {
    result = 0;
    v76 = v66 * 1000000.0 * 1000000.0 * 49.348022;
    v77 = *(a3 + 32);
    *v77 = v18 * (v76 * 0.333333333) + v67 * 1000000.0 * 1000000.0 * 1.25 * v14;
    v78 = v17 * (v76 * 0.5);
    v79 = &v77[*(a3 + 20)];
    *v79 = v78;
    v77[1] = v78;
    v80 = v14 * v76;
LABEL_121:
    v79[1] = v80;
    return result;
  }

  LOWORD(v106) = 12;
  LOBYTE(v105[0]) = 5;
  v68 = cnprint::CNLogFormatter::FormatGeneral(a1 + 2712, v108, "RavenEstimator::GetOscillatorProcessNoiseCovarianceMatrix called with invalid parameters xo_alpha,%.3lf,xo_gamma,%.3lf.", v66, v67);
  if (*(a1 + 2735) >= 0)
  {
    LOBYTE(v74) = v68;
  }

  else
  {
    v74 = *(a1 + 2712);
  }

  cnprint::CNPrinter::Print(&v106, v105, "%s", v69, v70, v71, v72, v73, v74);
  return 0xFFFFFFFFLL;
}

uint64_t sub_1D0BA16B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 24) = 0x800000008;
  *(a1 + 8) = xmmword_1D0E84510;
  *(a1 + 32) = a1 + 40;
  *a1 = &unk_1F4CE4440;
  *(a1 + 552) = a2;
  *(a1 + 584) = 0x100000008;
  *(a1 + 560) = &unk_1F4CE43F8;
  *(a1 + 568) = xmmword_1D0E84520;
  *(a1 + 592) = a1 + 600;
  *(a1 + 656) = 0x100000008;
  *(a1 + 632) = &unk_1F4CE43F8;
  *(a1 + 640) = xmmword_1D0E84520;
  *(a1 + 664) = a1 + 672;
  sub_1D0B9F5D4(a1 + 560, a3);
  sub_1D0B9F5D4(a1 + 632, a4);
  v7 = *(a1 + 576);
  v8 = *(a1 + 648);
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
        v13 = *(a1 + 592);
        v14 = *(*(a1 + 664) + 4 * v10) * v11;
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

__n128 sub_1D0BA1824(uint64_t a1, uint64_t a2)
{
  result.n128_u64[0] = 0x100000008;
  *(a1 + 24) = 0x100000008;
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F4CE4320;
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
  if (v4 > 8)
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

void sub_1D0BA196C(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 32)
  {
    if (*(i - 1) < 0)
    {
      operator delete(*(i - 24));
    }
  }

  a1[1] = v2;
}

uint64_t sub_1D0BA19BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x1EEE9AC00](a1, a2, a3, a4);
  v248 = v6;
  v249 = v5;
  v253 = v7;
  v9 = v8;
  v10 = v4;
  if (!*(v4 + 1540))
  {
    sub_1D0B894B0(v4 + 768, v4 + 8);
    sub_1D0B894B0(v10 + 872, v10 + 112);
    sub_1D0B894B0(v10 + 1424, v10 + 664);
  }

  v11 = *(v9 + 8);
  if ((v11 & 0x80000000) != 0)
  {
    goto LABEL_314;
  }

  v12 = *(v10 + 776);
  v13 = *(v10 + 780);
  v260 = 0x100000008;
  v255 = &unk_1F4CE4320;
  v261 = v262;
  v256 = v11;
  v257 = 1;
  v258 = v11;
  v259 = v11;
  if (v11 > 3)
  {
    v14 = &v262[v11];
    bzero(v262, 16 * ((v11 - 1) >> 1));
    *(v14 - 2) = 0;
    *(v14 - 1) = 0;
  }

  else if (v11)
  {
    bzero(v262, 8 * v11);
  }

  if (v12 <= v13)
  {
    LODWORD(v15) = v13;
  }

  else
  {
    LODWORD(v15) = v12;
  }

  if (v13)
  {
    v16 = v12 == 0;
  }

  else
  {
    v16 = 1;
  }

  if (v16)
  {
    v15 = 0;
  }

  else
  {
    v15 = v15;
  }

  v254 = v15;
  v17 = *(v249 + 8);
  v18 = *(v249 + 12);
  if (v17 <= v18)
  {
    v19 = *(v249 + 12);
  }

  else
  {
    v19 = *(v249 + 8);
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

  v251 = v21;
  sub_1D0B9FC58(v253, ":", 0, &v299);
  v354 = v355;
  v22 = DWORD1(v300);
  *v353 = 1;
  *&v353[4] = DWORD1(v300);
  *&v353[20] = 1;
  *&v353[8] = DWORD1(v300);
  *&v353[12] = 0x200000001;
  if (DWORD1(v300))
  {
    v23 = 0;
    v24 = v302;
    v25 = v300;
    v26 = v300 - 1;
    v27 = 1;
    do
    {
      v28 = v24[v25 * v23];
      v29 = v27;
      v30 = v26;
      if (v25 >= 2)
      {
        do
        {
          v28 += v24[v29++];
          --v30;
        }

        while (v30);
      }

      v355[v23++] = v28;
      v27 += v25;
    }

    while (v23 != v22);
  }

  sub_1D0B9FC58(v253, ":", 1, &v299);
  v354 = v355;
  v31 = DWORD1(v300);
  *v353 = 1;
  *&v353[4] = DWORD1(v300);
  *&v353[20] = 1;
  *&v353[8] = DWORD1(v300);
  *&v353[12] = 0x200000001;
  if (DWORD1(v300))
  {
    v32 = 0;
    v33 = v302;
    v34 = v300;
    v35 = v300 - 1;
    v36 = 1;
    do
    {
      v37 = v33[v34 * v32];
      v38 = v36;
      v39 = v35;
      if (v34 >= 2)
      {
        do
        {
          v37 += v33[v38++];
          --v39;
        }

        while (v39);
      }

      v355[v32++] = v37;
      v36 += v34;
    }

    while (v32 != v31);
  }

  v40 = *(v10 + 3024);
  v242 = *(v10 + 3049);
  if (!*(v10 + 776) || !*(v10 + 780))
  {
    if ((v254 & 0x80000000) == 0)
    {
      *&v353[16] = 0x100000008;
      v352 = &unk_1F4CE4320;
      v354 = v355;
      *v353 = v254;
      *&v353[4] = 1;
      *&v353[8] = v254;
      *&v353[12] = v254;
      if (v254 > 3)
      {
        v41 = &v355[2 * v254];
        bzero(v355, 16 * ((v254 - 1) >> 1));
        *(v41 - 2) = 0;
        *(v41 - 1) = 0;
      }

      else if (v254)
      {
        bzero(v355, (8 * v254));
      }

      sub_1D0B894B0(v10 + 768, &v352);
      goto LABEL_44;
    }

LABEL_314:
    __assert_rtn("Zeros", "cnmatrix.h", 3098, "nr >= 0");
  }

LABEL_44:
  if (!*(v10 + 880) || !*(v10 + 884))
  {
    if ((v254 & 0x80000000) != 0)
    {
      __assert_rtn("Zeros", "cnmatrix.h", 3056, "n >= 0");
    }

    *&v353[16] = 0x800000008;
    v352 = &unk_1F4CE43B0;
    v354 = v355;
    v42 = v254 * v254;
    *v353 = v254;
    *&v353[4] = v254;
    *&v353[8] = v254 * v254;
    *&v353[12] = v254;
    if (v254 * v254 > 3)
    {
      v43 = &v355[2 * v42];
      bzero(v355, 16 * ((v42 - 1) >> 1));
      *(v43 - 2) = 0;
      *(v43 - 1) = 0;
    }

    else if (v42 >= 1)
    {
      bzero(v355, 8 * (v254 * v254));
    }

    sub_1D0B894B0(v10 + 872, &v352);
  }

  if (!*(v10 + 1432) || !*(v10 + 1436))
  {
    *&v353[16] = 0x100000008;
    *v353 = xmmword_1D0E84520;
    v352 = &unk_1F4CE4320;
    v354 = v355;
    sub_1D0B89390(v10 + 872, v10 + 768, &v352);
    sub_1D0B894B0(v10 + 1424, &v352);
  }

  if ((v254 & 0x80000000) != 0)
  {
    __assert_rtn("Zeros", "cnmatrix.h", 3099, "nc >= 0");
  }

  *&v353[16] = 0x800000008;
  v352 = &unk_1F4CE43B0;
  v354 = v355;
  v44 = v254 * v11;
  *v353 = v11;
  *&v353[4] = v254;
  *&v353[8] = v254 * v11;
  *&v353[12] = v11;
  v238 = v254 * v11;
  if (v254 * v11 > 3)
  {
    v45 = &v355[2 * v44];
    bzero(v355, 16 * ((v44 - 1) >> 1));
    *(v45 - 2) = 0;
    *(v45 - 1) = 0;
  }

  else if (v44 >= 1)
  {
    bzero(v355, 8 * (v254 * v11));
  }

  sub_1D0B894B0(v10 + 1752, &v352);
  *&v353[16] = 0x100000008;
  v352 = &unk_1F4CE4320;
  v354 = v355;
  *v353 = v11;
  *&v353[4] = 1;
  *&v353[8] = v11;
  *&v353[12] = v11;
  if (v11 > 3)
  {
    v46 = &v355[2 * v11];
    bzero(v355, 16 * ((v11 - 1) >> 1));
    *(v46 - 2) = 0;
    *(v46 - 1) = 0;
  }

  else if (v11)
  {
    bzero(v355, 8 * v11);
  }

  v247 = v11;
  sub_1D0B894B0(v10 + 2304, &v352);
  v47 = sub_1D0B894B0(v10 + 2408, v9);
  *(v10 + 1540) = 1;
  *(v10 + 16) = v254;
  *(v10 + 20) = 1;
  *(v10 + 24) = v254;
  *(v10 + 28) = v254;
  sub_1D0BA49A0(&v350, v251, 1, v47);
  sub_1D0BA4F14(&v348, v251, 1, v48, v49);
  sub_1D0BA4F14(&v346, v251, 1, v50, v51);
  v343 = 0x100000008;
  v342 = xmmword_1D0E84520;
  v341 = &unk_1F4CE43F8;
  v344 = &v345;
  v338 = 0x100000008;
  v337 = xmmword_1D0E84520;
  v336 = &unk_1F4CE43F8;
  v339 = &v340;
  v243 = v10;
  v240 = v9;
  if (v251 < 1)
  {
LABEL_117:
    if (v242)
    {
      v98 = v251;
    }

    else
    {
      v98 = 1;
    }

    v239 = v98;
    sub_1D0BA1824(v335, v10 + 768);
    sub_1D0BA57FC(&v330, v10 + 872);
    sub_1D0BA1824(v329, v10 + 1424);
    *(v10 + 1760) = 0u;
    *(v10 + 2312) = 0u;
    *(v10 + 2416) = 0u;
    v326 = 0x800000008;
    v99 = xmmword_1D0E84510;
    v325 = xmmword_1D0E84510;
    v324 = &unk_1F4CE43B0;
    v327 = v328;
    v321 = 0x800000008;
    v319 = &unk_1F4CE43B0;
    v100 = v254 * v254;
    v322 = v323;
    LODWORD(v320) = v254;
    DWORD1(v320) = v254;
    DWORD2(v320) = v254 * v254;
    HIDWORD(v320) = v254;
    if (v254 * v254 > 3)
    {
      v102 = &v323[v100];
      bzero(v323, 16 * ((v100 - 1) >> 1));
      v99 = xmmword_1D0E84510;
      *(v102 - 2) = 0;
      *(v102 - 1) = 0;
    }

    else if (v100 >= 1)
    {
      bzero(v323, 8 * (v254 * v254));
      v99 = xmmword_1D0E84510;
    }

    if (v254)
    {
      v103 = 0;
      v104 = v254;
      v105 = v322;
      do
      {
        v105[v103] = 0x3FF0000000000000;
        v103 += v254 + 1;
        --v104;
      }

      while (v104);
    }

    v316 = 0x800000008;
    v315 = v99;
    v314 = &unk_1F4CE43B0;
    v317 = v318;
    v311 = 0x100000008;
    v310 = xmmword_1D0E84520;
    v309 = &unk_1F4CE4320;
    v312 = &v313;
    v306 = 0x100000008;
    v305 = xmmword_1D0E84520;
    v304 = &unk_1F4CE4320;
    v307 = &v308;
    if (v239 < 1)
    {
LABEL_299:
      sub_1D0B894B0(v10 + 112, &v330);
      sub_1D0B894B0(v10 + 664, v329);
      result = 0;
      *(v10 + 1540) = 0;
      return result;
    }

    v244 = 0;
    v106 = 0;
    v107 = 0;
    v237 = &v355[2 * v238];
    v252 = vdupq_n_s64(v254 - 1);
    v246 = vdupq_n_s64(v247 - 1);
    v245 = vdupq_n_s64(4uLL);
    v250 = v254;
    while (1)
    {
      if (v242)
      {
        v108 = v244;
        if (v244)
        {
          if ((v250 & 0x80000000) != 0)
          {
            __assert_rtn("Eye", "cnmatrix.h", 2094, "n >= 0");
          }

          v301 = 0x800000008;
          v299 = &unk_1F4CE43B0;
          v109 = v250 * v250;
          v302 = v303;
          LODWORD(v300) = v250;
          DWORD1(v300) = v250;
          DWORD2(v300) = v250 * v250;
          HIDWORD(v300) = v250;
          if ((v250 * v250) > 3)
          {
            bzero(v303, 16 * ((v109 - 1) >> 1));
            v155 = &v301 + v109;
            *v155 = 0;
            v155[1] = 0;
          }

          else if (v109 >= 1)
          {
            bzero(v303, 8 * v250 * v250);
          }

          if (v250)
          {
            v156 = 0;
            v157 = v302;
            v158 = v250;
            do
            {
              *&v157[2 * v156] = 0x3FF0000000000000;
              v156 += v250 + 1;
              --v158;
            }

            while (v158);
          }

          sub_1D0BA16B8(&v352, &v319, &v341, &v341);
          v108 = v244;
          sub_1D0B9F65C(&v352, &v299);
        }

        v159 = *(*(v253 + 32) + 4 * v108);
        v265 = 0x800000001;
        v263 = &unk_1F4CE13B8;
        v266 = v267;
        if (v159 == 1)
        {
          v160 = 0;
          *&v161 = 0x100000001;
          *(&v161 + 1) = 0x100000001;
          v264 = v161;
          v267[0] = 0;
          v162 = 1;
          LODWORD(v159) = 1;
        }

        else if (v159 <= 0)
        {
          v162 = 0;
          LODWORD(v159) = 0;
          v264 = 0uLL;
          v160 = 1;
        }

        else
        {
          v163 = 0;
          LODWORD(v264) = 1;
          DWORD1(v264) = v159;
          *(&v264 + 1) = v159 | 0x100000000;
          v164 = v268;
          v165 = xmmword_1D0E7DD30;
          v166 = xmmword_1D0E84440;
          v167 = vdupq_n_s64(v159 - 1);
          do
          {
            v168 = vmovn_s64(vcgeq_u64(v167, v165));
            if (vuzp1_s16(v168, *v165.i8).u8[0])
            {
              *(v164 - 3) = v163;
            }

            if (vuzp1_s16(v168, *&v165).i8[2])
            {
              *(v164 - 2) = v163 + 1;
            }

            if (vuzp1_s16(*&v165, vmovn_s64(vcgeq_u64(v167, *&v166))).i32[1])
            {
              *(v164 - 1) = v163 + 2;
              *v164 = v163 + 3;
            }

            v163 += 4;
            v169 = vdupq_n_s64(4uLL);
            v166 = vaddq_s64(v166, v169);
            v165 = vaddq_s64(v165, v169);
            v164 += 4;
          }

          while (((v159 + 3) & 0xFFFFFFFC) != v163);
          v160 = 0;
          v162 = 1;
        }

        v301 = 0x100000008;
        v299 = &unk_1F4CE43F8;
        v302 = v303;
        *&v300 = __PAIR64__(v162, v159);
        DWORD2(v300) = v159 * v162;
        HIDWORD(v300) = v159;
        if (v159)
        {
          v170 = 0;
          v171 = 0;
          do
          {
            if ((v160 & 1) == 0)
            {
              v172 = 0;
              do
              {
                v303[v171 + HIDWORD(v300) * v172] = v267[v170 + v172];
                ++v172;
              }

              while (v162 != v172);
            }

            ++v171;
            v170 += v162;
          }

          while (v171 != v159);
          v173 = v300;
          v162 = DWORD1(v300);
        }

        else
        {
          v173 = 0;
        }

        *&v353[16] = 0x100000008;
        v352 = &unk_1F4CE43F8;
        v354 = v355;
        *v353 = v173;
        *&v353[4] = v162;
        v174 = (v173 * v162);
        *&v353[8] = v174;
        *&v353[12] = v173;
        if (v174 >= 1)
        {
          v175 = v303;
          v176 = v355;
          do
          {
            v177 = *v175++;
            *v176++ = v177 + v107;
            --v174;
          }

          while (v174);
        }

        sub_1D0B9F5D4(&v341, &v352);
        v178 = *(*(v253 + 32) + 4 * (*(v253 + 20) + v108));
        v265 = 0x800000001;
        v263 = &unk_1F4CE13B8;
        v266 = v267;
        if (v178 == 1)
        {
          v179 = 0;
          *&v180 = 0x100000001;
          *(&v180 + 1) = 0x100000001;
          v264 = v180;
          v267[0] = 0;
          v181 = 1;
          LODWORD(v178) = 1;
        }

        else if (v178 <= 0)
        {
          v181 = 0;
          LODWORD(v178) = 0;
          v264 = 0uLL;
          v179 = 1;
        }

        else
        {
          v182 = 0;
          LODWORD(v264) = 1;
          DWORD1(v264) = v178;
          *(&v264 + 1) = v178 | 0x100000000;
          v183 = v268;
          v184 = xmmword_1D0E7DD30;
          v185 = xmmword_1D0E84440;
          v186 = vdupq_n_s64(v178 - 1);
          do
          {
            v187 = vmovn_s64(vcgeq_u64(v186, v184));
            if (vuzp1_s16(v187, *v184.i8).u8[0])
            {
              *(v183 - 3) = v182;
            }

            if (vuzp1_s16(v187, *&v184).i8[2])
            {
              *(v183 - 2) = v182 + 1;
            }

            if (vuzp1_s16(*&v184, vmovn_s64(vcgeq_u64(v186, *&v185))).i32[1])
            {
              *(v183 - 1) = v182 + 2;
              *v183 = v182 + 3;
            }

            v182 += 4;
            v185 = vaddq_s64(v185, v245);
            v184 = vaddq_s64(v184, v245);
            v183 += 4;
          }

          while (((v178 + 3) & 0xFFFFFFFC) != v182);
          v179 = 0;
          v181 = 1;
        }

        v301 = 0x100000008;
        v299 = &unk_1F4CE43F8;
        v302 = v303;
        *&v300 = __PAIR64__(v181, v178);
        DWORD2(v300) = v178 * v181;
        HIDWORD(v300) = v178;
        if (v178)
        {
          v188 = 0;
          v189 = 0;
          do
          {
            if ((v179 & 1) == 0)
            {
              v190 = 0;
              do
              {
                v303[v189 + HIDWORD(v300) * v190] = v267[v188 + v190];
                ++v190;
              }

              while (v181 != v190);
            }

            ++v189;
            v188 += v181;
          }

          while (v189 != v178);
          v191 = v300;
          v181 = DWORD1(v300);
        }

        else
        {
          v191 = 0;
        }

        *&v353[16] = 0x100000008;
        v352 = &unk_1F4CE43F8;
        v354 = v355;
        *v353 = v191;
        *&v353[4] = v181;
        v192 = (v191 * v181);
        *&v353[8] = v192;
        *&v353[12] = v191;
        if (v192 >= 1)
        {
          v193 = v303;
          v194 = v355;
          do
          {
            v195 = *v193++;
            *v194++ = v195 + v106;
            --v192;
          }

          while (v192);
        }

        sub_1D0B9F5D4(&v336, &v352);
        sub_1D0D8D744(v9, &v336, &v336, &v352);
        sub_1D0B894B0(&v324, &v352);
        v196 = *(v253 + 32);
        v153 = *(v196 + 4 * (*(v253 + 20) + v108));
        v250 = *(v196 + 4 * v108);
        v197 = v349;
        sub_1D0BA16B8(&v352, &v319, &v341, &v341);
        sub_1D0B9F65C(&v352, v197 + 552 * v108);
        if ((v153 & 0x80000000) != 0)
        {
          __assert_rtn("Zeros", "cnmatrix.h", 3099, "nc >= 0");
        }

        *&v353[16] = 0x800000008;
        v352 = &unk_1F4CE43B0;
        v198 = v153 * v254;
        v354 = v355;
        *v353 = v254;
        *&v353[4] = v153;
        *&v353[8] = v153 * v254;
        *&v353[12] = v254;
        if ((v153 * v254) > 3)
        {
          bzero(v355, 16 * ((v198 - 1) >> 1));
          v199 = &v353[8 * v153 * v254 + 16];
          *v199 = 0;
          v199[1] = 0;
        }

        else if (v198 >= 1)
        {
          bzero(v355, 8 * v153 * v254);
        }

        sub_1D0B894B0(&v314, &v352);
        v200 = v347;
        sub_1D0D8D7EC(&v314, &v341, ":", &v352);
        sub_1D0B9F65C(&v352, v200 + 552 * v244);
        sub_1D0B894B0(&v309, v335);
        v201 = v351;
        sub_1D0BA4B2C(&v352, &v309, &v341);
        sub_1D0BA556C(&v352, v201 + 104 * v244);
        sub_1D0BA4EA4(&v255, &v336, &v352);
        sub_1D0B894B0(&v304, &v352);
        v202 = *(v253 + 32);
        v107 += *(v202 + 4 * v244);
        v106 += *(v202 + 4 * (*(v253 + 20) + v244));
        v154 = v254;
        v152 = v153 * v254;
      }

      else
      {
        sub_1D0B894B0(&v324, v9);
        *&v353[16] = 0x800000008;
        v352 = &unk_1F4CE43B0;
        v354 = v355;
        *v353 = v254;
        *&v353[4] = v247;
        *&v353[8] = v238;
        *&v353[12] = v254;
        if (v238 >= 4)
        {
          bzero(v355, 16 * ((v238 - 1) >> 1));
          *(v237 - 2) = 0;
          *(v237 - 1) = 0;
        }

        else if (v238 >= 1)
        {
          bzero(v355, 8 * v238);
        }

        sub_1D0B894B0(&v314, &v352);
        sub_1D0B894B0(&v309, v10 + 8);
        sub_1D0B894B0(&v304, &v255);
        if (v251 < 1)
        {
          v152 = v238;
          v153 = v247;
          v154 = v254;
          v250 = v254;
        }

        else
        {
          v110 = 0;
          v111 = *(v253 + 32);
          do
          {
            v112 = *(v111 + 4 * v110);
            v265 = 0x800000001;
            v263 = &unk_1F4CE13B8;
            v266 = v267;
            if (v112 == 1)
            {
              v113 = 0;
              *&v114 = 0x100000001;
              *(&v114 + 1) = 0x100000001;
              v264 = v114;
              v267[0] = 0;
              v115 = 1;
              LODWORD(v112) = 1;
            }

            else if (v112 <= 0)
            {
              v115 = 0;
              LODWORD(v112) = 0;
              v264 = 0uLL;
              v113 = 1;
            }

            else
            {
              v116 = 0;
              LODWORD(v264) = 1;
              DWORD1(v264) = v112;
              *(&v264 + 1) = v112 | 0x100000000;
              v117 = xmmword_1D0E84440;
              v118 = xmmword_1D0E7DD30;
              v119 = v268;
              v120 = vdupq_n_s64(v112 - 1);
              do
              {
                v121 = vmovn_s64(vcgeq_u64(v120, v118));
                if (vuzp1_s16(v121, *v117.i8).u8[0])
                {
                  *(v119 - 3) = v116;
                }

                if (vuzp1_s16(v121, *&v117).i8[2])
                {
                  *(v119 - 2) = v116 + 1;
                }

                if (vuzp1_s16(*&v117, vmovn_s64(vcgeq_u64(v120, *&v117))).i32[1])
                {
                  *(v119 - 1) = v116 + 2;
                  *v119 = v116 + 3;
                }

                v116 += 4;
                v122 = vdupq_n_s64(4uLL);
                v117 = vaddq_s64(v117, v122);
                v118 = vaddq_s64(v118, v122);
                v119 += 4;
              }

              while (((v112 + 3) & 0xFFFFFFFC) != v116);
              v113 = 0;
              v115 = 1;
            }

            v301 = 0x100000008;
            v299 = &unk_1F4CE43F8;
            v302 = v303;
            *&v300 = __PAIR64__(v115, v112);
            DWORD2(v300) = v112 * v115;
            HIDWORD(v300) = v112;
            if (v112)
            {
              v123 = 0;
              v124 = 0;
              do
              {
                if ((v113 & 1) == 0)
                {
                  v125 = 0;
                  do
                  {
                    v303[v124 + HIDWORD(v300) * v125] = v267[v123 + v125];
                    ++v125;
                  }

                  while (v115 != v125);
                }

                ++v124;
                v123 += v115;
              }

              while (v124 != v112);
              v126 = v300;
              v115 = DWORD1(v300);
            }

            else
            {
              v126 = 0;
            }

            *&v353[16] = 0x100000008;
            v352 = &unk_1F4CE43F8;
            v354 = v355;
            *v353 = v126;
            *&v353[4] = v115;
            v127 = (v126 * v115);
            *&v353[8] = v127;
            *&v353[12] = v126;
            if (v127 >= 1)
            {
              v128 = v303;
              v129 = v355;
              do
              {
                v130 = *v128++;
                *v129++ = v130 + v107;
                --v127;
              }

              while (v127);
            }

            sub_1D0B9F5D4(&v341, &v352);
            v131 = *(*(v253 + 32) + 4 * (*(v253 + 20) + v110));
            v265 = 0x800000001;
            v263 = &unk_1F4CE13B8;
            v266 = v267;
            if (v131 == 1)
            {
              v132 = 0;
              *&v133 = 0x100000001;
              *(&v133 + 1) = 0x100000001;
              v264 = v133;
              v267[0] = 0;
              v134 = 1;
              LODWORD(v131) = 1;
            }

            else if (v131 <= 0)
            {
              v134 = 0;
              LODWORD(v131) = 0;
              v264 = 0uLL;
              v132 = 1;
            }

            else
            {
              v135 = 0;
              LODWORD(v264) = 1;
              DWORD1(v264) = v131;
              *(&v264 + 1) = v131 | 0x100000000;
              v136 = xmmword_1D0E84440;
              v137 = xmmword_1D0E7DD30;
              v138 = v268;
              v139 = vdupq_n_s64(v131 - 1);
              do
              {
                v140 = vmovn_s64(vcgeq_u64(v139, v137));
                if (vuzp1_s16(v140, *v136.i8).u8[0])
                {
                  *(v138 - 3) = v135;
                }

                if (vuzp1_s16(v140, *&v136).i8[2])
                {
                  *(v138 - 2) = v135 + 1;
                }

                if (vuzp1_s16(*&v136, vmovn_s64(vcgeq_u64(v139, *&v136))).i32[1])
                {
                  *(v138 - 1) = v135 + 2;
                  *v138 = v135 + 3;
                }

                v135 += 4;
                v141 = vdupq_n_s64(4uLL);
                v136 = vaddq_s64(v136, v141);
                v137 = vaddq_s64(v137, v141);
                v138 += 4;
              }

              while (((v131 + 3) & 0xFFFFFFFC) != v135);
              v132 = 0;
              v134 = 1;
            }

            v301 = 0x100000008;
            v299 = &unk_1F4CE43F8;
            v302 = v303;
            *&v300 = __PAIR64__(v134, v131);
            DWORD2(v300) = v131 * v134;
            HIDWORD(v300) = v131;
            if (v131)
            {
              v142 = 0;
              v143 = 0;
              do
              {
                if ((v132 & 1) == 0)
                {
                  v144 = 0;
                  do
                  {
                    v303[v143 + HIDWORD(v300) * v144] = v267[v142 + v144];
                    ++v144;
                  }

                  while (v134 != v144);
                }

                ++v143;
                v142 += v134;
              }

              while (v143 != v131);
              v145 = v300;
              v134 = DWORD1(v300);
            }

            else
            {
              v145 = 0;
            }

            *&v353[16] = 0x100000008;
            v352 = &unk_1F4CE43F8;
            v354 = v355;
            *v353 = v145;
            *&v353[4] = v134;
            v146 = (v145 * v134);
            *&v353[8] = v146;
            *&v353[12] = v145;
            if (v146 >= 1)
            {
              v147 = v303;
              v148 = v355;
              do
              {
                v149 = *v147++;
                *v148++ = v149 + v106;
                --v146;
              }

              while (v146);
            }

            sub_1D0B9F5D4(&v336, &v352);
            v150 = v349;
            sub_1D0BA16B8(&v352, &v319, &v341, &v341);
            sub_1D0B9F65C(&v352, v150 + 552 * v110);
            v151 = v347;
            sub_1D0BA16B8(&v352, &v314, &v341, &v336);
            sub_1D0B9F65C(&v352, v151 + 552 * v110);
            v111 = *(v253 + 32);
            v107 += *(v111 + 4 * v110);
            v106 += *(v111 + 4 * (*(v253 + 20) + v110++));
          }

          while (v110 != v251);
          v152 = v238;
          v153 = v247;
          v154 = v254;
          v250 = v254;
        }
      }

      v296 = 0x800000008;
      v294 = &unk_1F4CE43B0;
      v297 = v298;
      *&v295 = __PAIR64__(v154, v153);
      *(&v295 + 1) = __PAIR64__(v153, v152);
      if (v152 > 3)
      {
        bzero(v298, 16 * ((v152 - 1) >> 1));
        v203 = &v296 + v152;
        *v203 = 0;
        v203[1] = 0;
      }

      else if (v152 >= 1)
      {
        bzero(v298, 8 * v152);
      }

      *&v353[16] = 0x1000000008;
      *v353 = xmmword_1D0E84560;
      v352 = &unk_1F4CE1788;
      v354 = v355;
      sub_1D0B8876C(&v324, &v294, &v352);
      v286 = 0x800000008;
      v285 = xmmword_1D0E84510;
      v284 = &unk_1F4CE43B0;
      v287 = v288;
      sub_1D0BA5940(&v330, &v284);
      v281 = 0x800000008;
      v280 = xmmword_1D0E84510;
      v279 = &unk_1F4CE43B0;
      v282 = v283;
      sub_1D0B89390(&v319, &v314, &v279);
      v291 = 0x800000008;
      v290 = xmmword_1D0E84510;
      v289 = &unk_1F4CE43B0;
      v292 = v293;
      sub_1D0B89390(&v284, &v279, &v289);
      v276 = 0x800000008;
      v275 = xmmword_1D0E84510;
      v274 = &unk_1F4CE43B0;
      v277 = v278;
      sub_1D0B89390(&v330, &v319, &v274);
      v265 = 0x1000000008;
      v263 = &unk_1F4CE1788;
      v264 = xmmword_1D0E84560;
      v266 = v267;
      sub_1D0B8876C(&v289, &v274, &v263);
      v301 = 0x1000000010;
      v300 = xmmword_1D0E84570;
      v299 = &unk_1F4CE17D0;
      v302 = v303;
      sub_1D0BA59C4(&v352, &v263, &v299);
      *&v353[16] = 0x100000008;
      *v353 = xmmword_1D0E84520;
      v352 = &unk_1F4CE4320;
      v354 = v355;
      sub_1D0B89390(&v324, &v304, &v352);
      v271 = 0x100000008;
      v270 = xmmword_1D0E84520;
      v269 = &unk_1F4CE4320;
      v272 = &v273;
      sub_1D0B89390(&v314, &v304, &v269);
      v276 = 0x100000008;
      v275 = xmmword_1D0E84520;
      v274 = &unk_1F4CE4320;
      v277 = v278;
      sub_1D0BA5A78(&v309, &v269, &v274);
      v281 = 0x100000008;
      v280 = xmmword_1D0E84520;
      v279 = &unk_1F4CE4320;
      v282 = v283;
      sub_1D0B89390(&v319, &v274, &v279);
      v286 = 0x100000008;
      v285 = xmmword_1D0E84520;
      v284 = &unk_1F4CE4320;
      v287 = v288;
      sub_1D0BA5A78(&v279, v335, &v284);
      v296 = 0x100000008;
      v295 = xmmword_1D0E84520;
      v294 = &unk_1F4CE4320;
      v297 = v298;
      sub_1D0B89390(&v330, &v284, &v294);
      v265 = 0x100000008;
      v263 = &unk_1F4CE4320;
      v264 = xmmword_1D0E84520;
      v266 = v267;
      sub_1D0B88838(&v294, v329, &v263);
      v291 = 0x100000010;
      v290 = xmmword_1D0E83CB0;
      v289 = &unk_1F4CDFE00;
      v292 = v293;
      sub_1D0BA59C4(&v352, &v263, &v289);
      v265 = 0x1000000010;
      v263 = &unk_1F4CE17D0;
      v264 = xmmword_1D0E84570;
      v266 = v267;
      v286 = 0x100000010;
      v285 = xmmword_1D0E83CB0;
      v284 = &unk_1F4CDFE00;
      v287 = v288;
      v296 = 0x100000010;
      v295 = xmmword_1D0E83CB0;
      v294 = &unk_1F4CDFE00;
      v297 = v298;
      *&v353[16] = 0x1000000010;
      *v353 = xmmword_1D0E84570;
      v352 = &unk_1F4CE17D0;
      v354 = v355;
      sub_1D0BA5B14(&v299, &v289, &v294, &v352, &v284, &v263);
      *&v353[16] = 0x800000001;
      v352 = &unk_1F4CE13B8;
      v354 = v355;
      v204 = v254;
      if (v254 == 1)
      {
        v205 = 0;
        *&v206 = 0x100000001;
        *(&v206 + 1) = 0x100000001;
        *v353 = v206;
        v355[0] = v153;
      }

      else
      {
        if (!v254)
        {
          *v353 = 0;
          *&v353[8] = 0;
          v205 = 1;
          goto LABEL_269;
        }

        *v353 = 1;
        *&v353[4] = v254;
        v207 = (v254 + 3) & 0xFFFFFFFC;
        v208 = v356;
        v209 = xmmword_1D0E7DD30;
        v210 = xmmword_1D0E84440;
        *&v353[8] = v254;
        *&v353[12] = 1;
        do
        {
          v211 = vmovn_s64(vcgeq_u64(v252, v209));
          if (vuzp1_s16(v211, *v209.i8).u8[0])
          {
            *(v208 - 3) = v153;
          }

          if (vuzp1_s16(v211, *&v209).i8[2])
          {
            *(v208 - 2) = v153 + 1;
          }

          if (vuzp1_s16(*&v209, vmovn_s64(vcgeq_u64(v252, *&v210))).i32[1])
          {
            *(v208 - 1) = v153 + 2;
            *v208 = v153 + 3;
          }

          v212 = vdupq_n_s64(4uLL);
          v210 = vaddq_s64(v210, v212);
          v209 = vaddq_s64(v209, v212);
          v153 += 4;
          v208 += 4;
          v207 -= 4;
        }

        while (v207);
        v205 = 0;
      }

      v204 = 1;
LABEL_269:
      v296 = 0x100000008;
      v294 = &unk_1F4CE43F8;
      v297 = v298;
      *&v295 = __PAIR64__(v204, v254);
      DWORD2(v295) = v204 * v254;
      HIDWORD(v295) = v254;
      v10 = v243;
      v9 = v240;
      if (v254)
      {
        v213 = 0;
        v214 = 0;
        do
        {
          if ((v205 & 1) == 0)
          {
            v215 = 0;
            do
            {
              v298[v214 + HIDWORD(v295) * v215] = v355[v213 + v215];
              ++v215;
            }

            while (v204 != v215);
          }

          ++v214;
          v213 += v204;
        }

        while (v214 != v254);
      }

      sub_1D0B894B0(v335, &v309);
      sub_1D0BA16B8(&v352, &v263, &v294, &v294);
      sub_1D0B894B0(&v330, &v352);
      sub_1D0BA4B2C(&v352, &v284, &v294);
      sub_1D0B894B0(v329, &v352);
      if ((v242 & 1) == 0)
      {
        *&v353[16] = 0x800000001;
        v352 = &unk_1F4CE13B8;
        v354 = v355;
        if (v247)
        {
          if (v247 == 1)
          {
            v216 = 0;
            *&v217 = 0x100000001;
            *(&v217 + 1) = 0x100000001;
            *v353 = v217;
            v355[0] = 0;
          }

          else
          {
            v219 = 0;
            *v353 = 1;
            *&v353[4] = v247;
            v220 = v356;
            v221 = xmmword_1D0E7DD30;
            v222 = xmmword_1D0E84440;
            *&v353[8] = v247;
            *&v353[12] = 1;
            do
            {
              v223 = vmovn_s64(vcgeq_u64(v246, v221));
              if (vuzp1_s16(v223, *v221.i8).u8[0])
              {
                *(v220 - 3) = v219;
              }

              if (vuzp1_s16(v223, *&v221).i8[2])
              {
                *(v220 - 2) = v219 + 1;
              }

              if (vuzp1_s16(*&v221, vmovn_s64(vcgeq_u64(v246, *&v222))).i32[1])
              {
                *(v220 - 1) = v219 + 2;
                *v220 = v219 + 3;
              }

              v219 += 4;
              v224 = vdupq_n_s64(4uLL);
              v222 = vaddq_s64(v222, v224);
              v221 = vaddq_s64(v221, v224);
              v220 += 4;
            }

            while (((v247 + 3) & 0xFFFFFFFC) != v219);
            v216 = 0;
          }

          v218 = 1;
        }

        else
        {
          v218 = 0;
          *v353 = 0;
          *&v353[8] = 0;
          v216 = 1;
        }

        v281 = 0x100000008;
        v279 = &unk_1F4CE43F8;
        v282 = v283;
        *&v280 = __PAIR64__(v218, v247);
        DWORD2(v280) = v218 * v247;
        HIDWORD(v280) = v247;
        if (v247)
        {
          v225 = 0;
          v226 = 0;
          do
          {
            if ((v216 & 1) == 0)
            {
              v227 = 0;
              do
              {
                v283[v226 + HIDWORD(v280) * v227] = v355[v225 + v227];
                ++v227;
              }

              while (v218 != v227);
            }

            ++v226;
            v225 += v218;
          }

          while (v226 != v247);
        }

        sub_1D0BA16B8(&v352, &v263, &v279, &v294);
        sub_1D0B894B0(v243 + 1752, &v352);
        sub_1D0BA4B2C(&v352, &v284, &v279);
        sub_1D0B894B0(v243 + 2304, &v352);
        sub_1D0BA16B8(&v352, &v263, &v279, &v279);
        sub_1D0B894B0(v243 + 2408, &v352);
      }

      if (++v244 == v239)
      {
        goto LABEL_299;
      }
    }
  }

  v52 = 0;
  v53 = 0;
  v54 = 0;
  v55 = *(v253 + 32);
  v56 = 1;
  v241 = vdupq_n_s64(4uLL);
  do
  {
    v57 = *(v55 + 4 * v52);
    v265 = 0x800000001;
    v263 = &unk_1F4CE13B8;
    v266 = v267;
    if (v57 == 1)
    {
      v58 = 0;
      *&v59 = 0x100000001;
      *(&v59 + 1) = 0x100000001;
      v264 = v59;
      v267[0] = 0;
      v60 = 1;
      LODWORD(v57) = 1;
    }

    else if (v57 <= 0)
    {
      v60 = 0;
      LODWORD(v57) = 0;
      v264 = 0uLL;
      v58 = 1;
    }

    else
    {
      v61 = 0;
      LODWORD(v264) = 1;
      DWORD1(v264) = v57;
      *(&v264 + 1) = v57 | 0x100000000;
      v62 = v268;
      v63 = xmmword_1D0E7DD30;
      v64 = xmmword_1D0E84440;
      v65 = vdupq_n_s64(v57 - 1);
      do
      {
        v66 = vmovn_s64(vcgeq_u64(v65, v63));
        if (vuzp1_s16(v66, *v63.i8).u8[0])
        {
          *(v62 - 3) = v61;
        }

        if (vuzp1_s16(v66, *&v63).i8[2])
        {
          *(v62 - 2) = v61 + 1;
        }

        if (vuzp1_s16(*&v63, vmovn_s64(vcgeq_u64(v65, *&v64))).i32[1])
        {
          *(v62 - 1) = v61 + 2;
          *v62 = v61 + 3;
        }

        v61 += 4;
        v67 = vdupq_n_s64(4uLL);
        v64 = vaddq_s64(v64, v67);
        v63 = vaddq_s64(v63, v67);
        v62 += 4;
      }

      while (((v57 + 3) & 0xFFFFFFFC) != v61);
      v58 = 0;
      v60 = 1;
    }

    v301 = 0x100000008;
    v299 = &unk_1F4CE43F8;
    v302 = v303;
    *&v300 = __PAIR64__(v60, v57);
    DWORD2(v300) = v57 * v60;
    HIDWORD(v300) = v57;
    if (v57)
    {
      v68 = 0;
      v69 = 0;
      do
      {
        if ((v58 & 1) == 0)
        {
          v70 = 0;
          do
          {
            v303[v69 + HIDWORD(v300) * v70] = v267[v68 + v70];
            ++v70;
          }

          while (v60 != v70);
        }

        ++v69;
        v68 += v60;
      }

      while (v69 != v57);
      v71 = v300;
      v60 = DWORD1(v300);
    }

    else
    {
      v71 = 0;
    }

    *&v353[16] = 0x100000008;
    v352 = &unk_1F4CE43F8;
    v354 = v355;
    *v353 = v71;
    *&v353[4] = v60;
    v72 = (v71 * v60);
    *&v353[8] = v72;
    *&v353[12] = v71;
    if (v72 >= 1)
    {
      v73 = v303;
      v74 = v355;
      do
      {
        v75 = *v73++;
        *v74++ = v75 + v54;
        --v72;
      }

      while (v72);
    }

    sub_1D0B9F5D4(&v341, &v352);
    v76 = *(*(v253 + 32) + 4 * (*(v253 + 20) + v52));
    v265 = 0x800000001;
    v263 = &unk_1F4CE13B8;
    v266 = v267;
    if (v76 == 1)
    {
      v77 = 0;
      *&v78 = 0x100000001;
      *(&v78 + 1) = 0x100000001;
      v264 = v78;
      v267[0] = 0;
      v79 = 1;
      LODWORD(v76) = 1;
    }

    else if (v76 <= 0)
    {
      v79 = 0;
      LODWORD(v76) = 0;
      v264 = 0uLL;
      v77 = 1;
    }

    else
    {
      v80 = 0;
      LODWORD(v264) = 1;
      DWORD1(v264) = v76;
      *(&v264 + 1) = v76 | 0x100000000;
      v81 = v268;
      v82 = xmmword_1D0E7DD30;
      v83 = xmmword_1D0E84440;
      v84 = vdupq_n_s64(v76 - 1);
      do
      {
        v85 = vmovn_s64(vcgeq_u64(v84, v82));
        if (vuzp1_s16(v85, *v82.i8).u8[0])
        {
          *(v81 - 3) = v80;
        }

        if (vuzp1_s16(v85, *&v82).i8[2])
        {
          *(v81 - 2) = v80 + 1;
        }

        if (vuzp1_s16(*&v82, vmovn_s64(vcgeq_u64(v84, *&v83))).i32[1])
        {
          *(v81 - 1) = v80 + 2;
          *v81 = v80 + 3;
        }

        v80 += 4;
        v83 = vaddq_s64(v83, v241);
        v82 = vaddq_s64(v82, v241);
        v81 += 4;
      }

      while (((v76 + 3) & 0xFFFFFFFC) != v80);
      v77 = 0;
      v79 = 1;
    }

    v301 = 0x100000008;
    v299 = &unk_1F4CE43F8;
    v302 = v303;
    *&v300 = __PAIR64__(v79, v76);
    DWORD2(v300) = v76 * v79;
    HIDWORD(v300) = v76;
    if (v76)
    {
      v86 = 0;
      v87 = 0;
      do
      {
        if ((v77 & 1) == 0)
        {
          v88 = 0;
          do
          {
            v303[v87 + HIDWORD(v300) * v88] = v267[v86 + v88];
            ++v88;
          }

          while (v79 != v88);
        }

        ++v87;
        v86 += v79;
      }

      while (v87 != v76);
      v89 = v300;
      v79 = DWORD1(v300);
    }

    else
    {
      v89 = 0;
    }

    *&v353[16] = 0x100000008;
    v352 = &unk_1F4CE43F8;
    v354 = v355;
    *v353 = v89;
    *&v353[4] = v79;
    v90 = (v89 * v79);
    *&v353[8] = v90;
    *&v353[12] = v89;
    if (v90 >= 1)
    {
      v91 = v303;
      v92 = v355;
      do
      {
        v93 = *v91++;
        *v92++ = v93 + v53;
        --v90;
      }

      while (v90);
    }

    sub_1D0B9F5D4(&v336, &v352);
    v326 = 0x100000008;
    v325 = xmmword_1D0E84520;
    v324 = &unk_1F4CE4320;
    v327 = v328;
    *&v353[16] = 0x800000008;
    *v353 = xmmword_1D0E84510;
    v352 = &unk_1F4CE43B0;
    v354 = v355;
    v301 = 0x800000008;
    v300 = xmmword_1D0E84510;
    v299 = &unk_1F4CE43B0;
    v302 = v303;
    v94 = *(*(v249 + 32) + 8 * v52);
    sub_1D0BA4B2C(&v263, v243 + 768, &v341);
    v95 = sub_1D0BA4EA4(&v255, &v336, &v330);
    if (v94(&v263, &v330, *(*(v248 + 32) + 8 * v52), &v324, &v352, &v299, v95))
    {
      *(v243 + 1536) = 0;
      return 20;
    }

    sub_1D0BA4B2C(&v263, v243 + 8, &v341);
    sub_1D0BA556C(&v263, &v324);
    sub_1D0B894B0(v351 + 104 * v52, &v324);
    v265 = 0x800000008;
    v263 = &unk_1F4CE43B0;
    v264 = xmmword_1D0E84510;
    v266 = v267;
    v321 = 0x100000008;
    v319 = &unk_1F4CE43F8;
    v320 = xmmword_1D0E84520;
    v322 = v323;
    v316 = 0x100000008;
    v315 = xmmword_1D0E84520;
    v314 = &unk_1F4CE43F8;
    v317 = v318;
    v332 = 0x100000020;
    v330 = &unk_1F4CE3988;
    v331 = xmmword_1D0E84540;
    v333 = &v334;
    v96 = sub_1D0BA5174(&v352, &v319, &v314, &v330, &v263);
    sub_1D0B894B0(v349 + 552 * v52, &v263);
    *&v97 = sub_1D0B894B0(v347 + 552 * v52, &v299).n128_u64[0];
    v56 &= v96 <= v40;
    v55 = *(v253 + 32);
    v54 += *(v55 + 4 * v52);
    v53 += *(v55 + 4 * (*(v253 + 20) + v52++));
  }

  while (v52 != v251);
  v10 = v243;
  v9 = v240;
  if (v56)
  {
    goto LABEL_117;
  }

  LOWORD(v352) = 2;
  LOBYTE(v299) = 2;
  v228 = cnprint::CNLogFormatter::FormatWarning((v243 + 1704), "Predict state Jacobian matrix is not invertible.", v97);
  if (*(v243 + 1727) >= 0)
  {
    LOBYTE(v234) = v228;
  }

  else
  {
    v234 = *(v243 + 1704);
  }

  cnprint::CNPrinter::Print(&v352, &v299, "%s", v229, v230, v231, v232, v233, v234);
  sub_1D0B894B0(v243 + 112, v243 + 872);
  *&v353[16] = 0x100000008;
  *v353 = xmmword_1D0E84520;
  v352 = &unk_1F4CE4320;
  v354 = v355;
  sub_1D0B89390(v243 + 112, v243 + 8, &v352);
  sub_1D0B894B0(v243 + 664, &v352);
  *&v353[16] = 0x800000008;
  v352 = &unk_1F4CE43B0;
  v354 = v355;
  *v353 = v11;
  *&v353[4] = v254;
  *&v353[8] = v254 * v11;
  *&v353[12] = v11;
  if (v238 > 3)
  {
    v235 = &v355[2 * v238];
    bzero(v355, 16 * ((v238 - 1) >> 1));
    *(v235 - 2) = 0;
    *(v235 - 1) = 0;
  }

  else if (v238 >= 1)
  {
    bzero(v355, 8 * (v254 * v11));
  }

  sub_1D0B894B0(v243 + 1752, &v352);
  *&v353[16] = 0x100000008;
  v352 = &unk_1F4CE4320;
  v354 = v355;
  *v353 = v11;
  *&v353[4] = 1;
  *&v353[8] = v11;
  *&v353[12] = v11;
  if (v11 > 3)
  {
    v236 = &v355[2 * v11];
    bzero(v355, 16 * ((v11 - 1) >> 1));
    *(v236 - 2) = 0;
    *(v236 - 1) = 0;
  }

  else if (v11)
  {
    bzero(v355, 8 * v11);
  }

  sub_1D0B894B0(v243 + 2304, &v352);
  sub_1D0B894B0(v243 + 2408, v240);
  *(v243 + 1540) = 0;
  *(v243 + 1536) = 0;
  return 21;
}

void sub_1D0BA47DC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  v9 = sub_1D0B9356C(v31, a3, a3, a4, a5, a6, a7, a8);
  if ((*(*v8 + 88))(v8, v9))
  {
    raven::RavenEstimator::HandleMountStateEvent((v8 + 2968), v31);
    if (v10 && cnprint::CNPrinter::GetLogLevel(v10) <= 1)
    {
      v36 = 12;
      v35 = 1;
      v34[0] = (*(v31[0] + 16))(v31);
      v34[1] = v11;
      (*(v31[0] + 24))(v32, v31);
      if (v33 >= 0)
      {
        v17 = v32;
      }

      else
      {
        v17 = v32[0];
      }

      cnprint::CNLogFormatter::FormatWarning(v8 + 240, v34, "Failed to handle event - %s.", v12, v13, v14, v15, v16, v17);
      if (*(v8 + 263) >= 0)
      {
        LOBYTE(v23) = v8 - 16;
      }

      else
      {
        v23 = *(v8 + 240);
      }

      cnprint::CNPrinter::Print(&v36, &v35, "%s", v18, v19, v20, v21, v22, v23);
      if (v33 < 0)
      {
        operator delete(v32[0]);
      }
    }
  }

  else
  {
    LOWORD(v32[0]) = 12;
    LOBYTE(v34[0]) = 2;
    v24 = cnprint::CNLogFormatter::FormatGeneral((v8 + 240), "Warning,RavenConvergenceEstimatorActiveObject is not configured");
    if (*(v8 + 263) >= 0)
    {
      LOBYTE(v30) = v24;
    }

    else
    {
      v30 = *(v8 + 240);
    }

    cnprint::CNPrinter::Print(v32, v34, "%s", v25, v26, v27, v28, v29, v30);
  }
}

void sub_1D0BA4980(_Unwind_Exception *exception_object)
{
  if (*(v1 - 57) < 0)
  {
    operator delete(*(v1 - 80));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0BA49A0(uint64_t a1, int a2, int a3, __n128 a4)
{
  v5 = 0;
  *(a1 + 24) = 0x100000002;
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F4CE1630;
  a4.n128_u64[0] = 0x100000008;
  do
  {
    v6 = a1 + v5;
    *(v6 + 64) = 0x100000008;
    *(v6 + 40) = &unk_1F4CE4320;
    *(v6 + 48) = xmmword_1D0E84520;
    *(v6 + 72) = a1 + v5 + 80;
    v5 += 104;
  }

  while (v5 != 208);
  if (a2 < 0)
  {
    v8 = "nr >= 0";
    v9 = 419;
    goto LABEL_8;
  }

  if (a3 < 0)
  {
    v8 = "nc >= 0";
    v9 = 420;
LABEL_8:
    __assert_rtn("CNMatrix", "cnmatrix.h", v9, v8);
  }

  *(a1 + 8) = a2;
  *(a1 + 12) = a3;
  *(a1 + 16) = a3 * a2;
  *(a1 + 20) = a2;
  (*(*a1 + 16))(a1, a4, xmmword_1D0E84520);
  return a1;
}

void sub_1D0BA4ABC(_Unwind_Exception *a1)
{
  v1[18] = &unk_1F4CD5E28;
  v1[5] = &unk_1F4CD5E28;
  *v1 = &unk_1F4CE1688;
  _Unwind_Resume(a1);
}

uint64_t sub_1D0BA4B2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x100000008;
  *(a1 + 8) = xmmword_1D0E84520;
  *(a1 + 32) = a1 + 40;
  *a1 = &unk_1F4CE1740;
  *(a1 + 104) = a2;
  *(a1 + 136) = 0x100000008;
  *(a1 + 112) = &unk_1F4CE43F8;
  *(a1 + 120) = xmmword_1D0E84520;
  *(a1 + 144) = a1 + 152;
  sub_1D0B9F5D4(a1 + 112, a3);
  v6 = *(a1 + 120);
  v5 = *(a1 + 124);
  *(a1 + 8) = v6;
  *(a1 + 12) = v5;
  v7 = (v5 * v6);
  *(a1 + 16) = v7;
  *(a1 + 20) = v6;
  if (v7 >= 1)
  {
    v8 = *(a1 + 144);
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

uint64_t sub_1D0BA4C04(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
    v24 = *a3;
    v35 = 0x600000006;
    v33 = &unk_1F4CDF278;
    v34 = xmmword_1D0E7F320;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v36 = &v37;
    v37 = 0x3FF0000000000000;
    *&v41 = 0x3FF0000000000000;
    v45 = 0x3FF0000000000000;
    *&v49 = 0x3FF0000000000000;
    v53 = 0x3FF0000000000000;
    v57 = 0x3FF0000000000000;
    sub_1D0BA5090(v58, &v33);
    v25 = v59;
    v26 = v60;
    *(v60 + 24 * v59) = v24;
    *(v26 + 8 * ((4 * v25) | 1)) = v24;
    *(v26 + 40 * v25 + 16) = v24;
    v30 = 0x100000008;
    v28 = &unk_1F4CE4320;
    v29 = xmmword_1D0E84520;
    v31 = &v32;
    sub_1D0B89390(v58, a1, &v28);
    v35 = 0x100000008;
    v33 = &unk_1F4CE4320;
    v34 = xmmword_1D0E84520;
    v36 = &v37;
    sub_1D0B88838(&v28, a2, &v33);
    sub_1D0B894B0(a4, &v33);
    sub_1D0B894B0(a5, v58);
    v35 = 0x600000006;
    v33 = &unk_1F4CDF278;
    v34 = xmmword_1D0E7F320;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v36 = &v37;
    v37 = 0x3FF0000000000000;
    *&v41 = 0x3FF0000000000000;
    v45 = 0x3FF0000000000000;
    *&v49 = 0x3FF0000000000000;
    v53 = 0x3FF0000000000000;
    v57 = 0x3FF0000000000000;
    sub_1D0B894B0(a6, &v33);
    return 0;
  }

  else
  {
    v58[0] = 12;
    LOBYTE(v33) = 4;
    cnprint::CNPrinter::Print(v58, &v33, "f_SixStateNearlyConstantVelocity called with inadequate matrices.", a4, a5, a6, a7, a8, v27);
    return 0xFFFFFFFFLL;
  }
}

double sub_1D0BA4EA4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a2 + 8);
  v4 = *(a2 + 12);
  v5 = (v4 * v3);
  *&result = 0x100000008;
  *(a3 + 24) = 0x100000008;
  *a3 = &unk_1F4CE4320;
  *(a3 + 8) = v3;
  *(a3 + 12) = v4;
  *(a3 + 16) = v5;
  *(a3 + 20) = v3;
  v7 = (a3 + 40);
  *(a3 + 32) = a3 + 40;
  if (v5)
  {
    v8 = *(a2 + 32);
    v9 = *(a1 + 32);
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

uint64_t sub_1D0BA4F14(uint64_t a1, int a2, int a3, double a4, __n128 a5)
{
  v6 = 0;
  *(a1 + 24) = 0x100000002;
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F4CE16B8;
  a5.n128_u64[0] = 0x800000008;
  do
  {
    v7 = a1 + v6;
    *(v7 + 64) = 0x800000008;
    *(v7 + 40) = &unk_1F4CE43B0;
    *(v7 + 48) = xmmword_1D0E84510;
    *(v7 + 72) = a1 + v6 + 80;
    v6 += 552;
  }

  while (v6 != 1104);
  if (a2 < 0)
  {
    v9 = "nr >= 0";
    v10 = 419;
    goto LABEL_8;
  }

  if (a3 < 0)
  {
    v9 = "nc >= 0";
    v10 = 420;
LABEL_8:
    __assert_rtn("CNMatrix", "cnmatrix.h", v10, v9);
  }

  *(a1 + 8) = a2;
  *(a1 + 12) = a3;
  *(a1 + 16) = a3 * a2;
  *(a1 + 20) = a2;
  (*(*a1 + 16))(a1, xmmword_1D0E84510, a5);
  return a1;
}

void sub_1D0BA502C(_Unwind_Exception *a1)
{
  v1[74] = &unk_1F4CD5E28;
  v1[5] = &unk_1F4CD5E28;
  *v1 = &unk_1F4CE1710;
  _Unwind_Resume(a1);
}

double sub_1D0BA5090(uint64_t a1, uint64_t a2)
{
  *&result = 0x800000008;
  *(a1 + 24) = 0x800000008;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F4CE43B0;
  v4 = *(a2 + 8);
  v3 = *(a2 + 12);
  *(a1 + 8) = v4;
  *(a1 + 12) = v3;
  v5 = v3 * v4;
  *(a1 + 16) = v5;
  *(a1 + 20) = v4;
  v6 = (a1 + 40);
  *(a1 + 32) = a1 + 40;
  if (v4 > 8)
  {
    v9 = "this->max_num_rows_ >= A.NumRows()";
    v10 = 567;
    goto LABEL_9;
  }

  if (v3 > 8)
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

double sub_1D0BA5174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1D0B894B0(a5, a1);
  v15 = *(a5 + 8);
  v16 = *(a5 + 12);
  v17 = *(a5 + 32);
  v18 = *(a5 + 20);
  v19 = *(a2 + 32);
  LODWORD(v62) = v15;
  LODWORD(v61) = v16;
  v66 = v18;
  if (v15 < 1)
  {
    v28 = -1;
  }

  else
  {
    v20 = 4 * v15;
    v21 = operator new[](4 * v15, MEMORY[0x1E69E5398]);
    if (v21)
    {
      v22 = v21;
      v65 = 0;
      dgetrf_NEWLAPACK();
      memcpy(v19, v22, v20);
      MEMORY[0x1D387EC80](v22, 0x1000C8052888210);
      goto LABEL_7;
    }

    v28 = -5;
  }

  LOWORD(v62) = 4;
  LOBYTE(v61) = 5;
  cnprint::CNPrinter::Print(&v62, &v61, "Error using Inv: input argument %d invalid in getrf.", v10, v11, v12, v13, v14, -v28);
LABEL_7:
  if (v16 < 1)
  {
    v29 = 0.0;
  }

  else
  {
    v29 = 0.0;
    v30 = *(a1 + 32);
    v31 = v16;
    do
    {
      v32 = *v30++;
      v29 = v29 + fabs(v32);
      --v31;
    }

    while (v31);
    if (v16 != 1)
    {
      v33 = 1;
      v34 = v18;
      do
      {
        v35 = 0.0;
        v36 = v34;
        do
        {
          v35 = v35 + fabs(*(*(a1 + 32) + 8 * v36++));
        }

        while (v36 < v16 + v33 * v18);
        if (v35 > v29)
        {
          v29 = v35;
        }

        ++v33;
        v34 += v18;
      }

      while (v33 != v16);
    }
  }

  v61 = 0.0;
  v37 = *(a4 + 32);
  v38 = *(a3 + 32);
  v63 = 49;
  v62 = v29;
  v65 = v18;
  v66 = v16;
  if (v16 < 1)
  {
    v42 = -2;
  }

  else
  {
    v39 = 4 * v16;
    v40 = operator new[](4 * v16, MEMORY[0x1E69E5398]);
    if (v40)
    {
      v41 = v40;
      v64 = 0;
      dgecon_NEWLAPACK();
      memcpy(v38, v41, 4 * v16);
      MEMORY[0x1D387EC80](v41, 0x1000C8052888210);
      v42 = v64;
      if ((v64 & 0x80000000) == 0)
      {
        v43 = *(a4 + 28) * *(a4 + 24);
        LODWORD(v62) = v16;
        v66 = v18;
        goto LABEL_27;
      }
    }

    else
    {
      v42 = -8;
    }
  }

  LOWORD(v62) = 4;
  LOBYTE(v66) = 5;
  cnprint::CNPrinter::Print(&v62, &v66, "Error using Inv: input argument %d invalid in gecon.", v23, v24, v25, v26, v27, -v42);
  v43 = *(a4 + 28) * *(a4 + 24);
  LODWORD(v62) = v16;
  v66 = v18;
  if (v16 < 1)
  {
    v52 = -1;
LABEL_32:
    LOWORD(v62) = 4;
    LOBYTE(v66) = 5;
    cnprint::CNPrinter::Print(&v62, &v66, "Error using Inv: input argument %d invalid in getri.", v44, v45, v46, v47, v48, -v52);
    goto LABEL_33;
  }

  v39 = 4 * v16;
LABEL_27:
  v49 = operator new[](v39, MEMORY[0x1E69E5398]);
  if (!v49)
  {
    v52 = -4;
    goto LABEL_32;
  }

  v50 = v49;
  memcpy(v49, v19, v39);
  v64 = 0;
  v65 = v43;
  dgetri_NEWLAPACK();
  v51 = MEMORY[0x1D387EC80](v50, 0x1000C8052888210);
  v52 = v64;
  if (v64 < 0)
  {
    goto LABEL_32;
  }

LABEL_33:
  v53 = **(a4 + 32);
  if (v43 < v53 && cnprint::CNPrinter::GetLogLevel(v51) <= 1)
  {
    LOWORD(v62) = 4;
    LOBYTE(v66) = 1;
    cnprint::CNPrinter::Print(&v62, &v66, "Warning: Inv optimal workspace size %d is greater than provided workspace size %d; performance may suffer.", v54, v55, v56, v57, v58, v53);
  }

  v59 = v61;
  if (v52 >= 1)
  {
    sub_1D0BBBC00(a5, INFINITY);
  }

  return 1.0 / v59;
}

double sub_1D0BA556C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    __assert_rtn("operator=", "cnsubvector.h", 347, "this->num_elements_ == A.num_elements_");
  }

  if (v2 >= 1)
  {
    v3 = *(a2 + 32);
    v4 = *(a1 + 144);
    v5 = *(*(a1 + 104) + 32);
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

uint64_t sub_1D0BA55E4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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

  v12 = !v11 && v10 == 2;
  if (v12 && ((v14 = *(a2 + 8), v15 = *(a2 + 12), v14 <= v15) ? (v16 = *(a2 + 12)) : (v16 = *(a2 + 8)), v14 ? (v17 = v15 == 0) : (v17 = 1), !v17 ? (v18 = v16 == 2) : (v18 = 0), v18))
  {
    v24 = *a3;
    v33 = 0x200000002;
    v31 = &unk_1F4CE0268;
    v32 = xmmword_1D0E83F70;
    v36 = 0;
    v37 = 0;
    v34 = &v35;
    v35 = 0x3FF0000000000000;
    v38 = 0x3FF0000000000000;
    sub_1D0BA5090(v39, &v31);
    *(v41 + 8 * v40) = v24;
    v28 = 0x100000008;
    v26 = &unk_1F4CE4320;
    v27 = xmmword_1D0E84520;
    v29 = &v30;
    sub_1D0B89390(v39, a1, &v26);
    v33 = 0x100000008;
    v31 = &unk_1F4CE4320;
    v32 = xmmword_1D0E84520;
    v34 = &v35;
    sub_1D0B88838(&v26, a2, &v31);
    sub_1D0B894B0(a4, &v31);
    sub_1D0B894B0(a5, v39);
    v33 = 0x200000002;
    v31 = &unk_1F4CE0268;
    v32 = xmmword_1D0E83F70;
    v36 = 0;
    v37 = 0;
    v34 = &v35;
    v35 = 0x3FF0000000000000;
    v38 = 0x3FF0000000000000;
    sub_1D0B894B0(a6, &v31);
    return 0;
  }

  else
  {
    v39[0] = 12;
    LOBYTE(v31) = 4;
    cnprint::CNPrinter::Print(v39, &v31, "f_TwoStateOscillator called with inadequate matrices.", a4, a5, a6, a7, a8, v25);
    return 0xFFFFFFFFLL;
  }
}

__n128 sub_1D0BA57FC(uint64_t a1, uint64_t a2)
{
  result.n128_u64[0] = 0x800000008;
  *(a1 + 24) = 0x800000008;
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F4CE43B0;
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
  if (v4 > 8)
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

float64x2_t sub_1D0BA5940(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 12);
  *(a2 + 8) = v3;
  *(a2 + 12) = v2;
  v4 = (v2 * v3);
  *(a2 + 16) = v4;
  *(a2 + 20) = v3;
  if (v4 > 3)
  {
    v9 = (v4 - 2);
    v10 = *(a1 + 32);
    v11 = *(a2 + 32);
    v12 = (v10 + 8 * v9);
    v13 = (v4 - 1) >> 1;
    v14 = v11;
    do
    {
      v15 = *v10++;
      *v14++ = vnegq_f64(v15);
      --v13;
    }

    while (v13);
    result = vnegq_f64(*v12);
    *(v11 + 8 * v9) = result;
  }

  else if (v4 >= 1)
  {
    v5 = *(a1 + 32);
    v6 = *(a2 + 32);
    do
    {
      v7 = *v5++;
      result.f64[0] = -v7;
      *v6++ = -v7;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_1D0BA59C4(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 8);
  v4 = *(result + 12);
  v5 = *(a2 + 8);
  v6 = v5 + v3;
  *(a3 + 8) = v5 + v3;
  *(a3 + 12) = v4;
  *(a3 + 16) = (v5 + v3) * v4;
  *(a3 + 20) = v5 + v3;
  if (v4)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = *(result + 20);
    v12 = *(result + 32);
    result = *(a3 + 32);
    v13 = *(a2 + 20);
    v14 = v3;
    v15 = *(a2 + 32);
    do
    {
      v16 = v8;
      v17 = v9;
      for (i = v3; i; --i)
      {
        *(result + 8 * v17++) = *(v12 + 8 * v16++);
      }

      v19 = v7;
      v20 = v14;
      for (j = v5; j; --j)
      {
        *(result + 8 * v20++) = *(v15 + 8 * v19++);
      }

      ++v10;
      v9 += v6;
      v8 += v11;
      v14 += v6;
      v7 += v13;
    }

    while (v10 != v4);
  }

  return result;
}

float64x2_t sub_1D0BA5A78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 12);
  *(a3 + 8) = v4;
  *(a3 + 12) = v3;
  v5 = (v3 * v4);
  *(a3 + 16) = v5;
  *(a3 + 20) = v4;
  if (v5 > 3)
  {
    v13 = (v5 - 2);
    v14 = *(a1 + 32);
    v15 = *(a2 + 32);
    v16 = *(a3 + 32);
    v17 = (v15 + 8 * v13);
    v18 = (v5 - 1) >> 1;
    v19 = v14;
    v20 = v16;
    do
    {
      v21 = *v19++;
      v22 = v21;
      v23 = *v15++;
      *v20++ = vsubq_f64(v22, v23);
      --v18;
    }

    while (v18);
    result = vsubq_f64(*(v14 + 8 * v13), *v17);
    *(v16 + 8 * v13) = result;
  }

  else if (v5 >= 1)
  {
    v6 = *(a1 + 32);
    v7 = *(a2 + 32);
    v8 = *(a3 + 32);
    do
    {
      v9 = *v6++;
      v10 = v9;
      v11 = *v7++;
      result.f64[0] = v10 - v11;
      *v8++ = result.f64[0];
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_1D0BA5B14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1D0B894B0(a6, a1);
  v11 = *(a6 + 8);
  v12 = *(a6 + 32);
  v13 = *(a6 + 20);
  v14 = *(a3 + 32);
  v15 = *(a4 + 32);
  v16 = *(a4 + 28) * *(a4 + 24);
  v45 = *(a6 + 12);
  v46 = v11;
  v17 = dgeqrf_NEWLAPACK();
  v18 = **(a4 + 32);
  if (v16 < v18 && cnprint::CNPrinter::GetLogLevel(v17) <= 1)
  {
    LOWORD(v46) = 4;
    LOBYTE(v45) = 1;
    cnprint::CNPrinter::Print(&v46, &v45, "Warning: Qr optimal workspace size %d is greater than provided workspace size %d; performance may suffer.", v19, v20, v21, v22, v23, v18);
  }

  sub_1D0B894B0(a5, a2);
  v24 = *(a5 + 8);
  v25 = *(a5 + 12);
  if (*(a1 + 12) < *(a1 + 8))
  {
    v26 = *(a1 + 12);
  }

  v27 = *(a5 + 32);
  v28 = *(a5 + 20);
  v48 = 76;
  v47 = 84;
  v45 = v25;
  v46 = v24;
  result = dormqr_NEWLAPACK();
  v30 = *(a1 + 8);
  if (v30 >= *(a1 + 12))
  {
    v30 = *(a1 + 12);
  }

  *(a3 + 8) = v30;
  *(a3 + 12) = 1;
  *(a3 + 16) = v30;
  *(a3 + 20) = v30;
  v31 = *(a4 + 24);
  v32 = *(a4 + 28);
  *(a4 + 8) = v31;
  *(a4 + 12) = v32;
  *(a4 + 16) = v32 * v31;
  *(a4 + 20) = v31;
  v33 = *(a1 + 8);
  v34 = *(a2 + 12);
  *(a5 + 8) = v33;
  *(a5 + 12) = v34;
  *(a5 + 16) = v34 * v33;
  *(a5 + 20) = v33;
  v35 = *(a6 + 12);
  if (v35)
  {
    v36 = 0;
    v37 = *(a6 + 8);
    v38 = *(a6 + 32);
    v39 = v37 - 1;
    v40 = *(a6 + 20) + 1;
    v41 = 1;
    do
    {
      ++v36;
      v42 = v41;
      v43 = v39;
      if (v36 < v37)
      {
        do
        {
          *(v38 + 8 * v42++) = 0;
          --v43;
        }

        while (v43);
      }

      --v39;
      v41 += v40;
    }

    while (v36 != v35);
  }

  return result;
}

uint64_t sub_1D0BA5D5C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1D0BA5E2C(result, a4);
  }

  return result;
}

void sub_1D0BA5DC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1D0BA5F70(&a9);
  _Unwind_Resume(a1);
}

void sub_1D0BA5DE4(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_1D0C54BE8();
}

void sub_1D0BA5E2C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    sub_1D0BA5DE4(a1, a2);
  }

  sub_1D0C5663C();
}

uint64_t sub_1D0BA5E68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  v12 = 0;
  if (a2 != a3)
  {
    v6 = (a2 + 8);
    do
    {
      v7 = v6 - 8;
      *v4 = *(v6 - 2);
      v8 = (v4 + 8);
      if (*(v6 + 23) < 0)
      {
        sub_1D0BC39B4(v8, *v6, *(v6 + 1));
        v4 = v14;
      }

      else
      {
        v9 = *v6;
        *(v4 + 24) = *(v6 + 2);
        *v8 = v9;
      }

      v4 += 32;
      v14 = v4;
      v6 += 2;
    }

    while (v7 + 32 != a3);
  }

  v12 = 1;
  sub_1D0BA5F38(v11);
  return v4;
}

uint64_t sub_1D0BA5F38(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1D0DA3540(a1);
  }

  return a1;
}

void sub_1D0BA5F70(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1D0BA196C(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t sub_1D0BA5FC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void sub_1D0BA62A8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0B9FD10(&v38, a3, a3, a4, a5, a6, a7, a8);
  v9 = (*(*v8 + 88))(v8);
  if ((v9 & 1) == 0)
  {
    v45 = 12;
    v44 = 2;
    v42 = (*(v38 + 16))(&v38);
    v43 = v31;
    (*(v38 + 24))(v40, &v38);
    if (v41 >= 0)
    {
      v37 = v40;
    }

    else
    {
      v37 = v40[0];
    }

    cnprint::CNLogFormatter::FormatWarning(v8 + 240, &v42, "RavenConvergenceEstimatorActiveObject not configured, cannot handle event, %s", v32, v33, v34, v35, v36, v37);
    if (*(v8 + 263) >= 0)
    {
      LOBYTE(v30) = v8 - 16;
    }

    else
    {
      v30 = *(v8 + 240);
    }

    goto LABEL_23;
  }

  if (!cnprint::CNPrinter::GetLogLevel(v9))
  {
    LOWORD(v42) = 12;
    LOBYTE(v45) = 0;
    v40[0] = (*(v38 + 16))(&v38);
    v40[1] = v10;
    cnprint::CNLogFormatter::FormatGeneral(v8 + 240, v40, "RavenSolutionEvent received");
    if (*(v8 + 263) >= 0)
    {
      LOBYTE(v16) = v8 - 16;
    }

    else
    {
      v16 = *(v8 + 240);
    }

    cnprint::CNPrinter::Print(&v42, &v45, "%s", v11, v12, v13, v14, v15, v16);
  }

  if (BYTE1(v39[25]) == 2)
  {
    *(v8 + 288) = 1;
    *(v8 + 296) = *&v39[145];
    memcpy((v8 + 320), v39, 0xA51uLL);
  }

  raven::RavenConvergenceEstimator::HandleEvent((v8 + 2968), &v38);
  if (v17 && cnprint::CNPrinter::GetLogLevel(v17) <= 1)
  {
    v45 = 12;
    v44 = 1;
    v42 = (*(v38 + 16))(&v38);
    v43 = v18;
    (*(v38 + 24))(v40, &v38);
    if (v41 >= 0)
    {
      v24 = v40;
    }

    else
    {
      v24 = v40[0];
    }

    cnprint::CNLogFormatter::FormatWarning(v8 + 240, &v42, "Failed to handle event - %s.", v19, v20, v21, v22, v23, v24);
    if (*(v8 + 263) >= 0)
    {
      LOBYTE(v30) = v8 - 16;
    }

    else
    {
      v30 = *(v8 + 240);
    }

LABEL_23:
    cnprint::CNPrinter::Print(&v45, &v44, "%s", v25, v26, v27, v28, v29, v30);
    if (v41 < 0)
    {
      operator delete(v40[0]);
    }
  }
}

void sub_1D0BA6580(_Unwind_Exception *exception_object)
{
  if (*(v1 - 57) < 0)
  {
    operator delete(*(v1 - 80));
  }

  _Unwind_Resume(exception_object);
}

void raven::RavenConvergenceEstimator::HandleEvent(raven::RavenConvergenceEstimator *this, const raven::RavenSolutionEvent *a2)
{
  if (*(this + 57) == 1 && *(a2 + 209) == 2)
  {
    if (*(a2 + 208))
    {
      if ((*(this + 58) & 1) == 0)
      {
        if (*(a2 + 1464))
        {
          v44[0] = 0u;
          v47 = 0x800000008;
          v45 = &unk_1F4CE43B0;
          v46 = xmmword_1D0E84510;
          v48 = &v49;
          v41 = 0x300000003;
          v40 = xmmword_1D0E76C10;
          v39 = &unk_1F4CD5DD0;
          v42 = &v43;
          sub_1D0DF5384(a2 + 1168, &v39);
          if (v5)
          {
            v4.f64[0] = *(*(this + 146) + 1272);
            v25 = 0x300000003;
            __p = &unk_1F4CD5DD0;
            v24 = xmmword_1D0E76C10;
            v29 = 0;
            v28 = 0u;
            v31 = 0u;
            v26 = &v27;
            v27 = 0x3FF0000000000000;
            v30 = 0x3FF0000000000000;
            v32 = 0;
            v33 = 0x3FF0000000000000;
            v4.f64[0] = v4.f64[0] * v4.f64[0];
            v36 = 0x300000003;
            v35 = xmmword_1D0E76C10;
            v34 = &unk_1F4CD5DD0;
            v37 = &v38;
            sub_1D0BC5ED4(&__p, &v34, v4);
            v6 = 0.0;
            v7 = 0.0;
            v8 = 0.0;
            if (*(a2 + 1544) != 1 || (v6 = *(a2 + 194), v7 = *(a2 + 195), v8 = *(a2 + 196), sub_1D0C4DF40(a2 + 1168, &v34), v9))
            {
              v10 = *(this + 146);
              v11 = 1.0;
              if (*(a2 + 209) != 2)
              {
                v11 = v10[315];
              }

              sub_1D0DED4B0(v44, *(a2 + 146), *(a2 + 147), &v39, &v34, *(a2 + 184), *(a2 + 185), *(a2 + 186), v6, v7, v8, v10[157], v10[158], v11);
              if (!(*(*this + 128))(this, v44))
              {
                v22 = 12;
                v21 = 3;
                v20[0] = (*(*a2 + 16))(a2);
                v20[1] = v12;
                sub_1D0DEC664(a2 + 208, &__p);
                if (v24 >= 0)
                {
                  p_p = &__p;
                }

                else
                {
                  p_p = __p;
                }

                cnprint::CNLogFormatter::FormatGeneral(this + 2712, v20, "Estimator initialized from %s solution with validity time %.3lf", p_p, *(a2 + 147) + *(a2 + 146));
                if (*(this + 2735) >= 0)
                {
                  LOBYTE(v19) = this - 104;
                }

                else
                {
                  v19 = *(this + 339);
                }

                cnprint::CNPrinter::Print(&v22, &v21, "%s", v14, v15, v16, v17, v18, v19);
                if (SHIBYTE(v24) < 0)
                {
                  operator delete(__p);
                }
              }
            }
          }
        }
      }
    }
  }
}