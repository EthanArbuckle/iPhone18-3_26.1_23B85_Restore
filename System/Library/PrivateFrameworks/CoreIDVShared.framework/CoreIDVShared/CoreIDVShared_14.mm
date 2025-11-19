Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> JWSSignedJSON.verify()()
{
  v3 = v1;
  v4 = v0;
  v290 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  v7 = MEMORY[0x28223BE20](v5 - 8, v6);
  v9 = (&v262 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x28223BE20](v7, v10);
  v13 = &v262 - v12;
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v262 - v15;
  v17 = sub_225CCE4D4();
  v18 = *(v17 - 8);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v22 = &v262 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v3 + 48);
  if (v23 && v23[2])
  {
    v270 = v9;
    v271 = v20;
    v288 = &type metadata for DateProvider;
    v289 = &protocol witness table for DateProvider;
    error = sub_225B2D350(MEMORY[0x277D84F90]);
    v284 = 0;
    sub_225AF18AC(v4, &v280);
    if (v2)
    {
      sub_225AF2230(&error);
      v270 = 0;
      v28 = v2;
      v269 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      v272 = swift_allocError();
      v30 = v29;
      swift_getErrorValue();
      v31 = v276;
      v32 = v2;
      sub_225B21FAC(v31, &error);

      v33 = v284;
      v271 = 0x8000000225D1C180;
      if (v284)
      {
        v268 = error;
        v34 = v286;
        v267 = v285;
        v36 = v287;
        v35 = v288;
      }

      else
      {
        error = v2;
        v52 = v2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
        sub_2259E4540();
        if (swift_dynamicCast())
        {
          v53 = v280;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
          v54 = swift_allocObject();
          *(v54 + 16) = xmmword_225CD30F0;
          *(v54 + 32) = 20;
          v55 = [v53 code];
          v56 = MEMORY[0x277D83BF8];
          *(v54 + 64) = MEMORY[0x277D83B88];
          *(v54 + 72) = v56;
          *(v54 + 40) = v55;
          v36 = sub_225B2C374(v54);
          swift_setDeallocating();
          sub_2259CB640(v54 + 32, &qword_27D73B060);
          swift_deallocClassInstance();

          v57 = v2;
          v268 = 0;
          v267 = 0;
          v34 = 0;
          v33 = MEMORY[0x277D84F90];
        }

        else
        {
          error = v2;
          v58 = v2;
          v59 = sub_225CCE954();
          v60 = swift_dynamicCast();
          v61 = *(v59 - 8);
          (*(v61 + 56))(v13, v60 ^ 1u, 1, v59);
          LODWORD(v61) = (*(v61 + 48))(v13, 1, v59);
          sub_2259CB640(v13, &unk_27D73B050);
          if (v61)
          {
            v62 = 0;
          }

          else
          {
            v62 = 23;
          }

          v268 = v62;
          v33 = MEMORY[0x277D84F90];
          v36 = sub_225B2C374(MEMORY[0x277D84F90]);
          v63 = v2;
          v267 = 0xD000000000000022;
          v34 = 0x8000000225D1C180;
        }

        v35 = v2;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      error = v36;
      sub_225B2C4A0(v269, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &error);

      v65 = error;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_225B29AA0(0, *(v33 + 2) + 1, 1, v33);
      }

      v67 = *(v33 + 2);
      v66 = *(v33 + 3);
      if (v67 >= v66 >> 1)
      {
        v33 = sub_225B29AA0((v66 > 1), v67 + 1, 1, v33);
      }

      *(v33 + 2) = v67 + 1;
      v68 = &v33[56 * v67];
      v69 = v271;
      *(v68 + 4) = 0xD000000000000022;
      *(v68 + 5) = v69;
      *(v68 + 6) = 0xD000000000000020;
      *(v68 + 7) = 0x8000000225D1BF90;
      *(v68 + 8) = 0x2928796669726576;
      *(v68 + 9) = 0xE800000000000000;
      *(v68 + 10) = 262;
      *v30 = v268;
      v70 = v267;
      *(v30 + 8) = v33;
      *(v30 + 16) = v70;
      *(v30 + 24) = v34;
      *(v30 + 32) = v65;
      *(v30 + 40) = v35;
      swift_willThrow();
    }

    else
    {
      v269 = v16;
      v25 = v280;
      v24 = v281;
      v26 = v282;
      v27 = decodeCertificateChain(fromBase64DER:)(v23);
      v277 = v25;
      v278 = v24;
      LODWORD(v268) = v26;
      v279 = v26;
      v71 = DIPOIDVerifier.verifyChain(_:forUsage:)(v27, &v277);
      v272 = 0;
      sub_225AF2230(&error);

      sub_2259F6140(v25, v24, v268);
      v72 = SecTrustCopyKey(v71);
      if (!v72)
      {
        v90 = v71;
        v271 = 0x8000000225D1BF90;
        v106 = MEMORY[0x277D84F90];
        v107 = sub_225B2C248(MEMORY[0x277D84F90]);
        sub_2259CB5EC();
        swift_allocError();
        v109 = v108;
        v110 = sub_225CCE954();
        v111 = *(v110 - 8);
        v112 = v269;
        (*(v111 + 56))(v269, 1, 1, v110);
        LODWORD(v110) = (*(v111 + 48))(v112, 1, v110);
        sub_2259CB640(v112, &unk_27D73B050);
        if (v110)
        {
          v113 = 1142;
        }

        else
        {
          v113 = 23;
        }

        v114 = sub_225B2C374(v106);
        v115 = swift_isUniquelyReferenced_nonNull_native();
        error = v114;
        sub_225B2C4A0(v107, sub_225B2AC40, 0, v115, &error);

        v116 = error;
        v117 = sub_225B29AA0(0, 1, 1, v106);
        v119 = *(v117 + 2);
        v118 = *(v117 + 3);
        if (v119 >= v118 >> 1)
        {
          v117 = sub_225B29AA0((v118 > 1), v119 + 1, 1, v117);
        }

        *(v117 + 2) = v119 + 1;
        v120 = &v117[56 * v119];
        *(v120 + 4) = 0xD00000000000003BLL;
        *(v120 + 5) = 0x8000000225D1C1B0;
        *(v120 + 6) = 0xD000000000000020;
        *(v120 + 7) = v271;
        *(v120 + 8) = 0x2928796669726576;
        *(v120 + 9) = 0xE800000000000000;
        *(v120 + 10) = 267;
        *v109 = v113;
        *(v109 + 8) = v117;
        *(v109 + 16) = 0xD00000000000003BLL;
        *(v109 + 24) = 0x8000000225D1C1B0;
        *(v109 + 32) = v116;
        *(v109 + 40) = 0;
        swift_willThrow();
        goto LABEL_45;
      }

      v268 = v72;
      v73 = *(v3 + 8);
      error = *v3;
      v284 = v73;

      MEMORY[0x22AA6CE70](46, 0xE100000000000000);
      v74 = *(v3 + 16);
      v75 = *(v3 + 24);

      MEMORY[0x22AA6CE70](v74, v75);

      sub_225CCE4B4();
      v76 = sub_225CCE484();
      v78 = v77;

      (*(v18 + 8))(v22, v271);
      if (v78 >> 60 == 15)
      {
LABEL_33:
        v90 = v71;
        v271 = 0x8000000225D1BF90;
        v91 = MEMORY[0x277D84F90];
        v92 = sub_225B2C248(MEMORY[0x277D84F90]);
        sub_2259CB5EC();
        swift_allocError();
        v94 = v93;
        v95 = sub_225CCE954();
        v96 = *(v95 - 8);
        v97 = v269;
        (*(v96 + 56))(v269, 1, 1, v95);
        LODWORD(v95) = (*(v96 + 48))(v97, 1, v95);
        sub_2259CB640(v97, &unk_27D73B050);
        if (v95)
        {
          v98 = 1143;
        }

        else
        {
          v98 = 23;
        }

        v99 = sub_225B2C374(v91);
        v100 = swift_isUniquelyReferenced_nonNull_native();
        error = v99;
        sub_225B2C4A0(v92, sub_225B2AC40, 0, v100, &error);

        v101 = error;
        v102 = sub_225B29AA0(0, 1, 1, v91);
        v104 = *(v102 + 2);
        v103 = *(v102 + 3);
        if (v104 >= v103 >> 1)
        {
          v102 = sub_225B29AA0((v103 > 1), v104 + 1, 1, v102);
        }

        *(v102 + 2) = v104 + 1;
        v105 = &v102[56 * v104];
        *(v105 + 4) = 0xD000000000000044;
        *(v105 + 5) = 0x8000000225D1C1F0;
        *(v105 + 6) = 0xD000000000000020;
        *(v105 + 7) = v271;
        *(v105 + 8) = 0x2928796669726576;
        *(v105 + 9) = 0xE800000000000000;
        *(v105 + 10) = 272;
        *v94 = v98;
        *(v94 + 8) = v102;
        *(v94 + 16) = 0xD000000000000044;
        *(v94 + 24) = 0x8000000225D1C1F0;
        *(v94 + 32) = v101;
        *(v94 + 40) = 0;
        swift_willThrow();

LABEL_45:
        return;
      }

      v271 = v76;
      v79 = *(v3 + 40);
      v280 = *(v3 + 32);
      v281 = v79;
      v277 = 45;
      v278 = 0xE100000000000000;
      v274 = 43;
      v275 = 0xE100000000000000;
      sub_2259D8654();
      v280 = sub_225CCF064();
      v281 = v80;
      v277 = 95;
      v278 = 0xE100000000000000;
      v274 = 47;
      v275 = 0xE100000000000000;
      v81 = sub_225CCF064();
      v83 = v82;

      error = v81;
      v284 = v83;

      v84 = sub_225CCE5D4();

      v85 = v84 & 3;
      if (v84 <= 0)
      {
        v85 = -(-v84 & 3);
      }

      if (v85 >= 1)
      {
        v86 = sub_225CCE6D4();
        MEMORY[0x22AA6CE70](v86);
      }

      v87 = sub_225CCCF04();
      v89 = v88;
      sub_2259CB6FC(v87, v88);

      if (v89 >> 60 == 15)
      {
        sub_2259B97A8(v271, v78);
        goto LABEL_33;
      }

      sub_2259B97A8(v87, v89);
      v121 = v271;
      if (!*(v3 + 72))
      {
        v267 = v271;
        v140 = v78;
        goto LABEL_57;
      }

      if (*(v3 + 72) == 1)
      {
        if (!*(v3 + 64) || (v122 = sub_225CCCF04(), v123 >> 60 == 15))
        {
          v270 = v87;
          v267 = 0x8000000225D1C310;
          v266 = 0x8000000225D1BF90;
          v124 = sub_225B2C248(MEMORY[0x277D84F90]);
          sub_2259CB5EC();
          swift_allocError();
          v126 = v125;
          v127 = sub_225CCE954();
          v128 = *(v127 - 8);
          v129 = v269;
          (*(v128 + 56))(v269, 1, 1, v127);
          LODWORD(v127) = (*(v128 + 48))(v129, 1, v127);
          sub_2259CB640(v129, &unk_27D73B050);
          if (v127)
          {
            v130 = 0;
          }

          else
          {
            v130 = 23;
          }

          v131 = MEMORY[0x277D84F90];
          v132 = sub_225B2C374(MEMORY[0x277D84F90]);
          v133 = swift_isUniquelyReferenced_nonNull_native();
          error = v132;
          sub_225B2C4A0(v124, sub_225B2AC40, 0, v133, &error);

          v134 = error;
          v135 = sub_225B29AA0(0, 1, 1, v131);
          v137 = *(v135 + 2);
          v136 = *(v135 + 3);
          if (v137 >= v136 >> 1)
          {
            v135 = sub_225B29AA0((v136 > 1), v137 + 1, 1, v135);
          }

          *(v135 + 2) = v137 + 1;
          v138 = &v135[56 * v137];
          v139 = v267;
          *(v138 + 4) = 0xD000000000000036;
          *(v138 + 5) = v139;
          *(v138 + 6) = 0xD000000000000020;
          *(v138 + 7) = v266;
          *(v138 + 8) = 0x2928796669726576;
          *(v138 + 9) = 0xE800000000000000;
          *(v138 + 10) = 278;
          *v126 = v130;
          *(v126 + 8) = v135;
          *(v126 + 16) = 0xD000000000000036;
LABEL_84:
          *(v126 + 24) = v139;
          *(v126 + 32) = v134;
          *(v126 + 40) = 0;
          swift_willThrow();

          sub_2259B97A8(v270, v89);
          v158 = v271;
          v159 = v78;
LABEL_85:
          sub_2259B97A8(v158, v159);
          return;
        }

        error = v122;
        v284 = v123;
        v197 = sub_225CCCF74();
        v198 = DigestSha256(v197);

        if (v198)
        {
          v199 = sub_225CCCFA4();
          v201 = v200;

          sub_225CCCFC4();
          sub_2259BEF00(v199, v201);
          sub_2259B97A8(v121, v78);
          v140 = v284;
          v267 = error;
LABEL_57:
          v141 = sub_225CCCF74();
          v142 = ECDSASHA256RawToDER(v141);

          if (!v142)
          {
            v271 = v140;
            v270 = v87;
            v266 = 0x8000000225D1BF90;
            v143 = sub_225B2C248(MEMORY[0x277D84F90]);
            sub_2259CB5EC();
            swift_allocError();
            v145 = v144;
            v146 = sub_225CCE954();
            v147 = *(v146 - 8);
            v148 = v269;
            (*(v147 + 56))(v269, 1, 1, v146);
            LODWORD(v146) = (*(v147 + 48))(v148, 1, v146);
            sub_2259CB640(v148, &unk_27D73B050);
            if (v146)
            {
              v149 = 1144;
            }

            else
            {
              v149 = 23;
            }

            v150 = MEMORY[0x277D84F90];
            v151 = sub_225B2C374(MEMORY[0x277D84F90]);
            v152 = swift_isUniquelyReferenced_nonNull_native();
            error = v151;
            sub_225B2C4A0(v143, sub_225B2AC40, 0, v152, &error);

            v153 = error;
            v154 = sub_225B29AA0(0, 1, 1, v150);
            v156 = *(v154 + 2);
            v155 = *(v154 + 3);
            if (v156 >= v155 >> 1)
            {
              v154 = sub_225B29AA0((v155 > 1), v156 + 1, 1, v154);
            }

            *(v154 + 2) = v156 + 1;
            v157 = &v154[56 * v156];
            *(v157 + 4) = 0xD00000000000003FLL;
            *(v157 + 5) = 0x8000000225D1C290;
            *(v157 + 6) = 0xD000000000000020;
            *(v157 + 7) = v266;
            *(v157 + 8) = 0x2928796669726576;
            *(v157 + 9) = 0xE800000000000000;
            *(v157 + 10) = 288;
            *v145 = v149;
            *(v145 + 8) = v154;
            *(v145 + 16) = 0xD00000000000003FLL;
            *(v145 + 24) = 0x8000000225D1C290;
            *(v145 + 32) = v153;
            *(v145 + 40) = 0;
            swift_willThrow();
            sub_2259BEF00(v267, v271);

            v158 = v270;
            v159 = v89;
            goto LABEL_85;
          }

          goto LABEL_66;
        }

        v270 = v87;
        v266 = 0x8000000225D1BF90;
        v227 = sub_225B2C248(MEMORY[0x277D84F90]);
        sub_2259CB5EC();
        v267 = swift_allocError();
        v229 = v228;
        v230 = sub_225CCE954();
        v231 = *(v230 - 8);
        v232 = v269;
        (*(v231 + 56))(v269, 1, 1, v230);
        LODWORD(v230) = (*(v231 + 48))(v232, 1, v230);
        sub_2259CB640(v232, &unk_27D73B050);
        if (v230)
        {
          v233 = 0;
        }

        else
        {
          v233 = 23;
        }

        v234 = MEMORY[0x277D84F90];
        v235 = sub_225B2C374(MEMORY[0x277D84F90]);
        v236 = swift_isUniquelyReferenced_nonNull_native();
        v280 = v235;
        sub_225B2C4A0(v227, sub_225B2AC40, 0, v236, &v280);

        v237 = v280;
        v238 = sub_225B29AA0(0, 1, 1, v234);
        v240 = *(v238 + 2);
        v239 = *(v238 + 3);
        if (v240 >= v239 >> 1)
        {
          v238 = sub_225B29AA0((v239 > 1), v240 + 1, 1, v238);
        }

        *(v238 + 2) = v240 + 1;
        v241 = &v238[56 * v240];
        *(v241 + 4) = 0xD000000000000041;
        *(v241 + 5) = 0x8000000225D1C240;
        *(v241 + 6) = 0xD000000000000020;
        *(v241 + 7) = v266;
        *(v241 + 8) = 0x2928796669726576;
        *(v241 + 9) = 0xE800000000000000;
        *(v241 + 10) = 281;
        *v229 = v233;
        *(v229 + 8) = v238;
        *(v229 + 16) = 0xD000000000000041;
        *(v229 + 24) = 0x8000000225D1C240;
        *(v229 + 32) = v237;
        *(v229 + 40) = 0;
        swift_willThrow();
        sub_2259B97A8(v271, v78);

        sub_2259B97A8(v270, v89);
        sub_2259BEF00(error, v284);
      }

      else
      {
        v160 = sub_225CCCF74();
        v161 = DigestSha256(v160);

        if (!v161)
        {
          v270 = v87;
          v267 = 0x8000000225D1C240;
          v266 = 0x8000000225D1BF90;
          v184 = sub_225B2C248(MEMORY[0x277D84F90]);
          sub_2259CB5EC();
          swift_allocError();
          v126 = v185;
          v186 = sub_225CCE954();
          v187 = *(v186 - 8);
          v188 = v269;
          (*(v187 + 56))(v269, 1, 1, v186);
          LODWORD(v186) = (*(v187 + 48))(v188, 1, v186);
          sub_2259CB640(v188, &unk_27D73B050);
          if (v186)
          {
            v189 = 0;
          }

          else
          {
            v189 = 23;
          }

          v190 = MEMORY[0x277D84F90];
          v191 = sub_225B2C374(MEMORY[0x277D84F90]);
          v192 = swift_isUniquelyReferenced_nonNull_native();
          error = v191;
          sub_225B2C4A0(v184, sub_225B2AC40, 0, v192, &error);

          v134 = error;
          v193 = sub_225B29AA0(0, 1, 1, v190);
          v195 = *(v193 + 2);
          v194 = *(v193 + 3);
          if (v195 >= v194 >> 1)
          {
            v193 = sub_225B29AA0((v194 > 1), v195 + 1, 1, v193);
          }

          *(v193 + 2) = v195 + 1;
          v196 = &v193[56 * v195];
          v139 = v267;
          *(v196 + 4) = 0xD000000000000041;
          *(v196 + 5) = v139;
          *(v196 + 6) = 0xD000000000000020;
          *(v196 + 7) = v266;
          *(v196 + 8) = 0x2928796669726576;
          *(v196 + 9) = 0xE800000000000000;
          *(v196 + 10) = 293;
          *v126 = v189;
          *(v126 + 8) = v193;
          *(v126 + 16) = 0xD000000000000041;
          goto LABEL_84;
        }

        v267 = sub_225CCCFA4();
        v140 = v162;

        sub_2259B97A8(v121, v78);
        v163 = sub_225CCCF74();
        v142 = ECDSASHA256RawToDER(v163);

        if (v142)
        {
LABEL_66:
          v271 = v140;
          v164 = sub_225CCCFA4();
          v269 = v165;

          sub_2259B97A8(v87, v89);
          v166 = objc_opt_self();
          v167 = [v166 standardUserDefaults];
          if (qword_28105B9F0 != -1)
          {
            swift_once();
          }

          v168 = byte_28105B9F8;
          if (byte_28105B9F8 == 1)
          {
            v169 = sub_225CCE444();
            v170 = [v167 BOOLForKey_];

            if (v170)
            {
              sub_2259BEF00(v267, v271);

              sub_2259BEF00(v164, v269);
              return;
            }
          }

          else
          {
          }

          v171 = [v166 standardUserDefaults];
          v172 = v171;
          if (v168)
          {
            v173 = sub_225CCE444();
            v174 = [v172 BOOLForKey_];

            v175 = v267;
            v176 = v269;
            if (v174)
            {

              sub_2259BEF00(v175, v271);
              v177 = v164;
              v178 = v176;
LABEL_115:
              sub_2259BEF00(v177, v178);
              return;
            }
          }

          else
          {

            v175 = v267;
          }

          v179 = *MEMORY[0x277CDC300];
          error = 0;
          v180 = v271;
          v181 = sub_225CCCF74();
          v182 = sub_225CCCF74();
          v183 = v268;
          LODWORD(v179) = SecKeyVerifySignature(v268, v179, v181, v182, &error);

          if (v179)
          {

            sub_2259BEF00(v175, v180);
            v177 = v164;
          }

          else
          {
            v266 = v164;
            LOWORD(v280) = 253;
            v202 = errorFromCFError(_:_:_:)(error, 0xD000000000000023, 0x8000000225D174F0, &v280);
            swift_willThrow();
            v203 = "ed to hash the public key";
            v204 = v202;
            v205 = sub_225B2C248(MEMORY[0x277D84F90]);
            sub_2259CB5EC();
            v272 = swift_allocError();
            v207 = v206;
            swift_getErrorValue();
            v208 = v273;
            v209 = v202;
            sub_225B21FAC(v208, &error);

            v210 = v284;
            if (v284)
            {
              v270 = error;
              v265 = v285;
              v264 = v286;
              v211 = v287;
              v263 = v288;
            }

            else
            {
              v262 = "ed to hash the public key";
              error = v202;
              v242 = v202;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
              sub_2259E4540();
              if (swift_dynamicCast())
              {
                v243 = v280;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
                v244 = swift_allocObject();
                *(v244 + 16) = xmmword_225CD30F0;
                *(v244 + 32) = 20;
                v245 = [v243 code];
                v246 = MEMORY[0x277D83BF8];
                *(v244 + 64) = MEMORY[0x277D83B88];
                *(v244 + 72) = v246;
                *(v244 + 40) = v245;
                v211 = sub_225B2C374(v244);
                swift_setDeallocating();
                sub_2259CB640(v244 + 32, &qword_27D73B060);
                swift_deallocClassInstance();

                v247 = v202;
                v270 = 0;
                v265 = 0;
                v264 = 0;
                v210 = MEMORY[0x277D84F90];
              }

              else
              {
                error = v202;
                v248 = v202;
                v249 = sub_225CCE954();
                v250 = v270;
                v251 = swift_dynamicCast();
                v252 = *(v249 - 8);
                (*(v252 + 56))(v250, v251 ^ 1u, 1, v249);
                LODWORD(v252) = (*(v252 + 48))(v250, 1, v249);
                sub_2259CB640(v250, &unk_27D73B050);
                if (v252)
                {
                  v253 = 0;
                }

                else
                {
                  v253 = 23;
                }

                v270 = v253;
                v210 = MEMORY[0x277D84F90];
                v211 = sub_225B2C374(MEMORY[0x277D84F90]);
                v254 = v202;
                v265 = 0xD000000000000037;
                v264 = 0x8000000225D1C2D0;
              }

              v263 = v202;
              v203 = v262;
            }

            v255 = v203 | 0x8000000000000000;
            v256 = swift_isUniquelyReferenced_nonNull_native();
            error = v211;
            sub_225B2C4A0(v205, sub_225B2AC40, 0, v256, &error);

            v257 = error;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v210 = sub_225B29AA0(0, *(v210 + 2) + 1, 1, v210);
            }

            v259 = *(v210 + 2);
            v258 = *(v210 + 3);
            if (v259 >= v258 >> 1)
            {
              v210 = sub_225B29AA0((v258 > 1), v259 + 1, 1, v210);
            }

            *(v210 + 2) = v259 + 1;
            v260 = &v210[56 * v259];
            *(v260 + 4) = 0xD000000000000037;
            *(v260 + 5) = 0x8000000225D1C2D0;
            *(v260 + 6) = 0xD000000000000020;
            *(v260 + 7) = v255;
            *(v260 + 8) = 0x2928796669726576;
            *(v260 + 9) = 0xE800000000000000;
            *(v260 + 10) = 308;
            *v207 = v270;
            v261 = v265;
            *(v207 + 8) = v210;
            *(v207 + 16) = v261;
            *(v207 + 24) = v264;
            *(v207 + 32) = v257;
            *(v207 + 40) = v263;
            swift_willThrow();
            sub_2259BEF00(v267, v271);

            v177 = v266;
          }

          v178 = v269;
          goto LABEL_115;
        }

        v271 = v140;
        v270 = v87;
        v266 = 0x8000000225D1BF90;
        v212 = sub_225B2C248(MEMORY[0x277D84F90]);
        sub_2259CB5EC();
        swift_allocError();
        v214 = v213;
        v215 = sub_225CCE954();
        v216 = *(v215 - 8);
        v217 = v269;
        (*(v216 + 56))(v269, 1, 1, v215);
        LODWORD(v215) = (*(v216 + 48))(v217, 1, v215);
        sub_2259CB640(v217, &unk_27D73B050);
        if (v215)
        {
          v218 = 1144;
        }

        else
        {
          v218 = 23;
        }

        v219 = MEMORY[0x277D84F90];
        v220 = sub_225B2C374(MEMORY[0x277D84F90]);
        v221 = swift_isUniquelyReferenced_nonNull_native();
        error = v220;
        sub_225B2C4A0(v212, sub_225B2AC40, 0, v221, &error);

        v222 = error;
        v223 = sub_225B29AA0(0, 1, 1, v219);
        v225 = *(v223 + 2);
        v224 = *(v223 + 3);
        if (v225 >= v224 >> 1)
        {
          v223 = sub_225B29AA0((v224 > 1), v225 + 1, 1, v223);
        }

        *(v223 + 2) = v225 + 1;
        v226 = &v223[56 * v225];
        *(v226 + 4) = 0xD00000000000003FLL;
        *(v226 + 5) = 0x8000000225D1C290;
        *(v226 + 6) = 0xD000000000000020;
        *(v226 + 7) = v266;
        *(v226 + 8) = 0x2928796669726576;
        *(v226 + 9) = 0xE800000000000000;
        *(v226 + 10) = 297;
        *v214 = v218;
        *(v214 + 8) = v223;
        *(v214 + 16) = 0xD00000000000003FLL;
        *(v214 + 24) = 0x8000000225D1C290;
        *(v214 + 32) = v222;
        *(v214 + 40) = 0;
        swift_willThrow();

        sub_2259B97A8(v270, v89);
        sub_2259BEF00(v267, v271);
      }
    }
  }

  else
  {
    v272 = 0x8000000225D1BF90;
    v37 = v16;
    v38 = MEMORY[0x277D84F90];
    v39 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v41 = v40;
    v42 = sub_225CCE954();
    v43 = *(v42 - 8);
    (*(v43 + 56))(v37, 1, 1, v42);
    LODWORD(v42) = (*(v43 + 48))(v37, 1, v42);
    sub_2259CB640(v37, &unk_27D73B050);
    if (v42)
    {
      v44 = 107;
    }

    else
    {
      v44 = 23;
    }

    v45 = sub_225B2C374(v38);
    v46 = swift_isUniquelyReferenced_nonNull_native();
    error = v45;
    sub_225B2C4A0(v39, sub_225B2AC40, 0, v46, &error);

    v47 = error;
    v48 = sub_225B29AA0(0, 1, 1, v38);
    v50 = *(v48 + 2);
    v49 = *(v48 + 3);
    if (v50 >= v49 >> 1)
    {
      v48 = sub_225B29AA0((v49 > 1), v50 + 1, 1, v48);
    }

    *(v48 + 2) = v50 + 1;
    v51 = &v48[56 * v50];
    *(v51 + 4) = 0xD00000000000002DLL;
    *(v51 + 5) = 0x8000000225D1C150;
    *(v51 + 6) = 0xD000000000000020;
    *(v51 + 7) = v272;
    *(v51 + 8) = 0x2928796669726576;
    *(v51 + 9) = 0xE800000000000000;
    *(v51 + 10) = 254;
    *v41 = v44;
    *(v41 + 8) = v48;
    *(v41 + 16) = 0xD00000000000002DLL;
    *(v41 + 24) = 0x8000000225D1C150;
    *(v41 + 32) = v47;
    *(v41 + 40) = 0;
    swift_willThrow();
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> JWSSignedJSON.setCertificateChain(_:)(Swift::OpaquePointer a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v23 - v5;
  if (*(a1._rawValue + 2))
  {

    v1[6]._rawValue = a1._rawValue;
  }

  else
  {
    v23 = 0x8000000225D1C380;
    v24 = 0x8000000225D1BF90;
    v7 = MEMORY[0x277D84F90];
    v8 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v10 = v9;
    v11 = sub_225CCE954();
    v12 = *(v11 - 8);
    (*(v12 + 56))(v6, 1, 1, v11);
    LODWORD(v11) = (*(v12 + 48))(v6, 1, v11);
    sub_2259CB640(v6, &unk_27D73B050);
    if (v11)
    {
      v13 = 108;
    }

    else
    {
      v13 = 23;
    }

    v14 = sub_225B2C374(v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v14;
    sub_225B2C4A0(v8, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v25);

    v16 = v25;
    v17 = sub_225B29AA0(0, 1, 1, v7);
    v19 = *(v17 + 2);
    v18 = *(v17 + 3);
    if (v19 >= v18 >> 1)
    {
      v17 = sub_225B29AA0((v18 > 1), v19 + 1, 1, v17);
    }

    *(v17 + 2) = v19 + 1;
    v20 = &v17[56 * v19];
    *(v20 + 4) = 0xD000000000000026;
    *(v20 + 5) = 0x8000000225D1C350;
    v21 = v24;
    *(v20 + 6) = 0xD000000000000020;
    *(v20 + 7) = v21;
    v22 = v23;
    *(v20 + 8) = 0xD000000000000017;
    *(v20 + 9) = v22;
    *(v20 + 10) = 160;
    *v10 = v13;
    *(v10 + 8) = v17;
    *(v10 + 16) = 0xD000000000000026;
    *(v10 + 24) = 0x8000000225D1C350;
    *(v10 + 32) = v16;
    *(v10 + 40) = 0;
    swift_willThrow();
  }
}

Swift::Void __swiftcall JWSSignedJSON.setSalt(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;

  v1[17] = countAndFlagsBits;
  v1[18] = object;
  v4 = v1[12];
  if (!v4)
  {
    v4 = MEMORY[0x277D84F90];
    v1[12] = MEMORY[0x277D84F90];
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_225B29BC8(0, *(v4 + 2) + 1, 1, v4);
  }

  v6 = *(v4 + 2);
  v5 = *(v4 + 3);
  if (v6 >= v5 >> 1)
  {
    v4 = sub_225B29BC8((v5 > 1), v6 + 1, 1, v4);
  }

  *(v4 + 2) = v6 + 1;
  v7 = &v4[16 * v6];
  *(v7 + 4) = 1953259891;
  *(v7 + 5) = 0xE400000000000000;
  v1[12] = v4;
}

uint64_t sub_225AEF938(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v139 = &v132 - v6;
  v7 = sub_225CCE4D4();
  v137 = *(v7 - 8);
  v138 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v136 = &v132 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_225CCD954();
  v141 = *(v10 - 8);
  v142 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v140 = &v132 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_225CCC9A4();
  v145 = *(v13 - 8);
  v146 = v13;
  MEMORY[0x28223BE20](v13, v14);
  v16 = (&v132 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_225CCD0B4();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v132 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s13CoreIDVShared12DateProviderV3now10Foundation0C0Vvg_0();
  v22 = UTCTimestamp(_:)();
  v24 = v23;
  (*(v18 + 8))(v21, v17);

  *(v2 + 120) = v22;
  *(v2 + 128) = v24;
  v25 = *(v2 + 96);
  if (!v25)
  {
    v25 = MEMORY[0x277D84F90];
    *(v2 + 96) = MEMORY[0x277D84F90];
  }

  v26 = a1[2];
  v144 = a1[3];
  v27 = a1[4];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v143 = a1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v25 = sub_225B29BC8(0, *(v25 + 2) + 1, 1, v25);
  }

  v30 = *(v25 + 2);
  v29 = *(v25 + 3);
  if (v30 >= v29 >> 1)
  {
    v25 = sub_225B29BC8((v29 > 1), v30 + 1, 1, v25);
  }

  *(v25 + 2) = v30 + 1;
  v31 = &v25[16 * v30];
  *(v31 + 4) = 0x64657461657263;
  *(v31 + 5) = 0xE700000000000000;
  *(v2 + 96) = v25;
  sub_225CCC9E4();
  swift_allocObject();
  v32 = sub_225CCC9D4();
  *v16 = 0x7974696E69666E49;
  v16[1] = 0xE800000000000000;
  v16[2] = 0x74696E69666E492DLL;
  v16[3] = 0xE900000000000079;
  v16[4] = 5136718;
  v16[5] = 0xE300000000000000;
  (*(v145 + 104))(v16, *MEMORY[0x277CC8788], v146);
  sub_225CCC9B4();
  v33 = *(v2 + 88);
  v34 = *(v2 + 120);
  v167[2] = *(v2 + 104);
  v167[3] = v34;
  v167[4] = *(v2 + 136);
  v167[0] = *(v2 + 72);
  v167[1] = v33;
  v35 = *(v2 + 88);
  v36 = *(v2 + 120);
  v164 = *(v2 + 104);
  v165 = v36;
  v166 = *(v2 + 136);
  v162 = *(v2 + 72);
  v163 = v35;
  v37 = type metadata accessor for JWSSignedJSON.DIPJWSProtectedHeader();
  v146 = v26;
  v38 = v37;
  v39 = *(v37 - 8);
  (*(v39 + 16))(&v157, v167, v37);
  swift_getWitnessTable();
  v40 = v147;
  v41 = sub_225CCC9C4();
  if (!v40)
  {
    v43 = v41;
    v44 = v42;
    v159 = v164;
    v160 = v165;
    v161 = v166;
    v157 = v162;
    v158 = v163;
    (*(v39 + 8))(&v157, v38);
    v45 = sub_225CCCF84();
    v144 = v44;
    v145 = v32;
    v150 = v45;
    v151 = v46;
    *&v148[0] = 43;
    *(&v148[0] + 1) = 0xE100000000000000;
    v154 = 45;
    v155 = 0xE100000000000000;
    sub_2259D8654();
    v147 = v27;
    v47 = sub_225CCF064();
    v135 = v43;
    v49 = v48;

    v150 = v47;
    v151 = v49;
    *&v148[0] = 47;
    *(&v148[0] + 1) = 0xE100000000000000;
    v154 = 95;
    v155 = 0xE100000000000000;
    v50 = sub_225CCF064();
    v52 = v51;

    v150 = v50;
    v151 = v52;
    *&v148[0] = 61;
    *(&v148[0] + 1) = 0xE100000000000000;
    v154 = 0;
    v155 = 0xE000000000000000;
    v53 = sub_225CCF064();
    v55 = v54;

    *v2 = v53;
    *(v2 + 8) = v55;
    v56 = sub_225CCC9C4();
    v92 = v91;
    v134 = v53;
    v139 = v55;
    v147 = 0;
    v93 = v56;
    v150 = sub_225CCCF84();
    v151 = v94;
    *&v148[0] = 43;
    *(&v148[0] + 1) = 0xE100000000000000;
    v154 = 45;
    v155 = 0xE100000000000000;
    v95 = sub_225CCF064();
    v146 = v92;
    v96 = v93;
    v98 = v97;

    v150 = v95;
    v151 = v98;
    *&v148[0] = 47;
    *(&v148[0] + 1) = 0xE100000000000000;
    v154 = 95;
    v155 = 0xE100000000000000;
    v99 = sub_225CCF064();
    v101 = v100;

    v150 = v99;
    v151 = v101;
    *&v148[0] = 61;
    *(&v148[0] + 1) = 0xE100000000000000;
    v154 = 0;
    v155 = 0xE000000000000000;
    v102 = sub_225CCF064();
    v104 = v103;

    v132 = v104;
    v133 = v102;
    *(v2 + 16) = v102;
    *(v2 + 24) = v104;
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v105 = off_28105B918;
    v106 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v107 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v107));
    v109 = v140;
    v108 = v141;
    v110 = v142;
    v141[2](v140, &v105[v106], v142);
    os_unfair_lock_unlock(&v105[v107]);
    v111 = v146;
    sub_2259CB710(v96, v146);
    v112 = sub_225CCD934();
    v113 = sub_225CCED04();
    sub_2259BEF00(v96, v111);
    v114 = os_log_type_enabled(v112, v113);
    v143 = v96;
    if (!v114)
    {

      (v108[1])(v109, v110);
      v124 = v139;
      v125 = v134;
LABEL_39:
      v150 = v125;
      v151 = v124;

      MEMORY[0x22AA6CE70](46, 0xE100000000000000);

      MEMORY[0x22AA6CE70](v133, v132);

      v131 = v136;
      sub_225CCE4B4();
      v64 = sub_225CCE484();

      sub_2259BEF00(v135, v144);

      sub_2259BEF00(v143, v146);
      (*(v137 + 8))(v131, v138);
      return v64;
    }

    v115 = swift_slowAlloc();
    v116 = swift_slowAlloc();
    v153 = v116;
    *v115 = 136315138;
    sub_2259CB710(v96, v111);
    v117 = v147;
    v118 = sub_2259D7EC8(v96, v111);
    v147 = v117;
    if (v119)
    {
      v120 = v118;
      v121 = v119;
      v122 = v96;
      v123 = v111;
    }

    else
    {
      v154 = v96;
      v155 = v111;
      sub_2259CB710(v96, v111);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC38);
      if (swift_dynamicCast())
      {
        sub_2259D8B6C(v148, &v150);
        __swift_project_boxed_opaque_existential_1(&v150, v152);
        if (sub_225CCF5A4())
        {
          sub_2259BEF00(v143, v146);
          __swift_project_boxed_opaque_existential_1(&v150, v152);
          v126 = v147;
          sub_225CCF594();
          v147 = v126;
          v121 = *(&v148[0] + 1);
          v120 = *&v148[0];
          __swift_destroy_boxed_opaque_existential_0(&v150);
LABEL_38:
          v124 = v139;
          v125 = v134;
          v130 = sub_2259BE198(v120, v121, &v153);

          *(v115 + 4) = v130;
          _os_log_impl(&dword_2259A7000, v112, v113, "jws signed payload is %s", v115, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v116);
          MEMORY[0x22AA6F950](v116, -1, -1);
          MEMORY[0x22AA6F950](v115, -1, -1);

          (v141[1])(v140, v142);
          goto LABEL_39;
        }

        __swift_destroy_boxed_opaque_existential_0(&v150);
      }

      else
      {
        v149 = 0;
        memset(v148, 0, sizeof(v148));
        sub_2259CB640(v148, &qword_27D73AC40);
      }

      v127 = v143;
      v128 = v146;
      v120 = sub_2259D6F7C(v143, v146);
      v121 = v129;
      v122 = v127;
      v123 = v128;
    }

    sub_2259BEF00(v122, v123);
    goto LABEL_38;
  }

  v159 = v164;
  v160 = v165;
  v161 = v166;
  v157 = v162;
  v158 = v163;
  (*(v39 + 8))(&v157, v38);

  *&v162 = 0;
  *(&v162 + 1) = 0xE000000000000000;
  sub_225CCF204();
  MEMORY[0x22AA6CE70](0xD00000000000003DLL, 0x8000000225D1C490);
  swift_getErrorValue();
  sub_225CCF904();
  v146 = *(&v162 + 1);
  v57 = v162;
  v58 = "ed to hash the public key";
  v59 = v40;
  v145 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  v147 = swift_allocError();
  v61 = v60;
  swift_getErrorValue();
  v62 = v156;
  v63 = v40;
  sub_225B21FAC(v62, &v162);

  v64 = *(&v162 + 1);
  if (*(&v162 + 1))
  {
    v143 = v163;
    v144 = v162;
    v141 = *(&v164 + 1);
    v65 = v164;
    v142 = *(&v163 + 1);
    v66 = v57;
  }

  else
  {
    v140 = "ed to hash the public key";
    *&v162 = v40;
    v67 = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
    sub_2259E4540();
    if (swift_dynamicCast())
    {
      v68 = v157;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_225CD30F0;
      *(inited + 32) = 20;
      v70 = [v68 code];
      v71 = MEMORY[0x277D83BF8];
      *(inited + 64) = MEMORY[0x277D83B88];
      *(inited + 72) = v71;
      *(inited + 40) = v70;
      v65 = sub_225B2C374(inited);
      swift_setDeallocating();
      sub_2259CB640(inited + 32, &qword_27D73B060);

      v72 = v40;
      v142 = 0;
      v143 = 0;
      v64 = MEMORY[0x277D84F90];
      v144 = 121;
      v141 = v40;
      v66 = v57;
    }

    else
    {
      *&v162 = v40;
      v73 = v40;
      v74 = sub_225CCE954();
      v75 = v139;
      v76 = swift_dynamicCast();
      v77 = *(v74 - 8);
      (*(v77 + 56))(v75, v76 ^ 1u, 1, v74);
      LODWORD(v77) = (*(v77 + 48))(v75, 1, v74);
      sub_2259CB640(v75, &unk_27D73B050);
      if (v77)
      {
        v78 = 121;
      }

      else
      {
        v78 = 23;
      }

      v144 = v78;
      v79 = v146;

      v64 = MEMORY[0x277D84F90];
      v65 = sub_225B2C374(MEMORY[0x277D84F90]);
      v80 = v40;
      v66 = v57;
      v142 = v79;
      v143 = v57;
      v141 = v40;
    }

    v58 = v140;
  }

  v81 = v58 | 0x8000000000000000;
  v82 = swift_isUniquelyReferenced_nonNull_native();
  *&v162 = v65;
  sub_225B2C4A0(v145, sub_225B2AC40, 0, v82, &v162);

  v83 = v162;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v64 = sub_225B29AA0(0, *(v64 + 16) + 1, 1, v64);
  }

  v85 = *(v64 + 16);
  v84 = *(v64 + 24);
  if (v85 >= v84 >> 1)
  {
    v64 = sub_225B29AA0((v84 > 1), v85 + 1, 1, v64);
  }

  *(v64 + 16) = v85 + 1;
  v86 = (v64 + 56 * v85);
  v87 = v146;
  v86[4] = v66;
  v86[5] = v87;
  v86[6] = 0xD000000000000020;
  v86[7] = v81;
  v86[8] = 0x5365426F54746567;
  v86[9] = 0xEF292864656E6769;
  v86[10] = 209;
  v88 = v143;
  *v61 = v144;
  *(v61 + 8) = v64;
  *(v61 + 16) = v88;
  v89 = v141;
  *(v61 + 24) = v142;
  *(v61 + 32) = v83;
  *(v61 + 40) = v89;
  swift_willThrow();

  return v64;
}

void JWSSignedJSON.encode(to:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v123 = a1;
  v128 = sub_225CCF324();
  v121 = *(v128 - 1);
  v6 = MEMORY[0x28223BE20](v128, v5);
  v120 = v114 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v8);
  v127 = v114 - v9;
  v122 = *(a2 + 24);
  type metadata accessor for JWSSignedJSON.CodingKeys();
  swift_getWitnessTable();
  v10 = sub_225CCF7F4();
  v125 = *(v10 - 8);
  v126 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v124 = v114 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  v15 = MEMORY[0x28223BE20](v13 - 8, v14);
  v17 = MEMORY[0x28223BE20](v15, v16);
  MEMORY[0x28223BE20](v17, v18);
  v22 = v114 - v21;
  v23 = v3[3];
  v24 = HIBYTE(v23) & 0xF;
  if ((v23 & 0x2000000000000000) == 0)
  {
    v24 = v3[2] & 0xFFFFFFFFFFFFLL;
  }

  if (!v24)
  {
    goto LABEL_12;
  }

  v25 = *v3;
  v26 = v3[1];
  v27 = HIBYTE(v26) & 0xF;
  if ((v26 & 0x2000000000000000) == 0)
  {
    v27 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v27)
  {
    goto LABEL_12;
  }

  v28 = v3[4];
  v29 = v3[5];
  v30 = HIBYTE(v29) & 0xF;
  if ((v29 & 0x2000000000000000) == 0)
  {
    v30 = v28 & 0xFFFFFFFFFFFFLL;
  }

  if (v30)
  {
    v117 = v3[2];
    v118 = v25;
    v114[0] = v29;
    v114[1] = v28;
    v115 = v20;
    v116 = v19;
    v31 = v123[3];
    v119 = v123[4];
    __swift_project_boxed_opaque_existential_1(v123, v31);
    v32 = v124;
    sub_225CCFCE4();
    v33 = v3[8];
    v132 = *(v3 + 3);
    v133 = v33;
    LOBYTE(v138) = 0;
    type metadata accessor for JWSSignedJSON.DIPJWSUnprotectedHeader();

    swift_getWitnessTable();
    v34 = v126;
    v35 = v129;
    sub_225CCF7E4();
    if (v35)
    {

      (*(v125 + 8))(v32, v34);
      v36 = v127;
      v138 = v35;
      v51 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
      v52 = v128;
      if (swift_dynamicCast())
      {

        v54 = v120;
        v53 = v121;
        (*(v121 + 32))(v120, v36, v52);
        v127 = 0x8000000225D1C3E0;
        v55 = swift_allocError();
        (*(v53 + 16))(v56, v54, v52);
        v125 = "ed to hash the public key";
        v126 = sub_225B2C248(MEMORY[0x277D84F90]);
        sub_2259CB5EC();
        v129 = swift_allocError();
        v58 = v57;
        swift_getErrorValue();
        v59 = v131;
        v60 = v55;
        sub_225B21FAC(v59, &v132);

        v61 = *(&v132 + 1);
        if (*(&v132 + 1))
        {
          v123 = v133;
          v124 = v132;
          v122 = v134;
          v62 = v135;
          v63 = v136;
        }

        else
        {
          *&v132 = v55;
          v72 = v55;
          sub_2259E4540();
          if (swift_dynamicCast())
          {
            v73 = v130;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_225CD30F0;
            *(inited + 32) = 20;
            v75 = [v73 code];
            v76 = MEMORY[0x277D83BF8];
            *(inited + 64) = MEMORY[0x277D83B88];
            *(inited + 72) = v76;
            *(inited + 40) = v75;
            v62 = sub_225B2C374(inited);
            swift_setDeallocating();
            sub_2259CB640(inited + 32, &qword_27D73B060);

            v77 = v55;
            v122 = 0;
            v123 = 0;
            v61 = MEMORY[0x277D84F90];
            v124 = 121;
          }

          else
          {
            *&v132 = v55;
            v84 = v55;
            v85 = sub_225CCE954();
            v86 = v116;
            v87 = swift_dynamicCast();
            v88 = *(v85 - 8);
            (*(v88 + 56))(v86, v87 ^ 1u, 1, v85);
            LODWORD(v85) = (*(v88 + 48))(v86, 1, v85);
            sub_2259CB640(v86, &unk_27D73B050);
            if (v85)
            {
              v89 = 121;
            }

            else
            {
              v89 = 23;
            }

            v124 = v89;
            v61 = MEMORY[0x277D84F90];
            v62 = sub_225B2C374(MEMORY[0x277D84F90]);
            v90 = v55;
            v122 = v127;
            v123 = 0xD000000000000012;
          }

          v63 = v55;
        }

        v91 = v125 | 0x8000000000000000;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v132 = v62;
        sub_225B2C4A0(v126, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v132);

        v93 = v132;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v61 = sub_225B29AA0(0, *(v61 + 2) + 1, 1, v61);
        }

        v95 = *(v61 + 2);
        v94 = *(v61 + 3);
        if (v95 >= v94 >> 1)
        {
          v61 = sub_225B29AA0((v94 > 1), v95 + 1, 1, v61);
        }

        *(v61 + 2) = v95 + 1;
        v96 = &v61[56 * v95];
        v97 = v127;
        *(v96 + 4) = 0xD000000000000012;
        *(v96 + 5) = v97;
        *(v96 + 6) = 0xD000000000000020;
        *(v96 + 7) = v91;
        *(v96 + 8) = 0x742865646F636E65;
        *(v96 + 9) = 0xEB00000000293A6FLL;
        *(v96 + 10) = 243;
        v98 = v123;
        *v58 = v124;
        *(v58 + 8) = v61;
        *(v58 + 16) = v98;
        *(v58 + 24) = v122;
        *(v58 + 32) = v93;
        *(v58 + 40) = v63;
        swift_willThrow();
        (*(v121 + 8))(v120, v128);
      }

      else
      {

        v128 = 0x8000000225D1C3A0;
        v126 = "ed to hash the public key";
        v64 = v35;
        v127 = sub_225B2C248(MEMORY[0x277D84F90]);
        sub_2259CB5EC();
        v129 = swift_allocError();
        v66 = v65;
        swift_getErrorValue();
        v67 = v137;
        v68 = v35;
        sub_225B21FAC(v67, &v132);

        v69 = *(&v132 + 1);
        if (*(&v132 + 1))
        {
          v124 = v133;
          v125 = v132;
          v123 = v134;
          v70 = v135;
          v71 = v136;
        }

        else
        {
          *&v132 = v35;
          v78 = v35;
          sub_2259E4540();
          if (swift_dynamicCast())
          {
            v79 = v138;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
            v80 = swift_initStackObject();
            *(v80 + 16) = xmmword_225CD30F0;
            *(v80 + 32) = 20;
            v81 = [v79 code];
            v82 = MEMORY[0x277D83BF8];
            *(v80 + 64) = MEMORY[0x277D83B88];
            *(v80 + 72) = v82;
            *(v80 + 40) = v81;
            v70 = sub_225B2C374(v80);
            swift_setDeallocating();
            sub_2259CB640(v80 + 32, &qword_27D73B060);

            v83 = v35;
            v124 = 0;
            v125 = 0;
            v123 = 0;
            v69 = MEMORY[0x277D84F90];
          }

          else
          {
            *&v132 = v35;
            v99 = v35;
            v100 = sub_225CCE954();
            v101 = v115;
            v102 = swift_dynamicCast();
            v103 = *(v100 - 8);
            (*(v103 + 56))(v101, v102 ^ 1u, 1, v100);
            LODWORD(v100) = (*(v103 + 48))(v101, 1, v100);
            sub_2259CB640(v101, &unk_27D73B050);
            if (v100)
            {
              v104 = 0;
            }

            else
            {
              v104 = 23;
            }

            v125 = v104;
            v69 = MEMORY[0x277D84F90];
            v70 = sub_225B2C374(MEMORY[0x277D84F90]);
            v105 = v35;
            v123 = v128;
            v124 = 0xD000000000000037;
          }

          v71 = v35;
        }

        v106 = v126 | 0x8000000000000000;
        v107 = swift_isUniquelyReferenced_nonNull_native();
        *&v132 = v70;
        sub_225B2C4A0(v127, sub_225B2AC40, 0, v107, &v132);

        v108 = v132;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v69 = sub_225B29AA0(0, *(v69 + 2) + 1, 1, v69);
        }

        v110 = *(v69 + 2);
        v109 = *(v69 + 3);
        if (v110 >= v109 >> 1)
        {
          v69 = sub_225B29AA0((v109 > 1), v110 + 1, 1, v69);
        }

        *(v69 + 2) = v110 + 1;
        v111 = &v69[56 * v110];
        v112 = v128;
        *(v111 + 4) = 0xD000000000000037;
        *(v111 + 5) = v112;
        *(v111 + 6) = 0xD000000000000020;
        *(v111 + 7) = v106;
        *(v111 + 8) = 0x742865646F636E65;
        *(v111 + 9) = 0xEB00000000293A6FLL;
        *(v111 + 10) = 246;
        v113 = v124;
        *v66 = v125;
        *(v66 + 8) = v69;
        *(v66 + 16) = v113;
        *(v66 + 24) = v123;
        *(v66 + 32) = v108;
        *(v66 + 40) = v71;
        swift_willThrow();
      }
    }

    else
    {

      LOBYTE(v132) = 1;
      sub_225CCF784();
      LOBYTE(v132) = 2;
      sub_225CCF784();
      LOBYTE(v132) = 3;
      sub_225CCF784();
      (*(v125 + 8))(v32, v34);
    }
  }

  else
  {
LABEL_12:
    v128 = 0x8000000225D1BF90;
    v37 = MEMORY[0x277D84F90];
    v38 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v40 = v39;
    v41 = sub_225CCE954();
    v42 = *(v41 - 8);
    (*(v42 + 56))(v22, 1, 1, v41);
    LODWORD(v41) = (*(v42 + 48))(v22, 1, v41);
    sub_2259CB640(v22, &unk_27D73B050);
    if (v41)
    {
      v43 = 108;
    }

    else
    {
      v43 = 23;
    }

    v44 = sub_225B2C374(v37);
    v45 = swift_isUniquelyReferenced_nonNull_native();
    *&v132 = v44;
    sub_225B2C4A0(v38, sub_225B2AC40, 0, v45, &v132);

    v46 = v132;
    v47 = sub_225B29AA0(0, 1, 1, v37);
    v49 = *(v47 + 2);
    v48 = *(v47 + 3);
    if (v49 >= v48 >> 1)
    {
      v47 = sub_225B29AA0((v48 > 1), v49 + 1, 1, v47);
    }

    *(v47 + 2) = v49 + 1;
    v50 = &v47[56 * v49];
    *(v50 + 4) = 0xD00000000000002DLL;
    *(v50 + 5) = 0x8000000225D1C400;
    *(v50 + 6) = 0xD000000000000020;
    *(v50 + 7) = v128;
    *(v50 + 8) = 0x742865646F636E65;
    *(v50 + 9) = 0xEB00000000293A6FLL;
    *(v50 + 10) = 233;
    *v40 = v43;
    *(v40 + 8) = v47;
    *(v40 + 16) = 0xD00000000000002DLL;
    *(v40 + 24) = 0x8000000225D1C400;
    *(v40 + 32) = v46;
    *(v40 + 40) = 0;
    swift_willThrow();
  }
}

void sub_225AF18AC(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  v6 = MEMORY[0x28223BE20](v4 - 8, v5);
  v8 = &v75[-v7];
  v9 = *(a1 + 16);
  v10 = *(v9 - 8);
  v12 = MEMORY[0x28223BE20](v6, v11);
  v82 = &v75[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v85 = a1;
  v80 = *(a1 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v75[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v84 = sub_225CCD954();
  v17 = *(v84 - 8);
  MEMORY[0x28223BE20](v84, v18);
  v83 = &v75[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_28105AED8 != -1)
  {
    swift_once();
  }

  v20 = *(off_28105AEE0 + 2);
  os_unfair_lock_lock((v20 + 24));
  v21 = *(v20 + 16);
  v22 = *(v21 + 16);
  v81 = v9;
  if (v22 && (v23 = sub_2259F1900(v9), (v24 & 1) != 0))
  {
    v25 = *(v21 + 56) + 24 * v23;
    v26 = *v25;
    v27 = *(v25 + 8);
    v28 = *(v25 + 16);
    sub_2259F6128(*v25, v27, *(v25 + 16));
    os_unfair_lock_unlock((v20 + 24));
    if (v28 != 255)
    {
      *a2 = v26;
      *(a2 + 8) = v27;
      *(a2 + 16) = v28;
      return;
    }
  }

  else
  {
    os_unfair_lock_unlock((v20 + 24));
  }

  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v79 = v8;
  v29 = off_28105B918;
  v30 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v31 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v31));
  v32 = v17;
  v33 = *(v17 + 16);
  v35 = v83;
  v34 = v84;
  v33(v83, &v29[v30], v84);
  os_unfair_lock_unlock(&v29[v31]);
  v36 = v80;
  v37 = v85;
  (*(v80 + 16))(v16, v88, v85);
  v38 = sub_225CCD934();
  v39 = sub_225CCED04();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v76 = v39;
    v41 = v16;
    v42 = v40;
    v77 = v40;
    v78 = swift_slowAlloc();
    v86 = v78;
    *v42 = 136446210;
    v44 = v81;
    v43 = v82;
    (*(v10 + 16))(v82, &v41[*(v37 + 60)], v81);
    swift_getDynamicType();
    (*(v10 + 8))(v43, v44);
    v45 = sub_225CCFD24();
    v46 = v36;
    v47 = v32;
    v49 = v48;
    (*(v46 + 8))(v41, v85);
    v50 = v45;
    v37 = v85;
    v51 = sub_2259BE198(v50, v49, &v86);

    v52 = v77;
    *(v77 + 4) = v51;
    v53 = v52;
    _os_log_impl(&dword_2259A7000, v38, v76, "No cert type registered for JWSSignedJSON %{public}s", v52, 0xCu);
    v54 = v78;
    __swift_destroy_boxed_opaque_existential_0(v78);
    MEMORY[0x22AA6F950](v54, -1, -1);
    MEMORY[0x22AA6F950](v53, -1, -1);

    (*(v47 + 8))(v83, v84);
  }

  else
  {

    (*(v36 + 8))(v16, v37);
    (*(v32 + 8))(v35, v34);
    v44 = v81;
    v43 = v82;
  }

  v86 = 0;
  v87 = 0xE000000000000000;
  sub_225CCF204();
  MEMORY[0x22AA6CE70](0xD000000000000035, 0x8000000225D1C430);
  (*(v10 + 16))(v43, v88 + *(v37 + 60), v44);
  swift_getDynamicType();
  (*(v10 + 8))(v43, v44);
  v55 = sub_225CCFD24();
  MEMORY[0x22AA6CE70](v55);

  v57 = v86;
  v56 = v87;
  v88 = 0x8000000225D1BF90;
  v85 = 0x8000000225D1C470;
  v58 = MEMORY[0x277D84F90];
  v59 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  swift_allocError();
  v61 = v60;
  v62 = sub_225CCE954();
  v63 = *(v62 - 8);
  v64 = v79;
  (*(v63 + 56))(v79, 1, 1, v62);
  LODWORD(v62) = (*(v63 + 48))(v64, 1, v62);
  sub_2259CB640(v64, &unk_27D73B050);
  if (v62)
  {
    v65 = 108;
  }

  else
  {
    v65 = 23;
  }

  v66 = sub_225B2C374(v58);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v86 = v66;
  sub_225B2C4A0(v59, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v86);

  v68 = v86;
  v69 = sub_225B29AA0(0, 1, 1, v58);
  v71 = *(v69 + 2);
  v70 = *(v69 + 3);
  if (v71 >= v70 >> 1)
  {
    v69 = sub_225B29AA0((v70 > 1), v71 + 1, 1, v69);
  }

  *(v69 + 2) = v71 + 1;
  v72 = &v69[56 * v71];
  *(v72 + 4) = v57;
  *(v72 + 5) = v56;
  v73 = v88;
  *(v72 + 6) = 0xD000000000000020;
  *(v72 + 7) = v73;
  v74 = v85;
  *(v72 + 8) = 0xD000000000000015;
  *(v72 + 9) = v74;
  *(v72 + 10) = 316;
  *v61 = v65;
  *(v61 + 8) = v69;
  *(v61 + 16) = v57;
  *(v61 + 24) = v56;
  *(v61 + 32) = v68;
  *(v61 + 40) = 0;
  swift_willThrow();
}

unint64_t sub_225AF20F8()
{
  result = qword_27D73D4F0[0];
  if (!qword_27D73D4F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D73D4F0);
  }

  return result;
}

unint64_t sub_225AF217C()
{
  result = qword_28105B6D8;
  if (!qword_28105B6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28105B6D8);
  }

  return result;
}

uint64_t sub_225AF22D8()
{
  result = type metadata accessor for JWSSignedJSON.DIPJWSUnprotectedHeader();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for JWSSignedJSON.DIPJWSProtectedHeader();
    if (v2 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_225AF23B8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  v7 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_26;
  }

  v10 = ((v6 + 152) & ~v6) + v7;
  v11 = 8 * (((v6 - 104) & ~v6) + v7);
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((((((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + v6 + 80) & ~v6);
      }

      v16 = *(a1 + 1);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_26;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    if (v10 > 2)
    {
      if (v10 == 3)
      {
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v10) = *a1;
      }
    }

    else if (v10 == 1)
    {
      LODWORD(v10) = *a1;
    }

    else
    {
      LODWORD(v10) = *a1;
    }
  }

  return v8 + (v10 | v15) + 1;
}

void sub_225AF255C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 152) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * (((v9 - 104) & ~v9) + *(*(*(a4 + 16) - 8) + 64)))) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * (((v9 - 104) & ~v9) + *(*(*(a4 + 16) - 8) + 64))));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = (((((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + v9 + 80) & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

uint64_t sub_225AF27CC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_225AF2808(uint64_t a1, unsigned int a2)
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

uint64_t sub_225AF2864(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_225AF28CC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_225AF2908(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_225AF2964(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t UTCTimestamp(_:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BCA8);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = &v19 - v2;
  v4 = sub_225CCD1C4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v10 = sub_225CCE444();
  [v9 setDateFormat_];

  sub_225CCD134();
  v11 = sub_225CCD154();
  (*(v5 + 8))(v8, v4);
  [v9 setLocale_];

  sub_225CCD2A4();
  v12 = sub_225CCD2D4();
  v13 = *(v12 - 8);
  v14 = 0;
  if ((*(v13 + 48))(v3, 1, v12) != 1)
  {
    v14 = sub_225CCD2C4();
    (*(v13 + 8))(v3, v12);
  }

  [v9 setTimeZone_];

  v15 = sub_225CCD034();
  v16 = [v9 stringFromDate_];

  v17 = sub_225CCE474();
  return v17;
}

CoreIDVShared::ISO18013Version __swiftcall ISO18013Version.init(stringLiteral:)(Swift::String stringLiteral)
{
  v2 = v1;
  result = ISO18013Version.init(_:)(stringLiteral);
  if (v6 == 1)
  {
    v4 = 0uLL;
  }

  else
  {
    v4 = v5;
  }

  *v2 = v4;
  return result;
}

CoreIDVShared::ISO18013Version_optional __swiftcall ISO18013Version.init(_:)(Swift::String a1)
{
  v54 = v1;
  v59 = 46;
  v60 = 0xE100000000000000;
  v57 = &v59;
  v2 = sub_225AF3824(0x7FFFFFFFFFFFFFFFLL, 1, sub_225AF3BE4, v56, a1._countAndFlagsBits, a1._object, 0x2EuLL);
  v5 = v2;
  v6 = *(v2 + 16);
  if (!v6)
  {
    v55 = MEMORY[0x277D84F90];
LABEL_77:
    v42 = *(v55 + 16);
    if (v42)
    {
      v43 = (v55 + 32);
      v44 = MEMORY[0x277D84F90];
      do
      {
        v48 = *v43++;
        v47 = v48;
        if ((v48 & 0x8000000000000000) == 0)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v59 = v44;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_2259D5304(0, v44[2] + 1, 1);
            v44 = v59;
          }

          v46 = v44[2];
          v45 = v44[3];
          if (v46 >= v45 >> 1)
          {
            sub_2259D5304((v45 > 1), v46 + 1, 1);
            v44 = v59;
          }

          v44[2] = v46 + 1;
          v44[v46 + 4] = v47;
        }

        --v42;
      }

      while (v42);
    }

    else
    {
      v44 = MEMORY[0x277D84F90];
    }

    v50 = *(v5 + 16);

    if (v50 == 2 && v44[2] == 2)
    {
      v52 = v44[4];
      v53 = v44[5];

      *v54 = v52;
      *(v54 + 8) = v53;
      *(v54 + 16) = 0;
    }

    else
    {

      *v54 = 0;
      *(v54 + 8) = 0;
      *(v54 + 16) = 1;
    }

    goto LABEL_98;
  }

  v7 = 0;
  v55 = MEMORY[0x277D84F90];
  while (v7 < *(v5 + 16))
  {
    v8 = (v5 + 32 + 32 * v7++);
    v10 = v8[2];
    v9 = v8[3];
    v12 = *v8;
    v11 = v8[1];

    v2 = MEMORY[0x22AA6CD90](v12, v11, v10, v9);
    v13 = HIBYTE(v3) & 0xF;
    v14 = v2 & 0xFFFFFFFFFFFFLL;
    if ((v3 & 0x2000000000000000) != 0)
    {
      v15 = HIBYTE(v3) & 0xF;
    }

    else
    {
      v15 = v2 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15)
    {

      goto LABEL_66;
    }

    if ((v3 & 0x1000000000000000) == 0)
    {
      if ((v3 & 0x2000000000000000) != 0)
      {
        v59 = v2;
        v60 = v3 & 0xFFFFFFFFFFFFFFLL;
        if (v2 == 43)
        {
          if ((v3 & 0xF00000000000000) == 0)
          {
            goto LABEL_94;
          }

          v14 = v13 - 1;
          if (v13 != 1)
          {
            v17 = 0;
            v27 = &v59 + 1;
            while (1)
            {
              v28 = *v27 - 48;
              if (v28 > 9)
              {
                break;
              }

              v29 = 10 * v17;
              if ((v17 * 10) >> 64 != (10 * v17) >> 63)
              {
                break;
              }

              v17 = v29 + v28;
              if (__OFADD__(v29, v28))
              {
                break;
              }

              ++v27;
              if (!--v14)
              {
                goto LABEL_65;
              }
            }
          }
        }

        else if (v2 == 45)
        {
          if ((v3 & 0xF00000000000000) == 0)
          {
            goto LABEL_96;
          }

          v14 = v13 - 1;
          if (v13 != 1)
          {
            v17 = 0;
            v21 = &v59 + 1;
            while (1)
            {
              v22 = *v21 - 48;
              if (v22 > 9)
              {
                break;
              }

              v23 = 10 * v17;
              if ((v17 * 10) >> 64 != (10 * v17) >> 63)
              {
                break;
              }

              v17 = v23 - v22;
              if (__OFSUB__(v23, v22))
              {
                break;
              }

              ++v21;
              if (!--v14)
              {
                goto LABEL_65;
              }
            }
          }
        }

        else if ((v3 & 0xF00000000000000) != 0)
        {
          v17 = 0;
          v32 = &v59;
          while (1)
          {
            v33 = *v32 - 48;
            if (v33 > 9)
            {
              break;
            }

            v34 = 10 * v17;
            if ((v17 * 10) >> 64 != (10 * v17) >> 63)
            {
              break;
            }

            v17 = v34 + v33;
            if (__OFADD__(v34, v33))
            {
              break;
            }

            v32 = (v32 + 1);
            if (!--v13)
            {
              goto LABEL_63;
            }
          }
        }
      }

      else
      {
        if ((v2 & 0x1000000000000000) != 0)
        {
          v2 = (v3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          v40 = v3;
          v2 = sub_225CCF354();
          v14 = v41;
          v3 = v40;
        }

        v16 = *v2;
        if (v16 == 43)
        {
          if (v14 < 1)
          {
            goto LABEL_97;
          }

          if (--v14)
          {
            v17 = 0;
            if (!v2)
            {
              goto LABEL_63;
            }

            v24 = (v2 + 1);
            while (1)
            {
              v25 = *v24 - 48;
              if (v25 > 9)
              {
                break;
              }

              v26 = 10 * v17;
              if ((v17 * 10) >> 64 != (10 * v17) >> 63)
              {
                break;
              }

              v17 = v26 + v25;
              if (__OFADD__(v26, v25))
              {
                break;
              }

              ++v24;
              if (!--v14)
              {
                goto LABEL_65;
              }
            }
          }
        }

        else if (v16 == 45)
        {
          if (v14 < 1)
          {
            goto LABEL_95;
          }

          if (--v14)
          {
            v17 = 0;
            if (v2)
            {
              v18 = (v2 + 1);
              while (1)
              {
                v19 = *v18 - 48;
                if (v19 > 9)
                {
                  goto LABEL_64;
                }

                v20 = 10 * v17;
                if ((v17 * 10) >> 64 != (10 * v17) >> 63)
                {
                  goto LABEL_64;
                }

                v17 = v20 - v19;
                if (__OFSUB__(v20, v19))
                {
                  goto LABEL_64;
                }

                ++v18;
                if (!--v14)
                {
                  goto LABEL_65;
                }
              }
            }

LABEL_63:
            LOBYTE(v14) = 0;
LABEL_65:
            v58 = v14;
            v35 = v14;

            if ((v35 & 1) == 0)
            {
              goto LABEL_70;
            }

            goto LABEL_66;
          }
        }

        else
        {
          if (!v14)
          {
            goto LABEL_64;
          }

          v17 = 0;
          if (!v2)
          {
            goto LABEL_63;
          }

          while (1)
          {
            v30 = *v2 - 48;
            if (v30 > 9)
            {
              break;
            }

            v31 = 10 * v17;
            if ((v17 * 10) >> 64 != (10 * v17) >> 63)
            {
              break;
            }

            v17 = v31 + v30;
            if (__OFADD__(v31, v30))
            {
              break;
            }

            ++v2;
            if (!--v14)
            {
              goto LABEL_65;
            }
          }
        }
      }

LABEL_64:
      v17 = 0;
      LOBYTE(v14) = 1;
      goto LABEL_65;
    }

    v58 = 0;
    v17 = sub_2259F3F08(v2, v3, 10);
    v37 = v36;

    if ((v37 & 1) == 0)
    {
LABEL_70:
      v2 = swift_isUniquelyReferenced_nonNull_native();
      if ((v2 & 1) == 0)
      {
        v2 = sub_225B29CD4(0, *(v55 + 16) + 1, 1, v55);
        v55 = v2;
      }

      v39 = *(v55 + 16);
      v38 = *(v55 + 24);
      if (v39 >= v38 >> 1)
      {
        v2 = sub_225B29CD4((v38 > 1), v39 + 1, 1, v55);
        v55 = v2;
      }

      *(v55 + 16) = v39 + 1;
      *(v55 + 8 * v39 + 32) = v17;
    }

LABEL_66:
    if (v7 == v6)
    {
      goto LABEL_77;
    }
  }

  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  result.value.minor = v3;
  result.value.major = v2;
  result.is_nil = v4;
  return result;
}

uint64_t ISO18013Version.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225CCFC84();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v10, v10[3]);
    v5._countAndFlagsBits = sub_225CCF954();
    ISO18013Version.init(_:)(v5);
    if (v9 == 1)
    {
      sub_225CCF2D4();
      swift_allocError();
      sub_225CCF264();
      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_0(v10);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_0(v10);
      *a2 = v7;
      a2[1] = v8;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t ISO18013Version.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225CCFCD4();
  sub_225CCF824();
  MEMORY[0x22AA6CE70](46, 0xE100000000000000);
  v1 = sub_225CCF824();
  MEMORY[0x22AA6CE70](v1);

  __swift_mutable_project_boxed_opaque_existential_0(v3, v4);
  sub_225CCF9D4();

  return __swift_destroy_boxed_opaque_existential_0(v3);
}

uint64_t ISO18013Version.description.getter()
{
  v2 = sub_225CCF824();
  MEMORY[0x22AA6CE70](46, 0xE100000000000000);
  v0 = sub_225CCF824();
  MEMORY[0x22AA6CE70](v0);

  return v2;
}

BOOL static ISO18013Version.< infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    return a1[1] < a2[1];
  }

  else
  {
    return *a1 < *a2;
  }
}

BOOL sub_225AF3724(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    return a1[1] < a2[1];
  }

  else
  {
    return *a1 < *a2;
  }
}

BOOL sub_225AF3744(void *a1, void *a2)
{
  if (*a2 == *a1)
  {
    return a2[1] >= a1[1];
  }

  else
  {
    return *a2 >= *a1;
  }
}

BOOL sub_225AF3764(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    return a1[1] >= a2[1];
  }

  else
  {
    return *a1 >= *a2;
  }
}

BOOL sub_225AF3784(void *a1, void *a2)
{
  if (*a2 == *a1)
  {
    return a2[1] < a1[1];
  }

  else
  {
    return *a2 < *a1;
  }
}

unint64_t sub_225AF37D4@<X0>(Swift::String *a1@<X0>, _OWORD *a2@<X8>)
{
  result = ISO18013Version.init(_:)(*a1);
  if (v6)
  {
    v4 = 0uLL;
  }

  else
  {
    v4 = v5;
  }

  *a2 = v4;
  return result;
}

unint64_t sub_225AF3824@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
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

      return MEMORY[0x277D84F90];
    }

    v7 = sub_225CCE704();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_225B29DD8(0, 1, 1, MEMORY[0x277D84F90]);
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
    v14 = sub_225B29DD8((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x277D84F90];
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
        v19 = sub_225CCE6E4();
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

        v14 = sub_225CCE5E4();
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
        v18 = sub_225CCE5E4();
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
          v7 = sub_225CCE704();
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

        v14 = sub_225B29DD8(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_225CCE704();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_225B29DD8(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_225B29DD8((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_225CCE5E4();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_225AF3BE4(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_225CCF934() & 1;
  }
}

unint64_t sub_225AF3C40()
{
  result = qword_27D73D578;
  if (!qword_27D73D578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D578);
  }

  return result;
}

unint64_t sub_225AF3C98()
{
  result = qword_27D73D580;
  if (!qword_27D73D580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D580);
  }

  return result;
}

unint64_t sub_225AF3CFC()
{
  result = qword_27D73D588;
  if (!qword_27D73D588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D588);
  }

  return result;
}

uint64_t sub_225AF3D80(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v3 = 0x61645F6874726962;
  }

  if (v2)
  {
    v4 = 0xEA00000000006574;
  }

  else
  {
    v4 = 0x8000000225D0B9B0;
  }

  if (*a2)
  {
    v5 = 0xD000000000000010;
  }

  else
  {
    v5 = 0x61645F6874726962;
  }

  if (*a2)
  {
    v6 = 0x8000000225D0B9B0;
  }

  else
  {
    v6 = 0xEA00000000006574;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_225CCF934();
  }

  return v8 & 1;
}

uint64_t sub_225AF3E30()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225AF3EBC()
{
  sub_225CCE5B4();
}

uint64_t sub_225AF3F34()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225AF3FBC@<X0>(char *a1@<X8>)
{
  v2 = sub_225CCF5D4();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_225AF401C(unint64_t *a1@<X8>)
{
  v2 = 0x8000000225D0B9B0;
  v3 = 0x61645F6874726962;
  if (*v1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v2 = 0xEA00000000006574;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_225AF4064()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x61645F6874726962;
  }
}

uint64_t sub_225AF40A8@<X0>(char *a1@<X8>)
{
  v2 = sub_225CCF5D4();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_225AF410C(uint64_t a1)
{
  v2 = sub_225AF4E38();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225AF4148(uint64_t a1)
{
  v2 = sub_225AF4E38();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ISO23220.BirthDate.dateComponents.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_225CCCB74();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ISO23220.BirthDate.init(dateComponents:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v3 = sub_225CCD0B4();
  v51 = *(v3 - 8);
  v52 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v50 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BCA8);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v53 = &v48 - v8;
  v9 = sub_225CCD1E4();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v48 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BCB0);
  MEMORY[0x28223BE20](v18 - 8, v19);
  v21 = &v48 - v20;
  v22 = sub_225CCD284();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22, v24);
  v26 = &v48 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for ISO23220.BirthDate();
  v27 = *(v54 - 8);
  MEMORY[0x28223BE20](v54, v28);
  v49 = &v48 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_225CCCB54();
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    v30 = sub_225CCCB74();
    (*(*(v30 - 8) + 8))(a1, v30);
    sub_2259CB640(v21, &qword_27D73BCB0);
  }

  else
  {
    v48 = a1;
    (*(v23 + 32))(v26, v21, v22);
    sub_225CCD204();
    (*(v10 + 104))(v14, *MEMORY[0x277CC9830], v9);
    v31 = sub_225CCD1D4();
    v32 = *(v10 + 8);
    v32(v14, v9);
    v32(v17, v9);
    if (v31)
    {
      v33 = v53;
      v34 = v48;
      sub_225CCCB64();
      v35 = sub_225CCD2D4();
      v36 = *(v35 - 8);
      if ((*(v36 + 48))(v33, 1, v35) == 1)
      {
        (*(v23 + 8))(v26, v22);
        sub_2259CB640(v33, &qword_27D73BCA8);
      }

      else
      {
        v38 = v50;
        _s13CoreIDVShared12DateProviderV3now10Foundation0C0Vvg_0();
        v39 = sub_225CCD2B4();
        (*(v51 + 8))(v38, v52);
        (*(v23 + 8))(v26, v22);
        (*(v36 + 8))(v33, v35);
        if (!v39)
        {
          v44 = sub_225CCCB74();
          v45 = v49;
          (*(*(v44 - 8) + 32))(v49, v34, v44);
          v46 = v45;
          v47 = v55;
          sub_225AF4854(v46, v55);
          v42 = v47;
          v41 = 0;
          return (*(v27 + 56))(v42, v41, 1, v54);
        }
      }

      v40 = sub_225CCCB74();
      (*(*(v40 - 8) + 8))(v34, v40);
    }

    else
    {
      v37 = sub_225CCCB74();
      (*(*(v37 - 8) + 8))(v48, v37);
      (*(v23 + 8))(v26, v22);
    }
  }

  v41 = 1;
  v42 = v55;
  return (*(v27 + 56))(v42, v41, 1, v54);
}

uint64_t type metadata accessor for ISO23220.BirthDate()
{
  result = qword_27D73D5C0;
  if (!qword_27D73D5C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_225AF4854(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ISO23220.BirthDate();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ISO23220.BirthDate.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D590);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v42 = &v37 - v5;
  v45 = sub_225CCD0B4();
  v40 = *(v45 - 1);
  MEMORY[0x28223BE20](v45, v6);
  v44 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_225CCCB74();
  v41 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D598);
  v43 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v37 - v14;
  v16 = type metadata accessor for ISO23220.BirthDate();
  MEMORY[0x28223BE20](v16 - 8, v17);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225AF4E38();
  v20 = v46;
  sub_225CCFCA4();
  if (!v20)
  {
    v38 = v19;
    v22 = v42;
    v21 = v43;
    v46 = v11;
    v48 = 0;
    sub_225AF5D70(&qword_27D73BE48, MEMORY[0x277CC9578]);
    sub_225CCF6E4();
    v37 = v12;
    v23 = v22;
    v24 = v44;
    Date.utcDayRepresentation.getter(v22);
    (*(v40 + 8))(v24, v45);
    v25 = v41;
    v26 = v8;
    if ((*(v41 + 48))(v23, 1, v8) == 1)
    {
      sub_2259CB640(v23, &qword_27D73D590);
      v47 = 0;
      sub_225CCF2D4();
      swift_allocError();
      sub_2259D8B24(&qword_27D73D5A8, &qword_27D73D598);
      v27 = v37;
      sub_225CCF284();
      swift_willThrow();
      (*(v21 + 8))(v15, v27);
      return __swift_destroy_boxed_opaque_existential_0(a1);
    }

    v28 = *(v25 + 32);
    v28(v46, v23, v8);
    v29 = sub_225AF5628(v15);
    v45 = v28;
    if (v29)
    {
      v30 = v38;
      v31 = v39;
      if ((v29 & 0x100) != 0)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v34 = v29;
      sub_225CCCB04();
      v29 = v34;
      v26 = v8;
      v30 = v38;
      v31 = v39;
      if ((v29 & 0x100) != 0)
      {
LABEL_6:
        v32 = v43;
        if ((v29 & 0x10000) != 0)
        {
LABEL_8:
          (*(v32 + 8))(v15, v37);
          v45(v30, v46, v26);
          sub_225AF4854(v30, v31);
          return __swift_destroy_boxed_opaque_existential_0(a1);
        }

LABEL_7:
        sub_225CCCAD4();
        v26 = v8;
        goto LABEL_8;
      }
    }

    v35 = v29;
    sub_225CCCB24();
    v36 = v35;
    v26 = v8;
    v32 = v43;
    if ((v36 & 0x10000) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_225AF4E38()
{
  result = qword_27D73D5A0;
  if (!qword_27D73D5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D5A0);
  }

  return result;
}

uint64_t ISO23220.BirthDate.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD00);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = v27 - v4;
  v6 = sub_225CCD0B4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D5B0);
  v28 = *(v30 - 8);
  MEMORY[0x28223BE20](v30, v11);
  v13 = v27 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v14 = sub_225AF4E38();
  v29 = v13;
  v15 = v27[2];
  sub_225CCFCE4();
  sub_225CCCAE4();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_2259CB640(v5, &unk_27D73FD00);
    v16 = sub_225CCF324();
    swift_allocError();
    v18 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D4D8);
    v19 = sub_225CCCB74();
    v18[3] = v19;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
    (*(*(v19 - 8) + 16))(boxed_opaque_existential_1, v15, v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73CBD8);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_225CD30F0;
    *(v21 + 56) = &type metadata for ISO23220.BirthDate.CodingKeys;
    *(v21 + 64) = v14;
    *(v21 + 32) = 0;
    sub_225CCF294();
    (*(*(v16 - 8) + 104))(v18, *MEMORY[0x277D841A8], v16);
    swift_willThrow();
    return (*(v28 + 8))(v29, v30);
  }

  else
  {
    v23 = v28;
    (*(v7 + 32))(v10, v5, v6);
    v32 = 0;
    sub_225AF5D70(&qword_27D73BE18, MEMORY[0x277CC9578]);
    v24 = v29;
    v25 = v30;
    v26 = v27[1];
    sub_225CCF7E4();
    if (!v26)
    {
      sub_225AF5C6C();
      v31 = 1;
      sub_225CCF784();
    }

    (*(v7 + 8))(v10, v6);
    return (*(v23 + 8))(v24, v25);
  }
}

uint64_t ISO23220.BirthDate.hash(into:)()
{
  sub_225CCCB74();
  sub_225AF5D70(&qword_27D73D1B8, MEMORY[0x277CC8990]);

  return sub_225CCE354();
}

uint64_t ISO23220.BirthDate.hashValue.getter()
{
  sub_225CCFBD4();
  sub_225CCCB74();
  sub_225AF5D70(&qword_27D73D1B8, MEMORY[0x277CC8990]);
  sub_225CCE354();
  return sub_225CCFC24();
}

uint64_t sub_225AF541C()
{
  sub_225CCFBD4();
  sub_225CCCB74();
  sub_225AF5D70(&qword_27D73D1B8, MEMORY[0x277CC8990]);
  sub_225CCE354();
  return sub_225CCFC24();
}

uint64_t sub_225AF54A4()
{
  sub_225CCCB74();
  sub_225AF5D70(&qword_27D73D1B8, MEMORY[0x277CC8990]);

  return sub_225CCE354();
}

uint64_t sub_225AF5528()
{
  sub_225CCFBD4();
  sub_225CCCB74();
  sub_225AF5D70(&qword_27D73D1B8, MEMORY[0x277CC8990]);
  sub_225CCE354();
  return sub_225CCFC24();
}

uint64_t sub_225AF55B0(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v6 = a5 & 0xFFFFFFFFFFFFLL;
  }

  if (a3 == a5 && a4 == a6 && !(a1 >> 16) && a2 >> 16 == v6)
  {
    return 1;
  }

  else
  {
    return sub_225CCF814() & 1;
  }
}

uint64_t sub_225AF5628(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D5E8);
  v49 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2, v3);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v43 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D5F0);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v43 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D5F8);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v43 - v17;
  LOBYTE(v51) = 1;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D598);
  v20 = v50;
  result = sub_225CCF624();
  if (!v20)
  {
    v46 = v19;
    v47 = v13;
    v48 = v18;
    if (v22)
    {
      v44 = v15;
      v45 = a1;
      v23 = v22;
      v24 = result;
      v50 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D600);
      v25 = v9;
      sub_225CCD814();
      sub_2259D8B24(&qword_27D73D608, &qword_27D73D5E8);
      v26 = v6;
      sub_225CCD804();
      v43 = v24;
      v27 = v23;
      sub_225CCE704();
      v28 = v47;
      v29 = v50;
      sub_225CCD834();
      if (v29)
      {

        v30 = *(v49 + 8);
        v30(v26, v2);
        v30(v25, v2);
        v31 = v44;
        v32 = v14;
        (*(v44 + 56))(v28, 1, 1, v14);
        v50 = 0;
      }

      else
      {
        v50 = 0;

        v33 = *(v49 + 8);
        v33(v26, v2);
        v33(v25, v2);
        v31 = v44;
        v32 = v14;
      }

      v34 = (*(v31 + 48))(v28, 1, v32);
      v35 = v28;
      v36 = v31;
      v37 = v48;
      if (v34 == 1)
      {
        sub_2259CB640(v35, &qword_27D73D5F0);
        v55 = 1;
        v51 = 0;
        v52 = 0xE000000000000000;
        sub_225CCF204();

        v51 = 0xD000000000000033;
        v52 = 0x8000000225D1C5C0;
        MEMORY[0x22AA6CE70](v43, v27);

        MEMORY[0x22AA6CE70](41, 0xE100000000000000);
        sub_225CCF2D4();
        swift_allocError();
        sub_2259D8B24(&qword_27D73D5A8, &qword_27D73D598);
        sub_225CCF284();

        return swift_willThrow();
      }

      else
      {

        (*(v36 + 32))(v37, v35, v32);
        swift_getKeyPath();
        sub_225CCD854();

        v38 = sub_225AF55B0(v51, v52, v53, v54, 808464432, 0xE400000000000000);

        swift_getKeyPath();
        sub_225CCD854();

        v39 = sub_225AF55B0(v51, v52, v53, v54, 12336, 0xE200000000000000);

        swift_getKeyPath();
        sub_225CCD854();

        v40 = sub_225AF55B0(v51, v52, v53, v54, 12336, 0xE200000000000000);

        (*(v36 + 8))(v37, v32);
        if (v40)
        {
          v41 = 0x10000;
        }

        else
        {
          v41 = 0;
        }

        if (v39)
        {
          v42 = 256;
        }

        else
        {
          v42 = 0;
        }

        return v42 & 0xFFFFFFFE | v38 & 1 | v41;
      }
    }

    else
    {
      return 65793;
    }
  }

  return result;
}

uint64_t sub_225AF5C6C()
{
  sub_225CCCAF4();
  if (v0)
  {
    v1 = 825307441;
  }

  else
  {
    v1 = 808464432;
  }

  MEMORY[0x22AA6CE70](v1, 0xE400000000000000);

  sub_225CCCB14();
  if (v2)
  {
    v3 = 12593;
  }

  else
  {
    v3 = 12336;
  }

  MEMORY[0x22AA6CE70](v3, 0xE200000000000000);

  sub_225CCCAC4();
  if (v4)
  {
    v5 = 12593;
  }

  else
  {
    v5 = 12336;
  }

  MEMORY[0x22AA6CE70](v5, 0xE200000000000000);

  return 0;
}

uint64_t sub_225AF5D70(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_225AF5DF0()
{
  result = sub_225CCCB74();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_225AF5E70()
{
  result = qword_27D73D5D0;
  if (!qword_27D73D5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D5D0);
  }

  return result;
}

unint64_t sub_225AF5EC8()
{
  result = qword_27D73D5D8;
  if (!qword_27D73D5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D5D8);
  }

  return result;
}

unint64_t sub_225AF5F20()
{
  result = qword_27D73D5E0;
  if (!qword_27D73D5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D5E0);
  }

  return result;
}

CoreIDVShared::ProvisioningFailureReson_optional __swiftcall ProvisioningFailureReson.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_225CCF5D4();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t ProvisioningFailureReson.rawValue.getter()
{
  v1 = 0xD000000000000018;
  v2 = *v0;
  v3 = 0xD00000000000001DLL;
  if (v2 != 3)
  {
    v3 = 0xD00000000000001CLL;
  }

  if (v2 == 2)
  {
    v3 = 0xD000000000000018;
  }

  if (*v0)
  {
    v1 = 0xD000000000000015;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_225AF606C()
{
  result = qword_27D73D610;
  if (!qword_27D73D610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D610);
  }

  return result;
}

uint64_t sub_225AF60C0()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225AF6190()
{
  sub_225CCE5B4();
}

uint64_t sub_225AF624C()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

void sub_225AF6324(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000018;
  v3 = *v1;
  v4 = "approximate_mask";
  v5 = "DOB_PII_HASH_MISMATCH";
  v6 = "EXPIRY_PII_HASH_MISMATCH";
  v7 = 0xD00000000000001DLL;
  if (v3 != 3)
  {
    v7 = 0xD00000000000001CLL;
    v6 = "NATIONALITY_PII_HASH_MISMATCH";
  }

  if (v3 == 2)
  {
    v7 = 0xD000000000000018;
  }

  else
  {
    v5 = v6;
  }

  if (*v1)
  {
    v2 = 0xD000000000000015;
    v4 = "HOLDER_PII_HASH_MISMATCH";
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v2 = v7;
    v8 = v5;
  }

  *a1 = v2;
  a1[1] = v8 | 0x8000000000000000;
}

uint64_t AlertConfiguration.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AlertConfiguration.title.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t AlertConfiguration.message.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t AlertConfiguration.message.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t AlertConfiguration.defaultButtonTitle.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t AlertConfiguration.defaultButtonTitle.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t AlertConfiguration.alternateButtonTitle.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t AlertConfiguration.alternateButtonTitle.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

void __swiftcall AlertConfiguration.init(title:message:defaultButtonTitle:alternateButtonTitle:)(CoreIDVShared::AlertConfiguration *__return_ptr retstr, Swift::String title, Swift::String message, Swift::String defaultButtonTitle, Swift::String_optional alternateButtonTitle)
{
  retstr->title = title;
  retstr->message = message;
  retstr->defaultButtonTitle = defaultButtonTitle;
  retstr->alternateButtonTitle = alternateButtonTitle;
}

void sub_225AF65F8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73E090);
  v3 = MEMORY[0x28223BE20](v1 - 8, v2);
  v44 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3, v5);
  v43 = &v41 - v6;
  v7 = *v0;
  v8 = v0[1];
  v9 = v0[2];
  v10 = v0[3];
  v12 = v0[4];
  v11 = v0[5];
  v13 = v0[6];
  v14 = v0[7];
  v42 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D640);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225CD73B0;
  v16 = *MEMORY[0x277CBF188];
  if (!*MEMORY[0x277CBF188])
  {
    __break(1u);
    goto LABEL_19;
  }

  v17 = inited;
  v18 = MEMORY[0x277D837D0];
  *(inited + 64) = MEMORY[0x277D837D0];
  *(inited + 32) = v16;
  *(inited + 40) = v7;
  *(inited + 48) = v8;
  v19 = *MEMORY[0x277CBF198];
  if (!*MEMORY[0x277CBF198])
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  *(inited + 104) = v18;
  *(inited + 72) = v19;
  *(inited + 80) = v9;
  *(inited + 88) = v10;
  v20 = *MEMORY[0x277CBF1E8];
  if (!*MEMORY[0x277CBF1E8])
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  *(inited + 144) = v18;
  *(inited + 112) = v20;
  *(inited + 120) = v12;
  *(inited + 128) = v11;

  v21 = v20;
  v22 = v19;
  v23 = v16;
  v24 = sub_225B2E194(v17);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D648);
  swift_arrayDestroy();
  v49 = v24;
  v25 = *MEMORY[0x277CBF1C0];
  if (!*MEMORY[0x277CBF1C0])
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    return;
  }

  if (v14)
  {
    v48 = v18;
    *&v47 = v42;
    *(&v47 + 1) = v14;
    sub_2259B9624(&v47, v46);
    v26 = v25;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v45 = v24;
    sub_225A047EC(v46, v26, isUniquelyReferenced_nonNull_native);

    v49 = v45;
  }

  else
  {
    v28 = v25;
    sub_225B2ADD0(v28, &v47);

    sub_2259CB640(&v47, &qword_27D73DD90);
  }

  v29 = v44;
  if (!*MEMORY[0x277CBF208])
  {
    goto LABEL_22;
  }

  v30 = qword_28105B8B8;
  v31 = *MEMORY[0x277CBF208];
  if (v30 != -1)
  {
    swift_once();
  }

  v32 = [qword_28105E338 resourceURL];
  v33 = v43;
  if (v32)
  {
    v34 = v32;
    sub_225CCCE34();

    v35 = 0;
  }

  else
  {
    v35 = 1;
  }

  v36 = sub_225CCCEA4();
  v37 = *(v36 - 8);
  (*(v37 + 56))(v29, v35, 1, v36);
  sub_2259D88EC(v29, v33, &unk_27D73E090);
  if ((*(v37 + 48))(v33, 1, v36) == 1)
  {
    sub_2259CB640(v33, &unk_27D73E090);
    sub_225B2ADD0(v31, &v47);

    sub_2259CB640(&v47, &qword_27D73DD90);
  }

  else
  {
    v48 = v36;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v47);
    (*(v37 + 32))(boxed_opaque_existential_1, v33, v36);
    sub_2259B9624(&v47, v46);
    v39 = v49;
    v40 = swift_isUniquelyReferenced_nonNull_native();
    v45 = v39;
    sub_225A047EC(v46, v31, v40);

    v49 = v45;
  }

  type metadata accessor for CFString(0);
  sub_225AF91CC(&qword_27D73A9C8, type metadata accessor for CFString);
  sub_225CCE2B4();
}

uint64_t AlertPresentationOutcome.hashValue.getter()
{
  v1 = *v0;
  sub_225CCFBD4();
  MEMORY[0x22AA6E420](v1);
  return sub_225CCFC24();
}

uint64_t sub_225AF6B78()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D620);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = &v7 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D628);
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27D73D650);
  v5 = swift_allocObject();
  *&v5[(*(*v5 + 48) + 3) & 0x1FFFFFFFCLL] = 0;
  result = sub_2259D88EC(v3, &v5[*(*v5 + *MEMORY[0x277D841D0] + 16)], &qword_27D73D620);
  off_27D73D618 = v5;
  return result;
}

uint64_t AlertPresenter.present(with:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  v2[4] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D620);
  v2[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225AF6DD4, 0, 0);
}

uint64_t sub_225AF6DD4()
{
  v38 = v0;
  if (qword_27D739F80 != -1)
  {
    swift_once();
  }

  v1 = off_27D73D618;
  KeyPath = swift_getKeyPath();
  v3 = swift_task_alloc();
  *(v3 + 16) = sub_225AF7558;
  *(v3 + 24) = KeyPath;
  v4 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock(&v1[v4]);
  sub_225AF7560();
  os_unfair_lock_unlock(&v1[v4]);
  v5 = v0[5];

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D628);
  v7 = (*(*(v6 - 8) + 48))(v5, 1, v6);
  sub_2259CB640(v5, &qword_27D73D620);
  if (v7 == 1)
  {
    v8 = v0[3];
    v9 = v8[1];
    v37[0] = *v8;
    v37[1] = v9;
    v10 = v8[3];
    v37[2] = v8[2];
    v37[3] = v10;
    sub_225AF65F8();
    v12 = v11;
    v13 = CFUserNotificationCreate(0, 0.0, 3uLL, 0, v11);
    v0[6] = v13;

    RunLoopSource = CFUserNotificationCreateRunLoopSource(0, v13, sub_225AF7590, 0);
    v0[7] = RunLoopSource;
    v15 = swift_task_alloc();
    v0[8] = v15;
    *(v15 + 16) = RunLoopSource;
    v16 = swift_task_alloc();
    v0[9] = v16;
    *(v16 + 16) = v13;
    v17 = swift_task_alloc();
    v0[10] = v17;
    *v17 = v0;
    v17[1] = sub_225AF731C;
    v18 = v0[2];

    return MEMORY[0x282200830](v18, &unk_225CE7008, v15, sub_225AF7A8C, v16, 0, 0, &type metadata for AlertPresentationOutcome);
  }

  else
  {
    v19 = v0[4];
    v20 = MEMORY[0x277D84F90];
    v21 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v23 = v22;
    v24 = sub_225CCE954();
    v25 = *(v24 - 8);
    (*(v25 + 56))(v19, 1, 1, v24);
    v26 = (*(v25 + 48))(v19, 1, v24);
    sub_2259CB640(v19, &unk_27D73B050);
    v27 = sub_225B2C374(v20);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v37[0] = v27;
    sub_225B2C4A0(v21, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v37);

    v29 = *&v37[0];
    v30 = sub_225B29AA0(0, 1, 1, v20);
    v32 = *(v30 + 2);
    v31 = *(v30 + 3);
    if (v32 >= v31 >> 1)
    {
      v30 = sub_225B29AA0((v31 > 1), v32 + 1, 1, v30);
    }

    *(v30 + 2) = v32 + 1;
    v33 = &v30[56 * v32];
    *(v33 + 4) = 0xD00000000000004DLL;
    *(v33 + 5) = 0x8000000225D1C600;
    *(v33 + 6) = 0xD000000000000022;
    *(v33 + 7) = 0x8000000225D1C650;
    strcpy(v33 + 64, "present(with:)");
    v33[79] = -18;
    *(v33 + 10) = 74;
    if (v26)
    {
      v34 = 107;
    }

    else
    {
      v34 = 23;
    }

    *v23 = v34;
    *(v23 + 8) = v30;
    *(v23 + 16) = 0xD00000000000004DLL;
    *(v23 + 24) = 0x8000000225D1C600;
    *(v23 + 32) = v29;
    *(v23 + 40) = 0;
    swift_willThrow();

    v35 = v0[1];

    return v35();
  }
}

uint64_t sub_225AF731C()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_225AF74C4;
  }

  else
  {

    v2 = sub_225AF7440;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225AF7440()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_225AF74C4()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_225AF7598(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_225AF75B8, 0, 0);
}

uint64_t sub_225AF75B8()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_225AF76B0;
  v4 = v0[2];

  return MEMORY[0x2822008A0](v4, 0, 0, 0x28746E6573657270, 0xEE00293A68746977, sub_225AF8A14, v2, &type metadata for AlertPresentationOutcome);
}

uint64_t sub_225AF76B0()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2259FE0C8, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_225AF77EC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2259FE39C;

  return sub_225AF7598(a1, v4);
}

void sub_225AF788C(uint64_t a1, __CFRunLoopSource *a2)
{
  if (qword_27D739F80 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v3 = off_27D73D618;
  MEMORY[0x28223BE20](a1, a2);
  v4 = *(*v3 + *MEMORY[0x277D841D0] + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock(&v3[v5]);
  sub_225AF8A1C(&v3[v4]);
  os_unfair_lock_unlock(&v3[v5]);
  v6 = CFRunLoopGetMain();
  CFRunLoopAddSource(v6, a2, *MEMORY[0x277CBF048]);
}

uint64_t sub_225AF79BC(uint64_t a1, uint64_t a2)
{
  sub_2259CB640(a1, &qword_27D73D620);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D628);
  v5 = *(v4 - 8);
  (*(v5 + 16))(a1, a2, v4);
  return (*(v5 + 56))(a1, 0, 1, v4);
}

uint64_t sub_225AF7A94(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2259FE39C;

  return AlertPresenter.present(with:)(a1, a2);
}

uint64_t static AlertConfiguration.digitalPresentmentAlertDisplayConfiguration(isFaceIDDevice:)@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  v41 = a2;
  v3 = sub_225CCD1C4();
  MEMORY[0x28223BE20](v3 - 8, v4);
  v5 = sub_225CCCCD4();
  v42 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_225CCE434();
  MEMORY[0x28223BE20](v9 - 8, v10);
  v11 = sub_225CCCCE4();
  MEMORY[0x28223BE20](v11 - 8, v12);
  if (a1)
  {
    sub_225CCE3D4();
    if (qword_27D73A7C0 != -1)
    {
      swift_once();
    }

    v13 = __swift_project_value_buffer(v5, qword_27D7429E8);
    v14 = *(v42 + 16);
    v14(v8, v13, v5);
    sub_225CCD1B4();
    sub_225CCCD04();
    v15 = sub_225CCE4F4();
    v38 = v16;
    v39 = v15;
    sub_225CCE3D4();
    v40 = v14;
    v14(v8, v13, v5);
  }

  else
  {
    sub_225CCE3D4();
    if (qword_27D73A7C0 != -1)
    {
      swift_once();
    }

    v17 = __swift_project_value_buffer(v5, qword_27D7429E8);
    v18 = *(v42 + 16);
    v18(v8, v17, v5);
    sub_225CCD1B4();
    sub_225CCCD04();
    v19 = sub_225CCE4F4();
    v38 = v20;
    v39 = v19;
    sub_225CCE3D4();
    v40 = v18;
    v18(v8, v17, v5);
  }

  sub_225CCD1B4();
  sub_225CCCD04();
  v21 = sub_225CCE4F4();
  v36 = v22;
  v37 = v21;
  sub_225CCE3D4();
  if (qword_27D73A7C0 != -1)
  {
    swift_once();
  }

  v23 = __swift_project_value_buffer(v5, qword_27D7429E8);
  v24 = v5;
  v25 = v5;
  v26 = v40;
  v40(v8, v23, v24);
  sub_225CCD1B4();
  sub_225CCCD04();
  v42 = sub_225CCE4F4();
  v35 = v27;
  sub_225CCE3D4();
  v26(v8, v23, v25);
  sub_225CCD1B4();
  sub_225CCCD04();
  result = sub_225CCE4F4();
  v29 = v41;
  v30 = v38;
  *v41 = v39;
  v29[1] = v30;
  v31 = v36;
  v29[2] = v37;
  v29[3] = v31;
  v32 = v35;
  v29[4] = v42;
  v29[5] = v32;
  v29[6] = result;
  v29[7] = v33;
  return result;
}

uint64_t static AlertConfiguration.webPresentmentNoEligibleDocumentsAlertDisplayConfiguration.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_225CCD1C4();
  MEMORY[0x28223BE20](v2 - 8, v3);
  v4 = sub_225CCCCD4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_225CCE434();
  MEMORY[0x28223BE20](v9 - 8, v10);
  v11 = sub_225CCCCE4();
  MEMORY[0x28223BE20](v11 - 8, v12);
  sub_225CCE3D4();
  if (qword_27D73A7C0 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v4, qword_27D7429E8);
  v14 = *(v5 + 16);
  v14(v8, v13, v4);
  sub_225CCD1B4();
  sub_225CCCD04();
  v15 = sub_225CCE4F4();
  v23 = v16;
  v24 = v15;
  sub_225CCE3D4();
  v14(v8, v13, v4);
  sub_225CCD1B4();
  sub_225CCCD04();
  v22 = sub_225CCE4F4();
  v18 = v17;
  sub_225CCE3D4();
  v14(v8, v13, v4);
  sub_225CCD1B4();
  sub_225CCCD04();
  result = sub_225CCE4F4();
  v20 = v23;
  *a1 = v24;
  a1[1] = v20;
  a1[2] = v22;
  a1[3] = v18;
  a1[4] = result;
  a1[5] = v21;
  a1[6] = 0;
  a1[7] = 0;
  return result;
}

uint64_t static AlertConfiguration.webPresentmentProviderOptInAlertDisplayConfiguration(appName:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_225CCD1C4();
  MEMORY[0x28223BE20](v2 - 8, v3);
  v4 = sub_225CCCCD4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_225CCE434();
  MEMORY[0x28223BE20](v9 - 8, v10);
  v11 = sub_225CCCCE4();
  MEMORY[0x28223BE20](v11 - 8, v12);
  sub_225CC7064();
  v13 = sub_225CCE4F4();
  v29 = v14;
  v30 = v13;
  sub_225CCE3D4();
  if (qword_27D73A7C0 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v4, qword_27D7429E8);
  v16 = *(v5 + 16);
  v16(v8, v15, v4);
  sub_225CCD1B4();
  sub_225CCCD04();
  v17 = sub_225CCE4F4();
  v27 = v18;
  v28 = v17;
  sub_225CCE3D4();
  v16(v8, v15, v4);
  sub_225CCD1B4();
  sub_225CCCD04();
  v19 = sub_225CCE4F4();
  v26 = v20;
  sub_225CCE3D4();
  v16(v8, v15, v4);
  sub_225CCD1B4();
  sub_225CCCD04();
  result = sub_225CCE4F4();
  v22 = v29;
  *a1 = v30;
  a1[1] = v22;
  v23 = v27;
  a1[2] = v28;
  a1[3] = v23;
  v24 = v26;
  a1[4] = v19;
  a1[5] = v24;
  a1[6] = result;
  a1[7] = v25;
  return result;
}

unint64_t sub_225AF87C4()
{
  result = qword_27D73D630;
  if (!qword_27D73D630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D630);
  }

  return result;
}

uint64_t sub_225AF8818(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_225AF8860(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t dispatch thunk of AlertPresenting.present(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_225A02E94;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_225AF8A38(uint64_t a1)
{
  v53 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v52 = &v51 - v3;
  v4 = sub_225CCD954();
  v54 = *(v4 - 8);
  v55 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D620);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v51 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D628);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v58 = &v51 - v15;
  if (qword_27D739F80 != -1)
  {
    swift_once();
  }

  v16 = off_27D73D618;
  KeyPath = swift_getKeyPath();
  v19 = MEMORY[0x28223BE20](KeyPath, v18);
  *(&v51 - 2) = sub_225AF9214;
  *(&v51 - 1) = v19;
  v20 = *(*v16 + *MEMORY[0x277D841D0] + 16);
  v21 = (*(*v16 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock(&v16[v21]);
  v56 = v20;
  sub_225AF9218();
  v57 = v21;
  os_unfair_lock_unlock(&v16[v21]);

  if ((*(v13 + 48))(v11, 1, v12) != 1)
  {
    v31 = v58;
    (*(v13 + 32))(v58, v11, v12);
    switch(v53)
    {
      case 3:
        sub_225CCE954();
        sub_225AF91CC(&qword_27D73D638, MEMORY[0x277D85678]);
        v32 = swift_allocError();
        sub_225CCE284();
        v59 = v32;
        break;
      case 1:
        LOBYTE(v59) = 1;
        goto LABEL_14;
      case 0:
        LOBYTE(v59) = 0;
LABEL_14:
        sub_225CCE934();
LABEL_23:
        v49 = v57;
        os_unfair_lock_lock(&v16[v57]);
        v50 = v56;
        sub_2259CB640(&v16[v56], &qword_27D73D620);
        (*(v13 + 56))(&v16[v50], 1, 1, v12);
        os_unfair_lock_unlock(&v16[v49]);
        return (*(v13 + 8))(v31, v12);
      default:
        v54 = 0x8000000225D1C650;
        v33 = sub_225B2C248(MEMORY[0x277D84F90]);
        sub_2259CB5EC();
        v55 = swift_allocError();
        v35 = v34;
        v36 = sub_225CCE954();
        v37 = *(v36 - 8);
        v38 = v52;
        (*(v37 + 56))(v52, 1, 1, v36);
        LODWORD(v36) = (*(v37 + 48))(v38, 1, v36);
        sub_2259CB640(v38, &unk_27D73B050);
        if (v36)
        {
          v39 = 107;
        }

        else
        {
          v39 = 23;
        }

        v40 = MEMORY[0x277D84F90];
        v41 = sub_225B2C374(MEMORY[0x277D84F90]);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v59 = v41;
        sub_225B2C4A0(v33, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v59);

        v43 = v59;
        v44 = sub_225B29AA0(0, 1, 1, v40);
        v46 = *(v44 + 2);
        v45 = *(v44 + 3);
        if (v46 >= v45 >> 1)
        {
          v44 = sub_225B29AA0((v45 > 1), v46 + 1, 1, v44);
        }

        v31 = v58;
        *(v44 + 2) = v46 + 1;
        v47 = &v44[56 * v46];
        *(v47 + 4) = 0xD000000000000038;
        *(v47 + 5) = 0x8000000225D1C8C0;
        v48 = v54;
        *(v47 + 6) = 0xD000000000000022;
        *(v47 + 7) = v48;
        strcpy(v47 + 64, "present(with:)");
        v47[79] = -18;
        *(v47 + 10) = 92;
        *v35 = v39;
        *(v35 + 8) = v44;
        *(v35 + 16) = 0xD000000000000038;
        *(v35 + 24) = 0x8000000225D1C8C0;
        *(v35 + 32) = v43;
        *(v35 + 40) = 0;
        v59 = v55;
        break;
    }

    sub_225CCE924();
    goto LABEL_23;
  }

  sub_2259CB640(v11, &qword_27D73D620);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v22 = off_28105B918;
  v23 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v24 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v24));
  v26 = v54;
  v25 = v55;
  (*(v54 + 16))(v7, &v22[v23], v55);
  os_unfair_lock_unlock(&v22[v24]);
  v27 = sub_225CCD934();
  v28 = sub_225CCED14();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_2259A7000, v27, v28, "AlertPresenter unexpected nil value for alert continuation.", v29, 2u);
    MEMORY[0x22AA6F950](v29, -1, -1);
  }

  return (*(v26 + 8))(v7, v25);
}

uint64_t sub_225AF91CC(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_225AF9230@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(*(*(a1 + 16) - 8) + 32))(a3, v3);
  }

  (*(*(*(a1 + 24) - 8) + 32))(a2, v3, *(a1 + 24));
  return swift_willThrowTypedImpl();
}

uint64_t AsyncPromise.__allocating_init()()
{
  v0 = swift_allocObject();
  AsyncPromise.init()();
  return v0;
}

uint64_t AsyncPromise.init()()
{
  v1 = type metadata accessor for AsyncPromise.State();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v8 - v4;
  swift_storeEnumTagMultiPayload();
  v6 = sub_225B515E8();
  (*(v2 + 8))(v5, v1);
  *(v0 + 16) = v6;
  return v0;
}

uint64_t AsyncPromise.value.getter(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v2[6] = *(*v1 + 80);
  sub_225CCEFC4();
  v2[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73AC48);
  v3 = sub_225CCEB24();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  v4 = sub_225CCEB34();
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  v2[14] = swift_task_alloc();
  v5 = sub_225CCFC34();
  v2[15] = v5;
  v2[16] = *(v5 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v6 = type metadata accessor for AsyncPromise.State();
  v2[19] = v6;
  v2[20] = *(v6 - 8);
  v2[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225AF96F8, 0, 0);
}

uint64_t sub_225AF96F8()
{
  v38 = v0;
  v1 = v0[6];
  v2 = *(v0[5] + 16);
  *swift_task_alloc() = v1;
  KeyPath = swift_getKeyPath();

  v4 = swift_task_alloc();
  v4[2] = v1;
  v4[3] = sub_225AF7558;
  v4[4] = KeyPath;

  sub_225B51530(sub_225AFAE1C, v4, v2);

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v11 = v0[14];
    v12 = MEMORY[0x277D84F90];
    v13 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v15 = v14;
    v16 = sub_225CCE954();
    v17 = *(v16 - 8);
    (*(v17 + 56))(v11, 1, 1, v16);
    LODWORD(v16) = (*(v17 + 48))(v11, 1, v16);
    sub_2259DB318(v11);
    if (v16)
    {
      v18 = 108;
    }

    else
    {
      v18 = 23;
    }

    v36 = v18;
    v19 = sub_225B2C374(v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v37 = v19;
    sub_225B2C4A0(v13, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v37);

    v21 = v37;
    v22 = sub_225B29AA0(0, 1, 1, v12);
    v24 = *(v22 + 2);
    v23 = *(v22 + 3);
    if (v24 >= v23 >> 1)
    {
      v22 = sub_225B29AA0((v23 > 1), v24 + 1, 1, v22);
    }

    v26 = v0[20];
    v25 = v0[21];
    v27 = v0[19];
    *(v22 + 2) = v24 + 1;
    v28 = &v22[56 * v24];
    *(v28 + 4) = 0xD00000000000002BLL;
    *(v28 + 5) = 0x8000000225D1C930;
    *(v28 + 6) = 0xD000000000000020;
    *(v28 + 7) = 0x8000000225D1C900;
    *(v28 + 8) = 0x65756C6176;
    *(v28 + 9) = 0xE500000000000000;
    *(v28 + 10) = 36;
    *v15 = v36;
    *(v15 + 8) = v22;
    *(v15 + 16) = 0xD00000000000002BLL;
    *(v15 + 24) = 0x8000000225D1C930;
    *(v15 + 32) = v21;
    *(v15 + 40) = 0;
    swift_willThrow();
    (*(v26 + 8))(v25, v27);

    v35 = v0[1];
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v6 = v0[17];
    v7 = v0[18];
    v8 = v0[15];
    v9 = v0[16];
    v10 = v0[4];
    (*(v9 + 32))(v7, v0[21], v8);
    (*(v9 + 16))(v6, v7, v8);
    sub_225AF9230(v8, (v0 + 3), v10);
    (*(v0[16] + 8))(v0[18], v0[15]);

    v35 = v0[1];
LABEL_10:

    return v35();
  }

  v30 = v0[6];
  v31 = swift_task_alloc();
  *(v31 + 16) = v30;
  sub_225B51530(sub_225AFAE4C, v31, v2);

  sub_225CCE9F4();
  v32 = swift_task_alloc();
  v0[22] = v32;
  *v32 = v0;
  v32[1] = sub_225AF9C48;
  v33 = v0[7];
  v34 = v0[8];

  return MEMORY[0x2822005A8](v33, 0, 0, v34, v0 + 2);
}

uint64_t sub_225AF9C48()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_225AFA0E8;
  }

  else
  {
    v2 = sub_225AF9D5C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225AF9D5C()
{
  v27 = v0;
  v1 = v0[7];
  v2 = v0[6];
  (*(v0[9] + 8))(v0[10], v0[8]);
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[14];
    v5 = MEMORY[0x277D84F90];
    v6 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v8 = v7;
    v9 = sub_225CCE954();
    v10 = *(v9 - 8);
    (*(v10 + 56))(v4, 1, 1, v9);
    (*(v10 + 48))(v4, 1, v9);
    sub_2259DB318(v4);
    v11 = sub_225B2C374(v5);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = v11;
    sub_225B2C4A0(v6, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v26);

    v13 = v26;
    v14 = sub_225B29AA0(0, 1, 1, v5);
    v16 = *(v14 + 2);
    v15 = *(v14 + 3);
    if (v16 >= v15 >> 1)
    {
      v14 = sub_225B29AA0((v15 > 1), v16 + 1, 1, v14);
    }

    v18 = v0[12];
    v17 = v0[13];
    v19 = v0[11];
    *(v14 + 2) = v16 + 1;
    v20 = &v14[56 * v16];
    *(v20 + 4) = 0;
    *(v20 + 5) = 0;
    *(v20 + 6) = 0xD000000000000020;
    *(v20 + 7) = 0x8000000225D1C900;
    *(v20 + 8) = 0x65756C6176;
    *(v20 + 9) = 0xE500000000000000;
    *(v20 + 10) = 46;
    *v8 = 23;
    *(v8 + 8) = v14;
    *(v8 + 16) = 0;
    *(v8 + 24) = 0;
    *(v8 + 32) = v13;
    *(v8 + 40) = 0;
    swift_willThrow();
    (*(v18 + 8))(v17, v19);

    v21 = v0[1];
  }

  else
  {
    v22 = v0[6];
    v23 = v0[7];
    v24 = v0[4];
    (*(v0[12] + 8))(v0[13], v0[11]);
    (*(v3 + 32))(v24, v23, v22);

    v21 = v0[1];
  }

  return v21();
}

uint64_t sub_225AFA0E8()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  (*(v0[9] + 8))(v0[10], v0[8]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_225AFA1D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v15[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73AC48);
  v3 = sub_225CCEAC4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v15 - v6;
  v8 = sub_225CCEAF4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = v15 - v11;
  v13 = type metadata accessor for AsyncPromise.State();
  (*(*(v13 - 8) + 8))(a1, v13);
  sub_225AFA3F8(v7);
  sub_225CCEAA4();
  (*(v4 + 8))(v7, v3);
  (*(v9 + 32))(a1, v12, v8);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_225AFA3F8@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D858A0];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73AC48);
  v3 = sub_225CCEAC4();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t AsyncPromise.fulfill(value:)(uint64_t a1)
{
  v3 = *(*v1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73AC48);
  v4 = sub_225CCFC34();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v10 - v7;
  (*(*(v3 - 8) + 16))(&v10 - v7, a1, v3);
  swift_storeEnumTagMultiPayload();
  sub_225AFA5E0(v8);
  return (*(v5 + 8))(v8, v4);
}

void sub_225AFA5E0(uint64_t a1)
{
  v2 = v1[2];
  v3[2] = *(*v1 + 80);
  v3[3] = a1;
  type metadata accessor for AsyncPromise.State();
  sub_225B51530(sub_225AFAFB4, v3, v2);
}

uint64_t AsyncPromise.fail(error:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73AC48);
  v2 = sub_225CCFC34();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v9 - v5;
  *(&v9 - v5) = a1;
  swift_storeEnumTagMultiPayload();
  v7 = a1;
  sub_225AFA5E0(v6);
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_225AFA780(char *a1, uint64_t a2)
{
  v47 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73AC48);
  v48 = sub_225CCFC34();
  v50 = *(v48 - 8);
  v4 = MEMORY[0x28223BE20](v48, v3);
  v43 = &v41 - v5;
  MEMORY[0x28223BE20](v4, v6);
  v46 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_225CCEAB4();
  v41 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v9);
  v11 = (&v41 - v10);
  v45 = sub_225CCEAF4();
  v12 = *(v45 - 8);
  MEMORY[0x28223BE20](v45, v13);
  v15 = &v41 - v14;
  v44 = sub_225CCD954();
  v42 = *(v44 - 8);
  MEMORY[0x28223BE20](v44, v16);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for AsyncPromise.State();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v21);
  v23 = &v41 - v22;
  (*(v20 + 16))(&v41 - v22, a1, v19);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      if (qword_28105B910 != -1)
      {
        swift_once();
      }

      v25 = off_28105B918;
      v26 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
      v27 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((off_28105B918 + v27));
      v28 = v42;
      v29 = v44;
      v42[2](v18, &v25[v26], v44);
      os_unfair_lock_unlock(&v25[v27]);
      v30 = sub_225CCD934();
      v31 = sub_225CCED14();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_2259A7000, v30, v31, "AsyncPromise attempting to fulfill result but a result is already set", v32, 2u);
        MEMORY[0x22AA6F950](v32, -1, -1);
      }

      (v28[1])(v18, v29);
      return (*(v20 + 8))(v23, v19);
    }

    else
    {
      (*(v20 + 8))(a1, v19);
      (*(v50 + 16))(a1, v47, v48);
      return swift_storeEnumTagMultiPayload();
    }
  }

  else
  {
    v42 = v11;
    v44 = v8;
    (*(v20 + 8))(a1, v19);
    v34 = v45;
    (*(v12 + 32))(v15, v23, v45);
    v35 = *(v50 + 16);
    v37 = v47;
    v36 = v48;
    v50 += 16;
    v35(v43, v47, v48);
    v38 = v49;
    sub_225AF9230(v36, &v51, v46);
    v39 = (v12 + 8);
    if (v38)
    {
      sub_225CCEAE4();
      (*v39)(v15, v34);
    }

    else
    {
      v40 = v42;
      sub_225CCEAD4();
      (*(v41 + 8))(v40, v44);
      (*v39)(v15, v45);
    }

    v35(a1, v37, v48);
    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t AsyncPromise.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_225AFAEFC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73AC48);
  result = sub_225CCEAF4();
  if (v1 <= 0x3F)
  {
    result = sub_225CCFC34();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t AsyncQueue.__allocating_init()()
{
  v0 = swift_allocObject();
  AsyncQueue.init()();
  return v0;
}

uint64_t AsyncQueue.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE00);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v37 = &v34 - v3;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D758);
  v4 = *(v39 - 8);
  MEMORY[0x28223BE20](v39, v5);
  v7 = &v34 - v6;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D760);
  v8 = *(v36 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x28223BE20](v36, v10);
  v35 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v34 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D768);
  v17 = MEMORY[0x28223BE20](v15 - 8, v16);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v34 - v21;
  v38 = v0;
  swift_defaultActor_initialize();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D770);
  v24 = *(v23 - 8);
  (*(v24 + 56))(v22, 1, 1, v23);
  v40 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D778);
  (*(v4 + 104))(v7, *MEMORY[0x277D85778], v39);
  sub_225CCEA14();
  sub_225A0DE54(v22, v19, &qword_27D73D768);
  result = (*(v24 + 48))(v19, 1, v23);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v26 = v38;
    (*(v24 + 32))(v38 + OBJC_IVAR____TtC13CoreIDVShared10AsyncQueue__streamContinuation, v19, v23);
    v27 = sub_225CCE994();
    v28 = v37;
    (*(*(v27 - 8) + 56))(v37, 1, 1, v27);
    v30 = v35;
    v29 = v36;
    (*(v8 + 16))(v35, v14, v36);
    v31 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v32 = swift_allocObject();
    *(v32 + 16) = 0;
    *(v32 + 24) = 0;
    (*(v8 + 32))(v32 + v31, v30, v29);
    v33 = sub_225AFBC30(0, 0, v28, &unk_225CE7220, v32);
    (*(v8 + 8))(v14, v29);
    *(v26 + OBJC_IVAR____TtC13CoreIDVShared10AsyncQueue__task) = v33;
    sub_2259CB640(v22, &qword_27D73D768);
    return v26;
  }

  return result;
}

uint64_t sub_225AFB49C(uint64_t a1, uint64_t a2)
{
  sub_2259CB640(a2, &qword_27D73D768);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D770);
  v7 = *(v4 - 8);
  (*(v7 + 16))(a2, a1, v4);
  v5 = *(v7 + 56);

  return v5(a2, 0, 1, v4);
}

uint64_t sub_225AFB580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D790);
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225AFB64C, 0, 0);
}

uint64_t sub_225AFB64C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D760);
  sub_225CCE9F4();
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_225AFB718;
  v2 = *(v0 + 40);

  return MEMORY[0x2822003E8](v0 + 16, 0, 0, v2);
}

uint64_t sub_225AFB718()
{

  return MEMORY[0x2822009F8](sub_225AFB814, 0, 0);
}

uint64_t sub_225AFB814()
{
  v1 = v0[2];
  v2 = v0[3];
  v0[9] = v1;
  v0[10] = v2;
  if (!v1)
  {
    (*(v0[6] + 8))(v0[7], v0[5]);
    goto LABEL_5;
  }

  if (sub_225CCEA44())
  {
    (*(v0[6] + 8))(v0[7], v0[5]);
    sub_2259AA0D0(v1);
LABEL_5:

    v3 = v0[1];

    return v3();
  }

  v6 = (v1 + *v1);
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_225AFB990;

  return v6();
}

uint64_t sub_225AFB990()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v3 = *v0;

  sub_2259AA0D0(v2);
  v4 = swift_task_alloc();
  *(v1 + 64) = v4;
  *v4 = v3;
  v4[1] = sub_225AFB718;
  v5 = *(v1 + 40);

  return MEMORY[0x2822003E8](v1 + 16, 0, 0, v5);
}

uint64_t sub_225AFBB34(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D760) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_225A02E94;

  return sub_225AFB580(a1, v6, v7, v1 + v5);
}

uint64_t sub_225AFBC30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE00);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = v26 - v11;
  sub_225A0DE54(a3, v26 - v11, &qword_27D73FE00);
  v13 = sub_225CCE994();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_2259CB640(v12, &qword_27D73FE00);
  }

  else
  {
    sub_225CCE984();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_225CCE904();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_225CCE544() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_2259CB640(a3, &qword_27D73FE00);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2259CB640(a3, &qword_27D73FE00);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_225AFBF30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE00);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = v26 - v11;
  sub_225A0DE54(a3, v26 - v11, &qword_27D73FE00);
  v13 = sub_225CCE994();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_2259CB640(v12, &qword_27D73FE00);
  }

  else
  {
    sub_225CCE984();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_225CCE904();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_225CCE544() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D788);
      v22 = (v19 | v17);
      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v23 = swift_task_create();

      sub_2259CB640(a3, &qword_27D73FE00);

      return v23;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2259CB640(a3, &qword_27D73FE00);
  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  *(v25 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D788);
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t AsyncQueue.deinit()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D770);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v10 - v5;
  v7 = OBJC_IVAR____TtC13CoreIDVShared10AsyncQueue__streamContinuation;
  (*(v3 + 16))(&v10 - v5, v1 + OBJC_IVAR____TtC13CoreIDVShared10AsyncQueue__streamContinuation, v2);
  sub_225CCE9D4();
  v8 = *(v3 + 8);
  v8(v6, v2);
  v8((v1 + v7), v2);

  swift_defaultActor_destroy();
  return v1;
}

uint64_t AsyncQueue.__deallocating_deinit()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D770);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v10 - v5;
  v7 = OBJC_IVAR____TtC13CoreIDVShared10AsyncQueue__streamContinuation;
  (*(v3 + 16))(&v10 - v5, v1 + OBJC_IVAR____TtC13CoreIDVShared10AsyncQueue__streamContinuation, v2);
  sub_225CCE9D4();
  v8 = *(v3 + 8);
  v8(v6, v2);
  v8((v1 + v7), v2);

  swift_defaultActor_destroy();
  return swift_defaultActor_deallocate();
}

uint64_t sub_225AFC4CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D780);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v11 - v7;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v11[0] = &unk_225CE7238;
  v11[1] = v9;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D770);
  sub_225CCE9C4();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_225AFC60C(uint64_t a1, int *a2)
{
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_2259FE39C;

  return v5();
}

uint64_t sub_225AFC6F4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_225A02E94;

  return sub_225AFC60C(a1, v4);
}

uint64_t sub_225AFC7AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_225AFC7D4, 0, 0);
}

uint64_t sub_225AFC7D4()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  v2 = *(v0 + 24);
  *(v1 + 16) = *(v0 + 40);
  *(v1 + 32) = v2;
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  v3[1] = sub_225AFC8C4;
  v4 = *(v0 + 40);
  v5 = *(v0 + 16);

  return MEMORY[0x2822007B8](v5, 0, 0, 0x3A5F28636E797361, 0xE900000000000029, sub_225AFCC14, v1, v4);
}

uint64_t sub_225AFC8C4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_225AFC9D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = a3;
  v23 = a4;
  v24 = a2;
  v7 = sub_225CCE944();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v21 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D780);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v21 - v15;
  v21 = OBJC_IVAR____TtC13CoreIDVShared10AsyncQueue__streamContinuation;
  (*(v8 + 16))(v11, a1, v7);
  v17 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v18 = swift_allocObject();
  v19 = v22;
  *(v18 + 2) = a5;
  *(v18 + 3) = v19;
  *(v18 + 4) = v23;
  (*(v8 + 32))(&v18[v17], v11, v7);
  v25 = &unk_225CE7300;
  v26 = v18;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D770);
  sub_225CCE9C4();
  return (*(v13 + 8))(v16, v12);
}

uint64_t sub_225AFCC20(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = *(a5 - 8);
  v5[5] = swift_task_alloc();
  v7 = swift_task_alloc();
  v5[6] = v7;
  v10 = (a2 + *a2);
  v8 = swift_task_alloc();
  v5[7] = v8;
  *v8 = v5;
  v8[1] = sub_225AFCD80;

  return v10(v7);
}

uint64_t sub_225AFCD80()
{

  return MEMORY[0x2822009F8](sub_225AFCE7C, 0, 0);
}

uint64_t sub_225AFCE7C()
{
  v1 = v0[6];
  v2 = v0[3];
  v3 = v0[4];
  (*(v3 + 16))(v0[5], v1, v2);
  sub_225CCE944();
  sub_225CCE934();
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_225AFCF60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_225AFCF88, 0, 0);
}

uint64_t sub_225AFCF88()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  v2 = *(v0 + 24);
  *(v1 + 16) = *(v0 + 40);
  *(v1 + 32) = v2;
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  v3[1] = sub_225AFD078;
  v4 = *(v0 + 40);
  v5 = *(v0 + 16);

  return MEMORY[0x2822008A0](v5, 0, 0, 0x3A5F28636E797361, 0xE900000000000029, sub_225AFD468, v1, v4);
}

uint64_t sub_225AFD078()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_225AFD1B4, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_225AFD1B4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_225AFD218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = a3;
  v23 = a4;
  v24 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73AC48);
  v7 = sub_225CCE944();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v21 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D780);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v21 - v15;
  v21 = OBJC_IVAR____TtC13CoreIDVShared10AsyncQueue__streamContinuation;
  (*(v8 + 16))(v11, a1, v7);
  v17 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v18 = swift_allocObject();
  v19 = v22;
  *(v18 + 2) = a5;
  *(v18 + 3) = v19;
  *(v18 + 4) = v23;
  (*(v8 + 32))(&v18[v17], v11, v7);
  v25 = &unk_225CE72F0;
  v26 = v18;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D770);
  sub_225CCE9C4();
  return (*(v13 + 8))(v16, v12);
}

uint64_t sub_225AFD474(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[5] = *(a5 - 8);
  v5[6] = swift_task_alloc();
  v7 = swift_task_alloc();
  v5[7] = v7;
  v10 = (a2 + *a2);
  v8 = swift_task_alloc();
  v5[8] = v8;
  *v8 = v5;
  v8[1] = sub_225AFD5D4;

  return v10(v7);
}

uint64_t sub_225AFD5D4()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_225AFD7DC;
  }

  else
  {
    v2 = sub_225AFD6E8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225AFD6E8()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = v0[5];
  (*(v3 + 16))(v0[6], v1, v2);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73AC48);
  sub_225CCE944();
  sub_225CCE934();
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_225AFD7DC()
{
  v0[2] = v0[9];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73AC48);
  sub_225CCE944();
  sub_225CCE924();

  v1 = v0[1];

  return v1();
}

uint64_t type metadata accessor for AsyncQueue()
{
  result = qword_28105BF08;
  if (!qword_28105BF08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_225AFD8F4()
{
  sub_225AFDC98();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of AsyncQueue.async<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 128) + **(*v4 + 128));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_225A02E94;

  return v12(a1, a2, a3, a4);
}

{
  v12 = (*(*v4 + 136) + **(*v4 + 136));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_2259FE39C;

  return v12(a1, a2, a3, a4);
}

void sub_225AFDC98()
{
  if (!qword_28105B8E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73D778);
    v0 = sub_225CCE9E4();
    if (!v1)
    {
      atomic_store(v0, &qword_28105B8E0);
    }
  }
}

uint64_t sub_225AFDCFC(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_225AFDDF4;

  return v6(a1);
}

uint64_t sub_225AFDDF4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_225AFDEEC(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_225AFDFE0;

  return v5(v2 + 32);
}

uint64_t sub_225AFDFE0()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_225AFE0F4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_225A02E94;

  return sub_225AFDEEC(a1, v4);
}

uint64_t sub_225AFE1AC(uint64_t a1)
{
  v3 = v2;
  v5 = v1[2];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73AC48);
  v6 = *(sub_225CCE944() - 8);
  v7 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v8 = v1[3];
  v9 = v1[4];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_2259FE39C;

  return sub_225AFD474(a1, v8, v9, v1 + v7, v5);
}

uint64_t sub_225AFE2CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = *(sub_225CCE944() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_225A02E94;

  return sub_225AFCC20(a1, v7, v8, v1 + v6, v4);
}

uint64_t sub_225AFE3D8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_225A02E94;

  return sub_225AFDCFC(a1, v4);
}

CoreIDVShared::EnrolledBiometricType_optional __swiftcall EnrolledBiometricType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_225CCF5D4();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t EnrolledBiometricType.rawValue.getter()
{
  if (*v0)
  {
    return 0x444965636146;
  }

  else
  {
    return 0x44496863756F54;
  }
}

uint64_t sub_225AFE52C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x444965636146;
  }

  else
  {
    v3 = 0x44496863756F54;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x444965636146;
  }

  else
  {
    v5 = 0x44496863756F54;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_225CCF934();
  }

  return v8 & 1;
}

uint64_t sub_225AFE5D0()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225AFE650()
{
  sub_225CCE5B4();
}

uint64_t sub_225AFE6BC()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225AFE738@<X0>(char *a1@<X8>)
{
  v2 = sub_225CCF5D4();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_225AFE798(uint64_t *a1@<X8>)
{
  v2 = 0x44496863756F54;
  if (*v1)
  {
    v2 = 0x444965636146;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

void sub_225AFE80C(char *a1@<X8>)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CD4790]) init];
  sub_225AFF2A4();
  v3 = [v2 biometryType];

  if (v3 == 2)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (v3 == 1)
  {
    v4 = 0;
  }

  *a1 = v4;
}

uint64_t sub_225AFE884()
{
  (*(*v0 + 104))(&var1);
  v1 = 0x4449206863756F54;
  if (var1)
  {
    v1 = 0x44492065636146;
  }

  if (var1 == 2)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_225AFE910()
{
  (*(*v0 + 104))(&v3);
  if (v3 == 2)
  {
    v1 = 0;
  }

  else
  {
    if (v3)
    {
      v1 = 1;
    }

    else
    {
      v1 = sub_225CCF934();
    }
  }

  return v1 & 1;
}

uint64_t sub_225AFEA28()
{
  (*(**v0 + 104))(&v3);
  v1 = 0x4449206863756F54;
  if (v3)
  {
    v1 = 0x44492065636146;
  }

  if (v3 == 2)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

id sub_225AFEB08()
{
  v58 = *MEMORY[0x277D85DE8];
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = &v41 - v2;
  v4 = [objc_allocWithZone(MEMORY[0x277CD4790]) init];
  v52 = 0;
  v5 = [v4 canEvaluatePolicy:2 error:&v52];
  if (v5)
  {
    goto LABEL_5;
  }

  v6 = v52;
  if (v52)
  {
    type metadata accessor for Code(0);
    v52 = -5;
    sub_225AFF830();
    v7 = v6;
    v8 = sub_225CCCBE4();

    if (v8)
    {

LABEL_5:
      return v5;
    }
  }

  v46 = "olicy unsuccessful";
  v9 = v6;
  v10 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  v48 = swift_allocError();
  v47 = v11;
  v49 = v9;
  if (!v6)
  {
    v16 = sub_225CCE954();
    (*(*(v16 - 8) + 56))(v3, 1, 1, v16);
    goto LABEL_14;
  }

  v42 = v10;
  v41 = v6;
  swift_getErrorValue();
  v12 = v51;
  v13 = v9;
  sub_225B21FAC(v12, &v52);

  v14 = v53;
  if (!v53)
  {
    v52 = v13;
    v17 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
    sub_2259E4540();
    if (swift_dynamicCast())
    {
      v18 = v50;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_225CD30F0;
      *(inited + 32) = 20;
      v20 = [v18 code];
      v21 = MEMORY[0x277D83BF8];
      *(inited + 64) = MEMORY[0x277D83B88];
      *(inited + 72) = v21;
      *(inited + 40) = v20;
      v15 = sub_225B2C374(inited);
      swift_setDeallocating();
      sub_2259CB640(inited + 32, &qword_27D73B060);

      v22 = v17;
      v44 = 0;
      v43 = 0;
      v45 = 0;
      v14 = MEMORY[0x277D84F90];
      v6 = v41;
      goto LABEL_12;
    }

    v52 = v17;
    v23 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
    v16 = sub_225CCE954();
    v24 = swift_dynamicCast();
    (*(*(v16 - 8) + 56))(v3, v24 ^ 1u, 1, v16);
    v6 = v41;
    v9 = v49;
    v10 = v42;
LABEL_14:
    sub_225CCE954();
    v25 = (*(*(v16 - 8) + 48))(v3, 1, v16);
    sub_2259CB640(v3, &unk_27D73B050);
    if (v25)
    {
      v26 = 0;
    }

    else
    {
      v26 = 23;
    }

    v45 = v26;
    v14 = MEMORY[0x277D84F90];
    v15 = sub_225B2C374(MEMORY[0x277D84F90]);
    v27 = v9;
    v44 = 0x8000000225D1CA00;
    v43 = 0xD000000000000032;
    goto LABEL_18;
  }

  v45 = v52;
  v43 = v54;
  v44 = v55;
  v15 = v56;
  v6 = v57;
LABEL_12:
  v10 = v42;
LABEL_18:
  v46 |= 0x8000000000000000;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v52 = v15;
  sub_225B2C4A0(v10, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v52);

  v29 = v52;
  v30 = v6;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v14 = sub_225B29AA0(0, *(v14 + 2) + 1, 1, v14);
  }

  v31 = v5;
  v33 = *(v14 + 2);
  v32 = *(v14 + 3);
  v34 = v4;
  if (v33 >= v32 >> 1)
  {
    v14 = sub_225B29AA0((v32 > 1), v33 + 1, 1, v14);
  }

  v35 = v49;

  *(v14 + 2) = v33 + 1;
  v36 = &v14[56 * v33];
  *(v36 + 4) = 0xD000000000000032;
  *(v36 + 5) = 0x8000000225D1CA00;
  v37 = v46;
  *(v36 + 6) = 0xD000000000000024;
  *(v36 + 7) = v37;
  strcpy(v36 + 64, "isPasscodeSet");
  *(v36 + 39) = -4864;
  *(v36 + 10) = 61;
  v38 = v47;
  *v47 = v45;
  v39 = v43;
  v38[1] = v14;
  v38[2] = v39;
  v38[3] = v44;
  v38[4] = v29;
  v38[5] = v30;
  swift_willThrow();

  return v31;
}

BOOL sub_225AFF14C()
{
  v10[1] = *MEMORY[0x277D85DE8];
  v0 = [objc_allocWithZone(MEMORY[0x277CD4790]) init];
  v10[0] = 0;
  if (([v0 canEvaluatePolicy:1 error:v10] & 1) != 0 || !v10[0])
  {
    goto LABEL_9;
  }

  v1 = v10[0];
  v2 = [v1 domain];
  v3 = sub_225CCE474();
  v5 = v4;

  if (v3 == 0xD00000000000001DLL && 0x8000000225D1C9E0 == v5)
  {
  }

  else
  {
    v7 = sub_225CCF934();

    if ((v7 & 1) == 0)
    {

LABEL_9:
      return 0;
    }
  }

  v9 = [v1 code];

  return v9 == -8;
}

uint64_t sub_225AFF2A4()
{
  v27[1] = *MEMORY[0x277D85DE8];
  v0 = sub_225CCD954();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(MEMORY[0x277CD4790]) init];
  if (sub_225AFF14C())
  {

    return 1;
  }

  else
  {
    v27[0] = 0;
    v26 = [v5 canEvaluatePolicy:1 error:v27];
    if (v27[0])
    {
      v7 = qword_28105B910;
      v8 = v27[0];
      if (v7 != -1)
      {
        swift_once();
      }

      v9 = off_28105B918;
      v10 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
      v11 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((off_28105B918 + v11));
      (*(v1 + 16))(v4, &v9[v10], v0);
      os_unfair_lock_unlock(&v9[v11]);
      v12 = v8;
      v13 = sub_225CCD934();
      v14 = sub_225CCED14();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v25 = v1;
        v16 = v15;
        v24 = swift_slowAlloc();
        v27[0] = v24;
        *v16 = 136446210;
        v17 = [v12 localizedDescription];
        v18 = sub_225CCE474();
        v20 = v19;

        v21 = sub_2259BE198(v18, v20, v27);

        *(v16 + 4) = v21;
        _os_log_impl(&dword_2259A7000, v13, v14, "LA canEvaluatePolicy returned error: %{public}s", v16, 0xCu);
        v22 = v24;
        __swift_destroy_boxed_opaque_existential_0(v24);
        MEMORY[0x22AA6F950](v22, -1, -1);
        MEMORY[0x22AA6F950](v16, -1, -1);

        (*(v25 + 8))(v4, v0);
      }

      else
      {

        (*(v1 + 8))(v4, v0);
      }
    }

    else
    {
    }

    return v26;
  }
}

unint64_t sub_225AFF5FC()
{
  result = qword_27D73D798;
  if (!qword_27D73D798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D798);
  }

  return result;
}

unint64_t sub_225AFF830()
{
  result = qword_27D73AA88;
  if (!qword_27D73AA88)
  {
    type metadata accessor for Code(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73AA88);
  }

  return result;
}

uint64_t sub_225AFF8B8()
{
  v0 = type metadata accessor for DIPAccountManager();
  v1 = swift_allocObject();
  DIPAccountManager.init()();
  v5 = v0;
  v6 = &protocol witness table for DIPAccountManager;
  *&v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D7B8);
  v2 = swift_allocObject();
  *(v2 + 56) = 0;
  result = sub_2259A9C20(&v4, v2 + 16);
  qword_28105A7F0 = v2;
  return result;
}

uint64_t DIPAccountManager.__allocating_init()()
{
  v0 = swift_allocObject();
  DIPAccountManager.init()();
  return v0;
}

void static DIPAccountManager.sharedInstance.getter(uint64_t a1@<X8>)
{
  if (qword_28105A7E8 != -1)
  {
    swift_once();
  }

  v2 = qword_28105A7F0;
  os_unfair_lock_lock((qword_28105A7F0 + 56));
  sub_225A32940(&v2[4], a1);

  os_unfair_lock_unlock(v2 + 14);
}

void sub_225AFF9FC(uint64_t a1@<X8>)
{
  if (qword_28105A7E8 != -1)
  {
    swift_once();
  }

  v2 = qword_28105A7F0;
  os_unfair_lock_lock((qword_28105A7F0 + 56));
  sub_225A32940(&v2[4], a1);

  os_unfair_lock_unlock(v2 + 14);
}

uint64_t sub_225AFFA7C(uint64_t a1)
{
  v1 = sub_225A32940(a1, v5);
  if (qword_28105A7E8 != -1)
  {
    v1 = swift_once();
  }

  v3 = qword_28105A7F0;
  MEMORY[0x28223BE20](v1, v2);
  os_unfair_lock_lock(v3 + 14);
  sub_225B05894(&v3[4]);
  os_unfair_lock_unlock(v3 + 14);
  return __swift_destroy_boxed_opaque_existential_0(v5);
}

uint64_t static DIPAccountManager.sharedInstance.setter(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (qword_28105A7E8 != -1)
  {
    a1 = swift_once();
  }

  v3 = qword_28105A7F0;
  MEMORY[0x28223BE20](a1, a2);
  os_unfair_lock_lock(v3 + 14);
  sub_225AFFEE8(&v3[4]);
  os_unfair_lock_unlock(v3 + 14);
  return __swift_destroy_boxed_opaque_existential_0(v2);
}

void (*static DIPAccountManager.sharedInstance.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x58uLL);
  }

  v3 = v2;
  *a1 = v2;
  if (qword_28105A7E8 != -1)
  {
    swift_once();
  }

  v4 = qword_28105A7F0;
  *(v3 + 80) = qword_28105A7F0;
  os_unfair_lock_lock(v4 + 14);
  sub_225A32940(&v4[4], v3);
  os_unfair_lock_unlock(v4 + 14);
  return sub_225AFFCC8;
}

void sub_225AFFCC8(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  if (a2)
  {
    v4 = sub_225A32940(*a1, v2 + 40);
    MEMORY[0x28223BE20](v4, v5);
    os_unfair_lock_lock(v3 + 14);
    sub_225B05894(&v3[4]);
    os_unfair_lock_unlock(v3 + 14);
    __swift_destroy_boxed_opaque_existential_0(v2 + 40);
  }

  else
  {
    MEMORY[0x28223BE20](a1, a2);
    os_unfair_lock_lock(v3 + 14);
    sub_225B05894(&v3[4]);
    os_unfair_lock_unlock(v3 + 14);
  }

  __swift_destroy_boxed_opaque_existential_0(v2);
  free(v2);
}

void *DIPAccountManager.init()()
{
  v0[2] = 0xD000000000000015;
  v0[3] = 0x8000000225D1CA70;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D7A0);
  v1 = swift_allocObject();
  *(v1 + 24) = 0;
  *(v1 + 16) = 0;
  v0[5] = v1;
  v2 = [objc_opt_self() defaultStore];
  if (!v2)
  {
    v2 = [objc_allocWithZone(MEMORY[0x277CB8F48]) init];
  }

  v0[4] = v2;
  v3 = [v2 aa_primaryAppleAccount];
  v4 = v0[5];
  MEMORY[0x28223BE20](v3, v5);
  os_unfair_lock_lock((v4 + 24));
  sub_225AFFFA0((v4 + 16));
  os_unfair_lock_unlock((v4 + 24));

  return v0;
}

uint64_t sub_225AFFEE8(uint64_t a1)
{
  v3 = *(v1 + 16);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_225A32940(v3, a1);
}

Swift::Void __swiftcall DIPAccountManager.reloadPrimaryAccount()()
{
  v1 = [*(v0 + 32) aa_primaryAppleAccount];
  v2 = *(v0 + 40);
  os_unfair_lock_lock((v2 + 24));
  sub_225B058B0((v2 + 16));
  os_unfair_lock_unlock((v2 + 24));
}

id sub_225AFFFA0(id *a1)
{
  v3 = *(v1 + 16);

  *a1 = v3;
  return v3;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DIPAccountManager.verifyAccountStatus(requireHSA2:)(Swift::Bool requireHSA2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v70 - v5;
  v7 = sub_225CCD954();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v12 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v10, v13);
  v16 = &v70 - v15;
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v70 - v18;
  v20 = DIPAccountManager.primaryAppleAccount()();
  if (v20)
  {
    v73 = v20;
    if (!requireHSA2)
    {
      if (qword_28105B910 != -1)
      {
        swift_once();
      }

      v44 = off_28105B918;
      v45 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
      v46 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((off_28105B918 + v46));
      (*(v8 + 16))(v19, &v44[v45], v7);
      os_unfair_lock_unlock(&v44[v46]);
      v27 = sub_225CCD934();
      v47 = sub_225CCED04();
      if (!os_log_type_enabled(v27, v47))
      {
        goto LABEL_22;
      }

      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_2259A7000, v27, v47, "HSA2 check is not required", v29, 2u);
      goto LABEL_21;
    }

    v21 = [objc_opt_self() standardUserDefaults];
    if (qword_28105B9F0 != -1)
    {
      swift_once();
    }

    if (byte_28105B9F8 == 1)
    {
      v22 = sub_225CCE444();
      v23 = [v21 BOOLForKey_];

      if (v23)
      {
        if (qword_28105B910 != -1)
        {
          swift_once();
        }

        v24 = off_28105B918;
        v25 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
        v26 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
        os_unfair_lock_lock((off_28105B918 + v26));
        (*(v8 + 16))(v16, &v24[v25], v7);
        os_unfair_lock_unlock(&v24[v26]);
        v27 = sub_225CCD934();
        v28 = sub_225CCED04();
        if (!os_log_type_enabled(v27, v28))
        {
          v19 = v16;
          goto LABEL_22;
        }

        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_2259A7000, v27, v28, "Not requiring HSA2 because of user defaults settings", v29, 2u);
        v19 = v16;
LABEL_21:
        MEMORY[0x22AA6F950](v29, -1, -1);
LABEL_22:

        (*(v8 + 8))(v19, v7);
        return;
      }
    }

    else
    {
    }

    v48 = v73;
    v49 = sub_225B04ABC(v73);
    if (v1)
    {
    }

    else
    {
      if (v49)
      {
        if (qword_28105B910 != -1)
        {
          swift_once();
        }

        v50 = off_28105B918;
        v51 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
        v52 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
        os_unfair_lock_lock((off_28105B918 + v52));
        (*(v8 + 16))(v12, &v50[v51], v7);
        os_unfair_lock_unlock(&v50[v52]);
        v27 = sub_225CCD934();
        v53 = sub_225CCED04();
        if (!os_log_type_enabled(v27, v53))
        {
          v19 = v12;
          goto LABEL_22;
        }

        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_2259A7000, v27, v53, "User has HSA2 enabled", v29, 2u);
        v19 = v12;
        goto LABEL_21;
      }

      v71 = 0x8000000225D1CAF0;
      v72 = 0x8000000225D1CAC0;
      v54 = MEMORY[0x277D84F90];
      v55 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      swift_allocError();
      v57 = v56;
      v58 = sub_225CCE954();
      v59 = *(v58 - 8);
      (*(v59 + 56))(v6, 1, 1, v58);
      LODWORD(v58) = (*(v59 + 48))(v6, 1, v58);
      sub_2259CB640(v6, &unk_27D73B050);
      if (v58)
      {
        v60 = 19;
      }

      else
      {
        v60 = 23;
      }

      v61 = sub_225B2C374(v54);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v74 = v61;
      sub_225B2C4A0(v55, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v74);

      v63 = v74;
      v64 = sub_225B29AA0(0, 1, 1, v54);
      v66 = *(v64 + 2);
      v65 = *(v64 + 3);
      if (v66 >= v65 >> 1)
      {
        v64 = sub_225B29AA0((v65 > 1), v66 + 1, 1, v64);
      }

      *(v64 + 2) = v66 + 1;
      v67 = &v64[56 * v66];
      *(v67 + 4) = 0xD00000000000001CLL;
      *(v67 + 5) = 0x8000000225D1CB20;
      v68 = v72;
      *(v67 + 6) = 0xD000000000000025;
      *(v67 + 7) = v68;
      v69 = v71;
      *(v67 + 8) = 0xD000000000000021;
      *(v67 + 9) = v69;
      *(v67 + 10) = 87;
      *v57 = v60;
      *(v57 + 8) = v64;
      *(v57 + 16) = 0xD00000000000001CLL;
      *(v57 + 24) = 0x8000000225D1CB20;
      *(v57 + 32) = v63;
      *(v57 + 40) = 0;
      swift_willThrow();
    }
  }

  else
  {
    v72 = 0x8000000225D1CAF0;
    v73 = 0x8000000225D1CAC0;
    v30 = MEMORY[0x277D84F90];
    v31 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v33 = v32;
    v34 = sub_225CCE954();
    v35 = *(v34 - 8);
    (*(v35 + 56))(v6, 1, 1, v34);
    LODWORD(v34) = (*(v35 + 48))(v6, 1, v34);
    sub_2259CB640(v6, &unk_27D73B050);
    if (v34)
    {
      v36 = 4;
    }

    else
    {
      v36 = 23;
    }

    v37 = sub_225B2C374(v30);
    v38 = swift_isUniquelyReferenced_nonNull_native();
    v74 = v37;
    sub_225B2C4A0(v31, sub_225B2AC40, 0, v38, &v74);

    v39 = v74;
    v40 = sub_225B29AA0(0, 1, 1, v30);
    v42 = *(v40 + 2);
    v41 = *(v40 + 3);
    if (v42 >= v41 >> 1)
    {
      v40 = sub_225B29AA0((v41 > 1), v42 + 1, 1, v40);
    }

    *(v40 + 2) = v42 + 1;
    v43 = &v40[56 * v42];
    *(v43 + 4) = 0xD000000000000028;
    *(v43 + 5) = 0x8000000225D1CA90;
    *(v43 + 6) = 0xD000000000000025;
    *(v43 + 7) = v73;
    *(v43 + 8) = 0xD000000000000021;
    *(v43 + 9) = v72;
    *(v43 + 10) = 70;
    *v33 = v36;
    *(v33 + 8) = v40;
    *(v33 + 16) = 0xD000000000000028;
    *(v33 + 24) = 0x8000000225D1CA90;
    *(v33 + 32) = v39;
    *(v33 + 40) = 0;
    swift_willThrow();
  }
}

ACAccount_optional __swiftcall DIPAccountManager.primaryAppleAccount()()
{
  v1 = v0;
  v2 = sub_225CCD954();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(v1 + 40);
  os_unfair_lock_lock((v7 + 24));
  v8 = *(v7 + 16);
  v9 = v8;
  os_unfair_lock_unlock((v7 + 24));
  if (v8)
  {
  }

  else
  {
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v10 = off_28105B918;
    v11 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v12 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v12));
    (*(v3 + 16))(v6, &v10[v11], v2);
    os_unfair_lock_unlock(&v10[v12]);
    v13 = sub_225CCD934();
    v14 = sub_225CCED04();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_2259A7000, v13, v14, "Primary account is nil. Will attempt to reload", v15, 2u);
      MEMORY[0x22AA6F950](v15, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    v16 = [*(v1 + 32) aa_primaryAppleAccount];
    *&v22[-16] = MEMORY[0x28223BE20](v16, v17);
    os_unfair_lock_lock((v7 + 24));
    sub_225B058B0((v7 + 16));
    os_unfair_lock_unlock((v7 + 24));
  }

  os_unfair_lock_lock((v7 + 24));
  v18 = *(v7 + 16);
  v19 = v18;
  os_unfair_lock_unlock((v7 + 24));
  v21 = v18;
  result.value.super.isa = v21;
  result.is_nil = v20;
  return result;
}

Swift::Void __swiftcall DIPAccountManager.resetPrimaryAccount()()
{
  v1 = v0;
  v2 = sub_225CCD954();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v7 = off_28105B918;
  v8 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v9 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v9));
  (*(v3 + 16))(v6, &v7[v8], v2);
  os_unfair_lock_unlock(&v7[v9]);
  v10 = sub_225CCD934();
  v11 = sub_225CCED04();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2259A7000, v10, v11, "resetting the primary account", v12, 2u);
    MEMORY[0x22AA6F950](v12, -1, -1);
  }

  v13 = (*(v3 + 8))(v6, v2);
  v14 = *(v1 + 40);
  MEMORY[0x28223BE20](v13, v15);
  *&v16[-16] = 0;
  os_unfair_lock_lock((v14 + 24));
  sub_225B058B0((v14 + 16));
  os_unfair_lock_unlock((v14 + 24));
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DIPAccountManager.primaryAppleAccountDSID()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = &v44 - v2;
  v4 = DIPAccountManager.primaryAppleAccount()();
  if (v4)
  {
    v5 = v4;
    v6 = [v4 aa_personID];
    if (v6)
    {
      v7 = v6;
      v8 = sub_225CCE474();
      v10 = v9;

      v11 = v8;
      v12 = v10;
    }

    else
    {
      v44 = 0x8000000225D1CB40;
      v45 = 0x8000000225D1CAC0;
      v27 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      swift_allocError();
      v29 = v28;
      v30 = sub_225CCE954();
      v31 = *(v30 - 8);
      (*(v31 + 56))(v3, 1, 1, v30);
      LODWORD(v30) = (*(v31 + 48))(v3, 1, v30);
      sub_2259CB640(v3, &unk_27D73B050);
      if (v30)
      {
        v32 = 4;
      }

      else
      {
        v32 = 23;
      }

      v33 = MEMORY[0x277D84F90];
      v34 = sub_225B2C374(MEMORY[0x277D84F90]);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v46 = v34;
      sub_225B2C4A0(v27, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v46);

      v36 = v46;
      v37 = sub_225B29AA0(0, 1, 1, v33);
      v39 = *(v37 + 2);
      v38 = *(v37 + 3);
      if (v39 >= v38 >> 1)
      {
        v37 = sub_225B29AA0((v38 > 1), v39 + 1, 1, v37);
      }

      *(v37 + 2) = v39 + 1;
      v40 = &v37[56 * v39];
      *(v40 + 4) = 0xD000000000000017;
      *(v40 + 5) = 0x8000000225D1CB60;
      v41 = v45;
      *(v40 + 6) = 0xD000000000000025;
      *(v40 + 7) = v41;
      v42 = v44;
      *(v40 + 8) = 0xD000000000000019;
      *(v40 + 9) = v42;
      *(v40 + 10) = 119;
      *v29 = v32;
      *(v29 + 8) = v37;
      *(v29 + 16) = 0xD000000000000017;
      *(v29 + 24) = 0x8000000225D1CB60;
      *(v29 + 32) = v36;
      *(v29 + 40) = 0;
      swift_willThrow();
    }
  }

  else
  {
    v44 = 0x8000000225D1CB40;
    v45 = 0x8000000225D1CAC0;
    v13 = MEMORY[0x277D84F90];
    v14 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v16 = v15;
    v17 = sub_225CCE954();
    v18 = *(v17 - 8);
    (*(v18 + 56))(v3, 1, 1, v17);
    LODWORD(v17) = (*(v18 + 48))(v3, 1, v17);
    sub_2259CB640(v3, &unk_27D73B050);
    if (v17)
    {
      v19 = 4;
    }

    else
    {
      v19 = 23;
    }

    v20 = sub_225B2C374(v13);
    v21 = swift_isUniquelyReferenced_nonNull_native();
    v46 = v20;
    sub_225B2C4A0(v14, sub_225B2AC40, 0, v21, &v46);

    v22 = v46;
    v23 = sub_225B29AA0(0, 1, 1, v13);
    v25 = *(v23 + 2);
    v24 = *(v23 + 3);
    if (v25 >= v24 >> 1)
    {
      v23 = sub_225B29AA0((v24 > 1), v25 + 1, 1, v23);
    }

    *(v23 + 2) = v25 + 1;
    v26 = &v23[56 * v25];
    *(v26 + 4) = 0xD000000000000028;
    *(v26 + 5) = 0x8000000225D1CA90;
    *(v26 + 6) = 0xD000000000000025;
    *(v26 + 7) = v45;
    *(v26 + 8) = 0xD000000000000019;
    *(v26 + 9) = v44;
    *(v26 + 10) = 116;
    *v16 = v19;
    *(v16 + 8) = v23;
    *(v16 + 16) = 0xD000000000000028;
    *(v16 + 24) = 0x8000000225D1CA90;
    *(v16 + 32) = v22;
    *(v16 + 40) = 0;
    v11 = swift_willThrow();
  }

  result._object = v12;
  result._countAndFlagsBits = v11;
  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DIPAccountManager.primaryAppleAccountIdentifier()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = &v29 - v2;
  v4 = DIPAccountManager.primaryAppleAccount()();
  if (v4)
  {
    v5 = v4;
    v6 = [v4 identifier];
    if (v6)
    {
      v8 = v6;
      v9 = sub_225CCE474();
      v11 = v10;

      v6 = v9;
      v7 = v11;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v29 = 0x8000000225D1CB80;
    v30 = 0x8000000225D1CAC0;
    v12 = MEMORY[0x277D84F90];
    v13 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v15 = v14;
    v16 = sub_225CCE954();
    v17 = *(v16 - 8);
    (*(v17 + 56))(v3, 1, 1, v16);
    LODWORD(v16) = (*(v17 + 48))(v3, 1, v16);
    sub_2259CB640(v3, &unk_27D73B050);
    if (v16)
    {
      v18 = 4;
    }

    else
    {
      v18 = 23;
    }

    v19 = sub_225B2C374(v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = v19;
    sub_225B2C4A0(v13, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v31);

    v21 = v31;
    v22 = sub_225B29AA0(0, 1, 1, v12);
    v24 = *(v22 + 2);
    v23 = *(v22 + 3);
    if (v24 >= v23 >> 1)
    {
      v22 = sub_225B29AA0((v23 > 1), v24 + 1, 1, v22);
    }

    *(v22 + 2) = v24 + 1;
    v25 = &v22[56 * v24];
    *(v25 + 4) = 0xD000000000000028;
    *(v25 + 5) = 0x8000000225D1CA90;
    v26 = v30;
    *(v25 + 6) = 0xD000000000000025;
    *(v25 + 7) = v26;
    v27 = v29;
    *(v25 + 8) = 0xD00000000000001FLL;
    *(v25 + 9) = v27;
    *(v25 + 10) = 130;
    *v15 = v18;
    *(v15 + 8) = v22;
    *(v15 + 16) = 0xD000000000000028;
    *(v15 + 24) = 0x8000000225D1CA90;
    *(v15 + 32) = v21;
    *(v15 + 40) = 0;
    v6 = swift_willThrow();
  }

  result._object = v7;
  result._countAndFlagsBits = v6;
  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DIPAccountManager.primaryiCloudAccountAltDSID()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v43 - v3;
  v5 = [*(v0 + 32) aida_accountForPrimaryiCloudAccount];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 aida_alternateDSID];
    if (v7)
    {
      v8 = v7;
      v9 = sub_225CCE474();
      v11 = v10;

      v12 = v9;
      v13 = v11;
    }

    else
    {
      v43 = 0x8000000225D1CBA0;
      v44 = 0x8000000225D1CAC0;
      v28 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      swift_allocError();
      v30 = v29;
      v31 = sub_225CCE954();
      v32 = *(v31 - 8);
      (*(v32 + 56))(v4, 1, 1, v31);
      LODWORD(v31) = (*(v32 + 48))(v4, 1, v31);
      sub_2259CB640(v4, &unk_27D73B050);
      if (v31)
      {
        v33 = 4;
      }

      else
      {
        v33 = 23;
      }

      v34 = MEMORY[0x277D84F90];
      v35 = sub_225B2C374(MEMORY[0x277D84F90]);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v45 = v35;
      sub_225B2C4A0(v28, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v45);

      v37 = v45;
      v38 = sub_225B29AA0(0, 1, 1, v34);
      v40 = *(v38 + 2);
      v39 = *(v38 + 3);
      if (v40 >= v39 >> 1)
      {
        v38 = sub_225B29AA0((v39 > 1), v40 + 1, 1, v38);
      }

      *(v38 + 2) = v40 + 1;
      v41 = &v38[56 * v40];
      *(v41 + 4) = 0xD000000000000026;
      *(v41 + 5) = 0x8000000225D1CBC0;
      *(v41 + 6) = 0xD000000000000025;
      *(v41 + 7) = v44;
      *(v41 + 8) = 0xD00000000000001DLL;
      *(v41 + 9) = v43;
      *(v41 + 10) = 140;
      *v30 = v33;
      *(v30 + 8) = v38;
      *(v30 + 16) = 0xD000000000000026;
      *(v30 + 24) = 0x8000000225D1CBC0;
      *(v30 + 32) = v37;
      *(v30 + 40) = 0;
      swift_willThrow();
    }
  }

  else
  {
    v43 = 0x8000000225D1CBA0;
    v44 = 0x8000000225D1CAC0;
    v14 = MEMORY[0x277D84F90];
    v15 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v17 = v16;
    v18 = sub_225CCE954();
    v19 = *(v18 - 8);
    (*(v19 + 56))(v4, 1, 1, v18);
    LODWORD(v18) = (*(v19 + 48))(v4, 1, v18);
    sub_2259CB640(v4, &unk_27D73B050);
    if (v18)
    {
      v20 = 4;
    }

    else
    {
      v20 = 23;
    }

    v21 = sub_225B2C374(v14);
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v45 = v21;
    sub_225B2C4A0(v15, sub_225B2AC40, 0, v22, &v45);

    v23 = v45;
    v24 = sub_225B29AA0(0, 1, 1, v14);
    v26 = *(v24 + 2);
    v25 = *(v24 + 3);
    if (v26 >= v25 >> 1)
    {
      v24 = sub_225B29AA0((v25 > 1), v26 + 1, 1, v24);
    }

    *(v24 + 2) = v26 + 1;
    v27 = &v24[56 * v26];
    *(v27 + 4) = 0xD000000000000028;
    *(v27 + 5) = 0x8000000225D1CA90;
    *(v27 + 6) = 0xD000000000000025;
    *(v27 + 7) = v44;
    *(v27 + 8) = 0xD00000000000001DLL;
    *(v27 + 9) = v43;
    *(v27 + 10) = 137;
    *v17 = v20;
    *(v17 + 8) = v24;
    *(v17 + 16) = 0xD000000000000028;
    *(v17 + 24) = 0x8000000225D1CA90;
    *(v17 + 32) = v23;
    *(v17 + 40) = 0;
    v12 = swift_willThrow();
  }

  result._object = v13;
  result._countAndFlagsBits = v12;
  return result;
}

uint64_t DIPAccountManager.renewGrandslamToken(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_225B01B0C, 0, 0);
}

uint64_t sub_225B01B0C()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = swift_task_alloc();
  v0[5] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_225B01C10;
  v6 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v5, 0, 0, 0xD000000000000017, 0x8000000225D1CBF0, sub_225B054DC, v4, v6);
}

uint64_t sub_225B01C10()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_225B01D2C;
  }

  else
  {

    v2 = sub_2259FDE14;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225B01D2C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_225B01D90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD10);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v15 - v10;
  (*(v8 + 16))(&v15 - v10, a1, v7);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = swift_allocObject();
  (*(v8 + 32))(v13 + v12, v11, v7);
  DIPAccountManager.renewGrandslamToken(_:completionHandler:)(a3, a4, sub_225B0580C, v13);
}

uint64_t sub_225B01EF0(void *a1)
{
  if (a1)
  {
    v1 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD10);
    return sub_225CCE924();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD10);
    return sub_225CCE934();
  }
}

void DIPAccountManager.renewGrandslamToken(_:completionHandler:)(uint64_t a1, uint64_t a2, void (*a3)(void *), uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v41 - v10;
  v12 = v4[4];
  if (a2)
  {
    v13 = sub_225CCE444();
    v14 = [v12 aida:v13 accountForAltDSID:?];
  }

  else
  {
    v14 = [v12 aida_accountForPrimaryiCloudAccount];
  }

  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  if (v14)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D7A8);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_225CD30F0;
    v17 = v4[2];
    v18 = v4[3];
    *(v16 + 56) = MEMORY[0x277D837D0];
    *(v16 + 32) = v17;
    *(v16 + 40) = v18;

    v19 = v14;

    v20 = sub_225CCE7F4();

    v48 = sub_225B054E8;
    v49 = v15;
    aBlock = MEMORY[0x277D85DD0];
    v45 = 1107296256;
    v46 = sub_225B03040;
    v47 = &block_descriptor_10;
    v21 = _Block_copy(&aBlock);

    [v12 aida:v19 renewCredentialsForAccount:v20 services:1 force:v21 completion:?];

LABEL_9:

    _Block_release(v21);
    return;
  }

  if (a2)
  {

    v22 = sub_225CCE444();
    v23 = [v12 aa:v22 appleAccountWithAltDSID:?];

    if (v23)
    {
LABEL_8:
      v19 = v23;
      v20 = sub_225CCE444();
      v48 = sub_225B054E8;
      v49 = v15;
      aBlock = MEMORY[0x277D85DD0];
      v45 = 1107296256;
      v46 = sub_225B03040;
      v47 = &block_descriptor_2;
      v21 = _Block_copy(&aBlock);

      [v12 renewCredentialsForAccount:v19 force:0 reason:v20 completion:v21];

      goto LABEL_9;
    }
  }

  else
  {

    v23 = [v12 aa_primaryAppleAccount];
    if (v23)
    {
      goto LABEL_8;
    }
  }

  v42 = 0x8000000225D1CC10;
  v43 = 0x8000000225D1CAC0;
  v24 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  v25 = swift_allocError();
  v27 = v26;
  v28 = sub_225CCE954();
  v29 = *(v28 - 8);
  (*(v29 + 56))(v11, 1, 1, v28);
  LODWORD(v28) = (*(v29 + 48))(v11, 1, v28);
  sub_2259CB640(v11, &unk_27D73B050);
  if (v28)
  {
    v30 = 4;
  }

  else
  {
    v30 = 23;
  }

  v31 = MEMORY[0x277D84F90];
  v32 = sub_225B2C374(MEMORY[0x277D84F90]);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  aBlock = v32;
  sub_225B2C4A0(v24, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &aBlock);

  v34 = aBlock;
  v35 = sub_225B29AA0(0, 1, 1, v31);
  v37 = *(v35 + 2);
  v36 = *(v35 + 3);
  if (v37 >= v36 >> 1)
  {
    v35 = sub_225B29AA0((v36 > 1), v37 + 1, 1, v35);
  }

  *(v35 + 2) = v37 + 1;
  v38 = &v35[56 * v37];
  *(v38 + 4) = 0xD000000000000028;
  *(v38 + 5) = 0x8000000225D1CA90;
  v39 = v43;
  *(v38 + 6) = 0xD000000000000025;
  *(v38 + 7) = v39;
  v40 = v42;
  *(v38 + 8) = 0xD000000000000029;
  *(v38 + 9) = v40;
  *(v38 + 10) = 203;
  *v27 = v30;
  *(v27 + 8) = v35;
  *(v27 + 16) = 0xD000000000000028;
  *(v27 + 24) = 0x8000000225D1CA90;
  *(v27 + 32) = v34;
  *(v27 + 40) = 0;
  a3(v25);
}

void sub_225B024F4(uint64_t a1, void *a2, void (*a3)(uint64_t), uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  v10 = MEMORY[0x28223BE20](v8 - 8, v9);
  v12 = &v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v91 - v14;
  if (a2)
  {
    v94 = "ed into an Apple account";
    v93 = "renewGrandslamToken(_:)";
    v16 = a2;
    v17 = a2;
    v95 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v96 = swift_allocError();
    v19 = v18;
    swift_getErrorValue();
    v20 = v107;
    v21 = a2;
    sub_225B21FAC(v20, &v101);

    v22 = v102;
    v99 = a3;
    v98 = a4;
    v97 = 0x8000000225D1CDE0;
    if (v102)
    {
      v92 = v101;
      v23 = v104;
      v91 = v103;
      v24 = v105;
      v25 = v106;
    }

    else
    {
      v101 = a2;
      v46 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
      sub_2259D8718(0, &qword_281059A90);
      if (swift_dynamicCast())
      {
        v47 = v100;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_225CD30F0;
        *(inited + 32) = 20;
        v49 = [v47 code];
        v50 = MEMORY[0x277D83BF8];
        *(inited + 64) = MEMORY[0x277D83B88];
        *(inited + 72) = v50;
        *(inited + 40) = v49;
        v24 = sub_225B2C374(inited);
        swift_setDeallocating();
        sub_2259CB640(inited + 32, &qword_27D73B060);

        v51 = a2;
        v23 = 0;
        v91 = 0;
        v22 = MEMORY[0x277D84F90];
        v92 = 99;
        v25 = a2;
      }

      else
      {
        v101 = a2;
        v52 = a2;
        v53 = sub_225CCE954();
        v54 = swift_dynamicCast();
        v55 = *(v53 - 8);
        (*(v55 + 56))(v15, v54 ^ 1u, 1, v53);
        v56 = (*(v55 + 48))(v15, 1, v53);
        sub_2259CB640(v15, &unk_27D73B050);
        if (v56)
        {
          v57 = 99;
        }

        else
        {
          v57 = 23;
        }

        v92 = v57;
        v22 = MEMORY[0x277D84F90];
        v24 = sub_225B2C374(MEMORY[0x277D84F90]);
        v58 = a2;
        v91 = 0xD00000000000001BLL;
        v25 = a2;
        v23 = 0x8000000225D1CDE0;
      }
    }

    v59 = v94 | 0x8000000000000000;
    v60 = v93 | 0x8000000000000000;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v101 = v24;
    sub_225B2C4A0(v95, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v101);

    v62 = v101;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v22 = sub_225B29AA0(0, *(v22 + 2) + 1, 1, v22);
    }

    v64 = *(v22 + 2);
    v63 = *(v22 + 3);
    if (v64 >= v63 >> 1)
    {
      v22 = sub_225B29AA0((v63 > 1), v64 + 1, 1, v22);
    }

    *(v22 + 2) = v64 + 1;
    v65 = &v22[56 * v64];
    v66 = v97;
    *(v65 + 4) = 0xD00000000000001BLL;
    *(v65 + 5) = v66;
    *(v65 + 6) = 0xD000000000000025;
    *(v65 + 7) = v59;
    *(v65 + 8) = 0xD000000000000029;
    *(v65 + 9) = v60;
    *(v65 + 10) = 168;
    *v19 = v92;
    v67 = v91;
    *(v19 + 8) = v22;
    *(v19 + 16) = v67;
    *(v19 + 24) = v23;
    *(v19 + 32) = v62;
    *(v19 + 40) = v25;
    v68 = v96;
    v99(v96);
  }

  else
  {
    if (!a1)
    {
      a3(0);
      return;
    }

    v26 = a3;
    if (a1 == 1)
    {
      v27 = 0x8000000225D1CDB0;
      v97 = 0x8000000225D1CAC0;
      v96 = 0x8000000225D1CC10;
      v69 = MEMORY[0x277D84F90];
      v70 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      a2 = swift_allocError();
      v31 = v71;
      v72 = sub_225CCE954();
      v73 = *(v72 - 8);
      (*(v73 + 56))(v12, 1, 1, v72);
      LODWORD(v72) = (*(v73 + 48))(v12, 1, v72);
      sub_2259CB640(v12, &unk_27D73B050);
      if (v72)
      {
        v34 = 99;
      }

      else
      {
        v34 = 23;
      }

      v74 = sub_225B2C374(v69);
      v75 = swift_isUniquelyReferenced_nonNull_native();
      v101 = v74;
      sub_225B2C4A0(v70, sub_225B2AC40, 0, v75, &v101);

      v37 = v101;
      v38 = sub_225B29AA0(0, 1, 1, v69);
      v77 = *(v38 + 2);
      v76 = *(v38 + 3);
      if (v77 >= v76 >> 1)
      {
        v38 = sub_225B29AA0((v76 > 1), v77 + 1, 1, v38);
      }

      *(v38 + 2) = v77 + 1;
      v41 = &v38[56 * v77];
      v42 = 0xD000000000000020;
      *(v41 + 4) = 0xD000000000000020;
      *(v41 + 5) = 0x8000000225D1CDB0;
      v78 = v97;
      *(v41 + 6) = 0xD000000000000025;
      *(v41 + 7) = v78;
      v79 = v96;
      *(v41 + 8) = 0xD000000000000029;
      *(v41 + 9) = v79;
      v45 = 177;
    }

    else if (a1 == 2)
    {
      v27 = 0x8000000225D1CD90;
      v97 = 0x8000000225D1CAC0;
      v96 = 0x8000000225D1CC10;
      v28 = MEMORY[0x277D84F90];
      v29 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      a2 = swift_allocError();
      v31 = v30;
      v32 = sub_225CCE954();
      v33 = *(v32 - 8);
      (*(v33 + 56))(v12, 1, 1, v32);
      LODWORD(v32) = (*(v33 + 48))(v12, 1, v32);
      sub_2259CB640(v12, &unk_27D73B050);
      if (v32)
      {
        v34 = 99;
      }

      else
      {
        v34 = 23;
      }

      v35 = sub_225B2C374(v28);
      v36 = swift_isUniquelyReferenced_nonNull_native();
      v101 = v35;
      sub_225B2C4A0(v29, sub_225B2AC40, 0, v36, &v101);

      v37 = v101;
      v38 = sub_225B29AA0(0, 1, 1, v28);
      v40 = *(v38 + 2);
      v39 = *(v38 + 3);
      if (v40 >= v39 >> 1)
      {
        v38 = sub_225B29AA0((v39 > 1), v40 + 1, 1, v38);
      }

      *(v38 + 2) = v40 + 1;
      v41 = &v38[56 * v40];
      v42 = 0xD000000000000019;
      *(v41 + 4) = 0xD000000000000019;
      *(v41 + 5) = 0x8000000225D1CD90;
      v43 = v97;
      *(v41 + 6) = 0xD000000000000025;
      *(v41 + 7) = v43;
      v44 = v96;
      *(v41 + 8) = 0xD000000000000029;
      *(v41 + 9) = v44;
      v45 = 180;
    }

    else
    {
      v27 = 0x8000000225D1CD60;
      v97 = 0x8000000225D1CAC0;
      v96 = 0x8000000225D1CC10;
      v80 = MEMORY[0x277D84F90];
      v81 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      a2 = swift_allocError();
      v31 = v82;
      v83 = sub_225CCE954();
      v84 = *(v83 - 8);
      (*(v84 + 56))(v12, 1, 1, v83);
      LODWORD(v83) = (*(v84 + 48))(v12, 1, v83);
      sub_2259CB640(v12, &unk_27D73B050);
      if (v83)
      {
        v34 = 99;
      }

      else
      {
        v34 = 23;
      }

      v85 = sub_225B2C374(v80);
      v86 = swift_isUniquelyReferenced_nonNull_native();
      v101 = v85;
      sub_225B2C4A0(v81, sub_225B2AC40, 0, v86, &v101);

      v37 = v101;
      v38 = sub_225B29AA0(0, 1, 1, v80);
      v88 = *(v38 + 2);
      v87 = *(v38 + 3);
      if (v88 >= v87 >> 1)
      {
        v38 = sub_225B29AA0((v87 > 1), v88 + 1, 1, v38);
      }

      *(v38 + 2) = v88 + 1;
      v41 = &v38[56 * v88];
      v42 = 0xD000000000000021;
      *(v41 + 4) = 0xD000000000000021;
      *(v41 + 5) = 0x8000000225D1CD60;
      v89 = v97;
      *(v41 + 6) = 0xD000000000000025;
      *(v41 + 7) = v89;
      v90 = v96;
      *(v41 + 8) = 0xD000000000000029;
      *(v41 + 9) = v90;
      v45 = 183;
    }

    *(v41 + 10) = v45;
    *v31 = v34;
    *(v31 + 8) = v38;
    *(v31 + 16) = v42;
    *(v31 + 24) = v27;
    *(v31 + 32) = v37;
    *(v31 + 40) = 0;
    v26(a2);
  }
}

void sub_225B03040(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

Swift::String __swiftcall DIPAccountManager.appleAuthHeader(_:)(Swift::String_optional a1)
{
  v2 = v1;
  object = a1.value._object;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  v6 = MEMORY[0x28223BE20](v4 - 8, v5);
  v144 = &v143 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v143 - v9;
  v11 = sub_225CCD954();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11, object);
  v146 = &v143 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v143 - v16;
  if (v18)
  {
    v19 = *(v2 + 32);
    v20 = sub_225CCE444();
    v21 = [v19 aida:v20 accountForAltDSID:?];

    v22 = qword_28105B910;
    v23 = v21;
    if (v22 != -1)
    {
      swift_once();
    }

    v24 = off_28105B918;
    v25 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v26 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v26));
    (*(v12 + 16))(v17, &v24[v25], v11);
    os_unfair_lock_unlock(&v24[v26]);
    v27 = sub_225CCD934();
    v28 = v12;
    v29 = sub_225CCED34();
    if (os_log_type_enabled(v27, v29))
    {
      v30 = v11;
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_2259A7000, v27, v29, "using altDSID for authorization", v31, 2u);
      v32 = v31;
      v11 = v30;
      MEMORY[0x22AA6F950](v32, -1, -1);

      (*(v28 + 8))(v17, v30);
    }

    else
    {

      (*(v28 + 8))(v17, v11);
    }

    v12 = v28;
  }

  else
  {
    v23 = [*(v2 + 32) aida_accountForPrimaryiCloudAccount];
  }

  v147 = v12;
  if (v23)
  {
    v33 = [v23 aida_alternateDSID];
    if (v33)
    {
      v34 = v33;
      v35 = sub_225CCE474();
      v37 = v36;

      v38 = sub_225CCE444();
      v39 = [v23 aida:v38 tokenForService:?];

      if (v39)
      {
        v40 = sub_225CCE474();
        v42 = v41;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D7B0);
        v43 = swift_allocObject();
        *(v43 + 16) = xmmword_225CD4890;
        v44 = MEMORY[0x277D837D0];
        *(v43 + 56) = MEMORY[0x277D837D0];
        v45 = sub_225B05508();
        *(v43 + 32) = v35;
        *(v43 + 40) = v37;
        *(v43 + 96) = v44;
        *(v43 + 104) = v45;
        *(v43 + 64) = v45;
        *(v43 + 72) = v40;
        *(v43 + 80) = v42;
        v46 = sub_225CCE4A4();
        v48 = v47;

        v49 = v46;
        goto LABEL_47;
      }

      v145 = v11;

      v68 = 0x8000000225D1CCB0;
      v149 = 0x8000000225D1CAC0;
      v148 = 0x8000000225D1CC60;
      v88 = MEMORY[0x277D84F90];
      v89 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      v71 = swift_allocError();
      v73 = v90;
      v91 = sub_225CCE954();
      v92 = *(v91 - 8);
      (*(v92 + 56))(v10, 1, 1, v91);
      LODWORD(v91) = (*(v92 + 48))(v10, 1, v91);
      sub_2259CB640(v10, &unk_27D73B050);
      if (v91)
      {
        v76 = 4;
      }

      else
      {
        v76 = 23;
      }

      v93 = sub_225B2C374(v88);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v151 = v93;
      sub_225B2C4A0(v89, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v151);

      v79 = v151;
      v80 = sub_225B29AA0(0, 1, 1, v88);
      v96 = *(v80 + 2);
      v95 = *(v80 + 3);
      if (v96 >= v95 >> 1)
      {
        v80 = sub_225B29AA0((v95 > 1), v96 + 1, 1, v80);
      }

      *(v80 + 2) = v96 + 1;
      v83 = &v80[56 * v96];
      v84 = 0xD00000000000001DLL;
      *(v83 + 4) = 0xD00000000000001DLL;
      *(v83 + 5) = 0x8000000225D1CCB0;
      v97 = v149;
      *(v83 + 6) = 0xD000000000000025;
      *(v83 + 7) = v97;
      v98 = v148;
      *(v83 + 8) = 0xD000000000000013;
      *(v83 + 9) = v98;
      v87 = 230;
    }

    else
    {
      v145 = v11;
      v68 = 0x8000000225D1CBC0;
      v149 = 0x8000000225D1CAC0;
      v148 = 0x8000000225D1CC60;
      v69 = MEMORY[0x277D84F90];
      v70 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      v71 = swift_allocError();
      v73 = v72;
      v74 = sub_225CCE954();
      v75 = *(v74 - 8);
      (*(v75 + 56))(v10, 1, 1, v74);
      LODWORD(v74) = (*(v75 + 48))(v10, 1, v74);
      sub_2259CB640(v10, &unk_27D73B050);
      if (v74)
      {
        v76 = 4;
      }

      else
      {
        v76 = 23;
      }

      v77 = sub_225B2C374(v69);
      v78 = swift_isUniquelyReferenced_nonNull_native();
      v151 = v77;
      sub_225B2C4A0(v70, sub_225B2AC40, 0, v78, &v151);

      v79 = v151;
      v80 = sub_225B29AA0(0, 1, 1, v69);
      v82 = *(v80 + 2);
      v81 = *(v80 + 3);
      if (v82 >= v81 >> 1)
      {
        v80 = sub_225B29AA0((v81 > 1), v82 + 1, 1, v80);
      }

      *(v80 + 2) = v82 + 1;
      v83 = &v80[56 * v82];
      v84 = 0xD000000000000026;
      *(v83 + 4) = 0xD000000000000026;
      *(v83 + 5) = 0x8000000225D1CBC0;
      v85 = v149;
      *(v83 + 6) = 0xD000000000000025;
      *(v83 + 7) = v85;
      v86 = v148;
      *(v83 + 8) = 0xD000000000000013;
      *(v83 + 9) = v86;
      v87 = 227;
    }

    *(v83 + 10) = v87;
    *v73 = v76;
    *(v73 + 8) = v80;
    *(v73 + 16) = v84;
    *(v73 + 24) = v68;
    *(v73 + 32) = v79;
    *(v73 + 40) = 0;
    v67 = v71;
    swift_willThrow();
  }

  else
  {
    v149 = 0x8000000225D1CAC0;
    v148 = 0x8000000225D1CC60;
    v50 = MEMORY[0x277D84F90];
    v51 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v52 = swift_allocError();
    v54 = v53;
    v55 = sub_225CCE954();
    v56 = *(v55 - 8);
    (*(v56 + 56))(v10, 1, 1, v55);
    LODWORD(v55) = (*(v56 + 48))(v10, 1, v55);
    sub_2259CB640(v10, &unk_27D73B050);
    if (v55)
    {
      v57 = 4;
    }

    else
    {
      v57 = 23;
    }

    v58 = sub_225B2C374(v50);
    v59 = swift_isUniquelyReferenced_nonNull_native();
    v151 = v58;
    sub_225B2C4A0(v51, sub_225B2AC40, 0, v59, &v151);

    v60 = v151;
    v61 = sub_225B29AA0(0, 1, 1, v50);
    v63 = *(v61 + 2);
    v62 = *(v61 + 3);
    if (v63 >= v62 >> 1)
    {
      v61 = sub_225B29AA0((v62 > 1), v63 + 1, 1, v61);
    }

    v145 = v11;
    *(v61 + 2) = v63 + 1;
    v64 = &v61[56 * v63];
    *(v64 + 4) = 0xD000000000000028;
    *(v64 + 5) = 0x8000000225D1CA90;
    v65 = v149;
    *(v64 + 6) = 0xD000000000000025;
    *(v64 + 7) = v65;
    v66 = v148;
    *(v64 + 8) = 0xD000000000000013;
    *(v64 + 9) = v66;
    *(v64 + 10) = 224;
    *v54 = v57;
    *(v54 + 8) = v61;
    *(v54 + 16) = 0xD000000000000028;
    *(v54 + 24) = 0x8000000225D1CA90;
    *(v54 + 32) = v60;
    *(v54 + 40) = 0;
    v67 = v52;
    swift_willThrow();
  }

  v99 = v67;
  v100 = sub_225B2C248(MEMORY[0x277D84F90]);
  swift_getErrorValue();
  v101 = v157;
  v102 = v67;
  sub_225B21FAC(v101, &v151);

  v103 = v152;
  if (v152)
  {
    v104 = v67;
    v105 = v151;
    v106 = v153;
    v107 = v154;
    v109 = v155;
    v108 = v156;
  }

  else
  {
    v151 = v67;
    v110 = v67;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
    sub_2259D8718(0, &qword_281059A90);
    if (swift_dynamicCast())
    {
      v111 = v150;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_225CD30F0;
      *(inited + 32) = 20;
      v113 = [v111 code];
      v114 = MEMORY[0x277D83BF8];
      *(inited + 64) = MEMORY[0x277D83B88];
      *(inited + 72) = v114;
      *(inited + 40) = v113;
      v109 = sub_225B2C374(inited);
      swift_setDeallocating();
      sub_2259CB640(inited + 32, &qword_27D73B060);

      v115 = v67;
      v106 = 0;
      v107 = 0;
      v103 = MEMORY[0x277D84F90];
      v108 = v67;
      v105 = 105;
      v104 = v108;
    }

    else
    {
      v151 = v67;
      v116 = v67;
      v117 = sub_225CCE954();
      v118 = v144;
      v119 = swift_dynamicCast();
      v120 = v67;
      v121 = *(v117 - 8);
      (*(v121 + 56))(v118, v119 ^ 1u, 1, v117);
      v122 = (*(v121 + 48))(v118, 1, v117);
      sub_2259CB640(v118, &unk_27D73B050);
      if (v122)
      {
        v105 = 105;
      }

      else
      {
        v105 = 23;
      }

      v103 = MEMORY[0x277D84F90];
      v109 = sub_225B2C374(MEMORY[0x277D84F90]);
      v123 = v120;
      v106 = 0xD000000000000024;
      v104 = v120;
      v108 = v120;
      v107 = 0x8000000225D1CC80;
    }
  }

  v124 = swift_isUniquelyReferenced_nonNull_native();
  v151 = v109;
  sub_225B2C4A0(v100, sub_225B2AC40, 0, v124, &v151);

  v125 = v151;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v103 = sub_225B29AA0(0, *(v103 + 2) + 1, 1, v103);
  }

  v127 = *(v103 + 2);
  v126 = *(v103 + 3);
  if (v127 >= v126 >> 1)
  {
    v103 = sub_225B29AA0((v126 > 1), v127 + 1, 1, v103);
  }

  v144 = v104;

  *(v103 + 2) = v127 + 1;
  v128 = &v103[56 * v127];
  *(v128 + 4) = 0xD000000000000024;
  *(v128 + 5) = 0x8000000225D1CC80;
  v129 = v149;
  *(v128 + 6) = 0xD000000000000025;
  *(v128 + 7) = v129;
  v130 = v148;
  *(v128 + 8) = 0xD000000000000013;
  *(v128 + 9) = v130;
  *(v128 + 10) = 237;
  sub_2259CB5EC();
  v131 = swift_allocError();
  *v132 = v105;
  *(v132 + 8) = v103;
  *(v132 + 16) = v106;
  *(v132 + 24) = v107;
  *(v132 + 32) = v125;
  *(v132 + 40) = v108;

  v133 = v108;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v134 = off_28105B918;
  v135 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v136 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v136));
  v137 = v147;
  v138 = &v134[v135];
  v139 = v146;
  v140 = v145;
  (*(v147 + 16))(v146, v138, v145);
  os_unfair_lock_unlock(&v134[v136]);
  v48 = 0xE000000000000000;
  DIPLogError(_:message:log:)(v131, 0, 0xE000000000000000);
  _s13CoreIDVShared9AnalyticsC9sendErroryys0E0_pFZ_0(v131);
  (*(v137 + 8))(v139, v140);

  v49 = 0;
LABEL_47:
  v141 = v48;
  result._object = v141;
  result._countAndFlagsBits = v49;
  return result;
}

ACAccount_optional __swiftcall DIPAccountManager.getAccount(with:)(Swift::String with)
{
  object = with._object;
  countAndFlagsBits = with._countAndFlagsBits;
  v4 = sub_225CCD954();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v38 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v34 - v10;
  v12 = *(v1 + 32);
  v35 = countAndFlagsBits;
  v40 = object;
  v13 = sub_225CCE444();
  v14 = [v12 accountTypeWithAccountTypeIdentifier_];

  v39 = v14;
  v15 = [v12 accountsWithAccountType_];
  if (v15)
  {
    v16 = v15;
    v17 = sub_225CCE814();
  }

  else
  {
    v17 = 0;
  }

  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v18 = off_28105B918;
  v19 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v20 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v20));
  v36 = *(v5 + 16);
  v37 = v19;
  v36(v11, &v18[v19], v4);
  os_unfair_lock_unlock(&v18[v20]);

  v21 = v5;
  v22 = sub_225CCD934();
  v23 = sub_225CCED04();

  if (os_log_type_enabled(v22, v23))
  {
    v34 = v4;
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v42[0] = v25;
    *v24 = 134349314;
    if (v17)
    {
      v26 = *(v17 + 16);
    }

    else
    {
      v26 = 0;
    }

    *(v24 + 4) = v26;

    *(v24 + 12) = 2080;
    *(v24 + 14) = sub_2259BE198(v35, v40, v42);
    _os_log_impl(&dword_2259A7000, v22, v23, "AccountStore returned %{public}ld accounts of type %s", v24, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x22AA6F950](v25, -1, -1);
    MEMORY[0x22AA6F950](v24, -1, -1);

    v27 = *(v21 + 8);
    v4 = v34;
    v27(v11, v34);
  }

  else
  {

    v27 = *(v21 + 8);
    v27(v11, v4);
  }

  if (v17)
  {
    if (*(v17 + 16))
    {
      sub_2259CB810(v17 + 32, v42);

      sub_2259D8718(0, &qword_281059A48);
      if (swift_dynamicCast())
      {

        v29 = v41;
        goto LABEL_20;
      }
    }

    else
    {
    }
  }

  os_unfair_lock_lock(&v18[v20]);
  v30 = v38;
  v36(v38, &v18[v37], v4);
  os_unfair_lock_unlock(&v18[v20]);
  v31 = sub_225CCD934();
  v32 = sub_225CCECF4();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_2259A7000, v31, v32, "Couldn't get accounts", v33, 2u);
    MEMORY[0x22AA6F950](v33, -1, -1);
  }

  v27(v30, v4);
  v29 = 0;
LABEL_20:
  result.value.super.isa = v29;
  result.is_nil = v28;
  return result;
}

id static DIPAccountManager.isPrimaryAppleAccount(account:)(void *a1)
{
  result = [a1 accountType];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v3 = result;
  v4 = [result identifier];

  if (!v4)
  {
    sub_225CCE474();
    goto LABEL_11;
  }

  v5 = sub_225CCE474();
  v7 = v6;

  v8 = sub_225CCE474();
  if (!v7)
  {
LABEL_11:

    return 0;
  }

  if (v5 == v8 && v7 == v9)
  {

    return [a1 aa:*MEMORY[0x277CEC688] isAccountClass:?];
  }

  v11 = sub_225CCF934();

  result = 0;
  if (v11)
  {
    return [a1 aa:*MEMORY[0x277CEC688] isAccountClass:?];
  }

  return result;
}

id static DIPAccountManager.isChildAccount(account:)(uint64_t a1)
{
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 userUnderAgeForAccount_];

  return v3;
}

uint64_t DIPAccountManager.deinit()
{

  return v0;
}

uint64_t DIPAccountManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_225B046C0()
{
  v1 = *v0;
  v2 = [*(v1 + 32) aa_primaryAppleAccount];
  v3 = *(v1 + 40);
  os_unfair_lock_lock((v3 + 24));
  sub_225B058B0((v3 + 16));
  os_unfair_lock_unlock((v3 + 24));
}

uint64_t sub_225B04834(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x2822009F8](sub_225B0485C, 0, 0);
}

uint64_t sub_225B0485C()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = swift_task_alloc();
  v0[5] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_225B04960;
  v6 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v5, 0, 0, 0xD000000000000017, 0x8000000225D1CBF0, sub_225B0588C, v4, v6);
}

uint64_t sub_225B04960()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_225B058AC;
  }

  else
  {

    v2 = sub_225A02EA0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225B04ABC(void *a1)
{
  v98 = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  v4 = MEMORY[0x28223BE20](v2 - 8, v3);
  v6 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v79 - v8;
  v10 = type metadata accessor for DIPSignpost.Config(0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DIPSignpost(0);
  v16 = MEMORY[0x28223BE20](v14 - 8, v15);
  v18 = &v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v79 - v20;
  if (qword_28105AA78 != -1)
  {
    swift_once();
  }

  v22 = __swift_project_value_buffer(v10, qword_28105AA80);
  sub_2259CB588(v22, v13);
  DIPSignpost.init(_:)(v13, v21);
  v23 = [a1 aida_alternateDSID];
  if (!v23)
  {
    v88 = 0x8000000225D1CAC0;
    v87 = 0x8000000225D1CE20;
    v31 = MEMORY[0x277D84F90];
    v32 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v89 = swift_allocError();
    v18 = v33;
    v34 = sub_225CCE954();
    v35 = *(v34 - 8);
    (*(v35 + 56))(v9, 1, 1, v34);
    LODWORD(v34) = (*(v35 + 48))(v9, 1, v34);
    sub_2259CB640(v9, &unk_27D73B050);
    if (v34)
    {
      v36 = 96;
    }

    else
    {
      v36 = 23;
    }

    v37 = sub_225B2C374(v31);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v92 = v37;
    sub_225B2C4A0(v32, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v92);

    v39 = v92;
    v40 = sub_225B29AA0(0, 1, 1, v31);
    v42 = *(v40 + 2);
    v41 = *(v40 + 3);
    if (v42 >= v41 >> 1)
    {
      v40 = sub_225B29AA0((v41 > 1), v42 + 1, 1, v40);
    }

    *(v40 + 2) = v42 + 1;
    v43 = &v40[56 * v42];
    *(v43 + 4) = 0xD000000000000016;
    *(v43 + 5) = 0x8000000225D1CE00;
    v44 = v88;
    *(v43 + 6) = 0xD000000000000025;
    *(v43 + 7) = v44;
    v45 = v87;
    *(v43 + 8) = 0xD000000000000017;
    *(v43 + 9) = v45;
    *(v43 + 10) = 253;
    *v18 = v36;
    *(v18 + 8) = v40;
    *(v18 + 16) = 0xD000000000000016;
    *(v18 + 24) = 0x8000000225D1CE00;
    *(v18 + 32) = v39;
    *(v18 + 40) = 0;
    swift_willThrow();
    goto LABEL_28;
  }

  v24 = v23;
  v25 = [objc_opt_self() sharedInstance];
  if (qword_28105AB30 != -1)
  {
    swift_once();
  }

  v26 = __swift_project_value_buffer(v10, qword_28105AB38);
  sub_2259CB588(v26, v13);
  DIPSignpost.init(_:)(v13, v18);
  v92 = 0;
  v27 = [v25 authKitAccountWithAltDSID:v24 error:&v92];

  if (!v27)
  {
    v46 = v92;
    v47 = sub_225CCCCC4();

    swift_willThrow();
    v88 = 0x8000000225D1CE40;
    v86 = "ed into an Apple account";
    v85 = "could not get alt dsid";
    v48 = v47;
    v87 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v89 = swift_allocError();
    v50 = v49;
    swift_getErrorValue();
    v51 = v91;
    v52 = v47;
    sub_225B21FAC(v51, &v92);

    v53 = v93;
    if (v93)
    {
      v84 = v92;
      v83 = v94;
      v82 = v95;
      v54 = v96;
      v81 = v97;
    }

    else
    {
      v92 = v47;
      v55 = v47;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
      sub_2259D8718(0, &qword_281059A90);
      if (swift_dynamicCast())
      {
        v56 = v90;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_225CD30F0;
        *(inited + 32) = 20;
        v58 = [v56 code];
        v59 = MEMORY[0x277D83BF8];
        *(inited + 64) = MEMORY[0x277D83B88];
        *(inited + 72) = v59;
        *(inited + 40) = v58;
        v54 = sub_225B2C374(inited);
        swift_setDeallocating();
        sub_2259CB640(inited + 32, &qword_27D73B060);

        v60 = v47;
        v82 = 0;
        v83 = 0;
        v53 = MEMORY[0x277D84F90];
        v61 = 96;
        v62 = &v100;
      }

      else
      {
        v92 = v47;
        v63 = v47;
        v64 = sub_225CCE954();
        v65 = swift_dynamicCast();
        v66 = *(v64 - 8);
        (*(v66 + 56))(v6, v65 ^ 1u, 1, v64);
        LODWORD(v66) = (*(v66 + 48))(v6, 1, v64);
        sub_2259CB640(v6, &unk_27D73B050);
        if (v66)
        {
          v67 = 96;
        }

        else
        {
          v67 = 23;
        }

        v84 = v67;
        v53 = MEMORY[0x277D84F90];
        v54 = sub_225B2C374(MEMORY[0x277D84F90]);
        v68 = v47;
        v83 = 0xD00000000000001DLL;
        v61 = v88;
        v62 = &v99;
      }

      *(v62 - 32) = v61;
      v81 = v47;
    }

    v80 = v86 | 0x8000000000000000;
    v86 = v85 | 0x8000000000000000;
    v69 = swift_isUniquelyReferenced_nonNull_native();
    v92 = v54;
    sub_225B2C4A0(v87, sub_225B2AC40, 0, v69, &v92);

    v70 = v92;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v53 = sub_225B29AA0(0, *(v53 + 2) + 1, 1, v53);
    }

    v72 = *(v53 + 2);
    v71 = *(v53 + 3);
    if (v72 >= v71 >> 1)
    {
      v53 = sub_225B29AA0((v71 > 1), v72 + 1, 1, v53);
    }

    *(v53 + 2) = v72 + 1;
    v73 = &v53[56 * v72];
    v74 = v88;
    *(v73 + 4) = 0xD00000000000001DLL;
    *(v73 + 5) = v74;
    v75 = v80;
    *(v73 + 6) = 0xD000000000000025;
    *(v73 + 7) = v75;
    v76 = v86;
    *(v73 + 8) = 0xD000000000000017;
    *(v73 + 9) = v76;
    *(v73 + 10) = 262;
    *v50 = v84;
    v77 = v83;
    *(v50 + 8) = v53;
    *(v50 + 16) = v77;
    *(v50 + 24) = v82;
    *(v50 + 32) = v70;
    *(v50 + 40) = v81;
    swift_willThrow();

    sub_2259CB6A0(v18);
LABEL_28:
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    sub_2259CB6A0(v21);
    return v18 & 1;
  }

  v28 = v92;
  v29 = v27;
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  v30 = [v25 securityLevelForAccount_];

  sub_2259CB6A0(v18);
  LOBYTE(v18) = v30 == 4;
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  sub_2259CB6A0(v21);
  return v18 & 1;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_225B05508()
{
  result = qword_281059B68;
  if (!qword_281059B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281059B68);
  }

  return result;
}

uint64_t dispatch thunk of DIPAccountManagerProtocol.renewGrandslamToken(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 72) + **(a4 + 72));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2259FE39C;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_225B0580C(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD10);

  return sub_225B01EF0(a1);
}

uint64_t DIPRecordError(_:message:log:)(void *a1, uint64_t a2, unint64_t a3)
{
  DIPLogError(_:message:log:)(a1, a2, a3);

  return _s13CoreIDVShared9AnalyticsC9sendErroryys0E0_pFZ_0(a1);
}

char *sub_225B05900(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v18 = MEMORY[0x277D84F90];
  result = sub_2259D52A4(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v3 = v18;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x22AA6DA80](v5, a1);
      }

      else
      {
        if ((v5 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_16:
          __break(1u);
LABEL_17:
          v2 = sub_225CCF144();
          goto LABEL_3;
        }

        if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v6 = *(a1 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = SecCertificateCopyData(v7);
      v9 = sub_225CCCFA4();
      v11 = v10;

      v12 = sub_225CCCF84();
      v14 = v13;
      sub_2259BEF00(v9, v11);

      v16 = *(v18 + 16);
      v15 = *(v18 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_2259D52A4((v15 > 1), v16 + 1, 1);
      }

      ++v5;
      *(v18 + 16) = v16 + 1;
      v17 = v18 + 16 * v16;
      *(v17 + 32) = v12;
      *(v17 + 40) = v14;
      if (v2 == v5)
      {
        return v3;
      }
    }
  }

  __break(1u);
  return result;
}

BOOL sub_225B05A90(__int16 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_225CCFBD4();
  v4 = qword_225CE8F68[a1];
  MEMORY[0x22AA6E420](v4);
  v5 = sub_225CCFC24();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  do
  {
    v9 = qword_225CE8F68[*(*(a2 + 48) + 2 * v7)];
    result = v9 == v4;
    if (v9 == v4)
    {
      break;
    }

    v7 = (v7 + 1) & v8;
  }

  while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  return result;
}

uint64_t sub_225B05B70(char a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    sub_225CCFBD4();
    DIPError.PropertyKey.rawValue.getter();
    sub_225CCE5B4();

    v4 = sub_225CCFC24();
    v5 = -1 << *(a2 + 32);
    v6 = v4 & ~v5;
    if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v7 = ~v5;
      while (1)
      {
        v8 = 0xED00004449776F6CLL;
        v9 = 0x666B726F576F6E69;
        switch(*(*(a2 + 48) + v6))
        {
          case 1:
            v9 = 0x69766F72506F6E69;
            v8 = 0xED00004449726564;
            break;
          case 2:
            v9 = 0x6C666B726F577073;
            v8 = 0xEC0000004449776FLL;
            break;
          case 3:
            v9 = 0x6469766F72507073;
            v8 = 0xEC00000044497265;
            break;
          case 4:
            v9 = 0x7475626972747461;
            v8 = 0xEB00000000444965;
            break;
          case 5:
            v9 = 0xD000000000000012;
            v8 = 0x8000000225D0C380;
            break;
          case 6:
            v9 = 0x5255726576726573;
            v8 = 0xE90000000000004CLL;
            break;
          case 7:
            v9 = 0xD000000000000010;
            v8 = 0x8000000225D0C3A0;
            break;
          case 8:
            v9 = 0xD000000000000013;
            v8 = 0x8000000225D0C3C0;
            break;
          case 9:
            v9 = 0x4974736575716572;
            v8 = 0xE900000000000044;
            break;
          case 0xA:
            v9 = 0x61737265766E6F63;
            v8 = 0xEE0044496E6F6974;
            break;
          case 0xB:
            v9 = 0xD000000000000010;
            v8 = 0x8000000225D0C3F0;
            break;
          case 0xC:
            v9 = 0xD000000000000012;
            v8 = 0x8000000225D0C410;
            break;
          case 0xD:
            v9 = 0xD000000000000013;
            v8 = 0x8000000225D0C430;
            break;
          case 0xE:
            v9 = 0x63655264756F6C63;
            v8 = 0xEF656E6F5A64726FLL;
            break;
          case 0xF:
            v9 = 0x6552656369766564;
            v8 = 0xEC0000006E6F6967;
            break;
          case 0x10:
            v9 = 0xD000000000000012;
            v8 = 0x8000000225D0C470;
            break;
          case 0x11:
            v9 = 0x6761735574726563;
            v8 = 0xE900000000000065;
            break;
          case 0x12:
            v9 = 0x6573616261746164;
            v8 = 0xEE006E6D756C6F43;
            break;
          case 0x13:
            v9 = 0x74737973656C6966;
            v8 = 0xEE00687461506D65;
            break;
          case 0x14:
            v9 = 0x69796C7265646E75;
            v8 = 0xEF6F6E727245676ELL;
            break;
          case 0x15:
            v9 = 0x636E456567616D69;
            v8 = 0xED0000676E69646FLL;
            break;
          case 0x16:
            v8 = 0xE400000000000000;
            v9 = 1701273968;
            break;
          case 0x17:
            v9 = 0x636E75614C6F6E69;
            v8 = 0xED00007265695468;
            break;
          case 0x18:
            v8 = 0xE800000000000000;
            v9 = 0x746E756F43797274;
            break;
          case 0x19:
            v9 = 0xD000000000000012;
            v8 = 0x8000000225D0C4F0;
            break;
          case 0x1A:
            v9 = 0xD000000000000016;
            v8 = 0x8000000225D0C510;
            break;
          default:
            break;
        }

        v10 = 0x666B726F576F6E69;
        v11 = 0xED00004449776F6CLL;
        switch(a1)
        {
          case 1:
            v12 = 0x69766F72506F6E69;
            v13 = 0x4449726564;
            goto LABEL_64;
          case 2:
            v11 = 0xEC0000004449776FLL;
            if (v9 != 0x6C666B726F577073)
            {
              goto LABEL_82;
            }

            goto LABEL_81;
          case 3:
            v14 = 0x6469766F72507073;
            v15 = 1145664101;
            goto LABEL_53;
          case 4:
            v11 = 0xEB00000000444965;
            if (v9 != 0x7475626972747461)
            {
              goto LABEL_82;
            }

            goto LABEL_81;
          case 5:
            v11 = 0x8000000225D0C380;
            if (v9 != 0xD000000000000012)
            {
              goto LABEL_82;
            }

            goto LABEL_81;
          case 6:
            v11 = 0xE90000000000004CLL;
            if (v9 != 0x5255726576726573)
            {
              goto LABEL_82;
            }

            goto LABEL_81;
          case 7:
            v11 = 0x8000000225D0C3A0;
            if (v9 != 0xD000000000000010)
            {
              goto LABEL_82;
            }

            goto LABEL_81;
          case 8:
            v11 = 0x8000000225D0C3C0;
            if (v9 != 0xD000000000000013)
            {
              goto LABEL_82;
            }

            goto LABEL_81;
          case 9:
            v11 = 0xE900000000000044;
            if (v9 != 0x4974736575716572)
            {
              goto LABEL_82;
            }

            goto LABEL_81;
          case 10:
            v16 = 0x61737265766E6F63;
            v17 = 0x44496E6F6974;
            goto LABEL_77;
          case 11:
            v11 = 0x8000000225D0C3F0;
            if (v9 != 0xD000000000000010)
            {
              goto LABEL_82;
            }

            goto LABEL_81;
          case 12:
            v11 = 0x8000000225D0C410;
            if (v9 != 0xD000000000000012)
            {
              goto LABEL_82;
            }

            goto LABEL_81;
          case 13:
            v11 = 0x8000000225D0C430;
            if (v9 != 0xD000000000000013)
            {
              goto LABEL_82;
            }

            goto LABEL_81;
          case 14:
            v11 = 0xEF656E6F5A64726FLL;
            if (v9 != 0x63655264756F6C63)
            {
              goto LABEL_82;
            }

            goto LABEL_81;
          case 15:
            v14 = 0x6552656369766564;
            v15 = 1852795239;
LABEL_53:
            v11 = v15 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
            if (v9 != v14)
            {
              goto LABEL_82;
            }

            goto LABEL_81;
          case 16:
            v11 = 0x8000000225D0C470;
            if (v9 != 0xD000000000000012)
            {
              goto LABEL_82;
            }

            goto LABEL_81;
          case 17:
            v11 = 0xE900000000000065;
            if (v9 != 0x6761735574726563)
            {
              goto LABEL_82;
            }

            goto LABEL_81;
          case 18:
            v16 = 0x6573616261746164;
            v17 = 0x6E6D756C6F43;
            goto LABEL_77;
          case 19:
            v16 = 0x74737973656C6966;
            v17 = 0x687461506D65;
LABEL_77:
            v11 = v17 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
            if (v9 != v16)
            {
              goto LABEL_82;
            }

            goto LABEL_81;
          case 20:
            v11 = 0xEF6F6E727245676ELL;
            if (v9 != 0x69796C7265646E75)
            {
              goto LABEL_82;
            }

            goto LABEL_81;
          case 21:
            v12 = 0x636E456567616D69;
            v13 = 0x676E69646FLL;
LABEL_64:
            v11 = v13 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
            if (v9 != v12)
            {
              goto LABEL_82;
            }

            goto LABEL_81;
          case 22:
            v11 = 0xE400000000000000;
            if (v9 != 1701273968)
            {
              goto LABEL_82;
            }

            goto LABEL_81;
          case 23:
            v10 = 0x636E75614C6F6E69;
            v11 = 0xED00007265695468;
            goto LABEL_80;
          case 24:
            v11 = 0xE800000000000000;
            if (v9 != 0x746E756F43797274)
            {
              goto LABEL_82;
            }

            goto LABEL_81;
          case 25:
            v11 = 0x8000000225D0C4F0;
            if (v9 != 0xD000000000000012)
            {
              goto LABEL_82;
            }

            goto LABEL_81;
          case 26:
            v11 = 0x8000000225D0C510;
            if (v9 != 0xD000000000000016)
            {
              goto LABEL_82;
            }

            goto LABEL_81;
          default:
LABEL_80:
            if (v9 != v10)
            {
              goto LABEL_82;
            }

LABEL_81:
            if (v8 == v11)
            {

              v18 = 1;
              return v18 & 1;
            }

LABEL_82:
            v18 = sub_225CCF934();

            if (v18)
            {
              return v18 & 1;
            }

            v6 = (v6 + 1) & v7;
            if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
            {
              return v18 & 1;
            }

            break;
        }
      }
    }
  }

  v18 = 0;
  return v18 & 1;
}