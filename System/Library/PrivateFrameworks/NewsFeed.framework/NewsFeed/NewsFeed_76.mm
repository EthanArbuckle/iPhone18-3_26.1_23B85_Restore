uint64_t sub_1D622B230(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  if (!v5)
  {
    return result;
  }

  v6 = a2;
  v7 = result;
  v8 = 0;
  v176 = a3 + 32;
  v193 = a2;
  v177 = result;
  v174 = v5;
  while (1)
  {
    v12 = *(v176 + 24 * v8 + 16);
    if (!(v12 >> 62))
    {
      v19 = *(v12 + 80);
      v189 = *(v12 + 64);
      v190 = v19;
      v191 = *(v12 + 96);
      v192 = *(v12 + 112);
      v20 = *(v12 + 32);
      v186 = *(v12 + 16);
      v187 = v20;
      v188 = *(v12 + 48);
      v21 = *(v12 + 96);
      v183 = *(v12 + 80);
      v184 = v21;
      v185 = *(v12 + 112);
      v22 = *(v12 + 32);
      v179 = *(v12 + 16);
      v180 = v22;
      v23 = *(v12 + 64);
      v181 = *(v12 + 48);
      v182 = v23;
      swift_retain_n();

      sub_1D5D0322C(&v186, v178);
      FormatSymbolImage.bind(binder:context:)(v7, v6);
      if (v4)
      {

        sub_1D5D07BBC(&v186);
      }

      sub_1D5D07BBC(&v186);

      goto LABEL_6;
    }

    if (v12 >> 62 != 1)
    {
      v175 = v8;
      v25 = *((v12 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v24 = *((v12 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      if (!(v25 >> 62))
      {
        v36 = *(v25 + 80);
        v189 = *(v25 + 64);
        v190 = v36;
        v191 = *(v25 + 96);
        v192 = *(v25 + 112);
        v37 = *(v25 + 32);
        v186 = *(v25 + 16);
        v187 = v37;
        v188 = *(v25 + 48);
        v38 = *(v25 + 96);
        v183 = *(v25 + 80);
        v184 = v38;
        v185 = *(v25 + 112);
        v39 = *(v25 + 32);
        v179 = *(v25 + 16);
        v180 = v39;
        v40 = *(v25 + 64);
        v181 = *(v25 + 48);
        v182 = v40;
        swift_retain_n();

        swift_retain_n();
        sub_1D5D0322C(&v186, v178);
        FormatSymbolImage.bind(binder:context:)(v7, v6);
        if (v4)
        {

          sub_1D5D07BBC(&v186);
          goto LABEL_229;
        }

        sub_1D5D07BBC(&v186);

        goto LABEL_215;
      }

      if (v25 >> 62 == 1)
      {
        v26 = *((v12 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        v27 = *((v25 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
        v28 = *((v25 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
        if (*((v25 & 0x3FFFFFFFFFFFFFFFLL) + 0x40) > 1u)
        {
          if (*((v25 & 0x3FFFFFFFFFFFFFFFLL) + 0x40) == 2)
          {

            swift_retain_n();
            swift_retain_n();

            sub_1D5E433CC(v27, v28, 2u);
            v52 = v193;
            sub_1D620B270(v177, v193, v27);
            if (v4)
            {

              sub_1D5E4342C(v27, v28, 2u);
            }

            sub_1D620B270(v177, v52, v28);
            v4 = 0;
            sub_1D5E4342C(v27, v28, 2u);

            v6 = v193;
            v24 = v26;
            v7 = v177;
          }

          else
          {

            swift_retain_n();

            v24 = v26;

            v6 = v193;
            v7 = v177;
          }
        }

        else
        {
          v172 = *((v25 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
          v24 = v26;
          if (*((v25 & 0x3FFFFFFFFFFFFFFFLL) + 0x40))
          {
            v64 = *(v27 + 16);

            swift_retain_n();
            swift_retain_n();

            sub_1D5E433CC(v27, v172, 1u);
            v7 = v177;
            if (v64)
            {
              v65 = (v27 + 40);
              do
              {
                if ((*v65 & 1) == 0)
                {
                  v66 = v7;
                  *&v186 = *(v65 - 1);
                  v67 = v186;
                  swift_retain_n();
                  FormatFloat.bind(binder:context:)(v66, v193);
                  if (v4)
                  {
                    sub_1D62B72BC(v67, 0);

                    v141 = v27;
                    v142 = v172;
                    v143 = 1;
                    goto LABEL_225;
                  }

                  sub_1D62B72BC(v67, 0);

                  v7 = v177;
                }

                v65 += 16;
                --v64;
              }

              while (v64);
            }

            v68 = v27;
            v69 = v172;
            v70 = 1;
          }

          else
          {
            v29 = *(v27 + 16);

            swift_retain_n();
            swift_retain_n();

            sub_1D5E433CC(v27, v172, 0);
            v7 = v177;
            if (v29)
            {
              v30 = (v27 + 40);
              do
              {
                if ((*v30 & 1) == 0)
                {
                  v31 = v7;
                  *&v186 = *(v30 - 1);
                  v32 = v186;
                  swift_retain_n();
                  FormatFloat.bind(binder:context:)(v31, v193);
                  if (v4)
                  {
                    sub_1D62B72BC(v32, 0);

                    v141 = v27;
                    v142 = v172;
                    v143 = 0;
LABEL_225:
                    sub_1D5E4342C(v141, v142, v143);
LABEL_229:
                  }

                  sub_1D62B72BC(v32, 0);

                  v7 = v177;
                }

                v30 += 16;
                --v29;
              }

              while (v29);
            }

            v68 = v27;
            v69 = v172;
            v70 = 0;
          }

          sub_1D5E4342C(v68, v69, v70);

          v6 = v193;
        }

        goto LABEL_215;
      }

      v171 = *((v12 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v41 = *((v25 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v42 = *((v25 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      if (!(v41 >> 62))
      {
        v53 = *(v41 + 80);
        v189 = *(v41 + 64);
        v190 = v53;
        v191 = *(v41 + 96);
        v192 = *(v41 + 112);
        v54 = *(v41 + 32);
        v186 = *(v41 + 16);
        v187 = v54;
        v188 = *(v41 + 48);
        v55 = *(v41 + 96);
        v183 = *(v41 + 80);
        v184 = v55;
        v185 = *(v41 + 112);
        v56 = *(v41 + 32);
        v179 = *(v41 + 16);
        v180 = v56;
        v57 = *(v41 + 64);
        v181 = *(v41 + 48);
        v182 = v57;
        swift_retain_n();

        swift_retain_n();
        swift_retain_n();
        v24 = v171;

        sub_1D5D0322C(&v186, v178);
        FormatSymbolImage.bind(binder:context:)(v7, v193);
        if (v4)
        {

          sub_1D5D07BBC(&v186);
        }

        sub_1D5D07BBC(&v186);

LABEL_114:
        v6 = v193;
LABEL_213:

        sub_1D622B230(v7, v6, v42);
        if (v4)
        {

          swift_bridgeObjectRelease_n();
        }

        swift_bridgeObjectRelease_n();

LABEL_215:

        sub_1D622B230(v7, v6, v24);
        if (v4)
        {

          swift_bridgeObjectRelease_n();
        }

        swift_bridgeObjectRelease_n();

        goto LABEL_5;
      }

      v173 = *((v25 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      if (v41 >> 62 == 1)
      {
        v43 = *((v41 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
        v169 = *((v41 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
        if (*((v41 & 0x3FFFFFFFFFFFFFFFLL) + 0x40) <= 1u)
        {
          v24 = v171;
          if (*((v41 & 0x3FFFFFFFFFFFFFFFLL) + 0x40))
          {
            v81 = *(v169 + 16);

            swift_retain_n();
            swift_retain_n();

            swift_retain_n();

            sub_1D5E433CC(v169, v43, 1u);
            if (v81)
            {
              v82 = (v169 + 40);
              do
              {
                if ((*v82 & 1) == 0)
                {
                  *&v186 = *(v82 - 1);
                  v83 = v186;
                  swift_retain_n();
                  FormatFloat.bind(binder:context:)(v177, v193);
                  if (v4)
                  {
                    sub_1D62B72BC(v83, 0);

                    v144 = v169;
                    v145 = v43;
                    v146 = 1;
                    goto LABEL_228;
                  }

                  sub_1D62B72BC(v83, 0);

                  v42 = v173;
                }

                v82 += 16;
                --v81;
              }

              while (v81);
            }

            v84 = v169;
            v85 = v43;
            v86 = 1;
          }

          else
          {
            v44 = *(v169 + 16);

            swift_retain_n();
            swift_retain_n();

            swift_retain_n();

            sub_1D5E433CC(v169, v43, 0);
            if (v44)
            {
              v45 = (v169 + 40);
              do
              {
                if ((*v45 & 1) == 0)
                {
                  *&v186 = *(v45 - 1);
                  v51 = v186;
                  swift_retain_n();
                  FormatFloat.bind(binder:context:)(v177, v193);
                  if (v4)
                  {
                    sub_1D62B72BC(v51, 0);

                    v144 = v169;
                    v145 = v43;
                    v146 = 0;
LABEL_228:
                    sub_1D5E4342C(v144, v145, v146);

                    goto LABEL_229;
                  }

                  sub_1D62B72BC(v51, 0);

                  v42 = v173;
                }

                v45 += 16;
                --v44;
              }

              while (v44);
            }

            v84 = v169;
            v85 = v43;
            v86 = 0;
          }

          sub_1D5E4342C(v84, v85, v86);

          v6 = v193;
          v7 = v177;
          goto LABEL_213;
        }

        v24 = v171;
        if (*((v41 & 0x3FFFFFFFFFFFFFFFLL) + 0x40) == 2)
        {

          swift_retain_n();
          swift_retain_n();

          swift_retain_n();

          sub_1D5E433CC(v169, v43, 2u);
          v71 = v193;
          sub_1D620B270(v7, v193, v169);
          if (v4)
          {

            sub_1D5E4342C(v169, v43, 2u);

            goto LABEL_229;
          }

          sub_1D620B270(v7, v71, v43);
          v4 = 0;
          sub_1D5E4342C(v169, v43, 2u);

          v6 = v193;
          v42 = v173;
          goto LABEL_213;
        }

        swift_retain_n();
        swift_retain_n();

        goto LABEL_114;
      }

      v58 = *((v41 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v170 = *((v41 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      if (!(v58 >> 62))
      {
        v72 = *(v58 + 80);
        v189 = *(v58 + 64);
        v190 = v72;
        v191 = *(v58 + 96);
        v192 = *(v58 + 112);
        v73 = *(v58 + 32);
        v186 = *(v58 + 16);
        v187 = v73;
        v188 = *(v58 + 48);
        v74 = *(v58 + 96);
        v183 = *(v58 + 80);
        v184 = v74;
        v185 = *(v58 + 112);
        v75 = *(v58 + 32);
        v179 = *(v58 + 16);
        v180 = v75;
        v76 = *(v58 + 64);
        v181 = *(v58 + 48);
        v182 = v76;
        swift_retain_n();

        swift_retain_n();
        swift_retain_n();

        swift_retain_n();

        sub_1D5D0322C(&v186, v178);
        v6 = v193;
        FormatSymbolImage.bind(binder:context:)(v7, v193);
        if (v4)
        {

          sub_1D5D07BBC(&v186);

          goto LABEL_229;
        }

        sub_1D5D07BBC(&v186);

        v61 = v170;
        v24 = v171;
        goto LABEL_211;
      }

      if (v58 >> 62 == 1)
      {
        v59 = *((v58 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
        v167 = *((v58 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
        v24 = v171;
        v6 = v193;
        if (*((v58 & 0x3FFFFFFFFFFFFFFFLL) + 0x40) <= 1u)
        {
          v166 = *((v58 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
          if (*((v58 & 0x3FFFFFFFFFFFFFFFLL) + 0x40))
          {
            v96 = *(v167 + 16);

            swift_retain_n();
            swift_retain_n();

            swift_retain_n();

            swift_retain_n();
            v61 = v170;

            sub_1D5E433CC(v167, v166, 1u);
            if (v96)
            {
              v97 = (v167 + 40);
              do
              {
                if ((*v97 & 1) == 0)
                {
                  *&v186 = *(v97 - 1);
                  v98 = v186;
                  swift_retain_n();
                  FormatFloat.bind(binder:context:)(v177, v193);
                  if (v4)
                  {
                    sub_1D62B72BC(v98, 0);

                    v148 = v166;
                    v147 = v167;
                    v149 = 1;
LABEL_235:
                    sub_1D5E4342C(v147, v148, v149);

                    goto LABEL_229;
                  }

                  sub_1D62B72BC(v98, 0);

                  v42 = v173;
                  v61 = v170;
                }

                v97 += 16;
                --v96;
              }

              while (v96);
            }

            v100 = v166;
            v99 = v167;
            v101 = 1;
          }

          else
          {
            v60 = *(v167 + 16);

            swift_retain_n();
            swift_retain_n();

            swift_retain_n();

            swift_retain_n();
            v61 = v170;

            sub_1D5E433CC(v167, v166, 0);
            if (v60)
            {
              v62 = (v167 + 40);
              do
              {
                if ((*v62 & 1) == 0)
                {
                  *&v186 = *(v62 - 1);
                  v63 = v186;
                  swift_retain_n();
                  FormatFloat.bind(binder:context:)(v177, v193);
                  if (v4)
                  {
                    sub_1D62B72BC(v63, 0);

                    v148 = v166;
                    v147 = v167;
                    v149 = 0;
                    goto LABEL_235;
                  }

                  sub_1D62B72BC(v63, 0);

                  v42 = v173;
                  v61 = v170;
                }

                v62 += 16;
                --v60;
              }

              while (v60);
            }

            v100 = v166;
            v99 = v167;
            v101 = 0;
          }

          sub_1D5E4342C(v99, v100, v101);

          v6 = v193;
          v7 = v177;
          goto LABEL_211;
        }

        if (*((v58 & 0x3FFFFFFFFFFFFFFFLL) + 0x40) != 2)
        {

          swift_retain_n();
          swift_retain_n();

          swift_retain_n();

          v61 = v170;

LABEL_211:

          sub_1D622B230(v7, v6, v61);
          if (v4)
          {

            swift_bridgeObjectRelease_n();
          }

          swift_bridgeObjectRelease_n();

          goto LABEL_213;
        }

        swift_retain_n();
        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        sub_1D5E433CC(v167, v59, 2u);
        sub_1D620B270(v7, v6, v167);
        if (v4)
        {

          sub_1D5E4342C(v167, v59, 2u);

          goto LABEL_229;
        }

        sub_1D620B270(v7, v6, v59);
        v4 = 0;
        sub_1D5E4342C(v167, v59, 2u);
LABEL_210:

        v61 = v170;
        goto LABEL_211;
      }

      v77 = *((v58 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v168 = *((v58 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v24 = v171;
      if (!(v77 >> 62))
      {
        v87 = *(v77 + 80);
        v189 = *(v77 + 64);
        v190 = v87;
        v191 = *(v77 + 96);
        v192 = *(v77 + 112);
        v88 = *(v77 + 32);
        v186 = *(v77 + 16);
        v187 = v88;
        v188 = *(v77 + 48);
        v89 = *(v77 + 96);
        v183 = *(v77 + 80);
        v184 = v89;
        v185 = *(v77 + 112);
        v90 = *(v77 + 32);
        v179 = *(v77 + 16);
        v180 = v90;
        v91 = *(v77 + 64);
        v181 = *(v77 + 48);
        v182 = v91;
        swift_retain_n();

        swift_retain_n();
        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        sub_1D5D0322C(&v186, v178);
        v6 = v193;
        FormatSymbolImage.bind(binder:context:)(v7, v193);
        if (v4)
        {

          sub_1D5D07BBC(&v186);

          goto LABEL_229;
        }

        sub_1D5D07BBC(&v186);

        v24 = v171;
        goto LABEL_207;
      }

      if (v77 >> 62 == 1)
      {
        v164 = *((v77 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
        v6 = v193;
        if (*((v77 & 0x3FFFFFFFFFFFFFFFLL) + 0x40) > 1u)
        {
          if (*((v77 & 0x3FFFFFFFFFFFFFFFLL) + 0x40) != 2)
          {

            swift_retain_n();
            swift_retain_n();

            swift_retain_n();

            swift_retain_n();

            v114 = v168;

LABEL_208:

            sub_1D622B230(v7, v6, v114);
            if (v4)
            {

              swift_bridgeObjectRelease_n();
            }

            swift_bridgeObjectRelease_n();
            goto LABEL_210;
          }

          v163 = *((v77 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);

          swift_retain_n();
          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          sub_1D5E433CC(v164, v163, 2u);
          sub_1D620B270(v7, v6, v164);
          if (v4)
          {

            sub_1D5E4342C(v164, v163, 2u);

            goto LABEL_229;
          }

          sub_1D620B270(v7, v6, v163);
          v4 = 0;
          sub_1D5E4342C(v164, v163, 2u);
        }

        else
        {
          v162 = *((v77 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
          if (*((v77 & 0x3FFFFFFFFFFFFFFFLL) + 0x40))
          {
            v111 = *(v164 + 16);

            swift_retain_n();
            swift_retain_n();

            swift_retain_n();

            swift_retain_n();

            swift_retain_n();

            sub_1D5E433CC(v164, v162, 1u);
            if (v111)
            {
              v112 = (v164 + 40);
              do
              {
                if ((*v112 & 1) == 0)
                {
                  *&v186 = *(v112 - 1);
                  v113 = v186;
                  swift_retain_n();
                  FormatFloat.bind(binder:context:)(v177, v193);
                  if (v4)
                  {
                    sub_1D62B72BC(v113, 0);

                    v151 = v162;
                    v150 = v164;
                    v152 = 1;
LABEL_241:
                    sub_1D5E4342C(v150, v151, v152);

                    goto LABEL_229;
                  }

                  sub_1D62B72BC(v113, 0);

                  v42 = v173;
                }

                v112 += 16;
                --v111;
              }

              while (v111);
            }

            v116 = v162;
            v115 = v164;
            v117 = 1;
          }

          else
          {
            v78 = *(v164 + 16);

            swift_retain_n();
            swift_retain_n();

            swift_retain_n();

            swift_retain_n();

            swift_retain_n();

            sub_1D5E433CC(v164, v162, 0);
            if (v78)
            {
              v79 = (v164 + 40);
              do
              {
                if ((*v79 & 1) == 0)
                {
                  *&v186 = *(v79 - 1);
                  v80 = v186;
                  swift_retain_n();
                  FormatFloat.bind(binder:context:)(v177, v193);
                  if (v4)
                  {
                    sub_1D62B72BC(v80, 0);

                    v151 = v162;
                    v150 = v164;
                    v152 = 0;
                    goto LABEL_241;
                  }

                  sub_1D62B72BC(v80, 0);

                  v42 = v173;
                }

                v79 += 16;
                --v78;
              }

              while (v78);
            }

            v116 = v162;
            v115 = v164;
            v117 = 0;
          }

          sub_1D5E4342C(v115, v116, v117);

          v6 = v193;
          v7 = v177;
        }

LABEL_207:
        v114 = v168;
        goto LABEL_208;
      }

      v92 = *((v77 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v165 = *((v77 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v6 = v193;
      if (!(v92 >> 62))
      {
        v102 = *(v92 + 80);
        v189 = *(v92 + 64);
        v190 = v102;
        v191 = *(v92 + 96);
        v192 = *(v92 + 112);
        v103 = *(v92 + 32);
        v186 = *(v92 + 16);
        v187 = v103;
        v188 = *(v92 + 48);
        v104 = *(v92 + 96);
        v183 = *(v92 + 80);
        v184 = v104;
        v185 = *(v92 + 112);
        v105 = *(v92 + 32);
        v179 = *(v92 + 16);
        v180 = v105;
        v106 = *(v92 + 64);
        v181 = *(v92 + 48);
        v182 = v106;
        swift_retain_n();
        v107 = v165;

        swift_retain_n();
        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        sub_1D5D0322C(&v186, v178);
        FormatSymbolImage.bind(binder:context:)(v7, v6);
        if (v4)
        {

          sub_1D5D07BBC(&v186);

          goto LABEL_229;
        }

        sub_1D5D07BBC(&v186);

        goto LABEL_205;
      }

      if (v92 >> 62 == 1)
      {
        v159 = *((v92 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
        v160 = *((v92 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
        if (*((v92 & 0x3FFFFFFFFFFFFFFFLL) + 0x40) <= 1u)
        {
          if (*((v92 & 0x3FFFFFFFFFFFFFFFLL) + 0x40))
          {
            v125 = *(v160 + 16);

            swift_retain_n();
            swift_retain_n();

            swift_retain_n();

            swift_retain_n();

            swift_retain_n();

            swift_retain_n();

            sub_1D5E433CC(v160, v159, 1u);
            if (v125)
            {
              v126 = (v160 + 40);
              do
              {
                if ((*v126 & 1) == 0)
                {
                  *&v186 = *(v126 - 1);
                  v127 = v186;
                  swift_retain_n();
                  FormatFloat.bind(binder:context:)(v177, v193);
                  if (v4)
                  {
                    sub_1D62B72BC(v127, 0);

                    v154 = v159;
                    v153 = v160;
                    v155 = 1;
LABEL_247:
                    sub_1D5E4342C(v153, v154, v155);

                    goto LABEL_229;
                  }

                  sub_1D62B72BC(v127, 0);

                  v42 = v173;
                }

                v126 += 16;
                --v125;
              }

              while (v125);
            }

            v129 = v159;
            v128 = v160;
            v130 = 1;
          }

          else
          {
            v93 = *(v160 + 16);

            swift_retain_n();
            swift_retain_n();

            swift_retain_n();

            swift_retain_n();

            swift_retain_n();

            swift_retain_n();

            sub_1D5E433CC(v160, v159, 0);
            if (v93)
            {
              v94 = (v160 + 40);
              do
              {
                if ((*v94 & 1) == 0)
                {
                  *&v186 = *(v94 - 1);
                  v95 = v186;
                  swift_retain_n();
                  FormatFloat.bind(binder:context:)(v177, v193);
                  if (v4)
                  {
                    sub_1D62B72BC(v95, 0);

                    v154 = v159;
                    v153 = v160;
                    v155 = 0;
                    goto LABEL_247;
                  }

                  sub_1D62B72BC(v95, 0);

                  v42 = v173;
                }

                v94 += 16;
                --v93;
              }

              while (v93);
            }

            v129 = v159;
            v128 = v160;
            v130 = 0;
          }

          sub_1D5E4342C(v128, v129, v130);

          v6 = v193;
          v7 = v177;
          goto LABEL_204;
        }

        if (*((v92 & 0x3FFFFFFFFFFFFFFFLL) + 0x40) != 2)
        {

          swift_retain_n();
          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          v107 = v165;

LABEL_205:

          sub_1D622B230(v7, v6, v107);
          if (v4)
          {

            swift_bridgeObjectRelease_n();
          }

          swift_bridgeObjectRelease_n();

          goto LABEL_207;
        }

        swift_retain_n();
        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        sub_1D5E433CC(v160, v159, 2u);
        sub_1D620B270(v7, v6, v160);
        if (v4)
        {

          sub_1D5E4342C(v160, v159, 2u);

          goto LABEL_229;
        }

        sub_1D620B270(v7, v6, v159);
        v4 = 0;
        sub_1D5E4342C(v160, v159, 2u);
LABEL_203:

LABEL_204:
        v107 = v165;
        goto LABEL_205;
      }

      v108 = *((v92 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v161 = *((v92 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      if (v108 >> 62)
      {
        if (v108 >> 62 == 1)
        {
          v158 = *((v108 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
          if (*((v108 & 0x3FFFFFFFFFFFFFFFLL) + 0x40) > 1u)
          {
            if (*((v108 & 0x3FFFFFFFFFFFFFFFLL) + 0x40) != 2)
            {

              swift_retain_n();
              swift_retain_n();

              swift_retain_n();

              swift_retain_n();

              swift_retain_n();

              swift_retain_n();

              v134 = v161;

LABEL_201:

              sub_1D622B230(v7, v6, v134);
              if (v4)
              {

                swift_bridgeObjectRelease_n();
                goto LABEL_229;
              }

              swift_bridgeObjectRelease_n();
              goto LABEL_203;
            }

            v156 = 2;
            v131 = *((v108 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);

            swift_retain_n();
            swift_retain_n();

            swift_retain_n();

            swift_retain_n();

            swift_retain_n();

            swift_retain_n();

            swift_retain_n();

            sub_1D5E433CC(v158, v131, 2u);
            sub_1D620B270(v7, v6, v158);
            if (v4)
            {
              v157 = v131;

LABEL_250:

              sub_1D5E4342C(v158, v157, v156);

LABEL_256:

              goto LABEL_229;
            }

            sub_1D620B270(v7, v6, v131);
            v4 = 0;
            sub_1D5E4342C(v158, v131, 2u);
          }

          else
          {
            v157 = *((v108 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
            v156 = *((v108 & 0x3FFFFFFFFFFFFFFFLL) + 0x40);
            if (v156)
            {
              v132 = *(v158 + 16);

              swift_retain_n();
              swift_retain_n();

              swift_retain_n();

              swift_retain_n();

              swift_retain_n();

              swift_retain_n();

              swift_retain_n();

              sub_1D5E433CC(v158, v157, 1u);
              if (v132)
              {
                v133 = (v158 + 40);
                do
                {
                  if ((*v133 & 1) == 0)
                  {
                    v118 = *(v133 - 1);
                    *&v186 = v118;
                    swift_retain_n();
                    FormatFloat.bind(binder:context:)(v7, v193);
                    if (v4)
                    {
LABEL_249:
                      sub_1D62B72BC(v118, 0);

                      goto LABEL_250;
                    }

                    sub_1D62B72BC(v118, 0);

                    v42 = v173;
                  }

                  v133 += 16;
                  --v132;
                }

                while (v132);
              }

              v136 = v157;
              v135 = v158;
              v137 = 1;
            }

            else
            {
              v109 = *(v158 + 16);

              swift_retain_n();
              swift_retain_n();

              swift_retain_n();

              swift_retain_n();

              swift_retain_n();

              swift_retain_n();

              swift_retain_n();

              sub_1D5E433CC(v158, v157, 0);
              if (v109)
              {
                v110 = (v158 + 40);
                do
                {
                  if ((*v110 & 1) == 0)
                  {
                    v118 = *(v110 - 1);
                    *&v186 = v118;
                    swift_retain_n();
                    FormatFloat.bind(binder:context:)(v7, v193);
                    if (v4)
                    {
                      goto LABEL_249;
                    }

                    sub_1D62B72BC(v118, 0);

                    v42 = v173;
                  }

                  v110 += 16;
                  --v109;
                }

                while (v109);
              }

              v136 = v157;
              v135 = v158;
              v137 = 0;
            }

            sub_1D5E4342C(v135, v136, v137);

            v6 = v193;
          }
        }

        else
        {
          v124 = *((v108 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
          *&v186 = *((v108 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
          swift_retain_n();

          swift_retain_n();
          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          FormatSyncImageContent.bind(binder:context:)(v7, v6);
          if (v4)
          {

            goto LABEL_229;
          }

          sub_1D622B230(v7, v6, v124);

          swift_bridgeObjectRelease_n();
        }
      }

      else
      {
        v119 = *(v108 + 80);
        v189 = *(v108 + 64);
        v190 = v119;
        v191 = *(v108 + 96);
        v192 = *(v108 + 112);
        v120 = *(v108 + 32);
        v186 = *(v108 + 16);
        v187 = v120;
        v188 = *(v108 + 48);
        v121 = *(v108 + 96);
        v183 = *(v108 + 80);
        v184 = v121;
        v185 = *(v108 + 112);
        v122 = *(v108 + 32);
        v179 = *(v108 + 16);
        v180 = v122;
        v123 = *(v108 + 64);
        v181 = *(v108 + 48);
        v182 = v123;
        swift_retain_n();

        swift_retain_n();
        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        sub_1D5D0322C(&v186, v178);
        FormatSymbolImage.bind(binder:context:)(v7, v6);
        if (v4)
        {

          sub_1D5D07BBC(&v186);

          goto LABEL_256;
        }

        sub_1D5D07BBC(&v186);
      }

      v134 = v161;
      goto LABEL_201;
    }

    v13 = v12 & 0x3FFFFFFFFFFFFFFFLL;
    v15 = *(v13 + 48);
    v14 = *(v13 + 56);
    if (*(v13 + 64) > 1u)
    {
      break;
    }

    v175 = v8;
    if (*(v13 + 64))
    {
      v46 = *(v15 + 16);

      swift_retain_n();
      sub_1D5E433CC(v15, v14, 1u);
      if (v46)
      {
        v47 = (v15 + 40);
        do
        {
          if ((*v47 & 1) == 0)
          {
            *&v186 = *(v47 - 1);
            v48 = v186;
            swift_retain_n();
            FormatFloat.bind(binder:context:)(v177, v193);
            if (v4)
            {
              sub_1D62B72BC(v48, 0);

              v138 = v15;
              v139 = v14;
              v140 = 1;
              goto LABEL_218;
            }

            sub_1D62B72BC(v48, 0);
          }

          v47 += 16;
          --v46;
        }

        while (v46);
      }

      v9 = v15;
      v10 = v14;
      v11 = 1;
    }

    else
    {
      v16 = *(v15 + 16);

      swift_retain_n();
      sub_1D5E433CC(v15, v14, 0);
      if (v16)
      {
        v17 = (v15 + 40);
        do
        {
          if ((*v17 & 1) == 0)
          {
            *&v186 = *(v17 - 1);
            v18 = v186;
            swift_retain_n();
            FormatFloat.bind(binder:context:)(v177, v193);
            if (v4)
            {
              sub_1D62B72BC(v18, 0);

              v138 = v15;
              v139 = v14;
              v140 = 0;
              goto LABEL_218;
            }

            sub_1D62B72BC(v18, 0);
          }

          v17 += 16;
          --v16;
        }

        while (v16);
      }

      v9 = v15;
      v10 = v14;
      v11 = 0;
    }

LABEL_4:
    sub_1D5E4342C(v9, v10, v11);

    v6 = v193;
    v7 = v177;
LABEL_5:
    v5 = v174;
    v8 = v175;
LABEL_6:
    if (++v8 == v5)
    {
      return result;
    }
  }

  if (*(v13 + 64) != 2)
  {
    v6 = v193;
    v7 = v177;
    goto LABEL_6;
  }

  v175 = v8;
  v33 = *(v15 + 16);

  swift_retain_n();
  sub_1D5E433CC(v15, v14, 2u);
  if (!v33)
  {
LABEL_54:
    v49 = *(v14 + 16);
    if (v49)
    {
      v50 = (v14 + 40);
      do
      {
        if ((*v50 & 1) == 0)
        {
          v35 = *(v50 - 1);
          *&v186 = v35;
          swift_retain_n();
          FormatFloat.bind(binder:context:)(v177, v193);
          if (v4)
          {
            goto LABEL_217;
          }

          sub_1D62B72BC(v35, 0);
        }

        v50 += 16;
        --v49;
      }

      while (v49);
    }

    v9 = v15;
    v10 = v14;
    v11 = 2;
    goto LABEL_4;
  }

  v34 = (v15 + 40);
  while (2)
  {
    if (*v34)
    {
LABEL_33:
      v34 += 16;
      if (!--v33)
      {
        goto LABEL_54;
      }

      continue;
    }

    break;
  }

  v35 = *(v34 - 1);
  *&v186 = v35;
  swift_retain_n();
  FormatFloat.bind(binder:context:)(v177, v193);
  if (!v4)
  {
    sub_1D62B72BC(v35, 0);

    goto LABEL_33;
  }

LABEL_217:
  sub_1D62B72BC(v35, 0);

  v138 = v15;
  v139 = v14;
  v140 = 2;
LABEL_218:
  sub_1D5E4342C(v138, v139, v140);
}

void sub_1D622E2AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for FormatOption();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v237 = &v219 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v236 = &v219 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v219 - v17;
  MEMORY[0x1EEE9AC00](v19, v20);
  v239 = &v219 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v238 = &v219 - v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v219 - v27;
  MEMORY[0x1EEE9AC00](v29, v30);
  v244 = &v219 - v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  v243 = &v219 - v34;
  MEMORY[0x1EEE9AC00](v35, v36);
  v38 = &v219 - v37;
  sub_1D5B54684(0, &qword_1EDF337F0, type metadata accessor for FormatOption);
  MEMORY[0x1EEE9AC00](v39 - 8, v40);
  v241 = &v219 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42, v43);
  v240 = &v219 - v44;
  MEMORY[0x1EEE9AC00](v45, v46);
  v246 = &v219 - v47;
  MEMORY[0x1EEE9AC00](v48, v49);
  v245 = &v219 - v50;
  MEMORY[0x1EEE9AC00](v51, v52);
  v252 = &v219 - v53;
  MEMORY[0x1EEE9AC00](v54, v55);
  v250 = &v219 - v56;
  if (!*(a3 + 16))
  {
    return;
  }

  v57 = *(a3 + 16);
  v242 = v38;
  v235 = v28;
  v232 = v18;
  v253 = (v9 + 56);
  v254 = OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_options;
  v58 = (a3 + 48);
  v259 = v8;
  v260 = a2;
  v256 = a1;
  v59 = v8;
  v60 = v57;
  v61 = a2;
  while (1)
  {
    v62 = *(v58 - 1);
    v63 = *v58;
    v64 = *v58 >> 62;
    if (v64)
    {
      break;
    }

    if (*(v63 + 40))
    {
      v261 = v60;
      v74 = *(v63 + 16);
      v73 = *(v63 + 24);
      v75 = *(v63 + 32);
      v264 = v74;
      v265 = v73;
      v266 = v75;
      v268 = 6;
      sub_1D62B6164(v74, v73, v75, 1);
      sub_1D62B6164(v74, v73, v75, 1);

      v76 = sub_1D703E0C8(&v264, &v268);
      v263 = v4;
      if (v4)
      {
        sub_1D62B61A8(v74, v73, v75, 1);

        return;
      }

      v77 = v76;
      v257 = v75;
      v262 = v62;
      v78 = *(v61 + v254);
      v79 = *(v78 + 16);
      swift_beginAccess();
      if (*(*(v79 + 16) + 16) && (sub_1D5B69D90(v74, v73), (v80 & 1) != 0))
      {
        v258 = v58;
        swift_endAccess();
        v81 = v59;
        v82 = v244;
        sub_1D5D25108(v244);
        v83 = v82;
        v84 = v243;
        sub_1D5D5E33C(v83, v243, type metadata accessor for FormatOption);
        v85 = v84;
        v59 = v81;
        v86 = v252;
        sub_1D5D5E33C(v85, v252, type metadata accessor for FormatOption);
      }

      else
      {
        swift_endAccess();
        swift_beginAccess();
        if (!*(*(v78 + 24) + 16) || (sub_1D5B69D90(v74, v73), (v101 & 1) == 0))
        {
          swift_endAccess();
          v106 = *v253;
          v107 = v59;
          v108 = v252;
          (*v253)(v252, 1, 1, v107);

          sub_1D5B6EF64(v108, &qword_1EDF337F0, type metadata accessor for FormatOption);
          v109 = v260;
          if (*(v260 + 48) == 1)
          {
            sub_1D62B61A8(v74, v73, v257, 1);
            v110 = v250;
            v106(v250, 1, 1, v107);
            sub_1D5B6EF64(v110, &qword_1EDF337F0, type metadata accessor for FormatOption);

            a1 = v256;
            v60 = v261;
            v59 = v107;
            v61 = v109;
            v4 = v263;
            goto LABEL_3;
          }

          type metadata accessor for FormatLayoutError();
          sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
          swift_allocError();
          *v207 = v74;
          v207[1] = v73;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();

          sub_1D62B61A8(v74, v73, v257, 1);
LABEL_98:

          return;
        }

        v258 = v58;
        swift_endAccess();
        v86 = v252;
        sub_1D5D25108(v252);
      }

      v102 = *v253;
      (*v253)(v86, 0, 1, v59);
      v103 = v59;
      v104 = v242;
      sub_1D5D5E33C(v86, v242, type metadata accessor for FormatOption);
      v264 = v104[2];

      FormatOptionValue.type.getter(&v268);
      if ((sub_1D6183C84(v268, v77) & 1) == 0)
      {
        type metadata accessor for FormatDerivedDataError();
        sub_1D5B57348(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError);
        v201 = swift_allocError();
        v203 = v202;
        v204 = v104[1];
        v261 = *v104;
        v205 = v104[2];
        v263 = v201;
        v264 = v205;

        FormatOptionValue.type.getter(&v268);
        v206 = v268;
        *v203 = v261;
        *(v203 + 8) = v204;
        *(v203 + 16) = v206;
        *(v203 + 24) = v77;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        sub_1D62B61A8(v74, v73, v257, 1);
        sub_1D62B51D0(v104, type metadata accessor for FormatOption);
        goto LABEL_98;
      }

      sub_1D62B61A8(v74, v73, v257, 1);

      v105 = v250;
      sub_1D5D5E33C(v104, v250, type metadata accessor for FormatOption);
      v102(v105, 0, 1, v103);
      sub_1D5B6EF64(v105, &qword_1EDF337F0, type metadata accessor for FormatOption);

      v4 = v263;
      v61 = v260;
      v60 = v261;
      a1 = v256;
      v59 = v103;
      v58 = v258;
    }

LABEL_3:
    v58 += 3;
    if (!--v60)
    {
      return;
    }
  }

  if (v64 == 1)
  {
    goto LABEL_3;
  }

  v65 = v63 & 0x3FFFFFFFFFFFFFFFLL;
  v67 = *(v65 + 16);
  v66 = *(v65 + 24);
  if (!(v67 >> 62))
  {
    if ((*(v67 + 40) & 1) == 0)
    {
      goto LABEL_23;
    }

    v258 = v58;
    v261 = v60;
    v87 = v67;
    v88 = *(v67 + 16);
    v90 = *(v87 + 24);
    v89 = *(v87 + 32);
    v264 = v88;
    v265 = v90;
    v266 = v89;
    v268 = 6;
    sub_1D62B6164(v88, v90, v89, 1);

    v249 = v65;

    sub_1D62B6164(v88, v90, v89, 1);
    v248 = v87;
    swift_retain_n();

    v91 = sub_1D703E0C8(&v264, &v268);
    if (v4)
    {
      sub_1D62B61A8(v88, v90, v89, 1);
    }

    else
    {
      v92 = v91;
      v262 = v62;
      v263 = 0;
      v93 = *(v260 + v254);
      v94 = *(v93 + 16);
      swift_beginAccess();
      if (*(*(v94 + 16) + 16))
      {
        sub_1D5B69D90(v88, v90);
        if (v95)
        {
          v255 = v66;
          swift_endAccess();
          v96 = v239;
          sub_1D5D25108(v239);
          v97 = v96;
          v98 = v238;
          sub_1D5D5E33C(v97, v238, type metadata accessor for FormatOption);
          v99 = v98;
          v100 = v246;
          sub_1D5D5E33C(v99, v246, type metadata accessor for FormatOption);
LABEL_40:
          v127 = *v253;
          v128 = v259;
          (*v253)(v100, 0, 1, v259);
          v129 = v100;
          v130 = v235;
          sub_1D5D5E33C(v129, v235, type metadata accessor for FormatOption);
          v264 = v130[2];

          FormatOptionValue.type.getter(&v268);
          if ((sub_1D6183C84(v268, v92) & 1) == 0)
          {
            v263 = type metadata accessor for FormatDerivedDataError();
            sub_1D5B57348(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError);
            swift_allocError();
            v209 = v208;
            v210 = v130[1];
            v261 = *v130;
            v264 = v130[2];

            FormatOptionValue.type.getter(&v268);
            v211 = v268;
            *v209 = v261;
            *(v209 + 8) = v210;
            *(v209 + 16) = v211;
            *(v209 + 24) = v92;
            swift_storeEnumTagMultiPayload();
            swift_willThrow();

            sub_1D62B61A8(v88, v90, v89, 1);

            sub_1D62B51D0(v130, type metadata accessor for FormatOption);

            goto LABEL_112;
          }

          sub_1D62B61A8(v88, v90, v89, 1);

          v131 = v245;
          sub_1D5D5E33C(v130, v245, type metadata accessor for FormatOption);
          v127(v131, 0, 1, v128);
          sub_1D5B6EF64(v131, &qword_1EDF337F0, type metadata accessor for FormatOption);

          v4 = v263;
          v66 = v255;
          goto LABEL_44;
        }
      }

      swift_endAccess();
      swift_beginAccess();
      if (*(*(v93 + 24) + 16))
      {
        sub_1D5B69D90(v88, v90);
        if (v126)
        {
          v255 = v66;
          swift_endAccess();
          v100 = v246;
          sub_1D5D25108(v246);
          goto LABEL_40;
        }
      }

      swift_endAccess();
      v132 = *v253;
      v133 = v246;
      v134 = v259;
      (*v253)(v246, 1, 1, v259);

      sub_1D5B6EF64(v133, &qword_1EDF337F0, type metadata accessor for FormatOption);
      v4 = v263;
      if (*(v260 + 48))
      {
        sub_1D62B61A8(v88, v90, v89, 1);
        v135 = v245;
        v132(v245, 1, 1, v134);
        sub_1D5B6EF64(v135, &qword_1EDF337F0, type metadata accessor for FormatOption);

LABEL_44:
        v61 = v260;
        v60 = v261;
        a1 = v256;
        v58 = v258;
        goto LABEL_91;
      }

      type metadata accessor for FormatLayoutError();
      sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
      swift_allocError();
      *v212 = v88;
      v212[1] = v90;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      sub_1D62B61A8(v88, v90, v89, 1);
    }

    goto LABEL_110;
  }

  if (v67 >> 62 == 1)
  {
LABEL_23:

LABEL_91:

    sub_1D622E2AC(a1, v61, v66);
    if (v4)
    {

      swift_bridgeObjectRelease_n();
      goto LABEL_112;
    }

    swift_bridgeObjectRelease_n();

    v59 = v259;
    goto LABEL_3;
  }

  v68 = *((v67 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v69 = *((v67 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
  v257 = v67 & 0x3FFFFFFFFFFFFFFFLL;
  v255 = v66;
  v251 = v68;
  if (!(v68 >> 62))
  {
    if ((*(v68 + 40) & 1) == 0)
    {
      goto LABEL_36;
    }

    v247 = v69;
    v248 = v67;
    v112 = *(v68 + 16);
    v111 = *(v68 + 24);
    v113 = *(v68 + 32);
    v264 = v112;
    v265 = v111;
    v266 = v113;
    v268 = 6;
    sub_1D62B6164(v112, v111, v113, 1);

    v249 = v65;

    swift_retain_n();

    v234 = v112;
    sub_1D62B6164(v112, v111, v113, 1);
    swift_retain_n();

    v114 = sub_1D703E0C8(&v264, &v268);
    if (v4)
    {
      sub_1D62B61A8(v234, v111, v113, 1);
    }

    else
    {
      v115 = v114;
      v258 = v58;
      v262 = v62;
      v263 = 0;
      v116 = *(v260 + v254);
      v117 = *(v116 + 16);
      swift_beginAccess();
      v118 = *(*(v117 + 16) + 16);
      v261 = v60;
      if (v118)
      {
        sub_1D5B69D90(v234, v111);
        if (v119)
        {
          v120 = v113;
          swift_endAccess();
          v121 = v237;
          sub_1D5D25108(v237);
          v122 = v121;
          v123 = v236;
          sub_1D5D5E33C(v122, v236, type metadata accessor for FormatOption);
          v124 = v241;
          sub_1D5D5E33C(v123, v241, type metadata accessor for FormatOption);
          v125 = v253;
LABEL_53:
          v146 = *v125;
          v147 = v259;
          (*v125)(v124, 0, 1, v259);
          v148 = v232;
          sub_1D5D5E33C(v124, v232, type metadata accessor for FormatOption);
          v264 = v148[2];

          FormatOptionValue.type.getter(&v268);
          if ((sub_1D6183C84(v268, v115) & 1) == 0)
          {
            v263 = type metadata accessor for FormatDerivedDataError();
            sub_1D5B57348(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError);
            swift_allocError();
            v214 = v213;
            v215 = v148[1];
            v261 = *v148;
            v264 = v148[2];

            FormatOptionValue.type.getter(&v268);
            v216 = v268;
            *v214 = v261;
            *(v214 + 8) = v215;
            *(v214 + 16) = v216;
            *(v214 + 24) = v115;
            swift_storeEnumTagMultiPayload();
            swift_willThrow();

            sub_1D62B61A8(v234, v111, v120, 1);

            sub_1D62B51D0(v148, type metadata accessor for FormatOption);

            goto LABEL_112;
          }

          sub_1D62B61A8(v234, v111, v120, 1);

          v149 = v240;
          sub_1D5D5E33C(v148, v240, type metadata accessor for FormatOption);
          v146(v149, 0, 1, v147);
          sub_1D5B6EF64(v149, &qword_1EDF337F0, type metadata accessor for FormatOption);

          v4 = v263;
          goto LABEL_57;
        }
      }

      v120 = v113;
      swift_endAccess();
      swift_beginAccess();
      if (*(*(v116 + 24) + 16))
      {
        sub_1D5B69D90(v234, v111);
        if (v145)
        {
          swift_endAccess();
          v124 = v241;
          sub_1D5D25108(v241);
          v125 = v253;
          goto LABEL_53;
        }
      }

      swift_endAccess();
      v150 = *v253;
      v151 = v241;
      v152 = v259;
      (*v253)(v241, 1, 1, v259);

      sub_1D5B6EF64(v151, &qword_1EDF337F0, type metadata accessor for FormatOption);
      v4 = v263;
      if (*(v260 + 48))
      {
        sub_1D62B61A8(v234, v111, v113, 1);
        v153 = v240;
        v150(v240, 1, 1, v152);
        sub_1D5B6EF64(v153, &qword_1EDF337F0, type metadata accessor for FormatOption);

LABEL_57:
        v60 = v261;
        v61 = v260;
        a1 = v256;
        v58 = v258;
        v69 = v247;
        goto LABEL_89;
      }

      type metadata accessor for FormatLayoutError();
      sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
      swift_allocError();
      v217 = v234;
      *v218 = v234;
      v218[1] = v111;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      sub_1D62B61A8(v217, v111, v120, 1);
    }

LABEL_110:

    return;
  }

  if (v68 >> 62 == 1)
  {
LABEL_36:

    swift_retain_n();

LABEL_89:

    sub_1D622E2AC(a1, v61, v69);
    if (v4)
    {

      swift_bridgeObjectRelease_n();
      goto LABEL_112;
    }

    swift_bridgeObjectRelease_n();

    v66 = v255;
    goto LABEL_91;
  }

  v247 = v69;
  v70 = *((v68 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v71 = *((v68 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
  v234 = v68 & 0x3FFFFFFFFFFFFFFFLL;
  v233 = v70;
  if (!(v70 >> 62))
  {
    v248 = v67;
    v258 = v58;
    v261 = v60;
    v137 = *(v70 + 24);
    v138 = v65;
    v139 = *(v70 + 32);
    v140 = *(v70 + 40);
    v264 = *(v70 + 16);
    v136 = v264;
    v265 = v137;
    v266 = v139;
    v267 = v140;
    swift_retain_n();
    v231 = v71;

    v262 = v62;

    v249 = v138;

    swift_retain_n();

    swift_retain_n();

    sub_1D62B6164(v136, v137, v139, v140);
    sub_1D69BBC64(v260);
    if (!v4)
    {
      v263 = 0;
      sub_1D62B61A8(v136, v137, v139, v140);

      v60 = v261;
      v72 = v260;
      a1 = v256;
      v58 = v258;
      v71 = v231;
      goto LABEL_87;
    }

    sub_1D62B61A8(v136, v137, v139, v140);

    goto LABEL_112;
  }

  if (v70 >> 62 == 1)
  {
    v263 = v4;

    swift_retain_n();

    swift_retain_n();

    v72 = v260;
LABEL_87:

    v198 = v72;
    v199 = v72;
    v200 = v263;
    sub_1D622E2AC(a1, v199, v71);
    if (v200)
    {

      swift_bridgeObjectRelease_n();

      return;
    }

    swift_bridgeObjectRelease_n();

    v69 = v247;
    v61 = v198;
    v4 = 0;
    goto LABEL_89;
  }

  v141 = *((v70 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v230 = *((v70 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
  v229 = v70 & 0x3FFFFFFFFFFFFFFFLL;
  v231 = v71;
  v228 = v141;
  if (!(v141 >> 62))
  {
    v248 = v67;
    v258 = v58;
    v261 = v60;
    v155 = *(v141 + 24);
    v156 = v65;
    v157 = *(v141 + 32);
    v158 = *(v141 + 40);
    v264 = *(v141 + 16);
    v154 = v264;
    v265 = v155;
    v266 = v157;
    v267 = v158;
    swift_retain_n();

    v262 = v62;

    v249 = v156;

    swift_retain_n();

    swift_retain_n();

    swift_retain_n();

    sub_1D62B6164(v154, v155, v157, v158);
    sub_1D69BBC64(v260);
    if (!v4)
    {
      v263 = 0;
      sub_1D62B61A8(v154, v155, v157, v158);

      v60 = v261;
      v144 = v260;
      a1 = v256;
      v58 = v258;
LABEL_84:
      v143 = v230;
      goto LABEL_85;
    }

    sub_1D62B61A8(v154, v155, v157, v158);

LABEL_112:

    return;
  }

  if (v141 >> 62 == 1)
  {
    v263 = v4;

    v142 = v230;

    swift_retain_n();

    swift_retain_n();

    swift_retain_n();
    v143 = v142;

    v144 = v260;
LABEL_85:

    v195 = v144;
    v196 = v144;
    v197 = v263;
    sub_1D622E2AC(a1, v196, v143);
    v263 = v197;
    if (v197)
    {

      swift_bridgeObjectRelease_n();
      goto LABEL_117;
    }

    swift_bridgeObjectRelease_n();

    v71 = v231;
    v72 = v195;
    goto LABEL_87;
  }

  v160 = *((v141 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v159 = *((v141 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
  v226 = v141 & 0x3FFFFFFFFFFFFFFFLL;
  v227 = v159;
  v225 = v160;
  if (!(v160 >> 62))
  {
    v248 = v67;
    v258 = v58;
    v261 = v60;
    v163 = *(v160 + 24);
    v164 = v65;
    v165 = *(v160 + 32);
    v166 = *(v160 + 40);
    v264 = *(v160 + 16);
    v162 = v264;
    v265 = v163;
    v266 = v165;
    v267 = v166;
    swift_retain_n();

    v262 = v62;

    v249 = v164;

    swift_retain_n();

    swift_retain_n();

    swift_retain_n();

    swift_retain_n();

    sub_1D62B6164(v162, v163, v165, v166);
    sub_1D69BBC64(v260);
    if (v4)
    {

      sub_1D62B61A8(v162, v163, v165, v166);

      goto LABEL_98;
    }

    v263 = 0;
    sub_1D62B61A8(v162, v163, v165, v166);

    v60 = v261;
    v161 = v260;
    a1 = v256;
    v58 = v258;
    goto LABEL_82;
  }

  if (v160 >> 62 == 1)
  {
    v263 = v4;

    swift_retain_n();

    swift_retain_n();

    swift_retain_n();

    swift_retain_n();

    v161 = v260;
LABEL_82:
    v191 = v227;

    v192 = v161;
    v193 = v161;
    v194 = v263;
    sub_1D622E2AC(a1, v193, v191);
    v263 = v194;
    if (v194)
    {

      swift_bridgeObjectRelease_n();
      goto LABEL_117;
    }

    swift_bridgeObjectRelease_n();

    v144 = v192;
    goto LABEL_84;
  }

  v168 = *((v160 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v167 = *((v160 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
  v223 = v160 & 0x3FFFFFFFFFFFFFFFLL;
  v224 = v167;
  v222 = v168;
  if (v168 >> 62)
  {
    if (v168 >> 62 == 1)
    {
      v263 = v4;

      swift_retain_n();

      swift_retain_n();

      swift_retain_n();

      swift_retain_n();

      swift_retain_n();

      v169 = v260;
      goto LABEL_80;
    }

    v176 = *((v168 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v175 = *((v168 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    v221 = v168 & 0x3FFFFFFFFFFFFFFFLL;
    v220 = v175;
    v219 = v176;
    if (v176 >> 62)
    {
      if (v176 >> 62 == 1)
      {

        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

LABEL_78:
        v187 = v220;

        sub_1D622E2AC(a1, v260, v187);
        if (v4)
        {

          swift_bridgeObjectRelease_n();

          goto LABEL_98;
        }

        v263 = 0;

        swift_bridgeObjectRelease_n();

        v169 = v260;
        goto LABEL_80;
      }

      v258 = v58;
      v182 = v60;
      v183 = v176 & 0x3FFFFFFFFFFFFFFFLL;
      v184 = v62;
      v185 = *((v176 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v186 = *((v176 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);

      v262 = v184;

      swift_retain_n();

      swift_retain_n();

      swift_retain_n();

      swift_retain_n();

      swift_retain_n();

      swift_retain_n();

      swift_retain_n();

      sub_1D62493D8(v256, v260, v185, v186);
      if (!v4)
      {

        a1 = v256;
        v60 = v182;
        goto LABEL_77;
      }

      v263 = v183;
      v249 = v65;
    }

    else
    {
      v248 = v67;
      v258 = v58;
      v261 = v60;
      v177 = v65;
      v179 = *(v176 + 24);
      v180 = *(v176 + 32);
      v181 = *(v176 + 40);
      v264 = *(v176 + 16);
      v178 = v264;
      v265 = v179;
      v266 = v180;
      v267 = v181;
      v263 = v176 & 0x3FFFFFFFFFFFFFFFLL;
      swift_retain_n();

      v262 = v62;

      v249 = v177;

      swift_retain_n();

      swift_retain_n();

      swift_retain_n();

      swift_retain_n();

      swift_retain_n();

      swift_retain_n();

      sub_1D62B6164(v178, v179, v180, v181);
      sub_1D69BBC64(v260);
      if (!v4)
      {
        sub_1D62B61A8(v178, v179, v180, v181);

        v60 = v261;
        a1 = v256;
LABEL_77:
        v58 = v258;
        goto LABEL_78;
      }

      sub_1D62B61A8(v178, v179, v180, v181);
    }

    goto LABEL_98;
  }

  v248 = v67;
  v258 = v58;
  v261 = v60;
  v170 = *(v168 + 24);
  v221 = *(v168 + 16);
  v171 = v65;
  v172 = *(v168 + 32);
  v173 = *(v168 + 40);
  v264 = v221;
  v265 = v170;
  v266 = v172;
  v267 = v173;
  swift_retain_n();

  v262 = v62;

  v249 = v171;

  swift_retain_n();

  swift_retain_n();

  swift_retain_n();

  swift_retain_n();

  swift_retain_n();
  v174 = v221;

  sub_1D62B6164(v174, v170, v172, v173);
  sub_1D69BBC64(v260);
  if (v4)
  {

    sub_1D62B61A8(v221, v170, v172, v173);

    goto LABEL_98;
  }

  v263 = 0;
  sub_1D62B61A8(v174, v170, v172, v173);

  v60 = v261;
  v169 = v260;
  a1 = v256;
  v58 = v258;
LABEL_80:
  v188 = v224;

  v189 = v188;
  v190 = v263;
  sub_1D622E2AC(a1, v169, v189);
  v263 = v190;
  if (!v190)
  {

    swift_bridgeObjectRelease_n();

    v161 = v169;
    goto LABEL_82;
  }

  swift_bridgeObjectRelease_n();
LABEL_117:
}

uint64_t sub_1D6230D00(uint64_t result, uint64_t a2, uint64_t a3)
{
  v11 = *(a3 + 16);
  if (v11)
  {
    v5 = result;
    v6 = 0;
    v12 = a3 + 32;
    while (1)
    {
      v7 = *(v12 + 24 * v6 + 16);
      v8 = *(v7 + 16);

      if (v8)
      {
        break;
      }

LABEL_3:
      ++v6;

      if (v6 == v11)
      {
        return result;
      }
    }

    v9 = (v7 + 40);
    while (1)
    {
      if ((*v9 & 1) == 0)
      {
        v10 = *(v9 - 1);
        swift_retain_n();
        FormatFloat.bind(binder:context:)(v5, a2);
        sub_1D62B72BC(v10, 0);
        if (v3)
        {
        }
      }

      v9 += 16;
      if (!--v8)
      {
        goto LABEL_3;
      }
    }
  }

  return result;
}

uint64_t sub_1D6230E38(uint64_t result, uint64_t a2, uint64_t a3)
{
  v9 = result;
  v4 = *(a3 + 16);
  if (v4)
  {
    sub_1D5B49474(0, &qword_1EDF329A8);
    v6 = (a3 + 48);
    do
    {
      v14 = *v6;

      if (swift_dynamicCast())
      {
        v7 = *(&v12 + 1);
        v8 = v13;
        __swift_project_boxed_opaque_existential_1(&v11, *(&v12 + 1));
        (*(v8 + 8))(v9, a2, v7, v8);

        result = __swift_destroy_boxed_opaque_existential_1(&v11);
        if (v3)
        {
          return result;
        }
      }

      else
      {

        v13 = 0;
        v11 = 0u;
        v12 = 0u;
        result = sub_1D5BFB774(&v11, &qword_1EDF329A0, &qword_1EDF329A8);
      }

      v6 += 24;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_1D6230F7C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = result;
    v6 = (a3 + 32);
    do
    {
      v8 = *v6++;
      v7 = v8;
      if (v8 < 0)
      {
        v12 = *((v7 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);

        sub_1D623D6A4(v5, a2, v12);

        if (v3)
        {
          return result;
        }
      }

      else if (*(v7 + 40))
      {
        v10 = *(v7 + 24);
        v9 = *(v7 + 32);
        v18 = v10;
        sub_1D5F586D0(v10, v9, 1);

        sub_1D5F586D0(v10, v9, 1);
        sub_1D5D0ACAC(0, &qword_1EDF1B018, &type metadata for FormatSourceItemTipTrait, MEMORY[0x1E69E62F8]);
        sub_1D5B49474(0, &qword_1EDF329A8);

        if (swift_dynamicCast())
        {
          v11 = v17;
          v13 = *(&v16 + 1);
          __swift_project_boxed_opaque_existential_1(&v15, *(&v16 + 1));
          (*(v11 + 8))(v5, a2, v13, v11);
          if (v3)
          {
            sub_1D5F5870C(v10, v9, 1);
            sub_1D5F5870C(v10, v9, 1);
            __swift_destroy_boxed_opaque_existential_1(&v15);
          }

          __swift_destroy_boxed_opaque_existential_1(&v15);
        }

        else
        {
          v17 = 0;
          v15 = 0u;
          v16 = 0u;
          sub_1D5BFB774(&v15, &qword_1EDF329A0, &qword_1EDF329A8);
        }

        sub_1D6212E6C(v5, a2, v9);
        sub_1D5F5870C(v10, v9, 1);
        sub_1D5F5870C(v10, v9, 1);

        if (v3)
        {
          return result;
        }
      }

      --v4;
    }

    while (v4);
  }

  return result;
}

void sub_1D6231208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v170 = a1;
  v7 = type metadata accessor for FormatOption();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v159 = &v156 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v158 = &v156 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v156 - v16;
  sub_1D5B54684(0, &qword_1EDF337F0, type metadata accessor for FormatOption);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v166 = &v156 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v165 = &v156 - v23;
  v24 = *(a3 + 16);
  if (!v24)
  {
    return;
  }

  v157 = v17;
  v162 = (v8 + 56);
  v163 = OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_options;
  v25 = (a3 + 48);
  v203 = a2;
  v164 = v7;
  while (1)
  {
    v40 = *v25;
    v41 = *v25 >> 61;
    if (v41 <= 1)
    {
      if (v41)
      {
        v55 = v40 & 0x1FFFFFFFFFFFFFFFLL;
        v56 = *((v40 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v57 = *(v55 + 24);

        swift_retain_n();

        sub_1D6247DA4(v170, v203, v56, v57);

        if (v4)
        {
          return;
        }
      }

      else
      {
        v26 = *(v40 + 208);
        v199 = *(v40 + 192);
        v200 = v26;
        v27 = *(v40 + 240);
        v201 = *(v40 + 224);
        v202 = v27;
        v28 = *(v40 + 144);
        v195 = *(v40 + 128);
        v196 = v28;
        v29 = *(v40 + 176);
        v197 = *(v40 + 160);
        v198 = v29;
        v30 = *(v40 + 80);
        v191 = *(v40 + 64);
        v192 = v30;
        v31 = *(v40 + 112);
        v193 = *(v40 + 96);
        v194 = v31;
        v32 = *(v40 + 32);
        v188 = *(v40 + 16);
        v189 = v32;
        v190 = *(v40 + 48);
        v33 = *(v40 + 224);
        v185 = *(v40 + 208);
        v186 = v33;
        v187 = *(v40 + 240);
        v34 = *(v40 + 160);
        v181 = *(v40 + 144);
        v182 = v34;
        v35 = *(v40 + 192);
        v183 = *(v40 + 176);
        v184 = v35;
        v36 = *(v40 + 96);
        v177 = *(v40 + 80);
        v178 = v36;
        v37 = *(v40 + 128);
        v179 = *(v40 + 112);
        v180 = v37;
        v38 = *(v40 + 32);
        v173 = *(v40 + 16);
        v174 = v38;
        v39 = *(v40 + 64);
        v175 = *(v40 + 48);
        v176 = v39;
        swift_retain_n();

        sub_1D5EEBE38(&v188, v172);
        FormatRemoteVideo.bind(binder:context:)(v170, v203);

        sub_1D5EEBE94(&v188);

        if (v4)
        {
          return;
        }
      }

      goto LABEL_4;
    }

    v171 = *(v25 - 1);
    v169 = v24;
    if (v41 == 2)
    {
      v58 = *((v40 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v59 = *((v40 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v60 = v58 >> 61;
      v167 = v58;
      v168 = v40 & 0x1FFFFFFFFFFFFFFFLL;
      if ((v58 >> 61) <= 1)
      {
        if (v60)
        {
          v119 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          v120 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);

          swift_retain_n();
          swift_retain_n();

          sub_1D6247DA4(v170, v203, v119, v120);
          if (v4)
          {

            goto LABEL_77;
          }
        }

        else
        {
          v81 = *(v58 + 208);
          v199 = *(v58 + 192);
          v200 = v81;
          v82 = *(v58 + 240);
          v201 = *(v58 + 224);
          v202 = v82;
          v83 = *(v58 + 144);
          v195 = *(v58 + 128);
          v196 = v83;
          v84 = *(v58 + 176);
          v197 = *(v58 + 160);
          v198 = v84;
          v85 = *(v58 + 80);
          v191 = *(v58 + 64);
          v192 = v85;
          v86 = *(v58 + 112);
          v193 = *(v58 + 96);
          v194 = v86;
          v87 = *(v58 + 32);
          v188 = *(v58 + 16);
          v189 = v87;
          v190 = *(v58 + 48);
          v88 = *(v58 + 224);
          v185 = *(v58 + 208);
          v186 = v88;
          v187 = *(v58 + 240);
          v89 = *(v58 + 160);
          v181 = *(v58 + 144);
          v182 = v89;
          v90 = *(v58 + 192);
          v183 = *(v58 + 176);
          v184 = v90;
          v91 = *(v58 + 96);
          v177 = *(v58 + 80);
          v178 = v91;
          v92 = *(v58 + 128);
          v179 = *(v58 + 112);
          v180 = v92;
          v93 = *(v58 + 32);
          v173 = *(v58 + 16);
          v174 = v93;
          v94 = *(v58 + 64);
          v175 = *(v58 + 48);
          v176 = v94;

          swift_retain_n();

          swift_retain_n();
          sub_1D5EEBE38(&v188, v172);
          FormatRemoteVideo.bind(binder:context:)(v170, v203);
          if (v4)
          {

            sub_1D5EEBE94(&v188);

            goto LABEL_78;
          }

          sub_1D5EEBE94(&v188);
        }
      }

      else if (v60 == 2)
      {
        v109 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
        *&v188 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

        swift_retain_n();

        swift_retain_n();
        v161 = v58 & 0x1FFFFFFFFFFFFFFFLL;
        swift_retain_n();

        v110 = v170;
        v111 = v203;
        FormatVideoNodeContent.bind(binder:context:)(v170, v203);
        if (v4)
        {

          goto LABEL_77;
        }

        *&v188 = v109;

        FormatVideoNodeContent.bind(binder:context:)(v110, v111);
      }

      else if (v60 == 3)
      {
        v61 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
        v62 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
        *&v188 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        *(&v188 + 1) = v61;
        *&v189 = v62;

        swift_retain_n();

        swift_retain_n();
        sub_1D71580D8(v203);
        if (v4)
        {

          goto LABEL_77;
        }
      }

      else
      {
        v112 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
        *&v188 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v161 = v188;
        swift_retain_n();

        swift_retain_n();
        swift_retain_n();

        v113 = v170;
        v114 = v203;
        FormatVideoNodeContent.bind(binder:context:)(v170, v203);
        if (v4)
        {

LABEL_71:

LABEL_77:

          return;
        }

        sub_1D6231208(v113, v114, v112);

        swift_bridgeObjectRelease_n();
      }

      v121 = v59 >> 61;
      if ((v59 >> 61) <= 1)
      {
        if (!v121)
        {
          v124 = *(v59 + 208);
          v199 = *(v59 + 192);
          v200 = v124;
          v125 = *(v59 + 240);
          v201 = *(v59 + 224);
          v202 = v125;
          v126 = *(v59 + 144);
          v195 = *(v59 + 128);
          v196 = v126;
          v127 = *(v59 + 176);
          v197 = *(v59 + 160);
          v198 = v127;
          v128 = *(v59 + 80);
          v191 = *(v59 + 64);
          v192 = v128;
          v129 = *(v59 + 112);
          v193 = *(v59 + 96);
          v194 = v129;
          v130 = *(v59 + 32);
          v188 = *(v59 + 16);
          v189 = v130;
          v190 = *(v59 + 48);
          v131 = *(v59 + 224);
          v185 = *(v59 + 208);
          v186 = v131;
          v187 = *(v59 + 240);
          v132 = *(v59 + 160);
          v181 = *(v59 + 144);
          v182 = v132;
          v133 = *(v59 + 192);
          v183 = *(v59 + 176);
          v184 = v133;
          v134 = *(v59 + 96);
          v177 = *(v59 + 80);
          v178 = v134;
          v135 = *(v59 + 128);
          v179 = *(v59 + 112);
          v180 = v135;
          v136 = *(v59 + 32);
          v173 = *(v59 + 16);
          v174 = v136;
          v137 = *(v59 + 64);
          v175 = *(v59 + 48);
          v176 = v137;

          sub_1D5EEBE38(&v188, v172);
          FormatRemoteVideo.bind(binder:context:)(v170, v203);

          sub_1D5EEBE94(&v188);

          goto LABEL_62;
        }

        v147 = *((v59 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v148 = *((v59 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);

        sub_1D6247DA4(v170, v203, v147, v148);
      }

      else if (v121 == 2)
      {
        v143 = *((v59 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
        *&v188 = *((v59 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

        swift_retain_n();

        v144 = v203;
        FormatVideoNodeContent.bind(binder:context:)(v170, v203);

        *&v188 = v143;

        FormatVideoNodeContent.bind(binder:context:)(v170, v144);
      }

      else
      {
        if (v121 != 3)
        {
          v145 = *((v59 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
          *&v188 = *((v59 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          swift_retain_n();

          v146 = v203;
          FormatVideoNodeContent.bind(binder:context:)(v170, v203);

          sub_1D6231208(v170, v146, v145);

          swift_bridgeObjectRelease_n();
          goto LABEL_62;
        }

        v122 = *((v59 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
        v123 = *((v59 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
        *&v188 = *((v59 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        *(&v188 + 1) = v122;
        *&v189 = v123;

        sub_1D71580D8(v203);
      }

      goto LABEL_62;
    }

    if (v41 != 3)
    {
      break;
    }

    v42 = (v40 & 0x1FFFFFFFFFFFFFFFLL);
    v44 = v42[2];
    v43 = v42[3];
    v45 = v42[4];
    *&v188 = v44;
    *(&v188 + 1) = v43;
    *&v189 = v45;
    LOBYTE(v173) = 9;
    v168 = v43;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();

    swift_retain_n();
    v46 = sub_1D703E0C8(&v188, &v173);
    if (v4)
    {

      return;
    }

    v47 = v46;
    v167 = 0;
    v48 = *(v203 + v163);
    v49 = *(v48 + 16);
    swift_beginAccess();
    if (*(*(v49 + 16) + 16) && (sub_1D5B69D90(v44, v168), (v50 & 1) != 0))
    {
      v160 = v25;
      v161 = v47;
      swift_endAccess();
      v51 = v159;
      sub_1D5D25108(v159);
      v52 = v51;
      v53 = v158;
      sub_1D5D5E33C(v52, v158, type metadata accessor for FormatOption);
      v54 = v166;
      sub_1D5D5E33C(v53, v166, type metadata accessor for FormatOption);
    }

    else
    {
      swift_endAccess();
      swift_beginAccess();
      if (!*(*(v48 + 24) + 16) || (sub_1D5B69D90(v44, v168), (v69 & 1) == 0))
      {
        v161 = v45;
        swift_endAccess();
        v76 = *v162;
        v77 = v166;
        v78 = v164;
        (*v162)(v166, 1, 1, v164);

        sub_1D5B6EF64(v77, &qword_1EDF337F0, type metadata accessor for FormatOption);
        v79 = v167;
        if (*(v203 + 48) != 1)
        {
          type metadata accessor for FormatLayoutError();
          sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
          swift_allocError();
          v154 = v168;
          *v155 = v44;
          v155[1] = v154;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();

          return;
        }

        v80 = v165;
        v76(v165, 1, 1, v78);
        sub_1D5B6EF64(v80, &qword_1EDF337F0, type metadata accessor for FormatOption);

        v4 = v79;
        v24 = v169;
        goto LABEL_4;
      }

      v160 = v25;
      v161 = v47;
      swift_endAccess();
      v54 = v166;
      sub_1D5D25108(v166);
    }

    v70 = *v162;
    v71 = v164;
    (*v162)(v54, 0, 1, v164);
    v72 = v157;
    sub_1D5D5E33C(v54, v157, type metadata accessor for FormatOption);
    v73 = v72;
    *&v188 = v72[2];
    v74 = v161;

    FormatOptionValue.type.getter(&v173);
    if ((sub_1D6183C84(v173, v74) & 1) == 0)
    {
      v203 = type metadata accessor for FormatDerivedDataError();
      sub_1D5B57348(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError);
      v167 = swift_allocError();
      v150 = v149;
      v151 = *v72;
      v152 = v72[1];
      *&v188 = v72[2];

      FormatOptionValue.type.getter(&v173);
      v153 = v173;
      *v150 = v151;
      *(v150 + 8) = v152;
      *(v150 + 16) = v153;
      *(v150 + 24) = v74;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      sub_1D62B51D0(v72, type metadata accessor for FormatOption);
      goto LABEL_78;
    }

    swift_bridgeObjectRelease_n();
    v75 = v165;
    sub_1D5D5E33C(v73, v165, type metadata accessor for FormatOption);
    v70(v75, 0, 1, v71);
    sub_1D5B6EF64(v75, &qword_1EDF337F0, type metadata accessor for FormatOption);

    v4 = v167;
    v24 = v169;
    v25 = v160;
LABEL_4:
    v25 += 3;
    if (!--v24)
    {
      return;
    }
  }

  v63 = v40 & 0x1FFFFFFFFFFFFFFFLL;
  v65 = *((v40 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v64 = *((v40 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
  v66 = v65 >> 61;
  if ((v65 >> 61) > 1)
  {
    v168 = v63;
    if (v66 == 2)
    {
      v115 = *((v65 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v117 = v170;
      *&v188 = *((v65 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v116 = v188;
      v160 = v115;

      v161 = v116;
      swift_retain_n();

      swift_retain_n();
      swift_retain_n();
      v167 = v64;

      v118 = v203;
      FormatVideoNodeContent.bind(binder:context:)(v117, v203);
      if (v4)
      {

        goto LABEL_77;
      }

      *&v188 = v160;

      FormatVideoNodeContent.bind(binder:context:)(v117, v118);
    }

    else
    {
      if (v66 == 3)
      {
        v67 = *((v65 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
        v68 = *((v65 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
        *&v188 = *((v65 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        *(&v188 + 1) = v67;
        *&v189 = v68;

        swift_retain_n();
        swift_retain_n();

        sub_1D71580D8(v203);
        if (v4)
        {

          goto LABEL_77;
        }

LABEL_57:

        sub_1D6231208(v170, v203, v64);

        swift_bridgeObjectRelease_n();
LABEL_62:

        v24 = v169;
        goto LABEL_4;
      }

      v138 = *((v65 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      *&v188 = *((v65 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v161 = v188;
      swift_retain_n();

      swift_retain_n();
      swift_retain_n();
      v167 = v64;

      v139 = v170;
      v140 = v203;
      FormatVideoNodeContent.bind(binder:context:)(v170, v203);
      if (v4)
      {

        goto LABEL_71;
      }

      sub_1D6231208(v139, v140, v138);

      swift_bridgeObjectRelease_n();
    }

    v64 = v167;
    goto LABEL_57;
  }

  if (v66)
  {
    v141 = *((v65 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v142 = *((v65 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);

    v168 = v63;
    swift_retain_n();
    swift_retain_n();

    sub_1D6247DA4(v170, v203, v141, v142);
    if (v4)
    {

      goto LABEL_77;
    }

    goto LABEL_57;
  }

  v95 = *(v65 + 208);
  v199 = *(v65 + 192);
  v200 = v95;
  v96 = *(v65 + 240);
  v201 = *(v65 + 224);
  v202 = v96;
  v97 = *(v65 + 144);
  v195 = *(v65 + 128);
  v196 = v97;
  v98 = *(v65 + 176);
  v197 = *(v65 + 160);
  v198 = v98;
  v99 = *(v65 + 80);
  v191 = *(v65 + 64);
  v192 = v99;
  v100 = *(v65 + 112);
  v193 = *(v65 + 96);
  v194 = v100;
  v101 = *(v65 + 32);
  v188 = *(v65 + 16);
  v189 = v101;
  v190 = *(v65 + 48);
  v102 = *(v65 + 224);
  v185 = *(v65 + 208);
  v186 = v102;
  v187 = *(v65 + 240);
  v103 = *(v65 + 160);
  v181 = *(v65 + 144);
  v182 = v103;
  v104 = *(v65 + 192);
  v183 = *(v65 + 176);
  v184 = v104;
  v105 = *(v65 + 96);
  v177 = *(v65 + 80);
  v178 = v105;
  v106 = *(v65 + 128);
  v179 = *(v65 + 112);
  v180 = v106;
  v107 = *(v65 + 32);
  v173 = *(v65 + 16);
  v174 = v107;
  v108 = *(v65 + 64);
  v175 = *(v65 + 48);
  v176 = v108;
  swift_retain_n();

  swift_retain_n();
  sub_1D5EEBE38(&v188, v172);
  FormatRemoteVideo.bind(binder:context:)(v170, v203);
  if (!v4)
  {
    sub_1D5EEBE94(&v188);

    goto LABEL_57;
  }

  sub_1D5EEBE94(&v188);

LABEL_78:
}

uint64_t sub_1D6232A3C(uint64_t result, uint64_t a2, uint64_t a3, void (*a4)(__int128 *, __int128 *), uint64_t (*a5)(__int128 *))
{
  v45 = a4;
  v32 = *(a3 + 16);
  if (v32)
  {
    v7 = result;
    v8 = 0;
    v33 = a3 + 32;
    while (1)
    {
      v9 = (v33 + 168 * v8);
      v10 = v9[9];
      v42[4] = v9[8];
      v43 = v10;
      v44 = *(v9 + 160);
      v11 = v9[5];
      v42[0] = v9[4];
      v42[1] = v11;
      v12 = v9[7];
      v42[2] = v9[6];
      v42[3] = v12;
      v13 = v9[1];
      v38 = *v9;
      v39 = v13;
      v14 = v9[3];
      v40 = v9[2];
      v41 = v14;
      v15 = v13;
      if (v13)
      {
        v16 = *(v39 + 16);
        v45(&v38, &v35);
        if (v16)
        {
          v17 = (v15 + 40);
          do
          {
            if ((*v17 & 1) == 0)
            {
              *&v35 = *(v17 - 1);
              v18 = v35;
              swift_retain_n();
              FormatFloat.bind(binder:context:)(v7, a2);
              if (v5)
              {
                sub_1D62B72BC(v18, 0);
                goto LABEL_50;
              }

              sub_1D62B72BC(v18, 0);
            }

            v17 += 16;
            --v16;
          }

          while (v16);
        }
      }

      else
      {
        v45(&v38, &v35);
      }

      if ((~*(&v39 + 1) & 0xF000000000000007) != 0)
      {
        *&v35 = *(&v39 + 1);

        FormatBackground.bind(binder:context:)(v7, a2);
        if (v5)
        {
          goto LABEL_50;
        }
      }

      if (v40)
      {
        sub_1D620E744(v7, a2, v40);
        if (v5)
        {
          return a5(&v38);
        }
      }

      v19 = v43;
      if (v43 != 254)
      {
        break;
      }

LABEL_45:
      if ((~*(&v43 + 1) & 0xF000000000000007) != 0)
      {
        *&v35 = *(&v43 + 1);

        FormatColor.bind(binder:context:)(v7, a2);

        result = a5(&v38);
        if (v5)
        {
          return result;
        }
      }

      else
      {
        result = a5(&v38);
      }

      if (++v8 == v32)
      {
        return result;
      }
    }

    sub_1D62B5354(v42, &v35, &qword_1EDF33718, &type metadata for FormatShadow);

    FormatColor.bind(binder:context:)(v7, a2);
    if (v5)
    {
      sub_1D5D0ABCC(v42, &qword_1EDF33718, &type metadata for FormatShadow);
LABEL_50:

      return a5(&v38);
    }

    if (v19 <= 2)
    {
      if (!v19)
      {
        goto LABEL_32;
      }

      if (v19 == 1)
      {
        sub_1D5B49474(0, &qword_1EDF329A8);
        if (swift_dynamicCast())
        {
          v22 = *(&v36 + 1);
          v23 = v37;
          __swift_project_boxed_opaque_existential_1(&v35, *(&v36 + 1));
          (*(v23 + 8))(v7, a2, v22, v23);
          __swift_destroy_boxed_opaque_existential_1(&v35);
        }

        else
        {
          v37 = 0;
          v35 = 0u;
          v36 = 0u;
          sub_1D5BFB774(&v35, &qword_1EDF329A0, &qword_1EDF329A8);
        }

        if (swift_dynamicCast())
        {
LABEL_41:
          v30 = *(&v36 + 1);
          v31 = v37;
          __swift_project_boxed_opaque_existential_1(&v35, *(&v36 + 1));
          (*(v31 + 8))(v7, a2, v30, v31);
          sub_1D5D0ABCC(v42, &qword_1EDF33718, &type metadata for FormatShadow);
          __swift_destroy_boxed_opaque_existential_1(&v35);
          goto LABEL_45;
        }

        goto LABEL_44;
      }
    }

    else if (v19 > 4)
    {
      if (v19 != 5)
      {
LABEL_32:
        sub_1D5D0ABCC(v42, &qword_1EDF33718, &type metadata for FormatShadow);
        goto LABEL_45;
      }
    }

    else if (v19 != 3)
    {
      sub_1D5B49474(0, &qword_1EDF329A8);
      if (swift_dynamicCast())
      {
        v20 = *(&v36 + 1);
        v21 = v37;
        __swift_project_boxed_opaque_existential_1(&v35, *(&v36 + 1));
        (*(v21 + 8))(v7, a2, v20, v21);
        __swift_destroy_boxed_opaque_existential_1(&v35);
        goto LABEL_40;
      }

      goto LABEL_39;
    }

    sub_1D5B49474(0, &qword_1EDF329A8);
    if (swift_dynamicCast())
    {
      v24 = *(&v36 + 1);
      v25 = v37;
      __swift_project_boxed_opaque_existential_1(&v35, *(&v36 + 1));
      (*(v25 + 8))(v7, a2, v24, v25);
      __swift_destroy_boxed_opaque_existential_1(&v35);
    }

    else
    {
      v37 = 0;
      v35 = 0u;
      v36 = 0u;
      sub_1D5BFB774(&v35, &qword_1EDF329A0, &qword_1EDF329A8);
    }

    if (swift_dynamicCast())
    {
      v26 = *(&v36 + 1);
      v27 = v37;
      __swift_project_boxed_opaque_existential_1(&v35, *(&v36 + 1));
      (*(v27 + 8))(v7, a2, v26, v27);
      __swift_destroy_boxed_opaque_existential_1(&v35);
    }

    else
    {
      v37 = 0;
      v35 = 0u;
      v36 = 0u;
      sub_1D5BFB774(&v35, &qword_1EDF329A0, &qword_1EDF329A8);
    }

    if (swift_dynamicCast())
    {
      v28 = *(&v36 + 1);
      v29 = v37;
      __swift_project_boxed_opaque_existential_1(&v35, *(&v36 + 1));
      (*(v29 + 8))(v7, a2, v28, v29);
      __swift_destroy_boxed_opaque_existential_1(&v35);
      goto LABEL_40;
    }

LABEL_39:
    v37 = 0;
    v35 = 0u;
    v36 = 0u;
    sub_1D5BFB774(&v35, &qword_1EDF329A0, &qword_1EDF329A8);
LABEL_40:
    if (swift_dynamicCast())
    {
      goto LABEL_41;
    }

LABEL_44:
    sub_1D5D0ABCC(v42, &qword_1EDF33718, &type metadata for FormatShadow);
    v35 = 0u;
    v36 = 0u;
    v37 = 0;
    sub_1D5BFB774(&v35, &qword_1EDF329A0, &qword_1EDF329A8);
    goto LABEL_45;
  }

  return result;
}

uint64_t sub_1D6233270(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = result;
    for (i = (a3 + 32); ; i += 13)
    {
      v8 = i[9];
      v9 = i[11];
      v55 = i[10];
      v56 = v9;
      v10 = i[11];
      v57 = i[12];
      v11 = i[5];
      v12 = i[7];
      v51 = i[6];
      v52 = v12;
      v13 = i[7];
      v14 = i[9];
      v53 = i[8];
      v54 = v14;
      v15 = i[1];
      v16 = i[3];
      v47 = i[2];
      v48 = v16;
      v17 = i[3];
      v18 = i[5];
      v49 = i[4];
      v50 = v18;
      v19 = i[1];
      v46[0] = *i;
      v46[1] = v19;
      v43 = v55;
      v44 = v10;
      v45 = i[12];
      v39 = v51;
      v40 = v13;
      v41 = v53;
      v42 = v8;
      v35 = v47;
      v36 = v17;
      v37 = v49;
      v38 = v11;
      v33 = v46[0];
      v34 = v15;
      sub_1D5D0B3B8(v46, &v20);
      FormatLayeredMediaNodeStyle.Selector.bind(binder:context:)(v6, a2);
      if (v3)
      {
        break;
      }

      v30 = v43;
      v31 = v44;
      v32 = v45;
      v26 = v39;
      v27 = v40;
      v28 = v41;
      v29 = v42;
      v22 = v35;
      v23 = v36;
      v24 = v37;
      v25 = v38;
      v20 = v33;
      v21 = v34;
      result = sub_1D5D0B670(&v20);
      if (!--v4)
      {
        return result;
      }
    }

    v30 = v43;
    v31 = v44;
    v32 = v45;
    v26 = v39;
    v27 = v40;
    v28 = v41;
    v29 = v42;
    v22 = v35;
    v23 = v36;
    v24 = v37;
    v25 = v38;
    v20 = v33;
    v21 = v34;
    return sub_1D5D0B670(&v20);
  }

  return result;
}

uint64_t sub_1D62333F0(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = result;
    for (i = a3 + 32; ; i += 216)
    {
      v8 = *(i + 176);
      v9 = *(i + 144);
      v57 = *(i + 160);
      v58 = v8;
      v10 = *(i + 176);
      v59 = *(i + 192);
      v11 = *(i + 112);
      v12 = *(i + 80);
      v53 = *(i + 96);
      v54 = v11;
      v13 = *(i + 112);
      v14 = *(i + 144);
      v55 = *(i + 128);
      v56 = v14;
      v15 = *(i + 48);
      v16 = *(i + 16);
      v49 = *(i + 32);
      v50 = v15;
      v17 = *(i + 48);
      v18 = *(i + 80);
      v51 = *(i + 64);
      v52 = v18;
      v19 = *(i + 16);
      v48[0] = *i;
      v48[1] = v19;
      v44 = v57;
      v45 = v10;
      v46 = *(i + 192);
      v40 = v53;
      v41 = v13;
      v42 = v55;
      v43 = v9;
      v36 = v49;
      v37 = v17;
      v38 = v51;
      v39 = v12;
      v60 = *(i + 208);
      v47 = *(i + 208);
      v34 = v48[0];
      v35 = v16;
      sub_1D5D0B0E4(v48, &v20);
      FormatImageNodeStyle.Selector.bind(binder:context:)(v6, a2);
      if (v3)
      {
        break;
      }

      v30 = v44;
      v31 = v45;
      v32 = v46;
      v33 = v47;
      v26 = v40;
      v27 = v41;
      v28 = v42;
      v29 = v43;
      v22 = v36;
      v23 = v37;
      v24 = v38;
      v25 = v39;
      v20 = v34;
      v21 = v35;
      result = sub_1D5D0B1AC(&v20);
      if (!--v4)
      {
        return result;
      }
    }

    v30 = v44;
    v31 = v45;
    v32 = v46;
    v33 = v47;
    v26 = v40;
    v27 = v41;
    v28 = v42;
    v29 = v43;
    v22 = v36;
    v23 = v37;
    v24 = v38;
    v25 = v39;
    v20 = v34;
    v21 = v35;
    return sub_1D5D0B1AC(&v20);
  }

  return result;
}

uint64_t sub_1D6233590(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = result;
    for (i = a3 + 56; ; i += 32)
    {

      swift_retain_n();

      FormatTextContent.bind(binder:context:)(v6, a2);
      if (v3)
      {
        break;
      }

      FormatTextNodeAlternativeLogic.bind(binder:context:)(v6, a2);

      if (!--v4)
      {
        return result;
      }
    }
  }

  return result;
}

void sub_1D62336A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v483 = type metadata accessor for FormatOption();
  v6 = *(v483 - 8);
  MEMORY[0x1EEE9AC00](v483, v7);
  v9 = (&v459 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10, v11);
  v479 = (&v459 - v12);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = (&v459 - v15);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v459 - v19;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = (&v459 - v23);
  sub_1D5B54684(0, &qword_1EDF337F0, type metadata accessor for FormatOption);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  MEMORY[0x1EEE9AC00](v27, v28);
  v477 = &v459 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v475 = &v459 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v474 = &v459 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v473 = &v459 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v472 = &v459 - v41;
  MEMORY[0x1EEE9AC00](v42, v43);
  v478 = &v459 - v44;
  MEMORY[0x1EEE9AC00](v45, v46);
  v476 = &v459 - v47;
  MEMORY[0x1EEE9AC00](v48, v49);
  v480 = &v459 - v50;
  MEMORY[0x1EEE9AC00](v51, v52);
  if (!*(a3 + 16))
  {
    return;
  }

  v55 = *(a3 + 16);
  v468 = &v459 - v53;
  v465 = v20;
  v463 = v16;
  v464 = v9;
  v471 = OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_options;
  v470 = (v6 + 48);
  v469 = (v6 + 56);
  v56 = (a3 + 48);
  v467 = v24;
  v491 = a2;
  v492 = a1;
  v466 = v54;
  v57 = v55;
  while (1)
  {
    v59 = *(v56 - 1);
    v58 = *v56;
    v60 = *v56 >> 62;
    if (v60)
    {
      break;
    }

    v75 = *(v58 + 16);
    if ((v75 >> 62) < 2)
    {
      goto LABEL_4;
    }

    if (v75 >> 62 != 2)
    {
      v123 = *((v75 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v122 = *((v75 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      if ((v123 >> 62) > 1)
      {
        v489 = v56;
        v490 = v59;
        v487 = v123;
        v488 = v57;
        if (v123 >> 62 == 2)
        {
          v124 = v123 & 0x3FFFFFFFFFFFFFFFLL;
          v125 = *((v123 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
          v126 = *((v123 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
          v127 = *((v123 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
          v128 = *(v124 + 40);
          v494 = v125;
          v495 = v126;
          v496 = v127;
          v497 = v128;
          swift_retain_n();

          swift_retain_n();

          sub_1D5D27950(v125, v126, v127, v128);
          v129 = v493;
          sub_1D6089844(v491);
          v493 = v129;
          if (v129)
          {

            sub_1D5D28C84(v125, v126, v127, v128);

            goto LABEL_383;
          }

          sub_1D5D28C84(v125, v126, v127, v128);

          a2 = v491;
          v57 = v488;
          v56 = v489;
        }

        else
        {
          v170 = *((v123 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
          v494 = *((v123 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          v171 = v491;
          v172 = v492;
          v173 = v493;
          FormatURL.bind(binder:context:)(v492, v491);
          v159 = v173;
          if (v173)
          {

            goto LABEL_328;
          }

          sub_1D620FAB4(v172, v171, v170);
          v493 = 0;

          swift_bridgeObjectRelease_n();

          v56 = v489;
          a2 = v491;
          v57 = v488;
        }
      }

      else
      {

        swift_retain_n();
      }

      v174 = v493;
      sub_1D620FAB4(v492, a2, v122);
      v493 = v174;
      if (v174)
      {

        swift_bridgeObjectRelease_n();
LABEL_289:

        goto LABEL_384;
      }

      swift_bridgeObjectRelease_n();

      goto LABEL_3;
    }

    v76 = v75 & 0x3FFFFFFFFFFFFFFFLL;
    if (!*((v75 & 0x3FFFFFFFFFFFFFFFLL) + 0x28))
    {
      v77 = v57;
      v78 = a2;
      v489 = v56;
      v79 = v59;
      v81 = *((v75 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v80 = *((v75 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v82 = *((v75 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      v494 = v81;
      v495 = v80;
      v496 = v82;
      v498 = 6;
      sub_1D5D27950(v81, v80, v82, 0);
      sub_1D5D27950(v81, v80, v82, 0);
      swift_retain_n();

      v83 = v79;

      v84 = v493;
      v85 = sub_1D703E0C8(&v494, &v498);
      v493 = v84;
      if (v84)
      {
        sub_1D5D28C84(v81, v80, v82, 0);
LABEL_320:

        return;
      }

      v86 = v85;
      v486 = v82;
      v487 = v76;
      v488 = v77;
      v87 = v480;
      FormatOptionCollection.subscript.getter(v81, v80, v480);
      if ((*v470)(v87, 1, v483) == 1)
      {

        sub_1D5B6EF64(v87, &qword_1EDF337F0, type metadata accessor for FormatOption);
        if (*(v78 + 48) != 1)
        {
          type metadata accessor for FormatLayoutError();
          sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
          v493 = swift_allocError();
          *v420 = v81;
          v420[1] = v80;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();

          sub_1D5D28C84(v81, v80, v486, 0);
          goto LABEL_320;
        }

        sub_1D5D28C84(v81, v80, v486, 0);

        v88 = v468;
        (*v469)(v468, 1, 1, v483);
        sub_1D5B6EF64(v88, &qword_1EDF337F0, type metadata accessor for FormatOption);

        v57 = v488;
        v56 = v489;
        a2 = v78;
      }

      else
      {
        v191 = v87;
        v192 = v467;
        sub_1D5D5E33C(v191, v467, type metadata accessor for FormatOption);
        v494 = v192[2];

        FormatOptionValue.type.getter(&v498);
        if ((sub_1D6183C84(v498, v86) & 1) == 0)
        {
          type metadata accessor for FormatDerivedDataError();
          sub_1D5B57348(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError);
          v421 = swift_allocError();
          v490 = v83;
          v423 = v422;
          v424 = v192[1];
          v492 = *v192;
          v493 = v421;
          v494 = v192[2];

          FormatOptionValue.type.getter(&v498);
          v425 = v498;
          *v423 = v492;
          *(v423 + 8) = v424;
          *(v423 + 16) = v425;
          *(v423 + 24) = v86;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();

          sub_1D5D28C84(v81, v80, v486, 0);

          sub_1D62B51D0(v192, type metadata accessor for FormatOption);

          goto LABEL_384;
        }

        sub_1D5D28C84(v81, v80, v486, 0);

        v193 = v468;
        sub_1D5D5E33C(v192, v468, type metadata accessor for FormatOption);
        (*v469)(v193, 0, 1, v483);
        sub_1D5B6EF64(v193, &qword_1EDF337F0, type metadata accessor for FormatOption);

        a2 = v491;
        v57 = v488;
        v56 = v489;
      }
    }

LABEL_4:
    v56 += 3;
    if (!--v57)
    {
      return;
    }
  }

  if (v60 != 1)
  {
    v89 = v58 & 0x3FFFFFFFFFFFFFFFLL;
    v90 = *((v58 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v91 = *(v89 + 24);
    if (v90 >> 62)
    {
      v490 = *(v56 - 1);
      if (v90 >> 62 == 1)
      {
        v93 = *((v90 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v92 = *((v90 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        v485 = v90 & 0x3FFFFFFFFFFFFFFFLL;
        v486 = v91;
        v487 = v90;
        v488 = v57;
        v482 = v93;
        if (v93 >> 62)
        {
          v481 = v92;
          if (v93 >> 62 == 1)
          {
            v94 = v93 & 0x3FFFFFFFFFFFFFFFLL;
            v96 = *((v93 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
            v95 = *((v93 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
            v462 = v96;
            v461 = v95;
            if (v96 >> 62)
            {
              v489 = v56;
              v97 = v492;
              if (v96 >> 62 == 1)
              {
                v98 = v96 & 0x3FFFFFFFFFFFFFFFLL;
                v99 = *(v98 + 24);
                v494 = *(v98 + 16);
                v459 = v95 & 0x3FFFFFFFFFFFFFFFLL;

                swift_retain_n();

                swift_retain_n();
                swift_retain_n();
                v100 = v91;

                swift_retain_n();

                v460 = v98;
                swift_retain_n();

                v101 = v491;
                v102 = v493;
                FormatMicaNodeContent.bind(binder:context:)(v97, v491);
                v493 = v102;
                if (v102 || (, v494 = v99, , v103 = v493, FormatMicaNodeContent.bind(binder:context:)(v97, v101), (v493 = v103) != 0))
                {

                  goto LABEL_383;
                }

                v57 = v488;
                v56 = v489;
                v91 = v100;
              }

              else
              {
                v232 = *((v96 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
                v494 = *((v96 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
                v459 = v494;
                swift_retain_n();

                v233 = v89;
                swift_retain_n();
                swift_retain_n();

                v460 = v94;
                swift_retain_n();

                swift_retain_n();

                v234 = v97;
                v235 = v97;
                v236 = v491;
                v237 = v493;
                FormatMicaNodeContent.bind(binder:context:)(v234, v491);
                v493 = v237;
                if (v237)
                {

                  goto LABEL_373;
                }

                v238 = v493;
                sub_1D62336A0(v235, v236, v232);
                v493 = v238;
                if (v238)
                {

                  swift_bridgeObjectRelease_n();
                  goto LABEL_384;
                }

                swift_bridgeObjectRelease_n();
                v57 = v488;
                v56 = v489;
                v97 = v492;
                v89 = v233;
                v91 = v486;
              }
            }

            else
            {
              v494 = *(v96 + 16);
              v228 = v95 & 0x3FFFFFFFFFFFFFFFLL;

              swift_retain_n();
              swift_retain_n();

              v460 = v93 & 0x3FFFFFFFFFFFFFFFLL;
              swift_retain_n();

              swift_retain_n();
              v459 = v228;

              v97 = v492;
              v229 = v493;
              FormatMicaNodeArchive.bind(binder:context:)(v492, v491);
              v493 = v229;
              if (v229)
              {

                goto LABEL_373;
              }

              v91 = v486;
            }

            v494 = v461;

            v239 = v493;
            FormatMicaNodeContent.bind(binder:context:)(v97, v491);
            v493 = v239;
            if (v239)
            {

              goto LABEL_384;
            }

            a2 = v491;
          }

          else
          {
            v145 = *((v93 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
            v494 = *((v93 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
            swift_retain_n();

            v146 = v89;
            swift_retain_n();
            swift_retain_n();

            swift_retain_n();

            v148 = v492;
            v147 = v493;
            FormatMicaNodeContent.bind(binder:context:)(v492, a2);
            v493 = v147;
            if (v147)
            {

LABEL_344:

LABEL_345:

              goto LABEL_373;
            }

            v149 = v493;
            sub_1D62336A0(v148, a2, v145);
            v493 = v149;
            if (v149)
            {

              goto LABEL_276;
            }

            swift_bridgeObjectRelease_n();
            v57 = v488;
            v89 = v146;
            v91 = v486;
          }
        }

        else
        {
          v141 = *(v93 + 16);
          if ((v141 >> 62) <= 1)
          {

            swift_retain_n();
            swift_retain_n();

            v142 = v92 >> 62;
            if (v92 >> 62)
            {
LABEL_175:
              v484 = v89;
              if (v142 == 1)
              {
                v267 = *((v92 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
                v494 = *((v92 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);

                swift_retain_n();

                v269 = v492;
                v268 = v493;
                FormatMicaNodeContent.bind(binder:context:)(v492, a2);
                v493 = v268;
                if (v268 || (, v494 = v267, , v270 = v493, FormatMicaNodeContent.bind(binder:context:)(v269, a2), (v493 = v270) != 0))
                {

                  goto LABEL_383;
                }
              }

              else
              {
                v271 = *((v92 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
                v494 = *((v92 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
                swift_retain_n();

                v273 = v492;
                v272 = v493;
                FormatMicaNodeContent.bind(binder:context:)(v492, a2);
                v493 = v272;
                if (v272)
                {

                  goto LABEL_289;
                }

                v274 = v493;
                sub_1D62336A0(v273, a2, v271);
                v493 = v274;
                if (v274)
                {

                  swift_bridgeObjectRelease_n();

                  goto LABEL_384;
                }

                swift_bridgeObjectRelease_n();
              }

              v57 = v488;
              goto LABEL_183;
            }

LABEL_71:
            v494 = *(v92 + 16);

            v143 = v493;
            FormatMicaNodeArchive.bind(binder:context:)(v492, a2);
            v493 = v143;
            if (v143)
            {

              goto LABEL_384;
            }

            goto LABEL_184;
          }

          v484 = v89;
          v481 = v92;
          if (v141 >> 62 == 2)
          {
            v489 = v56;
            v176 = *((v141 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
            v177 = *((v141 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
            v178 = *((v141 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
            v494 = *((v141 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
            v175 = v494;
            v495 = v176;
            v496 = v177;
            v497 = v178;

            swift_retain_n();

            swift_retain_n();
            swift_retain_n();

            sub_1D5D27950(v175, v176, v177, v178);
            v179 = v493;
            sub_1D6089844(a2);
            v493 = v179;
            if (v179)
            {

              sub_1D5D28C84(v175, v176, v177, v178);

              goto LABEL_383;
            }

            sub_1D5D28C84(v175, v176, v177, v178);

            v56 = v489;
            v57 = v488;
          }

          else
          {
            v263 = *((v141 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
            v494 = *((v141 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
            swift_retain_n();

            swift_retain_n();
            swift_retain_n();

            swift_retain_n();

            v265 = v492;
            v264 = v493;
            FormatURL.bind(binder:context:)(v492, a2);
            v493 = v264;
            if (v264)
            {

              goto LABEL_344;
            }

            v266 = v493;
            sub_1D620FAB4(v265, a2, v263);
            v493 = v266;
            if (v266)
            {

              swift_bridgeObjectRelease_n();

              goto LABEL_373;
            }

            swift_bridgeObjectRelease_n();

            v57 = v488;
          }

          v89 = v484;
          v91 = v486;
        }

        v92 = v481;
        v142 = v481 >> 62;
        if (v481 >> 62)
        {
          goto LABEL_175;
        }

        goto LABEL_71;
      }

      v116 = *((v90 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v117 = *((v90 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v482 = v116;
      if (v116 >> 62)
      {
        v485 = v117;
        v487 = v90;
        v489 = v56;
        v118 = v493;
        v481 = v90 & 0x3FFFFFFFFFFFFFFFLL;
        if (v116 >> 62 != 1)
        {
          v155 = *((v116 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
          v494 = *((v116 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
          swift_retain_n();

          swift_retain_n();
          swift_retain_n();
          v156 = v91;

          swift_retain_n();

          v157 = v491;
          v158 = v492;
          FormatMicaNodeContent.bind(binder:context:)(v492, v491);
          v159 = v118;
          if (v118)
          {

LABEL_327:

LABEL_328:

LABEL_329:

            v493 = v159;
            return;
          }

          sub_1D62336A0(v158, v157, v155);
          v493 = 0;

          swift_bridgeObjectRelease_n();
          v56 = v489;
          v91 = v156;
          a2 = v491;
          goto LABEL_110;
        }

        v488 = v57;
        v119 = *((v116 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        v494 = *((v116 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);

        swift_retain_n();
        v120 = v491;
        v121 = v492;

        swift_retain_n();
        swift_retain_n();
        v486 = v91;

        swift_retain_n();

        FormatMicaNodeContent.bind(binder:context:)(v121, v120);
        if (v118)
        {

          v493 = v118;
          goto LABEL_383;
        }

        v494 = v119;

        FormatMicaNodeContent.bind(binder:context:)(v121, v120);

        v493 = 0;
        a2 = v491;
        v57 = v488;
        v56 = v489;
      }

      else
      {
        v154 = *(v116 + 16);
        if ((v154 >> 62) <= 1)
        {

          swift_retain_n();
          swift_retain_n();

LABEL_111:

          v190 = v493;
          sub_1D62336A0(v492, a2, v117);
          v493 = v190;
          if (v190)
          {

            swift_bridgeObjectRelease_n();
            goto LABEL_384;
          }

          swift_bridgeObjectRelease_n();

          goto LABEL_184;
        }

        v485 = v117;
        v486 = v91;
        v489 = v56;
        if (v154 >> 62 == 2)
        {
          v185 = *((v154 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
          v184 = *((v154 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
          v186 = *((v154 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
          LODWORD(v459) = *((v154 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
          v494 = v185;
          v495 = v184;
          v496 = v186;
          v497 = v459;
          swift_retain_n();

          swift_retain_n();
          swift_retain_n();

          v460 = v185;
          v461 = v184;
          v462 = v186;
          v187 = v186;
          v188 = v459;
          sub_1D5D27950(v185, v184, v187, v459);
          v189 = v493;
          sub_1D6089844(a2);
          v493 = v189;
          if (v189)
          {

            sub_1D5D28C84(v460, v461, v462, v188);

            goto LABEL_382;
          }

          sub_1D5D28C84(v460, v461, v462, v188);

          v56 = v489;
          v91 = v486;
          goto LABEL_110;
        }

        v487 = v90;
        v488 = v57;
        v280 = *((v154 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        v494 = *((v154 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        swift_retain_n();

        swift_retain_n();
        v481 = v90 & 0x3FFFFFFFFFFFFFFFLL;
        swift_retain_n();

        swift_retain_n();

        v282 = v492;
        v281 = v493;
        FormatURL.bind(binder:context:)(v492, a2);
        v159 = v281;
        if (v281)
        {

          goto LABEL_329;
        }

        sub_1D620FAB4(v282, a2, v280);
        v493 = 0;

        swift_bridgeObjectRelease_n();

        v56 = v489;
        v57 = v488;
      }

      v91 = v486;
LABEL_110:
      v117 = v485;
      goto LABEL_111;
    }

    v115 = *(v90 + 16);
    if ((v115 >> 62) <= 1)
    {
LABEL_42:

      swift_retain_n();
LABEL_184:

      v275 = v493;
      sub_1D62336A0(v492, a2, v91);
      v493 = v275;
      if (v275)
      {

LABEL_276:
        swift_bridgeObjectRelease_n();
        goto LABEL_384;
      }

      swift_bridgeObjectRelease_n();
LABEL_3:

      goto LABEL_4;
    }

    if (v115 >> 62 == 2)
    {
      if (*((v115 & 0x3FFFFFFFFFFFFFFFLL) + 0x28))
      {
        goto LABEL_42;
      }

      v487 = v90;
      v375 = v89;
      v376 = v57;
      v489 = v56;
      v377 = v91;
      v378 = *((v115 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v379 = *((v115 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v380 = *((v115 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      v494 = v378;
      v495 = v379;
      v496 = v380;
      v498 = 6;
      sub_1D5D27950(v378, v379, v380, 0);

      v486 = v377;

      v484 = v375;
      swift_retain_n();
      sub_1D5D27950(v378, v379, v380, 0);

      v381 = v493;
      v382 = sub_1D703E0C8(&v494, &v498);
      v493 = v381;
      if (v381)
      {
        sub_1D5D28C84(v378, v379, v380, 0);

        goto LABEL_345;
      }

      v383 = v382;
      v490 = v59;
      v384 = v466;
      FormatOptionCollection.subscript.getter(v378, v379, v466);
      if ((*v470)(v384, 1, v483) == 1)
      {

        sub_1D5B6EF64(v384, &qword_1EDF337F0, type metadata accessor for FormatOption);
        if ((*(a2 + 48) & 1) == 0)
        {
          type metadata accessor for FormatLayoutError();
          sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
          v436 = swift_allocError();
          *v437 = v378;
          v437[1] = v379;
          swift_storeEnumTagMultiPayload();
          v493 = v436;
          swift_willThrow();

          sub_1D5D28C84(v378, v379, v380, 0);
LABEL_315:

LABEL_373:

          return;
        }

        sub_1D5D28C84(v378, v379, v380, 0);
        v385 = v477;
        (*v469)(v477, 1, 1, v483);
        sub_1D5B6EF64(v385, &qword_1EDF337F0, type metadata accessor for FormatOption);

        v56 = v489;
      }

      else
      {
        v485 = v380;
        v403 = v464;
        sub_1D5D5E33C(v384, v464, type metadata accessor for FormatOption);
        v494 = v403[2];

        FormatOptionValue.type.getter(&v498);
        if ((sub_1D6183C84(v498, v383) & 1) == 0)
        {
          v493 = type metadata accessor for FormatDerivedDataError();
          sub_1D5B57348(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError);
          v438 = swift_allocError();
          v440 = v439;
          v441 = v403[1];
          v492 = *v403;
          v494 = v403[2];

          FormatOptionValue.type.getter(&v498);
          v442 = v498;
          *v440 = v492;
          *(v440 + 8) = v441;
          *(v440 + 16) = v442;
          *(v440 + 24) = v383;
          swift_storeEnumTagMultiPayload();
          v493 = v438;
          swift_willThrow();

          sub_1D5D28C84(v378, v379, v485, 0);

          sub_1D62B51D0(v403, type metadata accessor for FormatOption);

          goto LABEL_383;
        }

        sub_1D5D28C84(v378, v379, v485, 0);

        v404 = v477;
        sub_1D5D5E33C(v403, v477, type metadata accessor for FormatOption);
        (*v469)(v404, 0, 1, v483);
        sub_1D5B6EF64(v404, &qword_1EDF337F0, type metadata accessor for FormatOption);

        v56 = v489;
        a2 = v491;
      }

      v57 = v376;
    }

    else
    {
      v162 = *(v89 + 24);
      v163 = *((v115 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v494 = *((v115 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      swift_retain_n();

      v490 = v59;

      v484 = v89;
      swift_retain_n();
      v487 = v90;
      swift_retain_n();
      v486 = v162;

      v165 = v492;
      v164 = v493;
      FormatURL.bind(binder:context:)(v492, a2);
      v493 = v164;
      if (v164)
      {

        goto LABEL_373;
      }

      v166 = v493;
      sub_1D620FAB4(v165, a2, v163);
      v493 = v166;
      if (v166)
      {

        swift_bridgeObjectRelease_n();
        goto LABEL_315;
      }

      swift_bridgeObjectRelease_n();
    }

LABEL_183:
    v91 = v486;
    goto LABEL_184;
  }

  v62 = *((v58 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v61 = *((v58 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
  v486 = v62;
  v487 = v58 & 0x3FFFFFFFFFFFFFFFLL;
  v489 = v56;
  v490 = v59;
  if (!(v62 >> 62))
  {
    v104 = *(v62 + 16);
    v105 = v492;
    if ((v104 >> 62) > 1)
    {
      if (v104 >> 62 != 2)
      {
        v485 = v61;
        v161 = *((v104 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v160 = *((v104 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        v484 = v104 & 0x3FFFFFFFFFFFFFFFLL;
        if ((v161 >> 62) > 1)
        {
          v488 = v57;
          v482 = v161;
          if (v161 >> 62 == 2)
          {
            v194 = v161 & 0x3FFFFFFFFFFFFFFFLL;
            v195 = *((v161 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
            v196 = *((v161 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
            v197 = *(v194 + 32);
            v198 = *(v194 + 40);
            v494 = v195;
            v495 = v196;
            v496 = v197;
            v497 = v198;

            swift_retain_n();

            swift_retain_n();

            swift_retain_n();
            sub_1D5D27950(v195, v196, v197, v198);
            v199 = v493;
            sub_1D6089844(v491);
            v493 = v199;
            if (v199)
            {

              sub_1D5D28C84(v195, v196, v197, v198);

              goto LABEL_383;
            }

            sub_1D5D28C84(v195, v196, v197, v198);

            v56 = v489;
            v105 = v492;
            v57 = v488;
          }

          else
          {
            v283 = v161 & 0x3FFFFFFFFFFFFFFFLL;
            v284 = *(v283 + 24);
            v494 = *(v283 + 16);
            swift_retain_n();

            swift_retain_n();
            swift_retain_n();

            swift_retain_n();

            v285 = v105;
            v286 = v491;
            v287 = v105;
            v288 = v493;
            FormatURL.bind(binder:context:)(v285, v491);
            if (v288)
            {

              goto LABEL_365;
            }

            sub_1D620FAB4(v287, v286, v284);

            swift_bridgeObjectRelease_n();
            v493 = 0;
            v56 = v489;
            v57 = v488;
            v105 = v287;
          }
        }

        else
        {

          swift_retain_n();
          swift_retain_n();
        }

        v279 = v105;
        v289 = v105;
        v290 = v493;
        sub_1D620FAB4(v289, v491, v160);
        v493 = v290;
        if (v290)
        {

          swift_bridgeObjectRelease_n();

          goto LABEL_384;
        }

        swift_bridgeObjectRelease_n();

        v61 = v485;
        goto LABEL_196;
      }

      if (!*((v104 & 0x3FFFFFFFFFFFFFFFLL) + 0x28))
      {
        v488 = v57;
        v366 = *((v104 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v365 = *((v104 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        v367 = v61;
        v368 = *((v104 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
        v494 = v366;
        v495 = v365;
        v496 = v368;
        v498 = 6;
        sub_1D5D27950(v366, v365, v368, 0);
        v485 = v367;

        swift_retain_n();

        sub_1D5D27950(v366, v365, v368, 0);

        v369 = v493;
        v370 = sub_1D703E0C8(&v494, &v498);
        v493 = v369;
        if (v369)
        {
          sub_1D5D28C84(v366, v365, v368, 0);
        }

        else
        {
          v371 = v370;
          v372 = v491;
          v373 = v478;
          FormatOptionCollection.subscript.getter(v366, v365, v478);
          if ((*v470)(v373, 1, v483) != 1)
          {
            v397 = v373;
            v398 = v465;
            sub_1D5D5E33C(v397, v465, type metadata accessor for FormatOption);
            v494 = v398[2];

            FormatOptionValue.type.getter(&v498);
            v399 = sub_1D6183C84(v498, v371);
            v400 = v492;
            if ((v399 & 1) == 0)
            {
              v492 = type metadata accessor for FormatDerivedDataError();
              sub_1D5B57348(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError);
              v427 = swift_allocError();
              v429 = v428;
              v430 = v398;
              v431 = *v398;
              v433 = v430[1];
              v432 = v430[2];
              v493 = v427;
              v494 = v432;

              FormatOptionValue.type.getter(&v498);
              v434 = v498;
              *v429 = v431;
              *(v429 + 8) = v433;
              *(v429 + 16) = v434;
              *(v429 + 24) = v371;
              swift_storeEnumTagMultiPayload();
              swift_willThrow();

              sub_1D5D28C84(v366, v365, v368, 0);

              v435 = v465;
              goto LABEL_381;
            }

            sub_1D5D28C84(v366, v365, v368, 0);

            v401 = v398;
            v402 = v476;
            sub_1D5D5E33C(v401, v476, type metadata accessor for FormatOption);
            (*v469)(v402, 0, 1, v483);
            sub_1D5B6EF64(v402, &qword_1EDF337F0, type metadata accessor for FormatOption);

            v105 = v400;
            v56 = v489;
LABEL_132:
            v57 = v488;
            goto LABEL_136;
          }

          sub_1D5B6EF64(v373, &qword_1EDF337F0, type metadata accessor for FormatOption);
          if (*(v372 + 48))
          {
            sub_1D5D28C84(v366, v365, v368, 0);
            v374 = v476;
            (*v469)(v476, 1, 1, v483);
            sub_1D5B6EF64(v374, &qword_1EDF337F0, type metadata accessor for FormatOption);

            v56 = v489;
            v105 = v492;
            goto LABEL_132;
          }

          type metadata accessor for FormatLayoutError();
          sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
          v493 = swift_allocError();
          *v426 = v366;
          v426[1] = v365;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();

          sub_1D5D28C84(v366, v365, v368, 0);
        }

        goto LABEL_373;
      }
    }

    swift_retain_n();

    v106 = v61 >> 62;
    if (!(v61 >> 62))
    {
      goto LABEL_33;
    }

    goto LABEL_197;
  }

  v63 = v492;
  if (v62 >> 62 != 1)
  {
    v108 = v493;
    v109 = *((v62 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v484 = *((v62 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    v481 = v109;
    v482 = v62 & 0x3FFFFFFFFFFFFFFFLL;
    if (v109 >> 62)
    {
      if (v109 >> 62 != 1)
      {
        v150 = *((v109 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v462 = *((v109 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        v461 = v150;
        if (v150 >> 62)
        {
          v488 = v57;
          v485 = v61;
          v460 = v109 & 0x3FFFFFFFFFFFFFFFLL;
          if (v150 >> 62 == 1)
          {
            v151 = *((v150 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
            v494 = *((v150 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);

            swift_retain_n();

            swift_retain_n();
            swift_retain_n();

            swift_retain_n();

            swift_retain_n();

            v152 = v491;
            v153 = v492;
            FormatMicaNodeContent.bind(binder:context:)(v492, v491);
            if (v108)
            {

              v493 = v108;

              goto LABEL_383;
            }

            v494 = v151;

            FormatMicaNodeContent.bind(binder:context:)(v153, v152);
          }

          else
          {
            v254 = *((v150 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
            v494 = *((v150 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
            swift_retain_n();

            swift_retain_n();
            swift_retain_n();

            swift_retain_n();

            swift_retain_n();

            v255 = v491;
            v256 = v492;
            FormatMicaNodeContent.bind(binder:context:)(v492, v491);
            if (v108)
            {

              goto LABEL_355;
            }

            sub_1D62336A0(v256, v255, v254);

            swift_bridgeObjectRelease_n();
          }

          v253 = v491;
          v57 = v488;
          v56 = v489;
          v61 = v485;
        }

        else
        {
          v494 = *(v150 + 16);

          swift_retain_n();
          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          FormatMicaNodeArchive.bind(binder:context:)(v492, v491);
          if (v108)
          {
            goto LABEL_331;
          }

          v253 = v491;
        }

        v257 = v462;

        sub_1D62336A0(v492, v253, v257);

        swift_bridgeObjectRelease_n();

        v63 = v492;
        goto LABEL_188;
      }

      v462 = v109 & 0x3FFFFFFFFFFFFFFFLL;
      v111 = *((v109 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v110 = *((v109 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v461 = v111;
      v460 = v110;
      if (v111 >> 62)
      {
        v485 = v61;
        v488 = v57;
        if (v111 >> 62 == 1)
        {
          v112 = *((v111 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
          v494 = *((v111 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);

          swift_retain_n();

          swift_retain_n();
          swift_retain_n();

          swift_retain_n();

          v459 = v111 & 0x3FFFFFFFFFFFFFFFLL;
          swift_retain_n();

          v114 = v491;
          v113 = v492;
          FormatMicaNodeContent.bind(binder:context:)(v492, v491);
          if (v108)
          {

            v493 = v108;

            goto LABEL_382;
          }

          v494 = v112;

          FormatMicaNodeContent.bind(binder:context:)(v113, v114);

          goto LABEL_151;
        }

        v240 = *((v111 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        v494 = *((v111 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        swift_retain_n();

        swift_retain_n();
        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        v242 = v491;
        v241 = v492;
        FormatMicaNodeContent.bind(binder:context:)(v492, v491);
        if (!v108)
        {

          sub_1D62336A0(v241, v242, v240);

          swift_bridgeObjectRelease_n();
LABEL_151:
          v230 = v491;
          v57 = v488;
          v56 = v489;
          v61 = v485;
          goto LABEL_152;
        }
      }

      else
      {
        v494 = *(v111 + 16);
        v459 = v110 & 0x3FFFFFFFFFFFFFFFLL;

        swift_retain_n();
        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        FormatMicaNodeArchive.bind(binder:context:)(v492, v491);
        if (!v108)
        {

          v230 = v491;
LABEL_152:
          v494 = v460;

          FormatMicaNodeContent.bind(binder:context:)(v492, v230);

          v63 = v492;
          goto LABEL_188;
        }
      }
    }

    else
    {
      v144 = *(v109 + 16);
      if ((v144 >> 62) <= 1)
      {

        swift_retain_n();
        swift_retain_n();

LABEL_188:
        v278 = v484;

        v279 = v63;
        sub_1D62336A0(v63, v491, v278);
        v493 = v108;
        if (v108)
        {

          swift_bridgeObjectRelease_n();

          goto LABEL_384;
        }

        swift_bridgeObjectRelease_n();

LABEL_196:
        v105 = v279;
        v106 = v61 >> 62;
        if (!(v61 >> 62))
        {
          goto LABEL_33;
        }

        goto LABEL_197;
      }

      v485 = v61;
      v488 = v57;
      if (v144 >> 62 == 2)
      {
        v181 = *((v144 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        v182 = *((v144 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
        v183 = *((v144 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
        v494 = *((v144 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v180 = v494;
        v495 = v181;
        v496 = v182;
        v497 = v183;
        swift_retain_n();

        swift_retain_n();
        swift_retain_n();

        sub_1D5D27950(v180, v181, v182, v183);
        sub_1D6089844(v491);
        if (v108)
        {

          sub_1D5D28C84(v180, v181, v182, v183);

          v493 = v108;
          return;
        }

        sub_1D5D28C84(v180, v181, v182, v183);

        v56 = v489;
        v63 = v492;
        v57 = v488;
        v61 = v485;
        goto LABEL_188;
      }

      v276 = *((v144 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v494 = *((v144 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      swift_retain_n();

      swift_retain_n();
      swift_retain_n();

      swift_retain_n();

      v277 = v491;
      FormatURL.bind(binder:context:)(v63, v491);
      if (!v108)
      {

        sub_1D620FAB4(v63, v277, v276);

        swift_bridgeObjectRelease_n();

        v63 = v492;
        v57 = v488;
        v61 = v485;
        goto LABEL_188;
      }

LABEL_331:
    }

LABEL_355:

    v493 = v108;
    return;
  }

  v485 = v61;
  v64 = v62 & 0x3FFFFFFFFFFFFFFFLL;
  v65 = *((v62 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v66 = *((v62 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
  v484 = v65;
  if (v65 >> 62)
  {
    if (v65 >> 62 == 1)
    {
      v67 = v65 & 0x3FFFFFFFFFFFFFFFLL;
      v68 = *((v65 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v69 = *((v65 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v488 = v57;
      v481 = v66;
      v462 = v68;
      v461 = v69;
      if (v68 >> 62)
      {
        v70 = v493;
        if (v68 >> 62 == 1)
        {
          v71 = *((v68 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
          v494 = *((v68 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);

          swift_retain_n();

          swift_retain_n();
          swift_retain_n();

          v460 = v67;
          swift_retain_n();

          swift_retain_n();

          v72 = v491;
          v73 = v492;
          FormatMicaNodeContent.bind(binder:context:)(v492, v491);
          if (v70)
          {

            v493 = v70;

            goto LABEL_384;
          }

          v494 = v71;

          FormatMicaNodeContent.bind(binder:context:)(v73, v72);

          v493 = 0;
          v74 = v492;
          v57 = v488;
          v56 = v489;
        }

        else
        {
          v208 = *((v68 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
          v494 = *((v68 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
          v209 = v69 & 0x3FFFFFFFFFFFFFFFLL;
          v459 = v494;
          swift_retain_n();

          swift_retain_n();
          v482 = v64;
          swift_retain_n();

          swift_retain_n();

          swift_retain_n();
          v460 = v209;

          v211 = v491;
          v210 = v492;
          FormatMicaNodeContent.bind(binder:context:)(v492, v491);
          v159 = v70;
          if (v70)
          {

            goto LABEL_329;
          }

          sub_1D62336A0(v210, v211, v208);
          v493 = 0;

          swift_bridgeObjectRelease_n();
          v74 = v492;
          v57 = v488;
        }
      }

      else
      {
        v494 = *(v68 + 16);

        swift_retain_n();
        v482 = v64;
        swift_retain_n();

        v460 = v67;
        swift_retain_n();

        swift_retain_n();

        v206 = v492;
        v207 = v493;
        FormatMicaNodeArchive.bind(binder:context:)(v492, v491);
        v493 = v207;
        if (v207)
        {

          goto LABEL_373;
        }

        v57 = v488;
        v74 = v206;
      }

      v494 = v461;

      v212 = v74;
      v213 = v74;
      v214 = v493;
      FormatMicaNodeContent.bind(binder:context:)(v213, v491);
      v493 = v214;
      if (v214)
      {

        goto LABEL_383;
      }

      v63 = v212;
LABEL_127:
      v66 = v481;
      v131 = v481 >> 62;
      if (v481 >> 62)
      {
LABEL_128:
        if (v131 == 1)
        {
          v215 = *((v66 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
          v494 = *((v66 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);

          swift_retain_n();

          v216 = v63;
          v217 = v63;
          v218 = v491;
          v219 = v493;
          FormatMicaNodeContent.bind(binder:context:)(v216, v491);
          v493 = v219;
          if (v219 || (v488 = v57, , v494 = v215, , v220 = v493, FormatMicaNodeContent.bind(binder:context:)(v217, v218), (v493 = v220) != 0))
          {

            goto LABEL_382;
          }

          v105 = v217;
          goto LABEL_132;
        }

        v221 = v66 & 0x3FFFFFFFFFFFFFFFLL;
        v222 = *(v221 + 24);
        v494 = *(v221 + 16);
        v481 = v494;
        swift_retain_n();

        v223 = v63;
        v224 = v63;
        v225 = v491;
        v226 = v493;
        FormatMicaNodeContent.bind(binder:context:)(v223, v491);
        v493 = v226;
        if (v226)
        {
          goto LABEL_305;
        }

        v227 = v493;
        sub_1D62336A0(v224, v225, v222);
        v493 = v227;
        if (v227)
        {
LABEL_309:

          swift_bridgeObjectRelease_n();

          goto LABEL_383;
        }

        swift_bridgeObjectRelease_n();

        v105 = v224;
LABEL_136:
        v61 = v485;
        v106 = v485 >> 62;
        if (!(v485 >> 62))
        {
          goto LABEL_33;
        }

LABEL_197:
        if (v106 == 1)
        {
          v292 = *((v61 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
          v291 = *((v61 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
          v485 = v292;
          if (v292 >> 62)
          {
            if (v292 >> 62 == 1)
            {
              v293 = *((v292 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
              v494 = *((v292 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);

              swift_retain_n();

              swift_retain_n();

              v294 = v105;
              v295 = v105;
              v296 = v491;
              v297 = v493;
              FormatMicaNodeContent.bind(binder:context:)(v294, v491);
              v493 = v297;
              if (v297 || (, v494 = v293, , v298 = v493, FormatMicaNodeContent.bind(binder:context:)(v295, v296), (v493 = v298) != 0))
              {

                goto LABEL_382;
              }

              goto LABEL_228;
            }

            v307 = *((v292 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
            v494 = *((v292 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
            swift_retain_n();

            swift_retain_n();

            v308 = v105;
            v309 = v105;
            v310 = v491;
            v311 = v493;
            FormatMicaNodeContent.bind(binder:context:)(v308, v491);
            v493 = v311;
            if (!v311)
            {

              v312 = v493;
              sub_1D62336A0(v309, v310, v307);
              v493 = v312;
              if (v312)
              {

                swift_bridgeObjectRelease_n();
                goto LABEL_383;
              }

              swift_bridgeObjectRelease_n();
              goto LABEL_228;
            }

LABEL_360:

            goto LABEL_379;
          }

          v306 = *(v292 + 16);
          if ((v306 >> 62) > 1)
          {
            if (v306 >> 62 == 2)
            {
              v321 = *((v306 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
              v322 = *((v306 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
              v323 = *((v306 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
              v494 = *((v306 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
              v320 = v494;
              v495 = v321;
              v496 = v322;
              v497 = v323;

              swift_retain_n();

              sub_1D5D27950(v320, v321, v322, v323);
              v324 = v493;
              sub_1D6089844(v491);
              v493 = v324;
              if (v324)
              {

                sub_1D5D28C84(v320, v321, v322, v323);

                goto LABEL_382;
              }

              sub_1D5D28C84(v320, v321, v322, v323);

              v105 = v492;
              v56 = v489;
            }

            else
            {
              v332 = *((v306 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
              v494 = *((v306 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
              swift_retain_n();

              swift_retain_n();

              v333 = v105;
              v334 = v105;
              v335 = v491;
              v336 = v493;
              FormatURL.bind(binder:context:)(v333, v491);
              v493 = v336;
              if (v336)
              {

                goto LABEL_360;
              }

              v337 = v493;
              sub_1D620FAB4(v334, v335, v332);
              v493 = v337;
              if (v337)
              {

                swift_bridgeObjectRelease_n();

                goto LABEL_379;
              }

              swift_bridgeObjectRelease_n();

LABEL_228:
              v105 = v492;
              v56 = v489;
            }
          }

          else
          {
          }

          if (v291 >> 62)
          {
            v488 = v57;
            v338 = v56;
            if (v291 >> 62 == 1)
            {
              v340 = *((v291 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
              v339 = *((v291 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
              v494 = v340;

              swift_retain_n();

              v341 = v105;
              v342 = v491;
              v343 = v105;
              v344 = v493;
              FormatMicaNodeContent.bind(binder:context:)(v341, v491);
              v493 = v344;
              if (v344 || (, v494 = v339, , v345 = v493, FormatMicaNodeContent.bind(binder:context:)(v343, v342), (v493 = v345) != 0))
              {

                goto LABEL_383;
              }

              goto LABEL_239;
            }

            v348 = *((v291 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
            v494 = *((v291 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
            swift_retain_n();

            v349 = v105;
            v350 = v491;
            v351 = v105;
            v352 = v493;
            FormatMicaNodeContent.bind(binder:context:)(v349, v491);
            v493 = v352;
            if (!v352)
            {

              v353 = v493;
              sub_1D62336A0(v351, v350, v348);
              v493 = v353;
              if (v353)
              {
                goto LABEL_309;
              }

              swift_bridgeObjectRelease_n();

LABEL_239:

              a2 = v491;
              v56 = v338;
              v57 = v488;
              goto LABEL_4;
            }

LABEL_305:
          }

          else
          {
            v494 = *(v291 + 16);

            v346 = v105;
            v347 = v493;
            FormatMicaNodeArchive.bind(binder:context:)(v346, v491);
            v493 = v347;
            if (!v347)
            {

              goto LABEL_246;
            }

LABEL_306:
          }

          goto LABEL_383;
        }

        v299 = *((v61 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v300 = *((v61 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        if (v299 >> 62)
        {
          v301 = v493;
          v485 = *((v61 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
          if (v299 >> 62 == 1)
          {
            v302 = v57;
            v303 = *((v299 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
            v494 = *((v299 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);

            swift_retain_n();
            v484 = v61 & 0x3FFFFFFFFFFFFFFFLL;

            swift_retain_n();

            v304 = v491;
            v305 = v492;
            FormatMicaNodeContent.bind(binder:context:)(v492, v491);
            if (v301)
            {

              v493 = v301;
              goto LABEL_383;
            }

            v494 = v303;

            FormatMicaNodeContent.bind(binder:context:)(v305, v304);

            v493 = 0;
            v105 = v492;
            v57 = v302;
            v56 = v489;
LABEL_216:
            v300 = v485;
LABEL_217:

            v318 = v105;
            v319 = v493;
            sub_1D62336A0(v318, v491, v300);
            v493 = v319;
            if (v319)
            {

              swift_bridgeObjectRelease_n();
              goto LABEL_383;
            }

            swift_bridgeObjectRelease_n();

            goto LABEL_246;
          }

          v314 = *((v299 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
          v494 = *((v299 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
          swift_retain_n();

          swift_retain_n();

          v315 = v491;
          v316 = v492;
          FormatMicaNodeContent.bind(binder:context:)(v492, v491);
          v317 = v301;
          if (!v301)
          {

            sub_1D62336A0(v316, v315, v314);
            v493 = 0;

            swift_bridgeObjectRelease_n();
            v56 = v489;
            v105 = v492;
            goto LABEL_216;
          }
        }

        else
        {
          v313 = *(v299 + 16);
          if ((v313 >> 62) <= 1)
          {

            goto LABEL_217;
          }

          v482 = *((v61 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
          v484 = v61 & 0x3FFFFFFFFFFFFFFFLL;
          if (v313 >> 62 == 2)
          {
            v326 = *((v313 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
            v327 = v300;
            v328 = *((v313 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
            v329 = *((v313 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
            v494 = *((v313 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
            v325 = v494;
            v495 = v326;
            v496 = v328;
            v497 = v329;
            swift_retain_n();
            v330 = v327;

            sub_1D5D27950(v325, v326, v328, v329);
            v331 = v493;
            sub_1D6089844(v491);
            v493 = v331;
            if (v331)
            {

              sub_1D5D28C84(v325, v326, v328, v329);

              goto LABEL_382;
            }

            sub_1D5D28C84(v325, v326, v328, v329);

            v56 = v489;
            v105 = v492;
            v300 = v330;
            goto LABEL_217;
          }

          v354 = *((v313 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
          v494 = *((v313 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
          swift_retain_n();

          swift_retain_n();

          v355 = v105;
          v356 = v491;
          v357 = v105;
          v358 = v493;
          FormatURL.bind(binder:context:)(v355, v491);
          v317 = v358;
          if (!v358)
          {
            v485 = v300;

            sub_1D620FAB4(v357, v356, v354);
            v493 = 0;

            swift_bridgeObjectRelease_n();

            v56 = v489;
            v105 = v357;
            v300 = v485;
            goto LABEL_217;
          }
        }

        v493 = v317;
        return;
      }
    }

    else
    {
      v132 = *((v65 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v133 = *((v65 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v482 = v62 & 0x3FFFFFFFFFFFFFFFLL;
      v461 = v65 & 0x3FFFFFFFFFFFFFFFLL;
      v462 = v133;
      v460 = v132;
      if (v132 >> 62)
      {
        v488 = v57;
        v134 = v493;
        if (v132 >> 62 == 1)
        {
          v135 = v132 & 0x3FFFFFFFFFFFFFFFLL;
          v136 = *((v132 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
          v494 = *((v132 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);

          swift_retain_n();

          swift_retain_n();
          swift_retain_n();

          swift_retain_n();
          v137 = v66;

          v459 = v135;
          swift_retain_n();

          v138 = v491;
          v139 = v492;
          FormatMicaNodeContent.bind(binder:context:)(v492, v491);
          if (v134)
          {

            v493 = v134;

            goto LABEL_383;
          }

          v494 = v136;

          FormatMicaNodeContent.bind(binder:context:)(v139, v138);

          v493 = 0;
          v140 = v492;
          v56 = v489;
          v57 = v488;
          v66 = v137;
        }

        else
        {
          v243 = *((v132 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
          v494 = *((v132 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
          swift_retain_n();

          swift_retain_n();
          swift_retain_n();

          swift_retain_n();
          v481 = v66;

          swift_retain_n();

          v245 = v491;
          v244 = v492;
          FormatMicaNodeContent.bind(binder:context:)(v492, v491);
          v159 = v134;
          if (v134)
          {

            goto LABEL_327;
          }

          sub_1D62336A0(v244, v245, v243);
          v493 = 0;

          swift_bridgeObjectRelease_n();
          v56 = v489;
          v57 = v488;
          v140 = v492;
          v66 = v481;
        }
      }

      else
      {
        v494 = *(v132 + 16);

        swift_retain_n();
        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        v231 = v493;
        FormatMicaNodeArchive.bind(binder:context:)(v492, v491);
        v493 = v231;
        if (v231)
        {

          goto LABEL_373;
        }

        v140 = v492;
      }

      v246 = v462;

      v247 = v140;
      v248 = v140;
      v249 = v493;
      sub_1D62336A0(v248, v491, v246);
      v493 = v249;
      if (v249)
      {
        goto LABEL_309;
      }

      swift_bridgeObjectRelease_n();

      v63 = v247;
      v131 = v66 >> 62;
      if (v66 >> 62)
      {
        goto LABEL_128;
      }
    }

LABEL_157:
    v494 = *(v66 + 16);

    v250 = v63;
    v251 = v63;
    v252 = v493;
    FormatMicaNodeArchive.bind(binder:context:)(v251, v491);
    v493 = v252;
    if (v252)
    {
      goto LABEL_306;
    }

    v105 = v250;
    v61 = v485;
    v106 = v485 >> 62;
    if (!(v485 >> 62))
    {
LABEL_33:
      v107 = *(v61 + 16);
      if ((v107 >> 62) <= 1)
      {
        goto LABEL_34;
      }

      if (v107 >> 62 == 2)
      {
        if (*((v107 & 0x3FFFFFFFFFFFFFFFLL) + 0x28))
        {
LABEL_34:

          goto LABEL_246;
        }

        v386 = v479;
        v488 = v57;
        v388 = *((v107 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v387 = *((v107 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        v389 = v61;
        v390 = *((v107 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
        v494 = v388;
        v495 = v387;
        v496 = v390;
        v498 = 6;
        sub_1D5D27950(v388, v387, v390, 0);
        v485 = v389;

        sub_1D5D27950(v388, v387, v390, 0);
        v391 = v493;
        v392 = sub_1D703E0C8(&v494, &v498);
        v493 = v391;
        if (v391)
        {
          sub_1D5D28C84(v388, v387, v390, 0);

          goto LABEL_378;
        }

        v393 = v392;
        v394 = v491;
        v395 = v475;
        FormatOptionCollection.subscript.getter(v388, v387, v475);
        if ((*v470)(v395, 1, v483) == 1)
        {

          sub_1D5B6EF64(v395, &qword_1EDF337F0, type metadata accessor for FormatOption);
          if (*(v394 + 48) == 1)
          {
            sub_1D5D28C84(v388, v387, v390, 0);

            v396 = v474;
            (*v469)(v474, 1, 1, v483);
            sub_1D5B6EF64(v396, &qword_1EDF337F0, type metadata accessor for FormatOption);

            goto LABEL_267;
          }

          type metadata accessor for FormatLayoutError();
          sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
          v493 = swift_allocError();
          *v443 = v388;
          v443[1] = v387;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();

          sub_1D5D28C84(v388, v387, v390, 0);

LABEL_378:

LABEL_379:

          goto LABEL_384;
        }

        sub_1D5D5E33C(v395, v386, type metadata accessor for FormatOption);
        v494 = v386[2];

        FormatOptionValue.type.getter(&v498);
        if (sub_1D6183C84(v498, v393))
        {

          sub_1D5D28C84(v388, v387, v390, 0);

          v405 = v474;
          sub_1D5D5E33C(v479, v474, type metadata accessor for FormatOption);
          (*v469)(v405, 0, 1, v483);
          sub_1D5B6EF64(v405, &qword_1EDF337F0, type metadata accessor for FormatOption);

LABEL_267:

          v57 = v488;
          v56 = v489;
LABEL_247:
          a2 = v491;
          goto LABEL_4;
        }

        v492 = type metadata accessor for FormatDerivedDataError();
        sub_1D5B57348(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError);
        v444 = swift_allocError();
        v446 = v445;
        v447 = *v479;
        v448 = v479[1];
        v449 = v479[2];
        v493 = v444;
        v494 = v449;

        FormatOptionValue.type.getter(&v498);
        v450 = v498;
        *v446 = v447;
        *(v446 + 8) = v448;
        *(v446 + 16) = v450;
        *(v446 + 24) = v393;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        sub_1D5D28C84(v388, v387, v390, 0);

        v435 = v479;
LABEL_381:
        sub_1D62B51D0(v435, type metadata accessor for FormatOption);
LABEL_382:

        goto LABEL_383;
      }

      v485 = v61;
      v167 = v107 & 0x3FFFFFFFFFFFFFFFLL;
      v169 = *((v107 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v168 = *((v107 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      if ((v169 >> 62) <= 1)
      {

        goto LABEL_244;
      }

      if (v169 >> 62 == 2)
      {
        v488 = v57;
        v484 = v169;
        v200 = v169 & 0x3FFFFFFFFFFFFFFFLL;
        v201 = *((v169 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v202 = *((v169 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        v203 = *(v200 + 32);
        v204 = *(v200 + 40);
        v494 = v201;
        v495 = v202;
        v496 = v203;
        v497 = v204;

        swift_retain_n();

        sub_1D5D27950(v201, v202, v203, v204);
        v205 = v493;
        sub_1D6089844(v491);
        v493 = v205;
        if (v205)
        {

          sub_1D5D28C84(v201, v202, v203, v204);

          goto LABEL_382;
        }

        sub_1D5D28C84(v201, v202, v203, v204);

        v56 = v489;
        v105 = v492;
        v57 = v488;
LABEL_244:

        v363 = v105;
        v364 = v493;
        sub_1D620FAB4(v363, v491, v168);
        v493 = v364;
        if (v364)
        {

          swift_bridgeObjectRelease_n();

          goto LABEL_384;
        }

        swift_bridgeObjectRelease_n();

LABEL_246:

        goto LABEL_247;
      }

      v359 = *((v169 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v494 = *((v169 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      swift_retain_n();

      v484 = v169 & 0x3FFFFFFFFFFFFFFFLL;
      swift_retain_n();

      v360 = v105;
      v361 = v105;
      v362 = v491;
      v288 = v493;
      FormatURL.bind(binder:context:)(v360, v491);
      if (!v288)
      {
        v482 = v167;

        sub_1D620FAB4(v361, v362, v359);

        swift_bridgeObjectRelease_n();
        v493 = 0;
        v56 = v489;
        v105 = v361;
        goto LABEL_244;
      }

LABEL_365:
      v493 = v288;

      goto LABEL_384;
    }

    goto LABEL_197;
  }

  v130 = *(v65 + 16);
  if ((v130 >> 62) <= 1)
  {
LABEL_63:

    swift_retain_n();
    swift_retain_n();

    v131 = v66 >> 62;
    if (v66 >> 62)
    {
      goto LABEL_128;
    }

    goto LABEL_157;
  }

  if (v130 >> 62 != 2)
  {
    v258 = v492;
    v259 = *((v130 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    v494 = *((v130 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    swift_retain_n();

    swift_retain_n();
    v482 = v64;
    swift_retain_n();

    swift_retain_n();
    v481 = v66;

    v260 = v491;
    v261 = v493;
    FormatURL.bind(binder:context:)(v258, v491);
    v493 = v261;
    if (v261)
    {

      goto LABEL_344;
    }

    v262 = v493;
    sub_1D620FAB4(v258, v260, v259);
    v493 = v262;
    if (!v262)
    {

      swift_bridgeObjectRelease_n();

      v63 = v492;
      v66 = v481;
      v131 = v481 >> 62;
      if (v481 >> 62)
      {
        goto LABEL_128;
      }

      goto LABEL_157;
    }

    swift_bridgeObjectRelease_n();

    goto LABEL_353;
  }

  if (*((v130 & 0x3FFFFFFFFFFFFFFFLL) + 0x28))
  {
    goto LABEL_63;
  }

  v488 = v57;
  v407 = *((v130 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v406 = *((v130 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
  v408 = *((v130 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
  v494 = v407;
  v495 = v406;
  v496 = v408;
  v498 = 6;
  sub_1D5D27950(v407, v406, v408, 0);

  swift_retain_n();
  swift_retain_n();

  v462 = v408;
  sub_1D5D27950(v407, v406, v408, 0);

  v409 = v493;
  v410 = sub_1D703E0C8(&v494, &v498);
  v493 = v409;
  if (v409)
  {
    sub_1D5D28C84(v407, v406, v462, 0);

    goto LABEL_354;
  }

  v411 = v410;
  v481 = v66;
  v412 = v491;
  v413 = v473;
  FormatOptionCollection.subscript.getter(v407, v406, v473);
  if ((*v470)(v413, 1, v483) == 1)
  {

    sub_1D5B6EF64(v413, &qword_1EDF337F0, type metadata accessor for FormatOption);
    if (*(v412 + 48))
    {
      sub_1D5D28C84(v407, v406, v462, 0);
      v414 = v472;
      (*v469)(v472, 1, 1, v483);
      v415 = v414;
LABEL_274:
      sub_1D5B6EF64(v415, &qword_1EDF337F0, type metadata accessor for FormatOption);

      v63 = v492;
      v57 = v488;
      v56 = v489;
      goto LABEL_127;
    }

    type metadata accessor for FormatLayoutError();
    sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
    v457 = swift_allocError();
    *v458 = v407;
    v458[1] = v406;
    swift_storeEnumTagMultiPayload();
    v493 = v457;
    swift_willThrow();

    sub_1D5D28C84(v407, v406, v462, 0);

LABEL_353:

LABEL_354:

    goto LABEL_373;
  }

  v416 = v413;
  v417 = v463;
  sub_1D5D5E33C(v416, v463, type metadata accessor for FormatOption);
  v494 = v417[2];

  FormatOptionValue.type.getter(&v498);
  if (sub_1D6183C84(v498, v411))
  {

    sub_1D5D28C84(v407, v406, v462, 0);

    v418 = v417;
    v419 = v472;
    sub_1D5D5E33C(v418, v472, type metadata accessor for FormatOption);
    (*v469)(v419, 0, 1, v483);
    v415 = v419;
    goto LABEL_274;
  }

  v492 = type metadata accessor for FormatDerivedDataError();
  sub_1D5B57348(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError);
  v451 = swift_allocError();
  v453 = v452;
  v454 = v417[1];
  v491 = *v417;
  v455 = v417[2];
  v493 = v451;
  v494 = v455;

  FormatOptionValue.type.getter(&v498);
  v456 = v498;
  *v453 = v491;
  *(v453 + 8) = v454;
  *(v453 + 16) = v456;
  *(v453 + 24) = v411;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  sub_1D5D28C84(v407, v406, v462, 0);

  sub_1D62B51D0(v417, type metadata accessor for FormatOption);

LABEL_383:

LABEL_384:
}

unint64_t sub_1D623A698(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = result;
    v7 = 0;
    v8 = a3 + 32;
    v13 = a3 + 32;
    v14 = *(a3 + 16);
    do
    {
      v9 = *(v8 + 24 * v7 + 16);
      if (v9 >= 3)
      {
        v10 = *(v9 + 16);

        sub_1D5DEA234(v9);
        if (v10)
        {
          v11 = (v9 + 40);
          do
          {
            if ((*v11 & 1) == 0)
            {
              v12 = *(v11 - 1);
              swift_retain_n();
              FormatFloat.bind(binder:context:)(v6, a2);
              sub_1D62B72BC(v12, 0);
              if (v3)
              {

                return sub_1D5CBF568(v9);
              }
            }

            v11 += 16;
            --v10;
          }

          while (v10);
        }

        result = sub_1D5CBF568(v9);
        v8 = v13;
        v4 = v14;
      }

      ++v7;
    }

    while (v7 != v4);
  }

  return result;
}

unint64_t sub_1D623A7D4(unint64_t result, uint64_t a2, uint64_t a3)
{
  v77 = result;
  v4 = *(a3 + 16);
  if (!v4)
  {
    return result;
  }

  v5 = a2;
  for (i = (a3 + 48); ; i += 3)
  {
    v8 = *i;
    v9 = *i >> 62;
    if (v9 <= 1)
    {
      if (v9)
      {

        sub_1D5F33D5C(v8);

        FormatColor.bind(binder:context:)(v77, v5);
      }

      else
      {
        v7 = *(v8 + 16);

        sub_1D5F33D5C(v8);

        sub_1D6212DD8(v77, v5, v7);
      }

      result = sub_1D5F33D8C(v8);
      if (v3)
      {
        return result;
      }

      goto LABEL_5;
    }

    if (v9 != 2)
    {
      goto LABEL_5;
    }

    v10 = *((v8 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v11 = *((v8 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    v12 = v10 >> 62;
    if ((v10 >> 62) <= 1)
    {
      if (!v12)
      {
        v13 = *(v10 + 16);

        sub_1D5F33D5C(v8);
        sub_1D5F33D5C(v10);

        sub_1D5F33D5C(v10);

        sub_1D6212DD8(v77, v5, v13);
        if (v3)
        {
          goto LABEL_116;
        }

        sub_1D5F33D8C(v10);
        goto LABEL_111;
      }

      sub_1D5F33D5C(v8);
      sub_1D5F33D5C(v10);

      sub_1D5F33D5C(v10);

      FormatColor.bind(binder:context:)(v77, a2);
      if (v3)
      {
        sub_1D5F33D8C(v10);

        goto LABEL_117;
      }

      goto LABEL_110;
    }

    if (v12 != 2)
    {

      sub_1D5F33D5C(v8);
      if (v10 == 0xC000000000000000)
      {
        v18 = 0xC000000000000000;
      }

      else
      {
        v18 = 0xC000000000000008;
      }

      sub_1D5F33D5C(v18);

      goto LABEL_111;
    }

    v15 = *((v10 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v14 = *((v10 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    v16 = v15 >> 62;
    if ((v15 >> 62) > 1)
    {
      if (v16 != 2)
      {

        sub_1D5F33D5C(v8);
        sub_1D5F33D5C(v10);

        sub_1D5F33D5C(v10);
        if (v15 == 0xC000000000000000)
        {
          v22 = 0xC000000000000000;
        }

        else
        {
          v22 = 0xC000000000000008;
        }

        sub_1D5F33D5C(v22);

        goto LABEL_108;
      }

      v75 = *((v10 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v19 = *((v15 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v73 = *((v10 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v74 = *((v15 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v20 = v19 >> 62;
      if ((v19 >> 62) <= 1)
      {
        if (!v20)
        {
          v71 = *(v19 + 16);

          sub_1D5F33D5C(v8);
          sub_1D5F33D5C(v10);

          sub_1D5F33D5C(v10);
          sub_1D5F33D5C(v15);

          sub_1D5F33D5C(v15);
          sub_1D5F33D5C(v19);

          sub_1D5F33D5C(v19);

          sub_1D6212DD8(v77, a2, v71);
          if (v3)
          {
            sub_1D5F33D8C(v19);

            sub_1D5F33D8C(v15);

            sub_1D5F33D8C(v10);

            goto LABEL_135;
          }

          sub_1D5F33D8C(v19);
          v21 = v19;
          goto LABEL_104;
        }

        sub_1D5F33D5C(v8);
        sub_1D5F33D5C(v10);

        sub_1D5F33D5C(v10);
        sub_1D5F33D5C(v15);

        sub_1D5F33D5C(v15);
        sub_1D5F33D5C(v19);

        sub_1D5F33D5C(v19);

        v21 = v19;
        FormatColor.bind(binder:context:)(v77, a2);
        if (v3)
        {
          sub_1D5F33D8C(v19);

          v44 = v73;
          sub_1D5F33D8C(v73);

          sub_1D5F33D8C(v10);

          v45 = v21;
          goto LABEL_144;
        }

        v26 = v19;
        goto LABEL_103;
      }

      if (v20 != 2)
      {

        sub_1D5F33D5C(v8);
        sub_1D5F33D5C(v10);

        sub_1D5F33D5C(v10);
        sub_1D5F33D5C(v15);

        sub_1D5F33D5C(v15);
        v21 = v19;
        if (v19 == 0xC000000000000000)
        {
          v27 = 0xC000000000000000;
        }

        else
        {
          v27 = 0xC000000000000008;
        }

        sub_1D5F33D5C(v27);

        goto LABEL_104;
      }

      v23 = *((v19 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v24 = v23 >> 62;
      v69 = *((v15 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v70 = *((v19 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v72 = v23;
      if ((v23 >> 62) <= 1)
      {
        if (v24)
        {

          sub_1D5F33D5C(v8);
          sub_1D5F33D5C(v10);

          sub_1D5F33D5C(v10);
          sub_1D5F33D5C(v15);

          sub_1D5F33D5C(v15);
          sub_1D5F33D5C(v19);

          sub_1D5F33D5C(v19);
          sub_1D5F33D5C(v72);

          sub_1D5F33D5C(v72);

          FormatColor.bind(binder:context:)(v77, a2);
          if (v3)
          {
            v47 = v72;
            sub_1D5F33D8C(v72);

            sub_1D5F33D8C(v19);

            sub_1D5F33D8C(v15);

            sub_1D5F33D8C(v10);

            goto LABEL_134;
          }

          v25 = v72;
        }

        else
        {
          v67 = *(v23 + 16);

          sub_1D5F33D5C(v8);
          sub_1D5F33D5C(v10);

          sub_1D5F33D5C(v10);
          sub_1D5F33D5C(v15);

          sub_1D5F33D5C(v15);
          sub_1D5F33D5C(v19);

          sub_1D5F33D5C(v19);
          sub_1D5F33D5C(v72);

          sub_1D5F33D5C(v72);

          sub_1D6212DD8(v77, a2, v67);
          if (v3)
          {
            sub_1D5F33D8C(v72);

            sub_1D5F33D8C(v19);

            v44 = v15;
            sub_1D5F33D8C(v15);

            sub_1D5F33D8C(v10);

            sub_1D5F33D8C(v72);
            v45 = v69;
            goto LABEL_144;
          }

          v25 = v72;
        }

        sub_1D5F33D8C(v25);
        goto LABEL_100;
      }

      if (v24 != 2)
      {

        sub_1D5F33D5C(v8);
        sub_1D5F33D5C(v10);

        sub_1D5F33D5C(v10);
        sub_1D5F33D5C(v15);

        sub_1D5F33D5C(v15);
        sub_1D5F33D5C(v19);

        sub_1D5F33D5C(v19);
        if (v72 == 0xC000000000000000)
        {
          v31 = 0xC000000000000000;
        }

        else
        {
          v31 = 0xC000000000000008;
        }

        sub_1D5F33D5C(v31);
        v35 = v70;

        goto LABEL_101;
      }

      v28 = *((v23 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v66 = *((v23 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v68 = v28;
      v29 = v28 >> 62;
      if ((v28 >> 62) <= 1)
      {
        if (v29)
        {

          sub_1D5F33D5C(v8);
          sub_1D5F33D5C(v10);

          sub_1D5F33D5C(v10);
          sub_1D5F33D5C(v15);

          sub_1D5F33D5C(v15);
          sub_1D5F33D5C(v19);

          sub_1D5F33D5C(v19);
          sub_1D5F33D5C(v72);

          sub_1D5F33D5C(v72);
          sub_1D5F33D5C(v68);

          v30 = v68;
          sub_1D5F33D5C(v68);

          FormatColor.bind(binder:context:)(v77, a2);
          if (v3)
          {
            sub_1D5F33D8C(v68);

            v47 = v72;
            sub_1D5F33D8C(v72);

            sub_1D5F33D8C(v19);

            v15 = v73;
            sub_1D5F33D8C(v73);

            sub_1D5F33D8C(v10);

            sub_1D5F33D8C(v68);
LABEL_134:
            sub_1D5F33D8C(v47);
LABEL_135:
            v46 = v19;
            goto LABEL_136;
          }
        }

        else
        {
          v64 = *(v28 + 16);

          sub_1D5F33D5C(v8);
          sub_1D5F33D5C(v10);

          sub_1D5F33D5C(v10);
          sub_1D5F33D5C(v15);

          sub_1D5F33D5C(v15);
          sub_1D5F33D5C(v19);

          sub_1D5F33D5C(v19);
          sub_1D5F33D5C(v72);

          sub_1D5F33D5C(v72);
          v30 = v68;
          sub_1D5F33D5C(v68);

          sub_1D5F33D5C(v68);

          sub_1D6212DD8(v77, a2, v64);
          if (v3)
          {
            sub_1D5F33D8C(v68);

            sub_1D5F33D8C(v72);

            v53 = v19;
            sub_1D5F33D8C(v19);

            v44 = v73;
            sub_1D5F33D8C(v73);

            sub_1D5F33D8C(v10);

            sub_1D5F33D8C(v68);
            v54 = v72;
LABEL_143:
            sub_1D5F33D8C(v54);
            v45 = v53;
            goto LABEL_144;
          }
        }

        sub_1D5F33D8C(v30);
        v15 = v73;
        goto LABEL_98;
      }

      if (v29 != 2)
      {

        sub_1D5F33D5C(v8);
        sub_1D5F33D5C(v10);

        sub_1D5F33D5C(v10);
        sub_1D5F33D5C(v15);

        sub_1D5F33D5C(v15);
        sub_1D5F33D5C(v19);

        sub_1D5F33D5C(v19);
        sub_1D5F33D5C(v72);

        sub_1D5F33D5C(v72);
        if (v68 == 0xC000000000000000)
        {
          v36 = 0xC000000000000000;
        }

        else
        {
          v36 = 0xC000000000000008;
        }

        sub_1D5F33D5C(v36);

LABEL_98:

        sub_1D623A7D4(v77, a2, v66);
        if (v3)
        {
          sub_1D5F33D8C(v68);

          v48 = v72;
          sub_1D5F33D8C(v72);

          v49 = v15;
          v50 = v69;
          sub_1D5F33D8C(v69);

          sub_1D5F33D8C(v49);

          sub_1D5F33D8C(v10);

          goto LABEL_131;
        }

        sub_1D5F33D8C(v68);

        sub_1D5F33D8C(v72);
LABEL_100:
        v35 = v70;
LABEL_101:

        sub_1D623A7D4(v77, a2, v35);
        if (v3)
        {
          sub_1D5F33D8C(v72);

          sub_1D5F33D8C(v69);

          sub_1D5F33D8C(v15);

          sub_1D5F33D8C(v10);

          v46 = v69;
LABEL_136:
          sub_1D5F33D8C(v46);
          goto LABEL_137;
        }

        sub_1D5F33D8C(v72);

        v26 = v69;
        v21 = v69;
LABEL_103:
        sub_1D5F33D8C(v26);
LABEL_104:

        sub_1D623A7D4(v77, a2, v74);
        if (v3)
        {
          sub_1D5F33D8C(v21);

          v15 = v73;
LABEL_124:
          sub_1D5F33D8C(v15);

          sub_1D5F33D8C(v10);

LABEL_137:
          v52 = v15;
LABEL_138:
          sub_1D5F33D8C(v52);
          goto LABEL_118;
        }

        sub_1D5F33D8C(v21);

        v15 = v73;
        goto LABEL_106;
      }

      v32 = *((v28 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v33 = v32 >> 62;
      v63 = *((v28 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v65 = v32;
      if ((v32 >> 62) <= 1)
      {
        if (v33)
        {

          sub_1D5F33D5C(v8);
          sub_1D5F33D5C(v10);

          sub_1D5F33D5C(v10);
          sub_1D5F33D5C(v15);

          sub_1D5F33D5C(v15);
          sub_1D5F33D5C(v19);

          sub_1D5F33D5C(v19);
          sub_1D5F33D5C(v72);

          sub_1D5F33D5C(v72);
          sub_1D5F33D5C(v68);

          sub_1D5F33D5C(v68);
          sub_1D5F33D5C(v65);

          sub_1D5F33D5C(v65);

          FormatColor.bind(binder:context:)(v77, a2);
          if (v3)
          {
            sub_1D5F33D8C(v65);

            sub_1D5F33D8C(v68);

            sub_1D5F33D8C(v72);

            sub_1D5F33D8C(v19);

            v49 = v15;
            sub_1D5F33D8C(v15);

            sub_1D5F33D8C(v10);

            sub_1D5F33D8C(v65);
            sub_1D5F33D8C(v68);
            sub_1D5F33D8C(v72);
            v51 = v19;
            goto LABEL_132;
          }

          v34 = v65;
        }

        else
        {
          v61 = *(v32 + 16);

          sub_1D5F33D5C(v8);
          sub_1D5F33D5C(v10);

          sub_1D5F33D5C(v10);
          sub_1D5F33D5C(v15);

          sub_1D5F33D5C(v15);
          sub_1D5F33D5C(v19);

          sub_1D5F33D5C(v19);
          sub_1D5F33D5C(v72);

          sub_1D5F33D5C(v72);
          sub_1D5F33D5C(v68);

          sub_1D5F33D5C(v68);
          sub_1D5F33D5C(v65);

          sub_1D5F33D5C(v65);

          sub_1D6212DD8(v77, a2, v61);
          if (v3)
          {
            sub_1D5F33D8C(v65);

            sub_1D5F33D8C(v68);

            sub_1D5F33D8C(v72);

            v53 = v19;
            sub_1D5F33D8C(v19);

            v44 = v73;
            sub_1D5F33D8C(v73);

            sub_1D5F33D8C(v10);

            sub_1D5F33D8C(v65);
            sub_1D5F33D8C(v68);
            v54 = v72;
            goto LABEL_143;
          }

          v34 = v65;
        }

        sub_1D5F33D8C(v34);
        goto LABEL_95;
      }

      if (v33 != 2)
      {

        sub_1D5F33D5C(v8);
        sub_1D5F33D5C(v10);

        sub_1D5F33D5C(v10);
        sub_1D5F33D5C(v15);

        sub_1D5F33D5C(v15);
        sub_1D5F33D5C(v19);

        sub_1D5F33D5C(v19);
        sub_1D5F33D5C(v72);

        sub_1D5F33D5C(v72);
        sub_1D5F33D5C(v68);

        sub_1D5F33D5C(v68);
        if (v65 == 0xC000000000000000)
        {
          v40 = 0xC000000000000000;
        }

        else
        {
          v40 = 0xC000000000000008;
        }

        sub_1D5F33D5C(v40);
        v41 = v63;

        goto LABEL_96;
      }

      v37 = *((v32 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v60 = *((v32 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v62 = v37;
      v38 = v37 >> 62;
      if ((v37 >> 62) > 1)
      {
        if (v38 != 2)
        {

          sub_1D5F33D5C(v8);
          sub_1D5F33D5C(v10);

          sub_1D5F33D5C(v10);
          sub_1D5F33D5C(v15);

          sub_1D5F33D5C(v15);
          sub_1D5F33D5C(v19);

          sub_1D5F33D5C(v19);
          sub_1D5F33D5C(v72);

          sub_1D5F33D5C(v72);
          sub_1D5F33D5C(v68);

          sub_1D5F33D5C(v68);
          sub_1D5F33D5C(v65);

          sub_1D5F33D5C(v65);
          if (v62 == 0xC000000000000000)
          {
            v42 = 0xC000000000000000;
          }

          else
          {
            v42 = 0xC000000000000008;
          }

          sub_1D5F33D5C(v42);
          v39 = v60;

          goto LABEL_93;
        }

        v57 = *((v37 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v59 = *((v37 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);

        sub_1D5F33D5C(v8);
        sub_1D5F33D5C(v10);

        sub_1D5F33D5C(v10);
        sub_1D5F33D5C(v15);

        sub_1D5F33D5C(v15);
        sub_1D5F33D5C(v19);

        sub_1D5F33D5C(v19);
        sub_1D5F33D5C(v72);

        sub_1D5F33D5C(v72);
        sub_1D5F33D5C(v68);

        sub_1D5F33D5C(v68);
        sub_1D5F33D5C(v65);

        sub_1D5F33D5C(v65);
        sub_1D5F33D5C(v62);
        v39 = v60;

        sub_1D5F33D5C(v62);
        sub_1D5F33D5C(v57);

        sub_1D6249738(v77, a2, v57, v59);
        if (v3)
        {
          v55 = v62;
          sub_1D5F33D8C(v57);
LABEL_149:

          sub_1D5F33D8C(v65);

          sub_1D5F33D8C(v68);

          sub_1D5F33D8C(v72);

          sub_1D5F33D8C(v69);

          v56 = v15;
          v44 = v15;
LABEL_150:
          sub_1D5F33D8C(v56);

          sub_1D5F33D8C(v10);

          sub_1D5F33D8C(v55);

          sub_1D5F33D8C(v55);
          sub_1D5F33D8C(v65);
          sub_1D5F33D8C(v68);
          sub_1D5F33D8C(v72);
          v45 = v69;
LABEL_144:
          sub_1D5F33D8C(v45);
          v52 = v44;
          goto LABEL_138;
        }

        sub_1D5F33D8C(v57);
      }

      else
      {
        if (v38)
        {

          sub_1D5F33D5C(v8);
          sub_1D5F33D5C(v10);

          sub_1D5F33D5C(v10);
          sub_1D5F33D5C(v15);

          sub_1D5F33D5C(v15);
          sub_1D5F33D5C(v19);

          sub_1D5F33D5C(v19);
          sub_1D5F33D5C(v72);

          sub_1D5F33D5C(v72);
          sub_1D5F33D5C(v68);

          sub_1D5F33D5C(v68);
          sub_1D5F33D5C(v65);

          sub_1D5F33D5C(v65);
          sub_1D5F33D5C(v62);

          sub_1D5F33D5C(v62);

          FormatColor.bind(binder:context:)(v77, a2);
          if (v3)
          {
            v55 = v62;

            sub_1D5F33D8C(v65);

            sub_1D5F33D8C(v68);

            sub_1D5F33D8C(v72);

            sub_1D5F33D8C(v19);

            v44 = v15;
            v56 = v15;
            goto LABEL_150;
          }

          sub_1D5F33D8C(v62);
          v39 = v60;
          goto LABEL_93;
        }

        v58 = *(v37 + 16);

        sub_1D5F33D5C(v8);
        sub_1D5F33D5C(v10);

        sub_1D5F33D5C(v10);
        sub_1D5F33D5C(v15);

        sub_1D5F33D5C(v15);
        sub_1D5F33D5C(v19);

        sub_1D5F33D5C(v19);
        sub_1D5F33D5C(v72);

        sub_1D5F33D5C(v72);
        sub_1D5F33D5C(v68);

        sub_1D5F33D5C(v68);
        sub_1D5F33D5C(v65);

        sub_1D5F33D5C(v65);
        sub_1D5F33D5C(v62);
        v39 = v60;

        sub_1D5F33D5C(v62);

        sub_1D6212DD8(v77, a2, v58);
        if (v3)
        {
          v55 = v62;
          goto LABEL_149;
        }
      }

      sub_1D5F33D8C(v62);
LABEL_93:

      sub_1D623A7D4(v77, a2, v39);
      if (v3)
      {
        sub_1D5F33D8C(v62);

        sub_1D5F33D8C(v65);

        sub_1D5F33D8C(v68);

        v48 = v72;
        sub_1D5F33D8C(v72);

        v49 = v15;
        v50 = v69;
        sub_1D5F33D8C(v69);

        sub_1D5F33D8C(v49);

        sub_1D5F33D8C(v10);

        sub_1D5F33D8C(v65);
        sub_1D5F33D8C(v68);
LABEL_131:
        sub_1D5F33D8C(v48);
        v51 = v50;
LABEL_132:
        sub_1D5F33D8C(v51);
        v52 = v49;
        goto LABEL_138;
      }

      sub_1D5F33D8C(v62);
      swift_bridgeObjectRelease_n();
      sub_1D5F33D8C(v65);
LABEL_95:
      v41 = v63;
LABEL_96:

      sub_1D623A7D4(v77, a2, v41);
      if (v3)
      {
        sub_1D5F33D8C(v65);

        sub_1D5F33D8C(v68);

        sub_1D5F33D8C(v72);

        sub_1D5F33D8C(v69);

        sub_1D5F33D8C(v15);

        sub_1D5F33D8C(v10);

        sub_1D5F33D8C(v68);
        sub_1D5F33D8C(v72);
        v46 = v69;
        goto LABEL_136;
      }

      sub_1D5F33D8C(v65);

      sub_1D5F33D8C(v68);
      goto LABEL_98;
    }

    v75 = *((v10 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    if (!v16)
    {
      v17 = *(v15 + 16);

      sub_1D5F33D5C(v8);
      sub_1D5F33D5C(v10);

      sub_1D5F33D5C(v10);
      sub_1D5F33D5C(v15);

      sub_1D5F33D5C(v15);

      sub_1D6212DD8(v77, a2, v17);
      if (v3)
      {
        goto LABEL_124;
      }

LABEL_106:
      sub_1D5F33D8C(v15);
      goto LABEL_107;
    }

    sub_1D5F33D5C(v8);
    sub_1D5F33D5C(v10);

    sub_1D5F33D5C(v10);
    sub_1D5F33D5C(v15);

    sub_1D5F33D5C(v15);

    FormatColor.bind(binder:context:)(v77, a2);
    if (v3)
    {
      break;
    }

    sub_1D5F33D8C(v15);
LABEL_107:
    v14 = v75;
LABEL_108:

    sub_1D623A7D4(v77, a2, v14);
    if (v3)
    {
      sub_1D5F33D8C(v15);

LABEL_116:
      sub_1D5F33D8C(v10);

LABEL_117:

LABEL_118:
      v43 = v10;
      goto LABEL_119;
    }

    sub_1D5F33D8C(v15);

LABEL_110:
    sub_1D5F33D8C(v10);
    v5 = a2;
LABEL_111:

    sub_1D623A7D4(v77, v5, v11);
    if (v3)
    {
      sub_1D5F33D8C(v10);

      swift_bridgeObjectRelease_n();
      return sub_1D5F33D8C(v8);
    }

    sub_1D5F33D8C(v10);

    result = sub_1D5F33D8C(v8);
LABEL_5:
    if (!--v4)
    {
      return result;
    }
  }

  sub_1D5F33D8C(v15);

  sub_1D5F33D8C(v10);

  sub_1D5F33D8C(v15);
  v43 = v10;
LABEL_119:
  sub_1D5F33D8C(v43);

  return sub_1D5F33D8C(v8);
}

uint64_t sub_1D623C2C8(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = result;
    v7 = a3 + 48;
    while (1)
    {
      swift_retain_n();

      FormatAsyncImageContent.bind(binder:context:)(v6, a2);
      if (v3)
      {
        break;
      }

      v7 += 24;

      if (!--v4)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_1D623C390(uint64_t result, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = a3 + 56;
    while (1)
    {
      v8 = *(v7 - 24);
      v9 = *(v7 - 16);
      v10 = *(v7 - 8);
      sub_1D5D03180(v8, v9, v10);
      swift_retain_n();
      a4(v6, a2);
      if (v4)
      {
        break;
      }

      v7 += 32;
      sub_1D5D07BA8(v8, v9, v10);

      if (!--v5)
      {
        return result;
      }
    }

    sub_1D5D07BA8(v8, v9, v10);
  }

  return result;
}

void sub_1D623C484(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a1;
  v25 = a2;
  v4 = sub_1D72585BC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5CF4A48(0, &qword_1EDF3A6E0, type metadata accessor for FormatSelectorValueSelector);
  v28 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v26 = &v23 - v12;
  v13 = *(a3 + 16);
  if (v13)
  {
    v14 = a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v15 = (v5 + 16);
    v27 = *(v11 + 72);
    v16 = v26;
    v23 = v15;
    do
    {
      sub_1D62B7198(v14, v16, &qword_1EDF3A6E0, type metadata accessor for FormatSelectorValueSelector);
      (*v15)(v8, v16 + *(v28 + 36), v4);
      sub_1D5B49474(0, &qword_1EDF329A8);
      if (swift_dynamicCast())
      {
        v17 = v8;
        v18 = v4;
        v19 = *(&v30 + 1);
        v20 = v31;
        __swift_project_boxed_opaque_existential_1(&v29, *(&v30 + 1));
        v21 = v32;
        v22 = v19;
        v16 = v26;
        (*(v20 + 8))(v24, v25, v22, v20);
        sub_1D62B7204(v16, &qword_1EDF3A6E0, type metadata accessor for FormatSelectorValueSelector);
        __swift_destroy_boxed_opaque_existential_1(&v29);
        if (v21)
        {
          return;
        }

        v32 = 0;
        v4 = v18;
        v8 = v17;
        v15 = v23;
      }

      else
      {
        sub_1D62B7204(v16, &qword_1EDF3A6E0, type metadata accessor for FormatSelectorValueSelector);
        v29 = 0u;
        v30 = 0u;
        v31 = 0;
        sub_1D5BFB774(&v29, &qword_1EDF329A0, &qword_1EDF329A8);
      }

      v14 += v27;
      --v13;
    }

    while (v13);
  }
}

uint64_t sub_1D623C788(uint64_t result, uint64_t a2, uint64_t a3)
{
  v9 = result;
  v4 = *(a3 + 16);
  if (v4)
  {
    sub_1D5B49474(0, &qword_1EDF329A8);
    v6 = (a3 + 48);
    do
    {
      v14 = *v6;

      if (swift_dynamicCast())
      {
        v7 = *(&v12 + 1);
        v8 = v13;
        __swift_project_boxed_opaque_existential_1(&v11, *(&v12 + 1));
        (*(v8 + 8))(v9, a2, v7, v8);

        result = __swift_destroy_boxed_opaque_existential_1(&v11);
        if (v3)
        {
          return result;
        }
      }

      else
      {

        v13 = 0;
        v11 = 0u;
        v12 = 0u;
        result = sub_1D5BFB774(&v11, &qword_1EDF329A0, &qword_1EDF329A8);
      }

      v6 += 3;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_1D623C8CC(uint64_t result, uint64_t a2, uint64_t a3)
{
  v9 = result;
  v4 = *(a3 + 16);
  if (v4)
  {
    sub_1D5B49474(0, &qword_1EDF329A8);
    v6 = (a3 + 48);
    do
    {
      v14 = *v6;

      if (swift_dynamicCast())
      {
        v7 = *(&v12 + 1);
        v8 = v13;
        __swift_project_boxed_opaque_existential_1(&v11, *(&v12 + 1));
        (*(v8 + 8))(v9, a2, v7, v8);

        result = __swift_destroy_boxed_opaque_existential_1(&v11);
        if (v3)
        {
          return result;
        }
      }

      else
      {

        v13 = 0;
        v11 = 0u;
        v12 = 0u;
        result = sub_1D5BFB774(&v11, &qword_1EDF329A0, &qword_1EDF329A8);
      }

      v6 += 3;
      --v4;
    }

    while (v4);
  }

  return result;
}

void sub_1D623CA14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a1;
  v27 = a2;
  v4 = sub_1D725891C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5CF4AE4();
  v29 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v28 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a3 + 16);
  if (v13)
  {
    v14 = a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v15 = (v5 + 16);
    v16 = *(v11 + 72);
    v17 = v28;
    v25 = v16;
    do
    {
      sub_1D62B50EC(v14, v17, sub_1D5CF4AE4);
      (*v15)(v8, v17 + *(v29 + 36), v4);
      sub_1D5B49474(0, &qword_1EDF329A8);
      if (swift_dynamicCast())
      {
        v18 = v8;
        v19 = v4;
        v20 = *(&v31 + 1);
        v21 = v32;
        __swift_project_boxed_opaque_existential_1(&v30, *(&v31 + 1));
        v22 = v33;
        v23 = v20;
        v17 = v28;
        (*(v21 + 8))(v26, v27, v23, v21);
        sub_1D62B51D0(v17, sub_1D5CF4AE4);
        __swift_destroy_boxed_opaque_existential_1(&v30);
        if (v22)
        {
          return;
        }

        v33 = 0;
        v4 = v19;
        v8 = v18;
        v16 = v25;
      }

      else
      {
        sub_1D62B51D0(v17, sub_1D5CF4AE4);
        v30 = 0u;
        v31 = 0u;
        v32 = 0;
        sub_1D5BFB774(&v30, &qword_1EDF329A0, &qword_1EDF329A8);
      }

      v14 += v16;
      --v13;
    }

    while (v13);
  }
}

uint64_t sub_1D623CCEC(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = result;
    v6 = a3 + 56;
    while (1)
    {
      v7 = *(v6 - 24);
      v8 = *(v6 - 16);
      v9 = *(v6 - 8);
      sub_1D5D03180(v7, v8, v9);
      swift_retain_n();
      FormatImage.bind(binder:context:)(v5, a2);
      if (v3)
      {
        break;
      }

      v6 += 32;
      sub_1D5D07BA8(v7, v8, v9);

      if (!--v4)
      {
        return result;
      }
    }

    sub_1D5D07BA8(v7, v8, v9);
  }

  return result;
}

uint64_t sub_1D623CDD8(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = result;
    for (i = (a3 + 32); ; i += 528)
    {
      memcpy(__dst, i, sizeof(__dst));
      memcpy(__src, i, sizeof(__src));
      sub_1D5CFDDA0(__dst, v8);
      FormatTextNodeStyle.Selector.bind(binder:context:)(v6, a2);
      if (v3)
      {
        break;
      }

      memcpy(v8, __src, sizeof(v8));
      result = sub_1D5CFF4CC(v8);
      if (!--v4)
      {
        return result;
      }
    }

    memcpy(v8, __src, sizeof(v8));
    return sub_1D5CFF4CC(v8);
  }

  return result;
}

uint64_t sub_1D623CEAC(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = result;
    for (i = a3 + 64; ; i += 40)
    {
      v7 = *(i - 8);

      swift_retain_n();

      FormatTextContent.bind(binder:context:)(v5, a2);
      if (v3)
      {
        break;
      }

      if (v7)
      {
        FormatTextNodeStyle.bind(binder:context:)(v5, a2);
      }

      if (!--v4)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_1D623CFF4(uint64_t result, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v8 = result;
    v9 = a3 + 48;
    while (1)
    {
      swift_retain_n();

      a4(v8, a2);
      if (v4)
      {
        break;
      }

      v9 += 24;

      if (!--v5)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_1D623D0C4(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = result;
    for (i = (a3 + 48); ; i += 5)
    {
      v8 = *i;
      v9 = i[2];
      v19 = i[1];
      v20 = v9;
      v21 = i[3];
      v10 = *i;
      v17 = *(i - 1);
      v18 = v10;
      v14 = v8;
      v15 = v19;
      v16[0] = i[2];
      *(v16 + 15) = *(i + 47);
      sub_1D5CF5D60(&v17, &v11);
      sub_1D5CF5DBC(&v18, &v11);
      FormatOptionsNodeStatementValue.bind(binder:context:)(v6, a2);
      if (v3)
      {
        break;
      }

      sub_1D5CF5E18(&v17);
      v11 = v14;
      v12 = v15;
      v13[0] = v16[0];
      *(v13 + 15) = *(v16 + 15);
      result = sub_1D5CF603C(&v11);
      if (!--v4)
      {
        return result;
      }
    }

    sub_1D5CF5E18(&v17);
    v11 = v14;
    v12 = v15;
    v13[0] = v16[0];
    *(v13 + 15) = *(v16 + 15);
    return sub_1D5CF603C(&v11);
  }

  return result;
}

uint64_t FormatVisibility.bind(binder:context:)(uint64_t result, uint64_t a2)
{
  if (*v2 >> 62 == 1)
  {
    v3 = *v2 & 0x3FFFFFFFFFFFFFFFLL;
    v4 = *(v3 + 0x10);
    v5 = *(v3 + 0x18);
    v6 = result;
    sub_1D5EB1500(*(v3 + 16));

    sub_1D624919C(v6, a2, v4, v5);
    sub_1D5EB15C4(v4);
  }

  return result;
}

uint64_t FormatAdjustment.bind(binder:context:)(uint64_t result, uint64_t a2)
{
  v4 = *v2;
  v6 = result;
  switch((*v2 >> 59) & 0x1E | (*v2 >> 2) & 1)
  {
    case 1uLL:
    case 0xCuLL:
    case 0xDuLL:
    case 0x19uLL:
      return result;
    case 2uLL:
      v15 = v4 & 0xFFFFFFFFFFFFFFBLL;
      v16 = *(v15 + 16);
      v17 = *(v15 + 24);

      sub_1D620B270(v6, a2, v16);
      if (!v3)
      {
        sub_1D620B270(v6, a2, v17);
      }

      goto LABEL_17;
    case 3uLL:
    case 4uLL:
    case 5uLL:
    case 6uLL:
    case 7uLL:
    case 8uLL:
    case 0xAuLL:
    case 0xBuLL:
      v7 = *((v4 & 0xFFFFFFFFFFFFFFBLL) + 0x10);

      sub_1D620B270(v6, a2, v7);

    case 9uLL:
      v9 = *((v4 & 0xFFFFFFFFFFFFFFBLL) + 0x10);

      sub_1D620B270(v6, a2, v9);

    case 0xEuLL:
    case 0xFuLL:
    case 0x16uLL:

      FormatTextNodeStyle.bind(binder:context:)(v6, a2);

    case 0x10uLL:
    case 0x11uLL:
    case 0x12uLL:
    case 0x13uLL:

      FormatTextNodeStyle.bind(binder:context:)(v6, a2);

    case 0x14uLL:
    case 0x15uLL:
      v8 = *((v4 & 0xFFFFFFFFFFFFFFBLL) + 0x10);

      sub_1D62B41FC(a2, v8);

    case 0x17uLL:
      v14 = *((v4 & 0xFFFFFFFFFFFFFFBLL) + 0x10);

      sub_1D623D89C(v6, a2, v14);
      goto LABEL_17;
    case 0x18uLL:

      FormatGeometryAdjustment.bind(binder:context:)(v6, a2);

    default:
      v10 = *(v4 + 16);
      v11 = *(v4 + 24);
      v12 = *(v4 + 32);
      v13 = *(v4 + 40);

      sub_1D620B270(v6, a2, v10);
      if (!v3)
      {
        sub_1D620B270(v6, a2, v11);
        sub_1D620B270(v6, a2, v12);
        sub_1D620B270(v6, a2, v13);
      }

LABEL_17:
  }
}

uint64_t FormatEquation.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = type metadata accessor for FormatEquationToken();
  return Array<A>.bind(binder:context:)(a1, a2, v5, v6, &protocol witness table for FormatEquationToken<A>);
}

void sub_1D623D6A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = a2;
  v15 = sub_1D725BC7C();
  MEMORY[0x1EEE9AC00](v15, v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (v9 + 8);
  v11 = a3 + 40;
  v12 = *(a3 + 16) + 1;
  do
  {
    if (!--v12)
    {
      break;
    }

    v14 = *(v11 - 8);
    v17 = v14;
    swift_retain_n();

    sub_1D71C3968(a1, v16, v8);
    if (v3)
    {

      return;
    }

    if ((sub_1D725BC6C() & 1) == 0)
    {
      v17 = v14;

      FormatExpression.bind(binder:context:)(a1, v16);
    }

    v11 += 16;
    v13 = sub_1D725BC5C();

    (*v10)(v8, v15);
  }

  while ((v13 & 1) == 0);
}

uint64_t sub_1D623D89C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a2;
  v19 = sub_1D725BC7C();
  MEMORY[0x1EEE9AC00](v19, v7);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v12 = (v11 + 8);

  v18[1] = a3;
  v13 = a3 + 40;
  v14 = v10 + 1;
  while (1)
  {
    if (!--v14)
    {
    }

    v16 = *(v13 - 8);
    v21 = v16;
    swift_retain_n();

    sub_1D71C3968(a1, v20, v9);
    if (v4)
    {
      break;
    }

    if ((sub_1D725BC6C() & 1) == 0)
    {
      v21 = v16;

      FormatExpression.bind(binder:context:)(a1, v20);
    }

    v13 += 16;
    v15 = sub_1D725BC5C();

    (*v12)(v9, v19);
    if (v15)
    {
    }
  }
}

uint64_t sub_1D623DAD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = MEMORY[0x1EEE9AC00](a1, a2);
  (*(v8 + 16))(&v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v9, v5, v6);
  sub_1D5B49474(0, &qword_1EDF329A8);
  if (swift_dynamicCast())
  {
    v10 = *(&v14 + 1);
    v11 = v15;
    __swift_project_boxed_opaque_existential_1(&v13, *(&v14 + 1));
    (*(v11 + 8))(a1, a2, v10, v11);
    return __swift_destroy_boxed_opaque_existential_1(&v13);
  }

  else
  {
    v15 = 0;
    v13 = 0u;
    v14 = 0u;
    return sub_1D5BFB774(&v13, &qword_1EDF329A0, &qword_1EDF329A8);
  }
}

uint64_t FormatExpression.bind(binder:context:)(uint64_t result, uint64_t a2)
{
  v5 = result;
  v6 = *v2;
  v7 = *v2 >> 60;
  if (v7 <= 7)
  {
    if (v7 <= 3)
    {
      if ((v7 - 2) >= 2 && v7 != 0)
      {
        v9 = v6 & 0xFFFFFFFFFFFFFFFLL;
        v10 = *(v9 + 48);
        if ((v10 & 0x80000000) == 0 && (v10 & 1) == 0)
        {
          v11 = *(v9 + 16);
          v12 = *(v9 + 24);
          v14 = *(v9 + 40);
          v13 = *(v9 + 32);

          sub_1D5C58190(v13, v14, 0);
          FormatOptionValue.bind(binder:context:)(v5, a2);
          return sub_1D60576D0(v11, v12, v13, v14, v10);
        }
      }

      return result;
    }

    if ((v7 - 5) < 2)
    {
      return result;
    }

    if (v7 == 4)
    {
      v17 = (v6 & 0xFFFFFFFFFFFFFFFLL);
      v18 = v17[5];
      v34[3] = v17[4];
      v34[4] = v18;
      v35[0] = v17[6];
      *(v35 + 11) = *(v17 + 107);
      v19 = v17[2];
      v34[0] = v17[1];
      v34[1] = v19;
      v34[2] = v17[3];
      v20 = v17[6];
      v32[11] = v17[5];
      v33[0] = v20;
      *(v33 + 11) = *(v17 + 107);
      v21 = v17[2];
      v32[7] = v17[1];
      v32[8] = v21;
      v22 = v17[4];
      v32[9] = v17[3];
      v32[10] = v22;
      sub_1D62B48E4(v34, v32);
      FormatBindingExpression.bind(binder:context:)(v5, a2);
      return sub_1D62B4940(v34);
    }

    *&v34[0] = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    swift_retain_n();
    FormatExpression.bind(binder:context:)(v5, a2);
  }

  if (v7 <= 10)
  {
    v15 = v6 & 0xFFFFFFFFFFFFFFFLL;
    if (v7 == 8)
    {
      v29 = *(v15 + 24);
      *&v34[0] = *(v15 + 16);

      swift_retain_n();
      FormatExpression.bind(binder:context:)(v5, a2);
      if (!v3)
      {

        *&v34[0] = v29;

        FormatExpression.bind(binder:context:)(v5, a2);
      }
    }

    else
    {
      if (v7 != 9)
      {
        v30 = *(v15 + 16);
        v31 = *(v15 + 24);
        *&v34[0] = v30;
        WORD4(v34[0]) = v31;
        return FormatBoolBinding.bind(binder:context:)(result, a2);
      }

      v16 = *(v15 + 24);
      *&v34[0] = *(v15 + 16);

      swift_retain_n();
      FormatExpression.bind(binder:context:)(v5, a2);
      if (!v3)
      {

        *&v34[0] = v16;

        FormatExpression.bind(binder:context:)(v5, a2);
      }
    }
  }

  if ((v7 - 13) >= 2 && v7 != 11)
  {
    v24 = v6 & 0xFFFFFFFFFFFFFFFLL;
    v25 = *(v24 + 32);
    v27 = *(v24 + 40);
    v26 = *(v24 + 48);
    v28 = *(v24 + 56);

    sub_1D6057D14(v25, v27, v26, v28);
    sub_1D6057D14(v25, v27, v26, v28);
    sub_1D620B270(v5, a2, v25);
    if (v28 >> 6 >= 2 && !v3)
    {
      FormatTextNodeStyle.bind(binder:context:)(v5, a2);
    }

    sub_1D6057D74(v25, v27, v26, v28);
    return sub_1D6057D74(v25, v27, v26, v28);
  }

  return result;
}

uint64_t FormatAnimationNodeAnimation.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v6 = *v2 >> 62;
  if (!v6)
  {

    FormatAnimationNodeBasicAnimation.bind(binder:context:)(a1, a2);
  }

  if (v6 == 1)
  {

    FormatAnimationNodeSpringAnimation.bind(binder:context:)(a1, a2);
  }

  v8 = *((*v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v9 = *(v8 + 16);

  sub_1D621397C(a1, a2, v9);
  if (v3)
  {
  }

  v10 = *(v8 + 104);
  v11 = *(v8 + 136);
  v32 = *(v8 + 120);
  v33[0] = v11;
  *(v33 + 9) = *(v8 + 145);
  v12 = *(v8 + 40);
  v13 = *(v8 + 72);
  v28 = *(v8 + 56);
  v29 = v13;
  v30 = *(v8 + 88);
  v31 = v10;
  v26 = *(v8 + 24);
  v27 = v12;
  memmove(__dst, (v8 + 24), 0x89uLL);
  if (sub_1D60486AC(__dst) == 1)
  {
  }

  v22 = __dst[6];
  v23[0] = v35[0];
  *(v23 + 9) = *(v35 + 9);
  v18 = __dst[2];
  v19 = __dst[3];
  v20 = __dst[4];
  v21 = __dst[5];
  v16 = __dst[0];
  v17 = __dst[1];
  v24[6] = v32;
  v25[0] = v33[0];
  *(v25 + 9) = *(v33 + 9);
  v24[2] = v28;
  v24[3] = v29;
  v24[4] = v30;
  v24[5] = v31;
  v24[0] = v26;
  v24[1] = v27;
  sub_1D62B4994(v24, v14);
  FormatMediaTiming.bind(binder:context:)(a1, a2);

  v14[6] = v22;
  v15[0] = v23[0];
  *(v15 + 9) = *(v23 + 9);
  v14[2] = v18;
  v14[3] = v19;
  v14[4] = v20;
  v14[5] = v21;
  v14[0] = v16;
  v14[1] = v17;
  return sub_1D62B49F0(v14);
}

uint64_t FormatAnimationNodeBasicAnimation.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = *(v2 + 32);
  if (*(v2 + 64) != 4)
  {
    if (v7)
    {

      sub_1D620B270(a1, a2, v7);
      if (v3)
      {
      }
    }

    if (v6)
    {

      sub_1D620B270(a1, a2, v6);
      if (v3)
      {
      }
    }

    if (!v8)
    {
      goto LABEL_16;
    }

    sub_1D620B270(a1, a2, v8);
    if (!v3)
    {

      goto LABEL_16;
    }
  }

  v10 = *(v2 + 40);
  v9 = *(v2 + 48);
  v11 = *(v2 + 56);
  if (v7)
  {

    sub_1D620B270(a1, a2, v7);
    if (v3)
    {
      v12 = v7;
      return sub_1D5CDE22C(v12);
    }

    v60 = v11;
    sub_1D620B270(a1, a2, v6);
    sub_1D5CDE22C(v7);
  }

  if (v8)
  {

    sub_1D620B270(a1, a2, v8);
    if (v3)
    {
      v12 = v8;
      return sub_1D5CDE22C(v12);
    }

    sub_1D620B270(a1, a2, v10);
    sub_1D5CDE22C(v8);
  }

  if (v9)
  {

    sub_1D620B270(a1, a2, v9);
    if (v3)
    {
      v12 = v9;
      return sub_1D5CDE22C(v12);
    }

    sub_1D620B270(a1, a2, v11);
    sub_1D5CDE22C(v9);
  }

LABEL_16:
  v14 = *(v2 + 88);
  if (v14 != 255)
  {
    v15 = *(v2 + 80);
    *&v52 = *(v2 + 72);
    *(&v52 + 1) = v15;
    LOBYTE(v53) = v14 & 1;
    sub_1D6189668(v52, v15, v14);
    sub_1D60ECF10(a2);
    if (v3)
    {
      return sub_1D5D2F2C8(v52, *(&v52 + 1), v53);
    }

    sub_1D5D2F2C8(v52, *(&v52 + 1), v53);
  }

  v16 = *(v2 + 112);
  if (v16 != 255)
  {
    v17 = *(v2 + 104);
    *&v52 = *(v2 + 96);
    *(&v52 + 1) = v17;
    LOBYTE(v53) = v16 & 1;
    sub_1D6189668(v52, v17, v16);
    sub_1D60ECF10(a2);
    if (v3)
    {
      return sub_1D5D2F2C8(v52, *(&v52 + 1), v53);
    }

    sub_1D5D2F2C8(v52, *(&v52 + 1), v53);
  }

  v18 = *(v2 + 200);
  v19 = *(v2 + 232);
  v50 = *(v2 + 216);
  v51[0] = v19;
  *(v51 + 9) = *(v2 + 241);
  v20 = *(v2 + 136);
  v21 = *(v2 + 168);
  v46 = *(v2 + 152);
  v47 = v21;
  v48 = *(v2 + 184);
  v49 = v18;
  v44 = *(v2 + 120);
  v45 = v20;
  v22 = *(v2 + 200);
  v23 = *(v2 + 232);
  v58 = *(v2 + 216);
  v59[0] = v23;
  *(v59 + 9) = *(v2 + 241);
  v24 = *(v2 + 136);
  v25 = *(v2 + 168);
  v54 = *(v2 + 152);
  v55 = v25;
  v56 = *(v2 + 184);
  v57 = v22;
  v52 = *(v2 + 120);
  v53 = v24;
  result = sub_1D60486AC(&v52);
  if (result != 1)
  {
    v40 = v58;
    v41[0] = v59[0];
    *(v41 + 9) = *(v59 + 9);
    v36 = v54;
    v37 = v55;
    v38 = v56;
    v39 = v57;
    v34 = v52;
    v35 = v53;
    v42[6] = v50;
    v43[0] = v51[0];
    *(v43 + 9) = *(v51 + 9);
    v42[2] = v46;
    v42[3] = v47;
    v42[4] = v48;
    v42[5] = v49;
    v42[0] = v44;
    v42[1] = v45;
    sub_1D62B4994(v42, &v26);
    FormatMediaTiming.bind(binder:context:)(a1, a2);
    if (v3)
    {
      v32 = v40;
      v33[0] = v41[0];
      *(v33 + 9) = *(v41 + 9);
      v28 = v36;
      v29 = v37;
      v30 = v38;
      v31 = v39;
      v26 = v34;
      v27 = v35;
      return sub_1D62B49F0(&v26);
    }

    else
    {
      v32 = v40;
      v33[0] = v41[0];
      *(v33 + 9) = *(v41 + 9);
      v28 = v36;
      v29 = v37;
      v30 = v38;
      v31 = v39;
      v26 = v34;
      v27 = v35;
      return sub_1D62B49F0(&v26);
    }
  }

  return result;
}

uint64_t FormatAnimationNodeSpringAnimation.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v68 = a1;
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = *(v2 + 32);
  v7 = *(v2 + 40);
  v10 = *(v2 + 48);
  v9 = *(v2 + 56);
  v11 = *(v2 + 64);
  if (v11 > 5)
  {
    if (*(v2 + 64) > 8u)
    {
      if (v11 == 9)
      {

        sub_1D623F728(v68, a2, v5, v6, v8);
        v12 = a2;
        v13 = v3;
        if (v3)
        {
          return sub_1D62B4A44(v5, v6, v8, v7, v10, v9, 9u);
        }
      }

      else if (v11 == 10)
      {

        sub_1D623F728(v68, a2, v5, v6, v8);
        v12 = a2;
        v13 = v3;
        if (v3)
        {
          return sub_1D62B4A44(v5, v6, v8, v7, v10, v9, 0xAu);
        }
      }

      else
      {

        sub_1D623F728(v68, a2, v5, v6, v8);
        v12 = a2;
        v13 = v3;
        if (v3)
        {
          return sub_1D62B4A44(v5, v6, v8, v7, v10, v9, 0xBu);
        }
      }
    }

    else if (v11 == 6)
    {

      sub_1D623F728(v68, a2, v5, v6, v8);
      v12 = a2;
      v13 = v3;
      if (v3)
      {
        return sub_1D62B4A44(v5, v6, v8, v7, v10, v9, 6u);
      }
    }

    else if (v11 == 7)
    {

      sub_1D623F728(v68, a2, v5, v6, v8);
      v12 = a2;
      v13 = v3;
      if (v3)
      {
        return sub_1D62B4A44(v5, v6, v8, v7, v10, v9, 7u);
      }
    }

    else
    {

      sub_1D623F728(v68, a2, v5, v6, v8);
      v12 = a2;
      v13 = v3;
      if (v3)
      {
        return sub_1D62B4A44(v5, v6, v8, v7, v10, v9, 8u);
      }
    }

    goto LABEL_36;
  }

  if (*(v2 + 64) > 2u)
  {
    if (v11 == 3)
    {

      sub_1D623F728(v68, a2, v5, v6, v8);
      v12 = a2;
      v13 = v3;
      if (v3)
      {
        return sub_1D62B4A44(v5, v6, v8, v7, v10, v9, 3u);
      }
    }

    else
    {
      if (v11 == 4)
      {
        v62 = *(v2 + 16);
        v63 = v6;
        v64 = v8;
        v65 = v7;
        v66 = v10;
        v67 = v9;
        sub_1D5D615EC(v5);
        sub_1D5D615EC(v8);
        sub_1D5D615EC(v10);
        v33 = a2;
        sub_1D623F7F4(v68, a2);
        v13 = v3;
        if (v3)
        {
          return sub_1D62B4A44(v5, v6, v8, v7, v10, v9, 4u);
        }

        goto LABEL_37;
      }

      sub_1D623F728(v68, a2, v5, v6, v8);
      v12 = a2;
      v13 = v3;
      if (v3)
      {
        return sub_1D62B4A44(v5, v6, v8, v7, v10, v9, 5u);
      }
    }

LABEL_36:
    v33 = v12;
LABEL_37:
    sub_1D62B4A44(v5, v6, v8, v7, v10, v9, v11);
    goto LABEL_38;
  }

  if (*(v2 + 64))
  {
    if (v11 == 1)
    {

      sub_1D623F728(v68, a2, v5, v6, v8);
      v12 = a2;
      v13 = v3;
      if (v3)
      {
        return sub_1D62B4A44(v5, v6, v8, v7, v10, v9, 1u);
      }
    }

    else
    {

      sub_1D623F728(v68, a2, v5, v6, v8);
      v12 = a2;
      v13 = v3;
      if (v3)
      {
        return sub_1D62B4A44(v5, v6, v8, v7, v10, v9, 2u);
      }
    }

    goto LABEL_36;
  }

  sub_1D623F728(v68, a2, v5, v6, v8);
  v15 = a2;
  v13 = v3;
  result = sub_1D62B4A44(v5, v6, v8, v7, v10, v9, 0);
  if (v3)
  {
    return result;
  }

  v33 = v15;
LABEL_38:
  v16 = *(v2 + 88);
  if (v16 != 255)
  {
    v17 = *(v2 + 80);
    *&v54 = *(v2 + 72);
    *(&v54 + 1) = v17;
    LOBYTE(v55) = v16 & 1;
    sub_1D6189668(v54, v17, v16);
    sub_1D60ECF10(v33);
    if (v13)
    {
      return sub_1D5D2F2C8(v54, *(&v54 + 1), v55);
    }

    sub_1D5D2F2C8(v54, *(&v54 + 1), v55);
  }

  v18 = *(v2 + 112);
  if (v18 != 255)
  {
    v19 = *(v2 + 104);
    *&v54 = *(v2 + 96);
    *(&v54 + 1) = v19;
    LOBYTE(v55) = v18 & 1;
    sub_1D6189668(v54, v19, v18);
    sub_1D60ECF10(v33);
    if (v13)
    {
      return sub_1D5D2F2C8(v54, *(&v54 + 1), v55);
    }

    sub_1D5D2F2C8(v54, *(&v54 + 1), v55);
  }

  v20 = *(v2 + 120);
  v21 = v68;
  if (!v20 || (result = sub_1D620B270(v68, v33, v20), !v13))
  {
    v22 = *(v2 + 128);
    if (!v22 || (result = sub_1D620B270(v68, v33, v22), !v13))
    {
      v23 = *(v2 + 136);
      if (!v23 || (result = sub_1D620B270(v68, v33, v23), !v13))
      {
        v24 = *(v2 + 144);
        if (!v24 || (result = sub_1D620B270(v68, v33, v24), !v13))
        {
          v25 = *(v2 + 232);
          v26 = *(v2 + 264);
          v52 = *(v2 + 248);
          v53[0] = v26;
          *(v53 + 9) = *(v2 + 273);
          v27 = *(v2 + 168);
          v28 = *(v2 + 200);
          v48 = *(v2 + 184);
          v49 = v28;
          v50 = *(v2 + 216);
          v51 = v25;
          v46 = *(v2 + 152);
          v47 = v27;
          v29 = *(v2 + 232);
          v30 = *(v2 + 264);
          v60 = *(v2 + 248);
          v61[0] = v30;
          *(v61 + 9) = *(v2 + 273);
          v31 = *(v2 + 168);
          v32 = *(v2 + 200);
          v56 = *(v2 + 184);
          v57 = v32;
          v58 = *(v2 + 216);
          v59 = v29;
          v54 = *(v2 + 152);
          v55 = v31;
          result = sub_1D60486AC(&v54);
          if (result != 1)
          {
            v42 = v60;
            v43[0] = v61[0];
            *(v43 + 9) = *(v61 + 9);
            v38 = v56;
            v39 = v57;
            v40 = v58;
            v41 = v59;
            v36 = v54;
            v37 = v55;
            v44[6] = v52;
            v45[0] = v53[0];
            *(v45 + 9) = *(v53 + 9);
            v44[2] = v48;
            v44[3] = v49;
            v44[4] = v50;
            v44[5] = v51;
            v44[0] = v46;
            v44[1] = v47;
            sub_1D62B4994(v44, v34);
            FormatMediaTiming.bind(binder:context:)(v21, v33);
            v34[6] = v42;
            v35[0] = v43[0];
            *(v35 + 9) = *(v43 + 9);
            v34[2] = v38;
            v34[3] = v39;
            v34[4] = v40;
            v34[5] = v41;
            v34[0] = v36;
            v34[1] = v37;
            return sub_1D62B49F0(v34);
          }
        }
      }
    }
  }

  return result;
}

void FormatAnimationNodeGroupAnimation.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  sub_1D621397C(a1, a2, *(v2 + 16));
  if (!v3)
  {
    v6 = *(v2 + 104);
    v7 = *(v2 + 136);
    v32 = *(v2 + 120);
    v33[0] = v7;
    *(v33 + 9) = *(v2 + 145);
    v8 = *(v2 + 40);
    v9 = *(v2 + 72);
    v28 = *(v2 + 56);
    v29 = v9;
    v30 = *(v2 + 88);
    v31 = v6;
    v26 = *(v2 + 24);
    v27 = v8;
    v10 = *(v2 + 104);
    v11 = *(v2 + 136);
    v40 = *(v2 + 120);
    v41[0] = v11;
    *(v41 + 9) = *(v2 + 145);
    v12 = *(v2 + 40);
    v13 = *(v2 + 72);
    v36 = *(v2 + 56);
    v37 = v13;
    v38 = *(v2 + 88);
    v39 = v10;
    v34 = *(v2 + 24);
    v35 = v12;
    if (sub_1D60486AC(&v34) != 1)
    {
      v22 = v40;
      v23[0] = v41[0];
      *(v23 + 9) = *(v41 + 9);
      v18 = v36;
      v19 = v37;
      v20 = v38;
      v21 = v39;
      v16 = v34;
      v17 = v35;
      v24[6] = v32;
      v25[0] = v33[0];
      *(v25 + 9) = *(v33 + 9);
      v24[2] = v28;
      v24[3] = v29;
      v24[4] = v30;
      v24[5] = v31;
      v24[0] = v26;
      v24[1] = v27;
      sub_1D62B4994(v24, v14);
      FormatMediaTiming.bind(binder:context:)(a1, a2);
      v14[6] = v22;
      v15[0] = v23[0];
      *(v15 + 9) = *(v23 + 9);
      v14[2] = v18;
      v14[3] = v19;
      v14[4] = v20;
      v14[5] = v21;
      v14[0] = v16;
      v14[1] = v17;
      sub_1D62B49F0(v14);
    }
  }
}

uint64_t FormatAnimationNodeKeyPath.bind(binder:context:)(uint64_t result, uint64_t a2)
{
  v5 = result;
  v7 = *v2;
  v6 = *(v2 + 8);
  v8 = *(v2 + 16);
  if (*(v2 + 48) != 4)
  {
    if (v7)
    {

      sub_1D620B270(v5, a2, v7);
      if (v3)
      {
      }
    }

    if (!v6)
    {
LABEL_11:
      if (!v8)
      {
        return result;
      }

      sub_1D620B270(v5, a2, v8);
    }

    sub_1D620B270(v5, a2, v6);
    if (!v3)
    {

      goto LABEL_11;
    }
  }

  v10 = *(v2 + 24);
  v9 = *(v2 + 32);
  v11 = *(v2 + 40);
  if (v7)
  {

    sub_1D620B270(v5, a2, v7);
    if (v3)
    {
      v12 = v7;
      return sub_1D5CDE22C(v12);
    }

    sub_1D620B270(v5, a2, v6);
    result = sub_1D5CDE22C(v7);
  }

  if (v8)
  {

    sub_1D620B270(v5, a2, v8);
    if (v3)
    {
      v12 = v8;
      return sub_1D5CDE22C(v12);
    }

    sub_1D620B270(v5, a2, v10);
    result = sub_1D5CDE22C(v8);
  }

  if (v9)
  {

    sub_1D620B270(v5, a2, v9);
    if (!v3)
    {
      sub_1D620B270(v5, a2, v11);
    }

    v12 = v9;
    return sub_1D5CDE22C(v12);
  }

  return result;
}

uint64_t FormatMediaTiming.bind(binder:context:)(uint64_t result, uint64_t a2)
{
  v5 = result;
  v6 = *v2;
  v7 = *(v2 + 8);
  v8 = *(v2 + 16);
  v9 = *(v2 + 24);
  v11 = *(v2 + 40);
  v10 = *(v2 + 48);
  v21 = *(v2 + 64);
  v22 = *(v2 + 56);
  v12 = *(v2 + 72);
  v23 = *(v2 + 80);
  v15 = *(v2 + 88);
  v16 = *(v2 + 96);
  v20 = *(v2 + 112);
  v19 = *(v2 + 120);
  v17 = *(v2 + 104);
  v18 = *(v2 + 128);
  v13 = *(v2 + 136);
  if (v6)
  {
    result = sub_1D620B270(result, a2, v6);
    if (v3)
    {
      return result;
    }
  }

  if (v7)
  {
    result = sub_1D620B270(v5, a2, v7);
    if (v3)
    {
      return result;
    }
  }

  if (v8)
  {
    result = sub_1D620B270(v5, a2, v8);
    if (v3)
    {
      return result;
    }
  }

  if (v9)
  {
    result = sub_1D620B270(v5, a2, v9);
    if (v3)
    {
      return result;
    }
  }

  if (v11)
  {
    result = sub_1D620B270(v5, a2, v11);
    if (v3)
    {
      return result;
    }
  }

  if (v10)
  {
    result = sub_1D620B270(v5, a2, v10);
    if (v3)
    {
      return result;
    }
  }

  v14 = v3;
  if (v12 != 255)
  {
    sub_1D6189668(v22, v21, v12);
    sub_1D60ECF10(a2);
    result = sub_1D5D2F2C8(v22, v21, v12 & 1);
    if (v3)
    {
      return result;
    }

    v14 = 0;
  }

  if (v20 == 255 || (v20 & 1) == 0)
  {
    if (v13 == 255)
    {
      return result;
    }

LABEL_21:
    sub_1D6189668(v19, v18, v13);
    sub_1D60ECF10(a2);
    return sub_1D5D2F2C8(v19, v18, v13 & 1);
  }

  sub_1D618903C(v23, v15, v16, v17, 1);
  sub_1D620B270(v5, a2, v23);
  if (v14)
  {
    return sub_1D62B4B50(v23, v15, v16, v17, v20);
  }

  sub_1D620B270(v5, a2, v15);
  sub_1D620B270(v5, a2, v16);
  sub_1D620B270(v5, a2, v17);
  result = sub_1D62B4B50(v23, v15, v16, v17, v20);
  if (v13 != 255)
  {
    goto LABEL_21;
  }

  return result;
}

void sub_1D623F5CC(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  sub_1D621397C(a1, a2, *(*v2 + 16));
  if (!v3)
  {
    v7 = *(v6 + 104);
    v8 = *(v6 + 136);
    v29 = *(v6 + 120);
    v30[0] = v8;
    *(v30 + 9) = *(v6 + 145);
    v9 = *(v6 + 40);
    v10 = *(v6 + 72);
    v25 = *(v6 + 56);
    v26 = v10;
    v27 = *(v6 + 88);
    v28 = v7;
    v23 = *(v6 + 24);
    v24 = v9;
    memmove(__dst, (v6 + 24), 0x89uLL);
    if (sub_1D60486AC(__dst) != 1)
    {
      v19 = __dst[6];
      v20[0] = v32[0];
      *(v20 + 9) = *(v32 + 9);
      v15 = __dst[2];
      v16 = __dst[3];
      v17 = __dst[4];
      v18 = __dst[5];
      v13 = __dst[0];
      v14 = __dst[1];
      v21[6] = v29;
      v22[0] = v30[0];
      *(v22 + 9) = *(v30 + 9);
      v21[2] = v25;
      v21[3] = v26;
      v21[4] = v27;
      v21[5] = v28;
      v21[0] = v23;
      v21[1] = v24;
      sub_1D62B4994(v21, v11);
      FormatMediaTiming.bind(binder:context:)(a1, a2);
      v11[6] = v19;
      v12[0] = v20[0];
      *(v12 + 9) = *(v20 + 9);
      v11[2] = v15;
      v11[3] = v16;
      v11[4] = v17;
      v11[5] = v18;
      v11[0] = v13;
      v11[1] = v14;
      sub_1D62B49F0(v11);
    }
  }
}

uint64_t sub_1D623F728(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = result;
  if (!a3 || (, sub_1D620B270(v9, a2, a3), result = , !v5))
  {
    if (!a4 || (, sub_1D620B270(v9, a2, a4), result = , !v5))
    {
      if (a5)
      {

        sub_1D620B270(v9, a2, a5);
      }
    }
  }

  return result;
}

uint64_t sub_1D623F7F4(uint64_t result, uint64_t a2)
{
  v5 = result;
  v6 = *v2;
  if (*v2)
  {
    v7 = v2[1];

    sub_1D620B270(v5, a2, v6);
    if (v3)
    {
LABEL_6:
      v9 = v6;
      return sub_1D5CDE22C(v9);
    }

    sub_1D620B270(v5, a2, v7);
    result = sub_1D5CDE22C(v6);
  }

  v6 = v2[2];
  if (v6)
  {
    v8 = v2[3];

    sub_1D620B270(v5, a2, v6);
    if (v3)
    {
      goto LABEL_6;
    }

    sub_1D620B270(v5, a2, v8);
    result = sub_1D5CDE22C(v6);
  }

  v10 = v2[4];
  if (v10)
  {
    v11 = v2[5];

    sub_1D620B270(v5, a2, v10);
    if (!v3)
    {
      sub_1D620B270(v5, a2, v11);
    }

    v9 = v10;
    return sub_1D5CDE22C(v9);
  }

  return result;
}

uint64_t FormatAnimationNodeKeyPathAnimation.bind(binder:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v47 = a1;
  v44 = a3;
  v6 = *(a3 + 16);
  v7 = sub_1D726393C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v43 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v42 - v13;
  v17 = MEMORY[0x1EEE9AC00](v15, v16);
  v19 = &v42 - v18;
  v20 = v4;
  v55 = *(v8 + 16);
  v55(&v42 - v18, v4, v7, v17);
  v21 = *(v6 - 8);
  v22 = *(v21 + 48);
  v50 = v21 + 48;
  v51 = v22;
  v23 = v22(v19, 1, v6);
  v45 = v7;
  v46 = a2;
  v48 = v8;
  if (v23 == 1)
  {
    v24 = v49;
    (*(v8 + 8))(v19, v7);
LABEL_7:
    v54 = 0;
    v52 = 0u;
    v53 = 0u;
    v26 = v20;
    goto LABEL_8;
  }

  v24 = v49;
  sub_1D5B49474(0, &qword_1EDF329A8);
  if (!swift_dynamicCast())
  {
    goto LABEL_7;
  }

  v25 = *(&v53 + 1);
  v26 = v20;
  if (!*(&v53 + 1))
  {
LABEL_8:
    sub_1D5BFB774(&v52, &qword_1EDF329A0, &qword_1EDF329A8);
    v28 = v24;
    v30 = v45;
    goto LABEL_9;
  }

  v27 = v54;
  __swift_project_boxed_opaque_existential_1(&v52, *(&v53 + 1));
  (*(v27 + 8))(v47, v46, v25, v27);
  v28 = v24;
  result = __swift_destroy_boxed_opaque_existential_1(&v52);
  v30 = v45;
  if (v24)
  {
    return result;
  }

LABEL_9:
  v31 = v44;
  (v55)(v14, v26 + *(v44 + 36), v30);
  v32 = v51(v14, 1, v6);
  v33 = v47;
  if (v32 == 1)
  {
    (*(v48 + 8))(v14, v30);
LABEL_15:
    v54 = 0;
    v52 = 0u;
    v53 = 0u;
    goto LABEL_16;
  }

  sub_1D5B49474(0, &qword_1EDF329A8);
  if (!swift_dynamicCast())
  {
    goto LABEL_15;
  }

  v34 = *(&v53 + 1);
  if (!*(&v53 + 1))
  {
LABEL_16:
    sub_1D5BFB774(&v52, &qword_1EDF329A0, &qword_1EDF329A8);
    goto LABEL_17;
  }

  v49 = v28;
  v35 = v54;
  __swift_project_boxed_opaque_existential_1(&v52, *(&v53 + 1));
  v36 = v49;
  (*(v35 + 8))(v33, v46, v34, v35);
  result = __swift_destroy_boxed_opaque_existential_1(&v52);
  if (v36)
  {
    return result;
  }

LABEL_17:
  v37 = v43;
  (v55)(v43, v26 + *(v31 + 40), v30);
  v38 = v51(v37, 1, v6);
  v39 = v46;
  if (v38 == 1)
  {
    (*(v48 + 8))(v37, v30);
LABEL_22:
    v54 = 0;
    v52 = 0u;
    v53 = 0u;
    return sub_1D5BFB774(&v52, &qword_1EDF329A0, &qword_1EDF329A8);
  }

  sub_1D5B49474(0, &qword_1EDF329A8);
  if (!swift_dynamicCast())
  {
    goto LABEL_22;
  }

  v40 = *(&v53 + 1);
  if (*(&v53 + 1))
  {
    v41 = v54;
    __swift_project_boxed_opaque_existential_1(&v52, *(&v53 + 1));
    (*(v41 + 8))(v47, v39, v40, v41);
    return __swift_destroy_boxed_opaque_existential_1(&v52);
  }

  return sub_1D5BFB774(&v52, &qword_1EDF329A0, &qword_1EDF329A8);
}

uint64_t sub_1D623FE0C(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 48) == 4)
  {
    return sub_1D623F7F4(a1, a2);
  }

  else
  {
    return sub_1D623F728(a1, a2, *v2, *(v2 + 8), *(v2 + 16));
  }
}

uint64_t FormatAnimationNodeStyle.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v6 = *(v2 + 72);
  if (!v6 || (, sub_1D621397C(a1, a2, v6), result = , !v3))
  {
    swift_beginAccess();
    v8 = *(v2 + 88);

    sub_1D621D544(a1, a2, v8);
  }

  return result;
}