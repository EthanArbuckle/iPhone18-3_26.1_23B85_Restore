uint64_t sub_24BCD73E8(uint64_t a1, unsigned int *a2, unsigned int *a3, unsigned int *a4, unsigned int *a5, int a6, int a7)
{
  v14 = sub_24BC9ECE4(a1, *(a1 + 180), *a2);
  if ((v15 & *v14) != 0)
  {
    return 0;
  }

  v16 = sub_24BCB9024(a1 + 104, a2);
  v17 = sub_24BC9ECE4(a1, *(a1 + 180), *v16);
  if ((v18 & *v17) != 0)
  {
    return 0;
  }

  sub_24BC836D4(v220, off_27F078F78[0]);
  __p = 0;
  v202 = sub_24BCB74D4((a1 + 80), &__p, v220);
  if (v221 < 0)
  {
    operator delete(v220[0]);
  }

  sub_24BC836D4(v220, off_27F078FB8[0]);
  LODWORD(v206) = 0;
  __p = 0;
  v201 = sub_24BCCAA0C((a1 + 56), &__p, v220);
  if (v221 < 0)
  {
    operator delete(v220[0]);
  }

  sub_24BC836D4(v220, off_27F078F90[0]);
  __p = 0;
  v206 = 0;
  v20 = sub_24BCB6470((a1 + 8), &__p, v220);
  if (v221 < 0)
  {
    operator delete(v220[0]);
  }

  sub_24BC836D4(v220, off_27F078F98[0]);
  __p = 0;
  v206 = 0;
  v21 = sub_24BCB6470((a1 + 8), &__p, v220);
  if (v221 < 0)
  {
    operator delete(v220[0]);
  }

  v219 = *a2;
  v218 = *(sub_24BCB9024(a1 + 104, &v219) + 8);
  v217 = *(sub_24BCB9024(a1 + 104, &v218) + 8);
  v216 = *sub_24BCB9024(a1 + 104, &v219);
  v215 = *(sub_24BCB9024(a1 + 104, &v216) + 8);
  v214 = *(sub_24BCB9024(a1 + 104, &v215) + 8);
  v213 = *(sub_24BCB9024(a1 + 104, &v219) + 16);
  v212 = *(sub_24BCB9024(a1 + 104, &v216) + 16);
  v211 = *(sub_24BCB9024(a1 + 104, &v219) + 12);
  v210 = *(sub_24BCB9024(a1 + 104, &v216) + 12);
  v209 = *(sub_24BCB9024(a1 + 104, &v217) + 12);
  v22 = *(sub_24BCB9024(a1 + 104, &v214) + 12);
  v23 = *a3;
  v207 = *a3;
  v208 = v22;
  if (a7)
  {
    v24 = v210;
    v25 = (*(a1 + 8) + 16 * *(a1 + 176));
    v27 = *v25;
    v26 = v25[1];
    if (!a6)
    {
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v26);
        v46 = (*(a1 + 8) + 16 * *(a1 + 176));
        v48 = *v46;
        v47 = v46[1];
        v49 = *(*(v27 + 40) + 16 * v24);
        v50 = v211;
        if (v47)
        {
          atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
          v196 = v49;
          sub_24BC9EC78(v47);
          v49 = v196;
        }

        v27 = v48;
      }

      else
      {
        v49 = *(*(v27 + 40) + 16 * v210);
        v50 = v211;
      }

      v51 = vaddq_f32(v49, *(*(v27 + 40) + 16 * v50));
      v52.i64[0] = 0x3F0000003F000000;
      v52.i64[1] = 0x3F0000003F000000;
      v53 = vmulq_f32(v51, v52);
      goto LABEL_31;
    }

    if (v26)
    {
      atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_24BC9EC78(v26);
      v28 = (*(a1 + 8) + 16 * *(a1 + 176));
      v30 = *v28;
      v29 = v28[1];
      v31 = *(*(v27 + 40) + 16 * v24);
      v32 = v211;
      if (v29)
      {
        atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
        v194 = v31;
        sub_24BC9EC78(v29);
        v33 = (*(a1 + 8) + 16 * *(a1 + 176));
        v27 = *v33;
        v34 = v33[1];
        __asm { FMOV            V1.4S, #0.375 }

        v39 = vmulq_f32(vaddq_f32(v194, *(*(v30 + 40) + 16 * v32)), _Q1);
        v40 = v209;
        if (v34)
        {
          v195 = v39;
          atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v34);
          v41 = (*(a1 + 8) + 16 * *(a1 + 176));
          v43 = *v41;
          v42 = v41[1];
          v44 = *(*(v27 + 40) + 16 * v40);
          v45 = v208;
          if (v42)
          {
            atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
            v192 = v44;
            sub_24BC9EC78(v42);
            v44 = v192;
          }

          v39 = v195;
          goto LABEL_30;
        }

LABEL_29:
        v44 = *(*(v27 + 40) + 16 * v40);
        v45 = v208;
        v43 = v27;
LABEL_30:
        v56 = vaddq_f32(v44, *(*(v43 + 40) + 16 * v45));
        v57.i64[0] = 0x3E0000003E000000;
        v57.i64[1] = 0x3E0000003E000000;
        v53 = vaddq_f32(v39, vmulq_f32(v56, v57));
LABEL_31:
        v58 = (*(a1 + 8) + 16 * *(a1 + 176));
        v60 = *v58;
        v59 = v58[1];
        if (v59)
        {
          atomic_fetch_add_explicit(&v59->__shared_owners_, 1uLL, memory_order_relaxed);
          v197 = v53;
          sub_24BC9EC78(v59);
          v53 = v197;
        }

        v23 = v207;
        *(*(v60 + 40) + 16 * v207) = v53;
        goto LABEL_34;
      }

      v27 = *v28;
    }

    else
    {
      v31 = *(*(v27 + 40) + 16 * v210);
      v32 = v211;
    }

    v54 = vaddq_f32(v31, *(*(v27 + 40) + 16 * v32));
    __asm { FMOV            V1.4S, #0.375 }

    v39 = vmulq_f32(v54, _Q1);
    v40 = v209;
    goto LABEL_29;
  }

LABEL_34:
  if (v20 != -1)
  {
    v61 = (*(a1 + 8) + 16 * v20);
    v63 = *v61;
    v62 = v61[1];
    if (v62)
    {
      v64 = v20;
      atomic_fetch_add_explicit(&v62->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_24BC9EC78(v62);
      v65 = (*(a1 + 8) + 16 * v20);
      v66 = *v65;
      v62 = v65[1];
      v67 = (*(v63 + 40) + 16 * v210);
      if (v62)
      {
        atomic_fetch_add_explicit(&v62->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v62);
        v68 = (*(a1 + 8) + 16 * v64);
        v63 = v66;
        v66 = *v68;
        v62 = v68[1];
      }

      else
      {
        v63 = *v65;
      }
    }

    else
    {
      v67 = (*(v63 + 40) + 16 * v210);
      v66 = *v61;
    }

    v69.i64[0] = 0x3F0000003F000000;
    v69.i64[1] = 0x3F0000003F000000;
    v70 = vmulq_f32(vaddq_f32(*(*(v63 + 40) + 16 * v211), *v67), v69);
    if (v62)
    {
      atomic_fetch_add_explicit(&v62->__shared_owners_, 1uLL, memory_order_relaxed);
      v198 = v70;
      sub_24BC9EC78(v62);
      v70 = v198;
    }

    v23 = v207;
    *(*(v66 + 40) + 16 * v207) = v70;
  }

  if (v21 == -1)
  {
    v79 = v23;
    v80 = v201;
  }

  else
  {
    v71 = (*(a1 + 8) + 16 * v21);
    v73 = *v71;
    v72 = v71[1];
    if (v72)
    {
      v74 = v21;
      atomic_fetch_add_explicit(&v72->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_24BC9EC78(v72);
      v75 = (*(a1 + 8) + 16 * v21);
      v76 = *v75;
      v72 = v75[1];
      v77 = (*(v73 + 40) + 16 * v210);
      if (v72)
      {
        atomic_fetch_add_explicit(&v72->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v72);
        v78 = (*(a1 + 8) + 16 * v74);
        v73 = v76;
        v76 = *v78;
        v72 = v78[1];
      }

      else
      {
        v73 = *v75;
      }
    }

    else
    {
      v77 = (*(v73 + 40) + 16 * v210);
      v76 = *v71;
    }

    v81.i64[0] = 0x3F0000003F000000;
    v81.i64[1] = 0x3F0000003F000000;
    v82 = vmulq_f32(vaddq_f32(*(*(v73 + 40) + 16 * v211), *v77), v81);
    v80 = v201;
    if (v72)
    {
      atomic_fetch_add_explicit(&v72->__shared_owners_, 1uLL, memory_order_relaxed);
      v199 = v82;
      sub_24BC9EC78(v72);
      v82 = v199;
    }

    v79 = v207;
    *(*(v76 + 40) + 16 * v207) = v82;
  }

  sub_24BCB1BC8(a1, v211, v79, 0);
  sub_24BCB50D4(a1, &v207, &v210);
  v83 = 0;
  v84 = 0;
  v85 = 0;
  v200 = 0;
  v86 = 0;
  v191 = 0;
  v87 = 0;
  _ZF = v202 == -1 || v80 == -1;
  v89 = !_ZF;
  if (!_ZF)
  {
    v90 = (*(a1 + 56) + 16 * v80);
    v92 = *v90;
    v91 = v90[1];
    if (v91)
    {
      atomic_fetch_add_explicit(&v91->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_24BC9EC78(v91);
      v93 = (*(a1 + 56) + 16 * v80);
      v95 = *v93;
      v94 = v93[1];
      v96 = *(v92 + 40) + 12 * v213;
      if (v94)
      {
        atomic_fetch_add_explicit(&v94->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v94);
      }

      v92 = v95;
    }

    else
    {
      v96 = *(v92 + 40) + 12 * v213;
    }

    v97 = v212;
    v98 = *(v92 + 40);
    sub_24BCB2008(v220, 3uLL);
    sub_24BCB2008(&__p, 3uLL);
    sub_24BCD567C(a1, &v213, v220);
    sub_24BCD567C(a1, &v212, &__p);
    v99 = 0;
    v100 = v98 + 12 * v97;
    while (*(v220[0] + v99) != v211)
    {
      if (++v99 == 3)
      {
        v99 = 0;
        break;
      }
    }

    v101 = 0;
    while (*(v220[0] + v101) != v210)
    {
      if (++v101 == 3)
      {
        LODWORD(v101) = 0;
        break;
      }
    }

    v102 = 0;
    while (*(__p + v102) != v211)
    {
      if (++v102 == 3)
      {
        LODWORD(v102) = 0;
        break;
      }
    }

    v103 = 0;
    while (*(__p + v103) != v210)
    {
      if (++v103 == 3)
      {
        v103 = 0;
        break;
      }
    }

    HIDWORD(v191) = *(v96 + 4 * ((v101 + 1) % 3u));
    v189 = *(v96 + 4 * v99);
    v190 = *(v100 + 4 * ((v102 + 1) % 3u));
    v193 = v202;
    v104 = (*(a1 + 80) + 16 * v202);
    v106 = *v104;
    v105 = v104[1];
    v203 = *(v100 + 4 * v102);
    v200 = *(v100 + 4 * v103);
    LODWORD(v191) = *(v96 + 4 * v101);
    if (v189 == v203 && *(v96 + 4 * v101) == *(v100 + 4 * v103))
    {
      if (v105)
      {
        atomic_fetch_add_explicit(&v105->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v105);
      }

      (*(*v106 + 48))(v106);
      v107 = (*(a1 + 80) + 16 * v193);
      v109 = *v107;
      v108 = v107[1];
      if (v108)
      {
        atomic_fetch_add_explicit(&v108->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v108);
        v110 = (*(a1 + 80) + 16 * v193);
        v111 = *v110;
        v108 = v110[1];
        v112 = (*(v109 + 40) + 8 * *(v96 + 4 * v99));
        if (v108)
        {
          atomic_fetch_add_explicit(&v108->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v108);
          v113 = (*(a1 + 80) + 16 * v193);
          v109 = v111;
          v111 = *v113;
          v108 = v113[1];
        }

        else
        {
          v109 = *v110;
        }
      }

      else
      {
        v112 = (*(v109 + 40) + 8 * *(v96 + 4 * v99));
        v111 = *v107;
      }

      v141 = *v112;
      v142 = *(*(v109 + 40) + 8 * *(v96 + 4 * v101));
      v143 = v111;
      if (v108)
      {
        atomic_fetch_add_explicit(&v108->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v108);
        v144 = (*(a1 + 80) + 16 * v193);
        v143 = *v144;
        v145 = v144[1];
        if (v145)
        {
          atomic_fetch_add_explicit(&v145->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v145);
        }
      }

      *(*(v111 + 40) + 8 * (*(*v143 + 16))(v143) - 8) = vmul_f32(vadd_f32(v141, v142), 0x3F0000003F000000);
      v146 = (*(a1 + 80) + 16 * v193);
      v148 = *v146;
      v147 = v146[1];
      if (v147)
      {
        atomic_fetch_add_explicit(&v147->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v147);
      }

      v129 = (*(*v148 + 16))(v148);
      v149 = (*(a1 + 80) + 16 * v193);
      v151 = *v149;
      v150 = v149[1];
      if (v150)
      {
        atomic_fetch_add_explicit(&v150->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v150);
      }
    }

    else
    {
      v188 = v100;
      if (v105)
      {
        atomic_fetch_add_explicit(&v105->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v105);
      }

      (*(*v106 + 48))(v106);
      v187 = v89;
      v114 = (*(a1 + 80) + 16 * v193);
      v116 = *v114;
      v115 = v114[1];
      if (v115)
      {
        atomic_fetch_add_explicit(&v115->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v115);
        v117 = (*(a1 + 80) + 16 * v193);
        v118 = *v117;
        v115 = v117[1];
        v119 = (*(v116 + 40) + 8 * *(v96 + 4 * v99));
        if (v115)
        {
          atomic_fetch_add_explicit(&v115->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v115);
          v120 = (*(a1 + 80) + 16 * v193);
          v116 = v118;
          v118 = *v120;
          v115 = v120[1];
        }

        else
        {
          v116 = *v117;
        }
      }

      else
      {
        v119 = (*(v116 + 40) + 8 * *(v96 + 4 * v99));
        v118 = *v114;
      }

      v121 = *v119;
      v122 = *(*(v116 + 40) + 8 * *(v96 + 4 * v101));
      v123 = v118;
      if (v115)
      {
        atomic_fetch_add_explicit(&v115->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v115);
        v124 = (*(a1 + 80) + 16 * v193);
        v123 = *v124;
        v125 = v124[1];
        if (v125)
        {
          atomic_fetch_add_explicit(&v125->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v125);
        }
      }

      *(*(v118 + 40) + 8 * (*(*v123 + 16))(v123) - 8) = vmul_f32(vadd_f32(v121, v122), 0x3F0000003F000000);
      v126 = (*(a1 + 80) + 16 * v193);
      v128 = *v126;
      v127 = v126[1];
      if (v127)
      {
        atomic_fetch_add_explicit(&v127->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v127);
      }

      v89 = v187;
      v129 = (*(*v128 + 16))(v128);
      v130 = (*(a1 + 80) + 16 * v193);
      v132 = *v130;
      v131 = v130[1];
      if (v131)
      {
        atomic_fetch_add_explicit(&v131->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v131);
      }

      (*(*v132 + 48))(v132);
      v133 = (*(a1 + 80) + 16 * v193);
      v135 = *v133;
      v134 = v133[1];
      if (v134)
      {
        atomic_fetch_add_explicit(&v134->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v134);
        v136 = (*(a1 + 80) + 16 * v193);
        v137 = *v136;
        v134 = v136[1];
        v138 = v188;
        v139 = (*(v135 + 40) + 8 * *(v188 + 4 * v102));
        if (v134)
        {
          atomic_fetch_add_explicit(&v134->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v134);
          v138 = v188;
          v140 = (*(a1 + 80) + 16 * v193);
          v135 = v137;
          v137 = *v140;
          v134 = v140[1];
        }

        else
        {
          v135 = *v136;
        }
      }

      else
      {
        v138 = v188;
        v139 = (*(v135 + 40) + 8 * *(v188 + 4 * v102));
        v137 = *v133;
      }

      v152 = *v139;
      v153 = *(*(v135 + 40) + 8 * *(v138 + 4 * v103));
      v154 = v137;
      if (v134)
      {
        atomic_fetch_add_explicit(&v134->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v134);
        v155 = (*(a1 + 80) + 16 * v193);
        v154 = *v155;
        v156 = v155[1];
        if (v156)
        {
          atomic_fetch_add_explicit(&v156->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v156);
        }
      }

      *(*(v137 + 40) + 8 * (*(*v154 + 16))(v154) - 8) = vmul_f32(vadd_f32(v152, v153), 0x3F0000003F000000);
      v157 = (*(a1 + 80) + 16 * v193);
      v151 = *v157;
      v158 = v157[1];
      if (v158)
      {
        atomic_fetch_add_explicit(&v158->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v158);
      }
    }

    v159 = (*(*v151 + 16))(v151);
    v80 = v201;
    v86 = v203;
    v85 = v190;
    if (__p)
    {
      v206 = __p;
      operator delete(__p);
    }

    v84 = v129 - 1;
    v83 = v159 - 1;
    if (v220[0])
    {
      v220[1] = v220[0];
      operator delete(v220[0]);
    }

    v87 = v189;
  }

  sub_24BCB9048(a1 + 104, &v218, a5);
  sub_24BCB9048(a1 + 104, a5, &v219);
  sub_24BCB9048(a1 + 104, &v216, a5 + 2);
  sub_24BCB9048(a1 + 104, a5 + 2, &v214);
  sub_24BCB9048(a1 + 104, &v217, a5 + 4);
  sub_24BCB9048(a1 + 104, a5 + 4, a5 + 1);
  sub_24BCB9048(a1 + 104, a5 + 1, &v217);
  sub_24BCB9048(a1 + 104, &v215, a5 + 3);
  sub_24BCB9048(a1 + 104, a5 + 3, a5 + 5);
  sub_24BCB9048(a1 + 104, a5 + 5, &v215);
  sub_24BCB9074(a1 + 104, a5, a5 + 1);
  sub_24BCB9074(a1 + 104, a5 + 2, a5 + 3);
  sub_24BCB9074(a1 + 104, a5 + 4, a5 + 5);
  sub_24BCB90C8((a1 + 104), &v219, &v207);
  sub_24BCB90C8((a1 + 104), a5, &v209);
  sub_24BCB90C8((a1 + 104), a5 + 1, &v207);
  sub_24BCB90C8((a1 + 104), a5 + 4, &v211);
  sub_24BCB90C8((a1 + 104), a5 + 5, &v207);
  sub_24BCB90C8((a1 + 104), a5 + 3, &v208);
  sub_24BCB90C8((a1 + 104), a5 + 2, &v207);
  sub_24BCB90A0(a1 + 104, &v213, a5);
  sub_24BCB90A0(a1 + 104, &v212, a5 + 2);
  sub_24BCB90A0(a1 + 104, a4, &v217);
  sub_24BCB90A0(a1 + 104, a4, a5 + 4);
  sub_24BCB90A0(a1 + 104, a4, a5 + 1);
  sub_24BCB90A0(a1 + 104, a4 + 1, &v215);
  sub_24BCB90A0(a1 + 104, a4 + 1, a5 + 3);
  sub_24BCB90A0(a1 + 104, a4 + 1, a5 + 5);
  if (v89)
  {
    v204 = v86;
    v160 = v87;
    v161 = v80;
    v162 = *(a1 + 56);
    v163 = (v162 + 16 * v80);
    v165 = *v163;
    v164 = v163[1];
    if (v164)
    {
      atomic_fetch_add_explicit(&v164->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_24BC9EC78(v164);
      v162 = *(a1 + 56);
      v166 = (v162 + 16 * v80);
      v167 = *v166;
      v164 = v166[1];
    }

    else
    {
      v167 = *v163;
    }

    v168 = v200;
    v169 = *(v165 + 40) + 12 * v213;
    *v169 = v84;
    *(v169 + 4) = v191;
    if (v164)
    {
      atomic_fetch_add_explicit(&v164->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_24BC9EC78(v164);
      v168 = v200;
      v162 = *(a1 + 56);
    }

    v170 = (*(v167 + 40) + 12 * v212);
    *v170 = v85;
    v170[1] = v168;
    v170[2] = v83;
    v171 = (v162 + 16 * v161);
    v173 = *v171;
    v172 = v171[1];
    if (v172)
    {
      atomic_fetch_add_explicit(&v172->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_24BC9EC78(v172);
      v174 = (*(a1 + 56) + 16 * v161);
      v175 = *v174;
      v172 = v174[1];
    }

    else
    {
      v175 = *v171;
    }

    v176 = (*(v173 + 40) + 12 * *a4);
    *v176 = HIDWORD(v191);
    v176[1] = v160;
    v176[2] = v84;
    if (v172)
    {
      atomic_fetch_add_explicit(&v172->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_24BC9EC78(v172);
    }

    v177 = (*(v175 + 40) + 12 * a4[1]);
    *v177 = v204;
    v177[1] = v85;
    v177[2] = v83;
  }

  sub_24BC836D4(v220, "th:isnew_subdiv");
  LOBYTE(__p) = 0;
  v178 = sub_24BCDCDF8((a1 + 32), &__p, v220);
  if (v221 < 0)
  {
    operator delete(v220[0]);
  }

  if (v178 != -1)
  {
    sub_24BC836D4(v220, "tv:isnew_subdiv");
    LOBYTE(__p) = 0;
    v179 = sub_24BCDCDF8((a1 + 8), &__p, v220);
    if (v221 < 0)
    {
      operator delete(v220[0]);
    }

    if (v179 != -1)
    {
      v180 = (*(a1 + 32) + 16 * v178);
      v182 = *v180;
      v181 = v180[1];
      if (v181)
      {
        atomic_fetch_add_explicit(&v181->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v181);
      }

      v183 = *(v182 + 40);
      *(v183 + ((*a5 >> 3) & 0x1FFFFFF8)) |= 1 << *a5;
      *(v183 + ((a5[1] >> 3) & 0x1FFFFFF8)) |= 1 << a5[1];
      *(v183 + ((a5[2] >> 3) & 0x1FFFFFF8)) |= 1 << a5[2];
      *(v183 + ((a5[3] >> 3) & 0x1FFFFFF8)) |= 1 << a5[3];
      *(v183 + ((a5[4] >> 3) & 0x1FFFFFF8)) &= ~(1 << a5[4]);
      *(v183 + ((a5[5] >> 3) & 0x1FFFFFF8)) &= ~(1 << a5[5]);
      v184 = (*(a1 + 8) + 16 * v179);
      v186 = *v184;
      v185 = v184[1];
      if (v185)
      {
        atomic_fetch_add_explicit(&v185->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v185);
      }

      *(*(v186 + 40) + ((v207 >> 3) & 0x1FFFFFF8)) |= 1 << v207;
    }
  }

  return 1;
}

void sub_24BCD8604(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  v24 = *(v22 - 128);
  if (v24)
  {
    *(v22 - 120) = v24;
    operator delete(v24);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_24BCD869C(uint64_t a1, _OWORD *a2, _DWORD *a3)
{
  v5 = sub_24BCB9118(a1 + 104, a3);
  v6 = (*(*a1 + 16))(a1);
  sub_24BCB514C(*(a1 + 8), *(a1 + 16), v6);
  v7 = (*(a1 + 8) + 16 * *(a1 + 176));
  v9 = *v7;
  v8 = v7[1];
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v8);
  }

  *(*(v9 + 40) + 16 * v5) = *a2;
  return v5;
}

unint64_t sub_24BCD8740(uint64_t a1, _DWORD *a2)
{
  v3 = sub_24BCB9320((a1 + 104), a2);
  v4 = (*(*a1 + 32))(a1);
  sub_24BCB514C(*(a1 + 56), *(a1 + 64), v4);
  return v3;
}

uint64_t sub_24BCD87D0(uint64_t a1, unsigned int *a2, int a3, int a4)
{
  v6 = a2;
  v8 = sub_24BC9ECE4(a1, *(a1 + 180), *a2);
  if ((v9 & *v8) != 0 || (v10 = sub_24BCB9024(a1 + 104, v6), v11 = sub_24BC9ECE4(a1, *(a1 + 180), *v10), (v12 & *v11) != 0))
  {
    if (a3)
    {

      return sub_24BCD8E8C(a1, v6);
    }

    return 0;
  }

  v83 = *(sub_24BCB9024(a1 + 104, v6) + 12);
  v14 = sub_24BCB9024(a1 + 104, v6);
  v82 = *(sub_24BCB9024(a1 + 104, v14) + 12);
  if (v83 == v82)
  {
    return 0;
  }

  v15 = sub_24BCD93B0(a1, &v83);
  v16 = sub_24BCD93B0(a1, &v82);
  v17 = v16;
  if (!v15 && !v16 || (result = 0, a3) && (!v15 || !v17))
  {
    if (!v15)
    {
      v6 = sub_24BCB9024(a1 + 104, v6);
    }

    v81 = *v6;
    v80 = *(sub_24BCB9024(a1 + 104, &v81) + 8);
    v79 = *(sub_24BCB9024(a1 + 104, &v80) + 8);
    v78 = *sub_24BCB9024(a1 + 104, &v81);
    v77 = *(sub_24BCB9024(a1 + 104, &v78) + 8);
    v76 = *(sub_24BCB9024(a1 + 104, &v77) + 8);
    v75 = *sub_24BCB9024(a1 + 104, &v79);
    v18 = *sub_24BCB9024(a1 + 104, &v77);
    v74 = v18;
    v73 = *sub_24BCB9024(a1 + 104, &v80);
    v72 = *sub_24BCB9024(a1 + 104, &v76);
    v71 = *(sub_24BCB9024(a1 + 104, &v81) + 16);
    v70 = *(sub_24BCB9024(a1 + 104, &v78) + 16);
    v69 = *(sub_24BCB9024(a1 + 104, &v81) + 12);
    v19 = sub_24BCB9024(a1 + 104, &v81);
    v68 = *(sub_24BCB9024(a1 + 104, v19) + 12);
    v20 = *(sub_24BCB9024(a1 + 104, &v79) + 12);
    v67 = v20;
    v21 = *(sub_24BCB9024(a1 + 104, &v76) + 12);
    v66 = v21;
    v22 = sub_24BCD9434(a1, v69);
    v23 = sub_24BCD9434(a1, v68);
    if (sub_24BCD9434(a1, v20) <= a4)
    {
      return 0;
    }

    v24 = sub_24BCD9434(a1, v21);
    result = 0;
    if (v24 <= a4 || v23 < 3)
    {
      return result;
    }

    v25 = sub_24BC9ECE4(a1, *(a1 + 180), v75);
    if ((v26 & *v25) == 0 || (v27 = sub_24BC9ECE4(a1, *(a1 + 180), v18), (v28 & *v27) == 0))
    {
      if (v22 == 2)
      {
        return 0;
      }
    }

    result = 0;
    if (v22 + v23 - 4 <= a4 || v20 == v21)
    {
      return result;
    }

    if (v20 == v69)
    {
      return 0;
    }

    result = 0;
    if (v69 == v68 || v21 == v68 || v21 == v69 || v20 == v68)
    {
      return result;
    }

    sub_24BCB8F94(v65, (a1 + 104), &v69);
    v29 = sub_24BCB8FBC(v65);
    v64 = v29;
    if (v29 != -1)
    {
      v30 = 0;
      do
      {
        if (v29 == v68)
        {
          if (v30 > 0)
          {
            return 0;
          }

          v30 = 1;
        }

        sub_24BCB8F94(&__p, (a1 + 104), &v64);
        while (1)
        {
          v31 = sub_24BCB8FBC(&__p);
          if (v31 == -1)
          {
            break;
          }

          if (v31 == v68 && v64 != v20 && v64 != v21)
          {
            return 0;
          }
        }

        v29 = sub_24BCB8FBC(v65);
        v64 = v29;
      }

      while (v29 != -1);
    }

    __p = 0;
    v62 = 0;
    v63 = 0;
    sub_24BCB9454(v60, (a1 + 104), &v68);
    for (i = sub_24BCB947C(v60); ; i = sub_24BCB947C(v60))
    {
      v59 = i;
      if (i == -1)
      {
        break;
      }

      if (i != v80 && i != v78)
      {
        sub_24BCB4670(&__p, &v59);
      }
    }

    v35 = v69;
    v36 = (*(a1 + 8) + 16 * *(a1 + 176));
    v38 = *v36;
    v37 = v36[1];
    if (v37)
    {
      atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_24BC9EC78(v37);
      v39 = (*(a1 + 8) + 16 * *(a1 + 176));
      v41 = *v39;
      v40 = v39[1];
      v42 = *(*(v38 + 40) + 16 * v35);
      v43 = v68;
      if (v40)
      {
        atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
        v57 = v42;
        sub_24BC9EC78(v40);
        v44 = (*(a1 + 8) + 16 * *(a1 + 176));
        v38 = *v44;
        v45 = v44[1];
        v58 = vaddq_f32(v57, *(*(v41 + 40) + 16 * v43));
        if (v45)
        {
          atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v45);
        }

        v46 = v58;
        goto LABEL_59;
      }

      v38 = *v39;
    }

    else
    {
      v42 = *(*(v38 + 40) + 16 * v69);
      v43 = v68;
    }

    v46 = vaddq_f32(v42, *(*(v38 + 40) + 16 * v43));
LABEL_59:
    v47.i64[0] = 0x3F0000003F000000;
    v47.i64[1] = 0x3F0000003F000000;
    *(*(v38 + 40) + 16 * v69) = vmulq_f32(v46, v47);
    sub_24BCB9074(a1 + 104, &v75, &v73);
    sub_24BCB9074(a1 + 104, &v74, &v72);
    v48 = __p;
    if (v62 != __p)
    {
      v49 = 0;
      v50 = 1;
      do
      {
        sub_24BCB90C8((a1 + 104), &v48[v49], &v69);
        v49 = v50;
        v48 = __p;
        ++v50;
      }

      while (v49 < (v62 - __p) >> 2);
    }

    sub_24BCB90F0((a1 + 104), &v67, &v73);
    sub_24BCB90F0((a1 + 104), &v66, &v74);
    sub_24BCB90F0((a1 + 104), &v69, &v75);
    *sub_24BCB9038(a1 + 104, &v71) = -1;
    *sub_24BCB9038(a1 + 104, &v70) = -1;
    v51 = sub_24BCB9024(a1 + 104, &v81);
    *v51 = -1;
    *(v51 + 8) = -1;
    *(v51 + 16) = -1;
    v52 = sub_24BCB9024(a1 + 104, &v80);
    *v52 = -1;
    *(v52 + 8) = -1;
    *(v52 + 16) = -1;
    v53 = sub_24BCB9024(a1 + 104, &v79);
    *v53 = -1;
    *(v53 + 8) = -1;
    *(v53 + 16) = -1;
    v54 = sub_24BCB9024(a1 + 104, &v78);
    *v54 = -1;
    *(v54 + 8) = -1;
    *(v54 + 16) = -1;
    v55 = sub_24BCB9024(a1 + 104, &v77);
    *v55 = -1;
    *(v55 + 8) = -1;
    *(v55 + 16) = -1;
    v56 = sub_24BCB9024(a1 + 104, &v76);
    *v56 = -1;
    *(v56 + 8) = -1;
    *(v56 + 16) = -1;
    *sub_24BCB9014((a1 + 104), &v68) = -1;
    if (__p)
    {
      v62 = __p;
      operator delete(__p);
    }

    return 1;
  }

  return result;
}

void sub_24BCD8E5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BCD8E8C(uint64_t a1, unsigned int *a2)
{
  v2 = a2;
  v4 = sub_24BC9ECE4(a1, *(a1 + 180), *a2);
  if ((v5 & *v4) != 0)
  {
    v2 = sub_24BCB9024(a1 + 104, v2);
  }

  v60 = *v2;
  v59 = *sub_24BCB9024(a1 + 104, &v60);
  v58 = *(sub_24BCB9024(a1 + 104, &v59) + 4);
  v57 = *(sub_24BCB9024(a1 + 104, &v59) + 8);
  v56 = *(sub_24BCB9024(a1 + 104, &v60) + 8);
  v55 = *(sub_24BCB9024(a1 + 104, &v60) + 4);
  v6 = *sub_24BCB9024(a1 + 104, &v55);
  v54 = v6;
  v53 = *sub_24BCB9024(a1 + 104, &v56);
  v52 = *(sub_24BCB9024(a1 + 104, &v60) + 16);
  v51 = *(sub_24BCB9024(a1 + 104, &v60) + 12);
  v7 = sub_24BCB9024(a1 + 104, &v60);
  v50 = *(sub_24BCB9024(a1 + 104, v7) + 12);
  v49 = *(sub_24BCB9024(a1 + 104, &v55) + 12);
  if (v58 != v53 || v57 != v6)
  {
    sub_24BCB8F94(v48, (a1 + 104), &v51);
    v14 = sub_24BCB8FBC(v48);
    v47 = v14;
    if (v14 != -1)
    {
      v15 = 0;
      do
      {
        if (v14 == v50)
        {
          if (v15 > 0)
          {
            return 0;
          }

          v15 = 1;
        }

        sub_24BCB8F94(&__p, (a1 + 104), &v47);
        while (1)
        {
          v16 = sub_24BCB8FBC(&__p);
          if (v16 == -1)
          {
            break;
          }

          if (v16 == v50 && v47 != v49)
          {
            return 0;
          }
        }

        v14 = sub_24BCB8FBC(v48);
        v47 = v14;
      }

      while (v14 != -1);
    }

    __p = 0;
    v45 = 0;
    v46 = 0;
    sub_24BCB9454(v43, (a1 + 104), &v50);
    for (i = sub_24BCB947C(v43); ; i = sub_24BCB947C(v43))
    {
      v42 = i;
      if (i == -1)
      {
        break;
      }

      if (i != v56 && i != v6)
      {
        sub_24BCB4670(&__p, &v42);
      }
    }

    v20 = v51;
    v21 = (*(a1 + 8) + 16 * *(a1 + 176));
    v23 = *v21;
    v22 = v21[1];
    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_24BC9EC78(v22);
      v24 = (*(a1 + 8) + 16 * *(a1 + 176));
      v26 = *v24;
      v25 = v24[1];
      v27 = *(*(v23 + 40) + 16 * v20);
      v28 = v50;
      if (v25)
      {
        atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
        v40 = v27;
        sub_24BC9EC78(v25);
        v29 = (*(a1 + 8) + 16 * *(a1 + 176));
        v23 = *v29;
        v30 = v29[1];
        v31 = vaddq_f32(v40, *(*(v26 + 40) + 16 * v28));
        if (v30)
        {
          atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
          v41 = v31;
          sub_24BC9EC78(v30);
          v31 = v41;
        }

        goto LABEL_33;
      }

      v23 = *v24;
    }

    else
    {
      v27 = *(*(v23 + 40) + 16 * v51);
      v28 = v50;
    }

    v31 = vaddq_f32(v27, *(*(v23 + 40) + 16 * v28));
LABEL_33:
    v32.i64[0] = 0x3F0000003F000000;
    v32.i64[1] = 0x3F0000003F000000;
    *(*(v23 + 40) + 16 * v51) = vmulq_f32(v31, v32);
    sub_24BCB9048(a1 + 104, &v58, &v57);
    sub_24BCB9074(a1 + 104, &v54, &v53);
    v33 = __p;
    if (v45 != __p)
    {
      v34 = 0;
      v35 = 1;
      do
      {
        sub_24BCB90C8((a1 + 104), &v33[v34], &v51);
        v34 = v35;
        v33 = __p;
        ++v35;
      }

      while (v34 < (v45 - __p) >> 2);
    }

    sub_24BCB90F0((a1 + 104), &v49, &v53);
    sub_24BCB90F0((a1 + 104), &v51, &v54);
    *sub_24BCB9038(a1 + 104, &v52) = -1;
    v36 = sub_24BCB9024(a1 + 104, &v60);
    *v36 = -1;
    *(v36 + 8) = -1;
    *(v36 + 16) = -1;
    v37 = sub_24BCB9024(a1 + 104, &v56);
    *v37 = -1;
    *(v37 + 8) = -1;
    *(v37 + 16) = -1;
    v38 = sub_24BCB9024(a1 + 104, &v55);
    *v38 = -1;
    *(v38 + 8) = -1;
    *(v38 + 16) = -1;
    v39 = sub_24BCB9024(a1 + 104, &v59);
    *v39 = -1;
    *(v39 + 8) = -1;
    *(v39 + 16) = -1;
    *sub_24BCB9014((a1 + 104), &v50) = -1;
    if (__p)
    {
      v45 = __p;
      operator delete(__p);
    }

    return 1;
  }

  *sub_24BCB9038(a1 + 104, &v52) = -1;
  v8 = sub_24BCB9024(a1 + 104, &v60);
  *v8 = -1;
  *(v8 + 8) = -1;
  *(v8 + 16) = -1;
  v9 = sub_24BCB9024(a1 + 104, &v56);
  *v9 = -1;
  *(v9 + 8) = -1;
  *(v9 + 16) = -1;
  v10 = sub_24BCB9024(a1 + 104, &v55);
  *v10 = -1;
  *(v10 + 8) = -1;
  *(v10 + 16) = -1;
  v11 = sub_24BCB9024(a1 + 104, &v58);
  *v11 = -1;
  *(v11 + 8) = -1;
  *(v11 + 16) = -1;
  v12 = sub_24BCB9024(a1 + 104, &v59);
  *v12 = -1;
  *(v12 + 8) = -1;
  *(v12 + 16) = -1;
  v13 = sub_24BCB9024(a1 + 104, &v57);
  *v13 = -1;
  *(v13 + 8) = -1;
  *(v13 + 16) = -1;
  *sub_24BCB9014((a1 + 104), &v49) = -1;
  *sub_24BCB9014((a1 + 104), &v51) = -1;
  *sub_24BCB9014((a1 + 104), &v50) = -1;
  return 1;
}

void sub_24BCD9380(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_24BCD93B0(uint64_t a1, unsigned int *a2)
{
  sub_24BCB9454(v8, (a1 + 104), a2);
  v3 = sub_24BCB947C(v8);
  if (v3 == -1)
  {
    return 0;
  }

  do
  {
    v4 = sub_24BC9ECE4(a1, *(a1 + 180), v3);
    v6 = (v5 & *v4) != 0;
    if ((v5 & *v4) != 0)
    {
      break;
    }

    v3 = sub_24BCB947C(v8);
  }

  while (v3 != -1);
  return v6;
}

uint64_t sub_24BCD9434(uint64_t a1, unsigned int a2)
{
  v5 = a2;
  sub_24BCB9454(v4, (a1 + 104), &v5);
  v2 = -1;
  do
  {
    ++v2;
  }

  while (sub_24BCB947C(v4) != -1);
  return v2;
}

uint64_t sub_24BCD948C(uint64_t a1, unsigned int *a2)
{
  v2 = a2;
  v4 = sub_24BC9ECE4(a1, *(a1 + 180), *a2);
  if ((v5 & *v4) != 0)
  {
    return 1;
  }

  v6 = sub_24BCB9024(a1 + 104, v2);
  v7 = sub_24BC9ECE4(a1, *(a1 + 180), *v6);
  if ((v8 & *v7) != 0)
  {
    return 1;
  }

  v42 = *(sub_24BCB9024(a1 + 104, v2) + 12);
  v10 = sub_24BCB9024(a1 + 104, v2);
  v41 = *(sub_24BCB9024(a1 + 104, v10) + 12);
  v11 = sub_24BCD93B0(a1, &v42);
  v12 = sub_24BCD93B0(a1, &v41);
  if (v11 && v12)
  {
    return 0;
  }

  if (!v11)
  {
    v2 = sub_24BCB9024(a1 + 104, v2);
  }

  v40 = *v2;
  v39 = *(sub_24BCB9024(a1 + 104, &v40) + 8);
  v38 = *(sub_24BCB9024(a1 + 104, &v39) + 8);
  v37 = *sub_24BCB9024(a1 + 104, &v40);
  v36 = *(sub_24BCB9024(a1 + 104, &v37) + 8);
  v35 = *(sub_24BCB9024(a1 + 104, &v36) + 8);
  v13 = *sub_24BCB9024(a1 + 104, &v38);
  v14 = *sub_24BCB9024(a1 + 104, &v36);
  v15 = *(sub_24BCB9024(a1 + 104, &v40) + 12);
  v34 = v15;
  v16 = sub_24BCB9024(a1 + 104, &v40);
  v17 = *(sub_24BCB9024(a1 + 104, v16) + 12);
  v18 = *(sub_24BCB9024(a1 + 104, &v38) + 12);
  v19 = *(sub_24BCB9024(a1 + 104, &v35) + 12);
  v20 = sub_24BCD9434(a1, v15);
  v21 = sub_24BCD9434(a1, v17);
  if (sub_24BCD9434(a1, v18) < 5)
  {
    return 0;
  }

  v22 = sub_24BCD9434(a1, v19);
  result = 0;
  if (v22 >= 5 && v21 >= 3)
  {
    v23 = sub_24BC9ECE4(a1, *(a1 + 180), v13);
    if ((v24 & *v23) == 0 || (v25 = sub_24BC9ECE4(a1, *(a1 + 180), v14), (v26 & *v25) == 0))
    {
      if (v20 == 2)
      {
        return 0;
      }
    }

    result = 0;
    if (v21 + v20 >= 9 && v18 != v19)
    {
      result = 0;
      if (v18 != v15 && v18 != v17 && v19 != v15 && v19 != v17 && v15 != v17)
      {
        sub_24BCB8F94(v33, (a1 + 104), &v34);
        v27 = sub_24BCB8FBC(v33);
        v32 = v27;
        if (v27 != -1)
        {
          v28 = 0;
          do
          {
            if (v27 == v17)
            {
              if (v28 > 0)
              {
                return 0;
              }

              v28 = 1;
            }

            sub_24BCB8F94(v31, (a1 + 104), &v32);
            while (1)
            {
              v29 = sub_24BCB8FBC(v31);
              if (v29 == -1)
              {
                break;
              }

              if (v29 == v17 && v32 != v18 && v32 != v19)
              {
                return 0;
              }
            }

            v27 = sub_24BCB8FBC(v33);
            v32 = v27;
          }

          while (v27 != -1);
        }

        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_24BCD97D8(uint64_t a1, unsigned int *a2)
{
  v62 = *MEMORY[0x277D85DE8];
  sub_24BCB7458(&__p, 3uLL);
  sub_24BCD573C(a1, a2, &__p);
  v4 = __p;
  v5 = v59;
  if (__p == v59)
  {
    goto LABEL_13;
  }

  v6 = 0;
  do
  {
    v7 = sub_24BCB9024(a1 + 104, v4);
    v8 = sub_24BC9ECE4(a1, *(a1 + 180), *v7);
    if ((*v8 & v9) != 0)
    {
      ++v6;
    }

    ++v4;
  }

  while (v4 != v5);
  if (v6 > 1u)
  {
    if (v6 == 2)
    {
      v28 = 0;
      LODWORD(v60) = -1;
      v56 = -1;
      v57 = -1;
      while (1)
      {
        v29 = sub_24BCB9024(a1 + 104, (__p + v28));
        v30 = sub_24BC9ECE4(a1, *(a1 + 180), *v29);
        if ((*v30 & v31) == 0)
        {
          break;
        }

        v28 += 4;
        if (v28 == 12)
        {
          goto LABEL_32;
        }
      }

      LODWORD(v60) = *(__p + v28);
LABEL_32:
      v57 = *(sub_24BCB9024(a1 + 104, &v60) + 8);
      v56 = *(sub_24BCB9024(a1 + 104, &v57) + 8);
      v55 = *(sub_24BCB9024(a1 + 104, &v60) + 12);
      v54 = *(sub_24BCB9024(a1 + 104, &v57) + 12);
      v53 = *(sub_24BCB9024(a1 + 104, &v56) + 12);
      v52 = *sub_24BCB9024(a1 + 104, &v57);
      v51 = *(sub_24BCB9024(a1 + 104, &v52) + 8);
      v50 = *sub_24BCB9024(a1 + 104, &v56);
      v49 = *(sub_24BCB9024(a1 + 104, &v50) + 4);
      v32 = sub_24BC9ECE4(a1, *(a1 + 180), v60);
      *v32 |= v33;
      *(sub_24BCB9024(a1 + 104, &v60) + 16) = -1;
      sub_24BCB9048(a1 + 104, &v49, &v60);
      sub_24BCB9048(a1 + 104, &v60, &v51);
      sub_24BCB90F0((a1 + 104), &v55, &v60);
      sub_24BCB90F0((a1 + 104), &v54, &v51);
      *sub_24BCB9014((a1 + 104), &v53) = -1;
      v34 = sub_24BCB9024(a1 + 104, &v50);
      *v34 = -1;
      *(v34 + 8) = -1;
      *(v34 + 16) = -1;
      v35 = sub_24BCB9024(a1 + 104, &v52);
      *v35 = -1;
      *(v35 + 8) = -1;
      *(v35 + 16) = -1;
      v36 = sub_24BCB9024(a1 + 104, &v56);
      *v36 = -1;
      *(v36 + 8) = -1;
      *(v36 + 16) = -1;
      v37 = sub_24BCB9024(a1 + 104, &v57);
      *v37 = -1;
      *(v37 + 8) = -1;
      *(v37 + 16) = -1;
      v27 = sub_24BCB9038(a1 + 104, a2);
    }

    else
    {
      if (v6 != 3)
      {
LABEL_40:
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "TriMesh<T>::DeleteFace num_of_bound > 3");
        __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
      }

      for (i = 0; i != 12; i += 4)
      {
        v23 = sub_24BCB9024(a1 + 104, (__p + i));
        v24 = sub_24BCB9024(a1 + 104, v23);
        *v24 = -1;
        *(v24 + 8) = -1;
        *(v24 + 16) = -1;
        v25 = sub_24BCB9024(a1 + 104, (__p + i));
        *sub_24BCB9014((a1 + 104), (v25 + 12)) = -1;
        v26 = sub_24BCB9024(a1 + 104, (__p + i));
        *v26 = -1;
        *(v26 + 8) = -1;
        *(v26 + 16) = -1;
      }

      v27 = sub_24BCB9038(a1 + 104, a2);
    }

    *v27 = -1;
    goto LABEL_37;
  }

  if (!v6)
  {
LABEL_13:
    v14 = 0;
    v61 = -1;
    v60 = -1;
    v15 = &v57;
    do
    {
      *(&v60 + v14) = *(sub_24BCB9024(a1 + 104, (__p + v14)) + 12);
      *v15 = sub_24BCD93B0(a1, (&v60 + v14));
      v15 = (v15 + 1);
      v14 += 4;
    }

    while (v14 != 12);
    for (j = 0; j != 12; j += 4)
    {
      v17 = sub_24BC9ECE4(a1, *(a1 + 180), *(__p + j));
      *v17 |= v18;
      v19 = sub_24BCB9024(a1 + 104, (__p + j));
      *(v19 + 16) = -1;
    }

    v20 = 0;
    *sub_24BCB9038(a1 + 104, a2) = -1;
    v21 = &v60;
    do
    {
      if (*(&v57 + v20) == 1)
      {
        sub_24BCD9F08(a1, v21);
      }

      ++v20;
      ++v21;
    }

    while (v20 != 3);
    goto LABEL_37;
  }

  if (v6 != 1)
  {
    goto LABEL_40;
  }

  v10 = 0;
  LODWORD(v60) = -1;
  v57 = -1;
  while (1)
  {
    v11 = sub_24BCB9024(a1 + 104, (__p + v10));
    v12 = sub_24BC9ECE4(a1, *(a1 + 180), *v11);
    if ((*v12 & v13) != 0)
    {
      break;
    }

    v10 += 4;
    if (v10 == 12)
    {
      goto LABEL_35;
    }
  }

  v57 = *(__p + v10);
LABEL_35:
  LODWORD(v60) = *(sub_24BCB9024(a1 + 104, &v57) + 4);
  v38 = *(sub_24BCB9024(a1 + 104, &v57) + 8);
  v56 = v38;
  v55 = *sub_24BCB9024(a1 + 104, &v57);
  v54 = *(sub_24BCB9024(a1 + 104, &v55) + 4);
  v53 = *(sub_24BCB9024(a1 + 104, &v55) + 8);
  v52 = *(sub_24BCB9024(a1 + 104, &v60) + 12);
  v51 = *(sub_24BCB9024(a1 + 104, &v53) + 12);
  v50 = *(sub_24BCB9024(a1 + 104, &v55) + 12);
  v39 = sub_24BCD93B0(a1, &v52);
  v40 = sub_24BC9ECE4(a1, *(a1 + 180), v38);
  *v40 |= v41;
  v42 = sub_24BC9ECE4(a1, *(a1 + 180), v60);
  *v42 |= v43;
  *(sub_24BCB9024(a1 + 104, &v56) + 16) = -1;
  *(sub_24BCB9024(a1 + 104, &v60) + 16) = -1;
  sub_24BCB9048(a1 + 104, &v54, &v56);
  sub_24BCB9048(a1 + 104, &v60, &v53);
  sub_24BCB90F0((a1 + 104), &v51, &v53);
  sub_24BCB90F0((a1 + 104), &v50, &v56);
  v44 = sub_24BCB9024(a1 + 104, &v57);
  *v44 = -1;
  *(v44 + 8) = -1;
  *(v44 + 16) = -1;
  v45 = sub_24BCB9024(a1 + 104, &v55);
  *v45 = -1;
  *(v45 + 8) = -1;
  *(v45 + 16) = -1;
  *sub_24BCB9038(a1 + 104, a2) = -1;
  if (v39)
  {
    sub_24BCD9F08(a1, &v52);
  }

LABEL_37:
  if (__p)
  {
    v59 = __p;
    operator delete(__p);
  }

  v46 = *MEMORY[0x277D85DE8];
  return 1;
}

void sub_24BCD9E70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  __cxa_free_exception(v16);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_24BCD9F08(uint64_t a1, unsigned int *a2)
{
  v30[1] = *MEMORY[0x277D85DE8];
  v26 = *a2;
  sub_24BCB9454(v25, (a1 + 104), &v26);
  v3 = sub_24BCB947C(v25);
  v24 = v3;
  v29 = -1;
  v30[0] = -1;
  if (v3 == -1)
  {
    v4 = 0;
    goto LABEL_20;
  }

  v4 = 0;
  do
  {
    v5 = sub_24BC9ECE4(a1, *(a1 + 180), v3);
    if ((v6 & *v5) != 0)
    {
      *(&v30[-1] + v4++) = v24;
    }

    v3 = sub_24BCB947C(v25);
    v24 = v3;
  }

  while (v3 != -1);
  if (v4 != 2)
  {
LABEL_20:
    exception = __cxa_allocate_exception(0x10uLL);
    std::to_string(&__p, v4);
    v19 = std::string::insert(&__p, 0, "Unable to split nonmanifold v:");
    v20 = *&v19->__r_.__value_.__l.__data_;
    v23 = v19->__r_.__value_.__r.__words[2];
    *v22 = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x24C254100](exception, v22);
    __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
  }

  LODWORD(v30[0]) = *(sub_24BCB9024(a1 + 104, &v29) + 4);
  HIDWORD(v30[0]) = *(sub_24BCB9024(a1 + 104, &v29 + 1) + 4);
  v22[0] = 0;
  v22[1] = 0;
  v23 = 0;
  memset(&__p, 0, sizeof(__p));
  v24 = v29;
  do
  {
    v7 = sub_24BCB9024(a1 + 104, &v24);
    v24 = *sub_24BCB9024(a1 + 104, (v7 + 4));
    sub_24BCB4670(v22, &v24);
  }

  while (v24 != HIDWORD(v29));
  do
  {
    v8 = sub_24BCB9024(a1 + 104, &v24);
    v24 = *sub_24BCB9024(a1 + 104, (v8 + 4));
    sub_24BCB4670(&__p, &v24);
  }

  while (v24 != v29);
  v9 = v26;
  v10 = (*(a1 + 8) + 16 * *(a1 + 176));
  v12 = *v10;
  v11 = v10[1];
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v11);
  }

  v27 = *(*(v12 + 40) + 16 * v9);
  v28 = -1;
  v13 = sub_24BCD869C(a1, &v27, &v28);
  sub_24BCB9048(a1 + 104, v30, &v29 + 1);
  sub_24BCB9048(a1 + 104, v30 + 1, &v29);
  size = __p.__r_.__value_.__l.__size_;
  v14 = __p.__r_.__value_.__r.__words[0];
  *&v27 = a1;
  for (*(&v27 + 1) = v13; v14 != size; ++v14)
  {
    v28 = *v14;
    sub_24BCB90C8((v27 + 104), &v28, &v27 + 2);
  }

  sub_24BCB90F0((a1 + 104), &v26, &v29 + 1);
  sub_24BCB1BC8(a1, v26, v13, 0);
  if (__p.__r_.__value_.__r.__words[0])
  {
    __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v22[0])
  {
    v22[1] = v22[0];
    operator delete(v22[0]);
  }

  v16 = *MEMORY[0x277D85DE8];
  return 1;
}

void sub_24BCDA22C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

uint64_t sub_24BCDA2CC(uint64_t a1, unsigned int *a2, unsigned int *a3, _DWORD *a4, unsigned int *a5)
{
  if (*a2 == -1 || *a3 == -1)
  {
    return 0;
  }

  v11 = sub_24BC9ECE4(a1, *(a1 + 180), *a2);
  if ((v12 & *v11) == 0)
  {
    return 0;
  }

  v13 = sub_24BC9ECE4(a1, *(a1 + 180), *a3);
  if ((v14 & *v13) == 0 || *(sub_24BCB9024(a1 + 104, a2) + 8) != *a3)
  {
    return 0;
  }

  v34 = *(sub_24BCB9024(a1 + 104, a2) + 4);
  v33 = *(sub_24BCB9024(a1 + 104, a3) + 8);
  LODWORD(v30) = -1;
  if (v34 == v33)
  {
    *a4 = sub_24BCD8740(a1, &v30);
    v15 = sub_24BC9ECE4(a1, *(a1 + 180), *a2);
    *v15 &= ~v16;
    v17 = sub_24BC9ECE4(a1, *(a1 + 180), *a3);
    *v17 &= ~v18;
    v19 = sub_24BC9ECE4(a1, *(a1 + 180), v34);
    *v19 &= ~v20;
    sub_24BCB90A0(a1 + 104, a4, a2);
    sub_24BCB90A0(a1 + 104, a4, a3);
    sub_24BCB90A0(a1 + 104, a4, &v34);
    *a5 = -1;
  }

  else
  {
    *a4 = sub_24BCD8740(a1, &v30);
    v31 = -1;
    *&v30 = -1;
    *(&v30 + 1) = -1;
    v22 = sub_24BCB45D0(a1, 0, &v30);
    v31 = -1;
    v32 = v22;
    *&v30 = -1;
    *(&v30 + 1) = -1;
    *a5 = sub_24BCB45D0(a1, 1, &v30);
    v23 = sub_24BC9ECE4(a1, *(a1 + 180), *a2);
    *v23 &= ~v24;
    v25 = sub_24BC9ECE4(a1, *(a1 + 180), *a3);
    *v25 &= ~v26;
    v27 = sub_24BCB9024(a1 + 104, a3);
    v28 = sub_24BCB9024(a1 + 104, v27);
    sub_24BCB90C8((a1 + 104), &v32, (v28 + 12));
    v29 = sub_24BCB9024(a1 + 104, a2);
    sub_24BCB90C8((a1 + 104), a5, (v29 + 12));
    sub_24BCB90A0(a1 + 104, a4, a2);
    sub_24BCB90A0(a1 + 104, a4, a3);
    sub_24BCB90A0(a1 + 104, a4, &v32);
    sub_24BCB9074(a1 + 104, &v32, a5);
    sub_24BCB9048(a1 + 104, &v34, a5);
    sub_24BCB9048(a1 + 104, a5, &v33);
    sub_24BCB9048(a1 + 104, &v32, a2);
    sub_24BCB9048(a1 + 104, a3, &v32);
  }

  return 1;
}

uint64_t sub_24BCDA5A8(uint64_t a1)
{
  sub_24BC836D4(__p, off_27F078FB8[0]);
  v7 = 0;
  v6 = 0;
  v2 = sub_24BCCAA0C((a1 + 56), &v6, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return sub_24BCB22BC(a1, v2);
}

void sub_24BCDA61C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BCDA638(uint64_t a1, float *a2)
{
  v105 = -1;
  sub_24BC836D4(&v102, off_27F078FE0[0]);
  __src = 0;
  v99 = 0;
  v4 = sub_24BCB6470((a1 + 80), &__src, &v102);
  if (SHIBYTE(v104) < 0)
  {
    operator delete(v102);
  }

  if (v4 == -1)
  {
    sub_24BC836D4(&v102, off_27F078FE0[0]);
    __src = 0;
    v99 = 0;
    sub_24BCB5200(a1 + 80);
  }

  sub_24BC836D4(&v102, off_27F078FC0[0]);
  LODWORD(v99) = 0;
  __src = 0;
  v5 = sub_24BCCAA0C((a1 + 56), &__src, &v102);
  v105 = v5;
  if (SHIBYTE(v104) < 0)
  {
    operator delete(v102);
  }

  if (v5 == -1)
  {
    sub_24BC836D4(&v102, off_27F078FC0[0]);
    sub_24BCD5A78(a1);
  }

  v6 = v4;
  v7 = (*(a1 + 80) + 16 * v4);
  v9 = *v7;
  v8 = v7[1];
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v8);
  }

  v10 = *(a1 + 160) - *(a1 + 152);
  (*(*v9 + 32))(v9, (v10 >> 1) + (v10 >> 2));
  v101 = 0uLL;
  if (*(a1 + 160) != *(a1 + 152))
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    do
    {
      v14 = (*(a1 + 56) + 16 * v105);
      v16 = *v14;
      v15 = v14[1];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v15);
      }

      v17 = *(v16 + 40) + 12 * v12;
      *v17 = 3 * v13;
      *(v17 + 4) = vadd_s32(vdup_n_s32(3 * v13), 0x200000001);
      sub_24BD3FAC8(a1, v12, &v101);
      v18 = 3;
      v19 = v11;
      do
      {
        v20 = (*(a1 + 80) + 16 * v6);
        v22 = *v20;
        v21 = v20[1];
        if (v21)
        {
          atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v21);
        }

        *(*(v22 + 40) + 16 * v19++) = v101;
        --v18;
      }

      while (v18);
      v11 += 3;
      v12 = ++v13;
    }

    while (v13 < ((*(a1 + 160) - *(a1 + 152)) >> 2));
  }

  v23 = *a2;
  v102 = 0;
  v103 = 0;
  v104 = 0;
  __src = 0;
  v99 = 0;
  v100 = 0;
  __p = 0;
  v96 = 0;
  v97 = 0;
  sub_24BCB7458(v94, 3uLL);
  if (*(a1 + 112) != *(a1 + 104))
  {
    LODWORD(v24) = 0;
    do
    {
      v92 = v24;
      sub_24BCB9454(v93, (a1 + 104), &v92);
      v26 = sub_24BCB947C(v93);
      v92 = v26;
      v103 = v102;
      if (v26 == -1)
      {
        v46 = __src;
        v99 = __src;
        v96 = __p;
      }

      else
      {
        v27 = 0;
        do
        {
          v28 = sub_24BC9ECE4(a1, *(a1 + 180), v26);
          if ((*v28 & v29) == 0)
          {
            v30 = sub_24BCB9024(a1 + 104, &v92);
            v31 = sub_24BC9ECE4(a1, *(a1 + 180), *v30);
            if ((*v31 & v32) == 0)
            {
              v91 = 0.0;
              sub_24BD3FD70(a1, &v92, &v91);
              v25 = v23 * 3.14159265 / 180.0;
              v27 |= v91 > v25;
            }
          }

          v33 = sub_24BC9ECE4(a1, *(a1 + 180), v92);
          if ((*v33 & v34) == 0)
          {
            v35 = sub_24BCB9024(a1 + 104, &v92);
            v36 = v103;
            if (v103 >= v104)
            {
              v38 = (v103 - v102) >> 2;
              if ((v38 + 1) >> 62)
              {
                sub_24BC8E01C();
              }

              v39 = (v104 - v102) >> 1;
              if (v39 <= v38 + 1)
              {
                v39 = v38 + 1;
              }

              if (v104 - v102 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v40 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v40 = v39;
              }

              if (v40)
              {
                sub_24BC92E0C(&v102, v40);
              }

              v41 = (4 * v38);
              *v41 = *(v35 + 16);
              v37 = 4 * v38 + 4;
              v42 = v41 - (v103 - v102);
              memcpy(v42, v102, v103 - v102);
              v43 = v102;
              v102 = v42;
              v103 = v37;
              v104 = 0;
              if (v43)
              {
                operator delete(v43);
              }
            }

            else
            {
              *v103 = *(v35 + 16);
              v37 = (v36 + 4);
            }

            v103 = v37;
          }

          v26 = sub_24BCB947C(v93);
          v92 = v26;
        }

        while (v26 != -1);
        if (v27)
        {
          goto LABEL_90;
        }

        v44 = v102;
        v45 = v103;
        v46 = __src;
        v99 = __src;
        v96 = __p;
        if (v102 != v103)
        {
          do
          {
            sub_24BCD573C(a1, v44, v94);
            v47 = 0;
            while (*(sub_24BCB9024(a1 + 104, (v94[0] + v47)) + 12) != v24)
            {
              v47 += 4;
              if (v47 == 12)
              {
                v46 = __src;
                v99 = __src;
                goto LABEL_75;
              }
            }

            v88 = v45;
            v48 = (*(a1 + 56) + 16 * v105);
            v50 = *v48;
            v49 = v48[1];
            if (v49)
            {
              atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
              sub_24BC9EC78(v49);
            }

            v51 = *(v50 + 40) + 12 * *v44;
            v52 = v99;
            if (v99 >= v100)
            {
              v54 = __src;
              v55 = v99 - __src;
              v56 = (v99 - __src) >> 2;
              v57 = v56 + 1;
              if ((v56 + 1) >> 62)
              {
                sub_24BC8E01C();
              }

              v58 = v100 - __src;
              if ((v100 - __src) >> 1 > v57)
              {
                v57 = v58 >> 1;
              }

              v59 = v58 >= 0x7FFFFFFFFFFFFFFCLL;
              v60 = 0x3FFFFFFFFFFFFFFFLL;
              if (!v59)
              {
                v60 = v57;
              }

              if (v60)
              {
                sub_24BC92E0C(&__src, v60);
              }

              v61 = (4 * v56);
              v62 = *(v51 + v47);
              v63 = &v61[-((v99 - __src) >> 2)];
              *v61 = v62;
              v53 = (v61 + 1);
              memcpy(v63, v54, v55);
              v64 = __src;
              __src = v63;
              v99 = v53;
              v100 = 0;
              if (v64)
              {
                operator delete(v64);
              }
            }

            else
            {
              *v99 = *(v51 + v47);
              v53 = v52 + 4;
            }

            v99 = v53;
            sub_24BCDAEE4(a1, *(v94[0] + v47));
            v66 = v96;
            if (v96 >= v97)
            {
              v68 = __p;
              v69 = v96 - __p;
              v70 = (v96 - __p) >> 2;
              v71 = v70 + 1;
              if ((v70 + 1) >> 62)
              {
                sub_24BC8E01C();
              }

              v72 = v97 - __p;
              if ((v97 - __p) >> 1 > v71)
              {
                v71 = v72 >> 1;
              }

              v59 = v72 >= 0x7FFFFFFFFFFFFFFCLL;
              v73 = 0x3FFFFFFFFFFFFFFFLL;
              if (!v59)
              {
                v73 = v71;
              }

              if (v73)
              {
                sub_24BC92E0C(&__p, v73);
              }

              *(4 * v70) = v65;
              v67 = 4 * v70 + 4;
              memcpy(0, v68, v69);
              v74 = __p;
              __p = 0;
              v96 = v67;
              v97 = 0;
              if (v74)
              {
                operator delete(v74);
              }
            }

            else
            {
              *v96 = v65;
              v67 = (v66 + 4);
            }

            v96 = v67;
            ++v44;
            v45 = v88;
          }

          while (v44 != v88);
          v46 = __src;
          v75 = v99;
          goto LABEL_76;
        }
      }

LABEL_75:
      v75 = v46;
LABEL_76:
      if ((v75 - v46) >= 5)
      {
        if (v75 == v46)
        {
          v77 = 0uLL;
        }

        else
        {
          v76 = 0;
          v77 = 0uLL;
          do
          {
            v78 = (*(a1 + 80) + 16 * v6);
            v80 = *v78;
            v79 = v78[1];
            if (v79)
            {
              atomic_fetch_add_explicit(&v79->__shared_owners_, 1uLL, memory_order_relaxed);
              v89 = v77;
              sub_24BC9EC78(v79);
              v77 = v89;
              v46 = __src;
              v75 = v99;
            }

            v77 = vaddq_f32(v77, vmulq_n_f32(*(*(v80 + 40) + 16 * v46[v76]), *(__p + v76)));
            ++v76;
          }

          while (v76 < v75 - v46);
        }

        v81 = vmulq_f32(v77, v77);
        v81.i32[3] = 0;
        v82 = vpaddq_f32(v81, v81).u64[0];
        *v82.i32 = sqrtf(vaddv_f32(v82));
        v90 = xmmword_24BFBD1C0;
        if (*v82.i32 > 0.000001)
        {
          v90 = vdivq_f32(v77, vdupq_lane_s32(v82, 0));
        }

        while (v46 != v75)
        {
          v83 = *v46;
          v84 = (*(a1 + 80) + 16 * v6);
          v86 = *v84;
          v85 = v84[1];
          if (v85)
          {
            atomic_fetch_add_explicit(&v85->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_24BC9EC78(v85);
          }

          *(*(v86 + 40) + 16 * v83) = v90;
          ++v46;
        }
      }

LABEL_90:
      v24 = (v24 + 1);
    }

    while (v24 < (*(a1 + 112) - *(a1 + 104)) >> 2);
  }

  if (v94[0])
  {
    v94[1] = v94[0];
    operator delete(v94[0]);
  }

  if (__p)
  {
    v96 = __p;
    operator delete(__p);
  }

  if (__src)
  {
    v99 = __src;
    operator delete(__src);
  }

  if (v102)
  {
    v103 = v102;
    operator delete(v102);
  }

  return 1;
}

void sub_24BCDAE3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, void *a23, uint64_t a24)
{
  if (*(v24 - 129) < 0)
  {
    operator delete(*(v24 - 152));
  }

  _Unwind_Resume(exception_object);
}

void sub_24BCDAEE4(uint64_t a1, unsigned int a2)
{
  v33 = a2;
  v3 = *(sub_24BCB9024(a1 + 104, &v33) + 12);
  v4 = (*(a1 + 8) + 16 * *(a1 + 176));
  v6 = *v4;
  v5 = v4[1];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v5);
  }

  v31 = *(*(v6 + 40) + 16 * v3);
  v7 = sub_24BCB9024(a1 + 104, &v33);
  v8 = *(sub_24BCB9024(a1 + 104, (v7 + 4)) + 12);
  v9 = (*(a1 + 8) + 16 * *(a1 + 176));
  v11 = *v9;
  v10 = v9[1];
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v10);
  }

  v29 = *(*(v11 + 40) + 16 * v8);
  v12 = sub_24BCB9024(a1 + 104, &v33);
  v13 = *(sub_24BCB9024(a1 + 104, v12) + 12);
  v14 = (*(a1 + 8) + 16 * *(a1 + 176));
  v16 = *v14;
  v15 = v14[1];
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v15);
  }

  v17 = vsubq_f32(v29, v31);
  v18 = vsubq_f32(*(*(v16 + 40) + 16 * v13), v31);
  v19 = vmulq_f32(v17, v17);
  v19.f32[0] = sqrtf(v19.f32[2] + vaddv_f32(*v19.f32));
  v20 = vdivq_f32(v17, vdupq_lane_s32(*v19.f32, 0));
  v21 = vmulq_f32(v18, v18);
  v21.f32[0] = sqrtf(v21.f32[2] + vaddv_f32(*v21.f32));
  v22 = vdivq_f32(v18, vdupq_lane_s32(*v21.f32, 0));
  v23 = vmulq_f32(v20, v22);
  v24 = v23.f32[2] + vaddv_f32(*v23.f32);
  if (fabs(v24 + -1.0) >= 0.00000001 && fabs(v24 + 1.0) >= 0.00000001)
  {
    v30 = v22;
    v32 = v20;
    v25 = sub_24BC9ECE4(a1, *(a1 + 180), v33);
    if ((v26 & *v25) != 0)
    {
      v27 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v30, v30), v30, 0xCuLL), vnegq_f32(v32)), v30, vextq_s8(vuzp1q_s32(v32, v32), v32, 0xCuLL));
      v28 = vmulq_f32(v27, v27);
      atan2f(sqrtf(v28.f32[1] + (v28.f32[2] + v28.f32[0])), v24);
    }

    else
    {
      acosf(v24);
    }
  }
}

uint64_t sub_24BCDB11C(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v4 = 0;
  if (a4 == 1)
  {
    v6 = *(a1 + 160) - *(a1 + 152);
    if (2 * ((v6 >> 1) + (v6 >> 2)) == a3)
    {
      sub_24BCB35B4(&v60, a1);
      v60 = &unk_285F941E8;
      sub_24BE2493C(&v60, &v54);
      for (i = 0; i != 3; ++i)
      {
        *&v56[i] = v54.f32[i];
      }

      for (j = 0; j != 3; ++j)
      {
        v58.f64[j] = *(&v54 + j + 4);
      }

      if (v63 != v62)
      {
        v9 = 0;
        __asm { FMOV            V5.2D, #0.5 }

        v15 = vsubq_f64(v58, *v56);
        v16 = COERCE_DOUBLE(*&vmulq_f64(v15, v15).f64[1]) + v15.f64[0] * v15.f64[0] + (v59 - v57) * (v59 - v57);
        *v17.f32 = vcvt_f32_f64(vmulq_f64(vaddq_f64(v58, *v56), _Q5));
        *v15.f64 = (v59 + v57) * 0.5;
        v17.i64[1] = LODWORD(v15.f64[0]);
        v18 = sqrt(v16);
        *&v18 = v18;
        v46 = vdupq_lane_s32(*&v18, 0);
        v47 = v17;
        v19 = 1;
        do
        {
          v20 = (v61 + 16 * v66);
          v22 = *v20;
          v21 = v20[1];
          if (v21)
          {
            atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_24BC9EC78(v21);
          }

          *(*(v22 + 40) + 16 * v9) = vsubq_f32(*(*(v22 + 40) + 16 * v9), v47);
          v23 = (v61 + 16 * v66);
          v25 = *v23;
          v24 = v23[1];
          if (v24)
          {
            atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_24BC9EC78(v24);
          }

          *(*(v25 + 40) + 16 * v9) = vdivq_f32(*(*(v25 + 40) + 16 * v9), v46);
          v9 = v19++;
        }

        while (v9 < (v63 - v62) >> 2);
      }

      v56[0] = 0;
      v56[1] = 0;
      v57 = 0.0;
      v54 = 0uLL;
      v55 = 0;
      v51 = 0;
      v52 = 0;
      v53 = 0;
      __p = 0;
      v49 = 0;
      v50 = 0;
      if ((sub_24BDD1F58(&v60, v56, &v54, &v51, &__p) & 1) != 0 && sub_24BDD2B84(&v60, v56, &v54, &v51, &__p, 2))
      {
        if (v65 != v64)
        {
          v26 = 0;
          v27 = (v65 - v64) >> 2;
          v28 = v51;
          v29 = v56[0];
          v30 = __p;
          v31 = 3;
          v32 = v54.i64[0];
          v33 = v56[0];
          v34 = v54.i64[0];
          do
          {
            v35 = 0;
            v36 = &v29[24 * v26];
            v37 = v28[v26];
            v38 = v37 * v36[1].f64[0];
            *v36 = vmulq_n_f64(*v36, v37);
            v36[1].f64[0] = v38;
            v39 = (v32 + 24 * v26);
            v40 = v30[v26];
            v41 = v40 * v39[1].f64[0];
            *v39 = vmulq_n_f64(*v39, v40);
            v39[1].f64[0] = v41;
            v42 = v31;
            do
            {
              v43 = *&v33[v35];
              *(a2 + 4 * (v42 - 3)) = v43;
              v44 = *(v34 + v35);
              *(a2 + 4 * v42++) = v44;
              v35 += 8;
            }

            while (v35 != 24);
            ++v26;
            v31 += 6;
            v34 += 24;
            v33 += 24;
          }

          while (v27 > v26);
        }

        v4 = 1;
      }

      else
      {
        v4 = 0;
      }

      if (__p)
      {
        v49 = __p;
        operator delete(__p);
      }

      if (v51)
      {
        v52 = v51;
        operator delete(v51);
      }

      if (v54.i64[0])
      {
        v54.i64[1] = v54.i64[0];
        operator delete(v54.i64[0]);
      }

      if (v56[0])
      {
        v56[1] = v56[0];
        operator delete(v56[0]);
      }

      sub_24BCB36B8(&v60);
    }
  }

  return v4;
}

BOOL sub_24BCDB4B8(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a3;
  v4 = *(a1 + 160) - *(a1 + 152);
  v5 = 2 * ((v4 >> 1) + (v4 >> 2));
  if (v5 == a3)
  {
    sub_24BC836D4(__p, off_27F078FD8[0]);
    memset(v24, 0, sizeof(v24));
    v8 = sub_24BCDCF20((a1 + 56), v24, __p);
    v23 = v8;
    if (v22 < 0)
    {
      operator delete(__p[0]);
    }

    if (v8 == -1)
    {
      sub_24BC836D4(v24, off_27F078FD8[0]);
      sub_24BCDB66C(a1);
    }

    v19 = v5;
    v20 = v3;
    if (*(a1 + 160) != *(a1 + 152))
    {
      v9 = 0;
      LODWORD(v10) = 0;
      do
      {
        v11 = 24 * v10;
        v12 = 6;
        v13 = v9;
        do
        {
          v14 = *(a2 + 4 * v13);
          v15 = (*(a1 + 56) + 16 * v23);
          v17 = *v15;
          v16 = v15[1];
          if (v16)
          {
            atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_24BC9EC78(v16);
          }

          *(*(v17 + 40) + v11) = v14;
          v11 += 4;
          ++v13;
          --v12;
        }

        while (v12);
        v10 = (v10 + 1);
        v9 += 6;
      }

      while (v10 < (*(a1 + 160) - *(a1 + 152)) >> 2);
    }

    v3 = v20;
    v5 = v19;
  }

  return v5 == v3;
}

void sub_24BCDB63C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BCDB6E4(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  if (*a1 != v2)
  {
    v3 = 0;
    while (*v1)
    {
      v1 += 2;
      ++v3;
      if (v1 == v2)
      {
        goto LABEL_7;
      }
    }
  }

  if (v1 == v2)
  {
LABEL_7:
    v4 = 0uLL;
    sub_24BCB52F4(a1, &v4);
    if (*(&v4 + 1))
    {
      sub_24BC9EC78(*(&v4 + 1));
    }
  }

  sub_24BCDB7D8();
}

void sub_24BCDB7C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_24BC9EC78(a12);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24BCDB84C(void *a1, __int128 *a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285F94220;
  sub_24BCB5648(a1 + 3, a2, a3);
  a1[3] = &unk_285F94258;
  a1[9] = 0;
  a1[10] = 0;
  a1[8] = 0;
  return a1;
}

void sub_24BCDB8EC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F94220;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BCDB96C(void *a1)
{
  sub_24BCDBAF4(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BCDB9C4(void *a1)
{
  v2 = a1[5];
  a1[6] = 0;
  a1[7] = 0;
  a1[5] = 0;
  if (v2)
  {
    operator delete(v2);
  }
}

uint64_t sub_24BCDB9E0(void *a1)
{
  v4 = 0;
  v2 = a1[6];
  if (v2 >= a1[7])
  {
    result = sub_24BCDBE20(a1 + 5, &v4);
  }

  else
  {
    *v2 = 0;
    result = (v2 + 1);
  }

  a1[6] = result;
  return result;
}

double sub_24BCDBA34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  result = *(v3 + 8 * a2);
  *(v3 + 8 * a2) = *(v3 + 8 * a3);
  *(v3 + 8 * a3) = result;
  return result;
}

double sub_24BCDBA4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  result = *(v3 + 8 * a2);
  *(v3 + 8 * a3) = result;
  return result;
}

uint64_t sub_24BCDBAF4(void *a1)
{
  *a1 = &unk_285F94258;
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  return sub_24BCB2264(a1);
}

void *sub_24BCDBB54(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      v3 = result;
      sub_24BC91F60(result, a2);
    }

    sub_24BC8E01C();
  }

  return result;
}

void sub_24BCDBBF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24BCDBC2C(void *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = *result;
    v6 = (a2[1] + *result - v3);
    do
    {
      *v6 = *v5;
      v6[1] = v5[1];
      v5 += 2;
      v6 += 2;
    }

    while (v5 != v3);
  }

  a2[1] = v4;
  v7 = *result;
  *result = v4;
  result[1] = v2;
  a2[1] = v7;
  v8 = result[1];
  result[1] = a2[2];
  a2[2] = v8;
  v9 = result[2];
  result[2] = a2[3];
  a2[3] = v9;
  *a2 = a2[1];
  return result;
}

void sub_24BCDBCA8(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    sub_24BCDBCD8(a1, a2 - v2);
  }
}

void sub_24BCDBCD8(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 3);
    if (v7 >> 61)
    {
      sub_24BC8E01C();
    }

    v8 = v6 >> 3;
    v9 = v4 - *a1;
    if (v9 >> 2 > v7)
    {
      v7 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    v15 = a1;
    if (v10)
    {
      sub_24BC91F60(a1, v10);
    }

    __p = 0;
    v12 = 8 * v8;
    v14 = 0;
    bzero((8 * v8), 8 * a2);
    v13 = 8 * v8 + 8 * a2;
    sub_24BCDBC2C(a1, &__p);
    if (v13 != v12)
    {
      v13 += (v12 - v13 + 7) & 0xFFFFFFFFFFFFFFF8;
    }

    if (__p)
    {
      operator delete(__p);
    }
  }
}

void sub_24BCDBDE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BCDBE20(void *a1, _DWORD *a2)
{
  v2 = (a1[1] - *a1) >> 3;
  v3 = v2 + 1;
  if ((v2 + 1) >> 61)
  {
    sub_24BC8E01C();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 2 > v3)
  {
    v3 = v6 >> 2;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    v7 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v15 = a1;
  if (v7)
  {
    sub_24BC91F60(a1, v7);
  }

  v8 = (8 * v2);
  __p = 0;
  v12 = v8;
  *v8 = *a2;
  v8[1] = a2[1];
  v13 = 8 * v2 + 8;
  v14 = 0;
  sub_24BCDBC2C(a1, &__p);
  v9 = a1[1];
  if (v13 != v12)
  {
    v13 += (v12 - v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v9;
}

void sub_24BCDBF10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24BCDBF48(void *a1, uint64_t a2)
{
  v4 = sub_24BCB5B18(a1, a2);
  *v4 = &unk_285F94258;
  v4[6] = 0;
  v4[7] = 0;
  v4[5] = 0;
  sub_24BCDBFBC((v4 + 5), *(a2 + 40), *(a2 + 48), (*(a2 + 48) - *(a2 + 40)) >> 3);
  return a1;
}

uint64_t sub_24BCDBFBC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_24BC91F24(result, a4);
  }

  return result;
}

void sub_24BCDC024(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BCDC0A8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_24BFB8C1C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BCDC0C4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

uint64_t sub_24BCDC0FC(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_24BCDC130(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  if (*a1 != v2)
  {
    v3 = 0;
    while (*v1)
    {
      v1 += 2;
      ++v3;
      if (v1 == v2)
      {
        goto LABEL_7;
      }
    }
  }

  if (v1 == v2)
  {
LABEL_7:
    v4 = 0uLL;
    sub_24BCB52F4(a1, &v4);
    if (*(&v4 + 1))
    {
      sub_24BC9EC78(*(&v4 + 1));
    }
  }

  sub_24BCDC224();
}

void sub_24BCDC20C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_24BC9EC78(a12);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24BCDC298(void *a1, __int128 *a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285F94300;
  sub_24BCB5648(a1 + 3, a2, a3);
  a1[3] = &unk_285F94338;
  a1[9] = 0;
  a1[10] = 0;
  a1[8] = 0;
  return a1;
}

void sub_24BCDC338(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F94300;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BCDC3B8(void *a1)
{
  sub_24BCDC558(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BCDC41C(void *a1)
{
  v2 = a1[5];
  a1[6] = 0;
  a1[7] = 0;
  a1[5] = 0;
  if (v2)
  {
    operator delete(v2);
  }
}

uint64_t sub_24BCDC438(uint64_t a1)
{
  v3 = 0;
  v2 = 0;
  return sub_24BCDC9D4((a1 + 40), &v2);
}

double sub_24BCDC468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = v3 + 12 * a2;
  v5 = *(v4 + 8);
  v6 = v3 + 12 * a3;
  *(v4 + 8) = *(v6 + 8);
  result = *v4;
  *v4 = *v6;
  *v6 = result;
  *(v6 + 8) = v5;
  return result;
}

double sub_24BCDC49C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = v3 + 12 * a2;
  v5 = v3 + 12 * a3;
  result = *v4;
  *v5 = *v4;
  *(v5 + 8) = *(v4 + 8);
  return result;
}

uint64_t sub_24BCDC558(void *a1)
{
  *a1 = &unk_285F94338;
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  return sub_24BCB2264(a1);
}

void *sub_24BCDC5B8(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 2) < a2)
  {
    if (a2 < 0x1555555555555556)
    {
      v2 = result[1] - *result;
      v3 = result;
      sub_24BCDC764(result, a2);
    }

    sub_24BC8E01C();
  }

  return result;
}

void sub_24BCDC690(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_24BCDC6E0(uint64_t *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = *result;
    v6 = a2[1] + *result - v3;
    do
    {
      for (i = 0; i != 12; i += 4)
      {
        *(v6 + i) = *(v5 + i);
      }

      v5 += 12;
      v6 += 12;
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

void sub_24BCDC764(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1555555555555556)
  {
    operator new();
  }

  sub_24BC8DFE8();
}

void sub_24BCDC7BC(void *a1, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 2);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    sub_24BCDC7F8(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 12 * a2;
  }
}

void sub_24BCDC7F8(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 2) >= a2)
  {
    if (a2)
    {
      v10 = 12 * ((12 * a2 - 12) / 0xC) + 12;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 2);
    v7 = v6 + a2;
    if (v6 + a2 > 0x1555555555555555)
    {
      sub_24BC8E01C();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 2);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x1555555555555555;
    }

    else
    {
      v9 = v7;
    }

    v16 = a1;
    if (v9)
    {
      sub_24BCDC764(a1, v9);
    }

    __p = 0;
    v13 = 12 * v6;
    v15 = 0;
    v11 = 12 * ((12 * a2 - 12) / 0xC) + 12;
    bzero((12 * v6), v11);
    v14 = 12 * v6 + v11;
    sub_24BCDC6E0(a1, &__p);
    if (v14 != v13)
    {
      v14 = (v14 - v13 - 12) % 0xC + v13;
    }

    if (__p)
    {
      operator delete(__p);
    }
  }
}

void sub_24BCDC984(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BCDC9D4(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_24BCDCA2C(a1, a2);
  }

  else
  {
    for (i = 0; i != 12; i += 4)
    {
      *(v3 + i) = *(a2 + i);
    }

    result = v3 + 12;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_24BCDCA2C(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 2);
  v3 = v2 + 1;
  if (v2 + 1 > 0x1555555555555555)
  {
    sub_24BC8E01C();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 2) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 2);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 2) >= 0xAAAAAAAAAAAAAAALL)
  {
    v6 = 0x1555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v15 = a1;
  if (v6)
  {
    sub_24BCDC764(a1, v6);
  }

  v7 = 0;
  v8 = 12 * v2;
  __p = 0;
  v12 = 12 * v2;
  v14 = 0;
  do
  {
    *(v8 + v7) = *(a2 + v7);
    v7 += 4;
  }

  while (v7 != 12);
  v13 = v8 + 12;
  sub_24BCDC6E0(a1, &__p);
  v9 = a1[1];
  if (v13 != v12)
  {
    v13 = (v13 - v12 - 12) % 0xCuLL + v12;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v9;
}

void sub_24BCDCB60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24BCDCBB0(void *a1, uint64_t a2)
{
  v4 = sub_24BCB5B18(a1, a2);
  *v4 = &unk_285F94338;
  v4[6] = 0;
  v4[7] = 0;
  v4[5] = 0;
  sub_24BCDCC30((v4 + 5), *(a2 + 40), *(a2 + 48), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 48) - *(a2 + 40)) >> 2));
  return a1;
}

uint64_t sub_24BCDCC30(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_24BCDCCBC(result, a4);
  }

  return result;
}

void sub_24BCDCCA0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BCDCCBC(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1555555555555556)
  {
    sub_24BCDC764(a1, a2);
  }

  sub_24BC8E01C();
}

void sub_24BCDCD70(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_24BFB8C1C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BCDCD8C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

uint64_t sub_24BCDCDC4(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_24BCDCDF8(uint64_t **a1, uint64_t a2, const void **a3)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    v6 = 0;
    while (1)
    {
      v7 = *v3;
      if (*v3)
      {
        break;
      }

LABEL_23:
      v3 += 2;
      v6 = (v6 + 1);
      if (v3 == v4)
      {
        return 0xFFFFFFFFLL;
      }
    }

    if (*(v7 + 31) < 0)
    {
      sub_24BC8DE9C(__p, *(v7 + 8), *(v7 + 16));
    }

    else
    {
      v8 = *(v7 + 8);
      v18 = *(v7 + 24);
      *__p = v8;
    }

    v9 = SHIBYTE(v18);
    if (v18 >= 0)
    {
      v10 = HIBYTE(v18);
    }

    else
    {
      v10 = __p[1];
    }

    v11 = *(a3 + 23);
    v12 = v11;
    if (v11 < 0)
    {
      v11 = a3[1];
    }

    if (v10 == v11 && (v18 >= 0 ? (v13 = __p) : (v13 = __p[0]), v12 >= 0 ? (v14 = a3) : (v14 = *a3), !memcmp(v13, v14, v10)))
    {
      v15 = *(*v3 + 32) == sub_24BCB645C;
      if ((v9 & 0x80000000) == 0)
      {
LABEL_22:
        if (v15)
        {
          return v6;
        }

        goto LABEL_23;
      }
    }

    else
    {
      v15 = 0;
      if ((v9 & 0x80000000) == 0)
      {
        goto LABEL_22;
      }
    }

    operator delete(__p[0]);
    goto LABEL_22;
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_24BCDCF20(uint64_t **a1, uint64_t a2, const void **a3)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    v6 = 0;
    while (1)
    {
      v7 = *v3;
      if (*v3)
      {
        break;
      }

LABEL_23:
      v3 += 2;
      v6 = (v6 + 1);
      if (v3 == v4)
      {
        return 0xFFFFFFFFLL;
      }
    }

    if (*(v7 + 31) < 0)
    {
      sub_24BC8DE9C(__p, *(v7 + 8), *(v7 + 16));
    }

    else
    {
      v8 = *(v7 + 8);
      v18 = *(v7 + 24);
      *__p = v8;
    }

    v9 = SHIBYTE(v18);
    if (v18 >= 0)
    {
      v10 = HIBYTE(v18);
    }

    else
    {
      v10 = __p[1];
    }

    v11 = *(a3 + 23);
    v12 = v11;
    if (v11 < 0)
    {
      v11 = a3[1];
    }

    if (v10 == v11 && (v18 >= 0 ? (v13 = __p) : (v13 = __p[0]), v12 >= 0 ? (v14 = a3) : (v14 = *a3), !memcmp(v13, v14, v10)))
    {
      v15 = *(*v3 + 32) == sub_24BCDD048;
      if ((v9 & 0x80000000) == 0)
      {
LABEL_22:
        if (v15)
        {
          return v6;
        }

        goto LABEL_23;
      }
    }

    else
    {
      v15 = 0;
      if ((v9 & 0x80000000) == 0)
      {
        goto LABEL_22;
      }
    }

    operator delete(__p[0]);
    goto LABEL_22;
  }

  return 0xFFFFFFFFLL;
}

void sub_24BCDD05C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  if (*a1 != v2)
  {
    v3 = 0;
    while (*v1)
    {
      v1 += 2;
      ++v3;
      if (v1 == v2)
      {
        goto LABEL_7;
      }
    }
  }

  if (v1 == v2)
  {
LABEL_7:
    v4 = 0uLL;
    sub_24BCB52F4(a1, &v4);
    if (*(&v4 + 1))
    {
      sub_24BC9EC78(*(&v4 + 1));
    }
  }

  sub_24BCDD150();
}

void sub_24BCDD138(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_24BC9EC78(a12);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24BCDD1C4(void *a1, __int128 *a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285F943E0;
  sub_24BCB5648(a1 + 3, a2, a3);
  a1[3] = &unk_285F94418;
  a1[9] = 0;
  a1[10] = 0;
  a1[8] = 0;
  return a1;
}

void sub_24BCDD264(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F943E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BCDD2E4(void *a1)
{
  sub_24BCDD598(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BCDD348(void *a1)
{
  v2 = a1[5];
  a1[6] = 0;
  a1[7] = 0;
  a1[5] = 0;
  if (v2)
  {
    operator delete(v2);
  }
}

void sub_24BCDD364(void *a1)
{
  v3 = a1[6];
  v2 = a1[7];
  if (v3 >= v2)
  {
    v5 = a1[5];
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v5) >> 3);
    v7 = v6 + 1;
    if (v6 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_24BC8E01C();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v2 - v5) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_24BCDD6B8((a1 + 5), v9);
    }

    v10 = 24 * v6;
    *v10 = 0;
    *(v10 + 8) = 0;
    *(v10 + 16) = 0;
    v4 = 24 * v6 + 24;
    v11 = a1[5];
    v12 = a1[6] - v11;
    v13 = 24 * v6 - v12;
    memcpy((v10 - v12), v11, v12);
    v14 = a1[5];
    a1[5] = v13;
    a1[6] = v4;
    a1[7] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v3 = 0;
    v3[1] = 0;
    v4 = (v3 + 3);
    v3[2] = 0;
  }

  a1[6] = v4;
}

__n128 sub_24BCDD458(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 40);
  v4 = (v3 + 24 * a2);
  v5 = v4[1].n128_u64[0];
  result = *v4;
  v7 = (v3 + 24 * a3);
  v8 = v7[1].n128_u64[0];
  *v4 = *v7;
  v4[1].n128_u64[0] = v8;
  v9 = (*(a1 + 40) + 24 * a3);
  *v9 = result;
  v9[1].n128_u64[0] = v5;
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

__n128 sub_24BCDD4DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = (v3 + 24 * a2);
  result = *v4;
  v6 = (v3 + 24 * a3);
  v6[1].n128_u64[0] = v4[1].n128_u64[0];
  *v6 = result;
  return result;
}

uint64_t sub_24BCDD598(void *a1)
{
  *a1 = &unk_285F94418;
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  return sub_24BCB2264(a1);
}

void *sub_24BCDD5F8(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      v2 = result[1] - *result;
      sub_24BCDD6B8(result, a2);
    }

    sub_24BC8E01C();
  }

  return result;
}

void sub_24BCDD6B8(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_24BC8DFE8();
}

void sub_24BCDD710(void *a1, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    sub_24BCDD74C(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 24 * a2;
  }
}

void sub_24BCDD74C(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_24BC8E01C();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_24BCDD6B8(a1, v9);
    }

    v11 = 24 * v6;
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v13;
    *(a1 + 16) = 0;
    if (v16)
    {

      operator delete(v16);
    }
  }
}

void *sub_24BCDD8C0(void *a1, uint64_t a2)
{
  v4 = sub_24BCB5B18(a1, a2);
  *v4 = &unk_285F94418;
  v4[6] = 0;
  v4[7] = 0;
  v4[5] = 0;
  sub_24BCDD940((v4 + 5), *(a2 + 40), *(a2 + 48), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 48) - *(a2 + 40)) >> 3));
  return a1;
}

uint64_t sub_24BCDD940(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_24BCDD9BC(result, a4);
  }

  return result;
}

void sub_24BCDD9A0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BCDD9BC(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_24BCDD6B8(a1, a2);
  }

  sub_24BC8E01C();
}

void sub_24BCDDA70(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_24BFB8C1C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BCDDA8C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

uint64_t sub_24BCDDAC4(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_24BCDDAF8(uint64_t a1, _DWORD *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_24BCDDB58(a1, a2);
}

void sub_24BCDDB2C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    MEMORY[0x24C254890](v3, 0x1000C8077774924);
    *(v1 + 16) = 0;
  }

  _Unwind_Resume(exception_object);
}

void sub_24BCDDB58(uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    MEMORY[0x24C254890](v4, 0x1000C8077774924);
    *(a1 + 16) = 0;
  }

  v5 = a2[1];
  *a1 = *a2;
  *(a1 + 4) = v5;
  *(a1 + 8) = a2[2];
  operator new[]();
}

void sub_24BCDDC0C(uint64_t a1, _DWORD *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_24BCDDC6C(a1, a2);
}

void sub_24BCDDC40(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    MEMORY[0x24C254890](v3, 0x1000C8052888210);
    *(v1 + 16) = 0;
  }

  _Unwind_Resume(exception_object);
}

void sub_24BCDDC6C(_DWORD *a1, _DWORD *a2)
{
  v2 = a2[1];
  *a1 = *a2;
  a1[1] = v2;
  a1[2] = a2[2];
  operator new[]();
}

void sub_24BCDDCFC(uint64_t a1, _DWORD *a2)
{
  *(a1 + 16) = 0;
  v2 = a2[1];
  *a1 = *a2;
  *(a1 + 4) = v2;
  *(a1 + 8) = 1;
  operator new[]();
}

void sub_24BCDDD90(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    MEMORY[0x24C254890](v3, 0x1000C8077774924);
    *(v1 + 16) = 0;
  }

  _Unwind_Resume(exception_object);
}

uint64_t GESSAlgRepairTopology(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(GESSAlgRepairTopologyExtended);
  v5 = objc_msgSend_run_(v2, v3, v1, v4);

  return v5;
}

uint64_t GESSAlgCheckDegeneratedTriangles(void *a1, _BYTE *a2)
{
  v3 = a1;
  if (objc_msgSend_valid(v3, v4, v5, v6) && objc_msgSend_meshType(v3, v7, v8, v9) == 1)
  {
    v13 = objc_msgSend_meshImpl(v3, v10, v11, v12);
    v17 = 0;
    sub_24BCDEA88(__p, (*(v13 + 112) - *(v13 + 104)) >> 2);
    v14 = sub_24BE3F020(v13, __p, &v17);
    if (v14)
    {
      *a2 = v17;
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

void sub_24BCDE1D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t GESSAlgRepairDegeneratedTriangles(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (objc_msgSend_valid(v3, v5, v6, v7) && objc_msgSend_meshType(v3, v8, v9, v10) == 1)
  {
    v14 = objc_msgSend_meshImpl(v3, v11, v12, v13);
    v26 = 0;
    objc_msgSend_shortEdgesCollapsingRatioThreshold(v4, v15, v16, v17);
    v19 = v18;
    v23 = objc_msgSend_enableTopologicalChange(v4, v20, v21, v22);
    v24 = sub_24BE3F390(v14, v23, &v26, v19);
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

void sub_24BCDE380(const void **a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1 == v3)
  {
    v5 = *a1;
  }

  else
  {
    v4 = 0;
    v5 = *a1;
    while (*v5)
    {
      v5 += 16;
      ++v4;
      if (v5 == v3)
      {
        goto LABEL_8;
      }
    }
  }

  if (v5 == v3)
  {
LABEL_8:
    v6 = a1[2];
    if (v3 >= v6)
    {
      v8 = v3 - v2;
      v9 = (v3 - v2) >> 4;
      v10 = v9 + 1;
      if ((v9 + 1) >> 60)
      {
        sub_24BC8E01C();
      }

      v11 = v6 - v2;
      if (v11 >> 3 > v10)
      {
        v10 = v11 >> 3;
      }

      if (v11 >= 0x7FFFFFFFFFFFFFF0)
      {
        v10 = 0xFFFFFFFFFFFFFFFLL;
      }

      v15[4] = a1;
      if (v10)
      {
        sub_24BCB53E8(a1, v10);
      }

      v12 = (16 * v9);
      v7 = 16 * v9 + 16;
      *v12 = 0;
      v12[1] = 0;
      memcpy(0, v2, v8);
      v13 = *a1;
      *a1 = 0;
      a1[1] = v7;
      v14 = a1[2];
      a1[2] = 0;
      v15[2] = v13;
      v15[3] = v14;
      v15[0] = v13;
      v15[1] = v13;
      sub_24BCB5430(v15);
    }

    else
    {
      v7 = (v3 + 16);
      *v3 = 0;
      *(v3 + 1) = 0;
    }

    a1[1] = v7;
  }

  sub_24BCDE510();
}

void *sub_24BCDE584(void *a1, __int128 *a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285F944C0;
  sub_24BCB5648(a1 + 3, a2, a3);
  a1[3] = &unk_285F944F8;
  a1[9] = 0;
  a1[10] = 0;
  a1[8] = 0;
  return a1;
}

void sub_24BCDE624(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F944C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BCDE6A4(void *a1)
{
  sub_24BCDE8C4(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BCDE6FC(void *a1)
{
  v2 = a1[5];
  a1[6] = 0;
  a1[7] = 0;
  a1[5] = 0;
  if (v2)
  {
    operator delete(v2);
  }
}

void sub_24BCDE718(void *a1)
{
  v3 = a1[6];
  v2 = a1[7];
  if (v3 >= v2)
  {
    v5 = a1[5];
    v6 = v3 - v5;
    v7 = (v3 - v5) >> 2;
    v8 = v7 + 1;
    if ((v7 + 1) >> 62)
    {
      sub_24BC8E01C();
    }

    v9 = v2 - v5;
    if (v9 >> 1 > v8)
    {
      v8 = v9 >> 1;
    }

    v10 = v9 >= 0x7FFFFFFFFFFFFFFCLL;
    v11 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v10)
    {
      v11 = v8;
    }

    if (v11)
    {
      sub_24BC92E0C((a1 + 5), v11);
    }

    v12 = (v3 - v5) >> 2;
    v13 = (4 * v7);
    v14 = (4 * v7 - 4 * v12);
    *v13 = 0;
    v4 = v13 + 1;
    memcpy(v14, v5, v6);
    v15 = a1[5];
    a1[5] = v14;
    a1[6] = v4;
    a1[7] = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v3 = 0;
    v4 = v3 + 4;
  }

  a1[6] = v4;
}

uint64_t sub_24BCDE7EC(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 40);
  v4 = *(v3 + 4 * a2);
  *(v3 + 4 * a2) = *(v3 + 4 * a3);
  *(v3 + 4 * a3) = v4;
  return result;
}

uint64_t sub_24BCDE8C4(void *a1)
{
  *a1 = &unk_285F944F8;
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  return sub_24BCB2264(a1);
}

void *sub_24BCDE924(void *a1, uint64_t a2)
{
  v4 = sub_24BCB5B18(a1, a2);
  *v4 = &unk_285F944F8;
  v4[6] = 0;
  v4[7] = 0;
  v4[5] = 0;
  sub_24BCB7960((v4 + 5), *(a2 + 40), *(a2 + 48), (*(a2 + 48) - *(a2 + 40)) >> 2);
  return a1;
}

void sub_24BCDEA00(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_24BFB8C1C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BCDEA1C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

uint64_t sub_24BCDEA54(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void *sub_24BCDEA88(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_24BC94FEC(result, a2);
  }

  return result;
}

void sub_24BCDEB80(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BCDEB9C()
{
  if ((*off_281C0BC90() & 1) == 0)
  {
    sub_24BFB8CB8();
  }

  return off_281C0BC78();
}

void **sub_24BCDEBE0(void **a1)
{
  v3 = a1;
  sub_24BCDEE04(&v3);
  return a1;
}

uint64_t sub_24BCDEC18(uint64_t a1, const std::string *a2, uint64_t a3, uint64_t a4)
{
  *a1 = a3;
  *(a1 + 8) = a4;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  std::string::operator=((a1 + 16), a2);
  *(a1 + 40) = std::chrono::system_clock::now();
  sub_24BCDED78(a1 + 56);
  return a1;
}

void sub_24BCDEC78(_Unwind_Exception *exception_object)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BCDEC98(uint64_t a1)
{
  *(a1 + 184) = *a1;
  *(a1 + 48) = std::chrono::system_clock::now();
  sub_24BCDED78(a1 + 120);
  if ((*off_281C0BC90() & 1) == 0)
  {
    sub_24BFB8CB8();
  }

  v2 = off_281C0BC78();
  sub_24BCDED34(v2, (a1 + 16));
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

uint64_t sub_24BCDED34(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_24BCDEF60(a1, a2);
  }

  else
  {
    sub_24BCDEEA8(a1, a2);
    result = v3 + 184;
  }

  *(a1 + 8) = result;
  return result;
}

BOOL sub_24BCDED78(uint64_t a1)
{
  *a1 = sub_24BD22D48();
  task_info_outCnt = 93;
  v2 = task_info(*MEMORY[0x277D85F48], 0x16u, task_info_out, &task_info_outCnt);
  if (!v2)
  {
    v3 = *task_info_out;
    v4 = v11;
    *(a1 + 8) = v10;
    *(a1 + 16) = v3;
    *(a1 + 32) = v13;
    v5 = v9;
    *(a1 + 48) = v4;
    *(a1 + 56) = v5;
    *(a1 + 24) = v12;
  }

  return v2 == 0;
}

void sub_24BCDEE04(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_24BCDEE58(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_24BCDEE58(void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 161);
    v3 -= 23;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

__n128 sub_24BCDEEA8(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    sub_24BC8DE9C(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v5;
  }

  v6 = *(a2 + 24);
  *(v4 + 40) = *(a2 + 40);
  *(v4 + 24) = v6;
  v7 = *(a2 + 56);
  v8 = *(a2 + 72);
  v9 = *(a2 + 88);
  *(v4 + 104) = *(a2 + 104);
  *(v4 + 88) = v9;
  *(v4 + 72) = v8;
  *(v4 + 56) = v7;
  result = *(a2 + 120);
  v11 = *(a2 + 136);
  v12 = *(a2 + 152);
  *(v4 + 168) = *(a2 + 168);
  *(v4 + 152) = v12;
  *(v4 + 136) = v11;
  *(v4 + 120) = result;
  *(a1 + 8) = v4 + 184;
  return result;
}

uint64_t sub_24BCDEF60(uint64_t a1, __int128 *a2)
{
  v2 = 0xD37A6F4DE9BD37A7 * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x1642C8590B21642)
  {
    sub_24BC8E01C();
  }

  if (0xA6F4DE9BD37A6F4ELL * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0xA6F4DE9BD37A6F4ELL * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xD37A6F4DE9BD37A7 * ((*(a1 + 16) - *a1) >> 3) >= 0xB21642C8590B21)
  {
    v6 = 0x1642C8590B21642;
  }

  else
  {
    v6 = v3;
  }

  v27 = a1;
  if (v6)
  {
    sub_24BCDF11C(a1, v6);
  }

  v7 = 184 * v2;
  v24 = 0;
  v25 = v7;
  v26 = v7;
  if (*(a2 + 23) < 0)
  {
    sub_24BC8DE9C(v7, *a2, *(a2 + 1));
    v9 = v25;
    v10 = v26;
  }

  else
  {
    v8 = *a2;
    *(v7 + 16) = *(a2 + 2);
    *v7 = v8;
    v9 = v7;
    v10 = v7;
  }

  v11 = *(a2 + 24);
  *(v7 + 40) = *(a2 + 40);
  *(v7 + 24) = v11;
  v12 = *(a2 + 56);
  v13 = *(a2 + 72);
  v14 = *(a2 + 88);
  *(v7 + 104) = *(a2 + 104);
  *(v7 + 88) = v14;
  *(v7 + 72) = v13;
  *(v7 + 56) = v12;
  v15 = *(a2 + 120);
  v16 = *(a2 + 136);
  v17 = *(a2 + 152);
  *(v7 + 168) = *(a2 + 168);
  *(v7 + 152) = v17;
  *(v7 + 136) = v16;
  *(v7 + 120) = v15;
  *&v26 = v10 + 184;
  v18 = *(a1 + 8);
  v19 = v9 + *a1 - v18;
  sub_24BCDF178(a1, *a1, v18, v19);
  v20 = *a1;
  *a1 = v19;
  v21 = *(a1 + 16);
  v23 = v26;
  *(a1 + 8) = v26;
  *&v26 = v20;
  *(&v26 + 1) = v21;
  v24 = v20;
  v25 = v20;
  sub_24BCDF2FC(&v24);
  return v23;
}

void sub_24BCDF108(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_24BCDF2FC(va);
  _Unwind_Resume(a1);
}

void sub_24BCDF11C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1642C8590B21643)
  {
    operator new();
  }

  sub_24BC8DFE8();
}

uint64_t sub_24BCDF178(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v19 = a4;
  v18 = a4;
  v16[0] = a1;
  v16[1] = &v18;
  v16[2] = &v19;
  if (a2 == a3)
  {
    v17 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 16) = *(v6 + 2);
      *a4 = v7;
      *(v6 + 1) = 0;
      *(v6 + 2) = 0;
      *v6 = 0;
      v8 = *(v6 + 72);
      v9 = *(v6 + 88);
      v10 = *(v6 + 104);
      *(a4 + 56) = *(v6 + 56);
      *(a4 + 104) = v10;
      *(a4 + 88) = v9;
      *(a4 + 72) = v8;
      v11 = *(v6 + 24);
      *(a4 + 40) = *(v6 + 40);
      *(a4 + 24) = v11;
      v12 = *(v6 + 136);
      v13 = *(v6 + 152);
      v14 = *(v6 + 168);
      *(a4 + 120) = *(v6 + 120);
      *(a4 + 168) = v14;
      *(a4 + 152) = v13;
      *(a4 + 136) = v12;
      v6 = (v6 + 184);
      a4 += 184;
    }

    while (v6 != a3);
    v19 = a4;
    v17 = 1;
    while (v5 != a3)
    {
      if (*(v5 + 23) < 0)
      {
        operator delete(*v5);
      }

      v5 = (v5 + 184);
    }
  }

  return sub_24BCDF27C(v16);
}

uint64_t sub_24BCDF27C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_24BCDF2B4(a1);
  }

  return a1;
}

void sub_24BCDF2B4(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 161);
    v1 -= 23;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

uint64_t sub_24BCDF2FC(uint64_t a1)
{
  sub_24BCDF334(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_24BCDF334(uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 23;
      *(a1 + 16) = v2 - 23;
      if (*(v2 - 161) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

void sub_24BCDF390(uint64_t a1, void *a2)
{

  _tlv_atexit(sub_24BCDEBE0, a2);
}

uint64_t sub_24BCDF3B0()
{
  v0 = objc_autoreleasePoolPush();
  v4 = objc_msgSend_processInfo(MEMORY[0x277CCAC38], v1, v2, v3);
  v8 = objc_msgSend_physicalMemory(v4, v5, v6, v7);

  objc_autoreleasePoolPop(v0);
  return v8;
}

BOOL sub_24BCDF418(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_valueForKey_(a1, a2, a2, a4);
  v5 = v4 != 0;

  return v5;
}

uint64_t sub_24BCDF450(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_objectForKey_(a1, a2, a2, a4);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

BOOL sub_24BCDF4B0(uint64_t *a1)
{
  v51[1] = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = NSTemporaryDirectory();
  v4 = objc_alloc(MEMORY[0x277CBEBC0]);
  inited = objc_msgSend_initFileURLWithPath_(v4, v5, v3, v6);
  v8 = *MEMORY[0x277CBEA50];
  v51[0] = *MEMORY[0x277CBEA50];
  v10 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v9, v51, 1);
  v50 = 0;
  v12 = objc_msgSend_resourceValuesForKeys_error_(inited, v11, v10, &v50);
  v13 = v50;

  if (v12)
  {
    v14 = v8;
    v17 = objc_msgSend_valueForKey_(v12, v15, v14, v16);
    v18 = v17 == 0;

    if (v18 || !sub_24BCDF450(v12, v14, v19, v20))
    {
      v28 = 0;
    }

    else
    {
      v23 = objc_msgSend_valueForKey_(v12, v21, v14, v22);
      v27 = objc_msgSend_unsignedLongLongValue(v23, v24, v25, v26);

      a1[1] = v27;
      v28 = 1;
    }
  }

  else
  {
    v28 = 0;
  }

  v29 = NSTemporaryDirectory();
  v33 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v30, v31, v32);
  v35 = v33;
  if (v29)
  {
    v36 = v33 == 0;
  }

  else
  {
    v36 = 1;
  }

  if (v36)
  {
    v37 = 0;
  }

  else
  {
    v37 = v28;
  }

  if (v37)
  {
    v38 = objc_msgSend_attributesOfFileSystemForPath_error_(v33, v34, v29, 0);
    v41 = v38;
    if (v38)
    {
      v42 = objc_msgSend_objectForKeyedSubscript_(v38, v39, *MEMORY[0x277CCA1D0], v40);
      v46 = v42;
      v47 = v42 != 0;
      if (v42)
      {
        *a1 = objc_msgSend_longLongValue(v42, v43, v44, v45);
      }
    }

    else
    {
      v47 = 0;
    }
  }

  else
  {
    v47 = 0;
  }

  objc_autoreleasePoolPop(v2);
  v48 = *MEMORY[0x277D85DE8];
  return v47;
}

uint64_t sub_24BCDF764()
{
  if ((atomic_load_explicit(&qword_27F079178, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079178))
  {
    sub_24BCE01EC();
  }

  return qword_27F079168;
}

uint64_t sub_24BCDF80C(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    sub_24BC9EC78(v2);
  }

  return a1;
}

void sub_24BCDF83C()
{
  v0 = sub_24BCDF764();

  sub_24BCDF864(v0);
}

void sub_24BCDF864(uint64_t a1)
{
  v2.__m_ = (a1 + 56);
  v2.__owns_ = 1;
  std::mutex::lock((a1 + 56));
  if (*a1)
  {
    goto LABEL_4;
  }

  do
  {
    std::condition_variable::wait((a1 + 8), &v2);
  }

  while (*a1 != 1);
  if (v2.__owns_)
  {
LABEL_4:
    std::mutex::unlock(v2.__m_);
  }
}

uint64_t sub_24BCDF8D4()
{
  v16 = *MEMORY[0x277D85DE8];
  v12 = 256;
  *&v13.__r_.__value_.__l.__data_ = xmmword_24BFBF910;
  v0 = sub_24BCBBD2C(&v13);
  if (!sysctlbyname(v0, __c, &v12, 0, 0) && v12 >= 4)
  {
    sub_24BC836D4(&v13, &unk_24C0435AF);
    std::string::push_back(&v13, __c[0]);
    std::string::push_back(&v13, __c[1]);
    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v1 = &v13;
    }

    else
    {
      v1 = v13.__r_.__value_.__r.__words[0];
    }

    atoi(v1);
    atoi(v15);
    v5 = objc_msgSend_processInfo(MEMORY[0x277CCAC38], v2, v3, v4);
    v9 = v5;
    if (v5)
    {
      objc_msgSend_operatingSystemVersion(v5, v6, v7, v8);
    }

    if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v13.__r_.__value_.__l.__data_);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return 1;
}

void sub_24BCDFAA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_24BCDFADC(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v4 = NSTemporaryDirectory();
  v8 = objc_msgSend_processInfo(MEMORY[0x277CCAC38], v5, v6, v7);
  v12 = objc_msgSend_processName(v8, v9, v10, v11);
  v13 = MEMORY[0x277CCACA8];
  v14 = getpid();
  v17 = objc_msgSend_stringWithFormat_(v13, v15, @"%d", v16, v14);
  v20 = objc_msgSend_stringByAppendingString_(v12, v18, v17, v19);

  v23 = objc_msgSend_stringByAppendingString_(v4, v21, v20, v22);
  v27 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v24, v25, v26);
  v47 = 0;
  if (!objc_msgSend_fileExistsAtPath_isDirectory_(v27, v28, v23, &v47) || (v47 & 1) == 0)
  {
    objc_msgSend_createDirectoryAtPath_withIntermediateDirectories_attributes_error_(v27, v29, v23, 0, 0, 0);
  }

  v30 = v23;
  v34 = objc_msgSend_UTF8String(v30, v31, v32, v33);
  sub_24BC836D4(&v45, v34);
  sub_24BC836D4(__p, "/");
  if ((v44 & 0x80u) == 0)
  {
    v35 = __p;
  }

  else
  {
    v35 = __p[0];
  }

  if ((v44 & 0x80u) == 0)
  {
    v36 = v44;
  }

  else
  {
    v36 = __p[1];
  }

  v37 = std::string::append(&v45, v35, v36);
  v38 = *&v37->__r_.__value_.__l.__data_;
  v46.__r_.__value_.__r.__words[2] = v37->__r_.__value_.__r.__words[2];
  *&v46.__r_.__value_.__l.__data_ = v38;
  v37->__r_.__value_.__l.__size_ = 0;
  v37->__r_.__value_.__r.__words[2] = 0;
  v37->__r_.__value_.__r.__words[0] = 0;
  v39 = *(a1 + 23);
  if (v39 >= 0)
  {
    v40 = a1;
  }

  else
  {
    v40 = *a1;
  }

  if (v39 >= 0)
  {
    v41 = *(a1 + 23);
  }

  else
  {
    v41 = *(a1 + 8);
  }

  v42 = std::string::append(&v46, v40, v41);
  *a2 = *v42;
  v42->__r_.__value_.__l.__size_ = 0;
  v42->__r_.__value_.__r.__words[2] = 0;
  v42->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  if (v44 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }
}

void sub_24BCDFCCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_24BCDFD70(std::string *__str)
{
  v2 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
  LOBYTE(v3) = v2;
  size = __str->__r_.__value_.__l.__size_;
  if ((v2 & 0x80u) != 0)
  {
    v2 = __str->__r_.__value_.__l.__size_;
  }

  if (v2 < 7)
  {
    goto LABEL_39;
  }

  std::string::basic_string(&__stra, __str, 0, 6uLL, &v29);
  if (SHIBYTE(__stra.__r_.__value_.__r.__words[2]) < 0)
  {
    v7 = __stra.__r_.__value_.__l.__size_ == 6 && *__stra.__r_.__value_.__l.__data_ == 1869107305 && *(__stra.__r_.__value_.__r.__words[0] + 4) == 25966;
    operator delete(__stra.__r_.__value_.__l.__data_);
    v3 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
    size = __str->__r_.__value_.__l.__size_;
    if (!v7)
    {
      goto LABEL_39;
    }

    goto LABEL_21;
  }

  if (SHIBYTE(__stra.__r_.__value_.__r.__words[2]) != 6)
  {
LABEL_38:
    LOBYTE(v3) = *(&__str->__r_.__value_.__s + 23);
    size = __str->__r_.__value_.__l.__size_;
    goto LABEL_39;
  }

  v5 = LODWORD(__stra.__r_.__value_.__l.__data_) == 1869107305 && WORD2(__stra.__r_.__value_.__r.__words[0]) == 25966;
  v3 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
  size = __str->__r_.__value_.__l.__size_;
  if (v5)
  {
LABEL_21:
    if ((v3 & 0x80u) == 0)
    {
      v8 = __str;
    }

    else
    {
      v8 = __str->__r_.__value_.__r.__words[0];
    }

    if ((v3 & 0x80u) == 0)
    {
      v9 = v3;
    }

    else
    {
      v9 = size;
    }

    if (v9 >= 1)
    {
      v10 = v8 + v9;
      v11 = v8;
      do
      {
        v12 = memchr(v11, 44, v9);
        if (!v12)
        {
          break;
        }

        if (*v12 == 44)
        {
          if (v12 == v10 || v12 - v8 == -1)
          {
            break;
          }

          std::string::basic_string(&__stra, __str, 6uLL, v12 - v8, &v29);
          v13 = std::stoi(&__stra, 0, 10);
          if (SHIBYTE(__stra.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__stra.__r_.__value_.__l.__data_);
          }

          if (v13 < 13)
          {
            return 1;
          }

          goto LABEL_38;
        }

        v11 = (v12 + 1);
        v9 = v10 - v11;
      }

      while (v10 - v11 >= 1);
    }
  }

LABEL_39:
  if ((v3 & 0x80u) == 0)
  {
    v14 = v3;
  }

  else
  {
    v14 = size;
  }

  if (v14 < 5)
  {
    return 0;
  }

  std::string::basic_string(&__stra, __str, 0, 4uLL, &v29);
  if (SHIBYTE(__stra.__r_.__value_.__r.__words[2]) < 0)
  {
    if (__stra.__r_.__value_.__l.__size_ == 4)
    {
      v15 = *__stra.__r_.__value_.__l.__data_;
      operator delete(__stra.__r_.__value_.__l.__data_);
      if (v15 == 1684099177)
      {
        goto LABEL_49;
      }
    }

    else
    {
      operator delete(__stra.__r_.__value_.__l.__data_);
    }

    return 0;
  }

  if (SHIBYTE(__stra.__r_.__value_.__r.__words[2]) != 4 || LODWORD(__stra.__r_.__value_.__l.__data_) != 1684099177)
  {
    return 0;
  }

LABEL_49:
  v16 = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
  if (v16 >= 0)
  {
    v17 = __str;
  }

  else
  {
    v17 = __str->__r_.__value_.__r.__words[0];
  }

  if (v16 >= 0)
  {
    v18 = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
  }

  else
  {
    v18 = __str->__r_.__value_.__l.__size_;
  }

  if (v18 < 1)
  {
    return 0;
  }

  v19 = v17 + v18;
  v20 = v17;
  do
  {
    result = memchr(v20, 44, v18);
    if (!result)
    {
      break;
    }

    v22 = result;
    if (*result == 44)
    {
      result = 0;
      if (v22 == v19)
      {
        return result;
      }

      v23 = v22 - v17;
      if (v23 == -1)
      {
        return result;
      }

      std::string::basic_string(&__stra, __str, 4uLL, v23, &v29);
      if ((__str->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v24 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
      }

      else
      {
        v24 = __str->__r_.__value_.__l.__size_;
      }

      std::string::basic_string(&v29, __str, v23 + 1, v24, &v31);
      v25 = std::stoi(&__stra, 0, 10);
      if (v25 < 8 || (v26 = std::stoi(&v29, 0, 10), v25 == 8) && v26 < 9)
      {
        if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v29.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__stra.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__stra.__r_.__value_.__l.__data_);
        }

        return 1;
      }

      v28 = v25 != 11 || v26 > 7;
      if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v29.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__stra.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__stra.__r_.__value_.__l.__data_);
      }

      return !v28;
    }

    result = 0;
    v20 = (v22 + 1);
    v18 = v19 - v20;
  }

  while (v19 - v20 >= 1);
  return result;
}

void sub_24BCE00E8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x24BCDFFDCLL);
}

uint64_t GESSEnvMLXAvailable_0()
{
  v5 = *MEMORY[0x277D85DE8];
  uname(&v4);
  sub_24BC836D4(&__p, v4.machine);
  v0 = sub_24BCDFD70(&__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v1 = *MEMORY[0x277D85DE8];
  return v0 ^ 1u;
}

void sub_24BCE01C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24BCE0248(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285F945A0;
  sub_24BCE0358((a1 + 3));
  return a1;
}

void sub_24BCE02C4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F945A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BCE0318(uint64_t a1)
{
  std::mutex::~mutex((a1 + 80));

  std::condition_variable::~condition_variable((a1 + 32));
}

uint64_t sub_24BCE0358(uint64_t a1)
{
  *a1 = 1;
  *(a1 + 8) = 1018212795;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  *(a1 + 56) = 850045863;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0;
  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterAddObserver(LocalCenter, 0, sub_24BCE043C, @"UIApplicationDidEnterBackgroundNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  CFNotificationCenterAddObserver(LocalCenter, 0, sub_24BCE0464, @"UIApplicationWillEnterForegroundNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  return a1;
}

void sub_24BCE0420(_Unwind_Exception *a1)
{
  std::mutex::~mutex(v2);
  std::condition_variable::~condition_variable(v1);
  _Unwind_Resume(a1);
}

void sub_24BCE043C()
{
  v0 = sub_24BCDF764();

  sub_24BCE048C(v0);
}

void sub_24BCE0464()
{
  v0 = sub_24BCDF764();

  sub_24BCE04D4(v0);
}

void sub_24BCE048C(uint64_t a1)
{
  std::mutex::lock((a1 + 56));
  *a1 = 0;
  std::condition_variable::notify_all((a1 + 8));

  std::mutex::unlock((a1 + 56));
}

void sub_24BCE04D4(uint64_t a1)
{
  std::mutex::lock((a1 + 56));
  *a1 = 1;
  std::condition_variable::notify_all((a1 + 8));

  std::mutex::unlock((a1 + 56));
}

void sub_24BCE0520(uint64_t **a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v44[1] = *MEMORY[0x277D85DE8];
  v12 = a1[1];
  *&v38 = *a1;
  *(&v38 + 1) = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(v12 + 1, 1uLL, memory_order_relaxed);
  }

  v13 = *(a2 + 8);
  v39 = *a2;
  v40 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  v14 = a3[1];
  v41 = *a3;
  v42 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  v15 = a4[1];
  v43[0] = *a4;
  v43[1] = v15;
  if (v15)
  {
    atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
  }

  v33 = 0uLL;
  v34 = 0;
  sub_24BCC9984(&v33, &v38, v44, 4uLL);
  for (i = 48; i != -16; i -= 16)
  {
    sub_24BE7F218(&v38 + i);
  }

  sub_24BD1E904(&v33, v17, &v38);
  sub_24BCC97B8(&v33);
  v33 = v38;
  v34 = v39;
  v39 = 0;
  v38 = 0uLL;
  __p[0] = &v38;
  sub_24BCC961C(__p);
  BYTE4(v38) = 4;
  LODWORD(v38) = 10;
  DWORD2(v38) = 10;
  BYTE12(v38) = 4;
  memset(__p, 0, sizeof(__p));
  sub_24BCE2380(__p, &v38, &v39, 2uLL);
  v18 = **a2;
  v19 = *(*a2 + 8) - v18;
  if (v19)
  {
    if (v19 > 4)
    {
      if (v19 != 8)
      {
        v20 = **a1;
        v21 = (*a1)[1] - v20;
        if (v21 > 4)
        {
          if (v21 != 8)
          {
            v23 = v18[1];
            v24 = v18[2];
            v25 = *(v20 + 4);
            v36 = *v18;
            v22 = v36;
            v37 = v25;
            v39 = 0;
            v38 = 0uLL;
            sub_24BCC9910(&v38, &v36, &v38, 3uLL);
            v35[0] = v22;
            v35[1] = v23;
            v35[2] = v24;
            v35[3] = 4;
            v41 = 0;
            v42 = 0;
            v40 = 0;
            sub_24BCC9910(&v40, v35, &v36, 4uLL);
            v29 = 0;
            v30 = 0;
            v31 = 0;
            sub_24BCE220C(&v29, &v38, v43, 2uLL);
            v26 = 0;
            while (1)
            {
              v27 = *(&v40 + v26);
              if (v27)
              {
                *(&v41 + v26) = v27;
                operator delete(v27);
              }

              v26 -= 24;
              if (v26 == -48)
              {
                memset(v28, 0, sizeof(v28));
                sub_24BCE2490(v28, v29, v30, 0xAAAAAAAAAAAAAAABLL * ((v30 - v29) >> 3));
                sub_24BF02A98(a7, a8);
                operator new();
              }
            }
          }

          sub_24BC923C0();
        }

        sub_24BC923C0();
      }

      sub_24BC923C0();
    }

    sub_24BC923C0();
  }

  sub_24BC923C0();
}

void sub_24BCE08D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char *a27, std::__shared_weak_count *a28)
{
  if (a28)
  {
    sub_24BC9EC78(a28);
  }

  a27 = &a10;
  sub_24BC8EE84(&a27);
  a27 = &a13;
  sub_24BC8EE84(&a27);
  if (__p)
  {
    a17 = __p;
    operator delete(__p);
  }

  a27 = &a19;
  sub_24BCC961C(&a27);
  _Unwind_Resume(a1);
}

void sub_24BCE09C8(uint64_t *a1, uint64_t *a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *a2;
  v4 = sub_24BE7E0B8(*(**a2 + 60) * *(**a2 + 48));
  v5[0] = &off_285F93798;
  v5[1] = sub_24BE7E1F0;
  v5[3] = v5;
  sub_24BE7EE1C(v3, v4);
}

uint64_t *sub_24BCE1268(uint64_t *a1)
{
  a1[20] = 0;
  v2 = MEMORY[0x277D828A0] + 64;
  a1[14] = MEMORY[0x277D828A0] + 64;
  v3 = *(MEMORY[0x277D82828] + 16);
  v4 = *(MEMORY[0x277D82828] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 1);
  v6 = MEMORY[0x277D828A0] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[14] = v2;
  sub_24BC950A0((a1 + 1), 16);
  return a1;
}

void sub_24BCE13AC(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x24C2547D0](v1);
  _Unwind_Resume(a1);
}

_BYTE *sub_24BCE13D4(char *a1)
{
  v4 = *a1;
  result = a1 + 1;
  v3 = v4;
  for (i = 1; i != 23; ++i)
  {
    a1[i] ^= v3;
  }

  a1[23] = 0;
  return result;
}

uint64_t sub_24BCE1400(uint64_t a1)
{
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *a1 = *MEMORY[0x277D82828];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 8) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 16));
  std::ostream::~ostream();
  MEMORY[0x24C2547D0](a1 + 112);
  return a1;
}

void sub_24BCE1520()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, &unk_24C0435AF);
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BCE157C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  sub_24BCE09C8(a2, a3);
}

void sub_24BCE15A0()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, &unk_24C0435AF);
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BCE16E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, char a12)
{
  sub_24BE7F218(&a10);
  sub_24BCC961C(&a10);
  a10 = &a12;
  sub_24BCC961C(&a10);
  _Unwind_Resume(a1);
}

uint64_t *sub_24BCE1720(uint64_t *result, uint64_t a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (v5 >= v4)
  {
    v7 = (v5 - *result) >> 4;
    if ((v7 + 1) >> 60)
    {
      sub_24BC8E01C();
    }

    v8 = v4 - *result;
    v9 = v8 >> 3;
    if (v8 >> 3 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v15 = result;
    if (v10)
    {
      sub_24BCB53E8(result, v10);
    }

    v11 = 0;
    v12 = (16 * v7);
    v14 = 0;
    *v12 = *a2;
    *a2 = 0;
    *(a2 + 8) = 0;
    v13 = 16 * v7 + 16;
    sub_24BCC9818(result, &v11);
    v6 = v3[1];
    result = sub_24BCC98C0(&v11);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  v3[1] = v6;
  return result;
}

void sub_24BCE1800(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BCC98C0(va);
  _Unwind_Resume(a1);
}

void sub_24BCE1814()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, &unk_24C0435AF);
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void *sub_24BCE1878(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  *v7 = xmmword_24BFBF9A8;
  *&v7[14] = 0x1876607365607DLL;
  v3 = sub_24BCE1904(v7);
  v4 = strlen(v3);
  result = sub_24BC95264(a2, v3, v4);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

_BYTE *sub_24BCE1904(char *a1)
{
  v4 = *a1;
  result = a1 + 1;
  v3 = v4;
  for (i = 1; i != 21; ++i)
  {
    a1[i] ^= v3;
  }

  a1[21] = 0;
  return result;
}

void sub_24BCE1930(uint64_t *a1, uint64_t *a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *a2;
  v4 = sub_24BE7E0B8(*(**a2 + 60) * *(**a2 + 48));
  v5[0] = &off_285F93798;
  v5[1] = sub_24BE7E1F0;
  v5[3] = v5;
  sub_24BE7EE1C(v3, v4);
}

void sub_24BCE1F8C()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, &unk_24C0435AF);
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BCE1FE8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  sub_24BCE1930(a2, a3);
}

void sub_24BCE2008()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, &unk_24C0435AF);
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BCE2064()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, &unk_24C0435AF);
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BCE20C0()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, &unk_24C0435AF);
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void *sub_24BCE2124(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  strcpy(v7, "*cD^OXZEFK^O\nHKIA]KXN ");
  v3 = sub_24BCE21B0(v7);
  v4 = strlen(v3);
  result = sub_24BC95264(a2, v3, v4);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

_BYTE *sub_24BCE21B0(char *a1)
{
  v4 = *a1;
  result = a1 + 1;
  v3 = v4;
  for (i = 1; i != 22; ++i)
  {
    a1[i] ^= v3;
  }

  a1[22] = 0;
  return result;
}

uint64_t sub_24BCE220C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_24BCA04D4(result, a4);
  }

  return result;
}

void sub_24BCE2274(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_24BC8EE84(&a9);
  _Unwind_Resume(a1);
}

void *sub_24BCE2294(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
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
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      sub_24BCC9A1C(v4, *v6, v6[1], (v6[1] - *v6) >> 2);
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  sub_24BCE2348(v8);
  return v4;
}

uint64_t sub_24BCE2348(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_24BCB71DC(a1);
  }

  return a1;
}

uint64_t sub_24BCE2380(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_24BCD06B0(result, a4);
  }

  return result;
}

void sub_24BCE23D8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BCE2414(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F946C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

uint64_t sub_24BCE2490(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_24BCA04D4(result, a4);
  }

  return result;
}

void sub_24BCE24F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_24BC8EE84(&a9);
  _Unwind_Resume(a1);
}

void *sub_24BCE2518(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
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
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      sub_24BCC9A1C(v4, *v6, v6[1], (v6[1] - *v6) >> 2);
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  sub_24BCE2348(v8);
  return v4;
}

void sub_24BCF9CA8(_Unwind_Exception *a1)
{
  v3 = *(v1 + 360);
  if (v3)
  {
    *(v1 + 368) = v3;
    operator delete(v3);
  }

  *(v1 + 360) = &STACK[0x800];
  sub_24BC8EE10(&STACK[0xE828]);
  _Unwind_Resume(a1);
}

void sub_24BD01110()
{
  v3 = *MEMORY[0x277D85DE8];
  memcpy(__dst, &unk_24BFC0514, sizeof(__dst));
  v0 = 256;
  memset(__p, 0, sizeof(__p));
  sub_24BCC9910(__p, &v0, __p, 1uLL);
  sub_24BD05ABC();
}

void sub_24BD011F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BD01214()
{
  MEMORY[0x28223BE20]();
  v1035 = *MEMORY[0x277D85DE8];
  v774 = 0uLL;
  v775 = 0;
  v779 = 0;
  __p = 0;
  __dst = 0;
  sub_24BCC9910(&__p, &v774, &v776, 5uLL);
  v771 = 0;
  v770 = 0;
  v772 = 0;
  memset(v780, 0, sizeof(v780));
  sub_24BCC9910(v780, &v770, &v773, 5uLL);
  v767[1] = 0;
  v767[0] = 0;
  v768 = 0;
  memset(v781, 0, sizeof(v781));
  sub_24BCC9910(v781, v767, &v769, 5uLL);
  v764[1] = 0;
  v764[0] = 0;
  v765 = 0;
  memset(v782, 0, sizeof(v782));
  sub_24BCC9910(v782, v764, &v766, 5uLL);
  v761[1] = 0;
  v761[0] = 0;
  v762 = 0;
  memset(v783, 0, sizeof(v783));
  sub_24BCC9910(v783, v761, &v763, 5uLL);
  v758[1] = 0;
  v758[0] = 0;
  v759 = 0;
  memset(v784, 0, sizeof(v784));
  sub_24BCC9910(v784, v758, &v760, 5uLL);
  v755[1] = 0;
  v755[0] = 0;
  v756 = 0;
  memset(v785, 0, sizeof(v785));
  sub_24BCC9910(v785, v755, &v757, 5uLL);
  v752[1] = 0;
  v752[0] = 0;
  v753 = 0;
  memset(v786, 0, sizeof(v786));
  sub_24BCC9910(v786, v752, &v754, 5uLL);
  v749[1] = 0;
  v749[0] = 0;
  v750 = 0;
  memset(v787, 0, sizeof(v787));
  sub_24BCC9910(v787, v749, &v751, 5uLL);
  v746[1] = 0;
  v746[0] = 0;
  v747 = 0;
  memset(v788, 0, sizeof(v788));
  sub_24BCC9910(v788, v746, &v748, 5uLL);
  v743[1] = 0;
  v743[0] = 0;
  v744 = 0;
  memset(v789, 0, sizeof(v789));
  sub_24BCC9910(v789, v743, &v745, 5uLL);
  v740[1] = 0;
  v740[0] = 0;
  v741 = 0;
  memset(v790, 0, sizeof(v790));
  sub_24BCC9910(v790, v740, &v742, 5uLL);
  v737[1] = 0;
  v737[0] = 0;
  v738 = 0;
  memset(v791, 0, sizeof(v791));
  sub_24BCC9910(v791, v737, &v739, 5uLL);
  v734[1] = 0;
  v734[0] = 0;
  v735 = 0;
  memset(v792, 0, sizeof(v792));
  sub_24BCC9910(v792, v734, &v736, 5uLL);
  v731[1] = 0;
  v731[0] = 0;
  v732 = 0;
  memset(v793, 0, sizeof(v793));
  sub_24BCC9910(v793, v731, &v733, 5uLL);
  v728[1] = 0;
  v728[0] = 0;
  v729 = 0;
  memset(v794, 0, sizeof(v794));
  sub_24BCC9910(v794, v728, &v730, 5uLL);
  v725[1] = 0;
  v725[0] = 0;
  v726 = 0;
  memset(v795, 0, sizeof(v795));
  sub_24BCC9910(v795, v725, &v727, 5uLL);
  v722[1] = 0;
  v722[0] = 0;
  v723 = 0;
  memset(v796, 0, sizeof(v796));
  sub_24BCC9910(v796, v722, &v724, 5uLL);
  v719[1] = 0;
  v719[0] = 0;
  v720 = 0;
  memset(v797, 0, sizeof(v797));
  sub_24BCC9910(v797, v719, &v721, 5uLL);
  v716[1] = 0;
  v716[0] = 0;
  v717 = 0;
  memset(v798, 0, sizeof(v798));
  sub_24BCC9910(v798, v716, &v718, 5uLL);
  v713[1] = 0;
  v713[0] = 0;
  v714 = 0;
  memset(v799, 0, sizeof(v799));
  sub_24BCC9910(v799, v713, &v715, 5uLL);
  v710[1] = 0;
  v710[0] = 0;
  v711 = 0;
  memset(v800, 0, sizeof(v800));
  sub_24BCC9910(v800, v710, &v712, 5uLL);
  v707[1] = 0;
  v707[0] = 0;
  v708 = 0;
  memset(v801, 0, sizeof(v801));
  sub_24BCC9910(v801, v707, &v709, 5uLL);
  v704[1] = 0;
  v704[0] = 0;
  v705 = 0;
  memset(v802, 0, sizeof(v802));
  sub_24BCC9910(v802, v704, &v706, 5uLL);
  v701[1] = 0;
  v701[0] = 0;
  v702 = 0;
  memset(v803, 0, sizeof(v803));
  sub_24BCC9910(v803, v701, &v703, 5uLL);
  v698[1] = 0;
  v698[0] = 0;
  v699 = 0;
  memset(v804, 0, sizeof(v804));
  sub_24BCC9910(v804, v698, &v700, 5uLL);
  v695[1] = 0;
  v695[0] = 0;
  v696 = 0;
  memset(v805, 0, sizeof(v805));
  sub_24BCC9910(v805, v695, &v697, 5uLL);
  v692[1] = 0;
  v692[0] = 0;
  v693 = 0;
  memset(v806, 0, sizeof(v806));
  sub_24BCC9910(v806, v692, &v694, 5uLL);
  v689[1] = 0;
  v689[0] = 0;
  v690 = 0;
  memset(v807, 0, sizeof(v807));
  sub_24BCC9910(v807, v689, &v691, 5uLL);
  v686[1] = 0;
  v686[0] = 0;
  v687 = 0;
  memset(v808, 0, sizeof(v808));
  sub_24BCC9910(v808, v686, &v688, 5uLL);
  v683[1] = 0;
  v683[0] = 0;
  v684 = 0;
  memset(v809, 0, sizeof(v809));
  sub_24BCC9910(v809, v683, &v685, 5uLL);
  v680[1] = 0;
  v680[0] = 0;
  v681 = 0;
  memset(v810, 0, sizeof(v810));
  sub_24BCC9910(v810, v680, &v682, 5uLL);
  v677[1] = 0;
  v677[0] = 0;
  v678 = 0;
  memset(v811, 0, sizeof(v811));
  sub_24BCC9910(v811, v677, &v679, 5uLL);
  v674[1] = 0;
  v674[0] = 0;
  v675 = 0;
  memset(v812, 0, sizeof(v812));
  sub_24BCC9910(v812, v674, &v676, 5uLL);
  v671[1] = 0;
  v671[0] = 0;
  v672 = 0;
  memset(v813, 0, sizeof(v813));
  sub_24BCC9910(v813, v671, &v673, 5uLL);
  v668[1] = 0;
  v668[0] = 0;
  v669 = 0;
  memset(v814, 0, sizeof(v814));
  sub_24BCC9910(v814, v668, &v670, 5uLL);
  v665[1] = 0;
  v665[0] = 0;
  v666 = 0;
  memset(v815, 0, sizeof(v815));
  sub_24BCC9910(v815, v665, &v667, 5uLL);
  v662[1] = 0;
  v662[0] = 0;
  v663 = 0;
  memset(v816, 0, sizeof(v816));
  sub_24BCC9910(v816, v662, &v664, 5uLL);
  v659[1] = 0;
  v659[0] = 0;
  v660 = 0;
  memset(v817, 0, sizeof(v817));
  sub_24BCC9910(v817, v659, &v661, 5uLL);
  v656[1] = 0;
  v656[0] = 0;
  v657 = 0;
  memset(v818, 0, sizeof(v818));
  sub_24BCC9910(v818, v656, &v658, 5uLL);
  v653[1] = 0;
  v653[0] = 0;
  v654 = 0;
  memset(v819, 0, sizeof(v819));
  sub_24BCC9910(v819, v653, &v655, 5uLL);
  v650[1] = 0;
  v650[0] = 0;
  v651 = 0;
  memset(v820, 0, sizeof(v820));
  sub_24BCC9910(v820, v650, &v652, 5uLL);
  v647[1] = 0;
  v647[0] = 0;
  v648 = 0;
  memset(v821, 0, sizeof(v821));
  sub_24BCC9910(v821, v647, &v649, 5uLL);
  v644[1] = 0;
  v644[0] = 0;
  v645 = 0;
  memset(v822, 0, sizeof(v822));
  sub_24BCC9910(v822, v644, &v646, 5uLL);
  v641[1] = 0;
  v641[0] = 0;
  v642 = 0;
  memset(v823, 0, sizeof(v823));
  sub_24BCC9910(v823, v641, &v643, 5uLL);
  v638[1] = 0;
  v638[0] = 0;
  v639 = 0;
  memset(v824, 0, sizeof(v824));
  sub_24BCC9910(v824, v638, &v640, 5uLL);
  v635[1] = 0;
  v635[0] = 0;
  v636 = 0;
  memset(v825, 0, sizeof(v825));
  sub_24BCC9910(v825, v635, &v637, 5uLL);
  v632[1] = 0;
  v632[0] = 0;
  v633 = 0;
  memset(v826, 0, sizeof(v826));
  sub_24BCC9910(v826, v632, &v634, 5uLL);
  v629[1] = 0;
  v629[0] = 0;
  v630 = 0;
  memset(v827, 0, sizeof(v827));
  sub_24BCC9910(v827, v629, &v631, 5uLL);
  v626[1] = 0;
  v626[0] = 0;
  v627 = 0;
  memset(v828, 0, sizeof(v828));
  sub_24BCC9910(v828, v626, &v628, 5uLL);
  v623[1] = 0;
  v623[0] = 0;
  v624 = 0;
  memset(v829, 0, sizeof(v829));
  sub_24BCC9910(v829, v623, &v625, 5uLL);
  v620[1] = 0;
  v620[0] = 0;
  v621 = 0;
  memset(v830, 0, sizeof(v830));
  sub_24BCC9910(v830, v620, &v622, 5uLL);
  v617[1] = 0;
  v617[0] = 0;
  v618 = 0;
  memset(v831, 0, sizeof(v831));
  sub_24BCC9910(v831, v617, &v619, 5uLL);
  v614[1] = 0;
  v614[0] = 0;
  v615 = 0;
  memset(v832, 0, sizeof(v832));
  sub_24BCC9910(v832, v614, &v616, 5uLL);
  v611[1] = 0;
  v611[0] = 0;
  v612 = 0;
  memset(v833, 0, sizeof(v833));
  sub_24BCC9910(v833, v611, &v613, 5uLL);
  v608[1] = 0;
  v608[0] = 0;
  v609 = 0;
  memset(v834, 0, sizeof(v834));
  sub_24BCC9910(v834, v608, &v610, 5uLL);
  v605[1] = 0;
  v605[0] = 0;
  v606 = 0;
  memset(v835, 0, sizeof(v835));
  sub_24BCC9910(v835, v605, &v607, 5uLL);
  v602[1] = 0;
  v602[0] = 0;
  v603 = 0;
  memset(v836, 0, sizeof(v836));
  sub_24BCC9910(v836, v602, &v604, 5uLL);
  v599[1] = 0;
  v599[0] = 0;
  v600 = 0;
  memset(v837, 0, sizeof(v837));
  sub_24BCC9910(v837, v599, &v601, 5uLL);
  v596[1] = 0;
  v596[0] = 0;
  v597 = 0;
  memset(v838, 0, sizeof(v838));
  sub_24BCC9910(v838, v596, &v598, 5uLL);
  v593[1] = 0;
  v593[0] = 0;
  v594 = 0;
  memset(v839, 0, sizeof(v839));
  sub_24BCC9910(v839, v593, &v595, 5uLL);
  v591 = 194;
  v590 = xmmword_24BFC0914;
  memset(v840, 0, sizeof(v840));
  sub_24BCC9910(v840, &v590, &v592, 5uLL);
  v588 = 193;
  v587 = xmmword_24BFC0928;
  memset(v841, 0, sizeof(v841));
  sub_24BCC9910(v841, &v587, &v589, 5uLL);
  v584[1] = 0;
  v584[0] = 0;
  v585 = 0;
  memset(v842, 0, sizeof(v842));
  sub_24BCC9910(v842, v584, &v586, 5uLL);
  v581[1] = 0;
  v581[0] = 0;
  v582 = 0;
  memset(v843, 0, sizeof(v843));
  sub_24BCC9910(v843, v581, &v583, 5uLL);
  v578[1] = 0;
  v578[0] = 0;
  v579 = 0;
  memset(v844, 0, sizeof(v844));
  sub_24BCC9910(v844, v578, &v580, 5uLL);
  v575[1] = 0;
  v575[0] = 0;
  v576 = 0;
  memset(v845, 0, sizeof(v845));
  sub_24BCC9910(v845, v575, &v577, 5uLL);
  v572[1] = 0;
  v572[0] = 0;
  v573 = 0;
  memset(v846, 0, sizeof(v846));
  sub_24BCC9910(v846, v572, &v574, 5uLL);
  v569[1] = 0;
  v569[0] = 0;
  v570 = 0;
  memset(v847, 0, sizeof(v847));
  sub_24BCC9910(v847, v569, &v571, 5uLL);
  v566[1] = 0;
  v566[0] = 0;
  v567 = 0;
  memset(v848, 0, sizeof(v848));
  sub_24BCC9910(v848, v566, &v568, 5uLL);
  v563[1] = 0;
  v563[0] = 0;
  v564 = 0;
  memset(v849, 0, sizeof(v849));
  sub_24BCC9910(v849, v563, &v565, 5uLL);
  v560[1] = 0;
  v560[0] = 0;
  v561 = 0;
  memset(v850, 0, sizeof(v850));
  sub_24BCC9910(v850, v560, &v562, 5uLL);
  v557[1] = 0;
  v557[0] = 0;
  v558 = 0;
  memset(v851, 0, sizeof(v851));
  sub_24BCC9910(v851, v557, &v559, 5uLL);
  v554[1] = 0;
  v554[0] = 0;
  v555 = 0;
  memset(v852, 0, sizeof(v852));
  sub_24BCC9910(v852, v554, &v556, 5uLL);
  v551[1] = 0;
  v551[0] = 0;
  v552 = 0;
  memset(v853, 0, sizeof(v853));
  sub_24BCC9910(v853, v551, &v553, 5uLL);
  v548[1] = 0;
  v548[0] = 0;
  v549 = 0;
  memset(v854, 0, sizeof(v854));
  sub_24BCC9910(v854, v548, &v550, 5uLL);
  v545[1] = 0;
  v545[0] = 0;
  v546 = 0;
  memset(v855, 0, sizeof(v855));
  sub_24BCC9910(v855, v545, &v547, 5uLL);
  v542[1] = 0;
  v542[0] = 0;
  v543 = 0;
  memset(v856, 0, sizeof(v856));
  sub_24BCC9910(v856, v542, &v544, 5uLL);
  v539[1] = 0;
  v539[0] = 0;
  v540 = 0;
  memset(v857, 0, sizeof(v857));
  sub_24BCC9910(v857, v539, &v541, 5uLL);
  v536[1] = 0;
  v536[0] = 0;
  v537 = 0;
  memset(v858, 0, sizeof(v858));
  sub_24BCC9910(v858, v536, &v538, 5uLL);
  v533[1] = 0;
  v533[0] = 0;
  v534 = 0;
  memset(v859, 0, sizeof(v859));
  sub_24BCC9910(v859, v533, &v535, 5uLL);
  v530[1] = 0;
  v530[0] = 0;
  v531 = 0;
  memset(v860, 0, sizeof(v860));
  sub_24BCC9910(v860, v530, &v532, 5uLL);
  v527[1] = 0;
  v527[0] = 0;
  v528 = 0;
  memset(v861, 0, sizeof(v861));
  sub_24BCC9910(v861, v527, &v529, 5uLL);
  v524[1] = 0;
  v524[0] = 0;
  v525 = 0;
  memset(v862, 0, sizeof(v862));
  sub_24BCC9910(v862, v524, &v526, 5uLL);
  v521[1] = 0;
  v521[0] = 0;
  v522 = 0;
  memset(v863, 0, sizeof(v863));
  sub_24BCC9910(v863, v521, &v523, 5uLL);
  v518[1] = 0;
  v518[0] = 0;
  v519 = 0;
  memset(v864, 0, sizeof(v864));
  sub_24BCC9910(v864, v518, &v520, 5uLL);
  v515[1] = 0;
  v515[0] = 0;
  v516 = 0;
  memset(v865, 0, sizeof(v865));
  sub_24BCC9910(v865, v515, &v517, 5uLL);
  v512[1] = 0;
  v512[0] = 0;
  v513 = 0;
  memset(v866, 0, sizeof(v866));
  sub_24BCC9910(v866, v512, &v514, 5uLL);
  v509[1] = 0;
  v509[0] = 0;
  v510 = 0;
  memset(v867, 0, sizeof(v867));
  sub_24BCC9910(v867, v509, &v511, 5uLL);
  v506[1] = 0;
  v506[0] = 0;
  v507 = 0;
  memset(v868, 0, sizeof(v868));
  sub_24BCC9910(v868, v506, &v508, 5uLL);
  v503[1] = 0;
  v503[0] = 0;
  v504 = 0;
  memset(v869, 0, sizeof(v869));
  sub_24BCC9910(v869, v503, &v505, 5uLL);
  v501 = 164;
  v500 = xmmword_24BFC093C;
  memset(v870, 0, sizeof(v870));
  sub_24BCC9910(v870, &v500, &v502, 5uLL);
  v497[1] = 0;
  v497[0] = 0;
  v498 = 0;
  memset(v871, 0, sizeof(v871));
  sub_24BCC9910(v871, v497, &v499, 5uLL);
  v494[1] = 0;
  v494[0] = 0;
  v495 = 0;
  memset(v872, 0, sizeof(v872));
  sub_24BCC9910(v872, v494, &v496, 5uLL);
  v492 = 161;
  v491 = xmmword_24BFC0950;
  memset(v873, 0, sizeof(v873));
  sub_24BCC9910(v873, &v491, &v493, 5uLL);
  v488[1] = 0;
  v488[0] = 0;
  v489 = 0;
  memset(v874, 0, sizeof(v874));
  sub_24BCC9910(v874, v488, &v490, 5uLL);
  v485[1] = 0;
  v485[0] = 0;
  v486 = 0;
  memset(v875, 0, sizeof(v875));
  sub_24BCC9910(v875, v485, &v487, 5uLL);
  v482[1] = 0;
  v482[0] = 0;
  v483 = 0;
  memset(v876, 0, sizeof(v876));
  sub_24BCC9910(v876, v482, &v484, 5uLL);
  v479[1] = 0;
  v479[0] = 0;
  v480 = 0;
  memset(v877, 0, sizeof(v877));
  sub_24BCC9910(v877, v479, &v481, 5uLL);
  v476[1] = 0;
  v476[0] = 0;
  v477 = 0;
  memset(v878, 0, sizeof(v878));
  sub_24BCC9910(v878, v476, &v478, 5uLL);
  v473[1] = 0;
  v473[0] = 0;
  v474 = 0;
  memset(v879, 0, sizeof(v879));
  sub_24BCC9910(v879, v473, &v475, 5uLL);
  v470[1] = 0;
  v470[0] = 0;
  v471 = 0;
  memset(v880, 0, sizeof(v880));
  sub_24BCC9910(v880, v470, &v472, 5uLL);
  v467[1] = 0;
  v467[0] = 0;
  v468 = 0;
  memset(v881, 0, sizeof(v881));
  sub_24BCC9910(v881, v467, &v469, 5uLL);
  v465 = 152;
  v464 = xmmword_24BFC0964;
  memset(v882, 0, sizeof(v882));
  sub_24BCC9910(v882, &v464, &v466, 5uLL);
  v461[1] = 0;
  v461[0] = 0;
  v462 = 0;
  memset(v883, 0, sizeof(v883));
  sub_24BCC9910(v883, v461, &v463, 5uLL);
  v458[1] = 0;
  v458[0] = 0;
  v459 = 0;
  memset(v884, 0, sizeof(v884));
  sub_24BCC9910(v884, v458, &v460, 5uLL);
  v455[1] = 0;
  v455[0] = 0;
  v456 = 0;
  memset(v885, 0, sizeof(v885));
  sub_24BCC9910(v885, v455, &v457, 5uLL);
  v452[1] = 0;
  v452[0] = 0;
  v453 = 0;
  memset(v886, 0, sizeof(v886));
  sub_24BCC9910(v886, v452, &v454, 5uLL);
  v449[1] = 0;
  v449[0] = 0;
  v450 = 0;
  memset(v887, 0, sizeof(v887));
  sub_24BCC9910(v887, v449, &v451, 5uLL);
  v446[1] = 0;
  v446[0] = 0;
  v447 = 0;
  memset(v888, 0, sizeof(v888));
  sub_24BCC9910(v888, v446, &v448, 5uLL);
  v444 = 145;
  v443 = xmmword_24BFC0978;
  memset(v889, 0, sizeof(v889));
  sub_24BCC9910(v889, &v443, &v445, 5uLL);
  v441 = 144;
  v440 = xmmword_24BFC098C;
  memset(v890, 0, sizeof(v890));
  sub_24BCC9910(v890, &v440, &v442, 5uLL);
  v437[1] = 0;
  v437[0] = 0;
  v438 = 0;
  memset(v891, 0, sizeof(v891));
  sub_24BCC9910(v891, v437, &v439, 5uLL);
  v434[1] = 0;
  v434[0] = 0;
  v435 = 0;
  memset(v892, 0, sizeof(v892));
  sub_24BCC9910(v892, v434, &v436, 5uLL);
  v431[1] = 0;
  v431[0] = 0;
  v432 = 0;
  memset(v893, 0, sizeof(v893));
  sub_24BCC9910(v893, v431, &v433, 5uLL);
  v428[1] = 0;
  v428[0] = 0;
  v429 = 0;
  memset(v894, 0, sizeof(v894));
  sub_24BCC9910(v894, v428, &v430, 5uLL);
  v425[1] = 0;
  v425[0] = 0;
  v426 = 0;
  memset(v895, 0, sizeof(v895));
  sub_24BCC9910(v895, v425, &v427, 5uLL);
  v422[1] = 0;
  v422[0] = 0;
  v423 = 0;
  memset(v896, 0, sizeof(v896));
  sub_24BCC9910(v896, v422, &v424, 5uLL);
  v420 = 137;
  v419 = xmmword_24BFC09A0;
  memset(v897, 0, sizeof(v897));
  sub_24BCC9910(v897, &v419, &v421, 5uLL);
  v416[1] = 0;
  v416[0] = 0;
  v417 = 0;
  memset(v898, 0, sizeof(v898));
  sub_24BCC9910(v898, v416, &v418, 5uLL);
  v413[1] = 0;
  v413[0] = 0;
  v414 = 0;
  memset(v899, 0, sizeof(v899));
  sub_24BCC9910(v899, v413, &v415, 5uLL);
  v410[1] = 0;
  v410[0] = 0;
  v411 = 0;
  memset(v900, 0, sizeof(v900));
  sub_24BCC9910(v900, v410, &v412, 5uLL);
  v408 = 133;
  v407 = xmmword_24BFC09B4;
  memset(v901, 0, sizeof(v901));
  sub_24BCC9910(v901, &v407, &v409, 5uLL);
  v405 = 132;
  v404 = xmmword_24BFC09C8;
  memset(v902, 0, sizeof(v902));
  sub_24BCC9910(v902, &v404, &v406, 5uLL);
  v402 = 131;
  v401 = xmmword_24BFC09DC;
  memset(v903, 0, sizeof(v903));
  sub_24BCC9910(v903, &v401, &v403, 5uLL);
  v399 = 130;
  v398 = xmmword_24BFC09F0;
  memset(v904, 0, sizeof(v904));
  sub_24BCC9910(v904, &v398, &v400, 5uLL);
  v395[1] = 0;
  v395[0] = 0;
  v396 = 0;
  memset(v905, 0, sizeof(v905));
  sub_24BCC9910(v905, v395, &v397, 5uLL);
  v392[1] = 0;
  v392[0] = 0;
  v393 = 0;
  memset(v906, 0, sizeof(v906));
  sub_24BCC9910(v906, v392, &v394, 5uLL);
  v389[1] = 0;
  v389[0] = 0;
  v390 = 0;
  memset(v907, 0, sizeof(v907));
  sub_24BCC9910(v907, v389, &v391, 5uLL);
  v386[1] = 0;
  v386[0] = 0;
  v387 = 0;
  memset(v908, 0, sizeof(v908));
  sub_24BCC9910(v908, v386, &v388, 5uLL);
  v383[1] = 0;
  v383[0] = 0;
  v384 = 0;
  memset(v909, 0, sizeof(v909));
  sub_24BCC9910(v909, v383, &v385, 5uLL);
  v380[1] = 0;
  v380[0] = 0;
  v381 = 0;
  memset(v910, 0, sizeof(v910));
  sub_24BCC9910(v910, v380, &v382, 5uLL);
  v377[1] = 0;
  v377[0] = 0;
  v378 = 0;
  memset(v911, 0, sizeof(v911));
  sub_24BCC9910(v911, v377, &v379, 5uLL);
  v374[1] = 0;
  v374[0] = 0;
  v375 = 0;
  memset(v912, 0, sizeof(v912));
  sub_24BCC9910(v912, v374, &v376, 5uLL);
  v371[1] = 0;
  v371[0] = 0;
  v372 = 0;
  memset(v913, 0, sizeof(v913));
  sub_24BCC9910(v913, v371, &v373, 5uLL);
  v368[1] = 0;
  v368[0] = 0;
  v369 = 0;
  memset(v914, 0, sizeof(v914));
  sub_24BCC9910(v914, v368, &v370, 5uLL);
  v365[1] = 0;
  v365[0] = 0;
  v366 = 0;
  memset(v915, 0, sizeof(v915));
  sub_24BCC9910(v915, v365, &v367, 5uLL);
  v362[1] = 0;
  v362[0] = 0;
  v363 = 0;
  memset(v916, 0, sizeof(v916));
  sub_24BCC9910(v916, v362, &v364, 5uLL);
  v359[1] = 0;
  v359[0] = 0;
  v360 = 0;
  memset(v917, 0, sizeof(v917));
  sub_24BCC9910(v917, v359, &v361, 5uLL);
  v356[1] = 0;
  v356[0] = 0;
  v357 = 0;
  memset(v918, 0, sizeof(v918));
  sub_24BCC9910(v918, v356, &v358, 5uLL);
  v353[1] = 0;
  v353[0] = 0;
  v354 = 0;
  memset(v919, 0, sizeof(v919));
  sub_24BCC9910(v919, v353, &v355, 5uLL);
  v350[1] = 0;
  v350[0] = 0;
  v351 = 0;
  memset(v920, 0, sizeof(v920));
  sub_24BCC9910(v920, v350, &v352, 5uLL);
  v347[1] = 0;
  v347[0] = 0;
  v348 = 0;
  memset(v921, 0, sizeof(v921));
  sub_24BCC9910(v921, v347, &v349, 5uLL);
  v344[1] = 0;
  v344[0] = 0;
  v345 = 0;
  memset(v922, 0, sizeof(v922));
  sub_24BCC9910(v922, v344, &v346, 5uLL);
  v341[1] = 0;
  v341[0] = 0;
  v342 = 0;
  memset(v923, 0, sizeof(v923));
  sub_24BCC9910(v923, v341, &v343, 5uLL);
  v338[1] = 0;
  v338[0] = 0;
  v339 = 0;
  memset(v924, 0, sizeof(v924));
  sub_24BCC9910(v924, v338, &v340, 5uLL);
  v335[1] = 0;
  v335[0] = 0;
  v336 = 0;
  memset(v925, 0, sizeof(v925));
  sub_24BCC9910(v925, v335, &v337, 5uLL);
  v332[1] = 0;
  v332[0] = 0;
  v333 = 0;
  memset(v926, 0, sizeof(v926));
  sub_24BCC9910(v926, v332, &v334, 5uLL);
  v329[1] = 0;
  v329[0] = 0;
  v330 = 0;
  memset(v927, 0, sizeof(v927));
  sub_24BCC9910(v927, v329, &v331, 5uLL);
  v326[1] = 0;
  v326[0] = 0;
  v327 = 0;
  memset(v928, 0, sizeof(v928));
  sub_24BCC9910(v928, v326, &v328, 5uLL);
  v323[1] = 0;
  v323[0] = 0;
  v324 = 0;
  memset(v929, 0, sizeof(v929));
  sub_24BCC9910(v929, v323, &v325, 5uLL);
  v320[1] = 0;
  v320[0] = 0;
  v321 = 0;
  memset(v930, 0, sizeof(v930));
  sub_24BCC9910(v930, v320, &v322, 5uLL);
  v317[1] = 0;
  v317[0] = 0;
  v318 = 0;
  memset(v931, 0, sizeof(v931));
  sub_24BCC9910(v931, v317, &v319, 5uLL);
  v314[1] = 0;
  v314[0] = 0;
  v315 = 0;
  memset(v932, 0, sizeof(v932));
  sub_24BCC9910(v932, v314, &v316, 5uLL);
  v311[1] = 0;
  v311[0] = 0;
  v312 = 0;
  memset(v933, 0, sizeof(v933));
  sub_24BCC9910(v933, v311, &v313, 5uLL);
  v309 = 100;
  v308 = xmmword_24BFC0A04;
  memset(v934, 0, sizeof(v934));
  sub_24BCC9910(v934, &v308, &v310, 5uLL);
  v305[1] = 0;
  v305[0] = 0;
  v306 = 0;
  memset(v935, 0, sizeof(v935));
  sub_24BCC9910(v935, v305, &v307, 5uLL);
  v303 = 98;
  v302 = xmmword_24BFC0A18;
  memset(v936, 0, sizeof(v936));
  sub_24BCC9910(v936, &v302, &v304, 5uLL);
  v299[1] = 0;
  v299[0] = 0;
  v300 = 0;
  memset(v937, 0, sizeof(v937));
  sub_24BCC9910(v937, v299, &v301, 5uLL);
  v297 = 96;
  v296 = xmmword_24BFC0A2C;
  memset(v938, 0, sizeof(v938));
  sub_24BCC9910(v938, &v296, &v298, 5uLL);
  v293[1] = 0;
  v293[0] = 0;
  v294 = 0;
  memset(v939, 0, sizeof(v939));
  sub_24BCC9910(v939, v293, &v295, 5uLL);
  v290[1] = 0;
  v290[0] = 0;
  v291 = 0;
  memset(v940, 0, sizeof(v940));
  sub_24BCC9910(v940, v290, &v292, 5uLL);
  v287[1] = 0;
  v287[0] = 0;
  v288 = 0;
  memset(v941, 0, sizeof(v941));
  sub_24BCC9910(v941, v287, &v289, 5uLL);
  v284[1] = 0;
  v284[0] = 0;
  v285 = 0;
  memset(v942, 0, sizeof(v942));
  sub_24BCC9910(v942, v284, &v286, 5uLL);
  v281[1] = 0;
  v281[0] = 0;
  v282 = 0;
  memset(v943, 0, sizeof(v943));
  sub_24BCC9910(v943, v281, &v283, 5uLL);
  v278[1] = 0;
  v278[0] = 0;
  v279 = 0;
  memset(v944, 0, sizeof(v944));
  sub_24BCC9910(v944, v278, &v280, 5uLL);
  v275[1] = 0;
  v275[0] = 0;
  v276 = 0;
  memset(v945, 0, sizeof(v945));
  sub_24BCC9910(v945, v275, &v277, 5uLL);
  v273 = 88;
  v272 = xmmword_24BFC0A40;
  memset(v946, 0, sizeof(v946));
  sub_24BCC9910(v946, &v272, &v274, 5uLL);
  v269[1] = 0;
  v269[0] = 0;
  v270 = 0;
  memset(v947, 0, sizeof(v947));
  sub_24BCC9910(v947, v269, &v271, 5uLL);
  v266[1] = 0;
  v266[0] = 0;
  v267 = 0;
  memset(v948, 0, sizeof(v948));
  sub_24BCC9910(v948, v266, &v268, 5uLL);
  v263[1] = 0;
  v263[0] = 0;
  v264 = 0;
  memset(v949, 0, sizeof(v949));
  sub_24BCC9910(v949, v263, &v265, 5uLL);
  v260[1] = 0;
  v260[0] = 0;
  v261 = 0;
  memset(v950, 0, sizeof(v950));
  sub_24BCC9910(v950, v260, &v262, 5uLL);
  v257[1] = 0;
  v257[0] = 0;
  v258 = 0;
  memset(v951, 0, sizeof(v951));
  sub_24BCC9910(v951, v257, &v259, 5uLL);
  v255 = 82;
  v254 = xmmword_24BFC0A54;
  memset(v952, 0, sizeof(v952));
  sub_24BCC9910(v952, &v254, &v256, 5uLL);
  v251[1] = 0;
  v251[0] = 0;
  v252 = 0;
  memset(v953, 0, sizeof(v953));
  sub_24BCC9910(v953, v251, &v253, 5uLL);
  v248[1] = 0;
  v248[0] = 0;
  v249 = 0;
  memset(v954, 0, sizeof(v954));
  sub_24BCC9910(v954, v248, &v250, 5uLL);
  v245[1] = 0;
  v245[0] = 0;
  v246 = 0;
  memset(v955, 0, sizeof(v955));
  sub_24BCC9910(v955, v245, &v247, 5uLL);
  v242[1] = 0;
  v242[0] = 0;
  v243 = 0;
  memset(v956, 0, sizeof(v956));
  sub_24BCC9910(v956, v242, &v244, 5uLL);
  v239[1] = 0;
  v239[0] = 0;
  v240 = 0;
  memset(v957, 0, sizeof(v957));
  sub_24BCC9910(v957, v239, &v241, 5uLL);
  v236[1] = 0;
  v236[0] = 0;
  v237 = 0;
  memset(v958, 0, sizeof(v958));
  sub_24BCC9910(v958, v236, &v238, 5uLL);
  v233[1] = 0;
  v233[0] = 0;
  v234 = 0;
  memset(v959, 0, sizeof(v959));
  sub_24BCC9910(v959, v233, &v235, 5uLL);
  v231 = 74;
  v230 = xmmword_24BFC0A68;
  memset(v960, 0, sizeof(v960));
  sub_24BCC9910(v960, &v230, &v232, 5uLL);
  v227[1] = 0;
  v227[0] = 0;
  v228 = 0;
  memset(v961, 0, sizeof(v961));
  sub_24BCC9910(v961, v227, &v229, 5uLL);
  v225 = 72;
  v224 = xmmword_24BFC0A7C;
  memset(v962, 0, sizeof(v962));
  sub_24BCC9910(v962, &v224, &v226, 5uLL);
  v221[1] = 0;
  v221[0] = 0;
  v222 = 0;
  memset(v963, 0, sizeof(v963));
  sub_24BCC9910(v963, v221, &v223, 5uLL);
  v219 = 70;
  v218 = xmmword_24BFC0A90;
  memset(v964, 0, sizeof(v964));
  sub_24BCC9910(v964, &v218, &v220, 5uLL);
  v215[1] = 0;
  v215[0] = 0;
  v216 = 0;
  memset(v965, 0, sizeof(v965));
  sub_24BCC9910(v965, v215, &v217, 5uLL);
  v212[1] = 0;
  v212[0] = 0;
  v213 = 0;
  memset(v966, 0, sizeof(v966));
  sub_24BCC9910(v966, v212, &v214, 5uLL);
  v210 = 67;
  v209 = xmmword_24BFC0AA4;
  memset(v967, 0, sizeof(v967));
  sub_24BCC9910(v967, &v209, &v211, 5uLL);
  v206[1] = 0;
  v206[0] = 0;
  v207 = 0;
  memset(v968, 0, sizeof(v968));
  sub_24BCC9910(v968, v206, &v208, 5uLL);
  v204 = 65;
  v203 = xmmword_24BFC0AB8;
  memset(v969, 0, sizeof(v969));
  sub_24BCC9910(v969, &v203, &v205, 5uLL);
  v200[1] = 0;
  v200[0] = 0;
  v201 = 0;
  memset(v970, 0, sizeof(v970));
  sub_24BCC9910(v970, v200, &v202, 5uLL);
  v197[1] = 0;
  v197[0] = 0;
  v198 = 0;
  memset(v971, 0, sizeof(v971));
  sub_24BCC9910(v971, v197, &v199, 5uLL);
  v194[1] = 0;
  v194[0] = 0;
  v195 = 0;
  memset(v972, 0, sizeof(v972));
  sub_24BCC9910(v972, v194, &v196, 5uLL);
  v191[1] = 0;
  v191[0] = 0;
  v192 = 0;
  memset(v973, 0, sizeof(v973));
  sub_24BCC9910(v973, v191, &v193, 5uLL);
  v188[1] = 0;
  v188[0] = 0;
  v189 = 0;
  memset(v974, 0, sizeof(v974));
  sub_24BCC9910(v974, v188, &v190, 5uLL);
  v185[1] = 0;
  v185[0] = 0;
  v186 = 0;
  memset(v975, 0, sizeof(v975));
  sub_24BCC9910(v975, v185, &v187, 5uLL);
  v182[1] = 0;
  v182[0] = 0;
  v183 = 0;
  memset(v976, 0, sizeof(v976));
  sub_24BCC9910(v976, v182, &v184, 5uLL);
  v179[1] = 0;
  v179[0] = 0;
  v180 = 0;
  memset(v977, 0, sizeof(v977));
  sub_24BCC9910(v977, v179, &v181, 5uLL);
  v177 = 56;
  v176 = xmmword_24BFC0ACC;
  memset(v978, 0, sizeof(v978));
  sub_24BCC9910(v978, &v176, &v178, 5uLL);
  v173[1] = 0;
  v173[0] = 0;
  v174 = 0;
  memset(v979, 0, sizeof(v979));
  sub_24BCC9910(v979, v173, &v175, 5uLL);
  v170[1] = 0;
  v170[0] = 0;
  v171 = 0;
  memset(v980, 0, sizeof(v980));
  sub_24BCC9910(v980, v170, &v172, 5uLL);
  v167[1] = 0;
  v167[0] = 0;
  v168 = 0;
  memset(v981, 0, sizeof(v981));
  sub_24BCC9910(v981, v167, &v169, 5uLL);
  v165 = 52;
  v164 = xmmword_24BFC0AE0;
  memset(v982, 0, sizeof(v982));
  sub_24BCC9910(v982, &v164, &v166, 5uLL);
  v161[1] = 0;
  v161[0] = 0;
  v162 = 0;
  memset(v983, 0, sizeof(v983));
  sub_24BCC9910(v983, v161, &v163, 5uLL);
  v158[1] = 0;
  v158[0] = 0;
  v159 = 0;
  memset(v984, 0, sizeof(v984));
  sub_24BCC9910(v984, v158, &v160, 5uLL);
  v155[1] = 0;
  v155[0] = 0;
  v156 = 0;
  memset(v985, 0, sizeof(v985));
  sub_24BCC9910(v985, v155, &v157, 5uLL);
  v152[1] = 0;
  v152[0] = 0;
  v153 = 0;
  memset(v986, 0, sizeof(v986));
  sub_24BCC9910(v986, v152, &v154, 5uLL);
  v149[1] = 0;
  v149[0] = 0;
  v150 = 0;
  memset(v987, 0, sizeof(v987));
  sub_24BCC9910(v987, v149, &v151, 5uLL);
  v146[1] = 0;
  v146[0] = 0;
  v147 = 0;
  memset(v988, 0, sizeof(v988));
  sub_24BCC9910(v988, v146, &v148, 5uLL);
  v143[1] = 0;
  v143[0] = 0;
  v144 = 0;
  memset(v989, 0, sizeof(v989));
  sub_24BCC9910(v989, v143, &v145, 5uLL);
  v141 = 44;
  v140 = xmmword_24BFC0AF4;
  memset(v990, 0, sizeof(v990));
  sub_24BCC9910(v990, &v140, &v142, 5uLL);
  v137[1] = 0;
  v137[0] = 0;
  v138 = 0;
  memset(v991, 0, sizeof(v991));
  sub_24BCC9910(v991, v137, &v139, 5uLL);
  v134[1] = 0;
  v134[0] = 0;
  v135 = 0;
  memset(v992, 0, sizeof(v992));
  sub_24BCC9910(v992, v134, &v136, 5uLL);
  v131[1] = 0;
  v131[0] = 0;
  v132 = 0;
  memset(v993, 0, sizeof(v993));
  sub_24BCC9910(v993, v131, &v133, 5uLL);
  v129 = 40;
  v128 = xmmword_24BFC0B08;
  memset(v994, 0, sizeof(v994));
  sub_24BCC9910(v994, &v128, &v130, 5uLL);
  v125[1] = 0;
  v125[0] = 0;
  v126 = 0;
  memset(v995, 0, sizeof(v995));
  sub_24BCC9910(v995, v125, &v127, 5uLL);
  v123 = 38;
  v122 = xmmword_24BFC0B1C;
  memset(v996, 0, sizeof(v996));
  sub_24BCC9910(v996, &v122, &v124, 5uLL);
  v120 = 37;
  v119 = xmmword_24BFC0B30;
  memset(v997, 0, sizeof(v997));
  sub_24BCC9910(v997, &v119, &v121, 5uLL);
  v116[1] = 0;
  v116[0] = 0;
  v117 = 0;
  memset(v998, 0, sizeof(v998));
  sub_24BCC9910(v998, v116, &v118, 5uLL);
  v113[1] = 0;
  v113[0] = 0;
  v114 = 0;
  memset(v999, 0, sizeof(v999));
  sub_24BCC9910(v999, v113, &v115, 5uLL);
  v110[1] = 0;
  v110[0] = 0;
  v111 = 0;
  memset(v1000, 0, sizeof(v1000));
  sub_24BCC9910(v1000, v110, &v112, 5uLL);
  v108 = 33;
  v107 = xmmword_24BFC0B44;
  memset(v1001, 0, sizeof(v1001));
  sub_24BCC9910(v1001, &v107, &v109, 5uLL);
  v104[1] = 0;
  v104[0] = 0;
  v105 = 0;
  memset(v1002, 0, sizeof(v1002));
  sub_24BCC9910(v1002, v104, &v106, 5uLL);
  v101[1] = 0;
  v101[0] = 0;
  v102 = 0;
  memset(v1003, 0, sizeof(v1003));
  sub_24BCC9910(v1003, v101, &v103, 5uLL);
  v98[1] = 0;
  v98[0] = 0;
  v99 = 0;
  memset(v1004, 0, sizeof(v1004));
  sub_24BCC9910(v1004, v98, &v100, 5uLL);
  v95[1] = 0;
  v95[0] = 0;
  v96 = 0;
  memset(v1005, 0, sizeof(v1005));
  sub_24BCC9910(v1005, v95, &v97, 5uLL);
  v93 = 28;
  v92 = xmmword_24BFC0B58;
  memset(v1006, 0, sizeof(v1006));
  sub_24BCC9910(v1006, &v92, &v94, 5uLL);
  v89[1] = 0;
  v89[0] = 0;
  v90 = 0;
  memset(v1007, 0, sizeof(v1007));
  sub_24BCC9910(v1007, v89, &v91, 5uLL);
  v87 = 26;
  v86 = xmmword_24BFC0B6C;
  memset(v1008, 0, sizeof(v1008));
  sub_24BCC9910(v1008, &v86, &v88, 5uLL);
  v84 = 25;
  v83 = xmmword_24BFC0B80;
  memset(v1009, 0, sizeof(v1009));
  sub_24BCC9910(v1009, &v83, &v85, 5uLL);
  v80[1] = 0;
  v80[0] = 0;
  v81 = 0;
  memset(v1010, 0, sizeof(v1010));
  sub_24BCC9910(v1010, v80, &v82, 5uLL);
  v77[1] = 0;
  v77[0] = 0;
  v78 = 0;
  memset(v1011, 0, sizeof(v1011));
  sub_24BCC9910(v1011, v77, &v79, 5uLL);
  v74[1] = 0;
  v74[0] = 0;
  v75 = 0;
  memset(v1012, 0, sizeof(v1012));
  sub_24BCC9910(v1012, v74, &v76, 5uLL);
  v71[1] = 0;
  v71[0] = 0;
  v72 = 0;
  memset(v1013, 0, sizeof(v1013));
  sub_24BCC9910(v1013, v71, &v73, 5uLL);
  v69 = 20;
  v68 = xmmword_24BFC0B94;
  memset(v1014, 0, sizeof(v1014));
  sub_24BCC9910(v1014, &v68, &v70, 5uLL);
  v65[1] = 0;
  v65[0] = 0;
  v66 = 0;
  memset(v1015, 0, sizeof(v1015));
  sub_24BCC9910(v1015, v65, &v67, 5uLL);
  v63 = 18;
  v62 = xmmword_24BFC0BA8;
  memset(v1016, 0, sizeof(v1016));
  sub_24BCC9910(v1016, &v62, &v64, 5uLL);
  v59[0] = 0;
  v59[1] = 0;
  v60 = 0;
  memset(v1017, 0, sizeof(v1017));
  sub_24BCC9910(v1017, v59, &v61, 5uLL);
  v56[0] = 0;
  v56[1] = 0;
  v57 = 0;
  memset(v1018, 0, sizeof(v1018));
  sub_24BCC9910(v1018, v56, &v58, 5uLL);
  v53[0] = 0;
  v53[1] = 0;
  v54 = 0;
  memset(v1019, 0, sizeof(v1019));
  sub_24BCC9910(v1019, v53, &v55, 5uLL);
  v50[0] = 0;
  v50[1] = 0;
  v51 = 0;
  memset(v1020, 0, sizeof(v1020));
  sub_24BCC9910(v1020, v50, &v52, 5uLL);
  v47[0] = 0;
  v47[1] = 0;
  v48 = 0;
  memset(v1021, 0, sizeof(v1021));
  sub_24BCC9910(v1021, v47, &v49, 5uLL);
  v44[0] = 0;
  v44[1] = 0;
  v45 = 0;
  memset(v1022, 0, sizeof(v1022));
  sub_24BCC9910(v1022, v44, &v46, 5uLL);
  v41[0] = 0;
  v41[1] = 0;
  v42 = 0;
  memset(v1023, 0, sizeof(v1023));
  sub_24BCC9910(v1023, v41, &v43, 5uLL);
  v38[0] = 0;
  v38[1] = 0;
  v39 = 0;
  memset(v1024, 0, sizeof(v1024));
  sub_24BCC9910(v1024, v38, &v40, 5uLL);
  v36 = 9;
  v35 = xmmword_24BFC0BBC;
  memset(v1025, 0, sizeof(v1025));
  sub_24BCC9910(v1025, &v35, &v37, 5uLL);
  v32[0] = 0;
  v32[1] = 0;
  v33 = 0;
  memset(v1026, 0, sizeof(v1026));
  sub_24BCC9910(v1026, v32, &v34, 5uLL);
  v29[0] = 0;
  v29[1] = 0;
  v30 = 0;
  memset(v1027, 0, sizeof(v1027));
  sub_24BCC9910(v1027, v29, &v31, 5uLL);
  v27 = 6;
  v26 = xmmword_24BFC0BD0;
  memset(v1028, 0, sizeof(v1028));
  sub_24BCC9910(v1028, &v26, &v28, 5uLL);
  v23[0] = 0;
  v23[1] = 0;
  v24 = 0;
  memset(v1029, 0, sizeof(v1029));
  sub_24BCC9910(v1029, v23, &v25, 5uLL);
  v20[0] = 0;
  v20[1] = 0;
  v21 = 0;
  memset(v1030, 0, sizeof(v1030));
  sub_24BCC9910(v1030, v20, &v22, 5uLL);
  v17[0] = 0;
  v17[1] = 0;
  v18 = 0;
  memset(v1031, 0, sizeof(v1031));
  sub_24BCC9910(v1031, v17, &v19, 5uLL);
  v14[0] = 0;
  v14[1] = 0;
  v15 = 0;
  memset(v1032, 0, sizeof(v1032));
  sub_24BCC9910(v1032, v14, &v16, 5uLL);
  v11[0] = 0;
  v11[1] = 0;
  v12 = 0;
  memset(v1033, 0, sizeof(v1033));
  sub_24BCC9910(v1033, v11, &v13, 5uLL);
  v8[0] = 0;
  v8[1] = 0;
  v9 = 0;
  memset(v1034, 0, sizeof(v1034));
  sub_24BCC9910(v1034, v8, &v10, 5uLL);
  v5 = 0;
  v6 = 0;
  v7 = 0;
  sub_24BCE220C(&v5, &__p, &v1035, 0x100uLL);
  v0 = 6144;
  while (1)
  {
    v1 = *(&v774 + v0);
    if (v1)
    {
      *(&v774 + v0 + 8) = v1;
      operator delete(v1);
    }

    v0 -= 24;
    if (!v0)
    {
      __dst = 0;
      __p = 0;
      v779 = 0;
      v2 = v5;
      for (i = v6; v2 != i; v2 += 3)
      {
        sub_24BD05818(&__p, __dst, *v2, v2[1], (v2[1] - *v2) >> 2);
      }

      v770 = 0x500000100;
      memset(v4, 0, sizeof(v4));
      sub_24BCC9910(v4, &v770, &v771, 2uLL);
      sub_24BD05A18();
    }
  }
}

void sub_24BD05180(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, uint64_t a11, char a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  v13 = STACK[0x18C8];
  if (STACK[0x18C8])
  {
    STACK[0x18D0] = v13;
    operator delete(v13);
  }

  STACK[0x18C8] = &a12;
  sub_24BC8EE84(&STACK[0x18C8]);
  _Unwind_Resume(a1);
}

uint64_t sub_24BD0564C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_24BC8F47C(result, a4);
  }

  return result;
}

void sub_24BD056B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_24BC8EE10(&a9);
  _Unwind_Resume(a1);
}

void *sub_24BD056D4(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
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
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      sub_24BCE2490(v4, *v6, v6[1], 0xAAAAAAAAAAAAAAABLL * ((v6[1] - *v6) >> 3));
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  sub_24BD05794(v8);
  return v4;
}

uint64_t sub_24BD05794(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_24BD057CC(a1);
  }

  return a1;
}

void sub_24BD057CC(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v1 -= 3;
    v3 = v1;
    sub_24BC8EE84(&v3);
  }
}

char *sub_24BD05818(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = a1[1];
  v9 = a1[2];
  if (a5 > (v9 - v10) >> 2)
  {
    v11 = *a1;
    v12 = a5 + (&v10[-*a1] >> 2);
    if (v12 >> 62)
    {
      sub_24BC8E01C();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 1 > v12)
    {
      v12 = v14 >> 1;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v15 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 2;
    if (v15)
    {
      sub_24BC92E0C(a1, v15);
    }

    v33 = 4 * v16;
    v34 = 4 * a5;
    v35 = (4 * v16);
    do
    {
      v36 = *v7++;
      *v35++ = v36;
      v34 -= 4;
    }

    while (v34);
    memcpy((v33 + 4 * a5), v5, a1[1] - v5);
    v37 = *a1;
    v38 = v33 + 4 * a5 + a1[1] - v5;
    a1[1] = v5;
    v39 = v5 - v37;
    v40 = (v33 - (v5 - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    a1[1] = v38;
    a1[2] = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return (4 * v16);
  }

  v17 = (v10 - __dst) >> 2;
  if (v17 >= a5)
  {
    v22 = &__dst[4 * a5];
    v23 = &v10[-4 * a5];
    v24 = a1[1];
    while (v23 < v10)
    {
      v25 = *v23;
      v23 += 4;
      *v24++ = v25;
    }

    a1[1] = v24;
    if (v10 != v22)
    {
      memmove(&__dst[4 * a5], __dst, v10 - v22);
    }

    v30 = 4 * a5;
    v31 = v5;
    v32 = v7;
    goto LABEL_34;
  }

  v18 = &__src[v10 - __dst];
  v19 = a1[1];
  v20 = v19;
  while (v18 != a4)
  {
    v21 = *v18;
    v18 += 4;
    *v20 = v21;
    v20 += 4;
    v19 += 4;
  }

  a1[1] = v19;
  if (v17 >= 1)
  {
    v26 = &__dst[4 * a5];
    v27 = &v19[-4 * a5];
    v28 = v19;
    while (v27 < v10)
    {
      v29 = *v27;
      v27 += 4;
      *v28 = v29;
      v28 += 4;
    }

    a1[1] = v28;
    if (v20 != v26)
    {
      memmove(&__dst[4 * a5], __dst, v19 - v26);
    }

    if (v10 != v5)
    {
      v31 = v5;
      v32 = v7;
      v30 = v10 - v5;
LABEL_34:
      memmove(v31, v32, v30);
    }
  }

  return v5;
}

void sub_24BD05A70(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_24BC9EC78(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BD05B84(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  v4 = *(v1 + 8);
  if (v4)
  {
    sub_24BC9EC78(v4);
  }

  _Unwind_Resume(a1);
}

double sub_24BD05BAC(double *a1, double *a2, double *a3, double *a4, double *a5, double *a6, double *a7, double *a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, double a17, double *a18, double *a19, double *a20, double *a21, double *a22, double *a23, double *a24, double *a25, double *a26, double *a27, double *a28, double *a29, double *a30, double *a31, double *a32, double *a33, double *a34, double *a35, double *a36)
{
  v36 = a12 * a12 + a9 * a9 + a15 * a15;
  v37 = a12 * a13 + a9 * a10 + a16 * a15;
  v38 = a13 * a13 + a10 * a10 + a16 * a16;
  v39 = a12 * a14 + a9 * a11 + a17 * a15;
  v40 = a13 * a14 + a10 * a11 + a17 * a16;
  v41 = a14 * a14 + a11 * a11 + a17 * a17;
  v42 = 4;
  v43 = 0.0;
  v44 = 1.0;
  v45 = 0.0;
  v46 = 0.0;
  do
  {
    v47 = v36 - v38 + v36 - v38;
    v48 = v37 * (v37 * 5.82842712);
    v49 = v47 * v47;
    v50 = sqrt(v37 * v37 + v47 * v47);
    if (v50 == 0.0)
    {
      v51 = 0.0;
    }

    else
    {
      v51 = 1.0 / v50;
    }

    v52 = v47 * v51;
    v53 = v48 < v49;
    if (v48 >= v49)
    {
      v54 = 0.923879532;
    }

    else
    {
      v54 = v52;
    }

    if (v53)
    {
      v55 = v37 * v51;
    }

    else
    {
      v55 = 0.382683432;
    }

    v56 = v55 * v55 + v54 * v54;
    v57 = -(v55 * v55 - v54 * v54) / v56;
    v58 = v54 * (v55 + v55) / v56;
    v59 = v58 * (v38 * v58 + v57 * v37) + v57 * (v37 * v58 + v57 * v36);
    v60 = v37 * v57 - v58 * v36;
    v61 = v38 * v57 - v58 * v37;
    v62 = v58 * v61 + v57 * v60;
    v63 = v57 * v61 - v58 * v60;
    v64 = v40 * v58 + v57 * v39;
    v65 = v40 * v57 - v58 * v39;
    v66 = v43 * v55;
    v67 = v44 * v55 + v43 * v54;
    v68 = v44 * v54 - v66;
    v69 = v45 * v55 + v46 * v54;
    v70 = v45 * v54 - v46 * v55;
    v71 = v63 - v41 + v63 - v41;
    v72 = v65 * (v65 * 5.82842712);
    v73 = v71 * v71;
    v74 = sqrt(v65 * v65 + v71 * v71);
    if (v74 == 0.0)
    {
      v75 = 0.0;
    }

    else
    {
      v75 = 1.0 / v74;
    }

    v76 = v71 * v75;
    v77 = v72 < v73;
    if (v72 >= v73)
    {
      v78 = 0.923879532;
    }

    else
    {
      v78 = v76;
    }

    if (v77)
    {
      v79 = v65 * v75;
    }

    else
    {
      v79 = 0.382683432;
    }

    v80 = v79 * v79 + v78 * v78;
    v81 = -(v79 * v79 - v78 * v78) / v80;
    v82 = v78 * (v79 + v79) / v80;
    v38 = v82 * (v41 * v82 + v81 * v65) + v81 * (v65 * v82 + v81 * v63);
    v83 = v65 * v81 - v82 * v63;
    v84 = v41 * v81 - v82 * v65;
    v85 = v82 * v84 + v81 * v83;
    v86 = v81 * v84 - v82 * v83;
    v87 = v64 * v82 + v81 * v62;
    v88 = v64 * v81 - v82 * v62;
    v89 = v69 * v79;
    v90 = v70 * v79;
    v91 = v67 * v79;
    v92 = v68 * v79;
    v93 = v70 * v78;
    v94 = v67 * v78;
    v95 = v68 * v78;
    v96 = v92 + v69 * v78;
    v97 = v95 - v89;
    v98 = v91 + v93;
    v99 = v94 - v90;
    v100 = v86 - v59 + v86 - v59;
    v101 = v88 * (v88 * 5.82842712);
    v102 = v100 * v100;
    v103 = sqrt(v88 * v88 + v100 * v100);
    if (v103 == 0.0)
    {
      v104 = 0.0;
    }

    else
    {
      v104 = 1.0 / v103;
    }

    v105 = v100 * v104;
    if (v101 >= v102)
    {
      v106 = 0.923879532;
    }

    else
    {
      v106 = v105;
    }

    if (v101 >= v102)
    {
      v107 = 0.382683432;
    }

    else
    {
      v107 = v88 * v104;
    }

    v108 = v107 * v107 + v106 * v106;
    v109 = -(v107 * v107 - v106 * v106) / v108;
    v110 = v106 * (v107 + v107) / v108;
    v41 = v110 * (v59 * v110 + v109 * v88) + v109 * (v88 * v110 + v109 * v86);
    v111 = v88 * v109 - v110 * v86;
    v112 = v59 * v109 - v110 * v88;
    v39 = v110 * v112 + v109 * v111;
    v36 = v109 * v112 - v110 * v111;
    v40 = v87 * v110 + v109 * v85;
    v37 = v87 * v109 - v110 * v85;
    v113 = v98 * v107;
    v114 = v99 * v107;
    v45 = v97 * v107 + v98 * v106;
    v44 = v97 * v106 - v113;
    v43 = v96 * v107 + v99 * v106;
    v46 = v96 * v106 - v114;
    --v42;
  }

  while (v42);
  *a28 = (v45 * v45 + v43 * v43) * -2.0 + 1.0;
  *a29 = v46 * v45 - v44 * v43 + v46 * v45 - v44 * v43;
  *a30 = v44 * v45 + v46 * v43 + v44 * v45 + v46 * v43;
  *a31 = v46 * v45 + v44 * v43 + v46 * v45 + v44 * v43;
  *a32 = (v46 * v46 + v43 * v43) * -2.0 + 1.0;
  *a33 = v45 * v43 - v44 * v46 + v45 * v43 - v44 * v46;
  *a34 = v46 * v43 - v44 * v45 + v46 * v43 - v44 * v45;
  *a35 = v44 * v46 + v45 * v43 + v44 * v46 + v45 * v43;
  v115 = (v46 * v46 + v45 * v45) * -2.0 + 1.0;
  *a36 = v115;
  v116 = *a34;
  v117 = *a31 * a10 + a9 * *a28 + a11 * *a34;
  v118 = *a32 * a10 + a9 * *a29 + a11 * *a35;
  v119 = *a33 * a10 + a9 * *a30 + a11 * v115;
  v120 = *a31 * a13 + a12 * *a28;
  v121 = v120 + a14 * *a34;
  v122 = *a32 * a13 + a12 * *a29 + a14 * *a35;
  v123 = *a33 * a13 + a12 * *a30 + a14 * v115;
  v124 = *a31 * a16 + a15 * *a28;
  v125 = v124 + a17 * *a34;
  v126 = *a32 * a16 + a15 * *a29 + a17 * *a35;
  v127 = *a33 * a16 + a15 * *a30 + a17 * v115;
  v128 = v121 * v121 + v117 * v117 + v125 * v125;
  v129 = v122 * v122 + v118 * v118 + v126 * v126;
  v130 = v123 * v123 + v119 * v119 + v127 * v127;
  v131 = -v117;
  if (v128 >= v129)
  {
    v132 = v117;
  }

  else
  {
    v132 = v118;
  }

  if (v128 >= v129)
  {
    v131 = v118;
  }

  v133 = -*a28;
  if (v128 >= v129)
  {
    v134 = *a28;
  }

  else
  {
    v134 = *a29;
  }

  *a28 = v134;
  if (v128 >= v129)
  {
    v133 = *a29;
  }

  *a29 = v133;
  v135 = -(v120 + a14 * v116);
  if (v128 >= v129)
  {
    v136 = v121;
  }

  else
  {
    v136 = v122;
  }

  if (v128 >= v129)
  {
    v137 = v122;
  }

  else
  {
    v137 = v135;
  }

  v138 = *a31;
  v139 = -*a31;
  if (v128 < v129)
  {
    v138 = *a32;
  }

  *a31 = v138;
  v140 = *a32;
  if (v128 < v129)
  {
    v140 = v139;
  }

  *a32 = v140;
  if (v128 >= v129)
  {
    v141 = v125;
  }

  else
  {
    v141 = v126;
  }

  if (v128 >= v129)
  {
    v142 = v126;
  }

  else
  {
    v142 = -(v124 + a17 * v116);
  }

  v143 = *a34;
  v144 = -*a34;
  if (v128 < v129)
  {
    v143 = *a35;
  }

  *a34 = v143;
  v145 = *a35;
  if (v128 < v129)
  {
    v145 = v144;
  }

  *a35 = v145;
  if (v128 >= v129)
  {
    v146 = v121 * v121 + v117 * v117 + v125 * v125;
  }

  else
  {
    v146 = v122 * v122 + v118 * v118 + v126 * v126;
  }

  if (v128 >= v129)
  {
    v147 = v122 * v122 + v118 * v118 + v126 * v126;
  }

  else
  {
    v147 = v121 * v121 + v117 * v117 + v125 * v125;
  }

  if (v146 >= v130)
  {
    v148 = v132;
  }

  else
  {
    v148 = v119;
  }

  if (v146 < v130)
  {
    v119 = -v132;
  }

  v149 = *a28;
  v150 = -*a28;
  if (v146 < v130)
  {
    v149 = *a30;
  }

  *a28 = v149;
  v151 = *a30;
  if (v146 < v130)
  {
    v151 = v150;
  }

  *a30 = v151;
  if (v146 >= v130)
  {
    v152 = v136;
  }

  else
  {
    v152 = v123;
  }

  if (v146 >= v130)
  {
    v153 = v123;
  }

  else
  {
    v153 = -v136;
  }

  v154 = *a31;
  v155 = -*a31;
  if (v146 < v130)
  {
    v154 = *a33;
  }

  *a31 = v154;
  v156 = *a33;
  if (v146 < v130)
  {
    v156 = v155;
  }

  *a33 = v156;
  if (v146 >= v130)
  {
    v157 = v141;
  }

  else
  {
    v157 = v127;
  }

  if (v146 >= v130)
  {
    v158 = v127;
  }

  else
  {
    v158 = -v141;
  }

  v159 = *a34;
  v160 = -*a34;
  if (v146 < v130)
  {
    v159 = *a36;
  }

  *a34 = v159;
  v161 = *a36;
  if (v146 < v130)
  {
    v161 = v160;
  }

  *a36 = v161;
  if (v146 >= v130)
  {
    v162 = v130;
  }

  else
  {
    v162 = v146;
  }

  v163 = v147 < v162;
  if (v147 >= v162)
  {
    v164 = v131;
  }

  else
  {
    v164 = v119;
  }

  if (v163)
  {
    v165 = -v131;
  }

  else
  {
    v165 = v119;
  }

  v166 = *a29;
  v167 = -*a29;
  if (v163)
  {
    v166 = *a30;
  }

  *a29 = v166;
  v168 = *a30;
  if (v163)
  {
    v168 = v167;
  }

  *a30 = v168;
  v169 = *a32;
  v170 = -*a32;
  if (v163)
  {
    v169 = *a33;
  }

  *a32 = v169;
  v171 = *a33;
  if (v163)
  {
    v171 = v170;
  }

  *a33 = v171;
  v172 = *a35;
  v173 = *a36;
  if (!v163)
  {
    v173 = *a35;
  }

  *a35 = v173;
  v174 = -v137;
  if (v163)
  {
    v137 = v153;
  }

  v175 = -v172;
  if (!v163)
  {
    v175 = *a36;
  }

  *a36 = v175;
  if (v163)
  {
    v153 = v174;
  }

  v176 = -v142;
  if (v163)
  {
    v142 = v158;
    v158 = v176;
  }

  return sub_24BD06244(a1, a2, a3, a4, a5, a6, a7, a8, v148, v164, v165, v152, v137, v153, v157, v142, v158, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27);
}

double sub_24BD06244(double *a1, double *a2, double *a3, double *a4, double *a5, double *a6, double *a7, double *a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, double a17, double *a18, double *a19, double *a20, double *a21, double *a22, double *a23, double *a24, double *a25, double *a26, double *a27)
{
  v27 = a12 * a12 + a9 * a9;
  v28 = sqrt(v27);
  if (v28 == 0.0)
  {
    v29 = 0.0;
  }

  else
  {
    v29 = 1.0 / v28;
  }

  v30 = v27 * v29;
  if (v30 <= 0.000001)
  {
    v31 = 0.0;
  }

  else
  {
    v31 = a12;
  }

  v32 = fabs(a9) + fmax(v30, 0.000001);
  if (a9 >= 0.0)
  {
    v33 = v31;
  }

  else
  {
    v33 = v32;
  }

  if (a9 < 0.0)
  {
    v32 = v31;
  }

  v34 = sqrt(v33 * v33 + v32 * v32);
  if (v34 == 0.0)
  {
    v35 = 0.0;
  }

  else
  {
    v35 = 1.0 / v34;
  }

  v36 = v32 * v35;
  v37 = v33 * v35;
  v38 = v37 * -2.0 * v37 + 1.0;
  v39 = v37 * (v36 + v36);
  *a19 = v39 * a12 + v38 * a9;
  *a20 = v39 * a13 + v38 * a10;
  *a21 = v39 * a14 + v38 * a11;
  *a22 = v38 * a12 - v39 * a9;
  *a23 = v38 * a13 - v39 * a10;
  *a24 = v38 * a14 - v39 * a11;
  *a25 = a15;
  *a26 = a16;
  *a27 = a17;
  v40 = *a19;
  v41 = *a25;
  v42 = v41 * v41 + v40 * v40;
  v43 = sqrt(v42);
  if (v43 == 0.0)
  {
    v44 = 0.0;
  }

  else
  {
    v44 = 1.0 / v43;
  }

  v45 = v42 * v44;
  if (v45 <= 0.000001)
  {
    v46 = 0.0;
  }

  else
  {
    v46 = *a25;
  }

  v47 = fabs(v40) + fmax(v45, 0.000001);
  if (v40 >= 0.0)
  {
    v48 = v46;
  }

  else
  {
    v48 = v47;
  }

  if (v40 < 0.0)
  {
    v47 = v46;
  }

  v49 = sqrt(v48 * v48 + v47 * v47);
  v50 = 1.0 / v49;
  if (v49 == 0.0)
  {
    v50 = 0.0;
  }

  v51 = v47 * v50;
  v52 = v48 * v50;
  v53 = v52 * -2.0 * v52 + 1.0;
  v54 = v52 * (v51 + v51);
  v55 = v41 * v54 + v53 * v40;
  v56 = *a26 * v54 + v53 * *a20;
  v57 = v54 * a17 + v53 * *a21;
  v58 = *a22;
  v59 = *a23;
  v60 = *a24;
  v61 = v41 * v53 - v54 * v40;
  v62 = *a26 * v53 - v54 * *a20;
  v63 = v53 * a17 - v54 * *a21;
  v64 = v62 * v62 + v59 * v59;
  v65 = sqrt(v64);
  if (v65 == 0.0)
  {
    v66 = 0.0;
  }

  else
  {
    v66 = 1.0 / v65;
  }

  v67 = v64 * v66;
  if (v67 <= 0.000001)
  {
    v68 = 0.0;
  }

  else
  {
    v68 = *a26 * v53 - v54 * *a20;
  }

  v69 = fabs(v59) + fmax(v67, 0.000001);
  if (v59 >= 0.0)
  {
    v70 = v68;
  }

  else
  {
    v70 = v69;
  }

  if (v59 < 0.0)
  {
    v69 = v68;
  }

  v71 = sqrt(v70 * v70 + v69 * v69);
  if (v71 == 0.0)
  {
    v72 = 0.0;
  }

  else
  {
    v72 = 1.0 / v71;
  }

  v73 = v69 * v72;
  v74 = v70 * v72;
  v75 = v70 * v72 * -2.0 * (v70 * v72) + 1.0;
  v76 = v70 * v72 * (v73 + v73);
  *a19 = v55;
  *a20 = v56;
  *a21 = v57;
  *a22 = v61 * v76 + v75 * v58;
  *a23 = v62 * v76 + v75 * v59;
  *a24 = v63 * v76 + v75 * v60;
  *a25 = v61 * v75 - v76 * v58;
  *a26 = v62 * v75 - v76 * v59;
  *a27 = v63 * v75 - v76 * v60;
  v77 = v37 * v37 * 2.0 + -1.0;
  v78 = v52 * v52 * 2.0 + -1.0;
  *a1 = v77 * v78;
  v79 = v74 * v74 * 2.0 + -1.0;
  *a2 = v39 * v79 + v52 * (v77 * (v51 * 4.0 * v73)) * v74;
  *a3 = v52 * (v77 * (v51 * -2.0)) * v79 + v37 * (v36 * 4.0 * v73) * v74;
  v80 = v52 * v52 * -2.0 + 1.0;
  *a4 = v39 * v80;
  *a5 = v77 * v79 + v52 * (v37 * (v36 * -8.0 * v51 * v73)) * v74;
  *a6 = v37 * 4.0 * (v52 * (v36 * v51) * v79 + v37 * v73 * v74) + v73 * -2.0 * v74;
  *a7 = v54;
  *a8 = v74 * (v80 * (v73 + v73));
  result = v78 * v79;
  *a18 = v78 * v79;
  return result;
}

float sub_24BD06594(float *a1, float *a2, float *a3, float *a4, float *a5, float *a6, float *a7, float *a8, float a9, float a10, float a11, float a12, float a13, float a14, float a15, float a16, float a17, float *a18, float *a19, float *a20, float *a21, float *a22, float *a23, float *a24, float *a25, float *a26, float *a27, float *a28, float *a29, float *a30, float *a31, float *a32, float *a33, float *a34, float *a35, float *a36)
{
  v36 = ((a12 * a12) + (a9 * a9)) + (a15 * a15);
  v37 = ((a12 * a13) + (a9 * a10)) + (a16 * a15);
  v38 = ((a13 * a13) + (a10 * a10)) + (a16 * a16);
  v39 = ((a12 * a14) + (a9 * a11)) + (a17 * a15);
  v40 = ((a13 * a14) + (a10 * a11)) + (a17 * a16);
  v41 = ((a14 * a14) + (a11 * a11)) + (a17 * a17);
  v42 = 4;
  v43 = 0.0;
  v44 = 0.0;
  v45 = 0.0;
  v46 = 1.0;
  do
  {
    v47 = (v36 - v38) + (v36 - v38);
    v48 = v37 * 5.82842712 * v37;
    v49 = (v47 * v47);
    v50 = sqrtf((v37 * v37) + (v47 * v47));
    if (v50 == 0.0)
    {
      v51 = 0.0;
    }

    else
    {
      v51 = 1.0 / v50;
    }

    v52 = v47 * v51;
    v53 = v48 < v49;
    if (v48 >= v49)
    {
      v54 = 0.92388;
    }

    else
    {
      v54 = v52;
    }

    if (v53)
    {
      v55 = v37 * v51;
    }

    else
    {
      v55 = 0.38268;
    }

    v56 = (v55 * v55) + (v54 * v54);
    v57 = -((v55 * v55) - (v54 * v54)) / v56;
    v58 = (v54 * (v55 + v55)) / v56;
    v59 = (v58 * ((v38 * v58) + (v57 * v37))) + (v57 * ((v37 * v58) + (v57 * v36)));
    v60 = (v37 * v57) - (v58 * v36);
    v61 = (v38 * v57) - (v58 * v37);
    v62 = (v58 * v61) + (v57 * v60);
    v63 = (v57 * v61) - (v58 * v60);
    v64 = (v40 * v58) + (v57 * v39);
    v65 = (v40 * v57) - (v58 * v39);
    v66 = v45 * v55;
    v67 = (v46 * v55) + (v45 * v54);
    v68 = (v46 * v54) - v66;
    v69 = (v44 * v55) + (v43 * v54);
    v70 = (v44 * v54) - (v43 * v55);
    v71 = (v63 - v41) + (v63 - v41);
    v72 = v65 * 5.82842712 * v65;
    v73 = (v71 * v71);
    v74 = sqrtf((v65 * v65) + (v71 * v71));
    if (v74 == 0.0)
    {
      v75 = 0.0;
    }

    else
    {
      v75 = 1.0 / v74;
    }

    v76 = v71 * v75;
    v77 = v72 < v73;
    if (v72 >= v73)
    {
      v78 = 0.92388;
    }

    else
    {
      v78 = v76;
    }

    if (v77)
    {
      v79 = v65 * v75;
    }

    else
    {
      v79 = 0.38268;
    }

    v80 = (v79 * v79) + (v78 * v78);
    v81 = -((v79 * v79) - (v78 * v78)) / v80;
    v82 = (v78 * (v79 + v79)) / v80;
    v38 = (v82 * ((v41 * v82) + (v81 * v65))) + (v81 * ((v65 * v82) + (v81 * v63)));
    v83 = (v65 * v81) - (v82 * v63);
    v84 = (v41 * v81) - (v82 * v65);
    v85 = (v82 * v84) + (v81 * v83);
    v86 = (v81 * v84) - (v82 * v83);
    v87 = (v64 * v82) + (v81 * v62);
    v88 = (v64 * v81) - (v82 * v62);
    v89 = v69 * v79;
    v90 = v70 * v79;
    v91 = v67 * v79;
    v92 = v68 * v79;
    v93 = v70 * v78;
    v94 = v67 * v78;
    v95 = v68 * v78;
    v96 = v92 + (v69 * v78);
    v97 = v95 - v89;
    v98 = v91 + v93;
    v99 = v94 - v90;
    v100 = (v86 - v59) + (v86 - v59);
    v101 = v88 * 5.82842712 * v88;
    v102 = (v100 * v100);
    v103 = sqrtf((v88 * v88) + (v100 * v100));
    if (v103 == 0.0)
    {
      v104 = 0.0;
    }

    else
    {
      v104 = 1.0 / v103;
    }

    v105 = v100 * v104;
    if (v101 >= v102)
    {
      v106 = 0.92388;
    }

    else
    {
      v106 = v105;
    }

    if (v101 >= v102)
    {
      v107 = 0.38268;
    }

    else
    {
      v107 = v88 * v104;
    }

    v108 = (v107 * v107) + (v106 * v106);
    v109 = -((v107 * v107) - (v106 * v106)) / v108;
    v110 = (v106 * (v107 + v107)) / v108;
    v41 = (v110 * ((v59 * v110) + (v109 * v88))) + (v109 * ((v88 * v110) + (v109 * v86)));
    v111 = (v88 * v109) - (v110 * v86);
    v112 = (v59 * v109) - (v110 * v88);
    v39 = (v110 * v112) + (v109 * v111);
    v36 = (v109 * v112) - (v110 * v111);
    v40 = (v87 * v110) + (v109 * v85);
    v37 = (v87 * v109) - (v110 * v85);
    v113 = v98 * v107;
    v114 = v99 * v107;
    v44 = (v97 * v107) + (v98 * v106);
    v46 = (v97 * v106) - v113;
    v45 = (v96 * v107) + (v99 * v106);
    v43 = (v96 * v106) - v114;
    --v42;
  }

  while (v42);
  *a28 = (((v44 * v44) + (v45 * v45)) * -2.0) + 1.0;
  *a29 = ((v43 * v44) - (v46 * v45)) + ((v43 * v44) - (v46 * v45));
  *a30 = ((v46 * v44) + (v43 * v45)) + ((v46 * v44) + (v43 * v45));
  *a31 = ((v43 * v44) + (v46 * v45)) + ((v43 * v44) + (v46 * v45));
  *a32 = (((v43 * v43) + (v45 * v45)) * -2.0) + 1.0;
  *a33 = ((v44 * v45) - (v46 * v43)) + ((v44 * v45) - (v46 * v43));
  *a34 = ((v43 * v45) - (v46 * v44)) + ((v43 * v45) - (v46 * v44));
  *a35 = ((v46 * v43) + (v44 * v45)) + ((v46 * v43) + (v44 * v45));
  v115 = (((v43 * v43) + (v44 * v44)) * -2.0) + 1.0;
  *a36 = v115;
  v116 = *a34;
  v117 = ((*a31 * a10) + (a9 * *a28)) + (a11 * *a34);
  v118 = ((*a32 * a10) + (a9 * *a29)) + (a11 * *a35);
  v119 = ((*a33 * a10) + (a9 * *a30)) + (a11 * v115);
  v120 = (*a31 * a13) + (a12 * *a28);
  v121 = v120 + (a14 * *a34);
  v122 = ((*a32 * a13) + (a12 * *a29)) + (a14 * *a35);
  v123 = ((*a33 * a13) + (a12 * *a30)) + (a14 * v115);
  v124 = (*a31 * a16) + (a15 * *a28);
  v125 = v124 + (a17 * *a34);
  v126 = ((*a32 * a16) + (a15 * *a29)) + (a17 * *a35);
  v127 = ((*a33 * a16) + (a15 * *a30)) + (a17 * v115);
  v128 = ((v121 * v121) + (v117 * v117)) + (v125 * v125);
  v129 = ((v122 * v122) + (v118 * v118)) + (v126 * v126);
  v130 = ((v123 * v123) + (v119 * v119)) + (v127 * v127);
  v131 = -v117;
  if (v128 >= v129)
  {
    v132 = v117;
  }

  else
  {
    v132 = v118;
  }

  if (v128 >= v129)
  {
    v131 = v118;
  }

  v133 = -*a28;
  if (v128 >= v129)
  {
    v134 = *a28;
  }

  else
  {
    v134 = *a29;
  }

  *a28 = v134;
  if (v128 >= v129)
  {
    v133 = *a29;
  }

  *a29 = v133;
  v135 = -(v120 + (a14 * v116));
  if (v128 >= v129)
  {
    v136 = v121;
  }

  else
  {
    v136 = v122;
  }

  if (v128 >= v129)
  {
    v137 = v122;
  }

  else
  {
    v137 = v135;
  }

  v138 = *a31;
  v139 = -*a31;
  if (v128 < v129)
  {
    v138 = *a32;
  }

  *a31 = v138;
  v140 = *a32;
  if (v128 < v129)
  {
    v140 = v139;
  }

  *a32 = v140;
  if (v128 >= v129)
  {
    v141 = v125;
  }

  else
  {
    v141 = v126;
  }

  if (v128 >= v129)
  {
    v142 = v126;
  }

  else
  {
    v142 = -(v124 + (a17 * v116));
  }

  v143 = *a34;
  v144 = -*a34;
  if (v128 < v129)
  {
    v143 = *a35;
  }

  *a34 = v143;
  v145 = *a35;
  if (v128 < v129)
  {
    v145 = v144;
  }

  *a35 = v145;
  if (v128 >= v129)
  {
    v146 = ((v121 * v121) + (v117 * v117)) + (v125 * v125);
  }

  else
  {
    v146 = ((v122 * v122) + (v118 * v118)) + (v126 * v126);
  }

  if (v128 >= v129)
  {
    v147 = ((v122 * v122) + (v118 * v118)) + (v126 * v126);
  }

  else
  {
    v147 = ((v121 * v121) + (v117 * v117)) + (v125 * v125);
  }

  if (v146 >= v130)
  {
    v148 = v132;
  }

  else
  {
    v148 = v119;
  }

  if (v146 < v130)
  {
    v119 = -v132;
  }

  v149 = *a28;
  v150 = -*a28;
  if (v146 < v130)
  {
    v149 = *a30;
  }

  *a28 = v149;
  v151 = *a30;
  if (v146 < v130)
  {
    v151 = v150;
  }

  *a30 = v151;
  if (v146 >= v130)
  {
    v152 = v136;
  }

  else
  {
    v152 = v123;
  }

  if (v146 >= v130)
  {
    v153 = v123;
  }

  else
  {
    v153 = -v136;
  }

  v154 = *a31;
  v155 = -*a31;
  if (v146 < v130)
  {
    v154 = *a33;
  }

  *a31 = v154;
  v156 = *a33;
  if (v146 < v130)
  {
    v156 = v155;
  }

  *a33 = v156;
  if (v146 >= v130)
  {
    v157 = v141;
  }

  else
  {
    v157 = v127;
  }

  if (v146 >= v130)
  {
    v158 = v127;
  }

  else
  {
    v158 = -v141;
  }

  v159 = *a34;
  v160 = -*a34;
  if (v146 < v130)
  {
    v159 = *a36;
  }

  *a34 = v159;
  v161 = *a36;
  if (v146 < v130)
  {
    v161 = v160;
  }

  *a36 = v161;
  if (v146 >= v130)
  {
    v162 = v130;
  }

  else
  {
    v162 = v146;
  }

  v163 = v147 < v162;
  if (v147 >= v162)
  {
    v164 = v131;
  }

  else
  {
    v164 = v119;
  }

  if (v163)
  {
    v165 = -v131;
  }

  else
  {
    v165 = v119;
  }

  v166 = *a29;
  v167 = -*a29;
  if (v163)
  {
    v166 = *a30;
  }

  *a29 = v166;
  v168 = *a30;
  if (v163)
  {
    v168 = v167;
  }

  *a30 = v168;
  v169 = *a32;
  v170 = -*a32;
  if (v163)
  {
    v169 = *a33;
  }

  *a32 = v169;
  v171 = *a33;
  if (v163)
  {
    v171 = v170;
  }

  *a33 = v171;
  v172 = *a35;
  v173 = *a36;
  if (!v163)
  {
    v173 = *a35;
  }

  *a35 = v173;
  v174 = -v137;
  if (v163)
  {
    v137 = v153;
  }

  v175 = -v172;
  if (!v163)
  {
    v175 = *a36;
  }

  *a36 = v175;
  if (v163)
  {
    v153 = v174;
  }

  v176 = -v142;
  if (v163)
  {
    v142 = v158;
    v158 = v176;
  }

  return sub_24BD06C44(a1, a2, a3, a4, a5, a6, a7, a8, v148, v164, v165, v152, v137, v153, v157, v142, v158, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27);
}

float sub_24BD06C44(float *a1, float *a2, float *a3, float *a4, float *a5, float *a6, float *a7, float *a8, float a9, float a10, float a11, float a12, float a13, float a14, float a15, float a16, float a17, float *a18, float *a19, float *a20, float *a21, float *a22, float *a23, float *a24, float *a25, float *a26, float *a27)
{
  v27 = (a12 * a12) + (a9 * a9);
  v28 = sqrtf(v27);
  if (v28 == 0.0)
  {
    v29 = 0.0;
  }

  else
  {
    v29 = 1.0 / v28;
  }

  v30 = v27 * v29;
  if (v30 <= 0.000001)
  {
    v31 = 0.0;
  }

  else
  {
    v31 = a12;
  }

  v32 = fabsf(a9) + fmaxf(v30, 0.000001);
  if (a9 >= 0.0)
  {
    v33 = v31;
  }

  else
  {
    v33 = v32;
  }

  if (a9 < 0.0)
  {
    v32 = v31;
  }

  v34 = sqrtf((v33 * v33) + (v32 * v32));
  if (v34 == 0.0)
  {
    v35 = 0.0;
  }

  else
  {
    v35 = 1.0 / v34;
  }

  v36 = v32 * v35;
  v37 = v33 * v35;
  v38 = ((v37 * -2.0) * v37) + 1.0;
  v39 = v37 * (v36 + v36);
  *a19 = (v39 * a12) + (v38 * a9);
  *a20 = (v39 * a13) + (v38 * a10);
  *a21 = (v39 * a14) + (v38 * a11);
  *a22 = (v38 * a12) - (v39 * a9);
  *a23 = (v38 * a13) - (v39 * a10);
  *a24 = (v38 * a14) - (v39 * a11);
  *a25 = a15;
  *a26 = a16;
  *a27 = a17;
  v40 = *a19;
  v41 = *a25;
  v42 = (v41 * v41) + (v40 * v40);
  v43 = sqrtf(v42);
  if (v43 == 0.0)
  {
    v44 = 0.0;
  }

  else
  {
    v44 = 1.0 / v43;
  }

  v45 = v42 * v44;
  if (v45 <= 0.000001)
  {
    v46 = 0.0;
  }

  else
  {
    v46 = *a25;
  }

  v47 = fabsf(v40) + fmaxf(v45, 0.000001);
  if (v40 >= 0.0)
  {
    v48 = v46;
  }

  else
  {
    v48 = v47;
  }

  if (v40 < 0.0)
  {
    v47 = v46;
  }

  v49 = sqrtf((v48 * v48) + (v47 * v47));
  v50 = 1.0 / v49;
  if (v49 == 0.0)
  {
    v50 = 0.0;
  }

  v51 = v47 * v50;
  v52 = v48 * v50;
  v53 = ((v52 * -2.0) * v52) + 1.0;
  v54 = v52 * (v51 + v51);
  v55 = (v41 * v54) + (v53 * v40);
  v56 = (*a26 * v54) + (v53 * *a20);
  v57 = (v54 * a17) + (v53 * *a21);
  v58 = *a22;
  v59 = *a23;
  v60 = *a24;
  v61 = (v41 * v53) - (v54 * v40);
  v62 = (*a26 * v53) - (v54 * *a20);
  v63 = (v53 * a17) - (v54 * *a21);
  v64 = (v62 * v62) + (v59 * v59);
  v65 = sqrtf(v64);
  if (v65 == 0.0)
  {
    v66 = 0.0;
  }

  else
  {
    v66 = 1.0 / v65;
  }

  v67 = v64 * v66;
  if (v67 <= 0.000001)
  {
    v68 = 0.0;
  }

  else
  {
    v68 = (*a26 * v53) - (v54 * *a20);
  }

  v69 = fabsf(v59) + fmaxf(v67, 0.000001);
  if (v59 >= 0.0)
  {
    v70 = v68;
  }

  else
  {
    v70 = v69;
  }

  if (v59 < 0.0)
  {
    v69 = v68;
  }

  v71 = sqrtf((v70 * v70) + (v69 * v69));
  if (v71 == 0.0)
  {
    v72 = 0.0;
  }

  else
  {
    v72 = 1.0 / v71;
  }

  v73 = v69 * v72;
  v74 = v70 * v72;
  v75 = (((v70 * v72) * -2.0) * (v70 * v72)) + 1.0;
  v76 = (v70 * v72) * (v73 + v73);
  *a19 = v55;
  *a20 = v56;
  *a21 = v57;
  *a22 = (v61 * v76) + (v75 * v58);
  *a23 = (v62 * v76) + (v75 * v59);
  *a24 = (v63 * v76) + (v75 * v60);
  *a25 = (v61 * v75) - (v76 * v58);
  *a26 = (v62 * v75) - (v76 * v59);
  *a27 = (v63 * v75) - (v76 * v60);
  v77 = ((v37 * v37) * 2.0) + -1.0;
  v78 = ((v52 * v52) * 2.0) + -1.0;
  *a1 = v77 * v78;
  v79 = ((v74 * v74) * 2.0) + -1.0;
  *a2 = (v39 * v79) + ((v52 * (v77 * ((v51 * 4.0) * v73))) * v74);
  *a3 = ((v52 * (v77 * (v51 * -2.0))) * v79) + ((v37 * ((v36 * 4.0) * v73)) * v74);
  v80 = ((v52 * v52) * -2.0) + 1.0;
  *a4 = v39 * v80;
  *a5 = (v77 * v79) + ((v52 * (v37 * (((v36 * -8.0) * v51) * v73))) * v74);
  *a6 = ((v37 * 4.0) * (((v52 * (v36 * v51)) * v79) + ((v37 * v73) * v74))) + ((v73 * -2.0) * v74);
  *a7 = v54;
  *a8 = v74 * (v80 * (v73 + v73));
  result = v78 * v79;
  *a18 = v78 * v79;
  return result;
}

BOOL sub_24BD06F94(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 4);
  if (v5 >= *a1)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  *(a2 + 32) = 1;
  *(a2 + 36) = v6;
  sub_24BC8CAB0((a2 + 40), v6);
  *a2 = v4;
  *(a2 + 4) = v4;
  sub_24BC8CAB0((a2 + 8), v4 * v4);
  *(a2 + 64) = v5;
  *(a2 + 68) = v5;
  sub_24BC8CAB0((a2 + 72), v5 * v5);
  *(a2 + 96) = v4;
  *(a2 + 100) = v5;
  v7 = *(a2 + 8);
  v8 = *(a2 + 40);
  v9 = *(a2 + 72);
  v10 = *(a1 + 8);

  return sub_24BD07028(v10, v4, v5);
}

BOOL sub_24BD07028(uint64_t a1, int a2, int a3)
{
  result = 0;
  if (a2 >= 1 && a3 >= 1)
  {
    v15 = 65;
    v14 = 65;
    v12 = a3;
    v13 = a2;
    v10 = a2;
    v11 = a2;
    v8 = 0;
    v9 = a3;
    v6 = 0.0;
    v7 = -1;
    sgesvd_NEWLAPACK();
    v5 = v6;
    sub_24BC95764(__p, v6);
    sgesvd_NEWLAPACK();
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    return v8 == 0;
  }

  return result;
}

void sub_24BD07164(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_24BD07180(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 4);
  if (v5 >= *a1)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  *(a2 + 32) = 1;
  *(a2 + 36) = v6;
  sub_24BC92930((a2 + 40), v6);
  *a2 = v4;
  *(a2 + 4) = v4;
  sub_24BC92930((a2 + 8), v4 * v4);
  *(a2 + 64) = v5;
  *(a2 + 68) = v5;
  sub_24BC92930((a2 + 72), v5 * v5);
  *(a2 + 96) = v4;
  *(a2 + 100) = v5;
  v7 = *(a2 + 8);
  v8 = *(a2 + 40);
  v9 = *(a2 + 72);
  v10 = *(a1 + 8);

  return sub_24BD07214(v10, v4, v5);
}

BOOL sub_24BD07214(uint64_t a1, int a2, int a3)
{
  result = 0;
  if (a2 >= 1 && a3 >= 1)
  {
    v15 = 65;
    v14 = 65;
    v12 = a3;
    v13 = a2;
    v10 = a2;
    v11 = a2;
    v8 = 0;
    v9 = a3;
    v7 = -1;
    v6 = 0.0;
    dgesvd_NEWLAPACK();
    v5 = v6;
    sub_24BCA1A48(__p, v6);
    dgesvd_NEWLAPACK();
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    return v8 == 0;
  }

  return result;
}

void sub_24BD07354(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_24BD07370(uint64_t *a1, int **a2, uint64_t *a3)
{
  v3 = a1[12] != 0;
  if (!a1[12])
  {
    return v3;
  }

  v7 = a1[1];
  v40 = *a1;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  sub_24BD07D84(&v41, v7, a1[2], (a1[2] - v7) >> 2);
  sub_24BD076C0(&v40);
  sub_24BD07E00(v36, v40, 1);
  v8 = v40;
  if (v40)
  {
    v9 = *a2;
    v10 = v38;
    v11 = v40;
    do
    {
      v12 = *v9++;
      *v10++ = v12;
      --v11;
    }

    while (v11);
  }

  sub_24BD07E00(&v33, v8, v37);
  cblas_sgemm_NEWLAPACK();
  v33 = *(a1 + 9);
  v34 = 1;
  sub_24BC8CAB0(v35, v33);
  v13 = *(a1 + 9);
  if (v13)
  {
    v14 = a1[5];
    v15 = v35[0];
    do
    {
      v16 = 0.0;
      if (fabsf(*v14) > 0.000001)
      {
        v16 = *v15 / *v14;
      }

      *v15++ = v16;
      ++v14;
      --v13;
    }

    while (v13);
  }

  v17 = a1[9];
  v29 = a1[8];
  v30 = 0;
  v31 = 0;
  v32 = 0;
  sub_24BD07D84(&v30, v17, a1[10], (a1[10] - v17) >> 2);
  sub_24BD076C0(&v29);
  v18 = v33;
  if (HIDWORD(v29) <= v33)
  {
    if (HIDWORD(v29) < v33)
    {
      v33 = HIDWORD(v29);
      v34 = 1;
      sub_24BC8CAB0(v35, HIDWORD(v29));
    }
  }

  else
  {
    v33 = HIDWORD(v29);
    v34 = 1;
    sub_24BC8CAB0(v35, HIDWORD(v29));
    if (v18 < HIDWORD(v29))
    {
      bzero(v35[0] + 4 * v18, 4 * (HIDWORD(v29) + ~v18) + 4);
    }
  }

  sub_24BD07E00(&v26, v29, v34);
  cblas_sgemm_NEWLAPACK();
  sub_24BC8CAB0(a3, v26);
  v19 = *a3;
  v20 = a3[1];
  v21 = __p;
  v22 = v20 - *a3;
  if (v20 != *a3)
  {
    v23 = 0;
    v24 = v22 >> 2;
    do
    {
      *(v19 + 4 * v23) = v21[v23];
      ++v23;
    }

    while (v24 > v23);
    goto LABEL_20;
  }

  if (__p)
  {
LABEL_20:
    v28 = v21;
    operator delete(v21);
  }

  if (v30)
  {
    v31 = v30;
    operator delete(v30);
  }

  if (v35[0])
  {
    v35[1] = v35[0];
    operator delete(v35[0]);
  }

  if (v38)
  {
    v39 = v38;
    operator delete(v38);
  }

  if (v41)
  {
    v42 = v41;
    operator delete(v41);
  }

  return v3;
}

void sub_24BD07634(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a22)
  {
    operator delete(a22);
  }

  v25 = *(v23 - 88);
  if (v25)
  {
    *(v23 - 80) = v25;
    operator delete(v25);
  }

  v26 = *(v23 - 56);
  if (v26)
  {
    *(v23 - 48) = v26;
    operator delete(v26);
  }

  _Unwind_Resume(exception_object);
}

int *sub_24BD076C0(int *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v3 == v2)
  {
    if (v3 >= 2)
    {
      v4 = *(a1 + 1);
      v5 = 4 * v3;
      v6 = v4 + 4 * v3;
      v7 = (v4 + 4);
      for (i = 1; i != v3; ++i)
      {
        v9 = 0;
        v10 = v7;
        do
        {
          v11 = *(v6 + 4 * v9);
          *(v6 + 4 * v9) = *v10;
          *v10 = v11;
          ++v9;
          v10 = (v10 + v5);
        }

        while (i != v9);
        v6 += v5;
        ++v7;
      }
    }
  }

  else if (v3 == 1 || v2 == 1)
  {
    *a1 = v2;
    a1[1] = v3;
  }

  else
  {
    sub_24BD07E00(&v23, v2, v3);
    v13 = *a1;
    if (v13)
    {
      v14 = 0;
      v15 = 0;
      v16 = a1[1];
      v17 = __p;
      v18 = 4 * v23;
      do
      {
        if (v16)
        {
          v19 = (*(a1 + 1) + v14);
          v20 = v16;
          v21 = v17;
          do
          {
            *v21++ = *v19;
            v19 += v13;
            --v20;
          }

          while (v20);
        }

        ++v15;
        v14 += 4;
        v17 += v18;
      }

      while (v15 != v13);
    }

    *a1 = v23;
    if (&v23 != a1)
    {
      sub_24BCA2A30(a1 + 1, __p, v25, (v25 - __p) >> 2);
    }

    if (__p)
    {
      v25 = __p;
      operator delete(__p);
    }
  }

  return a1;
}

void sub_24BD07808(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_24BD0787C(uint64_t *a1, uint64_t **a2, uint64_t *a3)
{
  v3 = a1[12] != 0;
  if (!a1[12])
  {
    return v3;
  }

  v7 = a1[1];
  v40 = *a1;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  sub_24BCA39A4(&v41, v7, a1[2], (a1[2] - v7) >> 3);
  sub_24BD07BC8(&v40);
  sub_24BD07F90(v36, v40, 1);
  v8 = v40;
  if (v40)
  {
    v9 = *a2;
    v10 = v38;
    v11 = v40;
    do
    {
      v12 = *v9++;
      *v10++ = v12;
      --v11;
    }

    while (v11);
  }

  sub_24BD07F90(&v33, v8, v37);
  cblas_dgemm_NEWLAPACK();
  v33 = *(a1 + 9);
  v34 = 1;
  sub_24BC92930(v35, v33);
  v13 = *(a1 + 9);
  if (v13)
  {
    v14 = a1[5];
    v15 = v35[0];
    do
    {
      v16 = 0.0;
      if (fabs(*v14) > 0.000001)
      {
        v16 = *v15 / *v14;
      }

      *v15++ = v16;
      ++v14;
      --v13;
    }

    while (v13);
  }

  v17 = a1[9];
  v29 = a1[8];
  v30 = 0;
  v31 = 0;
  v32 = 0;
  sub_24BCA39A4(&v30, v17, a1[10], (a1[10] - v17) >> 3);
  sub_24BD07BC8(&v29);
  v18 = v33;
  if (HIDWORD(v29) <= v33)
  {
    if (HIDWORD(v29) < v33)
    {
      v33 = HIDWORD(v29);
      v34 = 1;
      sub_24BC92930(v35, HIDWORD(v29));
    }
  }

  else
  {
    v33 = HIDWORD(v29);
    v34 = 1;
    sub_24BC92930(v35, HIDWORD(v29));
    if (v18 < HIDWORD(v29))
    {
      bzero(v35[0] + 8 * v18, 8 * (HIDWORD(v29) + ~v18) + 8);
    }
  }

  sub_24BD07F90(&v26, v29, v34);
  cblas_dgemm_NEWLAPACK();
  sub_24BC92930(a3, v26);
  v19 = *a3;
  v20 = a3[1];
  v21 = __p;
  v22 = v20 - *a3;
  if (v20 != *a3)
  {
    v23 = 0;
    v24 = v22 >> 3;
    do
    {
      *(v19 + 8 * v23) = v21[v23];
      ++v23;
    }

    while (v24 > v23);
    goto LABEL_20;
  }

  if (__p)
  {
LABEL_20:
    v28 = v21;
    operator delete(v21);
  }

  if (v30)
  {
    v31 = v30;
    operator delete(v30);
  }

  if (v35[0])
  {
    v35[1] = v35[0];
    operator delete(v35[0]);
  }

  if (v38)
  {
    v39 = v38;
    operator delete(v38);
  }

  if (v41)
  {
    v42 = v41;
    operator delete(v41);
  }

  return v3;
}

void sub_24BD07B3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a22)
  {
    operator delete(a22);
  }

  v25 = *(v23 - 88);
  if (v25)
  {
    *(v23 - 80) = v25;
    operator delete(v25);
  }

  v26 = *(v23 - 56);
  if (v26)
  {
    *(v23 - 48) = v26;
    operator delete(v26);
  }

  _Unwind_Resume(exception_object);
}

int *sub_24BD07BC8(int *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v3 == v2)
  {
    if (v3 >= 2)
    {
      v4 = *(a1 + 1);
      v5 = 8 * v3;
      v6 = v4 + 8 * v3;
      v7 = (v4 + 8);
      for (i = 1; i != v3; ++i)
      {
        v9 = 0;
        v10 = v7;
        do
        {
          v11 = *(v6 + 8 * v9);
          *(v6 + 8 * v9) = *v10;
          *v10 = v11;
          ++v9;
          v10 = (v10 + v5);
        }

        while (i != v9);
        v6 += v5;
        ++v7;
      }
    }
  }

  else if (v3 == 1 || v2 == 1)
  {
    *a1 = v2;
    a1[1] = v3;
  }

  else
  {
    sub_24BD07F90(&v23, v2, v3);
    v13 = *a1;
    if (v13)
    {
      v14 = 0;
      v15 = 0;
      v16 = a1[1];
      v17 = __p;
      v18 = 8 * v23;
      do
      {
        if (v16)
        {
          v19 = (*(a1 + 1) + v14);
          v20 = v16;
          v21 = v17;
          do
          {
            *v21++ = *v19;
            v19 += v13;
            --v20;
          }

          while (v20);
        }

        ++v15;
        v14 += 8;
        v17 += v18;
      }

      while (v15 != v13);
    }

    *a1 = v23;
    if (&v23 != a1)
    {
      sub_24BD07E64(a1 + 1, __p, v25, (v25 - __p) >> 3);
    }

    if (__p)
    {
      v25 = __p;
      operator delete(__p);
    }
  }

  return a1;
}