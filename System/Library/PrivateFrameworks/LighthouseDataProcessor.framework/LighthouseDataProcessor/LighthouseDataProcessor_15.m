size_t sub_20E2255B4(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size_0(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_20E225790(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868A98, &qword_20E33C070);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size_0(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

uint64_t type metadata accessor for IFTranscriptSELFMapper()
{
  result = qword_280E0FA98;
  if (!qword_280E0FA98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20E2258A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20E225910(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20E225978(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

int *sub_20E2259D8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v167 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863F30, &qword_20E325D90);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v171 = (&v164 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = MEMORY[0x28223BE20](v5);
  v173 = (&v164 - v8);
  MEMORY[0x28223BE20](v7);
  v174 = (&v164 - v9);
  v10 = sub_20E322010();
  v11 = *(v10 - 1);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v168 = &v164 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v169 = &v164 - v16;
  MEMORY[0x28223BE20](v15);
  v170 = &v164 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC0, &unk_20E325F70);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v189 = (&v164 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = MEMORY[0x28223BE20](v20);
  v199[0] = &v164 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v201 = &v164 - v25;
  MEMORY[0x28223BE20](v24);
  v206 = &v164 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27 - 8);
  v178 = &v164 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v198 = &v164 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v164 - v34;
  MEMORY[0x28223BE20](v33);
  v205 = &v164 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688C0, &qword_20E33B870);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37 - 8);
  v40 = &v164 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868778, &unk_20E33C000);
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41 - 8);
  v44 = (&v164 - v43);
  v217 = sub_20E322150();
  v45 = *(v217 - 8);
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v217);
  v209 = (&v164 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
  v218 = type metadata accessor for TranscriptProtoEvent(0);
  v175 = *(v218 - 8);
  v48 = *(v175 + 64);
  v49 = MEMORY[0x28223BE20](v218);
  v207 = &v164 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49);
  v212 = &v164 - v51;
  v195 = type metadata accessor for RequestData(0);
  v181 = *(v195 - 8);
  v52 = *(v181 + 64);
  v53 = MEMORY[0x28223BE20](v195);
  v197 = &v164 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = MEMORY[0x28223BE20](v53);
  v57 = &v164 - v56;
  v58 = MEMORY[0x28223BE20](v55);
  v60 = &v164 - v59;
  MEMORY[0x28223BE20](v58);
  v180 = &v164 - v61;
  v165 = type metadata accessor for SessionData(0);
  v62 = *(v165 + 32);
  v193 = a1;
  v63 = *(a1 + v62);
  v64 = *(v63 + 64);
  v184 = v63 + 64;
  v65 = 1 << *(v63 + 32);
  v66 = -1;
  if (v65 < 64)
  {
    v66 = ~(-1 << v65);
  }

  v183 = (v65 + 63) >> 6;
  v211 = (v45 + 48);
  v204 = (v45 + 32);
  v186 = (v11 + 48);
  v177 = (v11 + 32);
  v166 = v11;
  v176 = (v11 + 8);
  v203 = (v45 + 8);
  v210 = (v45 + 56);
  EnumCaseMultiPayload = v44;
  v68 = v66 & v64;
  v182 = v63;

  v194 = 0;
  v185 = 0;
  v70 = 0;
  v71 = 0.0;
  *&v72 = 136315138;
  v172 = v72;
  *&v72 = 136315394;
  v187 = v72;
  v73 = 0.0;
  v192 = v10;
  v200 = v35;
  v74 = &unk_20E325F70;
  v179 = v57;
  v202 = v60;
  v216 = EnumCaseMultiPayload;
  v188 = v40;
LABEL_5:
  if (v68)
  {
    v75 = v195;
    goto LABEL_12;
  }

  v75 = v195;
  while (1)
  {
    v76 = v70 + 1;
    if (__OFADD__(v70, 1))
    {
      break;
    }

    if (v76 >= v183)
    {

      if (v73 <= 0.0)
      {
        v156 = 0.0;
        v155 = 0.0;
        v10 = v167;
        EnumCaseMultiPayload = v166;
        v69 = v192;
        if (v71 <= 0.0)
        {
          goto LABEL_70;
        }

        if (qword_27C863198 != -1)
        {
          v163 = v192;
          swift_once();
          v69 = v163;
        }

        goto LABEL_69;
      }

      v10 = v167;
      EnumCaseMultiPayload = v166;
      v69 = v192;
      if (qword_27C863198 != -1)
      {
        goto LABEL_86;
      }

      goto LABEL_64;
    }

    v68 = *(v184 + 8 * v76);
    ++v70;
    if (v68)
    {
      v70 = v76;
LABEL_12:
      v191 = v68;
      v190 = v70;
      v77 = v180;
      sub_20E2281C8(*(v182 + 56) + *(v181 + 72) * (__clz(__rbit64(v68)) | (v70 << 6)), v180, type metadata accessor for RequestData);
      sub_20E228230(v77, v60, type metadata accessor for RequestData);
      if (qword_27C863978 != -1)
      {
        swift_once();
      }

      v78 = sub_20E3227C0();
      v79 = __swift_project_value_buffer(v78, qword_27C8CC290);
      sub_20E2281C8(v60, v57, type metadata accessor for RequestData);
      v199[1] = v79;
      EnumCaseMultiPayload = sub_20E3227B0();
      v80 = sub_20E322A40();
      if (os_log_type_enabled(EnumCaseMultiPayload, v80))
      {
        v81 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v219 = v10;
        *v81 = v172;
        v82 = &v57[*(v75 + 20)];
        v83 = v57;
        v85 = *v82;
        v84 = v82[1];

        v86 = v83;
        v60 = v202;
        sub_20E228298(v86, type metadata accessor for RequestData);
        v87 = sub_20E31B6C4(v85, v84, &v219);

        *(v81 + 4) = v87;
        _os_log_impl(&dword_20E031000, EnumCaseMultiPayload, v80, "Calculating span latency for request: %s", v81, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v10);
        MEMORY[0x20F32CA80](v10, -1, -1);
        MEMORY[0x20F32CA80](v81, -1, -1);
      }

      else
      {

        sub_20E228298(v57, type metadata accessor for RequestData);
      }

      v88 = *&v60[*(v75 + 24)];
      v89 = *(v88 + 16);
      if (v89)
      {
        v90 = v88 + ((*(v175 + 80) + 32) & ~*(v175 + 80));
        v91 = *(v175 + 72);
        v10 = &qword_27C868778;
        v92 = v212;
        v208 = v91;
        do
        {
          sub_20E2281C8(v90, v92, type metadata accessor for TranscriptProtoEvent);
          sub_20E0486F4(v92 + *(v218 + 52), v40, &qword_27C8688C0, &qword_20E33B870);
          v93 = type metadata accessor for TranscriptProtoTimepoint(0);
          if ((*(*(v93 - 8) + 48))(v40, 1, v93) == 1)
          {
            sub_20E228298(v92, type metadata accessor for TranscriptProtoEvent);
            sub_20E04875C(v40, &qword_27C8688C0, &qword_20E33B870);
            EnumCaseMultiPayload = v216;
            (*v210)(v216, 1, 1, v217);
          }

          else
          {
            v215 = v89;
            v94 = &v40[*(v93 + 28)];
            EnumCaseMultiPayload = v216;
            v95 = v10;
            sub_20E0486F4(v94, v216, v10, &unk_20E33C000);
            v96 = v40;
            sub_20E228298(v40, type metadata accessor for TranscriptProtoTimepoint);
            v97 = v217;
            if ((*v211)(EnumCaseMultiPayload, 1, v217) != 1)
            {
              (*v204)(v209, EnumCaseMultiPayload, v97);
              v99 = *(v218 + 44);
              v92 = v212;
              v100 = v206;
              v10 = &qword_27C863FC0;
              sub_20E0486F4(v212 + v99, v206, &qword_27C863FC0, v74);
              v101 = type metadata accessor for TranscriptProtoPayload(0);
              v102 = *(v101 - 8);
              v103 = *(v102 + 48);
              v213 = v102 + 48;
              v214 = v103;
              if (v103(v100, 1, v101) == 1)
              {
                sub_20E04875C(v100, &qword_27C863FC0, v74);
                v104 = type metadata accessor for TranscriptProtoPayloadEnum(0);
                v105 = v205;
                (*(*(v104 - 8) + 56))(v205, 1, 1, v104);
                goto LABEL_28;
              }

              v105 = v205;
              sub_20E0486F4(v100, v205, &qword_27C863FC8, &unk_20E33C1D0);
              sub_20E228298(v100, type metadata accessor for TranscriptProtoPayload);
              v106 = type metadata accessor for TranscriptProtoPayloadEnum(0);
              if ((*(*(v106 - 8) + 48))(v105, 1, v106) == 1)
              {
LABEL_28:
                sub_20E04875C(v105, &qword_27C863FC8, &unk_20E33C1D0);
                v89 = v215;
              }

              else
              {
                EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
                sub_20E228298(v105, type metadata accessor for TranscriptProtoPayloadEnum);
                v89 = v215;
                if (EnumCaseMultiPayload == 2)
                {
                  if (__OFADD__(v185, 1))
                  {
                    goto LABEL_78;
                  }

                  ++v185;
                  EnumCaseMultiPayload = v174;
                  sub_20E22736C(v92, v193, v174);
                  v132 = v192;
                  if ((*v186)(EnumCaseMultiPayload, 1, v192) == 1)
                  {
                    goto LABEL_52;
                  }

                  v133 = v170;
                  (*v177)(v170, EnumCaseMultiPayload, v132);
                  EnumCaseMultiPayload = v209;
                  sub_20E322130();
                  v135 = v134;
                  sub_20E321F20();
                  v137 = v136;
                  (*v176)(v133, v132);
                  (*v203)(EnumCaseMultiPayload, v217);
                  sub_20E228298(v92, type metadata accessor for TranscriptProtoEvent);
                  v73 = v73 + v135 - v137;
LABEL_61:
                  v91 = v208;
                  v10 = &qword_27C868778;
                  goto LABEL_21;
                }
              }

              v107 = v201;
              sub_20E0486F4(v92 + v99, v201, &qword_27C863FC0, v74);
              if (v214(v107, 1, v101) == 1)
              {
                v108 = v74;
                sub_20E04875C(v107, &qword_27C863FC0, v74);
                v109 = type metadata accessor for TranscriptProtoPayloadEnum(0);
                v110 = v200;
                (*(*(v109 - 8) + 56))(v200, 1, 1, v109);
                goto LABEL_32;
              }

              v108 = v74;
              v110 = v200;
              sub_20E0486F4(v107, v200, &qword_27C863FC8, &unk_20E33C1D0);
              sub_20E228298(v107, type metadata accessor for TranscriptProtoPayload);
              v111 = type metadata accessor for TranscriptProtoPayloadEnum(0);
              if ((*(*(v111 - 8) + 48))(v110, 1, v111) == 1)
              {
LABEL_32:
                sub_20E04875C(v110, &qword_27C863FC8, &unk_20E33C1D0);
              }

              else
              {
                EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
                sub_20E228298(v110, type metadata accessor for TranscriptProtoPayloadEnum);
                if (EnumCaseMultiPayload == 3)
                {
                  if (__OFADD__(v194, 1))
                  {
                    goto LABEL_79;
                  }

                  v74 = v108;
                  ++v194;
                  EnumCaseMultiPayload = v173;
                  sub_20E22736C(v92, v193, v173);
                  v138 = v192;
                  if ((*v186)(EnumCaseMultiPayload, 1, v192) == 1)
                  {
                    goto LABEL_52;
                  }

                  v139 = *v177;
                  v140 = v199;
                  goto LABEL_60;
                }
              }

              v112 = v199[0];
              v74 = v108;
              sub_20E0486F4(v92 + v99, v199[0], &qword_27C863FC0, v108);
              if (v214(v112, 1, v101) == 1)
              {
                sub_20E04875C(v112, &qword_27C863FC0, v108);
                v113 = type metadata accessor for TranscriptProtoPayloadEnum(0);
                v114 = v198;
                (*(*(v113 - 8) + 56))(v198, 1, 1, v113);
                goto LABEL_36;
              }

              v114 = v198;
              sub_20E0486F4(v112, v198, &qword_27C863FC8, &unk_20E33C1D0);
              sub_20E228298(v112, type metadata accessor for TranscriptProtoPayload);
              v115 = type metadata accessor for TranscriptProtoPayloadEnum(0);
              if ((*(*(v115 - 8) + 48))(v114, 1, v115) == 1)
              {
LABEL_36:
                sub_20E04875C(v114, &qword_27C863FC8, &unk_20E33C1D0);
              }

              else
              {
                EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
                sub_20E228298(v114, type metadata accessor for TranscriptProtoPayloadEnum);
                if (EnumCaseMultiPayload == 4)
                {
                  if (__OFADD__(v194, 1))
                  {
                    goto LABEL_80;
                  }

                  ++v194;
                  EnumCaseMultiPayload = v171;
                  sub_20E22736C(v92, v193, v171);
                  v138 = v192;
                  if ((*v186)(EnumCaseMultiPayload, 1, v192) == 1)
                  {
LABEL_52:
                    (*v203)(v209, v217);
                    sub_20E228298(v92, type metadata accessor for TranscriptProtoEvent);
                    sub_20E04875C(EnumCaseMultiPayload, &qword_27C863F30, &qword_20E325D90);
                    goto LABEL_61;
                  }

                  v139 = *v177;
                  v140 = &v198;
LABEL_60:
                  v150 = *(v140 - 32);
                  v139(v150, EnumCaseMultiPayload, v138);
                  EnumCaseMultiPayload = v209;
                  sub_20E322130();
                  v152 = v151;
                  sub_20E321F20();
                  v154 = v153;
                  (*v176)(v150, v138);
                  (*v203)(EnumCaseMultiPayload, v217);
                  sub_20E228298(v92, type metadata accessor for TranscriptProtoEvent);
                  v71 = v71 + v152 - v154;
                  goto LABEL_61;
                }
              }

              v116 = v197;
              sub_20E2281C8(v202, v197, type metadata accessor for RequestData);
              v117 = v207;
              sub_20E2281C8(v92, v207, type metadata accessor for TranscriptProtoEvent);
              v118 = sub_20E3227B0();
              v119 = sub_20E322A40();
              if (os_log_type_enabled(v118, v119))
              {
                LODWORD(v215) = v119;
                v120 = v116;
                v121 = swift_slowAlloc();
                v196 = swift_slowAlloc();
                v219 = v196;
                *v121 = v187;
                v122 = (v116 + *(v195 + 20));
                v123 = *v122;
                v124 = v122[1];

                sub_20E228298(v120, type metadata accessor for RequestData);
                v125 = sub_20E31B6C4(v123, v124, &v219);

                *(v121 + 4) = v125;
                *(v121 + 12) = 2080;
                v126 = v117 + *(v218 + 44);
                EnumCaseMultiPayload = v189;
                sub_20E0486F4(v126, v189, &qword_27C863FC0, &unk_20E325F70);
                if (v214(EnumCaseMultiPayload, 1, v101) == 1)
                {
                  v127 = EnumCaseMultiPayload;
                  v128 = &qword_27C863FC0;
                  v129 = &unk_20E325F70;
                  goto LABEL_55;
                }

                v141 = v178;
                sub_20E0486F4(EnumCaseMultiPayload, v178, &qword_27C863FC8, &unk_20E33C1D0);
                sub_20E228298(EnumCaseMultiPayload, type metadata accessor for TranscriptProtoPayload);
                v142 = type metadata accessor for TranscriptProtoPayloadEnum(0);
                if ((*(*(v142 - 8) + 48))(v141, 1, v142) == 1)
                {
                  v127 = v141;
                  v128 = &qword_27C863FC8;
                  v129 = &unk_20E33C1D0;
LABEL_55:
                  sub_20E04875C(v127, v128, v129);
                  v143 = 0xE300000000000000;
                  v144 = 7104878;
                }

                else
                {
                  v145 = TranscriptProtoPayloadEnum.eventTypeString.getter();
                  v146 = v141;
                  v144 = v145;
                  v143 = v147;
                  sub_20E228298(v146, type metadata accessor for TranscriptProtoPayloadEnum);
                }

                v40 = v188;
                sub_20E228298(v207, type metadata accessor for TranscriptProtoEvent);
                v148 = sub_20E31B6C4(v144, v143, &v219);

                *(v121 + 14) = v148;
                _os_log_impl(&dword_20E031000, v118, v215, "Latency calculation does not include %s, event: %s", v121, 0x16u);
                v149 = v196;
                swift_arrayDestroy();
                MEMORY[0x20F32CA80](v149, -1, -1);
                MEMORY[0x20F32CA80](v121, -1, -1);

                (*v203)(v209, v217);
                v131 = v92;
              }

              else
              {

                v130 = v117;
                EnumCaseMultiPayload = type metadata accessor for TranscriptProtoEvent;
                sub_20E228298(v130, type metadata accessor for TranscriptProtoEvent);
                sub_20E228298(v116, type metadata accessor for RequestData);
                (*v203)(v209, v217);
                v131 = v92;
              }

              sub_20E228298(v131, type metadata accessor for TranscriptProtoEvent);
              v74 = &unk_20E325F70;
              v10 = &qword_27C868778;
              v91 = v208;
              goto LABEL_21;
            }

            v98 = v212;
            sub_20E228298(v212, type metadata accessor for TranscriptProtoEvent);
            v10 = v95;
            v92 = v98;
            v40 = v96;
            v89 = v215;
          }

          sub_20E04875C(EnumCaseMultiPayload, v10, &unk_20E33C000);
LABEL_21:
          v90 += v91;
          --v89;
        }

        while (v89);
      }

      v68 = (v191 - 1) & v191;
      v60 = v202;
      sub_20E228298(v202, type metadata accessor for RequestData);
      v57 = v179;
      v70 = v190;
      goto LABEL_5;
    }
  }

  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
  do
  {
    __break(1u);
LABEL_86:
    v162 = v69;
    swift_once();
    v69 = v162;
LABEL_64:
    v155 = v73 * *&qword_27C8CC288 / v185;
    v156 = 0.0;
    if (v71 > 0.0)
    {
LABEL_69:
      v156 = v71 * *&qword_27C8CC288 / v194;
    }

LABEL_70:
    v157 = v156 + v155;
    isa = EnumCaseMultiPayload[2].isa;
    EnumCaseMultiPayload += 2;
    isa(v10, v193, v69);
    if (v157 <= -1.0)
    {
      goto LABEL_81;
    }

    if (v157 >= 1.84467441e19)
    {
      goto LABEL_82;
    }

    if ((*&v156 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v157 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_83;
    }

    if (v156 <= -1.0)
    {
      goto LABEL_84;
    }
  }

  while (v156 >= 1.84467441e19);
  v159 = *(v193 + *(v165 + 20) + 1);
  result = type metadata accessor for PerfMetricsDefinitions();
  v161 = (v10 + result[5]);
  *v161 = 0x6E776F6E6B6E75;
  v161[1] = 0xE700000000000000;
  *(v10 + result[6]) = v159;
  *(v10 + result[7]) = v157;
  *(v10 + result[8]) = v156;
  *(v10 + result[9]) = 0;
  return result;
}

uint64_t sub_20E22736C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v121 = a2;
  v123 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC0, &unk_20E325F70);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v111 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v119 = &v111 - v10;
  MEMORY[0x28223BE20](v9);
  v115 = &v111 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v114 = &v111 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v113 = &v111 - v17;
  MEMORY[0x28223BE20](v16);
  v112 = &v111 - v18;
  v19 = type metadata accessor for TranscriptProtoEvent(0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v111 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21);
  v120 = &v111 - v25;
  MEMORY[0x28223BE20](v24);
  v116 = &v111 - v26;
  v118 = type metadata accessor for ParticipantInfo(0);
  v27 = *(v118 - 8);
  v28 = *(v27 + 64);
  v29 = MEMORY[0x28223BE20](v118);
  v117 = (&v111 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = MEMORY[0x28223BE20](v29);
  v33 = &v111 - v32;
  MEMORY[0x28223BE20](v31);
  v35 = &v111 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688A0, &qword_20E33B858);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36 - 8);
  v39 = (&v111 - v38);
  v122 = v19;
  sub_20E0486F4(a1 + *(v19 + 60), &v111 - v38, &qword_27C8688A0, &qword_20E33B858);
  v40 = type metadata accessor for TranscriptProtoSpanID(0);
  if ((*(*(v40 - 8) + 48))(v39, 1, v40) == 1)
  {
    sub_20E04875C(v39, &qword_27C8688A0, &qword_20E33B858);
    if (qword_280E12B88 != -1)
    {
      swift_once();
    }

    v41 = sub_20E3227C0();
    __swift_project_value_buffer(v41, qword_280E12C48);
    sub_20E2281C8(a1, v23, type metadata accessor for TranscriptProtoEvent);
    v42 = sub_20E3227B0();
    v43 = sub_20E322A40();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v124 = v45;
      *v44 = 136315138;
      sub_20E0486F4(&v23[*(v122 + 44)], v8, &qword_27C863FC0, &unk_20E325F70);
      v46 = type metadata accessor for TranscriptProtoPayload(0);
      if ((*(*(v46 - 8) + 48))(v8, 1, v46) == 1)
      {
        v47 = 7104878;
        v48 = &qword_27C863FC0;
        v49 = &unk_20E325F70;
        v50 = v8;
      }

      else
      {
        v86 = v114;
        sub_20E0486F4(v8, v114, &qword_27C863FC8, &unk_20E33C1D0);
        sub_20E228298(v8, type metadata accessor for TranscriptProtoPayload);
        v87 = type metadata accessor for TranscriptProtoPayloadEnum(0);
        if ((*(*(v87 - 8) + 48))(v86, 1, v87) != 1)
        {
          v47 = TranscriptProtoPayloadEnum.eventTypeString.getter();
          v88 = v92;
          sub_20E228298(v86, type metadata accessor for TranscriptProtoPayloadEnum);
          goto LABEL_30;
        }

        v47 = 7104878;
        v48 = &qword_27C863FC8;
        v49 = &unk_20E33C1D0;
        v50 = v86;
      }

      sub_20E04875C(v50, v48, v49);
      v88 = 0xE300000000000000;
LABEL_30:
      sub_20E228298(v23, type metadata accessor for TranscriptProtoEvent);
      v93 = sub_20E31B6C4(v47, v88, &v124);

      *(v44 + 4) = v93;
      _os_log_impl(&dword_20E031000, v42, v43, "Event: %s has invalid posting span, unable to get InitiatingSpanEventTime", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v45);
      MEMORY[0x20F32CA80](v45, -1, -1);
      MEMORY[0x20F32CA80](v44, -1, -1);

      goto LABEL_33;
    }

    v85 = v23;
LABEL_21:
    sub_20E228298(v85, type metadata accessor for TranscriptProtoEvent);
LABEL_33:
    v96 = sub_20E322010();
    return (*(*(v96 - 8) + 56))(v123, 1, 1, v96);
  }

  v51 = *v39;
  sub_20E228298(v39, type metadata accessor for TranscriptProtoSpanID);
  v52 = v121 + *(type metadata accessor for SessionData(0) + 20);
  v53 = *(v52 + *(type metadata accessor for SessionSignature(0) + 32));
  if (!*(v53 + 16) || (v54 = sub_20E1ACB90(v51), (v55 & 1) == 0))
  {
    if (qword_280E12B88 != -1)
    {
      swift_once();
    }

    v72 = sub_20E3227C0();
    __swift_project_value_buffer(v72, qword_280E12C48);
    v73 = v120;
    sub_20E2281C8(a1, v120, type metadata accessor for TranscriptProtoEvent);
    v74 = sub_20E3227B0();
    v75 = sub_20E322A50();
    v76 = os_log_type_enabled(v74, v75);
    v77 = v119;
    if (!v76)
    {

      v85 = v73;
      goto LABEL_21;
    }

    v78 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    v124 = v79;
    *v78 = 136315138;
    sub_20E0486F4(v73 + *(v122 + 44), v77, &qword_27C863FC0, &unk_20E325F70);
    v80 = type metadata accessor for TranscriptProtoPayload(0);
    if ((*(*(v80 - 8) + 48))(v77, 1, v80) == 1)
    {
      v81 = 7104878;
      v82 = &qword_27C863FC0;
      v83 = &unk_20E325F70;
      v84 = v77;
    }

    else
    {
      v89 = v113;
      sub_20E0486F4(v77, v113, &qword_27C863FC8, &unk_20E33C1D0);
      sub_20E228298(v77, type metadata accessor for TranscriptProtoPayload);
      v90 = type metadata accessor for TranscriptProtoPayloadEnum(0);
      if ((*(*(v90 - 8) + 48))(v89, 1, v90) != 1)
      {
        v81 = TranscriptProtoPayloadEnum.eventTypeString.getter();
        v91 = v94;
        sub_20E228298(v89, type metadata accessor for TranscriptProtoPayloadEnum);
        goto LABEL_32;
      }

      v81 = 7104878;
      v82 = &qword_27C863FC8;
      v83 = &unk_20E33C1D0;
      v84 = v89;
    }

    sub_20E04875C(v84, v82, v83);
    v91 = 0xE300000000000000;
LABEL_32:
    sub_20E228298(v73, type metadata accessor for TranscriptProtoEvent);
    v95 = sub_20E31B6C4(v81, v91, &v124);

    *(v78 + 4) = v95;
    _os_log_impl(&dword_20E031000, v74, v75, "Event: %s has unmatched initiating span, unable to get InitiatingSpanEventTime", v78, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v79);
    MEMORY[0x20F32CA80](v79, -1, -1);
    MEMORY[0x20F32CA80](v78, -1, -1);

    goto LABEL_33;
  }

  sub_20E2281C8(*(v53 + 56) + *(v27 + 72) * v54, v33, type metadata accessor for ParticipantInfo);
  v56 = v35;
  sub_20E228230(v33, v35, type metadata accessor for ParticipantInfo);
  if (qword_280E12B88 != -1)
  {
    swift_once();
  }

  v57 = sub_20E3227C0();
  __swift_project_value_buffer(v57, qword_280E12C48);
  v58 = a1;
  v59 = v116;
  sub_20E2281C8(v58, v116, type metadata accessor for TranscriptProtoEvent);
  v60 = v117;
  sub_20E2281C8(v35, v117, type metadata accessor for ParticipantInfo);
  v61 = sub_20E3227B0();
  v62 = sub_20E322A40();
  v63 = os_log_type_enabled(v61, v62);
  v64 = v115;
  if (v63)
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v124 = v66;
    *v65 = 136315394;
    sub_20E0486F4(v59 + *(v122 + 44), v64, &qword_27C863FC0, &unk_20E325F70);
    v67 = type metadata accessor for TranscriptProtoPayload(0);
    if ((*(*(v67 - 8) + 48))(v64, 1, v67) == 1)
    {
      v68 = 7104878;
      v69 = &qword_27C863FC0;
      v70 = &unk_20E325F70;
      v71 = v64;
    }

    else
    {
      v98 = v112;
      sub_20E0486F4(v64, v112, &qword_27C863FC8, &unk_20E33C1D0);
      sub_20E228298(v64, type metadata accessor for TranscriptProtoPayload);
      v99 = type metadata accessor for TranscriptProtoPayloadEnum(0);
      if ((*(*(v99 - 8) + 48))(v98, 1, v99) != 1)
      {
        v68 = TranscriptProtoPayloadEnum.eventTypeString.getter();
        v100 = v101;
        sub_20E228298(v98, type metadata accessor for TranscriptProtoPayloadEnum);
        goto LABEL_38;
      }

      v68 = 7104878;
      v69 = &qword_27C863FC8;
      v70 = &unk_20E33C1D0;
      v71 = v98;
    }

    sub_20E04875C(v71, v69, v70);
    v100 = 0xE300000000000000;
LABEL_38:
    sub_20E228298(v59, type metadata accessor for TranscriptProtoEvent);
    v102 = sub_20E31B6C4(v68, v100, &v124);

    *(v65 + 4) = v102;
    *(v65 + 12) = 2080;
    if (v60[1])
    {
      v103 = *v60;
      v104 = v60[1];
    }

    else
    {
      v104 = 0xE700000000000000;
      v103 = 0x6E776F6E6B6E55;
    }

    sub_20E228298(v60, type metadata accessor for ParticipantInfo);
    v105 = sub_20E31B6C4(v103, v104, &v124);

    *(v65 + 14) = v105;
    _os_log_impl(&dword_20E031000, v61, v62, "Event: %s has initiating span: %s", v65, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F32CA80](v66, -1, -1);
    MEMORY[0x20F32CA80](v65, -1, -1);

    goto LABEL_42;
  }

  sub_20E228298(v60, type metadata accessor for ParticipantInfo);
  sub_20E228298(v59, type metadata accessor for TranscriptProtoEvent);
LABEL_42:
  v106 = *(v118 + 20);
  v107 = sub_20E322010();
  v108 = *(v107 - 8);
  v109 = v56 + v106;
  v110 = v123;
  (*(v108 + 16))(v123, v109, v107);
  sub_20E228298(v56, type metadata accessor for ParticipantInfo);
  return (*(v108 + 56))(v110, 0, 1, v107);
}

uint64_t sub_20E2281C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20E228230(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20E228298(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_20E2282F8(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688A0, &qword_20E33B858);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v89 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688B0, &unk_20E33C1C0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = (&v89 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863A90, &unk_20E33C020);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v95 = &v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v94 = &v89 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v89 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v89 - v19;
  v21 = sub_20E322060();
  v96 = *(v21 - 8);
  v22 = *(v96 + 64);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v89 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v89 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v93 = &v89 - v30;
  MEMORY[0x28223BE20](v29);
  v32 = &v89 - v31;
  v33 = [objc_allocWithZone(MEMORY[0x277D57D88]) init];
  if (v33)
  {
    v34 = v33;
    v89 = v28;
    v90 = v25;
    v91 = v9;
    v92 = v5;
    v35 = a1[8];
    v36 = a1[9];
    if (v35 == 0xD00000000000001ELL && 0x800000020E35A8D0 == v36 || (v37 = a1[8], v38 = a1[9], (sub_20E322D60() & 1) != 0))
    {
      v39 = 1;
    }

    else if (v35 == 0xD000000000000021 && 0x800000020E3614F0 == v36 || (sub_20E322D60() & 1) != 0)
    {
      v39 = 3;
    }

    else
    {
      v39 = 2;
      if (v35 != 0xD000000000000017 || 0x800000020E361520 != v36)
      {
        if (sub_20E322D60())
        {
          v39 = 2;
        }

        else
        {
          v39 = 0;
        }
      }
    }

    [v34 setClientApplicationId_];
    v40 = a1[11];
    v41 = a1[12];
    sub_20E06C5DC(0, v20);
    v42 = v96;
    v43 = *(v96 + 48);
    if (v43(v20, 1, v21) == 1)
    {
      sub_20E04875C(v20, &qword_27C863A90, &unk_20E33C020);
    }

    else
    {
      (*(v42 + 32))(v32, v20, v21);
      v49 = objc_allocWithZone(MEMORY[0x277D5AC78]);
      v50 = sub_20E322030();
      v51 = [v49 initWithNSUUID_];

      [v34 setIfRequestId_];
      (*(v42 + 8))(v32, v21);
    }

    v52 = v91;
    v53 = *a1;
    v54 = a1[1];
    sub_20E06C5DC(1, v18);
    if (v43(v18, 1, v21) == 1)
    {
      sub_20E04875C(v18, &qword_27C863A90, &unk_20E33C020);
      v55 = v96;
    }

    else
    {
      v55 = v96;
      v56 = v93;
      (*(v96 + 32))(v93, v18, v21);
      v57 = objc_allocWithZone(MEMORY[0x277D5AC78]);
      v58 = sub_20E322030();
      v59 = [v57 initWithNSUUID_];

      [v34 setIfEventId_];
      (*(v55 + 8))(v56, v21);
    }

    v60 = v94;
    v61 = a1[2];
    v62 = a1[3];
    sub_20E06C5DC(2, v94);
    if (v43(v60, 1, v21) == 1)
    {
      sub_20E04875C(v60, &qword_27C863A90, &unk_20E33C020);
    }

    else
    {
      v63 = v89;
      (*(v55 + 32))(v89, v60, v21);
      v64 = objc_allocWithZone(MEMORY[0x277D5AC78]);
      v65 = sub_20E322030();
      v66 = [v64 initWithNSUUID_];

      [v34 setIfSessionId_];
      (*(v55 + 8))(v63, v21);
    }

    v67 = v95;
    v68 = a1[4];
    v69 = a1[5];
    sub_20E06C5DC(3, v95);
    if (v43(v67, 1, v21) == 1)
    {
      sub_20E04875C(v67, &qword_27C863A90, &unk_20E33C020);
    }

    else
    {
      v70 = v90;
      (*(v55 + 32))(v90, v67, v21);
      v71 = objc_allocWithZone(MEMORY[0x277D5AC78]);
      v72 = sub_20E322030();
      v73 = [v71 initWithNSUUID_];

      [v34 setClientTraceId_];
      (*(v55 + 8))(v70, v21);
    }

    v74 = v92;
    v75 = type metadata accessor for TranscriptProtoEvent(0);
    sub_20E0486F4(a1 + *(v75 + 56), v52, &qword_27C8688B0, &unk_20E33C1C0);
    v76 = type metadata accessor for TranscriptProtoParticipantID(0);
    if ((*(*(v76 - 8) + 48))(v52, 1, v76) == 1)
    {
      sub_20E04875C(v52, &qword_27C8688B0, &unk_20E33C1C0);
      v77 = 0;
      v78 = 0;
    }

    else
    {
      v77 = *v52;
      v78 = v52[1];

      sub_20E228D84(v52, type metadata accessor for TranscriptProtoParticipantID);
    }

    v79 = sub_20E064488(v77, v78);

    [v34 setSender_];
    sub_20E0486F4(a1 + *(v75 + 60), v74, &qword_27C8688A0, &qword_20E33B858);
    v80 = type metadata accessor for TranscriptProtoSpanID(0);
    if ((*(*(v80 - 8) + 48))(v74, 1, v80) == 1)
    {
      sub_20E04875C(v74, &qword_27C8688A0, &qword_20E33B858);
      v81 = 0;
    }

    else
    {
      v81 = *v74;
      sub_20E228D84(v74, type metadata accessor for TranscriptProtoSpanID);
    }

    [v34 setPostingSpanId_];
    v82 = sub_20E050CFC(a1);
    v83 = v82;
    if (v82 >> 62)
    {
      v84 = sub_20E322BC0();
      if (v84)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v84 = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v84)
      {
LABEL_30:
        if (v84 >= 1)
        {
          for (i = 0; i != v84; ++i)
          {
            if ((v83 & 0xC000000000000001) != 0)
            {
              v86 = MEMORY[0x20F32C150](i, v83);
            }

            else
            {
              v86 = *(v83 + 8 * i + 32);
            }

            v87 = v86;
            [v34 addInitiatedSpans_];
          }

          goto LABEL_46;
        }

        __break(1u);
        goto LABEL_49;
      }
    }

LABEL_46:

    return v34;
  }

  if (qword_280E12B88 != -1)
  {
LABEL_49:
    swift_once();
  }

  v44 = sub_20E3227C0();
  __swift_project_value_buffer(v44, qword_280E12C48);
  v45 = sub_20E3227B0();
  v46 = sub_20E322A50();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v97 = v48;
    *v47 = 136315138;
    *(v47 + 4) = sub_20E31B6C4(0xD00000000000004ALL, 0x800000020E3614A0, &v97);
    _os_log_impl(&dword_20E031000, v45, v46, "%s", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v48);
    MEMORY[0x20F32CA80](v48, -1, -1);
    MEMORY[0x20F32CA80](v47, -1, -1);
  }

  v98 = 96;
  _s23LighthouseDataProcessor20CoreAnalyticsServiceO017submitReliabilityE08category6reasonyAA0H8CategoryO_SStFZ_0(&v98, 0xD00000000000004ALL, 0x800000020E3614A0);
  return 0;
}

uint64_t sub_20E228D84(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

LighthouseDataProcessor::ToolKitProtoRuntimePlatform_optional __swiftcall ToolKitProtoRuntimePlatform.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 7;
  if (rawValue < 7)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_20E228E0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E24F7F8();

  return MEMORY[0x28217E238](a1, a2, v4);
}

LighthouseDataProcessor::ToolKitProtoTypeIdentifier::Primitive::MeasurementUnitType_optional __swiftcall ToolKitProtoTypeIdentifier.Primitive.MeasurementUnitType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0;
  v3 = 5;
  switch(rawValue)
  {
    case 0:
      goto LABEL_15;
    case 1:
      v2 = 1;
      goto LABEL_15;
    case 2:
      v2 = 2;
      goto LABEL_15;
    case 3:
      v2 = 3;
      goto LABEL_15;
    case 4:
      v2 = 4;
LABEL_15:
      v3 = v2;
      goto LABEL_16;
    case 5:
LABEL_16:
      *v1 = v3;
      break;
    case 6:
      *v1 = 6;
      break;
    case 7:
      *v1 = 7;
      break;
    case 8:
      *v1 = 8;
      break;
    case 9:
      *v1 = 9;
      break;
    case 10:
      *v1 = 10;
      break;
    case 11:
      *v1 = 11;
      break;
    case 12:
      *v1 = 12;
      break;
    case 13:
      *v1 = 13;
      break;
    case 14:
      *v1 = 14;
      break;
    case 15:
      *v1 = 15;
      break;
    case 16:
      *v1 = 16;
      break;
    case 17:
      *v1 = 17;
      break;
    case 18:
      *v1 = 18;
      break;
    case 19:
      *v1 = 19;
      break;
    case 20:
      *v1 = 20;
      break;
    case 21:
      *v1 = 21;
      break;
    case 22:
      *v1 = 22;
      break;
    default:
      *v1 = 23;
      break;
  }

  return rawValue;
}

uint64_t sub_20E229064(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E24F7A4();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t ToolKitProtoTypeIdentifier.Primitive.init()@<X0>(_BYTE *a1@<X8>)
{
  *a1 = 41;
  v1 = &a1[*(type metadata accessor for ToolKitProtoTypeIdentifier.Primitive(0) + 20)];
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t sub_20E22929C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_20E229338(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_20E22963C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = a1(0);
  (*(*(v5 - 8) + 56))(a3, 1, 1, v5);
  v6 = a3 + *(a2(0) + 20);
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t sub_20E229AE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E24F750();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t ToolKitProtoTypeDefinition.Version1.Entity.Property.init()@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property(0);
  v3 = *(v2 + 24);
  v4 = type metadata accessor for ToolKitProtoTypeInstance(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = &a1[*(v2 + 28)];
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  *(a1 + 2) = 0;
  *(a1 + 3) = 0xE000000000000000;
  return result;
}

uint64_t ToolKitProtoTypeDefinition.Version1.Entity.Property.init(id:displayName:type:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v12 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property(0);
  v13 = *(v12 + 24);
  v14 = type metadata accessor for ToolKitProtoTypeInstance(0);
  (*(*(v14 - 8) + 56))(&a6[v13], 1, 1, v14);
  v15 = &a6[*(v12 + 28)];
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a6 = a1;
  *(a6 + 1) = a2;
  *(a6 + 2) = a3;
  *(a6 + 3) = a4;
  return sub_20E05EC5C(a5, &a6[v13], &qword_27C863C48, &qword_20E323F30);
}

uint64_t ToolKitProtoTypeDefinition.Version1.Entity.init()@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity(0);
  v3 = v2[10];
  v4 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = v2[11];
  v6 = type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  (*(*(v6 - 8) + 56))(&a1[v5], 1, 1, v6);
  v7 = &a1[v2[12]];
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  v9 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 1) = v9;
  *(a1 + 2) = v9;
  *(a1 + 3) = v9;
  *(a1 + 4) = v9;
  *(a1 + 5) = v9;
  return result;
}

uint64_t ToolKitProtoTypeDefinition.Version1.Entity.init(identifier:properties:runtimeRequirements:displayRepresentation:sampleInvocations:systemProtocols:runtimeFlags:coercions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  v16 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity(0);
  v17 = v16[10];
  v18 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  (*(*(v18 - 8) + 56))(&a9[v17], 1, 1, v18);
  v19 = v16[11];
  v20 = type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  (*(*(v20 - 8) + 56))(&a9[v19], 1, 1, v20);
  v21 = &a9[v16[12]];
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  sub_20E05EC5C(a1, &a9[v17], &qword_27C863B60, &qword_20E323F50);
  *a9 = a2;
  *(a9 + 1) = a3;
  result = sub_20E05EC5C(a4, &a9[v19], &qword_27C868A20, &qword_20E345F10);
  *(a9 + 2) = a5;
  *(a9 + 3) = a6;
  *(a9 + 4) = a7;
  *(a9 + 5) = a8;
  return result;
}

uint64_t sub_20E22A264(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E24F6FC();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_20E22A390@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_20E22A42C(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 24);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t ToolKitProtoTypeDefinition.Version1.Enumeration.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration(0);
  v3 = v2[8];
  v4 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = v2[9];
  v6 = type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  (*(*(v6 - 8) + 56))(a1 + v5, 1, 1, v6);
  v7 = a1 + v2[10];
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  v9 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = v9;
  *(a1 + 16) = 0;
  *(a1 + 24) = v9;
  return result;
}

uint64_t ToolKitProtoTypeDefinition.Version1.Enumeration.init(identifier:cases:runtimeRequirements:displayRepresentation:kind:systemProtocols:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v13 = *a5;
  v14 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration(0);
  v15 = v14[8];
  v16 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  (*(*(v16 - 8) + 56))(a7 + v15, 1, 1, v16);
  v17 = v14[9];
  v18 = type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  (*(*(v18 - 8) + 56))(a7 + v17, 1, 1, v18);
  v19 = a7 + v14[10];
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  sub_20E05EC5C(a1, a7 + v15, &qword_27C863B60, &qword_20E323F50);
  *a7 = a2;
  *(a7 + 8) = a3;
  result = sub_20E05EC5C(a4, a7 + v17, &qword_27C868A20, &qword_20E345F10);
  *(a7 + 16) = v13;
  *(a7 + 24) = a6;
  return result;
}

uint64_t sub_20E22B094@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 48);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_20E22B130(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 48);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates.init()@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(0);
  v3 = v2[6];
  v4 = type metadata accessor for ToolKitProtoStringSearchPredicate.Template(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = v2[7];
  v6 = type metadata accessor for ToolKitProtoIdSearchPredicate.Template(0);
  (*(*(v6 - 8) + 56))(&a1[v5], 1, 1, v6);
  v7 = v2[8];
  v8 = type metadata accessor for ToolKitProtoAllPredicate(0);
  (*(*(v8 - 8) + 56))(&a1[v7], 1, 1, v8);
  v9 = v2[9];
  v10 = type metadata accessor for ToolKitProtoSuggestedPredicate(0);
  (*(*(v10 - 8) + 56))(&a1[v9], 1, 1, v10);
  v11 = v2[10];
  v12 = type metadata accessor for ToolKitProtoSearchableItemPredicate.Template(0);
  (*(*(v12 - 8) + 56))(&a1[v11], 1, 1, v12);
  v13 = v2[11];
  valid = type metadata accessor for ToolKitProtoValidPredicate(0);
  (*(*(valid - 8) + 56))(&a1[v13], 1, 1, valid);
  v15 = &a1[v2[12]];
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  v17 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 1) = v17;
  return result;
}

uint64_t ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates.init(comparison:stringSearch:idSearch:all:suggested:sampleInvocations:searchableItem:valid:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  v12 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(0);
  v13 = v12[6];
  v14 = type metadata accessor for ToolKitProtoStringSearchPredicate.Template(0);
  (*(*(v14 - 8) + 56))(&a9[v13], 1, 1, v14);
  v15 = v12[7];
  v16 = type metadata accessor for ToolKitProtoIdSearchPredicate.Template(0);
  (*(*(v16 - 8) + 56))(&a9[v15], 1, 1, v16);
  v17 = v12[8];
  v18 = type metadata accessor for ToolKitProtoAllPredicate(0);
  (*(*(v18 - 8) + 56))(&a9[v17], 1, 1, v18);
  v19 = v12[9];
  v20 = type metadata accessor for ToolKitProtoSuggestedPredicate(0);
  (*(*(v20 - 8) + 56))(&a9[v19], 1, 1, v20);
  v21 = v12[10];
  v22 = type metadata accessor for ToolKitProtoSearchableItemPredicate.Template(0);
  (*(*(v22 - 8) + 56))(&a9[v21], 1, 1, v22);
  v23 = v12[11];
  valid = type metadata accessor for ToolKitProtoValidPredicate(0);
  (*(*(valid - 8) + 56))(&a9[v23], 1, 1, valid);
  v25 = &a9[v12[12]];
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a9 = a1;
  sub_20E05EC5C(a2, &a9[v13], &qword_27C869C50, &qword_20E346258);
  sub_20E05EC5C(a3, &a9[v15], &qword_27C869C58, &qword_20E346260);
  sub_20E05EC5C(a4, &a9[v17], &qword_27C869C60, &qword_20E346268);
  sub_20E05EC5C(a5, &a9[v19], &qword_27C869C68, &qword_20E346270);
  *(a9 + 1) = a6;
  sub_20E05EC5C(a7, &a9[v21], &qword_27C869C70, &qword_20E346278);
  return sub_20E05EC5C(a8, &a9[v23], &qword_27C869C78, &qword_20E346280);
}

uint64_t ToolKitProtoTypedValue.typedValueKind.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return sub_20E047CF8(v2);
}

uint64_t ToolKitProtoTypedValue.typedValueKind.setter(uint64_t *a1)
{
  v2 = *a1;
  result = sub_20E047CA8(*v1);
  *v1 = v2;
  return result;
}

uint64_t sub_20E22BA48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, char *a8@<X8>)
{
  v15 = a4(0);
  v16 = *(v15 + 20);
  v17 = a5(0);
  (*(*(v17 - 8) + 56))(&a8[v16], 1, 1, v17);
  v18 = &a8[*(v15 + 24)];
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a8 = a1;
  *(a8 + 1) = a2;
  return sub_20E05EC5C(a3, &a8[v16], a6, a7);
}

uint64_t sub_20E22BC8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E24F6A8();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_20E22BD00@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 28);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_20E22BD9C(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 28);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Decimal.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal(0);
  v3 = *(v2 + 24);
  v4 = sub_20E322160();
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = a1 + *(v2 + 28);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Decimal.init(sign:exponent:significand:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v8 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal(0);
  v9 = *(v8 + 24);
  v10 = sub_20E322160();
  (*(*(v10 - 8) + 56))(a4 + v9, 1, 1, v10);
  v11 = a4 + *(v8 + 28);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a4 = v7;
  *(a4 + 8) = a2;
  return sub_20E05EC5C(a3, a4 + v9, &qword_27C869C88, &qword_20E346290);
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Measurement.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = a1 + *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Measurement(0) + 28);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Measurement.init(unit:value:unitType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v9 = *a3;
  v10 = a4 + *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Measurement(0) + 28);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a5;
  *(a4 + 24) = v9;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod.identificationHint.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod.identificationHint.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

LighthouseDataProcessor::ToolKitProtoTypedValue::PrimitiveValue::PaymentMethod::TypeEnum_optional __swiftcall ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod.TypeEnum.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 9;
  if (rawValue < 9)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_20E22C4E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E24F654();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod(0);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = *(v2 + 24);
  v4 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = a1 + *(v2 + 28);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod.init(type:identificationHint:displayRepresentation:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a1;
  v10 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod(0);
  v11 = *(v10 + 24);
  v12 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  (*(*(v12 - 8) + 56))(a5 + v11, 1, 1, v12);
  v13 = a5 + *(v10 + 28);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a5 = v9;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  return sub_20E05EC5C(a4, a5 + v11, &qword_27C863EB8, &qword_20E325D08);
}

double sub_20E22C86C@<D0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, char *a3@<X8>)
{
  v5 = a1(0);
  v6 = *(v5 + 20);
  v7 = a2(0);
  (*(*(v7 - 8) + 56))(&a3[v6], 1, 1, v7);
  v8 = &a3[*(v5 + 24)];
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  result = 0.0;
  *a3 = xmmword_20E326350;
  return result;
}

uint64_t sub_20E22CDD4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, char *a3@<X8>)
{
  v5 = a1(0);
  v6 = *(v5 + 20);
  v7 = a2(0);
  (*(*(v7 - 8) + 56))(&a3[v6], 1, 1, v7);
  v8 = &a3[*(v5 + 24)];
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a3 = 0;
  *(a3 + 1) = 0xE000000000000000;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.year.getter()
{
  v1 = (v0 + *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0) + 28));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.year.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  v6 = v2 + *(result + 28);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.month.getter()
{
  v1 = (v0 + *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0) + 32));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.month.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  v6 = v2 + *(result + 32);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.day.getter()
{
  v1 = (v0 + *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0) + 36));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.day.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  v6 = v2 + *(result + 36);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.hour.getter()
{
  v1 = (v0 + *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0) + 40));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.hour.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  v6 = v2 + *(result + 40);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.minute.getter()
{
  v1 = (v0 + *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0) + 44));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.minute.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  v6 = v2 + *(result + 44);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.second.getter()
{
  v1 = (v0 + *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0) + 48));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.second.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  v6 = v2 + *(result + 48);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.nanosecond.getter()
{
  v1 = (v0 + *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0) + 52));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.nanosecond.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  v6 = v2 + *(result + 52);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.weekday.getter()
{
  v1 = (v0 + *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0) + 56));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.weekday.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  v6 = v2 + *(result + 56);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.weekdayOrdinal.getter()
{
  v1 = (v0 + *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0) + 60));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.weekdayOrdinal.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  v6 = v2 + *(result + 60);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.quarter.getter()
{
  v1 = (v0 + *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0) + 64));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.quarter.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  v6 = v2 + *(result + 64);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.weekOfMonth.getter()
{
  v1 = (v0 + *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0) + 68));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.weekOfMonth.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  v6 = v2 + *(result + 68);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.weekOfYear.getter()
{
  v1 = (v0 + *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0) + 72));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.weekOfYear.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  v6 = v2 + *(result + 72);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.yearForWeekOfYear.getter()
{
  v1 = (v0 + *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0) + 76));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.yearForWeekOfYear.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  v6 = v2 + *(result + 76);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

LighthouseDataProcessor::ToolKitProtoTypedValue::PrimitiveValue::DateComponents::CalendarIdentifier_optional __swiftcall ToolKitProtoTypedValue.PrimitiveValue.DateComponents.CalendarIdentifier.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 17;
  if (rawValue < 0x11)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_20E22D9CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E24F600();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar.timeZoneIdentifier.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar.timeZoneIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar(0);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v3 = a1 + *(v2 + 36);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0xE000000000000000;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar.init(identifier:timeZoneIdentifier:localeIdentifier:firstWeekday:minimumDaysInFirstWeek:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v15 = *a1;
  v16 = a8 + *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar(0) + 36);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a8 = v15;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 40) = a4;
  *(a8 + 48) = a5;
  *(a8 + 24) = a6;
  *(a8 + 32) = a7;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0) + 80);
  v4 = sub_20E3221C0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0) + 80);
  v4 = sub_20E3221C0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar(0);
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  v3 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  v4 = (a1 + v3[5]);
  *v4 = 0;
  v4[1] = 0;
  v5 = a1 + v3[6];
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = a1 + v3[7];
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = a1 + v3[8];
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = a1 + v3[9];
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = a1 + v3[10];
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = a1 + v3[11];
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = a1 + v3[12];
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = a1 + v3[13];
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = a1 + v3[14];
  *v13 = 0;
  *(v13 + 8) = 1;
  v14 = a1 + v3[15];
  *v14 = 0;
  *(v14 + 8) = 1;
  v15 = a1 + v3[16];
  *v15 = 0;
  *(v15 + 8) = 1;
  v16 = a1 + v3[17];
  *v16 = 0;
  *(v16 + 8) = 1;
  v17 = a1 + v3[18];
  *v17 = 0;
  *(v17 + 8) = 1;
  v18 = a1 + v3[19];
  *v18 = 0;
  *(v18 + 8) = 1;
  v19 = a1 + v3[20];
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.init(calendar:timeZoneIdentifier:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, char a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, char a22, uint64_t a23, char a24, uint64_t a25, char a26, uint64_t a27, char a28, uint64_t a29, char a30, uint64_t a31, char a32)
{
  v33 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar(0);
  (*(*(v33 - 8) + 56))(a9, 1, 1, v33);
  v34 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  v35 = (a9 + v34[5]);
  v36 = a9 + v34[6];
  v37 = a9 + v34[7];
  v38 = a9 + v34[8];
  v39 = a9 + v34[9];
  v40 = a9 + v34[10];
  v41 = a9 + v34[11];
  v42 = a9 + v34[12];
  v43 = a9 + v34[13];
  v48 = a9 + v34[14];
  v46 = a9 + v34[15];
  v50 = a9 + v34[16];
  v47 = a9 + v34[17];
  v51 = a9 + v34[18];
  v44 = v34[20];
  v49 = a9 + v34[19];
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  result = sub_20E05EC5C(a1, a9, &qword_27C869C98, &unk_20E3462A0);
  *v35 = a2;
  v35[1] = a3;
  *v36 = a4;
  *(v36 + 8) = a5 & 1;
  *v37 = a6;
  *(v37 + 8) = a7 & 1;
  *v38 = a8;
  *(v38 + 8) = a10 & 1;
  *v39 = a11;
  *(v39 + 8) = a12 & 1;
  *v40 = a13;
  *(v40 + 8) = a14 & 1;
  *v41 = a15;
  *(v41 + 8) = a16 & 1;
  *v42 = a17;
  *(v42 + 8) = a18 & 1;
  *v43 = a19;
  *(v43 + 8) = a20 & 1;
  *v48 = a21;
  *(v48 + 8) = a22 & 1;
  *v46 = a23;
  *(v46 + 8) = a24 & 1;
  *v50 = a25;
  *(v50 + 8) = a26 & 1;
  *v47 = a27;
  *(v47 + 8) = a28 & 1;
  *v51 = a29;
  *(v51 + 8) = a30 & 1;
  *v49 = a31;
  *(v49 + 8) = a32 & 1;
  return result;
}

uint64_t sub_20E22E508@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, char *a3@<X8>)
{
  v5 = a1(0);
  v6 = v5[5];
  v7 = a2(0);
  (*(*(v7 - 8) + 56))(&a3[v6], 1, 1, v7);
  v8 = v5[6];
  v9 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  (*(*(v9 - 8) + 56))(&a3[v8], 1, 1, v9);
  v10 = &a3[v5[7]];
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a3 = 0;
  *(a3 + 1) = 0xE000000000000000;
  return result;
}

uint64_t sub_20E22E624@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t (*a6)(void)@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X7>, char *a9@<X8>)
{
  v17 = a5(0);
  v18 = v17[5];
  v19 = a6(0);
  (*(*(v19 - 8) + 56))(&a9[v18], 1, 1, v19);
  v20 = v17[6];
  v21 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  (*(*(v21 - 8) + 56))(&a9[v20], 1, 1, v21);
  v22 = &a9[v17[7]];
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  sub_20E05EC5C(a1, &a9[v18], a7, a8);
  *a9 = a2;
  *(a9 + 1) = a3;
  return sub_20E05EC5C(a4, &a9[v20], &qword_27C863EB8, &qword_20E325D08);
}

uint64_t ToolKitProtoTypedValue.EntityValue.hydratedAppEntity.getter()
{
  v1 = v0 + *(type metadata accessor for ToolKitProtoTypedValue.EntityValue(0) + 32);
  v2 = *v1;
  sub_20E047C8C(*v1, *(v1 + 8));
  return v2;
}

uint64_t ToolKitProtoTypedValue.EntityValue.hydratedAppEntity.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for ToolKitProtoTypedValue.EntityValue(0) + 32);
  result = sub_20E047D10(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t sub_20E22EA64@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 36);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_20E22EB00(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 36);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

unint64_t ToolKitProtoTypedValue.EntityValue.init()@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for ToolKitProtoTypedValue.EntityValue(0);
  v3 = v2[6];
  v4 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = v2[7];
  v6 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  (*(*(v6 - 8) + 56))(&a1[v5], 1, 1, v6);
  *&a1[v2[8]] = xmmword_20E323EA0;
  v7 = &a1[v2[9]];
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  result = sub_20E04916C(MEMORY[0x277D84F90]);
  *(a1 + 2) = result;
  return result;
}

uint64_t ToolKitProtoTypedValue.EntityValue.init(type:identifier:properties:displayRepresentation:hydratedAppEntity:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v14 = type metadata accessor for ToolKitProtoTypedValue.EntityValue(0);
  v15 = v14[6];
  v16 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  (*(*(v16 - 8) + 56))(&a8[v15], 1, 1, v16);
  v17 = v14[7];
  v18 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  (*(*(v18 - 8) + 56))(&a8[v17], 1, 1, v18);
  v19 = &a8[v14[8]];
  *v19 = xmmword_20E323EA0;
  v20 = &a8[v14[9]];
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  sub_20E05EC5C(a1, &a8[v15], &qword_27C863B60, &qword_20E323F50);
  *a8 = a2;
  *(a8 + 1) = a3;
  *(a8 + 2) = a4;
  sub_20E05EC5C(a5, &a8[v17], &qword_27C863EB8, &qword_20E325D08);
  result = sub_20E047D10(*v19, *(v19 + 1));
  *v19 = a6;
  *(v19 + 1) = a7;
  return result;
}

uint64_t sub_20E22F180@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v7 = a1(0);
  (*(*(v7 - 8) + 56))(a4, 1, 1, v7);
  v8 = a2(0);
  v9 = *(v8 + 20);
  v10 = a3(0);
  (*(*(v10 - 8) + 56))(a4 + v9, 1, 1, v10);
  v11 = a4 + *(v8 + 24);
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t sub_20E22F298@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v14 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  (*(*(v14 - 8) + 56))(a7, 1, 1, v14);
  v15 = a3(0);
  v16 = *(v15 + 20);
  v17 = a4(0);
  (*(*(v17 - 8) + 56))(a7 + v16, 1, 1, v17);
  v18 = a7 + *(v15 + 24);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  sub_20E05EC5C(a1, a7, &qword_27C863B60, &qword_20E323F50);
  return sub_20E05EC5C(a2, a7 + v16, a5, a6);
}

uint64_t sub_20E22F8A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void)@<X4>, void *a6@<X8>)
{
  v11 = a6 + *(a5(0) + 24);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  return result;
}

uint64_t ToolKitProtoTypedValue.DeferredValue.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  v3 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue(0);
  v4 = v3[5];
  v5 = type metadata accessor for ToolKitProtoTypeInstance(0);
  (*(*(v5 - 8) + 56))(a1 + v4, 1, 1, v5);
  v6 = v3[6];
  v7 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage(0);
  (*(*(v7 - 8) + 56))(a1 + v6, 1, 1, v7);
  v8 = a1 + v3[7];
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t ToolKitProtoTypedValue.DeferredValue.init(type:expectedTypeInstance:storage:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  (*(*(v8 - 8) + 56))(a4, 1, 1, v8);
  v9 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue(0);
  v10 = v9[5];
  v11 = type metadata accessor for ToolKitProtoTypeInstance(0);
  (*(*(v11 - 8) + 56))(a4 + v10, 1, 1, v11);
  v12 = v9[6];
  v13 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage(0);
  (*(*(v13 - 8) + 56))(a4 + v12, 1, 1, v13);
  v14 = a4 + v9[7];
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  sub_20E05EC5C(a1, a4, &qword_27C863B60, &qword_20E323F50);
  sub_20E05EC5C(a2, a4 + v10, &qword_27C863C48, &qword_20E323F30);
  return sub_20E05EC5C(a3, a4 + v12, &qword_27C869CA0, &qword_20E3462B0);
}

uint64_t ToolKitProtoTypeInstance.Optional.init(value:defaultValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ToolKitProtoTypeInstance(0);
  (*(*(v6 - 8) + 56))(a3, 1, 1, v6);
  v7 = type metadata accessor for ToolKitProtoTypeInstance.Optional(0);
  v8 = *(v7 + 20);
  v9 = type metadata accessor for ToolKitProtoTypedValue(0);
  (*(*(v9 - 8) + 56))(a3 + v8, 1, 1, v9);
  v10 = a3 + *(v7 + 24);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  sub_20E05EC5C(a1, a3, &qword_27C863C48, &qword_20E323F30);
  return sub_20E05EC5C(a2, a3 + v8, &qword_27C863B18, &qword_20E323EB0);
}

uint64_t sub_20E230088@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  v3 = a2 + *(a1(0) + 20);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_20E2300E8@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, void *a3@<X8>)
{
  v5 = a3 + *(a2(0) + 20);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a3 = a1;
  return result;
}

uint64_t sub_20E230284@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, char *a3@<X8>)
{
  v5 = a1(0);
  v6 = *(v5 + 20);
  v7 = a2(0);
  (*(*(v7 - 8) + 56))(&a3[v6], 1, 1, v7);
  v8 = &a3[*(v5 + 24)];
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a3 = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_20E230360@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, char *a7@<X8>)
{
  v13 = a3(0);
  v14 = *(v13 + 20);
  v15 = a4(0);
  (*(*(v15 - 8) + 56))(&a7[v14], 1, 1, v15);
  v16 = &a7[*(v13 + 24)];
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  result = sub_20E05EC5C(a1, &a7[v14], a5, a6);
  *a7 = a2;
  return result;
}

uint64_t sub_20E230584@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v11 = a2(0);
  (*(*(v11 - 8) + 56))(a6, 1, 1, v11);
  v12 = a6 + *(a3(0) + 20);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  return sub_20E05EC5C(a1, a6, a4, a5);
}

uint64_t sub_20E2306C4@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  *a2 = 0xF000000000000007;
  v2 = a2 + *(a1(0) + 20);
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

LighthouseDataProcessor::ToolKitProtoRestrictionContext::PersonReachableAs_optional __swiftcall ToolKitProtoRestrictionContext.PersonReachableAs.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_20E230758(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E24F5AC();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_20E2307C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E24F558();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_20E2309C4(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 20));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_20E230A24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 20));
  v7 = v6[1];

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t sub_20E230B88@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  v3 = a2 + *(a1(0) + 24);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  return result;
}

uint64_t ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues.init(contentItemClass:propertyName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues(0);
  v9 = *(v8 + 20);
  v10 = type metadata accessor for ToolKitProtoContentItemClassDescriptor(0);
  (*(*(v10 - 8) + 56))(&a4[v9], 1, 1, v10);
  v11 = &a4[*(v8 + 24)];
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  result = sub_20E05EC5C(a1, &a4[v9], &qword_27C869CC0, &qword_20E3462D8);
  *a4 = a2;
  *(a4 + 1) = a3;
  return result;
}

uint64_t ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery.init()@<X0>(void *a1@<X8>)
{
  v2 = a1 + *(type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery(0) + 28);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  a1[4] = 0;
  a1[5] = 0xE000000000000000;
  return result;
}

uint64_t ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery.init(parameterKey:queryIdentifier:actionIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v14 = a7 + *(type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery(0) + 28);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a7 = a1;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t ToolKitProtoRestrictionContext.InSet.ValueSet.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind(0);
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  v3 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet(0);
  v4 = (a1 + *(v3 + 20));
  *v4 = 0;
  v4[1] = 0;
  v5 = a1 + *(v3 + 24);
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t ToolKitProtoRestrictionContext.InSet.ValueSet.init(bundleIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind(0);
  (*(*(v6 - 8) + 56))(a3, 1, 1, v6);
  v7 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet(0);
  v8 = *(v7 + 24);
  v9 = (a3 + *(v7 + 20));
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *v9 = a1;
  v9[1] = a2;
  return result;
}

uint64_t ToolKitProtoRestrictionContext.InSet.init(definition:templates:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet(0);
  (*(*(v6 - 8) + 56))(a3, 1, 1, v6);
  v7 = type metadata accessor for ToolKitProtoRestrictionContext.InSet(0);
  v8 = *(v7 + 20);
  v9 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(0);
  (*(*(v9 - 8) + 56))(a3 + v8, 1, 1, v9);
  v10 = a3 + *(v7 + 24);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  sub_20E05EC5C(a1, a3, &qword_27C869CB0, &qword_20E3462C8);
  return sub_20E05EC5C(a2, a3 + v8, &qword_27C869C48, &qword_20E346250);
}

uint64_t sub_20E2314D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E24F504();

  return MEMORY[0x28217E238](a1, a2, v4);
}

LighthouseDataProcessor::ToolKitProtoRestrictionContext::TextTypedWith::KeyboardType_optional __swiftcall ToolKitProtoRestrictionContext.TextTypedWith.KeyboardType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 12;
  if (rawValue < 0xC)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_20E231558(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E24F4B0();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_20E2315C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E24F45C();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_20E231634@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 40);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_20E2316D0(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 40);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t ToolKitProtoRestrictionContext.TextTypedWith.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = a1 + *(type metadata accessor for ToolKitProtoRestrictionContext.TextTypedWith(0) + 40);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *(a1 + 4) = 0;
  *a1 = 0;
  return result;
}

uint64_t ToolKitProtoRestrictionContext.TextTypedWith.init(multilineAllowed:smartQuotesEnabled:smartDashesEnabled:keyboardType:autocorrectionType:capitalizationType:)@<X0>(char a1@<W0>, char a2@<W1>, char a3@<W2>, char *a4@<X3>, char *a5@<X4>, char *a6@<X5>, _BYTE *a7@<X8>)
{
  v11 = *a4;
  v12 = *a5;
  v13 = *a6;
  v14 = &a7[*(type metadata accessor for ToolKitProtoRestrictionContext.TextTypedWith(0) + 40)];
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a7 = a1;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = v11;
  a7[4] = v12;
  a7[5] = v13;
  return result;
}

uint64_t ToolKitProtoComparisonPredicate.Comparison.Pair.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ToolKitProtoTypedValue(0);
  v3 = *(*(v2 - 8) + 56);
  v3(a1, 1, 1, v2);
  v4 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair(0);
  v3(a1 + *(v4 + 20), 1, 1, v2);
  v5 = a1 + *(v4 + 24);
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t ToolKitProtoComparisonPredicate.Comparison.Pair.init(first:second:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ToolKitProtoTypedValue(0);
  v7 = *(*(v6 - 8) + 56);
  v7(a3, 1, 1, v6);
  v8 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair(0);
  v9 = *(v8 + 20);
  v7(a3 + v9, 1, 1, v6);
  v10 = a3 + *(v8 + 24);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  sub_20E05EC5C(a1, a3, &qword_27C863B18, &qword_20E323EB0);
  return sub_20E05EC5C(a2, a3 + v9, &qword_27C863B18, &qword_20E323EB0);
}

uint64_t sub_20E232644@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 32);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_20E2326E0(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 32);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_20E2327D4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, char *a3@<X8>)
{
  v5 = a1(0);
  v6 = v5[5];
  v7 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property(0);
  (*(*(v7 - 8) + 56))(&a3[v6], 1, 1, v7);
  v8 = v5[6];
  v9 = a2(0);
  (*(*(v9 - 8) + 56))(&a3[v8], 1, 1, v9);
  v10 = v5[7];
  v11 = type metadata accessor for ToolKitProtoContentItemClassDescriptor(0);
  (*(*(v11 - 8) + 56))(&a3[v10], 1, 1, v11);
  v12 = &a3[v5[8]];
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a3 = 0;
  *(a3 + 1) = 0xE000000000000000;
  return result;
}

uint64_t sub_20E232954@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(void)@<X5>, uint64_t (*a7)(void)@<X6>, uint64_t *a8@<X7>, char *a9@<X8>, uint64_t *a10)
{
  v16 = a6(0);
  v17 = v16[5];
  v18 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property(0);
  (*(*(v18 - 8) + 56))(&a9[v17], 1, 1, v18);
  v19 = v16[6];
  v20 = a7(0);
  (*(*(v20 - 8) + 56))(&a9[v19], 1, 1, v20);
  v21 = v16[7];
  v22 = type metadata accessor for ToolKitProtoContentItemClassDescriptor(0);
  (*(*(v22 - 8) + 56))(&a9[v21], 1, 1, v22);
  v23 = &a9[v16[8]];
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  sub_20E05EC5C(a1, &a9[v17], &qword_27C869CD0, &qword_20E3462E8);
  sub_20E05EC5C(a2, &a9[v19], a8, a10);
  *a9 = a3;
  *(a9 + 1) = a4;
  return sub_20E05EC5C(a5, &a9[v21], &qword_27C869CC0, &qword_20E3462D8);
}

uint64_t sub_20E232B40(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E24F408();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t ToolKitProtoCompoundPredicate.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = a1 + *(type metadata accessor for ToolKitProtoCompoundPredicate(0) + 24);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  *(a1 + 8) = MEMORY[0x277D84F90];
  return result;
}

uint64_t ToolKitProtoCompoundPredicate.init(operator:operands:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a3 + *(type metadata accessor for ToolKitProtoCompoundPredicate(0) + 24);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a3 = v5;
  *(a3 + 8) = a2;
  return result;
}

uint64_t sub_20E232D74@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  v3 = a2 + *(a1(0) + 20);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  return result;
}

uint64_t sub_20E232DD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, void *a4@<X8>)
{
  v7 = a4 + *(a3(0) + 20);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a4 = a1;
  a4[1] = a2;
  return result;
}

uint64_t sub_20E233134(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 24));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_20E233180(uint64_t a1, char a2, uint64_t (*a3)(void))
{
  result = a3(0);
  v7 = v3 + *(result + 24);
  *v7 = a1;
  *(v7 + 8) = a2 & 1;
  return result;
}

uint64_t sub_20E233220(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E24F3B4();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t ToolKitProtoQuery.init()@<X0>(_BYTE *a1@<X8>)
{
  v2 = type metadata accessor for ToolKitProtoQuery(0);
  v3 = v2[5];
  v4 = type metadata accessor for ToolKitProtoQuery.AnyPredicate(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = &a1[v2[6]];
  *v5 = 0;
  v5[8] = 1;
  v6 = &a1[v2[7]];
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  return result;
}

uint64_t ToolKitProtoQuery.init(predicate:sort:limit:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, _BYTE *a5@<X8>)
{
  v9 = *a2;
  v10 = type metadata accessor for ToolKitProtoQuery(0);
  v11 = v10[5];
  v12 = type metadata accessor for ToolKitProtoQuery.AnyPredicate(0);
  (*(*(v12 - 8) + 56))(&a5[v11], 1, 1, v12);
  v13 = v10[7];
  v14 = &a5[v10[6]];
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  result = sub_20E05EC5C(a1, &a5[v11], &qword_27C869CF8, &qword_20E346310);
  *a5 = v9;
  *v14 = a3;
  v14[8] = a4 & 1;
  return result;
}

uint64_t ToolKitProtoRuntimePlatformVersion.init()@<X0>(void *a1@<X8>)
{
  v2 = a1 + *(type metadata accessor for ToolKitProtoRuntimePlatformVersion(0) + 32);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *(a1 + 5) = 0;
  *a1 = 0;
  return result;
}

uint64_t ToolKitProtoRuntimePlatformVersion.init(major:minor:patch:isWildcard:)@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = a5 + *(type metadata accessor for ToolKitProtoRuntimePlatformVersion(0) + 32);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a5 = a1;
  *(a5 + 4) = a2;
  *(a5 + 8) = a3;
  *(a5 + 12) = a4;
  return result;
}

uint64_t sub_20E2337E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E24F360();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t ToolKitProtoRuntimeRequirement.AvailabilityAnnotation.init()@<X0>(_BYTE *a1@<X8>)
{
  v2 = type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation(0);
  v3 = v2[5];
  v4 = type metadata accessor for ToolKitProtoRuntimePlatformVersion(0);
  v5 = *(*(v4 - 8) + 56);
  v5(&a1[v3], 1, 1, v4);
  v5(&a1[v2[6]], 1, 1, v4);
  v5(&a1[v2[7]], 1, 1, v4);
  v6 = &a1[v2[8]];
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  return result;
}

uint64_t ToolKitProtoRuntimeRequirement.AvailabilityAnnotation.init(platform:introducingVersion:deprecatingVersion:obsoletingVersion:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v7 = *a1;
  v8 = type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation(0);
  v9 = v8[5];
  v10 = type metadata accessor for ToolKitProtoRuntimePlatformVersion(0);
  v11 = *(*(v10 - 8) + 56);
  v11(&a5[v9], 1, 1, v10);
  v12 = v8[6];
  v11(&a5[v12], 1, 1, v10);
  v13 = v8[7];
  v11(&a5[v13], 1, 1, v10);
  v14 = &a5[v8[8]];
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a5 = v7;
  sub_20E05EC5C(a2, &a5[v9], &qword_27C869D08, &qword_20E346328);
  sub_20E05EC5C(a3, &a5[v12], &qword_27C869D08, &qword_20E346328);
  return sub_20E05EC5C(a4, &a5[v13], &qword_27C869D08, &qword_20E346328);
}

uint64_t ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = a1 + *(type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt(0) + 24);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  return result;
}

uint64_t ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt.init(key:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = a4 + *(type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt(0) + 24);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t ToolKitProtoRuntimeRequirement.FeatureFlag.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = a1 + *(type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag(0) + 28);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  return result;
}

uint64_t ToolKitProtoRuntimeRequirement.FeatureFlag.init(domain:feature:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v12 = a6 + *(type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag(0) + 28);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

uint64_t ToolKitProtoToolSummaryString.Component.componentKind.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + 16);
  *(a1 + 16) = v4;
  return sub_20E195904(v2, v3, v4);
}

uint64_t ToolKitProtoToolSummaryString.Component.componentKind.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = sub_20E195924(*v1, *(v1 + 8), *(v1 + 16));
  *v1 = v2;
  *(v1 + 8) = v3;
  *(v1 + 16) = v4;
  return result;
}

uint64_t ToolKitProtoToolSummaryString.Component.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = -1;
  v1 = a1 + *(type metadata accessor for ToolKitProtoToolSummaryString.Component(0) + 20);
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t ToolKitProtoToolInvocationSignature.invisibleParameterKeys.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t ToolKitProtoToolInvocationSignature.valueConstraints.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

unint64_t ToolKitProtoToolInvocationSignature.init()@<X0>(void *a1@<X8>)
{
  v2 = a1 + *(type metadata accessor for ToolKitProtoToolInvocationSignature(0) + 28);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  v3 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  a1[1] = v3;
  result = sub_20E049EA4(v3);
  a1[2] = result;
  return result;
}

uint64_t ToolKitProtoSampleInvocationDefinition.init()@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for ToolKitProtoSampleInvocationDefinition(0);
  a1[2] = 0;
  a1[3] = 0;
  v3 = a1 + *(v2 + 28);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  v5 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  a1[1] = v5;
  return result;
}

uint64_t ToolKitProtoSampleInvocationDefinition.init(phrases:expectedResult:negativePhrases:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = a5 + *(type metadata accessor for ToolKitProtoSampleInvocationDefinition(0) + 28);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  a5[2] = a2;
  a5[3] = a3;
  *a5 = a1;
  a5[1] = a4;
  return result;
}

uint64_t ToolKitProtoAssistantSchemaVersion.init()@<X0>(void *a1@<X8>)
{
  v2 = a1 + *(type metadata accessor for ToolKitProtoAssistantSchemaVersion(0) + 28);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  return result;
}

uint64_t sub_20E2348AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, void *a5@<X8>)
{
  v9 = a5 + *(a4(0) + 28);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;
  return result;
}

uint64_t ToolKitProtoAssistantToolSchemaDefinition.sampleInvocations.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t ToolKitProtoAssistantToolSchemaDefinition.description_p.getter()
{
  v1 = (v0 + *(type metadata accessor for ToolKitProtoAssistantToolSchemaDefinition(0) + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ToolKitProtoAssistantToolSchemaDefinition.description_p.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ToolKitProtoAssistantToolSchemaDefinition(0) + 32));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ToolKitProtoAssistantToolSchemaDefinition.init()@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for ToolKitProtoAssistantToolSchemaDefinition(0);
  v3 = v2[7];
  v4 = type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = &a1[v2[8]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = &a1[v2[9]];
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  v8 = MEMORY[0x277D84F90];
  *(a1 + 2) = MEMORY[0x277D84F90];
  *(a1 + 3) = v8;
  return result;
}

uint64_t ToolKitProtoAssistantToolSchemaDefinition.init(identifier:name:description_p:parameters:sampleInvocations:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v16 = type metadata accessor for ToolKitProtoAssistantToolSchemaDefinition(0);
  v17 = v16[7];
  v18 = type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0);
  (*(*(v18 - 8) + 56))(&a8[v17], 1, 1, v18);
  v19 = v16[9];
  v20 = &a8[v16[8]];
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  result = sub_20E05EC5C(a1, &a8[v17], &qword_27C869B00, &unk_20E346240);
  *a8 = a2;
  *(a8 + 1) = a3;
  *v20 = a4;
  *(v20 + 1) = a5;
  *(a8 + 2) = a6;
  *(a8 + 3) = a7;
  return result;
}

uint64_t sub_20E2352E8@<X0>(uint64_t (*a1)(void)@<X0>, char *a2@<X8>)
{
  v3 = a1(0);
  v4 = v3[5];
  v5 = type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = v3[6];
  v7 = type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  (*(*(v7 - 8) + 56))(&a2[v6], 1, 1, v7);
  v8 = &a2[v3[7]];
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_20E2353DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, char *a5@<X8>)
{
  v9 = a4(0);
  v10 = v9[5];
  v11 = type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0);
  (*(*(v11 - 8) + 56))(&a5[v10], 1, 1, v11);
  v12 = v9[6];
  v13 = type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  (*(*(v13 - 8) + 56))(&a5[v12], 1, 1, v13);
  v14 = &a5[v9[7]];
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  sub_20E05EC5C(a1, &a5[v10], &qword_27C869B00, &unk_20E346240);
  *a5 = a2;
  return sub_20E05EC5C(a3, &a5[v12], &qword_27C868A20, &qword_20E345F10);
}

uint64_t ToolKitProtoSystemToolProtocol.ConditionallyEnabled.init()@<X0>(_BYTE *a1@<X8>)
{
  v2 = &a1[*(type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled(0) + 20)];
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  return result;
}

uint64_t ToolKitProtoSystemToolProtocol.ConditionallyEnabled.init(persistState:)@<X0>(char a1@<W0>, _BYTE *a2@<X8>)
{
  v4 = &a2[*(type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled(0) + 20)];
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = a1;
  return result;
}

void ToolKitProtoSystemToolProtocol.IntentSideEffect.intentSideEffectKind.getter(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 5);
  *(a1 + 4) = *(v1 + 4);
  *a1 = v2;
  *(a1 + 5) = v3;
}

int *ToolKitProtoSystemToolProtocol.IntentSideEffect.intentSideEffectKind.setter(int *result)
{
  v2 = *result;
  v3 = *(result + 5);
  *(v1 + 4) = *(result + 4);
  *v1 = v2;
  *(v1 + 5) = v3;
  return result;
}

uint64_t ToolKitProtoSystemToolProtocol.IntentSideEffect.init()@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 4) = 256;
  *a1 = 0;
  v1 = a1 + *(type metadata accessor for ToolKitProtoSystemToolProtocol.IntentSideEffect(0) + 20);
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t static ToolKitProtoSystemToolProtocol.ToolKitProtoIntentSideEffectKind.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 4);
  v3 = (*a1 == *a2) & ~v2;
  if (*a2)
  {
    v4 = *(a2 + 4);
  }

  else
  {
    v4 = 0;
  }

  if (*a2)
  {
    v2 = 0;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = v2;
  }

  if (*(a1 + 4) == 1)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_20E235C98(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 4);
  v3 = (*a1 == *a2) & ~v2;
  if (*a2)
  {
    v4 = *(a2 + 4);
  }

  else
  {
    v4 = 0;
  }

  if (*a2)
  {
    v2 = 0;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = v2;
  }

  if (*(a1 + 4) == 1)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

uint64_t ToolKitProtoToolDefinition.Version1.name.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ToolKitProtoToolDefinition.Version1.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ToolKitProtoToolDefinition.Version1.parameters.setter(uint64_t a1)
{
  v3 = *(v1 + 40);

  *(v1 + 40) = a1;
  return result;
}

uint64_t ToolKitProtoToolDefinition.Version1.categories.setter(uint64_t a1)
{
  v3 = *(v1 + 48);

  *(v1 + 48) = a1;
  return result;
}

uint64_t ToolKitProtoToolDefinition.Version1.searchKeywords.setter(uint64_t a1)
{
  v3 = *(v1 + 56);

  *(v1 + 56) = a1;
  return result;
}

uint64_t ToolKitProtoToolDefinition.Version1.requirements.setter(uint64_t a1)
{
  v3 = *(v1 + 64);

  *(v1 + 64) = a1;
  return result;
}

uint64_t ToolKitProtoToolDefinition.Version1.flags.setter(uint64_t a1)
{
  v3 = *(v1 + 72);

  *(v1 + 72) = a1;
  return result;
}

uint64_t ToolKitProtoToolDefinition.Version1.sampleInvocations.setter(uint64_t a1)
{
  v3 = *(v1 + 88);

  *(v1 + 88) = a1;
  return result;
}

uint64_t ToolKitProtoToolDefinition.Version1.systemProtocols.setter(uint64_t a1)
{
  v3 = *(v1 + 96);

  *(v1 + 96) = a1;
  return result;
}

uint64_t ToolKitProtoToolDefinition.Version1.hiddenParameters.setter(uint64_t a1)
{
  v3 = *(v1 + 104);

  *(v1 + 104) = a1;
  return result;
}

uint64_t ToolKitProtoToolDefinition.Version1.visibilityFlags.setter(uint64_t a1)
{
  v3 = *(v1 + 112);

  *(v1 + 112) = a1;
  return result;
}

uint64_t ToolKitProtoToolDefinition.Version1.outputResultName.getter()
{
  v1 = (v0 + *(type metadata accessor for ToolKitProtoToolDefinition.Version1(0) + 72));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ToolKitProtoToolDefinition.Version1.outputResultName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ToolKitProtoToolDefinition.Version1(0) + 72));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ToolKitProtoToolDefinition.Version1.descriptionSummary.getter()
{
  v1 = (v0 + *(type metadata accessor for ToolKitProtoToolDefinition.Version1(0) + 80));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ToolKitProtoToolDefinition.Version1.descriptionSummary.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ToolKitProtoToolDefinition.Version1(0) + 80));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

LighthouseDataProcessor::ToolKitProtoToolDefinition::Version1::ToolType_optional __swiftcall ToolKitProtoToolDefinition.Version1.ToolType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_20E236A90(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E24F30C();

  return MEMORY[0x28217E238](a1, a2, v4);
}

LighthouseDataProcessor::ToolKitProtoToolDefinition::Version1::Flag_optional __swiftcall ToolKitProtoToolDefinition.Version1.Flag.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue > 7)
  {
    if (rawValue > 31)
    {
      if (rawValue == 32)
      {
        *v1 = 6;
        return rawValue;
      }

      if (rawValue == 64)
      {
        *v1 = 7;
        return rawValue;
      }
    }

    else
    {
      if (rawValue == 8)
      {
        *v1 = 4;
        return rawValue;
      }

      if (rawValue == 16)
      {
        *v1 = 5;
        return rawValue;
      }
    }

LABEL_20:
    *v1 = 8;
    return rawValue;
  }

  if (rawValue > 1)
  {
    if (rawValue == 2)
    {
      *v1 = 2;
      return rawValue;
    }

    if (rawValue == 4)
    {
      *v1 = 3;
      return rawValue;
    }

    goto LABEL_20;
  }

  if (!rawValue)
  {
    *v1 = 0;
    return rawValue;
  }

  if (rawValue != 1)
  {
    goto LABEL_20;
  }

  *v1 = 1;
  return rawValue;
}

uint64_t sub_20E236C0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E24F2B8();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_20E236C74(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E24F264();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_20E236CDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E24F210();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t ToolKitProtoToolDefinition.Version1.Parameter.relationships.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t ToolKitProtoToolDefinition.Version1.Parameter.description_p.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t ToolKitProtoToolDefinition.Version1.Parameter.description_p.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 64);

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

LighthouseDataProcessor::ToolKitProtoToolDefinition::Version1::Parameter::ParameterFlags_optional __swiftcall ToolKitProtoToolDefinition.Version1.Parameter.ParameterFlags.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_20E236F4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E24F1BC();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan.values.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t sub_20E237468@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a2 + *(a1(0) + 24);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = MEMORY[0x277D84F90];
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_20E2374CC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v7 = a4 + *(a3(0) + 24);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a4 = a1;
  *(a4 + 8) = a2;
  return result;
}

uint64_t ToolKitProtoToolDefinition.Version1.Parameter.init()@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter(0);
  *(a1 + 7) = 0;
  *(a1 + 8) = 0;
  v3 = *(v2 + 40);
  v4 = type metadata accessor for ToolKitProtoTypeInstance(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = &a1[*(v2 + 44)];
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  *(a1 + 2) = 0;
  *(a1 + 3) = 0xE000000000000000;
  v7 = MEMORY[0x277D84F90];
  *(a1 + 4) = MEMORY[0x277D84F90];
  *(a1 + 5) = v7;
  *(a1 + 6) = v7;
  return result;
}

uint64_t ToolKitProtoToolDefinition.Version1.Parameter.init(key:name:description_p:valueType:relationships:sampleInvocations:flags:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v18 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter(0);
  v19 = *(v18 + 40);
  v20 = type metadata accessor for ToolKitProtoTypeInstance(0);
  (*(*(v20 - 8) + 56))(&a9[v19], 1, 1, v20);
  v21 = &a9[*(v18 + 44)];
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  *(a9 + 7) = a5;
  *(a9 + 8) = a6;
  result = sub_20E05EC5C(a7, &a9[v19], &qword_27C863C48, &qword_20E323F30);
  *(a9 + 4) = a8;
  *(a9 + 5) = a10;
  *(a9 + 6) = a11;
  return result;
}

LighthouseDataProcessor::ToolKitProtoToolDefinition::Version1::ToolIcon::ToolSymbolIconStyle_optional __swiftcall ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIconStyle.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_20E237BF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E24F168();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon.foreground.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon.foreground.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon.background.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon.background.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon(0);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v3 = a1 + *(v2 + 32);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0xE000000000000000;
  return result;
}

uint64_t ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon.init(name:style:foreground:background:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v15 = *a3;
  v16 = a8 + *(type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon(0) + 32);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = v15;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7;
  return result;
}

uint64_t ToolKitProtoToolDefinition.Version1.Deprecation.replacedByToolID.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ToolKitProtoToolDefinition.Version1.Deprecation.replacedByToolID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_20E23813C@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  v3 = a1(0);
  a2[2] = 0;
  a2[3] = 0;
  v4 = a2 + *(v3 + 24);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  return result;
}

uint64_t sub_20E23819C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void)@<X4>, void *a6@<X8>)
{
  v11 = a6 + *(a5(0) + 24);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  return result;
}

uint64_t ToolKitProtoToolDefinition.Version1.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ToolKitProtoToolDefinition.Version1(0) + 100);
  v4 = sub_20E3221C0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ToolKitProtoToolDefinition.Version1.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ToolKitProtoToolDefinition.Version1(0) + 100);
  v4 = sub_20E3221C0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ToolKitProtoToolDefinition.Version1.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  v3 = v2[17];
  v4 = type metadata accessor for ToolKitProtoTypeInstance(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = (a1 + v2[18]);
  *v5 = 0;
  v5[1] = 0;
  v6 = v2[19];
  v7 = type metadata accessor for ToolKitProtoAppDefinition(0);
  (*(*(v7 - 8) + 56))(a1 + v6, 1, 1, v7);
  v8 = (a1 + v2[20]);
  *v8 = 0;
  v8[1] = 0;
  v9 = v2[21];
  v10 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Deprecation(0);
  (*(*(v10 - 8) + 56))(a1 + v9, 1, 1, v10);
  v11 = v2[22];
  v12 = type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon(0);
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  v13 = v2[23];
  v14 = type metadata accessor for ToolKitProtoContainerDefinition(0);
  v15 = *(*(v14 - 8) + 56);
  v15(a1 + v13, 1, 1, v14);
  v15(a1 + v2[24], 1, 1, v14);
  v16 = a1 + v2[25];
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  v18 = MEMORY[0x277D84F90];
  *(a1 + 40) = MEMORY[0x277D84F90];
  *(a1 + 48) = v18;
  *(a1 + 56) = v18;
  *(a1 + 64) = v18;
  *(a1 + 72) = v18;
  *(a1 + 80) = 0;
  *(a1 + 88) = v18;
  *(a1 + 96) = v18;
  *(a1 + 104) = v18;
  *(a1 + 112) = v18;
  return result;
}

uint64_t ToolKitProtoToolDefinition.Version1.init(id:name:toolType:parameters:outputType:outputResultName:sourceApplication:descriptionSummary:categories:searchKeywords:deprecationDefinition:requirements:flags:authenticationPolicy:sampleInvocations:systemProtocols:customIcon:hiddenParameters:sourceContainer:attributionContainer:visibilityFlags:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  v45 = *a5;
  v52 = *a19;
  v27 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  v28 = v27[17];
  v44 = v28;
  v29 = type metadata accessor for ToolKitProtoTypeInstance(0);
  (*(*(v29 - 8) + 56))(a9 + v28, 1, 1, v29);
  v30 = v27[19];
  v43 = (a9 + v27[18]);
  v31 = type metadata accessor for ToolKitProtoAppDefinition(0);
  (*(*(v31 - 8) + 56))(a9 + v30, 1, 1, v31);
  v32 = v27[21];
  v33 = (a9 + v27[20]);
  v34 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Deprecation(0);
  (*(*(v34 - 8) + 56))(a9 + v32, 1, 1, v34);
  v35 = v27[22];
  v36 = type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon(0);
  (*(*(v36 - 8) + 56))(a9 + v35, 1, 1, v36);
  v37 = v27[23];
  v38 = type metadata accessor for ToolKitProtoContainerDefinition(0);
  v39 = *(*(v38 - 8) + 56);
  v39(a9 + v37, 1, 1, v38);
  v40 = v27[24];
  v39(a9 + v40, 1, 1, v38);
  v41 = a9 + v27[25];
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = v45;
  *(a9 + 40) = a6;
  sub_20E05EC5C(a7, a9 + v44, &qword_27C863C48, &qword_20E323F30);
  *v43 = a8;
  v43[1] = a10;
  sub_20E05EC5C(a11, a9 + v30, &qword_27C869D28, &qword_20E346350);
  *v33 = a12;
  v33[1] = a13;
  *(a9 + 48) = a14;
  *(a9 + 56) = a15;
  sub_20E05EC5C(a16, a9 + v32, &qword_27C869D30, &qword_20E346358);
  *(a9 + 64) = a17;
  *(a9 + 72) = a18;
  *(a9 + 80) = v52;
  *(a9 + 88) = a20;
  *(a9 + 96) = a21;
  sub_20E05EC5C(a22, a9 + v35, &qword_27C869D38, &qword_20E346360);
  *(a9 + 104) = a23;
  sub_20E05EC5C(a24, a9 + v37, &qword_27C869D40, &qword_20E346368);
  result = sub_20E05EC5C(a25, a9 + v40, &qword_27C869D40, &qword_20E346368);
  *(a9 + 112) = a26;
  return result;
}

uint64_t ToolKitProtoAppDefinition.bundleID.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t ToolKitProtoAppDefinition.bundleID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t ToolKitProtoAppDefinition.bundleVersion.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t ToolKitProtoAppDefinition.bundleVersion.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t ToolKitProtoAppDefinition.teamID.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t ToolKitProtoAppDefinition.teamID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 72);

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t sub_20E238B98(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E24F114();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t ToolKitProtoAppDefinition.Device.deviceKind.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return sub_20E040B60(v2, v3);
}

uint64_t ToolKitProtoAppDefinition.Device.deviceKind.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_20E040B74(*v1, v1[1]);
  *v1 = v2;
  v1[1] = v3;
  return result;
}

uint64_t sub_20E238D18@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 44);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_20E238DB4(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 44);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t ToolKitProtoAppDefinition.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ToolKitProtoAppDefinition(0);
  v3 = *(v2 + 40);
  v4 = type metadata accessor for ToolKitProtoAppDefinition.Device(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = a1 + *(v2 + 44);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xE000000000000000;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0xE000000000000000;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0xE000000000000000;
  *(a1 + 80) = 0;
  return result;
}

uint64_t ToolKitProtoAppDefinition.init(id:name:bundleID:bundleVersion:teamID:device:origin:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, char *a13)
{
  v26 = *a13;
  v19 = type metadata accessor for ToolKitProtoAppDefinition(0);
  v20 = *(v19 + 40);
  v21 = type metadata accessor for ToolKitProtoAppDefinition.Device(0);
  (*(*(v21 - 8) + 56))(a9 + v20, 1, 1, v21);
  v22 = a9 + *(v19 + 44);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11;
  result = sub_20E05EC5C(a12, a9 + v20, &qword_27C869D50, &qword_20E346388);
  *(a9 + 80) = v26;
  return result;
}

uint64_t sub_20E2391B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E24F0C0();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_20E239218(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E24F06C();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_20E239324@<X0>(uint64_t (*a1)(void)@<X0>, _OWORD *a2@<X8>)
{
  *a2 = xmmword_20E346220;
  v2 = a2 + *(a1(0) + 20);
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t ToolKitProtoContainerDefinition.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ToolKitProtoContainerDefinition(0);
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  v3 = *(v2 + 40);
  v4 = type metadata accessor for ToolKitProtoContainerDefinition.Device(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = a1 + *(v2 + 44);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  return result;
}

uint64_t ToolKitProtoContainerDefinition.init(name:containerID:bundleVersion:containerType:teamID:device:origin:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char *a12)
{
  v18 = *a7;
  v25 = *a12;
  v19 = type metadata accessor for ToolKitProtoContainerDefinition(0);
  v20 = *(v19 + 40);
  v21 = type metadata accessor for ToolKitProtoContainerDefinition.Device(0);
  (*(*(v21 - 8) + 56))(a9 + v20, 1, 1, v21);
  v22 = a9 + *(v19 + 44);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 40) = a5;
  *(a9 + 48) = a6;
  *(a9 + 32) = v18;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  result = sub_20E05EC5C(a11, a9 + v20, &qword_27C869D58, &qword_20E346390);
  *(a9 + 33) = v25;
  return result;
}

uint64_t ToolKitProtoTypeDisplayRepresentation.numericFormat.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t ToolKitProtoTypeDisplayRepresentation.numericFormat.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t ToolKitProtoTypeDisplayRepresentation.init()@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  a1[3] = 0;
  a1[4] = 0;
  v3 = a1 + *(v2 + 28);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = MEMORY[0x277D84F90];
  return result;
}

uint64_t ToolKitProtoTypeDisplayRepresentation.init(name:numericFormat:synonyms:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v12 = a6 + *(type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0) + 28);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a6 = a1;
  a6[1] = a2;
  a6[3] = a3;
  a6[4] = a4;
  a6[2] = a5;
  return result;
}

uint64_t ToolKitProtoPluginModelData.value.getter()
{
  v1 = *v0;
  sub_20E05E834(*v0, *(v0 + 8));
  return v1;
}

uint64_t ToolKitProtoPluginModelData.value.setter(uint64_t a1, uint64_t a2)
{
  result = sub_20E05E888(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

double sub_20E2398C8@<D0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a2 + *(a1(0) + 24);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  result = 0.0;
  *a2 = xmmword_20E326350;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  return result;
}

double sub_20E239C80@<D0>(uint64_t (*a1)(void)@<X0>, _OWORD *a2@<X8>)
{
  v3 = a2 + *(a1(0) + 20);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  result = 0.0;
  *a2 = xmmword_20E326350;
  return result;
}

uint64_t ToolKitProtoDisplayRepresentation.Image.Static.Symbol.tintColorData.getter()
{
  v1 = *(v0 + 16);
  sub_20E047C8C(v1, *(v0 + 24));
  return v1;
}

uint64_t ToolKitProtoDisplayRepresentation.Image.Static.Symbol.tintColorData.setter(uint64_t a1, uint64_t a2)
{
  result = sub_20E047D10(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ToolKitProtoDisplayRepresentation.Image.Static.Symbol.configurationData.getter()
{
  v1 = *(v0 + 32);
  sub_20E047C8C(v1, *(v0 + 40));
  return v1;
}

uint64_t ToolKitProtoDisplayRepresentation.Image.Static.Symbol.configurationData.setter(uint64_t a1, uint64_t a2)
{
  result = sub_20E047D10(*(v2 + 32), *(v2 + 40));
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t ToolKitProtoDisplayRepresentation.Image.Static.Symbol.init()@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 16) = xmmword_20E323EA0;
  *(a1 + 32) = xmmword_20E323EA0;
  v2 = a1 + *(type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol(0) + 28);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  return result;
}

uint64_t ToolKitProtoDisplayRepresentation.Image.Static.Symbol.init(name:tintColorData:configurationData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *(a7 + 1) = xmmword_20E323EA0;
  *(a7 + 2) = xmmword_20E323EA0;
  v14 = a7 + *(type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol(0) + 28);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a7 = a1;
  a7[1] = a2;
  sub_20E047D10(a7[2], a7[3]);
  a7[2] = a3;
  a7[3] = a4;
  result = sub_20E047D10(a7[4], a7[5]);
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t ToolKitProtoDisplayRepresentation.init()@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  v3 = v2[6];
  v4 = type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = v2[7];
  v6 = type metadata accessor for ToolKitProtoDisplayRepresentation.AltText(0);
  (*(*(v6 - 8) + 56))(&a1[v5], 1, 1, v6);
  v7 = v2[8];
  v8 = type metadata accessor for ToolKitProtoDisplayRepresentation.Image(0);
  (*(*(v8 - 8) + 56))(&a1[v7], 1, 1, v8);
  v9 = v2[9];
  v10 = type metadata accessor for ToolKitProtoPluginModelData(0);
  (*(*(v10 - 8) + 56))(&a1[v9], 1, 1, v10);
  v11 = &a1[v2[10]];
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  *(a1 + 2) = MEMORY[0x277D84F90];
  return result;
}

uint64_t ToolKitProtoDisplayRepresentation.init(title:subtitle:altText:image:synonyms:snippetPluginModel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v13 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  v14 = v13[6];
  v15 = type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle(0);
  (*(*(v15 - 8) + 56))(&a8[v14], 1, 1, v15);
  v16 = v13[7];
  v17 = type metadata accessor for ToolKitProtoDisplayRepresentation.AltText(0);
  (*(*(v17 - 8) + 56))(&a8[v16], 1, 1, v17);
  v18 = v13[8];
  v19 = type metadata accessor for ToolKitProtoDisplayRepresentation.Image(0);
  (*(*(v19 - 8) + 56))(&a8[v18], 1, 1, v19);
  v20 = v13[9];
  v21 = type metadata accessor for ToolKitProtoPluginModelData(0);
  (*(*(v21 - 8) + 56))(&a8[v20], 1, 1, v21);
  v22 = &a8[v13[10]];
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a8 = a1;
  *(a8 + 1) = a2;
  sub_20E05EC5C(a3, &a8[v14], &qword_27C869D60, &qword_20E346398);
  sub_20E05EC5C(a4, &a8[v16], &qword_27C869D68, &qword_20E3463A0);
  sub_20E05EC5C(a5, &a8[v18], &qword_27C869D70, &qword_20E3463A8);
  *(a8 + 2) = a6;
  return sub_20E05EC5C(a7, &a8[v20], &qword_27C869D78, &qword_20E3463B0);
}

uint64_t sub_20E23AA4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E24F018();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t ToolKitProtoCoercionDefinition.init()@<X0>(_BYTE *a1@<X8>)
{
  v2 = type metadata accessor for ToolKitProtoCoercionDefinition(0);
  v3 = *(v2 + 20);
  v4 = type metadata accessor for ToolKitProtoTypeInstance(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = &a1[*(v2 + 24)];
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  return result;
}

uint64_t ToolKitProtoCoercionDefinition.init(direction:typeInstance:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  v6 = type metadata accessor for ToolKitProtoCoercionDefinition(0);
  v7 = *(v6 + 20);
  v8 = type metadata accessor for ToolKitProtoTypeInstance(0);
  (*(*(v8 - 8) + 56))(&a3[v7], 1, 1, v8);
  v9 = &a3[*(v6 + 24)];
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a3 = v5;
  return sub_20E05EC5C(a2, &a3[v7], &qword_27C863C48, &qword_20E323F30);
}

BOOL _s23LighthouseDataProcessor26ToolKitProtoTypeIdentifierV0deF13PrimitiveKindO2eeoiySbAE_AEtFZ_0(_BYTE *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  switch(*a1)
  {
    case 0x17:
      if (v2 != 23)
      {
        goto LABEL_40;
      }

      result = 1;
      break;
    case 0x18:
      if (v2 != 24)
      {
        goto LABEL_40;
      }

      result = 1;
      break;
    case 0x19:
      if (v2 != 25)
      {
        goto LABEL_40;
      }

      result = 1;
      break;
    case 0x1A:
      if (v2 != 26)
      {
        goto LABEL_40;
      }

      result = 1;
      break;
    case 0x1B:
      if (v2 != 27)
      {
        goto LABEL_40;
      }

      result = 1;
      break;
    case 0x1C:
      if (v2 != 28)
      {
        goto LABEL_40;
      }

      result = 1;
      break;
    case 0x1D:
      if (v2 != 29)
      {
        goto LABEL_40;
      }

      result = 1;
      break;
    case 0x1E:
      if (v2 != 30)
      {
        goto LABEL_40;
      }

      result = 1;
      break;
    case 0x1F:
      if (v2 != 31)
      {
        goto LABEL_40;
      }

      result = 1;
      break;
    case 0x20:
      if (v2 != 32)
      {
        goto LABEL_40;
      }

      result = 1;
      break;
    case 0x21:
      if (v2 != 33)
      {
        goto LABEL_40;
      }

      result = 1;
      break;
    case 0x22:
      if (v2 != 34)
      {
        goto LABEL_40;
      }

      result = 1;
      break;
    case 0x23:
      if (v2 != 35)
      {
        goto LABEL_40;
      }

      result = 1;
      break;
    case 0x24:
      if (v2 != 36)
      {
        goto LABEL_40;
      }

      result = 1;
      break;
    case 0x25:
      if (v2 != 37)
      {
        goto LABEL_40;
      }

      result = 1;
      break;
    case 0x26:
      if (v2 != 38)
      {
        goto LABEL_40;
      }

      result = 1;
      break;
    case 0x27:
      if (v2 != 39)
      {
        goto LABEL_40;
      }

      result = 1;
      break;
    case 0x28:
      if (v2 != 40)
      {
        goto LABEL_40;
      }

      result = 1;
      break;
    default:
      if ((v2 - 23) < 0x12)
      {
LABEL_40:
        result = 0;
      }

      else
      {
        result = *a1 == v2;
      }

      break;
  }

  return result;
}

uint64_t _s23LighthouseDataProcessor012ToolKitProtoD13SummaryStringV0deF13ComponentKindO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  v6 = *(a2 + 16);
  if ((a1[2] & 1) == 0)
  {
    if ((a2[2] & 1) == 0)
    {
      v12 = *a1;
      if (v3 != v5 || v2 != v4)
      {
        goto LABEL_14;
      }

      goto LABEL_15;
    }

LABEL_9:
    v9 = *a2;
    v10 = a2[1];
    sub_20E19591C();
    sub_20E19591C();
    sub_20E19593C();
    sub_20E19593C();
    return 0;
  }

  if ((a2[2] & 1) == 0)
  {
    goto LABEL_9;
  }

  v7 = *a1;
  if (v3 != v5 || v2 != v4)
  {
LABEL_14:
    v14 = sub_20E322D60();
    sub_20E19591C();
    sub_20E19591C();
    sub_20E19593C();
    sub_20E19593C();
    return v14 & 1;
  }

LABEL_15:
  sub_20E19591C();
  sub_20E19591C();
  sub_20E19593C();
  sub_20E19593C();
  return 1;
}

uint64_t sub_20E23B1C4(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (!v4)
  {
    if (!v5)
    {
      swift_bridgeObjectRelease_n();
      return 1;
    }

    return 0;
  }

  if (!v5)
  {
    return 0;
  }

  if (*a1 == *a2 && v4 == v5)
  {
    return 1;
  }

  return sub_20E322D60();
}

uint64_t _s23LighthouseDataProcessor45ToolKitProtoAssistantTypeSchemaDefinitionKindO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = (&v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = (&v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v18 = (&v31 - v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86A480, &qword_20E34A100);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = &v31 - v22;
  v24 = *(v21 + 56);
  sub_20E24F914(a1, &v31 - v22, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind);
  sub_20E24F914(a2, &v23[v24], type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_20E24F914(v23, v16, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_20E24F8AC(&v23[v24], v7, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration);
      v25 = static ToolKitProtoAssistantTypeSchemaDefinition.Enumeration.== infix(_:_:)(v16, v7);
      sub_20E24F84C(v7, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration);
      v26 = v16;
      v27 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration;
LABEL_9:
      sub_20E24F84C(v26, v27);
      sub_20E24F84C(v23, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind);
      return v25 & 1;
    }

    v28 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration;
    v29 = v16;
  }

  else
  {
    sub_20E24F914(v23, v18, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_20E24F8AC(&v23[v24], v11, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity);
      v25 = static ToolKitProtoAssistantTypeSchemaDefinition.Entity.== infix(_:_:)(v18, v11);
      sub_20E24F84C(v11, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity);
      v26 = v18;
      v27 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity;
      goto LABEL_9;
    }

    v28 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity;
    v29 = v18;
  }

  sub_20E24F84C(v29, v28);
  sub_20E04875C(v23, &qword_27C86A480, &qword_20E34A100);
  v25 = 0;
  return v25 & 1;
}

uint64_t _s23LighthouseDataProcessor33ToolKitProtoDisplayRepresentationV5ImageV0deF10StaticKindO2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = (&v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x28223BE20](v10);
  v15 = (&v37 - v14);
  MEMORY[0x28223BE20](v13);
  v17 = (&v37 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86A450, &qword_20E34A0D0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v37 - v21;
  v23 = (&v37 + *(v20 + 56) - v21);
  sub_20E24F914(a1, &v37 - v21, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind);
  sub_20E24F914(a2, v23, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_20E24F914(v22, v17, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind);
    v26 = *v17;
    v27 = v17[1];
    if (!swift_getEnumCaseMultiPayload())
    {
      v34 = *v23;
      v33 = v23[1];
      v25 = sub_20E15F7B0(v26, v27, v34, v33);
      sub_20E05E888(v34, v33);
      sub_20E05E888(v26, v27);
      goto LABEL_19;
    }

    sub_20E05E888(v26, v27);
    goto LABEL_16;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_20E24F914(v22, v15, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_20E24F8AC(v23, v7, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol);
      v25 = _s23LighthouseDataProcessor33ToolKitProtoDisplayRepresentationV5ImageV6StaticV6SymbolV2eeoiySbAI_AItFZ_0(v15, v7);
      sub_20E24F84C(v7, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol);
      sub_20E24F84C(v15, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol);
LABEL_19:
      sub_20E24F84C(v22, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind);
      return v25 & 1;
    }

    sub_20E24F84C(v15, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol);
    goto LABEL_16;
  }

  sub_20E24F914(v22, v12, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind);
  v29 = *v12;
  v28 = v12[1];
  if (swift_getEnumCaseMultiPayload() != 2)
  {

LABEL_16:
    sub_20E04875C(v22, &qword_27C86A450, &qword_20E34A0D0);
    goto LABEL_17;
  }

  if (v29 == *v23 && v28 == v23[1])
  {
    v35 = v23[1];

    goto LABEL_21;
  }

  v31 = v23[1];
  v32 = sub_20E322D60();

  if (v32)
  {
LABEL_21:
    sub_20E24F84C(v22, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind);
    v25 = 1;
    return v25 & 1;
  }

  sub_20E24F84C(v22, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind);
LABEL_17:
  v25 = 0;
  return v25 & 1;
}

uint64_t _s23LighthouseDataProcessor33ToolKitProtoDisplayRepresentationV0deF9ImageKindO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for ToolKitProtoDisplayRepresentation.Storage(0);
  v8 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v30 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86A448, &qword_20E34A0C8);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v30 - v21;
  v23 = *(v20 + 56);
  sub_20E24F914(a1, &v30 - v21, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind);
  sub_20E24F914(a2, &v22[v23], type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_20E24F914(v22, v17, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_20E24F8AC(&v22[v23], v10, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
      if (sub_20E15F7B0(*v17, *(v17 + 1), *v10, *(v10 + 1)))
      {
        v27 = *(v31 + 20);
        sub_20E3221C0();
        sub_20E1EF2E8();
        v28 = sub_20E322850();
        sub_20E24F84C(v10, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
        if (v28)
        {
          sub_20E24F84C(v17, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
          sub_20E24F84C(v22, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind);
          v24 = 1;
          return v24 & 1;
        }
      }

      else
      {
        sub_20E24F84C(v10, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
      }

      sub_20E24F84C(v17, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
      sub_20E24F84C(v22, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind);
LABEL_13:
      v24 = 0;
      return v24 & 1;
    }

    v25 = type metadata accessor for ToolKitProtoDisplayRepresentation.Storage;
    v26 = v17;
LABEL_7:
    sub_20E24F84C(v26, v25);
    sub_20E04875C(v22, &qword_27C86A448, &qword_20E34A0C8);
    goto LABEL_13;
  }

  sub_20E24F914(v22, v15, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v25 = type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static;
    v26 = v15;
    goto LABEL_7;
  }

  sub_20E24F8AC(&v22[v23], v7, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static);
  v24 = _s23LighthouseDataProcessor33ToolKitProtoDisplayRepresentationV5ImageV6StaticV2eeoiySbAG_AGtFZ_0(v15, v7);
  sub_20E24F84C(v7, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static);
  sub_20E24F84C(v15, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static);
  sub_20E24F84C(v22, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind);
  return v24 & 1;
}

uint64_t _s23LighthouseDataProcessor33ToolKitProtoDisplayRepresentationV0deF11AltTextKindO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v35 = type metadata accessor for ToolKitProtoDisplayRepresentation.AltText.Static(0);
  v4 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35);
  v6 = (&v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = type metadata accessor for ToolKitProtoDisplayRepresentation.Storage(0);
  v7 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = (&v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v16 = &v34 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86A458, &qword_20E34A0D8);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v21 = &v34 - v20;
  v22 = *(v19 + 56);
  sub_20E24F914(a1, &v34 - v20, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind);
  sub_20E24F914(a2, &v21[v22], type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_20E24F914(v21, v14, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_20E24F8AC(&v21[v22], v6, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText.Static);
      v23 = *v14 == *v6 && v14[1] == v6[1];
      if (v23 || (sub_20E322D60() & 1) != 0)
      {
        v24 = *(v35 + 20);
        sub_20E3221C0();
        sub_20E1EF2E8();
        if (sub_20E322850())
        {
          sub_20E24F84C(v6, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText.Static);
          v25 = v14;
          v26 = type metadata accessor for ToolKitProtoDisplayRepresentation.AltText.Static;
LABEL_17:
          sub_20E24F84C(v25, v26);
          sub_20E24F84C(v21, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind);
          return 1;
        }
      }

      sub_20E24F84C(v6, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText.Static);
      v32 = v14;
      v33 = type metadata accessor for ToolKitProtoDisplayRepresentation.AltText.Static;
LABEL_21:
      sub_20E24F84C(v32, v33);
      sub_20E24F84C(v21, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind);
      return 0;
    }

    v27 = type metadata accessor for ToolKitProtoDisplayRepresentation.AltText.Static;
    v28 = v14;
  }

  else
  {
    sub_20E24F914(v21, v16, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_20E24F8AC(&v21[v22], v9, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
      if (sub_20E15F7B0(*v16, *(v16 + 1), *v9, *(v9 + 1)))
      {
        v29 = *(v34 + 20);
        sub_20E3221C0();
        sub_20E1EF2E8();
        v30 = sub_20E322850();
        sub_20E24F84C(v9, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
        if (v30)
        {
          v26 = type metadata accessor for ToolKitProtoDisplayRepresentation.Storage;
          v25 = v16;
          goto LABEL_17;
        }
      }

      else
      {
        sub_20E24F84C(v9, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
      }

      v33 = type metadata accessor for ToolKitProtoDisplayRepresentation.Storage;
      v32 = v16;
      goto LABEL_21;
    }

    v27 = type metadata accessor for ToolKitProtoDisplayRepresentation.Storage;
    v28 = v16;
  }

  sub_20E24F84C(v28, v27);
  sub_20E04875C(v21, &qword_27C86A458, &qword_20E34A0D8);
  return 0;
}

uint64_t _s23LighthouseDataProcessor31ToolKitProtoComparisonPredicateV0defG4KindO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v119 = a2;
  v120 = a1;
  v2 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v111 = (&v98 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for ToolKitProtoTypedValue(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v110 = (&v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = MEMORY[0x28223BE20](v7);
  v109 = (&v98 - v10);
  v11 = MEMORY[0x28223BE20](v9);
  v108 = (&v98 - v12);
  v13 = MEMORY[0x28223BE20](v11);
  v107 = (&v98 - v14);
  v15 = MEMORY[0x28223BE20](v13);
  v106 = (&v98 - v16);
  v17 = MEMORY[0x28223BE20](v15);
  v105 = (&v98 - v18);
  v19 = MEMORY[0x28223BE20](v17);
  v104 = (&v98 - v20);
  v21 = MEMORY[0x28223BE20](v19);
  v103 = (&v98 - v22);
  v23 = MEMORY[0x28223BE20](v21);
  v102 = (&v98 - v24);
  v25 = MEMORY[0x28223BE20](v23);
  v101 = (&v98 - v26);
  v27 = MEMORY[0x28223BE20](v25);
  v100 = (&v98 - v28);
  MEMORY[0x28223BE20](v27);
  v99 = (&v98 - v29);
  v30 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  v31 = *(*(v30 - 8) + 64);
  v32 = MEMORY[0x28223BE20](v30);
  v118 = (&v98 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = MEMORY[0x28223BE20](v32);
  v117 = (&v98 - v35);
  v36 = MEMORY[0x28223BE20](v34);
  v116 = (&v98 - v37);
  v38 = MEMORY[0x28223BE20](v36);
  v115 = (&v98 - v39);
  v40 = MEMORY[0x28223BE20](v38);
  v114 = (&v98 - v41);
  v42 = MEMORY[0x28223BE20](v40);
  v113 = (&v98 - v43);
  v44 = MEMORY[0x28223BE20](v42);
  v112 = (&v98 - v45);
  v46 = MEMORY[0x28223BE20](v44);
  v48 = (&v98 - v47);
  v49 = MEMORY[0x28223BE20](v46);
  v51 = (&v98 - v50);
  v52 = MEMORY[0x28223BE20](v49);
  v54 = (&v98 - v53);
  v55 = MEMORY[0x28223BE20](v52);
  v57 = (&v98 - v56);
  v58 = MEMORY[0x28223BE20](v55);
  v60 = (&v98 - v59);
  MEMORY[0x28223BE20](v58);
  v62 = (&v98 - v61);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86A4A0, &qword_20E34A120);
  v64 = *(*(v63 - 8) + 64);
  v65 = MEMORY[0x28223BE20](v63 - 8);
  v67 = &v98 - v66;
  v68 = *(v65 + 56);
  sub_20E24F914(v120, &v98 - v66, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
  v120 = v68;
  sub_20E24F914(v119, &v67[v68], type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_20E24F914(v67, v60, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
      v88 = v120;
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_38;
      }

      v73 = &v67[v88];
      v74 = v100;
      goto LABEL_34;
    case 2u:
      sub_20E24F914(v67, v57, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
      v83 = v120;
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v84 = v101;
        sub_20E24F8AC(&v67[v83], v101, type metadata accessor for ToolKitProtoTypedValue);
        v77 = static ToolKitProtoTypedValue.== infix(_:_:)(v57, v84);
        v78 = type metadata accessor for ToolKitProtoTypedValue;
        sub_20E24F84C(v84, type metadata accessor for ToolKitProtoTypedValue);
        v79 = v57;
        goto LABEL_36;
      }

      v70 = type metadata accessor for ToolKitProtoTypedValue;
      v71 = v57;
      goto LABEL_40;
    case 3u:
      sub_20E24F914(v67, v54, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
      v85 = v120;
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v86 = v102;
        sub_20E24F8AC(&v67[v85], v102, type metadata accessor for ToolKitProtoTypedValue);
        v77 = static ToolKitProtoTypedValue.== infix(_:_:)(v54, v86);
        v78 = type metadata accessor for ToolKitProtoTypedValue;
        sub_20E24F84C(v86, type metadata accessor for ToolKitProtoTypedValue);
        v79 = v54;
        goto LABEL_36;
      }

      v70 = type metadata accessor for ToolKitProtoTypedValue;
      v71 = v54;
      goto LABEL_40;
    case 4u:
      sub_20E24F914(v67, v51, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
      v75 = v120;
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v76 = v103;
        sub_20E24F8AC(&v67[v75], v103, type metadata accessor for ToolKitProtoTypedValue);
        v77 = static ToolKitProtoTypedValue.== infix(_:_:)(v51, v76);
        v78 = type metadata accessor for ToolKitProtoTypedValue;
        sub_20E24F84C(v76, type metadata accessor for ToolKitProtoTypedValue);
        v79 = v51;
        goto LABEL_36;
      }

      v70 = type metadata accessor for ToolKitProtoTypedValue;
      v71 = v51;
      goto LABEL_40;
    case 5u:
      sub_20E24F914(v67, v48, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
      v89 = v120;
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v90 = v104;
        sub_20E24F8AC(&v67[v89], v104, type metadata accessor for ToolKitProtoTypedValue);
        v77 = static ToolKitProtoTypedValue.== infix(_:_:)(v48, v90);
        sub_20E24F84C(v90, type metadata accessor for ToolKitProtoTypedValue);
        v79 = v48;
        v91 = type metadata accessor for ToolKitProtoTypedValue;
        goto LABEL_37;
      }

      v70 = type metadata accessor for ToolKitProtoTypedValue;
      v71 = v48;
      goto LABEL_40;
    case 6u:
      v60 = v112;
      sub_20E24F914(v67, v112, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
      v92 = v120;
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_38;
      }

      v73 = &v67[v92];
      v74 = v105;
      goto LABEL_34;
    case 7u:
      v60 = v113;
      sub_20E24F914(v67, v113, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
      v87 = v120;
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_38;
      }

      v73 = &v67[v87];
      v74 = v106;
      goto LABEL_34;
    case 8u:
      v60 = v114;
      sub_20E24F914(v67, v114, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
      v94 = v120;
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        goto LABEL_38;
      }

      v73 = &v67[v94];
      v74 = v107;
      goto LABEL_34;
    case 9u:
      v60 = v115;
      sub_20E24F914(v67, v115, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
      v82 = v120;
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        goto LABEL_38;
      }

      v73 = &v67[v82];
      v74 = v108;
      goto LABEL_34;
    case 0xAu:
      v60 = v116;
      sub_20E24F914(v67, v116, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
      v93 = v120;
      if (swift_getEnumCaseMultiPayload() != 10)
      {
        goto LABEL_38;
      }

      v73 = &v67[v93];
      v74 = v109;
      goto LABEL_34;
    case 0xBu:
      v60 = v117;
      sub_20E24F914(v67, v117, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
      v72 = v120;
      if (swift_getEnumCaseMultiPayload() != 11)
      {
LABEL_38:
        v95 = type metadata accessor for ToolKitProtoTypedValue;
        goto LABEL_39;
      }

      v73 = &v67[v72];
      v74 = v110;
LABEL_34:
      sub_20E24F8AC(v73, v74, type metadata accessor for ToolKitProtoTypedValue);
      v77 = static ToolKitProtoTypedValue.== infix(_:_:)(v60, v74);
      v81 = type metadata accessor for ToolKitProtoTypedValue;
      goto LABEL_35;
    case 0xCu:
      v60 = v118;
      sub_20E24F914(v67, v118, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
      v80 = v120;
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        v95 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair;
LABEL_39:
        v70 = v95;
        v71 = v60;
        goto LABEL_40;
      }

      v74 = v111;
      sub_20E24F8AC(&v67[v80], v111, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair);
      v77 = static ToolKitProtoComparisonPredicate.Comparison.Pair.== infix(_:_:)(v60, v74);
      v81 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair;
LABEL_35:
      v78 = v81;
      sub_20E24F84C(v74, v81);
      v79 = v60;
      goto LABEL_36;
    case 0xDu:
      if (swift_getEnumCaseMultiPayload() == 13)
      {
        goto LABEL_27;
      }

      goto LABEL_41;
    case 0xEu:
      if (swift_getEnumCaseMultiPayload() != 14)
      {
        goto LABEL_41;
      }

      goto LABEL_27;
    case 0xFu:
      if (swift_getEnumCaseMultiPayload() != 15)
      {
        goto LABEL_41;
      }

LABEL_27:
      sub_20E24F84C(v67, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
      v77 = 1;
      return v77 & 1;
    default:
      sub_20E24F914(v67, v62, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
      v69 = v120;
      if (swift_getEnumCaseMultiPayload())
      {
        v70 = type metadata accessor for ToolKitProtoTypedValue;
        v71 = v62;
LABEL_40:
        sub_20E24F84C(v71, v70);
LABEL_41:
        sub_20E04875C(v67, &qword_27C86A4A0, &qword_20E34A120);
        v77 = 0;
      }

      else
      {
        v97 = v99;
        sub_20E24F8AC(&v67[v69], v99, type metadata accessor for ToolKitProtoTypedValue);
        v77 = static ToolKitProtoTypedValue.== infix(_:_:)(v62, v97);
        v78 = type metadata accessor for ToolKitProtoTypedValue;
        sub_20E24F84C(v97, type metadata accessor for ToolKitProtoTypedValue);
        v79 = v62;
LABEL_36:
        v91 = v78;
LABEL_37:
        sub_20E24F84C(v79, v91);
        sub_20E24F84C(v67, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
      }

      return v77 & 1;
  }
}

uint64_t _s23LighthouseDataProcessor34ToolKitProtoSystemTypeProtocolKindO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v43 = type metadata accessor for ToolKitProtoSystemTypeProtocol.PersistentFileIdentifiable(0);
  v4 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43);
  v46 = (&v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for ToolKitProtoSystemTypeProtocol.AssistantSchema(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for ToolKitProtoSystemTypeProtocol.IntentUpdatableEntity(0);
  v10 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44);
  v45 = (&v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for ToolKitProtoSystemTypeProtocolKind(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = (&v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v43 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = (&v43 - v20);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86A4D8, &qword_20E34A158);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v26 = &v43 - v25;
  v27 = *(v24 + 56);
  sub_20E24F914(a1, &v43 - v25, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
  sub_20E24F914(a2, &v26[v27], type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_20E24F914(v26, v19, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v28 = type metadata accessor for ToolKitProtoSystemTypeProtocol.AssistantSchema;
        v29 = v19;
        goto LABEL_38;
      }

      sub_20E24F8AC(&v26[v27], v9, type metadata accessor for ToolKitProtoSystemTypeProtocol.AssistantSchema);
      v35 = static ToolKitProtoSystemTypeProtocol.AssistantSchema.== infix(_:_:)(v19, v9);
      sub_20E24F84C(v9, type metadata accessor for ToolKitProtoSystemTypeProtocol.AssistantSchema);
      sub_20E24F84C(v19, type metadata accessor for ToolKitProtoSystemTypeProtocol.AssistantSchema);
      sub_20E24F84C(v26, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
      return v35 & 1;
    case 2u:
      sub_20E24F914(v26, v16, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        v28 = type metadata accessor for ToolKitProtoSystemTypeProtocol.PersistentFileIdentifiable;
        v29 = v16;
        goto LABEL_38;
      }

      v30 = v46;
      sub_20E24F8AC(&v26[v27], v46, type metadata accessor for ToolKitProtoSystemTypeProtocol.PersistentFileIdentifiable);
      if (sub_20E1494E0(*v16, *v30))
      {
        v31 = *(v43 + 20);
        sub_20E3221C0();
        sub_20E1EF2E8();
        v32 = sub_20E322850();
        sub_20E24F84C(v30, type metadata accessor for ToolKitProtoSystemTypeProtocol.PersistentFileIdentifiable);
        if (v32)
        {
          v33 = type metadata accessor for ToolKitProtoSystemTypeProtocol.PersistentFileIdentifiable;
          v34 = v16;
          goto LABEL_48;
        }
      }

      else
      {
        sub_20E24F84C(v30, type metadata accessor for ToolKitProtoSystemTypeProtocol.PersistentFileIdentifiable);
      }

      v41 = type metadata accessor for ToolKitProtoSystemTypeProtocol.PersistentFileIdentifiable;
      v42 = v16;
      goto LABEL_55;
    case 3u:
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        goto LABEL_49;
      }

      goto LABEL_39;
    case 4u:
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        goto LABEL_49;
      }

      goto LABEL_39;
    case 5u:
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        goto LABEL_49;
      }

      goto LABEL_39;
    case 6u:
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        goto LABEL_49;
      }

      goto LABEL_39;
    case 7u:
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        goto LABEL_49;
      }

      goto LABEL_39;
    case 8u:
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        goto LABEL_49;
      }

      goto LABEL_39;
    case 9u:
      if (swift_getEnumCaseMultiPayload() == 9)
      {
        goto LABEL_49;
      }

      goto LABEL_39;
    case 0xAu:
      if (swift_getEnumCaseMultiPayload() == 10)
      {
        goto LABEL_49;
      }

      goto LABEL_39;
    case 0xBu:
      if (swift_getEnumCaseMultiPayload() == 11)
      {
        goto LABEL_49;
      }

      goto LABEL_39;
    case 0xCu:
      if (swift_getEnumCaseMultiPayload() == 12)
      {
        goto LABEL_49;
      }

      goto LABEL_39;
    case 0xDu:
      if (swift_getEnumCaseMultiPayload() == 13)
      {
        goto LABEL_49;
      }

      goto LABEL_39;
    case 0xEu:
      if (swift_getEnumCaseMultiPayload() == 14)
      {
        goto LABEL_49;
      }

      goto LABEL_39;
    case 0xFu:
      if (swift_getEnumCaseMultiPayload() == 15)
      {
        goto LABEL_49;
      }

      goto LABEL_39;
    default:
      sub_20E24F914(v26, v21, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
      if (swift_getEnumCaseMultiPayload())
      {
        v28 = type metadata accessor for ToolKitProtoSystemTypeProtocol.IntentUpdatableEntity;
        v29 = v21;
LABEL_38:
        sub_20E24F84C(v29, v28);
LABEL_39:
        sub_20E04875C(v26, &qword_27C86A4D8, &qword_20E34A158);
        goto LABEL_40;
      }

      v36 = v45;
      sub_20E24F8AC(&v26[v27], v45, type metadata accessor for ToolKitProtoSystemTypeProtocol.IntentUpdatableEntity);
      v37 = *v21 == *v36 && v21[1] == v36[1];
      if (!v37 && (sub_20E322D60() & 1) == 0)
      {
        sub_20E24F84C(v36, type metadata accessor for ToolKitProtoSystemTypeProtocol.IntentUpdatableEntity);
LABEL_54:
        v41 = type metadata accessor for ToolKitProtoSystemTypeProtocol.IntentUpdatableEntity;
        v42 = v21;
LABEL_55:
        sub_20E24F84C(v42, v41);
        sub_20E24F84C(v26, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
LABEL_40:
        v35 = 0;
        return v35 & 1;
      }

      v38 = *(v44 + 20);
      sub_20E3221C0();
      sub_20E1EF2E8();
      v39 = sub_20E322850();
      sub_20E24F84C(v36, type metadata accessor for ToolKitProtoSystemTypeProtocol.IntentUpdatableEntity);
      if ((v39 & 1) == 0)
      {
        goto LABEL_54;
      }

      v33 = type metadata accessor for ToolKitProtoSystemTypeProtocol.IntentUpdatableEntity;
      v34 = v21;
LABEL_48:
      sub_20E24F84C(v34, v33);
LABEL_49:
      sub_20E24F84C(v26, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
      v35 = 1;
      return v35 & 1;
  }
}

uint64_t _s23LighthouseDataProcessor34ToolKitProtoRuntimeRequirementKindO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v46 = a2;
  v43 = type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag(0);
  v3 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43);
  v44 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ToolKitProtoRuntimeRequirementKind(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v45 = &v43 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v43 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v43 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86A488, &qword_20E34A108);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25 - 8);
  v29 = &v43 - v28;
  v30 = *(v27 + 56);
  sub_20E24F914(a1, &v43 - v28, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
  sub_20E24F914(v46, &v29[v30], type metadata accessor for ToolKitProtoRuntimeRequirementKind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_20E24F914(v29, v22, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v32 = type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability;
        v33 = v22;
        goto LABEL_22;
      }

      sub_20E24F8AC(&v29[v30], v8, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability);
      v38 = static ToolKitProtoRuntimeRequirement.DeviceCapability.== infix(_:_:)(v22, v8);
      sub_20E24F84C(v8, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability);
      v39 = v22;
      v40 = type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability;
    }

    else
    {
      sub_20E24F914(v29, v24, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
      if (swift_getEnumCaseMultiPayload())
      {
        v32 = type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation;
        v33 = v24;
LABEL_22:
        sub_20E24F84C(v33, v32);
        goto LABEL_23;
      }

      sub_20E24F8AC(&v29[v30], v12, type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation);
      v38 = static ToolKitProtoRuntimeRequirement.AvailabilityAnnotation.== infix(_:_:)(v24, v12);
      sub_20E24F84C(v12, type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation);
      v39 = v24;
      v40 = type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation;
    }

    sub_20E24F84C(v39, v40);
    sub_20E24F84C(v29, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
    return v38 & 1;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v34 = v45;
    sub_20E24F914(v29, v45, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      v32 = type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag;
      v33 = v34;
      goto LABEL_22;
    }

    v35 = &v29[v30];
    v36 = v44;
    sub_20E24F8AC(v35, v44, type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag);
    if ((*v34 != *v36 || *(v34 + 8) != *(v36 + 8)) && (sub_20E322D60() & 1) == 0 || (*(v34 + 16) != *(v36 + 16) || *(v34 + 24) != *(v36 + 24)) && (sub_20E322D60() & 1) == 0 || *(v34 + 32) != *(v36 + 32) || (v37 = *(v43 + 28), sub_20E3221C0(), sub_20E1EF2E8(), (sub_20E322850() & 1) == 0))
    {
      sub_20E24F84C(v36, type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag);
      sub_20E24F84C(v34, type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag);
      sub_20E24F84C(v29, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
      goto LABEL_24;
    }

    sub_20E24F84C(v36, type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag);
    sub_20E24F84C(v34, type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag);
    sub_20E24F84C(v29, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
    v38 = 1;
  }

  else
  {
    sub_20E24F914(v29, v17, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
    if (swift_getEnumCaseMultiPayload() != 3)
    {
LABEL_23:
      sub_20E04875C(v29, &qword_27C86A488, &qword_20E34A108);
LABEL_24:
      v38 = 0;
      return v38 & 1;
    }

    v41 = *v17 ^ v29[v30];
    sub_20E24F84C(v29, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
    v38 = v41 ^ 1;
  }

  return v38 & 1;
}

BOOL _s23LighthouseDataProcessor30ToolKitProtoRuntimeRequirementV0deF20DeviceCapabilityKindO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86A490, &qword_20E34A110);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v21 - v14;
  v16 = *(v13 + 56);
  sub_20E24F914(a1, &v21 - v14, type metadata accessor for ToolKitProtoRuntimeRequirement.ToolKitProtoDeviceCapabilityKind);
  sub_20E24F914(a2, &v15[v16], type metadata accessor for ToolKitProtoRuntimeRequirement.ToolKitProtoDeviceCapabilityKind);
  sub_20E24F8AC(v15, v10, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt);
  sub_20E24F8AC(&v15[v16], v8, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt);
  v17 = *v10 == *v8 && *(v10 + 1) == *(v8 + 1);
  v19 = 0;
  if (v17 || (sub_20E322D60()) && v10[16] == v8[16])
  {
    v18 = *(v4 + 24);
    sub_20E3221C0();
    sub_20E1EF2E8();
    if (sub_20E322850())
    {
      v19 = 1;
    }
  }

  sub_20E24F84C(v8, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt);
  sub_20E24F84C(v10, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt);
  return v19;
}

uint64_t _s23LighthouseDataProcessor42ToolKitProtoContentItemClassDescriptorKindO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v48 = type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass(0);
  v4 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v48);
  v49 = (&v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v47 = type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass(0);
  v6 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v8 = (&v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for ToolKitProtoContentItemClassDescriptorKind(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = (&v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = MEMORY[0x28223BE20](v11);
  v16 = (&v46 - v15);
  MEMORY[0x28223BE20](v14);
  v18 = (&v46 - v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86A4B0, &qword_20E34A130);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = &v46 - v22;
  v24 = (&v46 + *(v21 + 56) - v22);
  sub_20E24F914(a1, &v46 - v22, type metadata accessor for ToolKitProtoContentItemClassDescriptorKind);
  sub_20E24F914(a2, v24, type metadata accessor for ToolKitProtoContentItemClassDescriptorKind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_20E24F914(v23, v16, type metadata accessor for ToolKitProtoContentItemClassDescriptorKind);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_20E24F8AC(v24, v8, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass);
        v26 = *v16 == *v8 && v16[1] == v8[1];
        if (v26 || (sub_20E322D60() & 1) != 0)
        {
          v27 = v16[2] == v8[2] && v16[3] == v8[3];
          if (v27 || (sub_20E322D60() & 1) != 0)
          {
            v28 = *(v47 + 24);
            sub_20E3221C0();
            sub_20E1EF2E8();
            if (sub_20E322850())
            {
              v29 = type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass;
              sub_20E24F84C(v8, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass);
              v30 = v16;
LABEL_31:
              sub_20E24F84C(v30, v29);
LABEL_49:
              sub_20E24F84C(v23, type metadata accessor for ToolKitProtoContentItemClassDescriptorKind);
              return 1;
            }
          }
        }

        v42 = type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass;
        sub_20E24F84C(v8, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass);
        v43 = v16;
LABEL_44:
        sub_20E24F84C(v43, v42);
LABEL_45:
        sub_20E24F84C(v23, type metadata accessor for ToolKitProtoContentItemClassDescriptorKind);
        return 0;
      }

      v37 = type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass;
      v38 = v16;
    }

    else
    {
      sub_20E24F914(v23, v13, type metadata accessor for ToolKitProtoContentItemClassDescriptorKind);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v33 = v49;
        sub_20E24F8AC(v24, v49, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass);
        v34 = *v13 == *v33 && v13[1] == v33[1];
        if (v34 || (sub_20E322D60() & 1) != 0)
        {
          v35 = v13[2] == v33[2] && v13[3] == v33[3];
          if (v35 || (sub_20E322D60() & 1) != 0)
          {
            v36 = *(v48 + 24);
            sub_20E3221C0();
            sub_20E1EF2E8();
            if (sub_20E322850())
            {
              v29 = type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass;
              sub_20E24F84C(v33, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass);
              v30 = v13;
              goto LABEL_31;
            }
          }
        }

        v42 = type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass;
        sub_20E24F84C(v33, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass);
        v43 = v13;
        goto LABEL_44;
      }

      v37 = type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass;
      v38 = v13;
    }

    sub_20E24F84C(v38, v37);
  }

  else
  {
    sub_20E24F914(v23, v18, type metadata accessor for ToolKitProtoContentItemClassDescriptorKind);
    v32 = *v18;
    v31 = v18[1];
    if (!swift_getEnumCaseMultiPayload())
    {
      if (v32 == *v24 && v31 == v24[1])
      {
        v45 = v24[1];

        goto LABEL_49;
      }

      v40 = v24[1];
      v41 = sub_20E322D60();

      if (v41)
      {
        goto LABEL_49;
      }

      goto LABEL_45;
    }
  }

  sub_20E04875C(v23, &qword_27C86A4B0, &qword_20E34A130);
  return 0;
}

uint64_t _s23LighthouseDataProcessor31ToolKitProtoComparisonPredicateV0G0V0defG12TemplateKindO2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v112 = a2;
  v113 = a1;
  v2 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v104 = (&v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = MEMORY[0x28223BE20](v4);
  v103 = (&v91 - v7);
  v8 = MEMORY[0x28223BE20](v6);
  v102 = (&v91 - v9);
  v10 = MEMORY[0x28223BE20](v8);
  v101 = (&v91 - v11);
  v12 = MEMORY[0x28223BE20](v10);
  v100 = (&v91 - v13);
  v14 = MEMORY[0x28223BE20](v12);
  v99 = (&v91 - v15);
  v16 = MEMORY[0x28223BE20](v14);
  v98 = (&v91 - v17);
  v18 = MEMORY[0x28223BE20](v16);
  v97 = (&v91 - v19);
  v20 = MEMORY[0x28223BE20](v18);
  v96 = (&v91 - v21);
  v22 = MEMORY[0x28223BE20](v20);
  v95 = (&v91 - v23);
  v24 = MEMORY[0x28223BE20](v22);
  v94 = (&v91 - v25);
  v26 = MEMORY[0x28223BE20](v24);
  v93 = (&v91 - v27);
  MEMORY[0x28223BE20](v26);
  v92 = (&v91 - v28);
  v29 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v29);
  v111 = (&v91 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = MEMORY[0x28223BE20](v31);
  v110 = (&v91 - v34);
  v35 = MEMORY[0x28223BE20](v33);
  v109 = (&v91 - v36);
  v37 = MEMORY[0x28223BE20](v35);
  v108 = (&v91 - v38);
  v39 = MEMORY[0x28223BE20](v37);
  v107 = (&v91 - v40);
  v41 = MEMORY[0x28223BE20](v39);
  v106 = (&v91 - v42);
  v43 = MEMORY[0x28223BE20](v41);
  v105 = (&v91 - v44);
  v45 = MEMORY[0x28223BE20](v43);
  v47 = (&v91 - v46);
  v48 = MEMORY[0x28223BE20](v45);
  v50 = (&v91 - v49);
  v51 = MEMORY[0x28223BE20](v48);
  v53 = (&v91 - v52);
  v54 = MEMORY[0x28223BE20](v51);
  v56 = (&v91 - v55);
  v57 = MEMORY[0x28223BE20](v54);
  v59 = (&v91 - v58);
  MEMORY[0x28223BE20](v57);
  v61 = (&v91 - v60);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86A4A8, &qword_20E34A128);
  v63 = *(*(v62 - 8) + 64);
  v64 = MEMORY[0x28223BE20](v62 - 8);
  v66 = &v91 - v65;
  v67 = *(v64 + 56);
  sub_20E24F914(v113, &v91 - v65, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
  v113 = v67;
  sub_20E24F914(v112, &v66[v67], type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_20E24F914(v66, v59, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      v83 = v113;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v84 = v93;
        sub_20E24F8AC(&v66[v83], v93, type metadata accessor for ToolKitProtoTypeInstance);
        v74 = static ToolKitProtoTypeInstance.== infix(_:_:)(v59, v84);
        sub_20E24F84C(v84, type metadata accessor for ToolKitProtoTypeInstance);
        v75 = v59;
        goto LABEL_35;
      }

      v61 = v59;
      goto LABEL_41;
    case 2u:
      sub_20E24F914(v66, v56, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      v78 = v113;
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v79 = v94;
        sub_20E24F8AC(&v66[v78], v94, type metadata accessor for ToolKitProtoTypeInstance);
        v74 = static ToolKitProtoTypeInstance.== infix(_:_:)(v56, v79);
        sub_20E24F84C(v79, type metadata accessor for ToolKitProtoTypeInstance);
        sub_20E24F84C(v56, type metadata accessor for ToolKitProtoTypeInstance);
        sub_20E24F84C(v66, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
        return v74 & 1;
      }

      v61 = v56;
      goto LABEL_41;
    case 3u:
      sub_20E24F914(v66, v53, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      v80 = v113;
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v81 = v95;
        sub_20E24F8AC(&v66[v80], v95, type metadata accessor for ToolKitProtoTypeInstance);
        v74 = static ToolKitProtoTypeInstance.== infix(_:_:)(v53, v81);
        sub_20E24F84C(v81, type metadata accessor for ToolKitProtoTypeInstance);
        v75 = v53;
        goto LABEL_35;
      }

      v61 = v53;
      goto LABEL_41;
    case 4u:
      sub_20E24F914(v66, v50, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      v72 = v113;
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v73 = v96;
        sub_20E24F8AC(&v66[v72], v96, type metadata accessor for ToolKitProtoTypeInstance);
        v74 = static ToolKitProtoTypeInstance.== infix(_:_:)(v50, v73);
        sub_20E24F84C(v73, type metadata accessor for ToolKitProtoTypeInstance);
        v75 = v50;
        goto LABEL_35;
      }

      v61 = v50;
      goto LABEL_41;
    case 5u:
      sub_20E24F914(v66, v47, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      v85 = v113;
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v86 = v97;
        sub_20E24F8AC(&v66[v85], v97, type metadata accessor for ToolKitProtoTypeInstance);
        v74 = static ToolKitProtoTypeInstance.== infix(_:_:)(v47, v86);
        sub_20E24F84C(v86, type metadata accessor for ToolKitProtoTypeInstance);
        v75 = v47;
LABEL_35:
        sub_20E24F84C(v75, type metadata accessor for ToolKitProtoTypeInstance);
        sub_20E24F84C(v66, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      }

      else
      {
        v61 = v47;
LABEL_41:
        sub_20E24F84C(v61, type metadata accessor for ToolKitProtoTypeInstance);
LABEL_42:
        sub_20E04875C(v66, &qword_27C86A4A8, &qword_20E34A128);
        v74 = 0;
      }

      return v74 & 1;
    case 6u:
      v61 = v105;
      sub_20E24F914(v66, v105, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      v87 = v113;
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_41;
      }

      v69 = &v66[v87];
      v70 = v98;
      goto LABEL_34;
    case 7u:
      v61 = v106;
      sub_20E24F914(v66, v106, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      v82 = v113;
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_41;
      }

      v69 = &v66[v82];
      v70 = v99;
      goto LABEL_34;
    case 8u:
      v61 = v107;
      sub_20E24F914(v66, v107, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      v89 = v113;
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        goto LABEL_41;
      }

      v69 = &v66[v89];
      v70 = v100;
      goto LABEL_34;
    case 9u:
      v61 = v108;
      sub_20E24F914(v66, v108, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      v77 = v113;
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        goto LABEL_41;
      }

      v69 = &v66[v77];
      v70 = v101;
      goto LABEL_34;
    case 0xAu:
      v61 = v109;
      sub_20E24F914(v66, v109, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      v88 = v113;
      if (swift_getEnumCaseMultiPayload() != 10)
      {
        goto LABEL_41;
      }

      v69 = &v66[v88];
      v70 = v102;
      goto LABEL_34;
    case 0xBu:
      v61 = v110;
      sub_20E24F914(v66, v110, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      v71 = v113;
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        goto LABEL_41;
      }

      v69 = &v66[v71];
      v70 = v103;
      goto LABEL_34;
    case 0xCu:
      v61 = v111;
      sub_20E24F914(v66, v111, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      v76 = v113;
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        goto LABEL_41;
      }

      v69 = &v66[v76];
      v70 = v104;
      goto LABEL_34;
    case 0xDu:
      if (swift_getEnumCaseMultiPayload() == 13)
      {
        goto LABEL_27;
      }

      goto LABEL_42;
    case 0xEu:
      if (swift_getEnumCaseMultiPayload() != 14)
      {
        goto LABEL_42;
      }

      goto LABEL_27;
    case 0xFu:
      if (swift_getEnumCaseMultiPayload() != 15)
      {
        goto LABEL_42;
      }

LABEL_27:
      sub_20E24F84C(v66, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      v74 = 1;
      return v74 & 1;
    default:
      sub_20E24F914(v66, v61, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      v68 = v113;
      if (swift_getEnumCaseMultiPayload())
      {
        goto LABEL_41;
      }

      v69 = &v66[v68];
      v70 = v92;
LABEL_34:
      sub_20E24F8AC(v69, v70, type metadata accessor for ToolKitProtoTypeInstance);
      v74 = static ToolKitProtoTypeInstance.== infix(_:_:)(v61, v70);
      sub_20E24F84C(v70, type metadata accessor for ToolKitProtoTypeInstance);
      v75 = v61;
      goto LABEL_35;
  }
}

uint64_t _s23LighthouseDataProcessor30ToolKitProtoRestrictionContextV5InSetV0def5ValueJ4KindO2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v61 = a1;
  v62 = a2;
  v2 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v58 = (&v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v57 = (&v57 - v6);
  v7 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v60 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v59 = (&v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = MEMORY[0x28223BE20](v16);
  v20 = (&v57 - v19);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = (&v57 - v22);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = (&v57 - v25);
  MEMORY[0x28223BE20](v24);
  v28 = &v57 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86A4B8, &qword_20E34A138);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v29 - 8);
  v33 = &v57 - v32;
  v34 = (&v57 + *(v31 + 56) - v32);
  sub_20E24F914(v61, &v57 - v32, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
  sub_20E24F914(v62, v34, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v42 = v60;
    if (EnumCaseMultiPayload)
    {
      sub_20E24F914(v33, v26, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_20E24F8AC(v34, v42, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues);
        v45 = v33;
        V2eeoiySbAI_AItFZ_0 = _s23LighthouseDataProcessor30ToolKitProtoRestrictionContextV5InSetV05ValueJ0V29ContentPropertyPossibleValuesV2eeoiySbAI_AItFZ_0(v26, v42);
        v47 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues;
        sub_20E24F84C(v42, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues);
        v48 = v26;
        goto LABEL_20;
      }

      v43 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues;
    }

    else
    {
      v26 = v28;
      sub_20E24F914(v33, v28, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
      if (!swift_getEnumCaseMultiPayload())
      {
        v36 = v33;
        sub_20E24F8AC(v34, v13, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration);
        if ((*v26 != *v13 || v26[1] != v13[1]) && (sub_20E322D60() & 1) == 0 || (v26[2] != v13[2] || v26[3] != v13[3]) && (sub_20E322D60() & 1) == 0 || (v55 = *(v10 + 24), sub_20E3221C0(), sub_20E1EF2E8(), (sub_20E322850() & 1) == 0))
        {
          sub_20E24F84C(v13, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration);
          sub_20E24F84C(v26, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration);
LABEL_40:
          sub_20E24F84C(v36, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
          goto LABEL_29;
        }

        sub_20E24F84C(v13, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration);
        sub_20E24F84C(v26, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration);
LABEL_42:
        sub_20E24F84C(v36, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
        V2eeoiySbAI_AItFZ_0 = 1;
        return V2eeoiySbAI_AItFZ_0 & 1;
      }

      v43 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration;
    }

    v52 = v43;
    v53 = v26;
    goto LABEL_27;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_20E24F914(v33, v23, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      v52 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery;
      v53 = v23;
LABEL_27:
      sub_20E24F84C(v53, v52);
      goto LABEL_28;
    }

    v44 = v57;
    sub_20E24F8AC(v34, v57, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery);
    v45 = v33;
    V2eeoiySbAI_AItFZ_0 = _s23LighthouseDataProcessor30ToolKitProtoRestrictionContextV5InSetV05ValueJ0V9LinkQueryV2eeoiySbAI_AItFZ_0(v23, v44);
    v47 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery;
    sub_20E24F84C(v44, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery);
    v48 = v23;
LABEL_20:
    v51 = v47;
    goto LABEL_21;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v36 = v33;
    sub_20E24F914(v33, v20, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
    v38 = *v20;
    v37 = v20[1];
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      if (v38 != *v34 || v37 != v34[1])
      {
        v40 = v34[1];
        v41 = sub_20E322D60();

        if (v41)
        {
          goto LABEL_42;
        }

        goto LABEL_40;
      }

      v56 = v34[1];

      goto LABEL_42;
    }

    v33 = v36;
LABEL_28:
    sub_20E04875C(v33, &qword_27C86A4B8, &qword_20E34A138);
LABEL_29:
    V2eeoiySbAI_AItFZ_0 = 0;
    return V2eeoiySbAI_AItFZ_0 & 1;
  }

  v49 = v59;
  sub_20E24F914(v33, v59, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
  if (swift_getEnumCaseMultiPayload() != 4)
  {
    v52 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery;
    v53 = v49;
    goto LABEL_27;
  }

  v50 = v58;
  sub_20E24F8AC(v34, v58, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery);
  v45 = v33;
  V2eeoiySbAI_AItFZ_0 = _s23LighthouseDataProcessor30ToolKitProtoRestrictionContextV5InSetV05ValueJ0V9LinkQueryV2eeoiySbAI_AItFZ_0(v49, v50);
  sub_20E24F84C(v50, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery);
  v48 = v49;
  v51 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery;
LABEL_21:
  sub_20E24F84C(v48, v51);
  sub_20E24F84C(v45, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
  return V2eeoiySbAI_AItFZ_0 & 1;
}

uint64_t _s23LighthouseDataProcessor34ToolKitProtoRestrictionContextKindO2eeoiySbAC_ACtFZ_0(unint64_t *a1, unint64_t *a2)
{
  v4 = type metadata accessor for ToolKitProtoRestrictionContext.TextTypedWith(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - v9;
  v11 = type metadata accessor for ToolKitProtoRestrictionContext.RepresentableAs(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = (&v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v17 = (&v38 - v16);
  v18 = type metadata accessor for ToolKitProtoRestrictionContext.InSet(0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v38 - v23;
  v25 = *a1;
  v26 = *a2;
  v27 = v25 >> 61;
  if ((v25 >> 61) <= 1)
  {
    if (v27)
    {
      if (v26 >> 61 == 1)
      {
        v33 = swift_projectBox();
        v34 = swift_projectBox();
        sub_20E24F914(v33, v17, type metadata accessor for ToolKitProtoRestrictionContext.RepresentableAs);
        sub_20E24F914(v34, v15, type metadata accessor for ToolKitProtoRestrictionContext.RepresentableAs);
        if (sub_20E1494E0(*v17, *v15))
        {
          v35 = *(v11 + 20);
          sub_20E3221C0();
          sub_20E1EF2E8();

          v36 = sub_20E322850();
          sub_20E24F84C(v15, type metadata accessor for ToolKitProtoRestrictionContext.RepresentableAs);
          sub_20E24F84C(v17, type metadata accessor for ToolKitProtoRestrictionContext.RepresentableAs);

          if (v36)
          {
            v30 = 1;
            return v30 & 1;
          }
        }

        else
        {

          sub_20E24F84C(v15, type metadata accessor for ToolKitProtoRestrictionContext.RepresentableAs);
          sub_20E24F84C(v17, type metadata accessor for ToolKitProtoRestrictionContext.RepresentableAs);
        }
      }
    }

    else if (!(v26 >> 61))
    {
      v28 = swift_projectBox();
      v29 = swift_projectBox();
      sub_20E24F914(v28, v24, type metadata accessor for ToolKitProtoRestrictionContext.InSet);
      sub_20E24F914(v29, v22, type metadata accessor for ToolKitProtoRestrictionContext.InSet);

      v30 = _s23LighthouseDataProcessor30ToolKitProtoRestrictionContextV5InSetV2eeoiySbAE_AEtFZ_0(v24, v22);
      sub_20E24F84C(v22, type metadata accessor for ToolKitProtoRestrictionContext.InSet);
      sub_20E24F84C(v24, type metadata accessor for ToolKitProtoRestrictionContext.InSet);
LABEL_13:

      return v30 & 1;
    }

LABEL_19:
    v30 = 0;
    return v30 & 1;
  }

  if (v27 != 2)
  {
    if (v27 == 3)
    {
      if (v26 >> 61 != 3)
      {
        goto LABEL_19;
      }

      goto LABEL_10;
    }

    if (v26 >> 61 == 4)
    {
      v31 = swift_projectBox();
      v32 = swift_projectBox();
      sub_20E24F914(v31, v10, type metadata accessor for ToolKitProtoRestrictionContext.TextTypedWith);
      sub_20E24F914(v32, v8, type metadata accessor for ToolKitProtoRestrictionContext.TextTypedWith);

      v30 = _s23LighthouseDataProcessor30ToolKitProtoRestrictionContextV13TextTypedWithV2eeoiySbAE_AEtFZ_0(v10, v8);
      sub_20E24F84C(v8, type metadata accessor for ToolKitProtoRestrictionContext.TextTypedWith);
      sub_20E24F84C(v10, type metadata accessor for ToolKitProtoRestrictionContext.TextTypedWith);
      goto LABEL_13;
    }

    goto LABEL_19;
  }

  if (v26 >> 61 != 2)
  {
    goto LABEL_19;
  }

LABEL_10:
  v30 = *((v25 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) == *((v26 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  return v30 & 1;
}

BOOL _s23LighthouseDataProcessor22ToolKitProtoTypedValueV08DeferredH0V0deF11StorageKindO2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = (&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v10 = (&v21 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86A4C0, &qword_20E34A140);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v21 - v14;
  v16 = *(v13 + 56);
  sub_20E24F914(a1, &v21 - v14, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.ToolKitProtoStorageKind);
  sub_20E24F914(a2, &v15[v16], type metadata accessor for ToolKitProtoTypedValue.DeferredValue.ToolKitProtoStorageKind);
  sub_20E24F8AC(v15, v10, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage);
  sub_20E24F8AC(&v15[v16], v8, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage);
  v19 = 0;
  if (sub_20E15F7B0(*v10, v10[1], *v8, v8[1]))
  {
    v17 = v10[2] == v8[2] && v10[3] == v8[3];
    if (v17 || (sub_20E322D60() & 1) != 0)
    {
      v18 = *(v4 + 24);
      sub_20E3221C0();
      sub_20E1EF2E8();
      if (sub_20E322850())
      {
        v19 = 1;
      }
    }
  }

  sub_20E24F84C(v8, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage);
  sub_20E24F84C(v10, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage);
  return v19;
}

uint64_t _s23LighthouseDataProcessor33ToolKitProtoDisplayRepresentationV0deF12SubtitleKindO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v34 = type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle.Static(0);
  v4 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34);
  v6 = (&v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = type metadata accessor for ToolKitProtoDisplayRepresentation.Storage(0);
  v7 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = (&v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v16 = &v33 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86A460, &qword_20E34A0E0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v21 = &v33 - v20;
  v22 = *(v19 + 56);
  sub_20E24F914(a1, &v33 - v20, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind);
  sub_20E24F914(a2, &v21[v22], type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_20E24F914(v21, v14, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_20E24F8AC(&v21[v22], v6, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle.Static);
      v23 = *v14 == *v6 && v14[1] == v6[1];
      if (v23 || (sub_20E322D60() & 1) != 0)
      {
        v24 = *(v34 + 20);
        sub_20E3221C0();
        sub_20E1EF2E8();
        if (sub_20E322850())
        {
          v25 = type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle.Static;
          sub_20E24F84C(v6, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle.Static);
          v26 = v14;
LABEL_17:
          sub_20E24F84C(v26, v25);
          sub_20E24F84C(v21, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind);
          return 1;
        }
      }

      v31 = type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle.Static;
      sub_20E24F84C(v6, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle.Static);
      v32 = v14;
LABEL_20:
      sub_20E24F84C(v32, v31);
      sub_20E24F84C(v21, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind);
      return 0;
    }

    v27 = type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle.Static;
    v28 = v14;
  }

  else
  {
    sub_20E24F914(v21, v16, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_20E24F8AC(&v21[v22], v9, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
      if (sub_20E15F7B0(*v16, *(v16 + 1), *v9, *(v9 + 1)))
      {
        v29 = *(v33 + 20);
        sub_20E3221C0();
        sub_20E1EF2E8();
        if (sub_20E322850())
        {
          v25 = type metadata accessor for ToolKitProtoDisplayRepresentation.Storage;
          sub_20E24F84C(v9, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
          v26 = v16;
          goto LABEL_17;
        }
      }

      v31 = type metadata accessor for ToolKitProtoDisplayRepresentation.Storage;
      sub_20E24F84C(v9, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
      v32 = v16;
      goto LABEL_20;
    }

    v27 = type metadata accessor for ToolKitProtoDisplayRepresentation.Storage;
    v28 = v16;
  }

  sub_20E24F84C(v28, v27);
  sub_20E04875C(v21, &qword_27C86A460, &qword_20E34A0E0);
  return 0;
}

uint64_t _s23LighthouseDataProcessor17ToolKitProtoQueryV0deF16AnyPredicateKindO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v93 = a1;
  v94 = a2;
  valid = type metadata accessor for ToolKitProtoValidPredicate(0);
  v3 = *(*(valid - 8) + 64);
  MEMORY[0x28223BE20](valid - 8);
  v89 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for ToolKitProtoSearchableItemPredicate(0);
  v5 = *(*(v80 - 8) + 64);
  MEMORY[0x28223BE20](v80);
  v90 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ToolKitProtoSuggestedPredicate(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v87 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ToolKitProtoAllPredicate(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v85 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for ToolKitProtoIdSearchPredicate(0);
  v13 = *(*(v83 - 8) + 64);
  MEMORY[0x28223BE20](v83);
  v88 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for ToolKitProtoStringSearchPredicate(0);
  v15 = *(*(v82 - 8) + 64);
  MEMORY[0x28223BE20](v82);
  v86 = (&v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v79 = type metadata accessor for ToolKitProtoCompoundPredicate(0);
  v17 = *(*(v79 - 8) + 64);
  MEMORY[0x28223BE20](v79);
  v84 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for ToolKitProtoComparisonPredicate(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v81 = (&v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(0);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v79 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v24);
  v92 = &v79 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v79 - v30;
  v32 = MEMORY[0x28223BE20](v29);
  v34 = &v79 - v33;
  v35 = MEMORY[0x28223BE20](v32);
  v91 = &v79 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v39 = (&v79 - v38);
  v40 = MEMORY[0x28223BE20](v37);
  v42 = &v79 - v41;
  MEMORY[0x28223BE20](v40);
  v44 = (&v79 - v43);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86A498, &qword_20E34A118);
  v46 = *(*(v45 - 8) + 64);
  v47 = MEMORY[0x28223BE20](v45 - 8);
  v49 = &v79 - v48;
  v50 = *(v47 + 56);
  sub_20E24F914(v93, &v79 - v48, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
  sub_20E24F914(v94, &v49[v50], type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v62 = v92;
        sub_20E24F914(v49, v92, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
        if (swift_getEnumCaseMultiPayload() == 6)
        {
          v63 = v90;
          sub_20E24F8AC(&v49[v50], v90, type metadata accessor for ToolKitProtoSearchableItemPredicate);
          if (sub_20E15F7B0(*v62, *(v62 + 8), *v63, *(v63 + 8)))
          {
            v64 = *(v80 + 20);
            sub_20E3221C0();
            sub_20E1EF2E8();
            if (sub_20E322850())
            {
              v65 = type metadata accessor for ToolKitProtoSearchableItemPredicate;
LABEL_35:
              v60 = v65;
              sub_20E24F84C(v63, v65);
              v61 = v62;
              goto LABEL_36;
            }
          }

          v77 = type metadata accessor for ToolKitProtoSearchableItemPredicate;
LABEL_55:
          v73 = v77;
          sub_20E24F84C(v63, v77);
          v74 = v62;
          goto LABEL_56;
        }

        v72 = type metadata accessor for ToolKitProtoSearchableItemPredicate;
LABEL_47:
        v52 = v72;
        v53 = v62;
        goto LABEL_49;
      }

      sub_20E24F914(v49, v26, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        v52 = type metadata accessor for ToolKitProtoValidPredicate;
        v53 = v26;
        goto LABEL_49;
      }

      v70 = v89;
      sub_20E24F8AC(&v49[v50], v89, type metadata accessor for ToolKitProtoValidPredicate);
      sub_20E3221C0();
      sub_20E1EF2E8();
      v55 = sub_20E322850();
      v56 = type metadata accessor for ToolKitProtoValidPredicate;
      sub_20E24F84C(v70, type metadata accessor for ToolKitProtoValidPredicate);
      v57 = v26;
    }

    else if (EnumCaseMultiPayload == 4)
    {
      sub_20E24F914(v49, v34, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        v52 = type metadata accessor for ToolKitProtoAllPredicate;
        v53 = v34;
        goto LABEL_49;
      }

      v54 = v85;
      sub_20E24F8AC(&v49[v50], v85, type metadata accessor for ToolKitProtoAllPredicate);
      sub_20E3221C0();
      sub_20E1EF2E8();
      v55 = sub_20E322850();
      v56 = type metadata accessor for ToolKitProtoAllPredicate;
      sub_20E24F84C(v54, type metadata accessor for ToolKitProtoAllPredicate);
      v57 = v34;
    }

    else
    {
      sub_20E24F914(v49, v31, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        v52 = type metadata accessor for ToolKitProtoSuggestedPredicate;
        v53 = v31;
        goto LABEL_49;
      }

      v68 = v87;
      sub_20E24F8AC(&v49[v50], v87, type metadata accessor for ToolKitProtoSuggestedPredicate);
      sub_20E3221C0();
      sub_20E1EF2E8();
      v55 = sub_20E322850();
      v56 = type metadata accessor for ToolKitProtoSuggestedPredicate;
      sub_20E24F84C(v68, type metadata accessor for ToolKitProtoSuggestedPredicate);
      v57 = v31;
    }

    v71 = v56;
LABEL_40:
    sub_20E24F84C(v57, v71);
    sub_20E24F84C(v49, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
    return v55 & 1;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_20E24F914(v49, v44, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
      if (swift_getEnumCaseMultiPayload())
      {
        v52 = type metadata accessor for ToolKitProtoComparisonPredicate;
        v53 = v44;
LABEL_49:
        sub_20E24F84C(v53, v52);
        sub_20E04875C(v49, &qword_27C86A498, &qword_20E34A118);
LABEL_57:
        v55 = 0;
        return v55 & 1;
      }

      v75 = &v49[v50];
      v76 = v81;
      sub_20E24F8AC(v75, v81, type metadata accessor for ToolKitProtoComparisonPredicate);
      v55 = _s23LighthouseDataProcessor31ToolKitProtoComparisonPredicateV2eeoiySbAC_ACtFZ_0(v44, v76);
      sub_20E24F84C(v76, type metadata accessor for ToolKitProtoComparisonPredicate);
      v57 = v44;
      v71 = type metadata accessor for ToolKitProtoComparisonPredicate;
      goto LABEL_40;
    }

    sub_20E24F914(v49, v42, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v52 = type metadata accessor for ToolKitProtoCompoundPredicate;
      v53 = v42;
      goto LABEL_49;
    }

    v66 = v84;
    sub_20E24F8AC(&v49[v50], v84, type metadata accessor for ToolKitProtoCompoundPredicate);
    if (*v42 == *v66 && (sub_20E154DAC(*(v42 + 1), *(v66 + 1)) & 1) != 0)
    {
      v67 = *(v79 + 24);
      sub_20E3221C0();
      sub_20E1EF2E8();
      if (sub_20E322850())
      {
        v60 = type metadata accessor for ToolKitProtoCompoundPredicate;
        sub_20E24F84C(v66, type metadata accessor for ToolKitProtoCompoundPredicate);
        v61 = v42;
        goto LABEL_36;
      }
    }

    v73 = type metadata accessor for ToolKitProtoCompoundPredicate;
    sub_20E24F84C(v66, type metadata accessor for ToolKitProtoCompoundPredicate);
    v74 = v42;
LABEL_56:
    sub_20E24F84C(v74, v73);
    sub_20E24F84C(v49, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
    goto LABEL_57;
  }

  if (EnumCaseMultiPayload != 2)
  {
    v62 = v91;
    sub_20E24F914(v49, v91, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v63 = v88;
      sub_20E24F8AC(&v49[v50], v88, type metadata accessor for ToolKitProtoIdSearchPredicate);
      if (*v62 == *v63 && *(v62 + 8) == *(v63 + 8) || (sub_20E322D60() & 1) != 0)
      {
        v69 = *(v83 + 20);
        sub_20E3221C0();
        sub_20E1EF2E8();
        if (sub_20E322850())
        {
          v65 = type metadata accessor for ToolKitProtoIdSearchPredicate;
          goto LABEL_35;
        }
      }

      v77 = type metadata accessor for ToolKitProtoIdSearchPredicate;
      goto LABEL_55;
    }

    v72 = type metadata accessor for ToolKitProtoIdSearchPredicate;
    goto LABEL_47;
  }

  sub_20E24F914(v49, v39, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    v52 = type metadata accessor for ToolKitProtoStringSearchPredicate;
    v53 = v39;
    goto LABEL_49;
  }

  v58 = v86;
  sub_20E24F8AC(&v49[v50], v86, type metadata accessor for ToolKitProtoStringSearchPredicate);
  if ((*v39 != *v58 || v39[1] != v58[1]) && (sub_20E322D60() & 1) == 0 || (v59 = *(v82 + 20), sub_20E3221C0(), sub_20E1EF2E8(), (sub_20E322850() & 1) == 0))
  {
    v73 = type metadata accessor for ToolKitProtoStringSearchPredicate;
    sub_20E24F84C(v58, type metadata accessor for ToolKitProtoStringSearchPredicate);
    v74 = v39;
    goto LABEL_56;
  }

  v60 = type metadata accessor for ToolKitProtoStringSearchPredicate;
  sub_20E24F84C(v58, type metadata accessor for ToolKitProtoStringSearchPredicate);
  v61 = v39;
LABEL_36:
  sub_20E24F84C(v61, v60);
  sub_20E24F84C(v49, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
  v55 = 1;
  return v55 & 1;
}

uint64_t _s23LighthouseDataProcessor018ToolKitProtoSystemD12ProtocolKindO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v112 = a1;
  v113 = a2;
  v100 = type metadata accessor for ToolKitProtoSystemToolProtocol.AppIntent(0);
  v2 = *(*(v100 - 8) + 64);
  MEMORY[0x28223BE20](v100);
  v108 = (&v93 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for ToolKitProtoSystemToolProtocol.AssistantSchema(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v105 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ToolKitProtoSystemToolProtocol.IntentSideEffect(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v104 = (&v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v99 = type metadata accessor for ToolKitProtoSystemToolProtocol.SiriKitIntent(0);
  v10 = *(*(v99 - 8) + 64);
  MEMORY[0x28223BE20](v99);
  v106 = (&v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v96 = type metadata accessor for ToolKitProtoSystemToolProtocol.PropertyUpdater(0);
  v12 = *(*(v96 - 8) + 64);
  MEMORY[0x28223BE20](v96);
  v107 = (&v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v98 = type metadata accessor for ToolKitProtoSystemToolProtocol.EntityUpdating(0);
  v14 = *(*(v98 - 8) + 64);
  MEMORY[0x28223BE20](v98);
  v103 = (&v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v95 = type metadata accessor for ToolKitProtoSystemToolProtocol.ShowInAppStringSearchResults(0);
  v16 = *(*(v95 - 8) + 64);
  MEMORY[0x28223BE20](v95);
  v102 = (&v93 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v94 = type metadata accessor for ToolKitProtoSystemToolProtocol.PlayVideo(0);
  v18 = *(*(v94 - 8) + 64);
  MEMORY[0x28223BE20](v94);
  v101 = (&v93 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v93 = type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled(0);
  v20 = *(*(v93 - 8) + 64);
  MEMORY[0x28223BE20](v93);
  v97 = &v93 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v111 = (&v93 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v93 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v31 = (&v93 - v30);
  v32 = MEMORY[0x28223BE20](v29);
  v109 = (&v93 - v33);
  v34 = MEMORY[0x28223BE20](v32);
  v110 = (&v93 - v35);
  v36 = MEMORY[0x28223BE20](v34);
  v38 = (&v93 - v37);
  v39 = MEMORY[0x28223BE20](v36);
  v41 = (&v93 - v40);
  v42 = MEMORY[0x28223BE20](v39);
  v44 = (&v93 - v43);
  MEMORY[0x28223BE20](v42);
  v46 = &v93 - v45;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86A478, &qword_20E34A0F8);
  v48 = *(*(v47 - 8) + 64);
  v49 = MEMORY[0x28223BE20](v47 - 8);
  v51 = &v93 - v50;
  v52 = *(v49 + 56);
  sub_20E24F914(v112, &v93 - v50, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
  v112 = v52;
  sub_20E24F914(v113, &v51[v52], type metadata accessor for ToolKitProtoSystemToolProtocolKind);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_20E24F914(v51, v44, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
      v74 = v112;
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v54 = type metadata accessor for ToolKitProtoSystemToolProtocol.PlayVideo;
        v55 = v44;
        goto LABEL_159;
      }

      v75 = v101;
      sub_20E24F8AC(&v51[v74], v101, type metadata accessor for ToolKitProtoSystemToolProtocol.PlayVideo);
      if (sub_20E1494E0(*v44, *v75))
      {
        v76 = *(v94 + 20);
        sub_20E3221C0();
        sub_20E1EF2E8();
        if (sub_20E322850())
        {
          v64 = type metadata accessor for ToolKitProtoSystemToolProtocol.PlayVideo;
          sub_20E24F84C(v75, type metadata accessor for ToolKitProtoSystemToolProtocol.PlayVideo);
          v65 = v44;
          goto LABEL_111;
        }
      }

      v85 = type metadata accessor for ToolKitProtoSystemToolProtocol.PlayVideo;
      sub_20E24F84C(v75, type metadata accessor for ToolKitProtoSystemToolProtocol.PlayVideo);
      v86 = v44;
      goto LABEL_172;
    case 2u:
      sub_20E24F914(v51, v41, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
      v61 = v112;
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        v54 = type metadata accessor for ToolKitProtoSystemToolProtocol.ShowInAppStringSearchResults;
        v55 = v41;
        goto LABEL_159;
      }

      v62 = v102;
      sub_20E24F8AC(&v51[v61], v102, type metadata accessor for ToolKitProtoSystemToolProtocol.ShowInAppStringSearchResults);
      if (sub_20E1494E0(*v41, *v62))
      {
        v63 = *(v95 + 20);
        sub_20E3221C0();
        sub_20E1EF2E8();
        if (sub_20E322850())
        {
          v64 = type metadata accessor for ToolKitProtoSystemToolProtocol.ShowInAppStringSearchResults;
          sub_20E24F84C(v62, type metadata accessor for ToolKitProtoSystemToolProtocol.ShowInAppStringSearchResults);
          v65 = v41;
          goto LABEL_111;
        }
      }

      v85 = type metadata accessor for ToolKitProtoSystemToolProtocol.ShowInAppStringSearchResults;
      sub_20E24F84C(v62, type metadata accessor for ToolKitProtoSystemToolProtocol.ShowInAppStringSearchResults);
      v86 = v41;
      goto LABEL_172;
    case 3u:
      sub_20E24F914(v51, v38, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
      v66 = v112;
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        v54 = type metadata accessor for ToolKitProtoSystemToolProtocol.EntityUpdating;
        v55 = v38;
        goto LABEL_159;
      }

      v67 = v103;
      sub_20E24F8AC(&v51[v66], v103, type metadata accessor for ToolKitProtoSystemToolProtocol.EntityUpdating);
      if (*v38 == *v67 && v38[1] == v67[1] || (sub_20E322D60() & 1) != 0)
      {
        v68 = *(v98 + 20);
        sub_20E3221C0();
        sub_20E1EF2E8();
        if (sub_20E322850())
        {
          v64 = type metadata accessor for ToolKitProtoSystemToolProtocol.EntityUpdating;
          sub_20E24F84C(v67, type metadata accessor for ToolKitProtoSystemToolProtocol.EntityUpdating);
          v65 = v38;
          goto LABEL_111;
        }
      }

      v85 = type metadata accessor for ToolKitProtoSystemToolProtocol.EntityUpdating;
      sub_20E24F84C(v67, type metadata accessor for ToolKitProtoSystemToolProtocol.EntityUpdating);
      v86 = v38;
      goto LABEL_172;
    case 4u:
      v56 = v110;
      sub_20E24F914(v51, v110, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
      v57 = v112;
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        v83 = type metadata accessor for ToolKitProtoSystemToolProtocol.PropertyUpdater;
        goto LABEL_158;
      }

      v58 = v107;
      sub_20E24F8AC(&v51[v57], v107, type metadata accessor for ToolKitProtoSystemToolProtocol.PropertyUpdater);
      if (*v56 == *v58 && v56[1] == v58[1] || (sub_20E322D60()) && (v56[2] == v58[2] && v56[3] == v58[3] || (sub_20E322D60()))
      {
        v59 = *(v96 + 24);
        sub_20E3221C0();
        sub_20E1EF2E8();
        if (sub_20E322850())
        {
          v60 = type metadata accessor for ToolKitProtoSystemToolProtocol.PropertyUpdater;
          goto LABEL_110;
        }
      }

      v88 = type metadata accessor for ToolKitProtoSystemToolProtocol.PropertyUpdater;
      goto LABEL_171;
    case 5u:
      v56 = v109;
      sub_20E24F914(v51, v109, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
      v77 = v112;
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        v83 = type metadata accessor for ToolKitProtoSystemToolProtocol.SiriKitIntent;
        goto LABEL_158;
      }

      v58 = v106;
      sub_20E24F8AC(&v51[v77], v106, type metadata accessor for ToolKitProtoSystemToolProtocol.SiriKitIntent);
      if (*v56 == *v58 && v56[1] == v58[1] || (sub_20E322D60() & 1) != 0)
      {
        v78 = *(v99 + 20);
        sub_20E3221C0();
        sub_20E1EF2E8();
        if (sub_20E322850())
        {
          v60 = type metadata accessor for ToolKitProtoSystemToolProtocol.SiriKitIntent;
          goto LABEL_110;
        }
      }

      v88 = type metadata accessor for ToolKitProtoSystemToolProtocol.SiriKitIntent;
      goto LABEL_171;
    case 6u:
      sub_20E24F914(v51, v31, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
      v79 = v112;
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        v80 = v104;
        sub_20E24F8AC(&v51[v79], v104, type metadata accessor for ToolKitProtoSystemToolProtocol.IntentSideEffect);
        v71 = _s23LighthouseDataProcessor018ToolKitProtoSystemD8ProtocolV16IntentSideEffectV2eeoiySbAE_AEtFZ_0(v31, v80);
        v72 = type metadata accessor for ToolKitProtoSystemToolProtocol.IntentSideEffect;
        sub_20E24F84C(v80, type metadata accessor for ToolKitProtoSystemToolProtocol.IntentSideEffect);
        v73 = v31;
        goto LABEL_99;
      }

      v54 = type metadata accessor for ToolKitProtoSystemToolProtocol.IntentSideEffect;
      v55 = v31;
      goto LABEL_159;
    case 7u:
      sub_20E24F914(v51, v28, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
      v69 = v112;
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        v54 = type metadata accessor for ToolKitProtoSystemToolProtocol.AssistantSchema;
        v55 = v28;
        goto LABEL_159;
      }

      v70 = v105;
      sub_20E24F8AC(&v51[v69], v105, type metadata accessor for ToolKitProtoSystemToolProtocol.AssistantSchema);
      v71 = _s23LighthouseDataProcessor018ToolKitProtoSystemD8ProtocolV15AssistantSchemaV2eeoiySbAE_AEtFZ_0(v28, v70);
      v72 = type metadata accessor for ToolKitProtoSystemToolProtocol.AssistantSchema;
      sub_20E24F84C(v70, type metadata accessor for ToolKitProtoSystemToolProtocol.AssistantSchema);
      v73 = v28;
LABEL_99:
      sub_20E24F84C(v73, v72);
      sub_20E24F84C(v51, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
      return v71 & 1;
    case 8u:
      v56 = v111;
      sub_20E24F914(v51, v111, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
      v81 = v112;
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        v83 = type metadata accessor for ToolKitProtoSystemToolProtocol.AppIntent;
LABEL_158:
        v54 = v83;
        v55 = v56;
        goto LABEL_159;
      }

      v58 = v108;
      sub_20E24F8AC(&v51[v81], v108, type metadata accessor for ToolKitProtoSystemToolProtocol.AppIntent);
      if (*v56 == *v58 && v56[1] == v58[1] || (sub_20E322D60() & 1) != 0)
      {
        v82 = *(v100 + 20);
        sub_20E3221C0();
        sub_20E1EF2E8();
        if (sub_20E322850())
        {
          v60 = type metadata accessor for ToolKitProtoSystemToolProtocol.AppIntent;
LABEL_110:
          v64 = v60;
          sub_20E24F84C(v58, v60);
          v65 = v56;
LABEL_111:
          sub_20E24F84C(v65, v64);
          goto LABEL_149;
        }
      }

      v88 = type metadata accessor for ToolKitProtoSystemToolProtocol.AppIntent;
LABEL_171:
      v85 = v88;
      sub_20E24F84C(v58, v88);
      v86 = v56;
LABEL_172:
      v89 = v85;
      goto LABEL_173;
    case 9u:
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0xAu:
      if (swift_getEnumCaseMultiPayload() != 10)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0xBu:
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0xCu:
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0xDu:
      if (swift_getEnumCaseMultiPayload() != 13)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0xEu:
      if (swift_getEnumCaseMultiPayload() != 14)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0xFu:
      if (swift_getEnumCaseMultiPayload() != 15)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x10u:
      if (swift_getEnumCaseMultiPayload() != 16)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x11u:
      if (swift_getEnumCaseMultiPayload() != 17)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x12u:
      if (swift_getEnumCaseMultiPayload() != 18)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x13u:
      if (swift_getEnumCaseMultiPayload() != 19)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x14u:
      if (swift_getEnumCaseMultiPayload() != 20)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x15u:
      if (swift_getEnumCaseMultiPayload() != 21)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x16u:
      if (swift_getEnumCaseMultiPayload() != 22)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x17u:
      if (swift_getEnumCaseMultiPayload() != 23)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x18u:
      if (swift_getEnumCaseMultiPayload() != 24)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x19u:
      if (swift_getEnumCaseMultiPayload() != 25)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x1Au:
      if (swift_getEnumCaseMultiPayload() != 26)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x1Bu:
      if (swift_getEnumCaseMultiPayload() != 27)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x1Cu:
      if (swift_getEnumCaseMultiPayload() != 28)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x1Du:
      if (swift_getEnumCaseMultiPayload() != 29)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x1Eu:
      if (swift_getEnumCaseMultiPayload() != 30)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x1Fu:
      if (swift_getEnumCaseMultiPayload() != 31)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x20u:
      if (swift_getEnumCaseMultiPayload() != 32)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x21u:
      if (swift_getEnumCaseMultiPayload() != 33)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x22u:
      if (swift_getEnumCaseMultiPayload() != 34)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x23u:
      if (swift_getEnumCaseMultiPayload() != 35)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x24u:
      if (swift_getEnumCaseMultiPayload() != 36)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x25u:
      if (swift_getEnumCaseMultiPayload() != 37)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x26u:
      if (swift_getEnumCaseMultiPayload() != 38)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x27u:
      if (swift_getEnumCaseMultiPayload() != 39)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x28u:
      if (swift_getEnumCaseMultiPayload() != 40)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x29u:
      if (swift_getEnumCaseMultiPayload() != 41)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x2Au:
      if (swift_getEnumCaseMultiPayload() != 42)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x2Bu:
      if (swift_getEnumCaseMultiPayload() != 43)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x2Cu:
      if (swift_getEnumCaseMultiPayload() != 44)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x2Du:
      if (swift_getEnumCaseMultiPayload() != 45)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x2Eu:
      if (swift_getEnumCaseMultiPayload() != 46)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x2Fu:
      if (swift_getEnumCaseMultiPayload() != 47)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x30u:
      if (swift_getEnumCaseMultiPayload() != 48)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x31u:
      if (swift_getEnumCaseMultiPayload() != 49)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x32u:
      if (swift_getEnumCaseMultiPayload() != 50)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x33u:
      if (swift_getEnumCaseMultiPayload() == 51)
      {
        goto LABEL_149;
      }

      goto LABEL_160;
    case 0x34u:
      if (swift_getEnumCaseMultiPayload() != 52)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x35u:
      if (swift_getEnumCaseMultiPayload() != 53)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x36u:
      if (swift_getEnumCaseMultiPayload() != 54)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x37u:
      if (swift_getEnumCaseMultiPayload() != 55)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x38u:
      if (swift_getEnumCaseMultiPayload() != 56)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x39u:
      if (swift_getEnumCaseMultiPayload() != 57)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x3Au:
      if (swift_getEnumCaseMultiPayload() != 58)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x3Bu:
      if (swift_getEnumCaseMultiPayload() != 59)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x3Cu:
      if (swift_getEnumCaseMultiPayload() != 60)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    default:
      sub_20E24F914(v51, v46, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
      v53 = v112;
      if (swift_getEnumCaseMultiPayload())
      {
        v54 = type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled;
        v55 = v46;
LABEL_159:
        sub_20E24F84C(v55, v54);
LABEL_160:
        sub_20E04875C(v51, &qword_27C86A478, &qword_20E34A0F8);
LABEL_161:
        v71 = 0;
        return v71 & 1;
      }

      v87 = v97;
      sub_20E24F8AC(&v51[v53], v97, type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled);
      if (*v46 != *v87)
      {
        sub_20E24F84C(v87, type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled);
        goto LABEL_176;
      }

      v90 = v51;
      v91 = *(v93 + 20);
      sub_20E3221C0();
      sub_20E1EF2E8();
      v51 = v90;
      v92 = sub_20E322850();
      sub_20E24F84C(v87, type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled);
      if ((v92 & 1) == 0)
      {
LABEL_176:
        v89 = type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled;
        v86 = v46;
LABEL_173:
        sub_20E24F84C(v86, v89);
        sub_20E24F84C(v51, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
        goto LABEL_161;
      }

      sub_20E24F84C(v46, type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled);
LABEL_149:
      sub_20E24F84C(v51, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
      v71 = 1;
      return v71 & 1;
  }
}

uint64_t _s23LighthouseDataProcessor26ToolKitProtoTypeDefinitionV0deF12Version1KindO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v49 = a1;
  v50 = a2;
  v2 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v48 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v47 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = (&v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for ToolKitProtoTypeIdentifier.Primitive(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = (&v47 - v22);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = (&v47 - v25);
  MEMORY[0x28223BE20](v24);
  v28 = &v47 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86A4D0, &qword_20E34A150);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v29 - 8);
  v33 = &v47 - v32;
  v34 = *(v31 + 56);
  sub_20E24F914(v49, &v47 - v32, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
  sub_20E24F914(v50, &v33[v34], type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_20E24F914(v33, v23, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        v36 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration;
        v37 = v23;
        goto LABEL_15;
      }

      v38 = &v33[v34];
      v39 = v47;
      sub_20E24F8AC(v38, v47, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration);
      V2eeoiySbAG_AGtFZ_0 = _s23LighthouseDataProcessor26ToolKitProtoTypeDefinitionV8Version1V11EnumerationV2eeoiySbAG_AGtFZ_0(v23, v39);
      v41 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration;
      sub_20E24F84C(v39, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration);
      v42 = v23;
    }

    else
    {
      sub_20E24F914(v33, v20, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        v36 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query;
        v37 = v20;
        goto LABEL_15;
      }

      v44 = &v33[v34];
      v45 = v48;
      sub_20E24F8AC(v44, v48, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query);
      V2eeoiySbAG_AGtFZ_0 = _s23LighthouseDataProcessor26ToolKitProtoTypeDefinitionV8Version1V5QueryV2eeoiySbAG_AGtFZ_0(v20, v45);
      v41 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query;
      sub_20E24F84C(v45, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query);
      v42 = v20;
    }

    goto LABEL_17;
  }

  if (EnumCaseMultiPayload)
  {
    sub_20E24F914(v33, v26, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v36 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity;
      v37 = v26;
      goto LABEL_15;
    }

    sub_20E24F8AC(&v33[v34], v11, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity);
    V2eeoiySbAG_AGtFZ_0 = _s23LighthouseDataProcessor26ToolKitProtoTypeDefinitionV8Version1V6EntityV2eeoiySbAG_AGtFZ_0(v26, v11);
    sub_20E24F84C(v11, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity);
    v42 = v26;
    v43 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity;
LABEL_18:
    sub_20E24F84C(v42, v43);
    sub_20E24F84C(v33, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
    return V2eeoiySbAG_AGtFZ_0 & 1;
  }

  sub_20E24F914(v33, v28, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
  if (!swift_getEnumCaseMultiPayload())
  {
    sub_20E24F8AC(&v33[v34], v15, type metadata accessor for ToolKitProtoTypeIdentifier.Primitive);
    V2eeoiySbAG_AGtFZ_0 = static ToolKitProtoTypeIdentifier.Primitive.== infix(_:_:)(v28, v15);
    v41 = type metadata accessor for ToolKitProtoTypeIdentifier.Primitive;
    sub_20E24F84C(v15, type metadata accessor for ToolKitProtoTypeIdentifier.Primitive);
    v42 = v28;
LABEL_17:
    v43 = v41;
    goto LABEL_18;
  }

  v36 = type metadata accessor for ToolKitProtoTypeIdentifier.Primitive;
  v37 = v28;
LABEL_15:
  sub_20E24F84C(v37, v36);
  sub_20E04875C(v33, &qword_27C86A4D0, &qword_20E34A150);
  V2eeoiySbAG_AGtFZ_0 = 0;
  return V2eeoiySbAG_AGtFZ_0 & 1;
}

uint64_t _s23LighthouseDataProcessor30ToolKitProtoTypeIdentifierKindO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v32 = type metadata accessor for ToolKitProtoTypeIdentifier.Custom(0);
  v4 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32);
  v6 = (&v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for ToolKitProtoTypeIdentifier.Primitive(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ToolKitProtoTypeIdentifierKind(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = (&v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v17 = &v31 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86A4E0, &unk_20E34A160);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v31 - v21;
  v23 = *(v20 + 56);
  sub_20E24F914(a1, &v31 - v21, type metadata accessor for ToolKitProtoTypeIdentifierKind);
  sub_20E24F914(a2, &v22[v23], type metadata accessor for ToolKitProtoTypeIdentifierKind);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_20E24F914(v22, v17, type metadata accessor for ToolKitProtoTypeIdentifierKind);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_20E24F8AC(&v22[v23], v10, type metadata accessor for ToolKitProtoTypeIdentifier.Primitive);
      v27 = _s23LighthouseDataProcessor26ToolKitProtoTypeIdentifierV9PrimitiveV2eeoiySbAE_AEtFZ_0(v17, v10);
      sub_20E24F84C(v10, type metadata accessor for ToolKitProtoTypeIdentifier.Primitive);
      sub_20E24F84C(v17, type metadata accessor for ToolKitProtoTypeIdentifier.Primitive);
      sub_20E24F84C(v22, type metadata accessor for ToolKitProtoTypeIdentifierKind);
      return v27 & 1;
    }

    v28 = type metadata accessor for ToolKitProtoTypeIdentifier.Primitive;
    v29 = v17;
    goto LABEL_18;
  }

  sub_20E24F914(v22, v15, type metadata accessor for ToolKitProtoTypeIdentifierKind);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v28 = type metadata accessor for ToolKitProtoTypeIdentifier.Custom;
    v29 = v15;
LABEL_18:
    sub_20E24F84C(v29, v28);
    sub_20E04875C(v22, &qword_27C86A4E0, &unk_20E34A160);
LABEL_21:
    v27 = 0;
    return v27 & 1;
  }

  sub_20E24F8AC(&v22[v23], v6, type metadata accessor for ToolKitProtoTypeIdentifier.Custom);
  v24 = *v15 == *v6 && v15[1] == v6[1];
  if (!v24 && (sub_20E322D60() & 1) == 0 || (v15[2] == v6[2] ? (v25 = v15[3] == v6[3]) : (v25 = 0), !v25 && (sub_20E322D60() & 1) == 0 || (v26 = *(v32 + 24), sub_20E3221C0(), sub_20E1EF2E8(), (sub_20E322850() & 1) == 0)))
  {
    sub_20E24F84C(v6, type metadata accessor for ToolKitProtoTypeIdentifier.Custom);
    sub_20E24F84C(v15, type metadata accessor for ToolKitProtoTypeIdentifier.Custom);
    sub_20E24F84C(v22, type metadata accessor for ToolKitProtoTypeIdentifierKind);
    goto LABEL_21;
  }

  sub_20E24F84C(v6, type metadata accessor for ToolKitProtoTypeIdentifier.Custom);
  sub_20E24F84C(v15, type metadata accessor for ToolKitProtoTypeIdentifier.Custom);
  sub_20E24F84C(v22, type metadata accessor for ToolKitProtoTypeIdentifierKind);
  v27 = 1;
  return v27 & 1;
}

uint64_t _s23LighthouseDataProcessor28ToolKitProtoTypeInstanceKindO2eeoiySbAC_ACtFZ_0(void *a1, unint64_t *a2)
{
  v4 = type metadata accessor for ToolKitProtoTypeInstance.Deferred(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v74 = (&v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v73 = (&v69 - v8);
  v9 = type metadata accessor for ToolKitProtoTypeInstance.Restricted(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v70 = (&v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v14 = (&v69 - v13);
  v15 = type metadata accessor for ToolKitProtoTypeInstance.Union(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v71 = (&v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v72 = (&v69 - v19);
  v20 = type metadata accessor for ToolKitProtoTypeInstance.Optional(0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v24 = &v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v69 - v25;
  v27 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27 - 8);
  v31 = (&v69 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v29);
  v33 = (&v69 - v32);
  v34 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  v35 = *(*(v34 - 8) + 64);
  v36 = MEMORY[0x28223BE20](v34 - 8);
  v38 = &v69 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v40 = &v69 - v39;
  v41 = *a2;
  v42 = *a1 >> 61;
  if (v42 > 2)
  {
    if (v42 == 3)
    {
      if (v41 >> 61 == 3)
      {
        v55 = swift_projectBox();
        v56 = swift_projectBox();
        v57 = v72;
        sub_20E24F914(v55, v72, type metadata accessor for ToolKitProtoTypeInstance.Union);
        v58 = v71;
        sub_20E24F914(v56, v71, type metadata accessor for ToolKitProtoTypeInstance.Union);
        v59 = *v57;
        v60 = *v58;

        if (sub_20E1571C4(v59, v60) & 1) != 0 && (v61 = *(v15 + 20), sub_20E3221C0(), sub_20E1EF2E8(), (sub_20E322850()))
        {
          sub_20E24F84C(v58, type metadata accessor for ToolKitProtoTypeInstance.Union);
          sub_20E24F84C(v57, type metadata accessor for ToolKitProtoTypeInstance.Union);
          v45 = 1;
        }

        else
        {
          sub_20E24F84C(v58, type metadata accessor for ToolKitProtoTypeInstance.Union);
          sub_20E24F84C(v57, type metadata accessor for ToolKitProtoTypeInstance.Union);
          v45 = 0;
        }

        goto LABEL_23;
      }

      goto LABEL_24;
    }

    if (v42 != 4)
    {
      if (v41 >> 61 == 5)
      {
        v65 = swift_projectBox();
        v66 = swift_projectBox();
        v33 = v73;
        sub_20E24F914(v65, v73, type metadata accessor for ToolKitProtoTypeInstance.Deferred);
        v67 = v66;
        v31 = v74;
        sub_20E24F914(v67, v74, type metadata accessor for ToolKitProtoTypeInstance.Deferred);

        v45 = _s23LighthouseDataProcessor24ToolKitProtoTypeInstanceV8DeferredV2eeoiySbAE_AEtFZ_0(v33, v31);
        v46 = type metadata accessor for ToolKitProtoTypeInstance.Deferred;
        goto LABEL_20;
      }

LABEL_24:
      v45 = 0;
      return v45 & 1;
    }

    if (v41 >> 61 != 4)
    {
      goto LABEL_24;
    }

    v47 = swift_projectBox();
    v48 = swift_projectBox();
    sub_20E24F914(v47, v14, type metadata accessor for ToolKitProtoTypeInstance.Restricted);
    v49 = v48;
    v50 = v70;
    sub_20E24F914(v49, v70, type metadata accessor for ToolKitProtoTypeInstance.Restricted);

    v45 = sub_20E2E5408(v14, v50);
    v51 = type metadata accessor for ToolKitProtoTypeInstance.Restricted;
    sub_20E24F84C(v50, type metadata accessor for ToolKitProtoTypeInstance.Restricted);
    v52 = v14;
LABEL_21:
    v64 = v51;
    goto LABEL_22;
  }

  if (!v42)
  {
    if (v41 >> 61)
    {
      goto LABEL_24;
    }

    v53 = swift_projectBox();
    v54 = swift_projectBox();
    sub_20E24F914(v53, v40, type metadata accessor for ToolKitProtoTypeIdentifier);
    sub_20E24F914(v54, v38, type metadata accessor for ToolKitProtoTypeIdentifier);

    v45 = _s23LighthouseDataProcessor26ToolKitProtoTypeIdentifierV2eeoiySbAC_ACtFZ_0(v40, v38);
    v51 = type metadata accessor for ToolKitProtoTypeIdentifier;
    sub_20E24F84C(v38, type metadata accessor for ToolKitProtoTypeIdentifier);
    v52 = v40;
    goto LABEL_21;
  }

  if (v42 == 1)
  {
    if (v41 >> 61 == 1)
    {
      v43 = swift_projectBox();
      v44 = swift_projectBox();
      sub_20E24F914(v43, v33, type metadata accessor for ToolKitProtoTypeInstance);
      sub_20E24F914(v44, v31, type metadata accessor for ToolKitProtoTypeInstance);

      v45 = static ToolKitProtoTypeInstance.== infix(_:_:)(v33, v31);
      v46 = type metadata accessor for ToolKitProtoTypeInstance;
LABEL_20:
      v51 = v46;
      sub_20E24F84C(v31, v46);
      v52 = v33;
      goto LABEL_21;
    }

    goto LABEL_24;
  }

  if (v41 >> 61 != 2)
  {
    goto LABEL_24;
  }

  v62 = swift_projectBox();
  v63 = swift_projectBox();
  sub_20E24F914(v62, v26, type metadata accessor for ToolKitProtoTypeInstance.Optional);
  sub_20E24F914(v63, v24, type metadata accessor for ToolKitProtoTypeInstance.Optional);

  v45 = _s23LighthouseDataProcessor24ToolKitProtoTypeInstanceV8OptionalV2eeoiySbAE_AEtFZ_0(v26, v24);
  sub_20E24F84C(v24, type metadata accessor for ToolKitProtoTypeInstance.Optional);
  v52 = v26;
  v64 = type metadata accessor for ToolKitProtoTypeInstance.Optional;
LABEL_22:
  sub_20E24F84C(v52, v64);
LABEL_23:

  return v45 & 1;
}

uint64_t _s23LighthouseDataProcessor22ToolKitProtoTypedValueV0def9PrimitiveH4KindO2eeoiySbAE_AEtFZ_0(uint64_t a1, void *a2)
{
  v156 = a1;
  v157 = a2;
  v2 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v141 = &v131 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.App(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v140 = &v131 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.File(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v139 = &v131 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v138 = &v131 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Placemark(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v136 = &v131 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v135 = &v131 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount(0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v134 = &v131 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Measurement(0);
  v23 = *(*(v131 - 8) + 64);
  MEMORY[0x28223BE20](v131);
  v137 = &v131 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_20E322150();
  v154 = *(v25 - 8);
  v155 = v25;
  v26 = *(v154 + 64);
  MEMORY[0x28223BE20](v25);
  v133 = &v131 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal(0);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v132 = &v131 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x28223BE20](v31);
  v152 = &v131 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  v147 = (&v131 - v36);
  v37 = MEMORY[0x28223BE20](v35);
  v151 = &v131 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v150 = &v131 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v149 = &v131 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v148 = &v131 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v146 = &v131 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v145 = &v131 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v153 = &v131 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v143 = (&v131 - v52);
  v53 = MEMORY[0x28223BE20](v51);
  v55 = (&v131 - v54);
  v56 = MEMORY[0x28223BE20](v53);
  v58 = (&v131 - v57);
  v59 = MEMORY[0x28223BE20](v56);
  v144 = &v131 - v60;
  v61 = MEMORY[0x28223BE20](v59);
  v63 = (&v131 - v62);
  v64 = MEMORY[0x28223BE20](v61);
  v142 = &v131 - v65;
  v66 = MEMORY[0x28223BE20](v64);
  v68 = (&v131 - v67);
  v69 = MEMORY[0x28223BE20](v66);
  v71 = (&v131 - v70);
  MEMORY[0x28223BE20](v69);
  v73 = &v131 - v72;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86A4C8, &qword_20E34A148);
  v75 = *(*(v74 - 8) + 64);
  v76 = MEMORY[0x28223BE20](v74 - 8);
  v78 = &v131 - v77;
  v79 = &v131 + *(v76 + 56) - v77;
  sub_20E24F914(v156, &v131 - v77, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
  v80 = v157;
  v157 = v79;
  sub_20E24F914(v80, v79, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_20E24F914(v78, v71, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      v111 = v157;
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_68;
      }

      v108 = *v71 == *v111;
      goto LABEL_34;
    case 2u:
      sub_20E24F914(v78, v68, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      v107 = v157;
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_68;
      }

      v108 = *v68 == *v107;
LABEL_34:
      v83 = v108;
      goto LABEL_51;
    case 3u:
      v93 = v142;
      sub_20E24F914(v78, v142, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      v110 = v157;
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v95 = v132;
        sub_20E24F8AC(v110, v132, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal);
        v83 = _s23LighthouseDataProcessor22ToolKitProtoTypedValueV09PrimitiveH0V7DecimalV2eeoiySbAG_AGtFZ_0(v93, v95);
        v96 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal;
        goto LABEL_50;
      }

      v128 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal;
      goto LABEL_67;
    case 4u:
      sub_20E24F914(v78, v63, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      v99 = *v63;
      v98 = v63[1];
      v100 = v157;
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        goto LABEL_11;
      }

      goto LABEL_31;
    case 5u:
      v113 = v144;
      sub_20E24F914(v78, v144, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      v114 = v157;
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v116 = v154;
        v115 = v155;
        v117 = v133;
        (*(v154 + 32))(v133, v114, v155);
        v83 = sub_20E322120();
        v118 = *(v116 + 8);
        v118(v117, v115);
        v118(v113, v115);
        goto LABEL_51;
      }

      (*(v154 + 8))(v113, v155);
      goto LABEL_68;
    case 6u:
      sub_20E24F914(v78, v58, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      v121 = *v58;
      v120 = v58[1];
      v122 = v157;
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        v88 = v78;
        v123 = *v122;
        v124 = v122[1];
        v83 = sub_20E15F7B0(v121, v120, *v122, v124);
        sub_20E05E888(v123, v124);
        v91 = v121;
        v92 = v120;
        goto LABEL_45;
      }

      sub_20E05E888(v121, v120);
      goto LABEL_68;
    case 7u:
      sub_20E24F914(v78, v55, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      v99 = *v55;
      v98 = v55[1];
      v100 = v157;
      if (swift_getEnumCaseMultiPayload() != 7)
      {
LABEL_31:

        goto LABEL_68;
      }

LABEL_11:
      v101 = *v100;
      v102 = v100[1];
      if (v99 == v101 && v98 == v102)
      {

        goto LABEL_60;
      }

      v129 = sub_20E322D60();

      if (v129)
      {
        goto LABEL_60;
      }

      goto LABEL_72;
    case 8u:
      v127 = v143;
      sub_20E24F914(v78, v143, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      v85 = *v127;
      v86 = v127[1];
      v87 = v157;
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        goto LABEL_53;
      }

      goto LABEL_5;
    case 9u:
      v93 = v153;
      sub_20E24F914(v78, v153, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      v104 = v157;
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        v128 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Measurement;
        goto LABEL_67;
      }

      v105 = v137;
      sub_20E24F8AC(v104, v137, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Measurement);
      if (*v93 == *v105 && *(v93 + 8) == *(v105 + 8) || (sub_20E322D60()) && *(v93 + 16) == *(v105 + 16) && *(v93 + 24) == *(v105 + 24))
      {
        v106 = *(v131 + 28);
        sub_20E3221C0();
        sub_20E1EF2E8();
        if (sub_20E322850())
        {
          sub_20E24F84C(v105, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Measurement);
          sub_20E24F84C(v93, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Measurement);
LABEL_60:
          sub_20E24F84C(v78, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
          v83 = 1;
          return v83 & 1;
        }
      }

      sub_20E24F84C(v105, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Measurement);
      sub_20E24F84C(v93, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Measurement);
LABEL_72:
      sub_20E24F84C(v78, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      goto LABEL_69;
    case 0xAu:
      v93 = v145;
      sub_20E24F914(v78, v145, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      v125 = v157;
      if (swift_getEnumCaseMultiPayload() == 10)
      {
        v95 = v134;
        sub_20E24F8AC(v125, v134, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount);
        v83 = _s23LighthouseDataProcessor22ToolKitProtoTypedValueV09PrimitiveH0V14CurrencyAmountV2eeoiySbAG_AGtFZ_0(v93, v95);
        v96 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount;
        goto LABEL_50;
      }

      v128 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount;
      goto LABEL_67;
    case 0xBu:
      v93 = v146;
      sub_20E24F914(v78, v146, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      v97 = v157;
      if (swift_getEnumCaseMultiPayload() == 11)
      {
        v95 = v135;
        sub_20E24F8AC(v97, v135, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod);
        v83 = _s23LighthouseDataProcessor22ToolKitProtoTypedValueV09PrimitiveH0V13PaymentMethodV2eeoiySbAG_AGtFZ_0(v93, v95);
        v96 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod;
        goto LABEL_50;
      }

      v128 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod;
      goto LABEL_67;
    case 0xCu:
      v93 = v148;
      sub_20E24F914(v78, v148, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      v103 = v157;
      if (swift_getEnumCaseMultiPayload() == 12)
      {
        v95 = v136;
        sub_20E24F8AC(v103, v136, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Placemark);
        v83 = sub_20E2E5800(v93, v95);
        v96 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Placemark;
        goto LABEL_50;
      }

      v128 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Placemark;
      goto LABEL_67;
    case 0xDu:
      v93 = v149;
      sub_20E24F914(v78, v149, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      v119 = v157;
      if (swift_getEnumCaseMultiPayload() == 13)
      {
        v95 = v138;
        sub_20E24F8AC(v119, v138, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person);
        v83 = sub_20E2E5818(v93, v95);
        v96 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person;
        goto LABEL_50;
      }

      v128 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person;
      goto LABEL_67;
    case 0xEu:
      v93 = v150;
      sub_20E24F914(v78, v150, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      v94 = v157;
      if (swift_getEnumCaseMultiPayload() == 14)
      {
        v95 = v139;
        sub_20E24F8AC(v94, v139, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.File);
        v83 = sub_20E2E5830(v93, v95);
        v96 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.File;
        goto LABEL_50;
      }

      v128 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.File;
      goto LABEL_67;
    case 0xFu:
      v93 = v151;
      sub_20E24F914(v78, v151, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      v109 = v157;
      if (swift_getEnumCaseMultiPayload() == 15)
      {
        v95 = v140;
        sub_20E24F8AC(v109, v140, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.App);
        v83 = sub_20E2E5BCC(v93, v95);
        v96 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.App;
        goto LABEL_50;
      }

      v128 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.App;
      goto LABEL_67;
    case 0x10u:
      v84 = v147;
      sub_20E24F914(v78, v147, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      v85 = *v84;
      v86 = v84[1];
      v87 = v157;
      if (swift_getEnumCaseMultiPayload() != 16)
      {
LABEL_53:
        sub_20E05E888(v85, v86);
        goto LABEL_68;
      }

LABEL_5:
      v88 = v78;
      v89 = *v87;
      v90 = v87[1];
      v83 = sub_20E15F7B0(v85, v86, *v87, v90);
      sub_20E05E888(v89, v90);
      v91 = v85;
      v92 = v86;
LABEL_45:
      sub_20E05E888(v91, v92);
      sub_20E24F84C(v88, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      break;
    case 0x11u:
      v93 = v152;
      sub_20E24F914(v78, v152, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      v112 = v157;
      if (swift_getEnumCaseMultiPayload() == 17)
      {
        v95 = v141;
        sub_20E24F8AC(v112, v141, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents);
        v83 = _s23LighthouseDataProcessor22ToolKitProtoTypedValueV09PrimitiveH0V14DateComponentsV2eeoiySbAG_AGtFZ_0(v93, v95);
        v96 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents;
LABEL_50:
        v126 = v96;
        sub_20E24F84C(v95, v96);
        sub_20E24F84C(v93, v126);
LABEL_51:
        sub_20E24F84C(v78, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      }

      else
      {
        v128 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents;
LABEL_67:
        sub_20E24F84C(v93, v128);
LABEL_68:
        sub_20E04875C(v78, &qword_27C86A4C8, &qword_20E34A148);
LABEL_69:
        v83 = 0;
      }

      break;
    case 0x12u:
      if (swift_getEnumCaseMultiPayload() != 18)
      {
        goto LABEL_68;
      }

      goto LABEL_60;
    default:
      sub_20E24F914(v78, v73, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      v81 = v157;
      if (swift_getEnumCaseMultiPayload())
      {
        goto LABEL_68;
      }

      v82 = *v73 ^ *v81;
      sub_20E24F84C(v78, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      v83 = v82 ^ 1;
      return v83 & 1;
  }

  return v83 & 1;
}

uint64_t _s23LighthouseDataProcessor26ToolKitProtoTypedValueKindO2eeoiySbAC_ACtFZ_0(void *a1, unint64_t *a2)
{
  v76 = a2;
  v3 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v75 = (&v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v74 = (&v71 - v7);
  v8 = type metadata accessor for ToolKitProtoTypedValue.EntityIdentifierValue(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v73 = (&v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v72 = (&v71 - v12);
  Value = type metadata accessor for ToolKitProtoTypedValue.QueryValue(0);
  v14 = *(*(Value - 8) + 64);
  v15 = MEMORY[0x28223BE20](Value - 8);
  v71 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v71 - v17;
  v19 = type metadata accessor for ToolKitProtoTypedValue.CollectionValue(0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = (&v71 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v21);
  v25 = (&v71 - v24);
  v26 = type metadata accessor for ToolKitProtoTypedValue.EntityValue(0);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v30 = (&v71 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v28);
  v32 = (&v71 - v31);
  v33 = type metadata accessor for ToolKitProtoTypedValue.EnumerationValue(0);
  v34 = *(*(v33 - 8) + 64);
  v35 = MEMORY[0x28223BE20](v33 - 8);
  v37 = (&v71 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v35);
  v39 = (&v71 - v38);
  v40 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue(0);
  v41 = *(*(v40 - 8) + 64);
  v42 = MEMORY[0x28223BE20](v40 - 8);
  v44 = &v71 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v46 = &v71 - v45;
  v47 = *v76;
  v48 = *a1 >> 61;
  if (v48 > 2)
  {
    if (v48 <= 4)
    {
      if (v48 == 3)
      {
        if (v47 >> 61 == 3)
        {
          v49 = swift_projectBox();
          v50 = swift_projectBox();
          sub_20E24F914(v49, v25, type metadata accessor for ToolKitProtoTypedValue.CollectionValue);
          sub_20E24F914(v50, v23, type metadata accessor for ToolKitProtoTypedValue.CollectionValue);

          H0V2eeoiySbAE_AEtFZ_0 = sub_20E2EA91C(v25, v23);
          v52 = type metadata accessor for ToolKitProtoTypedValue.CollectionValue;
          sub_20E24F84C(v23, type metadata accessor for ToolKitProtoTypedValue.CollectionValue);
          v53 = v25;
LABEL_22:
          v56 = v52;
          goto LABEL_23;
        }
      }

      else if (v47 >> 61 == 4)
      {
        v65 = swift_projectBox();
        v66 = swift_projectBox();
        sub_20E24F914(v65, v18, type metadata accessor for ToolKitProtoTypedValue.QueryValue);
        v67 = v71;
        sub_20E24F914(v66, v71, type metadata accessor for ToolKitProtoTypedValue.QueryValue);

        H0V2eeoiySbAE_AEtFZ_0 = _s23LighthouseDataProcessor22ToolKitProtoTypedValueV05QueryH0V2eeoiySbAE_AEtFZ_0(v18, v67);
        v52 = type metadata accessor for ToolKitProtoTypedValue.QueryValue;
        sub_20E24F84C(v67, type metadata accessor for ToolKitProtoTypedValue.QueryValue);
        v53 = v18;
        goto LABEL_22;
      }

      goto LABEL_24;
    }

    if (v48 == 5)
    {
      if (v47 >> 61 != 5)
      {
        goto LABEL_24;
      }

      v57 = swift_projectBox();
      v58 = swift_projectBox();
      v32 = v72;
      sub_20E24F914(v57, v72, type metadata accessor for ToolKitProtoTypedValue.EntityIdentifierValue);
      v30 = v73;
      sub_20E24F914(v58, v73, type metadata accessor for ToolKitProtoTypedValue.EntityIdentifierValue);

      H0V2eeoiySbAE_AEtFZ_0 = _s23LighthouseDataProcessor22ToolKitProtoTypedValueV016EntityIdentifierH0V2eeoiySbAE_AEtFZ_0(v32, v30);
      v59 = type metadata accessor for ToolKitProtoTypedValue.EntityIdentifierValue;
    }

    else
    {
      if (v47 >> 61 != 6)
      {
        goto LABEL_24;
      }

      v68 = swift_projectBox();
      v69 = swift_projectBox();
      v32 = v74;
      sub_20E24F914(v68, v74, type metadata accessor for ToolKitProtoTypedValue.DeferredValue);
      v30 = v75;
      sub_20E24F914(v69, v75, type metadata accessor for ToolKitProtoTypedValue.DeferredValue);

      H0V2eeoiySbAE_AEtFZ_0 = _s23LighthouseDataProcessor22ToolKitProtoTypedValueV08DeferredH0V2eeoiySbAE_AEtFZ_0(v32, v30);
      v59 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue;
    }

LABEL_21:
    v52 = v59;
    sub_20E24F84C(v30, v59);
    v53 = v32;
    goto LABEL_22;
  }

  if (!v48)
  {
    if (!(v47 >> 61))
    {
      v60 = *v76;
      v61 = swift_projectBox();
      v62 = swift_projectBox();
      sub_20E24F914(v61, v46, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue);
      sub_20E24F914(v62, v44, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue);

      H0V2eeoiySbAE_AEtFZ_0 = _s23LighthouseDataProcessor22ToolKitProtoTypedValueV09PrimitiveH0V2eeoiySbAE_AEtFZ_0(v46, v44);
      v52 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue;
      sub_20E24F84C(v44, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue);
      v53 = v46;
      goto LABEL_22;
    }

LABEL_24:
    H0V2eeoiySbAE_AEtFZ_0 = 0;
    return H0V2eeoiySbAE_AEtFZ_0 & 1;
  }

  if (v48 != 1)
  {
    if (v47 >> 61 != 2)
    {
      goto LABEL_24;
    }

    v63 = swift_projectBox();
    v64 = swift_projectBox();
    sub_20E24F914(v63, v32, type metadata accessor for ToolKitProtoTypedValue.EntityValue);
    sub_20E24F914(v64, v30, type metadata accessor for ToolKitProtoTypedValue.EntityValue);

    H0V2eeoiySbAE_AEtFZ_0 = _s23LighthouseDataProcessor22ToolKitProtoTypedValueV06EntityH0V2eeoiySbAE_AEtFZ_0(v32, v30);
    v59 = type metadata accessor for ToolKitProtoTypedValue.EntityValue;
    goto LABEL_21;
  }

  if (v47 >> 61 != 1)
  {
    goto LABEL_24;
  }

  v54 = swift_projectBox();
  v55 = swift_projectBox();
  sub_20E24F914(v54, v39, type metadata accessor for ToolKitProtoTypedValue.EnumerationValue);
  sub_20E24F914(v55, v37, type metadata accessor for ToolKitProtoTypedValue.EnumerationValue);

  H0V2eeoiySbAE_AEtFZ_0 = _s23LighthouseDataProcessor22ToolKitProtoTypedValueV011EnumerationH0V2eeoiySbAE_AEtFZ_0(v39, v37);
  sub_20E24F84C(v37, type metadata accessor for ToolKitProtoTypedValue.EnumerationValue);
  v53 = v39;
  v56 = type metadata accessor for ToolKitProtoTypedValue.EnumerationValue;
LABEL_23:
  sub_20E24F84C(v53, v56);

  return H0V2eeoiySbAE_AEtFZ_0 & 1;
}

uint64_t _s23LighthouseDataProcessor012ToolKitProtoD10DefinitionV8Version1V9ParameterV12RelationshipV0deF12RelationKindO2eeoiySbAK_AKtFZ_0(uint64_t a1, uint64_t a2)
{
  v71 = a1;
  v72 = a2;
  DoesNotContain = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain(0);
  v2 = *(*(DoesNotContain - 8) + 64);
  MEMORY[0x28223BE20](DoesNotContain);
  v70 = (&v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v63 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains(0);
  v4 = *(*(v63 - 8) + 64);
  MEMORY[0x28223BE20](v63);
  v69 = (&v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v60 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.LessThan(0);
  v6 = *(*(v60 - 8) + 64);
  MEMORY[0x28223BE20](v60);
  v68 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan(0);
  v8 = *(*(v59 - 8) + 64);
  MEMORY[0x28223BE20](v59);
  v67 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals(0);
  v10 = *(*(v62 - 8) + 64);
  MEMORY[0x28223BE20](v62);
  v66 = (&v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v61 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals(0);
  v12 = *(*(v61 - 8) + 64);
  MEMORY[0x28223BE20](v61);
  v65 = (&v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = (&v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = MEMORY[0x28223BE20](v16);
  v21 = (&v59 - v20);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v59 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v59 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v30 = (&v59 - v29);
  MEMORY[0x28223BE20](v28);
  v32 = (&v59 - v31);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86A470, &qword_20E34A0F0);
  v34 = *(*(v33 - 8) + 64);
  v35 = MEMORY[0x28223BE20](v33 - 8);
  v37 = &v59 - v36;
  v38 = *(v35 + 56);
  sub_20E24F914(v71, &v59 - v36, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
  sub_20E24F914(v72, &v37[v38], type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        sub_20E24F914(v37, v27, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
        if (swift_getEnumCaseMultiPayload() != 2)
        {
          v40 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan;
          v41 = v27;
          goto LABEL_41;
        }

        v46 = v67;
        sub_20E24F8AC(&v37[v38], v67, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan);
        if ((sub_20E1484A4(*v27, *v46) & 1) == 0 || v27[8] != *(v46 + 8) || (v47 = *(v59 + 24), sub_20E3221C0(), sub_20E1EF2E8(), (sub_20E322850() & 1) == 0))
        {
          v54 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan;
          sub_20E24F84C(v46, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan);
          v55 = v27;
          goto LABEL_54;
        }

        v44 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan;
        sub_20E24F84C(v46, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan);
        v45 = v27;
      }

      else
      {
        sub_20E24F914(v37, v24, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
        if (swift_getEnumCaseMultiPayload() != 3)
        {
          v40 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.LessThan;
          v41 = v24;
          goto LABEL_41;
        }

        v52 = v68;
        sub_20E24F8AC(&v37[v38], v68, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.LessThan);
        if ((sub_20E1484A4(*v24, *v52) & 1) == 0 || v24[8] != *(v52 + 8) || (v53 = *(v60 + 24), sub_20E3221C0(), sub_20E1EF2E8(), (sub_20E322850() & 1) == 0))
        {
          v54 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.LessThan;
          sub_20E24F84C(v52, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.LessThan);
          v55 = v24;
          goto LABEL_54;
        }

        v44 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.LessThan;
        sub_20E24F84C(v52, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.LessThan);
        v45 = v24;
      }
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        sub_20E24F914(v37, v32, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
        if (swift_getEnumCaseMultiPayload())
        {
          v40 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals;
          v41 = v32;
LABEL_41:
          sub_20E24F84C(v41, v40);
          goto LABEL_42;
        }

        v56 = v65;
        sub_20E24F8AC(&v37[v38], v65, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals);
        if (sub_20E1484A4(*v32, *v56))
        {
          v57 = *(v61 + 20);
          sub_20E3221C0();
          sub_20E1EF2E8();
          if (sub_20E322850())
          {
            v44 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals;
            sub_20E24F84C(v56, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals);
            v45 = v32;
            goto LABEL_48;
          }
        }

        v54 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals;
        sub_20E24F84C(v56, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals);
        v55 = v32;
LABEL_54:
        sub_20E24F84C(v55, v54);
        sub_20E24F84C(v37, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
        return 0;
      }

      sub_20E24F914(v37, v30, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v40 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals;
        v41 = v30;
        goto LABEL_41;
      }

      v48 = v66;
      sub_20E24F8AC(&v37[v38], v66, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals);
      if ((sub_20E1484A4(*v30, *v48) & 1) == 0 || (v49 = *(v62 + 20), sub_20E3221C0(), sub_20E1EF2E8(), (sub_20E322850() & 1) == 0))
      {
        v54 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals;
        sub_20E24F84C(v48, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals);
        v55 = v30;
        goto LABEL_54;
      }

      v44 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals;
      sub_20E24F84C(v48, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals);
      v45 = v30;
    }

LABEL_48:
    sub_20E24F84C(v45, v44);
LABEL_49:
    sub_20E24F84C(v37, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
    return 1;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload == 4)
    {
      sub_20E24F914(v37, v21, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        v40 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains;
        v41 = v21;
        goto LABEL_41;
      }

      v42 = v69;
      sub_20E24F8AC(&v37[v38], v69, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains);
      if ((sub_20E1484A4(*v21, *v42) & 1) == 0 || (v43 = *(v63 + 20), sub_20E3221C0(), sub_20E1EF2E8(), (sub_20E322850() & 1) == 0))
      {
        v54 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains;
        sub_20E24F84C(v42, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains);
        v55 = v21;
        goto LABEL_54;
      }

      v44 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains;
      sub_20E24F84C(v42, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains);
      v45 = v21;
    }

    else
    {
      sub_20E24F914(v37, v18, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        v40 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain;
        v41 = v18;
        goto LABEL_41;
      }

      v50 = v70;
      sub_20E24F8AC(&v37[v38], v70, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain);
      if ((sub_20E1484A4(*v18, *v50) & 1) == 0 || (v51 = *(DoesNotContain + 20), sub_20E3221C0(), sub_20E1EF2E8(), (sub_20E322850() & 1) == 0))
      {
        v54 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain;
        sub_20E24F84C(v50, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain);
        v55 = v18;
        goto LABEL_54;
      }

      v44 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain;
      sub_20E24F84C(v50, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain);
      v45 = v18;
    }

    goto LABEL_48;
  }

  if (EnumCaseMultiPayload == 6)
  {
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      goto LABEL_49;
    }
  }

  else if (swift_getEnumCaseMultiPayload() == 7)
  {
    goto LABEL_49;
  }

LABEL_42:
  sub_20E04875C(v37, &qword_27C86A470, &qword_20E34A0F0);
  return 0;
}

uint64_t _s23LighthouseDataProcessor012ToolKitProtoD10DefinitionV8Version1V0defD8IconKindO2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolKitProtoToolIconKind(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = (&v29 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86A468, &qword_20E34A0E8);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = &v29 - v18;
  v20 = (&v29 + *(v17 + 56) - v18);
  sub_20E24F914(a1, &v29 - v18, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolKitProtoToolIconKind);
  sub_20E24F914(a2, v20, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolKitProtoToolIconKind);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_20E24F914(v19, v14, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolKitProtoToolIconKind);
    v23 = *v14;
    v22 = v14[1];
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      if (v23 == *v20 && v22 == v20[1])
      {
        v27 = v20[1];
      }

      else
      {
        v25 = v20[1];
        v26 = sub_20E322D60();

        if ((v26 & 1) == 0)
        {
          sub_20E24F84C(v19, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolKitProtoToolIconKind);
          goto LABEL_8;
        }
      }

      sub_20E24F84C(v19, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolKitProtoToolIconKind);
      v21 = 1;
      return v21 & 1;
    }

LABEL_7:
    sub_20E04875C(v19, &qword_27C86A468, &qword_20E34A0E8);
LABEL_8:
    v21 = 0;
    return v21 & 1;
  }

  sub_20E24F914(v19, v12, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolKitProtoToolIconKind);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_20E24F84C(v12, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon);
    goto LABEL_7;
  }

  sub_20E24F8AC(v20, v7, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon);
  v21 = static ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon.== infix(_:_:)(v12, v7);
  sub_20E24F84C(v7, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon);
  sub_20E24F84C(v12, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon);
  sub_20E24F84C(v19, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolKitProtoToolIconKind);
  return v21 & 1;
}

unint64_t sub_20E246D00()
{
  result = qword_27C869DA0;
  if (!qword_27C869DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C869DA0);
  }

  return result;
}

unint64_t sub_20E246D88()
{
  result = qword_27C869DB8;
  if (!qword_27C869DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C869DB8);
  }

  return result;
}

unint64_t sub_20E246E10()
{
  result = qword_27C869DD0;
  if (!qword_27C869DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C869DD0);
  }

  return result;
}

unint64_t sub_20E246E98()
{
  result = qword_27C869DE8;
  if (!qword_27C869DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C869DE8);
  }

  return result;
}

unint64_t sub_20E246F20()
{
  result = qword_27C869E00;
  if (!qword_27C869E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C869E00);
  }

  return result;
}

unint64_t sub_20E246FA8()
{
  result = qword_27C869E18;
  if (!qword_27C869E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C869E18);
  }

  return result;
}

unint64_t sub_20E247030()
{
  result = qword_27C869E30;
  if (!qword_27C869E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C869E30);
  }

  return result;
}

unint64_t sub_20E2470B8()
{
  result = qword_27C869E48;
  if (!qword_27C869E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C869E48);
  }

  return result;
}

unint64_t sub_20E247140()
{
  result = qword_27C869E60;
  if (!qword_27C869E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C869E60);
  }

  return result;
}

unint64_t sub_20E2471C8()
{
  result = qword_27C869E78;
  if (!qword_27C869E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C869E78);
  }

  return result;
}

unint64_t sub_20E247250()
{
  result = qword_27C869E90;
  if (!qword_27C869E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C869E90);
  }

  return result;
}

unint64_t sub_20E2472D8()
{
  result = qword_27C869EA8;
  if (!qword_27C869EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C869EA8);
  }

  return result;
}

unint64_t sub_20E247360()
{
  result = qword_27C869EC0;
  if (!qword_27C869EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C869EC0);
  }

  return result;
}

unint64_t sub_20E2473E8()
{
  result = qword_27C869ED8;
  if (!qword_27C869ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C869ED8);
  }

  return result;
}

unint64_t sub_20E247470()
{
  result = qword_27C869EF0;
  if (!qword_27C869EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C869EF0);
  }

  return result;
}

unint64_t sub_20E2474F8()
{
  result = qword_27C869F08;
  if (!qword_27C869F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C869F08);
  }

  return result;
}

unint64_t sub_20E247580()
{
  result = qword_27C869F20;
  if (!qword_27C869F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C869F20);
  }

  return result;
}

unint64_t sub_20E247608()
{
  result = qword_27C869F38;
  if (!qword_27C869F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C869F38);
  }

  return result;
}

unint64_t sub_20E247690()
{
  result = qword_27C869F50;
  if (!qword_27C869F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C869F50);
  }

  return result;
}

unint64_t sub_20E247718()
{
  result = qword_27C869F68;
  if (!qword_27C869F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C869F68);
  }

  return result;
}

unint64_t sub_20E2477A0()
{
  result = qword_27C869F80;
  if (!qword_27C869F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C869F80);
  }

  return result;
}

unint64_t sub_20E247828()
{
  result = qword_27C869F98;
  if (!qword_27C869F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C869F98);
  }

  return result;
}

unint64_t sub_20E2478B0()
{
  result = qword_27C869FB0;
  if (!qword_27C869FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C869FB0);
  }

  return result;
}

unint64_t sub_20E247938()
{
  result = qword_27C869FC8;
  if (!qword_27C869FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C869FC8);
  }

  return result;
}

unint64_t sub_20E2479C0()
{
  result = qword_27C869FE0;
  if (!qword_27C869FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C869FE0);
  }

  return result;
}

void sub_20E247B00(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5, uint64_t (*a6)(void, uint64_t))
{
  sub_20E24E518(319, a4, a5, a6);
  if (v6 <= 0x3F)
  {
    sub_20E3221C0();
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t getEnumTagSinglePayload for ToolKitProtoTypeIdentifier.Primitive.MeasurementUnitType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEA)
  {
    goto LABEL_17;
  }

  if (a2 + 22 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 22) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 22;
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

      return (*a1 | (v4 << 8)) - 22;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 22;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x17;
  v8 = v6 - 23;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ToolKitProtoTypeIdentifier.Primitive.MeasurementUnitType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 22 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 22) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEA)
  {
    v4 = 0;
  }

  if (a2 > 0xE9)
  {
    v5 = ((a2 - 234) >> 8) + 1;
    *result = a2 + 22;
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
    *result = a2 + 22;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ToolKitProtoTypeIdentifier.ToolKitProtoPrimitiveKind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD8)
  {
    goto LABEL_20;
  }

  v2 = a2 + 40;
  if (a2 + 40 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 40;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 40;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 0x17)
  {
    v8 = v7 - 22;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 0x13)
  {
    return v8 - 18;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ToolKitProtoTypeIdentifier.ToolKitProtoPrimitiveKind(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 40;
  if (a3 + 40 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xD8)
  {
    v5 = 0;
  }

  if (a2 > 0xD7)
  {
    v6 = ((a2 - 216) >> 8) + 1;
    *result = a2 + 40;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 40;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_20E247E38(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 0x17)
  {
    return v1 - 22;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_20E247E4C(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 22;
  }

  return result;
}

void sub_20E247F1C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_20E247FF8()
{
  result = type metadata accessor for ToolKitProtoSystemTypeProtocol.IntentUpdatableEntity(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ToolKitProtoSystemTypeProtocol.AssistantSchema(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for ToolKitProtoSystemTypeProtocol.PersistentFileIdentifiable(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_20E24814C()
{
  sub_20E247F1C(319, &qword_280E03FF0, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_20E247F1C(319, &qword_280E03F70, type metadata accessor for ToolKitProtoRuntimeRequirement, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_20E247F1C(319, &qword_280E03F38, type metadata accessor for ToolKitProtoSampleInvocationDefinition, MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        sub_20E247F1C(319, &qword_280E03F68, type metadata accessor for ToolKitProtoSystemTypeProtocol, MEMORY[0x277D83940]);
        if (v3 <= 0x3F)
        {
          sub_20E24E518(319, &qword_280E03FF8, &type metadata for ToolKitProtoTypeDefinition.Version1.Entity.RuntimeFlags, MEMORY[0x277D83940]);
          if (v4 <= 0x3F)
          {
            sub_20E247F1C(319, &qword_280E03F78, type metadata accessor for ToolKitProtoCoercionDefinition, MEMORY[0x277D83940]);
            if (v5 <= 0x3F)
            {
              sub_20E247F1C(319, qword_280E0DAC0, type metadata accessor for ToolKitProtoTypeIdentifier, MEMORY[0x277D83D88]);
              if (v6 <= 0x3F)
              {
                sub_20E247F1C(319, qword_280E06F90, type metadata accessor for ToolKitProtoTypeDisplayRepresentation, MEMORY[0x277D83D88]);
                if (v7 <= 0x3F)
                {
                  sub_20E3221C0();
                  if (v8 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_20E248478()
{
  sub_20E247F1C(319, &qword_280E04000, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_20E247F1C(319, &qword_280E03F70, type metadata accessor for ToolKitProtoRuntimeRequirement, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_20E247F1C(319, &qword_280E03F68, type metadata accessor for ToolKitProtoSystemTypeProtocol, MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        sub_20E247F1C(319, qword_280E0DAC0, type metadata accessor for ToolKitProtoTypeIdentifier, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_20E247F1C(319, qword_280E06F90, type metadata accessor for ToolKitProtoTypeDisplayRepresentation, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_20E3221C0();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_20E2486B4()
{
  sub_20E247F1C(319, qword_280E0DAC0, type metadata accessor for ToolKitProtoTypeIdentifier, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_20E247F1C(319, qword_280E0DF08, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_20E3221C0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_20E2487D8()
{
  sub_20E247F1C(319, &qword_280E03F58, type metadata accessor for ToolKitProtoComparisonPredicate.Template, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_20E247F1C(319, &qword_280E03F38, type metadata accessor for ToolKitProtoSampleInvocationDefinition, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_20E247F1C(319, &qword_280E08CF8, type metadata accessor for ToolKitProtoStringSearchPredicate.Template, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_20E247F1C(319, &qword_280E0C210, type metadata accessor for ToolKitProtoIdSearchPredicate.Template, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_20E247F1C(319, &qword_280E0ED80, type metadata accessor for ToolKitProtoAllPredicate, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_20E247F1C(319, &qword_280E0B1B8, type metadata accessor for ToolKitProtoSuggestedPredicate, MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              sub_20E247F1C(319, &qword_280E08030, type metadata accessor for ToolKitProtoSearchableItemPredicate.Template, MEMORY[0x277D83D88]);
              if (v6 <= 0x3F)
              {
                sub_20E247F1C(319, &qword_280E0DA20, type metadata accessor for ToolKitProtoValidPredicate, MEMORY[0x277D83D88]);
                if (v7 <= 0x3F)
                {
                  sub_20E3221C0();
                  if (v8 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_20E248A84()
{
  result = type metadata accessor for ToolKitProtoTypeIdentifier.Primitive(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

void sub_20E248C88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t *a6, uint64_t (*a7)(uint64_t))
{
  sub_20E247F1C(319, a6, a7, MEMORY[0x277D83D88]);
  if (v7 <= 0x3F)
  {
    sub_20E3221C0();
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_20E248DAC()
{
  sub_20E247F1C(319, qword_280E0F470, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_20E247F1C(319, qword_280E08D90, type metadata accessor for ToolKitProtoDisplayRepresentation, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_20E3221C0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_20E248EE0()
{
  sub_20E24E518(319, &qword_280E12B78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_20E247F1C(319, qword_280E08D90, type metadata accessor for ToolKitProtoDisplayRepresentation, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_20E3221C0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_267Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a2 == 12)
  {
    v6 = *(a1 + 8) >> 60;
    if (((4 * v6) & 0xC) != 0)
    {
      return 16 - ((4 * v6) & 0xC | (v6 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a2)
    {
      v12 = v10;
      v13 = *(v11 + 48);
      v14 = a1 + *(a3 + 20);

      return v13(v14, a2, v12);
    }

    else
    {
      v15 = sub_20E3221C0();
      v16 = *(*(v15 - 8) + 48);
      v17 = a1 + *(a3 + 24);

      return v16(v17, a2, v15);
    }
  }
}

void *__swift_store_extra_inhabitant_index_268Tm(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a3)
    {
      v12 = v10;
      v13 = *(v11 + 56);
      v14 = v7 + *(a4 + 20);

      return v13(v14, a2, a2, v12);
    }

    else
    {
      v15 = sub_20E3221C0();
      v16 = *(*(v15 - 8) + 56);
      v17 = v7 + *(a4 + 24);

      return v16(v17, a2, a2, v15);
    }
  }

  return result;
}

void sub_20E24931C()
{
  sub_20E247F1C(319, qword_280E0F7A8, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_20E24E518(319, &qword_280E12B78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_20E24E518(319, &qword_280E03ED0, MEMORY[0x277D84A28], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_20E3221C0();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}