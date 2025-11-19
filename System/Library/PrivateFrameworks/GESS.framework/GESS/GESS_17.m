void sub_24BDD2E88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a19)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BDD2EF4(uint64_t a1, uint64_t a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v199 = *MEMORY[0x277D85DE8];
  v13.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
  sub_24BCA2D38(v197, a7 + 32);
  sub_24BCA1524(v195, a7);
  sub_24BCA2DD0(v193, a7 + 64);
  sub_24BCA18B0(v191, (*(a1 + 112) - *(a1 + 104)) >> 2);
  if (*(a1 + 112) != *(a1 + 104))
  {
    v14 = 0;
    v15 = 1;
    do
    {
      v16 = (*(a1 + 8) + 16 * *(a1 + 176));
      v18 = *v16;
      v17 = v16[1];
      if (v17)
      {
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v17);
      }

      *(v191[0] + v14) = *(*(v18 + 40) + 16 * v14);
      v14 = v15++;
    }

    while (v14 < (*(a1 + 112) - *(a1 + 104)) >> 2);
  }

  sub_24BE2493C(a1, &v185);
  for (i = 0; i != 3; ++i)
  {
    v187.f64[i] = v185.f32[i];
  }

  for (j = 0; j != 3; ++j)
  {
    v189.f64[j] = *(&v185 + j + 4);
  }

  if (*(a1 + 112) != *(a1 + 104))
  {
    v21 = 0;
    v22 = vsubq_f64(v189, v187);
    v23 = sqrt(COERCE_DOUBLE(*&vmulq_f64(v22, v22).f64[1]) + v22.f64[0] * v22.f64[0] + (v190 - v188) * (v190 - v188));
    __asm { FMOV            V1.2D, #0.5 }

    *&_Q1.f64[0] = vcvt_f32_f64(vmulq_f64(vaddq_f64(v189, v187), _Q1));
    *&v29 = (v190 + v188) * 0.5;
    *&_Q1.f64[1] = v29;
    v157 = _Q1;
    v30 = 1;
    do
    {
      v31 = (*(a1 + 8) + 16 * *(a1 + 176));
      v33 = *v31;
      v32 = v31[1];
      if (v32)
      {
        atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v32);
      }

      v34 = *(v33 + 40);
      v35 = vsubq_f32(*(v34 + 16 * v21), v157);
      *(v34 + 16 * v21) = v35;
      v21 = v30;
      v37 = *(a1 + 104);
      v36 = *(a1 + 112);
      ++v30;
    }

    while (v21 < (v36 - v37) >> 2);
    if (v36 != v37)
    {
      v38 = 0;
      v35.f32[0] = v23;
      v158 = vdupq_lane_s32(*v35.f32, 0);
      v39 = 1;
      do
      {
        v40 = (*(a1 + 8) + 16 * *(a1 + 176));
        v42 = *v40;
        v41 = v40[1];
        if (v41)
        {
          atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v41);
        }

        *(*(v42 + 40) + 16 * v38) = vdivq_f32(*(*(v42 + 40) + 16 * v38), v158);
        v38 = v39++;
      }

      while (v38 < (*(a1 + 112) - *(a1 + 104)) >> 2);
    }
  }

  v183 = 0;
  v184 = 0;
  v179 = 0;
  v180 = 0;
  v181 = 0;
  v182 = 0;
  sub_24BC836D4(&v185, off_27F078FD8[0]);
  v187 = 0uLL;
  v188 = 0.0;
  v43 = sub_24BCDCF20((a1 + 56), &v187, &v185);
  if (v186 < 0)
  {
    operator delete(v185.i64[0]);
  }

  v156 = a6;
  v155 = a2;
  if (v43 != -1)
  {
    sub_24BD3EC5C(&v182, (*(a1 + 160) - *(a1 + 152)) >> 2);
    sub_24BD3EC5C(&v179, (*(a1 + 160) - *(a1 + 152)) >> 2);
    if (*(a1 + 160) != *(a1 + 152))
    {
      LODWORD(v44) = 0;
      do
      {
        v45 = 0;
        v46 = 3 * v44;
        do
        {
          v47 = (*(a1 + 56) + 16 * v43);
          v49 = *v47;
          v48 = v47[1];
          if (v48)
          {
            atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_24BC9EC78(v48);
            v50 = (*(a1 + 56) + 16 * v43);
            v51 = *v50;
            v48 = v50[1];
          }

          else
          {
            v51 = *v47;
          }

          v182[v46 + v45] = *(*(v49 + 40) + v46 * 8 + 4 * v45);
          if (v48)
          {
            atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_24BC9EC78(v48);
          }

          v179[v46 + v45] = *(*(v51 + 40) + v46 * 8 + 4 * v45 + 12);
          ++v45;
        }

        while (v45 != 3);
        v44 = (v44 + 1);
      }

      while (v44 < (*(a1 + 160) - *(a1 + 152)) >> 2);
    }

    goto LABEL_42;
  }

  sub_24BCA1A48(&v187, (*(a1 + 160) - *(a1 + 152)) >> 2);
  sub_24BCA1A48(&v185, (*(a1 + 160) - *(a1 + 152)) >> 2);
  sub_24BDD1F58(a1, &v182, &v179, &v187, &v185);
  sub_24BDD2B84(a1, &v182, v52, &v187, &v185, 2);
  v53 = v185.i64[0];
  v54 = *(a1 + 160) - *(a1 + 152);
  if (v54)
  {
    v55 = 0;
    v56 = v54 >> 2;
    v57 = v187.f64[0];
    v58 = v182 + 2;
    v59 = v179 + 2;
    do
    {
      v60 = *(*&v57 + 8 * v55);
      v61 = v60 * *v58;
      *(v58 - 1) = vmulq_n_f64(*(v58 - 2), v60);
      *v58 = v61;
      v58 += 3;
      v62 = v53[v55];
      v63 = v62 * *v59;
      *(v59 - 1) = vmulq_n_f64(*(v59 - 2), v62);
      *v59 = v63;
      v59 += 3;
      ++v55;
    }

    while (v56 > v55);
  }

  else if (!v185.i64[0])
  {
    goto LABEL_40;
  }

  v185.i64[1] = v53;
  operator delete(v53);
LABEL_40:
  if (*&v187.f64[0])
  {
    v187.f64[1] = v187.f64[0];
    operator delete(*&v187.f64[0]);
  }

LABEL_42:
  *(v156 + 24) = *(v156 + 24) + (std::chrono::system_clock::now().__d_.__rep_ - v13.__d_.__rep_) / 1000000.0;
  v64.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
  if (v196)
  {
    sub_24BC836D4(&v187, &unk_24C0435AF);
    sub_24BC976F4(v195, &v187, 0.2);
    if (SHIBYTE(v188) < 0)
    {
      operator delete(*&v187.f64[0]);
    }
  }

  if (v194 && (*(*v194 + 48))(v194))
  {
    if (v198)
    {
      v65 = sub_24BD6A604(0xAu);
      v67 = v66;
      sub_24BC836D4(&v187, &unk_24C0435AF);
      v185.i64[0] = v65;
      v185.i64[1] = v67;
      if (!v198)
      {
        sub_24BCA1F3C();
      }

      (*(*v198 + 48))(v198, &v185, &v187);
      if (SHIBYTE(v188) < 0)
      {
        operator delete(*&v187.f64[0]);
      }
    }

    v68 = 0;
    goto LABEL_157;
  }

  v177 = 0;
  v178 = 0;
  v173 = 0;
  v174 = 0;
  v175 = 0;
  v176 = 0;
  v170 = 0;
  v171 = 0;
  v172 = 0;
  if (!sub_24BDC5E80(a1, &v182, &v179))
  {
    v101 = sub_24BD6A604(0x65u);
    v103 = v102;
    *v156 = v101;
    *(v156 + 8) = v102;
    if (v198)
    {
      sub_24BC836D4(&v187, &unk_24C0435AF);
      v185.i64[0] = v101;
      v185.i64[1] = v103;
      if (!v198)
      {
        sub_24BCA1F3C();
      }

      (*(*v198 + 48))(v198, &v185, &v187);
      if (SHIBYTE(v188) < 0)
      {
        operator delete(*&v187.f64[0]);
      }
    }

    v68 = 0;
    goto LABEL_151;
  }

  v69 = *(a1 + 112) - *(a1 + 104);
  if (v69)
  {
    v70 = 0;
    v71 = v69 >> 2;
    v72 = 1;
    do
    {
      v73 = (v170 + 24 * v70);
      v74 = *v73;
      v75 = v73[1];
      v76 = v73[2];
      v70 = v72;
    }

    while (v71 > v72++);
    v78 = 0;
    v79 = 1;
    do
    {
      v80 = (v170 + 24 * v78);
      v81 = *v80;
      v82 = v80[2];
      v83 = (*(a1 + 8) + 16 * *(a1 + 176));
      v85 = *v83;
      v84 = v83[1];
      if (v84)
      {
        atomic_fetch_add_explicit(&v84->__shared_owners_, 1uLL, memory_order_relaxed);
        v159 = v81;
        sub_24BC9EC78(v84);
        v81 = v159;
      }

      *&v86 = vcvt_f32_f64(v81);
      *&v87 = v82;
      *(&v86 + 1) = v87;
      *(*(v85 + 40) + 16 * v78) = v86;
      v78 = v79++;
    }

    while (v78 < (*(a1 + 112) - *(a1 + 104)) >> 2);
  }

  sub_24BE2493C(a1, &v185);
  for (k = 0; k != 3; ++k)
  {
    v187.f64[k] = v185.f32[k];
  }

  for (m = 0; m != 3; ++m)
  {
    v189.f64[m] = *(&v185 + m + 4);
  }

  if (*(a1 + 112) != *(a1 + 104))
  {
    v90 = 0;
    v91 = sqrt((v189.f64[1] - v187.f64[1]) * (v189.f64[1] - v187.f64[1]) + (v189.f64[0] - v187.f64[0]) * (v189.f64[0] - v187.f64[0]) + (v190 - v188) * (v190 - v188));
    *&v91 = v91;
    v160 = vdupq_lane_s32(*&v91, 0);
    v92 = 1;
    do
    {
      v93 = (*(a1 + 8) + 16 * *(a1 + 176));
      v95 = *v93;
      v94 = v93[1];
      if (v94)
      {
        atomic_fetch_add_explicit(&v94->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v94);
      }

      *(*(v95 + 40) + 16 * v90) = vdivq_f32(*(*(v95 + 40) + 16 * v90), v160);
      v90 = v92++;
    }

    while (v90 < (*(a1 + 112) - *(a1 + 104)) >> 2);
  }

  v96 = sub_24BDD4184(a1);
  v187 = 0uLL;
  v188 = 0.0;
  sub_24BDC849C(a1, &v176, &v173, &v187);
  *(v156 + 32) = *(v156 + 32) + (std::chrono::system_clock::now().__d_.__rep_ - v64.__d_.__rep_) / 1000000.0;
  v97.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
  if (v196)
  {
    sub_24BC836D4(&v185, &unk_24C0435AF);
    sub_24BC976F4(v195, &v185, 0.4);
    if (v186 < 0)
    {
      operator delete(v185.i64[0]);
    }
  }

  if (v194 && (*(*v194 + 48))(v194))
  {
    if (!v198)
    {
      goto LABEL_148;
    }

    v98 = sub_24BD6A604(0xAu);
    v100 = v99;
    sub_24BC836D4(&v185, &unk_24C0435AF);
    v168 = v98;
    v169 = v100;
    if (!v198)
    {
      sub_24BCA1F3C();
    }

    (*(*v198 + 48))(v198, &v168, &v185);
LABEL_145:
    if (v186 < 0)
    {
      v139 = v185.i64[0];
LABEL_147:
      operator delete(v139);
    }

LABEL_148:
    v68 = 0;
    goto LABEL_149;
  }

  sub_24BCA18B0(&v185, (*(a1 + 112) - *(a1 + 104)) >> 2);
  sub_24BCA18B0(&v168, (*(a1 + 160) - *(a1 + 152)) >> 2);
  sub_24BD78640(a1, &v185, &v168);
  sub_24BD4308C(&v166, (*(a1 + 160) - *(a1 + 152)) >> 2);
  v104 = *(a1 + 160) - *(a1 + 152);
  v105 = v104 >> 2;
  if (v104)
  {
    v106 = 0;
    v107 = v168;
    v108 = v166;
    if (v105 <= 1)
    {
      v109 = 1;
    }

    else
    {
      v109 = v105;
    }

    do
    {
      for (n = 0; n != 3; ++n)
      {
        *&__p[n] = v107[n];
      }

      v111 = &v108[24 * v106];
      *v111 = *__p;
      *(v111 + 2) = v165;
      ++v106;
      v107 += 4;
    }

    while (v106 != v109);
  }

  sub_24BCA18B0(__p, v105);
  v112 = sqrt(1.0 / v96);
  if (*(a1 + 160) != *(a1 + 152))
  {
    v113 = 0;
    v114 = 1;
    do
    {
      v115 = (*&v187.f64[0] + 24 * v113);
      *&v116 = vcvt_f32_f64(*v115);
      *&v117 = v115[1].f64[0];
      *(&v116 + 1) = v117;
      *(__p[0] + v113) = v116;
      v113 = v114++;
    }

    while (v113 < (*(a1 + 160) - *(a1 + 152)) >> 2);
  }

  v118 = 0;
  v119 = v112 * a3;
  do
  {
    sub_24BD75E9C(a1, &v168, __p);
  }

  while (v118++ < 9);
  v120 = __p[0];
  v121 = *(a1 + 160) - *(a1 + 152);
  if (v121)
  {
    v122 = 0;
    v123 = 0;
    v124 = v121 >> 2;
    v125 = v187.f64[0];
    do
    {
      for (ii = 0; ii != 3; ++ii)
      {
        *(&v162 + ii) = v120[4 * v123 + ii];
      }

      v127 = *&v125 + 24 * v122;
      *v127 = v162;
      *(v127 + 16) = v163;
      v122 = ++v123;
    }

    while (v124 > v123);
  }

  else if (!__p[0])
  {
    goto LABEL_103;
  }

  __p[1] = v120;
  operator delete(v120);
LABEL_103:
  v161 = 0;
  sub_24BCA1524(v192, v195);
  v128 = sub_24BDD13D8(a1, &v187, &v166, v156, &v161, v192, v119);
  sub_24BC9F00C(v192);
  if ((v128 & 1) == 0)
  {
    v134 = v161;
    if (v198)
    {
      v135 = sub_24BD6A604(v161);
      v137 = v136;
      sub_24BC836D4(__p, &unk_24C0435AF);
      *&v162 = v135;
      *(&v162 + 1) = v137;
      if (!v198)
      {
        sub_24BCA1F3C();
      }

      (*(*v198 + 48))(v198, &v162, __p);
      if (SHIBYTE(v165) < 0)
      {
        operator delete(__p[0]);
      }
    }

    *v156 = sub_24BD6A604(v134);
    *(v156 + 8) = v138;
    if (v166)
    {
      v167 = v166;
      operator delete(v166);
    }

    if (v168)
    {
      v169 = v168;
      operator delete(v168);
    }

    v139 = v185.i64[0];
    if (!v185.i64[0])
    {
      goto LABEL_148;
    }

    v185.i64[1] = v185.i64[0];
    goto LABEL_147;
  }

  if (v166)
  {
    v167 = v166;
    operator delete(v166);
  }

  if (v168)
  {
    v169 = v168;
    operator delete(v168);
  }

  if (v185.i64[0])
  {
    v185.i64[1] = v185.i64[0];
    operator delete(v185.i64[0]);
  }

  *(v156 + 40) = *(v156 + 40) + (std::chrono::system_clock::now().__d_.__rep_ - v97.__d_.__rep_) / 1000000.0;
  v129.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
  if (v196)
  {
    sub_24BC836D4(&v185, &unk_24C0435AF);
    sub_24BC976F4(v195, &v185, 0.9);
    if (v186 < 0)
    {
      operator delete(v185.i64[0]);
    }
  }

  if (v194 && (*(*v194 + 48))(v194))
  {
    if (!v198)
    {
      goto LABEL_148;
    }

    v130 = sub_24BD6A604(0xAu);
    v132 = v131;
    sub_24BC836D4(&v185, &unk_24C0435AF);
    v168 = v130;
    v169 = v132;
    v133 = v198;
    if (!v198)
    {
      sub_24BCA1F3C();
    }

    goto LABEL_144;
  }

  if (*(a1 + 112) != *(a1 + 104))
  {
    v140 = 0;
    v141 = 1;
    do
    {
      v142 = v191[0];
      v143 = (*(a1 + 8) + 16 * *(a1 + 176));
      v145 = *v143;
      v144 = v143[1];
      if (v144)
      {
        atomic_fetch_add_explicit(&v144->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v144);
      }

      *(*(v145 + 40) + 16 * v140) = v142[v140];
      v140 = v141++;
    }

    while (v140 < (*(a1 + 112) - *(a1 + 104)) >> 2);
  }

  v146 = *(a5 + 16);
  if ((sub_24BDDBD74(a1, v155) & 1) == 0)
  {
    if (!v198)
    {
      goto LABEL_148;
    }

    v150 = sub_24BD6A604(0x68u);
    v152 = v151;
    sub_24BC836D4(&v185, &unk_24C0435AF);
    v168 = v150;
    v169 = v152;
    v133 = v198;
    if (!v198)
    {
      sub_24BCA1F3C();
    }

LABEL_144:
    (*(*v198 + 48))(v133, &v168, &v185);
    goto LABEL_145;
  }

  *(v156 + 48) = *(v156 + 48) + (std::chrono::system_clock::now().__d_.__rep_ - v129.__d_.__rep_) / 1000000.0;
  if (v196)
  {
    sub_24BC836D4(&v185, &unk_24C0435AF);
    sub_24BC976F4(v195, &v185, 1.0);
    if (v186 < 0)
    {
      operator delete(v185.i64[0]);
    }
  }

  if (v194 && (*(*v194 + 48))(v194))
  {
    if (!v198)
    {
      goto LABEL_148;
    }

    v147 = sub_24BD6A604(0xAu);
    v149 = v148;
    sub_24BC836D4(&v185, &unk_24C0435AF);
    v168 = v147;
    v169 = v149;
    v133 = v198;
    if (!v198)
    {
      sub_24BCA1F3C();
    }

    goto LABEL_144;
  }

  v68 = 1;
LABEL_149:
  if (*&v187.f64[0])
  {
    v187.f64[1] = v187.f64[0];
    operator delete(*&v187.f64[0]);
  }

LABEL_151:
  if (v170)
  {
    v171 = v170;
    operator delete(v170);
  }

  if (v173)
  {
    v174 = v173;
    operator delete(v173);
  }

  if (v176)
  {
    v177 = v176;
    operator delete(v176);
  }

LABEL_157:
  if (v179)
  {
    v180 = v179;
    operator delete(v179);
  }

  if (v182)
  {
    v183 = v182;
    operator delete(v182);
  }

  if (v191[0])
  {
    v191[1] = v191[0];
    operator delete(v191[0]);
  }

  sub_24BC9F10C(v193);
  sub_24BC9F00C(v195);
  sub_24BC9F08C(v197);
  v153 = *MEMORY[0x277D85DE8];
  return v68;
}

void sub_24BDD3F28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *__p)
{
  v33 = *(v30 + 128);
  if (v33)
  {
    *(v30 + 136) = v33;
    operator delete(v33);
  }

  if (__p)
  {
    operator delete(__p);
  }

  v34 = *v30;
  if (*v30)
  {
    *(v30 + 8) = v34;
    operator delete(v34);
  }

  v35 = *(v30 + 24);
  if (v35)
  {
    *(v30 + 32) = v35;
    operator delete(v35);
  }

  v36 = *(v30 + 48);
  if (v36)
  {
    *(v30 + 56) = v36;
    operator delete(v36);
  }

  v37 = *(v30 + 72);
  if (v37)
  {
    *(v30 + 80) = v37;
    operator delete(v37);
  }

  v38 = *(v30 + 176);
  if (v38)
  {
    *(v30 + 184) = v38;
    operator delete(v38);
  }

  sub_24BC9F10C(v31 - 232);
  sub_24BC9F00C(v31 - 200);
  sub_24BC9F08C(v31 - 168);
  _Unwind_Resume(a1);
}

float sub_24BDD4184(uint64_t a1)
{
  v1 = *(a1 + 160) - *(a1 + 152);
  if (!v1)
  {
    return 0.0;
  }

  v3 = 0;
  v4 = v1 >> 2;
  if (v4 <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  v6 = 0.0;
  do
  {
    v8 = v3;
    v6 = v6 + sub_24BC96B00(a1, &v8);
    ++v3;
  }

  while (v5 != v3);
  return v6;
}

uint64_t sub_24BDD4208(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5)
{
  v51 = *MEMORY[0x277D85DE8];
  sub_24BCA1524(v46, a5);
  sub_24BCA2DD0(v44, a5 + 64);
  sub_24BCA2D38(v42, a5 + 32);
  if (*(a1 + 160) != *(a1 + 152))
  {
    v10.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    sub_24BC836D4(&v48, off_27F078FD8[0]);
    __p[0] = 0;
    __p[1] = 0;
    v41 = 0;
    v11 = sub_24BCDCF20((a1 + 56), __p, &v48);
    if (v50 < 0)
    {
      operator delete(v48);
    }

    if (v11 == -1)
    {
      sub_24BE1AAF0(a1, &v37, 0);
    }

    else
    {
      sub_24BE1C648(a1, &v37, 0);
    }

    v12 = v38;
    if (v38 == v37)
    {
      if (v38 >= v39)
      {
        v13 = sub_24BDD5430(&v37, a1);
      }

      else
      {
        sub_24BCB35B4(v38, a1);
        *v12 = &unk_285F941E8;
        v13 = v12 + 23;
      }

      v38 = v13;
    }

    *(a4 + 16) = *(a4 + 16) + (std::chrono::system_clock::now().__d_.__rep_ - v10.__d_.__rep_) / 1000000.0;
    if (v47)
    {
      sub_24BC836D4(__p, &unk_24C0435AF);
      sub_24BC976F4(v46, __p, 0.05);
      if (SHIBYTE(v41) < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (v45 && (*(*v45 + 48))(v45))
    {
      if (v43)
      {
        v14 = sub_24BD6A604(0xAu);
        v16 = v15;
        sub_24BC836D4(__p, &unk_24C0435AF);
        v48 = v14;
        v49 = v16;
        if (!v43)
        {
          sub_24BCA1F3C();
        }

        (*(*v43 + 48))(v43, &v48, __p);
        if (SHIBYTE(v41) < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    else
    {
      v34 = 0;
      v35 = 0;
      v36 = 0;
      sub_24BDD4184(a1);
      sub_24BDD5744(v33, 0xD37A6F4DE9BD37A7 * (v38 - v37));
      v17 = v37;
      if (v38 != v37)
      {
        v18 = 0;
        v19 = 0xD37A6F4DE9BD37A7 * (v38 - v37);
        v20 = ((*(a1 + 160) - *(a1 + 152)) >> 2);
        v21 = v33[0];
        if (v19 <= 1)
        {
          v19 = 1;
        }

        v22 = v37 + 20;
        v23 = v33[0];
        do
        {
          v25 = *(v22 - 1);
          v24 = *v22;
          if (v18)
          {
            v26 = *(v23 - 1);
            *v23 = v26;
          }

          else
          {
            *v21 = 1028443341;
            v26 = 0.05;
          }

          v23[1] = v26 + (((((v24 - v25) >> 2) / v20) * 0.9) * (((v24 - v25) >> 2) / v20));
          ++v18;
          v23 += 2;
          v22 += 23;
        }

        while (v19 != v18);
        sub_24BDD4184(v17);
        *a3;
        sub_24BD2A7F0();
      }

      if (vcvtd_n_f64_u64((*(a1 + 160) - *(a1 + 152)) >> 2, 1uLL) > 0.0)
      {
        *a4 = sub_24BD6A604(0);
        *(a4 + 8) = v27;
        std::chrono::system_clock::now();
        sub_24BCB3798(a2);
        v28 = (v35 - v34) >> 4;
        if (v35 == v34)
        {
          LODWORD(v28) = 1;
        }

        *(a4 + 72) = v28;
        sub_24BE1C300(&v34, a2);
      }

      if (v43)
      {
        v29 = *a4;
        v30 = *(a4 + 8);
        sub_24BC836D4(__p, &unk_24C0435AF);
        v48 = v29;
        v49 = v30;
        if (!v43)
        {
          sub_24BCA1F3C();
        }

        (*(*v43 + 48))(v43, &v48, __p);
        if (SHIBYTE(v41) < 0)
        {
          operator delete(__p[0]);
        }
      }

      if (v33[0])
      {
        v33[1] = v33[0];
        operator delete(v33[0]);
      }

      __p[0] = &v34;
      sub_24BCB7FC8(__p);
    }

    __p[0] = &v37;
    sub_24BDD5370(__p);
  }

  sub_24BC9F08C(v42);
  sub_24BC9F10C(v44);
  sub_24BC9F00C(v46);
  v31 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_24BDD4A1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (__p)
  {
    operator delete(__p);
  }

  a41 = &a19;
  sub_24BCB7FC8(&a41);
  a19 = &a22;
  sub_24BDD5370(&a19);
  sub_24BC9F08C(&a64);
  sub_24BC9F10C(v64 - 232);
  sub_24BC9F00C(v64 - 200);
  _Unwind_Resume(a1);
}

uint64_t sub_24BDD4BC4(uint64_t a1)
{
  v2 = *(a1 + 184);
  if (v2)
  {
    *(a1 + 192) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 160);
  if (v3)
  {
    *(a1 + 168) = v3;
    operator delete(v3);
  }

  v9 = (a1 + 128);
  sub_24BDC35E0(&v9);
  v9 = (a1 + 96);
  sub_24BDC35E0(&v9);
  v4 = *(a1 + 72);
  if (v4)
  {
    *(a1 + 80) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    *(a1 + 56) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 24);
  if (v6)
  {
    *(a1 + 32) = v6;
    operator delete(v6);
  }

  v7 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v7;
    operator delete(v7);
  }

  return a1;
}

uint64_t sub_24BDD4C70(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void *sub_24BDD4CF0(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_24BD2F900(result, a2);
  }

  return result;
}

void sub_24BDD4D74(void ***a1)
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
        v4 -= 3;
        sub_24BDB10AC(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void *sub_24BDD4DF8(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_24BD82350(result, a2);
  }

  return result;
}

void sub_24BDD4E74(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24BDD4E90(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_24BC9FFD0(result, a2);
  }

  return result;
}

uint64_t sub_24BDD4F38(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = sub_24BDD50D4(v3, *a2, a2[1], 0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 2));
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t sub_24BDD4F98(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_24BC8E01C();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    sub_24BC8F4C8(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  sub_24BDD50D4(24 * v2, *a2, a2[1], 0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 2));
  v8 = v16 + 24;
  v9 = *(a1 + 8) - *a1;
  v10 = &v15[-v9];
  memcpy(&v15[-v9], *a1, v9);
  v11 = *a1;
  *a1 = v10;
  *(a1 + 8) = v8;
  v12 = *(a1 + 16);
  *(a1 + 16) = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  sub_24BC91E14(&v14);
  return v8;
}

void sub_24BDD50C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BC91E14(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24BDD50D4(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_24BCB96B4(result, a4);
  }

  return result;
}

void sub_24BDD5134(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BDD5150(uint64_t a1, _OWORD *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    sub_24BC8E01C();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v14 = a1;
  if (v7)
  {
    sub_24BCA1868(a1, v7);
  }

  __p = 0;
  v11 = (16 * v2);
  *v11 = *a2;
  v12 = 16 * v2 + 16;
  v13 = 0;
  sub_24BDD526C(a1, &__p);
  v8 = *(a1 + 8);
  if (v12 != v11)
  {
    v12 += (v11 - v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_24BDD5234(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__int128 **sub_24BDD526C(__int128 **result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = (a2[1] + *result - v3);
  if (v3 != *result)
  {
    v5 = *result;
    v6 = (a2[1] + *result - v3);
    do
    {
      v7 = *v5++;
      *v6++ = v7;
    }

    while (v5 != v3);
  }

  a2[1] = v4;
  v8 = *result;
  *result = v4;
  result[1] = v2;
  a2[1] = v8;
  v9 = result[1];
  result[1] = a2[2];
  a2[2] = v9;
  v10 = result[2];
  result[2] = a2[3];
  a2[3] = v10;
  *a2 = a2[1];
  return result;
}

void *sub_24BDD52D8(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_24BCDCCBC(result, a2);
  }

  return result;
}

void sub_24BDD5354(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BDD5370(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 184;
      v7 = v4 - 184;
      v8 = v4 - 184;
      do
      {
        v9 = *v8;
        v8 -= 184;
        (*v9)(v7);
        v6 -= 184;
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

uint64_t sub_24BDD5430(uint64_t *a1, uint64_t a2)
{
  v2 = 0xD37A6F4DE9BD37A7 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x1642C8590B21642)
  {
    sub_24BC8E01C();
  }

  if (0xA6F4DE9BD37A6F4ELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xA6F4DE9BD37A6F4ELL * ((a1[2] - *a1) >> 3);
  }

  if (0xD37A6F4DE9BD37A7 * ((a1[2] - *a1) >> 3) >= 0xB21642C8590B21)
  {
    v6 = 0x1642C8590B21642;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_24BDD5594(a1, v6);
  }

  v13 = 0;
  v14 = 184 * v2;
  v15 = 184 * v2;
  *sub_24BCB35B4(184 * v2, a2) = &unk_285F941E8;
  *&v15 = v15 + 184;
  v7 = a1[1];
  v8 = v14 + *a1 - v7;
  sub_24BDD55F0(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_24BDD56D8(&v13);
  return v12;
}

void sub_24BDD5580(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_24BDD56D8(va);
  _Unwind_Resume(a1);
}

void sub_24BDD5594(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1642C8590B21643)
  {
    operator new();
  }

  sub_24BC8DFE8();
}

uint64_t sub_24BDD55F0(uint64_t a1, uint64_t a2, uint64_t (***a3)(void), uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    v8 = a2;
    do
    {
      result = sub_24BCB35B4(a4 + v7, v8);
      *(a4 + v7) = &unk_285F941E8;
      v8 += 184;
      v7 += 184;
    }

    while (v8 != a3);
    if (v6 != a3)
    {
      v10 = v6;
      v11 = v6;
      do
      {
        v12 = *v11;
        v11 += 23;
        result = (*v12)(v6);
        v10 += 23;
        v6 = v11;
      }

      while (v11 != a3);
    }
  }

  return result;
}

void sub_24BDD56BC(_Unwind_Exception *exception_object)
{
  if (v3)
  {
    sub_24BFB941C(v2, v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BDD56D8(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 184);
    *(a1 + 16) = i - 184;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_24BDD5744(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_24BC91F24(result, a2);
  }

  return result;
}

void sub_24BDD57A0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_24BDD5838(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285F964E0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_24BDD58A0(double a1)
{
  v1 = 0.5;
  if (a1 < 0.0)
  {
    v1 = -0.5;
  }

  return (v1 + a1);
}

uint64_t sub_24BDD58BC(double *a1)
{
  if (!sub_24BDBD700(*a1, 0.0, 0.001))
  {
    return 2 * (*a1 <= 0.0);
  }

  if (a1[1] > 0.0)
  {
    return 1;
  }

  return 3;
}

uint64_t sub_24BDD5934(void *a1, void *a2, void *a3, unsigned int *a4)
{
  v4 = *a4;
  v5 = *(*a2 + 4 * v4);
  v6 = *(*a3 + 4 * v5);
  v7 = (*a1 + 12 * v5);
  if (v6 != v4)
  {
    return sub_24BDD598C(v7);
  }

  result = *v7;
  v9 = v7[2];
  return result;
}

uint64_t sub_24BDD598C(_DWORD *a1)
{
  v1 = a1[1];
  if (*a1 - 4 >= 0)
  {
    v2 = -((*a1 - 4) & 3);
  }

  else
  {
    v2 = (4 - *a1) & 3;
  }

  v3 = a1[2];
  v7 = -v3;
  if (v2 == 3)
  {
    v8 = -v3;
    v5 = &v7;
    v3 = v1;
    goto LABEL_10;
  }

  if (v2 == 2)
  {
    v8 = v1;
    v5 = &v7;
    goto LABEL_10;
  }

  v4 = -v1;
  if (v2 == 1)
  {
    v7 = v4;
    v8 = -v3;
    v5 = &v8;
LABEL_10:
    *v5 = v3;
    v4 = v8;
  }

  return v2 | (v4 << 32);
}

uint64_t sub_24BDD5A10(uint64_t a1, void *a2, void *a3, void *a4, unsigned int *a5)
{
  if (sub_24BCD93B0(a1, a5))
  {
    return 0;
  }

  v22 = 0;
  v23 = 0;
  sub_24BCB9454(v21, (a1 + 104), a5);
  v20 = sub_24BCB947C(v21);
  v11 = sub_24BCB9024(a1 + 104, &v20);
  v18 = sub_24BDD5934(a2, a3, a4, v11);
  v19 = v12;
  while (1)
  {
    v20 = sub_24BCB947C(v21);
    if (v20 == -1)
    {
      break;
    }

    v13 = sub_24BCB9024(a1 + 104, &v20);
    v16 = sub_24BDD5934(a2, a3, a4, v13);
    v17 = v14;
    v22 = sub_24BDD5B20(&v16, &v22);
    v23 = v15;
  }

  return sub_24BDD5B20(&v18, &v22);
}

uint64_t sub_24BDD5B20(int *a1, int *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v16 = v4;
  v5 = *a1;
  if (*a1 == 3)
  {
    v17 = v4;
    v6 = &v16;
    v4 = v3;
  }

  else if (v5 == 2)
  {
    v17 = -v3;
    v6 = &v16;
  }

  else
  {
    if (v5 != 1)
    {
      goto LABEL_8;
    }

    v16 = v3;
    v17 = v4;
    v6 = &v17;
  }

  *v6 = -v4;
  v4 = v16;
  v3 = v17;
LABEL_8:
  v7 = (v3 + a1[1]);
  v8 = (v4 + a1[2]);
  v9 = v5 + v2;
  v10 = v9 & 3;
  v12 = -v9;
  v11 = v12 < 0;
  v13 = v12 & 3;
  if (v11)
  {
    v14 = v10;
  }

  else
  {
    v14 = -v13;
  }

  return v14 | (v7 << 32);
}

double sub_24BDD5BAC(double *a1, double *a2, _DWORD *a3)
{
  v5 = sub_24BDD598C(a3);
  v7 = v6;
  sub_24BDDCAC8(v5, a1, a1 + 1, v8);
  v9 = *a1 + SHIDWORD(v5);
  v10 = a1[1] + v7;
  *a1 = v9;
  a1[1] = v10;
  sub_24BDDCAC8(v5, a2, a2 + 1, v9);
  result = *a2 + SHIDWORD(v5);
  v12 = a2[1] + v7;
  *a2 = result;
  a2[1] = v12;
  return result;
}

uint64_t sub_24BDD5C38(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 48);
  v3 = *(a1 + 56);
  if (v4 == v3)
  {
    return 1;
  }

  v5 = v4 + 88;
  do
  {
    v6 = *(v5 - 32);
    v7 = v6 < 0;
    v8 = *a3 + 80 * v6;
    result = v7 || v8 != a2;
    v11 = result != 1 || v5 == v3;
    v5 += 88;
  }

  while (!v11);
  return result;
}

uint64_t sub_24BDD5C80(uint64_t result, uint64_t a2, uint64_t *a3)
{
  if (result != a2)
  {
    v3 = *a3;
    do
    {
      v4 = *(result + 56);
      if ((v4 & 0x80000000) == 0)
      {
        v5 = (v3 + 80 * v4 + 48);
        v6 = -1171354717 * ((v5[1] - *v5) >> 3);
        ++*(*v5 + 88 * ((*(result + 60) % v6 + v6) % v6) + 60);
      }

      result += 88;
    }

    while (result != a2);
  }

  return result;
}

uint64_t sub_24BDD5CF0(uint64_t a1, void *a2, void *a3, void *a4, int a5, int a6, _DWORD *a7, int a8)
{
  if (a8 && a5 == a6)
  {
    return 0;
  }

  v15 = *a7;
  if (*a7)
  {
    if (v15 != 2)
    {
      if (v15 == 1)
      {
        if (*(sub_24BCB9024(a1 + 104, a7 + 1) + 16) == a5)
        {
          if (a5 == a6)
          {
            v16 = sub_24BCB9024(a1 + 104, a7 + 1);
            v17 = sub_24BDD5934(a2, a3, a4, v16);
          }

          else
          {
            v17 = 0;
            v18 = 0;
          }

          v33 = v17;
          v34 = v18;
          v35 = sub_24BDD5934(a2, a3, a4, a7 + 1);
          v36 = v28;
          return sub_24BDD5B20(&v33, &v35);
        }

        v25 = sub_24BCB9024(a1 + 104, a7 + 1);
        if (*(sub_24BCB9024(a1 + 104, v25) + 16) == a5)
        {
          if (a5 == a6)
          {
            v26 = sub_24BDD5934(a2, a3, a4, a7 + 1);
          }

          else
          {
            v26 = 0;
            v27 = 0;
          }

          v33 = v26;
          v34 = v27;
          v29 = sub_24BCB9024(a1 + 104, a7 + 1);
          v35 = sub_24BDD5934(a2, a3, a4, v29);
          v36 = v30;
          return sub_24BDD5B20(&v33, &v35);
        }

        exception = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(exception, "Uexpected grid vertices.");
      }

      else
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(exception, "Unexpected transition.");
      }

      __cxa_throw(exception, &unk_285F927A0, MEMORY[0x277D825D8]);
    }

    return 0;
  }

  v37 = 0;
  v38 = 0;
  v19 = sub_24BCB9024(a1 + 104, a7 + 1);
  sub_24BCB9454(&v33, (a1 + 104), (v19 + 12));
  do
  {
    LODWORD(v35) = sub_24BCB947C(&v33);
  }

  while (v35 != -1 && *(sub_24BCB9024(a1 + 104, &v35) + 16) != a5);
  v20 = sub_24BCB9024(a1 + 104, a7 + 1);
  sub_24BCB9454(&v33, (a1 + 104), (v20 + 12));
  v32 = sub_24BCB947C(&v33);
  if (v32 == -1)
  {
    return 0;
  }

  do
  {
    v21 = sub_24BCB9024(a1 + 104, &v32);
    v35 = sub_24BDD5934(a2, a3, a4, (v21 + 8));
    v36 = v22;
    v37 = sub_24BDD5B20(&v35, &v37);
    v38 = v23;
    if (*(sub_24BCB9024(a1 + 104, &v32) + 16) == a6)
    {
      break;
    }

    v32 = sub_24BCB947C(&v33);
  }

  while (v32 != -1);
  return v37;
}

void sub_24BDD5FEC(uint64_t a1, uint64_t a2, void *a3, float64x2_t **a4)
{
  v8 = (a2 + 48);
  *(a2 + 56) = *(a2 + 48);
  sub_24BDD6188((a2 + 48), 4uLL);
  v9 = *(a2 + 4);
  if (v9 != -1)
  {
    v10 = sub_24BC9ECE4(a1, *(a1 + 180), v9);
    if ((v11 & *v10) == 0)
    {
      v12 = *(sub_24BCB9024(a1 + 104, (a2 + 4)) + 16);
      v28 = v12;
      v13 = *a4;
      if (*a4 != a4[1])
      {
        v17 = *(a2 + 8);
        v14 = *(a2 + 16);
        v16 = vdupq_n_s64(0x7FF8000000000000uLL);
        do
        {
          v15 = *v13++;
          LODWORD(__p) = v12;
          v19 = v17.f64[0];
          v20 = v14;
          v21 = vaddq_f64(v17, v15);
          v22 = v16;
          v23 = -1;
          v24 = -1;
          v25 = 0;
          v26 = 0;
          v27 = 0;
          sub_24BDD62B4(v8, &__p);
        }

        while (v13 != a4[1]);
      }

      sub_24BCB7458(&__p, 3uLL);
      sub_24BCD573C(a1, &v28, &__p);
      if (sub_24BE3EFB0((*a3 + 16 * *__p), (*a3 + 16 * *(__p + 1)), (*a3 + 16 * *(__p + 2))) == 1)
      {
        sub_24BDDCD94(*(a2 + 48), *(a2 + 56));
      }

      if (__p)
      {
        v19 = *&__p;
        operator delete(__p);
      }
    }
  }
}

void sub_24BDD6168(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24BDD6188(void *result, unint64_t a2)
{
  if (0x2E8BA2E8BA2E8BA3 * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x2E8BA2E8BA2E8BBLL)
    {
      v2 = result[1] - *result;
      v3 = result;
      sub_24BDDCA08(result, a2);
    }

    sub_24BC8E01C();
  }

  return result;
}

void sub_24BDD626C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BDD62B4(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_24BDDCBD8(a1, a2);
  }

  else
  {
    *v3 = *a2;
    *(v3 + 8) = *(a2 + 8);
    *(v3 + 16) = *(a2 + 16);
    *(v3 + 24) = *(a2 + 24);
    *(v3 + 32) = *(a2 + 32);
    *(v3 + 40) = *(a2 + 40);
    *(v3 + 48) = *(a2 + 48);
    v4 = *(a2 + 56);
    *(v3 + 65) = *(a2 + 65);
    *(v3 + 56) = v4;
    result = v3 + 88;
  }

  a1[1] = result;
  return result;
}

void sub_24BDD633C(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, float64x2_t **a5, void *a6, void *a7)
{
  v14 = (a2 + 48);
  *(a2 + 56) = *(a2 + 48);
  sub_24BDD6188((a2 + 48), 4uLL);
  v15 = *(v14 - 11);
  if (v15 == -1)
  {
    return;
  }

  v16 = sub_24BC9ECE4(a1, *(a1 + 180), v15);
  if ((v17 & *v16) != 0)
  {
    return;
  }

  v97[0] = *(a2 + 4);
  v96 = *sub_24BCB9024(a1 + 104, v97);
  v18 = sub_24BC9ECE4(a1, *(a1 + 180), v96);
  if ((v19 & *v18) != 0)
  {
    *(a2 + 76) = 1;
  }

  v95 = *(sub_24BCB9024(a1 + 104, v97) + 16);
  sub_24BCB7458(v94, 3uLL);
  sub_24BCD573C(a1, &v95, v94);
  v20 = sub_24BE3EFB0((*a3 + 16 * *v94[0]), (*a3 + 16 * *(v94[0] + 1)), (*a3 + 16 * *(v94[0] + 2)));
  v93 = -1;
  v21 = sub_24BC9ECE4(a1, *(a1 + 180), v96);
  if ((*v21 & v22) != 0)
  {
    v80 = 0;
  }

  else
  {
    v93 = *(sub_24BCB9024(a1 + 104, &v96) + 16);
    sub_24BCD573C(a1, &v93, v94);
    v80 = sub_24BE3EFB0((*a3 + 16 * *v94[0]), (*a3 + 16 * *(v94[0] + 1)), (*a3 + 16 * *(v94[0] + 2)));
  }

  v23 = *(*a6 + 4 * v97[0]);
  v24 = *(*a7 + 4 * v23);
  v25 = (*a4 + 12 * v23);
  if (v24 == v97[0])
  {
    v26 = *v25;
    v27 = v25[2];
  }

  else
  {
    v26 = sub_24BDD598C(v25);
  }

  v29 = *(a2 + 8);
  v28 = *(a2 + 16);
  v91 = v28;
  switch(v26)
  {
    case 3:
      v92 = v28;
      v30 = &v91;
      v28 = v29;
      break;
    case 2:
      v92 = -v29;
      v30 = &v91;
      break;
    case 1:
      v91 = v29;
      v92 = v28;
      v30 = &v92;
      break;
    default:
      goto LABEL_18;
  }

  *v30 = -v28;
  v28 = v91;
  v29 = v92;
LABEL_18:
  v75 = a7;
  v76 = a3;
  v73 = a6;
  v74 = a4;
  v31 = v29 + SHIDWORD(v26);
  v32 = v28 + v27;
  v91 = v32;
  v92 = v31;
  v33 = sub_24BCB9024(a1 + 104, v97);
  v35 = *a5;
  v34 = a5[1];
  v72 = a5;
  if (*a5 != v34)
  {
    v36 = 0;
    v37 = (*v76 + 16 * v97[0]);
    v38 = (*v76 + 16 * *(v33 + 8));
    v78 = vdupq_n_s64(0x7FF8000000000000uLL);
    do
    {
      v90 = vaddq_f64(*(a2 + 8), *v35);
      v39 = sub_24BE3EFB0(v37, v38, v90.i64);
      if (v39 == v20 || v39 == 2 && ((v38[1] - v37[1]) * v35->f64[1] + v35->f64[0] * (*v38 - *v37) <= 0.0 ? (v40 = v93 == -1) : (v40 = 1), v40))
      {
        v81 = v95;
        v82 = *(a2 + 8);
        v83 = v90;
        v84 = v78;
        v85 = -1;
        v86 = -1;
        v87 = 0;
        v88 = 0;
        v89 = 0;
        sub_24BDD62B4(v14, &v81);
      }

      else
      {
        v36 = 0x2E8BA2E8BA2E8BA3 * ((*(a2 + 56) - *(a2 + 48)) >> 3);
      }

      ++v35;
    }

    while (v35 != v34);
    if (v36)
    {
      v41 = *(a2 + 48);
      v42 = *(a2 + 56);
      v43 = &v41[22 * v36];
      if (v36 < 0x2E8BA2E8BA2E8BA3 * ((v42 - v41) >> 3) && v43 != v42)
      {
        sub_24BDDCE88(v41, v43, v42);
      }
    }
  }

  if (v20 == 1)
  {
    sub_24BDDCD94(*(a2 + 48), *(a2 + 56));
  }

  if (v93 == -1)
  {
    goto LABEL_70;
  }

  v45 = *(sub_24BCB9024(a1 + 104, &v96) + 8);
  v46 = *v76;
  v47 = v96;
  v48 = *(*v73 + 4 * v97[0]);
  v49 = (*v74 + 12 * v48);
  if (*(*v75 + 4 * v48) == v97[0])
  {
    v50 = *v49;
    v51 = v49[2];
  }

  else
  {
    v50 = sub_24BDD598C(v49);
  }

  v52 = *(a2 + 56) - *(a2 + 48);
  v54 = *v72;
  v53 = v72[1];
  if (*v72 == v53)
  {
    goto LABEL_68;
  }

  v55 = v45;
  v56 = 0;
  v77 = *(a2 + 56) - *(a2 + 48);
  v57 = SHIDWORD(v50);
  v58 = v51;
  v59 = (v46 + 16 * v47);
  v79 = vdupq_n_s64(0x7FF8000000000000uLL);
  v60 = (v46 + 16 * v55);
  do
  {
    v61 = vaddq_f64(*(a2 + 8), *v54);
    v62 = *&v61.i64[1];
    v90.i64[1] = v61.i64[1];
    switch(v50)
    {
      case 3:
        v90.i64[0] = v61.i64[1];
        v62 = *v61.i64;
        goto LABEL_51;
      case 2:
        *v90.i64 = -*v61.i64;
LABEL_51:
        v63 = &v90.u64[1];
        goto LABEL_52;
      case 1:
        v90 = vextq_s8(v61, v61, 8uLL);
        v63 = &v90;
LABEL_52:
        v63->f64[0] = -v62;
        v62 = *&v90.i64[1];
        v61.i64[0] = v90.i64[0];
        break;
    }

    v64 = *v61.i64 + v57;
    v65 = v62 + v58;
    *v90.i64 = *v61.i64 + v57;
    *&v90.i64[1] = v62 + v58;
    v66 = sub_24BE3EFB0(v59, v60, v90.i64);
    if (v66 == v80 || v66 == 2 && (v65 - v32) * (v60[1] - v59[1]) + (v64 - v31) * (*v60 - *v59) > 0.0)
    {
      v81 = v93;
      *&v82 = v31;
      *(&v82 + 1) = v32;
      v83 = v90;
      v84 = v79;
      v85 = -1;
      v86 = -1;
      v87 = 0;
      v88 = 0;
      v89 = 0;
      sub_24BDD62B4(v14, &v81);
    }

    else
    {
      v56 = 0x2E8BA2E8BA2E8BA3 * ((*(a2 + 56) - *(a2 + 48)) >> 3);
    }

    ++v54;
  }

  while (v54 != v53);
  if (v56 > 0x2E8BA2E8BA2E8BA3 * (v52 >> 3))
  {
    v68 = *(a2 + 48);
    v67 = *(a2 + 56);
    v69 = (88 * v56 + v68);
    v70 = v56 >= 0x2E8BA2E8BA2E8BA3 * ((v67 - v68) >> 3) || v52 == 88 * v56;
    if (!v70 && v69 != v67)
    {
      sub_24BDDCE88((v52 + v68), v69, v67);
    }
  }

LABEL_68:
  if (v80 == 1)
  {
    sub_24BDDCD94((v52 + *(a2 + 48)), *(a2 + 56));
  }

LABEL_70:
  if (v94[0])
  {
    v94[1] = v94[0];
    operator delete(v94[0]);
  }
}

void sub_24BDD69B4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 176);
  if (v3)
  {
    *(v1 - 168) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24BDD6A0C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t *a5)
{
  *(a2 + 56) = *(a2 + 48);
  v53 = (a2 + 48);
  result = sub_24BDD6188((a2 + 48), 4uLL);
  v52 = a2;
  v12 = *(a2 + 4);
  v11 = (a2 + 4);
  v10 = v12;
  if (v12 != -1)
  {
    result = sub_24BC9ECE4(a1, *(a1 + 180), v10);
    if ((v13 & *result) == 0)
    {
      v74[0] = *(sub_24BCB9024(a1 + 104, v11) + 12);
      if (sub_24BCD93B0(a1, v74))
      {
        *(v52 + 76) = 1;
      }

      v14 = sub_24BCB9454(v73, (a1 + 104), v74);
      result = sub_24BCB947C(v14);
      v72 = result;
      if (result == -1)
      {
        v17 = 0.0;
        v16 = 0.0;
        v15 = 0.0;
      }

      else
      {
        v54 = vdupq_n_s64(0x7FF8000000000000uLL);
        v15 = 0.0;
        v16 = 0.0;
        v17 = 0.0;
        v50 = a1;
        v51 = a3;
        do
        {
          v18 = sub_24BC9ECE4(a1, *(a1 + 180), result);
          if ((v19 & *v18) == 0)
          {
            v71 = *(sub_24BCB9024(a1 + 104, &v72) + 8);
            v20 = sub_24BCB9024(a1 + 104, &v71);
            v21 = *a3 + 16 * v72;
            v22 = (*a3 + 16 * v71);
            v23 = (*a3 + 16 * *(v20 + 8));
            v70 = vsubq_f64(*v23, *v21);
            v69 = vsubq_f64(*v22, *v21);
            v24 = sub_24BE3EFB0(v21, v22->f64, v23->f64);
            v25 = v24;
            if (v24 == 1)
            {
              v27 = acos((v70.f64[1] * v69.f64[1] + v70.f64[0] * v69.f64[0]) / (sqrt(v70.f64[1] * v70.f64[1] + v70.f64[0] * v70.f64[0]) * sqrt(v69.f64[1] * v69.f64[1] + v69.f64[0] * v69.f64[0])));
              if (sub_24BDBD700(v16, 0.0, 0.001))
              {
                v15 = v15 + v27;
              }

              else
              {
                v17 = v17 + v27;
              }
            }

            else if (!v24)
            {
              v26 = v16 + 6.28318531 - v17;
              if (v17 > 0.0)
              {
                v17 = 0.0;
                v16 = v26;
              }

              v16 = v16 + acos((v70.f64[1] * v69.f64[1] + v70.f64[0] * v69.f64[0]) / (sqrt(v70.f64[1] * v70.f64[1] + v70.f64[0] * v70.f64[0]) * sqrt(v69.f64[1] * v69.f64[1] + v69.f64[0] * v69.f64[0])));
            }

            v28 = sub_24BCB9024(a1 + 104, &v72);
            v29 = sub_24BC9ECE4(a1, *(a1 + 180), *v28);
            v31 = v30;
            v32 = *v29;
            v33 = *(sub_24BCB9024(a1 + 104, &v72) + 16);
            __p = 0;
            v67 = 0;
            v68 = 0;
            v34 = *a5;
            if (a5[1] == *a5)
            {
              v44 = 0;
              v43 = 0;
            }

            else
            {
              v35 = 0;
              v36 = 0;
              v37 = v31 & v32;
              do
              {
                v65[0] = 0.0;
                v65[1] = 0.0;
                v38 = sub_24BE3EFB0(v65, v69.f64, (v34 + 16 * v36));
                v39 = sub_24BE3EFB0(v65, (*a5 + 16 * v36), v70.f64);
                if (v37 && v39 == 2 && (v40 = *v21, v41 = *(*a5 + 16 * v36), vmuld_lane_f64(v23->f64[1] - *(v21 + 8), v41, 1) + v41.f64[0] * (v23->f64[0] - *v21) > 0.0) || v38 == 2 && (v40 = *v21, v41 = *(*a5 + 16 * v36), vmuld_lane_f64(v22->f64[1] - *(v21 + 8), v41, 1) + (v22->f64[0] - *v21) * v41.f64[0] > 0.0))
                {
                  v55 = v33;
                  v56 = *v21;
                  v57 = *(v21 + 8);
                  v58 = vaddq_f64(v40, v41);
                  v59 = v54;
                  v60 = -1;
                  v61 = -1;
                  v62 = 0;
                  v63 = 0;
                  v64 = 0;
                  sub_24BDD62B4(&__p, &v55);
                }

                else if (v38 == v25 && v39 == v25)
                {
                  v42 = vaddq_f64(*v21, *(*a5 + 16 * v36));
                  v55 = v33;
                  v56 = *v21;
                  v57 = *(v21 + 8);
                  v58 = v42;
                  v59 = v54;
                  v60 = -1;
                  v61 = -1;
                  v62 = 0;
                  v63 = 0;
                  v64 = 0;
                  sub_24BDD62B4(&__p, &v55);
                }

                else
                {
                  v35 = 0x2E8BA2E8BA2E8BA3 * ((v67 - __p) >> 3);
                }

                ++v36;
                v34 = *a5;
              }

              while (v36 < (a5[1] - *a5) >> 4);
              v43 = __p;
              v44 = v67;
              if (v35)
              {
                v45 = v35 >= 0x2E8BA2E8BA2E8BA3 * ((v67 - __p) >> 3) || __p + 88 * v35 == v67;
                a1 = v50;
                if (v45)
                {
                  a3 = v51;
                }

                else
                {
                  sub_24BDDCE88(__p, __p + 22 * v35, v67);
                  a3 = v51;
                  v43 = __p;
                  v44 = v67;
                }
              }

              else
              {
                a1 = v50;
                a3 = v51;
              }
            }

            if (v25 == 1)
            {
              sub_24BDDCD94(v43, v44);
              v43 = __p;
              v44 = v67;
            }

            sub_24BDDCF38(&v55, v43, v44, v53);
            if (__p)
            {
              v67 = __p;
              operator delete(__p);
            }
          }

          result = sub_24BCB947C(v73);
          v72 = result;
        }

        while (result != -1);
      }

      if (fmax(v15, v17) <= 0.0)
      {
        v46 = v16;
      }

      else
      {
        v46 = v16 + 6.28318531 - (v17 + v15);
      }

      v47 = v46 / 1.57079633;
      v48 = 0.5;
      if (v47 < 0.0)
      {
        v48 = -0.5;
      }

      v49 = (v47 + v48) + 1171354717 * ((*(v52 + 56) - *(v52 + 48)) >> 3);
      if (*(v52 + 76))
      {
        v49 = 0;
      }

      *(v52 + 72) = v49;
    }
  }

  return result;
}

void sub_24BDD6FE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BDD7018(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4, void *a5, void *a6, double *a7, double *a8, double *a9, unsigned int a10, uint64_t a11, double *a12, double *a13, int *a14, uint64_t a15)
{
  v138[0] = a10;
  v22 = sub_24BCB9024(a1 + 104, v138);
  v118 = *(sub_24BCB9024(a1 + 104, v22) + 12);
  v135 = 0;
  v136 = 0;
  v137 = 0;
  sub_24BCB8D20(&v135, 2uLL);
  v132 = 0;
  v133 = 0;
  v134 = 0;
  sub_24BDB2DD8(&v132, 2uLL);
  v129 = 0;
  v130 = 0;
  v131 = 0;
  sub_24BDD7AA4(&v129, 2uLL);
  v126 = 0;
  v127 = 0;
  v128 = 0;
  sub_24BDD7AA4(&v126, 2uLL);
  __p = 0;
  v124 = 0;
  v125 = 0;
  sub_24BDD7AA4(&__p, 2uLL);
  v23 = sub_24BCB9024(a1 + 104, v138);
  sub_24BCB4670(&v135, (v23 + 16));
  v24 = v130;
  if (v130 >= v131)
  {
    v25 = sub_24BDDD1B4(&v129, a7);
  }

  else
  {
    *v130 = *a7;
    v24[1] = a7[1];
    v25 = (v24 + 2);
  }

  v130 = v25;
  v26 = v127;
  if (v127 >= v128)
  {
    v27 = sub_24BDDD1B4(&v126, a8);
  }

  else
  {
    *v127 = *a8;
    v26[1] = a8[1];
    v27 = (v26 + 2);
  }

  v28 = a9;
  v127 = v27;
  v29 = v124;
  if (v124 >= v125)
  {
    v30 = sub_24BDDD1B4(&__p, a9);
  }

  else
  {
    *v124 = *a9;
    v29[1] = a9[1];
    v30 = (v29 + 2);
  }

  v124 = v30;
  v31 = v133;
  if (v133 >= v134)
  {
    v33 = 0xAAAAAAAAAAAAAAABLL * ((v133 - v132) >> 2);
    v34 = v33 + 1;
    if (v33 + 1 > 0x1555555555555555)
    {
      sub_24BC8E01C();
    }

    if (0x5555555555555556 * ((v134 - v132) >> 2) > v34)
    {
      v34 = 0x5555555555555556 * ((v134 - v132) >> 2);
    }

    if (0xAAAAAAAAAAAAAAABLL * ((v134 - v132) >> 2) >= 0xAAAAAAAAAAAAAAALL)
    {
      v35 = 0x1555555555555555;
    }

    else
    {
      v35 = v34;
    }

    if (v35)
    {
      sub_24BCDC764(&v132, v35);
    }

    v36 = 4 * ((v133 - v132) >> 2);
    *v36 = 0;
    *(v36 + 8) = 0;
    v32 = 12 * v33 + 12;
    v37 = (v36 - (v133 - v132));
    memcpy(v37, v132, v133 - v132);
    v38 = v132;
    v132 = v37;
    v133 = v32;
    v134 = 0;
    if (v38)
    {
      operator delete(v38);
    }

    v28 = a9;
  }

  else
  {
    *v133 = 0;
    *(v31 + 2) = 0;
    v32 = (v31 + 12);
  }

  v133 = v32;
  if (sub_24BE3EFB0(a7, v28, a13) == 2)
  {
    LODWORD(v119.f64[0]) = *sub_24BCB9024(a1 + 104, v138);
    v39 = sub_24BC9ECE4(a1, *(a1 + 180), LODWORD(v119.f64[0]));
    if ((*v39 & v40) == 0)
    {
      v41 = sub_24BCB9024(a1 + 104, &v119);
      sub_24BCB4670(&v135, (v41 + 16));
      v42 = v130;
      if (v130 >= v131)
      {
        v43 = sub_24BDDD1B4(&v129, a7);
      }

      else
      {
        *v130 = *a7;
        v42[1] = a7[1];
        v43 = (v42 + 2);
      }

      v130 = v43;
      v44 = v127;
      if (v127 >= v128)
      {
        v45 = sub_24BDDD1B4(&v126, a8);
      }

      else
      {
        *v127 = *a8;
        v44[1] = a8[1];
        v45 = (v44 + 2);
      }

      v127 = v45;
      v46 = v124;
      if (v124 >= v125)
      {
        v48 = sub_24BDDD1B4(&__p, v28);
      }

      else
      {
        *v124 = *v28;
        v47 = v28[1];
        v46[1] = v47;
        v48 = (v46 + 2);
      }

      v124 = v48;
      v49 = *(*a5 + 4 * v138[0]);
      v50 = *(*a6 + 4 * v49);
      v51 = (*a4 + 12 * v49);
      if (v50 == v138[0])
      {
        v52 = *v51;
        v53 = v51[2];
      }

      else
      {
        v52 = sub_24BDD598C(v51);
      }

      *&v120.f64[0] = v52;
      LODWORD(v120.f64[1]) = v53;
      v54 = v130;
      sub_24BDDCAC8(v52, v130 - 2, v130 - 1, v47);
      v55.i64[0] = SHIDWORD(v120.f64[0]);
      v55.i64[1] = SLODWORD(v120.f64[1]);
      v56 = vaddq_f64(*(v54 - 2), vcvtq_f64_s64(v55));
      *(v54 - 1) = v56;
      v57 = v127;
      sub_24BDDCAC8(SLODWORD(v120.f64[0]), v127 - 2, v127 - 1, v56.f64[0]);
      v55.i64[0] = SHIDWORD(v120.f64[0]);
      v55.i64[1] = SLODWORD(v120.f64[1]);
      v58 = vaddq_f64(*(v57 - 2), vcvtq_f64_s64(v55));
      *(v57 - 1) = v58;
      v59 = v124;
      sub_24BDDCAC8(SLODWORD(v120.f64[0]), v124 - 2, v124 - 1, v58.f64[0]);
      v55.i64[0] = SHIDWORD(v120.f64[0]);
      v55.i64[1] = SLODWORD(v120.f64[1]);
      *(v59 - 1) = vaddq_f64(*(v59 - 2), vcvtq_f64_s64(v55));
      sub_24BDD7B7C(&v132, &v120);
    }
  }

  if (sub_24BE3EFB0(a7, v28, a12) == 2)
  {
    LODWORD(v119.f64[0]) = *(sub_24BCB9024(a1 + 104, v138) + 8);
    LODWORD(v121) = *sub_24BCB9024(a1 + 104, &v119);
    v60 = sub_24BC9ECE4(a1, *(a1 + 180), v121);
    if ((*v60 & v61) == 0)
    {
      v62 = sub_24BCB9024(a1 + 104, &v121);
      sub_24BCB4670(&v135, (v62 + 16));
      v63 = v130;
      if (v130 >= v131)
      {
        v64 = sub_24BDDD1B4(&v129, a7);
      }

      else
      {
        *v130 = *a7;
        v63[1] = a7[1];
        v64 = (v63 + 2);
      }

      v130 = v64;
      v65 = v127;
      if (v127 >= v128)
      {
        v66 = sub_24BDDD1B4(&v126, a8);
      }

      else
      {
        *v127 = *a8;
        v65[1] = a8[1];
        v66 = (v65 + 2);
      }

      v127 = v66;
      v67 = v124;
      if (v124 >= v125)
      {
        v69 = sub_24BDDD1B4(&__p, v28);
      }

      else
      {
        *v124 = *v28;
        v68 = v28[1];
        v67[1] = v68;
        v69 = (v67 + 2);
      }

      v124 = v69;
      v70 = *(*a5 + 4 * LODWORD(v119.f64[0]));
      v71 = *(*a6 + 4 * v70);
      v72 = (*a4 + 12 * v70);
      if (v71 == LODWORD(v119.f64[0]))
      {
        v73 = *v72;
        v74 = v72[2];
      }

      else
      {
        v73 = sub_24BDD598C(v72);
      }

      *&v120.f64[0] = v73;
      LODWORD(v120.f64[1]) = v74;
      v75 = v130;
      sub_24BDDCAC8(v73, v130 - 2, v130 - 1, v68);
      v76.i64[0] = SHIDWORD(v120.f64[0]);
      v76.i64[1] = SLODWORD(v120.f64[1]);
      v77 = vaddq_f64(*(v75 - 2), vcvtq_f64_s64(v76));
      *(v75 - 1) = v77;
      v78 = v127;
      sub_24BDDCAC8(SLODWORD(v120.f64[0]), v127 - 2, v127 - 1, v77.f64[0]);
      v76.i64[0] = SHIDWORD(v120.f64[0]);
      v76.i64[1] = SLODWORD(v120.f64[1]);
      v79 = vaddq_f64(*(v78 - 2), vcvtq_f64_s64(v76));
      *(v78 - 1) = v79;
      v80 = v124;
      sub_24BDDCAC8(SLODWORD(v120.f64[0]), v124 - 2, v124 - 1, v79.f64[0]);
      v76.i64[0] = SHIDWORD(v120.f64[0]);
      v76.i64[1] = SLODWORD(v120.f64[1]);
      *(v80 - 1) = vaddq_f64(*(v80 - 2), vcvtq_f64_s64(v76));
      sub_24BDD7B7C(&v132, &v120);
    }
  }

  v115 = a4;
  v116 = a5;
  v81 = *a2;
  v82 = (*a2 + 24 * v118);
  v83 = *v82;
  if (v82[1] == *v82)
  {
    goto LABEL_70;
  }

  v84 = 0;
  v113 = &v120.f64[1];
  v85 = *a3;
  v114 = a1;
LABEL_55:
  v86 = *(v83 + 4 * v84);
  if (*(v85 + 80 * v86 + 56) == *(v85 + 80 * v86 + 48))
  {
    goto LABEL_69;
  }

  v87 = 0;
  v88 = v135;
  v89 = v136;
  while (v89 == v88)
  {
    v89 = v88;
LABEL_67:
    if (++v87 >= (0x2E8BA2E8BA2E8BA3 * ((*(v85 + 80 * v86 + 56) - *(v85 + 80 * v86 + 48)) >> 3)))
    {
      v81 = *a2;
LABEL_69:
      ++v84;
      v83 = *(v81 + 24 * v118);
      if (v84 >= (*(v81 + 24 * v118 + 8) - v83) >> 2)
      {
LABEL_70:
        v95 = 0;
        *a15 = 4294967292;
        *(a15 + 8) = 0u;
        *(a15 + 24) = 0u;
        *(a15 + 36) = 0u;
        goto LABEL_87;
      }

      goto LABEL_55;
    }
  }

  v90 = 0;
  v91 = 0;
  v92 = 0;
  while (1)
  {
    v93 = *(*a3 + 80 * v86 + 48) + 88 * v87;
    if (v88[v92] == *v93)
    {
      if (!sub_24BDBD710(&v129[v91 / 8], (v93 + 24)))
      {
        v88 = v135;
        goto LABEL_64;
      }

      v94 = sub_24BDBD710((__p + v91), (*(*a3 + 80 * v86 + 48) + 88 * v87 + 8));
      v88 = v135;
      if (v94)
      {
        break;
      }
    }

LABEL_64:
    ++v92;
    v89 = v136;
    v91 += 16;
    v90 += 12;
    if (v92 >= v136 - v88)
    {
      v85 = *a3;
      goto LABEL_67;
    }
  }

  v96 = v135[v92];
  v97 = sub_24BCB9024(v114 + 104, (*a3 + 80 * v86 + 4));
  v121 = sub_24BDD5CF0(v114, v115, v116, a6, v96, *(v97 + 16), (*a3 + 80 * v86), 1);
  v122 = v98;
  *&v120.f64[0] = sub_24BDD5B20(&v121, &v132[v90]);
  LODWORD(v120.f64[1]) = v99;
  *a14 = sub_24BDD5B20(&v120, a14);
  a14[2] = v100;
  v101 = *(v126 + v91);
  v102 = *(v126 + v91 + 8);
  v120.f64[1] = v102;
  v103 = *(__p + v91);
  v119.f64[1] = *(__p + v91 + 8);
  v104 = v121;
  switch(v121)
  {
    case 3:
      v120.f64[0] = v101.f64[1];
      v102 = v101.f64[0];
      goto LABEL_77;
    case 2:
      v120.f64[0] = -v101.f64[0];
LABEL_77:
      v113->f64[0] = -v102;
      v101 = v120;
      break;
    case 1:
      v120.f64[0] = v101.f64[1];
      v120.f64[1] = v101.f64[0];
      v113 = &v120;
      goto LABEL_77;
  }

  v105 = v103.f64[1];
  v106.i64[0] = SHIDWORD(v121);
  v106.i64[1] = v122;
  v107 = vcvtq_f64_s64(v106);
  v120 = vaddq_f64(v101, v107);
  switch(v104)
  {
    case 3:
      v119.f64[0] = v103.f64[1];
      v105 = v103.f64[0];
      break;
    case 2:
      v119.f64[0] = -v103.f64[0];
      break;
    case 1:
      v119.f64[0] = v103.f64[1];
      v119.f64[1] = v103.f64[0];
      v108 = &v119;
      goto LABEL_85;
    default:
      goto LABEL_86;
  }

  v108 = &v119.f64[1];
LABEL_85:
  v108->f64[0] = -v105;
  v103 = v119;
LABEL_86:
  v119 = vaddq_f64(v103, v107);
  sub_24BDD5BAC(v120.f64, v119.f64, a14);
  v109 = a14[2];
  v110 = *a14;
  *a15 = v86 | (v87 << 32);
  v111 = v119;
  *(a15 + 8) = v120;
  *(a15 + 24) = v111;
  *(a15 + 40) = v110;
  *(a15 + 48) = v109;
  v95 = 1;
LABEL_87:
  if (__p)
  {
    v124 = __p;
    operator delete(__p);
  }

  if (v126)
  {
    v127 = v126;
    operator delete(v126);
  }

  if (v129)
  {
    v130 = v129;
    operator delete(v129);
  }

  if (v132)
  {
    v133 = v132;
    operator delete(v132);
  }

  if (v135)
  {
    v136 = v135;
    operator delete(v135);
  }

  return v95;
}

void sub_24BDD7A00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, uint64_t a30, void *a31, uint64_t a32)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a31)
  {
    operator delete(a31);
  }

  v34 = *(v32 - 168);
  if (v34)
  {
    *(v32 - 160) = v34;
    operator delete(v34);
  }

  v35 = *(v32 - 144);
  if (v35)
  {
    *(v32 - 136) = v35;
    operator delete(v35);
  }

  v36 = *(v32 - 120);
  if (v36)
  {
    *(v32 - 112) = v36;
    operator delete(v36);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24BDD7AA4(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      v2 = result[1] - *result;
      v3 = result;
      sub_24BCA1868(result, a2);
    }

    sub_24BC8E01C();
  }

  return result;
}

void sub_24BDD7B44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BDD7B7C(uint64_t a1, uint64_t *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 2);
    v9 = v8 + 1;
    if (v8 + 1 > 0x1555555555555555)
    {
      sub_24BC8E01C();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 2);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0xAAAAAAAAAAAAAAALL)
    {
      v11 = 0x1555555555555555;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      sub_24BCDC764(a1, v11);
    }

    v12 = 12 * v8;
    v13 = *a2;
    *(v12 + 8) = *(a2 + 2);
    *v12 = v13;
    v7 = 12 * v8 + 12;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy((v12 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = *a2;
    *(v5 + 8) = *(a2 + 2);
    *v5 = v6;
    v7 = v5 + 12;
  }

  *(a1 + 8) = v7;
}

uint64_t sub_24BDD7C84(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4, void *a5, void *a6, double *a7, __int128 *a8, double *a9, unsigned int a10, int *a11, uint64_t a12)
{
  v69[0] = a10;
  v59 = *(*a5 + 4 * a10);
  v18 = *(sub_24BCB9024(a1 + 104, v69) + 16);
  v68 = *sub_24BCB9024(a1 + 104, v69);
  v19 = sub_24BC9ECE4(a1, *(a1 + 180), v68);
  v56 = a1;
  if ((v20 & *v19) != 0)
  {
    v21 = -1;
  }

  else
  {
    v21 = *(sub_24BCB9024(a1 + 104, &v68) + 16);
  }

  v23 = *a7;
  v22 = a7[1];
  v24 = &v67;
  v67 = v22;
  v55 = a8;
  v54 = *a8;
  v26 = *a9;
  v25 = a9[1];
  *(&v65 + 1) = v25;
  v27 = *(*a5 + 4 * v69[0]);
  v28 = *(*a6 + 4 * v27);
  v29 = (*a4 + 12 * v27);
  if (v28 == v69[0])
  {
    v30 = *v29;
    v31 = v29[2];
  }

  else
  {
    v30 = sub_24BDD598C(v29);
  }

  v32 = &v65 + 1;
  v63 = v30;
  v64 = v31;
  switch(v30)
  {
    case 3:
      v66 = v22;
      v22 = v23;
      break;
    case 2:
      v66 = -v23;
      break;
    case 1:
      v66 = v22;
      v67 = v23;
      v24 = &v66;
      break;
    default:
      goto LABEL_14;
  }

  *v24 = -v22;
  v23 = v66;
  v22 = v67;
LABEL_14:
  v66 = v23 + SHIDWORD(v30);
  v67 = v22 + v31;
  switch(v30)
  {
    case 3:
      *&v65 = v25;
      v25 = v26;
      goto LABEL_20;
    case 2:
      *&v65 = -v26;
      goto LABEL_20;
    case 1:
      *&v65 = v25;
      *(&v65 + 1) = v26;
      v32 = &v65;
LABEL_20:
      *v32 = -v25;
      v25 = *(&v65 + 1);
      v26 = *&v65;
      break;
  }

  *&v65 = v26 + SHIDWORD(v30);
  *(&v65 + 1) = v25 + v31;
  v33 = *a2;
  v34 = (*a2 + 24 * v59);
  v35 = *v34;
  if (v34[1] == *v34)
  {
LABEL_36:
    result = 0;
    *a12 = 4294967292;
    *(a12 + 8) = 0u;
    *(a12 + 24) = 0u;
    *(a12 + 36) = 0u;
    return result;
  }

  v36 = 0;
  v37 = *a3;
  while (1)
  {
    v38 = *(v35 + 4 * v36);
    v39 = *(v37 + 80 * v38 + 48);
    if (*(v37 + 80 * v38 + 56) != v39)
    {
      break;
    }

LABEL_35:
    ++v36;
    v35 = *(v33 + 24 * v59);
    if (v36 >= (*(v33 + 24 * v59 + 8) - v35) >> 2)
    {
      goto LABEL_36;
    }
  }

  v57 = v36;
  v40 = 0;
  v41 = 0;
  v42 = v38;
  while (1)
  {
    if (*(v39 + v40) == v18)
    {
      v43 = sub_24BDBD710((v39 + v40 + 8), a9);
      v37 = *a3;
      if (v43)
      {
        if (sub_24BDBD710((*(v37 + 80 * v38 + 48) + v40 + 24), a7))
        {
          goto LABEL_37;
        }

        v37 = *a3;
      }
    }

    v44 = *(v37 + 80 * v38 + 48);
    if (*(v44 + v40) == v21)
    {
      v45 = sub_24BDBD710((v44 + v40 + 8), &v65);
      v37 = *a3;
      if (v45)
      {
        break;
      }
    }

LABEL_33:
    ++v41;
    v46 = v37 + 80 * v38;
    v39 = *(v46 + 48);
    v42 += 0x100000000;
    v40 += 88;
    if (v41 >= 0x2E8BA2E8BA2E8BA3 * ((*(v46 + 56) - v39) >> 3))
    {
      v36 = v57;
      v33 = *a2;
      goto LABEL_35;
    }
  }

  if (!sub_24BDBD710((*(v37 + 80 * v38 + 48) + v40 + 24), &v66))
  {
    v37 = *a3;
    goto LABEL_33;
  }

LABEL_37:
  v62 = 0uLL;
  v61 = 0uLL;
  if (*(sub_24BCB9024(v56 + 104, (*a3 + 80 * v38 + 4)) + 16) == v18)
  {
    v48 = *v55;
    v61 = *a9;
    v62 = v48;
    v49 = a11;
  }

  else
  {
    v61 = v65;
    v62 = v54;
    v49 = a11;
    *a11 = sub_24BDD5B20(&v63, a11);
    a11[2] = v50;
  }

  sub_24BDD5BAC(&v62, &v61, v49);
  v51 = v49[2];
  v52 = *v49;
  *a12 = v42;
  v53 = v61;
  *(a12 + 8) = v62;
  *(a12 + 24) = v53;
  *(a12 + 40) = v52;
  *(a12 + 48) = v51;
  return 1;
}

uint64_t sub_24BDD80A8(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, void *a6, void *a7, void *a8, double *a9, double *a10, double *a11, double *a12, double *a13, double *a14, unsigned int *a15, unsigned int *a16, unsigned int *a17, int a18, void *a19, int *a20, uint64_t a21)
{
  if (a18)
  {
    v24 = a13;
    if (sub_24BDBD710(a11, a12))
    {
      v26 = *a15;
      v56 = a21;
      a13 = a14;
      v55 = a20;
      a12 = v24;
LABEL_27:

      return sub_24BDD7018(a1, a4, a5, a6, a7, a8, a9, a10, a11, v26, a11, a12, a13, v55, v56);
    }

    if (sub_24BDBD710(a11, a13))
    {
      v26 = *a16;
      v56 = a21;
      a13 = a12;
      v55 = a20;
      a12 = a14;
      goto LABEL_27;
    }

    if (sub_24BDBD710(a11, a14))
    {
      v26 = *a17;
      v56 = a21;
      v55 = a20;
      goto LABEL_27;
    }

    v42 = *a12;
    *__p = *a14;
    v51 = v42;
    if (sub_24BD93C54(__p, a11))
    {
      v43 = *a15;
      return sub_24BDD7C84(a1, a3, a5, a6, a7, a8, a9, a10, a11, v43, a20, a21);
    }

    v44 = *a13;
    *__p = *a12;
    v51 = v44;
    if (sub_24BD93C54(__p, a11))
    {
      v43 = *a16;
      return sub_24BDD7C84(a1, a3, a5, a6, a7, a8, a9, a10, a11, v43, a20, a21);
    }

    v45 = *a14;
    *__p = *a13;
    v51 = v45;
    if (sub_24BD93C54(__p, a11))
    {
      v43 = *a17;
      return sub_24BDD7C84(a1, a3, a5, a6, a7, a8, a9, a10, a11, v43, a20, a21);
    }

LABEL_22:
    result = 0;
    *a21 = 4294967292;
    *(a21 + 8) = 0u;
    *(a21 + 24) = 0u;
    *(a21 + 36) = 0u;
    return result;
  }

  v53[0] = *(sub_24BCB9024(a1 + 104, a15) + 16);
  sub_24BCB7458(__p, 3uLL);
  sub_24BCD573C(a1, v53, __p);
  v28 = sub_24BE3EFB0((*a19 + 16 * *__p[0]), (*a19 + 16 * *(__p[0] + 1)), (*a19 + 16 * *(__p[0] + 2)));
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v29 = *a9 - *a11;
  v30 = a9[1] - a11[1];
  v31 = sub_24BDBD700(v29, 0.0, 0.001);
  v32 = 3;
  if (v30 > 0.0)
  {
    v32 = 1;
  }

  if (!v31)
  {
    v32 = 2 * (v29 <= 0.0);
  }

  v33 = 3;
  if (v30 > 0.0)
  {
    v33 = 1;
  }

  if (!v31)
  {
    v33 = 2 * (v29 <= 0.0);
  }

  v34 = v33 ^ 3;
  if (v28 == 1)
  {
    v35 = v34;
  }

  else
  {
    v35 = v32;
  }

  v36 = *(*a2 + 24 * v53[0]);
  if (*(*a2 + 24 * v53[0] + 8) == v36)
  {
    goto LABEL_22;
  }

  v37 = 0;
  while (1)
  {
    v38 = *(v36 + 4 * v37);
    if (sub_24BDBD710((*(*a5 + 80 * v38 + 48) + 88 * v35 + 24), a9) && sub_24BDBD710((*(*a5 + 80 * v38 + 48) + 88 * v35 + 8), a11))
    {
      break;
    }

    ++v37;
    v36 = *(*a2 + 24 * v53[0]);
    if (v37 >= (*(*a2 + 24 * v53[0] + 8) - v36) >> 2)
    {
      goto LABEL_22;
    }
  }

  *__p = *a10;
  *v52 = *a11;
  sub_24BDD5BAC(__p, v52, a20);
  v40 = a20[2];
  v41 = *a20;
  *a21 = v38 | (v35 << 32);
  *(a21 + 8) = *__p;
  *(a21 + 24) = *v52;
  *(a21 + 40) = v41;
  *(a21 + 48) = v40;
  return 1;
}

void sub_24BDD8498(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BDD84B8(uint64_t a1, _DWORD *a2, void *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, void *a7, void *a8, void *a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13)
{
  v149 = *a10;
  v19 = *(a10 + 16);
  v148.f64[0] = *(a10 + 8);
  v148.f64[1] = v19;
  v146 = v148.f64[0];
  v147 = v19;
  v145 = *(a10 + 24);
  v144 = -1;
  v143 = *sub_24BCB9038(a1 + 104, &v149);
  v142 = *(sub_24BCB9024(a1 + 104, &v143) + 8);
  v141 = *(sub_24BCB9024(a1 + 104, &v142) + 8);
  v20 = *a11;
  v140 = *(*a11 + 16 * v142);
  v139 = *(v20 + 16 * v141);
  v138 = *(v20 + 16 * v143);
  v136 = 0;
  v137 = 0;
  v135 = 0;
  v123 = sub_24BE3EFB0(v140.f64, v139.f64, v138.f64) == 1;
  if (v123)
  {
    v21 = &v138;
    v22 = &v140;
  }

  else
  {
    v21 = &v140;
    v22 = &v138;
  }

  sub_24BE3EEBC(v145.f64, v21->f64, v139.f64, v22->f64, &v135);
  if (v135 <= 1)
  {
    return sub_24BDD80A8(a1, a3, a4, a5, a6, a7, a8, a9, v148.f64, &v146, v145.f64, v140.f64, v139.f64, v138.f64, &v143, &v142, &v141, v135, a11, &v136, a12);
  }

  v24 = *a2;
  v120 = a5;
  if (!*a2)
  {
    v34 = *(sub_24BCB9024(a1 + 104, a2 + 1) + 12);
    v35 = sub_24BCB9024(a1 + 104, &v143);
    if (*(sub_24BCB9024(a1 + 104, v35) + 12) == v34)
    {
LABEL_20:
      LODWORD(v29) = v141;
LABEL_26:
      v144 = v29;
      goto LABEL_27;
    }

    v36 = sub_24BCB9024(a1 + 104, &v142);
    if (*(sub_24BCB9024(a1 + 104, v36) + 12) != v34)
    {
      v37 = sub_24BCB9024(a1 + 104, &v141);
      if (*(sub_24BCB9024(a1 + 104, v37) + 12) != v34)
      {
LABEL_30:
        result = 0;
        *a12 = 4294967292;
        *(a12 + 8) = 0u;
        *(a12 + 24) = 0u;
        *(a12 + 36) = 0u;
        return result;
      }

      goto LABEL_25;
    }

LABEL_23:
    LODWORD(v29) = v143;
    goto LABEL_26;
  }

  if (v24 != 1)
  {
    if (v24 != 2)
    {
      LODWORD(v29) = v144;
      goto LABEL_27;
    }

    *&v130.f64[0] = vcvt_f32_f64(v148);
    *&v129[0] = vcvt_f32_f64(v145);
    *&v127.f64[0] = vcvt_f32_f64(v138);
    *&v125.f64[0] = vcvt_f32_f64(v140);
    *&v124 = 0x3EB0C6F7A0B5ED8DLL;
    v133 = 0x3EB0C6F7A0B5ED8DLL;
    if (sub_24BE3F5C0(&v130, v129, &v127, &v125, &v124, &v133) == 3)
    {
      *&v130.f64[0] = vcvt_f32_f64(v148);
      *&v129[0] = vcvt_f32_f64(v145);
      *&v127.f64[0] = vcvt_f32_f64(v140);
      *&v125.f64[0] = vcvt_f32_f64(v139);
      *&v124 = 0x3EB0C6F7A0B5ED8DLL;
      v133 = 0x3EB0C6F7A0B5ED8DLL;
      if (sub_24BE3F5C0(&v130, v129, &v127, &v125, &v124, &v133) == 3)
      {
        *&v130.f64[0] = vcvt_f32_f64(v148);
        *&v129[0] = vcvt_f32_f64(v145);
        *&v127.f64[0] = vcvt_f32_f64(v139);
        *&v125.f64[0] = vcvt_f32_f64(v138);
        *&v124 = 0x3EB0C6F7A0B5ED8DLL;
        v133 = 0x3EB0C6F7A0B5ED8DLL;
        if (sub_24BE3F5C0(&v130, v129, &v127, &v125, &v124, &v133) == 3)
        {
          goto LABEL_30;
        }

        goto LABEL_20;
      }

LABEL_25:
      LODWORD(v29) = v142;
      goto LABEL_26;
    }

    goto LABEL_23;
  }

  v119 = a6;
  v144 = a2[1];
  v25 = sub_24BC9ECE4(a1, *(a1 + 180), v144);
  if ((v26 & *v25) != 0 || (v27 = sub_24BCB9024(a1 + 104, &v144), *(v27 + 16) != v149))
  {
    v144 = *sub_24BCB9024(a1 + 104, &v144);
  }

  v28 = *(sub_24BCB9024(a1 + 104, &v144) + 4);
  v29 = *(sub_24BCB9024(a1 + 104, &v144) + 8);
  v30 = *(*a11 + 16 * v28);
  v31 = vcvt_f32_f64(*(*a11 + 16 * v29));
  *&v130.f64[0] = vcvt_f32_f64(v148);
  *&v129[0] = vcvt_f32_f64(v145);
  *&v127.f64[0] = v31;
  v32 = vcvt_f32_f64(v30);
  *&v125.f64[0] = v32;
  *&v124 = 0x3EB0C6F7A0B5ED8DLL;
  v133 = 0x3EB0C6F7A0B5ED8DLL;
  if (sub_24BE3F5C0(&v130, v129, &v127, &v125, &v124, &v133) == 3)
  {
    v33 = *a11;
    *&v130.f64[0] = vcvt_f32_f64(v148);
    *&v129[0] = vcvt_f32_f64(v145);
    *&v127.f64[0] = vcvt_f32_f64(*(v33 + 16 * v28));
    *&v125.f64[0] = v32;
    *&v124 = 0x3EB0C6F7A0B5ED8DLL;
    v133 = 0x3EB0C6F7A0B5ED8DLL;
    LODWORD(v29) = v28;
    if (sub_24BE3F5C0(&v130, v129, &v127, &v125, &v124, &v133) != 3)
    {
      goto LABEL_30;
    }
  }

  v144 = v29;
  a6 = v119;
LABEL_27:
  if (v29 == -1)
  {
    goto LABEL_30;
  }

  v38 = *(*a8 + 4 * v29);
  v39 = *(*a9 + 4 * v38);
  v40 = (*a7 + 12 * v38);
  if (v39 == v29)
  {
    v41 = *v40;
    v42 = v40[2];
  }

  else
  {
    v41 = sub_24BDD598C(v40);
  }

  v133 = v41;
  v134 = v42;
  if (v41 == 3)
  {
    v46 = v148.f64[1];
    v43 = v148.f64[0];
    goto LABEL_38;
  }

  if (v41 == 2)
  {
    v43 = v148.f64[1];
    v46 = -v148.f64[0];
LABEL_38:
    v148.f64[0] = v46;
    v45 = &v148.f64[1];
    goto LABEL_39;
  }

  if (v41 != 1)
  {
    goto LABEL_40;
  }

  v43 = v148.f64[1];
  v44 = v148.f64[0];
  v148.f64[0] = v148.f64[1];
  v148.f64[1] = v44;
  v45 = &v148;
LABEL_39:
  v45->f64[0] = -v43;
LABEL_40:
  v47 = SHIDWORD(v41);
  v48 = v42;
  v148.f64[0] = v148.f64[0] + SHIDWORD(v41);
  v148.f64[1] = v148.f64[1] + v42;
  if (v41 == 3)
  {
    v49 = v146;
    v52 = v147;
    goto LABEL_46;
  }

  if (v41 == 2)
  {
    v49 = v147;
    v52 = -v146;
LABEL_46:
    v146 = v52;
    v51 = &v147;
    goto LABEL_47;
  }

  if (v41 != 1)
  {
    goto LABEL_48;
  }

  v50 = v146;
  v49 = v147;
  v146 = v147;
  v147 = v50;
  v51 = &v146;
LABEL_47:
  *v51 = -v49;
LABEL_48:
  v146 = v146 + v47;
  v147 = v147 + v48;
  if (v41 == 3)
  {
    v57 = v145.f64[1];
    v54 = v145.f64[0];
    goto LABEL_54;
  }

  if (v41 == 2)
  {
    v54 = v145.f64[1];
    v57 = -v145.f64[0];
LABEL_54:
    v145.f64[0] = v57;
    v56 = &v145.f64[1];
    v53 = a9;
    goto LABEL_55;
  }

  v53 = a9;
  if (v41 == 1)
  {
    v54 = v145.f64[1];
    v55 = v145.f64[0];
    v145.f64[0] = v145.f64[1];
    v145.f64[1] = v55;
    v56 = &v145;
LABEL_55:
    v56->f64[0] = -v54;
  }

  v145.f64[0] = v145.f64[0] + v47;
  v145.f64[1] = v145.f64[1] + v48;
  v136 = sub_24BDD5B20(&v133, &v136);
  v137 = v58;
  v59 = *sub_24BCB9024(a1 + 104, &v144);
  v144 = v59;
  v60 = 100000;
  while (1)
  {
    v61 = sub_24BC9ECE4(a1, *(a1 + 180), v59);
    if ((v62 & *v61) != 0)
    {
      break;
    }

    v149 = *(sub_24BCB9024(a1 + 104, &v144) + 16);
    v143 = v144;
    v142 = *(sub_24BCB9024(a1 + 104, &v143) + 8);
    v141 = *(sub_24BCB9024(a1 + 104, &v142) + 8);
    v63 = *a11;
    v140 = *(*a11 + 16 * v142);
    v139 = *(v63 + 16 * v141);
    v138 = *(v63 + 16 * v143);
    v64 = sub_24BE3EFB0(v140.f64, v139.f64, v138.f64);
    if (v64 == 2)
    {
      goto LABEL_116;
    }

    v65 = v64;
    if (v123 != (v64 == 1))
    {
      v66 = v148;
      v148 = v145;
      v145 = v66;
      v123 = v64 == 1;
    }

    v132 = 0;
    if (v64 == 1)
    {
      v67 = &v138;
      v68 = &v140;
    }

    else
    {
      v67 = &v140;
      v68 = &v138;
    }

    sub_24BE3EEBC(v145.f64, v67->f64, v139.f64, v68->f64, &v132);
    if (v132 <= 1)
    {
      return sub_24BDD80A8(a1, a3, a4, v120, a6, a7, a8, v53, v148.f64, &v146, v145.f64, v140.f64, v139.f64, v138.f64, &v143, &v142, &v141, v132, a11, &v136, a12);
    }

    *&v130.f64[0] = vcvt_f32_f64(v148);
    *&v129[0] = vcvt_f32_f64(v145);
    *&v127.f64[0] = vcvt_f32_f64(v140);
    *&v125.f64[0] = vcvt_f32_f64(v139);
    *&v124 = 0x3EB0C6F7A0B5ED8DLL;
    v150[0] = 0.000001;
    v69 = sub_24BE3F5C0(&v130, v129, &v127, &v125, &v124, v150);
    *&v130.f64[0] = vcvt_f32_f64(v148);
    *&v129[0] = vcvt_f32_f64(v145);
    *&v127.f64[0] = vcvt_f32_f64(v138);
    *&v125.f64[0] = vcvt_f32_f64(v139);
    *&v124 = 0x3EB0C6F7A0B5ED8DLL;
    v150[0] = 0.000001;
    v70 = sub_24BE3F5C0(&v130, v129, &v127, &v125, &v124, v150);
    LODWORD(v129[0]) = -1;
    v71 = v69 == 3;
    if (v69 != 3 && v70 == 3)
    {
      v72 = v142;
LABEL_71:
      LODWORD(v129[0]) = v72;
      goto LABEL_87;
    }

    if (v69 == 3 && v70 != 3)
    {
      v72 = v141;
      goto LABEL_71;
    }

    if (v70 == 3)
    {
      v71 = 1;
    }

    if (v71)
    {
LABEL_116:
      result = 0;
      *a12 = 4294967292;
      *(a12 + 8) = 0u;
      *(a12 + 24) = 0u;
      *(a12 + 36) = 0u;
      return result;
    }

    v73 = a7;
    v74 = a8;
    v130 = v148;
    v131 = v145;
    v75 = sub_24BD93C54(v130.f64, v140.f64);
    v76 = sub_24BD93C54(v130.f64, v139.f64);
    v77 = sub_24BD93C54(v130.f64, v138.f64);
    if (v75 || v76 || !v77)
    {
      if (v75 && v77)
      {
        a8 = v74;
        if (sub_24BE3EFB0(v148.f64, v145.f64, v139.f64) == v65)
        {
          v72 = v142;
        }

        else
        {
          v72 = v141;
        }

        LODWORD(v129[0]) = v72;
        goto LABEL_86;
      }

      v72 = v141;
    }

    else
    {
      v72 = v142;
    }

    LODWORD(v129[0]) = v72;
    a8 = v74;
LABEL_86:
    a7 = v73;
    v53 = a9;
LABEL_87:
    if (v72 == 0xFFFFFFFFLL)
    {
      goto LABEL_116;
    }

    v78 = *(*a8 + 4 * v72);
    v79 = *(*v53 + 4 * v78);
    v80 = (*a7 + 12 * v78);
    if (v79 == v72)
    {
      v81 = *v80;
      v82 = v80[2];
    }

    else
    {
      v81 = sub_24BDD598C(v80);
    }

    *&v130.f64[0] = v81;
    LODWORD(v130.f64[1]) = v82;
    if (v81 == 3)
    {
      v86 = v148.f64[1];
      v83 = v148.f64[0];
      goto LABEL_97;
    }

    if (v81 == 2)
    {
      v83 = v148.f64[1];
      v86 = -v148.f64[0];
LABEL_97:
      v148.f64[0] = v86;
      v85 = &v148.f64[1];
      goto LABEL_98;
    }

    if (v81 != 1)
    {
      goto LABEL_99;
    }

    v83 = v148.f64[1];
    v84 = v148.f64[0];
    v148.f64[0] = v148.f64[1];
    v148.f64[1] = v84;
    v85 = &v148;
LABEL_98:
    v85->f64[0] = -v83;
LABEL_99:
    v87 = SHIDWORD(v81);
    v88 = v82;
    v148.f64[0] = v148.f64[0] + SHIDWORD(v81);
    v148.f64[1] = v148.f64[1] + v82;
    if (v81 == 3)
    {
      v89 = v146;
      v92 = v147;
      goto LABEL_105;
    }

    if (v81 == 2)
    {
      v89 = v147;
      v92 = -v146;
LABEL_105:
      v146 = v92;
      v91 = &v147;
      goto LABEL_106;
    }

    if (v81 != 1)
    {
      goto LABEL_107;
    }

    v90 = v146;
    v89 = v147;
    v146 = v147;
    v147 = v90;
    v91 = &v146;
LABEL_106:
    *v91 = -v89;
LABEL_107:
    v146 = v146 + v87;
    v147 = v147 + v88;
    switch(v81)
    {
      case 3:
        v96 = v145.f64[1];
        v93 = v145.f64[0];
        goto LABEL_113;
      case 2:
        v93 = v145.f64[1];
        v96 = -v145.f64[0];
LABEL_113:
        v145.f64[0] = v96;
        v95 = &v145.f64[1];
        goto LABEL_114;
      case 1:
        v93 = v145.f64[1];
        v94 = v145.f64[0];
        v145.f64[0] = v145.f64[1];
        v145.f64[1] = v94;
        v95 = &v145;
LABEL_114:
        v95->f64[0] = -v93;
        break;
    }

    v145.f64[0] = v145.f64[0] + v87;
    v145.f64[1] = v145.f64[1] + v88;
    v136 = sub_24BDD5B20(&v130, &v136);
    v137 = v97;
    v59 = *sub_24BCB9024(a1 + 104, v129);
    v144 = v59;
    if (!--v60)
    {
      goto LABEL_116;
    }
  }

  *a12 = 4294967294;
  *(a12 + 8) = 0u;
  *(a12 + 24) = 0u;
  *(a12 + 36) = 0u;
  v98 = *(a10 + 16);
  v99 = *(a10 + 32);
  v100 = *(a10 + 8) - *(a10 + 24);
  v101 = v100 <= 0.0;
  v102 = sub_24BDBD700(v100, 0.0, 0.001);
  if (v98 > v99)
  {
    v103 = 1;
  }

  else
  {
    v103 = 3;
  }

  if (!v102)
  {
    v103 = 2 * v101;
  }

  *(a12 + 4) = v103;
  v132 = *sub_24BCB9024(a1 + 104, &v144);
  v104 = (*a11 + 16 * v132);
  v105 = (*a11 + 16 * *(sub_24BCB9024(a1 + 104, &v132) + 8));
  v130 = *v104;
  v131 = *v105;
  v129[0] = v148;
  v129[1] = v145;
  v150[0] = 0.0;
  if (sub_24BD93CEC(v130.f64, v129, v150))
  {
    v106 = *(sub_24BCB9024(a1 + 104, &v132) + 12);
    v107 = (*(a1 + 8) + 16 * *(a1 + 176));
    v109 = *v107;
    v108 = v107[1];
    if (v108)
    {
      atomic_fetch_add_explicit(&v108->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_24BC9EC78(v108);
    }

    v110 = 0;
    v125 = *(*(v109 + 40) + 16 * v106);
    do
    {
      v127.f64[v110] = *(v125.f64 + v110);
      ++v110;
    }

    while (v110 != 3);
    v111 = sub_24BCB9024(a1 + 104, &v132);
    v112 = *(sub_24BCB9024(a1 + 104, v111) + 12);
    v113 = (*(a1 + 8) + 16 * *(a1 + 176));
    v115 = *v113;
    v114 = v113[1];
    if (v114)
    {
      atomic_fetch_add_explicit(&v114->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_24BC9EC78(v114);
    }

    v116 = 0;
    v124 = *(*(v115 + 40) + 16 * v112);
    do
    {
      v125.f64[v116] = *(&v124 + v116);
      ++v116;
    }

    while (v116 != 3);
    v117 = v150[0];
    v118 = v128 + v150[0] * (v126 - v128);
    *a13 = v144;
    *(a13 + 8) = vaddq_f64(v127, vmulq_n_f64(vsubq_f64(v125, v127), v117));
    *(a13 + 24) = v118;
  }

  return 1;
}

uint64_t sub_24BDD92A4(uint64_t a1, void *a2, float64x2_t **a3, uint64_t a4, uint64_t a5, void *a6, uint64_t *a7, uint64_t *a8, uint64_t *a9, uint64_t *a10, void *a11, void *a12)
{
  sub_24BDD9ED4(a7);
  sub_24BDD9F24(a7, 0x8000uLL);
  sub_24BC8EED8(a8);
  sub_24BC901C0(a8, (*(a1 + 160) - *(a1 + 152)) >> 2);
  if (*(a1 + 160) != *(a1 + 152))
  {
    LODWORD(v15) = 0;
    do
    {
      v178[0] = v15;
      sub_24BCB7458(v148, 3uLL);
      sub_24BCD573C(a1, v178, v148);
      v16 = *v148[0];
      v176 = *(v148[0] + 1);
      v177 = v16;
      v17 = *a2;
      v18 = *a2 + 16 * v16;
      v175 = *(v148[0] + 2);
      v19 = (v17 + 16 * v176);
      v20 = (v17 + 16 * v175);
      v21 = sub_24BE3EFB0((v17 + 16 * v16), v19, v20);
      if (v21 == 2)
      {
        v22 = 0;
        v164 = xmmword_24BFBD1C0;
        do
        {
          v150.n128_f64[v22] = *(&v164 + v22);
          ++v22;
        }

        while (v22 != 3);
        v23 = (*a11 + 24 * v178[0]);
        *v23 = v150;
        v23[1].n128_f64[0] = v151;
      }

      else
      {
        v140 = v21;
        v143 = v20;
        v24 = 0;
        v164 = xmmword_24BFED040;
        do
        {
          v150.n128_f64[v24] = *(&v164 + v24);
          ++v24;
        }

        while (v24 != 3);
        v25 = v18;
        v26 = (*a11 + 24 * v178[0]);
        *v26 = v150;
        v26[1].n128_f64[0] = v151;
        v27 = *(sub_24BCB9024(a1 + 104, &v177) + 12);
        v28 = (*(a1 + 8) + 16 * *(a1 + 176));
        v30 = *v28;
        v29 = v28[1];
        if (v29)
        {
          atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v29);
        }

        v31 = 0;
        v150 = *(*(v30 + 40) + 16 * v27);
        do
        {
          v174.f64[v31] = v150.n128_f32[v31];
          ++v31;
        }

        while (v31 != 3);
        v32 = *(sub_24BCB9024(a1 + 104, &v176) + 12);
        v33 = (*(a1 + 8) + 16 * *(a1 + 176));
        v35 = *v33;
        v34 = v33[1];
        if (v34)
        {
          atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v34);
        }

        v36 = 0;
        v150 = *(*(v35 + 40) + 16 * v32);
        do
        {
          v173.f64[v36] = v150.n128_f32[v36];
          ++v36;
        }

        while (v36 != 3);
        v37 = *(sub_24BCB9024(a1 + 104, &v175) + 12);
        v38 = (*(a1 + 8) + 16 * *(a1 + 176));
        v40 = *v38;
        v39 = v38[1];
        if (v39)
        {
          atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v39);
        }

        v41 = 0;
        v150 = *(*(v40 + 40) + 16 * v37);
        do
        {
          *(&v172 + v41) = v150.n128_f32[v41];
          ++v41;
        }

        while (v41 != 3);
        sub_24BDBD43C(v25, v19, v143, &v174, &v173, &v172, &v164);
        v138 = v15;
        v42 = *v25;
        v43 = *(v25 + 8);
        v44 = fmin(*v25, 1.79769313e308);
        v45 = fmin(v43, 1.79769313e308);
        v46 = fmax(*v25, -1.79769313e308);
        v47 = fmax(v43, -1.79769313e308);
        v48 = *v19;
        v49 = v19[1];
        if (*v19 < v44)
        {
          v44 = *v19;
        }

        if (v49 < v45)
        {
          v45 = v19[1];
        }

        if (v46 >= v48)
        {
          v48 = v46;
        }

        if (v47 >= v49)
        {
          v50 = v47;
        }

        else
        {
          v50 = v19[1];
        }

        v51 = v143[1];
        if (*v143 < v44)
        {
          v44 = *v143;
        }

        if (v51 >= v45)
        {
          v52 = v45;
        }

        else
        {
          v52 = v143[1];
        }

        if (v48 < *v143)
        {
          v48 = *v143;
        }

        if (v50 >= v51)
        {
          v53 = v50;
        }

        else
        {
          v53 = v143[1];
        }

        v162 = *v25;
        v54 = *(v25 + 8);
        v163 = v54;
        v55 = *v143;
        v160 = *v143;
        v56 = *(v143 + 1);
        v161 = v56;
        if (v140)
        {
          v162 = v55;
          v163 = v56;
          v160 = v42;
          v161 = v54;
        }

        v57 = vcvtpd_s64_f64(v44);
        v58 = vcvtmd_s64_f64(v48);
        if (v57 <= v58)
        {
          v59 = vcvtpd_s64_f64(v52);
          v144 = vcvtmd_s64_f64(v53);
          do
          {
            if (v59 <= v144)
            {
              v60 = v59;
              do
              {
                v159 = 0;
                v150.n128_f64[0] = v57;
                v150.n128_f64[1] = v60;
                sub_24BE3EEBC(v150.n128_f64, &v162, v19, &v160, &v159);
                if (!v159)
                {
                  sub_24BDBD6B8(&v164, &v157, v57, v60);
                  v61 = (*a8 + 24 * v178[0]);
                  v150.n128_u32[0] = -858993459 * ((a7[1] - *a7) >> 4);
                  sub_24BC97D60(v61, &v150);
                  v150.n128_u32[0] = 2;
                  v150.n128_u32[1] = v177;
                  v150.n128_f64[1] = v57;
                  v151 = v60;
                  v152 = v157;
                  v153 = v158;
                  __p = 0;
                  v155 = 0;
                  v156[0] = 0;
                  *(v156 + 5) = 0;
                  sub_24BDDA000(a7, &v150);
                  if (__p)
                  {
                    v155 = __p;
                    operator delete(__p);
                  }

                  sub_24BDD5FEC(a1, a7[1] - 80, a2, a3);
                }

                ++v60;
              }

              while (v144 + 1 != v60);
            }
          }

          while (v57++ != v58);
        }

        LODWORD(v15) = v138;
      }

      if (v148[0])
      {
        v148[1] = v148[0];
        operator delete(v148[0]);
      }

      v15 = (v15 + 1);
    }

    while (v15 < (*(a1 + 160) - *(a1 + 152)) >> 2);
  }

  v63 = a6[1] - *a6;
  v64 = (v63 >> 2);
  sub_24BCB29DC(a12, v64, 0);
  sub_24BC8EED8(a9);
  sub_24BC901C0(a9, v64);
  LODWORD(v172) = 0;
  *&v164 = &v172;
  *(&v164 + 1) = a9;
  v165 = a7;
  v166 = a1;
  v167 = a2;
  v168 = a3;
  v169 = a4;
  v170 = a5;
  v171 = a6;
  if ((v63 & 0x3FFFFFFFCLL) != 0)
  {
    v65 = 0;
    v139 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
    v141 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    v137 = (v63 >> 2);
    do
    {
      LODWORD(v157) = *(*a6 + 4 * v65);
      LODWORD(v162) = *(sub_24BCB9024(a1 + 104, &v157) + 4);
      v66 = (*a2 + 16 * *(sub_24BCB9024(a1 + 104, &v157) + 8));
      v67 = (*a2 + 16 * *(sub_24BCB9024(a1 + 104, &v162) + 8));
      v148[0] = *v66;
      v148[1] = v66[1];
      v149 = *v67;
      if ((*&v148[1] - v149.f64[1]) * (*&v148[1] - v149.f64[1]) + (*v148 - v149.f64[0]) * (*v148 - v149.f64[0]) >= 2.22044605e-15)
      {
        *(*a12 + ((v65 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v65;
        v68 = sub_24BCB9024(a1 + 104, &v157);
        v69 = *(sub_24BCB9024(a1 + 104, v68) + 12);
        v70 = (*(a1 + 8) + 16 * *(a1 + 176));
        v72 = *v70;
        v71 = v70[1];
        if (v71)
        {
          atomic_fetch_add_explicit(&v71->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v71);
        }

        v73 = 0;
        v150 = *(*(v72 + 40) + 16 * v69);
        do
        {
          v174.f64[v73] = v150.n128_f32[v73];
          ++v73;
        }

        while (v73 != 3);
        v74 = sub_24BCB9024(a1 + 104, &v162);
        v75 = *(sub_24BCB9024(a1 + 104, v74) + 12);
        v76 = (*(a1 + 8) + 16 * *(a1 + 176));
        v78 = *v76;
        v77 = v76[1];
        if (v77)
        {
          atomic_fetch_add_explicit(&v77->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v77);
        }

        v79 = 0;
        v150 = *(*(v78 + 40) + 16 * v75);
        do
        {
          v173.f64[v79] = v150.n128_f32[v79];
          ++v79;
        }

        while (v79 != 3);
        v145 = v65;
        sub_24BDBD63C(v148, v149.f64, &v174, &v173, &v150);
        v80 = vminnmq_f64(*v148, v141);
        v81 = vmaxnmq_f64(*v148, v139);
        v82 = vbslq_s8(vcgtq_f64(v80, v149), v149, v80);
        v83 = vbslq_s8(vcgtq_f64(v149, v81), v149, v81);
        v84 = vcvtpd_s64_f64(v82.f64[0]);
        v85 = vcvtmd_s64_f64(v83.f64[0]);
        v86 = vcvtpd_s64_f64(v82.f64[1]);
        v87 = v83.f64[1];
        v88 = vcvtmd_s64_f64(v83.f64[1]);
        v89 = vsubq_f64(v83, v82);
        if (vmovn_s64(vmvnq_s8(vcgeq_f64(v89, vdupq_laneq_s64(v89, 1)))).u8[0])
        {
          v90 = sub_24BDBD700(v86, v82.f64[1], 0.001);
          v91 = sub_24BDBD700(v88, v87, 0.001);
          v92 = v90 + v86;
          if (v92 <= v88 - v91)
          {
            v93 = v88 + (v91 << 31 >> 31) + 1;
            do
            {
              v94 = *v66 + (v92 - *(v66 + 1)) / (v67->f64[1] - *(v66 + 1)) * (v67->f64[0] - *v66);
              if (v94 >= 0.0)
              {
                v95 = 0.5;
              }

              else
              {
                v95 = -0.5;
              }

              v96 = (v94 + v95);
              if (v96 >= v84 && v96 <= v85)
              {
                sub_24BDDA060(&v164, &v150, v148, v96, v92, v145, v157);
              }

              ++v92;
            }

            while (v93 != v92);
          }
        }

        else
        {
          v136 = v83.f64[0];
          v98 = sub_24BDBD700(v84, v82.f64[0], 0.001);
          v99 = sub_24BDBD700(v85, v136, 0.001);
          v100 = v98 + v84;
          if (v100 <= v85 - v99)
          {
            v101 = v85 + (v99 << 31 >> 31) + 1;
            do
            {
              v102 = *(v66 + 1) + (v100 - *v66) / (v67->f64[0] - *v66) * (v67->f64[1] - *(v66 + 1));
              if (v102 >= 0.0)
              {
                v103 = 0.5;
              }

              else
              {
                v103 = -0.5;
              }

              v104 = (v102 + v103);
              if (v104 >= v86 && v104 <= v88)
              {
                sub_24BDDA060(&v164, &v150, v148, v100, v104, v145, v157);
              }

              ++v100;
            }

            while (v101 != v100);
          }
        }

        v64 = v137;
        v65 = v145;
      }

      ++v65;
    }

    while (v65 != v64);
  }

  sub_24BC8EED8(a10);
  v106 = (a1 + 104);
  sub_24BC901C0(a10, (*(a1 + 112) - *(a1 + 104)) >> 2);
  if (*(a1 + 112) != *(a1 + 104))
  {
    v107 = 0;
    v108 = 0;
    do
    {
      v150.n128_u32[0] = v108;
      v109 = sub_24BCB9454(&v174, v106, &v150);
      v110 = sub_24BCB947C(v109);
      if (v110 == -1)
      {
LABEL_124:
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Non-manifold vertex.");
        __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
      }

      v111 = v110;
      while (1)
      {
        v112 = sub_24BC9ECE4(a1, *(a1 + 180), v111);
        if ((v113 & *v112) == 0)
        {
          break;
        }

        v111 = sub_24BCB947C(&v174);
        if (v111 == -1)
        {
          goto LABEL_124;
        }
      }

      LODWORD(v148[0]) = v108;
      sub_24BCB9454(&v150, v106, v148);
      while (1)
      {
        v114 = sub_24BCB947C(&v150);
        if (v114 == -1)
        {
          break;
        }

        v115 = v114;
        v116 = sub_24BC9ECE4(a1, *(a1 + 180), v114);
        if ((v117 & *v116) == 0)
        {
          v118 = (*a2 + 16 * v115);
          v119 = *v118 >= 0.0 ? 0.5 : -0.5;
          if (!sub_24BDBD700(*v118, (*v118 + v119), 0.001))
          {
            goto LABEL_122;
          }

          v120 = v118[1];
          v121 = v120 >= 0.0 ? 0.5 : -0.5;
          if (!sub_24BDBD700(v120, (v120 + v121), 0.001))
          {
            goto LABEL_122;
          }
        }
      }

      v122 = v106;
      v123 = *a2;
      v124 = (*a10 + 24 * v107);
      v150.n128_u32[0] = -858993459 * ((a7[1] - *a7) >> 4);
      sub_24BC97D60(v124, &v150);
      v125 = (*(a1 + 8) + 16 * *(a1 + 176));
      v127 = *v125;
      v126 = v125[1];
      if (v126)
      {
        atomic_fetch_add_explicit(&v126->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v126);
      }

      v128 = 0;
      v129 = v123 + 16 * v111;
      v130 = *(v127 + 40) + 16 * v108;
      do
      {
        *&v148[v128] = *(v130 + 4 * v128);
        ++v128;
      }

      while (v128 != 3);
      v150.n128_u32[0] = 0;
      v150.n128_u32[1] = v111;
      v150.n128_u64[1] = *v129;
      v151 = *(v129 + 8);
      v152 = *v148;
      *(v156 + 5) = 0;
      v155 = 0;
      v156[0] = 0;
      v153 = v149.f64[0];
      __p = 0;
      sub_24BDDA000(a7, &v150);
      v106 = v122;
      if (__p)
      {
        v155 = __p;
        operator delete(__p);
      }

      sub_24BDD6A0C(a1, a7[1] - 80, a2, v131, a3);
LABEL_122:
      v107 = ++v108;
    }

    while (v108 < ((*(a1 + 112) - *(a1 + 104)) >> 2));
  }

  return 1;
}

void sub_24BDD9E40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BDD9ED4(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 80)
  {
    v4 = *(i - 32);
    if (v4)
    {
      *(i - 24) = v4;
      operator delete(v4);
    }
  }

  a1[1] = v2;
}

void *sub_24BDD9F24(void *result, unint64_t a2)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 < 0x333333333333334)
    {
      v2 = result[1] - *result;
      v3 = result;
      sub_24BDDD2DC(result, a2);
    }

    sub_24BC8E01C();
  }

  return result;
}

void sub_24BDD9FEC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BDDD4EC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24BDDA000(uint64_t *a1, __n128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_24BDDD584(a1, a2);
  }

  else
  {
    sub_24BDDD6B8(a1, a1[1], a2);
    result = v3 + 80;
    a1[1] = v3 + 80;
  }

  a1[1] = result;
  return result;
}

void sub_24BDDA060(uint64_t a1, uint64_t a2, double *a3, int a4, int a5, unsigned int a6, unsigned __int32 a7)
{
  v11 = a4;
  v12 = a5;
  v15.n128_f64[0] = a4;
  v15.n128_f64[1] = a5;
  if (sub_24BD93C54(a3, v15.n128_f64))
  {
    sub_24BDBD6B8(a2, &v22, v11, v12);
    v13 = (**(a1 + 8) + 24 * a6);
    v15.n128_u32[0] = -858993459 * ((*(*(a1 + 16) + 8) - **(a1 + 16)) >> 4);
    sub_24BC97D60(v13, &v15);
    v14 = *(a1 + 16);
    v15.n128_u32[0] = 1;
    v15.n128_u32[1] = a7;
    v15.n128_f64[1] = v11;
    v16 = v12;
    v17 = v22;
    v18 = v23;
    __p = 0;
    v20 = 0;
    v21[0] = 0;
    *(v21 + 5) = 0;
    sub_24BDDA000(v14, &v15);
    if (__p)
    {
      v20 = __p;
      operator delete(__p);
    }

    sub_24BDD633C(*(a1 + 24), *(*(a1 + 16) + 8) - 80, *(a1 + 32), *(a1 + 48), *(a1 + 40), *(a1 + 56), *(a1 + 64));
    ++**a1;
  }
}

void sub_24BDDA174(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BDDA190(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4, void *a5, void *a6, void *a7, uint64_t *a8, uint64_t *a9, uint64_t *a10)
{
  v10 = *a9;
  v11 = a9[1];
  if (v11 == *a9)
  {
    return 1;
  }

  v12 = a8;
  v13 = 0;
  do
  {
    v14 = v10 + 80 * v13;
    v15 = (v14 + 48);
    v16 = *(v14 + 48);
    if (*(v14 + 56) == v16)
    {
      goto LABEL_36;
    }

    v17 = 0;
    v18 = 0;
    do
    {
      if (*(v16 + v17 + 56) == -1 && *(v16 + v17) != -1)
      {
        v80 = -1;
        v81 = -1;
        v82 = 0u;
        memset(v83, 0, 28);
        v76 = -1;
        v78 = 0;
        v79 = 0;
        v77 = 0;
        if ((sub_24BDD84B8(a1, v14, a2, a3, a4, a9, a5, a6, a7, *v15 + v17, v12, &v81, &v76) & 1) == 0)
        {
          v22 = *(*a9 + 80 * v13 + 48) + v17;
          *(v22 + 56) = v81;
          *(v22 + 40) = v83[0];
          *(v22 + 68) = *&v83[1];
          v23 = DWORD2(v83[1]);
LABEL_11:
          *(v22 + 76) = v23;
          goto LABEL_24;
        }

        v19 = v81;
        if (v81 == v13)
        {
          v20 = 0;
          v81 = 0xFFFFFFFFLL;
          v82 = 0u;
          v21 = 0uLL;
          v19 = 0xFFFFFFFFLL;
          memset(v83, 0, 28);
        }

        else
        {
          v20 = HIDWORD(v81);
          v21 = v83[0];
        }

        v24 = *(*a9 + 80 * v13 + 48) + v17;
        *(v24 + 56) = v19;
        *(v24 + 60) = v20;
        *(v24 + 40) = v21;
        *(v24 + 68) = *&v83[1];
        *(v24 + 76) = DWORD2(v83[1]);
        if (v19 == 4294967294)
        {
          v25 = *a9 + 80 * v13;
          *(v25 + 76) = 1;
          if (v76 != -1)
          {
            LODWORD(v80) = v13;
            v26 = (*(v25 + 48) + v17);
            v27 = v26[4];
            v28 = v26[2];
            v29 = v26[3] - v26[1];
            v30 = v29 <= 0.0;
            v31 = sub_24BDBD700(v29, 0.0, 0.001);
            if (v27 > v28)
            {
              v32 = 1;
            }

            else
            {
              v32 = 3;
            }

            if (!v31)
            {
              v32 = 2 * v30;
            }

            HIDWORD(v80) = v32;
            sub_24BDDA690(a10, &v76);
            *(*(*a9 + 80 * v13 + 48) + v17 + 64) = -1 - 858993459 * ((a10[1] - *a10) >> 3);
          }

          goto LABEL_24;
        }

        if ((v19 & 0x80000000) != 0)
        {
LABEL_24:
          v10 = *a9;
          goto LABEL_25;
        }

        v33 = *a9;
        v34 = *(*a9 + 80 * v19 + 48);
        if ((*(v34 + 88 * v20 + 56) & 0x80000000) == 0)
        {
          *(*(v33 + 80 * v13 + 48) + v17 + 56) = -1;
          goto LABEL_24;
        }

        v56 = v20;
        v54 = *(v34 + 88 * v20);
        v35 = sub_24BCB9024(a1 + 104, (v33 + 80 * v19 + 4));
        v68 = sub_24BDD5CF0(a1, a5, a6, a7, v54, *(v35 + 16), (*a9 + 80 * v19), 1);
        v69 = v36;
        v70 = sub_24BDD598C(&v68);
        v71 = v37;
        v72 = COERCE_DOUBLE(sub_24BDD5B20(&v70, (*(*a9 + 80 * v13 + 48) + v17 + 68)));
        v73 = v38;
        v39 = *a9 + 80 * v13;
        v55 = *(*(v39 + 48) + v17);
        v40 = sub_24BCB9024(a1 + 104, (v39 + 4));
        v64 = sub_24BDD5CF0(a1, a5, a6, a7, v55, *(v40 + 16), (*a9 + 80 * v13), 1);
        v65 = v41;
        v66 = sub_24BDD598C(&v64);
        v67 = v42;
        v43 = sub_24BDD5B20(&v72, &v66);
        v74 = v43;
        v75 = v44;
        v45 = *a9 + 80 * v13;
        v47 = *(v45 + 8);
        v46 = *(v45 + 16);
        v70 = *&v46;
        if (v43 == 3)
        {
          v72 = v46;
          v48 = &v70;
          v46 = v47;
        }

        else
        {
          if (v43 != 2)
          {
            v12 = a8;
            if (v43 != 1)
            {
LABEL_35:
              v49 = v47 + SHIDWORD(v43);
              v50 = v46 + v44;
              v74 = sub_24BDD598C(&v74);
              v75 = v51;
              v22 = *(*a9 + 80 * v19 + 48) + 88 * v56;
              *(v22 + 56) = v13;
              *(v22 + 60) = v18;
              *(v22 + 40) = v49;
              *(v22 + 48) = v50;
              v23 = v75;
              *(v22 + 68) = v74;
              goto LABEL_11;
            }

            v72 = v46;
            v70 = *&v47;
            v48 = &v72;
LABEL_34:
            *v48 = -v46;
            v47 = v72;
            v46 = *&v70;
            goto LABEL_35;
          }

          v72 = -v47;
          v48 = &v70;
        }

        v12 = a8;
        goto LABEL_34;
      }

LABEL_25:
      ++v18;
      v14 = v10 + 80 * v13;
      v15 = (v14 + 48);
      v16 = *(v14 + 48);
      v17 += 88;
    }

    while (v18 < 0x2E8BA2E8BA2E8BA3 * ((*(v14 + 56) - v16) >> 3));
    v11 = a9[1];
LABEL_36:
    ++v13;
  }

  while (v13 < 0xCCCCCCCCCCCCCCCDLL * ((v11 - v10) >> 4));
  return 1;
}

uint64_t sub_24BDDA690(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_24BDDD724(a1, a2);
  }

  else
  {
    *v3 = *a2;
    for (i = 8; i != 32; i += 8)
    {
      *(v3 + i) = *(a2 + i);
    }

    *(v3 + 32) = *(a2 + 32);
    result = v3 + 40;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_24BDDA6F8(uint64_t a1, void *a2, void *a3, void *a4, uint64_t *a5)
{
  v5 = *a5;
  v71 = a5[1];
  if (*a5 != v71)
  {
    v72 = 0;
    v78 = vdupq_n_s64(0x7FF8000000000000uLL);
    v6 = *a5;
    while (1)
    {
      if (*(v6 + 72))
      {
        v7 = *(v6 + 48);
        v74 = (v6 + 48);
        v8 = *(v6 + 56);
        if (v7 != v8)
        {
          break;
        }
      }

LABEL_44:
      v6 += 80;
      ++v72;
      if (v6 == v71)
      {
        return 1;
      }
    }

    v83 = v6;
LABEL_6:
    LODWORD(v9) = 0;
    v88 = 0;
    v10 = -1171354717 * ((v8 - *v74) >> 3);
    v73 = (*v74 + 88 * (((1 - 1171354717 * ((v7 - *v74) >> 3)) % v10 + v10) % v10));
    v113 = 0;
    v114 = 0;
    v79 = v7;
    v80 = v7;
    v11 = v7;
    while (1)
    {
      v12 = *(v11 + 14);
      if ((v12 & 0x80000000) != 0)
      {
LABEL_43:
        v7 = (v80 + 88);
        v8 = *(v6 + 56);
        if ((v80 + 88) == v8)
        {
          goto LABEL_44;
        }

        goto LABEL_6;
      }

      v13 = v5 + 80 * v12;
      v14 = *(v13 + 48);
      v15 = *(v11 + 15);
      v16 = -1171354717 * ((*(v13 + 56) - v14) >> 3);
      v17 = (v15 % v16 + v16) % v16;
      v18 = v14 + 88 * v17;
      v19 = ((v15 - 1) % v16 + v16) % v16;
      v20 = v14 + 88 * v19;
      v81 = v11;
      v113 = sub_24BDD5B20(v11 + 17, &v113);
      v114 = v21;
      v89 = sub_24BDD5CF0(a1, a2, a3, a4, *v18, *v20, v13, v17 != v19);
      LODWORD(v90) = v22;
      v23 = *v18;
      v24 = sub_24BCB9024(a1 + 104, (v13 + 4));
      v109 = sub_24BDD5CF0(a1, a2, a3, a4, v23, *(v24 + 16), v13, 1);
      v110 = v25;
      v107 = COERCE_DOUBLE(sub_24BDD598C(&v109));
      LODWORD(v108) = v26;
      v111 = sub_24BDD5B20(&v89, &v107);
      v112 = v27;
      v107 = *(v20 + 8);
      v108 = *(v20 + 16);
      v89 = sub_24BDD5B20(&v111, &v113);
      LODWORD(v90) = v28;
      v29 = sub_24BDD598C(&v89);
      if (v29 == 3)
      {
        v31 = v107;
        v107 = v108;
        v33 = &v108;
        v6 = v83;
      }

      else
      {
        v6 = v83;
        if (v29 == 2)
        {
          v31 = v108;
          v107 = -v107;
          v33 = &v108;
        }

        else
        {
          if (v29 != 1)
          {
            goto LABEL_15;
          }

          v32 = v107;
          v31 = v108;
          v107 = v108;
          v108 = v32;
          v33 = &v107;
        }
      }

      *v33 = -v31;
LABEL_15:
      v107 = v107 + SHIDWORD(v29);
      v108 = v108 + v30;
      if (v88)
      {
        v34 = 1;
      }

      else
      {
        v38 = sub_24BDBD710(&v107, v79 + 1);
        v34 = 0;
        if (v13 != v6 && v38)
        {
          v40 = *(v13 + 48);
          v39 = *(v13 + 56);
          if (v40 == v39)
          {
            v75 = v15;
          }

          else
          {
            v41 = *(v13 + 48);
            do
            {
              v42 = *(v41 + 56);
              if ((v42 & 0x80000000) == 0 && *a5 + 80 * v42 == v6)
              {
                v88 = 0;
                goto LABEL_18;
              }

              v41 += 88;
            }

            while (v41 != v39);
            v75 = v15;
            while (v40 != v18)
            {
              v40 += 88;
              if (v40 == v39)
              {
                v40 = *(v13 + 56);
                goto LABEL_42;
              }
            }

            v40 = v18;
          }

LABEL_42:
          sub_24BDD5C80((v79 + 11), *(v6 + 56), a5);
          sub_24BDD5C80(v40, *(v13 + 56), a5);
          v88 = 1;
          v105 = sub_24BDD5CF0(a1, a2, a3, a4, *v73, *v80, v6, 1);
          v106 = v43;
          v101 = sub_24BDD5CF0(a1, a2, a3, a4, *v73, *v80, v6, v73 != v80);
          v102 = v44;
          v103 = sub_24BDD598C(&v101);
          v104 = v45;
          v109 = sub_24BDD5B20(&v105, &v103);
          v110 = v46;
          v99 = sub_24BDD598C(&v113);
          v100 = v47;
          v89 = sub_24BDD5B20(&v109, &v99);
          LODWORD(v90) = v48;
          v76 = sub_24BDD598C(&v89);
          v77 = v49;
          v50 = *v18;
          v51 = *(sub_24BCB9024(a1 + 104, (v13 + 4)) + 16);
          v103 = sub_24BDD5CF0(a1, a2, a3, a4, v50, v51, v13, 1);
          v104 = v52;
          v105 = sub_24BDD598C(&v103);
          v106 = v53;
          v109 = sub_24BDD5B20(&v105, &v113);
          v110 = v54;
          v55 = *v80;
          v56 = sub_24BCB9024(a1 + 104, (v6 + 4));
          v99 = sub_24BDD5CF0(a1, a2, a3, a4, v55, *(v56 + 16), v6, 1);
          v100 = v57;
          v101 = sub_24BDD598C(&v99);
          v102 = v58;
          v89 = sub_24BDD5B20(&v109, &v101);
          LODWORD(v90) = v59;
          v60 = sub_24BDD598C(&v89);
          v62 = v61;
          LODWORD(v89) = *v80;
          v90 = *(v80 + 8);
          v91 = *(v80 + 8);
          v92 = *(v80 + 16);
          v93 = v78;
          v94 = -1;
          v95 = -1;
          v96 = 0;
          v97 = 0;
          v98 = 0;
          v63 = sub_24BDDAE54(v74, (v79 + 11), &v89);
          LODWORD(v89) = *v18;
          v90 = *(v18 + 8);
          v91 = *(v18 + 8);
          v92 = *(v18 + 16);
          v93 = v78;
          v94 = -1;
          v95 = -1;
          v96 = 0;
          v97 = 0;
          v98 = 0;
          v64 = sub_24BDDAE54((v13 + 48), v40, &v89);
          v80 = v63 - 88;
          v65 = *(v13 + 48);
          v66 = -1171354717 * ((*(v13 + 56) - v65) >> 3);
          v67 = v65 + 88 * (((v75 + 1) % v66 + v66) % v66);
          *(v63 + 56) = *(v81 + 14);
          *(v63 + 60) = -1171354717 * ((v64 - v65) >> 3);
          v68 = *(v63 - 72);
          *(v63 + 40) = *(v63 - 80);
          *(v63 + 48) = v68;
          *(v63 + 68) = v76;
          *(v63 + 76) = v77;
          v69 = -1171354717 * ((v63 - *(v6 + 48)) >> 3);
          *(v64 + 56) = v72;
          *(v64 + 60) = v69;
          *(v64 + 40) = *(v67 + 8);
          *(v64 + 48) = *(v67 + 16);
          *(v64 + 68) = v60;
          *(v64 + 76) = v62;
          v11 = (v65 + 88 * ((v75 % v66 + v66) % v66));
          v6 = v83;
          goto LABEL_19;
        }
      }

      v88 = v34;
LABEL_18:
      v11 = v20;
LABEL_19:
      v113 = sub_24BDD5B20(&v111, &v113);
      v114 = v35;
      v9 = (v9 + 1);
      v5 = *a5;
      v37 = v9 > 0x186A0 && 0xCCCCCCCCCCCCCCCDLL * ((a5[1] - *a5) >> 4) < v9;
      if (v13 == v6 || v37)
      {
        goto LABEL_43;
      }
    }
  }

  return 1;
}

uint64_t sub_24BDDAE54(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v9 = *a1;
    v10 = 0x2E8BA2E8BA2E8BA3 * ((v6 - *a1) >> 3) + 1;
    if (v10 > 0x2E8BA2E8BA2E8BALL)
    {
      sub_24BC8E01C();
    }

    v11 = a2 - v9;
    v12 = 0x2E8BA2E8BA2E8BA3 * ((v7 - v9) >> 3);
    v13 = 2 * v12;
    if (2 * v12 <= v10)
    {
      v13 = 0x2E8BA2E8BA2E8BA3 * ((v6 - *a1) >> 3) + 1;
    }

    if (v12 >= 0x1745D1745D1745DLL)
    {
      v14 = 0x2E8BA2E8BA2E8BALL;
    }

    else
    {
      v14 = v13;
    }

    v21 = a1;
    if (v14)
    {
      sub_24BDDCA08(a1, v14);
    }

    __p = 0;
    v18 = 8 * (v11 >> 3);
    v19 = v18;
    v20 = 0;
    sub_24BDDDA48(&__p, a3);
    v4 = sub_24BDDDC40(a1, &__p, v4);
    if (v19 != v18)
    {
      v19 = v19 - 88 * ((v19 - v18 - 88) / 0x58) - 88;
    }

    if (__p)
    {
      operator delete(__p);
    }
  }

  else if (a2 == v6)
  {
    *v6 = *a3;
    *(v6 + 8) = *(a3 + 8);
    *(v6 + 16) = *(a3 + 16);
    *(v6 + 24) = *(a3 + 24);
    *(v6 + 32) = *(a3 + 32);
    *(v6 + 40) = *(a3 + 40);
    *(v6 + 48) = *(a3 + 48);
    v15 = *(a3 + 56);
    *(v6 + 65) = *(a3 + 65);
    *(v6 + 56) = v15;
    a1[1] = v6 + 88;
  }

  else
  {
    sub_24BDDD9A0(a1, a2, v6, a2 + 88);
    *v4 = *a3;
    *(v4 + 8) = *(a3 + 8);
    *(v4 + 16) = *(a3 + 16);
    *(v4 + 24) = *(a3 + 24);
    *(v4 + 32) = *(a3 + 32);
    *(v4 + 40) = *(a3 + 40);
    *(v4 + 48) = *(a3 + 48);
    v8 = *(a3 + 56);
    *(v4 + 65) = *(a3 + 65);
    *(v4 + 56) = v8;
  }

  return v4;
}

void sub_24BDDB060(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BDDB0A8(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[1] - *a1;
  if (v5 == 4)
  {
LABEL_2:

    sub_24BDDB2AC(a2, a1);
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v8 = v5 >> 2;
    v9 = (v5 >> 2) - 1;
    v10 = -(v5 >> 2);
    v11 = 4;
    v12 = *a1;
    while (1)
    {
      v13 = v7 + 1;
      if (v7 + 1 < v8)
      {
        break;
      }

LABEL_10:
      v6 += 4;
      v11 += 4;
      v12 += 4;
      ++v7;
      if (v13 >= v9)
      {
        goto LABEL_2;
      }
    }

    v14 = v11;
    v15 = 1;
    while (*(v4 + 4 * v7) != *(v12 + 4 * v15))
    {
      ++v15;
      v14 += 4;
      if (!(v10 + v7 + v15))
      {
        goto LABEL_10;
      }
    }

    v22 = 0;
    v23 = 0;
    v24 = 0;
    __p = 0;
    v20 = 0;
    v21 = 0;
    if (v7)
    {
      v16 = 0;
      v17 = v7;
      do
      {
        sub_24BCB4670(&v22, (*a1 + v16));
        v16 += 4;
        --v17;
      }

      while (v17);
      v4 = *a1;
      v8 = (a1[1] - *a1) >> 2;
    }

    if (v7 + v15 < v8)
    {
      v18 = v7 + v15;
      do
      {
        sub_24BCB4670(&v22, (v4 + v14));
        ++v18;
        v4 = *a1;
        v14 += 4;
      }

      while (v18 < (a1[1] - *a1) >> 2);
    }

    if (v7 < v7 + v15)
    {
      do
      {
        sub_24BCB4670(&__p, (*a1 + v6));
        v6 += 4;
        --v15;
      }

      while (v15);
    }

    sub_24BDDB0A8(&v22, a2);
    sub_24BDDB0A8(&__p, a2);
    if (__p)
    {
      v20 = __p;
      operator delete(__p);
    }

    if (v22)
    {
      v23 = v22;
      operator delete(v22);
    }
  }
}

void sub_24BDDB274(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BDDB2AC(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_24BDDDF30(a1, a2);
  }

  else
  {
    sub_24BDDDEDC(a1, a2);
    result = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

void sub_24BDDB2EC(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4)
{
  sub_24BCB3798(a4);
  v111 = 0;
  v112 = 0;
  v113 = 0;
  v108 = 0;
  v109 = 0;
  v110 = 0;
  sub_24BC97D30(&v111, 0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 4) - 0x3333333333333333 * ((a3[1] - *a3) >> 3));
  v7 = *a2;
  v8 = a2[1];
  if (v8 != *a2)
  {
    v9 = 0;
    v10 = 1;
    do
    {
      v11 = v7 + 80 * v9;
      *&v12 = vcvt_f32_f64(*(v11 + 24));
      *&v13 = *(v11 + 40);
      *(&v12 + 1) = v13;
      *(v111 + 16 * v9) = v12;
      v9 = v10;
      v7 = *a2;
      v8 = a2[1];
      v14 = 0xCCCCCCCCCCCCCCCDLL * ((v8 - *a2) >> 4) > v10++;
    }

    while (v14);
  }

  v15 = a3[1];
  v93 = a4;
  if (v15 == *a3)
  {
    v21 = a3[1];
  }

  else
  {
    v16 = 0;
    v17 = 0;
    v15 = *a3;
    do
    {
      v18 = v15 + v16;
      *&v19 = vcvt_f32_f64(*(v18 + 8));
      *&v20 = *(v18 + 24);
      *(&v19 + 1) = v20;
      *(v111 - 0x3333333333333333 * (a2[1] - *a2) + 16 * v17++) = v19;
      v15 = *a3;
      v21 = a3[1];
      v16 += 40;
    }

    while (v17 < 0xCCCCCCCCCCCCCCCDLL * ((v21 - *a3) >> 3));
    v7 = *a2;
    v8 = a2[1];
  }

  v94 = a3;
  if (v8 != v7)
  {
    v22 = 0;
    v23 = 0;
    do
    {
      v24 = *(v7 + 80 * v22 + 48);
      if (*(v7 + 80 * v22 + 56) != v24)
      {
        v25 = 0;
        v26 = 0;
        v95 = v22;
        do
        {
          if ((*(v24 + 88 * v25 + 80) & 1) == 0)
          {
            __p = 0;
            v98 = 0;
            v99 = 0;
            if ((v23 & 0x80000000) == 0)
            {
              v27 = 0;
              v28 = v26;
              v29 = v23;
              while (v29 != v23 || v98 == __p)
              {
                v30 = (v7 + 80 * v29 + 48);
                v31 = -1171354717 * ((v30[1] - *v30) >> 3);
                if ((*(*v30 + 88 * ((v28 % v31 + v31) % v31) + 80) & 1) == 0)
                {
                  LODWORD(__src) = v29;
                  sub_24BCB4670(&__p, &__src);
                  v7 = *a2;
                  v32 = *(*a2 + 80 * v29 + 48);
                  v33 = -1171354717 * ((*(*a2 + 80 * v29 + 56) - v32) >> 3);
                  v34 = v32 + 88 * ((v28 % v33 + v33) % v33);
                  *(v34 + 80) = 1;
                  if (v27 <= 0x62)
                  {
                    v29 = *(v34 + 56);
                    v28 = *(v34 + 60) - 1;
                    ++v27;
                    if ((v29 & 0x80000000) == 0)
                    {
                      continue;
                    }
                  }
                }

                goto LABEL_25;
              }

              if ((v98 - __p) >= 9)
              {
                sub_24BDDB2AC(&v108, &__p);
              }

LABEL_25:
              v22 = v95;
              if (__p)
              {
                v98 = __p;
                operator delete(__p);
              }
            }

            v7 = *a2;
          }

          v24 = *(v7 + 80 * v22 + 48);
          v25 = ++v26;
        }

        while (0x2E8BA2E8BA2E8BA3 * ((*(v7 + 80 * v22 + 56) - v24) >> 3) > v26);
        v8 = a2[1];
      }

      v22 = ++v23;
    }

    while (0xCCCCCCCCCCCCCCCDLL * ((v8 - v7) >> 4) > v23);
    a3 = v94;
    v15 = *v94;
    v21 = v94[1];
  }

  if (v21 != v15)
  {
    v35 = 0;
    do
    {
      __src = 0;
      v106 = 0;
      v107 = 0;
      LODWORD(__p) = v35 - 858993459 * ((a2[1] - *a2) >> 4);
      sub_24BCB4670(&__src, &__p);
      v36 = *a3 + 40 * v35;
      v37 = *(v36 + 32);
      if ((v37 & 0x80000000) != 0)
      {
        v39 = -1;
      }

      else
      {
        v38 = *(v36 + 36);
        v39 = -1;
        while (1)
        {
          v40 = *a2 + 80 * v37;
          __p = *v40;
          v98 = *(v40 + 8);
          v99 = *(v40 + 16);
          for (i = 24; i != 48; i += 8)
          {
            *(&__p + i) = *(v40 + i);
          }

          v100 = 0;
          v101 = 0;
          v102 = 0;
          sub_24BDDC938(&v100, *(v40 + 48), *(v40 + 56), 0x2E8BA2E8BA2E8BA3 * ((*(v40 + 56) - *(v40 + 48)) >> 3));
          v42 = *(v40 + 72);
          v104 = *(v40 + 76);
          v103 = v42;
          LODWORD(v96) = v37;
          sub_24BCB4670(&__src, &v96);
          if ((v106 - __src) >= 0x29)
          {
            break;
          }

          v43 = (v100 + 88 * (((v38 - 1) % (-1171354717 * ((v101 - v100) >> 3)) - 1171354717 * ((v101 - v100) >> 3)) % (-1171354717 * ((v101 - v100) >> 3))));
          v37 = v43[14];
          v38 = v43[15];
          v39 = v43[16];
          v101 = v100;
          operator delete(v100);
          if ((v37 & 0x80000000) != 0)
          {
            goto LABEL_44;
          }
        }

        if (v100)
        {
          v101 = v100;
          operator delete(v100);
        }
      }

LABEL_44:
      v44 = __src;
      v45 = (v106 - __src) <= 0x2B && v37 == 4294967294;
      a3 = v94;
      if (v45)
      {
        LODWORD(__p) = v39 - 858993459 * ((a2[1] - *a2) >> 4);
        sub_24BCB4670(&__src, &__p);
        v44 = __src;
        if ((v106 - __src) >= 9)
        {
          sub_24BDDB2AC(&v108, &__src);
          v44 = __src;
        }
      }

      if (v44)
      {
        v106 = v44;
        operator delete(v44);
      }

      ++v35;
    }

    while (v35 < 0xCCCCCCCCCCCCCCCDLL * ((v94[1] - *v94) >> 3));
  }

  v46 = v109;
  v47 = v109 - v108;
  if (v109 == v108)
  {
    v64 = v109;
  }

  else
  {
    v48 = 0;
    if (0xAAAAAAAAAAAAAAABLL * (v47 >> 3) <= 1)
    {
      v49 = 1;
    }

    else
    {
      v49 = 0xAAAAAAAAAAAAAAABLL * (v47 >> 3);
    }

    do
    {
      __p = 0;
      v98 = 0;
      v99 = 0;
      sub_24BDDB0A8((v108 + 24 * v48), &__p);
      v50 = __p;
      v51 = v98;
      v52 = 0xAAAAAAAAAAAAAAABLL * ((v98 - __p) >> 3);
      if (v52 >= 2)
      {
        v53 = (v52 - 1);
        if (v52 - 1 >= 0)
        {
          do
          {
            if (*(__p + 3 * v53 + 1) - *(__p + 3 * v53) <= 8uLL)
            {
              v54 = __p + 24 * v53;
              if (v54 + 24 == v51)
              {
                v57 = v51;
                v51 = __p + 24 * v53;
              }

              else
              {
                do
                {
                  v55 = v54 + 24;
                  sub_24BDDE060(v54, (v54 + 24));
                  v56 = v54 + 48;
                  v54 += 24;
                }

                while (v56 != v51);
                v57 = v98;
                v51 = v55;
              }

              if (v57 != v51)
              {
                v58 = v57;
                do
                {
                  v60 = *(v58 - 3);
                  v58 -= 24;
                  v59 = v60;
                  if (v60)
                  {
                    *(v57 - 2) = v59;
                    operator delete(v59);
                  }

                  v57 = v58;
                }

                while (v58 != v51);
              }

              v98 = v51;
            }

            v14 = v53-- <= 0;
          }

          while (!v14);
          v50 = __p;
        }

        v61 = (v108 + 24 * v48);
        if (v51 == v50)
        {
          v61[1] = *v61;
        }

        else
        {
          if (v61 != v50)
          {
            sub_24BCA2A30(v61, *v50, v50[1], (v50[1] - *v50) >> 2);
            v50 = __p;
            v51 = v98;
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v51 - v50) >> 3) >= 2)
          {
            v62 = 3;
            v63 = 1;
            do
            {
              sub_24BDDB2AC(&v108, &v50[v62]);
              ++v63;
              v50 = __p;
              v62 += 3;
            }

            while (v63 < 0xAAAAAAAAAAAAAAABLL * ((v98 - __p) >> 3));
          }
        }
      }

      __src = &__p;
      sub_24BC8EE84(&__src);
      ++v48;
    }

    while (v48 != v49);
    v46 = v108;
    v64 = v109;
  }

  v65 = -1431655765 * ((v64 - v46) >> 3) - 1;
  if ((v65 & 0x80000000) == 0)
  {
    do
    {
      if (*(v108 + 24 * v65) == *(v108 + 24 * v65 + 8))
      {
        v66 = v108 + 24 * v65;
        if (v66 + 24 != v64)
        {
          do
          {
            v67 = v66 + 24;
            sub_24BDDE060(v66, (v66 + 24));
            v68 = v66 + 48;
            v66 += 24;
          }

          while (v68 != v64);
          v64 = v109;
          v66 = v67;
        }

        if (v64 != v66)
        {
          v69 = v64;
          do
          {
            v71 = *(v69 - 24);
            v69 -= 24;
            v70 = v71;
            if (v71)
            {
              *(v64 - 16) = v70;
              operator delete(v70);
            }

            v64 = v69;
          }

          while (v69 != v66);
        }

        v109 = v66;
        v64 = v66;
      }

      v14 = v65-- <= 0;
    }

    while (!v14);
  }

  sub_24BC95764(&__p, ((v112 - v111) >> 3) + ((v112 - v111) >> 4));
  __src = 0;
  v106 = 0;
  v107 = 0;
  sub_24BCB8D20(&__src, 0xAAAAAAAAAAAAAAACLL * ((v109 - v108) >> 3));
  sub_24BC94EB0(&v96, 0xAAAAAAAAAAAAAAABLL * ((v109 - v108) >> 3));
  v72 = v108;
  if (v109 != v108)
  {
    v73 = 0;
    do
    {
      *(v96 + v73) = (*(v72 + 24 * v73 + 8) - *(v72 + 24 * v73)) >> 2;
      v72 = v108;
      v74 = (v108 + 24 * v73);
      v75 = *v74;
      v76 = v74[1];
      if (*v74 != v76)
      {
        v77 = v106;
        do
        {
          v78 = *v75;
          if (v77 >= v107)
          {
            v79 = __src;
            v80 = v77 - __src;
            v81 = (v77 - __src) >> 2;
            v82 = v81 + 1;
            if ((v81 + 1) >> 62)
            {
              sub_24BC8E01C();
            }

            v83 = v107 - __src;
            if ((v107 - __src) >> 1 > v82)
            {
              v82 = v83 >> 1;
            }

            if (v83 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v84 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v84 = v82;
            }

            if (v84)
            {
              sub_24BC92E0C(&__src, v84);
            }

            v85 = (v77 - __src) >> 2;
            v86 = (4 * v81);
            v87 = (4 * v81 - 4 * v85);
            *v86 = v78;
            v77 = (v86 + 1);
            memcpy(v87, v79, v80);
            v88 = __src;
            __src = v87;
            v106 = v77;
            v107 = 0;
            if (v88)
            {
              operator delete(v88);
            }
          }

          else
          {
            *v77 = v78;
            v77 += 4;
          }

          v106 = v77;
          ++v75;
        }

        while (v75 != v76);
        v72 = v108;
      }

      ++v73;
    }

    while (v73 < 0xAAAAAAAAAAAAAAABLL * ((v109 - v72) >> 3));
  }

  if (v112 != v111)
  {
    v89 = (v112 - v111) >> 4;
    v90 = __p + 8;
    if (v89 <= 1)
    {
      v89 = 1;
    }

    v91 = (v111 + 8);
    do
    {
      *(v90 - 2) = *(v91 - 2);
      *(v90 - 1) = *(v91 - 1);
      v92 = *v91;
      v91 += 4;
      *v90 = v92;
      v90 += 3;
      --v89;
    }

    while (v89);
  }

  sub_24BCB13BC(v93, &__p, &__src, &v96);
}

void sub_24BDDBC98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a25)
  {
    a26 = a25;
    operator delete(a25);
  }

  if (a15)
  {
    a16 = a15;
    operator delete(a15);
  }

  a15 = (v26 - 136);
  sub_24BC8EE84(&a15);
  v28 = *(v26 - 112);
  if (v28)
  {
    *(v26 - 104) = v28;
    operator delete(v28);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_24BDDBD74(uint64_t a1, uint64_t a2)
{
  sub_24BC836D4(v114, off_27F078F78[0]);
  *&v113 = 0;
  v4 = sub_24BCB74D4((a1 + 80), &v113, v114);
  if (v115 < 0)
  {
    operator delete(v114[0]);
  }

  sub_24BC836D4(v114, off_27F078FB8[0]);
  *(&v113 + 4) = 0;
  LODWORD(v113) = 0;
  v5 = sub_24BCCAA0C((a1 + 56), &v113, v114);
  if (v115 < 0)
  {
    operator delete(v114[0]);
  }

  if (v4 == -1)
  {
    return 0;
  }

  if (v5 == -1)
  {
    return 0;
  }

  v6 = v4;
  v7 = v5;
  if (!sub_24BDBDB38(a1, v6, v5))
  {
    return 0;
  }

  v8 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 136) - *(a1 + 128)) >> 2);
  v113 = 0uLL;
  sub_24BDDE0B4(v114, v8);
  if (*(a1 + 160) != *(a1 + 152))
  {
    LODWORD(v9) = 0;
    do
    {
      v10 = (*(a1 + 56) + 16 * v7);
      v12 = *v10;
      v11 = v10[1];
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v11);
      }

      v13 = *(v12 + 40);
      sub_24BCB7458(&v113, 3uLL);
      LODWORD(v112[0]) = v9;
      sub_24BCD573C(a1, v112, &v113);
      v14 = 0;
      v15 = v13 + 12 * v9;
      do
      {
        v16 = (*(a1 + 80) + 16 * v6);
        v18 = *v16;
        v17 = v16[1];
        if (v17)
        {
          atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v17);
        }

        v19 = v113;
        *(v114[0] + *(v113 + v14)) = vcvtq_f64_f32(*(*(v18 + 40) + 8 * *(v15 + v14)));
        v14 += 4;
      }

      while (v14 != 12);
      *(&v113 + 1) = v19;
      operator delete(v19);
      v9 = (v9 + 1);
    }

    while (v9 < (*(a1 + 160) - *(a1 + 152)) >> 2);
  }

  sub_24BCB3798(a2);
  v20 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 136) - *(a1 + 128)) >> 2);
  v21 = (v20 >> 1);
  sub_24BDDE140(&v113, v21);
  sub_24BCA123C(v112, 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 136) - *(a1 + 128)) >> 2));
  sub_24BCA123C(v111, v21);
  sub_24BDBE7BC(a1, v112, v111);
  sub_24BDDC8A0(&v113, v21);
  if ((v20 & 0x1FFFFFFFELL) != 0)
  {
    v22 = 0;
    v23 = 0;
    do
    {
      LODWORD(v98) = *(v111[0] + v23);
      v24 = sub_24BC9ECE4(a1, *(a1 + 180), v98);
      if ((*v24 & v25) != 0 || (v26 = sub_24BCB9024(a1 + 104, &v98), v27 = sub_24BC9ECE4(a1, *(a1 + 180), *v26), (*v27 & v28) != 0))
      {
        v29 = v113 + v22;
        *v29 = 0;
        *(v29 + 8) = 0;
      }

      else
      {
        LODWORD(v97[0]) = *sub_24BCB9024(a1 + 104, &v98);
        v30 = *(sub_24BCB9024(a1 + 104, &v98) + 8);
        v31 = *(sub_24BCB9024(a1 + 104, v97) + 8);
        v102 = *(v114[0] + v30);
        v32 = (v114[0] + 16 * v98);
        v33 = *v32;
        v34 = v32[1];
        v35 = (v114[0] + 16 * LODWORD(v97[0]));
        v37 = *v35;
        v36 = v35[1];
        v38 = sub_24BFB8068(*v35 - *(v114[0] + 2 * v31), v36 - *(v114[0] + 2 * v31 + 1), *&v102 - v33, *(&v102 + 1) - v34);
        v40 = atan2(v39, v38);
        v41 = (v40 + v40) / 3.14159265;
        if (v41 >= 0.0)
        {
          v42 = 0.5;
        }

        else
        {
          v42 = -0.5;
        }

        v43 = (v41 + v42) & 3;
        v104 = v43;
        v105 = 0;
        v44 = hypot(0.0, 1.0);
        v107 = log(v44);
        v108 = 0x3FF921FB54442D18;
        v110[0] = COERCE_VOID_(sub_24BDDC8DC(&v104, &v107));
        v110[1] = v45;
        sub_24BDDE364(v110);
        v99 = v46;
        v100 = v47;
        v48 = v37 - sub_24BDDC8DC(&v99, &v102);
        if (v48 >= 0.0)
        {
          v50 = 0.5;
        }

        else
        {
          v50 = -0.5;
        }

        v51 = (v48 + v50);
        v52 = v36 - v49;
        if (v36 - v49 >= 0.0)
        {
          v53 = 0.5;
        }

        else
        {
          v53 = -0.5;
        }

        v54 = (v113 + v22);
        *v54 = v43;
        v54[1] = v51;
        v54[2] = (v52 + v53);
      }

      ++v23;
      v22 += 12;
    }

    while (v21 != v23);
  }

  if (*(a1 + 112) == *(a1 + 104))
  {
LABEL_84:
    sub_24BD419FC(v110, 4uLL);
    v92 = v110[0];
    *(v110[0] + 1) = 0;
    *(v92 + 2) = 0;
    *v92 = 0x3FF0000000000000;
    *(v92 + 24) = xmmword_24BFED3F0;
    *(v92 + 40) = vnegq_f64(0);
    *(v92 + 7) = 0xBFF0000000000000;
    v107 = 0.0;
    v108 = 0;
    v109 = 0;
    v104 = 0.0;
    v105 = 0;
    v106 = 0;
    v102 = 0uLL;
    v103 = 0;
    v99 = 0;
    v100 = 0;
    v101 = 0;
    sub_24BD4308C(&v98, (*(a1 + 160) - *(a1 + 152)) >> 2);
    memset(v97, 0, sizeof(v97));
    sub_24BDD92A4(a1, v114, v110, &v113, v112, v111, &v107, &v104, &v102, &v99, &v98, v97);
    memset(__p, 0, sizeof(__p));
    sub_24BDDA190(a1, &v104, &v102, &v99, &v113, v112, v111, v114, &v107, __p);
    v93 = sub_24BDDA6F8(a1, &v113, v112, v111, &v107);
    sub_24BDDB2EC(v93, &v107, __p, a2);
  }

  LODWORD(v55) = 0;
  while (2)
  {
    LODWORD(v107) = v55;
    sub_24BCB9454(v110, (a1 + 104), &v107);
    v56 = sub_24BCB947C(v110);
    v57 = 0.0;
    v58 = 0.0;
    while (1)
    {
      LODWORD(v107) = v56;
      if (v56 == -1)
      {
        break;
      }

      v59 = sub_24BC9ECE4(a1, *(a1 + 180), v56);
      if ((*v59 & v60) == 0)
      {
        v61 = (v114[0] + 16 * LODWORD(v107));
        v62 = fabs(*v61);
        if (v58 >= v62)
        {
          v62 = v58;
        }

        v63 = fabs(v61[1]);
        if (v62 >= v63)
        {
          v58 = v62;
        }

        else
        {
          v58 = v63;
        }

        v64 = sub_24BCB9024(a1 + 104, &v107);
        v65 = sub_24BC9ECE4(a1, *(a1 + 180), *v64);
        if ((*v65 & v66) == 0)
        {
          v67 = v113 + 12 * *(v112[0] + LODWORD(v107));
          v69 = *(v67 + 4);
          v68 = *(v67 + 8);
          if (v69 < 0)
          {
            v69 = -v69;
          }

          v70 = v69;
          if (v57 >= v69)
          {
            v70 = v57;
          }

          if (v68 < 0)
          {
            v68 = -v68;
          }

          if (v70 >= v68)
          {
            v57 = v70;
          }

          else
          {
            v57 = v68;
          }
        }
      }

      v56 = sub_24BCB947C(v110);
    }

    v71 = log(v57 + v58 + 1.0);
    v95 = exp2(ceil(v71 / 0.693147181) + 1.0);
    LODWORD(v102) = v55;
    sub_24BCB9454(v110, (a1 + 104), &v102);
    LODWORD(v99) = sub_24BCB947C(v110);
    v72 = vdupq_lane_s64(v95, 0);
    *(v114[0] + v99) = vsubq_f64(vaddq_f64(v72, *(v114[0] + v99)), v72);
    v73 = sub_24BDD5A10(a1, &v113, v112, v111, &v102);
    v75 = v74;
    if (sub_24BCD93B0(a1, &v102))
    {
      goto LABEL_64;
    }

    switch(v73)
    {
      case 1:
        v76 = (v114[0] + 16 * v99);
        *v76 = vcvtd_n_f64_s32(HIDWORD(v73) - v75, 1uLL);
        v75 += HIDWORD(v73);
        goto LABEL_63;
      case 2:
        v76 = (v114[0] + 16 * v99);
        *v76 = vcvtd_n_f64_s32(HIDWORD(v73), 1uLL);
        goto LABEL_63;
      case 3:
        v76 = (v114[0] + 16 * v99);
        *v76 = vcvtd_n_f64_s32(HIDWORD(v73) + v75, 1uLL);
        v75 -= HIDWORD(v73);
LABEL_63:
        v76[1] = vcvtd_n_f64_s32(v75, 1uLL);
        break;
    }

LABEL_64:
    v77 = (v114[0] + 16 * v99);
    v79 = *v77;
    v78 = v77[1];
    v104 = v78;
    v80 = sub_24BCB947C(v110);
    v81 = 0;
    while (1)
    {
      LODWORD(v99) = v80;
      if (v80 == -1)
      {
        break;
      }

      v82 = sub_24BC9ECE4(a1, *(a1 + 180), v80);
      if ((*v82 & v83) != 0)
      {
        ++v81;
        goto LABEL_81;
      }

      v84 = *sub_24BCB9024(a1 + 104, &v99);
      v85 = *(v112[0] + v84);
      v86 = *(v111[0] + v85);
      v87 = (v113 + 12 * v85);
      if (v86 == v84)
      {
        v88 = *v87;
        v89 = v87[2];
      }

      else
      {
        v88 = sub_24BDD598C(v87);
      }

      switch(v88)
      {
        case 3:
          v107 = v78;
          v90 = &v104;
          v78 = v79;
          goto LABEL_77;
        case 2:
          v107 = -v79;
          v90 = &v104;
          goto LABEL_77;
        case 1:
          v107 = v78;
          v104 = v79;
          v90 = &v107;
LABEL_77:
          *v90 = -v78;
          v79 = v107;
          v78 = v104;
          break;
      }

      v79 = v79 + SHIDWORD(v88);
      v107 = v79;
      v78 = v78 + v89;
      v104 = v78;
      if (sub_24BDBD700(*(v114[0] + 2 * v99), v79, 0.001) && sub_24BDBD700(*(v114[0] + 2 * v99 + 1), v78, 0.001))
      {
        v91 = (v114[0] + 16 * v99);
        *v91 = v79;
        v91[1] = v78;
      }

LABEL_81:
      v80 = sub_24BCB947C(v110);
    }

    if (v81 < 2)
    {
      v55 = (v55 + 1);
      if (v55 >= (*(a1 + 112) - *(a1 + 104)) >> 2)
      {
        goto LABEL_84;
      }

      continue;
    }

    break;
  }

  if (v111[0])
  {
    v111[1] = v111[0];
    operator delete(v111[0]);
  }

  if (v112[0])
  {
    v112[1] = v112[0];
    operator delete(v112[0]);
  }

  if (v113)
  {
    *(&v113 + 1) = v113;
    operator delete(v113);
  }

  if (v114[0])
  {
    v114[1] = v114[0];
    operator delete(v114[0]);
  }

  return 0;
}

void sub_24BDDC73C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, char ****a21, char ****a22, uint64_t a23, char ***a24, uint64_t a25, uint64_t a26, char **a27, uint64_t a28, uint64_t a29, uint64_t a30, char *a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a21)
  {
    a22 = a21;
    operator delete(a21);
  }

  a21 = &a24;
  sub_24BC8EE84(&a21);
  a24 = &a27;
  sub_24BC8EE84(&a24);
  a27 = &a31;
  sub_24BC8EE84(&a27);
  a31 = &a34;
  sub_24BDDE434(&a31);
  if (a37)
  {
    a38 = a37;
    operator delete(a37);
  }

  v40 = *(v38 - 232);
  if (v40)
  {
    *(v38 - 224) = v40;
    operator delete(v40);
  }

  v41 = *(v38 - 208);
  if (v41)
  {
    *(v38 - 200) = v41;
    operator delete(v41);
  }

  v42 = *(v38 - 184);
  if (v42)
  {
    *(v38 - 176) = v42;
    operator delete(v42);
  }

  v43 = *(v38 - 160);
  if (v43)
  {
    *(v38 - 152) = v43;
    operator delete(v43);
  }

  _Unwind_Resume(a1);
}

void sub_24BDDC8A0(void *a1, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 2);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    sub_24BDDE1DC(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 12 * a2;
  }
}

uint64_t sub_24BDDC938(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_24BDDC9B8(result, a4);
  }

  return result;
}

void sub_24BDDC990(_Unwind_Exception *exception_object)
{
  *(v1 + 8) = v2;
  v4 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BDDC9B8(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2E8BA2E8BA2E8BBLL)
  {
    sub_24BDDCA08(a1, a2);
  }

  sub_24BC8E01C();
}

void sub_24BDDCA08(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2E8BA2E8BA2E8BBLL)
  {
    operator new();
  }

  sub_24BC8DFE8();
}

uint64_t sub_24BDDCA64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = a4;
  while (a2 != a3)
  {
    *result = *a2;
    *(result + 8) = *(a2 + 8);
    *(result + 16) = *(a2 + 16);
    *(result + 24) = *(a2 + 24);
    *(result + 32) = *(a2 + 32);
    *(result + 40) = *(a2 + 40);
    *(result + 48) = *(a2 + 48);
    v5 = *(a2 + 56);
    *(result + 65) = *(a2 + 65);
    *(result + 56) = v5;
    a2 += 88;
    result += 88;
  }

  return result;
}

double sub_24BDDCAC8(int a1, double *a2, double *a3, double result)
{
  if (a1 == 3)
  {
    v5 = *a2;
    *a2 = *a3;
    goto LABEL_7;
  }

  if (a1 == 2)
  {
    *a2 = -*a2;
    v5 = *a3;
LABEL_7:
    a2 = a3;
    goto LABEL_8;
  }

  if (a1 != 1)
  {
    return result;
  }

  v4 = *a2;
  *a2 = *a3;
  *a3 = v4;
  v5 = *a2;
LABEL_8:
  result = -v5;
  *a2 = result;
  return result;
}

uint64_t *sub_24BDDCB28(uint64_t *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = a2[1] + *result - v3;
    do
    {
      *v5 = *v2;
      *(v5 + 8) = *(v2 + 8);
      *(v5 + 16) = *(v2 + 16);
      *(v5 + 24) = *(v2 + 24);
      *(v5 + 32) = *(v2 + 32);
      *(v5 + 40) = *(v2 + 40);
      *(v5 + 48) = *(v2 + 48);
      v6 = *(v2 + 56);
      *(v5 + 65) = *(v2 + 65);
      *(v5 + 56) = v6;
      v2 += 88;
      v5 += 88;
    }

    while (v2 != v3);
    v2 = *result;
  }

  a2[1] = v4;
  *result = v4;
  result[1] = v2;
  a2[1] = v2;
  v7 = result[1];
  result[1] = a2[2];
  a2[2] = v7;
  v8 = result[2];
  result[2] = a2[3];
  a2[3] = v8;
  *a2 = a2[1];
  return result;
}

uint64_t sub_24BDDCBD8(uint64_t *a1, uint64_t a2)
{
  v2 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x2E8BA2E8BA2E8BALL)
  {
    sub_24BC8E01C();
  }

  if (0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 3)) >= 0x1745D1745D1745DLL)
  {
    v6 = 0x2E8BA2E8BA2E8BALL;
  }

  else
  {
    v6 = v3;
  }

  v15 = a1;
  if (v6)
  {
    sub_24BDDCA08(a1, v6);
  }

  v7 = 88 * v2;
  __p = 0;
  v12 = v7;
  v14 = 0;
  *v7 = *a2;
  *(v7 + 8) = *(a2 + 8);
  *(v7 + 16) = *(a2 + 16);
  *(v7 + 24) = *(a2 + 24);
  *(v7 + 32) = *(a2 + 32);
  *(v7 + 40) = *(a2 + 40);
  *(v7 + 48) = *(a2 + 48);
  v8 = *(a2 + 56);
  *(v7 + 65) = *(a2 + 65);
  *(v7 + 56) = v8;
  v13 = 88 * v2 + 88;
  sub_24BDDCB28(a1, &__p);
  v9 = a1[1];
  if (v13 != v12)
  {
    v13 = v13 - 88 * ((v13 - v12 - 88) / 0x58uLL) - 88;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v9;
}

void sub_24BDDCD4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BDDCD94(int *a1, int *a2)
{
  v3 = a1;
  if (a1 != a2)
  {
    v2 = a2 - 22;
    if (a2 - 22 > a1)
    {
      do
      {
        sub_24BDDCDF0(&v3, &v2);
        v2 -= 22;
        v3 += 22;
      }

      while (v3 < v2);
    }
  }
}

__n128 sub_24BDDCDF0(int **a1, int **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = **a1;
  v5 = *(*a1 + 14);
  *&v11[9] = *(*a1 + 65);
  *v2 = **a2;
  v6 = *(v2 + 2);
  *(v2 + 1) = *(v3 + 1);
  *(v2 + 2) = *(v3 + 2);
  v7 = *(v2 + 6);
  *(v2 + 3) = *(v3 + 3);
  *(v2 + 4) = *(v3 + 4);
  v8 = *(v2 + 10);
  *(v2 + 5) = *(v3 + 5);
  *(v2 + 6) = *(v3 + 6);
  v9 = *(v3 + 14);
  *(v2 + 65) = *(v3 + 65);
  *(v2 + 14) = v9;
  *v3 = v4;
  *(v3 + 2) = v6;
  *(v3 + 6) = v7;
  *(v3 + 10) = v8;
  *(v3 + 14) = *v11;
  result = *&v11[9];
  *(v3 + 65) = *&v11[9];
  return result;
}

int *sub_24BDDCE88(int *a1, int *a2, int *a3)
{
  v4 = a2;
  v10 = a2;
  v11 = a1;
  while (1)
  {
    sub_24BDDCDF0(&v11, &v10);
    v5 = v11 + 22;
    v6 = v10 + 22;
    v10 = v6;
    v11 += 22;
    if (v6 == a3)
    {
      break;
    }

    if (v5 == v4)
    {
      v4 = v6;
    }
  }

  if (v5 != v4)
  {
    do
    {
      v10 = v4;
      while (1)
      {
        sub_24BDDCDF0(&v11, &v10);
        v7 = v11 + 22;
        v8 = v10 + 22;
        v10 = v8;
        v11 += 22;
        if (v8 == a3)
        {
          break;
        }

        if (v7 == v4)
        {
          v4 = v8;
        }
      }
    }

    while (v7 != v4);
  }

  return v5;
}

uint64_t sub_24BDDCF38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    v7 = a4[1];
    do
    {
      if (v7 >= a4[2])
      {
        v7 = sub_24BDDCFF8(a4, v5);
      }

      else
      {
        *v7 = *v5;
        *(v7 + 8) = *(v5 + 8);
        *(v7 + 16) = *(v5 + 16);
        *(v7 + 24) = *(v5 + 24);
        *(v7 + 32) = *(v5 + 32);
        *(v7 + 40) = *(v5 + 40);
        *(v7 + 48) = *(v5 + 48);
        v8 = *(v5 + 56);
        *(v7 + 65) = *(v5 + 65);
        *(v7 + 56) = v8;
        v7 += 88;
      }

      a4[1] = v7;
      v5 += 88;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t sub_24BDDCFF8(uint64_t *a1, uint64_t a2)
{
  v2 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x2E8BA2E8BA2E8BALL)
  {
    sub_24BC8E01C();
  }

  if (0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 3)) >= 0x1745D1745D1745DLL)
  {
    v6 = 0x2E8BA2E8BA2E8BALL;
  }

  else
  {
    v6 = v3;
  }

  v15 = a1;
  if (v6)
  {
    sub_24BDDCA08(a1, v6);
  }

  v7 = 88 * v2;
  __p = 0;
  v12 = v7;
  v14 = 0;
  *v7 = *a2;
  *(v7 + 8) = *(a2 + 8);
  *(v7 + 16) = *(a2 + 16);
  *(v7 + 24) = *(a2 + 24);
  *(v7 + 32) = *(a2 + 32);
  *(v7 + 40) = *(a2 + 40);
  *(v7 + 48) = *(a2 + 48);
  v8 = *(a2 + 56);
  *(v7 + 65) = *(a2 + 65);
  *(v7 + 56) = v8;
  v13 = 88 * v2 + 88;
  sub_24BDDCB28(a1, &__p);
  v9 = a1[1];
  if (v13 != v12)
  {
    v13 = v13 - 88 * ((v13 - v12 - 88) / 0x58uLL) - 88;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v9;
}

void sub_24BDDD16C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BDDD1B4(void *a1, void *a2)
{
  v2 = (a1[1] - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    sub_24BC8E01C();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v15 = a1;
  if (v7)
  {
    sub_24BCA1868(a1, v7);
  }

  v8 = (16 * v2);
  __p = 0;
  v12 = v8;
  *v8 = *a2;
  v8[1] = a2[1];
  v13 = 16 * v2 + 16;
  v14 = 0;
  sub_24BD44BD0(a1, &__p);
  v9 = a1[1];
  if (v13 != v12)
  {
    v13 += (v12 - v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v9;
}

void sub_24BDDD2A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BDDD2DC(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    operator new();
  }

  sub_24BC8DFE8();
}

uint64_t sub_24BDDD334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a4;
  v15 = a4;
  v12[0] = a1;
  v12[1] = &v14;
  v12[2] = &v15;
  v13 = 0;
  if (a2 == a3)
  {
    v13 = 1;
  }

  else
  {
    v4 = a4;
    v6 = a2;
    v7 = a2;
    do
    {
      *v4 = *v7;
      *(v4 + 8) = *(v7 + 8);
      *(v4 + 16) = *(v7 + 16);
      for (i = 24; i != 48; i += 8)
      {
        *(v4 + i) = *(v7 + i);
      }

      *(v4 + 48) = 0;
      *(v4 + 56) = 0;
      *(v4 + 64) = 0;
      sub_24BDDC938(v4 + 48, *(v7 + 48), *(v7 + 56), 0x2E8BA2E8BA2E8BA3 * ((*(v7 + 56) - *(v7 + 48)) >> 3));
      v9 = *(v7 + 72);
      *(v4 + 76) = *(v7 + 76);
      *(v4 + 72) = v9;
      v7 += 80;
      v4 = v15 + 80;
      v15 += 80;
    }

    while (v7 != a3);
    v13 = 1;
    while (v6 != a3)
    {
      v10 = *(v6 + 48);
      if (v10)
      {
        *(v6 + 56) = v10;
        operator delete(v10);
      }

      v6 += 80;
    }
  }

  return sub_24BDDD46C(v12);
}

uint64_t sub_24BDDD46C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_24BDDD4A4(a1);
  }

  return a1;
}

void sub_24BDDD4A4(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 32);
    if (v3)
    {
      *(v1 - 24) = v3;
      operator delete(v3);
    }

    v1 -= 80;
  }
}

uint64_t sub_24BDDD4EC(uint64_t a1)
{
  sub_24BDDD524(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_24BDDD524(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    *(a1 + 16) = v2 - 80;
    v5 = *(v2 - 32);
    if (v5)
    {
      *(v2 - 24) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 80;
    }
  }
}

uint64_t sub_24BDDD584(uint64_t *a1, __n128 *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x333333333333333)
  {
    sub_24BC8E01C();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 4) >= 0x199999999999999)
  {
    v6 = 0x333333333333333;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_24BDDD2DC(a1, v6);
  }

  v13 = 0;
  v14 = 80 * v2;
  sub_24BDDD6B8(a1, 80 * v2, a2);
  v15 = 80 * v2 + 80;
  v7 = a1[1];
  v8 = 80 * v2 + *a1 - v7;
  sub_24BDDD334(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_24BDDD4EC(&v13);
  return v12;
}

void sub_24BDDD6A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_24BDDD4EC(va);
  _Unwind_Resume(a1);
}

__n128 sub_24BDDD6B8(uint64_t a1, uint64_t a2, __n128 *a3)
{
  v3 = 0;
  *a2 = a3->n128_u64[0];
  *(a2 + 8) = a3->n128_u64[1];
  *(a2 + 16) = a3[1].n128_u64[0];
  do
  {
    *(a2 + 24 + v3 * 8) = a3[1].n128_u64[v3 + 1];
    ++v3;
  }

  while (v3 != 3);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  result = a3[3];
  *(a2 + 48) = result;
  *(a2 + 64) = a3[4].n128_u64[0];
  a3[3].n128_u64[0] = 0;
  a3[3].n128_u64[1] = 0;
  a3[4].n128_u64[0] = 0;
  v5 = a3[4].n128_u32[2];
  *(a2 + 76) = a3[4].n128_u8[12];
  *(a2 + 72) = v5;
  return result;
}

uint64_t sub_24BDDD724(uint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    sub_24BC8E01C();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v6 = 0x666666666666666;
  }

  else
  {
    v6 = v3;
  }

  v15 = a1;
  if (v6)
  {
    sub_24BDDD948(a1, v6);
  }

  v7 = 40 * v2;
  __p = 0;
  v12 = v7;
  v14 = 0;
  *v7 = *a2;
  for (i = 8; i != 32; i += 8)
  {
    *(v7 + i) = *(a2 + i);
  }

  *(40 * v2 + 0x20) = *(a2 + 32);
  v13 = v7 + 40;
  sub_24BDDD8B8(a1, &__p);
  v9 = a1[1];
  if (v13 != v12)
  {
    v13 = (v13 - v12 - 40) % 0x28uLL + v12;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v9;
}

void sub_24BDDD868(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_24BDDD8B8(uint64_t *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = a2[1] + *result - v3;
    do
    {
      *v5 = *v2;
      for (i = 8; i != 32; i += 8)
      {
        *(v5 + i) = *(v2 + i);
      }

      *(v5 + 32) = *(v2 + 32);
      v2 += 40;
      v5 += 40;
    }

    while (v2 != v3);
    v2 = *result;
  }

  a2[1] = v4;
  *result = v4;
  result[1] = v2;
  a2[1] = v2;
  v7 = result[1];
  result[1] = a2[2];
  a2[2] = v7;
  v8 = result[2];
  result[2] = a2[3];
  a2[3] = v8;
  *a2 = a2[1];
  return result;
}

void sub_24BDDD948(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  sub_24BC8DFE8();
}

uint64_t sub_24BDDD9A0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = a2 + v6 - a4;
  v8 = v6;
  if (v7 < a3)
  {
    v9 = v7;
    v8 = *(a1 + 8);
    do
    {
      *v8 = *v9;
      *(v8 + 8) = *(v9 + 8);
      *(v8 + 16) = *(v9 + 16);
      *(v8 + 24) = *(v9 + 24);
      *(v8 + 32) = *(v9 + 32);
      *(v8 + 40) = *(v9 + 40);
      *(v8 + 48) = *(v9 + 48);
      v10 = *(v9 + 56);
      *(v8 + 65) = *(v9 + 65);
      *(v8 + 56) = v10;
      v9 += 88;
      v8 += 88;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v8;
  return sub_24BDDDD7C(&v12, a2, v7, v6);
}

__n128 sub_24BDDDA48(unint64_t *a1, uint64_t a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v9 = 1;
      }

      else
      {
        v9 = 0x5D1745D1745D1746 * ((v4 - *a1) >> 3);
      }

      v10 = a1[4];
      v13 = a1[4];
      sub_24BDDCA08(v10, v9);
    }

    v6 = (0x2E8BA2E8BA2E8BA3 * ((v5 - *a1) >> 3) + 1 + ((0x2E8BA2E8BA2E8BA3 * ((v5 - *a1) >> 3) + 1) >> 63)) >> 1;
    v7 = -88 * v6;
    sub_24BDDDDF8(&v12, v5, v4, v5 - 88 * v6);
    v4 = v8;
    a1[1] += v7;
    a1[2] = v8;
  }

  *v4 = *a2;
  *(v4 + 8) = *(a2 + 8);
  *(v4 + 16) = *(a2 + 16);
  *(v4 + 24) = *(a2 + 24);
  *(v4 + 32) = *(a2 + 32);
  *(v4 + 40) = *(a2 + 40);
  *(v4 + 48) = *(a2 + 48);
  result = *(a2 + 56);
  *(v4 + 65) = *(a2 + 65);
  *(v4 + 56) = result;
  a1[2] += 88;
  return result;
}

void sub_24BDDDBF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BDDDC40(uint64_t *a1, void *a2, uint64_t a3)
{
  v4 = a1[1];
  result = a2[1];
  v6 = a2[2];
  if (v4 == a3)
  {
    v10 = a2[1];
    v9 = a3;
  }

  else
  {
    v7 = a3;
    do
    {
      *v6 = *v7;
      *(v6 + 8) = *(v7 + 8);
      *(v6 + 16) = *(v7 + 16);
      *(v6 + 24) = *(v7 + 24);
      *(v6 + 32) = *(v7 + 32);
      *(v6 + 40) = *(v7 + 40);
      *(v6 + 48) = *(v7 + 48);
      v8 = *(v7 + 56);
      *(v6 + 65) = *(v7 + 65);
      *(v6 + 56) = v8;
      v7 += 88;
      v6 += 88;
    }

    while (v7 != v4);
    v9 = a1[1];
    v10 = a2[1];
    v6 = a2[2];
  }

  a2[2] = v6 + v9 - a3;
  a1[1] = a3;
  v11 = *a1;
  v12 = v10 + *a1 - a3;
  if (*a1 != a3)
  {
    v13 = v12;
    do
    {
      *v13 = *v11;
      *(v13 + 8) = *(v11 + 8);
      *(v13 + 16) = *(v11 + 16);
      *(v13 + 24) = *(v11 + 24);
      *(v13 + 32) = *(v11 + 32);
      *(v13 + 40) = *(v11 + 40);
      *(v13 + 48) = *(v11 + 48);
      v14 = *(v11 + 56);
      *(v13 + 65) = *(v11 + 65);
      *(v13 + 56) = v14;
      v11 += 88;
      v13 += 88;
    }

    while (v11 != a3);
    v11 = *a1;
  }

  a2[1] = v12;
  *a1 = v12;
  a1[1] = v11;
  a2[1] = v11;
  v15 = a1[1];
  a1[1] = a2[2];
  a2[2] = v15;
  v16 = a1[2];
  a1[2] = a2[3];
  a2[3] = v16;
  *a2 = a2[1];
  return result;
}

uint64_t sub_24BDDDD7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = a3;
  if (a3 != a2)
  {
    v5 = 0;
    do
    {
      v6 = a4 + v5;
      *(v6 - 88) = *(a3 + v5 - 88);
      *(v6 - 80) = *(a3 + v5 - 80);
      *(v6 - 72) = *(a3 + v5 - 72);
      *(v6 - 64) = *(a3 + v5 - 64);
      *(v6 - 56) = *(a3 + v5 - 56);
      *(v6 - 48) = *(a3 + v5 - 48);
      *(v6 - 40) = *(a3 + v5 - 40);
      v7 = *(a3 + v5 - 32);
      *(v6 - 23) = *(a3 + v5 - 23);
      *(v6 - 32) = v7;
      v5 -= 88;
    }

    while (a3 + v5 != a2);
  }

  return result;
}

uint64_t sub_24BDDDDF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = a2;
  if (a2 != a3)
  {
    do
    {
      *a4 = *result;
      *(a4 + 8) = *(result + 8);
      *(a4 + 16) = *(result + 16);
      *(a4 + 24) = *(result + 24);
      *(a4 + 32) = *(result + 32);
      *(a4 + 40) = *(result + 40);
      *(a4 + 48) = *(result + 48);
      v5 = *(result + 56);
      *(a4 + 65) = *(result + 65);
      *(a4 + 56) = v5;
      result += 88;
      a4 += 88;
    }

    while (result != a3);
    return a3;
  }

  return result;
}

uint64_t sub_24BDDDE68(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 16);
  if (a3)
  {
    v4 = v3 + 88 * a3;
    do
    {
      *v3 = *a2;
      *(v3 + 8) = *(a2 + 8);
      *(v3 + 16) = *(a2 + 16);
      *(v3 + 24) = *(a2 + 24);
      *(v3 + 32) = *(a2 + 32);
      *(v3 + 40) = *(a2 + 40);
      *(v3 + 48) = *(a2 + 48);
      v5 = *(a2 + 56);
      *(v3 + 65) = *(a2 + 65);
      *(v3 + 56) = v5;
      v3 += 88;
      a2 += 88;
    }

    while (v3 != v4);
    v3 = v4;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_24BDDDEDC(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = sub_24BD41EB0(v3, *a2, a2[1], (a2[1] - *a2) >> 2);
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t sub_24BDDDF30(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_24BC8E01C();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    sub_24BC8F4C8(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  sub_24BD41EB0(24 * v2, *a2, a2[1], (a2[1] - *a2) >> 2);
  v8 = v16 + 24;
  v9 = *(a1 + 8) - *a1;
  v10 = &v15[-v9];
  memcpy(&v15[-v9], *a1, v9);
  v11 = *a1;
  *a1 = v10;
  *(a1 + 8) = v8;
  v12 = *(a1 + 16);
  *(a1 + 16) = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  sub_24BC91E14(&v14);
  return v8;
}

void sub_24BDDE04C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BC91E14(va);
  _Unwind_Resume(a1);
}

__n128 sub_24BDDE060(uint64_t a1, __n128 *a2)
{
  v4 = *a1;
  if (v4)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  result = *a2;
  *a1 = *a2;
  *(a1 + 16) = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

void *sub_24BDDE0B4(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_24BCA182C(result, a2);
  }

  return result;
}

void sub_24BDDE124(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24BDDE140(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_24BCDCCBC(result, a2);
  }

  return result;
}

void sub_24BDDE1C0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BDDE1DC(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 2) >= a2)
  {
    if (a2)
    {
      v11 = 12 * ((12 * a2 - 12) / 0xC) + 12;
      bzero(*(a1 + 8), v11);
      v5 += v11;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 2) + a2;
    if (v8 > 0x1555555555555555)
    {
      sub_24BC8E01C();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v6) >> 2);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0xAAAAAAAAAAAAAAALL)
    {
      v10 = 0x1555555555555555;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      sub_24BCDC764(a1, v10);
    }

    v12 = (4 * (v7 >> 2));
    v13 = 12 * ((12 * a2 - 12) / 0xC) + 12;
    bzero(v12, v13);
    memcpy(&v12[-v7], v6, v7);
    v14 = *a1;
    *a1 = &v12[-v7];
    *(a1 + 8) = &v12[v13];
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

void sub_24BDDE364(double *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (v2 == 0.0)
  {
    exp(v1);
    return;
  }

  if (fabs(v1) != INFINITY)
  {
    goto LABEL_12;
  }

  if (v1 < 0.0)
  {
    if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      v2 = 1.0;
    }

    goto LABEL_12;
  }

  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
LABEL_12:
    v4 = v2;
    exp(v1);
    __sincos_stret(v4);
    return;
  }

  if (fabs(v2) != INFINITY)
  {
    v3 = *(a1 + 1);
  }
}

void sub_24BDDE434(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_24BDD9ED4(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

double sub_24BDDE488(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 44) = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

double sub_24BDDE4C4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    MEMORY[0x24C254890](v2, 0x1000C8052888210);
    *(a1 + 32) = 0;
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    MEMORY[0x24C254890](v3, 0x1000C8052888210);
    *(a1 + 40) = 0;
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    MEMORY[0x24C254890](v4, 0x1000C8052888210);
    *(a1 + 48) = 0;
  }

  *(a1 + 56) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

float *sub_24BDDE53C(unint64_t *a1, unint64_t a2, float *a3)
{
  sub_24BDDE4C4(a1);
  a1[3] = a3;
  *a1 = a2;
  v6 = 4 * a2;
  if (a2)
  {
    v7 = 0;
    v8 = a3;
    do
    {
      v9 = 0;
      do
      {
        v8[v9] = v8[v9] * v8[v9];
        ++v9;
      }

      while (a2 != v9);
      ++v7;
      v8 = (v8 + v6);
    }

    while (v7 != a2);
  }

  if (a2 >> 62)
  {
    v10 = -1;
  }

  else
  {
    v10 = 4 * a2;
  }

  result = operator new[](v10, MEMORY[0x277D826F0]);
  if (result)
  {
    v12 = result;
    v13 = operator new[](v10, MEMORY[0x277D826F0]);
    a1[6] = v13;
    if (v13)
    {
      if (a2)
      {
        v14 = 0;
        v15 = a2;
        v16 = a3;
        do
        {
          v17 = 0.0;
          v18 = v16;
          v19 = a2;
          do
          {
            v17 = *v18 + v17;
            v18 = (v18 + v6);
            --v19;
          }

          while (v19);
          v12[v14++] = v17 / v15;
          ++v16;
        }

        while (v14 != a2);
        memcpy(v13, v12, 4 * a2);
        v20 = 0;
        v21 = a3;
        do
        {
          v22 = 0;
          do
          {
            v21[v22] = v21[v22] - v12[v22];
            ++v22;
          }

          while (a2 != v22);
          ++v20;
          v21 = (v21 + v6);
        }

        while (v20 != a2);
        v23 = 0;
        v24 = a3;
        do
        {
          v25 = 0;
          v26 = 0.0;
          do
          {
            v26 = v24[v25++] + v26;
          }

          while (a2 != v25);
          v12[v23++] = v26 / v15;
          v24 = (v24 + v6);
        }

        while (v23 != a2);
        v27 = 0;
        v28 = a3;
        do
        {
          v29 = 0;
          v30 = v12[v27];
          do
          {
            v28[v29] = v28[v29] - v30;
            ++v29;
          }

          while (a2 != v29);
          ++v27;
          v28 = (v28 + v6);
        }

        while (v27 != a2);
        v31 = 0;
        do
        {
          v32 = 0;
          do
          {
            a3[v32] = a3[v32] * -0.5;
            ++v32;
          }

          while (a2 != v32);
          ++v31;
          a3 = (a3 + v6);
        }

        while (v31 != a2);
      }

      else
      {
        memcpy(v13, v12, v6);
      }
    }

    JUMPOUT(0x24C254890);
  }

  return result;
}

void sub_24BDDE780(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = *a1;
  if (*a1 >> 61)
  {
    v7 = -1;
  }

  else
  {
    v7 = 8 * *a1;
  }

  v8 = MEMORY[0x277D826F0];
  v9 = operator new[](v7, MEMORY[0x277D826F0]);
  if ((v6 * v6) >> 61)
  {
    v10 = -1;
  }

  else
  {
    v10 = 8 * v6 * v6;
  }

  v11 = operator new[](v10, v8);
  v12 = v11;
  if (!v9)
  {
    goto LABEL_38;
  }

  if (v11)
  {
    if (a2 >> 62)
    {
      v13 = -1;
    }

    else
    {
      v13 = 4 * a2;
    }

    v14 = MEMORY[0x277D826F0];
    v15 = operator new[](v13, MEMORY[0x277D826F0]);
    *(a1 + 32) = v15;
    if ((v6 * a2) >> 62)
    {
      v16 = -1;
    }

    else
    {
      v16 = 4 * v6 * a2;
    }

    v17 = operator new[](v16, v14);
    *(a1 + 40) = v17;
    if (!v15 || !v17)
    {
LABEL_39:
      MEMORY[0x24C254890](v12, 0x1000C8000313F17);
LABEL_40:
      if (!v9)
      {
        return;
      }

      goto LABEL_41;
    }

    sub_24BCA1A48(__p, v6 * v6);
    v18 = *a1;
    v19 = __p[0];
    if (v18 * v18)
    {
      v20 = 0;
      v21 = *(a1 + 24);
      do
      {
        v19[v20] = *(v21 + 4 * v20);
        ++v20;
      }

      while (v18 * v18 > v20);
    }

    if (sub_24BDDEA04(v18, v19, v9, v12, a2, 0.000000999999997))
    {
      if (a2)
      {
        v22 = 0;
        v23 = *(a1 + 32);
        do
        {
          v24 = v9[v22];
          *(v23 + 4 * v22++) = v24;
        }

        while (a2 > v22);
      }

      v25 = *a1 * a2;
      if (v25)
      {
        v26 = 0;
        v27 = *(a1 + 40);
        do
        {
          v28 = *&v12[v26];
          *(v27 + 4 * v26++) = v28;
        }

        while (v25 > v26);
      }

      *(a1 + 56) = 0;
      *a3 = 0;
      v29 = 0;
      if (a2)
      {
        v30 = *(a1 + 32);
        v31 = 0.0;
        do
        {
          v32 = *(v30 + 4 * v29);
          if (v32 < 0.00000001 || v29 && v32 < (*(v30 + 4 * v29 - 4) * 0.00000001))
          {
            break;
          }

          v31 = v32 + v31;
          *(a1 + 56) = v31;
          *a3 = ++v29;
        }

        while (a2 != v29);
        if (a2 == 2)
        {
          v29 = 2;
          *a3 = 2;
        }
      }

      *(a1 + 8) = v29;
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

LABEL_38:
    if (!v12)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

LABEL_41:
  MEMORY[0x24C254890](v9, 0x1000C8000313F17);
}

void sub_24BDDE9C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x24C254890](v13, v11);
  MEMORY[0x24C254890](v12, v11);
  _Unwind_Resume(a1);
}

uint64_t sub_24BDDEA04(unint64_t a1, const void *a2, uint64_t a3, void *a4, uint64_t a5, double a6)
{
  v6 = 0;
  if (a2 && a3 && a4 && a5 - 1 < a1)
  {
    v13 = (a1 + 3) * a1;
    if (v13 >> 61)
    {
      v14 = -1;
    }

    else
    {
      v14 = 8 * v13;
    }

    v15 = operator new[](v14, MEMORY[0x277D826F0]);
    if (v15)
    {
      v16 = v15;
      v17 = 8 * a1;
      if (a1 >> 61)
      {
        v18 = -1;
      }

      else
      {
        v18 = 8 * a1;
      }

      v19 = operator new[](v18, MEMORY[0x277D826F0]);
      v6 = v19 != 0;
      if (v19)
      {
        v20 = v19;
        v165 = a4;
        v166 = a5;
        v167 = v19 != 0;
        v21 = v16;
        v22 = &v16[8 * a1 * a1];
        v23 = &v22[8 * a1];
        v24 = &v23[8 * a1];
        bzero(v22, 8 * a1);
        memcpy(v16, a2, 8 * a1 * a1);
        v25 = 0;
        do
        {
          v20[v25++] = v21;
          v21 += v17;
        }

        while (a1 != v25);
        v26 = a1 - 1;
        memcpy(&v22[8 * a1], v20[a1 - 1], 8 * a1);
        __p = 0;
        sub_24BCA2138(v170, a1 * a1);
        if (a1 != 1)
        {
          v27 = a1 - 1;
          v164 = v16;
          do
          {
            v28 = 0;
            v29 = 0.0;
            do
            {
              v29 = v29 + fabs(*&v23[8 * v28++]);
            }

            while (v27 != v28);
            if (v29 >= a6)
            {
              v40 = 0;
              do
              {
                *&v23[8 * v40] = 1.0 / v29 * *&v23[8 * v40];
                ++v40;
              }

              while (v27 != v40);
              v41 = 0;
              v42 = 0.0;
              do
              {
                v42 = v42 + *&v23[8 * v41] * *&v23[8 * v41];
                ++v41;
              }

              while (v27 != v41);
              v38 = v27 - 1;
              v43 = sqrt(v42);
              v44 = -v43;
              if (v42 < 0.0)
              {
                v44 = -0.0;
                v43 = 0.0;
              }

              if (*&v23[8 * v27 - 8] >= 0.0)
              {
                v45 = v43;
              }

              else
              {
                v45 = v44;
              }

              *&v22[8 * v27] = -(v29 * v45);
              v46 = *&v23[8 * v38];
              *&v23[8 * v38] = v45 + v46;
              bzero(&v23[8 * a1], 8 * v27);
              sub_24BCA2138(&__p, a1);
              v47 = 0;
              v39 = v42 + v46 * v45;
              v48 = __p;
              do
              {
                v49 = *&v23[8 * v47];
                v50 = v20[v47];
                *(v50 + 8 * v27) = v49;
                v51 = *(v50 + 8 * v47) * v49 - v48[v47];
                v52 = *&v24[8 * v47];
                v48[v47] = v52 + v51 - v52 - v51;
                *&v24[8 * v47] = v52 + v51;
                if (v47)
                {
                  for (i = 0; i != v47; ++i)
                  {
                    v54 = *(v50 + 8 * i) * *&v23[8 * i] - v48[v47];
                    v55 = *&v24[8 * v47];
                    v48[v47] = v55 + v54 - v55 - v54;
                    *&v24[8 * v47] = v55 + v54;
                    v56 = *(v50 + 8 * i) * *&v23[8 * v47] - v48[i];
                    v57 = *&v24[8 * i];
                    v48[i] = v57 + v56 - v57 - v56;
                    *&v24[8 * i] = v57 + v56;
                  }
                }

                ++v47;
              }

              while (v47 != v27);
              v58 = 0;
              do
              {
                *&v24[8 * v58] = 1.0 / v39 * *&v24[8 * v58];
                ++v58;
              }

              while (v27 != v58);
              v59 = 0;
              v60 = 0.0;
              do
              {
                v60 = v60 + *&v23[8 * v59] * *&v24[8 * v59];
                ++v59;
              }

              while (v27 != v59);
              v61 = 0;
              v62 = -v60 / (v39 + v39);
              do
              {
                v63 = v62 * *&v23[8 * v61] - v48[v61];
                v64 = *&v24[8 * v61];
                v48[v61] = v64 + v63 - v64 - v63;
                *&v24[8 * v61++] = v64 + v63;
              }

              while (v27 != v61);
              v65 = 0;
              v66 = v170[0];
              do
              {
                v67 = v66;
                v68 = v65;
                do
                {
                  v69 = v20[v68];
                  v70 = -(*&v24[8 * v65] * *&v23[8 * v68] + *&v24[8 * v68] * *&v23[8 * v65]) - *v67;
                  v71 = *(v69 + 8 * v65);
                  *v67 = v71 + v70 - v71 - v70;
                  if (fabs(v71 + v70) >= a6)
                  {
                    v72 = v71 + v70;
                  }

                  else
                  {
                    v72 = 0.0;
                  }

                  *(v69 + 8 * v65) = v72;
                  ++v68;
                  v67 = (v67 + v17);
                }

                while (v68 < v27);
                ++v65;
                v66 = (v66 + v17 + 8);
              }

              while (v65 != v27);
              v73 = v20[v38];
              v74 = v20[v27];
              v75 = &v22[8 * a1];
              v76 = v27;
              do
              {
                v77 = *v73++;
                *v75 = v77;
                v75 += 8;
                *v74++ = 0;
                --v76;
              }

              while (v76);
              if (v48)
              {
                v169 = v48;
                operator delete(v48);
              }
            }

            else
            {
              *&v23[8 * v27] = 0;
              v30 = &v20[v27];
              v31 = *(v30 - 1);
              v32 = *v30;
              v33 = &v22[8 * a1];
              v34 = v20;
              v35 = v27;
              do
              {
                v36 = *v31++;
                *v33 = v36;
                v33 += 8;
                *v32++ = 0;
                v37 = *v34++;
                *(v37 + 8 * v27) = 0;
                --v35;
              }

              while (v35);
              v38 = v27 - 1;
              v39 = 0.0;
            }

            *&v23[8 * v27] = v39;
            v27 = v38;
          }

          while (v38);
          v78 = 0;
          v79 = v170[0];
          v80 = 1;
          v26 = a1 - 1;
          v16 = v164;
          do
          {
            v81 = v20[v78];
            *(a3 + 8 * v78) = *(v81 + 8 * v78);
            *(v81 + 8 * v78++) = 0x3FF0000000000000;
            if (fabs(*&v23[8 * v78]) > a6)
            {
              v82 = 0;
              v83 = v79;
              do
              {
                v84 = 0;
                v85 = 0.0;
                v86 = 0.0;
                do
                {
                  v87 = v85;
                  v88 = *(v20[v84] + 8 * v82) * *(v20[v84] + 8 * v78) - v86;
                  v85 = v85 + v88;
                  v86 = v85 - v87 - v88;
                  ++v84;
                }

                while (v80 != v84);
                v89 = 0;
                v90 = -v85;
                v91 = v83;
                do
                {
                  v92 = v20[v89];
                  v93 = *(v92 + 8 * v78) * v90 / *&v23[8 * v78] - *v91;
                  v94 = *(v92 + 8 * v82);
                  *v91 = v94 + v93 - v94 - v93;
                  *(v92 + 8 * v82) = v94 + v93;
                  ++v89;
                  v91 = (v91 + v17);
                }

                while (v80 != v89);
                ++v82;
                ++v83;
              }

              while (v82 != v80);
            }

            v95 = 0;
            do
            {
              *(v20[v95++] + 8 * v78) = 0;
            }

            while (v80 != v95);
            ++v80;
          }

          while (v78 != a1 - 1);
        }

        v96 = v20[v26];
        *(a3 + 8 * v26) = v96[v26];
        v96[v26] = 0x3FF0000000000000;
        bzero(v96, 8 * v26);
        memmove(v22, v22 + 8, 8 * v26);
        *&v22[8 * v26] = 0;
        sub_24BCA2138(&__p, a1);
        v97 = 0;
        v98.n128_u64[0] = 0;
        v99 = 1;
        v100.n128_u64[0] = -4.0;
        v101.n128_u64[0] = 0.5;
        v102 = 0.0;
        v103 = 0.0;
        v6 = v167;
        v104 = v165;
        do
        {
          if (a1 <= v99)
          {
            v105 = v99;
          }

          else
          {
            v105 = a1;
          }

          v106 = *(a3 + 8 * v97);
          v107 = fabs(v106) + fabs(*&v22[8 * v97]);
          if (v102 < v107)
          {
            v102 = v107;
          }

          v108 = v102 * a6;
          v109 = v97 + 1;
          v110 = __p;
          while (1)
          {
            v111 = v97;
            while (1)
            {
              v112 = fabs(*&v22[8 * v111]);
              if (v112 <= v108)
              {
                break;
              }

              if (++v111 >= a1)
              {
                v111 = v105;
                break;
              }
            }

            if (v111 == v97)
            {
              break;
            }

            v113 = *(a3 + 8 * v109);
            v114 = v106 + v113;
            v115 = (v106 * v113 - *&v22[8 * v97] * *&v22[8 * v97]) * -4.0 + v114 * v114;
            v116 = sqrt(v115);
            if (v115 >= 0.0)
            {
              v117 = v116;
            }

            else
            {
              v117 = 0.0;
            }

            v118 = (v114 + v117) * 0.5;
            v119 = (v114 - v117) * 0.5;
            if (vabdd_f64(v106, v118) <= vabdd_f64(v106, v119))
            {
              v119 = v118;
            }

            v120 = v97;
            do
            {
              v121 = -v119 - v110[v120];
              v122 = *(a3 + 8 * v120);
              v110[v120] = v122 + v121 - v122 - v121;
              *(a3 + 8 * v120++) = v122 + v121;
            }

            while (v120 < a1);
            v123 = 0;
            v124 = *(a3 + 8 * v111);
            v125 = v111 - 1;
            v126 = *&v22[8 * v111 - 8];
            v127 = sqrt(v126 * v126 + v124 * v124);
            v128 = v124 / v127;
            v129 = v126 / v127;
            v130 = *(a3 + 8 * (v111 - 1));
            v131 = v124 * (v128 * v128) + v129 * v129 * v130 + v128 * (v129 + v129) * v126;
            v132 = v130 * (v128 * v128);
            v133 = (v130 - v124) * (v126 / v127 * (v124 / v127));
            *(a3 + 8 * v111) = v131;
            do
            {
              v134 = v20[v123];
              v135 = *(v134 + 8 * v111);
              v136 = *(v134 + 8 * v125);
              *(v134 + 8 * v111) = v128 * v135 + v129 * v136;
              *(v134 + 8 * v125) = v135 * -(v126 / v127) + v128 * v136;
              ++v123;
            }

            while (a1 != v123);
            v106 = v132 + v129 * v129 * v124 + -(v128 * (v129 + v129)) * v126;
            v137 = v133 + (v128 * v128 - v129 * v129) * v126;
            if (v111 > v109)
            {
              v138 = v129 * *&v22[8 * v111 - 16];
              do
              {
                v139 = v125 - 1;
                v140 = v128 * *&v22[8 * v125 - 8];
                *&v22[8 * v125 - 8] = v140;
                v141 = sqrt(v138 * v138 + v137 * v137);
                v128 = v137 / v141;
                v142 = v138 / v141;
                v143 = &v22[8 * v125];
                *v143 = v138 * v142 + v128 * v137;
                v144 = v142 * v142;
                v145 = *(a3 + 8 * (v125 - 1));
                v146 = v128 * (v142 + v142);
                *(a3 + 8 * v125) = v106 * (v128 * v128) + v142 * v142 * v145 + v146 * v140;
                if (v125 != 1)
                {
                  v138 = v142 * *(v143 - 2);
                }

                v137 = v142 * v128 * (v145 - v106) + -(v144 - v128 * v128) * v140;
                v106 = v128 * v128 * v145 + v144 * v106 - v146 * v140;
                v147 = v20;
                v148 = a1;
                do
                {
                  v149 = *v147++;
                  v150 = *(v149 + 8 * v125);
                  v151 = *(v149 + 8 * v139);
                  *(v149 + 8 * v125) = v128 * v150 + v142 * v151;
                  *(v149 + 8 * v139) = v150 * -v142 + v128 * v151;
                  --v148;
                }

                while (v148);
                --v125;
              }

              while (v139 > v97);
            }

            v103 = v103 + v119;
            *(a3 + 8 * v97) = v106;
            *&v22[8 * v97] = v137;
            if (v112 <= v108)
            {
              *&v22[8 * v111] = 0;
            }
          }

          *(a3 + 8 * v97) = v103 + v106;
          *&v22[8 * v97] = 0;
          ++v99;
          ++v97;
        }

        while (v109 != a1);
        if (v26)
        {
          v152 = 0;
          do
          {
            v153 = v152++;
            if (v152 < a1)
            {
              v154 = v152;
              do
              {
                v98.n128_u64[0] = *(a3 + 8 * v154);
                v100.n128_u64[0] = *(a3 + 8 * v153);
                if (v98.n128_f64[0] > v100.n128_f64[0])
                {
                  *(a3 + 8 * v153) = v98.n128_u64[0];
                  *(a3 + 8 * v154) = v100.n128_u64[0];
                  v155 = v20;
                  v156 = a1;
                  do
                  {
                    v157 = *v155++;
                    v98.n128_u64[0] = *(v157 + 8 * v153);
                    v100.n128_u64[0] = *(v157 + 8 * v154);
                    *(v157 + 8 * v153) = v100.n128_u64[0];
                    *(v157 + 8 * v154) = v98.n128_u64[0];
                    --v156;
                  }

                  while (v156);
                }

                ++v154;
              }

              while (v154 != a1);
            }
          }

          while (v152 != v26);
        }

        if (v166)
        {
          for (j = 0; j != v166; ++j)
          {
            v159 = v104;
            v160 = v20;
            v161 = a1;
            do
            {
              v162 = *v160++;
              v98.n128_u64[0] = *(v162 + 8 * j);
              *v159++ = v98.n128_u64[0];
              --v161;
            }

            while (v161);
            v104 = (v104 + v17);
          }
        }

        if (__p)
        {
          v169 = __p;
          operator delete(__p);
        }

        if (v170[0])
        {
          v170[1] = v170[0];
          operator delete(v170[0]);
        }

        MEMORY[0x24C254890](v20, 0x80C80B8603338, v98, v100, v101);
      }

      MEMORY[0x24C254890](v16, 0x1000C8000313F17);
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_24BDDF388(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x24C254890](v19, 0x80C80B8603338);
  MEMORY[0x24C254890](v20, 0x1000C8000313F17);
  _Unwind_Resume(a1);
}

void *sub_24BDDF3E8(void *result, unint64_t *a2, float a3)
{
  v5 = *(result + 14);
  if (fabsf(v5) < 0.00000001)
  {
    *a2 = 0;
    return result;
  }

  if (a3 >= 1.0)
  {
    *a2 = *(result + 1);
  }

  v6 = *(result + 4);
  v7 = *v6;
  v8 = *v6 + v6[1];
  if (v8 >= (v5 * 0.99))
  {
    v10 = 2;
  }

  else
  {
    v9 = *(result + 1);
    v10 = 2;
    if (v9 <= 2)
    {
      v9 = 2;
    }

    v11 = *v6 + v6[1];
    while (v9 != v10)
    {
      v11 = v11 + v6[v10++];
      if (v11 >= (v5 * 0.99))
      {
        goto LABEL_14;
      }
    }

    v10 = v9;
  }

LABEL_14:
  *(result + 2) = v10;
  v12 = v10 - 1;
  if ((v10 - 1) >> 62)
  {
    v13 = -1;
  }

  else
  {
    v13 = 4 * (v10 - 1);
  }

  result = operator new[](v13, MEMORY[0x277D826F0]);
  if (result)
  {
    if (v10 == 1)
    {
      v17 = 2;
    }

    else
    {
      v14 = 0;
      do
      {
        v15 = sqrtf(v7);
        if (v7 < 0.0)
        {
          v15 = 0.0;
        }

        v7 = v6[v14 + 1];
        v16 = sqrtf(v7);
        if (v7 < 0.0)
        {
          v16 = 0.0;
        }

        *(result + v14++) = v15 - v16;
      }

      while (v12 != v14);
      v17 = 2;
      if (v8 < (v5 * a3) && v10 >= 3)
      {
        v17 = 2;
        do
        {
          v8 = v8 + v6[v17++];
        }

        while (v8 < (v5 * a3) && v17 < v10);
      }
    }

    if (a3 >= 0.91)
    {
      if (v17 <= 2)
      {
        v17 = 2;
      }

      goto LABEL_51;
    }

    v19 = v17 - 1;
    if (v19 <= v12)
    {
      goto LABEL_50;
    }

    v20 = 0;
    v21 = 0;
    v22 = 0.0;
    v23 = v19;
    while (1)
    {
      if (v20)
      {
        v24 = *(result + v23);
        if (v22 >= v24)
        {
          goto LABEL_44;
        }
      }

      else
      {
        v24 = *(result + v19);
      }

      v21 = v23;
      v22 = v24;
LABEL_44:
      ++v23;
      --v20;
      if (v23 <= v12)
      {
        if (v21)
        {
          v17 = v21 + 1;
          goto LABEL_51;
        }

LABEL_50:
        v17 = 2;
LABEL_51:
        *a2 = v17;

        JUMPOUT(0x24C254890);
      }
    }
  }

  return result;
}

BOOL sub_24BDDF618(unint64_t *a1, unint64_t a2, float *a3)
{
  v3 = *a1;
  if (a2 - 1 < *a1)
  {
    v4 = 0;
    v6 = a1[4];
    v5 = a1[5];
    do
    {
      v7 = *(v6 + 4 * v4);
      if (v7 < 0.0)
      {
        *(v6 + 4 * v4) = 0;
        v7 = 0.0;
      }

      v8 = 0;
      v9 = sqrtf(v7);
      if (v7 >= 0.0)
      {
        v10 = v9;
      }

      else
      {
        v10 = 0.0;
      }

      v11 = a3;
      do
      {
        *v11 = v10 * *(v5 + 4 * v8++);
        v11 += a2;
      }

      while (v3 != v8);
      ++v4;
      ++a3;
      v5 += 4 * v3;
    }

    while (v4 != a2);
  }

  return v3 >= a2;
}

void sub_24BDDF6A0(void *a1, uint64_t *a2, unint64_t a3, BOOL *a4)
{
  if (a3 >= 2 && a1[33] - a1[32] >= 0x11uLL)
  {
    v8 = a1[5];
    v10 = v8[16];
    v9 = v8[17];
    v11 = ((v8[20] - v8[19]) >> 2);
    sub_24BCA123C(v31, v11);
    sub_24BDD4E90(v30, v11);
    sub_24BC95764(v29, -858993459 * ((v9 - v10) >> 2));
    v28 = 0.0;
    if (sub_24BDDF93C(a1, v29, &v28))
    {
      v25 = a3;
      v12 = a1[32];
      if (a1[33] != v12)
      {
        v13 = 0;
        v14 = 0;
        do
        {
          v15 = (v12 + 16 * v13);
          v17 = *v15;
          v16 = v15[1];
          if (v16)
          {
            atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_24BDDFB9C(v17, v30);
          v18 = *(v17 + 40);
          sub_24BC836D4(__p, "f:index_in_father");
          v32 = -1;
          v19 = sub_24BDBAF64((v18 + 56), &v32, __p);
          if (v27 < 0)
          {
            operator delete(__p[0]);
          }

          v20 = *(v17 + 40);
          if (v20[20] != v20[19])
          {
            v21 = 0;
            do
            {
              v22 = (v20[7] + 16 * v19);
              v24 = *v22;
              v23 = v22[1];
              if (v23)
              {
                atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
                sub_24BC9EC78(v23);
                v20 = *(v17 + 40);
              }

              *(*a2 + 4 * *(*(v24 + 40) + 4 * v21++)) = v14;
            }

            while (v21 < (v20[20] - v20[19]) >> 2);
          }

          if (v16)
          {
            sub_24BC9EC78(v16);
          }

          v12 = a1[32];
          v13 = ++v14;
        }

        while (v14 < ((a1[33] - v12) >> 4));
      }

      sub_24BDDFF24(a1, a2, v30, v29, v28);
      sub_24BDE004C(a1, a2, v31, v25, a4);
    }

    if (v29[0])
    {
      v29[1] = v29[0];
      operator delete(v29[0]);
    }

    if (v30[0])
    {
      operator delete(v30[0]);
    }

    if (v31[0])
    {
      v31[1] = v31[0];
      operator delete(v31[0]);
    }
  }
}

void sub_24BDDF8C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, void *a24, uint64_t a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a24)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_24BDDF93C(uint64_t a1, uint64_t *a2, float *a3)
{
  v3 = a3;
  *a3 = 0.0;
  v6 = -858993459 * ((*(*(a1 + 40) + 136) - *(*(a1 + 40) + 128)) >> 2);
  v28.i8[0] = 0;
  sub_24BC9FEFC(&__p, v6);
  if (!v6)
  {
    goto LABEL_11;
  }

  v7 = 0;
  v25 = v3;
  v26 = 0;
  v8 = __p;
  do
  {
    if ((v8[v7 >> 6] & (1 << v7)) == 0)
    {
      v29 = v7;
      v9 = *sub_24BCB9024(*(a1 + 40) + 104, &v29);
      v10 = *a2;
      *(*a2 + 4 * v7) = 0;
      *(v10 + 4 * v9) = 0;
      v11 = *(a1 + 40);
      v12 = sub_24BC9ECE4(v11, *(v11 + 180), v29);
      if ((*v12 & v13) == 0)
      {
        v14 = sub_24BCB9024(v11 + 104, &v29);
        v15 = sub_24BC9ECE4(v11, *(v11 + 180), *v14);
        if ((*v15 & v16) == 0)
        {
          v17 = *(sub_24BCB9024(*(a1 + 40) + 104, &v29) + 16);
          v18 = *(a1 + 40);
          v19 = sub_24BCB9024(v18 + 104, &v29);
          LODWORD(v18) = *(sub_24BCB9024(v18 + 104, v19) + 16);
          sub_24BD3FD60(*(a1 + 40), v17, &v28);
          sub_24BD3FD60(*(a1 + 40), v18, &v27);
          v20 = vmulq_f32(v28, v27);
          v20.i32[3] = 0;
          v21 = *a2;
          *(*a2 + 4 * v7) = vaddv_f32(*&vpaddq_f32(v20, v20));
          v20.f32[0] = 1.0 - *(v21 + 4 * v7);
          *(v21 + 4 * v7) = v20.i32[0];
          v3 = v25;
          *v25 = v20.f32[0] + *v25;
          ++v26;
          *(v21 + 4 * v9) = *(v21 + 4 * v7);
        }
      }

      v8 = __p;
      *(__p + (v7 >> 6)) |= 1 << v7;
      *(v8 + ((v9 >> 3) & 0x1FFFFFF8)) |= 1 << v9;
    }

    ++v7;
  }

  while (v6 != v7);
  if (v26)
  {
    v22 = *v3 / v26;
    *v3 = v22;
    v23 = fabsf(v22) > 0.00000001;
  }

  else
  {
LABEL_11:
    v23 = 0;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v23;
}

void sub_24BDDFB74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BDDFB9C(uint64_t a1, void *a2)
{
  sub_24BC9FEFC(v44, ((*(*(a1 + 40) + 112) - *(*(a1 + 40) + 104)) >> 2));
  v41 = 0;
  v42 = 0;
  v43 = 0;
  sub_24BDE00E0(a1, &v41, v44);
  v4 = *(a1 + 40);
  v6 = *(v4 + 152);
  v5 = *(v4 + 160);
  sub_24BC836D4(&__p, "f:index_in_father");
  v36[0] = -1;
  v7 = sub_24BDBAF64((v4 + 56), v36, &__p);
  v8 = v5 - v6;
  if (SHIBYTE(v40) < 0)
  {
    operator delete(__p);
  }

  v9 = (v8 >> 2);
  if (v41 == v42 && v9)
  {
    v10 = 0;
    do
    {
      v11 = (*(*(a1 + 40) + 56) + 16 * v7);
      v13 = *v11;
      v12 = v11[1];
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v12);
      }

      v14 = *(*(v13 + 40) + v10);
      *(*a2 + ((v14 >> 3) & 0x1FFFFFF8)) &= ~(1 << v14);
      v10 += 4;
    }

    while (4 * v9 != v10);
  }

  __p = 0;
  v39 = 0;
  v40 = 0;
  sub_24BDE032C(a1, &v41, &__p, v44);
  v15 = __p;
  v16 = (v39 - __p) >> 2;
  if (v16 == 1)
  {
LABEL_32:
    if (!v15)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  if (v16 == 2)
  {
    v17 = 0;
    if (!v9)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v18 = (v16 * 0.3) + 0.5;
    if (v16 - 1 >= v18)
    {
      v17 = v18;
    }

    else
    {
      v17 = v16 - 1;
    }

    if (!v9)
    {
      goto LABEL_22;
    }
  }

  v19 = 0;
  v20 = 4 * v9;
  do
  {
    v21 = (*(*(a1 + 40) + 56) + 16 * v7);
    v23 = *v21;
    v22 = v21[1];
    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_24BC9EC78(v22);
    }

    v24 = *(*(v23 + 40) + v19);
    *(*a2 + ((v24 >> 3) & 0x1FFFFFF8)) |= 1 << v24;
    v19 += 4;
  }

  while (v20 != v19);
  v15 = __p;
LABEL_22:
  v25 = *&v15[4 * v17];
  v26 = v41;
  if (v25 < (v42 - v41) >> 2)
  {
    do
    {
      v37 = v26[v25];
      sub_24BCB9454(v36, (*(a1 + 40) + 104), &v37);
      for (i = sub_24BCB947C(v36); ; i = sub_24BCB947C(v36))
      {
        v35 = i;
        if (i == -1)
        {
          break;
        }

        v28 = sub_24BC9ECE4(*(a1 + 40), *(*(a1 + 40) + 180), i);
        if ((*v28 & v29) == 0)
        {
          v30 = *(sub_24BCB9024(*(a1 + 40) + 104, &v35) + 16);
          v31 = (*(*(a1 + 40) + 56) + 16 * v7);
          v33 = *v31;
          v32 = v31[1];
          if (v32)
          {
            atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_24BC9EC78(v32);
          }

          v34 = *(*(v33 + 40) + 4 * v30);
          *(*a2 + ((v34 >> 3) & 0x1FFFFFF8)) &= ~(1 << v34);
        }
      }

      ++v25;
      v26 = v41;
    }

    while (v25 < (v42 - v41) >> 2);
    v15 = __p;
    goto LABEL_32;
  }

LABEL_33:
  v39 = v15;
  operator delete(v15);
LABEL_34:
  if (v41)
  {
    v42 = v41;
    operator delete(v41);
  }

  if (v44[0])
  {
    operator delete(v44[0]);
  }
}

void sub_24BDDFEB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, uint64_t a22, void *a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a20)
  {
    operator delete(a20);
  }

  if (a23)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BDDFF24(uint64_t a1, void *a2, void *a3, uint64_t *a4, float a5)
{
  sub_24BD6FFEC(v17);
  sub_24BCA123C(v16, ((*(*(a1 + 40) + 160) - *(*(a1 + 40) + 152)) >> 2));
  v10 = 1;
  do
  {
    v11 = v10;
    __p = 0;
    v14 = 0;
    v15 = 0;
    sub_24BD07D84(&__p, *a4, a4[1], (a4[1] - *a4) >> 2);
    sub_24BDE0440(a1, v17, v16, a2, a3, &__p, a5);
    if (__p)
    {
      v14 = __p;
      operator delete(__p);
    }

    v10 = 0;
  }

  while ((v11 & 1) != 0);
  if (v16[0])
  {
    v16[1] = v16[0];
    operator delete(v16[0]);
  }

  return sub_24BD700D4(v17);
}

void sub_24BDE004C(uint64_t a1, uint64_t *a2, _DWORD **a3, unint64_t a4, BOOL *a5)
{
  v12 = a4;
  *a5 = 1;
  v5 = ((*(*(a1 + 40) + 160) - *(*(a1 + 40) + 152)) >> 2);
  if (v5 < 2)
  {
    if (((*(*(a1 + 40) + 160) - *(*(a1 + 40) + 152)) >> 2))
    {
LABEL_7:
      v9 = *a2;
      v10 = *a3;
      do
      {
        v11 = *v9++;
        *v10++ = v11;
        --v5;
      }

      while (v5);
    }
  }

  else
  {
    v6 = (*a2 + 4);
    v7 = v5 - 1;
    while (1)
    {
      v8 = *v6++;
      if (**a2 != v8)
      {
        break;
      }

      if (!--v7)
      {
        goto LABEL_7;
      }
    }
  }

  sub_24BDFFDB8(a1, &v12, a2, a5);
}

void sub_24BDE00E0(uint64_t a1, const void **a2, void *a3)
{
  v30 = -1;
  v6 = *(a1 + 40);
  sub_24BC836D4(__p, "v:index_in_father");
  v32 = -1;
  v7 = sub_24BDE2788((v6 + 8), &v32, __p);
  if (v29 < 0)
  {
    operator delete(__p[0]);
  }

  v8 = *(a1 + 40);
  v9 = (v8[1] + 16 * v7);
  v11 = *v9;
  v10 = v9[1];
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v10);
    v8 = *(a1 + 40);
  }

  v12 = v8[14] - v8[13];
  if ((v12 & 0x3FFFFFFFCLL) != 0)
  {
    v13 = 0;
    v14 = (v12 >> 2);
    while (1)
    {
      v31 = v13;
      sub_24BCB9454(__p, (*(a1 + 40) + 104), &v31);
      v32 = -1;
      v15 = sub_24BCB947C(__p);
      if (v15 != -1)
      {
        break;
      }

LABEL_11:
      if (v32 != -1)
      {
        goto LABEL_14;
      }

LABEL_18:
      if (++v13 == v14)
      {
        return;
      }
    }

    v16 = v15;
    while (1)
    {
      v17 = sub_24BC9ECE4(*(a1 + 40), *(*(a1 + 40) + 180), v16);
      if ((v18 & *v17) != 0)
      {
        break;
      }

      v16 = sub_24BCB947C(__p);
      if (v16 == -1)
      {
        goto LABEL_11;
      }
    }

    v32 = v16;
LABEL_14:
    v30 = *(*(v11 + 40) + 4 * v31);
    if (!sub_24BCD93B0(*(*(a1 + 280) + 40), &v30))
    {
      goto LABEL_17;
    }

    v19 = *(a1 + 40);
    v20 = sub_24BCB9024(v19 + 104, &v32);
    v21 = *(sub_24BCB9024(v19 + 104, v20) + 12);
    v22 = *(a1 + 40);
    v23 = sub_24BCB9024(v22 + 104, &v32);
    v24 = *(sub_24BCB9024(v22 + 104, (v23 + 4)) + 12);
    v25 = *(v11 + 40);
    v27 = *(v25 + 4 * v21);
    v26 = *(v25 + 4 * v24);
    if (!sub_24BCD93B0(*(*(a1 + 280) + 40), &v27) || !sub_24BCD93B0(*(*(a1 + 280) + 40), &v26))
    {
LABEL_17:
      *(*a3 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v27 = v31;
      sub_24BC97D60(a2, &v27);
    }

    goto LABEL_18;
  }
}

void sub_24BDE0310(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BDE032C(uint64_t a1, uint64_t a2, const void **a3, void *a4)
{
  v8 = 0;
  v9 = (*(a2 + 8) - *a2) >> 2;
  v16 = -1;
  v17 = v9;
  do
  {
    sub_24BC97D60(a3, &v17);
    while (1)
    {
      v10 = v17;
      if (v8 >= v17)
      {
        break;
      }

      v16 = *(*a2 + 4 * v8);
      sub_24BCB8F94(v15, (*(a1 + 40) + 104), &v16);
      while (1)
      {
        v11 = sub_24BCB8FBC(v15);
        if (v11 == -1)
        {
          break;
        }

        v12 = v11 >> 6;
        v13 = 1 << v11;
        if ((*(*a4 + 8 * v12) & (1 << v11)) == 0)
        {
          v14 = v11;
          sub_24BC97D60(a2, &v14);
          *(*a4 + 8 * v12) |= v13;
        }
      }

      ++v8;
    }

    v17 = (*(a2 + 8) - *a2) >> 2;
    v8 = v10;
  }

  while (v10 != v17);
}

void sub_24BDE0440(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4, void *a5, void *a6, float a7)
{
  v14 = *(a1 + 256);
  v15 = *(a1 + 264);
  if (v15 != v14)
  {
    v16 = 0;
    v17 = 0;
    do
    {
      v18 = v14 + 16 * v16;
      v19 = *v18;
      v20 = *(v18 + 8);
      if (v20)
      {
        atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_24BDE059C(v19, v17, a4);
      if (v20)
      {
        sub_24BC9EC78(v20);
      }

      v14 = *(a1 + 256);
      v15 = *(a1 + 264);
      v16 = ++v17;
    }

    while (v17 < ((v15 - v14) >> 4));
  }

  if (v15 != v14)
  {
    v21 = 0;
    v22 = 0;
    do
    {
      v23 = (v14 + 16 * v21);
      v24 = *v23;
      v25 = *(*v23 + 232);
      if (*(*v23 + 240) != v25)
      {
        v26 = 0;
        do
        {
          v27 = *(v25 + 4 * v26);
          if (v22 < v27)
          {
            sub_24BDE0754(a1, v22, v27, a2, a3, a4, a5, a6, a7);
            v24 = *v23;
          }

          ++v26;
          v25 = *(v24 + 232);
        }

        while (v26 < (*(v24 + 240) - v25) >> 2);
        v14 = *(a1 + 256);
        v15 = *(a1 + 264);
      }

      v21 = ++v22;
    }

    while (v22 < ((v15 - v14) >> 4));
  }
}

void sub_24BDE0584(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_24BC9EC78(v1);
  }

  _Unwind_Resume(exception_object);
}