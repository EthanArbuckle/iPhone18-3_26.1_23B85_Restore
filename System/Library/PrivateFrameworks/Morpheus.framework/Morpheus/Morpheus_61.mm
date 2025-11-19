void pocketfft::detail::rfftp<float>::radf5<float>(uint64_t a1, unint64_t a2, uint64_t a3, float *a4, float *a5, uint64_t a6)
{
  if (a3)
  {
    v6 = a3 * a2;
    v7 = 4 * a2;
    v8 = 20 * a2;
    v9 = a5;
    v10 = a4;
    v11 = a3;
    do
    {
      v12 = v10[4 * a3 * a2];
      v13 = v10[v6];
      v14 = v12 + v13;
      v15 = v10[3 * a3 * a2];
      v16 = v10[2 * a3 * a2];
      v17 = v12 - v13;
      v18 = v15 + v16;
      v19 = v15 - v16;
      v20 = *v10;
      *v9 = v18 + (v14 + *v10);
      v21 = &v9[2 * a2 - 1];
      *v21 = (v20 + (v14 * 0.30902)) + (v18 * -0.80902);
      v21[1] = (v19 * 0.58779) + (v17 * 0.95106);
      v22 = &v9[4 * a2 - 1];
      *v22 = (v20 + (v14 * -0.80902)) + (v18 * 0.30902);
      v22[1] = (v19 * -0.95106) + (v17 * 0.58779);
      v10 = (v10 + v7);
      v9 = (v9 + v8);
      --v11;
    }

    while (v11);
    if (a2 != 1)
    {
      v23 = 0;
      v24 = &a5[2 * a2];
      v25 = &a5[4 * a2];
      v26 = &a4[4 * v6];
      v27 = &a4[3 * v6];
      v28 = &a4[2 * v6];
      v29 = v7 - 4;
      v30 = &a4[v6];
      do
      {
        if (a2 >= 3)
        {
          v31 = 0;
          v32 = 0x3FFFFFFFFFFFFFFDLL;
          for (i = 2; i < a2; i += 2)
          {
            v34 = *(a6 + v31 * 4);
            v35 = *(a6 + v31 * 4 + 4);
            v36 = v30[v31 + 1];
            v37 = v30[v31 + 2];
            v38 = v35 * v37;
            v39 = -(v35 * v36);
            v40 = (a6 + v31 * 4 + v29);
            v41 = v38 + (v34 * v36);
            v42 = *(a6 + v31 * 4 + 4 * a2);
            v43 = v28[v31 + 1];
            v44 = v28[v31 + 2];
            v45 = v39 + (v34 * v37);
            v46 = v42 * v44;
            v47 = -(v42 * v43);
            v48 = v40[a2];
            v49 = v46 + (*v40 * v43);
            v50 = *(v40 + v29);
            v51 = v27[v31 + 1];
            v52 = v27[v31 + 2];
            v53 = v48 * v52;
            v54 = v47 + (*v40 * v44);
            v55 = -(v48 * v51);
            v56 = *(v40 + v29 + v29);
            v57 = *(&v40[a2] + v29);
            v58 = v53 + (v50 * v51);
            v59 = v55 + (v50 * v52);
            v60 = v26[v31 + 1];
            v61 = v26[v31 + 2];
            v62 = (v57 * v61) + (v56 * v60);
            v63 = (v56 * v61) - (v57 * v60);
            v64 = v41 + v62;
            v65 = v62 - v41;
            v66 = v49 + v58;
            v67 = v45 + v63;
            v68 = v58 - v49;
            v69 = v54 + v59;
            v70 = v54 - v59;
            v71 = v45 - v63;
            v72 = a4[v31 + 1];
            v73 = a4[v31 + 2];
            v74 = v66 + (v72 + v64);
            v75 = &a5[v31];
            v76 = v69 + (v67 + v73);
            v77 = (v72 + (v64 * 0.30902)) + (v66 * -0.80902);
            v78 = v72 + (v64 * -0.80902);
            v79 = (v73 + (v67 * 0.30902)) + (v69 * -0.80902);
            v80 = v78 + (v66 * 0.30902);
            v81 = v73 + (v67 * -0.80902);
            v82 = (v70 * 0.58779) + (v71 * 0.95106);
            v83 = (v68 * 0.58779) + (v65 * 0.95106);
            v84 = v81 + (v69 * 0.30902);
            v85 = (v70 * -0.95106) + (v71 * 0.58779);
            v86 = (v68 * -0.95106) + (v65 * 0.58779);
            v75[1] = v74;
            v75[2] = v76;
            v87 = &v24[v31];
            v88 = &v24[v32];
            v87[1] = v82 + v77;
            *v88 = v77 - v82;
            v87[2] = v83 + v79;
            v89 = &v25[v31];
            v90 = &v25[v32];
            v88[1] = v83 - v79;
            v89[1] = v85 + v80;
            *v90 = v80 - v85;
            v89[2] = v86 + v84;
            v90[1] = v86 - v84;
            v31 += 2;
            v32 -= 2;
          }
        }

        ++v23;
        v24 = (v24 + v8);
        v25 = (v25 + v8);
        v26 = (v26 + v7);
        v27 = (v27 + v7);
        v28 = (v28 + v7);
        v30 = (v30 + v7);
        a4 = (a4 + v7);
        a5 = (a5 + v8);
      }

      while (v23 != a3);
    }
  }
}

void pocketfft::detail::rfftp<float>::radfg<float>(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, float *a5, char *a6, uint64_t a7, uint64_t a8)
{
  v8 = a6;
  v9 = a4;
  v11 = a3 + 1;
  v12 = (a3 + 1) >> 1;
  v13 = a4 * a2;
  v14 = 4 * a2;
  v15 = a2 - 2;
  if (a2 >= 2)
  {
    if (v11 <= 3)
    {
      v115 = 0;
      v158 = a3 - 1;
LABEL_68:
      v44 = a5;
      if (!v13)
      {
        goto LABEL_70;
      }

      goto LABEL_69;
    }

    v16 = &a5[v13 + 2];
    v17 = (a7 + 4);
    v18 = &a5[v13 * (a3 - 1) + 2];
    v19 = a7 + 4 + 4 * (a2 - 1) * (a3 - 2);
    v20 = 4 - 4 * a2;
    v21 = 1;
    do
    {
      if (v9)
      {
        v22 = 0;
        v23 = v18;
        v24 = v16;
        do
        {
          if (v15)
          {
            v25 = v19;
            v26 = v23;
            v27 = v17;
            v28 = v24;
            v29 = 1;
            do
            {
              v30 = *(v28 - 1);
              v31 = *(v26 - 1);
              v32 = *(v27 - 1);
              v33 = (*v28 * *v27) + (v32 * v30);
              v34 = (v32 * *v28) - (*v27 * v30);
              v35 = *(v25 - 1);
              v36 = (*v26 * *v25) + (v35 * v31);
              v37 = (v35 * *v26) - (*v25 * v31);
              *(v28 - 1) = v33 + v36;
              *v26 = v36 - v33;
              *v28 = v34 + v37;
              v28 += 2;
              v29 += 2;
              *(v26 - 1) = v34 - v37;
              v27 += 2;
              v26 += 2;
              v25 += 2;
            }

            while (v29 <= v15);
          }

          ++v22;
          v24 = (v24 + v14);
          v23 = (v23 + v14);
        }

        while (v22 != v9);
      }

      ++v21;
      v16 += 4 * v13;
      v17 = (v17 + v14 - 4);
      v18 -= 4 * v13;
      v19 += v20;
    }

    while (v21 != v12);
  }

  v38 = a3 - 1;
  v158 = a3 - 1;
  if (v11 < 4)
  {
    v115 = 0;
    goto LABEL_68;
  }

  v39 = v13 * v38;
  v40 = 4 * v13 * v38;
  v41 = 4 * v13;
  v42 = 1;
  v43 = 4 * v13;
  v44 = a5;
  do
  {
    v45 = a5;
    for (i = v9; i; --i)
    {
      v47 = *(v45 + v40);
      *(v45 + v40) = v47 - *(v45 + v43);
      *(v45 + v43) = v47 + *(v45 + v43);
      v45 = (v45 + v14);
    }

    ++v42;
    v40 -= v41;
    v43 += v41;
  }

  while (v42 != v12);
  v157 = v9;
  v48 = &a5[v13];
  v49 = 8 * v13;
  v50 = &a5[2 * v13];
  v51 = &a5[v39];
  v165 = v12 - 3;
  v52 = &v8[4 * v13];
  v53 = &v8[4 * v39];
  v54 = 16 * v13;
  v55 = 1;
  v161 = v12;
  v163 = 4 * v13;
  v160 = v12 - 1;
  do
  {
    v56 = 2 * v55;
    if (v13)
    {
      v57 = 0;
      v58 = (a8 + 8 * v55);
      v59 = (a8 + 16 * v55);
      v60 = *v58;
      v61 = v58[1];
      v62 = *v59;
      v63 = v59[1];
      do
      {
        *&v52[4 * v57] = (v44[v57] + (v60 * v48[v57])) + (v62 * v50[v57]);
        *&v53[4 * v57] = (v63 * a5[v13 * (a3 - 2) + v57]) + (v61 * v51[v57]);
        ++v57;
      }

      while (v13 != v57);
    }

    if (v165 < 4)
    {
      v73 = a3 - 3;
      v72 = 3;
    }

    else
    {
      v65 = &a5[v13 * (a3 - 6)];
      v64 = &a5[v13 * (a3 - 5)];
      v66 = &a5[v13 * (a3 - 4)];
      v67 = &a5[v13 * (a3 - 3)];
      v69 = &a5[6 * v13];
      v68 = &a5[5 * v13];
      v70 = &a5[4 * v13];
      v71 = &a5[3 * v13];
      v72 = 3;
      v73 = a3 - 3;
      do
      {
        if (v56 + v55 >= a3)
        {
          v74 = a3;
        }

        else
        {
          v74 = 0;
        }

        v75 = v56 + v55 - v74;
        if (v75 + v55 >= a3)
        {
          v76 = a3;
        }

        else
        {
          v76 = 0;
        }

        v77 = v75 + v55 - v76;
        if (v77 + v55 >= a3)
        {
          v78 = a3;
        }

        else
        {
          v78 = 0;
        }

        v79 = v77 + v55 - v78;
        if (v79 + v55 >= a3)
        {
          v80 = a3;
        }

        else
        {
          v80 = 0;
        }

        v56 = v79 + v55 - v80;
        if (v13)
        {
          v81 = 0;
          v82 = (a8 + 8 * v75);
          v83 = *v82;
          v84 = v82[1];
          v85 = (a8 + 8 * v77);
          v86 = *v85;
          v87 = v85[1];
          v88 = (a8 + 8 * v79);
          v89 = *v88;
          v90 = v88[1];
          v91 = (a8 + 8 * v56);
          v92 = *v91;
          v93 = v91[1];
          do
          {
            *&v52[4 * v81] = *&v52[4 * v81] + ((((v86 * v70[v81]) + (v83 * v71[v81])) + (v89 * v68[v81])) + (v92 * v69[v81]));
            *&v53[4 * v81] = *&v53[4 * v81] + ((((v87 * v66[v81]) + (v84 * v67[v81])) + (v90 * v64[v81])) + (v93 * v65[v81]));
            ++v81;
          }

          while (v13 != v81);
        }

        v72 += 4;
        v73 -= 4;
        v71 = (v71 + v54);
        v70 = (v70 + v54);
        v68 = (v68 + v54);
        v69 = (v69 + v54);
        v67 -= 4 * v13;
        v66 -= 4 * v13;
        v64 -= 4 * v13;
        v65 -= 4 * v13;
      }

      while (v72 < v165);
    }

    if (v72 >= v160)
    {
      v48 = &a5[v13];
      v12 = v161;
      v44 = a5;
    }

    else
    {
      v44 = a5;
      v94 = a5 + v163 * v72;
      v95 = &a5[v163 / 4] + v163 * v72;
      v96 = a5 + v163 * v73;
      v97 = a5 + v163 * (v73 - 1);
      v48 = &a5[v13];
      v12 = v161;
      do
      {
        if (v56 + v55 >= a3)
        {
          v98 = a3;
        }

        else
        {
          v98 = 0;
        }

        v99 = v56 + v55 - v98;
        if (v99 + v55 >= a3)
        {
          v100 = a3;
        }

        else
        {
          v100 = 0;
        }

        v56 = v99 + v55 - v100;
        if (v13)
        {
          v101 = 0;
          v102 = (a8 + 8 * v99);
          v103 = *v102;
          v104 = v102[1];
          v105 = (a8 + 8 * v56);
          v106 = *v105;
          v107 = v105[1];
          do
          {
            *&v52[4 * v101] = *&v52[4 * v101] + ((v106 * *&v95[4 * v101]) + (v103 * *&v94[4 * v101]));
            *&v53[4 * v101] = *&v53[4 * v101] + ((v107 * *&v97[4 * v101]) + (v104 * *&v96[4 * v101]));
            ++v101;
          }

          while (v13 != v101);
        }

        v72 += 2;
        v73 -= 2;
        v94 += v49;
        v95 += v49;
        v96 -= 8 * v13;
        v97 -= 8 * v13;
      }

      while (v72 < v160);
    }

    v50 = &a5[2 * v13];
    if (v72 < v12)
    {
      v108 = v44 + v163 * v72;
      v109 = v44 + v163 * v73;
      do
      {
        if (v56 + v55 >= a3)
        {
          v110 = a3;
        }

        else
        {
          v110 = 0;
        }

        v56 = v56 + v55 - v110;
        if (v13)
        {
          v111 = 0;
          v112 = (a8 + 8 * v56);
          v113 = *v112;
          v114 = v112[1];
          do
          {
            *&v52[4 * v111] = *&v52[4 * v111] + (v113 * *&v108[4 * v111]);
            *&v53[4 * v111] = *&v53[4 * v111] + (v114 * *&v109[4 * v111]);
            ++v111;
          }

          while (v13 != v111);
        }

        ++v72;
        v108 += v163;
        v109 -= 4 * v13;
      }

      while (v72 != v12);
    }

    ++v55;
    v52 += v163;
    v53 -= 4 * v13;
  }

  while (v55 != v12);
  v115 = 1;
  v9 = v157;
  v8 = a6;
  if (v13)
  {
LABEL_69:
    memcpy(v8, v44, 4 * v13);
  }

LABEL_70:
  if (v115)
  {
    v116 = 1;
    v117 = &v44[v13];
    do
    {
      v118 = v8;
      v119 = v117;
      for (j = v13; j; --j)
      {
        v121 = *v119++;
        *v118 = v121 + *v118;
        ++v118;
      }

      ++v116;
      v117 += v13;
    }

    while (v116 != v12);
  }

  v166 = v115;
  v122 = v9;
  if (v9)
  {
    v123 = a5;
    v124 = a6;
    do
    {
      if (a2)
      {
        memcpy(v123, v124, v14);
      }

      v124 += v14;
      v123 += a3 * a2;
      --v9;
    }

    while (v9);
  }

  if (v166)
  {
    v125 = 4 * v13;
    v126 = 8 * a2;
    v127 = &a5[2 * a2];
    v128 = 4 * a3 * a2;
    v129 = 4 * v13 * v158;
    v130 = 1;
    v131 = v127;
    v132 = 4 * v13;
    do
    {
      v133 = v131;
      v134 = a6;
      for (k = v122; k; --k)
      {
        v136 = *&v134[v129];
        *(v133 - 1) = *&v134[v132];
        *v133 = v136;
        v134 += v14;
        v133 = (v133 + v128);
      }

      ++v130;
      v132 += v125;
      v131 = (v131 + v126);
      v129 -= v125;
    }

    while (v130 != v12);
    v137 = v166 ^ 1;
    if (a2 == 1)
    {
      v137 = 1;
    }

    if ((v137 & 1) == 0)
    {
      v138 = &a6[4 * v13 + 8];
      v139 = v127 - 3;
      v140 = v127 + 2;
      v141 = &a6[4 * v13 * v158 + 8];
      v142 = 1;
      do
      {
        if (v122)
        {
          v143 = 0;
          v144 = v141;
          v145 = v140;
          v146 = v139;
          v147 = v138;
          do
          {
            if (v15)
            {
              v148 = v144;
              v149 = v145;
              v150 = v146;
              v151 = v147;
              v152 = 1;
              do
              {
                v153 = *(v151 - 1);
                v154 = *v151;
                v155 = *(v148 - 1);
                v156 = *v148;
                *(v149 - 1) = v153 + v155;
                *v150 = v153 - v155;
                *v149 = v154 + v156;
                v149 += 2;
                v152 += 2;
                v151 += 2;
                v150[1] = v156 - v154;
                v150 -= 2;
                v148 += 2;
              }

              while (v152 <= v15);
            }

            ++v143;
            v147 = (v147 + v14);
            v146 = (v146 + v128);
            v145 = (v145 + v128);
            v144 = (v144 + v14);
          }

          while (v143 != v122);
        }

        ++v142;
        v138 += v125;
        v139 = (v139 + v126);
        v140 = (v140 + v126);
        v141 -= 4 * v13;
      }

      while (v142 != v12);
    }
  }
}

void pocketfft::detail::rfftp<float>::radb4<float>(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3)
  {
    v6 = 0;
    v7 = (a4 + 8 * a2);
    v8 = 16 * a2;
    v9 = 4 * a2;
    v10 = a3 * a2;
    v11 = v7;
    v12 = a3;
    do
    {
      v13 = *(a4 + 4 * v6);
      v14 = *(a4 + 16 * a2 - 4 + 4 * v6);
      v15 = v13 + v14;
      v16 = v13 - v14;
      v17 = *(v11 - 1) + *(v11 - 1);
      v18 = *v11 + *v11;
      *(a5 + v6) = v15 + v17;
      *(a5 + 8 * a3 * a2 + v6) = v15 - v17;
      *(a5 + 12 * a3 * a2 + v6) = v16 + v18;
      *(a5 + 4 * a3 * a2 + v6) = v16 - v18;
      v11 = (v11 + v8);
      v6 += v9;
      --v12;
    }

    while (v12);
    if ((a2 & 1) == 0)
    {
      v19 = a5 - 4;
      v20 = (a4 + 12 * a2);
      v21 = (a4 + 4 * a2);
      v22 = a3;
      do
      {
        v24 = *(v21 - 1);
        v23 = *v21;
        v26 = *(v20 - 1);
        v25 = *v20;
        v27 = v24 + v26;
        v28 = v24 - v26;
        v29 = *v20 + *v21;
        *(v19 + 4 * a2) = v27 + v27;
        *(v19 + a2 * (4 * a3 + 4)) = (v28 - v29) * 1.4142;
        *(v19 + a2 * ((8 * a3) | 4)) = (v25 - v23) + (v25 - v23);
        *(v19 + a2 * (12 * a3 + 4)) = (v29 + v28) * -1.4142;
        v20 = (v20 + v8);
        v21 = (v21 + v8);
        v19 += v9;
        --v22;
      }

      while (v22);
    }

    if (a2 >= 3)
    {
      v30 = 0;
      v31 = a6 + 8 * a2 - 4;
      v32 = a5 + 4;
      v33 = a6 + 4 * a2;
      v34 = a5 + 4 + 12 * v10;
      v35 = a5 + 4 + 8 * v10;
      v36 = a5 + 4 + 4 * v10;
      do
      {
        v37 = 0;
        v38 = v8 - 12;
        v39 = 8 * a2 - 12;
        v40 = 2;
        do
        {
          v41 = *(a4 + v37 + 4);
          v42 = *(a4 + v37 + 8);
          v43 = *(a4 + v38);
          v44 = *(a4 + v38 + 4);
          v45 = v41 + v43;
          v46 = v41 - v43;
          v47 = v42 + v44;
          v48 = v42 - v44;
          v50 = v7[v37 / 4 + 1];
          v49 = v7[v37 / 4 + 2];
          v52 = *(a4 + v39);
          v51 = *(a4 + v39 + 4);
          v53 = v49 + v51;
          v54 = v49 - v51;
          v55 = v50 + v52;
          v56 = v50 - v52;
          v57 = (v32 + v37);
          v58 = v45 + v55;
          v59 = v45 - v55;
          *v57 = v58;
          v57[1] = v48 + v54;
          v60 = v48 - v54;
          v61 = v46 + v53;
          v62 = v46 - v53;
          v63 = v47 + v56;
          v64 = v47 - v56;
          v65 = (v36 + v37);
          v66 = *(a6 + v37);
          v67 = *(a6 + v37 + 4);
          *v65 = (v66 * v62) - (v67 * v63);
          v65[1] = (v62 * v67) + (v66 * v63);
          v68 = (v35 + v37);
          v69 = *(v33 + v37 - 4);
          v70 = *(v33 + v37);
          *v68 = (v69 * v59) - (v70 * v60);
          v68[1] = (v59 * v70) + (v69 * v60);
          v71 = (v34 + v37);
          v72 = *(v31 + v37 - 4);
          v73 = *(v31 + v37);
          v40 += 2;
          *v71 = (v72 * v61) - (v73 * v64);
          v71[1] = (v61 * v73) + (v72 * v64);
          v37 += 8;
          v39 -= 8;
          v38 -= 8;
        }

        while (v40 < a2);
        ++v30;
        a4 += v8;
        v34 += v9;
        v35 += v9;
        v36 += v9;
        v32 += v9;
        v7 = (v7 + v8);
      }

      while (v30 != a3);
    }
  }
}

void pocketfft::detail::rfftp<float>::radb2<float>(uint64_t a1, unint64_t a2, uint64_t a3, float *a4, float *a5, uint64_t a6)
{
  if (a3)
  {
    v6 = 4 * a2;
    v7 = a3 * a2;
    v8 = 8 * a2;
    v9 = a4;
    v10 = a5;
    v11 = a3;
    do
    {
      v12 = *v9;
      v13 = v9[2 * a2 - 1];
      *v10 = *v9 + v13;
      v10[v7] = v12 - v13;
      v10 = (v10 + v6);
      v9 = (v9 + v8);
      --v11;
    }

    while (v11);
    if ((a2 & 1) == 0)
    {
      v14 = a5 - 1;
      v15 = a4;
      v16 = a3;
      do
      {
        v17 = v15[a2];
        v14[a2] = v15[a2 - 1] + v15[a2 - 1];
        *(v14 + a2 * (4 * a3 + 4)) = v17 * -2.0;
        v15 = (v15 + v8);
        v14 = (v14 + v6);
        --v16;
      }

      while (v16);
    }

    if (a2 >= 3)
    {
      v18 = 0;
      v19 = &a4[2 * a2 - 3];
      v20 = (a6 + 4);
      v21 = a5 + 2;
      v22 = &a5[v7 + 2];
      v23 = a4 + 2;
      do
      {
        v24 = v21;
        v25 = v23;
        v26 = v22;
        v27 = v20;
        v28 = v19;
        v29 = 2;
        do
        {
          v30 = *(v25 - 1);
          v31 = *v28;
          v32 = v28[1];
          v28 -= 2;
          v33 = v30 + v31;
          v34 = v30 - v31;
          v35 = *v25 + v32;
          v36 = *v25 - v32;
          *(v24 - 1) = v33;
          *v24 = v36;
          v37 = *(v27 - 1);
          v38 = (v34 * *v27) + (v37 * v35);
          v39 = (v37 * v34) - (*v27 * v35);
          v29 += 2;
          v27 += 2;
          *(v26 - 1) = v39;
          *v26 = v38;
          v26 += 2;
          v25 += 2;
          v24 += 2;
        }

        while (v29 < a2);
        ++v18;
        v19 += v8;
        v22 += v6;
        v23 = (v23 + v8);
        v21 = (v21 + v6);
      }

      while (v18 != a3);
    }
  }
}

void pocketfft::detail::rfftp<float>::radb3<float>(uint64_t a1, unint64_t a2, uint64_t a3, float *a4, float *a5, uint64_t a6)
{
  if (a3)
  {
    v6 = 12 * a2;
    v7 = 4 * a2;
    v8 = a3 * a2;
    v9 = a5;
    v10 = a4;
    v11 = a3;
    do
    {
      v12 = v10[2 * a2];
      v13 = v10[2 * a2 - 1] + v10[2 * a2 - 1];
      v14 = *v10 + (v13 * -0.5);
      *v9 = *v10 + v13;
      v9[2 * a3 * a2] = v14 + (v12 * 1.7321);
      v9[v8] = v14 - (v12 * 1.7321);
      v10 = (v10 + v6);
      v9 = (v9 + v7);
      --v11;
    }

    while (v11);
    if (a2 != 1)
    {
      v15 = 0;
      v16 = &a4[2 * a2];
      v17 = v16 - 3;
      v18 = &a5[2 * v8 + 2];
      v19 = &a5[v8 + 1];
      do
      {
        if (a2 >= 3)
        {
          v20 = 0;
          v21 = v17;
          for (i = 2; i < a2; i += 2)
          {
            v23 = v16[v20 + 1];
            v24 = v16[v20 + 2];
            v25 = *v21;
            v26 = v21[1];
            v21 -= 2;
            v27 = a4[v20 + 1];
            v28 = a4[v20 + 2];
            v29 = v27 + ((v23 + v25) * -0.5);
            v30 = v28 + ((v24 - v26) * -0.5);
            v31 = (v23 + v25) + v27;
            v32 = &a5[v20];
            v33 = (v23 - v25) * 0.86603;
            v32[1] = v31;
            v32[2] = (v24 - v26) + v28;
            v34 = (v24 + v26) * 0.86603;
            v35 = v29 + v34;
            v36 = v29 - v34;
            v37 = v33 + v30;
            v38 = v30 - v33;
            v39 = (v19 + v20 * 4);
            v40 = *(a6 + v20 * 4);
            v41 = *(a6 + v20 * 4 + 4);
            v42 = (v36 * v41) + (v40 * v37);
            v43 = -(v41 * v37);
            v44 = *(a6 + 4 * a2 - 4 + v20 * 4);
            v45 = *(a6 + 4 * a2 + v20 * 4);
            v46 = (v18 + v20 * 4);
            *v39 = v43 + (v40 * v36);
            v39[1] = v42;
            *(v46 - 1) = (v44 * v35) - (v45 * v38);
            *v46 = (v35 * v45) + (v44 * v38);
            v20 += 2;
          }
        }

        ++v15;
        v17 = (v17 + v6);
        v18 += v7;
        v16 = (v16 + v6);
        v19 += v7;
        a5 = (a5 + v7);
        a4 = (a4 + v6);
      }

      while (v15 != a3);
    }
  }
}

void pocketfft::detail::rfftp<float>::radb5<float>(uint64_t a1, unint64_t a2, uint64_t a3, float *a4, float *a5, uint64_t a6)
{
  if (a3)
  {
    v6 = 20 * a2;
    v7 = 4 * a2;
    v8 = a3 * a2;
    v9 = a5;
    v10 = a4;
    v11 = a3;
    do
    {
      v12 = v10[2 * a2] + v10[2 * a2];
      v13 = v10[4 * a2] + v10[4 * a2];
      v14 = v10[2 * a2 - 1] + v10[2 * a2 - 1];
      v15 = v10[4 * a2 - 1] + v10[4 * a2 - 1];
      v16 = *v10;
      *v9 = v15 + (v14 + *v10);
      v17 = (v16 + (v14 * 0.30902)) + (v15 * -0.80902);
      v18 = (v16 + (v14 * -0.80902)) + (v15 * 0.30902);
      v19 = (v13 * 0.58779) + (v12 * 0.95106);
      v20 = (v13 * -0.95106) + (v12 * 0.58779);
      v9[4 * a3 * a2] = v19 + v17;
      v9[v8] = v17 - v19;
      v9[3 * a3 * a2] = v20 + v18;
      v9[2 * a3 * a2] = v18 - v20;
      v10 = (v10 + v6);
      v9 = (v9 + v7);
      --v11;
    }

    while (v11);
    if (a2 != 1)
    {
      v21 = 0;
      v22 = &a4[2 * a2];
      v23 = &a4[4 * a2];
      v24 = a5 + 2;
      v25 = &a5[4 * v8 + 2];
      v26 = &a5[3 * v8 + 2];
      v27 = &a5[2 * v8 + 2];
      v28 = v7 - 4;
      v29 = &a5[v8 + 2];
      do
      {
        if (a2 >= 3)
        {
          v30 = 0;
          v31 = 0x3FFFFFFFFFFFFFFDLL;
          for (i = 2; i < a2; i += 2)
          {
            v33 = v22[v30 + 1];
            v34 = v22[v30 + 2];
            v35 = v22[v31];
            v36 = v22[v31 + 1];
            v37 = v33 + v35;
            v38 = v33 - v35;
            v39 = v34 + v36;
            v40 = v34 - v36;
            v41 = v23[v30 + 1];
            v42 = v23[v30 + 2];
            v43 = v23[v31];
            v44 = v23[v31 + 1];
            v45 = v41 + v43;
            v46 = v41 - v43;
            v47 = v42 + v44;
            v48 = a4[v30 + 1];
            v49 = a4[v30 + 2];
            v50 = v42 - v44;
            v51 = &v24[v30];
            *(v51 - 1) = v45 + (v37 + v48);
            *v51 = v50 + (v40 + v49);
            v52 = (v48 + (v37 * 0.30902)) + (v45 * -0.80902);
            v53 = v48 + (v37 * -0.80902);
            v54 = (v49 + (v40 * 0.30902)) + (v50 * -0.80902);
            v55 = v53 + (v45 * 0.30902);
            v56 = (v46 * 0.58779) + (v38 * 0.95106);
            v57 = (v49 + (v40 * -0.80902)) + (v50 * 0.30902);
            v58 = (v46 * -0.95106) + (v38 * 0.58779);
            v59 = (v47 * 0.58779) + (v39 * 0.95106);
            v60 = (v47 * -0.95106) + (v39 * 0.58779);
            v61 = v55 + v60;
            v62 = v55 - v60;
            v63 = v58 + v57;
            v64 = v57 - v58;
            v65 = v52 + v59;
            v66 = v52 - v59;
            v67 = v56 + v54;
            v68 = v54 - v56;
            v69 = (v29 + v30 * 4);
            v70 = *(a6 + v30 * 4);
            v71 = *(a6 + v30 * 4 + 4);
            v72 = (v66 * v71) + (v70 * v67);
            v73 = -(v71 * v67);
            v74 = (v27 + v30 * 4);
            v75 = (a6 + v30 * 4 + v28);
            v76 = *v75;
            v77 = v73 + (v70 * v66);
            v78 = *(a6 + v30 * 4 + 4 * a2);
            v79 = v62 * v78;
            v80 = -(v78 * v63);
            v81 = (v26 + v30 * 4);
            v82 = v79 + (*v75 * v63);
            v83 = v75[a2];
            v84 = (v75 + v28);
            v85 = *v84;
            v86 = v80 + (v76 * v62);
            v87 = (v61 * v83) + (*v84 * v64);
            v88 = -(v83 * v64);
            v89 = *(v84 + v28);
            *(v69 - 1) = v77;
            *v69 = v72;
            v90 = v84[a2];
            v91 = (v25 + v30 * 4);
            *(v74 - 1) = v86;
            *v74 = v82;
            *(v81 - 1) = v88 + (v85 * v61);
            *v81 = v87;
            *(v91 - 1) = (v89 * v65) - (v90 * v68);
            *v91 = (v65 * v90) + (v89 * v68);
            v31 -= 2;
            v30 += 2;
          }
        }

        ++v21;
        v22 = (v22 + v6);
        v23 = (v23 + v6);
        v25 += v7;
        v26 += v7;
        v27 += v7;
        v29 += v7;
        a4 = (a4 + v6);
        v24 = (v24 + v7);
      }

      while (v21 != a3);
    }
  }
}

void pocketfft::detail::rfftp<float>::radbg<float>(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, char *a5, float *a6, uint64_t a7, uint64_t a8)
{
  v12 = a3 + 1;
  v13 = 4 * a2;
  v167 = a2;
  if (a4)
  {
    v14 = 4 * a3 * a2;
    v15 = a4;
    v16 = a6;
    v17 = a5;
    do
    {
      if (a2)
      {
        memcpy(v16, v17, v13);
        a2 = v167;
      }

      v17 += v14;
      v16 = (v16 + v13);
      --v15;
    }

    while (v15);
  }

  v18 = a4 * a2;
  if (v12 <= 3)
  {
    v29 = a6;
    if (a2 == 1 || a3 <= 1)
    {
      return;
    }

    goto LABEL_90;
  }

  v19 = v12 >> 1;
  v20 = 8 * a2;
  v21 = &a5[8 * a2];
  v22 = 4 * a3 * a2;
  v23 = 4 * v18;
  v24 = v18 * (a3 - 1);
  v25 = 4 * v24;
  v26 = 1;
  v165 = v24;
  v27 = 4 * v18;
  v28 = v21;
  v29 = a6;
  do
  {
    v30 = a6;
    v31 = v28;
    for (i = a4; i; --i)
    {
      v33 = *v31;
      *(v30 + v27) = *(v31 - 1) + *(v31 - 1);
      *(v30 + v25) = v33 + v33;
      v31 = (v31 + v22);
      v30 = (v30 + v13);
    }

    ++v26;
    v28 = (v28 + v20);
    v27 += v23;
    v25 -= v23;
  }

  while (v26 != v19);
  v170 = 4 * v18;
  if (a2 != 1)
  {
    v34 = v21 - 3;
    v35 = &a6[v24 + 2];
    v36 = &a6[v18 + 2];
    v37 = v21 + 2;
    v38 = 1;
    do
    {
      if (a4)
      {
        v39 = 0;
        v40 = v37;
        v41 = v36;
        v42 = v35;
        v43 = v34;
        do
        {
          if (v167 != 2)
          {
            v44 = v40;
            v45 = v41;
            v46 = v42;
            v47 = v43;
            v48 = 1;
            do
            {
              v49 = *(v44 - 1);
              v50 = *v44;
              v51 = *v47;
              v52 = v47[1];
              v47 -= 2;
              *(v45 - 1) = v49 + v51;
              *(v46 - 1) = v49 - v51;
              *v45 = v50 - v52;
              v45 += 2;
              v48 += 2;
              *v46 = v50 + v52;
              v46 += 2;
              v44 += 2;
            }

            while (v48 <= v167 - 2);
          }

          ++v39;
          v43 = (v43 + v22);
          v42 = (v42 + v13);
          v41 = (v41 + v13);
          v40 = (v40 + v22);
        }

        while (v39 != a4);
      }

      ++v38;
      v34 = (v34 + v20);
      v35 -= 4 * v18;
      v36 += v170;
      v37 = (v37 + v20);
    }

    while (v38 != v19);
  }

  v53 = &a6[v18];
  v54 = 8 * v18;
  v55 = &a6[2 * v18];
  v56 = &a6[v24];
  v57 = &a6[v18 * (a3 - 2)];
  v172 = v19 - 3;
  v171 = v19 - 1;
  v58 = &a5[4 * v18];
  v59 = &a5[4 * v24];
  v60 = 16 * v18;
  v61 = 1;
  v168 = v19;
  do
  {
    v62 = 2 * v61;
    if (v18)
    {
      v63 = 0;
      v64 = (a8 + 8 * v61);
      v65 = (a8 + 16 * v61);
      v66 = *v64;
      v67 = v64[1];
      v68 = *v65;
      v69 = v65[1];
      do
      {
        *&v58[4 * v63] = (v29[v63] + (v66 * v53[v63])) + (v68 * v55[v63]);
        *&v59[4 * v63] = (v69 * v57[v63]) + (v67 * v56[v63]);
        ++v63;
      }

      while (v18 != v63);
    }

    if (v172 < 4)
    {
      v79 = a3 - 3;
      v78 = 3;
    }

    else
    {
      v71 = &a6[v18 * (a3 - 6)];
      v70 = &a6[v18 * (a3 - 5)];
      v73 = &a6[v18 * (a3 - 4)];
      v72 = &a6[v18 * (a3 - 3)];
      v74 = &a6[6 * v18];
      v75 = &a6[5 * v18];
      v77 = &a6[4 * v18];
      v76 = &a6[3 * v18];
      v78 = 3;
      v79 = a3 - 3;
      do
      {
        if (v62 + v61 <= a3)
        {
          v80 = 0;
        }

        else
        {
          v80 = a3;
        }

        v81 = v62 + v61 - v80;
        v82 = v81 + v61;
        if (v81 + v61 <= a3)
        {
          v83 = 0;
        }

        else
        {
          v83 = a3;
        }

        v84 = v82 - v83;
        v85 = v82 - v83 + v61;
        if (v85 <= a3)
        {
          v86 = 0;
        }

        else
        {
          v86 = a3;
        }

        v87 = v85 - v86;
        v88 = v85 - v86 + v61;
        if (v88 <= a3)
        {
          v89 = 0;
        }

        else
        {
          v89 = a3;
        }

        v62 = v88 - v89;
        if (v18)
        {
          v90 = 0;
          v91 = (a8 + 8 * v81);
          v92 = *v91;
          v93 = v91[1];
          v94 = (a8 + 8 * v84);
          v95 = *v94;
          v96 = v94[1];
          v97 = (a8 + 8 * v87);
          v98 = *v97;
          v99 = v97[1];
          v100 = (a8 + 8 * v62);
          v101 = *v100;
          v102 = v100[1];
          do
          {
            *&v58[4 * v90] = *&v58[4 * v90] + ((((v95 * v77[v90]) + (v92 * v76[v90])) + (v98 * v75[v90])) + (v101 * v74[v90]));
            *&v59[4 * v90] = *&v59[4 * v90] + ((((v96 * v73[v90]) + (v93 * v72[v90])) + (v99 * v70[v90])) + (v102 * v71[v90]));
            ++v90;
          }

          while (v18 != v90);
        }

        v78 += 4;
        v79 -= 4;
        v76 = (v76 + v60);
        v77 = (v77 + v60);
        v75 = (v75 + v60);
        v74 = (v74 + v60);
        v72 -= 4 * v18;
        v73 -= 4 * v18;
        v70 -= 4 * v18;
        v71 -= 4 * v18;
      }

      while (v78 < v172);
    }

    if (v78 >= v171)
    {
      v29 = a6;
      v103 = 4 * v18;
      v57 = &a6[v18 * (a3 - 2)];
      v55 = &a6[2 * v18];
    }

    else
    {
      v29 = a6;
      v103 = 4 * v18;
      v104 = a6 + v170 * v78;
      v105 = &a6[v103 / 4] + v103 * v78;
      v106 = a6 + v170 * v79;
      v107 = a6 + v170 * (v79 - 1);
      v57 = &a6[v18 * (a3 - 2)];
      v55 = &a6[2 * v18];
      do
      {
        if (v62 + v61 <= a3)
        {
          v108 = 0;
        }

        else
        {
          v108 = a3;
        }

        v109 = v62 + v61 - v108;
        if (v109 + v61 <= a3)
        {
          v110 = 0;
        }

        else
        {
          v110 = a3;
        }

        v62 = v109 + v61 - v110;
        if (v18)
        {
          v111 = 0;
          v112 = (a8 + 8 * v109);
          v113 = *v112;
          v114 = v112[1];
          v115 = (a8 + 8 * v62);
          v116 = *v115;
          v117 = v115[1];
          do
          {
            *&v58[4 * v111] = *&v58[4 * v111] + ((v116 * *&v105[4 * v111]) + (v113 * *&v104[4 * v111]));
            *&v59[4 * v111] = *&v59[4 * v111] + ((v117 * *&v107[4 * v111]) + (v114 * *&v106[4 * v111]));
            ++v111;
          }

          while (v18 != v111);
        }

        v78 += 2;
        v79 -= 2;
        v104 += v54;
        v105 += v54;
        v106 -= 8 * v18;
        v107 -= 8 * v18;
      }

      while (v78 < v171);
    }

    if (v78 < v168)
    {
      v118 = v29 + v103 * v78;
      v119 = v29 + v103 * v79;
      do
      {
        if (v62 + v61 <= a3)
        {
          v120 = 0;
        }

        else
        {
          v120 = a3;
        }

        v62 = v62 + v61 - v120;
        if (v18)
        {
          v121 = 0;
          v122 = (a8 + 8 * v62);
          v123 = *v122;
          v124 = v122[1];
          do
          {
            *&v58[4 * v121] = *&v58[4 * v121] + (v123 * *&v118[4 * v121]);
            *&v59[4 * v121] = *&v59[4 * v121] + (v124 * *&v119[4 * v121]);
            ++v121;
          }

          while (v18 != v121);
        }

        ++v78;
        v118 += v103;
        v119 -= 4 * v18;
      }

      while (v78 != v168);
    }

    ++v61;
    v58 += v103;
    v59 -= 4 * v18;
  }

  while (v61 != v168);
  v125 = 1;
  v126 = v103;
  v127 = &a5[4 * v18];
  v128 = &a5[4 * v24];
  do
  {
    v129 = v29;
    for (j = v18; j; --j)
    {
      *v129 = *(v129 + v126) + *v129;
      ++v129;
    }

    ++v125;
    v126 += v103;
  }

  while (v125 != v168);
  v131 = 1;
  do
  {
    if (a4)
    {
      v132 = 0;
      v133 = a4;
      do
      {
        v134 = *&v127[v132];
        v135 = *&v128[v132];
        *(v56 + v132) = v134 + v135;
        *(v53 + v132) = v134 - v135;
        v132 += v13;
        --v133;
      }

      while (v133);
    }

    ++v131;
    v128 -= 4 * v18;
    v56 -= v18;
    v127 += v103;
    v53 = (v53 + v103);
  }

  while (v131 != v168);
  if (v167 != 1)
  {
    v136 = &v29[v165 + 2];
    v137 = &v29[v103 / 4 + 2];
    v138 = &a5[v103 + 8];
    v139 = &a5[v165 * 4 + 8];
    v140 = 1;
    do
    {
      if (a4)
      {
        v141 = 0;
        v142 = v139;
        v143 = v138;
        v144 = v137;
        v145 = v136;
        do
        {
          if (v167 != 2)
          {
            v146 = v142;
            v147 = v143;
            v148 = v144;
            v149 = v145;
            v150 = 1;
            do
            {
              v151 = *(v147 - 1);
              v152 = *v147;
              v154 = *(v146 - 1);
              v153 = *v146;
              *(v148 - 1) = v151 - *v146;
              *(v149 - 1) = v151 + v153;
              *v148 = v152 + v154;
              v148 += 2;
              v150 += 2;
              *v149 = v152 - v154;
              v149 += 2;
              v147 += 2;
              v146 += 2;
            }

            while (v150 <= v167 - 2);
          }

          ++v141;
          v145 = (v145 + v13);
          v144 = (v144 + v13);
          v143 = (v143 + v13);
          v142 = (v142 + v13);
        }

        while (v141 != a4);
      }

      ++v140;
      v136 -= v18;
      v137 = (v137 + v103);
      v138 = (v138 + v103);
      v139 -= v18;
    }

    while (v140 != v168);
    a2 = v167;
    if (a3 >= 2)
    {
LABEL_90:
      v155 = 4 * v18;
      v156 = &v29[v18 + 1];
      v157 = 1;
      do
      {
        if (a4)
        {
          v158 = 0;
          v159 = v156;
          do
          {
            if (a2 != 2)
            {
              v160 = 0;
              v161 = v159;
              do
              {
                v162 = a7 + 4 * v160;
                v163.i32[0] = *(v162 + 4);
                v163.f32[1] = -v163.f32[0];
                *v161 = vmla_n_f32(vrev64_s32(vmul_f32(*v161, v163)), *v161, *v162);
                ++v161;
                v164 = v160 + 3;
                v160 += 2;
              }

              while (v164 <= a2 - 2);
            }

            ++v158;
            v159 = (v159 + v13);
          }

          while (v158 != a4);
        }

        ++v157;
        v156 += v155;
        a7 += v13 - 4;
      }

      while (v157 != a3);
    }
  }
}

uint64_t *pocketfft::detail::rfftp<float>::copy_and_norm<float>(uint64_t *result, float *__dst, float *__src, float a4)
{
  if (__src == __dst)
  {
    if (a4 != 1.0)
    {
      for (i = *result; i; --i)
      {
        *__dst = *__dst * a4;
        ++__dst;
      }
    }
  }

  else
  {
    v4 = *result;
    if (a4 == 1.0)
    {
      if (v4)
      {
        return memmove(__dst, __src, 4 * v4);
      }
    }

    else
    {
      for (; v4; --v4)
      {
        v5 = *__src++;
        *__dst++ = v5 * a4;
      }
    }
  }

  return result;
}

__n128 std::__function::__func<void pocketfft::detail::threading::thread_map<void pocketfft::detail::general_r2c<float>(pocketfft::detail::cndarr<float> const&,pocketfft::detail::ndarr<pocketfft::detail::cmplx<float>> &,unsigned long,BOOL,float,unsigned long)::{lambda(void)#1}>(unsigned long,float)::{lambda(void)#1},std::allocator<void pocketfft::detail::threading::thread_map<void pocketfft::detail::general_r2c<float>(pocketfft::detail::cndarr<float> const&,pocketfft::detail::ndarr<pocketfft::detail::cmplx<float>> &,unsigned long,BOOL,float,unsigned long)::{lambda(void)#1}>(unsigned long,float)::{lambda(void)#1}>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BFF578;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void pocketfft::detail::threading::thread_map<void pocketfft::detail::general_r2c<float>(pocketfft::detail::cndarr<float> const&,pocketfft::detail::ndarr<pocketfft::detail::cmplx<float>> &,unsigned long,BOOL,float,unsigned long)::{lambda(void)#1}>(unsigned long,float)::{lambda(void)#1},std::allocator<void pocketfft::detail::threading::thread_map<void pocketfft::detail::general_r2c<float>(pocketfft::detail::cndarr<float> const&,pocketfft::detail::ndarr<pocketfft::detail::cmplx<float>> &,unsigned long,BOOL,float,unsigned long)::{lambda(void)#1}>(unsigned long,float)::{lambda(void)#1}>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void pocketfft::detail::threading::thread_map<void pocketfft::detail::general_r2c<float>(pocketfft::detail::cndarr<float> const&,pocketfft::detail::ndarr<pocketfft::detail::cmplx<float>> &,unsigned long,BOOL,float,unsigned long)::{lambda(void)#1}>(unsigned long,float)::{lambda(void)#1}::operator()(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = pocketfft::detail::threading::thread_id(void)::thread_id_();
  *v3 = v4;
  v5 = *(a1 + 40);
  v6 = pocketfft::detail::threading::num_threads(void)::num_threads_();
  *v6 = v7;
  pocketfft::detail::general_r2c<float>(pocketfft::detail::cndarr<float> const&,pocketfft::detail::ndarr<pocketfft::detail::cmplx<float>> &,unsigned long,BOOL,float,unsigned long)::{lambda(void)#1}::operator()(*a1);
  pocketfft::detail::threading::latch::count_down(*(a1 + 8));
}

void sub_25A5C3A14(void *a1)
{
  __cxa_begin_catch(a1);
  std::mutex::lock(*(v1 + 24));
  pocketfft::detail::threading::thread_map<void pocketfft::detail::general_nd<pocketfft::detail::pocketfft_c<float>,pocketfft::detail::cmplx<float>,float,pocketfft::detail::ExecC2C>(pocketfft::detail::cndarr<pocketfft::detail::cmplx<float>> const&,pocketfft::detail::ndarr<pocketfft::detail::cmplx<float>> &,std::vector<unsigned long> const&,float,unsigned long,pocketfft::detail::ExecC2C const&,BOOL)::{lambda(void)#1}>(unsigned long,void pocketfft::detail::general_nd<pocketfft::detail::pocketfft_c<float>,pocketfft::detail::cmplx<float>,float,pocketfft::detail::ExecC2C>(pocketfft::detail::cndarr<pocketfft::detail::cmplx<float>> const&,pocketfft::detail::ndarr<pocketfft::detail::cmplx<float>> &,std::vector<unsigned long> const&,float,unsigned long,pocketfft::detail::ExecC2C const&,BOOL)::{lambda(void)#1})::{lambda(void)#1}::operator()();
  JUMPOUT(0x25A5C3A00);
}

uint64_t std::vector<unsigned long>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned long const*>,std::__wrap_iter<unsigned long const*>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::pair<int,int>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25A5C3AA0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::__function::__func<std::__bind<mlx::core::FFT::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_2>,std::allocator<std::__bind<mlx::core::FFT::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_2>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BFF608;
  v2 = a1[10];
  if (v2)
  {
    a1[11] = v2;
    operator delete(v2);
  }

  v3 = a1[7];
  if (v3)
  {
    a1[8] = v3;
    operator delete(v3);
  }

  v4 = a1[4];
  if (v4)
  {
    a1[5] = v4;
    operator delete(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    a1[2] = v5;
    operator delete(v5);
  }

  return a1;
}

void std::__function::__func<std::__bind<mlx::core::FFT::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_2>,std::allocator<std::__bind<mlx::core::FFT::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_2>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BFF608;
  v2 = a1[10];
  if (v2)
  {
    a1[11] = v2;
    operator delete(v2);
  }

  v3 = a1[7];
  if (v3)
  {
    a1[8] = v3;
    operator delete(v3);
  }

  v4 = a1[4];
  if (v4)
  {
    a1[5] = v4;
    operator delete(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    a1[2] = v5;
    operator delete(v5);
  }

  JUMPOUT(0x25F851760);
}

uint64_t std::__function::__func<std::__bind<mlx::core::FFT::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_2>,std::allocator<std::__bind<mlx::core::FFT::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_2>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BFF608;
  result = std::__bind<mlx::core::FFT::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_2>::__bind(a2 + 8, a1 + 8);
  *(a2 + 140) = 0;
  *(a2 + 137) = 0;
  return result;
}

void std::__function::__func<std::__bind<mlx::core::FFT::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_2>,std::allocator<std::__bind<mlx::core::FFT::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_2>>,void ()(void)>::destroy(void *a1)
{
  v2 = a1[10];
  if (v2)
  {
    a1[11] = v2;
    operator delete(v2);
  }

  v3 = a1[7];
  if (v3)
  {
    a1[8] = v3;
    operator delete(v3);
  }

  v4 = a1[4];
  if (v4)
  {
    a1[5] = v4;
    operator delete(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    a1[2] = v5;

    operator delete(v5);
  }
}

void std::__function::__func<std::__bind<mlx::core::FFT::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_2>,std::allocator<std::__bind<mlx::core::FFT::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_2>>,void ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[10];
  if (v2)
  {
    __p[11] = v2;
    operator delete(v2);
  }

  v3 = __p[7];
  if (v3)
  {
    __p[8] = v3;
    operator delete(v3);
  }

  v4 = __p[4];
  if (v4)
  {
    __p[5] = v4;
    operator delete(v4);
  }

  v5 = __p[1];
  if (v5)
  {
    __p[2] = v5;
    operator delete(v5);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<std::__bind<mlx::core::FFT::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_2>,std::allocator<std::__bind<mlx::core::FFT::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_2>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *_ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_3FFT8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__3JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286BFF700;
  v2 = a1[12];
  if (v2)
  {
    a1[13] = v2;
    operator delete(v2);
  }

  v3 = a1[9];
  if (v3)
  {
    a1[10] = v3;
    operator delete(v3);
  }

  v4 = a1[6];
  if (v4)
  {
    a1[7] = v4;
    operator delete(v4);
  }

  v5 = a1[3];
  if (v5)
  {
    a1[4] = v5;
    operator delete(v5);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_3FFT8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__3JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286BFF700;
  v2 = a1[12];
  if (v2)
  {
    a1[13] = v2;
    operator delete(v2);
  }

  v3 = a1[9];
  if (v3)
  {
    a1[10] = v3;
    operator delete(v3);
  }

  v4 = a1[6];
  if (v4)
  {
    a1[7] = v4;
    operator delete(v4);
  }

  v5 = a1[3];
  if (v5)
  {
    a1[4] = v5;
    operator delete(v5);
  }

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_3FFT8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__3JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEE7__cloneEPNS0_6__baseISO_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BFF700;
  v2 = *(a1 + 8);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 8) = v2;
  return std::__bind<mlx::core::FFT::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_3>::__bind(a2 + 24, a1 + 24);
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_3FFT8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__3JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEE7destroyEv(void *a1)
{
  v2 = a1[12];
  if (v2)
  {
    a1[13] = v2;
    operator delete(v2);
  }

  v3 = a1[9];
  if (v3)
  {
    a1[10] = v3;
    operator delete(v3);
  }

  v4 = a1[6];
  if (v4)
  {
    a1[7] = v4;
    operator delete(v4);
  }

  v5 = a1[3];
  if (v5)
  {
    a1[4] = v5;

    operator delete(v5);
  }
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_3FFT8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__3JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[12];
  if (v2)
  {
    __p[13] = v2;
    operator delete(v2);
  }

  v3 = __p[9];
  if (v3)
  {
    __p[10] = v3;
    operator delete(v3);
  }

  v4 = __p[6];
  if (v4)
  {
    __p[7] = v4;
    operator delete(v4);
  }

  v5 = __p[3];
  if (v5)
  {
    __p[4] = v5;
    operator delete(v5);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_3FFT8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__3JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEEclEv(uint64_t a1)
{
  pocketfft::detail::c2r<float>((a1 + 24), (a1 + 48), (a1 + 72), (a1 + 96), (*(a1 + 120) & 1) == 0, *(a1 + 128), *(a1 + 136), 1uLL, *(a1 + 144));
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_3FFT8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__3JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__bind<mlx::core::FFT::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_3>::__bind(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(a1, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  std::vector<long>::__init_with_size[abi:ne200100]<long *,long *>(a1 + 24, *(a2 + 24), *(a2 + 32), (*(a2 + 32) - *(a2 + 24)) >> 3);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  std::vector<long>::__init_with_size[abi:ne200100]<long *,long *>(a1 + 48, *(a2 + 48), *(a2 + 56), (*(a2 + 56) - *(a2 + 48)) >> 3);
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(a1 + 72, *(a2 + 72), *(a2 + 80), (*(a2 + 80) - *(a2 + 72)) >> 3);
  v4 = *(a2 + 96);
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 96) = v4;
  return a1;
}

void sub_25A5C4250(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 56) = v5;
    operator delete(v5);
  }

  v6 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v6;
    operator delete(v6);
  }

  v7 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v7;
    operator delete(v7);
  }

  _Unwind_Resume(exception_object);
}

void pocketfft::detail::c2r<float>(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t **a4, char a5, void *a6, void *a7, unint64_t a8, float a9)
{
  v18 = *a1;
  v19 = a1[1];
  if (*a1 == v19)
  {
    goto LABEL_5;
  }

  v20 = 1;
  do
  {
    v21 = *v18++;
    v20 *= v21;
  }

  while (v18 != v19);
  if (v20)
  {
LABEL_5:
    if (a4[1] - *a4 == 8)
    {
      v22 = **a4;

      pocketfft::detail::c2r<float>(a1, a2, a3, v22, a5, a6, a7, a9);
    }

    else
    {
      pocketfft::detail::util::sanity_check(a1, a2, a3, 0, a4);
      v44 = 0;
      v45 = 0;
      v46 = 0;
      std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(&v44, *a1, a1[1], (a1[1] - *a1) >> 3);
      v23 = v44;
      v24 = v45;
      *(v44 + *(a4[1] - 1)) = (*(*a1 + 8 * *(a4[1] - 1)) >> 1) + 1;
      v25 = 1;
      if (v23 != v24)
      {
        v26 = v23;
        do
        {
          v27 = *v26++;
          v25 *= v27;
        }

        while (v26 != v24);
      }

      std::vector<long>::vector[abi:ne200100](&v42, v24 - v23);
      *(v43 - 1) = 8;
      v28 = (v45 - v44) >> 3;
      if (v28 >= 2)
      {
        v29 = v28 - 2;
        v30 = v42;
        v31 = 8 * v29;
        v32 = *(v42 + v31 + 8);
        v33 = v44 + 8;
        do
        {
          v32 *= *&v33[v31];
          *&v30[v31] = v32;
          v31 -= 8;
        }

        while (v31 != -8);
      }

      if (v25)
      {
        v25 = malloc_type_aligned_alloc(0x40uLL, (8 * v25 + 63) & 0xFFFFFFFFFFFFFFC0, 0x900E4C1uLL);
        if (!v25)
        {
          exception = __cxa_allocate_exception(8uLL);
          v38 = std::bad_alloc::bad_alloc(exception);
          __cxa_throw(v38, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
        }
      }

      v34 = *a4;
      v35 = (a4[1] - 1);
      v36 = (v35 - *a4) >> 3;
      v40 = 0;
      v41 = 0;
      __p = 0;
      std::vector<unsigned long>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned long const*>,std::__wrap_iter<unsigned long const*>>(&__p, v34, v35, v36);
      pocketfft::detail::c2c<float>(&v44, a2, &v42, &__p, a5, a6, v25, a8, 1.0);
      pocketfft::detail::c2r<float>(a1, &v42, a3, *(a4[1] - 1), a5, v25, a7, a9);
      if (__p)
      {
        v40 = __p;
        operator delete(__p);
      }

      free(v25);
      if (v42)
      {
        v43 = v42;
        operator delete(v42);
      }

      if (v44)
      {
        v45 = v44;
        operator delete(v44);
      }
    }
  }
}

void sub_25A5C456C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  free(v17);
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

uint64_t *pocketfft::detail::c2r<float>(uint64_t *result, uint64_t *a2, uint64_t *a3, unint64_t a4, char a5, void *a6, void *a7, float a8)
{
  v15 = result;
  v16 = *result;
  v17 = result[1];
  if (*result == v17)
  {
    goto LABEL_5;
  }

  v18 = 1;
  do
  {
    v19 = *v16++;
    v18 *= v19;
  }

  while (v16 != v17);
  if (v18)
  {
LABEL_5:
    pocketfft::detail::util::sanity_check(result, a2, a3, 0, a4);
    memset(v22, 0, sizeof(v22));
    std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(v22, *v15, v15[1], (v15[1] - *v15) >> 3);
    *(v22[0] + 8 * a4) = (*(*v15 + 8 * a4) >> 1) + 1;
    pocketfft::detail::arr_info::arr_info(v21, v22, a2);
    v21[6] = a6;
    pocketfft::detail::arr_info::arr_info(v20, v15, a3);
    v20[6] = a7;
    pocketfft::detail::general_c2r<float>(a8, v21, v20, a4, a5);
  }

  return result;
}

void sub_25A5C4734(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  std::tuple<std::vector<int>,std::vector<int>,BOOL>::~tuple(va);
  std::tuple<std::vector<int>,std::vector<int>,BOOL>::~tuple(va1);
  v4 = *(v2 - 104);
  if (v4)
  {
    *(v2 - 96) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

void pocketfft::detail::general_c2r<float>(float a1, uint64_t a2, void *a3, uint64_t a4, char a5)
{
  v8 = a4;
  v7 = a5;
  v6 = a1;
  v5 = *(*a3 + 8 * a4);
  std::allocate_shared[abi:ne200100]<pocketfft::detail::pocketfft_r<float>,std::allocator<pocketfft::detail::pocketfft_r<float>>,unsigned long &,0>();
}

void sub_25A5C4834(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  _Unwind_Resume(exception_object);
}

void pocketfft::detail::threading::thread_map<void pocketfft::detail::general_c2r<float>(pocketfft::detail::cndarr<pocketfft::detail::cmplx<float>> const&,pocketfft::detail::ndarr<float> &,unsigned long,BOOL,float,unsigned long)::{lambda(void)#1}>(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v14 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v3 = pocketfft::detail::threading::max_threads(0);
  }

  if (v3 == 1)
  {
    v4 = *MEMORY[0x277D85DE8];

    pocketfft::detail::general_c2r<float>(pocketfft::detail::cndarr<pocketfft::detail::cmplx<float>> const&,pocketfft::detail::ndarr<float> &,unsigned long,BOOL,float,unsigned long)::{lambda(void)#1}::operator()(a2);
  }

  else
  {
    {
      if (v6)
      {
        v7 = pocketfft::detail::threading::max_threads(v6);
        pocketfft::detail::threading::thread_pool::thread_pool(&pocketfft::detail::threading::get_pool(void)::pool, v7);
        __cxa_atexit(pocketfft::detail::threading::thread_pool::~thread_pool, &pocketfft::detail::threading::get_pool(void)::pool, &dword_25A232000);
      }
    }

    v11 = v3;
    v12.__m_.__sig = 850045863;
    memset(v12.__m_.__opaque, 0, sizeof(v12.__m_.__opaque));
    v13.__cv_.__sig = 1018212795;
    memset(v13.__cv_.__opaque, 0, sizeof(v13.__cv_.__opaque));
    v8.__ptr_ = 0;
    v10.__m_.__sig = 850045863;
    memset(v10.__m_.__opaque, 0, sizeof(v10.__m_.__opaque));
    if (v3)
    {
      v9 = 0;
      operator new();
    }

    pocketfft::detail::threading::latch::wait(&v11);
    std::mutex::~mutex(&v10);
    std::exception_ptr::~exception_ptr(&v8);
    std::condition_variable::~condition_variable(&v13);
    std::mutex::~mutex(&v12);
    v5 = *MEMORY[0x277D85DE8];
  }
}

void pocketfft::detail::general_c2r<float>(pocketfft::detail::cndarr<pocketfft::detail::cmplx<float>> const&,pocketfft::detail::ndarr<float> &,unsigned long,BOOL,float,unsigned long)::{lambda(void)#1}::operator()(uint64_t a1)
{
  pocketfft::detail::alloc_tmp<float>(*a1, **(a1 + 8), 4, &v55);
  pocketfft::detail::multi_iter<4ul>::multi_iter(__p, *(a1 + 16), *a1, **(a1 + 24));
  while (v54 > 3)
  {
    pocketfft::detail::multi_iter<4ul>::advance(__p, 4uLL);
    v7 = 0;
    v8 = v55;
    v9 = *v55;
    do
    {
      v2.n128_u32[0] = *(__p[v7 + 6] + *(*(a1 + 16) + 48));
      v47 = v9;
      *(&v47 & 0xFFFFFFFFFFFFFFF3 | (4 * (v7 & 3))) = v2.n128_u32[0];
      v9 = v47;
      *v8 = v47;
      ++v7;
    }

    while (v7 != 4);
    v10 = **(a1 + 8);
    if (**(a1 + 32))
    {
      if (v10 - 3 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v11 = 1;
        v12 = 1;
        do
        {
          v13 = 0;
          v14 = &v8[v12];
          v9 = *v14;
          v2 = v14[1];
          do
          {
            v15 = *(*(*(a1 + 16) + 48) + v50 * v11 + v49[v13]);
            v43 = v9;
            *(&v43 & 0xFFFFFFFFFFFFFFF3 | (4 * (v13 & 3))) = v15;
            v9 = v43;
            *v14 = v43;
            *&v3 = -*(*(*(a1 + 16) + 48) + v50 * v11 + v49[v13] + 4);
            v44 = v2;
            *(&v44 & 0xFFFFFFFFFFFFFFF3 | (4 * (v13 & 3))) = LODWORD(v3);
            v2 = v44;
            v14[1] = v44;
            ++v13;
          }

          while (v13 != 4);
          v12 += 2;
          ++v11;
          v10 = **(a1 + 8);
        }

        while (v12 < v10 - 1);
        goto LABEL_19;
      }
    }

    else if (v10 - 3 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v11 = 1;
      v12 = 1;
      do
      {
        v16 = 0;
        v17 = &v8[v12];
        v9 = *v17;
        v2 = v17[1];
        do
        {
          v18 = *(*(*(a1 + 16) + 48) + v50 * v11 + v49[v16]);
          v45 = v9;
          *(&v45 & 0xFFFFFFFFFFFFFFF3 | (4 * (v16 & 3))) = v18;
          v9 = v45;
          *v17 = v45;
          LODWORD(v3) = *(*(*(a1 + 16) + 48) + v50 * v11 + v49[v16] + 4);
          v46 = v2;
          *(&v46 & 0xFFFFFFFFFFFFFFF3 | (4 * (v16 & 3))) = LODWORD(v3);
          v2 = v46;
          v17[1] = v46;
          ++v16;
        }

        while (v16 != 4);
        v12 += 2;
        ++v11;
        v10 = **(a1 + 8);
      }

      while (v12 < v10 - 1);
      goto LABEL_19;
    }

    v12 = 1;
    v11 = 1;
LABEL_19:
    if (v12 < v10)
    {
      v19 = 0;
      v9 = v8[v12];
      do
      {
        v2.n128_u32[0] = *(*(*(a1 + 16) + 48) + v50 * v11 + v49[v19]);
        v42 = v9;
        *(&v42 & 0xFFFFFFFFFFFFFFF3 | (4 * (v19 & 3))) = v2.n128_u32[0];
        v9 = v42;
        v8[v12] = v42;
        ++v19;
      }

      while (v19 != 4);
    }

    v9.i32[0] = **(a1 + 48);
    _ZNK9pocketfft6detail11pocketfft_rIfE4execIDv4_fEEvPT_fb(**(a1 + 40), v8, 0, *v9.i64, v2, v3, v4, v5, v6);
    pocketfft::detail::copy_output<float,4ul>(__p, v8, *a1);
  }

  while (v54)
  {
    pocketfft::detail::multi_iter<4ul>::advance(__p, 1uLL);
    v20 = v49[0];
    v21 = *(a1 + 8);
    v22 = *(*(a1 + 16) + 48);
    v23 = v55;
    v55->i32[0] = *(v22 + v49[0]);
    v24 = *v21;
    v25 = v24 - 3;
    if (**(a1 + 32))
    {
      if (v24 - 3 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v26 = v50;
        v27 = v25 >> 1;
        v28 = (v25 >> 1) + 2;
        v29 = v27 + 1;
        v30 = v23 + 2;
        v31 = (v22 + v20 + v50 + 4);
        v32 = 2 * v27 + 3;
        do
        {
          *(v30 - 1) = *(v31 - 1);
          *v30 = -*v31;
          v30 += 2;
          v31 = (v31 + v26);
          --v29;
        }

        while (v29);
        goto LABEL_34;
      }
    }

    else if (v24 - 3 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v33 = v50;
      v34 = v25 >> 1;
      v28 = (v25 >> 1) + 2;
      v35 = v34 + 1;
      v36 = v23 + 2;
      v37 = (v22 + v20 + v50 + 4);
      v32 = 2 * v34 + 3;
      do
      {
        *(v36 - 1) = *(v37 - 1);
        *v36 = *v37;
        v36 += 2;
        v37 = (v37 + v33);
        --v35;
      }

      while (v35);
      goto LABEL_34;
    }

    v32 = 1;
    v28 = 1;
LABEL_34:
    if (v32 < v24)
    {
      v23[v32] = *(v22 + v50 * v28 + v20);
    }

    pocketfft::detail::pocketfft_r<float>::exec<float>(**(a1 + 40), v23, 0, **(a1 + 48));
    v38 = (*(*a1 + 48) + v51);
    if (v38 != v23)
    {
      v39 = *(*__p[4] + 8 * v53);
      if (v39)
      {
        v40 = v52;
        do
        {
          v41 = *v23++;
          *v38 = v41;
          v38 = (v38 + v40);
          --v39;
        }

        while (v39);
      }
    }
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  free(v55);
}

uint64_t pocketfft::detail::copy_output<float,4ul>(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(**(result + 32) + 8 * *(result + 136));
  if (v3)
  {
    v4 = 0;
    v5 = *(result + 128);
    v6 = *(a3 + 48);
    do
    {
      v7 = 0;
      v8 = *(a2 + 16 * v4);
      do
      {
        v9 = v8;
        *(v6 + v5 * v4 + *(result + 96 + 8 * v7)) = *(&v9 & 0xFFFFFFFFFFFFFFF3 | (4 * (v7 & 3)));
        ++v7;
      }

      while (v7 != 4);
      ++v4;
    }

    while (v4 != v3);
  }

  return result;
}

__n128 std::__function::__func<void pocketfft::detail::threading::thread_map<void pocketfft::detail::general_c2r<float>(pocketfft::detail::cndarr<pocketfft::detail::cmplx<float>> const&,pocketfft::detail::ndarr<float> &,unsigned long,BOOL,float,unsigned long)::{lambda(void)#1}>(unsigned long,float)::{lambda(void)#1},std::allocator<void pocketfft::detail::threading::thread_map<void pocketfft::detail::general_c2r<float>(pocketfft::detail::cndarr<pocketfft::detail::cmplx<float>> const&,pocketfft::detail::ndarr<float> &,unsigned long,BOOL,float,unsigned long)::{lambda(void)#1}>(unsigned long,float)::{lambda(void)#1}>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BFF770;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void pocketfft::detail::threading::thread_map<void pocketfft::detail::general_c2r<float>(pocketfft::detail::cndarr<pocketfft::detail::cmplx<float>> const&,pocketfft::detail::ndarr<float> &,unsigned long,BOOL,float,unsigned long)::{lambda(void)#1}>(unsigned long,float)::{lambda(void)#1},std::allocator<void pocketfft::detail::threading::thread_map<void pocketfft::detail::general_c2r<float>(pocketfft::detail::cndarr<pocketfft::detail::cmplx<float>> const&,pocketfft::detail::ndarr<float> &,unsigned long,BOOL,float,unsigned long)::{lambda(void)#1}>(unsigned long,float)::{lambda(void)#1}>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void pocketfft::detail::threading::thread_map<void pocketfft::detail::general_c2r<float>(pocketfft::detail::cndarr<pocketfft::detail::cmplx<float>> const&,pocketfft::detail::ndarr<float> &,unsigned long,BOOL,float,unsigned long)::{lambda(void)#1}>(unsigned long,float)::{lambda(void)#1}::operator()(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = pocketfft::detail::threading::thread_id(void)::thread_id_();
  *v3 = v4;
  v5 = *(a1 + 40);
  v6 = pocketfft::detail::threading::num_threads(void)::num_threads_();
  *v6 = v7;
  pocketfft::detail::general_c2r<float>(pocketfft::detail::cndarr<pocketfft::detail::cmplx<float>> const&,pocketfft::detail::ndarr<float> &,unsigned long,BOOL,float,unsigned long)::{lambda(void)#1}::operator()(*a1);
  pocketfft::detail::threading::latch::count_down(*(a1 + 8));
}

void sub_25A5C5150(void *a1)
{
  __cxa_begin_catch(a1);
  std::mutex::lock(*(v1 + 24));
  pocketfft::detail::threading::thread_map<void pocketfft::detail::general_nd<pocketfft::detail::pocketfft_c<float>,pocketfft::detail::cmplx<float>,float,pocketfft::detail::ExecC2C>(pocketfft::detail::cndarr<pocketfft::detail::cmplx<float>> const&,pocketfft::detail::ndarr<pocketfft::detail::cmplx<float>> &,std::vector<unsigned long> const&,float,unsigned long,pocketfft::detail::ExecC2C const&,BOOL)::{lambda(void)#1}>(unsigned long,void pocketfft::detail::general_nd<pocketfft::detail::pocketfft_c<float>,pocketfft::detail::cmplx<float>,float,pocketfft::detail::ExecC2C>(pocketfft::detail::cndarr<pocketfft::detail::cmplx<float>> const&,pocketfft::detail::ndarr<pocketfft::detail::cmplx<float>> &,std::vector<unsigned long> const&,float,unsigned long,pocketfft::detail::ExecC2C const&,BOOL)::{lambda(void)#1})::{lambda(void)#1}::operator()();
  JUMPOUT(0x25A5C513CLL);
}

void *std::vector<long>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<std::pair<int,int>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_25A5C51E0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::__function::__func<std::__bind<mlx::core::FFT::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_3>,std::allocator<std::__bind<mlx::core::FFT::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_3>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BFF800;
  v2 = a1[10];
  if (v2)
  {
    a1[11] = v2;
    operator delete(v2);
  }

  v3 = a1[7];
  if (v3)
  {
    a1[8] = v3;
    operator delete(v3);
  }

  v4 = a1[4];
  if (v4)
  {
    a1[5] = v4;
    operator delete(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    a1[2] = v5;
    operator delete(v5);
  }

  return a1;
}

void std::__function::__func<std::__bind<mlx::core::FFT::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_3>,std::allocator<std::__bind<mlx::core::FFT::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_3>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BFF800;
  v2 = a1[10];
  if (v2)
  {
    a1[11] = v2;
    operator delete(v2);
  }

  v3 = a1[7];
  if (v3)
  {
    a1[8] = v3;
    operator delete(v3);
  }

  v4 = a1[4];
  if (v4)
  {
    a1[5] = v4;
    operator delete(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    a1[2] = v5;
    operator delete(v5);
  }

  JUMPOUT(0x25F851760);
}

uint64_t std::__function::__func<std::__bind<mlx::core::FFT::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_3>,std::allocator<std::__bind<mlx::core::FFT::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_3>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BFF800;
  result = std::__bind<mlx::core::FFT::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_3>::__bind(a2 + 8, a1 + 8);
  *(a2 + 140) = 0;
  *(a2 + 137) = 0;
  return result;
}

void std::__function::__func<std::__bind<mlx::core::FFT::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_3>,std::allocator<std::__bind<mlx::core::FFT::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_3>>,void ()(void)>::destroy(void *a1)
{
  v2 = a1[10];
  if (v2)
  {
    a1[11] = v2;
    operator delete(v2);
  }

  v3 = a1[7];
  if (v3)
  {
    a1[8] = v3;
    operator delete(v3);
  }

  v4 = a1[4];
  if (v4)
  {
    a1[5] = v4;
    operator delete(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    a1[2] = v5;

    operator delete(v5);
  }
}

void std::__function::__func<std::__bind<mlx::core::FFT::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_3>,std::allocator<std::__bind<mlx::core::FFT::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_3>>,void ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[10];
  if (v2)
  {
    __p[11] = v2;
    operator delete(v2);
  }

  v3 = __p[7];
  if (v3)
  {
    __p[8] = v3;
    operator delete(v3);
  }

  v4 = __p[4];
  if (v4)
  {
    __p[5] = v4;
    operator delete(v4);
  }

  v5 = __p[1];
  if (v5)
  {
    __p[2] = v5;
    operator delete(v5);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<std::__bind<mlx::core::FFT::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_3>,std::allocator<std::__bind<mlx::core::FFT::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_3>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

std::exception_ptr OUTLINED_FUNCTION_0()
{

  return std::current_exception();
}

void mlx::core::Scan::eval_cpu(uint64_t a1, uint64_t **a2, uint64_t a3)
{
  v27 = *MEMORY[0x277D85DE8];
  if (a2[1] - *a2 == 16)
  {
    command_encoder = mlx::core::cpu::get_command_encoder(*(a1 + 8), *(a1 + 16));
    v7 = **a2;
    v8 = (*a2)[1];
    v21 = v7;
    v22 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if ((*(v7 + 168) & 2) == 0)
    {
      v19 = 0;
      v20 = 0;
      __p = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *v7, *(v7 + 8), (*(v7 + 8) - *v7) >> 2);
      v9 = *(v21 + 56);
      v16 = 0;
      v17 = 0;
      memset(v15, 0, sizeof(v15));
      mlx::core::array::array(&v25, &__p, v9 & 0xFFFFFFFFFFLL, &v16, v15);
      v24 = v15;
      std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v24);
      if (v17)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v17);
      }

      if (__p)
      {
        v19 = __p;
        operator delete(__p);
      }

      mlx::core::copy(&v21, &v25, 2u, *(a1 + 8), *(a1 + 16));
      v10 = v25;
      if (v21 != v25)
      {
        v11 = v26;
        if (v26)
        {
          atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v12 = v22;
        v21 = v10;
        v22 = v11;
        if (v12)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v12);
          v10 = v25;
        }
      }

      v14[0] = v10;
      v14[1] = v26;
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      std::vector<mlx::core::array>::push_back[abi:ne200100](command_encoder + 2, v14);
      mlx::core::array::~array(v14);
      mlx::core::array::~array(&v25);
    }

    v13 = mlx::core::allocator::malloc((*(*a3 + 60) * *(*a3 + 48)));
    v23[0] = &unk_286BE3468;
    v23[1] = mlx::core::allocator::free;
    v23[3] = v23;
    mlx::core::array::set_data(a3, v13);
  }

  mlx::core::Scan::eval_cpu();
}

void sub_25A5C5BA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, uint64_t a29, char a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  __cxa_free_exception(v37);
  std::mutex::unlock(v36);
  mlx::core::array::~array((v40 + 32));
  mlx::core::array::~array((v40 + 16));
  mlx::core::array::~array((v39 + 16));
  mlx::core::array::~array((v41 - 208));
  mlx::core::array::~array((v38 + 16));
  mlx::core::array::~array(&a13);
  mlx::core::array::~array(&a30);
  _Unwind_Resume(a1);
}

void *mlx::core::Scan::print(uint64_t a1, void *a2)
{
  result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "Cum", 3);
  v5 = *(a1 + 20);
  if (v5 <= 1)
  {
    if (v5)
    {
      if (v5 != 1)
      {
        return result;
      }

      v6 = "Min";
    }

    else
    {
      v6 = "Max";
    }

    goto LABEL_12;
  }

  switch(v5)
  {
    case 4:
      v6 = "Logaddexp";
      v7 = a2;
      v8 = 9;
      break;
    case 3:
      v6 = "Prod";
      v7 = a2;
      v8 = 4;
      break;
    case 2:
      v6 = "Sum";
LABEL_12:
      v7 = a2;
      v8 = 3;
      break;
    default:
      return result;
  }

  return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v6, v8);
}

void *_ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_4Scan8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__0JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286BFF980;
  mlx::core::array::~array((a1 + 5));
  mlx::core::array::~array((a1 + 3));
  return a1;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_4Scan8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__0JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286BFF980;
  mlx::core::array::~array((a1 + 5));
  mlx::core::array::~array((a1 + 3));

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_4Scan8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__0JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEE7__cloneEPNS0_6__baseISO_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_286BFF980;
  v2 = *(result + 8);
  *(a2 + 16) = *(result + 16);
  *(a2 + 8) = v2;
  v3 = *(result + 32);
  *(a2 + 24) = *(result + 24);
  *(a2 + 32) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(result + 48);
  *(a2 + 40) = *(result + 40);
  *(a2 + 48) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(result + 56);
  *(a2 + 64) = *(result + 64);
  *(a2 + 56) = v5;
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_4Scan8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__0JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEE7destroyEv(uint64_t a1)
{
  mlx::core::array::~array((a1 + 40));

  mlx::core::array::~array((a1 + 24));
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_4Scan8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__0JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEE18destroy_deallocateEv(uint64_t a1)
{
  mlx::core::array::~array((a1 + 40));
  mlx::core::array::~array((a1 + 24));

  operator delete(a1);
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_4Scan8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__0JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEEclEv(uint64_t a1)
{
  v1 = mlx::core::Scan::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0::operator()((a1 + 24));
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_4Scan8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__0JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::anonymous namespace::scan_dispatch<BOOL,int>(int a1, uint64_t **this, uint64_t a3, int a4, char a5, char a6)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      if (a1 != 1)
      {
        return;
      }

      v25 = (*this)[7];
      v355 = v25;
      v356 = BYTE4(v25);
      mlx::core::issubdtype(&v355, &mlx::core::floating);
      v26 = *this;
      if (((*this)[21] & 2) != 0)
      {
        v27 = *(v26[3] + 8 * a4);
        v28 = v26[19];
        v29 = *(*a3 + 152);
        v30 = v26[6];
        v31 = v30 / mlx::core::array::shape(this, a4);
        if (v27 == 1)
        {
          v32 = mlx::core::array::shape(this, a4);
          if (a5)
          {
            if (a6)
            {
              if (v31 >= 1)
              {
                v33 = 0;
                v34 = v32 - 1;
                do
                {
                  v35 = &v29[v34];
                  v36 = &v28[v34];
                  v37 = v28[v34];
                  *v35 = v37;
                  v38 = v32 - 1;
                  if (v32 >= 2)
                  {
                    do
                    {
                      v40 = *--v36;
                      v39 = v40;
                      if (v40 < v37)
                      {
                        v37 = v39;
                      }

                      *--v35 = v37;
                      --v38;
                    }

                    while (v38);
                  }

                  v29 = &v35[v32];
                  v28 = &v36[v32];
                  ++v33;
                }

                while (v33 != v31);
              }
            }

            else if (v31 >= 1)
            {
              v327 = 0;
              v328 = v32 - 1;
              do
              {
                v329 = &v29[v328];
                v330 = &v28[v328];
                *v329 = 0x7FFFFFFF;
                if (v32 >= 2)
                {
                  v331 = 0x7FFFFFFF;
                  v332 = v32 - 1;
                  do
                  {
                    v334 = *v330--;
                    v333 = v334;
                    if (v334 < v331)
                    {
                      v331 = v333;
                    }

                    *--v329 = v331;
                    --v332;
                  }

                  while (v332);
                }

                v29 = &v329[v32];
                v28 = &v330[v32];
                ++v327;
              }

              while (v327 != v31);
            }
          }

          else if (a6)
          {
            if (v31 >= 1)
            {
              v223 = 0;
              do
              {
                v224 = *v28;
                *v29 = v224;
                v225 = v32 - 1;
                if (v32 >= 2)
                {
                  do
                  {
                    v227 = *++v28;
                    v226 = v227;
                    if (v227 < v224)
                    {
                      v224 = v226;
                    }

                    v29[1] = v224;
                    ++v29;
                    --v225;
                  }

                  while (v225);
                }

                ++v29;
                ++v28;
                ++v223;
              }

              while (v223 != v31);
            }
          }

          else if (v31 >= 1)
          {
            v343 = 0;
            do
            {
              *v29 = 0x7FFFFFFF;
              if (v32 >= 2)
              {
                v344 = 0x7FFFFFFF;
                v345 = v32 - 1;
                do
                {
                  v347 = *v28++;
                  v346 = v347;
                  if (v347 < v344)
                  {
                    v344 = v346;
                  }

                  v29[1] = v344;
                  ++v29;
                  --v345;
                }

                while (v345);
              }

              ++v29;
              ++v28;
              ++v343;
            }

            while (v343 != v31);
          }
        }

        else
        {
          v153 = v31 / *((*this)[3] + 8 * a4);
          v154 = mlx::core::array::shape(this, a4);
          v155 = v154;
          v156 = *((*this)[3] + 8 * a4);
          if (a5)
          {
            if (a6)
            {
              if (v153 >= 1)
              {
                v157 = 0;
                v158 = (v154 - 1) * v156;
                v159 = v154 * v156;
                do
                {
                  v160 = &v29[v158];
                  v161 = &v28[v158];
                  if (v156)
                  {
                    v162 = v156;
                    v163 = &v29[v158];
                    v164 = &v28[v158];
                    do
                    {
                      v165 = *v164++;
                      *v163++ = v165;
                      --v162;
                    }

                    while (v162);
                  }

                  if (v155 >= 2)
                  {
                    for (i = 1; i != v155; ++i)
                    {
                      v167 = v156;
                      if (v156 >= 1)
                      {
                        do
                        {
                          v168 = v160[v156 - 1];
                          v170 = *--v161;
                          v169 = v170;
                          if (v170 < v168)
                          {
                            v168 = v169;
                          }

                          *--v160 = v168;
                          --v167;
                        }

                        while (v167);
                      }
                    }
                  }

                  v29 = &v160[v159];
                  v28 = &v161[v159];
                  ++v157;
                }

                while (v157 != v153);
              }
            }

            else if (v153 >= 1)
            {
              v335 = 0;
              v336 = (v154 - 1) * v156;
              v337 = v154 * v156;
              do
              {
                v338 = &v29[v336];
                if (v156 >= 1)
                {
                  memset_pattern16(v338, &unk_25A9E0B80, 4 * v156);
                }

                v339 = &v28[v336];
                if (v155 > 1)
                {
                  for (j = 1; j != v155; ++j)
                  {
                    v341 = v156;
                    if (v156 >= 1)
                    {
                      do
                      {
                        v342 = v338[v156 - 1];
                        if (v339[v156 - 1] < v342)
                        {
                          v342 = v339[v156 - 1];
                        }

                        *--v338 = v342;
                        --v339;
                        --v341;
                      }

                      while (v341);
                    }
                  }
                }

                v29 = &v338[v337];
                v28 = &v339[v337];
                ++v335;
              }

              while (v335 != v153);
            }
          }

          else if (a6)
          {
            if (v153 >= 1)
            {
              v228 = 0;
              do
              {
                if (v156)
                {
                  v229 = v156;
                  v230 = v29;
                  v231 = v28;
                  do
                  {
                    v232 = *v231++;
                    *v230++ = v232;
                    --v229;
                  }

                  while (v229);
                }

                v28 += v156;
                v29 += v156;
                if (v154 >= 2)
                {
                  for (k = 1; k != v154; ++k)
                  {
                    v234 = v156;
                    if (v156 >= 1)
                    {
                      do
                      {
                        v235 = v29[-v156];
                        v237 = *v28++;
                        v236 = v237;
                        if (v237 < v235)
                        {
                          v235 = v236;
                        }

                        *v29++ = v235;
                        --v234;
                      }

                      while (v234);
                    }
                  }
                }

                ++v228;
              }

              while (v228 != v153);
            }
          }

          else if (v153 >= 1)
          {
            v348 = 0;
            do
            {
              if (v156 >= 1)
              {
                memset_pattern16(v29, &unk_25A9E0B80, 4 * v156);
              }

              v29 += v156;
              v28 += v156;
              if (v155 > 1)
              {
                for (m = 1; m != v155; ++m)
                {
                  v350 = v156;
                  if (v156 >= 1)
                  {
                    do
                    {
                      v351 = v29[-v156];
                      if (v28[-v156] < v351)
                      {
                        v351 = v28[-v156];
                      }

                      *v29++ = v351;
                      ++v28;
                      --v350;
                    }

                    while (v350);
                  }
                }
              }

              ++v348;
            }

            while (v348 != v153);
          }
        }

        return;
      }
    }

    else
    {
      v71 = (*this)[7];
      v355 = v71;
      v356 = BYTE4(v71);
      mlx::core::issubdtype(&v355, &mlx::core::floating);
      v72 = *this;
      if (((*this)[21] & 2) != 0)
      {
        v73 = *(v72[3] + 8 * a4);
        v74 = v72[19];
        v75 = *(*a3 + 152);
        v76 = v72[6];
        v77 = v76 / mlx::core::array::shape(this, a4);
        if (v73 == 1)
        {
          v78 = mlx::core::array::shape(this, a4);
          if (a5)
          {
            if (a6)
            {
              if (v77 >= 1)
              {
                v79 = 0;
                v80 = v78 - 1;
                do
                {
                  v81 = &v75[v80];
                  v82 = &v74[v80];
                  v83 = v74[v80];
                  *v81 = v83;
                  v84 = v78 - 1;
                  if (v78 >= 2)
                  {
                    do
                    {
                      v86 = *--v82;
                      v85 = v86;
                      if (v86 > v83)
                      {
                        v83 = v85;
                      }

                      *--v81 = v83;
                      --v84;
                    }

                    while (v84);
                  }

                  v75 = &v81[v78];
                  v74 = &v82[v78];
                  ++v79;
                }

                while (v79 != v77);
              }
            }

            else if (v77 >= 1)
            {
              v281 = 0;
              v282 = v78 - 1;
              do
              {
                v283 = &v75[v282];
                v284 = &v74[v282];
                *v283 = 0x80000000;
                if (v78 >= 2)
                {
                  v285 = 0x80000000;
                  v286 = v78 - 1;
                  do
                  {
                    v288 = *v284--;
                    v287 = v288;
                    if (v288 > v285)
                    {
                      v285 = v287;
                    }

                    *--v283 = v285;
                    --v286;
                  }

                  while (v286);
                }

                v75 = &v283[v78];
                v74 = &v284[v78];
                ++v281;
              }

              while (v281 != v77);
            }
          }

          else if (a6)
          {
            if (v77 >= 1)
            {
              v196 = 0;
              do
              {
                v197 = *v74;
                *v75 = v197;
                v198 = v78 - 1;
                if (v78 >= 2)
                {
                  do
                  {
                    v200 = *++v74;
                    v199 = v200;
                    if (v200 > v197)
                    {
                      v197 = v199;
                    }

                    v75[1] = v197;
                    ++v75;
                    --v198;
                  }

                  while (v198);
                }

                ++v75;
                ++v74;
                ++v196;
              }

              while (v196 != v77);
            }
          }

          else if (v77 >= 1)
          {
            v297 = 0;
            do
            {
              *v75 = 0x80000000;
              if (v78 >= 2)
              {
                v298 = 0x80000000;
                v299 = v78 - 1;
                do
                {
                  v301 = *v74++;
                  v300 = v301;
                  if (v301 > v298)
                  {
                    v298 = v300;
                  }

                  v75[1] = v298;
                  ++v75;
                  --v299;
                }

                while (v299);
              }

              ++v75;
              ++v74;
              ++v297;
            }

            while (v297 != v77);
          }
        }

        else
        {
          v119 = v77 / *((*this)[3] + 8 * a4);
          v120 = mlx::core::array::shape(this, a4);
          v121 = v120;
          v122 = *((*this)[3] + 8 * a4);
          if (a5)
          {
            if (a6)
            {
              if (v119 >= 1)
              {
                v123 = 0;
                v124 = (v120 - 1) * v122;
                v125 = v120 * v122;
                do
                {
                  v126 = &v75[v124];
                  v127 = &v74[v124];
                  if (v122)
                  {
                    v128 = v122;
                    v129 = &v75[v124];
                    v130 = &v74[v124];
                    do
                    {
                      v131 = *v130++;
                      *v129++ = v131;
                      --v128;
                    }

                    while (v128);
                  }

                  if (v121 >= 2)
                  {
                    for (n = 1; n != v121; ++n)
                    {
                      v133 = v122;
                      if (v122 >= 1)
                      {
                        do
                        {
                          v134 = v126[v122 - 1];
                          v136 = *--v127;
                          v135 = v136;
                          if (v136 > v134)
                          {
                            v134 = v135;
                          }

                          *--v126 = v134;
                          --v133;
                        }

                        while (v133);
                      }
                    }
                  }

                  v75 = &v126[v125];
                  v74 = &v127[v125];
                  ++v123;
                }

                while (v123 != v119);
              }
            }

            else if (v119 >= 1)
            {
              v289 = 0;
              v290 = (v120 - 1) * v122;
              v291 = v120 * v122;
              do
              {
                v292 = &v75[v290];
                if (v122 >= 1)
                {
                  memset_pattern16(v292, &unk_25A9E0B70, 4 * v122);
                }

                v293 = &v74[v290];
                if (v121 > 1)
                {
                  for (ii = 1; ii != v121; ++ii)
                  {
                    v295 = v122;
                    if (v122 >= 1)
                    {
                      do
                      {
                        v296 = v292[v122 - 1];
                        if (v293[v122 - 1] > v296)
                        {
                          v296 = v293[v122 - 1];
                        }

                        *--v292 = v296;
                        --v293;
                        --v295;
                      }

                      while (v295);
                    }
                  }
                }

                v75 = &v292[v291];
                v74 = &v293[v291];
                ++v289;
              }

              while (v289 != v119);
            }
          }

          else if (a6)
          {
            if (v119 >= 1)
            {
              v201 = 0;
              do
              {
                if (v122)
                {
                  v202 = v122;
                  v203 = v75;
                  v204 = v74;
                  do
                  {
                    v205 = *v204++;
                    *v203++ = v205;
                    --v202;
                  }

                  while (v202);
                }

                v74 += v122;
                v75 += v122;
                if (v120 >= 2)
                {
                  for (jj = 1; jj != v120; ++jj)
                  {
                    v207 = v122;
                    if (v122 >= 1)
                    {
                      do
                      {
                        v208 = v75[-v122];
                        v210 = *v74++;
                        v209 = v210;
                        if (v210 > v208)
                        {
                          v208 = v209;
                        }

                        *v75++ = v208;
                        --v207;
                      }

                      while (v207);
                    }
                  }
                }

                ++v201;
              }

              while (v201 != v119);
            }
          }

          else if (v119 >= 1)
          {
            v302 = 0;
            do
            {
              if (v122 >= 1)
              {
                memset_pattern16(v75, &unk_25A9E0B70, 4 * v122);
              }

              v75 += v122;
              v74 += v122;
              if (v121 > 1)
              {
                for (kk = 1; kk != v121; ++kk)
                {
                  v304 = v122;
                  if (v122 >= 1)
                  {
                    do
                    {
                      v305 = v75[-v122];
                      if (v74[-v122] > v305)
                      {
                        v305 = v74[-v122];
                      }

                      *v75++ = v305;
                      ++v74;
                      --v304;
                    }

                    while (v304);
                  }
                }
              }

              ++v302;
            }

            while (v302 != v119);
          }
        }

        return;
      }
    }

LABEL_459:
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Scan op supports only contiguous inputs");
LABEL_460:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (a1 == 4)
  {
    v41 = (*this)[7];
    v355 = v41;
    v356 = BYTE4(v41);
    mlx::core::issubdtype(&v355, &mlx::core::floating);
    v42 = *this;
    if (((*this)[21] & 2) != 0)
    {
      v43 = *(v42[3] + 8 * a4);
      v44 = v42[19];
      v45 = *(*a3 + 152);
      v46 = v42[6];
      v47 = v46 / mlx::core::array::shape(this, a4);
      if (v43 == 1)
      {
        v48 = mlx::core::array::shape(this, a4);
        v49 = v48;
        if (a5)
        {
          if (a6)
          {
            if (v47 >= 1)
            {
              v50 = 0;
              v51 = v48 - 1;
              do
              {
                v52 = &v45[v51];
                v53 = &v44[v51];
                v54 = v44[v51];
                *v52 = v54;
                v55 = v49 - 1;
                if (v49 >= 2)
                {
                  do
                  {
                    v56 = *--v53;
                    v54 = mlx::core::detail::LogAddExp::operator()<1,int>(&v355, v54, v56);
                    *--v52 = v54;
                    --v55;
                  }

                  while (v55);
                }

                v45 = &v52[v49];
                v44 = &v53[v49];
                ++v50;
              }

              while (v50 != v47);
            }
          }

          else if (v47 >= 1)
          {
            v238 = 0;
            v239 = v48 - 1;
            do
            {
              v240 = &v45[v239];
              v241 = &v44[v239];
              *v240 = 0x80000000;
              if (v49 >= 2)
              {
                v242 = 0x80000000;
                v243 = v49 - 1;
                do
                {
                  v244 = *v241--;
                  v242 = mlx::core::detail::LogAddExp::operator()<1,int>(&v355, v242, v244);
                  *--v240 = v242;
                  --v243;
                }

                while (v243);
              }

              v45 = &v240[v49];
              v44 = &v241[v49];
              ++v238;
            }

            while (v238 != v47);
          }
        }

        else if (a6)
        {
          if (v47 >= 1)
          {
            v171 = 0;
            do
            {
              v172 = *v44;
              *v45 = v172;
              v173 = v49 - 1;
              if (v49 >= 2)
              {
                do
                {
                  v174 = *++v44;
                  v172 = mlx::core::detail::LogAddExp::operator()<1,int>(&v355, v172, v174);
                  v45[1] = v172;
                  ++v45;
                  --v173;
                }

                while (v173);
              }

              ++v45;
              ++v44;
              ++v171;
            }

            while (v171 != v47);
          }
        }

        else if (v47 >= 1)
        {
          v251 = 0;
          do
          {
            *v45 = 0x80000000;
            if (v49 >= 2)
            {
              v252 = 0x80000000;
              v253 = v49 - 1;
              do
              {
                v254 = *v44++;
                v252 = mlx::core::detail::LogAddExp::operator()<1,int>(&v355, v252, v254);
                v45[1] = v252;
                ++v45;
                --v253;
              }

              while (v253);
            }

            ++v45;
            ++v44;
            ++v251;
          }

          while (v251 != v47);
        }
      }

      else
      {
        v354 = v47 / *((*this)[3] + 8 * a4);
        v87 = mlx::core::array::shape(this, a4);
        v88 = v87;
        v89 = *((*this)[3] + 8 * a4);
        if (a5)
        {
          if (a6)
          {
            if (v354 >= 1)
            {
              v90 = 0;
              v91 = (v87 - 1) * v89;
              v92 = v87 * v89;
              do
              {
                v93 = &v45[v91];
                v94 = &v44[v91];
                if (v89)
                {
                  v95 = v89;
                  v96 = v93;
                  v97 = v94;
                  do
                  {
                    v98 = *v97++;
                    *v96++ = v98;
                    --v95;
                  }

                  while (v95);
                }

                if (v88 >= 2)
                {
                  for (mm = 1; mm != v88; ++mm)
                  {
                    v100 = v89;
                    if (v89 >= 1)
                    {
                      do
                      {
                        v101 = *--v94;
                        *(v93 - 1) = mlx::core::detail::LogAddExp::operator()<1,int>(&v355, v93[v89 - 1], v101);
                        --v93;
                        --v100;
                      }

                      while (v100);
                    }
                  }
                }

                v45 = &v93[v92];
                v44 = &v94[v92];
                ++v90;
              }

              while (v90 != v354);
            }
          }

          else if (v354 >= 1)
          {
            v245 = 0;
            v246 = v87 * v89;
            v353 = (v87 - 1) * v89;
            do
            {
              v247 = &v45[v353];
              if (v89 >= 1)
              {
                memset_pattern16(v247, &unk_25A9E0B70, 4 * v89);
              }

              v248 = &v44[v353];
              if (v88 > 1)
              {
                for (nn = 1; nn != v88; ++nn)
                {
                  v250 = v89;
                  if (v89 >= 1)
                  {
                    do
                    {
                      *(v247 - 1) = mlx::core::detail::LogAddExp::operator()<1,int>(&v355, v247[v89 - 1], v248[v89 - 1]);
                      --v247;
                      --v248;
                      --v250;
                    }

                    while (v250);
                  }
                }
              }

              v45 = &v247[v246];
              v44 = &v248[v246];
              ++v245;
            }

            while (v245 != v354);
          }
        }

        else if (a6)
        {
          if (v354 >= 1)
          {
            v175 = 0;
            do
            {
              if (v89)
              {
                v176 = v89;
                v177 = v45;
                v178 = v44;
                do
                {
                  v179 = *v178++;
                  *v177++ = v179;
                  --v176;
                }

                while (v176);
              }

              v44 += v89;
              v45 += v89;
              if (v88 >= 2)
              {
                for (i1 = 1; i1 != v88; ++i1)
                {
                  v181 = v89;
                  if (v89 >= 1)
                  {
                    do
                    {
                      v182 = *v44++;
                      *v45 = mlx::core::detail::LogAddExp::operator()<1,int>(&v355, v45[-v89], v182);
                      ++v45;
                      --v181;
                    }

                    while (v181);
                  }
                }
              }

              ++v175;
            }

            while (v175 != v354);
          }
        }

        else if (v354 >= 1)
        {
          v255 = 0;
          do
          {
            if (v89 >= 1)
            {
              memset_pattern16(v45, &unk_25A9E0B70, 4 * v89);
            }

            v45 += v89;
            v44 += v89;
            if (v88 > 1)
            {
              for (i2 = 1; i2 != v88; ++i2)
              {
                v257 = v89;
                if (v89 >= 1)
                {
                  do
                  {
                    *v45 = mlx::core::detail::LogAddExp::operator()<1,int>(&v355, v45[-v89], v44[-v89]);
                    ++v45;
                    ++v44;
                    --v257;
                  }

                  while (v257);
                }
              }
            }

            ++v255;
          }

          while (v255 != v354);
        }
      }

      return;
    }

    goto LABEL_459;
  }

  if (a1 != 3)
  {
    if (a1 != 2)
    {
      return;
    }

    v11 = *this;
    if (((*this)[21] & 2) != 0)
    {
      v12 = *(v11[3] + 8 * a4);
      v13 = v11[19];
      v14 = *(*a3 + 152);
      v15 = v11[6];
      v16 = v15 / mlx::core::array::shape(this, a4);
      if (v12 == 1)
      {
        v17 = mlx::core::array::shape(this, a4);
        if (a5)
        {
          if (a6)
          {
            if (v16 >= 1)
            {
              v18 = 0;
              v19 = v17 - 1;
              do
              {
                v20 = &v14[4 * v19];
                v21 = &v13[v19];
                v22 = v13[v19];
                *v20 = v22;
                v23 = v17 - 1;
                if (v17 >= 2)
                {
                  do
                  {
                    v24 = *--v21;
                    v22 += v24;
                    *(v20 - 1) = v22;
                    v20 -= 4;
                    --v23;
                  }

                  while (v23);
                }

                v14 = &v20[4 * v17];
                v13 = &v21[v17];
                ++v18;
              }

              while (v18 != v16);
            }
          }

          else if (v16 >= 1)
          {
            v306 = 0;
            v307 = v17 - 1;
            do
            {
              v308 = &v14[4 * v307];
              v309 = &v13[v307];
              *v308 = 0;
              if (v17 >= 2)
              {
                v310 = 0;
                v311 = v17 - 1;
                do
                {
                  v312 = *v309--;
                  v310 += v312;
                  *(v308 - 1) = v310;
                  v308 -= 4;
                  --v311;
                }

                while (v311);
              }

              v14 = &v308[4 * v17];
              v13 = &v309[v17];
              ++v306;
            }

            while (v306 != v16);
          }
        }

        else if (a6)
        {
          if (v16 >= 1)
          {
            v211 = 0;
            do
            {
              v212 = *v13;
              *v14 = v212;
              v213 = v17 - 1;
              if (v17 >= 2)
              {
                do
                {
                  v214 = *++v13;
                  v212 += v214;
                  *(v14 + 1) = v212;
                  v14 += 4;
                  --v213;
                }

                while (v213);
              }

              v14 += 4;
              ++v13;
              ++v211;
            }

            while (v211 != v16);
          }
        }

        else if (v16 >= 1)
        {
          v320 = 0;
          do
          {
            *v14 = 0;
            if (v17 >= 2)
            {
              v321 = 0;
              v322 = v17 - 1;
              do
              {
                v323 = *v13++;
                v321 += v323;
                *(v14 + 1) = v321;
                v14 += 4;
                --v322;
              }

              while (v322);
            }

            v14 += 4;
            ++v13;
            ++v320;
          }

          while (v320 != v16);
        }
      }

      else
      {
        v137 = v16 / *((*this)[3] + 8 * a4);
        v138 = mlx::core::array::shape(this, a4);
        v139 = v138;
        v140 = *((*this)[3] + 8 * a4);
        if (a5)
        {
          if (a6)
          {
            if (v137 >= 1)
            {
              v141 = 0;
              v142 = (v138 - 1) * v140;
              v143 = v138 * v140;
              do
              {
                v144 = &v14[4 * v142];
                v145 = &v13[v142];
                if (v140)
                {
                  v146 = v140;
                  v147 = &v14[4 * v142];
                  v148 = &v13[v142];
                  do
                  {
                    v149 = *v148++;
                    *v147 = v149;
                    v147 += 4;
                    --v146;
                  }

                  while (v146);
                }

                if (v138 >= 2)
                {
                  for (i3 = 1; i3 != v138; ++i3)
                  {
                    v151 = v140;
                    if (v140 >= 1)
                    {
                      do
                      {
                        v152 = *--v145;
                        *(v144 - 1) = *&v144[4 * v140 - 4] + v152;
                        v144 -= 4;
                        --v151;
                      }

                      while (v151);
                    }
                  }
                }

                v14 = &v144[4 * v143];
                v13 = &v145[v143];
                ++v141;
              }

              while (v141 != v137);
            }
          }

          else if (v137 >= 1)
          {
            v313 = 0;
            v314 = (v138 - 1) * v140;
            v315 = v138 * v140;
            do
            {
              v316 = &v14[4 * v314];
              if (v140 >= 1)
              {
                bzero(v316, 4 * v140);
              }

              v317 = &v13[v314];
              if (v139 > 1)
              {
                for (i4 = 1; i4 != v139; ++i4)
                {
                  v319 = v140;
                  if (v140 >= 1)
                  {
                    do
                    {
                      *(v316 - 1) = *&v316[4 * v140 - 4] + v317[v140 - 1];
                      v316 -= 4;
                      --v317;
                      --v319;
                    }

                    while (v319);
                  }
                }
              }

              v14 = &v316[4 * v315];
              v13 = &v317[v315];
              ++v313;
            }

            while (v313 != v137);
          }
        }

        else if (a6)
        {
          if (v137 >= 1)
          {
            v215 = 0;
            do
            {
              if (v140)
              {
                v216 = v140;
                v217 = v14;
                v218 = v13;
                do
                {
                  v219 = *v218++;
                  *v217 = v219;
                  v217 += 4;
                  --v216;
                }

                while (v216);
              }

              v13 += v140;
              v14 += 4 * v140;
              if (v138 >= 2)
              {
                for (i5 = 1; i5 != v138; ++i5)
                {
                  v221 = v140;
                  if (v140 >= 1)
                  {
                    do
                    {
                      v222 = *v13++;
                      *v14 = *&v14[-4 * v140] + v222;
                      v14 += 4;
                      --v221;
                    }

                    while (v221);
                  }
                }
              }

              ++v215;
            }

            while (v215 != v137);
          }
        }

        else if (v137 >= 1)
        {
          v324 = 0;
          do
          {
            if (v140 >= 1)
            {
              bzero(v14, 4 * v140);
            }

            v14 += 4 * v140;
            v13 += v140;
            if (v139 > 1)
            {
              for (i6 = 1; i6 != v139; ++i6)
              {
                v326 = v140;
                if (v140 >= 1)
                {
                  do
                  {
                    *v14 = *&v14[-4 * v140] + v13[-v140];
                    v14 += 4;
                    ++v13;
                    --v326;
                  }

                  while (v326);
                }
              }
            }

            ++v324;
          }

          while (v324 != v137);
        }
      }

      return;
    }

    goto LABEL_455;
  }

  v57 = *this;
  if (((*this)[21] & 2) == 0)
  {
LABEL_455:
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Scan op supports only contiguous inputs");
    goto LABEL_460;
  }

  v58 = *(v57[3] + 8 * a4);
  v59 = v57[19];
  v60 = *(*a3 + 152);
  v61 = v57[6];
  v62 = v61 / mlx::core::array::shape(this, a4);
  if (v58 == 1)
  {
    v63 = mlx::core::array::shape(this, a4);
    if (a5)
    {
      if (a6)
      {
        if (v62 >= 1)
        {
          v64 = 0;
          v65 = v63 - 1;
          do
          {
            v66 = &v60[4 * v65];
            v67 = &v59[v65];
            v68 = v59[v65];
            *v66 = v68;
            v69 = v63 - 1;
            if (v63 >= 2)
            {
              do
              {
                if (!*--v67)
                {
                  v68 = 0;
                }

                *(v66 - 1) = v68;
                v66 -= 4;
                --v69;
              }

              while (v69);
            }

            v60 = &v66[4 * v63];
            v59 = &v67[v63];
            ++v64;
          }

          while (v64 != v62);
        }
      }

      else if (v62 >= 1)
      {
        v258 = 0;
        v259 = v63 - 1;
        do
        {
          v260 = &v60[4 * v259];
          v261 = &v59[v259];
          *v260 = 1;
          if (v63 >= 2)
          {
            v262 = 1;
            v263 = v63 - 1;
            do
            {
              if (!*v261--)
              {
                v262 = 0;
              }

              *(v260 - 1) = v262;
              v260 -= 4;
              --v263;
            }

            while (v263);
          }

          v60 = &v260[4 * v63];
          v59 = &v261[v63];
          ++v258;
        }

        while (v258 != v62);
      }
    }

    else if (a6)
    {
      if (v62 >= 1)
      {
        v183 = 0;
        do
        {
          v184 = *v59;
          *v60 = v184;
          v185 = v63 - 1;
          if (v63 >= 2)
          {
            do
            {
              if (!*++v59)
              {
                v184 = 0;
              }

              *(v60 + 1) = v184;
              v60 += 4;
              --v185;
            }

            while (v185);
          }

          v60 += 4;
          ++v59;
          ++v183;
        }

        while (v183 != v62);
      }
    }

    else if (v62 >= 1)
    {
      v273 = 0;
      do
      {
        *v60 = 1;
        if (v63 >= 2)
        {
          v274 = 1;
          v275 = v63 - 1;
          do
          {
            if (!*v59++)
            {
              v274 = 0;
            }

            *(v60 + 1) = v274;
            v60 += 4;
            --v275;
          }

          while (v275);
        }

        v60 += 4;
        ++v59;
        ++v273;
      }

      while (v273 != v62);
    }
  }

  else
  {
    v102 = v62 / *((*this)[3] + 8 * a4);
    v103 = mlx::core::array::shape(this, a4);
    v104 = v103;
    v105 = *((*this)[3] + 8 * a4);
    if (a5)
    {
      if (a6)
      {
        if (v102 >= 1)
        {
          v106 = 0;
          v107 = (v103 - 1) * v105;
          v108 = v103 * v105;
          do
          {
            v109 = &v60[4 * v107];
            v110 = &v59[v107];
            if (v105)
            {
              v111 = v105;
              v112 = &v60[4 * v107];
              v113 = &v59[v107];
              do
              {
                v114 = *v113++;
                *v112 = v114;
                v112 += 4;
                --v111;
              }

              while (v111);
            }

            if (v103 >= 2)
            {
              for (i7 = 1; i7 != v103; ++i7)
              {
                v116 = v105;
                if (v105 >= 1)
                {
                  do
                  {
                    v117 = *&v109[4 * v105 - 4];
                    if (!*--v110)
                    {
                      v117 = 0;
                    }

                    *(v109 - 1) = v117;
                    v109 -= 4;
                    --v116;
                  }

                  while (v116);
                }
              }
            }

            v60 = &v109[4 * v108];
            v59 = &v110[v108];
            ++v106;
          }

          while (v106 != v102);
        }
      }

      else if (v102 >= 1)
      {
        v265 = 0;
        v266 = (v103 - 1) * v105;
        v267 = v103 * v105;
        do
        {
          v268 = &v60[4 * v266];
          if (v105 >= 1)
          {
            memset_pattern16(v268, &unk_25A9E0B60, 4 * v105);
          }

          v269 = &v59[v266];
          if (v104 > 1)
          {
            for (i8 = 1; i8 != v104; ++i8)
            {
              v271 = v105;
              if (v105 >= 1)
              {
                do
                {
                  v272 = *&v268[4 * v105 - 4];
                  if (!v269[v105 - 1])
                  {
                    v272 = 0;
                  }

                  *(v268 - 1) = v272;
                  v268 -= 4;
                  --v269;
                  --v271;
                }

                while (v271);
              }
            }
          }

          v60 = &v268[4 * v267];
          v59 = &v269[v267];
          ++v265;
        }

        while (v265 != v102);
      }
    }

    else if (a6)
    {
      if (v102 >= 1)
      {
        v187 = 0;
        do
        {
          if (v105)
          {
            v188 = v105;
            v189 = v60;
            v190 = v59;
            do
            {
              v191 = *v190++;
              *v189 = v191;
              v189 += 4;
              --v188;
            }

            while (v188);
          }

          v59 += v105;
          v60 += 4 * v105;
          if (v103 >= 2)
          {
            for (i9 = 1; i9 != v103; ++i9)
            {
              v193 = v105;
              if (v105 >= 1)
              {
                do
                {
                  v194 = *&v60[-4 * v105];
                  if (!*v59++)
                  {
                    v194 = 0;
                  }

                  *v60 = v194;
                  v60 += 4;
                  --v193;
                }

                while (v193);
              }
            }
          }

          ++v187;
        }

        while (v187 != v102);
      }
    }

    else if (v102 >= 1)
    {
      v277 = 0;
      do
      {
        if (v105 >= 1)
        {
          memset_pattern16(v60, &unk_25A9E0B60, 4 * v105);
        }

        v60 += 4 * v105;
        v59 += v105;
        if (v104 > 1)
        {
          for (i10 = 1; i10 != v104; ++i10)
          {
            v279 = v105;
            if (v105 >= 1)
            {
              do
              {
                v280 = *&v60[-4 * v105];
                if (!v59[-v105])
                {
                  v280 = 0;
                }

                *v60 = v280;
                v60 += 4;
                ++v59;
                --v279;
              }

              while (v279);
            }
          }
        }

        ++v277;
      }

      while (v277 != v102);
    }
  }
}

uint64_t mlx::core::detail::LogAddExp::operator()<1,int>(uint64_t a1, int a2, int a3)
{
  if (a2 <= a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = a2;
  }

  if (a2 >= a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = a2;
  }

  v5 = v4 - v3;
  v6 = v5 * 1.4427;
  v7 = floor(v6 + 0.5);
  v8 = v6 - v7;
  if (v5 >= -88)
  {
    v9 = (((((((((((((v8 * 0.00015353) + 0.0013399) * v8) + 0.0096184) * v8) + 0.055503) * v8) + 0.24023) * v8) + 0.69315) * v8) + 1.0) * COERCE_FLOAT((v7 << 23) + 1065353216));
  }

  else
  {
    v9 = 0;
  }

  return (v3 + log1p(v9));
}

BOOL mlx::core::detail::LogAddExp::operator()<1,BOOL>(uint64_t a1, char a2, char a3)
{
  if ((a2 & 1u) <= (a3 & 1u))
  {
    v3 = a3;
  }

  else
  {
    v3 = a2;
  }

  v4 = v3 & 1;
  if ((a2 & 1u) >= (a3 & 1u))
  {
    v5 = a3;
  }

  else
  {
    v5 = a2;
  }

  v6 = ((v5 & 1) - v4) * 1.4427;
  v7 = floor(v6 + 0.5);
  v8 = v6 - v7;
  return v4 + log1p((((((((((((((v8 * 0.00015353) + 0.0013399) * v8) + 0.0096184) * v8) + 0.055503) * v8) + 0.24023) * v8) + 0.69315) * v8) + 1.0) * COERCE_FLOAT((v7 << 23) + 1065353216))) != 0;
}

uint64_t mlx::core::detail::LogAddExp::operator()<1,unsigned char>(uint64_t a1, unsigned __int8 a2, unsigned __int8 a3)
{
  v3 = a2;
  if (a2 <= a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = a2;
  }

  if (a2 >= a3)
  {
    v3 = a3;
  }

  v5 = v3 - v4;
  v6 = v5 * 1.4427;
  v7 = floor(v6 + 0.5);
  v8 = v6 - v7;
  if (v5 >= -88)
  {
    v9 = (((((((((((((v8 * 0.00015353) + 0.0013399) * v8) + 0.0096184) * v8) + 0.055503) * v8) + 0.24023) * v8) + 0.69315) * v8) + 1.0) * COERCE_FLOAT((v7 << 23) + 1065353216));
  }

  else
  {
    v9 = 0;
  }

  return (log1p(v9) + v4);
}

uint64_t mlx::core::detail::LogAddExp::operator()<1,unsigned short>(uint64_t a1, unsigned __int16 a2, unsigned __int16 a3)
{
  v3 = a2;
  if (a2 <= a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = a2;
  }

  if (a2 >= a3)
  {
    v3 = a3;
  }

  v5 = v3 - v4;
  v6 = v5 * 1.4427;
  v7 = floor(v6 + 0.5);
  v8 = v6 - v7;
  if (v5 >= -88)
  {
    v9 = (((((((((((((v8 * 0.00015353) + 0.0013399) * v8) + 0.0096184) * v8) + 0.055503) * v8) + 0.24023) * v8) + 0.69315) * v8) + 1.0) * COERCE_FLOAT((v7 << 23) + 1065353216));
  }

  else
  {
    v9 = 0;
  }

  return (log1p(v9) + v4);
}

uint64_t mlx::core::detail::LogAddExp::operator()<1,unsigned int>(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a2 <= a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = a2;
  }

  if (a2 >= a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = a2;
  }

  v5 = (v4 - v3) * 1.4427;
  v6 = floor(v5 + 0.5);
  v7 = v5 - v6;
  return v3 + log1p((((((((((((((v7 * 0.00015353) + 0.0013399) * v7) + 0.0096184) * v7) + 0.055503) * v7) + 0.24023) * v7) + 0.69315) * v7) + 1.0) * COERCE_FLOAT((v6 << 23) + 1065353216)));
}

unint64_t mlx::core::detail::LogAddExp::operator()<1,unsigned long long>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (a2 <= a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = a2;
  }

  if (a2 >= a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = a2;
  }

  v5 = (v4 - v3) * 1.4427;
  v6 = floor(v5 + 0.5);
  v7 = v5 - v6;
  return v3 + log1p((((((((((((((v7 * 0.00015353) + 0.0013399) * v7) + 0.0096184) * v7) + 0.055503) * v7) + 0.24023) * v7) + 0.69315) * v7) + 1.0) * COERCE_FLOAT((v6 << 23) + 1065353216)));
}

uint64_t mlx::core::detail::LogAddExp::operator()<1,signed char>(uint64_t a1, char a2, char a3)
{
  v3 = a2;
  if (a2 <= a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = a2;
  }

  if (a2 >= a3)
  {
    v3 = a3;
  }

  v5 = v3 - v4;
  v6 = v5 * 1.4427;
  v7 = floor(v6 + 0.5);
  v8 = v6 - v7;
  if (v5 >= -88)
  {
    v9 = (((((((((((((v8 * 0.00015353) + 0.0013399) * v8) + 0.0096184) * v8) + 0.055503) * v8) + 0.24023) * v8) + 0.69315) * v8) + 1.0) * COERCE_FLOAT((v7 << 23) + 1065353216));
  }

  else
  {
    v9 = 0;
  }

  return (v4 + log1p(v9));
}

uint64_t mlx::core::detail::LogAddExp::operator()<1,short>(uint64_t a1, __int16 a2, __int16 a3)
{
  v3 = a2;
  if (a2 <= a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = a2;
  }

  if (a2 >= a3)
  {
    v3 = a3;
  }

  v5 = v3 - v4;
  v6 = v5 * 1.4427;
  v7 = floor(v6 + 0.5);
  v8 = v6 - v7;
  if (v5 >= -88)
  {
    v9 = (((((((((((((v8 * 0.00015353) + 0.0013399) * v8) + 0.0096184) * v8) + 0.055503) * v8) + 0.24023) * v8) + 0.69315) * v8) + 1.0) * COERCE_FLOAT((v7 << 23) + 1065353216));
  }

  else
  {
    v9 = 0;
  }

  return (v4 + log1p(v9));
}

uint64_t mlx::core::detail::LogAddExp::operator()<1,long long>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 <= a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = a2;
  }

  if (a2 >= a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = a2;
  }

  v5 = v4 - v3;
  v6 = v5 * 1.4427;
  v7 = floor(v6 + 0.5);
  v8 = v6 - v7;
  v9 = ((((((((((((v8 * 0.00015353) + 0.0013399) * v8) + 0.0096184) * v8) + 0.055503) * v8) + 0.24023) * v8) + 0.69315) * v8) + 1.0) * COERCE_FLOAT((v7 << 23) + 1065353216);
  if (v5 >= -88)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  return v3 + log1p(v10);
}

void mlx::core::detail::LogAddExp::operator()<1,half>(__n128 a1, __n128 a2)
{
  if (*a1.n128_u16 <= *a2.n128_u16)
  {
    _H8 = a2.n128_u16[0];
  }

  else
  {
    _H8 = a1.n128_u16[0];
  }

  if (*a1.n128_u16 >= *a2.n128_u16)
  {
    _H9 = a2.n128_u16[0];
  }

  else
  {
    _H9 = a1.n128_u16[0];
  }

  __asm
  {
    FCVT            S0, H9
    FCVT            S10, H8
  }

  v10 = mlx::core::simd::exp<float,1>(_S0 - _S10);
  _S0 = log1pf(v10) + _S10;
  __asm { FCVT            H0, S0 }
}

void mlx::core::detail::LogAddExp::operator()<1,float>(float a1, float a2)
{
  if (a1 <= a2)
  {
    v2 = a2;
  }

  else
  {
    v2 = a1;
  }

  if (a1 >= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = a1;
  }

  v4 = mlx::core::simd::exp<float,1>(v3 - v2);
  log1pf(v4);
}

void mlx::core::detail::LogAddExp::operator()<1,double>(double a1, double a2)
{
  if (a1 <= a2)
  {
    v2 = a2;
  }

  else
  {
    v2 = a1;
  }

  if (a1 >= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = a1;
  }

  v4 = mlx::core::simd::exp<double,1>(v3 - v2);
  log1p(v4);
}

uint64_t mlx::core::detail::LogAddExp::operator()<1,mlx::core::_MLX_BFloat16>(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (COERCE_FLOAT(a2 << 16) <= COERCE_FLOAT(a3 << 16))
  {
    v3 = a3;
  }

  else
  {
    v3 = a2;
  }

  if (COERCE_FLOAT(a2 << 16) >= COERCE_FLOAT(a3 << 16))
  {
    v4 = a3;
  }

  else
  {
    v4 = a2;
  }

  LODWORD(v5) = v4 << 16;
  v6 = mlx::core::simd::exp<mlx::core::_MLX_BFloat16,1>((COERCE_INT(COERCE_FLOAT(v4 << 16) - COERCE_FLOAT(v3 << 16)) + (HIWORD(COERCE_UNSIGNED_INT(COERCE_FLOAT(v4 << 16) - COERCE_FLOAT(v3 << 16))) & 1) + 0x7FFF) >> 16);
  v7 = log1pf(COERCE_FLOAT(v6 << 16));
  LODWORD(v8) = (LODWORD(v7) + (HIWORD(LODWORD(v7)) & 1) + 0x7FFF) & 0xFFFF0000;
  if (COERCE_FLOAT(v3 << 16) == INFINITY || v5 == -INFINITY)
  {
    return v3;
  }

  else
  {
    return (COERCE_INT(v8 + COERCE_FLOAT(v3 << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v8 + COERCE_FLOAT(v3 << 16))) & 1) + 0x7FFF) >> 16;
  }
}

void mlx::core::detail::LogAddExp::operator()<1,mlx::core::complex64_t>(float a1, float a2, float a3, float a4)
{
  if (a1 > a3 || (a1 == a3 ? (v4 = a2 <= a4) : (v4 = 1), v5 = a3, v6 = a4, !v4))
  {
    v5 = a1;
    v6 = a2;
  }

  if (a3 <= a1 && (a3 != a1 || a4 <= a2))
  {
    a1 = a3;
    a2 = a4;
  }

  v9[0] = a1 - v5;
  v9[1] = a2 - v6;
  std::exp[abi:ne200100]<float>(v9);
  mlx::core::simd::log1p<mlx::core::complex64_t>(v7, v8);
}

void *std::__function::__func<std::__bind<mlx::core::Scan::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>,std::allocator<std::__bind<mlx::core::Scan::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BFFA00;
  mlx::core::array::~array((a1 + 3));
  mlx::core::array::~array((a1 + 1));
  return a1;
}

void std::__function::__func<std::__bind<mlx::core::Scan::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>,std::allocator<std::__bind<mlx::core::Scan::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BFFA00;
  mlx::core::array::~array((a1 + 3));
  mlx::core::array::~array((a1 + 1));

  JUMPOUT(0x25F851760);
}

uint64_t std::__function::__func<std::__bind<mlx::core::Scan::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>,std::allocator<std::__bind<mlx::core::Scan::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>>,void ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_286BFFA00;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(result + 32);
  *(a2 + 24) = *(result + 24);
  *(a2 + 32) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(result + 40);
  *(a2 + 48) = *(result + 48);
  *(a2 + 40) = v5;
  *(a2 + 57) = 0;
  *(a2 + 60) = 0;
  return result;
}

void std::__function::__func<std::__bind<mlx::core::Scan::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>,std::allocator<std::__bind<mlx::core::Scan::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>>,void ()(void)>::destroy(uint64_t a1)
{
  mlx::core::array::~array((a1 + 24));

  mlx::core::array::~array((a1 + 8));
}

void std::__function::__func<std::__bind<mlx::core::Scan::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>,std::allocator<std::__bind<mlx::core::Scan::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>>,void ()(void)>::destroy_deallocate(uint64_t a1)
{
  mlx::core::array::~array((a1 + 24));
  mlx::core::array::~array((a1 + 8));

  operator delete(a1);
}

uint64_t std::__function::__func<std::__bind<mlx::core::Scan::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>,std::allocator<std::__bind<mlx::core::Scan::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t mlx::core::random::threefry2x32_hash(_DWORD *a1, uint64_t a2)
{
  v2 = 0;
  v13 = *MEMORY[0x277D85DE8];
  v3 = a1[1];
  v4 = *a1 ^ v3 ^ 0x1BD11BDA;
  v12[0] = *a1;
  v12[1] = v3;
  v12[2] = v4;
  LODWORD(v5) = v12[0] + a2;
  LODWORD(v6) = v3 + HIDWORD(a2);
  do
  {
    v7 = 0;
    v8 = &mlx::core::random::threefry2x32_hash(std::pair<unsigned int,unsigned int> const&,std::pair<unsigned int,unsigned int>)::rotations[16 * (v2 & 1)];
    do
    {
      LODWORD(v5) = v6 + v5;
      v9 = -*&v8[v7];
      LODWORD(v6) = __ROR4__(v6, -v8[v7]) ^ v5;
      v7 += 4;
    }

    while (v7 != 16);
    v5 = (v12[(v2 + 1) % 3u] + v5);
    v6 = (v2 + 1 + v6 + v12[(v2 + 2) % 3u]);
    ++v2;
  }

  while (v2 != 5);
  v10 = *MEMORY[0x277D85DE8];
  return v5 | (v6 << 32);
}

void mlx::core::distributed::ensure_row_contiguous(mlx::core::array *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v6 = *a1;
  if ((*(*a1 + 168) & 2) != 0)
  {
    v11 = *(a1 + 1);
    *a4 = v6;
    *(a4 + 8) = v11;
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    v16 = 0;
    v17 = 0;
    __p = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *v6, v6[1], (v6[1] - *v6) >> 2);
    v9 = *(*a1 + 56);
    v13 = 0;
    v14 = 0;
    memset(v12, 0, sizeof(v12));
    mlx::core::array::array(v18, &__p, v9 & 0xFFFFFFFFFFLL, &v13, v12);
    v19 = v12;
    std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v19);
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }

    if (__p)
    {
      v16 = __p;
      operator delete(__p);
    }

    mlx::core::copy(a1, v18, 2u, a2, a3);
    v10 = v18[1];
    *a4 = v18[0];
    *(a4 + 8) = v10;
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    }

    *(a4 + 16) = 1;
    mlx::core::array::~array(v18);
  }
}

void mlx::core::distributed::AllReduce::eval_cpu(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  if (*(a2 + 8) - *a2 != 16)
  {
    mlx::core::distributed::AllReduce::eval_cpu();
  }

  v5 = *a3;
  if (*(a3 + 8) - *a3 != 16)
  {
    mlx::core::distributed::AllReduce::eval_cpu();
  }

  v7 = *v3;
  if ((*(*v3 + 168) & 2) != 0)
  {
    v11 = *(v3 + 1);
    if (!v11 || *(v11 + 8) || (v20 = v7[18]) == 0 || *(v20 + 8))
    {
      v12 = mlx::core::allocator::malloc((*(*v5 + 60) * *(*v5 + 48)));
      v33 = &unk_286BE3468;
      v34 = mlx::core::allocator::free;
      v36 = &v33;
      mlx::core::array::set_data(v5, v12);
    }

    mlx::core::array::copy_shared_buffer(*a3, *a2);
    v13 = *(v3 + 1);
    v28[0] = *v3;
    v28[1] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v8 = *(a1 + 8);
    v9 = *(a1 + 16);
    v33 = 0;
    v34 = 0;
    v35 = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v33, *v7, v7[1], (v7[1] - *v7) >> 2);
    v10 = *(*v3 + 56);
    v30 = 0;
    v31 = 0;
    memset(v29, 0, sizeof(v29));
    mlx::core::array::array(v28, &v33, v10 & 0xFFFFFFFFFFLL, &v30, v29);
    v32 = v29;
    std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v32);
    if (v31)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v31);
    }

    if (v33)
    {
      v34 = v33;
      operator delete(v33);
    }

    mlx::core::copy(v3, v28, 2u, v8, v9);
    mlx::core::array::copy_shared_buffer(v5, v28);
  }

  v14 = *(a1 + 40);
  switch(v14)
  {
    case 5:
      v19 = *(a1 + 32);
      v24 = *(a1 + 24);
      v25 = v19;
      if (v19)
      {
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      mlx::core::distributed::detail::all_max(&v24, v28, *a3, *(a1 + 8), *(a1 + 16));
      v16 = v25;
      if (v25)
      {
        goto LABEL_24;
      }

      break;
    case 4:
      v17 = *(a1 + 32);
      v22 = *(a1 + 24);
      v23 = v17;
      if (v17)
      {
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      mlx::core::distributed::detail::all_min(&v22, v28, *a3, *(a1 + 8), *(a1 + 16));
      v16 = v23;
      if (v23)
      {
        goto LABEL_24;
      }

      break;
    case 2:
      v15 = *(a1 + 32);
      v26 = *(a1 + 24);
      v27 = v15;
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      mlx::core::distributed::detail::all_sum(&v26, v28, *a3, *(a1 + 8), *(a1 + 16));
      v16 = v27;
      if (!v27)
      {
        break;
      }

LABEL_24:
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
      break;
    default:
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Only all reduce sum, min and max are supported for now");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::array::~array(v28);
  v18 = *MEMORY[0x277D85DE8];
}

void sub_25A5DEAD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void mlx::core::distributed::AllGather::eval_cpu(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v7[4] = *MEMORY[0x277D85DE8];
  if (*(a2 + 8) - *a2 == 16)
  {
    if (a3[1] - *a3 == 16)
    {
      mlx::core::distributed::ensure_row_contiguous(*a2, *(a1 + 8), *(a1 + 16), &v6);
      v4 = *a3;
      v5 = mlx::core::allocator::malloc((*(**a3 + 60) * *(**a3 + 48)));
      v7[0] = &unk_286BE3468;
      v7[1] = mlx::core::allocator::free;
      v7[3] = v7;
      mlx::core::array::set_data(v4, v5);
    }

    mlx::core::distributed::AllGather::eval_cpu();
  }

  mlx::core::distributed::AllGather::eval_cpu();
}

void sub_25A5DED00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, char a16)
{
  mlx::core::array::~array(&a9);
  mlx::core::array::~array(&a13);
  _Unwind_Resume(a1);
}

void mlx::core::distributed::Send::eval_cpu(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 8) - *a2 != 16)
  {
    mlx::core::distributed::Send::eval_cpu();
  }

  if (*(a3 + 8) - *a3 != 16)
  {
    mlx::core::distributed::Send::eval_cpu();
  }

  mlx::core::distributed::ensure_row_contiguous(*a2, *(a1 + 8), *(a1 + 16), &v11);
  v6 = *(a1 + 32);
  v9 = *(a1 + 24);
  v10 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  mlx::core::distributed::detail::send(&v9, &v11, *(a1 + 40), *(a1 + 8), *(a1 + 16));
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  mlx::core::array::copy_shared_buffer(*a3, *a2);
  if (v13 == 1)
  {
    command_encoder = mlx::core::cpu::get_command_encoder(*(a1 + 8), *(a1 + 16));
    v8[0] = v11;
    v8[1] = v12;
    if (v12)
    {
      atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
    }

    std::vector<mlx::core::array>::push_back[abi:ne200100](command_encoder + 2, v8);
    mlx::core::array::~array(v8);
  }

  mlx::core::array::~array(&v11);
}

void sub_25A5DEE58(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  mlx::core::array::~array(va);
  mlx::core::array::~array(va1);
  _Unwind_Resume(a1);
}

void mlx::core::distributed::Recv::eval_cpu(uint64_t a1, void *a2, uint64_t *a3)
{
  v5[4] = *MEMORY[0x277D85DE8];
  if (a2[1] == *a2)
  {
    v3 = *a3;
    if (a3[1] - *a3 == 16)
    {
      v4 = mlx::core::allocator::malloc((*(*v3 + 60) * *(*v3 + 48)));
      v5[0] = &unk_286BE3468;
      v5[1] = mlx::core::allocator::free;
      v5[3] = v5;
      mlx::core::array::set_data(v3, v4);
    }

    mlx::core::distributed::Recv::eval_cpu();
  }

  mlx::core::distributed::Recv::eval_cpu();
}

void sub_25A5DEFBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, char a12)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void *mlx::core::distributed::AllReduce::print(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  if (v3 <= 2)
  {
    if (v3)
    {
      if (v3 != 1)
      {
        if (v3 != 2)
        {
          goto LABEL_16;
        }

        v4 = "Sum";
        goto LABEL_14;
      }
    }

    else
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "And", 3);
    }

    v4 = "And";
LABEL_14:
    v5 = a2;
    v6 = 3;
    goto LABEL_15;
  }

  if (v3 != 3)
  {
    if (v3 == 4)
    {
      v4 = "Min";
    }

    else
    {
      if (v3 != 5)
      {
        goto LABEL_16;
      }

      v4 = "Max";
    }

    goto LABEL_14;
  }

  v4 = "Prod";
  v5 = a2;
  v6 = 4;
LABEL_15:
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, v4, v6);
LABEL_16:

  return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, " AllReduce", 10);
}

void mlx::core::distributed::AllReduce::~AllReduce(mlx::core::distributed::AllReduce *this)
{
  *this = &unk_286BF16F8;
  v1 = *(this + 4);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_286BF16F8;
  v1 = *(this + 4);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x25F851760);
}

void mlx::core::distributed::AllGather::~AllGather(mlx::core::distributed::AllGather *this)
{
  *this = &unk_286BF16F8;
  v1 = *(this + 4);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_286BF16F8;
  v1 = *(this + 4);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x25F851760);
}

void mlx::core::distributed::Send::~Send(mlx::core::distributed::Send *this)
{
  *this = &unk_286BF16F8;
  v1 = *(this + 4);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_286BF16F8;
  v1 = *(this + 4);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x25F851760);
}

void mlx::core::distributed::Recv::~Recv(mlx::core::distributed::Recv *this)
{
  *this = &unk_286BF16F8;
  v1 = *(this + 4);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_286BF16F8;
  v1 = *(this + 4);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x25F851760);
}

void mlx::core::cpu::eval(mlx::core::cpu *this, mlx::core::array *a2)
{
  v76 = *MEMORY[0x277D85DE8];
  v3 = *(*this + 64);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  mlx::core::array::outputs(this, v55);
  v70 = 0;
  v71 = 0;
  *&v72 = 0;
  is_tracer = mlx::core::array::is_tracer(this);
  v7 = *this;
  if (is_tracer && &v70 != (v7 + 176))
  {
    std::vector<mlx::core::array>::__assign_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(&v70, *(v7 + 176), *(v7 + 184), (*(v7 + 184) - *(v7 + 176)) >> 4);
    v7 = *this;
  }

  (***(v7 + 64))(*(v7 + 64), v7 + 176, v55);
  v56 = &v70;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v56);
  v52 = 0u;
  v53 = 0u;
  v54 = 1065353216;
  v8 = *this;
  v9 = *(*this + 176);
  v10 = *(*this + 184);
  if (v9 != v10)
  {
    do
    {
      std::__hash_table<std::shared_ptr<mlx::core::array::Data>,std::hash<std::shared_ptr<mlx::core::array::Data>>,std::equal_to<std::shared_ptr<mlx::core::array::Data>>,std::allocator<std::shared_ptr<mlx::core::array::Data>>>::__emplace_unique_key_args<std::shared_ptr<mlx::core::array::Data>,std::shared_ptr<mlx::core::array::Data> const&>(&v52, (*v9 + 136));
      v9 += 16;
    }

    while (v9 != v10);
    v8 = *this;
  }

  v11 = v8[25];
  v12 = v8[26];
  if (v11 != v12)
  {
    do
    {
      std::__hash_table<std::shared_ptr<mlx::core::array::Data>,std::hash<std::shared_ptr<mlx::core::array::Data>>,std::equal_to<std::shared_ptr<mlx::core::array::Data>>,std::allocator<std::shared_ptr<mlx::core::array::Data>>>::__emplace_unique_key_args<std::shared_ptr<mlx::core::array::Data>,std::shared_ptr<mlx::core::array::Data> const&>(&v52, (*v11 + 136));
      v11 += 16;
    }

    while (v11 != v12);
    v8 = *this;
  }

  v13 = std::__hash_table<std::shared_ptr<mlx::core::array::Data>,std::hash<std::shared_ptr<mlx::core::array::Data>>,std::equal_to<std::shared_ptr<mlx::core::array::Data>>,std::allocator<std::shared_ptr<mlx::core::array::Data>>>::find<std::shared_ptr<mlx::core::array::Data>>(&v52, v8 + 17);
  if (v13)
  {
    std::__hash_table<std::shared_ptr<mlx::core::array::Data>,std::hash<std::shared_ptr<mlx::core::array::Data>>,std::equal_to<std::shared_ptr<mlx::core::array::Data>>,std::allocator<std::shared_ptr<mlx::core::array::Data>>>::erase(&v52, v13);
  }

  command_encoder = mlx::core::cpu::get_command_encoder(v4, v5);
  v15 = command_encoder;
  v17 = *(&v52 + 1);
  v16 = v52;
  v52 = 0uLL;
  v46 = v16;
  v48 = v53;
  v49 = v54;
  if (*(&v53 + 1))
  {
    v18 = *(v53 + 8);
    if ((v17 & (v17 - 1)) != 0)
    {
      if (v18 >= v17)
      {
        v18 %= v17;
      }
    }

    else
    {
      v18 &= v17 - 1;
    }

    v16[v18] = &v48;
    v53 = 0uLL;
    v16 = v46;
  }

  v51 = 0;
  v50 = 0uLL;
  v50 = *(command_encoder + 1);
  v51 = command_encoder[4];
  command_encoder[2] = 0;
  command_encoder[3] = 0;
  command_encoder[4] = 0;
  *(command_encoder + 10) = (*(command_encoder + 10) + 1) % 10;
  v46 = 0;
  v47 = 0;
  v64 = v16;
  v65 = v17;
  v66 = v48;
  v67 = v49;
  if (*(&v48 + 1))
  {
    v19 = *(v48 + 8);
    if ((v17 & (v17 - 1)) != 0)
    {
      if (v19 >= v17)
      {
        v19 %= v17;
      }
    }

    else
    {
      v19 &= v17 - 1;
    }

    v16[v19] = &v66;
    v48 = 0uLL;
  }

  v68 = v50;
  v69 = v51;
  v50 = 0uLL;
  v51 = 0;
  if (*(command_encoder + 10))
  {
    v20 = *(*(mlx::core::scheduler::scheduler(command_encoder) + 1) + 8 * *command_encoder);
    std::mutex::lock(v20);
    if (*(v20 + 160) != 1)
    {
      v21 = *(v20 + 72);
      v22 = *(v20 + 80);
      v23 = 16 * (v22 - v21) - 1;
      if (v22 == v21)
      {
        v23 = 0;
      }

      if (v23 == *(v20 + 104) + *(v20 + 96))
      {
        std::deque<std::function<void ()(void)>>::__add_back_capacity((v20 + 64));
        v21 = *(v20 + 72);
        v22 = *(v20 + 80);
      }

      if (v22 == v21)
      {
        v25 = 0;
      }

      else
      {
        v24 = *(v20 + 104) + *(v20 + 96);
        v25 = *(v21 + ((v24 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v24 & 0x7F);
      }

      v32 = v64;
      v33 = v65;
      v64 = 0;
      v65 = 0;
      v70 = v32;
      v71 = v33;
      v72 = v66;
      *v73 = v67;
      if (*(&v66 + 1))
      {
        v34 = *(v66 + 8);
        if ((v33 & (v33 - 1)) != 0)
        {
          if (v34 >= v33)
          {
            v34 %= v33;
          }
        }

        else
        {
          v34 &= v33 - 1;
        }

        v32[v34] = &v72;
        v66 = 0uLL;
      }

      *&v73[8] = v68;
      *&v74 = v69;
      v69 = 0;
      v68 = 0uLL;
      *(v25 + 24) = 0;
      operator new();
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v26 = mlx::core::scheduler::scheduler(command_encoder);
  mlx::core::scheduler::Scheduler::notify_new_task(v26);
  v28 = *v15;
  v57 = *(v15 + 2);
  v56 = v28;
  v29 = v64;
  v30 = v65;
  v58 = v64;
  v59 = v65;
  v64 = 0;
  v65 = 0;
  v60 = v66;
  v61 = v67;
  if (*(&v66 + 1))
  {
    v31 = *(v66 + 8);
    if ((v30 & (v30 - 1)) != 0)
    {
      if (v31 >= v30)
      {
        v31 %= v30;
      }
    }

    else
    {
      v31 &= v30 - 1;
    }

    v29[v31] = &v60;
    v66 = 0uLL;
  }

  v62 = v68;
  v63 = v69;
  v69 = 0;
  v68 = 0uLL;
  v35 = *(*(mlx::core::scheduler::scheduler(v27) + 1) + 8 * *v15);
  std::mutex::lock(v35);
  if (*(v35 + 160) != 1)
  {
    v36 = *(v35 + 72);
    v37 = *(v35 + 80);
    v38 = 16 * (v37 - v36) - 1;
    if (v37 == v36)
    {
      v38 = 0;
    }

    if (v38 == *(v35 + 104) + *(v35 + 96))
    {
      std::deque<std::function<void ()(void)>>::__add_back_capacity((v35 + 64));
      v36 = *(v35 + 72);
      v37 = *(v35 + 80);
    }

    if (v37 == v36)
    {
      v40 = 0;
    }

    else
    {
      v39 = *(v35 + 104) + *(v35 + 96);
      v40 = *(v36 + ((v39 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v39 & 0x7F);
    }

    v70 = v56;
    LODWORD(v71) = v57;
    v41 = v58;
    v42 = v59;
    v58 = 0;
    v59 = 0;
    *&v72 = v41;
    *(&v72 + 1) = v42;
    *v73 = v60;
    *&v73[16] = v61;
    if (*(&v60 + 1))
    {
      v43 = *(v60 + 8);
      if ((v42 & (v42 - 1)) != 0)
      {
        if (v43 >= v42)
        {
          v43 %= v42;
        }
      }

      else
      {
        v43 &= v42 - 1;
      }

      v41[v43] = v73;
      v60 = 0uLL;
    }

    v74 = v62;
    v75 = v63;
    v63 = 0;
    v62 = 0uLL;
    *(v40 + 24) = 0;
    operator new();
  }

  v45 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v45, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(v45, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A5DFB50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  __cxa_free_exception(v39);
  std::mutex::unlock(v38);
  mlx::core::cpu::CommandEncoder::dispatch<mlx::core::cpu::eval(mlx::core::array &)::$_0>(mlx::core::cpu::eval(mlx::core::array &)::$_0 &&)::{lambda(void)#1}::~dispatch(&a27);
  mlx::core::cpu::eval(mlx::core::array &)::$_0::~$_0(&a38);
  mlx::core::cpu::eval(mlx::core::array &)::$_0::~$_0(&a9);
  std::__hash_table<std::shared_ptr<mlx::core::array::Data>,std::hash<std::shared_ptr<mlx::core::array::Data>>,std::equal_to<std::shared_ptr<mlx::core::array::Data>>,std::allocator<std::shared_ptr<mlx::core::array::Data>>>::~__hash_table(&a17);
  a27 = &a23;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&a27);
  _Unwind_Resume(a1);
}

uint64_t mlx::core::cpu::eval(mlx::core::array &)::$_0::~$_0(uint64_t a1)
{
  v3 = (a1 + 40);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v3);
  return std::__hash_table<std::shared_ptr<mlx::core::array::Data>,std::hash<std::shared_ptr<mlx::core::array::Data>>,std::equal_to<std::shared_ptr<mlx::core::array::Data>>,std::allocator<std::shared_ptr<mlx::core::array::Data>>>::~__hash_table(a1);
}

uint64_t std::__hash_table<std::shared_ptr<mlx::core::array::Data>,std::hash<std::shared_ptr<mlx::core::array::Data>>,std::equal_to<std::shared_ptr<mlx::core::array::Data>>,std::allocator<std::shared_ptr<mlx::core::array::Data>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::shared_ptr<mlx::core::array::Data>,std::hash<std::shared_ptr<mlx::core::array::Data>>,std::equal_to<std::shared_ptr<mlx::core::array::Data>>,std::allocator<std::shared_ptr<mlx::core::array::Data>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::shared_ptr<mlx::core::array::Data>,std::hash<std::shared_ptr<mlx::core::array::Data>>,std::equal_to<std::shared_ptr<mlx::core::array::Data>>,std::allocator<std::shared_ptr<mlx::core::array::Data>>>::__deallocate_node(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[3];
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void *std::__hash_table<std::shared_ptr<mlx::core::array::Data>,std::hash<std::shared_ptr<mlx::core::array::Data>>,std::equal_to<std::shared_ptr<mlx::core::array::Data>>,std::allocator<std::shared_ptr<mlx::core::array::Data>>>::__emplace_unique_key_args<std::shared_ptr<mlx::core::array::Data>,std::shared_ptr<mlx::core::array::Data> const&>(void *a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != *a2)
  {
    goto LABEL_17;
  }

  return v9;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::shared_ptr<mlx::core::array::Data>,void *>>>::operator()[abi:ne200100](uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[3];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void *std::__hash_table<std::shared_ptr<mlx::core::array::Data>,std::hash<std::shared_ptr<mlx::core::array::Data>>,std::equal_to<std::shared_ptr<mlx::core::array::Data>>,std::allocator<std::shared_ptr<mlx::core::array::Data>>>::find<std::shared_ptr<mlx::core::array::Data>>(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = v5 & (*&v2 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  result = *v8;
  if (*v8)
  {
    do
    {
      v10 = result[1];
      if (v10 == v5)
      {
        if (result[2] == *a2)
        {
          return result;
        }
      }

      else
      {
        if (v6.u32[0] > 1uLL)
        {
          if (v10 >= *&v2)
          {
            v10 %= *&v2;
          }
        }

        else
        {
          v10 &= *&v2 - 1;
        }

        if (v10 != v7)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

uint64_t std::__hash_table<std::shared_ptr<mlx::core::array::Data>,std::hash<std::shared_ptr<mlx::core::array::Data>>,std::equal_to<std::shared_ptr<mlx::core::array::Data>>,std::allocator<std::shared_ptr<mlx::core::array::Data>>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<std::__hash_value_type<unsigned long,int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,int>>>::remove(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::shared_ptr<mlx::core::array::Data>,void *>>>::operator()[abi:ne200100](&v6, v3);
  }

  return v2;
}

uint64_t mlx::core::cpu::CommandEncoder::dispatch<mlx::core::cpu::eval(mlx::core::array &)::$_0>(mlx::core::cpu::eval(mlx::core::array &)::$_0 &&)::{lambda(void)#1}::~dispatch(uint64_t a1)
{
  v3 = (a1 + 56);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v3);
  std::__hash_table<std::shared_ptr<mlx::core::array::Data>,std::hash<std::shared_ptr<mlx::core::array::Data>>,std::equal_to<std::shared_ptr<mlx::core::array::Data>>,std::allocator<std::shared_ptr<mlx::core::array::Data>>>::~__hash_table(a1 + 16);
  return a1;
}

uint64_t _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS4_4evalERNS3_5arrayEE3__0JEEEvOT_DpOT0_EUlvE_NS_9allocatorISF_EEFvvEED1Ev(uint64_t a1)
{
  *a1 = &unk_286BFFCD8;
  v3 = (a1 + 64);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v3);
  std::__hash_table<std::shared_ptr<mlx::core::array::Data>,std::hash<std::shared_ptr<mlx::core::array::Data>>,std::equal_to<std::shared_ptr<mlx::core::array::Data>>,std::allocator<std::shared_ptr<mlx::core::array::Data>>>::~__hash_table(a1 + 24);
  return a1;
}

uint64_t _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS4_4evalERNS3_5arrayEE3__0JEEEvOT_DpOT0_EUlvE_NS_9allocatorISF_EEFvvEED0Ev(uint64_t a1)
{
  *a1 = &unk_286BFFCD8;
  v3 = (a1 + 64);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v3);
  std::__hash_table<std::shared_ptr<mlx::core::array::Data>,std::hash<std::shared_ptr<mlx::core::array::Data>>,std::equal_to<std::shared_ptr<mlx::core::array::Data>>,std::allocator<std::shared_ptr<mlx::core::array::Data>>>::~__hash_table(a1 + 24);
  return MEMORY[0x25F851760](a1, 0x10A1C409708E298);
}

void sub_25A5E02BC(_Unwind_Exception *a1)
{
  std::__hash_table<std::shared_ptr<mlx::core::array::Data>,std::hash<std::shared_ptr<mlx::core::array::Data>>,std::equal_to<std::shared_ptr<mlx::core::array::Data>>,std::allocator<std::shared_ptr<mlx::core::array::Data>>>::~__hash_table(v1 + 24);
  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS4_4evalERNS3_5arrayEE3__0JEEEvOT_DpOT0_EUlvE_NS_9allocatorISF_EEFvvEE7__cloneEPNS0_6__baseISI_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BFFCD8;
  v4 = *(a1 + 8);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 8) = v4;
  std::unordered_set<std::shared_ptr<mlx::core::array::Data>>::unordered_set(a2 + 24, a1 + 24);
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  return std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array*,mlx::core::array*>(a2 + 64, *(a1 + 64), *(a1 + 72), (*(a1 + 72) - *(a1 + 64)) >> 4);
}

uint64_t _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS4_4evalERNS3_5arrayEE3__0JEEEvOT_DpOT0_EUlvE_NS_9allocatorISF_EEFvvEE7destroyEv(uint64_t a1)
{
  v3 = (a1 + 64);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v3);
  return std::__hash_table<std::shared_ptr<mlx::core::array::Data>,std::hash<std::shared_ptr<mlx::core::array::Data>>,std::equal_to<std::shared_ptr<mlx::core::array::Data>>,std::allocator<std::shared_ptr<mlx::core::array::Data>>>::~__hash_table(a1 + 24);
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS4_4evalERNS3_5arrayEE3__0JEEEvOT_DpOT0_EUlvE_NS_9allocatorISF_EEFvvEE18destroy_deallocateEv(void **a1)
{
  v2 = a1 + 8;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v2);
  std::__hash_table<std::shared_ptr<mlx::core::array::Data>,std::hash<std::shared_ptr<mlx::core::array::Data>>,std::equal_to<std::shared_ptr<mlx::core::array::Data>>,std::allocator<std::shared_ptr<mlx::core::array::Data>>>::~__hash_table((a1 + 3));
  operator delete(a1);
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS4_4evalERNS3_5arrayEE3__0JEEEvOT_DpOT0_EUlvE_NS_9allocatorISF_EEFvvEEclEv(mlx::core::scheduler *a1)
{
  v1 = mlx::core::scheduler::scheduler(a1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v1);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS4_4evalERNS3_5arrayEE3__0JEEEvOT_DpOT0_EUlvE_NS_9allocatorISF_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::unordered_set<std::shared_ptr<mlx::core::array::Data>>::unordered_set(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<unsigned int,mlx::core::Fence>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,mlx::core::Fence>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,mlx::core::Fence>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,mlx::core::Fence>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::shared_ptr<mlx::core::array::Data>,std::hash<std::shared_ptr<mlx::core::array::Data>>,std::equal_to<std::shared_ptr<mlx::core::array::Data>>,std::allocator<std::shared_ptr<mlx::core::array::Data>>>::__emplace_unique_key_args<std::shared_ptr<mlx::core::array::Data>,std::shared_ptr<mlx::core::array::Data> const&>(a1, i + 2);
  }

  return a1;
}

uint64_t std::__function::__func<std::__bind<mlx::core::cpu::eval(mlx::core::array &)::$_0>,std::allocator<std::__bind<mlx::core::cpu::eval(mlx::core::array &)::$_0>>,void ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_286BFFD58;
  v3 = (a1 + 48);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v3);
  std::__hash_table<std::shared_ptr<mlx::core::array::Data>,std::hash<std::shared_ptr<mlx::core::array::Data>>,std::equal_to<std::shared_ptr<mlx::core::array::Data>>,std::allocator<std::shared_ptr<mlx::core::array::Data>>>::~__hash_table(a1 + 8);
  return a1;
}

{
  *a1 = &unk_286BFFD58;
  v3 = (a1 + 48);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v3);
  std::__hash_table<std::shared_ptr<mlx::core::array::Data>,std::hash<std::shared_ptr<mlx::core::array::Data>>,std::equal_to<std::shared_ptr<mlx::core::array::Data>>,std::allocator<std::shared_ptr<mlx::core::array::Data>>>::~__hash_table(a1 + 8);
  return MEMORY[0x25F851760](a1, 0x10A1C404D47F750);
}

void sub_25A5E065C(_Unwind_Exception *a1)
{
  std::__hash_table<std::shared_ptr<mlx::core::array::Data>,std::hash<std::shared_ptr<mlx::core::array::Data>>,std::equal_to<std::shared_ptr<mlx::core::array::Data>>,std::allocator<std::shared_ptr<mlx::core::array::Data>>>::~__hash_table(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<std::__bind<mlx::core::cpu::eval(mlx::core::array &)::$_0>,std::allocator<std::__bind<mlx::core::cpu::eval(mlx::core::array &)::$_0>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BFFD58;
  std::unordered_set<std::shared_ptr<mlx::core::array::Data>>::unordered_set(a2 + 8, a1 + 8);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  result = std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array*,mlx::core::array*>(a2 + 48, *(a1 + 48), *(a1 + 56), (*(a1 + 56) - *(a1 + 48)) >> 4);
  *(a2 + 76) = 0;
  *(a2 + 73) = 0;
  return result;
}

uint64_t std::__function::__func<std::__bind<mlx::core::cpu::eval(mlx::core::array &)::$_0>,std::allocator<std::__bind<mlx::core::cpu::eval(mlx::core::array &)::$_0>>,void ()(void)>::destroy(uint64_t a1)
{
  v3 = (a1 + 48);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v3);
  return std::__hash_table<std::shared_ptr<mlx::core::array::Data>,std::hash<std::shared_ptr<mlx::core::array::Data>>,std::equal_to<std::shared_ptr<mlx::core::array::Data>>,std::allocator<std::shared_ptr<mlx::core::array::Data>>>::~__hash_table(a1 + 8);
}

void std::__function::__func<std::__bind<mlx::core::cpu::eval(mlx::core::array &)::$_0>,std::allocator<std::__bind<mlx::core::cpu::eval(mlx::core::array &)::$_0>>,void ()(void)>::destroy_deallocate(void **a1)
{
  v2 = a1 + 6;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v2);
  std::__hash_table<std::shared_ptr<mlx::core::array::Data>,std::hash<std::shared_ptr<mlx::core::array::Data>>,std::equal_to<std::shared_ptr<mlx::core::array::Data>>,std::allocator<std::shared_ptr<mlx::core::array::Data>>>::~__hash_table((a1 + 1));
  operator delete(a1);
}

uint64_t std::__function::__func<std::__bind<mlx::core::cpu::eval(mlx::core::array &)::$_0>,std::allocator<std::__bind<mlx::core::cpu::eval(mlx::core::array &)::$_0>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::matmul_bnns<half>(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, BOOL a5, size_t a6, size_t a7, float a8, float a9, uint64_t a10, uint64_t a11, uint64_t *a12, uint64_t *a13, uint64_t *a14, uint64_t *a15)
{
  v15 = a12[1];
  v16 = *(v15 - *a12 + *a14 - 4);
  v17 = *(v15 - 8);
  LODWORD(v15) = *(v15 - 4);
  *&layer_params.iB_desc.data_bias = 0;
  *&layer_params.iA_desc.data_bias = 0;
  layer_params.alpha = a8;
  layer_params.beta = a9;
  *&layer_params.transA = a4;
  layer_params.transB = a5;
  layer_params.a_is_weights = 0;
  *&layer_params.iA_desc.flags = 0x2000000000000;
  memset(&layer_params.iA_desc.size[2], 0, 48);
  v36 = v15 * v17;
  layer_params.iA_desc.size[0] = a6;
  layer_params.iA_desc.size[1] = v36 / a6;
  memset(&layer_params.iA_desc.stride[2], 0, 72);
  layer_params.iA_desc.stride[0] = 1;
  layer_params.iA_desc.stride[1] = a6;
  layer_params.iA_desc.data_type = BNNSDataTypeFloat16;
  *&layer_params.iA_desc.table_data_type = 0x3F80000000010010;
  *&layer_params.iB_desc.flags = 0x2000000000000;
  memset(&layer_params.iB_desc.size[2], 0, 48);
  v35 = v15 * v16;
  layer_params.iB_desc.size[0] = a7;
  layer_params.iB_desc.size[1] = v35 / a7;
  memset(&layer_params.iB_desc.stride[2], 0, 72);
  layer_params.iB_desc.stride[0] = 1;
  layer_params.iB_desc.stride[1] = a7;
  layer_params.iB_desc.data_type = BNNSDataTypeFloat16;
  *&layer_params.iB_desc.table_data_type = 0x3F80000000010010;
  *&layer_params.o_desc.flags = 0x2000000000000;
  memset(&layer_params.o_desc.size[2], 0, 48);
  layer_params.o_desc.size[0] = v16;
  layer_params.o_desc.size[1] = v17;
  memset(&layer_params.o_desc.stride[2], 0, 56);
  layer_params.o_desc.stride[0] = 1;
  layer_params.o_desc.stride[1] = v16;
  layer_params.o_desc.data_type = BNNSDataTypeFloat16;
  layer_params.o_desc.table_data = 0;
  layer_params.o_desc.table_data_type = BNNSDataTypeFloat16;
  *&layer_params.o_desc.data_scale = 1065353216;
  v18 = BNNSFilterCreateLayerBroadcastMatMul(&layer_params, 0);
  if (a11)
  {
    v19 = 0;
    v20 = v16 * v17;
    do
    {
      v21 = *a12;
      v22 = (a12[1] - *a12) >> 2;
      v23 = 0;
      v24 = (v22 - 1);
      if (v22 - 1 >= 0)
      {
        quot = v19 * v36;
        v26 = *a13;
        do
        {
          v27 = ldiv(quot, *(v21 + 4 * v24));
          quot = v27.quot;
          v23 += *(v26 + 8 * v24--) * v27.rem;
        }

        while (v24 != -1);
      }

      v28 = *a14;
      v29 = (a14[1] - *a14) >> 2;
      v30 = 0;
      v31 = (v29 - 1);
      if (v29 - 1 >= 0)
      {
        v32 = v19 * v35;
        v33 = *a15;
        do
        {
          v34 = ldiv(v32, *(v28 + 4 * v31));
          v32 = v34.quot;
          v30 += *(v33 + 8 * v31--) * v34.rem;
        }

        while (v31 != -1);
      }

      BNNSFilterApplyTwoInput(v18, (a1 + 2 * v23), (a2 + 2 * v30), (a3 + 2 * v20 * v19++));
    }

    while (v19 != a11);
  }

  BNNSFilterDestroy(v18);
}

void mlx::core::matmul_bnns<mlx::core::_MLX_BFloat16>(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, BOOL a5, size_t a6, size_t a7, float a8, float a9, uint64_t a10, uint64_t a11, uint64_t *a12, uint64_t *a13, uint64_t *a14, uint64_t *a15)
{
  v15 = a12[1];
  v16 = *(v15 - *a12 + *a14 - 4);
  v17 = *(v15 - 8);
  LODWORD(v15) = *(v15 - 4);
  *&layer_params.iB_desc.data_bias = 0;
  *&layer_params.iA_desc.data_bias = 0;
  layer_params.alpha = a8;
  layer_params.beta = a9;
  *&layer_params.transA = a4;
  layer_params.transB = a5;
  layer_params.a_is_weights = 0;
  *&layer_params.iA_desc.flags = 0x2000000000000;
  memset(&layer_params.iA_desc.size[2], 0, 48);
  v36 = v15 * v17;
  layer_params.iA_desc.size[0] = a6;
  layer_params.iA_desc.size[1] = v36 / a6;
  memset(&layer_params.iA_desc.stride[2], 0, 72);
  layer_params.iA_desc.stride[0] = 1;
  layer_params.iA_desc.stride[1] = a6;
  layer_params.iA_desc.data_type = BNNSDataTypeBFloat16;
  *&layer_params.iA_desc.table_data_type = 0x3F80000000018010;
  *&layer_params.iB_desc.flags = 0x2000000000000;
  memset(&layer_params.iB_desc.size[2], 0, 48);
  v35 = v15 * v16;
  layer_params.iB_desc.size[0] = a7;
  layer_params.iB_desc.size[1] = v35 / a7;
  memset(&layer_params.iB_desc.stride[2], 0, 72);
  layer_params.iB_desc.stride[0] = 1;
  layer_params.iB_desc.stride[1] = a7;
  layer_params.iB_desc.data_type = BNNSDataTypeBFloat16;
  *&layer_params.iB_desc.table_data_type = 0x3F80000000018010;
  *&layer_params.o_desc.flags = 0x2000000000000;
  memset(&layer_params.o_desc.size[2], 0, 48);
  layer_params.o_desc.size[0] = v16;
  layer_params.o_desc.size[1] = v17;
  memset(&layer_params.o_desc.stride[2], 0, 56);
  layer_params.o_desc.stride[0] = 1;
  layer_params.o_desc.stride[1] = v16;
  layer_params.o_desc.data_type = BNNSDataTypeBFloat16;
  layer_params.o_desc.table_data = 0;
  layer_params.o_desc.table_data_type = BNNSDataTypeBFloat16;
  *&layer_params.o_desc.data_scale = 1065353216;
  v18 = BNNSFilterCreateLayerBroadcastMatMul(&layer_params, 0);
  if (a11)
  {
    v19 = 0;
    v20 = v16 * v17;
    do
    {
      v21 = *a12;
      v22 = (a12[1] - *a12) >> 2;
      v23 = 0;
      v24 = (v22 - 1);
      if (v22 - 1 >= 0)
      {
        quot = v19 * v36;
        v26 = *a13;
        do
        {
          v27 = ldiv(quot, *(v21 + 4 * v24));
          quot = v27.quot;
          v23 += *(v26 + 8 * v24--) * v27.rem;
        }

        while (v24 != -1);
      }

      v28 = *a14;
      v29 = (a14[1] - *a14) >> 2;
      v30 = 0;
      v31 = (v29 - 1);
      if (v29 - 1 >= 0)
      {
        v32 = v19 * v35;
        v33 = *a15;
        do
        {
          v34 = ldiv(v32, *(v28 + 4 * v31));
          v32 = v34.quot;
          v30 += *(v33 + 8 * v31--) * v34.rem;
        }

        while (v31 != -1);
      }

      BNNSFilterApplyTwoInput(v18, (a1 + 2 * v23), (a2 + 2 * v30), (a3 + 2 * v20 * v19++));
    }

    while (v19 != a11);
  }

  BNNSFilterDestroy(v18);
}

uint64_t mlx::core::matmul<float>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t *a11, uint64_t *a12, uint64_t *a13)
{
  if (a9)
  {
    v13 = 0;
    v14 = a10[1];
    v15 = *(v14 - 4);
    v31 = v15 * *(v14 - 8);
    v30 = v15 * *(v14 - *a10 + *a12 - 4);
    do
    {
      v16 = *a10;
      v17 = (a10[1] - *a10) >> 2;
      v18 = 0;
      v19 = (v17 - 1);
      if (v17 - 1 >= 0)
      {
        quot = v31 * v13;
        v21 = *a11;
        do
        {
          v22 = ldiv(quot, *(v16 + 4 * v19));
          quot = v22.quot;
          v18 += *(v21 + 8 * v19--) * v22.rem;
        }

        while (v19 != -1);
      }

      v23 = *a12;
      v24 = (a12[1] - *a12) >> 2;
      v25 = 0;
      v26 = (v24 - 1);
      if (v24 - 1 >= 0)
      {
        v27 = v30 * v13;
        v28 = *a13;
        do
        {
          v29 = ldiv(v27, *(v23 + 4 * v26));
          v27 = v29.quot;
          v25 += *(v28 + 8 * v26--) * v29.rem;
        }

        while (v26 != -1);
      }

      result = cblas_sgemm_NEWLAPACK();
      ++v13;
    }

    while (v13 != a9);
  }

  return result;
}

uint64_t mlx::core::matmul<double>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t *a11, uint64_t *a12, uint64_t *a13)
{
  if (a9)
  {
    v13 = 0;
    v14 = a10[1];
    v15 = *(v14 - 4);
    v31 = v15 * *(v14 - 8);
    v30 = v15 * *(v14 - *a10 + *a12 - 4);
    do
    {
      v16 = *a10;
      v17 = (a10[1] - *a10) >> 2;
      v18 = 0;
      v19 = (v17 - 1);
      if (v17 - 1 >= 0)
      {
        quot = v31 * v13;
        v21 = *a11;
        do
        {
          v22 = ldiv(quot, *(v16 + 4 * v19));
          quot = v22.quot;
          v18 += *(v21 + 8 * v19--) * v22.rem;
        }

        while (v19 != -1);
      }

      v23 = *a12;
      v24 = (a12[1] - *a12) >> 2;
      v25 = 0;
      v26 = (v24 - 1);
      if (v24 - 1 >= 0)
      {
        v27 = v30 * v13;
        v28 = *a13;
        do
        {
          v29 = ldiv(v27, *(v23 + 4 * v26));
          v27 = v29.quot;
          v25 += *(v28 + 8 * v26--) * v29.rem;
        }

        while (v26 != -1);
      }

      result = cblas_dgemm_NEWLAPACK();
      ++v13;
    }

    while (v13 != a9);
  }

  return result;
}

void mlx::core::Select::eval_cpu(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  if (*(a2 + 8) - *a2 == 48)
  {
    v4 = v3 + 4;
    v5 = *(a1 + 8);
    v6 = *(a1 + 16);
    if (*(*v3 + 20) == 1 && *(v3[2] + 20) == 1 && *(*v4 + 20) == 1)
    {
      v7 = 0;
    }

    else if (((*v3)[168] & 2) != 0 && (v3[2][168] & 2) != 0 && ((*v4)[168] & 2) != 0 || ((*v3)[168] & 4) != 0 && (v3[2][168] & 4) != 0 && ((*v4)[168] & 4) != 0)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }

    mlx::core::set_ternary_op_output_data(v3, (v3 + 2), (v3 + 4), a3, v7);
    mlx::core::cpu::get_command_encoder(v5, v6);
    mlx::core::array::unsafe_weak_copy(v3, &v8);
  }

  mlx::core::Select::eval_cpu();
}

void sub_25A5E16B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  __cxa_free_exception(v40);
  std::mutex::unlock(v39);
  mlx::core::cpu::CommandEncoder::dispatch<mlx::core::fast::AffineQuantize::eval_cpu(std::vector<mlx::core::array> const&,std::vector<mlx::core::array>&)::$_1>(mlx::core::fast::AffineQuantize::eval_cpu(std::vector<mlx::core::array> const&,std::vector<mlx::core::array>&)::$_1 &&)::{lambda(void)#1}::~dispatch(&a27);
  mlx::core::fast::AffineQuantize::eval_cpu(std::vector<mlx::core::array> const&,std::vector<mlx::core::array>&)::$_1::~$_1(&a39);
  mlx::core::fast::AffineQuantize::eval_cpu(std::vector<mlx::core::array> const&,std::vector<mlx::core::array>&)::$_1::~$_1(&a17);
  _Unwind_Resume(a1);
}

void mlx::core::Select::output_shapes(uint64_t ***a1@<X1>, void *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v6 = 0;
  v7 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *v3, v3[1], (v3[1] - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(a2, &__p, &v8, 1uLL);
  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void sub_25A5E183C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char **mlx::core::set_ternary_op_output_data(char **result, const mlx::core::array *a2, const mlx::core::array *a3, uint64_t a4, int a5)
{
  v8 = result;
  v48[4] = *MEMORY[0x277D85DE8];
  if (a5 != 2)
  {
    if (a5 != 1)
    {
      if (!a5)
      {
        v9 = mlx::core::allocator::malloc(*(*a4 + 60));
        v10 = *a2;
        memset(v45, 0, sizeof(v45));
        std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v45, *(v10 + 24), *(v10 + 32), (*(v10 + 32) - *(v10 + 24)) >> 3);
        v11 = *(*a2 + 168);
        v48[0] = &unk_286BE3468;
        v48[1] = mlx::core::allocator::free;
        v48[3] = v48;
        mlx::core::array::set_data(a4, v9);
      }

      v26 = *MEMORY[0x277D85DE8];
      return result;
    }

    v12 = result[1];
    if (v12)
    {
      if (!*(v12 + 1))
      {
        v27 = *(*result + 18);
        if (v27)
        {
          if (!*(v27 + 8) && ((*(*a4 + 56) ^ *(*result + 7)) & 0xFF00000000) == 0)
          {
            v28 = mlx::core::allocator::allocator(result);
            result = (*(*v28 + 16))(v28, **(*v8 + 17));
            if (result <= *(*a4 + 60) * *(*a4 + 48) + 0x4000)
            {
              goto LABEL_42;
            }
          }
        }
      }
    }

    v13 = *(a2 + 1);
    if (v13)
    {
      if (!*(v13 + 8))
      {
        v29 = *(*a2 + 144);
        if (v29)
        {
          if (!*(v29 + 8) && ((*(*a4 + 56) ^ *(*a2 + 56)) & 0xFF00000000) == 0)
          {
            v30 = mlx::core::allocator::allocator(result);
            result = (*(*v30 + 16))(v30, **(*a2 + 136));
            if (result <= *(*a4 + 60) * *(*a4 + 48) + 0x4000)
            {
LABEL_47:
              v40 = *MEMORY[0x277D85DE8];
              v36 = a4;
              v37 = a2;
              goto LABEL_53;
            }
          }
        }
      }
    }

    v14 = *(a3 + 1);
    if (!v14 || *(v14 + 8) || (v31 = *(*a3 + 144)) == 0 || *(v31 + 8) || ((*(*a4 + 56) ^ *(*a3 + 56)) & 0xFF00000000) != 0 || (v32 = mlx::core::allocator::allocator(result), (*(*v32 + 16))(v32, **(*a3 + 136)) > *(*a4 + 60) * *(*a4 + 48) + 0x4000))
    {
      v15 = mlx::core::allocator::malloc((*(*a4 + 60) * *(*a2 + 160)));
      v16 = *a2;
      v17 = *(*a2 + 160);
      memset(__p, 0, sizeof(__p));
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(__p, *(v16 + 24), *(v16 + 32), (*(v16 + 32) - *(v16 + 24)) >> 3);
      v18 = *(*a2 + 168);
      v47[0] = &unk_286BE3468;
      v47[1] = mlx::core::allocator::free;
      v47[3] = v47;
      mlx::core::array::set_data(a4, v15);
    }

LABEL_52:
    v43 = *MEMORY[0x277D85DE8];
    v36 = a4;
    v37 = a3;
    goto LABEL_53;
  }

  v19 = *result;
  if (((*result)[168] & 2) == 0 || (v20 = result[1]) == 0 || *(v20 + 1) || (v33 = *(v19 + 18)) == 0 || *(v33 + 8) || ((*(*a4 + 56) ^ *(v19 + 7)) & 0xFF00000000) != 0 || (v34 = mlx::core::allocator::allocator(result), result = (*(*v34 + 16))(v34, **(*v8 + 17)), result > *(*a4 + 60) * *(*a4 + 48) + 0x4000))
  {
    v21 = *a2;
    if ((*(*a2 + 168) & 2) != 0)
    {
      v22 = *(a2 + 1);
      if (v22)
      {
        if (!*(v22 + 8))
        {
          v38 = *(v21 + 144);
          if (v38)
          {
            if (!*(v38 + 8) && ((*(*a4 + 56) ^ *(v21 + 56)) & 0xFF00000000) == 0)
            {
              v39 = mlx::core::allocator::allocator(result);
              result = (*(*v39 + 16))(v39, **(*a2 + 136));
              if (result <= *(*a4 + 60) * *(*a4 + 48) + 0x4000)
              {
                goto LABEL_47;
              }
            }
          }
        }
      }
    }

    v23 = *a3;
    if ((*(*a3 + 168) & 2) == 0 || (v24 = *(a3 + 1)) == 0 || *(v24 + 8) || (v41 = *(v23 + 144)) == 0 || *(v41 + 8) || ((*(*a4 + 56) ^ *(v23 + 56)) & 0xFF00000000) != 0 || (v42 = mlx::core::allocator::allocator(result), (*(*v42 + 16))(v42, **(*a3 + 136)) > *(*a4 + 60) * *(*a4 + 48) + 0x4000))
    {
      v25 = mlx::core::allocator::malloc((*(*a4 + 60) * *(*a4 + 48)));
      v46[0] = &unk_286BE3468;
      v46[1] = mlx::core::allocator::free;
      v46[3] = v46;
      mlx::core::array::set_data(a4, v25);
    }

    goto LABEL_52;
  }

LABEL_42:
  v35 = *MEMORY[0x277D85DE8];
  v36 = a4;
  v37 = v8;
LABEL_53:

  return mlx::core::array::copy_shared_buffer(v36, v37);
}

void sub_25A5E1E98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  std::__function::__value_func<void ()(mlx::core::allocator::Buffer)>::~__value_func[abi:ne200100](&a20);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *_ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_19select_opINS3_6detail6SelectEEEvRKNS3_5arrayESD_SD_RSB_T_NS3_6StreamEEUlvE_JEEEvOSF_DpOT0_EUlvE_NS_9allocatorISM_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286BFFED8;
  v2 = (a1 + 5);
  mlx::core::array::~array((a1 + 9));
  mlx::core::array::~array((a1 + 7));
  mlx::core::array::~array(v2);
  mlx::core::array::~array((a1 + 3));
  return a1;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_19select_opINS3_6detail6SelectEEEvRKNS3_5arrayESD_SD_RSB_T_NS3_6StreamEEUlvE_JEEEvOSF_DpOT0_EUlvE_NS_9allocatorISM_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286BFFED8;
  v2 = (a1 + 5);
  mlx::core::array::~array((a1 + 9));
  mlx::core::array::~array((a1 + 7));
  mlx::core::array::~array(v2);
  mlx::core::array::~array((a1 + 3));

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_19select_opINS3_6detail6SelectEEEvRKNS3_5arrayESD_SD_RSB_T_NS3_6StreamEEUlvE_JEEEvOSF_DpOT0_EUlvE_NS_9allocatorISM_EEFvvEE7__cloneEPNS0_6__baseISP_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_286BFFED8;
  v2 = *(result + 8);
  *(a2 + 16) = *(result + 16);
  *(a2 + 8) = v2;
  v3 = *(result + 32);
  *(a2 + 24) = *(result + 24);
  *(a2 + 32) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(result + 48);
  *(a2 + 40) = *(result + 40);
  *(a2 + 48) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(result + 64);
  *(a2 + 56) = *(result + 56);
  *(a2 + 64) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(result + 80);
  *(a2 + 72) = *(result + 72);
  *(a2 + 80) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 92) = *(result + 92);
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_19select_opINS3_6detail6SelectEEEvRKNS3_5arrayESD_SD_RSB_T_NS3_6StreamEEUlvE_JEEEvOSF_DpOT0_EUlvE_NS_9allocatorISM_EEFvvEE7destroyEv(uint64_t a1)
{
  mlx::core::array::~array((a1 + 72));
  mlx::core::array::~array((a1 + 56));
  mlx::core::array::~array((a1 + 40));

  mlx::core::array::~array((a1 + 24));
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_19select_opINS3_6detail6SelectEEEvRKNS3_5arrayESD_SD_RSB_T_NS3_6StreamEEUlvE_JEEEvOSF_DpOT0_EUlvE_NS_9allocatorISM_EEFvvEE18destroy_deallocateEv(uint64_t a1)
{
  mlx::core::array::~array((a1 + 72));
  mlx::core::array::~array((a1 + 56));
  mlx::core::array::~array((a1 + 40));
  mlx::core::array::~array((a1 + 24));

  operator delete(a1);
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_19select_opINS3_6detail6SelectEEEvRKNS3_5arrayESD_SD_RSB_T_NS3_6StreamEEUlvE_JEEEvOSF_DpOT0_EUlvE_NS_9allocatorISM_EEFvvEEclEv(uint64_t a1)
{
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_19select_opINS3_6detail6SelectEEEvRKNS3_5arrayESD_SD_RSB_T_NS3_6StreamEEUlvE_JEEEvOSF_DpOT0_EUlvE_NS_9allocatorISM_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__bind<void mlx::core::anonymous namespace::select_op<mlx::core::detail::Select>(mlx::core::array const&,mlx::core::array const&,mlx::core::array const&,mlx::core::array&,mlx::core::detail::Select,mlx::core::Stream)::{lambda(void)#1}>::operator()[abi:ne200100]<>(uint64_t a1)
{
  v1 = (a1 + 48);
  switch(*(*(a1 + 48) + 56))
  {
    case 0:
      mlx::core::ternary_op<BOOL,BOOL,BOOL,BOOL,mlx::core::detail::Select>(a1, (a1 + 16), (a1 + 32), v1, *(a1 + 68));
      return;
    case 1:
      v11 = *(a1 + 68);
      v12 = (a1 + 16);
      v13 = (a1 + 32);
      goto LABEL_14;
    case 2:
      v5 = *(a1 + 68);
      v6 = (a1 + 16);
      v7 = (a1 + 32);
      goto LABEL_9;
    case 3:
      v8 = *(a1 + 68);
      v9 = (a1 + 16);
      v10 = (a1 + 32);
      goto LABEL_11;
    case 4:
      v2 = *(a1 + 68);
      v3 = (a1 + 16);
      v4 = (a1 + 32);
      goto LABEL_5;
    case 5:
      v11 = *(a1 + 68);
      v12 = (a1 + 16);
      v13 = (a1 + 32);
LABEL_14:
      mlx::core::ternary_op<BOOL,unsigned char,unsigned char,unsigned char,mlx::core::detail::Select>(a1, v12, v13, v1, v11);
      return;
    case 6:
      v5 = *(a1 + 68);
      v6 = (a1 + 16);
      v7 = (a1 + 32);
LABEL_9:
      mlx::core::ternary_op<BOOL,unsigned short,unsigned short,unsigned short,mlx::core::detail::Select>(a1, v6, v7, v1, v5);
      break;
    case 7:
      v8 = *(a1 + 68);
      v9 = (a1 + 16);
      v10 = (a1 + 32);
LABEL_11:
      mlx::core::ternary_op<BOOL,unsigned int,unsigned int,unsigned int,mlx::core::detail::Select>(a1, v9, v10, v1, v8);
      break;
    case 8:
      v2 = *(a1 + 68);
      v3 = (a1 + 16);
      v4 = (a1 + 32);
LABEL_5:
      mlx::core::ternary_op<BOOL,unsigned long long,unsigned long long,unsigned long long,mlx::core::detail::Select>(a1, v3, v4, v1, v2);
      break;
    case 9:
      mlx::core::ternary_op<BOOL,half,half,half,mlx::core::detail::Select>(a1, (a1 + 16), (a1 + 32), v1, *(a1 + 68));
      break;
    case 0xA:
      mlx::core::ternary_op<BOOL,float,float,float,mlx::core::detail::Select>(a1, (a1 + 16), (a1 + 32), v1, *(a1 + 68));
      break;
    case 0xB:
      mlx::core::ternary_op<BOOL,double,double,double,mlx::core::detail::Select>(a1, (a1 + 16), (a1 + 32), v1, *(a1 + 68));
      break;
    case 0xC:
      mlx::core::ternary_op<BOOL,mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::Select>(a1, (a1 + 16), (a1 + 32), v1, *(a1 + 68));
      break;
    case 0xD:
      mlx::core::ternary_op<BOOL,mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::Select>(a1, (a1 + 16), (a1 + 32), v1, *(a1 + 68));
      break;
    default:
      return;
  }
}

void mlx::core::ternary_op<BOOL,BOOL,BOOL,BOOL,mlx::core::detail::Select>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, int a5)
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v6 = *(*a1 + 152);
  v7 = *(*a2 + 152);
  v8 = *(*a3 + 152);
  v9 = *(*a4 + 152);
  if (a5)
  {
    if (a5 == 1)
    {
      for (i = *(*a4 + 48); i; --i)
      {
        if (*v6++)
        {
          v12 = v7;
        }

        else
        {
          v12 = v8;
        }

        *v9++ = *v12;
        ++v7;
        ++v8;
      }
    }

    else
    {
      memset(v27, 0, sizeof(v27));
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v27, *(v5 + 24), *(v5 + 32), (*(v5 + 32) - *(v5 + 24)) >> 3);
      v17 = *a2;
      memset(v28, 0, sizeof(v28));
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v28, *(v17 + 24), *(v17 + 32), (*(v17 + 32) - *(v17 + 24)) >> 3);
      v18 = *a3;
      memset(v29, 0, sizeof(v29));
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v29, *(v18 + 24), *(v18 + 32), (*(v18 + 32) - *(v18 + 24)) >> 3);
      v19 = *a4;
      v31[0] = 0;
      v31[1] = 0;
      v30 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v30, *(v19 + 24), *(v19 + 32), (*(v19 + 32) - *(v19 + 24)) >> 3);
      memset(v23, 0, sizeof(v23));
      std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(v23, v27, &v32, 4uLL);
      mlx::core::collapse_contiguous_dims(v5, v23, 0x7FFFFFFFuLL, __p);
      v26 = v23;
      std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v26);
      for (j = 0; j != -12; j -= 3)
      {
        v21 = v31[j - 1];
        if (v21)
        {
          v31[j] = v21;
          operator delete(v21);
        }
      }

      mlx::core::ternary_op_dispatch_dims<BOOL,BOOL,BOOL,BOOL,mlx::core::detail::Select>(v6, v7, v8, v9, *(*a4 + 48), __p, v25);
      v27[0] = v25;
      std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](v27);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }
    }
  }

  else
  {
    if (*v6)
    {
      v13 = *(*a2 + 152);
    }

    else
    {
      v13 = *(*a3 + 152);
    }

    *v9 = *v13;
  }

  v22 = *MEMORY[0x277D85DE8];
}

void sub_25A5E25E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(va);
  _Unwind_Resume(a1);
}

void mlx::core::ternary_op<BOOL,unsigned char,unsigned char,unsigned char,mlx::core::detail::Select>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, int a5)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v6 = *(*a1 + 152);
  v7 = *(*a2 + 152);
  v8 = *(*a3 + 152);
  v9 = *(*a4 + 152);
  if (a5)
  {
    if (a5 == 1)
    {
      if (*(*a4 + 48))
      {
        v11 = 0;
        do
        {
          if (v6[v11])
          {
            v12 = v7;
          }

          else
          {
            v12 = v8;
          }

          v9[v11] = v12[v11];
          ++v11;
        }

        while (v11 < *(*a4 + 48));
      }
    }

    else
    {
      memset(v26, 0, sizeof(v26));
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v26, *(v5 + 24), *(v5 + 32), (*(v5 + 32) - *(v5 + 24)) >> 3);
      v16 = *a2;
      memset(v27, 0, sizeof(v27));
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v27, *(v16 + 24), *(v16 + 32), (*(v16 + 32) - *(v16 + 24)) >> 3);
      v17 = *a3;
      memset(v28, 0, sizeof(v28));
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v28, *(v17 + 24), *(v17 + 32), (*(v17 + 32) - *(v17 + 24)) >> 3);
      v18 = *a4;
      v30[0] = 0;
      v30[1] = 0;
      v29 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v29, *(v18 + 24), *(v18 + 32), (*(v18 + 32) - *(v18 + 24)) >> 3);
      memset(v22, 0, sizeof(v22));
      std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(v22, v26, &v31, 4uLL);
      mlx::core::collapse_contiguous_dims(v5, v22, 0x7FFFFFFFuLL, __p);
      v25 = v22;
      std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v25);
      for (i = 0; i != -12; i -= 3)
      {
        v20 = v30[i - 1];
        if (v20)
        {
          v30[i] = v20;
          operator delete(v20);
        }
      }

      mlx::core::ternary_op_dispatch_dims<BOOL,unsigned char,unsigned char,unsigned char,mlx::core::detail::Select>(v6, v7, v8, v9, *(*a4 + 48), __p, v24);
      v26[0] = v24;
      std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](v26);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }
    }
  }

  else
  {
    if (*v6)
    {
      v13 = *(*a2 + 152);
    }

    else
    {
      v13 = *(*a3 + 152);
    }

    *v9 = *v13;
  }

  v21 = *MEMORY[0x277D85DE8];
}

void sub_25A5E28B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(va);
  _Unwind_Resume(a1);
}

void mlx::core::ternary_op<BOOL,unsigned short,unsigned short,unsigned short,mlx::core::detail::Select>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, int a5)
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v6 = *(*a1 + 152);
  v7 = *(*a2 + 152);
  v8 = *(*a3 + 152);
  v9 = *(*a4 + 152);
  if (a5)
  {
    if (a5 == 1)
    {
      for (i = *(*a4 + 48); i; --i)
      {
        if (*v6++)
        {
          v12 = v7;
        }

        else
        {
          v12 = v8;
        }

        *v9++ = *v12;
        ++v7;
        ++v8;
      }
    }

    else
    {
      memset(v27, 0, sizeof(v27));
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v27, *(v5 + 24), *(v5 + 32), (*(v5 + 32) - *(v5 + 24)) >> 3);
      v17 = *a2;
      memset(v28, 0, sizeof(v28));
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v28, *(v17 + 24), *(v17 + 32), (*(v17 + 32) - *(v17 + 24)) >> 3);
      v18 = *a3;
      memset(v29, 0, sizeof(v29));
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v29, *(v18 + 24), *(v18 + 32), (*(v18 + 32) - *(v18 + 24)) >> 3);
      v19 = *a4;
      v31[0] = 0;
      v31[1] = 0;
      v30 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v30, *(v19 + 24), *(v19 + 32), (*(v19 + 32) - *(v19 + 24)) >> 3);
      memset(v23, 0, sizeof(v23));
      std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(v23, v27, &v32, 4uLL);
      mlx::core::collapse_contiguous_dims(v5, v23, 0x7FFFFFFFuLL, __p);
      v26 = v23;
      std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v26);
      for (j = 0; j != -12; j -= 3)
      {
        v21 = v31[j - 1];
        if (v21)
        {
          v31[j] = v21;
          operator delete(v21);
        }
      }

      mlx::core::ternary_op_dispatch_dims<BOOL,unsigned short,unsigned short,unsigned short,mlx::core::detail::Select>(v6, v7, v8, v9, *(*a4 + 48), __p, v25);
      v27[0] = v25;
      std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](v27);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }
    }
  }

  else
  {
    if (*v6)
    {
      v13 = *(*a2 + 152);
    }

    else
    {
      v13 = *(*a3 + 152);
    }

    *v9 = *v13;
  }

  v22 = *MEMORY[0x277D85DE8];
}

void sub_25A5E2B70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(va);
  _Unwind_Resume(a1);
}

void mlx::core::ternary_op<BOOL,unsigned int,unsigned int,unsigned int,mlx::core::detail::Select>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, int a5)
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v6 = *(*a1 + 152);
  v7 = *(*a2 + 152);
  v8 = *(*a3 + 152);
  v9 = *(*a4 + 152);
  if (a5)
  {
    if (a5 == 1)
    {
      for (i = *(*a4 + 48); i; --i)
      {
        if (*v6++)
        {
          v12 = v7;
        }

        else
        {
          v12 = v8;
        }

        *v9++ = *v12;
        ++v7;
        ++v8;
      }
    }

    else
    {
      memset(v27, 0, sizeof(v27));
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v27, *(v5 + 24), *(v5 + 32), (*(v5 + 32) - *(v5 + 24)) >> 3);
      v17 = *a2;
      memset(v28, 0, sizeof(v28));
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v28, *(v17 + 24), *(v17 + 32), (*(v17 + 32) - *(v17 + 24)) >> 3);
      v18 = *a3;
      memset(v29, 0, sizeof(v29));
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v29, *(v18 + 24), *(v18 + 32), (*(v18 + 32) - *(v18 + 24)) >> 3);
      v19 = *a4;
      v31[0] = 0;
      v31[1] = 0;
      v30 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v30, *(v19 + 24), *(v19 + 32), (*(v19 + 32) - *(v19 + 24)) >> 3);
      memset(v23, 0, sizeof(v23));
      std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(v23, v27, &v32, 4uLL);
      mlx::core::collapse_contiguous_dims(v5, v23, 0x7FFFFFFFuLL, __p);
      v26 = v23;
      std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v26);
      for (j = 0; j != -12; j -= 3)
      {
        v21 = v31[j - 1];
        if (v21)
        {
          v31[j] = v21;
          operator delete(v21);
        }
      }

      mlx::core::ternary_op_dispatch_dims<BOOL,unsigned int,unsigned int,unsigned int,mlx::core::detail::Select>(v6, v7, v8, v9, *(*a4 + 48), __p, v25);
      v27[0] = v25;
      std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](v27);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }
    }
  }

  else
  {
    if (*v6)
    {
      v13 = *(*a2 + 152);
    }

    else
    {
      v13 = *(*a3 + 152);
    }

    *v9 = *v13;
  }

  v22 = *MEMORY[0x277D85DE8];
}

void sub_25A5E2E30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(va);
  _Unwind_Resume(a1);
}

void mlx::core::ternary_op<BOOL,unsigned long long,unsigned long long,unsigned long long,mlx::core::detail::Select>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, int a5)
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v6 = *(*a1 + 152);
  v7 = *(*a2 + 152);
  v8 = *(*a3 + 152);
  v9 = *(*a4 + 152);
  if (a5)
  {
    if (a5 == 1)
    {
      for (i = *(*a4 + 48); i; --i)
      {
        if (*v6++)
        {
          v12 = v7;
        }

        else
        {
          v12 = v8;
        }

        *v9++ = *v12;
        ++v7;
        ++v8;
      }
    }

    else
    {
      memset(v27, 0, sizeof(v27));
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v27, *(v5 + 24), *(v5 + 32), (*(v5 + 32) - *(v5 + 24)) >> 3);
      v17 = *a2;
      memset(v28, 0, sizeof(v28));
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v28, *(v17 + 24), *(v17 + 32), (*(v17 + 32) - *(v17 + 24)) >> 3);
      v18 = *a3;
      memset(v29, 0, sizeof(v29));
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v29, *(v18 + 24), *(v18 + 32), (*(v18 + 32) - *(v18 + 24)) >> 3);
      v19 = *a4;
      v31[0] = 0;
      v31[1] = 0;
      v30 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v30, *(v19 + 24), *(v19 + 32), (*(v19 + 32) - *(v19 + 24)) >> 3);
      memset(v23, 0, sizeof(v23));
      std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(v23, v27, &v32, 4uLL);
      mlx::core::collapse_contiguous_dims(v5, v23, 0x7FFFFFFFuLL, __p);
      v26 = v23;
      std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v26);
      for (j = 0; j != -12; j -= 3)
      {
        v21 = v31[j - 1];
        if (v21)
        {
          v31[j] = v21;
          operator delete(v21);
        }
      }

      mlx::core::ternary_op_dispatch_dims<BOOL,unsigned long long,unsigned long long,unsigned long long,mlx::core::detail::Select>(v6, v7, v8, v9, *(*a4 + 48), __p, v25);
      v27[0] = v25;
      std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](v27);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }
    }
  }

  else
  {
    if (*v6)
    {
      v13 = *(*a2 + 152);
    }

    else
    {
      v13 = *(*a3 + 152);
    }

    *v9 = *v13;
  }

  v22 = *MEMORY[0x277D85DE8];
}

void sub_25A5E30F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(va);
  _Unwind_Resume(a1);
}

void mlx::core::ternary_op<BOOL,half,half,half,mlx::core::detail::Select>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, int a5)
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v6 = *(*a1 + 152);
  v7 = *(*a2 + 152);
  v8 = *(*a3 + 152);
  v9 = *(*a4 + 152);
  if (a5)
  {
    if (a5 == 1)
    {
      for (i = *(*a4 + 48); i; --i)
      {
        if (*v6++)
        {
          v12 = v7;
        }

        else
        {
          v12 = v8;
        }

        *v9++ = *v12;
        ++v7;
        ++v8;
      }
    }

    else
    {
      memset(v27, 0, sizeof(v27));
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v27, *(v5 + 24), *(v5 + 32), (*(v5 + 32) - *(v5 + 24)) >> 3);
      v17 = *a2;
      memset(v28, 0, sizeof(v28));
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v28, *(v17 + 24), *(v17 + 32), (*(v17 + 32) - *(v17 + 24)) >> 3);
      v18 = *a3;
      memset(v29, 0, sizeof(v29));
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v29, *(v18 + 24), *(v18 + 32), (*(v18 + 32) - *(v18 + 24)) >> 3);
      v19 = *a4;
      v31[0] = 0;
      v31[1] = 0;
      v30 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v30, *(v19 + 24), *(v19 + 32), (*(v19 + 32) - *(v19 + 24)) >> 3);
      memset(v23, 0, sizeof(v23));
      std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(v23, v27, &v32, 4uLL);
      mlx::core::collapse_contiguous_dims(v5, v23, 0x7FFFFFFFuLL, __p);
      v26 = v23;
      std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v26);
      for (j = 0; j != -12; j -= 3)
      {
        v21 = v31[j - 1];
        if (v21)
        {
          v31[j] = v21;
          operator delete(v21);
        }
      }

      mlx::core::ternary_op_dispatch_dims<BOOL,half,half,half,mlx::core::detail::Select>(v6, v7, v8, v9, *(*a4 + 48), __p, v25);
      v27[0] = v25;
      std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](v27);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }
    }
  }

  else
  {
    if (*v6)
    {
      v13 = *(*a2 + 152);
    }

    else
    {
      v13 = *(*a3 + 152);
    }

    *v9 = *v13;
  }

  v22 = *MEMORY[0x277D85DE8];
}

void sub_25A5E33B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(va);
  _Unwind_Resume(a1);
}

void mlx::core::ternary_op<BOOL,float,float,float,mlx::core::detail::Select>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, int a5)
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v6 = *(*a1 + 152);
  v7 = *(*a2 + 152);
  v8 = *(*a3 + 152);
  v9 = *(*a4 + 152);
  if (a5)
  {
    if (a5 == 1)
    {
      for (i = *(*a4 + 48); i; --i)
      {
        if (*v6++)
        {
          v12 = v7;
        }

        else
        {
          v12 = v8;
        }

        *v9++ = *v12;
        ++v7;
        ++v8;
      }
    }

    else
    {
      memset(v27, 0, sizeof(v27));
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v27, *(v5 + 24), *(v5 + 32), (*(v5 + 32) - *(v5 + 24)) >> 3);
      v17 = *a2;
      memset(v28, 0, sizeof(v28));
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v28, *(v17 + 24), *(v17 + 32), (*(v17 + 32) - *(v17 + 24)) >> 3);
      v18 = *a3;
      memset(v29, 0, sizeof(v29));
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v29, *(v18 + 24), *(v18 + 32), (*(v18 + 32) - *(v18 + 24)) >> 3);
      v19 = *a4;
      v31[0] = 0;
      v31[1] = 0;
      v30 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v30, *(v19 + 24), *(v19 + 32), (*(v19 + 32) - *(v19 + 24)) >> 3);
      memset(v23, 0, sizeof(v23));
      std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(v23, v27, &v32, 4uLL);
      mlx::core::collapse_contiguous_dims(v5, v23, 0x7FFFFFFFuLL, __p);
      v26 = v23;
      std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v26);
      for (j = 0; j != -12; j -= 3)
      {
        v21 = v31[j - 1];
        if (v21)
        {
          v31[j] = v21;
          operator delete(v21);
        }
      }

      mlx::core::ternary_op_dispatch_dims<BOOL,float,float,float,mlx::core::detail::Select>(v6, v7, v8, v9, *(*a4 + 48), __p, v25);
      v27[0] = v25;
      std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](v27);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }
    }
  }

  else
  {
    if (*v6)
    {
      v13 = *(*a2 + 152);
    }

    else
    {
      v13 = *(*a3 + 152);
    }

    *v9 = *v13;
  }

  v22 = *MEMORY[0x277D85DE8];
}

void sub_25A5E3670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(va);
  _Unwind_Resume(a1);
}

void mlx::core::ternary_op<BOOL,double,double,double,mlx::core::detail::Select>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, int a5)
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v6 = *(*a1 + 152);
  v7 = *(*a2 + 152);
  v8 = *(*a3 + 152);
  v9 = *(*a4 + 152);
  if (a5)
  {
    if (a5 == 1)
    {
      for (i = *(*a4 + 48); i; --i)
      {
        if (*v6++)
        {
          v12 = v7;
        }

        else
        {
          v12 = v8;
        }

        *v9++ = *v12;
        ++v7;
        ++v8;
      }
    }

    else
    {
      memset(v27, 0, sizeof(v27));
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v27, *(v5 + 24), *(v5 + 32), (*(v5 + 32) - *(v5 + 24)) >> 3);
      v17 = *a2;
      memset(v28, 0, sizeof(v28));
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v28, *(v17 + 24), *(v17 + 32), (*(v17 + 32) - *(v17 + 24)) >> 3);
      v18 = *a3;
      memset(v29, 0, sizeof(v29));
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v29, *(v18 + 24), *(v18 + 32), (*(v18 + 32) - *(v18 + 24)) >> 3);
      v19 = *a4;
      v31[0] = 0;
      v31[1] = 0;
      v30 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v30, *(v19 + 24), *(v19 + 32), (*(v19 + 32) - *(v19 + 24)) >> 3);
      memset(v23, 0, sizeof(v23));
      std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(v23, v27, &v32, 4uLL);
      mlx::core::collapse_contiguous_dims(v5, v23, 0x7FFFFFFFuLL, __p);
      v26 = v23;
      std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v26);
      for (j = 0; j != -12; j -= 3)
      {
        v21 = v31[j - 1];
        if (v21)
        {
          v31[j] = v21;
          operator delete(v21);
        }
      }

      mlx::core::ternary_op_dispatch_dims<BOOL,double,double,double,mlx::core::detail::Select>(v6, v7, v8, v9, *(*a4 + 48), __p, v25);
      v27[0] = v25;
      std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](v27);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }
    }
  }

  else
  {
    if (*v6)
    {
      v13 = *(*a2 + 152);
    }

    else
    {
      v13 = *(*a3 + 152);
    }

    *v9 = *v13;
  }

  v22 = *MEMORY[0x277D85DE8];
}

void sub_25A5E3930(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(va);
  _Unwind_Resume(a1);
}

void mlx::core::ternary_op<BOOL,mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::Select>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, int a5)
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v6 = *(*a1 + 152);
  v7 = *(*a2 + 152);
  v8 = *(*a3 + 152);
  v9 = *(*a4 + 152);
  if (a5)
  {
    if (a5 == 1)
    {
      for (i = *(*a4 + 48); i; --i)
      {
        if (*v6++)
        {
          v12 = v7;
        }

        else
        {
          v12 = v8;
        }

        *v9++ = *v12;
        ++v7;
        ++v8;
      }
    }

    else
    {
      memset(v27, 0, sizeof(v27));
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v27, *(v5 + 24), *(v5 + 32), (*(v5 + 32) - *(v5 + 24)) >> 3);
      v17 = *a2;
      memset(v28, 0, sizeof(v28));
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v28, *(v17 + 24), *(v17 + 32), (*(v17 + 32) - *(v17 + 24)) >> 3);
      v18 = *a3;
      memset(v29, 0, sizeof(v29));
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v29, *(v18 + 24), *(v18 + 32), (*(v18 + 32) - *(v18 + 24)) >> 3);
      v19 = *a4;
      v31[0] = 0;
      v31[1] = 0;
      v30 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v30, *(v19 + 24), *(v19 + 32), (*(v19 + 32) - *(v19 + 24)) >> 3);
      memset(v23, 0, sizeof(v23));
      std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(v23, v27, &v32, 4uLL);
      mlx::core::collapse_contiguous_dims(v5, v23, 0x7FFFFFFFuLL, __p);
      v26 = v23;
      std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v26);
      for (j = 0; j != -12; j -= 3)
      {
        v21 = v31[j - 1];
        if (v21)
        {
          v31[j] = v21;
          operator delete(v21);
        }
      }

      mlx::core::ternary_op_dispatch_dims<BOOL,mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::Select>(v6, v7, v8, v9, *(*a4 + 48), __p, v25);
      v27[0] = v25;
      std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](v27);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }
    }
  }

  else
  {
    if (*v6)
    {
      v13 = *(*a2 + 152);
    }

    else
    {
      v13 = *(*a3 + 152);
    }

    *v9 = *v13;
  }

  v22 = *MEMORY[0x277D85DE8];
}

void sub_25A5E3BF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(va);
  _Unwind_Resume(a1);
}

void mlx::core::ternary_op<BOOL,mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::Select>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, int a5)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v6 = *(*a1 + 152);
  v7 = *(*a2 + 152);
  v8 = *(*a3 + 152);
  v9 = *(*a4 + 152);
  if (a5)
  {
    if (a5 == 1)
    {
      if (*(*a4 + 48))
      {
        v11 = 0;
        do
        {
          v9[v11] = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(v6[v11]), 0x1FuLL)), v7[v11], v8[v11]);
          ++v11;
        }

        while (v11 < *(*a4 + 48));
      }
    }

    else
    {
      memset(v24, 0, sizeof(v24));
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v24, *(v5 + 24), *(v5 + 32), (*(v5 + 32) - *(v5 + 24)) >> 3);
      v14 = *a2;
      memset(v25, 0, sizeof(v25));
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v25, *(v14 + 24), *(v14 + 32), (*(v14 + 32) - *(v14 + 24)) >> 3);
      v15 = *a3;
      memset(v26, 0, sizeof(v26));
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v26, *(v15 + 24), *(v15 + 32), (*(v15 + 32) - *(v15 + 24)) >> 3);
      v16 = *a4;
      v28[0] = 0;
      v28[1] = 0;
      v27 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v27, *(v16 + 24), *(v16 + 32), (*(v16 + 32) - *(v16 + 24)) >> 3);
      memset(v20, 0, sizeof(v20));
      std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(v20, v24, &v29, 4uLL);
      mlx::core::collapse_contiguous_dims(v5, v20, 0x7FFFFFFFuLL, __p);
      v23 = v20;
      std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v23);
      for (i = 0; i != -12; i -= 3)
      {
        v18 = v28[i - 1];
        if (v18)
        {
          v28[i] = v18;
          operator delete(v18);
        }
      }

      mlx::core::ternary_op_dispatch_dims<BOOL,mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::Select>(v6, v7, v8, v9, *(*a4 + 48), __p, v22);
      v24[0] = v22;
      std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](v24);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }
    }
  }

  else
  {
    *v9 = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(*v6), 0x1FuLL)), *v7, *v8);
  }

  v19 = *MEMORY[0x277D85DE8];
}

void sub_25A5E3ED0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(va);
  _Unwind_Resume(a1);
}

void mlx::core::ternary_op_dispatch_dims<BOOL,BOOL,BOOL,BOOL,mlx::core::detail::Select>(_BYTE *a1, _BYTE *a2, _BYTE *a3, _BYTE *a4, unint64_t a5, uint64_t *a6, uint64_t **a7)
{
  v8 = a4;
  v9 = a3;
  v10 = a2;
  v11 = a1;
  v12 = *a7;
  v13 = *a7 + 9;
  v14 = a6[1] - *a6;
  v15 = (v14 >> 2) - 2;
  if ((v14 >> 2) == 2)
  {
    mlx::core::ternary_op_dims<BOOL,BOOL,BOOL,BOOL,mlx::core::detail::Select,2>(a1, a2, a3, a4, a6, v12, v12 + 3, v12 + 6, v13, 0);
  }

  else if ((v14 >> 2) == 1)
  {
    v16 = **a6;
    if (v16 >= 1)
    {
      v17 = **v12;
      v18 = *v12[3];
      v19 = *v12[6];
      v20 = *v12[9];
      do
      {
        if (*v11)
        {
          v21 = v10;
        }

        else
        {
          v21 = v9;
        }

        v11 += v17;
        *v8 = *v21;
        v10 += v18;
        v9 += v19;
        v8 += v20;
        --v16;
      }

      while (v16);
    }
  }

  else
  {
    mlx::core::ContiguousIterator::ContiguousIterator(&v85, a6, *a7, (v14 >> 2) - 2);
    mlx::core::ContiguousIterator::ContiguousIterator(&v78, a6, v12 + 3, (v14 >> 2) - 2);
    mlx::core::ContiguousIterator::ContiguousIterator(&v71, a6, v12 + 6, (v14 >> 2) - 2);
    if (a5)
    {
      v22 = 0;
      v23 = *(*v13 + (((v14 << 30) - 0x300000000) >> 29));
      do
      {
        mlx::core::ternary_op_dims<BOOL,BOOL,BOOL,BOOL,mlx::core::detail::Select,2>(&v11[v85], &v10[v78], &v9[v71], &v8[v22], a6, v12, v12 + 3, v12 + 6, v13, v15);
        v24 = v87 - v86;
        v25 = (v87 - v86) >> 2;
        if (v25)
        {
          v26 = v90;
          v27 = ((v24 << 30) - 0x100000000) >> 32;
          v28 = &v90[4 * v27];
          v29 = *v28;
          v30 = &v86[4 * v27];
          v31 = v88;
          v32 = v85;
          if (v25 >= 2 && v29 == *v30 - 1)
          {
            v35 = (v24 >> 2) & 0x7FFFFFFF;
            v34 = v35 - 1;
            v36 = 4 * v35;
            v37 = v86 - 8;
            do
            {
              v38 = v34;
              *v28 = 0;
              v32 -= v31[v27] * (*v30 - 1);
              v85 = v32;
              --v34;
              v28 = &v26[v36 - 8];
              v29 = *v28;
              v26 -= 4;
              if (v38 < 2)
              {
                break;
              }

              v30 = &v37[v36];
              v39 = *&v37[4 * v35] - 1;
              v37 -= 4;
              v27 = v34;
            }

            while (v29 == v39);
            v28 = &v26[4 * v35 - 4];
          }

          else
          {
            v34 = ((v24 << 30) - 0x100000000) >> 32;
          }

          *v28 = v29 + 1;
          v85 = v31[v34] + v32;
        }

        v40 = v80 - v79;
        v41 = (v80 - v79) >> 2;
        if (v41)
        {
          v42 = v83;
          v43 = ((v40 << 30) - 0x100000000) >> 32;
          v44 = v83 + 4 * v43;
          v45 = *v44;
          v46 = v81;
          v47 = v78;
          if (v41 >= 2 && (v48 = v79 + 4 * v43, v45 == *v48 - 1))
          {
            v49 = (v40 >> 2) & 0x7FFFFFFF;
            v50 = v49 - 1;
            v51 = 4 * v49;
            v52 = v79 - 8;
            do
            {
              v53 = v50;
              *v44 = 0;
              v47 -= v46[v43] * (*v48 - 1);
              v78 = v47;
              --v50;
              v44 = &v42[v51 - 8];
              v45 = *v44;
              v42 -= 4;
              if (v53 < 2)
              {
                break;
              }

              v48 = &v52[v51];
              v54 = *&v52[4 * v49] - 1;
              v52 -= 4;
              v43 = v50;
            }

            while (v45 == v54);
            v44 = &v42[4 * v49 - 4];
          }

          else
          {
            v50 = ((v40 << 30) - 0x100000000) >> 32;
          }

          *v44 = v45 + 1;
          v78 = v46[v50] + v47;
        }

        v55 = v73 - v72;
        v56 = (v73 - v72) >> 2;
        if (v56)
        {
          v57 = __p;
          v58 = ((v55 << 30) - 0x100000000) >> 32;
          v59 = __p + 4 * v58;
          v60 = *v59;
          v61 = v74;
          v62 = v71;
          if (v56 >= 2 && (v63 = v72 + 4 * v58, v60 == *v63 - 1))
          {
            v64 = (v55 >> 2) & 0x7FFFFFFF;
            v65 = v64 - 1;
            v66 = 4 * v64;
            v67 = v72 - 8;
            do
            {
              v68 = v65;
              *v59 = 0;
              v62 -= v61[v58] * (*v63 - 1);
              v71 = v62;
              --v65;
              v59 = &v57[v66 - 8];
              v60 = *v59;
              v57 -= 4;
              if (v68 < 2)
              {
                break;
              }

              v63 = &v67[v66];
              v69 = *&v67[4 * v64] - 1;
              v67 -= 4;
              v58 = v65;
            }

            while (v60 == v69);
            v59 = &v57[4 * v64 - 4];
          }

          else
          {
            v65 = ((v55 << 30) - 0x100000000) >> 32;
          }

          *v59 = v60 + 1;
          v71 = v61[v65] + v62;
        }

        v22 += v23;
      }

      while (v22 < a5);
    }

    if (__p)
    {
      v77 = __p;
      operator delete(__p);
    }

    if (v74)
    {
      v75 = v74;
      operator delete(v74);
    }

    if (v72)
    {
      v73 = v72;
      operator delete(v72);
    }

    if (v83)
    {
      v84 = v83;
      operator delete(v83);
    }

    if (v81)
    {
      v82 = v81;
      operator delete(v81);
    }

    if (v79)
    {
      v80 = v79;
      operator delete(v79);
    }

    if (v90)
    {
      v91 = v90;
      operator delete(v90);
    }

    if (v88)
    {
      v89 = v88;
      operator delete(v88);
    }

    if (v86)
    {
      v87 = v86;
      operator delete(v86);
    }
  }
}

void sub_25A5E440C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  mlx::core::ContiguousIterator::~ContiguousIterator((v14 - 168));
  _Unwind_Resume(a1);
}

_BYTE *mlx::core::ternary_op_dims<BOOL,BOOL,BOOL,BOOL,mlx::core::detail::Select,2>(_BYTE *result, _BYTE *a2, _BYTE *a3, _BYTE *a4, uint64_t *a5, void *a6, uint64_t *a7, void *a8, void *a9, int a10)
{
  v10 = *a5;
  v11 = *(v10 + 4 * a10);
  if (v11 >= 1)
  {
    v12 = 0;
    v13 = *(*a6 + 8 * a10);
    v14 = *a7;
    v15 = *(*a7 + 8 * a10);
    v16 = *(*a8 + 8 * a10);
    v17 = *(*a9 + 8 * a10);
    v18 = a10 + 1;
    v19 = *(*a6 + 8 * v18);
    v20 = *(v14 + 8 * v18);
    v21 = *(*a8 + 8 * v18);
    v22 = *(*a9 + 8 * v18);
    v23 = *(v10 + 4 * v18);
    do
    {
      if (v23 >= 1)
      {
        v24 = v23;
        v25 = result;
        v26 = a2;
        v27 = a3;
        v28 = a4;
        do
        {
          if (*v25)
          {
            v29 = v26;
          }

          else
          {
            v29 = v27;
          }

          v25 += v19;
          *v28 = *v29;
          v26 += v20;
          v27 += v21;
          v28 += v22;
          --v24;
        }

        while (v24);
      }

      result += v13;
      a2 += v15;
      a3 += v16;
      a4 += v17;
      ++v12;
    }

    while (v12 != v11);
  }

  return result;
}

void mlx::core::ternary_op_dispatch_dims<BOOL,unsigned char,unsigned char,unsigned char,mlx::core::detail::Select>(_BYTE *a1, _BYTE *a2, _BYTE *a3, _BYTE *a4, unint64_t a5, int **a6, uint64_t **a7)
{
  v8 = a4;
  v9 = a3;
  v10 = a2;
  v11 = a1;
  v12 = *a7;
  v13 = *a7 + 9;
  v14 = a6[1] - *a6;
  v15 = (v14 >> 2) - 2;
  if ((v14 >> 2) == 2)
  {
    mlx::core::ternary_op_dims<BOOL,unsigned char,unsigned char,unsigned char,mlx::core::detail::Select,2>(a1, a2, a3, a4, a6, v12, v12 + 3, v12 + 6, v13, 0);
  }

  else if ((v14 >> 2) == 1)
  {
    v16 = **a6;
    if (v16 >= 1)
    {
      v17 = **v12;
      v18 = *v12[3];
      v19 = *v12[6];
      v20 = *v12[9];
      do
      {
        if (*v11)
        {
          v21 = v10;
        }

        else
        {
          v21 = v9;
        }

        v11 += v17;
        *v8 = *v21;
        v10 += v18;
        v9 += v19;
        v8 += v20;
        --v16;
      }

      while (v16);
    }
  }

  else
  {
    mlx::core::ContiguousIterator::ContiguousIterator(&v85, a6, *a7, (v14 >> 2) - 2);
    mlx::core::ContiguousIterator::ContiguousIterator(&v78, a6, v12 + 3, (v14 >> 2) - 2);
    mlx::core::ContiguousIterator::ContiguousIterator(&v71, a6, v12 + 6, (v14 >> 2) - 2);
    if (a5)
    {
      v22 = 0;
      v23 = *(*v13 + (((v14 << 30) - 0x300000000) >> 29));
      do
      {
        mlx::core::ternary_op_dims<BOOL,unsigned char,unsigned char,unsigned char,mlx::core::detail::Select,2>(&v11[v85], &v10[v78], &v9[v71], &v8[v22], a6, v12, v12 + 3, v12 + 6, v13, v15);
        v24 = v87 - v86;
        v25 = (v87 - v86) >> 2;
        if (v25)
        {
          v26 = v90;
          v27 = ((v24 << 30) - 0x100000000) >> 32;
          v28 = &v90[4 * v27];
          v29 = *v28;
          v30 = &v86[4 * v27];
          v31 = v88;
          v32 = v85;
          if (v25 >= 2 && v29 == *v30 - 1)
          {
            v35 = (v24 >> 2) & 0x7FFFFFFF;
            v34 = v35 - 1;
            v36 = 4 * v35;
            v37 = v86 - 8;
            do
            {
              v38 = v34;
              *v28 = 0;
              v32 -= v31[v27] * (*v30 - 1);
              v85 = v32;
              --v34;
              v28 = &v26[v36 - 8];
              v29 = *v28;
              v26 -= 4;
              if (v38 < 2)
              {
                break;
              }

              v30 = &v37[v36];
              v39 = *&v37[4 * v35] - 1;
              v37 -= 4;
              v27 = v34;
            }

            while (v29 == v39);
            v28 = &v26[4 * v35 - 4];
          }

          else
          {
            v34 = ((v24 << 30) - 0x100000000) >> 32;
          }

          *v28 = v29 + 1;
          v85 = v31[v34] + v32;
        }

        v40 = v80 - v79;
        v41 = (v80 - v79) >> 2;
        if (v41)
        {
          v42 = v83;
          v43 = ((v40 << 30) - 0x100000000) >> 32;
          v44 = v83 + 4 * v43;
          v45 = *v44;
          v46 = v81;
          v47 = v78;
          if (v41 >= 2 && (v48 = v79 + 4 * v43, v45 == *v48 - 1))
          {
            v49 = (v40 >> 2) & 0x7FFFFFFF;
            v50 = v49 - 1;
            v51 = 4 * v49;
            v52 = v79 - 8;
            do
            {
              v53 = v50;
              *v44 = 0;
              v47 -= v46[v43] * (*v48 - 1);
              v78 = v47;
              --v50;
              v44 = &v42[v51 - 8];
              v45 = *v44;
              v42 -= 4;
              if (v53 < 2)
              {
                break;
              }

              v48 = &v52[v51];
              v54 = *&v52[4 * v49] - 1;
              v52 -= 4;
              v43 = v50;
            }

            while (v45 == v54);
            v44 = &v42[4 * v49 - 4];
          }

          else
          {
            v50 = ((v40 << 30) - 0x100000000) >> 32;
          }

          *v44 = v45 + 1;
          v78 = v46[v50] + v47;
        }

        v55 = v73 - v72;
        v56 = (v73 - v72) >> 2;
        if (v56)
        {
          v57 = __p;
          v58 = ((v55 << 30) - 0x100000000) >> 32;
          v59 = __p + 4 * v58;
          v60 = *v59;
          v61 = v74;
          v62 = v71;
          if (v56 >= 2 && (v63 = v72 + 4 * v58, v60 == *v63 - 1))
          {
            v64 = (v55 >> 2) & 0x7FFFFFFF;
            v65 = v64 - 1;
            v66 = 4 * v64;
            v67 = v72 - 8;
            do
            {
              v68 = v65;
              *v59 = 0;
              v62 -= v61[v58] * (*v63 - 1);
              v71 = v62;
              --v65;
              v59 = &v57[v66 - 8];
              v60 = *v59;
              v57 -= 4;
              if (v68 < 2)
              {
                break;
              }

              v63 = &v67[v66];
              v69 = *&v67[4 * v64] - 1;
              v67 -= 4;
              v58 = v65;
            }

            while (v60 == v69);
            v59 = &v57[4 * v64 - 4];
          }

          else
          {
            v65 = ((v55 << 30) - 0x100000000) >> 32;
          }

          *v59 = v60 + 1;
          v71 = v61[v65] + v62;
        }

        v22 += v23;
      }

      while (v22 < a5);
    }

    if (__p)
    {
      v77 = __p;
      operator delete(__p);
    }

    if (v74)
    {
      v75 = v74;
      operator delete(v74);
    }

    if (v72)
    {
      v73 = v72;
      operator delete(v72);
    }

    if (v83)
    {
      v84 = v83;
      operator delete(v83);
    }

    if (v81)
    {
      v82 = v81;
      operator delete(v81);
    }

    if (v79)
    {
      v80 = v79;
      operator delete(v79);
    }

    if (v90)
    {
      v91 = v90;
      operator delete(v90);
    }

    if (v88)
    {
      v89 = v88;
      operator delete(v88);
    }

    if (v86)
    {
      v87 = v86;
      operator delete(v86);
    }
  }
}

void sub_25A5E49BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  mlx::core::ContiguousIterator::~ContiguousIterator((v14 - 168));
  _Unwind_Resume(a1);
}

_BYTE *mlx::core::ternary_op_dims<BOOL,unsigned char,unsigned char,unsigned char,mlx::core::detail::Select,2>(_BYTE *result, _BYTE *a2, _BYTE *a3, _BYTE *a4, void *a5, void *a6, void *a7, void *a8, void *a9, int a10)
{
  v10 = *(*a5 + 4 * a10);
  if (v10 >= 1)
  {
    v11 = 0;
    v12 = *(*a6 + 8 * a10);
    v13 = *(*a7 + 8 * a10);
    v14 = *(*a8 + 8 * a10);
    v15 = *(*a9 + 8 * a10);
    v16 = a10 + 1;
    do
    {
      v17 = *(*a5 + 4 * v16);
      if (v17 >= 1)
      {
        v18 = *(*a6 + 8 * v16);
        v19 = *(*a7 + 8 * v16);
        v20 = *(*a8 + 8 * v16);
        v21 = *(*a9 + 8 * v16);
        v22 = result;
        v23 = a2;
        v24 = a3;
        v25 = a4;
        do
        {
          if (*v22)
          {
            v26 = v23;
          }

          else
          {
            v26 = v24;
          }

          v22 += v18;
          *v25 = *v26;
          v23 += v19;
          v24 += v20;
          v25 += v21;
          --v17;
        }

        while (v17);
      }

      result += v12;
      a2 += v13;
      a3 += v14;
      a4 += v15;
      ++v11;
    }

    while (v11 != v10);
  }

  return result;
}

void mlx::core::ternary_op_dispatch_dims<BOOL,unsigned short,unsigned short,unsigned short,mlx::core::detail::Select>(_BYTE *a1, _WORD *a2, _WORD *a3, _WORD *a4, unint64_t a5, int **a6, uint64_t **a7)
{
  v8 = a4;
  v9 = a3;
  v10 = a2;
  v11 = a1;
  v12 = *a7;
  v13 = *a7 + 9;
  v14 = a6[1] - *a6;
  v15 = (v14 >> 2) - 2;
  if ((v14 >> 2) == 2)
  {
    mlx::core::ternary_op_dims<BOOL,unsigned short,unsigned short,unsigned short,mlx::core::detail::Select,2>(a1, a2, a3, a4, a6, v12, v12 + 3, v12 + 6, v13, 0);
  }

  else if ((v14 >> 2) == 1)
  {
    v16 = **a6;
    if (v16 >= 1)
    {
      v17 = **v12;
      v18 = 2 * *v12[3];
      v19 = 2 * *v12[6];
      v20 = 2 * *v12[9];
      do
      {
        if (*v11)
        {
          v21 = v10;
        }

        else
        {
          v21 = v9;
        }

        v11 += v17;
        *v8 = *v21;
        v10 = (v10 + v18);
        v9 = (v9 + v19);
        v8 = (v8 + v20);
        --v16;
      }

      while (v16);
    }
  }

  else
  {
    mlx::core::ContiguousIterator::ContiguousIterator(&v85, a6, *a7, (v14 >> 2) - 2);
    mlx::core::ContiguousIterator::ContiguousIterator(&v78, a6, v12 + 3, (v14 >> 2) - 2);
    mlx::core::ContiguousIterator::ContiguousIterator(&v71, a6, v12 + 6, (v14 >> 2) - 2);
    if (a5)
    {
      v22 = 0;
      v23 = *(*v13 + (((v14 << 30) - 0x300000000) >> 29));
      do
      {
        mlx::core::ternary_op_dims<BOOL,unsigned short,unsigned short,unsigned short,mlx::core::detail::Select,2>(&v11[v85], &v10[v78], &v9[v71], &v8[v22], a6, v12, v12 + 3, v12 + 6, v13, v15);
        v24 = v87 - v86;
        v25 = (v87 - v86) >> 2;
        if (v25)
        {
          v26 = v90;
          v27 = ((v24 << 30) - 0x100000000) >> 32;
          v28 = &v90[4 * v27];
          v29 = *v28;
          v30 = &v86[4 * v27];
          v31 = v88;
          v32 = v85;
          if (v25 >= 2 && v29 == *v30 - 1)
          {
            v35 = (v24 >> 2) & 0x7FFFFFFF;
            v34 = v35 - 1;
            v36 = 4 * v35;
            v37 = v86 - 8;
            do
            {
              v38 = v34;
              *v28 = 0;
              v32 -= v31[v27] * (*v30 - 1);
              v85 = v32;
              --v34;
              v28 = &v26[v36 - 8];
              v29 = *v28;
              v26 -= 4;
              if (v38 < 2)
              {
                break;
              }

              v30 = &v37[v36];
              v39 = *&v37[4 * v35] - 1;
              v37 -= 4;
              v27 = v34;
            }

            while (v29 == v39);
            v28 = &v26[4 * v35 - 4];
          }

          else
          {
            v34 = ((v24 << 30) - 0x100000000) >> 32;
          }

          *v28 = v29 + 1;
          v85 = v31[v34] + v32;
        }

        v40 = v80 - v79;
        v41 = (v80 - v79) >> 2;
        if (v41)
        {
          v42 = v83;
          v43 = ((v40 << 30) - 0x100000000) >> 32;
          v44 = v83 + 4 * v43;
          v45 = *v44;
          v46 = v81;
          v47 = v78;
          if (v41 >= 2 && (v48 = v79 + 4 * v43, v45 == *v48 - 1))
          {
            v49 = (v40 >> 2) & 0x7FFFFFFF;
            v50 = v49 - 1;
            v51 = 4 * v49;
            v52 = v79 - 8;
            do
            {
              v53 = v50;
              *v44 = 0;
              v47 -= v46[v43] * (*v48 - 1);
              v78 = v47;
              --v50;
              v44 = &v42[v51 - 8];
              v45 = *v44;
              v42 -= 4;
              if (v53 < 2)
              {
                break;
              }

              v48 = &v52[v51];
              v54 = *&v52[4 * v49] - 1;
              v52 -= 4;
              v43 = v50;
            }

            while (v45 == v54);
            v44 = &v42[4 * v49 - 4];
          }

          else
          {
            v50 = ((v40 << 30) - 0x100000000) >> 32;
          }

          *v44 = v45 + 1;
          v78 = v46[v50] + v47;
        }

        v55 = v73 - v72;
        v56 = (v73 - v72) >> 2;
        if (v56)
        {
          v57 = __p;
          v58 = ((v55 << 30) - 0x100000000) >> 32;
          v59 = __p + 4 * v58;
          v60 = *v59;
          v61 = v74;
          v62 = v71;
          if (v56 >= 2 && (v63 = v72 + 4 * v58, v60 == *v63 - 1))
          {
            v64 = (v55 >> 2) & 0x7FFFFFFF;
            v65 = v64 - 1;
            v66 = 4 * v64;
            v67 = v72 - 8;
            do
            {
              v68 = v65;
              *v59 = 0;
              v62 -= v61[v58] * (*v63 - 1);
              v71 = v62;
              --v65;
              v59 = &v57[v66 - 8];
              v60 = *v59;
              v57 -= 4;
              if (v68 < 2)
              {
                break;
              }

              v63 = &v67[v66];
              v69 = *&v67[4 * v64] - 1;
              v67 -= 4;
              v58 = v65;
            }

            while (v60 == v69);
            v59 = &v57[4 * v64 - 4];
          }

          else
          {
            v65 = ((v55 << 30) - 0x100000000) >> 32;
          }

          *v59 = v60 + 1;
          v71 = v61[v65] + v62;
        }

        v22 += v23;
      }

      while (v22 < a5);
    }

    if (__p)
    {
      v77 = __p;
      operator delete(__p);
    }

    if (v74)
    {
      v75 = v74;
      operator delete(v74);
    }

    if (v72)
    {
      v73 = v72;
      operator delete(v72);
    }

    if (v83)
    {
      v84 = v83;
      operator delete(v83);
    }

    if (v81)
    {
      v82 = v81;
      operator delete(v81);
    }

    if (v79)
    {
      v80 = v79;
      operator delete(v79);
    }

    if (v90)
    {
      v91 = v90;
      operator delete(v90);
    }

    if (v88)
    {
      v89 = v88;
      operator delete(v88);
    }

    if (v86)
    {
      v87 = v86;
      operator delete(v86);
    }
  }
}

void sub_25A5E4F98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  mlx::core::ContiguousIterator::~ContiguousIterator((v14 - 168));
  _Unwind_Resume(a1);
}

_BYTE *mlx::core::ternary_op_dims<BOOL,unsigned short,unsigned short,unsigned short,mlx::core::detail::Select,2>(_BYTE *result, _WORD *a2, _WORD *a3, _WORD *a4, void *a5, void *a6, uint64_t *a7, void *a8, void *a9, int a10)
{
  v10 = *(*a5 + 4 * a10);
  if (v10 >= 1)
  {
    v11 = 0;
    v12 = *(*a6 + 8 * a10);
    v13 = *a7;
    v14 = *(*a7 + 8 * a10);
    v15 = a10 + 1;
    v16 = *(*a6 + 8 * v15);
    v17 = *(*a5 + 4 * v15);
    v18 = 2 * v14;
    v19 = 2 * *(v13 + 8 * v15);
    v20 = 2 * *(*a8 + 8 * a10);
    v21 = 2 * *(*a8 + 8 * v15);
    v22 = 2 * *(*a9 + 8 * a10);
    v23 = 2 * *(*a9 + 8 * v15);
    do
    {
      if (v17 >= 1)
      {
        v24 = a4;
        v25 = a3;
        v26 = a2;
        v27 = v17;
        v28 = result;
        do
        {
          if (*v28)
          {
            v29 = v26;
          }

          else
          {
            v29 = v25;
          }

          v28 += v16;
          *v24 = *v29;
          v26 = (v26 + v19);
          v25 = (v25 + v21);
          v24 = (v24 + v23);
          --v27;
        }

        while (v27);
      }

      result += v12;
      ++v11;
      a2 = (a2 + v18);
      a3 = (a3 + v20);
      a4 = (a4 + v22);
    }

    while (v11 != v10);
  }

  return result;
}

void mlx::core::ternary_op_dispatch_dims<BOOL,unsigned int,unsigned int,unsigned int,mlx::core::detail::Select>(_BYTE *a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, unint64_t a5, uint64_t *a6, uint64_t **a7)
{
  v8 = a4;
  v9 = a3;
  v10 = a2;
  v11 = a1;
  v12 = *a7;
  v13 = *a7 + 9;
  v14 = a6[1] - *a6;
  v15 = (v14 >> 2) - 2;
  if ((v14 >> 2) == 2)
  {
    mlx::core::ternary_op_dims<BOOL,unsigned int,unsigned int,unsigned int,mlx::core::detail::Select,2>(a1, a2, a3, a4, a6, v12, v12 + 3, v12 + 6, v13, 0);
  }

  else if ((v14 >> 2) == 1)
  {
    v16 = **a6;
    if (v16 >= 1)
    {
      v17 = **v12;
      v18 = 4 * *v12[3];
      v19 = 4 * *v12[6];
      v20 = 4 * *v12[9];
      do
      {
        if (*v11)
        {
          v21 = v10;
        }

        else
        {
          v21 = v9;
        }

        v11 += v17;
        *v8 = *v21;
        v10 = (v10 + v18);
        v9 = (v9 + v19);
        v8 = (v8 + v20);
        --v16;
      }

      while (v16);
    }
  }

  else
  {
    mlx::core::ContiguousIterator::ContiguousIterator(&v85, a6, *a7, (v14 >> 2) - 2);
    mlx::core::ContiguousIterator::ContiguousIterator(&v78, a6, v12 + 3, (v14 >> 2) - 2);
    mlx::core::ContiguousIterator::ContiguousIterator(&v71, a6, v12 + 6, (v14 >> 2) - 2);
    if (a5)
    {
      v22 = 0;
      v23 = *(*v13 + (((v14 << 30) - 0x300000000) >> 29));
      do
      {
        mlx::core::ternary_op_dims<BOOL,unsigned int,unsigned int,unsigned int,mlx::core::detail::Select,2>(&v11[v85], &v10[v78], &v9[v71], &v8[v22], a6, v12, v12 + 3, v12 + 6, v13, v15);
        v24 = v87 - v86;
        v25 = (v87 - v86) >> 2;
        if (v25)
        {
          v26 = v90;
          v27 = ((v24 << 30) - 0x100000000) >> 32;
          v28 = &v90[4 * v27];
          v29 = *v28;
          v30 = &v86[4 * v27];
          v31 = v88;
          v32 = v85;
          if (v25 >= 2 && v29 == *v30 - 1)
          {
            v35 = (v24 >> 2) & 0x7FFFFFFF;
            v34 = v35 - 1;
            v36 = 4 * v35;
            v37 = v86 - 8;
            do
            {
              v38 = v34;
              *v28 = 0;
              v32 -= v31[v27] * (*v30 - 1);
              v85 = v32;
              --v34;
              v28 = &v26[v36 - 8];
              v29 = *v28;
              v26 -= 4;
              if (v38 < 2)
              {
                break;
              }

              v30 = &v37[v36];
              v39 = *&v37[4 * v35] - 1;
              v37 -= 4;
              v27 = v34;
            }

            while (v29 == v39);
            v28 = &v26[4 * v35 - 4];
          }

          else
          {
            v34 = ((v24 << 30) - 0x100000000) >> 32;
          }

          *v28 = v29 + 1;
          v85 = v31[v34] + v32;
        }

        v40 = v80 - v79;
        v41 = (v80 - v79) >> 2;
        if (v41)
        {
          v42 = v83;
          v43 = ((v40 << 30) - 0x100000000) >> 32;
          v44 = v83 + 4 * v43;
          v45 = *v44;
          v46 = v81;
          v47 = v78;
          if (v41 >= 2 && (v48 = v79 + 4 * v43, v45 == *v48 - 1))
          {
            v49 = (v40 >> 2) & 0x7FFFFFFF;
            v50 = v49 - 1;
            v51 = 4 * v49;
            v52 = v79 - 8;
            do
            {
              v53 = v50;
              *v44 = 0;
              v47 -= v46[v43] * (*v48 - 1);
              v78 = v47;
              --v50;
              v44 = &v42[v51 - 8];
              v45 = *v44;
              v42 -= 4;
              if (v53 < 2)
              {
                break;
              }

              v48 = &v52[v51];
              v54 = *&v52[4 * v49] - 1;
              v52 -= 4;
              v43 = v50;
            }

            while (v45 == v54);
            v44 = &v42[4 * v49 - 4];
          }

          else
          {
            v50 = ((v40 << 30) - 0x100000000) >> 32;
          }

          *v44 = v45 + 1;
          v78 = v46[v50] + v47;
        }

        v55 = v73 - v72;
        v56 = (v73 - v72) >> 2;
        if (v56)
        {
          v57 = __p;
          v58 = ((v55 << 30) - 0x100000000) >> 32;
          v59 = __p + 4 * v58;
          v60 = *v59;
          v61 = v74;
          v62 = v71;
          if (v56 >= 2 && (v63 = v72 + 4 * v58, v60 == *v63 - 1))
          {
            v64 = (v55 >> 2) & 0x7FFFFFFF;
            v65 = v64 - 1;
            v66 = 4 * v64;
            v67 = v72 - 8;
            do
            {
              v68 = v65;
              *v59 = 0;
              v62 -= v61[v58] * (*v63 - 1);
              v71 = v62;
              --v65;
              v59 = &v57[v66 - 8];
              v60 = *v59;
              v57 -= 4;
              if (v68 < 2)
              {
                break;
              }

              v63 = &v67[v66];
              v69 = *&v67[4 * v64] - 1;
              v67 -= 4;
              v58 = v65;
            }

            while (v60 == v69);
            v59 = &v57[4 * v64 - 4];
          }

          else
          {
            v65 = ((v55 << 30) - 0x100000000) >> 32;
          }

          *v59 = v60 + 1;
          v71 = v61[v65] + v62;
        }

        v22 += v23;
      }

      while (v22 < a5);
    }

    if (__p)
    {
      v77 = __p;
      operator delete(__p);
    }

    if (v74)
    {
      v75 = v74;
      operator delete(v74);
    }

    if (v72)
    {
      v73 = v72;
      operator delete(v72);
    }

    if (v83)
    {
      v84 = v83;
      operator delete(v83);
    }

    if (v81)
    {
      v82 = v81;
      operator delete(v81);
    }

    if (v79)
    {
      v80 = v79;
      operator delete(v79);
    }

    if (v90)
    {
      v91 = v90;
      operator delete(v90);
    }

    if (v88)
    {
      v89 = v88;
      operator delete(v88);
    }

    if (v86)
    {
      v87 = v86;
      operator delete(v86);
    }
  }
}

void sub_25A5E556C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  mlx::core::ContiguousIterator::~ContiguousIterator((v14 - 168));
  _Unwind_Resume(a1);
}

_BYTE *mlx::core::ternary_op_dims<BOOL,unsigned int,unsigned int,unsigned int,mlx::core::detail::Select,2>(_BYTE *result, _DWORD *a2, _DWORD *a3, _DWORD *a4, uint64_t *a5, void *a6, void *a7, void *a8, void *a9, int a10)
{
  v10 = *a5;
  v11 = *(*a5 + 4 * a10);
  if (v11 >= 1)
  {
    v12 = 0;
    v13 = *(*a6 + 8 * a10);
    v14 = a10 + 1;
    v15 = *(*a6 + 8 * v14);
    v16 = 4 * *(*a7 + 8 * a10);
    v17 = 4 * *(*a7 + 8 * v14);
    v18 = 4 * *(*a8 + 8 * a10);
    v19 = 4 * *(*a8 + 8 * v14);
    v20 = 4 * *(*a9 + 8 * a10);
    v21 = 4 * *(*a9 + 8 * v14);
    do
    {
      v22 = *(v10 + 4 * v14);
      if (v22 >= 1)
      {
        v23 = a4;
        v24 = a3;
        v25 = a2;
        v26 = result;
        do
        {
          if (*v26)
          {
            v27 = v25;
          }

          else
          {
            v27 = v24;
          }

          v26 += v15;
          *v23 = *v27;
          v25 = (v25 + v17);
          v24 = (v24 + v19);
          v23 = (v23 + v21);
          --v22;
        }

        while (v22);
      }

      result += v13;
      ++v12;
      a2 = (a2 + v16);
      a3 = (a3 + v18);
      a4 = (a4 + v20);
    }

    while (v12 != v11);
  }

  return result;
}

void mlx::core::ternary_op_dispatch_dims<BOOL,unsigned long long,unsigned long long,unsigned long long,mlx::core::detail::Select>(_BYTE *a1, void *a2, void *a3, void *a4, unint64_t a5, int **a6, uint64_t **a7)
{
  v8 = a4;
  v9 = a3;
  v10 = a2;
  v11 = a1;
  v12 = *a7;
  v13 = *a7 + 9;
  v14 = a6[1] - *a6;
  v15 = (v14 >> 2) - 2;
  if ((v14 >> 2) == 2)
  {
    mlx::core::ternary_op_dims<BOOL,unsigned long long,unsigned long long,unsigned long long,mlx::core::detail::Select,2>(a1, a2, a3, a4, a6, v12, v12 + 3, v12 + 6, v13, 0);
  }

  else if ((v14 >> 2) == 1)
  {
    v16 = **a6;
    if (v16 >= 1)
    {
      v17 = **v12;
      v18 = 8 * *v12[3];
      v19 = 8 * *v12[6];
      v20 = 8 * *v12[9];
      do
      {
        if (*v11)
        {
          v21 = v10;
        }

        else
        {
          v21 = v9;
        }

        v11 += v17;
        *v8 = *v21;
        v10 = (v10 + v18);
        v9 = (v9 + v19);
        v8 = (v8 + v20);
        --v16;
      }

      while (v16);
    }
  }

  else
  {
    mlx::core::ContiguousIterator::ContiguousIterator(&v85, a6, *a7, (v14 >> 2) - 2);
    mlx::core::ContiguousIterator::ContiguousIterator(&v78, a6, v12 + 3, (v14 >> 2) - 2);
    mlx::core::ContiguousIterator::ContiguousIterator(&v71, a6, v12 + 6, (v14 >> 2) - 2);
    if (a5)
    {
      v22 = 0;
      v23 = *(*v13 + (((v14 << 30) - 0x300000000) >> 29));
      do
      {
        mlx::core::ternary_op_dims<BOOL,unsigned long long,unsigned long long,unsigned long long,mlx::core::detail::Select,2>(&v11[v85], &v10[v78], &v9[v71], &v8[v22], a6, v12, v12 + 3, v12 + 6, v13, v15);
        v24 = v87 - v86;
        v25 = (v87 - v86) >> 2;
        if (v25)
        {
          v26 = v90;
          v27 = ((v24 << 30) - 0x100000000) >> 32;
          v28 = &v90[4 * v27];
          v29 = *v28;
          v30 = &v86[4 * v27];
          v31 = v88;
          v32 = v85;
          if (v25 >= 2 && v29 == *v30 - 1)
          {
            v35 = (v24 >> 2) & 0x7FFFFFFF;
            v34 = v35 - 1;
            v36 = 4 * v35;
            v37 = v86 - 8;
            do
            {
              v38 = v34;
              *v28 = 0;
              v32 -= v31[v27] * (*v30 - 1);
              v85 = v32;
              --v34;
              v28 = &v26[v36 - 8];
              v29 = *v28;
              v26 -= 4;
              if (v38 < 2)
              {
                break;
              }

              v30 = &v37[v36];
              v39 = *&v37[4 * v35] - 1;
              v37 -= 4;
              v27 = v34;
            }

            while (v29 == v39);
            v28 = &v26[4 * v35 - 4];
          }

          else
          {
            v34 = ((v24 << 30) - 0x100000000) >> 32;
          }

          *v28 = v29 + 1;
          v85 = v31[v34] + v32;
        }

        v40 = v80 - v79;
        v41 = (v80 - v79) >> 2;
        if (v41)
        {
          v42 = v83;
          v43 = ((v40 << 30) - 0x100000000) >> 32;
          v44 = v83 + 4 * v43;
          v45 = *v44;
          v46 = v81;
          v47 = v78;
          if (v41 >= 2 && (v48 = v79 + 4 * v43, v45 == *v48 - 1))
          {
            v49 = (v40 >> 2) & 0x7FFFFFFF;
            v50 = v49 - 1;
            v51 = 4 * v49;
            v52 = v79 - 8;
            do
            {
              v53 = v50;
              *v44 = 0;
              v47 -= v46[v43] * (*v48 - 1);
              v78 = v47;
              --v50;
              v44 = &v42[v51 - 8];
              v45 = *v44;
              v42 -= 4;
              if (v53 < 2)
              {
                break;
              }

              v48 = &v52[v51];
              v54 = *&v52[4 * v49] - 1;
              v52 -= 4;
              v43 = v50;
            }

            while (v45 == v54);
            v44 = &v42[4 * v49 - 4];
          }

          else
          {
            v50 = ((v40 << 30) - 0x100000000) >> 32;
          }

          *v44 = v45 + 1;
          v78 = v46[v50] + v47;
        }

        v55 = v73 - v72;
        v56 = (v73 - v72) >> 2;
        if (v56)
        {
          v57 = __p;
          v58 = ((v55 << 30) - 0x100000000) >> 32;
          v59 = __p + 4 * v58;
          v60 = *v59;
          v61 = v74;
          v62 = v71;
          if (v56 >= 2 && (v63 = v72 + 4 * v58, v60 == *v63 - 1))
          {
            v64 = (v55 >> 2) & 0x7FFFFFFF;
            v65 = v64 - 1;
            v66 = 4 * v64;
            v67 = v72 - 8;
            do
            {
              v68 = v65;
              *v59 = 0;
              v62 -= v61[v58] * (*v63 - 1);
              v71 = v62;
              --v65;
              v59 = &v57[v66 - 8];
              v60 = *v59;
              v57 -= 4;
              if (v68 < 2)
              {
                break;
              }

              v63 = &v67[v66];
              v69 = *&v67[4 * v64] - 1;
              v67 -= 4;
              v58 = v65;
            }

            while (v60 == v69);
            v59 = &v57[4 * v64 - 4];
          }

          else
          {
            v65 = ((v55 << 30) - 0x100000000) >> 32;
          }

          *v59 = v60 + 1;
          v71 = v61[v65] + v62;
        }

        v22 += v23;
      }

      while (v22 < a5);
    }

    if (__p)
    {
      v77 = __p;
      operator delete(__p);
    }

    if (v74)
    {
      v75 = v74;
      operator delete(v74);
    }

    if (v72)
    {
      v73 = v72;
      operator delete(v72);
    }

    if (v83)
    {
      v84 = v83;
      operator delete(v83);
    }

    if (v81)
    {
      v82 = v81;
      operator delete(v81);
    }

    if (v79)
    {
      v80 = v79;
      operator delete(v79);
    }

    if (v90)
    {
      v91 = v90;
      operator delete(v90);
    }

    if (v88)
    {
      v89 = v88;
      operator delete(v88);
    }

    if (v86)
    {
      v87 = v86;
      operator delete(v86);
    }
  }
}