Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> JWSSignedJSON.verify()()
{
  v253 = *MEMORY[0x1E69E9840];
  v2 = sub_1DB09D734();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v234 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v8 = *(v0 + 64);
  swift_beginAccess();
  v9 = *(v8 + 16);
  if (!v9 || !*(v9 + 16))
  {
    if (qword_1EE300B90 != -1)
    {
      swift_once();
    }

    v23 = MEMORY[0x1E69E7CC0];
    v24 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    if (*(v24 + 16))
    {
      v25 = sub_1DAF35210(0x636F766E49504944, 0xEE00736E6F697461);
      if (v26)
      {
        sub_1DAF409DC(*(v24 + 56) + 32 * v25, error);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
        if (swift_dynamicCast())
        {
          v23 = *&v248[0];
        }
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v23 = sub_1DAF72FF4(0, *(v23 + 2) + 1, 1, v23);
    }

    v28 = *(v23 + 2);
    v27 = *(v23 + 3);
    if (v28 >= v27 >> 1)
    {
      v23 = sub_1DAF72FF4((v27 > 1), v28 + 1, 1, v23);
    }

    *(v23 + 2) = v28 + 1;
    v29 = &v23[56 * v28];
    *(v29 + 4) = 0xD00000000000002DLL;
    *(v29 + 5) = 0x80000001DB0C9D80;
    *(v29 + 6) = 0xD000000000000024;
    *(v29 + 7) = 0x80000001DB0C9C50;
    *(v29 + 8) = 0x2928796669726576;
    *(v29 + 9) = 0xE800000000000000;
    *(v29 + 10) = 248;
    v250 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
    error[0] = v23;
    sub_1DAF40D20(error, v248);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v251 = v24;
    sub_1DAF3B11C(v248, 0x636F766E49504944, 0xEE00736E6F697461, isUniquelyReferenced_nonNull_native);
    v31 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v32 = sub_1DB09D6B4();
    v33 = sub_1DB09D604();
    [v31 initWithDomain:v32 code:-1201 userInfo:v33];

    swift_willThrow();
    goto LABEL_36;
  }

  v10 = sub_1DAF3EF40(MEMORY[0x1E69E7CC0]);
  v11 = v0;
  v13 = sub_1DB012B58(v10, v12);
  if (v1)
  {

    v15 = v1;
    if (qword_1EE300B90 != -1)
    {
      swift_once();
    }

    v16 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    v17 = v1;
    v18 = sub_1DB09CE64();
    v19 = [v18 domain];
    v20 = sub_1DB09D6C4();
    v22 = v21;

    if (v20 == 0x726F727245504944 && v22 == 0xE800000000000000)
    {
      goto LABEL_9;
    }

    v34 = sub_1DB09E254();

    if (v34)
    {
      goto LABEL_22;
    }

    v50 = [v18 domain];
    v51 = sub_1DB09D6C4();
    v53 = v52;

    if (v51 == 0x726F72724549444FLL && v53 == 0xE800000000000000)
    {
LABEL_9:
    }

    else
    {
      v54 = sub_1DB09E254();

      if ((v54 & 1) == 0)
      {
        v55 = *MEMORY[0x1E696AA08];
        v56 = sub_1DB09D6C4();
        v58 = v57;
        v250 = sub_1DAF4D7A4();
        error[0] = v18;
        sub_1DAF40D20(error, v248);
        v59 = v18;
        v60 = swift_isUniquelyReferenced_nonNull_native();
        v251 = v16;
        sub_1DAF3B11C(v248, v56, v58, v60);

        v242 = 0;
        v37 = v251;
        goto LABEL_26;
      }
    }

LABEL_22:
    DIPErrorCode.init(rawValue:)([v18 code]);
    if (LOWORD(error[0]) == 462)
    {
      v35 = 0;
    }

    else
    {
      v35 = error[0];
    }

    v36 = [v18 userInfo];
    v37 = sub_1DB09D624();

    v242 = v35;
LABEL_26:
    if (*(v37 + 16) && (v38 = sub_1DAF35210(0x636F766E49504944, 0xEE00736E6F697461), (v39 & 1) != 0) && (sub_1DAF409DC(*(v37 + 56) + 32 * v38, error), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0), swift_dynamicCast()))
    {
      v40 = *&v248[0];
    }

    else
    {
      v40 = MEMORY[0x1E69E7CC0];
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v40 = sub_1DAF72FF4(0, *(v40 + 2) + 1, 1, v40);
    }

    v42 = *(v40 + 2);
    v41 = *(v40 + 3);
    if (v42 >= v41 >> 1)
    {
      v40 = sub_1DAF72FF4((v41 > 1), v42 + 1, 1, v40);
    }

    *(v40 + 2) = v42 + 1;
    v43 = &v40[56 * v42];
    *(v43 + 4) = 0xD000000000000022;
    *(v43 + 5) = 0x80000001DB0C9DB0;
    *(v43 + 6) = 0xD000000000000024;
    *(v43 + 7) = 0x80000001DB0C9C50;
    *(v43 + 8) = 0x2928796669726576;
    *(v43 + 9) = 0xE800000000000000;
    *(v43 + 10) = 256;
    v250 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
    error[0] = v40;
    sub_1DAF40D20(error, v248);
    v44 = swift_isUniquelyReferenced_nonNull_native();
    v251 = v37;
    sub_1DAF3B11C(v248, 0x636F766E49504944, 0xEE00736E6F697461, v44);
    v45 = qword_1DB0B1340[v242];
    v46 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v47 = sub_1DB09D6B4();
    v48 = sub_1DB09D604();
    [v46 initWithDomain:v47 code:v45 userInfo:v48];

    swift_willThrow();
    goto LABEL_36;
  }

  v14 = v13;
  v61 = sub_1DB009214(v9);

  v62 = sub_1DAFA7D80(v61, v14, 0);

  v63 = SecTrustCopyKey(v62);
  if (v63)
  {
    v241 = v63;
    v242 = v62;
    v64 = *(v11 + 24);
    error[0] = *(v11 + 16);
    error[1] = v64;

    MEMORY[0x1E127FE90](46, 0xE100000000000000);
    v65 = *(v11 + 32);
    v66 = *(v11 + 40);

    MEMORY[0x1E127FE90](v65, v66);

    sub_1DB09D714();
    v67 = sub_1DB09D6D4();
    v69 = v68;

    (*(v3 + 8))(v7, v2);
    if (v69 >> 60 == 15)
    {
LABEL_61:
      if (qword_1EE300B90 != -1)
      {
        swift_once();
      }

      v94 = MEMORY[0x1E69E7CC0];
      v95 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
      if (*(v95 + 16))
      {
        v96 = sub_1DAF35210(0x636F766E49504944, 0xEE00736E6F697461);
        if (v97)
        {
          sub_1DAF409DC(*(v95 + 56) + 32 * v96, error);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
          if (swift_dynamicCast())
          {
            v94 = *&v248[0];
          }
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v94 = sub_1DAF72FF4(0, *(v94 + 2) + 1, 1, v94);
      }

      v99 = *(v94 + 2);
      v98 = *(v94 + 3);
      if (v99 >= v98 >> 1)
      {
        v94 = sub_1DAF72FF4((v98 > 1), v99 + 1, 1, v94);
      }

      *(v94 + 2) = v99 + 1;
      v100 = &v94[56 * v99];
      *(v100 + 4) = 0xD000000000000044;
      *(v100 + 5) = 0x80000001DB0C9E20;
      *(v100 + 6) = 0xD000000000000024;
      *(v100 + 7) = 0x80000001DB0C9C50;
      *(v100 + 8) = 0x2928796669726576;
      *(v100 + 9) = 0xE800000000000000;
      *(v100 + 10) = 266;
      v250 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
      error[0] = v94;
      sub_1DAF40D20(error, v248);
      v101 = swift_isUniquelyReferenced_nonNull_native();
      v251 = v95;
      sub_1DAF3B11C(v248, 0x636F766E49504944, 0xEE00736E6F697461, v101);
      v102 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v103 = sub_1DB09D6B4();
      v104 = sub_1DB09D604();
      [v102 initWithDomain:v103 code:-1 userInfo:v104];

      swift_willThrow();
      goto LABEL_36;
    }

    v70 = v67;
    v71 = *(v11 + 56);
    *&v248[0] = *(v11 + 48);
    *(&v248[0] + 1) = v71;
    v251 = 45;
    v252 = 0xE100000000000000;
    v246 = 43;
    v247 = 0xE100000000000000;
    sub_1DAF9C5EC();
    *&v248[0] = sub_1DB09DCA4();
    *(&v248[0] + 1) = v72;
    v251 = 95;
    v252 = 0xE100000000000000;
    v246 = 47;
    v247 = 0xE100000000000000;
    v73 = sub_1DB09DCA4();
    v75 = v74;

    error[0] = v73;
    error[1] = v75;

    v76 = sub_1DB09D7A4();

    if ((v76 & 3) != 0)
    {
      if ((sub_1DB09D7A4() & 3) != 0)
      {
        sub_1DB09D7A4();
        v77 = sub_1DB09D844();
        v79 = v78;
      }

      else
      {
        v77 = 0;
        v79 = 0xE000000000000000;
      }

      MEMORY[0x1E127FE90](v77, v79);
    }

    v91 = sub_1DB09CFA4();
    v93 = v92;
    sub_1DAF4ED88(v91, v92);

    if (v93 >> 60 == 15)
    {
      sub_1DAF4AC40(v70, v69);
      goto LABEL_61;
    }

    sub_1DAF4AC40(v91, v93);
    swift_beginAccess();
    if (*(v11 + 72))
    {
      if (*(v11 + 72) != 1)
      {
        v139 = sub_1DB09D004();
        v140 = DigestSha256(v139);

        if (!v140)
        {
          if (qword_1EE300B90 != -1)
          {
            swift_once();
          }

          v158 = MEMORY[0x1E69E7CC0];
          v159 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
          v160 = *(v159 + 16);
          v238 = v91;
          if (v160)
          {
            v161 = sub_1DAF35210(0x636F766E49504944, 0xEE00736E6F697461);
            if (v162)
            {
              sub_1DAF409DC(*(v159 + 56) + 32 * v161, error);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
              if (swift_dynamicCast())
              {
                v158 = *&v248[0];
              }
            }
          }

          v163 = swift_isUniquelyReferenced_nonNull_native();
          v237 = v93;
          if ((v163 & 1) == 0)
          {
            v158 = sub_1DAF72FF4(0, *(v158 + 2) + 1, 1, v158);
          }

          v165 = *(v158 + 2);
          v164 = *(v158 + 3);
          if (v165 >= v164 >> 1)
          {
            v158 = sub_1DAF72FF4((v164 > 1), v165 + 1, 1, v158);
          }

          *(v158 + 2) = v165 + 1;
          v166 = &v158[56 * v165];
          *(v166 + 4) = 0xD000000000000041;
          *(v166 + 5) = 0x80000001DB0C9E70;
          *(v166 + 6) = 0xD000000000000024;
          *(v166 + 7) = 0x80000001DB0C9C50;
          *(v166 + 8) = 0x2928796669726576;
          *(v166 + 9) = 0xE800000000000000;
          *(v166 + 10) = 287;
          v250 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
          error[0] = v158;
          sub_1DAF40D20(error, v248);
          v167 = swift_isUniquelyReferenced_nonNull_native();
          v251 = v159;
          sub_1DAF3B11C(v248, 0x636F766E49504944, 0xEE00736E6F697461, v167);
          v168 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
          v169 = sub_1DB09D6B4();
          v170 = sub_1DB09D604();
          [v168 initWithDomain:v169 code:-1 userInfo:v170];

          goto LABEL_123;
        }

        v239 = sub_1DB09D034();
        v240 = v141;

        sub_1DAF4AC40(v70, v69);
        v142 = sub_1DB09D004();
        v125 = ECDSASHA256RawToDER(v142);

        if (!v125)
        {
          if (qword_1EE300B90 != -1)
          {
            swift_once();
          }

          v183 = MEMORY[0x1E69E7CC0];
          v184 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
          if (*(v184 + 16))
          {
            v185 = sub_1DAF35210(0x636F766E49504944, 0xEE00736E6F697461);
            if (v186)
            {
              sub_1DAF409DC(*(v184 + 56) + 32 * v185, error);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
              if (swift_dynamicCast())
              {
                v183 = *&v248[0];
              }
            }
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v183 = sub_1DAF72FF4(0, *(v183 + 2) + 1, 1, v183);
          }

          v188 = *(v183 + 2);
          v187 = *(v183 + 3);
          v238 = v91;
          if (v188 >= v187 >> 1)
          {
            v183 = sub_1DAF72FF4((v187 > 1), v188 + 1, 1, v183);
          }

          *(v183 + 2) = v188 + 1;
          v189 = &v183[56 * v188];
          *(v189 + 4) = 0xD00000000000003FLL;
          *(v189 + 5) = 0x80000001DB0C9EC0;
          *(v189 + 6) = 0xD000000000000024;
          *(v189 + 7) = 0x80000001DB0C9C50;
          *(v189 + 8) = 0x2928796669726576;
          *(v189 + 9) = 0xE800000000000000;
          *(v189 + 10) = 291;
          v250 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
          error[0] = v183;
          sub_1DAF40D20(error, v248);
          v190 = swift_isUniquelyReferenced_nonNull_native();
          v251 = v184;
          sub_1DAF3B11C(v248, 0x636F766E49504944, 0xEE00736E6F697461, v190);
          v191 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
          v192 = sub_1DB09D6B4();
          v193 = sub_1DB09D604();
          [v191 initWithDomain:v192 code:-1 userInfo:v193];

          swift_willThrow();
          sub_1DAF4AC40(v238, v93);
          v151 = v239;
          v194 = &v255;
          goto LABEL_158;
        }

        v126 = v242;
        v127 = v241;
        goto LABEL_104;
      }

      v105 = *(v11 + 64);
      swift_beginAccess();
      v106 = *(v105 + 32);
      v237 = v93;
      if (!v106)
      {
LABEL_77:
        if (qword_1EE300B90 != -1)
        {
          swift_once();
        }

        v112 = MEMORY[0x1E69E7CC0];
        v113 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
        v114 = *(v113 + 16);
        v238 = v91;
        if (v114)
        {
          v115 = sub_1DAF35210(0x636F766E49504944, 0xEE00736E6F697461);
          if (v116)
          {
            sub_1DAF409DC(*(v113 + 56) + 32 * v115, error);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
            if (swift_dynamicCast())
            {
              v112 = *&v248[0];
            }
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v112 = sub_1DAF72FF4(0, *(v112 + 2) + 1, 1, v112);
        }

        v118 = *(v112 + 2);
        v117 = *(v112 + 3);
        if (v118 >= v117 >> 1)
        {
          v112 = sub_1DAF72FF4((v117 > 1), v118 + 1, 1, v112);
        }

        *(v112 + 2) = v118 + 1;
        v119 = &v112[56 * v118];
        *(v119 + 4) = 0xD000000000000036;
        *(v119 + 5) = 0x80000001DB0C9FA0;
        *(v119 + 6) = 0xD000000000000024;
        *(v119 + 7) = 0x80000001DB0C9C50;
        *(v119 + 8) = 0x2928796669726576;
        *(v119 + 9) = 0xE800000000000000;
        *(v119 + 10) = 272;
        v250 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
        error[0] = v112;
        sub_1DAF40D20(error, v248);
        v120 = swift_isUniquelyReferenced_nonNull_native();
        v244 = v113;
        sub_1DAF3B11C(v248, 0x636F766E49504944, 0xEE00736E6F697461, v120);
        v121 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
        v122 = sub_1DB09D6B4();
        v123 = sub_1DB09D604();
        [v121 initWithDomain:v122 code:-1 userInfo:v123];

LABEL_123:
        swift_willThrow();

        sub_1DAF4AC40(v238, v237);
        sub_1DAF4AC40(v70, v69);
        goto LABEL_36;
      }

      v107 = v91;
      v108 = *(v105 + 24);

      v109 = sub_1DB09CFA4();
      v111 = v110;

      if (v111 >> 60 == 15)
      {
        v91 = v107;
        goto LABEL_77;
      }

      v244 = v109;
      v245 = v111;
      v178 = sub_1DB09D004();
      v179 = DigestSha256(v178);

      if (!v179)
      {
        if (qword_1EE300B90 != -1)
        {
          swift_once();
        }

        v211 = MEMORY[0x1E69E7CC0];
        v212 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
        if (*(v212 + 16))
        {
          v213 = sub_1DAF35210(0x636F766E49504944, 0xEE00736E6F697461);
          if (v214)
          {
            sub_1DAF409DC(*(v212 + 56) + 32 * v213, error);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
            if (swift_dynamicCast())
            {
              v211 = *&v248[0];
            }
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v211 = sub_1DAF72FF4(0, *(v211 + 2) + 1, 1, v211);
        }

        v216 = *(v211 + 2);
        v215 = *(v211 + 3);
        if (v216 >= v215 >> 1)
        {
          v211 = sub_1DAF72FF4((v215 > 1), v216 + 1, 1, v211);
        }

        *(v211 + 2) = v216 + 1;
        v217 = &v211[56 * v216];
        *(v217 + 4) = 0xD000000000000041;
        *(v217 + 5) = 0x80000001DB0C9E70;
        *(v217 + 6) = 0xD000000000000024;
        *(v217 + 7) = 0x80000001DB0C9C50;
        *(v217 + 8) = 0x2928796669726576;
        *(v217 + 9) = 0xE800000000000000;
        *(v217 + 10) = 275;
        v250 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
        error[0] = v211;
        sub_1DAF40D20(error, v248);
        v218 = swift_isUniquelyReferenced_nonNull_native();
        v243 = v212;
        sub_1DAF3B11C(v248, 0x636F766E49504944, 0xEE00736E6F697461, v218);
        v219 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
        v220 = sub_1DB09D6B4();
        v221 = sub_1DB09D604();
        [v219 initWithDomain:v220 code:-1 userInfo:v221];

        swift_willThrow();
        sub_1DAF4AC40(v70, v69);

        sub_1DAF4AC40(v107, v237);
        v151 = v244;
        v194 = &v256;
        goto LABEL_158;
      }

      v180 = sub_1DB09D034();
      v182 = v181;

      sub_1DB09D054();
      sub_1DAF40780(v180, v182);
      sub_1DAF4AC40(v70, v69);
      v239 = v244;
      v240 = v245;
      v93 = v237;
      v91 = v107;
    }

    else
    {
      v239 = v70;
      v240 = v69;
    }

    v124 = sub_1DB09D004();
    v125 = ECDSASHA256RawToDER(v124);

    v126 = v242;
    v127 = v241;
    if (!v125)
    {
      if (qword_1EE300B90 != -1)
      {
        swift_once();
      }

      v128 = MEMORY[0x1E69E7CC0];
      v129 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
      if (*(v129 + 16))
      {
        v130 = sub_1DAF35210(0x636F766E49504944, 0xEE00736E6F697461);
        if (v131)
        {
          sub_1DAF409DC(*(v129 + 56) + 32 * v130, error);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
          if (swift_dynamicCast())
          {
            v128 = *&v248[0];
          }
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v128 = sub_1DAF72FF4(0, *(v128 + 2) + 1, 1, v128);
      }

      v133 = *(v128 + 2);
      v132 = *(v128 + 3);
      v238 = v91;
      if (v133 >= v132 >> 1)
      {
        v128 = sub_1DAF72FF4((v132 > 1), v133 + 1, 1, v128);
      }

      *(v128 + 2) = v133 + 1;
      v134 = &v128[56 * v133];
      *(v134 + 4) = 0xD00000000000003FLL;
      *(v134 + 5) = 0x80000001DB0C9EC0;
      *(v134 + 6) = 0xD000000000000024;
      *(v134 + 7) = 0x80000001DB0C9C50;
      *(v134 + 8) = 0x2928796669726576;
      *(v134 + 9) = 0xE800000000000000;
      *(v134 + 10) = 282;
      v250 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
      error[0] = v128;
      sub_1DAF40D20(error, v248);
      v135 = swift_isUniquelyReferenced_nonNull_native();
      v244 = v129;
      sub_1DAF3B11C(v248, 0x636F766E49504944, 0xEE00736E6F697461, v135);
      v136 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v137 = sub_1DB09D6B4();
      v138 = sub_1DB09D604();
      [v136 initWithDomain:v137 code:-1 userInfo:v138];

      swift_willThrow();
      sub_1DAF40780(v239, v240);

      sub_1DAF4AC40(v238, v93);
      goto LABEL_36;
    }

LABEL_104:
    v143 = sub_1DB09D034();
    v145 = v144;

    sub_1DAF4AC40(v91, v93);
    v146 = [objc_opt_self() standardUserDefaults];
    if (qword_1EE301DD8 != -1)
    {
      swift_once();
    }

    v238 = v145;
    v147 = v240;
    if (byte_1EE30A140 == 1)
    {
      v148 = sub_1DB09D6B4();
      v149 = [v146 BOOLForKey_];

      v150 = v239;
      if (v149)
      {
        sub_1DAF40780(v239, v147);

        v151 = v143;
LABEL_157:
        v194 = &v254;
LABEL_158:
        v157 = *(v194 - 32);
        goto LABEL_159;
      }
    }

    else
    {

      v150 = v239;
    }

    v152 = *MEMORY[0x1E697B128];
    error[0] = 0;
    v153 = sub_1DB09D004();
    v154 = v143;
    v155 = v238;
    v156 = sub_1DB09D004();
    LODWORD(v152) = SecKeyVerifySignature(v127, v152, v153, v156, error);

    if (v152)
    {

      sub_1DAF40780(v150, v147);
      v151 = v154;
      v157 = v155;
LABEL_159:
      sub_1DAF40780(v151, v157);
      goto LABEL_36;
    }

    LOWORD(v248[0]) = 202;
    v171 = sub_1DAFCF218(error[0], 0xD000000000000023, 0x80000001DB0C9F30, v248);
    swift_willThrow();
    if (qword_1EE300B90 != -1)
    {
      swift_once();
    }

    v237 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    v172 = v171;
    v173 = sub_1DB09CE64();
    v174 = [v173 domain];
    v175 = sub_1DB09D6C4();
    v177 = v176;

    v236 = v154;
    v235 = v171;
    if (v175 == 0x726F727245504944 && v177 == 0xE800000000000000)
    {
      goto LABEL_128;
    }

    v195 = sub_1DB09E254();

    if (v195)
    {
      goto LABEL_143;
    }

    v222 = [v173 domain];
    v223 = sub_1DB09D6C4();
    v225 = v224;

    if (v223 == 0x726F72724549444FLL && v225 == 0xE800000000000000)
    {
LABEL_128:
    }

    else
    {
      v226 = sub_1DB09E254();

      if ((v226 & 1) == 0)
      {
        v227 = *MEMORY[0x1E696AA08];
        v228 = sub_1DB09D6C4();
        v230 = v229;
        v250 = sub_1DAF4D7A4();
        error[0] = v173;
        sub_1DAF40D20(error, v248);
        v231 = v173;
        v232 = v237;
        v233 = swift_isUniquelyReferenced_nonNull_native();
        v244 = v232;
        sub_1DAF3B11C(v248, v228, v230, v233);

        v199 = 0;
        v198 = v244;
        goto LABEL_147;
      }
    }

LABEL_143:
    DIPErrorCode.init(rawValue:)([v173 code]);
    if (LOWORD(error[0]) == 462)
    {
      v196 = 0;
    }

    else
    {
      v196 = error[0];
    }

    v197 = [v173 userInfo];
    v198 = sub_1DB09D624();

    v199 = v196;
LABEL_147:
    if (*(v198 + 16) && (v200 = sub_1DAF35210(0x636F766E49504944, 0xEE00736E6F697461), (v201 & 1) != 0) && (sub_1DAF409DC(*(v198 + 56) + 32 * v200, error), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0), swift_dynamicCast()))
    {
      v202 = *&v248[0];
    }

    else
    {
      v202 = MEMORY[0x1E69E7CC0];
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v202 = sub_1DAF72FF4(0, *(v202 + 2) + 1, 1, v202);
    }

    v204 = *(v202 + 2);
    v203 = *(v202 + 3);
    if (v204 >= v203 >> 1)
    {
      v202 = sub_1DAF72FF4((v203 > 1), v204 + 1, 1, v202);
    }

    *(v202 + 2) = v204 + 1;
    v205 = &v202[56 * v204];
    *(v205 + 4) = 0xD000000000000037;
    *(v205 + 5) = 0x80000001DB0C9F60;
    *(v205 + 6) = 0xD000000000000024;
    *(v205 + 7) = 0x80000001DB0C9C50;
    *(v205 + 8) = 0x2928796669726576;
    *(v205 + 9) = 0xE800000000000000;
    *(v205 + 10) = 301;
    v250 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
    error[0] = v202;
    sub_1DAF40D20(error, v248);
    v206 = swift_isUniquelyReferenced_nonNull_native();
    v244 = v198;
    sub_1DAF3B11C(v248, 0x636F766E49504944, 0xEE00736E6F697461, v206);
    v207 = qword_1DB0B1340[v199];
    v208 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v209 = sub_1DB09D6B4();
    v210 = sub_1DB09D604();
    [v208 initWithDomain:v209 code:v207 userInfo:v210];

    swift_willThrow();
    sub_1DAF40780(v239, v240);

    v151 = v236;
    goto LABEL_157;
  }

  if (qword_1EE300B90 != -1)
  {
    swift_once();
  }

  v80 = MEMORY[0x1E69E7CC0];
  v81 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
  if (*(v81 + 16))
  {
    v82 = sub_1DAF35210(0x636F766E49504944, 0xEE00736E6F697461);
    if (v83)
    {
      sub_1DAF409DC(*(v81 + 56) + 32 * v82, error);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
      if (swift_dynamicCast())
      {
        v80 = *&v248[0];
      }
    }
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v80 = sub_1DAF72FF4(0, *(v80 + 2) + 1, 1, v80);
  }

  v85 = *(v80 + 2);
  v84 = *(v80 + 3);
  if (v85 >= v84 >> 1)
  {
    v80 = sub_1DAF72FF4((v84 > 1), v85 + 1, 1, v80);
  }

  *(v80 + 2) = v85 + 1;
  v86 = &v80[56 * v85];
  *(v86 + 4) = 0xD00000000000003BLL;
  *(v86 + 5) = 0x80000001DB0C9DE0;
  *(v86 + 6) = 0xD000000000000024;
  *(v86 + 7) = 0x80000001DB0C9C50;
  *(v86 + 8) = 0x2928796669726576;
  *(v86 + 9) = 0xE800000000000000;
  *(v86 + 10) = 261;
  v250 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
  error[0] = v80;
  sub_1DAF40D20(error, v248);
  v87 = swift_isUniquelyReferenced_nonNull_native();
  v251 = v81;
  sub_1DAF3B11C(v248, 0x636F766E49504944, 0xEE00736E6F697461, v87);
  v88 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v89 = sub_1DB09D6B4();
  v90 = sub_1DB09D604();
  [v88 initWithDomain:v89 code:-1 userInfo:v90];

  swift_willThrow();
LABEL_36:
  v49 = *MEMORY[0x1E69E9840];
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> JWSSignedJSON.setCertificateChain(_:)(Swift::OpaquePointer a1)
{
  if (*(a1._rawValue + 2))
  {
    swift_beginAccess();
    v3 = *(v1 + 64);

    swift_beginAccess();
    v4 = *(v3 + 16);
    *(v3 + 16) = a1;
  }

  else
  {
    if (qword_1EE300B90 != -1)
    {
      swift_once();
    }

    v5 = MEMORY[0x1E69E7CC0];
    v6 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    if (*(v6 + 16))
    {
      v7 = sub_1DAF35210(0x636F766E49504944, 0xEE00736E6F697461);
      if (v8)
      {
        sub_1DAF409DC(*(v6 + 56) + 32 * v7, &v17);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
        if (swift_dynamicCast())
        {
          v5 = *&v16[0];
        }
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_1DAF72FF4(0, *(v5 + 2) + 1, 1, v5);
    }

    v10 = *(v5 + 2);
    v9 = *(v5 + 3);
    if (v10 >= v9 >> 1)
    {
      v5 = sub_1DAF72FF4((v9 > 1), v10 + 1, 1, v5);
    }

    *(v5 + 2) = v10 + 1;
    v11 = &v5[56 * v10];
    *(v11 + 4) = 0xD000000000000026;
    *(v11 + 5) = 0x80000001DB0C9FE0;
    *(v11 + 6) = 0xD000000000000024;
    *(v11 + 7) = 0x80000001DB0C9C50;
    *(v11 + 8) = 0xD000000000000017;
    *(v11 + 9) = 0x80000001DB0CA010;
    *(v11 + 10) = 162;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
    *&v17 = v5;
    sub_1DAF40D20(&v17, v16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = v6;
    sub_1DAF3B11C(v16, 0x636F766E49504944, 0xEE00736E6F697461, isUniquelyReferenced_nonNull_native);
    v13 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v14 = sub_1DB09D6B4();
    v15 = sub_1DB09D604();
    [v13 initWithDomain:v14 code:-1202 userInfo:v15];

    swift_willThrow();
  }
}

Swift::Void __swiftcall JWSSignedJSON.setNonce(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  swift_beginAccess();
  v4 = v1[14];
  v1[13] = countAndFlagsBits;
  v1[14] = object;

  if (!v1[12])
  {
    v1[12] = MEMORY[0x1E69E7CC0];
  }

  swift_beginAccess();
  v5 = v1[12];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v1[12] = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = sub_1DAF72DB4(0, *(v5 + 2) + 1, 1, v5);
    v1[12] = v5;
  }

  v8 = *(v5 + 2);
  v7 = *(v5 + 3);
  if (v8 >= v7 >> 1)
  {
    v5 = sub_1DAF72DB4((v7 > 1), v8 + 1, 1, v5);
  }

  *(v5 + 2) = v8 + 1;
  v9 = &v5[16 * v8];
  *(v9 + 4) = 0x65636E6F6ELL;
  *(v9 + 5) = 0xE500000000000000;
  v1[12] = v5;
  swift_endAccess();
}

Swift::Void __swiftcall JWSSignedJSON.setSalt(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  swift_beginAccess();
  v4 = v1[18];
  v1[17] = countAndFlagsBits;
  v1[18] = object;

  if (!v1[12])
  {
    v1[12] = MEMORY[0x1E69E7CC0];
  }

  swift_beginAccess();
  v5 = v1[12];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v1[12] = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = sub_1DAF72DB4(0, *(v5 + 2) + 1, 1, v5);
    v1[12] = v5;
  }

  v8 = *(v5 + 2);
  v7 = *(v5 + 3);
  if (v8 >= v7 >> 1)
  {
    v5 = sub_1DAF72DB4((v7 > 1), v8 + 1, 1, v5);
  }

  *(v5 + 2) = v8 + 1;
  v9 = &v5[16 * v8];
  *(v9 + 4) = 1953259891;
  *(v9 + 5) = 0xE400000000000000;
  v1[12] = v5;
  swift_endAccess();
}

void JWSSignedJSON.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = sub_1DB09DEB4();
  v131 = *(v5 - 8);
  v6 = *(v131 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  v130 = v125 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v129 = v125 - v11;
  v12 = v4[10];
  v13 = v4[11];
  v14 = v4[12];
  type metadata accessor for JWSSignedJSON.CodingKeys();
  swift_getWitnessTable();
  v15 = sub_1DB09E1A4();
  v16 = *(*(v15 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v21 = v125 - v20;
  v22 = v2[5];
  v23 = v2[4] & 0xFFFFFFFFFFFFLL;
  if ((v22 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v22) & 0xF;
  }

  if (v23)
  {
    v24 = v2[3];
    v25 = v2[2] & 0xFFFFFFFFFFFFLL;
    if ((v24 & 0x2000000000000000) != 0)
    {
      v25 = HIBYTE(v24) & 0xF;
    }

    if (v25)
    {
      v26 = v2[7];
      v27 = v2[6] & 0xFFFFFFFFFFFFLL;
      if ((v26 & 0x2000000000000000) != 0)
      {
        v27 = HIBYTE(v26) & 0xF;
      }

      if (v27)
      {
        v126 = v19;
        v127 = v18;
        v128 = v5;
        v28 = a1[3];
        v125[1] = a1[4];
        v29 = v21;
        __swift_project_boxed_opaque_existential_1(a1, v28);
        v30 = v127;
        sub_1DB09E434();
        swift_beginAccess();
        *&v135 = v2[8];
        LOBYTE(v134[0]) = 0;
        type metadata accessor for JWSSignedJSON.DIPJWSUnprotectedHeader();
        swift_getWitnessTable();
        v31 = v132;
        sub_1DB09E194();
        if (!v31)
        {
          v44 = v2[2];
          v45 = v2[3];
          LOBYTE(v135) = 1;

          sub_1DB09E154();

          v46 = v2[4];
          v47 = v2[5];
          LOBYTE(v135) = 2;

          sub_1DB09E154();

          v123 = v2[6];
          v124 = v2[7];
          LOBYTE(v135) = 3;

          sub_1DB09E154();
          (*(v126 + 8))(v29, v30);

          return;
        }

        (*(v126 + 8))(v29, v30);
        v32 = v128;
        v138 = v31;
        v48 = v31;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0ECF0, &unk_1DB0A1310);
        v49 = v129;
        if (swift_dynamicCast())
        {

          v51 = v130;
          v50 = v131;
          (*(v131 + 32))(v130, v49, v32);
          v52 = swift_allocError();
          (*(v50 + 16))(v53, v51, v32);
          if (qword_1EE300B90 != -1)
          {
            swift_once();
          }

          v54 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
          v55 = v52;
          v56 = sub_1DB09CE64();
          v57 = [v56 domain];
          v58 = sub_1DB09D6C4();
          v60 = v59;

          if (v58 == 0x726F727245504944 && v60 == 0xE800000000000000)
          {
            goto LABEL_29;
          }

          v90 = sub_1DB09E254();

          if (v90)
          {
            goto LABEL_55;
          }

          v105 = [v56 domain];
          v106 = sub_1DB09D6C4();
          v108 = v107;

          if (v106 == 0x726F72724549444FLL && v108 == 0xE800000000000000)
          {
LABEL_29:
          }

          else
          {
            v109 = sub_1DB09E254();

            if ((v109 & 1) == 0)
            {
              v110 = *MEMORY[0x1E696AA08];
              v111 = sub_1DB09D6C4();
              v113 = v112;
              v136 = sub_1DAF4D7A4();
              *&v135 = v56;
              sub_1DAF40D20(&v135, v134);
              v114 = v56;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v133 = v54;
              sub_1DAF3B11C(v134, v111, v113, isUniquelyReferenced_nonNull_native);

              v93 = v133;
              v91 = 87;
              goto LABEL_59;
            }
          }

LABEL_55:
          DIPErrorCode.init(rawValue:)([v56 code]);
          if (v135 == 462)
          {
            LOWORD(v91) = 87;
          }

          else
          {
            LOWORD(v91) = v135;
          }

          v92 = [v56 userInfo];
          v93 = sub_1DB09D624();

          v91 = v91;
LABEL_59:
          if (*(v93 + 16) && (v94 = sub_1DAF35210(0x636F766E49504944, 0xEE00736E6F697461), (v95 & 1) != 0) && (sub_1DAF409DC(*(v93 + 56) + 32 * v94, &v135), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0), swift_dynamicCast()))
          {
            v96 = *&v134[0];
          }

          else
          {
            v96 = MEMORY[0x1E69E7CC0];
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v96 = sub_1DAF72FF4(0, *(v96 + 2) + 1, 1, v96);
          }

          v98 = *(v96 + 2);
          v97 = *(v96 + 3);
          if (v98 >= v97 >> 1)
          {
            v96 = sub_1DAF72FF4((v97 > 1), v98 + 1, 1, v96);
          }

          *(v96 + 2) = v98 + 1;
          v99 = &v96[56 * v98];
          *(v99 + 4) = 0xD000000000000012;
          *(v99 + 5) = 0x80000001DB0CA070;
          *(v99 + 6) = 0xD000000000000024;
          *(v99 + 7) = 0x80000001DB0C9C50;
          *(v99 + 8) = 0x742865646F636E65;
          *(v99 + 9) = 0xEB00000000293A6FLL;
          *(v99 + 10) = 238;
          v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
          *&v135 = v96;
          sub_1DAF40D20(&v135, v134);
          v100 = swift_isUniquelyReferenced_nonNull_native();
          v133 = v93;
          sub_1DAF3B11C(v134, 0x636F766E49504944, 0xEE00736E6F697461, v100);
          v101 = qword_1DB0B1340[v91];
          v102 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
          v103 = sub_1DB09D6B4();
          v104 = sub_1DB09D604();
          [v102 initWithDomain:v103 code:v101 userInfo:v104];

          swift_willThrow();
          (*(v131 + 8))(v130, v128);

          return;
        }

        v61 = v31;
        if (qword_1EE300B90 != -1)
        {
          swift_once();
        }

        v62 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
        v63 = v31;
        v64 = sub_1DB09CE64();
        v65 = [v64 domain];
        v66 = sub_1DB09D6C4();
        v68 = v67;

        if (v66 == 0x726F727245504944 && v68 == 0xE800000000000000)
        {
          goto LABEL_39;
        }

        v70 = sub_1DB09E254();

        if ((v70 & 1) == 0)
        {
          v71 = [v64 domain];
          v72 = sub_1DB09D6C4();
          v74 = v73;

          if (v72 == 0x726F72724549444FLL && v74 == 0xE800000000000000)
          {
LABEL_39:

            goto LABEL_40;
          }

          v116 = sub_1DB09E254();

          if ((v116 & 1) == 0)
          {
            v117 = *MEMORY[0x1E696AA08];
            v118 = sub_1DB09D6C4();
            v120 = v119;
            v136 = sub_1DAF4D7A4();
            *&v135 = v64;
            sub_1DAF40D20(&v135, v134);
            v121 = v64;
            v122 = swift_isUniquelyReferenced_nonNull_native();
            v138 = v62;
            sub_1DAF3B11C(v134, v118, v120, v122);

            v78 = 0;
            v77 = v138;
            goto LABEL_44;
          }
        }

LABEL_40:
        DIPErrorCode.init(rawValue:)([v64 code]);
        if (v135 == 462)
        {
          v75 = 0;
        }

        else
        {
          v75 = v135;
        }

        v76 = [v64 userInfo];
        v77 = sub_1DB09D624();

        v78 = v75;
LABEL_44:
        if (v77[2] && (v79 = sub_1DAF35210(0x636F766E49504944, 0xEE00736E6F697461), (v80 & 1) != 0) && (sub_1DAF409DC(v77[7] + 32 * v79, &v135), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0), swift_dynamicCast()))
        {
          v81 = *&v134[0];
        }

        else
        {
          v81 = MEMORY[0x1E69E7CC0];
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v81 = sub_1DAF72FF4(0, *(v81 + 2) + 1, 1, v81);
        }

        v83 = *(v81 + 2);
        v82 = *(v81 + 3);
        if (v83 >= v82 >> 1)
        {
          v81 = sub_1DAF72FF4((v82 > 1), v83 + 1, 1, v81);
        }

        *(v81 + 2) = v83 + 1;
        v84 = &v81[56 * v83];
        *(v84 + 4) = 0xD000000000000037;
        *(v84 + 5) = 0x80000001DB0CA030;
        *(v84 + 6) = 0xD000000000000024;
        *(v84 + 7) = 0x80000001DB0C9C50;
        *(v84 + 8) = 0x742865646F636E65;
        *(v84 + 9) = 0xEB00000000293A6FLL;
        *(v84 + 10) = 240;
        v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
        *&v135 = v81;
        sub_1DAF40D20(&v135, v134);
        v85 = swift_isUniquelyReferenced_nonNull_native();
        v138 = v77;
        sub_1DAF3B11C(v134, 0x636F766E49504944, 0xEE00736E6F697461, v85);
        v86 = qword_1DB0B1340[v78];
        v87 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
        v88 = sub_1DB09D6B4();
        v89 = sub_1DB09D604();
        [v87 initWithDomain:v88 code:v86 userInfo:v89];

        swift_willThrow();
        return;
      }
    }
  }

  if (qword_1EE300B90 != -1)
  {
    swift_once();
  }

  v33 = MEMORY[0x1E69E7CC0];
  v34 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
  if (*(v34 + 16))
  {
    v35 = sub_1DAF35210(0x636F766E49504944, 0xEE00736E6F697461);
    if (v36)
    {
      sub_1DAF409DC(*(v34 + 56) + 32 * v35, &v135);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
      if (swift_dynamicCast())
      {
        v33 = *&v134[0];
      }
    }
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v33 = sub_1DAF72FF4(0, *(v33 + 2) + 1, 1, v33);
  }

  v38 = *(v33 + 2);
  v37 = *(v33 + 3);
  if (v38 >= v37 >> 1)
  {
    v33 = sub_1DAF72FF4((v37 > 1), v38 + 1, 1, v33);
  }

  *(v33 + 2) = v38 + 1;
  v39 = &v33[56 * v38];
  *(v39 + 4) = 0xD00000000000002DLL;
  *(v39 + 5) = 0x80000001DB0CA090;
  *(v39 + 6) = 0xD000000000000024;
  *(v39 + 7) = 0x80000001DB0C9C50;
  *(v39 + 8) = 0x742865646F636E65;
  *(v39 + 9) = 0xEB00000000293A6FLL;
  *(v39 + 10) = 229;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
  *&v135 = v33;
  sub_1DAF40D20(&v135, v134);
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v137 = v34;
  sub_1DAF3B11C(v134, 0x636F766E49504944, 0xEE00736E6F697461, v40);
  v41 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v42 = sub_1DB09D6B4();
  v43 = sub_1DB09D604();
  [v41 initWithDomain:v42 code:-1202 userInfo:v43];

  swift_willThrow();
}

uint64_t sub_1DB012B58(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *(*v2 + 80);
  v39 = *(v4 - 8);
  v5 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v7 = v35 - v6;
  if (qword_1EE3032E8 != -1)
  {
    swift_once();
  }

  v8 = qword_1EE30A1D8;
  *&v41 = v4;
  swift_getMetatypeMetadata();
  v9 = sub_1DB09D744();
  v10 = *(v8 + 24);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v35[-4] = v8;
  v35[-3] = v12;
  v35[-2] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F480, &qword_1DB0B1338);
  sub_1DB09DBC4();

  result = v41;
  if (v41 == 17)
  {
    v38 = 17;
    if (qword_1EE301DE8 != -1)
    {
      swift_once();
    }

    v35[1] = qword_1EE30A148;
    sub_1DB09DB54();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EEE0, &qword_1DB0A21E0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1DB0A04E0;
    v16 = v39;
    v17 = *(v39 + 16);
    v36 = *(*v3 + 144);
    v37 = v17;
    v17(v7, v3 + v36, v4);
    swift_getDynamicType();
    v39 = *(v16 + 8);
    (v39)(v7, v4);
    v18 = sub_1DB09E474();
    v20 = v19;
    *(v15 + 56) = MEMORY[0x1E69E6158];
    *(v15 + 64) = sub_1DAF4DC24();
    *(v15 + 32) = v18;
    *(v15 + 40) = v20;
    sub_1DB09D444();

    *&v41 = 0;
    *(&v41 + 1) = 0xE000000000000000;
    sub_1DB09DE44();
    MEMORY[0x1E127FE90](0xD000000000000035, 0x80000001DB0CA160);
    v37(v7, v3 + v36, v4);
    swift_getDynamicType();
    (v39)(v7, v4);
    v21 = sub_1DB09E474();
    MEMORY[0x1E127FE90](v21);

    v22 = *(&v41 + 1);
    v39 = v41;
    if (qword_1EE300B90 != -1)
    {
      swift_once();
    }

    v23 = MEMORY[0x1E69E7CC0];
    v24 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    v25 = *(v24 + 16);

    if (v25)
    {
      v26 = sub_1DAF35210(0x636F766E49504944, 0xEE00736E6F697461);
      if (v27)
      {
        sub_1DAF409DC(*(v24 + 56) + 32 * v26, &v41);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
        if (swift_dynamicCast())
        {
          v23 = *&v40[0];
        }
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v23 = sub_1DAF72FF4(0, *(v23 + 2) + 1, 1, v23);
    }

    v29 = *(v23 + 2);
    v28 = *(v23 + 3);
    if (v29 >= v28 >> 1)
    {
      v23 = sub_1DAF72FF4((v28 > 1), v29 + 1, 1, v23);
    }

    *(v23 + 2) = v29 + 1;
    v30 = &v23[56 * v29];
    *(v30 + 4) = v39;
    *(v30 + 5) = v22;
    *(v30 + 6) = 0xD000000000000024;
    *(v30 + 7) = 0x80000001DB0C9C50;
    *(v30 + 8) = 0xD000000000000015;
    *(v30 + 9) = 0x80000001DB0CA1A0;
    *(v30 + 10) = 309;
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
    *&v41 = v23;
    sub_1DAF40D20(&v41, v40);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v43 = v24;
    sub_1DAF3B11C(v40, 0x636F766E49504944, 0xEE00736E6F697461, isUniquelyReferenced_nonNull_native);
    v32 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v33 = sub_1DB09D6B4();
    v34 = sub_1DB09D604();
    [v32 initWithDomain:v33 code:-1202 userInfo:v34];

    swift_willThrow();
    return v38;
  }

  return result;
}

char *JWSSignedJSON.deinit()
{
  v1 = *v0;
  v2 = *(v0 + 3);

  v3 = *(v0 + 5);

  v4 = *(v0 + 7);

  v5 = *(v0 + 8);

  v6 = *(v0 + 11);
  v7 = *(v0 + 12);
  v8 = *(v0 + 14);
  v9 = *(v0 + 16);
  v10 = *(v0 + 18);

  (*(*(*(v1 + 80) - 8) + 8))(&v0[*(*v0 + 144)]);
  return v0;
}

uint64_t JWSSignedJSON.__deallocating_deinit()
{
  JWSSignedJSON.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1DB013284@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = JWSSignedJSON.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1DB013318()
{
  swift_beginAccess();
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  return result;
}

uint64_t *sub_1DB013364(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 96);
  type metadata accessor for JWSSignedJSON.DIPJWSUnprotectedHeader();
  v7 = swift_allocObject();
  memset(&v9[7], 0, 64);
  *(v1 + 89) = *&v9[16];
  *(v1 + 105) = *&v9[32];
  *(v1 + 121) = *&v9[48];
  *(v1 + 17) = 0uLL;
  v7[3] = 0;
  v7[4] = 0;
  v7[2] = 0;
  v1[8] = v7;
  *(v1 + 72) = 0;
  *(v1 + 73) = *v9;
  (*(*(v4 - 8) + 16))(v1 + *(v3 + 144), a1, v4);
  v1[2] = 0;
  v1[3] = 0xE000000000000000;
  v1[4] = 0;
  v1[5] = 0xE000000000000000;
  v1[6] = 0;
  v1[7] = 0xE000000000000000;
  return v1;
}

char *sub_1DB013490(uint64_t a1)
{
  v3 = *v1;
  (*(*(*(*v1 + 80) - 8) + 16))(&v1[*(*v1 + 144)], a1 + *(*a1 + 144), *(*v1 + 80));
  v4 = *(a1 + 24);
  *(v1 + 2) = *(a1 + 16);
  *(v1 + 3) = v4;
  v5 = *(a1 + 40);
  *(v1 + 4) = *(a1 + 32);
  *(v1 + 5) = v5;
  v6 = *(a1 + 56);
  *(v1 + 6) = *(a1 + 48);
  *(v1 + 7) = v6;
  swift_beginAccess();
  *(v1 + 8) = *(a1 + 64);
  swift_beginAccess();
  v7 = *(a1 + 88);
  v8 = *(a1 + 120);
  v14[2] = *(a1 + 104);
  v14[3] = v8;
  v14[4] = *(a1 + 136);
  v14[0] = *(a1 + 72);
  v14[1] = v7;
  memmove(v1 + 72, (a1 + 72), 0x50uLL);

  v9 = *(v3 + 88);
  v10 = *(v3 + 96);
  v11 = type metadata accessor for JWSSignedJSON.DIPJWSProtectedHeader();
  (*(*(v11 - 8) + 16))(&v13, v14, v11);
  return v1;
}

uint64_t sub_1DB0136E4(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DB013820()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1DB013878(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 80))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1DB0138D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ODIGeocoderBindingsName(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ODIGeocoderBindingsName(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

CoreODIEssentials::CoreODILogger __swiftcall CoreODILogger.init()()
{
  *v0 = 45;
  v0[1] = 0xE100000000000000;
  return result;
}

id defaultLog()()
{
  if (qword_1EE301DE8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE30A148;

  return v1;
}

id static Logger.coreODISensitiveLoggingEnabled.getter()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_1DB09D6B4();
  v2 = [v0 BOOLForKey_];

  return v2;
}

uint64_t CoreODILogger.sensitive(_:category:)(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v7 = sub_1DB09D4B4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v11) = *a3;
  v14 = v3[1];
  v18 = *v3;
  v13 = v18;
  v19 = v14;
  v17 = v11;
  sub_1DB014EC8(&v17, v12);

  sub_1DB0163B8(v12, v13, v14, a1, a2);

  return (*(v8 + 8))(v12, v7);
}

uint64_t sub_1DB014920()
{
  sub_1DAFFE4A8();
  result = sub_1DB09DC44();
  qword_1EE30A148 = result;
  return result;
}

uint64_t sub_1DB014994(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1DB09D4B4();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_1DB09D4A4();
}

uint64_t sub_1DB014A08@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EE304018 != -1)
  {
    swift_once();
  }

  v2 = sub_1DB09D4B4();
  v3 = __swift_project_value_buffer(v2, qword_1EE304020);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void Logger.sensitive(_:)(uint64_t (*a1)(void))
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_1DB09D6B4();
  v4 = [v2 BOOLForKey_];

  if (v4)
  {
    v5 = a1();
    v7 = v6;
    oslog = sub_1DB09D494();
    v8 = sub_1DB09DB54();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v13 = v10;
      *v9 = 136315138;
      v11 = sub_1DB015E84(v5, v7, &v13);

      *(v9 + 4) = v11;
      _os_log_impl(&dword_1DAF16000, oslog, v8, "%s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x1E1281810](v10, -1, -1);
      MEMORY[0x1E1281810](v9, -1, -1);
    }

    else
    {
    }
  }
}

CoreODIEssentials::MilestoneTag_optional __swiftcall MilestoneTag.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DB09E004();

  v5 = 15;
  if (v3 < 0xF)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1DB014CDC(char *a1, char *a2)
{
  v6 = *a1;
  v5 = *a2;
  v2 = MilestoneTag.rawValue.getter();
  if (v2 == MilestoneTag.rawValue.getter())
  {
    v3 = 1;
  }

  else
  {
    v3 = sub_1DB09E254();
  }

  swift_bridgeObjectRelease_n();
  return v3 & 1;
}

uint64_t sub_1DB014D60()
{
  v1 = *v0;
  sub_1DB09E3A4();
  MilestoneTag.rawValue.getter();
  sub_1DB09D794();

  return sub_1DB09E3E4();
}

uint64_t sub_1DB014DC0()
{
  v2 = *v0;
  MilestoneTag.rawValue.getter();
  sub_1DB09D794();
}

uint64_t sub_1DB014E1C()
{
  v1 = *v0;
  sub_1DB09E3A4();
  MilestoneTag.rawValue.getter();
  sub_1DB09D794();

  return sub_1DB09E3E4();
}

uint64_t sub_1DB014E84@<X0>(uint64_t *a1@<X8>)
{
  result = MilestoneTag.rawValue.getter();
  *a1 = result;
  a1[1] = 0xE800000000000000;
  return result;
}

uint64_t sub_1DB014EC8@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  switch(*a1)
  {
    case 1:
      if (qword_1EE3019D8 != -1)
      {
        swift_once();
      }

      v3 = qword_1EE30A0E0;
      break;
    case 2:
      if (qword_1EE300A90 != -1)
      {
        swift_once();
      }

      v3 = qword_1EE309EB0;
      break;
    case 3:
      if (qword_1EE300A88 != -1)
      {
        swift_once();
      }

      v3 = qword_1EE309E98;
      break;
    case 4:
      if (qword_1ECC0E120 != -1)
      {
        swift_once();
      }

      v3 = qword_1ECC25E10;
      break;
    case 5:
      if (qword_1EE3019F8 != -1)
      {
        swift_once();
      }

      v3 = qword_1EE30A110;
      break;
    case 6:
      if (qword_1EE3019D0 != -1)
      {
        swift_once();
      }

      v3 = qword_1EE30A0C8;
      break;
    case 7:
      if (qword_1EE300A58 != -1)
      {
        swift_once();
      }

      v3 = qword_1EE309E20;
      break;
    case 8:
      if (qword_1EE300A60 != -1)
      {
        swift_once();
      }

      v3 = qword_1EE309E38;
      break;
    case 9:
      if (qword_1EE300A80 != -1)
      {
        swift_once();
      }

      v3 = qword_1EE309E80;
      break;
    case 0xA:
      if (qword_1EE3019E8 != -1)
      {
        swift_once();
      }

      v3 = qword_1EE30A0F8;
      break;
    case 0xB:
      if (qword_1ECC0E130 != -1)
      {
        swift_once();
      }

      v3 = qword_1ECC25E28;
      break;
    case 0xC:
      if (qword_1EE300A78 != -1)
      {
        swift_once();
      }

      v3 = qword_1EE309E68;
      break;
    case 0xD:
      if (qword_1EE300A68 != -1)
      {
        swift_once();
      }

      v3 = qword_1EE309E50;
      break;
    case 0xE:
      if (qword_1EE3019A8 != -1)
      {
        swift_once();
      }

      v3 = qword_1EE30A080;
      break;
    case 0xF:
      if (qword_1EE3019A0 != -1)
      {
        swift_once();
      }

      v3 = qword_1EE30A068;
      break;
    case 0x10:
      if (qword_1EE3019B8 != -1)
      {
        swift_once();
      }

      v3 = qword_1EE30A098;
      break;
    case 0x11:
      if (qword_1EE300AA0 != -1)
      {
        swift_once();
      }

      v3 = qword_1EE309EC8;
      break;
    default:
      if (qword_1EE3019C0 != -1)
      {
        swift_once();
      }

      v3 = qword_1EE30A0B0;
      break;
  }

  v4 = sub_1DB09D4B4();
  v5 = __swift_project_value_buffer(v4, v3);
  v6 = *(*(v4 - 8) + 16);

  return v6(a2, v5, v4);
}

uint64_t sub_1DB01539C(uint64_t a1, unint64_t a2, _BYTE *a3, uint64_t (*a4)(void))
{
  v9 = sub_1DB09D4B4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v13) = *a3;
  v15 = *v4;
  v16 = v4[1];
  v26[0] = *v4;
  v26[1] = v16;
  v25 = v13;
  sub_1DB014EC8(&v25, v14);

  v17 = sub_1DB09D494();
  v18 = a4();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v24 = v9;
    v20 = a1;
    v21 = v19;
    v22 = swift_slowAlloc();
    v26[0] = v22;
    *v21 = 136315394;
    *(v21 + 4) = sub_1DB015E84(v15, v16, v26);
    *(v21 + 12) = 2080;
    *(v21 + 14) = sub_1DB015E84(v20, a2, v26);
    _os_log_impl(&dword_1DAF16000, v17, v18, "[%s] %s", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E1281810](v22, -1, -1);
    MEMORY[0x1E1281810](v21, -1, -1);

    return (*(v10 + 8))(v14, v24);
  }

  else
  {

    return (*(v10 + 8))(v14, v9);
  }
}

uint64_t CoreODILogger.fault(_:isPublic:category:)(uint64_t a1, unint64_t a2, char a3, char *a4)
{
  v9 = sub_1DB09D4B4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x1EEE9AC00](v9, v12);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = &v37 - v17;
  v19 = *a4;
  v21 = *v4;
  v20 = v4[1];
  if (a3)
  {
    v39 = *v4;
    v40 = v20;
    v38 = v19;
    sub_1DB014EC8(&v38, &v37 - v17);

    v22 = sub_1DB09D494();
    v23 = sub_1DB09DB74();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v37 = v9;
      v26 = a1;
      v27 = v25;
      v39 = v25;
      *v24 = 136315394;
      *(v24 + 4) = sub_1DB015E84(v21, v20, &v39);
      *(v24 + 12) = 2082;
      *(v24 + 14) = sub_1DB015E84(v26, a2, &v39);
      _os_log_impl(&dword_1DAF16000, v22, v23, "[%s] %{public}s", v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E1281810](v27, -1, -1);
      MEMORY[0x1E1281810](v24, -1, -1);

      return (*(v10 + 8))(v18, v37);
    }

    v35 = *(v10 + 8);
    v36 = v18;
  }

  else
  {
    v39 = *v4;
    v40 = v20;
    v38 = v19;
    sub_1DB014EC8(&v38, v15);

    v29 = sub_1DB09D494();
    v30 = sub_1DB09DB74();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v37 = v9;
      v33 = a1;
      v34 = v32;
      v39 = v32;
      *v31 = 136315395;
      *(v31 + 4) = sub_1DB015E84(v21, v20, &v39);
      *(v31 + 12) = 2081;
      *(v31 + 14) = sub_1DB015E84(v33, a2, &v39);
      _os_log_impl(&dword_1DAF16000, v29, v30, "[%s] %{private}s", v31, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E1281810](v34, -1, -1);
      MEMORY[0x1E1281810](v31, -1, -1);

      return (*(v10 + 8))(v15, v37);
    }

    v35 = *(v10 + 8);
    v36 = v15;
  }

  return v35(v36, v9);
}

void CoreODILogger.milestone<A>(tag:description:encodableValue:isSensitive:)(char *a1, uint64_t a2, unint64_t a3, uint64_t a4, char a5)
{
  v9 = sub_1DB09D734();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v37 = *a1;
  v13 = *v5;
  v12 = v5[1];
  if ((a5 & 1) == 0 || (v14 = [objc_opt_self() standardUserDefaults], v15 = sub_1DB09D6B4(), v16 = objc_msgSend(v14, sel_BOOLForKey_, v15), v14, v15, v16))
  {
    v17 = sub_1DB09CC54();
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    sub_1DB09CC44();
    v21 = sub_1DB09CC34();
    v23 = v22;

    sub_1DB09D714();
    v24 = sub_1DB09D6E4();
    v26 = v25;
    sub_1DAF40780(v21, v23);
    if (v26)
    {
      if (qword_1EE3019A0 != -1)
      {
        swift_once();
      }

      v27 = sub_1DB09D4B4();
      __swift_project_value_buffer(v27, qword_1EE30A068);

      v28 = sub_1DB09D494();
      v29 = sub_1DB09DB54();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v35 = v24;
        v31 = swift_slowAlloc();
        v39[0] = v31;
        *v30 = 136315906;
        *(v30 + 4) = sub_1DB015E84(v13, v12, v39);
        *(v30 + 12) = 2080;
        LOBYTE(v38[0]) = v37;
        v32 = MilestoneTag.rawValue.getter();
        v33 = sub_1DB015E84(v32, 0xE800000000000000, v39);

        *(v30 + 14) = v33;
        *(v30 + 22) = 2080;
        *(v30 + 24) = sub_1DB015E84(a2, a3, v39);
        *(v30 + 32) = 2080;
        v34 = sub_1DB015E84(v35, v26, v39);

        *(v30 + 34) = v34;
        _os_log_impl(&dword_1DAF16000, v28, v29, "[%s] (%s) %s ::: %s", v30, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x1E1281810](v31, -1, -1);
        MEMORY[0x1E1281810](v30, -1, -1);

        return;
      }
    }

    else
    {
      v39[0] = v13;
      v39[1] = v12;
      sub_1DB09DE44();

      v38[0] = 0xD00000000000000ELL;
      v38[1] = 0x80000001DB0CA230;
      v20 = MilestoneTag.rawValue.getter();
      MEMORY[0x1E127FE90](v20, 0xE800000000000000);

      CoreODILogger.error(_:category:)(0xD000000000000025, 0x80000001DB0CA230, v38);
    }
  }
}

uint64_t sub_1DB015D4C(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v7 = sub_1DB09D4B4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v11) = *a3;
  v14 = v3[1];
  v18 = *v3;
  v13 = v18;
  v19 = v14;
  v17 = v11;
  sub_1DB014EC8(&v17, v12);

  sub_1DB0163B8(v12, v13, v14, a1, a2);

  return (*(v8 + 8))(v12, v7);
}

uint64_t sub_1DB015E84(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1DB015F50(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1DAF409DC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_1DB015F50(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1DB01605C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1DB09DEC4();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_1DB01605C(uint64_t a1, unint64_t a2)
{
  v4 = sub_1DB0160A8(a1, a2);
  sub_1DB0161D8(&unk_1F56C9240);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_1DB0160A8(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1DB07F6C8(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1DB09DEC4();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1DB09D7E4();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1DB07F6C8(v10, 0);
        result = sub_1DB09DE04();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1DB0161D8(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_1DB0162C4(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_1DB0162C4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E768, &qword_1DB0A4690);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void sub_1DB0163B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = [objc_opt_self() standardUserDefaults];
  v10 = sub_1DB09D6B4();
  v11 = [v9 BOOLForKey_];

  if (v11)
  {
    v17[1] = 0xE100000000000000;
    MEMORY[0x1E127FE90](a2, a3);
    MEMORY[0x1E127FE90](8285, 0xE200000000000000);
    MEMORY[0x1E127FE90](a4, a5);
    oslog = sub_1DB09D494();
    v12 = sub_1DB09DB54();
    if (os_log_type_enabled(oslog, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v17[0] = v14;
      *v13 = 136315138;
      v15 = sub_1DB015E84(91, 0xE100000000000000, v17);

      *(v13 + 4) = v15;
      _os_log_impl(&dword_1DAF16000, oslog, v12, "%s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x1E1281810](v14, -1, -1);
      MEMORY[0x1E1281810](v13, -1, -1);
    }

    else
    {
    }
  }
}

unint64_t sub_1DB0165B4()
{
  result = qword_1ECC0F488;
  if (!qword_1ECC0F488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F488);
  }

  return result;
}

void sub_1DB016628(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_opt_self() standardUserDefaults];
  v6 = sub_1DB09D6B4();
  v7 = [v5 BOOLForKey_];

  if (v7)
  {
    sub_1DB09DE44();

    v13[1] = 0x80000001DB0CA260;
    MEMORY[0x1E127FE90](a2, a3);
    oslog = sub_1DB09D494();
    v8 = sub_1DB09DB54();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v13[0] = v10;
      *v9 = 136315138;
      v11 = sub_1DB015E84(0xD000000000000018, 0x80000001DB0CA260, v13);

      *(v9 + 4) = v11;
      _os_log_impl(&dword_1DAF16000, oslog, v8, "%s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x1E1281810](v10, -1, -1);
      MEMORY[0x1E1281810](v9, -1, -1);
    }

    else
    {
    }
  }
}

void sub_1DB016824(uint64_t a1, void *a2)
{
  v3 = [objc_opt_self() standardUserDefaults];
  v4 = sub_1DB09D6B4();
  v5 = [v3 BOOLForKey_];

  if (v5)
  {
    v15[1] = 0xEA00000000002067;
    v6 = [a2 description];
    v7 = sub_1DB09D6C4();
    v9 = v8;

    MEMORY[0x1E127FE90](v7, v9);

    oslog = sub_1DB09D494();
    v10 = sub_1DB09DB54();
    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v15[0] = v12;
      *v11 = 136315138;
      v13 = sub_1DB015E84(0x6E69646F636F6547, 0xEA00000000002067, v15);

      *(v11 + 4) = v13;
      _os_log_impl(&dword_1DAF16000, oslog, v10, "%s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x1E1281810](v12, -1, -1);
      MEMORY[0x1E1281810](v11, -1, -1);
    }

    else
    {
    }
  }
}

id sub_1DB016A3C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC17CoreODIEssentials13DIPWebService_httpSession;
  v3 = *&v0[OBJC_IVAR____TtC17CoreODIEssentials13DIPWebService_httpSession];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_5;
  }

  v5 = Strong;
  if (Strong == v0)
  {

LABEL_5:
    sub_1DAF3523C(&v0[OBJC_IVAR____TtC17CoreODIEssentials13DIPWebService_logger], v25);
    v12 = v26;
    v13 = v27;
    __swift_project_boxed_opaque_existential_1(v25, v26);
    v23 = 0;
    v24 = 0xE000000000000000;
    sub_1DB09DE44();
    MEMORY[0x1E127FE90](0x6553626557504944, 0xEE00206563697672);
    v14 = [v0 description];
    v15 = sub_1DB09D6C4();
    v17 = v16;

    MEMORY[0x1E127FE90](v15, v17);

    MEMORY[0x1E127FE90](0xD000000000000035, 0x80000001DB0CA2F0);
    sub_1DAFD2A1C(&v23);
    Loggable.debug(_:category:)(0, 0xE000000000000000, &v23, v12, v13);

    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    v18 = *&v1[v2];
    v19 = sub_1DAFA9218();
    [v19 invalidateAndCancel];

    v20 = sub_1DAFA9308();
    [v20 invalidateAndCancel];

    goto LABEL_6;
  }

  sub_1DAF3523C(&v0[OBJC_IVAR____TtC17CoreODIEssentials13DIPWebService_logger], v25);
  v6 = v26;
  v7 = v27;
  __swift_project_boxed_opaque_existential_1(v25, v26);
  sub_1DB09DE44();

  v23 = 0xD000000000000011;
  v24 = 0x80000001DB0CA330;
  v8 = [v5 description];
  v9 = sub_1DB09D6C4();
  v11 = v10;

  MEMORY[0x1E127FE90](v9, v11);

  MEMORY[0x1E127FE90](41, 0xE100000000000000);
  (*(v7 + 16))(0xD00000000000001BLL, 0x80000001DB0CA330, &v23, v6, v7);

  __swift_destroy_boxed_opaque_existential_1Tm(v25);
LABEL_6:
  v22.receiver = v1;
  v22.super_class = type metadata accessor for DIPWebService();
  return objc_msgSendSuper2(&v22, sel_dealloc);
}

char *sub_1DB016E04(void *a1, uint64_t *a2)
{
  v3 = v2;
  v6 = sub_1DB09D1D4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v3[OBJC_IVAR____TtC17CoreODIEssentials13DIPWebService_httpSession] = a1;
  v12 = a1;
  sub_1DB09D1C4();
  v13 = sub_1DB09D174();
  v15 = v14;
  (*(v7 + 8))(v11, v6);
  v16 = &v3[OBJC_IVAR____TtC17CoreODIEssentials13DIPWebService_conversationID];
  *v16 = v13;
  v16[1] = v15;
  sub_1DAF3523C(a2, &v3[OBJC_IVAR____TtC17CoreODIEssentials13DIPWebService_logger]);
  v17 = type metadata accessor for DIPWebService();
  v23.receiver = v3;
  v23.super_class = v17;
  v18 = objc_msgSendSuper2(&v23, sel_init);
  v19 = *&v18[OBJC_IVAR____TtC17CoreODIEssentials13DIPWebService_httpSession];
  v20 = v18;
  v21 = v19;
  sub_1DAFA93FC();

  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v20;
}

uint64_t sub_1DB016F7C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v57 = MEMORY[0x1E69E7CC0];
  sub_1DAF5F6CC(0, v1, 0);
  v2 = v57;
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  result = sub_1DB09DD04();
  if (result < 0 || (v7 = result, result >= 1 << *(v3 + 32)))
  {
LABEL_25:
    __break(1u);
  }

  else
  {
    v58 = *(v3 + 36);
    v37 = v3 + 64;
    v35 = v3 + 72;
    v36 = v1;
    v8 = 1;
    while (1)
    {
      v9 = v7 >> 6;
      if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        break;
      }

      if (v58 != *(v3 + 36))
      {
        goto LABEL_27;
      }

      v38 = v8;
      v10 = *(*(v3 + 48) + v7);
      v11 = (*(v3 + 56) + 112 * v7);
      v13 = v11[1];
      v12 = v11[2];
      v48[0] = *v11;
      v48[1] = v13;
      v48[2] = v12;
      v14 = v11[6];
      v16 = v11[3];
      v15 = v11[4];
      v48[5] = v11[5];
      v48[6] = v14;
      v48[3] = v16;
      v48[4] = v15;
      v17 = v11[5];
      *&v47[71] = v11[4];
      *&v47[87] = v17;
      *&v47[103] = v11[6];
      v18 = v11[1];
      *&v47[7] = *v11;
      *&v47[23] = v18;
      v19 = v11[3];
      *&v47[39] = v11[2];
      *&v47[55] = v19;
      v49 = v10;
      v54 = *&v47[64];
      v55 = *&v47[80];
      *v56 = *&v47[96];
      *&v56[15] = *&v47[111];
      v50 = *v47;
      v51 = *&v47[16];
      v52 = *&v47[32];
      v53 = *&v47[48];
      v44 = *&v47[71];
      v45 = *&v47[87];
      v46 = *&v47[103];
      v40 = *&v47[7];
      v41 = v18;
      v42 = *&v47[39];
      v43 = v19;
      sub_1DAF406C8(v48, v39);
      v20 = sub_1DB017448();
      result = sub_1DAF40AEC(&v49, &qword_1ECC0F4F0, &qword_1DB0B2718);
      v57 = v2;
      v21 = v3;
      v23 = *(v2 + 16);
      v22 = *(v2 + 24);
      if (v23 >= v22 >> 1)
      {
        result = sub_1DAF5F6CC((v22 > 1), v23 + 1, 1);
        v2 = v57;
      }

      v24 = v49;
      *(v2 + 16) = v23 + 1;
      v25 = v2 + 16 * v23;
      *(v25 + 32) = v24;
      *(v25 + 40) = v20;
      v26 = 1 << *(v21 + 32);
      if (v7 >= v26)
      {
        goto LABEL_28;
      }

      v4 = v37;
      v27 = *(v37 + 8 * v9);
      if ((v27 & (1 << v7)) == 0)
      {
        goto LABEL_29;
      }

      v3 = v21;
      if (v58 != *(v21 + 36))
      {
        goto LABEL_30;
      }

      v28 = v27 & (-2 << (v7 & 0x3F));
      if (v28)
      {
        v7 = __clz(__rbit64(v28)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v29 = v2;
        v30 = v9 << 6;
        v31 = v9 + 1;
        v32 = (v35 + 8 * v9);
        while (v31 < (v26 + 63) >> 6)
        {
          v34 = *v32++;
          v33 = v34;
          v30 += 64;
          ++v31;
          if (v34)
          {
            result = sub_1DAFBD7C8(v7, v58, 0);
            v7 = __clz(__rbit64(v33)) + v30;
            goto LABEL_19;
          }
        }

        result = sub_1DAFBD7C8(v7, v58, 0);
        v7 = v26;
LABEL_19:
        v2 = v29;
      }

      if (v38 == v36)
      {
        return v2;
      }

      if ((v7 & 0x8000000000000000) == 0)
      {
        v8 = v38 + 1;
        if (v7 < 1 << *(v3 + 32))
        {
          continue;
        }
      }

      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

id sub_1DB017448()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[7];
  v8 = v0[9];
  v25 = v0[6];
  v26 = v0[8];
  v27 = v0[10];
  v28 = v0[12];
  v29 = v0[11];
  v30 = v0[13];
  v9 = [objc_allocWithZone(MEMORY[0x1E695CF30]) init];
  if (v2)
  {
    sub_1DB017694(v1, v2);
    if (v10)
    {
      v11 = sub_1DB09D6B4();

      [v9 setStreet_];
    }
  }

  if (v4)
  {
    sub_1DB017694(v3, v4);
    if (v12)
    {
      v13 = sub_1DB09D6B4();

      [v9 setSubLocality_];
    }
  }

  if (v5)
  {
    sub_1DB017694(v6, v5);
    if (v14)
    {
      v15 = sub_1DB09D6B4();

      [v9 setCity_];
    }
  }

  if (v7)
  {
    sub_1DB017694(v25, v7);
    if (v16)
    {
      v17 = sub_1DB09D6B4();

      [v9 setState_];
    }
  }

  if (v8)
  {
    sub_1DB017694(v26, v8);
    if (v18)
    {
      v19 = sub_1DB09D6B4();

      [v9 setPostalCode_];
    }
  }

  if (v29)
  {
    sub_1DB017694(v27, v29);
    if (v20)
    {
      v21 = sub_1DB09D6B4();

      [v9 setCountry_];
    }
  }

  if (v30)
  {
    sub_1DB017694(v28, v30);
    if (v22)
    {
      v23 = sub_1DB09D6B4();

      [v9 setISOCountryCode_];
    }
  }

  return v9;
}

uint64_t sub_1DB017694(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DB09CC74();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[0] = a1;
  v15[1] = a2;
  sub_1DB09CC64();
  sub_1DAF9C5EC();
  v10 = sub_1DB09DC94();
  v12 = v11;
  (*(v5 + 8))(v9, v4);
  v13 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v13 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (!v13)
  {

    return 0;
  }

  return v10;
}

uint64_t GeoCoderAddress.hash(into:)()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[5];
  v11 = v0[4];
  v12 = v0[6];
  v5 = v0[7];
  v4 = v0[8];
  v6 = v0[9];
  v13 = v0[10];
  v7 = v0[11];
  v14 = v0[12];
  v8 = v0[13];
  if (v0[1])
  {
    v9 = *v0;
    sub_1DB09E3C4();
    sub_1DB09D794();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1DB09E3C4();
    if (v2)
    {
LABEL_3:
      sub_1DB09E3C4();
      sub_1DB09D794();
      if (v3)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  sub_1DB09E3C4();
  if (v3)
  {
LABEL_4:
    sub_1DB09E3C4();
    sub_1DB09D794();
    if (v5)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  sub_1DB09E3C4();
  if (v5)
  {
LABEL_5:
    sub_1DB09E3C4();
    sub_1DB09D794();
    if (v6)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  sub_1DB09E3C4();
  if (v6)
  {
LABEL_6:
    sub_1DB09E3C4();
    sub_1DB09D794();
    if (v7)
    {
      goto LABEL_7;
    }

LABEL_16:
    sub_1DB09E3C4();
    if (v8)
    {
      goto LABEL_8;
    }

    return sub_1DB09E3C4();
  }

LABEL_15:
  sub_1DB09E3C4();
  if (!v7)
  {
    goto LABEL_16;
  }

LABEL_7:
  sub_1DB09E3C4();
  sub_1DB09D794();
  if (!v8)
  {
    return sub_1DB09E3C4();
  }

LABEL_8:
  sub_1DB09E3C4();

  return sub_1DB09D794();
}

uint64_t GeoCoderAddress.hashValue.getter()
{
  sub_1DB09E3A4();
  GeoCoderAddress.hash(into:)();
  return sub_1DB09E3E4();
}

uint64_t sub_1DB0179B8()
{
  sub_1DB09E3A4();
  GeoCoderAddress.hash(into:)();
  return sub_1DB09E3E4();
}

uint64_t sub_1DB0179FC()
{
  sub_1DB09E3A4();
  GeoCoderAddress.hash(into:)();
  return sub_1DB09E3E4();
}

uint64_t sub_1DB017A3C()
{
  type metadata accessor for GeoCoder.SharedCoordinateMap();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  *(v0 + 112) = MEMORY[0x1E69E7CC8];
  qword_1ECC0F4A8 = v0;
  return result;
}

__n128 sub_1DB017A88@<Q0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 184);
  *a1 = *(v1 + 168);
  *(a1 + 16) = v3;
  result = *(v1 + 200);
  v5 = *(v1 + 216);
  *(a1 + 32) = result;
  *(a1 + 48) = v5;
  return result;
}

uint64_t GeoCoder.__allocating_init()()
{
  v0 = swift_allocObject();
  GeoCoder.init()();
  return v0;
}

uint64_t GeoCoder.init()()
{
  swift_defaultActor_initialize();
  *(v0 + 152) = 0;
  *(v0 + 160) = MEMORY[0x1E69E7CC0];
  *(v0 + 168) = 0u;
  *(v0 + 184) = 0u;
  *(v0 + 200) = 0u;
  *(v0 + 216) = 0u;
  if (qword_1EE301828 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE301830;
  *(v0 + 136) = type metadata accessor for DIPODNHelper();
  *(v0 + 144) = &off_1F56C8200;
  *(v0 + 112) = v1;

  return v0;
}

uint64_t sub_1DB017BB8(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = type metadata accessor for ODISignpost();
  v2[10] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB017C58, v1, 0);
}

uint64_t sub_1DB017C58()
{
  v31 = v0;
  if (qword_1ECC0E058 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = v0[11];
  v4 = qword_1ECC25C08;
  v3 = unk_1ECC25C10;
  v5 = byte_1ECC25C18;
  v6 = qword_1ECC25C20;
  v7 = byte_1ECC25C28;
  *(v2 + 32) = "enableTelemetry=YES";
  *(v2 + 40) = 19;
  *(v2 + 48) = 2;
  *v2 = v4;
  *(v2 + 8) = v3;
  *(v2 + 16) = v5;
  *(v2 + 24) = v6;
  v8 = *(v1 + 28);
  v9 = v6;
  sub_1DB09D474();
  sub_1DB09DC14();
  if (v7 == 1)
  {
    sub_1DB09D454();
  }

  else
  {
    sub_1DB09D464();
  }

  v10 = v0[8];
  sub_1DAF5F604(v0[11], v0[12]);
  v11 = sub_1DB016F7C(v10);
  if (*(v11 + 16))
  {
    v12 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E258, &qword_1DB0B2710);
    v13 = sub_1DB09DFF4();
    v11 = v12;
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC8];
  }

  v30 = v13;
  sub_1DB01F8E0(v11, 1, &v30);
  v0[13] = v30;

  sub_1DB05673C(v14);
  v16 = v15;
  v0[14] = v15;
  if ((v15 & 0xC000000000000001) != 0)
  {
    if (sub_1DB09DD44())
    {
LABEL_11:
      v17 = swift_task_alloc();
      v0[15] = v17;
      *v17 = v0;
      v17[1] = sub_1DB017FA8;
      v18 = v0[9];

      return sub_1DB018720(v16);
    }
  }

  else if (*(v15 + 16))
  {
    goto LABEL_11;
  }

  v20 = sub_1DAF3FA54(MEMORY[0x1E69E7CC0]);
  v22 = v0[11];
  v21 = v0[12];
  v23 = v0[10];
  sub_1DB09DC04();
  v24 = *(v21 + 24);
  v25 = *v21;
  v26 = *(v21 + 8);
  v27 = *(v23 + 28);
  v28 = *(v21 + 16);
  sub_1DB09D464();
  sub_1DAF60868(v21);

  v29 = v0[1];

  return v29(v20);
}

uint64_t sub_1DB017FA8()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 72);
  v5 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DB0180D4, v3, 0);
}

uint64_t sub_1DB0180D4()
{
  v1 = *(v0 + 104);
  v2 = *(v1 + 32);
  *(v0 + 168) = v2;
  v3 = -1;
  v4 = -1 << v2;
  v5 = *(v1 + 64);
  if (-v4 < 64)
  {
    v3 = ~(-1 << -v4);
  }

  *(v0 + 128) = MEMORY[0x1E69E7CC8];
  v6 = v3 & v5;
  if (v6)
  {
    v7 = 0;
LABEL_8:
    *(v0 + 136) = v6;
    *(v0 + 144) = v7;
    v10 = __clz(__rbit64(v6)) | (v7 << 6);
    *(v0 + 169) = *(*(v1 + 48) + v10);
    v11 = *(*(v1 + 56) + 8 * v10);
    *(v0 + 152) = v11;
    v12 = v11;
    v13 = swift_task_alloc();
    *(v0 + 160) = v13;
    *v13 = v0;
    v13[1] = sub_1DB01829C;
    v14 = *(v0 + 72);

    return sub_1DB01E7EC(v12);
  }

  else
  {
    v8 = 0;
    v9 = ((63 - v4) >> 6) - 1;
    while (v9 != v8)
    {
      v7 = v8 + 1;
      v6 = *(v1 + 8 * v8++ + 72);
      if (v6)
      {
        goto LABEL_8;
      }
    }

    v16 = *(v0 + 128);
    v18 = *(v0 + 88);
    v17 = *(v0 + 96);
    v19 = *(v0 + 80);
    sub_1DB09DC04();
    v20 = *(v17 + 24);
    v21 = *v17;
    v22 = *(v17 + 8);
    v23 = *(v19 + 28);
    v24 = *(v17 + 16);
    sub_1DB09D464();
    sub_1DAF60868(v17);

    v25 = *(v0 + 8);

    return v25(v16);
  }
}

uint64_t sub_1DB01829C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *v3;
  v5 = *v3;
  *(v5 + 40) = a3;
  *(v5 + 24) = a1;
  *(v5 + 32) = a2;
  *(v5 + 16) = v3;
  v6 = *(v4 + 160);
  v7 = *(v4 + 72);
  v9 = *v3;
  *(v5 + 170) = a3;

  return MEMORY[0x1EEE6DFA0](sub_1DB0183BC, v7, 0);
}

void sub_1DB0183BC()
{
  if (*(v1 + 170))
  {
    v3 = (v1 + 128);
    v2 = *(v1 + 128);
    v4 = sub_1DAF35670(*(v1 + 169));
    if ((v5 & 1) == 0)
    {

      v21 = *(v1 + 144);
      v22 = (*(v1 + 136) - 1) & *(v1 + 136);
      if (!v22)
      {
        goto LABEL_12;
      }

LABEL_23:
      v24 = *(v1 + 104);
LABEL_24:
      *(v1 + 136) = v22;
      *(v1 + 144) = v21;
      v31 = __clz(__rbit64(v22)) | (v21 << 6);
      *(v1 + 169) = *(*(v24 + 48) + v31);
      v32 = *(*(v24 + 56) + 8 * v31);
      *(v1 + 152) = v32;
      v33 = v32;
      v34 = swift_task_alloc();
      *(v1 + 160) = v34;
      *v34 = v1;
      v34[1] = sub_1DB01829C;
      v35 = *(v1 + 72);

      sub_1DB01E7EC(v33);
      return;
    }

    v0 = v4;
    v2 = (v1 + 48);
    v6 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + 48) = v6;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_4;
    }

    goto LABEL_32;
  }

  v10 = *(v1 + 24);
  v9 = *(v1 + 32);
  v2 = *(v1 + 128);
  v0 = *(v1 + 169);
  v11 = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 56) = v2;
  v12 = sub_1DAF35670(v0);
  v14 = v2[2];
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    sub_1DAF3D6AC();
    v3 = v2;
LABEL_4:
    v2 = *v3;
    v8 = *(v1 + 152);
    sub_1DB080DAC(v0, *v3);

    goto LABEL_22;
  }

  v0 = v13;
  if (*(*(v1 + 128) + 24) >= v17)
  {
    if ((v11 & 1) == 0)
    {
      v46 = v12;
      sub_1DAF3D6AC();
      v12 = v46;
    }
  }

  else
  {
    v18 = *(v1 + 169);
    sub_1DAF3A09C(v17, v11);
    v19 = *(v1 + 56);
    v12 = sub_1DAF35670(v18);
    if ((v0 & 1) != (v20 & 1))
    {

      sub_1DB09E2E4();
      return;
    }
  }

  v2 = *(v1 + 56);
  v25 = *(v1 + 152);
  if (v0)
  {
    v26 = (v2[7] + 16 * v12);
    *v26 = v10;
    v26[1] = v9;
  }

  else
  {
    v27 = *(v1 + 169);
    v2[(v12 >> 6) + 8] |= 1 << v12;
    *(v2[6] + v12) = v27;
    v28 = (v2[7] + 16 * v12);
    *v28 = v10;
    v28[1] = v9;

    v29 = v2[2];
    v16 = __OFADD__(v29, 1);
    v30 = v29 + 1;
    if (v16)
    {
      __break(1u);
      return;
    }

    v2[2] = v30;
  }

LABEL_22:
  v21 = *(v1 + 144);
  v22 = (*(v1 + 136) - 1) & *(v1 + 136);
  *(v1 + 128) = v2;
  if (v22)
  {
    goto LABEL_23;
  }

  while (1)
  {
LABEL_12:
    v23 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
      goto LABEL_31;
    }

    v24 = *(v1 + 104);
    if (v23 >= (((1 << *(v1 + 168)) + 63) >> 6))
    {
      break;
    }

    v22 = *(v24 + 8 * v23 + 64);
    ++v21;
    if (v22)
    {
      v21 = v23;
      goto LABEL_24;
    }
  }

  v36 = *(v1 + 128);
  v38 = *(v1 + 88);
  v37 = *(v1 + 96);
  v39 = *(v1 + 80);
  sub_1DB09DC04();
  v40 = *(v37 + 24);
  v41 = *v37;
  v42 = *(v37 + 8);
  v43 = *(v39 + 28);
  v44 = *(v37 + 16);
  sub_1DB09D464();
  sub_1DAF60868(v37);

  v45 = *(v1 + 8);

  v45(v36);
}

uint64_t sub_1DB018720(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E6F8, &qword_1DB0AF5C0);
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB0187EC, v1, 0);
}

uint64_t sub_1DB0187EC()
{
  v1 = *(v0 + 24);
  v2 = sub_1DB0222F8();
  v3 = *(MEMORY[0x1E69E88D0] + 4);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_1DB0188D4;
  v5 = *(v0 + 24);
  v6 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DDE0](v4, v1, v2, 0xD000000000000020, 0x80000001DB0CA570, sub_1DB022834, v5, v6);
}

uint64_t sub_1DB0188D4()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 24);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DB0189E4, v2, 0);
}

uint64_t sub_1DB0189E4()
{
  *(v0[3] + 152) = 1;
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_1DB018A84;
  v2 = v0[2];
  v3 = v0[3];

  return sub_1DB018E40(v2);
}

uint64_t sub_1DB018A84()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 24);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DB018B94, v2, 0);
}

uint64_t sub_1DB018B94()
{
  v1 = v0[3];
  v2 = *(v1 + 160);
  *(v1 + 152) = 0;
  if (*(v2 + 16))
  {
    v4 = v0[5];
    v3 = v0[6];
    v5 = v0[4];
    (*(v4 + 16))(v3, v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v5);
    sub_1DB0226F4(0, 1);
    sub_1DB09D9B4();
    (*(v4 + 8))(v3, v5);
  }

  v6 = v0[6];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1DB018C74(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E6F8, &qword_1DB0AF5C0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v15 - v8;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (*(a2 + 152) != 1)
  {
    return sub_1DB09D9B4();
  }

  (*(v5 + 16))(v9, a1, v4);
  v10 = *(a2 + 160);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 160) = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = sub_1DAF736D4(0, v10[2] + 1, 1, v10);
    *(a2 + 160) = v10;
  }

  v13 = v10[2];
  v12 = v10[3];
  if (v13 >= v12 >> 1)
  {
    v10 = sub_1DAF736D4(v12 > 1, v13 + 1, 1, v10);
  }

  v10[2] = v13 + 1;
  result = (*(v5 + 32))(v10 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v13, v9, v4);
  *(a2 + 160) = v10;
  return result;
}

uint64_t sub_1DB018E40(uint64_t a1)
{
  v2[48] = a1;
  v2[49] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E510, &qword_1DB0A2780);
  v2[50] = v3;
  v4 = *(v3 - 8);
  v2[51] = v4;
  v5 = *(v4 + 64) + 15;
  v2[52] = swift_task_alloc();
  v6 = sub_1DB09D154();
  v2[53] = v6;
  v7 = *(v6 - 8);
  v2[54] = v7;
  v8 = *(v7 + 64) + 15;
  v2[55] = swift_task_alloc();
  v2[56] = swift_task_alloc();
  v2[57] = swift_task_alloc();
  v2[58] = swift_task_alloc();
  v2[59] = swift_task_alloc();
  v9 = type metadata accessor for ODISignpost();
  v2[60] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v2[61] = swift_task_alloc();
  v2[62] = swift_task_alloc();
  v2[63] = swift_task_alloc();
  v2[64] = swift_task_alloc();
  v2[65] = swift_task_alloc();
  v2[66] = swift_task_alloc();
  v2[67] = swift_task_alloc();
  v2[68] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB01901C, v1, 0);
}

uint64_t sub_1DB01901C()
{
  if (qword_1ECC0E028 != -1)
  {
    swift_once();
  }

  v1 = v0[67];
  v2 = v0[60];
  v4 = qword_1ECC25B18;
  v3 = unk_1ECC25B20;
  v5 = byte_1ECC25B28;
  v6 = qword_1ECC25B30;
  v7 = byte_1ECC25B38;
  *(v1 + 32) = "enableTelemetry=YES";
  *(v1 + 40) = 19;
  *(v1 + 48) = 2;
  *v1 = v4;
  *(v1 + 8) = v3;
  *(v1 + 16) = v5;
  *(v1 + 24) = v6;
  v8 = *(v2 + 28);
  v9 = v6;
  sub_1DB09D474();
  sub_1DB09DC14();
  if (v7 == 1)
  {
    sub_1DB09D454();
  }

  else
  {
    sub_1DB09D464();
  }

  v10 = v0[48];
  sub_1DAF5F604(v0[67], v0[68]);
  v11 = v0[48];
  if ((v10 & 0xC000000000000001) != 0)
  {
    if (v11 < 0)
    {
      v12 = v0[48];
    }

    v13 = sub_1DB09DD44();
  }

  else
  {
    v13 = *(v11 + 16);
  }

  v14 = v0[49];
  swift_beginAccess();
  v15 = *(v14 + 168);
  v16 = __OFADD__(v15, v13);
  v17 = v15 + v13;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v14 + 168) = v17;
    if (qword_1ECC0E030 == -1)
    {
      goto LABEL_13;
    }
  }

  swift_once();
LABEL_13:
  v18 = v0[65];
  v20 = qword_1ECC25B40;
  v19 = *algn_1ECC25B48;
  v21 = byte_1ECC25B50;
  v22 = qword_1ECC25B58;
  v23 = byte_1ECC25B60;
  *(v18 + 40) = 19;
  *(v18 + 48) = 2;
  *v18 = v20;
  *(v18 + 8) = v19;
  *(v18 + 16) = v21;
  *(v18 + 24) = v22;
  *(v18 + 32) = "enableTelemetry=YES";
  v24 = *(v2 + 28);
  v25 = v22;
  sub_1DB09D474();
  sub_1DB09DC14();
  if (v23 == 1)
  {
    sub_1DB09D454();
  }

  else
  {
    sub_1DB09D464();
  }

  sub_1DAF5F604(v0[65], v0[66]);
  if (qword_1ECC0E110 != -1)
  {
    swift_once();
  }

  v26 = qword_1ECC0F4A8;
  v0[69] = qword_1ECC0F4A8;

  return MEMORY[0x1EEE6DFA0](sub_1DB019338, v26, 0);
}

uint64_t sub_1DB019338()
{
  v1 = v0[69];
  v2 = v0[48] & 0xC000000000000001;
  swift_beginAccess();
  v3 = *(v1 + 112);
  v4 = v0[48];

  if (v2)
  {
    v5 = sub_1DB09DD44();
    v6 = swift_unknownObjectRetain();
    v4 = sub_1DB01FC5C(v6, v5);
  }

  else
  {
  }

  v7 = v0[49];
  v0[70] = sub_1DB020D88(v3, v4);

  return MEMORY[0x1EEE6DFA0](sub_1DB019430, v7, 0);
}

uint64_t sub_1DB019430()
{
  if (qword_1EE301DC0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 560);
  v2 = *(v0 + 384);
  v3 = sub_1DB09D4B4();
  *(v0 + 568) = __swift_project_value_buffer(v3, qword_1EE30A128);

  v4 = sub_1DB09D494();
  v5 = sub_1DB09DB54();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 560);
  if (v6)
  {
    v8 = swift_slowAlloc();
    *v8 = 134349312;
    if ((v7 & 0xC000000000000001) != 0)
    {
      v9 = sub_1DB09DD44();
      v10 = *(v0 + 560);
    }

    else
    {
      v9 = *(*(v0 + 560) + 16);
    }

    v12 = *(v0 + 384) & 0xC000000000000001;
    *(v8 + 4) = v9;

    *(v8 + 12) = 2050;
    if (v12)
    {
      v13 = sub_1DB09DD44();
      v14 = *(v0 + 384);
    }

    else
    {
      v13 = *(*(v0 + 384) + 16);
    }

    *(v8 + 14) = v13;

    _os_log_impl(&dword_1DAF16000, v4, v5, "fillCoordinateMap - %{public}ld of %{public}ld addresses need looking up", v8, 0x16u);
    MEMORY[0x1E1281810](v8, -1, -1);
  }

  else
  {
    v11 = *(v0 + 384);
  }

  v15 = *(v0 + 528);
  v16 = *(v0 + 480);
  v17 = *(v0 + 384) & 0xC000000000000001;
  sub_1DB09DC04();
  v18 = v15[3];
  v19 = *v15;
  v20 = v15[1];
  v21 = *(v16 + 28);
  v22 = *(v15 + 16);
  sub_1DB09D464();
  v23 = *(v0 + 384);
  if (v17)
  {
    if (v23 < 0)
    {
      v24 = *(v0 + 384);
    }

    v25 = sub_1DB09DD44();
  }

  else
  {
    v25 = *(v23 + 16);
  }

  v26 = *(v0 + 560);
  v27 = v26 & 0xC000000000000001;
  if ((v26 & 0xC000000000000001) != 0)
  {
    v28 = sub_1DB09DD44();
    v29 = v25 - v28;
    if (!__OFSUB__(v25, v28))
    {
      goto LABEL_19;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v28 = *(v26 + 16);
  v29 = v25 - v28;
  if (__OFSUB__(v25, v28))
  {
    goto LABEL_25;
  }

LABEL_19:
  v30 = *(v0 + 392);
  v31 = *(v30 + 176);
  v32 = __OFADD__(v31, v29);
  v33 = v31 + v29;
  if (v32)
  {
    __break(1u);
    goto LABEL_38;
  }

  *(v30 + 176) = v33;
  v28 = *(v0 + 560);
  if (v27)
  {
    v34 = sub_1DB09DD44();
    v35 = *(v0 + 560);
    if (v34)
    {
      v36 = sub_1DB09DD44();
      goto LABEL_27;
    }

    goto LABEL_30;
  }

LABEL_26:
  v36 = *(v28 + 16);
  if (v36)
  {
LABEL_27:
    *(v0 + 576) = v36;
    *(v0 + 584) = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
    if (qword_1ECC0E038 == -1)
    {
LABEL_28:
      v37 = *(v0 + 504);
      v38 = *(v0 + 480);
      v40 = qword_1ECC25B68;
      v39 = unk_1ECC25B70;
      v41 = byte_1ECC25B78;
      v42 = qword_1ECC25B80;
      v43 = byte_1ECC25B88;
      *(v37 + 32) = "enableTelemetry=YES";
      *(v37 + 40) = 19;
      *(v37 + 48) = 2;
      *v37 = v40;
      *(v37 + 8) = v39;
      *(v37 + 16) = v41;
      *(v37 + 24) = v42;
      v44 = *(v38 + 28);
      v45 = v42;
      sub_1DB09D474();
      sub_1DB09DC14();
      if (v43 == 1)
      {
        sub_1DB09D454();
      }

      else
      {
        sub_1DB09D464();
      }

      v62 = *(v0 + 560);
      v63 = *(v0 + 392);
      sub_1DAF5F604(*(v0 + 504), *(v0 + 512));
      sub_1DAF3523C(v63 + 112, v0 + 64);
      sub_1DAF3523C(v0 + 64, v0 + 104);
      v64 = swift_allocObject();
      *(v0 + 592) = v64;
      sub_1DAF332B8((v0 + 104), v64 + 16);
      *(v64 + 56) = v62;

      return MEMORY[0x1EEE6DFA0](sub_1DB019964, 0, 0);
    }

LABEL_38:
    swift_once();
    goto LABEL_28;
  }

LABEL_30:
  sub_1DAF60868(*(v0 + 528));

  v46 = *(v0 + 544);
  v47 = *(v0 + 536);
  v48 = *(v0 + 528);
  v49 = *(v0 + 520);
  v51 = *(v0 + 504);
  v50 = *(v0 + 512);
  v52 = *(v0 + 488);
  v53 = *(v0 + 496);
  v54 = *(v0 + 480);
  v65 = *(v0 + 472);
  v66 = *(v0 + 464);
  v67 = *(v0 + 456);
  v68 = *(v0 + 448);
  v69 = *(v0 + 440);
  v70 = *(v0 + 416);
  sub_1DB09DC04();
  v55 = *(v46 + 24);
  v56 = *v46;
  v57 = *(v46 + 8);
  v58 = *(v54 + 28);
  v59 = *(v46 + 16);
  sub_1DB09D464();
  sub_1DAF60868(v46);

  v60 = *(v0 + 8);

  return v60();
}

uint64_t sub_1DB019964()
{
  v1 = v0[74];
  v2 = swift_task_alloc();
  v0[75] = v2;
  v2[2] = 100000000;
  v2[3] = &unk_1DB0B2688;
  v2[4] = v1;
  v2[5] = &unk_1DB0B2690;
  v2[6] = 0;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[76] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F4C0, &unk_1DB0B26A8);
  *v4 = v0;
  v4[1] = sub_1DB019A9C;

  return MEMORY[0x1EEE6DE38](v0 + 45, 0, 0, 0xD000000000000038, 0x80000001DB0C29C0, sub_1DB022410, v2, v5);
}

uint64_t sub_1DB019A9C()
{
  v2 = *v1;
  v3 = *(*v1 + 608);
  v10 = *v1;
  *(*v1 + 616) = v0;

  if (v0)
  {
    v4 = sub_1DB01A484;
    v5 = 0;
  }

  else
  {
    v6 = v2[75];
    v7 = v2[74];
    v8 = v2[49];

    v2[78] = v2[45];
    v4 = sub_1DB019BE0;
    v5 = v8;
  }

  return MEMORY[0x1EEE6DFA0](v4, v5, 0);
}

uint64_t sub_1DB019BE0()
{
  v1 = *(v0 + 624);
  v2 = *(v0 + 568);

  v3 = sub_1DB09D494();
  v4 = sub_1DB09DB54();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 624);
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 134349056;
    *(v7 + 4) = *(v6 + 16);

    _os_log_impl(&dword_1DAF16000, v3, v4, "%{public}ld results from asd cache", v7, 0xCu);
    MEMORY[0x1E1281810](v7, -1, -1);
  }

  else
  {
    v8 = *(v0 + 624);
  }

  v9 = *(v0 + 624);
  *(v0 + 632) = v9;
  v10 = *(v0 + 568);
  v11 = *(v0 + 560);
  v13 = *(v0 + 464);
  v12 = *(v0 + 472);
  v14 = *(v0 + 456);
  v15 = *(v0 + 424);
  v16 = *(v0 + 432);

  *(v0 + 640) = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  *(v0 + 368) = v11;
  sub_1DB09D134();
  sub_1DB09D0E4();
  v17 = *(v16 + 8);
  *(v0 + 648) = v17;
  *(v0 + 656) = (v16 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v17(v13, v15);
  sub_1DB09D134();
  sub_1DB09D0E4();
  v17(v13, v15);

  v18 = sub_1DB09D494();
  v19 = sub_1DB09DB54();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = *(v0 + 576);
    v21 = swift_slowAlloc();
    *v21 = 134349312;
    v22 = *(v9 + 16);

    *(v21 + 4) = v22;

    *(v21 + 12) = 2050;
    *(v21 + 14) = v20;
    _os_log_impl(&dword_1DAF16000, v18, v19, "fillCoordinateMap - %{public}ld of %{public}ld found in asd cache", v21, 0x16u);
    MEMORY[0x1E1281810](v21, -1, -1);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  v23 = *(v9 + 16);
  *(v0 + 664) = v23;
  if (v23)
  {
    v24 = *(v0 + 432);
    v25 = *(v0 + 408);
    v26 = *(v0 + 416);
    v27 = *(*(v0 + 400) + 64);
    *(v0 + 792) = v27;
    v28 = *(v25 + 80);
    *(v0 + 796) = v28;
    *(v0 + 672) = 0u;
    *(v0 + 688) = 0u;
    *(v0 + 704) = 0u;
    *(v0 + 720) = 0;
    v29 = *(v0 + 632);
    if (*(v29 + 16))
    {
      v30 = *(v0 + 448);
      v31 = *(v0 + 424);
      sub_1DAF40A84(v29 + ((v28 + 32) & ~v28), v26, &qword_1ECC0E510, &qword_1DB0A2780);
      *(v0 + 728) = *v26;
      v32 = *(v26 + 1);
      *(v0 + 736) = v32;
      (*(v24 + 32))(v30, &v26[v27], v31);
      if (v32)
      {
        [v32 coordinate];
      }

      else
      {
        v33 = 0;
        v34 = 0;
      }

      *(v0 + 752) = v34;
      *(v0 + 744) = v33;
      v59 = *(v0 + 552);

      return MEMORY[0x1EEE6DFA0](sub_1DB01AD74, v59, 0);
    }

    __break(1u);
    goto LABEL_30;
  }

  v35 = *(v0 + 640);
  v36 = *(v0 + 632);
  v37 = *(v0 + 584);
  v38 = *(v0 + 576);
  v39 = *(v0 + 512);
  v40 = *(v0 + 480);

  v41 = sub_1DB09D6B4();
  v42 = swift_allocObject();
  v42[2] = 0;
  v42[3] = v38;
  v42[4] = 0;
  v42[5] = 0;
  v42[6] = v35;
  v42[7] = v37;
  *(v0 + 48) = sub_1DB0222D0;
  *(v0 + 56) = v42;
  *(v0 + 16) = MEMORY[0x1E69E9820];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_1DAFD2A28;
  *(v0 + 40) = &block_descriptor_13;
  v43 = _Block_copy((v0 + 16));
  v44 = *(v0 + 56);

  AnalyticsSendEventLazy();
  _Block_release(v43);

  sub_1DB09DC04();
  v45 = v39[3];
  v46 = *v39;
  v47 = v39[1];
  v48 = *(v40 + 28);
  v49 = *(v39 + 16);
  sub_1DB09D464();
  if (qword_1ECC0E040 != -1)
  {
LABEL_30:
    swift_once();
  }

  v87 = (v0 + 368);
  v50 = *(v0 + 480);
  v51 = *(v0 + 488);
  v52 = qword_1ECC25B90;
  v53 = *algn_1ECC25B98;
  v54 = byte_1ECC25BA0;
  v55 = qword_1ECC25BA8;
  v56 = byte_1ECC25BB0;
  *(v51 + 32) = "enableTelemetry=YES";
  *(v51 + 40) = 19;
  *(v51 + 48) = 2;
  *v51 = v52;
  *(v51 + 8) = v53;
  *(v51 + 16) = v54;
  *(v51 + 24) = v55;
  v57 = *(v50 + 28);
  v58 = v55;
  sub_1DB09D474();
  sub_1DB09DC14();
  if (v56 == 1)
  {
    sub_1DB09D454();
  }

  else
  {
    sub_1DB09D464();
  }

  v60 = *(v0 + 568);
  sub_1DAF5F604(*(v0 + 488), *(v0 + 496));
  v61 = sub_1DB09D494();
  v62 = sub_1DB09DB54();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    *v63 = 134349056;
    swift_beginAccess();
    v64 = *v87;
    if ((*v87 & 0xC000000000000001) != 0)
    {
      if (v64 < 0)
      {
        v65 = *v87;
      }

      v66 = *v87;

      v67 = sub_1DB09DD44();
    }

    else
    {
      v67 = *(v64 + 16);
    }

    *(v63 + 4) = v67;
    _os_log_impl(&dword_1DAF16000, v61, v62, "fillCoordinateMap - Attempting to geocode %{public}ld addresses", v63, 0xCu);
    MEMORY[0x1E1281810](v63, -1, -1);
  }

  v68 = *(v0 + 392);

  sub_1DAF3523C(v0 + 64, v0 + 144);
  v69 = *(v0 + 168);
  v70 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 144, v69);
  v71 = *(v69 - 8);
  v72 = *(v71 + 64) + 15;
  v73 = swift_task_alloc();
  (*(v71 + 16))(v73, v70, v69);
  v74 = *v73;
  v75 = type metadata accessor for DIPODNHelper();
  *(v0 + 208) = v75;
  *(v0 + 216) = &off_1F56C8200;
  *(v0 + 184) = v74;
  type metadata accessor for GeoCoder.GeocodeCompletionState();
  v76 = swift_allocObject();
  *(v0 + 760) = v76;
  v77 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 184, v75);
  v78 = *(v75 - 8);
  v79 = *(v78 + 64) + 15;
  v80 = swift_task_alloc();
  (*(v78 + 16))(v80, v77, v75);
  v81 = *v80;
  *(v0 + 248) = v75;
  *(v0 + 256) = &off_1F56C8200;
  *(v0 + 224) = v81;
  swift_defaultActor_initialize();
  *(v76 + 112) = MEMORY[0x1E69E7CC0];
  *(v76 + 120) = 0;
  sub_1DAF332B8((v0 + 224), v76 + 128);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 184));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 144));

  sub_1DB0222F8();
  v82 = swift_task_alloc();
  *(v0 + 768) = v82;
  v82[2] = v87;
  v82[3] = v68;
  v82[4] = v76;
  v83 = *(MEMORY[0x1E69E87D8] + 4);
  v84 = swift_task_alloc();
  *(v0 + 776) = v84;
  *v84 = v0;
  v84[1] = sub_1DB01B810;

  return MEMORY[0x1EEE6DBF8]();
}

uint64_t sub_1DB01A484()
{
  v1 = v0[75];
  v2 = v0[74];
  v3 = v0[49];

  return MEMORY[0x1EEE6DFA0](sub_1DB01A4FC, v3, 0);
}

uint64_t sub_1DB01A4FC()
{
  v1 = *(v0 + 568);
  v2 = sub_1DB09D494();
  v3 = sub_1DB09DB64();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 616);
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1DAF16000, v2, v3, "Gecode cache fetch timeout", v6, 2u);
    MEMORY[0x1E1281810](v6, -1, -1);
  }

  v7 = MEMORY[0x1E69E7CC0];
  *(v0 + 632) = MEMORY[0x1E69E7CC0];
  v8 = *(v0 + 568);
  v9 = *(v0 + 560);
  v11 = *(v0 + 464);
  v10 = *(v0 + 472);
  v12 = *(v0 + 456);
  v13 = *(v0 + 424);
  v14 = *(v0 + 432);
  *(v0 + 640) = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  *(v0 + 368) = v9;
  sub_1DB09D134();
  sub_1DB09D0E4();
  v15 = *(v14 + 8);
  *(v0 + 648) = v15;
  *(v0 + 656) = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v15(v11, v13);
  sub_1DB09D134();
  sub_1DB09D0E4();
  v15(v11, v13);

  v16 = sub_1DB09D494();
  v17 = sub_1DB09DB54();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = *(v0 + 576);
    v19 = swift_slowAlloc();
    *v19 = 134349312;
    v20 = *(v7 + 16);

    *(v19 + 4) = v20;

    *(v19 + 12) = 2050;
    *(v19 + 14) = v18;
    _os_log_impl(&dword_1DAF16000, v16, v17, "fillCoordinateMap - %{public}ld of %{public}ld found in asd cache", v19, 0x16u);
    MEMORY[0x1E1281810](v19, -1, -1);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  v21 = *(v7 + 16);
  *(v0 + 664) = v21;
  if (v21)
  {
    v22 = *(v0 + 432);
    v23 = *(v0 + 408);
    v24 = *(v0 + 416);
    v25 = *(*(v0 + 400) + 64);
    *(v0 + 792) = v25;
    v26 = *(v23 + 80);
    *(v0 + 796) = v26;
    *(v0 + 672) = 0u;
    *(v0 + 688) = 0u;
    *(v0 + 704) = 0u;
    *(v0 + 720) = 0;
    v27 = *(v0 + 632);
    if (*(v27 + 16))
    {
      v28 = *(v0 + 448);
      v29 = *(v0 + 424);
      sub_1DAF40A84(v27 + ((v26 + 32) & ~v26), v24, &qword_1ECC0E510, &qword_1DB0A2780);
      *(v0 + 728) = *v24;
      v30 = *(v24 + 1);
      *(v0 + 736) = v30;
      (*(v22 + 32))(v28, &v24[v25], v29);
      if (v30)
      {
        [v30 coordinate];
      }

      else
      {
        v31 = 0;
        v32 = 0;
      }

      *(v0 + 752) = v32;
      *(v0 + 744) = v31;
      v57 = *(v0 + 552);

      return MEMORY[0x1EEE6DFA0](sub_1DB01AD74, v57, 0);
    }

    __break(1u);
    goto LABEL_29;
  }

  v33 = *(v0 + 640);
  v34 = *(v0 + 632);
  v35 = *(v0 + 584);
  v36 = *(v0 + 576);
  v37 = *(v0 + 512);
  v38 = *(v0 + 480);

  v39 = sub_1DB09D6B4();
  v40 = swift_allocObject();
  v40[2] = 0;
  v40[3] = v36;
  v40[4] = 0;
  v40[5] = 0;
  v40[6] = v33;
  v40[7] = v35;
  *(v0 + 48) = sub_1DB0222D0;
  *(v0 + 56) = v40;
  *(v0 + 16) = MEMORY[0x1E69E9820];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_1DAFD2A28;
  *(v0 + 40) = &block_descriptor_13;
  v41 = _Block_copy((v0 + 16));
  v42 = *(v0 + 56);

  AnalyticsSendEventLazy();
  _Block_release(v41);

  sub_1DB09DC04();
  v43 = v37[3];
  v44 = *v37;
  v45 = v37[1];
  v46 = *(v38 + 28);
  v47 = *(v37 + 16);
  sub_1DB09D464();
  if (qword_1ECC0E040 != -1)
  {
LABEL_29:
    swift_once();
  }

  v85 = (v0 + 368);
  v48 = *(v0 + 480);
  v49 = *(v0 + 488);
  v50 = qword_1ECC25B90;
  v51 = *algn_1ECC25B98;
  v52 = byte_1ECC25BA0;
  v53 = qword_1ECC25BA8;
  v54 = byte_1ECC25BB0;
  *(v49 + 32) = "enableTelemetry=YES";
  *(v49 + 40) = 19;
  *(v49 + 48) = 2;
  *v49 = v50;
  *(v49 + 8) = v51;
  *(v49 + 16) = v52;
  *(v49 + 24) = v53;
  v55 = *(v48 + 28);
  v56 = v53;
  sub_1DB09D474();
  sub_1DB09DC14();
  if (v54 == 1)
  {
    sub_1DB09D454();
  }

  else
  {
    sub_1DB09D464();
  }

  v58 = *(v0 + 568);
  sub_1DAF5F604(*(v0 + 488), *(v0 + 496));
  v59 = sub_1DB09D494();
  v60 = sub_1DB09DB54();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    *v61 = 134349056;
    swift_beginAccess();
    v62 = *v85;
    if ((*v85 & 0xC000000000000001) != 0)
    {
      if (v62 < 0)
      {
        v63 = *v85;
      }

      v64 = *v85;

      v65 = sub_1DB09DD44();
    }

    else
    {
      v65 = *(v62 + 16);
    }

    *(v61 + 4) = v65;
    _os_log_impl(&dword_1DAF16000, v59, v60, "fillCoordinateMap - Attempting to geocode %{public}ld addresses", v61, 0xCu);
    MEMORY[0x1E1281810](v61, -1, -1);
  }

  v66 = *(v0 + 392);

  sub_1DAF3523C(v0 + 64, v0 + 144);
  v67 = *(v0 + 168);
  v68 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 144, v67);
  v69 = *(v67 - 8);
  v70 = *(v69 + 64) + 15;
  v71 = swift_task_alloc();
  (*(v69 + 16))(v71, v68, v67);
  v72 = *v71;
  v73 = type metadata accessor for DIPODNHelper();
  *(v0 + 208) = v73;
  *(v0 + 216) = &off_1F56C8200;
  *(v0 + 184) = v72;
  type metadata accessor for GeoCoder.GeocodeCompletionState();
  v74 = swift_allocObject();
  *(v0 + 760) = v74;
  v75 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 184, v73);
  v76 = *(v73 - 8);
  v77 = *(v76 + 64) + 15;
  v78 = swift_task_alloc();
  (*(v76 + 16))(v78, v75, v73);
  v79 = *v78;
  *(v0 + 248) = v73;
  *(v0 + 256) = &off_1F56C8200;
  *(v0 + 224) = v79;
  swift_defaultActor_initialize();
  *(v74 + 112) = MEMORY[0x1E69E7CC0];
  *(v74 + 120) = 0;
  sub_1DAF332B8((v0 + 224), v74 + 128);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 184));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 144));

  sub_1DB0222F8();
  v80 = swift_task_alloc();
  *(v0 + 768) = v80;
  v80[2] = v85;
  v80[3] = v66;
  v80[4] = v74;
  v81 = *(MEMORY[0x1E69E87D8] + 4);
  v82 = swift_task_alloc();
  *(v0 + 776) = v82;
  *v82 = v0;
  v82[1] = sub_1DB01B810;

  return MEMORY[0x1EEE6DBF8]();
}

uint64_t sub_1DB01AD74()
{
  v1 = v0[91];
  v2 = v0[69];
  swift_beginAccess();
  v3 = *(v2 + 112);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v2 + 112);
  v0[47] = v5;
  *(v2 + 112) = 0x8000000000000000;
  v6 = sub_1DAF35620(v1);
  v9 = *(v5 + 16);
  v10 = (v7 & 1) == 0;
  v11 = __OFADD__(v9, v10);
  v12 = v9 + v10;
  if (v11)
  {
    __break(1u);
LABEL_16:
    v28 = v6;
    sub_1DAF3D538();
    v6 = v28;
LABEL_8:
    v16 = v0[47];
    v17 = v0[94];
    v18 = v0[93];
    v19 = v0[92];
    if (v1)
    {
      v20 = v16[7] + 24 * v6;
      *v20 = v18;
      *(v20 + 8) = v17;
      *(v20 + 16) = v19 == 0;
    }

    else
    {
      v21 = v0[91];
      v16[(v6 >> 6) + 8] |= 1 << v6;
      *(v16[6] + 8 * v6) = v21;
      v22 = v16[7] + 24 * v6;
      *v22 = v18;
      *(v22 + 8) = v17;
      *(v22 + 16) = v19 == 0;
      v23 = v16[2];
      v11 = __OFADD__(v23, 1);
      v24 = v23 + 1;
      if (v11)
      {
        __break(1u);
        return MEMORY[0x1EEE6DFA0](v6, v7, v8);
      }

      v25 = v0[91];
      v16[2] = v24;
      v26 = v25;
    }

    v27 = v0[49];
    *(v0[69] + 112) = v16;
    swift_endAccess();
    v6 = sub_1DB01AF70;
    v7 = v27;
    v8 = 0;

    return MEMORY[0x1EEE6DFA0](v6, v7, v8);
  }

  LOBYTE(v1) = v7;
  if (*(v5 + 24) >= v12)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

  v13 = v0[91];
  sub_1DAF39E18(v12, isUniquelyReferenced_nonNull_native);
  v14 = v0[47];
  v6 = sub_1DAF35620(v13);
  if ((v1 & 1) == (v7 & 1))
  {
    goto LABEL_8;
  }

  sub_1DAF4062C(0, &qword_1ECC0E240, 0x1E695CF60);

  return sub_1DB09E2E4();
}

uint64_t sub_1DB01AF70()
{
  v1 = *(v0 + 568);
  v3 = *(v0 + 440);
  v2 = *(v0 + 448);
  if (*(v0 + 736))
  {
    v4 = (v0 + 472);
  }

  else
  {
    v4 = (v0 + 456);
  }

  (*(*(v0 + 432) + 16))(*(v0 + 440), *v4, *(v0 + 424));
  v5 = sub_1DB09D0D4();
  v6 = sub_1DB09D494();
  v7 = sub_1DB09DB54();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 67240192;
    *(v8 + 4) = v5 & 1;
    _os_log_impl(&dword_1DAF16000, v6, v7, "fillCoordinateMap address needs refresh - %{BOOL,public}d", v8, 8u);
    MEMORY[0x1E1281810](v8, -1, -1);
  }

  v9 = *(v0 + 736);
  v10 = *(v0 + 728);
  if (v5)
  {
    v11 = *(v0 + 696);
    v12 = *(v0 + 656);
    v13 = *(v0 + 648);
    v15 = *(v0 + 440);
    v14 = *(v0 + 448);
    v16 = *(v0 + 424);

    v13(v15, v16);
    v13(v14, v16);
    v17 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      goto LABEL_39;
    }

    v18 = *(v0 + 712);
    v19 = *(v0 + 704);
    v20 = *(v0 + 680);
    v21 = *(v0 + 672);
    v22 = vdupq_n_s64(v17);
  }

  else
  {
    v23 = *(v0 + 656);
    v24 = *(v0 + 648);
    v26 = *(v0 + 440);
    v25 = *(v0 + 448);
    v27 = *(v0 + 424);
    v28 = sub_1DB0216E8(*(v0 + 728));

    v24(v26, v27);
    v24(v25, v27);
    if (v9)
    {
      v29 = *(v0 + 392);

      v30 = *(v29 + 184);
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      v33 = *(v0 + 712);
      *(*(v0 + 392) + 184) = v32;
      v20 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      v19 = *(v0 + 704);
      v22 = *(v0 + 688);
      v18 = v33 + 1;
      v21 = *(v0 + 672);
    }

    else
    {
      v34 = *(v0 + 392);
      v35 = *(v34 + 208);
      v31 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v31)
      {
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      v37 = *(v0 + 704);
      *(v34 + 208) = v36;
      v21 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
LABEL_44:
        __break(1u);
        return MEMORY[0x1EEE6DBF8]();
      }

      v18 = *(v0 + 712);
      v22 = *(v0 + 688);
      v19 = v37 + 1;
      v20 = *(v0 + 680);
    }
  }

  v38 = *(v0 + 720) + 1;
  if (v38 == *(v0 + 664))
  {
    v101 = (v0 + 368);
    v39 = *(v0 + 640);
    v40 = *(v0 + 632);
    v41 = *(v0 + 584);
    v42 = *(v0 + 576);
    v43 = *(v0 + 512);
    v44 = *(v0 + 480);
    v99 = v22.i64[0];

    v45 = sub_1DB09D6B4();
    v46 = swift_allocObject();
    v46[2] = v99;
    v46[3] = v42;
    v46[4] = v20;
    v46[5] = v21;
    v46[6] = v39;
    v46[7] = v41;
    *(v0 + 48) = sub_1DB0222D0;
    *(v0 + 56) = v46;
    *(v0 + 16) = MEMORY[0x1E69E9820];
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_1DAFD2A28;
    *(v0 + 40) = &block_descriptor_13;
    v47 = _Block_copy((v0 + 16));
    v48 = *(v0 + 56);

    AnalyticsSendEventLazy();
    _Block_release(v47);

    sub_1DB09DC04();
    v49 = v43[3];
    v50 = *v43;
    v51 = v43[1];
    v52 = *(v44 + 28);
    v53 = *(v43 + 16);
    sub_1DB09D464();
    if (qword_1ECC0E040 == -1)
    {
LABEL_18:
      v54 = *(v0 + 480);
      v55 = *(v0 + 488);
      v56 = qword_1ECC25B90;
      v57 = *algn_1ECC25B98;
      v58 = byte_1ECC25BA0;
      v59 = qword_1ECC25BA8;
      v60 = byte_1ECC25BB0;
      *(v55 + 32) = "enableTelemetry=YES";
      *(v55 + 40) = 19;
      *(v55 + 48) = 2;
      *v55 = v56;
      *(v55 + 8) = v57;
      *(v55 + 16) = v58;
      *(v55 + 24) = v59;
      v61 = *(v54 + 28);
      v62 = v59;
      sub_1DB09D474();
      sub_1DB09DC14();
      if (v60 == 1)
      {
        sub_1DB09D454();
      }

      else
      {
        sub_1DB09D464();
      }

      v72 = *(v0 + 568);
      sub_1DAF5F604(*(v0 + 488), *(v0 + 496));
      v73 = sub_1DB09D494();
      v74 = sub_1DB09DB54();
      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        *v75 = 134349056;
        swift_beginAccess();
        v76 = *v101;
        if ((*v101 & 0xC000000000000001) != 0)
        {
          if (v76 < 0)
          {
            v77 = *v101;
          }

          v78 = *v101;

          v79 = sub_1DB09DD44();
        }

        else
        {
          v79 = *(v76 + 16);
        }

        *(v75 + 4) = v79;
        _os_log_impl(&dword_1DAF16000, v73, v74, "fillCoordinateMap - Attempting to geocode %{public}ld addresses", v75, 0xCu);
        MEMORY[0x1E1281810](v75, -1, -1);
      }

      v81 = *(v0 + 392);

      sub_1DAF3523C(v0 + 64, v0 + 144);
      v82 = *(v0 + 168);
      v83 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 144, v82);
      v84 = *(v82 - 8);
      v85 = *(v84 + 64) + 15;
      v86 = swift_task_alloc();
      (*(v84 + 16))(v86, v83, v82);
      v87 = *v86;
      v88 = type metadata accessor for DIPODNHelper();
      *(v0 + 208) = v88;
      *(v0 + 216) = &off_1F56C8200;
      *(v0 + 184) = v87;
      type metadata accessor for GeoCoder.GeocodeCompletionState();
      v89 = swift_allocObject();
      *(v0 + 760) = v89;
      v90 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 184, v88);
      v91 = *(v88 - 8);
      v92 = *(v91 + 64) + 15;
      v93 = swift_task_alloc();
      (*(v91 + 16))(v93, v90, v88);
      v94 = *v93;
      *(v0 + 248) = v88;
      *(v0 + 256) = &off_1F56C8200;
      *(v0 + 224) = v94;
      swift_defaultActor_initialize();
      *(v89 + 112) = MEMORY[0x1E69E7CC0];
      *(v89 + 120) = 0;
      sub_1DAF332B8((v0 + 224), v89 + 128);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 184));

      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 144));

      sub_1DB0222F8();
      v95 = swift_task_alloc();
      *(v0 + 768) = v95;
      v95[2] = v101;
      v95[3] = v81;
      v95[4] = v89;
      v96 = *(MEMORY[0x1E69E87D8] + 4);
      v97 = swift_task_alloc();
      *(v0 + 776) = v97;
      *v97 = v0;
      v97[1] = sub_1DB01B810;

      return MEMORY[0x1EEE6DBF8]();
    }

LABEL_39:
    swift_once();
    goto LABEL_18;
  }

  *(v0 + 720) = v38;
  *(v0 + 712) = v18;
  *(v0 + 704) = v19;
  *(v0 + 688) = v22;
  *(v0 + 680) = v20;
  *(v0 + 672) = v21;
  v63 = *(v0 + 632);
  if (v38 >= *(v63 + 16))
  {
    __break(1u);
    goto LABEL_41;
  }

  v64 = *(v0 + 792);
  v65 = *(v0 + 448);
  v66 = *(v0 + 424);
  v67 = *(v0 + 432);
  v68 = *(v0 + 416);
  sub_1DAF40A84(v63 + ((*(v0 + 796) + 32) & ~*(v0 + 796)) + *(*(v0 + 408) + 72) * v38, v68, &qword_1ECC0E510, &qword_1DB0A2780);
  *(v0 + 728) = *v68;
  v69 = *(v68 + 1);
  *(v0 + 736) = v69;
  (*(v67 + 32))(v65, &v68[v64], v66);
  if (v69)
  {
    [v69 coordinate];
  }

  else
  {
    v70 = 0;
    v71 = 0;
  }

  *(v0 + 752) = v71;
  *(v0 + 744) = v70;
  v80 = *(v0 + 552);

  return MEMORY[0x1EEE6DFA0](sub_1DB01AD74, v80, 0);
}

uint64_t sub_1DB01B810()
{
  v1 = *(*v0 + 776);
  v2 = *(*v0 + 768);
  v3 = *(*v0 + 392);
  v5 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DB01B93C, v3, 0);
}

uint64_t sub_1DB01B93C()
{
  v1 = v0[62];
  v2 = v0[60];
  sub_1DB09DC04();
  v3 = v1[3];
  v4 = *v1;
  v5 = v1[1];
  v6 = *(v2 + 28);
  v7 = *(v1 + 16);
  sub_1DB09D464();
  v8 = swift_task_alloc();
  v0[98] = v8;
  *v8 = v0;
  v8[1] = sub_1DB01B9F8;
  v9 = v0[95];

  return sub_1DB01ECC4();
}

uint64_t sub_1DB01B9F8()
{
  v1 = *(*v0 + 784);
  v2 = *(*v0 + 392);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DB01BB08, v2, 0);
}

uint64_t sub_1DB01BB08()
{
  v1 = v0[95];
  v2 = v0[82];
  v3 = v0[81];
  v4 = v0[66];
  v5 = v0[64];
  v6 = v0[62];
  v7 = v0[59];
  v8 = v0[57];
  v9 = v0[53];

  v3(v8, v9);
  v3(v7, v9);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 8);
  sub_1DAF60868(v6);
  sub_1DAF60868(v5);
  sub_1DAF60868(v4);
  v10 = v0[46];

  v11 = v0[68];
  v12 = v0[67];
  v13 = v0[66];
  v14 = v0[65];
  v16 = v0[63];
  v15 = v0[64];
  v17 = v0[61];
  v18 = v0[62];
  v19 = v0[60];
  v27 = v0[59];
  v28 = v0[58];
  v29 = v0[57];
  v30 = v0[56];
  v31 = v0[55];
  v32 = v0[52];
  sub_1DB09DC04();
  v20 = *(v11 + 24);
  v21 = *v11;
  v22 = *(v11 + 8);
  v23 = *(v19 + 28);
  v24 = *(v11 + 16);
  sub_1DB09D464();
  sub_1DAF60868(v11);

  v25 = v0[1];

  return v25();
}

uint64_t sub_1DB01BCB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a3;
  return MEMORY[0x1EEE6DFA0](sub_1DB01BCD8, 0, 0);
}

uint64_t sub_1DB01BCD8()
{
  v1 = sub_1DAFF75F0(v0[3]);
  v0[4] = v1;
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_1DB01BD8C;

  return sub_1DAF60B00(v1);
}

uint64_t sub_1DB01BD8C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *(*v2 + 32);
  v7 = *v2;

  if (v1)
  {
    v8 = *(v7 + 8);

    return v8();
  }

  else
  {
    *(v4 + 48) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1DB01BF00, 0, 0);
  }
}

id sub_1DB01BF24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EB80, &unk_1DB0B26F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB0AB780;
  strcpy((inited + 32), "expiredCount");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  *(inited + 56) = 0xD000000000000012;
  *(inited + 64) = 0x80000001DB0CA550;
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  *(inited + 80) = 0x6F4C646568636163;
  *(inited + 88) = 0xEF736E6F69746163;
  *(inited + 96) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  *(inited + 104) = 0x6F4E646568636163;
  *(inited + 112) = 0xEF73646E756F4674;
  result = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  *(inited + 120) = result;
  *(inited + 128) = 0x6E6F697461727564;
  *(inited + 136) = 0xE800000000000000;
  if (a5 < a6)
  {
    __break(1u);
  }

  else
  {
    result = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    *(inited + 144) = result;
    strcpy((inited + 152), "isAllResolved");
    *(inited + 166) = -4864;
    if (!__OFADD__(a3, a4))
    {
      v14 = a3 + a4;
      *(inited + 168) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      v15 = sub_1DAF3F518(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EB88, &unk_1DB0AB610);
      swift_arrayDestroy();
      return v15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DB01C18C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[21] = a4;
  v5[22] = a5;
  v5[19] = a2;
  v5[20] = a3;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0ECE0, &unk_1DB0A21D0) - 8) + 64) + 15;
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB01C23C, a4, 0);
}

uint64_t sub_1DB01C23C()
{
  v1 = *(v0 + 160);
  swift_beginAccess();
  v2 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v2 < 0)
    {
      v3 = *v1;
    }

    sub_1DB09DD34();
    sub_1DAF4062C(0, &qword_1ECC0E240, 0x1E695CF60);
    sub_1DAFF7D64();
    result = sub_1DB09DB04();
    v2 = *(v0 + 16);
    v5 = *(v0 + 24);
    v6 = *(v0 + 32);
    v7 = *(v0 + 40);
    v8 = *(v0 + 48);
  }

  else
  {
    v9 = -1 << *(v2 + 32);
    v5 = v2 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v2 + 56);

    v7 = 0;
  }

  v12 = (v6 + 64) >> 6;
  v40 = v5;
  v41 = v2;
  v39 = v12;
  while (v2 < 0)
  {
    v20 = sub_1DB09DD64();
    if (!v20 || (*(v0 + 144) = v20, sub_1DAF4062C(0, &qword_1ECC0E240, 0x1E695CF60), swift_dynamicCast(), v19 = *(v0 + 136), v17 = v7, v18 = v8, !v19))
    {
LABEL_29:
      v37 = *(v0 + 184);
      v36 = *(v0 + 192);
      sub_1DAF333A4();

      v38 = *(v0 + 8);

      return v38();
    }

LABEL_21:
    v46 = v18;
    v21 = *(v0 + 192);
    v44 = *(v0 + 184);
    v22 = *(v0 + 168);
    v23 = *(v0 + 176);
    v42 = v19;
    v24 = v19;
    v25 = sub_1DB09DA24();
    v26 = *(v25 - 8);
    (*(v26 + 56))(v21, 1, 1, v25);
    v27 = swift_allocObject();
    v27[2] = 0;
    v43 = v27 + 2;
    v27[3] = 0;
    v27[4] = v24;
    v27[5] = v22;
    v27[6] = v23;
    sub_1DAF40A84(v21, v44, &qword_1ECC0ECE0, &unk_1DB0A21D0);
    LODWORD(v24) = (*(v26 + 48))(v44, 1, v25);
    v45 = v42;

    v28 = *(v0 + 184);
    if (v24 == 1)
    {
      sub_1DAF40AEC(*(v0 + 184), &qword_1ECC0ECE0, &unk_1DB0A21D0);
    }

    else
    {
      sub_1DB09DA14();
      (*(v26 + 8))(v28, v25);
    }

    if (*v43)
    {
      v29 = v27[3];
      v30 = *v43;
      swift_getObjectType();
      swift_unknownObjectRetain();
      v31 = sub_1DB09D984();
      v33 = v32;
      swift_unknownObjectRelease();
    }

    else
    {
      v31 = 0;
      v33 = 0;
    }

    v2 = v41;
    v34 = **(v0 + 152);
    v35 = swift_allocObject();
    *(v35 + 16) = &unk_1DB0B26C0;
    *(v35 + 24) = v27;

    if (v33 | v31)
    {
      v13 = v0 + 56;
      *(v0 + 56) = 0;
      *(v0 + 64) = 0;
      *(v0 + 72) = v31;
      *(v0 + 80) = v33;
    }

    else
    {
      v13 = 0;
    }

    v12 = v39;
    v5 = v40;
    v14 = *(v0 + 192);
    *(v0 + 112) = 1;
    *(v0 + 120) = v13;
    *(v0 + 128) = v34;
    swift_task_create();

    result = sub_1DAF40AEC(v14, &qword_1ECC0ECE0, &unk_1DB0A21D0);
    v7 = v17;
    v8 = v46;
  }

  v15 = v7;
  v16 = v8;
  v17 = v7;
  if (v8)
  {
LABEL_17:
    v18 = (v16 - 1) & v16;
    v19 = *(*(v2 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v16)))));
    if (!v19)
    {
      goto LABEL_29;
    }

    goto LABEL_21;
  }

  while (1)
  {
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v17 >= v12)
    {
      goto LABEL_29;
    }

    v16 = *(v5 + 8 * v17);
    ++v15;
    if (v16)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DB01C6F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[55] = a5;
  v6[56] = a6;
  v6[54] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F4C8, &qword_1DB0B26D8);
  v6[57] = v7;
  v8 = *(v7 - 8);
  v6[58] = v8;
  v9 = *(v8 + 64) + 15;
  v6[59] = swift_task_alloc();
  v10 = type metadata accessor for ODISignpost();
  v6[60] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v6[61] = swift_task_alloc();
  v6[62] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB01C804, 0, 0);
}

uint64_t sub_1DB01C804()
{
  if (qword_1ECC0E048 != -1)
  {
    swift_once();
  }

  v1 = v0[60];
  v2 = v0[61];
  v4 = qword_1ECC25BB8;
  v3 = unk_1ECC25BC0;
  v5 = byte_1ECC25BC8;
  v6 = qword_1ECC25BD0;
  v7 = byte_1ECC25BD8;
  *(v2 + 32) = "enableTelemetry=YES";
  *(v2 + 40) = 19;
  *(v2 + 48) = 2;
  *v2 = v4;
  *(v2 + 8) = v3;
  *(v2 + 16) = v5;
  *(v2 + 24) = v6;
  v8 = *(v1 + 28);
  v9 = v6;
  sub_1DB09D474();
  sub_1DB09DC14();
  if (v7 == 1)
  {
    sub_1DB09D454();
  }

  else
  {
    sub_1DB09D464();
  }

  sub_1DAF5F604(v0[61], v0[62]);
  v0[63] = [objc_allocWithZone(MEMORY[0x1E695FBC8]) init];
  if (qword_1EE301DC0 != -1)
  {
    swift_once();
  }

  v11 = v0[54];
  v10 = v0[55];
  v12 = sub_1DB09D4B4();
  v13 = __swift_project_value_buffer(v12, qword_1EE30A128);
  v0[64] = v13;
  v14 = v11;
  sub_1DB016824(v13, v14);

  return MEMORY[0x1EEE6DFA0](sub_1DB01CA08, v10, 0);
}

uint64_t sub_1DB01CA08()
{
  v1 = *(v0 + 440);
  v2 = swift_beginAccess();
  v5 = *(v1 + 200);
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 200) = v7;
    v2 = sub_1DB01CA94;
    v3 = 0;
    v4 = 0;
  }

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1DB01CA94()
{
  v1 = v0[64];
  v2 = sub_1DB09D494();
  v3 = sub_1DB09DB54();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DAF16000, v2, v3, "Requesting geocode", v4, 2u);
    MEMORY[0x1E1281810](v4, -1, -1);
  }

  v5 = v0[58];
  v6 = v0[59];
  v7 = v0[57];
  v10 = v0[54];
  v11 = v0[63];

  v0[65] = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v0[2] = v0;
  v0[7] = v0 + 51;
  v0[3] = sub_1DB01CCDC;
  swift_continuation_init();
  v0[17] = v7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F4D0, &qword_1DB0B26E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0ECF0, &unk_1DB0A1310);
  sub_1DB09D994();
  (*(v5 + 32))(boxed_opaque_existential_0, v6, v7);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1DB01E47C;
  v0[13] = &block_descriptor_79;
  [v11 geocodePostalAddress:v10 completionHandler:v0 + 10];
  (*(v5 + 8))(boxed_opaque_existential_0, v7);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1DB01CCDC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 528) = v2;
  if (v2)
  {
    v3 = sub_1DB01D830;
  }

  else
  {
    v3 = sub_1DB01CDEC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DB01CDEC()
{
  v48 = v1;
  v5 = *(v1 + 520);
  v6 = *(v1 + 408);
  v7 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v8 = v7 - v5;
  if (v7 < v5)
  {
    __break(1u);
    goto LABEL_26;
  }

  v9 = *(v1 + 512);
  *(v1 + 536) = v8;

  v5 = sub_1DB09D494();
  v0 = sub_1DB09DB54();

  v4 = v6 >> 62;
  if (!os_log_type_enabled(v5, v0))
  {
    goto LABEL_13;
  }

  v2 = swift_slowAlloc();
  v3 = swift_slowAlloc();
  v47 = v3;
  *v2 = 136315138;
  if (v4)
  {
    goto LABEL_35;
  }

  v12 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v12)
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((v6 & 0xC000000000000001) != 0)
  {
    v13 = MEMORY[0x1E1280530](0, v6);
  }

  else
  {
    if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return MEMORY[0x1EEE6DFA0](v12, v10, v11);
    }

    v13 = *(v6 + 32);
  }

  v14 = v13;
  v15 = [v13 location];

  if (v15)
  {
    v16 = [v15 description];

    v17 = sub_1DB09D6C4();
    v19 = v18;

    v12 = v17;
    goto LABEL_12;
  }

  v12 = 0;
  while (1)
  {
LABEL_11:
    v19 = 0xE000000000000000;
LABEL_12:
    v20 = sub_1DB015E84(v12, v19, &v47);

    *(v2 + 4) = v20;
    _os_log_impl(&dword_1DAF16000, v5, v0, "Geocode Result %s", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
    MEMORY[0x1E1281810](v3, -1, -1);
    MEMORY[0x1E1281810](v2, -1, -1);
LABEL_13:

    if (v4)
    {
LABEL_26:
      if (!sub_1DB09DD44())
      {
LABEL_27:

        goto LABEL_28;
      }
    }

    else if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_27;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v21 = *(v6 + 32);
      goto LABEL_18;
    }

    __break(1u);
LABEL_35:
    v12 = sub_1DB09DD44();
    if (v12)
    {
      goto LABEL_5;
    }
  }

  v21 = MEMORY[0x1E1280530](0, v6);
LABEL_18:
  v22 = v21;
  *(v1 + 544) = v21;

  v23 = [v22 location];
  *(v1 + 552) = v23;
  if (v23)
  {
    v24 = *(v1 + 512);
    v25 = sub_1DB09D494();
    v26 = sub_1DB09DB54();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_1DAF16000, v25, v26, "fillCoordinateMap - geo coded address", v27, 2u);
      MEMORY[0x1E1281810](v27, -1, -1);
    }

    v28 = *(v1 + 440);

    v12 = sub_1DB01D2AC;
    v10 = v28;
    v11 = 0;

    return MEMORY[0x1EEE6DFA0](v12, v10, v11);
  }

LABEL_28:
  v29 = *(v1 + 512);
  v30 = sub_1DB09D494();
  v31 = sub_1DB09DB64();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_1DAF16000, v30, v31, "fillCoordinateMap - no geo coded address found but no error", v32, 2u);
    MEMORY[0x1E1281810](v32, -1, -1);
  }

  v33 = *(v1 + 496);
  v34 = *(v1 + 480);

  sub_1DB09DC04();
  v35 = v33[1];
  v45 = *v33;
  v46 = v33[3];
  v36 = *(v34 + 28);
  v37 = *(v33 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EEE0, &qword_1DB0A21E0);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1DB0A04E0;
  v39 = MEMORY[0x1E69E63A8];
  *(v38 + 56) = MEMORY[0x1E69E6370];
  *(v38 + 64) = v39;
  v41 = *(v1 + 488);
  v40 = *(v1 + 496);
  v42 = *(v1 + 472);
  *(v38 + 32) = 0;
  sub_1DB09D454();

  sub_1DAF60868(v40);

  v43 = *(v1 + 8);

  return v43();
}

uint64_t sub_1DB01D2AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 440);
  v5 = *(v4 + 192);
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
    return MEMORY[0x1EEE6DFA0](a1, a2, a3);
  }

  else
  {
    *(v4 + 192) = v7;
    return MEMORY[0x1EEE6DFA0](sub_1DB01D2E0, 0, 0);
  }
}

uint64_t sub_1DB01D2E0()
{
  if (qword_1ECC0E110 != -1)
  {
    swift_once();
  }

  v1 = v0[69];
  v2 = qword_1ECC0F4A8;
  v0[70] = qword_1ECC0F4A8;
  [v1 coordinate];
  v0[71] = v3;
  v0[72] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1DB01D398, v2, 0);
}

uint64_t sub_1DB01D398()
{
  v1 = v0[72];
  v2 = v0[71];
  v3 = v0[70];
  v4 = v0[69];
  v5 = v0[54];
  swift_beginAccess();
  v6 = *(v3 + 112);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v3 + 112);
  *(v3 + 112) = 0x8000000000000000;
  sub_1DAF3BCC0(v2, v1, 0, v5, isUniquelyReferenced_nonNull_native);
  *(v3 + 112) = v12;
  swift_endAccess();
  v8 = swift_task_alloc();
  v0[73] = v8;
  *v8 = v0;
  v8[1] = sub_1DB01D4B8;
  v9 = v0[56];
  v10 = v0[54];

  return sub_1DB01F1B0(v10, v4);
}

uint64_t sub_1DB01D4B8(char a1)
{
  v2 = *(*v1 + 584);
  v3 = *(*v1 + 552);
  v5 = *v1;
  *(*v1 + 624) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1DB01D5D4, 0, 0);
}

uint64_t sub_1DB01D5D4()
{
  v1 = *(v0 + 624);
  v2 = v0[69];
  v3 = v0[68];
  v4 = v0[63];
  v5 = v0[67] / 1000000000.0;
  v6 = sub_1DB09D6B4();
  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  *(v7 + 24) = v5;
  v0[34] = sub_1DB022810;
  v0[35] = v7;
  v0[30] = MEMORY[0x1E69E9820];
  v0[31] = 1107296256;
  v0[32] = sub_1DAFD2A28;
  v0[33] = &block_descriptor_99;
  v8 = _Block_copy(v0 + 30);
  v9 = v0[35];

  AnalyticsSendEventLazy();

  _Block_release(v8);
  v10 = v0[62];
  v11 = v0[60];
  LOBYTE(v3) = v0[66] == 0;
  sub_1DB09DC04();
  v22 = *v10;
  v23 = v10[3];
  v21 = v10[1];
  v12 = *(v11 + 28);
  v13 = *(v10 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EEE0, &qword_1DB0A21E0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1DB0A04E0;
  v15 = MEMORY[0x1E69E63A8];
  *(v14 + 56) = MEMORY[0x1E69E6370];
  *(v14 + 64) = v15;
  v17 = v0[61];
  v16 = v0[62];
  v18 = v0[59];
  *(v14 + 32) = v3;
  sub_1DB09D454();

  sub_1DAF60868(v16);

  v19 = v0[1];

  return v19();
}

uint64_t sub_1DB01D830()
{
  v59 = v0;
  v1 = *(v0 + 528);
  v2 = *(v0 + 512);
  swift_willThrow();
  v3 = v1;
  v4 = sub_1DB09D494();
  v5 = sub_1DB09DB54();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 528);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v58[0] = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v10 = *(v0 + 360);
    v9 = *(v0 + 368);
    v11 = *(v0 + 376);
    v12 = sub_1DB09E324();
    v14 = sub_1DB015E84(v12, v13, v58);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_1DAF16000, v4, v5, "Geocode error: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1E1281810](v8, -1, -1);
    MEMORY[0x1E1281810](v7, -1, -1);
  }

  v15 = *(v0 + 520);
  v16 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v19 = v16 - v15;
  if (v16 < v15)
  {
    __break(1u);
    return MEMORY[0x1EEE6DFA0](v16, v17, v18);
  }

  v20 = *(v0 + 528);
  *(v0 + 592) = v19;
  v21 = sub_1DB09CE64();
  *(v0 + 600) = v21;
  v22 = [v21 domain];
  v23 = sub_1DB09D6C4();
  v25 = v24;

  v26 = *MEMORY[0x1E695FC60];
  if (v23 == sub_1DB09D6C4() && v25 == v27)
  {
  }

  else
  {
    v29 = sub_1DB09E254();

    if ((v29 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  if ([v21 code] == 8)
  {
    v30 = *(v0 + 512);
    v31 = sub_1DB09D494();
    v32 = sub_1DB09DB54();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_1DAF16000, v31, v32, "fillCoordinateMap - address not found - caching as not found", v33, 2u);
      MEMORY[0x1E1281810](v33, -1, -1);
    }

    v34 = *(v0 + 440);

    v16 = sub_1DB01DCC4;
    v17 = v34;
    goto LABEL_20;
  }

LABEL_15:
  v35 = *(v0 + 512);
  v36 = *(v0 + 432);
  v37 = sub_1DB09D494();
  v38 = sub_1DB09DB64();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = *(v0 + 432);
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *v40 = 138477827;
    *(v40 + 4) = v39;
    *v41 = v39;
    v42 = v39;
    _os_log_impl(&dword_1DAF16000, v37, v38, "Ignoring error occurred in geocoding address: %{private}@", v40, 0xCu);
    sub_1DAF40AEC(v41, &qword_1ECC0F4D8, &qword_1DB0B26E8);
    MEMORY[0x1E1281810](v41, -1, -1);
    MEMORY[0x1E1281810](v40, -1, -1);
  }

  v43 = *(v0 + 528);
  v44 = *(v0 + 512);

  v45 = v43;
  v46 = sub_1DB09D494();
  v47 = sub_1DB09DB64();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = *(v0 + 528);
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v58[0] = v50;
    *v49 = 136315138;
    swift_getErrorValue();
    v52 = *(v0 + 312);
    v51 = *(v0 + 320);
    v53 = *(v0 + 328);
    v54 = sub_1DB09E324();
    v56 = sub_1DB015E84(v54, v55, v58);

    *(v49 + 4) = v56;
    _os_log_impl(&dword_1DAF16000, v46, v47, "    ignored : %s", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v50);
    MEMORY[0x1E1281810](v50, -1, -1);
    MEMORY[0x1E1281810](v49, -1, -1);
  }

  v17 = *(v0 + 440);
  v16 = sub_1DB01E1F4;
LABEL_20:
  v18 = 0;

  return MEMORY[0x1EEE6DFA0](v16, v17, v18);
}

uint64_t sub_1DB01DCC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 440);
  v5 = *(v4 + 216);
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
    return MEMORY[0x1EEE6DFA0](a1, a2, a3);
  }

  else
  {
    *(v4 + 216) = v7;
    return MEMORY[0x1EEE6DFA0](sub_1DB01DCF8, 0, 0);
  }
}

uint64_t sub_1DB01DCF8()
{
  if (qword_1ECC0E110 != -1)
  {
    swift_once();
  }

  v1 = qword_1ECC0F4A8;
  *(v0 + 608) = qword_1ECC0F4A8;

  return MEMORY[0x1EEE6DFA0](sub_1DB01DD90, v1, 0);
}

uint64_t sub_1DB01DD90()
{
  v1 = v0[76];
  v2 = v0[54];
  swift_beginAccess();
  v3 = *(v1 + 112);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + 112);
  *(v1 + 112) = 0x8000000000000000;
  sub_1DAF3BCC0(0, 0, 1, v2, isUniquelyReferenced_nonNull_native);
  *(v1 + 112) = v9;
  swift_endAccess();
  v5 = swift_task_alloc();
  v0[77] = v5;
  *v5 = v0;
  v5[1] = sub_1DB01DE94;
  v6 = v0[56];
  v7 = v0[54];

  return sub_1DB01F1B0(v7, 0);
}

uint64_t sub_1DB01DE94(char a1)
{
  v2 = *(*v1 + 616);
  v4 = *v1;
  *(*v1 + 625) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1DB01DF94, 0, 0);
}

uint64_t sub_1DB01DF94()
{
  v1 = *(v0 + 625);
  v2 = v0[75];
  v3 = v0[66];
  v4 = v0[63];
  v5 = v0[74] / 1000000000.0;
  v6 = sub_1DB09D6B4();
  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  *(v7 + 24) = v5;
  v0[28] = sub_1DB0227EC;
  v0[29] = v7;
  v0[24] = MEMORY[0x1E69E9820];
  v0[25] = 1107296256;
  v0[26] = sub_1DAFD2A28;
  v0[27] = &block_descriptor_92;
  v8 = _Block_copy(v0 + 24);
  v9 = v0[29];

  AnalyticsSendEventLazy();

  _Block_release(v8);
  v10 = v0[62];
  v11 = v0[60];
  LOBYTE(v8) = v0[66] == 0;
  sub_1DB09DC04();
  v22 = *v10;
  v23 = v10[3];
  v21 = v10[1];
  v12 = *(v11 + 28);
  v13 = *(v10 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EEE0, &qword_1DB0A21E0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1DB0A04E0;
  v15 = MEMORY[0x1E69E63A8];
  *(v14 + 56) = MEMORY[0x1E69E6370];
  *(v14 + 64) = v15;
  v17 = v0[61];
  v16 = v0[62];
  v18 = v0[59];
  *(v14 + 32) = v8;
  sub_1DB09D454();

  sub_1DAF60868(v16);

  v19 = v0[1];

  return v19();
}

uint64_t sub_1DB01E1F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 440);
  v5 = *(v4 + 224);
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
    return MEMORY[0x1EEE6DFA0](a1, a2, a3);
  }

  else
  {
    *(v4 + 224) = v7;
    return MEMORY[0x1EEE6DFA0](sub_1DB01E228, 0, 0);
  }
}

uint64_t sub_1DB01E228()
{
  v1 = v0[75];
  v2 = v0[66];
  v3 = v0[62];
  v4 = v0[63];
  v5 = v0[60];
  v6 = v0[74] / 1000000000.0;
  v7 = sub_1DB09D6B4();
  v8 = swift_allocObject();
  *(v8 + 16) = v2;
  *(v8 + 24) = v6;
  v0[22] = sub_1DB0227E0;
  v0[23] = v8;
  v0[18] = MEMORY[0x1E69E9820];
  v0[19] = 1107296256;
  v0[20] = sub_1DAFD2A28;
  v0[21] = &block_descriptor_85;
  v9 = _Block_copy(v0 + 18);
  v10 = v0[23];
  v11 = v2;

  AnalyticsSendEventLazy();
  _Block_release(v9);

  sub_1DB09DC04();
  v12 = v3[1];
  v22 = *v3;
  v23 = v3[3];
  v13 = *(v5 + 28);
  v14 = *(v3 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EEE0, &qword_1DB0A21E0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1DB0A04E0;
  v16 = MEMORY[0x1E69E63A8];
  *(v15 + 56) = MEMORY[0x1E69E6370];
  *(v15 + 64) = v16;
  v18 = v0[61];
  v17 = v0[62];
  v19 = v0[59];
  *(v15 + 32) = 0;
  sub_1DB09D454();

  sub_1DAF60868(v17);

  v20 = v0[1];

  return v20();
}

void sub_1DB01E47C(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v4 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F4C8, &qword_1DB0B26D8);
    sub_1DB09D9A4();
  }

  else
  {
    sub_1DAF4062C(0, &qword_1ECC0F4E0, 0x1E695FC20);
    sub_1DB09D934();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F4C8, &qword_1DB0B26D8);
    sub_1DB09D9B4();
  }
}

unint64_t sub_1DB01E544(double a1)
{
  v2 = sub_1DB09CE64();
  v3 = [v2 code];
  v4 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EB80, &unk_1DB0B26F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB0A0500;
  *(inited + 32) = 0x646F43726F727265;
  *(inited + 40) = 0xE900000000000065;
  *(inited + 48) = v4;
  *(inited + 56) = 0x6E6F697461727564;
  *(inited + 64) = 0xE800000000000000;
  v6 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  v7 = v4;
  *(inited + 72) = [v6 initWithDouble_];
  v8 = sub_1DAF3F518(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EB88, &unk_1DB0AB610);
  swift_arrayDestroy();

  return v8;
}

unint64_t sub_1DB01E694(char a1, char a2, double a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EB80, &unk_1DB0B26F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB0A5000;
  *(inited + 32) = 0xD000000000000011;
  *(inited + 40) = 0x80000001DB0CA530;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  *(inited + 56) = 0x656D69546E4F7369;
  *(inited + 64) = 0xE800000000000000;
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  *(inited + 80) = 0x6E6F697461727564;
  *(inited + 88) = 0xE800000000000000;
  *(inited + 96) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v7 = sub_1DAF3F518(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EB88, &unk_1DB0AB610);
  swift_arrayDestroy();
  return v7;
}

uint64_t sub_1DB01E7EC(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = type metadata accessor for ODISignpost();
  v2[7] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB01E88C, v1, 0);
}

uint64_t sub_1DB01E88C()
{
  if (qword_1ECC0E050 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = v0[8];
  v4 = qword_1ECC25BE0;
  v3 = *algn_1ECC25BE8;
  v5 = byte_1ECC25BF0;
  v6 = qword_1ECC25BF8;
  v7 = byte_1ECC25C00;
  *(v2 + 32) = "enableTelemetry=YES";
  *(v2 + 40) = 19;
  *(v2 + 48) = 2;
  *v2 = v4;
  *(v2 + 8) = v3;
  *(v2 + 16) = v5;
  *(v2 + 24) = v6;
  v8 = *(v1 + 28);
  v9 = v6;
  sub_1DB09D474();
  sub_1DB09DC14();
  if (v7 == 1)
  {
    sub_1DB09D454();
  }

  else
  {
    sub_1DB09D464();
  }

  sub_1DAF5F604(v0[8], v0[9]);
  if (qword_1ECC0E110 != -1)
  {
    swift_once();
  }

  v10 = qword_1ECC0F4A8;
  v0[10] = qword_1ECC0F4A8;

  return MEMORY[0x1EEE6DFA0](sub_1DB01EA44, v10, 0);
}

uint64_t sub_1DB01EA44()
{
  v1 = *(v0 + 80);
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    v3 = *(v0 + 40);

    v4 = sub_1DAF35620(v3);
    v5 = *(v0 + 48);
    if (v6)
    {
      v7 = *(v2 + 56) + 24 * v4;
      *(v0 + 88) = *v7;
      *(v0 + 96) = *(v7 + 8);
      *(v0 + 104) = *(v7 + 16);

      v8 = sub_1DB01EBF4;
    }

    else
    {

      v8 = sub_1DB022848;
    }

    v10 = v8;
    v9 = v5;
  }

  else
  {
    v9 = *(v0 + 48);
    v10 = sub_1DB01EB44;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, 0);
}

uint64_t sub_1DB01EB44()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];
  sub_1DB09DC04();
  v4 = *(v2 + 24);
  v5 = *v2;
  v6 = *(v2 + 8);
  v7 = *(v3 + 28);
  v8 = *(v2 + 16);
  sub_1DB09D464();
  sub_1DAF60868(v2);

  v9 = v0[1];

  return v9(0, 0, 1);
}

uint64_t sub_1DB01EBF4()
{
  v1 = *(v0 + 104);
  if (v1)
  {
    v2 = 0;
    v3 = 0;
  }

  else
  {
    v2 = *(v0 + 88);
    v3 = *(v0 + 96);
  }

  v5 = *(v0 + 64);
  v4 = *(v0 + 72);
  v6 = *(v0 + 56);
  sub_1DB09DC04();
  v7 = *(v4 + 24);
  v8 = *v4;
  v9 = *(v4 + 8);
  v10 = *(v6 + 28);
  v11 = *(v4 + 16);
  sub_1DB09D464();
  sub_1DAF60868(v4);

  v12 = *(v0 + 8);

  return v12(v2, v3, v1);
}

uint64_t sub_1DB01ECE4()
{
  v1 = v0[9];
  *(v1 + 120) = 1;
  swift_beginAccess();
  v2 = *(*(v1 + 112) + 16);
  if (v2)
  {
    if (qword_1EE301DC0 != -1)
    {
      swift_once();
    }

    v3 = sub_1DB09D4B4();
    v0[10] = __swift_project_value_buffer(v3, qword_1EE30A128);
    v4 = sub_1DB09D494();
    v5 = sub_1DB09DB54();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 134349056;
      *(v6 + 4) = v2;
      _os_log_impl(&dword_1DAF16000, v4, v5, "fillCoordinateMap - %{public}ld new/updated addresses to store to cache", v6, 0xCu);
      MEMORY[0x1E1281810](v6, -1, -1);
    }

    v7 = v0[9];

    v8 = *(v1 + 112);
    v0[11] = v8;
    v9 = *__swift_project_boxed_opaque_existential_1((v7 + 128), *(v7 + 152));

    v10 = swift_task_alloc();
    v0[12] = v10;
    *v10 = v0;
    v10[1] = sub_1DB01EED4;

    return sub_1DAF510D4(v8);
  }

  else
  {
    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_1DB01EED4()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *v1;
  v4[13] = v0;

  if (v0)
  {
    v5 = v4[9];

    return MEMORY[0x1EEE6DFA0](sub_1DB01F030, v5, 0);
  }

  else
  {
    v6 = v4[1];

    return v6();
  }
}

uint64_t sub_1DB01F030()
{
  v19 = v0;
  v1 = v0[13];
  v2 = v0[10];
  v3 = v1;
  v4 = sub_1DB09D494();
  v5 = sub_1DB09DB64();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[13];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v10 = v0[5];
    v9 = v0[6];
    v11 = v0[7];
    v12 = sub_1DB09E324();
    v14 = sub_1DB015E84(v12, v13, &v18);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_1DAF16000, v4, v5, "Error thrown trying to cache geocodes to asd: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1E1281810](v8, -1, -1);
    MEMORY[0x1E1281810](v7, -1, -1);
  }

  else
  {
    v15 = v0[13];
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_1DB01F1B0(uint64_t a1, uint64_t a2)
{
  v3[16] = a2;
  v3[17] = v2;
  v3[15] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DB01F1D4, v2, 0);
}

uint64_t sub_1DB01F1D4()
{
  v37 = v0;
  v1 = *(v0 + 136);
  v2 = *(v1 + 120);
  *(v0 + 176) = v2;
  if (v2 == 1)
  {
    if (qword_1EE301DC0 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 128);
    v4 = sub_1DB09D4B4();
    *(v0 + 144) = __swift_project_value_buffer(v4, qword_1EE30A128);
    v5 = v3;
    v6 = sub_1DB09D494();
    v7 = sub_1DB09DB54();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = *(v0 + 128);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v36 = v10;
      *v9 = 136315138;
      if (v8)
      {
        v11 = 0x746C75736572;
      }

      else
      {
        v11 = 0x6E756F6620746F6ELL;
      }

      if (v8)
      {
        v12 = 0xE600000000000000;
      }

      else
      {
        v12 = 0xE900000000000064;
      }

      v13 = sub_1DB015E84(v11, v12, &v36);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_1DAF16000, v6, v7, "Send late geocode %s to asd cache", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x1E1281810](v10, -1, -1);
      MEMORY[0x1E1281810](v9, -1, -1);
    }

    v14 = *(v0 + 128);
    v15 = *(v0 + 120);
    v16 = __swift_project_boxed_opaque_existential_1((*(v0 + 136) + 128), *(*(v0 + 136) + 152));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E6E0, &unk_1DB0A45F0);
    inited = swift_initStackObject();
    *(v0 + 152) = inited;
    *(inited + 16) = xmmword_1DB0A04E0;
    *(inited + 32) = v15;
    *(inited + 40) = v14;
    v18 = *v16;
    v19 = v5;
    v20 = v15;
    v21 = swift_task_alloc();
    *(v0 + 160) = v21;
    *v21 = v0;
    v21[1] = sub_1DB01F520;

    return sub_1DAF510D4(inited);
  }

  else
  {
    v24 = *(v0 + 120);
    v23 = *(v0 + 128);
    swift_beginAccess();
    v25 = *(v1 + 112);
    v26 = v23;
    v27 = v24;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + 112) = v25;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v25 = sub_1DAF73B38(0, v25[2] + 1, 1, v25);
      *(v1 + 112) = v25;
    }

    v30 = v25[2];
    v29 = v25[3];
    if (v30 >= v29 >> 1)
    {
      v25 = sub_1DAF73B38((v29 > 1), v30 + 1, 1, v25);
    }

    v32 = *(v0 + 120);
    v31 = *(v0 + 128);
    v25[2] = v30 + 1;
    v33 = &v25[2 * v30];
    v33[4] = v32;
    v33[5] = v31;
    *(v1 + 112) = v25;
    swift_endAccess();
    v34 = *(v0 + 8);
    v35 = *(v0 + 176);

    return v34(v35);
  }
}

uint64_t sub_1DB01F520()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *(*v1 + 152);
  v5 = *v1;
  *(*v1 + 168) = v0;

  swift_setDeallocating();
  sub_1DAF40AEC(v4 + 32, &qword_1ECC0E6E8, &unk_1DB0B2670);
  if (v0)
  {
    v6 = *(v2 + 136);

    return MEMORY[0x1EEE6DFA0](sub_1DB01F6A0, v6, 0);
  }

  else
  {
    v7 = *(v5 + 8);
    v8 = *(v2 + 176);

    return v7(v8);
  }
}

uint64_t sub_1DB01F6A0()
{
  v20 = v0;
  v1 = *(v0 + 168);
  v2 = *(v0 + 144);
  v3 = v1;
  v4 = sub_1DB09D494();
  v5 = sub_1DB09DB64();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 168);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v10 = *(v0 + 88);
    v9 = *(v0 + 96);
    v11 = *(v0 + 104);
    v12 = sub_1DB09E324();
    v14 = sub_1DB015E84(v12, v13, &v19);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_1DAF16000, v4, v5, "Error storing result to geocode cache: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1E1281810](v8, -1, -1);
    MEMORY[0x1E1281810](v7, -1, -1);
  }

  else
  {
    v15 = *(v0 + 168);
  }

  v16 = *(v0 + 8);
  v17 = *(v0 + 176);

  return v16(v17);
}

uint64_t sub_1DB01F824()
{
  v1 = *(v0 + 112);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 128));
  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t GeoCoder.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 112));
  v1 = *(v0 + 160);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t GeoCoder.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 112));
  v1 = *(v0 + 160);

  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

void sub_1DB01F8E0(uint64_t a1, char a2, void *a3)
{
  v45 = *(a1 + 16);
  if (!v45)
  {
    goto LABEL_23;
  }

  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *a3;
  v8 = sub_1DAF35670(v5);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = v10 + v11;
  if (__OFADD__(v10, v11))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v13 = v8;
  v14 = v9;
  v15 = v7[3];
  v16 = v6;
  if (v15 >= v12)
  {
    if (a2)
    {
      if ((v14 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      sub_1DAF3D7FC();
      if ((v14 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

LABEL_9:
    v20 = swift_allocError();
    swift_willThrow();

    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0ECF0, &unk_1DB0A1310);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_29;
  }

  sub_1DAF3A328(v12, a2 & 1);
  v17 = *a3;
  v18 = sub_1DAF35670(v5);
  if ((v14 & 1) != (v19 & 1))
  {
LABEL_28:
    sub_1DB09E2E4();
    __break(1u);
LABEL_29:
    sub_1DB09DE44();
    MEMORY[0x1E127FE90](0xD00000000000001BLL, 0x80000001DB0CA620);
    sub_1DB09DF94();
    MEMORY[0x1E127FE90](39, 0xE100000000000000);
    sub_1DB09DFA4();
    __break(1u);
    return;
  }

  v13 = v18;
  if (v14)
  {
    goto LABEL_9;
  }

LABEL_12:
  v22 = *a3;
  *(*a3 + 8 * (v13 >> 6) + 64) |= 1 << v13;
  *(v22[6] + v13) = v5;
  *(v22[7] + 8 * v13) = v16;
  v23 = v22[2];
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (v24)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v22[2] = v25;
  if (v45 != 1)
  {
    v26 = (a1 + 56);
    v27 = 1;
    while (v27 < *(a1 + 16))
    {
      v28 = *(v26 - 8);
      v29 = *v26;
      v30 = *a3;
      v31 = sub_1DAF35670(v28);
      v33 = v30[2];
      v34 = (v32 & 1) == 0;
      v35 = v33 + v34;
      if (__OFADD__(v33, v34))
      {
        goto LABEL_25;
      }

      v36 = v31;
      v37 = v32;
      v38 = v30[3];
      v16 = v29;
      if (v38 < v35)
      {
        sub_1DAF3A328(v35, 1);
        v39 = *a3;
        v40 = sub_1DAF35670(v28);
        if ((v37 & 1) != (v41 & 1))
        {
          goto LABEL_28;
        }

        v36 = v40;
      }

      if (v37)
      {
        goto LABEL_9;
      }

      v42 = *a3;
      *(*a3 + 8 * (v36 >> 6) + 64) |= 1 << v36;
      *(v42[6] + v36) = v28;
      *(v42[7] + 8 * v36) = v16;
      v43 = v42[2];
      v24 = __OFADD__(v43, 1);
      v44 = v43 + 1;
      if (v24)
      {
        goto LABEL_26;
      }

      ++v27;
      v42[2] = v44;
      v26 += 2;
      if (v45 == v27)
      {
        goto LABEL_23;
      }
    }

    goto LABEL_27;
  }

LABEL_23:
}

uint64_t sub_1DB01FC5C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F4E8, &unk_1DB0B2700);
    v2 = sub_1DB09DDE4();
    v16 = v2;
    sub_1DB09DD34();
    if (sub_1DB09DD64())
    {
      sub_1DAF4062C(0, &qword_1ECC0E240, 0x1E695CF60);
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_1DB02030C(v10 + 1);
        }

        v2 = v16;
        v3 = *(v16 + 40);
        result = sub_1DB09DC24();
        v5 = v16 + 56;
        v6 = -1 << *(v16 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v8 == v12;
            if (v8 == v12)
            {
              v8 = 0;
            }

            v11 |= v13;
            v14 = *(v5 + 8 * v8);
          }

          while (v14 == -1);
          v9 = __clz(__rbit64(~v14)) + (v8 << 6);
        }

        *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v16 + 48) + 8 * v9) = v15;
        ++*(v16 + 16);
      }

      while (sub_1DB09DD64());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1DB01FE4C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F4F8, &unk_1DB0B2720);
  result = sub_1DB09DDD4();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_1DB09E3A4();
      sub_1DB09D794();
      result = sub_1DB09E3E4();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1DB0200AC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F500, &qword_1DB0BB1B0);
  result = sub_1DB09DDD4();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_1DB09E3A4();
      sub_1DB09D044();
      result = sub_1DB09E3E4();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1DB02030C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F4E8, &unk_1DB0B2700);
  result = sub_1DB09DDD4();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      result = sub_1DB09DC24();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1DB02055C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_1DB09DDD4();
  v8 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
    v9 = 0;
    v10 = (v5 + 56);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = *(*(v5 + 48) + (v17 | (v9 << 6)));
      v21 = *(v8 + 40);
      sub_1DB09E3A4();
      MEMORY[0x1E1280A80](v20);
      result = sub_1DB09E3E4();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v20;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_32;
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

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero((v5 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    v4 = v30;
    *(v5 + 16) = 0;
  }

  *v4 = v8;
  return result;
}

unint64_t sub_1DB0207A4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_1DB09DC24();
  v5 = -1 << *(a2 + 32);
  result = sub_1DB09DD24();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void *sub_1DB020828()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F4F8, &unk_1DB0B2720);
  v2 = *v0;
  v3 = sub_1DB09DDC4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_1DB020984()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F500, &qword_1DB0BB1B0);
  v2 = *v0;
  v3 = sub_1DB09DDC4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = *(*(v2 + 48) + v17);
        *(*(v4 + 48) + v17) = v18;
        result = sub_1DAF40674(v18, *(&v18 + 1));
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

      v16 = *(v2 + 56 + 8 * v8);
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

id sub_1DB020AE0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F4E8, &unk_1DB0B2700);
  v2 = *v0;
  v3 = sub_1DB09DDC4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        *(*(v4 + 48) + 8 * v17) = v18;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_1DB020C58(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1DB09DDC4();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 56);
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 48) + v16) = *(*(v4 + 48) + v16))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      ;
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

uint64_t sub_1DB020D88(uint64_t a1, uint64_t a2)
{
  v6 = a2;
  v71 = *MEMORY[0x1E69E9840];
  if (!*(a2 + 16))
  {

    v6 = MEMORY[0x1E69E7CD0];
    goto LABEL_40;
  }

  v8 = a1 + 64;
  v7 = *(a1 + 64);
  v9 = -1 << *(a1 + 32);
  v61 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v7;
  v12 = (63 - v9) >> 6;
  v66 = (a2 + 56);

  v15 = 0;
  v63 = v13;
  v64 = v8;
  for (i = v12; ; v12 = i)
  {
    if (!v11)
    {
      v16 = v15;
      do
      {
        v17 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          goto LABEL_42;
        }

        if (v17 >= v12)
        {
          goto LABEL_39;
        }

        v11 = *(v8 + 8 * v17);
        ++v16;
      }

      while (!v11);
      v15 = v17;
    }

    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v65 = v15;
    v20 = *(v6 + 40);
    v21 = *(v19 + ((v15 << 9) | (8 * v18)));
    v22 = sub_1DB09DC24();
    v23 = -1 << *(v6 + 32);
    v3 = v22 & ~v23;
    v2 = v3 >> 6;
    v4 = 1 << v3;
    if (((1 << v3) & v66[v3 >> 6]) != 0)
    {
      break;
    }

LABEL_6:

    v13 = v63;
    v8 = v64;
    v15 = v65;
  }

  v5 = ~v23;
  sub_1DAF4062C(0, &qword_1ECC0E240, 0x1E695CF60);
  while (1)
  {
    v24 = *(*(v6 + 48) + 8 * v3);
    v25 = sub_1DB09DC34();

    if (v25)
    {
      break;
    }

    v3 = (v3 + 1) & v5;
    v2 = v3 >> 6;
    v4 = 1 << v3;
    if (((1 << v3) & v66[v3 >> 6]) == 0)
    {
      goto LABEL_6;
    }
  }

  v26 = v64;
  v27 = v65;
  v68 = v61;
  v69 = v65;
  v70 = v11;
  v5 = v63;
  v67[0] = v63;
  v67[1] = v64;

  v30 = *(v6 + 32);
  v57 = ((1 << v30) + 63) >> 6;
  v14 = 8 * v57;
  if ((v30 & 0x3Fu) > 0xD)
  {
    goto LABEL_43;
  }

  while (2)
  {
    v58 = &v56;
    MEMORY[0x1EEE9AC00](v28, v29);
    v3 = &v56 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v3, v66, v31);
    v32 = *(v3 + 8 * v2) & ~v4;
    v33 = *(v6 + 16);
    v60 = v3;
    *(v3 + 8 * v2) = v32;
    v34 = v33 - 1;
    v35 = i;
LABEL_21:
    v59 = v34;
    while (v11)
    {
LABEL_29:
      v38 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v39 = *(v5 + 48);
      v65 = v27;
      v40 = *(v6 + 40);
      v41 = *(v39 + ((v27 << 9) | (8 * v38)));
      v42 = sub_1DB09DC24();
      v3 = -1 << *(v6 + 32);
      v43 = v42 & ~v3;
      v2 = v43 >> 6;
      v4 = 1 << v43;
      if (((1 << v43) & v66[v43 >> 6]) == 0)
      {
        goto LABEL_22;
      }

      v44 = *(*(v6 + 48) + 8 * v43);
      v45 = sub_1DB09DC34();

      if (v45)
      {
LABEL_34:

        v48 = v60[v2];
        v60[v2] = v48 & ~v4;
        v5 = v63;
        v26 = v64;
        v27 = v65;
        v35 = i;
        if ((v48 & v4) != 0)
        {
          v34 = v59 - 1;
          if (__OFSUB__(v59, 1))
          {
            __break(1u);
          }

          if (v59 == 1)
          {

            v6 = MEMORY[0x1E69E7CD0];
            goto LABEL_39;
          }

          goto LABEL_21;
        }
      }

      else
      {
        v3 = ~v3;
        while (1)
        {
          v43 = (v43 + 1) & v3;
          v2 = v43 >> 6;
          v4 = 1 << v43;
          if (((1 << v43) & v66[v43 >> 6]) == 0)
          {
            break;
          }

          v46 = *(*(v6 + 48) + 8 * v43);
          v47 = sub_1DB09DC34();

          if (v47)
          {
            goto LABEL_34;
          }
        }

LABEL_22:

        v5 = v63;
        v26 = v64;
        v27 = v65;
        v35 = i;
      }
    }

    v36 = v27;
    while (1)
    {
      v37 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v37 >= v35)
      {
        v6 = sub_1DB0214F4(v60, v57, v59, v6);
        goto LABEL_39;
      }

      v11 = *(v26 + 8 * v37);
      ++v36;
      if (v11)
      {
        v27 = v37;
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    v51 = v14;

    v52 = v51;
    if (swift_stdlib_isStackAllocationSafe())
    {

      v26 = v64;
      v27 = v65;
      continue;
    }

    break;
  }

  v53 = swift_slowAlloc();
  memcpy(v53, v66, v52);
  sub_1DB0212B8(v53, v57, v6, v3, v67);
  v55 = v54;

  MEMORY[0x1E1281810](v53, -1, -1);
  v61 = v68;
  v6 = v55;
LABEL_39:
  sub_1DAF333A4();
LABEL_40:
  v49 = *MEMORY[0x1E69E9840];
  return v6;
}

void sub_1DB0212B8(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = a5;
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v33 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        v9 = v5[3];
        v10 = v5[4];
        if (!v10)
        {
          v12 = (v5[2] + 64) >> 6;
          v13 = v5[3];
          while (1)
          {
            v11 = v13 + 1;
            if (__OFADD__(v13, 1))
            {
              __break(1u);
              goto LABEL_24;
            }

            if (v11 >= v12)
            {
              break;
            }

            v10 = *(v5[1] + 8 * v11);
            ++v13;
            if (v10)
            {
              goto LABEL_10;
            }
          }

          if (v12 <= v9 + 1)
          {
            v28 = v9 + 1;
          }

          else
          {
            v28 = (v5[2] + 64) >> 6;
          }

          v5[3] = v28 - 1;
          v5[4] = 0;

          sub_1DB0214F4(a1, a2, v30, a3);
          return;
        }

        v11 = v5[3];
LABEL_10:
        v14 = *(*(*v5 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
        v5[3] = v11;
        v5[4] = (v10 - 1) & v10;
        v15 = *(a3 + 40);
        v16 = v14;
        v17 = sub_1DB09DC24();
        v18 = -1 << *(a3 + 32);
        v19 = v17 & ~v18;
        v20 = v19 >> 6;
        v21 = 1 << v19;
        if (((1 << v19) & *(v33 + 8 * (v19 >> 6))) != 0)
        {
          break;
        }

LABEL_3:

        v5 = a5;
      }

      sub_1DAF4062C(0, &qword_1ECC0E240, 0x1E695CF60);
      v22 = *(*(a3 + 48) + 8 * v19);
      v23 = sub_1DB09DC34();

      if ((v23 & 1) == 0)
      {
        v24 = ~v18;
        do
        {
          v19 = (v19 + 1) & v24;
          v20 = v19 >> 6;
          v21 = 1 << v19;
          if (((1 << v19) & *(v33 + 8 * (v19 >> 6))) == 0)
          {
            goto LABEL_3;
          }

          v25 = *(*(a3 + 48) + 8 * v19);
          v26 = sub_1DB09DC34();
        }

        while ((v26 & 1) == 0);
      }

      v5 = a5;

      v27 = a1[v20];
      a1[v20] = v27 & ~v21;
    }

    while ((v27 & v21) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_24:
      __break(1u);
    }

    else if (v30 != 1)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_1DB0214F4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F4E8, &unk_1DB0B2700);
  result = sub_1DB09DDF4();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(v9 + 40);
    v17 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = sub_1DB09DC24();
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v9 + 48) + 8 * v21) = v17;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1DB0216E8(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    v5 = *v1;

    v6 = a1;
    v7 = sub_1DB09DD74();

    if (v7)
    {
      v8 = sub_1DB021880();

      return v8;
    }

    return 0;
  }

  v10 = v1;
  sub_1DAF4062C(0, &qword_1ECC0E240, 0x1E695CF60);
  v11 = *(v3 + 40);
  v12 = sub_1DB09DC24();
  v13 = -1 << *(v3 + 32);
  v14 = v12 & ~v13;
  if (((*(v3 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
    return 0;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v3 + 48) + 8 * v14);
    v17 = sub_1DB09DC34();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v3 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      return 0;
    }
  }

  v18 = *v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v10;
  v22 = *v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1DB020AE0();
    v20 = v22;
  }

  v21 = *(*(v20 + 48) + 8 * v14);
  sub_1DB0219E8(v14);
  result = v21;
  *v10 = v22;
  return result;
}

uint64_t sub_1DB021880()
{
  v1 = v0;
  v2 = *v0;

  v3 = sub_1DB09DD44();
  v4 = swift_unknownObjectRetain();
  v5 = sub_1DB01FC5C(v4, v3);
  v15 = v5;
  v6 = *(v5 + 40);

  v7 = sub_1DB09DC24();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    sub_1DAF4062C(0, &qword_1ECC0E240, 0x1E695CF60);
    while (1)
    {
      v11 = *(*(v5 + 48) + 8 * v9);
      v12 = sub_1DB09DC34();

      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v13 = *(*(v5 + 48) + 8 * v9);
  sub_1DB0219E8(v9);
  result = sub_1DB09DC34();
  if (result)
  {
    *v1 = v15;
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1DB0219E8(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_1DB09DD14();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 8 * v6);
        v13 = sub_1DB09DC24();

        v14 = v13 & v7;
        if (v2 >= v10)
        {
          if (v14 >= v10 && v2 >= v14)
          {
LABEL_16:
            v17 = *(v3 + 48);
            v18 = (v17 + 8 * v2);
            v19 = (v17 + 8 * v6);
            if (v2 != v6 || v18 >= v19 + 1)
            {
              *v18 = *v19;
              v2 = v6;
            }
          }
        }

        else if (v14 >= v10 || v2 >= v14)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t _s17CoreODIEssentials15GeoCoderAddressV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v6 = a1[3];
  v5 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  v10 = a1[7];
  v9 = a1[8];
  v11 = a1[9];
  v79 = a1[10];
  v13 = a1[11];
  v12 = a1[12];
  v81 = a1[13];
  v14 = a2[1];
  v15 = a2[2];
  v17 = a2[3];
  v16 = a2[4];
  v19 = a2[5];
  v18 = a2[6];
  v20 = a2[7];
  v21 = a2[8];
  v23 = a2[9];
  v22 = a2[10];
  v24 = a2[11];
  v78 = a2[12];
  v80 = a2[13];
  if (v3)
  {
    if (!v14)
    {
      return 0;
    }

    if (*a1 != *a2 || v3 != v14)
    {
      v72 = a2[6];
      v75 = a2[7];
      v62 = a1[11];
      v63 = a2[11];
      v68 = a1[4];
      v70 = a1[12];
      v64 = a2[4];
      v66 = a2[5];
      v25 = a2[10];
      v26 = a1[8];
      v27 = a1[9];
      v60 = a2[2];
      v61 = a1[2];
      v28 = a2[8];
      v29 = a1[7];
      v30 = a1[5];
      v31 = sub_1DB09E254();
      v7 = v30;
      v18 = v72;
      v20 = v75;
      v10 = v29;
      v21 = v28;
      v15 = v60;
      v4 = v61;
      v11 = v27;
      v9 = v26;
      v22 = v25;
      v19 = v66;
      v5 = v68;
      v12 = v70;
      v13 = v62;
      v24 = v63;
      v16 = v64;
      if ((v31 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v14)
  {
    return 0;
  }

  if (v6)
  {
    if (!v17)
    {
      return 0;
    }

    if (v4 != v15 || v6 != v17)
    {
      v73 = v18;
      v76 = v20;
      v69 = v5;
      v71 = v12;
      v65 = v16;
      v67 = v19;
      v32 = v22;
      v33 = v9;
      v34 = v11;
      v35 = v23;
      v36 = v21;
      v37 = v10;
      v38 = v7;
      v39 = sub_1DB09E254();
      v7 = v38;
      v18 = v73;
      v20 = v76;
      v10 = v37;
      v21 = v36;
      v23 = v35;
      v11 = v34;
      v9 = v33;
      v16 = v65;
      v22 = v32;
      v19 = v67;
      v5 = v69;
      v12 = v71;
      if ((v39 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v17)
  {
    return 0;
  }

  if (v7)
  {
    if (!v19)
    {
      return 0;
    }

    if (v5 != v16 || v7 != v19)
    {
      v74 = v18;
      v77 = v20;
      v40 = v12;
      v41 = v22;
      v42 = v9;
      v43 = v11;
      v44 = v23;
      v45 = v21;
      v46 = v10;
      v47 = sub_1DB09E254();
      v18 = v74;
      v20 = v77;
      v10 = v46;
      v21 = v45;
      v23 = v44;
      v11 = v43;
      v9 = v42;
      v22 = v41;
      v12 = v40;
      if ((v47 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v19)
  {
    return 0;
  }

  if (v10)
  {
    if (!v20)
    {
      return 0;
    }

    if (v8 != v18 || v10 != v20)
    {
      v48 = v12;
      v49 = v22;
      v50 = v9;
      v51 = v11;
      v52 = v21;
      v53 = sub_1DB09E254();
      v21 = v52;
      v11 = v51;
      v9 = v50;
      v22 = v49;
      v12 = v48;
      if ((v53 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v20)
  {
    return 0;
  }

  if (v11)
  {
    if (!v23)
    {
      return 0;
    }

    if (v9 != v21 || v11 != v23)
    {
      v54 = v12;
      v55 = v22;
      v56 = sub_1DB09E254();
      v22 = v55;
      v12 = v54;
      if ((v56 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v23)
  {
    return 0;
  }

  if (v13)
  {
    if (!v24)
    {
      return 0;
    }

    if (v79 != v22 || v13 != v24)
    {
      v57 = v12;
      v58 = sub_1DB09E254();
      v12 = v57;
      if ((v58 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v24)
  {
    return 0;
  }

  if (v81)
  {
    if (v80 && (v12 == v78 && v81 == v80 || (sub_1DB09E254() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v80)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_1DB021F0C()
{
  result = qword_1ECC0F4B0;
  if (!qword_1ECC0F4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F4B0);
  }

  return result;
}

uint64_t sub_1DB021F60(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DB021F80(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 64) = v3;
  return result;
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_1DB021FF0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 112))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1DB02204C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GeoCoder.LocationResult(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for GeoCoder.LocationResult(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 17) = v3;
  return result;
}

uint64_t sub_1DB0221D8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DB0221F4(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 1;
  }

  else
  {
    *(result + 16) = 0;
  }

  return result;
}

uint64_t sub_1DB022224(uint64_t a1)
{
  v4 = *(v1 + 56);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DAF63DEC;

  return sub_1DB01BCB8(a1, v1 + 16, v4);
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1DB0222F8()
{
  result = qword_1ECC0F4B8;
  if (!qword_1ECC0F4B8)
  {
    type metadata accessor for GeoCoder();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F4B8);
  }

  return result;
}

uint64_t sub_1DB02234C(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1DAF62CC4;

  return sub_1DB01C18C(a1, a2, v6, v7, v8);
}

uint64_t sub_1DB022420(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1DAF63DEC;

  return sub_1DB01C6F8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1DB0224E8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1DAF63DEC;

  return sub_1DAF5F30C(a1, v5);
}

unint64_t sub_1DB0225A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E6F8, &qword_1DB0AF5C0);
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_1DB0226F4(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v9 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_1DAF736D4(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    *v2 = v4;
  }

  result = sub_1DB0225A0(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_1DB022858(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = v2[33];
  v7 = v2[34];
  __swift_project_boxed_opaque_existential_1(v2 + 30, v6);
  (*(v7 + 16))(0xD00000000000001ALL, 0x80000001DB0CA640, v6, v7);
  if (!v8 || (v9 = sub_1DB022DDC(), v9 == 5))
  {
    if (v2[29])
    {
      v10 = v2[29];
      v11 = *(v2 + 280);
      if (*(v2 + 280))
      {
        goto LABEL_5;
      }
    }

    else
    {
      v10 = sub_1DAF3EE1C(MEMORY[0x1E69E7CC0]);
      v11 = *(v2 + 280);
      if (*(v2 + 280))
      {
LABEL_5:
        if (v11 == 1)
        {

          v12 = 3;
        }

        else
        {

          v12 = 4;
        }

        goto LABEL_11;
      }
    }

    LOBYTE(v22) = 1;

    v17 = sub_1DAFFF15C(&v22, a1, a2, v10);

    v12 = (v17 & 1) == 0;
LABEL_11:
    v18 = v3[1];
    v22 = *v3;
    v23 = v18;

    sub_1DB09DE44();

    v20 = 0xD00000000000001BLL;
    v21 = 0x80000001DB0CA660;
    MEMORY[0x1E127FE90](qword_1DB0B2948[v12], 0xE100000000000000);

    v14 = 0xD00000000000001BLL;
    v15 = 0x80000001DB0CA660;
    v16 = 1;
    goto LABEL_12;
  }

  v12 = v9;
  v13 = v2[1];
  v22 = *v2;
  v23 = v13;
  v20 = 0;
  v21 = 0xE000000000000000;

  sub_1DB09DE44();
  MEMORY[0x1E127FE90](0xD00000000000001ALL, 0x80000001DB0CA680);
  sub_1DB09DF94();
  MEMORY[0x1E127FE90](0xD000000000000015, 0x80000001DB0CA6A0);
  v14 = 0;
  v15 = 0xE000000000000000;
  v16 = 14;
LABEL_12:
  LOBYTE(v20) = v16;
  CoreODILogger.debug(_:category:)(v14, v15, &v20);

  return v12;
}

uint64_t sub_1DB022AE0()
{
  v1 = *v0;
  sub_1DB09E3A4();
  sub_1DB09D794();

  return sub_1DB09E3E4();
}

uint64_t sub_1DB022B34()
{
  v1 = *v0;
  sub_1DB09D794();
}

uint64_t sub_1DB022B6C()
{
  v1 = *v0;
  sub_1DB09E3A4();
  sub_1DB09D794();

  return sub_1DB09E3E4();
}

uint64_t sub_1DB022BBC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DB022DDC();
  *a2 = result;
  return result;
}