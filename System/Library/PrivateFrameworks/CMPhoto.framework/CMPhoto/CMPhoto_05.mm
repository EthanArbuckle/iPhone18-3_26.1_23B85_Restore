void calc_wpsnr(uint64_t a1, int a2, uint64_t a3, int a4, int a5, uint64_t a6, unint64_t a7, uint64_t a8, unsigned int a9, unsigned int a10, int a11, uint64_t a12, int a13, uint64_t a14, uint64_t a15)
{
  v18 = a5;
  v198 = *MEMORY[0x1E69E9840];
  v23 = ldexp(1.0, a5 - 6);
  v25 = ldexp(1.0, v18);
  if (!a7)
  {
    v140 = NAN;
LABEL_96:
    log10((~(-1 << v18) * ~(-1 << v18)) / v140);
    return;
  }

  v26 = 0;
  v180 = 0;
  v175 = a15;
  v174 = a12;
  v192 = a11;
  v172 = v25 * sqrt(8294400.0 / (a6 * a7));
  v27 = a6 * a10;
  v171 = a6 * a10;
  v28 = a10 * a2;
  v29 = a10;
  v197 = v18;
  v196 = (a10 * a4);
  v195 = v28;
  v170 = (a10 * a9);
  v143 = a13;
  v30 = -2 * a10;
  v194 = 2 * v196;
  v157 = a3 + v30 - 2 * v196;
  v149 = a9 * v196;
  v148 = 2 * v149;
  v169 = 2 * v170;
  v193 = 2 * v28;
  v158 = (~(-1 << v18) * ~(-1 << v18));
  v156 = a1 + v30 - v193;
  v151 = a9;
  v147 = a9 * v28;
  v146 = 2 * v147;
  v31 = -a10;
  v155 = a3 + v31 - v196;
  v142 = v31;
  v154 = a1 + v31 - v28;
  v164 = a8;
  v168 = -INFINITY;
  v150 = a9;
  v145 = 4 * a6 * a9;
  v32 = 0.0;
  v144 = a14;
  v159 = a14;
  v33 = a7;
  v189 = 0;
  v176 = a10;
  v173 = a8;
  v163 = 4 * a6;
  do
  {
    v153 = v33;
    if (a8 >= v33)
    {
      v34 = v33;
    }

    else
    {
      v34 = a8;
    }

    v152 = v26;
    if (v27)
    {
      v35 = 0;
      v36 = 0;
      v161 = v34;
      v160 = v34 + 1;
      v37 = a7 - v189;
      if (a7 - v189 >= a8)
      {
        v37 = a8;
      }

      v38 = v37;
      v39 = v26 * v143;
      v40 = v37;
      v41 = v37 + 2;
      if (v144)
      {
        v42 = v37 < 1;
      }

      else
      {
        v42 = 1;
      }

      v43 = v42;
      v162 = v43;
      v166 = v175 + 8 * v39;
      v165 = v174 + 8 * v39;
      v191 = -1;
      v44 = v142;
      v187 = v154;
      v186 = v155;
      v185 = v156;
      v184 = v157;
      v188 = v41;
      do
      {
        v181 = v36;
        v179 = &v141;
        v182 = v35;
        v45 = (v171 - v35) / v29;
        v177 = v45;
        if (v45 >= a8)
        {
          v46 = a8;
        }

        else
        {
          v46 = v45;
        }

        v183 = (v46 + 2);
        v47 = MEMORY[0x1EEE9AC00](v24);
        v49 = &v141 - ((v48 + 15) & 0xFFFFFFFF0);
        v50 = MEMORY[0x1EEE9AC00](v47);
        v53 = &v141 - v52;
        if (v51 >= 1)
        {
          v54 = 8 * v51;
          bzero(v49, 8 * v51);
          v55 = v54;
          v29 = v176;
          bzero(v53, v55);
        }

        v190 = v53;
        v178 = (v46 * v40);
        v24 = MEMORY[0x1EEE9AC00](v50);
        v57 = (&v141 - v56);
        v58 = 0.0;
        if (v40 >= -1)
        {
          v61 = 0;
          v62 = 0;
          v63 = 0;
          v64 = 0;
          v65 = v190 + 1;
          v66 = v49 + 8;
          v167 = (v46 + 1);
          v67 = v167 + 1;
          v24 = 0xFFFFFFFFLL;
          v68 = -1;
          v70 = v186;
          v69 = v187;
          v71 = v185;
          v72 = v184;
          do
          {
            if (v46 >= -1)
            {
              v73 = 0;
              v74 = v68 + v189;
              v75 = v67;
              v76 = v191;
              v77 = &v65[v24];
              v78 = &v66[v24];
              do
              {
                if ((v74 & 0x8000000000000000) != 0)
                {
                  v64 = 1;
                }

                else if (v76 < 0)
                {
                  v62 = 1;
                }

                else if (a7 <= v74)
                {
                  v63 = 1;
                }

                else if (v27 <= v44 + v73)
                {
                  v61 = 1;
                }

                else
                {
                  if (v197 < 9)
                  {
                    *v78 = *(v69 + v73);
                    v80 = *(v70 + v73);
                  }

                  else
                  {
                    v79 = v192;
                    *v78 = *(v71 + 2 * v73) >> v192;
                    v80 = *(v72 + 2 * v73) >> v79;
                  }

                  *v77 = v80;
                }

                v24 = (v24 + 1);
                ++v77;
                ++v78;
                v73 += a10;
                ++v76;
                --v75;
              }

              while (v75);
            }

            v72 += v194;
            v71 += v193;
            v70 += v196;
            v69 += v195;
            v42 = v68++ < v40;
          }

          while (v42);
          v60 = v190;
          if (v46 >= -1 && (v64 & 1) != 0)
          {
            v81 = v177;
            if (v177 >= v164)
            {
              v81 = v164;
            }

            v82 = 8 * v81 + 16;
            v83 = v183;
            v84 = v190;
            v85 = v49;
            do
            {
              *v85 = *(v85 + v82);
              ++v85;
              v24 = *(v84 + v82);
              *v84++ = v24;
              --v83;
            }

            while (v83);
          }

          v29 = v176;
          v86 = v163;
          v59 = v182;
          v87 = v188;
          if (v46 >= -1 && (v63 & 1) != 0)
          {
            v88 = v183;
            v89 = v160 * v183;
            v90 = v161 * v183;
            do
            {
              *&v49[v89 * 8] = *&v49[v90 * 8];
              v60[v89++] = v60[v90++];
              --v88;
            }

            while (v88);
          }

          v91 = v167;
          if (v40 >= -1 && (v62 & 1) != 0)
          {
            v92 = 0;
            v93 = v177;
            if (v177 >= v164)
            {
              v93 = v164;
            }

            v94 = 8 * v93 + 16;
            do
            {
              *(v66 - 1) = *v66;
              *(v65 - 1) = *v65;
              ++v92;
              v66 = (v66 + v94);
              v65 = (v65 + v94);
            }

            while (v92 < v87);
          }

          if (v40 >= -1 && (v61 & 1) != 0)
          {
            v95 = 0;
            v96 = 0;
            do
            {
              *&v49[8 * v91 + v95] = *&v49[8 * v46 + v95];
              *(&v60[v91] + v95) = *(&v60[v46] + v95);
              ++v96;
              v95 += 8 * v46 + 16;
            }

            while (v96 < v87);
          }

          if (v40 >= 1)
          {
            v97 = v91 - 1;
            v98 = v49 + 8;
            v99 = 8 * v183;
            v58 = 0.0;
            v100 = 1;
            do
            {
              if (v46 <= 0)
              {
                v101 = v100 + 1;
              }

              else
              {
                v101 = v100 + 1;
                v102 = v46 * (v100 - 1);
                v103 = &v98[v99 * (v100 + 1)];
                v104 = &v49[v99 * v100 + 16];
                v24 = v97;
                v105 = &v98[v99 * (v100 - 1)];
                do
                {
                  v106 = *(v105 - 1);
                  v107 = *(v103 - 1);
                  v108 = (*v104 + *(v104 - 2) + *v105 + *v103) * -2.0;
                  v109 = *(v105 + 1);
                  v105 += 8;
                  v110 = v109 + v106;
                  v111 = *(v103 + 1);
                  v103 += 8;
                  v112 = (v108 + *(v104 - 1) * 12.0 - (v110 + v107 + v111)) * 0.25;
                  v113 = -v112;
                  if (v112 >= 0.0)
                  {
                    v113 = v112;
                  }

                  v57[v102] = v113;
                  v58 = v58 + v112 * v112;
                  ++v102;
                  v104 += 8;
                  --v24;
                }

                while (v24);
                v60 = v190;
              }

              v42 = v100 < v40;
              v100 = v101;
            }

            while (v42);
            if ((v162 & 1) == 0)
            {
              v114 = 0;
              v115 = v159;
              do
              {
                if (v46 >= 1)
                {
                  v116 = (v115 + 4 * (v59 / v29));
                  v117 = v46;
                  v118 = v57;
                  do
                  {
                    v119 = *v118++;
                    v120 = v119;
                    *v116++ = v120;
                    --v117;
                  }

                  while (v117);
                }

                ++v114;
                v115 += v86;
                v57 += v46;
              }

              while (v114 < v40);
            }
          }
        }

        else
        {
          v59 = v182;
          v60 = v190;
        }

        v121 = v58 / (v38 * v46);
        if (v175)
        {
          *(v166 + 8 * v181) = v121;
        }

        if (v121 < v23)
        {
          v121 = v23;
        }

        v122 = v172 / v121;
        v123 = fabs(sqrt(v122));
        if (v122 == v168)
        {
          v124 = INFINITY;
        }

        else
        {
          v124 = v123;
        }

        if (v40 < 1)
        {
          v136 = 0.0;
        }

        else
        {
          v125 = 0;
          v126 = 8 * v183;
          v127 = &v60[v126 / 8 + 1];
          v128 = &v49[v126 + 8];
          v129 = 1;
          do
          {
            v130 = (v46 + 1) - 1;
            v131 = v128;
            v132 = v127;
            if (v46 >= 1)
            {
              do
              {
                v134 = *v131++;
                v133 = v134;
                v135 = *v132++;
                v24 = v135;
                v125 += (v133 - v135) * (v133 - v135);
                --v130;
              }

              while (v130);
            }

            v127 += v126;
            v128 += v126;
            v42 = v129++ < v40;
          }

          while (v42);
          v136 = v125;
        }

        v137 = v124 * (v136 / v178);
        LODWORD(a8) = v173;
        if (v174)
        {
          if (v137 == 0.0)
          {
            v138 = INFINITY;
          }

          else
          {
            v139 = log10(v158 / v137);
            v59 = v182;
            v138 = v139 * 10.0;
          }

          *(v165 + 8 * v181) = v138;
        }

        v36 = v181 + 1;
        ++v180;
        v32 = v32 + v137;
        v35 = v59 + v170;
        v184 += v169;
        v185 += v169;
        v186 += v170;
        v187 += v170;
        v44 += v170;
        v191 += v170;
      }

      while (v27 > v35);
    }

    v26 = v152 + 1;
    v157 += v148;
    v156 += v146;
    v155 += v149;
    v154 += v147;
    v33 = v153 - v151;
    v159 += v145;
    v189 += v150;
  }

  while (a7 > v189);
  v140 = v32 / v180;
  LOBYTE(v18) = v197;
  if (v140 != 0.0)
  {
    goto LABEL_96;
  }
}

uint64_t _computesRGB2LinearRGB(__CVBuffer *a1, __CVBuffer *a2)
{
  if (CVPixelBufferGetPixelFormatType(a1) != 1919365990)
  {
    _computesRGB2LinearRGB_cold_1(&v27);
    return v27;
  }

  if (CVPixelBufferGetPixelFormatType(a2) != 1919365990)
  {
    _computesRGB2LinearRGB_cold_2(&v27);
    return v27;
  }

  v25 = 0;
  v26 = 0;
  CMPhotoGetPixelBufferCLAP(a1, 0, 0, &v25, &v26);
  v23 = 0;
  v24 = 0;
  CMPhotoGetPixelBufferCLAP(a2, 0, 0, &v23, &v24);
  if (v25 != v23 || v26 != v24)
  {
    _computesRGB2LinearRGB_cold_3(&v27);
    return v27;
  }

  CVPixelBufferLockBaseAddress(a1, 0);
  CVPixelBufferLockBaseAddress(a2, 0);
  v3 = 0;
  v20 = a2;
  do
  {
    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a1, v3);
    BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a1, v3);
    v6 = CVPixelBufferGetBytesPerRowOfPlane(a2, v3);
    v22 = v3;
    v7 = CVPixelBufferGetBaseAddressOfPlane(a2, v3);
    v8 = v26;
    if (v26)
    {
      v9 = v7;
      v10 = 0;
      v11 = v25;
      v12 = 4 * (v6 >> 2);
      v13 = 4 * (BytesPerRowOfPlane >> 2);
      do
      {
        v14 = v11;
        v15 = BaseAddressOfPlane;
        for (i = v9; v14; --v14)
        {
          v17 = *v15;
          if (*v15 <= 0.04045)
          {
            v18 = v17 / 12.92;
          }

          else
          {
            v18 = powf((v17 + 0.055) / 1.055, 2.4);
          }

          *i++ = v18;
          ++v15;
        }

        ++v10;
        v9 = (v9 + v12);
        BaseAddressOfPlane = (BaseAddressOfPlane + v13);
      }

      while (v10 != v8);
    }

    v3 = v22 + 1;
    a2 = v20;
  }

  while (v22 != 2);
  CVPixelBufferUnlockBaseAddress(a1, 0);
  CVPixelBufferUnlockBaseAddress(v20, 0);
  return 0;
}

uint64_t _computesLinearRGB2XYZ(__CVBuffer *a1, __CVBuffer *a2)
{
  if (CVPixelBufferGetPixelFormatType(a1) != 1919365990)
  {
    _computesLinearRGB2XYZ_cold_1(&v32);
    return v32;
  }

  if (CVPixelBufferGetPixelFormatType(a2) != 1919365990)
  {
    _computesLinearRGB2XYZ_cold_2(&v32);
    return v32;
  }

  v30 = 0;
  v31 = 0;
  CMPhotoGetPixelBufferCLAP(a1, 0, 0, &v30, &v31);
  v28 = 0;
  v29 = 0;
  CMPhotoGetPixelBufferCLAP(a2, 0, 0, &v28, &v29);
  if (v30 != v28 || v31 != v29)
  {
    _computesLinearRGB2XYZ_cold_3(&v32);
    return v32;
  }

  CVPixelBufferLockBaseAddress(a1, 0);
  CVPixelBufferLockBaseAddress(a2, 0);
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a1, 0);
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a1, 0);
  v6 = CVPixelBufferGetBaseAddressOfPlane(a1, 1uLL);
  v7 = CVPixelBufferGetBaseAddressOfPlane(a1, 2uLL);
  v8 = CVPixelBufferGetBytesPerRowOfPlane(a2, 0);
  v9 = CVPixelBufferGetBaseAddressOfPlane(a2, 0);
  v10 = CVPixelBufferGetBaseAddressOfPlane(a2, 1uLL);
  v11 = CVPixelBufferGetBaseAddressOfPlane(a2, 2uLL);
  v12 = v31;
  if (v31)
  {
    v13 = 0;
    v14 = v30;
    do
    {
      v15 = BaseAddressOfPlane;
      v16 = v6;
      v17 = v7;
      v18 = v9;
      v19 = v10;
      v20 = v11;
      for (i = v14; i; --i)
      {
        v22 = *v15++;
        v23 = v22;
        v24 = *v16++;
        v25 = v24;
        v26 = *v17++;
        *v18++ = ((v25 * 0.35759) + (v23 * 0.41239)) + (v26 * 0.18045);
        *v19++ = ((v25 * 0.71518) + (v23 * 0.21264)) + (v26 * 0.07218);
        *v20++ = ((v25 * 0.1192) + (v23 * 0.019331)) + (v26 * 0.95037);
      }

      ++v13;
      v11 = (v11 + v8);
      v10 = (v10 + v8);
      v9 = (v9 + v8);
      v7 = (v7 + BytesPerRowOfPlane);
      v6 = (v6 + BytesPerRowOfPlane);
      BaseAddressOfPlane = (BaseAddressOfPlane + BytesPerRowOfPlane);
    }

    while (v13 != v12);
  }

  CVPixelBufferUnlockBaseAddress(a1, 0);
  CVPixelBufferUnlockBaseAddress(a2, 0);
  return 0;
}

uint64_t _computesXYZ2YCxCz(__CVBuffer *a1, __CVBuffer *a2)
{
  if (CVPixelBufferGetPixelFormatType(a1) != 1919365990)
  {
    _computesXYZ2YCxCz_cold_1(&v32);
    return v32;
  }

  if (CVPixelBufferGetPixelFormatType(a2) != 1919365990)
  {
    _computesXYZ2YCxCz_cold_2(&v32);
    return v32;
  }

  v30 = 0;
  v31 = 0;
  CMPhotoGetPixelBufferCLAP(a1, 0, 0, &v30, &v31);
  v28 = 0;
  v29 = 0;
  CMPhotoGetPixelBufferCLAP(a2, 0, 0, &v28, &v29);
  if (v30 != v28 || v31 != v29)
  {
    _computesXYZ2YCxCz_cold_3(&v32);
    return v32;
  }

  CVPixelBufferLockBaseAddress(a1, 0);
  CVPixelBufferLockBaseAddress(a2, 0);
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a1, 0);
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a1, 0);
  v6 = CVPixelBufferGetBaseAddressOfPlane(a1, 1uLL);
  v7 = CVPixelBufferGetBaseAddressOfPlane(a1, 2uLL);
  v8 = CVPixelBufferGetBytesPerRowOfPlane(a2, 0);
  v9 = CVPixelBufferGetBaseAddressOfPlane(a2, 0);
  v10 = CVPixelBufferGetBaseAddressOfPlane(a2, 1uLL);
  v11 = CVPixelBufferGetBaseAddressOfPlane(a2, 2uLL);
  v12 = v31;
  if (v31)
  {
    v13 = 0;
    v14 = v30;
    do
    {
      v15 = BaseAddressOfPlane;
      v16 = v6;
      v17 = v7;
      v18 = v9;
      v19 = v10;
      v20 = v11;
      for (i = v14; i; --i)
      {
        v22 = *v15++;
        v23 = v22;
        v24 = *v16++;
        v25 = v24;
        v26 = *v17++;
        *v18++ = (v25 * 116.0) + -16.0;
        *v19++ = ((v23 * 1.0522) - v25) * 500.0;
        *v20++ = (v25 + (v26 * -0.91836)) * 200.0;
      }

      ++v13;
      v11 = (v11 + v8);
      v10 = (v10 + v8);
      v9 = (v9 + v8);
      v7 = (v7 + BytesPerRowOfPlane);
      v6 = (v6 + BytesPerRowOfPlane);
      BaseAddressOfPlane = (BaseAddressOfPlane + BytesPerRowOfPlane);
    }

    while (v13 != v12);
  }

  CVPixelBufferUnlockBaseAddress(a1, 0);
  CVPixelBufferUnlockBaseAddress(a2, 0);
  return 0;
}

uint64_t convolve(__CVBuffer *a1, __CVBuffer *a2, __CVBuffer *a3)
{
  if (CVPixelBufferGetPixelFormatType(a1) != 1919365990)
  {
    convolve_cold_1(&v61);
    return v61;
  }

  if (CVPixelBufferGetPixelFormatType(a3) != 1919365990)
  {
    convolve_cold_2(&v61);
    return v61;
  }

  if (CVPixelBufferGetPixelFormatType(a2) != 1919365990)
  {
    convolve_cold_3(&v61);
    return v61;
  }

  CVPixelBufferLockBaseAddress(a1, 0);
  CVPixelBufferLockBaseAddress(a2, 0);
  CVPixelBufferLockBaseAddress(a3, 0);
  v59 = 0;
  v60 = 0;
  CMPhotoGetPixelBufferCLAP(a1, 0, 0, &v59, &v60);
  v57 = 0;
  v58 = 0;
  CMPhotoGetPixelBufferCLAP(a3, 0, 0, &v57, &v58);
  v6 = a3;
  v7 = v57;
  v8 = v58;
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a1, 0);
  v10 = BytesPerRowOfPlane + 3;
  if (BytesPerRowOfPlane >= 0)
  {
    v10 = BytesPerRowOfPlane;
  }

  v56 = v10;
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a1, 0);
  v12 = CVPixelBufferGetBaseAddressOfPlane(a1, 1uLL);
  v50 = a1;
  v13 = CVPixelBufferGetBaseAddressOfPlane(a1, 2uLL);
  v54 = CVPixelBufferGetBytesPerRowOfPlane(a2, 0);
  v14 = CVPixelBufferGetBaseAddressOfPlane(a2, 0);
  v15 = CVPixelBufferGetBaseAddressOfPlane(a2, 1uLL);
  v49 = a2;
  v16 = CVPixelBufferGetBaseAddressOfPlane(a2, 2uLL);
  v17 = v6;
  pixelBuffer = v6;
  v18 = CVPixelBufferGetBytesPerRowOfPlane(v6, 0);
  v19 = v18 + 3;
  if (v18 >= 0)
  {
    v19 = v18;
  }

  v52 = v19;
  v20 = CVPixelBufferGetBaseAddressOfPlane(v6, 0);
  v21 = CVPixelBufferGetBaseAddressOfPlane(v17, 1uLL);
  v22 = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, 2uLL);
  v55 = v60;
  if (v60)
  {
    v23 = 0;
    v24 = v52 >> 2;
    if (v54 >= 0)
    {
      v25 = v54;
    }

    else
    {
      v25 = v54 + 3;
    }

    v26 = v59;
    v27 = v60 - 1;
    if (v8 / 2 >= 0)
    {
      v28 = v8 / 2;
    }

    else
    {
      v28 = v8 / -2;
    }

    if (v7 / 2 > v7 / -2)
    {
      v29 = v7 / 2;
    }

    else
    {
      v29 = v7 / -2;
    }

    v30 = v59 - 1;
    v53 = v25 >> 2;
    v31 = v7 / 2 + v29 + 1;
    do
    {
      if (v26)
      {
        v32 = 0;
        v33 = v23 * v53;
        v34 = v7 / -2;
        do
        {
          v35 = 0.0;
          v36 = 0.0;
          v37 = 0.0;
          if (v8 >= -1)
          {
            v38 = 0;
            v39 = v8 / -2;
            do
            {
              if (v7 >= -1)
              {
                v40 = (v39 + v23) & ~((v39 + v23) >> 31);
                if (v40 >= v27)
                {
                  v40 = v27;
                }

                v41 = v40 * (v56 >> 2);
                v42 = v31;
                v43 = v38;
                v44 = v34;
                do
                {
                  v45 = v44 & ~(v44 >> 31);
                  if (v45 >= v30)
                  {
                    v45 = v30;
                  }

                  v46 = v45 + v41;
                  v37 = v37 + (v20[v43] * BaseAddressOfPlane[v46]);
                  v35 = v35 + (v21[v43] * v12[v46]);
                  v36 = v36 + (v22[v43] * v13[v46]);
                  ++v44;
                  ++v43;
                  --v42;
                }

                while (v42);
              }

              v38 += v24;
            }

            while (v39++ != v28);
          }

          v14[v32 + v33] = v37;
          v15[v32 + v33] = v35;
          v16[v32 + v33] = v36;
          ++v32;
          ++v34;
        }

        while (v32 != v26);
      }

      ++v23;
    }

    while (v23 != v55);
  }

  CVPixelBufferUnlockBaseAddress(v49, 0);
  CVPixelBufferUnlockBaseAddress(v50, 0);
  CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
  return 0;
}

uint64_t _computesYCxCz2XYZ(__CVBuffer *a1, __CVBuffer *a2)
{
  if (CVPixelBufferGetPixelFormatType(a1) != 1919365990)
  {
    _computesYCxCz2XYZ_cold_1(&v29);
    return v29;
  }

  if (CVPixelBufferGetPixelFormatType(a2) != 1919365990)
  {
    _computesYCxCz2XYZ_cold_2(&v29);
    return v29;
  }

  v27 = 0;
  v28 = 0;
  CMPhotoGetPixelBufferCLAP(a1, 0, 0, &v27, &v28);
  v25 = 0;
  v26 = 0;
  CMPhotoGetPixelBufferCLAP(a2, 0, 0, &v25, &v26);
  if (v27 != v25 || v28 != v26)
  {
    _computesYCxCz2XYZ_cold_3(&v29);
    return v29;
  }

  CVPixelBufferLockBaseAddress(a1, 0);
  CVPixelBufferLockBaseAddress(a2, 0);
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a1, 0);
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a1, 0);
  v6 = CVPixelBufferGetBaseAddressOfPlane(a1, 1uLL);
  CVPixelBufferGetBaseAddressOfPlane(a1, 2uLL);
  v7 = CVPixelBufferGetBytesPerRowOfPlane(a2, 0);
  v8 = CVPixelBufferGetBaseAddressOfPlane(a2, 0);
  v9 = CVPixelBufferGetBaseAddressOfPlane(a2, 1uLL);
  v10 = CVPixelBufferGetBaseAddressOfPlane(a2, 2uLL);
  v11 = v28;
  if (v28)
  {
    v12 = 0;
    v13 = v27;
    do
    {
      v14 = BaseAddressOfPlane;
      v15 = v6;
      v16 = v8;
      v17 = v9;
      v18 = v10;
      for (i = v13; i; --i)
      {
        v20 = *v14++;
        v21 = v20;
        v22 = *v15++;
        v23 = (v21 + 16.0) / 116.0;
        *v16++ = (v23 + (v22 / 500.0)) * 0.95043;
        *v17++ = v23;
        *v18++ = (v23 + (v21 / -200.0)) * 1.0889;
      }

      ++v12;
      v10 = (v10 + v7);
      v9 = (v9 + v7);
      v8 = (v8 + v7);
      v6 = (v6 + BytesPerRowOfPlane);
      BaseAddressOfPlane = (BaseAddressOfPlane + BytesPerRowOfPlane);
    }

    while (v12 != v11);
  }

  CVPixelBufferUnlockBaseAddress(a1, 0);
  CVPixelBufferUnlockBaseAddress(a2, 0);
  return 0;
}

uint64_t _computesXYZ2LinearRGB(__CVBuffer *a1, __CVBuffer *a2)
{
  if (CVPixelBufferGetPixelFormatType(a1) != 1919365990)
  {
    _computesXYZ2LinearRGB_cold_1(&v32);
    return v32;
  }

  if (CVPixelBufferGetPixelFormatType(a2) != 1919365990)
  {
    _computesXYZ2LinearRGB_cold_2(&v32);
    return v32;
  }

  v30 = 0;
  v31 = 0;
  CMPhotoGetPixelBufferCLAP(a1, 0, 0, &v30, &v31);
  v28 = 0;
  v29 = 0;
  CMPhotoGetPixelBufferCLAP(a2, 0, 0, &v28, &v29);
  if (v30 != v28 || v31 != v29)
  {
    _computesXYZ2LinearRGB_cold_3(&v32);
    return v32;
  }

  CVPixelBufferLockBaseAddress(a1, 0);
  CVPixelBufferLockBaseAddress(a2, 0);
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a1, 0);
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a1, 0);
  v6 = CVPixelBufferGetBaseAddressOfPlane(a1, 1uLL);
  v7 = CVPixelBufferGetBaseAddressOfPlane(a1, 2uLL);
  v8 = CVPixelBufferGetBytesPerRowOfPlane(a2, 0);
  v9 = CVPixelBufferGetBaseAddressOfPlane(a2, 0);
  v10 = CVPixelBufferGetBaseAddressOfPlane(a2, 1uLL);
  v11 = CVPixelBufferGetBaseAddressOfPlane(a2, 2uLL);
  v12 = v31;
  if (v31)
  {
    v13 = 0;
    v14 = v30;
    do
    {
      v15 = BaseAddressOfPlane;
      v16 = v6;
      v17 = v7;
      v18 = v9;
      v19 = v10;
      v20 = v11;
      for (i = v14; i; --i)
      {
        v22 = *v15++;
        v23 = v22;
        v24 = *v16++;
        v25 = v24;
        v26 = *v17++;
        *v18++ = ((v25 * -1.5374) + (v23 * 3.241)) + (v26 * -0.49862);
        *v19++ = ((v25 * 1.8759) + (v23 * -0.96922)) + (v26 * 0.041554);
        *v20++ = ((v25 * -0.20401) + (v23 * 0.055639)) + (v26 * 1.0571);
      }

      ++v13;
      v11 = (v11 + v8);
      v10 = (v10 + v8);
      v9 = (v9 + v8);
      v7 = (v7 + BytesPerRowOfPlane);
      v6 = (v6 + BytesPerRowOfPlane);
      BaseAddressOfPlane = (BaseAddressOfPlane + BytesPerRowOfPlane);
    }

    while (v13 != v12);
  }

  CVPixelBufferUnlockBaseAddress(a1, 0);
  CVPixelBufferUnlockBaseAddress(a2, 0);
  return 0;
}

uint64_t _computesClamp(__CVBuffer *a1, __CVBuffer *a2)
{
  if (CVPixelBufferGetPixelFormatType(a1) != 1919365990)
  {
    _computesClamp_cold_1(&v33);
    return v33;
  }

  if (CVPixelBufferGetPixelFormatType(a2) != 1919365990)
  {
    _computesClamp_cold_2(&v33);
    return v33;
  }

  v31 = 0;
  v32 = 0;
  CMPhotoGetPixelBufferCLAP(a1, 0, 0, &v31, &v32);
  v29 = 0;
  v30 = 0;
  CMPhotoGetPixelBufferCLAP(a2, 0, 0, &v29, &v30);
  if (v31 != v29 || v32 != v30)
  {
    _computesClamp_cold_3(&v33);
    return v33;
  }

  CVPixelBufferLockBaseAddress(a1, 0);
  CVPixelBufferLockBaseAddress(a2, 0);
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a1, 0);
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a1, 0);
  v6 = CVPixelBufferGetBaseAddressOfPlane(a1, 1uLL);
  v7 = CVPixelBufferGetBaseAddressOfPlane(a1, 2uLL);
  v8 = CVPixelBufferGetBytesPerRowOfPlane(a2, 0);
  v9 = CVPixelBufferGetBaseAddressOfPlane(a2, 0);
  v10 = CVPixelBufferGetBaseAddressOfPlane(a2, 1uLL);
  v11 = CVPixelBufferGetBaseAddressOfPlane(a2, 2uLL);
  v12 = v32;
  if (v32)
  {
    v13 = 0;
    v14 = v31;
    do
    {
      v15 = BaseAddressOfPlane;
      v16 = v9;
      v17 = v6;
      v18 = v10;
      v19 = v7;
      v20 = v11;
      for (i = v14; i; --i)
      {
        v22 = *v15++;
        v23 = v22;
        if (v22 > 1.0)
        {
          v23 = 1.0;
        }

        if (v23 < 0.0)
        {
          v23 = 0.0;
        }

        *v16++ = v23;
        v24 = *v17++;
        v25 = v24;
        if (v24 > 1.0)
        {
          v25 = 1.0;
        }

        if (v25 < 0.0)
        {
          v25 = 0.0;
        }

        *v18++ = v25;
        v26 = *v19++;
        v27 = v26;
        if (v26 > 1.0)
        {
          v27 = 1.0;
        }

        if (v27 < 0.0)
        {
          v27 = 0.0;
        }

        *v20++ = v27;
      }

      ++v13;
      v11 = (v11 + v8);
      v7 = (v7 + BytesPerRowOfPlane);
      v10 = (v10 + v8);
      v6 = (v6 + BytesPerRowOfPlane);
      v9 = (v9 + v8);
      BaseAddressOfPlane = (BaseAddressOfPlane + BytesPerRowOfPlane);
    }

    while (v13 != v12);
  }

  CVPixelBufferUnlockBaseAddress(a1, 0);
  CVPixelBufferUnlockBaseAddress(a2, 0);
  return 0;
}

uint64_t _computesXYZ2CIELab(__CVBuffer *a1, __CVBuffer *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  if (CVPixelBufferGetPixelFormatType(a1) != 1919365990)
  {
    _computesXYZ2CIELab_cold_1(v35);
    return LODWORD(v35[0]);
  }

  if (CVPixelBufferGetPixelFormatType(a2) != 1919365990)
  {
    _computesXYZ2CIELab_cold_2(v35);
    return LODWORD(v35[0]);
  }

  v32 = 0;
  v33 = 0;
  CMPhotoGetPixelBufferCLAP(a1, 0, 0, &v32, &v33);
  v30 = 0;
  v31 = 0;
  CMPhotoGetPixelBufferCLAP(a2, 0, 0, &v30, &v31);
  if (v32 != v30 || v33 != v31)
  {
    _computesXYZ2CIELab_cold_3(v35);
    return LODWORD(v35[0]);
  }

  CVPixelBufferLockBaseAddress(a1, 0);
  CVPixelBufferLockBaseAddress(a2, 0);
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a1, 0);
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a1, 0);
  v5 = CVPixelBufferGetBaseAddressOfPlane(a1, 1uLL);
  pixelBuffer = a1;
  v6 = CVPixelBufferGetBaseAddressOfPlane(a1, 2uLL);
  v24 = CVPixelBufferGetBytesPerRowOfPlane(a2, 0);
  v7 = CVPixelBufferGetBaseAddressOfPlane(a2, 0);
  v8 = CVPixelBufferGetBaseAddressOfPlane(a2, 1uLL);
  v21 = a2;
  v9 = CVPixelBufferGetBaseAddressOfPlane(a2, 2uLL);
  v23 = v33;
  if (v33)
  {
    v10 = v9;
    v11 = 0;
    v22 = v32;
    do
    {
      v28 = v5;
      v29 = BaseAddressOfPlane;
      v26 = v7;
      v27 = v6;
      v12 = v8;
      v13 = v10;
      for (i = v22; i; --i)
      {
        v15 = *BaseAddressOfPlane++;
        v35[0] = v15;
        v16 = *v5++;
        v35[1] = v16;
        v17 = *v6++;
        v35[2] = v17;
        XYZ2CIELab(v35, v34);
        v18 = v34[1];
        *v7++ = v34[0];
        *v12++ = v18;
        *v13++ = v34[2];
      }

      ++v11;
      v10 = (v10 + v24);
      v8 = (v8 + v24);
      v7 = (v26 + v24);
      v6 = (v27 + BytesPerRowOfPlane);
      v5 = (v28 + BytesPerRowOfPlane);
      BaseAddressOfPlane = (v29 + BytesPerRowOfPlane);
    }

    while (v11 != v23);
  }

  CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
  CVPixelBufferUnlockBaseAddress(v21, 0);
  return 0;
}

uint64_t _computesHunt(__CVBuffer *a1, __CVBuffer *a2)
{
  if (CVPixelBufferGetPixelFormatType(a1) != 1919365990)
  {
    _computesHunt_cold_1(&v32);
    return v32;
  }

  if (CVPixelBufferGetPixelFormatType(a2) != 1919365990)
  {
    _computesHunt_cold_2(&v32);
    return v32;
  }

  v30 = 0;
  v31 = 0;
  CMPhotoGetPixelBufferCLAP(a1, 0, 0, &v30, &v31);
  v28 = 0;
  v29 = 0;
  CMPhotoGetPixelBufferCLAP(a2, 0, 0, &v28, &v29);
  if (v30 != v28 || v31 != v29)
  {
    _computesHunt_cold_3(&v32);
    return v32;
  }

  CVPixelBufferLockBaseAddress(a1, 0);
  CVPixelBufferLockBaseAddress(a2, 0);
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a1, 0);
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a1, 0);
  v6 = CVPixelBufferGetBaseAddressOfPlane(a1, 1uLL);
  v7 = CVPixelBufferGetBaseAddressOfPlane(a1, 2uLL);
  v8 = CVPixelBufferGetBytesPerRowOfPlane(a2, 0);
  v9 = CVPixelBufferGetBaseAddressOfPlane(a2, 0);
  v10 = CVPixelBufferGetBaseAddressOfPlane(a2, 1uLL);
  v11 = CVPixelBufferGetBaseAddressOfPlane(a2, 2uLL);
  v12 = v31;
  if (v31)
  {
    v13 = 0;
    v14 = v30;
    do
    {
      v15 = BaseAddressOfPlane;
      v16 = v6;
      v17 = v7;
      v18 = v9;
      v19 = v10;
      v20 = v11;
      for (i = v14; i; --i)
      {
        v22 = *v15++;
        v23 = v22;
        v24 = *v16++;
        v25 = v24;
        v26 = *v17++;
        *v18++ = v23;
        *v19++ = (v23 * 0.01) * v25;
        *v20++ = (v23 * 0.01) * v26;
      }

      ++v13;
      v11 = (v11 + v8);
      v10 = (v10 + v8);
      v9 = (v9 + v8);
      v7 = (v7 + BytesPerRowOfPlane);
      v6 = (v6 + BytesPerRowOfPlane);
      BaseAddressOfPlane = (BaseAddressOfPlane + BytesPerRowOfPlane);
    }

    while (v13 != v12);
  }

  CVPixelBufferUnlockBaseAddress(a1, 0);
  CVPixelBufferUnlockBaseAddress(a2, 0);
  return 0;
}

uint64_t setFeatureFilter(__CVBuffer *a1, int a2, float a3)
{
  v5 = a1;
  if (CVPixelBufferGetPixelFormatType(a1) != 1919365990)
  {
    return setFeatureFilter_cold_1();
  }

  v47 = 0;
  v48 = 0;
  CMPhotoGetPixelBufferCLAP(v5, 0, 0, &v47, &v48);
  CVPixelBufferLockBaseAddress(v5, 0);
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(v5, 0);
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(v5, 0);
  v8 = CVPixelBufferGetBaseAddressOfPlane(v5, 1uLL);
  v9 = CVPixelBufferGetBaseAddressOfPlane(v5, 2uLL);
  if (v48)
  {
    v10 = v9;
    v41 = v5;
    v11 = 0;
    v12 = a3 * 0.041;
    v13 = v47;
    v14 = v12 * (v12 + v12);
    v46 = v12 * v12;
    v42 = vcvtps_s32_f32((a3 * 0.041) * 3.0);
    v15 = 0.0;
    v39 = v8;
    v40 = BaseAddressOfPlane;
    v16 = v8;
    v17 = 0.0;
    v18 = 0.0;
    v19 = 0.0;
    v43 = v47;
    v44 = v48;
    v45 = BytesPerRowOfPlane;
    do
    {
      if (v13)
      {
        v20 = -v42;
        v21 = (v11 - v42) * (v11 - v42);
        v22 = BaseAddressOfPlane;
        v23 = v16;
        v24 = v10;
        do
        {
          v25 = v20;
          v26 = expf(-(v21 + (v25 * v25)) / v14);
          if (a2)
          {
            v27 = (((v25 * v25) / v46) + -1.0) * v26;
            v28 = ((v21 / v46) + -1.0) * v26;
          }

          else
          {
            v27 = -(v25 * v26);
            v28 = v26 * -(v11 - v42);
          }

          *v22++ = v27;
          *v23++ = v28;
          *v24++ = 0;
          if (v27 <= 0.0)
          {
            v15 = v15 - v27;
          }

          else
          {
            v17 = v17 + v27;
          }

          if (v28 <= 0.0)
          {
            v18 = v18 - v28;
          }

          else
          {
            v19 = v19 + v28;
          }

          ++v20;
          --v13;
        }

        while (v13);
      }

      ++v11;
      v10 = (v10 + v45);
      v16 = (v16 + v45);
      BaseAddressOfPlane = (BaseAddressOfPlane + v45);
      v13 = v43;
    }

    while (v11 != v44);
    v29 = 0;
    v30 = v47;
    v31 = v40;
    v5 = v41;
    v32 = v39;
    do
    {
      v33 = v30;
      v34 = v31;
      for (i = v32; v33; --v33)
      {
        if (*v34 <= 0.0)
        {
          v36 = v15;
        }

        else
        {
          v36 = v17;
        }

        *v34 = *v34 / v36;
        ++v34;
        if (*i <= 0.0)
        {
          v37 = v18;
        }

        else
        {
          v37 = v19;
        }

        *i = *i / v37;
        ++i;
      }

      ++v29;
      v32 = (v32 + v45);
      v31 = (v31 + v45);
    }

    while (v29 != v44);
  }

  return CVPixelBufferUnlockBaseAddress(v5, 0);
}

uint64_t _computesCIELab2Gray(__CVBuffer *a1, __CVBuffer *a2)
{
  if (CVPixelBufferGetPixelFormatType(a1) != 1919365990)
  {
    _computesCIELab2Gray_cold_1(&v26);
    return v26;
  }

  if (CVPixelBufferGetPixelFormatType(a2) != 1919365990)
  {
    _computesCIELab2Gray_cold_2(&v26);
    return v26;
  }

  v24 = 0;
  v25 = 0;
  CMPhotoGetPixelBufferCLAP(a1, 0, 0, &v24, &v25);
  v22 = 0;
  v23 = 0;
  CMPhotoGetPixelBufferCLAP(a2, 0, 0, &v22, &v23);
  if (v24 != v22 || v25 != v23)
  {
    _computesCIELab2Gray_cold_3(&v26);
    return v26;
  }

  CVPixelBufferLockBaseAddress(a1, 0);
  CVPixelBufferLockBaseAddress(a2, 0);
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a1, 0);
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a1, 0);
  CVPixelBufferGetBaseAddressOfPlane(a1, 1uLL);
  CVPixelBufferGetBaseAddressOfPlane(a1, 2uLL);
  v6 = CVPixelBufferGetBytesPerRowOfPlane(a2, 0);
  v7 = CVPixelBufferGetBaseAddressOfPlane(a2, 0);
  v8 = CVPixelBufferGetBaseAddressOfPlane(a2, 1uLL);
  v9 = CVPixelBufferGetBaseAddressOfPlane(a2, 2uLL);
  v10 = v25;
  if (v25)
  {
    v11 = 0;
    v12 = v24;
    do
    {
      v13 = BaseAddressOfPlane;
      v14 = v7;
      v15 = v8;
      v16 = v9;
      for (i = v12; i; --i)
      {
        v18 = *v13++;
        v19 = (v18 + 16.0) / 116.0;
        *v14 = v19;
        *v15++ = v19;
        v20 = *v14++;
        *v16++ = v20;
      }

      ++v11;
      v9 = (v9 + v6);
      v8 = (v8 + v6);
      v7 = (v7 + v6);
      BaseAddressOfPlane = (BaseAddressOfPlane + BytesPerRowOfPlane);
    }

    while (v11 != v10);
  }

  CVPixelBufferUnlockBaseAddress(a1, 0);
  CVPixelBufferUnlockBaseAddress(a2, 0);
  return 0;
}

float XYZ2CIELab(float *a1, float *a2)
{
  v3 = a1[1];
  v4 = *a1 * 1.0522;
  v5 = a1[2];
  if (v4 <= 0.0088565)
  {
    v6 = (v4 * 7.787) + 0.13793;
  }

  else
  {
    v6 = powf(v4, 0.33333);
  }

  v7 = v5 * 0.91836;
  if (v3 <= 0.0088565)
  {
    v8 = (v3 * 7.787) + 0.13793;
  }

  else
  {
    v8 = powf(v3, 0.33333);
  }

  if (v7 <= 0.0088565)
  {
    v9 = (v7 * 7.787) + 0.13793;
  }

  else
  {
    v9 = powf(v7, 0.33333);
  }

  *a2 = (v8 * 116.0) + -16.0;
  a2[1] = (v6 - v8) * 500.0;
  result = (v8 - v9) * 200.0;
  a2[2] = result;
  return result;
}

uint64_t ___poolFLIP_block_invoke(uint64_t a1, float *a2, float *a3)
{
  if (*a2 > *a3)
  {
    return 1;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

BOOL CMPhotoExtensionIsHEIF(const __CFString *a1)
{
  if (!a1)
  {
    return 0;
  }

  v4.length = CFStringGetLength(a1);
  v2 = 1;
  v4.location = 0;
  if (CFStringCompareWithOptions(a1, @"heic", v4, 1uLL))
  {
    v5.length = CFStringGetLength(a1);
    v2 = 1;
    v5.location = 0;
    if (CFStringCompareWithOptions(a1, @"heics", v5, 1uLL))
    {
      v6.length = CFStringGetLength(a1);
      v2 = 1;
      v6.location = 0;
      if (CFStringCompareWithOptions(a1, @"heif", v6, 1uLL))
      {
        v7.length = CFStringGetLength(a1);
        v2 = 1;
        v7.location = 0;
        if (CFStringCompareWithOptions(a1, @"heifs", v7, 1uLL))
        {
          v8.length = CFStringGetLength(a1);
          v2 = 1;
          v8.location = 0;
          if (CFStringCompareWithOptions(a1, @"hif", v8, 1uLL))
          {
            v9.length = CFStringGetLength(a1);
            v2 = 1;
            v9.location = 0;
            if (CFStringCompareWithOptions(a1, @"avci", v9, 1uLL))
            {
              v10.length = CFStringGetLength(a1);
              v2 = 1;
              v10.location = 0;
              if (CFStringCompareWithOptions(a1, @"avcs", v10, 1uLL))
              {
                v11.length = CFStringGetLength(a1);
                v2 = 1;
                v11.location = 0;
                if (CFStringCompareWithOptions(a1, @"avif", v11, 1uLL))
                {
                  v12.length = CFStringGetLength(a1);
                  v12.location = 0;
                  return CFStringCompareWithOptions(a1, @"avis", v12, 1uLL) == kCFCompareEqualTo;
                }
              }
            }
          }
        }
      }
    }
  }

  return v2;
}

BOOL CMPhotoExtensionIsJPEG(const __CFString *a1)
{
  if (!a1)
  {
    return 0;
  }

  v4.length = CFStringGetLength(a1);
  v2 = 1;
  v4.location = 0;
  if (CFStringCompareWithOptions(a1, @"jpeg", v4, 1uLL))
  {
    v5.length = CFStringGetLength(a1);
    v5.location = 0;
    return CFStringCompareWithOptions(a1, @"jpg", v5, 1uLL) == kCFCompareEqualTo;
  }

  return v2;
}

const __CFString *CMPhotoExtensionIsJPEGXL(const __CFString *result)
{
  if (result)
  {
    v1 = result;
    v2.length = CFStringGetLength(result);
    v2.location = 0;
    return (CFStringCompareWithOptions(v1, @"jxl", v2, 1uLL) == kCFCompareEqualTo);
  }

  return result;
}

BOOL CMPhotoExtensionIsNetpbm(const __CFString *a1)
{
  if (!a1)
  {
    return 0;
  }

  v4.length = CFStringGetLength(a1);
  v2 = 1;
  v4.location = 0;
  if (CFStringCompareWithOptions(a1, @"pbm", v4, 1uLL))
  {
    v5.length = CFStringGetLength(a1);
    v2 = 1;
    v5.location = 0;
    if (CFStringCompareWithOptions(a1, @"ppm", v5, 1uLL))
    {
      v6.length = CFStringGetLength(a1);
      v2 = 1;
      v6.location = 0;
      if (CFStringCompareWithOptions(a1, @"pgm", v6, 1uLL))
      {
        v7.length = CFStringGetLength(a1);
        v2 = 1;
        v7.location = 0;
        if (CFStringCompareWithOptions(a1, @"pfm", v7, 1uLL))
        {
          v8.length = CFStringGetLength(a1);
          v2 = 1;
          v8.location = 0;
          if (CFStringCompareWithOptions(a1, @"pam", v8, 1uLL))
          {
            v9.length = CFStringGetLength(a1);
            v9.location = 0;
            return CFStringCompareWithOptions(a1, @"pnm", v9, 1uLL) == kCFCompareEqualTo;
          }
        }
      }
    }
  }

  return v2;
}

BOOL CMPhotoExtensionIsPNG(const __CFString *a1)
{
  if (!a1)
  {
    return 0;
  }

  v4.length = CFStringGetLength(a1);
  v2 = 1;
  v4.location = 0;
  if (CFStringCompareWithOptions(a1, @"png", v4, 1uLL))
  {
    v5.length = CFStringGetLength(a1);
    v5.location = 0;
    return CFStringCompareWithOptions(a1, @"apng", v5, 1uLL) == kCFCompareEqualTo;
  }

  return v2;
}

BOOL CMPhotoExtensionIsTIFF(const __CFString *a1)
{
  if (!a1)
  {
    return 0;
  }

  v4.length = CFStringGetLength(a1);
  v2 = 1;
  v4.location = 0;
  if (CFStringCompareWithOptions(a1, @"tiff", v4, 1uLL))
  {
    v5.length = CFStringGetLength(a1);
    v5.location = 0;
    return CFStringCompareWithOptions(a1, @"tif", v5, 1uLL) == kCFCompareEqualTo;
  }

  return v2;
}

const __CFString *CMPhotoExtensionIsGIF(const __CFString *result)
{
  if (result)
  {
    v1 = result;
    v2.length = CFStringGetLength(result);
    v2.location = 0;
    return (CFStringCompareWithOptions(v1, @"gif", v2, 1uLL) == kCFCompareEqualTo);
  }

  return result;
}

const __CFString *CMPhotoExtensionIsEXR(const __CFString *result)
{
  if (result)
  {
    v1 = result;
    v2.length = CFStringGetLength(result);
    v2.location = 0;
    return (CFStringCompareWithOptions(v1, @"exr", v2, 1uLL) == kCFCompareEqualTo);
  }

  return result;
}

BOOL CMPhotoExtensionIsJpeg2000(const __CFString *a1)
{
  if (!a1)
  {
    return 0;
  }

  v4.length = CFStringGetLength(a1);
  v2 = 1;
  v4.location = 0;
  if (CFStringCompareWithOptions(a1, @"jp2", v4, 1uLL))
  {
    v5.length = CFStringGetLength(a1);
    v5.location = 0;
    return CFStringCompareWithOptions(a1, @"jpx", v5, 1uLL) == kCFCompareEqualTo;
  }

  return v2;
}

const __CFString *CMPhotoExtensionIsWEBP(const __CFString *result)
{
  if (result)
  {
    v1 = result;
    v2.length = CFStringGetLength(result);
    v2.location = 0;
    return (CFStringCompareWithOptions(v1, @"webp", v2, 1uLL) == kCFCompareEqualTo);
  }

  return result;
}

const __CFString *CMPhotoExtensionIsBMP(const __CFString *result)
{
  if (result)
  {
    v1 = result;
    v2.length = CFStringGetLength(result);
    v2.location = 0;
    return (CFStringCompareWithOptions(v1, @"bmp", v2, 1uLL) == kCFCompareEqualTo);
  }

  return result;
}

uint64_t CMPhotoPixelBufferHasOpaqueAlphaFromAttachment(__CVBuffer *a1, uint64_t Value)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  if (CMPhotoPixelFormatContainsAlpha(PixelFormatType))
  {
    v5 = CVBufferCopyAttachment(a1, *MEMORY[0x1E6965CB8], 0);
    if (v5)
    {
      v6 = v5;
      v7 = CFGetTypeID(v5);
      if (v7 == CFBooleanGetTypeID())
      {
        Value = CFBooleanGetValue(v6);
      }

      CFRelease(v6);
    }
  }

  return Value;
}

uint64_t CMPhotoCreatePixelBufferFromImage(const __CFAllocator *a1, void *a2, CFTypeRef *a3)
{
  cf = 0;
  ImageType = CMPhotoGetImageType(a2);
  v7 = 4583;
  if (ImageType <= 2)
  {
    if (ImageType == 2)
    {
      if (a2)
      {
        v10 = CFRetain(a2);
      }

      else
      {
        v10 = 0;
      }

      cf = v10;
    }

    else
    {
      if (ImageType != 1)
      {
        goto LABEL_22;
      }

      PixelBufferWithSurface = CMPhotoCreatePixelBufferWithSurface(a1, a2, 0);
      if (PixelBufferWithSurface)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
    if (ImageType != 3)
    {
      if (ImageType == 4)
      {
        PixelBufferWithSurface = CMPhotoCreatePixelBufferFromCGImage(a2, 0, 0, 64, &cf);
        if (PixelBufferWithSurface)
        {
LABEL_5:
          v9 = PixelBufferWithSurface;
          goto LABEL_23;
        }

        goto LABEL_15;
      }

LABEL_22:
      CMPhotoCreatePixelBufferFromImage_cold_1(v7, &v16);
      v9 = v16;
      goto LABEL_23;
    }

    ImageBuffer = CMSampleBufferGetImageBuffer(a2);
    if (!ImageBuffer)
    {
      cf = 0;
LABEL_21:
      v7 = 4573;
      goto LABEL_22;
    }

    v12 = CFRetain(ImageBuffer);
    cf = v12;
    if (!v12)
    {
      goto LABEL_21;
    }

    v13 = CFGetTypeID(v12);
    if (v13 != CVPixelBufferGetTypeID())
    {
      goto LABEL_21;
    }
  }

LABEL_15:
  v9 = 0;
  if (a3)
  {
    *a3 = cf;
    return v9;
  }

LABEL_23:
  if (cf)
  {
    CFRelease(cf);
  }

  return v9;
}

void CMPhotoPixelBufferSetAlphaOpaquenessAndAlphaMode(__CVBuffer *a1, int a2, int a3)
{
  if (a1)
  {
    v5 = MEMORY[0x1E695E4D0];
    if (!a2)
    {
      v5 = MEMORY[0x1E695E4C0];
    }

    CVBufferSetAttachment(a1, *MEMORY[0x1E6965CB8], *v5, kCVAttachmentMode_ShouldPropagate);
    v6 = *MEMORY[0x1E6965CC0];
    CVBufferRemoveAttachment(a1, *MEMORY[0x1E6965CC0]);
    if (a3 != 2)
    {
      v7 = MEMORY[0x1E6965CD0];
      if (a3)
      {
        v7 = MEMORY[0x1E6965CC8];
      }

      v8 = *v7;

      CVBufferSetAttachment(a1, v6, v8, kCVAttachmentMode_ShouldPropagate);
    }
  }
}

uint64_t CMPhotoIsRawFormatByURLExtension(const __CFURL *a1)
{
  v1 = CFURLCopyPathExtension(a1);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = 0;
  v4 = *MEMORY[0x1E695E480];
  v5 = *MEMORY[0x1E695E498];
  v6 = &CMPhotoIsRawFormatByURLExtension_acceptedRAWExtensions;
  v7 = 23;
  while (1)
  {
    if (v3)
    {
      CFRelease(v3);
    }

    v3 = CFStringCreateWithCStringNoCopy(v4, v6, 0x8000100u, v5);
    v10.length = CFStringGetLength(v2);
    v8 = 1;
    v10.location = 0;
    if (CFStringCompareWithOptions(v2, v3, v10, 1uLL) == kCFCompareEqualTo)
    {
      break;
    }

    v6 += 4;
    if (!--v7)
    {
      v8 = 0;
      break;
    }
  }

  if (v3)
  {
    CFRelease(v3);
  }

  CFRelease(v2);
  return v8;
}

uint64_t CMPhotoGetBufferFromMovie(uint64_t a1, unsigned int a2, int a3, int a4, int a5, CVImageBufferRef *a6)
{
  v48 = 0;
  v49 = 0;
  v47 = 0;
  cf = 0;
  BaseByteStreamProvider = FigGetBaseByteStreamProvider();
  v45 = 0;
  v13 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v13)
  {
    CGImageWithPixelBuffer = 4294954514;
LABEL_34:
    CMPhotoGetBufferFromMovie_cold_12();
LABEL_37:
    Mutable = 0;
    v22 = 0;
    goto LABEL_43;
  }

  v14 = *MEMORY[0x1E695E480];
  v15 = v13(BaseByteStreamProvider, a1, 0, 0, *MEMORY[0x1E695E480], &v45);
  if (v15)
  {
    CGImageWithPixelBuffer = v15;
    goto LABEL_34;
  }

  v16 = FigAssetRemoteCreateWithURL();
  if (v16)
  {
    CGImageWithPixelBuffer = v16;
    CMPhotoGetBufferFromMovie_cold_1();
    goto LABEL_37;
  }

  v17 = FigAssetReaderRemoteCreateWithAsset();
  if (v17)
  {
    CGImageWithPixelBuffer = v17;
    CMPhotoGetBufferFromMovie_cold_2();
    goto LABEL_37;
  }

  v18 = v48;
  v19 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v19)
  {
    CGImageWithPixelBuffer = 4294954514;
LABEL_36:
    CMPhotoGetBufferFromMovie_cold_11();
    goto LABEL_37;
  }

  v20 = v19(v18, &v47);
  if (v20)
  {
    CGImageWithPixelBuffer = v20;
    goto LABEL_36;
  }

  if (!v47)
  {
    CMPhotoGetBufferFromMovie_cold_10(&v52);
    Mutable = 0;
LABEL_66:
    v22 = 0;
    goto LABEL_70;
  }

  if (!a4)
  {
    Mutable = 0;
    goto LABEL_13;
  }

  Mutable = CFDictionaryCreateMutable(v14, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    CMPhotoGetBufferFromMovie_cold_4(&v52);
    goto LABEL_66;
  }

  FigCFDictionarySetInt32();
  v22 = CFDictionaryCreate(v14, 0, 0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v22)
  {
    CMPhotoGetBufferFromMovie_cold_3(&v52);
    goto LABEL_70;
  }

  CFDictionarySetValue(Mutable, *MEMORY[0x1E69660D8], v22);
  CFRelease(v22);
LABEL_13:
  v23 = CFDictionaryCreateMutable(v14, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v22 = v23;
  if (!v23)
  {
    CMPhotoGetBufferFromMovie_cold_9(&v52);
LABEL_70:
    CGImageWithPixelBuffer = v52;
    goto LABEL_43;
  }

  v24 = MEMORY[0x1E6971398];
  if (a5)
  {
    v24 = MEMORY[0x1E6971390];
  }

  CFDictionarySetValue(v23, *MEMORY[0x1E6971368], *v24);
  v44 = 0;
  v25 = v48;
  v26 = v47;
  v27 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (!v27)
  {
    CGImageWithPixelBuffer = 4294954514;
LABEL_40:
    CMPhotoGetBufferFromMovie_cold_8();
    goto LABEL_43;
  }

  v52 = *MEMORY[0x1E6960C70];
  v53 = *(MEMORY[0x1E6960C70] + 16);
  v28 = v27(v25, v26, Mutable, 0, &v52, v22, &v44);
  if (v28)
  {
    CGImageWithPixelBuffer = v28;
    goto LABEL_40;
  }

  v29 = v48;
  v30 = *(*(CMBaseObjectGetVTable() + 16) + 96);
  if (!v30)
  {
    CGImageWithPixelBuffer = 4294954514;
LABEL_42:
    CMPhotoGetBufferFromMovie_cold_7();
    goto LABEL_43;
  }

  v52 = *MEMORY[0x1E6960CC0];
  v53 = *(MEMORY[0x1E6960CC0] + 16);
  v50 = *MEMORY[0x1E6960C88];
  v51 = *(MEMORY[0x1E6960C88] + 16);
  v31 = v30(v29, &v52, &v50);
  if (v31)
  {
    CGImageWithPixelBuffer = v31;
    goto LABEL_42;
  }

  v32 = 0;
  do
  {
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    LOBYTE(v52) = 0;
    v33 = v48;
    v34 = v44;
    v35 = *(*(CMBaseObjectGetVTable() + 16) + 104);
    if (!v35)
    {
      CGImageWithPixelBuffer = 4294954514;
LABEL_32:
      fig_log_get_emitter();
      FigSignalErrorAtGM();
      goto LABEL_43;
    }

    v36 = v35(v33, v34, 1, &v52, &cf);
    if (v36)
    {
      CGImageWithPixelBuffer = v36;
      goto LABEL_32;
    }

    ++v32;
  }

  while (v32 <= a2);
  if (!cf)
  {
    CMPhotoGetBufferFromMovie_cold_6(&v52);
    goto LABEL_70;
  }

  ImageBuffer = CMSampleBufferGetImageBuffer(cf);
  if (!ImageBuffer)
  {
    CMPhotoGetBufferFromMovie_cold_5(&v52);
    goto LABEL_70;
  }

  v38 = ImageBuffer;
  if (a3 == 2)
  {
    CFRetain(ImageBuffer);
    CGImageWithPixelBuffer = 0;
    *a6 = v38;
  }

  else if (a3 == 4)
  {
    *&v52 = 0;
    CGImageWithPixelBuffer = CMPhotoCreateCGImageWithPixelBuffer(v14, ImageBuffer, 1, &v52);
    *a6 = v52;
  }

  else
  {
    fig_log_get_emitter();
    CGImageWithPixelBuffer = FigSignalErrorAtGM();
  }

LABEL_43:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v48)
  {
    FigBaseObject = FigAssetReaderGetFigBaseObject();
    if (FigBaseObject)
    {
      v41 = FigBaseObject;
      v42 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v42)
      {
        v42(v41);
      }
    }

    if (v48)
    {
      CFRelease(v48);
    }
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if (v45)
  {
    CFRelease(v45);
  }

  if (v49)
  {
    CFRelease(v49);
  }

  return CGImageWithPixelBuffer;
}

uint64_t CMPhotoGetFullRangeForPixelFormat(uint64_t a1)
{
  v1 = a1;
  if (!CMPhotoPixelFormatContainsYCbCr(a1))
  {
    return 0;
  }

  if (!CMPhotoPixelFormatIsFullRange(v1))
  {
    if (v1 > 1937125937)
    {
      if (v1 > 1953903667)
      {
        if (v1 > 2016686641)
        {
          if (v1 == 2016686642)
          {
            return v1 & 0xFF00FFFF | 0x660000;
          }

          v4 = 13364;
        }

        else
        {
          if (v1 == 1953903668)
          {
            return v1 & 0xFF00FFFF | 0x660000;
          }

          v4 = 12848;
        }

        v3 = v4 | 0x78340000;
      }

      else
      {
        if (v1 <= 1953903151)
        {
          if (v1 != 1937125938)
          {
            v2 = 13364;
LABEL_22:
            v3 = v2 | 0x73760000;
            goto LABEL_28;
          }

          return v1 & 0xFF00FFFF | 0x660000;
        }

        if (v1 == 1953903152)
        {
          return v1 & 0xFF00FFFF | 0x660000;
        }

        v3 = 1953903154;
      }

LABEL_28:
      if (v1 == v3)
      {
        return v1 & 0xFF00FFFF | 0x660000;
      }

LABEL_31:
      if (CMPhotoPixelFormatIsCompressed(v1) && (v1 & 0xFF00) == 30208)
      {
        return v1 & 0xFFFF66FF;
      }

      else
      {
        return 0;
      }
    }

    if (v1 <= 1882468911)
    {
      if (v1 == 875704438 || v1 == 875704950 || v1 == 875836534)
      {
        return v1 & 0xFFFFFF00 | 0x66;
      }

      goto LABEL_31;
    }

    if (v1 > 1882469427)
    {
      if (v1 != 1882469428)
      {
        v2 = 12848;
        goto LABEL_22;
      }
    }

    else if (v1 != 1882468912)
    {
      v3 = 1882468914;
      goto LABEL_28;
    }

    return v1 & 0xFF00FFFF | 0x660000;
  }

  return v1;
}

uint64_t CMPhotoGetVideoRangeForPixelFormat(uint64_t a1)
{
  result = CMPhotoPixelFormatContainsYCbCr(a1);
  if (result)
  {
    if (CMPhotoPixelFormatIsPacked(a1) || CMPhotoPixelFormatIsCompressed(a1))
    {
      return 0;
    }

    if (!CMPhotoPixelFormatIsFullRange(a1))
    {
      return a1;
    }

    result = 0;
    if (a1 > 1952854575)
    {
      if (a1 > 2019963439)
      {
        if (a1 == 2019963440)
        {
          return 2016686640;
        }

        if (a1 != 2019963442)
        {
          if (a1 != 2019963956)
          {
            return result;
          }

          v3 = 2016686640;
          return (v3 + 516);
        }

        v4 = 2016686640;
      }

      else
      {
        if (a1 == 1952854576)
        {
          return 1953903152;
        }

        if (a1 != 1952854578)
        {
          if (a1 != 1952855092)
          {
            return result;
          }

          v3 = 1953903152;
          return (v3 + 516);
        }

        v4 = 1953903152;
      }
    }

    else
    {
      if (a1 <= 1936077359)
      {
        switch(a1)
        {
          case 0x34323066:
            return 875704438;
          case 0x34323266:
            return 875704950;
          case 0x34343466:
            return 875836534;
        }

        return result;
      }

      if (a1 == 1936077360)
      {
        return 1937125936;
      }

      if (a1 != 1936077362)
      {
        if (a1 != 1936077876)
        {
          return result;
        }

        v3 = 1937125936;
        return (v3 + 516);
      }

      v4 = 1937125936;
    }

    return v4 | 2u;
  }

  return result;
}

uint64_t CMPhotoGetOSTypeFromFileExtension(const __CFString *a1, _BYTE *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  bzero(buffer, 0x400uLL);
  CFStringGetCString(a1, buffer, 1024, 0x8000100u);
  v4 = rindex(buffer, 46);
  v5 = v4;
  if (a2)
  {
    *a2 = 0;
  }

  if (!v4)
  {
    return 0;
  }

  v6 = "ffit.tif";
  if (!strcasecmp(v4, ".tif"))
  {
    result = 1953064550;
    if (a2)
    {
LABEL_12:
      *a2 = v6[10];
    }
  }

  else
  {
    v7 = "ffit.tif";
    v8 = 93;
    do
    {
      if (!--v8)
      {
        return *(v7 + 3);
      }

      v6 = v7 + 12;
      v9 = strcasecmp(v5, v7 + 16);
      v7 = v6;
    }

    while (v9);
    result = *v6;
    if (a2)
    {
      goto LABEL_12;
    }
  }

  return result;
}

uint64_t CMPhotoGetSurfaceElementWidthForPixelFormat(int a1)
{
  if (a1 == 1647719528)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t CMPhotoGetFixedPointDescriptionFromPixelFormat(int a1, int *a2, int *a3, char *a4)
{
  result = 4294950301;
  if (a1 <= 1278226735)
  {
    if (a1 != 825306677)
    {
      if (a1 == 825437747)
      {
        v7 = 0;
        v8 = 13;
        v6 = 3;
        if (!a2)
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (a1 != 1278226488)
        {
          return result;
        }

        v6 = 0;
        v7 = 0;
        v8 = 8;
        if (!a2)
        {
          goto LABEL_18;
        }
      }

      goto LABEL_17;
    }

    v7 = 0;
    v8 = 11;
  }

  else
  {
    if (a1 <= 1278226741)
    {
      if (a1 == 1278226736)
      {
        v6 = 0;
        v7 = 0;
        v8 = 10;
        if (!a2)
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (a1 != 1278226738)
        {
          return result;
        }

        v6 = 0;
        v7 = 0;
        v8 = 12;
        if (!a2)
        {
          goto LABEL_18;
        }
      }

      goto LABEL_17;
    }

    if (a1 == 1278226742)
    {
      v6 = 0;
      v7 = 0;
      v8 = 16;
      if (!a2)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    if (a1 != 1932996149)
    {
      return result;
    }

    v7 = 1;
    v8 = 7;
  }

  v6 = 5;
  if (a2)
  {
LABEL_17:
    *a2 = v6;
  }

LABEL_18:
  if (a3)
  {
    *a3 = v8;
  }

  result = 0;
  if (a4)
  {
    *a4 = v7;
  }

  return result;
}

void CMPhotoPropagateChromaLocationFromSourceBuffer(CVBufferRef buffer, __CVBuffer *a2)
{
  v10[3] = *MEMORY[0x1E69E9840];
  if (buffer && a2)
  {
    v4 = 0;
    v5 = *MEMORY[0x1E6965CF0];
    v10[0] = *MEMORY[0x1E6965D00];
    v10[1] = v5;
    v10[2] = *MEMORY[0x1E6965E50];
    do
    {
      v6 = v10[v4];
      attachmentMode = kCVAttachmentMode_ShouldNotPropagate;
      v7 = CVBufferCopyAttachment(buffer, v6, &attachmentMode);
      if (v7)
      {
        v8 = v7;
        CVBufferSetAttachment(a2, v6, v7, attachmentMode);
        CFRelease(v8);
      }

      ++v4;
    }

    while (v4 != 3);
  }
}

void CMPhotoRemoveColorPropertiesFromBuffer(__CVBuffer *a1)
{
  if (a1)
  {
    CVBufferRemoveAttachment(a1, *MEMORY[0x1E6965CE8]);
    CVBufferRemoveAttachment(a1, *MEMORY[0x1E6965EC8]);
    CVBufferRemoveAttachment(a1, *MEMORY[0x1E6965F98]);
    CVBufferRemoveAttachment(a1, *MEMORY[0x1E6965D88]);
    v2 = *MEMORY[0x1E6965F30];

    CVBufferRemoveAttachment(a1, v2);
  }
}

void CMPhotoRemoveColorPropertiesFromBufferExcludingMatrix(__CVBuffer *a1)
{
  if (a1)
  {
    CVBufferRemoveAttachment(a1, *MEMORY[0x1E6965CE8]);
    CVBufferRemoveAttachment(a1, *MEMORY[0x1E6965EC8]);
    CVBufferRemoveAttachment(a1, *MEMORY[0x1E6965D88]);
    v2 = *MEMORY[0x1E6965F30];

    CVBufferRemoveAttachment(a1, v2);
  }
}

void CMPhotoRemoveChromaInformationFromBuffer(__CVBuffer *a1)
{
  if (a1)
  {
    CVBufferRemoveAttachment(a1, *MEMORY[0x1E6965D00]);
    CVBufferRemoveAttachment(a1, *MEMORY[0x1E6965CF0]);
    v2 = *MEMORY[0x1E6965E50];

    CVBufferRemoveAttachment(a1, v2);
  }
}

void CMPhotoRemoveAndPropagateColorPropertiesFromSourceBuffer(__CVBuffer *a1, __CVBuffer *a2)
{
  if (a1 && a2)
  {
    CMPhotoRemoveColorPropertiesFromBuffer(a2);

    CMPhotoPropagateColorPropertiesFromSourceBuffer(a1, a2);
  }
}

void CMPhotoRemoveAndPropagateAlphaFromSourceBuffer(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      CMPhotoRemoveAndPropagateAlphaFromSourceBuffer_cold_1();
    }
  }
}

uint64_t CMPhotoGetMatchingFullPrecisionPixelFormat(int a1)
{
  if (a1 > 1751410031)
  {
    result = 1717855600;
    if (a1 != 1751411059)
    {
      if (a1 == 1751410032)
      {
        return result;
      }

      return 0;
    }

    return 1717856627;
  }

  else
  {
    if (a1 != 16)
    {
      if (a1 == 1278226536)
      {
        return 1278226534;
      }

      return 0;
    }

    return 1111970369;
  }
}

uint64_t CMPhotoStringToFourCharCode(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 == 48)
  {
    if (!a1[1])
    {
      return 0;
    }

    return bswap32(*a1);
  }

  if (v1 == 50)
  {
    v3 = a1[1];
    if (v3 == 52)
    {
      if (!a1[2])
      {
        return 24;
      }
    }

    else if (52 == v3)
    {
      return 24;
    }
  }

  else if (50 == v1)
  {
    return 24;
  }

  if (v1 != 51)
  {
    v4 = 51;
    goto LABEL_17;
  }

  v1 = a1[1];
  if (v1 != 50)
  {
    v4 = 50;
LABEL_17:
    if (v4 == v1)
    {
      return 32;
    }

    return bswap32(*a1);
  }

  if (!a1[2])
  {
    return 32;
  }

  return bswap32(*a1);
}

double CMPhotoGetSurfaceSize(__IOSurface *a1)
{
  if (!a1)
  {
    return 0.0;
  }

  Width = IOSurfaceGetWidth(a1);
  IOSurfaceGetHeight(a1);
  return Width;
}

uint64_t CMPhotoCreatePixelbufferFromAuxiliaryDataDictionary(const __CFDictionary *a1, int a2, CVPixelBufferRef *a3)
{
  pixelBuffer = 0;
  Value = CFDictionaryGetValue(a1, *MEMORY[0x1E696D218]);
  if (Value && (v7 = Value, v8 = CFGetTypeID(Value), v8 == CFDataGetTypeID()))
  {
    v9 = CFDictionaryGetValue(a1, *MEMORY[0x1E696D220]);
    if (v9 && (v10 = v9, v11 = CFGetTypeID(v9), v11 == CFDictionaryGetTypeID()))
    {
      v27 = 0;
      v28 = 0;
      bytesPerRow = 0;
      if (CMPhotoCFDictionaryGetSizeIfPresent(v10, *MEMORY[0x1E696DFB8], &v28))
      {
        v12 = v28 == 0;
      }

      else
      {
        v12 = 1;
      }

      if (v12)
      {
        CMPhotoCreatePixelbufferFromAuxiliaryDataDictionary_cold_7(&v30);
      }

      else
      {
        if (CMPhotoCFDictionaryGetSizeIfPresent(v10, *MEMORY[0x1E696DD58], &v27))
        {
          v13 = v27 == 0;
        }

        else
        {
          v13 = 1;
        }

        if (v13)
        {
          CMPhotoCreatePixelbufferFromAuxiliaryDataDictionary_cold_6(&v30);
        }

        else if (CMPhotoCFDictionaryGetSizeIfPresent(v10, *MEMORY[0x1E696D430], &bytesPerRow) && bytesPerRow)
        {
          if (CMPhotoCFDictionaryGetInt32IfPresent())
          {
            BytePtr = CFDataGetBytePtr(v7);
            if (BytePtr)
            {
              v15 = BytePtr;
              Length = CFDataGetLength(v7);
              if (Length < bytesPerRow * v27)
              {
                CMPhotoCreatePixelbufferFromAuxiliaryDataDictionary_cold_2(&v30);
              }

              else
              {
                if (!a2)
                {
                  CFRetain(v7);
                  v17 = CVPixelBufferCreateWithBytes(*MEMORY[0x1E695E480], v28, v27, 0, v15, bytesPerRow, _auxDataPixelBufferReleaseCallback, v7, 0, &pixelBuffer);
                  if (!v17)
                  {
LABEL_28:
                    v24 = 0;
                    *a3 = pixelBuffer;
                    return v24;
                  }

                  goto LABEL_31;
                }

                if (!CMPhotoSurfacePoolCreatePixelBuffer(@"SurfacePoolOneShot", 0, v28, v27, 1, 0, 0, 1, 64, 0, &pixelBuffer))
                {
                  v17 = CVPixelBufferLockBaseAddress(pixelBuffer, 0);
                  if (!v17)
                  {
                    v18 = CVPixelBufferGetBytesPerRow(pixelBuffer);
                    v19 = v18;
                    if (bytesPerRow >= v18)
                    {
                      v20 = v18;
                    }

                    else
                    {
                      v20 = bytesPerRow;
                    }

                    BaseAddress = CVPixelBufferGetBaseAddress(pixelBuffer);
                    if (v27)
                    {
                      v22 = BaseAddress;
                      for (i = 0; i < v27; ++i)
                      {
                        memcpy(v22, v15, v20);
                        v22 += v19;
                        v15 += bytesPerRow;
                      }
                    }

                    v17 = CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
                    if (!v17)
                    {
                      goto LABEL_28;
                    }
                  }

LABEL_31:
                  v24 = v17;
                  goto LABEL_42;
                }

                CMPhotoCreatePixelbufferFromAuxiliaryDataDictionary_cold_1(&v30);
              }
            }

            else
            {
              CMPhotoCreatePixelbufferFromAuxiliaryDataDictionary_cold_3(&v30);
            }
          }

          else
          {
            CMPhotoCreatePixelbufferFromAuxiliaryDataDictionary_cold_4(&v30);
          }
        }

        else
        {
          CMPhotoCreatePixelbufferFromAuxiliaryDataDictionary_cold_5(&v30);
        }
      }
    }

    else
    {
      CMPhotoCreatePixelbufferFromAuxiliaryDataDictionary_cold_8(&v30);
    }
  }

  else
  {
    CMPhotoCreatePixelbufferFromAuxiliaryDataDictionary_cold_9(&v30);
  }

  v24 = v30;
LABEL_42:
  if (pixelBuffer)
  {
    CFRelease(pixelBuffer);
  }

  return v24;
}

void _auxDataPixelBufferReleaseCallback(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t CMPhotoPixelBufferFillOutsideCropRect(__CVBuffer *a1, int a2, _OWORD *a3)
{
  v3 = a3[1];
  v5[0] = *a3;
  v5[1] = v3;
  return CMPhotoPixelBufferFillOutsideCropRectWithLimit(a1, a2, v5, 0);
}

void _setVUITripletsIfMatching(CGColorSpace *a1, __CFDictionary *a2, uint64_t a3, const void *a4, const void *a5, uint64_t a6)
{
  if (a2)
  {
    if (a6)
    {
      FigCFDictionarySetValue();
    }

    theArray = 0;
    v14 = 0;
    CMPhotoGetTripletsForColorSpace(a1, a3, &v14, 0, 0);
    CMPhotoCreateAllowedTransferArrayForColorSpace(a1, &theArray);
    if (a4 && FigCFEqual())
    {
      CFDictionarySetValue(a2, *MEMORY[0x1E6965D88], a4);
    }

    if (a5)
    {
      v11 = 0;
      while (1)
      {
        Count = theArray;
        if (theArray)
        {
          Count = CFArrayGetCount(theArray);
        }

        if (v11 >= Count)
        {
          break;
        }

        CFArrayGetValueAtIndex(theArray, v11++);
        if (FigCFEqual())
        {
          CFDictionarySetValue(a2, *MEMORY[0x1E6965F30], a5);
          break;
        }
      }
    }

    if (theArray)
    {
      CFRelease(theArray);
    }
  }
}

uint64_t CMPhotoGetPixelFormatCompressionType(int a1)
{
  if (CMPhotoPixelFormatIsLossyCompressed50(a1))
  {
    return 3;
  }

  if (CMPhotoPixelFormatIsLossyCompressed62(a1))
  {
    return 4;
  }

  if (CMPhotoPixelFormatIsLossyCompressed75(a1))
  {
    return 5;
  }

  return 2 * (CMPhotoPixelFormatIsAGXCompressed(a1) != 0);
}

BOOL CMPhotoIsOutputFormatSupportedForNativeFloatingPoint(int a1, int a2)
{
  result = 0;
  if (a1 > 1717856626)
  {
    if (a1 > 1751411058)
    {
      if (a1 != 1751411059)
      {
        return a1 == 1751527984 && a2 == 1751527984;
      }
    }

    else if (a1 != 1717856627)
    {
      v4 = 1751410032;
LABEL_8:
      if (a1 != v4)
      {
        return result;
      }

      v5 = a2 == 1717855600;
      v6 = 1751410032;
      return v5 || a2 == v6;
    }

    v5 = a2 == 1717856627;
    v6 = 1751411059;
    return v5 || a2 == v6;
  }

  if (a1 != 16 && a1 != 1111970369)
  {
    v4 = 1717855600;
    goto LABEL_8;
  }

  result = 1;
  if (a2 <= 1651926375)
  {
    if (a2 <= 1380410944)
    {
      if (a2 == 1278226534)
      {
        return result;
      }

      v8 = 1278226536;
    }

    else
    {
      if (a2 == 1380410945 || a2 == 1380411457)
      {
        return result;
      }

      v8 = 1647719528;
    }
  }

  else if (a2 > 1751410031)
  {
    if (a2 == 1751410032 || a2 == 1751411059)
    {
      return result;
    }

    v8 = 1751527984;
  }

  else
  {
    if (a2 == 1651926376 || a2 == 1717855600)
    {
      return result;
    }

    v8 = 1717856627;
  }

  if (a2 != v8)
  {
    return 0;
  }

  return result;
}

uint64_t CMPhotoGetDefaultImageSubsamplingForEncodeFromPixelFormat(uint64_t a1, int a2, int a3)
{
  UncompressedPixelFormatFromCompressedPixelFormat = CMPhotoGetUncompressedPixelFormatFromCompressedPixelFormat(a1);
  if (a2 == 1785750887)
  {
    return 5;
  }

  v7 = UncompressedPixelFormatFromCompressedPixelFormat;
  result = 5;
  if (v7 > 1751410031)
  {
    if (v7 <= 1937126451)
    {
      if (v7 > 1885746227)
      {
        if (v7 <= 1936077361)
        {
          if (v7 != 1885746228)
          {
            v10 = 1932996149;
            goto LABEL_60;
          }

LABEL_70:
          IsRGBEncodeAvailable = CMPhotoIs444EncodeAvailable(a2, a3);
LABEL_71:
          if (IsRGBEncodeAvailable)
          {
            return 1;
          }

          else
          {
            return 5;
          }
        }

        if (v7 != 1936077362)
        {
          if (v7 == 1936077876)
          {
            goto LABEL_70;
          }

          v9 = 1937125938;
          goto LABEL_66;
        }
      }

      else
      {
        if (v7 <= 1882468913)
        {
          if (v7 == 1751410032)
          {
            goto LABEL_61;
          }

          v10 = 1751411059;
          goto LABEL_60;
        }

        if (v7 != 1882468914)
        {
          if (v7 == 1882469428)
          {
            goto LABEL_70;
          }

          v9 = 1885745714;
          goto LABEL_66;
        }
      }
    }

    else if (v7 <= 2016686641)
    {
      if (v7 <= 1952855091)
      {
        if (v7 == 1937126452)
        {
          goto LABEL_70;
        }

        v9 = 1952854578;
        goto LABEL_66;
      }

      if (v7 == 1952855092)
      {
        goto LABEL_70;
      }

      if (v7 != 1953903154)
      {
        if (v7 != 1953903668)
        {
          return result;
        }

        goto LABEL_70;
      }
    }

    else if (v7 > 2019963955)
    {
      if (v7 == 2019963956)
      {
        goto LABEL_70;
      }

      if (v7 != 2037741171)
      {
        v9 = 2037741158;
        goto LABEL_66;
      }
    }

    else if (v7 != 2016686642)
    {
      if (v7 == 2016687156)
      {
        goto LABEL_70;
      }

      v9 = 2019963442;
      goto LABEL_66;
    }

LABEL_67:
    if (CMPhotoIs422EncodeAvailable(a2, a3))
    {
      return 3;
    }

    else
    {
      return 5;
    }
  }

  if (v7 <= 1278226487)
  {
    if (v7 <= 875704933)
    {
      if (v7 > 825437746)
      {
        if (v7 != 825437747 && v7 != 843264056)
        {
          v10 = 843264310;
          goto LABEL_60;
        }

        goto LABEL_61;
      }

      if (v7 == 32)
      {
        goto LABEL_51;
      }

      v10 = 825306677;
      goto LABEL_60;
    }

    if (v7 > 875836517)
    {
      if (v7 != 875836518 && v7 != 875836534)
      {
        if (v7 != 1111970369)
        {
          return result;
        }

LABEL_51:
        IsRGBEncodeAvailable = CMPhotoIsRGBEncodeAvailable(a2);
        goto LABEL_71;
      }

      goto LABEL_70;
    }

    if (v7 != 875704934)
    {
      v9 = 875704950;
LABEL_66:
      if (v7 != v9)
      {
        return result;
      }

      goto LABEL_67;
    }

    goto LABEL_67;
  }

  if (v7 > 1279340599)
  {
    if (v7 > 1380401728)
    {
      if (v7 != 1380401729)
      {
        if (v7 != 1717855600)
        {
          v10 = 1717856627;
          goto LABEL_60;
        }

LABEL_61:
        if (CMPhotoIs400EncodeAvailable(a2))
        {
          return 6;
        }

        else
        {
          return 5;
        }
      }

      goto LABEL_51;
    }

    if (v7 == 1279340600)
    {
      goto LABEL_61;
    }

    v10 = 1279340854;
LABEL_60:
    if (v7 != v10)
    {
      return result;
    }

    goto LABEL_61;
  }

  if ((v7 - 1278226488) <= 0x30 && ((1 << (v7 - 56)) & 0x1400000000001) != 0)
  {
    goto LABEL_61;
  }

  v8 = v7 - 1278226736;
  if (v8 <= 6 && ((1 << v8) & 0x45) != 0)
  {
    goto LABEL_61;
  }

  return result;
}

BOOL CMPhotoSubsamplingIsSupportedForCodec(int a1, int a2, int a3)
{
  if (a1 > 3)
  {
    if (a1 != 4)
    {
      if (a1 != 6)
      {
        return a1 == 5;
      }

      v3 = CMPhotoIs400EncodeAvailable(a2);
      return v3 != 0;
    }

    return a2 == 1785750887;
  }

  switch(a1)
  {
    case 1:
      v3 = CMPhotoIs444EncodeAvailable(a2, a3);
      return v3 != 0;
    case 2:
      return a2 == 1785750887;
    case 3:
      v3 = CMPhotoIs422EncodeAvailable(a2, a3);
      return v3 != 0;
  }

  return 0;
}

uint64_t CMPhotoPixelFormatGetUnsubsampledEquivalent(int a1)
{
  if (a1 > 1952854575)
  {
    if (a1 > 2016686639)
    {
      if (a1 > 2019963439)
      {
        if (a1 == 2019963440 || a1 == 2019963442)
        {
          return 2019963956;
        }

        return 0;
      }

      if (a1 != 2016686640 && a1 != 2016686642)
      {
        return 0;
      }

      return 2016687156;
    }

    if (a1 <= 1953903151)
    {
      if (a1 != 1952854576 && a1 != 1952854578)
      {
        return 0;
      }

      return 1952855092;
    }

    if (a1 != 1953903152 && a1 != 1953903154)
    {
      return 0;
    }

    v3 = 1952855092;
    return v3 | 0x100000u;
  }

  if (a1 > 1936077359)
  {
    if (a1 <= 1937125935)
    {
      if (a1 != 1936077360 && a1 != 1936077362)
      {
        return 0;
      }

      return 1936077876;
    }

    if (a1 != 1937125936 && a1 != 1937125938)
    {
      return 0;
    }

    v3 = 1936077876;
    return v3 | 0x100000u;
  }

  v1 = 875836518;
  if (a1 > 875704933)
  {
    if (a1 != 875704934)
    {
      v2 = 12918;
LABEL_21:
      if (a1 == (v2 | 0x34320000))
      {
        return 875836534;
      }

      return 0;
    }
  }

  else if (a1 != 875704422)
  {
    v2 = 12406;
    goto LABEL_21;
  }

  return v1;
}

uint64_t _verifyEqualPixelBufferFormatSizeClap(__CVBuffer *a1, int a2, uint64_t a3, uint64_t a4)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  v9 = CVPixelBufferGetWidth(a1) == a3 && CVPixelBufferGetHeight(a1) == a4;
  if (CVBufferHasAttachment(a1, *MEMORY[0x1E6965D70]))
  {
    return 0;
  }

  else
  {
    return (PixelFormatType == a2) & v9;
  }
}

uint64_t CMPhotoCreateYUVPixelBufferWithDithering(__CVBuffer *a1, uint64_t a2, int a3, CVPixelBufferRef *a4)
{
  v162 = 0;
  if (a3 != 875704422)
  {
    CMPhotoCreateYUVPixelBufferWithDithering_cold_1(v163);
    return v163[0];
  }

  v5 = a1;
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(v5);
  v8 = CMPhotoSurfacePoolCreatePixelBuffer(0, 875704422, Width, Height, 1, 0, 0, 0, 0, 0, &v162);
  v9 = v162;
  if (v8)
  {
    goto LABEL_73;
  }

  v10 = CVPixelBufferLockBaseAddress(v162, 0);
  if (v10)
  {
    v8 = v10;
    goto LABEL_72;
  }

  v11 = 1;
  v12 = CVPixelBufferLockBaseAddress(v5, 1uLL);
  if (v12)
  {
    v8 = v12;
    goto LABEL_69;
  }

  v13 = v162;
  v14 = CVPixelBufferGetWidth(v5);
  v15 = CVPixelBufferGetHeight(v5);
  if ((v14 | v15))
  {
    CMPhotoCreateYUVPixelBufferWithDithering_cold_2(v163);
  }

  else
  {
    BytesPerRow = CVPixelBufferGetBytesPerRow(v5);
    PixelFormatType = CVPixelBufferGetPixelFormatType(v5);
    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(v13, 0);
    v131 = CVPixelBufferGetBytesPerRowOfPlane(v13, 1uLL);
    switch(PixelFormatType)
    {
      case 0x18u:
        v148 = 0;
        v18 = 3;
        goto LABEL_11;
      case 0x42475241u:
        v146 = 0;
        v147 = 4;
        v148 = 2;
        goto LABEL_13;
      case 0x52474241u:
        v148 = 0;
        v18 = 4;
LABEL_11:
        v147 = v18;
        v146 = 2;
LABEL_13:
        v19 = malloc_type_calloc(5 * v14 + 14, 4uLL, 0x100004052888210uLL);
        if (v19)
        {
          v20 = v19;
          v124 = a4;
          v21 = v14 >> 1;
          v22 = v19 + 4;
          v23 = v14;
          v24 = &v19[4 * v14 + 4];
          v130 = 4 * v23;
          v160 = v15;
          v125 = v5;
          BaseAddress = CVPixelBufferGetBaseAddress(v5);
          BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(v13, 0);
          v27 = CVPixelBufferGetBaseAddressOfPlane(v13, 1uLL);
          v28 = BaseAddress;
          v29 = v22;
          v30 = 0;
          v31 = v24 + 8 + 4 * v23 + 8;
          v158 = (v31 + 4 * v23 + 8);
          v32 = &v158[v21 + 2];
          v33 = v32 + 4 * v21 + 8;
          v143 = (v24 + 8);
          v156 = v23 - 1;
          v34 = v27;
          v141 = v24 + 8 + 4 * (v23 - 1);
          v123 = v20;
          v159 = &v20[4 * v23];
          v129 = v160 - 1;
          v153 = &BaseAddressOfPlane[BytesPerRowOfPlane];
          v35 = v33 + 4 * v21 + 8;
          v127 = 2 * v23;
          v128 = v21 - 1;
          v126 = 2 * BytesPerRowOfPlane;
          v142 = v23;
          v154 = v23 - 2;
          do
          {
            v157 = BaseAddressOfPlane;
            v132 = v30;
            v36 = 0;
            v37 = 0;
            v38 = 0;
            v39 = v31;
            v140 = v29;
            v151 = v29 + 1;
            v136 = (v31 + 4 * v156);
            v40 = 0.0;
            v139 = (v31 + 4);
            v138 = (v32 + 4);
            v137 = (v35 + 4);
            v41 = v128;
            v144 = v35;
            v145 = v32;
            v135 = (v32 + 4 * v128);
            v133 = v28;
            v134 = (v35 + 4 * v128);
            v42 = v159;
            v152 = v31;
            v150 = v33;
            do
            {
              v43 = v34;
              v44 = v28[1];
              v45 = v28[v146];
              v161 = v28[v147 + v148];
              v46 = v28[v147 + 1];
              v47 = v28[v147 + v146];
              v48 = v28[BytesPerRow + v148];
              v49 = v28[BytesPerRow + 1];
              v50 = v28[BytesPerRow + v146];
              v51 = v28[BytesPerRow + v147 + v148];
              v52 = v28[BytesPerRow + 1 + v147];
              v53 = v28[BytesPerRow + v147 + v146];
              v155 = v28[v148];
              v54 = 19595 * v155 + 38470 * v44 + 7471 * v45 + v151[v36 - 1];
              v55 = v54 + 0x8000;
              v56 = v54 - ((v54 + 0x8000) & 0xFFFF0000);
              v57 = 3 * v56;
              if (v38)
              {
                v151[v36] += 7 * v56 / 16;
                v58 = v57 + 15;
                if (v57 >= 0)
                {
                  v58 = 3 * v56;
                }

                v59 = &v42[v36 * 4];
                v60 = *&v42[v36 * 4 + 12];
                v61 = *&v42[v36 * 4 + 8] + (v58 >> 4);
                v62 = 5 * v56 + 15;
                if (5 * v56 >= 0)
                {
                  v62 = 5 * v56;
                }

                *(v59 + 2) = v61;
                *(v59 + 3) = v60 + (v62 >> 4);
                v63 = v56 / 16;
                v64 = v59 + 16;
              }

              else
              {
                v140[1] += v56 / 2;
                *(v24 + 8) += 6 * v56 / 16;
                v42 = v159;
                v63 = v56 / 8;
                v64 = (v24 + 12);
              }

              *v64 += v63;
              v65 = (v55 >> 16) & ~(v55 >> 31);
              if (v65 >= 255)
              {
                LOBYTE(v65) = -1;
              }

              v157[v38] = v65;
              v66 = 19595 * v161 + 38470 * v46 + 7471 * v47 + v151[v36];
              v67 = v66 + 0x8000;
              v68 = v66 - ((v66 + 0x8000) & 0xFFFF0000);
              v69 = 7 * v68 / 16;
              v70 = &v42[4 * v38];
              if (v154 == v38)
              {
                v71 = v141;
                *(v141 - 4) += v69;
                v68 *= 9;
              }

              else
              {
                v151[v36 + 1] += v69;
                *&v42[v36 * 4 + 12] += 3 * v68 / 16;
                *&v42[4 * v38 + 16] += 5 * v68 / 16;
                v71 = &v42[v36 * 4 + 20];
              }

              v72 = 19595 * v48 + 38470 * v49 + 7471 * v50;
              *v71 += v68 / 16;
              v73 = (v67 >> 16) & ~(v67 >> 31);
              if (v73 >= 255)
              {
                LOBYTE(v73) = -1;
              }

              v157[v38 + 1] = v73;
              if (v38)
              {
                v74 = *&v42[v36 * 4 + 8] + v40;
                v75 = v74 + 0x8000;
                v76 = v74 - ((v74 + 0x8000) & 0xFFFF0000);
                v77 = 7 * v76 / 16;
                if (v142 == v38)
                {
                  v78 = &v39[v38 - 1];
                  v39[v36 - 2] += v77;
                  v76 *= 9;
                }

                else
                {
                  *&v42[v36 * 4 + 12] += v77;
                  v78 = &v39[v36];
                  v85 = v39[v36 - 1];
                  v86 = 5 * v76 + 15;
                  if (5 * v76 >= 0)
                  {
                    v86 = 5 * v76;
                  }

                  *(v78 - 2) = v39[v36 - 2] + 3 * v76 / 16;
                  *(v78 - 1) = v85 + (v86 >> 4);
                }

                *v78 += v76 / 16;
                v87 = (v75 >> 16) & ~(v75 >> 31);
                if (v87 >= 255)
                {
                  LOBYTE(v87) = -1;
                }

                v84 = v153;
                v153[v38 - 1] = v87;
                v88 = *&v159[v36 * 4 + 12] + v72;
                v80 = v88 + 0x8000;
                v89 = v88 - ((v88 + 0x8000) & 0xFFFF0000);
                *(v70 + 4) += 7 * v89 / 16;
                v90 = v39[v36] + 5 * v89 / 16;
                v39[v36 - 1] += 3 * v89 / 16;
                v39[v36] = v90;
                v82 = v89 / 16;
                v83 = &v39[v36 + 1];
              }

              else
              {
                v79 = *v143 + v72;
                v80 = v79 + 0x8000;
                v81 = v79 - ((v79 + 0x8000) & 0xFFFF0000);
                *(v24 + 12) += v81 / 2;
                *v39 += 6 * v81 / 16;
                v82 = v81 / 8;
                v83 = v139;
                v84 = v153;
              }

              v91 = 19595 * v51 + 38470 * v52 + 7471 * v53;
              *v83 += v82;
              v92 = (v80 >> 16) & ~(v80 >> 31);
              if (v92 >= 255)
              {
                LOBYTE(v92) = -1;
              }

              v84[v38] = v92;
              v93 = v38 + 2;
              if (v38 + 2 >= v156)
              {
                v94 = *(v70 + 4) + v91;
                v95 = v94 + 0x8000;
                v96 = v94 - ((v94 + 0x8000) & 0xFFFF0000);
                v97 = 7 * v96 / 16;
                if (v154 == v38)
                {
                  v98 = v136;
                  *(v136 - 1) += v97;
                  v96 *= 9;
                }

                else
                {
                  *&v159[v36 * 4 + 20] += v97;
                  v84 = v153;
                  v99 = v152[v36 + 1];
                  v152[v36] += 3 * v96 / 16;
                  v152[v36 + 1] = v99 + 5 * v96 / 16;
                  v98 = &v152[v36 + 2];
                }

                *v98 += v96 / 16;
                v100 = (v95 >> 16) & ~(v95 >> 31);
                if (v100 >= 255)
                {
                  LOBYTE(v100) = -1;
                }

                v84[v38 + 1] = v100;
              }

              else
              {
                v40 = v91;
              }

              v42 = v159;
              v101 = v47 + v45 + v50 + v53;
              v102 = v46 + v44 + v49 + v52;
              v103 = v48 + v161 + v155 + v51;
              v104 = v158[v37] + ((-21709 * v102 - 11057 * v103 + (v101 << 15) + 0x2000000) >> 2);
              v105 = v104 + 0x8000;
              v106 = v104 - ((v104 + 0x8000) & 0xFFFF0000);
              v34 = v43;
              if (v38)
              {
                v107 = 7 * v106 / 16;
                if (v41)
                {
                  v158[v37 + 1] += v107;
                  v108 = v145[v37] + 5 * v106 / 16;
                  v145[v37 - 1] += 3 * v106 / 16;
                  v145[v37] = v108;
                  v109 = v106 / 16;
                  v110 = &v145[v37 + 1];
                }

                else
                {
                  *(v135 - 1) += v107;
                  v109 = 9 * v106 / 16;
                  v110 = v135;
                }
              }

              else
              {
                v158[1] += v106 / 2;
                *v145 += 6 * v106 / 16;
                v109 = v106 / 8;
                v110 = v138;
              }

              v111 = (-27438 * v102 + (v103 << 15) - 5328 * v101 + 0x2000000) >> 2;
              *v110 += v109;
              v112 = (v105 >> 16) & ~(v105 >> 31);
              if (v112 >= 255)
              {
                LOBYTE(v112) = -1;
              }

              v43[v38] = v112;
              v113 = v150[v37] + v111;
              v114 = v113 + 0x8000;
              v115 = v113 - ((v113 + 0x8000) & 0xFFFF0000);
              if (v38)
              {
                v116 = 7 * v115 / 16;
                if (v41)
                {
                  v150[v37 + 1] += v116;
                  v117 = &v144[v37];
                  v118 = v144[v37] + 5 * v115 / 16;
                  *(v117 - 1) = v144[v37 - 1] + 3 * v115 / 16;
                  *v117 = v118;
                  v119 = v115 / 16;
                  v120 = &v144[v37 + 1];
                }

                else
                {
                  *(v134 - 1) += v116;
                  v119 = 9 * v115 / 16;
                  v120 = v134;
                }
              }

              else
              {
                v150[1] += v115 / 2;
                *v144 += 6 * v115 / 16;
                v119 = v115 / 8;
                v120 = v137;
              }

              v28 += 2 * v147;
              *v120 += v119;
              v121 = (v114 >> 16) & ~(v114 >> 31);
              if (v121 >= 255)
              {
                LOBYTE(v121) = -1;
              }

              v43[v38 + 1] = v121;
              ++v37;
              --v41;
              v36 += 2;
              v38 += 2;
              v39 = v152;
            }

            while (v93 < v156);
            bzero(v158, v127);
            bzero(v150, v127);
            bzero(v143, v130);
            v31 = v140;
            bzero(v140, v130);
            BaseAddressOfPlane = &v157[v126];
            v153 += v126;
            v34 = &v43[v131];
            v28 = &v133[2 * BytesPerRow];
            v30 = v132 + 2;
            v35 = v150;
            v33 = v144;
            v32 = v158;
            v158 = v145;
            v29 = v152;
          }

          while (v132 + 2 < v129);
          free(v123);
          a4 = v124;
          v5 = v125;
          goto LABEL_67;
        }

        v8 = 4294967293;
LABEL_84:
        v11 = 1;
        goto LABEL_68;
    }

    CMPhotoCreateYUVPixelBufferWithDithering_cold_3(v163);
  }

  v8 = v163[0];
  if (v163[0])
  {
    goto LABEL_84;
  }

LABEL_67:
  CMPhotoCreateYUVPixelBufferWithDithering_cold_4(&v162, v5, a4);
  v11 = 0;
  v8 = 0;
LABEL_68:
  CVPixelBufferUnlockBaseAddress(v5, 1uLL);
LABEL_69:
  v9 = v162;
  if (v11 && v162)
  {
    CVPixelBufferUnlockBaseAddress(v162, 0);
LABEL_72:
    v9 = v162;
  }

LABEL_73:
  if (v9)
  {
    CFRelease(v9);
  }

  return v8;
}

vImage_Error CMPhotoCreateAlphaFromMainBuffer(__CVBuffer *a1, int a2, CVPixelBufferRef *a3)
{
  pixelBuffer = 0;
  if (!a1)
  {
    CMPhotoCreateAlphaFromMainBuffer_cold_4(&v41);
    goto LABEL_73;
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  if (PixelFormatType > 1279340853)
  {
    if (PixelFormatType > 1380411456)
    {
      if (PixelFormatType == 1380411457)
      {
        if (a2)
        {
          CMPhotoCreateAlphaFromMainBuffer_cold_1(&v41);
          goto LABEL_73;
        }

        v9 = 1278226536;
        goto LABEL_27;
      }

      if (PixelFormatType == 1815491698)
      {
        if (a2)
        {
          v9 = 1936077360;
        }

        else
        {
          v9 = 1278226742;
        }

        goto LABEL_27;
      }

      goto LABEL_72;
    }

    if (PixelFormatType == 1279340854)
    {
LABEL_20:
      if (a2)
      {
        CMPhotoCreateAlphaFromMainBuffer_cold_2(&v41);
        goto LABEL_73;
      }

      v9 = 1278226736;
      goto LABEL_27;
    }

    if (PixelFormatType != 1380401729)
    {
      goto LABEL_72;
    }

LABEL_22:
    if (a2)
    {
      v9 = 875704422;
    }

    else
    {
      v9 = 1278226488;
    }

    goto LABEL_27;
  }

  if (PixelFormatType > 1111970368)
  {
    if (PixelFormatType != 1111970369)
    {
      if (PixelFormatType == 1279340600)
      {
        goto LABEL_13;
      }

LABEL_72:
      CMPhotoCreateAlphaFromMainBuffer_cold_5(&v41);
LABEL_73:
      v13 = v41;
      goto LABEL_54;
    }

    goto LABEL_22;
  }

  if (PixelFormatType != 843264056)
  {
    if (PixelFormatType != 843264310)
    {
      goto LABEL_72;
    }

    goto LABEL_20;
  }

LABEL_13:
  if (a2)
  {
    CMPhotoCreateAlphaFromMainBuffer_cold_3(&v41);
    goto LABEL_73;
  }

  v9 = 1278226488;
LABEL_27:
  v10 = CMPhotoSurfacePoolCreatePixelBuffer(@"SurfacePoolOneShot", v9, Width, Height, 1, 0, 0, 1, 0, 0, &pixelBuffer);
  if (v10 || (v10 = CVPixelBufferLockBaseAddress(a1, 0), v10))
  {
    v13 = v10;
    goto LABEL_54;
  }

  v11 = CVPixelBufferLockBaseAddress(pixelBuffer, 0);
  v12 = v11;
  v13 = v11;
  if (!v11)
  {
    BaseAddress = CVPixelBufferGetBaseAddress(a1);
    if (a2)
    {
      BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, 0);
      BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
      BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, 0);
    }

    else
    {
      BaseAddressOfPlane = CVPixelBufferGetBaseAddress(pixelBuffer);
      BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
      BytesPerRowOfPlane = CVPixelBufferGetBytesPerRow(pixelBuffer);
    }

    src.data = BaseAddress;
    src.height = Height;
    src.width = Width;
    src.rowBytes = BytesPerRow;
    dest.data = BaseAddressOfPlane;
    dest.height = Height;
    dest.width = Width;
    dest.rowBytes = BytesPerRowOfPlane;
    if (PixelFormatType > 1380401728)
    {
      if (PixelFormatType == 1815491698 || PixelFormatType == 1380411457)
      {
        v13 = vImageExtractChannel_ARGB16U(&src, &dest, 3, 0);
        if (v13)
        {
          goto LABEL_51;
        }

        goto LABEL_43;
      }
    }

    else
    {
      if (PixelFormatType <= 1111970368)
      {
        if (PixelFormatType != 843264056)
        {
          v18 = 843264310;
          goto LABEL_49;
        }

        goto LABEL_58;
      }

      if (PixelFormatType != 1111970369)
      {
        if (PixelFormatType != 1279340600)
        {
          v18 = 1279340854;
LABEL_49:
          if (PixelFormatType != v18)
          {
            fig_log_get_emitter();
            v13 = FigSignalErrorAtGM();
            goto LABEL_51;
          }

          if (Height)
          {
            v32 = 0;
            v33 = (BaseAddress + 2);
            do
            {
              if (Width)
              {
                v34 = &BaseAddressOfPlane[v32 * BytesPerRowOfPlane];
                v35 = v33;
                v36 = Width;
                do
                {
                  v37 = *v35;
                  v35 += 2;
                  *v34 = v37 & 0xFFC0;
                  v34 += 2;
                  --v36;
                }

                while (v36);
              }

              ++v32;
              v33 = (v33 + BytesPerRow);
            }

            while (v32 != Height);
          }

          goto LABEL_43;
        }

LABEL_58:
        if (Height)
        {
          v26 = 0;
          v27 = BaseAddress + 1;
          do
          {
            if (Width)
            {
              v28 = &BaseAddressOfPlane[v26 * BytesPerRowOfPlane];
              v29 = v27;
              v30 = Width;
              do
              {
                v31 = *v29;
                v29 += 2;
                *v28++ = v31;
                --v30;
              }

              while (v30);
            }

            ++v26;
            v27 += BytesPerRow;
          }

          while (v26 != Height);
        }

LABEL_43:
        if (a2)
        {
          HeightOfPlane = CVPixelBufferGetHeightOfPlane(pixelBuffer, 1uLL);
          v20 = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, 1uLL);
          v21 = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, 1uLL);
          bzero(v21, v20 * HeightOfPlane);
        }

        v22 = pixelBuffer;
        AlphaMode = CMPhotoPixelBufferGetAlphaMode(a1);
        CMPhotoPixelBufferSetAlphaOpaquenessAndAlphaMode(v22, 0, AlphaMode);
        v13 = 0;
        if (a3)
        {
          *a3 = pixelBuffer;
          pixelBuffer = 0;
        }

        goto LABEL_51;
      }
    }

    v13 = vImageExtractChannel_ARGB8888(&src, &dest, 3, 0);
    if (v13)
    {
      goto LABEL_51;
    }

    goto LABEL_43;
  }

LABEL_51:
  CVPixelBufferUnlockBaseAddress(a1, 0);
  v24 = pixelBuffer;
  if (!v12 && pixelBuffer)
  {
    CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
LABEL_54:
    v24 = pixelBuffer;
  }

  if (v24)
  {
    CFRelease(v24);
  }

  return v13;
}

void CMPhotoRemoveColorInformationGuessedBy(__CVBuffer *a1)
{
  if (a1)
  {
    v2 = CVBufferCopyAttachment(a1, @"ColorInfoGuessedBy", 0);
    if (v2)
    {
      v3 = v2;
      CVBufferRemoveAttachment(a1, *MEMORY[0x1E6965F98]);
      CVBufferRemoveAttachment(a1, *MEMORY[0x1E6965D88]);
      CVBufferRemoveAttachment(a1, *MEMORY[0x1E6965F30]);
      CVBufferRemoveAttachment(a1, *MEMORY[0x1E6965CE8]);
      CVBufferRemoveAttachment(a1, @"ColorInfoGuessedBy");

      CFRelease(v3);
    }
  }
}

uint64_t CMPhotoPixelFormatToAppleJPEGFormat(int a1, int *a2)
{
  result = 4294950301;
  if (a1 > 1278226735)
  {
    if (a1 > 1380401728)
    {
      if (a1 <= 1815491697)
      {
        if (a1 == 1380401729)
        {
          v4 = 3;
        }

        else
        {
          if (a1 != 1647589490)
          {
            return result;
          }

          v4 = 20;
        }

        goto LABEL_27;
      }

      if (a1 != 1932996149)
      {
        if (a1 != 1815491698)
        {
          return result;
        }

        v4 = 16;
        goto LABEL_27;
      }
    }

    else if ((a1 - 1278226736) > 6 || ((1 << (a1 - 48)) & 0x45) == 0)
    {
      if (a1 != 1278555701)
      {
        return result;
      }

      v4 = 1;
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  if (a1 > 875704421)
  {
    if (a1 > 1111970368)
    {
      if (a1 == 1111970369)
      {
        v4 = 4;
      }

      else
      {
        if (a1 != 1278226488)
        {
          return result;
        }

        v4 = 5;
      }
    }

    else if (a1 == 875704422)
    {
      v4 = 10;
    }

    else
    {
      if (a1 != 875704934)
      {
        return result;
      }

      v4 = 8;
    }

    goto LABEL_27;
  }

  if (a1 == 24)
  {
    v4 = 0;
    goto LABEL_27;
  }

  if (a1 == 825306677 || a1 == 825437747)
  {
LABEL_26:
    v4 = 18;
LABEL_27:
    result = 0;
    *a2 = v4;
  }

  return result;
}

uint64_t CMPhotoCVYCbCrMatrixGetIntegerCodePointForString(const __CFString *a1)
{
  if (!a1)
  {
    return 2;
  }

  if (FigCFEqual())
  {
    return 0;
  }

  return CVYCbCrMatrixGetIntegerCodePointForString(a1);
}

BOOL CMPhotoPixelBufferIsNon601YCbCr(__CVBuffer *a1, char *a2)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  v5 = 0;
  v6 = 0;
  v7 = 1;
  if (PixelFormatType <= 1278226735)
  {
    if ((PixelFormatType - 1278226488) <= 0x30 && ((1 << (PixelFormatType - 56)) & 0x1400000000001) != 0 || PixelFormatType == 825306677)
    {
      goto LABEL_18;
    }

    v8 = 825437747;
  }

  else
  {
    if (PixelFormatType <= 1717856626)
    {
      if ((PixelFormatType - 1278226736) > 6 || ((1 << (PixelFormatType - 48)) & 0x45) == 0)
      {
        v8 = 1717855600;
        goto LABEL_15;
      }

LABEL_18:
      v9 = 0;
      goto LABEL_19;
    }

    if (PixelFormatType > 1751411058)
    {
      if (PixelFormatType == 1751411059)
      {
        goto LABEL_18;
      }

      v8 = 1932996149;
    }

    else
    {
      if (PixelFormatType == 1717856627)
      {
        goto LABEL_18;
      }

      v8 = 1751410032;
    }
  }

LABEL_15:
  v9 = 0;
  if (PixelFormatType != v8)
  {
    if (CMPhotoPixelFormatContainsRGB(PixelFormatType))
    {
      v6 = 0;
      v5 = 0;
      v9 = 0;
      v7 = 1;
    }

    else
    {
      v11 = CVBufferCopyAttachment(a1, *MEMORY[0x1E6965F98], 0);
      v6 = v11;
      if (v11)
      {
        IntegerCodePointForString = CMPhotoCVYCbCrMatrixGetIntegerCodePointForString(v11);
        v7 = 0;
        v5 = 0;
        v9 = (IntegerCodePointForString - 7) < 0xFFFFFFFE;
      }

      else
      {
        v9 = 0;
        v7 = 1;
        v5 = 1;
      }
    }
  }

LABEL_19:
  if (a2)
  {
    *a2 = v5;
  }

  if ((v7 & 1) == 0)
  {
    CFRelease(v6);
  }

  return v9;
}

void _wrappingBufferReleaseCallback(__CVBuffer *a1)
{
  if (a1)
  {
    CVPixelBufferUnlockBaseAddress(a1, 0);

    CFRelease(a1);
  }
}

uint64_t CMPhotoPixelFormatIsWrappableAsGrayscale(int a1, int *a2)
{
  result = 0;
  v4 = 1278226488;
  if (a1 > 1952854575)
  {
    if (a1 > 2019963439)
    {
      if (a1 == 2019963440 || a1 == 2019963956 || a1 == 2019963442)
      {
        v4 = 1278226736;
        if (!a2)
        {
          return 1;
        }

        goto LABEL_18;
      }
    }

    else if (a1 == 1952854576 || a1 == 1952854578 || a1 == 1952855092)
    {
      v4 = 1278226738;
      if (!a2)
      {
        return 1;
      }

      goto LABEL_18;
    }
  }

  else
  {
    if (a1 <= 1936077359)
    {
      if (a1 != 875704422 && a1 != 875704934 && a1 != 875836518)
      {
        return result;
      }

LABEL_17:
      if (!a2)
      {
        return 1;
      }

LABEL_18:
      *a2 = v4;
      return 1;
    }

    if (a1 == 1936077360 || a1 == 1936077362 || a1 == 1936077876)
    {
      v4 = 1278226742;
      goto LABEL_17;
    }
  }

  return result;
}

void _wrappingLumaBufferReleaseCallback(__CVBuffer *a1)
{
  if (a1)
  {
    CVPixelBufferUnlockBaseAddress(a1, 0);

    CFRelease(a1);
  }
}

void _callbackDataProviderReleaseSurface(__IOSurface *a1)
{
  IOSurfaceUnlock(a1, 1u, 0);
  IOSurfaceDecrementUseCount(a1);
  if (a1)
  {

    CFRelease(a1);
  }
}

void _callbackDataProviderReleaseInfo(void *a1)
{
  FigSimpleMutexDestroy();
  v2 = a1[1];
  if (v2)
  {
    CFRelease(v2);
    a1[1] = 0;
  }

  v3 = a1[2];
  if (v3)
  {
    CVPixelBufferUnlockBaseAddress(v3, 0);
    v4 = a1[2];
    if (v4)
    {
      CFRelease(v4);
    }
  }

  free(a1);
}

void OUTLINED_FUNCTION_46(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, int a8, uint64_t a9, CFStringRef a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{

  CMPhotoCreateColorSpaceFromPixelBufferAttachments(a1, 0, &a10, 1, 1, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t OUTLINED_FUNCTION_63(__CVBuffer *a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return CMPhotoGetPixelBufferDataPointers(a1, a2, a3, 0, a5, a6, 0);
}

void OUTLINED_FUNCTION_74(CFTypeRef value, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, CVBufferRef buffer)
{

  CVBufferSetAttachment(buffer, v13, value, kCVAttachmentMode_ShouldPropagate);
}

uint64_t OUTLINED_FUNCTION_75(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{

  return _fillPixelBufferRectVerticallyWithLimit(a1, a2, v22, v23, a5, v21, a21, a10);
}

CFComparisonResult OUTLINED_FUNCTION_78(uint64_t a1, const __CFString *a2)
{

  return CFStringCompare(v2, a2, 1uLL);
}

void VTCompressionPluginClass_dispose(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 152);
    if (v2)
    {
      if (*(v2 + 3))
      {
        VTCompressionPluginClass_completeEncodes(a1);
        if (v2[41])
        {
          CMPhotoCodecSessionPoolRecycleSession(*(a1 + 24), *(v2 + 3), *v2);
        }

        else
        {
          VTCompressionSessionInvalidate(*(v2 + 3));
        }
      }

      v3 = *(v2 + 15);
      if (v3)
      {
        if (!v2[128] || (CVPixelBufferUnlockBaseAddress(v3, 1uLL), v2[128] = 0, (v3 = *(v2 + 15)) != 0))
        {
          CFRelease(v3);
          *(v2 + 15) = 0;
        }
      }

      v4 = *(v2 + 3);
      if (v4)
      {
        CFRelease(v4);
        *(v2 + 3) = 0;
      }

      CMPhotoVideoQualityControllerDispose(*(v2 + 22));
      v5 = *(v2 + 21);
      if (v5)
      {
        CFRelease(v5);
      }

      free(v2);
    }
  }
}

uint64_t VTCompressionPluginClass_encode(uint64_t a1, CVBufferRef buffer, uint64_t a3, _OWORD *a4, uint64_t a5, uint64_t a6, void *a7)
{
  v9 = buffer;
  v11 = *(a1 + 152);
  v35 = 0;
  v12 = *(v11 + 8);
  v13 = *(v11 + 16);
  v34 = 0;
  if (*(a5 + 16) != v12 || *(a5 + 24) != v13)
  {
    v26 = CVBufferCopyAttachments(buffer, kCVAttachmentMode_ShouldPropagate);
    v24 = VTCompressionPluginClass_prepare();
    if (v26)
    {
      CFRelease(v26);
    }

    if (v24)
    {
      v16 = 0;
      Mutable = 0;
      goto LABEL_32;
    }
  }

  Mutable = CFDictionaryCreateMutable(*a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    v16 = 0;
    goto LABEL_43;
  }

  v16 = CFDictionaryCreateMutable(*a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v16)
  {
LABEL_43:
    v24 = 4294950305;
    goto LABEL_32;
  }

  v17 = *(a5 + 16);
  *presentationTimeStamp = *a5;
  *&presentationTimeStamp[16] = v17;
  v18 = a4[1];
  *duration = *a4;
  *&duration[16] = v18;
  v19 = _needsPixelBufferCopy(v9, v11, presentationTimeStamp, duration, 0, 0, &v34 + 1, &v34, 0, 0);
  if (v19)
  {
LABEL_41:
    v24 = v19;
    goto LABEL_32;
  }

  if (*(a5 + 16) != vcvtad_u64_f64(CMPhotoGetPixelBufferSize(v9)) || *(a5 + 24) != vcvtad_u64_f64(v20))
  {
    if (*MEMORY[0x1E695FF58] == 1)
    {
      kdebug_trace();
    }

    v27 = a4[1];
    *presentationTimeStamp = *a4;
    *&presentationTimeStamp[16] = v27;
    v28 = *(a5 + 16);
    *duration = *a5;
    *&duration[16] = v28;
    v24 = _performTileCopy(a1, v9, v12, v13, presentationTimeStamp, duration, HIBYTE(v34), v34, &v35);
    v22 = a7;
    if (*MEMORY[0x1E695FF58] == 1)
    {
      kdebug_trace();
    }

    if (v24)
    {
      goto LABEL_32;
    }

    v9 = v35;
    if (v35)
    {
      v19 = CMPhotoCFDictionarySetInt(Mutable, @"StillOffsetW", 0);
      if (v19)
      {
        goto LABEL_41;
      }

      v19 = CMPhotoCFDictionarySetInt(Mutable, @"StillOffsetH", 0);
      if (v19)
      {
        goto LABEL_41;
      }

      goto LABEL_13;
    }

    goto LABEL_43;
  }

  v21 = *(a5 + 8);
  v19 = CMPhotoCFDictionarySetInt(Mutable, @"StillOffsetW", *a5);
  if (v19)
  {
    goto LABEL_41;
  }

  v19 = CMPhotoCFDictionarySetInt(Mutable, @"StillOffsetH", v21);
  v22 = a7;
  if (v19)
  {
    goto LABEL_41;
  }

LABEL_13:
  v19 = CMPhotoVideoQualityControllerAnalyzeTile(*(v11 + 176));
  if (v19)
  {
    goto LABEL_41;
  }

  v19 = CMPhotoVideoQualityControllerSetTileProperties(*(v11 + 176));
  if (v19)
  {
    goto LABEL_41;
  }

  if (CFDictionaryGetCount(v16) >= 1)
  {
    v19 = VTSessionSetProperties(*(v11 + 24), v16);
    if (v19)
    {
      goto LABEL_41;
    }
  }

  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  memset(&v31, 0, sizeof(v31));
  CMTimeMake(&v31, 1, 24);
  v23 = *(v11 + 24);
  *presentationTimeStamp = *(v11 + 136);
  *&presentationTimeStamp[16] = *(v11 + 152);
  *duration = v31;
  v24 = VTCompressionSessionEncodeFrame(v23, v9, presentationTimeStamp, duration, Mutable, v22, 0);
  if (!v24)
  {
    *duration = *(v11 + 136);
    *&duration[16] = *(v11 + 152);
    rhs = v31;
    CMTimeAdd(presentationTimeStamp, duration, &rhs);
    *(v11 + 136) = *presentationTimeStamp;
    *(v11 + 152) = *&presentationTimeStamp[16];
    goto LABEL_21;
  }

LABEL_32:
  *v11 = 1;
LABEL_21:
  if (v35)
  {
    CFRelease(v35);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  return v24;
}

void VTTileCompressionPluginClass_dispose(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 152);
    if (v2)
    {
      if (*(v2 + 3))
      {
        VTTileCompressionPluginClass_completeEncodes(a1);
        if (v2[41])
        {
          VTSessionSetProperty(*(v2 + 3), *MEMORY[0x1E6983650], *MEMORY[0x1E695E4D0]);
          CMPhotoCodecSessionPoolRecycleSession(*(a1 + 24), *(v2 + 3), *v2);
        }

        else
        {
          VTTileCompressionSessionInvalidate();
        }
      }

      v3 = *(v2 + 15);
      if (v3)
      {
        if (!v2[128] || (CVPixelBufferUnlockBaseAddress(v3, 1uLL), v2[128] = 0, (v3 = *(v2 + 15)) != 0))
        {
          CFRelease(v3);
          *(v2 + 15) = 0;
        }
      }

      v4 = *(v2 + 3);
      if (v4)
      {
        CFRelease(v4);
        *(v2 + 3) = 0;
      }

      CMPhotoVideoQualityControllerDispose(*(v2 + 22));
      v5 = *(v2 + 21);
      if (v5)
      {
        CFRelease(v5);
      }

      free(v2);
    }
  }
}

uint64_t VTTileCompressionPluginClass_encode(uint64_t a1, CVBufferRef buffer, uint64_t a3, __int128 *a4, __int128 *a5, uint64_t a6)
{
  v9 = buffer;
  v11 = *(a1 + 152);
  v12 = *(v11 + 8);
  v13 = *(v11 + 16);
  v32[1] = 0;
  v33 = 0;
  v32[0] = 0;
  v31 = 0;
  v30 = 0;
  *(a1 + 160) = a3;
  if (*(a5 + 2) != v12 || *(a5 + 3) != v13)
  {
    v22 = CVBufferCopyAttachments(buffer, kCVAttachmentMode_ShouldPropagate);
    v20 = VTTileCompressionPluginClass_prepare();
    if (v22)
    {
      CFRelease(v22);
    }

    if (v20)
    {
      v16 = 0;
      Mutable = 0;
LABEL_26:
      *v11 = 1;
      goto LABEL_27;
    }
  }

  if (a6)
  {
    Value = FigCFDictionaryGetValue();
  }

  else
  {
    Value = 0;
  }

  Mutable = CFDictionaryCreateMutable(*a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    v16 = 0;
    goto LABEL_48;
  }

  v16 = CFDictionaryCreateMutable(*a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v16)
  {
LABEL_48:
    v20 = 4294950305;
    goto LABEL_26;
  }

  v17 = a5[1];
  v28 = *a5;
  v29 = v17;
  v18 = a4[1];
  v26 = *a4;
  v27 = v18;
  v19 = _needsPixelBufferCopy(v9, v11, &v28, &v26, 1, v32, &v30 + 1, &v30, &v31 + 1, &v31);
  if (v19)
  {
    goto LABEL_46;
  }

  if (!HIBYTE(v31))
  {
    if (!v31)
    {
      goto LABEL_14;
    }

LABEL_39:
    if (*MEMORY[0x1E695FF58] == 1)
    {
      kdebug_trace();
    }

    v23 = a4[1];
    v28 = *a4;
    v29 = v23;
    v24 = a5[1];
    v26 = *a5;
    v27 = v24;
    v20 = _performTileCopy(a1, v9, v12, v13, &v28, &v26, HIBYTE(v30), v30, &v33);
    if (*MEMORY[0x1E695FF58] == 1)
    {
      kdebug_trace();
    }

    if (v20)
    {
      goto LABEL_26;
    }

    v9 = v33;
    if (v33)
    {
LABEL_14:
      CMPhotoVideoQualityControllerAnalyzeTile(*(v11 + 176));
      v19 = CMPhotoVideoQualityControllerSetTileProperties(*(v11 + 176));
      if (!v19)
      {
        if (CFDictionaryGetCount(v16) < 1 || (v19 = VTSessionSetProperties(*(v11 + 24), v16), !v19))
        {
          if (*MEMORY[0x1E695FF58] == 1)
          {
            kdebug_trace();
          }

          CMPhotoGetPixelBufferSize(v9);
          CVPixelBufferGetPixelFormatType(v9);
          if (Value)
          {
            FigCFDictionarySetValue();
          }

          if (*MEMORY[0x1E695FF58] == 1)
          {
            kdebug_trace();
          }

          v20 = VTTileCompressionSessionEncodeTile();
          if (*MEMORY[0x1E695FF58] == 1)
          {
            kdebug_trace();
          }

          if (v20)
          {
            goto LABEL_26;
          }

          goto LABEL_27;
        }
      }

LABEL_46:
      v20 = v19;
      goto LABEL_26;
    }

    goto LABEL_48;
  }

  if (*(v11 + 32))
  {
    goto LABEL_39;
  }

  VTTileCompressionPluginClass_encode_cold_1(&v28);
  v20 = v28;
  if (v28)
  {
    goto LABEL_26;
  }

LABEL_27:
  if (v33)
  {
    CFRelease(v33);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  return v20;
}

uint64_t VTTileCompressionPluginClass_pixelTransfer(uint64_t a1, __CVBuffer *a2, _OWORD *a3, unint64_t *a4, CVPixelBufferRef *a5)
{
  v10 = *(a1 + 152);
  *v41 = 0;
  v11 = a3[1];
  v40[0] = *a3;
  v40[1] = v11;
  v12 = *(a4 + 1);
  v39[0] = *a4;
  v39[1] = v12;
  v13 = _needsPixelBufferCopy(a2, v10, v40, v39, 1, 0, 0, 0, &v41[1], v41);
  if (v13)
  {
    v15 = v13;
    if (!v10)
    {
      return v15;
    }

    goto LABEL_29;
  }

  if (!(v41[1] | v41[0]))
  {
    return 0;
  }

  v14 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  v15 = 4294950306;
  if (a2 && a5)
  {
    v37 = v10;
    v16 = *a4;
    v17 = a4[1];
    v18 = a4[2];
    v19 = a4[3];
    v38 = v18;
    v22 = a3 + 1;
    v21 = *(a3 + 2);
    v20 = *(v22 + 1);
    v23 = *(a1 + 152);
    PixelFormatType = CVPixelBufferGetPixelFormatType(a2);
    v25 = *(v23 + 96) + v21;
    v26 = *(v23 + 104) + v20;
    PixelBuffer = CMPhotoSurfacePoolCreatePixelBuffer(*(a1 + 8), PixelFormatType, v25, v26, 1, 0, 0, 1, *(v23 + 80), 0, a5);
    if (PixelBuffer)
    {
      v15 = PixelBuffer;
    }

    else
    {
      v36 = v26;
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (Mutable)
      {
        v29 = Mutable;
        v42.origin.x = v16;
        v42.origin.y = v17;
        v30 = v19;
        v31 = v19;
        v42.size.width = v38;
        v42.size.height = v19;
        DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v42);
        if (DictionaryRepresentation)
        {
          CFDictionarySetValue(v29, @"SourceCropRectDictionary", DictionaryRepresentation);
        }

        v43.origin.x = 0.0;
        v43.origin.y = 0.0;
        v43.size.width = v38;
        v43.size.height = v31;
        v33 = CGRectCreateDictionaryRepresentation(v43);
        if (v33)
        {
          CFDictionarySetValue(v29, @"DestinationCropRectDictionary", v33);
        }

        v34 = CMPhotoScaleAndRotateSessionTransformImage(*(a1 + 16), a2, v29, a5);
        if (v34)
        {
          v15 = v34;
        }

        else
        {
          if (v25 != v38 || v36 != v30)
          {
            v15 = VTFillPixelBufferBorderWithBlack();
            v14 = MEMORY[0x1E695FF58];
            if (!v15)
            {
              *(v23 + 40) = 1;
            }

            goto LABEL_21;
          }

          v15 = 0;
        }

        v14 = MEMORY[0x1E695FF58];
LABEL_21:
        CFRelease(v29);
        if (v33)
        {
          CFRelease(v33);
        }

        if (DictionaryRepresentation)
        {
          CFRelease(DictionaryRepresentation);
        }

        v10 = v37;
        goto LABEL_26;
      }

      v15 = 4294950305;
    }

    v10 = v37;
    v14 = MEMORY[0x1E695FF58];
  }

LABEL_26:
  if (*v14 == 1)
  {
    kdebug_trace();
  }

  if (v10)
  {
LABEL_29:
    if (v15)
    {
      *v10 = 1;
    }
  }

  return v15;
}

uint64_t _getAccelerationMode(int a1)
{
  CMPhotoCFDictionaryGetBooleanIfPresent();
  CMPhotoCFDictionaryGetBooleanIfPresent();
  return CMPhotoGetEncodeAccelerationModeOverride(a1 == 1635135537);
}

uint64_t VTCompressionPluginClass_VideoToolbox_callback(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  if ((a4 & 2) != 0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    a3 = 4294950192;
  }

  else if (!a3)
  {
    return (*(a1 + 136))(a1, a3, a5, *(a1 + 144), a2);
  }

  **(a1 + 152) = 1;
  return (*(a1 + 136))(a1, a3, a5, *(a1 + 144), a2);
}

uint64_t VTTileCompressionPluginClass_VideoToolbox_callback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  if ((a6 & 2) != 0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    a5 = 4294950192;
  }

  else if (!a5)
  {
    return (*(a1 + 136))(a1, a5, a7, *(a1 + 144), a2);
  }

  **(a1 + 152) = 1;
  return (*(a1 + 136))(a1, a5, a7, *(a1 + 144), a2);
}

void _parseFile(const __CFData *a1, const __CFDictionary *a2, DicomDecoderStruct *a3)
{
  BytePtr = CFDataGetBytePtr(a1);
  Length = CFDataGetLength(a1);
  std::allocate_shared[abi:ne200100]<imemstream,std::allocator<imemstream>,std::span<char,18446744073709551615ul> &,0>();
}

void sub_1A5966CE8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, std::__shared_weak_count *a42, uint64_t a43, std::__shared_weak_count *a44)
{
  if (v45)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v45);
  }

  *(v46 - 160) = &a12;
  std::vector<std::shared_ptr<vega::dicom::DataSet>>::__destroy_vector::operator()[abi:ne200100]((v46 - 160));
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (a42)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a42);
  }

  if (v44)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v44);
  }

  if (a44)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a44);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1A59666C4);
}

uint64_t DicomCopyColorSpaceAndICCProfile(uint64_t a1, uint64_t a2, uint64_t a3, CGColorSpace **a4, CFDataRef *a5)
{
  v5 = *(a1 + 144);
  v7[0] = *(a1 + 136);
  v7[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  _createColorSpaceFromImageDetails(v7, 0, a4, a5);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return 0;
}

void sub_1A59673EC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void _createColorSpaceFromImageDetails(void *a1, int a2, CGColorSpace **a3, CFDataRef *a4)
{
  v8 = *a1;
  v9 = *(*a1 + 256);
  if (!v9)
  {
    v12 = 0;
    goto LABEL_59;
  }

  v10 = *(v9 + 8);
  if (*(v10 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v51, *v10, *(v10 + 1));
  }

  else
  {
    v11 = *v10;
    v51.__r_.__value_.__r.__words[2] = *(v10 + 2);
    *&v51.__r_.__value_.__l.__data_ = v11;
  }

  size = HIBYTE(v51.__r_.__value_.__r.__words[2]);
  v14 = &v51;
  if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v51.__r_.__value_.__l.__size_;
    v14 = v51.__r_.__value_.__r.__words[0];
  }

  v15 = 4;
  if (size < 4)
  {
    v15 = size;
  }

  if (size)
  {
    v16 = (v14 + v15);
    v17 = v14;
    v18 = v16;
    do
    {
      if (v17->__r_.__value_.__s.__data_[0] == 83)
      {
        v19 = 1u;
        while (v19 != 4)
        {
          if ((v17 + v19) == v16)
          {
            goto LABEL_21;
          }

          v20 = v17->__r_.__value_.__s.__data_[v19];
          v21 = aSrgb[v19++];
          if (v20 != v21)
          {
            goto LABEL_13;
          }
        }

        v18 = v17;
      }

LABEL_13:
      v17 = (v17 + 1);
    }

    while (v17 != v16);
LABEL_21:
    if (v18 == v16 || v18 != v14)
    {
      v23 = 8;
      if (size < 8)
      {
        v23 = size;
      }

      v24 = (v14 + v23);
      v25 = v14;
      v26 = v24;
      do
      {
        if (v25->__r_.__value_.__s.__data_[0] == 65)
        {
          v27 = 1u;
          while (v27 != 8)
          {
            if ((v25 + v27) == v24)
            {
              goto LABEL_36;
            }

            v28 = v25->__r_.__value_.__s.__data_[v27];
            v29 = aAdobergb[v27++];
            if (v28 != v29)
            {
              goto LABEL_28;
            }
          }

          v26 = v25;
        }

LABEL_28:
        v25 = (v25 + 1);
      }

      while (v25 != v24);
LABEL_36:
      if (v26 == v24 || v26 != v14)
      {
        v30 = 7;
        if (size < 7)
        {
          v30 = size;
        }

        v31 = (v14 + v30);
        v32 = v14;
        v33 = (v14 + v30);
        do
        {
          if (v32->__r_.__value_.__s.__data_[0] == 82)
          {
            v34 = 1u;
            while (v34 != 7)
            {
              if ((v32 + v34) == v31)
              {
                goto LABEL_52;
              }

              v35 = v32->__r_.__value_.__s.__data_[v34];
              v36 = aRommrgb[v34++];
              if (v35 != v36)
              {
                goto LABEL_43;
              }
            }

            v33 = v32;
          }

LABEL_43:
          v32 = (v32 + 1);
        }

        while (v32 != v31);
LABEL_52:
        v12 = 0;
        if (v33 == v31 || v33 != v14)
        {
          goto LABEL_56;
        }

        v22 = MEMORY[0x1E695F1B8];
      }

      else
      {
        v22 = MEMORY[0x1E695F0A0];
      }
    }

    else
    {
      v22 = MEMORY[0x1E695F1C0];
    }

    v12 = CGColorSpaceCreateWithName(*v22);
  }

  else
  {
    v12 = 0;
  }

LABEL_56:
  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v51.__r_.__value_.__l.__data_);
  }

  v8 = *a1;
LABEL_59:
  v37 = *(v8 + 240);
  if (v37)
  {
    v38 = *(v8 + 248);
    if (v38)
    {
      atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v37 + 16))(&v51);
    v39 = vega::dicom::RawValue::data(v51.__r_.__value_.__l.__data_);
    v40 = vega::dicom::RawValue::size(v51.__r_.__value_.__l.__data_);
    if (v40)
    {
      v41 = CFDataCreate(0, v39, v40);
      v42 = v41;
      if (!v12)
      {
        v12 = CGColorSpaceCreateWithICCData(v41);
      }
    }

    else
    {
      v42 = 0;
    }

    if (v51.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v51.__r_.__value_.__l.__size_);
    }

    if (v38)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v38);
    }
  }

  else
  {
    v42 = 0;
  }

  if (!a3)
  {
    v44 = 0;
    if (!a4)
    {
      goto LABEL_100;
    }

    goto LABEL_91;
  }

  if (a2)
  {
    v43 = 0;
  }

  else
  {
    v43 = v12 == 0;
  }

  v44 = v43;
  if (v43)
  {
    LODWORD(v51.__r_.__value_.__l.__data_) = 0;
    v45 = *a1;
    v46 = a1[1];
    v50[0] = v45;
    v50[1] = v46;
    if (v46)
    {
      atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    _getPhotometricInterpretationFromImageDetails(v50, &v51);
    if (v46)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v46);
    }

    if ((LODWORD(v51.__r_.__value_.__l.__data_) - 1) >= 2)
    {
      v47 = MEMORY[0x1E695F1C0];
    }

    else
    {
      v47 = MEMORY[0x1E695F128];
    }

    v12 = CGColorSpaceCreateWithName(*v47);
  }

  *a3 = v12;
  v12 = 0;
  if (a4)
  {
LABEL_91:
    if (v42)
    {
      v48 = 1;
    }

    else
    {
      v48 = v12 == 0;
    }

    if (v48)
    {
      v49 = 1;
    }

    else
    {
      v49 = v44;
    }

    if ((v49 & 1) == 0)
    {
      v42 = CGColorSpaceCopyICCData(v12);
    }

    *a4 = v42;
    v42 = 0;
  }

LABEL_100:
  if (v12)
  {
    CFRelease(v12);
  }

  if (v42)
  {
    CFRelease(v42);
  }
}

void sub_1A5967800(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DicomCopyImageProperties(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v33 = *MEMORY[0x1E69E9840];
  cf = 0;
  theDict = 0;
  MetadataFromData = 4294947636;
  if (a1 && a4)
  {
    context = objc_autoreleasePoolPush();
    v7 = vega::dicom::File::data_set(*(a1 + 16));
    v8 = *(v7 + 8);
    v28 = *v7;
    v29 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v21 = AppleDicomGetDICOMPropertiesFromDataSet(&v28);
    v22 = AppleDicomGetImagePropertiesFromDicomProperties(v21);
    v19 = a4;
    AppleDicomGetMetadataPayloadsFromDataSet(&v28);
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    obj = v25 = 0u;
    v9 = [obj countByEnumeratingWithState:&v24 objects:v32 count:16];
    if (v9)
    {
      v10 = *v25;
LABEL_7:
      v11 = 0;
      while (1)
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v24 + 1) + 8 * v11);
        v13 = [v12 objectForKeyedSubscript:@"URI"];
        v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"http://ns.adobe.com/xap/1.0/"];
        v15 = [v13 isEqual:v14];

        if (v15)
        {
          break;
        }

        if (v9 == ++v11)
        {
          v9 = [obj countByEnumeratingWithState:&v24 objects:v32 count:16];
          if (v9)
          {
            goto LABEL_7;
          }

          goto LABEL_13;
        }
      }

      v16 = [v12 objectForKeyedSubscript:@"Data"];

      if (!v16)
      {
        goto LABEL_20;
      }

      MetadataFromData = CGImageCreateMetadataFromData();
      if (!MetadataFromData)
      {
        if (CFDictionaryGetCount(theDict) < 1)
        {
          goto LABEL_20;
        }

        MetadataFromData = CMPhotoPropertyListCopyWithMutableContainers(0, v22, &cf);
        if (!MetadataFromData)
        {
          MetadataFromData = CMPhotoMergeDictionaryEntries(0, cf, theDict, 0);
          if (!MetadataFromData)
          {
            v17 = cf;

            cf = 0;
            v22 = v17;
            goto LABEL_20;
          }
        }
      }
    }

    else
    {
LABEL_13:

      v16 = 0;
LABEL_20:
      MetadataFromData = 0;
      v22 = v22;
      *v19 = v22;
    }

    if (v29)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v29);
    }

    objc_autoreleasePoolPop(context);
  }

  if (theDict)
  {
    CFRelease(theDict);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return MetadataFromData;
}

void sub_1A5967B2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24)
{
  if (a2)
  {

    if (a24)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a24);
    }

    __cxa_begin_catch(exception_object);
    fig_log_get_emitter();
    FigSignalErrorAtGM();
    __cxa_end_catch();
    JUMPOUT(0x1A5967AD4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DicomCopyCustomMetadata(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = 4294947636;
  if (a1 && a4)
  {
    context = objc_autoreleasePoolPush();
    v18 = [MEMORY[0x1E695DF70] array];
    v6 = vega::dicom::File::data_set(*(a1 + 16));
    v7 = *(v6 + 8);
    v24 = *v6;
    v25 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    AppleDicomGetMetadataPayloadsFromDataSet(&v24);
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    obj = v21 = 0u;
    v8 = [obj countByEnumeratingWithState:&v20 objects:v26 count:16];
    if (v8)
    {
      v9 = *v21;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v21 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v20 + 1) + 8 * i);
          v12 = [v11 objectForKeyedSubscript:@"URI"];
          v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"http://ns.adobe.com/xap/1.0/"];
          v14 = [v12 isEqual:v13];

          if ((v14 & 1) == 0)
          {
            [v18 addObject:v11];
          }
        }

        v8 = [obj countByEnumeratingWithState:&v20 objects:v26 count:16];
      }

      while (v8);
    }

    *a4 = v18;
    if (v25)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v25);
    }

    objc_autoreleasePoolPop(context);
    return 0;
  }

  return v4;
}

void sub_1A5967E44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    fig_log_get_emitter();
    FigSignalErrorAtGM();
    __cxa_end_catch();
    JUMPOUT(0x1A5967E04);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DicomGetImageBitDepthForIndex(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  ChannelCountAndBitDepthForImage = 4294947636;
  if (a1 && a4)
  {
    v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:4];
    if (v7)
    {
      v8 = v7;
      v16 = 0;
      v17 = 0;
      v9 = *(a1 + 136);
      v10 = *(a1 + 144);
      v14 = v9;
      v15 = v10;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      ChannelCountAndBitDepthForImage = _getChannelCountAndBitDepthForImage(&v14, &v17, &v16);
      if (v10)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v10);
      }

      if (!ChannelCountAndBitDepthForImage)
      {
        if (v17)
        {
          for (i = 0; i < v17; ++i)
          {
            v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:{v16, v14, v15}];
            [v8 addObject:v12];
          }
        }

        ChannelCountAndBitDepthForImage = 0;
        *a4 = v8;
      }
    }

    else
    {
      return 4294947635;
    }
  }

  return ChannelCountAndBitDepthForImage;
}

void sub_1A5968044(void *a1)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1A5968014);
}

uint64_t _getChannelCountAndBitDepthForImage(uint64_t *a1, uint64_t *a2, void *a3)
{
  v3 = *a1;
  if (!*a1)
  {
    return 4294947636;
  }

  v7 = **(*(v3 + 128) + 8);
  v8 = **(*(v3 + 176) + 8);
  v9 = *(v3 + 280);
  v12[0] = *(v3 + 272);
  v12[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  PaletteSize = _getPaletteSize(v12);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (PaletteSize >= 1)
  {
    v8 = *(**(*a1 + 272) + 8);
    v7 = 3;
  }

  if (a2)
  {
    *a2 = v7;
  }

  result = 0;
  if (a3)
  {
    *a3 = v8;
  }

  return result;
}

void sub_1A596815C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _getPhotometricInterpretationFromImageDetails(uint64_t a1, int *a2)
{
  v2 = *(*a1 + 144);
  if (!v2)
  {
    return 4294947634;
  }

  v4 = v2 + 8;
  v3 = *(v2 + 8);
  if (*(v4 + 8) == v3)
  {
    return 4294947634;
  }

  if (*(v3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *v3, *(v3 + 1));
  }

  else
  {
    v6 = *v3;
    __p.__r_.__value_.__r.__words[2] = *(v3 + 2);
    *&__p.__r_.__value_.__l.__data_ = v6;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{p_p, *&__p.__r_.__value_.__l.__data_, __p.__r_.__value_.__r.__words[2]}];
  v9 = v8;
  v10 = 4294947636;
  v11 = v8;
  if (a2 && v8)
  {
    v11 = [v8 unpaddedString];

    if ([v11 isEqual:@"MONOCHROME1"])
    {
      v12 = 1;
LABEL_38:
      v10 = 0;
      *a2 = v12;
      goto LABEL_39;
    }

    if ([v11 isEqual:@"MONOCHROME2"])
    {
      v12 = 2;
      goto LABEL_38;
    }

    if ([v11 isEqual:@"PALETTE COLOR"])
    {
      v12 = 3;
      goto LABEL_38;
    }

    if ([v11 isEqual:@"RGB"])
    {
      v12 = 4;
      goto LABEL_38;
    }

    if ([v11 isEqual:@"HSV"])
    {
      v12 = 5;
      goto LABEL_38;
    }

    if ([v11 isEqual:@"ARGB"])
    {
      v12 = 6;
      goto LABEL_38;
    }

    if ([v11 isEqual:@"CMYK"])
    {
      v12 = 7;
      goto LABEL_38;
    }

    if ([v11 isEqual:@"YBR_FULL_422"])
    {
      v12 = 9;
      goto LABEL_38;
    }

    if ([v11 isEqual:@"YBR_FULL"])
    {
      v12 = 8;
      goto LABEL_38;
    }

    if ([v11 isEqual:@"YBR_PARTIAL_422"])
    {
      v12 = 10;
      goto LABEL_38;
    }

    if ([v11 isEqual:@"YBR_PARTIAL_420"])
    {
      v12 = 11;
      goto LABEL_38;
    }

    if ([v11 isEqual:@"YBR_ICT"])
    {
      v12 = 12;
      goto LABEL_38;
    }

    if ([v11 isEqual:@"YBR_RCT"])
    {
      v12 = 13;
      goto LABEL_38;
    }

    v10 = 4294947634;
  }

LABEL_39:

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v10;
}

void sub_1A5968408(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _getSubsamplingFromPhotometricInterpretation(int a1, _DWORD *a2)
{
  v2 = a1 - 1;
  if ((a1 - 1) > 0xC)
  {
    return 4294947636;
  }

  result = 0;
  *a2 = dword_1A5AB0790[v2];
  return result;
}

uint64_t _getCodecFromTransferSyntaxString(NSString *a1, unsigned int *a2)
{
  v3 = a1;
  v4 = 4294947636;
  if (v3 && a2)
  {
    v5 = [&unk_1F194A498 objectForKeyedSubscript:v3];
    v6 = v5;
    if (v5)
    {
      *a2 = [v5 unsignedIntValue];

      v4 = 0;
    }

    else
    {
      fig_log_get_emitter();
      v4 = FigSignalErrorAtGM();
    }
  }

  return v4;
}

void vega::dicom::TransferSyntax::~TransferSyntax(void **this)
{
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

uint64_t DicomDecoderCopyUnpackedImage(uint64_t a1, unint64_t a2, CFDataRef *a3)
{
  if (!a1)
  {
    return 4294947636;
  }

  if (!a3)
  {
    return 4294947635;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    return 4294947636;
  }

  v5 = *(a1 + 168);
  v6 = v5 ? **(v5 + 8) : 1;
  if (v6 <= a2)
  {
    return 4294947636;
  }

  v7 = *(a1 + 136);
  if ((*(v7 + 88) & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  v8 = (*(v7 + 64) + 24 * a2);
  v13 = 0;
  v14 = 0;
  __p = 0;
  std::vector<vega::Byte>::__init_with_size[abi:ne200100]<vega::Byte*,vega::Byte*>(&__p, *v8, v8[1], v8[1] - *v8);
  v9 = CFDataCreate(*(a1 + 8), __p, v13 - __p);
  if (v9)
  {
    v10 = 0;
    *a3 = v9;
  }

  else
  {
    v10 = 4294947635;
  }

  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }

  return v10;
}

void sub_1A5968664(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1A5968630);
}

uint64_t DicomDecodeImageForIndex(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, CVBufferRef *a6)
{
  v96 = *MEMORY[0x1E69E9840];
  v82 = 0;
  buffer = 0;
  value = 0;
  cf = 0;
  v78 = 0;
  v77 = 0;
  OutputBuffer = 4294947636;
  if (!a1)
  {
    goto LABEL_118;
  }

  if (!a2)
  {
    goto LABEL_118;
  }

  OutputBuffer = DicomCopyCodecForIndex(a1, a2, a3, &v82, 0);
  if (OutputBuffer)
  {
    goto LABEL_118;
  }

  OutputBuffer = CMPhotoDecompressionSessionCopySurfacePool(a2, &cf);
  if (OutputBuffer)
  {
    goto LABEL_118;
  }

  FigCFDictionaryGetBooleanIfPresent();
  FigCFDictionaryGetIntIfPresent();
  v12 = cf;
  v13 = *(a1 + 8);
  v14 = *(a1 + 144);
  v76[0] = *(a1 + 136);
  v76[1] = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  OutputBuffer = _createOutputBuffer(v12, v13, v76, v78, 0, &buffer);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  if (OutputBuffer)
  {
    goto LABEL_118;
  }

  DicomCopyColorSpaceAndICCProfile(a1, v15, v16, &value, 0);
  if (value)
  {
    CVBufferSetAttachment(buffer, *MEMORY[0x1E6965CE8], value, kCVAttachmentMode_ShouldPropagate);
  }

  v17 = *(a1 + 64) != 0;
  switch(v82)
  {
    case 0x64726C65u:
      v31 = *(a1 + 144);
      v72 = *(a1 + 136);
      if (v31)
      {
        atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      OutputBuffer = 4294947636;
      if (!v72)
      {
        goto LABEL_112;
      }

      pixelBuffer = buffer;
      if (!buffer)
      {
        goto LABEL_112;
      }

      LODWORD(v92) = 0;
      v91[0] = v72;
      v91[1] = v31;
      if (v31)
      {
        atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v73 = v31;
      OutputBuffer = _getPhotometricInterpretationFromImageDetails(v91, &v92);
      if (v31)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v31);
      }

      if (OutputBuffer)
      {
        goto LABEL_112;
      }

      if ((v92 - 1) >= 4)
      {
        fig_log_get_emitter();
        OutputBuffer = FigSignalErrorAtGM();
        goto LABEL_112;
      }

      v71 = a6;
      v94 = 0u;
      v95 = 0u;
      v92 = 0u;
      v93 = 0u;
      if ((*(v72 + 88) & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      v32 = **(*(v72 + 128) + 8);
      v33 = **(*(v72 + 96) + 8);
      v34 = **(*(v72 + 112) + 8);
      v35 = **(*(v72 + 160) + 8);
      v36 = (*(v72 + 64) + 24 * a4);
      v89 = 0;
      v90 = 0;
      v88 = 0;
      std::vector<vega::Byte>::__init_with_size[abi:ne200100]<vega::Byte*,vega::Byte*>(&v88, *v36, v36[1], v36[1] - *v36);
      v37 = v89 - v88;
      if ((v89 - v88) >> 58)
      {
        goto LABEL_128;
      }

      v38 = (v35 >> 3) * v32;
      v74 = v34 * v33;
      v39 = v38 * v74;
      if (v39 > v37 << 6)
      {
        goto LABEL_128;
      }

      v40 = v72;
      if (v37 <= 0x40)
      {
        goto LABEL_128;
      }

      v41 = 0;
      v42 = v38 * v33;
      v43 = (v88 + 4);
      v44 = *v88;
      do
      {
        v45 = *v43++;
        *(&v92 + v41) = v45;
        v41 += 4;
      }

      while (v41 != 60);
      if (v44 > 0xF || v38 != v44 || v92 != 64)
      {
LABEL_128:
        fig_log_get_emitter();
        a6 = v71;
        OutputBuffer = FigSignalErrorAtGM();
        goto LABEL_110;
      }

      std::vector<unsigned char>::vector[abi:ne200100](&v86, v39);
      if (!v44)
      {
LABEL_81:
        __p = v40;
        v85 = v31;
        if (v31)
        {
          atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        a6 = v71;
        OutputBuffer = _renderToPixelBuffer(&__p, v86, v42, 0, 1, 0, pixelBuffer);
        if (v31)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v31);
        }

        goto LABEL_106;
      }

      v68 = v42;
      v46 = 0;
      while (1)
      {
        v47 = *(&v92 + v46);
        v48 = v46 + 1;
        v49 = *(&v92 + v46 + 1);
        v50 = v89 - v88;
        if (!v49)
        {
          v49 = v89 - v88;
        }

        if (v50 <= v47 || v49 > v50)
        {
          fig_log_get_emitter();
          a6 = v71;
          OutputBuffer = FigSignalErrorAtGM();
          goto LABEL_108;
        }

        if (v49 <= v47)
        {
          break;
        }

        if (v74 >= 1)
        {
          v51 = v86 + v46 * v74;
          v52 = v88 + v49;
          v53 = &v51[v74];
          v54 = v88 + v47;
          v55 = v74;
          while (v54 < v52)
          {
            v57 = v54 + 1;
            v56 = *v54;
            if (v56 < 0)
            {
              if (v56 == -128)
              {
                ++v54;
              }

              else
              {
                v54 += 2;
                if (v54 > v52)
                {
                  break;
                }

                v60 = (1 - v56);
                v61 = &v51[v60];
                if (&v51[v60] > v53)
                {
                  break;
                }

                memset(v51, *v57, v60);
                v51 = v61;
              }
            }

            else
            {
              v58 = &v57[v56 + 1] > v52 || &v51[v56 + 1] > v53;
              if (v58)
              {
                break;
              }

              v59 = (v56 + 1);
              memcpy(v51, v54 + 1, v59);
              v54 = &v57[v59];
              v51 += v59;
            }

            if (v51 < v53 && v54 + 1 < v52)
            {
              v58 = v55-- <= 1;
              if (!v58)
              {
                continue;
              }
            }

            goto LABEL_79;
          }

          OutputBuffer = 4294947634;
          v31 = v73;
          goto LABEL_94;
        }

LABEL_79:
        v46 = v48;
        v31 = v73;
        if (v48 == v38)
        {
          v40 = v72;
          v42 = v68;
          if (v44 == 1)
          {
            goto LABEL_81;
          }

          std::vector<unsigned char>::vector[abi:ne200100](&__p, v38 * v74);
          v62 = 0;
          a6 = v71;
          do
          {
            if (v74)
            {
              v63 = __p;
              v64 = v74;
              v65 = v86 + v62 * v74;
              do
              {
                v66 = *v65++;
                v63[v62] = v66;
                v63 += v38;
                --v64;
              }

              while (v64);
            }

            ++v62;
          }

          while (v62 != v38);
          v83[0] = v72;
          v83[1] = v73;
          if (v73)
          {
            atomic_fetch_add_explicit(&v73->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          OutputBuffer = _renderToPixelBuffer(v83, __p, v68, 0, 1, 1, pixelBuffer);
          if (v73)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v73);
          }

          if (__p)
          {
            v85 = __p;
            operator delete(__p);
          }

LABEL_106:
          if (!OutputBuffer)
          {
            OutputBuffer = 0;
          }

LABEL_108:
          if (v86)
          {
            v87 = v86;
            operator delete(v86);
          }

LABEL_110:
          if (v88)
          {
            v89 = v88;
            operator delete(v88);
          }

LABEL_112:
          if (v31)
          {
            v19 = v31;
LABEL_114:
            std::__shared_weak_count::__release_shared[abi:ne200100](v19);
          }

LABEL_115:
          if (!OutputBuffer)
          {
            OutputBuffer = 0;
            if (a6)
            {
              *a6 = buffer;
              buffer = 0;
            }
          }

          goto LABEL_118;
        }
      }

      fig_log_get_emitter();
      OutputBuffer = FigSignalErrorAtGM();
LABEL_94:
      a6 = v71;
      goto LABEL_108;
    case 0x756E636Du:
      v20 = *(a1 + 136);
      v21 = *(a1 + 144);
      if (v21)
      {
        atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      OutputBuffer = 4294947636;
      if (v20)
      {
        v22 = buffer;
        if (buffer)
        {
          v70 = a6;
          if ((*(v20 + 88) & 1) == 0)
          {
            std::__throw_bad_optional_access[abi:ne200100]();
          }

          v23 = **(*(v20 + 128) + 8);
          v24 = **(*(v20 + 96) + 8);
          v25 = **(*(v20 + 112) + 8);
          v26 = **(*(v20 + 160) + 8);
          v27 = *(v20 + 64);
          *&v93 = 0;
          v92 = 0uLL;
          std::vector<vega::Byte>::__init_with_size[abi:ne200100]<vega::Byte*,vega::Byte*>(&v92, *v27, v27[1], v27[1] - *v27);
          LODWORD(__p) = 0;
          v88 = v20;
          v89 = v21;
          if (v21)
          {
            atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          OutputBuffer = _getPhotometricInterpretationFromImageDetails(&v88, &__p);
          if (v21)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v21);
          }

          if (!OutputBuffer)
          {
            if ((__p - 1) >= 4 || (v28 = (v24 * v23) * (v26 >> 3), v29 = v28 * v25, *(&v92 + 1) - v92 < v29 + v29 * a4))
            {
              fig_log_get_emitter();
              OutputBuffer = FigSignalErrorAtGM();
            }

            else
            {
              v30 = v92 + v29 * a4;
              v86 = v20;
              v87 = v21;
              if (v21)
              {
                atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              OutputBuffer = _renderToPixelBuffer(&v86, v30, v28, 0, 1, v17, v22);
              if (v21)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v21);
              }
            }
          }

          if (v92)
          {
            *(&v92 + 1) = v92;
            operator delete(v92);
          }

          a6 = v70;
        }
      }

      if (v21)
      {
        v19 = v21;
        goto LABEL_114;
      }

      goto LABEL_115;
    case 0x6A706567u:
      v18 = *(a1 + 144);
      v75[0] = *(a1 + 136);
      v75[1] = v18;
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      OutputBuffer = _decodeJPEG(a2, v75, a4, v77, v78, a5, buffer);
      if (v18)
      {
        v19 = v18;
        goto LABEL_114;
      }

      goto LABEL_115;
  }

  OutputBuffer = 4294947632;
LABEL_118:
  if (value)
  {
    CFRelease(value);
  }

  if (buffer)
  {
    CFRelease(buffer);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return OutputBuffer;
}

void sub_1A59690A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _createOutputBuffer(const void *a1, uint64_t a2, uint64_t *a3, int a4, unsigned int a5, CFTypeRef *a6)
{
  v9 = a1;
  cf[0] = 0;
  v10 = *a3;
  v11 = **(*(*a3 + 96) + 8);
  v29 = **(*(*a3 + 112) + 8);
  v12 = **(*(*a3 + 160) + 8);
  if (**(*(*a3 + 128) + 8) == 3)
  {
    if (v12 == 8)
    {
      v13 = 1111970369;
      goto LABEL_26;
    }

    if (v12 == 16)
    {
      v13 = 1815491698;
      goto LABEL_26;
    }

    fig_log_get_emitter();
  }

  else
  {
    HIDWORD(v27) = **(v10[22] + 8);
    v16 = v10[35];
    v33 = v10[34];
    v34 = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    PaletteSize = _getPaletteSize(&v33);
    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }

    if (PaletteSize >= 1)
    {
      v18 = *a3;
      v19 = a3[1];
      v30 = v18;
      v31 = v19;
      v32 = 0;
      v9 = a1;
      if (v19)
      {
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      ChannelCountAndBitDepthForImage = _getChannelCountAndBitDepthForImage(&v30, 0, &v32);
      if (v19)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v19);
      }

      if (v32 == 8)
      {
        v13 = 1111970369;
      }

      else
      {
        v13 = 1815491698;
      }

      if (ChannelCountAndBitDepthForImage)
      {
        return ChannelCountAndBitDepthForImage;
      }

      goto LABEL_26;
    }

    v13 = 1278226488;
    v9 = a1;
    if (v12 == 8)
    {
LABEL_26:
      if (a5)
      {
        v22 = a5;
      }

      else
      {
        v22 = v13;
      }

      if (a4)
      {
        CMPhotoCreateCVPixelBufferNotBackedByIOSurface(a2, v22, v11, v29, 0, 0, 64, 0, cf, v25, v26, v27, a2, v29, v30, v31, v32, v33, v34, cf[0], cf[1], cf[2], cf[3], cf[4], cf[5]);
      }

      else
      {
        PixelBuffer = CMPhotoSurfacePoolCreatePixelBuffer(v9, v22, v11, v29, 1, 0, 0, 0, 64, 0, cf);
      }

      ChannelCountAndBitDepthForImage = PixelBuffer;
      if (PixelBuffer)
      {
        if (cf[0])
        {
          CFRelease(cf[0]);
        }
      }

      else
      {
        *a6 = cf[0];
      }

      return ChannelCountAndBitDepthForImage;
    }

    if (v12 == 16)
    {
      v21 = 1278226738;
      if (HIDWORD(v27) != 12)
      {
        v21 = 1278226742;
      }

      v13 = 1278226736;
      if (HIDWORD(v27) != 10)
      {
        v13 = v21;
      }

      goto LABEL_26;
    }

    fig_log_get_emitter();
  }

  return FigSignalErrorAtGM();
}

void sub_1A59694BC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _decodeJPEG(const void *a1, void *a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, __CVBuffer *a7)
{
  v54 = 0;
  v55 = 0;
  v52 = 0;
  v53 = 0;
  v51 = 0;
  v7 = *a2;
  if ((*(*a2 + 88) & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  v11 = **(v7[12] + 8);
  v12 = **(v7[14] + 8);
  v13 = **(v7[20] + 8);
  v39 = **(v7[22] + 8);
  v43 = **(v7[16] + 8);
  v14 = (v7[8] + 24 * a3);
  v49 = 0;
  v50 = 0;
  v48 = 0;
  std::vector<vega::Byte>::__init_with_size[abi:ne200100]<vega::Byte*,vega::Byte*>(&v48, *v14, v14[1], v14[1] - *v14);
  v16 = v48;
  v15 = v49;
  v17 = CFGetAllocator(a1);
  v18 = v15 - v16;
  cf = CFDataCreateWithBytesNoCopy(v17, v48, v18, *MEMORY[0x1E695E498]);
  v19 = *a2;
  v20 = a2[1];
  v47[0] = *a2;
  v47[1] = v20;
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    v19 = *a2;
  }

  v21 = _needsRenderPass(v47, *(v19 + 208), *(v19 + 216), 0, 0, 0, 0, 0, 0, 0);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  v22 = 4294947636;
  if (!a1)
  {
    goto LABEL_44;
  }

  if (!a7)
  {
    goto LABEL_44;
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(a7);
  v22 = CMPhotoByteStreamCreateFromSource(cf, v18, 0, 0, &v54, 0);
  if (v22)
  {
    goto LABEL_44;
  }

  v24 = CFGetAllocator(a1);
  v22 = CMPhotoUnifiedJPEGDecoderCreate(a1, v24, v11, v12, v54, 0, v18, cf, 1, &v55);
  if (v22)
  {
    goto LABEL_44;
  }

  v22 = CMPhotoDecompressionSessionCopyScaler(a1, &v52);
  if (v22)
  {
    goto LABEL_44;
  }

  v22 = CMPhotoDecompressionSessionCopySurfacePool(a1, &v53);
  if (v22)
  {
    goto LABEL_44;
  }

  if (v43 == 3)
  {
    v25 = 1111970369;
  }

  else
  {
    v25 = 1278226488;
  }

  v26 = 1278226742;
  if (v43 == 3)
  {
    v26 = 1815491698;
  }

  v27 = v13 == 8 ? v25 : v26;
  UsedBitDepthForPixelFormat = CMPhotoGetUsedBitDepthForPixelFormat(PixelFormatType);
  v29 = v13 == 8 ? a4 : 1;
  v30 = !v21 && v27 == PixelFormatType;
  v31 = v30 && UsedBitDepthForPixelFormat == v39;
  v32 = v31 ? a7 : 0;
  memset(v46, 0, sizeof(v46));
  v22 = CMPhotoUnifiedJPEGDecoderDecode(v55, v53, v52, v29, v27, a5, v46, 0, 1, a6, 0, 0, 1, v32, &v51);
  if (v22)
  {
LABEL_44:
    v33 = v51;
    if (!v51)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  v33 = v51;
  if (v32 != v51)
  {
    CVPixelBufferLockBaseAddress(v51, 1uLL);
    if (CVPixelBufferIsPlanar(v51))
    {
      BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(v51, 0);
      BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(v51, 0);
    }

    else
    {
      BaseAddressOfPlane = CVPixelBufferGetBaseAddress(v51);
      BytesPerRowOfPlane = CVPixelBufferGetBytesPerRow(v51);
    }

    v36 = *a2;
    v37 = a2[1];
    v45[0] = v36;
    v45[1] = v37;
    if (v37)
    {
      atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v22 = _renderToPixelBuffer(v45, BaseAddressOfPlane, BytesPerRowOfPlane, v43 == 3, v27 != 1111970369, 0, a7);
    if (v37)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v37);
    }

    CVPixelBufferUnlockBaseAddress(v51, 1uLL);
    goto LABEL_44;
  }

  v22 = 0;
  if (v51)
  {
LABEL_45:
    CFRelease(v33);
  }

LABEL_46:
  if (v52)
  {
    CFRelease(v52);
  }

  if (v53)
  {
    CFRelease(v53);
  }

  if (v54)
  {
    CFRelease(v54);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  CMPhotoUnifiedJPEGDecoderDestroy(v55);
  if (v48)
  {
    v49 = v48;
    operator delete(v48);
  }

  return v22;
}

void sub_1A59698AC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  v4 = *(v2 - 152);
  if (v4)
  {
    *(v2 - 144) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DicomCopyAuxiliaryImageInfoForIndex(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, _DWORD *a5, _DWORD *a6, CGImageMetadata **a7, const __CFString *a8, void *a9, const __CFDictionary **a10, _BYTE *a11, _DWORD *a12, CFTypeRef *a13)
{
  v60 = *MEMORY[0x1E69E9840];
  cf = 0;
  v57 = 0;
  if (a1)
  {
    v13 = *(a1 + 264);
    if (a3 >= (*(a1 + 272) - v13) >> 4)
    {
      fig_log_get_emitter();
      v46 = 0;
      PhotometricInterpretationFromImageDetails = FigSignalErrorAtGM();
      v47 = 0;
    }

    else
    {
      v43 = a8;
      v44 = a7;
      v17 = *(v13 + 16 * a3);
      v48 = v17;
      v18 = *(v13 + 16 * a3 + 8);
      if (*(&v17 + 1))
      {
        atomic_fetch_add_explicit((*(&v17 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      v45 = **(*(v17 + 96) + 8);
      v19 = **(*(v17 + 112) + 8);
      HIDWORD(v42) = **(*(v17 + 176) + 8);
      v20 = MEMORY[0x1E696AEC0];
      (*(**(v17 + 296) + 24))(&__p);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      v22 = [v20 stringWithCString:p_p encoding:4];
      v46 = [v22 unpaddedString];

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v47 = AppleDicomGetMetadataPayloadsFromDataSet(v48);
      v23 = **(*(v48 + 312) + 8);
      if (*(v48 + 39) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *(v48 + 16), *(v48 + 24));
      }

      else
      {
        __p = *(v48 + 16);
      }

      if (*(v48 + 63) < 0)
      {
        std::string::__init_copy_ctor_external(&v56, *(v48 + 40), *(v48 + 48));
      }

      else
      {
        v56 = *(v48 + 40);
      }

      v24 = MEMORY[0x1E696AEC0];
      v25 = vega::dicom::SOPClass::uid(&__p);
      EncodeAccelerationModeOverride = CMPhotoGetEncodeAccelerationModeOverride(v25);
      if (*(EncodeAccelerationModeOverride + 23) >= 0)
      {
        v27 = EncodeAccelerationModeOverride;
      }

      else
      {
        v27 = *EncodeAccelerationModeOverride;
      }

      v28 = [v24 stringWithCString:v27 encoding:4];
      v29 = [v28 unpaddedString];

      if (v29)
      {
        LODWORD(v42) = [&unk_1F194A300 containsObject:v29];
        v54 = v48;
        if (v18)
        {
          atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        _createColorSpaceFromImageDetails(&v54, 1, 0, &cf);
        if (v18)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v18);
          atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v53 = v48;
        PhotometricInterpretationFromImageDetails = _getPhotometricInterpretationFromImageDetails(&v53, &v57);
        if (v18)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v18);
        }

        v31 = PhotometricInterpretationFromImageDetails == 0;
      }

      else
      {
        LODWORD(v42) = 0;
        v31 = 0;
        PhotometricInterpretationFromImageDetails = 4294947634;
      }

      if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v56.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v18)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v18);
      }

      if (!v31)
      {
        goto LABEL_64;
      }

      if (a4)
      {
        *a4 = v45;
        a4[1] = v19;
      }

      if (a5)
      {
        PhotometricInterpretationFromImageDetails = _getSubsamplingFromPhotometricInterpretation(v57, a5);
        if (PhotometricInterpretationFromImageDetails)
        {
          goto LABEL_64;
        }
      }

      if (a6)
      {
        *a6 = v23;
      }

      if (v47)
      {
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v32 = v47;
        v33 = [v32 countByEnumeratingWithState:&v49 objects:v59 count:16];
        if (v33)
        {
          v34 = *v50;
          while (2)
          {
            for (i = 0; i != v33; ++i)
            {
              if (*v50 != v34)
              {
                objc_enumerationMutation(v32);
              }

              v36 = *(*(&v49 + 1) + 8 * i);
              v37 = [v36 objectForKeyedSubscript:{@"URI", v42, v43, v44}];
              v38 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"http://ns.adobe.com/xap/1.0/"];
              v39 = [v37 isEqual:v38];

              if (v39)
              {
                v40 = [v36 objectForKeyedSubscript:@"Data"];
                goto LABEL_51;
              }
            }

            v33 = [v32 countByEnumeratingWithState:&v49 objects:v59 count:16];
            if (v33)
            {
              continue;
            }

            break;
          }
        }

        v40 = 0;
LABEL_51:

        PhotometricInterpretationFromImageDetails = CMPhotoAuxiliaryImageMetadataCreateFromXMPData(0, v40, v43, v44, 0, a10);
        if (PhotometricInterpretationFromImageDetails)
        {
          v47 = v32;
          goto LABEL_64;
        }

        PhotometricInterpretationFromImageDetails = 0;
      }

      if (a9)
      {
        *a9 = v46;
      }

      if (a11)
      {
        *a11 = v42;
      }

      if (a12)
      {
        *a12 = HIDWORD(v42);
      }

      if (a13)
      {
        *a13 = cf;
LABEL_66:

        goto LABEL_67;
      }
    }

LABEL_64:
    if (cf)
    {
      CFRelease(cf);
    }

    goto LABEL_66;
  }

  v46 = 0;
  PhotometricInterpretationFromImageDetails = 4294947636;

LABEL_67:
  return PhotometricInterpretationFromImageDetails;
}

uint64_t DicomDecodeAuxiliaryImageForIndex(void *a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, __CVBuffer **a6)
{
  v40 = 0;
  v38 = 0;
  v39 = 0;
  v37 = 0;
  data_low = 4294947636;
  v36 = 0;
  if (!a1 || !a2)
  {
    goto LABEL_69;
  }

  if (a4 < 0)
  {
    DicomDecodeAuxiliaryImageForIndex_cold_2(&v34);
LABEL_62:
    data_low = LODWORD(v34.__r_.__value_.__l.__data_);
    goto LABEL_69;
  }

  if (a4 >= (a1[34] - a1[33]) >> 4)
  {
    DicomDecodeAuxiliaryImageForIndex_cold_1(&v34);
    goto LABEL_62;
  }

  v12 = CMPhotoDecompressionSessionCopySurfacePool(a2, &v37);
  if (v12)
  {
    data_low = v12;
    goto LABEL_69;
  }

  FigCFDictionaryGetBooleanIfPresent();
  v13 = *(a1[33] + 16 * a4);
  v30 = v13;
  v14 = *(a1[33] + 16 * a4 + 8);
  if (*(&v13 + 1))
  {
    atomic_fetch_add_explicit((*(&v13 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v15 = v13;
  if (*(v13 + 88) == 1 && *(v13 + 72) != *(v13 + 64))
  {
    if (*(v13 + 39) < 0)
    {
      std::string::__init_copy_ctor_external(&v34, *(v13 + 16), *(v13 + 24));
    }

    else
    {
      v34 = *(v13 + 16);
    }

    if (*(v30 + 63) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(v30 + 40), *(v30 + 48));
    }

    else
    {
      __p = *(v30 + 40);
    }

    v16 = MEMORY[0x1E696AEC0];
    v17 = vega::dicom::SOPClass::uid(&v34);
    EncodeAccelerationModeOverride = CMPhotoGetEncodeAccelerationModeOverride(v17);
    if (*(EncodeAccelerationModeOverride + 23) >= 0)
    {
      v19 = EncodeAccelerationModeOverride;
    }

    else
    {
      v19 = *EncodeAccelerationModeOverride;
    }

    v20 = [v16 stringWithCString:v19 encoding:{4, v30}];
    v21 = v20;
    if (!v20)
    {
      v28 = 4;
      data_low = 4294947634;
      goto LABEL_49;
    }

    data_low = _getCodecFromTransferSyntaxString(v20, &v40);
    if (data_low)
    {
      goto LABEL_66;
    }

    if (v40 != 1785750887)
    {
      fig_log_get_emitter();
      data_low = FigSignalErrorAtGM();
      goto LABEL_66;
    }

    if (**(v15[22] + 8) != 16 || **(v15[16] + 8) != 1)
    {
      v22 = 0;
      goto LABEL_33;
    }

    v22 = 0;
    v23 = **(v15[39] + 8);
    if (v23 <= 1278226735)
    {
      if (v23 != 825306677)
      {
        v24 = 825437747;
LABEL_31:
        if (v23 != v24)
        {
          goto LABEL_33;
        }
      }
    }

    else if ((v23 - 1278226736) > 6 || ((1 << (v23 - 48)) & 0x45) == 0)
    {
      v24 = 1932996149;
      goto LABEL_31;
    }

    v22 = **(v15[39] + 8);
LABEL_33:
    v25 = v37;
    v26 = a1[1];
    v33 = v30;
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    OutputBuffer = _createOutputBuffer(v25, v26, &v33, v36, v22, &v38);
    data_low = OutputBuffer;
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      if (!data_low)
      {
        v32 = v30;
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
LABEL_40:
        _createColorSpaceFromImageDetails(&v32, 1, &v39, 0);
        if (v14)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v14);
        }

        if (v39)
        {
          CVBufferSetAttachment(v38, *MEMORY[0x1E6965CE8], v39, kCVAttachmentMode_ShouldPropagate);
        }

        v31 = v30;
        if (v14)
        {
          atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        data_low = _decodeJPEG(a2, &v31, 0, 1u, v36, a5, v38);
        if (v14)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v14);
        }

        v28 = 4 * (data_low != 0);
LABEL_49:

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v34.__r_.__value_.__l.__data_);
        }

        if (v14)
        {
          goto LABEL_54;
        }

        goto LABEL_55;
      }
    }

    else if (!OutputBuffer)
    {
      v32 = v15;
      goto LABEL_40;
    }

LABEL_66:
    v28 = 4;
    goto LABEL_49;
  }

  v28 = 4;
  data_low = 4294947634;
  if (v14)
  {
LABEL_54:
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

LABEL_55:
  if (v28)
  {
    if (v28 != 4)
    {
      return data_low;
    }
  }

  else if (a6)
  {
    *a6 = v38;
    v38 = 0;
  }

LABEL_69:
  if (v39)
  {
    CFRelease(v39);
  }

  if (v38)
  {
    CFRelease(v38);
  }

  if (v37)
  {
    CFRelease(v37);
  }

  return data_low;
}

DicomDecoderStruct *DicomDecoderDestroy(DicomDecoderStruct *result)
{
  if (result)
  {
    DicomDecoderStruct::~DicomDecoderStruct(result);

    JUMPOUT(0x1AC552B90);
  }

  return result;
}

void _getTagValue<vega::dictionary::Columns>(vega::dicom::DataSet **a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  std::string::basic_string[abi:ne200100]<0>(&__p, "Columns");
  vega::dicom::DataSet::data_element(v4, &__p, &v9);
  if (v8 < 0)
  {
    operator delete(__p);
  }

  if (v9)
  {
    v5 = vega::dicom::DataElement::vr(v9);
    if (vega::Word::operator==(&vega::dictionary::Columns::vr, v5))
    {
      vega::dicom::DataSet::element<vega::dictionary::Columns>(*a1, &__p);
      if (__p)
      {
        vega::dicom::DataElement::get_manipulator<vega::manipulators::UnsignedShortManipulator>(*__p, a2);
        if (v7)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v7);
        }

        if (v10)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v10);
        }

        return;
      }

      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }
    }
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  *a2 = 0;
  a2[1] = 0;
}

void sub_1A596A54C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, std::__shared_weak_count *a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

void _getTagValue<vega::dictionary::Rows>(vega::dicom::DataSet **a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  std::string::basic_string[abi:ne200100]<0>(&__p, "Rows");
  vega::dicom::DataSet::data_element(v4, &__p, &v9);
  if (v8 < 0)
  {
    operator delete(__p);
  }

  if (v9)
  {
    v5 = vega::dicom::DataElement::vr(v9);
    if (vega::Word::operator==(&vega::dictionary::Rows::vr, v5))
    {
      vega::dicom::DataSet::element<vega::dictionary::Rows>(*a1, &__p);
      if (__p)
      {
        vega::dicom::DataElement::get_manipulator<vega::manipulators::UnsignedShortManipulator>(*__p, a2);
        if (v7)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v7);
        }

        if (v10)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v10);
        }

        return;
      }

      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }
    }
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  *a2 = 0;
  a2[1] = 0;
}

void sub_1A596A67C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, std::__shared_weak_count *a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

void _getTagValue<vega::dictionary::SamplesPerPixel>(vega::dicom::DataSet **a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  std::string::basic_string[abi:ne200100]<0>(&__p, "SamplesPerPixel");
  vega::dicom::DataSet::data_element(v4, &__p, &v9);
  if (v8 < 0)
  {
    operator delete(__p);
  }

  if (v9)
  {
    v5 = vega::dicom::DataElement::vr(v9);
    if (vega::Word::operator==(&vega::dictionary::SamplesPerPixel::vr, v5))
    {
      vega::dicom::DataSet::element<vega::dictionary::SamplesPerPixel>(*a1, &__p);
      if (__p)
      {
        vega::dicom::DataElement::get_manipulator<vega::manipulators::UnsignedShortManipulator>(*__p, a2);
        if (v7)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v7);
        }

        if (v10)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v10);
        }

        return;
      }

      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }
    }
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  *a2 = 0;
  a2[1] = 0;
}

void sub_1A596A7AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, std::__shared_weak_count *a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

void _getTagValue<vega::dictionary::PhotometricInterpretation>(vega::dicom::DataSet **a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  std::string::basic_string[abi:ne200100]<0>(&__p, "PhotometricInterpretation");
  vega::dicom::DataSet::data_element(v4, &__p, &v9);
  if (v8 < 0)
  {
    operator delete(__p);
  }

  if (v9)
  {
    v5 = vega::dicom::DataElement::vr(v9);
    if (vega::Word::operator==(&vega::dictionary::PhotometricInterpretation::vr, v5))
    {
      vega::dicom::DataSet::element<vega::dictionary::PhotometricInterpretation>(*a1, &__p);
      if (__p)
      {
        vega::dicom::DataElement::get_manipulator<vega::manipulators::CodeStringManipulator>(*__p, a2);
        if (v7)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v7);
        }

        if (v10)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v10);
        }

        return;
      }

      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }
    }
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  *a2 = 0;
  a2[1] = 0;
}

void sub_1A596A8DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, std::__shared_weak_count *a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

void _getTagValue<vega::dictionary::BitsAllocated>(vega::dicom::DataSet **a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  std::string::basic_string[abi:ne200100]<0>(&__p, "BitsAllocated");
  vega::dicom::DataSet::data_element(v4, &__p, &v9);
  if (v8 < 0)
  {
    operator delete(__p);
  }

  if (v9)
  {
    v5 = vega::dicom::DataElement::vr(v9);
    if (vega::Word::operator==(&vega::dictionary::BitsAllocated::vr, v5))
    {
      vega::dicom::DataSet::element<vega::dictionary::BitsAllocated>(*a1, &__p);
      if (__p)
      {
        vega::dicom::DataElement::get_manipulator<vega::manipulators::UnsignedShortManipulator>(*__p, a2);
        if (v7)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v7);
        }

        if (v10)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v10);
        }

        return;
      }

      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }
    }
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  *a2 = 0;
  a2[1] = 0;
}

void sub_1A596AA0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, std::__shared_weak_count *a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

void _getTagValue<vega::dictionary::BitsStored>(vega::dicom::DataSet **a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  std::string::basic_string[abi:ne200100]<0>(&__p, "BitsStored");
  vega::dicom::DataSet::data_element(v4, &__p, &v9);
  if (v8 < 0)
  {
    operator delete(__p);
  }

  if (v9)
  {
    v5 = vega::dicom::DataElement::vr(v9);
    if (vega::Word::operator==(&vega::dictionary::BitsStored::vr, v5))
    {
      vega::dicom::DataSet::element<vega::dictionary::BitsStored>(*a1, &__p);
      if (__p)
      {
        vega::dicom::DataElement::get_manipulator<vega::manipulators::UnsignedShortManipulator>(*__p, a2);
        if (v7)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v7);
        }

        if (v10)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v10);
        }

        return;
      }

      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }
    }
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  *a2 = 0;
  a2[1] = 0;
}

void sub_1A596AB3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, std::__shared_weak_count *a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

void _getTagValue<vega::dictionary::HighBit>(vega::dicom::DataSet **a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  std::string::basic_string[abi:ne200100]<0>(&__p, "HighBit");
  vega::dicom::DataSet::data_element(v4, &__p, &v9);
  if (v8 < 0)
  {
    operator delete(__p);
  }

  if (v9)
  {
    v5 = vega::dicom::DataElement::vr(v9);
    if (vega::Word::operator==(&vega::dictionary::HighBit::vr, v5))
    {
      vega::dicom::DataSet::element<vega::dictionary::HighBit>(*a1, &__p);
      if (__p)
      {
        vega::dicom::DataElement::get_manipulator<vega::manipulators::UnsignedShortManipulator>(*__p, a2);
        if (v7)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v7);
        }

        if (v10)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v10);
        }

        return;
      }

      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }
    }
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  *a2 = 0;
  a2[1] = 0;
}

void sub_1A596AC6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, std::__shared_weak_count *a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

void _getTagValue<vega::dictionary::PixelRepresentation>(vega::dicom::DataSet **a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  std::string::basic_string[abi:ne200100]<0>(&__p, "PixelRepresentation");
  vega::dicom::DataSet::data_element(v4, &__p, &v9);
  if (v8 < 0)
  {
    operator delete(__p);
  }

  if (v9)
  {
    v5 = vega::dicom::DataElement::vr(v9);
    if (vega::Word::operator==(&vega::dictionary::PixelRepresentation::vr, v5))
    {
      vega::dicom::DataSet::element<vega::dictionary::PixelRepresentation>(*a1, &__p);
      if (__p)
      {
        vega::dicom::DataElement::get_manipulator<vega::manipulators::UnsignedShortManipulator>(*__p, a2);
        if (v7)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v7);
        }

        if (v10)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v10);
        }

        return;
      }

      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }
    }
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  *a2 = 0;
  a2[1] = 0;
}

void sub_1A596AD9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, std::__shared_weak_count *a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

void _getTagValue<vega::dictionary::ICCProfile>(vega::dicom::DataSet **a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  std::string::basic_string[abi:ne200100]<0>(&__p, "ICCProfile");
  vega::dicom::DataSet::data_element(v4, &__p, &v9);
  if (v8 < 0)
  {
    operator delete(__p);
  }

  if (v9)
  {
    v5 = vega::dicom::DataElement::vr(v9);
    if (vega::Word::operator==(&vega::dictionary::ICCProfile::vr, v5))
    {
      vega::dicom::DataSet::element<vega::dictionary::ICCProfile>(*a1, &__p);
      if (__p)
      {
        vega::dicom::DataElement::get_manipulator<vega::manipulators::OtherByteManipulator>(*__p, a2);
        if (v7)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v7);
        }

        if (v10)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v10);
        }

        return;
      }

      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }
    }
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  *a2 = 0;
  a2[1] = 0;
}

void sub_1A596AECC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, std::__shared_weak_count *a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

void _getTagValue<vega::dictionary::ColorSpace>(vega::dicom::DataSet **a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  std::string::basic_string[abi:ne200100]<0>(&__p, "ColorSpace");
  vega::dicom::DataSet::data_element(v4, &__p, &v9);
  if (v8 < 0)
  {
    operator delete(__p);
  }

  if (v9)
  {
    v5 = vega::dicom::DataElement::vr(v9);
    if (vega::Word::operator==(&vega::dictionary::ColorSpace::vr, v5))
    {
      vega::dicom::DataSet::element<vega::dictionary::ColorSpace>(*a1, &__p);
      if (__p)
      {
        vega::dicom::DataElement::get_manipulator<vega::manipulators::CodeStringManipulator>(*__p, a2);
        if (v7)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v7);
        }

        if (v10)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v10);
        }

        return;
      }

      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }
    }
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  *a2 = 0;
  a2[1] = 0;
}

void sub_1A596AFFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, std::__shared_weak_count *a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

void _getPixelDataFragmentsFromDataSet(vega::dicom::DataSet **a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = *a1;
  std::string::basic_string[abi:ne200100]<0>(&__p, "PixelData");
  vega::dicom::DataSet::data_element(v5, &__p, &v26);
  if (SHIBYTE(v25) < 0)
  {
    operator delete(__p);
  }

  v6 = v26;
  if (!v26)
  {
    goto LABEL_18;
  }

  vega::dicom::DataElement::lazy_load(v26);
  v8 = *(v6 + 30);
  v7 = *(v6 + 31);
  if (!v7)
  {
    if (v8)
    {
      goto LABEL_8;
    }

LABEL_18:
    v9 = 1;
    goto LABEL_46;
  }

  v9 = 1;
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  if (!v8)
  {
    goto LABEL_45;
  }

LABEL_8:
  if (v10)
  {
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    __p = 0;
    v24 = 0;
    v25 = 0;
    std::vector<std::vector<vega::Byte>>::__init_with_size[abi:ne200100]<std::vector<vega::Byte>*,std::vector<vega::Byte>*>(&__p, v10[4], v10[5], 0xAAAAAAAAAAAAAAABLL * ((v10[5] - v10[4]) >> 3));
    v11 = *a2;
    if (!*a2 || (v13 = v11 + 8, v12 = *(v11 + 8), *(v13 + 8) == v12) || (v14 = *v12, v14 == 1))
    {
      v16 = __p;
      v15 = v24;
      v17 = 0xAAAAAAAAAAAAAAABLL * ((v24 - __p) >> 3);
      if (v17 >= 2)
      {
        p_p = 0;
        __dst = 0;
        v33 = 0;
        if (__p == v24)
        {
          v19 = 0;
          v18 = 0;
        }

        else
        {
          do
          {
            std::vector<vega::Byte>::__insert_with_size[abi:ne200100]<std::__wrap_iter<vega::Byte*>,std::__wrap_iter<vega::Byte*>>(&p_p, __dst, *v16, v16[1], v16[1] - *v16);
            v16 += 3;
          }

          while (v16 != v15);
          v18 = p_p;
          v19 = __dst;
        }

        v28 = 0;
        v29 = 0;
        v30 = 0;
        std::vector<vega::Byte>::__init_with_size[abi:ne200100]<vega::Byte*,vega::Byte*>(&v28, v18, v19, v19 - v18);
        *a3 = 0;
        *(a3 + 8) = 0;
        *(a3 + 16) = 0;
        std::vector<std::vector<vega::Byte>>::__init_with_size[abi:ne200100]<std::vector<vega::Byte> const*,std::vector<vega::Byte> const*>(a3, &v28, &p_p, 1uLL);
        *(a3 + 24) = 1;
        if (v28)
        {
          v29 = v28;
          operator delete(v28);
        }

        if (p_p)
        {
          __dst = p_p;
          operator delete(p_p);
        }

LABEL_43:
        p_p = &__p;
        std::vector<std::vector<vega::Byte>>::__destroy_vector::operator()[abi:ne200100](&p_p);
        if (v7)
        {
LABEL_44:
          std::__shared_weak_count::__release_shared[abi:ne200100](v7);
          v9 = 0;
          goto LABEL_45;
        }

LABEL_30:
        v9 = 0;
        goto LABEL_46;
      }

      v14 = 1;
    }

    else
    {
      v16 = __p;
      v15 = v24;
      v17 = 0xAAAAAAAAAAAAAAABLL * ((v24 - __p) >> 3);
    }

    if (v17 == v14)
    {
      *a3 = v16;
      *(a3 + 8) = v15;
      *(a3 + 16) = v25;
      v24 = 0;
      v25 = 0;
      __p = 0;
      *(a3 + 24) = 1;
    }

    else
    {
      *a3 = 0;
      *(a3 + 24) = 0;
    }

    goto LABEL_43;
  }

  if (v20)
  {
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v20[2] == v20[1])
    {
      *a3 = 0;
      *(a3 + 24) = 0;
      if (v7)
      {
        goto LABEL_44;
      }
    }

    else
    {
      (*(*v8 + 16))(&v28, v8);
      __p = 0;
      v24 = 0;
      v25 = 0;
      v21 = vega::dicom::RawValue::data(v28);
      v22 = vega::dicom::RawValue::size(v28);
      std::vector<vega::Byte>::__assign_with_size[abi:ne200100]<std::__wrap_iter<vega::Byte*>,std::__wrap_iter<vega::Byte*>>(&__p, v21, &v21[v22], v22);
      p_p = 0;
      __dst = 0;
      v33 = 0;
      std::vector<vega::Byte>::__init_with_size[abi:ne200100]<vega::Byte*,vega::Byte*>(&p_p, __p, v24, v24 - __p);
      *a3 = 0;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      std::vector<std::vector<vega::Byte>>::__init_with_size[abi:ne200100]<std::vector<vega::Byte> const*,std::vector<vega::Byte> const*>(a3, &p_p, &v34, 1uLL);
      *(a3 + 24) = 1;
      if (p_p)
      {
        __dst = p_p;
        operator delete(p_p);
      }

      if (__p)
      {
        v24 = __p;
        operator delete(__p);
      }

      if (v29)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v29);
      }

      if (v7)
      {
        goto LABEL_44;
      }
    }

    goto LABEL_30;
  }

  v9 = 0;
  *a3 = 0;
  *(a3 + 24) = 0;
  if (v7)
  {
LABEL_45:
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

LABEL_46:
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  if (v9)
  {
    *a3 = 0;
    *(a3 + 24) = 0;
  }
}

void sub_1A596B44C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16, void *a17, std::__shared_weak_count *a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  _Unwind_Resume(exception_object);
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x1E69E5420], MEMORY[0x1E69E52A8]);
}

void *std::__shared_ptr_emplace<imemstream>::__shared_ptr_emplace[abi:ne200100]<std::span<char,18446744073709551615ul> &,std::allocator<imemstream>,0>(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F19146C0;
  imemstream::imemstream((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<imemstream>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F19146C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC552B90);
}

uint64_t imemstream::imemstream(uint64_t a1, uint64_t *a2)
{
  v4 = (a1 + 16);
  *(a1 + 16) = MEMORY[0x1E69E5538] + 16;
  MEMORY[0x1AC552A80](a1 + 24);
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 32) = 0u;
  v5 = *a2;
  v6 = *a2 + a2[1];
  *(a1 + 32) = *a2;
  *(a1 + 40) = v5;
  *(a1 + 48) = v6;
  *(a1 + 128) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = &unk_1F19147A8;
  *a1 = &unk_1F1914880;
  *(a1 + 80) = &unk_1F19148A8;
  std::ios_base::init((a1 + 80), v4);
  *(a1 + 216) = 0;
  *(a1 + 224) = -1;
  *a1 = &unk_1F1914720;
  *(a1 + 16) = &unk_1F19147A8;
  *(a1 + 80) = &unk_1F1914830;
  return a1;
}

void imemstream::~imemstream(std::locale *this)
{
  v2 = std::istream::~istream();
  MEMORY[0x1AC552AF0](v2 + 80);
  this[2].__locale_ = (MEMORY[0x1E69E5538] + 16);
  std::locale::~locale(this + 3);
}

{
  v2 = std::istream::~istream();
  MEMORY[0x1AC552AF0](v2 + 80);
  this[2].__locale_ = (MEMORY[0x1E69E5538] + 16);
  std::locale::~locale(this + 3);

  JUMPOUT(0x1AC552B90);
}

void virtual thunk toimemstream::~imemstream(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  std::istream::~istream();
  MEMORY[0x1AC552AF0](&v1[10]);
  v1[2].__locale_ = (MEMORY[0x1E69E5538] + 16);

  std::locale::~locale(v1 + 3);
}

{
  v1 = (a1 + *(*a1 - 24));
  std::istream::~istream();
  MEMORY[0x1AC552AF0](&v1[10]);
  v1[2].__locale_ = (MEMORY[0x1E69E5538] + 16);
  std::locale::~locale(v1 + 3);

  JUMPOUT(0x1AC552B90);
}

double membuf::seekoff@<D0>(membuf *this@<X0>, std::ios_base::seekdir a2@<W2>, uint64_t a3@<X1>, uint64_t a4@<X8>)
{
  if (a2 == beg)
  {
    v4 = *(this + 2);
LABEL_7:
    v5 = v4 + a3;
    goto LABEL_8;
  }

  if (a2 != cur)
  {
    if (a2 != end)
    {
      v5 = *(this + 3);
      goto LABEL_10;
    }

    v4 = *(this + 4);
    goto LABEL_7;
  }

  v5 = *(this + 3) + a3;
LABEL_8:
  *(this + 3) = v5;
LABEL_10:
  v6 = v5 - *(this + 2);
  result = 0.0;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *(a4 + 48) = 0u;
  *(a4 + 64) = 0u;
  *(a4 + 80) = 0u;
  *(a4 + 96) = 0u;
  *(a4 + 112) = 0u;
  *(a4 + 128) = v6;
  return result;
}

void virtual thunk toimemstream::~imemstream(imemstream *this)
{
  v1 = (this + *(*this - 24));
  std::istream::~istream();
  MEMORY[0x1AC552AF0](&v1[10]);
  v1[2].__locale_ = (MEMORY[0x1E69E5538] + 16);

  std::locale::~locale(v1 + 3);
}

{
  v1 = (this + *(*this - 24));
  std::istream::~istream();
  MEMORY[0x1AC552AF0](&v1[10]);
  v1[2].__locale_ = (MEMORY[0x1E69E5538] + 16);
  std::locale::~locale(v1 + 3);

  JUMPOUT(0x1AC552B90);
}

void *std::__shared_ptr_emplace<vega::dicom::File>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<imemstream> &,BOOL,std::allocator<vega::dicom::File>,0>(void *a1, uint64_t *a2, unsigned __int8 *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F1914918;
  std::construct_at[abi:ne200100]<vega::dicom::File,std::shared_ptr<imemstream> &,BOOL,vega::dicom::File*>((a1 + 3), a2, a3);
  return a1;
}

void std::__shared_ptr_emplace<vega::dicom::File>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1914918;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC552B90);
}

void std::__shared_ptr_emplace<vega::dicom::File>::__on_zero_shared(void *a1)
{
  v2 = a1[8];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = a1[6];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = a1[4];
  if (v4)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

uint64_t std::construct_at[abi:ne200100]<vega::dicom::File,std::shared_ptr<imemstream> &,BOOL,vega::dicom::File*>(uint64_t a1, uint64_t *a2, unsigned __int8 *a3)
{
  v4 = a2[1];
  v6 = *a2;
  v7 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  vega::dicom::File::File(a1, &v6, *a3, 1);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  return a1;
}

void sub_1A596BDD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E77A1098, MEMORY[0x1E69E5278]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B0] + 16);
  return result;
}

_BYTE *std::string::basic_string[abi:ne200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

void vega::dicom::DataSet::element<vega::dictionary::NumberOfFrames>(vega::dicom::DataSet *a1@<X0>, void *a2@<X8>)
{
  vega::dicom::DataSet::data_element(a1, &vega::dictionary::NumberOfFrames::tag_mask, &v3);
  if (v3)
  {
    std::allocate_shared[abi:ne200100]<vega::dicom::Element<vega::dictionary::NumberOfFrames>,std::allocator<vega::dicom::Element<vega::dictionary::NumberOfFrames>>,std::shared_ptr<vega::dicom::DataElement> &,0>();
  }

  *a2 = 0;
  a2[1] = 0;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_1A596C020(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::NumberOfFrames>>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<vega::dicom::DataElement> &,std::allocator<vega::dicom::Element<vega::dictionary::NumberOfFrames>>,0>(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F1914968;
  vega::dicom::Element<vega::dictionary::NumberOfFrames>::Element((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::NumberOfFrames>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1914968;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC552B90);
}

void std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::NumberOfFrames>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t vega::dicom::Element<vega::dictionary::NumberOfFrames>::Element(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    v3 = *a1;
  }

  v5 = vega::dictionary::Page::name(v3);
  if (!vega::TagMask::contains(&vega::dictionary::NumberOfFrames::tag_mask, v5))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v11, "must have Tag that agrees with type");
    std::runtime_error::runtime_error(exception, &v11);
    exception->__vftable = &unk_1F1917110;
  }

  v6 = vega::dicom::DataElement::vr(*a1);
  if (vega::VR::operator!=(&vega::dictionary::NumberOfFrames::vr, v6))
  {
    v9 = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v10, "must have VR that agrees with type");
    std::runtime_error::runtime_error(v9, &v10);
    v9->__vftable = &unk_1F1917110;
  }

  return a1;
}

void sub_1A596C2EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v22 & 1) == 0)
    {
LABEL_6:
      v24 = *(v20 + 8);
      if (v24)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v24);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v21);
  goto LABEL_6;
}

BOOL vega::TagMask::contains(vega::TagMask *this, const vega::Tag *a2)
{
  v3 = vega::Tag::tag(a2);
  v4 = vega::Tag::tag((this + 4)) & v3;
  return v4 == vega::Tag::tag(this);
}

void vega::Exception::~Exception(std::runtime_error *this)
{
  std::runtime_error::~runtime_error(this);

  JUMPOUT(0x1AC552B90);
}

void *vega::dicom::DataElement::get_manipulator<vega::manipulators::IntegerStringManipulator>@<X0>(vega::dicom::DataElement *a1@<X0>, void *a2@<X8>)
{
  v4 = vega::dicom::DataElement::vr(a1);
  vega::VR::validate_value_manipulator<vega::manipulators::IntegerStringManipulator>(v4);
  vega::dicom::DataElement::lazy_load(a1);
  v5 = *(a1 + 30);
  if (!v5)
  {
    operator new();
  }

  v6 = *v5;
  if (!result)
  {
    (*(v6 + 16))(&v9, v5);
    std::allocate_shared[abi:ne200100]<vega::manipulators::IntegerStringManipulator,std::allocator<vega::manipulators::IntegerStringManipulator>,std::shared_ptr<vega::dicom::RawValue>,0>();
  }

  v8 = *(a1 + 31);
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  *a2 = result;
  a2[1] = v8;
  return result;
}

void sub_1A596C584(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

BOOL vega::VR::validate_value_manipulator<vega::manipulators::IntegerStringManipulator>(unsigned __int16 *a1)
{
  result = vega::vr::manipulator_is_valid_for<vega::manipulators::IntegerStringManipulator>(*a1);
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    vega::VR::InvalidValueManipulator<vega::manipulators::IntegerStringManipulator>::InvalidValueManipulator(exception, a1);
  }

  return result;
}

std::runtime_error *vega::VR::InvalidValueManipulator<vega::manipulators::IntegerStringManipulator>::InvalidValueManipulator(std::runtime_error *a1, vega::VR *a2)
{
  std::string::basic_string[abi:ne200100]<0>(&v20, "Invalid type ");
  v4 = strlen((0x80000001A5AAE4A0 & 0x7FFFFFFFFFFFFFFFLL));
  v5 = std::string::append(&v20, (0x80000001A5AAE4A0 & 0x7FFFFFFFFFFFFFFFLL), v4);
  v6 = *&v5->__r_.__value_.__l.__data_;
  v21.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v21.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(v18, " for VR ");
  if ((v19 & 0x80u) == 0)
  {
    v7 = v18;
  }

  else
  {
    v7 = v18[0];
  }

  if ((v19 & 0x80u) == 0)
  {
    v8 = v19;
  }

  else
  {
    v8 = v18[1];
  }

  v9 = std::string::append(&v21, v7, v8);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v22.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
  *&v22.__r_.__value_.__l.__data_ = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  vega::VR::str(a2, __p);
  if ((v17 & 0x80u) == 0)
  {
    v11 = __p;
  }

  else
  {
    v11 = __p[0];
  }

  if ((v17 & 0x80u) == 0)
  {
    v12 = v17;
  }

  else
  {
    v12 = __p[1];
  }

  v13 = std::string::append(&v22, v11, v12);
  v14 = *&v13->__r_.__value_.__l.__data_;
  v23.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
  *&v23.__r_.__value_.__l.__data_ = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  std::runtime_error::runtime_error(a1, &v23);
  a1->__vftable = &unk_1F1917110;
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  if (v19 < 0)
  {
    operator delete(v18[0]);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  a1->__vftable = &unk_1F1914A30;
  return a1;
}

void sub_1A596C7D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v33 - 41) < 0)
  {
    operator delete(*(v33 - 64));
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v33 - 73) < 0)
  {
    operator delete(*(v33 - 96));
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void vega::VR::InvalidValueManipulator<vega::manipulators::IntegerStringManipulator>::~InvalidValueManipulator(std::runtime_error *a1)
{
  std::runtime_error::~runtime_error(a1);

  JUMPOUT(0x1AC552B90);
}

void std::__shared_ptr_emplace<vega::manipulators::IntegerStringManipulator>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F19185A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC552B90);
}

void vega::manipulators::IntegerStringManipulator::~IntegerStringManipulator(vega::manipulators::IntegerStringManipulator *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }

  CMPhotoGetEncodeAccelerationModeOverride(this);
}

{
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }

  CMPhotoGetEncodeAccelerationModeOverride(this);

  JUMPOUT(0x1AC552B90);
}

BOOL vega::manipulators::IntegerStringManipulator::is_valid_for (vega::manipulators::IntegerStringManipulator *this, const vega::VR *a2)
{
  v3 = a2;
  if ((atomic_load_explicit(&qword_1ED6FA5C0, memory_order_acquire) & 1) == 0)
  {
    vega::manipulators::IntegerStringManipulator::is_valid_for ();
    v3 = a2;
  }

  return vega::Word::operator==(v3, &_MergedGlobals_4);
}

uint64_t vega::manipulators::PaddedStringManipulator<int>::~PaddedStringManipulator(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }

  return CMPhotoGetEncodeAccelerationModeOverride(a1);
}

void vega::manipulators::PaddedStringManipulator<int>::~PaddedStringManipulator(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }

  CMPhotoGetEncodeAccelerationModeOverride(a1);

  JUMPOUT(0x1AC552B90);
}

void std::__shared_ptr_emplace<vega::dicom::RawValue>::__shared_ptr_emplace[abi:ne200100]<std::string,std::allocator<vega::dicom::RawValue>,0>(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F1917E00;
  vega::dicom::RawValue::RawValue();
}

void std::__shared_ptr_emplace<vega::dicom::RawValue>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1917E00;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC552B90);
}

void std::__shared_ptr_emplace<vega::dicom::RawValue>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t *std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](uint64_t *a1)
{
  a1[22] = 0;
  v2 = MEMORY[0x1E69E5560] + 104;
  a1[16] = MEMORY[0x1E69E5560] + 104;
  v3 = a1 + 2;
  v4 = MEMORY[0x1E69E5560] + 64;
  a1[2] = MEMORY[0x1E69E5560] + 64;
  v5 = MEMORY[0x1E69E54D8];
  v6 = *(MEMORY[0x1E69E54D8] + 24);
  v7 = *(MEMORY[0x1E69E54D8] + 16);
  *a1 = v7;
  *(a1 + *(v7 - 24)) = v6;
  a1[1] = 0;
  v8 = (a1 + *(*a1 - 24));
  std::ios_base::init(v8, a1 + 3);
  v9 = MEMORY[0x1E69E5560] + 24;
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  v10 = v5[5];
  v11 = v5[4];
  a1[2] = v11;
  *(v3 + *(v11 - 24)) = v10;
  v12 = v5[1];
  *a1 = v12;
  *(a1 + *(v12 - 24)) = v5[6];
  *a1 = v9;
  a1[16] = v2;
  a1[2] = v4;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 3), 24);
  return a1;
}

void sub_1A596CEAC(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x1AC552AF0](v1);
  _Unwind_Resume(a1);
}

const void *std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100]@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = std::stringbuf::view[abi:ne200100](a1 + 24);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a2[23] = v4;
  if (v4)
  {
    result = memmove(a2, result, v4);
  }

  a2[v5] = 0;
  return result;
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1)
{
  v2 = MEMORY[0x1E69E54D8];
  v3 = *MEMORY[0x1E69E54D8];
  *a1 = *MEMORY[0x1E69E54D8];
  v4 = *(v2 + 72);
  *(a1 + *(v3 - 24)) = *(v2 + 64);
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x1AC552AF0](a1 + 128);
  return a1;
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, int a2)
{
  *a1 = MEMORY[0x1E69E5538] + 16;
  MEMORY[0x1AC552A80](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x1E69E5548] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_1A596D164(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void std::stringbuf::__init_buf_ptrs[abi:ne200100](uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x1AC5528B0](v13, a1);
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

    if (!std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x1AC5528C0](v13);
  return a1;
}

void sub_1A596D3D4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x1AC5528C0](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x1A596D3B4);
}

uint64_t std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v18 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v18 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v18 < 0)
      {
        operator delete(__b);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}