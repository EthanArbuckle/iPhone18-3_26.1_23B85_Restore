int *agxps_timeseries_min_ts(int *a1, int a2, unint64_t a3, int *a4, int a5)
{
  v5 = 0;
  if (a1 && a4)
  {
    if (a4[8])
    {
      return 0;
    }

    v6 = *(a1 + 1);
    if (v6 != *(a4 + 1))
    {
      return 0;
    }

    else
    {
      v7 = *a1;
      v8 = *a4;
      if (*a1 == 2)
      {
        switch(a2)
        {
          case 2:
            switch(v8)
            {
              case 2:
                if (a5 == 1)
                {
                  if (v6)
                  {
                    v193 = *(a1 + 2);
                    v194 = *(a4 + 2);
                    do
                    {
                      v196 = *v193++;
                      v195 = v196;
                      if (v196 >= a3)
                      {
                        v195 = a3;
                      }

                      *v194++ = v195;
                      --v6;
                    }

                    while (v6);
                  }
                }

                else if (!a5 && v6)
                {
                  v101 = *(a1 + 2);
                  v102 = *(a4 + 2);
                  do
                  {
                    v104 = *v101++;
                    v103 = v104;
                    if (v104 >= a3)
                    {
                      v103 = a3;
                    }

                    *v102++ = v103;
                    --v6;
                  }

                  while (v6);
                }

                break;
              case 1:
                if (a5 == 1)
                {
                  if (v6)
                  {
                    v153 = *(a1 + 2);
                    v154 = *(a4 + 2);
                    do
                    {
                      v156 = *v153++;
                      v155 = v156;
                      if (v156 >= a3)
                      {
                        v155 = a3;
                      }

                      *v154++ = v155;
                      --v6;
                    }

                    while (v6);
                  }
                }

                else if (!a5 && v6)
                {
                  v77 = *(a1 + 2);
                  v78 = *(a4 + 2);
                  do
                  {
                    v80 = *v77++;
                    v79 = v80;
                    if (v80 >= a3)
                    {
                      v79 = a3;
                    }

                    *v78++ = v79;
                    --v6;
                  }

                  while (v6);
                }

                break;
              case 0:
                if (a5 == 1)
                {
                  if (v6)
                  {
                    v197 = *(a1 + 2);
                    v198 = *(a4 + 2);
                    do
                    {
                      v199 = *v197++;
                      v200 = v199;
                      if (v199 >= a3)
                      {
                        v200 = a3;
                      }

                      *v198++ = v200;
                      --v6;
                    }

                    while (v6);
                  }
                }

                else if (!a5 && v6)
                {
                  v37 = *(a1 + 2);
                  v38 = *(a4 + 2);
                  do
                  {
                    v39 = *v37++;
                    v40 = v39;
                    if (v39 >= a3)
                    {
                      v40 = a3;
                    }

                    *v38++ = v40;
                    --v6;
                  }

                  while (v6);
                }

                break;
            }

            break;
          case 1:
            switch(v8)
            {
              case 2:
                if (a5 == 1)
                {
                  if (v6)
                  {
                    v149 = *(a1 + 2);
                    v150 = *(a4 + 2);
                    do
                    {
                      v152 = *v149++;
                      v151 = v152;
                      if (v152 >= a3)
                      {
                        v151 = a3;
                      }

                      *v150++ = v151;
                      --v6;
                    }

                    while (v6);
                  }
                }

                else if (!a5 && v6)
                {
                  v73 = *(a1 + 2);
                  v74 = *(a4 + 2);
                  do
                  {
                    v76 = *v73++;
                    v75 = v76;
                    if (v76 >= a3)
                    {
                      v75 = a3;
                    }

                    *v74++ = v75;
                    --v6;
                  }

                  while (v6);
                }

                break;
              case 1:
                if (a5 == 1)
                {
                  if (v6)
                  {
                    v129 = *(a1 + 2);
                    v130 = *(a4 + 2);
                    do
                    {
                      v132 = *v129++;
                      v131 = v132;
                      if (v132 >= a3)
                      {
                        v131 = a3;
                      }

                      *v130++ = v131;
                      --v6;
                    }

                    while (v6);
                  }
                }

                else if (!a5 && v6)
                {
                  v57 = *(a1 + 2);
                  v58 = *(a4 + 2);
                  do
                  {
                    v60 = *v57++;
                    v59 = v60;
                    if (v60 >= a3)
                    {
                      v59 = a3;
                    }

                    *v58++ = v59;
                    --v6;
                  }

                  while (v6);
                }

                break;
              case 0:
                if (a5 == 1)
                {
                  if (v6)
                  {
                    v161 = *(a1 + 2);
                    v162 = *(a4 + 2);
                    do
                    {
                      v163 = *v161++;
                      v164 = v163;
                      if (v163 >= a3)
                      {
                        v164 = a3;
                      }

                      *v162++ = v164;
                      --v6;
                    }

                    while (v6);
                  }
                }

                else if (!a5 && v6)
                {
                  v29 = *(a1 + 2);
                  v30 = *(a4 + 2);
                  do
                  {
                    v31 = *v29++;
                    v32 = v31;
                    if (v31 >= a3)
                    {
                      v32 = a3;
                    }

                    *v30++ = v32;
                    --v6;
                  }

                  while (v6);
                }

                break;
            }

            break;
          case 0:
            switch(v8)
            {
              case 2:
                if (a5 == 1)
                {
                  if (v6)
                  {
                    v201 = *(a1 + 2);
                    v202 = *(a4 + 2);
                    do
                    {
                      v204 = *v201++;
                      v203 = v204;
                      if (v204 >= *&a3)
                      {
                        v203 = *&a3;
                      }

                      *v202++ = v203;
                      --v6;
                    }

                    while (v6);
                  }
                }

                else if (!a5 && v6)
                {
                  v105 = *(a1 + 2);
                  v106 = *(a4 + 2);
                  do
                  {
                    v108 = *v105++;
                    v107 = v108;
                    if (v108 >= *&a3)
                    {
                      v107 = *&a3;
                    }

                    *v106++ = v107;
                    --v6;
                  }

                  while (v6);
                }

                break;
              case 1:
                if (a5 == 1)
                {
                  if (v6)
                  {
                    v169 = *(a1 + 2);
                    v170 = *(a4 + 2);
                    do
                    {
                      v172 = *v169++;
                      v171 = v172;
                      if (v172 >= *&a3)
                      {
                        v171 = *&a3;
                      }

                      *v170++ = v171;
                      --v6;
                    }

                    while (v6);
                  }
                }

                else if (!a5 && v6)
                {
                  v85 = *(a1 + 2);
                  v86 = *(a4 + 2);
                  do
                  {
                    v88 = *v85++;
                    v87 = v88;
                    if (v88 >= *&a3)
                    {
                      v87 = *&a3;
                    }

                    *v86++ = v87;
                    --v6;
                  }

                  while (v6);
                }

                break;
              case 0:
                if (a5 == 1)
                {
                  if (v6)
                  {
                    v209 = *(a1 + 2);
                    v210 = *(a4 + 2);
                    do
                    {
                      v211 = *v209++;
                      v212 = v211;
                      if (*&a3 <= v211)
                      {
                        v212 = *&a3;
                      }

                      *v210++ = v212;
                      --v6;
                    }

                    while (v6);
                  }
                }

                else if (!a5 && v6)
                {
                  v17 = *(a1 + 2);
                  v18 = *(a4 + 2);
                  do
                  {
                    v19 = *v17++;
                    v20 = v19;
                    if (*&a3 <= v19)
                    {
                      v20 = *&a3;
                    }

                    *v18++ = v20;
                    --v6;
                  }

                  while (v6);
                }

                break;
            }

            break;
        }
      }

      else if (v7 == 1)
      {
        switch(a2)
        {
          case 2:
            switch(v8)
            {
              case 2:
                if (a5 == 1)
                {
                  if (v6)
                  {
                    v145 = *(a1 + 2);
                    v146 = *(a4 + 2);
                    do
                    {
                      v148 = *v145;
                      v145 += 8;
                      v147 = v148;
                      if (v148 >= a3)
                      {
                        v147 = a3;
                      }

                      *v146++ = v147;
                      --v6;
                    }

                    while (v6);
                  }
                }

                else if (!a5 && v6)
                {
                  v69 = *(a1 + 2);
                  v70 = *(a4 + 2);
                  do
                  {
                    v72 = *v69;
                    v69 += 8;
                    v71 = v72;
                    if (v72 >= a3)
                    {
                      v71 = a3;
                    }

                    *v70++ = v71;
                    --v6;
                  }

                  while (v6);
                }

                break;
              case 1:
                if (a5 == 1)
                {
                  if (v6)
                  {
                    v125 = *(a1 + 2);
                    v126 = *(a4 + 2);
                    do
                    {
                      v128 = *v125++;
                      v127 = v128;
                      if (v128 >= a3)
                      {
                        v127 = a3;
                      }

                      *v126++ = v127;
                      --v6;
                    }

                    while (v6);
                  }
                }

                else if (!a5 && v6)
                {
                  v53 = *(a1 + 2);
                  v54 = *(a4 + 2);
                  do
                  {
                    v56 = *v53++;
                    v55 = v56;
                    if (v56 >= a3)
                    {
                      v55 = a3;
                    }

                    *v54++ = v55;
                    --v6;
                  }

                  while (v6);
                }

                break;
              case 0:
                if (a5 == 1)
                {
                  if (v6)
                  {
                    v157 = *(a1 + 2);
                    v158 = *(a4 + 2);
                    do
                    {
                      v159 = *v157++;
                      v160 = v159;
                      if (v159 >= a3)
                      {
                        v160 = a3;
                      }

                      *v158++ = v160;
                      --v6;
                    }

                    while (v6);
                  }
                }

                else if (!a5 && v6)
                {
                  v25 = *(a1 + 2);
                  v26 = *(a4 + 2);
                  do
                  {
                    v27 = *v25++;
                    v28 = v27;
                    if (v27 >= a3)
                    {
                      v28 = a3;
                    }

                    *v26++ = v28;
                    --v6;
                  }

                  while (v6);
                }

                break;
            }

            break;
          case 1:
            switch(v8)
            {
              case 2:
                if (a5 == 1)
                {
                  if (v6)
                  {
                    v121 = *(a1 + 2);
                    v122 = *(a4 + 2);
                    do
                    {
                      v124 = *v121;
                      v121 += 8;
                      v123 = v124;
                      if (v124 >= a3)
                      {
                        v123 = a3;
                      }

                      *v122++ = v123;
                      --v6;
                    }

                    while (v6);
                  }
                }

                else if (!a5 && v6)
                {
                  v49 = *(a1 + 2);
                  v50 = *(a4 + 2);
                  do
                  {
                    v52 = *v49;
                    v49 += 8;
                    v51 = v52;
                    if (v52 >= a3)
                    {
                      v51 = a3;
                    }

                    *v50++ = v51;
                    --v6;
                  }

                  while (v6);
                }

                break;
              case 1:
                if (a5 == 1)
                {
                  if (v6)
                  {
                    v117 = *(a1 + 2);
                    v118 = *(a4 + 2);
                    do
                    {
                      v120 = *v117++;
                      v119 = v120;
                      if (v120 >= a3)
                      {
                        v119 = a3;
                      }

                      *v118++ = v119;
                      --v6;
                    }

                    while (v6);
                  }
                }

                else if (!a5 && v6)
                {
                  v45 = *(a1 + 2);
                  v46 = *(a4 + 2);
                  do
                  {
                    v48 = *v45++;
                    v47 = v48;
                    if (v48 >= a3)
                    {
                      v47 = a3;
                    }

                    *v46++ = v47;
                    --v6;
                  }

                  while (v6);
                }

                break;
              case 0:
                if (a5 == 1)
                {
                  if (v6)
                  {
                    v133 = *(a1 + 2);
                    v134 = *(a4 + 2);
                    do
                    {
                      v135 = *v133++;
                      v136 = v135;
                      if (v135 >= a3)
                      {
                        v136 = a3;
                      }

                      *v134++ = v136;
                      --v6;
                    }

                    while (v6);
                  }
                }

                else if (!a5 && v6)
                {
                  v21 = *(a1 + 2);
                  v22 = *(a4 + 2);
                  do
                  {
                    v23 = *v21++;
                    v24 = v23;
                    if (v23 >= a3)
                    {
                      v24 = a3;
                    }

                    *v22++ = v24;
                    --v6;
                  }

                  while (v6);
                }

                break;
            }

            break;
          case 0:
            switch(v8)
            {
              case 2:
                if (a5 == 1)
                {
                  if (v6)
                  {
                    v165 = *(a1 + 2);
                    v166 = *(a4 + 2);
                    do
                    {
                      v168 = *v165;
                      v165 += 8;
                      v167 = v168;
                      if (v168 >= *&a3)
                      {
                        v167 = *&a3;
                      }

                      *v166++ = v167;
                      --v6;
                    }

                    while (v6);
                  }
                }

                else if (!a5 && v6)
                {
                  v81 = *(a1 + 2);
                  v82 = *(a4 + 2);
                  do
                  {
                    v84 = *v81;
                    v81 += 8;
                    v83 = v84;
                    if (v84 >= *&a3)
                    {
                      v83 = *&a3;
                    }

                    *v82++ = v83;
                    --v6;
                  }

                  while (v6);
                }

                break;
              case 1:
                if (a5 == 1)
                {
                  if (v6)
                  {
                    v137 = *(a1 + 2);
                    v138 = *(a4 + 2);
                    do
                    {
                      v140 = *v137++;
                      v139 = v140;
                      if (v140 >= *&a3)
                      {
                        v139 = *&a3;
                      }

                      *v138++ = v139;
                      --v6;
                    }

                    while (v6);
                  }
                }

                else if (!a5 && v6)
                {
                  v61 = *(a1 + 2);
                  v62 = *(a4 + 2);
                  do
                  {
                    v64 = *v61++;
                    v63 = v64;
                    if (v64 >= *&a3)
                    {
                      v63 = *&a3;
                    }

                    *v62++ = v63;
                    --v6;
                  }

                  while (v6);
                }

                break;
              case 0:
                if (a5 == 1)
                {
                  if (v6)
                  {
                    v181 = *(a1 + 2);
                    v182 = *(a4 + 2);
                    do
                    {
                      v183 = *v181++;
                      v184 = v183;
                      if (*&a3 <= v183)
                      {
                        v184 = *&a3;
                      }

                      *v182++ = v184;
                      --v6;
                    }

                    while (v6);
                  }
                }

                else if (!a5 && v6)
                {
                  v13 = *(a1 + 2);
                  v14 = *(a4 + 2);
                  do
                  {
                    v15 = *v13++;
                    v16 = v15;
                    if (*&a3 <= v15)
                    {
                      v16 = *&a3;
                    }

                    *v14++ = v16;
                    --v6;
                  }

                  while (v6);
                }

                break;
            }

            break;
        }
      }

      else if (!v7)
      {
        switch(a2)
        {
          case 2:
            switch(v8)
            {
              case 2:
                if (a5 == 1)
                {
                  if (v6)
                  {
                    v205 = *(a1 + 2);
                    v206 = *(a4 + 2);
                    do
                    {
                      v207 = *v205++;
                      v208 = v207;
                      if (v207 >= a3)
                      {
                        LOBYTE(v208) = a3;
                      }

                      *v206++ = v208;
                      --v6;
                    }

                    while (v6);
                  }
                }

                else if (!a5 && v6)
                {
                  v109 = *(a1 + 2);
                  v110 = *(a4 + 2);
                  do
                  {
                    v111 = *v109++;
                    v112 = v111;
                    if (v111 >= a3)
                    {
                      LOBYTE(v112) = a3;
                    }

                    *v110++ = v112;
                    --v6;
                  }

                  while (v6);
                }

                break;
              case 1:
                if (a5 == 1)
                {
                  if (v6)
                  {
                    v177 = *(a1 + 2);
                    v178 = *(a4 + 2);
                    do
                    {
                      v179 = *v177++;
                      v180 = v179;
                      if (v179 >= a3)
                      {
                        v180 = a3;
                      }

                      *v178++ = v180;
                      --v6;
                    }

                    while (v6);
                  }
                }

                else if (!a5 && v6)
                {
                  v93 = *(a1 + 2);
                  v94 = *(a4 + 2);
                  do
                  {
                    v95 = *v93++;
                    v96 = v95;
                    if (v95 >= a3)
                    {
                      v96 = a3;
                    }

                    *v94++ = v96;
                    --v6;
                  }

                  while (v6);
                }

                break;
              case 0:
                if (a5 == 1)
                {
                  if (v6)
                  {
                    v213 = *(a1 + 2);
                    v214 = *(a4 + 2);
                    do
                    {
                      v215 = *v213++;
                      v216 = v215;
                      if (v215 >= a3)
                      {
                        v216 = a3;
                      }

                      *v214++ = v216;
                      --v6;
                    }

                    while (v6);
                  }
                }

                else if (!a5 && v6)
                {
                  v41 = *(a1 + 2);
                  v42 = *(a4 + 2);
                  do
                  {
                    v43 = *v41++;
                    v44 = v43;
                    if (v43 >= a3)
                    {
                      v44 = a3;
                    }

                    *v42++ = v44;
                    --v6;
                  }

                  while (v6);
                }

                break;
            }

            break;
          case 1:
            switch(v8)
            {
              case 2:
                if (a5 == 1)
                {
                  if (v6)
                  {
                    v173 = *(a1 + 2);
                    v174 = *(a4 + 2);
                    do
                    {
                      v175 = *v173++;
                      v176 = v175;
                      if (v175 >= a3)
                      {
                        LOBYTE(v176) = a3;
                      }

                      *v174++ = v176;
                      --v6;
                    }

                    while (v6);
                  }
                }

                else if (!a5 && v6)
                {
                  v89 = *(a1 + 2);
                  v90 = *(a4 + 2);
                  do
                  {
                    v91 = *v89++;
                    v92 = v91;
                    if (v91 >= a3)
                    {
                      LOBYTE(v92) = a3;
                    }

                    *v90++ = v92;
                    --v6;
                  }

                  while (v6);
                }

                break;
              case 1:
                if (a5 == 1)
                {
                  if (v6)
                  {
                    v141 = *(a1 + 2);
                    v142 = *(a4 + 2);
                    do
                    {
                      v143 = *v141++;
                      v144 = v143;
                      if (v143 >= a3)
                      {
                        v144 = a3;
                      }

                      *v142++ = v144;
                      --v6;
                    }

                    while (v6);
                  }
                }

                else if (!a5 && v6)
                {
                  v65 = *(a1 + 2);
                  v66 = *(a4 + 2);
                  do
                  {
                    v67 = *v65++;
                    v68 = v67;
                    if (v67 >= a3)
                    {
                      v68 = a3;
                    }

                    *v66++ = v68;
                    --v6;
                  }

                  while (v6);
                }

                break;
              case 0:
                if (a5 == 1)
                {
                  if (v6)
                  {
                    v185 = *(a1 + 2);
                    v186 = *(a4 + 2);
                    do
                    {
                      v187 = *v185++;
                      v188 = v187;
                      if (v187 >= a3)
                      {
                        v188 = a3;
                      }

                      *v186++ = v188;
                      --v6;
                    }

                    while (v6);
                  }
                }

                else if (!a5 && v6)
                {
                  v33 = *(a1 + 2);
                  v34 = *(a4 + 2);
                  do
                  {
                    v35 = *v33++;
                    v36 = v35;
                    if (v35 >= a3)
                    {
                      v36 = a3;
                    }

                    *v34++ = v36;
                    --v6;
                  }

                  while (v6);
                }

                break;
            }

            break;
          case 0:
            switch(v8)
            {
              case 2:
                if (a5 == 1)
                {
                  if (v6)
                  {
                    v217 = *(a1 + 2);
                    v218 = *(a4 + 2);
                    do
                    {
                      v219 = *v217++;
                      v220 = v219;
                      if (v219 >= *&a3)
                      {
                        LOBYTE(v220) = *&a3;
                      }

                      *v218++ = v220;
                      --v6;
                    }

                    while (v6);
                  }
                }

                else if (!a5 && v6)
                {
                  v113 = *(a1 + 2);
                  v114 = *(a4 + 2);
                  do
                  {
                    v115 = *v113++;
                    v116 = v115;
                    if (v115 >= *&a3)
                    {
                      LOBYTE(v116) = *&a3;
                    }

                    *v114++ = v116;
                    --v6;
                  }

                  while (v6);
                }

                break;
              case 1:
                if (a5 == 1)
                {
                  if (v6)
                  {
                    v189 = *(a1 + 2);
                    v190 = *(a4 + 2);
                    do
                    {
                      v191 = *v189++;
                      v192 = v191;
                      if (v191 >= *&a3)
                      {
                        v192 = *&a3;
                      }

                      *v190++ = v192;
                      --v6;
                    }

                    while (v6);
                  }
                }

                else if (!a5 && v6)
                {
                  v97 = *(a1 + 2);
                  v98 = *(a4 + 2);
                  do
                  {
                    v99 = *v97++;
                    v100 = v99;
                    if (v99 >= *&a3)
                    {
                      v100 = *&a3;
                    }

                    *v98++ = v100;
                    --v6;
                  }

                  while (v6);
                }

                break;
              case 0:
                if (a5 == 1)
                {
                  if (v6)
                  {
                    v221 = *(a1 + 2);
                    v222 = *(a4 + 2);
                    do
                    {
                      v223 = *v221++;
                      v224 = v223;
                      if (v223 >= *&a3)
                      {
                        v224 = *&a3;
                      }

                      *v222++ = v224;
                      --v6;
                    }

                    while (v6);
                  }
                }

                else if (!a5 && v6)
                {
                  v9 = *(a1 + 2);
                  v10 = *(a4 + 2);
                  do
                  {
                    v11 = *v9++;
                    v12 = v11;
                    if (v11 >= *&a3)
                    {
                      v12 = *&a3;
                    }

                    *v10++ = v12;
                    --v6;
                  }

                  while (v6);
                }

                break;
            }

            break;
        }
      }

      return a4;
    }
  }

  return v5;
}

int *agxps_timeseries_max_tt(int *a1, int *a2, int *a3, int a4)
{
  v4 = 0;
  if (a1 && a2 && a3)
  {
    if ((a3[8] & 1) == 0 && (v5 = *(a1 + 1), v5 == *(a2 + 1)) && v5 == *(a3 + 1))
    {
      v6 = *a1;
      v7 = *a2;
      v8 = *a3;
      if (*a1 == 2)
      {
        switch(v7)
        {
          case 2:
            switch(v8)
            {
              case 2:
                if (a4 == 1)
                {
                  if (v5)
                  {
                    v326 = *(a1 + 2);
                    v327 = *(a2 + 2);
                    v328 = *(a3 + 2);
                    do
                    {
                      v330 = *v326++;
                      v329 = v330;
                      v332 = *v327++;
                      v331 = v332;
                      if (v329 <= v332)
                      {
                        LOBYTE(v329) = v331;
                      }

                      *v328++ = v329;
                      --v5;
                    }

                    while (v5);
                  }
                }

                else if (!a4 && v5)
                {
                  v168 = *(a1 + 2);
                  v169 = *(a2 + 2);
                  v170 = *(a3 + 2);
                  do
                  {
                    v172 = *v168++;
                    v171 = v172;
                    v174 = *v169++;
                    v173 = v174;
                    if (v171 <= v174)
                    {
                      LOBYTE(v171) = v173;
                    }

                    *v170++ = v171;
                    --v5;
                  }

                  while (v5);
                }

                break;
              case 1:
                if (a4 == 1)
                {
                  if (v5)
                  {
                    v257 = *(a1 + 2);
                    v258 = *(a2 + 2);
                    v259 = *(a3 + 2);
                    do
                    {
                      v261 = *v257++;
                      LODWORD(v260) = v261;
                      v263 = *v258++;
                      v262 = v263;
                      if (v260 <= v263)
                      {
                        v260 = v262;
                      }

                      else
                      {
                        v260 = v260;
                      }

                      *v259++ = v260;
                      --v5;
                    }

                    while (v5);
                  }
                }

                else if (!a4 && v5)
                {
                  v128 = *(a1 + 2);
                  v129 = *(a2 + 2);
                  v130 = *(a3 + 2);
                  do
                  {
                    v132 = *v128++;
                    LODWORD(v131) = v132;
                    v134 = *v129++;
                    v133 = v134;
                    if (v131 <= v134)
                    {
                      v131 = v133;
                    }

                    else
                    {
                      v131 = v131;
                    }

                    *v130++ = v131;
                    --v5;
                  }

                  while (v5);
                }

                break;
              case 0:
                if (a4 == 1)
                {
                  if (v5)
                  {
                    v333 = *(a1 + 2);
                    v334 = *(a2 + 2);
                    v335 = *(a3 + 2);
                    do
                    {
                      v336 = *v333++;
                      v337 = v336;
                      v338 = *v334++;
                      v339 = v338;
                      if (v337 <= v338)
                      {
                        v337 = v339;
                      }

                      *v335++ = v337;
                      --v5;
                    }

                    while (v5);
                  }
                }

                else if (!a4 && v5)
                {
                  v60 = *(a1 + 2);
                  v61 = *(a2 + 2);
                  v62 = *(a3 + 2);
                  do
                  {
                    v63 = *v60++;
                    v64 = v63;
                    v65 = *v61++;
                    v66 = v65;
                    if (v64 <= v65)
                    {
                      v64 = v66;
                    }

                    *v62++ = v64;
                    --v5;
                  }

                  while (v5);
                }

                break;
            }

            break;
          case 1:
            switch(v8)
            {
              case 2:
                if (a4 == 1)
                {
                  if (v5)
                  {
                    v250 = *(a1 + 2);
                    v251 = *(a2 + 2);
                    v252 = *(a3 + 2);
                    do
                    {
                      v254 = *v250++;
                      v253 = v254;
                      v256 = *v251;
                      v251 += 8;
                      v255 = v256;
                      if (v253 <= v256)
                      {
                        LOBYTE(v253) = v255;
                      }

                      *v252++ = v253;
                      --v5;
                    }

                    while (v5);
                  }
                }

                else if (!a4 && v5)
                {
                  v121 = *(a1 + 2);
                  v122 = *(a2 + 2);
                  v123 = *(a3 + 2);
                  do
                  {
                    v125 = *v121++;
                    v124 = v125;
                    v127 = *v122;
                    v122 += 8;
                    v126 = v127;
                    if (v124 <= v127)
                    {
                      LOBYTE(v124) = v126;
                    }

                    *v123++ = v124;
                    --v5;
                  }

                  while (v5);
                }

                break;
              case 1:
                if (a4 == 1)
                {
                  if (v5)
                  {
                    v215 = *(a1 + 2);
                    v216 = *(a2 + 2);
                    v217 = *(a3 + 2);
                    do
                    {
                      v219 = *v215++;
                      v218 = v219;
                      v221 = *v216++;
                      v220 = v221;
                      if (v218 <= v221)
                      {
                        v218 = v220;
                      }

                      *v217++ = v218;
                      --v5;
                    }

                    while (v5);
                  }
                }

                else if (!a4 && v5)
                {
                  v93 = *(a1 + 2);
                  v94 = *(a2 + 2);
                  v95 = *(a3 + 2);
                  do
                  {
                    v97 = *v93++;
                    v96 = v97;
                    v99 = *v94++;
                    v98 = v99;
                    if (v96 <= v99)
                    {
                      v96 = v98;
                    }

                    *v95++ = v96;
                    --v5;
                  }

                  while (v5);
                }

                break;
              case 0:
                if (a4 == 1)
                {
                  if (v5)
                  {
                    v271 = *(a1 + 2);
                    v272 = *(a2 + 2);
                    v273 = *(a3 + 2);
                    do
                    {
                      v274 = *v271++;
                      v275 = v274;
                      v276 = *v272++;
                      v277 = v276;
                      if (v275 <= v276)
                      {
                        v275 = v277;
                      }

                      *v273++ = v275;
                      --v5;
                    }

                    while (v5);
                  }
                }

                else if (!a4 && v5)
                {
                  v46 = *(a1 + 2);
                  v47 = *(a2 + 2);
                  v48 = *(a3 + 2);
                  do
                  {
                    v49 = *v46++;
                    v50 = v49;
                    v51 = *v47++;
                    v52 = v51;
                    if (v50 <= v51)
                    {
                      v50 = v52;
                    }

                    *v48++ = v50;
                    --v5;
                  }

                  while (v5);
                }

                break;
            }

            break;
          case 0:
            switch(v8)
            {
              case 2:
                if (a4 == 1)
                {
                  if (v5)
                  {
                    v340 = *(a1 + 2);
                    v341 = *(a2 + 2);
                    v342 = *(a3 + 2);
                    do
                    {
                      v344 = *v340++;
                      v343 = v344;
                      v345 = *v341++;
                      v346 = v345;
                      if (v343 <= v345)
                      {
                        LOBYTE(v343) = v346;
                      }

                      *v342++ = v343;
                      --v5;
                    }

                    while (v5);
                  }
                }

                else if (!a4 && v5)
                {
                  v175 = *(a1 + 2);
                  v176 = *(a2 + 2);
                  v177 = *(a3 + 2);
                  do
                  {
                    v179 = *v175++;
                    v178 = v179;
                    v180 = *v176++;
                    v181 = v180;
                    if (v178 <= v180)
                    {
                      LOBYTE(v178) = v181;
                    }

                    *v177++ = v178;
                    --v5;
                  }

                  while (v5);
                }

                break;
              case 1:
                if (a4 == 1)
                {
                  if (v5)
                  {
                    v285 = *(a1 + 2);
                    v286 = *(a2 + 2);
                    v287 = *(a3 + 2);
                    do
                    {
                      v289 = *v285++;
                      v288 = v289;
                      v290 = *v286++;
                      v291 = v290;
                      if (v288 <= v290)
                      {
                        v288 = v291;
                      }

                      *v287++ = v288;
                      --v5;
                    }

                    while (v5);
                  }
                }

                else if (!a4 && v5)
                {
                  v142 = *(a1 + 2);
                  v143 = *(a2 + 2);
                  v144 = *(a3 + 2);
                  do
                  {
                    v146 = *v142++;
                    v145 = v146;
                    v147 = *v143++;
                    v148 = v147;
                    if (v145 <= v147)
                    {
                      v145 = v148;
                    }

                    *v144++ = v145;
                    --v5;
                  }

                  while (v5);
                }

                break;
              case 0:
                if (a4 == 1)
                {
                  if (v5)
                  {
                    v353 = *(a1 + 2);
                    v354 = *(a2 + 2);
                    v355 = *(a3 + 2);
                    do
                    {
                      v356 = *v353++;
                      v357 = v356;
                      v358 = *v354++;
                      v359 = v358;
                      if (v358 >= v357)
                      {
                        v357 = v359;
                      }

                      *v355++ = v357;
                      --v5;
                    }

                    while (v5);
                  }
                }

                else if (!a4 && v5)
                {
                  v25 = *(a1 + 2);
                  v26 = *(a2 + 2);
                  v27 = *(a3 + 2);
                  do
                  {
                    v28 = *v25++;
                    v29 = v28;
                    v30 = *v26++;
                    v31 = v30;
                    if (v30 >= v29)
                    {
                      v29 = v31;
                    }

                    *v27++ = v29;
                    --v5;
                  }

                  while (v5);
                }

                break;
            }

            break;
        }
      }

      else if (v6 == 1)
      {
        switch(v7)
        {
          case 2:
            switch(v8)
            {
              case 2:
                if (a4 == 1)
                {
                  if (v5)
                  {
                    v243 = *(a1 + 2);
                    v244 = *(a2 + 2);
                    v245 = *(a3 + 2);
                    do
                    {
                      v247 = *v243;
                      v243 += 8;
                      v246 = v247;
                      v249 = *v244++;
                      v248 = v249;
                      if (v246 <= v249)
                      {
                        LOBYTE(v246) = v248;
                      }

                      *v245++ = v246;
                      --v5;
                    }

                    while (v5);
                  }
                }

                else if (!a4 && v5)
                {
                  v114 = *(a1 + 2);
                  v115 = *(a2 + 2);
                  v116 = *(a3 + 2);
                  do
                  {
                    v118 = *v114;
                    v114 += 8;
                    v117 = v118;
                    v120 = *v115++;
                    v119 = v120;
                    if (v117 <= v120)
                    {
                      LOBYTE(v117) = v119;
                    }

                    *v116++ = v117;
                    --v5;
                  }

                  while (v5);
                }

                break;
              case 1:
                if (a4 == 1)
                {
                  if (v5)
                  {
                    v209 = *(a1 + 2);
                    v210 = *(a2 + 2);
                    v211 = *(a3 + 2);
                    do
                    {
                      v213 = *v209++;
                      v212 = v213;
                      LODWORD(v213) = *v210++;
                      v214 = v213;
                      if (v212 <= v213)
                      {
                        v212 = v214;
                      }

                      *v211++ = v212;
                      --v5;
                    }

                    while (v5);
                  }
                }

                else if (!a4 && v5)
                {
                  v87 = *(a1 + 2);
                  v88 = *(a2 + 2);
                  v89 = *(a3 + 2);
                  do
                  {
                    v91 = *v87++;
                    v90 = v91;
                    LODWORD(v91) = *v88++;
                    v92 = v91;
                    if (v90 <= v91)
                    {
                      v90 = v92;
                    }

                    *v89++ = v90;
                    --v5;
                  }

                  while (v5);
                }

                break;
              case 0:
                if (a4 == 1)
                {
                  if (v5)
                  {
                    v264 = *(a1 + 2);
                    v265 = *(a2 + 2);
                    v266 = *(a3 + 2);
                    do
                    {
                      v267 = *v264++;
                      v268 = v267;
                      LODWORD(v267) = *v265++;
                      v269 = v267;
                      v270 = v268;
                      if (v270 <= v267)
                      {
                        v270 = v269;
                      }

                      *v266++ = v270;
                      --v5;
                    }

                    while (v5);
                  }
                }

                else if (!a4 && v5)
                {
                  v39 = *(a1 + 2);
                  v40 = *(a2 + 2);
                  v41 = *(a3 + 2);
                  do
                  {
                    v42 = *v39++;
                    v43 = v42;
                    LODWORD(v42) = *v40++;
                    v44 = v42;
                    v45 = v43;
                    if (v45 <= v42)
                    {
                      v45 = v44;
                    }

                    *v41++ = v45;
                    --v5;
                  }

                  while (v5);
                }

                break;
            }

            break;
          case 1:
            switch(v8)
            {
              case 2:
                if (a4 == 1)
                {
                  if (v5)
                  {
                    v202 = *(a1 + 2);
                    v203 = *(a2 + 2);
                    v204 = *(a3 + 2);
                    do
                    {
                      v206 = *v202;
                      v202 += 8;
                      v205 = v206;
                      v208 = *v203;
                      v203 += 8;
                      v207 = v208;
                      if (v205 <= v208)
                      {
                        LOBYTE(v205) = v207;
                      }

                      *v204++ = v205;
                      --v5;
                    }

                    while (v5);
                  }
                }

                else if (!a4 && v5)
                {
                  v80 = *(a1 + 2);
                  v81 = *(a2 + 2);
                  v82 = *(a3 + 2);
                  do
                  {
                    v84 = *v80;
                    v80 += 8;
                    v83 = v84;
                    v86 = *v81;
                    v81 += 8;
                    v85 = v86;
                    if (v83 <= v86)
                    {
                      LOBYTE(v83) = v85;
                    }

                    *v82++ = v83;
                    --v5;
                  }

                  while (v5);
                }

                break;
              case 1:
                if (a4 == 1)
                {
                  if (v5)
                  {
                    v195 = *(a1 + 2);
                    v196 = *(a2 + 2);
                    v197 = *(a3 + 2);
                    do
                    {
                      v199 = *v195++;
                      v198 = v199;
                      v201 = *v196++;
                      v200 = v201;
                      if (v198 <= v201)
                      {
                        v198 = v200;
                      }

                      *v197++ = v198;
                      --v5;
                    }

                    while (v5);
                  }
                }

                else if (!a4 && v5)
                {
                  v73 = *(a1 + 2);
                  v74 = *(a2 + 2);
                  v75 = *(a3 + 2);
                  do
                  {
                    v77 = *v73++;
                    v76 = v77;
                    v79 = *v74++;
                    v78 = v79;
                    if (v76 <= v79)
                    {
                      v76 = v78;
                    }

                    *v75++ = v76;
                    --v5;
                  }

                  while (v5);
                }

                break;
              case 0:
                if (a4 == 1)
                {
                  if (v5)
                  {
                    v222 = *(a1 + 2);
                    v223 = *(a2 + 2);
                    v224 = *(a3 + 2);
                    do
                    {
                      v225 = *v222++;
                      v226 = v225;
                      v227 = *v223++;
                      v228 = v227;
                      if (v226 <= v227)
                      {
                        v226 = v228;
                      }

                      *v224++ = v226;
                      --v5;
                    }

                    while (v5);
                  }
                }

                else if (!a4 && v5)
                {
                  v32 = *(a1 + 2);
                  v33 = *(a2 + 2);
                  v34 = *(a3 + 2);
                  do
                  {
                    v35 = *v32++;
                    v36 = v35;
                    v37 = *v33++;
                    v38 = v37;
                    if (v36 <= v37)
                    {
                      v36 = v38;
                    }

                    *v34++ = v36;
                    --v5;
                  }

                  while (v5);
                }

                break;
            }

            break;
          case 0:
            switch(v8)
            {
              case 2:
                if (a4 == 1)
                {
                  if (v5)
                  {
                    v278 = *(a1 + 2);
                    v279 = *(a2 + 2);
                    v280 = *(a3 + 2);
                    do
                    {
                      v282 = *v278;
                      v278 += 8;
                      v281 = v282;
                      v283 = *v279++;
                      v284 = v283;
                      if (v281 <= v283)
                      {
                        LOBYTE(v281) = v284;
                      }

                      *v280++ = v281;
                      --v5;
                    }

                    while (v5);
                  }
                }

                else if (!a4 && v5)
                {
                  v135 = *(a1 + 2);
                  v136 = *(a2 + 2);
                  v137 = *(a3 + 2);
                  do
                  {
                    v139 = *v135;
                    v135 += 8;
                    v138 = v139;
                    v140 = *v136++;
                    v141 = v140;
                    if (v138 <= v140)
                    {
                      LOBYTE(v138) = v141;
                    }

                    *v137++ = v138;
                    --v5;
                  }

                  while (v5);
                }

                break;
              case 1:
                if (a4 == 1)
                {
                  if (v5)
                  {
                    v229 = *(a1 + 2);
                    v230 = *(a2 + 2);
                    v231 = *(a3 + 2);
                    do
                    {
                      v233 = *v229++;
                      v232 = v233;
                      v234 = *v230++;
                      v235 = v234;
                      if (v232 <= v234)
                      {
                        v232 = v235;
                      }

                      *v231++ = v232;
                      --v5;
                    }

                    while (v5);
                  }
                }

                else if (!a4 && v5)
                {
                  v100 = *(a1 + 2);
                  v101 = *(a2 + 2);
                  v102 = *(a3 + 2);
                  do
                  {
                    v104 = *v100++;
                    v103 = v104;
                    v105 = *v101++;
                    v106 = v105;
                    if (v103 <= v105)
                    {
                      v103 = v106;
                    }

                    *v102++ = v103;
                    --v5;
                  }

                  while (v5);
                }

                break;
              case 0:
                if (a4 == 1)
                {
                  if (v5)
                  {
                    v304 = *(a1 + 2);
                    v305 = *(a2 + 2);
                    v306 = *(a3 + 2);
                    do
                    {
                      v307 = *v304++;
                      v308 = v307;
                      v309 = *v305++;
                      v310 = v309;
                      v311 = v308;
                      if (v309 >= v311)
                      {
                        v311 = v310;
                      }

                      *v306++ = v311;
                      --v5;
                    }

                    while (v5);
                  }
                }

                else if (!a4 && v5)
                {
                  v17 = *(a1 + 2);
                  v18 = *(a2 + 2);
                  v19 = *(a3 + 2);
                  do
                  {
                    v20 = *v17++;
                    v21 = v20;
                    v22 = *v18++;
                    v23 = v22;
                    v24 = v21;
                    if (v22 >= v24)
                    {
                      v24 = v23;
                    }

                    *v19++ = v24;
                    --v5;
                  }

                  while (v5);
                }

                break;
            }

            break;
        }
      }

      else if (!v6)
      {
        switch(v7)
        {
          case 2:
            switch(v8)
            {
              case 2:
                if (a4 == 1)
                {
                  if (v5)
                  {
                    v347 = *(a1 + 2);
                    v348 = *(a2 + 2);
                    v349 = *(a3 + 2);
                    do
                    {
                      v350 = *v347++;
                      v351 = v350;
                      LODWORD(v350) = *v348++;
                      v352 = LOBYTE(v350);
                      if (v351 <= LODWORD(v350))
                      {
                        LOBYTE(v351) = v352;
                      }

                      *v349++ = v351;
                      --v5;
                    }

                    while (v5);
                  }
                }

                else if (!a4 && v5)
                {
                  v182 = *(a1 + 2);
                  v183 = *(a2 + 2);
                  v184 = *(a3 + 2);
                  do
                  {
                    v185 = *v182++;
                    v186 = v185;
                    LODWORD(v185) = *v183++;
                    v187 = LOBYTE(v185);
                    if (v186 <= LODWORD(v185))
                    {
                      LOBYTE(v186) = v187;
                    }

                    *v184++ = v186;
                    --v5;
                  }

                  while (v5);
                }

                break;
              case 1:
                if (a4 == 1)
                {
                  if (v5)
                  {
                    v298 = *(a1 + 2);
                    v299 = *(a2 + 2);
                    v300 = *(a3 + 2);
                    do
                    {
                      v301 = *v298++;
                      v302 = v301;
                      LODWORD(v301) = *v299++;
                      v303 = LODWORD(v301);
                      if (v302 <= LODWORD(v301))
                      {
                        v302 = v303;
                      }

                      *v300++ = v302;
                      --v5;
                    }

                    while (v5);
                  }
                }

                else if (!a4 && v5)
                {
                  v155 = *(a1 + 2);
                  v156 = *(a2 + 2);
                  v157 = *(a3 + 2);
                  do
                  {
                    v158 = *v155++;
                    v159 = v158;
                    LODWORD(v158) = *v156++;
                    v160 = LODWORD(v158);
                    if (v159 <= LODWORD(v158))
                    {
                      v159 = v160;
                    }

                    *v157++ = v159;
                    --v5;
                  }

                  while (v5);
                }

                break;
              case 0:
                if (a4 == 1)
                {
                  if (v5)
                  {
                    v360 = *(a1 + 2);
                    v361 = *(a2 + 2);
                    v362 = *(a3 + 2);
                    do
                    {
                      v363 = *v360++;
                      v364 = v363;
                      LODWORD(v363) = *v361++;
                      v365 = LODWORD(v363);
                      if (v364 <= LODWORD(v363))
                      {
                        v364 = v365;
                      }

                      *v362++ = v364;
                      --v5;
                    }

                    while (v5);
                  }
                }

                else if (!a4 && v5)
                {
                  v67 = *(a1 + 2);
                  v68 = *(a2 + 2);
                  v69 = *(a3 + 2);
                  do
                  {
                    v70 = *v67++;
                    v71 = v70;
                    LODWORD(v70) = *v68++;
                    v72 = LODWORD(v70);
                    if (v71 <= LODWORD(v70))
                    {
                      v71 = v72;
                    }

                    *v69++ = v71;
                    --v5;
                  }

                  while (v5);
                }

                break;
            }

            break;
          case 1:
            switch(v8)
            {
              case 2:
                if (a4 == 1)
                {
                  if (v5)
                  {
                    v292 = *(a1 + 2);
                    v293 = *(a2 + 2);
                    v294 = *(a3 + 2);
                    do
                    {
                      v295 = *v292++;
                      v296 = v295;
                      LODWORD(v295) = *v293;
                      v293 += 8;
                      v297 = LOBYTE(v295);
                      if (v296 <= LODWORD(v295))
                      {
                        LOBYTE(v296) = v297;
                      }

                      *v294++ = v296;
                      --v5;
                    }

                    while (v5);
                  }
                }

                else if (!a4 && v5)
                {
                  v149 = *(a1 + 2);
                  v150 = *(a2 + 2);
                  v151 = *(a3 + 2);
                  do
                  {
                    v152 = *v149++;
                    v153 = v152;
                    LODWORD(v152) = *v150;
                    v150 += 8;
                    v154 = LOBYTE(v152);
                    if (v153 <= LODWORD(v152))
                    {
                      LOBYTE(v153) = v154;
                    }

                    *v151++ = v153;
                    --v5;
                  }

                  while (v5);
                }

                break;
              case 1:
                if (a4 == 1)
                {
                  if (v5)
                  {
                    v236 = *(a1 + 2);
                    v237 = *(a2 + 2);
                    v238 = *(a3 + 2);
                    do
                    {
                      v239 = *v236++;
                      v240 = v239;
                      v242 = *v237++;
                      v241 = v242;
                      if (v240 <= v242)
                      {
                        v240 = v241;
                      }

                      *v238++ = v240;
                      --v5;
                    }

                    while (v5);
                  }
                }

                else if (!a4 && v5)
                {
                  v107 = *(a1 + 2);
                  v108 = *(a2 + 2);
                  v109 = *(a3 + 2);
                  do
                  {
                    v110 = *v107++;
                    v111 = v110;
                    v113 = *v108++;
                    v112 = v113;
                    if (v111 <= v113)
                    {
                      v111 = v112;
                    }

                    *v109++ = v111;
                    --v5;
                  }

                  while (v5);
                }

                break;
              case 0:
                if (a4 == 1)
                {
                  if (v5)
                  {
                    v312 = *(a1 + 2);
                    v313 = *(a2 + 2);
                    v314 = *(a3 + 2);
                    do
                    {
                      v315 = *v312++;
                      v316 = v315;
                      v317 = *v313++;
                      v318 = v317;
                      if (v316 <= v317)
                      {
                        v316 = v318;
                      }

                      *v314++ = v316;
                      --v5;
                    }

                    while (v5);
                  }
                }

                else if (!a4 && v5)
                {
                  v53 = *(a1 + 2);
                  v54 = *(a2 + 2);
                  v55 = *(a3 + 2);
                  do
                  {
                    v56 = *v53++;
                    v57 = v56;
                    v58 = *v54++;
                    v59 = v58;
                    if (v57 <= v58)
                    {
                      v57 = v59;
                    }

                    *v55++ = v57;
                    --v5;
                  }

                  while (v5);
                }

                break;
            }

            break;
          case 0:
            switch(v8)
            {
              case 2:
                if (a4 == 1)
                {
                  if (v5)
                  {
                    v366 = *(a1 + 2);
                    v367 = *(a2 + 2);
                    v368 = *(a3 + 2);
                    do
                    {
                      v369 = *v366++;
                      v370 = v369;
                      v371 = *v367++;
                      v372 = v371;
                      if (v370 <= v371)
                      {
                        LOBYTE(v370) = v372;
                      }

                      *v368++ = v370;
                      --v5;
                    }

                    while (v5);
                  }
                }

                else if (!a4 && v5)
                {
                  v188 = *(a1 + 2);
                  v189 = *(a2 + 2);
                  v190 = *(a3 + 2);
                  do
                  {
                    v191 = *v188++;
                    v192 = v191;
                    v193 = *v189++;
                    v194 = v193;
                    if (v192 <= v193)
                    {
                      LOBYTE(v192) = v194;
                    }

                    *v190++ = v192;
                    --v5;
                  }

                  while (v5);
                }

                break;
              case 1:
                if (a4 == 1)
                {
                  if (v5)
                  {
                    v319 = *(a1 + 2);
                    v320 = *(a2 + 2);
                    v321 = *(a3 + 2);
                    do
                    {
                      v322 = *v319++;
                      v323 = v322;
                      v324 = *v320++;
                      v325 = v324;
                      if (v323 <= v324)
                      {
                        v323 = v325;
                      }

                      *v321++ = v323;
                      --v5;
                    }

                    while (v5);
                  }
                }

                else if (!a4 && v5)
                {
                  v161 = *(a1 + 2);
                  v162 = *(a2 + 2);
                  v163 = *(a3 + 2);
                  do
                  {
                    v164 = *v161++;
                    v165 = v164;
                    v166 = *v162++;
                    v167 = v166;
                    if (v165 <= v166)
                    {
                      v165 = v167;
                    }

                    *v163++ = v165;
                    --v5;
                  }

                  while (v5);
                }

                break;
              case 0:
                if (a4 == 1)
                {
                  if (v5)
                  {
                    v373 = *(a1 + 2);
                    v374 = *(a2 + 2);
                    v375 = *(a3 + 2);
                    do
                    {
                      v376 = *v373++;
                      v377 = v376;
                      v378 = *v374++;
                      v379 = v378;
                      if (v377 <= v378)
                      {
                        v377 = v379;
                      }

                      *v375++ = v377;
                      --v5;
                    }

                    while (v5);
                  }
                }

                else if (!a4 && v5)
                {
                  v9 = *(a1 + 2);
                  v10 = *(a2 + 2);
                  v11 = *(a3 + 2);
                  do
                  {
                    v12 = *v9++;
                    v13 = v12;
                    v14 = *v10++;
                    v15 = v14;
                    if (v13 <= v14)
                    {
                      v13 = v15;
                    }

                    *v11++ = v13;
                    --v5;
                  }

                  while (v5);
                }

                break;
            }

            break;
        }
      }

      return a3;
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

int *agxps_timeseries_max_st(int a1, unint64_t a2, int *a3, int *a4, int a5)
{
  result = 0;
  if (a3 && a4)
  {
    if (a4[8])
    {
      return 0;
    }

    v7 = *(a3 + 1);
    if (v7 != *(a4 + 1))
    {
      return 0;
    }

    else
    {
      v8 = *a3;
      v9 = *a4;
      switch(a1)
      {
        case 2:
          switch(v8)
          {
            case 2:
              switch(v9)
              {
                case 2:
                  if (a5 == 1)
                  {
                    if (v7)
                    {
                      v194 = *(a3 + 2);
                      v195 = *(a4 + 2);
                      do
                      {
                        v197 = *v194++;
                        v196 = v197;
                        if (a2 > v197)
                        {
                          v196 = a2;
                        }

                        *v195++ = v196;
                        --v7;
                      }

                      while (v7);
                    }
                  }

                  else if (!a5 && v7)
                  {
                    v102 = *(a3 + 2);
                    v103 = *(a4 + 2);
                    do
                    {
                      v105 = *v102++;
                      v104 = v105;
                      if (a2 > v105)
                      {
                        v104 = a2;
                      }

                      *v103++ = v104;
                      --v7;
                    }

                    while (v7);
                  }

                  break;
                case 1:
                  if (a5 == 1)
                  {
                    if (v7)
                    {
                      v154 = *(a3 + 2);
                      v155 = *(a4 + 2);
                      do
                      {
                        v157 = *v154++;
                        v156 = v157;
                        if (a2 > v157)
                        {
                          v156 = a2;
                        }

                        *v155++ = v156;
                        --v7;
                      }

                      while (v7);
                    }
                  }

                  else if (!a5 && v7)
                  {
                    v78 = *(a3 + 2);
                    v79 = *(a4 + 2);
                    do
                    {
                      v81 = *v78++;
                      v80 = v81;
                      if (a2 > v81)
                      {
                        v80 = a2;
                      }

                      *v79++ = v80;
                      --v7;
                    }

                    while (v7);
                  }

                  break;
                case 0:
                  if (a5 == 1)
                  {
                    if (v7)
                    {
                      v198 = *(a3 + 2);
                      v199 = *(a4 + 2);
                      do
                      {
                        v200 = *v198++;
                        v201 = v200;
                        if (a2 > v200)
                        {
                          v201 = a2;
                        }

                        *v199++ = v201;
                        --v7;
                      }

                      while (v7);
                    }
                  }

                  else if (!a5 && v7)
                  {
                    v38 = *(a3 + 2);
                    v39 = *(a4 + 2);
                    do
                    {
                      v40 = *v38++;
                      v41 = v40;
                      if (a2 > v40)
                      {
                        v41 = a2;
                      }

                      *v39++ = v41;
                      --v7;
                    }

                    while (v7);
                  }

                  break;
              }

              break;
            case 1:
              switch(v9)
              {
                case 2:
                  if (a5 == 1)
                  {
                    if (v7)
                    {
                      v150 = *(a3 + 2);
                      v151 = *(a4 + 2);
                      do
                      {
                        v153 = *v150;
                        v150 += 8;
                        v152 = v153;
                        if (a2 > v153)
                        {
                          v152 = a2;
                        }

                        *v151++ = v152;
                        --v7;
                      }

                      while (v7);
                    }
                  }

                  else if (!a5 && v7)
                  {
                    v74 = *(a3 + 2);
                    v75 = *(a4 + 2);
                    do
                    {
                      v77 = *v74;
                      v74 += 8;
                      v76 = v77;
                      if (a2 > v77)
                      {
                        v76 = a2;
                      }

                      *v75++ = v76;
                      --v7;
                    }

                    while (v7);
                  }

                  break;
                case 1:
                  if (a5 == 1)
                  {
                    if (v7)
                    {
                      v130 = *(a3 + 2);
                      v131 = *(a4 + 2);
                      do
                      {
                        v133 = *v130++;
                        v132 = v133;
                        if (a2 > v133)
                        {
                          v132 = a2;
                        }

                        *v131++ = v132;
                        --v7;
                      }

                      while (v7);
                    }
                  }

                  else if (!a5 && v7)
                  {
                    v58 = *(a3 + 2);
                    v59 = *(a4 + 2);
                    do
                    {
                      v61 = *v58++;
                      v60 = v61;
                      if (a2 > v61)
                      {
                        v60 = a2;
                      }

                      *v59++ = v60;
                      --v7;
                    }

                    while (v7);
                  }

                  break;
                case 0:
                  if (a5 == 1)
                  {
                    if (v7)
                    {
                      v162 = *(a3 + 2);
                      v163 = *(a4 + 2);
                      do
                      {
                        v164 = *v162++;
                        v165 = v164;
                        if (a2 > v164)
                        {
                          v165 = a2;
                        }

                        *v163++ = v165;
                        --v7;
                      }

                      while (v7);
                    }
                  }

                  else if (!a5 && v7)
                  {
                    v30 = *(a3 + 2);
                    v31 = *(a4 + 2);
                    do
                    {
                      v32 = *v30++;
                      v33 = v32;
                      if (a2 > v32)
                      {
                        v33 = a2;
                      }

                      *v31++ = v33;
                      --v7;
                    }

                    while (v7);
                  }

                  break;
              }

              break;
            case 0:
              switch(v9)
              {
                case 2:
                  if (a5 == 1)
                  {
                    if (v7)
                    {
                      v202 = *(a3 + 2);
                      v203 = *(a4 + 2);
                      do
                      {
                        v204 = *v202++;
                        v205 = v204;
                        if (a2 > v204)
                        {
                          LOBYTE(v205) = a2;
                        }

                        *v203++ = v205;
                        --v7;
                      }

                      while (v7);
                    }
                  }

                  else if (!a5 && v7)
                  {
                    v106 = *(a3 + 2);
                    v107 = *(a4 + 2);
                    do
                    {
                      v108 = *v106++;
                      v109 = v108;
                      if (a2 > v108)
                      {
                        LOBYTE(v109) = a2;
                      }

                      *v107++ = v109;
                      --v7;
                    }

                    while (v7);
                  }

                  break;
                case 1:
                  if (a5 == 1)
                  {
                    if (v7)
                    {
                      v170 = *(a3 + 2);
                      v171 = *(a4 + 2);
                      do
                      {
                        v172 = *v170++;
                        v173 = v172;
                        if (a2 > v172)
                        {
                          v173 = a2;
                        }

                        *v171++ = v173;
                        --v7;
                      }

                      while (v7);
                    }
                  }

                  else if (!a5 && v7)
                  {
                    v86 = *(a3 + 2);
                    v87 = *(a4 + 2);
                    do
                    {
                      v88 = *v86++;
                      v89 = v88;
                      if (a2 > v88)
                      {
                        v89 = a2;
                      }

                      *v87++ = v89;
                      --v7;
                    }

                    while (v7);
                  }

                  break;
                case 0:
                  if (a5 == 1)
                  {
                    if (v7)
                    {
                      v210 = *(a3 + 2);
                      v211 = *(a4 + 2);
                      do
                      {
                        v212 = *v210++;
                        v213 = v212;
                        if (v212 < a2)
                        {
                          v213 = a2;
                        }

                        *v211++ = v213;
                        --v7;
                      }

                      while (v7);
                    }
                  }

                  else if (!a5 && v7)
                  {
                    v18 = *(a3 + 2);
                    v19 = *(a4 + 2);
                    do
                    {
                      v20 = *v18++;
                      v21 = v20;
                      if (v20 < a2)
                      {
                        v21 = a2;
                      }

                      *v19++ = v21;
                      --v7;
                    }

                    while (v7);
                  }

                  break;
              }

              break;
          }

          break;
        case 1:
          switch(v8)
          {
            case 2:
              switch(v9)
              {
                case 2:
                  if (a5 == 1)
                  {
                    if (v7)
                    {
                      v146 = *(a3 + 2);
                      v147 = *(a4 + 2);
                      do
                      {
                        v149 = *v146++;
                        v148 = v149;
                        if (a2 > v149)
                        {
                          v148 = a2;
                        }

                        *v147++ = v148;
                        --v7;
                      }

                      while (v7);
                    }
                  }

                  else if (!a5 && v7)
                  {
                    v70 = *(a3 + 2);
                    v71 = *(a4 + 2);
                    do
                    {
                      v73 = *v70++;
                      v72 = v73;
                      if (a2 > v73)
                      {
                        v72 = a2;
                      }

                      *v71++ = v72;
                      --v7;
                    }

                    while (v7);
                  }

                  break;
                case 1:
                  if (a5 == 1)
                  {
                    if (v7)
                    {
                      v126 = *(a3 + 2);
                      v127 = *(a4 + 2);
                      do
                      {
                        v129 = *v126++;
                        v128 = v129;
                        if (a2 > v129)
                        {
                          v128 = a2;
                        }

                        *v127++ = v128;
                        --v7;
                      }

                      while (v7);
                    }
                  }

                  else if (!a5 && v7)
                  {
                    v54 = *(a3 + 2);
                    v55 = *(a4 + 2);
                    do
                    {
                      v57 = *v54++;
                      v56 = v57;
                      if (a2 > v57)
                      {
                        v56 = a2;
                      }

                      *v55++ = v56;
                      --v7;
                    }

                    while (v7);
                  }

                  break;
                case 0:
                  if (a5 == 1)
                  {
                    if (v7)
                    {
                      v158 = *(a3 + 2);
                      v159 = *(a4 + 2);
                      do
                      {
                        v160 = *v158++;
                        v161 = v160;
                        if (a2 > v160)
                        {
                          v161 = a2;
                        }

                        *v159++ = v161;
                        --v7;
                      }

                      while (v7);
                    }
                  }

                  else if (!a5 && v7)
                  {
                    v26 = *(a3 + 2);
                    v27 = *(a4 + 2);
                    do
                    {
                      v28 = *v26++;
                      v29 = v28;
                      if (a2 > v28)
                      {
                        v29 = a2;
                      }

                      *v27++ = v29;
                      --v7;
                    }

                    while (v7);
                  }

                  break;
              }

              break;
            case 1:
              switch(v9)
              {
                case 2:
                  if (a5 == 1)
                  {
                    if (v7)
                    {
                      v122 = *(a3 + 2);
                      v123 = *(a4 + 2);
                      do
                      {
                        v125 = *v122;
                        v122 += 8;
                        v124 = v125;
                        if (a2 > v125)
                        {
                          v124 = a2;
                        }

                        *v123++ = v124;
                        --v7;
                      }

                      while (v7);
                    }
                  }

                  else if (!a5 && v7)
                  {
                    v50 = *(a3 + 2);
                    v51 = *(a4 + 2);
                    do
                    {
                      v53 = *v50;
                      v50 += 8;
                      v52 = v53;
                      if (a2 > v53)
                      {
                        v52 = a2;
                      }

                      *v51++ = v52;
                      --v7;
                    }

                    while (v7);
                  }

                  break;
                case 1:
                  if (a5 == 1)
                  {
                    if (v7)
                    {
                      v118 = *(a3 + 2);
                      v119 = *(a4 + 2);
                      do
                      {
                        v121 = *v118++;
                        v120 = v121;
                        if (a2 > v121)
                        {
                          v120 = a2;
                        }

                        *v119++ = v120;
                        --v7;
                      }

                      while (v7);
                    }
                  }

                  else if (!a5 && v7)
                  {
                    v46 = *(a3 + 2);
                    v47 = *(a4 + 2);
                    do
                    {
                      v49 = *v46++;
                      v48 = v49;
                      if (a2 > v49)
                      {
                        v48 = a2;
                      }

                      *v47++ = v48;
                      --v7;
                    }

                    while (v7);
                  }

                  break;
                case 0:
                  if (a5 == 1)
                  {
                    if (v7)
                    {
                      v134 = *(a3 + 2);
                      v135 = *(a4 + 2);
                      do
                      {
                        v136 = *v134++;
                        v137 = v136;
                        if (a2 > v136)
                        {
                          v137 = a2;
                        }

                        *v135++ = v137;
                        --v7;
                      }

                      while (v7);
                    }
                  }

                  else if (!a5 && v7)
                  {
                    v22 = *(a3 + 2);
                    v23 = *(a4 + 2);
                    do
                    {
                      v24 = *v22++;
                      v25 = v24;
                      if (a2 > v24)
                      {
                        v25 = a2;
                      }

                      *v23++ = v25;
                      --v7;
                    }

                    while (v7);
                  }

                  break;
              }

              break;
            case 0:
              switch(v9)
              {
                case 2:
                  if (a5 == 1)
                  {
                    if (v7)
                    {
                      v166 = *(a3 + 2);
                      v167 = *(a4 + 2);
                      do
                      {
                        v168 = *v166++;
                        v169 = v168;
                        if (a2 > v168)
                        {
                          LOBYTE(v169) = a2;
                        }

                        *v167++ = v169;
                        --v7;
                      }

                      while (v7);
                    }
                  }

                  else if (!a5 && v7)
                  {
                    v82 = *(a3 + 2);
                    v83 = *(a4 + 2);
                    do
                    {
                      v84 = *v82++;
                      v85 = v84;
                      if (a2 > v84)
                      {
                        LOBYTE(v85) = a2;
                      }

                      *v83++ = v85;
                      --v7;
                    }

                    while (v7);
                  }

                  break;
                case 1:
                  if (a5 == 1)
                  {
                    if (v7)
                    {
                      v138 = *(a3 + 2);
                      v139 = *(a4 + 2);
                      do
                      {
                        v140 = *v138++;
                        v141 = v140;
                        if (a2 > v140)
                        {
                          v141 = a2;
                        }

                        *v139++ = v141;
                        --v7;
                      }

                      while (v7);
                    }
                  }

                  else if (!a5 && v7)
                  {
                    v62 = *(a3 + 2);
                    v63 = *(a4 + 2);
                    do
                    {
                      v64 = *v62++;
                      v65 = v64;
                      if (a2 > v64)
                      {
                        v65 = a2;
                      }

                      *v63++ = v65;
                      --v7;
                    }

                    while (v7);
                  }

                  break;
                case 0:
                  if (a5 == 1)
                  {
                    if (v7)
                    {
                      v182 = *(a3 + 2);
                      v183 = *(a4 + 2);
                      do
                      {
                        v184 = *v182++;
                        v185 = v184;
                        if (v184 < a2)
                        {
                          v185 = a2;
                        }

                        *v183++ = v185;
                        --v7;
                      }

                      while (v7);
                    }
                  }

                  else if (!a5 && v7)
                  {
                    v14 = *(a3 + 2);
                    v15 = *(a4 + 2);
                    do
                    {
                      v16 = *v14++;
                      v17 = v16;
                      if (v16 < a2)
                      {
                        v17 = a2;
                      }

                      *v15++ = v17;
                      --v7;
                    }

                    while (v7);
                  }

                  break;
              }

              break;
          }

          break;
        case 0:
          switch(v8)
          {
            case 2:
              switch(v9)
              {
                case 2:
                  if (a5 == 1)
                  {
                    if (v7)
                    {
                      v206 = *(a3 + 2);
                      v207 = *(a4 + 2);
                      do
                      {
                        v209 = *v206++;
                        v208 = v209;
                        if (*&a2 > v209)
                        {
                          v208 = *&a2;
                        }

                        *v207++ = v208;
                        --v7;
                      }

                      while (v7);
                    }
                  }

                  else if (!a5 && v7)
                  {
                    v110 = *(a3 + 2);
                    v111 = *(a4 + 2);
                    do
                    {
                      v113 = *v110++;
                      v112 = v113;
                      if (*&a2 > v113)
                      {
                        v112 = *&a2;
                      }

                      *v111++ = v112;
                      --v7;
                    }

                    while (v7);
                  }

                  break;
                case 1:
                  if (a5 == 1)
                  {
                    if (v7)
                    {
                      v178 = *(a3 + 2);
                      v179 = *(a4 + 2);
                      do
                      {
                        v181 = *v178++;
                        v180 = v181;
                        if (*&a2 > v181)
                        {
                          v180 = *&a2;
                        }

                        *v179++ = v180;
                        --v7;
                      }

                      while (v7);
                    }
                  }

                  else if (!a5 && v7)
                  {
                    v94 = *(a3 + 2);
                    v95 = *(a4 + 2);
                    do
                    {
                      v97 = *v94++;
                      v96 = v97;
                      if (*&a2 > v97)
                      {
                        v96 = *&a2;
                      }

                      *v95++ = v96;
                      --v7;
                    }

                    while (v7);
                  }

                  break;
                case 0:
                  if (a5 == 1)
                  {
                    if (v7)
                    {
                      v214 = *(a3 + 2);
                      v215 = *(a4 + 2);
                      do
                      {
                        v216 = *v214++;
                        v217 = v216;
                        if (*&a2 > v216)
                        {
                          v217 = *&a2;
                        }

                        *v215++ = v217;
                        --v7;
                      }

                      while (v7);
                    }
                  }

                  else if (!a5 && v7)
                  {
                    v42 = *(a3 + 2);
                    v43 = *(a4 + 2);
                    do
                    {
                      v44 = *v42++;
                      v45 = v44;
                      if (*&a2 > v44)
                      {
                        v45 = *&a2;
                      }

                      *v43++ = v45;
                      --v7;
                    }

                    while (v7);
                  }

                  break;
              }

              break;
            case 1:
              switch(v9)
              {
                case 2:
                  if (a5 == 1)
                  {
                    if (v7)
                    {
                      v174 = *(a3 + 2);
                      v175 = *(a4 + 2);
                      do
                      {
                        v177 = *v174;
                        v174 += 8;
                        v176 = v177;
                        if (*&a2 > v177)
                        {
                          v176 = *&a2;
                        }

                        *v175++ = v176;
                        --v7;
                      }

                      while (v7);
                    }
                  }

                  else if (!a5 && v7)
                  {
                    v90 = *(a3 + 2);
                    v91 = *(a4 + 2);
                    do
                    {
                      v93 = *v90;
                      v90 += 8;
                      v92 = v93;
                      if (*&a2 > v93)
                      {
                        v92 = *&a2;
                      }

                      *v91++ = v92;
                      --v7;
                    }

                    while (v7);
                  }

                  break;
                case 1:
                  if (a5 == 1)
                  {
                    if (v7)
                    {
                      v142 = *(a3 + 2);
                      v143 = *(a4 + 2);
                      do
                      {
                        v145 = *v142++;
                        v144 = v145;
                        if (*&a2 > v145)
                        {
                          v144 = *&a2;
                        }

                        *v143++ = v144;
                        --v7;
                      }

                      while (v7);
                    }
                  }

                  else if (!a5 && v7)
                  {
                    v66 = *(a3 + 2);
                    v67 = *(a4 + 2);
                    do
                    {
                      v69 = *v66++;
                      v68 = v69;
                      if (*&a2 > v69)
                      {
                        v68 = *&a2;
                      }

                      *v67++ = v68;
                      --v7;
                    }

                    while (v7);
                  }

                  break;
                case 0:
                  if (a5 == 1)
                  {
                    if (v7)
                    {
                      v186 = *(a3 + 2);
                      v187 = *(a4 + 2);
                      do
                      {
                        v188 = *v186++;
                        v189 = v188;
                        if (*&a2 > v188)
                        {
                          v189 = *&a2;
                        }

                        *v187++ = v189;
                        --v7;
                      }

                      while (v7);
                    }
                  }

                  else if (!a5 && v7)
                  {
                    v34 = *(a3 + 2);
                    v35 = *(a4 + 2);
                    do
                    {
                      v36 = *v34++;
                      v37 = v36;
                      if (*&a2 > v36)
                      {
                        v37 = *&a2;
                      }

                      *v35++ = v37;
                      --v7;
                    }

                    while (v7);
                  }

                  break;
              }

              break;
            case 0:
              switch(v9)
              {
                case 2:
                  if (a5 == 1)
                  {
                    if (v7)
                    {
                      v218 = *(a3 + 2);
                      v219 = *(a4 + 2);
                      do
                      {
                        v220 = *v218++;
                        v221 = v220;
                        if (*&a2 > v220)
                        {
                          LOBYTE(v221) = *&a2;
                        }

                        *v219++ = v221;
                        --v7;
                      }

                      while (v7);
                    }
                  }

                  else if (!a5 && v7)
                  {
                    v114 = *(a3 + 2);
                    v115 = *(a4 + 2);
                    do
                    {
                      v116 = *v114++;
                      v117 = v116;
                      if (*&a2 > v116)
                      {
                        LOBYTE(v117) = *&a2;
                      }

                      *v115++ = v117;
                      --v7;
                    }

                    while (v7);
                  }

                  break;
                case 1:
                  if (a5 == 1)
                  {
                    if (v7)
                    {
                      v190 = *(a3 + 2);
                      v191 = *(a4 + 2);
                      do
                      {
                        v192 = *v190++;
                        v193 = v192;
                        if (*&a2 > v192)
                        {
                          v193 = *&a2;
                        }

                        *v191++ = v193;
                        --v7;
                      }

                      while (v7);
                    }
                  }

                  else if (!a5 && v7)
                  {
                    v98 = *(a3 + 2);
                    v99 = *(a4 + 2);
                    do
                    {
                      v100 = *v98++;
                      v101 = v100;
                      if (*&a2 > v100)
                      {
                        v101 = *&a2;
                      }

                      *v99++ = v101;
                      --v7;
                    }

                    while (v7);
                  }

                  break;
                case 0:
                  if (a5 == 1)
                  {
                    if (v7)
                    {
                      v222 = *(a3 + 2);
                      v223 = *(a4 + 2);
                      do
                      {
                        v224 = *v222++;
                        v225 = v224;
                        if (v224 < *&a2)
                        {
                          v225 = *&a2;
                        }

                        *v223++ = v225;
                        --v7;
                      }

                      while (v7);
                    }
                  }

                  else if (!a5 && v7)
                  {
                    v10 = *(a3 + 2);
                    v11 = *(a4 + 2);
                    do
                    {
                      v12 = *v10++;
                      v13 = v12;
                      if (v12 < *&a2)
                      {
                        v13 = *&a2;
                      }

                      *v11++ = v13;
                      --v7;
                    }

                    while (v7);
                  }

                  break;
              }

              break;
          }

          break;
      }

      return a4;
    }
  }

  return result;
}

int *agxps_timeseries_max_ts(int *a1, int a2, unint64_t a3, int *a4, int a5)
{
  v5 = 0;
  if (a1 && a4)
  {
    if (a4[8])
    {
      return 0;
    }

    v6 = *(a1 + 1);
    if (v6 != *(a4 + 1))
    {
      return 0;
    }

    else
    {
      v7 = *a1;
      v8 = *a4;
      if (*a1 == 2)
      {
        switch(a2)
        {
          case 2:
            switch(v8)
            {
              case 2:
                if (a5 == 1)
                {
                  if (v6)
                  {
                    v193 = *(a1 + 2);
                    v194 = *(a4 + 2);
                    do
                    {
                      v196 = *v193++;
                      v195 = v196;
                      if (v196 <= a3)
                      {
                        v195 = a3;
                      }

                      *v194++ = v195;
                      --v6;
                    }

                    while (v6);
                  }
                }

                else if (!a5 && v6)
                {
                  v101 = *(a1 + 2);
                  v102 = *(a4 + 2);
                  do
                  {
                    v104 = *v101++;
                    v103 = v104;
                    if (v104 <= a3)
                    {
                      v103 = a3;
                    }

                    *v102++ = v103;
                    --v6;
                  }

                  while (v6);
                }

                break;
              case 1:
                if (a5 == 1)
                {
                  if (v6)
                  {
                    v153 = *(a1 + 2);
                    v154 = *(a4 + 2);
                    do
                    {
                      v156 = *v153++;
                      v155 = v156;
                      if (v156 <= a3)
                      {
                        v155 = a3;
                      }

                      *v154++ = v155;
                      --v6;
                    }

                    while (v6);
                  }
                }

                else if (!a5 && v6)
                {
                  v77 = *(a1 + 2);
                  v78 = *(a4 + 2);
                  do
                  {
                    v80 = *v77++;
                    v79 = v80;
                    if (v80 <= a3)
                    {
                      v79 = a3;
                    }

                    *v78++ = v79;
                    --v6;
                  }

                  while (v6);
                }

                break;
              case 0:
                if (a5 == 1)
                {
                  if (v6)
                  {
                    v197 = *(a1 + 2);
                    v198 = *(a4 + 2);
                    do
                    {
                      v199 = *v197++;
                      v200 = v199;
                      if (v199 <= a3)
                      {
                        v200 = a3;
                      }

                      *v198++ = v200;
                      --v6;
                    }

                    while (v6);
                  }
                }

                else if (!a5 && v6)
                {
                  v37 = *(a1 + 2);
                  v38 = *(a4 + 2);
                  do
                  {
                    v39 = *v37++;
                    v40 = v39;
                    if (v39 <= a3)
                    {
                      v40 = a3;
                    }

                    *v38++ = v40;
                    --v6;
                  }

                  while (v6);
                }

                break;
            }

            break;
          case 1:
            switch(v8)
            {
              case 2:
                if (a5 == 1)
                {
                  if (v6)
                  {
                    v149 = *(a1 + 2);
                    v150 = *(a4 + 2);
                    do
                    {
                      v152 = *v149++;
                      v151 = v152;
                      if (v152 <= a3)
                      {
                        v151 = a3;
                      }

                      *v150++ = v151;
                      --v6;
                    }

                    while (v6);
                  }
                }

                else if (!a5 && v6)
                {
                  v73 = *(a1 + 2);
                  v74 = *(a4 + 2);
                  do
                  {
                    v76 = *v73++;
                    v75 = v76;
                    if (v76 <= a3)
                    {
                      v75 = a3;
                    }

                    *v74++ = v75;
                    --v6;
                  }

                  while (v6);
                }

                break;
              case 1:
                if (a5 == 1)
                {
                  if (v6)
                  {
                    v129 = *(a1 + 2);
                    v130 = *(a4 + 2);
                    do
                    {
                      v132 = *v129++;
                      v131 = v132;
                      if (v132 <= a3)
                      {
                        v131 = a3;
                      }

                      *v130++ = v131;
                      --v6;
                    }

                    while (v6);
                  }
                }

                else if (!a5 && v6)
                {
                  v57 = *(a1 + 2);
                  v58 = *(a4 + 2);
                  do
                  {
                    v60 = *v57++;
                    v59 = v60;
                    if (v60 <= a3)
                    {
                      v59 = a3;
                    }

                    *v58++ = v59;
                    --v6;
                  }

                  while (v6);
                }

                break;
              case 0:
                if (a5 == 1)
                {
                  if (v6)
                  {
                    v161 = *(a1 + 2);
                    v162 = *(a4 + 2);
                    do
                    {
                      v163 = *v161++;
                      v164 = v163;
                      if (v163 <= a3)
                      {
                        v164 = a3;
                      }

                      *v162++ = v164;
                      --v6;
                    }

                    while (v6);
                  }
                }

                else if (!a5 && v6)
                {
                  v29 = *(a1 + 2);
                  v30 = *(a4 + 2);
                  do
                  {
                    v31 = *v29++;
                    v32 = v31;
                    if (v31 <= a3)
                    {
                      v32 = a3;
                    }

                    *v30++ = v32;
                    --v6;
                  }

                  while (v6);
                }

                break;
            }

            break;
          case 0:
            switch(v8)
            {
              case 2:
                if (a5 == 1)
                {
                  if (v6)
                  {
                    v201 = *(a1 + 2);
                    v202 = *(a4 + 2);
                    do
                    {
                      v204 = *v201++;
                      v203 = v204;
                      if (v204 <= *&a3)
                      {
                        v203 = *&a3;
                      }

                      *v202++ = v203;
                      --v6;
                    }

                    while (v6);
                  }
                }

                else if (!a5 && v6)
                {
                  v105 = *(a1 + 2);
                  v106 = *(a4 + 2);
                  do
                  {
                    v108 = *v105++;
                    v107 = v108;
                    if (v108 <= *&a3)
                    {
                      v107 = *&a3;
                    }

                    *v106++ = v107;
                    --v6;
                  }

                  while (v6);
                }

                break;
              case 1:
                if (a5 == 1)
                {
                  if (v6)
                  {
                    v169 = *(a1 + 2);
                    v170 = *(a4 + 2);
                    do
                    {
                      v172 = *v169++;
                      v171 = v172;
                      if (v172 <= *&a3)
                      {
                        v171 = *&a3;
                      }

                      *v170++ = v171;
                      --v6;
                    }

                    while (v6);
                  }
                }

                else if (!a5 && v6)
                {
                  v85 = *(a1 + 2);
                  v86 = *(a4 + 2);
                  do
                  {
                    v88 = *v85++;
                    v87 = v88;
                    if (v88 <= *&a3)
                    {
                      v87 = *&a3;
                    }

                    *v86++ = v87;
                    --v6;
                  }

                  while (v6);
                }

                break;
              case 0:
                if (a5 == 1)
                {
                  if (v6)
                  {
                    v209 = *(a1 + 2);
                    v210 = *(a4 + 2);
                    do
                    {
                      v211 = *v209++;
                      v212 = v211;
                      if (*&a3 >= v211)
                      {
                        v212 = *&a3;
                      }

                      *v210++ = v212;
                      --v6;
                    }

                    while (v6);
                  }
                }

                else if (!a5 && v6)
                {
                  v17 = *(a1 + 2);
                  v18 = *(a4 + 2);
                  do
                  {
                    v19 = *v17++;
                    v20 = v19;
                    if (*&a3 >= v19)
                    {
                      v20 = *&a3;
                    }

                    *v18++ = v20;
                    --v6;
                  }

                  while (v6);
                }

                break;
            }

            break;
        }
      }

      else if (v7 == 1)
      {
        switch(a2)
        {
          case 2:
            switch(v8)
            {
              case 2:
                if (a5 == 1)
                {
                  if (v6)
                  {
                    v145 = *(a1 + 2);
                    v146 = *(a4 + 2);
                    do
                    {
                      v148 = *v145;
                      v145 += 8;
                      v147 = v148;
                      if (v148 <= a3)
                      {
                        v147 = a3;
                      }

                      *v146++ = v147;
                      --v6;
                    }

                    while (v6);
                  }
                }

                else if (!a5 && v6)
                {
                  v69 = *(a1 + 2);
                  v70 = *(a4 + 2);
                  do
                  {
                    v72 = *v69;
                    v69 += 8;
                    v71 = v72;
                    if (v72 <= a3)
                    {
                      v71 = a3;
                    }

                    *v70++ = v71;
                    --v6;
                  }

                  while (v6);
                }

                break;
              case 1:
                if (a5 == 1)
                {
                  if (v6)
                  {
                    v125 = *(a1 + 2);
                    v126 = *(a4 + 2);
                    do
                    {
                      v128 = *v125++;
                      v127 = v128;
                      if (v128 <= a3)
                      {
                        v127 = a3;
                      }

                      *v126++ = v127;
                      --v6;
                    }

                    while (v6);
                  }
                }

                else if (!a5 && v6)
                {
                  v53 = *(a1 + 2);
                  v54 = *(a4 + 2);
                  do
                  {
                    v56 = *v53++;
                    v55 = v56;
                    if (v56 <= a3)
                    {
                      v55 = a3;
                    }

                    *v54++ = v55;
                    --v6;
                  }

                  while (v6);
                }

                break;
              case 0:
                if (a5 == 1)
                {
                  if (v6)
                  {
                    v157 = *(a1 + 2);
                    v158 = *(a4 + 2);
                    do
                    {
                      v159 = *v157++;
                      v160 = v159;
                      if (v159 <= a3)
                      {
                        v160 = a3;
                      }

                      *v158++ = v160;
                      --v6;
                    }

                    while (v6);
                  }
                }

                else if (!a5 && v6)
                {
                  v25 = *(a1 + 2);
                  v26 = *(a4 + 2);
                  do
                  {
                    v27 = *v25++;
                    v28 = v27;
                    if (v27 <= a3)
                    {
                      v28 = a3;
                    }

                    *v26++ = v28;
                    --v6;
                  }

                  while (v6);
                }

                break;
            }

            break;
          case 1:
            switch(v8)
            {
              case 2:
                if (a5 == 1)
                {
                  if (v6)
                  {
                    v121 = *(a1 + 2);
                    v122 = *(a4 + 2);
                    do
                    {
                      v124 = *v121;
                      v121 += 8;
                      v123 = v124;
                      if (v124 <= a3)
                      {
                        v123 = a3;
                      }

                      *v122++ = v123;
                      --v6;
                    }

                    while (v6);
                  }
                }

                else if (!a5 && v6)
                {
                  v49 = *(a1 + 2);
                  v50 = *(a4 + 2);
                  do
                  {
                    v52 = *v49;
                    v49 += 8;
                    v51 = v52;
                    if (v52 <= a3)
                    {
                      v51 = a3;
                    }

                    *v50++ = v51;
                    --v6;
                  }

                  while (v6);
                }

                break;
              case 1:
                if (a5 == 1)
                {
                  if (v6)
                  {
                    v117 = *(a1 + 2);
                    v118 = *(a4 + 2);
                    do
                    {
                      v120 = *v117++;
                      v119 = v120;
                      if (v120 <= a3)
                      {
                        v119 = a3;
                      }

                      *v118++ = v119;
                      --v6;
                    }

                    while (v6);
                  }
                }

                else if (!a5 && v6)
                {
                  v45 = *(a1 + 2);
                  v46 = *(a4 + 2);
                  do
                  {
                    v48 = *v45++;
                    v47 = v48;
                    if (v48 <= a3)
                    {
                      v47 = a3;
                    }

                    *v46++ = v47;
                    --v6;
                  }

                  while (v6);
                }

                break;
              case 0:
                if (a5 == 1)
                {
                  if (v6)
                  {
                    v133 = *(a1 + 2);
                    v134 = *(a4 + 2);
                    do
                    {
                      v135 = *v133++;
                      v136 = v135;
                      if (v135 <= a3)
                      {
                        v136 = a3;
                      }

                      *v134++ = v136;
                      --v6;
                    }

                    while (v6);
                  }
                }

                else if (!a5 && v6)
                {
                  v21 = *(a1 + 2);
                  v22 = *(a4 + 2);
                  do
                  {
                    v23 = *v21++;
                    v24 = v23;
                    if (v23 <= a3)
                    {
                      v24 = a3;
                    }

                    *v22++ = v24;
                    --v6;
                  }

                  while (v6);
                }

                break;
            }

            break;
          case 0:
            switch(v8)
            {
              case 2:
                if (a5 == 1)
                {
                  if (v6)
                  {
                    v165 = *(a1 + 2);
                    v166 = *(a4 + 2);
                    do
                    {
                      v168 = *v165;
                      v165 += 8;
                      v167 = v168;
                      if (v168 <= *&a3)
                      {
                        v167 = *&a3;
                      }

                      *v166++ = v167;
                      --v6;
                    }

                    while (v6);
                  }
                }

                else if (!a5 && v6)
                {
                  v81 = *(a1 + 2);
                  v82 = *(a4 + 2);
                  do
                  {
                    v84 = *v81;
                    v81 += 8;
                    v83 = v84;
                    if (v84 <= *&a3)
                    {
                      v83 = *&a3;
                    }

                    *v82++ = v83;
                    --v6;
                  }

                  while (v6);
                }

                break;
              case 1:
                if (a5 == 1)
                {
                  if (v6)
                  {
                    v137 = *(a1 + 2);
                    v138 = *(a4 + 2);
                    do
                    {
                      v140 = *v137++;
                      v139 = v140;
                      if (v140 <= *&a3)
                      {
                        v139 = *&a3;
                      }

                      *v138++ = v139;
                      --v6;
                    }

                    while (v6);
                  }
                }

                else if (!a5 && v6)
                {
                  v61 = *(a1 + 2);
                  v62 = *(a4 + 2);
                  do
                  {
                    v64 = *v61++;
                    v63 = v64;
                    if (v64 <= *&a3)
                    {
                      v63 = *&a3;
                    }

                    *v62++ = v63;
                    --v6;
                  }

                  while (v6);
                }

                break;
              case 0:
                if (a5 == 1)
                {
                  if (v6)
                  {
                    v181 = *(a1 + 2);
                    v182 = *(a4 + 2);
                    do
                    {
                      v183 = *v181++;
                      v184 = v183;
                      if (*&a3 >= v183)
                      {
                        v184 = *&a3;
                      }

                      *v182++ = v184;
                      --v6;
                    }

                    while (v6);
                  }
                }

                else if (!a5 && v6)
                {
                  v13 = *(a1 + 2);
                  v14 = *(a4 + 2);
                  do
                  {
                    v15 = *v13++;
                    v16 = v15;
                    if (*&a3 >= v15)
                    {
                      v16 = *&a3;
                    }

                    *v14++ = v16;
                    --v6;
                  }

                  while (v6);
                }

                break;
            }

            break;
        }
      }

      else if (!v7)
      {
        switch(a2)
        {
          case 2:
            switch(v8)
            {
              case 2:
                if (a5 == 1)
                {
                  if (v6)
                  {
                    v205 = *(a1 + 2);
                    v206 = *(a4 + 2);
                    do
                    {
                      v207 = *v205++;
                      v208 = v207;
                      if (v207 <= a3)
                      {
                        LOBYTE(v208) = a3;
                      }

                      *v206++ = v208;
                      --v6;
                    }

                    while (v6);
                  }
                }

                else if (!a5 && v6)
                {
                  v109 = *(a1 + 2);
                  v110 = *(a4 + 2);
                  do
                  {
                    v111 = *v109++;
                    v112 = v111;
                    if (v111 <= a3)
                    {
                      LOBYTE(v112) = a3;
                    }

                    *v110++ = v112;
                    --v6;
                  }

                  while (v6);
                }

                break;
              case 1:
                if (a5 == 1)
                {
                  if (v6)
                  {
                    v177 = *(a1 + 2);
                    v178 = *(a4 + 2);
                    do
                    {
                      v179 = *v177++;
                      v180 = v179;
                      if (v179 <= a3)
                      {
                        v180 = a3;
                      }

                      *v178++ = v180;
                      --v6;
                    }

                    while (v6);
                  }
                }

                else if (!a5 && v6)
                {
                  v93 = *(a1 + 2);
                  v94 = *(a4 + 2);
                  do
                  {
                    v95 = *v93++;
                    v96 = v95;
                    if (v95 <= a3)
                    {
                      v96 = a3;
                    }

                    *v94++ = v96;
                    --v6;
                  }

                  while (v6);
                }

                break;
              case 0:
                if (a5 == 1)
                {
                  if (v6)
                  {
                    v213 = *(a1 + 2);
                    v214 = *(a4 + 2);
                    do
                    {
                      v215 = *v213++;
                      v216 = v215;
                      if (v215 <= a3)
                      {
                        v216 = a3;
                      }

                      *v214++ = v216;
                      --v6;
                    }

                    while (v6);
                  }
                }

                else if (!a5 && v6)
                {
                  v41 = *(a1 + 2);
                  v42 = *(a4 + 2);
                  do
                  {
                    v43 = *v41++;
                    v44 = v43;
                    if (v43 <= a3)
                    {
                      v44 = a3;
                    }

                    *v42++ = v44;
                    --v6;
                  }

                  while (v6);
                }

                break;
            }

            break;
          case 1:
            switch(v8)
            {
              case 2:
                if (a5 == 1)
                {
                  if (v6)
                  {
                    v173 = *(a1 + 2);
                    v174 = *(a4 + 2);
                    do
                    {
                      v175 = *v173++;
                      v176 = v175;
                      if (v175 <= a3)
                      {
                        LOBYTE(v176) = a3;
                      }

                      *v174++ = v176;
                      --v6;
                    }

                    while (v6);
                  }
                }

                else if (!a5 && v6)
                {
                  v89 = *(a1 + 2);
                  v90 = *(a4 + 2);
                  do
                  {
                    v91 = *v89++;
                    v92 = v91;
                    if (v91 <= a3)
                    {
                      LOBYTE(v92) = a3;
                    }

                    *v90++ = v92;
                    --v6;
                  }

                  while (v6);
                }

                break;
              case 1:
                if (a5 == 1)
                {
                  if (v6)
                  {
                    v141 = *(a1 + 2);
                    v142 = *(a4 + 2);
                    do
                    {
                      v143 = *v141++;
                      v144 = v143;
                      if (v143 <= a3)
                      {
                        v144 = a3;
                      }

                      *v142++ = v144;
                      --v6;
                    }

                    while (v6);
                  }
                }

                else if (!a5 && v6)
                {
                  v65 = *(a1 + 2);
                  v66 = *(a4 + 2);
                  do
                  {
                    v67 = *v65++;
                    v68 = v67;
                    if (v67 <= a3)
                    {
                      v68 = a3;
                    }

                    *v66++ = v68;
                    --v6;
                  }

                  while (v6);
                }

                break;
              case 0:
                if (a5 == 1)
                {
                  if (v6)
                  {
                    v185 = *(a1 + 2);
                    v186 = *(a4 + 2);
                    do
                    {
                      v187 = *v185++;
                      v188 = v187;
                      if (v187 <= a3)
                      {
                        v188 = a3;
                      }

                      *v186++ = v188;
                      --v6;
                    }

                    while (v6);
                  }
                }

                else if (!a5 && v6)
                {
                  v33 = *(a1 + 2);
                  v34 = *(a4 + 2);
                  do
                  {
                    v35 = *v33++;
                    v36 = v35;
                    if (v35 <= a3)
                    {
                      v36 = a3;
                    }

                    *v34++ = v36;
                    --v6;
                  }

                  while (v6);
                }

                break;
            }

            break;
          case 0:
            switch(v8)
            {
              case 2:
                if (a5 == 1)
                {
                  if (v6)
                  {
                    v217 = *(a1 + 2);
                    v218 = *(a4 + 2);
                    do
                    {
                      v219 = *v217++;
                      v220 = v219;
                      if (v219 <= *&a3)
                      {
                        LOBYTE(v220) = *&a3;
                      }

                      *v218++ = v220;
                      --v6;
                    }

                    while (v6);
                  }
                }

                else if (!a5 && v6)
                {
                  v113 = *(a1 + 2);
                  v114 = *(a4 + 2);
                  do
                  {
                    v115 = *v113++;
                    v116 = v115;
                    if (v115 <= *&a3)
                    {
                      LOBYTE(v116) = *&a3;
                    }

                    *v114++ = v116;
                    --v6;
                  }

                  while (v6);
                }

                break;
              case 1:
                if (a5 == 1)
                {
                  if (v6)
                  {
                    v189 = *(a1 + 2);
                    v190 = *(a4 + 2);
                    do
                    {
                      v191 = *v189++;
                      v192 = v191;
                      if (v191 <= *&a3)
                      {
                        v192 = *&a3;
                      }

                      *v190++ = v192;
                      --v6;
                    }

                    while (v6);
                  }
                }

                else if (!a5 && v6)
                {
                  v97 = *(a1 + 2);
                  v98 = *(a4 + 2);
                  do
                  {
                    v99 = *v97++;
                    v100 = v99;
                    if (v99 <= *&a3)
                    {
                      v100 = *&a3;
                    }

                    *v98++ = v100;
                    --v6;
                  }

                  while (v6);
                }

                break;
              case 0:
                if (a5 == 1)
                {
                  if (v6)
                  {
                    v221 = *(a1 + 2);
                    v222 = *(a4 + 2);
                    do
                    {
                      v223 = *v221++;
                      v224 = v223;
                      if (v223 <= *&a3)
                      {
                        v224 = *&a3;
                      }

                      *v222++ = v224;
                      --v6;
                    }

                    while (v6);
                  }
                }

                else if (!a5 && v6)
                {
                  v9 = *(a1 + 2);
                  v10 = *(a4 + 2);
                  do
                  {
                    v11 = *v9++;
                    v12 = v11;
                    if (v11 <= *&a3)
                    {
                      v12 = *&a3;
                    }

                    *v10++ = v12;
                    --v6;
                  }

                  while (v6);
                }

                break;
            }

            break;
        }
      }

      return a4;
    }
  }

  return v5;
}

int *agxps_timeseries_compare_tt_0(int a1, int *a2, int *a3, int *a4, int a5, uint64_t a6)
{
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        a6 = 0;
        if (!a2 || !a3 || !a4)
        {
          return a6;
        }

        if ((a4[8] & 1) == 0)
        {
          v39 = *(a2 + 1);
          if (v39 == *(a3 + 1) && v39 == *(a4 + 1))
          {
            v40 = *a2;
            v41 = *a3;
            v42 = *a4;
            if (*a2 == 2)
            {
              switch(v41)
              {
                case 2:
                  switch(v42)
                  {
                    case 2:
                      if (a5 == 1)
                      {
                        if (v39)
                        {
                          v1281 = *(a2 + 2);
                          v1282 = *(a3 + 2);
                          v1283 = *(a4 + 2);
                          do
                          {
                            v1285 = *v1281++;
                            v1284 = v1285;
                            v1286 = *v1282++;
                            *v1283++ = v1284 > v1286;
                            --v39;
                          }

                          while (v39);
                        }
                      }

                      else if (!a5 && v39)
                      {
                        v589 = *(a2 + 2);
                        v590 = *(a3 + 2);
                        v591 = *(a4 + 2);
                        do
                        {
                          v593 = *v589++;
                          v592 = v593;
                          v594 = *v590++;
                          *v591++ = v592 > v594;
                          --v39;
                        }

                        while (v39);
                      }

                      break;
                    case 1:
                      if (a5 == 1)
                      {
                        if (v39)
                        {
                          v1135 = *(a2 + 2);
                          v1136 = *(a3 + 2);
                          v1137 = *(a4 + 2);
                          do
                          {
                            v1139 = *v1135++;
                            v1138 = v1139;
                            v1140 = *v1136++;
                            *v1137++ = v1138 > v1140;
                            --v39;
                          }

                          while (v39);
                        }
                      }

                      else if (!a5 && v39)
                      {
                        v497 = *(a2 + 2);
                        v498 = *(a3 + 2);
                        v499 = *(a4 + 2);
                        do
                        {
                          v501 = *v497++;
                          v500 = v501;
                          v502 = *v498++;
                          *v499++ = v500 > v502;
                          --v39;
                        }

                        while (v39);
                      }

                      break;
                    case 0:
                      if (a5 == 1)
                      {
                        if (v39)
                        {
                          v1328 = *(a2 + 2);
                          v1329 = *(a3 + 2);
                          v1330 = *(a4 + 2);
                          do
                          {
                            v1332 = *v1328++;
                            v1331 = v1332;
                            v1333 = *v1329++;
                            if (v1331 <= v1333)
                            {
                              v1334 = 0.0;
                            }

                            else
                            {
                              v1334 = 1.0;
                            }

                            *v1330++ = v1334;
                            --v39;
                          }

                          while (v39);
                        }
                      }

                      else if (!a5 && v39)
                      {
                        v218 = *(a2 + 2);
                        v219 = *(a3 + 2);
                        v220 = *(a4 + 2);
                        do
                        {
                          v222 = *v218++;
                          v221 = v222;
                          v223 = *v219++;
                          if (v221 <= v223)
                          {
                            v224 = 0.0;
                          }

                          else
                          {
                            v224 = 1.0;
                          }

                          *v220++ = v224;
                          --v39;
                        }

                        while (v39);
                      }

                      break;
                  }

                  break;
                case 1:
                  switch(v42)
                  {
                    case 2:
                      if (a5 == 1)
                      {
                        if (v39)
                        {
                          v1123 = *(a2 + 2);
                          v1124 = *(a3 + 2);
                          v1125 = *(a4 + 2);
                          do
                          {
                            v1127 = *v1123++;
                            v1126 = v1127;
                            v1128 = *v1124;
                            v1124 += 8;
                            *v1125++ = v1126 > v1128;
                            --v39;
                          }

                          while (v39);
                        }
                      }

                      else if (!a5 && v39)
                      {
                        v485 = *(a2 + 2);
                        v486 = *(a3 + 2);
                        v487 = *(a4 + 2);
                        do
                        {
                          v489 = *v485++;
                          v488 = v489;
                          v490 = *v486;
                          v486 += 8;
                          *v487++ = v488 > v490;
                          --v39;
                        }

                        while (v39);
                      }

                      break;
                    case 1:
                      if (a5 == 1)
                      {
                        if (v39)
                        {
                          v1061 = *(a2 + 2);
                          v1062 = *(a3 + 2);
                          v1063 = *(a4 + 2);
                          do
                          {
                            v1065 = *v1061++;
                            v1064 = v1065;
                            v1066 = *v1062++;
                            *v1063++ = v1066 < v1064;
                            --v39;
                          }

                          while (v39);
                        }
                      }

                      else if (!a5 && v39)
                      {
                        v437 = *(a2 + 2);
                        v438 = *(a3 + 2);
                        v439 = *(a4 + 2);
                        do
                        {
                          v441 = *v437++;
                          v440 = v441;
                          v442 = *v438++;
                          *v439++ = v442 < v440;
                          --v39;
                        }

                        while (v39);
                      }

                      break;
                    case 0:
                      if (a5 == 1)
                      {
                        if (v39)
                        {
                          v1172 = *(a2 + 2);
                          v1173 = *(a3 + 2);
                          v1174 = *(a4 + 2);
                          do
                          {
                            v1175 = *v1172++;
                            v1176 = v1175;
                            v1177 = *v1173++;
                            if (v1176 <= v1177)
                            {
                              v1178 = 0.0;
                            }

                            else
                            {
                              v1178 = 1.0;
                            }

                            *v1174++ = v1178;
                            --v39;
                          }

                          while (v39);
                        }
                      }

                      else if (!a5 && v39)
                      {
                        v190 = *(a2 + 2);
                        v191 = *(a3 + 2);
                        v192 = *(a4 + 2);
                        do
                        {
                          v193 = *v190++;
                          v194 = v193;
                          v195 = *v191++;
                          if (v194 <= v195)
                          {
                            v196 = 0.0;
                          }

                          else
                          {
                            v196 = 1.0;
                          }

                          *v192++ = v196;
                          --v39;
                        }

                        while (v39);
                      }

                      break;
                  }

                  break;
                case 0:
                  switch(v42)
                  {
                    case 2:
                      if (a5 == 1)
                      {
                        if (v39)
                        {
                          v1341 = *(a2 + 2);
                          v1342 = *(a3 + 2);
                          v1343 = *(a4 + 2);
                          do
                          {
                            v1345 = *v1341++;
                            v1344 = v1345;
                            v1346 = *v1342++;
                            *v1343++ = v1344 > v1346;
                            --v39;
                          }

                          while (v39);
                        }
                      }

                      else if (!a5 && v39)
                      {
                        v635 = *(a2 + 2);
                        v636 = *(a3 + 2);
                        v637 = *(a4 + 2);
                        do
                        {
                          v639 = *v635++;
                          v638 = v639;
                          v640 = *v636++;
                          *v637++ = v638 > v640;
                          --v39;
                        }

                        while (v39);
                      }

                      break;
                    case 1:
                      if (a5 == 1)
                      {
                        if (v39)
                        {
                          v1197 = *(a2 + 2);
                          v1198 = *(a3 + 2);
                          v1199 = *(a4 + 2);
                          do
                          {
                            v1201 = *v1197++;
                            v1200 = v1201;
                            v1202 = *v1198++;
                            *v1199++ = v1200 > v1202;
                            --v39;
                          }

                          while (v39);
                        }
                      }

                      else if (!a5 && v39)
                      {
                        v533 = *(a2 + 2);
                        v534 = *(a3 + 2);
                        v535 = *(a4 + 2);
                        do
                        {
                          v537 = *v533++;
                          v536 = v537;
                          v538 = *v534++;
                          *v535++ = v536 > v538;
                          --v39;
                        }

                        while (v39);
                      }

                      break;
                    case 0:
                      if (a5 == 1)
                      {
                        if (v39)
                        {
                          v1436 = *(a2 + 2);
                          v1437 = *(a3 + 2);
                          v1438 = *(a4 + 2);
                          do
                          {
                            v1439 = *v1436++;
                            v1440 = v1439;
                            v1441 = *v1437++;
                            if (v1441 >= v1440)
                            {
                              v1442 = 0.0;
                            }

                            else
                            {
                              v1442 = 1.0;
                            }

                            *v1438++ = v1442;
                            --v39;
                          }

                          while (v39);
                        }
                      }

                      else if (!a5 && v39)
                      {
                        v94 = *(a2 + 2);
                        v95 = *(a3 + 2);
                        v96 = *(a4 + 2);
                        do
                        {
                          v97 = *v94++;
                          v98 = v97;
                          v99 = *v95++;
                          if (v99 >= v98)
                          {
                            v100 = 0.0;
                          }

                          else
                          {
                            v100 = 1.0;
                          }

                          *v96++ = v100;
                          --v39;
                        }

                        while (v39);
                      }

                      break;
                  }

                  break;
              }
            }

            else if (v40 == 1)
            {
              switch(v41)
              {
                case 2:
                  switch(v42)
                  {
                    case 2:
                      if (a5 == 1)
                      {
                        if (v39)
                        {
                          v1111 = *(a2 + 2);
                          v1112 = *(a3 + 2);
                          v1113 = *(a4 + 2);
                          do
                          {
                            v1115 = *v1111;
                            v1111 += 8;
                            v1114 = v1115;
                            v1116 = *v1112++;
                            *v1113++ = v1116 < v1114;
                            --v39;
                          }

                          while (v39);
                        }
                      }

                      else if (!a5 && v39)
                      {
                        v473 = *(a2 + 2);
                        v474 = *(a3 + 2);
                        v475 = *(a4 + 2);
                        do
                        {
                          v477 = *v473;
                          v473 += 8;
                          v476 = v477;
                          v478 = *v474++;
                          *v475++ = v478 < v476;
                          --v39;
                        }

                        while (v39);
                      }

                      break;
                    case 1:
                      if (a5 == 1)
                      {
                        if (v39)
                        {
                          v1050 = *(a2 + 2);
                          v1051 = *(a3 + 2);
                          v1052 = *(a4 + 2);
                          do
                          {
                            v1054 = *v1050++;
                            v1053 = v1054;
                            LODWORD(v1054) = *v1051++;
                            *v1052++ = v1053 > v1054;
                            --v39;
                          }

                          while (v39);
                        }
                      }

                      else if (!a5 && v39)
                      {
                        v426 = *(a2 + 2);
                        v427 = *(a3 + 2);
                        v428 = *(a4 + 2);
                        do
                        {
                          v430 = *v426++;
                          v429 = v430;
                          LODWORD(v430) = *v427++;
                          *v428++ = v429 > v430;
                          --v39;
                        }

                        while (v39);
                      }

                      break;
                    case 0:
                      if (a5 == 1)
                      {
                        if (v39)
                        {
                          v1159 = *(a2 + 2);
                          v1160 = *(a3 + 2);
                          v1161 = *(a4 + 2);
                          do
                          {
                            v1162 = *v1159++;
                            v1163 = v1162;
                            LODWORD(v1162) = *v1160++;
                            if (v1163 <= v1162)
                            {
                              v1164 = 0.0;
                            }

                            else
                            {
                              v1164 = 1.0;
                            }

                            *v1161++ = v1164;
                            --v39;
                          }

                          while (v39);
                        }
                      }

                      else if (!a5 && v39)
                      {
                        v177 = *(a2 + 2);
                        v178 = *(a3 + 2);
                        v179 = *(a4 + 2);
                        do
                        {
                          v180 = *v177++;
                          v181 = v180;
                          LODWORD(v180) = *v178++;
                          if (v181 <= v180)
                          {
                            v182 = 0.0;
                          }

                          else
                          {
                            v182 = 1.0;
                          }

                          *v179++ = v182;
                          --v39;
                        }

                        while (v39);
                      }

                      break;
                  }

                  break;
                case 1:
                  switch(v42)
                  {
                    case 2:
                      if (a5 == 1)
                      {
                        if (v39)
                        {
                          v1039 = *(a2 + 2);
                          v1040 = *(a3 + 2);
                          v1041 = *(a4 + 2);
                          do
                          {
                            v1043 = *v1039;
                            v1039 += 8;
                            v1042 = v1043;
                            v1044 = *v1040;
                            v1040 += 8;
                            *v1041++ = v1042 > v1044;
                            --v39;
                          }

                          while (v39);
                        }
                      }

                      else if (!a5 && v39)
                      {
                        v415 = *(a2 + 2);
                        v416 = *(a3 + 2);
                        v417 = *(a4 + 2);
                        do
                        {
                          v419 = *v415;
                          v415 += 8;
                          v418 = v419;
                          v420 = *v416;
                          v416 += 8;
                          *v417++ = v418 > v420;
                          --v39;
                        }

                        while (v39);
                      }

                      break;
                    case 1:
                      if (a5 == 1)
                      {
                        if (v39)
                        {
                          v1027 = *(a2 + 2);
                          v1028 = *(a3 + 2);
                          v1029 = *(a4 + 2);
                          do
                          {
                            v1031 = *v1027++;
                            v1030 = v1031;
                            v1032 = *v1028++;
                            *v1029++ = v1030 > v1032;
                            --v39;
                          }

                          while (v39);
                        }
                      }

                      else if (!a5 && v39)
                      {
                        v403 = *(a2 + 2);
                        v404 = *(a3 + 2);
                        v405 = *(a4 + 2);
                        do
                        {
                          v407 = *v403++;
                          v406 = v407;
                          v408 = *v404++;
                          *v405++ = v406 > v408;
                          --v39;
                        }

                        while (v39);
                      }

                      break;
                    case 0:
                      if (a5 == 1)
                      {
                        if (v39)
                        {
                          v1074 = *(a2 + 2);
                          v1075 = *(a3 + 2);
                          v1076 = *(a4 + 2);
                          do
                          {
                            v1077 = *v1074++;
                            v1078 = v1077;
                            v1079 = *v1075++;
                            if (v1078 <= v1079)
                            {
                              v1080 = 0.0;
                            }

                            else
                            {
                              v1080 = 1.0;
                            }

                            *v1076++ = v1080;
                            --v39;
                          }

                          while (v39);
                        }
                      }

                      else if (!a5 && v39)
                      {
                        v164 = *(a2 + 2);
                        v165 = *(a3 + 2);
                        v166 = *(a4 + 2);
                        do
                        {
                          v167 = *v164++;
                          v168 = v167;
                          v169 = *v165++;
                          if (v168 <= v169)
                          {
                            v170 = 0.0;
                          }

                          else
                          {
                            v170 = 1.0;
                          }

                          *v166++ = v170;
                          --v39;
                        }

                        while (v39);
                      }

                      break;
                  }

                  break;
                case 0:
                  switch(v42)
                  {
                    case 2:
                      if (a5 == 1)
                      {
                        if (v39)
                        {
                          v1185 = *(a2 + 2);
                          v1186 = *(a3 + 2);
                          v1187 = *(a4 + 2);
                          do
                          {
                            v1189 = *v1185;
                            v1185 += 8;
                            v1188 = v1189;
                            v1190 = *v1186++;
                            *v1187++ = v1188 > v1190;
                            --v39;
                          }

                          while (v39);
                        }
                      }

                      else if (!a5 && v39)
                      {
                        v521 = *(a2 + 2);
                        v522 = *(a3 + 2);
                        v523 = *(a4 + 2);
                        do
                        {
                          v525 = *v521;
                          v521 += 8;
                          v524 = v525;
                          v526 = *v522++;
                          *v523++ = v524 > v526;
                          --v39;
                        }

                        while (v39);
                      }

                      break;
                    case 1:
                      if (a5 == 1)
                      {
                        if (v39)
                        {
                          v1087 = *(a2 + 2);
                          v1088 = *(a3 + 2);
                          v1089 = *(a4 + 2);
                          do
                          {
                            v1091 = *v1087++;
                            v1090 = v1091;
                            v1092 = *v1088++;
                            *v1089++ = v1090 > v1092;
                            --v39;
                          }

                          while (v39);
                        }
                      }

                      else if (!a5 && v39)
                      {
                        v449 = *(a2 + 2);
                        v450 = *(a3 + 2);
                        v451 = *(a4 + 2);
                        do
                        {
                          v453 = *v449++;
                          v452 = v453;
                          v454 = *v450++;
                          *v451++ = v452 > v454;
                          --v39;
                        }

                        while (v39);
                      }

                      break;
                    case 0:
                      if (a5 == 1)
                      {
                        if (v39)
                        {
                          v1242 = *(a2 + 2);
                          v1243 = *(a3 + 2);
                          v1244 = *(a4 + 2);
                          do
                          {
                            v1245 = *v1242++;
                            v1246 = v1245;
                            v1247 = *v1243++;
                            if (v1247 >= v1246)
                            {
                              v1248 = 0.0;
                            }

                            else
                            {
                              v1248 = 1.0;
                            }

                            *v1244++ = v1248;
                            --v39;
                          }

                          while (v39);
                        }
                      }

                      else if (!a5 && v39)
                      {
                        v80 = *(a2 + 2);
                        v81 = *(a3 + 2);
                        v82 = *(a4 + 2);
                        do
                        {
                          v83 = *v80++;
                          v84 = v83;
                          v85 = *v81++;
                          if (v85 >= v84)
                          {
                            v86 = 0.0;
                          }

                          else
                          {
                            v86 = 1.0;
                          }

                          *v82++ = v86;
                          --v39;
                        }

                        while (v39);
                      }

                      break;
                  }

                  break;
              }
            }

            else if (!v40)
            {
              switch(v41)
              {
                case 2:
                  switch(v42)
                  {
                    case 2:
                      if (a5 == 1)
                      {
                        if (v39)
                        {
                          v1352 = *(a2 + 2);
                          v1353 = *(a3 + 2);
                          v1354 = *(a4 + 2);
                          do
                          {
                            v1355 = *v1352++;
                            v1356 = v1355;
                            LODWORD(v1355) = *v1353++;
                            *v1354++ = LODWORD(v1355) < v1356;
                            --v39;
                          }

                          while (v39);
                        }
                      }

                      else if (!a5 && v39)
                      {
                        v646 = *(a2 + 2);
                        v647 = *(a3 + 2);
                        v648 = *(a4 + 2);
                        do
                        {
                          v649 = *v646++;
                          v650 = v649;
                          LODWORD(v649) = *v647++;
                          *v648++ = LODWORD(v649) < v650;
                          --v39;
                        }

                        while (v39);
                      }

                      break;
                    case 1:
                      if (a5 == 1)
                      {
                        if (v39)
                        {
                          v1218 = *(a2 + 2);
                          v1219 = *(a3 + 2);
                          v1220 = *(a4 + 2);
                          do
                          {
                            v1221 = *v1218++;
                            v1222 = v1221;
                            LODWORD(v1221) = *v1219++;
                            *v1220++ = v1222 > LODWORD(v1221);
                            --v39;
                          }

                          while (v39);
                        }
                      }

                      else if (!a5 && v39)
                      {
                        v554 = *(a2 + 2);
                        v555 = *(a3 + 2);
                        v556 = *(a4 + 2);
                        do
                        {
                          v557 = *v554++;
                          v558 = v557;
                          LODWORD(v557) = *v555++;
                          *v556++ = v558 > LODWORD(v557);
                          --v39;
                        }

                        while (v39);
                      }

                      break;
                    case 0:
                      if (a5 == 1)
                      {
                        if (v39)
                        {
                          v1449 = *(a2 + 2);
                          v1450 = *(a3 + 2);
                          v1451 = *(a4 + 2);
                          do
                          {
                            v1452 = *v1449++;
                            v1453 = v1452;
                            LODWORD(v1452) = *v1450++;
                            if (v1453 <= LODWORD(v1452))
                            {
                              v1454 = 0.0;
                            }

                            else
                            {
                              v1454 = 1.0;
                            }

                            *v1451++ = v1454;
                            --v39;
                          }

                          while (v39);
                        }
                      }

                      else if (!a5 && v39)
                      {
                        v245 = *(a2 + 2);
                        v246 = *(a3 + 2);
                        v247 = *(a4 + 2);
                        do
                        {
                          v248 = *v245++;
                          v249 = v248;
                          LODWORD(v248) = *v246++;
                          if (v249 <= LODWORD(v248))
                          {
                            v250 = 0.0;
                          }

                          else
                          {
                            v250 = 1.0;
                          }

                          *v247++ = v250;
                          --v39;
                        }

                        while (v39);
                      }

                      break;
                  }

                  break;
                case 1:
                  switch(v42)
                  {
                    case 2:
                      if (a5 == 1)
                      {
                        if (v39)
                        {
                          v1208 = *(a2 + 2);
                          v1209 = *(a3 + 2);
                          v1210 = *(a4 + 2);
                          do
                          {
                            v1211 = *v1208++;
                            v1212 = v1211;
                            LODWORD(v1211) = *v1209;
                            v1209 += 8;
                            *v1210++ = v1212 > LODWORD(v1211);
                            --v39;
                          }

                          while (v39);
                        }
                      }

                      else if (!a5 && v39)
                      {
                        v544 = *(a2 + 2);
                        v545 = *(a3 + 2);
                        v546 = *(a4 + 2);
                        do
                        {
                          v547 = *v544++;
                          v548 = v547;
                          LODWORD(v547) = *v545;
                          v545 += 8;
                          *v546++ = v548 > LODWORD(v547);
                          --v39;
                        }

                        while (v39);
                      }

                      break;
                    case 1:
                      if (a5 == 1)
                      {
                        if (v39)
                        {
                          v1099 = *(a2 + 2);
                          v1100 = *(a3 + 2);
                          v1101 = *(a4 + 2);
                          do
                          {
                            v1102 = *v1099++;
                            v1103 = v1102;
                            v1104 = *v1100++;
                            *v1101++ = v1104 < v1103;
                            --v39;
                          }

                          while (v39);
                        }
                      }

                      else if (!a5 && v39)
                      {
                        v461 = *(a2 + 2);
                        v462 = *(a3 + 2);
                        v463 = *(a4 + 2);
                        do
                        {
                          v464 = *v461++;
                          v465 = v464;
                          v466 = *v462++;
                          *v463++ = v466 < v465;
                          --v39;
                        }

                        while (v39);
                      }

                      break;
                    case 0:
                      if (a5 == 1)
                      {
                        if (v39)
                        {
                          v1256 = *(a2 + 2);
                          v1257 = *(a3 + 2);
                          v1258 = *(a4 + 2);
                          do
                          {
                            v1259 = *v1256++;
                            v1260 = v1259;
                            v1261 = *v1257++;
                            if (v1260 <= v1261)
                            {
                              v1262 = 0.0;
                            }

                            else
                            {
                              v1262 = 1.0;
                            }

                            *v1258++ = v1262;
                            --v39;
                          }

                          while (v39);
                        }
                      }

                      else if (!a5 && v39)
                      {
                        v204 = *(a2 + 2);
                        v205 = *(a3 + 2);
                        v206 = *(a4 + 2);
                        do
                        {
                          v207 = *v204++;
                          v208 = v207;
                          v209 = *v205++;
                          if (v208 <= v209)
                          {
                            v210 = 0.0;
                          }

                          else
                          {
                            v210 = 1.0;
                          }

                          *v206++ = v210;
                          --v39;
                        }

                        while (v39);
                      }

                      break;
                  }

                  break;
                case 0:
                  switch(v42)
                  {
                    case 2:
                      if (a5 == 1)
                      {
                        if (v39)
                        {
                          v1461 = *(a2 + 2);
                          v1462 = *(a3 + 2);
                          v1463 = *(a4 + 2);
                          do
                          {
                            v1464 = *v1461++;
                            v1465 = v1464;
                            v1466 = *v1462++;
                            *v1463++ = v1465 > v1466;
                            --v39;
                          }

                          while (v39);
                        }
                      }

                      else if (!a5 && v39)
                      {
                        v715 = *(a2 + 2);
                        v716 = *(a3 + 2);
                        v717 = *(a4 + 2);
                        do
                        {
                          v718 = *v715++;
                          v719 = v718;
                          v720 = *v716++;
                          *v717++ = v719 > v720;
                          --v39;
                        }

                        while (v39);
                      }

                      break;
                    case 1:
                      if (a5 == 1)
                      {
                        if (v39)
                        {
                          v1269 = *(a2 + 2);
                          v1270 = *(a3 + 2);
                          v1271 = *(a4 + 2);
                          do
                          {
                            v1272 = *v1269++;
                            v1273 = v1272;
                            v1274 = *v1270++;
                            *v1271++ = v1273 > v1274;
                            --v39;
                          }

                          while (v39);
                        }
                      }

                      else if (!a5 && v39)
                      {
                        v577 = *(a2 + 2);
                        v578 = *(a3 + 2);
                        v579 = *(a4 + 2);
                        do
                        {
                          v580 = *v577++;
                          v581 = v580;
                          v582 = *v578++;
                          *v579++ = v581 > v582;
                          --v39;
                        }

                        while (v39);
                      }

                      break;
                    case 0:
                      if (a5 == 1)
                      {
                        if (v39)
                        {
                          v1548 = *(a2 + 2);
                          v1549 = *(a3 + 2);
                          v1550 = *(a4 + 2);
                          do
                          {
                            v1551 = *v1548++;
                            v1552 = v1551;
                            v1553 = *v1549++;
                            if (v1552 <= v1553)
                            {
                              v1554 = 0.0;
                            }

                            else
                            {
                              v1554 = 1.0;
                            }

                            *v1550++ = v1554;
                            --v39;
                          }

                          while (v39);
                        }
                      }

                      else if (!a5 && v39)
                      {
                        v43 = *(a2 + 2);
                        v44 = *(a3 + 2);
                        v45 = *(a4 + 2);
                        do
                        {
                          v46 = *v43++;
                          v47 = v46;
                          v48 = *v44++;
                          if (v47 <= v48)
                          {
                            v49 = 0.0;
                          }

                          else
                          {
                            v49 = 1.0;
                          }

                          *v45++ = v49;
                          --v39;
                        }

                        while (v39);
                      }

                      break;
                  }

                  break;
              }
            }

            return a4;
          }
        }

        break;
      case 4:
        a6 = 0;
        if (!a2 || !a3 || !a4)
        {
          return a6;
        }

        if ((a4[8] & 1) == 0)
        {
          v61 = *(a2 + 1);
          if (v61 == *(a3 + 1) && v61 == *(a4 + 1))
          {
            v62 = *a2;
            v63 = *a3;
            v64 = *a4;
            if (*a2 == 2)
            {
              switch(v63)
              {
                case 2:
                  switch(v64)
                  {
                    case 2:
                      if (a5 == 1)
                      {
                        if (v61)
                        {
                          v1829 = *(a2 + 2);
                          v1830 = *(a3 + 2);
                          v1831 = *(a4 + 2);
                          do
                          {
                            v1833 = *v1829++;
                            v1832 = v1833;
                            v1834 = *v1830++;
                            *v1831++ = v1832 <= v1834;
                            --v61;
                          }

                          while (v61);
                        }
                      }

                      else if (!a5 && v61)
                      {
                        v947 = *(a2 + 2);
                        v948 = *(a3 + 2);
                        v949 = *(a4 + 2);
                        do
                        {
                          v951 = *v947++;
                          v950 = v951;
                          v952 = *v948++;
                          *v949++ = v950 <= v952;
                          --v61;
                        }

                        while (v61);
                      }

                      break;
                    case 1:
                      if (a5 == 1)
                      {
                        if (v61)
                        {
                          v1585 = *(a2 + 2);
                          v1586 = *(a3 + 2);
                          v1587 = *(a4 + 2);
                          do
                          {
                            v1589 = *v1585++;
                            v1588 = v1589;
                            v1590 = *v1586++;
                            *v1587++ = v1588 <= v1590;
                            --v61;
                          }

                          while (v61);
                        }
                      }

                      else if (!a5 && v61)
                      {
                        v811 = *(a2 + 2);
                        v812 = *(a3 + 2);
                        v813 = *(a4 + 2);
                        do
                        {
                          v815 = *v811++;
                          v814 = v815;
                          v816 = *v812++;
                          *v813++ = v814 <= v816;
                          --v61;
                        }

                        while (v61);
                      }

                      break;
                    case 0:
                      if (a5 == 1)
                      {
                        if (v61)
                        {
                          v1878 = *(a2 + 2);
                          v1879 = *(a3 + 2);
                          v1880 = *(a4 + 2);
                          do
                          {
                            v1882 = *v1878++;
                            v1881 = v1882;
                            v1883 = *v1879++;
                            if (v1881 > v1883)
                            {
                              v1884 = 0.0;
                            }

                            else
                            {
                              v1884 = 1.0;
                            }

                            *v1880++ = v1884;
                            --v61;
                          }

                          while (v61);
                        }
                      }

                      else if (!a5 && v61)
                      {
                        v366 = *(a2 + 2);
                        v367 = *(a3 + 2);
                        v368 = *(a4 + 2);
                        do
                        {
                          v370 = *v366++;
                          v369 = v370;
                          v371 = *v367++;
                          if (v369 > v371)
                          {
                            v372 = 0.0;
                          }

                          else
                          {
                            v372 = 1.0;
                          }

                          *v368++ = v372;
                          --v61;
                        }

                        while (v61);
                      }

                      break;
                  }

                  break;
                case 1:
                  switch(v64)
                  {
                    case 2:
                      if (a5 == 1)
                      {
                        if (v61)
                        {
                          v1573 = *(a2 + 2);
                          v1574 = *(a3 + 2);
                          v1575 = *(a4 + 2);
                          do
                          {
                            v1577 = *v1573++;
                            v1576 = v1577;
                            v1578 = *v1574;
                            v1574 += 8;
                            *v1575++ = v1576 <= v1578;
                            --v61;
                          }

                          while (v61);
                        }
                      }

                      else if (!a5 && v61)
                      {
                        v799 = *(a2 + 2);
                        v800 = *(a3 + 2);
                        v801 = *(a4 + 2);
                        do
                        {
                          v803 = *v799++;
                          v802 = v803;
                          v804 = *v800;
                          v800 += 8;
                          *v801++ = v802 <= v804;
                          --v61;
                        }

                        while (v61);
                      }

                      break;
                    case 1:
                      if (a5 == 1)
                      {
                        if (v61)
                        {
                          v1385 = *(a2 + 2);
                          v1386 = *(a3 + 2);
                          v1387 = *(a4 + 2);
                          do
                          {
                            v1389 = *v1385++;
                            v1388 = v1389;
                            v1390 = *v1386++;
                            *v1387++ = v1390 >= v1388;
                            --v61;
                          }

                          while (v61);
                        }
                      }

                      else if (!a5 && v61)
                      {
                        v679 = *(a2 + 2);
                        v680 = *(a3 + 2);
                        v681 = *(a4 + 2);
                        do
                        {
                          v683 = *v679++;
                          v682 = v683;
                          v684 = *v680++;
                          *v681++ = v684 >= v682;
                          --v61;
                        }

                        while (v61);
                      }

                      break;
                    case 0:
                      if (a5 == 1)
                      {
                        if (v61)
                        {
                          v1680 = *(a2 + 2);
                          v1681 = *(a3 + 2);
                          v1682 = *(a4 + 2);
                          do
                          {
                            v1683 = *v1680++;
                            v1684 = v1683;
                            v1685 = *v1681++;
                            if (v1684 > v1685)
                            {
                              v1686 = 0.0;
                            }

                            else
                            {
                              v1686 = 1.0;
                            }

                            *v1682++ = v1686;
                            --v61;
                          }

                          while (v61);
                        }
                      }

                      else if (!a5 && v61)
                      {
                        v310 = *(a2 + 2);
                        v311 = *(a3 + 2);
                        v312 = *(a4 + 2);
                        do
                        {
                          v313 = *v310++;
                          v314 = v313;
                          v315 = *v311++;
                          if (v314 > v315)
                          {
                            v316 = 0.0;
                          }

                          else
                          {
                            v316 = 1.0;
                          }

                          *v312++ = v316;
                          --v61;
                        }

                        while (v61);
                      }

                      break;
                  }

                  break;
                case 0:
                  switch(v64)
                  {
                    case 2:
                      if (a5 == 1)
                      {
                        if (v61)
                        {
                          v1891 = *(a2 + 2);
                          v1892 = *(a3 + 2);
                          v1893 = *(a4 + 2);
                          do
                          {
                            v1895 = *v1891++;
                            v1894 = v1895;
                            v1896 = *v1892++;
                            *v1893++ = v1894 <= v1896;
                            --v61;
                          }

                          while (v61);
                        }
                      }

                      else if (!a5 && v61)
                      {
                        v981 = *(a2 + 2);
                        v982 = *(a3 + 2);
                        v983 = *(a4 + 2);
                        do
                        {
                          v985 = *v981++;
                          v984 = v985;
                          v986 = *v982++;
                          *v983++ = v984 <= v986;
                          --v61;
                        }

                        while (v61);
                      }

                      break;
                    case 1:
                      if (a5 == 1)
                      {
                        if (v61)
                        {
                          v1705 = *(a2 + 2);
                          v1706 = *(a3 + 2);
                          v1707 = *(a4 + 2);
                          do
                          {
                            v1709 = *v1705++;
                            v1708 = v1709;
                            v1710 = *v1706++;
                            *v1707++ = v1708 <= v1710;
                            --v61;
                          }

                          while (v61);
                        }
                      }

                      else if (!a5 && v61)
                      {
                        v879 = *(a2 + 2);
                        v880 = *(a3 + 2);
                        v881 = *(a4 + 2);
                        do
                        {
                          v883 = *v879++;
                          v882 = v883;
                          v884 = *v880++;
                          *v881++ = v882 <= v884;
                          --v61;
                        }

                        while (v61);
                      }

                      break;
                    case 0:
                      if (a5 == 1)
                      {
                        if (v61)
                        {
                          v1952 = *(a2 + 2);
                          v1953 = *(a3 + 2);
                          v1954 = *(a4 + 2);
                          do
                          {
                            v1955 = *v1952++;
                            v1956 = v1955;
                            v1957 = *v1953++;
                            if (v1957 < v1956)
                            {
                              v1958 = 0.0;
                            }

                            else
                            {
                              v1958 = 1.0;
                            }

                            *v1954++ = v1958;
                            --v61;
                          }

                          while (v61);
                        }
                      }

                      else if (!a5 && v61)
                      {
                        v150 = *(a2 + 2);
                        v151 = *(a3 + 2);
                        v152 = *(a4 + 2);
                        do
                        {
                          v153 = *v150++;
                          v154 = v153;
                          v155 = *v151++;
                          if (v155 < v154)
                          {
                            v156 = 0.0;
                          }

                          else
                          {
                            v156 = 1.0;
                          }

                          *v152++ = v156;
                          --v61;
                        }

                        while (v61);
                      }

                      break;
                  }

                  break;
              }
            }

            else if (v62 == 1)
            {
              switch(v63)
              {
                case 2:
                  switch(v64)
                  {
                    case 2:
                      if (a5 == 1)
                      {
                        if (v61)
                        {
                          v1561 = *(a2 + 2);
                          v1562 = *(a3 + 2);
                          v1563 = *(a4 + 2);
                          do
                          {
                            v1565 = *v1561;
                            v1561 += 8;
                            v1564 = v1565;
                            v1566 = *v1562++;
                            *v1563++ = v1566 >= v1564;
                            --v61;
                          }

                          while (v61);
                        }
                      }

                      else if (!a5 && v61)
                      {
                        v787 = *(a2 + 2);
                        v788 = *(a3 + 2);
                        v789 = *(a4 + 2);
                        do
                        {
                          v791 = *v787;
                          v787 += 8;
                          v790 = v791;
                          v792 = *v788++;
                          *v789++ = v792 >= v790;
                          --v61;
                        }

                        while (v61);
                      }

                      break;
                    case 1:
                      if (a5 == 1)
                      {
                        if (v61)
                        {
                          v1374 = *(a2 + 2);
                          v1375 = *(a3 + 2);
                          v1376 = *(a4 + 2);
                          do
                          {
                            v1378 = *v1374++;
                            v1377 = v1378;
                            LODWORD(v1378) = *v1375++;
                            *v1376++ = v1377 <= v1378;
                            --v61;
                          }

                          while (v61);
                        }
                      }

                      else if (!a5 && v61)
                      {
                        v668 = *(a2 + 2);
                        v669 = *(a3 + 2);
                        v670 = *(a4 + 2);
                        do
                        {
                          v672 = *v668++;
                          v671 = v672;
                          LODWORD(v672) = *v669++;
                          *v670++ = v671 <= v672;
                          --v61;
                        }

                        while (v61);
                      }

                      break;
                    case 0:
                      if (a5 == 1)
                      {
                        if (v61)
                        {
                          v1667 = *(a2 + 2);
                          v1668 = *(a3 + 2);
                          v1669 = *(a4 + 2);
                          do
                          {
                            v1670 = *v1667++;
                            v1671 = v1670;
                            LODWORD(v1670) = *v1668++;
                            if (v1671 > v1670)
                            {
                              v1672 = 0.0;
                            }

                            else
                            {
                              v1672 = 1.0;
                            }

                            *v1669++ = v1672;
                            --v61;
                          }

                          while (v61);
                        }
                      }

                      else if (!a5 && v61)
                      {
                        v297 = *(a2 + 2);
                        v298 = *(a3 + 2);
                        v299 = *(a4 + 2);
                        do
                        {
                          v300 = *v297++;
                          v301 = v300;
                          LODWORD(v300) = *v298++;
                          if (v301 > v300)
                          {
                            v302 = 0.0;
                          }

                          else
                          {
                            v302 = 1.0;
                          }

                          *v299++ = v302;
                          --v61;
                        }

                        while (v61);
                      }

                      break;
                  }

                  break;
                case 1:
                  switch(v64)
                  {
                    case 2:
                      if (a5 == 1)
                      {
                        if (v61)
                        {
                          v1363 = *(a2 + 2);
                          v1364 = *(a3 + 2);
                          v1365 = *(a4 + 2);
                          do
                          {
                            v1367 = *v1363;
                            v1363 += 8;
                            v1366 = v1367;
                            v1368 = *v1364;
                            v1364 += 8;
                            *v1365++ = v1366 <= v1368;
                            --v61;
                          }

                          while (v61);
                        }
                      }

                      else if (!a5 && v61)
                      {
                        v657 = *(a2 + 2);
                        v658 = *(a3 + 2);
                        v659 = *(a4 + 2);
                        do
                        {
                          v661 = *v657;
                          v657 += 8;
                          v660 = v661;
                          v662 = *v658;
                          v658 += 8;
                          *v659++ = v660 <= v662;
                          --v61;
                        }

                        while (v61);
                      }

                      break;
                    case 1:
                      if (a5 == 1)
                      {
                        if (v61)
                        {
                          v1229 = *(a2 + 2);
                          v1230 = *(a3 + 2);
                          v1231 = *(a4 + 2);
                          do
                          {
                            v1233 = *v1229++;
                            v1232 = v1233;
                            v1234 = *v1230++;
                            *v1231++ = v1232 <= v1234;
                            --v61;
                          }

                          while (v61);
                        }
                      }

                      else if (!a5 && v61)
                      {
                        v565 = *(a2 + 2);
                        v566 = *(a3 + 2);
                        v567 = *(a4 + 2);
                        do
                        {
                          v569 = *v565++;
                          v568 = v569;
                          v570 = *v566++;
                          *v567++ = v568 <= v570;
                          --v61;
                        }

                        while (v61);
                      }

                      break;
                    case 0:
                      if (a5 == 1)
                      {
                        if (v61)
                        {
                          v1474 = *(a2 + 2);
                          v1475 = *(a3 + 2);
                          v1476 = *(a4 + 2);
                          do
                          {
                            v1477 = *v1474++;
                            v1478 = v1477;
                            v1479 = *v1475++;
                            if (v1478 > v1479)
                            {
                              v1480 = 0.0;
                            }

                            else
                            {
                              v1480 = 1.0;
                            }

                            *v1476++ = v1480;
                            --v61;
                          }

                          while (v61);
                        }
                      }

                      else if (!a5 && v61)
                      {
                        v258 = *(a2 + 2);
                        v259 = *(a3 + 2);
                        v260 = *(a4 + 2);
                        do
                        {
                          v261 = *v258++;
                          v262 = v261;
                          v263 = *v259++;
                          if (v262 > v263)
                          {
                            v264 = 0.0;
                          }

                          else
                          {
                            v264 = 1.0;
                          }

                          *v260++ = v264;
                          --v61;
                        }

                        while (v61);
                      }

                      break;
                  }

                  break;
                case 0:
                  switch(v64)
                  {
                    case 2:
                      if (a5 == 1)
                      {
                        if (v61)
                        {
                          v1693 = *(a2 + 2);
                          v1694 = *(a3 + 2);
                          v1695 = *(a4 + 2);
                          do
                          {
                            v1697 = *v1693;
                            v1693 += 8;
                            v1696 = v1697;
                            v1698 = *v1694++;
                            *v1695++ = v1696 <= v1698;
                            --v61;
                          }

                          while (v61);
                        }
                      }

                      else if (!a5 && v61)
                      {
                        v867 = *(a2 + 2);
                        v868 = *(a3 + 2);
                        v869 = *(a4 + 2);
                        do
                        {
                          v871 = *v867;
                          v867 += 8;
                          v870 = v871;
                          v872 = *v868++;
                          *v869++ = v870 <= v872;
                          --v61;
                        }

                        while (v61);
                      }

                      break;
                    case 1:
                      if (a5 == 1)
                      {
                        if (v61)
                        {
                          v1487 = *(a2 + 2);
                          v1488 = *(a3 + 2);
                          v1489 = *(a4 + 2);
                          do
                          {
                            v1491 = *v1487++;
                            v1490 = v1491;
                            v1492 = *v1488++;
                            *v1489++ = v1490 <= v1492;
                            --v61;
                          }

                          while (v61);
                        }
                      }

                      else if (!a5 && v61)
                      {
                        v727 = *(a2 + 2);
                        v728 = *(a3 + 2);
                        v729 = *(a4 + 2);
                        do
                        {
                          v731 = *v727++;
                          v730 = v731;
                          v732 = *v728++;
                          *v729++ = v730 <= v732;
                          --v61;
                        }

                        while (v61);
                      }

                      break;
                    case 0:
                      if (a5 == 1)
                      {
                        if (v61)
                        {
                          v1790 = *(a2 + 2);
                          v1791 = *(a3 + 2);
                          v1792 = *(a4 + 2);
                          do
                          {
                            v1793 = *v1790++;
                            v1794 = v1793;
                            v1795 = *v1791++;
                            if (v1795 < v1794)
                            {
                              v1796 = 0.0;
                            }

                            else
                            {
                              v1796 = 1.0;
                            }

                            *v1792++ = v1796;
                            --v61;
                          }

                          while (v61);
                        }
                      }

                      else if (!a5 && v61)
                      {
                        v122 = *(a2 + 2);
                        v123 = *(a3 + 2);
                        v124 = *(a4 + 2);
                        do
                        {
                          v125 = *v122++;
                          v126 = v125;
                          v127 = *v123++;
                          if (v127 < v126)
                          {
                            v128 = 0.0;
                          }

                          else
                          {
                            v128 = 1.0;
                          }

                          *v124++ = v128;
                          --v61;
                        }

                        while (v61);
                      }

                      break;
                  }

                  break;
              }
            }

            else if (!v62)
            {
              switch(v63)
              {
                case 2:
                  switch(v64)
                  {
                    case 2:
                      if (a5 == 1)
                      {
                        if (v61)
                        {
                          v1902 = *(a2 + 2);
                          v1903 = *(a3 + 2);
                          v1904 = *(a4 + 2);
                          do
                          {
                            v1905 = *v1902++;
                            v1906 = v1905;
                            LODWORD(v1905) = *v1903++;
                            *v1904++ = LODWORD(v1905) >= v1906;
                            --v61;
                          }

                          while (v61);
                        }
                      }

                      else if (!a5 && v61)
                      {
                        v992 = *(a2 + 2);
                        v993 = *(a3 + 2);
                        v994 = *(a4 + 2);
                        do
                        {
                          v995 = *v992++;
                          v996 = v995;
                          LODWORD(v995) = *v993++;
                          *v994++ = LODWORD(v995) >= v996;
                          --v61;
                        }

                        while (v61);
                      }

                      break;
                    case 1:
                      if (a5 == 1)
                      {
                        if (v61)
                        {
                          v1726 = *(a2 + 2);
                          v1727 = *(a3 + 2);
                          v1728 = *(a4 + 2);
                          do
                          {
                            v1729 = *v1726++;
                            v1730 = v1729;
                            LODWORD(v1729) = *v1727++;
                            *v1728++ = v1730 <= LODWORD(v1729);
                            --v61;
                          }

                          while (v61);
                        }
                      }

                      else if (!a5 && v61)
                      {
                        v900 = *(a2 + 2);
                        v901 = *(a3 + 2);
                        v902 = *(a4 + 2);
                        do
                        {
                          v903 = *v900++;
                          v904 = v903;
                          LODWORD(v903) = *v901++;
                          *v902++ = v904 <= LODWORD(v903);
                          --v61;
                        }

                        while (v61);
                      }

                      break;
                    case 0:
                      if (a5 == 1)
                      {
                        if (v61)
                        {
                          v1965 = *(a2 + 2);
                          v1966 = *(a3 + 2);
                          v1967 = *(a4 + 2);
                          do
                          {
                            v1968 = *v1965++;
                            v1969 = v1968;
                            LODWORD(v1968) = *v1966++;
                            if (v1969 > LODWORD(v1968))
                            {
                              v1970 = 0.0;
                            }

                            else
                            {
                              v1970 = 1.0;
                            }

                            *v1967++ = v1970;
                            --v61;
                          }

                          while (v61);
                        }
                      }

                      else if (!a5 && v61)
                      {
                        v391 = *(a2 + 2);
                        v392 = *(a3 + 2);
                        v393 = *(a4 + 2);
                        do
                        {
                          v394 = *v391++;
                          v395 = v394;
                          LODWORD(v394) = *v392++;
                          if (v395 > LODWORD(v394))
                          {
                            v396 = 0.0;
                          }

                          else
                          {
                            v396 = 1.0;
                          }

                          *v393++ = v396;
                          --v61;
                        }

                        while (v61);
                      }

                      break;
                  }

                  break;
                case 1:
                  switch(v64)
                  {
                    case 2:
                      if (a5 == 1)
                      {
                        if (v61)
                        {
                          v1716 = *(a2 + 2);
                          v1717 = *(a3 + 2);
                          v1718 = *(a4 + 2);
                          do
                          {
                            v1719 = *v1716++;
                            v1720 = v1719;
                            LODWORD(v1719) = *v1717;
                            v1717 += 8;
                            *v1718++ = v1720 <= LODWORD(v1719);
                            --v61;
                          }

                          while (v61);
                        }
                      }

                      else if (!a5 && v61)
                      {
                        v890 = *(a2 + 2);
                        v891 = *(a3 + 2);
                        v892 = *(a4 + 2);
                        do
                        {
                          v893 = *v890++;
                          v894 = v893;
                          LODWORD(v893) = *v891;
                          v891 += 8;
                          *v892++ = v894 <= LODWORD(v893);
                          --v61;
                        }

                        while (v61);
                      }

                      break;
                    case 1:
                      if (a5 == 1)
                      {
                        if (v61)
                        {
                          v1499 = *(a2 + 2);
                          v1500 = *(a3 + 2);
                          v1501 = *(a4 + 2);
                          do
                          {
                            v1502 = *v1499++;
                            v1503 = v1502;
                            v1504 = *v1500++;
                            *v1501++ = v1504 >= v1503;
                            --v61;
                          }

                          while (v61);
                        }
                      }

                      else if (!a5 && v61)
                      {
                        v739 = *(a2 + 2);
                        v740 = *(a3 + 2);
                        v741 = *(a4 + 2);
                        do
                        {
                          v742 = *v739++;
                          v743 = v742;
                          v744 = *v740++;
                          *v741++ = v744 >= v743;
                          --v61;
                        }

                        while (v61);
                      }

                      break;
                    case 0:
                      if (a5 == 1)
                      {
                        if (v61)
                        {
                          v1804 = *(a2 + 2);
                          v1805 = *(a3 + 2);
                          v1806 = *(a4 + 2);
                          do
                          {
                            v1807 = *v1804++;
                            v1808 = v1807;
                            v1809 = *v1805++;
                            if (v1808 > v1809)
                            {
                              v1810 = 0.0;
                            }

                            else
                            {
                              v1810 = 1.0;
                            }

                            *v1806++ = v1810;
                            --v61;
                          }

                          while (v61);
                        }
                      }

                      else if (!a5 && v61)
                      {
                        v338 = *(a2 + 2);
                        v339 = *(a3 + 2);
                        v340 = *(a4 + 2);
                        do
                        {
                          v341 = *v338++;
                          v342 = v341;
                          v343 = *v339++;
                          if (v342 > v343)
                          {
                            v344 = 0.0;
                          }

                          else
                          {
                            v344 = 1.0;
                          }

                          *v340++ = v344;
                          --v61;
                        }

                        while (v61);
                      }

                      break;
                  }

                  break;
                case 0:
                  switch(v64)
                  {
                    case 2:
                      if (a5 == 1)
                      {
                        if (v61)
                        {
                          v1977 = *(a2 + 2);
                          v1978 = *(a3 + 2);
                          v1979 = *(a4 + 2);
                          do
                          {
                            v1980 = *v1977++;
                            v1981 = v1980;
                            v1982 = *v1978++;
                            *v1979++ = v1981 <= v1982;
                            --v61;
                          }

                          while (v61);
                        }
                      }

                      else if (!a5 && v61)
                      {
                        v1015 = *(a2 + 2);
                        v1016 = *(a3 + 2);
                        v1017 = *(a4 + 2);
                        do
                        {
                          v1018 = *v1015++;
                          v1019 = v1018;
                          v1020 = *v1016++;
                          *v1017++ = v1019 <= v1020;
                          --v61;
                        }

                        while (v61);
                      }

                      break;
                    case 1:
                      if (a5 == 1)
                      {
                        if (v61)
                        {
                          v1817 = *(a2 + 2);
                          v1818 = *(a3 + 2);
                          v1819 = *(a4 + 2);
                          do
                          {
                            v1820 = *v1817++;
                            v1821 = v1820;
                            v1822 = *v1818++;
                            *v1819++ = v1821 <= v1822;
                            --v61;
                          }

                          while (v61);
                        }
                      }

                      else if (!a5 && v61)
                      {
                        v935 = *(a2 + 2);
                        v936 = *(a3 + 2);
                        v937 = *(a4 + 2);
                        do
                        {
                          v938 = *v935++;
                          v939 = v938;
                          v940 = *v936++;
                          *v937++ = v939 <= v940;
                          --v61;
                        }

                        while (v61);
                      }

                      break;
                    case 0:
                      if (a5 == 1)
                      {
                        if (v61)
                        {
                          v2004 = *(a2 + 2);
                          v2005 = *(a3 + 2);
                          v2006 = *(a4 + 2);
                          do
                          {
                            v2007 = *v2004++;
                            v2008 = v2007;
                            v2009 = *v2005++;
                            if (v2008 > v2009)
                            {
                              v2010 = 0.0;
                            }

                            else
                            {
                              v2010 = 1.0;
                            }

                            *v2006++ = v2010;
                            --v61;
                          }

                          while (v61);
                        }
                      }

                      else if (!a5 && v61)
                      {
                        v65 = *(a2 + 2);
                        v66 = *(a3 + 2);
                        v67 = *(a4 + 2);
                        do
                        {
                          v68 = *v65++;
                          v69 = v68;
                          v70 = *v66++;
                          if (v69 > v70)
                          {
                            v71 = 0.0;
                          }

                          else
                          {
                            v71 = 1.0;
                          }

                          *v67++ = v71;
                          --v61;
                        }

                        while (v61);
                      }

                      break;
                  }

                  break;
              }
            }

            return a4;
          }
        }

        break;
      case 5:
        a6 = 0;
        if (!a2 || !a3 || !a4)
        {
          return a6;
        }

        if ((a4[8] & 1) == 0)
        {
          v17 = *(a2 + 1);
          if (v17 == *(a3 + 1) && v17 == *(a4 + 1))
          {
            v18 = *a2;
            v19 = *a3;
            v20 = *a4;
            if (*a2 == 2)
            {
              switch(v19)
              {
                case 2:
                  switch(v20)
                  {
                    case 2:
                      if (a5 == 1)
                      {
                        if (v17)
                        {
                          v1777 = *(a2 + 2);
                          v1778 = *(a3 + 2);
                          v1779 = *(a4 + 2);
                          do
                          {
                            v1781 = *v1777++;
                            v1780 = v1781;
                            v1782 = *v1778++;
                            *v1779++ = v1780 >= v1782;
                            --v17;
                          }

                          while (v17);
                        }
                      }

                      else if (!a5 && v17)
                      {
                        v923 = *(a2 + 2);
                        v924 = *(a3 + 2);
                        v925 = *(a4 + 2);
                        do
                        {
                          v927 = *v923++;
                          v926 = v927;
                          v928 = *v924++;
                          *v925++ = v926 >= v928;
                          --v17;
                        }

                        while (v17);
                      }

                      break;
                    case 1:
                      if (a5 == 1)
                      {
                        if (v17)
                        {
                          v1535 = *(a2 + 2);
                          v1536 = *(a3 + 2);
                          v1537 = *(a4 + 2);
                          do
                          {
                            v1539 = *v1535++;
                            v1538 = v1539;
                            v1540 = *v1536++;
                            *v1537++ = v1538 >= v1540;
                            --v17;
                          }

                          while (v17);
                        }
                      }

                      else if (!a5 && v17)
                      {
                        v775 = *(a2 + 2);
                        v776 = *(a3 + 2);
                        v777 = *(a4 + 2);
                        do
                        {
                          v779 = *v775++;
                          v778 = v779;
                          v780 = *v776++;
                          *v777++ = v778 >= v780;
                          --v17;
                        }

                        while (v17);
                      }

                      break;
                    case 0:
                      if (a5 == 1)
                      {
                        if (v17)
                        {
                          v1842 = *(a2 + 2);
                          v1843 = *(a3 + 2);
                          v1844 = *(a4 + 2);
                          do
                          {
                            v1846 = *v1842++;
                            v1845 = v1846;
                            v1847 = *v1843++;
                            if (v1845 < v1847)
                            {
                              v1848 = 0.0;
                            }

                            else
                            {
                              v1848 = 1.0;
                            }

                            *v1844++ = v1848;
                            --v17;
                          }

                          while (v17);
                        }
                      }

                      else if (!a5 && v17)
                      {
                        v352 = *(a2 + 2);
                        v353 = *(a3 + 2);
                        v354 = *(a4 + 2);
                        do
                        {
                          v356 = *v352++;
                          v355 = v356;
                          v357 = *v353++;
                          if (v355 < v357)
                          {
                            v358 = 0.0;
                          }

                          else
                          {
                            v358 = 1.0;
                          }

                          *v354++ = v358;
                          --v17;
                        }

                        while (v17);
                      }

                      break;
                  }

                  break;
                case 1:
                  switch(v20)
                  {
                    case 2:
                      if (a5 == 1)
                      {
                        if (v17)
                        {
                          v1523 = *(a2 + 2);
                          v1524 = *(a3 + 2);
                          v1525 = *(a4 + 2);
                          do
                          {
                            v1527 = *v1523++;
                            v1526 = v1527;
                            v1528 = *v1524;
                            v1524 += 8;
                            *v1525++ = v1526 >= v1528;
                            --v17;
                          }

                          while (v17);
                        }
                      }

                      else if (!a5 && v17)
                      {
                        v763 = *(a2 + 2);
                        v764 = *(a3 + 2);
                        v765 = *(a4 + 2);
                        do
                        {
                          v767 = *v763++;
                          v766 = v767;
                          v768 = *v764;
                          v764 += 8;
                          *v765++ = v766 >= v768;
                          --v17;
                        }

                        while (v17);
                      }

                      break;
                    case 1:
                      if (a5 == 1)
                      {
                        if (v17)
                        {
                          v1315 = *(a2 + 2);
                          v1316 = *(a3 + 2);
                          v1317 = *(a4 + 2);
                          do
                          {
                            v1319 = *v1315++;
                            v1318 = v1319;
                            v1320 = *v1316++;
                            *v1317++ = v1320 <= v1318;
                            --v17;
                          }

                          while (v17);
                        }
                      }

                      else if (!a5 && v17)
                      {
                        v623 = *(a2 + 2);
                        v624 = *(a3 + 2);
                        v625 = *(a4 + 2);
                        do
                        {
                          v627 = *v623++;
                          v626 = v627;
                          v628 = *v624++;
                          *v625++ = v628 <= v626;
                          --v17;
                        }

                        while (v17);
                      }

                      break;
                    case 0:
                      if (a5 == 1)
                      {
                        if (v17)
                        {
                          v1610 = *(a2 + 2);
                          v1611 = *(a3 + 2);
                          v1612 = *(a4 + 2);
                          do
                          {
                            v1613 = *v1610++;
                            v1614 = v1613;
                            v1615 = *v1611++;
                            if (v1614 < v1615)
                            {
                              v1616 = 0.0;
                            }

                            else
                            {
                              v1616 = 1.0;
                            }

                            *v1612++ = v1616;
                            --v17;
                          }

                          while (v17);
                        }
                      }

                      else if (!a5 && v17)
                      {
                        v284 = *(a2 + 2);
                        v285 = *(a3 + 2);
                        v286 = *(a4 + 2);
                        do
                        {
                          v287 = *v284++;
                          v288 = v287;
                          v289 = *v285++;
                          if (v288 < v289)
                          {
                            v290 = 0.0;
                          }

                          else
                          {
                            v290 = 1.0;
                          }

                          *v286++ = v290;
                          --v17;
                        }

                        while (v17);
                      }

                      break;
                  }

                  break;
                case 0:
                  switch(v20)
                  {
                    case 2:
                      if (a5 == 1)
                      {
                        if (v17)
                        {
                          v1855 = *(a2 + 2);
                          v1856 = *(a3 + 2);
                          v1857 = *(a4 + 2);
                          do
                          {
                            v1859 = *v1855++;
                            v1858 = v1859;
                            v1860 = *v1856++;
                            *v1857++ = v1858 >= v1860;
                            --v17;
                          }

                          while (v17);
                        }
                      }

                      else if (!a5 && v17)
                      {
                        v959 = *(a2 + 2);
                        v960 = *(a3 + 2);
                        v961 = *(a4 + 2);
                        do
                        {
                          v963 = *v959++;
                          v962 = v963;
                          v964 = *v960++;
                          *v961++ = v962 >= v964;
                          --v17;
                        }

                        while (v17);
                      }

                      break;
                    case 1:
                      if (a5 == 1)
                      {
                        if (v17)
                        {
                          v1635 = *(a2 + 2);
                          v1636 = *(a3 + 2);
                          v1637 = *(a4 + 2);
                          do
                          {
                            v1639 = *v1635++;
                            v1638 = v1639;
                            v1640 = *v1636++;
                            *v1637++ = v1638 >= v1640;
                            --v17;
                          }

                          while (v17);
                        }
                      }

                      else if (!a5 && v17)
                      {
                        v835 = *(a2 + 2);
                        v836 = *(a3 + 2);
                        v837 = *(a4 + 2);
                        do
                        {
                          v839 = *v835++;
                          v838 = v839;
                          v840 = *v836++;
                          *v837++ = v838 >= v840;
                          --v17;
                        }

                        while (v17);
                      }

                      break;
                    case 0:
                      if (a5 == 1)
                      {
                        if (v17)
                        {
                          v1914 = *(a2 + 2);
                          v1915 = *(a3 + 2);
                          v1916 = *(a4 + 2);
                          do
                          {
                            v1917 = *v1914++;
                            v1918 = v1917;
                            v1919 = *v1915++;
                            if (v1919 > v1918)
                            {
                              v1920 = 0.0;
                            }

                            else
                            {
                              v1920 = 1.0;
                            }

                            *v1916++ = v1920;
                            --v17;
                          }

                          while (v17);
                        }
                      }

                      else if (!a5 && v17)
                      {
                        v136 = *(a2 + 2);
                        v137 = *(a3 + 2);
                        v138 = *(a4 + 2);
                        do
                        {
                          v139 = *v136++;
                          v140 = v139;
                          v141 = *v137++;
                          if (v141 > v140)
                          {
                            v142 = 0.0;
                          }

                          else
                          {
                            v142 = 1.0;
                          }

                          *v138++ = v142;
                          --v17;
                        }

                        while (v17);
                      }

                      break;
                  }

                  break;
              }
            }

            else if (v18 == 1)
            {
              switch(v19)
              {
                case 2:
                  switch(v20)
                  {
                    case 2:
                      if (a5 == 1)
                      {
                        if (v17)
                        {
                          v1511 = *(a2 + 2);
                          v1512 = *(a3 + 2);
                          v1513 = *(a4 + 2);
                          do
                          {
                            v1515 = *v1511;
                            v1511 += 8;
                            v1514 = v1515;
                            v1516 = *v1512++;
                            *v1513++ = v1516 <= v1514;
                            --v17;
                          }

                          while (v17);
                        }
                      }

                      else if (!a5 && v17)
                      {
                        v751 = *(a2 + 2);
                        v752 = *(a3 + 2);
                        v753 = *(a4 + 2);
                        do
                        {
                          v755 = *v751;
                          v751 += 8;
                          v754 = v755;
                          v756 = *v752++;
                          *v753++ = v756 <= v754;
                          --v17;
                        }

                        while (v17);
                      }

                      break;
                    case 1:
                      if (a5 == 1)
                      {
                        if (v17)
                        {
                          v1304 = *(a2 + 2);
                          v1305 = *(a3 + 2);
                          v1306 = *(a4 + 2);
                          do
                          {
                            v1308 = *v1304++;
                            v1307 = v1308;
                            LODWORD(v1308) = *v1305++;
                            *v1306++ = v1307 >= v1308;
                            --v17;
                          }

                          while (v17);
                        }
                      }

                      else if (!a5 && v17)
                      {
                        v612 = *(a2 + 2);
                        v613 = *(a3 + 2);
                        v614 = *(a4 + 2);
                        do
                        {
                          v616 = *v612++;
                          v615 = v616;
                          LODWORD(v616) = *v613++;
                          *v614++ = v615 >= v616;
                          --v17;
                        }

                        while (v17);
                      }

                      break;
                    case 0:
                      if (a5 == 1)
                      {
                        if (v17)
                        {
                          v1597 = *(a2 + 2);
                          v1598 = *(a3 + 2);
                          v1599 = *(a4 + 2);
                          do
                          {
                            v1600 = *v1597++;
                            v1601 = v1600;
                            LODWORD(v1600) = *v1598++;
                            if (v1601 < v1600)
                            {
                              v1602 = 0.0;
                            }

                            else
                            {
                              v1602 = 1.0;
                            }

                            *v1599++ = v1602;
                            --v17;
                          }

                          while (v17);
                        }
                      }

                      else if (!a5 && v17)
                      {
                        v271 = *(a2 + 2);
                        v272 = *(a3 + 2);
                        v273 = *(a4 + 2);
                        do
                        {
                          v274 = *v271++;
                          v275 = v274;
                          LODWORD(v274) = *v272++;
                          if (v275 < v274)
                          {
                            v276 = 0.0;
                          }

                          else
                          {
                            v276 = 1.0;
                          }

                          *v273++ = v276;
                          --v17;
                        }

                        while (v17);
                      }

                      break;
                  }

                  break;
                case 1:
                  switch(v20)
                  {
                    case 2:
                      if (a5 == 1)
                      {
                        if (v17)
                        {
                          v1293 = *(a2 + 2);
                          v1294 = *(a3 + 2);
                          v1295 = *(a4 + 2);
                          do
                          {
                            v1297 = *v1293;
                            v1293 += 8;
                            v1296 = v1297;
                            v1298 = *v1294;
                            v1294 += 8;
                            *v1295++ = v1296 >= v1298;
                            --v17;
                          }

                          while (v17);
                        }
                      }

                      else if (!a5 && v17)
                      {
                        v601 = *(a2 + 2);
                        v602 = *(a3 + 2);
                        v603 = *(a4 + 2);
                        do
                        {
                          v605 = *v601;
                          v601 += 8;
                          v604 = v605;
                          v606 = *v602;
                          v602 += 8;
                          *v603++ = v604 >= v606;
                          --v17;
                        }

                        while (v17);
                      }

                      break;
                    case 1:
                      if (a5 == 1)
                      {
                        if (v17)
                        {
                          v1147 = *(a2 + 2);
                          v1148 = *(a3 + 2);
                          v1149 = *(a4 + 2);
                          do
                          {
                            v1151 = *v1147++;
                            v1150 = v1151;
                            v1152 = *v1148++;
                            *v1149++ = v1150 >= v1152;
                            --v17;
                          }

                          while (v17);
                        }
                      }

                      else if (!a5 && v17)
                      {
                        v509 = *(a2 + 2);
                        v510 = *(a3 + 2);
                        v511 = *(a4 + 2);
                        do
                        {
                          v513 = *v509++;
                          v512 = v513;
                          v514 = *v510++;
                          *v511++ = v512 >= v514;
                          --v17;
                        }

                        while (v17);
                      }

                      break;
                    case 0:
                      if (a5 == 1)
                      {
                        if (v17)
                        {
                          v1398 = *(a2 + 2);
                          v1399 = *(a3 + 2);
                          v1400 = *(a4 + 2);
                          do
                          {
                            v1401 = *v1398++;
                            v1402 = v1401;
                            v1403 = *v1399++;
                            if (v1402 < v1403)
                            {
                              v1404 = 0.0;
                            }

                            else
                            {
                              v1404 = 1.0;
                            }

                            *v1400++ = v1404;
                            --v17;
                          }

                          while (v17);
                        }
                      }

                      else if (!a5 && v17)
                      {
                        v232 = *(a2 + 2);
                        v233 = *(a3 + 2);
                        v234 = *(a4 + 2);
                        do
                        {
                          v235 = *v232++;
                          v236 = v235;
                          v237 = *v233++;
                          if (v236 < v237)
                          {
                            v238 = 0.0;
                          }

                          else
                          {
                            v238 = 1.0;
                          }

                          *v234++ = v238;
                          --v17;
                        }

                        while (v17);
                      }

                      break;
                  }

                  break;
                case 0:
                  switch(v20)
                  {
                    case 2:
                      if (a5 == 1)
                      {
                        if (v17)
                        {
                          v1623 = *(a2 + 2);
                          v1624 = *(a3 + 2);
                          v1625 = *(a4 + 2);
                          do
                          {
                            v1627 = *v1623;
                            v1623 += 8;
                            v1626 = v1627;
                            v1628 = *v1624++;
                            *v1625++ = v1626 >= v1628;
                            --v17;
                          }

                          while (v17);
                        }
                      }

                      else if (!a5 && v17)
                      {
                        v823 = *(a2 + 2);
                        v824 = *(a3 + 2);
                        v825 = *(a4 + 2);
                        do
                        {
                          v827 = *v823;
                          v823 += 8;
                          v826 = v827;
                          v828 = *v824++;
                          *v825++ = v826 >= v828;
                          --v17;
                        }

                        while (v17);
                      }

                      break;
                    case 1:
                      if (a5 == 1)
                      {
                        if (v17)
                        {
                          v1411 = *(a2 + 2);
                          v1412 = *(a3 + 2);
                          v1413 = *(a4 + 2);
                          do
                          {
                            v1415 = *v1411++;
                            v1414 = v1415;
                            v1416 = *v1412++;
                            *v1413++ = v1414 >= v1416;
                            --v17;
                          }

                          while (v17);
                        }
                      }

                      else if (!a5 && v17)
                      {
                        v691 = *(a2 + 2);
                        v692 = *(a3 + 2);
                        v693 = *(a4 + 2);
                        do
                        {
                          v695 = *v691++;
                          v694 = v695;
                          v696 = *v692++;
                          *v693++ = v694 >= v696;
                          --v17;
                        }

                        while (v17);
                      }

                      break;
                    case 0:
                      if (a5 == 1)
                      {
                        if (v17)
                        {
                          v1738 = *(a2 + 2);
                          v1739 = *(a3 + 2);
                          v1740 = *(a4 + 2);
                          do
                          {
                            v1741 = *v1738++;
                            v1742 = v1741;
                            v1743 = *v1739++;
                            if (v1743 > v1742)
                            {
                              v1744 = 0.0;
                            }

                            else
                            {
                              v1744 = 1.0;
                            }

                            *v1740++ = v1744;
                            --v17;
                          }

                          while (v17);
                        }
                      }

                      else if (!a5 && v17)
                      {
                        v108 = *(a2 + 2);
                        v109 = *(a3 + 2);
                        v110 = *(a4 + 2);
                        do
                        {
                          v111 = *v108++;
                          v112 = v111;
                          v113 = *v109++;
                          if (v113 > v112)
                          {
                            v114 = 0.0;
                          }

                          else
                          {
                            v114 = 1.0;
                          }

                          *v110++ = v114;
                          --v17;
                        }

                        while (v17);
                      }

                      break;
                  }

                  break;
              }
            }

            else if (!v18)
            {
              switch(v19)
              {
                case 2:
                  switch(v20)
                  {
                    case 2:
                      if (a5 == 1)
                      {
                        if (v17)
                        {
                          v1866 = *(a2 + 2);
                          v1867 = *(a3 + 2);
                          v1868 = *(a4 + 2);
                          do
                          {
                            v1869 = *v1866++;
                            v1870 = v1869;
                            LODWORD(v1869) = *v1867++;
                            *v1868++ = LODWORD(v1869) <= v1870;
                            --v17;
                          }

                          while (v17);
                        }
                      }

                      else if (!a5 && v17)
                      {
                        v970 = *(a2 + 2);
                        v971 = *(a3 + 2);
                        v972 = *(a4 + 2);
                        do
                        {
                          v973 = *v970++;
                          v974 = v973;
                          LODWORD(v973) = *v971++;
                          *v972++ = LODWORD(v973) <= v974;
                          --v17;
                        }

                        while (v17);
                      }

                      break;
                    case 1:
                      if (a5 == 1)
                      {
                        if (v17)
                        {
                          v1656 = *(a2 + 2);
                          v1657 = *(a3 + 2);
                          v1658 = *(a4 + 2);
                          do
                          {
                            v1659 = *v1656++;
                            v1660 = v1659;
                            LODWORD(v1659) = *v1657++;
                            *v1658++ = v1660 >= LODWORD(v1659);
                            --v17;
                          }

                          while (v17);
                        }
                      }

                      else if (!a5 && v17)
                      {
                        v856 = *(a2 + 2);
                        v857 = *(a3 + 2);
                        v858 = *(a4 + 2);
                        do
                        {
                          v859 = *v856++;
                          v860 = v859;
                          LODWORD(v859) = *v857++;
                          *v858++ = v860 >= LODWORD(v859);
                          --v17;
                        }

                        while (v17);
                      }

                      break;
                    case 0:
                      if (a5 == 1)
                      {
                        if (v17)
                        {
                          v1927 = *(a2 + 2);
                          v1928 = *(a3 + 2);
                          v1929 = *(a4 + 2);
                          do
                          {
                            v1930 = *v1927++;
                            v1931 = v1930;
                            LODWORD(v1930) = *v1928++;
                            if (v1931 < LODWORD(v1930))
                            {
                              v1932 = 0.0;
                            }

                            else
                            {
                              v1932 = 1.0;
                            }

                            *v1929++ = v1932;
                            --v17;
                          }

                          while (v17);
                        }
                      }

                      else if (!a5 && v17)
                      {
                        v379 = *(a2 + 2);
                        v380 = *(a3 + 2);
                        v381 = *(a4 + 2);
                        do
                        {
                          v382 = *v379++;
                          v383 = v382;
                          LODWORD(v382) = *v380++;
                          if (v383 < LODWORD(v382))
                          {
                            v384 = 0.0;
                          }

                          else
                          {
                            v384 = 1.0;
                          }

                          *v381++ = v384;
                          --v17;
                        }

                        while (v17);
                      }

                      break;
                  }

                  break;
                case 1:
                  switch(v20)
                  {
                    case 2:
                      if (a5 == 1)
                      {
                        if (v17)
                        {
                          v1646 = *(a2 + 2);
                          v1647 = *(a3 + 2);
                          v1648 = *(a4 + 2);
                          do
                          {
                            v1649 = *v1646++;
                            v1650 = v1649;
                            LODWORD(v1649) = *v1647;
                            v1647 += 8;
                            *v1648++ = v1650 >= LODWORD(v1649);
                            --v17;
                          }

                          while (v17);
                        }
                      }

                      else if (!a5 && v17)
                      {
                        v846 = *(a2 + 2);
                        v847 = *(a3 + 2);
                        v848 = *(a4 + 2);
                        do
                        {
                          v849 = *v846++;
                          v850 = v849;
                          LODWORD(v849) = *v847;
                          v847 += 8;
                          *v848++ = v850 >= LODWORD(v849);
                          --v17;
                        }

                        while (v17);
                      }

                      break;
                    case 1:
                      if (a5 == 1)
                      {
                        if (v17)
                        {
                          v1423 = *(a2 + 2);
                          v1424 = *(a3 + 2);
                          v1425 = *(a4 + 2);
                          do
                          {
                            v1426 = *v1423++;
                            v1427 = v1426;
                            v1428 = *v1424++;
                            *v1425++ = v1428 <= v1427;
                            --v17;
                          }

                          while (v17);
                        }
                      }

                      else if (!a5 && v17)
                      {
                        v703 = *(a2 + 2);
                        v704 = *(a3 + 2);
                        v705 = *(a4 + 2);
                        do
                        {
                          v706 = *v703++;
                          v707 = v706;
                          v708 = *v704++;
                          *v705++ = v708 <= v707;
                          --v17;
                        }

                        while (v17);
                      }

                      break;
                    case 0:
                      if (a5 == 1)
                      {
                        if (v17)
                        {
                          v1752 = *(a2 + 2);
                          v1753 = *(a3 + 2);
                          v1754 = *(a4 + 2);
                          do
                          {
                            v1755 = *v1752++;
                            v1756 = v1755;
                            v1757 = *v1753++;
                            if (v1756 < v1757)
                            {
                              v1758 = 0.0;
                            }

                            else
                            {
                              v1758 = 1.0;
                            }

                            *v1754++ = v1758;
                            --v17;
                          }

                          while (v17);
                        }
                      }

                      else if (!a5 && v17)
                      {
                        v324 = *(a2 + 2);
                        v325 = *(a3 + 2);
                        v326 = *(a4 + 2);
                        do
                        {
                          v327 = *v324++;
                          v328 = v327;
                          v329 = *v325++;
                          if (v328 < v329)
                          {
                            v330 = 0.0;
                          }

                          else
                          {
                            v330 = 1.0;
                          }

                          *v326++ = v330;
                          --v17;
                        }

                        while (v17);
                      }

                      break;
                  }

                  break;
                case 0:
                  switch(v20)
                  {
                    case 2:
                      if (a5 == 1)
                      {
                        if (v17)
                        {
                          v1939 = *(a2 + 2);
                          v1940 = *(a3 + 2);
                          v1941 = *(a4 + 2);
                          do
                          {
                            v1942 = *v1939++;
                            v1943 = v1942;
                            v1944 = *v1940++;
                            *v1941++ = v1943 >= v1944;
                            --v17;
                          }

                          while (v17);
                        }
                      }

                      else if (!a5 && v17)
                      {
                        v1003 = *(a2 + 2);
                        v1004 = *(a3 + 2);
                        v1005 = *(a4 + 2);
                        do
                        {
                          v1006 = *v1003++;
                          v1007 = v1006;
                          v1008 = *v1004++;
                          *v1005++ = v1007 >= v1008;
                          --v17;
                        }

                        while (v17);
                      }

                      break;
                    case 1:
                      if (a5 == 1)
                      {
                        if (v17)
                        {
                          v1765 = *(a2 + 2);
                          v1766 = *(a3 + 2);
                          v1767 = *(a4 + 2);
                          do
                          {
                            v1768 = *v1765++;
                            v1769 = v1768;
                            v1770 = *v1766++;
                            *v1767++ = v1769 >= v1770;
                            --v17;
                          }

                          while (v17);
                        }
                      }

                      else if (!a5 && v17)
                      {
                        v911 = *(a2 + 2);
                        v912 = *(a3 + 2);
                        v913 = *(a4 + 2);
                        do
                        {
                          v914 = *v911++;
                          v915 = v914;
                          v916 = *v912++;
                          *v913++ = v915 >= v916;
                          --v17;
                        }

                        while (v17);
                      }

                      break;
                    case 0:
                      if (a5 == 1)
                      {
                        if (v17)
                        {
                          v1990 = *(a2 + 2);
                          v1991 = *(a3 + 2);
                          v1992 = *(a4 + 2);
                          do
                          {
                            v1993 = *v1990++;
                            v1994 = v1993;
                            v1995 = *v1991++;
                            if (v1994 < v1995)
                            {
                              v1996 = 0.0;
                            }

                            else
                            {
                              v1996 = 1.0;
                            }

                            *v1992++ = v1996;
                            --v17;
                          }

                          while (v17);
                        }
                      }

                      else if (!a5 && v17)
                      {
                        v21 = *(a2 + 2);
                        v22 = *(a3 + 2);
                        v23 = *(a4 + 2);
                        do
                        {
                          v24 = *v21++;
                          v25 = v24;
                          v26 = *v22++;
                          if (v25 < v26)
                          {
                            v27 = 0.0;
                          }

                          else
                          {
                            v27 = 1.0;
                          }

                          *v23++ = v27;
                          --v17;
                        }

                        while (v17);
                      }

                      break;
                  }

                  break;
              }
            }

            return a4;
          }
        }

        break;
      default:
        return a6;
    }

    return 0;
  }

  switch(a1)
  {
    case 0:
      a6 = 0;
      if (!a2 || !a3 || !a4)
      {
        return a6;
      }

      if ((a4[8] & 1) == 0)
      {
        v28 = *(a2 + 1);
        if (v28 == *(a3 + 1) && v28 == *(a4 + 1))
        {
          v29 = *a2;
          v30 = *a3;
          v31 = *a4;
          if (*a2 == 2)
          {
            switch(v30)
            {
              case 2:
                switch(v31)
                {
                  case 2:
                    if (a5 == 1)
                    {
                      if (v28)
                      {
                        v1275 = *(a2 + 2);
                        v1276 = *(a3 + 2);
                        v1277 = *(a4 + 2);
                        do
                        {
                          v1279 = *v1275++;
                          v1278 = v1279;
                          v1280 = *v1276++;
                          *v1277++ = v1278 == v1280;
                          --v28;
                        }

                        while (v28);
                      }
                    }

                    else if (!a5 && v28)
                    {
                      v583 = *(a2 + 2);
                      v584 = *(a3 + 2);
                      v585 = *(a4 + 2);
                      do
                      {
                        v587 = *v583++;
                        v586 = v587;
                        v588 = *v584++;
                        *v585++ = v586 == v588;
                        --v28;
                      }

                      while (v28);
                    }

                    break;
                  case 1:
                    if (a5 == 1)
                    {
                      if (v28)
                      {
                        v1129 = *(a2 + 2);
                        v1130 = *(a3 + 2);
                        v1131 = *(a4 + 2);
                        do
                        {
                          v1133 = *v1129++;
                          v1132 = v1133;
                          v1134 = *v1130++;
                          *v1131++ = v1132 == v1134;
                          --v28;
                        }

                        while (v28);
                      }
                    }

                    else if (!a5 && v28)
                    {
                      v491 = *(a2 + 2);
                      v492 = *(a3 + 2);
                      v493 = *(a4 + 2);
                      do
                      {
                        v495 = *v491++;
                        v494 = v495;
                        v496 = *v492++;
                        *v493++ = v494 == v496;
                        --v28;
                      }

                      while (v28);
                    }

                    break;
                  case 0:
                    if (a5 == 1)
                    {
                      if (v28)
                      {
                        v1321 = *(a2 + 2);
                        v1322 = *(a3 + 2);
                        v1323 = *(a4 + 2);
                        do
                        {
                          v1325 = *v1321++;
                          v1324 = v1325;
                          v1326 = *v1322++;
                          if (v1324 == v1326)
                          {
                            v1327 = 1.0;
                          }

                          else
                          {
                            v1327 = 0.0;
                          }

                          *v1323++ = v1327;
                          --v28;
                        }

                        while (v28);
                      }
                    }

                    else if (!a5 && v28)
                    {
                      v211 = *(a2 + 2);
                      v212 = *(a3 + 2);
                      v213 = *(a4 + 2);
                      do
                      {
                        v215 = *v211++;
                        v214 = v215;
                        v216 = *v212++;
                        if (v214 == v216)
                        {
                          v217 = 1.0;
                        }

                        else
                        {
                          v217 = 0.0;
                        }

                        *v213++ = v217;
                        --v28;
                      }

                      while (v28);
                    }

                    break;
                }

                break;
              case 1:
                switch(v31)
                {
                  case 2:
                    if (a5 == 1)
                    {
                      if (v28)
                      {
                        v1117 = *(a2 + 2);
                        v1118 = *(a3 + 2);
                        v1119 = *(a4 + 2);
                        do
                        {
                          v1121 = *v1117++;
                          v1120 = v1121;
                          v1122 = *v1118;
                          v1118 += 8;
                          *v1119++ = v1120 == v1122;
                          --v28;
                        }

                        while (v28);
                      }
                    }

                    else if (!a5 && v28)
                    {
                      v479 = *(a2 + 2);
                      v480 = *(a3 + 2);
                      v481 = *(a4 + 2);
                      do
                      {
                        v483 = *v479++;
                        v482 = v483;
                        v484 = *v480;
                        v480 += 8;
                        *v481++ = v482 == v484;
                        --v28;
                      }

                      while (v28);
                    }

                    break;
                  case 1:
                    if (a5 == 1)
                    {
                      if (v28)
                      {
                        v1055 = *(a2 + 2);
                        v1056 = *(a3 + 2);
                        v1057 = *(a4 + 2);
                        do
                        {
                          v1059 = *v1055++;
                          v1058 = v1059;
                          v1060 = *v1056++;
                          *v1057++ = v1060 == v1058;
                          --v28;
                        }

                        while (v28);
                      }
                    }

                    else if (!a5 && v28)
                    {
                      v431 = *(a2 + 2);
                      v432 = *(a3 + 2);
                      v433 = *(a4 + 2);
                      do
                      {
                        v435 = *v431++;
                        v434 = v435;
                        v436 = *v432++;
                        *v433++ = v436 == v434;
                        --v28;
                      }

                      while (v28);
                    }

                    break;
                  case 0:
                    if (a5 == 1)
                    {
                      if (v28)
                      {
                        v1165 = *(a2 + 2);
                        v1166 = *(a3 + 2);
                        v1167 = *(a4 + 2);
                        do
                        {
                          v1168 = *v1165++;
                          v1169 = v1168;
                          v1170 = *v1166++;
                          if (v1169 == v1170)
                          {
                            v1171 = 1.0;
                          }

                          else
                          {
                            v1171 = 0.0;
                          }

                          *v1167++ = v1171;
                          --v28;
                        }

                        while (v28);
                      }
                    }

                    else if (!a5 && v28)
                    {
                      v183 = *(a2 + 2);
                      v184 = *(a3 + 2);
                      v185 = *(a4 + 2);
                      do
                      {
                        v186 = *v183++;
                        v187 = v186;
                        v188 = *v184++;
                        if (v187 == v188)
                        {
                          v189 = 1.0;
                        }

                        else
                        {
                          v189 = 0.0;
                        }

                        *v185++ = v189;
                        --v28;
                      }

                      while (v28);
                    }

                    break;
                }

                break;
              case 0:
                switch(v31)
                {
                  case 2:
                    if (a5 == 1)
                    {
                      if (v28)
                      {
                        v1335 = *(a2 + 2);
                        v1336 = *(a3 + 2);
                        v1337 = *(a4 + 2);
                        do
                        {
                          v1339 = *v1335++;
                          v1338 = v1339;
                          v1340 = *v1336++;
                          *v1337++ = v1338 == v1340;
                          --v28;
                        }

                        while (v28);
                      }
                    }

                    else if (!a5 && v28)
                    {
                      v629 = *(a2 + 2);
                      v630 = *(a3 + 2);
                      v631 = *(a4 + 2);
                      do
                      {
                        v633 = *v629++;
                        v632 = v633;
                        v634 = *v630++;
                        *v631++ = v632 == v634;
                        --v28;
                      }

                      while (v28);
                    }

                    break;
                  case 1:
                    if (a5 == 1)
                    {
                      if (v28)
                      {
                        v1191 = *(a2 + 2);
                        v1192 = *(a3 + 2);
                        v1193 = *(a4 + 2);
                        do
                        {
                          v1195 = *v1191++;
                          v1194 = v1195;
                          v1196 = *v1192++;
                          *v1193++ = v1194 == v1196;
                          --v28;
                        }

                        while (v28);
                      }
                    }

                    else if (!a5 && v28)
                    {
                      v527 = *(a2 + 2);
                      v528 = *(a3 + 2);
                      v529 = *(a4 + 2);
                      do
                      {
                        v531 = *v527++;
                        v530 = v531;
                        v532 = *v528++;
                        *v529++ = v530 == v532;
                        --v28;
                      }

                      while (v28);
                    }

                    break;
                  case 0:
                    if (a5 == 1)
                    {
                      if (v28)
                      {
                        v1429 = *(a2 + 2);
                        v1430 = *(a3 + 2);
                        v1431 = *(a4 + 2);
                        do
                        {
                          v1432 = *v1429++;
                          v1433 = v1432;
                          v1434 = *v1430++;
                          if (v1434 == v1433)
                          {
                            v1435 = 1.0;
                          }

                          else
                          {
                            v1435 = 0.0;
                          }

                          *v1431++ = v1435;
                          --v28;
                        }

                        while (v28);
                      }
                    }

                    else if (!a5 && v28)
                    {
                      v87 = *(a2 + 2);
                      v88 = *(a3 + 2);
                      v89 = *(a4 + 2);
                      do
                      {
                        v90 = *v87++;
                        v91 = v90;
                        v92 = *v88++;
                        if (v92 == v91)
                        {
                          v93 = 1.0;
                        }

                        else
                        {
                          v93 = 0.0;
                        }

                        *v89++ = v93;
                        --v28;
                      }

                      while (v28);
                    }

                    break;
                }

                break;
            }
          }

          else if (v29 == 1)
          {
            switch(v30)
            {
              case 2:
                switch(v31)
                {
                  case 2:
                    if (a5 == 1)
                    {
                      if (v28)
                      {
                        v1105 = *(a2 + 2);
                        v1106 = *(a3 + 2);
                        v1107 = *(a4 + 2);
                        do
                        {
                          v1109 = *v1105;
                          v1105 += 8;
                          v1108 = v1109;
                          v1110 = *v1106++;
                          *v1107++ = v1110 == v1108;
                          --v28;
                        }

                        while (v28);
                      }
                    }

                    else if (!a5 && v28)
                    {
                      v467 = *(a2 + 2);
                      v468 = *(a3 + 2);
                      v469 = *(a4 + 2);
                      do
                      {
                        v471 = *v467;
                        v467 += 8;
                        v470 = v471;
                        v472 = *v468++;
                        *v469++ = v472 == v470;
                        --v28;
                      }

                      while (v28);
                    }

                    break;
                  case 1:
                    if (a5 == 1)
                    {
                      if (v28)
                      {
                        v1045 = *(a2 + 2);
                        v1046 = *(a3 + 2);
                        v1047 = *(a4 + 2);
                        do
                        {
                          v1049 = *v1045++;
                          v1048 = v1049;
                          LODWORD(v1049) = *v1046++;
                          *v1047++ = v1048 == v1049;
                          --v28;
                        }

                        while (v28);
                      }
                    }

                    else if (!a5 && v28)
                    {
                      v421 = *(a2 + 2);
                      v422 = *(a3 + 2);
                      v423 = *(a4 + 2);
                      do
                      {
                        v425 = *v421++;
                        v424 = v425;
                        LODWORD(v425) = *v422++;
                        *v423++ = v424 == v425;
                        --v28;
                      }

                      while (v28);
                    }

                    break;
                  case 0:
                    if (a5 == 1)
                    {
                      if (v28)
                      {
                        v1153 = *(a2 + 2);
                        v1154 = *(a3 + 2);
                        v1155 = *(a4 + 2);
                        do
                        {
                          v1156 = *v1153++;
                          v1157 = v1156;
                          LODWORD(v1156) = *v1154++;
                          if (v1157 == v1156)
                          {
                            v1158 = 1.0;
                          }

                          else
                          {
                            v1158 = 0.0;
                          }

                          *v1155++ = v1158;
                          --v28;
                        }

                        while (v28);
                      }
                    }

                    else if (!a5 && v28)
                    {
                      v171 = *(a2 + 2);
                      v172 = *(a3 + 2);
                      v173 = *(a4 + 2);
                      do
                      {
                        v174 = *v171++;
                        v175 = v174;
                        LODWORD(v174) = *v172++;
                        if (v175 == v174)
                        {
                          v176 = 1.0;
                        }

                        else
                        {
                          v176 = 0.0;
                        }

                        *v173++ = v176;
                        --v28;
                      }

                      while (v28);
                    }

                    break;
                }

                break;
              case 1:
                switch(v31)
                {
                  case 2:
                    if (a5 == 1)
                    {
                      if (v28)
                      {
                        v1033 = *(a2 + 2);
                        v1034 = *(a3 + 2);
                        v1035 = *(a4 + 2);
                        do
                        {
                          v1037 = *v1033;
                          v1033 += 8;
                          v1036 = v1037;
                          v1038 = *v1034;
                          v1034 += 8;
                          *v1035++ = v1036 == v1038;
                          --v28;
                        }

                        while (v28);
                      }
                    }

                    else if (!a5 && v28)
                    {
                      v409 = *(a2 + 2);
                      v410 = *(a3 + 2);
                      v411 = *(a4 + 2);
                      do
                      {
                        v413 = *v409;
                        v409 += 8;
                        v412 = v413;
                        v414 = *v410;
                        v410 += 8;
                        *v411++ = v412 == v414;
                        --v28;
                      }

                      while (v28);
                    }

                    break;
                  case 1:
                    if (a5 == 1)
                    {
                      if (v28)
                      {
                        v1021 = *(a2 + 2);
                        v1022 = *(a3 + 2);
                        v1023 = *(a4 + 2);
                        do
                        {
                          v1025 = *v1021++;
                          v1024 = v1025;
                          v1026 = *v1022++;
                          *v1023++ = v1024 == v1026;
                          --v28;
                        }

                        while (v28);
                      }
                    }

                    else if (!a5 && v28)
                    {
                      v397 = *(a2 + 2);
                      v398 = *(a3 + 2);
                      v399 = *(a4 + 2);
                      do
                      {
                        v401 = *v397++;
                        v400 = v401;
                        v402 = *v398++;
                        *v399++ = v400 == v402;
                        --v28;
                      }

                      while (v28);
                    }

                    break;
                  case 0:
                    if (a5 == 1)
                    {
                      if (v28)
                      {
                        v1067 = *(a2 + 2);
                        v1068 = *(a3 + 2);
                        v1069 = *(a4 + 2);
                        do
                        {
                          v1070 = *v1067++;
                          v1071 = v1070;
                          v1072 = *v1068++;
                          if (v1071 == v1072)
                          {
                            v1073 = 1.0;
                          }

                          else
                          {
                            v1073 = 0.0;
                          }

                          *v1069++ = v1073;
                          --v28;
                        }

                        while (v28);
                      }
                    }

                    else if (!a5 && v28)
                    {
                      v157 = *(a2 + 2);
                      v158 = *(a3 + 2);
                      v159 = *(a4 + 2);
                      do
                      {
                        v160 = *v157++;
                        v161 = v160;
                        v162 = *v158++;
                        if (v161 == v162)
                        {
                          v163 = 1.0;
                        }

                        else
                        {
                          v163 = 0.0;
                        }

                        *v159++ = v163;
                        --v28;
                      }

                      while (v28);
                    }

                    break;
                }

                break;
              case 0:
                switch(v31)
                {
                  case 2:
                    if (a5 == 1)
                    {
                      if (v28)
                      {
                        v1179 = *(a2 + 2);
                        v1180 = *(a3 + 2);
                        v1181 = *(a4 + 2);
                        do
                        {
                          v1183 = *v1179;
                          v1179 += 8;
                          v1182 = v1183;
                          v1184 = *v1180++;
                          *v1181++ = v1182 == v1184;
                          --v28;
                        }

                        while (v28);
                      }
                    }

                    else if (!a5 && v28)
                    {
                      v515 = *(a2 + 2);
                      v516 = *(a3 + 2);
                      v517 = *(a4 + 2);
                      do
                      {
                        v519 = *v515;
                        v515 += 8;
                        v518 = v519;
                        v520 = *v516++;
                        *v517++ = v518 == v520;
                        --v28;
                      }

                      while (v28);
                    }

                    break;
                  case 1:
                    if (a5 == 1)
                    {
                      if (v28)
                      {
                        v1081 = *(a2 + 2);
                        v1082 = *(a3 + 2);
                        v1083 = *(a4 + 2);
                        do
                        {
                          v1085 = *v1081++;
                          v1084 = v1085;
                          v1086 = *v1082++;
                          *v1083++ = v1084 == v1086;
                          --v28;
                        }

                        while (v28);
                      }
                    }

                    else if (!a5 && v28)
                    {
                      v443 = *(a2 + 2);
                      v444 = *(a3 + 2);
                      v445 = *(a4 + 2);
                      do
                      {
                        v447 = *v443++;
                        v446 = v447;
                        v448 = *v444++;
                        *v445++ = v446 == v448;
                        --v28;
                      }

                      while (v28);
                    }

                    break;
                  case 0:
                    if (a5 == 1)
                    {
                      if (v28)
                      {
                        v1235 = *(a2 + 2);
                        v1236 = *(a3 + 2);
                        v1237 = *(a4 + 2);
                        do
                        {
                          v1238 = *v1235++;
                          v1239 = v1238;
                          v1240 = *v1236++;
                          if (v1240 == v1239)
                          {
                            v1241 = 1.0;
                          }

                          else
                          {
                            v1241 = 0.0;
                          }

                          *v1237++ = v1241;
                          --v28;
                        }

                        while (v28);
                      }
                    }

                    else if (!a5 && v28)
                    {
                      v73 = *(a2 + 2);
                      v74 = *(a3 + 2);
                      v75 = *(a4 + 2);
                      do
                      {
                        v76 = *v73++;
                        v77 = v76;
                        v78 = *v74++;
                        if (v78 == v77)
                        {
                          v79 = 1.0;
                        }

                        else
                        {
                          v79 = 0.0;
                        }

                        *v75++ = v79;
                        --v28;
                      }

                      while (v28);
                    }

                    break;
                }

                break;
            }
          }

          else if (!v29)
          {
            switch(v30)
            {
              case 2:
                switch(v31)
                {
                  case 2:
                    if (a5 == 1)
                    {
                      if (v28)
                      {
                        v1347 = *(a2 + 2);
                        v1348 = *(a3 + 2);
                        v1349 = *(a4 + 2);
                        do
                        {
                          v1350 = *v1347++;
                          v1351 = v1350;
                          LODWORD(v1350) = *v1348++;
                          *v1349++ = LODWORD(v1350) == v1351;
                          --v28;
                        }

                        while (v28);
                      }
                    }

                    else if (!a5 && v28)
                    {
                      v641 = *(a2 + 2);
                      v642 = *(a3 + 2);
                      v643 = *(a4 + 2);
                      do
                      {
                        v644 = *v641++;
                        v645 = v644;
                        LODWORD(v644) = *v642++;
                        *v643++ = LODWORD(v644) == v645;
                        --v28;
                      }

                      while (v28);
                    }

                    break;
                  case 1:
                    if (a5 == 1)
                    {
                      if (v28)
                      {
                        v1213 = *(a2 + 2);
                        v1214 = *(a3 + 2);
                        v1215 = *(a4 + 2);
                        do
                        {
                          v1216 = *v1213++;
                          v1217 = v1216;
                          LODWORD(v1216) = *v1214++;
                          *v1215++ = v1217 == LODWORD(v1216);
                          --v28;
                        }

                        while (v28);
                      }
                    }

                    else if (!a5 && v28)
                    {
                      v549 = *(a2 + 2);
                      v550 = *(a3 + 2);
                      v551 = *(a4 + 2);
                      do
                      {
                        v552 = *v549++;
                        v553 = v552;
                        LODWORD(v552) = *v550++;
                        *v551++ = v553 == LODWORD(v552);
                        --v28;
                      }

                      while (v28);
                    }

                    break;
                  case 0:
                    if (a5 == 1)
                    {
                      if (v28)
                      {
                        v1443 = *(a2 + 2);
                        v1444 = *(a3 + 2);
                        v1445 = *(a4 + 2);
                        do
                        {
                          v1446 = *v1443++;
                          v1447 = v1446;
                          LODWORD(v1446) = *v1444++;
                          if (v1447 == LODWORD(v1446))
                          {
                            v1448 = 1.0;
                          }

                          else
                          {
                            v1448 = 0.0;
                          }

                          *v1445++ = v1448;
                          --v28;
                        }

                        while (v28);
                      }
                    }

                    else if (!a5 && v28)
                    {
                      v239 = *(a2 + 2);
                      v240 = *(a3 + 2);
                      v241 = *(a4 + 2);
                      do
                      {
                        v242 = *v239++;
                        v243 = v242;
                        LODWORD(v242) = *v240++;
                        if (v243 == LODWORD(v242))
                        {
                          v244 = 1.0;
                        }

                        else
                        {
                          v244 = 0.0;
                        }

                        *v241++ = v244;
                        --v28;
                      }

                      while (v28);
                    }

                    break;
                }

                break;
              case 1:
                switch(v31)
                {
                  case 2:
                    if (a5 == 1)
                    {
                      if (v28)
                      {
                        v1203 = *(a2 + 2);
                        v1204 = *(a3 + 2);
                        v1205 = *(a4 + 2);
                        do
                        {
                          v1206 = *v1203++;
                          v1207 = v1206;
                          LODWORD(v1206) = *v1204;
                          v1204 += 8;
                          *v1205++ = v1207 == LODWORD(v1206);
                          --v28;
                        }

                        while (v28);
                      }
                    }

                    else if (!a5 && v28)
                    {
                      v539 = *(a2 + 2);
                      v540 = *(a3 + 2);
                      v541 = *(a4 + 2);
                      do
                      {
                        v542 = *v539++;
                        v543 = v542;
                        LODWORD(v542) = *v540;
                        v540 += 8;
                        *v541++ = v543 == LODWORD(v542);
                        --v28;
                      }

                      while (v28);
                    }

                    break;
                  case 1:
                    if (a5 == 1)
                    {
                      if (v28)
                      {
                        v1093 = *(a2 + 2);
                        v1094 = *(a3 + 2);
                        v1095 = *(a4 + 2);
                        do
                        {
                          v1096 = *v1093++;
                          v1097 = v1096;
                          v1098 = *v1094++;
                          *v1095++ = v1098 == v1097;
                          --v28;
                        }

                        while (v28);
                      }
                    }

                    else if (!a5 && v28)
                    {
                      v455 = *(a2 + 2);
                      v456 = *(a3 + 2);
                      v457 = *(a4 + 2);
                      do
                      {
                        v458 = *v455++;
                        v459 = v458;
                        v460 = *v456++;
                        *v457++ = v460 == v459;
                        --v28;
                      }

                      while (v28);
                    }

                    break;
                  case 0:
                    if (a5 == 1)
                    {
                      if (v28)
                      {
                        v1249 = *(a2 + 2);
                        v1250 = *(a3 + 2);
                        v1251 = *(a4 + 2);
                        do
                        {
                          v1252 = *v1249++;
                          v1253 = v1252;
                          v1254 = *v1250++;
                          if (v1253 == v1254)
                          {
                            v1255 = 1.0;
                          }

                          else
                          {
                            v1255 = 0.0;
                          }

                          *v1251++ = v1255;
                          --v28;
                        }

                        while (v28);
                      }
                    }

                    else if (!a5 && v28)
                    {
                      v197 = *(a2 + 2);
                      v198 = *(a3 + 2);
                      v199 = *(a4 + 2);
                      do
                      {
                        v200 = *v197++;
                        v201 = v200;
                        v202 = *v198++;
                        if (v201 == v202)
                        {
                          v203 = 1.0;
                        }

                        else
                        {
                          v203 = 0.0;
                        }

                        *v199++ = v203;
                        --v28;
                      }

                      while (v28);
                    }

                    break;
                }

                break;
              case 0:
                switch(v31)
                {
                  case 2:
                    if (a5 == 1)
                    {
                      if (v28)
                      {
                        v1455 = *(a2 + 2);
                        v1456 = *(a3 + 2);
                        v1457 = *(a4 + 2);
                        do
                        {
                          v1458 = *v1455++;
                          v1459 = v1458;
                          v1460 = *v1456++;
                          *v1457++ = v1459 == v1460;
                          --v28;
                        }

                        while (v28);
                      }
                    }

                    else if (!a5 && v28)
                    {
                      v709 = *(a2 + 2);
                      v710 = *(a3 + 2);
                      v711 = *(a4 + 2);
                      do
                      {
                        v712 = *v709++;
                        v713 = v712;
                        v714 = *v710++;
                        *v711++ = v713 == v714;
                        --v28;
                      }

                      while (v28);
                    }

                    break;
                  case 1:
                    if (a5 == 1)
                    {
                      if (v28)
                      {
                        v1263 = *(a2 + 2);
                        v1264 = *(a3 + 2);
                        v1265 = *(a4 + 2);
                        do
                        {
                          v1266 = *v1263++;
                          v1267 = v1266;
                          v1268 = *v1264++;
                          *v1265++ = v1267 == v1268;
                          --v28;
                        }

                        while (v28);
                      }
                    }

                    else if (!a5 && v28)
                    {
                      v571 = *(a2 + 2);
                      v572 = *(a3 + 2);
                      v573 = *(a4 + 2);
                      do
                      {
                        v574 = *v571++;
                        v575 = v574;
                        v576 = *v572++;
                        *v573++ = v575 == v576;
                        --v28;
                      }

                      while (v28);
                    }

                    break;
                  case 0:
                    if (a5 == 1)
                    {
                      if (v28)
                      {
                        v1541 = *(a2 + 2);
                        v1542 = *(a3 + 2);
                        v1543 = *(a4 + 2);
                        do
                        {
                          v1544 = *v1541++;
                          v1545 = v1544;
                          v1546 = *v1542++;
                          if (v1545 == v1546)
                          {
                            v1547 = 1.0;
                          }

                          else
                          {
                            v1547 = 0.0;
                          }

                          *v1543++ = v1547;
                          --v28;
                        }

                        while (v28);
                      }
                    }

                    else if (!a5 && v28)
                    {
                      v32 = *(a2 + 2);
                      v33 = *(a3 + 2);
                      v34 = *(a4 + 2);
                      do
                      {
                        v35 = *v32++;
                        v36 = v35;
                        v37 = *v33++;
                        if (v36 == v37)
                        {
                          v38 = 1.0;
                        }

                        else
                        {
                          v38 = 0.0;
                        }

                        *v34++ = v38;
                        --v28;
                      }

                      while (v28);
                    }

                    break;
                }

                break;
            }
          }

          return a4;
        }
      }

      return 0;
    case 1:
      a6 = 0;
      if (a2 && a3 && a4)
      {
        if ((a4[8] & 1) == 0)
        {
          v50 = *(a2 + 1);
          if (v50 == *(a3 + 1) && v50 == *(a4 + 1))
          {
            v51 = *a2;
            v52 = *a3;
            v53 = *a4;
            if (*a2 == 2)
            {
              switch(v52)
              {
                case 2:
                  switch(v53)
                  {
                    case 2:
                      if (a5 == 1)
                      {
                        if (v50)
                        {
                          v1823 = *(a2 + 2);
                          v1824 = *(a3 + 2);
                          v1825 = *(a4 + 2);
                          do
                          {
                            v1827 = *v1823++;
                            v1826 = v1827;
                            v1828 = *v1824++;
                            *v1825++ = v1826 != v1828;
                            --v50;
                          }

                          while (v50);
                        }
                      }

                      else if (!a5 && v50)
                      {
                        v941 = *(a2 + 2);
                        v942 = *(a3 + 2);
                        v943 = *(a4 + 2);
                        do
                        {
                          v945 = *v941++;
                          v944 = v945;
                          v946 = *v942++;
                          *v943++ = v944 != v946;
                          --v50;
                        }

                        while (v50);
                      }

                      break;
                    case 1:
                      if (a5 == 1)
                      {
                        if (v50)
                        {
                          v1579 = *(a2 + 2);
                          v1580 = *(a3 + 2);
                          v1581 = *(a4 + 2);
                          do
                          {
                            v1583 = *v1579++;
                            v1582 = v1583;
                            v1584 = *v1580++;
                            *v1581++ = v1582 != v1584;
                            --v50;
                          }

                          while (v50);
                        }
                      }

                      else if (!a5 && v50)
                      {
                        v805 = *(a2 + 2);
                        v806 = *(a3 + 2);
                        v807 = *(a4 + 2);
                        do
                        {
                          v809 = *v805++;
                          v808 = v809;
                          v810 = *v806++;
                          *v807++ = v808 != v810;
                          --v50;
                        }

                        while (v50);
                      }

                      break;
                    case 0:
                      if (a5 == 1)
                      {
                        if (v50)
                        {
                          v1871 = *(a2 + 2);
                          v1872 = *(a3 + 2);
                          v1873 = *(a4 + 2);
                          do
                          {
                            v1875 = *v1871++;
                            v1874 = v1875;
                            v1876 = *v1872++;
                            if (v1874 == v1876)
                            {
                              v1877 = 0.0;
                            }

                            else
                            {
                              v1877 = 1.0;
                            }

                            *v1873++ = v1877;
                            --v50;
                          }

                          while (v50);
                        }
                      }

                      else if (!a5 && v50)
                      {
                        v359 = *(a2 + 2);
                        v360 = *(a3 + 2);
                        v361 = *(a4 + 2);
                        do
                        {
                          v363 = *v359++;
                          v362 = v363;
                          v364 = *v360++;
                          if (v362 == v364)
                          {
                            v365 = 0.0;
                          }

                          else
                          {
                            v365 = 1.0;
                          }

                          *v361++ = v365;
                          --v50;
                        }

                        while (v50);
                      }

                      break;
                  }

                  break;
                case 1:
                  switch(v53)
                  {
                    case 2:
                      if (a5 == 1)
                      {
                        if (v50)
                        {
                          v1567 = *(a2 + 2);
                          v1568 = *(a3 + 2);
                          v1569 = *(a4 + 2);
                          do
                          {
                            v1571 = *v1567++;
                            v1570 = v1571;
                            v1572 = *v1568;
                            v1568 += 8;
                            *v1569++ = v1570 != v1572;
                            --v50;
                          }

                          while (v50);
                        }
                      }

                      else if (!a5 && v50)
                      {
                        v793 = *(a2 + 2);
                        v794 = *(a3 + 2);
                        v795 = *(a4 + 2);
                        do
                        {
                          v797 = *v793++;
                          v796 = v797;
                          v798 = *v794;
                          v794 += 8;
                          *v795++ = v796 != v798;
                          --v50;
                        }

                        while (v50);
                      }

                      break;
                    case 1:
                      if (a5 == 1)
                      {
                        if (v50)
                        {
                          v1379 = *(a2 + 2);
                          v1380 = *(a3 + 2);
                          v1381 = *(a4 + 2);
                          do
                          {
                            v1383 = *v1379++;
                            v1382 = v1383;
                            v1384 = *v1380++;
                            *v1381++ = v1384 != v1382;
                            --v50;
                          }

                          while (v50);
                        }
                      }

                      else if (!a5 && v50)
                      {
                        v673 = *(a2 + 2);
                        v674 = *(a3 + 2);
                        v675 = *(a4 + 2);
                        do
                        {
                          v677 = *v673++;
                          v676 = v677;
                          v678 = *v674++;
                          *v675++ = v678 != v676;
                          --v50;
                        }

                        while (v50);
                      }

                      break;
                    case 0:
                      if (a5 == 1)
                      {
                        if (v50)
                        {
                          v1673 = *(a2 + 2);
                          v1674 = *(a3 + 2);
                          v1675 = *(a4 + 2);
                          do
                          {
                            v1676 = *v1673++;
                            v1677 = v1676;
                            v1678 = *v1674++;
                            if (v1677 == v1678)
                            {
                              v1679 = 0.0;
                            }

                            else
                            {
                              v1679 = 1.0;
                            }

                            *v1675++ = v1679;
                            --v50;
                          }

                          while (v50);
                        }
                      }

                      else if (!a5 && v50)
                      {
                        v303 = *(a2 + 2);
                        v304 = *(a3 + 2);
                        v305 = *(a4 + 2);
                        do
                        {
                          v306 = *v303++;
                          v307 = v306;
                          v308 = *v304++;
                          if (v307 == v308)
                          {
                            v309 = 0.0;
                          }

                          else
                          {
                            v309 = 1.0;
                          }

                          *v305++ = v309;
                          --v50;
                        }

                        while (v50);
                      }

                      break;
                  }

                  break;
                case 0:
                  switch(v53)
                  {
                    case 2:
                      if (a5 == 1)
                      {
                        if (v50)
                        {
                          v1885 = *(a2 + 2);
                          v1886 = *(a3 + 2);
                          v1887 = *(a4 + 2);
                          do
                          {
                            v1889 = *v1885++;
                            v1888 = v1889;
                            v1890 = *v1886++;
                            *v1887++ = v1888 != v1890;
                            --v50;
                          }

                          while (v50);
                        }
                      }

                      else if (!a5 && v50)
                      {
                        v975 = *(a2 + 2);
                        v976 = *(a3 + 2);
                        v977 = *(a4 + 2);
                        do
                        {
                          v979 = *v975++;
                          v978 = v979;
                          v980 = *v976++;
                          *v977++ = v978 != v980;
                          --v50;
                        }

                        while (v50);
                      }

                      break;
                    case 1:
                      if (a5 == 1)
                      {
                        if (v50)
                        {
                          v1699 = *(a2 + 2);
                          v1700 = *(a3 + 2);
                          v1701 = *(a4 + 2);
                          do
                          {
                            v1703 = *v1699++;
                            v1702 = v1703;
                            v1704 = *v1700++;
                            *v1701++ = v1702 != v1704;
                            --v50;
                          }

                          while (v50);
                        }
                      }

                      else if (!a5 && v50)
                      {
                        v873 = *(a2 + 2);
                        v874 = *(a3 + 2);
                        v875 = *(a4 + 2);
                        do
                        {
                          v877 = *v873++;
                          v876 = v877;
                          v878 = *v874++;
                          *v875++ = v876 != v878;
                          --v50;
                        }

                        while (v50);
                      }

                      break;
                    case 0:
                      if (a5 == 1)
                      {
                        if (v50)
                        {
                          v1945 = *(a2 + 2);
                          v1946 = *(a3 + 2);
                          v1947 = *(a4 + 2);
                          do
                          {
                            v1948 = *v1945++;
                            v1949 = v1948;
                            v1950 = *v1946++;
                            if (v1950 == v1949)
                            {
                              v1951 = 0.0;
                            }

                            else
                            {
                              v1951 = 1.0;
                            }

                            *v1947++ = v1951;
                            --v50;
                          }

                          while (v50);
                        }
                      }

                      else if (!a5 && v50)
                      {
                        v143 = *(a2 + 2);
                        v144 = *(a3 + 2);
                        v145 = *(a4 + 2);
                        do
                        {
                          v146 = *v143++;
                          v147 = v146;
                          v148 = *v144++;
                          if (v148 == v147)
                          {
                            v149 = 0.0;
                          }

                          else
                          {
                            v149 = 1.0;
                          }

                          *v145++ = v149;
                          --v50;
                        }

                        while (v50);
                      }

                      break;
                  }

                  break;
              }
            }

            else if (v51 == 1)
            {
              switch(v52)
              {
                case 2:
                  switch(v53)
                  {
                    case 2:
                      if (a5 == 1)
                      {
                        if (v50)
                        {
                          v1555 = *(a2 + 2);
                          v1556 = *(a3 + 2);
                          v1557 = *(a4 + 2);
                          do
                          {
                            v1559 = *v1555;
                            v1555 += 8;
                            v1558 = v1559;
                            v1560 = *v1556++;
                            *v1557++ = v1560 != v1558;
                            --v50;
                          }

                          while (v50);
                        }
                      }

                      else if (!a5 && v50)
                      {
                        v781 = *(a2 + 2);
                        v782 = *(a3 + 2);
                        v783 = *(a4 + 2);
                        do
                        {
                          v785 = *v781;
                          v781 += 8;
                          v784 = v785;
                          v786 = *v782++;
                          *v783++ = v786 != v784;
                          --v50;
                        }

                        while (v50);
                      }

                      break;
                    case 1:
                      if (a5 == 1)
                      {
                        if (v50)
                        {
                          v1369 = *(a2 + 2);
                          v1370 = *(a3 + 2);
                          v1371 = *(a4 + 2);
                          do
                          {
                            v1373 = *v1369++;
                            v1372 = v1373;
                            LODWORD(v1373) = *v1370++;
                            *v1371++ = v1372 != v1373;
                            --v50;
                          }

                          while (v50);
                        }
                      }

                      else if (!a5 && v50)
                      {
                        v663 = *(a2 + 2);
                        v664 = *(a3 + 2);
                        v665 = *(a4 + 2);
                        do
                        {
                          v667 = *v663++;
                          v666 = v667;
                          LODWORD(v667) = *v664++;
                          *v665++ = v666 != v667;
                          --v50;
                        }

                        while (v50);
                      }

                      break;
                    case 0:
                      if (a5 == 1)
                      {
                        if (v50)
                        {
                          v1661 = *(a2 + 2);
                          v1662 = *(a3 + 2);
                          v1663 = *(a4 + 2);
                          do
                          {
                            v1664 = *v1661++;
                            v1665 = v1664;
                            LODWORD(v1664) = *v1662++;
                            if (v1665 == v1664)
                            {
                              v1666 = 0.0;
                            }

                            else
                            {
                              v1666 = 1.0;
                            }

                            *v1663++ = v1666;
                            --v50;
                          }

                          while (v50);
                        }
                      }

                      else if (!a5 && v50)
                      {
                        v291 = *(a2 + 2);
                        v292 = *(a3 + 2);
                        v293 = *(a4 + 2);
                        do
                        {
                          v294 = *v291++;
                          v295 = v294;
                          LODWORD(v294) = *v292++;
                          if (v295 == v294)
                          {
                            v296 = 0.0;
                          }

                          else
                          {
                            v296 = 1.0;
                          }

                          *v293++ = v296;
                          --v50;
                        }

                        while (v50);
                      }

                      break;
                  }

                  break;
                case 1:
                  switch(v53)
                  {
                    case 2:
                      if (a5 == 1)
                      {
                        if (v50)
                        {
                          v1357 = *(a2 + 2);
                          v1358 = *(a3 + 2);
                          v1359 = *(a4 + 2);
                          do
                          {
                            v1361 = *v1357;
                            v1357 += 8;
                            v1360 = v1361;
                            v1362 = *v1358;
                            v1358 += 8;
                            *v1359++ = v1360 != v1362;
                            --v50;
                          }

                          while (v50);
                        }
                      }

                      else if (!a5 && v50)
                      {
                        v651 = *(a2 + 2);
                        v652 = *(a3 + 2);
                        v653 = *(a4 + 2);
                        do
                        {
                          v655 = *v651;
                          v651 += 8;
                          v654 = v655;
                          v656 = *v652;
                          v652 += 8;
                          *v653++ = v654 != v656;
                          --v50;
                        }

                        while (v50);
                      }

                      break;
                    case 1:
                      if (a5 == 1)
                      {
                        if (v50)
                        {
                          v1223 = *(a2 + 2);
                          v1224 = *(a3 + 2);
                          v1225 = *(a4 + 2);
                          do
                          {
                            v1227 = *v1223++;
                            v1226 = v1227;
                            v1228 = *v1224++;
                            *v1225++ = v1226 != v1228;
                            --v50;
                          }

                          while (v50);
                        }
                      }

                      else if (!a5 && v50)
                      {
                        v559 = *(a2 + 2);
                        v560 = *(a3 + 2);
                        v561 = *(a4 + 2);
                        do
                        {
                          v563 = *v559++;
                          v562 = v563;
                          v564 = *v560++;
                          *v561++ = v562 != v564;
                          --v50;
                        }

                        while (v50);
                      }

                      break;
                    case 0:
                      if (a5 == 1)
                      {
                        if (v50)
                        {
                          v1467 = *(a2 + 2);
                          v1468 = *(a3 + 2);
                          v1469 = *(a4 + 2);
                          do
                          {
                            v1470 = *v1467++;
                            v1471 = v1470;
                            v1472 = *v1468++;
                            if (v1471 == v1472)
                            {
                              v1473 = 0.0;
                            }

                            else
                            {
                              v1473 = 1.0;
                            }

                            *v1469++ = v1473;
                            --v50;
                          }

                          while (v50);
                        }
                      }

                      else if (!a5 && v50)
                      {
                        v251 = *(a2 + 2);
                        v252 = *(a3 + 2);
                        v253 = *(a4 + 2);
                        do
                        {
                          v254 = *v251++;
                          v255 = v254;
                          v256 = *v252++;
                          if (v255 == v256)
                          {
                            v257 = 0.0;
                          }

                          else
                          {
                            v257 = 1.0;
                          }

                          *v253++ = v257;
                          --v50;
                        }

                        while (v50);
                      }

                      break;
                  }

                  break;
                case 0:
                  switch(v53)
                  {
                    case 2:
                      if (a5 == 1)
                      {
                        if (v50)
                        {
                          v1687 = *(a2 + 2);
                          v1688 = *(a3 + 2);
                          v1689 = *(a4 + 2);
                          do
                          {
                            v1691 = *v1687;
                            v1687 += 8;
                            v1690 = v1691;
                            v1692 = *v1688++;
                            *v1689++ = v1690 != v1692;
                            --v50;
                          }

                          while (v50);
                        }
                      }

                      else if (!a5 && v50)
                      {
                        v861 = *(a2 + 2);
                        v862 = *(a3 + 2);
                        v863 = *(a4 + 2);
                        do
                        {
                          v865 = *v861;
                          v861 += 8;
                          v864 = v865;
                          v866 = *v862++;
                          *v863++ = v864 != v866;
                          --v50;
                        }

                        while (v50);
                      }

                      break;
                    case 1:
                      if (a5 == 1)
                      {
                        if (v50)
                        {
                          v1481 = *(a2 + 2);
                          v1482 = *(a3 + 2);
                          v1483 = *(a4 + 2);
                          do
                          {
                            v1485 = *v1481++;
                            v1484 = v1485;
                            v1486 = *v1482++;
                            *v1483++ = v1484 != v1486;
                            --v50;
                          }

                          while (v50);
                        }
                      }

                      else if (!a5 && v50)
                      {
                        v721 = *(a2 + 2);
                        v722 = *(a3 + 2);
                        v723 = *(a4 + 2);
                        do
                        {
                          v725 = *v721++;
                          v724 = v725;
                          v726 = *v722++;
                          *v723++ = v724 != v726;
                          --v50;
                        }

                        while (v50);
                      }

                      break;
                    case 0:
                      if (a5 == 1)
                      {
                        if (v50)
                        {
                          v1783 = *(a2 + 2);
                          v1784 = *(a3 + 2);
                          v1785 = *(a4 + 2);
                          do
                          {
                            v1786 = *v1783++;
                            v1787 = v1786;
                            v1788 = *v1784++;
                            if (v1788 == v1787)
                            {
                              v1789 = 0.0;
                            }

                            else
                            {
                              v1789 = 1.0;
                            }

                            *v1785++ = v1789;
                            --v50;
                          }

                          while (v50);
                        }
                      }

                      else if (!a5 && v50)
                      {
                        v115 = *(a2 + 2);
                        v116 = *(a3 + 2);
                        v117 = *(a4 + 2);
                        do
                        {
                          v118 = *v115++;
                          v119 = v118;
                          v120 = *v116++;
                          if (v120 == v119)
                          {
                            v121 = 0.0;
                          }

                          else
                          {
                            v121 = 1.0;
                          }

                          *v117++ = v121;
                          --v50;
                        }

                        while (v50);
                      }

                      break;
                  }

                  break;
              }
            }

            else if (!v51)
            {
              switch(v52)
              {
                case 2:
                  switch(v53)
                  {
                    case 2:
                      if (a5 == 1)
                      {
                        if (v50)
                        {
                          v1897 = *(a2 + 2);
                          v1898 = *(a3 + 2);
                          v1899 = *(a4 + 2);
                          do
                          {
                            v1900 = *v1897++;
                            v1901 = v1900;
                            LODWORD(v1900) = *v1898++;
                            *v1899++ = LODWORD(v1900) != v1901;
                            --v50;
                          }

                          while (v50);
                        }
                      }

                      else if (!a5 && v50)
                      {
                        v987 = *(a2 + 2);
                        v988 = *(a3 + 2);
                        v989 = *(a4 + 2);
                        do
                        {
                          v990 = *v987++;
                          v991 = v990;
                          LODWORD(v990) = *v988++;
                          *v989++ = LODWORD(v990) != v991;
                          --v50;
                        }

                        while (v50);
                      }

                      break;
                    case 1:
                      if (a5 == 1)
                      {
                        if (v50)
                        {
                          v1721 = *(a2 + 2);
                          v1722 = *(a3 + 2);
                          v1723 = *(a4 + 2);
                          do
                          {
                            v1724 = *v1721++;
                            v1725 = v1724;
                            LODWORD(v1724) = *v1722++;
                            *v1723++ = v1725 != LODWORD(v1724);
                            --v50;
                          }

                          while (v50);
                        }
                      }

                      else if (!a5 && v50)
                      {
                        v895 = *(a2 + 2);
                        v896 = *(a3 + 2);
                        v897 = *(a4 + 2);
                        do
                        {
                          v898 = *v895++;
                          v899 = v898;
                          LODWORD(v898) = *v896++;
                          *v897++ = v899 != LODWORD(v898);
                          --v50;
                        }

                        while (v50);
                      }

                      break;
                    case 0:
                      if (a5 == 1)
                      {
                        if (v50)
                        {
                          v1959 = *(a2 + 2);
                          v1960 = *(a3 + 2);
                          v1961 = *(a4 + 2);
                          do
                          {
                            v1962 = *v1959++;
                            v1963 = v1962;
                            LODWORD(v1962) = *v1960++;
                            if (v1963 == LODWORD(v1962))
                            {
                              v1964 = 0.0;
                            }

                            else
                            {
                              v1964 = 1.0;
                            }

                            *v1961++ = v1964;
                            --v50;
                          }

                          while (v50);
                        }
                      }

                      else if (!a5 && v50)
                      {
                        v385 = *(a2 + 2);
                        v386 = *(a3 + 2);
                        v387 = *(a4 + 2);
                        do
                        {
                          v388 = *v385++;
                          v389 = v388;
                          LODWORD(v388) = *v386++;
                          if (v389 == LODWORD(v388))
                          {
                            v390 = 0.0;
                          }

                          else
                          {
                            v390 = 1.0;
                          }

                          *v387++ = v390;
                          --v50;
                        }

                        while (v50);
                      }

                      break;
                  }

                  break;
                case 1:
                  switch(v53)
                  {
                    case 2:
                      if (a5 == 1)
                      {
                        if (v50)
                        {
                          v1711 = *(a2 + 2);
                          v1712 = *(a3 + 2);
                          v1713 = *(a4 + 2);
                          do
                          {
                            v1714 = *v1711++;
                            v1715 = v1714;
                            LODWORD(v1714) = *v1712;
                            v1712 += 8;
                            *v1713++ = v1715 != LODWORD(v1714);
                            --v50;
                          }

                          while (v50);
                        }
                      }

                      else if (!a5 && v50)
                      {
                        v885 = *(a2 + 2);
                        v886 = *(a3 + 2);
                        v887 = *(a4 + 2);
                        do
                        {
                          v888 = *v885++;
                          v889 = v888;
                          LODWORD(v888) = *v886;
                          v886 += 8;
                          *v887++ = v889 != LODWORD(v888);
                          --v50;
                        }

                        while (v50);
                      }

                      break;
                    case 1:
                      if (a5 == 1)
                      {
                        if (v50)
                        {
                          v1493 = *(a2 + 2);
                          v1494 = *(a3 + 2);
                          v1495 = *(a4 + 2);
                          do
                          {
                            v1496 = *v1493++;
                            v1497 = v1496;
                            v1498 = *v1494++;
                            *v1495++ = v1498 != v1497;
                            --v50;
                          }

                          while (v50);
                        }
                      }

                      else if (!a5 && v50)
                      {
                        v733 = *(a2 + 2);
                        v734 = *(a3 + 2);
                        v735 = *(a4 + 2);
                        do
                        {
                          v736 = *v733++;
                          v737 = v736;
                          v738 = *v734++;
                          *v735++ = v738 != v737;
                          --v50;
                        }

                        while (v50);
                      }

                      break;
                    case 0:
                      if (a5 == 1)
                      {
                        if (v50)
                        {
                          v1797 = *(a2 + 2);
                          v1798 = *(a3 + 2);
                          v1799 = *(a4 + 2);
                          do
                          {
                            v1800 = *v1797++;
                            v1801 = v1800;
                            v1802 = *v1798++;
                            if (v1801 == v1802)
                            {
                              v1803 = 0.0;
                            }

                            else
                            {
                              v1803 = 1.0;
                            }

                            *v1799++ = v1803;
                            --v50;
                          }

                          while (v50);
                        }
                      }

                      else if (!a5 && v50)
                      {
                        v331 = *(a2 + 2);
                        v332 = *(a3 + 2);
                        v333 = *(a4 + 2);
                        do
                        {
                          v334 = *v331++;
                          v335 = v334;
                          v336 = *v332++;
                          if (v335 == v336)
                          {
                            v337 = 0.0;
                          }

                          else
                          {
                            v337 = 1.0;
                          }

                          *v333++ = v337;
                          --v50;
                        }

                        while (v50);
                      }

                      break;
                  }

                  break;
                case 0:
                  switch(v53)
                  {
                    case 2:
                      if (a5 == 1)
                      {
                        if (v50)
                        {
                          v1971 = *(a2 + 2);
                          v1972 = *(a3 + 2);
                          v1973 = *(a4 + 2);
                          do
                          {
                            v1974 = *v1971++;
                            v1975 = v1974;
                            v1976 = *v1972++;
                            *v1973++ = v1975 != v1976;
                            --v50;
                          }

                          while (v50);
                        }
                      }

                      else if (!a5 && v50)
                      {
                        v1009 = *(a2 + 2);
                        v1010 = *(a3 + 2);
                        v1011 = *(a4 + 2);
                        do
                        {
                          v1012 = *v1009++;
                          v1013 = v1012;
                          v1014 = *v1010++;
                          *v1011++ = v1013 != v1014;
                          --v50;
                        }

                        while (v50);
                      }

                      break;
                    case 1:
                      if (a5 == 1)
                      {
                        if (v50)
                        {
                          v1811 = *(a2 + 2);
                          v1812 = *(a3 + 2);
                          v1813 = *(a4 + 2);
                          do
                          {
                            v1814 = *v1811++;
                            v1815 = v1814;
                            v1816 = *v1812++;
                            *v1813++ = v1815 != v1816;
                            --v50;
                          }

                          while (v50);
                        }
                      }

                      else if (!a5 && v50)
                      {
                        v929 = *(a2 + 2);
                        v930 = *(a3 + 2);
                        v931 = *(a4 + 2);
                        do
                        {
                          v932 = *v929++;
                          v933 = v932;
                          v934 = *v930++;
                          *v931++ = v933 != v934;
                          --v50;
                        }

                        while (v50);
                      }

                      break;
                    case 0:
                      if (a5 == 1)
                      {
                        if (v50)
                        {
                          v1997 = *(a2 + 2);
                          v1998 = *(a3 + 2);
                          v1999 = *(a4 + 2);
                          do
                          {
                            v2000 = *v1997++;
                            v2001 = v2000;
                            v2002 = *v1998++;
                            if (v2001 == v2002)
                            {
                              v2003 = 0.0;
                            }

                            else
                            {
                              v2003 = 1.0;
                            }

                            *v1999++ = v2003;
                            --v50;
                          }

                          while (v50);
                        }
                      }

                      else if (!a5 && v50)
                      {
                        v54 = *(a2 + 2);
                        v55 = *(a3 + 2);
                        v56 = *(a4 + 2);
                        do
                        {
                          v57 = *v54++;
                          v58 = v57;
                          v59 = *v55++;
                          if (v58 == v59)
                          {
                            v60 = 0.0;
                          }

                          else
                          {
                            v60 = 1.0;
                          }

                          *v56++ = v60;
                          --v50;
                        }

                        while (v50);
                      }

                      break;
                  }

                  break;
              }
            }

            return a4;
          }
        }

        return 0;
      }

      break;
    case 2:
      a6 = 0;
      if (a2)
      {
        if (a3 && a4)
        {
          if ((a4[8] & 1) == 0)
          {
            v6 = *(a2 + 1);
            if (v6 == *(a3 + 1) && v6 == *(a4 + 1))
            {
              v7 = *a2;
              v8 = *a3;
              v9 = *a4;
              if (*a2 == 2)
              {
                switch(v8)
                {
                  case 2:
                    switch(v9)
                    {
                      case 2:
                        if (a5 == 1)
                        {
                          if (v6)
                          {
                            v1771 = *(a2 + 2);
                            v1772 = *(a3 + 2);
                            v1773 = *(a4 + 2);
                            do
                            {
                              v1775 = *v1771++;
                              v1774 = v1775;
                              v1776 = *v1772++;
                              *v1773++ = v1774 < v1776;
                              --v6;
                            }

                            while (v6);
                          }
                        }

                        else if (!a5 && v6)
                        {
                          v917 = *(a2 + 2);
                          v918 = *(a3 + 2);
                          v919 = *(a4 + 2);
                          do
                          {
                            v921 = *v917++;
                            v920 = v921;
                            v922 = *v918++;
                            *v919++ = v920 < v922;
                            --v6;
                          }

                          while (v6);
                        }

                        break;
                      case 1:
                        if (a5 == 1)
                        {
                          if (v6)
                          {
                            v1529 = *(a2 + 2);
                            v1530 = *(a3 + 2);
                            v1531 = *(a4 + 2);
                            do
                            {
                              v1533 = *v1529++;
                              v1532 = v1533;
                              v1534 = *v1530++;
                              *v1531++ = v1532 < v1534;
                              --v6;
                            }

                            while (v6);
                          }
                        }

                        else if (!a5 && v6)
                        {
                          v769 = *(a2 + 2);
                          v770 = *(a3 + 2);
                          v771 = *(a4 + 2);
                          do
                          {
                            v773 = *v769++;
                            v772 = v773;
                            v774 = *v770++;
                            *v771++ = v772 < v774;
                            --v6;
                          }

                          while (v6);
                        }

                        break;
                      case 0:
                        if (a5 == 1)
                        {
                          if (v6)
                          {
                            v1835 = *(a2 + 2);
                            v1836 = *(a3 + 2);
                            v1837 = *(a4 + 2);
                            do
                            {
                              v1839 = *v1835++;
                              v1838 = v1839;
                              v1840 = *v1836++;
                              if (v1838 >= v1840)
                              {
                                v1841 = 0.0;
                              }

                              else
                              {
                                v1841 = 1.0;
                              }

                              *v1837++ = v1841;
                              --v6;
                            }

                            while (v6);
                          }
                        }

                        else if (!a5 && v6)
                        {
                          v345 = *(a2 + 2);
                          v346 = *(a3 + 2);
                          v347 = *(a4 + 2);
                          do
                          {
                            v349 = *v345++;
                            v348 = v349;
                            v350 = *v346++;
                            if (v348 >= v350)
                            {
                              v351 = 0.0;
                            }

                            else
                            {
                              v351 = 1.0;
                            }

                            *v347++ = v351;
                            --v6;
                          }

                          while (v6);
                        }

                        break;
                    }

                    break;
                  case 1:
                    switch(v9)
                    {
                      case 2:
                        if (a5 == 1)
                        {
                          if (v6)
                          {
                            v1517 = *(a2 + 2);
                            v1518 = *(a3 + 2);
                            v1519 = *(a4 + 2);
                            do
                            {
                              v1521 = *v1517++;
                              v1520 = v1521;
                              v1522 = *v1518;
                              v1518 += 8;
                              *v1519++ = v1520 < v1522;
                              --v6;
                            }

                            while (v6);
                          }
                        }

                        else if (!a5 && v6)
                        {
                          v757 = *(a2 + 2);
                          v758 = *(a3 + 2);
                          v759 = *(a4 + 2);
                          do
                          {
                            v761 = *v757++;
                            v760 = v761;
                            v762 = *v758;
                            v758 += 8;
                            *v759++ = v760 < v762;
                            --v6;
                          }

                          while (v6);
                        }

                        break;
                      case 1:
                        if (a5 == 1)
                        {
                          if (v6)
                          {
                            v1309 = *(a2 + 2);
                            v1310 = *(a3 + 2);
                            v1311 = *(a4 + 2);
                            do
                            {
                              v1313 = *v1309++;
                              v1312 = v1313;
                              v1314 = *v1310++;
                              *v1311++ = v1314 > v1312;
                              --v6;
                            }

                            while (v6);
                          }
                        }

                        else if (!a5 && v6)
                        {
                          v617 = *(a2 + 2);
                          v618 = *(a3 + 2);
                          v619 = *(a4 + 2);
                          do
                          {
                            v621 = *v617++;
                            v620 = v621;
                            v622 = *v618++;
                            *v619++ = v622 > v620;
                            --v6;
                          }

                          while (v6);
                        }

                        break;
                      case 0:
                        if (a5 == 1)
                        {
                          if (v6)
                          {
                            v1603 = *(a2 + 2);
                            v1604 = *(a3 + 2);
                            v1605 = *(a4 + 2);
                            do
                            {
                              v1606 = *v1603++;
                              v1607 = v1606;
                              v1608 = *v1604++;
                              if (v1607 >= v1608)
                              {
                                v1609 = 0.0;
                              }

                              else
                              {
                                v1609 = 1.0;
                              }

                              *v1605++ = v1609;
                              --v6;
                            }

                            while (v6);
                          }
                        }

                        else if (!a5 && v6)
                        {
                          v277 = *(a2 + 2);
                          v278 = *(a3 + 2);
                          v279 = *(a4 + 2);
                          do
                          {
                            v280 = *v277++;
                            v281 = v280;
                            v282 = *v278++;
                            if (v281 >= v282)
                            {
                              v283 = 0.0;
                            }

                            else
                            {
                              v283 = 1.0;
                            }

                            *v279++ = v283;
                            --v6;
                          }

                          while (v6);
                        }

                        break;
                    }

                    break;
                  case 0:
                    switch(v9)
                    {
                      case 2:
                        if (a5 == 1)
                        {
                          if (v6)
                          {
                            v1849 = *(a2 + 2);
                            v1850 = *(a3 + 2);
                            v1851 = *(a4 + 2);
                            do
                            {
                              v1853 = *v1849++;
                              v1852 = v1853;
                              v1854 = *v1850++;
                              *v1851++ = v1852 < v1854;
                              --v6;
                            }

                            while (v6);
                          }
                        }

                        else if (!a5 && v6)
                        {
                          v953 = *(a2 + 2);
                          v954 = *(a3 + 2);
                          v955 = *(a4 + 2);
                          do
                          {
                            v957 = *v953++;
                            v956 = v957;
                            v958 = *v954++;
                            *v955++ = v956 < v958;
                            --v6;
                          }

                          while (v6);
                        }

                        break;
                      case 1:
                        if (a5 == 1)
                        {
                          if (v6)
                          {
                            v1629 = *(a2 + 2);
                            v1630 = *(a3 + 2);
                            v1631 = *(a4 + 2);
                            do
                            {
                              v1633 = *v1629++;
                              v1632 = v1633;
                              v1634 = *v1630++;
                              *v1631++ = v1632 < v1634;
                              --v6;
                            }

                            while (v6);
                          }
                        }

                        else if (!a5 && v6)
                        {
                          v829 = *(a2 + 2);
                          v830 = *(a3 + 2);
                          v831 = *(a4 + 2);
                          do
                          {
                            v833 = *v829++;
                            v832 = v833;
                            v834 = *v830++;
                            *v831++ = v832 < v834;
                            --v6;
                          }

                          while (v6);
                        }

                        break;
                      case 0:
                        if (a5 == 1)
                        {
                          if (v6)
                          {
                            v1907 = *(a2 + 2);
                            v1908 = *(a3 + 2);
                            v1909 = *(a4 + 2);
                            do
                            {
                              v1910 = *v1907++;
                              v1911 = v1910;
                              v1912 = *v1908++;
                              if (v1912 <= v1911)
                              {
                                v1913 = 0.0;
                              }

                              else
                              {
                                v1913 = 1.0;
                              }

                              *v1909++ = v1913;
                              --v6;
                            }

                            while (v6);
                          }
                        }

                        else if (!a5 && v6)
                        {
                          v129 = *(a2 + 2);
                          v130 = *(a3 + 2);
                          v131 = *(a4 + 2);
                          do
                          {
                            v132 = *v129++;
                            v133 = v132;
                            v134 = *v130++;
                            if (v134 <= v133)
                            {
                              v135 = 0.0;
                            }

                            else
                            {
                              v135 = 1.0;
                            }

                            *v131++ = v135;
                            --v6;
                          }

                          while (v6);
                        }

                        break;
                    }

                    break;
                }
              }

              else if (v7 == 1)
              {
                switch(v8)
                {
                  case 2:
                    switch(v9)
                    {
                      case 2:
                        if (a5 == 1)
                        {
                          if (v6)
                          {
                            v1505 = *(a2 + 2);
                            v1506 = *(a3 + 2);
                            v1507 = *(a4 + 2);
                            do
                            {
                              v1509 = *v1505;
                              v1505 += 8;
                              v1508 = v1509;
                              v1510 = *v1506++;
                              *v1507++ = v1510 > v1508;
                              --v6;
                            }

                            while (v6);
                          }
                        }

                        else if (!a5 && v6)
                        {
                          v745 = *(a2 + 2);
                          v746 = *(a3 + 2);
                          v747 = *(a4 + 2);
                          do
                          {
                            v749 = *v745;
                            v745 += 8;
                            v748 = v749;
                            v750 = *v746++;
                            *v747++ = v750 > v748;
                            --v6;
                          }

                          while (v6);
                        }

                        break;
                      case 1:
                        if (a5 == 1)
                        {
                          if (v6)
                          {
                            v1299 = *(a2 + 2);
                            v1300 = *(a3 + 2);
                            v1301 = *(a4 + 2);
                            do
                            {
                              v1303 = *v1299++;
                              v1302 = v1303;
                              LODWORD(v1303) = *v1300++;
                              *v1301++ = v1302 < v1303;
                              --v6;
                            }

                            while (v6);
                          }
                        }

                        else if (!a5 && v6)
                        {
                          v607 = *(a2 + 2);
                          v608 = *(a3 + 2);
                          v609 = *(a4 + 2);
                          do
                          {
                            v611 = *v607++;
                            v610 = v611;
                            LODWORD(v611) = *v608++;
                            *v609++ = v610 < v611;
                            --v6;
                          }

                          while (v6);
                        }

                        break;
                      case 0:
                        if (a5 == 1)
                        {
                          if (v6)
                          {
                            v1591 = *(a2 + 2);
                            v1592 = *(a3 + 2);
                            v1593 = *(a4 + 2);
                            do
                            {
                              v1594 = *v1591++;
                              v1595 = v1594;
                              LODWORD(v1594) = *v1592++;
                              if (v1595 >= v1594)
                              {
                                v1596 = 0.0;
                              }

                              else
                              {
                                v1596 = 1.0;
                              }

                              *v1593++ = v1596;
                              --v6;
                            }

                            while (v6);
                          }
                        }

                        else if (!a5 && v6)
                        {
                          v265 = *(a2 + 2);
                          v266 = *(a3 + 2);
                          v267 = *(a4 + 2);
                          do
                          {
                            v268 = *v265++;
                            v269 = v268;
                            LODWORD(v268) = *v266++;
                            if (v269 >= v268)
                            {
                              v270 = 0.0;
                            }

                            else
                            {
                              v270 = 1.0;
                            }

                            *v267++ = v270;
                            --v6;
                          }

                          while (v6);
                        }

                        break;
                    }

                    break;
                  case 1:
                    switch(v9)
                    {
                      case 2:
                        if (a5 == 1)
                        {
                          if (v6)
                          {
                            v1287 = *(a2 + 2);
                            v1288 = *(a3 + 2);
                            v1289 = *(a4 + 2);
                            do
                            {
                              v1291 = *v1287;
                              v1287 += 8;
                              v1290 = v1291;
                              v1292 = *v1288;
                              v1288 += 8;
                              *v1289++ = v1290 < v1292;
                              --v6;
                            }

                            while (v6);
                          }
                        }

                        else if (!a5 && v6)
                        {
                          v595 = *(a2 + 2);
                          v596 = *(a3 + 2);
                          v597 = *(a4 + 2);
                          do
                          {
                            v599 = *v595;
                            v595 += 8;
                            v598 = v599;
                            v600 = *v596;
                            v596 += 8;
                            *v597++ = v598 < v600;
                            --v6;
                          }

                          while (v6);
                        }

                        break;
                      case 1:
                        if (a5 == 1)
                        {
                          if (v6)
                          {
                            v1141 = *(a2 + 2);
                            v1142 = *(a3 + 2);
                            v1143 = *(a4 + 2);
                            do
                            {
                              v1145 = *v1141++;
                              v1144 = v1145;
                              v1146 = *v1142++;
                              *v1143++ = v1144 < v1146;
                              --v6;
                            }

                            while (v6);
                          }
                        }

                        else if (!a5 && v6)
                        {
                          v503 = *(a2 + 2);
                          v504 = *(a3 + 2);
                          v505 = *(a4 + 2);
                          do
                          {
                            v507 = *v503++;
                            v506 = v507;
                            v508 = *v504++;
                            *v505++ = v506 < v508;
                            --v6;
                          }

                          while (v6);
                        }

                        break;
                      case 0:
                        if (a5 == 1)
                        {
                          if (v6)
                          {
                            v1391 = *(a2 + 2);
                            v1392 = *(a3 + 2);
                            v1393 = *(a4 + 2);
                            do
                            {
                              v1394 = *v1391++;
                              v1395 = v1394;
                              v1396 = *v1392++;
                              if (v1395 >= v1396)
                              {
                                v1397 = 0.0;
                              }

                              else
                              {
                                v1397 = 1.0;
                              }

                              *v1393++ = v1397;
                              --v6;
                            }

                            while (v6);
                          }
                        }

                        else if (!a5 && v6)
                        {
                          v225 = *(a2 + 2);
                          v226 = *(a3 + 2);
                          v227 = *(a4 + 2);
                          do
                          {
                            v228 = *v225++;
                            v229 = v228;
                            v230 = *v226++;
                            if (v229 >= v230)
                            {
                              v231 = 0.0;
                            }

                            else
                            {
                              v231 = 1.0;
                            }

                            *v227++ = v231;
                            --v6;
                          }

                          while (v6);
                        }

                        break;
                    }

                    break;
                  case 0:
                    switch(v9)
                    {
                      case 2:
                        if (a5 == 1)
                        {
                          if (v6)
                          {
                            v1617 = *(a2 + 2);
                            v1618 = *(a3 + 2);
                            v1619 = *(a4 + 2);
                            do
                            {
                              v1621 = *v1617;
                              v1617 += 8;
                              v1620 = v1621;
                              v1622 = *v1618++;
                              *v1619++ = v1620 < v1622;
                              --v6;
                            }

                            while (v6);
                          }
                        }

                        else if (!a5 && v6)
                        {
                          v817 = *(a2 + 2);
                          v818 = *(a3 + 2);
                          v819 = *(a4 + 2);
                          do
                          {
                            v821 = *v817;
                            v817 += 8;
                            v820 = v821;
                            v822 = *v818++;
                            *v819++ = v820 < v822;
                            --v6;
                          }

                          while (v6);
                        }

                        break;
                      case 1:
                        if (a5 == 1)
                        {
                          if (v6)
                          {
                            v1405 = *(a2 + 2);
                            v1406 = *(a3 + 2);
                            v1407 = *(a4 + 2);
                            do
                            {
                              v1409 = *v1405++;
                              v1408 = v1409;
                              v1410 = *v1406++;
                              *v1407++ = v1408 < v1410;
                              --v6;
                            }

                            while (v6);
                          }
                        }

                        else if (!a5 && v6)
                        {
                          v685 = *(a2 + 2);
                          v686 = *(a3 + 2);
                          v687 = *(a4 + 2);
                          do
                          {
                            v689 = *v685++;
                            v688 = v689;
                            v690 = *v686++;
                            *v687++ = v688 < v690;
                            --v6;
                          }

                          while (v6);
                        }

                        break;
                      case 0:
                        if (a5 == 1)
                        {
                          if (v6)
                          {
                            v1731 = *(a2 + 2);
                            v1732 = *(a3 + 2);
                            v1733 = *(a4 + 2);
                            do
                            {
                              v1734 = *v1731++;
                              v1735 = v1734;
                              v1736 = *v1732++;
                              if (v1736 <= v1735)
                              {
                                v1737 = 0.0;
                              }

                              else
                              {
                                v1737 = 1.0;
                              }

                              *v1733++ = v1737;
                              --v6;
                            }

                            while (v6);
                          }
                        }

                        else if (!a5 && v6)
                        {
                          v101 = *(a2 + 2);
                          v102 = *(a3 + 2);
                          v103 = *(a4 + 2);
                          do
                          {
                            v104 = *v101++;
                            v105 = v104;
                            v106 = *v102++;
                            if (v106 <= v105)
                            {
                              v107 = 0.0;
                            }

                            else
                            {
                              v107 = 1.0;
                            }

                            *v103++ = v107;
                            --v6;
                          }

                          while (v6);
                        }

                        break;
                    }

                    break;
                }
              }

              else if (!v7)
              {
                switch(v8)
                {
                  case 2:
                    switch(v9)
                    {
                      case 2:
                        if (a5 == 1)
                        {
                          if (v6)
                          {
                            v1861 = *(a2 + 2);
                            v1862 = *(a3 + 2);
                            v1863 = *(a4 + 2);
                            do
                            {
                              v1864 = *v1861++;
                              v1865 = v1864;
                              LODWORD(v1864) = *v1862++;
                              *v1863++ = LODWORD(v1864) > v1865;
                              --v6;
                            }

                            while (v6);
                          }
                        }

                        else if (!a5 && v6)
                        {
                          v965 = *(a2 + 2);
                          v966 = *(a3 + 2);
                          v967 = *(a4 + 2);
                          do
                          {
                            v968 = *v965++;
                            v969 = v968;
                            LODWORD(v968) = *v966++;
                            *v967++ = LODWORD(v968) > v969;
                            --v6;
                          }

                          while (v6);
                        }

                        break;
                      case 1:
                        if (a5 == 1)
                        {
                          if (v6)
                          {
                            v1651 = *(a2 + 2);
                            v1652 = *(a3 + 2);
                            v1653 = *(a4 + 2);
                            do
                            {
                              v1654 = *v1651++;
                              v1655 = v1654;
                              LODWORD(v1654) = *v1652++;
                              *v1653++ = v1655 < LODWORD(v1654);
                              --v6;
                            }

                            while (v6);
                          }
                        }

                        else if (!a5 && v6)
                        {
                          v851 = *(a2 + 2);
                          v852 = *(a3 + 2);
                          v853 = *(a4 + 2);
                          do
                          {
                            v854 = *v851++;
                            v855 = v854;
                            LODWORD(v854) = *v852++;
                            *v853++ = v855 < LODWORD(v854);
                            --v6;
                          }

                          while (v6);
                        }

                        break;
                      case 0:
                        if (a5 == 1)
                        {
                          if (v6)
                          {
                            v1921 = *(a2 + 2);
                            v1922 = *(a3 + 2);
                            v1923 = *(a4 + 2);
                            do
                            {
                              v1924 = *v1921++;
                              v1925 = v1924;
                              LODWORD(v1924) = *v1922++;
                              if (v1925 >= LODWORD(v1924))
                              {
                                v1926 = 0.0;
                              }

                              else
                              {
                                v1926 = 1.0;
                              }

                              *v1923++ = v1926;
                              --v6;
                            }

                            while (v6);
                          }
                        }

                        else if (!a5 && v6)
                        {
                          v373 = *(a2 + 2);
                          v374 = *(a3 + 2);
                          v375 = *(a4 + 2);
                          do
                          {
                            v376 = *v373++;
                            v377 = v376;
                            LODWORD(v376) = *v374++;
                            if (v377 >= LODWORD(v376))
                            {
                              v378 = 0.0;
                            }

                            else
                            {
                              v378 = 1.0;
                            }

                            *v375++ = v378;
                            --v6;
                          }

                          while (v6);
                        }

                        break;
                    }

                    break;
                  case 1:
                    switch(v9)
                    {
                      case 2:
                        if (a5 == 1)
                        {
                          if (v6)
                          {
                            v1641 = *(a2 + 2);
                            v1642 = *(a3 + 2);
                            v1643 = *(a4 + 2);
                            do
                            {
                              v1644 = *v1641++;
                              v1645 = v1644;
                              LODWORD(v1644) = *v1642;
                              v1642 += 8;
                              *v1643++ = v1645 < LODWORD(v1644);
                              --v6;
                            }

                            while (v6);
                          }
                        }

                        else if (!a5 && v6)
                        {
                          v841 = *(a2 + 2);
                          v842 = *(a3 + 2);
                          v843 = *(a4 + 2);
                          do
                          {
                            v844 = *v841++;
                            v845 = v844;
                            LODWORD(v844) = *v842;
                            v842 += 8;
                            *v843++ = v845 < LODWORD(v844);
                            --v6;
                          }

                          while (v6);
                        }

                        break;
                      case 1:
                        if (a5 == 1)
                        {
                          if (v6)
                          {
                            v1417 = *(a2 + 2);
                            v1418 = *(a3 + 2);
                            v1419 = *(a4 + 2);
                            do
                            {
                              v1420 = *v1417++;
                              v1421 = v1420;
                              v1422 = *v1418++;
                              *v1419++ = v1422 > v1421;
                              --v6;
                            }

                            while (v6);
                          }
                        }

                        else if (!a5 && v6)
                        {
                          v697 = *(a2 + 2);
                          v698 = *(a3 + 2);
                          v699 = *(a4 + 2);
                          do
                          {
                            v700 = *v697++;
                            v701 = v700;
                            v702 = *v698++;
                            *v699++ = v702 > v701;
                            --v6;
                          }

                          while (v6);
                        }

                        break;
                      case 0:
                        if (a5 == 1)
                        {
                          if (v6)
                          {
                            v1745 = *(a2 + 2);
                            v1746 = *(a3 + 2);
                            v1747 = *(a4 + 2);
                            do
                            {
                              v1748 = *v1745++;
                              v1749 = v1748;
                              v1750 = *v1746++;
                              if (v1749 >= v1750)
                              {
                                v1751 = 0.0;
                              }

                              else
                              {
                                v1751 = 1.0;
                              }

                              *v1747++ = v1751;
                              --v6;
                            }

                            while (v6);
                          }
                        }

                        else if (!a5 && v6)
                        {
                          v317 = *(a2 + 2);
                          v318 = *(a3 + 2);
                          v319 = *(a4 + 2);
                          do
                          {
                            v320 = *v317++;
                            v321 = v320;
                            v322 = *v318++;
                            if (v321 >= v322)
                            {
                              v323 = 0.0;
                            }

                            else
                            {
                              v323 = 1.0;
                            }

                            *v319++ = v323;
                            --v6;
                          }

                          while (v6);
                        }

                        break;
                    }

                    break;
                  case 0:
                    switch(v9)
                    {
                      case 2:
                        if (a5 == 1)
                        {
                          if (v6)
                          {
                            v1933 = *(a2 + 2);
                            v1934 = *(a3 + 2);
                            v1935 = *(a4 + 2);
                            do
                            {
                              v1936 = *v1933++;
                              v1937 = v1936;
                              v1938 = *v1934++;
                              *v1935++ = v1937 < v1938;
                              --v6;
                            }

                            while (v6);
                          }
                        }

                        else if (!a5 && v6)
                        {
                          v997 = *(a2 + 2);
                          v998 = *(a3 + 2);
                          v999 = *(a4 + 2);
                          do
                          {
                            v1000 = *v997++;
                            v1001 = v1000;
                            v1002 = *v998++;
                            *v999++ = v1001 < v1002;
                            --v6;
                          }

                          while (v6);
                        }

                        break;
                      case 1:
                        if (a5 == 1)
                        {
                          if (v6)
                          {
                            v1759 = *(a2 + 2);
                            v1760 = *(a3 + 2);
                            v1761 = *(a4 + 2);
                            do
                            {
                              v1762 = *v1759++;
                              v1763 = v1762;
                              v1764 = *v1760++;
                              *v1761++ = v1763 < v1764;
                              --v6;
                            }

                            while (v6);
                          }
                        }

                        else if (!a5 && v6)
                        {
                          v905 = *(a2 + 2);
                          v906 = *(a3 + 2);
                          v907 = *(a4 + 2);
                          do
                          {
                            v908 = *v905++;
                            v909 = v908;
                            v910 = *v906++;
                            *v907++ = v909 < v910;
                            --v6;
                          }

                          while (v6);
                        }

                        break;
                      case 0:
                        if (a5 == 1)
                        {
                          if (v6)
                          {
                            v1983 = *(a2 + 2);
                            v1984 = *(a3 + 2);
                            v1985 = *(a4 + 2);
                            do
                            {
                              v1986 = *v1983++;
                              v1987 = v1986;
                              v1988 = *v1984++;
                              if (v1987 >= v1988)
                              {
                                v1989 = 0.0;
                              }

                              else
                              {
                                v1989 = 1.0;
                              }

                              *v1985++ = v1989;
                              --v6;
                            }

                            while (v6);
                          }
                        }

                        else if (!a5 && v6)
                        {
                          v10 = *(a2 + 2);
                          v11 = *(a3 + 2);
                          v12 = *(a4 + 2);
                          do
                          {
                            v13 = *v10++;
                            v14 = v13;
                            v15 = *v11++;
                            if (v14 >= v15)
                            {
                              v16 = 0.0;
                            }

                            else
                            {
                              v16 = 1.0;
                            }

                            *v12++ = v16;
                            --v6;
                          }

                          while (v6);
                        }

                        break;
                    }

                    break;
                }
              }

              return a4;
            }
          }

          return 0;
        }
      }

      break;
  }

  return a6;
}