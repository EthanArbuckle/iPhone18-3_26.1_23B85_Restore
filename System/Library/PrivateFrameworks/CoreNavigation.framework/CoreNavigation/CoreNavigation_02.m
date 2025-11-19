uint64_t sub_1D0B8768C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = *(a3 + 8);
  v14.i64[1] = *(a4 + 8);
  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_s32(v14, xmmword_1D0E87BF0)))))
  {
    return 0xFFFFFFFFLL;
  }

  v131 = v13;
  v132 = v12;
  v133 = v11;
  v134 = v10;
  v135 = v8;
  v136 = v9;
  v128[0] = &unk_1F4CEF658;
  v128[1] = 0;
  v129 = vdupq_n_s64(0x7FF8000000000000uLL);
  v128[2] = 0;
  v130 = NAN;
  if ((*(**a5 + 48))(*a5, a1, v128))
  {
    return 0xFFFFFFFFLL;
  }

  v21 = *(a3 + 32);
  v22 = *v21;
  v23 = v21[1];
  v24 = v21[2];
  v25 = v21[3];
  v26 = sqrt(v23 * v23 + v22 * v22 + v24 * v24 + v25 * v25);
  if (fabs(v26) <= 0.000000015)
  {
    return 0xFFFFFFFFLL;
  }

  v27 = v22 / v26;
  v28 = v23 / v26;
  v29 = v24 / v26;
  v30 = v25 / v26;
  v31 = sqrt(v28 * v28 + v27 * v27 + v29 * v29 + v30 * v30);
  if (fabs(v31) >= 2.22044605e-16)
  {
    v33 = v27 / v31;
    v34 = v28 / v31;
    v35 = v29 / v31;
    v32 = v30 / v31;
  }

  else
  {
    v32 = 1.0;
    v33 = 0.0;
    v34 = 0.0;
    v35 = 0.0;
  }

  *v127 = v33;
  *&v127[1] = v34;
  *&v127[2] = v35;
  *&v127[3] = v32;
  v124 = 0x100000004;
  v123 = xmmword_1D0E7DCE0;
  v122 = &unk_1F4CDEBB8;
  v125 = v126;
  *v126 = v27;
  *&v126[1] = v28;
  *&v126[2] = v29;
  *&v126[3] = v30;
  v36 = *(a4 + 32);
  v37 = *v129.i64 - *v36;
  v38 = *&v129.i64[1] - v36[1];
  v39 = v130 - v36[2];
  cnrotation::CNRotation::RotationDerivativeQuaternion(v127, v37, v38, v39, v121);
  v118 = 0x100000004;
  v117 = xmmword_1D0E7DCE0;
  v116 = &unk_1F4CDEBB8;
  v119 = v120;
  v40 = sub_1D0B894B0(a6, &v116);
  v41 = *(a6 + 32);
  *v41 = v121[0];
  v41[1] = v121[1];
  v41[2] = v121[2];
  v41[3] = v121[3];
  v118 = 0x400000004;
  v117 = xmmword_1D0E7DCD0;
  v116 = &unk_1F4CDEB70;
  v119 = v120;
  v120[0] = 0;
  v120[5] = 0;
  *&v120[8] = -v38;
  *&v120[9] = v37;
  *&v120[1] = -v39;
  *&v120[2] = v38;
  v120[10] = 0;
  *&v120[13] = v38;
  *&v120[14] = v39;
  *&v120[4] = v39;
  *&v120[3] = -v37;
  *&v120[6] = -v37;
  *&v120[7] = -v38;
  *&v120[12] = v37;
  *&v120[11] = -v39;
  v120[15] = 0;
  v104 = 0x400000004;
  v102 = &unk_1F4CDEB70;
  v105 = &v106;
  v103 = xmmword_1D0E7DCD0;
  v114 = 0u;
  v111 = 0;
  v110 = 0u;
  v107 = 0;
  v106 = 0u;
  v109 = 0u;
  v113 = 0u;
  v115 = 0u;
  *&v114 = 0x3FF0000000000000;
  v112 = 0x3FF0000000000000;
  *&v110 = 0xBFF0000000000000;
  v108 = 0xBFF0000000000000;
  v93 = 0x400000004;
  v91 = &unk_1F4CDEB70;
  v94 = &v95;
  v92 = xmmword_1D0E7DCD0;
  v96 = 0u;
  v98 = 0;
  memset(&v99[8], 0, 40);
  v95 = 0u;
  v97 = 0u;
  v101 = 0u;
  v100 = 0x3FF0000000000000;
  *&v96 = 0x3FF0000000000000;
  __asm { FMOV            V3.2D, #-1.0 }

  *v99 = _Q3;
  v80 = 0x400000004;
  v78 = &unk_1F4CDEB70;
  v81 = v82;
  v79 = xmmword_1D0E7DCD0;
  v84 = 0u;
  v82[0] = 0;
  v90 = 0u;
  v87 = 0;
  v83 = 0u;
  v85 = 0u;
  v86 = 0u;
  v89 = 0u;
  *&v84 = 0x3FF0000000000000;
  v82[1] = 0xBFF0000000000000;
  *&v90 = 0x3FF0000000000000;
  v88 = 0xBFF0000000000000;
  v75 = 0x400000004;
  v74 = xmmword_1D0E7DCD0;
  v73 = &unk_1F4CDEB70;
  v76 = v77;
  v40.n128_u64[0] = 0.5;
  sub_1D0B8930C(&v116, &v73, v40);
  sub_1D0B894B0(a7, &v73);
  v60 = 0x100000004;
  v59 = xmmword_1D0E7DCE0;
  v58 = &unk_1F4CDEBB8;
  v61 = &v62;
  sub_1D0B89390(&v102, &v122, &v58);
  v55 = 0x100000004;
  v53 = &unk_1F4CDEBB8;
  v54 = xmmword_1D0E7DCE0;
  v56 = &v57;
  sub_1D0B89390(&v91, &v122, &v53);
  v65 = 0x200000004;
  v64 = xmmword_1D0E87A60;
  v63 = &unk_1F4CE45F8;
  v66 = &v67;
  sub_1D0B8876C(&v58, &v53, &v63);
  v50 = 0x100000004;
  v48 = &unk_1F4CDEBB8;
  v49 = xmmword_1D0E7DCE0;
  v51 = &v52;
  sub_1D0B89390(&v78, &v122, &v48);
  v70 = 0x300000004;
  v69 = xmmword_1D0E7DCF0;
  v68 = &unk_1F4CDEC00;
  v71 = &v72;
  sub_1D0B8876C(&v63, &v48, &v68);
  v75 = 0x300000004;
  *&v47.f64[1] = 0x40000000CLL;
  v74 = xmmword_1D0E7DCF0;
  v73 = &unk_1F4CDEC00;
  v76 = v77;
  v47.f64[0] = -0.5;
  sub_1D0B8930C(&v68, &v73, v47);
  sub_1D0B894B0(a8, &v73);
  return 0;
}

uint64_t sub_1D0B87CF0(uint64_t a1, double *a2, uint64_t a3, double a4, int8x16_t a5)
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
    v121 = &unk_1F4CEF658;
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
  v121 = &unk_1F4CEF658;
  v124 = v31;
  *v117 = &unk_1F4CEF658;
  *&v117[8] = 0;
  v118 = vdupq_n_s64(0x7FF8000000000000uLL);
  *&v117[16] = 0;
  v119 = 0x7FF8000000000000;
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

uint64_t sub_1D0B8876C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 8);
  v4 = *(result + 12);
  v5 = *(a2 + 12);
  *(a3 + 8) = v3;
  *(a3 + 12) = v5 + v4;
  *(a3 + 16) = (v5 + v4) * v3;
  *(a3 + 20) = v3;
  if (v4)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = *(result + 20);
    v10 = *(result + 32);
    v11 = *(a3 + 32);
    do
    {
      v12 = v6;
      result = v7;
      for (i = v3; i; --i)
      {
        *(v11 + 8 * result) = *(v10 + 8 * v12);
        result = (result + 1);
        ++v12;
      }

      ++v8;
      v7 = (v7 + v3);
      v6 += v9;
    }

    while (v8 != v4);
  }

  if (v5)
  {
    v14 = 0;
    v15 = 0;
    v16 = *(a2 + 20);
    v17 = *(a2 + 32);
    v18 = v4 * v3;
    v19 = *(a3 + 32);
    do
    {
      v20 = v14;
      v21 = v18;
      for (result = v3; result; result = (result - 1))
      {
        *(v19 + 8 * v21++) = *(v17 + 8 * v20++);
      }

      ++v15;
      v18 += v3;
      v14 += v16;
    }

    while (v15 != v5);
  }

  return result;
}

float64x2_t sub_1D0B88838(uint64_t a1, uint64_t a2, uint64_t a3)
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
      *v20++ = vaddq_f64(v22, v23);
      --v18;
    }

    while (v18);
    result = vaddq_f64(*(v14 + 8 * v13), *v17);
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
      result.f64[0] = v10 + v11;
      *v8++ = result.f64[0];
      --v5;
    }

    while (v5);
  }

  return result;
}

void cnrotation::CNRotation::RotationDerivativeQuaternion(cnrotation::CNRotation *this@<X0>, double a2@<D0>, double a3@<D1>, double a4@<D2>, uint64_t a5@<X8>)
{
  v25 = 0x400000004;
  v24 = xmmword_1D0E7DCD0;
  v23 = &unk_1F4CDEB70;
  v26 = v27;
  v27[0] = 0;
  v27[5] = 0;
  *&v27[8] = -a3;
  *&v27[9] = a2;
  *&v27[1] = -a4;
  *&v27[2] = a3;
  v27[10] = 0;
  *&v27[13] = a3;
  *&v27[14] = a4;
  *&v27[3] = -a2;
  *&v27[4] = a4;
  *&v27[6] = -a2;
  *&v27[7] = -a3;
  *&v27[11] = -a4;
  *&v27[12] = a2;
  v27[15] = 0;
  v20 = 0x100000004;
  v19 = xmmword_1D0E7DCE0;
  v18 = &unk_1F4CDEBB8;
  v21 = v22;
  v7 = *(this + 1);
  v22[0] = *this;
  v6.f64[1] = *(v22 + 1);
  v22[1] = v7;
  v10 = 0x400000004;
  v8 = &unk_1F4CDEB70;
  v9 = xmmword_1D0E7DCD0;
  v11 = &v12;
  v6.f64[0] = 0.5;
  sub_1D0B8930C(&v23, &v8, v6);
  v15 = 0x100000004;
  v14 = xmmword_1D0E7DCE0;
  v13 = &unk_1F4CDEBB8;
  v16 = &v17;
  sub_1D0B89390(&v8, &v18, &v13);
  sub_1D0B8BD08(a5, &v13);
}

void sub_1D0B88A54(cnrotation::CNRotation *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 8);
  v6 = *(a2 + 12);
  if (v5 == 3 && v6 == 1)
  {
    cnrotation::CNRotation::RotationMatrix(a1, &v25);
    v22 = 0x100000003;
    v20 = &unk_1F4CDEB28;
    v21 = xmmword_1D0E7DCC0;
    v23 = &v24;
    sub_1D0B89390(&v25, a2, &v20);
    sub_1D0B88DB0(a3, &v20);
  }

  else
  {
    if (v5 != 1 || v6 != 3)
    {
      __assert_rtn("RotateCoordinateFrame", "cnrotation.h", 275, "false && Error: CNRotation::RotateCoordinateFrame called with invalid vector.");
    }

    cnrotation::CNRotation::RotationMatrix(a1, &v20);
    v10 = *(a2 + 8);
    v9 = *(a2 + 12);
    v17 = 0x300000001;
    v12 = &unk_1F4CDF248;
    v13 = v9;
    v14 = v10;
    v15 = v10 * v9;
    v16 = v9;
    v18 = &v19;
    sub_1D0BD2018(a2, &v12);
    v27 = 0x300000003;
    v25 = &unk_1F4CD5DD0;
    v26 = xmmword_1D0E76C10;
    v28 = &v29;
    sub_1D0B89390(&v20, &v12, &v25);
    v11 = v26;
    *(a3 + 24) = 0x300000003;
    *a3 = &unk_1F4CD5DD0;
    *(a3 + 8) = HIDWORD(v11);
    *(a3 + 12) = v11;
    *(a3 + 16) = v11 * HIDWORD(v11);
    *(a3 + 20) = HIDWORD(v11);
    *(a3 + 32) = a3 + 40;
    sub_1D0BD2018(&v25, a3);
  }
}

double *cnrotation::Cat@<X0>(double *result@<X0>, double *a2@<X1>, double *a3@<X8>)
{
  v3 = result[1];
  v4 = result[2];
  v5 = result[3];
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  v9 = v4 * v6 + v5 * *a2 - v3 * v7 + *result * v8;
  v10 = v5 * v6 - v4 * *a2 + *result * v7 + v3 * v8;
  v11 = v3 * *a2 - *result * v6 + v5 * v7 + v4 * v8;
  v12 = -(v3 * v6) - *result * *a2 - v4 * v7 + v5 * v8;
  v13 = sqrt(v10 * v10 + v9 * v9 + v11 * v11 + v12 * v12);
  if (fabs(v13) >= 2.22044605e-16)
  {
    v15 = v9 / v13;
    v16 = v10 / v13;
    v17 = v11 / v13;
    v14 = v12 / v13;
  }

  else
  {
    v14 = 1.0;
    v15 = 0.0;
    v16 = 0.0;
    v17 = 0.0;
  }

  *a3 = v15;
  a3[1] = v16;
  a3[2] = v17;
  a3[3] = v14;
  return result;
}

double cnrotation::CNRotation::RotationMatrix@<D0>(cnrotation::CNRotation *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 24) = 0x300000003;
  *a2 = &unk_1F4CD5DD0;
  *(a2 + 8) = xmmword_1D0E76C10;
  v2 = *this;
  v3 = *(this + 1);
  v4 = *(this + 2);
  v5 = *(this + 3);
  v6 = v3 * v3;
  *(a2 + 40) = -(v3 * v3 - *this * *this) - v4 * v4 + v5 * v5;
  *(a2 + 32) = a2 + 40;
  v7 = v3 * v5;
  *(a2 + 48) = -(v4 * v5 - v2 * v3) - (v4 * v5 - v2 * v3);
  *(a2 + 56) = v3 * v5 + v2 * v4 + v3 * v5 + v2 * v4;
  *(a2 + 64) = v4 * v5 + v2 * v3 + v4 * v5 + v2 * v3;
  *(a2 + 72) = v3 * v3 - v2 * v2 - v4 * v4 + v5 * v5;
  v8 = v3 * v4;
  *(a2 + 80) = v8 - v2 * v5 + v8 - v2 * v5;
  *(a2 + 88) = -(v7 - v2 * v4) - (v7 - v2 * v4);
  v9 = v8 + v2 * v5 + v8 + v2 * v5;
  result = v4 * v4 - (v6 + v2 * v2) + v5 * v5;
  *(a2 + 96) = v9;
  *(a2 + 104) = result;
  return result;
}

double sub_1D0B88DB0(uint64_t a1, uint64_t a2)
{
  *&result = 0x300000003;
  *(a1 + 24) = 0x300000003;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F4CD5DD0;
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
    v9 = "this->max_num_rows_ >= A.NumRows()";
    v10 = 567;
    goto LABEL_9;
  }

  if (v3 > 3)
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

int64x2_t sub_1D0B88E94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a2 + 8) == 1)
  {
    v10 = *(a2 + 24);
  }

  else
  {
    LOWORD(v31.__vftable) = 3;
    LOBYTE(v29) = 5;
    cnprint::CNPrinter::Print(&v31, &v29, "Attempted to access type of uninitialized GenericEvent.", a4, a5, a6, a7, a8, v27);
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
    if (v20 != (off_1F4CEEED8 & 0x7FFFFFFFFFFFFFFFLL))
    {
      if (strcmp(v20, (off_1F4CEEED8 & 0x7FFFFFFFFFFFFFFFLL)))
      {
        v31.__vftable = 0;
        std::bad_cast::bad_cast(&v31);
        v31.__vftable = &unk_1F4CE4880;
        sub_1D0DC7F8C();
      }
    }

    v21 = *(a2 + 16);
    *a1 = &unk_1F4CEEEB0;
    *(a1 + 8) = *(v21 + 16);
    v22 = *(v21 + 64);
    v23 = *(v21 + 80);
    v24 = *(v21 + 48);
    *(a1 + 24) = *(v21 + 32);
    *(a1 + 72) = v23;
    *(a1 + 56) = v22;
    *(a1 + 40) = v24;
    v25 = *(v21 + 112);
    result = *(v21 + 128);
    v26 = *(v21 + 138);
    *(a1 + 88) = *(v21 + 96);
    *(a1 + 130) = v26;
    *(a1 + 120) = result;
    *(a1 + 104) = v25;
  }

  else
  {
    v29 = 3;
    v28 = 5;
    if (*(a2 + 8) == 1)
    {
      v18 = *(a2 + 24);
    }

    else
    {
      LOWORD(v31.__vftable) = 3;
      v30 = 5;
      cnprint::CNPrinter::Print(&v31, &v30, "Attempted to access type of uninitialized GenericEvent.", v11, v12, v13, v14, v15, v27);
      v18 = MEMORY[0x1E69E54A8];
    }

    cnprint::CNPrinter::Print(&v29, &v28, "Attempted to cast a GenericEvent of type %s to type %s.", v11, v12, v13, v14, v15, *(v18 + 8));
    *(a1 + 24) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = &unk_1F4CEEEB0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    result = vdupq_n_s64(0x7FF8000000000000uLL);
    *(a1 + 96) = result;
    *(a1 + 112) = result;
    *(a1 + 136) = 0x7FF8000000000000;
    *(a1 + 145) = 0;
  }

  return result;
}

__n128 sub_1D0B8910C(void *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = 26 * ((v5 - v4) >> 3) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    sub_1D0BA6B3C(a1);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v8 = 0;
  }

  else
  {
    v7 = a1[5] + a1[4];
    v8 = *(v4 + 8 * (v7 / 0x1A)) + 152 * (v7 % 0x1A);
  }

  *v8 = &unk_1F4CEEEB0;
  *(v8 + 8) = *(a2 + 8);
  v9 = *(a2 + 24);
  v10 = *(a2 + 40);
  v11 = *(a2 + 56);
  *(v8 + 72) = *(a2 + 72);
  *(v8 + 56) = v11;
  *(v8 + 40) = v10;
  *(v8 + 24) = v9;
  result = *(a2 + 88);
  v13 = *(a2 + 104);
  v14 = *(a2 + 120);
  *(v8 + 130) = *(a2 + 130);
  *(v8 + 120) = v14;
  *(v8 + 104) = v13;
  *(v8 + 88) = result;
  ++a1[5];
  return result;
}

uint64_t CNTimeSpan::operator+(void *a1, void *a2, int8x16_t a3, int8x16_t a4)
{
  a3.i64[0] = a1[1];
  a4.i64[0] = a2[1];
  v6 = __OFADD__(*a1, *a2);
  v7 = *a1 + *a2;
  if (v6)
  {
    return 0;
  }

  v9[2] = v4;
  v9[3] = v5;
  *a3.i64 = *a3.i64 + *a4.i64;
  v9[0] = 0;
  v9[1] = 0;
  CNTimeSpan::SetTimeSpan(v9, v7, a3, a4);
  return v9[0];
}

uint64_t CNTimeSpan::operator-(uint64_t *a1, int8x16_t a2, int8x16_t a3)
{
  a2.i64[0] = a1[1];
  v5 = *a1;
  if (*a1 == 0x8000000000000000)
  {
    return 0;
  }

  v7[2] = v3;
  v7[3] = v4;
  *a2.i64 = -*a2.i64;
  v7[0] = 0;
  v7[1] = 0;
  CNTimeSpan::SetTimeSpan(v7, -v5, a2, a3);
  return v7[0];
}

float64x2_t sub_1D0B8930C(uint64_t a1, uint64_t a2, float64x2_t result)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 12);
  *(a2 + 8) = v4;
  *(a2 + 12) = v3;
  v5 = (v3 * v4);
  *(a2 + 16) = v5;
  *(a2 + 20) = v4;
  if (v5 > 3)
  {
    v9 = (v5 - 2);
    v10 = *(a1 + 32);
    v11 = *(a2 + 32);
    v12 = (v10 + 8 * v9);
    v13 = (v5 - 1) >> 1;
    v14 = v11;
    do
    {
      v15 = *v10++;
      *v14++ = vmulq_n_f64(v15, result.f64[0]);
      --v13;
    }

    while (v13);
    result = vmulq_n_f64(*v12, result.f64[0]);
    *(v11 + 8 * v9) = result;
  }

  else if (v5 >= 1)
  {
    v6 = *(a1 + 32);
    v7 = *(a2 + 32);
    do
    {
      v8 = *v6++;
      *v7++ = v8 * result.f64[0];
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_1D0B89390(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 8);
  v4 = *(a2 + 8);
  v5 = v3;
  *(a3 + 8) = __PAIR64__(HIDWORD(v4), v3);
  *(a3 + 16) = HIDWORD(v4) * v3;
  *(a3 + 20) = v3;
  v6.i64[0] = v4;
  v6.i64[1] = v3;
  v7 = *(result + 32);
  if (vmaxvq_u32(v6) > 5)
  {
    v19 = *(a3 + 32);
    v18 = *(a2 + 32);
    return cblas_dgemm_NEWLAPACK();
  }

  else if (HIDWORD(v4))
  {
    v8 = 0;
    v9 = *(a2 + 32);
    v10 = *(a3 + 32);
    v11 = HIDWORD(v3);
    do
    {
      if (v5)
      {
        v12 = 0;
        v13 = v7;
        do
        {
          v14 = 0.0;
          if (v11)
          {
            v15 = v13;
            result = v9;
            v16 = v11;
            do
            {
              v17 = *result;
              result += 8;
              v14 = v14 + *v15 * v17;
              v15 += v5;
              --v16;
            }

            while (v16);
          }

          *(v10 + 8 * v8 * v5 + 8 * v12++) = v14;
          ++v13;
        }

        while (v12 != v5);
      }

      ++v8;
      v9 += 8 * v4;
    }

    while (v8 != HIDWORD(v4));
  }

  return result;
}

__n128 sub_1D0B894B0(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    v2 = *(a2 + 12);
    *(a1 + 8) = v3;
    *(a1 + 12) = v2;
    v4 = (v2 * v3);
    *(a1 + 16) = v4;
    *(a1 + 20) = v3;
    v5 = *(a2 + 16);
    if (v5 > 3)
    {
      v10 = (v5 - 2);
      v11 = *(a1 + 32);
      v12 = *(a2 + 32);
      v13 = (v11 + 8 * v10);
      v14 = (v5 - 1) >> 1;
      v15 = v12;
      do
      {
        v16 = *v15++;
        *v11++ = v16;
        --v14;
      }

      while (v14);
      result = *(v12 + 8 * v10);
      *v13 = result;
    }

    else if (v4 >= 1)
    {
      v6 = *(a2 + 32);
      v7 = *(a1 + 32);
      do
      {
        v8 = *v6++;
        result.n128_u64[0] = v8;
        *v7++ = v8;
        --v4;
      }

      while (v4);
    }
  }

  return result;
}

uint64_t sub_1D0B8954C(uint64_t a1, double *a2, double a3)
{
  if ((*a1 & 1) == 0)
  {
    *a1 = 0;
    *(a1 + 4) = 0u;
    *(a1 + 20) = 0u;
    *(a1 + 32) = 0u;
  }

  if (a3 <= 0.0)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *(a1 + 4);
  if (v3 != -1)
  {
    v4 = *(a1 + 8) + a3;
    v5 = *(a1 + 16) + a3 * a3;
    *(a1 + 8) = v4;
    *(a1 + 16) = v5;
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v8 = *a2 - v6;
    v9 = v6 + a3 / v4 * v8;
    *(a1 + 4) = v3 + 1;
    *(a1 + 24) = v9;
    v10 = v7 + v8 * a3 * (*a2 - v9);
    *(a1 + 32) = v10;
    if (v10 >= 0.0)
    {
      if (!v3)
      {
LABEL_10:
        v3 = 0;
        *a1 = 1;
        return v3;
      }

      v11 = v4 * v4 - v5;
      if (v11 > 0.000000015)
      {
        v12 = v4 / v11;
        if (v12 > 0.000000015)
        {
          *(a1 + 40) = v12 * v10;
          goto LABEL_10;
        }
      }
    }

    return 0xFFFFFFFFLL;
  }

  return v3;
}

uint64_t cnestimation::RotationStabilizedAccelerationEstimator::AddAcceleration(uint64_t a1, uint64_t a2, double a3, int8x16_t a4)
{
  if (*a1 != 1)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(a1 + 1) == 1)
  {
    v73 = *a2;
    v6 = CNTimeSpan::operator-(&v73, (a1 + 16), v73, a4);
    v8 = v7 + v6;
    if (v8 <= 0.0)
    {
      return 0xFFFFFFFFLL;
    }

    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    v12 = *(a1 + 64);
    v11 = *(a1 + 72);
    *&v70[24] = 0x100000004;
    *v70 = &unk_1F4CDEBB8;
    *&v70[8] = xmmword_1D0E7DCE0;
    v71 = &v72;
    if (sub_1D0B89B20((a1 + 104), &v73, *(a1 + 720), v70))
    {
      return 0xFFFFFFFFLL;
    }

    sub_1D0B8BD08(v58, v70);
    _D3 = *&v58[24];
    __asm { FMLA            D2, D3, V1.D[1] }

    v19 = sqrt(_D2);
    if (fabs(v19) >= 2.22044605e-16)
    {
      v30 = vdupq_lane_s64(*&v19, 0);
      v21 = vdivq_f64(*v58, v30);
      v20 = vdivq_f64(*&v58[16], v30);
    }

    else
    {
      v20 = xmmword_1D0E7DCB0;
      v21 = 0uLL;
    }

    v68 = v21;
    v69 = v20;
    v31 = sqrt(v10 * v10 + v9 * v9 + v12 * v12 + v11 * v11);
    if (fabs(v31) >= 2.22044605e-16)
    {
      v33 = -v9 / v31;
      v34 = -v10 / v31;
      v35 = -v12 / v31;
      v32 = v11 / v31;
    }

    else
    {
      v32 = 1.0;
      v33 = 0.0;
      v34 = 0.0;
      v35 = 0.0;
    }

    *v58 = v33;
    *&v58[8] = v34;
    *&v58[16] = v35;
    *&v58[24] = v32;
    cnrotation::Cat(v68.f64, v58, v67);
    v63 = 0x100000003;
    *&v62[8] = xmmword_1D0E7DCC0;
    *v62 = &unk_1F4CDEB28;
    v64 = &v65;
    v65 = *(a1 + 80);
    v66 = *(a1 + 96);
    sub_1D0B88A54(v67, v62, v58);
    sub_1D0B894B0(v62, v58);
    v54 = 0x100000003;
    v53 = xmmword_1D0E7DCC0;
    v52 = &unk_1F4CDEB28;
    v55 = &v56;
    v56 = *(a2 + 16);
    v36.f64[1] = *(&v56 + 1);
    v57 = *(a2 + 32);
    v37 = v8 / (v8 + *(a1 + 8) / 6.28318531);
    *&v58[24] = 0x100000003;
    *&v58[8] = xmmword_1D0E7DCC0;
    *v58 = &unk_1F4CDEB28;
    v59 = &v60;
    v36.f64[0] = v37;
    v38 = sub_1D0B8930C(&v52, v58, v36);
    v38.f64[0] = 1.0 - v37;
    v44 = 0x100000003;
    v42 = &unk_1F4CDEB28;
    v43 = xmmword_1D0E7DCC0;
    v45 = &v46;
    sub_1D0B8930C(v62, &v42, v38);
    v49 = 0x100000003;
    v47 = &unk_1F4CDEB28;
    v48 = xmmword_1D0E7DCC0;
    v50 = &v51;
    sub_1D0B88838(v58, &v42, &v47);
    *(a1 + 16) = v73;
    v39 = v68;
    v40 = v69;
    if ((a1 + 48) != &v68)
    {
      *(a1 + 48) = v68;
      *(a1 + 64) = v40;
    }

    v41 = v50;
    *(a1 + 80) = *v50;
    *(a1 + 88) = v41[1];
    *(a1 + 96) = v41[2];
    *&v58[24] = 0x100000004;
    *&v58[8] = xmmword_1D0E7DCE0;
    *v58 = &unk_1F4CDEBB8;
    v59 = &v60;
    v60 = v39;
    v61 = v40;
    result = sub_1D0B8DB1C(a1 + 104, &v73, v58);
    if (result)
    {
      *(a1 + 1) = 0;
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    *v62 = *a2;
    *&v58[24] = 0x100000004;
    *v58 = &unk_1F4CDEBB8;
    v59 = &v60;
    v60 = 0uLL;
    *&v58[8] = xmmword_1D0E7DCE0;
    v61.f64[0] = 0.0;
    v61.f64[1] = 1.0;
    if (sub_1D0B8DB1C(a1 + 104, v62, v58))
    {
      return 0xFFFFFFFFLL;
    }

    v23 = *v62;
    *(a1 + 16) = *v62;
    *(a1 + 32) = v23;
    sub_1D0B8BD08(v70, v58);
    _D3 = *&v70[24];
    __asm { FMLA            D2, D3, V1.D[1] }

    v26 = sqrt(_D2);
    if (fabs(v26) >= 2.22044605e-16)
    {
      v29 = vdupq_lane_s64(*&v26, 0);
      v28 = vdivq_f64(*v70, v29);
      v27 = vdivq_f64(*&v70[16], v29);
    }

    else
    {
      v27 = xmmword_1D0E7DCB0;
      v28 = 0uLL;
    }

    result = 0;
    *(a1 + 48) = v28;
    *(a1 + 64) = v27;
    *(a1 + 80) = *(a2 + 16);
    *(a1 + 96) = *(a2 + 32);
    *(a1 + 1) = 1;
  }

  return result;
}

uint64_t sub_1D0B89B20(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!(*(*a1 + 24))(a1))
  {
    return 0xFFFFFFFFLL;
  }

  v8 = a1[5];
  v26 = 0x100000003;
  v21 = &unk_1F4CDEB28;
  v27 = v28;
  v22 = v8;
  v23 = 1;
  v24 = v8;
  v25 = v8;
  if (v8 > 3)
  {
    v10 = &v28[v8];
    bzero(v28, 16 * ((v8 - 1) >> 1));
    *(v10 - 2) = 0;
    *(v10 - 1) = 0;
  }

  else if (v8 >= 1)
  {
    bzero(v28, 8 * v8);
  }

  v18 = 0x400000004;
  v16 = &unk_1F4CDEB70;
  v17 = xmmword_1D0E7DCD0;
  v19 = &v20;
  v13 = 0x300000004;
  v11 = &unk_1F4CDEC00;
  v12 = xmmword_1D0E7DCF0;
  v14 = &v15;
  return (*(*a1 + 96))(a1, a2, &v21, a3, a4, &v16, &v11);
}

uint64_t sub_1D0B89CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = MEMORY[0x1EEE9AC00](a1, a2, a3, a4);
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = v4;
  if (!(*(*v4 + 24))(v4) || !(*(*v17 + 64))(v17))
  {
    return 0xFFFFFFFFLL;
  }

  v20 = *(v17 + 20);
  result = 0xFFFFFFFFLL;
  if (*(v14 + 8) == v20 && *(v14 + 12) == 1)
  {
    v22 = v16;
    v23 = *(v17 + 16);
    v24 = *(v17 + 24);
    v25 = *(v17 + 208);
    v117 = v22;
    v26 = CNTimeSpan::operator-(v22, (v17 + 224), v18, v19);
    v28 = v27 + v26;
    if (fabs(v28) >= 2.22044605e-16)
    {
      v115 = v8;
      v116 = v10;
      v31 = 1.0;
      if (v28 <= 0.0)
      {
        v31 = -1.0;
      }

      v358 = v31;
      v32 = vcvtpd_s64_f64(fabs(v28 / *(v17 + 48)));
      if (v32 <= 1)
      {
        v32 = 1;
      }

      v120 = v32;
      sub_1D0B87544(v357, v17 + 240);
      v361 = 0x400000004;
      v359 = &unk_1F4CDEB70;
      v34 = "avigation3CLP8LogEntry11PrivateData15GlonassSlotInfoE";
      v35 = v23 * v23;
      if (v25)
      {
        v362 = v363;
        LODWORD(v360) = v23;
        DWORD1(v360) = v23;
        DWORD2(v360) = v23 * v23;
        HIDWORD(v360) = v23;
        if (v35 > 3)
        {
          bzero(v363, 16 * ((v35 - 1) >> 1));
          v34 = "avigation3CLP8LogEntry11PrivateData15GlonassSlotInfoE";
          v41 = &v363[v35];
          *(v41 - 2) = 0;
          *(v41 - 1) = 0;
        }

        else if (v35 >= 1)
        {
          bzero(v363, 8 * (v23 * v23));
          v34 = "N14CoreNavigation3CLP8LogEntry11PrivateData15GlonassSlotInfoE" + 8;
        }

        if (v23 >= 1)
        {
          v42 = 0;
          v43 = v362;
          v44 = v23;
          do
          {
            v43[v42] = 0x3FF0000000000000;
            v42 += v23 + 1;
            --v44;
          }

          while (v44);
        }

        v354 = *(v34 + 426);
        v352 = &unk_1F4CDEC00;
        v45 = v20 * v23;
        v355 = v356;
        *&v353 = __PAIR64__(v20, v23);
        DWORD2(v353) = v20 * v23;
        HIDWORD(v353) = v23;
        if ((v20 * v23) > 3)
        {
          bzero(v356, 16 * ((v45 - 1) >> 1));
          v47 = &v356[v45];
          *(v47 - 2) = 0;
          *(v47 - 1) = 0;
        }

        else if (v45 >= 1)
        {
          bzero(v356, 8 * v20 * v23);
        }
      }

      else
      {
        v360 = xmmword_1D0E7DCD0;
        v362 = v363;
        v354 = 0x300000004;
        v353 = xmmword_1D0E7DCF0;
        v352 = &unk_1F4CDEC00;
        v355 = v356;
      }

      v349 = 0x100000004;
      v344 = &unk_1F4CDEBB8;
      v350 = v351;
      v345 = v23;
      v346 = 1;
      v347 = v23;
      v348 = v23;
      if (v23 > 3)
      {
        v48 = &v351[v23];
        bzero(v351, 16 * ((v23 - 1) >> 1));
        *(v48 - 2) = 0;
        *(v48 - 1) = 0;
      }

      else if (v23 >= 1)
      {
        bzero(v351, 8 * v23);
      }

      v341 = 0x400000004;
      v339 = &unk_1F4CDEB70;
      v49 = v28 / v120;
      if (v25)
      {
        v342 = v343;
        LODWORD(v340) = v23;
        DWORD1(v340) = v23;
        DWORD2(v340) = v23 * v23;
        HIDWORD(v340) = v23;
        if (v35 > 3)
        {
          bzero(v343, 16 * ((v35 - 1) >> 1));
          v53 = &v343[v35];
          *(v53 - 2) = 0;
          *(v53 - 1) = 0;
        }

        else if (v35 >= 1)
        {
          bzero(v343, 8 * (v23 * v23));
        }

        v51 = "avigation3CLP8LogEntry11PrivateData15GlonassSlotInfoE";
        v336 = 0x300000004;
        v334 = &unk_1F4CDEC00;
        v54 = v20 * v23;
        v337 = v338;
        *&v335 = __PAIR64__(v20, v23);
        DWORD2(v335) = v20 * v23;
        HIDWORD(v335) = v23;
        if ((v20 * v23) > 3)
        {
          bzero(v338, 16 * ((v54 - 1) >> 1));
          v51 = "avigation3CLP8LogEntry11PrivateData15GlonassSlotInfoE";
          v55 = &v338[v54];
          *(v55 - 2) = 0;
          *(v55 - 1) = 0;
          v52 = "avigation3CLP8LogEntry11PrivateData15GlonassSlotInfoE";
          v50 = "avigation3CLP8LogEntry11PrivateData15GlonassSlotInfoE";
        }

        else
        {
          v52 = "N14CoreNavigation3CLP8LogEntry11PrivateData15GlonassSlotInfoE" + 8;
          v50 = "N14CoreNavigation3CLP8LogEntry11PrivateData15GlonassSlotInfoE" + 8;
          if (v54 >= 1)
          {
            bzero(v338, 8 * v20 * v23);
            v50 = "N14CoreNavigation3CLP8LogEntry11PrivateData15GlonassSlotInfoE" + 8;
            v51 = "N14CoreNavigation3CLP8LogEntry11PrivateData15GlonassSlotInfoE" + 8;
            v52 = "N14CoreNavigation3CLP8LogEntry11PrivateData15GlonassSlotInfoE" + 8;
          }
        }
      }

      else
      {
        v50 = "avigation3CLP8LogEntry11PrivateData15GlonassSlotInfoE";
        v340 = xmmword_1D0E7DCD0;
        v342 = v343;
        v51 = "avigation3CLP8LogEntry11PrivateData15GlonassSlotInfoE";
        v336 = 0x300000004;
        v52 = "avigation3CLP8LogEntry11PrivateData15GlonassSlotInfoE";
        v335 = xmmword_1D0E7DCF0;
        v334 = &unk_1F4CDEC00;
        v337 = v338;
      }

      v121 = *(v50 + 205);
      v56 = *(v51 + 426);
      v57 = *(v52 + 207);
      v122 = v57;
      v58 = 1;
      v119 = v12;
      v118 = v14;
      while (1)
      {
        v57.n128_f64[0] = v49 * (v58 - 1);
        *&v324 = 0;
        v323 = 0;
        *v59.i64 = CNTimeSpan::SetTimeSpan(&v323, 0, v57, v33);
        *&v333 = CNTimeSpan::operator+((v17 + 224), &v323, v59, v60);
        *(&v333 + 1) = v61;
        v330 = 0x100000004;
        v328 = &unk_1F4CDEBB8;
        v329 = xmmword_1D0E7DCE0;
        v331 = &v332;
        sub_1D0B88838(v357, &v344, &v328);
        v325 = 0x400000004;
        v324 = v121;
        v323 = &unk_1F4CDEB70;
        v326 = v327;
        if (v25)
        {
          sub_1D0B88838(&v359, &v339, &v323);
          v320 = v56;
          v319 = v122;
          v318 = &unk_1F4CDEC00;
          v321 = v322;
          sub_1D0B88838(&v352, &v334, &v318);
        }

        else
        {
          v320 = v56;
          v319 = v122;
          v318 = &unk_1F4CDEC00;
          v321 = v322;
        }

        v317 = v333;
        sub_1D0B87544(v316, &v328);
        if (v25)
        {
          sub_1D0DAA484(&v311, &v323);
          v308 = v56;
          v306 = &unk_1F4CDEC00;
          *&v307 = v319;
          v62 = (DWORD1(v319) * v319);
          DWORD2(v307) = DWORD1(v319) * v319;
          HIDWORD(v307) = v319;
          v309 = v310;
          if (v319 > 4)
          {
            v113 = 616;
            v114 = "this->max_num_rows_ >= A.num_rows_";
            goto LABEL_104;
          }

          if (DWORD1(v319) >= 4)
          {
            v113 = 617;
            v114 = "this->max_num_cols_ >= A.num_cols_";
LABEL_104:
            __assert_rtn("CNMatrix", "cnmatrix.h", v113, v114);
          }

          v63 = DWORD2(v319);
          if (SDWORD2(v319) > 3)
          {
            v67 = v321;
            v68 = (DWORD2(v319) - 1) >> 1;
            v69 = v321;
            v70 = v310;
            do
            {
              v71 = *v69++;
              *v70++ = v71;
              --v68;
            }

            while (v68);
            *&v310[v63 - 2] = *&v67[8 * (v63 - 2)];
          }

          else if (v62 >= 1)
          {
            v64 = v321;
            v65 = v310;
            do
            {
              v66 = *v64++;
              *v65++ = v66;
              --v62;
            }

            while (v62);
          }
        }

        else
        {
          v313 = 0x400000004;
          v312 = v121;
          v311 = &unk_1F4CDEB70;
          v314 = &v315;
          v308 = v56;
          v307 = v122;
          v306 = &unk_1F4CDEC00;
          v309 = v310;
        }

        v303 = 0x100000004;
        v302 = xmmword_1D0E7DCE0;
        v301 = &unk_1F4CDEBB8;
        v304 = &v305;
        v298 = 0x400000004;
        v297 = v121;
        v296 = &unk_1F4CDEB70;
        v299 = &v300;
        v293 = v56;
        v292 = v122;
        v291 = &unk_1F4CDEC00;
        v294 = &v295;
        if (v24(&v317, &v358, v316, v14, v12, &v301, &v296, &v291))
        {
          return 0xFFFFFFFFLL;
        }

        v288 = 0x400000004;
        v287 = v121;
        v286 = &unk_1F4CDEB70;
        v289 = &v290;
        if (v25)
        {
          sub_1D0B89390(&v296, &v311, &v286);
          v272 = v56;
          v271 = v122;
          v270 = &unk_1F4CDEC00;
          v273 = v274;
          sub_1D0B89390(&v296, &v306, &v270);
          v283 = v56;
          v282 = v122;
          v281 = &unk_1F4CDEC00;
          v284 = v285;
          v73 = sub_1D0B88838(&v270, &v291, &v281);
        }

        else
        {
          v283 = v56;
          v73.i64[1] = *(&v122 + 1);
          v282 = v122;
          v281 = &unk_1F4CDEC00;
          v284 = v285;
        }

        *&v271 = 0;
        v270 = 0;
        *v73.i64 = v49 * 0.5;
        *v74.i64 = CNTimeSpan::SetTimeSpan(&v270, 0, v73, v72);
        v280[0] = CNTimeSpan::operator+(&v333, &v270, v74, v75);
        v280[1] = v76;
        v272 = 0x100000004;
        *&v77.f64[1] = 0x400000004;
        v271 = xmmword_1D0E7DCE0;
        v270 = &unk_1F4CDEBB8;
        v273 = v274;
        v77.f64[0] = v49 * 0.5;
        sub_1D0B8930C(&v301, &v270, v77);
        v277 = 0x100000004;
        v276 = xmmword_1D0E7DCE0;
        v275 = &unk_1F4CDEBB8;
        v278 = &v279;
        sub_1D0B88838(&v328, &v270, &v275);
        if (v25)
        {
          v267 = 0x400000004;
          v78.f64[1] = *(&v121 + 1);
          v266 = v121;
          v265 = &unk_1F4CDEB70;
          v268 = v269;
          v78.f64[0] = v49 * 0.5;
          sub_1D0B8930C(&v286, &v265, v78);
          v272 = 0x400000004;
          v271 = v121;
          v270 = &unk_1F4CDEB70;
          v273 = v274;
          sub_1D0B88838(&v323, &v265, &v270);
          v267 = v56;
          v79.f64[1] = *(&v122 + 1);
          v266 = v122;
          v265 = &unk_1F4CDEC00;
          v268 = v269;
          v79.f64[0] = v49 * 0.5;
          sub_1D0B8930C(&v281, &v265, v79);
          v262 = v56;
          v261 = v122;
          v260 = &unk_1F4CDEC00;
          v263 = v264;
          sub_1D0B88838(&v318, &v265, &v260);
          v80 = v121;
          v81 = v122;
        }

        else
        {
          v272 = 0x400000004;
          v80 = v121;
          v81 = v122;
          v271 = v121;
          v270 = &unk_1F4CDEB70;
          v273 = v274;
          v262 = v56;
          v261 = v122;
          v260 = &unk_1F4CDEC00;
          v263 = v264;
        }

        v257 = 0x100000004;
        v256 = xmmword_1D0E7DCE0;
        v255 = &unk_1F4CDEBB8;
        v258 = &v259;
        v267 = 0x400000004;
        v266 = v80;
        v265 = &unk_1F4CDEB70;
        v268 = v269;
        v252 = v56;
        v251 = v81;
        v250 = &unk_1F4CDEC00;
        v253 = &v254;
        if (v24(v280, &v358, &v275, v14, v12, &v255, &v265, &v250))
        {
          return 0xFFFFFFFFLL;
        }

        v247 = 0x400000004;
        v246 = v121;
        v245 = &unk_1F4CDEB70;
        v248 = &v249;
        if (v25)
        {
          sub_1D0B89390(&v265, &v270, &v245);
          v231 = v56;
          v230 = v122;
          v229 = &unk_1F4CDEC00;
          v232 = v233;
          sub_1D0B89390(&v265, &v260, &v229);
          v242 = v56;
          v241 = v122;
          v240 = &unk_1F4CDEC00;
          v243 = v244;
          v83 = sub_1D0B88838(&v229, &v250, &v240);
        }

        else
        {
          v242 = v56;
          v83.i64[1] = *(&v122 + 1);
          v241 = v122;
          v240 = &unk_1F4CDEC00;
          v243 = v244;
        }

        *&v230 = 0;
        v229 = 0;
        *v83.i64 = v49 * 0.5;
        *v84.i64 = CNTimeSpan::SetTimeSpan(&v229, 0, v83, v82);
        v239[0] = CNTimeSpan::operator+(&v333, &v229, v84, v85);
        v239[1] = v86;
        v231 = 0x100000004;
        *&v87.f64[1] = 0x400000004;
        v230 = xmmword_1D0E7DCE0;
        v229 = &unk_1F4CDEBB8;
        v232 = v233;
        v87.f64[0] = v49 * 0.5;
        sub_1D0B8930C(&v255, &v229, v87);
        v236 = 0x100000004;
        v235 = xmmword_1D0E7DCE0;
        v234 = &unk_1F4CDEBB8;
        v237 = &v238;
        sub_1D0B88838(&v328, &v229, &v234);
        if (v25)
        {
          v226 = 0x400000004;
          v88.f64[1] = *(&v121 + 1);
          v225 = v121;
          v224 = &unk_1F4CDEB70;
          v227 = v228;
          v88.f64[0] = v49 * 0.5;
          sub_1D0B8930C(&v245, &v224, v88);
          v231 = 0x400000004;
          v230 = v121;
          v229 = &unk_1F4CDEB70;
          v232 = v233;
          sub_1D0B88838(&v323, &v224, &v229);
          v226 = v56;
          v89.f64[1] = *(&v122 + 1);
          v225 = v122;
          v224 = &unk_1F4CDEC00;
          v227 = v228;
          v89.f64[0] = v49 * 0.5;
          sub_1D0B8930C(&v240, &v224, v89);
          v221 = v56;
          v220 = v122;
          v219 = &unk_1F4CDEC00;
          v222 = v223;
          sub_1D0B88838(&v318, &v224, &v219);
          v90 = v121;
          v91 = v122;
        }

        else
        {
          v231 = 0x400000004;
          v90 = v121;
          v91 = v122;
          v230 = v121;
          v229 = &unk_1F4CDEB70;
          v232 = v233;
          v221 = v56;
          v220 = v122;
          v219 = &unk_1F4CDEC00;
          v222 = v223;
        }

        v216 = 0x100000004;
        v215 = xmmword_1D0E7DCE0;
        v214 = &unk_1F4CDEBB8;
        v217 = &v218;
        v226 = 0x400000004;
        v225 = v90;
        v224 = &unk_1F4CDEB70;
        v227 = v228;
        v211 = v56;
        v210 = v91;
        v209 = &unk_1F4CDEC00;
        v212 = &v213;
        v12 = v119;
        if (v24(v239, &v358, &v234, v14, v119, &v214, &v224, &v209))
        {
          return 0xFFFFFFFFLL;
        }

        v206 = 0x400000004;
        v205 = v121;
        v204 = &unk_1F4CDEB70;
        v207 = &v208;
        if (v25)
        {
          sub_1D0B89390(&v224, &v229, &v204);
          v190 = v56;
          v189 = v122;
          v188 = &unk_1F4CDEC00;
          v191 = v192;
          sub_1D0B89390(&v224, &v219, &v188);
          v201 = v56;
          v200 = v122;
          v199 = &unk_1F4CDEC00;
          v202 = v203;
          v93 = sub_1D0B88838(&v188, &v209, &v199);
        }

        else
        {
          v201 = v56;
          v93.i64[1] = *(&v122 + 1);
          v200 = v122;
          v199 = &unk_1F4CDEC00;
          v202 = v203;
        }

        *&v189 = 0;
        v188 = 0;
        *v93.i64 = v49;
        *v94.i64 = CNTimeSpan::SetTimeSpan(&v188, 0, v93, v92);
        v198[0] = CNTimeSpan::operator+(&v333, &v188, v94, v95);
        v198[1] = v96;
        v190 = 0x100000004;
        *&v97.f64[1] = 0x400000004;
        v189 = xmmword_1D0E7DCE0;
        v188 = &unk_1F4CDEBB8;
        v191 = v192;
        v97.f64[0] = v49;
        sub_1D0B8930C(&v214, &v188, v97);
        v195 = 0x100000004;
        v194 = xmmword_1D0E7DCE0;
        v193 = &unk_1F4CDEBB8;
        v196 = &v197;
        sub_1D0B88838(&v328, &v188, &v193);
        if (v25)
        {
          v185 = 0x400000004;
          v98.f64[1] = *(&v121 + 1);
          v184 = v121;
          v183 = &unk_1F4CDEB70;
          v186 = v187;
          v98.f64[0] = v49;
          sub_1D0B8930C(&v204, &v183, v98);
          v190 = 0x400000004;
          v189 = v121;
          v188 = &unk_1F4CDEB70;
          v191 = v192;
          sub_1D0B88838(&v323, &v183, &v188);
          v185 = v56;
          v99.f64[1] = *(&v122 + 1);
          v184 = v122;
          v183 = &unk_1F4CDEC00;
          v186 = v187;
          v99.f64[0] = v49;
          sub_1D0B8930C(&v199, &v183, v99);
          v180 = v56;
          v179 = v122;
          v178 = &unk_1F4CDEC00;
          v181 = v182;
          sub_1D0B88838(&v318, &v183, &v178);
          v100 = v121;
          v101 = v122;
        }

        else
        {
          v190 = 0x400000004;
          v100 = v121;
          v101 = v122;
          v189 = v121;
          v188 = &unk_1F4CDEB70;
          v191 = v192;
          v180 = v56;
          v179 = v122;
          v178 = &unk_1F4CDEC00;
          v181 = v182;
        }

        v175 = 0x100000004;
        v174 = xmmword_1D0E7DCE0;
        v173 = &unk_1F4CDEBB8;
        v176 = &v177;
        v185 = 0x400000004;
        v184 = v100;
        v183 = &unk_1F4CDEB70;
        v186 = v187;
        v170 = v56;
        v169 = v101;
        v168 = &unk_1F4CDEC00;
        v171 = &v172;
        v14 = v118;
        if (v24(v198, &v358, &v193, v118, v119, &v173, &v183, &v168))
        {
          return 0xFFFFFFFFLL;
        }

        if (v25)
        {
          sub_1D0DAA2F4(&v163, &v183, &v188);
          sub_1D0DAA37C(&v183, &v178, &v153);
          sub_1D0DAA2A4(&v158, &v153, &v168);
        }

        else
        {
          v165 = 0x400000004;
          v164 = v121;
          v163 = &unk_1F4CDEB70;
          v166 = &v167;
          v160 = v56;
          v159 = v122;
          v158 = &unk_1F4CDEC00;
          v161 = &v162;
        }

        v130 = 0x100000004;
        *&v102.f64[1] = 0x400000004;
        v129 = xmmword_1D0E7DCE0;
        v128 = &unk_1F4CDEBB8;
        v131 = &v132;
        v102.f64[0] = 2.0;
        sub_1D0B8930C(&v255, &v128, v102);
        v135 = 0x100000004;
        v134 = xmmword_1D0E7DCE0;
        v133 = &unk_1F4CDEBB8;
        v136 = &v137;
        sub_1D0B88838(&v301, &v128, &v133);
        v125 = 0x100000004;
        v123 = &unk_1F4CDEBB8;
        *&v103.f64[1] = 0x400000004;
        v124 = xmmword_1D0E7DCE0;
        v126 = &v127;
        v103.f64[0] = 2.0;
        sub_1D0B8930C(&v214, &v123, v103);
        v140 = 0x100000004;
        v139 = xmmword_1D0E7DCE0;
        v138 = &unk_1F4CDEBB8;
        v141 = &v142;
        sub_1D0B88838(&v133, &v123, &v138);
        v145 = 0x100000004;
        v144 = xmmword_1D0E7DCE0;
        v143 = &unk_1F4CDEBB8;
        v146 = &v147;
        sub_1D0B88838(&v138, &v173, &v143);
        v150 = 0x100000004;
        *&v104.f64[1] = 0x400000004;
        v149 = xmmword_1D0E7DCE0;
        v148 = &unk_1F4CDEBB8;
        v151 = &v152;
        v104.f64[0] = v49 / 6.0;
        sub_1D0B8930C(&v143, &v148, v104);
        v155 = 0x100000004;
        v154 = xmmword_1D0E7DCE0;
        v153 = &unk_1F4CDEBB8;
        v156 = &v157;
        sub_1D0B88838(&v344, &v148, &v153);
        v57 = sub_1D0B894B0(&v344, &v153);
        if (v25)
        {
          v57.n128_u64[0] = 2.0;
          sub_1D0DAA400(&v245, &v128, v57);
          sub_1D0D870A8(&v286, &v128, &v133);
          v105.f64[0] = 2.0;
          sub_1D0DAA400(&v204, &v123, v105);
          sub_1D0D870A8(&v133, &v123, &v138);
          sub_1D0D870A8(&v138, &v163, &v143);
          v106.f64[0] = v49 / 6.0;
          sub_1D0DAA400(&v143, &v148, v106);
          sub_1D0D870A8(&v339, &v148, &v153);
          v107 = sub_1D0B894B0(&v339, &v153);
          v107.n128_u64[0] = 2.0;
          sub_1D0DAA440(&v240, &v128, v107);
          sub_1D0DAA2A4(&v133, &v281, &v128);
          v108.f64[0] = 2.0;
          sub_1D0DAA440(&v199, &v123, v108);
          sub_1D0DAA2A4(&v138, &v133, &v123);
          sub_1D0DAA2A4(&v143, &v138, &v158);
          v109.f64[0] = v49 / 6.0;
          sub_1D0DAA440(&v143, &v148, v109);
          sub_1D0DAA2A4(&v153, &v334, &v148);
          v57 = sub_1D0B894B0(&v334, &v153);
        }

        if (v58++ == v120)
        {
          *(v17 + 40) = v49;
          *(v17 + 224) = *v117;
          v325 = 0x100000004;
          v324 = xmmword_1D0E7DCE0;
          v323 = &unk_1F4CDEBB8;
          v326 = v327;
          sub_1D0B88838(v17 + 240, &v344, &v323);
          sub_1D0B894B0(v17 + 240, &v323);
          if (v25)
          {
            sub_1D0D870A8(&v359, &v339, &v311);
            sub_1D0DAA2F4(&v323, &v311, v17 + 312);
            sub_1D0B894B0(v17 + 312, &v323);
            sub_1D0D870A8(&v359, &v339, &v323);
            sub_1D0DAA37C(&v323, v17 + 480, &v296);
            sub_1D0DAA2A4(&v286, &v352, &v334);
            sub_1D0DAA2A4(&v311, &v296, &v286);
            sub_1D0B894B0(v17 + 480, &v311);
            sub_1D0B894B0(v116, v17 + 240);
            sub_1D0D870A8(&v359, &v339, &v323);
            sub_1D0B894B0(v115, &v323);
            sub_1D0DAA2A4(&v323, &v352, &v334);
            v111 = &v323;
            v112 = v6;
          }

          else
          {
            v111 = (v17 + 240);
            v112 = v116;
          }

          sub_1D0B894B0(v112, v111);
          return 0;
        }
      }
    }

    sub_1D0B894B0(v10, v17 + 240);
    if (v25)
    {
      v29 = v8;
      v361 = 0x400000004;
      v359 = &unk_1F4CDEB70;
      v362 = v363;
      v30 = v23 * v23;
      LODWORD(v360) = v23;
      DWORD1(v360) = v23;
      DWORD2(v360) = v23 * v23;
      HIDWORD(v360) = v23;
      if (v23 * v23 > 3)
      {
        bzero(v363, 16 * ((v30 - 1) >> 1));
        v36 = &v363[v30];
        *(v36 - 2) = 0;
        *(v36 - 1) = 0;
      }

      else if (v30 >= 1)
      {
        bzero(v363, 8 * (v23 * v23));
      }

      if (v23 >= 1)
      {
        v37 = 0;
        v38 = v362;
        v39 = v23;
        do
        {
          v38[v37] = 0x3FF0000000000000;
          v37 += v23 + 1;
          --v39;
        }

        while (v39);
      }

      sub_1D0B894B0(v29, &v359);
      v361 = 0x300000004;
      v359 = &unk_1F4CDEC00;
      v40 = v20 * v23;
      v362 = v363;
      *&v360 = __PAIR64__(v20, v23);
      DWORD2(v360) = v20 * v23;
      HIDWORD(v360) = v23;
      if ((v20 * v23) > 3)
      {
        bzero(v363, 16 * ((v40 - 1) >> 1));
        v46 = &v363[v40];
        *(v46 - 2) = 0;
        *(v46 - 1) = 0;
      }

      else if (v40 >= 1)
      {
        bzero(v363, 8 * v20 * v23);
      }

      sub_1D0B894B0(v6, &v359);
    }

    result = 0;
    *(v17 + 40) = 0;
  }

  return result;
}

double sub_1D0B8BD08(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v2 = *(a2 + 8);
  v3 = *(a2 + 12);
  if (v2 <= v3)
  {
    v4 = *(a2 + 12);
  }

  else
  {
    v4 = *(a2 + 8);
  }

  if (v2)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5 || v4 != 4)
  {
    *a1 = 0uLL;
    *(a1 + 16) = 0uLL;
    __assert_rtn("CNQuaternion", "cnquaternion.h", 60, "false && Error: attempted to create a CNQuaternion from an invalid CNMatrix.");
  }

  v7 = *(a2 + 32);
  *a1 = *v7;
  *(a1 + 8) = *(v7 + 8);
  *(a1 + 16) = *(v7 + 16);
  result = *(v7 + 24);
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_1D0B8BD84(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v24[0] = (*(*a3 + 16))(a3);
  v24[1] = v8;
  v23[0] = (*(*a4 + 16))(a4);
  v23[1] = v9;
  v12 = CNTimeSpan::operator-(a2, v24, v10, v11);
  *v14.i64 = v13;
  *v15.i64 = v12;
  v16 = v13 + v12;
  v17 = CNTimeSpan::operator-(v23, v24, v14, v15);
  v19 = v18 + v17;
  v20 = fabs(v19);
  v21 = v16 / v19;
  if (v20 < 2.22044605e-16)
  {
    v21 = 0.0;
  }

  *(a1 + 8) = *a2;
  *(a1 + 24) = vmlaq_n_f64(*(a3 + 24), vsubq_f64(*(a4 + 24), *(a3 + 24)), v21);
  *(a1 + 40) = *(a3 + 40) + (*(a4 + 40) - *(a3 + 40)) * v21;
  return 0;
}

void CoreNavigation::CLP::LogEntry::LogEntry_TimeStamp::~LogEntry_TimeStamp(CoreNavigation::CLP::LogEntry::LogEntry_TimeStamp *this)
{
  CoreNavigation::CLP::LogEntry::LogEntry_TimeStamp::~LogEntry_TimeStamp(this);

  JUMPOUT(0x1D387ECA0);
}

{
  *this = &unk_1F4CD9408;
  CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void *sub_1D0B8BF18(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      sub_1D0C54E78(result, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

void *sub_1D0B8C020(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x14;
  v3 = v1 - 20;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    sub_1D0C54E78(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_1D0B8BF18(a1, &v10);
}

void sub_1D0B8C1A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::LogEntry::SharedDtor(CoreNavigation::CLP::LogEntry::LogEntry *this)
{
  CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ != this)
  {
    v2 = *(this + 4);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(this + 5);
    if (v3)
    {
      v4 = *(*v3 + 8);

      v4();
    }
  }
}

void CoreNavigation::CLP::LogEntry::LogEntry::~LogEntry(CoreNavigation::CLP::LogEntry::LogEntry *this)
{
  *this = &unk_1F4CD9480;
  CoreNavigation::CLP::LogEntry::LogEntry::SharedDtor(this);
  MEMORY[0x1D387E4E0](this + 8);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::LogEntry::~LogEntry(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(CoreNavigation::CLP::LogEntry *this)
{
  v1 = CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto_once_;
  __dmb(0xBu);
  if (v1 != 2)
  {
    v2[0] = MEMORY[0x1E69E5970] + 16;
    v2[1] = CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto_impl;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }
}

void sub_1D0B8C37C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::SharedDtor(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(this + 2);
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = *(this + 3);
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = *(this + 4);
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = *(this + 5);
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    v7 = *(this + 6);
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    v8 = *(this + 7);
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }

    v9 = *(this + 8);
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }

    v10 = *(this + 9);
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }

    v11 = *(this + 10);
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }

    v12 = *(this + 11);
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }

    v13 = *(this + 12);
    if (v13)
    {
      (*(*v13 + 8))(v13);
    }

    v14 = *(this + 13);
    if (v14)
    {
      (*(*v14 + 8))(v14);
    }

    v15 = *(this + 14);
    if (v15)
    {
      (*(*v15 + 8))(v15);
    }

    v16 = *(this + 15);
    if (v16)
    {
      (*(*v16 + 8))(v16);
    }

    v17 = *(this + 16);
    if (v17)
    {
      (*(*v17 + 8))(v17);
    }

    v18 = *(this + 17);
    if (v18)
    {
      (*(*v18 + 8))(v18);
    }

    v19 = *(this + 18);
    if (v19)
    {
      (*(*v19 + 8))(v19);
    }

    v20 = *(this + 19);
    if (v20)
    {
      (*(*v20 + 8))(v20);
    }

    v21 = *(this + 20);
    if (v21)
    {
      (*(*v21 + 8))(v21);
    }

    v22 = *(this + 21);
    if (v22)
    {
      (*(*v22 + 8))(v22);
    }

    v23 = *(this + 22);
    if (v23)
    {
      (*(*v23 + 8))(v23);
    }

    v24 = *(this + 23);
    if (v24)
    {
      (*(*v24 + 8))(v24);
    }

    v25 = *(this + 24);
    if (v25)
    {
      (*(*v25 + 8))(v25);
    }

    v26 = *(this + 25);
    if (v26)
    {
      (*(*v26 + 8))(v26);
    }

    v27 = *(this + 26);
    if (v27)
    {
      (*(*v27 + 8))(v27);
    }

    v28 = *(this + 27);
    if (v28)
    {
      (*(*v28 + 8))(v28);
    }

    v29 = *(this + 28);
    if (v29)
    {
      (*(*v29 + 8))(v29);
    }

    v30 = *(this + 29);
    if (v30)
    {
      (*(*v30 + 8))(v30);
    }

    v31 = *(this + 30);
    if (v31)
    {
      (*(*v31 + 8))(v31);
    }

    v32 = *(this + 31);
    if (v32)
    {
      (*(*v32 + 8))(v32);
    }

    v33 = *(this + 32);
    if (v33)
    {
      (*(*v33 + 8))(v33);
    }

    v34 = *(this + 33);
    if (v34)
    {
      (*(*v34 + 8))(v34);
    }

    v35 = *(this + 34);
    if (v35)
    {
      (*(*v35 + 8))(v35);
    }

    v36 = *(this + 35);
    if (v36)
    {
      (*(*v36 + 8))(v36);
    }

    v37 = *(this + 36);
    if (v37)
    {
      (*(*v37 + 8))(v37);
    }

    v38 = *(this + 37);
    if (v38)
    {
      (*(*v38 + 8))(v38);
    }

    v39 = *(this + 38);
    if (v39)
    {
      v40 = *(*v39 + 8);

      v40();
    }
  }
}

void CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::~PrivateDataCapture(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture *this)
{
  *this = &unk_1F4CDC738;
  CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::~PrivateDataCapture(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(CoreNavigation::CLP::LogEntry::PrivateData *this)
{
  v1 = CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto_once_;
  __dmb(0xBu);
  if (v1 != 2)
  {
    v2[0] = MEMORY[0x1E69E5970] + 16;
    v2[1] = CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto_impl;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }
}

void sub_1D0B8CBD0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::~TimeStamp(CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp *this)
{
  *this = &unk_1F4CD9528;
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::~TimeStamp(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(CoreNavigation::CLP::LogEntry::PrivateData *this)
{
  v1 = CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto_once_;
  __dmb(0xBu);
  if (v1 != 2)
  {
    v2[0] = MEMORY[0x1E69E5970] + 16;
    v2[1] = CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto_impl;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }
}

void sub_1D0B8CCF8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1D0B8CD0C(uint64_t *a1)
{
  v2 = *(a1 + 3);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*a1 + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(a1 + 3);
      }
    }
  }

  result = *a1;
  if (*a1)
  {

    JUMPOUT(0x1D387EC80);
  }

  return result;
}

void CoreNavigation::CLP::LogEntry::PrivateData::Location::SharedDtor(CoreNavigation::CLP::LogEntry::PrivateData::Location *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(this + 2);
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = *(this + 3);
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = *(this + 5);
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = *(this + 7);
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    v7 = *(this + 8);
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    v8 = *(this + 10);
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }

    v9 = *(this + 11);
    if (v9)
    {
      v10 = *(*v9 + 8);

      v10();
    }
  }
}

void CoreNavigation::CLP::LogEntry::PrivateData::Location::~Location(CoreNavigation::CLP::LogEntry::PrivateData::Location *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::Location::~Location(this);

  JUMPOUT(0x1D387ECA0);
}

{
  *this = &unk_1F4CD9E10;
  CoreNavigation::CLP::LogEntry::PrivateData::Location::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocation::SharedDtor(CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocation *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocation::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(this + 12);
    if (v3)
    {
      v4 = *(*v3 + 8);

      v4();
    }
  }
}

void CoreNavigation::CLP::LogEntry::PrivateData::ClientLocationCoordinate::~ClientLocationCoordinate(CoreNavigation::CLP::LogEntry::PrivateData::ClientLocationCoordinate *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::ClientLocationCoordinate::~ClientLocationCoordinate(this);

  JUMPOUT(0x1D387ECA0);
}

{
  *this = &unk_1F4CD9870;
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocation::~DaemonLocation(CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocation *this)
{
  *this = &unk_1F4CD98E8;
  CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocation::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocation::~DaemonLocation(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate::~DaemonLocationPrivate(CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate *this)
{
  *this = &unk_1F4CD9B40;
  CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate::SharedDtor(this);
  sub_1D0B8CD0C(this + 36);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate::~DaemonLocationPrivate(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate::SharedDtor(CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate::default_instance_ != this)
  {
    v2 = *(this + 8);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(this + 11);
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = *(this + 13);
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = *(this + 17);
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = *(this + 26);
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    v7 = *(this + 40);
    if (v7)
    {
      v8 = *(*v7 + 8);

      v8();
    }
  }
}

void CoreNavigation::CLP::LogEntry::PrivateData::PressureSample::~PressureSample(CoreNavigation::CLP::LogEntry::PrivateData::PressureSample *this)
{
  *this = &unk_1F4CD99D8;
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::PressureSample::~PressureSample(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate_AltitudeInfo::~DaemonLocationPrivate_AltitudeInfo(CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate_AltitudeInfo *this)
{
  *this = &unk_1F4CD9AC8;
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate_AltitudeInfo::~DaemonLocationPrivate_AltitudeInfo(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::PrivateData::TechnologyStatus::~TechnologyStatus(CoreNavigation::CLP::LogEntry::PrivateData::TechnologyStatus *this)
{
  *this = &unk_1F4CD9BB8;
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::TechnologyStatus::~TechnologyStatus(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::PrivateData::XtraFileAvailable::SharedDtor(CoreNavigation::CLP::LogEntry::PrivateData::XtraFileAvailable *this)
{
  v1 = *(this + 2);
  if (v1 != MEMORY[0x1E69E5958] && v1 != 0)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    this = MEMORY[0x1D387ECA0](v1, 0x1012C40EC159624);
  }

  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
}

void CoreNavigation::CLP::LogEntry::PrivateData::XtraFileAvailable::~XtraFileAvailable(CoreNavigation::CLP::LogEntry::PrivateData::XtraFileAvailable *this)
{
  *this = &unk_1F4CD9D20;
  CoreNavigation::CLP::LogEntry::PrivateData::XtraFileAvailable::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::XtraFileAvailable::~XtraFileAvailable(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::PrivateData::LocationDerivedSpeed::~LocationDerivedSpeed(CoreNavigation::CLP::LogEntry::PrivateData::LocationDerivedSpeed *this)
{
  *this = &unk_1F4CD9D98;
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::LocationDerivedSpeed::~LocationDerivedSpeed(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::PrivateData::MapMatcherData::~MapMatcherData(CoreNavigation::CLP::LogEntry::PrivateData::MapMatcherData *this)
{
  *this = &unk_1F4CD9960;
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::MapMatcherData::~MapMatcherData(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::PrivateData::VehicleSpeed::~VehicleSpeed(CoreNavigation::CLP::LogEntry::PrivateData::VehicleSpeed *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::VehicleSpeed::~VehicleSpeed(this);

  JUMPOUT(0x1D387ECA0);
}

{
  *this = &unk_1F4CD9C30;
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

uint64_t trackrun::TrackRunEngineActiveObject::GetTrackRunSolution(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 288));
  if (*(a1 + 1800) == 1 && *(a1 + 1794) == 1)
  {
    memcpy((a2 + 8), (a1 + 1432), 0x16BuLL);
    v4 = 0;
  }

  else
  {
    v4 = 0xFFFFFFFFLL;
  }

  std::mutex::unlock((a1 + 288));
  return v4;
}

__n128 sub_1D0B8D894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a2 + 8) == 1)
  {
    v10 = *(a2 + 24);
  }

  else
  {
    LOWORD(v36.__vftable) = 3;
    LOBYTE(v34) = 5;
    cnprint::CNPrinter::Print(&v36, &v34, "Attempted to access type of uninitialized GenericEvent.", a4, a5, a6, a7, a8, v32);
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

    v21 = (*(v17 + 8) & 0x7FFFFFFFFFFFFFFFLL);
    if (v21 != (off_1F4CEE790 & 0x7FFFFFFFFFFFFFFFLL) && strcmp(v21, (off_1F4CEE790 & 0x7FFFFFFFFFFFFFFFLL)))
    {
      v36.__vftable = 0;
      std::bad_cast::bad_cast(&v36);
      v36.__vftable = &unk_1F4CE4880;
      sub_1D0DC7F8C();
    }

    v22 = *(a2 + 16);
    *a1 = &unk_1F4CEE768;
    result = *(v22 + 112);
    v23 = *(v22 + 128);
    v24 = *(v22 + 144);
    v25 = *(v22 + 160);
    v26 = *(v22 + 48);
    v27 = *(v22 + 64);
    v28 = *(v22 + 80);
    v29 = *(v22 + 96);
    v30 = *(v22 + 16);
    v31 = *(v22 + 32);
    *(a1 + 168) = 0u;
    *(a1 + 8) = v30;
    *(a1 + 24) = v31;
    *(a1 + 72) = v28;
    *(a1 + 88) = v29;
    *(a1 + 40) = v26;
    *(a1 + 56) = v27;
    *(a1 + 136) = v24;
    *(a1 + 152) = v25;
    *(a1 + 104) = result;
    *(a1 + 120) = v23;
    *(a1 + 184) = 0u;
    if (a1 + 168 != v22 + 176)
    {
      *(a1 + 168) = *(v22 + 176);
      result = *(v22 + 192);
      *(a1 + 184) = result;
    }
  }

  else
  {
    v34 = 3;
    v33 = 5;
    if (*(a2 + 8) == 1)
    {
      v18 = *(a2 + 24);
    }

    else
    {
      LOWORD(v36.__vftable) = 3;
      v35 = 5;
      cnprint::CNPrinter::Print(&v36, &v35, "Attempted to access type of uninitialized GenericEvent.", v11, v12, v13, v14, v15, v32);
      v18 = MEMORY[0x1E69E54A8];
    }

    cnprint::CNPrinter::Print(&v34, &v33, "Attempted to cast a GenericEvent of type %s to type %s.", v11, v12, v13, v14, v15, *(v18 + 8));
    result.n128_u64[0] = 0;
    *(a1 + 24) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = &unk_1F4CEE768;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    *(a1 + 88) = 0;
    v20 = vdupq_n_s64(0x7FF8000000000000uLL);
    *(a1 + 96) = v20;
    *(a1 + 112) = v20;
    *(a1 + 128) = v20;
    *(a1 + 144) = 0x7FF8000000000000;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 184) = 0;
    *(a1 + 192) = 0x3FF0000000000000;
  }

  return result;
}

uint64_t sub_1D0B8DB1C(uint64_t a1, _OWORD *a2, uint64_t a3)
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

  *(a1 + 224) = *a2;
  sub_1D0B894B0(a1 + 240, a3);
  v20 = 0x400000004;
  v15 = &unk_1F4CDEB70;
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

  sub_1D0B894B0(a1 + 312, &v15);
  if (*(a1 + 8) == 1)
  {
    v12 = *(a1 + 20);
    v20 = 0x300000004;
    v15 = &unk_1F4CDEC00;
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

    sub_1D0B894B0(a1 + 480, &v15);
  }

  result = 0;
  *(a1 + 216) = 1;
  return result;
}

void *sub_1D0B8DD18(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  v9 = sub_1D0B8D894(v12, a3, a3, a4, a5, a6, a7, a8);
  return raven::RavenDeviceAttitudeActiveObject::HandleEvent(v8, v12, v9, v10);
}

void *raven::RavenDeviceAttitudeActiveObject::HandleEvent(void *this, const raven::DecomposedAccelerationEvent *a2, int8x16_t a3, int8x16_t a4)
{
  if (*(this + 224) == 1)
  {
    v5 = this;
    if (this[1010])
    {
      v6 = CNTimeSpan::operator-((*(this[1006] + 8 * (this[1009] / 0x14uLL)) + 200 * (this[1009] % 0x14uLL) + 152), a2 + 19, a3, a4);
      if (fabs(v7 + v6) >= 2.22044605e-16)
      {
        raven::RavenDeviceAttitudeActiveObject::ResetWahbaSolver(v5);
      }
    }

    this = sub_1D0B8DE4C((v5 + 8040), a2);
    if (*(v5 + 8080) > *(*(v5 + 232) + 984))
    {

      return sub_1D0B8DF84((v5 + 8040));
    }
  }

  return this;
}

void *sub_1D0B8DE4C(void *result, uint64_t a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  v6 = 20 * ((v5 - v4) >> 3) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == result[5] + result[4])
  {
    result = sub_1D0B8C020(result);
    v4 = v3[1];
    v5 = v3[2];
  }

  if (v5 == v4)
  {
    v8 = 0;
  }

  else
  {
    v7 = v3[5] + v3[4];
    v8 = *(v4 + 8 * (v7 / 0x14)) + 200 * (v7 % 0x14);
  }

  *v8 = &unk_1F4CEE768;
  v9 = *(a2 + 8);
  *(v8 + 24) = *(a2 + 24);
  *(v8 + 8) = v9;
  v10 = *(a2 + 40);
  v11 = *(a2 + 56);
  v12 = *(a2 + 72);
  *(v8 + 88) = *(a2 + 88);
  *(v8 + 72) = v12;
  *(v8 + 56) = v11;
  *(v8 + 40) = v10;
  v13 = *(a2 + 104);
  v14 = *(a2 + 120);
  v15 = *(a2 + 136);
  *(v8 + 152) = *(a2 + 152);
  *(v8 + 136) = v15;
  *(v8 + 120) = v14;
  *(v8 + 104) = v13;
  *(v8 + 168) = 0u;
  *(v8 + 184) = 0u;
  if (v8 != a2)
  {
    *(v8 + 168) = *(a2 + 168);
    *(v8 + 184) = *(a2 + 184);
  }

  ++v3[5];
  return result;
}

uint64_t sub_1D0B8DF84(int64x2_t *a1)
{
  (**(*(a1->i64[1] + 8 * (a1[2].i64[0] / 0x14uLL)) + 200 * (a1[2].i64[0] % 0x14uLL)))();
  a1[2] = vaddq_s64(a1[2], xmmword_1D0E76280);

  return sub_1D0B8E038(a1, 1);
}

uint64_t sub_1D0B8E038(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x14)
  {
    a2 = 1;
  }

  if (v2 < 0x28)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 20;
  }

  return v4 ^ 1u;
}

void sub_1D0B8E0BC(uint64_t a1, raven::RavenIMUPreprocessorActiveObject **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0B88E94(v9, a3, a3, a4, a5, a6, a7, a8);
  raven::RavenIMUPreprocessorActiveObject::HandleEvent(v8, v9);
}

void raven::RavenIMUPreprocessorActiveObject::HandleEvent(raven::RavenIMUPreprocessorActiveObject *this, const raven::AccelerometerEvent *a2)
{
  if (*(this + 224) != 1)
  {
    return;
  }

  if (!*(this + 59))
  {
    goto LABEL_25;
  }

  __p = (*(*a2 + 16))(a2);
  *&v67 = v4;
  v5 = *(*(this + 55) + 8 * (*(this + 58) / 0x1AuLL)) + 152 * (*(this + 58) % 0x1AuLL);
  v77[0] = (*(*v5 + 16))(v5);
  v77[1] = v6;
  v9 = CNTimeSpan::operator-(&__p, v77, v7, v8);
  *&v78[0] = v9;
  v78[1] = v10;
  if (v9)
  {
    if (v9 < 0)
    {
      goto LABEL_8;
    }

LABEL_7:
    if (!sub_1D0B8E6A8(v78, this + 45))
    {
      goto LABEL_25;
    }

    goto LABEL_8;
  }

  v11.n128_f64[0] = v10;
  if (v10 >= 0.0)
  {
    goto LABEL_7;
  }

LABEL_8:
  LOWORD(v77[0]) = 12;
  v76 = 3;
  v12 = (*(*a2 + 16))(a2, v11);
  v14 = v13 + v12;
  (*(*this + 16))(&__p, this);
  cnprint::CNPrinter::Print(v77, &v76, "Warning: time,%.3lf,%s emptying history,accelerometer,dt,%.3lf", v15, v16, v17, v18, v19, SLOBYTE(v14));
  if (SHIBYTE(v67) < 0)
  {
    operator delete(__p);
  }

  v20 = *(this + 55);
  v21 = *(this + 56);
  if (v21 == v20)
  {
    v21 = *(this + 55);
  }

  else
  {
    v22 = *(this + 58);
    v23 = &v20[v22 / 0x1A];
    v24 = v20[(*(this + 59) + v22) / 0x1A] + 152 * ((*(this + 59) + v22) % 0x1A);
    if (*v23 + 152 * (v22 % 0x1A) != v24)
    {
      v25 = (*v23 + 152 * (v22 % 0x1A));
      do
      {
        v26 = *v25;
        v25 += 19;
        (*v26)();
        if (v25 - *v23 == 3952)
        {
          v27 = v23[1];
          ++v23;
          v25 = v27;
        }
      }

      while (v25 != v24);
      v20 = *(this + 55);
      v21 = *(this + 56);
    }
  }

  *(this + 59) = 0;
  v28 = v21 - v20;
  if (v28 >= 3)
  {
    do
    {
      operator delete(*v20);
      v29 = *(this + 56);
      v20 = (*(this + 55) + 8);
      *(this + 55) = v20;
      v28 = (v29 - v20) >> 3;
    }

    while (v28 > 2);
  }

  if (v28 == 1)
  {
    v30 = 13;
  }

  else
  {
    if (v28 != 2)
    {
      goto LABEL_25;
    }

    v30 = 26;
  }

  *(this + 58) = v30;
LABEL_25:
  sub_1D0B7E140(this + 27, a2);
  v31 = *(this + 59);
  if (v31 == *(this + 53))
  {
    v67 = 0uLL;
    __p = &unk_1F4CEEEB0;
    LOBYTE(v68) = 0;
    *(&v68 + 1) = 0;
    *&v69 = 0;
    BYTE8(v69) = 0;
    v70 = 0uLL;
    LOBYTE(v71) = 0;
    *(&v71 + 1) = 0;
    *v72 = 0;
    *&v72[8] = vdupq_n_s64(0x7FF8000000000000uLL);
    *&v72[24] = *&v72[8];
    v73 = 0;
    v74 = 0x7FF8000000000000;
    v75 = 0;
    v32 = *(this + 94);
    if (v31 > v32)
    {
      v33 = *(this + 58);
      v34 = v33 + v32;
      v35 = *(this + 55);
      v36 = *(v35 + 8 * (v34 / 0x1A)) + 152 * (v34 % 0x1A);
      v37 = *(v36 + 8);
      v68 = *(v36 + 24);
      v67 = v37;
      v38 = *(v36 + 40);
      v39 = *(v36 + 56);
      v40 = *(v36 + 72);
      *v72 = *(v36 + 88);
      v71 = v40;
      v70 = v39;
      v69 = v38;
      memset(&v72[16], 0, 24);
      v41 = *(this + 52);
      v42 = *(this + 49);
      v43 = *(this + 50);
      v44 = (v42 + 8 * (v41 >> 9));
      if (v43 == v42)
      {
        v45 = 0;
      }

      else
      {
        v45 = (*v44 + 8 * (*(this + 52) & 0x1FFLL));
      }

      v46 = (v35 + 8 * (v33 / 0x1A));
      v47 = *(this + 56);
      if (v47 == v35)
      {
        v48 = 0;
      }

      else
      {
        v48 = *v46 + 152 * (v33 % 0x1A);
      }

      v49 = (v33 + v31) % 0x1A;
      v50 = v41 + v31;
      v51 = (v41 + v31) >> 9;
      v52 = v50 & 0x1FF;
      v53 = 0uLL;
      v39.n128_u64[0] = 0;
      while (1)
      {
        v54 = v48 - 3952;
        do
        {
          if (v43 == v42)
          {
            v55 = 0;
          }

          else
          {
            v55 = *(v42 + 8 * v51) + 8 * v52;
          }

          if (v45 == v55 || (v47 == v35 ? (v56 = 0) : (v56 = *(v35 + 8 * ((v33 + v31) / 0x1A)) + 152 * v49), v48 == v56))
          {
            v60 = (*(v35 + 8 * ((v31 + v33 - 1) / 0x1A)) + 152 * ((v31 + v33 - 1) % 0x1A));
            (**v60)(v60, v49, v53, v39);
            v61 = *(this + 56);
            v62 = v61 == *(this + 55);
            v63 = 26 * ((v61 - *(this + 55)) >> 3) - 1;
            v65 = *(this + 58);
            v64 = *(this + 59);
            *(this + 59) = v64 - 1;
            if (v62)
            {
              v63 = 0;
            }

            if ((v63 - (v64 + v65) - 51) <= 0xFFFFFFFFFFFFFFCBLL)
            {
              operator delete(*(v61 - 8));
              *(this + 56) -= 8;
            }

            sub_1D0B8E718();
          }

          v57 = *v45++;
          v53 = vmlaq_n_f64(v53, *(v48 + 104), v57);
          *&v72[16] = v53;
          v39.n128_f64[0] = v39.n128_f64[0] + v57 * *(v48 + 120);
          *&v72[32] = v39.n128_u64[0];
          if ((v45 - *v44) == 4096)
          {
            v58 = v44[1];
            ++v44;
            v45 = v58;
          }

          v54 += 152;
          v48 += 152;
        }

        while (*v46 != v54);
        v59 = v46[1];
        ++v46;
        v48 = v59;
      }
    }

    sub_1D0C543A8("deque");
  }
}

void sub_1D0B8E680(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1D0B8E6A8(double *a1, double *a2)
{
  v2 = *a1;
  if (*a1 || (v3 = a1[1], (*&v3 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000))
  {
    v4 = *a2;
    if (!*a2 && (a2[1] & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      v5 = a1[1] < a2[1];
      return !v5;
    }

    if (*&v2 != *&v4)
    {
      return *&v2 > *&v4;
    }

    v3 = a1[1];
  }

  v5 = v3 < a2[1];
  return !v5;
}

void sub_1D0B8E7AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
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

void sub_1D0B8E7D0(uint64_t a1, int64x2_t **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0B88E94(v9, a3, a3, a4, a5, a6, a7, a8);
  raven::RavenDeviceAttitudeActiveObject::HandleEvent(v8, v9);
}

uint64_t sub_1D0B8E830(int64x2_t *a1, uint64_t a2, double *a3, unint64_t a4)
{
  v8 = sub_1D0B8910C(a1, a2);
  if (a1[2].i64[1])
  {
    for (i = 1; ; i = 0)
    {
      v19[0] = (*(*a2 + 16))(a2, v8);
      v19[1] = v10;
      v11 = *(a1->i64[1] + 8 * (a1[2].i64[0] / 0x1AuLL)) + 152 * (a1[2].i64[0] % 0x1AuLL);
      v18[0] = (*(*v11 + 16))(v11);
      v18[1] = v12;
      *&v20[0] = CNTimeSpan::operator-(v19, v18, v13, v14);
      v20[1] = v15;
      if (!sub_1D0B7CF88(v20, a3) && a1[2].i64[1] <= a4)
      {
        break;
      }

      sub_1D0B7E234(a1);
      v16 = 0;
      if (!a1[2].i64[1])
      {
        return v16 & 1;
      }
    }

    v16 = i;
  }

  else
  {
    v16 = 1;
  }

  return v16 & 1;
}

void raven::RavenDeviceAttitudeActiveObject::HandleEvent(int64x2_t *this, const raven::AccelerometerEvent *a2)
{
  if (this[14].i8[0])
  {
    __p = 2;
    v41 = 0;
    v4 = sub_1D0B8E830(this + 479, a2, &__p, this[454].u64[0]);
    if ((v4 & 1) == 0 && !cnprint::CNPrinter::GetLogLevel(v4))
    {
      LOWORD(__p) = 12;
      LOBYTE(v44) = 0;
      v5 = (*(*a2 + 16))(a2);
      v38 = v6 + v5;
      cnprint::CNPrinter::Print(&__p, &v44, "DevAtt,Accelerometer stationary detection queue overflowed at %.3lf", v7, v8, v9, v10, v11, SLOBYTE(v38));
    }

    __p = 3;
    v41 = 0x3FE0000000000000;
    v12 = sub_1D0B8E830(this + 467, a2, &__p, this[454].u64[1]);
    if ((v12 & 1) == 0)
    {
      if (!cnprint::CNPrinter::GetLogLevel(v12))
      {
        LOWORD(__p) = 12;
        LOBYTE(v44) = 0;
        v13 = (*(*a2 + 16))(a2);
        v39 = v14 + v13;
        cnprint::CNPrinter::Print(&__p, &v44, "DevAtt,Accelerometer down sampling queue overflowed at %.3lf", v15, v16, v17, v18, v19, SLOBYTE(v39));
      }

      v20 = this[15].i64[1];
      v21 = this[16].i64[0];
      if (v21 == v20)
      {
        v24 = &this[17].i64[1];
        v21 = this[15].i64[1];
      }

      else
      {
        v22 = this[17].u64[0];
        v23 = &v20[v22 / 0x1A];
        v24 = &this[17].i64[1];
        v25 = v20[(this[17].i64[1] + v22) / 0x1A] + 152 * ((this[17].i64[1] + v22) % 0x1A);
        if (*v23 + 152 * (v22 % 0x1A) != v25)
        {
          v26 = (*v23 + 152 * (v22 % 0x1A));
          do
          {
            v27 = *v26;
            v26 += 19;
            (*v27)();
            if (v26 - *v23 == 3952)
            {
              v28 = v23[1];
              ++v23;
              v26 = v28;
            }
          }

          while (v26 != v25);
          v20 = this[15].i64[1];
          v21 = this[16].i64[0];
        }
      }

      *v24 = 0;
      v35 = v21 - v20;
      if (v35 >= 3)
      {
        do
        {
          operator delete(*v20);
          v36 = this[16].i64[0];
          v20 = (this[15].i64[1] + 8);
          this[15].i64[1] = v20;
          v35 = (v36 - v20) >> 3;
        }

        while (v35 > 2);
      }

      if (v35 == 1)
      {
        v37 = 13;
      }

      else
      {
        if (v35 != 2)
        {
          return;
        }

        v37 = 26;
      }

      this[17].i64[0] = v37;
    }
  }

  else
  {
    v44 = 12;
    v43 = 3;
    (*(this->i64[0] + 16))(&__p, this, a2);
    if (v42 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      LOBYTE(p_p) = __p;
    }

    cnprint::CNPrinter::Print(&v44, &v43, "Warning: %s is not configured yet.", v29, v30, v31, v32, v33, p_p);
    if (v42 < 0)
    {
      operator delete(__p);
    }
  }
}

void sub_1D0B8EC48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D0B8EC88(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0B88E94(v9, a3, a3, a4, a5, a6, a7, a8);
  *(v8 + 256) = *(v8 + 112);
  sub_1D0B8E718();
}

uint64_t sub_1D0B8ECD0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0B8D894(v10, a3, a3, a4, a5, a6, a7, a8);
  return sub_1D0B8ED10(v8 + 440, v10);
}

uint64_t sub_1D0B8ED10(uint64_t result, uint64_t a2)
{
  if (*result == 1)
  {
    v2 = *(a2 + 24);
    *(result + 16) = *(a2 + 8);
    *(result + 32) = v2;
    v3 = *(a2 + 40);
    v4 = *(a2 + 56);
    v5 = *(a2 + 88);
    *(result + 80) = *(a2 + 72);
    *(result + 96) = v5;
    *(result + 48) = v3;
    *(result + 64) = v4;
    v6 = *(a2 + 104);
    v7 = *(a2 + 120);
    v8 = *(a2 + 152);
    *(result + 144) = *(a2 + 136);
    *(result + 160) = v8;
    *(result + 112) = v6;
    *(result + 128) = v7;
    if (result + 176 != a2 + 168)
    {
      *(result + 176) = *(a2 + 168);
      *(result + 192) = *(a2 + 184);
    }
  }

  else
  {
    *(result + 8) = &unk_1F4CEE768;
    v9 = *(a2 + 104);
    v10 = *(a2 + 120);
    v11 = *(a2 + 136);
    v12 = *(a2 + 152);
    v13 = *(a2 + 40);
    v14 = *(a2 + 56);
    v15 = *(a2 + 72);
    v16 = *(a2 + 88);
    v17 = *(a2 + 8);
    v18 = *(a2 + 24);
    *(result + 176) = 0u;
    *(result + 16) = v17;
    *(result + 32) = v18;
    *(result + 80) = v15;
    *(result + 96) = v16;
    *(result + 48) = v13;
    *(result + 64) = v14;
    *(result + 144) = v11;
    *(result + 160) = v12;
    *(result + 112) = v9;
    *(result + 128) = v10;
    *(result + 192) = 0u;
    if (result + 176 != a2 + 168)
    {
      *(result + 176) = *(a2 + 168);
      *(result + 192) = *(a2 + 184);
    }

    *result = 1;
  }

  return result;
}

uint64_t sub_1D0B8EE34(uint64_t a1, int64x2_t **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  v9 = sub_1D0B8D894(v51, a3, a3, a4, a5, a6, a7, a8);
  v11 = v8[17].i64[1];
  if (!v11)
  {
LABEL_31:
    result = sub_1D0B8DE4C(v8[15].i64, v51);
    goto LABEL_32;
  }

  v12 = CNTimeSpan::operator-(v52, (*(v8[15].i64[1] + 8 * ((v11 + v8[17].i64[0] - 1) / 0x14uLL)) + 200 * ((v11 + v8[17].i64[0] - 1) % 0x14uLL) + 152), v9, v10);
  if (fabs(v13 + v12) > 0.000000015)
  {
    if (cnprint::CNPrinter::GetLogLevel(v12) <= 1)
    {
      LOWORD(v54[0]) = 12;
      LOBYTE(v53[0]) = 1;
      v14 = (*(v51[0] + 16))(v51);
      v50 = v15 + v14;
      cnprint::CNPrinter::Print(v54, v53, "Acceleration reference frame change, t,%.3lf, reset buffer", v16, v17, v18, v19, v20, SLOBYTE(v50));
    }

    v21 = v8[15].i64[1];
    v22 = v8[16].i64[0];
    if (v22 == v21)
    {
      v22 = v8[15].i64[1];
    }

    else
    {
      v23 = v8[17].u64[0];
      v24 = &v21[v23 / 0x14];
      v25 = v21[(v8[17].i64[1] + v23) / 0x14] + 200 * ((v8[17].i64[1] + v23) % 0x14);
      if (*v24 + 200 * (v23 % 0x14) != v25)
      {
        v26 = (*v24 + 200 * (v23 % 0x14));
        do
        {
          v27 = *v26;
          v26 += 25;
          (*v27)();
          if (v26 - *v24 == 4000)
          {
            v28 = v24[1];
            ++v24;
            v26 = v28;
          }
        }

        while (v26 != v25);
        v21 = v8[15].i64[1];
        v22 = v8[16].i64[0];
      }
    }

    v8[17].i64[1] = 0;
    v29 = v22 - v21;
    if (v29 >= 3)
    {
      do
      {
        operator delete(*v21);
        v30 = v8[16].i64[0];
        v21 = (v8[15].i64[1] + 8);
        v8[15].i64[1] = v21;
        v29 = (v30 - v21) >> 3;
      }

      while (v29 > 2);
    }

    if (v29 == 1)
    {
      v31 = 10;
      goto LABEL_19;
    }

    if (v29 == 2)
    {
      v31 = 20;
LABEL_19:
      v8[17].i64[0] = v31;
    }
  }

  if (!v8[17].i64[1])
  {
    goto LABEL_31;
  }

  v32 = (*(v51[0] + 16))(v51);
  v34 = v33;
  v35 = v33;
  v36 = v8[17].i64[1] + v8[17].i64[0] - 1;
  v37 = *(v8[15].i64[1] + 8 * (v36 / 0x14)) + 200 * (v36 % 0x14);
  result = (*(*v37 + 16))(v37);
  if (!v32 && (*&v34 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (!result ? (v40 = (*&v39 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL) : (v40 = 1), !v40 || (v41 = v32 <= result, v32 == result)))
  {
    v41 = v35 <= v39;
  }

  if (!v41)
  {
    goto LABEL_31;
  }

LABEL_32:
  v42 = v8[17].u64[1];
  if (v42 >= 2)
  {
    v43 = *(v8[15].i64[1] + 8 * ((v42 + v8[17].i64[0] - 1) / 0x14)) + 200 * ((v42 + v8[17].i64[0] - 1) % 0x14);
    v54[0] = (*(*v43 + 16))(v43);
    v54[1] = v44;
    v45 = *(v8[15].i64[1] + 8 * (v8[17].i64[0] / 0x14uLL)) + 200 * (v8[17].i64[0] % 0x14uLL);
    v53[0] = (*(*v45 + 16))(v45);
    v53[1] = v46;
    result = CNTimeSpan::operator-(v54, v53, v47, v48);
    if (v49 + result > 0.55)
    {
      return sub_1D0B8DF84(v8 + 15);
    }
  }

  return result;
}

void sub_1D0B8F224(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  v9 = sub_1D0B88E94(v23, a3, a3, a4, a5, a6, a7, a8);
  if (*(v8 + 224))
  {
    if (*(v8 + 497) == 1 && *(v8 + 496) == 1)
    {
      raven::RavenMovingStateEstimator::HandleEvent((v8 + 280), v23);
    }
  }

  else
  {
    v28 = 12;
    v27 = 2;
    v26[0] = (*(v23[0] + 16))(v23, v9);
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

    cnprint::CNLogFormatter::FormatWarning(v8 + 232, v26, "Failed to handle event - %s.", v11, v12, v13, v14, v15, v16);
    if (*(v8 + 255) >= 0)
    {
      LOBYTE(v22) = v8 - 24;
    }

    else
    {
      v22 = *(v8 + 232);
    }

    cnprint::CNPrinter::Print(&v28, &v27, "%s", v17, v18, v19, v20, v21, v22);
    if (v25 < 0)
    {
      operator delete(v24[0]);
    }
  }
}

void sub_1D0B8F364(_Unwind_Exception *exception_object)
{
  if (*(v1 - 57) < 0)
  {
    operator delete(*(v1 - 80));
  }

  _Unwind_Resume(exception_object);
}

uint64_t raven::RavenMovingStateEstimator::HandleEvent(raven::RavenMovingStateEstimator *this, const raven::AccelerometerEvent *a2)
{
  v4 = -288;
  do
  {
    sub_1D0B8954C(this + v4 + 520, a2 + 13, 1.0);
    sub_1D0B8954C(this + v4 + 568, a2 + 14, 1.0);
    sub_1D0B8954C(this + v4 + 616, a2 + 15, 1.0);
    v4 += 144;
  }

  while (v4);
  v5 = (*(*a2 + 16))(a2);
  v7 = v6;
  v8 = v6;
  v115 = 0.0;
  v116 = 0x3FD0000000000000;
  v11 = CNTimeSpan::operator+(this + 128, &v115, v9, v10);
  if (v5)
  {
    v13 = 1;
  }

  else
  {
    v13 = (*&v7 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL;
  }

  if (!v13 || !v11 && (*&v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || v5 == v11)
  {
    if (v8 > v12)
    {
      goto LABEL_12;
    }

LABEL_17:
    v22 = 0;
    goto LABEL_25;
  }

  if (v5 <= v11)
  {
    goto LABEL_17;
  }

LABEL_12:
  v14 = this + 232;
  v15 = (this + 144 * *(this + 65) + 232);
  v16 = sqrt(v15[5] + v15[11] + v15[17]);
  v17 = v15[3];
  v18 = v15[9];
  v19 = v15[15];
  v20 = (*(*a2 + 16))(a2);
  v22 = *(this + 1016);
  if (v22 == 1)
  {
    v23 = *(this + 120);
    v24 = v17 - v23;
    v25 = *(this + 121);
    v26 = v18 - v25;
    v27 = *(this + 122);
    v28 = fmax(vabdd_f64(v17, v23), fmax(vabdd_f64(v18, v25), vabdd_f64(v19, v27)));
    if (v28 <= 1.34078079e154)
    {
      v31 = 1.0;
      if (v28 >= 7.45834073e-155)
      {
LABEL_21:
        v30 = sqrt(v26 * v31 * (v26 * v31) + v24 * v31 * (v24 * v31) + (v19 - v27) * v31 * ((v19 - v27) * v31)) / v31;
        goto LABEL_22;
      }

      *&v29 = 1.40591056e160;
    }

    else
    {
      *&v29 = 7.112828e-161;
    }

    v31 = *&v29;
    goto LABEL_21;
  }

  v30 = NAN;
LABEL_22:
  *(this + 120) = v17;
  *(this + 121) = v18;
  *(this + 122) = v19;
  *(this + 123) = v30;
  *(this + 124) = v16;
  *(this + 125) = v20;
  *(this + 126) = v21;
  if ((v22 & 1) == 0)
  {
    *(this + 1016) = 1;
  }

  v32 = &v14[144 * *(this + 65)];
  *v32 = 0;
  *(v32 + 2) = 0u;
  *(v32 + 20) = 0u;
  *(v32 + 4) = 0u;
  v33 = ~*(this + 130);
  v34 = &v14[144 * *(this + 65)];
  v34[48] = 0;
  *(v34 + 100) = 0u;
  *(v34 + 116) = 0u;
  *(v34 + 8) = 0u;
  *(v34 + 52) = 0u;
  *(v34 + 68) = 0u;
  *(v34 + 81) = 0u;
  *(this + 65) = v33 & 1;
  *(this + 128) = (*(*a2 + 16))(a2);
  *(this + 129) = v35;
LABEL_25:
  sub_1D0B8954C(this + 736, a2 + 13, 1.0);
  sub_1D0B8954C(this + 784, a2 + 14, 1.0);
  sub_1D0B8954C(this + 832, a2 + 15, 1.0);
  v36 = (*(*a2 + 16))(a2);
  v38 = v37;
  v39 = v37;
  v115 = 0.0;
  v116 = 0x3FB999999999999ALL;
  result = CNTimeSpan::operator+(this + 118, &v115, v40, v41);
  if (!v36 && (*&v38 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || !result && (*&v43 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || v36 == result)
  {
    if (v39 > v43)
    {
      goto LABEL_31;
    }

LABEL_36:
    v50 = 0;
    goto LABEL_44;
  }

  if (v36 <= result)
  {
    goto LABEL_36;
  }

LABEL_31:
  v44 = sqrt(*(this + 97) + *(this + 103) + *(this + 109));
  v45 = *(this + 95);
  v46 = *(this + 101);
  v47 = *(this + 107);
  v48 = (*(*a2 + 16))(a2);
  v50 = *(this + 936);
  if (v50 == 1)
  {
    v51 = *(this + 110);
    v52 = v45 - v51;
    v53 = *(this + 111);
    v54 = v46 - v53;
    v55 = *(this + 112);
    v56 = fmax(vabdd_f64(v45, v51), fmax(vabdd_f64(v46, v53), vabdd_f64(v47, v55)));
    if (v56 <= 1.34078079e154)
    {
      v59 = 1.0;
      if (v56 >= 7.45834073e-155)
      {
LABEL_40:
        v58 = sqrt(v54 * v59 * (v54 * v59) + v52 * v59 * (v52 * v59) + (v47 - v55) * v59 * ((v47 - v55) * v59)) / v59;
        goto LABEL_41;
      }

      *&v57 = 1.40591056e160;
    }

    else
    {
      *&v57 = 7.112828e-161;
    }

    v59 = *&v57;
    goto LABEL_40;
  }

  v58 = NAN;
LABEL_41:
  *(this + 110) = v45;
  *(this + 111) = v46;
  *(this + 112) = v47;
  *(this + 113) = v58;
  *(this + 114) = v44;
  *(this + 115) = v48;
  *(this + 116) = v49;
  if ((v50 & 1) == 0)
  {
    *(this + 936) = 1;
  }

  *(this + 736) = 0;
  *(this + 54) = 0u;
  *(this + 836) = 0u;
  *(this + 852) = 0u;
  *(this + 740) = 0u;
  *(this + 756) = 0u;
  *(this + 769) = 0u;
  *(this + 788) = 0u;
  *(this + 804) = 0u;
  *(this + 817) = 0u;
  result = (*(*a2 + 16))(a2);
  *(this + 118) = result;
  *(this + 119) = v60;
LABEL_44:
  if ((v22 | v50) == 1 && *(this + 1016) == 1)
  {
    v61 = (this + 992);
    if (v22 && *(this + 4208) == 1 && *(this + 363) < sqrt(*(this + 367)) && *v61 < 1.0)
    {
      sub_1D0B9FFD4(this + 672, *v61);
    }

    v62 = *(this + 1544) == 1 && *(this + 1504) - 1 < 2;
    if (*(this + 176))
    {
      v63 = *(this + 89);
      v64 = *(this + 90);
      if (v63 == v64)
      {
        v66 = *(this + 89);
      }

      else
      {
        v65 = v63 + 1;
        v66 = *(this + 89);
        if (v63 + 1 != v64)
        {
          v67 = *v63;
          v66 = *(this + 89);
          v68 = v63 + 1;
          do
          {
            v70 = *v68++;
            v69 = v70;
            v71 = v67 >= v70;
            if (v67 <= v70)
            {
              v67 = v69;
            }

            if (!v71)
            {
              v66 = v65;
            }

            v65 = v68;
          }

          while (v68 != v64);
        }
      }

      v72 = *(this + 124);
      v73 = *(this + 85) + *(this + 87) * ((v66 - v63) + 1.0);
      v74 = v73 + v73;
      if (v74 > 0.5)
      {
        v74 = 0.5;
      }

      if (v72 < v74)
      {
        v62 = 1;
      }
    }

    else
    {
      v72 = *v61;
    }

    if (v72 >= 1.0)
    {
      v62 = 0;
    }

    if (*(this + 4208) == 1)
    {
      if (*(this + 363) >= sqrt(*(this + 367)))
      {
        LOBYTE(v62) = 0;
      }

      if (!v62)
      {
        goto LABEL_83;
      }
    }

    else if (!v62)
    {
      goto LABEL_83;
    }

    if (v50)
    {
      if ((*(this + 936) & 1) == 0)
      {
        goto LABEL_135;
      }

      v115 = v72 * *(this + 113);
      sub_1D0B8954C(this + 528, &v115, 1.0);
    }

    if (v22)
    {
      sub_1D0B8954C(this + 624, this + 124, 1.0);
      sub_1D0B8954C(this + 576, this + 123, 1.0);
    }

LABEL_83:
    result = (*(*a2 + 16))(a2);
    v75 = result;
    v77 = v76;
    if (!v50 || *(this + 1041) != 1)
    {
      if (!v22)
      {
        return result;
      }

      if (*(this + 1040) == 1)
      {
        v90 = *(this + 1544) == 1 && *(this + 1504) - 1 < 2;
        v100 = *(this + 123);
        v101 = 0.0;
        if (*(this + 576) == 1 && (*(this + 75) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          v102 = sqrt(*(this + 77));
          v103 = *(this + 75) + v102 * 3.0;
          v82 = (*&v102 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
          v101 = 0.0;
          if (v82)
          {
            v101 = v103;
          }
        }

        v104 = v101 < v100;
        if (*(this + 4208) == 1)
        {
          v104 = v101 < v100;
          if (*(this + 363) > sqrt(*(this + 367)))
          {
            v104 = 1;
          }
        }

        v99 = 0.01;
        v97 = 0.99;
        if (!v104)
        {
          v97 = 0.01;
        }

        v98 = 4.0;
        if (!v90 || !v104)
        {
          v98 = 0.1;
        }

        v96 = 1.0 - v97;
        goto LABEL_132;
      }

      v91 = *(this + 124);
      v92 = 0.0;
      if (*(this + 624) == 1 && (*(this + 81) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        v93 = sqrt(*(this + 83));
        v94 = *(this + 81) + v93 * 3.0;
        v82 = (*&v93 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
        v92 = 0.0;
        if (v82)
        {
          v92 = v94;
        }
      }

      v95 = v92 < v91;
      if (*(this + 4208) == 1)
      {
        v95 = v92 < v91;
        if (*(this + 363) > sqrt(*(this + 367)))
        {
          v95 = 1;
        }
      }

      v89 = !v95;
LABEL_113:
      v96 = 0.01;
      v97 = 0.99;
      if (v89)
      {
        v97 = 0.01;
      }

      v98 = 4.0;
      if (!v89)
      {
        v98 = 0.1;
      }

      v99 = fmin(fmax(1.0 - v97, 0.0), 1.0);
LABEL_132:
      v105 = v98 + -0.1;
      v106 = v105 * v96 + 0.1;
      v107 = v105 * v97 + 0.1;
      v108 = v105 * v99 + 0.1;
      v109 = v108 + v106 + v107;
      v110 = v106 / v109;
      v111 = v107 / v109;
      v112 = v108 / v109;
      result = (*(*a2 + 16))(a2);
      v113 = *(this + 64);
      *this = sub_1D0BBABC4;
      *(this + 1) = v75;
      *(this + 2) = v77;
      *(this + 3) = v110;
      *(this + 4) = v112;
      *(this + 5) = v111;
      *(this + 6) = result;
      *(this + 7) = v114;
      if ((v113 & 1) == 0)
      {
        *(this + 64) = 1;
      }

      return result;
    }

    if (*(this + 936))
    {
      v78 = *(this + 124);
      v79 = 0.0;
      if (*(this + 624) == 1 && (*(this + 81) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        v80 = sqrt(*(this + 83));
        v81 = *(this + 81) + v80 * 3.0;
        v82 = (*&v80 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
        v79 = 0.0;
        if (v82)
        {
          v79 = v81;
        }
      }

      v83 = v79 < v78;
      if (*(this + 4208) == 1)
      {
        v83 = v79 < v78;
        if (*(this + 363) > sqrt(*(this + 367)))
        {
          v83 = 1;
        }
      }

      v84 = *(this + 113) * v78;
      v85 = 0.0;
      if (*(this + 528) == 1 && (*(this + 69) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        v86 = sqrt(*(this + 71));
        v87 = *(this + 69) + v86 * 3.0;
        v82 = (*&v86 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
        v85 = 0.0;
        if (v82)
        {
          v85 = v87;
        }
      }

      v88 = v85 < v84;
      if (*(this + 4208) && *(this + 363) > sqrt(*(this + 367)))
      {
        v88 = 1;
      }

      v89 = !v83 && !v88;
      goto LABEL_113;
    }

LABEL_135:
    sub_1D0C42F28();
  }

  return result;
}

void sub_1D0B8FDBC(uint64_t a1, _BYTE **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0B88E94(v9, a3, a3, a4, a5, a6, a7, a8);
  if (v8[224] == 1)
  {
    if (cnestimation::PeriodicityTracker::AddSignalSample((v8 + 240), sqrt(v12 * v12 + v11 * v11 + v13 * v13)))
    {
      (*(*v8 + 80))(v8);
    }

    else
    {
      (*(*v8 + 88))(v8, &v10);
    }
  }
}

uint64_t cnestimation::PeriodicityTracker::AddSignalSample(cnestimation::PeriodicityTracker *this, double a2)
{
  v16[0] = a2;
  if (*this != 1)
  {
    return 0xFFFFFFFFLL;
  }

  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
LABEL_3:
    cnestimation::PeriodicityTracker::Reset(this);
    return 0xFFFFFFFFLL;
  }

  sub_1D0B90B68(this + 96, v16);
  v5 = *(this + 17);
  if (v5 > *(this + 23))
  {
    ++*(this + 16);
    *(this + 17) = v5 - 1;
    sub_1D0B90D48(this + 96, 1);
  }

  v6 = *(this + 19);
  if (*(this + 20) == v6)
  {
    v7 = (this + 184);
  }

  else
  {
    v7 = (this + 184);
    v8 = *(this + 22);
    v9 = (v6 + 8 * (v8 / 0x1A));
    v10 = *v9 + 152 * (v8 % 0x1A);
    v11 = *(v6 + 8 * ((*(this + 23) + v8) / 0x1A)) + 152 * ((*(this + 23) + v8) % 0x1A);
    if (v10 != v11)
    {
      LOBYTE(v12) = 1;
      while (!cndft::SlidingDFT::AddSample(v10, v16[0]))
      {
        v13 = *(v10 + 144);
        if (*(this + 17) != v13)
        {
          break;
        }

        if (*v10 == 1)
        {
          v12 = (v13 >= *(v10 + 16)) & v12;
        }

        else
        {
          v12 = 0;
        }

        v10 += 152;
        if (v10 - *v9 == 3952)
        {
          v14 = v9[1];
          ++v9;
          v10 = v14;
        }

        if (v10 == v11)
        {
          if (v12)
          {
            goto LABEL_22;
          }

          return 0;
        }
      }

      goto LABEL_3;
    }
  }

LABEL_22:
  v15 = *v7;
  if (*v7 >= 3)
  {
    if (v15 <= 0x666666666666666)
    {
      sub_1D0B90EF0(v15);
    }

    sub_1D0C5663C();
  }

  return 0;
}

void sub_1D0B90B30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  sub_1D0C56D94(&a31);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

double sub_1D0B90B68(uint64_t a1, double *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 8);
  if (v5 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = ((v5 - v6) << 6) - 1;
  }

  v8 = *(a1 + 40);
  v9 = v8 + *(a1 + 32);
  if (v7 == v9)
  {
    sub_1D0C1245C(a1);
    v6 = *(a1 + 8);
    v8 = *(a1 + 40);
    v9 = *(a1 + 32) + v8;
  }

  result = *a2;
  *(*(v6 + ((v9 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v9 & 0x1FF)) = *a2;
  *(a1 + 40) = v8 + 1;
  return result;
}

uint64_t cndft::SlidingDFT::AddSample(cndft::SlidingDFT *this, double a2)
{
  v13 = a2;
  if (*this != 1)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *(this + 18);
  v4 = 0.0;
  v5 = 0.0;
  v6 = 0.0;
  if (v3)
  {
    v7 = (*(*(this + 14) + (((v3 + *(this + 17) - 1) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v3 + *(this + 136) - 1));
    v5 = *v7;
    v6 = v7[1] + 0.0;
  }

  if (*(this + 12) >= *(this + 4))
  {
    v4 = *(*(*(this + 8) + ((*(this + 11) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(this + 11) & 0x1FFLL));
  }

  sub_1D0B90B68(this + 56, &v13);
  v11[0] = v5 - v4 + v13;
  v11[1] = v6;
  v12.n128_u64[0] = sub_1D0B90DA8(v11, this + 5);
  v12.n128_u64[1] = v8;
  sub_1D0B90E04(this + 104, &v12);
  v9 = *(this + 12);
  if (v9 != *(this + 18))
  {
    cndft::SlidingDFT::ResetDFT(this);
    return 0xFFFFFFFFLL;
  }

  if (v9 > *(this + 4))
  {
    ++*(this + 11);
    *(this + 12) = v9 - 1;
    sub_1D0B90D48(this + 56, 1);
    *(this + 136) = vaddq_s64(*(this + 136), xmmword_1D0E76280);
    sub_1D0B90E90(this + 104, 1);
  }

  return 0;
}

uint64_t sub_1D0B90D48(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x200)
  {
    a2 = 1;
  }

  if (v2 < 0x400)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 512;
  }

  return v4 ^ 1u;
}

__n128 sub_1D0B90E04(uint64_t a1, __n128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 8);
  v7 = 32 * (v5 - v6) - 1;
  if (v5 == v6)
  {
    v7 = 0;
  }

  v8 = *(a1 + 40) + *(a1 + 32);
  if (v7 == v8)
  {
    sub_1D0C128C0(a1);
    v6 = *(a1 + 8);
    v8 = *(a1 + 40) + *(a1 + 32);
  }

  result = *a2;
  *(*(v6 + ((v8 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v8) = *a2;
  ++*(a1 + 40);
  return result;
}

uint64_t sub_1D0B90E90(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x100)
  {
    a2 = 1;
  }

  if (v2 < 0x200)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 256;
  }

  return v4 ^ 1u;
}

void sub_1D0B90EF0(unint64_t a1)
{
  if (a1 < 0x666666666666667)
  {
    operator new();
  }

  sub_1D0C54BE8();
}

__n128 sub_1D0B90F48(uint64_t a1, unint64_t a2, uint64_t a3, char a4, __n128 result)
{
LABEL_1:
  v9 = (a2 - 40);
  v10 = (a2 - 80);
  v11 = (a2 - 120);
  v12 = a1;
  while (1)
  {
    a1 = v12;
    v13 = a2 - v12;
    v14 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - v12) >> 3);
    if (v14 <= 2)
    {
      if (v14 < 2)
      {
        return result;
      }

      if (v14 == 2)
      {
        result.n128_u64[0] = *(a2 - 8);
        if (result.n128_f64[0] < *(v12 + 32))
        {
          v286 = *(v12 + 32);
          v218 = *v12;
          v254 = *(v12 + 16);
          v118 = *(a2 - 40);
          v119 = *(a2 - 24);
          *(v12 + 32) = *(a2 - 8);
          *v12 = v118;
          *(v12 + 16) = v119;
          result = v218;
          *(a2 - 8) = v286;
          *(a2 - 24) = v254;
          *(a2 - 40) = v218;
        }

        return result;
      }

      goto LABEL_9;
    }

    if (v14 == 3)
    {
      break;
    }

    if (v14 == 4)
    {
      v125 = *(v12 + 72);
      v126 = *(v12 + 112);
      if (v125 >= *(v12 + 32))
      {
        if (v126 < v125)
        {
          v173 = *(v12 + 72);
          result = *(v12 + 40);
          v174 = *(v12 + 96);
          *(v12 + 40) = *(v12 + 80);
          v175 = *(v12 + 56);
          *(v12 + 56) = v174;
          *(v12 + 72) = *(v12 + 112);
          *(v12 + 80) = result;
          *(v12 + 96) = v175;
          *(v12 + 112) = v173;
          if (*(v12 + 72) < *(v12 + 32))
          {
            v291 = *(v12 + 32);
            v225 = *v12;
            v261 = *(v12 + 16);
            v176 = *(v12 + 56);
            *v12 = *(v12 + 40);
            *(v12 + 16) = v176;
            *(v12 + 32) = *(v12 + 72);
            *(v12 + 40) = v225;
            *(v12 + 56) = v261;
            *(v12 + 72) = v291;
          }
        }
      }

      else
      {
        if (v126 < v125)
        {
          v288 = *(v12 + 32);
          v220 = *v12;
          v256 = *(v12 + 16);
          v127 = *(v12 + 96);
          *v12 = *(v12 + 80);
          *(v12 + 16) = v127;
          *(v12 + 32) = *(v12 + 112);
          *(v12 + 80) = v220;
          *(v12 + 96) = v256;
          v128 = v288;
          goto LABEL_183;
        }

        v293 = *(v12 + 32);
        v228 = *v12;
        v264 = *(v12 + 16);
        v184 = *(v12 + 56);
        *v12 = *(v12 + 40);
        *(v12 + 16) = v184;
        *(v12 + 32) = *(v12 + 72);
        *(v12 + 40) = v228;
        *(v12 + 56) = v264;
        *(v12 + 72) = v293;
        if (v126 < *(v12 + 72))
        {
          v128 = *(v12 + 72);
          result = *(v12 + 56);
          v185 = *(v12 + 40);
          v186 = *(v12 + 96);
          *(v12 + 40) = *(v12 + 80);
          *(v12 + 56) = v186;
          *(v12 + 72) = *(v12 + 112);
          *(v12 + 80) = v185;
          *(v12 + 96) = result;
LABEL_183:
          *(v12 + 112) = v128;
        }
      }

      result.n128_u64[0] = *(a2 - 8);
      if (result.n128_f64[0] >= *(v12 + 112))
      {
        return result;
      }

      v229 = *(v12 + 80);
      v265 = *(v12 + 96);
      v294 = *(v12 + 112);
      v188 = *v9;
      v187 = *(a2 - 24);
      *(v12 + 112) = *(a2 - 8);
      *(v12 + 80) = v188;
      *(v12 + 96) = v187;
      *(a2 - 8) = v294;
      *v9 = v229;
      *(a2 - 24) = v265;
      result.n128_u64[0] = *(v12 + 112);
      if (result.n128_f64[0] >= *(v12 + 72))
      {
        return result;
      }

      v189 = *(v12 + 72);
      result = *(v12 + 40);
      v190 = *(v12 + 96);
      *(v12 + 40) = *(v12 + 80);
      v191 = *(v12 + 56);
      *(v12 + 56) = v190;
      *(v12 + 72) = *(v12 + 112);
      *(v12 + 80) = result;
      *(v12 + 96) = v191;
      *(v12 + 112) = v189;
LABEL_187:
      result.n128_u64[0] = *(v12 + 72);
      if (result.n128_f64[0] < *(v12 + 32))
      {
        v295 = *(v12 + 32);
        v230 = *v12;
        v266 = *(v12 + 16);
        v192 = *(v12 + 56);
        *v12 = *(v12 + 40);
        *(v12 + 16) = v192;
        *(v12 + 32) = *(v12 + 72);
        result = v230;
        *(v12 + 40) = v230;
        *(v12 + 56) = v266;
        *(v12 + 72) = v295;
      }

      return result;
    }

    if (v14 == 5)
    {

      result.n128_u64[0] = sub_1D0C56654(v12, v12 + 40, v12 + 80, v12 + 120, a2 - 40, result).n128_u64[0];
      return result;
    }

LABEL_9:
    if (v13 <= 959)
    {
      v129 = (v12 + 40);
      v131 = v12 == a2 || v129 == a2;
      if (a4)
      {
        if (!v131)
        {
          v132 = 0;
          v133 = v12;
          do
          {
            result.n128_u64[0] = *(v133 + 9);
            v134 = *(v133 + 4);
            v133 = v129;
            if (result.n128_f64[0] < v134)
            {
              v221 = *v129;
              v257 = v129[1];
              v135 = v132;
              while (1)
              {
                v136 = v12 + v135;
                v137 = *(v12 + v135 + 16);
                *(v136 + 40) = *(v12 + v135);
                *(v136 + 56) = v137;
                *(v136 + 72) = *(v12 + v135 + 32);
                if (!v135)
                {
                  break;
                }

                v135 -= 40;
                if (result.n128_f64[0] >= *(v136 - 8))
                {
                  v138 = v12 + v135 + 40;
                  goto LABEL_129;
                }
              }

              v138 = v12;
LABEL_129:
              *v138 = v221;
              *(v138 + 16) = v257;
              *(v138 + 32) = result.n128_u64[0];
            }

            v129 = (v133 + 40);
            v132 += 40;
          }

          while ((v133 + 40) != a2);
        }
      }

      else if (!v131)
      {
        do
        {
          result.n128_u64[0] = *(a1 + 72);
          v177 = *(a1 + 32);
          a1 = v129;
          if (result.n128_f64[0] < v177)
          {
            v226 = *v129;
            v262 = v129[1];
            v178 = v129;
            do
            {
              v179 = *(v178 - 24);
              *v178 = *(v178 - 40);
              v178[1] = v179;
              *(v178 + 4) = *(v178 - 1);
              v180 = *(v178 - 6);
              v178 = (v178 - 40);
            }

            while (result.n128_f64[0] < v180);
            *v178 = v226;
            v178[1] = v262;
            *(v178 + 4) = result.n128_u64[0];
          }

          v129 = (v129 + 40);
        }

        while (a1 + 40 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v12 != a2)
      {
        v139 = (v14 - 2) >> 1;
        v140 = v139;
        do
        {
          v141 = v140;
          if (v139 >= v140)
          {
            v142 = (2 * v140) | 1;
            v143 = v12 + 40 * v142;
            if (2 * v141 + 2 < v14 && *(v143 + 32) < *(v143 + 72))
            {
              v143 += 40;
              v142 = 2 * v141 + 2;
            }

            v144 = v12 + 40 * v141;
            v145 = *(v144 + 32);
            if (*(v143 + 32) >= v145)
            {
              v222 = *v144;
              v258 = *(v144 + 16);
              do
              {
                v146 = v144;
                v144 = v143;
                v147 = *v143;
                v148 = *(v143 + 16);
                *(v146 + 32) = *(v143 + 32);
                *v146 = v147;
                *(v146 + 16) = v148;
                if (v139 < v142)
                {
                  break;
                }

                v149 = 2 * v142;
                v142 = (2 * v142) | 1;
                v143 = v12 + 40 * v142;
                v150 = v149 + 2;
                if (v150 < v14 && *(v143 + 32) < *(v143 + 72))
                {
                  v143 += 40;
                  v142 = v150;
                }
              }

              while (*(v143 + 32) >= v145);
              *v144 = v222;
              *(v144 + 16) = v258;
              *(v144 + 32) = v145;
            }
          }

          v140 = v141 - 1;
        }

        while (v141);
        v151 = 0xCCCCCCCCCCCCCCCDLL * (v13 >> 3);
        do
        {
          v152 = 0;
          v289 = *(v12 + 32);
          v223 = *v12;
          v259 = *(v12 + 16);
          v153 = v12;
          do
          {
            v154 = v153 + 40 * v152;
            v155 = v154 + 40;
            v156 = (2 * v152) | 1;
            v152 = 2 * v152 + 2;
            if (v152 >= v151)
            {
              v152 = v156;
            }

            else
            {
              v157 = *(v154 + 72);
              v158 = *(v154 + 112);
              v159 = v154 + 80;
              if (v157 >= v158)
              {
                v152 = v156;
              }

              else
              {
                v155 = v159;
              }
            }

            v160 = *v155;
            v161 = *(v155 + 16);
            *(v153 + 32) = *(v155 + 32);
            *v153 = v160;
            *(v153 + 16) = v161;
            v153 = v155;
          }

          while (v152 <= ((v151 - 2) >> 1));
          a2 -= 40;
          if (v155 == a2)
          {
            result = v223;
            *(v155 + 32) = v289;
            *v155 = v223;
            *(v155 + 16) = v259;
          }

          else
          {
            v162 = *a2;
            v163 = *(a2 + 16);
            *(v155 + 32) = *(a2 + 32);
            *v155 = v162;
            *(v155 + 16) = v163;
            result = v223;
            *(a2 + 32) = v289;
            *a2 = v223;
            *(a2 + 16) = v259;
            v164 = v155 - v12 + 40;
            if (v164 >= 41)
            {
              v165 = (-2 - 0x3333333333333333 * (v164 >> 3)) >> 1;
              v166 = v12 + 40 * v165;
              result.n128_u64[0] = *(v155 + 32);
              if (*(v166 + 32) < result.n128_f64[0])
              {
                v195 = *v155;
                v198 = *(v155 + 16);
                do
                {
                  v167 = v155;
                  v155 = v166;
                  v168 = *v166;
                  v169 = *(v166 + 16);
                  *(v167 + 32) = *(v166 + 32);
                  *v167 = v168;
                  *(v167 + 16) = v169;
                  if (!v165)
                  {
                    break;
                  }

                  v165 = (v165 - 1) >> 1;
                  v166 = v12 + 40 * v165;
                }

                while (*(v166 + 32) < result.n128_f64[0]);
                *v155 = v195;
                *(v155 + 16) = v198;
                *(v155 + 32) = result.n128_u64[0];
              }
            }
          }
        }

        while (v151-- > 2);
      }

      return result;
    }

    v15 = v14 >> 1;
    v16 = v12 + 40 * (v14 >> 1);
    v17 = *(a2 - 8);
    if (v13 >= 0x1401)
    {
      v18 = *(v16 + 32);
      if (v18 >= *(v12 + 32))
      {
        if (v17 < v18)
        {
          v269 = *(v16 + 32);
          v201 = *v16;
          v233 = *(v16 + 16);
          v24 = *v9;
          v25 = *(a2 - 24);
          *(v16 + 32) = *(a2 - 8);
          *v16 = v24;
          *(v16 + 16) = v25;
          *(a2 - 8) = v269;
          *v9 = v201;
          *(a2 - 24) = v233;
          if (*(v16 + 32) < *(v12 + 32))
          {
            v270 = *(v12 + 32);
            v202 = *v12;
            v234 = *(v12 + 16);
            v26 = *v16;
            v27 = *(v16 + 16);
            *(v12 + 32) = *(v16 + 32);
            *v12 = v26;
            *(v12 + 16) = v27;
            *(v16 + 32) = v270;
            *v16 = v202;
            *(v16 + 16) = v234;
          }
        }
      }

      else
      {
        if (v17 < v18)
        {
          v267 = *(v12 + 32);
          v199 = *v12;
          v231 = *(v12 + 16);
          v19 = *v9;
          v20 = *(a2 - 24);
          *(v12 + 32) = *(a2 - 8);
          *v12 = v19;
          *(v12 + 16) = v20;
          goto LABEL_26;
        }

        v273 = *(v12 + 32);
        v205 = *v12;
        v237 = *(v12 + 16);
        v30 = *v16;
        v31 = *(v16 + 16);
        *(v12 + 32) = *(v16 + 32);
        *v12 = v30;
        *(v12 + 16) = v31;
        *(v16 + 32) = v273;
        *v16 = v205;
        *(v16 + 16) = v237;
        if (*(a2 - 8) < *(v16 + 32))
        {
          v267 = *(v16 + 32);
          v199 = *v16;
          v231 = *(v16 + 16);
          v32 = *v9;
          v33 = *(a2 - 24);
          *(v16 + 32) = *(a2 - 8);
          *v16 = v32;
          *(v16 + 16) = v33;
LABEL_26:
          *(a2 - 8) = v267;
          *v9 = v199;
          *(a2 - 24) = v231;
        }
      }

      v34 = v12 + 40 * v15;
      v35 = v34 - 40;
      v36 = *(v34 - 8);
      v37 = *(a2 - 48);
      if (v36 >= *(v12 + 72))
      {
        if (v37 < v36)
        {
          v274 = *(v34 - 8);
          v206 = *v35;
          v238 = *(v34 - 24);
          v43 = *v10;
          v44 = *(a2 - 64);
          *(v34 - 8) = *(a2 - 48);
          *v35 = v43;
          *(v34 - 24) = v44;
          *(a2 - 48) = v274;
          *v10 = v206;
          *(a2 - 64) = v238;
          if (*(v34 - 8) < *(v12 + 72))
          {
            v45 = *(v12 + 40);
            v239 = *(v12 + 56);
            v46 = *(v12 + 72);
            v48 = *v35;
            v47 = *(v35 + 16);
            *(v12 + 72) = *(v35 + 32);
            *(v12 + 40) = v48;
            *(v12 + 56) = v47;
            *(v35 + 32) = v46;
            *v35 = v45;
            *(v35 + 16) = v239;
          }
        }
      }

      else
      {
        if (v37 < v36)
        {
          v38 = *(v12 + 40);
          v39 = *(v12 + 56);
          v40 = *(v12 + 72);
          v42 = *v10;
          v41 = *(a2 - 64);
          *(v12 + 72) = *(a2 - 48);
          *(v12 + 40) = v42;
          *(v12 + 56) = v41;
          goto LABEL_38;
        }

        v52 = *(v12 + 40);
        v241 = *(v12 + 56);
        v53 = *(v12 + 72);
        v55 = *v35;
        v54 = *(v35 + 16);
        *(v12 + 72) = *(v35 + 32);
        *(v12 + 40) = v55;
        *(v12 + 56) = v54;
        *(v35 + 32) = v53;
        *v35 = v52;
        *(v35 + 16) = v241;
        if (*(a2 - 48) < *(v35 + 32))
        {
          v276 = *(v35 + 32);
          v208 = *v35;
          v242 = *(v35 + 16);
          v56 = *v10;
          v57 = *(a2 - 64);
          *(v35 + 32) = *(a2 - 48);
          *v35 = v56;
          *(v35 + 16) = v57;
          v38 = v208;
          v39 = v242;
          v40 = v276;
LABEL_38:
          *(a2 - 48) = v40;
          *v10 = v38;
          *(a2 - 64) = v39;
        }
      }

      v58 = v12 + 40 * v15;
      v59 = *(v58 + 72);
      v60 = *(a2 - 88);
      if (v59 >= *(v12 + 112))
      {
        if (v60 < v59)
        {
          v277 = *(v58 + 72);
          v209 = *(v58 + 40);
          v243 = *(v58 + 56);
          v66 = *v11;
          v67 = *(a2 - 104);
          *(v58 + 72) = *(a2 - 88);
          *(v58 + 56) = v67;
          *(v58 + 40) = v66;
          *(a2 - 88) = v277;
          *v11 = v209;
          *(a2 - 104) = v243;
          if (*(v58 + 72) < *(v12 + 112))
          {
            v68 = *(v12 + 80);
            v244 = *(v12 + 96);
            v69 = *(v12 + 112);
            v70 = *(v58 + 56);
            v71 = *(v58 + 40);
            *(v12 + 112) = *(v58 + 72);
            *(v12 + 80) = v71;
            *(v12 + 96) = v70;
            *(v58 + 56) = v244;
            *(v58 + 72) = v69;
            *(v58 + 40) = v68;
          }
        }
      }

      else
      {
        if (v60 < v59)
        {
          v61 = *(v12 + 80);
          v62 = *(v12 + 96);
          v63 = *(v12 + 112);
          v65 = *v11;
          v64 = *(a2 - 104);
          *(v12 + 112) = *(a2 - 88);
          *(v12 + 80) = v65;
          *(v12 + 96) = v64;
          goto LABEL_47;
        }

        v72 = *(v12 + 80);
        v245 = *(v12 + 96);
        v73 = *(v12 + 112);
        v74 = *(v58 + 56);
        v75 = *(v58 + 40);
        *(v12 + 112) = *(v58 + 72);
        *(v12 + 80) = v75;
        *(v12 + 96) = v74;
        *(v58 + 56) = v245;
        *(v58 + 72) = v73;
        *(v58 + 40) = v72;
        if (*(a2 - 88) < *(v58 + 72))
        {
          v278 = *(v58 + 72);
          v210 = *(v58 + 40);
          v246 = *(v58 + 56);
          v76 = *v11;
          v77 = *(a2 - 104);
          *(v58 + 72) = *(a2 - 88);
          *(v58 + 56) = v77;
          *(v58 + 40) = v76;
          v61 = v210;
          v62 = v246;
          v63 = v278;
LABEL_47:
          *(a2 - 88) = v63;
          *v11 = v61;
          *(a2 - 104) = v62;
        }
      }

      v78 = *(v16 + 32);
      v79 = *(v58 + 72);
      if (v78 >= *(v35 + 32))
      {
        if (v79 < v78)
        {
          v280 = *(v16 + 32);
          v212 = *v16;
          v248 = *(v16 + 16);
          v81 = *(v58 + 56);
          *v16 = *(v58 + 40);
          *(v16 + 16) = v81;
          *(v16 + 32) = *(v58 + 72);
          *(v58 + 56) = v248;
          *(v58 + 72) = v280;
          *(v58 + 40) = v212;
          if (*(v16 + 32) < *(v35 + 32))
          {
            v281 = *(v35 + 32);
            v213 = *v35;
            v249 = *(v35 + 16);
            v82 = *(v16 + 16);
            *v35 = *v16;
            *(v35 + 16) = v82;
            *(v35 + 32) = *(v16 + 32);
            *(v16 + 32) = v281;
            *v16 = v213;
            *(v16 + 16) = v249;
          }
        }
      }

      else
      {
        if (v79 < v78)
        {
          v279 = *(v35 + 32);
          v211 = *v35;
          v247 = *(v35 + 16);
          v80 = *(v58 + 56);
          *v35 = *(v58 + 40);
          *(v35 + 16) = v80;
          *(v35 + 32) = *(v58 + 72);
          goto LABEL_56;
        }

        v282 = *(v35 + 32);
        v214 = *v35;
        v250 = *(v35 + 16);
        v83 = *(v16 + 16);
        *v35 = *v16;
        *(v35 + 16) = v83;
        *(v35 + 32) = *(v16 + 32);
        *(v16 + 32) = v282;
        *v16 = v214;
        *(v16 + 16) = v250;
        if (*(v58 + 72) < *(v16 + 32))
        {
          v279 = *(v16 + 32);
          v211 = *v16;
          v247 = *(v16 + 16);
          v84 = *(v58 + 56);
          *v16 = *(v58 + 40);
          *(v16 + 16) = v84;
          *(v16 + 32) = *(v58 + 72);
LABEL_56:
          *(v58 + 56) = v247;
          *(v58 + 72) = v279;
          *(v58 + 40) = v211;
        }
      }

      v283 = *(v12 + 32);
      v215 = *v12;
      v251 = *(v12 + 16);
      result = *v16;
      v85 = *(v16 + 16);
      *(v12 + 32) = *(v16 + 32);
      *v12 = result;
      *(v12 + 16) = v85;
      result.n128_u64[1] = v215.n128_u64[1];
      *(v16 + 32) = v283;
      *v16 = v215;
      *(v16 + 16) = v251;
      goto LABEL_58;
    }

    v21 = *(v12 + 32);
    if (v21 >= *(v16 + 32))
    {
      if (v17 < v21)
      {
        v271 = *(v12 + 32);
        v203 = *v12;
        v235 = *(v12 + 16);
        result = *v9;
        v28 = *(a2 - 24);
        *(v12 + 32) = *(a2 - 8);
        *v12 = result;
        *(v12 + 16) = v28;
        result.n128_u64[1] = v203.n128_u64[1];
        *(a2 - 8) = v271;
        *v9 = v203;
        *(a2 - 24) = v235;
        if (*(v12 + 32) < *(v16 + 32))
        {
          v272 = *(v16 + 32);
          v204 = *v16;
          v236 = *(v16 + 16);
          result = *v12;
          v29 = *(v12 + 16);
          *(v16 + 32) = *(v12 + 32);
          *v16 = result;
          *(v16 + 16) = v29;
          result.n128_u64[1] = v204.n128_u64[1];
          *(v12 + 32) = v272;
          *v12 = v204;
          *(v12 + 16) = v236;
        }
      }

      goto LABEL_58;
    }

    if (v17 < v21)
    {
      v268 = *(v16 + 32);
      v200 = *v16;
      v232 = *(v16 + 16);
      v22 = *v9;
      v23 = *(a2 - 24);
      *(v16 + 32) = *(a2 - 8);
      *v16 = v22;
      *(v16 + 16) = v23;
LABEL_35:
      result.n128_u64[1] = v200.n128_u64[1];
      *(a2 - 8) = v268;
      *v9 = v200;
      *(a2 - 24) = v232;
      goto LABEL_58;
    }

    v275 = *(v16 + 32);
    v207 = *v16;
    v240 = *(v16 + 16);
    result = *v12;
    v49 = *(v12 + 16);
    *(v16 + 32) = *(v12 + 32);
    *v16 = result;
    *(v16 + 16) = v49;
    result.n128_u64[1] = v207.n128_u64[1];
    *(v12 + 32) = v275;
    *v12 = v207;
    *(v12 + 16) = v240;
    if (*(a2 - 8) < *(v12 + 32))
    {
      v268 = *(v12 + 32);
      v200 = *v12;
      v232 = *(v12 + 16);
      v50 = *v9;
      v51 = *(a2 - 24);
      *(v12 + 32) = *(a2 - 8);
      *v12 = v50;
      *(v12 + 16) = v51;
      goto LABEL_35;
    }

LABEL_58:
    --a3;
    if (a4)
    {
      result.n128_u64[0] = *(v12 + 32);
LABEL_61:
      v86 = 0;
      v193 = *v12;
      v196 = *(v12 + 16);
      do
      {
        v87 = *(v12 + v86 + 72);
        v86 += 40;
      }

      while (v87 < result.n128_f64[0]);
      v88 = v12 + v86;
      v89 = a2;
      if (v86 == 40)
      {
        v92 = a2;
        while (v88 < v92)
        {
          v90 = v92 - 40;
          v93 = *(v92 - 8);
          v92 -= 40;
          if (v93 < result.n128_f64[0])
          {
            goto LABEL_71;
          }
        }

        v90 = v92;
      }

      else
      {
        do
        {
          v90 = v89 - 40;
          v91 = *(v89 - 8);
          v89 -= 40;
        }

        while (v91 >= result.n128_f64[0]);
      }

LABEL_71:
      v12 = v88;
      if (v88 < v90)
      {
        v94 = v90;
        do
        {
          v284 = *(v12 + 32);
          v216 = *v12;
          v252 = *(v12 + 16);
          v95 = *v94;
          v96 = *(v94 + 16);
          *(v12 + 32) = *(v94 + 32);
          *v12 = v95;
          *(v12 + 16) = v96;
          *(v94 + 32) = v284;
          *v94 = v216;
          *(v94 + 16) = v252;
          do
          {
            v97 = *(v12 + 72);
            v12 += 40;
          }

          while (v97 < result.n128_f64[0]);
          do
          {
            v98 = *(v94 - 8);
            v94 -= 40;
          }

          while (v98 >= result.n128_f64[0]);
        }

        while (v12 < v94);
      }

      v99 = (v12 - 40);
      if (v12 - 40 != a1)
      {
        v100 = *v99;
        v101 = *(v12 - 24);
        *(a1 + 32) = *(v12 - 8);
        *a1 = v100;
        *(a1 + 16) = v101;
      }

      *v99 = v193;
      *(v12 - 24) = v196;
      *(v12 - 8) = result.n128_u64[0];
      if (v88 < v90)
      {
        goto LABEL_82;
      }

      v102 = sub_1D0C5689C(a1, v12 - 40, result);
      if (sub_1D0C5689C(v12, a2, v103))
      {
        a2 = v12 - 40;
        if (!v102)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v102)
      {
LABEL_82:
        sub_1D0B90F48(a1, v12 - 40, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      result.n128_u64[0] = *(v12 + 32);
      if (*(v12 - 8) < result.n128_f64[0])
      {
        goto LABEL_61;
      }

      v194 = *v12;
      v197 = *(v12 + 16);
      if (result.n128_f64[0] >= *(a2 - 8))
      {
        v106 = v12 + 40;
        do
        {
          v12 = v106;
          if (v106 >= a2)
          {
            break;
          }

          v107 = *(v106 + 32);
          v106 += 40;
        }

        while (result.n128_f64[0] >= v107);
      }

      else
      {
        v104 = v12;
        do
        {
          v12 = v104 + 40;
          v105 = *(v104 + 72);
          v104 += 40;
        }

        while (result.n128_f64[0] >= v105);
      }

      v108 = a2;
      if (v12 < a2)
      {
        v109 = a2;
        do
        {
          v108 = v109 - 40;
          v110 = *(v109 - 8);
          v109 -= 40;
        }

        while (result.n128_f64[0] < v110);
      }

      while (v12 < v108)
      {
        v285 = *(v12 + 32);
        v217 = *v12;
        v253 = *(v12 + 16);
        v111 = *v108;
        v112 = *(v108 + 16);
        *(v12 + 32) = *(v108 + 32);
        *v12 = v111;
        *(v12 + 16) = v112;
        *(v108 + 32) = v285;
        *v108 = v217;
        *(v108 + 16) = v253;
        do
        {
          v113 = *(v12 + 72);
          v12 += 40;
        }

        while (result.n128_f64[0] >= v113);
        do
        {
          v114 = *(v108 - 8);
          v108 -= 40;
        }

        while (result.n128_f64[0] < v114);
      }

      v115 = (v12 - 40);
      if (v12 - 40 != a1)
      {
        v116 = *v115;
        v117 = *(v12 - 24);
        *(a1 + 32) = *(v12 - 8);
        *a1 = v116;
        *(a1 + 16) = v117;
      }

      a4 = 0;
      *v115 = v194;
      *(v12 - 24) = v197;
      *(v12 - 8) = result.n128_u64[0];
    }
  }

  result.n128_u64[0] = *(v12 + 72);
  v120 = *(a2 - 8);
  if (result.n128_f64[0] >= *(v12 + 32))
  {
    if (v120 >= result.n128_f64[0])
    {
      return result;
    }

    v224 = *(v12 + 40);
    v260 = *(v12 + 56);
    v290 = *(v12 + 72);
    v172 = *v9;
    v171 = *(a2 - 24);
    *(v12 + 72) = *(a2 - 8);
    *(v12 + 40) = v172;
    *(v12 + 56) = v171;
    *(a2 - 8) = v290;
    *v9 = v224;
    *(a2 - 24) = v260;
    goto LABEL_187;
  }

  if (v120 >= result.n128_f64[0])
  {
    v292 = *(v12 + 32);
    v227 = *v12;
    v263 = *(v12 + 16);
    v181 = *(v12 + 56);
    *v12 = *(v12 + 40);
    *(v12 + 16) = v181;
    *(v12 + 32) = *(v12 + 72);
    *(v12 + 40) = v227;
    *(v12 + 56) = v263;
    *(v12 + 72) = v292;
    result.n128_u64[0] = *(a2 - 8);
    if (result.n128_f64[0] >= *(v12 + 72))
    {
      return result;
    }

    result = *(v12 + 40);
    v123 = *(v12 + 56);
    v124 = *(v12 + 72);
    v183 = *v9;
    v182 = *(a2 - 24);
    *(v12 + 72) = *(a2 - 8);
    *(v12 + 40) = v183;
    *(v12 + 56) = v182;
  }

  else
  {
    v287 = *(v12 + 32);
    v219 = *v12;
    v255 = *(v12 + 16);
    v121 = *v9;
    v122 = *(a2 - 24);
    *(v12 + 32) = *(a2 - 8);
    *v12 = v121;
    *(v12 + 16) = v122;
    result = v219;
    v123 = v255;
    v124 = v287;
  }

  *(a2 - 8) = v124;
  *v9 = result;
  *(a2 - 24) = v123;
  return result;
}

void raven::RavenUserGaitTrackerActiveObject::OnNewSampleInPeriodicityTracker(uint64_t a1, __int128 *a2)
{
  sub_1D0B9217C(a1, a2);
  v5 = 0uLL;
  memset(&v32, 0, 80);
  v33 = 0;
  v34 = 0x7FF8000000000000;
  v6 = (a1 + 240);
  v7 = *(a1 + 240);
  if (v7 == 1 && ((v4.i64[0] = *(a1 + 248), *v5.i64 = *(a1 + 256) / *v4.i64, LODWORD(v8) = vcvtpd_u64_f64(*v5.i64), v8 <= 1) ? (v8 = 1) : (v8 = v8), *(a1 + 376) >= v8 && *(a1 + 313) == 1 && *(a1 + 312) == 1))
  {
    v9 = a2[1];
    *(a1 + 768) = *a2;
    *(a1 + 784) = v9;
    v10 = a2[2];
    v11 = a2[3];
    v12 = a2[5];
    *(a1 + 832) = a2[4];
    *(a1 + 848) = v12;
    *(a1 + 800) = v10;
    *(a1 + 816) = v11;
    *&v10 = *(a1 + 320);
    *&v11 = fabs(*&v10);
    v13 = 0.25 / *&v10;
    v31 = NAN;
    if (*&v11 < 2.22044605e-16)
    {
      v13 = NAN;
    }

    if (cnestimation::PeriodicityTracker::IsFeatureObservedInRecentTimeHistory(v6, v13, &v31))
    {
      *v14.i64 = v31;
      v29 = 0;
      v30 = 0;
      *v16.i64 = CNTimeSpan::SetTimeSpan(&v29, 0, v14, v15);
      v18 = CNTimeSpan::operator+((a1 + 768), &v29, v16, v17);
LABEL_26:
      v32.n128_u64[0] = v18;
      v32.n128_u64[1] = v19;
      *(a1 + 864) = 0;
      raven::RavenUserGaitTrackerActiveObject::PerformGaitTracking(a1, &v32, v20);
      return;
    }

    *(a1 + 864) = 1;
  }

  else
  {
    if (*(a1 + 864) != 1)
    {
      return;
    }

    if ((*(a1 + 313) & 1) == 0)
    {
      goto LABEL_24;
    }

    if (v7)
    {
      if ((cnestimation::PeriodicityTracker::NumberOfSamplesToLastObservedFeatureInRecentSamples(v6, 3u) & 0x100000000) != 0)
      {
        v5.i64[0] = *(a1 + 248);
        v29 = 0;
        v30 = 0;
        *v27.i64 = CNTimeSpan::SetTimeSpan(&v29, 0, v5, v4);
        v18 = CNTimeSpan::operator-(a2, &v29, v27, v28);
        goto LABEL_26;
      }

      v21 = *(a1 + 313);
    }

    else
    {
      v21 = 1;
    }

    v22 = CNTimeSpan::operator-(a2, (a1 + 768), v5, v4);
    if (v21)
    {
      v24 = *(a1 + 320);
    }

    else
    {
      v24 = NAN;
    }

    v25 = fabs(v24);
    v26 = 0.25 / v24;
    if (v25 < 2.22044605e-16)
    {
      v26 = NAN;
    }

    if (v23 + v22 > v26)
    {
LABEL_24:
      *(a1 + 864) = 0;
    }
  }
}

uint64_t sub_1D0B9217C(uint64_t result, __int128 *a2)
{
  if (*(result + 240) == 1)
  {
    LODWORD(v2) = vcvtpd_u64_f64(*(result + 256) / *(result + 248));
    if (v2 <= 1)
    {
      v2 = 1;
    }

    else
    {
      v2 = v2;
    }

    if (*(result + 376) >= v2 && *(result + 313) == 1 && *(result + 312) == 1)
    {
      v6 = a2[2];
      v7 = a2[3];
      v8 = a2[4];
      v9 = a2[5];
      v4 = *a2;
      v5 = a2[1];
      v3 = *(result + 232);
      v10 = 1.0 / *(v3 + 648);
      v11 = *(result + 320);
      v12 = *(v3 + 424);
      sub_1D0DEBC48();
    }
  }

  return result;
}

void sub_1D0B92270(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  v9 = sub_1D0B92680(v31, a3, a3, a4, a5, a6, a7, a8);
  if ((*(*v8 + 88))(v8, v9))
  {
    v10 = raven::RavenConvergenceEstimator::HandleEvent((v8 + 2968), v31);
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

void sub_1D0B92414(_Unwind_Exception *exception_object)
{
  if (*(v1 - 57) < 0)
  {
    operator delete(*(v1 - 80));
  }

  _Unwind_Resume(exception_object);
}

uint64_t raven::RavenConvergenceEstimator::HandleEvent(raven::RavenConvergenceEstimator *this, const raven::MovingStateEvent *a2)
{
  if (*(this + 57) != 1)
  {
    return 0xFFFFFFFFLL;
  }

  v56 = v2;
  v57 = v3;
  if (*(this + 58) != 1)
  {
    return 0;
  }

  raven::RavenEstimator::HandleMovingStateEvent(this, a2);
  if (v6)
  {
    return 0xFFFFFFFFLL;
  }

  result = raven::RavenEstimator::IsZUPTAppropriate(this, a2);
  if (result)
  {
    v21[1] = 0;
    v21[2] = 0;
    v21[0] = &unk_1F4CEF6E8;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v32 = 0;
    v33 = 0;
    v31 = 0x7FF8000000000000;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0x7FF8000000000000;
    v44 = 0;
    v45 = vdupq_n_s64(0x7FF8000000000000uLL);
    v46 = v45;
    v47 = v45;
    v48 = v45;
    v49 = 0x7FF8000000000000;
    v50 = 0;
    v51 = v45;
    v52 = v45;
    v53 = v45;
    v54 = v45;
    v55 = 0x7FF8000000000000;
    if (!(*(*this + 184))(this, a2, v21))
    {
      (*(*this + 320))(this, v21);
      v8 = (*(*a2 + 16))(a2);
      v9 = *(this + 232);
      *(this + 30) = v8;
      *(this + 31) = v10;
      if ((v9 & 1) == 0)
      {
        *(this + 232) = 1;
      }

      if (cnprint::CNPrinter::GetLogLevel(v8) <= 1)
      {
        v20 = 12;
        v19 = 1;
        v18[0] = (*(*a2 + 16))(a2);
        v18[1] = v11;
        cnprint::CNLogFormatter::FormatGeneral(this + 2712, v18, "Raising ZUPT velocity event");
        if (*(this + 2735) >= 0)
        {
          LOBYTE(v17) = this - 104;
        }

        else
        {
          v17 = *(this + 339);
        }

        cnprint::CNPrinter::Print(&v20, &v19, "%s", v12, v13, v14, v15, v16, v17);
      }
    }

    return 0;
  }

  return result;
}

__n128 sub_1D0B92680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a2 + 8) == 1)
  {
    v10 = *(a2 + 24);
  }

  else
  {
    LOWORD(v31.__vftable) = 3;
    LOBYTE(v29) = 5;
    cnprint::CNPrinter::Print(&v31, &v29, "Attempted to access type of uninitialized GenericEvent.", a4, a5, a6, a7, a8, v27);
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
    if (v20 != (off_1F4CEEB20 & 0x7FFFFFFFFFFFFFFFLL))
    {
      if (strcmp(v20, (off_1F4CEEB20 & 0x7FFFFFFFFFFFFFFFLL)))
      {
        v31.__vftable = 0;
        std::bad_cast::bad_cast(&v31);
        v31.__vftable = &unk_1F4CE4880;
        sub_1D0DC7F8C();
      }
    }

    v21 = *(a2 + 16);
    *a1 = &unk_1F4CEF778;
    *(a1 + 8) = *(v21 + 16);
    v22 = *(v21 + 64);
    v23 = *(v21 + 80);
    v24 = *(v21 + 48);
    *(a1 + 24) = *(v21 + 32);
    *(a1 + 72) = v23;
    *(a1 + 56) = v22;
    *(a1 + 40) = v24;
    v25 = *(v21 + 112);
    result = *(v21 + 128);
    v26 = *(v21 + 144);
    *(a1 + 88) = *(v21 + 96);
    *(a1 + 136) = v26;
    *(a1 + 120) = result;
    *(a1 + 104) = v25;
  }

  else
  {
    v29 = 3;
    v28 = 5;
    if (*(a2 + 8) == 1)
    {
      v18 = *(a2 + 24);
    }

    else
    {
      LOWORD(v31.__vftable) = 3;
      v30 = 5;
      cnprint::CNPrinter::Print(&v31, &v30, "Attempted to access type of uninitialized GenericEvent.", v11, v12, v13, v14, v15, v27);
      v18 = MEMORY[0x1E69E54A8];
    }

    cnprint::CNPrinter::Print(&v29, &v28, "Attempted to cast a GenericEvent of type %s to type %s.", v11, v12, v13, v14, v15, *(v18 + 8));
    result.n128_u64[0] = 0;
    *(a1 + 24) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = &unk_1F4CEF778;
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
    *(a1 + 120) = 0;
    *(a1 + 128) = 0;
    *(a1 + 136) = 0;
  }

  return result;
}

__n128 raven::RavenEstimator::HandleMovingStateEvent(raven::RavenEstimator *this, const raven::MovingStateEvent *a2)
{
  if (*(this + 57))
  {
    if (*(this + 2000) == 1)
    {
      *(this + 126) = *(a2 + 8);
      v4 = *(a2 + 24);
      v5 = *(a2 + 40);
      v6 = *(a2 + 56);
      *(this + 130) = *(a2 + 72);
      *(this + 129) = v6;
      *(this + 128) = v5;
      *(this + 127) = v4;
      result = *(a2 + 88);
      v8 = *(a2 + 104);
      v9 = *(a2 + 120);
      *(this + 268) = *(a2 + 17);
      *(this + 133) = v9;
      *(this + 132) = v8;
      *(this + 131) = result;
    }

    else
    {
      *(this + 251) = &unk_1F4CEF778;
      *(this + 126) = *(a2 + 8);
      v22 = *(a2 + 24);
      v23 = *(a2 + 40);
      v24 = *(a2 + 56);
      *(this + 130) = *(a2 + 72);
      *(this + 129) = v24;
      *(this + 128) = v23;
      *(this + 127) = v22;
      result = *(a2 + 88);
      v25 = *(a2 + 104);
      v26 = *(a2 + 120);
      *(this + 268) = *(a2 + 17);
      *(this + 133) = v26;
      *(this + 132) = v25;
      *(this + 131) = result;
      *(this + 2000) = 1;
    }
  }

  else if (cnprint::CNPrinter::GetLogLevel(this) <= 1)
  {
    v30 = 12;
    v29 = 1;
    v28[0] = (*(*a2 + 16))(a2);
    v28[1] = v10;
    cnprint::CNLogFormatter::FormatWarning(this + 2712, v28, "Estimator not configured, failed to handle MovingStateEvent.", v11, v12, v13, v14, v15, v27);
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

BOOL raven::RavenEstimator::IsZUPTAppropriate(raven::RavenEstimator *this, const raven::MovingStateEvent *a2)
{
  v2 = *(this + 146);
  if (v2 && (*(v2 + 33) & 1) != 0)
  {
    if (*(a2 + 104) - 1 <= 1 && *(a2 + 15) + *(a2 + 16) >= *(v2 + 248))
    {
      v14[0] = (*(*a2 + 16))(a2);
      v14[1] = v4;
      return raven::RavenEstimator::IsTimeForZUPT(this, v14);
    }
  }

  else
  {
    LOWORD(v14[0]) = 12;
    v15 = 4;
    v6 = (*(*a2 + 16))(a2);
    v13 = v7 + v6;
    cnprint::CNPrinter::Print(v14, &v15, "t,%.3lf, Raven parameters not configured.", v8, v9, v10, v11, v12, SLOBYTE(v13));
  }

  return 0;
}

BOOL raven::RavenEstimator::IsTimeForZUPT(uint64_t a1, void *a2)
{
  v4 = *(a1 + 232);
  v3 = (a1 + 232);
  if (v4 != 1)
  {
    return 1;
  }

  v6 = sub_1D0B92BD8(v3);
  v9 = CNTimeSpan::operator-(a2, v6, v7, v8);
  return v10 + v9 >= *(*(a1 + 1168) + 272);
}

_BYTE *sub_1D0B92BD8(_BYTE *a1)
{
  if (*a1 != 1)
  {
    std::logic_error::logic_error(&v2, "Attempted to access the value of an uninitialized optional object.");
    v2.__vftable = &unk_1F4CE0128;
    sub_1D0D4D114(&v2);
  }

  return a1 + 8;
}

void sub_1D0B92C80(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0B9356C(v23, a3, a3, a4, a5, a6, a7, a8);
  raven::RavenEstimator::HandleMountStateEvent((v8 + 288), v23);
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

void sub_1D0B92DAC(_Unwind_Exception *exception_object)
{
  if (*(v1 - 57) < 0)
  {
    operator delete(*(v1 - 80));
  }

  _Unwind_Resume(exception_object);
}

__n128 raven::RavenEstimator::HandleMountStateEvent(raven::RavenEstimator *this, const raven::MountStateEvent *a2)
{
  if (*(this + 57))
  {
    if (*(this + 1848) == 1)
    {
      *(this + 1864) = *(a2 + 8);
      v4 = *(a2 + 24);
      v5 = *(a2 + 40);
      v6 = *(a2 + 72);
      *(this + 1912) = *(a2 + 56);
      *(this + 1928) = v6;
      *(this + 1880) = v4;
      *(this + 1896) = v5;
      result = *(a2 + 88);
      v8 = *(a2 + 104);
      v9 = *(a2 + 120);
      *(this + 249) = *(a2 + 17);
      *(this + 1960) = v8;
      *(this + 1976) = v9;
      *(this + 1944) = result;
    }

    else
    {
      *(this + 232) = &unk_1F4CEF538;
      *(this + 1864) = *(a2 + 8);
      v22 = *(a2 + 24);
      v23 = *(a2 + 40);
      v24 = *(a2 + 72);
      *(this + 1912) = *(a2 + 56);
      *(this + 1928) = v24;
      *(this + 1880) = v22;
      *(this + 1896) = v23;
      result = *(a2 + 88);
      v25 = *(a2 + 104);
      v26 = *(a2 + 120);
      *(this + 249) = *(a2 + 17);
      *(this + 1960) = v25;
      *(this + 1976) = v26;
      *(this + 1944) = result;
      *(this + 1848) = 1;
    }
  }

  else if (cnprint::CNPrinter::GetLogLevel(this) <= 1)
  {
    v30 = 12;
    v29 = 1;
    v28[0] = (*(*a2 + 16))(a2);
    v28[1] = v10;
    cnprint::CNLogFormatter::FormatWarning(this + 2712, v28, "Estimator not configured, failed to handle MountStateEvent.", v11, v12, v13, v14, v15, v27);
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

void sub_1D0B92F80(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0B88E94(v22, a3, a3, a4, a5, a6, a7, a8);
  if (raven::RavenPNTEstimator::HandleEvent((v8 + 288), v22))
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

    cnprint::CNLogFormatter::FormatWarning(v8 + 240, v25, "Failed to handle event - %s.", v10, v11, v12, v13, v14, v15);
    if (*(v8 + 263) >= 0)
    {
      LOBYTE(v21) = v8 - 16;
    }

    else
    {
      v21 = *(v8 + 240);
    }

    cnprint::CNPrinter::Print(&v27, &v26, "%s", v16, v17, v18, v19, v20, v21);
    if (v24 < 0)
    {
      operator delete(v23[0]);
    }
  }
}

void sub_1D0B930A0(_Unwind_Exception *exception_object)
{
  if (*(v1 - 57) < 0)
  {
    operator delete(*(v1 - 80));
  }

  _Unwind_Resume(exception_object);
}

uint64_t raven::RavenPNTEstimator::HandleEvent(raven::RavenPNTEstimator *this, const raven::AccelerometerEvent *a2)
{
  if (*(this + 57) != 1)
  {
    return 0xFFFFFFFFLL;
  }

  v23 = v2;
  v24 = v3;
  v19 = 0;
  v20 = 0;
  v18 = &unk_1F4CEF628;
  v19 = (*(*a2 + 16))(a2);
  v20 = v6;
  v21 = *(a2 + 104);
  v22 = *(a2 + 15);
  result = sub_1D0B931F4(this + 28040, &v18);
  if (result)
  {
    v17 = 12;
    v16 = 4;
    v15[0] = (*(*a2 + 16))(a2);
    v15[1] = v8;
    cnprint::CNLogFormatter::FormatGeneral(this + 2712, v15, "Could not add measurement - accelerations");
    if (*(this + 2735) >= 0)
    {
      LOBYTE(v14) = this - 104;
    }

    else
    {
      v14 = *(this + 339);
    }

    cnprint::CNPrinter::Print(&v17, &v16, "%s", v9, v10, v11, v12, v13, v14);
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t sub_1D0B931F4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    if (v4 == 350 && sub_1D0B93510(a1))
    {
      return 0xFFFFFFFFLL;
    }

    v6 = (*(*a2 + 16))(a2);
    v8 = v7;
    v9 = *(a1 + 44);
    v10 = a1 + 48;
    v26 = v6;
    if (v6)
    {
      v11 = 1;
    }

    else
    {
      v11 = (*&v7 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL;
    }

    v12 = !v11;
    while (1)
    {
      v13 = v10 + 48 * v9;
      v14 = (*(*v13 + 16))(v13);
      if (v12 || (!v14 ? (v16 = (*&v15 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL) : (v16 = 1), !v16 || v26 == v14))
      {
        if (v8 >= v15)
        {
          goto LABEL_26;
        }
      }

      else if (v26 >= v14)
      {
LABEL_26:
        v20 = v10 + 48 * ((v9 + 1) % 0x15E) + 8;
        goto LABEL_29;
      }

      v17 = v10 + 48 * ((v9 + 1) % 0x15E);
      v18 = *(v13 + 8);
      v19 = *(v13 + 24);
      *(v17 + 40) = *(v13 + 40);
      *(v17 + 24) = v19;
      *(v17 + 8) = v18;
      if (v9 == *(a1 + 40))
      {
        break;
      }

      if (v9)
      {
        --v9;
      }

      else
      {
        v9 = 349;
      }

      if (v9 == *(a1 + 44))
      {
        goto LABEL_30;
      }
    }

    v20 = v13 + 8;
LABEL_29:
    v23 = *(a2 + 8);
    v24 = *(a2 + 24);
    *(v20 + 32) = *(a2 + 40);
    *v20 = v23;
    *(v20 + 16) = v24;
    v9 = *(a1 + 44);
LABEL_30:
    ++*(a1 + 8);
    if (v9 == 349)
    {
      v25 = 0;
    }

    else
    {
      v25 = v9 + 1;
    }

    *(a1 + 44) = v25;
  }

  else
  {
    *(a1 + 8) = 1;
    *(a1 + 40) = 0;
    v21 = *(a2 + 8);
    v22 = *(a2 + 24);
    *(a1 + 88) = *(a2 + 40);
    *(a1 + 72) = v22;
    *(a1 + 56) = v21;
  }

  sub_1D0B93420(a1);
  return 0;
}

uint64_t sub_1D0B93420(uint64_t result)
{
  v1 = result;
  v2 = 0.0;
  if (*(result + 8) >= 2u)
  {
    v3 = result + 48 + 48 * *(result + 44);
    v12[0] = (*(*v3 + 16))(v3);
    v12[1] = v4;
    v5 = v1 + 48 + 48 * *(v1 + 40);
    v11[0] = (*(*v5 + 16))(v5);
    v11[1] = v6;
    result = CNTimeSpan::operator-(v12, v11, v7, v8);
    v10 = v9 + result;
    if (fabs(v10) >= 2.22044605e-16)
    {
      v2 = (*(v1 + 8) - 1) / v10;
    }
  }

  *(v1 + 32) = v2;
  return result;
}

uint64_t sub_1D0B93510(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (!v1)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 8) = v1 - 1;
  v2 = *(a1 + 40);
  if (v2 == 349)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2 + 1;
  }

  *(a1 + 40) = v3;
  sub_1D0B93420(a1);
  return 0;
}

__n128 sub_1D0B9356C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a2 + 8) == 1)
  {
    v10 = *(a2 + 24);
  }

  else
  {
    LOWORD(v31.__vftable) = 3;
    LOBYTE(v29) = 5;
    cnprint::CNPrinter::Print(&v31, &v29, "Attempted to access type of uninitialized GenericEvent.", a4, a5, a6, a7, a8, v27);
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
    if (v20 != (off_1F4CEEB08 & 0x7FFFFFFFFFFFFFFFLL))
    {
      if (strcmp(v20, (off_1F4CEEB08 & 0x7FFFFFFFFFFFFFFFLL)))
      {
        v31.__vftable = 0;
        std::bad_cast::bad_cast(&v31);
        v31.__vftable = &unk_1F4CE4880;
        sub_1D0DC7F8C();
      }
    }

    v21 = *(a2 + 16);
    *a1 = &unk_1F4CEF538;
    *(a1 + 8) = *(v21 + 16);
    v22 = *(v21 + 64);
    v23 = *(v21 + 80);
    v24 = *(v21 + 48);
    *(a1 + 24) = *(v21 + 32);
    *(a1 + 72) = v23;
    *(a1 + 56) = v22;
    *(a1 + 40) = v24;
    v25 = *(v21 + 112);
    result = *(v21 + 128);
    v26 = *(v21 + 144);
    *(a1 + 88) = *(v21 + 96);
    *(a1 + 136) = v26;
    *(a1 + 120) = result;
    *(a1 + 104) = v25;
  }

  else
  {
    v29 = 3;
    v28 = 5;
    if (*(a2 + 8) == 1)
    {
      v18 = *(a2 + 24);
    }

    else
    {
      LOWORD(v31.__vftable) = 3;
      v30 = 5;
      cnprint::CNPrinter::Print(&v31, &v30, "Attempted to access type of uninitialized GenericEvent.", v11, v12, v13, v14, v15, v27);
      v18 = MEMORY[0x1E69E54A8];
    }

    cnprint::CNPrinter::Print(&v29, &v28, "Attempted to cast a GenericEvent of type %s to type %s.", v11, v12, v13, v14, v15, *(v18 + 8));
    result.n128_u64[0] = 0;
    *(a1 + 24) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = &unk_1F4CEF538;
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
    *(a1 + 120) = 0;
    *(a1 + 128) = 0;
    *(a1 + 136) = 0;
  }

  return result;
}

__n128 sub_1D0B937E8(void ***a1, uint64_t a2)
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
    v7 = 26 * (v5 - v4) - 1;
  }

  v8 = a1[4];
  if (v7 == (a1[5] + v8))
  {
    v9 = v8 >= 0x1A;
    v10 = v8 - 26;
    if (!v9)
    {
      v11 = a1[3];
      v12 = v11 - *a1;
      if (v6 < v12)
      {
        if (v11 != v5)
        {
          operator new();
        }

        operator new();
      }

      if (v11 == *a1)
      {
        v13 = 1;
      }

      else
      {
        v13 = v12 >> 2;
      }

      __p[4] = a1;
      sub_1D0C54E78(a1, v13);
    }

    a1[4] = v10;
    __p[0] = *v4;
    a1[1] = v4 + 1;
    sub_1D0B8BF18(a1, __p);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v15 = 0;
  }

  else
  {
    v14 = a1[4] + a1[5];
    v15 = v4[v14 / 0x1A] + 152 * (v14 % 0x1A);
  }

  *v15 = &unk_1F4CEF1E0;
  *(v15 + 8) = *(a2 + 8);
  v16 = *(a2 + 24);
  v17 = *(a2 + 40);
  v18 = *(a2 + 56);
  *(v15 + 72) = *(a2 + 72);
  *(v15 + 56) = v18;
  *(v15 + 40) = v17;
  *(v15 + 24) = v16;
  result = *(a2 + 88);
  v20 = *(a2 + 104);
  v21 = *(a2 + 120);
  *(v15 + 130) = *(a2 + 130);
  *(v15 + 120) = v21;
  *(v15 + 104) = v20;
  *(v15 + 88) = result;
  a1[5] = (a1[5] + 1);
  return result;
}

void sub_1D0B93B40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  operator delete(v12);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

int64x2_t sub_1D0B93B8C(int64x2_t *a1, uint64_t a2)
{
  v4 = a1[2].u64[0];
  if (!v4)
  {
    sub_1D0BBDB70(a1);
    v4 = a1[2].u64[0];
  }

  v5 = a1->i64[1];
  v6 = (v5 + 8 * (v4 / 0x1A));
  v7 = *v6 + 152 * (v4 % 0x1A);
  if (a1[1].i64[0] == v5)
  {
    v7 = 0;
  }

  if (v7 == *v6)
  {
    v7 = *(v6 - 1) + 3952;
  }

  *(v7 - 152) = &unk_1F4CEF1E0;
  *(v7 - 144) = *(a2 + 8);
  v8 = *(a2 + 24);
  v9 = *(a2 + 40);
  v10 = *(a2 + 72);
  *(v7 - 96) = *(a2 + 56);
  *(v7 - 80) = v10;
  *(v7 - 128) = v8;
  *(v7 - 112) = v9;
  v11 = *(a2 + 88);
  v12 = *(a2 + 104);
  v13 = *(a2 + 120);
  *(v7 - 22) = *(a2 + 130);
  *(v7 - 48) = v12;
  *(v7 - 32) = v13;
  *(v7 - 64) = v11;
  result = vaddq_s64(a1[2], xmmword_1D0E82EC0);
  a1[2] = result;
  return result;
}

void sub_1D0B93CA0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v49[2] = *MEMORY[0x1E69E9840];
  v9 = *a2;
  if (*(a3 + 8) == 1)
  {
    v10 = *(a3 + 24);
  }

  else
  {
    LOWORD(v42.__vftable) = 3;
    LOBYTE(v48) = 5;
    cnprint::CNPrinter::Print(&v42, &v48, "Attempted to access type of uninitialized GenericEvent.", a4, a5, a6, a7, a8, v31);
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
    if (v19 != (off_1F4CEF328 & 0x7FFFFFFFFFFFFFFFLL) && strcmp(v19, (off_1F4CEF328 & 0x7FFFFFFFFFFFFFFFLL)))
    {
      v42.__vftable = 0;
      std::bad_cast::bad_cast(&v42);
      v42.__vftable = &unk_1F4CE4880;
      sub_1D0DC7F8C();
    }

    v20 = *(a3 + 16);
    v33 = v20[1];
    v34 = v20[2];
    v35 = v20[3];
    v36 = v20[4];
    v37 = v20[5];
    v38 = v20[6];
  }

  else
  {
    LOWORD(v48) = 3;
    LOBYTE(v40) = 5;
    if (*(a3 + 8) == 1)
    {
      v18 = *(a3 + 24);
    }

    else
    {
      LOWORD(v42.__vftable) = 3;
      LOBYTE(v41[0]) = 5;
      cnprint::CNPrinter::Print(&v42, v41, "Attempted to access type of uninitialized GenericEvent.", v11, v12, v13, v14, v15, v31);
      v18 = MEMORY[0x1E69E54A8];
    }

    cnprint::CNPrinter::Print(&v48, &v40, "Attempted to cast a GenericEvent of type %s to type %s.", v11, v12, v13, v14, v15, *(v18 + 8));
    v34 = 0uLL;
    v33 = 0uLL;
    v35 = 0uLL;
    v36 = 0uLL;
    v37 = 0uLL;
    v38.i64[0] = 0;
    v38.i64[1] = 0x7FF8000000000000;
  }

  if (*(v9 + 224) == 1)
  {
    v42.__vftable = &unk_1F4CEF4D8;
    *&v44[16] = v35;
    v45 = v36;
    v46 = v37;
    v47 = v38;
    v43 = v33;
    *v44 = v34;
    raven::PopulateAllTimeFields(&v43, v9 + 232, v34, v33);
    if (v44[0] == 1 && cnnavigation::GNSSUTCParameters::IsValid((v9 + 328)))
    {
      LODWORD(v41[0]) = 0;
      v41[1] = 0.0;
      v40 = *&v44[8];
      if (!cnnavigation::iOSTimeToJulianTime(&v40, &v48) && !cnnavigation::JulianTimeToGPSTime(&v48, *(v9 + 368), v41))
      {
        cnnavigation::TAITime::TAITime(&v39, v41, (v9 + 328));
        v26 = v39;
        v45 = v39;
        v44[24] = 1;
      }
    }

    if (*(v9 + 400) != 1 || (*&v49[0] = CNTimeSpan::operator-(&v43, (v9 + 424), v26, v27), v49[1] = v28, LOBYTE(v48) = 1, !sub_1D0B7C8AC(v49, (v9 + 408))))
    {
      LOWORD(v48) = 12;
      LOBYTE(v41[0]) = 3;
      v32 = *&v43.i64[1] + v43.i64[0];
      cnprint::CNPrinter::Print(&v48, v41, "Time scales: Raven, %.6f, iOS, %.6f, TAIuncorrected, %.6f", v21, v22, v23, v24, v25, SLOBYTE(v32));
      v29 = *(v9 + 400);
      *(v9 + 408) = v43;
      if ((v29 & 1) == 0)
      {
        *(v9 + 400) = 1;
      }
    }

    operator new();
  }

  v30 = *MEMORY[0x1E69E9840];
}

uint64_t raven::PopulateAllTimeFields(uint64_t a1, uint64_t a2, int8x16_t a3, int8x16_t a4)
{
  result = CNTimeSpan::operator-(a1, a2, a3, a4);
  v13[0] = result;
  v13[1] = v9;
  if (*(a2 + 16) == 1)
  {
    result = CNTimeSpan::operator+((a2 + 24), v13, v7, v8);
    *(a1 + 24) = result;
    *(a1 + 32) = v10;
    *(a1 + 16) = 1;
  }

  if (*(a2 + 64) == 1)
  {
    result = CNTimeSpan::operator+((a2 + 72), v13, v7, v8);
    *(a1 + 72) = result;
    *(a1 + 80) = v11;
    *(a1 + 64) = 1;
  }

  if (*(a2 + 40) == 1)
  {
    result = CNTimeSpan::operator+((a2 + 48), v13, v7, v8);
    *(a1 + 48) = result;
    *(a1 + 56) = v12;
    *(a1 + 40) = 1;
  }

  return result;
}

BOOL cnnavigation::GNSSUTCParameters::IsValid(cnnavigation::GNSSUTCParameters *this)
{
  if (*this != 1)
  {
    return 0;
  }

  if (fabs(*(this + 1)) >= 0.000001)
  {
    return 0;
  }

  if (fabs(*(this + 2)) >= 0.000001)
  {
    return 0;
  }

  v1 = *(this + 10);
  if ((v1 + 500) > 0x3E8)
  {
    return 0;
  }

  v2 = v1 - *(this + 16);
  if (v2 < 0)
  {
    v2 = -v2;
  }

  return v2 < 2;
}

void *cnnavigation::TAITime::TAITime(void *a1, double *a2, cnnavigation::GNSSUTCParameters *this)
{
  *a1 = 0;
  a1[1] = 0;
  IsValid = cnnavigation::GNSSUTCParameters::IsValid(this);
  v9 = *a2;
  if (IsValid && *(this + 1) == 1)
  {
    v10 = a2[1];
    v18 = 0uLL;
    *v7.i64 = v10;
    *v11.i64 = CNTimeSpan::SetTimeSpan(&v18, 604800 * v9, v7, v8);
    v12 = *(this + 1);
    v13 = *(this + 2);
    v15 = CNTimeSpan::operator-(&v18, this + 3, v11, v14);
    *v7.i64 = v12 + v13 * (v16 + v15);
  }

  else
  {
    v10 = a2[1];
    v7.i64[0] = 0;
  }

  v8.i64[0] = 0xC1212319A1CAC083;
  *v7.i64 = v10 - *v7.i64 + -561548.816;
  v18 = 0uLL;
  CNTimeSpan::SetTimeSpan(&v18, 604800 * (v9 - 1042), v7, v8);
  *a1 = v18;
  return a1;
}

{
  *a1 = 0;
  a1[1] = 0;
  IsValid = cnnavigation::GNSSUTCParameters::IsValid(this);
  v9 = *a2;
  if (IsValid && *(this + 1) == 3)
  {
    v10 = a2[1];
    v18 = 0uLL;
    *v7.i64 = v10;
    *v11.i64 = CNTimeSpan::SetTimeSpan(&v18, 604800 * v9, v7, v8);
    v12 = *(this + 1);
    v13 = *(this + 2);
    v15 = CNTimeSpan::operator-(&v18, this + 3, v11, v14);
    *v7.i64 = v12 + v13 * (v16 + v15);
  }

  else
  {
    v10 = a2[1];
    v7.i64[0] = 0;
  }

  v8.i64[0] = 0xC1212319A1CAC083;
  *v7.i64 = v10 - *v7.i64 + -561548.816;
  v18 = 0uLL;
  CNTimeSpan::SetTimeSpan(&v18, 604800 * (v9 - 18), v7, v8);
  *a1 = v18;
  return a1;
}

{
  *a1 = 0;
  a1[1] = 0;
  IsValid = cnnavigation::GNSSUTCParameters::IsValid(this);
  v9 = *a2;
  if (IsValid && *(this + 1) == 4)
  {
    v10 = a2[1];
    v18 = 0uLL;
    *v7.i64 = v10;
    *v11.i64 = CNTimeSpan::SetTimeSpan(&v18, 604800 * v9, v7, v8);
    v12 = *(this + 1);
    v13 = *(this + 2);
    v15 = CNTimeSpan::operator-(&v18, this + 3, v11, v14);
    *v7.i64 = v12 + v13 * (v16 + v15);
  }

  else
  {
    v10 = a2[1];
    v7.i64[0] = 0;
  }

  v8.i64[0] = 0xC12122FDA1CAC083;
  *v7.i64 = v10 - *v7.i64 + -561534.816;
  v18 = 0uLL;
  CNTimeSpan::SetTimeSpan(&v18, 604800 * (v9 + 314), v7, v8);
  *a1 = v18;
  return a1;
}

{
  *a1 = 0;
  a1[1] = 0;
  IsValid = cnnavigation::GNSSUTCParameters::IsValid(this);
  v9 = *a2;
  if (IsValid && *(this + 1) == 6)
  {
    v10 = a2[1];
    v18 = 0uLL;
    *v7.i64 = v10;
    *v11.i64 = CNTimeSpan::SetTimeSpan(&v18, 604800 * v9, v7, v8);
    v12 = *(this + 1);
    v13 = *(this + 2);
    v15 = CNTimeSpan::operator-(&v18, this + 3, v11, v14);
    *v7.i64 = v12 + v13 * (v16 + v15);
  }

  else
  {
    v10 = a2[1];
    v7.i64[0] = 0;
  }

  v8.i64[0] = 0xC1212319A1CAC083;
  *v7.i64 = v10 - *v7.i64 + -561548.816;
  v18 = 0uLL;
  CNTimeSpan::SetTimeSpan(&v18, 604800 * (v9 - 18), v7, v8);
  *a1 = v18;
  return a1;
}

uint64_t cnnavigation::iOSTimeToJulianTime(uint64_t a1, uint64_t a2)
{
  v2 = *a1 / 86400;
  if (v2 < -2451910)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = (*(a1 + 8) + (*a1 % 86400)) / 86400.0 + 0.5;
  if (v3 + (v2 + 2451910) < 0.0)
  {
    return 0xFFFFFFFFLL;
  }

  if (v3 >= 1.0)
  {
    result = 0;
    *a2 = v2 + 2451911;
    v5 = -1.0;
  }

  else
  {
    if (v3 >= 0.0)
    {
      result = 0;
      *a2 = v2 + 2451910;
      goto LABEL_11;
    }

    result = 0;
    if (v3 >= -1.0)
    {
      *a2 = v2 + 2451909;
      v5 = 1.0;
    }

    else
    {
      *a2 = v2 + 2451908;
      v5 = 2.0;
    }
  }

  v3 = v3 + v5;
LABEL_11:
  *(a2 + 8) = v3;
  return result;
}

uint64_t cnnavigation::JulianTimeToGPSTime(uint64_t a1, int a2, uint64_t a3)
{
  v3 = *(a1 + 8) + -0.5;
  v4 = *a1 - 2444244 + vcvtmd_s64_f64(v3);
  if ((v4 & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  *a3 = v4 / 7;
  v5 = (v3 - floor(v3)) * 86400.0 + (v4 % 7) * 86400.0 + a2;
  *(a3 + 8) = v5;
  result = 0;
  if (v5 >= 604800.0)
  {
    *a3 = v4 / 7 + 1;
    *(a3 + 8) = v5 + -604800.0;
  }

  return result;
}

__n128 sub_1D0B94708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a2 + 8) == 1)
  {
    v10 = *(a2 + 24);
  }

  else
  {
    LOWORD(v29.__vftable) = 3;
    LOBYTE(v27) = 5;
    cnprint::CNPrinter::Print(&v29, &v27, "Attempted to access type of uninitialized GenericEvent.", a4, a5, a6, a7, a8, v25);
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
    if (v20 != (off_1F4CEEE90 & 0x7FFFFFFFFFFFFFFFLL))
    {
      if (strcmp(v20, (off_1F4CEEE90 & 0x7FFFFFFFFFFFFFFFLL)))
      {
        v29.__vftable = 0;
        std::bad_cast::bad_cast(&v29);
        v29.__vftable = &unk_1F4CE4880;
        sub_1D0DC7F8C();
      }
    }

    v21 = *(a2 + 16);
    *a1 = &unk_1F4CEF4D8;
    v22 = *(v21 + 32);
    *(a1 + 8) = *(v21 + 16);
    *(a1 + 24) = v22;
    result = *(v21 + 80);
    v23 = *(v21 + 96);
    v24 = *(v21 + 64);
    *(a1 + 40) = *(v21 + 48);
    *(a1 + 88) = v23;
    *(a1 + 72) = result;
    *(a1 + 56) = v24;
  }

  else
  {
    v27 = 3;
    v26 = 5;
    if (*(a2 + 8) == 1)
    {
      v18 = *(a2 + 24);
    }

    else
    {
      LOWORD(v29.__vftable) = 3;
      v28 = 5;
      cnprint::CNPrinter::Print(&v29, &v28, "Attempted to access type of uninitialized GenericEvent.", v11, v12, v13, v14, v15, v25);
      v18 = MEMORY[0x1E69E54A8];
    }

    cnprint::CNPrinter::Print(&v27, &v26, "Attempted to cast a GenericEvent of type %s to type %s.", v11, v12, v13, v14, v15, *(v18 + 8));
    result.n128_u64[0] = 0;
    *(a1 + 24) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = &unk_1F4CEF4D8;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    *(a1 + 88) = 0;
    *(a1 + 96) = 0x7FF8000000000000;
  }

  return result;
}

void sub_1D0B9493C(uint64_t a1, raven::RavenActivityStateEstimatorActiveObject **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0B94708(v15, a3, a3, a4, a5, a6, a7, a8);
  raven::RavenActivityStateEstimatorActiveObject::HandleEvent(v8, v15, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_1D0B94988(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1D0DC99A8(result, a4);
  }

  return result;
}

void sub_1D0B949E8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1D0B94A04(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

uint64_t sub_1D0B94BA0(uint64_t result, int a2, uint64_t a3)
{
  if (a2 == 1)
  {
    v3 = *(result + 12);
    *(a3 + 8) = 1;
    *(a3 + 12) = v3;
    *(a3 + 16) = v3;
    *(a3 + 20) = 1;
    if (v3)
    {
      v4 = 0;
      v5 = *(result + 8);
      v6 = *(result + 32);
      v7 = *(a3 + 32);
      v8 = 1;
      do
      {
        v9 = *(v6 + 8 * (v5 * v4));
        v10 = v8;
        v11 = v5 - 1;
        if (v5 >= 2)
        {
          do
          {
            v9 = v9 + *(v6 + 8 * v10++);
            --v11;
          }

          while (v11);
        }

        *(v7 + 8 * v4++) = v9;
        v8 += v5;
      }

      while (v4 != v3);
    }
  }

  else
  {
    v12 = *(result + 8);
    *(a3 + 8) = v12;
    *(a3 + 12) = 1;
    *(a3 + 16) = v12;
    *(a3 + 20) = v12;
    if (v12)
    {
      v13 = *(result + 32);
      v14 = *(a3 + 32);
      v15 = v12;
      do
      {
        v16 = *v13++;
        *v14++ = v16;
        --v15;
      }

      while (v15);
    }

    v17 = *(result + 12);
    if (v17 >= 2)
    {
      v18 = *(result + 32);
      v19 = *(a3 + 32);
      v20 = 1;
      v21 = v12;
      do
      {
        v22 = v21;
        v23 = v19;
        v24 = v12;
        if (v12)
        {
          do
          {
            *v23 = *(v18 + 8 * v22) + *v23;
            ++v23;
            ++v22;
            --v24;
          }

          while (v24);
        }

        ++v20;
        v21 += v12;
      }

      while (v20 != v17);
    }
  }

  return result;
}

__n128 sub_1D0B94CA4(uint64_t a1, uint64_t a2)
{
  result.n128_u64[0] = 0x10000000ALL;
  *(a1 + 24) = 0x10000000ALL;
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F4CEAE48;
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
  if (v4 > 0xA)
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

double sub_1D0B94DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 816);
  if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (v8 > 0.0 ? (v9 = v8 < 1.0) : (v9 = 0), v9))
  {
    v11 = a1 + 16;
    v12 = 0.0;
    for (i = 16; i != 96; i += 8)
    {
      v14 = *(a1 + i);
      if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_16;
      }

      if (v14 < 0.0 || v14 > 1.0)
      {
        goto LABEL_16;
      }

      v12 = v12 + v14;
    }

    if (fabs(v12 + -1.0) > v8)
    {
LABEL_16:
      v81 = 12;
      v80 = 4;
      v75 = *(a1 + 8) + *a1;
      cnprint::CNPrinter::Print(&v81, &v80, "time,%.3lf,t-function failure on line %d: %s() %s", a4, a5, a6, a7, a8, SLOBYTE(v75));
      return result;
    }

    v16 = a1 + 96;
    v17 = 0.0;
    for (j = 96; j != 176; j += 8)
    {
      v19 = *(a1 + j);
      if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_26;
      }

      if (v19 < 0.0 || v19 > 1.0)
      {
        goto LABEL_26;
      }

      v17 = v17 + v19;
    }

    if (fabs(v17 + -1.0) > v8)
    {
LABEL_26:
      v83 = 12;
      v82 = 4;
      v76 = *(a1 + 8) + *a1;
      cnprint::CNPrinter::Print(&v83, &v82, "time,%.3lf,t-function failure on line %d: %s() %s", a4, a5, a6, a7, a8, SLOBYTE(v76));
      return result;
    }

    v21 = a1 + 176;
    v22 = 0.0;
    for (k = 176; k != 256; k += 8)
    {
      v24 = *(a1 + k);
      if ((*&v24 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_36;
      }

      if (v24 < 0.0 || v24 > 1.0)
      {
        goto LABEL_36;
      }

      v22 = v22 + v24;
    }

    if (fabs(v22 + -1.0) > v8)
    {
LABEL_36:
      v85 = 12;
      v84 = 4;
      v77 = *(a1 + 8) + *a1;
      cnprint::CNPrinter::Print(&v85, &v84, "time,%.3lf,t-function failure on line %d: %s() %s", a4, a5, a6, a7, a8, SLOBYTE(v77));
      return result;
    }

    v26 = a1 + 256;
    v27 = 0.0;
    for (m = 256; m != 336; m += 8)
    {
      v29 = *(a1 + m);
      if ((*&v29 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_46;
      }

      if (v29 < 0.0 || v29 > 1.0)
      {
        goto LABEL_46;
      }

      v27 = v27 + v29;
    }

    if (fabs(v27 + -1.0) > v8)
    {
LABEL_46:
      v31 = "invalid transition probabilities from running state";
      v32 = 119;
      return sub_1D0E32F8C(a1, v31, "t_ActivityState", v32, a5, a6, a7, a8);
    }

    v33 = a1 + 336;
    v34 = 0.0;
    for (n = 336; n != 416; n += 8)
    {
      v36 = *(a1 + n);
      if ((*&v36 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_57;
      }

      if (v36 < 0.0 || v36 > 1.0)
      {
        goto LABEL_57;
      }

      v34 = v34 + v36;
    }

    if (fabs(v34 + -1.0) > v8)
    {
LABEL_57:
      v31 = "invalid transition probabilities from cycling state";
      v32 = 124;
      return sub_1D0E32F8C(a1, v31, "t_ActivityState", v32, a5, a6, a7, a8);
    }

    v38 = a1 + 416;
    v39 = 0.0;
    for (ii = 416; ii != 496; ii += 8)
    {
      v41 = *(a1 + ii);
      if ((*&v41 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_67;
      }

      if (v41 < 0.0 || v41 > 1.0)
      {
        goto LABEL_67;
      }

      v39 = v39 + v41;
    }

    if (fabs(v39 + -1.0) > v8)
    {
LABEL_67:
      v31 = "invalid transition probabilities from driving state";
      v32 = 129;
      return sub_1D0E32F8C(a1, v31, "t_ActivityState", v32, a5, a6, a7, a8);
    }

    v43 = a1 + 496;
    v44 = 0.0;
    for (jj = 496; jj != 576; jj += 8)
    {
      v46 = *(a1 + jj);
      if ((*&v46 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_77;
      }

      if (v46 < 0.0 || v46 > 1.0)
      {
        goto LABEL_77;
      }

      v44 = v44 + v46;
    }

    if (fabs(v44 + -1.0) > v8)
    {
LABEL_77:
      v31 = "invalid transition probabilities from swimming state";
      v32 = 134;
      return sub_1D0E32F8C(a1, v31, "t_ActivityState", v32, a5, a6, a7, a8);
    }

    v48 = a1 + 576;
    v49 = 0.0;
    for (kk = 576; kk != 656; kk += 8)
    {
      v51 = *(a1 + kk);
      if ((*&v51 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_87;
      }

      if (v51 < 0.0 || v51 > 1.0)
      {
        goto LABEL_87;
      }

      v49 = v49 + v51;
    }

    if (fabs(v49 + -1.0) > v8)
    {
LABEL_87:
      v31 = "invalid transition probabilities from wheelschair state";
      v32 = 139;
      return sub_1D0E32F8C(a1, v31, "t_ActivityState", v32, a5, a6, a7, a8);
    }

    v53 = a1 + 656;
    v54 = 0.0;
    for (mm = 656; mm != 736; mm += 8)
    {
      v56 = *(a1 + mm);
      if ((*&v56 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_97;
      }

      if (v56 < 0.0 || v56 > 1.0)
      {
        goto LABEL_97;
      }

      v54 = v54 + v56;
    }

    if (fabs(v54 + -1.0) > v8)
    {
LABEL_97:
      v31 = "invalid transition probabilities from highspeed state";
      v32 = 144;
      return sub_1D0E32F8C(a1, v31, "t_ActivityState", v32, a5, a6, a7, a8);
    }

    v58 = a1 + 736;
    v59 = 0.0;
    for (nn = 736; nn != 816; nn += 8)
    {
      v61 = *(a1 + nn);
      a5 = *&v61 & 0x7FFFFFFFFFFFFFFFLL;
      if ((*&v61 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_107;
      }

      if (v61 < 0.0 || v61 > 1.0)
      {
        goto LABEL_107;
      }

      v59 = v59 + v61;
    }

    if (fabs(v59 + -1.0) > v8)
    {
LABEL_107:
      v31 = "invalid transition probabilities from airborne state";
      v32 = 149;
      return sub_1D0E32F8C(a1, v31, "t_ActivityState", v32, a5, a6, a7, a8);
    }

    v63 = 0;
    *(a2 + 8) = xmmword_1D0E84630;
    v64 = *(a2 + 32);
    do
    {
      *(v64 + v63) = *(v11 + v63);
      v63 += 8;
    }

    while (v63 != 80);
    for (i1 = 0; i1 != 80; i1 += 8)
    {
      *(v64 + 80 + i1) = *(v16 + i1);
    }

    for (i2 = 0; i2 != 80; i2 += 8)
    {
      *(v64 + 160 + i2) = *(v21 + i2);
    }

    for (i3 = 0; i3 != 80; i3 += 8)
    {
      *(v64 + 240 + i3) = *(v26 + i3);
    }

    for (i4 = 0; i4 != 80; i4 += 8)
    {
      *(v64 + 320 + i4) = *(v33 + i4);
    }

    for (i5 = 0; i5 != 80; i5 += 8)
    {
      *(v64 + 400 + i5) = *(v38 + i5);
    }

    for (i6 = 0; i6 != 80; i6 += 8)
    {
      *(v64 + 480 + i6) = *(v43 + i6);
    }

    for (i7 = 0; i7 != 80; i7 += 8)
    {
      *(v64 + 560 + i7) = *(v48 + i7);
    }

    for (i8 = 0; i8 != 80; i8 += 8)
    {
      *(v64 + 640 + i8) = *(v53 + i8);
    }

    for (i9 = 0; i9 != 80; i9 += 8)
    {
      result = *(v58 + i9);
      *(v64 + 720 + i9) = result;
    }
  }

  else
  {
    v79 = 12;
    v78 = 4;
    v74 = *(a1 + 8) + *a1;
    cnprint::CNPrinter::Print(&v79, &v78, "time,%.3lf,t-function failure on line %d: %s() %s", a4, a5, a6, a7, a8, SLOBYTE(v74));
  }

  return result;
}

uint64_t sub_1D0B954B8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 248) == 1)
  {
    sub_1D0B894B0(a1 + 8, a1 + 128);
  }

  v74 = 0x100000001;
  *&v4 = 0x100000001;
  *(&v4 + 1) = 0x100000001;
  v73 = v4;
  v72[10] = &unk_1F4CEFE90;
  v75 = &v76;
  v76 = sub_1D0B95EBC;
  v70 = 0x10000000ALL;
  v68 = &unk_1F4CEFF18;
  v69 = v4;
  v71 = v72;
  v72[0] = a2;
  v5 = *(a1 + 16);
  v6 = *(a1 + 20);
  sub_1D0B95DC8(v66, &v68);
  if (v5 <= v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  if (v6)
  {
    _ZF = v5 == 0;
  }

  else
  {
    _ZF = 1;
  }

  if (_ZF)
  {
    v9 = 0;
  }

  else
  {
    v9 = v7;
  }

  v10 = *(a1 + 256);
  if (!*(a1 + 16) || !*(a1 + 20))
  {
    if ((v9 & 0x80000000) != 0)
    {
      __assert_rtn("Ones", "cnmatrix.h", 2317, "nr >= 0");
    }

    v85 = 0x10000000ALL;
    v83 = &unk_1F4CEAE48;
    v86 = v87;
    *&v84 = v9 | 0x100000000;
    v18 = 1.0 / v9;
    DWORD2(v84) = v9;
    HIDWORD(v84) = v9;
    if (v9 > 3)
    {
      memset_pattern16(v87, &unk_1D0E7F4B0, 16 * ((v9 - 1) >> 1));
      __asm { FMOV            V0.2D, #1.0 }

      *(&v85 + v9) = _Q0;
    }

    else if (v9)
    {
      memset_pattern16(v87, &unk_1D0E7F4B0, (8 * v9));
    }

    v90 = 0x10000000ALL;
    v19 = xmmword_1D0E87BE0;
    goto LABEL_27;
  }

  v90 = 0x10000000ALL;
  v64 = xmmword_1D0E87BE0;
  v89 = xmmword_1D0E87BE0;
  v88 = &unk_1F4CEAE48;
  v91 = v92;
  v11 = sub_1D0B94BA0(a1 + 8, 1, &v88);
  v12 = *v91;
  if (fabs(*v91 + -1.0) <= v10)
  {
    if ((v9 & 0x80000000) == 0)
    {
      sub_1D0B94CA4(&v88, a1 + 8);
      *&v89 = v9 | 0x100000000;
      DWORD2(v89) = v9;
      HIDWORD(v89) = v9;
      goto LABEL_28;
    }

LABEL_64:
    __assert_rtn("Reshape", "cnmatrix.h", 2936, "nr >= 0");
  }

  if (cnprint::CNPrinter::GetLogLevel(v11) <= 1)
  {
    LOWORD(v88) = 2;
    LOBYTE(v83) = 1;
    cnprint::CNPrinter::Print(&v88, &v83, "WARNING: HMM update passed a non-normalized probability vector.", v13, v14, v15, v16, v17, 10);
  }

  if ((v9 & 0x80000000) != 0)
  {
    goto LABEL_64;
  }

  v18 = 1.0 / v12;
  sub_1D0B94CA4(&v83, a1 + 8);
  *&v84 = v9 | 0x100000000;
  DWORD2(v84) = v9;
  HIDWORD(v84) = v9;
  v90 = 0x10000000ALL;
  v19 = v64;
LABEL_27:
  v89 = v19;
  v88 = &unk_1F4CEAE48;
  v91 = v92;
  v19.f64[0] = v18;
  sub_1D0B8930C(&v83, &v88, v19);
LABEL_28:
  sub_1D0B894B0(a1 + 8, &v88);
  sub_1D0B94CA4(&v88, a1 + 8);
  v24 = *v75;
  v85 = 0x10000000ALL;
  v83 = &unk_1F4CEAE48;
  v65 = xmmword_1D0E87BE0;
  v84 = xmmword_1D0E87BE0;
  v86 = v87;
  v25 = (v24)(*v67, &v83);
  if (v25)
  {
    LOWORD(v77) = 2;
    v82 = 4;
    cnprint::CNPrinter::Print(&v77, &v82, "ERROR: HMM emission function failed.", v26, v27, v28, v29, v30, 10);
    return 29;
  }

  if (v9)
  {
    v33 = 0.0;
    v34 = v86;
    v35 = v86;
    v36 = v9;
    do
    {
      v37 = *v35;
      if (*v35 < 0.0 || v37 > 1.0)
      {
        LOWORD(v77) = 2;
        v82 = 4;
        v50 = "ERROR: HMM emission probability matrix is invalid.";
        goto LABEL_50;
      }

      v33 = v33 + v37;
      ++v35;
      --v36;
    }

    while (v36);
    if (fabs(v33) > v10)
    {
      v39 = v91;
      do
      {
        v40 = *v34++;
        v31.n128_f64[0] = v40 * *v39;
        *v39++ = v31.n128_f64[0];
        --v9;
      }

      while (v9);
      goto LABEL_43;
    }
  }

  else if (v10 < 0.0)
  {
LABEL_43:
    v41 = DWORD1(v89);
    if (DWORD1(v89))
    {
      v42 = 0;
      v43 = v89;
      v44 = v91;
      v45 = 1;
      v46 = xmmword_1D0E87BE0;
      do
      {
        v47 = v44[(v43 * v42)];
        v48 = v45;
        v49 = v43 - 1;
        if (v43 >= 2)
        {
          do
          {
            v47 = v47 + v44[v48++];
            --v49;
          }

          while (v49);
        }

        v81[v42++] = v47;
        v45 += v43;
      }

      while (v42 != v41);
      v31.n128_f64[0] = v81[0];
    }

    else
    {
      v46 = xmmword_1D0E87BE0;
    }

    if (fabs(v31.n128_f64[0]) < 2.22044605e-16)
    {
      if (cnprint::CNPrinter::GetLogLevel(v25) <= 1)
      {
        LOWORD(v77) = 2;
        v82 = 1;
        cnprint::CNPrinter::Print(&v77, &v82, "HMM state is null vector after update; revert to input state", v51, v52, v53, v54, v55, 10);
      }

      v31 = sub_1D0B894B0(&v88, a1 + 8);
      v56 = DWORD1(v89);
      if (DWORD1(v89))
      {
        v57 = 0;
        v58 = v89;
        v59 = v91;
        v60 = 1;
        v46 = v65;
        do
        {
          v61 = v59[(v58 * v57)];
          v62 = v60;
          v63 = v58 - 1;
          if (v58 >= 2)
          {
            do
            {
              v61 = v61 + v59[v62++];
              --v63;
            }

            while (v63);
          }

          v81[v57++] = v61;
          v60 += v58;
        }

        while (v57 != v56);
        v31.n128_f64[0] = v81[0];
      }

      else
      {
        v46 = v65;
      }
    }

    v79 = 0x10000000ALL;
    v78 = v46;
    v77 = &unk_1F4CEAE48;
    v80 = v81;
    v31.n128_f64[0] = 1.0 / v31.n128_f64[0];
    sub_1D0B8930C(&v88, &v77, v31);
    sub_1D0B894B0(&v88, &v77);
    sub_1D0B894B0(a1 + 128, &v88);
    result = 0;
    *(a1 + 248) = 1;
    return result;
  }

  LOWORD(v77) = 2;
  v82 = 4;
  v50 = "ERROR: HMM emission probability matrix is null matrix";
LABEL_50:
  cnprint::CNPrinter::Print(&v77, &v82, v50, v26, v27, v28, v29, v30, 10);
  return 30;
}

BOOL raven::RavenActivityStateEstimator::Update(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*a1 & 1) == 0)
  {
    if (cnprint::CNPrinter::GetLogLevel(a1) <= 1)
    {
      LOWORD(v34[0]) = 12;
      LOBYTE(__b[0]) = 1;
      v30 = *(a2 + 8) + *a2;
      cnprint::CNPrinter::Print(v34, __b, "WARNING: ActivityStateEstimator,time,%.3lf,trying to update uninitialized estimator", v14, v15, v16, v17, v18, SLOBYTE(v30));
    }

    return 0;
  }

  v10 = *a3;
  v11 = xmmword_1D0EB3810;
  v12 = 0uLL;
  if (v10 > 4)
  {
    if (*a3 <= 6u)
    {
      if (v10 == 5)
      {
        v13 = xmmword_1D0EB3850;
        goto LABEL_24;
      }

      v20 = 0uLL;
      v13 = 0uLL;
      v21 = 0uLL;
      if (v10 != 6)
      {
        goto LABEL_31;
      }

      v21 = xmmword_1D0EB3840;
      goto LABEL_21;
    }

    if (v10 != 10)
    {
      if (v10 == 9)
      {
        v13 = vdupq_n_s64(0x3F50624DD2F1A9FCuLL);
        v20 = xmmword_1D0EB3820;
        v12 = xmmword_1D0EB3830;
        goto LABEL_30;
      }

      v20 = 0uLL;
      v13 = 0uLL;
      v21 = 0uLL;
      if (v10 != 7)
      {
        goto LABEL_31;
      }

      v21 = xmmword_1D0EB3810;
LABEL_21:
      v11 = 0uLL;
      goto LABEL_31;
    }

    LOWORD(v34[0]) = 12;
    LOBYTE(__b[0]) = 4;
    v31 = *(a2 + 8) + *a2;
    cnprint::CNPrinter::Print(v34, __b, "ActivityStateEstimator,time,%.3lf,invalid activity input type,%d", a4, a5, a6, a7, a8, SLOBYTE(v31));
    return 0;
  }

  if (*a3 <= 1u)
  {
    if (!*a3)
    {
      memset_pattern16(__b, &unk_1D0EB38F0, 0x50uLL);
      v12 = __b[0];
      v20 = __b[1];
      v13 = __b[2];
      v21 = __b[3];
      v11 = __b[4];
      goto LABEL_31;
    }

    v21 = vdupq_n_s64(0x3F50624DD2F1A9FCuLL);
    v13 = xmmword_1D0EB38B0;
    v20 = xmmword_1D0EB38C0;
    v12 = xmmword_1D0EB38D0;
    goto LABEL_26;
  }

  switch(v10)
  {
    case 2u:
      v21 = vdupq_n_s64(0x3F50624DD2F1A9FCuLL);
      v13 = xmmword_1D0EB3880;
      v20 = xmmword_1D0EB3890;
      v12 = xmmword_1D0EB38A0;
LABEL_26:
      v11 = v21;
      goto LABEL_31;
    case 3u:
      v13 = vdupq_n_s64(0x3F50624DD2F1A9FCuLL);
      v20 = xmmword_1D0EB3870;
LABEL_30:
      v21 = v13;
      v11 = v13;
      goto LABEL_31;
    case 4u:
      v13 = xmmword_1D0EB3860;
LABEL_24:
      v20 = vdupq_n_s64(0x3F50624DD2F1A9FCuLL);
      v21 = v20;
      v11 = v20;
      goto LABEL_31;
  }

  v20 = 0uLL;
  v13 = 0uLL;
  v21 = 0uLL;
LABEL_31:
  v34[0] = *a2;
  v34[1] = v12;
  v34[2] = v20;
  v34[3] = v13;
  v34[4] = v21;
  v34[5] = v11;
  v22 = sub_1D0B954B8(a1 + 16, v34);
  v19 = v22 == 0;
  if (v22)
  {
    v33 = 12;
    v32 = 4;
    v28 = *(a1 + 288) + *(a1 + 280);
    cnprint::CNPrinter::Print(&v33, &v32, "ActivityStateEstimator,time,%.3lf,failed RavenActivityInput update,code,%d", v23, v24, v25, v26, v27, SLOBYTE(v28));
  }

  return v19;
}

uint64_t sub_1D0B95DC8(uint64_t result, uint64_t a2)
{
  *(result + 24) = 0x100000001;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = &unk_1F4CDF3D0;
  v3 = *(a2 + 8);
  v2 = *(a2 + 12);
  *(result + 8) = v3;
  *(result + 12) = v2;
  v4 = v2 * v3;
  *(result + 16) = v2 * v3;
  *(result + 20) = v3;
  *(result + 32) = result + 40;
  if (v3 > 1)
  {
    v7 = "this->max_num_rows_ >= A.NumRows()";
    v8 = 567;
    goto LABEL_9;
  }

  if (v2 > 1)
  {
    v7 = "this->max_num_cols_ >= A.NumCols()";
    v8 = 568;
LABEL_9:
    __assert_rtn("CNMatrix", "cnmatrix.h", v8, v7);
  }

  if (v4 >= 1)
  {
    v5 = 0;
    v6 = 8 * v4;
    do
    {
      *(*(result + 32) + v5) = *(*(a2 + 32) + v5);
      v5 += 8;
    }

    while (v6 != v5);
  }

  return result;
}

uint64_t sub_1D0B95EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 16);
  if ((*&v8 <= -1 || ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (*&v8 - 1) >= 0xFFFFFFFFFFFFFLL && (*&v8 & 0x7FFFFFFFFFFFFFFFLL) != 0 || v8 > 1.0)
  {
    v61 = 12;
    v60 = 4;
    v55 = *(a1 + 8) + *a1;
    cnprint::CNPrinter::Print(&v61, &v60, "time,%.3lf,e-function failure on line %d: %s() %s", a4, a5, a6, a7, a8, SLOBYTE(v55));
    return 0xFFFFFFFFLL;
  }

  v13 = *(a1 + 24);
  if ((v13 <= -1 || ((v13 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (v13 - 1) >= 0xFFFFFFFFFFFFFLL && (v13 & 0x7FFFFFFFFFFFFFFFLL) != 0 || *(a1 + 24) > 1.0)
  {
    v63 = 12;
    v62 = 4;
    v56 = *(a1 + 8) + *a1;
    cnprint::CNPrinter::Print(&v63, &v62, "time,%.3lf,e-function failure on line %d: %s() %s", a4, a5, a6, a7, a8, SLOBYTE(v56));
    return 0xFFFFFFFFLL;
  }

  v18 = *(a1 + 32);
  v21 = v18 > -1 && ((v18 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || (v18 - 1) < 0xFFFFFFFFFFFFFLL || (v18 & 0x7FFFFFFFFFFFFFFFLL) == 0;
  if (!v21 || *(a1 + 32) > 1.0)
  {
    v65 = 12;
    v64 = 4;
    v57 = *(a1 + 8) + *a1;
    cnprint::CNPrinter::Print(&v65, &v64, "time,%.3lf,e-function failure on line %d: %s() %s", a4, a5, a6, a7, a8, SLOBYTE(v57));
    return 0xFFFFFFFFLL;
  }

  v22 = *(a1 + 40);
  v25 = v22 > -1 && ((v22 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || (v22 - 1) < 0xFFFFFFFFFFFFFLL || (v22 & 0x7FFFFFFFFFFFFFFFLL) == 0;
  if (!v25 || *(a1 + 40) > 1.0)
  {
    v67 = 12;
    v66 = 4;
    v58 = *(a1 + 8) + *a1;
    cnprint::CNPrinter::Print(&v67, &v66, "time,%.3lf,e-function failure on line %d: %s() %s", a4, a5, a6, a7, a8, SLOBYTE(v58));
    return 0xFFFFFFFFLL;
  }

  v26 = *(a1 + 48);
  v29 = v26 > -1 && ((v26 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || (v26 - 1) < 0xFFFFFFFFFFFFFLL || (v26 & 0x7FFFFFFFFFFFFFFFLL) == 0;
  if (!v29 || *(a1 + 48) > 1.0)
  {
    v69 = 12;
    v68 = 4;
    v59 = *(a1 + 8) + *a1;
    cnprint::CNPrinter::Print(&v69, &v68, "time,%.3lf,e-function failure on line %d: %s() %s", a4, a5, a6, a7, a8, SLOBYTE(v59));
    return 0xFFFFFFFFLL;
  }

  v30 = *(a1 + 56);
  v33 = v30 > -1 && ((v30 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || (v30 - 1) < 0xFFFFFFFFFFFFFLL || (v30 & 0x7FFFFFFFFFFFFFFFLL) == 0;
  if (!v33 || *(a1 + 56) > 1.0)
  {
    v53 = "invalid likelihood (driving state)";
    v54 = 115;
LABEL_138:
    sub_1D0C52038(a1, v53, "e_ActivityState", v54, a5, a6, a7, a8);
    return 0xFFFFFFFFLL;
  }

  v34 = *(a1 + 64);
  v37 = v34 > -1 && ((v34 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || (v34 - 1) < 0xFFFFFFFFFFFFFLL || (v34 & 0x7FFFFFFFFFFFFFFFLL) == 0;
  if (!v37 || *(a1 + 64) > 1.0)
  {
    v53 = "invalid likelihood (swimming state)";
    v54 = 121;
    goto LABEL_138;
  }

  v38 = *(a1 + 72);
  v41 = v38 > -1 && ((v38 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || (v38 - 1) < 0xFFFFFFFFFFFFFLL || (v38 & 0x7FFFFFFFFFFFFFFFLL) == 0;
  if (!v41 || *(a1 + 72) > 1.0)
  {
    v53 = "invalid likelihood (wheelchair state)";
    v54 = 127;
    goto LABEL_138;
  }

  v42 = *(a1 + 80);
  v45 = v42 > -1 && ((v42 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || (v42 - 1) < 0xFFFFFFFFFFFFFLL || (v42 & 0x7FFFFFFFFFFFFFFFLL) == 0;
  if (!v45 || *(a1 + 80) > 1.0)
  {
    v53 = "invalid likelihood (highspeed state)";
    v54 = 133;
    goto LABEL_138;
  }

  v46 = *(a1 + 88);
  v49 = v46 > -1 && ((v46 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || (v46 - 1) < 0xFFFFFFFFFFFFFLL || (v46 & 0x7FFFFFFFFFFFFFFFLL) == 0;
  if (!v49 || *(a1 + 88) > 1.0)
  {
    v53 = "invalid likelihood (airborne state)";
    v54 = 139;
    goto LABEL_138;
  }

  v50 = 0;
  *(a2 + 8) = xmmword_1D0E87BE0;
  v51 = *(a2 + 32);
  *v51 = v8;
  *(v51 + 8) = *(a1 + 24);
  *(v51 + 16) = *(a1 + 32);
  *(v51 + 24) = *(a1 + 40);
  *(v51 + 32) = *(a1 + 48);
  *(v51 + 40) = *(a1 + 56);
  *(v51 + 48) = *(a1 + 64);
  *(v51 + 56) = *(a1 + 72);
  *(v51 + 64) = *(a1 + 80);
  *(v51 + 72) = *(a1 + 88);
  return v50;
}

uint64_t raven::RavenActivityStateEstimator::PopulateActivityStateEvent(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v3 = 0;
  v36 = 0uLL;
  v38 = 0uLL;
  v35 = 0uLL;
  v34 = &unk_1F4CEF688;
  memset(v37, 0, sizeof(v37));
  *&v39 = 0;
  *(&v39 + 1) = 0x7FF8000000000000;
  *&v40 = 0;
  *(&v40 + 1) = 0x3FF0000000000000;
  v45 = 0;
  v44 = 0u;
  v43 = 0u;
  v42 = 0u;
  v41 = 0u;
  *(a3 + 56) = 0uLL;
  *(a3 + 40) = 0uLL;
  *(a3 + 24) = 0uLL;
  *(a3 + 8) = 0uLL;
  v4 = v38;
  v5 = v39;
  v6 = v40;
  *(a3 + 120) = v41;
  *(a3 + 104) = v6;
  *(a3 + 88) = v5;
  *(a3 + 72) = v4;
  v7 = v42;
  v8 = v43;
  v9 = v44;
  *(a3 + 184) = v45;
  *(a3 + 168) = v9;
  *(a3 + 152) = v8;
  *(a3 + 136) = v7;
  if (*a1 != 1)
  {
    return v3;
  }

  v12 = *a2;
  *(a3 + 24) = a2[1];
  *(a3 + 8) = v12;
  v13 = a2[2];
  v14 = a2[3];
  v15 = a2[4];
  *(a3 + 88) = a2[5];
  *(a3 + 72) = v15;
  *(a3 + 56) = v14;
  *(a3 + 40) = v13;
  v33 = 0;
  MostProbableState = raven::RavenActivityStateEstimator::GetMostProbableState(a1, &v33);
  v3 = MostProbableState;
  if (MostProbableState)
  {
    if (v33 <= 4)
    {
      if (v33 <= 1)
      {
        if (!v33)
        {
          *(a3 + 104) = 0;
          goto LABEL_15;
        }

        if (v33 != 1)
        {
LABEL_15:
          v27 = 128;
          if (!*(a1 + 264))
          {
            v27 = 8;
          }

          *&v36 = 0x10000000ALL;
          v34 = &unk_1F4CEAE48;
          v35 = xmmword_1D0E87BE0;
          *(&v36 + 1) = v37;
          sub_1D0B894B0(&v34, a1 + v27 + 16);
          v28 = *(&v36 + 1);
          *(a3 + 112) = **(&v36 + 1);
          *(a3 + 120) = v28[1];
          *(a3 + 128) = v28[2];
          *(a3 + 136) = v28[3];
          *(a3 + 144) = v28[4];
          *(a3 + 152) = v28[5];
          *(a3 + 160) = v28[6];
          *(a3 + 168) = v28[7];
          *(a3 + 176) = v28[8];
          *(a3 + 184) = v28[9];
          return v3;
        }
      }
    }

    else if (v33 > 9)
    {
      if (v33 == 10)
      {
        LOWORD(v34) = 12;
        v32 = 4;
        v31 = *(a1 + 288) + *(a1 + 280);
        cnprint::CNPrinter::Print(&v34, &v32, "ActivityStateEstimator,time,%.3lf,invalid state", v17, v18, v19, v20, v21, SLOBYTE(v31));
      }

      goto LABEL_15;
    }

    *(a3 + 104) = v33;
    goto LABEL_15;
  }

  if (cnprint::CNPrinter::GetLogLevel(MostProbableState) <= 1)
  {
    LOWORD(v34) = 12;
    v32 = 1;
    v30 = *(a1 + 288) + *(a1 + 280);
    cnprint::CNPrinter::Print(&v34, &v32, "ActivityStateEstimator,time,%.3lf,could not find most probable state", v22, v23, v24, v25, v26, SLOBYTE(v30));
  }

  return v3;
}

uint64_t raven::RavenActivityStateEstimator::GetMostProbableState(uint64_t a1, unsigned int *a2)
{
  v3 = 128;
  if (!*(a1 + 264))
  {
    v3 = 8;
  }

  v12 = 0x10000000ALL;
  v10 = &unk_1F4CEAE48;
  v11 = xmmword_1D0E87BE0;
  v13 = &v14;
  sub_1D0B894B0(&v10, a1 + v3 + 16);
  if (!DWORD2(v11))
  {
    goto LABEL_12;
  }

  v4 = 0;
  v5 = -1;
  v6 = -INFINITY;
  do
  {
    if (*&v13[v4] > v6)
    {
      v6 = *&v13[v4];
      v5 = v4;
    }

    ++v4;
  }

  while (DWORD2(v11) != v4);
  v7 = v5 < 0xA && (*&v6 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL;
  if (v7 && (v6 >= 0.0 ? (v9 = v6 > 1.0) : (v9 = 1), !v9))
  {
    result = 1;
  }

  else
  {
LABEL_12:
    v5 = 0;
    result = 0;
  }

  *a2 = v5;
  return result;
}

void sub_1D0B9686C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
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

void sub_1D0B968FC(uint64_t a1)
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
  sub_1D0B96AEC();
}

void sub_1D0B96A38(_Unwind_Exception *exception_object)
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

void sub_1D0B96A90(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F4CDF5E0;
  sub_1D0B968FC((a1 + 3));
}

void sub_1D0B96C04(uint64_t a1, raven::RavenDeviceAttitudeActiveObject **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0B94708(v9, a3, a3, a4, a5, a6, a7, a8);
  raven::RavenDeviceAttitudeActiveObject::HandleEvent(v8, v9);
}

void raven::RavenDeviceAttitudeActiveObject::HandleEvent(raven::RavenDeviceAttitudeActiveObject *this, const raven::TimeMarkEvent *a2)
{
  if (*(this + 224))
  {
    v4 = (*(*a2 + 16))(a2);
    v6 = *&v5;
    __p[0] = v4;
    __p[1] = v5;
    v7 = *(this + 29);
    v8.i64[0] = v7[144];
    v79 = 0;
    v80 = 0;
    *v10.i64 = CNTimeSpan::SetTimeSpan(&v79, 0, v8, v9);
    v12 = CNTimeSpan::operator+(this + 930, &v79, v10, v11);
    v16 = v6;
    if (v4)
    {
      v17 = 1;
    }

    else
    {
      v17 = (*&v6 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL;
    }

    v18 = !v17;
    if (v18 == 1 || !v12 && (*&v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (v19 = v4 <= v12, v4 == v12))
    {
      v19 = v16 <= v13;
    }

    if (!v19)
    {
      *(this + 930) = v4;
      *(this + 931) = 0;
      raven::RavenDeviceAttitudeActiveObject::DetectStationaryStatus(this);
      v7 = *(this + 29);
    }

    v14.i64[0] = v7[143];
    v79 = 0;
    v80 = 0;
    *v20.i64 = CNTimeSpan::SetTimeSpan(&v79, 0, v14, v15);
    v22 = CNTimeSpan::operator+(this + 918, &v79, v20, v21);
    if (v18 || !v22 && (*&v23 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (v26 = v4 <= v22, v4 == v22))
    {
      v26 = v16 <= v23;
    }

    if (!v26)
    {
      *(this + 459) = *__p;
      raven::RavenDeviceAttitudeActiveObject::DownSamplingAccelGyroSamples(this);
      v7 = *(this + 29);
    }

    v24.i64[0] = v7[136];
    v79 = 0;
    v80 = 0;
    *v27.i64 = CNTimeSpan::SetTimeSpan(&v79, 0, v24, v25);
    v29 = CNTimeSpan::operator+(this + 920, &v79, v27, v28);
    if (v18 || !v29 && (*&v30 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (v33 = v4 <= v29, v4 == v29))
    {
      v33 = v16 <= v30;
    }

    if (!v33)
    {
      *(this + 920) = v4;
      *(this + 921) = 0;
      raven::RavenDeviceAttitudeActiveObject::RaiseExternalAttitudeEvent(this, a2);
      v7 = *(this + 29);
    }

    v31.i64[0] = v7[136];
    v79 = 0;
    v80 = 0;
    *v34.i64 = CNTimeSpan::SetTimeSpan(&v79, 0, v31, v32);
    v36 = CNTimeSpan::operator+(this + 924, &v79, v34, v35);
    *v39.i64 = v37;
    if (v18 || !v36 && (*&v37 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (v40 = v4 <= v36, v4 == v36))
    {
      v40 = v16 <= v37;
    }

    if (!v40)
    {
      *(this + 924) = v4;
      *(this + 925) = 0;
      raven::RavenDeviceAttitudeActiveObject::RaiseNonHolonomicEvent(this, a2);
    }

    v79 = 2;
    v80 = 0;
    v41 = CNTimeSpan::operator+(this + 928, &v79, v39, v38);
    *v44.i64 = v42;
    if (v18 || !v41 && (*&v42 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (v45 = v4 <= v41, v4 == v41))
    {
      v45 = v16 <= v42;
    }

    if (!v45)
    {
      *(this + 928) = v4;
      *(this + 929) = 0;
      raven::RavenDeviceAttitudeActiveObject::RemoveStaleSolutions(this, __p, v44, v43);
    }

    v46 = *(this + 29);
    v44.i64[0] = *(v46 + 1040);
    v79 = 0;
    v80 = 0;
    *v47.i64 = CNTimeSpan::SetTimeSpan(&v79, 0, v44, v43);
    v49 = CNTimeSpan::operator+(this + 922, &v79, v47, v48);
    if (v18 || !v49 && (*&v50 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (v55 = v4 <= v49, v4 == v49))
    {
      v55 = v16 <= v50;
    }

    if (!v55)
    {
      *(this + 922) = v4;
      *(this + 923) = 0;
      raven::RavenDeviceAttitudeActiveObject::UpdateDeviceAttitudeByLinearAcceleration(this, a2, v51, v52);
      v46 = *(this + 29);
    }

    v53.i64[0] = *(v46 + 1088);
    v79 = 0;
    v80 = 0;
    *v56.i64 = CNTimeSpan::SetTimeSpan(&v79, 0, v53, v54);
    v58 = CNTimeSpan::operator+(this + 932, &v79, v56, v57);
    if (v18 || !v58 && (*&v59 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (v62 = v4 <= v58, v4 == v58))
    {
      v62 = v16 <= v59;
    }

    if (!v62)
    {
      *(this + 932) = v4;
      *(this + 933) = 0;
      raven::RavenDeviceAttitudeActiveObject::UpdateDeviceAttitudeByWahbaSolution(this, a2);
      v46 = *(this + 29);
    }

    v60.i64[0] = *(v46 + 1136);
    v79 = 0;
    v80 = 0;
    *v63.i64 = CNTimeSpan::SetTimeSpan(&v79, 0, v60, v61);
    v65 = CNTimeSpan::operator+(this + 926, &v79, v63, v64);
    v70.i64[0] = v66;
    if (v18 || !v65 && (v66 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (v71 = v4 <= v65, v4 == v65))
    {
      v71 = v16 <= *&v66;
    }

    if (!v71)
    {
      *(this + 463) = *__p;
      raven::RavenDeviceAttitudeActiveObject::UpdateDeviceVehicleAttitudeWithRotation(this, v66, v67, v68);
      v46 = *(this + 29);
    }

    if (*(v46 + 3818) == 1 && *(this + 6920) == 1)
    {
      v72 = *(this + 6832);
      if (v72 <= 6 && ((1 << v72) & 0x4C) != 0 && *(this + 7240) == 1)
      {
        raven::RavenDeviceAttitudeActiveObject::ComputePCABasedHorizontalDirectionOfTravelInIMUFrame(this, a2, v70, v69);
      }
    }
  }

  else
  {
    LOWORD(v79) = 12;
    v83 = 3;
    (*(*this + 16))(__p, this, a2);
    if (v82 >= 0)
    {
      v78 = __p;
    }

    else
    {
      LOBYTE(v78) = __p[0];
    }

    cnprint::CNPrinter::Print(&v79, &v83, "Warning: %s is not configured yet.", v73, v74, v75, v76, v77, v78);
    if (v82 < 0)
    {
      operator delete(__p[0]);
    }
  }
}