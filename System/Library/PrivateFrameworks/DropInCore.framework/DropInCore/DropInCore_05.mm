uint64_t sub_249E59654(uint64_t a1)
{
  v1 = *a1;
  if (*(a1 + 73))
  {
    v7 = *a1;
    v2 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF240A0, &qword_249E80258);
    return sub_249E7AC38();
  }

  else
  {
    memcpy(v6, (a1 + 8), sizeof(v6));
    v5[10] = v1;
    v7 = v1;
    memcpy(v8, (a1 + 8), sizeof(v8));
    sub_249E5E930(&v7, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF240A0, &qword_249E80258);
    return sub_249E7AC48();
  }
}

uint64_t sub_249E59720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v38 = a6;
  v39 = a7;
  v34 = a5;
  v33 = a4;
  v37 = a3;
  v35 = a1;
  v41 = sub_249E7A928();
  v44 = *(v41 - 8);
  v9 = *(v44 + 64);
  MEMORY[0x28223BE20](v41);
  v40 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_249E7A958();
  v42 = *(v11 - 8);
  v43 = v11;
  v12 = *(v42 + 64);
  MEMORY[0x28223BE20](v11);
  v36 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_249E7A628();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v32 = *(v7 + OBJC_IVAR____TtC10DropInCore10IDSManager_serialQueue);
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v15 + 16))(&v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v14);
  v18 = (*(v15 + 80) + 24) & ~*(v15 + 80);
  v19 = (v18 + v16 + 23) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 23) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = v17;
  (*(v15 + 32))(v21 + v18, &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v14);
  v22 = v21 + ((v18 + v16 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v22 = v33;
  *(v22 + 8) = v34 & 1;
  v23 = (v21 + v19);
  v24 = v39;
  *v23 = v38;
  v23[1] = v24;
  *(v21 + v20) = v35;
  *(v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8)) = v37;
  aBlock[4] = sub_249E5E800;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_249E52140;
  aBlock[3] = &block_descriptor_6;
  v25 = _Block_copy(aBlock);
  v26 = v32;

  swift_unknownObjectRetain();
  v27 = v36;
  sub_249E7A938();
  v45 = MEMORY[0x277D84F90];
  sub_249E5E658(&qword_28130D2D0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23D50, &unk_249E80260);
  sub_249E2AB74(&qword_28130D2A0, &unk_27EF23D50, &unk_249E80260);
  v29 = v40;
  v28 = v41;
  sub_249E7B018();
  MEMORY[0x24C204A90](0, v27, v29, v25);
  _Block_release(v25);

  (*(v44 + 8))(v29, v28);
  (*(v42 + 8))(v27, v43);
}

void sub_249E59B90()
{
  OUTLINED_FUNCTION_15_0();
  v1 = v0;
  v231 = v2;
  v4 = v3;
  v220 = v5;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF236B0, &qword_249E7DFD0);
  v9 = OUTLINED_FUNCTION_37(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_22_3(v209 - v12);
  v223 = type metadata accessor for IDSManager.MessageType(0);
  v13 = OUTLINED_FUNCTION_28_0(v223);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v224 = v209 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v222 = v209 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = v209 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF234B0, &qword_249E7D910);
  v23 = OUTLINED_FUNCTION_37(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_22_3(v209 - v26);
  v229 = sub_249E7A628();
  v27 = OUTLINED_FUNCTION_3(v229);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_22_3(v209 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_22_3(v209 - v34);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_22_3(v209 - v36);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_22_3(v209 - v38);
  v216 = v39;
  MEMORY[0x28223BE20](v40);
  v42 = v209 - v41;
  v43 = OBJC_IVAR____TtC10DropInCore10IDSManager_logger;

  v44 = sub_249E7A698();
  sub_249E7AE28();

  v45 = OUTLINED_FUNCTION_272();
  v226 = v21;
  v227 = v7;
  if (v45)
  {
    OUTLINED_FUNCTION_70();
    v46 = swift_slowAlloc();
    v230 = v43;
    v43 = v46;
    OUTLINED_FUNCTION_74();
    v47 = swift_slowAlloc();
    v225 = v1;
    v48 = v4;
    v49 = v47;
    *v236 = v47;
    *v43 = 136315138;
    *v234 = v7;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23FB0, &qword_249E801E0);
    v50 = sub_249E7AAC8();
    v52 = v29;
    v53 = sub_249E3A958(v50, v51, v236);

    *(v43 + 4) = v53;
    v29 = v52;
    OUTLINED_FUNCTION_19_4(&dword_249DEE000, v54, v55, "Incoming message = %s");
    __swift_destroy_boxed_opaque_existential_0(v49);
    v56 = v42;
    v4 = v48;
    v57 = v225;
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
    OUTLINED_FUNCTION_27_1();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }

  else
  {
    v56 = v42;

    v57 = v1;
  }

  v58 = v232;
  if (v231)
  {
    v59 = v231;
    v60 = sub_249DFC27C(v59, &selRef_senderCorrelationIdentifier);
    if (v61)
    {
      v62 = v61;
      if (v4)
      {
        v63 = v60;
        v230 = v43;

        v64 = sub_249DFC27C(v59, &selRef_originalGUID);
        if (v65)
        {
          v66 = v64;
          v67 = v65;
          v231 = v59;
          v68 = v228;
          sub_249E7A5C8();
          if (__swift_getEnumTagSinglePayload(v68, 1, v229) == 1)
          {

            sub_249E2A8CC(v68, &qword_27EF234B0, &qword_249E7D910);

            v69 = OUTLINED_FUNCTION_21_4();
            v70 = sub_249E7AE08();

            if (os_log_type_enabled(v69, v70))
            {
              OUTLINED_FUNCTION_70();
              v71 = swift_slowAlloc();
              OUTLINED_FUNCTION_74();
              *v236 = swift_slowAlloc();
              *v71 = 136315138;
              v72 = sub_249E3A958(v66, v67, v236);

              *(v71 + 4) = v72;
              _os_log_impl(&dword_249DEE000, v69, v70, "Unsupported GUID %s", v71, 0xCu);
              OUTLINED_FUNCTION_12_2();
              OUTLINED_FUNCTION_65();
              MEMORY[0x24C205870]();
            }

            else
            {
            }

            goto LABEL_21;
          }

          v91 = *(v29 + 32);
          v215 = v56;
          v228 = v91;
          v91(v56, v68, v229);
          if (!v227 || (v92 = sub_249E57980(v227)) == 0)
          {

            v112 = OUTLINED_FUNCTION_21_4();
            v113 = sub_249E7AE08();
            v114 = OUTLINED_FUNCTION_4_1(v113);
            v115 = v231;
            if (v114)
            {
              v116 = OUTLINED_FUNCTION_9();
              OUTLINED_FUNCTION_6_0(v116);
              OUTLINED_FUNCTION_1_1();
              _os_log_impl(v117, v118, v119, v120, v121, 2u);
              OUTLINED_FUNCTION_65();
              MEMORY[0x24C205870]();
            }

            else
            {
            }

            (*(v29 + 8))(v215, v229);
            goto LABEL_21;
          }

          v93 = v92;
          v209[2] = v29 + 32;
          v210 = v63;
          v227 = v4;
          v94 = *(v29 + 16);
          v209[1] = v29 + 16;
          v209[0] = v94;
          v94(v58, v215, v229);
          v95 = v57;
          v96 = OUTLINED_FUNCTION_21_4();
          v97 = sub_249E7AE28();
          v98 = os_log_type_enabled(v96, v97);
          v99 = v231;
          v214 = v29;
          v213 = v62;
          v212 = v93;
          if (v98)
          {
            OUTLINED_FUNCTION_70();
            v100 = swift_slowAlloc();
            OUTLINED_FUNCTION_74();
            v101 = swift_slowAlloc();
            v225 = v95;
            v102 = v101;
            *v236 = v101;
            *v100 = 136315138;
            OUTLINED_FUNCTION_0_15();
            sub_249E5E658(v103, v104);
            v105 = v58;
            v106 = v229;
            v107 = sub_249E7B2D8();
            v108 = v29;
            v110 = v109;
            v211 = *(v108 + 8);
            v211(v105, v106);
            v111 = sub_249E3A958(v107, v110, v236);

            *(v100 + 4) = v111;
            _os_log_impl(&dword_249DEE000, v96, v97, "Incoming message identifier = %s", v100, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v102);
            v95 = v225;
            OUTLINED_FUNCTION_65();
            MEMORY[0x24C205870]();
            OUTLINED_FUNCTION_65();
            MEMORY[0x24C205870]();
          }

          else
          {

            v211 = *(v29 + 8);
            v211(v58, v229);
          }

          v122 = v99;
          v123 = v95;
          OUTLINED_FUNCTION_27_1();
          v124 = sub_249E7A698();
          sub_249E7AE28();

          if (OUTLINED_FUNCTION_272())
          {
            v125 = v215;
            OUTLINED_FUNCTION_70();
            v126 = swift_slowAlloc();
            OUTLINED_FUNCTION_74();
            *v234 = swift_slowAlloc();
            *v126 = 136315138;
            *v236 = sub_249DFC27C(v122, &selRef_incomingResponseIdentifier);
            *&v236[8] = v127;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23FA0, &unk_249E7DF00);
            v128 = sub_249E7AAC8();
            v130 = sub_249E3A958(v128, v129, v234);

            *(v126 + 4) = v130;
            OUTLINED_FUNCTION_19_4(&dword_249DEE000, v131, v132, "Incoming response identifier = %s");
            OUTLINED_FUNCTION_12_2();
            OUTLINED_FUNCTION_27_1();
            OUTLINED_FUNCTION_65();
            MEMORY[0x24C205870]();
          }

          else
          {
            v125 = v215;
          }

          v133 = v226;
          v134 = v122;
          v135 = sub_249E7A698();
          sub_249E7AE28();

          v136 = OUTLINED_FUNCTION_272();
          v232 = v134;
          if (v136)
          {
            OUTLINED_FUNCTION_70();
            v137 = swift_slowAlloc();
            OUTLINED_FUNCTION_74();
            v138 = swift_slowAlloc();
            *v234 = v138;
            *v137 = 136315138;
            *v236 = sub_249DFC27C(v134, &selRef_outgoingResponseIdentifier);
            *&v236[8] = v139;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23FA0, &unk_249E7DF00);
            v140 = sub_249E7AAC8();
            v142 = sub_249E3A958(v140, v141, v234);

            *(v137 + 4) = v142;
            OUTLINED_FUNCTION_19_4(&dword_249DEE000, v143, v144, "Outgoing response identifier = %s");
            __swift_destroy_boxed_opaque_existential_0(v138);
            OUTLINED_FUNCTION_65();
            MEMORY[0x24C205870]();
            OUTLINED_FUNCTION_27_1();
            OUTLINED_FUNCTION_65();
            MEMORY[0x24C205870]();
          }

          v145 = v222;

          sub_249E5ADEC(v133);
          sub_249E5E384(v133, v145);
          v146 = sub_249E7A698();
          v147 = sub_249E7AE28();
          if (os_log_type_enabled(v146, v147))
          {
            OUTLINED_FUNCTION_70();
            v148 = swift_slowAlloc();
            OUTLINED_FUNCTION_74();
            *v236 = swift_slowAlloc();
            *v148 = 136315138;
            v149 = sub_249E5D7E0();
            v150 = v145;
            v152 = v151;
            sub_249E5E3E8(v150);
            v153 = sub_249E3A958(v149, v152, v236);

            *(v148 + 4) = v153;
            _os_log_impl(&dword_249DEE000, v146, v147, "Message Type = %s", v148, 0xCu);
            OUTLINED_FUNCTION_12_2();
            OUTLINED_FUNCTION_27_1();
            OUTLINED_FUNCTION_65();
            MEMORY[0x24C205870]();
          }

          else
          {

            sub_249E5E3E8(v145);
          }

          v154 = v214;
          v155 = v224;
          sub_249E5E384(v133, v224);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          v157 = v227;
          v158 = v123;
          if (EnumCaseMultiPayload)
          {
            v159 = v133;
            if (EnumCaseMultiPayload != 1)
            {

              v190 = sub_249E7AC78();
              v191 = v221;
              __swift_storeEnumTagSinglePayload(v221, 1, 1, v190);
              v236[0] = 0;
              v192 = swift_allocObject();
              v193 = OUTLINED_FUNCTION_10_4(v192);
              v193[8] = *(v194 - 256);
              v193[9] = v157;
              *(v193 + 112) = 0;
              v195 = v123;
              sub_249E5ED90(0, 0, v191, &unk_249E801B0, v133);
              OUTLINED_FUNCTION_39_2();

              sub_249E5E3E8(v133);
              v211(v125, v229);
              goto LABEL_21;
            }

            v160 = v219;
            v228(v219, v155, v229);
            v161 = sub_249E5B094(v160);
            if (v161)
            {
              v163 = v161;
              v164 = v162;

              v165 = sub_249E7A698();
              v166 = sub_249E7AE28();
              sub_249DF2D58(v163);
              if (os_log_type_enabled(v165, v166))
              {
                OUTLINED_FUNCTION_70();
                v167 = swift_slowAlloc();
                OUTLINED_FUNCTION_74();
                v231 = swift_slowAlloc();
                *v234 = v231;
                *v167 = 136315138;
                v168 = swift_allocObject();
                *(v168 + 16) = v163;
                *(v168 + 24) = v164;
                *v236 = sub_249E5E624;
                *&v236[8] = v168;

                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23F98, &unk_249E801D0);
                v169 = sub_249E7AAC8();
                v171 = sub_249E3A958(v169, v170, v234);

                *(v167 + 4) = v171;
                _os_log_impl(&dword_249DEE000, v165, v166, "Found Pending Response Handler %s", v167, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(v231);
                OUTLINED_FUNCTION_65();
                MEMORY[0x24C205870]();
                v157 = v227;
                OUTLINED_FUNCTION_65();
                MEMORY[0x24C205870]();
              }

              v172 = v211;
              v233 = 0;
              *v234 = v212;
              *&v234[8] = v210;
              *&v234[16] = v213;
              *&v234[24] = v220;
              *&v234[32] = v157;
              v234[72] = 0;
              memcpy(v236, v234, sizeof(v236));
              v235 = 0;
              v237 = 0;
              v163(v236);
              sub_249E2A8CC(v234, &unk_27EF237E0, &unk_249E7E240);
              sub_249DF2D58(v163);
              OUTLINED_FUNCTION_39_2();
              v208 = v229;
              v172(v219, v229);
              sub_249E5E3E8(v159);
              v172(v125, v208);
              goto LABEL_21;
            }

            v196 = sub_249E7A698();
            v187 = sub_249E7AE08();

            if (os_log_type_enabled(v196, v187))
            {
              OUTLINED_FUNCTION_70();
              v155 = swift_slowAlloc();
              OUTLINED_FUNCTION_74();
              v197 = swift_slowAlloc();
              *v236 = v197;
              *v155 = 136315138;
              v198 = sub_249E7A9E8();
              v200 = v199;

              v201 = sub_249E3A958(v198, v200, v236);

              *(v155 + 4) = v201;
              OUTLINED_FUNCTION_1_1();
              _os_log_impl(v202, v203, v204, v205, v206, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v197);
              OUTLINED_FUNCTION_65();
              MEMORY[0x24C205870]();
              OUTLINED_FUNCTION_65();
              MEMORY[0x24C205870]();
              OUTLINED_FUNCTION_39_2();
            }

            else
            {
              OUTLINED_FUNCTION_39_2();
            }

            v207 = OUTLINED_FUNCTION_16_4();
            v187(v207);
            sub_249E5E3E8(v159);
            v188 = v125;
            v189 = v155;
          }

          else
          {
            v173 = v218;
            v174 = v229;
            v175 = v228;
            v228(v218, v155, v229);
            v176 = sub_249E7AC78();
            __swift_storeEnumTagSinglePayload(v221, 1, 1, v176);
            v177 = v154;
            v178 = v217;
            (v209[0])(v217, v173, v174);
            v236[0] = 0;
            v179 = (*(v177 + 80) + 113) & ~*(v177 + 80);
            v180 = (v216 + v179 + 7) & 0xFFFFFFFFFFFFFFF8;
            v181 = swift_allocObject();
            v182 = OUTLINED_FUNCTION_10_4(v181);
            v184 = *(v183 - 256);
            v182[8] = v184;
            v182[9] = v157;
            *(v182 + 112) = 0;
            v175(v182 + v179, v178, v174);
            v185 = &v133[v180];
            *v185 = v184;
            *(v185 + 1) = v157;
            v186 = v158;
            sub_249E5ED90(0, 0, v221, &unk_249E801C0, v133);
            OUTLINED_FUNCTION_39_2();

            v187 = v211;
            v211(v218, v174);
            sub_249E5E3E8(v226);
            v188 = v215;
            v189 = v174;
          }

          (v187)(v188, v189);
          goto LABEL_21;
        }

        v81 = OUTLINED_FUNCTION_21_4();
        v84 = sub_249E7AE18();
        if (OUTLINED_FUNCTION_4_1(v84))
        {
          goto LABEL_19;
        }

LABEL_20:

        goto LABEL_21;
      }

      v81 = sub_249E7A698();
      v83 = sub_249E7AE18();
      if (!OUTLINED_FUNCTION_4_1(v83))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v81 = sub_249E7A698();
      v82 = sub_249E7AE18();
      if (!OUTLINED_FUNCTION_4_1(v82))
      {
        goto LABEL_20;
      }
    }

LABEL_19:
    v85 = OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_6_0(v85);
    OUTLINED_FUNCTION_1_1();
    _os_log_impl(v86, v87, v88, v89, v90, 2u);
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
    goto LABEL_20;
  }

  v73 = sub_249E7A698();
  v74 = sub_249E7AE18();
  if (OUTLINED_FUNCTION_4_1(v74))
  {
    v75 = OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_6_0(v75);
    OUTLINED_FUNCTION_1_1();
    _os_log_impl(v76, v77, v78, v79, v80, 2u);
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }

LABEL_21:
  OUTLINED_FUNCTION_6_1();
}

uint64_t sub_249E5ADEC@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF234B0, &qword_249E7D910);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v24 - v9;
  v11 = sub_249E7A628();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v24 - v17;
  if ([v2 expectsPeerResponse])
  {
    sub_249DFC27C(v2, &selRef_outgoingResponseIdentifier);
    if (v19)
    {
      sub_249E7A5C8();

      if (__swift_getEnumTagSinglePayload(v10, 1, v11) != 1)
      {
        v22 = *(v12 + 32);
        v22(v18, v10, v11);
        v22(a1, v18, v11);
        goto LABEL_11;
      }

      sub_249E2A8CC(v10, &qword_27EF234B0, &qword_249E7D910);
    }
  }

  sub_249DFC27C(v2, &selRef_incomingResponseIdentifier);
  if (v20)
  {
    sub_249E7A5C8();

    if (__swift_getEnumTagSinglePayload(v8, 1, v11) == 1)
    {
      sub_249E2A8CC(v8, &qword_27EF234B0, &qword_249E7D910);
    }

    else
    {
      v21 = *(v12 + 32);
      v21(v16, v8, v11);
      v21(a1, v16, v11);
    }
  }

LABEL_11:
  type metadata accessor for IDSManager.MessageType(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t (*sub_249E5B094(uint64_t a1))(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC10DropInCore10IDSManager_pendingMessageResponseHandlers;
  swift_beginAccess();
  v5 = *(v1 + v4);
  v6 = sub_249DFDAE0(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *(v2 + v4);
    swift_isUniquelyReferenced_nonNull_native();
    v18 = *(v2 + v4);
    v10 = v18[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23F80, &unk_249E7D900);
    sub_249E7B208();
    v11 = v18[6];
    v12 = sub_249E7A628();
    (*(*(v12 - 8) + 8))(v11 + *(*(v12 - 8) + 72) * v8, v12);
    v13 = v18[7] + 24 * v8;
    v14 = *(v13 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23F88, &unk_249E80198);
    sub_249E5E658(&qword_28130D360, MEMORY[0x277CC95F0]);
    v17 = *v13;
    sub_249E7B218();
    *(v2 + v4) = v18;
    swift_endAccess();
    *(swift_allocObject() + 16) = v17;
    v15 = v14;
    sub_249E6B770();

    return sub_249E5E188;
  }

  else
  {
    swift_endAccess();
    return 0;
  }
}

uint64_t sub_249E5B278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[11] = a8;
  v8[12] = v19;
  v8[9] = a6;
  v8[10] = a7;
  v8[7] = a4;
  v8[8] = a5;
  v9 = type metadata accessor for IDSManager.MessageType(0);
  v8[13] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v8[14] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23FB8, &qword_249E801E8) - 8) + 64) + 15;
  v8[15] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23FC0, qword_249E801F0);
  v8[16] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v8[17] = swift_task_alloc();
  v14 = sub_249E7AC78();
  v8[18] = v14;
  v15 = *(v14 - 8);
  v8[19] = v15;
  v16 = *(v15 + 64) + 15;
  v8[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_249E5B3EC, 0, 0);
}

uint64_t sub_249E5B3EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_87();
  a21 = v25;
  a22 = v26;
  OUTLINED_FUNCTION_90();
  a20 = v22;
  v27 = v22[7];
  v22[21] = OBJC_IVAR____TtC10DropInCore10IDSManager_logger;
  v28 = sub_249E7A698();
  v29 = sub_249E7AE28();
  if (OUTLINED_FUNCTION_127(v29))
  {
    v31 = v22[19];
    v30 = v22[20];
    v32 = v22[18];
    OUTLINED_FUNCTION_70();
    v33 = swift_slowAlloc();
    OUTLINED_FUNCTION_74();
    a11 = swift_slowAlloc();
    *v33 = 136315138;
    sub_249E7ACC8();
    OUTLINED_FUNCTION_11_5();
    sub_249E5E658(v34, v35);
    sub_249E7B2D8();
    v36 = OUTLINED_FUNCTION_9_6();
    v37(v36);
    v38 = sub_249E3A958(v23, v24, &a11);

    *(v33 + 4) = v38;
    OUTLINED_FUNCTION_52(&dword_249DEE000, v39, v40, "Task Priority = %s");
    OUTLINED_FUNCTION_12_2();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }

  v41 = v22[7] + OBJC_IVAR____TtC10DropInCore10IDSManager_delegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  v22[22] = Strong;
  v43 = v22[15];
  v44 = v22[16];
  if (Strong)
  {
    v45 = v22[7];
    v46 = *(v41 + 8);
    swift_getObjectType();
    v47 = *(v44 + 48);
    v48 = *(v45 + OBJC_IVAR____TtC10DropInCore10IDSManager_service);
    v49 = *(v46 + 8);
    OUTLINED_FUNCTION_17_3();
    v75 = v50 + *v50;
    v52 = *(v51 + 4);
    v53 = swift_task_alloc();
    v22[23] = v53;
    *v53 = v22;
    v53[1] = sub_249E5B6B4;
    v54 = v22[8];
    v55 = v22[9];
    v56 = v22[7];
    OUTLINED_FUNCTION_72();

    return v64(v57, v58, v59, v60, v61, v62, v63, v64, v46 + 8, v75, a11, a12, a13, a14);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v22[15], 1, 1, v22[16]);
    sub_249E2A8CC(v43, &qword_27EF23FB8, &qword_249E801E8);
    OUTLINED_FUNCTION_37_2();

    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_72();

    return v68(v67, v68, v69, v70, v71, v72, v73, v74, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_249E5B6B4(uint64_t a1)
{
  OUTLINED_FUNCTION_14_0();
  v5 = v4;
  v6 = v4[23];
  v7 = *v2;
  OUTLINED_FUNCTION_2_3();
  *v8 = v7;
  v5[24] = v1;

  if (!v1)
  {
    v9 = v5[22];
    swift_unknownObjectRelease();
    v5[25] = a1;
  }

  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_249E5B7D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_87();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_90();
  a20 = v22;
  v89 = *(v22 + 192);
  v26 = *(v22 + 128);
  v25 = *(v22 + 136);
  v27 = *(v22 + 112);
  v28 = *(v22 + 120);
  v29 = *(v22 + 96);
  v30 = *(v22 + 104);
  v31 = *(v22 + 80);
  v32 = *(v22 + 88);
  v33 = *(v22 + 56);
  *v28 = *(v22 + 200);
  __swift_storeEnumTagSinglePayload(v28, 0, 1, v26);
  sub_249E5E69C(v28, v25);
  v34 = sub_249E7A628();
  OUTLINED_FUNCTION_28_0(v34);
  (*(v35 + 16))(v27, v31);
  swift_storeEnumTagMultiPayload();
  v36 = *v25;
  v37 = *(v26 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23C60, &unk_249E7F8B0);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_249E80120;
  sub_249DF691C(0, &qword_27EF23FD0, 0x277CCACA8);

  *(v38 + 32) = sub_249E5C0A4();
  v39 = sub_249E584CC(v36, v25 + v37, v27, v38, 0, 1);
  if (!v89)
  {
    v55 = v39;
    v56 = v40;
    v57 = *(v22 + 168);
    v58 = *(v22 + 56);

    v59 = sub_249E7A698();
    v60 = sub_249E7AE28();

    v61 = OUTLINED_FUNCTION_272();
    v62 = *(v22 + 112);
    if (v61)
    {
      OUTLINED_FUNCTION_70();
      v63 = swift_slowAlloc();
      OUTLINED_FUNCTION_74();
      v64 = swift_slowAlloc();
      a10 = v64;
      *v63 = 136315138;
      v65 = sub_249E3A958(v55, v56, &a10);

      *(v63 + 4) = v65;
      _os_log_impl(&dword_249DEE000, v59, v60, "Successfully sent response %s", v63, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v64);
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870]();
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870]();
    }

    else
    {
    }

    sub_249E5E3E8(v62);
    sub_249E2A8CC(*(v22 + 136), &unk_27EF23FC0, qword_249E801F0);
    goto LABEL_15;
  }

  v41 = *(v22 + 136);
  sub_249E5E3E8(*(v22 + 112));

  sub_249E2A8CC(v41, &unk_27EF23FC0, qword_249E801F0);
  *(v22 + 40) = v89;
  v42 = v89;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF237C0, &qword_249E7E220);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23720, &qword_249E7E090);
  v43 = swift_dynamicCast();
  v44 = *(v22 + 168);
  v45 = *(v22 + 56);
  v46 = *(v22 + 64);
  if (v43 && *(v22 + 208) == 6)
  {

    v47 = sub_249E7A698();
    v48 = sub_249E7AE28();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = *(v22 + 64);
      OUTLINED_FUNCTION_70();
      v50 = swift_slowAlloc();
      OUTLINED_FUNCTION_74();
      a10 = swift_slowAlloc();
      *v50 = 136315138;
      v51 = sub_249E7A9E8();
      v53 = sub_249E3A958(v51, v52, &a10);

      *(v50 + 4) = v53;
      _os_log_impl(&dword_249DEE000, v47, v48, "Message already handled, Request = %s", v50, 0xCu);
      OUTLINED_FUNCTION_12_2();
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870]();
    }

    v54 = *(v22 + 40);
  }

  else
  {

    v66 = v89;

    v67 = sub_249E7A698();
    v68 = sub_249E7AE08();

    if (os_log_type_enabled(v67, v68))
    {
      v69 = *(v22 + 64);
      v70 = swift_slowAlloc();
      a10 = swift_slowAlloc();
      *v70 = 136315394;
      swift_getErrorValue();
      v72 = *(v22 + 16);
      v71 = *(v22 + 24);
      v73 = *(v22 + 32);
      v74 = sub_249E7B3A8();
      v76 = sub_249E3A958(v74, v75, &a10);

      *(v70 + 4) = v76;
      *(v70 + 12) = 2080;
      v77 = sub_249E7A9E8();
      v79 = sub_249E3A958(v77, v78, &a10);

      *(v70 + 14) = v79;
      _os_log_impl(&dword_249DEE000, v67, v68, "Failed to handle request. Error = %s, Request = %s", v70, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870]();
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870]();

      goto LABEL_15;
    }

    v54 = v89;
  }

LABEL_15:
  OUTLINED_FUNCTION_37_2();

  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_72();

  return v81(v80, v81, v82, v83, v84, v85, v86, v87, v89, a10, a11, a12, a13, a14);
}

void sub_249E5BD50()
{
  OUTLINED_FUNCTION_50();
  v40 = v0;
  v1 = *(v0 + 176);
  swift_unknownObjectRelease();
  v2 = *(v0 + 192);
  *(v0 + 40) = v2;
  v3 = (v0 + 40);
  v4 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF237C0, &qword_249E7E220);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23720, &qword_249E7E090);
  v5 = swift_dynamicCast();
  v6 = *(v0 + 168);
  v7 = *(v0 + 56);
  v8 = *(v0 + 64);
  if (v5)
  {
    v9 = *(v0 + 208) == 6;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {

    v26 = sub_249E7A698();
    v27 = sub_249E7AE28();

    if (OUTLINED_FUNCTION_272())
    {
      v28 = *(v0 + 64);
      OUTLINED_FUNCTION_70();
      v29 = swift_slowAlloc();
      OUTLINED_FUNCTION_74();
      v30 = swift_slowAlloc();
      v39 = v30;
      *v29 = 136315138;
      v31 = sub_249E7A9E8();
      v33 = sub_249E3A958(v31, v32, &v39);

      *(v29 + 4) = v33;
      _os_log_impl(&dword_249DEE000, v26, v27, "Message already handled, Request = %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870](v34);
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870](v35);
    }

    v36 = *v3;
  }

  else
  {

    v10 = v2;

    v11 = sub_249E7A698();
    v12 = sub_249E7AE08();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = *(v0 + 64);
      v14 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v14 = 136315394;
      swift_getErrorValue();
      v16 = *(v0 + 16);
      v15 = *(v0 + 24);
      v17 = *(v0 + 32);
      v18 = sub_249E7B3A8();
      v20 = sub_249E3A958(v18, v19, &v39);

      *(v14 + 4) = v20;
      *(v14 + 12) = 2080;
      v21 = sub_249E7A9E8();
      v23 = sub_249E3A958(v21, v22, &v39);

      *(v14 + 14) = v23;
      _os_log_impl(&dword_249DEE000, v11, v12, "Failed to handle request. Error = %s, Request = %s", v14, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870](v24);
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870](v25);

      goto LABEL_12;
    }

    v36 = v2;
  }

LABEL_12:
  OUTLINED_FUNCTION_37_2();

  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_34();

  __asm { BRAA            X1, X16 }
}

id sub_249E5C0A4()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_249E7AA88();

  v2 = [v0 initWithString_];

  return v2;
}

uint64_t sub_249E5C118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_249E7AC78();
  v6[5] = v7;
  v8 = *(v7 - 8);
  v6[6] = v8;
  v9 = *(v8 + 64) + 15;
  v6[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_249E5C1DC, 0, 0);
}

uint64_t sub_249E5C1DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_87();
  a21 = v25;
  a22 = v26;
  OUTLINED_FUNCTION_90();
  a20 = v22;
  v27 = v22[2] + OBJC_IVAR____TtC10DropInCore10IDSManager_logger;
  v28 = sub_249E7A698();
  v29 = sub_249E7AE28();
  if (OUTLINED_FUNCTION_127(v29))
  {
    v31 = v22[6];
    v30 = v22[7];
    v32 = v22[5];
    OUTLINED_FUNCTION_70();
    v33 = swift_slowAlloc();
    OUTLINED_FUNCTION_74();
    a11 = swift_slowAlloc();
    *v33 = 136315138;
    sub_249E7ACC8();
    OUTLINED_FUNCTION_11_5();
    sub_249E5E658(v34, v35);
    sub_249E7B2D8();
    v36 = OUTLINED_FUNCTION_9_6();
    v37(v36);
    v38 = sub_249E3A958(v23, v24, &a11);

    *(v33 + 4) = v38;
    OUTLINED_FUNCTION_52(&dword_249DEE000, v39, v40, "Task Priority = %s");
    OUTLINED_FUNCTION_12_2();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }

  v41 = v22[2] + OBJC_IVAR____TtC10DropInCore10IDSManager_delegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  v22[8] = Strong;
  if (Strong)
  {
    v43 = v22[2];
    v44 = *(v41 + 8);
    swift_getObjectType();
    v45 = *(v43 + OBJC_IVAR____TtC10DropInCore10IDSManager_service);
    v46 = *(v44 + 16);
    OUTLINED_FUNCTION_17_3();
    v73 = v47 + *v47;
    v49 = *(v48 + 4);
    v50 = swift_task_alloc();
    v22[9] = v50;
    *v50 = v22;
    v50[1] = sub_249E5C450;
    v51 = v22[3];
    v52 = v22[4];
    v53 = v22[2];
    OUTLINED_FUNCTION_72();

    return v60(v54, v55, v56, v57, v58, v59, v60, v61, v44 + 16, v73, a11, a12, a13, a14);
  }

  else
  {
    v64 = v22[7];

    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_72();

    return v66(v65, v66, v67, v68, v69, v70, v71, v72, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_249E5C450()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 64);
  v4 = *v0;
  OUTLINED_FUNCTION_2_3();
  *v5 = v4;

  swift_unknownObjectRelease();
  v6 = *(v1 + 56);

  v7 = *(v4 + 8);

  return v7();
}

void sub_249E5C678()
{
  OUTLINED_FUNCTION_15_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF234B0, &qword_249E7D910);
  v7 = OUTLINED_FUNCTION_37(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v47 - v10;
  v12 = sub_249E7A628();
  v13 = OUTLINED_FUNCTION_3(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_0();
  v20 = v19 - v18;
  if (v5)
  {
    if ((v3 & 1) == 0)
    {
      if (v1)
      {
        v28 = v1;
      }

      else
      {
        sub_249E5DA18();
        v28 = swift_allocError();
        *v29 = 1;
      }

      v30 = v28;
      v31 = v28;
      v32 = v1;

      v33 = sub_249E7A698();
      v34 = sub_249E7AE08();

      v35 = OUTLINED_FUNCTION_272();
      v50 = v28;
      if (v35)
      {
        v36 = swift_slowAlloc();
        v48 = v34;
        v37 = v36;
        v49 = swift_slowAlloc();
        v52[0] = v49;
        *(v37 + 4) = OUTLINED_FUNCTION_48_1(4.8151e-34);
        *(v37 + 12) = 2080;
        swift_getErrorValue();
        v47 = v33;
        v38 = sub_249E7B3A8();
        v40 = sub_249E3A958(v38, v39, v52);

        *(v37 + 14) = v40;
        v41 = v47;
        _os_log_impl(&dword_249DEE000, v47, v48, "IDS Send Failed. Identifier = %s Error: %s", v37, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_65();
        MEMORY[0x24C205870]();
        OUTLINED_FUNCTION_65();
        MEMORY[0x24C205870]();
      }

      else
      {
      }

      sub_249E7A5C8();
      if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
      {
        v42 = v50;

        sub_249E2A8CC(v11, &qword_27EF234B0, &qword_249E7D910);
      }

      else
      {
        (*(v15 + 32))(v20, v11, v12);
        v43 = sub_249E5B094(v20);
        v44 = v50;
        if (v43)
        {
          v45 = v43;
          v51 = 1;
          v52[0] = v50;
          v53 = 1;
          v46 = v50;
          v45(v52);

          sub_249DF2D58(v45);
          (*(v15 + 8))(v20, v12);
        }

        else
        {
          (*(v15 + 8))(v20, v12);
        }
      }

      goto LABEL_21;
    }

    v50 = sub_249E7A698();
    v21 = sub_249E7AE28();

    if (os_log_type_enabled(v50, v21))
    {
      OUTLINED_FUNCTION_70();
      v22 = swift_slowAlloc();
      OUTLINED_FUNCTION_74();
      v23 = swift_slowAlloc();
      v52[0] = v23;
      *(v22 + 4) = OUTLINED_FUNCTION_48_1(4.8149e-34);
      _os_log_impl(&dword_249DEE000, v50, v21, "IDS Send Succeeded. Identifier = %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870]();
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870]();

LABEL_21:
      OUTLINED_FUNCTION_6_1();
      return;
    }
  }

  else
  {
    v50 = sub_249E7A698();
    v24 = sub_249E7AE18();
    if (os_log_type_enabled(v50, v24))
    {
      v25 = OUTLINED_FUNCTION_9();
      *v25 = 0;
      _os_log_impl(&dword_249DEE000, v50, v24, "Identifier is nil", v25, 2u);
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870]();
    }
  }

  OUTLINED_FUNCTION_6_1();
}

id sub_249E5CC40()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_249E7ABD8();

  v2 = [v0 initWithArray_];

  return v2;
}

uint64_t sub_249E5CCB8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v59 = a8;
  v61 = a5;
  v60 = a3;
  v58 = type metadata accessor for IDSManager.MessageType(0);
  v12 = *(*(v58 - 8) + 64);
  MEMORY[0x28223BE20](v58);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_249E7A628();
  v15 = *(v57 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v57);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23820, &unk_249E7E860);
  v54 = *(v19 - 8);
  v20 = *(v54 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v50 - v21;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v24 = result;
    v52 = a7;
    v53 = v14;
    v63 = 0;
    v64 = 0xE000000000000000;
    sub_249E7B128();

    v65 = 0xD000000000000011;
    v66 = 0x8000000249E830D0;
    v56 = a2;
    sub_249E60134(&v63);
    v25 = v63;
    v26 = v64;

    sub_249E5E8D4(&v63);
    MEMORY[0x24C204750](v25, v26);

    v27 = v65;
    v50 = v66;
    v51 = a4;
    v55 = a6;
    if (a4)
    {
      sub_249E7A7E8();
      sub_249E2AB74(&qword_28130D320, &unk_27EF23820, &unk_249E7E860);
      sub_249E2AB74(&unk_28130D310, &unk_27EF23820, &unk_249E7E860);
      a6 = v55;
      sub_249E2AB74(&unk_28130D300, &unk_27EF23820, &unk_249E7E860);
      sub_249E7A6E8();
      (*(v54 + 8))(v22, v19);
      v28 = *&v65;
      v29 = v60;
    }

    else
    {
      v29 = v60;
      v65 = v60;
      v28 = *&v60;
    }

    v30 = *&v24[OBJC_IVAR____TtC10DropInCore10IDSManager_serialQueue];
    v31 = v56;
    (*(v15 + 16))(v18, v56, v57);
    v32 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v33 = objc_allocWithZone(type metadata accessor for OneshotTimer());
    v34 = v30;
    v35 = OneshotTimer.init(timeInterval:queue:identifier:label:timerFiredHandler:)(v30, v18, v27, v50, sub_249E5E928, v32, v28);
    v36 = swift_allocObject();
    *(v36 + 16) = v61;
    *(v36 + 24) = a6;
    v37 = OBJC_IVAR____TtC10DropInCore10IDSManager_pendingMessageResponseHandlers;
    swift_beginAccess();

    v38 = v35;
    v39 = *&v24[v37];
    swift_isUniquelyReferenced_nonNull_native();
    v62 = *&v24[v37];
    sub_249DFE06C(sub_249E5EBA8, v36, v38, v31);
    *&v24[v37] = v62;
    swift_endAccess();
    v40 = v53;
    sub_249E7A618();
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23C60, &unk_249E7F8B0);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_249E80120;
    *(v41 + 32) = v59;
    swift_unknownObjectRetain();
    v42 = sub_249E584CC(v52, v31, v40, v41, v29, v51 & 1);
    v44 = v43;

    v45 = sub_249E7A698();
    v46 = sub_249E7AE28();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v65 = v48;
      *v47 = 136315138;
      v49 = sub_249E3A958(v42, v44, &v65);

      *(v47 + 4) = v49;
      _os_log_impl(&dword_249DEE000, v45, v46, "Message Send Request Succeeded: %s", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v48);
      MEMORY[0x24C205870](v48, -1, -1);
      MEMORY[0x24C205870](v47, -1, -1);
    }

    else
    {
    }

    return sub_249E5E3E8(v40);
  }

  return result;
}

void sub_249E5D4DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_249E7A628();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    (*(v5 + 16))(v8, a3, v4);
    v11 = sub_249E7A698();
    v12 = sub_249E7AE08();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v26 = a3;
      v14 = v13;
      v15 = swift_slowAlloc();
      v29 = v15;
      *v14 = 136315138;
      sub_249E5E658(&qword_28130D350, MEMORY[0x277CC95F0]);
      v16 = sub_249E7B2D8();
      v18 = v17;
      (*(v5 + 8))(v8, v4);
      v19 = sub_249E3A958(v16, v18, &v29);

      *(v14 + 4) = v19;
      _os_log_impl(&dword_249DEE000, v11, v12, "Timed out waiting for response. Identifier = %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x24C205870](v15, -1, -1);
      v20 = v14;
      a3 = v26;
      MEMORY[0x24C205870](v20, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v8, v4);
    }

    v21 = sub_249E5B094(a3);
    if (v21)
    {
      v22 = v21;
      sub_249E5DA18();
      v23 = swift_allocError();
      *v24 = 2;
      v27 = 1;
      v29 = v23;
      memcpy(v30, __src, 0x41uLL);
      v30[65] = 1;
      v22(&v29);
      sub_249DF2D58(v22);
    }

    else
    {
    }
  }
}

uint64_t sub_249E5D7E0()
{
  v1 = sub_249E7A628();
  v2 = OUTLINED_FUNCTION_3(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_0();
  v9 = v8 - v7;
  v10 = type metadata accessor for IDSManager.MessageType(0);
  v11 = OUTLINED_FUNCTION_28_0(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_0();
  sub_249E5E384(v0, v15 - v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      return 0x746E657645;
    }

    v17 = OUTLINED_FUNCTION_26_2();
    v18(v17);
    v19 = 0x65736E6F70736552;
  }

  else
  {
    v20 = OUTLINED_FUNCTION_26_2();
    v21(v20);
    v19 = 0x2074736575716552;
  }

  v27 = v19;
  OUTLINED_FUNCTION_0_15();
  sub_249E5E658(v22, v23);
  v24 = sub_249E7B2D8();
  MEMORY[0x24C204750](v24);

  v25 = v27;
  (*(v4 + 8))(v9, v1);
  return v25;
}

id sub_249E5D9B4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_249E7AA88();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithService_];

  return v4;
}

unint64_t sub_249E5DA18()
{
  result = qword_27EF23F78;
  if (!qword_27EF23F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF23F78);
  }

  return result;
}

uint64_t sub_249E5DA6C(uint64_t a1, int64_t a2, char a3)
{
  result = sub_249E5DB2C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_249E5DA8C(uint64_t a1, int64_t a2, char a3)
{
  result = sub_249E5DC3C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_249E5DAAC(uint64_t a1, int64_t a2, char a3)
{
  result = sub_249E5DD3C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_249E5DACC(uint64_t a1, int64_t a2, char a3)
{
  result = sub_249E5DE54(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_249E5DAEC(uint64_t a1, int64_t a2, char a3)
{
  result = sub_249E5DF6C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_249E5DB0C(uint64_t a1, int64_t a2, char a3)
{
  result = sub_249E5E084(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_249E5DB2C(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF24098, &qword_249E80248);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_249E3A81C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF237C0, &qword_249E7E220);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_249E5DC3C(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23AD0, &qword_249E7F570);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_249E3A7FC((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_249E5DD3C(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF237D0, &qword_249E7E230);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_249E3BBA4((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF237F8, &qword_249E7E250);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_249E5DE54(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23800, &qword_249E7E260);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_249E3BBA4((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23810, &qword_249E7E270);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_249E5DF6C(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF236F0, &qword_249E7E030);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 48);
      if (v5)
      {
LABEL_13:
        sub_249E3A83C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF24090, &qword_249E80240);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_249E5E084(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF24068, &qword_249E80220);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 32);
      if (v5)
      {
LABEL_13:
        sub_249E3A864((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_249E5E1DC(id *a1)
{
  v1 = *a1;

  return sub_249E5E208(v1);
}

uint64_t sub_249E5E208(void *a1)
{
  v2 = [a1 serviceIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_249E7AAA8();

  return v3;
}

id sub_249E5E278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v10 = sub_249E7A9C8();

  v11 = sub_249E7AD38();

  v12 = sub_249E7A9C8();

  v13 = [a7 sendMessage:v10 toDestinations:v11 priority:a3 options:v12 identifier:a5 error:a6];

  return v13;
}

uint64_t sub_249E5E384(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IDSManager.MessageType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_249E5E3E8(uint64_t a1)
{
  v2 = type metadata accessor for IDSManager.MessageType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_249E5E444()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_249E042BC;
  OUTLINED_FUNCTION_1_2();

  return sub_249E5C118(v7, v8, v9, v10, v11, v12);
}

uint64_t sub_249E5E4F8()
{
  OUTLINED_FUNCTION_50();
  v2 = *(sub_249E7A628() - 8);
  OUTLINED_FUNCTION_17_3();
  v5 = v0[2];
  v6 = v0[3];
  v7 = v0[4];
  v8 = v0[5];
  v9 = (v0 + ((*(v4 + 64) + ((*(v3 + 80) + 113) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];
  v12 = swift_task_alloc();
  *(v1 + 16) = v12;
  *v12 = v1;
  v12[1] = sub_249E04BA4;
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_34();

  return sub_249E5B278(v13, v14, v15, v16, v17, v18, v19, v20);
}

uint64_t sub_249E5E658(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_286();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_249E5E69C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23FC0, qword_249E801F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_249E5E70C()
{
  result = qword_27EF23FE8;
  if (!qword_27EF23FE8)
  {
    sub_249DF691C(255, &qword_28130D150, 0x277D82BB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF23FE8);
  }

  return result;
}

uint64_t sub_249E5E788(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF240A0, &qword_249E80258);
  OUTLINED_FUNCTION_37(v2);
  v4 = *(v3 + 80);

  return sub_249E59654(a1);
}

uint64_t sub_249E5E800()
{
  v1 = *(sub_249E7A628() - 8);
  OUTLINED_FUNCTION_17_3();
  v3 = v2;
  v5 = v4;
  v6 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 23) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v0 + 16);
  v12 = v0 + v8;
  v13 = *v12;
  v14 = *(v12 + 8);
  v15 = (v0 + v9);
  v16 = *v15;
  v17 = v15[1];
  v18 = *(v0 + v10);
  v19 = *(v0 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_249E5CCB8(v11, v0 + v6, v13, v14, v16, v17, v18, v19);
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_249E5E930(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF237E0, &unk_249E7E240);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_249E5E9A8()
{
  sub_249E5EA2C(319, &qword_27EF240C0);
  if (v0 <= 0x3F)
  {
    sub_249E5EA2C(319, &unk_27EF240C8);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_249E5EA2C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_249E7A628();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for IDSManager.IDSManagerError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_249E5EB54()
{
  result = qword_27EF240D8;
  if (!qword_27EF240D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF240D8);
  }

  return result;
}

void *OUTLINED_FUNCTION_10_4(void *result)
{
  result[2] = 0;
  result[3] = 0;
  v3 = *(v2 - 424);
  result[4] = v1;
  result[5] = v3;
  v4 = *(v2 - 416);
  result[6] = *(v2 - 440);
  result[7] = v4;
  return result;
}

uint64_t OUTLINED_FUNCTION_16_4()
{
  result = *(v0 - 368);
  v2 = *(v0 - 288);
  v3 = *(v0 - 432);
  return result;
}

void OUTLINED_FUNCTION_19_4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_21_4()
{
  v3 = v0 + *(v1 - 280);

  return sub_249E7A698();
}

uint64_t OUTLINED_FUNCTION_37_2()
{
  v2 = v0[20];
  v3 = v0[17];
  v5 = v0[14];
  v4 = v0[15];
}

void OUTLINED_FUNCTION_39_2()
{
  v2 = *(v0 - 264);
}

void *OUTLINED_FUNCTION_47_1(void *__src, ...)
{
  va_start(va, __src);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);

  return memcpy(va, __src, 0x4AuLL);
}

uint64_t OUTLINED_FUNCTION_48_1(float a1)
{
  *v2 = a1;

  return sub_249E3A958(v3, v1, (v4 - 168));
}

uint64_t sub_249E5ED90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF236B0, &qword_249E7DFD0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v26 - v11;
  sub_249E5FDB8(a3, v26 - v11);
  v13 = sub_249E7AC78();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);

  if (EnumTagSinglePayload == 1)
  {
    sub_249E044D0(v12, &unk_27EF236B0, &qword_249E7DFD0);
  }

  else
  {
    sub_249E7AC68();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_249E7AC28();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_249E7AAF8() + 32;
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

      sub_249E044D0(a3, &unk_27EF236B0, &qword_249E7DFD0);

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

  sub_249E044D0(a3, &unk_27EF236B0, &qword_249E7DFD0);
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

uint64_t DropInCoreService.__allocating_init(homeManagerProvider:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  DropInCoreService.init(homeManagerProvider:)(a1);
  return v5;
}

uint64_t DropInCoreService.init(homeManagerProvider:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_249E7A6B8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC10DropInCore17DropInCoreService_logger;
  sub_249E7A6A8();
  if (a1)
  {
    swift_unknownObjectRetain();
  }

  else
  {
    (*(v5 + 16))(v8, v2 + v9, v4);
    v10 = sub_249E7A698();
    v11 = sub_249E7AE08();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_249DEE000, v10, v11, "Home Manager Provider is nil. Creating a new instance of Home Manager", v12, 2u);
      OUTLINED_FUNCTION_1();
    }

    (*(v5 + 8))(v8, v4);
    v13 = objc_allocWithZone(type metadata accessor for HomeManager());
    HomeManager.init(options:cachePolicy:)();
  }

  v14 = objc_allocWithZone(type metadata accessor for DropInServiceListenerDelegate());
  v15 = swift_unknownObjectRetain();
  *(v2 + OBJC_IVAR____TtC10DropInCore17DropInCoreService_listenerDelegate) = sub_249E3D5EC(v15);
  sub_249E5FB70();
  sub_249E7A868();
  v16 = sub_249E5F31C();
  *(v2 + OBJC_IVAR____TtC10DropInCore17DropInCoreService_listener) = v16;
  [v16 setDelegate_];
  [*(v2 + OBJC_IVAR____TtC10DropInCore17DropInCoreService_listener) resume];
  sub_249E7A858();
  v17 = sub_249E7AAF8();

  notify_post((v17 + 32));
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v2;
}

id sub_249E5F31C()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_249E7AA88();

  v2 = [v0 initWithMachServiceName_];

  return v2;
}

uint64_t sub_249E5F390(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF236B0, &qword_249E7DFD0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v12 - v7;
  v9 = sub_249E7AC78();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v2;
  v10[5] = a1;
  v10[6] = a2;

  sub_249E5ED90(0, 0, v8, &unk_249E80388, v10);
}

uint64_t sub_249E5F490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_249E7AC78();
  v6[5] = v7;
  v8 = *(v7 - 8);
  v6[6] = v8;
  v9 = *(v8 + 64) + 15;
  v6[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_249E5F554, 0, 0);
}

void sub_249E5F554()
{
  v17 = v0;
  v1 = v0[2];
  v0[8] = OBJC_IVAR____TtC10DropInCore17DropInCoreService_logger;
  v2 = sub_249E7A698();
  v3 = sub_249E7AE28();
  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[6];
    v4 = v0[7];
    v6 = v0[5];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315138;
    sub_249E7ACC8();
    sub_249E5FFAC();
    v9 = sub_249E7B2D8();
    v11 = v10;
    (*(v5 + 8))(v4, v6);
    v12 = sub_249E3A958(v9, v11, &v16);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_249DEE000, v2, v3, "Task Priority = %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_1();
  }

  v13 = *(*(v0[2] + OBJC_IVAR____TtC10DropInCore17DropInCoreService_listenerDelegate) + OBJC_IVAR____TtC10DropInCore29DropInServiceListenerDelegate_xpcDispatcher);
  if (!v13)
  {
    __break(1u);
    goto LABEL_9;
  }

  v14 = *(*(v13 + 16) + OBJC_IVAR____TtC10DropInCore13DropInManager_messageCenter);
  if (!v14)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v0[9] = *(v14 + 24);

  v15 = swift_task_alloc();
  v0[10] = v15;
  *v15 = v0;
  v15[1] = sub_249E5F75C;

  sub_249E437C8();
}

uint64_t sub_249E5F75C()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14_0();
  v2 = *(v1 + 80);
  v3 = *(v1 + 72);
  v4 = *v0;
  OUTLINED_FUNCTION_2_3();
  *v5 = v4;
  *(v7 + 88) = v6;

  return MEMORY[0x2822009F8](sub_249E5F86C, 0, 0);
}

uint64_t sub_249E5F86C()
{
  v1 = v0[11];
  if (v1)
  {
    v2 = v0[8];
    v3 = v0[2];
    v4 = v1;
    v5 = sub_249E7A698();
    v6 = sub_249E7AE28();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = v0[11];
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      *(v8 + 4) = v4;
      *v9 = v7;
      v10 = v4;
      _os_log_impl(&dword_249DEE000, v5, v6, "Activated Companion Link Client %@", v8, 0xCu);
      sub_249E044D0(v9, &unk_27EF23C30, &qword_249E7DA20);
      OUTLINED_FUNCTION_1();
      OUTLINED_FUNCTION_1();
    }

    v12 = v0[3];
    v11 = v0[4];

    v12(0);
  }

  else
  {
    v14 = v0[3];
    v13 = v0[4];
    sub_249E5FF58();
    v15 = swift_allocError();
    v14();
  }

  v16 = v0[7];

  OUTLINED_FUNCTION_9_0();

  return v17();
}

uint64_t DropInCoreService.deinit()
{
  v1 = OBJC_IVAR____TtC10DropInCore17DropInCoreService_logger;
  v2 = sub_249E7A6B8();
  OUTLINED_FUNCTION_21(v2);
  (*(v3 + 8))(v0 + v1);

  return v0;
}

uint64_t DropInCoreService.__deallocating_deinit()
{
  DropInCoreService.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_249E5FAE4()
{
  sub_249E7B408();
  MEMORY[0x24C205020](0);
  return sub_249E7B438();
}

uint64_t sub_249E5FB30()
{
  sub_249E7B408();
  MEMORY[0x24C205020](0);
  return sub_249E7B438();
}

unint64_t sub_249E5FB70()
{
  result = qword_28130D250;
  if (!qword_28130D250)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28130D250);
  }

  return result;
}

uint64_t sub_249E5FBB4(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_3_3(v8);
  *v9 = v10;
  v9[1] = sub_249E042BC;

  return sub_249E5F490(a1, v3, v4, v5, v6, v7);
}

uint64_t type metadata accessor for DropInCoreService()
{
  result = qword_28130E168;
  if (!qword_28130E168)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_249E5FCC8()
{
  result = sub_249E7A6B8();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_249E5FDB8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF236B0, &qword_249E7DFD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_249E5FE28()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_3_3(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_26_1(v4);

  return v7(v6);
}

uint64_t sub_249E5FEC0()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_3_3(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_26_1(v4);

  return v7(v6);
}

unint64_t sub_249E5FF58()
{
  result = qword_27EF24140;
  if (!qword_27EF24140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF24140);
  }

  return result;
}

unint64_t sub_249E5FFAC()
{
  result = qword_28130D2C0;
  if (!qword_28130D2C0)
  {
    sub_249E7AC78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28130D2C0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DropInCoreService.DropInCoreServiceError(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_249E600B4()
{
  result = qword_27EF24148;
  if (!qword_27EF24148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF24148);
  }

  return result;
}

uint64_t sub_249E60134@<X0>(void *a1@<X8>)
{
  sub_249E7A5D8();
  sub_249DFC4FC();
  v2 = sub_249E7AFD8();

  if (v2[2] >= 5uLL)
  {
    v6 = v2[5];
    v7 = v2[7];
    v12 = v2[6];
    v13 = v2[4];
    v3 = v2[8];
    v8 = v2[9];
    v4 = v2[10];
    v9 = v2[11];
    v5 = v2[12];
    v10 = v2[13];
  }

  else
  {
    v12 = 0;
    v13 = 0;
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0xE000000000000000;
    v7 = 0xE000000000000000;
    v8 = 0xE000000000000000;
    v9 = 0xE000000000000000;
    v10 = 0xE000000000000000;
  }

  *a1 = v13;
  a1[1] = v6;
  a1[2] = v12;
  a1[3] = v7;
  a1[4] = v3;
  a1[5] = v8;
  a1[6] = v4;
  a1[7] = v9;
  a1[8] = v5;
  a1[9] = v10;
  return result;
}

uint64_t sub_249E60260(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_249E602A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_249E60304(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_249E7B318() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_249E7B318() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[4] == a2[4] && a1[5] == a2[5];
  if (!v6 && (sub_249E7B318() & 1) == 0)
  {
    return 0;
  }

  v7 = a1[6] == a2[6] && a1[7] == a2[7];
  if (!v7 && (sub_249E7B318() & 1) == 0)
  {
    return 0;
  }

  if (a1[8] == a2[8] && a1[9] == a2[9])
  {
    return 1;
  }

  return sub_249E7B318();
}

void *sub_249E603F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_249E7A6B8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
  sub_249E7A6A8();
  (*(v10 + 32))(v4 + OBJC_IVAR____TtC10DropInCore24HomeParticipantValidator_logger, v13, v9);
  return v4;
}

uint64_t sub_249E6051C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  v3 = OBJC_IVAR____TtC10DropInCore24HomeParticipantValidator_logger;
  v4 = sub_249E7A6B8();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t sub_249E60594()
{
  sub_249E6051C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for HomeParticipantValidator()
{
  result = qword_28130D690;
  if (!qword_28130D690)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_249E60640()
{
  result = sub_249E7A6B8();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id sub_249E606F4(void *a1)
{
  v1 = a1;
  HMUser.description.getter();

  v2 = sub_249E7AA88();

  return v2;
}

uint64_t HMUser.description.getter()
{
  v1 = v0;
  v2 = sub_249E7A628();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = 0;
  v17 = 0xE000000000000000;
  sub_249E7B128();

  v16 = 0x204449726573555BLL;
  v17 = 0xEA0000000000203DLL;
  v7 = sub_249E60944(v0);
  if (v8)
  {
    v9 = v7;
    v10 = v8;
  }

  else
  {
    v11 = [v0 name];
    v9 = sub_249E7AAA8();
    v10 = v12;
  }

  MEMORY[0x24C204750](v9, v10);

  MEMORY[0x24C204750](0x69746E656449202CLL, 0xEF203D2072656966);
  v13 = [v1 uniqueIdentifier];
  sub_249E7A608();

  sub_249DF49D8();
  v14 = sub_249E7B2D8();
  MEMORY[0x24C204750](v14);

  (*(v3 + 8))(v6, v2);
  MEMORY[0x24C204750](93, 0xE100000000000000);
  return v16;
}

uint64_t sub_249E60944(void *a1)
{
  v1 = [a1 userID];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_249E7AAA8();

  return v3;
}

uint64_t sub_249E609A8@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF234B0, &qword_249E7D910);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v43 - v10;
  v12 = sub_249E7A628();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = v43 - v18;
  sub_249E55870(0x696E6F6973736573, 0xE900000000000064, a1, &v48);
  if (!v49)
  {
    goto LABEL_10;
  }

  v50 = v2;
  if ((OUTLINED_FUNCTION_0_16() & 1) == 0)
  {
    goto LABEL_14;
  }

  v44 = a2;
  v45 = v13;
  sub_249E55870(0x6469656D6F68, 0xE600000000000000, a1, &v48);
  if (!v49)
  {

LABEL_10:

LABEL_11:
    v20 = &unk_27EF23C40;
    v21 = &qword_249E7D8E0;
    v22 = &v48;
    goto LABEL_12;
  }

  if ((OUTLINED_FUNCTION_0_16() & 1) == 0)
  {

LABEL_14:

    goto LABEL_15;
  }

  v43[0] = v46;
  v43[1] = v47;
  sub_249E7A5C8();

  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {

    v20 = &qword_27EF234B0;
    v21 = &qword_249E7D910;
    v22 = v11;
LABEL_12:
    sub_249DF6A78(v22, v20, v21);
LABEL_15:
    sub_249DFE8A4();
    swift_allocError();
    return swift_willThrow();
  }

  v24 = v11;
  v25 = *(v45 + 32);
  v25(v19, v24, v12);
  sub_249E7A5C8();

  if (__swift_getEnumTagSinglePayload(v9, 1, v12) == 1)
  {
    v26 = *(v45 + 8);
    v27 = OUTLINED_FUNCTION_13();
    v28(v27);

    v20 = &qword_27EF234B0;
    v21 = &qword_249E7D910;
    v22 = v9;
    goto LABEL_12;
  }

  v25(v17, v9, v12);
  sub_249E55870(0x726F727265, 0xE500000000000000, a1, &v48);

  if (!v49)
  {
    v36 = OUTLINED_FUNCTION_1_10();
    a1(v36);
    v37 = OUTLINED_FUNCTION_13();
    a1(v37);
    goto LABEL_11;
  }

  if ((OUTLINED_FUNCTION_0_16() & 1) == 0)
  {
    v38 = OUTLINED_FUNCTION_1_10();
    a1(v38);
    v39 = OUTLINED_FUNCTION_13();
    a1(v39);
    goto LABEL_15;
  }

  v29 = v25;
  v31 = v46;
  v30 = v47;
  sub_249DF691C(0, &qword_27EF23528, 0x277CCAAC8);
  sub_249DF691C(0, &qword_28130D168, 0x277CCA9B8);
  v32 = v50;
  v33 = sub_249E7AE38();
  if (v32)
  {
    goto LABEL_21;
  }

  v40 = v33;
  if (!v33)
  {
    sub_249DFE8A4();
    swift_allocError();
    swift_willThrow();
LABEL_21:
    sub_249DFE8F8(v31, v30);
    v34 = *(v45 + 8);
    v34(v17, v12);
    v35 = OUTLINED_FUNCTION_13();
    return (v34)(v35);
  }

  sub_249DFE8F8(v31, v30);
  v41 = v44;
  v29(v44, v17, v12);
  v42 = type metadata accessor for DropInSessionFailureEvent();
  result = (v29)(v41 + *(v42 + 20), v19, v12);
  *(v41 + *(v42 + 24)) = v40;
  return result;
}

uint64_t sub_249E60EAC(uint64_t a1, uint64_t a2)
{
  if ((sub_249E7A5F8() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for DropInSessionFailureEvent();
  v5 = *(v4 + 20);
  if ((sub_249E7A5F8() & 1) == 0)
  {
    return 0;
  }

  sub_249DF691C(0, &qword_28130D150, 0x277D82BB8);
  v6 = *(v4 + 24);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);
  return sub_249E7AF78() & 1;
}

uint64_t sub_249E60F40()
{
  v1 = v0;
  v19[23] = *MEMORY[0x277D85DE8];
  v2 = objc_opt_self();
  v3 = type metadata accessor for DropInSessionFailureEvent();
  v4 = *(v1 + *(v3 + 24));
  v19[0] = 0;
  v5 = [v2 archivedDataWithRootObject:v4 requiringSecureCoding:1 error:v19];
  v6 = v19[0];
  if (v5)
  {
    v7 = sub_249E7A4F8();
    v9 = v8;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23710, &unk_249E7DC70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_249E7DF30;
    *(inited + 32) = 0x696E6F6973736573;
    *(inited + 40) = 0xE900000000000064;
    v11 = v1 + *(v3 + 20);
    v12 = sub_249E7A5D8();
    v13 = MEMORY[0x277D837D0];
    *(inited + 48) = v12;
    *(inited + 56) = v14;
    *(inited + 72) = v13;
    *(inited + 80) = 0x6469656D6F68;
    *(inited + 88) = 0xE600000000000000;
    *(inited + 96) = sub_249E7A5D8();
    *(inited + 104) = v15;
    *(inited + 120) = v13;
    *(inited + 128) = 0x726F727265;
    *(inited + 168) = MEMORY[0x277CC9318];
    *(inited + 136) = 0xE500000000000000;
    *(inited + 144) = v7;
    *(inited + 152) = v9;
    result = sub_249E7AA08();
  }

  else
  {
    v17 = v6;
    sub_249E7A4D8();

    result = swift_willThrow();
  }

  v18 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_249E61124(uint64_t a1)
{
  result = sub_249E611F8(&qword_27EF24150);
  *(a1 + 32) = result;
  return result;
}

uint64_t type metadata accessor for DropInSessionFailureEvent()
{
  result = qword_28130E388;
  if (!qword_28130E388)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_249E611B4(uint64_t a1)
{
  result = sub_249E611F8(&qword_27EF24158);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_249E611F8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DropInSessionFailureEvent();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_249E6123C(uint64_t a1)
{
  result = sub_249E611F8(&qword_27EF24158);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_249E612A8()
{
  result = sub_249E7A628();
  if (v1 <= 0x3F)
  {
    result = sub_249DF691C(319, &qword_28130D168, 0x277CCA9B8);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_16()
{

  return swift_dynamicCast();
}

id sub_249E61370()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D44160]) init];
  [v1 setDestinationDevice_];
  v2 = sub_249E7AA88();
  [v1 setServiceType_];

  return v1;
}

uint64_t sub_249E613F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[7] = a4;
  v5[8] = v4;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  return MEMORY[0x2822009F8](sub_249E6141C, 0, 0);
}

uint64_t sub_249E6141C()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 32);
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  v5 = *(v0 + 40);
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  *(v4 + 32) = v5;
  *(v4 + 48) = v2;
  v6 = *(MEMORY[0x277D85A40] + 4);
  v7 = swift_task_alloc();
  *(v0 + 80) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF24160, &qword_249E806A8);
  *v7 = v0;
  v7[1] = sub_249E6153C;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000021, 0x8000000249E831A0, sub_249E61B18, v4, v8);
}

uint64_t sub_249E6153C()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v7 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = sub_249E61674;
  }

  else
  {
    v5 = *(v2 + 72);

    v4 = sub_249E61658;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_249E61674()
{
  v1 = v0[9];

  v2 = v0[1];
  v3 = v0[11];

  return v2();
}

BOOL sub_249E616D8()
{
  v1 = sub_249E61DF8(v0);
  if (v1)
  {
    v2 = v1;
    v6[0] = 0xD000000000000016;
    v6[1] = 0x8000000249E82FB0;
    MEMORY[0x28223BE20](v1);
    v5[2] = v6;
    v3 = sub_249E365F8(sub_249E61F6C, v5, v2);
  }

  else
  {
    return 0;
  }

  return v3;
}

BOOL sub_249E61798()
{
  v1 = v0;
  v2 = sub_249E7A628();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF234B0, &qword_249E7D910);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v14 - v9;
  v11 = [v1 homeKitIdentifier];
  if (v11)
  {
    sub_249E7A608();

    (*(v3 + 32))(v10, v6, v2);
    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  __swift_storeEnumTagSinglePayload(v10, v12, 1, v2);
  sub_249E61F8C(v10);
  return v11 != 0;
}

void sub_249E6190C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF24168, &unk_249E806B0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = aBlock - v12;
  v14 = sub_249E7AA88();
  v15 = sub_249E7A9C8();
  (*(v10 + 16))(v13, a1, v9);
  v16 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v17 = swift_allocObject();
  (*(v10 + 32))(v17 + v16, v13, v9);
  aBlock[4] = sub_249E61C24;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_249E61CB8;
  aBlock[3] = &block_descriptor_7;
  v18 = _Block_copy(aBlock);

  sub_249E61E50(v14, v15, a6, v18, a2);
  _Block_release(v18);
}

uint64_t sub_249E61B28(void *a1, uint64_t a2, id a3)
{
  if (a3)
  {
    v3 = a3;
LABEL_8:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF24168, &unk_249E806B0);
    return sub_249E7AC38();
  }

  if (!a1 || !sub_249E57980(a1))
  {
    sub_249E61EEC();
    swift_allocError();
    goto LABEL_8;
  }

  if (!a2)
  {
    sub_249E7AA08();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF24168, &unk_249E806B0);
  return sub_249E7AC48();
}

uint64_t sub_249E61C24(void *a1, uint64_t a2, void *a3)
{
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF24168, &unk_249E806B0) - 8) + 80);

  return sub_249E61B28(a1, a2, a3);
}

uint64_t sub_249E61CB8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (a2)
  {
    v8 = sub_249E7A9D8();
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = 0;
  if (a3)
  {
LABEL_3:
    v5 = sub_249E7A9D8();
  }

LABEL_4:

  v9 = a4;
  v7(v8, v5, a4);
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_249E61DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_249E7B318() & 1;
  }
}

uint64_t sub_249E61DF8(void *a1)
{
  v1 = [a1 serviceTypes];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_249E7ABE8();

  return v3;
}

void sub_249E61E50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = sub_249E7A9C8();
  [a5 sendRequestID:a1 request:a2 options:v9 responseHandler:a4];
}

unint64_t sub_249E61EEC()
{
  result = qword_27EF24170;
  if (!qword_27EF24170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF24170);
  }

  return result;
}

uint64_t sub_249E61F8C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF234B0, &qword_249E7D910);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *_s26RPCompanionLinkClientErrorOwst(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_249E620A4()
{
  result = qword_27EF24178;
  if (!qword_27EF24178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF24178);
  }

  return result;
}

uint64_t sub_249E620F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v5 = *(a2 + 40);
    v6 = sub_249E7B3F8();
    v7 = ~(-1 << *(a2 + 32));
    do
    {
      v8 = v6 & v7;
      v9 = (1 << (v6 & v7)) & *(a2 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
      v2 = v9 != 0;
      if (!v9)
      {
        break;
      }

      v6 = v8 + 1;
    }

    while (*(*(a2 + 48) + 8 * v8) != a1);
  }

  return v2;
}

uint64_t sub_249E62184(double a1)
{
  sub_249E63CF8(&v2, a1 * 1000000000.0);
  if ((v3 & 1) == 0)
  {
    return v2;
  }

  v2 = 0;
  v3 = 0xE000000000000000;
  sub_249E7B128();
  MEMORY[0x24C204750](0x656C62756F44, 0xE600000000000000);
  MEMORY[0x24C204750](0xD00000000000001ELL, 0x8000000249E832F0);
  MEMORY[0x24C204750](0x3436746E4955, 0xE600000000000000);
  MEMORY[0x24C204750](0xD00000000000002ELL, 0x8000000249E83310);
  result = sub_249E7B228();
  __break(1u);
  return result;
}

id sub_249E62290()
{
  sub_249E62AD8();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AudioPowerManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for AudioPowerManager()
{
  result = qword_28130DAA8;
  if (!qword_28130DAA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_249E62444(uint64_t a1)
{
  v3 = *&v1[OBJC_IVAR____TtC10DropInCore17AudioPowerManager_queue];
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_249E6914C;
  *(v5 + 24) = v4;
  v13[4] = sub_249E69240;
  v13[5] = v5;
  OUTLINED_FUNCTION_3_11();
  OUTLINED_FUNCTION_2_15();
  v13[2] = v6;
  v13[3] = &block_descriptor_37;
  v7 = _Block_copy(v13);
  v8 = v1;

  v9 = OUTLINED_FUNCTION_145();
  dispatch_sync(v9, v10);
  _Block_release(v7);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_249E62570(char *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF24200, &qword_249E80860);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v25 - v7;
  v9 = OBJC_IVAR____TtC10DropInCore17AudioPowerManager_audioFrequencyController;
  v10 = *&a1[OBJC_IVAR____TtC10DropInCore17AudioPowerManager_audioFrequencyController];
  if (v10)
  {
    v11 = *&a1[OBJC_IVAR____TtC10DropInCore17AudioPowerManager_audioFrequencyController];
    v12 = v11;
  }

  else
  {
    v12 = [objc_allocWithZone(MEMORY[0x277D6EDC8]) initWithDelegate:a1 queue:*&a1[OBJC_IVAR____TtC10DropInCore17AudioPowerManager_queue]];
    v11 = 0;
    v10 = *&a1[v9];
  }

  *&a1[v9] = v12;
  v13 = v11;
  v14 = v12;

  v15 = OBJC_IVAR____TtC10DropInCore17AudioPowerManager_registeredStreamTokens;
  swift_beginAccess();
  if ((sub_249E620F8(a2, *&a1[v15]) & 1) == 0)
  {
    v26 = v5;
    v16 = a1;
    v17 = sub_249E7A698();
    v18 = sub_249E7AE28();
    v25[1] = v16;

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v25[0] = v4;
      v21 = v20;
      *v19 = 134218242;
      *(v19 + 4) = a2;
      *(v19 + 12) = 2112;
      v22 = *&a1[v9];
      *(v19 + 14) = v22;
      *v20 = v22;
      v23 = v22;
      _os_log_impl(&dword_249DEE000, v17, v18, "Audio power manager registered stream token: %ld with audio frequency controller: %@", v19, 0x16u);
      sub_249DF4A68(v21);
      v24 = v21;
      v4 = v25[0];
      MEMORY[0x24C205870](v24, -1, -1);
      MEMORY[0x24C205870](v19, -1, -1);
    }

    [v14 registerParticipantPowerSpectrum_];
    swift_beginAccess();
    sub_249E649F0(&v28, a2);
    swift_endAccess();
    sub_249E7A7A8();
    sub_249E42168(&qword_28130D338, &unk_27EF24200, &qword_249E80860);
    sub_249E42168(&qword_28130D330, &unk_27EF24200, &qword_249E80860);
    sub_249E42168(&qword_28130D328, &unk_27EF24200, &qword_249E80860);
    sub_249E7A6E8();
    (*(v26 + 8))(v8, v4);
    if (v27 == 1)
    {
      sub_249E628E0(v14, a2);
    }
  }
}

uint64_t sub_249E628E0(void *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF236B0, &qword_249E7DFD0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v23 - v7;
  v9 = sub_249E7A998();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = (&v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *&v2[OBJC_IVAR____TtC10DropInCore17AudioPowerManager_queue];
  *v13 = v14;
  (*(v10 + 104))(v13, *MEMORY[0x277D85200], v9);
  v15 = v14;
  LOBYTE(v14) = sub_249E7A9B8();
  result = (*(v10 + 8))(v13, v9);
  if (v14)
  {
    v17 = sub_249E7AC78();
    __swift_storeEnumTagSinglePayload(v8, 1, 1, v17);
    v18 = swift_allocObject();
    v18[2] = 0;
    v18[3] = 0;
    v18[4] = v2;
    v18[5] = a1;
    v18[6] = a2;
    v19 = v2;
    v20 = a1;
    v21 = sub_249E5ED90(0, 0, v8, &unk_249E80870, v18);
    v22 = *&v19[OBJC_IVAR____TtC10DropInCore17AudioPowerManager_mockDataTask];
    *&v19[OBJC_IVAR____TtC10DropInCore17AudioPowerManager_mockDataTask] = v21;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_249E62AD8()
{
  v1 = *&v0[OBJC_IVAR____TtC10DropInCore17AudioPowerManager_queue];
  OUTLINED_FUNCTION_22();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_249E63E18;
  *(v3 + 24) = v2;
  v11[4] = sub_249E63E20;
  v11[5] = v3;
  OUTLINED_FUNCTION_3_11();
  OUTLINED_FUNCTION_2_15();
  v11[2] = v4;
  v11[3] = &block_descriptor_27_0;
  v5 = _Block_copy(v11);
  v6 = v0;

  v7 = OUTLINED_FUNCTION_145();
  dispatch_sync(v7, v8);
  _Block_release(v5);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_249E62BFC(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC10DropInCore17AudioPowerManager_audioFrequencyController];
  if (v2)
  {
    v36 = OBJC_IVAR____TtC10DropInCore17AudioPowerManager_audioFrequencyController;
    v3 = v2;
    v4 = sub_249E7A698();
    v5 = sub_249E7AE28();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_249DEE000, v4, v5, "Deregistering all stream tokens", v6, 2u);
      MEMORY[0x24C205870](v6, -1, -1);
    }

    v7 = OBJC_IVAR____TtC10DropInCore17AudioPowerManager_registeredStreamTokens;
    swift_beginAccess();
    v8 = *&a1[v7];
    v11 = *(v8 + 56);
    v10 = v8 + 56;
    v9 = v11;
    v12 = 1 << *(*&a1[v7] + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & v9;
    v15 = (v12 + 63) >> 6;
    v37 = *&a1[v7];
    swift_bridgeObjectRetain_n();
    v16 = 0;
    if (v14)
    {
      goto LABEL_11;
    }

    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v17 >= v15)
      {

        v24 = *&a1[v36];
        *&a1[v36] = 0;

        return;
      }

      v14 = *(v10 + 8 * v17);
      ++v16;
      if (v14)
      {
        v16 = v17;
        do
        {
LABEL_11:
          v18 = *(*(v37 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v14)))));
          v19 = sub_249E7A698();
          v20 = sub_249E7AE28();
          if (os_log_type_enabled(v19, v20))
          {
            v21 = v3;
            v22 = swift_slowAlloc();
            *v22 = 134217984;
            *(v22 + 4) = v18;
            _os_log_impl(&dword_249DEE000, v19, v20, "Audio power manager deregistered stream token: %ld", v22, 0xCu);
            v23 = v22;
            v3 = v21;
            MEMORY[0x24C205870](v23, -1, -1);
          }

          v14 &= v14 - 1;

          [v3 unregisterParticipantPowerSpectrum_];
          swift_beginAccess();
          sub_249E6879C(v18);
          swift_endAccess();
        }

        while (v14);
      }
    }

    __break(1u);
  }

  else
  {
    v25 = OBJC_IVAR____TtC10DropInCore17AudioPowerManager_registeredStreamTokens;
    swift_beginAccess();
    if (*(*&a1[v25] + 16))
    {
      v26 = a1;
      v27 = sub_249E7A698();
      v28 = sub_249E7AE08();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v38 = v30;
        *v29 = 136315138;
        v31 = *&a1[v25];

        v32 = sub_249E7AD68();
        v34 = v33;

        v35 = sub_249E3A958(v32, v34, &v38);

        *(v29 + 4) = v35;
        _os_log_impl(&dword_249DEE000, v27, v28, "Audio power manager could not deregister all stream tokens. Audio frequency controller is nil. Registered Stream Tokens = %s", v29, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v30);
        MEMORY[0x24C205870](v30, -1, -1);
        MEMORY[0x24C205870](v29, -1, -1);
      }
    }
  }
}

uint64_t sub_249E63000()
{
  result = sub_249E7A6B8();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_249E7A688();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_249E630FC(float a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_249E7A928();
  v8 = OUTLINED_FUNCTION_3(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_0();
  v15 = v14 - v13;
  v16 = sub_249E7A958();
  v17 = OUTLINED_FUNCTION_3(v16);
  v57 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1_0();
  v56 = v22 - v21;
  v23 = sub_249E7A658();
  v24 = OUTLINED_FUNCTION_3(v23);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_1_0();
  v31 = v30 - v29;
  v32 = OBJC_IVAR____TtC10DropInCore17AudioPowerManager_registeredStreamTokens;
  swift_beginAccess();
  result = sub_249E620F8(a3, *(v4 + v32));
  if (result)
  {
    v52 = v15;
    v53 = v16;
    v54 = v10;
    v55 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF241E8, &unk_249E80848);
    v34 = swift_allocObject();
    v35 = MEMORY[0x277D83A90];
    *(v34 + 16) = xmmword_249E7D7D0;
    v36 = MEMORY[0x277D83B08];
    *(v34 + 56) = v35;
    *(v34 + 64) = v36;
    *(v34 + 32) = a1;
    v37 = sub_249E7AAB8();
    v39 = v38;
    sub_249E7A648();
    v40 = sub_249E7A678();
    v41 = sub_249E7AF08();
    if (sub_249E7AFB8())
    {
      v42 = swift_slowAlloc();
      v51 = v41;
      v43 = swift_slowAlloc();
      aBlock[0] = v43;
      *v42 = 136315138;
      v44 = sub_249E3A958(v37, v39, aBlock);

      *(v42 + 4) = v44;
      v45 = sub_249E7A638();
      _os_signpost_emit_with_name_impl(&dword_249DEE000, v40, v51, v45, "AudioPower", "%s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v43);
      MEMORY[0x24C205870](v43, -1, -1);
      MEMORY[0x24C205870](v42, -1, -1);
    }

    else
    {
    }

    (*(v26 + 8))(v31, v23);
    v46 = *(v4 + OBJC_IVAR____TtC10DropInCore17AudioPowerManager_delegateQueue);
    OUTLINED_FUNCTION_22();
    v47 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v48 = swift_allocObject();
    *(v48 + 16) = v47;
    *(v48 + 24) = a1;
    aBlock[4] = sub_249E63700;
    aBlock[5] = v48;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_249E52140;
    aBlock[3] = &block_descriptor_8;
    v49 = _Block_copy(aBlock);

    sub_249E7A938();
    sub_249E63724();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23D50, &unk_249E80260);
    OUTLINED_FUNCTION_4_12();
    sub_249E42168(v50, &unk_27EF23D50, &unk_249E80260);
    sub_249E7B018();
    MEMORY[0x24C204A90](0, v56, v52, v49);
    _Block_release(v49);
    (*(v54 + 8))(v52, v55);
    (*(v57 + 8))(v56, v53);
  }

  return result;
}

void sub_249E635CC(float a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = Strong + OBJC_IVAR____TtC10DropInCore17AudioPowerManager_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = *(v4 + 8);
      ObjectType = swift_getObjectType();
      (*(v5 + 8))(v3, ObjectType, v5, a1);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_249E63724()
{
  result = qword_28130D2D0;
  if (!qword_28130D2D0)
  {
    sub_249E7A928();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28130D2D0);
  }

  return result;
}

uint64_t sub_249E6377C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[11] = a4;
  v7 = sub_249E7A928();
  v6[14] = v7;
  v8 = *(v7 - 8);
  v6[15] = v8;
  v9 = *(v8 + 64) + 15;
  v6[16] = swift_task_alloc();
  v10 = sub_249E7A958();
  v6[17] = v10;
  v11 = *(v10 - 8);
  v6[18] = v11;
  v12 = *(v11 + 64) + 15;
  v13 = swift_task_alloc();
  v14 = OBJC_IVAR____TtC10DropInCore17AudioPowerManager_queue;
  v6[19] = v13;
  v6[20] = v14;
  v15 = *(MEMORY[0x277D857E8] + 4);
  v16 = swift_task_alloc();
  v6[21] = v16;
  *v16 = v6;
  v16[1] = sub_249E638DC;

  return MEMORY[0x282200480](66000000);
}

uint64_t sub_249E638DC()
{
  v2 = *(*v1 + 168);
  v5 = *v1;

  if (v0)
  {

    v3 = sub_249E69250;
  }

  else
  {
    v3 = sub_249E639F4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_249E639F4()
{
  if (sub_249E7ACB8())
  {
    v1 = *(v0 + 152);
    v2 = *(v0 + 128);

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    *(v0 + 64) = 0;
    MEMORY[0x24C205890](v0 + 64, 8);
    for (i = 16777217 * *(v0 + 64); i < 0xFFFF01; i = 16777217 * *(v0 + 80))
    {
      *(v0 + 80) = 0;
      MEMORY[0x24C205890](v0 + 80, 8);
    }

    v6 = *(v0 + 152);
    v23 = *(v0 + 144);
    v24 = *(v0 + 136);
    v7 = *(v0 + 128);
    v9 = *(v0 + 104);
    v8 = *(v0 + 112);
    v11 = *(v0 + 88);
    v10 = *(v0 + 96);
    v12 = vcvts_n_f32_u64(HIDWORD(i), 0x18uLL) + 0.0;
    v21 = *&v11[*(v0 + 160)];
    v22 = *(v0 + 120);
    v13 = swift_allocObject();
    *(v13 + 16) = v11;
    *(v13 + 24) = v10;
    *(v13 + 32) = v12;
    *(v13 + 40) = v9;
    *(v0 + 48) = sub_249E6921C;
    *(v0 + 56) = v13;
    *(v0 + 16) = MEMORY[0x277D85DD0];
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_249E52140;
    *(v0 + 40) = &block_descriptor_47_0;
    v14 = _Block_copy((v0 + 16));
    v15 = v11;
    v16 = v10;
    sub_249E7A938();
    *(v0 + 72) = MEMORY[0x277D84F90];
    sub_249E63724();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23D50, &unk_249E80260);
    OUTLINED_FUNCTION_4_12();
    sub_249E42168(v17, &unk_27EF23D50, &unk_249E80260);
    sub_249E7B018();
    MEMORY[0x24C204A90](0, v6, v7, v14);
    _Block_release(v14);
    (*(v22 + 8))(v7, v8);
    (*(v23 + 8))(v6, v24);
    v18 = *(v0 + 56);

    v19 = *(MEMORY[0x277D857E8] + 4);
    v20 = swift_task_alloc();
    *(v0 + 168) = v20;
    *v20 = v0;
    v20[1] = sub_249E638DC;

    return MEMORY[0x282200480](66000000);
  }
}

BOOL sub_249E63CF8(uint64_t a1, double a2)
{
  v3 = (*&a2 >> 52) & 0x7FFLL;
  v4 = *&a2 & 0xFFFFFFFFFFFFFLL;
  if (v3 | *&a2 & 0xFFFFFFFFFFFFFLL)
  {
    if (v3 != 2047 && a2 > -1.0)
    {
      v9 = sub_249E7AD28();
      if (v9 <= 63)
      {
        v10 = v9;
        v11 = sub_249E7AD08();
        v12 = v11 + __clz(__rbit64(v4));
        v13 = v10 - v12;
        if (__OFSUB__(v10, v12))
        {
          __break(1u);
        }

        else
        {
          if (v13 < -64 || v13 > 64)
          {
LABEL_12:
            v14 = 0;
            v15 = 0;
            if ((v10 & 0x8000000000000000) == 0)
            {
              goto LABEL_22;
            }

LABEL_23:
            v8 = 0;
            result = v10 >= v11;
            v6 = v14 | v15;
            goto LABEL_24;
          }

          if ((v13 & 0x8000000000000000) == 0)
          {
            if (v13 == 64)
            {
              goto LABEL_12;
            }

            v14 = v4 << v13;
            if (v10 < 0)
            {
              goto LABEL_17;
            }

            goto LABEL_22;
          }
        }

        if (v13 == -64)
        {
          goto LABEL_12;
        }

        v14 = v4 >> (v12 - v10);
        if (v10 < 0)
        {
LABEL_17:
          v15 = 0;
          goto LABEL_23;
        }

LABEL_22:
        v15 = 1 << v10;
        goto LABEL_23;
      }
    }

    v6 = 0;
    result = 0;
    v8 = 1;
  }

  else
  {
    v6 = 0;
    v8 = 0;
    result = 1;
  }

LABEL_24:
  *a1 = v6;
  *(a1 + 8) = v8;
  return result;
}

BOOL sub_249E63E28(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_249E7B408();
  sub_249E7AB18();
  sub_249E7B438();
  v9 = *(v7 + 32);
  OUTLINED_FUNCTION_5_10();
  v12 = ~v11;
  while (1)
  {
    v13 = v10 & v12;
    v14 = (1 << (v10 & v12)) & *(v7 + 56 + (((v10 & v12) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v14)
    {
      break;
    }

    v15 = (*(v7 + 48) + 16 * v13);
    v16 = *v15 == a2 && v15[1] == a3;
    if (v16 || (sub_249E7B318() & 1) != 0)
    {

      v17 = (*(v7 + 48) + 16 * v13);
      v18 = v17[1];
      *a1 = *v17;
      a1[1] = v18;

      return v14 == 0;
    }

    v10 = v13 + 1;
  }

  v19 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v3;

  sub_249E65C68(a2, a3, v13, isUniquelyReferenced_nonNull_native);
  *v3 = v22;
  *a1 = a2;
  a1[1] = a3;
  return v14 == 0;
}

uint64_t sub_249E63F70(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_249E7B078();

    if (v9)
    {

      sub_249DF691C(0, &qword_28130D160, 0x277D069A8);
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
    }

    else
    {
      result = sub_249E7B068();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v19 = sub_249E64AC0(v7, result + 1);
        if (*(v19 + 24) <= *(v19 + 16))
        {
          sub_249E64EF8();
        }

        v20 = v8;
        sub_249E51518(v20, v19);

        *v3 = v19;
LABEL_16:
        *a1 = v20;
        return 1;
      }
    }
  }

  else
  {
    sub_249DF691C(0, &qword_28130D160, 0x277D069A8);
    v11 = *(v6 + 40);
    sub_249E7AF68();
    v12 = *(v6 + 32);
    OUTLINED_FUNCTION_5_10();
    v15 = ~v14;
    while (1)
    {
      v16 = v13 & v15;
      if (((*(v6 + 56 + (((v13 & v15) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v15)) & 1) == 0)
      {
        v21 = *v3;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v26 = *v3;
        v20 = a2;
        sub_249E65DD0(v20, v16, isUniquelyReferenced_nonNull_native);
        *v3 = v26;
        goto LABEL_16;
      }

      v17 = *(*(v6 + 48) + 8 * v16);
      v18 = sub_249E7AF78();

      if (v18)
      {
        break;
      }

      v13 = v16 + 1;
    }

    v23 = *(*(v6 + 48) + 8 * v16);
    *a1 = v23;
    v24 = v23;
    return 0;
  }

  return result;
}

void sub_249E64190()
{
  OUTLINED_FUNCTION_15_0();
  v2 = v1;
  v76 = v3;
  v4 = sub_249E7A628();
  v5 = OUTLINED_FUNCTION_3(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v5);
  v12 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v74 - v13;
  v75 = v0;
  v15 = *v0;
  v16 = *(*v0 + 40);
  sub_249E7B408();
  sub_249E4D760();
  sub_249E7B438();
  v17 = *(v15 + 32);
  OUTLINED_FUNCTION_5_10();
  v20 = v19 & ~v18;
  v90 = v21;
  if (((*(v21 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
  {
LABEL_14:
    v70 = v75;
    v71 = *v75;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v93[0] = *v70;
    sub_249E2A248(v2, v94);
    sub_249E65F34(v2, v20, isUniquelyReferenced_nonNull_native);
    *v70 = v93[0];
    memcpy(v76, v2, 0x51uLL);
    goto LABEL_15;
  }

  v89 = ~v18;
  v77 = (v7 + 8);
  v78 = v14;
  v81 = v4;
  v82 = v2;
  v79 = v15;
  v80 = v12;
  while (1)
  {
    memcpy(v94, (*(v15 + 48) + 88 * v20), 0x51uLL);
    v22 = v94[1];
    v23 = SLOBYTE(v94[10]);
    v24 = *(v2 + 80);
    if ((v23 & 0x80000000) != 0)
    {
      break;
    }

    if ((v24 & 0x80000000) == 0)
    {
      v91 = v20;
      v25 = *(v2 + 8);
      v87 = *v2;
      v88 = 88 * v20;
      v26 = v94[2];
      v27 = v94[3];
      v28 = v94[5];
      v86 = v94[4];
      v30 = v94[6];
      v29 = v94[7];
      v31 = v94[8];
      v84 = v25;
      v85 = v94[9];
      v32 = v94[0];
      v83 = v22;
      v33 = v26;
      v34 = v81;
      v35 = v29;
      v36 = v77;
      sub_249E4A270(v33, v27, v86, v28, v30, v35, v31, v85, v23 & 1);
      v37 = v78;
      v38 = [v32 uniqueIdentifier];
      sub_249E7A608();

      v39 = [v87 uniqueIdentifier];
      OUTLINED_FUNCTION_12_6();

      LOBYTE(v38) = sub_249E7A5F8();
      v40 = *v36;
      v41 = OUTLINED_FUNCTION_9_7();
      v40(v41);
      (v40)(v37, v34);
      if ((v38 & 1) == 0)
      {
        goto LABEL_12;
      }

      v42 = [v83 uniqueIdentifier];
      sub_249E7A608();

      v43 = [v84 uniqueIdentifier];
      OUTLINED_FUNCTION_12_6();

      v44 = sub_249E7A5F8();
      sub_249E2A2A4(v94);
      v45 = OUTLINED_FUNCTION_9_7();
      v40(v45);
      v46 = v37;
      v47 = v34;
      goto LABEL_10;
    }

LABEL_13:
    v20 = (v20 + 1) & v89;
    if (((*(v90 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  if ((v24 & 0x80000000) == 0)
  {
    goto LABEL_13;
  }

  v91 = v20;
  v48 = *v2;
  v84 = *(v2 + 8);
  v87 = v48;
  v88 = 88 * v20;
  v49 = v94[2];
  v50 = v94[3];
  v51 = v94[4];
  v52 = v94[5];
  v53 = v94[6];
  v54 = v94[7];
  v55 = v94[9];
  v86 = v94[8];
  v85 = v94[0];
  v83 = v22;
  v56 = v49;
  v57 = v50;
  v59 = v80;
  v58 = v81;
  v60 = v51;
  v61 = v52;
  v63 = v77;
  v62 = v78;
  sub_249E4A270(v56, v57, v60, v61, v53, v54, v86, v55, v23 & 1);
  v64 = [v85 uniqueIdentifier];
  OUTLINED_FUNCTION_12_6();

  v65 = [v87 uniqueIdentifier];
  sub_249E7A608();

  OUTLINED_FUNCTION_9_7();
  v66 = sub_249E7A5F8();
  v40 = *v63;
  (*v63)(v59, v58);
  (v40)(v62, v58);
  if ((v66 & 1) == 0)
  {
LABEL_12:
    sub_249E2A2A4(v94);
    v2 = v82;
    v15 = v79;
    v20 = v91;
    goto LABEL_13;
  }

  v67 = [v83 uniqueIdentifier];
  OUTLINED_FUNCTION_12_6();

  v68 = [v84 uniqueIdentifier];
  sub_249E7A608();

  OUTLINED_FUNCTION_9_7();
  v44 = sub_249E7A5F8();
  sub_249E2A2A4(v94);
  (v40)(v59, v58);
  v46 = v62;
  v47 = v58;
LABEL_10:
  (v40)(v46, v47);
  v2 = v82;
  v15 = v79;
  v20 = v91;
  v69 = v88;
  if ((v44 & 1) == 0)
  {
    goto LABEL_13;
  }

  sub_249E2A2A4(v82);
  v73 = *(v15 + 48);
  memcpy(v93, (v73 + v69), 0x51uLL);
  memcpy(v76, (v73 + v69), 0x51uLL);
  sub_249E2A248(v93, &v92);
LABEL_15:
  OUTLINED_FUNCTION_6_1();
}

BOOL sub_249E646A0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *v4;
  v9 = *(*v4 + 40);
  sub_249E7B408();
  sub_249E7AB18();
  sub_249E7B438();
  v10 = *(v8 + 32);
  OUTLINED_FUNCTION_5_10();
  v13 = ~v12;
  while (1)
  {
    v14 = v11 & v13;
    v15 = (1 << (v11 & v13)) & *(v8 + 56 + (((v11 & v13) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v15)
    {
      break;
    }

    v16 = *(v8 + 48) + 24 * v14;
    v17 = *(v16 + 8) == a3 && *(v16 + 16) == a4;
    if (v17 || (sub_249E7B318() & 1) != 0)
    {

      swift_unknownObjectRelease();
      v18 = (*(v8 + 48) + 24 * v14);
      v19 = v18[1];
      v20 = v18[2];
      *a1 = *v18;
      a1[1] = v19;
      a1[2] = v20;
      swift_unknownObjectRetain();

      return v15 == 0;
    }

    v11 = v14 + 1;
  }

  v21 = *v26;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v26;
  swift_unknownObjectRetain();

  v23 = OUTLINED_FUNCTION_145();
  sub_249E664D4(v23, v24, a4, v14, isUniquelyReferenced_nonNull_native);
  *v26 = v28;
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  return v15 == 0;
}

void sub_249E6481C()
{
  OUTLINED_FUNCTION_15_0();
  v2 = v1;
  v29 = v3;
  v4 = type metadata accessor for XPCClient();
  v5 = OUTLINED_FUNCTION_3(v4);
  v30 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_0();
  v11 = v10 - v9;
  v27 = v0;
  v12 = *v0;
  v13 = *(*v0 + 40);
  sub_249E7B408();
  v28 = v2;
  v14 = *(v2 + *(v4 + 20));
  sub_249E7AF88();
  sub_249E7B438();
  v15 = *(v12 + 32);
  OUTLINED_FUNCTION_5_10();
  v18 = ~v17;
  while (1)
  {
    v19 = v16 & v18;
    if (((1 << (v16 & v18)) & *(v12 + 56 + (((v16 & v18) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      v23 = *v27;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v25 = OUTLINED_FUNCTION_145();
      sub_249DF76A8(v25, v26);
      v31 = *v27;
      sub_249E66654(v11, v19, isUniquelyReferenced_nonNull_native);
      *v27 = v31;
      sub_249E04524(v28, v29);
      goto LABEL_7;
    }

    v20 = *(v30 + 72) * v19;
    sub_249DF76A8(*(v12 + 48) + v20, v11);
    sub_249DF691C(0, &qword_28130D150, 0x277D82BB8);
    v21 = *(v11 + *(v4 + 20));
    v22 = sub_249E7AF78();
    sub_249DF770C(v11);
    if (v22)
    {
      break;
    }

    v16 = v19 + 1;
  }

  sub_249DF770C(v28);
  sub_249DF76A8(*(v12 + 48) + v20, v29);
LABEL_7:
  OUTLINED_FUNCTION_6_1();
}

BOOL sub_249E649F0(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(v6 + 40);
  v8 = sub_249E7B3F8();
  v9 = ~(-1 << *(v6 + 32));
  while (1)
  {
    v10 = v8 & v9;
    v11 = (1 << (v8 & v9)) & *(v6 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      break;
    }

    if (*(*(v6 + 48) + 8 * v10) == a2)
    {
      goto LABEL_6;
    }

    v8 = v10 + 1;
  }

  v12 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v3;
  sub_249E66878(a2, v10, isUniquelyReferenced_nonNull_native);
  *v3 = v15;
LABEL_6:
  result = v11 == 0;
  *a1 = a2;
  return result;
}

uint64_t sub_249E64AC0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF24210, &unk_249E80038);
    v2 = sub_249E7B0F8();
    v15 = v2;
    sub_249E7B058();
    while (1)
    {
      if (!sub_249E7B088())
      {

        return v2;
      }

      sub_249DF691C(0, &qword_28130D160, 0x277D069A8);
      swift_dynamicCast();
      if (*(v2 + 24) <= *(v2 + 16))
      {
        sub_249E64EF8();
      }

      v2 = v15;
      v3 = *(v15 + 40);
      result = sub_249E7AF68();
      v5 = v15 + 56;
      v6 = -1 << *(v15 + 32);
      v7 = result & ~v6;
      v8 = v7 >> 6;
      if (((-1 << v7) & ~*(v15 + 56 + 8 * (v7 >> 6))) == 0)
      {
        break;
      }

      v9 = __clz(__rbit64((-1 << v7) & ~*(v15 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
      *(*(v15 + 48) + 8 * v9) = v14;
      ++*(v15 + 16);
    }

    v10 = 0;
    v11 = (63 - v6) >> 6;
    while (++v8 != v11 || (v10 & 1) == 0)
    {
      v12 = v8 == v11;
      if (v8 == v11)
      {
        v8 = 0;
      }

      v10 |= v12;
      v13 = *(v5 + 8 * v8);
      if (v13 != -1)
      {
        v9 = __clz(__rbit64(~v13)) + (v8 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_249E64C9C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF24220, &qword_249E80880);
  result = sub_249E7B0E8();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

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
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      sub_249E6697C(0, (v30 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = (*(v3 + 48) + 16 * (v14 | (v7 << 6)));
    v18 = *v17;
    v19 = v17[1];
    v20 = *(v6 + 40);
    sub_249E7B408();
    sub_249E7AB18();
    result = sub_249E7B438();
    v21 = -1 << *(v6 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v6 + 48) + 16 * v24);
    *v29 = v18;
    v29[1] = v19;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v13 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

void sub_249E64EF8()
{
  OUTLINED_FUNCTION_15_0();
  v1 = v0;
  v2 = *v0;
  if (*(*v0 + 24) > v3)
  {
    v4 = *(*v0 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF24210, &unk_249E80038);
  v5 = sub_249E7B0E8();
  v6 = v5;
  if (!*(v2 + 16))
  {
LABEL_29:

    *v1 = v6;
    OUTLINED_FUNCTION_6_1();
    return;
  }

  v7 = 0;
  v8 = (v2 + 56);
  v9 = 1 << *(v2 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v2 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = v5 + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v28 = 1 << *(v2 + 32);
    if (v28 >= 64)
    {
      sub_249E6697C(0, (v28 + 63) >> 6, v2 + 56);
    }

    else
    {
      OUTLINED_FUNCTION_5_10();
      *v8 = v29;
    }

    *(v2 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = *(*(v2 + 48) + 8 * (v14 | (v7 << 6)));
    v18 = *(v6 + 40);
    v19 = sub_249E7AF68();
    v20 = -1 << *(v6 + 32);
    v21 = v19 & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    *(*(v6 + 48) + 8 * v23) = v17;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v24 = 0;
  v25 = (63 - v20) >> 6;
  while (++v22 != v25 || (v24 & 1) == 0)
  {
    v26 = v22 == v25;
    if (v22 == v25)
    {
      v22 = 0;
    }

    v24 |= v26;
    v27 = *(v13 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
}

uint64_t sub_249E65108(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF24240, &qword_249E80898);
  result = sub_249E7B0E8();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_37:

    *v2 = v6;
    return result;
  }

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
  v38 = v3;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v40 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v37 = 1 << *(v3 + 32);
    if (v37 >= 64)
    {
      sub_249E6697C(0, (v37 + 63) >> 6, v8);
    }

    else
    {
      *v8 = -1 << v37;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_37;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v40 = (v11 - 1) & v11;
LABEL_14:
    v17 = *(v3 + 48) + 88 * (v14 | (v7 << 6));
    v19 = *v17;
    v18 = *(v17 + 8);
    v20 = *(v17 + 16);
    v47 = *(v17 + 40);
    v48 = *(v17 + 24);
    v45 = *(v17 + 56);
    v46 = *(v17 + 32);
    v42 = *(v17 + 64);
    v43 = *(v17 + 48);
    v44 = *(v17 + 72);
    v21 = *(v17 + 80);
    v22 = *(v6 + 40);
    sub_249E7B408();
    v41 = v19;
    v39 = v21;
    MEMORY[0x24C205020](v21 < 0);
    sub_249E7AF88();
    sub_249E7AF88();
    if (v21)
    {
      MEMORY[0x24C205020](1);
      sub_249E7AB18();
      sub_249E7B428();
      if (v47)
      {
        sub_249E7AB18();
      }

      v24 = v43;
      sub_249E7B428();
      if (v45)
      {
        sub_249E7AB18();
      }

      v23 = v42;
      sub_249E7B428();
      if (v44)
      {
        sub_249E7AB18();
      }
    }

    else
    {
      MEMORY[0x24C205020](0);
      sub_249E7AB18();
      sub_249E7AB18();
      v23 = v42;
      v24 = v43;
    }

    result = sub_249E7B438();
    v25 = -1 << *(v6 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v13 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v13 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
    v29 = v41;
    v31 = v44;
    v30 = v45;
LABEL_31:
    *(v13 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    v36 = *(v6 + 48) + 88 * v28;
    *v36 = v29;
    *(v36 + 8) = v18;
    *(v36 + 16) = v20;
    *(v36 + 24) = v48;
    *(v36 + 32) = v46;
    *(v36 + 40) = v47;
    *(v36 + 48) = v24;
    *(v36 + 56) = v30;
    *(v36 + 64) = v23;
    *(v36 + 72) = v31;
    *(v36 + 80) = v39;
    ++*(v6 + 16);
    v3 = v38;
    v11 = v40;
    if (!v40)
    {
      goto LABEL_9;
    }
  }

  v32 = 0;
  v33 = (63 - v25) >> 6;
  v29 = v41;
  v31 = v44;
  v30 = v45;
  while (++v27 != v33 || (v32 & 1) == 0)
  {
    v34 = v27 == v33;
    if (v27 == v33)
    {
      v27 = 0;
    }

    v32 |= v34;
    v35 = *(v13 + 8 * v27);
    if (v35 != -1)
    {
      v28 = __clz(__rbit64(~v35)) + (v27 << 6);
      goto LABEL_31;
    }
  }

LABEL_39:
  __break(1u);
  return result;
}

uint64_t sub_249E654EC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF24238, &qword_249E80890);
  result = sub_249E7B0E8();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v32 = v2;
  v33 = v3;
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
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v31 = 1 << *(v3 + 32);
    if (v31 >= 64)
    {
      sub_249E6697C(0, (v31 + 63) >> 6, v8);
    }

    else
    {
      *v8 = -1 << v31;
    }

    v2 = v32;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = (*(v3 + 48) + 24 * (v14 | (v7 << 6)));
    v18 = *v17;
    v19 = v17[1];
    v20 = v17[2];
    v21 = *(v6 + 40);
    sub_249E7B408();
    sub_249E7AB18();
    result = sub_249E7B438();
    v22 = -1 << *(v6 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v13 + 8 * (v23 >> 6))) == 0)
    {
      break;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v13 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v6 + 48) + 24 * v25);
    *v30 = v18;
    v30[1] = v19;
    v30[2] = v20;
    ++*(v6 + 16);
    v3 = v33;
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v26 = 0;
  v27 = (63 - v22) >> 6;
  while (++v24 != v27 || (v26 & 1) == 0)
  {
    v28 = v24 == v27;
    if (v24 == v27)
    {
      v24 = 0;
    }

    v26 |= v28;
    v29 = *(v13 + 8 * v24);
    if (v29 != -1)
    {
      v25 = __clz(__rbit64(~v29)) + (v24 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_249E6575C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for XPCClient();
  v35 = *(v4 - 8);
  v36 = v4;
  v5 = *(v35 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF24230, &qword_249E80888);
  result = sub_249E7B0E8();
  v11 = result;
  if (!*(v8 + 16))
  {
LABEL_29:

    *v2 = v11;
    return result;
  }

  v34 = v2;
  v12 = 0;
  v13 = (v8 + 56);
  v14 = 1 << *(v8 + 32);
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(v8 + 56);
  v17 = (v14 + 63) >> 6;
  v18 = result + 56;
  if (!v16)
  {
LABEL_9:
    v20 = v12;
    while (1)
    {
      v12 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v12 >= v17)
      {
        break;
      }

      v21 = v13[v12];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v16 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    v33 = 1 << *(v8 + 32);
    if (v33 >= 64)
    {
      sub_249E6697C(0, (v33 + 63) >> 6, v8 + 56);
    }

    else
    {
      *v13 = -1 << v33;
    }

    v2 = v34;
    *(v8 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v19 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
LABEL_14:
    v22 = *(v35 + 72);
    sub_249E04524(*(v8 + 48) + v22 * (v19 | (v12 << 6)), v7);
    v23 = *(v11 + 40);
    sub_249E7B408();
    v24 = *&v7[*(v36 + 20)];
    sub_249E7AF88();
    result = sub_249E7B438();
    v25 = -1 << *(v11 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v18 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    result = sub_249E04524(v7, *(v11 + 48) + v28 * v22);
    ++*(v11 + 16);
    if (!v16)
    {
      goto LABEL_9;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v18 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_249E65A44(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF241F8, &qword_249E80858);
  result = sub_249E7B0E8();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v7 = 0;
  v9 = (v3 + 56);
  v8 = *(v3 + 56);
  v10 = 1 << *(v3 + 32);
  v27 = v2;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & v8;
  v13 = result + 56;
  if ((v11 & v8) == 0)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= ((v10 + 63) >> 6))
      {
        break;
      }

      v16 = v9[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    if (v10 >= 64)
    {
      sub_249E6697C(0, (v10 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v9 = -1 << v10;
    }

    v2 = v27;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_14:
    v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
    v18 = *(v6 + 40);
    result = sub_249E7B3F8();
    v19 = -1 << *(v6 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v6 + 48) + 8 * v22) = v17;
    ++*(v6 + 16);
    if (!v12)
    {
      goto LABEL_9;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v13 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_249E65C68(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_249E64C9C(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_249E6729C(v8 + 1);
LABEL_10:
      v15 = *v4;
      v16 = *(*v4 + 40);
      sub_249E7B408();
      sub_249E7AB18();
      result = sub_249E7B438();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v17;
        if (((*(v15 + 56 + (((result & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == v7 && v18[1] == a2;
        if (v19 || (sub_249E7B318() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_249E669E0();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_249E7B368();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

uint64_t sub_249E65DD0(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_249E64EF8();
      goto LABEL_8;
    }

    if (v7 <= v6)
    {
      sub_249E674D0(v6 + 1);
LABEL_8:
      v8 = *v3;
      v9 = *(*v3 + 40);
      result = sub_249E7AF68();
      v10 = ~(-1 << *(v8 + 32));
      while (1)
      {
        a2 = result & v10;
        if (((*(v8 + 56 + (((result & v10) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v10)) & 1) == 0)
        {
          goto LABEL_12;
        }

        sub_249DF691C(0, &qword_28130D160, 0x277D069A8);
        v11 = *(*(v8 + 48) + 8 * a2);
        v12 = sub_249E7AF78();

        if (v12)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_249E66B38();
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = v5;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
LABEL_15:
    result = sub_249E7B368();
    __break(1u);
  }

  else
  {
    *(v13 + 16) = v16;
  }

  return result;
}

uint64_t sub_249E65F34(void *a1, unint64_t a2, char a3)
{
  v7 = sub_249E7A628();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v67 - v13;
  v15 = *(*v3 + 16);
  v16 = *(*v3 + 24);
  v67 = v3;
  if (v16 <= v15 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_249E65108(v15 + 1);
    }

    else
    {
      if (v16 > v15)
      {
        sub_249E66C88();
        goto LABEL_20;
      }

      sub_249E676E0(v15 + 1);
    }

    v17 = *v3;
    v18 = *(*v3 + 40);
    sub_249E7B408();
    sub_249E4D760();
    v19 = sub_249E7B438();
    v78 = v17 + 56;
    v79 = v17;
    v20 = -1 << *(v17 + 32);
    a2 = v19 & ~v20;
    if ((*(v17 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v77 = ~v20;
      v68 = (v8 + 8);
      v71 = v7;
      v72 = a1;
      v70 = v12;
      v69 = v14;
      do
      {
        memcpy(__dst, (*(v79 + 48) + 88 * a2), 0x51uLL);
        v21 = __dst[1];
        v22 = __dst[10];
        v23 = *(a1 + 80);
        if (SLOBYTE(__dst[10]) < 0)
        {
          if (v23 < 0)
          {
            v80 = a2;
            v43 = *a1;
            v74 = a1[1];
            v76 = v43;
            v44 = __dst[2];
            v45 = __dst[3];
            v46 = __dst[4];
            v47 = __dst[5];
            v48 = __dst[6];
            v49 = __dst[7];
            v50 = __dst[8];
            v51 = __dst[9];
            v75 = __dst[0];
            v73 = v21;
            v66 = v22 & 1;
            v52 = v44;
            v53 = v45;
            v35 = v71;
            v54 = v46;
            v38 = v69;
            v39 = v70;
            v55 = v68;
            sub_249E4A270(v52, v53, v54, v47, v48, v49, v50, v51, v66);
            v56 = [v75 uniqueIdentifier];
            sub_249E7A608();

            v57 = [v76 uniqueIdentifier];
            sub_249E7A608();

            LOBYTE(v57) = sub_249E7A5F8();
            v42 = *v55;
            (*v55)(v39, v35);
            v42(v38, v35);
            if (v57)
            {
LABEL_16:
              v58 = [v73 uniqueIdentifier];
              sub_249E7A608();

              v59 = [v74 uniqueIdentifier];
              sub_249E7A608();

              LOBYTE(v59) = sub_249E7A5F8();
              sub_249E2A2A4(__dst);
              v42(v39, v35);
              v42(v38, v35);
              a1 = v72;
              a2 = v80;
              if (v59)
              {
                goto LABEL_23;
              }

              goto LABEL_19;
            }

            goto LABEL_18;
          }
        }

        else if ((v23 & 0x80000000) == 0)
        {
          v80 = a2;
          v24 = a1[1];
          v76 = *a1;
          v26 = __dst[2];
          v25 = __dst[3];
          v28 = __dst[4];
          v27 = __dst[5];
          v29 = __dst[7];
          v74 = v24;
          v75 = __dst[6];
          v30 = __dst[8];
          v31 = __dst[9];
          v32 = __dst[0];
          v73 = v21;
          v65 = v22 & 1;
          v33 = v25;
          v34 = v28;
          v35 = v71;
          v36 = v29;
          v37 = v68;
          v38 = v69;
          v39 = v70;
          sub_249E4A270(v26, v33, v34, v27, v75, v36, v30, v31, v65);
          v40 = [v32 uniqueIdentifier];
          sub_249E7A608();

          v41 = [v76 uniqueIdentifier];
          sub_249E7A608();

          LOBYTE(v41) = sub_249E7A5F8();
          v42 = *v37;
          (*v37)(v39, v35);
          v42(v38, v35);
          if (v41)
          {
            goto LABEL_16;
          }

LABEL_18:
          sub_249E2A2A4(__dst);
          a1 = v72;
          a2 = v80;
        }

LABEL_19:
        a2 = (a2 + 1) & v77;
      }

      while (((*(v78 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_20:
  v60 = *v67;
  *(*v67 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = memcpy((*(v60 + 48) + 88 * a2), a1, 0x51uLL);
  v62 = *(v60 + 16);
  v63 = __OFADD__(v62, 1);
  v64 = v62 + 1;
  if (v63)
  {
    __break(1u);
LABEL_23:
    result = sub_249E7B368();
    __break(1u);
  }

  else
  {
    *(v60 + 16) = v64;
  }

  return result;
}

uint64_t sub_249E664D4(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  v9 = result;
  v10 = *(*v5 + 16);
  v11 = *(*v5 + 24);
  if (v11 <= v10 || (a5 & 1) == 0)
  {
    if (a5)
    {
      sub_249E654EC(v10 + 1);
      goto LABEL_10;
    }

    if (v11 <= v10)
    {
      sub_249E67C30(v10 + 1);
LABEL_10:
      v17 = *v5;
      v18 = *(*v5 + 40);
      sub_249E7B408();
      sub_249E7AB18();
      result = sub_249E7B438();
      v19 = ~(-1 << *(v17 + 32));
      while (1)
      {
        a4 = result & v19;
        if (((*(v17 + 56 + (((result & v19) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v19)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v20 = *(v17 + 48) + 24 * a4;
        v21 = *(v20 + 8) == a2 && *(v20 + 16) == a3;
        if (v21 || (sub_249E7B318() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a4 + 1;
      }
    }

    result = sub_249E66E10();
  }

LABEL_7:
  v12 = *v5;
  *(*v5 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v13 = (*(v12 + 48) + 24 * a4);
  *v13 = v9;
  v13[1] = a2;
  v13[2] = a3;
  v14 = *(v12 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
LABEL_19:
    result = sub_249E7B368();
    __break(1u);
  }

  else
  {
    *(v12 + 16) = v16;
  }

  return result;
}

uint64_t sub_249E66654(uint64_t a1, unint64_t a2, char a3)
{
  v7 = type metadata accessor for XPCClient();
  v28 = *(v7 - 8);
  v8 = *(v28 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_249E6575C(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_249E67E80(v11 + 1);
LABEL_8:
      v26 = v3;
      v13 = *v3;
      v14 = *(*v3 + 40);
      sub_249E7B408();
      v15 = *(v7 + 20);
      v27 = a1;
      v16 = *(a1 + v15);
      sub_249E7AF88();
      v17 = sub_249E7B438();
      v18 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v17 & v18;
        if (((*(v13 + 56 + (((v17 & v18) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v17 & v18)) & 1) == 0)
        {
          break;
        }

        sub_249DF76A8(*(v13 + 48) + *(v28 + 72) * a2, v10);
        sub_249DF691C(0, &qword_28130D150, 0x277D82BB8);
        v19 = *&v10[*(v7 + 20)];
        v20 = sub_249E7AF78();
        sub_249DF770C(v10);
        if (v20)
        {
          goto LABEL_16;
        }

        v17 = a2 + 1;
      }

      v3 = v26;
      a1 = v27;
      goto LABEL_13;
    }

    sub_249E66F7C();
  }

LABEL_13:
  v21 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_249E04524(a1, *(v21 + 48) + *(v28 + 72) * a2);
  v23 = *(v21 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (v24)
  {
    __break(1u);
LABEL_16:
    result = sub_249E7B368();
    __break(1u);
  }

  else
  {
    *(v21 + 16) = v25;
  }

  return result;
}

uint64_t sub_249E66878(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_249E65A44(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_249E68138(v6 + 1);
LABEL_10:
      v12 = *v3;
      v13 = *(*v3 + 40);
      result = sub_249E7B3F8();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v14;
        if (((*(v12 + 56 + (((result & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v14)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v12 + 48) + 8 * a2) == v5)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_249E6715C();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = sub_249E7B368();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

uint64_t sub_249E6697C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_249E807C0;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

void *sub_249E669E0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF24220, &qword_249E80880);
  v2 = *v0;
  v3 = sub_249E7B0D8();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
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

id sub_249E66B38()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF24210, &unk_249E80038);
  v2 = *v0;
  v3 = sub_249E7B0D8();
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

void *sub_249E66C88()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF24240, &qword_249E80898);
  v2 = *v0;
  v3 = sub_249E7B0D8();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; result = sub_249E2A248(__dst, v18))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = *(v2 + 48);
      v17 = 88 * (v13 | (v8 << 6));
      memcpy(__dst, (v16 + v17), 0x51uLL);
      memmove((*(v4 + 48) + v17), (v16 + v17), 0x51uLL);
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 56 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
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

void *sub_249E66E10()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF24238, &qword_249E80890);
  v2 = *v0;
  v3 = sub_249E7B0D8();
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
        v17 = 3 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + 8 * v17);
        v19 = v18[1];
        v20 = v18[2];
        v21 = (*(v4 + 48) + 8 * v17);
        *v21 = *v18;
        v21[1] = v19;
        v21[2] = v20;
        swift_unknownObjectRetain();
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

void *sub_249E66F7C()
{
  v1 = v0;
  v2 = type metadata accessor for XPCClient();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF24230, &qword_249E80888);
  v7 = *v0;
  v8 = sub_249E7B0D8();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 56);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v7 + 56 + 8 * v11)
    {
      result = memmove(result, (v7 + 56), 8 * v11);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = *(v7 + 56);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_17:
        v22 = *(v3 + 72) * (v19 | (v13 << 6));
        sub_249DF76A8(*(v7 + 48) + v22, v6);
        result = sub_249E04524(v6, *(v9 + 48) + v22);
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
        goto LABEL_19;
      }

      v21 = *(v7 + 56 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v9;
  }

  return result;
}

void *sub_249E6715C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF241F8, &qword_249E80858);
  v2 = *v0;
  v3 = sub_249E7B0D8();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

uint64_t sub_249E6729C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF24220, &qword_249E80880);
  result = sub_249E7B0E8();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = (*(v3 + 48) + 16 * (v13 | (v7 << 6)));
        v17 = *v16;
        v18 = v16[1];
        v19 = *(v6 + 40);
        sub_249E7B408();

        sub_249E7AB18();
        result = sub_249E7B438();
        v20 = -1 << *(v6 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = (*(v6 + 48) + 16 * v23);
        *v28 = v17;
        v28[1] = v18;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v29;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_249E674D0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF24210, &unk_249E80038);
  result = sub_249E7B0E8();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = *(v6 + 40);
        v17 = *(*(v3 + 48) + 8 * (v13 | (v7 << 6)));
        result = sub_249E7AF68();
        v18 = -1 << *(v6 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        *(*(v6 + 48) + 8 * v21) = v17;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

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
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v26;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_249E676E0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF24240, &qword_249E80898);
  result = sub_249E7B0E8();
  v6 = result;
  if (!*(v3 + 16))
  {
    v45 = result;

LABEL_47:
    *v2 = v45;
    return result;
  }

  v46 = v1;
  v7 = 0;
  v8 = v3 + 56;
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
  v47 = (v9 + 63) >> 6;
  v48 = v3 + 56;
  v49 = v3;
  v50 = result + 56;
  v51 = result;
  if (!v11)
  {
LABEL_9:
    v13 = v7;
    while (1)
    {
      v7 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v7 >= v47)
      {
        v45 = v6;

        v2 = v46;
        goto LABEL_47;
      }

      v14 = *(v8 + 8 * v7);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v52 = (v14 - 1) & v14;
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_49;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v11));
    v52 = (v11 - 1) & v11;
LABEL_14:
    v15 = *(v3 + 48) + 88 * (v12 | (v7 << 6));
    v17 = *v15;
    v16 = *(v15 + 8);
    v19 = *(v15 + 16);
    v18 = *(v15 + 24);
    v58 = *(v15 + 32);
    v59 = *(v15 + 40);
    v20 = *(v15 + 48);
    v21 = *(v15 + 56);
    v23 = *(v15 + 64);
    v22 = *(v15 + 72);
    v24 = *(v15 + 80);
    v25 = *(v6 + 40);
    sub_249E7B408();
    v54 = v17;
    v55 = v20;
    v56 = v23;
    v57 = v22;
    v53 = v16;
    if (v24 < 0)
    {
      v61 = v17;
      v62 = v16;
      v63 = v19;
      v64 = v18;
      v65 = v58;
      v66 = v59;
      v67 = v20;
      v68 = v21;
      v69 = v23;
      v70 = v22;
      v71 = v24 & 0x7F;
      MEMORY[0x24C205020](1);
      sub_249E49F10(&v61, v60, &qword_27EF24248, &qword_249E808A0);
      sub_249E7AF88();
      sub_249E7AF88();
      v26 = v24;
      if ((v24 & 1) == 0)
      {
LABEL_21:
        MEMORY[0x24C205020](0);
        v27 = v19;
        v28 = v18;
        sub_249E7AB18();
        v29 = v58;
        v30 = v59;
        sub_249E7AB18();
        v31 = v55;
        goto LABEL_34;
      }

      MEMORY[0x24C205020](1);
      v27 = v19;
      v28 = v18;
      sub_249E7AB18();
      sub_249E7B428();
      v29 = v58;
      if (v59)
      {
        v30 = v59;
        sub_249E7AB18();
      }

      else
      {
        v30 = 0;
      }

      v31 = v55;
      sub_249E7B428();
      if (v21)
      {
        sub_249E7AB18();
      }

      sub_249E7B428();
      if (v57)
      {
        sub_249E7AB18();
      }

      v26 = v24;
    }

    else
    {
      v61 = v17;
      v62 = v16;
      v63 = v19;
      v64 = v18;
      v65 = v58;
      v66 = v59;
      v67 = v20;
      v68 = v21;
      v69 = v23;
      v70 = v22;
      v71 = v24;
      MEMORY[0x24C205020](0);
      sub_249E49F10(&v61, v60, &unk_27EF24250, &qword_249E808A8);
      sub_249E7AF88();
      sub_249E7AF88();
      v26 = v24;
      if ((v24 & 1) == 0)
      {
        goto LABEL_21;
      }

      MEMORY[0x24C205020](1);
      v27 = v19;
      v28 = v18;
      sub_249E7AB18();
      sub_249E7B428();
      v29 = v58;
      if (v59)
      {
        v30 = v59;
        sub_249E7AB18();
      }

      else
      {
        v30 = 0;
      }

      v31 = v55;
      sub_249E7B428();
      if (v21)
      {
        sub_249E7AB18();
      }

      sub_249E7B428();
      if (v57)
      {
        sub_249E7AB18();
      }

      v26 = v24;
    }

LABEL_34:
    result = sub_249E7B438();
    v6 = v51;
    v32 = -1 << *(v51 + 32);
    v33 = result & ~v32;
    v34 = v33 >> 6;
    if (((-1 << v33) & ~*(v50 + 8 * (v33 >> 6))) == 0)
    {
      break;
    }

    v35 = __clz(__rbit64((-1 << v33) & ~*(v50 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
    v37 = v53;
    v36 = v54;
    v38 = v56;
    v39 = v57;
LABEL_43:
    *(v50 + ((v35 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v35;
    v44 = *(v51 + 48) + 88 * v35;
    *v44 = v36;
    *(v44 + 8) = v37;
    *(v44 + 16) = v27;
    *(v44 + 24) = v28;
    *(v44 + 32) = v29;
    *(v44 + 40) = v30;
    *(v44 + 48) = v31;
    *(v44 + 56) = v21;
    *(v44 + 64) = v38;
    *(v44 + 72) = v39;
    *(v44 + 80) = v26;
    ++*(v51 + 16);
    v8 = v48;
    v3 = v49;
    v11 = v52;
    if (!v52)
    {
      goto LABEL_9;
    }
  }

  v40 = 0;
  v41 = (63 - v32) >> 6;
  v37 = v53;
  v36 = v54;
  v38 = v56;
  v39 = v57;
  while (++v34 != v41 || (v40 & 1) == 0)
  {
    v42 = v34 == v41;
    if (v34 == v41)
    {
      v34 = 0;
    }

    v40 |= v42;
    v43 = *(v50 + 8 * v34);
    if (v43 != -1)
    {
      v35 = __clz(__rbit64(~v43)) + (v34 << 6);
      goto LABEL_43;
    }
  }

LABEL_49:
  __break(1u);
  return result;
}

uint64_t sub_249E67C30(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF24238, &qword_249E80890);
  result = sub_249E7B0E8();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v32 = v3;
    v7 = 0;
    v8 = v3 + 56;
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
    if (v11)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_14:
        v17 = (*(v3 + 48) + 24 * (v14 | (v7 << 6)));
        v18 = *v17;
        v19 = v17[1];
        v20 = v17[2];
        v21 = *(v6 + 40);
        sub_249E7B408();
        swift_unknownObjectRetain();

        sub_249E7AB18();
        result = sub_249E7B438();
        v22 = -1 << *(v6 + 32);
        v23 = result & ~v22;
        v24 = v23 >> 6;
        if (((-1 << v23) & ~*(v13 + 8 * (v23 >> 6))) == 0)
        {
          break;
        }

        v25 = __clz(__rbit64((-1 << v23) & ~*(v13 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v13 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
        v30 = (*(v6 + 48) + 24 * v25);
        *v30 = v18;
        v30[1] = v19;
        v30[2] = v20;
        ++*(v6 + 16);
        v3 = v32;
        if (!v11)
        {
          goto LABEL_9;
        }
      }

      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v13 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v15 = v7;
      while (1)
      {
        v7 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v7 >= v12)
        {

          v2 = v31;
          goto LABEL_27;
        }

        v16 = *(v8 + 8 * v7);
        ++v15;
        if (v16)
        {
          v14 = __clz(__rbit64(v16));
          v11 = (v16 - 1) & v16;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_249E67E80(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for XPCClient();
  v33 = *(v4 - 8);
  v34 = v4;
  v5 = *(v33 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF24230, &qword_249E80888);
  result = sub_249E7B0E8();
  v11 = result;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 56);
    v16 = (v13 + 63) >> 6;
    v17 = result + 56;
    if (v15)
    {
      while (1)
      {
        v18 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v21 = *(v33 + 72);
        sub_249DF76A8(*(v8 + 48) + v21 * (v18 | (v12 << 6)), v7);
        v22 = *(v11 + 40);
        sub_249E7B408();
        v23 = *&v7[*(v34 + 20)];
        sub_249E7AF88();
        result = sub_249E7B438();
        v24 = -1 << *(v11 + 32);
        v25 = result & ~v24;
        v26 = v25 >> 6;
        if (((-1 << v25) & ~*(v17 + 8 * (v25 >> 6))) == 0)
        {
          break;
        }

        v27 = __clz(__rbit64((-1 << v25) & ~*(v17 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v17 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
        result = sub_249E04524(v7, *(v11 + 48) + v27 * v21);
        ++*(v11 + 16);
        if (!v15)
        {
          goto LABEL_9;
        }
      }

      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v17 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v19 = v12;
      while (1)
      {
        v12 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        if (v12 >= v16)
        {

          v2 = v32;
          goto LABEL_27;
        }

        v20 = *(v8 + 56 + 8 * v12);
        ++v19;
        if (v20)
        {
          v18 = __clz(__rbit64(v20));
          v15 = (v20 - 1) & v20;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v11;
  }

  return result;
}

uint64_t sub_249E68138(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF241F8, &qword_249E80858);
  result = sub_249E7B0E8();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = *(*(v3 + 48) + 8 * (v13 | (v7 << 6)));
        v17 = *(v6 + 40);
        result = sub_249E7B3F8();
        v18 = -1 << *(v6 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        *(*(v6 + 48) + 8 * v21) = v16;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

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
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {
          goto LABEL_25;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_25:

    *v2 = v6;
  }

  return result;
}

uint64_t sub_249E68324(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v7 = *(*v3 + 40);
  sub_249E7B408();
  sub_249E7AB18();
  sub_249E7B438();
  v8 = *(v6 + 32);
  OUTLINED_FUNCTION_5_10();
  v11 = ~v10;
  while (1)
  {
    v12 = v9 & v11;
    if (((*(v6 + 56 + (((v9 & v11) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v9 & v11)) & 1) == 0)
    {
      break;
    }

    v13 = *(v6 + 48) + 24 * v12;
    v14 = *(v13 + 8) == a2 && *(v13 + 16) == a3;
    if (v14 || (sub_249E7B318() & 1) != 0)
    {
      v15 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v3;
      v23 = *v3;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_249E66E10();
        v17 = v23;
      }

      v18 = (*(v17 + 48) + 24 * v12);
      v19 = *v18;
      v20 = v18[1];
      v21 = v18[2];
      sub_249E689E4(v12);
      *v3 = v23;
      return OUTLINED_FUNCTION_145();
    }

    v9 = v12 + 1;
  }

  return OUTLINED_FUNCTION_145();
}

uint64_t sub_249E68458(void *a1)
{
  v2 = v1;
  v4 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    sub_249DF691C(0, &qword_28130D160, 0x277D069A8);
    v9 = *(v4 + 40);
    sub_249E7AF68();
    v10 = *(v4 + 32);
    OUTLINED_FUNCTION_5_10();
    v13 = ~v12;
    while (1)
    {
      v14 = v11 & v13;
      if (((*(v4 + 56 + (((v11 & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v11 & v13)) & 1) == 0)
      {
        break;
      }

      v15 = *(*(v4 + 48) + 8 * v14);
      v16 = sub_249E7AF78();

      if (v16)
      {
        v17 = *v2;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v19 = *v2;
        v21 = *v2;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_249E66B38();
          v19 = v21;
        }

        v8 = *(*(v19 + 48) + 8 * v14);
        sub_249E68BC4(v14);
        *v2 = v21;
        return v8;
      }

      v11 = v14 + 1;
    }

    return 0;
  }

  if (v4 < 0)
  {
    v5 = *v1;
  }

  v6 = a1;
  v7 = sub_249E7B098();

  if ((v7 & 1) == 0)
  {

    return 0;
  }

  v8 = sub_249E68888();

  return v8;
}

void sub_249E685D4()
{
  OUTLINED_FUNCTION_15_0();
  v2 = v1;
  v30 = v3;
  v4 = type metadata accessor for XPCClient();
  v5 = OUTLINED_FUNCTION_3(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_0();
  v12 = v11 - v10;
  v29 = v0;
  v13 = *v0;
  v14 = *(*v0 + 40);
  sub_249E7B408();
  v15 = *(v2 + *(v4 + 20));
  sub_249E7AF88();
  sub_249E7B438();
  v16 = *(v13 + 32);
  OUTLINED_FUNCTION_5_10();
  v19 = ~v18;
  while (1)
  {
    v20 = v17 & v19;
    if (((*(v13 + 56 + (((v17 & v19) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v17 & v19)) & 1) == 0)
    {
      v24 = 1;
      v25 = v30;
      goto LABEL_9;
    }

    v21 = *(v7 + 72) * v20;
    sub_249DF76A8(*(v13 + 48) + v21, v12);
    sub_249DF691C(0, &qword_28130D150, 0x277D82BB8);
    v22 = *(v12 + *(v4 + 20));
    v23 = sub_249E7AF78();
    sub_249DF770C(v12);
    if (v23)
    {
      break;
    }

    v17 = v20 + 1;
  }

  v26 = *v29;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v29;
  v31 = *v29;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_249E66F7C();
    v28 = v31;
  }

  v25 = v30;
  sub_249E04524(*(v28 + 48) + v21, v30);
  sub_249E68D58(v20);
  v24 = 0;
  *v29 = v31;
LABEL_9:
  __swift_storeEnumTagSinglePayload(v25, v24, 1, v4);
  OUTLINED_FUNCTION_6_1();
}

uint64_t sub_249E6879C(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = sub_249E7B3F8();
  v7 = ~(-1 << *(v4 + 32));
  while (1)
  {
    v8 = v6 & v7;
    if (((1 << (v6 & v7)) & *(v4 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      return 0;
    }

    if (*(*(v4 + 48) + 8 * v8) == a1)
    {
      break;
    }

    v6 = v8 + 1;
  }

  v10 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v2;
  v14 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_249E6715C();
    v12 = v14;
  }

  v9 = *(*(v12 + 48) + 8 * v8);
  sub_249E68FD4(v8);
  *v2 = v14;
  return v9;
}

uint64_t sub_249E68888()
{
  v1 = *v0;

  v2 = sub_249E7B068();
  v3 = swift_unknownObjectRetain();
  v4 = sub_249E64AC0(v3, v2);
  v14 = v4;
  v5 = *(v4 + 40);

  v6 = sub_249E7AF68();
  v7 = ~(-1 << *(v4 + 32));
  while (1)
  {
    v8 = v6 & v7;
    if (((*(v4 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v6 & v7)) & 1) == 0)
    {
      break;
    }

    sub_249DF691C(0, &qword_28130D160, 0x277D069A8);
    v9 = *(*(v4 + 48) + 8 * v8);
    v10 = sub_249E7AF78();

    if (v10)
    {

      v11 = *(*(v4 + 48) + 8 * v8);
      sub_249E68BC4(v8);
      if (sub_249E7AF78())
      {
        *v13 = v14;
        return v11;
      }

      __break(1u);
      break;
    }

    v6 = v8 + 1;
  }

  __break(1u);
  return result;
}

unint64_t sub_249E689E4(unint64_t result)
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

    v9 = sub_249E7B038();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 24 * v6);
        v14 = *v12;
        v13 = v12[1];
        v15 = v12[2];
        sub_249E7B408();
        swift_unknownObjectRetain();

        sub_249E7AB18();
        v16 = sub_249E7B438();

        swift_unknownObjectRelease();
        v17 = v16 & v7;
        if (v2 >= v10)
        {
          if (v17 >= v10 && v2 >= v17)
          {
LABEL_15:
            v20 = *(v3 + 48);
            v21 = v20 + 24 * v2;
            v22 = (v20 + 24 * v6);
            if (v2 != v6 || v21 >= v22 + 24)
            {
              v24 = *v22;
              *(v21 + 16) = *(v22 + 2);
              *v21 = v24;
              v2 = v6;
            }
          }
        }

        else if (v17 >= v10 || v2 >= v17)
        {
          goto LABEL_15;
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

  v25 = *(v3 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v27;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_249E68BC4(unint64_t result)
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

    v9 = sub_249E7B038();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 8 * v6);
        v13 = sub_249E7AF68();

        v14 = v13 & v7;
        if (v2 >= v10)
        {
          if (v14 >= v10 && v2 >= v14)
          {
LABEL_15:
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
          goto LABEL_15;
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

  v21 = *(v3 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v23;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_249E68D58(int64_t a1)
{
  v3 = type metadata accessor for XPCClient();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v3);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  v10 = *v1 + 56;
  v11 = -1 << *(*v1 + 32);
  v12 = (a1 + 1) & ~v11;
  if (((1 << v12) & *(v10 + 8 * (v12 >> 6))) != 0)
  {
    v13 = ~v11;
    v14 = *v1;

    v15 = sub_249E7B038();
    if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) != 0)
    {
      v33 = v10;
      v16 = (v15 + 1) & v13;
      v17 = *(v4 + 72);
      while (1)
      {
        v18 = v17 * v12;
        sub_249DF76A8(*(v9 + 48) + v17 * v12, v8);
        v19 = *(v9 + 40);
        sub_249E7B408();
        v20 = *&v8[*(v3 + 20)];
        sub_249E7AF88();
        v21 = sub_249E7B438();
        sub_249DF770C(v8);
        v22 = v21 & v13;
        if (a1 >= v16)
        {
          if (v22 < v16 || a1 < v22)
          {
            goto LABEL_24;
          }
        }

        else if (v22 < v16 && a1 < v22)
        {
          goto LABEL_24;
        }

        v25 = *(v9 + 48);
        v26 = v17 * a1;
        v27 = v25 + v17 * a1;
        v28 = v25 + v18 + v17;
        if (v17 * a1 < v18 || v27 >= v28)
        {
          break;
        }

        a1 = v12;
        if (v26 != v18)
        {
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_23;
        }

LABEL_24:
        v12 = (v12 + 1) & v13;
        if (((*(v33 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
        {

          v10 = v33;
          goto LABEL_28;
        }
      }

      swift_arrayInitWithTakeFrontToBack();
LABEL_23:
      a1 = v12;
      goto LABEL_24;
    }

LABEL_28:
    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v30 = *(v9 + 16);
  v31 = __OFSUB__(v30, 1);
  v32 = v30 - 1;
  if (v31)
  {
    __break(1u);
  }

  else
  {
    *(v9 + 16) = v32;
    ++*(v9 + 36);
  }

  return result;
}

unint64_t sub_249E68FD4(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(v3 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_249E7B038();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 40);
        v11 = *(v3 + 48);
        v12 = (v11 + 8 * v6);
        v13 = *v12;
        v14 = sub_249E7B3F8() & v7;
        if (v2 >= v9)
        {
          if (v14 >= v9 && v2 >= v14)
          {
LABEL_15:
            v17 = (v11 + 8 * v2);
            if (v2 != v6 || v17 >= v12 + 1)
            {
              *v17 = *v12;
              v2 = v6;
            }
          }
        }

        else if (v14 >= v9 || v2 >= v14)
        {
          goto LABEL_15;
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

  v19 = *(v3 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v21;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_249E69154(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_249E3046C;

  return sub_249E6377C(a1, v4, v5, v6, v7, v8);
}

uint64_t OUTLINED_FUNCTION_12_6()
{

  return sub_249E7A608();
}

uint64_t sub_249E692D4(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return sub_249E7B068();
  }

  else
  {
    return *(a1 + 16);
  }
}

id sub_249E692F4(void *a1)
{
  v1 = a1;
  IDSService.description.getter();

  v2 = sub_249E7AA88();

  return v2;
}

uint64_t IDSService.description.getter()
{
  v1 = 0xE000000000000000;
  sub_249E7B128();
  MEMORY[0x24C204750](0x6669746E6564495BLL, 0xEE00203D20726569);
  v2 = sub_249E695E4(v0);
  if (v3)
  {
    v1 = v3;
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x24C204750](v2, v1);

  MEMORY[0x24C204750](0x6553206E6143202CLL, 0xED0000203D20646ELL);
  v4 = [v0 canSend];
  v5 = v4 == 0;
  if (v4)
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (v5)
  {
    v7 = 0xE500000000000000;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  MEMORY[0x24C204750](v6, v7);

  MEMORY[0x24C204750](0x6E756F636341202CLL, 0xED0000203D207374);
  v8 = sub_249E69648(v0);
  if (v8)
  {
    sub_249E692D4(v8);
  }

  v9 = sub_249E7B2D8();
  MEMORY[0x24C204750](v9);

  MEMORY[0x24C204750](0x656369766544202CLL, 0xEC000000203D2073);
  v10 = sub_249E69574(v0);
  if (v10)
  {
    sub_249E514A8(v10);
  }

  v11 = sub_249E7B2D8();
  MEMORY[0x24C204750](v11);

  MEMORY[0x24C204750](93, 0xE100000000000000);
  return 0;
}

uint64_t sub_249E69574(void *a1)
{
  v1 = [a1 devices];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_249DF691C(0, &qword_27EF24260, 0x277D186E0);
  v3 = sub_249E7ABE8();

  return v3;
}

uint64_t sub_249E695E4(void *a1)
{
  v1 = [a1 serviceIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_249E7AAA8();

  return v3;
}

uint64_t sub_249E69648(void *a1)
{
  v1 = [a1 accounts];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_249DF691C(0, &qword_27EF24268, 0x277D186C0);
  sub_249E696C4();
  v3 = sub_249E7AD58();

  return v3;
}

unint64_t sub_249E696C4()
{
  result = qword_27EF24270;
  if (!qword_27EF24270)
  {
    sub_249DF691C(255, &qword_27EF24268, 0x277D186C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF24270);
  }

  return result;
}

uint64_t type metadata accessor for XPCClient()
{
  result = qword_28130D400;
  if (!qword_28130D400)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_249E697A4()
{
  result = sub_249E7A6B8();
  if (v1 <= 0x3F)
  {
    result = sub_249DF691C(319, &qword_27EF235E0, 0x277CCAE80);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_249E69850(char a1, char a2)
{
  v2 = 0x656C646E6168;
  if (a1)
  {
    if (a1 == 1)
    {
      v3 = 0xEE00657461446E6FLL;
    }

    else
    {
      v3 = 0xEE00657079546E6FLL;
    }

    v4 = 0x6974617269707865;
  }

  else
  {
    v3 = 0xE600000000000000;
    v4 = 0x656C646E6168;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v5 = 0xEE00657461446E6FLL;
    }

    else
    {
      v5 = 0xEE00657079546E6FLL;
    }

    v2 = 0x6974617269707865;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

  if (v4 == v2 && v3 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_5_11();
  }

  return v7 & 1;
}

uint64_t sub_249E69954(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x657669746341;
  }

  else
  {
    v3 = 0x676E6974696157;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (a2)
  {
    v5 = 0x657669746341;
  }

  else
  {
    v5 = 0x676E6974696157;
  }

  if (a2)
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
    v8 = OUTLINED_FUNCTION_5_11();
  }

  return v8 & 1;
}

uint64_t sub_249E699E4(unsigned __int8 a1, char a2)
{
  v2 = 0x666C65536C696ELL;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = 0x666C65536C696ELL;
  switch(v4)
  {
    case 1:
      v5 = 0x69766F72506C696ELL;
      v6 = 7497060;
      goto LABEL_5;
    case 2:
      v5 = 0x6F64756573506F6ELL;
      v6 = 7174510;
LABEL_5:
      v3 = v6 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
      break;
    case 3:
      v5 = 0xD000000000000018;
      v3 = 0x8000000249E81BF0;
      break;
    case 4:
      v3 = 0x8000000249E81C10;
      v5 = 0xD000000000000023;
      break;
    case 5:
      v3 = 0x8000000249E81C40;
      v5 = 0xD00000000000001DLL;
      break;
    case 6:
      v5 = 0x6576697463416F6ELL;
      v3 = 0xEC0000006C6C6143;
      break;
    default:
      break;
  }

  v7 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x69766F72506C696ELL;
      v8 = 7497060;
      goto LABEL_13;
    case 2:
      v2 = 0x6F64756573506F6ELL;
      v8 = 7174510;
LABEL_13:
      v7 = v8 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
      break;
    case 3:
      v2 = 0xD000000000000018;
      v7 = 0x8000000249E81BF0;
      break;
    case 4:
      v7 = 0x8000000249E81C10;
      v2 = 0xD000000000000023;
      break;
    case 5:
      v7 = 0x8000000249E81C40;
      v2 = 0xD00000000000001DLL;
      break;
    case 6:
      v2 = 0x6576697463416F6ELL;
      v7 = 0xEC0000006C6C6143;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_5_11();
  }

  return v10 & 1;
}

uint64_t sub_249E69C0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3();
  v7 = v6;
  if (v5 == (a3)(a2) && v7 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_5_11();
  }

  return v10 & 1;
}

uint64_t sub_249E69C90(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = (a1 + 32);
    do
    {
      v5 = *v3++;
      v4 = v5;
      if ((v5 & ~v2) == 0)
      {
        v4 = 0;
      }

      v2 |= v4;
      --v1;
    }

    while (v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_249E69CE4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_249E7A6B8();
  v5 = *(v4 - 8);
  v6 = v5[8];
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5_7();
  v80 = v7;
  OUTLINED_FUNCTION_2_13();
  MEMORY[0x28223BE20](v8);
  v82 = &v72 - v9;
  OUTLINED_FUNCTION_2_13();
  MEMORY[0x28223BE20](v10);
  v81 = &v72 - v11;
  OUTLINED_FUNCTION_2_13();
  MEMORY[0x28223BE20](v12);
  v14 = &v72 - v13;
  v15 = type metadata accessor for XPCClient();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_5_7();
  v77 = v17;
  OUTLINED_FUNCTION_2_13();
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v72 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v72 - v22;
  sub_249DF76A8(v2, &v72 - v22);
  v24 = *(v15 + 24);
  v25 = *(v2 + v24);
  v78 = a1;
  v26 = *(a1 + v24);
  v74 = v25;
  v75 = v15;
  v76 = v26 | v25;
  *(v2 + v24) = v26 | v25;
  v84 = v5[2];
  v84(v14, v2, v4);
  v79 = v23;
  sub_249DF76A8(v23, v21);
  v27 = sub_249E7A698();
  v28 = sub_249E7AE28();
  v29 = os_log_type_enabled(v27, v28);
  v83 = v2;
  if (v29)
  {
    OUTLINED_FUNCTION_4();
    v30 = OUTLINED_FUNCTION_4_13();
    v73 = v5;
    v31 = v30;
    v85 = v30;
    *v2 = 136315138;
    v32 = sub_249E6A23C();
    v34 = v33;
    sub_249DF770C(v21);
    v35 = sub_249E3A958(v32, v34, &v85);

    *(v2 + 4) = v35;
    _os_log_impl(&dword_249DEE000, v27, v28, "Update options for Connection: %s", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v31);
    v36 = v31;
    v5 = v73;
    MEMORY[0x24C205870](v36, -1, -1);
    OUTLINED_FUNCTION_3_12();
  }

  else
  {

    sub_249DF770C(v21);
  }

  v37 = v5[1];
  v37(v14, v4);
  v38 = v81;
  OUTLINED_FUNCTION_6_8();
  v39();
  v40 = sub_249E7A698();
  v41 = sub_249E7AE28();
  if (OUTLINED_FUNCTION_9_8(v41))
  {
    OUTLINED_FUNCTION_4();
    v85 = OUTLINED_FUNCTION_4_13();
    *v2 = 136315138;
    v42 = sub_249E6A3E8(v74);
    v44 = sub_249E3A958(v42, v43, &v85);

    *(v2 + 4) = v44;
    OUTLINED_FUNCTION_19_4(&dword_249DEE000, v45, v46, "Old options: %s");
    OUTLINED_FUNCTION_64();
    OUTLINED_FUNCTION_3_12();

    v47 = v81;
  }

  else
  {

    v47 = v38;
  }

  v37(v47, v4);
  v48 = v82;
  v49 = v77;
  OUTLINED_FUNCTION_6_8();
  v50();
  sub_249DF76A8(v78, v49);
  v51 = sub_249E7A698();
  v52 = sub_249E7AE28();
  if (OUTLINED_FUNCTION_9_8(v52))
  {
    OUTLINED_FUNCTION_4();
    v85 = OUTLINED_FUNCTION_4_13();
    *v2 = 136315138;
    v53 = sub_249E6A3E8(*(v49 + *(v75 + 24)));
    v54 = v49;
    v55 = v53;
    v57 = v56;
    sub_249DF770C(v54);
    v58 = sub_249E3A958(v55, v57, &v85);

    *(v2 + 4) = v58;
    OUTLINED_FUNCTION_19_4(&dword_249DEE000, v59, v60, "New options: %s");
    OUTLINED_FUNCTION_64();
    OUTLINED_FUNCTION_3_12();

    v61 = v82;
  }

  else
  {

    sub_249DF770C(v49);
    v61 = v48;
  }

  v37(v61, v4);
  v62 = v80;
  OUTLINED_FUNCTION_6_8();
  v63();
  v64 = sub_249E7A698();
  v65 = sub_249E7AE28();
  if (OUTLINED_FUNCTION_9_8(v65))
  {
    OUTLINED_FUNCTION_4();
    v85 = OUTLINED_FUNCTION_4_13();
    *v2 = 136315138;
    v66 = sub_249E6A3E8(v76);
    v68 = sub_249E3A958(v66, v67, &v85);

    *(v2 + 4) = v68;
    OUTLINED_FUNCTION_19_4(&dword_249DEE000, v69, v70, "Updated options: %s");
    OUTLINED_FUNCTION_64();
    MEMORY[0x24C205870](v2, -1, -1);
  }

  v37(v62, v4);
  return sub_249DF770C(v79);
}

uint64_t sub_249E6A23C()
{
  v1 = v0;
  sub_249E7B128();

  strcpy(v15, "\nConnection = ");
  HIBYTE(v15[1]) = -18;
  v2 = type metadata accessor for XPCClient();
  v3 = *(v0 + *(v2 + 20));
  v4 = [v3 description];
  v5 = sub_249E7AAA8();
  v7 = v6;

  MEMORY[0x24C204750](v5, v7);

  MEMORY[0x24C204750](0x656C646E7542202CLL, 0xEC000000203A4449);
  v8 = [v3 bundleIdentifier];
  if (v8)
  {
    v9 = v8;
    v10 = sub_249E7AAA8();
    v12 = v11;
  }

  else
  {
    v12 = 0xE300000000000000;
    v10 = 7104878;
  }

  MEMORY[0x24C204750](v10, v12);

  MEMORY[0x24C204750](0x6E6F6974704F202CLL, 0xED00005B203D2073);
  v13 = sub_249E6A3E8(*(v1 + *(v2 + 24)));
  MEMORY[0x24C204750](v13);

  MEMORY[0x24C204750](93, 0xE100000000000000);
  return v15[0];
}

uint64_t sub_249E6A3E8(char a1)
{
  if ((a1 & 1) == 0)
  {
    v2 = MEMORY[0x277D84F90];
    if ((a1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v2 = sub_249E3A324(0, 1, 1, MEMORY[0x277D84F90]);
  v3 = *(v2 + 3);
  if (*(v2 + 2) >= v3 >> 1)
  {
    v2 = OUTLINED_FUNCTION_1_11(v3);
  }

  OUTLINED_FUNCTION_8_6("audioPowerUpdates");
  if ((a1 & 2) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = OUTLINED_FUNCTION_0_17();
    }

    v5 = *(v2 + 2);
    v4 = *(v2 + 3);
    if (v5 >= v4 >> 1)
    {
      v2 = OUTLINED_FUNCTION_1_11(v4);
    }

    *(v2 + 2) = v5 + 1;
    v6 = &v2[16 * v5];
    strcpy(v6 + 32, "deviceUpdates");
    *(v6 + 23) = -4864;
  }

LABEL_12:
  if ((a1 & 4) == 0)
  {
    if ((a1 & 8) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_20;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = OUTLINED_FUNCTION_0_17();
  }

  v7 = *(v2 + 3);
  if (*(v2 + 2) >= v7 >> 1)
  {
    v2 = OUTLINED_FUNCTION_1_11(v7);
  }

  OUTLINED_FUNCTION_8_6("deviceListUpdates");
  if ((a1 & 8) != 0)
  {
LABEL_20:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = OUTLINED_FUNCTION_0_17();
    }

    v9 = *(v2 + 2);
    v8 = *(v2 + 3);
    if (v9 >= v8 >> 1)
    {
      v2 = sub_249E3A324((v8 > 1), v9 + 1, 1, v2);
    }

    *(v2 + 2) = v9 + 1;
    v10 = &v2[16 * v9];
    strcpy(v10 + 32, "sessionUpdates");
    v10[47] = -18;
  }

LABEL_25:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF24298, &qword_249E80B28);
  sub_249E6AB9C();
  v11 = sub_249E7AA58();

  return v11;
}

uint64_t sub_249E6A60C@<X0>(uint64_t *a1@<X8>)
{
  result = j__OUTLINED_FUNCTION_15_5();
  *a1 = result;
  return result;
}

uint64_t sub_249E6A634@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_249E6A234(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_249E6A664@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_249E556D0(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_249E6A694@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_249E6A6C4(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_249E6A6D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_249E6A708(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_249E6A708(uint64_t a1)
{
  result = *v1 & a1;
  if (result)
  {
    *v1 &= ~a1;
  }

  return result;
}

uint64_t sub_249E6A72C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_249E6A760(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_249E6A760(uint64_t a1)
{
  v2 = *v1;
  *v1 |= a1;
  return v2 & a1;
}

uint64_t sub_249E6A7A0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_249E6A7D0(*a1, *v2);
  *a2 = result;
  return result;
}

void *sub_249E6A84C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_249E6A874@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_249E69C90(a1);
  *a2 = result;
  return result;
}

unint64_t sub_249E6A8A0()
{
  result = qword_27EF24278;
  if (!qword_27EF24278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF24278);
  }

  return result;
}

unint64_t sub_249E6A8F8()
{
  result = qword_27EF24280;
  if (!qword_27EF24280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF24280);
  }

  return result;
}

unint64_t sub_249E6A950()
{
  result = qword_27EF24288;
  if (!qword_27EF24288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF24288);
  }

  return result;
}

unint64_t sub_249E6A9A8()
{
  result = qword_27EF24290;
  if (!qword_27EF24290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF24290);
  }

  return result;
}

unint64_t sub_249E6AA00()
{
  result = qword_28130D410[0];
  if (!qword_28130D410[0])
  {
    type metadata accessor for XPCClient();
    result = swift_getWitnessTable();
    atomic_store(result, qword_28130D410);
  }

  return result;
}

uint64_t sub_249E6AA58(uint64_t a1, uint64_t a2)
{
  sub_249DF691C(0, &qword_28130D150, 0x277D82BB8);
  v4 = *(type metadata accessor for XPCClient() + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  return sub_249E7AF78() & 1;
}

uint64_t sub_249E6AAFC()
{
  sub_249E7B408();
  v1 = *(v0 + *(type metadata accessor for XPCClient() + 20));
  sub_249E7AF88();
  return sub_249E7B438();
}

uint64_t sub_249E6AB54(uint64_t a1, uint64_t a2)
{
  sub_249E7B408();
  v4 = *(v2 + *(a2 + 20));
  sub_249E7AF88();
  return sub_249E7B438();
}

unint64_t sub_249E6AB9C()
{
  result = qword_28130D298;
  if (!qword_28130D298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF24298, &qword_249E80B28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28130D298);
  }

  return result;
}

char *OUTLINED_FUNCTION_0_17()
{
  v2 = *(v0 + 16) + 1;

  return sub_249E3A324(0, v2, 1, v0);
}

char *OUTLINED_FUNCTION_1_11@<X0>(unint64_t a1@<X8>)
{

  return sub_249E3A324((a1 > 1), v2, 1, v1);
}

void OUTLINED_FUNCTION_3_12()
{
  v2 = *(v0 - 104);

  JUMPOUT(0x24C205870);
}

uint64_t OUTLINED_FUNCTION_4_13()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_5_11()
{

  return sub_249E7B318();
}

void OUTLINED_FUNCTION_8_6(uint64_t a1@<X8>)
{
  *(v1 + 16) = v2;
  v5 = v1 + 16 * v4;
  *(v5 + 32) = v3;
  *(v5 + 40) = (a1 - 32) | 0x8000000000000000;
}

BOOL OUTLINED_FUNCTION_9_8(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

char *OneshotTimer.init(timeInterval:queue:identifier:label:timerFiredHandler:)(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void, void, void), uint64_t a5, uint64_t a6, double a7)
{
  v8 = v7;
  v111 = a6;
  v104 = a5;
  v96 = a4;
  v95 = a3;
  v112 = a1;
  v113 = a2;
  v10 = sub_249E7A928();
  v11 = OUTLINED_FUNCTION_3(v10);
  v108 = v12;
  v109 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_14(v16 - v15);
  v107 = sub_249E7A958();
  v17 = OUTLINED_FUNCTION_3(v107);
  v106 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_14(v22 - v21);
  v110 = sub_249E7A918();
  v23 = OUTLINED_FUNCTION_3(v110);
  v98 = v24;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_14(v28 - v27);
  v94 = sub_249E7A988();
  v29 = OUTLINED_FUNCTION_3(v94);
  v117 = v30;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_5_7();
  OUTLINED_FUNCTION_5_12();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_5_12();
  MEMORY[0x28223BE20](v34);
  v116 = &v93 - v35;
  v36 = sub_249E7A6B8();
  v114 = OUTLINED_FUNCTION_3(v36);
  v115 = v37;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v114);
  OUTLINED_FUNCTION_5_7();
  OUTLINED_FUNCTION_5_12();
  MEMORY[0x28223BE20](v40);
  v42 = &v93 - v41;
  v43 = sub_249E7AEA8();
  v44 = OUTLINED_FUNCTION_3(v43);
  v46 = v45;
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_1_0();
  v51 = v50 - v49;
  sub_249E6B65C();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_249E6C814(&qword_27EF242A8, MEMORY[0x277D85278]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF242B0, &qword_249E80B70);
  sub_249E550C0(&unk_27EF242B8, &qword_27EF242B0, &qword_249E80B70);
  sub_249E7B018();
  v52 = sub_249E7AEB8();
  (*(v46 + 8))(v51, v43);
  *&v8[OBJC_IVAR___DIOneshotTimer_timer] = v52;
  v53 = &v8[OBJC_IVAR___DIOneshotTimer_label];
  v54 = v96;
  *v53 = v95;
  *(v53 + 1) = v54;
  v55 = OBJC_IVAR___DIOneshotTimer_identifier;
  v56 = sub_249E7A628();
  v102 = *(v56 - 8);
  v57 = *(v102 + 16);
  v103 = v56;
  v57(&v8[v55], v113);
  *&v8[OBJC_IVAR___DIOneshotTimer_timeInterval] = a7;

  sub_249E7A6A8();
  (*(v115 + 32))(&v8[OBJC_IVAR___DIOneshotTimer_logger], v42, v114);
  sub_249E7A968();
  v58 = v93;
  sub_249E7A9A8();
  v59 = v117;
  v60 = v94;
  (*(v117 + 32))(&v8[OBJC_IVAR___DIOneshotTimer_deadline], v58, v94);
  v61 = type metadata accessor for OneshotTimer();
  v119.receiver = v8;
  v119.super_class = v61;
  v62 = objc_msgSendSuper2(&v119, sel_init);
  v63 = OBJC_IVAR___DIOneshotTimer_timer;
  v64 = *&v62[OBJC_IVAR___DIOneshotTimer_timer];
  ObjectType = swift_getObjectType();
  v66 = v59;
  v96 = *(v59 + 16);
  v96(v58, &v62[OBJC_IVAR___DIOneshotTimer_deadline], v60);
  v67 = v97;
  sub_249E6BD14(v97);
  v68 = v62;
  swift_unknownObjectRetain();
  MEMORY[0x24C204B50](v58, v67, ObjectType, INFINITY);
  swift_unknownObjectRelease();
  (*(v98 + 8))(v67, v110);
  v69 = *(v66 + 8);
  v117 = v66 + 8;
  v110 = v69;
  v69(v58, v60);
  v98 = v63;
  v70 = *&v62[v63];
  swift_getObjectType();
  v71 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v72 = swift_allocObject();
  v73 = v104;
  v72[2] = v71;
  v72[3] = v73;
  v72[4] = v111;
  aBlock[4] = sub_249E6BF30;
  aBlock[5] = v72;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_249E52140;
  aBlock[3] = &block_descriptor_9;
  v74 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  v75 = v101;
  sub_249E7A938();
  v76 = v105;
  sub_249E6BF54();
  v77 = v100;
  sub_249E7AED8();
  _Block_release(v74);
  swift_unknownObjectRelease();
  (*(v108 + 8))(v76, v109);
  (*(v106 + 8))(v75, v107);
  v78 = v60;

  v79 = v99;
  (*(v115 + 16))(v99, &v68[OBJC_IVAR___DIOneshotTimer_logger], v114);
  v96(v77, v116, v60);
  v80 = v79;
  v81 = sub_249E7A698();
  v82 = sub_249E7AE28();

  if (os_log_type_enabled(v81, v82))
  {
    v83 = swift_slowAlloc();
    v84 = OUTLINED_FUNCTION_6();
    *v83 = 138412546;
    *(v83 + 4) = v68;
    *v84 = v68;
    *(v83 + 12) = 2048;
    v85 = v68;
    v86 = sub_249E7A978();
    v87 = OUTLINED_FUNCTION_7_8();
    v88(v87);
    *(v83 + 14) = v86;
    _os_log_impl(&dword_249DEE000, v81, v82, "Timer created: %@, Now = %llu", v83, 0x16u);
    sub_249DF4A68(v84);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_1();
  }

  else
  {
    v89 = OUTLINED_FUNCTION_7_8();
    v90(v89);
  }

  (*(v115 + 8))(v80, v114);
  v91 = *&v62[v98];
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_249E7AEF8();

  swift_unknownObjectRelease();
  (*(v102 + 8))(v113, v103);
  v110(v116, v78);
  return v68;
}