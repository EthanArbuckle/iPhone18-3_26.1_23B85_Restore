uint64_t sub_1BF48F56C@<X0>(uint64_t a1@<X8>)
{
  v1 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](98);
  MEMORY[0x1BFB58C90](0x200A5443454C4553, 0xEB00000000202020);
  v2 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v2);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v3 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v3);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v4 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v4);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v5 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v5);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v6 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v6);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v7 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v7);

  MEMORY[0x1BFB58C90](0x20200A4D4F52460ALL, 0xEA00000000002020);
  v8 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v8);

  MEMORY[0x1BFB58C90](0xD000000000000013, 0x80000001BF4FCD40);
  v9 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v9);

  MEMORY[0x1BFB58C90](0x200A45524548570ALL, 0xEB00000000202020);
  v10 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v10);

  MEMORY[0x1BFB58C90](542329120, 0xE400000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  v11 = sub_1BF4E7794();
  v13 = v12;

  v14 = sub_1BF3D8148(v11, v13);
  v16 = v15;
  v18 = v17;
  v29 = *(v1 + 16) + 1;
  v19 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v19);

  MEMORY[0x1BFB58C90](0x676E69646E696240, 0xE800000000000000);
  sub_1BF3D8840(v14, v16, v18);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D6680(v14, v16, v18, 0x676E69646E696240, 0xE800000000000000, isUniquelyReferenced_nonNull_native);

  sub_1BF3D88B8(v14, v16, v18);

  MEMORY[0x1BFB58C90](0x2020200A444E4120, 0xE900000000000020);
  v21 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v21);

  MEMORY[0x1BFB58C90](807419168, 0xE400000000000000);
  if (swift_weakLoadStrong())
  {
    v22 = sub_1BF3E4F48(v1);
    if (v28)
    {
    }

    else
    {
      v24 = v22;

      if (*(v24 + 16))
      {
        sub_1BF48FB24(v24, a1);

        v25 = type metadata accessor for ExtensionMetadata();
        return (*(*(v25 - 8) + 56))(a1, 0, 1, v25);
      }

      else
      {
        v26 = type metadata accessor for ExtensionMetadata();
        (*(*(v26 - 8) + 56))(a1, 1, 1, v26);
      }
    }
  }

  else
  {
    result = sub_1BF4E9464();
    __break(1u);
  }

  return result;
}

int *sub_1BF48FB24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v212 = &v205 - v9;
  v10 = *(a1 + 16);
  if (!v10)
  {
    goto LABEL_167;
  }

  v209 = v8;
  v210 = v7;
  v208 = a2;
  v213 = v2;
  v13 = *(a1 + 32);
  v12 = a1 + 32;
  v11 = v13;

  v14 = sub_1BF4E92F4();
  v16 = sub_1BF48063C(v14, v15, v13);
  v18 = v17;
  v20 = v19;
  v21 = ~v19;

  if (!v21)
  {
    goto LABEL_167;
  }

  v219 = sub_1BF4244EC(v16, v18, v20);
  v23 = v22;
  sub_1BF3DB1FC(v16, v18, v20);
  v216 = v23;
  if (!v23)
  {
    goto LABEL_167;
  }

  v24 = sub_1BF4E92F4();
  v26 = sub_1BF48063C(v24, v25, v11);
  v28 = v27;
  v30 = v29;
  v31 = ~v29;

  if (!v31)
  {
    goto LABEL_167;
  }

  v218 = sub_1BF4244EC(v26, v28, v30);
  v33 = v32;
  sub_1BF3DB1FC(v26, v28, v30);
  v215 = v33;
  if (v33)
  {

    v34 = sub_1BF4E92F4();
    v36 = sub_1BF48063C(v34, v35, v11);
    v38 = v37;
    v40 = v39;
    v41 = ~v39;

    if (v41)
    {
      v214 = sub_1BF4244EC(v36, v38, v40);
      v217 = v42;
      sub_1BF3DB1FC(v36, v38, v40);
    }

    else
    {
      v214 = 0;
      v217 = 0;
    }

    v43 = 0;
    v220 = v12;
    v222 = v10;
    while (v43 != v10)
    {
      v44 = *(v12 + 8 * v43);
      v221 = v43 + 1;

      v45 = sub_1BF4E92F4();
      v47 = v46;
      v48 = (v44 + 64);
      v49 = *(v44 + 16) + 1;
      do
      {
        if (!--v49)
        {

          __break(1u);
LABEL_160:

          __break(1u);
LABEL_161:

          __break(1u);
LABEL_162:

          __break(1u);
LABEL_163:

          __break(1u);
LABEL_164:

          __break(1u);
LABEL_165:

LABEL_166:

          __break(1u);
          goto LABEL_167;
        }

        v51 = *(v48 - 2);
        v50 = *(v48 - 1);
        v52 = *v48;
        if (*(v48 - 4) == v45 && *(v48 - 3) == v47)
        {
          break;
        }

        v48 += 40;
      }

      while ((sub_1BF4E9734() & 1) == 0);

      sub_1BF3D8840(v51, v50, v52);

      v54 = sub_1BF4244EC(v51, v50, v52);
      v56 = v55;
      sub_1BF3D88B8(v51, v50, v52);
      if (!v56)
      {
        goto LABEL_160;
      }

      v12 = v220;
      if (v54 == v219 && v56 == v216)
      {

        goto LABEL_26;
      }

      v57 = sub_1BF4E9734();

      if ((v57 & 1) == 0)
      {
        goto LABEL_163;
      }

LABEL_26:
      v58 = sub_1BF4E92F4();
      v60 = sub_1BF48063C(v58, v59, v44);
      v62 = v61;
      v64 = v63;
      v65 = ~v63;

      if (!v65)
      {
        goto LABEL_161;
      }

      v66 = sub_1BF4244EC(v60, v62, v64);
      v68 = v67;
      sub_1BF3DB1FC(v60, v62, v64);
      if (!v68)
      {
        goto LABEL_162;
      }

      if (v66 != v218 || v68 != v215)
      {
        v69 = sub_1BF4E9734();

        if (v69)
        {
          goto LABEL_32;
        }

        goto LABEL_164;
      }

LABEL_32:
      v70 = sub_1BF4E92F4();
      v11 = v71;
      v72 = sub_1BF48063C(v70, v71, v44);
      v74 = v73;
      v76 = v75;
      v77 = ~v75;

      if (!v77 || (v78 = sub_1BF4244EC(v72, v74, v76), v11 = v79, sub_1BF3DB1FC(v72, v74, v76), !v11))
      {
        v10 = v222;
        if (!v217)
        {
          goto LABEL_11;
        }

        goto LABEL_166;
      }

      if (!v217)
      {
        goto LABEL_165;
      }

      v10 = v222;
      if (v78 != v214 || v11 != v217)
      {
        v80 = sub_1BF4E9734();

        if (v80)
        {
          goto LABEL_12;
        }

        __break(1u);
LABEL_40:
        v11 = &qword_1EBDD8B48;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
        sub_1BF38C8B4(&qword_1EDC9D598, &qword_1EBDD8B48, &unk_1BF4EC990);
        sub_1BF38C8B4(&qword_1EDC9D570, &qword_1EBDD8B48, &unk_1BF4EC990);
        v10 = sub_1BF38C8B4(&qword_1EDC9D590, &qword_1EBDD8B48, &unk_1BF4EC990);
        sub_1BF38C8B4(&qword_1EDC9D588, &qword_1EBDD8B48, &unk_1BF4EC990);
        v81 = v222;
        sub_1BF4E7784();
        v82 = 0;
        v211 = MEMORY[0x1E69E7CC0];
        v205 = xmmword_1BF4ECFE0;
        while (2)
        {
          v83 = v82;
LABEL_42:
          if (v83 >= v81)
          {
            goto LABEL_148;
          }

          v82 = v83 + 1;
          if (__OFADD__(v83, 1))
          {
            goto LABEL_149;
          }

          v84 = *(v12 + 8 * v83);

          v85 = sub_1BF4E92F4();
          v11 = v86;
          v87 = sub_1BF48063C(v85, v86, v84);
          v89 = v88;
          v91 = v90;
          v10 = ~v90;

          if (!v10 || (sub_1BF424370(v87, v89, v91, &v223), sub_1BF3DB1FC(v87, v89, v91), *(&v223 + 1) >> 60 == 15))
          {

            goto LABEL_53;
          }

          v221 = *(&v223 + 1);
          v92 = v223;
          v93 = sub_1BF4E92F4();
          v11 = v94;
          v95 = sub_1BF48063C(v93, v94, v84);
          v10 = v96;
          v98 = v97;
          v99 = ~v97;

          if (v99)
          {
            v219 = v92;
            v100 = sub_1BF4244E0(v95, v10, v98);
            v11 = v101;
            sub_1BF3DB1FC(v95, v10, v98);
            if (v11)
            {

              v102 = v219;
              goto LABEL_51;
            }

            v104 = sub_1BF4E92F4();
            v106 = sub_1BF48063C(v104, v105, v84);
            v10 = v107;
            v109 = v108;
            v110 = ~v108;

            v11 = v221;
            if (!v110)
            {

              v102 = v219;
              v103 = v11;
              goto LABEL_52;
            }

            v111 = v221;
            v216 = sub_1BF4244E0(v106, v10, v109);
            v11 = v112;
            sub_1BF3DB1FC(v106, v10, v109);
            if (v11)
            {

              v102 = v219;
              v103 = v111;
              goto LABEL_52;
            }

            v12 = v220;
            v81 = v222;
            if (v100)
            {

              v113 = v219;
              goto LABEL_64;
            }

            v11 = v219;
            if (v216)
            {

              v113 = v11;
LABEL_64:
              sub_1BF3DB210(v113, v111);
            }

            else
            {
              v216 = sub_1BF3901C0(0, &qword_1EDC96370, 0x1E696ACD0);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9530, &qword_1BF4F1678);
              v10 = swift_allocObject();
              *(v10 + 16) = v205;
              *(v10 + 32) = sub_1BF3901C0(0, &qword_1EDC962F0, 0x1E695DEC8);
              *(v10 + 40) = sub_1BF3901C0(0, &unk_1EDC9D6D8, 0x1E6994388);
              v114 = v213;
              sub_1BF4E8EC4();
              v213 = v114;
              if (v114)
              {
                (*(v209 + 8))(v212, v210);
                sub_1BF3DB210(v11, v111);
              }

              sub_1BF3DB210(v11, v111);

              if (v224)
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8CE8, &unk_1BF4ED970);
                if (swift_dynamicCast())
                {
                  v11 = v225;
                  if (v225)
                  {
                    v115 = v211;
                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                    {
                      v115 = sub_1BF4328DC(0, v115[2] + 1, 1, v115);
                    }

                    v118 = v115[2];
                    v117 = v115[3];
                    if (v118 >= v117 >> 1)
                    {
                      v115 = sub_1BF4328DC((v117 > 1), v118 + 1, 1, v115);
                    }

                    v115[2] = v118 + 1;
                    v211 = v115;
                    v115[v118 + 4] = v11;
                    if (v82 != v81)
                    {
                      continue;
                    }

LABEL_76:
                    v11 = v211;
                    v119 = v213;
                    v207 = sub_1BF48A044(v211);
                    v213 = v119;

                    v120 = 0;
                    v211 = MEMORY[0x1E69E7CC0];
                    while (2)
                    {
                      v121 = v120;
LABEL_78:
                      if (v121 >= v81)
                      {
                        goto LABEL_150;
                      }

                      v120 = v121 + 1;
                      if (__OFADD__(v121, 1))
                      {
                        goto LABEL_151;
                      }

                      v122 = *(v12 + 8 * v121);

                      v123 = sub_1BF4E92F4();
                      v11 = sub_1BF48063C(v123, v124, v122);
                      v126 = v125;
                      v128 = v127;
                      v10 = ~v127;

                      if (!v10 || (sub_1BF424370(v11, v126, v128, &v223), sub_1BF3DB1FC(v11, v126, v128), *(&v223 + 1) >> 60 == 15))
                      {

                        goto LABEL_89;
                      }

                      v221 = *(&v223 + 1);
                      v129 = v223;
                      v130 = sub_1BF4E92F4();
                      v11 = v131;
                      v132 = sub_1BF48063C(v130, v131, v122);
                      v134 = v133;
                      v10 = v135;
                      v136 = ~v135;

                      if (v136)
                      {
                        v219 = v129;
                        v137 = sub_1BF4244E0(v132, v134, v10);
                        v139 = v138;
                        sub_1BF3DB1FC(v132, v134, v10);
                        if (v139)
                        {

                          v140 = v219;
                          goto LABEL_87;
                        }

                        v142 = sub_1BF4E92F4();
                        v144 = sub_1BF48063C(v142, v143, v122);
                        v146 = v145;
                        v10 = v147;
                        v11 = ~v147;

                        v148 = v221;
                        if (!v11)
                        {

                          v140 = v219;
                          v141 = v148;
                          goto LABEL_88;
                        }

                        v11 = v221;
                        v216 = sub_1BF4244E0(v144, v146, v10);
                        v150 = v149;
                        sub_1BF3DB1FC(v144, v146, v10);
                        if (v150)
                        {

                          v140 = v219;
                          v141 = v11;
                          goto LABEL_88;
                        }

                        v81 = v222;
                        v10 = v219;
                        if (v137)
                        {

                          sub_1BF3DB210(v10, v11);
                          v12 = v220;
                        }

                        else
                        {
                          v12 = v220;
                          if (v216 == 2)
                          {
                            sub_1BF3901C0(0, &qword_1EDC96370, 0x1E696ACD0);
                            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9530, &qword_1BF4F1678);
                            v151 = swift_allocObject();
                            *(v151 + 16) = v205;
                            *(v151 + 32) = sub_1BF3901C0(0, &qword_1EDC962F0, 0x1E695DEC8);
                            *(v151 + 40) = sub_1BF3901C0(0, &qword_1EDC96348, 0x1E6994248);
                            v152 = v213;
                            sub_1BF4E8EC4();
                            v213 = v152;
                            if (v152)
                            {
                              goto LABEL_154;
                            }

                            sub_1BF3DB210(v10, v11);

                            if (v224)
                            {
                              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9090, &qword_1BF4F5400);
                              if (swift_dynamicCast())
                              {
                                v153 = v225;
                                if (v225)
                                {
                                  v154 = v211;
                                  v155 = swift_isUniquelyReferenced_nonNull_native();
                                  if ((v155 & 1) == 0)
                                  {
                                    v154 = sub_1BF4328B8(0, v154[2] + 1, 1, v154);
                                  }

                                  v157 = v154[2];
                                  v156 = v154[3];
                                  v11 = v157 + 1;
                                  if (v157 >= v156 >> 1)
                                  {
                                    v154 = sub_1BF4328B8((v156 > 1), v157 + 1, 1, v154);
                                  }

                                  v154[2] = v11;
                                  v211 = v154;
                                  v154[v157 + 4] = v153;
                                  if (v120 == v81)
                                  {
LABEL_111:
                                    v11 = v211;
                                    v158 = v213;
                                    v206 = sub_1BF48A33C(v211);
                                    v213 = v158;

                                    v159 = 0;
                                    v211 = MEMORY[0x1E69E7CC0];
                                    while (2)
                                    {
                                      v160 = v159;
LABEL_113:
                                      if (v160 >= v81)
                                      {
                                        goto LABEL_152;
                                      }

                                      v159 = v160 + 1;
                                      if (__OFADD__(v160, 1))
                                      {
                                        goto LABEL_153;
                                      }

                                      v161 = *(v12 + 8 * v160);

                                      v162 = sub_1BF4E92F4();
                                      v11 = sub_1BF48063C(v162, v163, v161);
                                      v165 = v164;
                                      v167 = v166;
                                      v10 = ~v166;

                                      if (!v10 || (sub_1BF424370(v11, v165, v167, &v223), sub_1BF3DB1FC(v11, v165, v167), *(&v223 + 1) >> 60 == 15))
                                      {

                                        goto LABEL_124;
                                      }

                                      v221 = *(&v223 + 1);
                                      v168 = v223;
                                      v169 = sub_1BF4E92F4();
                                      v11 = v170;
                                      v171 = sub_1BF48063C(v169, v170, v161);
                                      v173 = v172;
                                      v10 = v174;
                                      v175 = ~v174;

                                      if (v175)
                                      {
                                        v219 = v168;
                                        v176 = sub_1BF4244E0(v171, v173, v10);
                                        v178 = v177;
                                        sub_1BF3DB1FC(v171, v173, v10);
                                        if (v178)
                                        {

                                          v179 = v219;
                                          goto LABEL_122;
                                        }

                                        v181 = sub_1BF4E92F4();
                                        v183 = sub_1BF48063C(v181, v182, v161);
                                        v185 = v184;
                                        v10 = v186;
                                        v11 = ~v186;

                                        v187 = v221;
                                        if (!v11)
                                        {

                                          v179 = v219;
                                          v180 = v187;
                                          goto LABEL_123;
                                        }

                                        v11 = v221;
                                        v216 = sub_1BF4244E0(v183, v185, v10);
                                        v189 = v188;
                                        sub_1BF3DB1FC(v183, v185, v10);
                                        if (v189)
                                        {

                                          v179 = v219;
                                          v180 = v11;
                                          goto LABEL_123;
                                        }

                                        v81 = v222;
                                        v10 = v219;
                                        if (v176)
                                        {

                                          sub_1BF3DB210(v10, v11);
                                          v12 = v220;
                                        }

                                        else
                                        {
                                          v12 = v220;
                                          if (v216 == 1)
                                          {
                                            sub_1BF3901C0(0, &qword_1EDC96370, 0x1E696ACD0);
                                            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9530, &qword_1BF4F1678);
                                            v190 = swift_allocObject();
                                            *(v190 + 16) = v205;
                                            *(v190 + 32) = sub_1BF3901C0(0, &qword_1EDC962F0, 0x1E695DEC8);
                                            *(v190 + 40) = sub_1BF3901C0(0, &qword_1EDC96310, 0x1E6994358);
                                            v191 = v213;
                                            sub_1BF4E8EC4();
                                            v213 = v191;
                                            if (v191)
                                            {
                                              (*(v209 + 8))(v212, v210);

                                              sub_1BF3DB210(v10, v11);

                                              goto LABEL_156;
                                            }

                                            sub_1BF3DB210(v10, v11);

                                            if (v224)
                                            {
                                              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A28, &qword_1BF4EBFF8);
                                              if (swift_dynamicCast())
                                              {
                                                v192 = v225;
                                                if (v225)
                                                {
                                                  v193 = v211;
                                                  v194 = swift_isUniquelyReferenced_nonNull_native();
                                                  if ((v194 & 1) == 0)
                                                  {
                                                    v193 = sub_1BF432894(0, v193[2] + 1, 1, v193);
                                                  }

                                                  v196 = v193[2];
                                                  v195 = v193[3];
                                                  v11 = v196 + 1;
                                                  if (v196 >= v195 >> 1)
                                                  {
                                                    v193 = sub_1BF432894((v195 > 1), v196 + 1, 1, v193);
                                                  }

                                                  v193[2] = v11;
                                                  v211 = v193;
                                                  v193[v196 + 4] = v192;
                                                  if (v159 == v81)
                                                  {
LABEL_146:
                                                    v197 = sub_1BF48A634(v211);

                                                    v198 = v208;
                                                    (*(v209 + 32))(v208, v212, v210);
                                                    result = type metadata accessor for ExtensionMetadata();
                                                    v200 = (v198 + result[8]);
                                                    v201 = (v198 + result[5]);
                                                    v202 = v215;
                                                    *v201 = v218;
                                                    v201[1] = v202;
                                                    v203 = v217;
                                                    *v200 = v214;
                                                    v200[1] = v203;
                                                    v204 = v206;
                                                    *(v198 + result[6]) = v207;
                                                    *(v198 + result[9]) = v197;
                                                    *(v198 + result[7]) = v204;
                                                    return result;
                                                  }

                                                  continue;
                                                }
                                              }
                                            }

                                            else
                                            {
                                              sub_1BF38C9B4(&v223, &qword_1EBDD8AD0, &unk_1BF4F53F0);
                                            }
                                          }

                                          else
                                          {

                                            sub_1BF3DB210(v10, v11);
                                          }
                                        }
                                      }

                                      else
                                      {

                                        v179 = v168;
LABEL_122:
                                        v180 = v221;
LABEL_123:
                                        sub_1BF3DB210(v179, v180);
                                        v12 = v220;
LABEL_124:
                                        v81 = v222;
                                      }

                                      break;
                                    }

                                    ++v160;
                                    if (v159 == v81)
                                    {
                                      goto LABEL_146;
                                    }

                                    goto LABEL_113;
                                  }

                                  continue;
                                }
                              }
                            }

                            else
                            {
                              sub_1BF38C9B4(&v223, &qword_1EBDD8AD0, &unk_1BF4F53F0);
                            }
                          }

                          else
                          {

                            sub_1BF3DB210(v10, v11);
                          }
                        }
                      }

                      else
                      {

                        v140 = v129;
LABEL_87:
                        v141 = v221;
LABEL_88:
                        sub_1BF3DB210(v140, v141);
                        v12 = v220;
LABEL_89:
                        v81 = v222;
                      }

                      break;
                    }

                    ++v121;
                    if (v120 == v81)
                    {
                      goto LABEL_111;
                    }

                    goto LABEL_78;
                  }
                }
              }

              else
              {
                sub_1BF38C9B4(&v223, &qword_1EBDD8AD0, &unk_1BF4F53F0);
              }
            }
          }

          else
          {

            v102 = v92;
LABEL_51:
            v103 = v221;
LABEL_52:
            sub_1BF3DB210(v102, v103);
            v12 = v220;
LABEL_53:
            v81 = v222;
          }

          break;
        }

        ++v83;
        if (v82 == v81)
        {
          goto LABEL_76;
        }

        goto LABEL_42;
      }

LABEL_11:

LABEL_12:
      v43 = v221;
      if (v221 == v10)
      {
        goto LABEL_40;
      }
    }

    __break(1u);
LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
LABEL_150:
    __break(1u);
LABEL_151:
    __break(1u);
LABEL_152:
    __break(1u);
LABEL_153:
    __break(1u);
LABEL_154:
    (*(v209 + 8))(v212, v210);

    sub_1BF3DB210(v10, v11);

LABEL_156:
  }

  else
  {
LABEL_167:
    result = sub_1BF4E9464();
    __break(1u);
  }

  return result;
}

uint64_t sub_1BF491068(char *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9318, &qword_1BF4F09A8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v8 - v4;
  sub_1BF4A63E4(a1, &v8 - v4, type metadata accessor for ExtensionMetadata);
  v6 = type metadata accessor for ExtensionMetadata();
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  sub_1BF49117C(v5, a1);
  return sub_1BF38C9B4(v5, &qword_1EBDD9318, &qword_1BF4F09A8);
}

uint64_t sub_1BF49117C(char *a1, char *a2)
{
  v395 = a2;
  v408 = *MEMORY[0x1E69E9840];
  v386 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
  v385 = *(v386 - 8);
  v4 = *(v385 + 64);
  MEMORY[0x1EEE9AC00](v386);
  v384 = &v378 - v5;
  v397 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  v389 = *(v397 - 8);
  v6 = v389[8];
  MEMORY[0x1EEE9AC00](v397);
  v382 = &v378 - v7;
  v387 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD99C8, &qword_1BF4F4E68);
  v8 = *(*(v387 - 8) + 64);
  MEMORY[0x1EEE9AC00](v387);
  v10 = &v378 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD92E0, &unk_1BF4F08D0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v388 = &v378 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v391 = &v378 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v392 = &v378 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9318, &qword_1BF4F09A8);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v22 = &v378 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v378 - v23;
  v25 = type metadata accessor for ExtensionMetadata();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x1EEE9AC00](v25);
  v381 = &v378 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v383 = &v378 - v31;
  MEMORY[0x1EEE9AC00](v30);
  v396 = &v378 - v32;
  v390 = v2;
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_75;
  }

  v34 = Strong;
  v35 = *(Strong + 24);
  os_unfair_lock_lock(*(v35 + 16));
  v36 = *(v34 + 64);
  os_unfair_lock_unlock(*(v35 + 16));

  if (!v36)
  {
    __break(1u);
    goto LABEL_58;
  }

  v40 = *(v26 + 48);
  v39 = v26 + 48;
  v38 = v40;
  v41 = v40(a1, 1, v25);
  v393 = v25;
  v394 = a1;
  v42 = v25;
  if (v41 == 1)
  {
LABEL_12:
    sub_1BF38C94C(a1, v24, &qword_1EBDD9318, &qword_1BF4F09A8);
    if (v38(v24, 1, v42) == 1)
    {
      sub_1BF38C9B4(v24, &qword_1EBDD9318, &qword_1BF4F09A8);
      v404 = 0;
      v405 = 0xE000000000000000;
      v64 = MEMORY[0x1E69E7CC0];
      v65 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
      MEMORY[0x1BFB58C40](23);
      MEMORY[0x1BFB58C90](0x46204554454C4544, 0xEC000000204D4F52);
      v66 = sub_1BF4E92F4();
      MEMORY[0x1BFB58C90](v66);

      MEMORY[0x1BFB58C90](0x20455245485720, 0xE700000000000000);
      v67 = sub_1BF4E92F4();
      MEMORY[0x1BFB58C90](v67);

      MEMORY[0x1BFB58C90](542329120, 0xE400000000000000);
      v68 = sub_1BF4E7794();
      v70 = v69;

      v71 = sub_1BF3D8148(v68, v70);
      v73 = v72;
      v75 = v74;
      *&v401 = 0x676E69646E696240;
      *(&v401 + 1) = 0xE800000000000000;
      v398 = *(v65 + 16) + 1;
      v76 = sub_1BF4E96A4();
      MEMORY[0x1BFB58C90](v76);

      v78 = *(&v401 + 1);
      v77 = v401;
      MEMORY[0x1BFB58C90](v401, *(&v401 + 1));
      sub_1BF3D8840(v71, v73, v75);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v401 = v65;
      sub_1BF3D6680(v71, v73, v75, v77, v78, isUniquelyReferenced_nonNull_native);

      sub_1BF3D88B8(v71, v73, v75);

      v36 = v401;
      v25 = v404;
      v22 = v405;
      v80 = sub_1BF432A34(0, 1, 1, v64);
      a1 = v80;
      v10 = *(v80 + 16);
      v37 = *(v80 + 24);
      v35 = v10 + 1;
      if (v10 < v37 >> 1)
      {
LABEL_14:
        *(a1 + 2) = v35;
        v81 = &a1[24 * v10];
        *(v81 + 4) = v36;
        *(v81 + 5) = v25;
        *(v81 + 6) = v22;
        v82 = v394;
LABEL_52:
        MEMORY[0x1EEE9AC00](v80);
        v376 = v82;
        v377 = v368;
        sub_1BF489F88(sub_1BF4A5588, (&v378 - 4), a1);

LABEL_56:
        v372 = *MEMORY[0x1E69E9840];
        return result;
      }

LABEL_58:
      v80 = sub_1BF432A34((v37 > 1), v35, 1, a1);
      a1 = v80;
      goto LABEL_14;
    }

    v83 = v396;
    sub_1BF4A64AC(v24, v396, type metadata accessor for ExtensionMetadata);
    if (qword_1EDC9D460 != -1)
    {
      swift_once();
    }

    v84 = sub_1BF4E7B54();
    __swift_project_value_buffer(v84, qword_1EDCA6898);
    v85 = v383;
    sub_1BF4A63E4(v83, v383, type metadata accessor for ExtensionMetadata);
    v86 = sub_1BF4E7B34();
    v87 = sub_1BF4E8E84();
    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      v404 = v89;
      *v88 = 136446210;
      sub_1BF4A63E4(v85, v381, type metadata accessor for ExtensionMetadata);
      v90 = sub_1BF4E8994();
      v92 = v91;
      sub_1BF4A644C(v85, type metadata accessor for ExtensionMetadata);
      v93 = sub_1BF38D65C(v90, v92, &v404);

      *(v88 + 4) = v93;
      _os_log_impl(&dword_1BF389000, v86, v87, "inserting metadata %{public}s into store.", v88, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v89);
      MEMORY[0x1BFB5A5D0](v89, -1, -1);
      MEMORY[0x1BFB5A5D0](v88, -1, -1);
    }

    else
    {

      sub_1BF4A644C(v85, type metadata accessor for ExtensionMetadata);
    }

    v404 = 0;
    v405 = 0xE000000000000000;
    v94 = MEMORY[0x1E69E7CC0];
    v95 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
    MEMORY[0x1BFB58C40](23);
    MEMORY[0x1BFB58C90](0x46204554454C4544, 0xEC000000204D4F52);
    v96 = sub_1BF4E92F4();
    MEMORY[0x1BFB58C90](v96);

    MEMORY[0x1BFB58C90](0x20455245485720, 0xE700000000000000);
    v97 = sub_1BF4E92F4();
    MEMORY[0x1BFB58C90](v97);

    MEMORY[0x1BFB58C90](542329120, 0xE400000000000000);
    v98 = sub_1BF4E7794();
    v100 = v99;

    v101 = sub_1BF3D8148(v98, v100);
    v103 = v102;
    v105 = v104;
    *&v401 = 0x676E69646E696240;
    *(&v401 + 1) = 0xE800000000000000;
    v398 = *(v95 + 16) + 1;
    v106 = sub_1BF4E96A4();
    MEMORY[0x1BFB58C90](v106);

    v107 = v401;
    MEMORY[0x1BFB58C90](v401, *(&v401 + 1));
    sub_1BF3D8840(v101, v103, v105);
    v108 = swift_isUniquelyReferenced_nonNull_native();
    *&v401 = v95;
    sub_1BF3D6680(v101, v103, v105, v107, *(&v107 + 1), v108);

    sub_1BF3D88B8(v101, v103, v105);

    v109 = v401;
    v110 = v404;
    v111 = v405;
    v112 = sub_1BF432A34(0, 1, 1, v94);
    v114 = *(v112 + 2);
    v113 = *(v112 + 3);
    if (v114 >= v113 >> 1)
    {
      v112 = sub_1BF432A34((v113 > 1), v114 + 1, 1, v112);
    }

    *(v112 + 2) = v114 + 1;
    v115 = &v112[24 * v114];
    *(v115 + 4) = v109;
    *(v115 + 5) = v110;
    *(v115 + 6) = v111;
    v404 = 0;
    v405 = 0xE000000000000000;
    v116 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
    MEMORY[0x1BFB58C40](23);
    MEMORY[0x1BFB58C90](0x46204554454C4544, 0xEC000000204D4F52);
    v117 = sub_1BF4E92F4();
    MEMORY[0x1BFB58C90](v117);

    MEMORY[0x1BFB58C90](0x20455245485720, 0xE700000000000000);
    v118 = sub_1BF4E92F4();
    MEMORY[0x1BFB58C90](v118);

    MEMORY[0x1BFB58C90](542329120, 0xE400000000000000);
    v119 = v384;
    sub_1BF4E77C4();
    v120 = v386;
    v121 = sub_1BF4E76B4();
    v123 = v122;
    (*(v385 + 8))(v119, v120);

    v124 = sub_1BF3D8148(v121, v123);
    v126 = v125;
    v128 = v127;
    *&v401 = 0x676E69646E696240;
    *(&v401 + 1) = 0xE800000000000000;
    v398 = *(v116 + 16) + 1;
    v129 = sub_1BF4E96A4();
    MEMORY[0x1BFB58C90](v129);

    v130 = v401;
    MEMORY[0x1BFB58C90](v401, *(&v401 + 1));
    sub_1BF3D8840(v124, v126, v128);
    v131 = swift_isUniquelyReferenced_nonNull_native();
    *&v401 = v116;
    sub_1BF3D6680(v124, v126, v128, v130, *(&v130 + 1), v131);

    sub_1BF3D88B8(v124, v126, v128);

    v132 = v401;
    v133 = v404;
    v134 = v405;
    v136 = *(v112 + 2);
    v135 = *(v112 + 3);
    if (v136 >= v135 >> 1)
    {
      v112 = sub_1BF432A34((v135 > 1), v136 + 1, 1, v112);
    }

    *(v112 + 2) = v136 + 1;
    v395 = v112;
    v137 = &v112[24 * v136];
    *(v137 + 4) = v132;
    *(v137 + 5) = v133;
    *(v137 + 6) = v134;
    v404 = 0;
    v405 = 0xE000000000000000;
    v138 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
    MEMORY[0x1BFB58C40](132);
    v398 = v404;
    v399 = v405;
    v400 = v138;
    MEMORY[0x1BFB58C90](0xD000000000000010, 0x80000001BF4F8850);
    v139 = sub_1BF4E92F4();
    MEMORY[0x1BFB58C90](v139);

    MEMORY[0x1BFB58C90](0x20202020200A2820, 0xEB00000000202020);
    v140 = sub_1BF4E92F4();
    MEMORY[0x1BFB58C90](v140);

    MEMORY[0x1BFB58C90](0x2020202020200A2CLL, 0xEA00000000002020);
    v141 = sub_1BF4E92F4();
    MEMORY[0x1BFB58C90](v141);

    MEMORY[0x1BFB58C90](0x2020202020200A2CLL, 0xEA00000000002020);
    v142 = sub_1BF4E92F4();
    MEMORY[0x1BFB58C90](v142);

    MEMORY[0x1BFB58C90](0xD000000000000013, 0x80000001BF4FCD60);
    v143 = v396;
    v144 = sub_1BF4E7794();
    v146 = v145;

    v147 = sub_1BF3D8148(v144, v146);
    v149 = v148;
    v151 = v150;
    v404 = 0x676E69646E696240;
    v405 = 0xE800000000000000;
    *&v401 = *(v138 + 16) + 1;
    v152 = sub_1BF4E96A4();
    MEMORY[0x1BFB58C90](v152);

    v153 = v404;
    v154 = v405;
    MEMORY[0x1BFB58C90](v404, v405);
    sub_1BF3D8840(v147, v149, v151);
    v155 = v400;
    v156 = swift_isUniquelyReferenced_nonNull_native();
    v404 = v155;
    sub_1BF3D6680(v147, v149, v151, v153, v154, v156);

    sub_1BF3D88B8(v147, v149, v151);

    v157 = v404;
    v400 = v404;
    MEMORY[0x1BFB58C90](8236, 0xE200000000000000);
    v158 = v393;
    v159 = (v143 + *(v393 + 20));
    v161 = *v159;
    v160 = v159[1];
    swift_bridgeObjectRetain_n();
    v392 = v161;
    v162 = sub_1BF3D8148(v161, v160);
    v164 = v163;
    v166 = v165;
    v404 = 0x676E69646E696240;
    v405 = 0xE800000000000000;
    *&v401 = *(v157 + 16) + 1;
    v167 = sub_1BF4E96A4();
    MEMORY[0x1BFB58C90](v167);

    v168 = v404;
    v169 = v405;
    MEMORY[0x1BFB58C90](v404, v405);
    sub_1BF3D8840(v162, v164, v166);
    v170 = v400;
    v171 = swift_isUniquelyReferenced_nonNull_native();
    v404 = v170;
    sub_1BF3D6680(v162, v164, v166, v168, v169, v171);

    sub_1BF3D88B8(v162, v164, v166);

    v400 = v404;
    MEMORY[0x1BFB58C90](8236, 0xE200000000000000);
    v172 = (v396 + *(v158 + 32));
    v173 = *v172;
    v174 = v172[1];
    v391 = *v172;
    if (v174)
    {
      *(&v402 + 1) = MEMORY[0x1E69E6158];
      v403 = &off_1F3DF00A0;
      *&v401 = v173;
      *(&v401 + 1) = v174;
      sub_1BF38E610(&v401, &v404);
    }

    else
    {
      v403 = 0;
      v401 = 0u;
      v402 = 0u;
      v175 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
      v406 = sub_1BF3901C0(0, &qword_1EDC962F8, 0x1E695DFB0);
      v407 = &off_1F3DF0088;
      v404 = v175;
      if (*(&v402 + 1))
      {
        sub_1BF38C9B4(&v401, &qword_1EBDD99D0, &qword_1BF4F7B80);
      }
    }

    v176 = v406;
    v177 = v407;
    v178 = __swift_project_boxed_opaque_existential_1(&v404, v406);
    swift_bridgeObjectRetain_n();
    sub_1BF478C08(v178, &v398, v176, v177);
    __swift_destroy_boxed_opaque_existential_1Tm(&v404);
    MEMORY[0x1BFB58C90](0xD000000000000013, 0x80000001BF4FCD80);
    v179 = sub_1BF4E92F4();
    MEMORY[0x1BFB58C90](v179);

    MEMORY[0x1BFB58C90](0xD000000000000014, 0x80000001BF4FCDA0);
    v180 = sub_1BF4E92F4();
    MEMORY[0x1BFB58C90](v180);

    MEMORY[0x1BFB58C90](2112800, 0xE300000000000000);

    v181 = sub_1BF3D8148(v392, v160);
    v183 = v182;
    LOBYTE(v178) = v184;
    v404 = 0x676E69646E696240;
    v405 = 0xE800000000000000;
    *&v401 = *(v400 + 16) + 1;
    v185 = sub_1BF4E96A4();
    MEMORY[0x1BFB58C90](v185);

    v186 = v404;
    v187 = v405;
    MEMORY[0x1BFB58C90](v404, v405);
    sub_1BF3D8840(v181, v183, v178);
    v188 = v400;
    v189 = swift_isUniquelyReferenced_nonNull_native();
    v404 = v188;
    sub_1BF3D6680(v181, v183, v178, v186, v187, v189);

    sub_1BF3D88B8(v181, v183, v178);

    v400 = v404;
    MEMORY[0x1BFB58C90](0xD000000000000011, 0x80000001BF4FCDC0);
    v190 = sub_1BF4E92F4();
    MEMORY[0x1BFB58C90](v190);

    MEMORY[0x1BFB58C90](2112800, 0xE300000000000000);
    if (v174)
    {
      *(&v402 + 1) = MEMORY[0x1E69E6158];
      v403 = &off_1F3DF00A0;
      *&v401 = v391;
      *(&v401 + 1) = v174;
      sub_1BF38E610(&v401, &v404);
      v82 = v394;
      a1 = v395;
    }

    else
    {
      v403 = 0;
      v401 = 0u;
      v402 = 0u;
      v191 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
      v406 = sub_1BF3901C0(0, &qword_1EDC962F8, 0x1E695DFB0);
      v407 = &off_1F3DF0088;
      v404 = v191;
      v82 = v394;
      a1 = v395;
      if (*(&v402 + 1))
      {
        sub_1BF38C9B4(&v401, &qword_1EBDD99D0, &qword_1BF4F7B80);
      }
    }

    v192 = v406;
    v193 = v407;
    v194 = __swift_project_boxed_opaque_existential_1(&v404, v406);
    sub_1BF478C08(v194, &v398, v192, v193);
    __swift_destroy_boxed_opaque_existential_1Tm(&v404);
    v195 = v398;
    v196 = v399;
    v197 = v400;
    v199 = *(a1 + 2);
    v198 = *(a1 + 3);
    if (v199 >= v198 >> 1)
    {
      a1 = sub_1BF432A34((v198 > 1), v199 + 1, 1, a1);
    }

    *(a1 + 2) = v199 + 1;
    v200 = &a1[24 * v199];
    *(v200 + 4) = v197;
    *(v200 + 5) = v195;
    *(v200 + 6) = v196;
    v201 = v393;
    v202 = v396;
    v203 = *(v396 + *(v393 + 24));
    if (v203 >> 62)
    {
      if (v203 < 0)
      {
        v373 = *(v396 + *(v393 + 24));
      }

      if (!sub_1BF4E9204())
      {
        goto LABEL_39;
      }
    }

    else if (!*((v203 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_39:
      v257 = *(v202 + *(v201 + 28));
      if (v257 >> 62)
      {
        if (v257 < 0)
        {
          v374 = *(v202 + *(v201 + 28));
        }

        if (!sub_1BF4E9204())
        {
          goto LABEL_45;
        }
      }

      else if (!*((v257 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_45:
        v312 = *(v202 + *(v201 + 36));
        if (v312 >> 62)
        {
          if (v312 < 0)
          {
            v375 = *(v202 + *(v201 + 36));
          }

          if (!sub_1BF4E9204())
          {
            goto LABEL_51;
          }
        }

        else if (!*((v312 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_51:
          v80 = sub_1BF4A644C(v202, type metadata accessor for ExtensionMetadata);
          goto LABEL_52;
        }

        v313 = objc_opt_self();
        sub_1BF3901C0(0, &qword_1EDC96310, 0x1E6994358);
        v314 = sub_1BF4E8B84();
        v404 = 0;
        v315 = [v313 archivedDataWithRootObject:v314 requiringSecureCoding:1 error:&v404];

        v316 = v404;
        if (v315)
        {
          v393 = sub_1BF4E71C4();
          v318 = v317;

          v404 = 0;
          v405 = 0xE000000000000000;
          v319 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
          v395 = a1;
          v320 = v319;
          MEMORY[0x1BFB58C40](73);
          MEMORY[0x1BFB58C90](0x4920545245534E49, 0xEC000000204F544ELL);
          v321 = sub_1BF4E92F4();
          MEMORY[0x1BFB58C90](v321);

          MEMORY[0x1BFB58C90](0x202020200A2820, 0xE700000000000000);
          v322 = sub_1BF4E92F4();
          MEMORY[0x1BFB58C90](v322);

          MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
          v323 = sub_1BF4E92F4();
          MEMORY[0x1BFB58C90](v323);

          MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
          v324 = sub_1BF4E92F4();
          MEMORY[0x1BFB58C90](v324);

          MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
          v325 = sub_1BF4E92F4();
          MEMORY[0x1BFB58C90](v325);

          MEMORY[0x1BFB58C90](0xD000000000000010, 0x80000001BF4FA310);
          v326 = sub_1BF4E7794();
          v328 = v327;

          v329 = sub_1BF3D8148(v326, v328);
          v331 = v330;
          v333 = v332;
          *&v401 = 0x676E69646E696240;
          *(&v401 + 1) = 0xE800000000000000;
          v398 = *(v320 + 16) + 1;
          v334 = sub_1BF4E96A4();
          MEMORY[0x1BFB58C90](v334);

          v335 = v401;
          MEMORY[0x1BFB58C90](v401, *(&v401 + 1));
          sub_1BF3D8840(v329, v331, v333);
          v336 = swift_isUniquelyReferenced_nonNull_native();
          *&v401 = v320;
          sub_1BF3D6680(v329, v331, v333, v335, *(&v335 + 1), v336);

          sub_1BF3D88B8(v329, v331, v333);
          v337 = v393;

          v338 = v401;
          MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
          sub_1BF3D8864(v337, v318);
          sub_1BF3D8864(v337, v318);
          v339 = sub_1BF3D8134(v337, v318);
          v341 = v340;
          LOBYTE(v320) = v342;
          *&v401 = 0x676E69646E696240;
          *(&v401 + 1) = 0xE800000000000000;
          v398 = *(v338 + 16) + 1;
          v343 = sub_1BF4E96A4();
          MEMORY[0x1BFB58C90](v343);

          v344 = v401;
          MEMORY[0x1BFB58C90](v401, *(&v401 + 1));
          sub_1BF3D8840(v339, v341, v320);
          v345 = swift_isUniquelyReferenced_nonNull_native();
          *&v401 = v338;
          sub_1BF3D6680(v339, v341, v320, v344, *(&v344 + 1), v345);

          sub_1BF3D88B8(v339, v341, v320);
          v397 = v318;
          sub_1BF3B03C0(v337, v318);
          v346 = v401;
          MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
          v347 = sub_1BF3D833C(0.0);
          v349 = v348;
          LOBYTE(v341) = v350;
          *&v401 = 0x676E69646E696240;
          *(&v401 + 1) = 0xE800000000000000;
          v398 = *(v346 + 16) + 1;
          v351 = sub_1BF4E96A4();
          MEMORY[0x1BFB58C90](v351);

          v352 = v401;
          MEMORY[0x1BFB58C90](v401, *(&v401 + 1));
          sub_1BF3D8840(v347, v349, v341);
          v353 = swift_isUniquelyReferenced_nonNull_native();
          *&v401 = v346;
          sub_1BF3D6680(v347, v349, v341, v352, *(&v352 + 1), v353);

          sub_1BF3D88B8(v347, v349, v341);
          v354 = v401;
          MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
          v355 = sub_1BF3D7F44(1);
          v357 = v356;
          LOBYTE(v341) = v358;
          *&v401 = 0x676E69646E696240;
          *(&v401 + 1) = 0xE800000000000000;
          v398 = *(v354 + 16) + 1;
          v359 = sub_1BF4E96A4();
          MEMORY[0x1BFB58C90](v359);

          v360 = v401;
          MEMORY[0x1BFB58C90](v401, *(&v401 + 1));
          sub_1BF3D8840(v355, v357, v341);
          v361 = swift_isUniquelyReferenced_nonNull_native();
          *&v401 = v354;
          a1 = v395;
          sub_1BF3D6680(v355, v357, v341, v360, *(&v360 + 1), v361);

          sub_1BF3D88B8(v355, v357, v341);
          v362 = v401;
          MEMORY[0x1BFB58C90](10506, 0xE200000000000000);
          v363 = v404;
          v364 = v405;
          v366 = *(a1 + 2);
          v365 = *(a1 + 3);
          if (v366 >= v365 >> 1)
          {
            a1 = sub_1BF432A34((v365 > 1), v366 + 1, 1, a1);
          }

          v82 = v394;
          sub_1BF3B03C0(v337, v397);
          *(a1 + 2) = v366 + 1;
          v367 = &a1[24 * v366];
          *(v367 + 4) = v362;
          *(v367 + 5) = v363;
          *(v367 + 6) = v364;
          v202 = v396;
          goto LABEL_51;
        }

        v371 = v316;

        sub_1BF4E6FF4();

LABEL_55:
        swift_willThrow();
        result = sub_1BF4A644C(v202, type metadata accessor for ExtensionMetadata);
        goto LABEL_56;
      }

      v258 = objc_opt_self();
      sub_1BF3901C0(0, &qword_1EDC96348, 0x1E6994248);
      v259 = sub_1BF4E8B84();
      v404 = 0;
      v260 = [v258 archivedDataWithRootObject:v259 requiringSecureCoding:1 error:&v404];

      v207 = v404;
      if (v260)
      {
        v391 = sub_1BF4E71C4();
        v262 = v261;

        v404 = 0;
        v405 = 0xE000000000000000;
        v263 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
        v395 = a1;
        v264 = v263;
        MEMORY[0x1BFB58C40](73);
        MEMORY[0x1BFB58C90](0x4920545245534E49, 0xEC000000204F544ELL);
        v265 = sub_1BF4E92F4();
        MEMORY[0x1BFB58C90](v265);

        MEMORY[0x1BFB58C90](0x202020200A2820, 0xE700000000000000);
        v266 = sub_1BF4E92F4();
        MEMORY[0x1BFB58C90](v266);

        MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
        v267 = sub_1BF4E92F4();
        MEMORY[0x1BFB58C90](v267);

        MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
        v268 = sub_1BF4E92F4();
        MEMORY[0x1BFB58C90](v268);

        MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
        v269 = sub_1BF4E92F4();
        MEMORY[0x1BFB58C90](v269);

        MEMORY[0x1BFB58C90](0xD000000000000010, 0x80000001BF4FA310);
        v270 = sub_1BF4E7794();
        v272 = v271;

        v273 = sub_1BF3D8148(v270, v272);
        v275 = v274;
        v277 = v276;
        *&v401 = 0x676E69646E696240;
        *(&v401 + 1) = 0xE800000000000000;
        v398 = *(v264 + 16) + 1;
        v278 = sub_1BF4E96A4();
        MEMORY[0x1BFB58C90](v278);

        v279 = v401;
        MEMORY[0x1BFB58C90](v401, *(&v401 + 1));
        sub_1BF3D8840(v273, v275, v277);
        v280 = swift_isUniquelyReferenced_nonNull_native();
        *&v401 = v264;
        sub_1BF3D6680(v273, v275, v277, v279, *(&v279 + 1), v280);

        sub_1BF3D88B8(v273, v275, v277);
        v281 = v391;

        v282 = v401;
        MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
        sub_1BF3D8864(v281, v262);
        sub_1BF3D8864(v281, v262);
        v283 = sub_1BF3D8134(v281, v262);
        v285 = v284;
        LOBYTE(v264) = v286;
        *&v401 = 0x676E69646E696240;
        *(&v401 + 1) = 0xE800000000000000;
        v398 = *(v282 + 16) + 1;
        v287 = sub_1BF4E96A4();
        MEMORY[0x1BFB58C90](v287);

        v288 = v401;
        MEMORY[0x1BFB58C90](v401, *(&v401 + 1));
        sub_1BF3D8840(v283, v285, v264);
        v289 = swift_isUniquelyReferenced_nonNull_native();
        *&v401 = v282;
        sub_1BF3D6680(v283, v285, v264, v288, *(&v288 + 1), v289);

        sub_1BF3D88B8(v283, v285, v264);
        v392 = v262;
        sub_1BF3B03C0(v281, v262);
        v290 = v401;
        MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
        v291 = sub_1BF3D833C(0.0);
        v293 = v292;
        LOBYTE(v285) = v294;
        *&v401 = 0x676E69646E696240;
        *(&v401 + 1) = 0xE800000000000000;
        v398 = *(v290 + 16) + 1;
        v295 = sub_1BF4E96A4();
        MEMORY[0x1BFB58C90](v295);

        v296 = v401;
        MEMORY[0x1BFB58C90](v401, *(&v401 + 1));
        sub_1BF3D8840(v291, v293, v285);
        v297 = swift_isUniquelyReferenced_nonNull_native();
        *&v401 = v290;
        sub_1BF3D6680(v291, v293, v285, v296, *(&v296 + 1), v297);

        sub_1BF3D88B8(v291, v293, v285);
        v298 = v401;
        MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
        v299 = sub_1BF3D7F44(2);
        v301 = v300;
        LOBYTE(v285) = v302;
        *&v401 = 0x676E69646E696240;
        *(&v401 + 1) = 0xE800000000000000;
        v398 = *(v298 + 16) + 1;
        v303 = sub_1BF4E96A4();
        MEMORY[0x1BFB58C90](v303);

        v304 = v401;
        MEMORY[0x1BFB58C90](v401, *(&v401 + 1));
        sub_1BF3D8840(v299, v301, v285);
        v305 = swift_isUniquelyReferenced_nonNull_native();
        *&v401 = v298;
        a1 = v395;
        sub_1BF3D6680(v299, v301, v285, v304, *(&v304 + 1), v305);

        sub_1BF3D88B8(v299, v301, v285);
        v306 = v401;
        MEMORY[0x1BFB58C90](10506, 0xE200000000000000);
        v307 = v404;
        v308 = v405;
        v310 = *(a1 + 2);
        v309 = *(a1 + 3);
        if (v310 >= v309 >> 1)
        {
          a1 = sub_1BF432A34((v309 > 1), v310 + 1, 1, a1);
        }

        v82 = v394;
        sub_1BF3B03C0(v281, v392);
        *(a1 + 2) = v310 + 1;
        v311 = &a1[24 * v310];
        *(v311 + 4) = v306;
        *(v311 + 5) = v307;
        *(v311 + 6) = v308;
        v202 = v396;
        v201 = v393;
        goto LABEL_45;
      }

LABEL_53:
      v370 = v207;

      sub_1BF4E6FF4();

      goto LABEL_55;
    }

    v204 = objc_opt_self();
    sub_1BF3901C0(0, &unk_1EDC9D6D8, 0x1E6994388);
    v205 = sub_1BF4E8B84();
    v404 = 0;
    v206 = [v204 archivedDataWithRootObject:v205 requiringSecureCoding:1 error:&v404];

    v207 = v404;
    if (!v206)
    {
      goto LABEL_53;
    }

    v391 = sub_1BF4E71C4();
    v209 = v208;

    v404 = 0;
    v405 = 0xE000000000000000;
    v210 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
    v395 = a1;
    v211 = v210;
    MEMORY[0x1BFB58C40](73);
    MEMORY[0x1BFB58C90](0x4920545245534E49, 0xEC000000204F544ELL);
    v212 = sub_1BF4E92F4();
    MEMORY[0x1BFB58C90](v212);

    MEMORY[0x1BFB58C90](0x202020200A2820, 0xE700000000000000);
    v213 = sub_1BF4E92F4();
    MEMORY[0x1BFB58C90](v213);

    MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
    v214 = sub_1BF4E92F4();
    MEMORY[0x1BFB58C90](v214);

    MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
    v215 = sub_1BF4E92F4();
    MEMORY[0x1BFB58C90](v215);

    MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
    v216 = sub_1BF4E92F4();
    MEMORY[0x1BFB58C90](v216);

    MEMORY[0x1BFB58C90](0xD000000000000010, 0x80000001BF4FA310);
    v217 = sub_1BF4E7794();
    v219 = v218;

    v220 = sub_1BF3D8148(v217, v219);
    v222 = v221;
    v224 = v223;
    *&v401 = 0x676E69646E696240;
    *(&v401 + 1) = 0xE800000000000000;
    v398 = *(v211 + 16) + 1;
    v225 = sub_1BF4E96A4();
    MEMORY[0x1BFB58C90](v225);

    v226 = *(&v401 + 1);
    v227 = v401;
    MEMORY[0x1BFB58C90](v401, *(&v401 + 1));
    sub_1BF3D8840(v220, v222, v224);
    v228 = swift_isUniquelyReferenced_nonNull_native();
    *&v401 = v211;
    sub_1BF3D6680(v220, v222, v224, v227, v226, v228);

    sub_1BF3D88B8(v220, v222, v224);
    v63 = v391;

    v229 = v401;
    MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
    sub_1BF3D8864(v63, v209);
    sub_1BF3D8864(v63, v209);
    v230 = sub_1BF3D8134(v63, v209);
    v232 = v231;
    LOBYTE(v211) = v233;
    *&v401 = 0x676E69646E696240;
    *(&v401 + 1) = 0xE800000000000000;
    v398 = *(v229 + 16) + 1;
    v234 = sub_1BF4E96A4();
    MEMORY[0x1BFB58C90](v234);

    v236 = *(&v401 + 1);
    v235 = v401;
    MEMORY[0x1BFB58C90](v401, *(&v401 + 1));
    sub_1BF3D8840(v230, v232, v211);
    v237 = swift_isUniquelyReferenced_nonNull_native();
    *&v401 = v229;
    sub_1BF3D6680(v230, v232, v211, v235, v236, v237);

    sub_1BF3D88B8(v230, v232, v211);
    v392 = v209;
    sub_1BF3B03C0(v63, v209);
    v238 = v401;
    MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
    v239 = sub_1BF3D833C(0.0);
    v241 = v240;
    LOBYTE(v232) = v242;
    *&v401 = 0x676E69646E696240;
    *(&v401 + 1) = 0xE800000000000000;
    v398 = *(v238 + 16) + 1;
    v243 = sub_1BF4E96A4();
    MEMORY[0x1BFB58C90](v243);

    v245 = *(&v401 + 1);
    v244 = v401;
    MEMORY[0x1BFB58C90](v401, *(&v401 + 1));
    sub_1BF3D8840(v239, v241, v232);
    v246 = swift_isUniquelyReferenced_nonNull_native();
    *&v401 = v238;
    sub_1BF3D6680(v239, v241, v232, v244, v245, v246);

    sub_1BF3D88B8(v239, v241, v232);
    v247 = v401;
    MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
    v248 = sub_1BF3D7F44(0);
    v250 = v249;
    LOBYTE(v232) = v251;
    *&v401 = 0x676E69646E696240;
    *(&v401 + 1) = 0xE800000000000000;
    v398 = *(v247 + 16) + 1;
    v252 = sub_1BF4E96A4();
    MEMORY[0x1BFB58C90](v252);

    v254 = *(&v401 + 1);
    v253 = v401;
    MEMORY[0x1BFB58C90](v401, *(&v401 + 1));
    sub_1BF3D8840(v248, v250, v232);
    v255 = swift_isUniquelyReferenced_nonNull_native();
    *&v401 = v247;
    a1 = v395;
    sub_1BF3D6680(v248, v250, v232, v253, v254, v255);

    sub_1BF3D88B8(v248, v250, v232);
    v42 = v401;
    MEMORY[0x1BFB58C90](10506, 0xE200000000000000);
    v61 = v404;
    v57 = v405;
    v24 = *(a1 + 2);
    v62 = *(a1 + 3);
    v38 = (v24 + 1);
    if (v24 < v62 >> 1)
    {
LABEL_38:
      v82 = v394;
      sub_1BF3B03C0(v63, v392);
      *(a1 + 2) = v38;
      v256 = &a1[24 * v24];
      *(v256 + 4) = v42;
      *(v256 + 5) = v61;
      *(v256 + 6) = v57;
      v202 = v396;
      v201 = v393;
      goto LABEL_39;
    }

LABEL_72:
    a1 = sub_1BF432A34((v62 > 1), v38, 1, a1);
    goto LABEL_38;
  }

  v43 = v10;
  sub_1BF38C94C(a1, v22, &qword_1EBDD9318, &qword_1BF4F09A8);
  v379 = v38;
  v378 = v39;
  v44 = v38(v22, 1, v42);
  v380 = v24;
  if (v44 == 1)
  {
    sub_1BF38C9B4(v22, &qword_1EBDD9318, &qword_1BF4F09A8);
    v45 = v389;
    v46 = v389[7];
    v47 = v392;
    v48 = v397;
    v46(v392, 1, 1, v397);
    v49 = v45[2];
  }

  else
  {
    v45 = v389;
    v49 = v389[2];
    v47 = v392;
    v48 = v397;
    v49(v392, v22, v397);
    sub_1BF4A644C(v22, type metadata accessor for ExtensionMetadata);
    v46 = v45[7];
    v46(v47, 0, 1, v48);
  }

  v50 = v391;
  v49(v391, v395, v48);
  v46(v50, 0, 1, v48);
  v51 = *(v387 + 48);
  sub_1BF38C94C(v47, v43, &unk_1EBDD92E0, &unk_1BF4F08D0);
  sub_1BF38C94C(v50, v43 + v51, &unk_1EBDD92E0, &unk_1BF4F08D0);
  v52 = v48;
  v53 = v45[6];
  if (v53(v43, 1, v52) == 1)
  {
    sub_1BF38C9B4(v50, &unk_1EBDD92E0, &unk_1BF4F08D0);
    sub_1BF38C9B4(v47, &unk_1EBDD92E0, &unk_1BF4F08D0);
    if (v53(v43 + v51, 1, v52) == 1)
    {
      sub_1BF38C9B4(v43, &unk_1EBDD92E0, &unk_1BF4F08D0);
      v42 = v393;
      a1 = v394;
      v24 = v380;
      v38 = v379;
      goto LABEL_12;
    }

    goto LABEL_74;
  }

  sub_1BF38C94C(v43, v388, &unk_1EBDD92E0, &unk_1BF4F08D0);
  v54 = v53(v43 + v51, 1, v52);
  v24 = v380;
  if (v54 != 1)
  {
    v55 = v45;
    v56 = v382;
    v57 = v43;
    (v45[4])(v382, v43 + v51, v52);
    sub_1BF38C8B4(&qword_1EDC9D538, &unk_1EBDD91A0, &unk_1BF4EC4E0);
    v58 = v388;
    v59 = sub_1BF4E88C4();
    v60 = v55[1];
    v60(v56, v52);
    v61 = &unk_1EBDD92E0;
    sub_1BF38C9B4(v391, &unk_1EBDD92E0, &unk_1BF4F08D0);
    sub_1BF38C9B4(v392, &unk_1EBDD92E0, &unk_1BF4F08D0);
    v60(v58, v52);
    sub_1BF38C9B4(v57, &unk_1EBDD92E0, &unk_1BF4F08D0);
    v42 = v393;
    a1 = v394;
    v38 = v379;
    v62 = &v406;
    v63 = v378;
    if ((v59 & 1) == 0)
    {
      __break(1u);
      goto LABEL_72;
    }

    goto LABEL_12;
  }

  sub_1BF38C9B4(v391, &unk_1EBDD92E0, &unk_1BF4F08D0);
  sub_1BF38C9B4(v392, &unk_1EBDD92E0, &unk_1BF4F08D0);
  (v45[1])(v388, v52);
LABEL_74:
  sub_1BF38C9B4(v43, &qword_1EBDD99C8, &qword_1BF4F4E68);
  __break(1u);
LABEL_75:
  result = sub_1BF4E9464();
  __break(1u);
  return result;
}

uint64_t sub_1BF493E44(void *a1, uint64_t a2, uint64_t *a3)
{
  v73 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD92E0, &unk_1BF4F08D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v62 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v65 = &v62 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9318, &qword_1BF4F09A8);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v63 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v75 = &v62 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v62 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v62 - v22;
  v24 = *a1;
  v71 = a1[1];
  v72 = v24;
  v70 = a1[2];
  if (qword_1EDC9D460 != -1)
  {
    swift_once();
  }

  v25 = sub_1BF4E7B54();
  v26 = __swift_project_value_buffer(v25, qword_1EDCA6898);
  sub_1BF38C94C(a2, v23, &qword_1EBDD9318, &qword_1BF4F09A8);
  v68 = v26;
  v27 = sub_1BF4E7B34();
  v28 = sub_1BF4E8E54();
  v29 = os_log_type_enabled(v27, v28);
  v69 = a2;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v64 = v8;
    v31 = v30;
    v32 = swift_slowAlloc();
    v67 = v9;
    v33 = v32;
    v76 = v32;
    *v31 = 136446210;
    v66 = v10;
    sub_1BF38C94C(v23, v21, &qword_1EBDD9318, &qword_1BF4F09A8);
    v34 = sub_1BF4E8994();
    v36 = v35;
    sub_1BF38C9B4(v23, &qword_1EBDD9318, &qword_1BF4F09A8);
    v37 = sub_1BF38D65C(v34, v36, &v76);

    *(v31 + 4) = v37;
    v10 = v66;
    _os_log_impl(&dword_1BF389000, v27, v28, "Executing metadata update for %{public}s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v33);
    v38 = v33;
    v9 = v67;
    MEMORY[0x1BFB5A5D0](v38, -1, -1);
    v39 = v31;
    v8 = v64;
    MEMORY[0x1BFB5A5D0](v39, -1, -1);
  }

  else
  {

    sub_1BF38C9B4(v23, &qword_1EBDD9318, &qword_1BF4F09A8);
  }

  Strong = swift_weakLoadStrong();
  v41 = v75;
  if (Strong)
  {
    v42 = v74;
    sub_1BF3E4F48(v72);
    if (v42)
    {

      sub_1BF38C94C(v69, v41, &qword_1EBDD9318, &qword_1BF4F09A8);
      v43 = v42;
      v44 = sub_1BF4E7B34();
      v45 = sub_1BF4E8E84();

      if (os_log_type_enabled(v44, v45))
      {
        LODWORD(v74) = v45;
        v46 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        v76 = v73;
        *v46 = 136446466;
        v47 = v63;
        sub_1BF38C94C(v41, v63, &qword_1EBDD9318, &qword_1BF4F09A8);
        v48 = type metadata accessor for ExtensionMetadata();
        if ((*(*(v48 - 8) + 48))(v47, 1, v48) == 1)
        {
          sub_1BF38C9B4(v47, &qword_1EBDD9318, &qword_1BF4F09A8);
          (*(v10 + 56))(v8, 1, 1, v9);
          v64 = v8;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
          v67 = v9;
          sub_1BF38C8B4(&qword_1EDC9D598, &qword_1EBDD8B48, &unk_1BF4EC990);
          v66 = v10;
          sub_1BF38C8B4(&qword_1EDC9D570, &qword_1EBDD8B48, &unk_1BF4EC990);
          sub_1BF38C8B4(&qword_1EDC9D590, &qword_1EBDD8B48, &unk_1BF4EC990);
          v49 = v64;
          sub_1BF38C8B4(&qword_1EDC9D588, &qword_1EBDD8B48, &unk_1BF4EC990);
          v50 = v65;
          v10 = v66;
          v9 = v67;
          v41 = v75;
          sub_1BF4E7764();
          if ((*(v10 + 48))(v49, 1, v9) != 1)
          {
            sub_1BF38C9B4(v49, &unk_1EBDD92E0, &unk_1BF4F08D0);
          }
        }

        else
        {
          (*(v10 + 16))(v8, v47, v9);
          sub_1BF4A644C(v47, type metadata accessor for ExtensionMetadata);
          (*(v10 + 56))(v8, 0, 1, v9);
          v52 = v8;
          v50 = v65;
          (*(v10 + 32))(v65, v52, v9);
        }

        sub_1BF38C8B4(&qword_1EDC9D528, &unk_1EBDD91A0, &unk_1BF4EC4E0);
        v53 = v50;
        v54 = sub_1BF4E96A4();
        v56 = v55;
        (*(v10 + 8))(v53, v9);
        sub_1BF38C9B4(v41, &qword_1EBDD9318, &qword_1BF4F09A8);
        v57 = sub_1BF38D65C(v54, v56, &v76);

        *(v46 + 4) = v57;
        *(v46 + 12) = 2114;
        v58 = v42;
        v59 = _swift_stdlib_bridgeErrorToNSError();
        *(v46 + 14) = v59;
        v60 = v72;
        *v72 = v59;
        _os_log_impl(&dword_1BF389000, v44, v74, "Unexpected error performing metadata update for %{public}s: %{public}@", v46, 0x16u);
        sub_1BF38C9B4(v60, &unk_1EBDD9260, &qword_1BF4EC380);
        MEMORY[0x1BFB5A5D0](v60, -1, -1);
        v61 = v73;
        __swift_destroy_boxed_opaque_existential_1Tm(v73);
        MEMORY[0x1BFB5A5D0](v61, -1, -1);
        MEMORY[0x1BFB5A5D0](v46, -1, -1);
      }

      else
      {

        sub_1BF38C9B4(v41, &qword_1EBDD9318, &qword_1BF4F09A8);
      }

      return swift_willThrow();
    }

    else
    {
    }
  }

  else
  {
    result = sub_1BF4E9464();
    __break(1u);
  }

  return result;
}

uint64_t sub_1BF494700()
{
  if (swift_weakLoadStrong())
  {
    v1 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
    MEMORY[0x1BFB58C40](12);
    MEMORY[0x1BFB58C90](0x46204554454C4544, 0xEC000000204D4F52);
    v2 = sub_1BF4E92F4();
    MEMORY[0x1BFB58C90](v2);

    sub_1BF3E4F48(v1);

    if (!v0)
    {
    }
  }

  else
  {
    result = sub_1BF4E9464();
    __break(1u);
  }

  return result;
}

unint64_t sub_1BF494854()
{
  v50 = sub_1BF4E7334();
  v1 = *(v50 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v49 = v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v48 = v42 - v5;
  v51 = 0;
  v52 = 0xE000000000000000;
  v6 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](24);
  MEMORY[0x1BFB58C90](0x454C455320202020, 0xEB00000000205443);
  v7 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v7);

  MEMORY[0x1BFB58C90](8236, 0xE200000000000000);
  v8 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v8);

  MEMORY[0x1BFB58C90](0x4F5246202020200ALL, 0xEA0000000000204DLL);
  v9 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v9);

  MEMORY[0x1BFB58C90](59, 0xE100000000000000);
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_16;
  }

  v11 = Strong;
  v12 = sub_1BF3E4F48(v6);
  if (!v0)
  {
    v42[1] = 0;
    v13 = v12;

    v11 = sub_1BF3DA6BC(MEMORY[0x1E69E7CC0]);
    v14 = v13;
    v47 = v13[2];
    if (!v47)
    {
LABEL_12:

      return v11;
    }

    v15 = 0;
    v44 = (v1 + 16);
    v45 = (v13 + 4);
    v43 = (v1 + 8);
    v46 = v13;
    while (v15 < v14[2])
    {
      v16 = *&v45[8 * v15];

      v17 = sub_1BF4E92F4();
      v19 = sub_1BF48063C(v17, v18, v16);
      v21 = v20;
      v23 = v22;
      v24 = ~v22;

      if (!v24)
      {
        goto LABEL_16;
      }

      v53 = sub_1BF4244EC(v19, v21, v23);
      v26 = v25;
      sub_1BF3DB1FC(v19, v21, v23);
      if (!v26)
      {
        goto LABEL_16;
      }

      v27 = sub_1BF4E92F4();
      v29 = sub_1BF48063C(v27, v28, v16);
      v31 = v30;
      v33 = v32;
      v34 = ~v32;

      if (!v34)
      {
        goto LABEL_15;
      }

      sub_1BF424634(v29, v31, v33);
      v36 = v35;
      sub_1BF3DB1FC(v29, v31, v33);
      if (v36)
      {
        goto LABEL_15;
      }

      ++v15;
      v37 = v48;
      sub_1BF4E72B4();
      v39 = v49;
      v38 = v50;
      (*v44)(v49, v37, v50);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v51 = v11;
      sub_1BF3D6A84(v39, v53, v26, isUniquelyReferenced_nonNull_native);

      (*v43)(v37, v38);
      v11 = v51;
      v14 = v46;
      if (v47 == v15)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_15:

    while (1)
    {
LABEL_16:
      sub_1BF4E9464();
      __break(1u);
    }
  }

  return v11;
}

uint64_t sub_1BF494D14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v92 = a2;
  v93 = a3;
  v91 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9B00, &qword_1BF4F1E50);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v87 - v8;
  v94 = sub_1BF4E7334();
  v10 = *(v94 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v94);
  v13 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_13;
  }

  v15 = *(Strong + 24);
  v16 = Strong;
  os_unfair_lock_lock(*(v15 + 16));
  v17 = *(v16 + 64);
  os_unfair_lock_unlock(*(v15 + 16));

  if (!v17)
  {
    __break(1u);
    goto LABEL_13;
  }

  sub_1BF38C94C(a4, v9, &qword_1EBDD9B00, &qword_1BF4F1E50);
  v18 = v94;
  v19 = (*(v10 + 48))(v9, 1, v94);
  v90 = v4;
  if (v19 == 1)
  {
    sub_1BF38C9B4(v9, &qword_1EBDD9B00, &qword_1BF4F1E50);
    v94 = swift_weakLoadStrong();
    if (v94)
    {
      v97 = 0;
      v98 = 0xE000000000000000;
      v20 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
      MEMORY[0x1BFB58C40](43);
      MEMORY[0x1BFB58C90](0xD000000000000016, 0x80000001BF4FCE10);
      v21 = sub_1BF4E92F4();
      MEMORY[0x1BFB58C90](v21);

      MEMORY[0x1BFB58C90](2107402, 0xE300000000000000);
      v22 = sub_1BF4E92F4();
      MEMORY[0x1BFB58C90](v22);

      MEMORY[0x1BFB58C90](8236, 0xE200000000000000);
      v23 = sub_1BF4E92F4();
      MEMORY[0x1BFB58C90](v23);

      MEMORY[0x1BFB58C90](0x45554C41560A2920, 0xEC00000020282053);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
      v24 = sub_1BF4E7794();
      v26 = v25;

      v27 = sub_1BF3D8148(v24, v26);
      v29 = v28;
      v31 = v30;
      v95 = 0x676E69646E696240;
      v96 = 0xE800000000000000;
      v99 = *(v20 + 16) + 1;
      v32 = sub_1BF4E96A4();
      MEMORY[0x1BFB58C90](v32);

      v34 = v95;
      v33 = v96;
      MEMORY[0x1BFB58C90](v95, v96);
      sub_1BF3D8840(v27, v29, v31);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v95 = v20;
      sub_1BF3D6680(v27, v29, v31, v34, v33, isUniquelyReferenced_nonNull_native);

      sub_1BF3D88B8(v27, v29, v31);

      v36 = v95;
      MEMORY[0x1BFB58C90](8236, 0xE200000000000000);
      v37 = v93;

      v38 = sub_1BF3D8148(v92, v37);
      v40 = v39;
      LOBYTE(v20) = v41;
      v95 = 0x676E69646E696240;
      v96 = 0xE800000000000000;
      v99 = *(v36 + 16) + 1;
      v42 = sub_1BF4E96A4();
      MEMORY[0x1BFB58C90](v42);

      v43 = v95;
      v44 = v96;
      MEMORY[0x1BFB58C90](v95, v96);
      sub_1BF3D8840(v38, v40, v20);
      v45 = swift_isUniquelyReferenced_nonNull_native();
      v95 = v36;
      sub_1BF3D6680(v38, v40, v20, v43, v44, v45);

      sub_1BF3D88B8(v38, v40, v20);
      v46 = v95;
      MEMORY[0x1BFB58C90](10528, 0xE200000000000000);
      v47 = v90;
      sub_1BF3E4F48(v46);

      if (!v47)
      {
      }

      return result;
    }

LABEL_13:
    result = sub_1BF4E9464();
    __break(1u);
    return result;
  }

  v49 = *(v10 + 32);
  v88 = v13;
  v49(v13, v9, v18);
  if (!swift_weakLoadStrong())
  {
    goto LABEL_13;
  }

  v97 = 0;
  v98 = 0xE000000000000000;
  v50 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](46);
  MEMORY[0x1BFB58C90](0xD00000000000001ALL, 0x80000001BF4FCE50);
  v51 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v51);

  MEMORY[0x1BFB58C90](0x4C4156202020200ALL, 0xEE00202820534555);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  v52 = sub_1BF4E7794();
  v54 = v53;

  v55 = sub_1BF3D8148(v52, v54);
  v57 = v56;
  v59 = v58;
  v95 = 0x676E69646E696240;
  v96 = 0xE800000000000000;
  v99 = *(v50 + 16) + 1;
  v60 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v60);

  v61 = v95;
  v62 = v96;
  MEMORY[0x1BFB58C90](v95, v96);
  sub_1BF3D8840(v55, v57, v59);
  v63 = swift_isUniquelyReferenced_nonNull_native();
  v95 = v50;
  sub_1BF3D6680(v55, v57, v59, v61, v62, v63);

  sub_1BF3D88B8(v55, v57, v59);

  v64 = v95;
  MEMORY[0x1BFB58C90](8236, 0xE200000000000000);
  v65 = v93;

  v66 = sub_1BF3D8148(v92, v65);
  v68 = v67;
  LOBYTE(v54) = v69;
  v95 = 0x676E69646E696240;
  v96 = 0xE800000000000000;
  v99 = *(v64 + 16) + 1;
  v70 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v70);

  v71 = v95;
  v72 = v96;
  MEMORY[0x1BFB58C90](v95, v96);
  sub_1BF3D8840(v66, v68, v54);
  v73 = swift_isUniquelyReferenced_nonNull_native();
  v95 = v64;
  sub_1BF3D6680(v66, v68, v54, v71, v72, v73);

  sub_1BF3D88B8(v66, v68, v54);
  v74 = v95;
  MEMORY[0x1BFB58C90](8236, 0xE200000000000000);
  v75 = v88;
  sub_1BF4E72C4();
  v77 = sub_1BF3D833C(v76);
  v79 = v78;
  LOBYTE(v54) = v80;
  v95 = 0x676E69646E696240;
  v96 = 0xE800000000000000;
  v99 = *(v74 + 16) + 1;
  v81 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v81);

  v82 = v95;
  v83 = v96;
  MEMORY[0x1BFB58C90](v95, v96);
  sub_1BF3D8840(v77, v79, v54);
  v84 = swift_isUniquelyReferenced_nonNull_native();
  v95 = v74;
  sub_1BF3D6680(v77, v79, v54, v82, v83, v84);

  sub_1BF3D88B8(v77, v79, v54);
  v85 = v95;
  MEMORY[0x1BFB58C90](10528, 0xE200000000000000);
  v86 = v90;
  sub_1BF3E4F48(v85);
  if (v86)
  {
    (*(v10 + 8))(v75, v94);
  }

  else
  {

    return (*(v10 + 8))(v75, v94);
  }
}

uint64_t sub_1BF4956D4(uint64_t a1, uint64_t a2)
{
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_8;
  }

  v6 = *(Strong + 24);
  v7 = Strong;
  os_unfair_lock_lock(*(v6 + 16));
  v8 = *(v7 + 64);
  os_unfair_lock_unlock(*(v6 + 16));

  if (!v8)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (!swift_weakLoadStrong())
  {
LABEL_8:
    result = sub_1BF4E9464();
    __break(1u);
    return result;
  }

  v9 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](31);
  MEMORY[0x1BFB58C90](0xD000000000000010, 0x80000001BF4F88F0);
  v10 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v10);

  MEMORY[0x1BFB58C90](0x200A455245485720, 0xEB00000000202020);
  v11 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v11);

  MEMORY[0x1BFB58C90](542329120, 0xE400000000000000);

  v12 = sub_1BF3D8148(a1, a2);
  v14 = v13;
  v16 = v15;
  v20 = *(v9 + 16) + 1;
  v17 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v17);

  MEMORY[0x1BFB58C90](0x676E69646E696240, 0xE800000000000000);
  sub_1BF3D8840(v12, v14, v16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D6680(v12, v14, v16, 0x676E69646E696240, 0xE800000000000000, isUniquelyReferenced_nonNull_native);

  sub_1BF3D88B8(v12, v14, v16);
  sub_1BF3E4F48(v9);

  if (!v2)
  {
  }

  return result;
}

uint64_t sub_1BF4959B8()
{
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_8;
  }

  v2 = *(Strong + 24);
  v3 = Strong;
  os_unfair_lock_lock(*(v2 + 16));
  v4 = *(v3 + 64);
  os_unfair_lock_unlock(*(v2 + 16));

  if (!v4)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (!swift_weakLoadStrong())
  {
LABEL_8:
    result = sub_1BF4E9464();
    __break(1u);
    return result;
  }

  v5 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](12);
  MEMORY[0x1BFB58C90](0x46204554454C4544, 0xEC000000204D4F52);
  v6 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v6);

  sub_1BF3E4F48(v5);

  if (!v0)
  {
  }

  return result;
}

uint64_t sub_1BF495B48()
{
  v48 = type metadata accessor for RemoteActivitySubscription(0);
  v1 = *(*(v48 - 8) + 64);
  MEMORY[0x1EEE9AC00](v48);
  v47 = &v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v44 - v4;
  *&v50 = 0;
  *(&v50 + 1) = 0xE000000000000000;
  v6 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](28);
  MEMORY[0x1BFB58C90](0x200A5443454C4553, 0xEB00000000202020);
  v7 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v7);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v8 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v8);

  MEMORY[0x1BFB58C90](0x20200A4D4F52460ALL, 0xEA00000000002020);
  v9 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v9);

  MEMORY[0x1BFB58C90](59, 0xE100000000000000);
  if (!swift_weakLoadStrong())
  {
    goto LABEL_17;
  }

  v10 = sub_1BF3E4F48(v6);
  if (!v0)
  {
    v51 = 0;
    v12 = v10;

    v13 = v12;
    v46 = v12[2];
    if (!v46)
    {
      v11 = MEMORY[0x1E69E7CC8];

      return v11;
    }

    v14 = 0;
    v11 = MEMORY[0x1E69E7CC8];
    v45 = v12;
    while (v14 < v13[2])
    {
      v49 = v11;
      v15 = v5;
      v16 = v13[v14 + 4];

      v17 = sub_1BF4E92F4();
      v19 = sub_1BF48063C(v17, v18, v16);
      v21 = v20;
      v23 = v22;
      v24 = ~v22;

      if (!v24)
      {
        goto LABEL_17;
      }

      sub_1BF3DB1FC(v19, v21, v23);
      v25 = sub_1BF4E92F4();
      v27 = sub_1BF48063C(v25, v26, v16);
      v29 = v28;
      v31 = v30;
      v32 = ~v30;

      if (!v32)
      {
        goto LABEL_17;
      }

      sub_1BF424370(v27, v29, v31, &v50);
      sub_1BF3DB1FC(v27, v29, v31);
      v33 = *(&v50 + 1);
      if (*(&v50 + 1) >> 60 == 15)
      {
        goto LABEL_17;
      }

      v34 = v50;
      v35 = sub_1BF4E6DB4();
      v36 = *(v35 + 48);
      v37 = *(v35 + 52);
      swift_allocObject();
      v11 = sub_1BF4E6DA4();
      sub_1BF4A6514(&qword_1EBDD99D8, type metadata accessor for RemoteActivitySubscription);
      v38 = v51;
      sub_1BF4E6D94();
      v51 = v38;
      if (v38)
      {

        sub_1BF3DB210(v34, v33);

        return v11;
      }

      ++v14;
      v39 = v47;
      sub_1BF4A63E4(v15, v47, type metadata accessor for RemoteActivitySubscription);
      v40 = v49;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v50 = v40;
      v42 = v39;
      v5 = v15;
      sub_1BF3D7844(v42, v15, isUniquelyReferenced_nonNull_native);

      sub_1BF3DB210(v34, v33);

      sub_1BF4A644C(v15, type metadata accessor for RemoteActivitySubscription);
      v11 = v50;
      v13 = v45;
      if (v46 == v14)
      {

        return v11;
      }
    }

    __break(1u);
    while (1)
    {
LABEL_17:
      sub_1BF4E9464();
      __break(1u);
    }
  }

  v11 = v0;

  return v11;
}

uint64_t sub_1BF496078()
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + 24);
    v3 = Strong;
    os_unfair_lock_lock(*(v2 + 16));
    v4 = *(v3 + 64);
    os_unfair_lock_unlock(*(v2 + 16));

    if (v4)
    {
      v5 = sub_1BF4E6DE4();
      v6 = *(v5 + 48);
      v7 = *(v5 + 52);
      swift_allocObject();
      sub_1BF4E6DD4();
      type metadata accessor for RemoteActivitySubscription(0);
      sub_1BF4A6514(&qword_1EBDD99E0, type metadata accessor for RemoteActivitySubscription);
      v8 = sub_1BF4E6DC4();
      if (v0)
      {
      }

      v10 = v8;
      v11 = v9;
      v32 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
      MEMORY[0x1BFB58C40](83);
      MEMORY[0x1BFB58C90](0xD000000000000011, 0x80000001BF4FAD70);
      v12 = sub_1BF4E92F4();
      MEMORY[0x1BFB58C90](v12);

      MEMORY[0x1BFB58C90](0x20202020200A2820, 0xEB00000000202020);
      v13 = sub_1BF4E92F4();
      MEMORY[0x1BFB58C90](v13);

      MEMORY[0x1BFB58C90](0x2020202020200A2CLL, 0xEA00000000002020);
      v14 = sub_1BF4E92F4();
      MEMORY[0x1BFB58C90](v14);

      MEMORY[0x1BFB58C90](0xD00000000000001CLL, 0x80000001BF4FAD90);
      v15 = sub_1BF4E7354();
      v17 = v16;

      v18 = sub_1BF3D8148(v15, v17);
      v20 = v19;
      v22 = v21;
      v33 = v10;
      v34 = *(v32 + 16) + 1;
      v23 = sub_1BF4E96A4();
      MEMORY[0x1BFB58C90](v23);

      MEMORY[0x1BFB58C90](0x676E69646E696240, 0xE800000000000000);
      sub_1BF3D8840(v18, v20, v22);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1BF3D6680(v18, v20, v22, 0x676E69646E696240, 0xE800000000000000, isUniquelyReferenced_nonNull_native);

      sub_1BF3D88B8(v18, v20, v22);

      MEMORY[0x1BFB58C90](0x2020202020200A2CLL, 0xEA00000000002020);
      sub_1BF3D8864(v10, v11);
      sub_1BF3D8864(v10, v11);
      v25 = sub_1BF3D8134(v10, v11);
      v27 = v26;
      LOBYTE(v10) = v28;
      v35 = *(v32 + 16) + 1;
      v29 = sub_1BF4E96A4();
      MEMORY[0x1BFB58C90](v29);

      MEMORY[0x1BFB58C90](0x676E69646E696240, 0xE800000000000000);
      sub_1BF3D8840(v25, v27, v10);
      v30 = swift_isUniquelyReferenced_nonNull_native();
      sub_1BF3D6680(v25, v27, v10, 0x676E69646E696240, 0xE800000000000000, v30);

      sub_1BF3D88B8(v25, v27, v10);
      sub_1BF3B03C0(v33, v11);
      MEMORY[0x1BFB58C90](0x3B29202020200ALL, 0xE700000000000000);
      if (swift_weakLoadStrong())
      {
        sub_1BF3E4F48(v32);

        sub_1BF3B03C0(v33, v11);
      }
    }

    else
    {
      __break(1u);
    }
  }

  result = sub_1BF4E9464();
  __break(1u);
  return result;
}

uint64_t sub_1BF4965D8@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD97E8, &unk_1BF4F29E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v27 - v5;
  v27[0] = 0;
  v27[1] = 0xE000000000000000;
  v7 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](22);
  MEMORY[0x1BFB58C90](0x200A5443454C4553, 0xEB00000000202020);
  v8 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v8);

  MEMORY[0x1BFB58C90](0x20200A4D4F52460ALL, 0xEA00000000002020);
  v9 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v9);

  MEMORY[0x1BFB58C90](59, 0xE100000000000000);
  if (swift_weakLoadStrong())
  {
    v10 = sub_1BF3E4F48(v7);
    if (v1)
    {
    }

    v12 = v10;

    if (!v12[2])
    {

      goto LABEL_10;
    }

    v13 = v12[4];

    v14 = sub_1BF4E92F4();
    v16 = sub_1BF48063C(v14, v15, v13);
    v18 = v17;
    v20 = v19;
    v21 = ~v19;

    if (!v21)
    {
      goto LABEL_10;
    }

    sub_1BF4244EC(v16, v18, v20);
    v23 = v22;
    sub_1BF3DB1FC(v16, v18, v20);
    if (!v23)
    {
      goto LABEL_10;
    }

    sub_1BF4E7344();

    v24 = sub_1BF4E7394();
    v25 = *(v24 - 8);
    if ((*(v25 + 48))(v6, 1, v24) == 1)
    {
      sub_1BF38C9B4(v6, &qword_1EBDD97E8, &unk_1BF4F29E0);
LABEL_10:
      v26 = sub_1BF4E7394();
      return (*(*(v26 - 8) + 56))(a1, 1, 1, v26);
    }

    (*(v25 + 32))(a1, v6, v24);
    return (*(v25 + 56))(a1, 0, 1, v24);
  }

  else
  {
    result = sub_1BF4E9464();
    __break(1u);
  }

  return result;
}

uint64_t sub_1BF4969A4()
{
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_9;
  }

  v2 = *(Strong + 24);
  v3 = Strong;
  os_unfair_lock_lock(*(v2 + 16));
  v4 = *(v3 + 64);
  os_unfair_lock_unlock(*(v2 + 16));

  if (!v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = sub_1BF496CD8();
  if (v0)
  {
    return result;
  }

  v6 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](38);
  MEMORY[0x1BFB58C90](0x4920545245534E49, 0xEC000000204F544ELL);
  v7 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v7);

  MEMORY[0x1BFB58C90](0x202020200A2820, 0xE700000000000000);
  v8 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v8);

  MEMORY[0x1BFB58C90](0xD000000000000010, 0x80000001BF4FA310);
  v9 = sub_1BF4E7354();
  v11 = v10;

  v12 = sub_1BF3D8148(v9, v11);
  v14 = v13;
  v16 = v15;
  v19 = *(v6 + 16) + 1;
  v17 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v17);

  MEMORY[0x1BFB58C90](0x676E69646E696240, 0xE800000000000000);
  sub_1BF3D8840(v12, v14, v16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D6680(v12, v14, v16, 0x676E69646E696240, 0xE800000000000000, isUniquelyReferenced_nonNull_native);

  sub_1BF3D88B8(v12, v14, v16);

  MEMORY[0x1BFB58C90](3877130, 0xE300000000000000);
  if (!swift_weakLoadStrong())
  {
LABEL_9:
    result = sub_1BF4E9464();
    __break(1u);
    return result;
  }

  sub_1BF3E4F48(v6);
}

uint64_t sub_1BF496CFC()
{
  v1 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](52);
  MEMORY[0x1BFB58C90](0x200A5443454C4553, 0xEB00000000202020);
  v2 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v2);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v3 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v3);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v4 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v4);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v5 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v5);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v6 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v6);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v7 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v7);

  MEMORY[0x1BFB58C90](0x20200A4D4F52460ALL, 0xEA00000000002020);
  v8 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v8);

  MEMORY[0x1BFB58C90](59, 0xE100000000000000);
  if (swift_weakLoadStrong())
  {
    v9 = sub_1BF3E4F48(v1);
    if (v0)
    {
    }

    else
    {
      v10 = v9;

      v1 = sub_1BF4A59F0(v10);
    }

    return v1;
  }

  else
  {
    result = sub_1BF4E9464();
    __break(1u);
  }

  return result;
}

void sub_1BF49700C(uint64_t *a1, unint64_t *a2)
{
  v180 = a1;
  v189 = sub_1BF4E7394();
  v193 = *(v189 - 8);
  v4 = *(v193 + 64);
  MEMORY[0x1EEE9AC00](v189);
  v179 = &v167 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v181 = &v167 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v188 = &v167 - v9;
  v182 = sub_1BF4E7914();
  v184 = *(v182 - 8);
  v10 = *(v184 + 64);
  MEMORY[0x1EEE9AC00](v182);
  v178 = &v167 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v183 = (&v167 - v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD97E8, &unk_1BF4F29E0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v185 = &v167 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v186 = &v167 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = (&v167 - v20);
  v22 = sub_1BF4E7984();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v167 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v187 = &v167 - v27;
  v28 = *a2;
  v29 = sub_1BF4E92F4();
  v31 = sub_1BF48063C(v29, v30, v28);
  v33 = v32;
  v35 = v34;
  v36 = ~v34;

  if (!v36)
  {
    goto LABEL_17;
  }

  v37 = sub_1BF4244EC(v31, v33, v35);
  v39 = v38;
  sub_1BF3DB1FC(v31, v33, v35);
  if (!v39)
  {
    goto LABEL_17;
  }

  v176 = v37;
  v177 = v2;
  v40 = sub_1BF4E92F4();
  v42 = sub_1BF48063C(v40, v41, v28);
  v44 = v43;
  v46 = v45;
  v47 = ~v45;

  if (v47)
  {
    v48 = sub_1BF4244EC(v42, v44, v46);
    v50 = v49;
    sub_1BF3DB1FC(v42, v44, v46);
    if (v50)
    {
      v174 = v48;
      v175 = v50;
      v51 = sub_1BF4E92F4();
      v53 = sub_1BF48063C(v51, v52, v28);
      v55 = v54;
      v57 = v56;
      v58 = ~v56;

      if (!v58)
      {
        goto LABEL_15;
      }

      v59 = sub_1BF4244EC(v53, v55, v57);
      v61 = v60;
      sub_1BF3DB1FC(v53, v55, v57);
      if (!v61)
      {
        goto LABEL_15;
      }

      v172 = v59;
      v173 = v61;
      v62 = sub_1BF4E92F4();
      v64 = sub_1BF48063C(v62, v63, v28);
      v66 = v65;
      v68 = v67;
      v69 = ~v67;

      if (!v69 || (v70 = sub_1BF4244EC(v64, v66, v68), v72 = v71, sub_1BF3DB1FC(v64, v66, v68), (v171 = v72) == 0))
      {
LABEL_14:

LABEL_15:

        goto LABEL_16;
      }

      v169 = v70;
      v73 = sub_1BF4E92F4();
      v170 = sub_1BF48063C(v73, v74, v28);
      v76 = v75;
      v78 = v77;
      v79 = ~v77;

      if (!v79 || (v80 = v170, v168 = sub_1BF4244E0(v170, v76, v78), v82 = v81, sub_1BF3DB1FC(v80, v76, v78), (v82 & 1) != 0))
      {

        goto LABEL_14;
      }

      if (qword_1EBDD8550 != -1)
      {
        goto LABEL_87;
      }

      while (1)
      {
        v87 = v189;
        __swift_project_value_buffer(v189, qword_1EBDD99A8);
        if (v172 == sub_1BF4E7354() && v173 == v88)
        {
          break;
        }

        v89 = sub_1BF4E9734();

        if (v89)
        {

          v87 = v189;
          goto LABEL_29;
        }

        sub_1BF4E7344();
        v132 = v193;
        v87 = v189;
        if ((*(v193 + 48))(v21, 1, v189) == 1)
        {

          sub_1BF38C9B4(v21, &qword_1EBDD97E8, &unk_1BF4F29E0);
          if (qword_1EDC9D460 != -1)
          {
            swift_once();
          }

          v133 = sub_1BF4E7B54();
          __swift_project_value_buffer(v133, qword_1EDCA6898);
          v134 = v173;

          v84 = sub_1BF4E7B34();
          v135 = sub_1BF4E8E64();

          if (os_log_type_enabled(v84, v135))
          {
            v86 = swift_slowAlloc();
            v136 = swift_slowAlloc();
            v192[0] = v136;
            *v86 = 136446466;
            v137 = sub_1BF38D65C(v172, v134, v192);

            *(v86 + 4) = v137;
            *(v86 + 12) = 2082;
            v138 = sub_1BF38D65C(v176, v39, v192);

            *(v86 + 14) = v138;
            _os_log_impl(&dword_1BF389000, v84, v135, "Malformed relationshipID %{public}s for %{public}s", v86, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1BFB5A5D0](v136, -1, -1);
            goto LABEL_21;
          }

          goto LABEL_22;
        }

        v90 = v187;
        (*(v132 + 32))(v187, v21, v87);
        (*(v132 + 56))(v90, 0, 1, v87);
LABEL_30:
        v91 = sub_1BF4E7944();
        v92 = *(v91 + 48);
        v93 = *(v91 + 52);
        swift_allocObject();
        sub_1BF4E7924();
        sub_1BF4A63E4(v90, v25, MEMORY[0x1E69C7330]);
        v94 = sub_1BF4E79A4();
        v95 = *(v94 + 48);
        v96 = *(v94 + 52);
        v173 = v94;
        swift_allocObject();
        v174 = sub_1BF4E7954();
        v97 = sub_1BF4E92F4();
        v99 = sub_1BF48063C(v97, v98, v28);
        v101 = v100;
        v103 = v102;
        v104 = ~v102;

        if (v104)
        {
          v105 = sub_1BF4244EC(v99, v101, v103);
          v107 = v106;
          sub_1BF3DB1FC(v99, v101, v103);
        }

        else
        {
          v105 = 0;
          v107 = 0;
        }

        v108 = v185;
        if (v168 == 1)
        {
          v109 = 1;
        }

        else
        {
          v109 = 2;
        }

        if (!v168)
        {
          v109 = 0;
        }

        v25 = v187;
        v110 = v193;
        v111 = v174;
        if (v109 == 2)
        {

          if (qword_1EDC9D460 != -1)
          {
            swift_once();
          }

          v112 = sub_1BF4E7B54();
          __swift_project_value_buffer(v112, qword_1EDCA6898);

          v113 = sub_1BF4E7B34();
          v114 = sub_1BF4E8E64();

          if (os_log_type_enabled(v113, v114))
          {
            v115 = swift_slowAlloc();
            v116 = swift_slowAlloc();
            v192[0] = v116;
            *v115 = 136446466;
            LOBYTE(v190) = 2;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9A10, &unk_1BF4F53D0);
            v117 = sub_1BF4E8994();
            v119 = sub_1BF38D65C(v117, v118, v192);

            *(v115 + 4) = v119;
            *(v115 + 12) = 2082;
            v190 = v111;
            sub_1BF4A6514(&qword_1EBDD9A18, MEMORY[0x1E69C7338]);
            v120 = sub_1BF4E96A4();
            v122 = sub_1BF38D65C(v120, v121, v192);

            *(v115 + 14) = v122;
            _os_log_impl(&dword_1BF389000, v113, v114, "Illegal destination type %{public}s for %{public}s", v115, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1BFB5A5D0](v116, -1, -1);
            MEMORY[0x1BFB5A5D0](v115, -1, -1);

LABEL_62:
            sub_1BF4A644C(v25, MEMORY[0x1E69C7330]);
            return;
          }

LABEL_61:

          goto LABEL_62;
        }

        if ((v109 & 1) == 0)
        {

          v139 = v182;
          (*(v184 + 104))(v183, *MEMORY[0x1E69C72D8], v182);
          goto LABEL_71;
        }

        if (!v107)
        {

          if (qword_1EDC9D460 == -1)
          {
            goto LABEL_66;
          }

          goto LABEL_89;
        }

        v192[0] = v105;
        v192[1] = v107;
        v190 = 124;
        v191 = 0xE100000000000000;
        sub_1BF399080();
        v123 = sub_1BF4E9114();

        v124 = v123;
        v176 = *(v123 + 16);
        if (!v176)
        {
          v125 = MEMORY[0x1E69E7CC0];
LABEL_70:

          v139 = v182;
          *v183 = v125;
          v147 = *MEMORY[0x1E69C72D0];
          (*(v184 + 104))();
          v25 = v187;
          v110 = v193;
          v111 = v174;
          v108 = v185;
LABEL_71:
          sub_1BF4E7344();
          if ((*(v110 + 48))(v108, 1, v87) == 1)
          {
            sub_1BF38C9B4(v108, &qword_1EBDD97E8, &unk_1BF4F29E0);
            if (qword_1EDC9D460 != -1)
            {
              swift_once();
            }

            v148 = sub_1BF4E7B54();
            __swift_project_value_buffer(v148, qword_1EDCA6898);

            v149 = v171;

            v150 = sub_1BF4E7B34();
            v151 = sub_1BF4E8E64();

            if (os_log_type_enabled(v150, v151))
            {
              v152 = swift_slowAlloc();
              v153 = v139;
              v154 = swift_slowAlloc();
              v192[0] = v154;
              *v152 = 136446466;
              v155 = sub_1BF38D65C(v169, v149, v192);

              *(v152 + 4) = v155;
              *(v152 + 12) = 2082;
              v190 = v111;
              sub_1BF4A6514(&qword_1EBDD9A18, MEMORY[0x1E69C7338]);
              v156 = sub_1BF4E96A4();
              v158 = sub_1BF38D65C(v156, v157, v192);

              *(v152 + 14) = v158;
              _os_log_impl(&dword_1BF389000, v150, v151, "Malformed version %{public}s for %{public}s", v152, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x1BFB5A5D0](v154, -1, -1);
              MEMORY[0x1BFB5A5D0](v152, -1, -1);

              (*(v184 + 8))(v183, v153);
              goto LABEL_62;
            }
          }

          else
          {

            v159 = v181;
            (*(v110 + 32))(v181, v108, v87);
            sub_1BF4E7904();
            (*(v110 + 16))(v179, v159, v87);
            (*(v184 + 16))(v178, v183, v139);

            v160 = sub_1BF4E78D4();
            v161 = v180;
            v162 = *v180;
            if ((*v180 & 0xC000000000000001) != 0)
            {
              if (v162 < 0)
              {
                v163 = *v180;
              }

              else
              {
                v163 = v162 & 0xFFFFFFFFFFFFFF8;
              }

              v164 = sub_1BF4E9204();
              if (__OFADD__(v164, 1))
              {
                __break(1u);
LABEL_89:
                swift_once();
LABEL_66:
                v140 = sub_1BF4E7B54();
                __swift_project_value_buffer(v140, qword_1EDCA6898);

                v113 = sub_1BF4E7B34();
                v141 = sub_1BF4E8E64();

                if (os_log_type_enabled(v113, v141))
                {
                  v142 = swift_slowAlloc();
                  v143 = swift_slowAlloc();
                  v192[0] = v143;
                  *v142 = 136446210;
                  v190 = v111;
                  sub_1BF4A6514(&qword_1EBDD9A18, MEMORY[0x1E69C7338]);
                  v144 = sub_1BF4E96A4();
                  v146 = sub_1BF38D65C(v144, v145, v192);

                  *(v142 + 4) = v146;
                  _os_log_impl(&dword_1BF389000, v113, v141, "Missing destination IDs for %{public}s", v142, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1Tm(v143);
                  MEMORY[0x1BFB5A5D0](v143, -1, -1);
                  MEMORY[0x1BFB5A5D0](v142, -1, -1);

                  goto LABEL_62;
                }

                goto LABEL_61;
              }

              v165 = sub_1BF4E40F8(v163, v164 + 1);
              v161 = v180;
              *v180 = v165;
            }

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v192[0] = *v161;
            sub_1BF3D7A18(v160, v111, isUniquelyReferenced_nonNull_native);

            *v161 = v192[0];
            (*(v110 + 8))(v181, v87);
          }

          (*(v184 + 8))(v183, v139);
          goto LABEL_62;
        }

        v28 = 0;
        v39 = (v110 + 48);
        v175 = (v110 + 32);
        v21 = (v123 + 40);
        v125 = MEMORY[0x1E69E7CC0];
        v126 = v186;
        while (v28 < *(v124 + 2))
        {
          v25 = v124;
          v127 = *(v21 - 1);
          v128 = *v21;

          sub_1BF4E7344();

          if ((*v39)(v126, 1, v87) == 1)
          {
            sub_1BF38C9B4(v126, &qword_1EBDD97E8, &unk_1BF4F29E0);
          }

          else
          {
            v129 = *v175;
            (*v175)(v188, v126, v87);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v125 = sub_1BF432B54(0, *(v125 + 2) + 1, 1, v125);
            }

            v131 = *(v125 + 2);
            v130 = *(v125 + 3);
            if (v131 >= v130 >> 1)
            {
              v125 = sub_1BF432B54(v130 > 1, v131 + 1, 1, v125);
            }

            *(v125 + 2) = v131 + 1;
            v87 = v189;
            v129(&v125[((*(v193 + 80) + 32) & ~*(v193 + 80)) + *(v193 + 72) * v131], v188, v189);
            v126 = v186;
          }

          ++v28;
          v21 += 2;
          v124 = v25;
          if (v176 == v28)
          {
            goto LABEL_70;
          }
        }

        __break(1u);
LABEL_87:
        swift_once();
      }

LABEL_29:
      v90 = v187;
      (*(v193 + 56))(v187, 1, 1, v87);
      goto LABEL_30;
    }
  }

LABEL_16:

LABEL_17:
  if (qword_1EDC9D460 != -1)
  {
    swift_once();
  }

  v83 = sub_1BF4E7B54();
  __swift_project_value_buffer(v83, qword_1EDCA6898);
  v84 = sub_1BF4E7B34();
  v85 = sub_1BF4E8E64();
  if (os_log_type_enabled(v84, v85))
  {
    v86 = swift_slowAlloc();
    *v86 = 0;
    _os_log_impl(&dword_1BF389000, v84, v85, "Encountered malformed record metadata", v86, 2u);
LABEL_21:
    MEMORY[0x1BFB5A5D0](v86, -1, -1);
  }

LABEL_22:
}

uint64_t sub_1BF4983D0(uint64_t a1)
{
  v3 = sub_1BF4E7984();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v122 = &v118 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BF4E7394();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v140 = &v118 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BF4E7914();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v118 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = v1;
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_28;
  }

  v16 = *(Strong + 24);
  v17 = Strong;
  os_unfair_lock_lock(*(v16 + 16));
  v18 = *(v17 + 64);
  os_unfair_lock_unlock(*(v16 + 16));

  if (!v18)
  {
    __break(1u);
    goto LABEL_27;
  }

  v18 = 0xD00000000000002FLL;
  sub_1BF4E78C4();
  v19 = (*(v11 + 88))(v14, v10);
  v120 = *MEMORY[0x1E69C72D0];
  v125 = a1;
  v126 = v7;
  v130 = v6;
  v121 = v19;
  if (v19 == v120)
  {
    (*(v11 + 96))(v14, v10);
    v20 = *v14;
    v21 = *(*v14 + 16);
    if (v21)
    {
      v134 = MEMORY[0x1E69E7CC0];
      sub_1BF3A31DC(0, v21, 0);
      v22 = v134;
      v128 = *(v126 + 16);
      v23 = (*(v126 + 80) + 32) & ~*(v126 + 80);
      v119 = v20;
      v24 = v20 + v23;
      v127 = *(v126 + 72);
      v129 = v126 + 16;
      v25 = (v126 + 8);
      do
      {
        v26 = v140;
        v27 = v130;
        (v128)(v140, v24, v130);
        v28 = sub_1BF4E7354();
        v30 = v29;
        (*v25)(v26, v27);
        v134 = v22;
        v32 = *(v22 + 16);
        v31 = *(v22 + 24);
        if (v32 >= v31 >> 1)
        {
          sub_1BF3A31DC((v31 > 1), v32 + 1, 1);
          v22 = v134;
        }

        *(v22 + 16) = v32 + 1;
        v33 = v22 + 16 * v32;
        *(v33 + 32) = v28;
        *(v33 + 40) = v30;
        v24 += v127;
        --v21;
      }

      while (v21);

      v18 = 0xD00000000000002FLL;
    }

    else
    {
      v34 = *v14;

      v22 = MEMORY[0x1E69E7CC0];
    }

    v134 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9BB0, &qword_1BF4EC140);
    sub_1BF38C8B4(&qword_1EDC9F180, &unk_1EBDD9BB0, &qword_1BF4EC140);
    v119 = sub_1BF4E8894();
    v129 = v35;

    v6 = v130;
    v7 = v126;
  }

  else
  {
    if (v19 != *MEMORY[0x1E69C72D8])
    {
      goto LABEL_28;
    }

    v119 = 0;
    v129 = 0;
  }

  v36 = v140;
  v37 = v122;
  LODWORD(v14) = v120;
  sub_1BF4E78E4();
  sub_1BF4E7994();

  if ((*(v7 + 48))(v37, 1, v6) == 1)
  {
    if (qword_1EBDD8550 == -1)
    {
LABEL_16:
      __swift_project_value_buffer(v6, qword_1EBDD99A8);
      v122 = sub_1BF4E7354();
      v127 = v38;
      goto LABEL_18;
    }

LABEL_27:
    swift_once();
    goto LABEL_16;
  }

  (*(v7 + 32))(v36, v37, v6);
  v122 = sub_1BF4E7354();
  v127 = v39;
  (*(v7 + 8))(v36, v6);
LABEL_18:
  v128 = v121 == v14;
  v134 = 0;
  v135 = 0xE000000000000000;
  v40 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](99);
  v138[0] = v134;
  v138[1] = v135;
  v139 = v40;
  MEMORY[0x1BFB58C90](0x204543414C504552, 0xED0000204F544E49);
  v41 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v41);

  MEMORY[0x1BFB58C90](0x202020200A2820, 0xE700000000000000);
  v42 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v42);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v43 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v43);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v44 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v44);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v45 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v45);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v46 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v46);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v47 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v47);

  MEMORY[0x1BFB58C90](v18 - 31, 0x80000001BF4FA310);
  sub_1BF4E78E4();
  v48 = sub_1BF4E7964();
  v50 = v49;

  v51 = sub_1BF3D8148(v48, v50);
  v53 = v52;
  v55 = v54;
  v134 = 0x676E69646E696240;
  v135 = 0xE800000000000000;
  *&v131 = *(v40 + 16) + 1;
  v56 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v56);

  v58 = v134;
  v57 = v135;
  MEMORY[0x1BFB58C90](v134, v135);
  sub_1BF3D8840(v51, v53, v55);
  v59 = v139;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v134 = v59;
  sub_1BF3D6680(v51, v53, v55, v58, v57, isUniquelyReferenced_nonNull_native);

  sub_1BF3D88B8(v51, v53, v55);

  v61 = v134;
  v139 = v134;
  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  sub_1BF4E78E4();
  sub_1BF4E7974();

  v62 = sub_1BF4E7934();
  v64 = v63;

  v65 = sub_1BF3D8148(v62, v64);
  v67 = v66;
  v69 = v68;
  v134 = 0x676E69646E696240;
  v135 = 0xE800000000000000;
  *&v131 = *(v61 + 16) + 1;
  v70 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v70);

  v71 = v134;
  v72 = v135;
  MEMORY[0x1BFB58C90](v134, v135);
  sub_1BF3D8840(v65, v67, v69);
  v73 = v139;
  v74 = swift_isUniquelyReferenced_nonNull_native();
  v134 = v73;
  sub_1BF3D6680(v65, v67, v69, v71, v72, v74);

  sub_1BF3D88B8(v65, v67, v69);

  v75 = v134;
  v139 = v134;
  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v76 = v127;

  v77 = sub_1BF3D8148(v122, v76);
  v79 = v78;
  LOBYTE(v67) = v80;
  v134 = 0x676E69646E696240;
  v135 = 0xE800000000000000;
  *&v131 = *(v75 + 16) + 1;
  v81 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v81);

  v82 = v134;
  v83 = v135;
  MEMORY[0x1BFB58C90](v134, v135);
  sub_1BF3D8840(v77, v79, v67);
  v84 = v139;
  v85 = swift_isUniquelyReferenced_nonNull_native();
  v134 = v84;
  sub_1BF3D6680(v77, v79, v67, v82, v83, v85);

  sub_1BF3D88B8(v77, v79, v67);

  v86 = v134;
  v139 = v134;
  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v87 = v140;
  sub_1BF4E78F4();
  v88 = sub_1BF4E7354();
  v90 = v89;
  (*(v126 + 8))(v87, v130);

  v91 = sub_1BF3D8148(v88, v90);
  v93 = v92;
  v95 = v94;
  v134 = 0x676E69646E696240;
  v135 = 0xE800000000000000;
  *&v131 = *(v86 + 16) + 1;
  v96 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v96);

  v97 = v134;
  v98 = v135;
  MEMORY[0x1BFB58C90](v134, v135);
  sub_1BF3D8840(v91, v93, v95);
  v99 = v139;
  v100 = swift_isUniquelyReferenced_nonNull_native();
  v134 = v99;
  sub_1BF3D6680(v91, v93, v95, v97, v98, v100);

  sub_1BF3D88B8(v91, v93, v95);

  v101 = v134;
  v139 = v134;
  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v102 = sub_1BF3D7F44(v128);
  v104 = v103;
  LOBYTE(v93) = v105;
  v134 = 0x676E69646E696240;
  v135 = 0xE800000000000000;
  *&v131 = *(v101 + 16) + 1;
  v106 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v106);

  v107 = v134;
  v108 = v135;
  MEMORY[0x1BFB58C90](v134, v135);
  sub_1BF3D8840(v102, v104, v93);
  v109 = v139;
  v110 = swift_isUniquelyReferenced_nonNull_native();
  v134 = v109;
  sub_1BF3D6680(v102, v104, v93, v107, v108, v110);

  sub_1BF3D88B8(v102, v104, v93);
  v139 = v134;
  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  if (v129)
  {
    *(&v132 + 1) = MEMORY[0x1E69E6158];
    v133 = &off_1F3DF00A0;
    *&v131 = v119;
    *(&v131 + 1) = v129;
    sub_1BF38E610(&v131, &v134);
  }

  else
  {
    v133 = 0;
    v131 = 0u;
    v132 = 0u;
    v111 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    v136 = sub_1BF3901C0(0, &qword_1EDC962F8, 0x1E695DFB0);
    v137 = &off_1F3DF0088;
    v134 = v111;
    if (*(&v132 + 1))
    {
      sub_1BF38C9B4(&v131, &qword_1EBDD99D0, &qword_1BF4F7B80);
    }
  }

  v112 = v136;
  v113 = v137;
  v114 = __swift_project_boxed_opaque_existential_1(&v134, v136);
  sub_1BF478C08(v114, v138, v112, v113);
  __swift_destroy_boxed_opaque_existential_1Tm(&v134);
  MEMORY[0x1BFB58C90](3877130, 0xE300000000000000);
  v115 = v139;
  if (!swift_weakLoadStrong())
  {
    while (1)
    {
LABEL_28:
      sub_1BF4E9464();
      __break(1u);
    }
  }

  v116 = v124;
  sub_1BF3E4F48(v115);

  if (!v116)
  {
  }

  return result;
}

uint64_t sub_1BF49920C()
{
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_8;
  }

  v2 = *(Strong + 24);
  v3 = Strong;
  os_unfair_lock_lock(*(v2 + 16));
  v4 = *(v3 + 64);
  os_unfair_lock_unlock(*(v2 + 16));

  if (!v4)
  {
    __break(1u);
    goto LABEL_8;
  }

  v29 = v0;
  v5 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](33);
  MEMORY[0x1BFB58C90](0x46204554454C4544, 0xEC000000204D4F52);
  v6 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v6);

  MEMORY[0x1BFB58C90](0x2045524548570ALL, 0xE700000000000000);
  v7 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v7);

  MEMORY[0x1BFB58C90](542329120, 0xE400000000000000);
  v8 = sub_1BF4E7964();
  v10 = v9;

  v11 = sub_1BF3D8148(v8, v10);
  v13 = v12;
  v15 = v14;
  v30 = *(v5 + 16) + 1;
  v16 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v16);

  MEMORY[0x1BFB58C90](0x676E69646E696240, 0xE800000000000000);
  sub_1BF3D8840(v11, v13, v15);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D6680(v11, v13, v15, 0x676E69646E696240, 0xE800000000000000, isUniquelyReferenced_nonNull_native);

  sub_1BF3D88B8(v11, v13, v15);

  MEMORY[0x1BFB58C90](0x20444E410ALL, 0xE500000000000000);
  v18 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v18);

  MEMORY[0x1BFB58C90](542329120, 0xE400000000000000);
  sub_1BF4E7974();
  v19 = sub_1BF4E7934();
  v21 = v20;

  v22 = sub_1BF3D8148(v19, v21);
  v24 = v23;
  LOBYTE(v10) = v25;
  v31 = *(v5 + 16) + 1;
  v26 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v26);

  MEMORY[0x1BFB58C90](0x676E69646E696240, 0xE800000000000000);
  sub_1BF3D8840(v22, v24, v10);
  v27 = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D6680(v22, v24, v10, 0x676E69646E696240, 0xE800000000000000, v27);

  sub_1BF3D88B8(v22, v24, v10);

  MEMORY[0x1BFB58C90](59, 0xE100000000000000);
  if (!swift_weakLoadStrong())
  {
LABEL_8:
    result = sub_1BF4E9464();
    __break(1u);
    return result;
  }

  sub_1BF3E4F48(v5);

  if (!v29)
  {
  }

  return result;
}

uint64_t sub_1BF49969C()
{
  v1 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](64);
  MEMORY[0x1BFB58C90](0x200A5443454C4553, 0xEB00000000202020);
  v2 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v2);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v3 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v3);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v4 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v4);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v5 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v5);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v6 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v6);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v7 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v7);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v8 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v8);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v9 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v9);

  MEMORY[0x1BFB58C90](0x20200A4D4F52460ALL, 0xEA00000000002020);
  v10 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v10);

  MEMORY[0x1BFB58C90](59, 0xE100000000000000);
  if (swift_weakLoadStrong())
  {
    v11 = sub_1BF3E4F48(v1);
    if (v0)
    {
    }

    else
    {
      v12 = v11;

      v1 = sub_1BF4A5A9C(v12);
    }

    return v1;
  }

  else
  {
    result = sub_1BF4E9464();
    __break(1u);
  }

  return result;
}

void sub_1BF499A1C(void **a1, uint64_t *a2)
{
  v272 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9A00, &qword_1BF4F53C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v270 = &v254 - v6;
  v277 = sub_1BF4E7A94();
  v274 = *(v277 - 8);
  v7 = v274[8];
  MEMORY[0x1EEE9AC00](v277);
  v268 = &v254 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v273 = &v254 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v271 = &v254 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v278 = &v254 - v14;
  v283 = sub_1BF4E7A34();
  v279 = *(v283 - 8);
  v15 = *(v279 + 64);
  MEMORY[0x1EEE9AC00](v283);
  v269 = &v254 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v282 = &v254 - v18;
  v19 = sub_1BF4E79F4();
  v20 = *(v19 - 8);
  v288 = v19;
  v289 = v20;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v276 = &v254 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v287 = &v254 - v24;
  v293 = sub_1BF4E79E4();
  v295 = *(v293 - 8);
  v25 = v295[8];
  MEMORY[0x1EEE9AC00](v293);
  v275 = &v254 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v285 = &v254 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v284 = &v254 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v286 = &v254 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD97E8, &unk_1BF4F29E0);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v265 = &v254 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v254 - v37;
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v254 - v40;
  v292 = sub_1BF4E7394();
  v294 = *(v292 - 8);
  v42 = *(v294 + 64);
  MEMORY[0x1EEE9AC00](v292);
  v280 = &v254 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v281 = (&v254 - v45);
  MEMORY[0x1EEE9AC00](v46);
  v267 = &v254 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v264 = &v254 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v263 = &v254 - v51;
  MEMORY[0x1EEE9AC00](v52);
  v266 = &v254 - v53;
  MEMORY[0x1EEE9AC00](v54);
  v291 = &v254 - v55;
  MEMORY[0x1EEE9AC00](v56);
  v290 = &v254 - v57;
  v58 = *a2;
  v59 = sub_1BF4E92F4();
  v61 = sub_1BF48063C(v59, v60, v58);
  v63 = v62;
  v65 = v64;
  v66 = ~v64;

  if (!v66 || (v67 = sub_1BF4244EC(v61, v63, v65), v69 = v68, sub_1BF3DB1FC(v61, v63, v65), !v69))
  {
LABEL_12:
    if (qword_1EDC9D460 != -1)
    {
      swift_once();
    }

    v110 = sub_1BF4E7B54();
    __swift_project_value_buffer(v110, qword_1EDCA6898);
    v111 = sub_1BF4E7B34();
    v112 = sub_1BF4E8E64();
    if (!os_log_type_enabled(v111, v112))
    {
      goto LABEL_17;
    }

    v113 = swift_slowAlloc();
    *v113 = 0;
    v114 = "Encountered malformed pairing relationship";
LABEL_16:
    _os_log_impl(&dword_1BF389000, v111, v112, v114, v113, 2u);
    MEMORY[0x1BFB5A5D0](v113, -1, -1);
LABEL_17:

    return;
  }

  v261 = v67;
  v262 = v2;
  v70 = sub_1BF4E92F4();
  v72 = sub_1BF48063C(v70, v71, v58);
  v74 = v73;
  v76 = v75;
  v77 = ~v75;

  if (!v77)
  {
    goto LABEL_11;
  }

  v260 = sub_1BF4244E0(v72, v74, v76);
  v79 = v78;
  sub_1BF3DB1FC(v72, v74, v76);
  if (v79)
  {
    goto LABEL_11;
  }

  v80 = sub_1BF4E92F4();
  v82 = sub_1BF48063C(v80, v81, v58);
  v84 = v83;
  v86 = v85;
  v87 = ~v85;

  if (!v87)
  {
    goto LABEL_11;
  }

  v259 = sub_1BF4244E0(v82, v84, v86);
  v89 = v88;
  sub_1BF3DB1FC(v82, v84, v86);
  if (v89)
  {
    goto LABEL_11;
  }

  v90 = sub_1BF4E92F4();
  v92 = sub_1BF48063C(v90, v91, v58);
  v94 = v93;
  v96 = v95;
  v97 = ~v95;

  if (!v97)
  {
    goto LABEL_11;
  }

  v258 = sub_1BF4244E0(v92, v94, v96);
  v99 = v98;
  sub_1BF3DB1FC(v92, v94, v96);
  if (v99)
  {
    goto LABEL_11;
  }

  v100 = sub_1BF4E92F4();
  v102 = sub_1BF48063C(v100, v101, v58);
  v104 = v103;
  v106 = v105;
  v107 = ~v105;

  if (!v107 || (v257 = sub_1BF4244E0(v102, v104, v106), v109 = v108, sub_1BF3DB1FC(v102, v104, v106), (v109 & 1) != 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  v115 = sub_1BF4E92F4();
  v117 = sub_1BF48063C(v115, v116, v58);
  v119 = v118;
  v121 = v120;
  v122 = ~v120;

  if (v122 && (sub_1BF4244EC(v117, v119, v121), v124 = v123, sub_1BF3DB1FC(v117, v119, v121), v124))
  {

    sub_1BF4E7344();

    v125 = v294;
    v126 = v292;
    if ((*(v294 + 48))(v41, 1, v292) == 1)
    {

      sub_1BF38C9B4(v41, &qword_1EBDD97E8, &unk_1BF4F29E0);
      if (qword_1EDC9D460 != -1)
      {
        swift_once();
      }

      v127 = sub_1BF4E7B54();
      __swift_project_value_buffer(v127, qword_1EDCA6898);
      v111 = sub_1BF4E7B34();
      v112 = sub_1BF4E8E64();
      if (!os_log_type_enabled(v111, v112))
      {
        goto LABEL_17;
      }

      v113 = swift_slowAlloc();
      *v113 = 0;
      v114 = "Encountered malformed relationship ID";
      goto LABEL_16;
    }

    (*(v125 + 32))(v290, v41, v126);
  }

  else
  {
    _s9ChronoKit26RemoteActivitySubscriptionV2id10activityID12hostIdentity0G5Owner7metrics6family16subscriptionType12creationDateAC10Foundation4UUIDV_SS0A8Services012DeviceScopedJ0VyAO15TypedIdentifierVyAO0xO0O10WidgetHostOGGAC0D9OwnershipO0yB00D17MetricsDefinitionVA0_0D6FamilyOAC0deO0OAL0Q0VSgtcfcfA__0();
    v125 = v294;
    v126 = v292;
  }

  sub_1BF4E7344();
  v255 = *(v125 + 48);
  if (v255(v38, 1, v126) == 1)
  {
    __break(1u);
    return;
  }

  v128 = (v125 + 32);
  v254 = *(v125 + 32);
  v254(v291, v38, v126);
  v129 = sub_1BF4E92F4();
  v131 = sub_1BF48063C(v129, v130, v58);
  v133 = v132;
  v135 = v134;
  v136 = ~v134;

  if (v136 && (v137 = sub_1BF4244EC(v131, v133, v135), v139 = v138, sub_1BF3DB1FC(v131, v133, v135), v139))
  {
    v256 = v137;
    v261 = v139;
  }

  else
  {

    v256 = 0;
    v261 = 0xE000000000000000;
  }

  v140 = v286;
  sub_1BF4E79B4();
  v141 = MEMORY[0x1E69C7478];
  if (v258 != 1)
  {
    v141 = MEMORY[0x1E69C7460];
  }

  (*(v289 + 104))(v287, *v141, v288);
  v142 = v295[2];
  v143 = v293;
  v142(v284, v140, v293);
  v142(v285, v140, v143);
  v144 = v262;
  v145 = v294;
  v146 = v281;
  if (v257 > 1)
  {
    v147 = v280;
    if (v257 == 2)
    {
      v148 = MEMORY[0x1E69C74A0];
      goto LABEL_53;
    }

    if (v257 != 3)
    {
      goto LABEL_47;
    }

    v149 = sub_1BF4E92F4();
    v151 = sub_1BF48063C(v149, v150, v58);
    v153 = v152;
    v155 = v154;
    v156 = ~v154;

    if (v156 && (sub_1BF4244EC(v151, v153, v155), v158 = v157, sub_1BF3DB1FC(v151, v153, v155), v158))
    {
      v159 = v265;
      sub_1BF4E7344();

      v160 = v292;
      if (v255(v159, 1, v292) != 1)
      {
        v249 = v263;
        v250 = v254;
        v254(v263, v159, v160);
        v251 = v282;
        v250(v282, v249, v160);
        v197 = v251;
        v148 = MEMORY[0x1E69C74B8];
        v144 = v262;
        v145 = v294;
        v146 = v281;
LABEL_54:
        (*(v279 + 104))(v197, *v148, v283);
        v198 = (v145 + 16);
        v199 = *(v145 + 16);
        v200 = v292;
        v199(v146, v291, v292);
        v199(v147, v290, v200);
        if ((v259 | v260) < 0)
        {
          __break(1u);
        }

        else
        {
          sub_1BF4E79B4();
          (*(v289 + 16))(v276, v287, v288);
          v201 = sub_1BF4E7A84();
          v202 = (*(*(v201 - 8) + 56))(v270, 1, 1, v201);
          MEMORY[0x1EEE9AC00](v202);
          *(&v254 - 4) = 0xD000000000000011;
          *(&v254 - 3) = 0x80000001BF4FD740;
          v203 = v284;
          v252 = v284;
          v204 = v144;
          v267 = sub_1BF489DA8(sub_1BF4A6374, (&v254 - 6), &unk_1F3DED760, MEMORY[0x1E69C73C8], sub_1BF3E1648);
          swift_arrayDestroy();
          v206 = v295 + 1;
          v205 = v295[1];
          v207 = v203;
          v208 = v293;
          v209 = v205(v207, v293);
          MEMORY[0x1EEE9AC00](v209);
          *(&v254 - 4) = 0xD000000000000011;
          *(&v254 - 3) = 0x80000001BF4FD740;
          v210 = v285;
          v252 = v285;
          v211 = sub_1BF489DA8(sub_1BF4A63AC, (&v254 - 6), &unk_1F3DED7F0, MEMORY[0x1E69C7370], sub_1BF3E168C);
          v262 = v204;
          swift_arrayDestroy();
          v295 = v206;
          v285 = v205;
          v205(v210, v208);
          v145 = v279;
          v212 = v269;
          (*(v279 + 16))(v269, v282, v283);
          v252 = v211;
          v253 = v212;
          v213 = v278;
          sub_1BF4E7A64();
          v146 = v274;
          v128 = v271;
          v284 = v274[2];
          (v284)(v271, v213, v277);
          v144 = v272;
          v198 = *v272;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_56:
            v215 = v198[2];
            v214 = v198[3];
            v216 = v146;
            if (v215 >= v214 >> 1)
            {
              v198 = sub_1BF432B7C(v214 > 1, v215 + 1, 1, v198);
            }

            v217 = v277;
            v198[2] = v215 + 1;
            (v216[4])(v198 + ((*(v216 + 80) + 32) & ~*(v216 + 80)) + v216[9] * v215, v128, v217);
            *v144 = v198;
            if (qword_1EDC9D460 != -1)
            {
              swift_once();
            }

            v218 = sub_1BF4E7B54();
            __swift_project_value_buffer(v218, qword_1EDCA6898);
            v219 = v273;
            v220 = v278;
            v221 = v284;
            (v284)(v273, v278, v217);
            v222 = sub_1BF4E7B34();
            v223 = sub_1BF4E8E84();
            if (os_log_type_enabled(v222, v223))
            {
              v224 = swift_slowAlloc();
              v281 = swift_slowAlloc();
              v297 = v281;
              *v224 = 136446210;
              v221(v268, v219, v217);
              v225 = sub_1BF4E8994();
              v227 = v226;
              v228 = v216[1];
              v228(v219, v217);
              v229 = sub_1BF38D65C(v225, v227, &v297);

              *(v224 + 4) = v229;
              _os_log_impl(&dword_1BF389000, v222, v223, "Parsed stored remote device: %{public}s", v224, 0xCu);
              v230 = v281;
              __swift_destroy_boxed_opaque_existential_1Tm(v281);
              MEMORY[0x1BFB5A5D0](v230, -1, -1);
              MEMORY[0x1BFB5A5D0](v224, -1, -1);

              v228(v278, v217);
              (*(v279 + 8))(v282, v283);
            }

            else
            {

              v231 = v216[1];
              v231(v219, v217);
              v231(v220, v217);
              (*(v145 + 8))(v282, v283);
            }

            (*(v289 + 8))(v287, v288);
            (v285)(v286, v293);
            v232 = *(v294 + 8);
            v233 = v292;
            v232(v291, v292);
            v232(v290, v233);
            return;
          }
        }

        v198 = sub_1BF432B7C(0, v198[2] + 1, 1, v198);
        goto LABEL_56;
      }

      v161 = v295 + 1;
      v162 = v295[1];
      v163 = v293;
      v162(v285, v293);
      v295 = v161;
      v285 = v162;
      v162(v284, v163);
      sub_1BF38C9B4(v159, &qword_1EBDD97E8, &unk_1BF4F29E0);
      if (qword_1EDC9D460 != -1)
      {
        swift_once();
      }

      v164 = sub_1BF4E7B54();
      __swift_project_value_buffer(v164, qword_1EDCA6898);
      v165 = v294;
      v166 = v264;
      (*(v294 + 16))(v264, v291, v160);
      v167 = sub_1BF4E7B34();
      v168 = sub_1BF4E8E64();
      if (os_log_type_enabled(v167, v168))
      {
        v169 = swift_slowAlloc();
        v170 = swift_slowAlloc();
        v297 = v170;
        *v169 = 136446210;
        sub_1BF4A6514(&unk_1EBDD92C0, MEMORY[0x1E69695A8]);
        v171 = sub_1BF4E96A4();
        v172 = v166;
        v174 = v173;
        v175 = *(v165 + 8);
        v175(v172, v160);
        v176 = sub_1BF38D65C(v171, v174, &v297);

        *(v169 + 4) = v176;
        v177 = "Bad migrating-from ID for %{public}s";
LABEL_68:
        _os_log_impl(&dword_1BF389000, v167, v168, v177, v169, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v170);
        MEMORY[0x1BFB5A5D0](v170, -1, -1);
        MEMORY[0x1BFB5A5D0](v169, -1, -1);

        (*(v289 + 8))(v287, v288);
        (v285)(v286, v293);
        v175(v291, v160);
        v175(v290, v160);
        return;
      }

      v247 = *(v165 + 8);
      v247(v166, v160);
      (*(v289 + 8))(v287, v288);
      (v285)(v286, v293);
      v248 = v291;
    }

    else
    {

      v234 = v295 + 1;
      v235 = v295[1];
      v236 = v293;
      v235(v285, v293);
      v295 = v234;
      v235(v284, v236);
      if (qword_1EDC9D460 != -1)
      {
        swift_once();
      }

      v237 = sub_1BF4E7B54();
      __swift_project_value_buffer(v237, qword_1EDCA6898);
      v238 = v294;
      v239 = v266;
      v240 = v291;
      v160 = v292;
      (*(v294 + 16))(v266, v291, v292);
      v167 = sub_1BF4E7B34();
      v168 = sub_1BF4E8E64();
      if (os_log_type_enabled(v167, v168))
      {
        v241 = swift_slowAlloc();
        v285 = v235;
        v169 = v241;
        v170 = swift_slowAlloc();
        v297 = v170;
        *v169 = 136446210;
        sub_1BF4A6514(&unk_1EBDD92C0, MEMORY[0x1E69695A8]);
        v242 = sub_1BF4E96A4();
        v244 = v243;
        v175 = *(v238 + 8);
        v175(v239, v160);
        v245 = sub_1BF38D65C(v242, v244, &v297);

        *(v169 + 4) = v245;
        v177 = "No migrating-from ID for %{public}s";
        goto LABEL_68;
      }

      v247 = *(v238 + 8);
      v247(v239, v160);
      (*(v289 + 8))(v287, v288);
      v235(v286, v293);
      v248 = v240;
    }

    v247(v248, v160);
    v247(v290, v160);
    return;
  }

  v147 = v280;
  if (!v257)
  {
    v148 = MEMORY[0x1E69C7490];
    goto LABEL_53;
  }

  if (v257 == 1)
  {
    v148 = MEMORY[0x1E69C74A8];
LABEL_53:
    v197 = v282;
    goto LABEL_54;
  }

LABEL_47:

  v178 = v295 + 1;
  v179 = v295[1];
  v180 = v293;
  v179(v285, v293);
  v295 = v178;
  v285 = v179;
  v179(v284, v180);
  if (qword_1EDC9D460 != -1)
  {
    swift_once();
  }

  v181 = sub_1BF4E7B54();
  __swift_project_value_buffer(v181, qword_1EDCA6898);
  v182 = v267;
  v183 = v291;
  v184 = v292;
  (*(v145 + 16))(v267, v291, v292);
  v185 = sub_1BF4E7B34();
  v186 = sub_1BF4E8E64();
  if (os_log_type_enabled(v185, v186))
  {
    v187 = swift_slowAlloc();
    v188 = swift_slowAlloc();
    v297 = v188;
    *v187 = 136446466;
    sub_1BF4A6514(&unk_1EBDD92C0, MEMORY[0x1E69695A8]);
    v189 = sub_1BF4E96A4();
    v191 = v190;
    v192 = *(v145 + 8);
    v192(v182, v184);
    v193 = sub_1BF38D65C(v189, v191, &v297);

    *(v187 + 4) = v193;
    *(v187 + 12) = 2082;
    v296 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9A08, &qword_1BF4F53C8);
    v194 = sub_1BF4E8994();
    v196 = sub_1BF38D65C(v194, v195, &v297);

    *(v187 + 14) = v196;
    _os_log_impl(&dword_1BF389000, v185, v186, "Illegal state for %{public}s: %{public}s", v187, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFB5A5D0](v188, -1, -1);
    MEMORY[0x1BFB5A5D0](v187, -1, -1);

    (*(v289 + 8))(v287, v288);
    (v285)(v286, v293);
    v192(v291, v184);
    v192(v290, v184);
  }

  else
  {

    v246 = *(v145 + 8);
    v246(v182, v184);
    (*(v289 + 8))(v287, v288);
    (v285)(v286, v293);
    v246(v183, v184);
    v246(v290, v184);
  }
}

uint64_t sub_1BF49B604(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, char *))
{
  v11 = sub_1BF4E79E4();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  v16 = a1[1];
  (*(v18 + 16))(v15, a4, v13);

  return a6(v17, v16, a2, a3, v15);
}

uint64_t sub_1BF49B728(void (*a1)(char *, uint64_t))
{
  v162 = sub_1BF4E7334();
  v161 = *(v162 - 8);
  v2 = *(v161 + 64);
  MEMORY[0x1EEE9AC00](v162);
  v160 = &v155 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BF4E79E4();
  v5 = *(v4 - 8);
  v169 = v4;
  v170 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v168 = &v155 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = sub_1BF4E79F4();
  v8 = *(v166 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v166);
  v11 = &v155 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BF4E7394();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v155 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1BF4E7A34();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v155 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = a1;
  sub_1BF4E7A44();
  v22 = (*(v18 + 88))(v21, v17);
  v23 = *MEMORY[0x1E69C74B8];
  v167 = v13;
  if (v22 == v23)
  {
    (*(v18 + 96))(v21, v17);
    (*(v13 + 32))(v16, v21, v12);
    v156 = sub_1BF4E7354();
    v163 = v24;
    (*(v13 + 8))(v16, v12);
    v25 = 3;
LABEL_3:
    v159 = v25;
    goto LABEL_6;
  }

  if (v22 != *MEMORY[0x1E69C7490])
  {
    if (v22 == *MEMORY[0x1E69C74A8])
    {
      v156 = 0;
      v163 = 0;
      v25 = 1;
    }

    else
    {
      if (v22 != *MEMORY[0x1E69C74A0])
      {
        goto LABEL_27;
      }

      v156 = 0;
      v163 = 0;
      v25 = 2;
    }

    goto LABEL_3;
  }

  v156 = 0;
  v163 = 0;
  v159 = 0;
LABEL_6:
  v26 = v12;
  sub_1BF4E7A04();
  v27 = v166;
  v28 = (*(v8 + 88))(v11, v166);
  v29 = *MEMORY[0x1E69C7478];
  v158 = v28;
  v157 = v29;
  if (v28 != v29)
  {
    (*(v8 + 8))(v11, v27);
  }

  v175 = 0.0;
  v176 = 0xE000000000000000;
  v30 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](147);
  *v179 = v175;
  v179[1] = v176;
  v180 = v30;
  MEMORY[0x1BFB58C90](0x204543414C504552, 0xED0000204F544E49);
  v31 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v31);

  MEMORY[0x1BFB58C90](0x202020200A2820, 0xE700000000000000);
  v32 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v32);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v33 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v33);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v34 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v34);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v35 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v35);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v36 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v36);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v37 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v37);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v38 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v38);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v39 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v39);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v40 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v40);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v41 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v41);

  MEMORY[0x1BFB58C90](0xD000000000000010, 0x80000001BF4FA310);
  sub_1BF4E7A14();
  v42 = sub_1BF4E7354();
  v44 = v43;
  v167 = *(v167 + 8);
  (v167)(v16, v26);

  v45 = sub_1BF3D8148(v42, v44);
  v166 = v26;
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v175 = 1.69374419e190;
  v176 = 0xE800000000000000;
  *&v172 = *(v30 + 16) + 1;
  v51 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v51);

  v53 = *&v175;
  v52 = v176;
  MEMORY[0x1BFB58C90](*&v175, v176);
  sub_1BF3D8840(v46, v48, v50);
  v54 = v180;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v175 = *&v54;
  sub_1BF3D6680(v46, v48, v50, v53, v52, isUniquelyReferenced_nonNull_native);

  sub_1BF3D88B8(v46, v48, v50);

  v56 = *&v175;
  v180 = *&v175;
  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  sub_1BF4E7A54();
  v57 = sub_1BF4E7354();
  v59 = v58;
  (v167)(v16, v166);

  v60 = sub_1BF3D8148(v57, v59);
  v62 = v61;
  v64 = v63;
  v175 = 1.69374419e190;
  v176 = 0xE800000000000000;
  *&v172 = *(v56 + 16) + 1;
  v65 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v65);

  v66 = *&v175;
  v67 = v176;
  MEMORY[0x1BFB58C90](*&v175, v176);
  sub_1BF3D8840(v60, v62, v64);
  v68 = v180;
  v69 = swift_isUniquelyReferenced_nonNull_native();
  v175 = *&v68;
  sub_1BF3D6680(v60, v62, v64, v66, v67, v69);

  sub_1BF3D88B8(v60, v62, v64);

  v70 = *&v175;
  v180 = *&v175;
  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v71 = sub_1BF4E7A74();
  v21 = v72;

  v17 = sub_1BF3D8148(v71, v21);
  v74 = v73;
  LOBYTE(v59) = v75;
  v175 = 1.69374419e190;
  v176 = 0xE800000000000000;
  *&v172 = *(v70 + 16) + 1;
  v76 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v76);

  v77 = *&v175;
  v78 = v176;
  MEMORY[0x1BFB58C90](*&v175, v176);
  sub_1BF3D8840(v17, v74, v59);
  v79 = v180;
  v80 = swift_isUniquelyReferenced_nonNull_native();
  v175 = *&v79;
  sub_1BF3D6680(v17, v74, v59, v77, v78, v80);

  sub_1BF3D88B8(v17, v74, v59);

  v81 = *&v175;
  v180 = *&v175;
  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v18 = v168;
  sub_1BF4E7A24();
  v82 = sub_1BF4E79D4();
  v83 = v169;
  v85 = v170 + 8;
  v84 = *(v170 + 8);
  v84(v18, v169);
  if (v82 < 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  v86 = sub_1BF3D7F44(v82);
  v17 = v87;
  v21 = v88;
  v175 = 1.69374419e190;
  v176 = 0xE800000000000000;
  *&v172 = *(v81 + 16) + 1;
  v170 = v85;
  v89 = v84;
  v90 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v90);

  v91 = *&v175;
  v92 = v176;
  MEMORY[0x1BFB58C90](*&v175, v176);
  sub_1BF3D8840(v86, v17, v21);
  v93 = v180;
  v94 = swift_isUniquelyReferenced_nonNull_native();
  v175 = *&v93;
  sub_1BF3D6680(v86, v17, v21, v91, v92, v94);

  sub_1BF3D88B8(v86, v17, v21);
  v95 = *&v175;
  v180 = *&v175;
  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  sub_1BF4E7A24();
  v96 = sub_1BF4E79C4();
  v89(v18, v83);
  if (v96 < 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v97 = sub_1BF3D7F44(v96);
  v99 = v98;
  v101 = v100;
  v175 = 1.69374419e190;
  v176 = 0xE800000000000000;
  *&v172 = *(v95 + 16) + 1;
  v102 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v102);

  v103 = *&v175;
  v104 = v176;
  MEMORY[0x1BFB58C90](*&v175, v176);
  sub_1BF3D8840(v97, v99, v101);
  v105 = v180;
  v106 = swift_isUniquelyReferenced_nonNull_native();
  v175 = *&v105;
  sub_1BF3D6680(v97, v99, v101, v103, v104, v106);

  sub_1BF3D88B8(v97, v99, v101);
  v180 = *&v175;
  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v107 = 0.0;
  v108 = MEMORY[0x1E69E63B0];
  if (v158 == v157)
  {
    v107 = 1.0;
  }

  v177 = MEMORY[0x1E69E63B0];
  v178 = &off_1F3DF0098;
  v175 = v107;
  v109 = __swift_project_boxed_opaque_existential_1(&v175, MEMORY[0x1E69E63B0]);
  sub_1BF478C08(v109, v179, v108, &off_1F3DF0098);
  __swift_destroy_boxed_opaque_existential_1Tm(&v175);
  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v110 = v160;
  _s9ChronoKit24WidgetDiagnosticTriggersV19errorStateTriggered11timelineKey13succinctTitle0K11Description04fullM011timeOfIssue15remoteDeviceIDsyAA08TimelineJ0V_S3S10Foundation4DateVSaySSGSgtFfA3__0();
  sub_1BF4E72C4();
  v112 = v111;
  v171 = *(v161 + 8);
  v113 = v162;
  v171(v110, v162);
  v114 = sub_1BF3D833C(v112);
  v116 = v115;
  v118 = v117;
  v175 = 1.69374419e190;
  v176 = 0xE800000000000000;
  *&v172 = *(v180 + 16) + 1;
  v119 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v119);

  v120 = *&v175;
  v121 = v176;
  MEMORY[0x1BFB58C90](*&v175, v176);
  sub_1BF3D8840(v114, v116, v118);
  v122 = v180;
  v123 = swift_isUniquelyReferenced_nonNull_native();
  v175 = *&v122;
  sub_1BF3D6680(v114, v116, v118, v120, v121, v123);

  sub_1BF3D88B8(v114, v116, v118);
  v124 = *&v175;
  v180 = *&v175;
  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  _s9ChronoKit24WidgetDiagnosticTriggersV19errorStateTriggered11timelineKey13succinctTitle0K11Description04fullM011timeOfIssue15remoteDeviceIDsyAA08TimelineJ0V_S3S10Foundation4DateVSaySSGSgtFfA3__0();
  sub_1BF4E72C4();
  v126 = v125;
  v171(v110, v113);
  v127 = sub_1BF3D833C(v126);
  v129 = v128;
  v131 = v130;
  v175 = 1.69374419e190;
  v176 = 0xE800000000000000;
  *&v172 = *(v124 + 16) + 1;
  v132 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v132);

  v133 = *&v175;
  v134 = v176;
  MEMORY[0x1BFB58C90](*&v175, v176);
  sub_1BF3D8840(v127, v129, v131);
  v135 = v180;
  v136 = swift_isUniquelyReferenced_nonNull_native();
  v175 = *&v135;
  sub_1BF3D6680(v127, v129, v131, v133, v134, v136);

  sub_1BF3D88B8(v127, v129, v131);
  v18 = *&v175;
  v180 = *&v175;
  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v137 = sub_1BF3D7F44(v159);
  v139 = v138;
  v141 = v140;
  v175 = 1.69374419e190;
  v176 = 0xE800000000000000;
  *&v172 = *(v18 + 16) + 1;
  v142 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v142);

  v143 = *&v175;
  v144 = v176;
  MEMORY[0x1BFB58C90](*&v175, v176);
  sub_1BF3D8840(v137, v139, v141);
  v145 = v180;
  v146 = swift_isUniquelyReferenced_nonNull_native();
  v175 = *&v145;
  sub_1BF3D6680(v137, v139, v141, v143, v144, v146);

  sub_1BF3D88B8(v137, v139, v141);
  v180 = *&v175;
  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  if (v163)
  {
    *(&v173 + 1) = MEMORY[0x1E69E6158];
    v174 = &off_1F3DF00A0;
    *&v172 = v156;
    *(&v172 + 1) = v163;
    sub_1BF38E610(&v172, &v175);
    v21 = v164;
  }

  else
  {
    v174 = 0;
    v172 = 0u;
    v173 = 0u;
    v147 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    v177 = sub_1BF3901C0(0, &qword_1EDC962F8, 0x1E695DFB0);
    v178 = &off_1F3DF0088;
    v175 = *&v147;
    v21 = v164;
    if (*(&v173 + 1))
    {
      sub_1BF38C9B4(&v172, &qword_1EBDD99D0, &qword_1BF4F7B80);
    }
  }

  v148 = v177;
  v149 = v178;
  v150 = __swift_project_boxed_opaque_existential_1(&v175, v177);
  sub_1BF478C08(v150, v179, v148, v149);
  __swift_destroy_boxed_opaque_existential_1Tm(&v175);
  MEMORY[0x1BFB58C90](3877130, 0xE300000000000000);
  v17 = v179[0];
  v151 = v180;
  if (!swift_weakLoadStrong())
  {
    while (1)
    {
LABEL_26:
      v22 = sub_1BF4E9464();
      __break(1u);
LABEL_27:
      if (v22 != *MEMORY[0x1E69C74B0])
      {
        v154 = *(v18 + 8);
        v18 += 8;
        v154(v21, v17);
      }
    }
  }

  v152 = v165;
  sub_1BF3E4F48(v151);

  if (!v152)
  {
  }

  return result;
}

uint64_t sub_1BF49C9FC()
{
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_8;
  }

  v1 = *(Strong + 24);
  v2 = Strong;
  os_unfair_lock_lock(*(v1 + 16));
  v3 = *(v2 + 64);
  os_unfair_lock_unlock(*(v1 + 16));

  if (!v3)
  {
    __break(1u);
    goto LABEL_8;
  }

  v4 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](24);
  MEMORY[0x1BFB58C90](0x46204554454C4544, 0xEC000000204D4F52);
  v5 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v5);

  MEMORY[0x1BFB58C90](0x2045524548570ALL, 0xE700000000000000);
  v6 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v6);

  MEMORY[0x1BFB58C90](542329120, 0xE400000000000000);
  v7 = sub_1BF4E7354();
  v9 = v8;

  v10 = sub_1BF3D8148(v7, v9);
  v12 = v11;
  v14 = v13;
  v19 = *(v4 + 16) + 1;
  v15 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v15);

  MEMORY[0x1BFB58C90](0x676E69646E696240, 0xE800000000000000);
  sub_1BF3D8840(v10, v12, v14);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D6680(v10, v12, v14, 0x676E69646E696240, 0xE800000000000000, isUniquelyReferenced_nonNull_native);

  sub_1BF3D88B8(v10, v12, v14);

  MEMORY[0x1BFB58C90](59, 0xE100000000000000);
  if (!swift_weakLoadStrong())
  {
LABEL_8:
    result = sub_1BF4E9464();
    __break(1u);
    return result;
  }

  sub_1BF3E4F48(v4);

  if (!v18)
  {
  }

  return result;
}

uint64_t sub_1BF49CD2C()
{
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_8;
  }

  v2 = *(Strong + 24);
  v3 = Strong;
  os_unfair_lock_lock(*(v2 + 16));
  v4 = *(v3 + 64);
  os_unfair_lock_unlock(*(v2 + 16));

  if (!v4)
  {
    __break(1u);
    goto LABEL_8;
  }

  v5 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](13);
  MEMORY[0x1BFB58C90](0x46204554454C4544, 0xEC000000204D4F52);
  v6 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v6);

  MEMORY[0x1BFB58C90](59, 0xE100000000000000);
  if (!swift_weakLoadStrong())
  {
LABEL_8:
    result = sub_1BF4E9464();
    __break(1u);
    return result;
  }

  sub_1BF3E4F48(v5);

  if (!v0)
  {
  }

  return result;
}

uint64_t sub_1BF49CEDC()
{
  v1 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](40);
  MEMORY[0x1BFB58C90](0x200A5443454C4553, 0xEB00000000202020);
  v2 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v2);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v3 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v3);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v4 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v4);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v5 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v5);

  MEMORY[0x1BFB58C90](0x20200A4D4F52460ALL, 0xEA00000000002020);
  v6 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v6);

  MEMORY[0x1BFB58C90](59, 0xE100000000000000);
  if (swift_weakLoadStrong())
  {
    v7 = sub_1BF3E4F48(v1);
    if (v0)
    {
    }

    else
    {
      v8 = v7;

      v1 = sub_1BF4A4DF8(v8);
    }

    return v1;
  }

  else
  {
    result = sub_1BF4E9464();
    __break(1u);
  }

  return result;
}

void sub_1BF49D17C(void **a1, uint64_t *a2)
{
  v81 = a1;
  v4 = type metadata accessor for WidgetExtensionInfo();
  v80 = *(v4 - 8);
  v5 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v83 = &v76 - v9;
  v10 = *a2;
  v11 = sub_1BF4E92F4();
  v13 = sub_1BF48063C(v11, v12, v10);
  v15 = v14;
  v17 = v16;
  v18 = ~v16;

  if (!v18)
  {
    goto LABEL_9;
  }

  v19 = sub_1BF4244EC(v13, v15, v17);
  v21 = v20;
  sub_1BF3DB1FC(v13, v15, v17);
  if (!v21)
  {
    goto LABEL_9;
  }

  v78 = v19;
  v79 = v2;
  v22 = sub_1BF4E92F4();
  v24 = sub_1BF48063C(v22, v23, v10);
  v26 = v25;
  v28 = v27;
  v29 = ~v27;

  if (!v29 || (v30 = sub_1BF4244EC(v24, v26, v28), v32 = v31, sub_1BF3DB1FC(v24, v26, v28), !v32))
  {
LABEL_8:

LABEL_9:
    if (qword_1EDC9D460 != -1)
    {
      swift_once();
    }

    v43 = sub_1BF4E7B54();
    __swift_project_value_buffer(v43, qword_1EDCA6898);
    v44 = sub_1BF4E7B34();
    v45 = sub_1BF4E8E64();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_1BF389000, v44, v45, "Encountered malformed remote extension", v46, 2u);
      MEMORY[0x1BFB5A5D0](v46, -1, -1);
    }

LABEL_13:

    return;
  }

  v77 = v30;
  v33 = v32;
  v34 = sub_1BF4E92F4();
  v36 = sub_1BF48063C(v34, v35, v10);
  v38 = v37;
  v40 = v39;
  v41 = ~v39;

  if (!v41 || (sub_1BF424370(v36, v38, v40, &v82), sub_1BF3DB1FC(v36, v38, v40), v42 = *(&v82 + 1), *(&v82 + 1) >> 60 == 15))
  {

    goto LABEL_8;
  }

  v47 = v82;
  sub_1BF4E9034();
  v48 = sub_1BF4E9004();
  if (!v48)
  {

    if (qword_1EDC9D460 != -1)
    {
      swift_once();
    }

    v56 = sub_1BF4E7B54();
    __swift_project_value_buffer(v56, qword_1EDCA6898);
    v44 = sub_1BF4E7B34();
    v57 = sub_1BF4E8E64();
    if (os_log_type_enabled(v44, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_1BF389000, v44, v57, "Encountered malformed extension identity", v58, 2u);
      MEMORY[0x1BFB5A5D0](v58, -1, -1);
    }

    sub_1BF3DB210(v47, v42);
    goto LABEL_13;
  }

  v49 = v48;
  if (([v48 isRemote] & 1) == 0)
  {

    if (qword_1EDC9D460 != -1)
    {
      swift_once();
    }

    v59 = sub_1BF4E7B54();
    __swift_project_value_buffer(v59, qword_1EDCA6898);
    v44 = sub_1BF4E7B34();
    v60 = sub_1BF4E8E64();
    if (os_log_type_enabled(v44, v60))
    {
      v61 = v49;
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&dword_1BF389000, v44, v60, "Encountered non-remote extension", v62, 2u);
      MEMORY[0x1BFB5A5D0](v62, -1, -1);
      sub_1BF3DB210(v47, v42);
    }

    else
    {
      sub_1BF3DB210(v47, v42);
    }

    goto LABEL_13;
  }

  v50 = sub_1BF4E6DB4();
  v51 = *(v50 + 48);
  v52 = *(v50 + 52);
  swift_allocObject();
  sub_1BF4E6DA4();
  sub_1BF4A6514(&qword_1EBDD99F8, type metadata accessor for WidgetExtensionInfo);
  v53 = v47;
  v54 = v83;
  v55 = v79;
  sub_1BF4E6D94();
  if (v55)
  {
    sub_1BF3DB210(v53, v42);

    return;
  }

  v79 = v53;

  sub_1BF3901C0(0, &qword_1EDC9FDA8, 0x1E69E58C0);
  v63 = *v54;
  if ((sub_1BF4E90A4() & 1) == 0)
  {

    goto LABEL_33;
  }

  if (v54[1] != v77 || v33 != v54[2])
  {
    v71 = sub_1BF4E9734();

    v64 = v81;
    if (v71)
    {
      goto LABEL_39;
    }

LABEL_33:
    if (qword_1EDC9D460 != -1)
    {
      swift_once();
    }

    v65 = sub_1BF4E7B54();
    __swift_project_value_buffer(v65, qword_1EDCA6898);
    v66 = sub_1BF4E7B34();
    v67 = sub_1BF4E8E64();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = v49;
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&dword_1BF389000, v66, v67, "Unexpected mismatch in serialized info", v69, 2u);
      v70 = v69;
      v49 = v68;
      MEMORY[0x1BFB5A5D0](v70, -1, -1);
    }

    sub_1BF3DB210(v79, v42);

    goto LABEL_44;
  }

  v64 = v81;
LABEL_39:
  sub_1BF4A63E4(v54, v7, type metadata accessor for WidgetExtensionInfo);
  v72 = *v64;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v78 = v49;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v72 = sub_1BF432BA4(0, v72[2] + 1, 1, v72);
  }

  v75 = v72[2];
  v74 = v72[3];
  if (v75 >= v74 >> 1)
  {
    v72 = sub_1BF432BA4(v74 > 1, v75 + 1, 1, v72);
  }

  sub_1BF3DB210(v79, v42);

  v72[2] = v75 + 1;
  sub_1BF4A64AC(v7, v72 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v75, type metadata accessor for WidgetExtensionInfo);
  *v64 = v72;
LABEL_44:
  sub_1BF4A644C(v54, type metadata accessor for WidgetExtensionInfo);
}

uint64_t ChronoMetadataStore.RemoteExtensionStore.__deallocating_deinit()
{
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

unint64_t sub_1BF49DA68@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x1E69E7CC0];
    }

    v7 = sub_1BF4E8AA4();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_1BF432788(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_1BF432788((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x1E69E7CC0];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_1BF4E8A94();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_1BF4E8A14();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_1BF4E8A14();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_1BF4E8AA4();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_1BF432788(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_1BF4E8AA4();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_1BF432788(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_1BF432788((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_1BF4E8A14();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BF49DE28(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD87E8, &unk_1BF4EB300);
  v40 = a2;
  result = sub_1BF4E94A4();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v2;
    v39 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v41 = (v13 - 1) & v13;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = v23[1];
      v42 = *v23;
      v25 = *(v5 + 56) + 24 * v22;
      v26 = *v25;
      v27 = *(v25 + 8);
      v28 = *(v25 + 16);
      if ((v40 & 1) == 0)
      {

        sub_1BF3D8840(v26, v27, v28);
      }

      v29 = *(v8 + 40);
      sub_1BF4E9804();
      sub_1BF4E89F4();
      result = sub_1BF4E9844();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v42;
      v17[1] = v24;
      v18 = *(v8 + 56) + 24 * v16;
      *v18 = v26;
      *(v18 + 8) = v27;
      *(v18 + 16) = v28;
      ++*(v8 + 16);
      v5 = v39;
      v13 = v41;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v41 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1BF49E108(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD87C8, &qword_1BF4EB2E0);
  v36 = a2;
  result = sub_1BF4E94A4();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_1BF38EB2C(v25, v37);
      }

      else
      {
        sub_1BF38D324(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_1BF4E9804();
      sub_1BF4E89F4();
      result = sub_1BF4E9844();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_1BF38EB2C(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_1BF49E3C0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD87C0, &unk_1BF4F5460);
  v39 = a2;
  result = sub_1BF4E94A4();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      sub_1BF4E9804();
      sub_1BF4E89F4();
      result = sub_1BF4E9844();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1BF49E68C(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD87A8, &unk_1BF4EB2C0);
  v52 = *(v6 - 8);
  v53 = v6;
  v7 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v48 - v8);
  v10 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v11 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9A50, &qword_1BF4F5438);
  v54 = a2;
  result = sub_1BF4E94A4();
  v13 = result;
  if (*(v10 + 16))
  {
    v49 = v3;
    v14 = 0;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v20 = result + 64;
    v50 = result;
    v51 = v10;
    while (v18)
    {
      v22 = __clz(__rbit64(v18));
      v23 = (v18 - 1) & v18;
LABEL_17:
      v26 = v22 | (v14 << 6);
      v27 = *(v10 + 48);
      v55 = *(v52 + 72);
      v56 = v23;
      v28 = v27 + v55 * v26;
      if (v54)
      {
        sub_1BF411AF0(v28, v9);
        sub_1BF38E610((*(v10 + 56) + 40 * v26), v57);
      }

      else
      {
        sub_1BF38C94C(v28, v9, &qword_1EBDD87A8, &unk_1BF4EB2C0);
        sub_1BF38E49C(*(v10 + 56) + 40 * v26, v57);
      }

      v29 = v13[5];
      sub_1BF4E9804();
      v30 = *v9;
      sub_1BF4E90B4();
      v31 = type metadata accessor for ActivityKey();
      v32 = *(v31 + 20);
      sub_1BF4E7454();
      sub_1BF4A6514(&qword_1EDC9F0A8, MEMORY[0x1E6959BC8]);
      sub_1BF4E8884();
      v33 = (v9 + *(v31 + 24));
      v34 = *v33;
      v35 = v33[1];
      sub_1BF4E89F4();
      v36 = v9 + *(v53 + 68);
      sub_1BF4E8674();
      sub_1BF4A6514(&unk_1EDC9D760, MEMORY[0x1E6985AA8]);
      sub_1BF4E8884();
      v37 = type metadata accessor for ActivityVariantKey();
      v38 = *(v37 + 20);
      sub_1BF4E8364();
      sub_1BF4A6514(&qword_1EDC9D798, MEMORY[0x1E69858D8]);
      sub_1BF4E8884();
      v39 = *(v37 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
      sub_1BF38C8B4(&unk_1EDC9F018, &unk_1EBDD85B0, &unk_1BF4EA9E0);
      sub_1BF4E8884();
      result = sub_1BF4E9844();
      v13 = v50;
      v40 = -1 << *(v50 + 32);
      v41 = result & ~v40;
      v42 = v41 >> 6;
      if (((-1 << v41) & ~*(v20 + 8 * (v41 >> 6))) == 0)
      {
        v43 = 0;
        v44 = (63 - v40) >> 6;
        v10 = v51;
        while (++v42 != v44 || (v43 & 1) == 0)
        {
          v45 = v42 == v44;
          if (v42 == v44)
          {
            v42 = 0;
          }

          v43 |= v45;
          v46 = *(v20 + 8 * v42);
          if (v46 != -1)
          {
            v21 = __clz(__rbit64(~v46)) + (v42 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v41) & ~*(v20 + 8 * (v41 >> 6)))) | v41 & 0x7FFFFFFFFFFFFFC0;
      v10 = v51;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      sub_1BF411AF0(v9, v13[6] + v55 * v21);
      result = sub_1BF38E610(v57, v13[7] + 40 * v21);
      ++v13[2];
      v18 = v56;
    }

    v24 = v14;
    while (1)
    {
      v14 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v14 >= v19)
      {
        break;
      }

      v25 = v15[v14];
      ++v24;
      if (v25)
      {
        v22 = __clz(__rbit64(v25));
        v23 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v54 & 1) == 0)
    {

      v3 = v49;
      goto LABEL_36;
    }

    v47 = 1 << *(v10 + 32);
    v3 = v49;
    if (v47 >= 64)
    {
      bzero(v15, ((v47 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v47;
    }

    *(v10 + 16) = 0;
  }

LABEL_36:
  *v3 = v13;
  return result;
}

uint64_t sub_1BF49EBB8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9A58, &qword_1BF4F5440);
  v38 = a2;
  result = sub_1BF4E94A4();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_1BF4E9804();
      sub_1BF4E89F4();
      result = sub_1BF4E9844();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1BF49EE60(uint64_t a1, int a2)
{
  v3 = v2;
  v57 = sub_1BF4E7334();
  v6 = *(v57 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v57);
  v56 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v58 = &v45 - v12;
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD87A0, &qword_1BF4EB2B8);
  v52 = a2;
  result = sub_1BF4E94A4();
  v16 = result;
  if (*(v13 + 16))
  {
    v17 = 0;
    v18 = v10;
    v19 = (v13 + 64);
    v20 = 1 << *(v13 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & *(v13 + 64);
    v23 = (v20 + 63) >> 6;
    v48 = (v18 + 16);
    v49 = v18;
    v46 = v3;
    v47 = v6 + 16;
    v50 = v13;
    v51 = v6;
    v53 = (v6 + 32);
    v54 = (v18 + 32);
    v24 = result + 64;
    v25 = v18;
    while (v22)
    {
      v27 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_17:
      v30 = v27 | (v17 << 6);
      v31 = *(v13 + 48);
      v55 = *(v25 + 72);
      v32 = v31 + v55 * v30;
      if (v52)
      {
        (*v54)(v58, v32, v9);
        v33 = *(v13 + 56);
        v34 = *(v51 + 72);
        (*(v51 + 32))(v56, v33 + v34 * v30, v57);
      }

      else
      {
        (*v48)(v58, v32, v9);
        v35 = *(v13 + 56);
        v34 = *(v51 + 72);
        (*(v51 + 16))(v56, v35 + v34 * v30, v57);
      }

      v36 = *(v16 + 40);
      sub_1BF38C8B4(&unk_1EDC9F018, &unk_1EBDD85B0, &unk_1BF4EA9E0);
      result = sub_1BF4E8874();
      v37 = -1 << *(v16 + 32);
      v38 = result & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v24 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v24 + 8 * v39);
          if (v43 != -1)
          {
            v26 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v38) & ~*(v24 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v24 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      (*v54)((*(v16 + 48) + v55 * v26), v58, v9);
      result = (*v53)(*(v16 + 56) + v34 * v26, v56, v57);
      ++*(v16 + 16);
      v25 = v49;
      v13 = v50;
    }

    v28 = v17;
    while (1)
    {
      v17 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v17 >= v23)
      {
        break;
      }

      v29 = v19[v17];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v22 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v52 & 1) == 0)
    {

      v3 = v46;
      goto LABEL_36;
    }

    v44 = 1 << *(v13 + 32);
    v3 = v46;
    if (v44 >= 64)
    {
      bzero(v19, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v19 = -1 << v44;
    }

    *(v13 + 16) = 0;
  }

LABEL_36:
  *v3 = v16;
  return result;
}

uint64_t sub_1BF49F30C(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A38, &unk_1BF4EC4D0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v50 = &v44 - v9;
  v10 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v11 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9A48, &unk_1BF4F5428);
  v49 = a2;
  result = sub_1BF4E94A4();
  v13 = result;
  if (*(v10 + 16))
  {
    v14 = 0;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v45 = v2;
    v46 = (v7 + 16);
    v47 = v10;
    v48 = v7;
    v51 = (v7 + 32);
    v20 = result + 64;
    v55 = v6;
    v21 = v50;
    while (v18)
    {
      v24 = __clz(__rbit64(v18));
      v25 = (v18 - 1) & v18;
LABEL_17:
      v28 = v24 | (v14 << 6);
      v29 = *(v10 + 48);
      v53 = *(v48 + 72);
      v54 = v25;
      v30 = v29 + v53 * v28;
      if (v49)
      {
        (*v51)(v21, v30, v55);
        v31 = (*(v10 + 56) + 24 * v28);
        v32 = v31[1];
        v52 = *v31;
        v33 = v31[2];
      }

      else
      {
        (*v46)(v21, v30, v55);
        v34 = (*(v10 + 56) + 24 * v28);
        v32 = v34[1];
        v33 = v34[2];
        v52 = *v34;
        sub_1BF3D8864(v52, v32);
      }

      v35 = *(v13 + 40);
      sub_1BF38C8B4(&qword_1EDC9D5A8, &qword_1EBDD8A38, &unk_1BF4EC4D0);
      result = sub_1BF4E8874();
      v36 = -1 << *(v13 + 32);
      v37 = result & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v20 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        v21 = v50;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v20 + 8 * v38);
          if (v42 != -1)
          {
            v22 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v37) & ~*(v20 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
      v21 = v50;
LABEL_9:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v51)(*(v13 + 48) + v53 * v22, v21, v55);
      v23 = (*(v13 + 56) + 24 * v22);
      *v23 = v52;
      v23[1] = v32;
      v23[2] = v33;
      ++*(v13 + 16);
      v10 = v47;
      v18 = v54;
    }

    v26 = v14;
    while (1)
    {
      v14 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v14 >= v19)
      {
        break;
      }

      v27 = v15[v14];
      ++v26;
      if (v27)
      {
        v24 = __clz(__rbit64(v27));
        v25 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    if ((v49 & 1) == 0)
    {

      v3 = v45;
      goto LABEL_36;
    }

    v43 = 1 << *(v10 + 32);
    v3 = v45;
    if (v43 >= 64)
    {
      bzero(v15, ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v43;
    }

    *(v10 + 16) = 0;
  }

LABEL_36:
  *v3 = v13;
  return result;
}

uint64_t sub_1BF49F724(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v38 - v9;
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD8760, &unk_1BF4EB280);
  v42 = a2;
  result = sub_1BF4E94A4();
  v14 = result;
  if (*(v11 + 16))
  {
    v45 = v10;
    v46 = v6;
    v38 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v39 = (v7 + 16);
    v40 = v7;
    v43 = (v7 + 32);
    v21 = result + 64;
    v41 = v11;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v44 = *(v7 + 72);
      v28 = v27 + v44 * v26;
      if (v42)
      {
        (*v43)(v45, v28, v46);
        sub_1BF38E610((*(v11 + 56) + 40 * v26), v47);
      }

      else
      {
        (*v39)(v45, v28, v46);
        sub_1BF38E49C(*(v11 + 56) + 40 * v26, v47);
      }

      v29 = *(v14 + 40);
      sub_1BF38C8B4(&qword_1EDC9D540, &unk_1EBDD91A0, &unk_1BF4EC4E0);
      result = sub_1BF4E8874();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        v7 = v40;
        v11 = v41;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
      v7 = v40;
      v11 = v41;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v43)((*(v14 + 48) + v44 * v22), v45, v46);
      result = sub_1BF38E610(v47, *(v14 + 56) + 40 * v22);
      ++*(v14 + 16);
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_1BF49FB0C(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for RemoteActivityArchiveBudget();
  v43 = *(v6 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v45 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD99F0, &qword_1BF4F53B8);
  v44 = a2;
  result = sub_1BF4E94A4();
  v12 = result;
  if (*(v9 + 16))
  {
    v41 = v3;
    v42 = v9;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v28 = *v27;
      v29 = v27[1];
      v30 = *(v43 + 72);
      v31 = v26 + v30 * v25;
      if (v44)
      {
        sub_1BF4A64AC(v31, v45, type metadata accessor for RemoteActivityArchiveBudget);
      }

      else
      {
        sub_1BF4A63E4(v31, v45, type metadata accessor for RemoteActivityArchiveBudget);
      }

      v32 = *(v12 + 40);
      sub_1BF4E9804();
      sub_1BF4E89F4();
      result = sub_1BF4E9844();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v28;
      v21[1] = v29;
      result = sub_1BF4A64AC(v45, *(v12 + 56) + v30 * v20, type metadata accessor for RemoteActivityArchiveBudget);
      ++*(v12 + 16);
      v9 = v42;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_1BF49FE84(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9A40, &unk_1BF4F5418);
  result = sub_1BF4E94A4();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 40 * v20);
      if (a2)
      {
        sub_1BF38E610(v22, v34);
      }

      else
      {
        sub_1BF38E49C(v22, v34);
        v23 = v21;
      }

      v24 = *(v8 + 40);
      result = sub_1BF4E9094();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      result = sub_1BF38E610(v34, *(v8 + 56) + 40 * v16);
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v32 = 1 << *(v5 + 32);
      if (v32 >= 64)
      {
        bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v32;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_1BF4A0104(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9A78, &unk_1BF4F5470);
  v36 = a2;
  result = sub_1BF4E94A4();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = 16 * (v19 | (v9 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v37 = *(*(v5 + 56) + v22);
      if ((v36 & 1) == 0)
      {
      }

      v26 = *(v8 + 40);
      sub_1BF4E9804();
      sub_1BF4E89F4();
      result = sub_1BF4E9844();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v8 + 56) + v17) = v37;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1BF4A03BC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD87F0, &qword_1BF4F5410);
  v40 = a2;
  result = sub_1BF4E94A4();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_1BF4E9804();
      sub_1BF4E89F4();
      result = sub_1BF4E9844();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1BF4A067C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9A38, &qword_1BF4F5408);
  result = sub_1BF4E94A4();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v21;
      }

      v24 = *(v8 + 40);
      result = sub_1BF4E9094();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_35;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1BF4A08EC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8788, &qword_1BF4EB2A0);
  v38 = a2;
  result = sub_1BF4E94A4();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_1BF4E9804();
      sub_1BF4E89F4();
      result = sub_1BF4E9844();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1BF4A0B94(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for RemoteActivitySubscription(0);
  v47 = *(v6 - 8);
  v7 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v52 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BF4E7394();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v51 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9A28, &unk_1BF4F53E0);
  v48 = a2;
  result = sub_1BF4E94A4();
  v16 = result;
  if (*(v13 + 16))
  {
    v43 = v3;
    v17 = 0;
    v18 = (v13 + 64);
    v19 = 1 << *(v13 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & *(v13 + 64);
    v22 = (v19 + 63) >> 6;
    v44 = (v10 + 16);
    v45 = v10;
    v49 = (v10 + 32);
    v23 = result + 64;
    v46 = v13;
    while (v21)
    {
      v25 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_17:
      v28 = v25 | (v17 << 6);
      v29 = *(v13 + 48);
      v50 = *(v10 + 72);
      v30 = v29 + v50 * v28;
      if (v48)
      {
        (*v49)(v51, v30, v9);
        v31 = *(v13 + 56);
        v32 = *(v47 + 72);
        sub_1BF4A64AC(v31 + v32 * v28, v52, type metadata accessor for RemoteActivitySubscription);
      }

      else
      {
        (*v44)(v51, v30, v9);
        v33 = *(v13 + 56);
        v32 = *(v47 + 72);
        sub_1BF4A63E4(v33 + v32 * v28, v52, type metadata accessor for RemoteActivitySubscription);
      }

      v34 = *(v16 + 40);
      sub_1BF4A6514(&qword_1EBDD8948, MEMORY[0x1E69695A8]);
      result = sub_1BF4E8874();
      v35 = -1 << *(v16 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v23 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v23 + 8 * v37);
          if (v41 != -1)
          {
            v24 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v24 = __clz(__rbit64((-1 << v36) & ~*(v23 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v23 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      (*v49)((*(v16 + 48) + v50 * v24), v51, v9);
      result = sub_1BF4A64AC(v52, *(v16 + 56) + v32 * v24, type metadata accessor for RemoteActivitySubscription);
      ++*(v16 + 16);
      v10 = v45;
      v13 = v46;
    }

    v26 = v17;
    while (1)
    {
      v17 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v17 >= v22)
      {
        break;
      }

      v27 = v18[v17];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v21 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_36;
    }

    v42 = 1 << *(v13 + 32);
    v3 = v43;
    if (v42 >= 64)
    {
      bzero(v18, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v18 = -1 << v42;
    }

    *(v13 + 16) = 0;
  }

LABEL_36:
  *v3 = v16;
  return result;
}

uint64_t sub_1BF4A1034(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9A20, &unk_1BF4F7D20);
  v34 = a2;
  result = sub_1BF4E94A4();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
    v33 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v35 = (v13 - 1) & v13;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      v23 = *(v8 + 40);
      sub_1BF4E79A4();
      sub_1BF4A6514(&qword_1EBDD8B08, MEMORY[0x1E69C7338]);
      result = sub_1BF4E8874();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
      v5 = v33;
      v13 = v35;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v35 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_35;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero(v10, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1BF4A1318(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8740, &qword_1BF4EB260);
  v35 = a2;
  result = sub_1BF4E94A4();
  v8 = result;
  v37 = v5;
  if (*(v5 + 16))
  {
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v36 = (v13 - 1) & v13;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v37[6] + 8 * v20);
      v22 = *(v37[7] + 8 * v20);
      if ((v35 & 1) == 0)
      {
      }

      v23 = *(v8 + 40);
      sub_1BF4E9804();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
      v24 = v21;
      sub_1BF38C8B4(&qword_1EDC9D540, &unk_1EBDD91A0, &unk_1BF4EC4E0);
      sub_1BF4E8884();
      if (*(v21 + OBJC_IVAR____TtC9ChronoKit15_ReloadStateKey_kind + 8))
      {
        v25 = v8;
        v26 = *(v21 + OBJC_IVAR____TtC9ChronoKit15_ReloadStateKey_kind);
        sub_1BF4E9824();
        v8 = v25;
        v24 = v21;
        sub_1BF4E89F4();
      }

      else
      {
        sub_1BF4E9824();
      }

      result = sub_1BF4E9844();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_41:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v24;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
      v13 = v36;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_41;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v36 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_39;
    }

    v34 = 1 << *(v37 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    v37[2] = 0;
  }

LABEL_39:
  *v3 = v8;
  return result;
}

uint64_t sub_1BF4A1688(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for ExtensionMetadata();
  v41 = *(v6 - 8);
  v7 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v11 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8750, &qword_1BF4EB270);
  v42 = a2;
  result = sub_1BF4E94A4();
  v13 = result;
  if (*(v10 + 16))
  {
    v40 = v3;
    v14 = 0;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v20 = result + 64;
    while (v18)
    {
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v25 = v22 | (v14 << 6);
      v26 = *(*(v10 + 48) + 8 * v25);
      v27 = *(v41 + 72);
      v28 = *(v10 + 56) + v27 * v25;
      if (v42)
      {
        sub_1BF4A64AC(v28, v9, type metadata accessor for ExtensionMetadata);
      }

      else
      {
        sub_1BF4A63E4(v28, v9, type metadata accessor for ExtensionMetadata);
        v29 = v26;
      }

      v30 = *(v13 + 40);
      result = sub_1BF4E9094();
      v31 = -1 << *(v13 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v20 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v20 + 8 * v33);
          if (v37 != -1)
          {
            v21 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v32) & ~*(v20 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(*(v13 + 48) + 8 * v21) = v26;
      result = sub_1BF4A64AC(v9, *(v13 + 56) + v27 * v21, type metadata accessor for ExtensionMetadata);
      ++*(v13 + 16);
    }

    v23 = v14;
    while (1)
    {
      v14 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v14 >= v19)
      {
        break;
      }

      v24 = v15[v14];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v18 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v38 = 1 << *(v10 + 32);
    v3 = v40;
    if (v38 >= 64)
    {
      bzero((v10 + 64), ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v38;
    }

    *(v10 + 16) = 0;
  }

LABEL_36:
  *v3 = v13;
  return result;
}

uint64_t sub_1BF4A19D0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD99E8, &unk_1BF4F53A8);
  v40 = a2;
  result = sub_1BF4E94A4();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v2;
    v39 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v41 = (v13 - 1) & v13;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = v23[1];
      v42 = *v23;
      v25 = (*(v5 + 56) + 24 * v22);
      v26 = *v25;
      v27 = v25[1];
      v28 = v25[2];
      if ((v40 & 1) == 0)
      {

        sub_1BF3D8864(v26, v27);
      }

      v29 = *(v8 + 40);
      sub_1BF4E9804();
      sub_1BF4E89F4();
      result = sub_1BF4E9844();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v42;
      v17[1] = v24;
      v18 = (*(v8 + 56) + 24 * v16);
      *v18 = v26;
      v18[1] = v27;
      v18[2] = v28;
      ++*(v8 + 16);
      v5 = v39;
      v13 = v41;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v41 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

unint64_t sub_1BF4A1CB4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, void *a7)
{
  a7[(result >> 6) + 8] |= 1 << result;
  v7 = (a7[6] + 16 * result);
  *v7 = a2;
  v7[1] = a3;
  v8 = a7[7] + 24 * result;
  *v8 = a4;
  *(v8 + 8) = a5;
  *(v8 + 16) = a6;
  v9 = a7[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v11;
  }

  return result;
}

_OWORD *sub_1BF4A1D08(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1BF38EB2C(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_1BF4A1D74(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_1BF4E7334();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_1BF4A1E24(unint64_t a1, uint64_t a2, __int128 *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD87A8, &unk_1BF4EB2C0);
  sub_1BF411AF0(a2, v8 + *(*(v9 - 8) + 72) * a1);
  result = sub_1BF38E610(a3, a4[7] + 40 * a1);
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

unint64_t sub_1BF4A1EDC(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_1BF4A1F24(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = sub_1BF4E7334();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_1BF4A2024(unint64_t a1, uint64_t a2, __int128 *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  result = sub_1BF38E610(a3, a4[7] + 40 * a1);
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_1BF4A20F4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for RemoteActivityArchiveBudget();
  result = sub_1BF4A64AC(a4, v9 + *(*(v10 - 8) + 72) * a1, type metadata accessor for RemoteActivityArchiveBudget);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_1BF4A21A0(unint64_t a1, uint64_t a2, __int128 *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_1BF38E610(a3, a4[7] + 40 * a1);
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t sub_1BF4A220C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

uint64_t sub_1BF4A225C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1BF4E7394();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = type metadata accessor for RemoteActivitySubscription(0);
  result = sub_1BF4A64AC(a3, v10 + *(*(v11 - 8) + 72) * a1, type metadata accessor for RemoteActivitySubscription);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

unint64_t sub_1BF4A234C(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t sub_1BF4A2390(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for ExtensionMetadata();
  result = sub_1BF4A64AC(a3, v7 + *(*(v8 - 8) + 72) * a1, type metadata accessor for ExtensionMetadata);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

unint64_t sub_1BF4A2438(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  a7[(result >> 6) + 8] |= 1 << result;
  v7 = (a7[6] + 16 * result);
  *v7 = a2;
  v7[1] = a3;
  v8 = (a7[7] + 24 * result);
  *v8 = a4;
  v8[1] = a5;
  v8[2] = a6;
  v9 = a7[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v11;
  }

  return result;
}

void *sub_1BF4A248C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD87E8, &unk_1BF4EB300);
  v2 = *v0;
  v3 = sub_1BF4E9494();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 24;
        v22 = *(v2 + 56) + v17;
        v23 = *v22;
        v24 = *(v22 + 8);
        v25 = (*(v4 + 48) + v18);
        v26 = *(v22 + 16);
        *v25 = v21;
        v25[1] = v20;
        v27 = *(v4 + 56) + v17;
        *v27 = v23;
        *(v27 + 8) = v24;
        *(v27 + 16) = v26;

        result = sub_1BF3D8840(v23, v24, v26);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1BF4A2624()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD87C8, &qword_1BF4EB2E0);
  v2 = *v0;
  v3 = sub_1BF4E9494();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_1BF38D324(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1BF38EB2C(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

id sub_1BF4A27C8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8730, &unk_1BF4EB250);
  v2 = *v0;
  v3 = sub_1BF4E9494();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_1BF38D324(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_1BF38EB2C(v19, (*(v4 + 56) + 32 * v17));
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_1BF4A2948()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD87C0, &unk_1BF4F5460);
  v2 = *v0;
  v3 = sub_1BF4E9494();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1BF4A2ADC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9A70, &qword_1BF4F5458);
  v2 = *v0;
  v3 = sub_1BF4E9494();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + (v17 << 6));
        v20 = v18[1];
        v19 = v18[2];
        v21 = *v18;
        *&v25[9] = *(v18 + 41);
        v24[1] = v20;
        *v25 = v19;
        v24[0] = v21;
        v22 = *(*(v2 + 56) + 8 * v17);
        memmove((*(v4 + 48) + (v17 << 6)), v18, 0x39uLL);
        *(*(v4 + 56) + 8 * v17) = v22;
        sub_1BF3EE1EC(v24, &v23);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1BF4A2C80()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9A68, &qword_1BF4F5450);
  v2 = *v0;
  v3 = sub_1BF4E9494();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(v2 + 48) + 40 * v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v22 = *(v18 + 16);
        v21 = *(v18 + 24);
        v23 = *(v18 + 32);
        v24 = *(*(v2 + 56) + 8 * v17);
        LOBYTE(v18) = *(v18 + 33);
        v25 = *(v4 + 48) + 40 * v17;
        *v25 = v19;
        *(v25 + 8) = v20;
        *(v25 + 16) = v22;
        *(v25 + 24) = v21;
        *(v25 + 32) = v23;
        *(v25 + 33) = v18;
        *(*(v4 + 56) + 8 * v17) = v24;
        v26 = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1BF4A2E1C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD87A8, &unk_1BF4EB2C0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v24 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9A50, &qword_1BF4F5438);
  v7 = *v0;
  v8 = sub_1BF4E9494();
  v9 = v8;
  if (*(v7 + 16))
  {
    v24 = v1;
    result = (v8 + 64);
    v11 = v7 + 64;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 64), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    v16 = *(v7 + 64);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v17 = v15 & v16;
    v18 = (v14 + 63) >> 6;
    if ((v15 & v16) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_14:
        v22 = v19 | (v13 << 6);
        v23 = *(v3 + 72) * v22;
        sub_1BF38C94C(*(v7 + 48) + v23, v6, &qword_1EBDD87A8, &unk_1BF4EB2C0);
        v22 *= 40;
        sub_1BF38E49C(*(v7 + 56) + v22, v25);
        sub_1BF411AF0(v6, *(v9 + 48) + v23);
        result = sub_1BF38E610(v25, *(v9 + 56) + v22);
      }

      while (v17);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v1 = v24;
        goto LABEL_18;
      }

      v21 = *(v11 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

void *sub_1BF4A3058()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9A58, &qword_1BF4F5440);
  v2 = *v0;
  v3 = sub_1BF4E9494();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1BF4A31F0(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v44 = a1(0);
  v46 = *(v44 - 8);
  v7 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v43 = &v38 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v9 = *v3;
  v10 = sub_1BF4E9494();
  v11 = v10;
  if (*(v9 + 16))
  {
    v39 = v6;
    result = (v10 + 64);
    v13 = v9 + 64;
    v14 = ((1 << *(v11 + 32)) + 63) >> 6;
    if (v11 != v9 || result >= v9 + 64 + 8 * v14)
    {
      result = memmove(result, (v9 + 64), 8 * v14);
    }

    v16 = 0;
    v17 = *(v9 + 16);
    v45 = v11;
    *(v11 + 16) = v17;
    v18 = 1 << *(v9 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v9 + 64);
    v21 = (v18 + 63) >> 6;
    v40 = v46 + 32;
    v41 = v46 + 16;
    v42 = v9;
    if (v20)
    {
      do
      {
        v22 = __clz(__rbit64(v20));
        v47 = (v20 - 1) & v20;
LABEL_17:
        v25 = v22 | (v16 << 6);
        v26 = 16 * v25;
        v27 = *(v9 + 56);
        v28 = (*(v9 + 48) + 16 * v25);
        v29 = *v28;
        v30 = v28[1];
        v31 = v46;
        v32 = *(v46 + 72) * v25;
        v33 = v43;
        v34 = v44;
        (*(v46 + 16))(v43, v27 + v32, v44);
        v35 = v45;
        v36 = (*(v45 + 48) + v26);
        *v36 = v29;
        v36[1] = v30;
        v37 = *(v35 + 56) + v32;
        v9 = v42;
        (*(v31 + 32))(v37, v33, v34);

        v20 = v47;
      }

      while (v47);
    }

    v23 = v16;
    while (1)
    {
      v16 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v16 >= v21)
      {

        v6 = v39;
        v11 = v45;
        goto LABEL_21;
      }

      v24 = *(v13 + 8 * v16);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v47 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v11;
  }

  return result;
}